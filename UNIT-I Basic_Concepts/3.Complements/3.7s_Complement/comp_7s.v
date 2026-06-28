`timescale 1ns / 1ps

module comp_7s(
    input [3:0] in,
    output reg [3:0] out
    );
    always @(*)
    begin
      out=7-in;
    end
endmodule
