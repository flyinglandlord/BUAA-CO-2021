ori $1, $0, 104
ori $2, $0, 120
ori $3, $0, 8
ori $31, $0, 100
addu $3,$1,$4
jal subtest1
nop
back1:
addu $3,$31,$4
jal subtest2
nop
back2:
addu $0,$0,$4
jal subtest3
nop
back3:
addu $2,$1,$4
jal subtest4
nop
back4:
addu $3,$0,$4
jal subtest5
nop
back5:
addu $2,$31,$4
jal subtest6
nop
back6:
addu $31,$31,$4
jal subtest7
nop
back7:
addu $1,$31,$4
jal subtest8
nop
back8:
addu $0,$31,$4
jal subtest9
nop
back9:
addu $31,$3,$4
jal subtest10
nop
back10:
addu $31,$2,$4
jal subtest11
nop
back11:
addu $31,$0,$4
jal subtest12
nop
back12:
addu $1,$1,$4
jal subtest13
nop
back13:
addu $0,$1,$4
jal subtest14
nop
back14:
addu $0,$3,$4
jal subtest15
nop
back15:

subtest1:
ori $0,$0,40
beq $1,$31,endsubtest1
nop
subu $2,$2,$2
lw $1,92($2)
subu $3,$3,$3
lw $3,56($3)
beq $0,$31,endsubtest1
nop
beq $0,$31,endsubtest1
nop
subu $0,$1,$3
subu $3,$3,$3
sw $0,136($3)
subu $2,$3,$2
subu $3,$3,$3
sw $0,108($3)
subu $1,$1,$1
lw $3,32($1)
subu $3,$3,$3
sw $31,44($3)
ori $0,$31,84
addu $3,$2,$2
endsubtest1:
la $ra, back1
jr $ra
nop


subtest2:
addu $1,$2,$3
ori $31,$31,144
subu $0,$0,$0
lw $2,108($0)
beq $1,$2,endsubtest2
nop
beq $0,$2,endsubtest2
nop
subu $3,$3,$3
sw $0,24($3)
beq $2,$3,endsubtest2
nop
beq $0,$0,endsubtest2
nop
beq $31,$1,endsubtest2
nop
beq $31,$3,endsubtest2
nop
beq $3,$1,endsubtest2
nop
beq $1,$2,endsubtest2
nop
subu $1,$1,$1
lw $31,100($1)
endsubtest2:
la $ra, back2
jr $ra
nop


subtest3:
ori $1,$0,12
subu $0,$1,$3
subu $3,$2,$3
subu $0,$0,$0
lw $1,68($0)
ori $3,$31,16
subu $2,$2,$2
lw $31,152($2)
addu $1,$3,$2
subu $1,$31,$3
ori $2,$3,32
subu $2,$2,$2
lw $3,156($2)
addu $0,$0,$2
subu $0,$2,$2
subu $1,$1,$1
sw $1,76($1)
endsubtest3:
la $ra, back3
jr $ra
nop


subtest4:
subu $3,$3,$3
sw $31,132($3)
subu $31,$31,$2
subu $2,$1,$2
ori $1,$3,52
beq $3,$3,endsubtest4
nop
subu $2,$2,$2
lw $0,88($2)
subu $0,$0,$1
subu $3,$3,$3
lw $31,156($3)
beq $1,$2,endsubtest4
nop
beq $0,$0,endsubtest4
nop
subu $0,$0,$0
sw $1,84($0)
ori $0,$0,84
ori $1,$3,112
endsubtest4:
la $ra, back4
jr $ra
nop


subtest5:
subu $0,$0,$0
sw $0,144($0)
subu $2,$1,$31
ori $3,$0,120
subu $3,$0,$31
addu $1,$0,$1
subu $2,$2,$2
sw $31,136($2)
subu $2,$2,$2
sw $31,16($2)
beq $31,$31,endsubtest5
nop
subu $0,$0,$0
sw $3,28($0)
beq $0,$1,endsubtest5
nop
ori $1,$1,88
ori $0,$1,36
addu $31,$3,$31
endsubtest5:
la $ra, back5
jr $ra
nop


subtest6:
ori $3,$0,156
subu $0,$0,$0
sw $0,4($0)
subu $3,$3,$3
sw $1,116($3)
subu $1,$0,$3
beq $0,$1,endsubtest6
nop
subu $1,$1,$1
sw $3,28($1)
addu $0,$1,$2
ori $31,$3,4
subu $3,$3,$3
sw $0,84($3)
ori $2,$1,108
subu $1,$1,$1
sw $0,4($1)
ori $3,$1,12
subu $31,$0,$3
subu $31,$1,$2
subu $0,$3,$2
endsubtest6:
la $ra, back6
jr $ra
nop


subtest7:
addu $2,$2,$1
addu $1,$2,$31
subu $0,$0,$0
sw $2,20($0)
subu $0,$0,$0
lw $1,72($0)
subu $31,$0,$1
subu $1,$1,$31
addu $2,$2,$0
beq $31,$0,endsubtest7
nop
ori $0,$3,148
addu $0,$2,$0
beq $31,$2,endsubtest7
nop
subu $3,$3,$3
sw $0,156($3)
subu $3,$3,$3
sw $0,16($3)
addu $31,$2,$1
endsubtest7:
la $ra, back7
jr $ra
nop


