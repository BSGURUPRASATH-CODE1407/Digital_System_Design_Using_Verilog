`timescale 1ns / 1ps
module bintohex_tb;
    reg [7:0] binary_in;
    wire [7:0] hex_out;
    bintohex uut(.binary_in(binary_in),.hex_out(hex_out));
    integer i;
    initial 
    begin
      for(i=0;i<=255;i=i+1)
      begin
        binary_in=i;#10;
        $display("Binary = %b Hexadecimal = %h",binary_in,hex_out);
      end
      $finish;
    end
endmodule
