module MainMemory(memread,memwrite,address,data_in,data_out,d11,d12,d13,d21,d22,d23,d31,d32,d33);
input memread;
input memwrite;
input [31:0]address;
input [31:0]data_in;

output reg [31:0]data_out;
output reg [31:0] d11, d12, d13, d21, d22, d23, d31, d32, d33;

reg [31:0] matrix1[8:0];
reg [31:0] matrix2[8:0];
reg [31:0] matrix3[8:0];

initial begin
	matrix3[0]=0;
	matrix3[1]=0;
	matrix3[2]=0;
	matrix3[3]=0;
	matrix3[4]=0;
	matrix3[5]=0;
	matrix3[6]=0;
	matrix3[7]=0;
	matrix3[8]=0;
end

always@(*)
	begin
		matrix1[0]=1024;
		matrix1[1]=1024;
		matrix1[2]=1024;
		matrix1[3]=1024;
		matrix1[4]=1024;
		matrix1[5]=1024;
		matrix1[6]=1024;
		matrix1[7]=1024;
		matrix1[8]=1024;

		matrix2[0]=256;
		matrix2[1]=256;
		matrix2[2]=256;
		matrix2[3]=256;
		matrix2[4]=256;
		matrix2[5]=256;
		matrix2[6]=256;
		matrix2[7]=256;
		matrix2[8]=256;

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

	d11 = matrix3[0];
	d12 = matrix3[1];
	d13 = matrix3[2];
	d21 = matrix3[3];
	d22 = matrix3[4];
	d23 = matrix3[5];
	d31 = matrix3[6];
	d32 = matrix3[7];
	d33 = matrix3[8];
end

	/*
	initial begin
	$display("%d",data_in);
	//$display("%d %d %d %d %d %d",d11,d12,d13,d21,d22,d23);
	end
	*/

endmodule
