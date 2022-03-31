.data
	string: .space 10240
	endl: .byte 10
	link: .byte '-'
	z: .byte 'z'
	Z: .byte 'Z'
	a: .byte 'a'
	A: .byte 'A'
	zero: .byte '0'
	nine: .byte '9'

.macro ClassifyLetter(%ans, %ch)
	li %ans, 4		# 4 - Other Letters
	# if($t3 > 'z') print_link;
		bgt %ch, 'z', end
	# if($t3 < 'a' && $t3 > 'Z') 
		sltiu $t5, %ch, 'a'
		sltiu $t6, %ch, 'Z'
		seq $t7, %ch, 'Z'
		or  $t6, $t6, $t7
		not $t6, $t6
		and $t5, $t5, $t6
		beq $t5, 1, end
	# if($t3 < 'A' && $t3 > '9') 
		sltiu $t5, %ch, 'A'
		sltiu $t6, %ch, '9'
		seq $t7, %ch, '9'
		or  $t6, $t6, $t7
		not $t6, $t6
		and $t5, $t5, $t6
		beq $t5, 1, end
	# if($t3 < '0') 
		blt %ch, '0', end
	li %ans, 3		# 3 - Numbers
	# if($t3 >= '0' && $t3 <= '9')
		sltiu $t5, %ch, '0'
		sltiu $t6, %ch, '9'
		seq $t7, %ch, '9'
		or  $t6, $t6, $t7
		not $t5, $t5
		and $t5, $t5, $t6
		beq $t5, 1, end
	li %ans, 2		# 2 - Upper Alphabets
	# if($t3 >= 'A' && $t3 <= 'Z')
		sltiu $t5, %ch, 'A'
		sltiu $t6, %ch, 'Z'
		seq $t7, %ch, 'Z'
		or  $t6, $t6, $t7
		not $t5, $t5
		and $t5, $t5, $t6
		beq $t5, 1, end
	li %ans, 1		# 1 - Smaller Alphabets
	# if($t3 >= 'a' && $t3 <= 'z')
		sltiu $t5, %ch, 'a'
		sltiu $t6, %ch, 'z'
		seq $t7, %ch, 'z'
		or  $t6, $t6, $t7
		not $t5, $t5
		and $t5, $t5, $t6
		beq $t5, 1, end
end:
.end_macro 

.text
	li $v0, 8
	la $a0, string
	li $a1, 1024
	syscall
	
	li $t0, 0
	while:
	lb $t1, string($t0)
	beq $t1, 0, endwhile
	lb $t2, endl
	beq $t1, $t2, endwhile
		addi $t0, $t0, 1
	j while
	endwhile:
	
	move $s0, $t0   # $s0 = length of the string
	
	#li $v0, 1
	#move $a0, $s0
	#syscall
	li $v0, 11
	lb $a0, endl
	syscall
	
	li $v0, 11
	lb $a0, string($zero)
	syscall
	
	li $t0, 1
	for:
	beq $t0, $s0, endfor
		lb $t1, string($t0)

		if:
		beq $t1, '-', else
			li $v0, 11
			move $a0, $t1
			syscall
			j endif
		else:
			addi $t3, $t0, -1
			addi $t4, $t0, 1
			lb $t3, string($t3)
			lb $t4, string($t4)
			
			# if($t3 > $t4) print_link;
				bgt $t3, $t4, printlink
			
			ClassifyLetter($t8, $t3)
			ClassifyLetter($t9, $t4)
			
			bne $t8, $t9, printlink
			beq $t8, 4, printlink
			beq $t9, 4, printlink
				
			addi $t3, $t3, 1
			innerfor:
			beq $t3, $t4, endinnerfor
			bgt $t3, $t4, endinnerfor
				li $v0, 11
				move $a0, $t3
				syscall
			addi $t3, $t3, 1
			j innerfor
			endinnerfor:
			
		endif:
		j continue
		
		printlink:
			li $v0, 11
			li $a0, '-'
			syscall

	continue:
	addi $t0, $t0, 1
	j for
	endfor:
	
	li $v0, 10
	syscall
		
	
	
