import chisel3._
import chiseltest._
import scala.util._
import org.scalatest.flatspec.AnyFlatSpec

import flexflow.buffer._


class BufferBankTester extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "OuterBuffer"

  val MaxCycle = 20
  val depth = 8
  
  it should "pass" in {
    test(new OuterBuffer(16, depth, 16)).withAnnotations(Seq(WriteVcdAnnotation)) {c =>

      c.io.BufferIO.Enable.poke(false.B)

      println("Writing...")
      c.io.BufferIO.ReadWrite.poke(false.B)
      c.io.BankIndex.poke(0.U)
      c.io.BufferIO.Enable.poke(true.B)
      for(i <- 0 until depth) {
        println("Writing data " + i + " to bank 0.")
        c.io.BufferIO.DataIn.poke(i.U)
        c.io.BufferIO.DataAddr.poke(i.U)

        c.clock.step()
      }

      c.io.BankIndex.poke(1.U)
      for(i <- 0 until depth) {
        val dataIn = i + 100
        println("Writing data " + dataIn + " to bank 1.")
        c.io.BufferIO.DataIn.poke(dataIn.U)
        c.io.BufferIO.DataAddr.poke(i.U)

        c.clock.step()
      }

      c.io.BankIndex.poke(2.U)
      for(i <- 0 until depth) {
        val dataIn = i + 200
        println("Writing data " + dataIn + " to bank 2.")
        c.io.BufferIO.DataIn.poke(dataIn.U)
        c.io.BufferIO.DataAddr.poke(i.U)

        c.clock.step()
      }

      println("\nReading...")
      c.io.BufferIO.ReadWrite.poke(true.B)
      c.io.BankIndex.poke(0.U)
      println("Check bank 0...")
      for(i <- 0 until depth) {
        c.io.BufferIO.DataAddr.poke(i.U)
        c.io.BufferIO.DataOut.expect(i.U)

        c.clock.step()
      }

      c.io.BufferIO.ReadWrite.poke(true.B)
      c.io.BankIndex.poke(1.U)
      println("Check bank 1...")
      for(i <- 0 until depth) {
        c.io.BufferIO.DataAddr.poke(i.U)
        val result = i + 100
        c.io.BufferIO.DataOut.expect(result.U)

        c.clock.step()
      }

      c.io.BufferIO.ReadWrite.poke(true.B)
      c.io.BankIndex.poke(2.U)
      println("Check bank 1...")
      for(i <- 0 until depth) {
        c.io.BufferIO.DataAddr.poke(i.U)
        val result = i + 200
        c.io.BufferIO.DataOut.expect(result.U)

        c.clock.step()
      }

      println("\nDisable buffer")
      c.io.BufferIO.Enable.poke(false.B)
      for(numbank <- 0 until 3) {
        c.io.BankIndex.poke(numbank.U)
        for(i <- 0 until depth) {
          val ranIndex = Random.nextInt.abs % 8
          c.io.BufferIO.DataAddr.poke(ranIndex.U)
          c.io.BufferIO.DataOut.expect(0.U)
          
          c.clock.step()
        }
      }

    }
  }
}
