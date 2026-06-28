`timescale 1ns / 1ps

module comp_15s(
    input [3:0] in,
    output [3:0] out
    );
    assign out=4'b1111-in;
endmodule
