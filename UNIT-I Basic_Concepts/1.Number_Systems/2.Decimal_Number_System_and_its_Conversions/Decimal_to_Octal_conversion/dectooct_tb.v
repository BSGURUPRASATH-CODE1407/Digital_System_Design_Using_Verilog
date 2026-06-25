`timescale 1ns/1ps
module dectooct_tb;
  reg [7:0] decimal_in;
  wire [11:0] octal_out;
  dectooct uut(.decimal_in(decimal_in),.octal_out(octal_out));
  integer i;
  initial  
  begin
    for(i=0;i<=15;i=i+1)
    begin
      decimal_in=i;#10;
      $display("Decimal=%d Octal=%0d%0d%0d",decimal_in,octal_out[11:8],octal_out[7:4],octal_out[3:0]);
    end
    $finish;
  end
endmodule
