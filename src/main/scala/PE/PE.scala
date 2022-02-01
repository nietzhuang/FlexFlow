package flexflow.pe

import chisel3._
import chisel3.util._
import flexflow.pe._


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
    val KernelAddr    = Output(UInt(log2Up(bankdepth).W))
    val KernelBankIdx = Output(UInt(log2Up(numBank).W))
    val KernelBufRW      = Output(Bool())
    val KernelBufEn   = Output(Bool())
    val NeuronAddr    = Output(UInt(log2Up(bankdepth).W))
    val NeuronBankIdx = Output(UInt(log2Up(numBank).W))
    val NeuronBufRW      = Output(Bool())
    val NeuronBufEn   = Output(Bool())
    val DataOut       = Output(UInt(bitwidth.W))
  })

  val kernelintra = Module(new flexflow.intrabuf.IntraBuffer(bitwidth, bufdepth))
  val neuronintra = Module(new flexflow.intrabuf.IntraBuffer(bitwidth, bufdepth))
  val Mac = Module(new flexflow.pe.mac.Mac(bitwidth))
  val PECtrl = Module(new flexflow.pe.ctrl.PECtrl(PERowIdx, PEColIdx, numBank, bankdepth, bufdepth))
  //
  PECtrl.io.Mode := io.Mode 
  PECtrl.io.Schedule := io.Schedule
  io.KernelAddr := PECtrl.io.KernelAddr
  io.KernelBankIdx := PECtrl.io.KernelBankIdx
  io.KernelBufRW := PECtrl.io.KernelBufRW
  io.KernelBufEn := PECtrl.io.KernelBufEn
  io.NeuronAddr := PECtrl.io.NeuronAddr 
  io.NeuronBankIdx := PECtrl.io.NeuronBankIdx
  io.NeuronBufRW := PECtrl.io.NeuronBufRW
  io.NeuronBufEn := PECtrl.io.NeuronBufEn

  kernelintra.io.BankIO.Enable := io.Enable
  neuronintra.io.BankIO.Enable := io.Enable

  Mac.io.Enable := io.Enable
  Mac.io.InKernel := kernelintra.io.BankIO.DataOut
  Mac.io.InNeuron := neuronintra.io.BankIO.DataOut
  io.DataOut := Mac.io.Out
  //Mac.io.InPE

}

/*
object PE extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PE(16, 0.U, 0.U, 16, 1024, 128))
}
*/
