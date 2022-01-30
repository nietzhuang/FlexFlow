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
  reg [15:0] buffer_0; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_1; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_2; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_3; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_4; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_5; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_6; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_7; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_8; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_9; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_10; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_11; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_12; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_13; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_14; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_15; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_16; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_17; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_18; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_19; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_20; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_21; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_22; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_23; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_24; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_25; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_26; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_27; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_28; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_29; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_30; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_31; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_32; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_33; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_34; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_35; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_36; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_37; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_38; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_39; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_40; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_41; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_42; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_43; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_44; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_45; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_46; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_47; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_48; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_49; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_50; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_51; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_52; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_53; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_54; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_55; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_56; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_57; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_58; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_59; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_60; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_61; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_62; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_63; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_64; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_65; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_66; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_67; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_68; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_69; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_70; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_71; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_72; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_73; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_74; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_75; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_76; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_77; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_78; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_79; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_80; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_81; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_82; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_83; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_84; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_85; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_86; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_87; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_88; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_89; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_90; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_91; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_92; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_93; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_94; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_95; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_96; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_97; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_98; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_99; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_100; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_101; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_102; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_103; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_104; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_105; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_106; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_107; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_108; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_109; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_110; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_111; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_112; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_113; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_114; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_115; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_116; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_117; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_118; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_119; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_120; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_121; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_122; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_123; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_124; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_125; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_126; // @[IntraBuffer.scala 20:24]
  reg [15:0] buffer_127; // @[IntraBuffer.scala 20:24]
  wire [15:0] _GEN_129 = 7'h1 == io_BankIO_DataAddr ? buffer_1 : buffer_0; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_130 = 7'h2 == io_BankIO_DataAddr ? buffer_2 : _GEN_129; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_131 = 7'h3 == io_BankIO_DataAddr ? buffer_3 : _GEN_130; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_132 = 7'h4 == io_BankIO_DataAddr ? buffer_4 : _GEN_131; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_133 = 7'h5 == io_BankIO_DataAddr ? buffer_5 : _GEN_132; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_134 = 7'h6 == io_BankIO_DataAddr ? buffer_6 : _GEN_133; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_135 = 7'h7 == io_BankIO_DataAddr ? buffer_7 : _GEN_134; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_136 = 7'h8 == io_BankIO_DataAddr ? buffer_8 : _GEN_135; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_137 = 7'h9 == io_BankIO_DataAddr ? buffer_9 : _GEN_136; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_138 = 7'ha == io_BankIO_DataAddr ? buffer_10 : _GEN_137; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_139 = 7'hb == io_BankIO_DataAddr ? buffer_11 : _GEN_138; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_140 = 7'hc == io_BankIO_DataAddr ? buffer_12 : _GEN_139; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_141 = 7'hd == io_BankIO_DataAddr ? buffer_13 : _GEN_140; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_142 = 7'he == io_BankIO_DataAddr ? buffer_14 : _GEN_141; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_143 = 7'hf == io_BankIO_DataAddr ? buffer_15 : _GEN_142; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_144 = 7'h10 == io_BankIO_DataAddr ? buffer_16 : _GEN_143; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_145 = 7'h11 == io_BankIO_DataAddr ? buffer_17 : _GEN_144; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_146 = 7'h12 == io_BankIO_DataAddr ? buffer_18 : _GEN_145; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_147 = 7'h13 == io_BankIO_DataAddr ? buffer_19 : _GEN_146; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_148 = 7'h14 == io_BankIO_DataAddr ? buffer_20 : _GEN_147; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_149 = 7'h15 == io_BankIO_DataAddr ? buffer_21 : _GEN_148; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_150 = 7'h16 == io_BankIO_DataAddr ? buffer_22 : _GEN_149; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_151 = 7'h17 == io_BankIO_DataAddr ? buffer_23 : _GEN_150; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_152 = 7'h18 == io_BankIO_DataAddr ? buffer_24 : _GEN_151; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_153 = 7'h19 == io_BankIO_DataAddr ? buffer_25 : _GEN_152; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_154 = 7'h1a == io_BankIO_DataAddr ? buffer_26 : _GEN_153; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_155 = 7'h1b == io_BankIO_DataAddr ? buffer_27 : _GEN_154; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_156 = 7'h1c == io_BankIO_DataAddr ? buffer_28 : _GEN_155; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_157 = 7'h1d == io_BankIO_DataAddr ? buffer_29 : _GEN_156; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_158 = 7'h1e == io_BankIO_DataAddr ? buffer_30 : _GEN_157; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_159 = 7'h1f == io_BankIO_DataAddr ? buffer_31 : _GEN_158; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_160 = 7'h20 == io_BankIO_DataAddr ? buffer_32 : _GEN_159; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_161 = 7'h21 == io_BankIO_DataAddr ? buffer_33 : _GEN_160; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_162 = 7'h22 == io_BankIO_DataAddr ? buffer_34 : _GEN_161; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_163 = 7'h23 == io_BankIO_DataAddr ? buffer_35 : _GEN_162; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_164 = 7'h24 == io_BankIO_DataAddr ? buffer_36 : _GEN_163; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_165 = 7'h25 == io_BankIO_DataAddr ? buffer_37 : _GEN_164; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_166 = 7'h26 == io_BankIO_DataAddr ? buffer_38 : _GEN_165; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_167 = 7'h27 == io_BankIO_DataAddr ? buffer_39 : _GEN_166; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_168 = 7'h28 == io_BankIO_DataAddr ? buffer_40 : _GEN_167; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_169 = 7'h29 == io_BankIO_DataAddr ? buffer_41 : _GEN_168; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_170 = 7'h2a == io_BankIO_DataAddr ? buffer_42 : _GEN_169; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_171 = 7'h2b == io_BankIO_DataAddr ? buffer_43 : _GEN_170; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_172 = 7'h2c == io_BankIO_DataAddr ? buffer_44 : _GEN_171; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_173 = 7'h2d == io_BankIO_DataAddr ? buffer_45 : _GEN_172; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_174 = 7'h2e == io_BankIO_DataAddr ? buffer_46 : _GEN_173; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_175 = 7'h2f == io_BankIO_DataAddr ? buffer_47 : _GEN_174; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_176 = 7'h30 == io_BankIO_DataAddr ? buffer_48 : _GEN_175; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_177 = 7'h31 == io_BankIO_DataAddr ? buffer_49 : _GEN_176; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_178 = 7'h32 == io_BankIO_DataAddr ? buffer_50 : _GEN_177; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_179 = 7'h33 == io_BankIO_DataAddr ? buffer_51 : _GEN_178; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_180 = 7'h34 == io_BankIO_DataAddr ? buffer_52 : _GEN_179; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_181 = 7'h35 == io_BankIO_DataAddr ? buffer_53 : _GEN_180; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_182 = 7'h36 == io_BankIO_DataAddr ? buffer_54 : _GEN_181; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_183 = 7'h37 == io_BankIO_DataAddr ? buffer_55 : _GEN_182; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_184 = 7'h38 == io_BankIO_DataAddr ? buffer_56 : _GEN_183; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_185 = 7'h39 == io_BankIO_DataAddr ? buffer_57 : _GEN_184; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_186 = 7'h3a == io_BankIO_DataAddr ? buffer_58 : _GEN_185; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_187 = 7'h3b == io_BankIO_DataAddr ? buffer_59 : _GEN_186; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_188 = 7'h3c == io_BankIO_DataAddr ? buffer_60 : _GEN_187; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_189 = 7'h3d == io_BankIO_DataAddr ? buffer_61 : _GEN_188; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_190 = 7'h3e == io_BankIO_DataAddr ? buffer_62 : _GEN_189; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_191 = 7'h3f == io_BankIO_DataAddr ? buffer_63 : _GEN_190; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_192 = 7'h40 == io_BankIO_DataAddr ? buffer_64 : _GEN_191; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_193 = 7'h41 == io_BankIO_DataAddr ? buffer_65 : _GEN_192; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_194 = 7'h42 == io_BankIO_DataAddr ? buffer_66 : _GEN_193; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_195 = 7'h43 == io_BankIO_DataAddr ? buffer_67 : _GEN_194; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_196 = 7'h44 == io_BankIO_DataAddr ? buffer_68 : _GEN_195; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_197 = 7'h45 == io_BankIO_DataAddr ? buffer_69 : _GEN_196; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_198 = 7'h46 == io_BankIO_DataAddr ? buffer_70 : _GEN_197; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_199 = 7'h47 == io_BankIO_DataAddr ? buffer_71 : _GEN_198; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_200 = 7'h48 == io_BankIO_DataAddr ? buffer_72 : _GEN_199; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_201 = 7'h49 == io_BankIO_DataAddr ? buffer_73 : _GEN_200; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_202 = 7'h4a == io_BankIO_DataAddr ? buffer_74 : _GEN_201; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_203 = 7'h4b == io_BankIO_DataAddr ? buffer_75 : _GEN_202; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_204 = 7'h4c == io_BankIO_DataAddr ? buffer_76 : _GEN_203; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_205 = 7'h4d == io_BankIO_DataAddr ? buffer_77 : _GEN_204; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_206 = 7'h4e == io_BankIO_DataAddr ? buffer_78 : _GEN_205; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_207 = 7'h4f == io_BankIO_DataAddr ? buffer_79 : _GEN_206; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_208 = 7'h50 == io_BankIO_DataAddr ? buffer_80 : _GEN_207; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_209 = 7'h51 == io_BankIO_DataAddr ? buffer_81 : _GEN_208; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_210 = 7'h52 == io_BankIO_DataAddr ? buffer_82 : _GEN_209; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_211 = 7'h53 == io_BankIO_DataAddr ? buffer_83 : _GEN_210; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_212 = 7'h54 == io_BankIO_DataAddr ? buffer_84 : _GEN_211; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_213 = 7'h55 == io_BankIO_DataAddr ? buffer_85 : _GEN_212; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_214 = 7'h56 == io_BankIO_DataAddr ? buffer_86 : _GEN_213; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_215 = 7'h57 == io_BankIO_DataAddr ? buffer_87 : _GEN_214; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_216 = 7'h58 == io_BankIO_DataAddr ? buffer_88 : _GEN_215; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_217 = 7'h59 == io_BankIO_DataAddr ? buffer_89 : _GEN_216; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_218 = 7'h5a == io_BankIO_DataAddr ? buffer_90 : _GEN_217; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_219 = 7'h5b == io_BankIO_DataAddr ? buffer_91 : _GEN_218; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_220 = 7'h5c == io_BankIO_DataAddr ? buffer_92 : _GEN_219; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_221 = 7'h5d == io_BankIO_DataAddr ? buffer_93 : _GEN_220; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_222 = 7'h5e == io_BankIO_DataAddr ? buffer_94 : _GEN_221; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_223 = 7'h5f == io_BankIO_DataAddr ? buffer_95 : _GEN_222; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_224 = 7'h60 == io_BankIO_DataAddr ? buffer_96 : _GEN_223; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_225 = 7'h61 == io_BankIO_DataAddr ? buffer_97 : _GEN_224; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_226 = 7'h62 == io_BankIO_DataAddr ? buffer_98 : _GEN_225; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_227 = 7'h63 == io_BankIO_DataAddr ? buffer_99 : _GEN_226; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_228 = 7'h64 == io_BankIO_DataAddr ? buffer_100 : _GEN_227; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_229 = 7'h65 == io_BankIO_DataAddr ? buffer_101 : _GEN_228; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_230 = 7'h66 == io_BankIO_DataAddr ? buffer_102 : _GEN_229; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_231 = 7'h67 == io_BankIO_DataAddr ? buffer_103 : _GEN_230; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_232 = 7'h68 == io_BankIO_DataAddr ? buffer_104 : _GEN_231; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_233 = 7'h69 == io_BankIO_DataAddr ? buffer_105 : _GEN_232; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_234 = 7'h6a == io_BankIO_DataAddr ? buffer_106 : _GEN_233; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_235 = 7'h6b == io_BankIO_DataAddr ? buffer_107 : _GEN_234; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_236 = 7'h6c == io_BankIO_DataAddr ? buffer_108 : _GEN_235; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_237 = 7'h6d == io_BankIO_DataAddr ? buffer_109 : _GEN_236; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_238 = 7'h6e == io_BankIO_DataAddr ? buffer_110 : _GEN_237; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_239 = 7'h6f == io_BankIO_DataAddr ? buffer_111 : _GEN_238; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_240 = 7'h70 == io_BankIO_DataAddr ? buffer_112 : _GEN_239; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_241 = 7'h71 == io_BankIO_DataAddr ? buffer_113 : _GEN_240; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_242 = 7'h72 == io_BankIO_DataAddr ? buffer_114 : _GEN_241; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_243 = 7'h73 == io_BankIO_DataAddr ? buffer_115 : _GEN_242; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_244 = 7'h74 == io_BankIO_DataAddr ? buffer_116 : _GEN_243; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_245 = 7'h75 == io_BankIO_DataAddr ? buffer_117 : _GEN_244; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_246 = 7'h76 == io_BankIO_DataAddr ? buffer_118 : _GEN_245; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_247 = 7'h77 == io_BankIO_DataAddr ? buffer_119 : _GEN_246; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_248 = 7'h78 == io_BankIO_DataAddr ? buffer_120 : _GEN_247; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_249 = 7'h79 == io_BankIO_DataAddr ? buffer_121 : _GEN_248; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_250 = 7'h7a == io_BankIO_DataAddr ? buffer_122 : _GEN_249; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_251 = 7'h7b == io_BankIO_DataAddr ? buffer_123 : _GEN_250; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_252 = 7'h7c == io_BankIO_DataAddr ? buffer_124 : _GEN_251; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_253 = 7'h7d == io_BankIO_DataAddr ? buffer_125 : _GEN_252; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_254 = 7'h7e == io_BankIO_DataAddr ? buffer_126 : _GEN_253; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_255 = 7'h7f == io_BankIO_DataAddr ? buffer_127 : _GEN_254; // @[IntraBuffer.scala 27:{25,25}]
  wire [15:0] _GEN_384 = ~io_BankIO_ReadWrite ? 16'h0 : _GEN_255; // @[IntraBuffer.scala 22:21 24:43 27:25]
  assign io_BankIO_DataOut = io_BankIO_Enable ? _GEN_384 : 16'h0; // @[IntraBuffer.scala 22:21 23:37]
  always @(posedge clock) begin
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_0 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h0 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_0 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_1 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_1 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_2 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_2 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_3 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_3 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_4 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_4 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_5 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_5 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_6 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_6 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_7 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_7 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_8 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h8 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_8 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_9 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h9 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_9 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_10 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'ha == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_10 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_11 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'hb == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_11 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_12 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'hc == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_12 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_13 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'hd == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_13 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_14 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'he == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_14 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_15 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'hf == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_15 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_16 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h10 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_16 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_17 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h11 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_17 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_18 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h12 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_18 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_19 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h13 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_19 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_20 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h14 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_20 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_21 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h15 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_21 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_22 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h16 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_22 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_23 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h17 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_23 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_24 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h18 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_24 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_25 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h19 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_25 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_26 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_26 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_27 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_27 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_28 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_28 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_29 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_29 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_30 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_30 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_31 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h1f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_31 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_32 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h20 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_32 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_33 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h21 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_33 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_34 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h22 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_34 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_35 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h23 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_35 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_36 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h24 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_36 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_37 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h25 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_37 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_38 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h26 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_38 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_39 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h27 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_39 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_40 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h28 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_40 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_41 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h29 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_41 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_42 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_42 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_43 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_43 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_44 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_44 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_45 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_45 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_46 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_46 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_47 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h2f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_47 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_48 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h30 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_48 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_49 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h31 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_49 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_50 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h32 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_50 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_51 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h33 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_51 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_52 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h34 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_52 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_53 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h35 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_53 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_54 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h36 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_54 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_55 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h37 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_55 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_56 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h38 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_56 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_57 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h39 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_57 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_58 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_58 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_59 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_59 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_60 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_60 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_61 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_61 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_62 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_62 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_63 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h3f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_63 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_64 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h40 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_64 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_65 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h41 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_65 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_66 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h42 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_66 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_67 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h43 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_67 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_68 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h44 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_68 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_69 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h45 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_69 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_70 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h46 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_70 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_71 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h47 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_71 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_72 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h48 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_72 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_73 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h49 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_73 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_74 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_74 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_75 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_75 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_76 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_76 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_77 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_77 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_78 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_78 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_79 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h4f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_79 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_80 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h50 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_80 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_81 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h51 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_81 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_82 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h52 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_82 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_83 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h53 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_83 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_84 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h54 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_84 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_85 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h55 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_85 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_86 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h56 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_86 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_87 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h57 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_87 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_88 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h58 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_88 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_89 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h59 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_89 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_90 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_90 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_91 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_91 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_92 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_92 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_93 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_93 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_94 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_94 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_95 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h5f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_95 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_96 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h60 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_96 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_97 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h61 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_97 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_98 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h62 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_98 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_99 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h63 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_99 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_100 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h64 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_100 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_101 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h65 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_101 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_102 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h66 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_102 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_103 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h67 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_103 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_104 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h68 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_104 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_105 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h69 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_105 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_106 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_106 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_107 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_107 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_108 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_108 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_109 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_109 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_110 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_110 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_111 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h6f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_111 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_112 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h70 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_112 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_113 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h71 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_113 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_114 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h72 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_114 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_115 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h73 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_115 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_116 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h74 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_116 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_117 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h75 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_117 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_118 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h76 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_118 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_119 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h77 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_119 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_120 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h78 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_120 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_121 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h79 == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_121 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_122 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7a == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_122 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_123 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7b == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_123 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_124 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7c == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_124 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_125 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7d == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_125 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_126 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7e == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_126 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
        end
      end
    end
    if (reset) begin // @[IntraBuffer.scala 20:24]
      buffer_127 <= 16'h0; // @[IntraBuffer.scala 20:24]
    end else if (io_BankIO_Enable) begin // @[IntraBuffer.scala 23:37]
      if (~io_BankIO_ReadWrite) begin // @[IntraBuffer.scala 24:43]
        if (7'h7f == io_BankIO_DataAddr) begin // @[IntraBuffer.scala 25:34]
          buffer_127 <= io_BankIO_DataIn; // @[IntraBuffer.scala 25:34]
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
