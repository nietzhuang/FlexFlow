module Decode(
  input         clock,
  input         reset,
  input         io_Valid,
  input  [31:0] io_Instruction,
  output [2:0]  io_Mode,
  output [3:0]  io_Schedule_Tm,
  output [3:0]  io_Schedule_Tn,
  output [3:0]  io_Schedule_Ti,
  output [3:0]  io_Schedule_Tj,
  output [3:0]  io_Schedule_Tr,
  output [3:0]  io_Schedule_Tc,
  output [6:0]  io_ScheduleSize,
  output [1:0]  io_Pooling
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  cnt; // @[Decoder.scala 26:20]
  reg [31:0] CommandParamReg; // @[Decoder.scala 28:32]
  reg [31:0] SizeReg; // @[Decoder.scala 29:24]
  wire  _GEN_0 = io_Valid & cnt + 1'h1; // @[Decoder.scala 32:29 33:9 35:9]
  wire [31:0] _GEN_1 = cnt ? io_Instruction : SizeReg; // @[Decoder.scala 39:17 29:24 41:25]
  assign io_Mode = CommandParamReg[31:29]; // @[Decoder.scala 50:29]
  assign io_Schedule_Tm = CommandParamReg[28:25]; // @[Decoder.scala 51:36]
  assign io_Schedule_Tn = CommandParamReg[24:21]; // @[Decoder.scala 52:36]
  assign io_Schedule_Ti = CommandParamReg[20:17]; // @[Decoder.scala 53:36]
  assign io_Schedule_Tj = CommandParamReg[16:13]; // @[Decoder.scala 54:36]
  assign io_Schedule_Tr = CommandParamReg[12:9]; // @[Decoder.scala 55:36]
  assign io_Schedule_Tc = CommandParamReg[8:5]; // @[Decoder.scala 56:36]
  assign io_ScheduleSize = SizeReg[6:0]; // @[Decoder.scala 58:29]
  assign io_Pooling = CommandParamReg[4:3]; // @[Decoder.scala 57:32]
  always @(posedge clock) begin
    if (reset) begin // @[Decoder.scala 26:20]
      cnt <= 1'h0; // @[Decoder.scala 26:20]
    end else begin
      cnt <= _GEN_0;
    end
    if (reset) begin // @[Decoder.scala 28:32]
      CommandParamReg <= 32'h0; // @[Decoder.scala 28:32]
    end else if (CommandParamReg[31:29] == 3'h3) begin // @[Decoder.scala 45:46]
      CommandParamReg <= 32'h0; // @[Decoder.scala 46:21]
    end else if (io_Valid) begin // @[Decoder.scala 38:29]
      if (~cnt) begin // @[Decoder.scala 39:17]
        CommandParamReg <= io_Instruction; // @[Decoder.scala 40:33]
      end
    end
    if (reset) begin // @[Decoder.scala 29:24]
      SizeReg <= 32'h0; // @[Decoder.scala 29:24]
    end else if (CommandParamReg[31:29] == 3'h3) begin // @[Decoder.scala 45:46]
      SizeReg <= 32'h0; // @[Decoder.scala 47:13]
    end else if (io_Valid) begin // @[Decoder.scala 38:29]
      if (!(~cnt)) begin // @[Decoder.scala 39:17]
        SizeReg <= _GEN_1;
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
  cnt = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  CommandParamReg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  SizeReg = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
