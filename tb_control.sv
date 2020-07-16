`timescale 1 ps/ 1 ps
module tb_control();


logic[4:0] OPCODE;
logic [2:0] ALUOP;
logic WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem, clk;						 
logic [2:0] ALUSignal;
						


UNIDAD_CONTROL ucp(OPCODE, ALUOP, WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem, ALUSignal );

						
initial begin 
	clk =0;
	
	OPCODE = 5'd0;
	ALUOP = 3'd0;

	#5; 
	OPCODE = 5'd0;
	ALUOP = 3'd1;
	
	#5; 
	OPCODE = 5'd0;
	ALUOP = 3'd2;
	
	#5; 
	OPCODE = 5'd0;
	ALUOP = 3'd3;
	
	#5; 
	OPCODE = 5'd0;
	ALUOP = 3'd4;
	
	#5; 
	OPCODE = 5'd1;
	ALUOP = 3'd0;
	
	#5; 
	OPCODE = 5'd2;
	ALUOP = 3'd0;
	#5; 
	OPCODE = 5'd3;
	ALUOP = 3'd0;
	#5; 
	OPCODE = 5'd4;
	ALUOP = 3'd0;
	

end
always 
	#5 clk <= !clk;

endmodule