`timescale 1ns / 1ps
module hextodec_tb;
    reg [7:0] hex_in;
    wire [7:0] decimal_out;
    hextodec uut(.hex_in(hex_in),.decimal_out(decimal_out));
    integer i;
    initial
    begin
      for(i=0;i<=15;i=i+1) 
      begin
        hex_in=i;#10;
        $display("Hexadecimal = %h Decimal = %0d",hex_in,decimal_out);
      end
      $finish;
    end
endmodule
