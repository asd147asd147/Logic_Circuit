module testdata(rstgame,clk,data2,data3,stage1,stage3,button,data1);

input rstgame;
input clk;
output [1:0] data2;
output [1:0] data3;
input stage1;
input stage3;
input [3:0] button;
output [1:0] data1;

wire  w1;
wire [1:0] b2;
wire [1:0] b4;
wire [1:0] b5;
wire  w8;
wire  w9;
wire [3:0] b9;
wire  w13;
wire  w15;
wire  w14;
wire  w16;
wire  w17;
wire  w18;
wire [1:0] b13;

assign w17 = rstgame;
assign w1 = clk;
assign data2 = b4;
assign data3 = b5;
assign w9 = stage1;
assign w8 = stage3;
assign b9 = button;
assign data1 = b13;

seq_register
     s0 (
      .clk(w1),
      .tbcnt(b2),
      .stageon(w9),
      .rst(w16),
      .data(b13));

seq_register
     s1 (
      .clk(w1),
      .tbcnt(b2),
      .data(b4),
      .stageon(w14),
      .rst(w16));

seq_register
     s2 (
      .clk(w1),
      .tbcnt(b2),
      .data(b5),
      .stageon(w8),
      .rst(w16));

twobitCounter
     s3 (
      .clk(w1),
      .out(b2),
      .rst(w16));

checkbutton
     s4 (
      .button(b9),
      .true(w15),
      .false(w18),
      .datain(b13));

PNU_OR2
     s6 (
      .o1(w13),
      .i1(w15),
      .i2(w18));

PNU_DFF
     s5 (
      .clock(w13),
      .D(w15),
      .Q(w14),
      .reset(w16));

PNU_OR2
     s7 (
      .o1(w16),
      .i2(w17),
      .i1(w18));

endmodule

