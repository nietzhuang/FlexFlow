circuit Decode :
  module Decode :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Valid : UInt<1>, flip Instruction : UInt<32>, Mode : UInt<3>, Schedule : { Tm : UInt<4>, Tn : UInt<4>, Ti : UInt<4>, Tj : UInt<4>, Tr : UInt<4>, Tc : UInt<4>}, ScheduleSize : UInt<7>, Pooling : UInt<2>}

    reg cnt : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoder.scala 26:20]
    reg CommandParamReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Decoder.scala 28:32]
    reg SizeReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Decoder.scala 29:24]
    node _T = eq(io.Valid, UInt<1>("h1")) @[Decoder.scala 32:17]
    when _T : @[Decoder.scala 32:29]
      node _cnt_T = add(cnt, UInt<1>("h1")) @[Decoder.scala 33:16]
      node _cnt_T_1 = tail(_cnt_T, 1) @[Decoder.scala 33:16]
      cnt <= _cnt_T_1 @[Decoder.scala 33:9]
    else :
      cnt <= UInt<1>("h0") @[Decoder.scala 35:9]
    node _T_1 = eq(io.Valid, UInt<1>("h1")) @[Decoder.scala 38:17]
    when _T_1 : @[Decoder.scala 38:29]
      node _T_2 = eq(UInt<1>("h0"), cnt) @[Decoder.scala 39:17]
      when _T_2 : @[Decoder.scala 39:17]
        CommandParamReg <= io.Instruction @[Decoder.scala 40:33]
      else :
        node _T_3 = eq(UInt<1>("h1"), cnt) @[Decoder.scala 39:17]
        when _T_3 : @[Decoder.scala 39:17]
          SizeReg <= io.Instruction @[Decoder.scala 41:25]
    node _T_4 = bits(CommandParamReg, 31, 29) @[Decoder.scala 45:23]
    node _T_5 = eq(_T_4, UInt<2>("h3")) @[Decoder.scala 45:32]
    when _T_5 : @[Decoder.scala 45:46]
      CommandParamReg <= UInt<32>("h0") @[Decoder.scala 46:21]
      SizeReg <= UInt<32>("h0") @[Decoder.scala 47:13]
    node _io_Mode_T = bits(CommandParamReg, 31, 29) @[Decoder.scala 50:29]
    io.Mode <= _io_Mode_T @[Decoder.scala 50:11]
    node _io_Schedule_Tm_T = bits(CommandParamReg, 28, 25) @[Decoder.scala 51:36]
    io.Schedule.Tm <= _io_Schedule_Tm_T @[Decoder.scala 51:18]
    node _io_Schedule_Tn_T = bits(CommandParamReg, 24, 21) @[Decoder.scala 52:36]
    io.Schedule.Tn <= _io_Schedule_Tn_T @[Decoder.scala 52:18]
    node _io_Schedule_Ti_T = bits(CommandParamReg, 20, 17) @[Decoder.scala 53:36]
    io.Schedule.Ti <= _io_Schedule_Ti_T @[Decoder.scala 53:18]
    node _io_Schedule_Tj_T = bits(CommandParamReg, 16, 13) @[Decoder.scala 54:36]
    io.Schedule.Tj <= _io_Schedule_Tj_T @[Decoder.scala 54:18]
    node _io_Schedule_Tr_T = bits(CommandParamReg, 12, 9) @[Decoder.scala 55:36]
    io.Schedule.Tr <= _io_Schedule_Tr_T @[Decoder.scala 55:18]
    node _io_Schedule_Tc_T = bits(CommandParamReg, 8, 5) @[Decoder.scala 56:36]
    io.Schedule.Tc <= _io_Schedule_Tc_T @[Decoder.scala 56:18]
    node _io_Pooling_T = bits(CommandParamReg, 4, 3) @[Decoder.scala 57:32]
    io.Pooling <= _io_Pooling_T @[Decoder.scala 57:14]
    node _io_ScheduleSize_T = bits(SizeReg, 6, 0) @[Decoder.scala 58:29]
    io.ScheduleSize <= _io_ScheduleSize_T @[Decoder.scala 58:19]

