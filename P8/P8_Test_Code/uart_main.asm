# *** I/O Address Table ***
# Data Memory         	0x0000_0000 - 0x0000_2fff
# Timer0       		0x0000_7f00 - 0x0000_7f0b
# UART         		0x0000_7f20 - 0x0000_7f3b
# Digital Tube    	0x0000_7f40 - 0x0000_7f47
# Dip Switch     	0x0000_7f50 - 0x0000_7f57
# Button Key        	0x0000_7f58 - 0x0000_7f5b
# LED        		0x0000_7f60 - 0x0000_7f63 

.text
# Turn On the Interrupt
ori $2, $0, 0x1001
mtc0 $2, $12

# Wait receiving data
Wait:
j Wait

sw $t2, 0x7f40($0)	# Display the character in the Digital Tube
sw $t2, 0x7f20($0)	# Re-Write to UART, Send out
j Wait			# Back to send data and waiting


.ktext 0x4180		
# When receive completely, IntReq process in 0x4180
lw $t2, 0x7f20($0)	# Read Data From UART
sw $t2, 0($0)		# Save to the Memory

mfc0 $k0, $14		# EPC + 4, Jump out of the loop
addiu $k0, $k0, 4
mtc0 $k0, $14

eret