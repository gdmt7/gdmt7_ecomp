`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module fulladder 
(
  input  A,
  input  B,
  input  ci,
  output g,
  output p,
  output S
);

   assign S = A ^ B ^ ci;
   assign g = A & B;
   assign p = A ^ B;
    
endmodule
