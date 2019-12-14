/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_DFF_Ce(D, Ce, clock, reset, Q);
    input D, Ce, clock, reset;
    output Q;
    reg Q;

    always@(posedge clock or posedge reset)
        if( reset )
            Q <= 1'b0;
        else begin
            if(Ce)
                Q <= D;
            else
                Q <= Q;
        end
endmodule