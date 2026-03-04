module dff_bm(output reg q, input d, clk);
always @(posedge clk)
begin 
q <= d;
end
endmodule

