.data
	map: .space 1024
	movex: .space 16
	movey: .space 16
	vis: .space 1024

.macro input(%in)
	li $v0, 5
	syscall
	move %in, $v0
.end_macro
.macro print(%out)
	li $v0, 1
	move $a0, %out
	syscall
.end_macro
.macro println()
	li $v0, 11
	li $a0, '\n'
	syscall
.end_macro
.macro printspace()
	li $v0, 11
	li $a0, ' '
	syscall
.end_macro
.macro get(%addr, %i, %j, %target)
	sll $t9, %i, 4
	add $t9, $t9, %j
	sll $t9, $t9, 2
	lw %target, %addr($t9)
.end_macro
.macro set(%addr, %i, %j, %source)
	sll $t9, %i, 4
	add $t9, $t9, %j
	sll $t9, $t9, 2
	sw %source, %addr($t9)
.end_macro

.text
	input($s0)
	input($s1)
	
	li $t1, 1
	li $t2, -1
	
	sw $t1, movex($zero)
	sw $zero, movey($zero)
	li $t0, 4
	sw $t2, movex($t0)
	sw $zero, movey($t0)
	li $t0, 8
	sw $zero, movex($t0)
	sw $t1, movey($t0)
	li $t0, 12
	sw $zero, movex($t0)
	sw $t2, movey($t0)
	
	li $t0, 0
	for_in1:
	beq $t0, $s0, endfor_in1
		li $t1, 0
		for_in2:
		beq $t1, $s1, endfor_in2
			input($t2)
			set(map, $t0, $t1, $t2)
		addiu $t1, $t1, 1
		j for_in2
		endfor_in2:
	addiu $t0, $t0, 1
	j for_in1
	endfor_in1:
	
	input($s2)
	input($s3)
	input($s4)
	input($s5)
	
	addiu $s2, $s2, -1
	addiu $s3, $s3, -1
	addiu $s4, $s4, -1
	addiu $s5, $s5, -1
	
	move $a0, $s2
	move $a1, $s3
	li $t0, 1
	set(vis, $s2, $s3, $t0)
	jal dfs
	
	print($s6)
	
li $v0, 10
syscall

dfs:
addiu $sp, $sp, -28
sw $ra, 0($sp)
sw $t0, 4($sp)
sw $t1, 8($sp)
sw $t2, 12($sp)
sw $t3, 16($sp)
sw $t4, 20($sp)
sw $t5, 24($sp)

	if_ans:
	bne $a0, $s4, endif_ans
	bne $a1, $s5, endif_ans
		addiu $s6, $s6, 1
		j return
	endif_ans:
	
	#addiu $sp, $sp, -8
	#	sw $a0, 0($sp)
	#	sw $a1, 4($sp)
	#		print($a0)
	#		printspace()
	#		print($a1)
	#		println()
	#	lw $a0, 0($sp)
	#	lw $a1, 4($sp)
	#	addiu $sp, $sp, 8
	
	li $t0, 0
	for_check1:
	beq $t0, 4, endfor_check1
		sll $t1, $t0, 2
		lw $t2, movey($t1)
		lw $t3, movex($t1)
		
		add $t4, $a0, $t2
		add $t5, $a1, $t3
		bltz $t4, continue
		bltz $t5, continue

		get(vis, $t4, $t5, $t1)
		beq $t1, 1, continue
		
		get(map, $t4, $t5, $t1)
		beq $t1, 1, continue
		
		addiu $t4, $t4, 1
		addiu $t5, $t5, 1
		bgt $t4, $s0, continue
		bgt $t5, $s1, continue
		
		addiu $sp, $sp, -8
		sw $a0, 0($sp)
		sw $a1, 4($sp)
			subiu $t4, $t4, 1
			subiu $t5, $t5, 1
			move $a0, $t4
			move $a1, $t5
			li $t8, 1
			set(vis, $t4, $t5, $t8)
			jal dfs
			set(vis, $t4, $t5, $zero)
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addiu $sp, $sp, 8
	continue:
	addiu $t0, $t0, 1
	j for_check1
	endfor_check1:
	
return:
lw $ra, 0($sp)
lw $t0, 4($sp)
lw $t1, 8($sp)
lw $t2, 12($sp)
lw $t3, 16($sp)
lw $t4, 20($sp)
lw $t5, 24($sp)
addiu $sp, $sp, 28
jr $ra