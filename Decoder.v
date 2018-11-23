module decoder(address1,address2,dest,regwrite,write_data,out1,out2);
    input regwrite;
    input [4:0] address1,address2,dest;
    input [31:0] write_data;

    output [31:0] out1,out2;

    wire [31:0] dataOut;
    Registers uut1(regwrite,address1,write_data,dataOut);
    assign out1=dataOut;

    Registers uut2(regwrite,address2,write_data,dataOut);
    assign out2=dataOut;

endmodule
