`timescale 1ns / 1ps

module comp_8s_tb;
    reg [3:0] in;
    wire [3:0] out;
    comp_8s uut(.in(in),.out(out));
    integer i;
    initial
    begin
      for(i=0;i<=7;i=i+1)
      begin
        in=i;#10
        $display("Input = %01o Output = %01o",in,out);
      end
      $finish;
    end
endmodule
