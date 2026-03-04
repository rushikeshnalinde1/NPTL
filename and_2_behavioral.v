module and_2_behavioral(output reg y, input a, b);
always @(*)
begin 
if(a==1'b1 & b==1'b1)
begin
y= 1'b1;
end
else
y=1'b0;
end
endmodule
