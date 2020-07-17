module FETCH (input logic PCSelect, clk, reset, 
				  input logic [31:0] pc4,  BranchDir,
				  output logic [31:0] Inst, PC4, DirSalto);
logic [31:0] PCValue, PCVALUE; 
REGPCD regpcdp(PCValue, clk, reset, PCVALUE);
ADD adderp(pc4, BranchDir, DirSalto);
MULTIPLEXER #32 muxp(PC4,  DirSalto, PCSelect, PCValue);
ADD adderpc(PCVALUE, 32'd4, PC4);
IMEM imemp(PCVALUE, Inst);

endmodule