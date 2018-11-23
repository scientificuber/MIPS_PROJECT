module aluMain(controlLines, a, b, out);
    input [3:0] controlLines;
    input [31:0] a, b;
    output reg [31:0] out;

    always @ (*) begin
        case(controlLines)
            4'b0010 : out = a + b;
            4'b0011 : out = a - b;
            4'b0100 : out = a * b;
        endcase
        //$display("ALUOUT, b = %d, %d", out, b);
    end
endmodule
