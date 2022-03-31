.data	
	
.text
	li $v0, 5
	syscall
	
	addi $t0, $zero, 4
	div $v0, $t0
	mfhi $s0
	
	addi $t0, $zero, 100
	div $v0, $t0
	mfhi $s1
	
	addi $t0, $zero, 400
	div $v0, $t0
	mfhi $s2
	
	# if(v0 % 4 == 0 && v0 % 100 != 0)
if:
	bne $s0, $zero, else
	beq $s1, $zero, else
	
	addi $t1, $zero, 1
	
	j endif
else:
	# if(v0 % 400 == 0)
	bne $s2, $zero, endif
	
	addi $t1, $zero, 1
endif:
	li $v0, 1
	add $a0, $zero, $t1
	syscall
	
	li $v0, 10
	syscall
	
	
	
	
