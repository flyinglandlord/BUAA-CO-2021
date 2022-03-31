jal TAG1
add $1, $ra, $0
TAG1:
add $2, $ra, $0
add $3, $ra, $0

jal TAG2
addu $1, $ra, $0
TAG2:
addu $2, $ra, $0
addu $3, $ra, $0

jal TAG3
sub $1, $ra, $0
TAG3:
sub $2, $ra, $0
sub $3, $ra, $0

jal TAG4
subu $1, $ra, $0
TAG4:
subu $2, $ra, $0
subu $3, $ra, $0

jal TAG5
slt $1, $ra, $0
TAG5:
slt $2, $ra, $0
slt $3, $ra, $0

jal TAG6
sltu $1, $ra, $0
TAG6:
sltu $2, $ra, $0
sltu $3, $ra, $0

jal TAG7
and $1, $ra, $0
TAG7:
and $2, $ra, $0
and $3, $ra, $0

jal TAG8
or $1, $ra, $0
TAG8:
or $2, $ra, $0
or $3, $ra, $0

jal TAG9
nor $1, $ra, $0
TAG9:
nor $2, $ra, $0
nor $3, $ra, $0

jal TAG10
xor $1, $ra, $0
TAG10:
xor $2, $ra, $0
xor $3, $ra, $0

jal TAG11
sllv $1, $ra, $0
TAG11:
sllv $2, $ra, $0
sllv $3, $ra, $0

jal TAG12
srlv $1, $ra, $0
TAG12:
srlv $2, $ra, $0
srlv $3, $ra, $0

jal TAG13
srav $1, $ra, $0
TAG13:
srav $2, $ra, $0
srav $3, $ra, $0

jal TAG14
addi $1, $ra, 0
TAG14:
addi $2, $ra, 0
addi $3, $ra, 0

jal TAG15
addiu $1, $ra, 0
TAG15:
addiu $2, $ra, 0
addiu $3, $ra, 0

jal TAG16
slti $1, $ra, 0
TAG16:
slti $2, $ra, 0
slti $3, $ra, 0

jal TAG17
sltiu $1, $ra, 0
TAG17:
sltiu $2, $ra, 0
sltiu $3, $ra, 0

jal TAG18
andi $1, $ra, 0
TAG18:
andi $2, $ra, 0
andi $3, $ra, 0

jal TAG19
ori $1, $ra, 0
TAG19:
ori $2, $ra, 0
ori $3, $ra, 0

jal TAG20
xori $1, $ra, 0
TAG20:
xori $2, $ra, 0
xori $3, $ra, 0

jal TAG21
sll $1, $ra, 0
TAG21:
sll $2, $ra, 0
sll $3, $ra, 0

jal TAG22
srl $1, $ra, 0
TAG22:
srl $2, $ra, 0
srl $3, $ra, 0

jal TAG23
sra $1, $ra, 0
TAG23:
sra $2, $ra, 0
sra $3, $ra, 0

jal TAG24
nop
TAG24:
beq $ra, $0, TAG25
nop
TAG25:
jal TAG26
nop
TAG26:
nop
beq $0, $ra, TAG27
nop
TAG27:

jal TAG28
nop
TAG28:
bne $ra, $0, TAG29
nop
TAG29:
jal TAG30
nop
TAG30:
nop
bne $0, $ra, TAG31
nop
TAG31:

jal TAG32
nop
TAG32:
bgez $ra, TAG33
nop
TAG33:
jal TAG34
nop
TAG34:
nop
bgez $ra, TAG35
nop
TAG35:

jal TAG36
nop
TAG36:
bgtz $ra, TAG37
nop
TAG37:
jal TAG38
nop
TAG38:
nop
bgtz $ra, TAG39
nop
TAG39:

jal TAG40
nop
TAG40:
blez $ra, TAG41
nop
TAG41:
jal TAG42
nop
TAG42:
nop
blez $ra, TAG43
nop
TAG43:

jal TAG44
nop
TAG44:
bltz $ra, TAG45
nop
TAG45:
jal TAG46
nop
TAG46:
nop
bltz $ra, TAG47
nop
TAG47:

