module seq_register(rst,clk,stageon,data,tbcnt);

input rst;
input clk;
input stageon;
output [1:0] data;
input [1:0] tbcnt;

wire  w0;
wire  w1;
wire  w2;
wire  w7;
wire [1:0] b7;
wire [1:0] b9;
wire  w10;
wire  b7_1;
wire  b7_0;
wire  b9_1_w11;
wire  b9_0_w12;

assign w0 = rst;
assign w10 = clk;
assign w7 = stageon;
assign data = b7;
assign b9 = tbcnt;

assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b9_1_w11 = {b9[1]};
assign b9_0_w12 = {b9[0]};

PNU_DFF
     s0 (
      .reset(w0),
      .Q(w1),
      .D(w7),
      .clock(w10));

PNU_DFF_Ce
     s1 (
      .reset(w0),
      .Ce(w2),
      .Q(b7_1),
      .D(b9_1_w11),
      .clock(w10));

PNU_NOT
     s3 (
      .i1(w1),
      .o1(w2));

PNU_DFF_Ce
     s2 (
      .reset(w0),
      .Ce(w2),
      .Q(b7_0),
      .clock(w10),
      .D(b9_0_w12));

endmodule

