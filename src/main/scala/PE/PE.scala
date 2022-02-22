package flexflow.pe

import chisel3._
import chisel3.util._
import flexflow.buffer._


class OuterBufferIO(
  bitwidth: Int,
  bankdepth: Int,
  numBank: Int
) extends Bundle {
    val Enable    = Output(Bool())
    val ReadWrite = Output(Bool())
    val Addr      = Output(UInt(log2Up(bankdepth).W))
    val DataIn    = Input(UInt(bitwidth.W))
    val BankIdx   = Output(UInt(log2Up(numBank).W))
}

class SchePort extends Bundle {
  val Mode          = Input(UInt(3.W))
  val Schedule      = Input(UInt(24.W))  // from decoder (assume maximum is 15)
  val ScheduleSize  = Input(UInt(7.W))
}

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
    val SchePort      = new SchePort
    val KernelBuf     = new OuterBufferIO(bitwidth, bankdepth, numBank) 
    val NeuronBuf     = new OuterBufferIO(bitwidth, bankdepth, numBank)
    val DataOut       = Output(UInt(bitwidth.W))
  })

  val kernelintra = Module(new IntraBuffer(bitwidth, bufdepth))
  val neuronintra = Module(new IntraBuffer(bitwidth, bufdepth))
  //val Mac = Module(new flexflow.pe.mac.Mac(bitwidth))
  val PECtrl = Module(new PECtrl(bitwidth, PERowIdx, PEColIdx, numBank, bankdepth, bufdepth))
  
  //
  PECtrl.io.SchePort <> io.SchePort

  // Outer Buffer Connections
  io.KernelBuf <> PECtrl.io.KernelBuf
  io.NeuronBuf <> PECtrl.io.NeuronBuf

  //Intra Buffer Connections
  //kernelintra.io.BankIO <> PECtrl.io.KernelIntra
  //neuronintra.io.BankIO <> PECtrl.io.NeuronIntra
  kernelintra.io.BankIO.Enable := PECtrl.io.KernelIntra.Enable
  kernelintra.io.BankIO.DataIn := io.KernelBuf.DataIn
  kernelintra.io.BankIO.DataAddr := PECtrl.io.KernelIntra.DataAddr
  kernelintra.io.BankIO.ReadWrite := PECtrl.io.KernelIntra.ReadWrite
  neuronintra.io.BankIO.Enable := PECtrl.io.NeuronIntra.Enable
  neuronintra.io.BankIO.DataIn := io.NeuronBuf.DataIn
  neuronintra.io.BankIO.DataAddr := PECtrl.io.NeuronIntra.DataAddr
  neuronintra.io.BankIO.ReadWrite := PECtrl.io.NeuronIntra.ReadWrite

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

