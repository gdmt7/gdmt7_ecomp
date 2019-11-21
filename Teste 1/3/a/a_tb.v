`timescale 1ns / 1ps

/* Módulo para simulação do circuito */
module xpto_tb;

   reg clk;
   reg rst;
   reg 	[3:0] x;
   reg x_is_valid;
   wire [3:0] y;
   wire y_is_valid; 		

   // Instantiate the Unit Under Test (UUT)
   xpto uut (
	     .clk(clk),
             .rst(rst),
	     .x(x),
             .x_is_valid(x_is_valid),
             .y(y),
             .y_is_valid(y_is_valid)
            );
 
   
   initial begin     
      $dumpfile("adder.vcd");
      $dumpvars();
      clk = 1;
      rst = 1;
      #20;
      rst = 0;
      x = 5;
      x_is_valid = 1;
      #40;
      $finish;

   end

   always #10 clk = ~clk;

endmodule

