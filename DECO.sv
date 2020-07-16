module DECO (input logic [3:0] Ra, Rb, Rd,
				 input logic  Branch, clk, DataInputON, RWrite,
				 input logic [18: 0] Imm,
				 input logic [31:0] DataInput, 
				 output logic PCSelect,
				 output logic [31:0] BranchDir, ImmExtend, Data1, Data2,
				 output logic [3:0] RD);

logic CmpResult; 

SIGNEXTEND  sep (Imm, ImmExtend);
SHL shlp(ImmExtend, BranchDir);
MULTIPLEXER #4 Mm2(Rb, Rd, RWrite, RD);
REGMEMORY rmp(Ra, Rb, RD, DataInput, clk, DataInputON, Data1, Data2);

						
						
COMPARATOR cmpp (Data1, Data2, CmpResult);
assign PCSelect = CmpResult& Branch;	
	

endmodule