package flexflow

import chisel3._
import chisel3.util._


class SchePacket extends Bundle {
  val Tm  = UInt(4.W)
  val Tn  = UInt(4.W)
  val Ti  = UInt(4.W)
  val Tj  = UInt(4.W)
  val Tr  = UInt(4.W)
  val Tc  = UInt(4.W)
}

class Decoder(numPERow: Int, numPECol: Int) extends Module {
  val io = IO(new Bundle {
    val Valid         = Input(Bool())
    val Instruction   = Input(UInt(32.W))
    val Mode          = Output(UInt(3.W))
    val Schedule      = Output(new SchePacket)
    val ScheduleSize  = Output(UInt(7.W)) 
    val Pooling       = Output(UInt(2.W))
  })

  val cnt = RegInit(0.U)

  when(io.Valid === true.B) {
    cnt := cnt + 1.U
  }.otherwise {
    cnt := 0.U
  }

  io.Mode := 0.U
  io.Schedule.Tm := 0.U 
  io.Schedule.Tn := 0.U
  io.Schedule.Ti := 0.U
  io.Schedule.Tj := 0.U
  io.Schedule.Tr := 0.U
  io.Schedule.Tc := 0.U
  io.Pooling := 0.U
  io.ScheduleSize := 0.U
  when(io.Valid === true.B) {
    switch(cnt) {
      is(0.U) {
        io.Mode := io.Instruction(31, 29)
        io.Schedule.Tm := io.Instruction(28, 25)
        io.Schedule.Tn := io.Instruction(24, 21)
        io.Schedule.Ti := io.Instruction(20, 17)
        io.Schedule.Tj := io.Instruction(16, 13)
        io.Schedule.Tr := io.Instruction(12, 9)
        io.Schedule.Tc := io.Instruction(8, 5)
        io.Pooling := io.Instruction(4, 3)
      }
      is(1.U) {
        io.ScheduleSize := io.Instruction(6, 0)
      }
    }
  }

}

object Decoder extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Decoder(4, 4))
}
