`timescale 1ns / 1ps
module octtodec_tb;
    reg[11:0] octal_in;
    wire [7:0] decimal_out;
    octtodec uut(.octal_in(octal_in),.decimal_out(decimal_out));
    integer i;
    initial 
    begin
      for(i=0;i<=15;i=i+1)
      begin
        octal_in[11:8]=i/64;
        octal_in[7:4]=(i%64)/ 8;
        octal_in[3:0]=i%8;#10;
        $display("Octal = %0o%0o%0o Decimal = %0d",octal_in[11:8],octal_in[7:4],octal_in[3:0],decimal_out);
      end
      $finish;
    end
endmodule
