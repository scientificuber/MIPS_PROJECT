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
        clk = 0; pc = 0; #10;
        repeat(200) #10 clk = ~clk;
        $display("%d \t%d \t%d\n%d \t%d \t%d\n%d \t%d \t%d\n", d11, d12, d13, d21, d22, d23, d31, d32, d33);
    end

    always @ ( posedge clk ) begin
        pc = pc + 4;
    end
endmodule
