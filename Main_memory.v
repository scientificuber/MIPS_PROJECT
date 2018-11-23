module MainMemory(memread,memwrite,address,data_in,data_out,d11,d12,d13,d21,d22,d23,d31,d32,d33);
input memread;
input memwrite;
input [31:0]address;
input [31:0]data_in;
output reg [31:0]data_out;
output [31:0] d11, d12, d13, d21, d22, d23, d31, d32, d33;
reg [31:0] matrix1[50:0];
reg [31:0] matrix2[50:0];
reg [31:0] matrix3[50:0];
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
	matrix2[2]=32'd0;
	matrix2[3]=32'd0;
	matrix2[4]=32'd1;
	matrix2[5]=32'd0;
	matrix2[6]=32'd0;
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
always@(*)
begin
	if(memread==1 && memwrite==0)
	begin
	case(address)
		32'b0000001000000000 : data_out=matrix1[0];
		32'b0000001000000100 : data_out=matrix1[1];
		32'b0000001000001000 : data_out=matrix1[2];
		32'b0000001000001100 : data_out=matrix1[3];
		32'b0000001000010000 : data_out=matrix1[4];
		32'b0000001000010100 : data_out=matrix1[5];
		32'b0000001000011000 : data_out=matrix1[6];
		32'b0000001000011100 : data_out=matrix1[7];
		32'b0000001000100000 : data_out=matrix1[8];

		32'b0000001100000000 : data_out=matrix2[0];
		32'b0000001100000100 : data_out=matrix2[1];
		32'b0000001100001000 : data_out=matrix2[2];
		32'b0000001100001100 : data_out=matrix2[3];
		32'b0000001100010000 : data_out=matrix2[4];
		32'b0000001100010100 : data_out=matrix2[5];
		32'b0000001100011000 : data_out=matrix2[6];
		32'b0000001100011100 : data_out=matrix2[7];
		32'b0000001100100000 : data_out=matrix2[8];
		default : data_out=32'd0;
	endcase
	end
	else if(memwrite==1 && memread==0)
	begin
		case(address)
		32'b0000000100000000 : matrix3[0]=data_in;
		32'b0000000100000100 : matrix3[1]=data_in;
		32'b0000000100001000 : matrix3[2]=data_in;
		32'b0000000100001100 : matrix3[3]=data_in;
		32'b0000000100010000 : matrix3[4]=data_in;
		32'b0000000100010100 : matrix3[5]=data_in;
		32'b0000000100011000 : matrix3[6]=data_in;
		32'b0000000100011100 : matrix3[7]=data_in;
		32'b0000000100100000 : matrix3[8]=data_in;
		default : data_out=data_in;
	endcase
	end
end
assign d11 = matrix3[0];
assign d12 = matrix3[1];
assign d13 = matrix3[2];
assign d21 = matrix3[3];
assign d22 = matrix3[4];
assign d23 = matrix3[5];
assign d31 = matrix3[6];
assign d32 = matrix3[7];
assign d33 = matrix3[8];/*
initial begin
$display("%d",data_in);
//$display("%d %d %d %d %d %d",d11,d12,d13,d21,d22,d23);
end*/
endmodule
