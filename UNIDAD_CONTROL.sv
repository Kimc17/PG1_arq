module UNIDAD_CONTROL( input logic[4:0] OPCODE,
							  input logic [2:0] ALUOP,
							  output logic WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem,						 
							  output logic [2:0] ALUSignal
							 );
logic [9:0] out;							 
assign {WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch,SelectMem, ALUSignal} = out;
always @(*) begin 

case (OPCODE)

5'b00000: out = {7'b0110100, ALUOP}; //Tipo R
5'b00001: out = 10'b0011001000;  	 //LDR 
5'b00010 :out = 10'b1101x00000;      //STR
5'b00100 :out = 10'b0111100000;      //ADDI
5'b00011 :out = 10'b0110110000;      //BEQ

endcase

end
							 
endmodule