//!!! Under development.

import chisel3._
import chisel3.util._
import chisel3.util.experimental.loadMemoryFromFile
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import flexflow.pe._


class PETester extends AnyFlatSpec with ChiselScalatestTester {
  val bitwidth = 16
  val PERowIdx = 0.U
  val PEColIdx = 0.U
  val numBank = 16
  val bankdepth = 1024
  val bufdepth = 128


  it should "test load2 mode" in {
    test(new PE(bitwidth, PERowIdx, PEColIdx, numBank, bankdepth, bufdepth)).withAnnotations(Seq(WriteVcdAnnotation)) {c =>

      /*
      val Mode = 2.U(3.W)
      val Tm = 15.U(4.W)
      val Tn = 3.U(4.W)
      val Ti = 0.U(4.W)
      val Tj = 3.U(4.W)
      val Tr = 0.U(4.W)
      val Tc = 0.U(4.W)
      val Pool = 0.U(2.W)
      val NeuronSize = 7.U(7.W)
      */
    
      val MaxCycle = 100
      var CycleCount = 0

      val kernelPath = "./src/test/Patterns/kernel.txt"
      val neuronPath = "./src/test/Patterns/neuron.txt"

      val schedule = "b010_1111_0011_0000_0011_0000_0000".U(27.W) 
      val neuronSize = "b0000_0000_0000_0000_0000_0000_0000_0111".U(32.W)
      val kernelValue = io.Source.fromFile(kernelPath).getLines
      val neuronValue = io.Source.fromFile(neuronPath).getLines
     

      c.io.Enable.poke(true.B)
      c.io.Mode.poke(schedule(26, 24))
      c.io.Schedule.poke(schedule(23, 0))
      c.io.ScheduleSize.poke(neuronSize(6, 0))
      fork{
        while(CycleCount < MaxCycle) {
          c.clock.step()
          CycleCount += 1
        }
      }.fork{
        for(i <- 0 until 27) {
          val k = kernelValue.next()
          val kInt = Integer.parseInt(k.trim())
          c.io.KernelDataIn.poke(kInt.U)
          c.clock.step()
        }
        c.clock.step()
      }.fork{
        for(i <- 0 until 75) {
          val n = neuronValue.next()
          val nInt = Integer.parseInt(n.trim())
          c.io.NeuronDataIn.poke(nInt.U)
          c.clock.step()
        }
        c.clock.step()
      }.join()





    }
  }

} 


