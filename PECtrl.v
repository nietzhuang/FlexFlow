module PECtrl(
  input         clock,
  input         reset,
  input  [2:0]  io_Mode,
  input  [23:0] io_Schedule,
  input  [6:0]  io_ScheduleSize,
  output [9:0]  io_KernelAddr,
  output [3:0]  io_KernelBankIdx,
  output        io_KernelBufRW,
  output        io_KernelBufEn,
  output [9:0]  io_NeuronAddr,
  output [3:0]  io_NeuronBankIdx,
  output        io_NeuronBufRW,
  output        io_NeuronBufEn,
  output [6:0]  io_KernelIntraAddr,
  output        io_KernelIntraRW,
  output [6:0]  io_NeuronIntraAddr,
  output        io_NeuronIntraRW,
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
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] stateReg; // @[PECtrl.scala 41:25]
  wire [3:0] Tm = io_Schedule[23:20]; // @[PECtrl.scala 45:23]
  wire [3:0] Ti = io_Schedule[15:12]; // @[PECtrl.scala 47:23]
  wire [3:0] Tj = io_Schedule[11:8]; // @[PECtrl.scala 48:23]
  wire [3:0] Tr = io_Schedule[7:4]; // @[PECtrl.scala 49:23]
  wire [3:0] Tc = io_Schedule[3:0]; // @[PECtrl.scala 50:23]
  wire [7:0] _GroupRowIdx_T = Tr * Tc; // @[PECtrl.scala 52:36]
  wire [7:0] _GroupColIdx_T = Ti * Tj; // @[PECtrl.scala 53:36]
  wire [7:0] KernelBoundary = _GroupColIdx_T / _GroupRowIdx_T; // @[PECtrl.scala 56:34]
  wire [6:0] NeuronBoundary = io_ScheduleSize / _GroupRowIdx_T; // @[PECtrl.scala 57:35]
  wire [4:0] _tm_T = 5'h10 / Tm; // @[PECtrl.scala 59:34]
  wire  tm = 1'h0 / _tm_T; // @[PECtrl.scala 59:21]
  wire [4:0] _tc_T = tm * Tc; // @[PECtrl.scala 63:27]
  wire [8:0] _tc_T_1 = _tc_T * Tr; // @[PECtrl.scala 63:32]
  wire [8:0] _tc_T_2 = _tc_T_1 / Tc; // @[PECtrl.scala 63:38]
  wire [8:0] tc = 9'h0 - _tc_T_2; // @[PECtrl.scala 63:21]
  reg  cntMac; // @[PECtrl.scala 66:23]
  reg [6:0] KernelSlotPtr; // @[PECtrl.scala 67:30]
  reg  cntKBufAddr; // @[PECtrl.scala 68:28]
  reg  cntKBufBank; // @[PECtrl.scala 69:28]
  reg  NeuronSlotPtr; // @[PECtrl.scala 70:30]
  reg  cntNBufAddr; // @[PECtrl.scala 71:28]
  wire  Load2 = io_Mode == 3'h2; // @[PECtrl.scala 75:24]
  reg  KernelReadDone; // @[PECtrl.scala 76:31]
  reg  NeuronReadDone; // @[PECtrl.scala 77:31]
  wire  Load2Done = KernelReadDone | NeuronReadDone; // @[PECtrl.scala 78:35]
  reg  macDone; // @[PECtrl.scala 79:24]
  wire  _T = 2'h1 == stateReg; // @[PECtrl.scala 81:21]
  wire  _T_2 = 2'h2 == stateReg; // @[PECtrl.scala 81:21]
  wire  _T_4 = 2'h3 == stateReg; // @[PECtrl.scala 81:21]
  wire [1:0] _GEN_2 = macDone ? 2'h1 : 2'h3; // @[PECtrl.scala 100:18 97:32 98:18]
  wire [7:0] _GEN_81 = {{7'd0}, cntKBufAddr}; // @[PECtrl.scala 146:26]
  wire  _GEN_6 = _GEN_81 < KernelBoundary & cntKBufAddr; // @[PECtrl.scala 146:44 147:25 153:25]
  wire  _GEN_7 = _GEN_81 < KernelBoundary ? cntKBufBank : cntKBufBank + 1'h1; // @[PECtrl.scala 146:44 148:28 154:28]
  wire  _GEN_9 = _GEN_81 < KernelBoundary & cntKBufAddr + 1'h1; // @[PECtrl.scala 146:44 151:23 157:23]
  wire [6:0] _KernelSlotPtr_T_1 = KernelSlotPtr + 7'h1; // @[PECtrl.scala 160:40]
  wire [7:0] _GEN_82 = {{1'd0}, KernelSlotPtr}; // @[PECtrl.scala 163:28]
  wire  _GEN_11 = _GEN_82 == _GroupColIdx_T | KernelReadDone; // @[PECtrl.scala 163:41 165:26 76:31]
  wire [6:0] _GEN_12 = _GEN_82 == _GroupColIdx_T ? 7'h0 : _KernelSlotPtr_T_1; // @[PECtrl.scala 160:23 163:41 166:25]
  wire  _GEN_13 = ~KernelReadDone & _GEN_6; // @[PECtrl.scala 105:17 145:40]
  wire  _GEN_14 = ~KernelReadDone & _GEN_7; // @[PECtrl.scala 106:20 145:40]
  wire [6:0] _GEN_15 = ~KernelReadDone ? KernelSlotPtr : 7'h0; // @[PECtrl.scala 109:22 145:40]
  wire [6:0] _GEN_83 = {{6'd0}, cntNBufAddr}; // @[PECtrl.scala 172:26]
  wire  _GEN_20 = _GEN_83 < NeuronBoundary & cntNBufAddr; // @[PECtrl.scala 111:17 172:44 173:25]
  wire  _GEN_22 = _GEN_83 < NeuronBoundary & NeuronSlotPtr; // @[PECtrl.scala 115:22 172:44 175:30]
  wire  _GEN_23 = _GEN_83 < NeuronBoundary ? cntNBufAddr + 1'h1 : cntNBufAddr; // @[PECtrl.scala 172:44 177:23 71:28]
  wire [6:0] _GEN_84 = {{6'd0}, NeuronSlotPtr}; // @[PECtrl.scala 183:28]
  wire  _GEN_24 = _GEN_84 == NeuronBoundary | NeuronReadDone; // @[PECtrl.scala 183:48 184:26 77:31]
  wire  _GEN_25 = _GEN_84 == NeuronBoundary ? 1'h0 : cntNBufAddr; // @[PECtrl.scala 182:23 183:48 185:25]
  wire  _GEN_26 = ~NeuronReadDone & _GEN_20; // @[PECtrl.scala 111:17 171:40]
  wire  _GEN_28 = ~NeuronReadDone & _GEN_22; // @[PECtrl.scala 115:22 171:40]
  wire [3:0] _T_19 = Tj - 4'h1; // @[PECtrl.scala 193:49]
  wire [12:0] _T_20 = tc * _T_19; // @[PECtrl.scala 193:43]
  wire [12:0] _GEN_85 = {{6'd0}, _GEN_82[6:0]}; // @[PECtrl.scala 193:38]
  wire [12:0] _T_22 = _GEN_85 + _T_20; // @[PECtrl.scala 193:38]
  wire [12:0] _GEN_86 = {{9'd0}, Tj}; // @[PECtrl.scala 193:57]
  wire [12:0] _io_KernelIntraAddr_T_15 = _T_22 - _GEN_86; // @[PECtrl.scala 197:74]
  wire [12:0] _GEN_32 = _T_22 < _GEN_86 ? _T_22 : _io_KernelIntraAddr_T_15; // @[PECtrl.scala 193:63 194:28 197:28]
  wire [6:0] _GEN_90 = {{3'd0}, Tr}; // @[PECtrl.scala 200:43]
  wire [6:0] _KernelSlotPtr_T_3 = io_KernelIntraAddr + _GEN_90; // @[PECtrl.scala 200:43]
  wire [7:0] _GEN_91 = {{7'd0}, cntMac}; // @[PECtrl.scala 203:19]
  wire  _GEN_33 = _GEN_91 == _GroupColIdx_T | macDone; // @[PECtrl.scala 203:32 204:17 79:24]
  wire  _GEN_34 = _GEN_91 == _GroupColIdx_T ? 1'h0 : cntMac + 1'h1; // @[PECtrl.scala 201:14 203:32 205:16]
  wire [12:0] _GEN_37 = _T_4 ? _GEN_32 : 13'h0; // @[PECtrl.scala 118:20 109:22]
  wire  _GEN_44 = _T_2 & _GEN_13; // @[PECtrl.scala 105:17 118:20]
  wire  _GEN_45 = _T_2 & _GEN_14; // @[PECtrl.scala 106:20 118:20]
  wire [12:0] _GEN_46 = _T_2 ? {{6'd0}, _GEN_15} : _GEN_37; // @[PECtrl.scala 118:20]
  wire  _GEN_51 = _T_2 & _GEN_26; // @[PECtrl.scala 111:17 118:20]
  wire  _GEN_53 = _T_2 & _GEN_28; // @[PECtrl.scala 118:20 115:22]
  wire  _GEN_57 = _T_2 ? 1'h0 : _T_4; // @[PECtrl.scala 117:16 118:20]
  wire  _GEN_60 = _T ? 1'h0 : _GEN_44; // @[PECtrl.scala 118:20 120:21]
  wire  _GEN_61 = _T ? 1'h0 : _GEN_45; // @[PECtrl.scala 118:20 121:24]
  wire [12:0] _GEN_64 = _T ? 13'h0 : _GEN_46; // @[PECtrl.scala 118:20 124:26]
  wire  _GEN_65 = _T ? 1'h0 : _GEN_51; // @[PECtrl.scala 118:20 126:21]
  wire  _GEN_68 = _T ? 1'h0 : _GEN_53; // @[PECtrl.scala 118:20 130:26]
  assign io_KernelAddr = {{9'd0}, _GEN_60};
  assign io_KernelBankIdx = {{3'd0}, _GEN_61};
  assign io_KernelBufRW = 1'h0; // @[PECtrl.scala 118:20 122:22]
  assign io_KernelBufEn = _T ? 1'h0 : _T_2; // @[PECtrl.scala 118:20 123:22]
  assign io_NeuronAddr = {{9'd0}, _GEN_65};
  assign io_NeuronBankIdx = 4'h0;
  assign io_NeuronBufRW = 1'h0; // @[PECtrl.scala 118:20 122:22]
  assign io_NeuronBufEn = _T ? 1'h0 : _T_2; // @[PECtrl.scala 118:20 129:22]
  assign io_KernelIntraAddr = _GEN_64[6:0];
  assign io_KernelIntraRW = _T ? 1'h0 : _T_2; // @[PECtrl.scala 118:20 123:22]
  assign io_NeuronIntraAddr = {{6'd0}, _GEN_68};
  assign io_NeuronIntraRW = _T ? 1'h0 : _T_2; // @[PECtrl.scala 118:20 129:22]
  assign io_MacEnable = _T ? 1'h0 : _GEN_57; // @[PECtrl.scala 117:16 118:20]
  always @(posedge clock) begin
    if (reset) begin // @[PECtrl.scala 41:25]
      stateReg <= 2'h1; // @[PECtrl.scala 41:25]
    end else if (2'h1 == stateReg) begin // @[PECtrl.scala 81:21]
      if (Load2) begin // @[PECtrl.scala 83:30]
        stateReg <= 2'h2; // @[PECtrl.scala 84:18]
      end else begin
        stateReg <= 2'h1; // @[PECtrl.scala 86:18]
      end
    end else if (2'h2 == stateReg) begin // @[PECtrl.scala 81:21]
      if (Load2Done) begin // @[PECtrl.scala 90:34]
        stateReg <= 2'h3; // @[PECtrl.scala 91:18]
      end else begin
        stateReg <= 2'h1; // @[PECtrl.scala 93:18]
      end
    end else if (2'h3 == stateReg) begin // @[PECtrl.scala 81:21]
      stateReg <= _GEN_2;
    end
    if (reset) begin // @[PECtrl.scala 66:23]
      cntMac <= 1'h0; // @[PECtrl.scala 66:23]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (!(_T_2)) begin // @[PECtrl.scala 118:20]
        if (_T_4) begin // @[PECtrl.scala 118:20]
          cntMac <= _GEN_34;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 67:30]
      KernelSlotPtr <= 7'h0; // @[PECtrl.scala 67:30]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (_T_2) begin // @[PECtrl.scala 118:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 145:40]
          KernelSlotPtr <= _GEN_12;
        end
      end else if (_T_4) begin // @[PECtrl.scala 118:20]
        KernelSlotPtr <= _KernelSlotPtr_T_3; // @[PECtrl.scala 200:21]
      end
    end
    if (reset) begin // @[PECtrl.scala 68:28]
      cntKBufAddr <= 1'h0; // @[PECtrl.scala 68:28]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (_T_2) begin // @[PECtrl.scala 118:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 145:40]
          cntKBufAddr <= _GEN_9;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 69:28]
      cntKBufBank <= 1'h0; // @[PECtrl.scala 69:28]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (_T_2) begin // @[PECtrl.scala 118:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 145:40]
          cntKBufBank <= _GEN_7;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 70:30]
      NeuronSlotPtr <= 1'h0; // @[PECtrl.scala 70:30]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (_T_2) begin // @[PECtrl.scala 118:20]
        if (~NeuronReadDone) begin // @[PECtrl.scala 171:40]
          NeuronSlotPtr <= _GEN_25;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 71:28]
      cntNBufAddr <= 1'h0; // @[PECtrl.scala 71:28]
    end else if (!(_T)) begin // @[PECtrl.scala 118:20]
      if (_T_2) begin // @[PECtrl.scala 118:20]
        if (~NeuronReadDone) begin // @[PECtrl.scala 171:40]
          cntNBufAddr <= _GEN_23;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 76:31]
      KernelReadDone <= 1'h0; // @[PECtrl.scala 76:31]
    end else if (_T) begin // @[PECtrl.scala 118:20]
      KernelReadDone <= 1'h0; // @[PECtrl.scala 132:22]
    end else if (_T_2) begin // @[PECtrl.scala 118:20]
      if (~KernelReadDone) begin // @[PECtrl.scala 145:40]
        KernelReadDone <= _GEN_11;
      end
    end
    if (reset) begin // @[PECtrl.scala 77:31]
      NeuronReadDone <= 1'h0; // @[PECtrl.scala 77:31]
    end else if (_T) begin // @[PECtrl.scala 118:20]
      NeuronReadDone <= 1'h0; // @[PECtrl.scala 133:22]
    end else if (_T_2) begin // @[PECtrl.scala 118:20]
      if (~NeuronReadDone) begin // @[PECtrl.scala 171:40]
        NeuronReadDone <= _GEN_24;
      end
    end
    if (reset) begin // @[PECtrl.scala 79:24]
      macDone <= 1'h0; // @[PECtrl.scala 79:24]
    end else if (_T) begin // @[PECtrl.scala 118:20]
      macDone <= 1'h0; // @[PECtrl.scala 134:15]
    end else if (!(_T_2)) begin // @[PECtrl.scala 118:20]
      if (_T_4) begin // @[PECtrl.scala 118:20]
        macDone <= _GEN_33;
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
  KernelSlotPtr = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  cntKBufAddr = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cntKBufBank = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  NeuronSlotPtr = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  cntNBufAddr = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  KernelReadDone = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  NeuronReadDone = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  macDone = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
