module stageClear(stage,trueStack,reset,clear,allclear);

input [4:0] stage;
input trueStack;
input reset;

output clear;
output allclear;

reg clear;
reg allclear;

integer stageStack = 0, stageNum = 1;

always @(posedge trueStack or posedge reset)
begin
	if(reset == 0)
	begin
    clear = 0;
	 allclear = 0;
    stageNum = 0;
    if(stage[4] == 1)
        stageNum = stageNum + 1;
    if(stage[3] == 1)
        stageNum = stageNum + 1;
    if(stage[2] == 1)
        stageNum = stageNum + 1;
    if(stage[1] == 1)
        stageNum = stageNum + 1;
    if(stage[0] == 1)
        stageNum = stageNum + 1;
    stageStack = stageStack + 1;
    if(stageStack == stageNum)
    begin
        if(stageNum == 5)
            allclear = 1;
        else
        begin
            clear = 1;
            stageStack = 0;
        end

    end
	 end
	 else if(reset == 1)
	 begin
		 stageStack = 0;
		 stageNum = 0;
		 clear = 0;
		 allclear = 0;
	 end
end

endmodule