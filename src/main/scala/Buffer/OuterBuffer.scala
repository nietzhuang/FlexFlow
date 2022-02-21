package flexflow.buffer 

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
  val BankArray = new Array[Bank](numBank)
  for(i <- 0 until numBank) {
    BankArray(i) = Module(new Bank(bitwidth, depth))
  }


  // Set default value
  for(i <- 0 until numBank) {
    BankArray(i).io.BankIO.Enable := false.B
    BankArray(i).io.BankIO.DataIn := 0.U
  }
  io.BufferIO.DataOut := 0.U

  // Connections
  for(i <- 0 until numBank) {
    when(i.U === io.BankIndex) {
      BankArray(i).io.BankIO.DataAddr := io.BufferIO.DataAddr
      BankArray(i).io.BankIO.ReadWrite := io.BufferIO.ReadWrite
    }.otherwise{
      BankArray(i).io.BankIO.DataAddr := 0.U
      BankArray(i).io.BankIO.ReadWrite := false.B
    }
  }
  
  switch(io.BankIndex) {
    is(0.U) { BankArray(0).io.BankIO.Enable := io.BufferIO.Enable }
    is(1.U) { BankArray(1).io.BankIO.Enable := io.BufferIO.Enable }
    is(2.U) { BankArray(2).io.BankIO.Enable := io.BufferIO.Enable }
    is(3.U) { BankArray(3).io.BankIO.Enable := io.BufferIO.Enable }
    is(4.U) { BankArray(4).io.BankIO.Enable := io.BufferIO.Enable }
    is(5.U) { BankArray(5).io.BankIO.Enable := io.BufferIO.Enable }
    is(6.U) { BankArray(6).io.BankIO.Enable := io.BufferIO.Enable }
    is(7.U) { BankArray(7).io.BankIO.Enable := io.BufferIO.Enable }
    is(8.U) { BankArray(8).io.BankIO.Enable := io.BufferIO.Enable }
    is(9.U) { BankArray(9).io.BankIO.Enable := io.BufferIO.Enable }
    is(10.U) { BankArray(10).io.BankIO.Enable := io.BufferIO.Enable }
    is(11.U) { BankArray(11).io.BankIO.Enable := io.BufferIO.Enable }
    is(12.U) { BankArray(12).io.BankIO.Enable := io.BufferIO.Enable }
    is(13.U) { BankArray(13).io.BankIO.Enable := io.BufferIO.Enable }
    is(14.U) { BankArray(14).io.BankIO.Enable := io.BufferIO.Enable }
    is(15.U) { BankArray(15).io.BankIO.Enable := io.BufferIO.Enable }
  }

  when(io.BufferIO.ReadWrite === false.B) {
    switch(io.BankIndex) {
      is(0.U) { BankArray(0).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(1.U) { BankArray(1).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(2.U) { BankArray(2).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(3.U) { BankArray(3).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(4.U) { BankArray(4).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(5.U) { BankArray(5).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(6.U) { BankArray(6).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(7.U) { BankArray(7).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(8.U) { BankArray(8).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(9.U) { BankArray(9).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(10.U) { BankArray(10).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(11.U) { BankArray(11).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(12.U) { BankArray(12).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(13.U) { BankArray(13).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(14.U) { BankArray(14).io.BankIO.DataIn := io.BufferIO.DataIn }
      is(15.U) { BankArray(15).io.BankIO.DataIn := io.BufferIO.DataIn }
    }
  }.otherwise {
    switch(io.BankIndex) {
      is(0.U) { io.BufferIO.DataOut := BankArray(0).io.BankIO.DataOut }
      is(1.U) { io.BufferIO.DataOut := BankArray(1).io.BankIO.DataOut }
      is(2.U) { io.BufferIO.DataOut := BankArray(2).io.BankIO.DataOut }
      is(3.U) { io.BufferIO.DataOut := BankArray(3).io.BankIO.DataOut }
      is(4.U) { io.BufferIO.DataOut := BankArray(4).io.BankIO.DataOut }
      is(5.U) { io.BufferIO.DataOut := BankArray(5).io.BankIO.DataOut }
      is(6.U) { io.BufferIO.DataOut := BankArray(6).io.BankIO.DataOut }
      is(7.U) { io.BufferIO.DataOut := BankArray(7).io.BankIO.DataOut }
      is(8.U) { io.BufferIO.DataOut := BankArray(8).io.BankIO.DataOut }
      is(9.U) { io.BufferIO.DataOut := BankArray(9).io.BankIO.DataOut }
      is(10.U) { io.BufferIO.DataOut := BankArray(10).io.BankIO.DataOut }
      is(11.U) { io.BufferIO.DataOut := BankArray(11).io.BankIO.DataOut }
      is(12.U) { io.BufferIO.DataOut := BankArray(12).io.BankIO.DataOut }
      is(13.U) { io.BufferIO.DataOut := BankArray(13).io.BankIO.DataOut }
      is(14.U) { io.BufferIO.DataOut := BankArray(14).io.BankIO.DataOut }
      is(15.U) { io.BufferIO.DataOut := BankArray(15).io.BankIO.DataOut }
    }
  }
}


object OuterBuffer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new OuterBuffer(16, 1024, 16))
}
