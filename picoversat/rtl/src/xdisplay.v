`timescale 1ns / 1ps
`include "xdefs.vh"

module xdisplay (
	     input clk,
	     input rst,
	     input sel,
	     input [3:0] n_display, //data_wr[x:0]
             input [7:0] segments, //data_wr[x:0]
	     output [11:0] out
	    );

  reg [7:0] out_aux = 12'b0;

always@(posedge clk, posedge rst)
  if(rst == 1)
    out_aux <= 8'b0;
  else if (sel == 1) begin 
    case (segments)
      //4'd0  : out_aux <= 8'bhgfedcba;
      4'd0  : out_aux <= 8'b10111111;
      4'd1  : out_aux <= 8'b00000110;
      4'd2  : out_aux <= 8'b01011011;
      4'd3  : out_aux <= 8'b01001111; 
      4'd4  : out_aux <= 8'b01100110; 
      4'd5  : out_aux <= 8'b01101101; 
      4'd6  : out_aux <= 8'b01111101; 
      4'd7  : out_aux <= 8'b00000111;
      4'd8  : out_aux <= 8'b01111111;
      4'd9  : out_aux <= 8'b01101111;
      default : out_aux <= 8'b00000000; 
    endcase
  end

  assign out = {n_display,out_aux};

endmodule
