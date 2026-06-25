`timescale 1ns / 1ps
module octtohex(
    input [11:0] octal_in,
    output reg [7:0] hex_out
    );
    reg [8:0] binary_temp;
    always @(*) 
    begin
      binary_temp = (octal_in[11:8]*64)+(octal_in[7:4]*8)+octal_in[3:0];
      hex_out= binary_temp[7:0];
    end
endmodule
