module dataOr2(dataIn1,dataIn2,dataOut);

input [1:0] dataIn1;
input [1:0] dataIn2;
output [1:0] dataOut;

wire [1:0] b0;
wire [1:0] b1;
wire [1:0] b6;
wire  b0_0_w2;
wire  b0_1_w3;
wire  b1_0_w4;
wire  b1_1_w5;
wire  b6_1;
wire  b6_0;

assign b0 = dataIn1;
assign b1 = dataIn2;
assign dataOut = b6;

assign b6[1] = b6_1;
assign b6[0] = b6_0;

assign b0_0_w2 = {b0[0]};
assign b0_1_w3 = {b0[1]};
assign b1_0_w4 = {b1[0]};
assign b1_1_w5 = {b1[1]};

PNU_OR2
     s0 (
      .i1(b0_0_w2),
      .i2(b1_0_w4),
      .o1(b6_0));

PNU_OR2
     s1 (
      .i1(b0_1_w3),
      .i2(b1_1_w5),
      .o1(b6_1));

endmodule

