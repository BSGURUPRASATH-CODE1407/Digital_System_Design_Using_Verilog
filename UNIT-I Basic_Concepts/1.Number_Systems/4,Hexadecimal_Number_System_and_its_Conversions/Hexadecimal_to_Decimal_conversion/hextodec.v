`timescale 1ns / 1ps
module hextodec(
    input [7:0] hex_in,
    output [7:0] decimal_out
    );
    assign decimal_out=hex_in;
endmodule
