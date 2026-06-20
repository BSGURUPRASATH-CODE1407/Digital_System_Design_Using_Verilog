
`timescale 1ns/1ps
module dectobin_tb;
    reg [3:0] decimal_in;
    wire [3:0] binary_out;
    integer i;
    dectobin uut(.decimal_in(decimal_in),.binary_out(binary_out));
    initial begin
        for(i = 0; i <= 9; i = i + 1) 
        begin
            decimal_in =i;#10;
            $display("Decimal= %d Binary= %b",decimal_in,binary_out);
        end
       $finish;
    end
endmodule
