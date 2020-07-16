module ROM_F2(		  input logic clk, enable, 
						  input logic  [19:0] addr1,
                    output logic [15:0] data);

						  
				
parameter file = "image.txt";


reg [7:0] rom [307199:0];

always @(posedge clk) begin
  if(enable) begin
  data <= {rom[addr1], rom[addr1+1]};
end
end
endmodule