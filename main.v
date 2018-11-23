module main(pc,d11,d12,d13,d21,d22,d23,d31,d32,d33);
input [31:0] pc;
wire MemR,MemW,RegW,MemToReg,alusrc,regdest;
wire [1:0] Aluout;
wire [31:0] out1,out2,instruction,b,out_alu;
wire [4:0] dest;
wire [3:0] c_line;
output [31:0] d11,d12,d13,d21,d22,d23,d31,d32,d33;
wire [31:0] a11,a12,a13,a21,a22,a23,a31,a32,a33;
wire [31:0] signExtended,data_out_mem,write_back,dummy;
assign signExtended = {16'b0, instruction[15:0]};

instruction_memory uut1(pc,instruction);
controlUnit uut2(instruction, instruction[31:26],Aluout,MemR,MemW,RegW,MemToReg,alusrc,regdest);
mux1 uut3(instruction[25:21],instruction[15:11],regdest,dest);
decoder uut4(instruction, instruction[20:16],instruction[25:21],dest,RegW,32'b0,out1,out2);
mux2 uut5(out2,signExtended,alusrc,b);
aluControlUnit uut6(Aluout,instruction[5:0],c_line);
aluMain uut7(c_line,out1,b,out_alu);
MainMemory uut8(MemR,MemW,out_alu,b,data_out_mem,d11,d12,d13,d21,d22,d23,d31,d32,d33);
mux2 uut9(out_alu,data_out_mem,MemToReg,write_back);
Registers uut10(instruction, 1'b0,dest,write_back,dummy);
endmodule
