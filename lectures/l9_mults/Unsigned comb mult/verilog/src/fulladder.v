`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module fulladder 
(
  input  A,
  input  B,
  input  ci,
  output S,
  output co
);

   assign S = A ^ B ^ ci;
   assign co = (A & B) | (A ^ B) & ci;
    
endmodule
