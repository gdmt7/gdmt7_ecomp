`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module fulladder_tb;

   reg 	[3:0] A;
   reg 	[3:0] B;
   reg ci;
   wire [3:0] S;
   wire co;
 		
   // Instantiate the Unit Under Test (UUT)
   fulladder uut (
	          .A(A),
		  .B(B),
                  .ci(ci),
		  .S(S),
                  .co(co)
	         );
 
   
   initial begin     
      $dumpfile("fulladder.vcd");
      $dumpvars();
      ci = 0;	
      A = 4'b1011;
      B = 4'b0011;

      #10

      ci = 1;	
      A = 4'b1011;
      B = 4'b0011;

      $finish;

   end

endmodule

