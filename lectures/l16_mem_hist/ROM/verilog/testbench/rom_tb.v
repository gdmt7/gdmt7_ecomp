`timescale 1ns / 1ps

module rom_tb;

   reg [3:0] addr;
   wire [5:0] data;
 		
   // Instantiate the Unit Under Test (UUT)
   rom uut (
	    .address(addr),
            .data(data)
           );

     
   initial begin     
      $dumpfile("ROM.vcd");
      $dumpvars();

      for (addr = 0; addr < 10; addr = addr + 1) begin
         #10;
      end

      $finish;

   end

endmodule
