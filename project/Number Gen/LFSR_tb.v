`timescale 1ns / 1ps

module LFSR_tb();
   
   reg clk_tb;
   reg rst_tb;
   wire [2:0] out_tb;

   // Instantiate the Unit Under Test (UUT)
   LFSR uut (
             .clk(clk_tb),
	     .rst(rst_tb),
	     .out(out_tb)
            );

initial
begin
    $dumpfile("LFSR.vcd");
    $dumpvars();
    clk_tb = 0;
    rst_tb = 1;
    #15;
    
    rst_tb = 0;
    #200;
    $finish;
end

always
begin
    #5;
    clk_tb = ~ clk_tb;
end

endmodule
