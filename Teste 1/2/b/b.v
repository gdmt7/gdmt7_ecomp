`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module test_ex1 (
                  input clk,
                  input signed [3:0] a,
                  output reg signed [11:0] c
                  );

   reg signed [7:0]                  y;

   always @(posedge clk) begin 
        y <= a*a;
        c <= y*a;
   end

endmodule

