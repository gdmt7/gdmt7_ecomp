`timescale 1ns / 1ps
`include "xdefs.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:01 11/04/2019 
// Design Name: 
// Module Name:    xbutton 
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
module xbutton(
		  input clk,
		  input rst,
		  input [3:0] data_in,				
	     output [`DATA_W-1:0] data_out		  
    );

	 xdebounce debouce0(
			.pb_1(data_in[0]),
			.clk(clk),	
			.pb_out(data_out[0])
	 );
	 
	 xdebounce debouce1(
			.pb_1(data_in[1]),
			.clk(clk),	
			.pb_out(data_out[1])
	 );
	 
	 xdebounce debouce2(
			.pb_1(data_in[2]),
			.clk(clk),	
			.pb_out(data_out[2])
	 );
	 
	 xdebounce debouce3(
			.pb_1(data_in[3]),
			.clk(clk),	
			.pb_out(data_out[3])
	 );

endmodule
