`timescale 1 ps/ 1 ps
module tb_mem();



logic SelectMem, WE, clk;
logic [31:0] ALURESULT;
logic [31:0] Data2;

logic [31:0] Data5;


			
			
EXE exep(SelectMem, WE, clk,ALURESULT,Data2, Data5);

						
initial begin 

	clk =0;
	SelectMem = 1'b1;
	WE = 1'b1;
	ALURESULT = 32'd8;
	Data2 = 32'd3;

	


	#5
	SelectMem = 1'b0;
	WE = 1'b0;
	ALURESULT = 32'd9;
	Data2 = 32'd4;

end
always 
	#5 clk <= !clk;

endmodule