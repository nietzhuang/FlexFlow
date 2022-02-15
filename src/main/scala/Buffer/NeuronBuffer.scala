package flexflow.buffer

import chisel3._
import chisel3.util._


class NeuronBuffer(bitwidth: Int, depth: Int, numBank: Int) extends Module {
  val io = IO(new Bundle {
    val BufferIO = new BankIO(bitwidth, depth)
    val BankIndex = Input(UInt(log2Up(numBank).W))
  }) 

  val buf = Module(new OuterBuffer(bitwidth, depth, numBank))

  io.BufferIO <> buf.io.BufferIO
  io.BankIndex <> buf.io.BankIndex

}

object NeuronBuffer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new NeuronBuffer(16, 1024, 16), Array("--target-dir", "./generated/"))
}

