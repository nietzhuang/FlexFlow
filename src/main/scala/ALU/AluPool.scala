package flexflow.alu

import chisel3._
import chisel3.util._


class ALUPort(
  bitwidth: Int,
  numBank: Int,
  bankdepth: Int,
  numPECol: Int
) extends Bundle {
    val Enable      = Input(Bool())  // Connet PE0
    val PEDataIn    = Input(Vec(numPECol, UInt(bitwidth.W))) 
    val Neuron2Addr = Output(UInt(log2Up(bankdepth).W))
    val BankIdx     = Output(UInt(log2Up(numBank).W))
    val DataOut     = Output(UInt(bitwidth.W)) 
    val PsumAddr    = Output(UInt(log2Up(bankdepth).W))
    val PsumIn      = Input(UInt(bitwidth.W))
}


class AluPool(
  bitwidth: Int,
  numBank: Int,
  bankdepth: Int,
  numPECol: Int
) extends Module {
  val io = IO(new Bundle {
    val ALUPort = new ALUPort(bitwidth, numBank, bankdepth, numPECol)
    /*val Enable      = Input(Bool())  // Connet PE0
    val PEDataIn    = Input(Vec(numPECol, UInt(bitwidth.W))) 
    val Neuron2Addr = Output(UInt(log2Up(bankdepth).W))
    val BankIdx     = Output(UInt(log2Up(numBank).W))
    val DataOut     = Output(UInt(bitwidth.W)) 
    val PsumAddr    = Output(UInt(log2Up(bankdepth).W))
    val PsumIn      = Input(UInt(bitwidth.W))
    */
  })

  val cntMac = RegInit(0.U(log2Up(bankdepth).W)) 
  var accumulator = 0.U

  when(io.ALUPort.Enable === true.B){
    cntMac := cntMac + 1.U
  }.otherwise {
    cntMac := 0.U
  }
  
  io.ALUPort.BankIdx := numBank.U
  when(io.ALUPort.Enable === true.B) {
    io.ALUPort.Neuron2Addr := cntMac
    io.ALUPort.PsumAddr := cntMac
    for(i <- 0 until numPECol) {
      accumulator += io.ALUPort.PEDataIn(i)
    }
    io.ALUPort.DataOut := accumulator + io.ALUPort.PsumIn
  }.otherwise {
    io.ALUPort.Neuron2Addr := 0.U
    io.ALUPort.PsumAddr := 0.U
    io.ALUPort.DataOut := 0.U
  }

}

object AluPool extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new AluPool(16, 16, 1024, 16))
}
