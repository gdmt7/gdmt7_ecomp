`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module test_ex1 (
                  input [3:0] a,
                  output [11:0] c
                  );

	assign c = a*a*a;
endmodule

