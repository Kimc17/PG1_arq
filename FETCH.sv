module FETCH (input logic PCSelect, clk, reset, 
				  input logic [31:0] pc4,  BranchDir,
				  output logic [31:0] Inst, PC4);
logic [31:0] PCValue, PCVALUE, AddResult; 
REGPCD regpcdp(PC4, clk, reset, PCVALUE);
ADD adderp(pc4, BranchDir, AddResult);
MULTIPLEXER #32 muxp(AddResult, PC4, PCSelect, PCValue);
ADD adderpc(PCVALUE, 32'd4, PC4);
IMEM imemp(PCVALUE, Inst);

endmodule