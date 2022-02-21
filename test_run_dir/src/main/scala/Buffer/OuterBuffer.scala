package flexflow.outerbuf 

import chisel3._
import chisel3.util._


class BankIO(bitwidth: Int, depth: Int) extends Bundle {
  val DataIn    = Input(UInt(bitwidth.W))
  val DataAddr  = Input(UInt(log2Up(depth).W))
  val ReadWrite = Input(Bool())
  val Enable    = Input(Bool())
  val DataOut   = Output(UInt(bitwidth.W))
}

class Bank(bitwidth: Int, depth: Int) extends Module {
  val io = IO(new Bundle {
    val BankIO = new BankIO(bitwidth, depth)
  })
 
  val buffer  = RegInit(VecInit.fill(depth)(0.U(bitwidth.W)))

  io.BankIO.DataOut := 0.U
  when(io.BankIO.Enable === true.B) {
    when(io.BankIO.ReadWrite === false.B) {
      buffer(io.BankIO.DataAddr) := io.BankIO.DataIn
    }.otherwise {
      io.BankIO.DataOut := buffer(io.BankIO.DataAddr)
    }
  }
}


class OuterBuffer(bitwidth: Int, depth: Int, numBank: Int) extends Module {
  // Read and write sperately.
  val io = IO(new Bundle {
    val BufferIO  = new BankIO(bitwidth, depth)
    val BankIndex = Input(UInt(log2Up(numBank).W))
  })

  // Initiate a number of 1K bank.
  val bank0   = Module(new Bank(bitwidth, depth))
  val bank1   = Module(new Bank(bitwidth, depth))
  val bank2   = Module(new Bank(bitwidth, depth))
  val bank3   = Module(new Bank(bitwidth, depth))
  val bank4   = Module(new Bank(bitwidth, depth))
  val bank5   = Module(new Bank(bitwidth, depth))
  val bank6   = Module(new Bank(bitwidth, depth))
  val bank7   = Module(new Bank(bitwidth, depth))
  val bank8   = Module(new Bank(bitwidth, depth))
  val bank9   = Module(new Bank(bitwidth, depth))
  val bank10  = Module(new Bank(bitwidth, depth))
  val bank11  = Module(new Bank(bitwidth, depth))
  val bank12  = Module(new Bank(bitwidth, depth))
  val bank13  = Module(new Bank(bitwidth, depth))
  val bank14  = Module(new Bank(bitwidth, depth))
  val bank15  = Module(new Bank(bitwidth, depth))

  // Set default value
  bank0.io.BankIO.DataIn  := 0.U
  bank1.io.BankIO.DataIn  := 0.U
  bank2.io.BankIO.DataIn  := 0.U
  bank3.io.BankIO.DataIn  := 0.U
  bank4.io.BankIO.DataIn  := 0.U
  bank5.io.BankIO.DataIn  := 0.U
  bank6.io.BankIO.DataIn  := 0.U
  bank7.io.BankIO.DataIn  := 0.U
  bank8.io.BankIO.DataIn  := 0.U
  bank9.io.BankIO.DataIn  := 0.U
  bank10.io.BankIO.DataIn := 0.U
  bank11.io.BankIO.DataIn := 0.U
  bank12.io.BankIO.DataIn := 0.U
  bank13.io.BankIO.DataIn := 0.U
  bank14.io.BankIO.DataIn := 0.U
  bank15.io.BankIO.DataIn := 0.U

  bank0.io.BankIO.Enable  := false.B
  bank1.io.BankIO.Enable  := false.B
  bank2.io.BankIO.Enable  := false.B
  bank3.io.BankIO.Enable  := false.B
  bank4.io.BankIO.Enable  := false.B
  bank5.io.BankIO.Enable  := false.B
  bank6.io.BankIO.Enable  := false.B
  bank7.io.BankIO.Enable  := false.B
  bank8.io.BankIO.Enable  := false.B
  bank9.io.BankIO.Enable  := false.B
  bank10.io.BankIO.Enable := false.B
  bank11.io.BankIO.Enable := false.B
  bank12.io.BankIO.Enable := false.B
  bank13.io.BankIO.Enable := false.B
  bank14.io.BankIO.Enable := false.B
  bank15.io.BankIO.Enable := false.B
  
  io.BufferIO.DataOut := 0.U

