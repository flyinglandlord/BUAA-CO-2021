lw $t2, 0x7f20($0)	# Read Data From UART
sw $t2, 0($0)		# Save to the Memory

mfc0 $k0, $14		# EPC + 4, Jump out of the loop
addiu $k0, $k0, 4
mtc0 $k0, $14

eret