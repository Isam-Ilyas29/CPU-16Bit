TESTBENCH_NAME = full_adder_tb
VCD_NAME = main_tb.vcd
STOP_TIME = 400ns

all:
	ghdl -a ../src/main.vhdl ../src/main_tb.vhdl 
	ghdl -e $(TESTBENCH_NAME) 
	ghdl -r $(TESTBENCH_NAME) --vcd=$(VCD_NAME) --stop-time=$(STOP_TIME)

debug:
	gtkwave main_tb.vcd &
