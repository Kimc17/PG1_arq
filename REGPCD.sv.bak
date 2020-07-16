module REGPCD(input logic  [31:0] PCValue,
				 input logic clk, reset,
				 output logic [31:0] PCVALUE);
always_ff @(posedge clk) begin
if (reset) begin
PCVALUE <= 32'b0;
end
else begin
PCVALUE<= PCValue;
end
end					 
endmodule