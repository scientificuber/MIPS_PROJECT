module Registers(instruction, regWrite, regAddress, dataIn, dataOut);
    input regWrite;
    input [4:0] regAddress;
    input [31:0] dataIn, instruction;
    output reg [31:0] dataOut;

    reg [31:0] s0,s1,s2,s3,s4,s5,s6,s7;
    reg [31:0] t0,t1,t2,t3,t4,t5,t6,t7;

    // initial begin
    //     s0 = 32'b0;
    //     // R[1] = 32'b0;
    //     // R[2] = 32'b0;
    //     // R[3] = 32'b0;
    //     // R[4] = 32'b0;
    //     // R[5] = 32'b0;
    //     // R[6] = 32'b0;
    //     // R[7] = 32'b0;
    //     // R[8] = 32'b0;
    //     // R[9] = 32'b0;
    //     // R[10] = 32'b0;
    //     // R[11] = 32'b0;
    //     // R[12] = 32'b0;
    //     // R[13] = 32'b0;
    //     // R[14] = 32'b0;
    //     // R[15] = 32'b0;
    // end

    always @ (*) begin
        s0=32'b0;
        if(regWrite==0)
          case(regAddress)
          5'b10000 : s0=32'b0;
          5'b01000 : dataOut=t0;
          5'b10001 : dataOut=s1;
          5'b01001 : dataOut=t1;
          5'b10010 : dataOut=s2;
          5'b01010 : dataOut=t2;
          5'b10011 : dataOut=s3;
          5'b01011 : dataOut=t3;
          5'b10100 : dataOut=s4;
          5'b01100 : dataOut=t4;
          5'b10101 : dataOut=s5;
          5'b01101 : dataOut=t5;
          5'b10110 : dataOut=s6;
          5'b01110 : dataOut=t6;
          5'b10111 : dataOut=s7;
          5'b01111 : dataOut=t7;
          endcase
        else  begin
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
                    $display(":avthalpo");
                    end
                    else
                    begin
                    case(regAddress)
                              5'b10000 : s0=32'b0;
                              5'b01000 : t0=dataIn;
                              5'b10001 : s1=dataIn;
                              5'b01001 : t1=dataIn;
                              5'b10010 : s2=dataIn;
                              5'b01010 : t2=dataIn;
                              5'b10011 : s3=dataIn;
                              5'b01011 : t3=dataIn;
                              5'b10100 : s4=dataIn;
                              5'b01100 : t4=dataIn;
                              5'b10101 : s5=dataIn;
                              5'b01101 : t5=dataIn;
                              5'b10110 : s6=dataIn;
                              5'b01110 : t6=dataIn;
                              5'b10111 : s7=dataIn;
                              5'b01111 : t7=dataIn;

                  endcase
                  end
                end
                $display("\n\n Registers %b %b %b %b %b %b %b %b %b %b %b %b %b %b\n\n",s0,s1,s2,s3,s4,s5,s6,s7,t0,t1,t2,t3,t4,t5,t6,t7);
    end

endmodule //Registers
