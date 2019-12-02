module StageData(reset,clock,stageon,datain,dataout);

input reset;
input clock;
input stageon;
input [1:0] datain;
output [1:0] dataout;

wire  w0;
wire  w1;
wire  w2;
wire [1:0] b3;
wire [1:0] b8;
wire  w12;
wire  w11;
wire  b3_0_w4;
wire  b3_1_w5;
wire  b8_1;
wire  b8_0;

assign w0 = reset;
assign w1 = clock;
assign w2 = stageon;
assign b3 = datain;
assign dataout = b8;

assign b8[1] = b8_1;
assign b8[0] = b8_0;

assign b3_0_w4 = {b3[0]};
assign b3_1_w5 = {b3[1]};

PNU_DFF
     s0 (
      .reset(w0),
      .clock(w1),
      .D(w2),
      .Q(w12));

PNU_DFF_Ce
     s1 (
      .reset(w0),
      .clock(w1),
      .D(b3_1_w5),
      .Q(b8_1),
      .Ce(w11));

PNU_DFF_Ce
     s2 (
      .reset(w0),
      .clock(w1),
      .D(b3_0_w4),
      .Q(b8_0),
      .Ce(w11));

PNU_NOT
     s3 (
      .i1(w12),
      .o1(w11));

endmodule

