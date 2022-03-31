.data
	graph: .space 1024
	vis: .space 512
	endl: .word '\n'

.macro setGraph(%data, %i, %j)
	sll $t8, %i, 4
	add $t8, $t8, %j
	sll $t8, $t8, 2
	sw %data, graph($t8)
.end_macro

.macro getGraph(%ans, %i, %j)
	sll $t8, %i, 4
	add $t8, $t8, %j
	sll $t8, $t8, 2
	lw %ans, graph($t8)
.end_macro

.text
main:
	# $s0 = n
	li $v0, 5
	syscall
	move $s0, $v0
	
	# $s1 = m
	li $v0, 5
	syscall
	move $s1, $v0
	
	move $t0, $zero
	for_input:
	# for(i = 0; i != m; i++)
	beq $t0, $s1, end_for_input
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $t3, 1
	setGraph($t3, $t1, $t2)
	setGraph($t3, $t2, $t1)
	
	addi $t0, $t0, 1
	j for_input
	end_for_input:
	
	li $t0, 1
	for_iter:
	# for(i = 1; i <= n; i++)
	bgt $t0, $s0, end_for_iter
	
	move $a0, $t0	# $a0 = p
	move $a1, $t0	# $a1 = start
	jal dfs
	
	beq $s3, 1, print_ans
	
	addi $t0, $t0, 1
	j for_iter
	end_for_iter:
	
	print_ans:	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall

dfs:	# $a0 = p, $a1 = start
	addi $sp, $sp, -24
	sw $ra, 20($sp)
	sw $t0, 16($sp)
	sw $t1, 12($sp)
	sw $t2, 8($sp)
	sw $t3, 4($sp)
	sw $t4, 0($sp)
	
	#li $v0, 1
	#syscall
	
	sll $t0, $a0, 2
	li $t1, 1
	sw $t1, vis($t0)
	
	li $t0, 1
	for_nextpoint:
	# for(i = 1; i <= n; i++) if(graph[p][i] == 1 && !vis[i])
	bgt $t0, $s0, end_for_nextpoint
	getGraph($t1, $a0, $t0)
	bne $t1, 1, nextpoint_continue
	sll $t2, $t0, 2
	lw $t3, vis($t2)
	bne $t3, $zero, nextpoint_continue
	
	move $t4, $a0
	move $a0, $t0
	jal dfs
	move $a0, $t4
	
	nextpoint_continue:
	addi $t0, $t0, 1
	j for_nextpoint
	end_for_nextpoint:
	
	li $t0, 1	
	for_check:
	bgt $t0, $s0, end_for_check
	
	sll $t1, $t0, 2
	lw $t2, vis($t1)
	beq $t2, $zero, end_function
	
	addi $t0, $t0, 1
	j for_check
	end_for_check:
	
	getGraph($t0, $a0, $a1)
	bne $t0, 1, end_function
	
	li $s3, 1
	
	end_function:
	sll $t0, $a0, 2
	sw $zero, vis($t0)
	
	lw $ra, 20($sp)
	lw $t0, 16($sp)
	lw $t1, 12($sp)
	lw $t2, 8($sp)
	lw $t3, 4($sp)
	lw $t4, 0($sp)
	addi $sp, $sp, 24
	
	jr $ra