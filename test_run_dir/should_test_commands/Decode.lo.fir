circuit Decode :
  module Decode :
    input clock : Clock
    input reset : UInt<1>
    input io_Valid : UInt<1>
    input io_Instruction : UInt<32>
    output io_Mode : UInt<3>
    output io_Schedule_Tm : UInt<4>
    output io_Schedule_Tn : UInt<4>
    output io_Schedule_Ti : UInt<4>
    output io_Schedule_Tj : UInt<4>
    output io_Schedule_Tr : UInt<4>
    output io_Schedule_Tc : UInt<4>
    output io_ScheduleSize : UInt<7>
    output io_Pooling : UInt<2>

    reg cnt : UInt<1>, clock with :
      reset => (UInt<1>("h0"), cnt) @[Decoder.scala 26:20]
    reg CommandParamReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), CommandParamReg) @[Decoder.scala 28:32]
    reg SizeReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), SizeReg) @[Decoder.scala 29:24]
    node _T = eq(io_Valid, UInt<1>("h1")) @[Decoder.scala 32:17]
    node _cnt_T = add(cnt, UInt<1>("h1")) @[Decoder.scala 33:16]
    node _cnt_T_1 = tail(_cnt_T, 1) @[Decoder.scala 33:16]
    node _GEN_0 = mux(_T, _cnt_T_1, UInt<1>("h0")) @[Decoder.scala 32:29 33:9 35:9]
    node _T_1 = eq(io_Valid, UInt<1>("h1")) @[Decoder.scala 38:17]
    node _T_2 = eq(UInt<1>("h0"), cnt) @[Decoder.scala 39:17]
    node _T_3 = eq(UInt<1>("h1"), cnt) @[Decoder.scala 39:17]
    node _GEN_1 = mux(_T_3, io_Instruction, SizeReg) @[Decoder.scala 39:17 29:24 41:25]
    node _GEN_2 = mux(_T_2, io_Instruction, CommandParamReg) @[Decoder.scala 39:17 28:32 40:33]
    node _GEN_3 = mux(_T_2, SizeReg, _GEN_1) @[Decoder.scala 39:17 29:24]
    node _GEN_4 = mux(_T_1, _GEN_2, CommandParamReg) @[Decoder.scala 38:29 28:32]
    node _GEN_5 = mux(_T_1, _GEN_3, SizeReg) @[Decoder.scala 29:24 38:29]
    node _T_4 = bits(CommandParamReg, 31, 29) @[Decoder.scala 45:23]
    node _T_5 = eq(_T_4, UInt<2>("h3")) @[Decoder.scala 45:32]
    node _GEN_6 = mux(_T_5, UInt<32>("h0"), _GEN_4) @[Decoder.scala 45:46 46:21]
    node _GEN_7 = mux(_T_5, UInt<32>("h0"), _GEN_5) @[Decoder.scala 45:46 47:13]
    node _io_Mode_T = bits(CommandParamReg, 31, 29) @[Decoder.scala 50:29]
    node _io_Schedule_Tm_T = bits(CommandParamReg, 28, 25) @[Decoder.scala 51:36]
    node _io_Schedule_Tn_T = bits(CommandParamReg, 24, 21) @[Decoder.scala 52:36]
    node _io_Schedule_Ti_T = bits(CommandParamReg, 20, 17) @[Decoder.scala 53:36]
    node _io_Schedule_Tj_T = bits(CommandParamReg, 16, 13) @[Decoder.scala 54:36]
    node _io_Schedule_Tr_T = bits(CommandParamReg, 12, 9) @[Decoder.scala 55:36]
    node _io_Schedule_Tc_T = bits(CommandParamReg, 8, 5) @[Decoder.scala 56:36]
    node _io_Pooling_T = bits(CommandParamReg, 4, 3) @[Decoder.scala 57:32]
    node _io_ScheduleSize_T = bits(SizeReg, 6, 0) @[Decoder.scala 58:29]
    io_Mode <= _io_Mode_T @[Decoder.scala 50:11]
    io_Schedule_Tm <= _io_Schedule_Tm_T @[Decoder.scala 51:18]
    io_Schedule_Tn <= _io_Schedule_Tn_T @[Decoder.scala 52:18]
    io_Schedule_Ti <= _io_Schedule_Ti_T @[Decoder.scala 53:18]
    io_Schedule_Tj <= _io_Schedule_Tj_T @[Decoder.scala 54:18]
    io_Schedule_Tr <= _io_Schedule_Tr_T @[Decoder.scala 55:18]
    io_Schedule_Tc <= _io_Schedule_Tc_T @[Decoder.scala 56:18]
    io_ScheduleSize <= _io_ScheduleSize_T @[Decoder.scala 58:19]
    io_Pooling <= _io_Pooling_T @[Decoder.scala 57:14]
    cnt <= mux(reset, UInt<1>("h0"), _GEN_0) @[Decoder.scala 26:{20,20}]
    CommandParamReg <= mux(reset, UInt<32>("h0"), _GEN_6) @[Decoder.scala 28:{32,32}]
    SizeReg <= mux(reset, UInt<32>("h0"), _GEN_7) @[Decoder.scala 29:{24,24}]
