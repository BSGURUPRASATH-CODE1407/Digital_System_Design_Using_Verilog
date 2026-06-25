`timescale 1ns / 1ps
module octtodec(
    input [11:0] octal_in,
    output reg [7:0] decimal_out
    );
    always @(*)
    begin
      decimal_out=(octal_in[11:8]*64)+(octal_in[7:4]*8)+octal_in[3:0];
    end
endmodule
