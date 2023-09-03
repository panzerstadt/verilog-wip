how to test and see the simulation of verilog code
ref: https://saiankit.medium.com/how-to-simulate-verilog-models-on-macos-5a6f821b2c4f

`sample.v (code) -> sample_ut.v (unit test) -> sample_ut.vvp (compiled) -> sample_ut.vcd (simulation) -> gtkwave (view)`

requires:

- icarus varilog (brew install icarus-verilog)
- gtkwave (brew install --cask gtkwave)

1. write test (sample_ut.v)
2. compile (iverilog -o sample_ut.vvp sample_ut.v)
3. run (vvp sample_ut.vvp)
4. view (gtkwave sample_ut.vcd)
   1. new file > tab
   2. add file > sample_ut.vcd
   3. click on counter_under_test
   4. on bottom tab, type and signals, hold cmd to select multiple signals
   5. click append
   6. view signals
