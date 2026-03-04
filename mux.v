module mux(select, i0, i1, out);
input select, i0, i1;
output out;

reg out_reg;

always @(*)
begin
out_reg = (~select&i0)+(select&i1);
end 
assign out = out_reg;
endmodule