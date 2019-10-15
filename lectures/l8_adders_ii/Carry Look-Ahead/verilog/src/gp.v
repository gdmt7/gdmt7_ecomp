`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module gp 
(
  input [1:0] g,
  input [1:0] p,
  input ci,
  output G,
  output P,
  output co
);

  assign P = p[0] & p[1];
  assign G = g[1] | (p[1] & g[0]);
  assign co = g[0] | (p[0] & ci);

  /*assign P = p0 & p1;
  assign G = g1 | (p1 & g0);
  assign co = g0 | (p0 & ci);*/
    
endmodule
