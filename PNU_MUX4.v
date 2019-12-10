/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_MUX4(i1, i2, i3, i4, e1, e2, o1);
    input i1, i2, i3, i4, e1, e2;
    output reg o1;
    always@(i1, i2, i3, i4, e1, e2)
        case({e1,e2})
            2'b00: o1 = i1;
            2'b01: o1 = i2;
            2'b10: o1 = i3;
            2'b11: o1 = i4;
        endcase
endmodule