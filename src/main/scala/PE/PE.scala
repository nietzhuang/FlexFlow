package flexflow.pe

import chisel3._
import chisel3.util._
import flexflow.buffer._


class PE(
  bitwidth: Int, 
  PERowIdx: UInt, 
  PEColIdx: UInt,
  numBank: Int,
  bankdepth: Int, 
  bufdepth: Int  
) extends Module {
  val io = IO(new Bundle {
    val Enable        = Input(Bool())
    val Mode          = Input(UInt(3.W))
    val Schedule      = Input(UInt(24.W))  // from decoder (assume maximum is 15)
    val ScheduleSize  = Input(UInt(7.W))  
    val KernelAddr    = Output(UInt(log2Up(bankdepth).W))
    val KernelBankIdx = Output(UInt(log2Up(numBank).W))
    val KernelDataIn  = Input(UInt(bitwidth.W))
    val KernelBufRW   = Output(Bool())
    val KernelBufEn   = Output(Bool())
    val NeuronAddr    = Output(UInt(log2Up(bankdepth).W))
    val NeuronBankIdx = Output(UInt(log2Up(numBank).W))
    val NeuronDataIn  = Input(UInt(bitwidth.W))
    val NeuronBufRW   = Output(Bool())
    val NeuronBufEn   = Output(Bool())
    val DataOut       = Output(UInt(bitwidth.W))
  })

  val kernelintra = Module(new IntraBuffer(bitwidth, bufdepth))
  val neuronintra = Module(new IntraBuffer(bitwidth, bufdepth))
  //val Mac = Module(new flexflow.pe.mac.Mac(bitwidth))
  val PECtrl = Module(new PECtrl(PERowIdx, PEColIdx, numBank, bankdepth, bufdepth))
  
  //
  PECtrl.io.Mode := io.Mode 
  PECtrl.io.Schedule := io.Schedule
  PECtrl.io.ScheduleSize := io.ScheduleSize

  // Outer Buffer Connections
  io.KernelAddr := PECtrl.io.KernelAddr
  io.KernelBankIdx := PECtrl.io.KernelBankIdx
  io.KernelBufRW := PECtrl.io.KernelBufRW
  io.KernelBufEn := PECtrl.io.KernelBufEn
  io.NeuronAddr := PECtrl.io.NeuronAddr 
  io.NeuronBankIdx := PECtrl.io.NeuronBankIdx
  io.NeuronBufRW := PECtrl.io.NeuronBufRW
  io.NeuronBufEn := PECtrl.io.NeuronBufEn

  //Intra Buffer Connections
  kernelintra.io.BankIO.Enable := io.Enable
  kernelintra.io.BankIO.DataIn := io.KernelDataIn
  kernelintra.io.BankIO.DataAddr := PECtrl.io.KernelIntraAddr
  kernelintra.io.BankIO.ReadWrite := PECtrl.io.KernelIntraRW
  neuronintra.io.BankIO.Enable := io.Enable
  neuronintra.io.BankIO.DataIn := io.NeuronDataIn
  neuronintra.io.BankIO.DataAddr := PECtrl.io.NeuronIntraAddr
  neuronintra.io.BankIO.ReadWrite := PECtrl.io.NeuronIntraRW

  when(PECtrl.io.MacEnable === true.B) {
    io.DataOut := kernelintra.io.BankIO.DataOut * neuronintra.io.BankIO.DataOut
  }.otherwise {
    io.DataOut := 0.U
  }

  /*Mac.io.Enable := io.Enable
  Mac.io.InKernel := kernelintra.io.BankIO.DataOut
  Mac.io.InNeuron := neuronintra.io.BankIO.DataOut
  io.DataOut := Mac.io.Out*/
  //Mac.io.InPE

}

object PE extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PE(16, 0.U, 0.U, 16, 1024, 128), Array("--target-dir", "./generated/"))
}

