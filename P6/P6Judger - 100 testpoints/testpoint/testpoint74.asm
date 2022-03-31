ori $1, $0, 14
ori $2, $0, 0
ori $3, $0, 7
ori $4, $0, 7
sw $3, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $4, 36($0)
sw $4, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $2, 84($0)
sw $3, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $4, 124($0)
bgez $2, TAG1
multu $2, $2
sltiu $4, $2, 10
bne $4, $4, TAG1
TAG1:
lbu $2, 0($4)
and $2, $2, $2
multu $2, $2
div $2, $4
TAG2:
blez $2, TAG3
multu $2, $2
ori $2, $2, 2
andi $1, $2, 4
TAG3:
xori $3, $1, 2
lui $3, 6
blez $1, TAG4
div $3, $3
TAG4:
mtlo $3
lui $3, 3
lui $4, 11
mtlo $3
TAG5:
mthi $4
sltiu $4, $4, 6
mthi $4
lui $1, 1
TAG6:
slt $3, $1, $1
andi $1, $3, 14
mtlo $1
multu $3, $1
TAG7:
mthi $1
lhu $1, 0($1)
blez $1, TAG8
sb $1, 0($1)
TAG8:
beq $1, $1, TAG9
lbu $2, 0($1)
slt $1, $1, $1
lui $1, 10
TAG9:
beq $1, $1, TAG10
mflo $1
lh $3, 0($1)
bgtz $3, TAG10
TAG10:
sltiu $3, $3, 14
srav $2, $3, $3
lb $4, 0($3)
lui $1, 13
TAG11:
xori $4, $1, 0
lui $2, 6
mfhi $1
lui $1, 11
TAG12:
mflo $1
bne $1, $1, TAG13
mult $1, $1
lui $2, 2
TAG13:
lui $2, 2
sra $3, $2, 6
beq $3, $2, TAG14
lui $3, 0
TAG14:
mflo $4
add $3, $4, $4
lbu $3, 0($3)
mthi $4
TAG15:
srlv $3, $3, $3
mult $3, $3
mflo $2
blez $2, TAG16
TAG16:
slt $2, $2, $2
mfhi $4
lw $2, 0($4)
mult $4, $2
TAG17:
addiu $3, $2, 10
mflo $1
lhu $3, 0($1)
multu $1, $3
TAG18:
blez $3, TAG19
div $3, $3
lb $3, 0($3)
mflo $3
TAG19:
sb $3, 0($3)
srlv $3, $3, $3
mult $3, $3
bne $3, $3, TAG20
TAG20:
slti $4, $3, 1
bne $4, $3, TAG21
sb $3, 0($4)
add $1, $4, $4
TAG21:
addiu $3, $1, 8
mtlo $3
lui $1, 14
bne $1, $1, TAG22
TAG22:
sll $0, $0, 0
mult $2, $1
sb $1, 0($2)
addiu $3, $2, 1
TAG23:
lui $3, 9
bne $3, $3, TAG24
divu $3, $3
sra $2, $3, 8
TAG24:
blez $2, TAG25
sltiu $3, $2, 0
multu $3, $3
or $3, $3, $3
TAG25:
sh $3, 0($3)
mult $3, $3
addiu $2, $3, 15
mfhi $2
TAG26:
nor $4, $2, $2
mfhi $1
bne $4, $1, TAG27
lh $4, 1($4)
TAG27:
sltu $4, $4, $4
mtlo $4
lh $1, 0($4)
mflo $3
TAG28:
bgtz $3, TAG29
and $2, $3, $3
mflo $1
lw $3, 0($2)
TAG29:
mult $3, $3
mthi $3
andi $3, $3, 13
sra $4, $3, 5
TAG30:
mflo $1
multu $4, $4
lui $4, 13
mult $1, $1
TAG31:
and $2, $4, $4
mthi $2
sra $3, $2, 5
blez $3, TAG32
TAG32:
addiu $4, $3, 13
div $3, $3
mthi $3
addiu $2, $3, 6
TAG33:
addiu $1, $2, 8
div $1, $2
sllv $2, $2, $1
mflo $2
TAG34:
sb $2, 0($2)
lui $2, 12
mtlo $2
mult $2, $2
TAG35:
lui $2, 12
mflo $4
div $2, $2
sll $0, $0, 0
TAG36:
mflo $2
mflo $3
lui $2, 13
lbu $1, 0($3)
TAG37:
mtlo $1
lbu $2, 0($1)
mflo $1
sb $2, 0($1)
TAG38:
mtlo $1
addiu $4, $1, 15
bne $4, $1, TAG39
divu $1, $1
TAG39:
div $4, $4
lbu $2, 0($4)
div $4, $2
addiu $2, $4, 3
TAG40:
slti $4, $2, 3
lui $4, 12
sll $0, $0, 0
bne $4, $4, TAG41
TAG41:
sltiu $4, $4, 9
bne $4, $4, TAG42
mfhi $4
lb $4, 0($4)
TAG42:
mthi $4
mult $4, $4
lb $4, 0($4)
lui $4, 2
TAG43:
subu $3, $4, $4
bltz $3, TAG44
lhu $2, 0($3)
bgtz $4, TAG44
TAG44:
xor $1, $2, $2
mult $2, $1
sw $1, 0($1)
nor $4, $2, $2
TAG45:
sll $0, $0, 0
bltz $1, TAG46
subu $2, $4, $4
lh $4, 0($2)
TAG46:
bltz $4, TAG47
mflo $1
lui $2, 9
mfhi $3
TAG47:
sra $2, $3, 1
sh $2, 0($3)
lh $4, 0($3)
mult $4, $3
TAG48:
srl $4, $4, 5
bne $4, $4, TAG49
mthi $4
mfhi $2
TAG49:
mthi $2
and $4, $2, $2
lhu $2, 0($2)
sb $2, 0($2)
TAG50:
bltz $2, TAG51
lbu $2, 0($2)
beq $2, $2, TAG51
sb $2, 0($2)
TAG51:
sh $2, 0($2)
bne $2, $2, TAG52
or $3, $2, $2
beq $3, $3, TAG52
TAG52:
sh $3, 0($3)
slt $4, $3, $3
bne $3, $4, TAG53
sltiu $3, $3, 5
TAG53:
mthi $3
bne $3, $3, TAG54
mtlo $3
divu $3, $3
TAG54:
sb $3, 0($3)
multu $3, $3
mflo $2
sll $3, $2, 0
TAG55:
div $3, $3
sb $3, 0($3)
sb $3, 0($3)
beq $3, $3, TAG56
TAG56:
sb $3, 0($3)
lbu $3, 0($3)
and $3, $3, $3
lbu $2, 0($3)
TAG57:
mtlo $2
mfhi $2
mthi $2
sb $2, 0($2)
TAG58:
beq $2, $2, TAG59
sh $2, 0($2)
divu $2, $2
beq $2, $2, TAG59
TAG59:
lw $4, 0($2)
sllv $3, $4, $2
mult $3, $4
lui $4, 10
TAG60:
mthi $4
mflo $1
sltiu $3, $1, 11
bltz $4, TAG61
TAG61:
sb $3, 0($3)
bgtz $3, TAG62
lui $4, 10
div $4, $4
TAG62:
sll $0, $0, 0
bgez $4, TAG63
slti $3, $4, 2
lui $3, 2
TAG63:
mtlo $3
mthi $3
multu $3, $3
lw $1, 0($3)
TAG64:
andi $3, $1, 7
addu $2, $1, $1
sra $2, $1, 7
bne $3, $1, TAG65
TAG65:
nor $3, $2, $2
mthi $3
bgtz $3, TAG66
or $3, $2, $2
TAG66:
bgez $3, TAG67
addiu $4, $3, 11
addu $1, $4, $3
bgez $3, TAG67
TAG67:
sll $0, $0, 0
lh $4, -256($1)
sh $1, -256($1)
bne $1, $1, TAG68
TAG68:
mtlo $4
bltz $4, TAG69
lh $1, -256($4)
sw $4, -256($4)
TAG69:
sll $0, $0, 0
divu $1, $1
addu $4, $1, $1
subu $2, $4, $4
TAG70:
mfhi $2
lbu $3, 0($2)
addi $2, $3, 3
mthi $2
TAG71:
sra $2, $2, 1
lbu $2, 0($2)
lui $3, 14
mthi $3
TAG72:
addiu $3, $3, 15
mthi $3
mfhi $1
xor $2, $3, $3
TAG73:
lui $2, 0
ori $4, $2, 12
blez $4, TAG74
lb $2, 0($2)
TAG74:
sh $2, 0($2)
lhu $2, 0($2)
bltz $2, TAG75
andi $2, $2, 0
TAG75:
mflo $2
mtlo $2
lui $2, 11
lui $4, 4
TAG76:
multu $4, $4
sll $0, $0, 0
bgez $4, TAG77
sll $0, $0, 0
TAG77:
xori $3, $4, 4
bltz $3, TAG78
lui $2, 1
lui $3, 14
TAG78:
sll $0, $0, 0
blez $3, TAG79
lui $2, 7
and $3, $3, $2
TAG79:
sll $0, $0, 0
sll $0, $0, 0
srlv $2, $3, $2
bgtz $2, TAG80
TAG80:
addiu $2, $2, 2
multu $2, $2
bgez $2, TAG81
mthi $2
TAG81:
addiu $3, $2, 8
sll $2, $3, 10
mflo $3
lui $3, 11
TAG82:
mtlo $3
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG83:
lui $2, 15
lui $4, 5
mfhi $2
beq $2, $2, TAG84
TAG84:
or $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
div $3, $2
TAG85:
mtlo $3
multu $3, $3
bne $3, $3, TAG86
sll $0, $0, 0
TAG86:
xori $3, $3, 3
bne $3, $3, TAG87
sll $0, $0, 0
bgez $3, TAG87
TAG87:
div $4, $4
lui $1, 5
sltu $3, $1, $4
mfhi $4
TAG88:
bltz $4, TAG89
mthi $4
srlv $3, $4, $4
mthi $3
TAG89:
sw $3, 0($3)
multu $3, $3
blez $3, TAG90
slt $4, $3, $3
TAG90:
sw $4, 0($4)
bne $4, $4, TAG91
sh $4, 0($4)
lui $4, 0
TAG91:
addi $1, $4, 7
divu $1, $1
mflo $3
mflo $3
TAG92:
mthi $3
sll $2, $3, 1
sb $2, 0($3)
addu $2, $3, $3
TAG93:
bgtz $2, TAG94
mthi $2
lb $3, 0($2)
bltz $3, TAG94
TAG94:
lb $2, 0($3)
lbu $1, 0($3)
lui $2, 5
mfhi $4
TAG95:
xori $1, $4, 4
beq $1, $4, TAG96
ori $3, $4, 12
lui $1, 0
TAG96:
lhu $2, 0($1)
sltiu $4, $2, 8
ori $2, $1, 5
lw $1, 0($4)
TAG97:
mthi $1
sw $1, -512($1)
lui $4, 12
mflo $3
TAG98:
sb $3, 0($3)
bne $3, $3, TAG99
subu $4, $3, $3
beq $3, $4, TAG99
TAG99:
sh $4, 0($4)
sra $1, $4, 3
multu $1, $4
mfhi $2
TAG100:
lui $4, 8
lui $4, 6
lui $2, 8
sll $0, $0, 0
TAG101:
sll $0, $0, 0
mflo $3
mfhi $2
bne $3, $2, TAG102
TAG102:
srav $1, $2, $2
bne $1, $1, TAG103
mfhi $1
mthi $1
TAG103:
andi $1, $1, 15
sub $3, $1, $1
lui $4, 0
bgtz $3, TAG104
TAG104:
lhu $2, 0($4)
mflo $4
sw $2, 0($4)
sltiu $1, $4, 9
TAG105:
slt $2, $1, $1
lbu $4, 0($1)
or $1, $1, $4
mtlo $4
TAG106:
beq $1, $1, TAG107
lui $4, 10
beq $4, $1, TAG107
slt $3, $4, $4
TAG107:
mtlo $3
lui $3, 5
mtlo $3
addu $4, $3, $3
TAG108:
sll $0, $0, 0
subu $1, $3, $3
mthi $4
addiu $4, $4, 13
TAG109:
and $4, $4, $4
blez $4, TAG110
mfhi $3
sll $0, $0, 0
TAG110:
sllv $1, $4, $4
sll $0, $0, 0
multu $2, $2
mtlo $4
TAG111:
mult $2, $2
bltz $2, TAG112
lui $4, 3
slti $1, $4, 0
TAG112:
lbu $4, 0($1)
lui $1, 8
mthi $4
bne $1, $1, TAG113
TAG113:
sll $0, $0, 0
divu $1, $1
mtlo $1
subu $4, $4, $1
TAG114:
beq $4, $4, TAG115
mult $4, $4
sb $4, 0($4)
lui $1, 7
TAG115:
blez $1, TAG116
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG116:
multu $1, $1
bltz $1, TAG117
sll $0, $0, 0
bltz $1, TAG117
TAG117:
lui $4, 7
beq $1, $4, TAG118
multu $4, $1
mthi $4
TAG118:
bne $4, $4, TAG119
multu $4, $4
sll $0, $0, 0
bgez $4, TAG119
TAG119:
mtlo $4
mtlo $4
lui $2, 3
beq $4, $2, TAG120
TAG120:
sll $0, $0, 0
srl $4, $3, 7
lh $3, -5120($4)
bne $3, $2, TAG121
TAG121:
lhu $2, 0($3)
bne $3, $2, TAG122
mflo $2
sllv $1, $2, $3
TAG122:
mflo $2
mtlo $1
blez $2, TAG123
mfhi $4
TAG123:
lui $1, 3
bltz $1, TAG124
or $3, $4, $4
lui $4, 3
TAG124:
beq $4, $4, TAG125
sll $0, $0, 0
slti $2, $4, 1
sltiu $4, $2, 9
TAG125:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG126
sll $0, $0, 0
TAG126:
mtlo $4
mthi $4
mthi $4
sll $0, $0, 0
TAG127:
mflo $2
lui $2, 12
beq $4, $2, TAG128
sll $0, $0, 0
TAG128:
sll $0, $0, 0
sll $0, $0, 0
slt $2, $1, $1
bgez $1, TAG129
TAG129:
lw $4, 0($2)
slti $2, $2, 15
mtlo $2
bgtz $2, TAG130
TAG130:
sltu $2, $2, $2
lb $3, 0($2)
beq $2, $2, TAG131
mtlo $3
TAG131:
blez $3, TAG132
mthi $3
mflo $4
mult $3, $4
TAG132:
multu $4, $4
mflo $1
xori $2, $1, 10
lui $2, 12
TAG133:
sltiu $3, $2, 5
bltz $2, TAG134
mfhi $1
lui $1, 2
TAG134:
bltz $1, TAG135
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
TAG135:
mfhi $2
and $4, $2, $1
slt $4, $1, $1
bne $4, $4, TAG136
TAG136:
lw $3, 0($4)
bne $4, $3, TAG137
sra $3, $4, 13
lui $3, 15
TAG137:
mtlo $3
addu $2, $3, $3
sll $0, $0, 0
lui $3, 8
TAG138:
multu $3, $3
lui $1, 7
bgez $1, TAG139
div $3, $3
TAG139:
mflo $2
lbu $2, 0($2)
sra $1, $2, 15
mtlo $2
TAG140:
sb $1, 0($1)
lw $1, 0($1)
sh $1, 0($1)
mtlo $1
TAG141:
mflo $2
mfhi $2
sltiu $2, $2, 2
lui $4, 13
TAG142:
lui $2, 6
sll $0, $0, 0
addu $4, $2, $4
sll $0, $0, 0
TAG143:
bne $4, $4, TAG144
xori $4, $4, 4
bgtz $4, TAG144
sll $0, $0, 0
TAG144:
lbu $3, 0($1)
lhu $2, 0($3)
lh $2, 0($2)
mfhi $3
TAG145:
lh $4, 0($3)
lui $2, 11
lui $1, 6
addu $4, $1, $3
TAG146:
bltz $4, TAG147
or $2, $4, $4
lui $2, 9
lui $3, 6
TAG147:
lui $3, 4
multu $3, $3
bltz $3, TAG148
nor $4, $3, $3
TAG148:
bne $4, $4, TAG149
mflo $3
sll $0, $0, 0
sltu $4, $4, $3
TAG149:
lui $3, 7
mflo $4
bgtz $4, TAG150
mtlo $4
TAG150:
bltz $4, TAG151
xori $4, $4, 0
lh $2, 0($4)
mtlo $4
TAG151:
bltz $2, TAG152
sw $2, 0($2)
lui $2, 2
multu $2, $2
TAG152:
multu $2, $2
sll $0, $0, 0
beq $2, $2, TAG153
sll $0, $0, 0
TAG153:
lui $4, 6
addiu $4, $4, 1
sll $0, $0, 0
mflo $4
TAG154:
mtlo $4
mthi $4
lui $1, 5
mfhi $1
TAG155:
mult $1, $1
beq $1, $1, TAG156
andi $4, $1, 10
sltiu $4, $1, 12
TAG156:
ori $2, $4, 10
addi $3, $4, 6
bne $2, $4, TAG157
multu $3, $3
TAG157:
divu $3, $3
subu $3, $3, $3
sb $3, 0($3)
beq $3, $3, TAG158
TAG158:
srav $1, $3, $3
mtlo $1
mtlo $3
sb $1, 0($3)
TAG159:
bgez $1, TAG160
mult $1, $1
multu $1, $1
lhu $1, 0($1)
TAG160:
sh $1, 0($1)
blez $1, TAG161
sllv $4, $1, $1
bgtz $4, TAG161
TAG161:
mfhi $3
beq $4, $3, TAG162
mtlo $3
mfhi $3
TAG162:
lw $2, 0($3)
mthi $2
blez $3, TAG163
ori $3, $3, 7
TAG163:
mthi $3
div $3, $3
and $2, $3, $3
bltz $2, TAG164
TAG164:
lbu $2, 0($2)
ori $3, $2, 3
sltiu $1, $2, 11
sllv $1, $2, $2
TAG165:
bne $1, $1, TAG166
mthi $1
mflo $3
mflo $1
TAG166:
beq $1, $1, TAG167
lbu $4, 0($1)
mthi $4
mflo $3
TAG167:
bgez $3, TAG168
multu $3, $3
mtlo $3
addiu $4, $3, 14
TAG168:
bltz $4, TAG169
add $1, $4, $4
addi $3, $4, 15
multu $3, $4
TAG169:
div $3, $3
lui $2, 12
lb $1, 0($3)
sb $2, 0($3)
TAG170:
bgez $1, TAG171
and $3, $1, $1
bltz $1, TAG171
multu $1, $3
TAG171:
addiu $3, $3, 6
sh $3, 0($3)
lui $2, 2
lui $4, 12
TAG172:
and $2, $4, $4
sra $1, $4, 3
bltz $1, TAG173
sll $0, $0, 0
TAG173:
xori $1, $1, 14
sll $0, $0, 0
mthi $1
mflo $2
TAG174:
bne $2, $2, TAG175
sb $2, 0($2)
mflo $1
div $1, $1
TAG175:
sb $1, 0($1)
sb $1, 0($1)
sra $1, $1, 8
mfhi $4
TAG176:
srl $2, $4, 10
srav $4, $4, $2
multu $4, $4
sltiu $4, $4, 9
TAG177:
lui $4, 1
sll $0, $0, 0
lui $3, 2
multu $3, $3
TAG178:
sll $0, $0, 0
beq $3, $3, TAG179
sll $0, $0, 0
beq $3, $3, TAG179
TAG179:
lui $2, 7
sll $0, $0, 0
mfhi $2
srl $3, $2, 5
TAG180:
lb $4, 0($3)
beq $4, $3, TAG181
lui $3, 11
mflo $2
TAG181:
bgtz $2, TAG182
lui $4, 6
mthi $4
lhu $2, 0($2)
TAG182:
bgtz $2, TAG183
ori $2, $2, 1
blez $2, TAG183
lui $1, 4
TAG183:
lb $1, 0($1)
lui $3, 11
lhu $2, 0($1)
sll $0, $0, 0
TAG184:
and $2, $2, $2
mfhi $1
mtlo $2
lui $2, 10
TAG185:
ori $4, $2, 6
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG186:
bgez $4, TAG187
mfhi $1
bne $4, $1, TAG187
multu $4, $4
TAG187:
mfhi $2
bltz $1, TAG188
divu $1, $2
sll $0, $0, 0
TAG188:
mult $1, $1
addiu $1, $1, 10
mthi $1
sra $4, $1, 13
TAG189:
mtlo $4
mtlo $4
blez $4, TAG190
mtlo $4
TAG190:
lw $1, 0($4)
lb $1, 0($4)
mfhi $3
srl $1, $1, 10
TAG191:
bne $1, $1, TAG192
mthi $1
subu $2, $1, $1
mthi $2
TAG192:
mthi $2
blez $2, TAG193
addu $2, $2, $2
bne $2, $2, TAG193
TAG193:
sw $2, 0($2)
bgtz $2, TAG194
mthi $2
lb $1, 0($2)
TAG194:
multu $1, $1
mflo $1
beq $1, $1, TAG195
lhu $4, 0($1)
TAG195:
lui $2, 13
sh $2, 0($4)
bgez $2, TAG196
mthi $4
TAG196:
mflo $4
bne $4, $4, TAG197
sll $0, $0, 0
mfhi $4
TAG197:
lbu $2, 0($4)
lw $2, 0($4)
blez $4, TAG198
multu $2, $2
TAG198:
blez $2, TAG199
lui $1, 10
blez $2, TAG199
slti $1, $1, 2
TAG199:
mthi $1
div $1, $1
lui $3, 7
nor $1, $3, $3
TAG200:
lui $3, 9
mflo $1
slt $2, $3, $1
sll $0, $0, 0
TAG201:
mtlo $2
sb $2, 0($2)
bgtz $2, TAG202
sw $2, 0($2)
TAG202:
mtlo $2
lui $2, 5
sll $0, $0, 0
mthi $2
TAG203:
sll $0, $0, 0
bne $1, $2, TAG204
sll $1, $1, 0
sb $1, 0($1)
TAG204:
bgtz $1, TAG205
mfhi $2
mflo $4
sllv $2, $1, $1
TAG205:
lui $3, 8
mult $3, $2
mflo $3
srlv $3, $3, $2
TAG206:
bne $3, $3, TAG207
mult $3, $3
multu $3, $3
mthi $3
TAG207:
multu $3, $3
lui $4, 14
xori $1, $3, 2
lh $1, 0($1)
TAG208:
lui $4, 11
sh $4, 0($1)
bne $1, $1, TAG209
slti $4, $4, 1
TAG209:
lb $1, 0($4)
mult $4, $4
mthi $4
sh $1, 0($1)
TAG210:
lui $1, 6
addu $4, $1, $1
bne $1, $1, TAG211
lui $3, 5
TAG211:
srav $4, $3, $3
srl $2, $3, 6
mthi $2
sw $3, -5120($2)
TAG212:
mthi $2
lh $2, -5120($2)
bgtz $2, TAG213
lw $3, 0($2)
TAG213:
divu $3, $3
sll $0, $0, 0
beq $3, $3, TAG214
mult $3, $2
TAG214:
xor $1, $2, $2
lw $3, 0($2)
andi $1, $3, 0
multu $1, $3
TAG215:
mult $1, $1
sllv $2, $1, $1
sh $1, 0($1)
lui $1, 9
TAG216:
bltz $1, TAG217
mflo $1
lbu $3, 0($1)
mthi $1
TAG217:
bne $3, $3, TAG218
mtlo $3
beq $3, $3, TAG218
sb $3, 0($3)
TAG218:
slti $4, $3, 7
div $3, $4
bltz $3, TAG219
lui $4, 7
TAG219:
multu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG220:
andi $1, $3, 13
sltu $1, $3, $1
beq $3, $1, TAG221
add $1, $1, $3
TAG221:
lui $3, 7
srlv $1, $1, $1
sra $1, $1, 5
bltz $1, TAG222
TAG222:
sh $1, 0($1)
xori $3, $1, 7
bne $1, $1, TAG223
mthi $1
TAG223:
mflo $1
addu $1, $3, $3
lui $2, 14
sb $1, 0($3)
TAG224:
mthi $2
bgez $2, TAG225
sll $0, $0, 0
lw $4, 0($2)
TAG225:
mtlo $4
mfhi $1
bgtz $4, TAG226
mthi $4
TAG226:
xori $4, $1, 4
sll $0, $0, 0
lui $4, 11
sll $0, $0, 0
TAG227:
mflo $3
blez $4, TAG228
mfhi $1
bne $3, $4, TAG228
TAG228:
divu $1, $1
mult $1, $1
sll $0, $0, 0
srav $3, $1, $1
TAG229:
sltiu $2, $3, 9
lhu $3, 0($2)
sb $3, 0($3)
beq $2, $3, TAG230
TAG230:
sh $3, 0($3)
mthi $3
lb $4, 0($3)
mtlo $3
TAG231:
mult $4, $4
lhu $3, 0($4)
sllv $1, $3, $3
beq $4, $1, TAG232
TAG232:
lui $2, 1
mflo $1
sll $0, $0, 0
lw $2, 0($4)
TAG233:
mfhi $4
mflo $3
divu $3, $2
multu $4, $3
TAG234:
mfhi $2
blez $3, TAG235
sltiu $1, $3, 0
sub $2, $3, $3
TAG235:
sw $2, 0($2)
lui $3, 1
lui $3, 15
mult $3, $3
TAG236:
bgez $3, TAG237
sll $0, $0, 0
sub $3, $3, $3
lui $2, 6
TAG237:
multu $2, $2
addiu $4, $2, 6
nor $1, $2, $4
multu $1, $1
TAG238:
beq $1, $1, TAG239
xor $2, $1, $1
bltz $1, TAG239
div $2, $1
TAG239:
lui $3, 1
sh $2, 0($2)
add $1, $2, $3
mflo $3
TAG240:
multu $3, $3
mfhi $1
blez $1, TAG241
lh $4, 0($1)
TAG241:
xor $3, $4, $4
mflo $2
lui $3, 10
lh $4, 0($4)
TAG242:
lui $3, 0
srl $3, $4, 8
subu $2, $3, $3
mfhi $2
TAG243:
lui $4, 9
beq $2, $4, TAG244
sll $0, $0, 0
sll $1, $4, 11
TAG244:
lui $2, 4
lui $4, 9
mfhi $1
mflo $4
TAG245:
div $4, $4
bne $4, $4, TAG246
sb $4, -2401($4)
mfhi $3
TAG246:
bne $3, $3, TAG247
sw $3, 0($3)
mfhi $4
mthi $4
TAG247:
bltz $4, TAG248
subu $2, $4, $4
sllv $4, $4, $4
mfhi $3
TAG248:
sh $3, 0($3)
mflo $1
mtlo $3
bgtz $3, TAG249
TAG249:
mtlo $1
divu $1, $1
bne $1, $1, TAG250
mflo $3
TAG250:
mthi $3
mfhi $4
bne $3, $3, TAG251
lb $3, 0($4)
TAG251:
mtlo $3
multu $3, $3
bgez $3, TAG252
lui $4, 13
TAG252:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
sw $4, 0($2)
TAG253:
addi $1, $2, 10
bgez $2, TAG254
lui $4, 11
lb $1, 0($2)
TAG254:
lhu $4, 0($1)
addu $1, $4, $1
lui $1, 8
bltz $4, TAG255
TAG255:
sll $0, $0, 0
bne $1, $4, TAG256
sll $3, $1, 6
mflo $3
TAG256:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
addu $1, $4, $3
TAG257:
mfhi $3
lbu $2, -169($3)
sh $3, -169($3)
sll $3, $1, 12
TAG258:
blez $3, TAG259
mflo $1
bltz $1, TAG259
lui $1, 10
TAG259:
sll $0, $0, 0
slt $2, $1, $1
multu $2, $2
beq $2, $2, TAG260
TAG260:
mflo $2
andi $4, $2, 1
lui $1, 3
mfhi $1
TAG261:
mtlo $1
mult $1, $1
multu $1, $1
lb $1, 0($1)
TAG262:
mfhi $1
bgez $1, TAG263
ori $3, $1, 0
mthi $3
TAG263:
multu $3, $3
sra $4, $3, 3
subu $2, $3, $3
lhu $4, 0($4)
TAG264:
mfhi $3
mtlo $4
sb $3, 0($3)
mflo $3
TAG265:
blez $3, TAG266
divu $3, $3
ori $2, $3, 14
mtlo $3
TAG266:
sh $2, -175($2)
mflo $1
mthi $1
mfhi $2
TAG267:
divu $2, $2
mfhi $2
sw $2, 0($2)
sra $2, $2, 2
TAG268:
mult $2, $2
mthi $2
bne $2, $2, TAG269
sltu $3, $2, $2
TAG269:
bltz $3, TAG270
xori $2, $3, 5
blez $2, TAG270
lui $1, 11
TAG270:
sll $0, $0, 0
mflo $3
slti $4, $3, 12
mflo $1
TAG271:
mtlo $1
mtlo $1
mflo $3
mtlo $1
TAG272:
lbu $4, 0($3)
beq $4, $3, TAG273
srlv $4, $4, $3
lui $4, 13
TAG273:
mflo $4
mflo $4
sw $4, 0($4)
mtlo $4
TAG274:
lw $1, 0($4)
lbu $3, 0($4)
lui $3, 8
bne $3, $1, TAG275
TAG275:
lui $4, 7
ori $3, $4, 10
mthi $4
addiu $1, $3, 14
TAG276:
mult $1, $1
mfhi $4
blez $4, TAG277
mfhi $2
TAG277:
slti $1, $2, 0
mthi $1
sh $1, 0($1)
bgez $2, TAG278
TAG278:
sll $2, $1, 4
bne $2, $2, TAG279
lb $1, 0($1)
beq $1, $1, TAG279
TAG279:
sh $1, 0($1)
bgtz $1, TAG280
sw $1, 0($1)
lui $3, 13
TAG280:
beq $3, $3, TAG281
mtlo $3
lbu $1, 0($3)
mthi $1
TAG281:
sh $1, 0($1)
mtlo $1
bgez $1, TAG282
lh $2, 0($1)
TAG282:
sh $2, 0($2)
nor $1, $2, $2
beq $1, $1, TAG283
slt $2, $1, $2
TAG283:
mflo $1
lui $2, 15
mfhi $3
beq $3, $2, TAG284
TAG284:
ori $2, $3, 15
sltu $1, $3, $2
mtlo $3
beq $3, $1, TAG285
TAG285:
lui $2, 1
sb $2, 0($1)
mthi $1
lb $4, 0($1)
TAG286:
multu $4, $4
mthi $4
lhu $4, 0($4)
lui $4, 1
TAG287:
lui $1, 5
and $2, $4, $1
lui $2, 1
mfhi $1
TAG288:
lui $4, 7
bgtz $4, TAG289
sll $0, $0, 0
mflo $1
TAG289:
beq $1, $1, TAG290
sltiu $2, $1, 5
beq $1, $2, TAG290
subu $2, $1, $1
TAG290:
and $4, $2, $2
lb $3, 0($2)
lbu $4, 0($3)
sltu $4, $2, $4
TAG291:
lui $3, 3
or $3, $3, $3
lui $3, 0
lui $3, 1
TAG292:
div $3, $3
mthi $3
mtlo $3
bltz $3, TAG293
TAG293:
multu $3, $3
lui $1, 9
mult $1, $3
mtlo $1
TAG294:
lui $1, 2
blez $1, TAG295
mthi $1
addiu $1, $1, 2
TAG295:
sll $0, $0, 0
sltiu $4, $3, 1
mflo $2
xori $1, $3, 6
TAG296:
mthi $1
addu $1, $1, $1
xor $4, $1, $1
bne $4, $1, TAG297
TAG297:
lhu $2, 0($4)
slt $1, $4, $2
lbu $4, 0($2)
beq $4, $4, TAG298
TAG298:
addiu $2, $4, 7
sh $2, 0($4)
lhu $3, 0($4)
sb $3, 0($4)
TAG299:
sltiu $2, $3, 14
ori $1, $2, 14
bltz $3, TAG300
mthi $2
TAG300:
sltu $2, $1, $1
addi $2, $2, 15
addu $3, $2, $2
lhu $3, 0($3)
TAG301:
lui $4, 13
mflo $3
bgtz $4, TAG302
sll $0, $0, 0
TAG302:
mflo $3
multu $3, $3
divu $4, $4
sll $0, $0, 0
TAG303:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG304
sltu $1, $3, $3
TAG304:
mthi $1
nor $4, $1, $1
sw $1, 1($4)
lbu $1, 1($4)
TAG305:
blez $1, TAG306
xori $2, $1, 9
sh $2, 0($1)
mflo $3
TAG306:
multu $3, $3
mthi $3
mfhi $2
lui $3, 1
TAG307:
sll $2, $3, 4
lui $2, 4
sllv $2, $3, $3
beq $2, $3, TAG308
TAG308:
mfhi $3
mult $2, $2
lui $1, 2
lui $1, 9
TAG309:
divu $1, $1
sra $2, $1, 9
sw $1, -1152($2)
bne $1, $1, TAG310
TAG310:
sb $2, -1152($2)
bne $2, $2, TAG311
lui $4, 0
mult $4, $4
TAG311:
lh $1, 0($4)
sw $1, 0($1)
srl $3, $4, 8
bne $1, $3, TAG312
TAG312:
sw $3, 0($3)
sll $3, $3, 10
bgez $3, TAG313
slti $4, $3, 11
TAG313:
blez $4, TAG314
sltu $3, $4, $4
divu $3, $4
lbu $3, 0($3)
TAG314:
mthi $3
mflo $4
lhu $2, 0($4)
bgtz $2, TAG315
TAG315:
mtlo $2
bgtz $2, TAG316
xori $4, $2, 0
multu $2, $4
TAG316:
sb $4, 0($4)
beq $4, $4, TAG317
xori $2, $4, 14
beq $4, $4, TAG317
TAG317:
lui $1, 0
sltiu $1, $1, 6
mfhi $1
lui $1, 14
TAG318:
divu $1, $1
beq $1, $1, TAG319
mfhi $1
div $1, $1
TAG319:
mfhi $1
mfhi $2
bgtz $1, TAG320
add $3, $1, $2
TAG320:
sra $1, $3, 13
bne $1, $3, TAG321
mflo $1
beq $1, $3, TAG321
TAG321:
addiu $4, $1, 2
lb $4, 0($4)
sb $1, 0($4)
sllv $3, $4, $1
TAG322:
sb $3, 0($3)
srav $4, $3, $3
lw $1, 0($3)
multu $4, $4
TAG323:
blez $1, TAG324
lhu $1, 0($1)
multu $1, $1
bltz $1, TAG324
TAG324:
nor $1, $1, $1
mthi $1
divu $1, $1
blez $1, TAG325
TAG325:
addu $3, $1, $1
ori $2, $1, 3
lui $3, 6
bltz $1, TAG326
TAG326:
mthi $3
sll $0, $0, 0
beq $3, $3, TAG327
sll $0, $0, 0
TAG327:
sll $0, $0, 0
subu $1, $3, $3
bgez $1, TAG328
lb $3, 0($1)
TAG328:
lui $2, 7
bgez $2, TAG329
divu $2, $2
mthi $3
TAG329:
sll $0, $0, 0
sra $2, $2, 1
sll $0, $0, 0
srl $4, $2, 2
TAG330:
lui $3, 15
blez $4, TAG331
div $3, $3
lui $4, 7
TAG331:
blez $4, TAG332
sll $0, $0, 0
mtlo $4
div $2, $2
TAG332:
andi $1, $2, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 12
TAG333:
mthi $4
bgez $4, TAG334
slti $1, $4, 15
srl $1, $4, 15
TAG334:
beq $1, $1, TAG335
lui $1, 11
lb $3, 0($1)
mtlo $1
TAG335:
bne $3, $3, TAG336
divu $3, $3
sll $0, $0, 0
mthi $4
TAG336:
mthi $4
mtlo $4
sll $0, $0, 0
mfhi $2
TAG337:
mtlo $2
lui $4, 0
and $2, $2, $2
nor $2, $2, $2
TAG338:
bltz $2, TAG339
sltiu $3, $2, 9
lui $1, 13
mflo $4
TAG339:
ori $3, $4, 7
lbu $2, 0($3)
mflo $4
bne $4, $4, TAG340
TAG340:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG341
addiu $4, $1, 2
TAG341:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG342
addiu $3, $4, 3
TAG342:
bne $3, $3, TAG343
sll $0, $0, 0
sra $1, $3, 14
lui $4, 11
TAG343:
bne $4, $4, TAG344
mfhi $2
sll $0, $0, 0
div $2, $2
TAG344:
lui $3, 1
mfhi $3
srl $3, $4, 1
bltz $3, TAG345
TAG345:
xor $2, $3, $3
mtlo $3
mfhi $4
sw $2, 0($4)
TAG346:
blez $4, TAG347
sw $4, 0($4)
sh $4, 0($4)
sb $4, 0($4)
TAG347:
addi $4, $4, 8
sb $4, 0($4)
addiu $3, $4, 7
lui $3, 15
TAG348:
sll $0, $0, 0
srav $2, $3, $3
bne $2, $3, TAG349
addu $3, $3, $3
TAG349:
sltiu $2, $3, 6
mthi $3
addi $4, $2, 9
blez $4, TAG350
TAG350:
srl $2, $4, 3
bgtz $4, TAG351
mfhi $2
bne $2, $2, TAG351
TAG351:
lui $1, 4
addiu $1, $2, 13
mtlo $1
lui $3, 2
TAG352:
sll $0, $0, 0
sltu $4, $3, $3
mult $3, $4
sll $0, $0, 0
TAG353:
sw $4, 0($4)
xor $2, $4, $4
mthi $2
slti $2, $4, 12
TAG354:
mult $2, $2
slt $2, $2, $2
lb $2, 0($2)
lw $4, 0($2)
TAG355:
mfhi $4
sh $4, 0($4)
mflo $4
sb $4, 0($4)
TAG356:
beq $4, $4, TAG357
lb $2, 0($4)
sh $2, 0($2)
srav $1, $2, $2
TAG357:
mthi $1
nor $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG358:
beq $1, $1, TAG359
sll $3, $1, 5
mtlo $1
sh $1, 0($1)
TAG359:
lui $3, 10
mfhi $1
sltiu $1, $3, 9
slti $4, $1, 10
TAG360:
xor $3, $4, $4
bgez $3, TAG361
div $4, $4
bgtz $3, TAG361
TAG361:
mfhi $2
mtlo $3
sltu $3, $2, $2
multu $2, $3
TAG362:
bne $3, $3, TAG363
sh $3, 0($3)
sh $3, 0($3)
mfhi $3
TAG363:
multu $3, $3
addiu $3, $3, 7
subu $1, $3, $3
mfhi $4
TAG364:
lbu $1, 0($4)
sll $2, $1, 5
lw $2, 0($4)
mthi $2
TAG365:
mflo $4
sh $4, 0($4)
mult $4, $2
beq $4, $2, TAG366
TAG366:
lbu $2, 0($4)
mult $2, $4
lh $4, 0($4)
bne $4, $4, TAG367
TAG367:
multu $4, $4
mfhi $3
lhu $1, 0($3)
multu $3, $1
TAG368:
sll $4, $1, 1
add $3, $1, $1
lh $1, 0($4)
blez $3, TAG369
TAG369:
lui $2, 6
mthi $1
mfhi $2
bgez $2, TAG370
TAG370:
lw $4, 0($2)
mfhi $1
nor $4, $4, $2
mfhi $1
TAG371:
sb $1, 0($1)
or $1, $1, $1
mthi $1
bne $1, $1, TAG372
TAG372:
mfhi $2
nor $3, $1, $2
multu $2, $2
lui $2, 15
TAG373:
divu $2, $2
bltz $2, TAG374
sll $0, $0, 0
sll $0, $0, 0
TAG374:
sll $0, $0, 0
xori $1, $2, 7
beq $1, $1, TAG375
mthi $2
TAG375:
mtlo $1
mfhi $4
mtlo $1
ori $3, $1, 10
TAG376:
beq $3, $3, TAG377
sll $0, $0, 0
slti $2, $3, 12
sh $3, 0($2)
TAG377:
lui $3, 15
sll $0, $0, 0
mfhi $3
addu $3, $2, $3
TAG378:
mfhi $1
mflo $2
lui $2, 9
beq $3, $2, TAG379
TAG379:
lui $2, 14
bne $2, $2, TAG380
mfhi $4
sll $0, $0, 0
TAG380:
ori $1, $4, 2
sll $0, $0, 0
bne $4, $4, TAG381
lui $2, 8
TAG381:
mthi $2
srl $4, $2, 11
mtlo $4
slti $1, $4, 13
TAG382:
beq $1, $1, TAG383
xor $3, $1, $1
mthi $3
lh $2, 0($1)
TAG383:
sra $1, $2, 11
and $2, $1, $1
lhu $4, -256($2)
lui $2, 2
TAG384:
lui $1, 1
sll $0, $0, 0
bgez $2, TAG385
mult $1, $1
TAG385:
sll $0, $0, 0
sll $0, $0, 0
slt $1, $1, $1
xori $3, $1, 12
TAG386:
lb $4, 0($3)
lui $4, 3
bltz $3, TAG387
xori $4, $4, 2
TAG387:
addu $3, $4, $4
sll $0, $0, 0
mfhi $1
xor $4, $1, $1
TAG388:
lui $1, 15
sb $1, 0($4)
bltz $1, TAG389
mfhi $4
TAG389:
lbu $3, 0($4)
mflo $2
nor $1, $4, $2
mthi $1
TAG390:
bne $1, $1, TAG391
multu $1, $1
mthi $1
lui $2, 9
TAG391:
bne $2, $2, TAG392
lui $4, 2
bltz $4, TAG392
mflo $3
TAG392:
sh $3, 0($3)
mthi $3
bltz $3, TAG393
slti $3, $3, 11
TAG393:
multu $3, $3
lui $2, 7
mthi $3
srav $3, $2, $2
TAG394:
slt $2, $3, $3
lui $3, 6
mthi $3
lui $3, 15
TAG395:
sll $0, $0, 0
lhu $3, 2($1)
lw $4, 0($3)
mfhi $2
TAG396:
subu $1, $2, $2
sh $2, 0($1)
multu $2, $1
lui $3, 0
TAG397:
lb $4, 0($3)
sra $1, $4, 13
bgez $3, TAG398
mtlo $4
TAG398:
bne $1, $1, TAG399
slt $2, $1, $1
mthi $1
beq $1, $2, TAG399
TAG399:
lui $1, 13
lui $2, 11
sll $2, $2, 6
srav $2, $2, $2
TAG400:
andi $2, $2, 7
lui $1, 11
mthi $2
sll $0, $0, 0
TAG401:
divu $1, $1
bne $1, $1, TAG402
mflo $4
sb $1, 0($4)
TAG402:
lui $3, 6
blez $3, TAG403
addu $2, $3, $4
divu $3, $4
TAG403:
lui $4, 4
mtlo $2
mflo $2
div $2, $2
TAG404:
srl $3, $2, 15
sll $0, $0, 0
mtlo $3
sw $3, 0($3)
TAG405:
sw $3, 0($3)
lui $3, 10
mtlo $3
srl $2, $3, 15
TAG406:
sh $2, 0($2)
lbu $2, 0($2)
mult $2, $2
lui $1, 13
TAG407:
divu $1, $1
mtlo $1
sll $0, $0, 0
mfhi $3
TAG408:
lui $3, 7
beq $3, $3, TAG409
srl $3, $3, 10
mfhi $2
TAG409:
lui $4, 9
mtlo $2
srl $1, $4, 15
mfhi $2
TAG410:
sltu $3, $2, $2
mflo $3
addiu $2, $2, 10
bne $2, $3, TAG411
TAG411:
andi $2, $2, 13
lui $3, 8
lbu $1, 0($2)
sll $0, $0, 0
TAG412:
addiu $1, $1, 15
mflo $4
bne $4, $4, TAG413
sb $4, 0($4)
TAG413:
sw $4, 0($4)
beq $4, $4, TAG414
slti $3, $4, 11
nor $2, $4, $3
TAG414:
nor $2, $2, $2
mult $2, $2
or $2, $2, $2
lhu $1, 9($2)
TAG415:
sltu $3, $1, $1
sb $1, 0($3)
lw $4, 0($3)
add $1, $4, $1
TAG416:
bgez $1, TAG417
lui $2, 11
sltu $4, $2, $2
blez $4, TAG417
TAG417:
lui $3, 10
lh $2, 0($4)
sltu $3, $4, $4
bne $4, $3, TAG418
TAG418:
addi $1, $3, 15
slt $3, $1, $1
sb $3, 0($1)
mflo $3
TAG419:
mflo $1
sb $3, 0($1)
beq $1, $1, TAG420
lbu $2, 0($3)
TAG420:
sb $2, 0($2)
beq $2, $2, TAG421
sb $2, 0($2)
lw $3, 0($2)
TAG421:
bltz $3, TAG422
sb $3, 0($3)
lui $2, 13
bltz $3, TAG422
TAG422:
divu $2, $2
mthi $2
mflo $4
beq $4, $2, TAG423
TAG423:
mfhi $2
bltz $4, TAG424
xor $1, $2, $2
lui $2, 8
TAG424:
mult $2, $2
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG425:
sra $1, $2, 10
sllv $3, $2, $2
andi $1, $1, 10
andi $3, $2, 5
TAG426:
mtlo $3
mtlo $3
sh $3, 0($3)
mtlo $3
TAG427:
mult $3, $3
sb $3, 0($3)
mult $3, $3
lui $4, 13
TAG428:
nor $2, $4, $4
mult $4, $2
mfhi $1
sll $0, $0, 0
TAG429:
sll $0, $0, 0
sw $1, 170($1)
lui $1, 2
bne $1, $1, TAG430
TAG430:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 2
lui $4, 12
TAG431:
lui $1, 7
sll $0, $0, 0
sltiu $3, $3, 6
addu $1, $1, $3
TAG432:
mfhi $3
divu $1, $1
sll $0, $0, 0
sllv $4, $4, $1
TAG433:
mthi $4
srlv $3, $4, $4
bltz $4, TAG434
mthi $4
TAG434:
sll $0, $0, 0
mtlo $3
lui $4, 12
sll $0, $0, 0
TAG435:
mfhi $2
ori $2, $1, 11
lui $2, 7
sll $0, $0, 0
TAG436:
mtlo $2
addiu $4, $2, 6
sll $0, $0, 0
mthi $4
TAG437:
mfhi $2
slti $4, $2, 14
xor $1, $2, $2
mthi $1
TAG438:
sw $1, 0($1)
lui $3, 11
slti $1, $1, 3
srl $1, $3, 15
TAG439:
mtlo $1
or $3, $1, $1
lh $2, 0($3)
mthi $2
TAG440:
bgtz $2, TAG441
xori $1, $2, 9
lui $2, 14
srlv $4, $1, $2
TAG441:
lbu $4, 0($4)
multu $4, $4
beq $4, $4, TAG442
sb $4, 0($4)
TAG442:
nor $1, $4, $4
mflo $1
bne $4, $1, TAG443
lw $4, 0($1)
TAG443:
sh $4, 0($4)
srl $1, $4, 8
lui $2, 12
addiu $4, $2, 11
TAG444:
subu $2, $4, $4
bltz $2, TAG445
sll $0, $0, 0
bgez $4, TAG445
TAG445:
sll $2, $4, 6
lui $1, 0
mthi $1
mflo $2
TAG446:
lw $4, 0($2)
mfhi $1
bne $2, $2, TAG447
lui $2, 0
TAG447:
lb $3, 0($2)
beq $2, $2, TAG448
xor $4, $2, $2
sh $2, 0($2)
TAG448:
xor $4, $4, $4
mthi $4
multu $4, $4
lw $3, 0($4)
TAG449:
beq $3, $3, TAG450
andi $4, $3, 1
mflo $3
mtlo $4
TAG450:
srav $3, $3, $3
lhu $2, 0($3)
xori $1, $3, 14
mfhi $1
TAG451:
sw $1, 0($1)
sh $1, 0($1)
lhu $2, 0($1)
mfhi $1
TAG452:
mtlo $1
beq $1, $1, TAG453
mult $1, $1
lui $2, 10
TAG453:
sh $2, 0($2)
beq $2, $2, TAG454
sb $2, 0($2)
lw $3, 0($2)
TAG454:
bltz $3, TAG455
srl $4, $3, 13
sra $1, $4, 6
bltz $4, TAG455
TAG455:
lhu $3, 0($1)
mthi $1
lui $2, 3
lui $3, 6
TAG456:
bne $3, $3, TAG457
srl $2, $3, 5
subu $1, $2, $2
beq $3, $3, TAG457
TAG457:
xor $2, $1, $1
lui $1, 14
blez $2, TAG458
multu $2, $2
TAG458:
mtlo $1
bgtz $1, TAG459
div $1, $1
nor $3, $1, $1
TAG459:
bgtz $3, TAG460
sltiu $4, $3, 5
sw $4, 0($4)
lw $4, 0($4)
TAG460:
mfhi $1
slti $4, $4, 5
sh $4, 0($1)
and $3, $1, $4
TAG461:
lbu $4, 0($3)
multu $3, $3
or $3, $3, $4
mtlo $3
TAG462:
mtlo $3
bne $3, $3, TAG463
mthi $3
srlv $3, $3, $3
TAG463:
sw $3, 0($3)
bltz $3, TAG464
or $3, $3, $3
lui $1, 10
TAG464:
bltz $1, TAG465
mthi $1
sll $0, $0, 0
bne $1, $1, TAG465
TAG465:
addiu $2, $1, 7
mfhi $3
lui $4, 8
sll $0, $0, 0
TAG466:
divu $4, $4
sll $0, $0, 0
mfhi $4
sw $4, 0($4)
TAG467:
sltiu $4, $4, 14
mtlo $4
multu $4, $4
lui $2, 15
TAG468:
blez $2, TAG469
sll $0, $0, 0
mtlo $2
lui $1, 9
TAG469:
beq $1, $1, TAG470
multu $1, $1
subu $3, $1, $1
mult $3, $3
TAG470:
beq $3, $3, TAG471
mtlo $3
multu $3, $3
mthi $3
TAG471:
mthi $3
beq $3, $3, TAG472
subu $1, $3, $3
lb $3, 0($3)
TAG472:
addiu $3, $3, 2
mult $3, $3
beq $3, $3, TAG473
lui $1, 15
TAG473:
bne $1, $1, TAG474
sll $0, $0, 0
mfhi $2
mthi $2
TAG474:
mfhi $2
blez $2, TAG475
sb $2, 0($2)
divu $2, $2
TAG475:
mflo $3
multu $3, $3
beq $2, $2, TAG476
mthi $2
TAG476:
srlv $3, $3, $3
srlv $4, $3, $3
sh $4, 0($4)
bne $3, $4, TAG477
TAG477:
xor $4, $4, $4
lb $3, 0($4)
srl $1, $4, 14
blez $1, TAG478
TAG478:
mfhi $1
mthi $1
bgtz $1, TAG479
or $2, $1, $1
TAG479:
and $4, $2, $2
lh $4, 0($4)
mthi $4
mflo $4
TAG480:
bltz $4, TAG481
mtlo $4
bne $4, $4, TAG481
lb $4, 0($4)
TAG481:
lui $4, 7
lui $2, 2
div $4, $2
addiu $1, $2, 0
TAG482:
subu $3, $1, $1
lui $4, 7
mthi $4
bltz $3, TAG483
TAG483:
mtlo $4
mult $4, $4
sll $0, $0, 0
bgtz $3, TAG484
TAG484:
mult $3, $3
lb $1, 0($3)
mfhi $3
beq $3, $3, TAG485
TAG485:
multu $3, $3
mult $3, $3
multu $3, $3
lui $1, 7
TAG486:
subu $3, $1, $1
sb $1, 0($3)
sll $0, $0, 0
nor $3, $3, $1
TAG487:
bltz $3, TAG488
lui $3, 7
bgez $3, TAG488
lbu $1, 0($3)
TAG488:
mtlo $1
sll $0, $0, 0
addiu $3, $1, 15
mfhi $4
TAG489:
sb $4, 0($4)
mflo $2
blez $2, TAG490
mult $2, $4
TAG490:
mthi $2
srlv $4, $2, $2
mtlo $2
bne $4, $4, TAG491
TAG491:
multu $4, $4
bgtz $4, TAG492
mtlo $4
bgez $4, TAG492
TAG492:
sll $4, $4, 6
mthi $4
mfhi $3
nor $3, $4, $3
TAG493:
slti $4, $3, 8
bgtz $3, TAG494
multu $4, $3
bgtz $4, TAG494
TAG494:
divu $4, $4
mtlo $4
lui $3, 12
mflo $1
TAG495:
srl $4, $1, 2
mthi $1
bltz $1, TAG496
srlv $3, $1, $4
TAG496:
sra $2, $3, 10
sllv $1, $2, $3
lui $3, 8
mult $3, $3
TAG497:
mflo $2
lb $4, 0($2)
mult $2, $2
beq $4, $4, TAG498
TAG498:
sb $4, 0($4)
mult $4, $4
blez $4, TAG499
multu $4, $4
TAG499:
lbu $3, 0($4)
mthi $4
sb $3, 0($4)
multu $4, $4
TAG500:
and $3, $3, $3
subu $2, $3, $3
sltu $2, $3, $2
sub $1, $3, $2
TAG501:
lui $1, 2
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
TAG502:
mflo $4
multu $1, $1
mflo $3
addiu $2, $4, 3
TAG503:
mfhi $3
bne $3, $2, TAG504
subu $3, $2, $3
sh $3, 0($3)
TAG504:
lui $4, 15
blez $3, TAG505
srav $3, $3, $4
and $1, $3, $3
TAG505:
mflo $1
bgtz $1, TAG506
lh $3, 0($1)
bltz $3, TAG506
TAG506:
mfhi $4
mfhi $4
sb $3, 0($4)
mthi $4
TAG507:
mthi $4
lw $4, 0($4)
mfhi $1
nor $1, $1, $4
TAG508:
lui $4, 15
lui $1, 0
mthi $1
nor $4, $4, $1
TAG509:
beq $4, $4, TAG510
lui $4, 5
sh $4, 0($4)
blez $4, TAG510
TAG510:
mfhi $3
bgez $3, TAG511
mfhi $2
multu $3, $3
TAG511:
bgtz $2, TAG512
and $3, $2, $2
lbu $1, 0($2)
subu $1, $3, $1
TAG512:
lhu $4, 0($1)
lui $3, 0
srlv $3, $1, $3
mflo $1
TAG513:
addiu $3, $1, 1
mflo $1
slt $4, $1, $1
add $2, $4, $1
TAG514:
sh $2, 0($2)
mtlo $2
sh $2, 0($2)
mtlo $2
TAG515:
mfhi $1
mfhi $1
lh $2, 0($2)
mult $1, $2
TAG516:
multu $2, $2
add $2, $2, $2
lui $1, 15
andi $2, $2, 4
TAG517:
sb $2, 0($2)
blez $2, TAG518
mfhi $4
lb $1, 0($2)
TAG518:
mtlo $1
mthi $1
subu $1, $1, $1
slti $1, $1, 9
TAG519:
mtlo $1
lui $2, 10
xori $4, $1, 13
bne $1, $2, TAG520
TAG520:
divu $4, $4
div $4, $4
sw $4, 0($4)
sw $4, 0($4)
TAG521:
multu $4, $4
mflo $1
mtlo $4
srlv $1, $4, $1
TAG522:
bgtz $1, TAG523
srlv $2, $1, $1
lui $1, 4
mflo $1
TAG523:
bgtz $1, TAG524
mult $1, $1
addi $1, $1, 9
lui $4, 15
TAG524:
mthi $4
bgez $4, TAG525
lbu $1, 0($4)
divu $4, $4
TAG525:
mthi $1
mult $1, $1
divu $1, $1
beq $1, $1, TAG526
TAG526:
sltiu $4, $1, 1
lw $1, 0($4)
lbu $1, 0($4)
mflo $1
TAG527:
subu $4, $1, $1
mtlo $1
sltiu $1, $4, 1
lbu $4, 0($4)
TAG528:
sub $2, $4, $4
mflo $1
bltz $1, TAG529
sh $2, 0($4)
TAG529:
multu $1, $1
mtlo $1
sltiu $4, $1, 3
sb $1, 0($1)
TAG530:
mfhi $1
lui $2, 5
beq $2, $4, TAG531
sll $0, $0, 0
TAG531:
lbu $3, 0($3)
bltz $3, TAG532
mthi $3
addiu $4, $3, 3
TAG532:
bgez $4, TAG533
lui $4, 5
bne $4, $4, TAG533
mflo $2
TAG533:
bne $2, $2, TAG534
lui $3, 15
lui $3, 11
mthi $2
TAG534:
slti $1, $3, 13
bgtz $3, TAG535
sll $1, $1, 8
mthi $3
TAG535:
mflo $4
mthi $4
slt $2, $1, $4
sltiu $3, $1, 13
TAG536:
mfhi $4
mthi $4
mthi $3
lui $1, 9
TAG537:
bne $1, $1, TAG538
lui $2, 10
sll $0, $0, 0
sll $0, $0, 0
TAG538:
bne $2, $2, TAG539
mtlo $2
sll $0, $0, 0
mthi $2
TAG539:
sll $0, $0, 0
mthi $4
addu $3, $2, $2
subu $1, $4, $2
TAG540:
sltu $1, $1, $1
srlv $1, $1, $1
mtlo $1
andi $3, $1, 12
TAG541:
xori $1, $3, 11
beq $3, $3, TAG542
sb $1, 0($1)
sw $3, 0($1)
TAG542:
lbu $2, 0($1)
srl $4, $2, 13
mthi $2
mflo $1
TAG543:
sw $1, 0($1)
mfhi $3
divu $3, $3
lw $2, 0($1)
TAG544:
bltz $2, TAG545
andi $2, $2, 13
xori $1, $2, 12
slt $3, $2, $1
TAG545:
div $3, $3
mult $3, $3
mthi $3
mthi $3
TAG546:
srlv $3, $3, $3
mflo $1
bltz $3, TAG547
or $2, $1, $3
TAG547:
sb $2, 0($2)
sb $2, 0($2)
lui $3, 14
mtlo $2
TAG548:
multu $3, $3
bne $3, $3, TAG549
srl $3, $3, 9
lbu $3, -1792($3)
TAG549:
mflo $4
bgtz $3, TAG550
lui $3, 8
mthi $3
TAG550:
sra $2, $3, 12
mfhi $3
lui $2, 8
divu $2, $2
TAG551:
sll $0, $0, 0
bne $1, $2, TAG552
slt $2, $2, $1
lh $4, 0($2)
TAG552:
sh $4, 0($4)
mflo $1
sltiu $1, $4, 1
bne $1, $1, TAG553
TAG553:
slti $4, $1, 4
mtlo $1
mthi $1
mflo $3
TAG554:
sb $3, 0($3)
sb $3, 0($3)
slt $4, $3, $3
sw $4, 0($4)
TAG555:
mthi $4
addi $1, $4, 5
addiu $1, $4, 6
mthi $4
TAG556:
bltz $1, TAG557
multu $1, $1
beq $1, $1, TAG557
xori $2, $1, 9
TAG557:
mtlo $2
sllv $2, $2, $2
blez $2, TAG558
nor $4, $2, $2
TAG558:
addu $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG559
TAG559:
mtlo $4
sltiu $1, $4, 5
sra $1, $4, 12
mfhi $2
TAG560:
mtlo $2
lw $2, 0($2)
multu $2, $2
sw $2, 0($2)
TAG561:
sb $2, 0($2)
and $1, $2, $2
mfhi $4
mflo $3
TAG562:
beq $3, $3, TAG563
sb $3, 0($3)
addi $4, $3, 14
sltu $1, $4, $3
TAG563:
lui $4, 13
multu $1, $4
sll $0, $0, 0
lhu $4, 0($2)
TAG564:
or $4, $4, $4
nor $4, $4, $4
mthi $4
lw $4, 1($4)
TAG565:
multu $4, $4
bne $4, $4, TAG566
sllv $3, $4, $4
multu $4, $3
TAG566:
slt $4, $3, $3
beq $4, $4, TAG567
sll $1, $3, 11
bne $4, $1, TAG567
TAG567:
nor $3, $1, $1
lui $4, 9
lh $2, 1($3)
mthi $3
TAG568:
blez $2, TAG569
lhu $1, 0($2)
mflo $2
mthi $1
TAG569:
bne $2, $2, TAG570
lw $4, 0($2)
slti $2, $2, 15
mfhi $3
TAG570:
or $2, $3, $3
mtlo $2
mflo $2
bltz $2, TAG571
TAG571:
sll $0, $0, 0
bltz $2, TAG572
mfhi $1
lw $4, 0($2)
TAG572:
multu $4, $4
mflo $4
lui $4, 13
sll $0, $0, 0
TAG573:
bne $2, $2, TAG574
mult $2, $2
lui $3, 2
sw $3, 1($2)
TAG574:
div $3, $3
addiu $1, $3, 2
lui $3, 12
sra $1, $1, 0
TAG575:
lui $3, 15
sll $0, $0, 0
beq $3, $1, TAG576
sltiu $2, $3, 8
TAG576:
lui $4, 12
subu $2, $4, $4
lui $4, 3
sll $0, $0, 0
TAG577:
mult $2, $2
mult $2, $2
lw $1, 0($2)
lui $3, 11
TAG578:
mfhi $3
or $1, $3, $3
beq $3, $1, TAG579
mflo $4
TAG579:
multu $4, $4
mflo $2
or $4, $2, $4
lui $1, 10
TAG580:
sltu $3, $1, $1
blez $3, TAG581
xori $4, $1, 8
divu $1, $4
TAG581:
beq $4, $4, TAG582
div $4, $4
bgtz $4, TAG582
lb $2, 0($4)
TAG582:
mthi $2
lw $1, 0($2)
lui $1, 14
and $1, $1, $1
TAG583:
mtlo $1
blez $1, TAG584
slti $1, $1, 14
sra $1, $1, 1
TAG584:
lhu $1, 0($1)
bgtz $1, TAG585
lh $1, 0($1)
lb $2, 0($1)
TAG585:
mthi $2
bne $2, $2, TAG586
srl $3, $2, 8
lh $1, 0($3)
TAG586:
bgtz $1, TAG587
multu $1, $1
sltiu $3, $1, 11
mflo $2
TAG587:
mflo $4
blez $4, TAG588
lbu $1, 0($4)
lui $1, 12
TAG588:
slt $2, $1, $1
subu $2, $1, $2
sll $2, $2, 2
lui $4, 1
TAG589:
mtlo $4
div $4, $4
blez $4, TAG590
multu $4, $4
TAG590:
sllv $1, $4, $4
srl $2, $4, 2
lui $2, 10
lui $3, 2
TAG591:
sllv $3, $3, $3
beq $3, $3, TAG592
sll $0, $0, 0
nor $4, $3, $3
TAG592:
lui $1, 4
sll $0, $0, 0
mthi $1
mtlo $1
TAG593:
bgtz $1, TAG594
mtlo $1
beq $1, $1, TAG594
lh $2, 0($1)
TAG594:
bgtz $2, TAG595
div $2, $2
mfhi $2
slti $1, $2, 3
TAG595:
beq $1, $1, TAG596
sll $0, $0, 0
mtlo $4
add $4, $1, $4
TAG596:
srav $1, $4, $4
beq $4, $4, TAG597
multu $4, $1
mult $4, $1
TAG597:
addiu $3, $1, 8
sll $0, $0, 0
divu $1, $1
slti $2, $1, 3
TAG598:
mthi $2
bgez $2, TAG599
mult $2, $2
xor $3, $2, $2
TAG599:
bne $3, $3, TAG600
multu $3, $3
mflo $1
lui $3, 4
TAG600:
div $3, $3
sll $0, $0, 0
mtlo $2
sllv $2, $2, $3
TAG601:
bgez $2, TAG602
sra $3, $2, 6
bne $2, $2, TAG602
multu $2, $3
TAG602:
bne $3, $3, TAG603
lb $3, 0($3)
mtlo $3
sltu $3, $3, $3
TAG603:
addi $3, $3, 4
multu $3, $3
mtlo $3
mflo $1
TAG604:
bne $1, $1, TAG605
lh $2, 0($1)
subu $2, $1, $1
sh $1, 0($2)
TAG605:
multu $2, $2
and $3, $2, $2
xor $4, $3, $3
lbu $1, 0($2)
TAG606:
blez $1, TAG607
andi $3, $1, 8
lui $2, 13
lui $3, 14
TAG607:
sll $0, $0, 0
lui $2, 10
sll $0, $0, 0
sll $0, $0, 0
TAG608:
blez $2, TAG609
mfhi $1
mfhi $3
addiu $1, $1, 11
TAG609:
lb $1, 0($1)
lui $3, 3
bltz $3, TAG610
srl $1, $1, 15
TAG610:
lui $4, 14
subu $4, $4, $1
addiu $1, $4, 5
sll $0, $0, 0
TAG611:
beq $1, $1, TAG612
sll $0, $0, 0
slti $2, $1, 0
multu $1, $2
TAG612:
bgez $2, TAG613
mflo $4
div $4, $4
sub $2, $2, $2
TAG613:
sltiu $2, $2, 4
sb $2, 0($2)
lui $2, 1
lui $2, 1
TAG614:
sll $0, $0, 0
bltz $2, TAG615
sll $3, $2, 6
sllv $3, $3, $3
TAG615:
mtlo $3
divu $3, $3
mthi $3
mult $3, $3
TAG616:
div $3, $3
sra $3, $3, 0
xori $4, $3, 13
mfhi $4
TAG617:
sltu $2, $4, $4
beq $2, $4, TAG618
mtlo $2
lh $4, 0($2)
TAG618:
sb $4, 0($4)
beq $4, $4, TAG619
sw $4, 0($4)
beq $4, $4, TAG619
TAG619:
addiu $2, $4, 6
mflo $4
mtlo $2
lui $3, 9
TAG620:
sll $0, $0, 0
bne $3, $3, TAG621
slt $1, $1, $3
lhu $3, 0($1)
TAG621:
mthi $3
sllv $1, $3, $3
mflo $2
mfhi $4
TAG622:
bgtz $4, TAG623
srav $2, $4, $4
subu $4, $4, $4
multu $4, $2
TAG623:
mult $4, $4
addu $3, $4, $4
addiu $3, $4, 1
beq $4, $3, TAG624
TAG624:
divu $3, $3
ori $3, $3, 1
beq $3, $3, TAG625
sb $3, 0($3)
TAG625:
mtlo $3
subu $1, $3, $3
mult $1, $1
sltiu $1, $1, 4
TAG626:
divu $1, $1
lui $4, 5
lui $3, 9
mfhi $2
TAG627:
mfhi $4
sw $4, 0($2)
multu $4, $2
lui $3, 6
TAG628:
xor $3, $3, $3
beq $3, $3, TAG629
mthi $3
divu $3, $3
TAG629:
slt $3, $3, $3
sw $3, 0($3)
bgtz $3, TAG630
mfhi $3
TAG630:
mult $3, $3
slt $4, $3, $3
mflo $3
mflo $2
TAG631:
mult $2, $2
lh $1, 0($2)
sra $2, $2, 6
beq $2, $1, TAG632
TAG632:
multu $2, $2
blez $2, TAG633
sh $2, 0($2)
sb $2, 0($2)
TAG633:
lw $1, 0($2)
sra $4, $2, 10
addiu $1, $1, 4
bne $2, $4, TAG634
TAG634:
mfhi $1
lh $3, 0($1)
lui $2, 13
ori $2, $2, 15
TAG635:
mfhi $3
lhu $1, 0($3)
mtlo $3
mtlo $3
TAG636:
blez $1, TAG637
sw $1, 0($1)
beq $1, $1, TAG637
mult $1, $1
TAG637:
lw $4, 0($1)
lw $2, 0($4)
multu $4, $4
lui $4, 13
TAG638:
bgtz $4, TAG639
sll $0, $0, 0
slt $4, $4, $4
lui $4, 9
TAG639:
mfhi $4
mult $4, $4
bne $4, $4, TAG640
subu $2, $4, $4
TAG640:
sb $2, 0($2)
multu $2, $2
srav $3, $2, $2
mtlo $2
TAG641:
srl $1, $3, 7
mflo $1
slti $2, $1, 10
sw $2, 0($1)
TAG642:
mthi $2
lui $2, 5
div $2, $2
sll $0, $0, 0
TAG643:
or $1, $2, $2
sll $0, $0, 0
addiu $1, $2, 1
sll $0, $0, 0
TAG644:
sltiu $3, $3, 2
lbu $4, 0($3)
bne $4, $4, TAG645
lb $4, 0($3)
TAG645:
bne $4, $4, TAG646
sltu $1, $4, $4
lui $3, 10
bgez $3, TAG646
TAG646:
mfhi $2
beq $3, $3, TAG647
mfhi $1
lw $2, 0($3)
TAG647:
lui $1, 9
bgez $2, TAG648
xori $2, $2, 10
sh $1, 0($2)
TAG648:
lui $1, 7
lui $3, 1
mthi $1
srav $2, $1, $1
TAG649:
sra $3, $2, 15
sllv $3, $3, $2
bne $2, $2, TAG650
sb $3, 0($3)
TAG650:
multu $3, $3
mult $3, $3
xor $1, $3, $3
mflo $1
TAG651:
multu $1, $1
bgtz $1, TAG652
sb $1, -196($1)
lui $2, 12
TAG652:
sll $0, $0, 0
srl $3, $2, 10
multu $2, $3
beq $2, $3, TAG653
TAG653:
lui $2, 8
divu $3, $2
ori $3, $2, 14
beq $2, $3, TAG654
TAG654:
addu $2, $3, $3
mthi $2
sra $1, $2, 3
mtlo $2
TAG655:
and $1, $1, $1
beq $1, $1, TAG656
divu $1, $1
mthi $1
TAG656:
sllv $4, $1, $1
slti $3, $1, 14
beq $3, $1, TAG657
xori $3, $4, 3
TAG657:
bne $3, $3, TAG658
mfhi $3
mtlo $3
mthi $3
TAG658:
sh $3, 0($3)
mult $3, $3
mthi $3
multu $3, $3
TAG659:
mtlo $3
lui $1, 13
bgtz $1, TAG660
sllv $1, $3, $3
TAG660:
mfhi $3
blez $3, TAG661
sw $3, 0($1)
lhu $1, 0($3)
TAG661:
lh $3, 0($1)
mflo $1
lhu $3, 0($3)
lw $3, 0($3)
TAG662:
xori $4, $3, 5
lui $1, 1
sll $0, $0, 0
lbu $4, 0($4)
TAG663:
sllv $2, $4, $4
bne $2, $2, TAG664
mult $2, $4
addiu $2, $2, 13
TAG664:
mthi $2
mult $2, $2
lui $1, 3
lb $2, 0($2)
TAG665:
lbu $1, 0($2)
bgtz $2, TAG666
mult $2, $1
mtlo $2
TAG666:
blez $1, TAG667
multu $1, $1
lui $1, 12
srl $1, $1, 0
TAG667:
lui $4, 14
mtlo $1
lui $2, 10
mfhi $2
TAG668:
blez $2, TAG669
sltu $4, $2, $2
sh $4, 0($2)
slt $3, $4, $4
TAG669:
bltz $3, TAG670
multu $3, $3
beq $3, $3, TAG670
sh $3, 0($3)
TAG670:
blez $3, TAG671
mthi $3
lh $3, 0($3)
mtlo $3
TAG671:
sra $3, $3, 1
mflo $4
mtlo $3
bgtz $3, TAG672
TAG672:
multu $4, $4
lb $2, 0($4)
lw $2, 0($4)
lb $3, 0($4)
TAG673:
nor $2, $3, $3
bne $2, $2, TAG674
mult $3, $2
bltz $3, TAG674
TAG674:
sll $0, $0, 0
sh $1, 1($2)
bne $1, $1, TAG675
srl $1, $1, 1
TAG675:
multu $1, $1
lb $1, 0($1)
bgez $1, TAG676
ori $1, $1, 2
TAG676:
bne $1, $1, TAG677
mthi $1
div $1, $1
mfhi $1
TAG677:
srav $1, $1, $1
bgtz $1, TAG678
add $3, $1, $1
multu $3, $1
TAG678:
andi $3, $3, 14
mflo $1
bgtz $3, TAG679
sw $1, 0($3)
TAG679:
beq $1, $1, TAG680
lui $3, 3
sllv $1, $3, $1
bgtz $1, TAG680
TAG680:
lui $1, 4
sll $0, $0, 0
lui $3, 9
slti $2, $4, 11
TAG681:
sb $2, 0($2)
sb $2, 0($2)
sll $1, $2, 8
addiu $2, $1, 13
TAG682:
bne $2, $2, TAG683
mfhi $4
mthi $2
bltz $4, TAG683
TAG683:
sh $4, 0($4)
mtlo $4
lbu $2, 0($4)
andi $4, $2, 6
TAG684:
xor $2, $4, $4
sw $4, 0($4)
mtlo $4
lui $1, 4
TAG685:
divu $1, $1
subu $3, $1, $1
mult $1, $3
lui $4, 8
TAG686:
mfhi $4
srlv $4, $4, $4
sw $4, 0($4)
sb $4, 0($4)
TAG687:
mfhi $4
mthi $4
bgez $4, TAG688
mflo $1
TAG688:
mfhi $2
lui $1, 5
sra $4, $1, 7
sra $1, $1, 3
TAG689:
divu $1, $1
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG690:
mtlo $3
bltz $3, TAG691
multu $3, $3
andi $3, $3, 5
TAG691:
blez $3, TAG692
mfhi $1
bne $1, $1, TAG692
mfhi $2
TAG692:
blez $2, TAG693
multu $2, $2
mthi $2
multu $2, $2
TAG693:
bgez $2, TAG694
sw $2, 0($2)
sw $2, 0($2)
sll $1, $2, 7
TAG694:
bne $1, $1, TAG695
lui $1, 2
sll $0, $0, 0
lui $3, 10
TAG695:
mult $3, $3
addu $1, $3, $3
mfhi $1
sra $1, $1, 0
TAG696:
bltz $1, TAG697
lhu $4, 0($1)
lui $2, 4
mflo $3
TAG697:
lui $1, 12
mflo $2
mtlo $1
sb $1, 0($2)
TAG698:
mthi $2
mthi $2
mfhi $1
lhu $2, 0($2)
TAG699:
sltu $1, $2, $2
sh $2, 0($1)
lui $1, 14
mthi $2
TAG700:
div $1, $1
beq $1, $1, TAG701
ori $3, $1, 1
lh $4, 0($1)
TAG701:
lui $4, 9
mtlo $4
blez $4, TAG702
sll $0, $0, 0
TAG702:
sltiu $4, $2, 6
bgtz $2, TAG703
mfhi $1
sh $4, 0($2)
TAG703:
bgtz $1, TAG704
sltiu $4, $1, 12
sllv $2, $4, $1
mult $1, $4
TAG704:
addiu $2, $2, 14
sb $2, 0($2)
slti $1, $2, 14
sll $4, $2, 5
TAG705:
divu $4, $4
sb $4, -480($4)
subu $2, $4, $4
mfhi $4
TAG706:
mflo $3
ori $1, $4, 11
slt $3, $1, $1
bne $1, $1, TAG707
TAG707:
slti $1, $3, 2
lui $1, 6
mult $1, $1
beq $1, $1, TAG708
TAG708:
mflo $1
beq $1, $1, TAG709
mflo $4
lui $1, 14
TAG709:
mult $1, $1
mtlo $1
and $4, $1, $1
bne $1, $4, TAG710
TAG710:
sltiu $4, $4, 2
mfhi $1
sb $4, 0($4)
bne $1, $4, TAG711
TAG711:
ori $4, $1, 5
beq $4, $4, TAG712
mtlo $4
sb $4, 0($4)
TAG712:
lui $2, 9
ori $1, $4, 3
and $3, $1, $4
sll $0, $0, 0
TAG713:
sll $4, $2, 14
addu $3, $4, $2
mthi $2
lui $3, 2
TAG714:
sll $0, $0, 0
mtlo $3
sll $2, $3, 1
lui $2, 14
TAG715:
bltz $2, TAG716
lui $3, 5
bne $2, $3, TAG716
sll $0, $0, 0
TAG716:
sltiu $4, $1, 9
sll $2, $4, 13
slti $3, $2, 7
mflo $1
TAG717:
mthi $1
beq $1, $1, TAG718
addiu $2, $1, 5
bltz $1, TAG718
TAG718:
sll $0, $0, 0
beq $2, $2, TAG719
and $1, $2, $2
sw $1, 0($1)
TAG719:
sll $0, $0, 0
lui $3, 0
mfhi $1
and $3, $1, $1
TAG720:
bgez $3, TAG721
mflo $3
sb $3, 0($3)
lui $3, 15
TAG721:
sll $0, $0, 0
slti $4, $3, 11
bgez $4, TAG722
sll $0, $0, 0
TAG722:
sw $4, 0($4)
mthi $4
lui $4, 10
sllv $3, $4, $4
TAG723:
lui $2, 14
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG724:
mthi $4
bltz $4, TAG725
multu $4, $4
sll $0, $0, 0
TAG725:
beq $4, $4, TAG726
sll $0, $0, 0
sra $3, $3, 4
lui $4, 8
TAG726:
mflo $4
multu $4, $4
mthi $4
xori $1, $4, 14
TAG727:
mthi $1
bgtz $1, TAG728
sh $1, 0($1)
div $1, $1
TAG728:
bne $1, $1, TAG729
mthi $1
blez $1, TAG729
mthi $1
TAG729:
lui $4, 10
beq $4, $1, TAG730
multu $4, $4
mthi $1
TAG730:
lui $2, 1
sll $0, $0, 0
sll $0, $0, 0
or $3, $2, $4
TAG731:
divu $3, $3
bgez $3, TAG732
lui $4, 11
beq $3, $3, TAG732
TAG732:
xori $4, $4, 2
sll $0, $0, 0
div $4, $4
mflo $4
TAG733:
div $4, $4
sllv $1, $4, $4
bgtz $1, TAG734
mult $4, $1
TAG734:
mfhi $4
bgez $4, TAG735
srl $1, $1, 11
bgtz $1, TAG735
TAG735:
slt $3, $1, $1
lw $4, 0($1)
lbu $3, 0($4)
sra $2, $3, 3
TAG736:
mult $2, $2
add $2, $2, $2
bltz $2, TAG737
sra $4, $2, 6
TAG737:
lui $1, 2
beq $1, $1, TAG738
srlv $3, $1, $4
blez $3, TAG738
TAG738:
sll $0, $0, 0
div $3, $3
mflo $4
sb $4, 0($4)
TAG739:
mfhi $1
lw $3, 0($1)
bgtz $1, TAG740
addiu $4, $3, 6
TAG740:
andi $1, $4, 12
bgtz $4, TAG741
sll $4, $4, 1
mtlo $1
TAG741:
beq $4, $4, TAG742
sh $4, -524($4)
addi $2, $4, 13
mtlo $4
TAG742:
mult $2, $2
sll $3, $2, 12
lbu $2, 0($2)
bgtz $3, TAG743
TAG743:
sb $2, 0($2)
beq $2, $2, TAG744
lui $1, 0
bgtz $2, TAG744
TAG744:
lbu $3, 0($1)
mthi $3
mfhi $4
sw $1, 0($1)
TAG745:
mtlo $4
srl $3, $4, 8
multu $3, $4
sw $4, 0($3)
TAG746:
mult $3, $3
bne $3, $3, TAG747
sh $3, 0($3)
lui $1, 2
TAG747:
sll $0, $0, 0
sll $4, $1, 10
lui $2, 7
mtlo $1
TAG748:
mtlo $2
sll $0, $0, 0
mthi $2
mfhi $2
TAG749:
blez $2, TAG750
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop