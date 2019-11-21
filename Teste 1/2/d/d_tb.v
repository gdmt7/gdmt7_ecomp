`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module test_ex1_tb;

   reg 	[3:0] a;
   wire [11:0] c;
 		
   // Instantiate the Unit Under Test (UUT)
   test_ex1 uut (
		 .a(a),
		 .c(c)
		);
 
   
   initial begin     
      $dumpfile("adder.vcd");
      $dumpvars();
      a = 5;
      #50
      a = 2;
      #50
      $finish;

   end

endmodule

