CLA: src/fulladder.v src/gp.v src/carry.v src/CLA.v testbench/CLA_tb.v
	iverilog -o CLA src/fulladder.v src/gp.v src/carry.v src/CLA.v testbench/CLA_tb.v
	./CLA

clean: 
	rm -f CLA *~ *.vcd

.PHONY: clean all
