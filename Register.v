module Registers(pc,regWrite,write_back,address1,address2,address3,dataOut1,dataOut2);
    input regWrite;
    input [31:0] pc;
    input [4:0] address1,address2,address3;
    input [31:0] write_back;

    output reg [31:0] dataOut1;
    output reg [31:0] dataOut2;

    reg [31:0] registers[23:0];
    reg [31:0] count;

    initial begin
        registers[8]=32'b0;
        registers[9]=32'b0;
        registers[10]=32'b0;
        registers[11]=32'b0;
        registers[12]=32'b0;
        registers[13]=32'b0;
        registers[14]=32'b0;
        registers[15]=32'b0;
        registers[16]=32'b0;
        registers[17]=32'b0;
        registers[18]=32'b0;
        registers[19]=32'b0;
        registers[20]=32'b0;
        registers[21]=32'b0;
        registers[22]=32'b0;
        registers[23]=32'b0;
        count=0;
    end

    always @ (*)
        begin

            if(regWrite==1 && count!=pc)
                begin
                    case(address1)
                              5'b01000 : registers[9]=write_back;
                              5'b10001 : registers[10]=write_back;
                              5'b01001 : registers[11]=write_back;
                              5'b10010 : registers[12]=write_back;
                              5'b01010 : registers[13]=write_back;
                              5'b10011 : registers[14]=write_back;
                              5'b01011 : registers[15]=write_back;
                              5'b10100 : registers[16]=write_back;
                              5'b01100 : registers[17]=write_back;
                              5'b10101 : registers[18]=write_back;
                              5'b01101 : registers[19]=write_back;
                              5'b10110 : registers[20]=write_back;
                              5'b01110 : registers[21]=write_back;
                              5'b10111 : registers[22]=write_back;
                              5'b01111 : registers[23]=write_back;
                              default : registers[8]=32'b0;
                    endcase
                count = pc;
                end

                case(address2)
                    5'b10000 : dataOut1=registers[8];
                    5'b01000 :  dataOut1=registers[9];
                    5'b10001 : dataOut1=registers[10];
                    5'b01001 : dataOut1=registers[11];
                    5'b10010 : dataOut1=registers[12];
                    5'b01010 : dataOut1=registers[13];
                    5'b10011 : dataOut1=registers[14];
                    5'b01011 : dataOut1=registers[15];
                    5'b10100 : dataOut1=registers[16];
                    5'b01100 : dataOut1=registers[17];
                    5'b10101 : dataOut1=registers[18];
                    5'b01101 : dataOut1=registers[19];
                    5'b10110 : dataOut1=registers[20];
                    5'b01110 : dataOut1=registers[21];
                    5'b10111 : dataOut1=registers[22];
                    5'b01111 : dataOut1=registers[23];
                    default : dataOut1=32'b0;
                endcase

            case(address3)
                5'b10000 : dataOut2=registers[8];
                5'b01000 : dataOut2=registers[9];
                5'b10001 : dataOut2=registers[10];
                5'b01001 : dataOut2=registers[11];
                5'b10010 : dataOut2=registers[12];
                5'b01010 : dataOut2=registers[13];
                5'b10011 : dataOut2=registers[14];
                5'b01011 : dataOut2=registers[15];
                5'b10100 : dataOut2=registers[16];
                5'b01100 : dataOut2=registers[17];
                5'b10101 : dataOut2=registers[18];
                5'b01101 : dataOut2=registers[19];
                5'b10110 : dataOut2=registers[20];
                5'b01110 : dataOut2=registers[21];
                5'b10111 : dataOut2=registers[22];
                5'b01111 : dataOut2=registers[23];
                default : dataOut2=32'b0;
            endcase

            /*
                $display("out1,out2,addr2,addr3= %d %d %d %d",dataOut1,dataOut2,address2,address3);
                $display("\nregisters:\n s0=%b t0=%b\n s1=%b t1=%b\n s2=%b t2=%b\n s3=%b t3=%b\n s4=%b t4=%b\n s5=%b t5=%b\n s6=%b t6=%b\n s7=%b t7=%b\n",registers[8],registers[9],registers[10],registers[11],registers[12],
                registers[13],registers[14],registers[15],registers[16],registers[17],registers[18],registers[19],registers[20],registers[21],registers[22],
                registers[23]);
            */
        end
endmodule
