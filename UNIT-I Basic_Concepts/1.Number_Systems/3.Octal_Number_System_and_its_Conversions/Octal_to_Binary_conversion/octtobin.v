`timescale 1ns / 1ps
module octtobin(
    input [11:0] octal_in,
    output reg [8:0] binary_out
    );
    always @(*)
    begin
      binary_out=(octal_in[11:8]*64)+(octal_in[7:4]*8)+octal_in[3:0];
    end
endmodule
