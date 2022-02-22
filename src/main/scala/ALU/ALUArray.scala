package flexflow.alu

import chisel3._
import chisel3.util._

class ALUArray(
  bitwidth: Int,
  numBank: Int,
  bankdepth: Int,
  numPERow: Int,
  numPECol: Int
) extends Module {
  val io = IO(new Bundle {
    val ALUPort = Vec(numPECol, new ALUPort(bitwidth, numBank, bankdepth, numPECol))
  })

  val ALUPoolArray = Array.fill(numPECol) { Module(new AluPool(bitwidth, numBank, bankdepth, numPECol)) }
  for(i <- 0 until numPECol) {
    ALUPoolArray(i).io.ALUPort <> io.ALUPort(i)
  }
}

object ALUArray extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new ALUArray(16, 16, 1024, 16, 16), Array("--target-dir", "./generated/"))
}
