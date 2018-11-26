// `timescale 1ns / 1ps
module TB_3x3_Multiplication;
    reg [31:0] pc;
    reg clk;

    wire [31:0] d11, d12, d13, d21, d22, d23, d31, d32, d33;

    main uut(
        .pc(pc),
        .d11(d11),
        .d12(d12),
        .d13(d13),
        .d21(d21),
        .d22(d22),
        .d23(d23),
        .d31(d31),
        .d32(d32),
        .d33(d33)
    );

    initial begin
        $dumpfile("graph.vcd");
        $dumpvars(0, TB_3x3_Multiplication);
        clk = 0; pc = 0; #10;
        repeat(200) #10 clk = ~clk;
    end

    always @ (posedge clk) begin
    if(pc!=356)
        begin
            $display("\tPC = %d\n", pc);
            $display("\t%d %d %d\n\t%d %d %d\n\t%d %d %d", d11, d12, d13, d21, d22, d23, d31, d32, d33);
            $display("\t-----------------------------------\n");
            pc = pc + 4;
        end

    end
endmodule
