module dataMux_tb;

wire [1:0] currentData;
reg [1:0] data1;
reg [1:0] data2;
reg [1:0] data3;
reg [1:0] data4;
reg [1:0] data5;
reg nextData;
reg reset;

dataMux
 U0 (
  .currentData(currentData),
  .data1(data1),
  .data2(data2),
  .data3(data3),
  .data4(data4),
  .data5(data5),
  .nextData(nextData),
  .reset(reset));

  initial
  begin
    data1 = 2'b10;
  end

  initial
  begin
    data2 = 2'b11;
  end

  initial
  begin
    data3 = 2'b00;
  end

  initial
  begin
    data4 = 2'b01;
  end

  initial
  begin
    data5 = 2'b00;
  end

  initial
  begin
    nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
    #100 nextData = 1'b0;
    #100 nextData = 1'b1;
  end

  initial
  begin
    reset = 1'b1;
    #100 reset = 1'b0;
  end

endmodule
