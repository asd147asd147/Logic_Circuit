module fullColorLed(reset,clock,buttonIn,allclear,LED1_RED,LED2_GREEN,LED3_BLUE,LED4_YELLOW);

input reset;
input clock;
input [3:0] buttonIn;
output allclear;
output LED1_RED;
output LED2_GREEN;
output LED3_BLUE;
output [1:0] LED4_YELLOW;

wire [1:0] b0;
wire  w2;
wire [4:0] b23;
wire  w10;
wire [1:0] b13;
wire [1:0] b14;
wire [1:0] b15;
wire [1:0] b16;
wire [1:0] b17;
wire [1:0] b18;
wire [3:0] b21;
wire  w28;
wire  w27;
wire  w32;
wire  w31;
wire  w29;
wire  w30;
wire  w33;
wire [1:0] b27;
wire  w34;
wire [1:0] b29;
wire  w35;
wire  w36;
wire  w37;
wire  b23_0_w4;
wire  b23_1_w5;
wire  b23_2_w6;
wire  b23_3_w7;
wire  b23_4_w8;
wire  b21_0_w20;
wire  b21_1_w23;
wire  b21_2_w24;
wire  b21_3_w25;

assign w10 = reset;
assign w2 = clock;
assign b21 = buttonIn;
assign allclear = w34;
assign LED1_RED = w37;
assign LED2_GREEN = w36;
assign LED3_BLUE = w35;
assign LED4_YELLOW = b29;

assign b23_0_w4 = {b23[0]};
assign b23_1_w5 = {b23[1]};
assign b23_2_w6 = {b23[2]};
assign b23_3_w7 = {b23[3]};
assign b23_4_w8 = {b23[4]};
assign b21_0_w20 = {b21[0]};
assign b21_1_w23 = {b21[1]};
assign b21_2_w24 = {b21[2]};
assign b21_3_w25 = {b21[3]};

buttonConvertData
     s0 (
      .buttonIn(b21),
      .reset(w29),
      .clock(w29),
      .buttonOut(b27));

ledOnOff
     s1 (
      .ledOn(w33),
      .dataIn(b27),
      .F_LED4_YELLOW(b29),
      .F_LED3_BLUE(w35),
      .F_LED2_GREEN(w36),
      .F_LED1_RED(w37));

StageData
     s2 (
      .datain(b0),
      .clock(w2),
      .stageon(b23_1_w5),
      .dataout(b14),
      .reset(w29));

tFFTwoCnt
     s4 (
      .Q(b0),
      .clock(w2),
      .reset(w29));

StageData
     s5 (
      .datain(b0),
      .clock(w2),
      .stageon(b23_2_w6),
      .dataout(b15),
      .reset(w29));

StageData
     s6 (
      .datain(b0),
      .clock(w2),
      .stageon(b23_3_w7),
      .dataout(b16),
      .reset(w29));

StageData
     s7 (
      .datain(b0),
      .clock(w2),
      .stageon(b23_4_w8),
      .dataout(b17),
      .reset(w29));

StageData
     s8 (
      .datain(b0),
      .clock(w2),
      .stageon(b23_0_w4),
      .dataout(b13),
      .reset(w29));

stageOn
     s3 (
      .stageOut(b23),
      .reset(w29),
      .nextStage(w30));

PNU_OR2
     s9 (
      .i2(w10),
      .i1(w32),
      .o1(w29));

compareStage
     s10 (
      .data(b18),
      .t(w27),
      .f(w32),
      .buttonOn(w33),
      .myIn(b27));

dataMux
     s11 (
      .data1(b13),
      .data2(b14),
      .data3(b15),
      .data4(b16),
      .data5(b17),
      .currentData(b18),
      .nextData(w27),
      .reset(w31));

PNU_OR4
     s12 (
      .i4(b21_0_w20),
      .i3(b21_1_w23),
      .i2(b21_2_w24),
      .i1(b21_3_w25),
      .o1(w33));

PNU_OR2
     s15 (
      .o1(w28),
      .i2(w29),
      .i1(w30));

PNU_OR2
     s16 (
      .o1(w31),
      .i2(w29),
      .i1(w30));

stageClear
     s17 (
      .stage(b23),
      .reset(w28),
      .trueStack(w27),
      .clear(w30),
      .allclear(w34));

endmodule

