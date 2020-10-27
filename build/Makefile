STOP_TIME = 200ns

all:
	ghdl -a ../src/main.vhdl ../src/main_tb.vhdl 
	ghdl -e and_gate_tb 
	ghdl -r and_gate_tb --vcd=main_tb.vcd --stop-time=$(STOP_TIME)

debug:
	gtkwave main_tb.vcd &
