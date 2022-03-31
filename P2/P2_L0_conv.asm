.data
	mat: .space 1024
	core: .space 1024

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
main:
	input($s0)
	input($s1)
	input($s2)
	input($s3)
	
	li $t0, 0
	for_mat_in1:
	beq $t0, $s0, endfor_mat_in1
		li $t1, 0
		for_mat_in2:
		beq $t1, $s1, endfor_mat_in2
			input($t2)
			set(mat, $t0, $t1, $t2)
		addiu $t1, $t1, 1
		j for_mat_in2
		endfor_mat_in2:
	addiu $t0, $t0, 1
	j for_mat_in1
	endfor_mat_in1:
	
	li $t0, 0
	for_core_in1:
	beq $t0, $s2, endfor_core_in1
		li $t1, 0
		for_core_in2:
		beq $t1, $s3, endfor_core_in2
			input($t2)
			set(core, $t0, $t1, $t2)
		addiu $t1, $t1, 1
		j for_core_in2
		endfor_core_in2:
	addiu $t0, $t0, 1
	j for_core_in1
	endfor_core_in1:
	
	# i - $t0, j - $t1, k - $t2, l - $t3
	sub $t4, $s0, $s2
	addiu $t4, $t4, 1
	sub $t5, $s1, $s3
	addiu $t5, $t5, 1
	li $t0, 0
	for_calc1:
	beq $t0, $t4, endfor_calc1
		li $t1, 0
		for_calc2:
		beq $t1, $t5, endfor_calc2
			li $t2, 0
			li $t6, 0
			for_calc3:
			beq $t2, $s2, endfor_calc3
				li $t3, 0
				for_calc4:
				beq $t3, $s3, endfor_calc4
					get(core, $t2, $t3, $t7)
					add $s4, $t0, $t2
					add $s5, $t1, $t3
					get(mat, $s4, $s5, $t8)
					mult $t7, $t8
					mflo $t7
					add $t6, $t6, $t7
				addiu $t3, $t3, 1
				j for_calc4
				endfor_calc4:
			addiu $t2, $t2, 1
			j for_calc3
			endfor_calc3:
		print($t6)
		printspace()
		addiu $t1, $t1, 1
		j for_calc2
		endfor_calc2:
	println()
	addiu $t0, $t0, 1
	j for_calc1
	endfor_calc1:
	
	li $v0, 10
	syscall