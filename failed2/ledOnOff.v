module ledOnOff(dataIn,F_LED1_RED,F_LED2_GREEN,F_LED3_BLUE,F_LED4_YELLOW,ledOn);

input [1:0] dataIn;
output F_LED1_RED;
output F_LED2_GREEN;
output F_LED3_BLUE;
output [1:0] F_LED4_YELLOW;
input ledOn;

wire [1:0] b0;
wire  w3;
wire  w4;
wire  w5;
wire  w8;
wire  w9;
wire  w13;
wire  w14;
wire  w12;
wire [1:0] b11;
wire  b0_1_w15;
wire  b0_0_w11;
wire  b11_0;

assign b0 = dataIn;
assign F_LED1_RED = w3;
assign F_LED2_GREEN = w4;
assign F_LED3_BLUE = w5;
assign F_LED4_YELLOW = b11;
assign w12 = ledOn;

assign b11[1] = b11_0;
assign b11[0] = b11_0;

assign b0_1_w15 = {b0[1]};
assign b0_0_w11 = {b0[0]};

PNU_AND3
     s0 (
      .o1(w3),
      .i2(w8),
      .i3(w9),
      .i1(w12));

PNU_NOT
     s1 (
      .o1(w8),
      .i1(b0_1_w15));

PNU_NOT
     s2 (
      .o1(w9),
      .i1(b0_0_w11));

PNU_AND3
     s3 (
      .o1(w4),
      .i2(w13),
      .i1(w12),
      .i3(b0_0_w11));

PNU_NOT
     s4 (
      .o1(w13),
      .i1(b0_1_w15));

PNU_AND3
     s5 (
      .o1(w5),
      .i3(w14),
      .i1(w12),
      .i2(b0_1_w15));

PNU_NOT
     s6 (
      .o1(w14),
      .i1(b0_0_w11));

PNU_AND3
     s7 (
      .i1(w12),
      .i2(b0_1_w15),
      .i3(b0_0_w11),
      .o1(b11_0));

endmodule

