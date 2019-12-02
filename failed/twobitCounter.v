module twobitCounter(clk,rst,out);

input clk;
input rst;
output [1:0] out;

wire [1:0] b4;
wire  w6;
wire  w10;
wire  w8;
wire  w7;
wire  b4_0;
wire  b4_0_w9;
wire  b4_1;
wire  b4_1_w5;

assign w8 = clk;
assign w7 = rst;
assign out = b4;

assign b4[1] = b4_1;
assign b4[0] = b4_0;

assign b4_0_w9 = {b4[0]};
assign b4_1_w5 = {b4[1]};

PNU_DFF
     s0 (
      .D(w6),
      .Q(b4_0),
      .clock(w8),
      .reset(w7));

PNU_NOT
     s2 (
      .o1(w6),
      .i1(b4_0_w9));

PNU_XOR2
     s3 (
      .i2(b4_0_w9),
      .i1(b4_1_w5),
      .o1(w10));

PNU_DFF
     s1 (
      .Q(b4_1),
      .D(w10),
      .clock(w8),
      .reset(w7));

endmodule

