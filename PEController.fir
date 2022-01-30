circuit PEController :
  module PEController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Mode : UInt<3>, flip Schedule : UInt<24>, KernelAddr : UInt<10>, BankIndex : UInt<4>, ReadWrite : UInt<1>, BufferEnable : UInt<1>, IntraAddr : UInt<7>}

    reg stateReg : UInt<2>, clock with :
      reset => (reset, UInt<2>("h1")) @[PEController.scala 26:25]
    node Tm = bits(io.Schedule, 23, 20) @[PEController.scala 29:23]
    node Tn = bits(io.Schedule, 19, 16) @[PEController.scala 30:23]
    node Ti = bits(io.Schedule, 15, 12) @[PEController.scala 31:23]
    node Tj = bits(io.Schedule, 11, 8) @[PEController.scala 32:23]
    node Tr = bits(io.Schedule, 7, 4) @[PEController.scala 33:23]
    node Tc = bits(io.Schedule, 3, 0) @[PEController.scala 34:23]
    node _GroupRowIdx_T = mul(Tr, Tc) @[PEController.scala 36:36]
    node GroupRowIdx = div(UInt<5>("h10"), _GroupRowIdx_T) @[PEController.scala 36:30]
    node _GroupColIdx_T = mul(Ti, Tj) @[PEController.scala 37:36]
    node GroupColIdx = div(UInt<5>("h10"), _GroupColIdx_T) @[PEController.scala 37:30]
    node _Group_T = cat(GroupRowIdx, GroupColIdx) @[Cat.scala 30:58]
    reg Group : UInt, clock with :
      reset => (reset, _Group_T) @[PEController.scala 38:22]
    node _boundary_T = mul(Ti, Tj) @[PEController.scala 40:22]
    node _boundary_T_1 = mul(Tr, Tc) @[PEController.scala 40:34]
    node boundary = div(_boundary_T, _boundary_T_1) @[PEController.scala 40:28]
    reg cntKernel : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[PEController.scala 42:26]
    reg slotPtr : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[PEController.scala 43:24]
    reg cntAddr : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[PEController.scala 44:24]
    reg cntbank : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[PEController.scala 45:24]
    node Load2 = eq(io.Mode, UInt<2>("h2")) @[PEController.scala 49:24]
    reg readDone : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[PEController.scala 50:25]
    node _T = eq(UInt<2>("h1"), stateReg) @[PEController.scala 52:21]
    when _T : @[PEController.scala 52:21]
      node _T_1 = eq(Load2, UInt<1>("h1")) @[PEController.scala 54:18]
      when _T_1 : @[PEController.scala 54:30]
        stateReg <= UInt<2>("h2") @[PEController.scala 55:18]
      else :
        stateReg <= UInt<2>("h1") @[PEController.scala 57:18]
    io.KernelAddr <= UInt<1>("h0") @[PEController.scala 70:17]
    io.BankIndex <= UInt<1>("h0") @[PEController.scala 71:16]
    io.ReadWrite <= UInt<1>("h0") @[PEController.scala 72:16]
    io.BufferEnable <= UInt<1>("h0") @[PEController.scala 73:19]
    io.IntraAddr <= UInt<1>("h0") @[PEController.scala 74:16]
    node _T_2 = eq(UInt<2>("h1"), stateReg) @[PEController.scala 75:20]
    when _T_2 : @[PEController.scala 75:20]
      io.KernelAddr <= UInt<1>("h0") @[PEController.scala 77:21]
      io.BankIndex <= UInt<1>("h0") @[PEController.scala 78:20]
      io.ReadWrite <= UInt<1>("h0") @[PEController.scala 79:20]
      io.BufferEnable <= UInt<1>("h0") @[PEController.scala 80:23]
    else :
      node _T_3 = eq(UInt<2>("h2"), stateReg) @[PEController.scala 75:20]
      when _T_3 : @[PEController.scala 75:20]
        io.ReadWrite <= UInt<1>("h1") @[PEController.scala 83:20]
        io.BufferEnable <= UInt<1>("h1") @[PEController.scala 84:23]
        node _T_4 = lt(cntAddr, boundary) @[PEController.scala 85:20]
        when _T_4 : @[PEController.scala 85:32]
          io.KernelAddr <= cntAddr @[PEController.scala 86:23]
          io.BankIndex <= cntbank @[PEController.scala 87:22]
          io.IntraAddr <= slotPtr @[PEController.scala 88:22]
          node _cntAddr_T = add(cntAddr, UInt<1>("h1")) @[PEController.scala 90:28]
          node _cntAddr_T_1 = tail(_cntAddr_T, 1) @[PEController.scala 90:28]
          cntAddr <= _cntAddr_T_1 @[PEController.scala 90:17]
        else :
          io.KernelAddr <= UInt<1>("h0") @[PEController.scala 92:23]
          node _io_BankIndex_T = add(cntbank, UInt<1>("h1")) @[PEController.scala 93:33]
          node _io_BankIndex_T_1 = tail(_io_BankIndex_T, 1) @[PEController.scala 93:33]
          io.BankIndex <= _io_BankIndex_T_1 @[PEController.scala 93:22]
          io.IntraAddr <= slotPtr @[PEController.scala 94:22]
          cntAddr <= UInt<1>("h0") @[PEController.scala 96:17]
          node _cntbank_T = add(cntbank, UInt<1>("h1")) @[PEController.scala 97:28]
          node _cntbank_T_1 = tail(_cntbank_T, 1) @[PEController.scala 97:28]
          cntbank <= _cntbank_T_1 @[PEController.scala 97:17]
        node _slotPtr_T = add(slotPtr, UInt<1>("h1")) @[PEController.scala 100:26]
        node _slotPtr_T_1 = tail(_slotPtr_T, 1) @[PEController.scala 100:26]
        slotPtr <= _slotPtr_T_1 @[PEController.scala 100:15]
        node _T_5 = mul(Ti, Tj) @[PEController.scala 101:27]
        node _T_6 = eq(slotPtr, _T_5) @[PEController.scala 101:20]
        when _T_6 : @[PEController.scala 101:33]
          readDone <= UInt<1>("h1") @[PEController.scala 103:18]
          slotPtr <= UInt<1>("h0") @[PEController.scala 104:17]

