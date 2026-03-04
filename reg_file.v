module reg_file(
    input [31:0] ip1,
    input [3:0] sel_i1, sel_o1, sel_o2,
    input rd, wr,
    input en, clk, rst,
    output reg [31:0] op1, op2
);

reg [31:0] regfile [0:15];
integer i;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        for(i=0; i<16; i=i+1)
            regfile[i] <= 32'h0;

        op1 <= 32'h0;
        op2 <= 32'h0;
    end

    else if(en)
    begin
        case({rd,wr})

            2'b01: // Write
                regfile[sel_i1] <= ip1;

            2'b10: // Read
            begin
                op1 <= regfile[sel_o1];
                op2 <= regfile[sel_o2];
            end

            2'b11: // Read + Write
            begin
                op1 <= regfile[sel_o1];
                op2 <= regfile[sel_o2];
                regfile[sel_i1] <= ip1;
            end

            default: ;
        endcase
    end
end

endmodule
