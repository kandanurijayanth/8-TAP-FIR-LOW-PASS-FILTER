module fir_filter(
input clk,
input reset,
input signed [7:0] x,
output reg signed [15:0] y
);
reg signed [7:0] delay[0:6];
integer i;
always @(posedge clk)
begin
if(reset)
begin
for(i=0;i<7;i=i+1)
delay[i]<=0;
y<=0;
end
else
begin
delay[6]<=delay[5];
delay[5]<=delay[4];
delay[4]<=delay[3];
delay[3]<=delay[2];
delay[2]<=delay[1];
delay[1]<=delay[0];
delay[0]<=x;
y <=
4*delay[0]+
12*delay[1]+
30*delay[2]+
37*delay[3]+
30*delay[4]+
12*delay[5]+
4*delay[6];
end
end
endmodule
