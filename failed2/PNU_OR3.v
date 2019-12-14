/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_OR3(i1, i2, i3, o1);
    input i1, i2, i3;
    output o1;
    assign o1 = i1 | i2 | i3;
endmodule