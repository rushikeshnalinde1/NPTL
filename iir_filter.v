module iir_filter(clk, rst, a, x, y);

input [3:0] a, x;
input clk, rst;
output [3:0] y;

reg [3:0] y_value;
wire [7:0] bw_prod;

baugh_mult bm1(.a(a), .b(y_value), .p(bw_prod));

always @(posedge clk or posedge rst)
begin
    if(rst)
        y_value <= x;
    else
        y_value <= x + bw_prod[3:0];   // scaling/truncation
end

assign y = y_value;

endmodule
