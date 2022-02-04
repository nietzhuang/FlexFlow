package flexflow

import chisel3._
import chisel3.util._


class AluPool(
  bitwidth: Int,
  numBank: Int,
  bankdepth: Int,
  numPECol: Int
) extends Module {
  val io = IO(new Bundle {
    val Enable      = Input(Bool())  // Connet PE0
    val PEDataIn    = Input(Vec(numPECol, UInt(bitwidth.W))) 
    val Neuron2Addr = Output(UInt(log2Up(bankdepth).W))
    val BankIdx     = Output(UInt(log2Up(numBank).W))
    val DataOut     = Output(UInt(bitwidth.W)) 
    val PsumAddr    = Output(UInt(log2Up(bankdepth).W))
    val PsumIn      = Input(UInt(bitwidth.W))
  })

  val cntMac = RegInit(0.U(log2Up(bankdepth).W)) 
  var accumulator = 0.U

  when(io.Enable === true.B){
    cntMac := cntMac + 1.U
  }.otherwise {
    cntMac := 0.U
  }
  
  io.BankIdx := numBank.U
  when(io.Enable === true.B) {
    io.Neuron2Addr := cntMac
    io.PsumAddr := cntMac
    for(i <- 0 until numPECol) {
      accumulator += io.PEDataIn(i)
    }
    io.DataOut := accumulator + io.PsumIn
  }.otherwise {
    io.Neuron2Addr := 0.U
    io.PsumAddr := 0.U
    io.DataOut := 0.U
  }

}

object AluPool extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new AluPool(16, 16, 1024, 16))
}
