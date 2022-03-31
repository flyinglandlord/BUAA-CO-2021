ori $1, $0, 0
ori $2, $0, 24
ori $3, $0, 148
ori $31, $0, 4
addu $1,$3,$4
jal subtest1
nop
back1:
addu $2,$3,$4
jal subtest2
nop
back2:
addu $3,$0,$4
jal subtest3
nop
back3:
addu $2,$0,$4
jal subtest4
nop
back4:
addu $31,$2,$4
jal subtest5
nop
back5:
addu $3,$1,$4
jal subtest6
nop
back6:
addu $0,$2,$4
jal subtest7
nop
back7:
addu $0,$2,$4
jal subtest8
nop
back8:
addu $3,$31,$4
jal subtest9
nop
back9:
addu $2,$31,$4
jal subtest10
nop
back10:
addu $3,$1,$4
jal subtest11
nop
back11:
addu $3,$1,$4
jal subtest12
nop
back12:
addu $1,$2,$4
jal subtest13
nop
back13:
addu $3,$3,$4
jal subtest14
nop
back14:
addu $2,$2,$4
jal subtest15
nop
back15:

endtest:
beq $0, $0, endtest
nop

subtest1:
subu $3,$3,$3
sw $31,88($3)
div $1,$1
ori $1,$31,120
beq $2,$31,endsubtest1
nop
div $3,$3
div $1,$3
subu $1,$1,$1
lw $2,92($1)
subu $3,$3,$3
sw $2,12($3)
addu $31,$31,$31
multu $1,$3
mfhi $31
beq $3,$2,endsubtest1
nop
beq $31,$31,endsubtest1
nop
endsubtest1:
la $ra, back1
jr $ra
nop


subtest2:
addu $1,$3,$31
div $31,$31
addu $3,$31,$1
subu $2,$2,$2
lw $0,64($2)
addu $1,$0,$2
mfhi $31
addu $31,$2,$31
subu $31,$31,$1
subu $3,$3,$3
sw $2,12($3)
subu $2,$2,$2
lw $2,12($2)
beq $31,$31,endsubtest2
nop
subu $2,$2,$3
beq $0,$1,endsubtest2
nop
multu $3,$2
endsubtest2:
la $ra, back2
jr $ra
nop


subtest3:
mult $1,$3
div $2,$1
mult $2,$3
multu $1,$1
subu $3,$3,$2
beq $2,$31,endsubtest3
nop
div $2,$3
div $3,$1
beq $3,$31,endsubtest3
nop
multu $2,$3
beq $2,$31,endsubtest3
nop
beq $2,$2,endsubtest3
nop
endsubtest3:
la $ra, back3
jr $ra
nop


subtest4:
beq $3,$3,endsubtest4
nop
beq $3,$0,endsubtest4
nop
divu $3,$1
addu $3,$31,$2
beq $3,$1,endsubtest4
nop
subu $3,$3,$3
sw $0,0($3)
beq $3,$31,endsubtest4
nop
subu $3,$3,$3
lw $3,140($3)
div $1,$2
multu $3,$31
multu $1,$1
ori $1,$31,8
mfhi $3
subu $2,$3,$3
endsubtest4:
la $ra, back4
jr $ra
nop


subtest5:
subu $1,$2,$0
addu $3,$2,$0
subu $3,$3,$3
sw $2,24($3)
subu $3,$3,$3
sw $2,72($3)
mfhi $2
multu $31,$1
subu $3,$1,$31
subu $3,$3,$3
lw $31,152($3)
subu $3,$3,$3
sw $2,100($3)
mfhi $3
addu $31,$1,$31
beq $31,$3,endsubtest5
nop
multu $3,$31
addu $3,$3,$31
endsubtest5:
la $ra, back5
jr $ra
nop


subtest6:
beq $3,$2,endsubtest6
nop
mfhi $31
subu $2,$2,$2
lw $2,156($2)
subu $3,$3,$3
lw $1,108($3)
mult $2,$31
ori $3,$31,60
addu $1,$31,$2
beq $1,$1,endsubtest6
nop
ori $3,$31,24
subu $3,$3,$3
lw $1,120($3)
subu $3,$3,$3
sw $31,12($3)
subu $3,$1,$2
beq $3,$3,endsubtest6
nop
subu $3,$3,$3
lw $2,116($3)
mult $31,$3
endsubtest6:
la $ra, back6
jr $ra
nop


