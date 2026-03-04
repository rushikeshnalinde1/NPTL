`timescale 1ns/1ps
module reg_file_tb;

reg [31:0] ip1;
reg [3:0] sel_i1, sel_o1, sel_o2;
reg rd, wr, rst, en, clk;

wire [31:0] op1, op2;

// DUT instantiation
reg_file dut(
    .ip1(ip1),
    .sel_i1(sel_i1),
    .sel_o1(sel_o1),
    .sel_o2(sel_o2),
    .rd(rd),
    .wr(wr),
    .rst(rst),
    .en(en),
    .clk(clk),
    .op1(op1),
    .op2(op2)
);

// Clock generation
always #10 clk = ~clk;

// Stimulus
initial
begin
    // Initial values
    clk = 0;
    ip1 = 0;
    sel_i1 = 0;
    sel_o1 = 0;
    sel_o2 = 0;
    rd = 0;
    wr = 0;
    rst = 1;
    en = 0;

    #40;

    // Release reset
    rst = 0;
    en = 1;

    // Write register 0
    #20;
    wr = 1;
    rd = 0;
    ip1 = 32'hABCDEFAB;
    sel_i1 = 4'h0;

    // Write register 1
    #20;
    ip1 = 32'h01234567;
    sel_i1 = 4'h1;

    // Read registers
    #20;
    wr = 0;
    rd = 1;
    sel_o1 = 4'h0;
    sel_o2 = 4'h1;

    #40;

    $finish;
end

endmodule
