# PATHS
VA := ../../picoversat/tools/assembler/va
INCLUDE_DIR := ../rtl/include/

all: program.hex

# assemble program
program.hex: program.va xdict.json
	$(VA) program.va program.hex

xdict.json:
	../../picoversat/tools/xdictgen $(INCLUDE_DIR)

program.va: memorygame.c
	/usr/local/versat/lcc/lcc memorygame.c -Idir./ -S -o program.va
clean:
	@rm -f xdict.json *# *~ program.hex program.va

.PHONY: all clean
