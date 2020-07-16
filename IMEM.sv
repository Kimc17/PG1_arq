module IMEM(input logic [31:0] a,
				output logic [31:0] rd);

logic [31:0] ram[63:0];
logic [31:0] data;
initial
$readmemh("compilado.dat",ram);

always @(a)
begin 
 data <= ram[a[31:2]];
end


assign rd= data;

endmodule


