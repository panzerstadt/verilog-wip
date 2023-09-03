`timescale 1ns/1ns
`include "sample.v"

module sample_ut;
reg clock;
wire [3:0] count;

counter counter_under_test( .clock(clock), .count(count) );

initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

initial begin
#200 $finish;
end

initial begin
$dumpfile("sample_ut.vcd");
$dumpvars(0, sample_ut);
$display("Test complete");
end
endmodule