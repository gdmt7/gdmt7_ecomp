`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module CLAA 
(
  input [3:0] A,
  input [3:0] B,
  input cin,
  output [3:0] S,
  output cout
);
	
  wire c1;

  fulladder a0 (.A(A[0]),
                .B(B[0]),
	        .ci(cin),
                .S(S[0])
               );

  fulladder a1 (.A(A[1]),
                .B(B[1]),
	        .ci(c1),
                .S(S[1])
               );

  fulladder a2 (.A(A[2]),
                .B(B[2]),
	        .ci(ci_wire[i]),
                .S(S[2])
               );

  fulladder a3 (.A(A[3]),
                .B(B[3]),
	        .ci(),
                .S(S[3])
               );

  gp gp0 (.A(A[i]),
          .B(B[i]),
	  .ci(ci_wire[i]),
          .S(S[i]),
 	  .co(ci_wire[i+1])
         );

  gp gp1 (.A(A[i]),
          .B(B[i]),
	  .ci(ci_wire[i]),
          .S(S[i]),
 	  .co(ci_wire[i+1])
         );

  carry c0 (.A(A[i]),
            .B(B[i]),
	    .ci(ci_wire[i]),
            .S(S[i]),
 	    .co(ci_wire[i+1])
           );
    
endmodule
