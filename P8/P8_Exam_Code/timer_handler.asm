addi $t1, $t1, 1		# Counting - 1
bne $t1, 10, Continue
nop
li $t1, 0

Continue:
sw $t1, 0x7f40($0)

loop_0:
lw $s0, 0x7f50($0)	# Read Time Length
beq $s0, 0, loop_0
nop

li $t2, 55000000
beq $s0, 1, NextWait
nop
li $t2, 110000000

NextWait:
sw $t2, 0x7f04($0)	# Set Timer

eret