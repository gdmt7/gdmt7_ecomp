`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module xpto(clk,rst,x,x_is_valid,y,y_is_valid);

   input clk;
   input rst;
   input [3:0] x;
   input x_is_valid;
   output [3:0] y;
   output y_is_valid;

   reg [3:0] y_1;  
 
   assign y_is_valid = x_is_valid;
   assign y = 0.25*y_1 + 0.5*x; 		
 
   always @(posedge clk, posedge rst) begin
      if(rst)
        y_1 <= 0;
      else
        y_1 <= y;
   end
endmodule

