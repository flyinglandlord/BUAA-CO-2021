# *** I/O Address Table ***
# Data Memory         	0x0000_0000 - 0x0000_2fff
# Timer0       		0x0000_7f00 - 0x0000_7f0b
# UART         		0x0000_7f20 - 0x0000_7f3b
# Digital Tube    	0x0000_7f40 - 0x0000_7f47
# Dip Switch     	0x0000_7f50 - 0x0000_7f57
# Button Key        	0x0000_7f58 - 0x0000_7f5b
# LED        		0x0000_7f60 - 0x0000_7f63 

.text
ori $2, $0, 0xfc01
mtc0 $2, $12

loop:
lw $s0, 0x7f50($0)	# Read Time Length
beq $s0, 0, loop
nop

li $t1, 0			# The Primary Time is 0
sw $t1, 0x7f40($0)

li $t2, 55000000
beq $s0, 1, Start
nop
li $t2, 110000000

Start:
sw $t2, 0x7f04($0)	# Set Timer
li $t3, 0xb
sw $t3, 0x7f00($0)	# Start Count

Wait:
j Wait
nop

# End, cannot run here
dead_loop:
j dead_loop
nop

.ktext 0x4180

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