jal TAG48
sw $ra, 0($0)
TAG48:
sw $ra, 0($0)
sw $ra, 0($0)
jal TAG49
sw $1, -0x3000($ra)
TAG49:
sw $2, -0x3000($ra)
sw $3, -0x3000($ra)

jal TAG50
sh $ra, 0($0)
TAG50:
sh $ra, 0($0)
sh $ra, 0($0)
jal TAG51
sh $1, -0x3000($ra)
TAG51:
sh $2, -0x3000($ra)
sh $3, -0x3000($ra)

jal TAG52
sb $ra, 0($0)
TAG52:
sb $ra, 0($0)
sb $ra, 0($0)
jal TAG53
sb $1, -0x3000($ra)
TAG53:
sb $2, -0x3000($ra)
sb $3, -0x3000($ra)

jal TAG54
lw $1, -0x3000($ra)
TAG54:
lw $2, -0x3000($ra)
lw $3, -0x3000($ra)

jal TAG55
lh $1, -0x3000($ra)
TAG55:
lh $2, -0x3000($ra)
lh $3, -0x3000($ra)

jal TAG56
lhu $1, -0x3000($ra)
TAG56:
lhu $2, -0x3000($ra)
lhu $3, -0x3000($ra)

jal TAG57
lb $1, -0x3000($ra)
TAG57:
lb $2, -0x3000($ra)
lb $3, -0x3000($ra)

jal TAG58
lbu $1, -0x3000($ra)
TAG58:
lbu $2, -0x3000($ra)
lbu $3, -0x3000($ra)

jal TAG59
mthi $ra
TAG59:
mthi $ra
mthi $ra

jal TAG60
mtlo $ra
TAG60:
mtlo $ra
mtlo $ra

ori $1, $0, 1
jal TAG61
mult $ra, $1
TAG61:
mult $ra, $1
mult $ra, $1

ori $1, $0, 1
jal TAG62
multu $ra, $1
TAG62:
multu $ra, $1
multu $ra, $1

ori $1, $0, 1
jal TAG63
div $ra, $1
TAG63:
div $ra, $1
div $ra, $1

ori $1, $0, 1
jal TAG64
divu $ra, $1
TAG64:
divu $ra, $1
divu $ra, $1

ori $t0, $0, 888
addi $t0, $t0, 0x3000
jalr $ra, $t0
add $1, $ra, $0
add $2, $ra, $0
add $3, $ra, $0

ori $t0, $0, 912
addi $t0, $t0, 0x3000
jalr $ra, $t0
addu $1, $ra, $0
addu $2, $ra, $0
addu $3, $ra, $0

ori $t0, $0, 936
addi $t0, $t0, 0x3000
jalr $ra, $t0
sub $1, $ra, $0
sub $2, $ra, $0
sub $3, $ra, $0

ori $t0, $0, 960
addi $t0, $t0, 0x3000
jalr $ra, $t0
subu $1, $ra, $0
subu $2, $ra, $0
subu $3, $ra, $0

ori $t0, $0, 984
addi $t0, $t0, 0x3000
jalr $ra, $t0
slt $1, $ra, $0
slt $2, $ra, $0
slt $3, $ra, $0

ori $t0, $0, 1008
addi $t0, $t0, 0x3000
jalr $ra, $t0
sltu $1, $ra, $0
sltu $2, $ra, $0
sltu $3, $ra, $0

ori $t0, $0, 1032
addi $t0, $t0, 0x3000
jalr $ra, $t0
and $1, $ra, $0
and $2, $ra, $0
and $3, $ra, $0

ori $t0, $0, 1056
addi $t0, $t0, 0x3000
jalr $ra, $t0
or $1, $ra, $0
or $2, $ra, $0
or $3, $ra, $0

ori $t0, $0, 1080
addi $t0, $t0, 0x3000
jalr $ra, $t0
nor $1, $ra, $0
nor $2, $ra, $0
nor $3, $ra, $0

