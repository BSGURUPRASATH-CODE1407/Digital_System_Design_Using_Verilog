`timescale 1ns / 1ps
module hextooct_tb;
    reg [7:0] hex_in;
    wire [11:0] octal_out;
    hextooct uut(.hex_in(hex_in),.octal_out(octal_out));
    integer i;
    initial 
    begin
      for(i=0;i<=15;i=i+1) 
      begin
        hex_in=i;#10;
        $display("Hexadecimal = %h  Octal = %0d%0d%0d",hex_in,octal_out[11:8],octal_out[7:4],octal_out[3:0]);
      end
      $finish;
    end
endmodule
