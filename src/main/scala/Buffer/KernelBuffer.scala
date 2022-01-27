package flexflow.kernelbuf

import chisel3._
import chisel3.util._
import flexflow.intrabuf._

class KernelBuffer(bitwidth: Int, depth: Int, numBank: Int) extends Module {
  val io = IO(new Bundle {
    val BufferIO = new BankIO(bitwidth, depth)
    val BankIndex = Input(UInt(log2Up(numBank).W))
  })

  val Intrabuf = Module(new flexflow.intrabuf.IntraBuffer(bitwidth, depth, numBank))
  
  io.BufferIO <> Intrabuf.io.BufferIO
  io.BankIndex <> Intrabuf.io.BankIndex


}



object KernelBuffer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new KernelBuffer(16, 1024, 16))
}