ori $t0, $0, 1104
addi $t0, $t0, 0x3000
jalr $ra, $t0
xor $1, $ra, $0
xor $2, $ra, $0
xor $3, $ra, $0

ori $t0, $0, 1128
addi $t0, $t0, 0x3000
jalr $ra, $t0
sllv $1, $ra, $0
sllv $2, $ra, $0
sllv $3, $ra, $0

ori $t0, $0, 1152
addi $t0, $t0, 0x3000
jalr $ra, $t0
srlv $1, $ra, $0
srlv $2, $ra, $0
srlv $3, $ra, $0

ori $t0, $0, 1176
addi $t0, $t0, 0x3000
jalr $ra, $t0
srav $1, $ra, $0
srav $2, $ra, $0
srav $3, $ra, $0

ori $t0, $0, 1200
addi $t0, $t0, 0x3000
jalr $ra, $t0
addi $1, $ra, 0
addi $2, $ra, 0
addi $3, $ra, 0

ori $t0, $0, 1224
addi $t0, $t0, 0x3000
jalr $ra, $t0
addiu $1, $ra, 0
addiu $2, $ra, 0
addiu $3, $ra, 0

ori $t0, $0, 1248
addi $t0, $t0, 0x3000
jalr $ra, $t0
slti $1, $ra, 0
slti $2, $ra, 0
slti $3, $ra, 0

ori $t0, $0, 1272
addi $t0, $t0, 0x3000
jalr $ra, $t0
sltiu $1, $ra, 0
sltiu $2, $ra, 0
sltiu $3, $ra, 0

ori $t0, $0, 1296
addi $t0, $t0, 0x3000
jalr $ra, $t0
andi $1, $ra, 0
andi $2, $ra, 0
andi $3, $ra, 0

ori $t0, $0, 1320
addi $t0, $t0, 0x3000
jalr $ra, $t0
ori $1, $ra, 0
ori $2, $ra, 0
ori $3, $ra, 0

ori $t0, $0, 1344
addi $t0, $t0, 0x3000
jalr $ra, $t0
xori $1, $ra, 0
xori $2, $ra, 0
xori $3, $ra, 0

ori $t0, $0, 1368
addi $t0, $t0, 0x3000
jalr $ra, $t0
sll $1, $ra, 0
sll $2, $ra, 0
sll $3, $ra, 0

ori $t0, $0, 1392
addi $t0, $t0, 0x3000
jalr $ra, $t0
srl $1, $ra, 0
srl $2, $ra, 0
srl $3, $ra, 0

ori $t0, $0, 1416
addi $t0, $t0, 0x3000
jalr $ra, $t0
sra $1, $ra, 0
sra $2, $ra, 0
sra $3, $ra, 0

ori $t0, $0, 1440
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
beq $ra, $0, TAG65
nop
TAG65:
ori $t0, $0, 1464
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
beq $0, $ra, TAG66
nop
TAG66:

ori $t0, $0, 1492
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
bne $ra, $0, TAG67
nop
TAG67:
ori $t0, $0, 1516
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
bne $0, $ra, TAG68
nop
TAG68:

ori $t0, $0, 1544
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
bgez $ra, TAG69
nop
TAG69:
ori $t0, $0, 1568
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
bgez $ra, TAG70
nop
TAG70:

ori $t0, $0, 1596
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
bgtz $ra, TAG71
nop
TAG71:
ori $t0, $0, 1620
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
bgtz $ra, TAG72
nop
TAG72:

ori $t0, $0, 1648
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
blez $ra, TAG73
nop
TAG73:
ori $t0, $0, 1672
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
blez $ra, TAG74
nop
TAG74:

ori $t0, $0, 1700
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
bltz $ra, TAG75
nop
TAG75:
ori $t0, $0, 1724
addi $t0, $t0, 0x3000
jalr $ra, $t0
nop
nop
bltz $ra, TAG76
nop
TAG76:

ori $t0, $0, 1752
addi $t0, $t0, 0x3000
jalr $ra, $t0
sw $ra, 0($0)
sw $ra, 0($0)
sw $ra, 0($0)
ori $t0, $0, 1776
addi $t0, $t0, 0x3000
jalr $ra, $t0
sw $1, -0x3000($ra)
sw $2, -0x3000($ra)
sw $3, -0x3000($ra)

