`timescale 1ns/1ps

/* Descrição flip-flop tipo D com enable */
module register (
  input		    clk,
  input             en,
  input    [31:0] data_in,   
  output reg [31:0] data_out    
);

/* Processo em que o flip-flop reage ao flanco ascendente de clk */
always @ (posedge clk)
   if (en == 1'd1) /* Se en=1, flip-flop copia entrada D para a saída Q */
     data_out <= data_in;

endmodule
