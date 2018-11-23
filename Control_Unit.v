module controlUnit(opcode, ALUout, MemR, MemW, RegW, MemToReg);
    input [5:0] opcode;

    output reg [1:0] ALUout;
    output reg MemR, MemW, RegW, MemToReg;

    always @ (*)
        begin
            case(opcode)
                6'b000000 : begin
                                ALUout = 2'b10;
                                RegW = 1;
                                MemR = 0;
                                MemW = 0;
                                MemToReg = 0;
                            end
                6'b100011 : begin
                                ALUout = 2'b00;
                                RegW = 1;
                                MemR = 1;
                                MemToReg = 1;
                                MemW = 0;
                            end
                6'b101011 : begin
                                ALUout = 2'b00;
                                RegW = 0;
                                MemR = 0;
                                MemToReg = 1;
                                MemW = 1;
                            end
            endcase

        end
endmodule
