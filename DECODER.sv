module DECODER(input logic SelectMem,
					output logic En1, En2);

always @(*) begin 
case (SelectMem)
   0: begin  
	En1<= 1;
	En2<= 0;    
   end
   1: begin
	En1<= 0;
	En2<= 1;      
   end
   default: begin
	En1<= 0;
	En2<= 0; 
	end
endcase
end	


endmodule		