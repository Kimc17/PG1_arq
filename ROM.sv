module ROM(	input logic clock, en2,
				input logic [31:0] address,
            output logic [15:0] d1);

logic [7:0] q_s1, q_s2;

ROM_F2 RI1 (clock,en2, address[18:0], q_s1);
ROM_F2 RI2 ( clock,en2, address[18:0]+1'd1, q_s2);

always_ff @(*) begin
if (en2) begin
 d1 <= {q_s1, q_s2};
end
end




endmodule