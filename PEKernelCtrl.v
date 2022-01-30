module PEKernelCtrl(
  input         clock,
  input         reset,
  input  [2:0]  io_Mode,
  input  [23:0] io_Schedule,
  output [9:0]  io_KernelAddr,
  output [3:0]  io_KernelBankIdx,
  output        io_KernelBufRW,
  output        io_KernelBufEn,
  output [6:0]  io_KernelIntraAddr,
  output        io_KernelIntraRW,
  output        io_MacEnable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] stateReg; // @[PEKernelCtrl.scala 35:25]
  wire [3:0] Tm = io_Schedule[23:20]; // @[PEKernelCtrl.scala 38:23]
  wire [3:0] Ti = io_Schedule[15:12]; // @[PEKernelCtrl.scala 40:23]
  wire [3:0] Tj = io_Schedule[11:8]; // @[PEKernelCtrl.scala 41:23]
  wire [3:0] Tr = io_Schedule[7:4]; // @[PEKernelCtrl.scala 42:23]
  wire [3:0] Tc = io_Schedule[3:0]; // @[PEKernelCtrl.scala 43:23]
  wire [7:0] _GroupRowIdx_T = Tr * Tc; // @[PEKernelCtrl.scala 45:36]
  wire [7:0] _GroupColIdx_T = Ti * Tj; // @[PEKernelCtrl.scala 46:36]
  wire [7:0] boundary = _GroupColIdx_T / _GroupRowIdx_T; // @[PEKernelCtrl.scala 49:28]
  wire [4:0] _tm_T = 5'h10 / Tm; // @[PEKernelCtrl.scala 51:34]
  wire  tm = 1'h0 / _tm_T; // @[PEKernelCtrl.scala 51:21]
  wire [4:0] _tc_T = tm * Tc; // @[PEKernelCtrl.scala 55:27]
  wire [8:0] _tc_T_1 = _tc_T * Tr; // @[PEKernelCtrl.scala 55:32]
  wire [8:0] _tc_T_2 = _tc_T_1 / Tc; // @[PEKernelCtrl.scala 55:38]
  wire [8:0] tc = 9'h0 - _tc_T_2; // @[PEKernelCtrl.scala 55:21]
  reg  cntMac; // @[PEKernelCtrl.scala 58:23]
  reg [6:0] slotPtr; // @[PEKernelCtrl.scala 59:24]
  reg  cntAddr; // @[PEKernelCtrl.scala 60:24]
  reg  cntbank; // @[PEKernelCtrl.scala 61:24]
  wire  Load2 = io_Mode == 3'h2; // @[PEKernelCtrl.scala 64:24]
  reg  readDone; // @[PEKernelCtrl.scala 65:25]
  reg  macDone; // @[PEKernelCtrl.scala 66:24]
  wire  _T = 2'h1 == stateReg; // @[PEKernelCtrl.scala 68:21]
  wire  _T_2 = 2'h2 == stateReg; // @[PEKernelCtrl.scala 68:21]
  wire  _T_4 = 2'h3 == stateReg; // @[PEKernelCtrl.scala 68:21]
  wire [1:0] _GEN_2 = macDone ? 2'h1 : 2'h3; // @[PEKernelCtrl.scala 84:32 85:18 87:18]
  wire [7:0] _GEN_50 = {{7'd0}, cntAddr}; // @[PEKernelCtrl.scala 114:20]
  wire  _GEN_6 = _GEN_50 < boundary & cntAddr; // @[PEKernelCtrl.scala 114:32 115:23 121:23]
  wire  _GEN_7 = _GEN_50 < boundary ? cntbank : cntbank + 1'h1; // @[PEKernelCtrl.scala 114:32 116:26 122:26]
  wire  _GEN_9 = _GEN_50 < boundary & cntAddr + 1'h1; // @[PEKernelCtrl.scala 114:32 119:17 125:17]
  wire [6:0] _slotPtr_T_1 = slotPtr + 7'h1; // @[PEKernelCtrl.scala 129:26]
  wire [7:0] _GEN_51 = {{1'd0}, slotPtr}; // @[PEKernelCtrl.scala 132:20]
  wire  _GEN_11 = _GEN_51 == _GroupColIdx_T | readDone; // @[PEKernelCtrl.scala 132:33 134:18 65:25]
  wire [3:0] _T_15 = Tj - 4'h1; // @[PEKernelCtrl.scala 141:43]
  wire [12:0] _T_16 = tc * _T_15; // @[PEKernelCtrl.scala 141:37]
  wire [12:0] _GEN_52 = {{6'd0}, _GEN_51[6:0]}; // @[PEKernelCtrl.scala 141:32]
  wire [12:0] _T_18 = _GEN_52 + _T_16; // @[PEKernelCtrl.scala 141:32]
  wire [12:0] _GEN_53 = {{9'd0}, Tj}; // @[PEKernelCtrl.scala 141:51]
  wire [12:0] _io_KernelIntraAddr_T_15 = _T_18 - _GEN_53; // @[PEKernelCtrl.scala 145:68]
  wire [12:0] _GEN_13 = _T_18 < _GEN_53 ? _T_18 : _io_KernelIntraAddr_T_15; // @[PEKernelCtrl.scala 141:57 142:28 145:28]
  wire [6:0] _GEN_57 = {{3'd0}, Tr}; // @[PEKernelCtrl.scala 148:37]
  wire [6:0] _slotPtr_T_3 = io_KernelIntraAddr + _GEN_57; // @[PEKernelCtrl.scala 148:37]
  wire [7:0] _GEN_58 = {{7'd0}, cntMac}; // @[PEKernelCtrl.scala 151:19]
  wire  _GEN_14 = _GEN_58 == _GroupColIdx_T | macDone; // @[PEKernelCtrl.scala 151:32 152:17 66:24]
  wire  _GEN_15 = _GEN_58 == _GroupColIdx_T ? 1'h0 : cntMac + 1'h1; // @[PEKernelCtrl.scala 149:14 151:32 153:16]
  wire [12:0] _GEN_18 = _T_4 ? _GEN_13 : 13'h0; // @[PEKernelCtrl.scala 99:20 96:22]
  wire  _GEN_25 = _T_2 & _GEN_6; // @[PEKernelCtrl.scala 92:17 99:20]
  wire  _GEN_26 = _T_2 & _GEN_7; // @[PEKernelCtrl.scala 93:20 99:20]
  wire [12:0] _GEN_27 = _T_2 ? {{6'd0}, slotPtr} : _GEN_18; // @[PEKernelCtrl.scala 99:20]
  wire  _GEN_32 = _T_2 ? 1'h0 : _T_4; // @[PEKernelCtrl.scala 98:16 99:20]
  wire  _GEN_35 = _T ? 1'h0 : _GEN_25; // @[PEKernelCtrl.scala 99:20 101:21]
  wire  _GEN_36 = _T ? 1'h0 : _GEN_26; // @[PEKernelCtrl.scala 99:20 102:24]
  wire [12:0] _GEN_39 = _T ? 13'h0 : _GEN_27; // @[PEKernelCtrl.scala 99:20 105:26]
  assign io_KernelAddr = {{9'd0}, _GEN_35};
  assign io_KernelBankIdx = {{3'd0}, _GEN_36};
  assign io_KernelBufRW = 1'h0; // @[PEKernelCtrl.scala 99:20 103:22]
  assign io_KernelBufEn = _T ? 1'h0 : _T_2; // @[PEKernelCtrl.scala 99:20 104:22]
  assign io_KernelIntraAddr = _GEN_39[6:0];
  assign io_KernelIntraRW = _T ? 1'h0 : _T_2; // @[PEKernelCtrl.scala 99:20 106:24]
  assign io_MacEnable = _T ? 1'h0 : _GEN_32; // @[PEKernelCtrl.scala 98:16 99:20]
  always @(posedge clock) begin
    if (reset) begin // @[PEKernelCtrl.scala 35:25]
      stateReg <= 2'h1; // @[PEKernelCtrl.scala 35:25]
    end else if (2'h1 == stateReg) begin // @[PEKernelCtrl.scala 68:21]
      if (Load2) begin // @[PEKernelCtrl.scala 70:30]
        stateReg <= 2'h2; // @[PEKernelCtrl.scala 71:18]
      end else begin
        stateReg <= 2'h1; // @[PEKernelCtrl.scala 73:18]
      end
    end else if (2'h2 == stateReg) begin // @[PEKernelCtrl.scala 68:21]
      if (readDone) begin // @[PEKernelCtrl.scala 77:33]
        stateReg <= 2'h3; // @[PEKernelCtrl.scala 78:18]
      end else begin
        stateReg <= 2'h1; // @[PEKernelCtrl.scala 80:18]
      end
    end else if (2'h3 == stateReg) begin // @[PEKernelCtrl.scala 68:21]
      stateReg <= _GEN_2;
    end
    if (reset) begin // @[PEKernelCtrl.scala 58:23]
      cntMac <= 1'h0; // @[PEKernelCtrl.scala 58:23]
    end else if (!(_T)) begin // @[PEKernelCtrl.scala 99:20]
      if (!(_T_2)) begin // @[PEKernelCtrl.scala 99:20]
        if (_T_4) begin // @[PEKernelCtrl.scala 99:20]
          cntMac <= _GEN_15;
        end
      end
    end
    if (reset) begin // @[PEKernelCtrl.scala 59:24]
      slotPtr <= 7'h0; // @[PEKernelCtrl.scala 59:24]
    end else if (!(_T)) begin // @[PEKernelCtrl.scala 99:20]
      if (_T_2) begin // @[PEKernelCtrl.scala 99:20]
        if (_GEN_51 == _GroupColIdx_T) begin // @[PEKernelCtrl.scala 132:33]
          slotPtr <= 7'h0; // @[PEKernelCtrl.scala 135:17]
        end else begin
          slotPtr <= _slotPtr_T_1; // @[PEKernelCtrl.scala 129:15]
        end
      end else if (_T_4) begin // @[PEKernelCtrl.scala 99:20]
        slotPtr <= _slotPtr_T_3; // @[PEKernelCtrl.scala 148:15]
      end
    end
    if (reset) begin // @[PEKernelCtrl.scala 60:24]
      cntAddr <= 1'h0; // @[PEKernelCtrl.scala 60:24]
    end else if (!(_T)) begin // @[PEKernelCtrl.scala 99:20]
      if (_T_2) begin // @[PEKernelCtrl.scala 99:20]
        cntAddr <= _GEN_9;
      end
    end
    if (reset) begin // @[PEKernelCtrl.scala 61:24]
      cntbank <= 1'h0; // @[PEKernelCtrl.scala 61:24]
    end else if (!(_T)) begin // @[PEKernelCtrl.scala 99:20]
      if (_T_2) begin // @[PEKernelCtrl.scala 99:20]
        if (!(_GEN_50 < boundary)) begin // @[PEKernelCtrl.scala 114:32]
          cntbank <= cntbank + 1'h1; // @[PEKernelCtrl.scala 122:26]
        end
      end
    end
    if (reset) begin // @[PEKernelCtrl.scala 65:25]
      readDone <= 1'h0; // @[PEKernelCtrl.scala 65:25]
    end else if (_T) begin // @[PEKernelCtrl.scala 99:20]
      readDone <= 1'h0; // @[PEKernelCtrl.scala 107:16]
    end else if (_T_2) begin // @[PEKernelCtrl.scala 99:20]
      readDone <= _GEN_11;
    end
    if (reset) begin // @[PEKernelCtrl.scala 66:24]
      macDone <= 1'h0; // @[PEKernelCtrl.scala 66:24]
    end else if (_T) begin // @[PEKernelCtrl.scala 99:20]
      macDone <= 1'h0; // @[PEKernelCtrl.scala 108:15]
    end else if (!(_T_2)) begin // @[PEKernelCtrl.scala 99:20]
      if (_T_4) begin // @[PEKernelCtrl.scala 99:20]
        macDone <= _GEN_14;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  cntMac = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  slotPtr = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  cntAddr = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cntbank = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  readDone = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  macDone = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
