module SHL( input logic [31:0] ImmExtend,
				 output logic[31:0] BranchDir);
				
				
assign BranchDir = ImmExtend <<  2'd2;				
endmodule