module REGMEM( input logic [31:0] ALUResult, Data5, Inst,
					input logic [3:0] Rd,
					input logic  clk, reset, DataInputON, RWrite,DataInputS,  
					output logic [31:0] ALURESULT, DATA5, INST,
					output logic [3:0] RD,
					output logic DATAINPUTS, DATAINPUTON, RWRITE);
					
					
always_ff @(posedge clk) begin
if (reset) begin
ALURESULT <= 32'b0;
DATA5 <= 32'b0;
DATAINPUTON <=1'b0;
DATAINPUTS <= 1'b0;
INST <= 32'b0;
RD <= 4'b0;
RWRITE <= 1'b0;
end
else begin
ALURESULT <= ALUResult;
DATA5 <= Data5;
DATAINPUTON <=DataInputON;
DATAINPUTS <= DataInputS;
INST <= Inst;
RD <= Rd;
RWRITE <= RWrite;
end
end					 
endmodule