module TOP(input logic clk, reset);
logic [31:0] Inst, pc4, BranchDir, PC4, ImmExtend, Data1, Data2,
DATA1, DATA2, IMMEXTEND, ALUResult, ALURESULT, DATA21, DATA5, ALURESULT2, DATA52, DataInput,
Data52, InstDeco, InstExe, InstMem, InstWb;

logic WE,DataInputS, OpbSelect, RWrite, RWRITE, RWRITE2, RWRITE3, Branch, PCSelect,DataInputON,
 DATAINPUTON1, WE1, DATAINPUTS1, OPBSELECT, SELECTMEM1, SelectMem, 
 DATAINPUTON2,WE2, DATAINPUTS2, SELECTMEM2, DATAINPUTS3, DATAINPUTON3,
 RWriteDeco, RWriteExe,RWriteMem;
 
logic [2:0] ALUSignal, ALUSIGNAL ; 
logic [3:0] RD, RdDeco, Rd, RdExe, RdMem;

FETCH fetch(PCSelect, clk, reset, pc4, BranchDir, Inst, PC4);

REGFETCH rfetch(Inst, PC4, clk, reset, InstDeco, pc4);


UNIDAD_CONTROL controlp( InstDeco[31:27], InstDeco[14:12], WE,DataInputS,
 DataInputON, OpbSelect, RWrite, Branch, SelectMem, ALUSignal);

DECO deco(InstDeco[22:19], InstDeco[18:15], Rd,Branch, clk, DATAINPUTON3,RWriteMem, InstDeco[18:0], DataInput, 
PCSelect, BranchDir, ImmExtend, Data1, Data2 );	 
 
REGDECO rdeco(Data1, Data2, ImmExtend, InstDeco, InstDeco[26:23],  DataInputON,RWrite,clk, reset, WE, DataInputS, ALUSignal, OpbSelect, SelectMem,
DATAINPUTON1,RWriteDeco, DATA1, DATA2, IMMEXTEND,InstExe, RdExe, WE1, DATAINPUTS1, ALUSIGNAL, OPBSELECT, SELECTMEM1 );					 


EXE exe(IMMEXTEND, DATA2, DATA1, ALUSIGNAL, OPBSELECT, ALUResult);

REGEXE rexe(ALUResult, DATA2, InstExe, RdExe, DATAINPUTON1,RWriteDeco,clk, reset, WE1, DATAINPUTS1, SELECTMEM1,
ALURESULT, DATA21,InstMem, RdMem, DATAINPUTON2,RWriteExe, WE2, DATAINPUTS2, SELECTMEM2 );

MEM mem(SELECTMEM2 , WE2, clk, ALURESULT, DATA21, DATA5);

REGMEM rmem(ALURESULT, DATA5,InstMem, RdMem, clk, reset, DATAINPUTON2,RWriteExe, DATAINPUTS2, ALURESULT2,
 DATA52, InstWb, Rd, DATAINPUTS3, DATAINPUTON3, RWriteMem);

WB wbp( DATAINPUTS3,InstWb, DATA52, ALURESULT2, DataInput);

endmodule