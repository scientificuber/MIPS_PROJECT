module aluTestBench;
    reg [31:0] instruction;
    wire [31:0] finalOut;
    reg clk;

    decoderAndRegisters uut(
        .instruction(instruction),
        .finalOut(finalOut),
        .zeroFlag(zeroFlag)
    );

    initial begin
        clk = 0;
        repeat(2) #10 clk = ~clk;
        /*
        */
        instruction = 32'b100011_10010_10011_0000000000010100;
        #10;    //lw s1, 65(s2);
        $display("LW s1, 20(s2) opcode : %b\n\tALU output : %b %d   zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);

        instruction = 32'b101011_10010_10011_0000000000011110;
        #10;    //sw s1, 65(s2);
        $display("SW s1, 30(s2) opcode : %b\n\tALU output : %b %d   zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);

        instruction = 32'b000000_10010_10011_10000_00001_100000;
        #10;    //add s3, s1, s2;
        $display("ADD s3, s2, s3 opcode : %b\n\tALU output : %b %d  zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);

        instruction = 32'b000000_10010_10011_10000_00001_100100;
        #10;    //and s3, s1, s2;
        $display("AND s3, s2, s3 opcode : %b\n\tALU output : %b %d  zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);

        instruction = 32'b000000_10010_10011_10000_00001_100101;
        #10;    //or s3, s1, s2;
        $display("OR s3, s2, s3 opcode : %b\n\tALU output : %b %d   zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);

        instruction = 32'b000100_10010_10011_0000000001000001;
        #10;    //beq s1, s2, 65;
        $display("BEQ s2, s3, 65 opcode : %b\n\tALU output : %b %d  zeroFlag = %b\n", instruction, finalOut, finalOut, zeroFlag);


        /*
        instruction = 32'b000000_10010_10011_10000_00001_100010;
        #10;    //sub s3, s1, s2;
        $display("sub s3, s1, s2 opcode : %b\n\tALU output : %b %d\n", instruction, finalOut, finalOut);
        */
    end

endmodule
