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
    val Instruction = Input(UInt(32.W))
    val Mode        = Output(UInt(3.W))
    val Schedule    = Output(new SchePacket)
    val Pooling     = Output(UInt(2.W))
  })

  io.Mode := io.Instruction(31, 29)
  io.Schedule.Tm := io.Instruction(28, 25)
  io.Schedule.Tn := io.Instruction(24, 21)
  io.Schedule.Ti := io.Instruction(20, 17)
  io.Schedule.Tj := io.Instruction(16, 13)
  io.Schedule.Tr := io.Instruction(12, 9)
  io.Schedule.Tc := io.Instruction(8, 5)
  io.Pooling := io.Instruction(4, 3)

}

object Decoder extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Decoder(4, 4))
}
