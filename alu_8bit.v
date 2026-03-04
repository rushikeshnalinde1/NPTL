module alu(result, flagc, flagz, oper1, oper2, opcode);

input [2:0] opcode;
input [7:0] oper1, oper2;
output reg [15:0] result = 16'b0;
output reg flagc = 1'b0;
output reg flagz = 1'b0;

parameter [2:0] Add = 3'b000,
		Sub = 3'b001,
		Mul = 3'b010,
		And = 3'b011,
		Or  = 3'b100,
		Nand= 3'b101,
		Nor = 3'b110,
		Xor = 3'b111;
always @(*)
begin
result = 0;
flagc = 0;
flagz = 0;
case(opcode)

Add:begin
{flagc,result[7:0]} = oper1+oper2;
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Sub: begin
{flagc,result[7:0]} = oper1 - oper2;
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Mul: begin
result = oper1*oper2;
flagz  = (result == 16'b0);
end

And: begin
result[7:0] = oper1 & oper2;
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Or:  begin
result[7:0] = oper1 | oper2;
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Nand: begin
result[7:0] = ~(oper1 & oper2);
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Nor: begin
result[7:0] = ~(oper1 | oper2);
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

Xor: begin 
result[7:0] = oper1 ^ oper2;
result[15:8] = 8'b0;
flagz  = (result[7:0] == 8'b0);
end

default:begin
result = 16'b0;
flagz  = 1'b0;
flagc  = 1'b0;
end

endcase
end
endmodule



