`timescale 1ns/1ns
`include "pwm.v"

module pwm_ut;
reg clock;
wire LED;

LEDglow led_under_test( .clk(clock), .LED(LED) );

initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

initial begin
#2000 $finish;
end

initial begin
    #0;
    $display("Time\tLED");
    repeat (2000) begin
      #1;
      $display("%0t\t%b", $time, LED);
    end
  end

initial begin
$dumpfile("pwm_ut.vcd");
$dumpvars(0, pwm_ut);
$display("Test complete");
end
endmodule
