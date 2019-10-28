`timescale 1ns / 1ps

module LFSR (clk, rst, out);

   input clk, rst;
   output reg [2:0] out;

   wire feedback;

   assign feedback = ~(out[2] ^ out[1]);

always @(posedge clk, posedge rst)
  begin
    if (rst)
      out = 3'b0;
    else
      out = {out[1:0],feedback};
  end
   
endmodule
