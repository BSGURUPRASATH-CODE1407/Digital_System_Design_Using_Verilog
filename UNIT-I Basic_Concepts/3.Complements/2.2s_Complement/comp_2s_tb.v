`timescale 1ns / 1ps

module comp_2s_tb;
    reg [3:0] in;
    wire [3:0] out;
    comp_2s uut(.in(in),.out(out));
    integer i;
    initial
    begin
      for(i=0;i<=15;i=i+1)
      begin
        in=i;#10;
        $display("Input = %04b Output = %04b",in,out);
      end
      $finish;
    end
endmodule
