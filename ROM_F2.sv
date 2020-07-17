module ROM_F2(	
	input logic clk, enable, 
   input logic  [18:0] a,
   output logic [31:0] data);

parameter file = "image.txt";


reg [7:0] rom [204799:0];
logic [7:0] temp1, temp2;

always @(posedge clk) begin
if (enable) begin
   temp1 <= rom[a];
	temp2 <= rom[a + 1];

end
else begin
	temp1 <= 8'b0;
	temp2 <= 8'b0;
end
end

assign data= {16'b0, temp1, temp2};

initial begin
  $readmemh(file, rom);
end

	

endmodule