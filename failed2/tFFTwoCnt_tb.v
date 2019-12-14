module tFFTwoCnt_tb;

wire [1:0] Q;
reg clock;
reg reset;

tFFTwoCnt
 U0 (
  .Q(Q),
  .clock(clock),
  .reset(reset));

  initial
  begin
    clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
    #100 clock = 1'b0;
    #100 clock = 1'b1;
  end

  initial
  begin
    reset = 1'b1;
    #200 reset = 1'b0;
  end

endmodule
