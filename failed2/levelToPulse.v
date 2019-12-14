module levelToPulse(check,clock,reset,out);

input check;
input clock;
input reset;
output out;

wire  w1;
wire  w2;
wire  w3;
wire  w4;
wire  w5;
wire  w6;

assign w5 = check;
assign w1 = clock;
assign w2 = reset;
assign out = w6;

PNU_DFF
     s0 (
      .clock(w1),
      .reset(w2),
      .Q(w3),
      .D(w5));

PNU_NOT
     s1 (
      .i1(w3),
      .o1(w4));

PNU_AND2
     s2 (
      .i2(w4),
      .i1(w5),
      .o1(w6));

endmodule

