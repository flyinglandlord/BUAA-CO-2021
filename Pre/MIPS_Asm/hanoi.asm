.data

.text
main:
	li $v0, 5
	syscall
	move $s0, $v0
	
	addiu $sp, $sp, -20
	sw $a0, 0($sp)
	sw $a1, 4($sp)
	sw $a2, 8($sp)
	sw $a3, 12($sp)
	sw $t1, 16($sp)
		move $a0, $s0
		li $a1, 1
		li $a2, 2
		li $a3, 3
		jal hanoi
	lw $a0, 0($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $t1, 16($sp)
	addiu $sp, $sp, 20
	
	li $v0, 10
	syscall

hanoi: # $a0 - number of disks, $a1 - source, $a2 - middle ,$a3 - target
addiu $sp, $sp, -8
sw $s0, 0($sp)
sw $ra, 4($sp)
	if:
	bne $a0, 1, else
		move $t1, $a0
		li $v0, 1
		move $a0, $a1
		syscall
		li $v0, 11
		li $a0, '-'
		syscall
		li $v0, 11
		li $a0, '>'
		syscall
		li $v0, 1
		move $a0, $a3
		syscall
		li $v0, 11
		li $a0, '\n'
		syscall
		move $a0, $t1
		j endif
	else:
		addiu $sp, $sp, -20
		sw $a0, 0($sp)
		sw $a1, 4($sp)
		sw $a2, 8($sp)
		sw $a3, 12($sp)
		sw $t1, 16($sp)
			subiu $a0, $a0, 1
			move $t1, $a2
			move $a2, $a3
			move $a3, $t1
			jal hanoi		# hanoi($a0-1, $a1, $a3, $a2)
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		lw $a2, 8($sp)
		lw $a3, 12($sp)
		lw $t1, 16($sp)
		addiu $sp, $sp, 20
		
		move $t1, $a0
		li $v0, 1
		move $a0, $a1
		syscall
		li $v0, 11
		li $a0, '-'
		syscall
		li $v0, 11
		li $a0, '>'
		syscall
		li $v0, 1
		move $a0, $a3
		syscall
		li $v0, 11
		li $a0, '\n'
		syscall
		move $a0, $t1
		
		addiu $sp, $sp, -20
		sw $a0, 0($sp)
		sw $a1, 4($sp)
		sw $a2, 8($sp)
		sw $a3, 12($sp)
		sw $t1, 16($sp)
			subiu $a0, $a0, 1
			move $t1, $a1
			move $a1, $a2			
			move $a2, $t1
			jal hanoi		# hanoi($a0-1, $a2, $a1, $a3)
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		lw $a2, 8($sp)
		lw $a3, 12($sp)
		lw $t1, 16($sp)
		addiu $sp, $sp, 20
	endif:
	
lw $s0, 0($sp)
lw $ra, 4($sp)
addiu $sp, $sp, 8
jr $ra
	
