module Registers(regWrite, regAddress, dataIn, dataOut);
    input regWrite;
    input [4:0] regAddress;
    input [31:0] dataIn;

    output reg [31:0] dataOut;

    reg [31:0] R [15:0];

    initial begin
        case(regWrite)
            0 : dataOut = R[regAddress - 8];
            1 : begin
                    case(dataIn)
                        32'b? : R[regAddress - 8] = R[regAddress - 8];
                        default : R[regAddress - 8] = dataIn;
                    endcase
                end
        endcase
    end

endmodule //Registers
