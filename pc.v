module pc(datain,dataOut)
  input [31:0] datain;
  output [31:0] dataOut;
  assign dataOut=datain+4;
endmodule
