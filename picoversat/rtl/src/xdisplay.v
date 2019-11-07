`timescale 1ns / 1ps
`include "xdefs.vh"

module xdisplay (
		  input clk,
	     input rst,
	     input sel,
	     input [3:0] n_display,
        input [7:0] segments,
	     output [11:0] out
	    );

  reg [7:0] out_aux = 12'b0;

always@(posedge clk, posedge rst)
  if(rst == 1)
    out_aux <= 8'b0;
  else if (sel == 1) begin 
    case (segments)
      //4'd0  : out_aux <= 8'bhgfedcba;
      8'd0  : out_aux <= 8'b01000000;
      8'd1  : out_aux <= 8'b11111001;
      8'd2  : out_aux <= 8'b10100100;
      8'd3  : out_aux <= 8'b10110000; 
      8'd4  : out_aux <= 8'b10011001; 
      8'd5  : out_aux <= 8'b10010010; 
      8'd6  : out_aux <= 8'b10000010; 
      8'd7  : out_aux <= 8'b11111000;
      8'd8  : out_aux <= 8'b10000000;
      8'd9  : out_aux <= 8'b10010000;
      default : out_aux <= 8'b11111111; 
    endcase
  end

  assign out = {n_display,out_aux};

endmodule