`timescale 1ns/1ps
module alu_8bit_tb;

reg [2:0] opcode;
reg [7:0] oper1;
reg [7:0] oper2;

wire [15:0] result;
wire flagc;
wire flagz;

reg [2:0]count = 3'b0;

alu dut(   .opcode(opcode),
		.oper1(oper1),
		.oper2(oper2),
		.result(result),
		.flagc(flagc),
		.flagz(flagz));

initial begin

opcode = 3'b0;
oper1  = 8'h0;
oper2  = 8'h0;

#100;
oper1 = 8'hAA;
oper2 = 8'h55;

for(count = 0; count<8; count= count+1'b1)
begin
	opcode = count;
	#20;
end 
end
endmodule

		
		