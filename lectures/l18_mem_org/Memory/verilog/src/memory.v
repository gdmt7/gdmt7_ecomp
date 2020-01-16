module memory(cas,ras,we,addr,data);

input cas;
input ras;
input we;  
input [20:0] addr;
output[15:0] data;

wire [7:0] ras_decoded;

SIMM simm0(
           .addr(addr[17:0]),
           .cas({cas, cas, cas, cas}),
           .ras(ras_decoded[1:0]),
           .data(data)
           );

SIMM simm1(
           .addr(addr[17:0]),
           .cas({cas, cas, cas, cas}),
           .ras(ras_decoded[3:2]),
           .data(data)
           );

SIMM simm2(
           .addr(addr[17:0]),
           .cas({cas, cas, cas, cas}),
           .ras(ras_decoded[5:4]),
           .data(data)
           );


SIMM simm3(
           .addr(addr[17:0]),
           .cas({cas, cas, cas, cas}),
           .ras(ras_decoded[7:6]),
           .data(data)
           );

endmodule