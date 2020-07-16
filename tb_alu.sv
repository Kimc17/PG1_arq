`timescale 1 ps/ 1 ps
module tb_alu();
						

logic [2:0] ALUSignal;
logic [31:0] Opa, Opb, ALUResult;

TOPALU alup(Opa, Opb, ALUSignal,ALUResult);

						
initial begin 


	ALUSignal = 3'b000;
	Opa = 4'd6;
	Opb = 4'd2;
	
	#10; 
	ALUSignal = 3'b001;
	#10
	ALUSignal = 3'b010;
	#10
	ALUSignal = 3'b011;
	#10
	ALUSignal = 3'b100;
	#10
	ALUSignal = 3'b000;
	

end

endmodule