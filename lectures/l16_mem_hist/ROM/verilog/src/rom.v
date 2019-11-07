`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module rom 
(
  input  [3:0] address,
  output [5:0] data
);

reg [5:0] mem [9:0];

assign data = mem[address];

initial 
begin
   $readmemb("memory", mem, 0, 9);
end

endmodule

