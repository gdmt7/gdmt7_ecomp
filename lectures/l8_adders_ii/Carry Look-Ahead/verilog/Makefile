fulladder: src/adder.v src/fulladder.v testbench/fulladder_tb.v
	iverilog -o fulladder src/adder.v src/fulladder.v testbench/fulladder_tb.v
	./fulladder

clean: 
	rm -f fulladder *~ *.vcd

.PHONY: clean all
