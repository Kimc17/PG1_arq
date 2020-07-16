module REGMEM( input logic [31:0] ALUResult, Data5,
					input logic  clk, reset, DataInputON,DataInputS,  
					output logic [31:0] ALURESULT, DATA5,
					output logic DATAINPUTS, DATAINPUTON);
					
					
always_ff @(posedge clk) begin
if (reset) begin
ALURESULT <= 32'b0;
DATA5 <= 32'b0;
DATAINPUTON <=1'b0;
DATAINPUTS <= 1'b0;
end
else begin
ALURESULT <= ALUResult;
DATA5 <= Data5;
DATAINPUTON <=DataInputON;
DATAINPUTS <= DataInputS;
end
end					 
endmodule