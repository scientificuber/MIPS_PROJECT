module MainMemory(memread,memwrite,address,data_in,data_out);
input memread;
input memwrite;
input [16:0]address;
input [31:0]data_in;
output [31:0]data_out;
always@(*)
	if (memread==1)
	begin
		case(address)
			//load word t0 512(s0)
			16'd0 : data_out=32'b100011_01000_10000_0000001000000000;
			//load word t1 768(s0)
			16'd4 : data_out=32'b100011_01001_10000_0000001100000000;
			//load word t2 516(s0)
			16'd8 : data_out=32'b100011_01010_10000_0000001000000100;
			//load word t3 772(s0)
			16'd12 : data_out=32'b100011_01011_10000_0000001100000100;
			//load word t4 520(s0)
			16'd16 : data_out=32'b100011_01100_10000_0000001000001000;
			//load word t5 776(s0)
			16'd20 : data_out=32'b100011_01101_10000_0000001100001000;
			//mul t6 t0 t1
			16'd24 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd28 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd32 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd36 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd40 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 256(s0)
			16'd44 : data_out=32'b101011_01110_10000_0000000100000000;
			//
			//load word t1 780(s0)
			16'd48 : data_out=32'b100011_01001_10000_0000001100001100;
			//load word t3 784(s0)
			16'd52 : data_out=32'b100011_01011_10000_0000001100010000;
			//load word t5 788(s0)
			16'd56 : data_out=32'b100011_01101_10000_0000001100010100;
			//mul t6 t0 t1
			16'd60 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd64 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd68 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd72 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd76 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 260(s0)
			16'd80 : data_out=32'b101011_01110_10000_0000000100000100;
			//
			//load word t1 792(s0)
			16'd84 : data_out=32'b100011_01001_10000_0000001100011000;
			//load word t3 796(s0)
			16'd88 : data_out=32'b100011_01011_10000_0000001100011100;
			//load word t5 800(s0)
			16'd92 : data_out=32'b100011_01101_10000_0000001100100000;
			//mul t6 t0 t1
			16'd96 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd100 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd104 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd108 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd112 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 264(s0)
			16'd116 : data_out=32'b101011_01110_10000_0000000100001000;
			//
			//load word t0 524(s0)
			16'd120 : data_out=32'b100011_01000_10000_0000001000001100;
			//load word t2 528(s0)
			16'd124 : data_out=32'b100011_01010_10000_0000001000010000;
			//load word t4 532(s0)
			16'd128 : data_out=32'b100011_01100_10000_0000001000010100;
			//load word t1 768(s0)
			16'd132 : data_out=32'b100011_01001_10000_0000001100000000;
			//load word t3 772(s0)
			16'd136 : data_out=32'b100011_01011_10000_0000001100000100;
			//load word t5 776(s0)
			16'd140 : data_out=32'b100011_01101_10000_0000001100001000;
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 270(s0)
			16'd164 : data_out=32'b101011_01110_10000_0000000100001110;
			//
			//load t1 780(s0)
			16'd168 : data_out=32'b100011_01001_10000_0000001100001100;
			//load t3 784(s0)
			16'd172 : data_out=32'b100011_01011_10000_0000001100010000;
			//load t5 788(s0)
			16'd176 : data_out=32'b100011_01101_10000_0000001100010100;
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 274(s0)
			16'd164 : data_out=32'b101011_01110_10000_0000000100010010;
			//
			//load t1 792(s0)
			16'd168 : data_out=32'b100011_01001_10000_0000001100001100;
			//load t3 796(s0)
			16'd172 : data_out=32'b100011_01011_10000_0000001100010000;
			//load t5 780(s0)
			16'd176 : data_out=32'b100011_01101_10000_0000001100010100;
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 280(s0)
			16'd164 : data_out=32'b101011_01110_10000_0000000100010010;
			//
			//load t0 536(s0)
			//load t2 540(s0)
			//load t4 544(s0)
			//load t1 768(s0)
			//load t3 772(s0)
			//load t5 776(s0)
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store word t6 294(s0)
			//
			//load t1 780(s0)
			//load t3 784(s0)
			//load t5 788(s0)
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store t6 298(s0)
			//
			//load t1 792(s0)
			//load t3 796(s0)
			//load t5 800(s0)
			//mul t6 t0 t1
			16'd144 : data_out=32'b000000_01110_01000_01001_00000_011000;
			//mul t7 t2 t3
			16'd148 : data_out=32'b000000_01111_01010_01011_00000_011000;
			//mul s5 t4 t5
			16'd152 : data_out=32'b000000_10101_01100_01101_00000_011000;
			//add t6 t6 t7
			16'd156 : data_out=32'b000000_01110_01110_01111_00000_100000;
			//add t6 t6 s5
			16'd160 : data_out=32'b000000_01110_01110_10101_00000_100000;
			//
			//store t6 302(s0)
