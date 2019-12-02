module StageData_tb;

reg clock;
reg [1:0] datain;
wire [1:0] dataout;
reg reset;
reg stageon;

StageData
 U0 (
  .clock(clock),
  .datain(datain),
  .dataout(dataout),
  .reset(reset),
  .stageon(stageon));

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
    datain = 2'b00;
    #200 datain = 2'b01;
    #200 datain = 2'b10;
    #200 datain = 2'b11;
    #200 datain = 2'b00;
    #200 datain = 2'b01;
    #200 datain = 2'b10;
    #200 datain = 2'b11;
    #200 datain = 2'b00;
    #200 datain = 2'b01;
    #200 datain = 2'b10;
    #200 datain = 2'b11;
    #200 datain = 2'b00;
    #200 datain = 2'b01;
    #200 datain = 2'b10;
    #200 datain = 2'b11;
    #200 datain = 2'b00;
  end

  initial
  begin
    reset = 1'b1;
    #100 reset = 1'b0;
  end

  initial
  begin
    stageon = 1'b0;
    #700 stageon = 1'b1;
    #200 stageon = 1'b0;
    #900 stageon = 1'b1;
  end

endmodule
