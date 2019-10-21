`timescale 1ns / 1ps
`include "xdefs.vh"

module xled (
	     input clk,
	     input rst,
	     input sel,
	     input [3:0] in,
	     output reg [3:0] out
	    );

always@(posedge clk, posedge rst)
  if(rst == 1)
    out <= 4'b0;
  else if (sel == 1)    
    out <= in;

endmodule
