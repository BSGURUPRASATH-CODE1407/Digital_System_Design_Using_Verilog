`timescale 1ns / 1ps

module comp_8s(
    input [3:0] in,
    output reg [3:0] out
    );
    always @(*)
    begin
      out=(4'b0111-in)+4'b0001;
    end
endmodule
