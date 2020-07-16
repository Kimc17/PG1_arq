module REGMEMORY(input logic [3:0] Ra, Rb, RD,
					  input logic [31:0] DataInput,
					  input logic clk, DataInputON,
					   output logic [31:0] Data1, Data2);
logic [31:0] registros [15:0];
always_ff @(posedge clk) 
if (DataInputON) 
registros[RD] <= DataInput;
assign Data1 = (Ra == 5'b00000)? 32'b0 : registros[Ra];
assign Data2 = (Rb == 5'b00000)? 32'b0: registros[Rb]; 
  				  
endmodule

