`timescale 1ns / 1ps
module hextobin(
    input [7:0] hex_in,
    output [7:0] binary_out
    );
    assign binary_out=hex_in;
endmodule
