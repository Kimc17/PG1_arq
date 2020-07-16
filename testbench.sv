module testbench();
reg clk;
reg reset;


TOP dut (clk, reset);

initial
begin
reset <= 1; # 10; reset <= 0;
end

always
begin
clk <= 1; # 5; clk <= 0; # 5;
end
endmodule

