module main(pc,d11,d12,d13,d21,d22,d23,d31,d32,d33);
input [31:0] pc;
wire MemR,MemW,RegW,MemToReg,alusrc,regdest;
wire [1:0] Aluout;
wire [31:0] out1,out2,instruction,b,out_alu;
wire [4:0] dest;
wire [3:0] c_line;
output [31:0] d11,d12,d13,d21,d22,d23,d31,d32,d33;
wire [31:0] signExtended;
assign signExtended = {16'b0, instruction[15:0]};
instruction_memory uut1(pc,instruction);
controlUnit uut2(instruction[31:26],Aluout,MemR,MemW,RegW,MemToReg,alusrc,regdest);
mux1 uut3(instruction[25:21],instruction[15:11],regdest,dest);
decoder uut4(instruction[20:16],instruction[25:21],dest,RegW,32'b?,out1,out2);
mux2 uut5(out2,signExtended,alusrc,b);
aluControlUnit uut6(Aluout,instruction[5:0],c_line);
aluMain uut7(c_line,out1,b,out_alu);

endmodule
