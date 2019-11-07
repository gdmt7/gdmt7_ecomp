rom: src/rom.v testbench/rom_tb.v
	iverilog -W all -o rom src/rom.v testbench/rom_tb.v -g2005-sv
	./rom

clean: 
	rm -f rom *~ *.vcd

.PHONY: clean all
