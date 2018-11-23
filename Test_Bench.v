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
        $dumpfile("mip3x3m.vcd");
        $dumpvars(0, TB_3x3_Multiplication);
        clk = 0; pc = -4; #10;
        repeat(500) #10 clk = ~clk;
        $display("%d \t%d \t%d\n%d \t%d \t%d\n%d \t%d \t%d\n", d11, d12, d13, d21, d22, d23, d31, d32, d33);
    end

    always @ ( posedge clk ) begin
        pc = pc + 4;
        //$display("%d", pc);
    end
endmodule
