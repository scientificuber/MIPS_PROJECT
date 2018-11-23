module mux2(data1,data2,sel,out);
input [31:0] data1,data2;
input sel;
output [31:0] out;
assign out=(sel==1'b0)?data1:data2;
endmodule
