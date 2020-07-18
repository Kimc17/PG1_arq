module REGDECO(   input logic[31:0] Data1, Data2, ImmExtend, Inst,
					 input logic [3:0] Rd,
					 input logic  DataInputON, RWrite, clk, reset, we, DataInputS, CmpResult, CmpResult2, 
					 input logic [2:0]ALUSignal,
					 input logic OpbSelect, SelectMem,
					 output logic DATAINPUTON,RWRITE,
					 output logic [31:0] DATA1, DATA2, IMMEXTEND, INST, 
					 output logic [3:0] RD,
					 output logic  WE, DATAINPUTS, 
					 output logic [2:0] ALUSIGNAL,
					 output logic OPBSELECT, SELECTMEM);
					 
					 

always_ff @(posedge clk) begin
if (reset) begin
DATA1 <= 32'b0;
DATA2 <= 32'b0;
IMMEXTEND <= 32'b0;
DATAINPUTON <= 1'b0;
INST<= 32'b0;
RD<= 4'b0;
RWRITE <= 1'b0;

WE <= 1'b0;
DATAINPUTS <= 1'b0;
ALUSIGNAL  <= 3'b0;
OPBSELECT  <= 1'b0;
SELECTMEM  <= 1'b0;


end
else begin
DATA1 <= Data1;
DATA2 <= Data2;
IMMEXTEND <= ImmExtend;
WE <= we;
DATAINPUTS <= DataInputS;
ALUSIGNAL  <= ALUSignal;
OPBSELECT  <= OpbSelect;
SELECTMEM  <= SelectMem;
DATAINPUTON <= DataInputON;
INST<= Inst;
RD<= Rd;
RWRITE <= RWrite;
end
end					 
endmodule