module main(pc,d11,d12,d13,d21,d22,d23,d31,d32,d33);
input [31:0] pc;
wire [31:0] instruction;
output [31:0] d11,d12,d13,d21,d22,d23,d31,d32,d33;
instruction_memory uut1(pc,instruction);
controlUnit uut2(instruction[31:26],);
Registers uut3();
endmodule
