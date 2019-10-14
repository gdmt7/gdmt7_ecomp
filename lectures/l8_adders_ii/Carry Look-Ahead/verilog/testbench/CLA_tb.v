`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module CLA_tb;

   reg 	[3:0] A;
   reg 	[3:0] B;
   reg ci;
   wire [3:0] S;
   wire co;
 		
   // Instantiate the Unit Under Test (UUT)
   CLA uut (
	    .A(A),
            .B(B),
            .cin(ci),
            .S(S),
            .cout(co)
	   );
 
   
   initial begin     
      $dumpfile("CLA.vcd");
      $dumpvars();
      //ci = 0;	
      //A = 4'b1011;
      //B = 4'b0011;

      ci = 1;	
      A = 4'b1011;
      B = 4'b0011;

      $finish;

   end

endmodule

