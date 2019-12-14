module tFF(clock,Q,reset,T);

input clock;
output Q;
input reset;
input T;

wire  w0;
wire  w2;
wire  w4;
wire  w3;
wire  w5;

assign w0 = clock;
assign Q = w3;
assign w2 = reset;
assign w5 = T;

PNU_DFF
     s0 (
      .clock(w0),
      .reset(w2),
      .D(w4),
      .Q(w3));

PNU_XOR2
     s1 (
      .o1(w4),
      .i1(w3),
      .i2(w5));

endmodule

