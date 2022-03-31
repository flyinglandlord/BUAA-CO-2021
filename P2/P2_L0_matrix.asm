.data
	mat1: .space 1024
	mat2: .space 1024
	ans: .space 1024

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

.text # $s0 - n
main:
	input($s0)
	li $t0, 0
	in_mat1_for1: 	#for(i=0;i<n;i++)
	beq $t0, $s0, end_in_mat1_for1
		li $t1, 0
		in_mat1_for2:	#for(j=0;j<n;j++)
		beq $t1, $s0, end_in_mat1_for2
			input($t3)
			set(mat1, $t0, $t1, $t3)
		addiu $t1, $t1, 1
		j in_mat1_for2
		end_in_mat1_for2:
	addiu $t0, $t0, 1
	j in_mat1_for1
	end_in_mat1_for1:
	
	li $t0, 0
	in_mat2_for1: 	#for(i=0;i<n;i++)
	beq $t0, $s0, end_in_mat2_for1
		li $t1, 0
		in_mat2_for2:	#for(j=0;j<n;j++)
		beq $t1, $s0, end_in_mat2_for2
			input($t3)
			set(mat2, $t0, $t1, $t3)
		addiu $t1, $t1, 1
		j in_mat2_for2
		end_in_mat2_for2:
	addiu $t0, $t0, 1
	j in_mat2_for1
	end_in_mat2_for1:
	
	#calc
	li $t0, 0
	calc_for1:
	beq $t0, $s0, end_calc_for1
		li $t1, 0
		calc_for2:
		beq $t1, $s0, end_calc_for2
			li $t2, 0
			li $t3, 0
			calc_for3:
			beq $t2, $s0, end_calc_for3
				get(mat1, $t0, $t2, $t4)
				get(mat2, $t2, $t1, $t5)
				mult $t4, $t5
				mflo $t5
				add $t3, $t3, $t5
				#print($t3)
				#println()
			addiu $t2, $t2, 1
			j calc_for3
			end_calc_for3:
			print($t3)
			printspace()
		addiu $t1, $t1, 1
		j calc_for2
		end_calc_for2:
		println()
	addiu $t0, $t0, 1
	j calc_for1
	end_calc_for1:	
	
	li $v0,10
	syscall