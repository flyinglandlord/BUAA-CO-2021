.data
	person: .space 400

.macro input(%tar)
	li $v0, 5
	syscall
	move %tar, $v0
.end_macro
.macro input_char(%tar)
	li $v0, 12
	syscall
	move %tar, $v0
.end_macro
.macro println()
addiu $sp, $sp, -8
sw $v0, 0($sp)
sw $a0, 4($sp)
	li $v0, 11
	li $a0, '\n'
	syscall
lw $v0, 0($sp)
lw $a0, 4($sp)
addiu $sp, $sp, 8
.end_macro
.macro print(%tar)
addiu $sp, $sp, -8
sw $v0, 0($sp)
sw $a0, 4($sp)
	li $v0, 1
	move $a0, %tar
	syscall
lw $v0, 0($sp)
lw $a0, 4($sp)
addiu $sp, $sp, 8
.end_macro
.macro get(%addr, %i, %j, %rank, %tar)
addiu $sp, $sp, -4
sw $t9, 0($sp)
	mult %i, %rank
	mflo $t9
	add $t9, $t9, %j
	sll $t9, $t9, 2
	lw %tar, %addr($t9)
lw  $t9, 0($sp)
addiu $sp, $sp, 4
.end_macro
.macro set(%addr, %i, %j, %rank, %tar)
addiu $sp, $sp, -4
sw $t9, 0($sp)
	mult %i, %rank
	mflo $t9
	add $t9, $t9, %j
	sll $t9, $t9, 2
	sw %tar, %addr($t9)
lw  $t9, 0($sp)
addiu $sp, $sp, 4
.end_macro

.text
main:
	input($s0)
	input($s3)
	
	li $t0, 0
	for_input:
	beq $t0, $s0, endfor_input
		addiu $t1, $t0, 1
		set(person, $0, $t0, $0, $t1)
	addiu $t0, $t0, 1
	j for_input
	endfor_input:
	
	move $s1, $s0
	li $s2, 0
	while_calc:
	beq $s1, 1, endwhile_calc
		move $t0, $s2
		li $t1, 0
		loop_next:
			#print($t0)
			get(person, $0, $t0, $0, $t2)
			beq $t2, -1, continue
				addiu $t1, $t1, 1
			beq $t1, $s3, endloop_next
		continue:
		addiu $t0, $t0, 1
		div $t0, $s0
		mfhi $t0
		j loop_next
		endloop_next:
		
		#println()
		
		move $s2, $t0
		get(person, $0, $s2, $0, $t0)
		#print($t0)
		#println()
		li $t0, -1
		set(person, $0, $s2, $0, $t0)
		addiu $s1, $s1, -1
	j while_calc
	endwhile_calc:
	
	li $t0, 0
	for_print:
	beq $t0, $s0, endfor_print
		get(person, $0, $t0, $0, $t1)
		beq $t1, -1, forcontinue
			print($t1)
			j endfor_print
	forcontinue:
	addiu $t0, $t0, 1
	j for_print
	endfor_print:
	
li $v0, 10
syscall