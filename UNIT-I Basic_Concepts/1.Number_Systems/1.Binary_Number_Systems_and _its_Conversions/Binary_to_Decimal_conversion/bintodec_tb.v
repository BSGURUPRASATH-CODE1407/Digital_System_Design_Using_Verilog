`timescale 1ns / 1ps
module bintodec_tb;
    reg [7:0] binary_in;
    wire [7:0] decimal_out;
    bintodec uut(.binary_in(binary_in),.decimal_out(decimal_out));
    integer i;
    initial 
    begin
      for(i=0;i<=15;i=i+1)
      begin
        binary_in=i;#10;
        $display("Binary = %b, Decimal = %d",binary_in,decimal_out);
      end
      $finish;
    end
endmodule
