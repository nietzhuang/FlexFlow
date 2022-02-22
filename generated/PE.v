module IntraBuffer(
  input         clock,
  input         reset,
  input  [15:0] io_BankIO_DataIn,
  input  [6:0]  io_BankIO_DataAddr,
  input         io_BankIO_ReadWrite,
  input         io_BankIO_Enable,
  output [15:0] io_BankIO_DataOut
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] buffer_0; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_1; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_2; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_3; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_4; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_5; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_6; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_7; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_8; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_9; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_10; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_11; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_12; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_13; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_14; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_15; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_16; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_17; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_18; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_19; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_20; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_21; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_22; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_23; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_24; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_25; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_26; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_27; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_28; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_29; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_30; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_31; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_32; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_33; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_34; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_35; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_36; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_37; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_38; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_39; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_40; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_41; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_42; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_43; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_44; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_45; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_46; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_47; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_48; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_49; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_50; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_51; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_52; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_53; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_54; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_55; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_56; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_57; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_58; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_59; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_60; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_61; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_62; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_63; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_64; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_65; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_66; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_67; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_68; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_69; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_70; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_71; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_72; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_73; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_74; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_75; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_76; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_77; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_78; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_79; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_80; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_81; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_82; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_83; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_84; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_85; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_86; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_87; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_88; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_89; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_90; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_91; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_92; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_93; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_94; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_95; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_96; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_97; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_98; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_99; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_100; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_101; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_102; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_103; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_104; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_105; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_106; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_107; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_108; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_109; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_110; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_111; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_112; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_113; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_114; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_115; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_116; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_117; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_118; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_119; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_120; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_121; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_122; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_123; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_124; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_125; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_126; // @[IntraBuffer.scala 12:24]
  reg [15:0] buffer_127; // @[IntraBuffer.scala 12:24]
  wire [15:0] _GEN_129 = 7'h1 == io_BankIO_DataAddr ? buffer_1 : buffer_0; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_130 = 7'h2 == io_BankIO_DataAddr ? buffer_2 : _GEN_129; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_131 = 7'h3 == io_BankIO_DataAddr ? buffer_3 : _GEN_130; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_132 = 7'h4 == io_BankIO_DataAddr ? buffer_4 : _GEN_131; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_133 = 7'h5 == io_BankIO_DataAddr ? buffer_5 : _GEN_132; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_134 = 7'h6 == io_BankIO_DataAddr ? buffer_6 : _GEN_133; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_135 = 7'h7 == io_BankIO_DataAddr ? buffer_7 : _GEN_134; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_136 = 7'h8 == io_BankIO_DataAddr ? buffer_8 : _GEN_135; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_137 = 7'h9 == io_BankIO_DataAddr ? buffer_9 : _GEN_136; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_138 = 7'ha == io_BankIO_DataAddr ? buffer_10 : _GEN_137; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_139 = 7'hb == io_BankIO_DataAddr ? buffer_11 : _GEN_138; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_140 = 7'hc == io_BankIO_DataAddr ? buffer_12 : _GEN_139; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_141 = 7'hd == io_BankIO_DataAddr ? buffer_13 : _GEN_140; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_142 = 7'he == io_BankIO_DataAddr ? buffer_14 : _GEN_141; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_143 = 7'hf == io_BankIO_DataAddr ? buffer_15 : _GEN_142; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_144 = 7'h10 == io_BankIO_DataAddr ? buffer_16 : _GEN_143; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_145 = 7'h11 == io_BankIO_DataAddr ? buffer_17 : _GEN_144; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_146 = 7'h12 == io_BankIO_DataAddr ? buffer_18 : _GEN_145; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_147 = 7'h13 == io_BankIO_DataAddr ? buffer_19 : _GEN_146; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_148 = 7'h14 == io_BankIO_DataAddr ? buffer_20 : _GEN_147; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_149 = 7'h15 == io_BankIO_DataAddr ? buffer_21 : _GEN_148; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_150 = 7'h16 == io_BankIO_DataAddr ? buffer_22 : _GEN_149; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_151 = 7'h17 == io_BankIO_DataAddr ? buffer_23 : _GEN_150; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_152 = 7'h18 == io_BankIO_DataAddr ? buffer_24 : _GEN_151; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_153 = 7'h19 == io_BankIO_DataAddr ? buffer_25 : _GEN_152; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_154 = 7'h1a == io_BankIO_DataAddr ? buffer_26 : _GEN_153; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_155 = 7'h1b == io_BankIO_DataAddr ? buffer_27 : _GEN_154; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_156 = 7'h1c == io_BankIO_DataAddr ? buffer_28 : _GEN_155; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_157 = 7'h1d == io_BankIO_DataAddr ? buffer_29 : _GEN_156; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_158 = 7'h1e == io_BankIO_DataAddr ? buffer_30 : _GEN_157; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_159 = 7'h1f == io_BankIO_DataAddr ? buffer_31 : _GEN_158; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_160 = 7'h20 == io_BankIO_DataAddr ? buffer_32 : _GEN_159; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_161 = 7'h21 == io_BankIO_DataAddr ? buffer_33 : _GEN_160; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_162 = 7'h22 == io_BankIO_DataAddr ? buffer_34 : _GEN_161; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_163 = 7'h23 == io_BankIO_DataAddr ? buffer_35 : _GEN_162; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_164 = 7'h24 == io_BankIO_DataAddr ? buffer_36 : _GEN_163; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_165 = 7'h25 == io_BankIO_DataAddr ? buffer_37 : _GEN_164; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_166 = 7'h26 == io_BankIO_DataAddr ? buffer_38 : _GEN_165; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_167 = 7'h27 == io_BankIO_DataAddr ? buffer_39 : _GEN_166; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_168 = 7'h28 == io_BankIO_DataAddr ? buffer_40 : _GEN_167; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_169 = 7'h29 == io_BankIO_DataAddr ? buffer_41 : _GEN_168; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_170 = 7'h2a == io_BankIO_DataAddr ? buffer_42 : _GEN_169; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_171 = 7'h2b == io_BankIO_DataAddr ? buffer_43 : _GEN_170; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_172 = 7'h2c == io_BankIO_DataAddr ? buffer_44 : _GEN_171; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_173 = 7'h2d == io_BankIO_DataAddr ? buffer_45 : _GEN_172; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_174 = 7'h2e == io_BankIO_DataAddr ? buffer_46 : _GEN_173; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_175 = 7'h2f == io_BankIO_DataAddr ? buffer_47 : _GEN_174; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_176 = 7'h30 == io_BankIO_DataAddr ? buffer_48 : _GEN_175; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_177 = 7'h31 == io_BankIO_DataAddr ? buffer_49 : _GEN_176; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_178 = 7'h32 == io_BankIO_DataAddr ? buffer_50 : _GEN_177; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_179 = 7'h33 == io_BankIO_DataAddr ? buffer_51 : _GEN_178; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_180 = 7'h34 == io_BankIO_DataAddr ? buffer_52 : _GEN_179; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_181 = 7'h35 == io_BankIO_DataAddr ? buffer_53 : _GEN_180; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_182 = 7'h36 == io_BankIO_DataAddr ? buffer_54 : _GEN_181; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_183 = 7'h37 == io_BankIO_DataAddr ? buffer_55 : _GEN_182; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_184 = 7'h38 == io_BankIO_DataAddr ? buffer_56 : _GEN_183; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_185 = 7'h39 == io_BankIO_DataAddr ? buffer_57 : _GEN_184; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_186 = 7'h3a == io_BankIO_DataAddr ? buffer_58 : _GEN_185; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_187 = 7'h3b == io_BankIO_DataAddr ? buffer_59 : _GEN_186; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_188 = 7'h3c == io_BankIO_DataAddr ? buffer_60 : _GEN_187; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_189 = 7'h3d == io_BankIO_DataAddr ? buffer_61 : _GEN_188; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_190 = 7'h3e == io_BankIO_DataAddr ? buffer_62 : _GEN_189; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_191 = 7'h3f == io_BankIO_DataAddr ? buffer_63 : _GEN_190; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_192 = 7'h40 == io_BankIO_DataAddr ? buffer_64 : _GEN_191; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_193 = 7'h41 == io_BankIO_DataAddr ? buffer_65 : _GEN_192; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_194 = 7'h42 == io_BankIO_DataAddr ? buffer_66 : _GEN_193; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_195 = 7'h43 == io_BankIO_DataAddr ? buffer_67 : _GEN_194; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_196 = 7'h44 == io_BankIO_DataAddr ? buffer_68 : _GEN_195; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_197 = 7'h45 == io_BankIO_DataAddr ? buffer_69 : _GEN_196; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_198 = 7'h46 == io_BankIO_DataAddr ? buffer_70 : _GEN_197; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_199 = 7'h47 == io_BankIO_DataAddr ? buffer_71 : _GEN_198; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_200 = 7'h48 == io_BankIO_DataAddr ? buffer_72 : _GEN_199; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_201 = 7'h49 == io_BankIO_DataAddr ? buffer_73 : _GEN_200; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_202 = 7'h4a == io_BankIO_DataAddr ? buffer_74 : _GEN_201; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_203 = 7'h4b == io_BankIO_DataAddr ? buffer_75 : _GEN_202; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_204 = 7'h4c == io_BankIO_DataAddr ? buffer_76 : _GEN_203; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_205 = 7'h4d == io_BankIO_DataAddr ? buffer_77 : _GEN_204; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_206 = 7'h4e == io_BankIO_DataAddr ? buffer_78 : _GEN_205; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_207 = 7'h4f == io_BankIO_DataAddr ? buffer_79 : _GEN_206; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_208 = 7'h50 == io_BankIO_DataAddr ? buffer_80 : _GEN_207; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_209 = 7'h51 == io_BankIO_DataAddr ? buffer_81 : _GEN_208; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_210 = 7'h52 == io_BankIO_DataAddr ? buffer_82 : _GEN_209; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_211 = 7'h53 == io_BankIO_DataAddr ? buffer_83 : _GEN_210; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_212 = 7'h54 == io_BankIO_DataAddr ? buffer_84 : _GEN_211; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_213 = 7'h55 == io_BankIO_DataAddr ? buffer_85 : _GEN_212; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_214 = 7'h56 == io_BankIO_DataAddr ? buffer_86 : _GEN_213; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_215 = 7'h57 == io_BankIO_DataAddr ? buffer_87 : _GEN_214; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_216 = 7'h58 == io_BankIO_DataAddr ? buffer_88 : _GEN_215; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_217 = 7'h59 == io_BankIO_DataAddr ? buffer_89 : _GEN_216; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_218 = 7'h5a == io_BankIO_DataAddr ? buffer_90 : _GEN_217; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_219 = 7'h5b == io_BankIO_DataAddr ? buffer_91 : _GEN_218; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_220 = 7'h5c == io_BankIO_DataAddr ? buffer_92 : _GEN_219; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_221 = 7'h5d == io_BankIO_DataAddr ? buffer_93 : _GEN_220; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_222 = 7'h5e == io_BankIO_DataAddr ? buffer_94 : _GEN_221; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_223 = 7'h5f == io_BankIO_DataAddr ? buffer_95 : _GEN_222; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_224 = 7'h60 == io_BankIO_DataAddr ? buffer_96 : _GEN_223; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_225 = 7'h61 == io_BankIO_DataAddr ? buffer_97 : _GEN_224; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_226 = 7'h62 == io_BankIO_DataAddr ? buffer_98 : _GEN_225; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_227 = 7'h63 == io_BankIO_DataAddr ? buffer_99 : _GEN_226; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_228 = 7'h64 == io_BankIO_DataAddr ? buffer_100 : _GEN_227; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_229 = 7'h65 == io_BankIO_DataAddr ? buffer_101 : _GEN_228; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_230 = 7'h66 == io_BankIO_DataAddr ? buffer_102 : _GEN_229; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_231 = 7'h67 == io_BankIO_DataAddr ? buffer_103 : _GEN_230; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_232 = 7'h68 == io_BankIO_DataAddr ? buffer_104 : _GEN_231; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_233 = 7'h69 == io_BankIO_DataAddr ? buffer_105 : _GEN_232; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_234 = 7'h6a == io_BankIO_DataAddr ? buffer_106 : _GEN_233; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_235 = 7'h6b == io_BankIO_DataAddr ? buffer_107 : _GEN_234; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_236 = 7'h6c == io_BankIO_DataAddr ? buffer_108 : _GEN_235; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_237 = 7'h6d == io_BankIO_DataAddr ? buffer_109 : _GEN_236; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_238 = 7'h6e == io_BankIO_DataAddr ? buffer_110 : _GEN_237; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_239 = 7'h6f == io_BankIO_DataAddr ? buffer_111 : _GEN_238; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_240 = 7'h70 == io_BankIO_DataAddr ? buffer_112 : _GEN_239; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_241 = 7'h71 == io_BankIO_DataAddr ? buffer_113 : _GEN_240; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_242 = 7'h72 == io_BankIO_DataAddr ? buffer_114 : _GEN_241; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_243 = 7'h73 == io_BankIO_DataAddr ? buffer_115 : _GEN_242; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_244 = 7'h74 == io_BankIO_DataAddr ? buffer_116 : _GEN_243; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_245 = 7'h75 == io_BankIO_DataAddr ? buffer_117 : _GEN_244; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_246 = 7'h76 == io_BankIO_DataAddr ? buffer_118 : _GEN_245; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_247 = 7'h77 == io_BankIO_DataAddr ? buffer_119 : _GEN_246; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_248 = 7'h78 == io_BankIO_DataAddr ? buffer_120 : _GEN_247; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_249 = 7'h79 == io_BankIO_DataAddr ? buffer_121 : _GEN_248; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_250 = 7'h7a == io_BankIO_DataAddr ? buffer_122 : _GEN_249; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_251 = 7'h7b == io_BankIO_DataAddr ? buffer_123 : _GEN_250; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_252 = 7'h7c == io_BankIO_DataAddr ? buffer_124 : _GEN_251; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_253 = 7'h7d == io_BankIO_DataAddr ? buffer_125 : _GEN_252; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_254 = 7'h7e == io_BankIO_DataAddr ? buffer_126 : _GEN_253; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_255 = 7'h7f == io_BankIO_DataAddr ? buffer_127 : _GEN_254; // @[IntraBuffer.scala 19:{25,25}]
  wire [15:0] _GEN_384 = ~io_BankIO_ReadWrite ? 16'h0 : _GEN_255; // @[IntraBuffer.scala 14:21 16:43 19:25]
  assign io_BankIO_DataOut = io_BankIO_Enable ? _GEN_384 : 16'h0; // @[IntraBuffer.scala 14:21 15:37]
  always @(posedge clock) begin
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_0 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h0 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_0 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_1 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_1 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_2 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_2 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_3 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_3 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_4 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_4 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_5 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_5 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_6 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_6 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_7 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_7 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_8 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h8 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_8 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_9 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h9 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_9 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_10 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'ha == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_10 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_11 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'hb == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_11 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_12 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'hc == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_12 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_13 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'hd == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_13 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_14 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'he == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_14 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_15 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'hf == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_15 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_16 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h10 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_16 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_17 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h11 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_17 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_18 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h12 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_18 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_19 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h13 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_19 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_20 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h14 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_20 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_21 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h15 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_21 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_22 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h16 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_22 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_23 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h17 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_23 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_24 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h18 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_24 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_25 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h19 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_25 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_26 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_26 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_27 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_27 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_28 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_28 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_29 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_29 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_30 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_30 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_31 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h1f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_31 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_32 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h20 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_32 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_33 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h21 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_33 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_34 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h22 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_34 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_35 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h23 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_35 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_36 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h24 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_36 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_37 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h25 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_37 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_38 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h26 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_38 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_39 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h27 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_39 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_40 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h28 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_40 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_41 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h29 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_41 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_42 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_42 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_43 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_43 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_44 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_44 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_45 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_45 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_46 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_46 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_47 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h2f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_47 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_48 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h30 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_48 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_49 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h31 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_49 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_50 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h32 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_50 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_51 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h33 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_51 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_52 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h34 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_52 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_53 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h35 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_53 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_54 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h36 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_54 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_55 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h37 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_55 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_56 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h38 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_56 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_57 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h39 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_57 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_58 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_58 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_59 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_59 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_60 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_60 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_61 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_61 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_62 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_62 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_63 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h3f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_63 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_64 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h40 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_64 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_65 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h41 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_65 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_66 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h42 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_66 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_67 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h43 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_67 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_68 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h44 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_68 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_69 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h45 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_69 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_70 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h46 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_70 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_71 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h47 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_71 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_72 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h48 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_72 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_73 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h49 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_73 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_74 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_74 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_75 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_75 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_76 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_76 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_77 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_77 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_78 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_78 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_79 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h4f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_79 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_80 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h50 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_80 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_81 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h51 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_81 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_82 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h52 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_82 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_83 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h53 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_83 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_84 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h54 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_84 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_85 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h55 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_85 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_86 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h56 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_86 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_87 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h57 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_87 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_88 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h58 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_88 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_89 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h59 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_89 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_90 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_90 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_91 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_91 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_92 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_92 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_93 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_93 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_94 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_94 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_95 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h5f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_95 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_96 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h60 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_96 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_97 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h61 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_97 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_98 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h62 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_98 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_99 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h63 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_99 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_100 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h64 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_100 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_101 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h65 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_101 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_102 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h66 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_102 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_103 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h67 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_103 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_104 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h68 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_104 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_105 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h69 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_105 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_106 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_106 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_107 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_107 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_108 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_108 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_109 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_109 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_110 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_110 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_111 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h6f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_111 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_112 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h70 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_112 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_113 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h71 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_113 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_114 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h72 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_114 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_115 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h73 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_115 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_116 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h74 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_116 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_117 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h75 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_117 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_118 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h76 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_118 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_119 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h77 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_119 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_120 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h78 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_120 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_121 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h79 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_121 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_122 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_122 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_123 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_123 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_124 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_124 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_125 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_125 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_126 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_126 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 12:24]
      buffer_127 <= 16'h0; // @[IntraBuffer.scala 12:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 15:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 16:43]
        if (7'h7f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 17:34]
          buffer_127 <= io_BankIO_DataIn; // @[IntraBuffer.scala 17:34]
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
  buffer_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  buffer_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  buffer_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  buffer_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  buffer_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  buffer_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  buffer_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  buffer_9 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  buffer_10 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  buffer_11 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  buffer_12 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  buffer_13 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  buffer_14 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  buffer_15 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  buffer_16 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  buffer_17 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  buffer_18 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  buffer_19 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  buffer_20 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  buffer_21 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  buffer_22 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  buffer_23 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  buffer_24 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_25 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_26 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_27 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_28 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_29 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_30 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_31 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_32 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_33 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_34 = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_35 = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_36 = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_37 = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_38 = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_39 = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  buffer_40 = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  buffer_41 = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  buffer_42 = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  buffer_43 = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  buffer_44 = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  buffer_45 = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  buffer_46 = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  buffer_47 = _RAND_47[15:0];
  _RAND_48 = {1{`RANDOM}};
  buffer_48 = _RAND_48[15:0];
  _RAND_49 = {1{`RANDOM}};
  buffer_49 = _RAND_49[15:0];
  _RAND_50 = {1{`RANDOM}};
  buffer_50 = _RAND_50[15:0];
  _RAND_51 = {1{`RANDOM}};
  buffer_51 = _RAND_51[15:0];
  _RAND_52 = {1{`RANDOM}};
  buffer_52 = _RAND_52[15:0];
  _RAND_53 = {1{`RANDOM}};
  buffer_53 = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  buffer_54 = _RAND_54[15:0];
  _RAND_55 = {1{`RANDOM}};
  buffer_55 = _RAND_55[15:0];
  _RAND_56 = {1{`RANDOM}};
  buffer_56 = _RAND_56[15:0];
  _RAND_57 = {1{`RANDOM}};
  buffer_57 = _RAND_57[15:0];
  _RAND_58 = {1{`RANDOM}};
  buffer_58 = _RAND_58[15:0];
  _RAND_59 = {1{`RANDOM}};
  buffer_59 = _RAND_59[15:0];
  _RAND_60 = {1{`RANDOM}};
  buffer_60 = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  buffer_61 = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  buffer_62 = _RAND_62[15:0];
  _RAND_63 = {1{`RANDOM}};
  buffer_63 = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  buffer_64 = _RAND_64[15:0];
  _RAND_65 = {1{`RANDOM}};
  buffer_65 = _RAND_65[15:0];
  _RAND_66 = {1{`RANDOM}};
  buffer_66 = _RAND_66[15:0];
  _RAND_67 = {1{`RANDOM}};
  buffer_67 = _RAND_67[15:0];
  _RAND_68 = {1{`RANDOM}};
  buffer_68 = _RAND_68[15:0];
  _RAND_69 = {1{`RANDOM}};
  buffer_69 = _RAND_69[15:0];
  _RAND_70 = {1{`RANDOM}};
  buffer_70 = _RAND_70[15:0];
  _RAND_71 = {1{`RANDOM}};
  buffer_71 = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  buffer_72 = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  buffer_73 = _RAND_73[15:0];
  _RAND_74 = {1{`RANDOM}};
  buffer_74 = _RAND_74[15:0];
  _RAND_75 = {1{`RANDOM}};
  buffer_75 = _RAND_75[15:0];
  _RAND_76 = {1{`RANDOM}};
  buffer_76 = _RAND_76[15:0];
  _RAND_77 = {1{`RANDOM}};
  buffer_77 = _RAND_77[15:0];
  _RAND_78 = {1{`RANDOM}};
  buffer_78 = _RAND_78[15:0];
  _RAND_79 = {1{`RANDOM}};
  buffer_79 = _RAND_79[15:0];
  _RAND_80 = {1{`RANDOM}};
  buffer_80 = _RAND_80[15:0];
  _RAND_81 = {1{`RANDOM}};
  buffer_81 = _RAND_81[15:0];
  _RAND_82 = {1{`RANDOM}};
  buffer_82 = _RAND_82[15:0];
  _RAND_83 = {1{`RANDOM}};
  buffer_83 = _RAND_83[15:0];
  _RAND_84 = {1{`RANDOM}};
  buffer_84 = _RAND_84[15:0];
  _RAND_85 = {1{`RANDOM}};
  buffer_85 = _RAND_85[15:0];
  _RAND_86 = {1{`RANDOM}};
  buffer_86 = _RAND_86[15:0];
  _RAND_87 = {1{`RANDOM}};
  buffer_87 = _RAND_87[15:0];
  _RAND_88 = {1{`RANDOM}};
  buffer_88 = _RAND_88[15:0];
  _RAND_89 = {1{`RANDOM}};
  buffer_89 = _RAND_89[15:0];
  _RAND_90 = {1{`RANDOM}};
  buffer_90 = _RAND_90[15:0];
  _RAND_91 = {1{`RANDOM}};
  buffer_91 = _RAND_91[15:0];
  _RAND_92 = {1{`RANDOM}};
  buffer_92 = _RAND_92[15:0];
  _RAND_93 = {1{`RANDOM}};
  buffer_93 = _RAND_93[15:0];
  _RAND_94 = {1{`RANDOM}};
  buffer_94 = _RAND_94[15:0];
  _RAND_95 = {1{`RANDOM}};
  buffer_95 = _RAND_95[15:0];
  _RAND_96 = {1{`RANDOM}};
  buffer_96 = _RAND_96[15:0];
  _RAND_97 = {1{`RANDOM}};
  buffer_97 = _RAND_97[15:0];
  _RAND_98 = {1{`RANDOM}};
  buffer_98 = _RAND_98[15:0];
  _RAND_99 = {1{`RANDOM}};
  buffer_99 = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  buffer_100 = _RAND_100[15:0];
  _RAND_101 = {1{`RANDOM}};
  buffer_101 = _RAND_101[15:0];
  _RAND_102 = {1{`RANDOM}};
  buffer_102 = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  buffer_103 = _RAND_103[15:0];
  _RAND_104 = {1{`RANDOM}};
  buffer_104 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  buffer_105 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  buffer_106 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  buffer_107 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  buffer_108 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  buffer_109 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  buffer_110 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  buffer_111 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  buffer_112 = _RAND_112[15:0];
  _RAND_113 = {1{`RANDOM}};
  buffer_113 = _RAND_113[15:0];
  _RAND_114 = {1{`RANDOM}};
  buffer_114 = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  buffer_115 = _RAND_115[15:0];
  _RAND_116 = {1{`RANDOM}};
  buffer_116 = _RAND_116[15:0];
  _RAND_117 = {1{`RANDOM}};
  buffer_117 = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  buffer_118 = _RAND_118[15:0];
  _RAND_119 = {1{`RANDOM}};
  buffer_119 = _RAND_119[15:0];
  _RAND_120 = {1{`RANDOM}};
  buffer_120 = _RAND_120[15:0];
  _RAND_121 = {1{`RANDOM}};
  buffer_121 = _RAND_121[15:0];
  _RAND_122 = {1{`RANDOM}};
  buffer_122 = _RAND_122[15:0];
  _RAND_123 = {1{`RANDOM}};
  buffer_123 = _RAND_123[15:0];
  _RAND_124 = {1{`RANDOM}};
  buffer_124 = _RAND_124[15:0];
  _RAND_125 = {1{`RANDOM}};
  buffer_125 = _RAND_125[15:0];
  _RAND_126 = {1{`RANDOM}};
  buffer_126 = _RAND_126[15:0];
  _RAND_127 = {1{`RANDOM}};
  buffer_127 = _RAND_127[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PECtrl(
  input         clock,
  input         reset,
  input  [2:0]  io_SchePort_Mode,
  input  [23:0] io_SchePort_Schedule,
  input  [6:0]  io_SchePort_ScheduleSize,
  output        io_KernelBuf_Enable,
  output [9:0]  io_KernelBuf_Addr,
  output [3:0]  io_KernelBuf_BankIdx,
  output        io_NeuronBuf_Enable,
  output [9:0]  io_NeuronBuf_Addr,
  output        io_KernelIntra_Enable,
  output        io_KernelIntra_ReadWrite,
  output [6:0]  io_KernelIntra_DataAddr,
  output        io_NeuronIntra_Enable,
  output        io_NeuronIntra_ReadWrite,
  output [6:0]  io_NeuronIntra_DataAddr,
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] stateReg; // @[PECtrl.scala 40:25]
  wire [3:0] Tm = io_SchePort_Schedule[23:20] + 4'h1; // @[PECtrl.scala 44:41]
  wire [3:0] Tn = io_SchePort_Schedule[19:16] + 4'h1; // @[PECtrl.scala 45:41]
  wire [3:0] Ti = io_SchePort_Schedule[15:12] + 4'h1; // @[PECtrl.scala 46:41]
  wire [3:0] Tj = io_SchePort_Schedule[11:8] + 4'h1; // @[PECtrl.scala 47:40]
  wire [3:0] Tr = io_SchePort_Schedule[7:4] + 4'h1; // @[PECtrl.scala 48:39]
  wire [3:0] Tc = io_SchePort_Schedule[3:0] + 4'h1; // @[PECtrl.scala 49:39]
  wire [7:0] _GroupRowIdx_T = Tr * Tc; // @[PECtrl.scala 51:36]
  wire [7:0] _GroupColIdx_T = Ti * Tj; // @[PECtrl.scala 52:36]
  wire [7:0] KernelBoundary_result = _GroupColIdx_T / _GroupRowIdx_T; // @[Util.scala 8:22]
  wire [7:0] KernelBoundary = KernelBoundary_result + 8'h1; // @[Util.scala 12:14]
  wire [6:0] NeuronBoundary = io_SchePort_ScheduleSize / _GroupRowIdx_T; // @[PECtrl.scala 55:35]
  wire [3:0] HoldBoundary = Tj / Tc; // @[PECtrl.scala 56:25]
  wire [6:0] _GEN_99 = {{3'd0}, Tj}; // @[PECtrl.scala 57:35]
  wire [6:0] _MacCycle_T_1 = io_SchePort_ScheduleSize - _GEN_99; // @[PECtrl.scala 57:35]
  wire [6:0] MacCycle_result = _MacCycle_T_1 / Tc; // @[Util.scala 8:22]
  wire [6:0] MacCycle = MacCycle_result + 7'h1; // @[Util.scala 12:14]
  wire [4:0] _tm_T = 5'h10 / Tm; // @[PECtrl.scala 59:34]
  wire  tm = 1'h0 / _tm_T; // @[PECtrl.scala 59:21]
  wire [4:0] _tn_T = 5'h10 / Tn; // @[PECtrl.scala 60:34]
  wire  tn = 1'h0 / _tn_T; // @[PECtrl.scala 60:21]
  wire [4:0] _tj_T = tn * Ti; // @[PECtrl.scala 61:27]
  wire [8:0] _tj_T_1 = _tj_T * Tj; // @[PECtrl.scala 61:32]
  wire [8:0] _tj_T_2 = _tj_T_1 / Tj; // @[PECtrl.scala 61:38]
  wire [8:0] tj = 9'h0 - _tj_T_2; // @[PECtrl.scala 61:21]
  wire [4:0] _tc_T = tm * Tc; // @[PECtrl.scala 63:27]
  wire [8:0] _tc_T_1 = _tc_T * Tr; // @[PECtrl.scala 63:32]
  wire [8:0] _tc_T_2 = _tc_T_1 / Tc; // @[PECtrl.scala 63:38]
  wire [8:0] tc = 9'h0 - _tc_T_2; // @[PECtrl.scala 63:21]
  reg  cntMac; // @[PECtrl.scala 66:23]
  reg [6:0] KernelSlotPtr; // @[PECtrl.scala 67:30]
  reg [6:0] cntKBufAddr; // @[PECtrl.scala 68:28]
  reg  cntKBufBank; // @[PECtrl.scala 69:28]
  reg [6:0] NeuronSlotPtr; // @[PECtrl.scala 70:30]
  reg [6:0] cntNBufAddr; // @[PECtrl.scala 71:28]
  wire [8:0] _cntHoldBase_T_1 = tj / HoldBoundary; // @[PECtrl.scala 74:37]
  wire [8:0] _GEN_8 = {{5'd0}, HoldBoundary}; // @[PECtrl.scala 74:53]
  wire [8:0] _GEN_0 = _cntHoldBase_T_1 % _GEN_8; // @[PECtrl.scala 74:53]
  wire [3:0] _cntHoldBase_T_2 = _GEN_0[3:0]; // @[PECtrl.scala 74:53]
  reg [3:0] cntHoldBase_REG; // @[PECtrl.scala 74:32]
  wire  _cntHoldBase_T_3 = tj < tc; // @[PECtrl.scala 75:37]
  wire [8:0] _GEN_102 = {{5'd0}, Tj}; // @[PECtrl.scala 75:63]
  wire [8:0] _cntHoldBase_T_5 = _GEN_102 - tc; // @[PECtrl.scala 75:63]
  reg  cntHoldBase_REG_1; // @[PECtrl.scala 75:32]
  wire [3:0] cntHoldBase = tc > 9'h0 ? cntHoldBase_REG : {{3'd0}, cntHoldBase_REG_1}; // @[PECtrl.scala 73:24]
  reg [3:0] cntHold; // @[PECtrl.scala 76:24]
  wire  Load2 = io_SchePort_Mode == 3'h2; // @[PECtrl.scala 79:33]
  reg  KernelReadDone; // @[PECtrl.scala 80:31]
  reg  NeuronReadDone; // @[PECtrl.scala 81:31]
  wire  Load2Done = KernelReadDone & NeuronReadDone; // @[PECtrl.scala 82:35]
  reg  macDone; // @[PECtrl.scala 83:24]
  wire  _T = 2'h1 == stateReg; // @[PECtrl.scala 85:21]
  wire  _T_2 = 2'h2 == stateReg; // @[PECtrl.scala 85:21]
  wire  _T_4 = 2'h3 == stateReg; // @[PECtrl.scala 85:21]
  wire [1:0] _GEN_2 = macDone ? 2'h1 : 2'h3; // @[PECtrl.scala 102:32 103:18 105:18]
  wire  _T_8 = ~KernelReadDone; // @[PECtrl.scala 156:27]
  wire [7:0] _GEN_103 = {{1'd0}, cntKBufAddr}; // @[PECtrl.scala 158:26]
  wire [6:0] _cntKBufAddr_T_1 = cntKBufAddr + 7'h1; // @[PECtrl.scala 163:38]
  wire [6:0] _GEN_6 = _GEN_103 < KernelBoundary ? cntKBufAddr : 7'h0; // @[PECtrl.scala 158:44 159:29 165:29]
  wire  _GEN_7 = _GEN_103 < KernelBoundary ? cntKBufBank : cntKBufBank + 1'h1; // @[PECtrl.scala 158:44 160:32 166:32]
  wire [6:0] _GEN_9 = _GEN_103 < KernelBoundary ? _cntKBufAddr_T_1 : 7'h0; // @[PECtrl.scala 158:44 163:23 169:23]
  wire [6:0] _KernelSlotPtr_T_1 = KernelSlotPtr + 7'h1; // @[PECtrl.scala 172:40]
  wire [7:0] _GEN_104 = {{1'd0}, KernelSlotPtr}; // @[PECtrl.scala 175:28]
  wire  _GEN_11 = _GEN_104 == _GroupColIdx_T | KernelReadDone; // @[PECtrl.scala 175:41 177:26 80:31]
  wire [6:0] _GEN_12 = _GEN_104 == _GroupColIdx_T ? 7'h0 : _KernelSlotPtr_T_1; // @[PECtrl.scala 172:23 175:41 178:25]
  wire [6:0] _GEN_14 = ~KernelReadDone ? _GEN_6 : 7'h0; // @[PECtrl.scala 110:21 156:40]
  wire  _GEN_15 = ~KernelReadDone & _GEN_7; // @[PECtrl.scala 111:24 156:40]
  wire [6:0] _GEN_16 = ~KernelReadDone ? KernelSlotPtr : 7'h0; // @[PECtrl.scala 114:27 156:40]
  wire  _T_12 = ~NeuronReadDone; // @[PECtrl.scala 183:27]
  wire [6:0] _cntNBufAddr_T_1 = cntNBufAddr + 7'h1; // @[PECtrl.scala 190:38]
  wire [6:0] _GEN_21 = cntNBufAddr < NeuronBoundary ? cntNBufAddr : 7'h0; // @[PECtrl.scala 117:21 185:44 186:29]
  wire [6:0] _GEN_23 = cntNBufAddr < NeuronBoundary ? NeuronSlotPtr : 7'h0; // @[PECtrl.scala 121:27 185:44 188:35]
  wire [6:0] _GEN_24 = cntNBufAddr < NeuronBoundary ? _cntNBufAddr_T_1 : cntNBufAddr; // @[PECtrl.scala 185:44 190:23 71:28]
  wire  _GEN_25 = NeuronSlotPtr == NeuronBoundary | NeuronReadDone; // @[PECtrl.scala 196:48 197:26 81:31]
  wire [6:0] _GEN_26 = NeuronSlotPtr == NeuronBoundary ? 7'h0 : cntNBufAddr; // @[PECtrl.scala 195:23 196:48 198:25]
  wire [6:0] _GEN_28 = ~NeuronReadDone ? _GEN_21 : 7'h0; // @[PECtrl.scala 117:21 183:40]
  wire [6:0] _GEN_30 = ~NeuronReadDone ? _GEN_23 : 7'h0; // @[PECtrl.scala 121:27 183:40]
  wire [3:0] _T_20 = Tj - 4'h1; // @[PECtrl.scala 212:51]
  wire [12:0] _T_21 = tc * _T_20; // @[PECtrl.scala 212:45]
  wire [12:0] _GEN_105 = {{6'd0}, _GEN_104[6:0]}; // @[PECtrl.scala 212:40]
  wire [12:0] _T_23 = _GEN_105 + _T_21; // @[PECtrl.scala 212:40]
  wire [12:0] _GEN_106 = {{9'd0}, Tj}; // @[PECtrl.scala 212:59]
  wire [12:0] _io_KernelIntra_DataAddr_T_15 = _T_23 - _GEN_106; // @[PECtrl.scala 216:81]
  wire [12:0] _GEN_34 = _T_23 < _GEN_106 ? _T_23 : _io_KernelIntra_DataAddr_T_15; // @[PECtrl.scala 212:65 213:35 216:35]
  wire [6:0] _GEN_110 = {{3'd0}, Tr}; // @[PECtrl.scala 219:50]
  wire [6:0] _KernelSlotPtr_T_3 = io_KernelIntra_DataAddr + _GEN_110; // @[PECtrl.scala 219:50]
  wire [3:0] _T_26 = cntHold + 4'h1; // @[PECtrl.scala 223:22]
  wire [6:0] _NeuronSlotPtr_T_2 = NeuronSlotPtr + 7'h1; // @[PECtrl.scala 224:42]
  wire [6:0] _GEN_35 = _T_26 > HoldBoundary ? _NeuronSlotPtr_T_2 : NeuronSlotPtr; // @[PECtrl.scala 226:50 227:25 230:25]
  wire [6:0] _GEN_37 = _T_26 == HoldBoundary ? _NeuronSlotPtr_T_2 : _GEN_35; // @[PECtrl.scala 223:46 224:25]
  wire [3:0] _GEN_38 = _T_26 == HoldBoundary ? _T_26 : 4'h0; // @[PECtrl.scala 223:46 225:19]
  wire [6:0] _GEN_111 = {{6'd0}, cntMac}; // @[PECtrl.scala 238:21]
  wire  _GEN_39 = _GEN_111 == MacCycle | macDone; // @[PECtrl.scala 238:35 239:19 83:24]
  wire  _GEN_40 = _GEN_111 == MacCycle ? 1'h0 : cntMac + 1'h1; // @[PECtrl.scala 235:16 238:35 240:18]
  wire [12:0] _GEN_41 = ~macDone ? _GEN_34 : 13'h0; // @[PECtrl.scala 114:27 210:33]
  wire [6:0] _GEN_42 = ~macDone ? _KernelSlotPtr_T_3 : KernelSlotPtr; // @[PECtrl.scala 210:33 219:23 67:30]
  wire [6:0] _GEN_43 = ~macDone ? _GEN_37 : {{6'd0}, _cntHoldBase_T_3}; // @[PECtrl.scala 209:21 210:33]
  wire [3:0] _GEN_44 = ~macDone ? _GEN_38 : cntHoldBase; // @[PECtrl.scala 208:15 210:33]
  wire [6:0] _GEN_45 = ~macDone ? NeuronSlotPtr : 7'h0; // @[PECtrl.scala 121:27 210:33 233:33]
  wire  _GEN_46 = ~macDone ? _GEN_40 : cntMac; // @[PECtrl.scala 210:33 66:23]
  wire  _GEN_47 = ~macDone ? _GEN_39 : macDone; // @[PECtrl.scala 210:33 83:24]
  wire [12:0] _GEN_52 = _T_4 ? _GEN_41 : 13'h0; // @[PECtrl.scala 127:20 114:27]
  wire [6:0] _GEN_54 = _T_4 ? _GEN_45 : 7'h0; // @[PECtrl.scala 127:20 121:27]
  wire  _GEN_59 = _T_2 & _T_8; // @[PECtrl.scala 127:20 116:25]
  wire [6:0] _GEN_60 = _T_2 ? _GEN_14 : 7'h0; // @[PECtrl.scala 127:20 110:21]
  wire  _GEN_61 = _T_2 & _GEN_15; // @[PECtrl.scala 127:20 111:24]
  wire [12:0] _GEN_62 = _T_2 ? {{6'd0}, _GEN_16} : _GEN_52; // @[PECtrl.scala 127:20]
  wire  _GEN_67 = _T_2 & _T_12; // @[PECtrl.scala 127:20 123:25]
  wire [6:0] _GEN_68 = _T_2 ? _GEN_28 : 7'h0; // @[PECtrl.scala 127:20 117:21]
  wire [6:0] _GEN_70 = _T_2 ? _GEN_30 : _GEN_54; // @[PECtrl.scala 127:20]
  wire  _GEN_74 = _T_2 ? 1'h0 : _T_4; // @[PECtrl.scala 124:16 127:20]
  wire [6:0] _GEN_78 = _T ? 7'h0 : _GEN_60; // @[PECtrl.scala 127:20 129:25]
  wire  _GEN_79 = _T ? 1'h0 : _GEN_61; // @[PECtrl.scala 127:20 130:28]
  wire [12:0] _GEN_82 = _T ? 13'h0 : _GEN_62; // @[PECtrl.scala 127:20 133:31]
  wire [6:0] _GEN_84 = _T ? 7'h0 : _GEN_68; // @[PECtrl.scala 127:20 136:25]
  assign io_KernelBuf_Enable = _T ? 1'h0 : _T_2; // @[PECtrl.scala 127:20 132:27]
  assign io_KernelBuf_Addr = {{3'd0}, _GEN_78};
  assign io_KernelBuf_BankIdx = {{3'd0}, _GEN_79};
  assign io_NeuronBuf_Enable = _T ? 1'h0 : _T_2; // @[PECtrl.scala 127:20 132:27]
  assign io_NeuronBuf_Addr = {{3'd0}, _GEN_84};
  assign io_KernelIntra_Enable = _T ? 1'h0 : _GEN_59; // @[PECtrl.scala 127:20 135:29]
  assign io_KernelIntra_ReadWrite = _T ? 1'h0 : _T_2; // @[PECtrl.scala 127:20 132:27]
  assign io_KernelIntra_DataAddr = _GEN_82[6:0];
  assign io_NeuronIntra_Enable = _T ? 1'h0 : _GEN_67; // @[PECtrl.scala 127:20 142:29]
  assign io_NeuronIntra_ReadWrite = _T ? 1'h0 : _T_2; // @[PECtrl.scala 127:20 132:27]
  assign io_NeuronIntra_DataAddr = _T ? 7'h0 : _GEN_70; // @[PECtrl.scala 127:20 140:31]
  assign io_MacEnable = _T ? 1'h0 : _GEN_74; // @[PECtrl.scala 124:16 127:20]
  always @(posedge clock) begin
    if (reset) begin // @[PECtrl.scala 40:25]
      stateReg <= 2'h1; // @[PECtrl.scala 40:25]
    end else if (2'h1 == stateReg) begin // @[PECtrl.scala 85:21]
      if (Load2) begin // @[PECtrl.scala 87:30]
        stateReg <= 2'h2; // @[PECtrl.scala 88:18]
      end else begin
        stateReg <= 2'h1; // @[PECtrl.scala 90:18]
      end
    end else if (2'h2 == stateReg) begin // @[PECtrl.scala 85:21]
      if (Load2Done) begin // @[PECtrl.scala 94:34]
        stateReg <= 2'h3; // @[PECtrl.scala 95:18]
      end else begin
        stateReg <= 2'h2; // @[PECtrl.scala 98:18]
      end
    end else if (2'h3 == stateReg) begin // @[PECtrl.scala 85:21]
      stateReg <= _GEN_2;
    end
    if (reset) begin // @[PECtrl.scala 66:23]
      cntMac <= 1'h0; // @[PECtrl.scala 66:23]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (!(_T_2)) begin // @[PECtrl.scala 127:20]
        if (_T_4) begin // @[PECtrl.scala 127:20]
          cntMac <= _GEN_46;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 67:30]
      KernelSlotPtr <= 7'h0; // @[PECtrl.scala 67:30]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (_T_2) begin // @[PECtrl.scala 127:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 156:40]
          KernelSlotPtr <= _GEN_12;
        end
      end else if (_T_4) begin // @[PECtrl.scala 127:20]
        KernelSlotPtr <= _GEN_42;
      end
    end
    if (reset) begin // @[PECtrl.scala 68:28]
      cntKBufAddr <= 7'h0; // @[PECtrl.scala 68:28]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (_T_2) begin // @[PECtrl.scala 127:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 156:40]
          cntKBufAddr <= _GEN_9;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 69:28]
      cntKBufBank <= 1'h0; // @[PECtrl.scala 69:28]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (_T_2) begin // @[PECtrl.scala 127:20]
        if (~KernelReadDone) begin // @[PECtrl.scala 156:40]
          cntKBufBank <= _GEN_7;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 70:30]
      NeuronSlotPtr <= 7'h0; // @[PECtrl.scala 70:30]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (_T_2) begin // @[PECtrl.scala 127:20]
        if (~NeuronReadDone) begin // @[PECtrl.scala 183:40]
          NeuronSlotPtr <= _GEN_26;
        end
      end else if (_T_4) begin // @[PECtrl.scala 127:20]
        NeuronSlotPtr <= _GEN_43;
      end
    end
    if (reset) begin // @[PECtrl.scala 71:28]
      cntNBufAddr <= 7'h0; // @[PECtrl.scala 71:28]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (_T_2) begin // @[PECtrl.scala 127:20]
        if (~NeuronReadDone) begin // @[PECtrl.scala 183:40]
          cntNBufAddr <= _GEN_24;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 74:32]
      cntHoldBase_REG <= _cntHoldBase_T_2; // @[PECtrl.scala 74:32]
    end
    if (reset) begin // @[PECtrl.scala 75:32]
      cntHoldBase_REG_1 <= (tj < tc) + (tj >= _cntHoldBase_T_5); // @[PECtrl.scala 75:32]
    end
    if (reset) begin // @[PECtrl.scala 76:24]
      cntHold <= 4'h0; // @[PECtrl.scala 76:24]
    end else if (!(_T)) begin // @[PECtrl.scala 127:20]
      if (!(_T_2)) begin // @[PECtrl.scala 127:20]
        if (_T_4) begin // @[PECtrl.scala 127:20]
          cntHold <= _GEN_44;
        end
      end
    end
    if (reset) begin // @[PECtrl.scala 80:31]
      KernelReadDone <= 1'h0; // @[PECtrl.scala 80:31]
    end else if (_T) begin // @[PECtrl.scala 127:20]
      KernelReadDone <= 1'h0; // @[PECtrl.scala 143:22]
    end else if (_T_2) begin // @[PECtrl.scala 127:20]
      if (~KernelReadDone) begin // @[PECtrl.scala 156:40]
        KernelReadDone <= _GEN_11;
      end
    end
    if (reset) begin // @[PECtrl.scala 81:31]
      NeuronReadDone <= 1'h0; // @[PECtrl.scala 81:31]
    end else if (_T) begin // @[PECtrl.scala 127:20]
      NeuronReadDone <= 1'h0; // @[PECtrl.scala 144:22]
    end else if (_T_2) begin // @[PECtrl.scala 127:20]
      if (~NeuronReadDone) begin // @[PECtrl.scala 183:40]
        NeuronReadDone <= _GEN_25;
      end
    end
    if (reset) begin // @[PECtrl.scala 83:24]
      macDone <= 1'h0; // @[PECtrl.scala 83:24]
    end else if (_T) begin // @[PECtrl.scala 127:20]
      macDone <= 1'h0; // @[PECtrl.scala 145:15]
    end else if (!(_T_2)) begin // @[PECtrl.scala 127:20]
      if (_T_4) begin // @[PECtrl.scala 127:20]
        macDone <= _GEN_47;
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
  cntKBufAddr = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  cntKBufBank = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  NeuronSlotPtr = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  cntNBufAddr = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  cntHoldBase_REG = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  cntHoldBase_REG_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  cntHold = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  KernelReadDone = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  NeuronReadDone = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  macDone = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PE(
  input         clock,
  input         reset,
  input         io_Enable,
  input  [2:0]  io_SchePort_Mode,
  input  [23:0] io_SchePort_Schedule,
  input  [6:0]  io_SchePort_ScheduleSize,
  output        io_KernelBuf_Enable,
  output        io_KernelBuf_ReadWrite,
  output [9:0]  io_KernelBuf_Addr,
  input  [15:0] io_KernelBuf_DataIn,
  output [3:0]  io_KernelBuf_BankIdx,
  output        io_NeuronBuf_Enable,
  output        io_NeuronBuf_ReadWrite,
  output [9:0]  io_NeuronBuf_Addr,
  input  [15:0] io_NeuronBuf_DataIn,
  output [3:0]  io_NeuronBuf_BankIdx,
  output [15:0] io_DataOut
);
  wire  kernelintra_clock; // @[PE.scala 42:27]
  wire  kernelintra_reset; // @[PE.scala 42:27]
  wire [15:0] kernelintra_io_BankIO_DataIn; // @[PE.scala 42:27]
  wire [6:0] kernelintra_io_BankIO_DataAddr; // @[PE.scala 42:27]
  wire  kernelintra_io_BankIO_ReadWrite; // @[PE.scala 42:27]
  wire  kernelintra_io_BankIO_Enable; // @[PE.scala 42:27]
  wire [15:0] kernelintra_io_BankIO_DataOut; // @[PE.scala 42:27]
  wire  neuronintra_clock; // @[PE.scala 43:27]
  wire  neuronintra_reset; // @[PE.scala 43:27]
  wire [15:0] neuronintra_io_BankIO_DataIn; // @[PE.scala 43:27]
  wire [6:0] neuronintra_io_BankIO_DataAddr; // @[PE.scala 43:27]
  wire  neuronintra_io_BankIO_ReadWrite; // @[PE.scala 43:27]
  wire  neuronintra_io_BankIO_Enable; // @[PE.scala 43:27]
  wire [15:0] neuronintra_io_BankIO_DataOut; // @[PE.scala 43:27]
  wire  PECtrl_clock; // @[PE.scala 45:22]
  wire  PECtrl_reset; // @[PE.scala 45:22]
  wire [2:0] PECtrl_io_SchePort_Mode; // @[PE.scala 45:22]
  wire [23:0] PECtrl_io_SchePort_Schedule; // @[PE.scala 45:22]
  wire [6:0] PECtrl_io_SchePort_ScheduleSize; // @[PE.scala 45:22]
  wire  PECtrl_io_KernelBuf_Enable; // @[PE.scala 45:22]
  wire [9:0] PECtrl_io_KernelBuf_Addr; // @[PE.scala 45:22]
  wire [3:0] PECtrl_io_KernelBuf_BankIdx; // @[PE.scala 45:22]
  wire  PECtrl_io_NeuronBuf_Enable; // @[PE.scala 45:22]
  wire [9:0] PECtrl_io_NeuronBuf_Addr; // @[PE.scala 45:22]
  wire  PECtrl_io_KernelIntra_Enable; // @[PE.scala 45:22]
  wire  PECtrl_io_KernelIntra_ReadWrite; // @[PE.scala 45:22]
  wire [6:0] PECtrl_io_KernelIntra_DataAddr; // @[PE.scala 45:22]
  wire  PECtrl_io_NeuronIntra_Enable; // @[PE.scala 45:22]
  wire  PECtrl_io_NeuronIntra_ReadWrite; // @[PE.scala 45:22]
  wire [6:0] PECtrl_io_NeuronIntra_DataAddr; // @[PE.scala 45:22]
  wire  PECtrl_io_MacEnable; // @[PE.scala 45:22]
  wire [31:0] _io_DataOut_T = kernelintra_io_BankIO_DataOut * neuronintra_io_BankIO_DataOut; // @[PE.scala 67:49]
  wire [31:0] _GEN_0 = PECtrl_io_MacEnable ? _io_DataOut_T : 32'h0; // @[PE.scala 66:40 67:16 69:16]
  IntraBuffer kernelintra ( // @[PE.scala 42:27]
    .clock(kernelintra_clock),
    .reset(kernelintra_reset),
    .io_BankIO_DataIn(kernelintra_io_BankIO_DataIn),
    .io_BankIO_DataAddr(kernelintra_io_BankIO_DataAddr),
    .io_BankIO_ReadWrite(kernelintra_io_BankIO_ReadWrite),
    .io_BankIO_Enable(kernelintra_io_BankIO_Enable),
    .io_BankIO_DataOut(kernelintra_io_BankIO_DataOut)
  );
  IntraBuffer neuronintra ( // @[PE.scala 43:27]
    .clock(neuronintra_clock),
    .reset(neuronintra_reset),
    .io_BankIO_DataIn(neuronintra_io_BankIO_DataIn),
    .io_BankIO_DataAddr(neuronintra_io_BankIO_DataAddr),
    .io_BankIO_ReadWrite(neuronintra_io_BankIO_ReadWrite),
    .io_BankIO_Enable(neuronintra_io_BankIO_Enable),
    .io_BankIO_DataOut(neuronintra_io_BankIO_DataOut)
  );
  PECtrl PECtrl ( // @[PE.scala 45:22]
    .clock(PECtrl_clock),
    .reset(PECtrl_reset),
    .io_SchePort_Mode(PECtrl_io_SchePort_Mode),
    .io_SchePort_Schedule(PECtrl_io_SchePort_Schedule),
    .io_SchePort_ScheduleSize(PECtrl_io_SchePort_ScheduleSize),
    .io_KernelBuf_Enable(PECtrl_io_KernelBuf_Enable),
    .io_KernelBuf_Addr(PECtrl_io_KernelBuf_Addr),
    .io_KernelBuf_BankIdx(PECtrl_io_KernelBuf_BankIdx),
    .io_NeuronBuf_Enable(PECtrl_io_NeuronBuf_Enable),
    .io_NeuronBuf_Addr(PECtrl_io_NeuronBuf_Addr),
    .io_KernelIntra_Enable(PECtrl_io_KernelIntra_Enable),
    .io_KernelIntra_ReadWrite(PECtrl_io_KernelIntra_ReadWrite),
    .io_KernelIntra_DataAddr(PECtrl_io_KernelIntra_DataAddr),
    .io_NeuronIntra_Enable(PECtrl_io_NeuronIntra_Enable),
    .io_NeuronIntra_ReadWrite(PECtrl_io_NeuronIntra_ReadWrite),
    .io_NeuronIntra_DataAddr(PECtrl_io_NeuronIntra_DataAddr),
    .io_MacEnable(PECtrl_io_MacEnable)
  );
  assign io_KernelBuf_Enable = PECtrl_io_KernelBuf_Enable; // @[PE.scala 51:16]
  assign io_KernelBuf_ReadWrite = 1'h0; // @[PE.scala 51:16]
  assign io_KernelBuf_Addr = PECtrl_io_KernelBuf_Addr; // @[PE.scala 51:16]
  assign io_KernelBuf_BankIdx = PECtrl_io_KernelBuf_BankIdx; // @[PE.scala 51:16]
  assign io_NeuronBuf_Enable = PECtrl_io_NeuronBuf_Enable; // @[PE.scala 52:16]
  assign io_NeuronBuf_ReadWrite = 1'h0; // @[PE.scala 52:16]
  assign io_NeuronBuf_Addr = PECtrl_io_NeuronBuf_Addr; // @[PE.scala 52:16]
  assign io_NeuronBuf_BankIdx = 4'h0; // @[PE.scala 52:16]
  assign io_DataOut = _GEN_0[15:0];
  assign kernelintra_clock = clock;
  assign kernelintra_reset = reset;
  assign kernelintra_io_BankIO_DataIn = io_KernelBuf_DataIn; // @[PE.scala 58:32]
  assign kernelintra_io_BankIO_DataAddr = PECtrl_io_KernelIntra_DataAddr; // @[PE.scala 59:34]
  assign kernelintra_io_BankIO_ReadWrite = PECtrl_io_KernelIntra_ReadWrite; // @[PE.scala 60:35]
  assign kernelintra_io_BankIO_Enable = PECtrl_io_KernelIntra_Enable; // @[PE.scala 57:32]
  assign neuronintra_clock = clock;
  assign neuronintra_reset = reset;
  assign neuronintra_io_BankIO_DataIn = io_NeuronBuf_DataIn; // @[PE.scala 62:32]
  assign neuronintra_io_BankIO_DataAddr = PECtrl_io_NeuronIntra_DataAddr; // @[PE.scala 63:34]
  assign neuronintra_io_BankIO_ReadWrite = PECtrl_io_NeuronIntra_ReadWrite; // @[PE.scala 64:35]
  assign neuronintra_io_BankIO_Enable = PECtrl_io_NeuronIntra_Enable; // @[PE.scala 61:32]
  assign PECtrl_clock = clock;
  assign PECtrl_reset = reset;
  assign PECtrl_io_SchePort_Mode = io_SchePort_Mode; // @[PE.scala 48:22]
  assign PECtrl_io_SchePort_Schedule = io_SchePort_Schedule; // @[PE.scala 48:22]
  assign PECtrl_io_SchePort_ScheduleSize = io_SchePort_ScheduleSize; // @[PE.scala 48:22]
endmodule
