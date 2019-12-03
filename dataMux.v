module dataMux(data1,data2,data3,data4,data5,nextData,currentData,reset);

input [1:0] data1;
input [1:0] data2;
input [1:0] data3;
input [1:0] data4;
input [1:0] data5;
input nextData;
input reset;

output [1:0] currentData;

reg [1:0] currentData;
integer checkStage = 0;

always @(posedge nextData)
begin
    case(checkStage)
        0:currentData = data1;
        1:currentData = data2;
        2:currentData = data3;
        3:currentData = data4;
        4:currentData = data5;
    endcase
    checkStage = checkStage + 1;
    if(checkStage == 5)
        checkStage = 0;
end

always @(posedge reset)
begin
    checkStage = 0;
end
endmodule