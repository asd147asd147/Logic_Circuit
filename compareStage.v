module compareStage(myIn,data,t,f,buttonOn);

input [1:0] myIn;
input [1:0] data;
input buttonOn;
output t, f;

reg t,f;

always @(posedge buttonOn)
begin
    t <= 0;
    f <= 0;
     if(myIn[1] == data[1] && myIn[0] == data[0])
        t <= 1;
     else
        f <= 1;
end

always @(negedge buttonOn)
begin
    t <= 0;
    f <= 0;
end
endmodule