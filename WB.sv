module WB(input logic DataInputS, 
			  input logic [31:0] InstWb, Data5, ALUResult,
			  output logic [31:0] DataInput); 
MULTIPLEXER Mm1(Data5, ALUResult, DataInputS, DataInput);
endmodule