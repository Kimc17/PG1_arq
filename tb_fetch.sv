`timescale 1 ps/ 1 ps
module tb_fetch();

						
logic PCSelect, clk, reset;
logic [31:0] pc4,  BranchDir, Inst, PC4;


FETCH fetchp(PCSelect, clk, reset, pc4,  BranchDir, Inst, PC4);

						
initial begin 
	clk =0;
	reset = 1'b1;
	PCSelect = 1'b0;
	#5; 
	#5;
	pc4 = 32'd0;
	BranchDir = 32'd5;
	#5
	PCSelect = 1'd1;
	pc4 = 32'd4;
	BranchDir = 31'd5;
	
	

end
always 
	#5 clk <= !clk;

endmodule