module mux1(data1,data2,sel,out);
    input [4:0] data1,data2;
    input sel;
    output reg [4:0] out;

    always @ (*)begin//posedge  begin
        case(sel)
            0 : out = data1;
            1 : out = data2;
        endcase
        // $display("mux1\nd1, d2 = %b, %b\nout = %b", data1, data2, out);
    end
endmodule
