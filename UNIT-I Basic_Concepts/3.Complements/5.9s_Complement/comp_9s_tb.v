`timescale 1ns / 1ps

module comp_9s_tb;
    reg [3:0] in;
    wire [3:0] out;
    comp_9s uut(.in(in),.out(out));
    integer i;
    initial
    begin
      for(i=0;i<=9;i=i+1)
      begin
        in=i;#1;
        $display("Input = %d Output = %d",in,out);
      end
      $finish;
    end
endmodule
