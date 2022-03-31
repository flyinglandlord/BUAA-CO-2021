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

lw $t1, 0x7f50($0)	# Read Time Length From Dip Switch Group 0-3
sw $t1, 0x7f40($0)

li $t2, 55000000
sw $t2, 0x7f04($0)	# Set Timer: Mode 01

Start:

li $t2, 0xb
sw $t2, 0x7f00($0)	# Start Count

Wait:
bgtz $t1, Wait
nop
# beq $t1, $0, Wait

li $t2, 0x0
sw $t2, 0x7f00($0)	# End Count

dead_loop:
j dead_loop
nop


.ktext 0x4180

subi $t1, $t1, 1		# Count - 1
sw $t1, 0x7f40($0)

eret