import chisel3._
import chisel3.util._
import chisel3.util.experimental.loadMemoryFromFile
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import flexflow.kernelbuf._
import flexflow.neuronbuf._

class SRAM(bitwidth: Int, depth: Int, path: String) extends Module {
  val io = IO(new Bundle {
    val addr    = Input(UInt(log2Up(depth).W))
    val DataOut = Output(UInt(bitwidth.W))
  })

  val mem = Mem(depth, UInt(bitwidth.W))
  io.DataOut := mem(io.addr)
  //loadMemoryFromFile(mem, "./src/test/Patterns/kernel.txt")
  loadMemoryFromFile(mem, path)
  
}

class BufferTester extends AnyFlatSpec with ChiselScalatestTester {
  //behavior of "Read"
  
  val bitwidth = 16
  val sramDepth = 4096  // 4k blocks

  val bankDepth = 1024
  val numBank = 16

  val kernelPath = "./src/test/Patterns/kernel.txt"
  val neuronPath = "./src/test/Patterns/neuron.txt"
  val kernelWidth = 3
  val kernelHeight = 3
  val kernelChl = 3
  val kernelNum = 1
  val neuronWidth = 5
  val neuronHeight = 5
  val neuronChl = 3
  val neuronNum = 1

  val Ti = 2.0
  val Tj = 2.0
  val Tr = 1.0
  val Tc = 4.0


  it should "test SRAM" in {
    test(new SRAM(bitwidth, sramDepth, kernelPath)) {c =>
   
      val kernelValue = io.Source.fromFile(kernelPath).getLines

      var addr = 0
      for(k <- kernelValue) {
        c.io.addr.poke(addr.U)
        val kInt = Integer.parseInt(k.trim());
        c.io.DataOut.expect(kInt.U)
        //print("Error: Kernel value should be: " + k)
        //println("\tDataOut: " + c.io.DataOut.peek().litValue)
        
        addr += 1
        c.clock.step()
      }
    }
  }


  it should "test Kernal Buffer" in {
    test(new KernelBuffer(bitwidth, bankDepth, numBank)) {c =>
      
      val addrBoundary = Math.ceil((Ti * Tj) / (Tr * Tc))

      // Write kernal data to buffer
      val kernelValue = io.Source.fromFile(kernelPath).getLines
      for(numKernel <- 0 until kernelNum) {
        for(numChannel <- 0 until kernelChl) {
          for(numHeight <- 0 until kernelHeight) {
            for(numWidth <- 0 until kernelWidth) {
              // Assume Ti is always equal to kernel height.
              // Tj is always equal to kernel width.
              var addr = numWidth.toInt
              var bankidx = (numHeight + numChannel * Tr * Tc).toInt
              val k = kernelValue.next()
              val kInt = Integer.parseInt(k.trim())
              
              /*print("addr: " + addr)
              print("\tbankidx: " + bankidx)
              print("\tChannel: " + numChannel)
              print("\tKernel Number " + numKernel)
              println("\t Weight: " + kInt)
              */
              c.io.BufferIO.Enable.poke(true.B) 
              c.io.BufferIO.ReadWrite.poke(false.B)
              c.io.BufferIO.DataIn.poke(kInt.U)
              c.io.BufferIO.DataAddr.poke(addr.U)
              c.io.BankIndex.poke(bankidx.U)

              c.clock.step()

              // Read kernal data from buffer.
              c.io.BufferIO.ReadWrite.poke(true.B)
              c.io.BufferIO.DataAddr.poke(addr.U)
              c.io.BankIndex.poke(bankidx.U)
              c.io.BufferIO.DataOut.expect(kInt.U)
              /*val output = c.io.BufferIO.DataOut.peek()
              println(output.litValue)
              */
                
              c.clock.step()
            }
          }
        }
      }
    }
  } 

  it should "test Neuron Buffer" in {
    test(new NeuronBuffer(bitwidth, bankDepth, numBank)) {c =>

      val addrBoundary = Math.ceil(neuronWidth / Tj)

      // Write neuron data to buffer
      val neuronValue = io.Source.fromFile(neuronPath).getLines
      for(numNeuron <- 0 until neuronNum) {
        for(numChannel <- 0 until neuronChl) {
          for(numHeight <- 0 until neuronHeight) {
            var bankidx = (numHeight * Tj).toInt
            for(numWidth <- 0 until neuronWidth) {
              var addr = Math.floor(numWidth / Tj).toInt
              val n = neuronValue.next()
              val nInt = Integer.parseInt(n.trim())

             /* print("addr: " + addr)
              print("\tbankidx: " + bankidx)
              print("\tChannel: " + numChannel)
              print("\tNeuron Number " + numNeuron)
              println("\t Neuron: " + nInt)
              */

              c.io.BufferIO.Enable.poke(true.B)
              c.io.BufferIO.ReadWrite.poke(false.B)
              c.io.BufferIO.DataIn.poke(nInt.U)
              c.io.BufferIO.DataAddr.poke(addr.U)
              c.io.BankIndex.poke(bankidx.U)

              c.clock.step()

              // Read Neuron data from buffer.
              c.io.BufferIO.ReadWrite.poke(true.B)
              c.io.BufferIO.DataAddr.poke(addr.U)
              c.io.BankIndex.poke(bankidx.U)
              c.io.BufferIO.DataOut.expect(nInt.U)
              /*val output = c.io.BufferIO.DataOut.peek()
              println(output.litValue)
              */

              c.clock.step()
              bankidx = if(bankidx + 1 == (numHeight+1) * Tj)
                          (numHeight * Tj).toInt
                        else 
                          (bankidx + 1).toInt
            }
          }
        }
     }
     
     
    }
  }
}
