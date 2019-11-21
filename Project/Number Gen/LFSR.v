`timescale 1ns / 1ps

module LFSR (clk, rst, valid, out);

   input clk, rst, valid;
   output reg [2:0] out;

   wire feedback;

   assign feedback = ~(out[2] ^ out[1]);

always @(posedge clk, posedge rst)
  begin
    if (rst) begin
      out = 3'b0;
    end
    //else if (!valid) begin
    else begin
      out <= {out[1:0],feedback};
    end
  end
endmodule
