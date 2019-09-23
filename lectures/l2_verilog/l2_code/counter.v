`timescale 1ns/1ps

/* Módulo de um contador de 2 bits */
module counter (
  input 	   clk,
  input 	   rst,
  input 	   en,
  output reg [1:0] data_out
);

/* Processo que reage a fase ascendente do clk */   
   always @ (posedge clk) begin
      if (rst == 1'b1) begin /* Se rst=1, é efectuado reset ao contador */
	 data_out <= 2'b0;
      end
      else if (en == 1'b1 ) begin /*Se rst=0 e en=1, contador é incrementado */	 
	 if(data_out != 2'b11) /* Verifica se o contador chegou ao limite(fim), se não chegou incrementa */
	    data_out <= data_out+1'b1; /* Incremento do contador */
      end
   end

endmodule
