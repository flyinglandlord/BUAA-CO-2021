//------------- Definition of GRFWDSel -------------
`define WDSel_aluans    2'b00
`define WDSel_dmrd      2'b01
`define WDSel_pc4       2'b10

//------------- Definition of GRFA3Sel -------------
`define A3Sel_rd    2'b00
`define A3Sel_rt    2'b01
`define A3Sel_ra    2'b10

//------------- Definition of ALUBSel -------------
`define BSel_rt    1'b0
`define BSel_imm   1'b1

//------------- Definition of DMOp -------------
`define DM_w    3'b000
`define DM_h    3'b001
`define DM_hu   3'b010
`define DM_b    3'b011
`define DM_bu   3'b100 

//------------- Definition of ALUOp -------------
`define ALU_add     4'b0000
`define ALU_sub     4'b0001
`define ALU_or      4'b0010
`define ALU_slt     4'b0011
//`define ALU_xor     4'b0100
`define ALU_lui     4'b0101
//`define ALU_sll     4'b0110
//`define ALU_srl     4'b0111
//`define ALU_sra     4'b0100
//`define ALU_srlv  4'b1001
//`define ALU_sllv  4'b0111
//`define ALU_srav  4'b1011

//------------- Definition of EXTOp -------------
`define EXT_sign    1'b1
`define EXT_unsign  1'b0

//------------- Definition of CMPOp -------------
`define CMP_beq     3'b000
//`define CMP_bltz    3'b001
//`define CMP_bgtz  3'b010
//`define CMP_bne     3'b011
//`define CMP_bgez  3'b100
//`define CMP_blez  3'b101

//------------- Definition of NPCOp -------------
`define NPC_pc4     3'b000
`define NPC_j_jal   3'b001
`define NPC_jr_jalr 3'b010
`define NPC_b       3'b011

//------------- Definition of Instruction opcode and funct -------------

// ** Arithmetic Logic Unit **
`define op_ADDU     6'b000000
`define fun_ADDU    6'b100001

`define op_SUBU     6'b000000
`define fun_SUBU    6'b100011

`define op_SLT      6'b000000
`define fun_SLT     6'b101010

`define op_ORI      6'b001101
`define op_LUI      6'b001111

// ** Shifter **
//`define op_SLL      6'b000000
// All Zero...

// ** Branch **
`define op_BEQ      6'b000100
`define op_J        6'b000010
`define op_JAL      6'b000011

`define op_JR       6'b000000
`define fun_JR      6'b001000

//`define op_JALR   6'b000000
//`define fun_JALR  6'b001001

// ** Memory Access **
`define op_LB       6'b100000
`define op_SB       6'b101000
`define op_LH       6'b100001
`define op_SH       6'b101001
`define op_LW       6'b100011
`define op_SW       6'b101011
`define op_LBU      6'b100100
`define op_LHU      6'b100101
