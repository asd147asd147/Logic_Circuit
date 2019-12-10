/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_MUX8(i1, i2, i3, i4, i5, i6, i7, i8, e1, e2, e3, o1);
    input i1, i2, i3, i4, i5, i6, i7, i8, e1, e2, e3;
    output reg o1;
    always@(i1, i2, i3, i4, i5, i6, i7, i8, e1, e2, e3)
        case({e1,e2,e3})
            3'b000: o1 = i1;
            3'b001: o1 = i2;
            3'b010: o1 = i3;
            3'b011: o1 = i4;
            3'b100: o1 = i5;
            3'b101: o1 = i6;
            3'b110: o1 = i7;
            3'b111: o1 = i8;
        endcase
endmodule