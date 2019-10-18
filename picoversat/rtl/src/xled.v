`timescale 1ns / 1ps
`include "xdefs.vh"

module xled (
	     input clk,
	     input rst,
	     input sel,
	     input in,
	     output reg out
	    );

always@(posedge clk, posedge rst)
  if(rst == 1)
    out <= 1'b0;
  else if (sel == 1)    
    out <= in;   

endmodule
