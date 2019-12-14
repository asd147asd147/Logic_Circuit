module compareStage_tb;

reg buttonOn;
reg [1:0] data;
wire f;
reg [1:0] myIn;
wire t;

compareStage
 U0 (
  .buttonOn(buttonOn),
  .data(data),
  .f(f),
  .myIn(myIn),
  .t(t));

  initial
  begin
    buttonOn = 1'b0;
    #100 buttonOn = 1'b1;
    #200 buttonOn = 1'b0;
    #200 buttonOn = 1'b1;
    #200 buttonOn = 1'b0;
  end

  initial
  begin
    data = 2'b00;
    #100 data = 2'b10;
    #100 data = 2'b00;
    #100 data = 2'b01;
    #100 data = 2'b00;
    #100 data = 2'b10;
    #100 data = 2'b00;
  end

  initial
  begin
    myIn = 2'b00;
    #100 myIn = 2'b10;
    #100 myIn = 2'b00;
    #100 myIn = 2'b01;
    #100 myIn = 2'b00;
    #100 myIn = 2'b01;
    #100 myIn = 2'b00;
  end

endmodule
