module buttonConvertData_tb;

reg [3:0] buttonIn;
wire [1:0] buttonOut;
reg clock;
reg reset;

buttonConvertData
 U0 (
  .buttonIn(buttonIn),
  .buttonOut(buttonOut),
  .clock(clock),
  .reset(reset));

  initial
  begin
    buttonIn = 4'b0000;
    #400 buttonIn = 4'b0010;
    #200 buttonIn = 4'b0000;
    #400 buttonIn = 4'b1000;
    #300 buttonIn = 4'b0000;
    #100 buttonIn = 4'b0100;
    #200 buttonIn = 4'b0000;
    #100 buttonIn = 4'b0001;
    #200 buttonIn = 4'b0000;
    #400 buttonIn = 4'b0100;
    #100 buttonIn = 4'b0110;
    #200 buttonIn = 4'b0000;
  end

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
    #100 reset = 1'b0;
  end

endmodule
