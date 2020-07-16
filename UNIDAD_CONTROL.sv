module UNIDAD_CONTROL( input logic[4:0] OPCODE,
							  input logic [2:0] ALUOP,
							  output logic WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch, SelectMem,						 
							  output logic [2:0] ALUSignal
							 );
logic [9:0] out;							 
assign {WE,DataInputS,DataInputON, OpbSelect, RWrite, Branch,SelectMem, ALUSignal} = out;
always @(*) begin 

case ({OPCODE, ALUOP})

8'b00000000 : out = 10'b0110100000; 
8'b00000001 : out = 10'b0110100001; 
8'b00000010 : out = 10'b0110100010; 
8'b00000011 : out = 10'b0110100011;
8'b00000100 : out = 10'b0110100100;
8'b00001XXX : out = 10'b0011001XXX;
8'b00010XXX : out = 10'b1101X00XXX;
8'b00011XXX : out = 10'b0000010XXX;
8'b00100xxx : out = 10'b0111100000;
default:  out = 10'bxxxxxxxxxx;

endcase

end
							 
endmodule