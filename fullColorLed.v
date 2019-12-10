module fullColorLed(reset,clock,buttonIn,allclear,LED1_RED,LED2_GREEN,LED3_BLUE,LED4_YELLOW,stageOn);

input reset;
input clock;
input [3:0] buttonIn;
output allclear;
output LED1_RED;
output LED2_GREEN;
output LED3_BLUE;
output [1:0] LED4_YELLOW;
input stageOn;

wire [1:0] b0;
wire  w2;
wire [4:0] b36;
wire  w10;
wire [3:0] b21;
wire  w28;
wire  w32;
wire  w29;
wire  w34;
wire [1:0] b29;
wire  w35;
wire  w36;
wire  w37;
wire  w39;
wire  w44;
wire  w40;
wire  w38;
wire  w45;
wire  w42;
wire  w46;
wire [1:0] b38;
wire [1:0] b39;
wire [1:0] b40;
wire [1:0] b41;
wire [1:0] b42;
wire [1:0] b43;
wire [1:0] b37;
wire  w47;
wire  w41;
wire  w43;
wire [1:0] b44;
wire  b36_0_w4;
wire  b36_1_w5;
wire  b36_2_w6;
wire  b36_3_w7;
wire  b36_4_w8;
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
assign w40 = stageOn;

assign b36_0_w4 = {b36[0]};
assign b36_1_w5 = {b36[1]};
assign b36_2_w6 = {b36[2]};
assign b36_3_w7 = {b36[3]};
assign b36_4_w8 = {b36[4]};
assign b21_0_w20 = {b21[0]};
assign b21_1_w23 = {b21[1]};
assign b21_2_w24 = {b21[2]};
assign b21_3_w25 = {b21[3]};

buttonConvertData
     s0 (
      .buttonIn(b21),
      .reset(w29),
      .clock(w29),
      .buttonOut(b43));

ledOnOff
     s1 (
      .F_LED4_YELLOW(b29),
      .F_LED3_BLUE(w35),
      .F_LED2_GREEN(w36),
      .F_LED1_RED(w37),
      .ledOn(w47),
      .dataIn(b44));

StageData
     s2 (
      .datain(b0),
      .clock(w2),
      .stageon(b36_1_w5),
      .reset(w29),
      .dataout(b41));

tFFTwoCnt
     s4 (
      .Q(b0),
      .clock(w2),
      .reset(w29));

StageData
     s5 (
      .datain(b0),
      .clock(w2),
      .stageon(b36_2_w6),
      .reset(w29),
      .dataout(b40));

StageData
     s7 (
      .datain(b0),
      .clock(w2),
      .stageon(b36_4_w8),
      .reset(w29),
      .dataout(b38));

StageData
     s8 (
      .datain(b0),
      .clock(w2),
      .stageon(b36_0_w4),
      .reset(w29),
      .dataout(b42));

stageOn
     s3 (
      .reset(w29),
      .nextStage(w39),
      .stageOut(b36));

PNU_OR2
     s9 (
      .i2(w10),
      .i1(w32),
      .o1(w29));

compareStage
     s10 (
      .f(w32),
      .t(w42),
      .myIn(b43),
      .data(b37),
      .buttonOn(w41));

dataMux
     s11 (
      .nextData(w45),
      .reset(w46),
      .data5(b38),
      .data4(b39),
      .data3(b40),
      .data2(b41),
      .data1(b42),
      .currentData(b37));

PNU_OR4
     s12 (
      .i4(b21_0_w20),
      .i3(b21_1_w23),
      .i2(b21_2_w24),
      .i1(b21_3_w25),
      .o1(w41));

PNU_OR2
     s15 (
      .o1(w28),
      .i2(w29),
      .i1(w38));

PNU_OR2
     s16 (
      .i2(w29),
      .i1(w38),
      .o1(w46));

stageClear
     s17 (
      .reset(w28),
      .allclear(w34),
      .stage(b36),
      .clear(w38),
      .trueStack(w42));

PNU_OR2
     s18 (
      .o1(w39),
      .i2(w40),
      .i1(w38));

showData
     s19 (
      .stage(b36),
      .clear(w44),
      .show(w43));

PNU_OR2
     s20 (
      .o1(w44),
      .i1(w40),
      .i2(w38));

PNU_OR2
     s21 (
      .o1(w45),
      .i2(w42),
      .i1(w43));

StageData
     s6 (
      .datain(b0),
      .clock(w2),
      .stageon(b36_3_w7),
      .reset(w29),
      .dataout(b39));

PNU_OR2
     s23 (
      .o1(w47),
      .i2(w41),
      .i1(w43));

dataOr2
     s22 (
      .dataIn1(b43),
      .dataIn2(b37),
      .dataOut(b44));

endmodule

