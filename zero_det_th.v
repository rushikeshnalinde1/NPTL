module zero_det_tb;

wire y_out;
reg x_in, clock, reset;

zero_det dut(
    .y_out(y_out),
    .x_in(x_in),
    .clock(clock),
    .reset(reset)
);

//
// Stop simulation
//
initial #200 $finish;

//
// Clock generation (10ns period)
//
initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

//
// Stimulus
//
initial begin
    reset = 0;
    x_in  = 0;

    #2  reset = 1;     // release reset

    #10 x_in = 1;
    #20 x_in = 0;
    #10 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 1;
    #10 x_in = 0;
    #20 x_in = 1;
    #10 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 1;
    #20 x_in = 0;
    #40 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 1;
end

endmodule
