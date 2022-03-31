.data
	array: .space 1024
	temp: .space 1024

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
.macro printspace()
addiu $sp, $sp, -8
sw $v0, 0($sp)
sw $a0, 4($sp)
	li $v0, 11
	li $a0, ' '
	syscall
lw $v0, 0($sp)
lw $a0, 4($sp)
addiu $sp, $sp, 8
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
	li $t0, 0
	
	for_input:
	beq $t0, $s0, endfor_input
		input($t1)
		set(array, $0, $t0, $0, $t1)
	addiu $t0, $t0, 1
	j for_input
	endfor_input:
	
	# merge_sort(l, r), $a0 - l, $a1 - r
	li $a0, 0
	addiu $a1, $s0, -1
	jal merge_sort
	
	li $t0, 0
	for_output:
	beq $t0, $s0, endfor_output
		get(array, $0, $t0, $0, $t1)
		print($t1)
		printspace()
	addiu $t0, $t0, 1
	j for_output
	endfor_output:
li $v0, 10
syscall

merge_sort:
addiu $sp, $sp, -8
sw $ra, 0($sp)
sw $t0, 4($sp)
	bne $a0, $a1, else
		j return
	
	else:
	# $t0 - mid = (l + r) >> 1
	add $t0, $a0, $a1
	sra $t0, $t0, 1
	
	# merge_sort(l, mid)
	addiu $sp, $sp, -8
	sw $a0, 0($sp)
	sw $a1, 4($sp)
		move $a1, $t0
		jal merge_sort
	lw $a0, 0($sp)
	lw $a1, 4($sp)
	addiu $sp, $sp, 8
	
	# merge_sort(mid+1, r)
	addiu $sp, $sp, -8
	sw $a0, 0($sp)
	sw $a1, 4($sp)
		add $a0, $t0, 1
		jal merge_sort
	lw $a0, 0($sp)
	lw $a1, 4($sp)	
	addiu $sp, $sp, 8
	
	# ---------------------------
	# -- MergeProcess C++ Code --
	# ---------------------------
	# i = l, j = mid+1, t = l
	# while(i <= mid && j <= r) if(array[i] < array[j]) temp[t++] = array[i++]; else temp[t++] = array[j++];
	# while(i <= mid) temp[t++] = array[i++];
	# while(j <= r) temp[t++] = array[j++];
	# for(t=l;t<=r;t++) array[t] = temp[t];
	move $t1, $a0		# i
	addiu $t2, $t0, 1	# j
	move $t3, $a0		# t
	while1:
	bgt $t1, $t0, endwhile1
	bgt $t2, $a1, endwhile1
		get(array, $0, $t1, $0, $t4)
		get(array, $0, $t2, $0, $t5)
		if_inwhile:
		bgt $t4, $t5, else_inwhile
			set(temp, $0, $t3, $0, $t4)
			addiu $t3, $t3, 1
			addiu $t1, $t1, 1
			j endif_inwhile
		else_inwhile:
			set(temp, $0, $t3, $0, $t5)
			addiu $t3, $t3, 1
			addiu $t2, $t2, 1
		endif_inwhile:
	j while1
	endwhile1:
	
	while2:
	bgt $t1, $t0, endwhile2
		get(array, $0, $t1, $0, $t4)
		set(temp, $0, $t3, $0, $t4)
		addiu $t3, $t3, 1
		addiu $t1, $t1, 1
	j while2
	endwhile2:
	
	while3:
	bgt $t2, $a1, endwhile3
		get(array, $0, $t2, $0, $t5)
		set(temp, $0, $t3, $0, $t5)
		addiu $t3, $t3, 1
		addiu $t2, $t2, 1
	j while3
	endwhile3:
	
	move $t3, $a0
	for1:
	bgt $t3, $a1, endfor1
		get(temp, $0, $t3, $0, $t4)
		set(array, $0, $t3, $0, $t4)
		addiu $t3, $t3, 1
	j for1
	endfor1:

return:
lw $ra, 0($sp)
lw $t0, 4($sp)	
addiu $sp, $sp, 8
jr $ra
	