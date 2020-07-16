`timescale 1 ps/ 1 ps
module tb_rom();

logic clock, en2;
logic [18:0] address;
logic [15:0] d1;


ROM romp(en2, address, d1 );

						
initial begin 	
	clock =0;
	
	en2 = 1'b0;
	address = 19'd0;
	#5
	en2 = 1'b0;
	address = 19'd1;
	#5 
	en2 = 1'b0;
	address = 19'd2;		
	

end
always 
	#5 clock <= !clock;

endmodule