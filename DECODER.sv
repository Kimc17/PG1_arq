module DECODER(input logic SelectMem,
					output logic En1, En2);

always @(*) begin 
case (SelectMem)
1'b0 : En1 = 1'b1;
1'b1 : En2 = 1'b1 ;
default : En1=1'bx;
endcase
end		
endmodule