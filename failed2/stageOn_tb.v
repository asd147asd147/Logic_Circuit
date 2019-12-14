module stageOn_tb;

reg nextStage;
reg reset;
wire [4:0] stageOut;

stageOn
 U0 (
  .nextStage(nextStage),
  .reset(reset),
  .stageOut(stageOut));

  initial
  begin
    nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
    #100 nextStage = 1'b0;
    #100 nextStage = 1'b1;
  end

  initial
  begin
    reset = 1'b1;
    #100 reset = 1'b0;
    #800 reset = 1'b1;
    #200 reset = 1'b0;
  end

endmodule
