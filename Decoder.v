module decoder(regwrite,write_back,address1,address2,dest,out1,out2);
    input  regwrite;
    input write_back;
    input [4:0] address1,address2,dest;
    input [31:0] instruction;
    output [31:0] out1,out2;
    // genvar i;
Registers uut1(regwrite,write_back,dest,address1,address2,out1,out2);

    endmodule
