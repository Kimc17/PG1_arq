`timescale 1ps/1ps

module tb_ROMSimulation();
reg clock;
reg [17:0] address;
wire [7:0] q;

RomImage romp(address, clock, q );

always begin 
clock <=0;
#10;
clock <=1;
#10;
end


initial begin 
@(posedge clock);
#5 address <=18'd0;
@(posedge clock);
#5 address <=18'd0;
@(posedge clock);
#5 address <=18'd1;
@(posedge clock);
#5 address <=18'd1;
@(posedge clock);
#5 address <=18'd2;
@(posedge clock);
#5 address <=18'd2;
@(posedge clock);
#5 address <=18'd3;
@(posedge clock);
#5 address <=18'd3;
@(posedge clock);
#5 address <=18'd4;
@(posedge clock);
#5 address <=18'd4;
@(posedge clock);
#5 address <=18'd5;
@(posedge clock);
#5 address <=18'd5;
@(posedge clock);
#5 address <=18'd6;
@(posedge clock);
#5 address <=18'd6;
@(posedge clock);
#5 address <=18'd7;
@(posedge clock);
#5 address <=18'd7;
end
endmodule