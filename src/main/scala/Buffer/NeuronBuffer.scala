package flexflow.neuronbuf

import chisel3._
import chisel3.util._
import flexflow.outerbuf._


class NeuronBuffer(bitwidth: Int, depth: Int, numBank: Int) extends Module {
  val io = IO(new Bundle {
    val BufferIO = new BankIO(bitwidth, depth)
    val BankIndex = Input(UInt(log2Up(numBank).W))
  }) 

  val buf = Module(new flexflow.outerbuf.OuterBuffer(bitwidth, depth, numBank))

  io.BufferIO <> buf.io.BufferIO
  io.BankIndex <> buf.io.BankIndex

}


