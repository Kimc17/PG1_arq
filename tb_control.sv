`timescale 1 ps/ 1 ps
module tb_control();


logic[4:0] OPCODE;
logic [2:0] ALUOP;
logic WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem;						 
logic [2:0] ALUSignal;
						


UNIDAD_CONTROL ucp(OPCODE, ALUOP, WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem, ALUSignal );

						
initial begin 
	
	OPCODE = 5'b00000;
	ALUOP = 3'b000;

	#5
	OPCODE = 5'b00000;
	ALUOP = 3'b001;
	
	#5 
	OPCODE = 5'b00000;
	ALUOP = 3'b010;
	
	#5 
	OPCODE = 5'b00001;
	
	#5 
	OPCODE = 5'b00010;
	

	#5 
	OPCODE = 5'b00011;
	#5; 
	OPCODE = 5'b00100;

	#5
	OPCODE = 5'b00000;
	ALUOP = 3'b000;
	

end

endmodule