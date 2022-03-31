//------------- Definition of GRFWDSel -------------
`define WDSel_aluans    3'b000
`define WDSel_dmrd      3'b001
`define WDSel_pc8       3'b010
`define WDSel_mduans    3'b011
`define WDSel_cp0out    3'b100

//------------- Definition of GRFA3Sel -------------
`define A3Sel_rd    2'b00
`define A3Sel_rt    2'b01
`define A3Sel_ra    2'b10
`define A3Sel_none  2'b11

//------------- Definition of ALUBSel -------------
`define BSel_rt     2'b00
`define BSel_imm    2'b01
`define BSel_rs     2'b10
`define BSel_shamt  2'b11

//------------- Definition of ALUASel -------------
`define ASel_rt   2'b00
`define ASel_rs   2'b01

//------------- Definition of BEOp -------------
`define BE_sw   2'b00
`define BE_sh   2'b01
`define BE_sb   2'b10
`define BE_none 2'b11

//------------- Definition of DEOp -------------
`define DE_lw   3'b000
`define DE_lh   3'b001
`define DE_lb   3'b010
`define DE_lhu  3'b011
`define DE_lbu  3'b100

//------------- Definition of ALUOp -------------
`define ALU_add     4'b0000
`define ALU_sub     4'b0001
`define ALU_or      4'b0010
`define ALU_slt     4'b0011
`define ALU_xor     4'b0100
`define ALU_lui     4'b0101
`define ALU_shift_left                  4'b0110
`define ALU_shift_right_logic           4'b0111
`define ALU_shift_right_algorithm       4'b1000
`define ALU_sltu    4'b1001
`define ALU_nor     4'b1010
`define ALU_and     4'b1011

//------------- Definition of EXTOp -------------
`define EXT_sign    1'b1
`define EXT_unsign  1'b0

//------------- Definition of CMPOp -------------
`define CMP_beq     3'b000
`define CMP_bltz    3'b001
`define CMP_bgtz    3'b010
`define CMP_bne     3'b011
`define CMP_bgez    3'b100
`define CMP_blez    3'b101

//------------- Definition of NPCOp -------------
`define NPC_pc4     3'b000
`define NPC_j_jal   3'b001
`define NPC_jr_jalr 3'b010
`define NPC_b       3'b011

//------------- Definition of MDUOp -------------
`define MDU_mult    3'b000
`define MDU_div     3'b001
`define MDU_mfhi    3'b010
`define MDU_mflo    3'b011
`define MDU_mthi    3'b100
`define MDU_mtlo    3'b101
`define MDU_multu   3'b110
`define MDU_divu    3'b111


//------------- Definition of Exception Code -------------
`define EXC_Int     5'd0
`define EXC_AdEL    5'd4
`define EXC_AdES    5'd5
`define EXC_RI      5'd10
`define EXC_Ov      5'd12
`define EXC_None    5'd0


//------------- Definition of Instruction opcode and funct -------------
// ****************** Arithmetic Logic Unit ******************
// R-Type Instructions only have funct
`define op_R 		6'b000000
    // Algothrim Calculate
`define fun_ADD		6'b100000
`define fun_SUB		6'b100010
`define fun_ADDU    6'b100001
`define fun_SUBU    6'b100011

    // Logic Calculate
`define fun_AND		6'b100100
`define fun_OR		6'b100101
`define fun_XOR		6'b100110
`define fun_NOR		6'b100111

    // Set less then
`define fun_SLT		6'b101010
`define fun_SLTU	6'b101011

    // Shift
`define fun_SLL		6'b000000
`define fun_SRL		6'b000010
`define fun_SRA		6'b000011
`define fun_SLLV	6'b000100
`define fun_SRLV	6'b000110
`define fun_SRAV	6'b000111

    // Multiply & Divide
`define fun_MULT    6'b011000
`define fun_MULTU   6'b011001
`define fun_DIV     6'b011010
`define fun_DIVU    6'b011011

// I-Type Instructions only have opcode
    // Algothrim&Logic Calculate
`define op_ORI      6'b001101
`define op_LUI      6'b001111
`define op_ADDI	    6'b001000
`define op_ADDIU	6'b001001
`define op_ANDI	    6'b001100
`define op_XORI	    6'b001110

	// Set less then
`define op_SLTI	    6'b001010
`define op_SLTIU	6'b001011


// ****************** Branch and Jump ******************
`define op_J        6'b000010
`define op_JAL      6'b000011

`define op_JR       6'b000000
`define fun_JR      6'b001000

`define op_JALR     6'b000000
`define fun_JALR    6'b001001

`define op_BEQ		6'b000100	
`define op_BNE		6'b000101
`define op_BLEZ	    6'b000110
`define op_BGTZ	    6'b000111
`define op_BLTZ	    6'b000001
`define op_BGEZ	    6'b000001


// ****************** Memory Access ******************
`define op_LB       6'b100000
`define op_SB       6'b101000
`define op_LH       6'b100001
`define op_SH       6'b101001
`define op_LW       6'b100011
`define op_SW       6'b101011
`define op_LBU      6'b100100
`define op_LHU      6'b100101


// ****************** Process HI/LO ******************
`define fun_MFHI    6'b010000
`define fun_MFLO    6'b010010
`define fun_MTHI    6'b010001
`define fun_MTLO    6'b010011


// ****************** Process CP0 ******************
`define op_MFC0     6'b010000
`define rs_MFC0     5'b00000

`define op_MTC0     6'b010000
`define rs_MTC0     5'b00100