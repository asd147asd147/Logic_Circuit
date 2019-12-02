module buttonConvertData(buttonIn,buttonOut,clock,reset);

input [3:0] buttonIn;
output [1:0] buttonOut;
input clock;
input reset;

wire [3:0] b0;
wire  w4;
wire  w5;
wire [1:0] b9;
wire  w12;
wire  w14;
wire  w15;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire  w31;
wire  w33;
wire  w32;
wire  w34;
wire  w35;
wire  w39;
wire  w40;
wire  w42;
wire  w43;
wire  w37;
wire  w45;
wire  w38;
wire  w47;
wire  w46;
wire  w44;
wire  b0_3_w6;
wire  b0_2_w7;
wire  b0_1_w8;
wire  b0_0_w9;
wire  b9_1;
wire  b9_0;

assign b0 = buttonIn;
assign buttonOut = b9;
assign w4 = clock;
assign w5 = reset;

assign b9[1] = b9_1;
assign b9[0] = b9_0;

assign b0_3_w6 = {b0[3]};
assign b0_2_w7 = {b0[2]};
assign b0_1_w8 = {b0[1]};
assign b0_0_w9 = {b0[0]};

levelToPulse
     s0 (
      .clock(w4),
      .reset(w5),
      .check(b0_0_w9),
      .out(w33));

levelToPulse
     s1 (
      .clock(w4),
      .reset(w5),
      .check(b0_1_w8),
      .out(w32));

levelToPulse
     s2 (
      .clock(w4),
      .reset(w5),
      .check(b0_2_w7),
      .out(w34));

levelToPulse
     s3 (
      .clock(w4),
      .reset(w5),
      .check(b0_3_w6),
      .out(w35));

PNU_AND4
     s4 (
      .i2(w12),
      .i3(w14),
      .i4(w15),
      .i1(w33),
      .o1(w37));

PNU_AND4
     s8 (
      .i1(w23),
      .i3(w24),
      .i4(w25),
      .i2(w32),
      .o1(w38));

PNU_AND4
     s6 (
      .i1(w26),
      .i2(w27),
      .i4(w28),
      .i3(w34),
      .o1(w44));

PNU_AND4
     s7 (
      .i1(w29),
      .i2(w30),
      .i3(w31),
      .i4(w35),
      .o1(w46));

PNU_NOT
     s9 (
      .o1(w12),
      .i1(w32));

PNU_NOT
     s10 (
      .o1(w14),
      .i1(w34));

PNU_NOT
     s11 (
      .o1(w15),
      .i1(w35));

PNU_NOT
     s12 (
      .o1(w23),
      .i1(w33));

PNU_NOT
     s13 (
      .o1(w24),
      .i1(w34));

PNU_NOT
     s14 (
      .o1(w25),
      .i1(w35));

PNU_NOT
     s15 (
      .o1(w26),
      .i1(w33));

PNU_NOT
     s16 (
      .o1(w27),
      .i1(w32));

PNU_NOT
     s17 (
      .o1(w28),
      .i1(w35));

PNU_NOT
     s18 (
      .o1(w29),
      .i1(w33));

PNU_NOT
     s19 (
      .o1(w30),
      .i1(w32));

PNU_NOT
     s20 (
      .o1(w31),
      .i1(w34));

PNU_NOT
     s22 (
      .o1(w40),
      .i1(w37));

PNU_AND3
     s24 (
      .o1(b9_0),
      .i1(w42),
      .i2(w43),
      .i3(w45));

PNU_NOT
     s25 (
      .o1(w42),
      .i1(w37));

PNU_NOT
     s26 (
      .o1(w43),
      .i1(w44));

PNU_OR2
     s27 (
      .o1(w45),
      .i1(w38),
      .i2(w46));

PNU_NOT
     s23 (
      .o1(w39),
      .i1(w38));

PNU_AND3
     s28 (
      .o1(b9_1),
      .i3(w39),
      .i2(w40),
      .i1(w47));

PNU_OR2
     s29 (
      .o1(w47),
      .i2(w46),
      .i1(w44));

endmodule

