module ledOnOff_tb;

wire F_LED1_RED;
wire F_LED2_GREEN;
wire F_LED3_BLUE;
wire [1:0] F_LED4_YELLOW;
reg [1:0] dataIn;
reg ledOn;

ledOnOff
 U0 (
  .F_LED1_RED(F_LED1_RED),
  .F_LED2_GREEN(F_LED2_GREEN),
  .F_LED3_BLUE(F_LED3_BLUE),
  .F_LED4_YELLOW(F_LED4_YELLOW),
  .dataIn(dataIn),
  .ledOn(ledOn));

  initial
  begin
    dataIn = 2'b00;
    #100 dataIn = 2'b01;
    #100 dataIn = 2'b10;
    #100 dataIn = 2'b00;
    #100 dataIn = 2'b01;
    #200 dataIn = 2'b10;
    #300 dataIn = 2'b00;
  end

  initial
  begin
    ledOn = 1'b0;
    #100 ledOn = 1'b1;
    #300 ledOn = 1'b0;
    #300 ledOn = 1'b1;
    #300 ledOn = 1'b0;
  end

endmodule