ori $t0, $0, 1800
addi $t0, $t0, 0x3000
jalr $ra, $t0
sh $ra, 0($0)
sh $ra, 0($0)
sh $ra, 0($0)
ori $t0, $0, 1824
addi $t0, $t0, 0x3000
jalr $ra, $t0
sh $1, -0x3000($ra)
sh $2, -0x3000($ra)
sh $3, -0x3000($ra)

ori $t0, $0, 1848
addi $t0, $t0, 0x3000
jalr $ra, $t0
sb $ra, 0($0)
sb $ra, 0($0)
sb $ra, 0($0)
ori $t0, $0, 1872
addi $t0, $t0, 0x3000
jalr $ra, $t0
sb $1, -0x3000($ra)
sb $2, -0x3000($ra)
sb $3, -0x3000($ra)

ori $t0, $0, 1896
addi $t0, $t0, 0x3000
jalr $ra, $t0
lw $1, -0x3000($ra)
lw $2, -0x3000($ra)
lw $3, -0x3000($ra)

ori $t0, $0, 1920
addi $t0, $t0, 0x3000
jalr $ra, $t0
lh $1, -0x3000($ra)
lh $2, -0x3000($ra)
lh $3, -0x3000($ra)

ori $t0, $0, 1944
addi $t0, $t0, 0x3000
jalr $ra, $t0
lhu $1, -0x3000($ra)
lhu $2, -0x3000($ra)
lhu $3, -0x3000($ra)

ori $t0, $0, 1968
addi $t0, $t0, 0x3000
jalr $ra, $t0
lb $1, -0x3000($ra)
lb $2, -0x3000($ra)
lb $3, -0x3000($ra)

ori $t0, $0, 1992
addi $t0, $t0, 0x3000
jalr $ra, $t0
lbu $1, -0x3000($ra)
lbu $2, -0x3000($ra)
lbu $3, -0x3000($ra)

ori $t0, $0, 2016
addi $t0, $t0, 0x3000
jalr $ra, $t0
mthi $ra
mthi $ra
mthi $ra

ori $t0, $0, 2040
addi $t0, $t0, 0x3000
jalr $ra, $t0
mtlo $ra
mtlo $ra
mtlo $ra

ori $1, $0, 1
ori $t0, $0, 2068
addi $t0, $t0, 0x3000
jalr $ra, $t0
mult $ra, $1
mult $ra, $1
mult $ra, $1

ori $1, $0, 1
ori $t0, $0, 2096
addi $t0, $t0, 0x3000
jalr $ra, $t0
multu $ra, $1
multu $ra, $1
multu $ra, $1

ori $1, $0, 1
ori $t0, $0, 2124
addi $t0, $t0, 0x3000
jalr $ra, $t0
div $ra, $1
div $ra, $1
div $ra, $1

ori $1, $0, 1
ori $t0, $0, 2152
addi $t0, $t0, 0x3000
jalr $ra, $t0
divu $ra, $1
divu $ra, $1
divu $ra, $1

ori $t0, $0, 14464
add $1, $t0, $0
jr $1
nop
ori $t0, $0, 14484
add $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14508
add $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 14524
addu $1, $t0, $0
jr $1
nop
ori $t0, $0, 14544
addu $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14568
addu $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 14584
sub $1, $t0, $0
jr $1
nop
ori $t0, $0, 14604
sub $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14628
sub $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 14644
subu $1, $t0, $0
jr $1
nop
ori $t0, $0, 14664
subu $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14688
subu $1, $t0, $0
nop
nop
jr $1
nop

ori $t1, $0, 0xffff
ori $t0, $0, 14708
and $1, $t0, $t1
jr $1
nop
ori $t1, $0, 0xffff
ori $t0, $0, 14732
and $1, $t0, $t1
nop
jr $1
nop
ori $t1, $0, 0xffff
ori $t0, $0, 14760
and $1, $t0, $t1
nop
nop
jr $1
nop

