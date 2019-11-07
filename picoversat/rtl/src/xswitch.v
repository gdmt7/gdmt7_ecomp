`timescale 1ns / 1ps
`include "xdefs.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:41 11/04/2019 
// Design Name: 
// Module Name:    xswitch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module xswitch(
	            input clk,
					input rst,
					input sel,
	            input [`REGF_ADDR_W-1:0] addr,					
					output [`DATA_W-1:0] data_out
					);
					
	assign data_out = sel? addr : `DATA_W'h0;				
	
endmodule

