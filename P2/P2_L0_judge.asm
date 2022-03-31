.data
	string: .space 1024

.macro input_char(%in)
	li $v0, 12
	syscall
	move %in, $v0
.end_macro
.macro input_int(%in)
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
	input_int($s0)
	li $t0, 0
	li $s1, 1
	for_input:
	beq $t0, $s0, end_for_input
		input_char($t1)
		sb $t1, string($t0)
		#print($t0)
	addiu $t0, $t0, 1
	j for_input
	end_for_input:
	
	li $t0, 0
	addiu $t1, $s0, -1
	for_check:
	beq $t1, $t0, end_for_check
	bgt $t0, $t1, end_for_check
		lb $t2, string($t1)
		lb $t3, string($t0)
		li $s1, 0
		bne $t2, $t3, break_for
		li $s1, 1
	addiu $t0, $t0, 1
	addiu $t1, $t1, -1
	j for_check
	break_for:
	end_for_check:
	
	print($s1)
	
	li $v0, 10
	syscall