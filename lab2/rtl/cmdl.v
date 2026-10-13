`timescale 1ns/1ns

module cmdl (
    input x,
    input y,
    output xbigy,
    output xsmally,
    output xeqy
);

assign xbigy = x & ~y;
assign xeqy = x ~^ y; 
assign xsmally = ~x & y;
    
endmodule