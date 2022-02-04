package flexflow.buffer 

import chisel3._
import chisel3.util._


/*class BankIO(bitwidth: Int, depth: Int) extends Bundle {
  val Enable    = Input(Bool())
  val DataIn    = Input(UInt(bitwidth.W))
  val DataAddr  = Input(UInt(log2Up(depth).W))
  val ReadWrite = Input(Bool())
  val DataOut   = Output(UInt(bitwidth.W))
}*/

class IntraBuffer(bitwidth: Int, depth: Int) extends Module {
  val io = IO(new Bundle {
    val BankIO = new BankIO(bitwidth, depth)
  })

  val buffer  = RegInit(VecInit.fill(depth)(0.U(bitwidth.W)))

  io.BankIO.DataOut := 0.U
  when(io.BankIO.Enable === true.B) {
    when(io.BankIO.ReadWrite === false.B) {
      buffer(io.BankIO.DataAddr) := io.BankIO.DataIn
    }.otherwise {
      io.BankIO.DataOut := buffer(io.BankIO.DataAddr)
    }
  }
} 


object IntraBuffer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new IntraBuffer(16, 128))
}
