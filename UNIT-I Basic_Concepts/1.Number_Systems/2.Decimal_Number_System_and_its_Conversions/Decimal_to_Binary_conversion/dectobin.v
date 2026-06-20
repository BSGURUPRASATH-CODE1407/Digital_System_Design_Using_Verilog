
`timescale 1ns / 1ps
module dectooct(
    input [3:0] decimal_in,
    output [3:0] octal_out
    );
    assign octal_out=decimal_in;
endmodule
