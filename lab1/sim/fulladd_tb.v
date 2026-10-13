`timescale 1ns / 1ns

module fulladd_tb;

    reg  x = 0;
    reg  y = 0;
    reg  cin = 0;
    wire s;
    wire cout;
    fulladd dut (
        .x(x),
        .y(y),
        .cin(cin),
        .s(s),
        .cout(cout)
    );
    initial begin
        $dumpfile("fulladd_tb.vcd");
        $dumpvars(0, fulladd_tb);
        #20  x = 0; y = 0; cin = 1;   
        #20  x = 0; y = 1; cin = 0;   
        #20  x = 0; y = 1; cin = 1;   
        #20  x = 1; y = 0; cin = 0;   
        #20  x = 1; y = 0; cin = 1;   
        #20  x = 1; y = 1; cin = 0;   
        #20  x = 1; y = 1; cin = 1;   2
        #20  $finish;
    end

endmodule