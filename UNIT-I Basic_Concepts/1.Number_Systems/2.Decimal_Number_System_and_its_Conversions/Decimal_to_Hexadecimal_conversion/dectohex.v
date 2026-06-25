`timescale 1ns / 1ps
module dectohex(
    input [7:0] decimal_in,
    output [7:0] hex_out
    );
 assign hex_out = decimal_in;
endmodule
