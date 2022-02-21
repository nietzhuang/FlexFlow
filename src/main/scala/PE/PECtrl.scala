package flexflow.pe

import chisel3._
import chisel3.util._
import flexflow.util._
import flexflow.buffer


class PECtrl(
  //numPERow: Int,  // 16
  //numPECol: Int,  // 16
  PERowIdx: UInt,  // PEi
  PEColIdx: UInt,  // PEj
  numBank: Int,   // 16
  bankdepth: Int,      // bank depth 1K
  bufdepth: Int   // Intra buffer depth 128 
) extends Module {
  //require(PERowIdx.litValue <= numBank)
  //require(PEColIdx.litValue <= numBank)
  
  val io = IO(new Bundle {
    val Mode            = Input(UInt(3.W))
    val Schedule        = Input(UInt(24.W)) 
    val ScheduleSize    = Input(UInt(7.W))
    val KernelAddr      = Output(UInt(log2Up(bankdepth).W))
    val KernelBankIdx   = Output(UInt(log2Up(numBank).W))
    val KernelBufRW     = Output(Bool())
    val KernelBufEn     = Output(Bool())
    val NeuronAddr      = Output(UInt(log2Up(bankdepth).W))
    val NeuronBankIdx   = Output(UInt(log2Up(numBank).W))
    val NeuronBufRW     = Output(Bool())
    val NeuronBufEn     = Output(Bool())
    val KernelIntraAddr = Output(UInt(log2Up(bufdepth).W))
    val KernelIntraRW   = Output(Bool())
    val NeuronIntraAddr = Output(UInt(log2Up(bufdepth).W))
    val NeuronIntraRW   = Output(Bool())
    val MacEnable       = Output(Bool())
    //val Neuron2Addr     = Output(UInt(log2Up(bankdepth).W))
    //val PsumAddr        = Output(UInt(log2Up(bankdepth).W))
  }) 

  val initial :: init :: readouter :: mac :: Nil = Enum(4)
  val stateReg = RegInit(init)

  // Decode the dataflow parameters
  val NeuronSize = io.ScheduleSize
  val Tm = io.Schedule(23, 20) + 1.U
  val Tn = io.Schedule(19, 16) + 1.U
  val Ti = io.Schedule(15, 12) + 1.U
  val Tj = io.Schedule(11, 8) + 1.U
  val Tr = io.Schedule(7, 4) + 1.U
  val Tc = io.Schedule(3, 0) + 1.U

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
  val Load2 = (io.Mode === 2.U)  
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

  io.KernelAddr := 0.U 
  io.KernelBankIdx := 0.U
  io.KernelBufRW := false.B
  io.KernelBufEn := false.B
  io.KernelIntraAddr := 0.U
  io.KernelIntraRW := false.B
  io.NeuronAddr := 0.U 
  io.NeuronBankIdx := 0.U
  io.NeuronBufRW := false.B
  io.NeuronBufEn := false.B
  io.NeuronIntraAddr := 0.U
  io.NeuronIntraRW := false.B
  io.MacEnable := false.B
  //io.Neuron2Addr := 0.U
  //io.PsumAddr := 0.U
  switch(stateReg) {
    is(init) {
      io.KernelAddr := 0.U 
      io.KernelBankIdx := 0.U
      io.KernelBufRW := false.B
      io.KernelBufEn := false.B
      io.KernelIntraAddr := 0.U
      io.KernelIntraRW := false.B
      io.NeuronAddr := 0.U 
      io.NeuronBankIdx := 0.U
      io.NeuronBufRW := false.B
      io.NeuronBufEn := false.B
      io.NeuronIntraAddr := 0.U
      io.NeuronIntraRW := false.B
      KernelReadDone := false.B
      NeuronReadDone := false.B
      macDone := false.B
    }
    is(readouter) {
      io.KernelBufRW := false.B  //!!  constant ?
      io.KernelBufEn := true.B
      io.KernelIntraRW := true.B
      io.NeuronBufRW := false.B 
      io.NeuronBufEn := true.B
      io.NeuronIntraRW := true.B

      // Kernel Control
      when(KernelReadDone === false.B) {
        when(cntKBufAddr < KernelBoundary) { 
          io.KernelAddr := cntKBufAddr 
          io.KernelBankIdx := cntKBufBank
          io.KernelIntraAddr := KernelSlotPtr

          cntKBufAddr := cntKBufAddr + 1.U
        }.otherwise { 
          io.KernelAddr := 0.U
          io.KernelBankIdx := cntKBufBank + 1.U
          io.KernelIntraAddr := KernelSlotPtr

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
        when(cntNBufAddr < NeuronBoundary) {
          io.NeuronAddr := cntNBufAddr
          io.NeuronBankIdx := cntNBufBank
          io.NeuronIntraAddr := NeuronSlotPtr
        
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
      io.KernelBufEn := false.B
      io.KernelIntraRW := false.B
      io.NeuronBufEn := false.B
      io.NeuronIntraRW := false.B
      io.MacEnable := true.B
      cntHold := cntHoldBase
      NeuronSlotPtr := (tj < tc).asUInt
      when(macDone === false.B) {
        // Kernel Control
        when((KernelSlotPtr + PEColIdx + tc * (Tj - 1.U)) < Tj) {
          io.KernelIntraAddr := KernelSlotPtr + PEColIdx + tc * (Tj - 1.U)
        }
        .otherwise {
          io.KernelIntraAddr := KernelSlotPtr + PEColIdx + tc * (Tj - 1.U) - Tj
        }
        //io.KernelIntraAddr := io.KernelIntraAddr + Tr
        KernelSlotPtr := io.KernelIntraAddr + Tr


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
        io.NeuronIntraAddr := NeuronSlotPtr
  
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


object PECtrl extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PECtrl(0.U, 0.U, 16, 1024, 128))
}
