adderN: src/adderN.v testbench/adderN_tb.v
	iverilog -o adder src/adderN.v testbench/adderN_tb.v
	./adder

clean: 
	rm -f adder *~ *.vcd

.PHONY: clean all
