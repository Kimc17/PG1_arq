module MUXALU( input logic [31:0] ADDresult, SUBresult, MULresult, LSRresult, ANDresult, 
				   input logic [2:0] ALUSignal,
				   output logic  [31:0] result);			
				


always @(*) begin 
case (ALUSignal)
3'b000 : result = ADDresult;
3'b001 : result = MULresult;
3'b010 : result = LSRresult;
3'b011 : result = ANDresult;
3'b100 : result = SUBresult;
default : result = 32'bx;
endcase
end				
endmodule