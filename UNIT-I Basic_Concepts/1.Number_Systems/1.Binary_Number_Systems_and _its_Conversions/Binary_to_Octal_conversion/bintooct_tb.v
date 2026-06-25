`timescale 1ns / 1ps
module bintooct_tb;
    reg [7:0] binary_in;
    wire [11:0] octal_out;
    bintooct uut(.binary_in(binary_in),.octal_out(octal_out));
    integer i;
    initial begin
      for(i=0;i<=15;i=i+1)
      begin
        binary_in=i;#10;
        $display ("Binary= %b Octal= %0d%0d%0d",binary_in,octal_out[11:8],octal_out[7:4],octal_out[3:0]);
      end
      $finish;
    end
endmodule
