`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module top_tb;

   reg 	[1:0] A;
   reg 	[1:0] B;
   wire [3:0] S;
 		
   // Instantiate the Unit Under Test (UUT)
   top uut (
	    .A(A),
            .B(B),
            .S(S)
	   );
 
   
   initial begin     
      $dumpfile("top.vcd");
      $dumpvars();
      A = 3;
      B = 3;

      $finish;

   end

endmodule

