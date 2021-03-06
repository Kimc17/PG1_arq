module DECO (input logic [3:0] Ra, Rb, Rd, Rd2,
				 input logic  Branch, clk, DataInputON, RWrite, R2S, 
				 input logic [18: 0] Imm,
				 input logic [31:0] DataInput, 
				 output logic PCSelect, CmpResult,CmpResult2,
				 output logic [31:0] BranchDir, ImmExtend, Data1, Data2);

logic [3:0] RD, R2; 
logic Temp1, Temp2;

SIGNEXTEND  sep (Imm, ImmExtend);
SHL shlp(ImmExtend, BranchDir);
MULTIPLEXER #4 Mm(Rb, Rd, RWrite, RD);
MULTIPLEXER #4 Mm2(Rb, Rd2, R2S,R2 );
REGMEMORY rmp(Ra, R2, RD, DataInput, clk, DataInputON, Data1, Data2);

						
						
COMPARATOR cmpp (Data1, Data2 , CmpResult);
COMPARATORG cmpp2 (Data1, Data2 , CmpResult2);
assign Temp1 = CmpResult & Branch;	
assign Temp2 = CmpResult2 & Branch;	
assign PCSelect = Temp1 | Temp2;
	

endmodule