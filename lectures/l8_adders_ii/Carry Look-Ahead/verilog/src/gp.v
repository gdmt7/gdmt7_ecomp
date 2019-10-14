`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module gp 
(
  input g0,
  input g1,
  input p0,
  input p1,
  input ci,
  output G,
  output P,
  output co
);

  assign P = p0 & p1;
  assign G = g1 | (p1 & g0);
  assign c0 = g0 | (p0 & ci);
    
endmodule
