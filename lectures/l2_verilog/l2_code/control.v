`timescale 1ns / 1ps

//compute p**q, where q=4


module control (
		//top interface
	input 	    clk,
	input 	    rst,
	input 	    data_in_valid,
		//counter interface 
	input [1:0] cnt_data,
	output 	    cnt_rst, cnt_en,
		//register interface
	output 	    reg_en
);


//state vars
   reg   state, state_nxt;
   
   /* Processo para iniciação da váriavel state, reage a fase ascendendete de clk */
   //state register 
   always @ (posedge clk) begin
      if(rst)
	state <= 1'b0;
      else
	state <= state_nxt;
   end

   //state transition
   /* Processo com descrição de lógica combinatória */ 
   always @* begin 
      //defaults 
      
      state_nxt = state; /* Actualização do estado */

      case (state)
	1'b0: //Init
	  if(data_in_valid) /* Quando data_in_valid = 1, a entrada está valida para ser registada */
	    state_nxt = 1'b1;
	default:;//Accumulate
      endcase    
   end 
   
   //counter management
   assign cnt_rst = data_in_valid; 
   assign cnt_en = (state != 1'b0); /* Enquanto state != 0 o sinal enable continua activo */

   //register management
   assign reg_en = data_in_valid | (cnt_data < 2'd3); /* reg_en = 1, quando o registo não esta cheio ou a data é valida*/
   

endmodule
