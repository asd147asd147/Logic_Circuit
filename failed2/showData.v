module showData(stage,show,clear);

input [4:0] stage;
input clear;
output show;

reg show;

integer i = 0;

always @(posedge clear)
begin
    show = 0;
    for(i = 5; i > 0; i = i-1)
    begin
        show = 1;
        show = 0;
    end
end

endmodule