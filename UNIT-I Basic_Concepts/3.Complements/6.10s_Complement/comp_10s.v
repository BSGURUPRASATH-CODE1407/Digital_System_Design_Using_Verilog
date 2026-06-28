`timescale 1ns / 1ps

module comp_10s(
    input [3:0] in,
    output [3:0] out
    );
    assign out=(4'b1001-in)+4'b0001;
endmodule
