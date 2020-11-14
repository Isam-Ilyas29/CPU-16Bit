TESTBENCH_NAME = adder_4_bit_tb
VCD_NAME = testbench.vcd
STOP_TIME = 150ns

all:
	ghdl -a ../src/full_adder.vhdl ../src/adder_4_bit.vhdl ../src/adder_4_bit_tb.vhdl 
	ghdl -e $(TESTBENCH_NAME) 
	ghdl -r $(TESTBENCH_NAME) --vcd=$(VCD_NAME) --stop-time=$(STOP_TIME)

debug:
	gtkwave testbench.vcd &
