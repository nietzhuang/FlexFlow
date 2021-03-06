package flexflow

import chisel3._
import chisel3.util._


/*class SchePacket extends Bundle {
  val Tm  = UInt(4.W)
  val Tn  = UInt(4.W)
  val Ti  = UInt(4.W)
  val Tj  = UInt(4.W)
  val Tr  = UInt(4.W)
  val Tc  = UInt(4.W)
}*/

class SchePort extends Bundle {
  val Mode          = Input(UInt(3.W))
  val Schedule      = Input(UInt(24.W))
  //val Schedule      = Input(new SchePacket)
  val ScheduleSize  = Input(UInt(7.W))
}

class Decode(numPERow: Int, numPECol: Int) extends Module {
  val io = IO(new Bundle {
    val Valid         = Input(Bool())
    val Instruction   = Input(UInt(32.W))
    val SchePort      = Flipped(new SchePort)
    val Pooling       = Output(UInt(2.W))
  })

  val cnt = RegInit(0.U)
  
  val CommandParamReg = RegInit(0.U(32.W))
  val SizeReg = RegInit(0.U(32.W))


  when(io.Valid === true.B) {
    cnt := cnt + 1.U
  }.otherwise {
    cnt := 0.U
  }

  when(io.Valid === true.B) {
    switch(cnt) {
      is(0.U) { CommandParamReg := io.Instruction}
      is(1.U) { SizeReg := io.Instruction}
    }
  }
  // Clear register
  when(CommandParamReg(31, 29) === "b011".U) {
    CommandParamReg := 0.U(32.W)
    SizeReg := 0.U(32.W)
  }

  //io.Mode := CommandParamReg(31, 29)
  io.SchePort.Mode := CommandParamReg(31, 29)
  io.SchePort.Schedule := CommandParamReg(28, 5)
  io.Pooling := CommandParamReg(4, 3)
  io.SchePort.ScheduleSize := SizeReg(6, 0)

}

object Decode extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Decode(4, 4), Array("--target-dir", "./generated/"))
}
