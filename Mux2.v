module mux2(data1,data2,sel,out);
input [31:0] data1,data2;
input sel;
output reg [31:0] out;
always @ (*) begin
    case(sel)
        0 : out = data1;
        1 : out = data2;
    endcase
    //$display("mux2\nd1, d2 = %d, %d\nout = %d", data1, data2, out);
end
endmodule
