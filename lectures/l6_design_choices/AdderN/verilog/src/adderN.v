`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module adderN 
#(parameter N = 2)
(
  input [N-1:0] A,
  input [N-1:0] B,
  output [N-1:0] Y
);

   assign Y = A + B;
      
endmodule
