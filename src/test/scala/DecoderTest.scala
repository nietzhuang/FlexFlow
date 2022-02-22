import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest._
import org.scalatest.flatspec.AnyFlatSpec

import flexflow._


class DecoderTester extends AnyFlatSpec with ChiselScalatestTester {
  val numPERow = 16
  val numPECol = 16

  it should "test commands" in {
    test(new Decode(numPERow, numPECol)).withAnnotations(Seq(WriteVcdAnnotation)) {c =>

      val MaxCycle = 8
      var CycleCount = 0

      val Mode = 0.U(3.W)
      val Tm = 15.U(4.W)
      val Tn = 3.U(4.W)
      val Ti = 0.U(4.W)
      val Tj = 3.U(4.W)
      val Tr = 0.U(4.W)
      val Tc = 0.U(4.W)
      val Pool = 0.U(2.W)
      val NeuronSize = 7.U(7.W)


      fork{
        while(CycleCount < MaxCycle) {
          c.clock.step()
          CycleCount += 1
        }
      }.fork{
        // Set commands
        val Instruction = "b000_1111_0011_0000_0011_0000_0000_00_000".U(32.W)
        val NeuronSize = "b0000_0000_0000_0000_0000_0000_0000_0111".U(32.W)
        val Clear = "b0110_0000_0001_0011_0111_1111_0000_0001".U(32.W)

        c.io.Valid.poke(false.B)
        c.io.Instruction.poke(Instruction)
        c.clock.step()

        c.io.Valid.poke(true.B)
        c.io.Instruction.poke(Instruction)
        c.clock.step()

        c.io.Valid.poke(true.B)
        c.io.Instruction.poke(NeuronSize)
        c.clock.step()

        while(CycleCount < MaxCycle) {
          if(CycleCount == MaxCycle - 3) {
            c.io.Valid.poke(true.B)
            c.io.Instruction.poke(Clear)
          } else {
            c.io.Valid.poke(false.B)
          }
          c.clock.step()

        }
      }.fork{
        while(CycleCount < MaxCycle) {
          val Schedule = c.io.SchePort.Schedule.peek
          print("Clock cycle " + CycleCount + ": ")
          print("\tMode: " + c.io.SchePort.Mode.peek().litValue)
          print("\tTm: " + Schedule(23, 20).litValue)
          print("\tTn: " + Schedule(19, 16).litValue)
          print("\tTi: " + Schedule(15, 12).litValue)
          print("\tTj: " + Schedule(11, 8).litValue)
          print("\tTr: " + Schedule(7, 4).litValue)
          print("\tTc: " + Schedule(3, 0).litValue)
          print("\tSize: " + c.io.SchePort.ScheduleSize.peek().litValue)
          println("\tPooling: " + c.io.Pooling.peek().litValue)

          c.clock.step()
        }  
      }.fork{
        while(CycleCount < MaxCycle) {
          if(CycleCount == 2) {
            val Schedule = c.io.SchePort.Schedule.peek
            c.io.SchePort.Mode.expect(Mode)
            c.io.SchePort.Schedule.expect(Schedule) 
            c.io.Pooling.expect(Pool)
          } else if(CycleCount == 3) {
            c.io.SchePort.ScheduleSize.expect(NeuronSize)
          } else if(CycleCount == MaxCycle - 1) {
            c.io.SchePort.Mode.expect(0.U)
            c.io.SchePort.Schedule.expect(0.U) 
            c.io.Pooling.expect(0.U)
          }
          c.clock.step()
        }
      }.join()
    }
  }

}
