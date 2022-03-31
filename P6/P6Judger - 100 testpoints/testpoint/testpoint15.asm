ori $1, $0, 13
ori $2, $0, 3
ori $3, $0, 12
ori $4, $0, 8
sw $2, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $1, 24($0)
sw $2, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $2, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $1, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $1, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $4, 124($0)
blez $2, TAG1
lb $2, 0($2)
bne $2, $2, TAG1
lui $4, 13
TAG1:
mtlo $4
bne $4, $4, TAG2
srl $1, $4, 14
mult $1, $4
TAG2:
mult $1, $1
mult $1, $1
divu $1, $1
bgez $1, TAG3
TAG3:
srl $4, $1, 14
bgez $1, TAG4
lh $1, 0($1)
sll $2, $1, 14
TAG4:
blez $2, TAG5
sh $2, 0($2)
beq $2, $2, TAG5
subu $1, $2, $2
TAG5:
beq $1, $1, TAG6
mthi $1
divu $1, $1
sh $1, 0($1)
TAG6:
mfhi $4
div $4, $1
lui $1, 2
beq $1, $1, TAG7
TAG7:
mult $1, $1
subu $2, $1, $1
beq $2, $2, TAG8
xor $1, $1, $2
TAG8:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
srav $4, $4, $4
TAG9:
sll $0, $0, 0
mthi $4
mtlo $4
sll $0, $0, 0
TAG10:
sll $0, $0, 0
blez $4, TAG11
srl $1, $4, 6
sll $0, $0, 0
TAG11:
xor $2, $1, $1
sh $2, -13312($1)
lh $2, -13312($1)
srl $1, $1, 5
TAG12:
sb $1, -416($1)
sw $1, -416($1)
div $1, $1
lui $2, 8
TAG13:
beq $2, $2, TAG14
mflo $2
sra $3, $2, 1
sw $3, 0($2)
TAG14:
addu $1, $3, $3
lui $2, 0
bltz $3, TAG15
srav $3, $3, $1
TAG15:
bne $3, $3, TAG16
nor $2, $3, $3
mthi $2
mfhi $2
TAG16:
srl $1, $2, 7
mfhi $1
lui $4, 5
sll $0, $0, 0
TAG17:
bgtz $4, TAG18
divu $4, $4
or $1, $4, $4
bgtz $1, TAG18
TAG18:
xori $1, $1, 3
mtlo $1
lhu $3, 4($1)
lui $3, 6
TAG19:
sll $0, $0, 0
divu $3, $3
beq $3, $3, TAG20
divu $3, $3
TAG20:
andi $4, $3, 13
bgez $4, TAG21
multu $4, $4
blez $3, TAG21
TAG21:
sw $4, 0($4)
lui $4, 0
blez $4, TAG22
sb $4, 0($4)
TAG22:
multu $4, $4
bne $4, $4, TAG23
mtlo $4
bne $4, $4, TAG23
TAG23:
lhu $1, 0($4)
mfhi $2
sllv $3, $1, $2
xori $2, $3, 5
TAG24:
multu $2, $2
sra $4, $2, 6
addu $2, $2, $2
bgez $4, TAG25
TAG25:
sh $2, 0($2)
bne $2, $2, TAG26
lui $2, 7
slt $2, $2, $2
TAG26:
lhu $3, 0($2)
xor $3, $2, $3
lbu $2, 0($3)
lb $1, 0($3)
TAG27:
xor $4, $1, $1
lui $1, 11
mfhi $4
mtlo $1
TAG28:
beq $4, $4, TAG29
lh $1, 0($4)
sw $1, 0($4)
andi $3, $4, 6
TAG29:
nor $3, $3, $3
lhu $2, 1($3)
sra $2, $3, 3
ori $2, $3, 7
TAG30:
mflo $3
lui $1, 11
sll $0, $0, 0
mtlo $2
TAG31:
sb $2, 1($2)
lui $4, 8
mflo $2
srl $4, $2, 6
TAG32:
sll $3, $4, 8
sll $0, $0, 0
mflo $3
bgez $3, TAG33
TAG33:
sll $0, $0, 0
lui $3, 1
divu $2, $2
mflo $1
TAG34:
nor $1, $1, $1
mthi $1
mfhi $3
divu $3, $1
TAG35:
mflo $3
mtlo $3
mtlo $3
mfhi $4
TAG36:
sllv $2, $4, $4
addu $3, $2, $4
lui $3, 13
multu $3, $3
TAG37:
and $4, $3, $3
beq $3, $3, TAG38
multu $3, $4
mtlo $3
TAG38:
sll $1, $4, 5
mflo $3
divu $3, $4
div $4, $4
TAG39:
sltu $3, $3, $3
mult $3, $3
bgtz $3, TAG40
lui $4, 9
TAG40:
mflo $3
multu $3, $3
sltu $3, $4, $3
sll $0, $0, 0
TAG41:
mflo $1
mfhi $2
mflo $3
bne $3, $2, TAG42
TAG42:
addu $2, $3, $3
beq $2, $2, TAG43
mfhi $3
lb $4, 0($2)
TAG43:
addiu $1, $4, 7
mfhi $2
mthi $1
mflo $1
TAG44:
sltu $1, $1, $1
bne $1, $1, TAG45
sw $1, 0($1)
mfhi $3
TAG45:
sll $0, $0, 0
sltu $3, $3, $3
lui $4, 4
mflo $4
TAG46:
mfhi $3
mult $4, $4
sll $1, $4, 11
or $2, $1, $4
TAG47:
mthi $2
lw $4, 0($2)
mthi $2
bgez $4, TAG48
TAG48:
mthi $4
lui $3, 6
sh $3, 0($4)
srl $3, $3, 9
TAG49:
sllv $4, $3, $3
beq $3, $4, TAG50
divu $4, $3
lh $1, 0($3)
TAG50:
bltz $1, TAG51
multu $1, $1
bne $1, $1, TAG51
andi $1, $1, 4
TAG51:
bltz $1, TAG52
mflo $2
sh $1, 0($1)
beq $1, $1, TAG52
TAG52:
mult $2, $2
bgez $2, TAG53
lhu $3, 0($2)
xor $3, $3, $3
TAG53:
sb $3, 0($3)
sw $3, 0($3)
mtlo $3
beq $3, $3, TAG54
TAG54:
lb $1, 0($3)
addiu $1, $3, 10
andi $1, $1, 11
bltz $3, TAG55
TAG55:
sh $1, 0($1)
lui $3, 10
div $3, $3
sll $0, $0, 0
TAG56:
mthi $1
mflo $1
or $4, $1, $1
lbu $4, 0($1)
TAG57:
lui $1, 13
sw $4, 0($4)
srlv $4, $1, $4
sll $0, $0, 0
TAG58:
bgez $3, TAG59
mfhi $4
lb $1, 0($4)
bgez $3, TAG59
TAG59:
multu $1, $1
sra $1, $1, 1
sll $0, $0, 0
div $1, $1
TAG60:
mtlo $1
bne $1, $1, TAG61
sltu $1, $1, $1
or $3, $1, $1
TAG61:
or $3, $3, $3
bne $3, $3, TAG62
multu $3, $3
sll $2, $3, 4
TAG62:
lh $1, 0($2)
bne $2, $2, TAG63
lb $2, 0($2)
sw $1, 0($2)
TAG63:
bgtz $2, TAG64
add $4, $2, $2
multu $2, $2
ori $4, $2, 14
TAG64:
beq $4, $4, TAG65
mfhi $2
bgez $4, TAG65
xori $4, $4, 14
TAG65:
sh $4, 0($4)
divu $4, $4
lhu $4, 0($4)
div $4, $4
TAG66:
mflo $2
slt $2, $2, $4
blez $2, TAG67
mflo $2
TAG67:
sb $2, 0($2)
lbu $1, 0($2)
sb $2, 0($1)
sll $3, $1, 11
TAG68:
ori $3, $3, 8
beq $3, $3, TAG69
mfhi $1
slti $2, $3, 5
TAG69:
xor $3, $2, $2
div $3, $2
bgtz $3, TAG70
lb $4, 0($3)
TAG70:
lui $1, 2
sll $0, $0, 0
beq $3, $4, TAG71
mthi $4
TAG71:
mfhi $3
mflo $4
sra $2, $3, 12
andi $3, $3, 12
TAG72:
bgez $3, TAG73
mult $3, $3
beq $3, $3, TAG73
div $3, $3
TAG73:
sub $2, $3, $3
mult $3, $3
mtlo $2
sh $3, 0($2)
TAG74:
mthi $2
lui $2, 1
sra $1, $2, 6
bne $2, $2, TAG75
TAG75:
mflo $3
blez $3, TAG76
sra $3, $1, 7
lhu $4, 0($3)
TAG76:
xori $4, $4, 0
beq $4, $4, TAG77
sll $1, $4, 12
mflo $3
TAG77:
bltz $3, TAG78
lui $4, 2
lui $1, 15
mfhi $4
TAG78:
sh $4, 0($4)
and $3, $4, $4
lb $4, 0($4)
lui $2, 0
TAG79:
beq $2, $2, TAG80
subu $4, $2, $2
div $2, $2
slti $3, $4, 14
TAG80:
sw $3, 0($3)
mflo $2
bne $2, $3, TAG81
mult $2, $2
TAG81:
mfhi $4
andi $1, $2, 3
mult $2, $4
bltz $2, TAG82
TAG82:
slt $1, $1, $1
sb $1, 0($1)
lui $4, 2
sll $3, $1, 11
TAG83:
mthi $3
bgez $3, TAG84
mflo $1
lbu $2, 0($1)
TAG84:
lw $3, 0($2)
lui $3, 0
lhu $4, 0($3)
sb $3, 0($3)
TAG85:
mfhi $3
lui $1, 10
bne $4, $1, TAG86
div $1, $1
TAG86:
bne $1, $1, TAG87
mflo $1
mtlo $1
mfhi $3
TAG87:
bgez $3, TAG88
mult $3, $3
blez $3, TAG88
mult $3, $3
TAG88:
addiu $4, $3, 11
divu $4, $4
bgtz $3, TAG89
multu $4, $4
TAG89:
bgez $4, TAG90
srl $1, $4, 13
srl $2, $1, 8
mfhi $4
TAG90:
beq $4, $4, TAG91
lb $2, 0($4)
sub $1, $4, $4
beq $1, $1, TAG91
TAG91:
sb $1, 0($1)
bgtz $1, TAG92
sllv $2, $1, $1
lbu $3, 0($1)
TAG92:
xor $3, $3, $3
blez $3, TAG93
mthi $3
div $3, $3
TAG93:
lbu $1, 0($3)
beq $3, $1, TAG94
mfhi $3
lbu $3, 0($3)
TAG94:
slt $4, $3, $3
lhu $2, 0($3)
mtlo $3
sll $1, $2, 5
TAG95:
mflo $3
mtlo $3
beq $1, $3, TAG96
mtlo $3
TAG96:
mflo $3
mflo $2
bne $2, $3, TAG97
mult $2, $2
TAG97:
mflo $4
bne $4, $2, TAG98
mfhi $4
sra $4, $2, 10
TAG98:
mflo $1
mfhi $3
bgez $1, TAG99
sra $2, $1, 2
TAG99:
mult $2, $2
mult $2, $2
nor $4, $2, $2
sw $4, 0($2)
TAG100:
div $4, $4
sh $4, 1($4)
mtlo $4
mthi $4
TAG101:
slt $3, $4, $4
bne $3, $3, TAG102
lui $3, 5
sll $0, $0, 0
TAG102:
sh $1, 0($1)
bgtz $1, TAG103
slti $1, $1, 4
bltz $1, TAG103
TAG103:
sb $1, 0($1)
sb $1, 0($1)
sllv $2, $1, $1
lui $4, 15
TAG104:
ori $2, $4, 12
mtlo $4
divu $2, $2
mtlo $2
TAG105:
bne $2, $2, TAG106
mthi $2
mfhi $1
slt $2, $1, $2
TAG106:
mult $2, $2
multu $2, $2
sltu $2, $2, $2
addiu $3, $2, 5
TAG107:
beq $3, $3, TAG108
lb $2, 0($3)
slt $1, $2, $3
lui $1, 1
TAG108:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
lui $4, 4
TAG109:
sll $0, $0, 0
addiu $3, $4, 14
beq $4, $4, TAG110
div $3, $4
TAG110:
addu $2, $3, $3
lui $2, 11
srlv $4, $2, $3
mtlo $3
TAG111:
mthi $4
mfhi $4
lui $3, 1
sltu $1, $4, $4
TAG112:
lui $4, 8
srl $2, $4, 8
divu $2, $2
srlv $1, $1, $2
TAG113:
sh $1, 0($1)
lui $3, 3
sll $3, $3, 12
mult $1, $1
TAG114:
beq $3, $3, TAG115
sra $4, $3, 7
mthi $3
div $3, $4
TAG115:
multu $4, $4
lui $3, 6
div $4, $3
addiu $2, $4, 4
TAG116:
bne $2, $2, TAG117
mult $2, $2
and $2, $2, $2
sll $0, $0, 0
TAG117:
mthi $3
div $3, $3
sll $0, $0, 0
mfhi $3
TAG118:
lbu $3, 0($3)
lbu $4, 0($3)
lui $1, 1
sb $3, 0($3)
TAG119:
sra $2, $1, 1
lui $4, 2
xori $4, $1, 3
sltu $4, $4, $2
TAG120:
lui $1, 0
mthi $4
lh $4, 0($4)
lui $4, 13
TAG121:
div $4, $4
lui $1, 8
bne $1, $1, TAG122
lui $3, 13
TAG122:
beq $3, $3, TAG123
mtlo $3
lui $3, 5
lui $4, 15
TAG123:
multu $4, $4
divu $4, $4
sll $0, $0, 0
subu $1, $4, $4
TAG124:
sll $3, $1, 1
bltz $1, TAG125
sll $1, $1, 5
srl $4, $1, 11
TAG125:
sllv $3, $4, $4
beq $3, $4, TAG126
lui $3, 14
bne $3, $4, TAG126
TAG126:
xori $1, $3, 12
mflo $3
beq $3, $3, TAG127
sll $0, $0, 0
TAG127:
mthi $3
lui $3, 4
bgez $3, TAG128
xori $4, $3, 8
TAG128:
sltiu $1, $4, 14
sh $1, 0($1)
mtlo $4
addiu $3, $4, 7
TAG129:
sltiu $3, $3, 9
mthi $3
lh $1, 0($3)
srav $1, $3, $1
TAG130:
and $4, $1, $1
slti $3, $4, 13
mtlo $4
sb $1, 0($3)
TAG131:
lui $3, 5
beq $3, $3, TAG132
lui $2, 0
lw $1, 0($3)
TAG132:
lui $4, 7
bgez $4, TAG133
mult $4, $1
bgtz $1, TAG133
TAG133:
sll $0, $0, 0
mult $4, $4
srl $1, $2, 5
subu $1, $1, $4
TAG134:
beq $1, $1, TAG135
mfhi $2
sh $2, 0($1)
sh $1, 0($2)
TAG135:
mflo $2
mflo $2
sllv $1, $2, $2
bne $2, $2, TAG136
TAG136:
lui $1, 14
addu $2, $1, $1
ori $2, $2, 5
sll $0, $0, 0
TAG137:
addiu $1, $2, 13
mfhi $4
mflo $3
div $3, $1
TAG138:
mtlo $3
sh $3, 0($3)
mthi $3
mult $3, $3
TAG139:
ori $2, $3, 4
sw $2, 0($3)
mult $3, $3
lw $1, 0($3)
TAG140:
lb $2, 0($1)
mthi $1
mflo $2
mflo $3
TAG141:
mthi $3
sw $3, 0($3)
sb $3, 0($3)
sh $3, 0($3)
TAG142:
addi $1, $3, 0
andi $3, $1, 13
mthi $3
or $2, $1, $3
TAG143:
beq $2, $2, TAG144
lb $4, 0($2)
slti $1, $4, 7
lui $1, 0
TAG144:
bgez $1, TAG145
lhu $3, 0($1)
sh $1, 0($1)
sh $1, 0($1)
TAG145:
beq $3, $3, TAG146
lui $3, 9
lhu $1, 0($3)
lw $2, 0($3)
TAG146:
sra $4, $2, 4
mfhi $1
multu $2, $4
sltu $1, $4, $2
TAG147:
mflo $2
xori $1, $1, 3
subu $4, $1, $2
mthi $4
TAG148:
blez $4, TAG149
addu $4, $4, $4
sh $4, 0($4)
lui $1, 12
TAG149:
slti $1, $1, 15
sb $1, 0($1)
ori $1, $1, 8
bne $1, $1, TAG150
TAG150:
addiu $2, $1, 2
div $1, $1
mult $1, $1
lui $1, 12
TAG151:
sll $0, $0, 0
srl $2, $1, 14
lui $2, 0
bgtz $2, TAG152
TAG152:
sh $2, 0($2)
sll $1, $2, 11
sw $1, 0($2)
mfhi $4
TAG153:
beq $4, $4, TAG154
mtlo $4
mult $4, $4
beq $4, $4, TAG154
TAG154:
lh $1, 0($4)
mult $1, $1
srlv $1, $1, $1
lui $2, 8
TAG155:
sll $0, $0, 0
and $4, $2, $2
mfhi $1
sll $0, $0, 0
TAG156:
subu $1, $4, $4
or $3, $4, $1
mult $3, $1
mthi $4
TAG157:
sll $3, $3, 11
mult $3, $3
mfhi $2
divu $3, $2
TAG158:
mfhi $3
bltz $3, TAG159
sll $0, $0, 0
mthi $3
TAG159:
mult $3, $3
bltz $3, TAG160
sllv $2, $3, $3
mtlo $2
TAG160:
lui $2, 6
sll $0, $0, 0
bne $2, $2, TAG161
sll $1, $2, 14
TAG161:
addiu $4, $1, 7
slt $3, $4, $1
mflo $4
ori $3, $4, 10
TAG162:
div $3, $3
lui $2, 3
lui $4, 15
beq $2, $4, TAG163
TAG163:
ori $4, $4, 10
lui $4, 8
multu $4, $4
sll $0, $0, 0
TAG164:
ori $2, $1, 0
sll $0, $0, 0
bgtz $2, TAG165
mthi $1
TAG165:
sll $0, $0, 0
lui $1, 2
sll $2, $1, 13
andi $3, $2, 15
TAG166:
lbu $2, 0($3)
addu $1, $3, $3
beq $3, $3, TAG167
sb $3, 0($2)
TAG167:
slt $3, $1, $1
multu $1, $1
sra $1, $1, 14
lui $4, 5
TAG168:
multu $4, $4
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG169:
divu $1, $1
bne $1, $1, TAG170
divu $1, $1
sb $1, 0($1)
TAG170:
mflo $3
sb $1, 0($3)
mfhi $1
mfhi $4
TAG171:
mfhi $4
or $4, $4, $4
mfhi $3
bgez $4, TAG172
TAG172:
sb $3, 0($3)
mthi $3
mfhi $3
mflo $4
TAG173:
sb $4, 0($4)
or $4, $4, $4
lbu $1, 0($4)
blez $4, TAG174
TAG174:
sb $1, 0($1)
divu $1, $1
multu $1, $1
lb $1, 0($1)
TAG175:
mthi $1
nor $3, $1, $1
srlv $3, $3, $1
sll $0, $0, 0
TAG176:
sll $0, $0, 0
mthi $3
lui $1, 11
div $3, $3
TAG177:
sll $0, $0, 0
mtlo $4
srlv $4, $1, $1
mflo $3
TAG178:
mtlo $3
sb $3, 0($3)
mult $3, $3
mflo $4
TAG179:
div $4, $4
divu $4, $4
beq $4, $4, TAG180
lb $4, 0($4)
TAG180:
bgez $4, TAG181
lui $1, 15
srlv $2, $1, $4
lui $1, 5
TAG181:
bne $1, $1, TAG182
mult $1, $1
xori $1, $1, 12
sll $0, $0, 0
TAG182:
xor $1, $3, $3
xor $3, $3, $1
xor $4, $1, $1
and $2, $3, $4
TAG183:
mult $2, $2
lui $4, 9
srlv $1, $2, $2
mfhi $2
TAG184:
mthi $2
beq $2, $2, TAG185
multu $2, $2
lb $2, 0($2)
TAG185:
bne $2, $2, TAG186
addi $1, $2, 13
beq $2, $1, TAG186
slti $2, $2, 8
TAG186:
sll $3, $2, 12
mthi $3
mfhi $2
sw $3, -4096($2)
TAG187:
bltz $2, TAG188
sll $1, $2, 9
srl $2, $1, 11
sh $2, -1024($2)
TAG188:
mult $2, $2
mflo $3
mfhi $1
beq $2, $2, TAG189
TAG189:
lb $3, 0($1)
bne $3, $3, TAG190
mthi $1
bgez $1, TAG190
TAG190:
multu $3, $3
bne $3, $3, TAG191
mfhi $3
sltu $1, $3, $3
TAG191:
bltz $1, TAG192
xor $2, $1, $1
mfhi $4
lui $2, 10
TAG192:
bltz $2, TAG193
lui $2, 1
sltu $4, $2, $2
sll $0, $0, 0
TAG193:
bgez $4, TAG194
lb $4, 0($4)
lui $4, 11
bgez $4, TAG194
TAG194:
or $3, $4, $4
beq $4, $3, TAG195
sb $4, 0($4)
mtlo $4
TAG195:
xori $3, $3, 11
xor $2, $3, $3
mtlo $3
sb $3, 0($3)
TAG196:
lbu $3, 0($2)
bgez $3, TAG197
mthi $3
beq $3, $2, TAG197
TAG197:
lh $3, 0($3)
mthi $3
andi $2, $3, 4
mtlo $2
TAG198:
mthi $2
sb $2, 0($2)
bgtz $2, TAG199
mflo $4
TAG199:
blez $4, TAG200
mtlo $4
mtlo $4
sll $3, $4, 8
TAG200:
sll $0, $0, 0
sh $3, -1024($3)
lbu $4, -1024($3)
mflo $4
TAG201:
blez $4, TAG202
sltu $3, $4, $4
blez $3, TAG202
lui $3, 8
TAG202:
addu $4, $3, $3
bltz $3, TAG203
sub $4, $3, $3
mtlo $3
TAG203:
ori $2, $4, 5
bgtz $2, TAG204
divu $2, $2
divu $4, $2
TAG204:
lui $2, 9
bne $2, $2, TAG205
mult $2, $2
beq $2, $2, TAG205
TAG205:
sll $0, $0, 0
lui $4, 8
multu $1, $1
mthi $2
TAG206:
sll $0, $0, 0
and $1, $4, $4
subu $4, $1, $4
sw $1, 0($4)
TAG207:
sw $4, 0($4)
bgez $4, TAG208
sw $4, 0($4)
lui $1, 10
TAG208:
bne $1, $1, TAG209
mthi $1
mtlo $1
mtlo $1
TAG209:
ori $3, $1, 13
beq $1, $3, TAG210
mflo $1
sltiu $2, $1, 15
TAG210:
mthi $2
xor $2, $2, $2
bgtz $2, TAG211
mfhi $2
TAG211:
lui $2, 9
bne $2, $2, TAG212
mult $2, $2
mult $2, $2
TAG212:
bne $2, $2, TAG213
mtlo $2
mthi $2
mfhi $4
TAG213:
mthi $4
mult $4, $4
mult $4, $4
divu $4, $4
TAG214:
bltz $4, TAG215
subu $1, $4, $4
lui $3, 15
mtlo $1
TAG215:
sll $0, $0, 0
lui $3, 7
div $3, $3
srlv $2, $3, $3
TAG216:
multu $2, $2
sll $0, $0, 0
mthi $2
mfhi $1
TAG217:
bne $1, $1, TAG218
lui $2, 9
mflo $4
mtlo $2
TAG218:
beq $4, $4, TAG219
sb $4, 0($4)
addi $4, $4, 12
mtlo $4
TAG219:
mfhi $1
bne $4, $4, TAG220
mtlo $1
lui $2, 3
TAG220:
srlv $3, $2, $2
lui $2, 7
lui $4, 7
bne $2, $2, TAG221
TAG221:
sll $0, $0, 0
bltz $4, TAG222
sll $0, $0, 0
bltz $4, TAG222
TAG222:
sll $0, $0, 0
bne $1, $1, TAG223
lui $1, 13
mfhi $3
TAG223:
lui $4, 4
bne $4, $3, TAG224
lui $2, 3
bgez $3, TAG224
TAG224:
multu $2, $2
bne $2, $2, TAG225
mult $2, $2
sll $0, $0, 0
TAG225:
mtlo $3
mflo $4
bgtz $4, TAG226
mtlo $4
TAG226:
sllv $1, $4, $4
mfhi $2
lbu $3, 0($2)
lui $2, 4
TAG227:
div $2, $2
lui $1, 3
bltz $2, TAG228
mtlo $2
TAG228:
sll $0, $0, 0
div $2, $2
slt $4, $2, $2
sll $0, $0, 0
TAG229:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG230
divu $2, $2
TAG230:
srlv $4, $2, $2
sll $0, $0, 0
bne $4, $4, TAG231
mtlo $2
TAG231:
mthi $4
lui $4, 1
mfhi $1
bne $4, $4, TAG232
TAG232:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $4
addiu $2, $4, 5
TAG233:
srl $1, $2, 4
divu $2, $1
mflo $4
xor $4, $4, $1
TAG234:
bne $4, $4, TAG235
lui $2, 3
div $4, $4
lui $1, 1
TAG235:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG236
sll $0, $0, 0
TAG236:
lui $3, 2
bne $4, $3, TAG237
mfhi $2
bltz $4, TAG237
TAG237:
lbu $1, 0($2)
mthi $2
mthi $2
lb $1, 0($2)
TAG238:
slti $1, $1, 13
mflo $3
beq $1, $1, TAG239
lb $3, 0($1)
TAG239:
lui $2, 12
mflo $3
beq $3, $3, TAG240
slti $2, $3, 7
TAG240:
mtlo $2
lui $4, 15
sra $3, $4, 7
div $2, $4
TAG241:
beq $3, $3, TAG242
sra $4, $3, 7
sb $3, 0($3)
bgtz $3, TAG242
TAG242:
xori $2, $4, 6
blez $2, TAG243
addiu $2, $4, 2
sltiu $4, $2, 7
TAG243:
lh $4, 0($4)
bgez $4, TAG244
mult $4, $4
lw $1, 0($4)
TAG244:
beq $1, $1, TAG245
lb $2, 0($1)
lb $2, 0($2)
bne $2, $2, TAG245
TAG245:
sw $2, 0($2)
lb $3, 0($2)
mtlo $3
sb $2, 0($2)
TAG246:
addu $1, $3, $3
lbu $3, 0($1)
sh $3, 0($3)
lui $1, 4
TAG247:
bne $1, $1, TAG248
sll $0, $0, 0
xor $2, $4, $4
mflo $2
TAG248:
mthi $2
sb $2, 0($2)
bgez $2, TAG249
andi $3, $2, 11
TAG249:
bgez $3, TAG250
mult $3, $3
sra $1, $3, 8
lw $4, 0($1)
TAG250:
bne $4, $4, TAG251
mult $4, $4
mtlo $4
bltz $4, TAG251
TAG251:
lhu $3, 0($4)
blez $3, TAG252
lui $3, 13
sw $3, 0($3)
TAG252:
mthi $3
sll $0, $0, 0
bltz $3, TAG253
mfhi $2
TAG253:
srl $3, $2, 3
sra $3, $3, 15
beq $3, $3, TAG254
sra $1, $2, 2
TAG254:
multu $1, $1
mtlo $1
sll $0, $0, 0
sra $3, $1, 13
TAG255:
divu $3, $3
lui $1, 2
sll $0, $0, 0
mult $3, $3
TAG256:
srlv $1, $1, $1
lui $1, 11
bne $1, $1, TAG257
lui $4, 14
TAG257:
sll $0, $0, 0
or $4, $4, $4
div $4, $4
slt $1, $4, $4
TAG258:
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
TAG259:
sll $0, $0, 0
beq $1, $1, TAG260
sra $1, $1, 13
sw $1, 0($1)
TAG260:
multu $1, $1
mflo $4
sltu $1, $1, $1
lhu $3, 0($4)
TAG261:
mfhi $2
bgtz $3, TAG262
lui $1, 1
addiu $1, $1, 6
TAG262:
srav $4, $1, $1
mflo $1
xori $3, $1, 2
mthi $1
TAG263:
beq $3, $3, TAG264
mflo $4
add $4, $4, $4
lw $2, 0($4)
TAG264:
mult $2, $2
mult $2, $2
addu $1, $2, $2
lhu $4, 0($1)
TAG265:
beq $4, $4, TAG266
mthi $4
bltz $4, TAG266
srl $2, $4, 3
TAG266:
lhu $2, 0($2)
mflo $1
xor $3, $2, $2
sh $3, 0($3)
TAG267:
slt $2, $3, $3
ori $3, $2, 1
lb $1, 0($3)
beq $2, $1, TAG268
TAG268:
multu $1, $1
lh $2, 0($1)
sb $2, 0($1)
mfhi $4
TAG269:
sltiu $3, $4, 5
ori $3, $4, 0
mthi $4
mtlo $3
TAG270:
sb $3, 0($3)
nor $2, $3, $3
mthi $2
beq $2, $2, TAG271
TAG271:
mthi $2
mtlo $2
sw $2, 1($2)
lui $4, 8
TAG272:
mthi $4
div $4, $4
div $4, $4
mthi $4
TAG273:
sll $0, $0, 0
blez $4, TAG274
sll $0, $0, 0
bgez $4, TAG274
TAG274:
mthi $4
lui $3, 1
multu $3, $3
beq $4, $4, TAG275
TAG275:
sltiu $2, $3, 9
beq $2, $2, TAG276
multu $3, $3
mthi $3
TAG276:
sw $2, 0($2)
multu $2, $2
sllv $4, $2, $2
lbu $3, 0($2)
TAG277:
lw $3, 0($3)
bne $3, $3, TAG278
sh $3, 0($3)
mthi $3
TAG278:
mthi $3
subu $3, $3, $3
lui $2, 11
lui $1, 2
TAG279:
sll $0, $0, 0
sra $3, $1, 10
addu $4, $3, $1
lui $4, 1
TAG280:
subu $1, $4, $4
blez $4, TAG281
sllv $4, $1, $4
bltz $4, TAG281
TAG281:
lw $4, 0($4)
mtlo $4
nor $4, $4, $4
mfhi $4
TAG282:
lui $1, 2
mtlo $1
mfhi $1
sb $1, 0($1)
TAG283:
lui $2, 14
sll $0, $0, 0
lb $2, 0($1)
mtlo $1
TAG284:
sb $2, 0($2)
mtlo $2
lw $2, 0($2)
bne $2, $2, TAG285
TAG285:
and $3, $2, $2
slt $2, $3, $2
mfhi $3
mthi $2
TAG286:
lb $1, 0($3)
srl $4, $3, 13
mthi $4
bne $3, $3, TAG287
TAG287:
mtlo $4
lhu $1, 0($4)
mult $4, $4
bne $1, $1, TAG288
TAG288:
lb $4, 0($1)
lui $1, 8
xori $4, $1, 1
srlv $1, $1, $1
TAG289:
mult $1, $1
lui $1, 2
mtlo $1
beq $1, $1, TAG290
TAG290:
multu $1, $1
xor $3, $1, $1
mfhi $2
beq $2, $3, TAG291
TAG291:
lh $3, 0($2)
bltz $3, TAG292
addiu $1, $2, 4
srav $1, $1, $1
TAG292:
lhu $4, 0($1)
blez $4, TAG293
addiu $2, $1, 0
sb $2, 0($2)
TAG293:
mthi $2
lw $4, 0($2)
mflo $3
sra $3, $2, 11
TAG294:
lhu $1, 0($3)
mfhi $2
addu $4, $3, $2
lh $4, 0($1)
TAG295:
bgez $4, TAG296
mult $4, $4
addiu $3, $4, 15
sw $4, 0($4)
TAG296:
srav $3, $3, $3
subu $2, $3, $3
sltu $4, $3, $3
mtlo $3
TAG297:
sll $2, $4, 4
bne $4, $4, TAG298
mthi $2
lui $4, 2
TAG298:
mflo $4
sh $4, 0($4)
sltu $1, $4, $4
bne $4, $1, TAG299
TAG299:
lbu $4, 0($1)
mthi $1
sub $4, $1, $4
lui $2, 4
TAG300:
mthi $2
sll $0, $0, 0
mtlo $2
mflo $3
TAG301:
sll $4, $3, 4
mthi $4
blez $4, TAG302
lui $2, 11
TAG302:
mthi $2
nor $3, $2, $2
bne $3, $3, TAG303
sltiu $3, $2, 9
TAG303:
mult $3, $3
mthi $3
bne $3, $3, TAG304
sllv $4, $3, $3
TAG304:
mtlo $4
ori $3, $4, 8
and $1, $3, $4
blez $3, TAG305
TAG305:
sw $1, 0($1)
mthi $1
lb $2, 0($1)
lw $2, 0($2)
TAG306:
andi $3, $2, 0
bgtz $2, TAG307
sh $3, 0($2)
sw $2, 0($3)
TAG307:
sb $3, 0($3)
bgez $3, TAG308
mult $3, $3
srav $4, $3, $3
TAG308:
lhu $1, 0($4)
sh $4, 0($1)
lhu $3, 0($4)
addu $1, $3, $1
TAG309:
mult $1, $1
slt $1, $1, $1
sb $1, 0($1)
lw $2, 0($1)
TAG310:
sll $3, $2, 14
slti $4, $2, 9
lui $4, 6
bltz $2, TAG311
TAG311:
lui $1, 10
lui $1, 7
sll $0, $0, 0
mult $4, $4
TAG312:
mthi $3
bgez $3, TAG313
sh $3, 0($3)
bgtz $3, TAG313
TAG313:
sw $3, 0($3)
lbu $2, 0($3)
lui $2, 14
addu $2, $2, $2
TAG314:
divu $2, $2
srav $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG315:
sll $0, $0, 0
mthi $1
sltiu $3, $1, 13
mfhi $2
TAG316:
mthi $2
sltiu $3, $2, 7
sllv $2, $2, $2
mult $3, $3
TAG317:
lui $1, 15
lui $4, 12
mtlo $2
addiu $4, $2, 13
TAG318:
sltiu $3, $4, 12
slti $4, $4, 6
mtlo $3
lui $3, 9
TAG319:
mult $3, $3
mthi $3
bne $3, $3, TAG320
mfhi $1
TAG320:
sll $0, $0, 0
beq $1, $1, TAG321
sltiu $2, $1, 14
mthi $2
TAG321:
lui $2, 11
mthi $2
div $2, $2
sll $0, $0, 0
TAG322:
add $4, $4, $4
mtlo $4
bltz $4, TAG323
add $4, $4, $4
TAG323:
bne $4, $4, TAG324
lw $1, 0($4)
beq $1, $1, TAG324
mflo $1
TAG324:
lb $4, 0($1)
bltz $4, TAG325
lbu $2, 0($4)
lh $4, 0($1)
TAG325:
andi $1, $4, 15
addu $4, $4, $1
beq $1, $4, TAG326
lui $1, 11
TAG326:
mthi $1
bgtz $1, TAG327
lui $1, 0
mthi $1
TAG327:
mult $1, $1
beq $1, $1, TAG328
lui $1, 4
lui $4, 0
TAG328:
lui $1, 14
mtlo $4
bne $4, $4, TAG329
lh $3, 0($4)
TAG329:
bltz $3, TAG330
xor $3, $3, $3
sltiu $2, $3, 9
bltz $3, TAG330
TAG330:
sb $2, 0($2)
bgez $2, TAG331
sltiu $3, $2, 5
sw $3, 0($3)
TAG331:
mtlo $3
sb $3, 0($3)
bne $3, $3, TAG332
multu $3, $3
TAG332:
mult $3, $3
lbu $1, 0($3)
mthi $3
mflo $2
TAG333:
sb $2, 0($2)
addu $4, $2, $2
sb $4, 0($4)
lb $3, 0($2)
TAG334:
bgez $3, TAG335
lui $4, 9
mflo $4
srav $1, $4, $4
TAG335:
sltu $4, $1, $1
lui $1, 1
mtlo $1
andi $1, $4, 4
TAG336:
slti $2, $1, 0
sll $2, $2, 7
lbu $4, 0($2)
bltz $1, TAG337
TAG337:
mtlo $4
mtlo $4
beq $4, $4, TAG338
multu $4, $4
TAG338:
srav $1, $4, $4
addu $4, $1, $1
sh $4, 0($4)
lui $4, 0
TAG339:
sltiu $2, $4, 7
mflo $1
mfhi $2
lh $3, 0($1)
TAG340:
bgtz $3, TAG341
lh $2, 0($3)
bne $3, $3, TAG341
mthi $2
TAG341:
multu $2, $2
lui $1, 8
sltiu $2, $2, 4
addiu $2, $1, 10
TAG342:
srlv $1, $2, $2
bgez $2, TAG343
mfhi $1
lui $2, 11
TAG343:
sll $0, $0, 0
beq $2, $2, TAG344
multu $2, $2
blez $2, TAG344
TAG344:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG345
TAG345:
ori $3, $2, 3
sll $0, $0, 0
lui $3, 14
bgez $3, TAG346
TAG346:
mtlo $3
ori $2, $3, 15
sll $0, $0, 0
xor $3, $2, $4
TAG347:
addu $4, $3, $3
lui $1, 4
multu $3, $1
sll $1, $3, 5
TAG348:
mthi $1
lui $1, 3
addu $1, $1, $1
or $2, $1, $1
TAG349:
mtlo $2
mtlo $2
mthi $2
sll $0, $0, 0
TAG350:
beq $3, $3, TAG351
mthi $3
bne $3, $3, TAG351
mthi $3
TAG351:
mfhi $2
mflo $3
lui $2, 10
sltu $4, $2, $3
TAG352:
mthi $4
mtlo $4
bltz $4, TAG353
addu $2, $4, $4
TAG353:
mthi $2
beq $2, $2, TAG354
mfhi $1
div $1, $1
TAG354:
andi $1, $1, 10
multu $1, $1
lb $2, 0($1)
mfhi $4
TAG355:
mflo $1
mflo $3
lbu $4, 0($4)
mfhi $1
TAG356:
multu $1, $1
bne $1, $1, TAG357
srav $2, $1, $1
mthi $1
TAG357:
xori $4, $2, 10
lui $1, 14
bltz $4, TAG358
mflo $4
TAG358:
mult $4, $4
mfhi $1
mult $4, $1
sh $1, 0($4)
TAG359:
lw $3, 0($1)
lui $2, 7
xor $2, $3, $1
bgtz $1, TAG360
TAG360:
ori $1, $2, 5
slt $2, $2, $2
addiu $4, $2, 1
sw $2, 0($2)
TAG361:
lb $1, 0($4)
mult $1, $1
lui $2, 6
sll $1, $4, 12
TAG362:
sw $1, -4096($1)
bltz $1, TAG363
mfhi $3
mthi $1
TAG363:
multu $3, $3
mthi $3
sra $2, $3, 7
lhu $2, 0($3)
TAG364:
addu $1, $2, $2
mtlo $2
lui $3, 13
sll $0, $0, 0
TAG365:
mfhi $4
bne $4, $4, TAG366
lhu $1, 0($4)
mtlo $2
TAG366:
bgtz $1, TAG367
lui $3, 5
sb $3, 0($3)
bgez $3, TAG367
TAG367:
sra $2, $3, 1
bgez $3, TAG368
mflo $1
mtlo $3
TAG368:
sb $1, -4096($1)
mtlo $1
mthi $1
lbu $2, -4096($1)
TAG369:
bgez $2, TAG370
lhu $2, 0($2)
sh $2, 0($2)
sll $1, $2, 0
TAG370:
addiu $1, $1, 8
bgtz $1, TAG371
sh $1, -4104($1)
blez $1, TAG371
TAG371:
xori $2, $1, 5
sh $2, -4104($1)
mult $2, $2
sw $2, -4109($2)
TAG372:
sb $2, -4109($2)
mflo $4
mthi $4
mult $2, $4
TAG373:
bgez $4, TAG374
subu $1, $4, $4
bgtz $1, TAG374
mfhi $4
TAG374:
sll $0, $0, 0
lui $3, 11
lui $3, 14
sll $0, $0, 0
TAG375:
sllv $3, $1, $1
bgtz $1, TAG376
multu $1, $3
mtlo $3
TAG376:
sb $3, 0($3)
bgez $3, TAG377
mtlo $3
mult $3, $3
TAG377:
lui $4, 11
addi $4, $3, 5
sh $4, 0($3)
bltz $4, TAG378
TAG378:
mtlo $4
lui $2, 4
beq $4, $4, TAG379
addiu $1, $4, 10
TAG379:
xori $2, $1, 7
mtlo $2
bgtz $2, TAG380
addu $1, $1, $2
TAG380:
or $3, $1, $1
bltz $1, TAG381
div $3, $3
mfhi $3
TAG381:
and $3, $3, $3
bgez $3, TAG382
lui $2, 0
sb $2, 0($3)
TAG382:
mtlo $2
multu $2, $2
lb $3, 0($2)
multu $3, $2
TAG383:
div $3, $3
bgtz $3, TAG384
lbu $1, 0($3)
sltu $1, $1, $1
TAG384:
mtlo $1
mult $1, $1
mfhi $2
lui $2, 9
TAG385:
mult $2, $2
sltiu $2, $2, 6
srlv $1, $2, $2
mflo $4
TAG386:
lw $2, 0($4)
bltz $2, TAG387
and $4, $4, $2
slt $3, $2, $4
TAG387:
bne $3, $3, TAG388
sw $3, 0($3)
lhu $3, 0($3)
bne $3, $3, TAG388
TAG388:
mult $3, $3
lb $3, 0($3)
mfhi $4
sb $3, 0($3)
TAG389:
xori $4, $4, 2
addiu $1, $4, 6
bne $4, $4, TAG390
mthi $4
TAG390:
mfhi $2
divu $1, $1
ori $2, $2, 11
sra $4, $2, 6
TAG391:
mflo $1
lui $1, 9
sll $0, $0, 0
bne $4, $4, TAG392
TAG392:
sll $0, $0, 0
mthi $1
divu $1, $1
sll $0, $0, 0
TAG393:
subu $3, $1, $1
beq $1, $1, TAG394
lui $2, 15
ori $3, $1, 3
TAG394:
beq $3, $3, TAG395
add $3, $3, $3
andi $1, $3, 0
lui $3, 1
TAG395:
xor $2, $3, $3
addiu $2, $2, 3
addu $1, $2, $2
bgez $2, TAG396
TAG396:
xori $4, $1, 2
mflo $1
lb $4, 0($1)
bne $1, $4, TAG397
TAG397:
mthi $4
andi $4, $4, 8
lui $3, 10
bne $3, $3, TAG398
TAG398:
mfhi $4
sll $0, $0, 0
mflo $3
divu $3, $2
TAG399:
lb $1, 0($3)
mflo $1
mfhi $3
or $1, $1, $1
TAG400:
beq $1, $1, TAG401
mfhi $1
sw $1, 0($1)
xor $1, $1, $1
TAG401:
bgez $1, TAG402
sb $1, 0($1)
mfhi $3
mflo $4
TAG402:
sb $4, 0($4)
sh $4, 0($4)
bltz $4, TAG403
mult $4, $4
TAG403:
sw $4, 0($4)
mflo $1
lui $3, 11
lui $1, 6
TAG404:
srav $3, $1, $1
sll $0, $0, 0
beq $1, $1, TAG405
mthi $1
TAG405:
mult $1, $1
beq $1, $1, TAG406
slt $2, $1, $1
bne $1, $1, TAG406
TAG406:
mult $2, $2
sw $2, 0($2)
sh $2, 0($2)
lui $1, 12
TAG407:
lui $3, 11
multu $3, $3
div $1, $1
ori $1, $1, 1
TAG408:
ori $4, $1, 10
and $2, $1, $4
beq $4, $4, TAG409
mthi $2
TAG409:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
beq $1, $1, TAG410
TAG410:
sll $0, $0, 0
lui $3, 6
sll $0, $0, 0
ori $2, $1, 15
TAG411:
lui $1, 5
mthi $2
sll $0, $0, 0
sra $1, $2, 2
TAG412:
multu $1, $1
sll $0, $0, 0
lui $3, 0
lui $3, 0
TAG413:
bltz $3, TAG414
lh $2, 0($3)
addi $1, $2, 9
mfhi $1
TAG414:
lui $1, 14
sllv $2, $1, $1
beq $1, $1, TAG415
lui $2, 10
TAG415:
bgez $2, TAG416
lui $1, 8
srav $3, $2, $2
lui $2, 0
TAG416:
andi $4, $2, 3
lhu $3, 0($4)
or $1, $4, $2
addiu $1, $4, 3
TAG417:
mthi $1
sllv $1, $1, $1
sh $1, 0($1)
multu $1, $1
TAG418:
sb $1, 0($1)
bltz $1, TAG419
mtlo $1
lw $1, 0($1)
TAG419:
mfhi $1
mthi $1
srlv $2, $1, $1
lhu $1, 0($2)
TAG420:
mflo $2
bgtz $1, TAG421
lui $1, 13
divu $1, $2
TAG421:
sra $1, $1, 5
bne $1, $1, TAG422
sh $1, -26624($1)
beq $1, $1, TAG422
TAG422:
lui $3, 15
multu $1, $1
sh $1, -26624($1)
sh $3, -26624($1)
TAG423:
divu $3, $3
mfhi $3
sw $3, 0($3)
mult $3, $3
TAG424:
mfhi $2
srl $3, $2, 5
multu $3, $3
addiu $2, $2, 10
TAG425:
lhu $4, 0($2)
lbu $1, 0($2)
mfhi $1
sub $3, $1, $1
TAG426:
mtlo $3
mflo $2
bne $2, $2, TAG427
ori $2, $3, 1
TAG427:
sllv $4, $2, $2
addu $3, $4, $4
mfhi $3
bgtz $2, TAG428
TAG428:
mfhi $4
mflo $2
addiu $3, $3, 1
beq $2, $3, TAG429
TAG429:
mthi $3
lui $4, 9
blez $4, TAG430
mult $4, $4
TAG430:
sll $0, $0, 0
beq $4, $4, TAG431
mfhi $1
sub $4, $1, $1
TAG431:
addu $1, $4, $4
srl $2, $4, 8
divu $2, $2
mthi $2
TAG432:
lui $4, 15
subu $4, $4, $4
bne $4, $4, TAG433
lh $2, 0($4)
TAG433:
mflo $1
mthi $2
multu $2, $2
sb $1, 0($1)
TAG434:
srl $1, $1, 15
lw $2, 0($1)
lhu $3, 0($1)
mfhi $1
TAG435:
beq $1, $1, TAG436
sh $1, 0($1)
sh $1, 0($1)
divu $1, $1
TAG436:
lhu $1, 0($1)
sh $1, 0($1)
lbu $1, 0($1)
bne $1, $1, TAG437
TAG437:
nor $1, $1, $1
sltiu $2, $1, 6
beq $2, $1, TAG438
sra $2, $1, 4
TAG438:
mflo $1
mflo $2
sw $2, 0($2)
nor $1, $1, $2
TAG439:
mtlo $1
lb $2, 1($1)
mflo $1
sb $1, 1($1)
TAG440:
and $2, $1, $1
bgtz $1, TAG441
lw $3, 1($1)
sra $3, $2, 9
TAG441:
mfhi $2
lui $2, 5
mtlo $2
lui $1, 10
TAG442:
mult $1, $1
lui $4, 14
sll $0, $0, 0
andi $4, $1, 4
TAG443:
xor $3, $4, $4
sh $4, 0($4)
bne $3, $4, TAG444
mfhi $4
TAG444:
or $1, $4, $4
slt $2, $4, $1
multu $2, $2
lui $3, 0
TAG445:
mthi $3
sllv $1, $3, $3
bne $1, $3, TAG446
or $2, $1, $1
TAG446:
multu $2, $2
lui $4, 14
bne $4, $4, TAG447
mtlo $2
TAG447:
andi $1, $4, 11
srlv $3, $4, $4
andi $2, $3, 7
srlv $1, $4, $1
TAG448:
addu $3, $1, $1
mthi $1
addiu $3, $3, 8
bne $3, $3, TAG449
TAG449:
sll $0, $0, 0
lui $3, 9
lh $2, 0($2)
lui $3, 0
TAG450:
mtlo $3
bgez $3, TAG451
slt $1, $3, $3
lb $2, 0($3)
TAG451:
mult $2, $2
bltz $2, TAG452
andi $2, $2, 0
multu $2, $2
TAG452:
mfhi $3
multu $2, $3
bne $2, $3, TAG453
mfhi $2
TAG453:
lui $3, 11
sll $0, $0, 0
bgez $3, TAG454
subu $3, $2, $2
TAG454:
andi $1, $3, 13
mfhi $1
mflo $2
lhu $2, 0($1)
TAG455:
bne $2, $2, TAG456
nor $2, $2, $2
bne $2, $2, TAG456
lb $4, 1($2)
TAG456:
lb $3, 0($4)
sra $4, $3, 0
lui $4, 9
lui $4, 14
TAG457:
mthi $4
sll $0, $0, 0
bgtz $4, TAG458
sll $0, $0, 0
TAG458:
bltz $2, TAG459
srl $3, $2, 15
lw $2, 0($2)
blez $2, TAG459
TAG459:
andi $1, $2, 12
divu $1, $2
beq $1, $1, TAG460
lui $3, 1
TAG460:
mflo $2
lui $1, 9
bgtz $1, TAG461
mflo $2
TAG461:
mthi $2
mflo $2
multu $2, $2
bne $2, $2, TAG462
TAG462:
mflo $3
mtlo $2
multu $2, $2
mthi $3
TAG463:
bgez $3, TAG464
lh $1, 0($3)
xori $4, $1, 1
mtlo $3
TAG464:
divu $4, $4
sll $0, $0, 0
divu $4, $4
divu $4, $4
TAG465:
bne $4, $4, TAG466
mtlo $4
slti $1, $4, 1
andi $1, $4, 7
TAG466:
mult $1, $1
mult $1, $1
mflo $2
lhu $1, 0($1)
TAG467:
srav $1, $1, $1
bne $1, $1, TAG468
slt $2, $1, $1
beq $2, $1, TAG468
TAG468:
sw $2, 0($2)
lbu $4, 0($2)
lui $2, 11
sra $1, $2, 8
TAG469:
multu $1, $1
lbu $1, -2816($1)
lui $1, 0
lui $3, 3
TAG470:
mfhi $2
sll $0, $0, 0
srav $3, $3, $2
mflo $2
TAG471:
bne $2, $2, TAG472
or $3, $2, $2
sll $0, $0, 0
mthi $2
TAG472:
mtlo $3
div $3, $3
mthi $3
beq $3, $3, TAG473
TAG473:
mflo $4
lui $3, 3
lb $4, 0($4)
slt $3, $4, $3
TAG474:
mfhi $1
sb $1, 0($3)
lbu $4, 0($3)
blez $3, TAG475
TAG475:
lui $1, 4
xor $1, $1, $4
bne $1, $1, TAG476
andi $1, $1, 14
TAG476:
bltz $1, TAG477
mthi $1
mtlo $1
mtlo $1
TAG477:
lw $2, 0($1)
multu $1, $1
mthi $2
lb $3, 0($2)
TAG478:
blez $3, TAG479
or $3, $3, $3
sw $3, 0($3)
sh $3, 0($3)
TAG479:
sb $3, 0($3)
bgtz $3, TAG480
mult $3, $3
sw $3, 0($3)
TAG480:
lui $2, 13
lui $4, 9
blez $3, TAG481
lbu $4, 0($3)
TAG481:
sub $3, $4, $4
mthi $4
sb $3, 0($3)
multu $3, $4
TAG482:
sb $3, 0($3)
lui $1, 4
mflo $3
sh $3, 0($3)
TAG483:
bgtz $3, TAG484
mult $3, $3
lbu $3, 0($3)
bgez $3, TAG484
TAG484:
sllv $4, $3, $3
mfhi $2
bgez $2, TAG485
subu $1, $3, $4
TAG485:
mult $1, $1
slti $3, $1, 14
mult $1, $1
mthi $3
TAG486:
sll $2, $3, 8
lui $3, 0
sw $2, -256($2)
sw $3, -256($2)
TAG487:
multu $3, $3
sh $3, 0($3)
mfhi $3
sh $3, 0($3)
TAG488:
mult $3, $3
blez $3, TAG489
sh $3, 0($3)
mfhi $3
TAG489:
addi $1, $3, 7
beq $1, $1, TAG490
lui $2, 14
mflo $1
TAG490:
lui $2, 4
mult $2, $2
xori $3, $1, 14
sll $0, $0, 0
TAG491:
addiu $1, $3, 10
sb $3, 0($1)
bgtz $1, TAG492
lb $4, 0($3)
TAG492:
sb $4, 0($4)
mult $4, $4
mfhi $1
mtlo $1
TAG493:
lui $1, 6
sll $0, $0, 0
sll $0, $0, 0
lui $1, 4
TAG494:
sll $0, $0, 0
mtlo $1
div $1, $1
sll $0, $0, 0
TAG495:
lui $3, 6
mtlo $3
blez $1, TAG496
mfhi $1
TAG496:
lui $3, 7
sll $0, $0, 0
bne $3, $1, TAG497
and $2, $1, $1
TAG497:
subu $2, $2, $2
multu $2, $2
mfhi $4
mfhi $1
TAG498:
mult $1, $1
andi $3, $1, 4
mflo $4
beq $4, $1, TAG499
TAG499:
lbu $4, 0($4)
blez $4, TAG500
srav $3, $4, $4
multu $4, $4
TAG500:
lbu $2, 0($3)
multu $3, $2
mult $2, $3
mfhi $2
TAG501:
sltiu $1, $2, 11
blez $2, TAG502
mtlo $2
mtlo $1
TAG502:
mfhi $4
bgtz $1, TAG503
mthi $4
lui $3, 7
TAG503:
sh $3, 0($3)
lb $1, 0($3)
sltiu $1, $1, 5
subu $3, $3, $1
TAG504:
lui $4, 12
beq $3, $3, TAG505
lui $2, 14
lui $3, 14
TAG505:
sb $3, 1($3)
multu $3, $3
mflo $1
sra $4, $1, 6
TAG506:
lb $3, 0($4)
blez $4, TAG507
sw $4, 0($4)
mfhi $4
TAG507:
bne $4, $4, TAG508
mtlo $4
beq $4, $4, TAG508
lui $2, 14
TAG508:
mtlo $2
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG509
TAG509:
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
srav $3, $2, $3
TAG510:
sll $0, $0, 0
blez $3, TAG511
lui $3, 0
xori $2, $3, 6
TAG511:
div $2, $2
lhu $3, 0($2)
sh $2, 0($2)
mtlo $2
TAG512:
mfhi $1
xor $3, $1, $1
bne $3, $3, TAG513
subu $4, $3, $3
TAG513:
bgtz $4, TAG514
slti $4, $4, 9
subu $3, $4, $4
sllv $3, $3, $3
TAG514:
mfhi $4
sub $4, $4, $4
bne $4, $4, TAG515
sb $4, 0($4)
TAG515:
bgtz $4, TAG516
mfhi $1
multu $1, $4
mthi $1
TAG516:
mult $1, $1
mtlo $1
sub $1, $1, $1
mtlo $1
TAG517:
nor $1, $1, $1
bne $1, $1, TAG518
lui $3, 14
mflo $2
TAG518:
blez $2, TAG519
sub $3, $2, $2
mtlo $3
and $1, $3, $2
TAG519:
divu $1, $1
srlv $2, $1, $1
bltz $2, TAG520
sb $1, 0($2)
TAG520:
sb $2, 0($2)
and $4, $2, $2
mtlo $4
lbu $1, 0($2)
TAG521:
multu $1, $1
srlv $1, $1, $1
mtlo $1
lui $3, 3
TAG522:
divu $3, $3
bgez $3, TAG523
mult $3, $3
sw $3, 0($3)
TAG523:
xori $1, $3, 9
srlv $2, $1, $1
srav $4, $1, $1
sll $0, $0, 0
TAG524:
andi $1, $4, 0
lhu $3, 0($1)
mtlo $3
lui $4, 11
TAG525:
mfhi $1
srl $4, $4, 5
lui $3, 1
bne $4, $4, TAG526
TAG526:
mflo $2
sh $3, -256($2)
bgtz $3, TAG527
mtlo $2
TAG527:
bne $2, $2, TAG528
lh $1, -256($2)
lb $1, 0($1)
sb $1, 0($1)
TAG528:
mtlo $1
mult $1, $1
bne $1, $1, TAG529
mfhi $3
TAG529:
lhu $2, 0($3)
lui $4, 8
bgtz $3, TAG530
sltiu $2, $4, 13
TAG530:
lui $3, 0
mult $2, $3
lhu $4, 0($3)
mult $4, $4
TAG531:
lbu $4, 0($4)
sh $4, 0($4)
srav $2, $4, $4
bne $4, $4, TAG532
TAG532:
sw $2, 0($2)
mfhi $4
lh $4, 0($4)
mfhi $1
TAG533:
sltu $3, $1, $1
bne $1, $3, TAG534
andi $3, $3, 3
sb $3, 0($1)
TAG534:
slt $2, $3, $3
sb $3, 0($3)
mult $3, $2
lb $4, 0($3)
TAG535:
sra $4, $4, 4
mfhi $1
lui $1, 11
sw $1, 0($4)
TAG536:
mtlo $1
bltz $1, TAG537
mfhi $2
lui $4, 13
TAG537:
sll $0, $0, 0
lui $2, 8
mflo $1
lui $3, 6
TAG538:
mfhi $4
sll $0, $0, 0
mflo $3
xor $4, $1, $1
TAG539:
mtlo $4
sh $4, 0($4)
sh $4, 0($4)
lui $1, 3
TAG540:
lui $2, 2
addu $4, $2, $2
beq $2, $4, TAG541
sll $0, $0, 0
TAG541:
mflo $1
bgez $1, TAG542
mtlo $4
mtlo $1
TAG542:
mfhi $3
mthi $1
mfhi $2
multu $2, $1
TAG543:
sb $2, 0($2)
mthi $2
lui $3, 3
beq $3, $2, TAG544
TAG544:
multu $3, $3
mthi $3
sll $0, $0, 0
beq $1, $3, TAG545
TAG545:
lui $4, 12
mtlo $1
bne $1, $1, TAG546
subu $1, $1, $1
TAG546:
mflo $4
bne $1, $1, TAG547
sw $1, 0($1)
mtlo $4
TAG547:
mthi $4
lbu $1, 0($4)
multu $4, $1
mfhi $4
TAG548:
lui $1, 15
mtlo $4
sll $0, $0, 0
lui $1, 4
TAG549:
nor $4, $1, $1
sll $0, $0, 0
bgez $3, TAG550
sll $0, $0, 0
TAG550:
divu $3, $3
mflo $3
mflo $3
mflo $1
TAG551:
lbu $4, 0($1)
sh $1, 0($4)
and $4, $1, $1
mfhi $1
TAG552:
multu $1, $1
mthi $1
lui $2, 2
mtlo $2
TAG553:
sll $3, $2, 11
sll $0, $0, 0
nor $2, $3, $3
xori $4, $2, 12
TAG554:
bgez $4, TAG555
sllv $4, $4, $4
xori $3, $4, 4
sll $0, $0, 0
TAG555:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 8
mthi $3
TAG556:
bne $3, $3, TAG557
divu $3, $3
lui $1, 10
beq $3, $1, TAG557
TAG557:
mflo $1
lui $3, 14
lbu $2, 0($1)
sltiu $1, $3, 15
TAG558:
subu $1, $1, $1
multu $1, $1
mthi $1
mfhi $3
TAG559:
subu $2, $3, $3
lw $3, 0($3)
mthi $3
mthi $3
TAG560:
and $1, $3, $3
bne $1, $3, TAG561
lb $3, 0($1)
mtlo $3
TAG561:
lui $2, 13
sltiu $1, $2, 2
lui $4, 15
multu $1, $1
TAG562:
blez $4, TAG563
divu $4, $4
beq $4, $4, TAG563
srav $4, $4, $4
TAG563:
mthi $4
mflo $1
xor $3, $1, $4
sll $0, $0, 0
TAG564:
mthi $3
sltiu $1, $3, 13
sll $0, $0, 0
and $1, $4, $3
TAG565:
xori $3, $1, 0
sll $2, $1, 2
mflo $2
multu $2, $3
TAG566:
multu $2, $2
mflo $1
bltz $1, TAG567
mult $1, $1
TAG567:
mflo $1
mflo $1
lbu $2, 0($1)
lui $1, 7
TAG568:
mthi $1
bne $1, $1, TAG569
mflo $2
sb $1, 0($2)
TAG569:
bne $2, $2, TAG570
mtlo $2
beq $2, $2, TAG570
lui $2, 11
TAG570:
lui $3, 7
sll $0, $0, 0
andi $1, $2, 5
beq $2, $2, TAG571
TAG571:
addi $2, $1, 4
mult $1, $1
mfhi $2
sw $2, 0($2)
TAG572:
srl $4, $2, 3
mflo $3
multu $2, $3
bne $4, $2, TAG573
TAG573:
mfhi $4
sub $1, $4, $3
add $3, $1, $1
bne $4, $3, TAG574
TAG574:
multu $3, $3
bgtz $3, TAG575
mthi $3
sltu $1, $3, $3
TAG575:
bgtz $1, TAG576
mthi $1
sb $1, 0($1)
blez $1, TAG576
TAG576:
mflo $3
addu $1, $3, $3
lui $1, 14
beq $3, $1, TAG577
TAG577:
sll $0, $0, 0
mult $1, $1
mtlo $1
bgez $1, TAG578
TAG578:
mult $3, $3
lui $3, 4
beq $3, $3, TAG579
mult $3, $3
TAG579:
divu $3, $3
sll $0, $0, 0
or $4, $3, $3
mult $4, $3
TAG580:
srav $4, $4, $4
sll $0, $0, 0
beq $4, $4, TAG581
mfhi $1
TAG581:
bne $1, $1, TAG582
lui $4, 3
divu $4, $1
lui $1, 14
TAG582:
sll $0, $0, 0
beq $2, $2, TAG583
lhu $1, 0($2)
mfhi $1
TAG583:
srlv $4, $1, $1
blez $4, TAG584
mtlo $4
sra $2, $1, 0
TAG584:
lui $2, 15
beq $2, $2, TAG585
sll $0, $0, 0
bne $2, $2, TAG585
TAG585:
addiu $2, $2, 8
multu $2, $2
lui $3, 4
mtlo $2
TAG586:
bgtz $3, TAG587
mthi $3
bgez $3, TAG587
mflo $2
TAG587:
multu $2, $2
lui $2, 14
bltz $2, TAG588
sll $3, $2, 5
TAG588:
beq $3, $3, TAG589
div $3, $3
divu $3, $3
lui $2, 7
TAG589:
sra $1, $2, 6
mtlo $1
lui $4, 14
nor $2, $2, $4
TAG590:
mflo $1
multu $2, $2
mflo $2
multu $2, $2
TAG591:
divu $2, $2
mfhi $3
and $4, $3, $3
sb $2, 0($4)
TAG592:
addiu $4, $4, 13
beq $4, $4, TAG593
lb $4, 0($4)
bne $4, $4, TAG593
TAG593:
addi $2, $4, 0
multu $2, $4
beq $2, $4, TAG594
lui $2, 15
TAG594:
mtlo $2
bne $2, $2, TAG595
sll $0, $0, 0
mfhi $4
TAG595:
mult $4, $4
multu $4, $4
bne $4, $4, TAG596
srlv $1, $4, $4
TAG596:
srl $2, $1, 12
bltz $1, TAG597
mult $2, $2
xori $1, $1, 5
TAG597:
sb $1, 0($1)
lui $4, 4
mfhi $4
lh $3, 0($4)
TAG598:
sb $3, 0($3)
sra $1, $3, 9
mflo $4
bgtz $3, TAG599
TAG599:
lui $2, 13
mflo $1
mfhi $2
mflo $1
TAG600:
mflo $1
lb $1, 0($1)
sb $1, 0($1)
multu $1, $1
TAG601:
mflo $1
blez $1, TAG602
lui $2, 6
mthi $2
TAG602:
bgtz $2, TAG603
srl $4, $2, 0
lui $3, 15
srl $4, $3, 3
TAG603:
xor $2, $4, $4
multu $2, $2
mflo $2
lbu $3, 0($2)
TAG604:
lbu $4, 0($3)
mthi $3
sb $3, 0($3)
mfhi $2
TAG605:
mfhi $1
lui $1, 15
ori $1, $2, 11
bgez $1, TAG606
TAG606:
divu $1, $1
bltz $1, TAG607
mflo $3
mtlo $3
TAG607:
mthi $3
lbu $2, 0($3)
mfhi $2
xori $4, $2, 10
TAG608:
multu $4, $4
lui $2, 9
slt $4, $4, $2
subu $2, $4, $4
TAG609:
bltz $2, TAG610
multu $2, $2
bne $2, $2, TAG610
mult $2, $2
TAG610:
addiu $3, $2, 10
mflo $1
sw $1, 0($2)
lhu $4, 0($2)
TAG611:
sub $4, $4, $4
bgez $4, TAG612
lh $3, 0($4)
bgez $4, TAG612
TAG612:
lui $2, 15
mthi $2
slt $1, $2, $2
div $3, $2
TAG613:
bne $1, $1, TAG614
mult $1, $1
mult $1, $1
multu $1, $1
TAG614:
lui $4, 6
bne $4, $1, TAG615
mfhi $3
slti $3, $4, 7
TAG615:
lb $3, 0($3)
multu $3, $3
addi $1, $3, 4
srlv $1, $3, $3
TAG616:
sll $3, $1, 10
srl $4, $1, 5
bgez $1, TAG617
lhu $2, 0($3)
TAG617:
slt $4, $2, $2
bgtz $2, TAG618
nor $2, $2, $4
beq $2, $2, TAG618
TAG618:
sltu $1, $2, $2
mtlo $1
mfhi $1
sw $1, 0($1)
TAG619:
lui $1, 0
srlv $3, $1, $1
sb $3, 0($3)
beq $1, $3, TAG620
TAG620:
slt $2, $3, $3
sw $3, 0($2)
sh $2, 0($2)
bltz $2, TAG621
TAG621:
lbu $2, 0($2)
srav $1, $2, $2
lhu $4, 0($2)
lui $4, 7
TAG622:
mfhi $2
blez $4, TAG623
mult $2, $2
lui $1, 13
TAG623:
bgtz $1, TAG624
lui $1, 7
addu $1, $1, $1
sb $1, 0($1)
TAG624:
divu $1, $1
lui $3, 10
lui $3, 9
mfhi $3
TAG625:
sb $3, 0($3)
slt $1, $3, $3
lhu $1, 0($1)
lui $1, 10
TAG626:
sll $0, $0, 0
mtlo $2
xori $4, $1, 11
xori $4, $1, 6
TAG627:
lui $1, 4
srlv $3, $4, $1
lui $1, 9
bltz $1, TAG628
TAG628:
lui $1, 4
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
TAG629:
sll $4, $3, 7
sb $4, 0($3)
xor $1, $4, $3
addu $4, $4, $1
TAG630:
sh $4, 0($4)
mflo $2
sh $2, 0($2)
beq $4, $4, TAG631
TAG631:
sw $2, 0($2)
bne $2, $2, TAG632
lw $1, 0($2)
mtlo $1
TAG632:
lui $3, 13
multu $3, $3
lui $2, 13
divu $1, $3
TAG633:
bne $2, $2, TAG634
sll $0, $0, 0
mthi $2
bgez $2, TAG634
TAG634:
mthi $2
div $2, $2
sll $0, $0, 0
mflo $2
TAG635:
sb $2, 0($2)
lui $1, 7
sb $1, 0($2)
mthi $1
TAG636:
mthi $1
sll $0, $0, 0
blez $1, TAG637
mthi $1
TAG637:
mthi $1
xor $4, $1, $1
mtlo $1
bne $1, $1, TAG638
TAG638:
mthi $4
beq $4, $4, TAG639
mflo $3
bgtz $3, TAG639
TAG639:
lui $3, 13
subu $3, $3, $3
mflo $2
slti $1, $3, 15
TAG640:
lb $1, 0($1)
and $3, $1, $1
bne $1, $1, TAG641
multu $1, $1
TAG641:
lw $1, 0($3)
sw $3, 0($3)
mthi $1
mult $1, $1
TAG642:
blez $1, TAG643
sh $1, 0($1)
mthi $1
bne $1, $1, TAG643
TAG643:
mtlo $1
lui $1, 10
bne $1, $1, TAG644
sll $0, $0, 0
TAG644:
sra $2, $4, 7
sw $2, 0($2)
lui $1, 12
mfhi $3
TAG645:
multu $3, $3
andi $3, $3, 1
mtlo $3
lui $3, 0
TAG646:
subu $2, $3, $3
add $3, $2, $2
lw $2, 0($3)
lhu $1, 0($3)
TAG647:
sb $1, 0($1)
mult $1, $1
sh $1, 0($1)
slti $1, $1, 1
TAG648:
sb $1, 0($1)
mflo $3
subu $3, $1, $1
sltu $4, $1, $3
TAG649:
bgtz $4, TAG650
mtlo $4
multu $4, $4
slt $4, $4, $4
TAG650:
bgtz $4, TAG651
mflo $3
bgez $4, TAG651
sll $3, $4, 7
TAG651:
addu $3, $3, $3
mult $3, $3
lui $4, 1
sh $3, 0($3)
TAG652:
beq $4, $4, TAG653
mfhi $1
bne $1, $4, TAG653
lh $4, 0($1)
TAG653:
bgtz $4, TAG654
lui $4, 15
xor $4, $4, $4
mflo $2
TAG654:
bltz $2, TAG655
mthi $2
sb $2, 0($2)
mflo $1
TAG655:
bne $1, $1, TAG656
lui $1, 12
addu $3, $1, $1
divu $1, $1
TAG656:
bgez $3, TAG657
sll $0, $0, 0
bgtz $2, TAG657
mflo $1
TAG657:
bgez $1, TAG658
sll $0, $0, 0
lbu $2, 0($1)
lui $4, 2
TAG658:
divu $4, $4
srav $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG659:
mthi $4
mtlo $4
mthi $4
lui $4, 0
TAG660:
bgez $4, TAG661
mtlo $4
sll $4, $4, 7
bne $4, $4, TAG661
TAG661:
mfhi $1
addiu $2, $1, 13
divu $2, $2
sll $1, $2, 13
TAG662:
multu $1, $1
mtlo $1
mtlo $1
xori $3, $1, 11
TAG663:
divu $3, $3
beq $3, $3, TAG664
lui $3, 14
lb $4, 0($3)
TAG664:
lw $1, 0($4)
multu $1, $1
mfhi $2
xori $3, $2, 13
TAG665:
bne $3, $3, TAG666
multu $3, $3
bne $3, $3, TAG666
divu $3, $3
TAG666:
bne $3, $3, TAG667
divu $3, $3
bne $3, $3, TAG667
xori $1, $3, 3
TAG667:
lh $4, 0($1)
mflo $3
mthi $1
addu $3, $4, $3
TAG668:
divu $3, $3
bltz $3, TAG669
sb $3, 0($3)
bltz $3, TAG669
TAG669:
mflo $2
mthi $2
lb $3, 0($3)
lui $1, 14
TAG670:
mfhi $3
sll $0, $0, 0
mtlo $3
blez $2, TAG671
TAG671:
addu $4, $2, $2
bne $2, $2, TAG672
mtlo $2
sltiu $3, $2, 3
TAG672:
lui $4, 10
sltu $1, $4, $3
sll $0, $0, 0
mtlo $3
TAG673:
mthi $1
mflo $2
slt $2, $2, $1
subu $3, $1, $2
TAG674:
lb $2, 0($3)
sb $2, 0($2)
or $4, $3, $3
mthi $4
TAG675:
beq $4, $4, TAG676
mult $4, $4
bgez $4, TAG676
mtlo $4
TAG676:
lb $3, 0($4)
andi $1, $4, 2
mtlo $4
srl $4, $1, 12
TAG677:
mflo $1
lb $4, 0($1)
beq $4, $1, TAG678
xor $3, $1, $4
TAG678:
lbu $2, 0($3)
lb $2, 0($3)
mfhi $4
andi $1, $2, 15
TAG679:
mtlo $1
lui $1, 0
bne $1, $1, TAG680
lui $2, 10
TAG680:
mtlo $2
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG681:
addu $4, $2, $2
div $2, $4
sll $0, $0, 0
sll $0, $0, 0
TAG682:
lui $1, 6
lui $3, 8
lui $1, 15
sll $0, $0, 0
TAG683:
mfhi $1
sll $0, $0, 0
lui $4, 0
sra $1, $2, 12
TAG684:
sll $0, $0, 0
mthi $1
mult $1, $1
or $3, $1, $1
TAG685:
mult $3, $3
addu $3, $3, $3
blez $3, TAG686
mflo $4
TAG686:
sll $0, $0, 0
bgtz $4, TAG687
srlv $4, $4, $4
mtlo $4
TAG687:
mflo $1
lh $3, -25600($1)
div $4, $4
bne $4, $3, TAG688
TAG688:
andi $4, $3, 11
and $1, $4, $4
bltz $1, TAG689
sw $1, 0($3)
TAG689:
mthi $1
lb $2, 0($1)
bltz $2, TAG690
and $3, $1, $1
TAG690:
addu $3, $3, $3
mfhi $4
srl $1, $4, 10
bne $4, $3, TAG691
TAG691:
lui $1, 13
xori $3, $1, 10
sll $0, $0, 0
xori $1, $3, 11
TAG692:
bne $1, $1, TAG693
mfhi $4
sh $4, 0($4)
sw $4, 0($4)
TAG693:
lui $2, 14
lui $4, 0
addi $2, $4, 1
lbu $3, 0($4)
TAG694:
sltu $1, $3, $3
lui $2, 0
srav $1, $1, $2
sh $2, 0($1)
TAG695:
beq $1, $1, TAG696
sw $1, 0($1)
slt $2, $1, $1
sh $1, 0($1)
TAG696:
mtlo $2
mflo $2
lbu $2, 0($2)
mult $2, $2
TAG697:
lbu $2, 0($2)
sw $2, 0($2)
addi $2, $2, 12
sb $2, 0($2)
TAG698:
srav $4, $2, $2
slti $4, $4, 3
mflo $3
mthi $3
TAG699:
mtlo $3
sw $3, 0($3)
lbu $2, 0($3)
lui $3, 12
TAG700:
ori $1, $3, 14
bne $3, $1, TAG701
sll $0, $0, 0
nor $4, $1, $3
TAG701:
sb $4, 0($4)
mult $4, $4
lbu $3, 0($4)
and $2, $3, $3
TAG702:
sb $2, 0($2)
mult $2, $2
lb $4, 0($2)
beq $2, $4, TAG703
TAG703:
lbu $1, 0($4)
lb $1, 0($1)
sb $4, 0($1)
lui $3, 7
TAG704:
sll $0, $0, 0
sll $0, $0, 0
lbu $4, 0($1)
mtlo $1
TAG705:
slti $4, $4, 14
divu $4, $4
or $4, $4, $4
lbu $3, 0($4)
TAG706:
mtlo $3
mthi $3
mtlo $3
beq $3, $3, TAG707
TAG707:
divu $3, $3
lbu $3, 0($3)
sb $3, 0($3)
mtlo $3
TAG708:
sra $3, $3, 5
mfhi $1
mtlo $3
sub $2, $3, $3
TAG709:
multu $2, $2
mfhi $2
lhu $3, 0($2)
xori $4, $2, 9
TAG710:
sb $4, 0($4)
or $4, $4, $4
sb $4, 0($4)
nor $3, $4, $4
TAG711:
lui $1, 12
bne $3, $1, TAG712
or $2, $1, $3
subu $4, $1, $1
TAG712:
mthi $4
lbu $2, 0($4)
addu $1, $4, $4
sllv $1, $2, $2
TAG713:
ori $2, $1, 5
lui $4, 12
lui $4, 4
sll $0, $0, 0
TAG714:
lui $3, 3
sb $2, -4613($2)
mfhi $4
mthi $3
TAG715:
mfhi $2
lb $3, 0($4)
bgez $2, TAG716
div $2, $3
TAG716:
bne $3, $3, TAG717
lb $2, 0($3)
beq $3, $3, TAG717
sra $4, $3, 2
TAG717:
lbu $2, 0($4)
mfhi $4
or $3, $2, $4
mult $4, $2
TAG718:
addu $2, $3, $3
lui $4, 2
mfhi $2
mtlo $3
TAG719:
blez $2, TAG720
lh $4, 0($2)
beq $4, $4, TAG720
sb $2, 0($2)
TAG720:
mthi $4
div $4, $4
lb $4, -261($4)
lui $3, 7
TAG721:
bgez $3, TAG722
sll $0, $0, 0
mthi $3
div $3, $3
TAG722:
lui $2, 5
sll $0, $0, 0
mflo $1
bgtz $2, TAG723
TAG723:
mflo $4
sltiu $4, $4, 10
mthi $4
bltz $1, TAG724
TAG724:
lui $3, 6
mfhi $1
bne $1, $1, TAG725
sll $0, $0, 0
TAG725:
srlv $4, $1, $1
blez $4, TAG726
mthi $4
add $3, $1, $1
TAG726:
bgtz $3, TAG727
xori $1, $3, 2
beq $1, $3, TAG727
lui $2, 8
TAG727:
blez $2, TAG728
sll $0, $0, 0
sra $1, $2, 4
sh $2, -20480($1)
TAG728:
bgez $1, TAG729
lui $1, 2
sw $1, 0($1)
lui $2, 10
TAG729:
mthi $2
bltz $2, TAG730
lui $3, 11
sll $0, $0, 0
TAG730:
addiu $1, $3, 7
sll $0, $0, 0
beq $2, $2, TAG731
mflo $3
TAG731:
lui $1, 6
blez $1, TAG732
mflo $3
mfhi $2
TAG732:
addu $4, $2, $2
lui $3, 3
mflo $3
sb $2, 0($3)
TAG733:
sb $3, 0($3)
nor $2, $3, $3
lhu $4, 2($2)
beq $2, $2, TAG734
TAG734:
divu $4, $4
multu $4, $4
blez $4, TAG735
multu $4, $4
TAG735:
mfhi $1
addu $3, $4, $1
lui $1, 4
sll $0, $0, 0
TAG736:
bltz $1, TAG737
mthi $1
addu $4, $1, $1
sll $0, $0, 0
TAG737:
lui $2, 12
bne $3, $2, TAG738
sll $0, $0, 0
andi $1, $2, 10
TAG738:
mthi $1
addiu $3, $1, 1
mfhi $4
sll $0, $0, 0
TAG739:
div $1, $1
lui $2, 13
sll $0, $0, 0
bgez $2, TAG740
TAG740:
sll $0, $0, 0
sll $0, $0, 0
slti $4, $4, 14
addi $1, $4, 12
TAG741:
bne $1, $1, TAG742
subu $2, $1, $1
lbu $1, 0($1)
mfhi $2
TAG742:
beq $2, $2, TAG743
sub $2, $2, $2
div $2, $2
lui $2, 11
TAG743:
mfhi $1
multu $1, $2
addu $4, $1, $1
lui $1, 0
TAG744:
sltiu $3, $1, 6
mfhi $3
lw $1, 0($3)
sltiu $3, $3, 7
TAG745:
lbu $4, 0($3)
div $4, $4
mflo $2
mfhi $1
TAG746:
lui $3, 9
mtlo $3
mult $3, $1
sllv $1, $1, $3
TAG747:
lui $3, 9
multu $3, $3
slt $3, $3, $1
sb $3, 0($1)
TAG748:
lw $4, 0($3)
lui $3, 5
mthi $3
sll $0, $0, 0
TAG749:
lui $3, 12
sll $1, $3, 2
mthi $3
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop