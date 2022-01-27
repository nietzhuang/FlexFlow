package flexflow.neuronbuf

import chisel3._
import chisel3.util._
import flexflow.intrabuf._


class NeuronBuffer(bitwidth: Int, depth: Int, numBank: Int) extends Module {
  val io = IO(new Bundle {
    val BufferIO = new BankIO(bitwidth, depth)
    val BankIndex = Input(UInt(log2Up(numBank).W))
  }) 

  val Intrabuf = Module(new flexflow.intrabuf.IntraBuffer(bitwidth, depth, numBank))

  io.BufferIO <> Intrabuf.io.BufferIO
  io.BankIndex <> Intrabuf.io.BankIndex

}


