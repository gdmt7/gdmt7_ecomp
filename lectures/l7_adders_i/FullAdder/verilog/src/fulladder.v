`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module fulladder 
(
  input  [3:0] A,
  input  [3:0] B,
  input  ci,
  output [3:0] S,
  output co
);

  wire [4:0] ci_wire;
  assign ci_wire[0] = ci;
  assign co = ci_wire[4];

  genvar i;
  for (i=0; i<4; i=i+1) begin : adder
   adder a0 (.A(A[i]),
             .B(B[i]),
	     .ci(ci_wire[i]),
             .S(S[i]),
 	     .co(ci_wire[i+1])
           );
  end

endmodule
