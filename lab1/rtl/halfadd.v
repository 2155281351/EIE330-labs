`timescale 1ns/1ns
module halfadd (
    input x,
    input y,
    output s,
    output c
);

    assign s = x ^ y;
    assign c = x & y;

endmodule
