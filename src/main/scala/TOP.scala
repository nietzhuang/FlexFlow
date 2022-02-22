// Under development
// Top controller, PE Array, ALU array have to be instantiate.

package flexflow

import chisel3._
import chisel3.util._
import flexflow.pe._
import flexflow.alu._
import flexflow.buffer._


class BundlePort(bitwidth: Int, bankdepth: Int) extends Bundle {
  val Valid     = Bool()
  val Data      = UInt(bitwidth.W)
  val DataAddr  = UInt(log2Up(bankdepth).W)
  val ReadWrite = Bool()
}  

class TOP(
  bitwidth: Int,
  numPERow: Int,
  numPECol: Int,
  numBank: Int,
  bankdepth: Int,
  bufdepth: Int
) extends Module {
  val io = IO(new Bundle {
    val Valid       = Input(Bool())
    val Instruction = Input(UInt(32.W))
    val KernelIn    = Input(new BundlePort(bitwidth, bankdepth))
    //val KernelOut   = Output(UInt(32.W))
    val NeuronIn    = Input(new BundlePort(bitwidth, bankdepth))
    //val NeuronOut   = Output(UInt(32.W))
    val Done        = Output(Bool())
    val Neuron2Out  = Output(new BundlePort(bitwidth, bankdepth))
  })

  val KernelBuffer = Module(new KernelBuffer(bitwidth, bankdepth, numBank))
  val NeuronBuffer = Module(new NeuronBuffer(bitwidth, bankdepth, numBank))
  val Neuron2Buffer = Module(new NeuronBuffer(bitwidth, bankdepth, numBank))
  val Decoder = Module(new Decode(numPERow, numPECol))
  //val PEArray = Module(new PEArray())
  //val Controller = Module(new Controller)
  val ALUArray = Module(new ALUArray(bitwidth, numBank, bankdepth, numPERow, numPECol))

  /*
  Decoder.io.Valid := io.Valid
  Decoder.io.Instruction := io.Instruction
  Decoder.io.SchePort <> PE.io.SchePort
  // contoller....  := Decode.io.Pooling
  
  KernelBuffer.io.BufferIO.Enable := io.KernelIn.Valid
  KernelBuffer.io.BufferIO.DataIn := io.KernelIn.Data
  KernelBuffer.io.BufferIO.DataAddr := io.KernelIn.DataAddr
  KernelBuffer.io.BufferIO.ReadWrite := io.KernelIn.ReadWrite
  //  PEArray := KernelBuffer.io.BufferIO.DataOut

  NeuronBuffer.io.BufferIO.Enable := io.NeuronIn.Valid
  NeuronBuffer.io.BufferIO.DataIn := io.NeuronIn.Data
  NeuronBuffer.io.BufferIO.DataAddr := io.NeuronIn.DataAddr
  NeuronBuffer.io.BufferIO.ReadWrite := io.NeuronIn.ReadWrite
  //  PEArray := NeuronBuffer.io.BufferIO.DataOut
  
  //  io.Done := Controller....
  io.Neuron2Out := Neuron2Buffer.io.BufferIO.DataOut

*/

}






/*
object TOP extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new TOP(16, 16, 16, 16, 1024, 128), Array("--target-dir", "./generated/"))
}
*/
