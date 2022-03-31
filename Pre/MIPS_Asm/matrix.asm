.data
	matrix: .space 10010
	space: .word ' '
	endl: .word '\n'
.text
	# scanf("%d", &n);
	li $v0, 5
	syscall
	move $s0, $v0
	
	# scanf("%d", &m);
	li $v0, 5
	syscall
	move $s1, $v0
	
	# for(int i = 0; i != n*m; i++)
for_loop_input:
	mul $t1, $s0, $s1
	beq $t0, $t1, end_for_input
	li $v0, 5
	syscall
	sll $t2, $t0, 2
	sw $v0, matrix($t2)
	addi $t0, $t0, 1
	j for_loop_input
end_for_input:
	
	# for(int i = n*m-1; i != 0; i--)
	mul $t0, $s0, $s1
	subi $t0, $t0, 1
for_loop_output:
	addi $t1, $t0, 1
	beq $t1, $zero, end_for_output
	sll $t1, $t0, 2
	lw $t2, matrix($t1)
	beq $t2, $zero, continue_for_output

	div $t0, $s1
	
	mflo $t4
	li $v0, 1
	addi $a0, $t4, 1
	syscall
	
	li $v0, 11
	lw  $t5, space
	move $a0, $t5
	syscall
	
	mfhi $t5
	li $v0, 1
	addi $a0, $t5, 1
	syscall

	li $v0, 11
	lw  $t5, space
	move $a0, $t5
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall	
	
	lw $t6, endl
	li $v0, 11
	move $a0, $t6
	syscall
continue_for_output:
	subi $t0, $t0, 1
	j for_loop_output
end_for_output:

	# return 0
	li $v0, 10
	syscall

	
	
	
	
	