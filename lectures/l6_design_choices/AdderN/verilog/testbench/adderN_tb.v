`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module adderN_tb;

   reg 	[3:0] A;
   reg 	[3:0] B;
   wire [3:0] Y;
 		
   // Instantiate the Unit Under Test (UUT)
   adderN #(.N(4)) uut (
			.A (A),
			.B (B),
			.Y (Y)
			);
 
   
   initial begin     
      $dumpfile("adder.vcd");
      $dumpvars();
      A = 8;
      B = 4;
      $finish;

   end

endmodule

