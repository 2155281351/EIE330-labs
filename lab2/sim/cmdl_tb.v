`timescale 1ns / 1ns

module cmdl_tb;

    reg  x=0;
    reg  y=0;
    wire xbigy;
    wire xeqy;
    wire xsmally;

    
    cmdl dut (
        .x(x),
        .y(y),
        .xbigy(xbigy),
        .xeqy(xeqy),
        .xsmally(xsmally)
    );

    initial begin
        $dumpfile("cmdl_tb.vcd");
        $dumpvars(0, cmdl_tb);

        #20  x = 0; y = 1;  
        #20  x = 1; y = 0;   
        #20  x = 1; y = 1;   
        #20  $finish;
    end

endmodule