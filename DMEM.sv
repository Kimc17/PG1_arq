module DMEM (input logic clk, we, en1,
             input logic  [31:0] a, wd,
             output logic [31:0] rd);
				 
				 
reg [31:0] RAM[63:0];


always_ff @(*) begin
rd <= RAM[a[31:2]];
end

always @ (posedge clk)
if (we)
RAM[a[31:2]] <= wd;
endmodule