`timescale 1 ps/ 1 ps
module tb_exe();

logic [31:0] ImmExtend, Data2, Data1;
logic [2:0] ALUSignal;
logic OpbSelect, clk;

logic [31:0] ALUResult;
			
			
EXE exep(ImmExtend, Data2, Data1, ALUSignal, OpbSelect, ALUResult);

						
initial begin 

	clk =0;
	ImmExtend = 32'd8;
	ALUSignal = 3'b000;
	Data1 = 32'd0;
	Data2 = 32'd8;
	OpbSelect = 1'b1;


	#5
	
	ImmExtend = 32'd8;
	ALUSignal = 3'b100;
	Data1 = 32'd10;
	Data2 = 32'd4;
	OpbSelect = 1'b0;

end
always 
	#5 clk <= !clk;

endmodule