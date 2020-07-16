module REGEXE( input logic [31:0] ALUResult, Data2,
					input logic DataInputON, clk, reset, we, DataInputS, SelectMem,
					output logic [31:0] ALURESULT, DATA2, 
					output logic DATAINPUTON, WE, DATAINPUTS, SELECTMEM);
always_ff @(posedge clk) begin
if (reset) begin
ALURESULT <= 32'b0;
DATA2 <= 32'b0;
DATAINPUTON <=32'b0;
WE <= 1'b0;
DATAINPUTS <= 1'b0;
SELECTMEM  <= 1'b0;



end
else begin
ALURESULT <= ALUResult;
DATA2 <= Data2;
DATAINPUTON <=DataInputON;
WE <= we;
DATAINPUTS <= DataInputS;
SELECTMEM  <= SelectMem;

end
end					 
endmodule