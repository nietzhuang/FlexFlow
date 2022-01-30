package flexflow.pe.ctrl

import chisel3._
import chisel3.util._
import flexflow.outerbuf._
import flexflow.intrabuf._


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
    val Schedule        = Input(UInt(24.W))  // from decoder (assume maximum is 15)
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
  }) 

  val initial :: init :: readouter :: mac :: Nil = Enum(4)
  val stateReg = RegInit(init)

  // Decode the dataflow parameters
  val Tm = io.Schedule(23, 20)
  val Tn = io.Schedule(19, 16)
  val Ti = io.Schedule(15, 12)
  val Tj = io.Schedule(11, 8)
  val Tr = io.Schedule(7, 4)
  val Tc = io.Schedule(3, 0) 

  val GroupRowIdx = PERowIdx / (Tr * Tc)
  val GroupColIdx = PEColIdx / (Ti * Tj)
  val Group = RegInit(Cat(GroupRowIdx, GroupColIdx))  // former 4-bit for m, latter 4-bit for n.
  //val boundary = Math.ceil((Ti * Tj) / (Tr * Tc)).toInt.U
  val boundary = (Ti * Tj) / (Tr * Tc)

  val tm = PERowIdx / (numBank.U / Tm)
  val tn = PEColIdx / (numBank.U / Tn)
  val tj = PEColIdx - (tn * Ti * Tj) / Tj
  val ti = ((PEColIdx + 1.U) - tn * Ti * Tj - tj * Ti) / Ti
  val tc = PERowIdx - (tm * Tc * Tr) / Tc
  val tr = ((PERowIdx + 1.U) - tm * Tc * Tr - tc * Tr) / Tr

  val cntMac = RegInit(0.U)
  val slotPtr = RegInit(0.U)
  val cntAddr = RegInit(0.U)
  val cntbank = RegInit(0.U)

  // Event for reading from outter buffer to local store.
  val Load2 = (io.Mode === 2.U)  
  val readDone = RegInit(false.B)
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
      when(readDone === true.B) {
        stateReg := mac
      }.otherwise {
        stateReg := init  
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
  io.MacEnable := false.B
  switch(stateReg) {
    is(init) {
      io.KernelAddr := 0.U 
      io.KernelBankIdx := 0.U
      io.KernelBufRW := false.B
      io.KernelBufEn := false.B
      io.KernelIntraAddr := 0.U
      io.KernelIntraRW := false.B
      readDone := false.B
      macDone := false.B
    }
    is(readouter) {
      io.KernelBufRW := false.B  //!!  constant ?
      io.KernelBufEn := true.B
      io.KernelIntraRW := true.B
      when(cntAddr < boundary) { 
        io.KernelAddr := cntAddr 
        io.KernelBankIdx := cntbank
        io.KernelIntraAddr := slotPtr

        cntAddr := cntAddr + 1.U
      }.otherwise { 
        io.KernelAddr := 0.U
        io.KernelBankIdx := cntbank + 1.U
        io.KernelIntraAddr := slotPtr

        cntAddr := 0.U
        cntbank := cntbank + 1.U
      }

      slotPtr := slotPtr + 1.U
      //when(slotPtr === Tj) {  
      //!! Have to check how much kernel inside a buffer..
      when(slotPtr === Ti * Tj) {
      //when(slotPtr == numkernel)
        readDone := true.B
        slotPtr := 0.U
      }
    }
    is(mac) {
      io.KernelIntraRW := false.B
      io.MacEnable := true.B
      when((slotPtr + PEColIdx + tc * (Tj - 1.U)) < Tj) {
        io.KernelIntraAddr := slotPtr + PEColIdx + tc * (Tj - 1.U)
      }
      .otherwise {
        io.KernelIntraAddr := slotPtr + PEColIdx + tc * (Tj - 1.U) - Tj
      }
      //io.KernelIntraAddr := io.KernelIntraAddr + Tr
      slotPtr := io.KernelIntraAddr + Tr
      cntMac := cntMac + 1.U

      when(cntMac === Ti * Tj) {
        macDone := true.B
        cntMac := 0.U
      }
    }
  }


}


object PECtrl extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PECtrl(0.U, 0.U, 16, 1024, 128))
}
