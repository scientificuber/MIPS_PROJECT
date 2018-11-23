module Registers(instruction, regWrite, regAddress, dataIn, dataOut);
    input regWrite;
    input [4:0] regAddress;
    input [31:0] dataIn, instruction;

    output reg [31:0] dataOut;

    reg [31:0] R [15:0];

    initial begin
        R[0] = 32'b0;
        R[1] = 32'b0;
        R[2] = 32'b0;
        R[3] = 32'b0;
        R[4] = 32'b0;
        R[5] = 32'b0;
        R[6] = 32'b0;
        R[7] = 32'b0;
        R[8] = 32'b0;
        R[9] = 32'b0;
        R[10] = 32'b0;
        R[11] = 32'b0;
        R[12] = 32'b0;
        R[13] = 32'b0;
        R[14] = 32'b0;
        R[15] = 32'b0;
    end

    always @ (instruction) begin
        case(regWrite)
            0 : dataOut = R[regAddress - 8];
            1 : begin
                    /*
                    casex(dataIn)
                        32'b0 : begin
                            R[regAddress - 8] = R[regAddress - 8];
                            // $display("#regAddress = %d", regAddress);
                            end
                        default : R[regAddress - 8] = dataIn;
                    endcase
                    // dataOut = dataIn;
                    */
                    if(^dataIn === 1'bx)
                    begin
                        R[regAddress - 8] = R[regAddress - 8];
                        $display(";;%#");
                    end
                    else    R[regAddress - 8] = dataIn;

                end
        endcase
    end

endmodule //Registers
