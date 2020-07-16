module MULTIPLEXER # (parameter WIDTH =32)
					(input [WIDTH-1:0] e0, e1,
					input sel,
					output [WIDTH-1:0] out);
					
					
assign out = sel ? e1 : e0;

endmodule