STOP_TIME = 200ns
VCD_NAME = register_file_tb

all:
	ghdl -a --std=08 --workdir=build src/register_file.vhdl src/register_file_tb.vhdl 
	ghdl -e --std=08 --workdir=build register_file_tb
	ghdl -r --std=08 --workdir=build register_file_tb --vcd=build/$(VCD_NAME) --stop-time=$(STOP_TIME)

debug:
	gtkwave build/$(VCD_NAME)

clean:
	del build\*.cf
	del build\*.vcd

init:
	mkdir build