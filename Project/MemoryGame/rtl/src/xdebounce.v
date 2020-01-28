`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:54 01/13/2020 
// Design Name: 
// Module Name:    xdebounce 
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

module xdebounce(
    input clk,
    input button,
    output reg result
);

reg [1:0] flipflops;
reg counter_set;
reg [19:0] counter_out = 20'h0;

always@* begin
	counter_set <= flipflops[0] ^ flipflops[1];
end

always@(posedge clk) begin 
  flipflops[0] <= button;
  flipflops[1] <= flipflops[0];
  if (counter_set)
    counter_out <= 20'h0;
  else if(counter_out[19] == 0)
    counter_out <= counter_out + 1;
  else
    result <= flipflops[1];
end
endmodule