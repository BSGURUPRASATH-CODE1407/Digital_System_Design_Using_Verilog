
`timescale 1ns / 1ps
module dectobin(
    input [3:0] decimal_in,
    output [3:0] binary_out
    );
    assign binary_out=decimal_in;
endmodule
