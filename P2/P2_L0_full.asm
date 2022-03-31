.data
	symbol: .space 28
	array: .space 28

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
main:
	input_int($s0)
	addiu $sp, $sp, -4
	sw $a0, 0($sp)
	jal FullArray
	lw $a0, 0($sp)
	addiu $s0, $s0, 4
	
	li $v0, 10
	syscall
	
FullArray:
addiu $sp, $sp, -20
sw $ra, 0($sp)
sw $t0, 4($sp)
sw $t1, 8($sp)
sw $t2, 12($sp)
sw $t3, 16($sp)

	sll $t3, $a0, 2
	if_1:
	blt $a0, $s0, endif_1
		li $t0, 0
		for_output:
		beq $t0, $s0, end_for_output
			sll $t2, $t0, 2
			lw $t1, array($t2)
			print($t1)
			printspace()
		addiu $t0, $t0, 1
		j for_output
		end_for_output:
		println()
		j return
	endif_1:
	
	li $t0, 0
	for_calc:
	beq $t0, $s0, end_for_calc
	sll $t2, $t0, 2
		if_2:
		lw $t1, symbol($t2)
		bne $t1, 0, endif_2
			addi $t1, $t0, 1
			sw $t1, array($t3)
			li $t1, 1
			sw $t1, symbol($t2)
			
			addiu $sp, $sp, -4
			sw $a0, 0($sp)
			addi $a0, $a0, 1
				jal FullArray
			lw $a0, 0($sp)
			addiu $sp, $sp, 4
			
			li $t1, 0
			sw $t1, symbol($t2)
		endif_2:
	addiu $t0, $t0, 1
	j for_calc
	end_for_calc:			

return:
lw $ra, 0($sp)
lw $t0, 4($sp)
lw $t1, 8($sp)
lw $t2, 12($sp)
lw $t3, 16($sp)
addiu $sp, $sp, 20
jr $ra