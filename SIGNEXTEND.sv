module SIGNEXTEND (input logic [18:0] Imm,
					 output logic [31:0] IMMEXTEND);
					 
assign  IMMEXTEND ={{13{Imm[17]}}, Imm};

endmodule