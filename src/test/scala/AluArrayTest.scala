import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest._
import org.scalatest.flatspec.AnyFlatSpec

import flexflow.alu._

class AluArrayTester extends AnyFlatSpec with ChiselScalatestTester {
  val bitwidth = 32
  val numBank = 16
  val bankdepth = 1024
  val numPERow = 16
  val numPECol = 16
  var CycleCount = 0
  val MaxCycle = 10

  it should "test an single AluPool" in {
    test(new AluPool(bitwidth, numBank, bankdepth, numPECol)).withAnnotations(Seq(WriteVcdAnnotation)) {c =>
       
      c.io.ALUPort.Enable.poke(true.B)
      for(i <- 0 until numPERow) {
        c.io.ALUPort.PEDataIn(i).poke(1.U)
      }
      c.io.ALUPort.PsumIn.poke(1.U)
      c.clock.step()

      println("Single AluPool is testing...")
      while(CycleCount < MaxCycle) {
        print("Neuron2 Address: " + c.io.ALUPort.Neuron2Addr.peek().litValue)
        print("\tBank Index: " + c.io.ALUPort.BankIdx.peek().litValue)
        print("\tData Output: " + c.io.ALUPort.DataOut.peek().litValue)
        println("\tPsum Address: " + c.io.ALUPort.PsumAddr.peek().litValue)
        c.clock.step()
        CycleCount = CycleCount + 1
      }
      println()
    }
  }
  
  it should "test AluArray" in {
    test(new ALUArray(bitwidth, numBank, bankdepth, numPERow, numPECol)).withAnnotations(Seq(WriteVcdAnnotation)) {c =>
      for(numAlu <- 0 until numPECol) {        
        c.io.ALUPort(numAlu).Enable.poke(true.B)
        for(i <- 0 until numPERow) {
          c.io.ALUPort(numAlu).PEDataIn(i).poke(1.U)
        }
        c.io.ALUPort(numAlu).PsumIn.poke(1.U)
        c.clock.step()

        CycleCount = 0
        println("ALU number: " + numAlu)
        while(CycleCount < MaxCycle) {
          print("  Neuron2 Address: " + c.io.ALUPort(numAlu).Neuron2Addr.peek().litValue)
          print("\tBank Index: " + c.io.ALUPort(numAlu).BankIdx.peek().litValue)
          print("\tData Output: " + c.io.ALUPort(numAlu).DataOut.peek().litValue)
          println("\tPsum Address: " + c.io.ALUPort(numAlu).PsumAddr.peek().litValue)
          c.clock.step()
          CycleCount = CycleCount + 1

        }
      }
    }
  }

}


