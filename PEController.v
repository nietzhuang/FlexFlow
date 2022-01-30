module PEController(
  input         clock,
  input         reset,
  input  [2:0]  io_Mode,
  input  [23:0] io_Schedule,
  output [9:0]  io_KernelAddr,
  output [3:0]  io_BankIndex,
  output        io_ReadWrite,
  output        io_BufferEnable,
  output [6:0]  io_IntraAddr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] stateReg; // @[PEController.scala 26:25]
  wire [3:0] Ti = io_Schedule[15:12]; // @[PEController.scala 31:23]
  wire [3:0] Tj = io_Schedule[11:8]; // @[PEController.scala 32:23]
  wire [3:0] Tr = io_Schedule[7:4]; // @[PEController.scala 33:23]
  wire [3:0] Tc = io_Schedule[3:0]; // @[PEController.scala 34:23]
  wire [7:0] _GroupRowIdx_T = Tr * Tc; // @[PEController.scala 36:36]
  wire [7:0] _GroupColIdx_T = Ti * Tj; // @[PEController.scala 37:36]
  wire [7:0] boundary = _GroupColIdx_T / _GroupRowIdx_T; // @[PEController.scala 40:28]
  reg  slotPtr; // @[PEController.scala 43:24]
  reg  cntAddr; // @[PEController.scala 44:24]
  reg  cntbank; // @[PEController.scala 45:24]
  wire  Load2 = io_Mode == 3'h2; // @[PEController.scala 49:24]
  wire  _T = 2'h1 == stateReg; // @[PEController.scala 52:21]
  wire [7:0] _GEN_25 = {{7'd0}, cntAddr}; // @[PEController.scala 85:20]
  wire  _GEN_2 = _GEN_25 < boundary & cntAddr; // @[PEController.scala 85:32 86:23 92:23]
  wire  _GEN_3 = _GEN_25 < boundary ? cntbank : cntbank + 1'h1; // @[PEController.scala 85:32 87:22 93:22]
  wire  _GEN_5 = _GEN_25 < boundary & cntAddr + 1'h1; // @[PEController.scala 85:32 90:17 96:17]
  wire [7:0] _GEN_26 = {{7'd0}, slotPtr}; // @[PEController.scala 101:20]
  wire  _GEN_10 = 2'h2 == stateReg & _GEN_2; // @[PEController.scala 70:17 75:20]
  wire  _GEN_11 = 2'h2 == stateReg & _GEN_3; // @[PEController.scala 71:16 75:20]
  wire  _GEN_17 = _T ? 1'h0 : _GEN_10; // @[PEController.scala 75:20 77:21]
  wire  _GEN_18 = _T ? 1'h0 : _GEN_11; // @[PEController.scala 75:20 78:20]
  wire  _GEN_20 = _T ? 1'h0 : 2'h2 == stateReg & slotPtr; // @[PEController.scala 74:16 75:20]
  assign io_KernelAddr = {{9'd0}, _GEN_17};
  assign io_BankIndex = {{3'd0}, _GEN_18};
  assign io_ReadWrite = _T ? 1'h0 : 2'h2 == stateReg; // @[PEController.scala 75:20 79:20]
  assign io_BufferEnable = _T ? 1'h0 : 2'h2 == stateReg; // @[PEController.scala 75:20 79:20]
  assign io_IntraAddr = {{6'd0}, _GEN_20};
  always @(posedge clock) begin
    if (reset) begin // @[PEController.scala 26:25]
      stateReg <= 2'h1; // @[PEController.scala 26:25]
    end else if (2'h1 == stateReg) begin // @[PEController.scala 52:21]
      if (Load2) begin // @[PEController.scala 54:30]
        stateReg <= 2'h2; // @[PEController.scala 55:18]
      end else begin
        stateReg <= 2'h1; // @[PEController.scala 57:18]
      end
    end
    if (reset) begin // @[PEController.scala 43:24]
      slotPtr <= 1'h0; // @[PEController.scala 43:24]
    end else if (!(_T)) begin // @[PEController.scala 75:20]
      if (2'h2 == stateReg) begin // @[PEController.scala 75:20]
        if (_GEN_26 == _GroupColIdx_T) begin // @[PEController.scala 101:33]
          slotPtr <= 1'h0; // @[PEController.scala 104:17]
        end else begin
          slotPtr <= slotPtr + 1'h1; // @[PEController.scala 100:15]
        end
      end
    end
    if (reset) begin // @[PEController.scala 44:24]
      cntAddr <= 1'h0; // @[PEController.scala 44:24]
    end else if (!(_T)) begin // @[PEController.scala 75:20]
      if (2'h2 == stateReg) begin // @[PEController.scala 75:20]
        cntAddr <= _GEN_5;
      end
    end
    if (reset) begin // @[PEController.scala 45:24]
      cntbank <= 1'h0; // @[PEController.scala 45:24]
    end else if (!(_T)) begin // @[PEController.scala 75:20]
      if (2'h2 == stateReg) begin // @[PEController.scala 75:20]
        if (!(_GEN_25 < boundary)) begin // @[PEController.scala 85:32]
          cntbank <= cntbank + 1'h1; // @[PEController.scala 93:22]
        end
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
  slotPtr = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  cntAddr = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cntbank = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