  switch(io.BankIndex) {
    is(0.U) { bank0.io.BankIO.Enable := io.BufferIO.Enable }
    is(1.U) { bank1.io.BankIO.Enable := io.BufferIO.Enable }
    is(2.U) { bank2.io.BankIO.Enable := io.BufferIO.Enable }
    is(3.U) { bank3.io.BankIO.Enable := io.BufferIO.Enable }
    is(4.U) { bank4.io.BankIO.Enable := io.BufferIO.Enable }
    is(5.U) { bank5.io.BankIO.Enable := io.BufferIO.Enable }
    is(6.U) { bank6.io.BankIO.Enable := io.BufferIO.Enable }
    is(7.U) { bank7.io.BankIO.Enable := io.BufferIO.Enable }
    is(8.U) { bank8.io.BankIO.Enable := io.BufferIO.Enable }
    is(9.U) { bank9.io.BankIO.Enable := io.BufferIO.Enable }
    is(10.U) { bank10.io.BankIO.Enable := io.BufferIO.Enable }
    is(11.U) { bank11.io.BankIO.Enable := io.BufferIO.Enable }
    is(12.U) { bank12.io.BankIO.Enable := io.BufferIO.Enable }
    is(13.U) { bank13.io.BankIO.Enable := io.BufferIO.Enable }
    is(14.U) { bank14.io.BankIO.Enable := io.BufferIO.Enable }
    is(15.U) { bank15.io.BankIO.Enable := io.BufferIO.Enable }
  }

  when(io.BufferIO.ReadWrite === false.B) {
    switch(io.BankIndex) {
      is(0.U) { bank0.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(1.U) { bank1.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(2.U) { bank2.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(3.U) { bank3.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(4.U) { bank4.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(5.U) { bank5.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(6.U) { bank6.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(7.U) { bank7.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(8.U) { bank8.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(9.U) { bank9.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(10.U) { bank10.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(11.U) { bank11.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(12.U) { bank12.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(13.U) { bank13.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(14.U) { bank14.io.BankIO.DataIn := io.BufferIO.DataIn }
      is(15.U) { bank15.io.BankIO.DataIn := io.BufferIO.DataIn }
    }
  }.otherwise {
    switch(io.BankIndex) {
      is(0.U) { io.BufferIO.DataOut := bank0.io.BankIO.DataOut }
      is(1.U) { io.BufferIO.DataOut := bank1.io.BankIO.DataOut }
      is(2.U) { io.BufferIO.DataOut := bank2.io.BankIO.DataOut }
      is(3.U) { io.BufferIO.DataOut := bank3.io.BankIO.DataOut }
      is(4.U) { io.BufferIO.DataOut := bank4.io.BankIO.DataOut }
      is(5.U) { io.BufferIO.DataOut := bank5.io.BankIO.DataOut }
      is(6.U) { io.BufferIO.DataOut := bank6.io.BankIO.DataOut }
      is(7.U) { io.BufferIO.DataOut := bank7.io.BankIO.DataOut }
      is(8.U) { io.BufferIO.DataOut := bank8.io.BankIO.DataOut }
      is(9.U) { io.BufferIO.DataOut := bank9.io.BankIO.DataOut }
      is(10.U) { io.BufferIO.DataOut := bank10.io.BankIO.DataOut }
      is(11.U) { io.BufferIO.DataOut := bank11.io.BankIO.DataOut }
      is(12.U) { io.BufferIO.DataOut := bank12.io.BankIO.DataOut }
      is(13.U) { io.BufferIO.DataOut := bank13.io.BankIO.DataOut }
      is(14.U) { io.BufferIO.DataOut := bank14.io.BankIO.DataOut }
      is(15.U) { io.BufferIO.DataOut := bank15.io.BankIO.DataOut }
    }
  }

  bank0.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank1.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank2.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank3.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank4.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank5.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank6.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank7.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank8.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank9.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank10.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank11.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank12.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank13.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank14.io.BankIO.DataAddr := io.BufferIO.DataAddr
  bank15.io.BankIO.DataAddr := io.BufferIO.DataAddr

  bank0.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank1.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank2.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank3.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank4.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank5.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank6.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank7.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank8.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank9.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank10.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank11.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank12.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank13.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank14.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  bank15.io.BankIO.ReadWrite := io.BufferIO.ReadWrite
  
  /*  Try initiate module array
  val buffer = Array.fill(numBank) { bank } 
  for(i <- 0 until numBank) {
    buffer(i).io.DataIn := io.DataIn
    buffer(i).io.DataAddr := io.DataAddr
  }
 
  var Index = 0
  switch(io.DataAddr(log2Up(depth) - 1, log2Up(depth) - 2)) {
    is(0.U) { Index = 0 }
    is(1.U) { Index = 1 }
    is(2.U) { Index = 2 }
    is(3.U) { Index = 3 }
  }*/

  //io.DataOut := buffer(io.BankIndex).io.DataOut
  //io.DataOut := buffer(Index).io.DataOut
}


object OuterBuffer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new OuterBuffer(16, 1024, 16))
}
