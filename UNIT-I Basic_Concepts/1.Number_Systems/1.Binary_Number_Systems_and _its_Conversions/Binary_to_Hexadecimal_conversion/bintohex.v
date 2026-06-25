`timescale 1ns / 1ps
module bintohex(
    input [7:0] binary_in,
    output reg [7:0] hex_out
    );
    always @(*)
    begin
      hex_out[7:4]=binary_in/16;
      hex_out[3:0]=binary_in%16;
    end
endmodule
