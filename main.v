module main(pc,d11,d12,d13,d21,d22,d23,d31,d32,d33);
    input [31:0] pc;

    output [31:0] d11,d12,d13,d21,d22,d23,d31,d32,d33;
    // reg clk;
    wire [31:0] out1,out2,instruction,b,out_alu;
    wire MemR,MemW,RegW,MemToReg,alusrc,regdest;
    wire [1:0] Aluout;
    wire [4:0] dest;
    wire [3:0] c_lines;
    wire [31:0] signExtended,data_out_mem,write_back;

    assign signExtended = {16'b0, instruction[15:0]};

    genvar i;
    generate for(i=0;i<1;i=i+1)
        begin
            instruction_memory uut1(pc,instruction);
            controlUnit uut2(instruction,instruction[31:26],Aluout,MemR,MemW,RegW,MemToReg,alusrc,regdest);
            mux1 uut3(instruction[20:16],instruction[15:11],regdest,dest);
            decoder uut4(pc,RegW,write_back,dest,instruction[25:21],instruction[20:16],out1,out2);
            mux2 uut5(out2,signExtended,alusrc,b);
            aluControlUnit uut6(Aluout,instruction[5:0],c_lines);
            aluMain uut7(c_lines,out1,b,out_alu);
            MainMemory uut8(MemR,MemW,out_alu,out2,data_out_mem,d11,d12,d13,d21,d22,d23,d31,d32,d33);
            mux3 uut9(out_alu,data_out_mem,MemToReg,write_back);
        end
    endgenerate

    /*
    always @ ( * ) begin
      $display("pc = %d , instruction = %b , Aluop=%b , Aluout = %b , MemR = %b , MemW = %b , RegW = %b,\nMemToReg = %b , alusrc = %b, regdest = %b ,\ndest = %b , address1 = %b , address2 = %b , out1 = %b ,\nout2 = %b ,signExtended = %b , b = %b ,c_line = %b,\nout_alu = %b, data_out_mem = %b, write_back = %b\n",pc,instruction,instruction[31:26],Aluout,MemR,
              MemW,RegW,MemToReg,alusrc,regdest,dest,instruction[25:21],instruction[20:16],
              out1,oumatrix1t2,signExtended,b,c_line,out_alu,data_out_mem,write_back);
    end
    */

endmodule
