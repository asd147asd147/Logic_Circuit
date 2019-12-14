module stageClear_tb;

wire clear;
reg reset;
reg [4:0] stage;
reg trueStack;

stageClear
 U0 (
  .clear(clear),
  .reset(reset),
  .stage(stage),
  .trueStack(trueStack));

  initial
  begin
    reset = 1'b1;
    #100 reset = 1'b0;
    #1700 reset = 1'b1;
    #100 reset = 1'b0;
  end

  initial
  begin
    stage = 5'b00000;
    #100 stage = 5'b00001;
    #400 stage = 5'b00011;
    #400 stage = 5'b00111;
    #200 stage = 5'b01111;
    #700 stage = 5'b00001;
    #300 stage = 5'b00011;
    #200 stage = 5'b00111;
    #200 stage = 5'b01111;
    #200 stage = 5'b11111;
  end

  initial
  begin
    trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
    #100 trueStack = 1'b0;
    #100 trueStack = 1'b1;
  end

endmodule
