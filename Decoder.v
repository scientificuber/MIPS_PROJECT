module decoder(regwrite,write_back,dest,address1,address2,out1,out2);
    input  regwrite;
    input [31:0]write_back;
    input [4:0] address1,address2,dest;
    input [31:0] instruction;
    output [31:0] out1,out2;
Registers uut1(regwrite,write_back,dest,address1,address2,out1,out2);
always@(*)
begin
$display("\nwrite_back = %b\n",write_back);
end
    endmodule
