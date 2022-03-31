# *** I/O Address Table ***
# Data Memory         	0x0000_0000 - 0x0000_2fff
# Timer0       		0x0000_7f00 - 0x0000_7f0b
# UART         		0x0000_7f20 - 0x0000_7f3b
# Digital Tube    	0x0000_7f40 - 0x0000_7f47
# Dip Switch     	0x0000_7f50 - 0x0000_7f57
# Button Key        	0x0000_7f58 - 0x0000_7f5b
# LED        		0x0000_7f60 - 0x0000_7f63 

dead_loop:

lw $s0, 0x7f50($0)
lw $s1, 0x7f54($0)

lb $t0, 0x7f58($0)

beq $t0, 1, ADD
beq $t0, 2, SUB
beq $t0, 4, AND
beq $t0, 8, OR
beq $t0, 16, XOR
beq $t0, 32, SHIFT_LEFT_LOGIC
beq $t0, 64, SHIFT_RIGHT_LOGIC
beq $t0, 128, SHIFT_RIGHT_ALGORITHM

ADD:
addu $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

SUB:
subu $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

AND:
and $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

OR:
or $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

XOR:
xor $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

SHIFT_LEFT_LOGIC:
sllv $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

SHIFT_RIGHT_LOGIC:
srlv $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

SHIFT_RIGHT_ALGORITHM:
srav $s2, $s0, $s1
sw $s2, 0x7f40($0)
j End

End:
j dead_loop