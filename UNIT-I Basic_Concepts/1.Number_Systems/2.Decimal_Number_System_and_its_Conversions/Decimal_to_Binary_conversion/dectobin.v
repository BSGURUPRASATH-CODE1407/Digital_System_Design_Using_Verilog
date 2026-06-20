
`timescale 1ns / 1ps
module dectooct(
    input [7:0] decimal_in,
    output [7:0] octal_out
    );
    assign octal_out=decimal_in;
endmodule
