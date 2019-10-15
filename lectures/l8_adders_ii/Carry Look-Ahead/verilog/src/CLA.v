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
	
  wire [2:0] c_wire;
  wire [1:0] g10_wire;
  wire [1:0] p10_wire;
  wire [1:0] g32_wire;
  wire [1:0] p32_wire;
  wire [1:0] G_wire;
  wire [1:0] P_wire;
  wire G30_wire;
  wire P30_wire;

  fulladder a0 (.A(A[0]),
                .B(B[0]),
	        .ci(cin),
                .g(g10_wire[0]),
                .p(p10_wire[0]),
                .S(S[0])
               );

  fulladder a1 (.A(A[1]),
                .B(B[1]),
	        .ci(c_wire[0]),
                .g(g10_wire[1]),
                .p(p10_wire[1]),               
                .S(S[1])
               );

  fulladder a2 (.A(A[2]),
                .B(B[2]),
	        .ci(c_wire[1]),
                .g(g32_wire[0]),
                .p(p32_wire[0]),
                .S(S[2])
               );

  fulladder a3 (.A(A[3]),
                .B(B[3]),
	        .ci(c_wire[2]),
                .g(g32_wire[1]),
                .p(p32_wire[1]),
                .S(S[3])
               );

  gp gp0 (.g(g10_wire),
	  .p(p10_wire),
 	  .ci(cin),
          .G(G_wire[0]),
          .P(P_wire[0]),
	  .co(c_wire[0])
         );

  gp gp1 (.g(g32_wire),
	  .p(p32_wire),
 	  .ci(c2_wire), 
          .G(G_wire[1]),
          .P(P_wire[1]),
	  .co(c_wire[2])
         );


  carry c0 (.g(G_wire),
	    .p(P_wire),
 	    .ci(cin),
            .G(G30_wire),
            .P(P30_wire),
            .co(c_wire[1])
           );
    
  assign cout = G30_wire | (P30_wire*cin);
 
endmodule
