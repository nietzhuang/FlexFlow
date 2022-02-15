circuit Decoder :
  module Decoder :
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
    node _T = eq(io_Valid, UInt<1>("h1")) @[Decoder.scala 28:17]
    node _cnt_T = add(cnt, UInt<1>("h1")) @[Decoder.scala 29:16]
    node _cnt_T_1 = tail(_cnt_T, 1) @[Decoder.scala 29:16]
    node _GEN_0 = mux(_T, _cnt_T_1, UInt<1>("h0")) @[Decoder.scala 28:29 29:9 31:9]
    node _T_1 = eq(io_Valid, UInt<1>("h1")) @[Decoder.scala 43:17]
    node _T_2 = eq(UInt<1>("h0"), cnt) @[Decoder.scala 44:17]
    node _io_Mode_T = bits(io_Instruction, 31, 29) @[Decoder.scala 46:34]
    node _io_Schedule_Tm_T = bits(io_Instruction, 28, 25) @[Decoder.scala 47:41]
    node _io_Schedule_Tn_T = bits(io_Instruction, 24, 21) @[Decoder.scala 48:41]
    node _io_Schedule_Ti_T = bits(io_Instruction, 20, 17) @[Decoder.scala 49:41]
    node _io_Schedule_Tj_T = bits(io_Instruction, 16, 13) @[Decoder.scala 50:41]
    node _io_Schedule_Tr_T = bits(io_Instruction, 12, 9) @[Decoder.scala 51:41]
    node _io_Schedule_Tc_T = bits(io_Instruction, 8, 5) @[Decoder.scala 52:41]
    node _io_Pooling_T = bits(io_Instruction, 4, 3) @[Decoder.scala 53:37]
    node _T_3 = eq(UInt<1>("h1"), cnt) @[Decoder.scala 44:17]
    node _io_ScheduleSize_T = bits(io_Instruction, 6, 0) @[Decoder.scala 56:42]
    node _GEN_1 = mux(_T_3, _io_ScheduleSize_T, UInt<1>("h0")) @[Decoder.scala 44:17 42:19 56:25]
    node _GEN_2 = mux(_T_2, _io_Mode_T, UInt<1>("h0")) @[Decoder.scala 34:11 44:17 46:17]
    node _GEN_3 = mux(_T_2, _io_Schedule_Tm_T, UInt<1>("h0")) @[Decoder.scala 44:17 35:18 47:24]
    node _GEN_4 = mux(_T_2, _io_Schedule_Tn_T, UInt<1>("h0")) @[Decoder.scala 44:17 36:18 48:24]
    node _GEN_5 = mux(_T_2, _io_Schedule_Ti_T, UInt<1>("h0")) @[Decoder.scala 44:17 37:18 49:24]
    node _GEN_6 = mux(_T_2, _io_Schedule_Tj_T, UInt<1>("h0")) @[Decoder.scala 44:17 38:18 50:24]
    node _GEN_7 = mux(_T_2, _io_Schedule_Tr_T, UInt<1>("h0")) @[Decoder.scala 44:17 39:18 51:24]
    node _GEN_8 = mux(_T_2, _io_Schedule_Tc_T, UInt<1>("h0")) @[Decoder.scala 44:17 40:18 52:24]
    node _GEN_9 = mux(_T_2, _io_Pooling_T, UInt<1>("h0")) @[Decoder.scala 41:14 44:17 53:20]
    node _GEN_10 = mux(_T_2, UInt<1>("h0"), _GEN_1) @[Decoder.scala 44:17 42:19]
    node _GEN_11 = mux(_T_1, _GEN_2, UInt<1>("h0")) @[Decoder.scala 34:11 43:29]
    node _GEN_12 = mux(_T_1, _GEN_3, UInt<1>("h0")) @[Decoder.scala 35:18 43:29]
    node _GEN_13 = mux(_T_1, _GEN_4, UInt<1>("h0")) @[Decoder.scala 36:18 43:29]
    node _GEN_14 = mux(_T_1, _GEN_5, UInt<1>("h0")) @[Decoder.scala 37:18 43:29]
    node _GEN_15 = mux(_T_1, _GEN_6, UInt<1>("h0")) @[Decoder.scala 38:18 43:29]
    node _GEN_16 = mux(_T_1, _GEN_7, UInt<1>("h0")) @[Decoder.scala 39:18 43:29]
    node _GEN_17 = mux(_T_1, _GEN_8, UInt<1>("h0")) @[Decoder.scala 40:18 43:29]
    node _GEN_18 = mux(_T_1, _GEN_9, UInt<1>("h0")) @[Decoder.scala 41:14 43:29]
    node _GEN_19 = mux(_T_1, _GEN_10, UInt<1>("h0")) @[Decoder.scala 42:19 43:29]
    io_Mode <= _GEN_11
    io_Schedule_Tm <= _GEN_12
    io_Schedule_Tn <= _GEN_13
    io_Schedule_Ti <= _GEN_14
    io_Schedule_Tj <= _GEN_15
    io_Schedule_Tr <= _GEN_16
    io_Schedule_Tc <= _GEN_17
    io_ScheduleSize <= _GEN_19
    io_Pooling <= _GEN_18
    cnt <= mux(reset, UInt<1>("h0"), _GEN_0) @[Decoder.scala 26:{20,20}]
