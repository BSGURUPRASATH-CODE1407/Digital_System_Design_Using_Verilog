`timescale 1ns / 1ps
module octtobin_tb;
    reg [11:0] octal_in;
    wire [8:0] binary_out;
    octtobin uut(.octal_in(octal_in),.binary_out(binary_out));
    integer i;
    initial begin
      for(i=0; i<=15;i=i+1)
      begin
         octal_in[11:8]=i/64;
         octal_in[7:4]=(i%64)/8;
         octal_in[3:0]=i%8;#10;
         $display("Octal = %0d%0d%0d Binary = %b",octal_in[11:8],octal_in[7:4],octal_in[3:0],binary_out);
       end
       $finish;
     end
endmodule
