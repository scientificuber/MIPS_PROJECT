module decoderAndRegisters(instruction, s0, s1, s2, s3, s4, s5, s6, s7, t0, t1, t2, t3, t4, t5, t6, t7, MemR, MemW, RegW, MemToReg, aluControlLines, operand1, operand2);
    /*
    input [31:0] instruction;
    output [31:0] finalOut;
    output zeroFlag;

    reg [31:0] s2;
    reg [31:0] s3;

    initial begin
        s2 = 2;
        s3 = 3;
    end

    wire [1:0] aluop;
    wire [3:0] out4;
    wire [5:0] opcode;

    reg [31:0] operand1;
    reg [31:0] operand2;
    wire [15:0] addressImmediate;

    controlUnit cu(opcode, aluop);
    aluControlUnit alu(aluop, instruction[5:0], out4);

    wire [4:0] rs, rt;

    assign opcode = instruction[31:26];
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign addressImmediate = instruction[15:0];

    always @ (instruction, aluop) begin
        case(rs)
            5'b10010 : operand1 = s2;
            5'b10011 : operand1 = s3;
        endcase

        case(rt)
            5'b10010 : operand2 = s2;
            5'b10011 : operand2 = s3;
        endcase

        case(aluop)
            2'b00 : operand2 = instruction[15:0];
            default : operand2 = operand2;
        endcase

    end

    aluMain ALU(out4, operand1, operand2, finalOut, zeroFlag);
    */
    input [31:0] instruction;
    input [31:0] s0, s1, s2, s3, s4, s5, s6, s7;
    input [31:0] t0, t1, t2, t3, t4, t5, t6, t7;

    wire [31:0] S[7:0];
    wire [31:0] T[7:0];

    output reg [31:0] operand1;
    output reg [31:0] operand2;
    output MemR, MemW, RegW, MemToReg;
    output [3:0] aluControlLines;

    assign S[0] = s0; assign S[1] = s1; assign S[2] = s2; assign S[3] = s3; assign S[4] = s4; assign S[5] = s5; assign S[6] = s6; assign S[7] = s7;
    assign T[0] = t0; assign T[1] = t1; assign T[2] = t2; assign T[3] = t3; assign T[4] = t4; assign T[5] = t5; assign T[6] = t6; assign T[7] = t7;

    /*
    reg [31:0] s0, s1, s2, s3, s4, s5, s6, s7;
    reg [31:0] t0, t1, t2, t3, t4, t5, t6, t7;
    */

    wire [5:0] opcode;
    assign opcode = instruction[31:26];

    wire [4:0] rs, rt, rd;
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign rd = instruction[15:11];
    assign addImm = instruction[15:0];

    wire [5:0] foo;
    assign foo = instruction[5:0];

    wire [1:0] aluop;

    controlUnit cu(opcode, aluop, MemR, MemW, RegW, MemToReg);
    aluControlUnit acu(aluop, foo, aluControlLines);

    always @ (instruction) begin
        case(rs)
            16:operand1 = S[0];
            17:operand1 = S[1];
            18:operand1 = S[2];
            19:operand1 = S[3];
            20:operand1 = S[4];
            21:operand1 = S[5];
            22:operand1 = S[6];
            23:operand1 = S[7];
            8:operand1 = T[0];
            9:operand1 = T[1];
            10:operand1 = T[2];
            11:operand1 = T[3];
            12:operand1 = T[4];
            13:operand1 = T[5];
            14:operand1 = T[6];
            15:operand1 = T[7];
        endcase

        case(rt)
            16:operand2 = S[0];
            17:operand2 = S[1];
            18:operand2 = S[2];
            19:operand2 = S[3];
            20:operand2 = S[4];
            21:operand2 = S[5];
            22:operand2 = S[6];
            23:operand2 = S[7];
            8:operand2 = T[0];
            9:operand2 = T[1];
            10:operand2 = T[2];
            11:operand2 = T[3];
            12:operand2 = T[4];
            13:operand2 = T[5];
            14:operand2 = T[6];
            15:operand2 = T[7];
        endcase

    end
endmodule
