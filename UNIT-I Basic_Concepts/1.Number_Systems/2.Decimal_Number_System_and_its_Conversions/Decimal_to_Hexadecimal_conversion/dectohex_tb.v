`timescale 1ns / 1ps

module dectohex_tb;
    reg [7:0] decimal_in;
    wire [7:0] hex_out;
    dectohex uut(.decimal_in(decimal_in),.hex_out(hex_out));
    integer i;
    initial 
    begin
      for(i=0;i<=15;i=i+1)
      begin
        decimal_in=i;#10;
        $display("Decimal=%d Hexadecimal= %h",decimal_in,hex_out);
      end
      $finish;
    end
endmodule
