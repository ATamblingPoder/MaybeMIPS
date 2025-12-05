/*
 * Contains op-codes and other stuff like that
 */

/* op-codes categories */
`define OP_TYPE_R	6'b000_000	// Standard R-Type Instructions
`define OP_TYPE_R2	6'b011_100	// Extended R-Type Instructions
`define	OP_TYPE_BI	6'b000_001	// Branch/Trap Instructions
`define	OP_TYPE_CP0	6'b010_000	// Coprocessor 0 Instructions

/* op-codes, more specific */
`define OP_ADD		`OP_TYPE_R
`define OP_ADDI		6'b001_000
`define OP_ADDIU	6'b001_001
`define OP_ADDU		`OP_TYPE_R
`define OP_AND		`OP_TYPE_R
`define OP_ANDI		6'b001_100
`define OP_BEQ		6'b000_100
`define OP_BEQL		6'b010_100
`define OP_BGEZ		`OP_TYPE_BI
`define OP_BGEZAL	`OP_TYPE_BI
`define OP_BGEZALL	`OP_TYPE_BI
`define OP_BGEZL	`OP_TYPE_BI
