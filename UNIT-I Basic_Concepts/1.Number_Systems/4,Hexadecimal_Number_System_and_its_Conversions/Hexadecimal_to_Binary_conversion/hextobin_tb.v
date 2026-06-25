`timescale 1ns / 1ps
module hextobin_tb;
    reg [7:0] hex_in;
    wire [7:0] binary_out;
    hextobin uut(.hex_in(hex_in),.binary_out(binary_out));
    integer i;
    initial 
    begin
      for(i=0;i<=15;i=i+1) 
        begin
          hex_in=i;#10;
          $display("Hexadecimal = %h Binary = %b",hex_in,binary_out);
        end
      $finish;
    end
endmodule