subtest7:
subu $3,$3,$3
sw $2,8($3)
ori $31,$3,52
ori $3,$3,60
divu $31,$3
div $1,$2
beq $2,$1,endsubtest7
nop
beq $2,$1,endsubtest7
nop
ori $31,$1,8
ori $0,$3,92
subu $1,$31,$2
subu $31,$1,$31
mult $31,$31
subu $2,$2,$2
lw $1,152($2)
mfhi $1
endsubtest7:
la $ra, back7
jr $ra
nop


subtest8:
divu $2,$3
beq $1,$1,endsubtest8
nop
subu $3,$3,$3
sw $31,0($3)
beq $2,$2,endsubtest8
nop
beq $3,$2,endsubtest8
nop
div $1,$1
beq $1,$2,endsubtest8
nop
mfhi $3
div $2,$3
beq $1,$31,endsubtest8
nop
subu $3,$31,$2
ori $3,$1,140
subu $2,$2,$2
sw $2,52($2)
endsubtest8:
la $ra, back8
jr $ra
nop


subtest9:
mfhi $1
ori $3,$1,148
addu $3,$3,$2
mfhi $31
mult $2,$1
subu $3,$3,$3
sw $3,140($3)
multu $3,$1
subu $2,$3,$31
div $31,$1
ori $31,$31,144
addu $3,$1,$3
addu $0,$3,$0
ori $1,$2,64
beq $1,$1,endsubtest9
nop
subu $3,$3,$3
lw $31,20($3)
endsubtest9:
la $ra, back9
jr $ra
nop


subtest10:
subu $1,$1,$1
subu $3,$3,$3
sw $0,92($3)
subu $3,$3,$3
lw $1,100($3)
beq $2,$1,endsubtest10
nop
ori $1,$1,0
divu $1,$3
beq $1,$1,endsubtest10
nop
subu $3,$3,$3
lw $1,36($3)
subu $3,$3,$3
sw $31,12($3)
beq $31,$3,endsubtest10
nop
subu $3,$3,$2
mult $3,$31
beq $2,$2,endsubtest10
nop
endsubtest10:
la $ra, back10
jr $ra
nop


subtest11:
subu $2,$2,$2
sw $1,104($2)
ori $2,$1,56
subu $1,$1,$1
sw $31,104($1)
subu $1,$1,$1
sw $3,76($1)
mult $1,$2
addu $3,$3,$2
beq $2,$2,endsubtest11
nop
beq $3,$1,endsubtest11
nop
beq $3,$2,endsubtest11
nop
mult $2,$3
addu $2,$2,$3
beq $1,$2,endsubtest11
nop
subu $3,$3,$3
lw $3,32($3)
endsubtest11:
la $ra, back11
jr $ra
nop


subtest12:
subu $31,$1,$3
subu $3,$3,$3
sw $1,72($3)
divu $3,$31
beq $31,$31,endsubtest12
nop
addu $2,$31,$0
beq $3,$3,endsubtest12
nop
beq $1,$3,endsubtest12
nop
subu $3,$3,$3
lw $2,72($3)
mfhi $31
mult $3,$1
ori $1,$3,40
divu $31,$1
endsubtest12:
la $ra, back12
jr $ra
nop


subtest13:
div $2,$31
beq $31,$2,endsubtest13
nop
addu $1,$3,$2
subu $3,$3,$3
lw $1,148($3)
addu $3,$3,$31
subu $1,$1,$1
lw $0,72($1)
beq $31,$0,endsubtest13
nop
ori $2,$3,120
mult $31,$0
mfhi $1
multu $1,$31
beq $1,$2,endsubtest13
nop
beq $3,$2,endsubtest13
nop
divu $2,$2
endsubtest13:
la $ra, back13
jr $ra
nop


subtest14:
subu $3,$3,$3
sw $31,104($3)
divu $31,$1
mfhi $31
multu $2,$2
addu $31,$1,$0
beq $0,$31,endsubtest14
nop
beq $31,$31,endsubtest14
nop
mult $2,$1
subu $31,$3,$3
multu $1,$1
multu $2,$0
div $31,$2
beq $31,$3,endsubtest14
nop
mult $1,$3
subu $2,$2,$31
endsubtest14:
la $ra, back14
jr $ra
nop


subtest15:
beq $0,$2,endsubtest15
nop
mult $3,$1
div $1,$2
subu $1,$1,$1
lw $2,32($1)
beq $31,$31,endsubtest15
nop
beq $1,$3,endsubtest15
nop
subu $2,$2,$2
sw $2,104($2)
divu $1,$1
divu $31,$3
beq $31,$31,endsubtest15
nop
subu $2,$2,$2
lw $2,0($2)
beq $2,$31,endsubtest15
nop
divu $31,$1
subu $0,$0,$0
lw $1,60($0)
endsubtest15:
la $ra, back15
jr $ra
nop