subtest8:
subu $2,$2,$2
sw $31,156($2)
subu $3,$3,$3
lw $2,52($3)
ori $3,$2,52
beq $0,$2,endsubtest8
nop
subu $0,$0,$0
lw $0,104($0)
beq $1,$0,endsubtest8
nop
addu $0,$3,$2
subu $3,$3,$3
sw $0,12($3)
addu $2,$3,$31
subu $3,$3,$3
lw $3,44($3)
subu $1,$1,$1
sw $3,68($1)
beq $1,$31,endsubtest8
nop
subu $3,$0,$1
addu $3,$3,$3
endsubtest8:
la $ra, back8
jr $ra
nop


subtest9:
beq $31,$0,endsubtest9
nop
subu $0,$2,$31
ori $3,$3,148
subu $1,$1,$1
lw $0,68($1)
subu $1,$1,$1
lw $1,36($1)
ori $31,$1,20
subu $3,$3,$3
lw $1,60($3)
subu $3,$3,$3
lw $31,104($3)
subu $0,$0,$0
sw $2,80($0)
subu $1,$1,$1
lw $31,12($1)
subu $3,$0,$3
addu $0,$31,$1
ori $3,$0,112
subu $3,$3,$3
lw $31,44($3)
endsubtest9:
la $ra, back9
jr $ra
nop


subtest10:
addu $3,$1,$0
beq $1,$1,endsubtest10
nop
subu $1,$1,$1
sw $31,4($1)
beq $1,$31,endsubtest10
nop
beq $0,$3,endsubtest10
nop
subu $31,$2,$2
subu $3,$3,$3
lw $3,36($3)
subu $2,$31,$3
subu $0,$3,$31
addu $2,$31,$2
addu $2,$31,$0
beq $1,$0,endsubtest10
nop
endsubtest10:
la $ra, back10
jr $ra
nop


subtest11:
beq $1,$2,endsubtest11
nop
subu $0,$0,$0
sw $1,152($0)
subu $0,$0,$0
sw $3,8($0)
ori $31,$31,24
ori $2,$2,120
addu $3,$3,$1
subu $3,$3,$3
lw $0,44($3)
ori $1,$1,28
subu $0,$0,$0
sw $3,156($0)
subu $0,$1,$0
addu $1,$2,$3
beq $1,$3,endsubtest11
nop
subu $3,$3,$3
lw $3,24($3)
subu $2,$2,$2
sw $0,4($2)
endsubtest11:
la $ra, back11
jr $ra
nop


subtest12:
ori $31,$1,28
ori $0,$2,52
addu $2,$0,$0
subu $0,$31,$3
beq $31,$0,endsubtest12
nop
addu $3,$0,$0
addu $2,$2,$3
subu $2,$2,$2
lw $1,136($2)
beq $2,$31,endsubtest12
nop
beq $0,$3,endsubtest12
nop
ori $31,$0,48
subu $1,$1,$1
lw $31,128($1)
beq $3,$0,endsubtest12
nop
ori $31,$0,144
subu $0,$0,$0
lw $0,108($0)
endsubtest12:
la $ra, back12
jr $ra
nop


subtest13:
beq $0,$1,endsubtest13
nop
beq $2,$3,endsubtest13
nop
ori $3,$1,0
subu $3,$1,$1
subu $0,$0,$3
subu $3,$3,$3
lw $3,56($3)
addu $31,$31,$0
ori $2,$3,60
subu $0,$0,$0
sw $1,96($0)
subu $3,$3,$3
lw $2,36($3)
subu $2,$2,$2
lw $3,124($2)
subu $2,$2,$2
sw $3,152($2)
addu $2,$1,$0
subu $3,$3,$3
sw $31,144($3)
endsubtest13:
la $ra, back13
jr $ra
nop


subtest14:
beq $0,$1,endsubtest14
nop
ori $2,$2,140
ori $31,$2,40
subu $1,$1,$1
sw $0,44($1)
subu $2,$2,$2
sw $3,132($2)
ori $3,$1,80
addu $3,$31,$1
subu $31,$31,$0
beq $2,$3,endsubtest14
nop
subu $2,$2,$2
lw $1,144($2)
subu $3,$0,$3
subu $0,$1,$3
beq $2,$0,endsubtest14
nop
addu $2,$0,$3
endsubtest14:
la $ra, back14
jr $ra
nop


subtest15:
beq $31,$0,endsubtest15
nop
subu $0,$0,$0
lw $2,8($0)
beq $3,$0,endsubtest15
nop
subu $2,$2,$31
subu $3,$0,$3
beq $0,$3,endsubtest15
nop
subu $2,$31,$31
ori $3,$3,120
addu $1,$2,$3
addu $1,$0,$0
beq $31,$0,endsubtest15
nop
subu $3,$3,$3
lw $31,8($3)
subu $3,$3,$0
beq $31,$0,endsubtest15
nop
endsubtest15:
la $ra, back15
jr $ra
nop


