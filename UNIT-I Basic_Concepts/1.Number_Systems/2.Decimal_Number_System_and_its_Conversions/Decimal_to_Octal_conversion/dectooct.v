`timescale 1ns / 1ps
module dectooct(
    input [7:0] decimal_in,
    output reg [11:0] octal_out
);
reg [3:0] hundreds;
reg [3:0] tens;
reg [3:0] ones;
always @(*) 
begin
  hundreds = decimal_in / 64;
  tens     = (decimal_in % 64) / 8;
  ones     = decimal_in % 8;
  octal_out = {hundreds,tens,ones};
end
endmodule
