`timescale 1ns/1ps

/* Descrição de um somador de N bits */
module gate 
(
  input a,
  input b,
  output y
);

  assign y = a & b;
    
endmodule
