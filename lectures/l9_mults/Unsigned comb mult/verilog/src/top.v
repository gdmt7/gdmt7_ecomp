`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module top 
(
  input [1:0] A,
  input [1:0] B,
  output [3:0] S
);

  wire carry_wire;	
  assign S[0] = A[0]&B[0];
  
  fulladder a0 (.A(A[0]&B[1]),
                .B(A[1]&B[0]),
	        .ci(1'b0),
                .S(S[1]),
 	        .co(carry_wire)
               );

  fulladder a1 (.A(A[1]&B[1]),
                .B(1'b0),
	        .ci(carry_wire),
                .S(S[2]),
 	        .co(S[3])
               );
	
  /*gate and0 (.a(A[0]),
             .b(B[0]),
             .y()
            );

  gate and1 (.a(A[1]),
             .b(B[0]),
             .y()
            ); 

  gate and2 (.a(A[0]),
             .b(B[1]),
             .y()
            );

  gate and3 (.a(A[1]),
             .b(B[1]),
             .y()
            ); 

  adder a0 (.A(A[i]),
             .B(B[i]),
	     .ci(ci_wire[i]),
             .S(S[i]),
 	     .co(ci_wire[i+1])
           );

  adder a0 (.A(A[i]),
             .B(B[i]),
	     .ci(ci_wire[i]),
             .S(S[i]),
 	     .co(ci_wire[i+1])
           );*/

endmodule
