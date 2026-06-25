`timescale 1ns / 1ps
module bintooct(
    input [7:0] binary_in,
    output reg [11:0] octal_out
    );
    always @(*)
    begin
       octal_out[11:8]=binary_in/64;
      octal_out[7:4]=(binary_in%64)/8;
      octal_out[3:0]=binary_in%8;
    end
endmodule
