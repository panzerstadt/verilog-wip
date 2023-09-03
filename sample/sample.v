module counter( clock, count );
  input   clock;
  output  [3:0] count;

  reg     [3:0] internal_counter;
  initial internal_counter = 4'b0;

  assign count = internal_counter;

  always @ (posedge clock)
  begin
    internal_counter <= internal_counter + 1;
  end
 
endmodule