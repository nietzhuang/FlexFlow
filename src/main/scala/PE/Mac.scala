package flexflow.pe.mac

import chisel3._
import chisel3.util._


class Mac(bitwidth: Int) extends Module {
  val io = IO(new Bundle {
    val Enable    = Input(Bool())
    val InKernel  = Input(UInt(bitwidth.W))
    val InNeuron  = Input(UInt(bitwidth.W))
    val InPE      = Input(UInt(bitwidth.W))  // from right PE.
    val Out       = Output(UInt(bitwidth.W))
  })

  val product = WireDefault(0.U)
  val sum = WireDefault(0.U)

  when(io.Enable === true.B) {
    product := io.InKernel * io.InNeuron
    io.Out := product + io.InPE
  }.otherwise {
    product := 0.U
    io.Out := 0.U
  }

}

object Mac extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Mac(16))
}





