module iirfilter_tb;

reg clk, rst;
reg [3:0] a, x;
wire [3:0] y;

iir_filter dut(
    .clk(clk),
    .rst(rst),
    .a(a),
    .x(x),
    .y(y)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk;

// Stimulus
initial begin

    rst = 1;
    a = 4'd2;
    x = 4'd1;

    #10 rst = 0;

    #10 a = 4'd2; x = 4'd1;
    #10 a = 4'd7; x = 4'd10;
    #10 a = 4'd3; x = 4'd5;
    #10 a = 4'd4; x = 4'd6;

    #50 $finish;

end

endmodule
