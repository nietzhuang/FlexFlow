circuit SRAM :
  module SRAM :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<12>
    output io_DataOut : UInt<16>

    mem mem : @[BufferTest.scala 15:16]
      data-type => UInt<16>
      depth => 4096
      read-latency => 0
      write-latency => 1
      reader => io_DataOut_MPORT
      read-under-write => undefined
    io_DataOut <= mem.io_DataOut_MPORT.data @[BufferTest.scala 16:14]
    mem.io_DataOut_MPORT.addr <= io_addr @[BufferTest.scala 16:20]
    mem.io_DataOut_MPORT.en <= UInt<1>("h1") @[BufferTest.scala 16:20]
    mem.io_DataOut_MPORT.clk <= clock @[BufferTest.scala 16:20]
