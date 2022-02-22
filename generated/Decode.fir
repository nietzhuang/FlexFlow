circuit Decode :
  module Decode :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Valid : UInt<1>, flip Instruction : UInt<32>, flip SchePort : { flip Mode : UInt<3>, flip Schedule : { Tm : UInt<4>, Tn : UInt<4>, Ti : UInt<4>, Tj : UInt<4>, Tr : UInt<4>, Tc : UInt<4>}, flip ScheduleSize : UInt<7>}, Pooling : UInt<2>}

    reg cnt : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoder.scala 34:20]
    reg CommandParamReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Decoder.scala 36:32]
    reg SizeReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Decoder.scala 37:24]
    node _T = eq(io.Valid, UInt<1>("h1")) @[Decoder.scala 40:17]
    when _T : @[Decoder.scala 40:29]
      node _cnt_T = add(cnt, UInt<1>("h1")) @[Decoder.scala 41:16]
      node _cnt_T_1 = tail(_cnt_T, 1) @[Decoder.scala 41:16]
      cnt <= _cnt_T_1 @[Decoder.scala 41:9]
    else :
      cnt <= UInt<1>("h0") @[Decoder.scala 43:9]
    node _T_1 = eq(io.Valid, UInt<1>("h1")) @[Decoder.scala 46:17]
    when _T_1 : @[Decoder.scala 46:29]
      node _T_2 = eq(UInt<1>("h0"), cnt) @[Decoder.scala 47:17]
      when _T_2 : @[Decoder.scala 47:17]
        CommandParamReg <= io.Instruction @[Decoder.scala 48:33]
      else :
        node _T_3 = eq(UInt<1>("h1"), cnt) @[Decoder.scala 47:17]
        when _T_3 : @[Decoder.scala 47:17]
          SizeReg <= io.Instruction @[Decoder.scala 49:25]
    node _T_4 = bits(CommandParamReg, 31, 29) @[Decoder.scala 53:23]
    node _T_5 = eq(_T_4, UInt<2>("h3")) @[Decoder.scala 53:32]
    when _T_5 : @[Decoder.scala 53:46]
      CommandParamReg <= UInt<32>("h0") @[Decoder.scala 54:21]
      SizeReg <= UInt<32>("h0") @[Decoder.scala 55:13]
    node _io_SchePort_Mode_T = bits(CommandParamReg, 31, 29) @[Decoder.scala 59:38]
    io.SchePort.Mode <= _io_SchePort_Mode_T @[Decoder.scala 59:20]
    node _io_SchePort_Schedule_Tm_T = bits(CommandParamReg, 28, 25) @[Decoder.scala 60:45]
    io.SchePort.Schedule.Tm <= _io_SchePort_Schedule_Tm_T @[Decoder.scala 60:27]
    node _io_SchePort_Schedule_Tn_T = bits(CommandParamReg, 24, 21) @[Decoder.scala 61:45]
    io.SchePort.Schedule.Tn <= _io_SchePort_Schedule_Tn_T @[Decoder.scala 61:27]
    node _io_SchePort_Schedule_Ti_T = bits(CommandParamReg, 20, 17) @[Decoder.scala 62:45]
    io.SchePort.Schedule.Ti <= _io_SchePort_Schedule_Ti_T @[Decoder.scala 62:27]
    node _io_SchePort_Schedule_Tj_T = bits(CommandParamReg, 16, 13) @[Decoder.scala 63:45]
    io.SchePort.Schedule.Tj <= _io_SchePort_Schedule_Tj_T @[Decoder.scala 63:27]
    node _io_SchePort_Schedule_Tr_T = bits(CommandParamReg, 12, 9) @[Decoder.scala 64:45]
    io.SchePort.Schedule.Tr <= _io_SchePort_Schedule_Tr_T @[Decoder.scala 64:27]
    node _io_SchePort_Schedule_Tc_T = bits(CommandParamReg, 8, 5) @[Decoder.scala 65:45]
    io.SchePort.Schedule.Tc <= _io_SchePort_Schedule_Tc_T @[Decoder.scala 65:27]
    node _io_Pooling_T = bits(CommandParamReg, 4, 3) @[Decoder.scala 66:32]
    io.Pooling <= _io_Pooling_T @[Decoder.scala 66:14]
    node _io_SchePort_ScheduleSize_T = bits(SizeReg, 6, 0) @[Decoder.scala 67:38]
    io.SchePort.ScheduleSize <= _io_SchePort_ScheduleSize_T @[Decoder.scala 67:28]

