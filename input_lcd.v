module input_lcd(
  RESETN, CLK,
  OUTPUT_DATA, ENABLE
);

input RESETN, CLK, ENABLE;

output [7:0] OUTPUT_DATA;

reg [7:0] OUTPUT_DATA;
reg [1:0] STATE;

parameter LINE1 = 2'b00,
          LINE2 = 2'b01,
          DELAY = 2'b10;


integer CNT;

always @ (posedge RESETN or posedge CLK or posedge ENABLE)
begin
  if (RESETN)
    STATE = DELAY;
  else if(CLK)
	begin
		if(ENABLE)
		 begin
			case (STATE)
			  DELAY :
				 if(CNT == 70) STATE = LINE1;
			  LINE1 :
				 if(CNT == 20) STATE = LINE2;
			  LINE2 :
				 if(CNT == 20) STATE = LINE1;
			endcase
		 end
	 end
end

always @ (posedge RESETN or posedge CLK or posedge ENABLE)
begin
  if(RESETN)
    CNT = 0;
  else if(CLK)
	begin
		if(ENABLE)
		 begin
			case (STATE)
				 DELAY :
					if (CNT == 70) CNT = 0;
					else CNT = CNT + 1;
				 LINE1 :
					if (CNT >= 20) CNT = 0;
					else CNT = CNT + 1;
				 LINE2 :
					if (CNT >= 20) CNT = 0;
					else CNT = CNT + 1;
			endcase
		 end
	end
end


always @ (posedge RESETN or posedge CLK or posedge ENABLE)
begin
  if (RESETN)
    begin
      OUTPUT_DATA = 8'b00100000;
    end
  else if(CLK)
	begin
		if(ENABLE)
		 begin
			case (STATE)
			  LINE1 :
				 begin
					case (CNT)
					  0 :
						 begin
							OUTPUT_DATA = 8'b01000011;
						 end
					  1 :
						 begin
							OUTPUT_DATA = 8'b01101111;
						 end
					  2 :
						 begin
							OUTPUT_DATA = 8'b01101110;
						 end
					  default :
						 begin
							OUTPUT_DATA = 8'b01100101;
						 end
					endcase
				 end
			  LINE2 :
				 begin
					case (CNT)
					  0 :
						 begin
							OUTPUT_DATA = 8'b01000011;
						 end
					  1 :
						 begin
							OUTPUT_DATA = 8'b01101111;
						 end
					  2 :
						 begin
							OUTPUT_DATA = 8'b01101110;
						 end
					  default :
						 begin
							OUTPUT_DATA = 8'b01100101;
						 end
					endcase
				 end
			  endcase
		 end
	end
end
endmodule
