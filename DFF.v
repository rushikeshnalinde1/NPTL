module dff(q, qb, d, clk, reset);
output reg q;
output reg qb;
input d, clk, reset;
always @(posedge clk)
begin
if(reset == 1'b1)
q <= 1'b0;
else
q <= d;
end
endmodule
