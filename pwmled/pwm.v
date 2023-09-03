module LEDglow(clk, LED);
input clk;
output LED;

reg [23:0] count;
always @ (posedge clk) count <= count+1;

reg [4:0] PWM;
wire [3:0] intensity = count[23] ? count[22:19] : ~count[22:19];
always @ (posedge clk) PWM <= PWM[3:0] + intensity;

assign LED = PWM[4];
endmodule