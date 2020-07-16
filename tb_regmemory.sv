`timescale 1 ps/ 1 ps

module tb_regmemory();

						

logic DataInputON, clk;
logic [3:0] Ra, Rb, Rd;
logic [31:0] DataInput;
logic [31:0] Data1, Data2;

REGMEMORY regmemoryp(Ra, Rb, Rd, DataInput,clk, DataInputON, Data1, Data2);

						
initial begin 
	DataInputON = 0;
	clk=0;
	Ra = 4'd0;
	Rb = 4'd0;
	Rd = 4'd0;
	#5 DataInput =32'd100;
	
	#7 DataInputON = 1;
	#7	DataInputON = 0;
	
	#5 Rd = 5'd2;
	
	#7 DataInputON = 1;
	#7	DataInputON = 0;

end
always 
	#5 clk <= !clk;
	
endmodule