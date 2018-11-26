module controlUnit(instruction, opcode, ALUout, MemR, MemW, RegW, MemToReg, aluSrc, regDest);
    input [5:0] opcode;
    input [31:0] instruction;
    output reg [1:0] ALUout;
    output reg MemR, MemW, RegW, MemToReg, aluSrc, regDest;

    always @ (*)
        begin
            case(opcode)
                6'b000000 : begin
                                ALUout = 2'b10;
                                RegW = 1;
                                MemR = 0;
                                MemW = 0;
                                MemToReg = 0;
                                aluSrc = 0;
                                regDest = 1;
                            end
                6'b100011 : begin
                                ALUout = 2'b00;
                                RegW = 1;
                                MemR = 1;
                                MemToReg = 1;
                                MemW = 0;
                                aluSrc = 1;
                                regDest = 0;
                            end
                6'b101011 : begin
                                ALUout = 2'b00;
                                RegW = 0;
                                MemR = 0;
                                MemToReg = 1;
                                MemW = 1;
                                aluSrc = 1;
                                regDest = 0;
                            end
            endcase
        end
endmodule
