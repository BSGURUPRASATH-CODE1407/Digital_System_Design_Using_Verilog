`timescale 1ns / 1ps

module bintodec(
    input [7:0] binary_in,
    output [7:0] decimal_out
    );
    assign decimal_out=binary_in;
endmodule
