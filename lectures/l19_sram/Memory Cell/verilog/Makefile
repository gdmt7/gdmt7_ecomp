memorycell: src/mc.v  testbench/mc_tb.v
	iverilog -o mc src/mc.v testbench/mc_tb.v
	./mc

clean: 
	rm -f mc *~ *.vcd

.PHONY: clean all
