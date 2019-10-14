`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module CLA 
(
  input [3:0] A,
  input [3:0] B,
  input cin,
  output [3:0] S,
  output cout
);
	
  wire c1_wire;
  wire c2_wire;
  wire c3_wire;
  wire g0_wire;
  wire p0_wire;
  wire g1_wire;
  wire p1_wire;
  wire g2_wire;
  wire p2_wire;
  wire g3_wire;
  wire p3_wire;
  wire G01_wire;
  wire P01_wire;
  wire G23_wire;
  wire P23_wire;
  wire G30_wire;
  wire P30_wire;

  fulladder a0 (.A(A[0]),
                .B(B[0]),
	        .ci(cin),
                .g(g0_wire),
                .p(p0_wire),
                .S(S[0])
               );

  fulladder a1 (.A(A[1]),
                .B(B[1]),
	        .ci(c1_wire),
                .g(g1_wire),
                .p(p1_wire),               
                .S(S[1])
               );

  fulladder a2 (.A(A[2]),
                .B(B[2]),
	        .ci(c2_wire),
                .g(g2_wire),
                .p(p2_wire),
                .S(S[2])
               );

  fulladder a3 (.A(A[3]),
                .B(B[3]),
	        .ci(c3_wire),
                .g(g3_wire),
                .p(p3_wire),
                .S(S[3])
               );

  gp gp0 (.g0(g0_wire),
          .g1(g1_wire),
	  .p0(p0_wire),
          .p1(p1_wire),
 	  .ci(cin),
          .G(G01_wire),
          .P(P01_wire),
	  .co(c1_wire)
         );

  gp gp1 (.g0(g2_wire),
          .g1(g3_wire),
	  .p0(p2_wire),
          .p1(p3_wire),
 	  .ci(c2_wire), 
          .G(G23_wire),
          .P(P23_wire),
	  .co(c3_wire)
         );

  carry c0 (.g0(G01_wire),
            .g1(G23_wire),
	    .p0(P01_wire),
            .p1(P23_wire),
 	    .ci(cin),
            .G(G30_wire),
            .P(P30_wire),
            .co(c2_wire)
           );
    
  assign cout = G30_wire | (P30_wire*cin);
 
endmodule
