`timescale 1 ps/ 1 ps
module tb_memoria();

reg clk, enable;
reg [18:0] addr;
wire [15:0] data;


ROM_F2 romp( clk,enable, addr, data);


 always begin
	
  	clk <=0;
  	#5;
  	clk <=1;
	#5;
  	
  end

initial begin
enable =0;
@(negedge clk);
addr <= 19'd0;
 
#10
enable =1;
@(negedge clk);
addr <= 19'd2;

#10
enable=1; 
@(negedge clk);
addr <= 19'd4;

#10
enable=1; 
@(negedge clk);
addr <= 19'd6;


#10
enable=1; 
@(negedge clk);
addr <= 19'd8;

#10
enable=1; 
@(negedge clk);
addr <= 19'd10;
end
endmodule