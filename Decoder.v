module decoder(instruction, address1,address2,dest,regwrite,write_data,out1,out2);
    input regwrite;
    input [4:0] address1,address2,dest;
    input [31:0] write_data;
    input [31:0] instruction;
    output [31:0] out1,out2;

    wire [31:0] dataOut1, dataOut2;
    Registers uut1(instruction, regwrite,address1,write_data,dataOut1);
    assign out1=dataOut1;

    Registers uut2(instruction, regwrite,address2,write_data,dataOut2);

    assign out2=dataOut2;
    always @ (instruction) begin
        $display("regWrite = %d", regwrite);
        $display("out1, out2 = %b,%b", out1, out2);
    end

endmodule
