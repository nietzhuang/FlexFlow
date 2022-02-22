//!! Under development.
//!! Patterns for different scheduling have to generate.
//!! The correctness of PE module has to verify further.


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
      val Mode = 2.U(3.W)  // Load 2
      val Tm = 15.U(4.W)   // Tm = 16
      val Tn = 3.U(4.W)    // Tn = 4
      val Ti = 0.U(4.W)    // Ti = 1
      val Tj = 3.U(4.W)    // Tj = 4
      val Tr = 0.U(4.W)    // Tr = 1 
      val Tc = 0.U(4.W)    // Tc = 1
      val Pool = 0.U(2.W)  // No pooling
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
      c.io.SchePort.Mode.poke(schedule(26, 24))
      c.io.SchePort.Schedule.poke(schedule(23, 0))
      c.io.SchePort.ScheduleSize.poke(neuronSize(6, 0))
      fork{
        while(CycleCount < MaxCycle) {
          c.clock.step()
          CycleCount += 1
        }
      }.fork{
        for(i <- 0 until 27) {
          val k = kernelValue.next()
          val kInt = Integer.parseInt(k.trim())
          c.io.KernelBuf.DataIn.poke(kInt.U)
          c.clock.step()
        }
        c.clock.step()
      }.fork{
        for(i <- 0 until 75) {
          val n = neuronValue.next()
          val nInt = Integer.parseInt(n.trim())
          c.io.NeuronBuf.DataIn.poke(nInt.U)
          c.clock.step()
        }
        c.clock.step()
      }.fork{
        while(CycleCount < MaxCycle) {
          print("Kernel: ")
          print("\tAddress: " + c.io.KernelBuf.Addr.peek.litValue)
          println("\tIndex: " + c.io.KernelBuf.BankIdx.peek.litValue)
          //KernelBufRW
          //KernelBufEn`
          print("Neuron: ")
          print("\tAddress: " + c.io.NeuronBuf.Addr.peek.litValue)
          println("\tIndex: " + c.io.NeuronBuf.BankIdx.peek.litValue)
          println()

          c.clock.step()
        }
      }.join()





    }
  }

} 


