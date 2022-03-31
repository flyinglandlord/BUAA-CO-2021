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
	sw $t0, num($zero)
	li $s1, 1
	li $s2, 1

	for_calc:
	bgt $t0, $s0, endfor_calc
		move $t1, $t0
		# int start($t2) = 0
		li $t2, 0
		while_split:
		bltz $t1, endwhile_split
		beq $t1, 0, endwhile_split
			# int mult($t3) = t % 10000
			li $t3, 10000
			div $t1, $t3
			mfhi $t3

			li $t4, 0
			for_mult:
			beq $t4, $s1, endfor_mult
				# tmp[j+start] += num[j] * mult
				add $t5, $t4, $t2
				sll $t9, $t5, 2
				lw $t6, tmp($t9)
				sll $t9, $t4, 2
				lw $t7, num($t9)
				mult $t7, $t3
				mflo $t7
				add $t6, $t6, $t7
				sll $t9, $t5, 2
				sw $t6, tmp($t9)

				# tmp[j+start+1] += tmp[j+start]/10000
				addiu $t5, $t5, 1
				sll $t9, $t5, 2
				lw $t6, tmp($t9)
				addiu $t5, $t5, -1
				sll $t9, $t5, 2
				lw $t7, tmp($t9)
				li $t8, 10000
				div $t7, $t8
				mflo $t8
				add $t6, $t6, $t8
				addiu $t5, $t5, 1
				sll $t9, $t5, 2
				sw $t6, tmp($t9)

				# tmp[j+start] %= 10000
				addiu $t5, $t5, -1
				sll $t9, $t5, 2
				lw $t6, tmp($t9)
				li $t7, 10000
				div $t6, $t7
				mfhi $t7
				sll $t9, $t5, 2
				sw $t7, tmp($t9)
				
			addiu $t4, $t4, 1
			j for_mult
			endfor_mult:

		# t /= 10000
		li $t3, 10000
		div $t1, $t3
		mflo $t1
		# start += 1
		addiu $t2, $t2, 1

		j while_split
		endwhile_split:

		add $s1, $s1, $t2
		while_sub:
		sll $t9, $s1, 2
		lw $t1, tmp($t9)
		bne $t1, 0, endwhile_sub
			addiu $s1, $s1, -1
		j while_sub
		endwhile_sub:
		addiu $s1, $s1, 1

		li $t1, 0
		for_update:
		beq $t1, $s1, endfor_update
			sll $t9, $t1, 2
			lw $t2, tmp($t9)
			sw $t2, num($t9)
			sw $zero, tmp($t9)
		addiu $t1, $t1, 1
		j for_update
		endfor_update:
		
		lw $t2, num($0)
		#print($t2)
		#println()
		
	addiu $t0, $t0, 1
	j for_calc
	endfor_calc:

	move $t0, $s1
	addiu $t0, $t0, -1
	sll $t9, $t0, 2
	lw $t1, num($t9)
	print($t1)
	addiu $t0, $t0, -1
	for_output:
	bltz $t0, endfor_output
		sll $t9, $t0, 2
		lw $t1, num($t9)
		blt $t1, 1000, case1
			print($t1)
			j end
		case1:
		blt $t1, 100, case2
			print($0)
			print($t1)
			j end
		case2:
		blt $t1, 10, case3
			print($0)
			print($0)
			print($t1)
			j end
		case3:
		beq $t1, 0, case4
			print($0)
			print($0)
			print($0)
			print($t1)
			j end
		case4:
			print($0)
			print($0)
			print($0)		
			print($0)
		end:		
	addiu $t0, $t0, -1
	j for_output
	endfor_output:

li $v0, 10
syscall
		
