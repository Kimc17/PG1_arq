module EXE(input logic [31:0] ImmExtend, Data2, Data1,
			  input logic [2:0] ALUSignal,
			  input logic OpbSelect,
		   output logic [31:0] ALUResult);
					 
logic [31:0] Opb;
			
MULTIPLEXER #32 muxp3 (Data2, ImmExtend, OpbSelect, Opb);
TOPALU alup (Data1, Opb, ALUSignal, ALUResult);
endmodule