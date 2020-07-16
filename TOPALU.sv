module TOPALU ( input logic [31:0] Opa, Opb,
					 input logic [2:0] ALUSignal,
					 output logic [31:0] ALUResult);
logic [31:0] ADDresult, MULresult, SUBresult, LSRresult, ANDresult;
					
ADD ADDp (Opa, Opb,ADDresult);
MUL MULp (Opa, Opb,MULresult);
LSR LSRp (Opa, Opb,LSRresult);
SUB SUBp (Opa, Opb,SUBresult);
MUXALU MUXp (ADDresult, SUBresult, MULresult, LSRresult, ANDresult, ALUSignal, ALUResult);
assign ANDresult =	Opa & Opb;			
endmodule