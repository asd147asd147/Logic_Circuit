module tFFTwoCnt(Q,reset,clock);

output [1:0] Q;
input reset;
input clock;

wire [1:0] b1;
wire  w3;
wire  w5;
wire  b1_1;
wire  b1_0;
wire  b1_0_w4;

assign Q = b1;
assign w3 = reset;
assign w5 = clock;

assign b1[1] = b1_1;
assign b1[0] = b1_0;

assign b1_0_w4 = {b1[0]};

tFF
     s0 (
      .Q(b1_1),
      .reset(w3),
      .T(b1_0_w4),
      .clock(w5));

tFF
     s1 (
      .reset(w3),
      .Q(b1_0),
      .T(w5),
      .clock(w5));

endmodule