ori $t0, $0, 14776
or $1, $t0, $0
jr $1
nop
ori $t0, $0, 14796
or $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14820
or $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, -14845
nor $1, $t0, $0
jr $1
nop
ori $t0, $0, -14873
nor $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, -14905
nor $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 14920
xor $1, $t0, $0
jr $1
nop
ori $t0, $0, 14940
xor $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 14964
xor $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 14980
sllv $1, $t0, $0
jr $1
nop
ori $t0, $0, 15000
sllv $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 15024
sllv $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 15040
srlv $1, $t0, $0
jr $1
nop
ori $t0, $0, 15060
srlv $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 15084
srlv $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 15100
srav $1, $t0, $0
jr $1
nop
ori $t0, $0, 15120
srav $1, $t0, $0
nop
jr $1
nop
ori $t0, $0, 15144
srav $1, $t0, $0
nop
nop
jr $1
nop

ori $t0, $0, 15160
addi $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15180
addi $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15204
addi $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15220
addiu $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15240
addiu $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15264
addiu $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15280
andi $1, $t0, 0xffff
jr $1
nop
ori $t0, $0, 15300
andi $1, $t0, 0xffff
nop
jr $1
nop
ori $t0, $0, 15324
andi $1, $t0, 0xffff
nop
nop
jr $1
nop

ori $t0, $0, 15340
ori $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15360
ori $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15384
ori $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15400
xori $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15420
xori $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15444
xori $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15460
sll $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15480
sll $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15504
sll $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15520
srl $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15540
srl $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15564
srl $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15580
sra $1, $t0, 0x0
jr $1
nop
ori $t0, $0, 15600
sra $1, $t0, 0x0
nop
jr $1
nop
ori $t0, $0, 15624
sra $1, $t0, 0x0
nop
nop
jr $1
nop

ori $t0, $0, 15644
mthi $t0
mfhi $1
jr $1
nop
ori $t0, $0, 15668
mthi $t0
mfhi $1
nop
jr $1
nop
ori $t0, $0, 15696
mthi $t0
mfhi $1
nop
nop
jr $1
nop

ori $t0, $0, 15716
mtlo $t0
mflo $1
jr $1
nop
ori $t0, $0, 15740
mtlo $t0
mflo $1
nop
jr $1
nop
ori $t0, $0, 15768
mtlo $t0
mflo $1
nop
nop
jr $1
nop

ori $t0, $0, 15788
sw $t0, 0($0)
lw $1, 0($0)
jr $1
nop
ori $t0, $0, 15812
sw $t0, 0($0)
lw $1, 0($0)
nop
jr $1
nop
ori $t0, $0, 15840
sw $t0, 0($0)
lw $1, 0($0)
nop
nop
jr $1
nop
ori $t0, $0, 15860
sh $t0, 0($0)
lh $1, 0($0)
jr $1
nop
ori $t0, $0, 15884
sh $t0, 0($0)
lh $1, 0($0)
nop
jr $1
nop
ori $t0, $0, 15912
sh $t0, 0($0)
lh $1, 0($0)
nop
nop
jr $1
nop
ori $t0, $0, 15932
sh $t0, 0($0)
lhu $1, 0($0)
jr $1
nop
ori $t0, $0, 15956
sh $t0, 0($0)
lhu $1, 0($0)
nop
jr $1
nop
ori $t0, $0, 15984
sh $t0, 0($0)
lhu $1, 0($0)
nop
nop
jr $1
nop
jal TAG77
nop
j END1
nop
TAG77:
jr $ra
nop
END1:
jal TAG78
nop
j END2
nop
TAG78:
nop
jr $ra
nop
END2:

ori $1, $0, 16056
jalr $ra, $1
nop
j END3
nop
jr $ra
nop
END3:
ori $1, $0, 16084
jalr $ra, $1
nop
j END4
nop
nop
jr $ra
nop
END4:

