module COMPARATOR( input logic [31:0] Data1, Data2,
				       output logic  CmpResult);
				
				
assign CmpResult = (Data1 == Data2);		
endmodule