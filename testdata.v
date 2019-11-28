module testdata(rstgame,clk,data1,data2,data3,stage1,stage2,stage3);

input rstgame;
input clk;
output [1:0] data1;
output [1:0] data2;
output [1:0] data3;
input stage1;
input stage2;
input stage3;

wire  w0;
wire  w1;
wire [1:0] b2;
wire [1:0] b3;
wire [1:0] b4;
wire [1:0] b5;
wire  w6;
wire  w7;
wire  w8;

assign w0 = rstgame;
assign w1 = clk;
assign data1 = b3;
assign data2 = b4;
assign data3 = b5;
assign w6 = stage1;
assign w7 = stage2;
assign w8 = stage3;

seq_register
     s0 (
      .rst(w0),
      .clk(w1),
      .tbcnt(b2),
      .data(b3),
      .stageon(w6));

seq_register
     s1 (
      .rst(w0),
      .clk(w1),
      .tbcnt(b2),
      .data(b4),
      .stageon(w7));

seq_register
     s2 (
      .rst(w0),
      .clk(w1),
      .tbcnt(b2),
      .data(b5),
      .stageon(w8));

twobitCounter
     s3 (
      .rst(w0),
      .clk(w1),
      .out(b2));

endmodule

