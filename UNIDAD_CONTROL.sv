module UNIDAD_CONTROL( input logic[4:0] OPCODE,
							  input logic [2:0] ALUOP,
							  output logic WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem,R2S,						 
							  output logic [2:0] ALUSignal
							 );
logic [9:0] out;							 
assign {WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch,SelectMem,R2S, ALUSignal} = out;
always @(*) begin 

case (OPCODE)

5'b00000: out = {8'b01101000, ALUOP}; //Tipo R
5'b00001: out = 11'b00110010000;  	 //LDR 
5'b00010 :out = 11'b11010000000;      //STR
5'b00100 :out = 11'b01111000000;      //ADDI
5'b00011 :out = 11'b01101101000;      //BEQ
5'b00101 :out = 11'b01101101000;      //BEQ

endcase

end
							 
endmodule