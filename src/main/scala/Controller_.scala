import chisel3._
import chisel3.util._

/*
class Controller(
  numPERow: Int,
  numPECol: Int,
  depth: Int,
  numBank: Int
)
extends Module {
  val io = IO(new Bundle {
    val PID           = Input(UInt(8.W))  // PE(M, N)
    val Mode          = INput(UInt(3.W))
    val Schedule      = Input(UInt(24.W))  // from ddecoder (assume maximum is 15)
    val KernelAddr    = Output(UInt(log2Up(depth).W))
    //val NeuralAddr    = Output(UInt(log2Up(depth).W))
    val BankIndex     = Output(UInt(log2Up(numBank).W))
    val ReadWrite     = Output(Bool())
    val BufferEnable  = Output(Bool())
  }) 

  val initial :: hold :: increase :: jump :: Nil = Enum(4)
  val stateReg = RegInit(hold)

  // Decode the dataflow parameters
  val Tm := Schedule(23:20)
  val Tn := Schedule(19:16)
  val Ti := Schedule(15:12)
  val Tj := Schedule(11:8)
  val Tr := Schedule(7:4)
  val Tc := Schedule(3:0) 

  val PErow := io.PID(7, 4)
  val PEcol := io.PID(3, 0)
  val numGroupRow := PErow / Tm
  val numGroupCol := PErow / Tn
  val Group := RegInit(Cat(PErow / numGroupRow, PECol / numGroupCol))  // former 4-bit for m, latter 4-bit for n.


  // Psuedo code
  switch (stateReg) {
    is(initial) {
      when(E1) {
        stateReg := hold
      }.elsewhen(E2) {
        stateReg := increase
      }.otherwise {
        stateReg := initial
      }
    }
    is(hold) {
      when(E0) {
        stateReg := initial  
      }.elsewhen(E1) {
        stateReg := hold
      }.elsewhen(E2) {
        stateReg := increase
      }.otherwise {
        stateReg := jump
      }
    }
    is(increase) {
      when(E0) {
        stateReg := initial
      }.elsewhen(E1) {
        stateReg := hold
      }.elsewhen(E2) {
        stateReg := increase
      }.otherwise {
        stateReg := jump
      }
    }
    is(jump) {
      when(E0) {
        stateReg := initial
      }.elsewhen(E1) {
        stateReg := hold
      }.elsewhen(E2) {
        stateReg := increase
      }.otherwise {
        stateReg := jump
      }
    }
  }

  switch(stateReg) {
    is(initial) {
      io.KernelAddr := 0.U 
      io.NeuralAddr :=  //!!! this may be seperated into other controller
      io.BankIndex := 0.U
      io.ReadWrite := false.B
      io.BufferEnable := false.B
    }
    is(hold) {
      io.KernelAddr := 
      io.NeuralAddr :=  //!!! this may be seperated into other controller
      io.BankIndex :=
      io.ReadWrite :=
      io.BufferEnable :=
    }
    is(increase) {
      io.KernelAddr := 
      io.NeuralAddr :=  //!!! this may be seperated into other controller
      io.BankIndex :=
      io.ReadWrite :=
      io.BufferEnable :=
    }
    is(jump) {
      io.KernelAddr := 
      io.NeuralAddr :=  //!!! this may be seperated into other controller
      io.BankIndex :=
      io.ReadWrite :=
      io.BufferEnable :=
    }
  }
  //  Psuedo Code


}

*/
