circuit AluPool :
  module AluPool :
    input clock : Clock
    input reset : UInt<1>
    input io_ALUPort_Enable : UInt<1>
    input io_ALUPort_PEDataIn_0 : UInt<32>
    input io_ALUPort_PEDataIn_1 : UInt<32>
    input io_ALUPort_PEDataIn_2 : UInt<32>
    input io_ALUPort_PEDataIn_3 : UInt<32>
    input io_ALUPort_PEDataIn_4 : UInt<32>
    input io_ALUPort_PEDataIn_5 : UInt<32>
    input io_ALUPort_PEDataIn_6 : UInt<32>
    input io_ALUPort_PEDataIn_7 : UInt<32>
    input io_ALUPort_PEDataIn_8 : UInt<32>
    input io_ALUPort_PEDataIn_9 : UInt<32>
    input io_ALUPort_PEDataIn_10 : UInt<32>
    input io_ALUPort_PEDataIn_11 : UInt<32>
    input io_ALUPort_PEDataIn_12 : UInt<32>
    input io_ALUPort_PEDataIn_13 : UInt<32>
    input io_ALUPort_PEDataIn_14 : UInt<32>
    input io_ALUPort_PEDataIn_15 : UInt<32>
    output io_ALUPort_Neuron2Addr : UInt<10>
    output io_ALUPort_BankIdx : UInt<4>
    output io_ALUPort_DataOut : UInt<32>
    output io_ALUPort_PsumAddr : UInt<10>
    input io_ALUPort_PsumIn : UInt<32>

    reg cntMac : UInt<10>, clock with :
      reset => (UInt<1>("h0"), cntMac) @[AluPool.scala 41:23]
    node _T = eq(io_ALUPort_Enable, UInt<1>("h1")) @[AluPool.scala 44:26]
    node _cntMac_T = add(cntMac, UInt<1>("h1")) @[AluPool.scala 45:22]
    node _cntMac_T_1 = tail(_cntMac_T, 1) @[AluPool.scala 45:22]
    node _GEN_0 = mux(_T, _cntMac_T_1, UInt<1>("h0")) @[AluPool.scala 44:37 45:12 47:12]
    node _T_1 = eq(io_ALUPort_Enable, UInt<1>("h1")) @[AluPool.scala 51:26]
    node _T_2 = add(UInt<1>("h0"), io_ALUPort_PEDataIn_0) @[AluPool.scala 55:19]
    node _T_3 = tail(_T_2, 1) @[AluPool.scala 55:19]
    node _T_4 = add(_T_3, io_ALUPort_PEDataIn_1) @[AluPool.scala 55:19]
    node _T_5 = tail(_T_4, 1) @[AluPool.scala 55:19]
    node _T_6 = add(_T_5, io_ALUPort_PEDataIn_2) @[AluPool.scala 55:19]
    node _T_7 = tail(_T_6, 1) @[AluPool.scala 55:19]
    node _T_8 = add(_T_7, io_ALUPort_PEDataIn_3) @[AluPool.scala 55:19]
    node _T_9 = tail(_T_8, 1) @[AluPool.scala 55:19]
    node _T_10 = add(_T_9, io_ALUPort_PEDataIn_4) @[AluPool.scala 55:19]
    node _T_11 = tail(_T_10, 1) @[AluPool.scala 55:19]
    node _T_12 = add(_T_11, io_ALUPort_PEDataIn_5) @[AluPool.scala 55:19]
    node _T_13 = tail(_T_12, 1) @[AluPool.scala 55:19]
    node _T_14 = add(_T_13, io_ALUPort_PEDataIn_6) @[AluPool.scala 55:19]
    node _T_15 = tail(_T_14, 1) @[AluPool.scala 55:19]
    node _T_16 = add(_T_15, io_ALUPort_PEDataIn_7) @[AluPool.scala 55:19]
    node _T_17 = tail(_T_16, 1) @[AluPool.scala 55:19]
    node _T_18 = add(_T_17, io_ALUPort_PEDataIn_8) @[AluPool.scala 55:19]
    node _T_19 = tail(_T_18, 1) @[AluPool.scala 55:19]
    node _T_20 = add(_T_19, io_ALUPort_PEDataIn_9) @[AluPool.scala 55:19]
    node _T_21 = tail(_T_20, 1) @[AluPool.scala 55:19]
    node _T_22 = add(_T_21, io_ALUPort_PEDataIn_10) @[AluPool.scala 55:19]
    node _T_23 = tail(_T_22, 1) @[AluPool.scala 55:19]
    node _T_24 = add(_T_23, io_ALUPort_PEDataIn_11) @[AluPool.scala 55:19]
    node _T_25 = tail(_T_24, 1) @[AluPool.scala 55:19]
    node _T_26 = add(_T_25, io_ALUPort_PEDataIn_12) @[AluPool.scala 55:19]
    node _T_27 = tail(_T_26, 1) @[AluPool.scala 55:19]
    node _T_28 = add(_T_27, io_ALUPort_PEDataIn_13) @[AluPool.scala 55:19]
    node _T_29 = tail(_T_28, 1) @[AluPool.scala 55:19]
    node _T_30 = add(_T_29, io_ALUPort_PEDataIn_14) @[AluPool.scala 55:19]
    node _T_31 = tail(_T_30, 1) @[AluPool.scala 55:19]
    node _T_32 = add(_T_31, io_ALUPort_PEDataIn_15) @[AluPool.scala 55:19]
    node accumulator = tail(_T_32, 1) @[AluPool.scala 55:19]
    node _io_ALUPort_DataOut_T = add(accumulator, io_ALUPort_PsumIn) @[AluPool.scala 57:39]
    node _io_ALUPort_DataOut_T_1 = tail(_io_ALUPort_DataOut_T, 1) @[AluPool.scala 57:39]
    node _GEN_1 = mux(_T_1, cntMac, UInt<1>("h0")) @[AluPool.scala 51:38 52:28 59:28]
    node _GEN_2 = mux(_T_1, _io_ALUPort_DataOut_T_1, UInt<1>("h0")) @[AluPool.scala 51:38 57:24 61:24]
    io_ALUPort_Neuron2Addr <= _GEN_1
    io_ALUPort_BankIdx <= UInt<4>("h0") @[AluPool.scala 50:22]
    io_ALUPort_DataOut <= _GEN_2
    io_ALUPort_PsumAddr <= _GEN_1
    cntMac <= mux(reset, UInt<10>("h0"), _GEN_0) @[AluPool.scala 41:{23,23}]
