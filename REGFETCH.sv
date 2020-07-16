module REGFETCH( input logic [31:0] Inst, pc4,
					  input logic clk, reset,
					  output logic [31:0] INSTRUCCION, PC4);
always_ff @(posedge clk) begin
if (reset) begin
INSTRUCCION <= 32'b0;
PC4 <= 32'b0;

end
else begin
INSTRUCCION <= Inst;
PC4 <= pc4;
end
end					 
endmodule