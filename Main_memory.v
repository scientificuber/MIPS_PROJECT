module MainMemory(memread,memwrite,address,data_in,data_out);
input memread;
input memwrite;
input [16:0]address;
input [31:0]data_in;
output [31:0]data_out;
reg [31:0] matrix1[50:0];
reg [31:0] matrix2[50:0];
reg [31:0] output_matrix[50:0];
initial begin
	matrix1[0]=32'd1;
	matrix1[1]=32'd2;
	matrix1[2]=32'd3;
	matrix1[3]=32'd4;
	matrix1[4]=32'd5;
	matrix1[5]=32'd6;
	matrix1[6]=32'd7;
	matrix1[7]=32'd8;
	matrix1[8]=32'd9;

	matrix2[0]=32'd1;
	matrix2[1]=32'd0;
	matrix2[2]=32'd1;
	matrix2[3]=32'd0;
	matrix2[4]=32'd1;
	matrix2[5]=32'd0;
	matrix2[6]=32'd1;
	matrix2[7]=32'd0;
	matrix2[8]=32'd1;

	/*matrix3[0]=32'd0;
	matrix3[1]=32'd0;
	matrix3[2]=32'd0;
	matrix3[3]=32'd0;
	matrix3[4]=32'd0;
	matrix3[5]=32'd0;
	matrix3[6]=32'd0;
	matrix3[7]=32'd0;
	matrix3[8]=32'd0;*/
	end
endmodule
