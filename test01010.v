module test01010(clk,rst,enable,LCD_DATA,LCD_E,LCD_RS,LCD_RW);

input clk;
input rst;
input enable;
output [7:0] LCD_DATA;
output LCD_E;
output LCD_RS;
output LCD_RW;

wire  w0;
wire  w1;
wire [7:0] b2;
wire  w3;
wire [7:0] b4;
wire  w5;
wire  w6;
wire  w7;

assign w0 = clk;
assign w1 = rst;
assign w3 = enable;
assign LCD_DATA = b4;
assign LCD_E = w5;
assign LCD_RS = w6;
assign LCD_RW = w7;

input_lcd
     #(
      .DELAY(2'b10),
      .LINE1(2'b00),
      .LINE2(2'b01))
     s0 (
      .CLK(w0),
      .RESETN(w1),
      .OUTPUT_DATA(b2),
      .ENABLE(w3));

lcd
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s1 (
      .CLK(w0),
      .RESETN(w1),
      .ID(b2),
      .LCD_DATA(b4),
      .LCD_E(w5),
      .LCD_RS(w6),
      .LCD_RW(w7));

endmodule

