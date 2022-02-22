package flexflow.pe

import chisel3._
import chisel3.util._
import flexflow.util._
import flexflow.buffer


class IntraBufferIO(bufdepth: Int) extends Bundle {
  val Enable    = Output(Bool())
  val ReadWrite = Output(Bool())
  val DataAddr  = Output(UInt(log2Up(bufdepth).W))
}

class PECtrl(
  //numPERow: Int,
  //numPECol: Int,
  bitwidth: Int,
  PERowIdx: UInt,  // PEi
  PEColIdx: UInt,  // PEj
  numBank: Int, 
  bankdepth: Int,
  bufdepth: Int 
) extends Module {
  //require(PERowIdx.litValue <= numBank)
  //require(PEColIdx.litValue <= numBank)
  
  val io = IO(new Bundle {
    val SchePort      = new SchePort
    val KernelBuf     = new OuterBufferIO(bitwidth, bankdepth, numBank) 
    val NeuronBuf     = new OuterBufferIO(bitwidth, bankdepth, numBank)
    val KernelIntra   = new IntraBufferIO(bufdepth)
    val NeuronIntra   = new IntraBufferIO(bufdepth) 
    val MacEnable     = Output(Bool())
    //val Neuron2Addr     = Output(UInt(log2Up(bankdepth).W))
    //val PsumAddr        = Output(UInt(log2Up(bankdepth).W))
  }) 

  val initial :: init :: readouter :: mac :: Nil = Enum(4)
  val stateReg = RegInit(init)

  // Decode the dataflow parameters
  val NeuronSize = io.SchePort.ScheduleSize
  val Tm = io.SchePort.Schedule(23, 20) + 1.U
  val Tn = io.SchePort.Schedule(19, 16) + 1.U
  val Ti = io.SchePort.Schedule(15, 12) + 1.U
  val Tj = io.SchePort.Schedule(11, 8) + 1.U
  val Tr = io.SchePort.Schedule(7, 4) + 1.U
  val Tc = io.SchePort.Schedule(3, 0) + 1.U

  val GroupRowIdx = PERowIdx / (Tr * Tc)
  val GroupColIdx = PEColIdx / (Ti * Tj)
  val Group = RegInit(Cat(GroupRowIdx, GroupColIdx))  // former 4-bit for m, latter 4-bit for n.
  val KernelBoundary = Ceil((Ti * Tj), (Tr * Tc))
  val NeuronBoundary = NeuronSize / (Tr * Tc)
  val HoldBoundary = Tj / Tc
  val MacCycle = Ceil((NeuronSize - Tj), Tc)

  val tm = PERowIdx / (numBank.U / Tm)
  val tn = PEColIdx / (numBank.U / Tn)
  val tj = PEColIdx - (tn * Ti * Tj) / Tj
  val ti = ((PEColIdx + 1.U) - tn * Ti * Tj - tj * Ti) / Ti
  val tc = PERowIdx - (tm * Tc * Tr) / Tc
  val tr = ((PERowIdx + 1.U) - tm * Tc * Tr - tc * Tr) / Tr

  val cntMac = RegInit(0.U)
  val KernelSlotPtr = RegInit(0.U(7.W))  // bitwidth has to define clearly
  val cntKBufAddr = RegInit(0.U(7.W))
  val cntKBufBank = RegInit(0.U)
  val NeuronSlotPtr = RegInit(0.U(7.W))
  val cntNBufAddr = RegInit(0.U(7.W))
  val cntNBufBank = RegInit(PEColIdx)
  val cntHoldBase = Mux(tc > 0.U, 
                        RegInit((tj / HoldBoundary) % HoldBoundary),
                        RegInit((tj < tc).asUInt + (tj >= (Tj - tc))))
  val cntHold = RegInit(0.U)

  // Event for reading from outter buffer to local store.
  val Load2 = (io.SchePort.Mode === 2.U)  
  val KernelReadDone = RegInit(false.B)
  val NeuronReadDone = RegInit(false.B)
  val Load2Done = (KernelReadDone & NeuronReadDone)
  val macDone = RegInit(false.B)
  
  switch (stateReg) {
    is(init) {
      when(Load2 === true.B) {
        stateReg := readouter
      }.otherwise {
        stateReg := init
      }
    }
    is(readouter) {
      when(Load2Done === true.B) {
        stateReg := mac
      }.otherwise {
        //stateReg := init  
        stateReg := readouter 
      }
    }
    is(mac) {
      when(macDone === true.B) {
        stateReg := init
      }.otherwise {
        stateReg := mac
      }
    }
  }
  
  io.KernelBuf.Addr := 0.U 
  io.KernelBuf.BankIdx := 0.U
  io.KernelBuf.ReadWrite := false.B
  io.KernelBuf.Enable := false.B
  io.KernelIntra.DataAddr := 0.U
  io.KernelIntra.ReadWrite := false.B
  io.KernelIntra.Enable := false.B
  io.NeuronBuf.Addr := 0.U 
  io.NeuronBuf.BankIdx := 0.U
  io.NeuronBuf.ReadWrite := false.B
  io.NeuronBuf.Enable := false.B
  io.NeuronIntra.DataAddr := 0.U
  io.NeuronIntra.ReadWrite := false.B
  io.NeuronIntra.Enable := false.B
  io.MacEnable := false.B
  //io.Neuron2Addr := 0.U
  //io.PsumAddr := 0.U
  switch(stateReg) {
    is(init) {
      io.KernelBuf.Addr := 0.U 
      io.KernelBuf.BankIdx := 0.U
      io.KernelBuf.ReadWrite := false.B
      io.KernelBuf.Enable := false.B
      io.KernelIntra.DataAddr := 0.U
      io.KernelIntra.ReadWrite := false.B
      io.KernelIntra.Enable := false.B
      io.NeuronBuf.Addr := 0.U 
      io.NeuronBuf.BankIdx := 0.U
      io.NeuronBuf.ReadWrite := false.B
      io.NeuronBuf.Enable := false.B
      io.NeuronIntra.DataAddr := 0.U
      io.NeuronIntra.ReadWrite := false.B
      io.NeuronIntra.Enable := false.B
      KernelReadDone := false.B
      NeuronReadDone := false.B
      macDone := false.B
    }
    is(readouter) {
      io.KernelBuf.ReadWrite := false.B  //!!  constant ?
      io.KernelBuf.Enable := true.B
      io.KernelIntra.ReadWrite := true.B
      io.NeuronBuf.ReadWrite := false.B 
      io.NeuronBuf.Enable := true.B
      io.NeuronIntra.ReadWrite := true.B

      // Kernel Control
      when(KernelReadDone === false.B) {
        io.KernelIntra.Enable := true.B
        when(cntKBufAddr < KernelBoundary) { 
          io.KernelBuf.Addr := cntKBufAddr 
          io.KernelBuf.BankIdx := cntKBufBank
          io.KernelIntra.DataAddr := KernelSlotPtr

          cntKBufAddr := cntKBufAddr + 1.U
        }.otherwise { 
          io.KernelBuf.Addr := 0.U
          io.KernelBuf.BankIdx := cntKBufBank + 1.U
          io.KernelIntra.DataAddr := KernelSlotPtr

          cntKBufAddr := 0.U
          cntKBufBank := cntKBufBank + 1.U
        }
        KernelSlotPtr := KernelSlotPtr + 1.U
        //when(KernelSlotPtr === Tj) {  
        //!! Have to check how much kernel inside a buffer..
        when(KernelSlotPtr === Ti * Tj) {
        //when(KernelSlotPtr == numkernel)
          KernelReadDone := true.B
          KernelSlotPtr := 0.U
        }
      }

      // Neuron Control
      when(NeuronReadDone === false.B) {
        io.NeuronIntra.Enable := true.B
        when(cntNBufAddr < NeuronBoundary) {
          io.NeuronBuf.Addr := cntNBufAddr
          io.NeuronBuf.BankIdx := cntNBufBank
          io.NeuronIntra.DataAddr := NeuronSlotPtr
        
          cntNBufAddr := cntNBufAddr + 1.U
        }
        /*.otherwise {
        }*/

        NeuronSlotPtr := cntNBufAddr
        when(NeuronSlotPtr === NeuronBoundary) {
          NeuronReadDone := true.B
          NeuronSlotPtr := 0.U
        }
      }
    }
    is(mac) {
      io.KernelBuf.Enable := false.B
      io.KernelIntra.ReadWrite := false.B
      io.NeuronBuf.Enable := false.B
      io.NeuronIntra.ReadWrite := false.B
      io.MacEnable := true.B
      cntHold := cntHoldBase
      NeuronSlotPtr := (tj < tc).asUInt
      when(macDone === false.B) {
        // Kernel Control
        when((KernelSlotPtr + PEColIdx + tc * (Tj - 1.U)) < Tj) {
          io.KernelIntra.DataAddr := KernelSlotPtr + PEColIdx + tc * (Tj - 1.U)
        }
        .otherwise {
          io.KernelIntra.DataAddr := KernelSlotPtr + PEColIdx + tc * (Tj - 1.U) - Tj
        }
        //io.KernelIntraAddr := io.KernelIntraAddr + Tr
        KernelSlotPtr := io.KernelIntra.DataAddr + Tr


        // Neuron Control
        when(cntHold + 1.U === HoldBoundary) {
          NeuronSlotPtr := NeuronSlotPtr + 1.U
          cntHold := cntHold + 1.U
        }.elsewhen(cntHold + 1.U > HoldBoundary) {
          NeuronSlotPtr := NeuronSlotPtr + 1.U
          cntHold := 0.U
        }.otherwise {
          NeuronSlotPtr := NeuronSlotPtr
          cntHold := 0.U
        }
        io.NeuronIntra.DataAddr := NeuronSlotPtr
  
        cntMac := cntMac + 1.U

        //when(cntMac === Ti * Tj) {
        when(cntMac === MacCycle) {
          macDone := true.B
          cntMac := 0.U
        }
      }
    }
  }


}

/*
object PECtrl extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PECtrl(16, 0.U, 0.U, 16, 1024, 128), Array("--target-dir", "./generated/"))
}*/
