module OR( input logic[31:0] Opa, Opb,
				output logic [31:0] result);
				
				
assign result = Opb | Opa;				
endmodule