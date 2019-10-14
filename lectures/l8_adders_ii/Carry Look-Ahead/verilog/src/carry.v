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
  output co
);

  gp gp0 (.g0(g0),
          .g1(g1),
	  .p0(p0),
          .p1(p1),
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
