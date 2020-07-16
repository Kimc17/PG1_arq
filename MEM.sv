module MEM(input logic SelectMem, WE, clk,
			  input logic [31:0] ALURESULT,
			  input logic [31:0] Data2,
			  output logic [31:0] Data5, Data4, Data3 );

logic En1, En2;



DECODER decp (SelectMem, En1, En2);		  
ROM romp(clk, En1, ALURESULT[19:0], Data4);
DMEM dmemp (clk, WE, En2, ALURESULT, Data2, Data3);
MULTIPLEXER  muxp5 (Data3, Data4, SelectMem, Data5);

endmodule