`timescale 1ns / 1ps

module comp_2s(
    input [3:0] in,
    output reg [3:0] out
    );
    always @(*)
    begin
      out=~in+4'b0001;
    end
endmodule
