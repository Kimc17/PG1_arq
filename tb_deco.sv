`timescale 1 ps/ 1 ps
module tb_deco();



				 
logic [3:0] Ra, Rb, Rd;			 
logic  Branch, clk, DataInputON, RWrite;
logic [18: 0] Imm;
logic [31:0] DataInput; 

logic PCSelect;
logic [31:0] BranchDir, ImmExtend, Data1, Data2;
logic [3:0] RD;
						

DECO decop(Ra, Rb, Rd, Branch, clk, DataInputON, RWrite,  Imm, DataInput, PCSelect, BranchDir, ImmExtend, Data1, Data2, RD );

						
initial begin 
	clk =0;
	
	#5
	Ra = 4'b0;
	Rb = 4'b0;
	Rd = 4'd2;
	
	PCSelect = 1'b0;
	Branch = 1'b0;
	DataInputON = 1'b1;
	RWrite = 1'b1;
	Imm = 32'd8;
	DataInput = 32'd10;


	#5
	
	Ra = 4'd5;
	Rb = 4'd3;
	Ra = 4'd4;
	
	PCSelect = 1'b0;
	Branch = 1'b0;
	DataInputON = 1'b1;
	RWrite = 1'b0;
	Imm = 32'd0;
	DataInput = 32'd11;

end
always 
	#5 clk <= !clk;

endmodule