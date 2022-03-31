.data
	num: .space 1024
	tmp: .space 1024

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
	
	li $t0, 1
	sb $t0, num($zero)
	li $s1, 1

	for_calc:
	bgt $t0, $s0, endfor_calc
		move $t1, $t0
		# int start($t2) = 0
		li $t2, 0
		while_split:
		bltz $t1, endwhile_split
		beq $t1, 0, endwhile_split
			# int mult($t3) = t % 10
			li $t3, 10
			div $t1, $t3
			mfhi $t3

			li $t4, 0
			for_mult:
			beq $t4, $s1, endfor_mult
				# tmp[j+start] += num[j] * mult
				add $t5, $t4, $t2
				lb $t6, tmp($t5)
				lb $t7, num($t4)
				mult $t7, $t3
				mflo $t7
				add $t6, $t6, $t7
				sb $t6, tmp($t5)

				# tmp[j+start+1] += tmp[j+start]/10
				addiu $t5, $t5, 1
				lb $t6, tmp($t5)
				addiu $t5, $t5, -1
				lb $t7, tmp($t5)
				li $t8, 10
				div $t7, $t8
				mflo $t8
				add $t6, $t6, $t8
				addiu $t5, $t5, 1
				sb $t6, tmp($t5)

				# tmp[j+start] %= 10
				addiu $t5, $t5, -1
				lb $t6, tmp($t5)
				li $t7, 10
				div $t6, $t7
				mfhi $t7
				sb $t7, tmp($t5)
				
			addiu $t4, $t4, 1
			j for_mult
			endfor_mult:

		# t /= 10
		li $t3, 10
		div $t1, $t3
		mflo $t1
		# start += 1
		addiu $t2, $t2, 1

		j while_split
		endwhile_split:

		add $s1, $s1, $t2
		while_sub:
		lb $t1, tmp($s1)
		bne $t1, 0, endwhile_sub
			addiu $s1, $s1, -1
		j while_sub
		endwhile_sub:
		addiu $s1, $s1, 1

		li $t1, 0
		for_update:
		beq $t1, $s1, endfor_update
			lb $t2, tmp($t1)
			sb $t2, num($t1)
			sb $zero, tmp($t1)
		addiu $t1, $t1, 1
		j for_update
		endfor_update:
		
		lb $t2, num($0)
		#print($t2)
		#println()
		
	addiu $t0, $t0, 1
	j for_calc
	endfor_calc:

	move $t0, $s1
	addiu $t0, $t0, -1
	for_output:
	bltz $t0, endfor_output
		lb $t1, num($t0)
		print($t1)
	addiu $t0, $t0, -1
	j for_output
	endfor_output:

li $v0, 10
syscall
		
