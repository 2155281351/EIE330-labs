`timescale 1ns/1ns

module halfadd_tb;
    reg  x, y;
    wire s, c;
    halfadd dut (.x(x), .y(y), .s(s), .c(c));

    initial begin
        $dumpfile("halfadd_tb.vcd");
        $dumpvars(0, halfadd_tb);

        #20 x = 0; y = 0;
        #20 x = 0; y = 1;
        #20 x = 1; y = 0;
        #20 x = 1; y = 1;
        #20 $finish;
    end

endmodule
