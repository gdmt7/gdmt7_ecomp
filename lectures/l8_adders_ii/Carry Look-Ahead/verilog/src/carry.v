`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module carry 
(
  input g0,
  input g1,
  input p0,
  input p1,
  input ci,
  output G,
  output P,
  output co_int,
  output co
);

  assign G = p0 & p1;
  assign P = g1 | (p1 & g0);
  assign co_int = g1 | (p1*ci)
  assign co = G | (P*ci);
    
endmodule
