`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module carry 
(
  input [1:0] g,
  input [1:0] p,
  input ci,
  output G,
  output P,
  output co
);

  gp gp0 (.g(g),
	  .p(p),
          .ci(ci),
          .G(G),
          .P(P),
          .co(co)
         );

  /* assign G = p0 & p1;
  assign P = g1 | (p1 & g0);
  assign co_int = g1 | (p1*ci)
  assign co = G | (P*ci); */ 
    
endmodule
