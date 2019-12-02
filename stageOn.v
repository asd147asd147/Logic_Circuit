module stageOn(reset,nextStage,stageOut);

input reset;
input nextStage;
output [4:0] stageOut;

wire  w0;
wire [4:0] b7;
wire  w9;
wire  b7_4;
wire  b7_0;
wire  b7_0_w7;
wire  b7_1;
wire  b7_1_w11;
wire  b7_2;
wire  b7_2_w10;
wire  b7_3;
wire  b7_3_w15;

assign w0 = reset;
assign w9 = nextStage;
assign stageOut = b7;

assign b7[4] = b7_4;
assign b7[3] = b7_3;
assign b7[2] = b7_2;
assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b7_0_w7 = {b7[0]};
assign b7_1_w11 = {b7[1]};
assign b7_2_w10 = {b7[2]};
assign b7_3_w15 = {b7[3]};

PNU_DFF
     s0 (
      .reset(w0),
      .Q(b7_0),
      .D(w9),
      .clock(w9));

PNU_DFF
     s1 (
      .reset(w0),
      .D(b7_0_w7),
      .Q(b7_1),
      .clock(w9));

PNU_DFF
     s2 (
      .reset(w0),
      .D(b7_1_w11),
      .Q(b7_2),
      .clock(w9));

PNU_DFF
     s3 (
      .reset(w0),
      .D(b7_2_w10),
      .Q(b7_3),
      .clock(w9));

PNU_DFF
     s4 (
      .reset(w0),
      .Q(b7_4),
      .D(b7_3_w15),
      .clock(w9));

endmodule

