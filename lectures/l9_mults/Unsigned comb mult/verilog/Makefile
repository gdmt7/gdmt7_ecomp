top: src/fulladder.v src/top.v testbench/top_tb.v
	iverilog -o top src/fulladder.v src/top.v testbench/top_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
