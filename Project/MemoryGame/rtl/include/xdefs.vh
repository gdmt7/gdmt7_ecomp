//
// picoVersat system definitions
//

// DATA WIDTH
`define DATA_W 32 // bits

// ADDRESS WIDTH
`define ADDR_W 12

// MODULE SELECT ADDR WIDTH
`define SEL_ADDR_W 3

// REGISTER FILE ADDRESS WIDTH


// DEBUG: USE PRINTER AND GENERATE VCD FILE
//`define DEBUG 1

//
// MEMORY MAP
//

`define MEM_BASE 0 //instruction and data memory
`define MEM_ADDR_W 11 //512 positions (2kB)

`define REGF_BASE 2048 //registers 0x4000
`define REGF_ADDR_W 4 //2**4 = 16 registers

`define CPRT_BASE 2066 //0x5000
`define CPRT_ADDR_W 0 //only one address

//`define NO_EXT 1
`define EXT_BASE 2080 //external peripherals
`define EXT_ADDR_W 4 //only

`define DISPLAY_ALL_W 0
`define DISPLAY0 0
`define DISPLAY1 6
`define DISPLAY2 4
`define DISPLAY3 2

`define LED_BASE 8 //
`define LED_ADDR_W 0 //only one address

`define SWITCH_BASE 10 //
`define SWITCH_ADDR_W 0 //only one address

`define BUTTON_BASE 12 //
`define BUTTON_ADDR_W 0 //only one address

`define LFSR_BASE 14 //
`define LFSR_ADDR_W 0 //only one address

`define TRAP_BASE 1023

// Instruction width 
`define INSTR_W 32

// Instruction fields
`define OPCODESZ 4
`define IMM_W 28

`define DELAY_SLOTS 1

// Instruction codes

// arithmetic
`define addi 0
`define add 1
`define sub 2
//logic
`define shft 3
`define and 4
`define xor 5

// load / store
`define ldi 6
`define ldih 7
`define rdw 8
`define wrw 9
`define rdwb 10
`define wrwb 11

// branch
`define beqi 12
`define beq 13
`define bneqi 14
`define bneq 15
