`timescale 1ns/1ps
module fir_filter_tb;
reg clk;
reg reset;
reg signed [7:0] x;
wire signed [15:0] y;
fir_filter uut (
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    reset = 1;
    x = 0;
    #20;
    reset = 0;
    x = 10;  #10;
    x = 20;  #10;
    x = 30;  #10;
    x = 40;  #10;
    x = 50;  #10;
    x = 60;  #10;
    x = 70;  #10;
    x = 80;  #10;
    #100;
    $finish;
end
endmodule