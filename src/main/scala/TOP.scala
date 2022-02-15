package flexflow

import chisel3._
import chisel3.util._
import flexflow.pe._
import flexflow.buffer._


class BundlePort(bitwidth: Int, bankdepth: Int) extends Bundle {
  val Enable    = Bool()
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
    val KernelOut   = Output(UInt(32.W))
    val NeuronIn    = Input(new BundlePort(bitwidth, bankdepth))
    val NeuronOut   = Output(UInt(32.W))
    val Done        = Output(Bool())
    val Neuron2Out  = Output(new BundlePort(bitwidth, bankdepth))
  })

  val KernelBuffer = Module(new KernelBuffer(bitwidth, bankdepth, numBank))
  val NeuronBuffer = Module(new NeuronBuffer(bitwidth, bankdepth, numBank))
  val Neuron2Buffer = Module(new NeuronBuffer(bitwidth, bankdepth, numBank))
  //val Decoder = Module(new Decode(numPERow, numPECol))
  //val PEArray = Module(new PEArray())
  //val Controller = Module(new Controller)
  //val ALUArray = Module(new ALUArray)

/*
 *  Design the remaining modules,
 *  and connect all of the ports. 
 */





}