ori $t0, $0, 16112
add $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16132
add $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16156
add $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16172
addu $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16192
addu $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16216
addu $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16232
sub $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16252
sub $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16276
sub $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16292
subu $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16312
subu $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16336
subu $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t1, $0, 0xffff
ori $t0, $0, 16356
and $1, $t0, $t1
jalr $ra, $1
nop
ori $t1, $0, 0xffff
ori $t0, $0, 16380
and $1, $t0, $t1
nop
jalr $ra, $1
nop
ori $t1, $0, 0xffff
ori $t0, $0, 16408
and $1, $t0, $t1
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16424
or $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16444
or $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16468
or $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, -16493
nor $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, -16521
nor $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, -16553
nor $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16568
xor $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16588
xor $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16612
xor $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16628
sllv $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16648
sllv $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16672
sllv $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16688
srlv $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16708
srlv $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16732
srlv $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16748
srav $1, $t0, $0
jalr $ra, $1
nop
ori $t0, $0, 16768
srav $1, $t0, $0
nop
jalr $ra, $1
nop
ori $t0, $0, 16792
srav $1, $t0, $0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16808
addi $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 16828
addi $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 16852
addi $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16868
addiu $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 16888
addiu $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 16912
addiu $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16928
andi $1, $t0, 0xffff
jalr $ra, $1
nop
ori $t0, $0, 16948
andi $1, $t0, 0xffff
nop
jalr $ra, $1
nop
ori $t0, $0, 16972
andi $1, $t0, 0xffff
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 16988
ori $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 17008
ori $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 17032
ori $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17048
xori $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 17068
xori $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 17092
xori $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17108
sll $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 17128
sll $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 17152
sll $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17168
srl $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 17188
srl $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 17212
srl $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17228
sra $1, $t0, 0x0
jalr $ra, $1
nop
ori $t0, $0, 17248
sra $1, $t0, 0x0
nop
jalr $ra, $1
nop
ori $t0, $0, 17272
sra $1, $t0, 0x0
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17292
mthi $t0
mfhi $1
jalr $ra, $1
nop
ori $t0, $0, 17316
mthi $t0
mfhi $1
nop
jalr $ra, $1
nop
ori $t0, $0, 17344
mthi $t0
mfhi $1
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17364
mtlo $t0
mflo $1
jalr $ra, $1
nop
ori $t0, $0, 17388
mtlo $t0
mflo $1
nop
jalr $ra, $1
nop
ori $t0, $0, 17416
mtlo $t0
mflo $1
nop
nop
jalr $ra, $1
nop

ori $t0, $0, 17436
sw $t0, 0($0)
lw $1, 0($0)
jalr $ra, $1
nop
ori $t0, $0, 17460
sw $t0, 0($0)
lw $1, 0($0)
nop
jalr $ra, $1
nop
ori $t0, $0, 17488
sw $t0, 0($0)
lw $1, 0($0)
nop
nop
jalr $ra, $1
nop
ori $t0, $0, 17508
sh $t0, 0($0)
lh $1, 0($0)
jalr $ra, $1
nop
ori $t0, $0, 17532
sh $t0, 0($0)
lh $1, 0($0)
nop
jalr $ra, $1
nop
ori $t0, $0, 17560
sh $t0, 0($0)
lh $1, 0($0)
nop
nop
jalr $ra, $1
nop
ori $t0, $0, 17580
sh $t0, 0($0)
lhu $1, 0($0)
jalr $ra, $1
nop
ori $t0, $0, 17604
sh $t0, 0($0)
lhu $1, 0($0)
nop
jalr $ra, $1
nop
ori $t0, $0, 17632
sh $t0, 0($0)
lhu $1, 0($0)
nop
nop
jalr $ra, $1
nop
jal TAG79
nop
j END5
nop
TAG79:
jalr $0, $ra
nop
END5:
jal TAG80
nop
j END6
nop
TAG80:
nop
jalr $0, $ra
nop
END6:

ori $1, $0, 17704
jalr $ra, $1
nop
j END7
nop
jalr $0, $ra
nop
END7:
ori $1, $0, 17732
jalr $ra, $1
nop
j END8
nop
nop
jalr $0, $ra
nop
END8:

