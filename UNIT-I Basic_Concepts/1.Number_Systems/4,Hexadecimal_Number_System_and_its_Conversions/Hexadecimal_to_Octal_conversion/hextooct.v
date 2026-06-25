`timescale 1ns / 1ps
module hextooct(
    input [7:0] hex_in,
    output reg [11:0] octal_out
    );
    reg [7:0] decimal;
    always @(*) 
    begin
      decimal = hex_in;
      octal_out[11:8] = decimal / 64;
      octal_out[7:4]  = (decimal % 64) / 8;
      octal_out[3:0]  = decimal % 8;
    end
endmodule
