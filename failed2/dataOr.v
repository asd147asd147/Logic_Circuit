module dataOr(dataIn1, dataIn2, dataOut);

input [1:0] dataIn1;
input [1:0] dataIn2;

output [1:0] dataOut;

reg [1:0] dataOut;
always @(posedge dataIn1[0] or posedge dataIn1[1] or posedge dataIn2[0] or posedge dataIn2[1])
    begin
        dataOut[0] = dataIn1[0] || dataIn2[0];
        dataOut[1] = dataIn1[1] || dataIn2[1];
    end

endmodule