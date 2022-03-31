ori $1, $0, 1
ori $2, $0, 0
ori $3, $0, 4
ori $4, $0, 12
sw $4, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $1, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $1, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $4, 124($0)
lbu $1, 0($2)
div $1, $1
mfhi $1
mflo $2
TAG1:
lbu $1, 0($2)
slti $4, $1, 0
blez $1, TAG2
sllv $3, $2, $4
TAG2:
sb $3, 0($3)
bne $3, $3, TAG3
slt $1, $3, $3
lui $1, 14
TAG3:
bne $1, $1, TAG4
sll $0, $0, 0
lui $3, 0
addu $3, $1, $3
TAG4:
lui $1, 3
ori $3, $1, 5
andi $3, $1, 3
bne $3, $3, TAG5
TAG5:
lui $3, 13
bgez $3, TAG6
sll $0, $0, 0
sw $3, 0($3)
TAG6:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
lhu $1, 0($4)
TAG7:
mtlo $1
mthi $1
mult $1, $1
addu $3, $1, $1
TAG8:
lui $3, 4
sll $0, $0, 0
addiu $2, $3, 11
mflo $2
TAG9:
addu $2, $2, $2
sll $0, $0, 0
bne $2, $2, TAG10
srl $3, $2, 5
TAG10:
blez $3, TAG11
mult $3, $3
sw $3, -4489($3)
blez $3, TAG11
TAG11:
and $4, $3, $3
lui $4, 6
sw $4, -4489($3)
lui $2, 1
TAG12:
mflo $3
lui $2, 9
addu $2, $2, $2
multu $2, $2
TAG13:
bgez $2, TAG14
slti $2, $2, 7
mflo $3
slti $4, $2, 10
TAG14:
divu $4, $4
mfhi $4
multu $4, $4
mult $4, $4
TAG15:
lui $1, 1
lw $2, 0($4)
mthi $4
bgez $2, TAG16
TAG16:
sra $2, $2, 3
lw $2, -6144($2)
bne $2, $2, TAG17
mflo $2
TAG17:
lui $3, 0
beq $3, $3, TAG18
slt $1, $2, $3
mfhi $3
TAG18:
mtlo $3
sll $1, $3, 12
mtlo $1
mult $3, $1
TAG19:
subu $1, $1, $1
lui $3, 1
sll $2, $3, 13
lui $1, 0
TAG20:
beq $1, $1, TAG21
sw $1, 0($1)
lw $3, 0($1)
sw $3, 0($3)
TAG21:
xori $3, $3, 10
beq $3, $3, TAG22
sll $0, $0, 0
mflo $4
TAG22:
lui $2, 10
and $4, $2, $4
divu $4, $2
sll $1, $4, 11
TAG23:
sb $1, 0($1)
mtlo $1
blez $1, TAG24
mflo $3
TAG24:
sw $3, 0($3)
mfhi $4
and $3, $4, $4
lw $1, 0($4)
TAG25:
lui $3, 13
mtlo $3
lui $1, 3
lui $1, 1
TAG26:
mthi $1
mfhi $1
addiu $3, $1, 9
mflo $2
TAG27:
divu $2, $2
srl $3, $2, 12
beq $2, $3, TAG28
mtlo $3
TAG28:
blez $3, TAG29
mfhi $2
subu $1, $2, $3
beq $2, $2, TAG29
TAG29:
mflo $4
mtlo $1
andi $1, $1, 1
lui $2, 1
TAG30:
blez $2, TAG31
div $2, $2
sll $0, $0, 0
divu $3, $3
TAG31:
beq $3, $3, TAG32
mfhi $1
bltz $1, TAG32
lw $1, 0($1)
TAG32:
subu $2, $1, $1
xor $3, $1, $1
mult $1, $1
lh $1, 0($2)
TAG33:
slti $4, $1, 6
mult $1, $1
addiu $4, $4, 4
sb $4, 0($4)
TAG34:
mthi $4
lui $2, 14
sltu $4, $2, $2
mflo $3
TAG35:
lui $1, 3
mult $3, $3
mflo $1
lbu $1, 0($1)
TAG36:
bne $1, $1, TAG37
mthi $1
sra $2, $1, 8
multu $1, $1
TAG37:
lw $3, 0($2)
mult $2, $2
mfhi $3
blez $3, TAG38
TAG38:
addiu $1, $3, 2
mthi $3
srav $1, $1, $3
lb $4, 0($1)
TAG39:
sb $4, 0($4)
multu $4, $4
sltu $4, $4, $4
lb $1, 0($4)
TAG40:
mult $1, $1
mult $1, $1
sw $1, 0($1)
bgez $1, TAG41
TAG41:
lui $3, 8
lui $1, 0
mthi $1
mult $3, $1
TAG42:
xor $2, $1, $1
bgtz $2, TAG43
lb $2, 0($2)
mfhi $2
TAG43:
mthi $2
mthi $2
mult $2, $2
mflo $1
TAG44:
andi $4, $1, 6
sltu $4, $1, $4
lh $3, 0($1)
lui $2, 15
TAG45:
lui $4, 0
sra $1, $2, 4
sll $0, $0, 0
sll $0, $0, 0
TAG46:
sll $0, $0, 0
mthi $1
xori $2, $1, 3
bltz $1, TAG47
TAG47:
mthi $2
mfhi $1
mthi $1
bltz $1, TAG48
TAG48:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG49
subu $4, $1, $1
TAG49:
mtlo $4
sh $4, 0($4)
bne $4, $4, TAG50
sb $4, 0($4)
TAG50:
multu $4, $4
lh $1, 0($4)
mthi $4
mthi $1
TAG51:
bgtz $1, TAG52
sra $2, $1, 2
slti $1, $1, 3
lb $2, 0($2)
TAG52:
lui $4, 2
sll $0, $0, 0
addiu $3, $2, 15
sb $4, 0($3)
TAG53:
bne $3, $3, TAG54
mthi $3
bne $3, $3, TAG54
or $3, $3, $3
TAG54:
mult $3, $3
lb $4, 0($3)
sb $4, 0($3)
srav $1, $3, $4
TAG55:
sltu $1, $1, $1
lui $4, 8
sw $4, 0($1)
slti $3, $1, 11
TAG56:
mflo $3
mult $3, $3
multu $3, $3
lb $3, -225($3)
TAG57:
beq $3, $3, TAG58
lui $1, 15
bgez $3, TAG58
mthi $1
TAG58:
lui $1, 14
beq $1, $1, TAG59
sllv $2, $1, $1
bne $1, $1, TAG59
TAG59:
sll $0, $0, 0
mfhi $4
mflo $3
lui $3, 5
TAG60:
sll $0, $0, 0
multu $3, $3
lui $1, 5
sw $1, 0($4)
TAG61:
bltz $1, TAG62
sll $0, $0, 0
sll $0, $0, 0
sltiu $4, $1, 5
TAG62:
addi $4, $4, 8
slti $4, $4, 15
bltz $4, TAG63
lui $2, 7
TAG63:
bgez $2, TAG64
subu $3, $2, $2
lui $3, 11
lw $1, 0($2)
TAG64:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
addu $1, $1, $1
TAG65:
srav $3, $1, $1
bne $3, $1, TAG66
nor $3, $3, $1
sll $0, $0, 0
TAG66:
divu $2, $2
sll $0, $0, 0
slti $2, $1, 2
multu $1, $2
TAG67:
mflo $3
lui $1, 11
bgez $2, TAG68
lw $4, 0($3)
TAG68:
mfhi $4
lui $2, 9
lbu $3, 0($4)
multu $2, $3
TAG69:
mflo $4
srav $2, $4, $3
srl $3, $2, 5
lbu $2, 0($2)
TAG70:
mflo $2
bgtz $2, TAG71
sb $2, 0($2)
lbu $2, 0($2)
TAG71:
mtlo $2
lh $4, 0($2)
mtlo $2
mflo $3
TAG72:
multu $3, $3
srlv $2, $3, $3
sltiu $2, $2, 11
andi $2, $2, 4
TAG73:
sw $2, 0($2)
bne $2, $2, TAG74
multu $2, $2
mtlo $2
TAG74:
mult $2, $2
lw $3, 0($2)
bne $2, $3, TAG75
mthi $2
TAG75:
lw $1, 0($3)
beq $3, $1, TAG76
lh $1, 0($3)
mthi $3
TAG76:
mflo $4
sh $1, 0($4)
mflo $3
mthi $3
TAG77:
addu $3, $3, $3
beq $3, $3, TAG78
lb $1, 0($3)
sh $1, 0($1)
TAG78:
mtlo $1
mthi $1
sltu $3, $1, $1
sw $1, 0($1)
TAG79:
mult $3, $3
slt $1, $3, $3
bne $3, $3, TAG80
lui $4, 0
TAG80:
blez $4, TAG81
mult $4, $4
lhu $4, 0($4)
mtlo $4
TAG81:
multu $4, $4
and $4, $4, $4
andi $3, $4, 11
sw $3, 0($4)
TAG82:
sltu $3, $3, $3
and $3, $3, $3
sw $3, 0($3)
mult $3, $3
TAG83:
lui $2, 14
bgez $3, TAG84
mfhi $4
mtlo $4
TAG84:
bgez $4, TAG85
sltu $2, $4, $4
bne $2, $4, TAG85
divu $2, $4
TAG85:
blez $2, TAG86
sh $2, 0($2)
multu $2, $2
multu $2, $2
TAG86:
lhu $1, 0($2)
lui $1, 4
subu $2, $1, $1
mthi $1
TAG87:
bne $2, $2, TAG88
lui $3, 13
lui $2, 13
and $4, $2, $3
TAG88:
mthi $4
lui $4, 13
lui $2, 10
sll $0, $0, 0
TAG89:
lui $4, 12
sll $0, $0, 0
xori $4, $2, 13
mtlo $4
TAG90:
lui $1, 10
lui $1, 13
blez $1, TAG91
lui $4, 15
TAG91:
bgtz $4, TAG92
multu $4, $4
lui $1, 4
bne $1, $4, TAG92
TAG92:
mflo $1
lw $1, 0($1)
bne $1, $1, TAG93
lui $2, 2
TAG93:
sll $0, $0, 0
mfhi $2
bne $2, $2, TAG94
mthi $2
TAG94:
mflo $3
mfhi $4
lui $2, 11
nor $1, $2, $4
TAG95:
divu $1, $1
div $1, $1
mflo $2
bne $1, $2, TAG96
TAG96:
divu $2, $2
mflo $3
sb $2, 0($2)
mfhi $3
TAG97:
mfhi $4
mfhi $4
lhu $4, 0($4)
mfhi $2
TAG98:
slt $3, $2, $2
mflo $4
mfhi $4
bgez $4, TAG99
TAG99:
multu $4, $4
bne $4, $4, TAG100
multu $4, $4
multu $4, $4
TAG100:
bne $4, $4, TAG101
mthi $4
sh $4, 0($4)
bltz $4, TAG101
TAG101:
lw $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
mthi $4
TAG102:
lui $2, 1
sll $0, $0, 0
sll $0, $0, 0
div $4, $2
TAG103:
srlv $4, $2, $2
xori $4, $4, 2
beq $4, $2, TAG104
sll $0, $0, 0
TAG104:
mthi $4
beq $4, $4, TAG105
mfhi $4
lb $4, 0($4)
TAG105:
bgtz $4, TAG106
mfhi $1
mtlo $4
lbu $1, 0($4)
TAG106:
blez $1, TAG107
and $2, $1, $1
div $1, $1
mthi $2
TAG107:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
bgtz $2, TAG108
TAG108:
lui $2, 4
mtlo $2
sll $0, $0, 0
and $4, $2, $2
TAG109:
div $4, $4
srl $3, $4, 1
lui $4, 0
bne $3, $4, TAG110
TAG110:
lh $1, 0($4)
mfhi $3
mthi $1
beq $1, $1, TAG111
TAG111:
lui $1, 6
bne $3, $3, TAG112
lb $1, 0($3)
mthi $1
TAG112:
lbu $1, 0($1)
lui $3, 0
slti $4, $3, 15
mfhi $4
TAG113:
bne $4, $4, TAG114
nor $3, $4, $4
blez $3, TAG114
mthi $3
TAG114:
mfhi $2
bne $3, $2, TAG115
mfhi $3
sh $2, 1($2)
TAG115:
bne $3, $3, TAG116
multu $3, $3
mflo $4
div $4, $3
TAG116:
bne $4, $4, TAG117
lb $3, 0($4)
sb $3, 0($4)
bltz $4, TAG117
TAG117:
subu $1, $3, $3
mtlo $1
mflo $1
lb $4, 1($3)
TAG118:
sll $0, $0, 0
bltz $3, TAG119
mfhi $2
bgtz $2, TAG119
TAG119:
mult $2, $2
bgez $2, TAG120
mult $2, $2
lh $4, 0($2)
TAG120:
lui $1, 13
lui $1, 5
lh $4, 1($4)
lui $3, 13
TAG121:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG122
mflo $1
TAG122:
sh $1, 0($1)
srav $1, $1, $1
mfhi $4
sb $4, 0($1)
TAG123:
sh $4, 0($4)
lb $1, 0($4)
lh $3, 0($4)
lui $4, 11
TAG124:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
mfhi $2
TAG125:
sll $0, $0, 0
slti $1, $2, 15
mflo $2
sh $2, 0($2)
TAG126:
bne $2, $2, TAG127
sb $2, 0($2)
mtlo $2
mthi $2
TAG127:
nor $1, $2, $2
mthi $1
sra $1, $2, 11
bne $1, $1, TAG128
TAG128:
lui $1, 4
lui $4, 9
sll $0, $0, 0
lui $2, 7
TAG129:
sll $0, $0, 0
divu $2, $2
beq $2, $2, TAG130
sll $0, $0, 0
TAG130:
mult $2, $2
subu $2, $2, $2
mult $2, $2
bne $2, $2, TAG131
TAG131:
lui $1, 4
mflo $1
bltz $1, TAG132
lui $2, 9
TAG132:
sll $0, $0, 0
sltiu $1, $1, 6
sll $0, $0, 0
sb $1, 0($1)
TAG133:
mult $1, $1
mfhi $2
mult $1, $2
bltz $2, TAG134
TAG134:
mult $2, $2
mflo $1
lui $3, 7
beq $3, $1, TAG135
TAG135:
mflo $3
bgez $3, TAG136
mfhi $1
mflo $2
TAG136:
lui $3, 2
mtlo $3
multu $3, $2
multu $2, $2
TAG137:
addiu $3, $3, 9
lui $4, 12
beq $3, $4, TAG138
lui $3, 5
TAG138:
lui $1, 1
mfhi $4
srl $2, $3, 3
and $1, $2, $2
TAG139:
lui $1, 7
blez $1, TAG140
sll $0, $0, 0
sll $0, $0, 0
TAG140:
lui $1, 9
lui $3, 5
mthi $3
slti $4, $3, 0
TAG141:
mult $4, $4
bne $4, $4, TAG142
mthi $4
srav $2, $4, $4
TAG142:
bltz $2, TAG143
lui $4, 8
lui $2, 5
sll $0, $0, 0
TAG143:
subu $4, $2, $2
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
TAG144:
divu $3, $3
mthi $3
subu $1, $3, $3
lui $3, 7
TAG145:
bgtz $3, TAG146
lui $2, 8
mthi $3
slti $3, $3, 12
TAG146:
ori $3, $3, 9
mthi $3
addu $4, $3, $3
bne $4, $4, TAG147
TAG147:
sll $0, $0, 0
subu $1, $4, $4
sh $1, 0($1)
mflo $2
TAG148:
lb $4, 0($2)
divu $4, $2
xori $4, $2, 13
sltu $2, $2, $2
TAG149:
lui $1, 0
multu $2, $2
bne $2, $1, TAG150
mult $1, $1
TAG150:
bne $1, $1, TAG151
mflo $2
sw $2, 0($2)
bltz $1, TAG151
TAG151:
lui $1, 7
lh $1, 0($2)
sb $2, 0($1)
sw $1, 0($2)
TAG152:
blez $1, TAG153
sll $3, $1, 1
ori $2, $1, 14
sw $1, 0($1)
TAG153:
mult $2, $2
lui $3, 9
sub $1, $3, $2
srlv $3, $1, $1
TAG154:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG155:
lui $3, 10
sll $0, $0, 0
bgtz $1, TAG156
multu $3, $3
TAG156:
bgez $1, TAG157
xori $2, $1, 5
beq $2, $1, TAG157
ori $1, $1, 13
TAG157:
bgtz $1, TAG158
addiu $2, $1, 3
mtlo $2
mflo $1
TAG158:
bne $1, $1, TAG159
mult $1, $1
ori $3, $1, 2
mflo $2
TAG159:
mult $2, $2
mfhi $4
lbu $2, 0($2)
lb $2, 0($2)
TAG160:
mtlo $2
mfhi $3
beq $2, $2, TAG161
lb $3, 0($2)
TAG161:
mtlo $3
mflo $4
lui $1, 3
beq $3, $1, TAG162
TAG162:
div $1, $1
srl $3, $1, 10
lb $1, -192($3)
bne $1, $3, TAG163
TAG163:
lui $2, 6
sll $3, $1, 9
mthi $1
mthi $2
TAG164:
mult $3, $3
bgtz $3, TAG165
xor $1, $3, $3
lui $2, 6
TAG165:
addiu $4, $2, 12
mfhi $4
sll $0, $0, 0
mflo $3
TAG166:
bgtz $3, TAG167
multu $3, $3
beq $3, $3, TAG167
mult $3, $3
TAG167:
xor $1, $3, $3
mflo $1
beq $1, $1, TAG168
mfhi $2
TAG168:
bgtz $2, TAG169
nor $3, $2, $2
beq $3, $2, TAG169
srlv $2, $2, $3
TAG169:
slt $2, $2, $2
lbu $2, 0($2)
mflo $3
bltz $2, TAG170
TAG170:
and $1, $3, $3
andi $1, $1, 13
beq $1, $1, TAG171
mthi $3
TAG171:
sw $1, 0($1)
sh $1, 0($1)
mtlo $1
mfhi $4
TAG172:
sb $4, 0($4)
mflo $3
mtlo $3
sra $4, $3, 5
TAG173:
beq $4, $4, TAG174
mtlo $4
mult $4, $4
srlv $4, $4, $4
TAG174:
blez $4, TAG175
mthi $4
multu $4, $4
bne $4, $4, TAG175
TAG175:
mult $4, $4
bltz $4, TAG176
multu $4, $4
beq $4, $4, TAG176
TAG176:
mtlo $4
bgez $4, TAG177
mult $4, $4
beq $4, $4, TAG177
TAG177:
mflo $1
bne $1, $1, TAG178
multu $1, $1
bgtz $1, TAG178
TAG178:
mtlo $1
mfhi $2
sb $2, 0($2)
andi $3, $1, 3
TAG179:
mflo $3
mfhi $2
lui $1, 10
beq $1, $2, TAG180
TAG180:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG181
TAG181:
addu $3, $1, $1
bgez $1, TAG182
sll $0, $0, 0
and $2, $4, $3
TAG182:
srlv $2, $2, $2
mfhi $2
sll $0, $0, 0
sra $3, $2, 3
TAG183:
mflo $4
mtlo $4
bne $4, $4, TAG184
sll $0, $0, 0
TAG184:
mthi $4
lb $2, 0($4)
mfhi $2
beq $4, $4, TAG185
TAG185:
lw $2, 0($2)
lui $3, 7
lb $1, 0($2)
subu $3, $2, $3
TAG186:
addiu $3, $3, 13
multu $3, $3
mtlo $3
or $3, $3, $3
TAG187:
mflo $1
bgtz $1, TAG188
mfhi $3
lui $3, 7
TAG188:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG189:
beq $3, $3, TAG190
multu $3, $3
mflo $3
bgtz $3, TAG190
TAG190:
sra $1, $3, 4
bne $3, $1, TAG191
slt $1, $1, $1
mthi $1
TAG191:
bgez $1, TAG192
sh $1, 0($1)
sb $1, 0($1)
lui $4, 5
TAG192:
sh $4, 0($4)
mult $4, $4
mtlo $4
srl $4, $4, 12
TAG193:
bne $4, $4, TAG194
lbu $3, 0($4)
blez $3, TAG194
andi $2, $3, 1
TAG194:
blez $2, TAG195
lh $1, 0($2)
mtlo $1
lw $4, 0($1)
TAG195:
lb $1, 0($4)
sltu $4, $4, $4
lui $2, 10
lui $3, 8
TAG196:
sll $0, $0, 0
mthi $4
or $2, $4, $3
lui $1, 15
TAG197:
mthi $1
mtlo $1
beq $1, $1, TAG198
srlv $2, $1, $1
TAG198:
lui $2, 2
beq $2, $2, TAG199
lui $1, 0
div $2, $2
TAG199:
lui $4, 1
mfhi $4
lui $4, 9
multu $1, $4
TAG200:
lui $4, 1
sllv $1, $4, $4
xor $4, $4, $1
multu $4, $4
TAG201:
lui $2, 14
bne $2, $4, TAG202
subu $4, $2, $2
mtlo $4
TAG202:
srl $1, $4, 4
mtlo $4
multu $4, $4
mfhi $1
TAG203:
mtlo $1
lui $2, 13
sll $0, $0, 0
lw $1, 0($1)
TAG204:
mthi $1
xori $3, $1, 10
lui $4, 9
addiu $3, $3, 15
TAG205:
addiu $1, $3, 9
mthi $3
mtlo $3
lbu $1, 0($3)
TAG206:
beq $1, $1, TAG207
lui $2, 14
lui $2, 6
bltz $2, TAG207
TAG207:
sll $0, $0, 0
lui $3, 10
sll $0, $0, 0
bgtz $3, TAG208
TAG208:
mtlo $3
mthi $3
bne $3, $3, TAG209
sll $0, $0, 0
TAG209:
blez $3, TAG210
div $3, $3
mult $3, $3
lui $4, 7
TAG210:
mflo $4
mfhi $1
mult $4, $4
sub $3, $4, $4
TAG211:
mtlo $3
mfhi $1
mthi $1
beq $1, $3, TAG212
TAG212:
sh $1, 0($1)
lui $1, 6
mthi $1
ori $4, $1, 4
TAG213:
sll $0, $0, 0
mtlo $2
bltz $4, TAG214
lui $2, 1
TAG214:
andi $1, $2, 8
sw $2, 0($1)
blez $2, TAG215
mtlo $2
TAG215:
mflo $2
mult $1, $1
sll $0, $0, 0
slti $1, $1, 15
TAG216:
beq $1, $1, TAG217
sll $3, $1, 1
bgez $1, TAG217
sh $3, 0($3)
TAG217:
bgez $3, TAG218
sh $3, 0($3)
mthi $3
mfhi $2
TAG218:
mfhi $4
lui $3, 9
mthi $2
lhu $1, 0($4)
TAG219:
lui $1, 7
sll $0, $0, 0
lbu $1, 0($4)
mthi $1
TAG220:
multu $1, $1
multu $1, $1
srl $4, $1, 3
lui $4, 11
TAG221:
beq $4, $4, TAG222
sll $0, $0, 0
bltz $4, TAG222
mult $4, $4
TAG222:
sll $0, $0, 0
mflo $2
ori $1, $2, 5
bne $4, $2, TAG223
TAG223:
lui $1, 8
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
TAG224:
bne $3, $3, TAG225
andi $4, $3, 15
bgez $4, TAG225
lb $4, 0($4)
TAG225:
ori $4, $4, 1
mthi $4
slti $2, $4, 9
mfhi $1
TAG226:
mthi $1
lui $1, 1
sll $0, $0, 0
mflo $3
TAG227:
sb $3, 0($3)
lui $3, 9
bgtz $3, TAG228
sllv $1, $3, $3
TAG228:
and $1, $1, $1
bltz $1, TAG229
mtlo $1
bne $1, $1, TAG229
TAG229:
mtlo $1
mfhi $1
multu $1, $1
addiu $2, $1, 4
TAG230:
bgez $2, TAG231
lb $3, 0($2)
lui $1, 7
sw $1, 0($1)
TAG231:
beq $1, $1, TAG232
lb $4, 0($1)
bne $4, $1, TAG232
lbu $2, 0($1)
TAG232:
lui $3, 15
bne $3, $3, TAG233
sll $0, $0, 0
bne $2, $2, TAG233
TAG233:
mflo $4
lbu $3, 0($2)
lui $1, 13
lbu $2, 0($4)
TAG234:
mult $2, $2
bne $2, $2, TAG235
mfhi $1
srl $4, $2, 11
TAG235:
sllv $3, $4, $4
and $3, $4, $3
andi $2, $3, 10
sh $3, 0($3)
TAG236:
lui $3, 13
mfhi $4
mflo $3
mthi $2
TAG237:
sh $3, 0($3)
bne $3, $3, TAG238
mult $3, $3
multu $3, $3
TAG238:
addiu $3, $3, 2
beq $3, $3, TAG239
sh $3, 0($3)
mfhi $4
TAG239:
lui $3, 13
lui $4, 5
sll $0, $0, 0
add $2, $1, $1
TAG240:
sh $2, 0($2)
bgtz $2, TAG241
lh $3, 0($2)
lbu $4, 0($3)
TAG241:
mthi $4
sb $4, 0($4)
sub $1, $4, $4
add $1, $1, $4
TAG242:
sll $1, $1, 9
bgez $1, TAG243
mult $1, $1
mthi $1
TAG243:
mfhi $4
bgez $4, TAG244
sra $2, $1, 1
bne $1, $4, TAG244
TAG244:
mthi $2
lui $1, 7
mtlo $1
divu $1, $1
TAG245:
sll $0, $0, 0
mthi $2
mthi $1
mthi $1
TAG246:
addiu $3, $2, 0
sltiu $4, $2, 0
bgtz $3, TAG247
multu $2, $3
TAG247:
mfhi $1
lh $3, 0($4)
mfhi $4
mflo $1
TAG248:
mfhi $2
sub $2, $2, $2
sra $1, $2, 5
mfhi $1
TAG249:
mthi $1
sra $3, $1, 5
bne $1, $3, TAG250
sh $1, 0($3)
TAG250:
mtlo $3
andi $1, $3, 12
sb $1, 0($1)
bgez $1, TAG251
TAG251:
lw $4, 0($1)
mflo $3
bltz $1, TAG252
lh $3, 0($3)
TAG252:
andi $1, $3, 1
bne $3, $1, TAG253
addi $2, $3, 0
beq $3, $1, TAG253
TAG253:
lui $4, 1
sll $0, $0, 0
sltiu $3, $2, 12
mtlo $2
TAG254:
sltu $4, $3, $3
mtlo $4
lh $4, 0($4)
lb $1, 0($3)
TAG255:
bgez $1, TAG256
and $4, $1, $1
srl $2, $4, 14
addi $1, $4, 11
TAG256:
beq $1, $1, TAG257
lui $4, 12
slt $3, $1, $1
slt $4, $3, $4
TAG257:
lui $2, 11
lui $3, 3
or $1, $2, $3
bne $3, $3, TAG258
TAG258:
mthi $1
mfhi $2
bne $2, $2, TAG259
mflo $1
TAG259:
bltz $1, TAG260
mfhi $2
lui $4, 3
mfhi $4
TAG260:
sll $0, $0, 0
beq $4, $4, TAG261
sll $0, $0, 0
mtlo $3
TAG261:
addiu $3, $3, 7
or $4, $3, $3
sll $0, $0, 0
mflo $2
TAG262:
bne $2, $2, TAG263
mult $2, $2
lui $1, 7
mthi $2
TAG263:
divu $1, $1
mtlo $1
blez $1, TAG264
lui $4, 3
TAG264:
sll $0, $0, 0
lbu $2, 0($2)
xori $1, $2, 8
lui $3, 13
TAG265:
sll $0, $0, 0
bgez $3, TAG266
lui $4, 1
lh $2, 0($2)
TAG266:
xor $2, $2, $2
lw $2, 0($2)
bltz $2, TAG267
addu $4, $2, $2
TAG267:
bne $4, $4, TAG268
div $4, $4
mthi $4
bne $4, $4, TAG268
TAG268:
lui $3, 8
andi $4, $4, 3
multu $4, $4
mfhi $2
TAG269:
bne $2, $2, TAG270
mtlo $2
bgtz $2, TAG270
lbu $1, 0($2)
TAG270:
beq $1, $1, TAG271
sb $1, 0($1)
mthi $1
mthi $1
TAG271:
sw $1, 0($1)
beq $1, $1, TAG272
subu $1, $1, $1
nor $4, $1, $1
TAG272:
mflo $2
mflo $4
sw $4, 0($2)
andi $1, $2, 13
TAG273:
mflo $3
mult $1, $1
mfhi $3
bltz $1, TAG274
TAG274:
slti $2, $3, 5
mthi $3
lui $2, 7
subu $3, $3, $2
TAG275:
beq $3, $3, TAG276
addiu $4, $3, 4
lw $1, 0($3)
bgez $4, TAG276
TAG276:
sw $1, 0($1)
sh $1, 0($1)
multu $1, $1
lh $4, 0($1)
TAG277:
sh $4, 0($4)
addiu $1, $4, 13
mtlo $1
multu $4, $4
TAG278:
bne $1, $1, TAG279
lb $3, 0($1)
beq $1, $1, TAG279
andi $2, $3, 7
TAG279:
slti $2, $2, 3
mfhi $1
beq $1, $2, TAG280
sra $1, $2, 3
TAG280:
lbu $2, 0($1)
xori $2, $1, 10
ori $3, $2, 13
beq $3, $3, TAG281
TAG281:
lui $4, 2
beq $4, $4, TAG282
div $4, $3
mfhi $1
TAG282:
mfhi $2
lui $1, 3
mtlo $1
mthi $1
TAG283:
multu $1, $1
subu $1, $1, $1
lui $1, 11
mult $1, $1
TAG284:
sll $0, $0, 0
lui $2, 9
div $1, $1
multu $1, $2
TAG285:
bgez $2, TAG286
mtlo $2
andi $1, $2, 3
mthi $2
TAG286:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
beq $1, $1, TAG287
TAG287:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
subu $3, $1, $2
TAG288:
bgez $3, TAG289
mtlo $3
lui $4, 10
sll $1, $3, 6
TAG289:
bgtz $1, TAG290
addu $4, $1, $1
lh $2, 0($1)
bgez $2, TAG290
TAG290:
div $2, $2
blez $2, TAG291
sll $3, $2, 3
sltu $2, $3, $3
TAG291:
bne $2, $2, TAG292
sh $2, 0($2)
bne $2, $2, TAG292
sw $2, 0($2)
TAG292:
slti $1, $2, 15
sw $2, 0($2)
sb $2, 0($1)
nor $1, $2, $1
TAG293:
mflo $3
multu $3, $3
bne $1, $3, TAG294
mult $3, $3
TAG294:
lb $2, 0($3)
srl $3, $3, 6
lhu $1, 0($2)
sb $1, 0($2)
TAG295:
mtlo $1
mtlo $1
lh $4, 0($1)
beq $1, $1, TAG296
TAG296:
lbu $2, 0($4)
mtlo $4
blez $2, TAG297
lbu $4, 0($4)
TAG297:
lui $3, 15
mfhi $2
bne $4, $4, TAG298
multu $2, $2
TAG298:
sw $2, 0($2)
lh $2, 0($2)
ori $4, $2, 8
addi $3, $2, 7
TAG299:
bltz $3, TAG300
andi $3, $3, 2
multu $3, $3
bgtz $3, TAG300
TAG300:
mtlo $3
srlv $2, $3, $3
mthi $3
mthi $2
TAG301:
sra $2, $2, 7
srav $3, $2, $2
xori $1, $3, 11
sub $1, $1, $2
TAG302:
bgtz $1, TAG303
sltu $1, $1, $1
addiu $2, $1, 9
bgez $1, TAG303
TAG303:
andi $2, $2, 4
slti $1, $2, 14
bne $1, $2, TAG304
lui $4, 8
TAG304:
srav $3, $4, $4
lui $2, 11
mflo $4
beq $3, $4, TAG305
TAG305:
andi $2, $4, 6
mfhi $3
nor $3, $4, $3
mtlo $4
TAG306:
mult $3, $3
mult $3, $3
mthi $3
sw $3, 3($3)
TAG307:
bne $3, $3, TAG308
lbu $1, 3($3)
mthi $1
sra $3, $3, 2
TAG308:
lui $3, 13
srl $2, $3, 15
mflo $4
subu $3, $3, $2
TAG309:
srl $1, $3, 15
srav $1, $1, $3
addi $4, $1, 5
mtlo $4
TAG310:
lbu $1, 0($4)
or $4, $4, $1
addiu $1, $4, 1
mfhi $2
TAG311:
sll $0, $0, 0
lui $1, 11
mthi $1
bltz $1, TAG312
TAG312:
sll $0, $0, 0
bltz $1, TAG313
sll $0, $0, 0
sh $1, -253($2)
TAG313:
mtlo $2
srl $3, $2, 5
bne $2, $3, TAG314
div $3, $2
TAG314:
beq $3, $3, TAG315
lui $4, 5
bgez $3, TAG315
div $4, $3
TAG315:
blez $4, TAG316
divu $4, $4
sll $0, $0, 0
bne $4, $4, TAG316
TAG316:
multu $4, $4
bne $4, $4, TAG317
mthi $4
sltiu $3, $4, 0
TAG317:
lbu $4, 0($3)
mthi $4
sw $4, 0($3)
sll $4, $4, 14
TAG318:
slt $3, $4, $4
mult $3, $3
mflo $3
lui $4, 3
TAG319:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
lui $4, 0
TAG320:
slt $3, $4, $4
sb $3, 0($3)
lh $3, 0($4)
bgtz $3, TAG321
TAG321:
lui $2, 1
blez $3, TAG322
mflo $2
mflo $4
TAG322:
mfhi $4
and $2, $4, $4
bne $4, $2, TAG323
add $3, $4, $2
TAG323:
mfhi $1
multu $1, $3
sub $4, $1, $1
mflo $3
TAG324:
bltz $3, TAG325
srl $1, $3, 6
beq $1, $3, TAG325
lhu $4, 0($3)
TAG325:
mfhi $4
sra $1, $4, 8
mthi $4
lui $1, 8
TAG326:
beq $1, $1, TAG327
lui $3, 6
mult $1, $3
mflo $2
TAG327:
sll $2, $2, 0
or $2, $2, $2
lui $1, 12
sllv $4, $2, $2
TAG328:
subu $2, $4, $4
lui $4, 11
mflo $3
mthi $4
TAG329:
xor $3, $3, $3
beq $3, $3, TAG330
srl $4, $3, 4
mtlo $4
TAG330:
mfhi $2
sll $0, $0, 0
beq $4, $4, TAG331
mtlo $2
TAG331:
or $3, $4, $4
xori $4, $4, 4
sh $3, 0($4)
lh $2, 0($3)
TAG332:
lhu $2, 0($2)
beq $2, $2, TAG333
mfhi $3
mult $2, $3
TAG333:
mfhi $4
sll $0, $0, 0
ori $1, $3, 5
sll $0, $0, 0
TAG334:
mfhi $4
beq $4, $4, TAG335
lui $4, 3
multu $4, $4
TAG335:
srav $3, $4, $4
bne $3, $4, TAG336
mthi $3
sll $2, $4, 6
TAG336:
sll $0, $0, 0
slti $2, $2, 14
lui $1, 9
lui $3, 4
TAG337:
mtlo $3
srl $3, $3, 11
sh $3, 0($3)
ori $2, $3, 15
TAG338:
sh $2, -143($2)
lui $2, 13
beq $2, $2, TAG339
sll $0, $0, 0
TAG339:
mflo $1
bgtz $2, TAG340
lui $1, 0
andi $1, $2, 11
TAG340:
addu $3, $1, $1
lh $3, 0($1)
mtlo $3
lui $3, 5
TAG341:
mult $3, $3
lui $4, 2
blez $3, TAG342
mult $4, $3
TAG342:
srav $1, $4, $4
sll $0, $0, 0
beq $4, $4, TAG343
mthi $4
TAG343:
addiu $2, $4, 15
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG344:
sll $0, $0, 0
addiu $4, $4, 7
mflo $3
mtlo $4
TAG345:
lbu $4, 0($3)
lb $3, 0($3)
bne $3, $3, TAG346
and $3, $3, $4
TAG346:
sra $2, $3, 6
addi $4, $3, 7
mfhi $2
lbu $1, 0($3)
TAG347:
sll $0, $0, 0
and $3, $4, $1
sh $4, -143($1)
lui $2, 7
TAG348:
blez $2, TAG349
lui $2, 8
lui $1, 5
srl $4, $2, 4
TAG349:
or $4, $4, $4
sll $0, $0, 0
div $1, $4
bgez $4, TAG350
TAG350:
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
beq $1, $1, TAG351
TAG351:
sll $0, $0, 0
sll $0, $0, 0
and $3, $2, $1
sll $0, $0, 0
TAG352:
mfhi $4
lbu $1, 0($4)
lui $2, 13
bltz $4, TAG353
TAG353:
mflo $4
mflo $1
sll $0, $0, 0
bgtz $2, TAG354
TAG354:
srav $1, $4, $4
subu $1, $1, $4
beq $4, $1, TAG355
lbu $3, 1($1)
TAG355:
sb $3, 0($3)
srl $1, $3, 14
sb $1, 0($3)
sra $3, $3, 2
TAG356:
mthi $3
bgez $3, TAG357
sb $3, 0($3)
mtlo $3
TAG357:
beq $3, $3, TAG358
mflo $3
sh $3, 0($3)
mfhi $3
TAG358:
sb $3, 0($3)
blez $3, TAG359
mflo $1
mult $1, $1
TAG359:
bne $1, $1, TAG360
addu $4, $1, $1
xori $1, $4, 12
mtlo $1
TAG360:
divu $1, $1
mthi $1
div $1, $1
sb $1, 0($1)
TAG361:
subu $4, $1, $1
sh $1, 0($4)
mthi $1
sw $4, 0($4)
TAG362:
lbu $1, 0($4)
lw $2, 0($4)
mtlo $4
multu $4, $4
TAG363:
mthi $2
lh $4, 0($2)
lb $2, 0($4)
lui $3, 6
TAG364:
bltz $3, TAG365
sll $0, $0, 0
sltiu $3, $3, 9
multu $3, $3
TAG365:
xor $4, $3, $3
mfhi $2
lhu $4, 0($3)
lh $1, 0($2)
TAG366:
lb $2, 0($1)
bltz $2, TAG367
lw $1, 0($1)
subu $4, $2, $1
TAG367:
bne $4, $4, TAG368
addi $2, $4, 4
subu $1, $4, $4
mthi $2
TAG368:
sh $1, 0($1)
addi $3, $1, 2
mflo $1
div $3, $3
TAG369:
srl $4, $1, 10
nor $3, $4, $4
bgez $3, TAG370
sb $1, 1($3)
TAG370:
bgtz $3, TAG371
sw $3, 1($3)
divu $3, $3
lui $3, 1
TAG371:
bne $3, $3, TAG372
sll $0, $0, 0
beq $4, $4, TAG372
addi $4, $4, 14
TAG372:
lb $4, 0($4)
lb $1, 0($4)
sltiu $1, $1, 8
mtlo $1
TAG373:
mthi $1
bltz $1, TAG374
multu $1, $1
bltz $1, TAG374
TAG374:
mthi $1
ori $2, $1, 14
mult $2, $2
or $3, $1, $1
TAG375:
sh $3, 0($3)
mult $3, $3
slt $2, $3, $3
mtlo $2
TAG376:
sw $2, 0($2)
lw $4, 0($2)
multu $2, $2
mtlo $4
TAG377:
ori $2, $4, 13
bltz $4, TAG378
addiu $2, $4, 1
lbu $2, 0($2)
TAG378:
mult $2, $2
and $1, $2, $2
mthi $2
beq $2, $2, TAG379
TAG379:
sb $1, 0($1)
lh $3, 0($1)
lui $3, 1
lui $1, 8
TAG380:
div $1, $1
multu $1, $1
mtlo $1
mflo $1
TAG381:
multu $1, $1
mtlo $1
addiu $4, $1, 15
mflo $2
TAG382:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG383:
mflo $4
multu $4, $4
blez $4, TAG384
sll $0, $0, 0
TAG384:
lui $2, 6
mult $4, $4
sll $0, $0, 0
lui $1, 3
TAG385:
mfhi $3
divu $1, $3
mtlo $3
mfhi $1
TAG386:
sw $1, 0($1)
beq $1, $1, TAG387
mtlo $1
mflo $2
TAG387:
xor $4, $2, $2
mthi $2
multu $2, $2
mult $4, $4
TAG388:
slti $1, $4, 3
sltiu $3, $4, 4
mfhi $4
mult $1, $4
TAG389:
lui $2, 15
beq $2, $2, TAG390
lui $4, 1
mflo $1
TAG390:
sll $2, $1, 9
mthi $1
mthi $2
div $1, $1
TAG391:
subu $4, $2, $2
sh $4, -512($2)
sb $2, -512($2)
bne $2, $4, TAG392
TAG392:
lui $2, 14
bltz $2, TAG393
mtlo $2
bne $4, $4, TAG393
TAG393:
sll $0, $0, 0
bne $2, $2, TAG394
mult $2, $2
bne $2, $2, TAG394
TAG394:
multu $2, $2
mflo $2
sh $2, 0($2)
bne $2, $2, TAG395
TAG395:
mthi $2
mflo $4
sllv $1, $4, $4
bltz $4, TAG396
TAG396:
sb $1, 0($1)
srav $4, $1, $1
mfhi $4
mult $1, $1
TAG397:
mthi $4
lh $3, 0($4)
mfhi $1
bne $1, $1, TAG398
TAG398:
addiu $3, $1, 4
mfhi $1
ori $2, $1, 4
mflo $4
TAG399:
and $1, $4, $4
sw $1, 0($4)
bne $1, $1, TAG400
lui $3, 6
TAG400:
blez $3, TAG401
mfhi $1
bgtz $1, TAG401
mult $3, $1
TAG401:
sra $1, $1, 13
mthi $1
lhu $3, 0($1)
bgez $1, TAG402
TAG402:
sw $3, 0($3)
subu $3, $3, $3
add $1, $3, $3
mthi $3
TAG403:
beq $1, $1, TAG404
multu $1, $1
divu $1, $1
beq $1, $1, TAG404
TAG404:
mtlo $1
lbu $2, 0($1)
lui $3, 12
mfhi $4
TAG405:
bltz $4, TAG406
sw $4, 0($4)
bne $4, $4, TAG406
mthi $4
TAG406:
lhu $1, 0($4)
beq $1, $1, TAG407
addu $1, $4, $1
bltz $1, TAG407
TAG407:
mflo $2
sw $1, 0($1)
bne $2, $1, TAG408
lw $3, 0($1)
TAG408:
blez $3, TAG409
multu $3, $3
srl $4, $3, 6
sw $3, 0($3)
TAG409:
lui $1, 12
divu $4, $1
lui $1, 4
mthi $1
TAG410:
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
srl $4, $3, 6
TAG411:
bgez $4, TAG412
sh $4, -4096($4)
mtlo $4
bne $4, $4, TAG412
TAG412:
mfhi $2
andi $2, $4, 13
slti $3, $4, 5
srlv $2, $4, $3
TAG413:
lui $4, 3
or $3, $2, $2
sb $3, -4096($2)
sra $1, $2, 2
TAG414:
mfhi $3
bne $1, $1, TAG415
sb $1, -1024($1)
lb $3, -1024($1)
TAG415:
beq $3, $3, TAG416
lb $4, 0($3)
bltz $3, TAG416
sh $4, 0($4)
TAG416:
sh $4, 0($4)
lui $1, 4
sll $3, $1, 0
multu $3, $4
TAG417:
sll $0, $0, 0
and $4, $3, $3
mfhi $1
mfhi $2
TAG418:
xor $3, $2, $2
beq $2, $3, TAG419
sh $3, 0($2)
add $4, $2, $3
TAG419:
sll $0, $0, 0
bne $3, $3, TAG420
lui $4, 2
bgtz $4, TAG420
TAG420:
mtlo $4
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG421:
lhu $4, 0($2)
lb $4, 0($4)
mflo $3
bne $4, $4, TAG422
TAG422:
mflo $4
srav $4, $3, $3
ori $2, $3, 4
bltz $2, TAG423
TAG423:
mfhi $2
lui $3, 6
lw $4, 0($2)
lui $2, 12
TAG424:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG425:
lui $2, 12
beq $1, $1, TAG426
subu $2, $2, $2
multu $1, $2
TAG426:
sllv $1, $2, $2
mult $1, $1
bltz $2, TAG427
slt $2, $1, $2
TAG427:
multu $2, $2
bne $2, $2, TAG428
mflo $2
lui $2, 15
TAG428:
srlv $1, $2, $2
sll $0, $0, 0
bltz $1, TAG429
mult $2, $2
TAG429:
beq $3, $3, TAG430
sll $0, $0, 0
divu $3, $3
mtlo $3
TAG430:
mflo $3
blez $3, TAG431
or $2, $3, $3
lui $1, 8
TAG431:
sll $0, $0, 0
mthi $1
sllv $3, $1, $1
lui $4, 5
TAG432:
mflo $3
sw $3, 0($3)
xori $1, $3, 1
sltiu $4, $3, 7
TAG433:
lbu $4, 0($4)
beq $4, $4, TAG434
xori $2, $4, 12
blez $4, TAG434
TAG434:
mult $2, $2
nor $2, $2, $2
beq $2, $2, TAG435
mtlo $2
TAG435:
sll $0, $0, 0
lw $2, 0($3)
lbu $3, 0($2)
lui $1, 10
TAG436:
sll $0, $0, 0
bgez $1, TAG437
mtlo $2
addi $3, $2, 9
TAG437:
mflo $4
bne $4, $4, TAG438
multu $3, $3
xori $3, $4, 10
TAG438:
mtlo $3
sltiu $4, $3, 7
divu $3, $3
lhu $2, 0($4)
TAG439:
srlv $4, $2, $2
lui $3, 12
sll $0, $0, 0
mthi $4
TAG440:
lbu $1, 0($4)
sh $1, 0($4)
mthi $1
mfhi $3
TAG441:
bne $3, $3, TAG442
mtlo $3
mthi $3
mtlo $3
TAG442:
lw $2, 0($3)
bltz $2, TAG443
mfhi $2
sw $2, 0($3)
TAG443:
sll $1, $2, 2
lui $2, 12
lhu $3, 0($1)
beq $1, $1, TAG444
TAG444:
lui $1, 2
bne $1, $3, TAG445
subu $1, $1, $3
mthi $1
TAG445:
sll $2, $1, 12
sll $0, $0, 0
mthi $1
divu $3, $1
TAG446:
lh $3, 0($3)
mult $3, $3
lui $3, 6
sll $0, $0, 0
TAG447:
sll $0, $0, 0
mtlo $3
beq $3, $3, TAG448
mflo $2
TAG448:
bltz $2, TAG449
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG449:
add $2, $4, $4
mult $4, $2
addi $2, $2, 9
mtlo $2
TAG450:
lbu $4, 0($2)
lui $2, 1
divu $2, $2
bne $2, $4, TAG451
TAG451:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG452:
subu $3, $3, $3
lw $4, 0($3)
lui $3, 10
mtlo $3
TAG453:
ori $3, $3, 0
ori $4, $3, 11
addu $3, $3, $4
multu $3, $3
TAG454:
mult $3, $3
sll $0, $0, 0
mfhi $1
mfhi $4
TAG455:
mtlo $4
sb $4, -400($4)
andi $2, $4, 0
beq $4, $4, TAG456
TAG456:
lh $4, 0($2)
lhu $2, 0($2)
blez $2, TAG457
sll $4, $4, 7
TAG457:
mtlo $4
divu $4, $4
bltz $4, TAG458
mthi $4
TAG458:
lui $3, 15
mfhi $4
divu $4, $4
sll $3, $4, 11
TAG459:
beq $3, $3, TAG460
sll $0, $0, 0
multu $2, $3
lb $4, 0($2)
TAG460:
srav $3, $4, $4
beq $3, $3, TAG461
lw $2, -18432($3)
mflo $3
TAG461:
bne $3, $3, TAG462
lui $3, 7
andi $1, $3, 12
andi $4, $3, 15
TAG462:
bne $4, $4, TAG463
mtlo $4
bgez $4, TAG463
andi $3, $4, 15
TAG463:
blez $3, TAG464
lui $1, 7
sllv $3, $3, $3
lui $2, 4
TAG464:
sll $0, $0, 0
bne $1, $1, TAG465
multu $2, $1
mthi $2
TAG465:
lui $4, 13
lui $3, 9
beq $4, $3, TAG466
div $4, $4
TAG466:
mflo $4
mtlo $3
sb $4, 0($4)
srl $2, $4, 9
TAG467:
lui $1, 3
beq $1, $1, TAG468
mfhi $2
lw $2, 0($2)
TAG468:
lui $2, 14
bltz $2, TAG469
sll $0, $0, 0
divu $2, $2
TAG469:
mflo $1
mflo $2
lbu $3, 0($2)
sb $2, 0($3)
TAG470:
lui $1, 5
lui $1, 13
mthi $3
div $1, $3
TAG471:
bgtz $1, TAG472
mthi $1
subu $4, $1, $1
sh $4, 0($1)
TAG472:
srl $2, $4, 1
lui $4, 2
lb $2, 0($2)
sll $0, $0, 0
TAG473:
addu $4, $3, $3
lhu $4, 0($4)
bltz $4, TAG474
mtlo $3
TAG474:
mtlo $4
ori $3, $4, 6
bne $4, $4, TAG475
sh $3, 0($3)
TAG475:
andi $4, $3, 5
divu $3, $3
sb $3, 0($3)
lui $3, 8
TAG476:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
lui $3, 5
TAG477:
beq $3, $3, TAG478
lui $2, 5
mtlo $3
sw $3, 0($2)
TAG478:
mult $2, $2
sll $4, $2, 3
divu $2, $4
lui $1, 14
TAG479:
subu $3, $1, $1
bne $1, $1, TAG480
lbu $2, 0($3)
mtlo $1
TAG480:
beq $2, $2, TAG481
sltu $4, $2, $2
multu $4, $2
lui $1, 8
TAG481:
sll $0, $0, 0
bne $1, $1, TAG482
divu $1, $1
sll $0, $0, 0
TAG482:
mfhi $3
lb $1, 0($3)
mflo $1
sw $3, 0($3)
TAG483:
blez $1, TAG484
addiu $3, $1, 4
ori $1, $1, 9
beq $1, $3, TAG484
TAG484:
mult $1, $1
blez $1, TAG485
lbu $3, 0($1)
mthi $3
TAG485:
addiu $1, $3, 4
lui $2, 9
andi $2, $2, 15
mtlo $1
TAG486:
lui $3, 13
mfhi $4
beq $4, $4, TAG487
sw $2, 0($2)
TAG487:
bgez $4, TAG488
mflo $2
srlv $3, $2, $4
bgez $3, TAG488
TAG488:
subu $2, $3, $3
sll $0, $0, 0
addu $4, $3, $3
mflo $1
TAG489:
bne $1, $1, TAG490
sb $1, 0($1)
sh $1, 0($1)
beq $1, $1, TAG490
TAG490:
and $1, $1, $1
addiu $3, $1, 13
multu $1, $1
beq $1, $3, TAG491
TAG491:
lui $1, 4
and $1, $3, $1
lb $1, 0($1)
lh $2, 0($1)
TAG492:
sltiu $2, $2, 2
lui $2, 8
lui $3, 10
sll $0, $0, 0
TAG493:
beq $3, $3, TAG494
slti $2, $3, 4
mtlo $2
mult $3, $2
TAG494:
mthi $2
bgez $2, TAG495
lui $4, 6
and $1, $4, $2
TAG495:
and $3, $1, $1
mfhi $2
mfhi $2
sw $2, 0($2)
TAG496:
blez $2, TAG497
slti $2, $2, 3
div $2, $2
mthi $2
TAG497:
beq $2, $2, TAG498
lui $1, 1
bne $1, $2, TAG498
mfhi $2
TAG498:
beq $2, $2, TAG499
sb $2, 0($2)
bne $2, $2, TAG499
xori $2, $2, 14
TAG499:
lui $2, 3
sra $4, $2, 15
sll $0, $0, 0
mfhi $4
TAG500:
mfhi $1
beq $4, $4, TAG501
andi $1, $4, 12
and $1, $1, $1
TAG501:
slt $1, $1, $1
mtlo $1
bgtz $1, TAG502
slt $1, $1, $1
TAG502:
lui $4, 13
lui $4, 0
mtlo $4
ori $3, $4, 15
TAG503:
blez $3, TAG504
subu $1, $3, $3
lhu $3, 0($1)
ori $4, $1, 0
TAG504:
mtlo $4
multu $4, $4
bgtz $4, TAG505
multu $4, $4
TAG505:
lui $1, 1
lui $1, 8
addu $2, $4, $1
mthi $1
TAG506:
bgez $2, TAG507
mflo $3
sh $3, 0($3)
addi $1, $2, 9
TAG507:
bgez $1, TAG508
mtlo $1
mflo $2
srav $2, $1, $2
TAG508:
slti $4, $2, 4
beq $2, $4, TAG509
lh $2, 0($4)
xori $1, $4, 6
TAG509:
sra $3, $1, 12
mfhi $2
srav $4, $1, $3
div $1, $1
TAG510:
mflo $3
sb $4, 0($3)
lhu $3, 0($4)
beq $3, $4, TAG511
TAG511:
srlv $1, $3, $3
multu $1, $1
mflo $3
lui $4, 1
TAG512:
mfhi $3
sll $0, $0, 0
mthi $3
beq $4, $4, TAG513
TAG513:
xori $2, $3, 6
lh $3, 0($3)
sll $1, $3, 1
blez $3, TAG514
TAG514:
andi $1, $1, 9
mtlo $1
xori $4, $1, 2
lui $3, 1
TAG515:
divu $3, $3
mfhi $4
mfhi $3
sll $4, $3, 11
TAG516:
addiu $1, $4, 2
bgez $4, TAG517
div $4, $1
bne $4, $1, TAG517
TAG517:
subu $1, $1, $1
multu $1, $1
mthi $1
mflo $1
TAG518:
mflo $2
and $4, $2, $2
mthi $4
mflo $2
TAG519:
lui $1, 5
mfhi $4
beq $2, $1, TAG520
lhu $3, 0($2)
TAG520:
sll $0, $0, 0
mthi $3
lhu $1, -1536($3)
divu $4, $1
TAG521:
mflo $4
sb $1, 0($4)
sh $4, -1536($1)
lui $2, 2
TAG522:
mthi $2
div $2, $2
mtlo $2
bgez $2, TAG523
TAG523:
mflo $1
beq $2, $2, TAG524
mthi $2
addiu $3, $1, 7
TAG524:
mflo $2
bltz $3, TAG525
slt $4, $2, $3
mfhi $4
TAG525:
lui $4, 15
addu $4, $4, $4
addiu $2, $4, 2
ori $4, $2, 5
TAG526:
lui $4, 7
sll $0, $0, 0
mfhi $2
mthi $4
TAG527:
mtlo $2
ori $2, $2, 4
mtlo $2
xori $4, $2, 6
TAG528:
mtlo $4
lui $2, 6
addiu $1, $4, 13
bne $4, $2, TAG529
TAG529:
sll $0, $0, 0
lui $3, 13
sll $0, $0, 0
mult $2, $1
TAG530:
mtlo $2
beq $2, $2, TAG531
mflo $1
lhu $2, 0($1)
TAG531:
or $2, $2, $2
lui $2, 3
sll $0, $0, 0
lui $2, 3
TAG532:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
subu $4, $2, $2
TAG533:
sb $4, 0($4)
slt $4, $4, $4
mult $4, $4
addu $3, $4, $4
TAG534:
slti $4, $3, 8
add $3, $3, $3
and $4, $3, $4
bgez $3, TAG535
TAG535:
sw $4, 0($4)
lui $1, 12
slti $2, $4, 3
mflo $1
TAG536:
beq $1, $1, TAG537
mfhi $3
add $4, $1, $3
bne $1, $4, TAG537
TAG537:
mthi $4
bgtz $4, TAG538
lui $3, 7
lui $1, 12
TAG538:
lui $1, 7
bne $1, $1, TAG539
lui $4, 14
mtlo $4
TAG539:
sll $0, $0, 0
andi $3, $4, 9
lui $2, 1
beq $3, $3, TAG540
TAG540:
and $1, $2, $2
mult $2, $2
div $1, $2
bltz $2, TAG541
TAG541:
mthi $1
bgtz $1, TAG542
lui $2, 11
blez $2, TAG542
TAG542:
mthi $2
mult $2, $2
bne $2, $2, TAG543
sllv $2, $2, $2
TAG543:
sll $0, $0, 0
bgez $2, TAG544
mthi $2
mflo $2
TAG544:
sll $0, $0, 0
bgtz $2, TAG545
mthi $2
lhu $4, 0($2)
TAG545:
sll $0, $0, 0
bne $4, $4, TAG546
sb $3, 0($3)
bgtz $4, TAG546
TAG546:
andi $1, $3, 11
sra $3, $1, 14
mfhi $1
nor $2, $1, $1
TAG547:
mtlo $2
beq $2, $2, TAG548
mfhi $4
lbu $2, 0($4)
TAG548:
mthi $2
sll $0, $0, 0
andi $1, $3, 2
bgtz $1, TAG549
TAG549:
mthi $1
bgtz $1, TAG550
lw $3, 0($1)
lh $2, 0($3)
TAG550:
bltz $2, TAG551
multu $2, $2
ori $4, $2, 14
ori $1, $4, 0
TAG551:
addiu $1, $1, 0
lui $4, 2
mtlo $1
lui $2, 2
TAG552:
beq $2, $2, TAG553
sltiu $3, $2, 13
lbu $1, 0($2)
bltz $1, TAG553
TAG553:
addu $4, $1, $1
blez $4, TAG554
ori $4, $4, 4
lhu $3, 0($1)
TAG554:
sb $3, 0($3)
sllv $3, $3, $3
beq $3, $3, TAG555
sll $4, $3, 9
TAG555:
lui $4, 0
lh $3, 0($4)
mfhi $2
mthi $4
TAG556:
sllv $2, $2, $2
mfhi $2
bgtz $2, TAG557
sltiu $4, $2, 3
TAG557:
mflo $4
mfhi $2
addiu $2, $4, 1
mflo $4
TAG558:
subu $4, $4, $4
lh $1, 0($4)
mthi $4
sb $1, 0($1)
TAG559:
bne $1, $1, TAG560
lui $4, 8
mthi $4
bgez $1, TAG560
TAG560:
lui $4, 8
lui $3, 9
bgtz $4, TAG561
mtlo $4
TAG561:
lui $2, 7
bgtz $3, TAG562
div $2, $3
mfhi $2
TAG562:
xori $1, $2, 11
nor $2, $1, $1
sra $4, $1, 5
mfhi $3
TAG563:
xori $2, $3, 14
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG564:
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG565:
bne $2, $2, TAG566
mthi $2
beq $2, $2, TAG566
sll $0, $0, 0
TAG566:
addiu $1, $2, 4
mtlo $2
mult $2, $2
mflo $4
TAG567:
bne $4, $4, TAG568
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG568:
sllv $2, $1, $1
sll $0, $0, 0
sll $4, $1, 6
xor $2, $4, $4
TAG569:
mflo $4
lui $2, 9
blez $4, TAG570
mfhi $4
TAG570:
lui $3, 12
multu $3, $4
mtlo $4
beq $4, $4, TAG571
TAG571:
sll $0, $0, 0
mfhi $1
lb $2, 0($1)
mfhi $3
TAG572:
srl $2, $3, 14
ori $3, $3, 9
sra $4, $3, 0
mflo $1
TAG573:
mfhi $4
srav $1, $1, $4
multu $1, $1
lui $2, 9
TAG574:
bgtz $2, TAG575
srl $4, $2, 0
xori $3, $2, 11
lh $4, 0($3)
TAG575:
sll $0, $0, 0
mflo $4
mflo $1
lui $2, 1
TAG576:
addiu $2, $2, 7
beq $2, $2, TAG577
lui $1, 1
mtlo $1
TAG577:
bne $1, $1, TAG578
sll $0, $0, 0
bne $1, $1, TAG578
lui $3, 10
TAG578:
subu $2, $3, $3
bne $2, $3, TAG579
multu $3, $2
sllv $3, $2, $2
TAG579:
mtlo $3
lui $3, 5
ori $4, $3, 5
mflo $3
TAG580:
lui $4, 7
bgtz $4, TAG581
mthi $4
lh $2, 0($3)
TAG581:
bgtz $2, TAG582
mfhi $4
mtlo $2
multu $4, $2
TAG582:
mtlo $4
sll $2, $4, 7
bne $4, $4, TAG583
sll $0, $0, 0
TAG583:
sll $0, $0, 0
xori $4, $2, 7
lui $1, 13
bltz $2, TAG584
TAG584:
mult $1, $1
beq $1, $1, TAG585
addiu $2, $1, 6
mflo $1
TAG585:
sll $0, $0, 0
mfhi $4
lb $3, -169($4)
lhu $2, 0($3)
TAG586:
lui $1, 6
mfhi $2
sb $1, -169($2)
sll $0, $0, 0
TAG587:
lui $1, 13
lui $3, 9
mtlo $2
bltz $2, TAG588
TAG588:
subu $4, $3, $3
mflo $1
lhu $2, -169($1)
multu $1, $4
TAG589:
blez $2, TAG590
srl $2, $2, 11
lbu $4, 0($2)
or $4, $2, $2
TAG590:
blez $4, TAG591
mflo $3
beq $4, $4, TAG591
lhu $3, 0($3)
TAG591:
mthi $3
sh $3, 0($3)
lb $1, 0($3)
beq $3, $3, TAG592
TAG592:
srl $1, $1, 14
blez $1, TAG593
sllv $2, $1, $1
sw $1, 0($2)
TAG593:
bne $2, $2, TAG594
sw $2, 0($2)
bgez $2, TAG594
mtlo $2
TAG594:
lui $1, 2
or $2, $2, $2
divu $2, $1
mflo $4
TAG595:
add $2, $4, $4
lb $2, 0($4)
blez $2, TAG596
sh $2, 0($4)
TAG596:
sw $2, 0($2)
mthi $2
mflo $2
sw $2, 0($2)
TAG597:
lui $3, 3
mult $2, $2
bgtz $2, TAG598
lh $2, 0($2)
TAG598:
mtlo $2
mult $2, $2
sltu $4, $2, $2
bgez $4, TAG599
TAG599:
add $3, $4, $4
lui $1, 0
mfhi $3
beq $1, $3, TAG600
TAG600:
lui $3, 8
bltz $3, TAG601
sll $0, $0, 0
mult $3, $3
TAG601:
blez $3, TAG602
sltu $4, $3, $3
srav $4, $3, $3
mtlo $4
TAG602:
beq $4, $4, TAG603
sll $0, $0, 0
bgtz $1, TAG603
sb $4, 0($4)
TAG603:
lui $4, 3
beq $1, $4, TAG604
multu $1, $1
sub $2, $1, $1
TAG604:
sb $2, 0($2)
lui $2, 15
div $2, $2
mtlo $2
TAG605:
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
addu $2, $3, $3
TAG606:
sll $0, $0, 0
xori $1, $2, 6
sll $0, $0, 0
div $2, $2
TAG607:
mtlo $1
beq $1, $1, TAG608
lui $4, 13
bne $1, $1, TAG608
TAG608:
sll $0, $0, 0
sll $2, $4, 0
mtlo $2
addiu $2, $2, 3
TAG609:
blez $2, TAG610
mthi $2
blez $2, TAG610
lui $1, 3
TAG610:
lui $3, 14
beq $1, $1, TAG611
srl $1, $3, 4
blez $3, TAG611
TAG611:
sll $0, $0, 0
sll $0, $0, 0
sll $2, $1, 2
mthi $1
TAG612:
addu $3, $2, $2
sll $0, $0, 0
mtlo $4
mtlo $4
TAG613:
bltz $4, TAG614
mflo $3
bgtz $3, TAG614
divu $4, $3
TAG614:
mthi $3
mfhi $4
blez $4, TAG615
sll $0, $0, 0
TAG615:
lui $3, 5
addu $3, $4, $3
lui $2, 10
beq $3, $3, TAG616
TAG616:
div $2, $2
sll $0, $0, 0
blez $4, TAG617
sll $0, $0, 0
TAG617:
beq $1, $1, TAG618
addiu $2, $1, 8
mthi $1
lhu $2, 0($2)
TAG618:
bne $2, $2, TAG619
addu $1, $2, $2
sll $0, $0, 0
bne $1, $3, TAG619
TAG619:
mflo $2
multu $3, $2
lb $1, 0($2)
mthi $3
TAG620:
mtlo $1
mult $1, $1
lui $3, 5
sll $0, $0, 0
TAG621:
sll $0, $0, 0
mult $1, $1
mthi $3
sub $1, $3, $1
TAG622:
div $1, $1
sll $0, $0, 0
srav $3, $1, $1
bne $1, $1, TAG623
TAG623:
srl $3, $3, 15
mtlo $3
slti $2, $3, 7
lui $1, 8
TAG624:
mfhi $2
add $4, $2, $1
srav $1, $4, $1
mthi $1
TAG625:
sll $0, $0, 0
bne $2, $1, TAG626
mthi $1
lb $1, 0($1)
TAG626:
mtlo $1
mthi $1
divu $1, $1
sll $0, $0, 0
TAG627:
mult $1, $1
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG628:
slti $1, $2, 0
mult $1, $2
mflo $1
bne $1, $1, TAG629
TAG629:
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG630
TAG630:
srl $2, $4, 9
sll $0, $0, 0
mfhi $4
mult $2, $4
TAG631:
mult $4, $4
mult $4, $4
bne $4, $4, TAG632
mult $4, $4
TAG632:
lui $1, 15
beq $1, $1, TAG633
mfhi $2
xori $4, $1, 14
TAG633:
sb $4, 0($4)
beq $4, $4, TAG634
and $3, $4, $4
lw $2, 0($3)
TAG634:
sltiu $2, $2, 15
lbu $1, 0($2)
beq $2, $1, TAG635
mthi $2
TAG635:
mtlo $1
bgez $1, TAG636
mult $1, $1
mult $1, $1
TAG636:
lh $2, 0($1)
mflo $3
beq $3, $1, TAG637
subu $3, $2, $2
TAG637:
slt $2, $3, $3
lh $2, 0($2)
sw $2, 0($2)
lb $3, 0($2)
TAG638:
sllv $1, $3, $3
mthi $1
mflo $4
sll $3, $4, 11
TAG639:
lui $3, 4
mfhi $1
sllv $2, $1, $3
mfhi $2
TAG640:
beq $2, $2, TAG641
sh $2, 0($2)
sb $2, 0($2)
mflo $4
TAG641:
beq $4, $4, TAG642
mthi $4
sh $4, 0($4)
sb $4, 0($4)
TAG642:
lbu $3, 0($4)
beq $3, $3, TAG643
slti $2, $3, 11
sra $2, $2, 0
TAG643:
lui $2, 11
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
TAG644:
mflo $1
lui $2, 8
divu $1, $2
lui $4, 4
TAG645:
bne $4, $4, TAG646
sll $0, $0, 0
mflo $1
beq $1, $4, TAG646
TAG646:
or $1, $1, $1
bne $1, $1, TAG647
lbu $1, 0($1)
mtlo $1
TAG647:
lb $1, 0($1)
mfhi $3
multu $1, $1
beq $1, $3, TAG648
TAG648:
lui $2, 15
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG649
TAG649:
mthi $4
mflo $1
bne $4, $1, TAG650
ori $3, $1, 1
TAG650:
sb $3, 0($3)
lbu $1, 0($3)
mthi $1
mult $1, $1
TAG651:
bne $1, $1, TAG652
sb $1, 0($1)
lui $4, 10
subu $2, $4, $4
TAG652:
lui $3, 10
sllv $2, $2, $3
lui $2, 11
mtlo $2
TAG653:
mthi $2
sll $0, $0, 0
mfhi $4
mtlo $4
TAG654:
mult $4, $4
bne $4, $4, TAG655
lui $1, 8
mtlo $1
TAG655:
mtlo $1
mthi $1
mtlo $1
mfhi $2
TAG656:
sll $0, $0, 0
bltz $2, TAG657
addiu $4, $2, 9
div $2, $4
TAG657:
lui $3, 12
sll $0, $0, 0
lui $1, 7
mfhi $3
TAG658:
blez $3, TAG659
mfhi $2
mflo $4
bgtz $4, TAG659
TAG659:
multu $4, $4
mthi $4
mflo $4
slti $3, $4, 7
TAG660:
lui $2, 11
sb $3, 0($3)
sll $0, $0, 0
xori $4, $2, 4
TAG661:
sll $0, $0, 0
addu $3, $4, $4
sll $0, $0, 0
sllv $3, $3, $3
TAG662:
nor $1, $3, $3
sll $0, $0, 0
srlv $3, $3, $1
sw $3, 0($3)
TAG663:
lbu $3, 0($3)
andi $3, $3, 12
and $4, $3, $3
bltz $3, TAG664
TAG664:
lui $2, 12
srav $3, $2, $2
beq $4, $2, TAG665
addu $2, $2, $4
TAG665:
mthi $2
sll $0, $0, 0
blez $2, TAG666
srlv $4, $2, $2
TAG666:
srl $1, $4, 3
xor $1, $1, $4
sra $2, $1, 10
lui $3, 13
TAG667:
sll $0, $0, 0
blez $3, TAG668
mtlo $3
mthi $3
TAG668:
bltz $3, TAG669
mtlo $3
lui $3, 9
beq $3, $3, TAG669
TAG669:
mtlo $3
mtlo $3
sll $4, $3, 0
mult $3, $4
TAG670:
subu $2, $4, $4
beq $4, $2, TAG671
mthi $4
lui $4, 11
TAG671:
mthi $4
mult $4, $4
sll $0, $0, 0
beq $4, $2, TAG672
TAG672:
sh $2, 0($2)
sll $4, $2, 9
lui $1, 11
multu $1, $1
TAG673:
mtlo $1
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
TAG674:
xor $4, $1, $1
lui $3, 8
div $3, $1
sll $0, $0, 0
TAG675:
mflo $3
mfhi $2
mflo $2
sh $3, 0($3)
TAG676:
lui $2, 5
lui $3, 15
blez $2, TAG677
mtlo $3
TAG677:
sltu $2, $3, $3
beq $3, $3, TAG678
lui $3, 13
lui $3, 13
TAG678:
mflo $4
sltiu $3, $4, 8
lw $4, 0($3)
bne $4, $4, TAG679
TAG679:
sllv $1, $4, $4
mtlo $4
subu $1, $4, $4
beq $1, $1, TAG680
TAG680:
mult $1, $1
multu $1, $1
lbu $3, 0($1)
mthi $1
TAG681:
lui $3, 2
lui $4, 0
mflo $2
sll $0, $0, 0
TAG682:
lui $3, 15
lbu $1, 0($1)
bne $1, $1, TAG683
addiu $4, $3, 6
TAG683:
beq $4, $4, TAG684
sll $0, $0, 0
blez $3, TAG684
lui $2, 5
TAG684:
andi $4, $2, 13
mult $2, $4
lbu $1, 0($2)
lui $1, 9
TAG685:
blez $1, TAG686
mflo $4
mtlo $1
andi $2, $1, 10
TAG686:
andi $1, $2, 3
subu $4, $1, $2
beq $4, $1, TAG687
lui $4, 1
TAG687:
divu $4, $4
bltz $4, TAG688
mflo $3
mfhi $1
TAG688:
multu $1, $1
sw $1, 0($1)
multu $1, $1
mult $1, $1
TAG689:
bgez $1, TAG690
addi $2, $1, 1
lhu $3, 0($2)
mflo $3
TAG690:
lui $1, 12
mtlo $3
srl $3, $1, 3
mflo $3
TAG691:
beq $3, $3, TAG692
mthi $3
lw $4, 0($3)
lbu $3, 0($4)
TAG692:
lbu $2, 0($3)
andi $4, $3, 13
lui $3, 9
sll $0, $0, 0
TAG693:
addiu $4, $3, 14
sll $0, $0, 0
bne $4, $4, TAG694
mtlo $3
TAG694:
divu $4, $4
mthi $4
mfhi $2
bltz $4, TAG695
TAG695:
mult $2, $2
sll $0, $0, 0
lui $3, 5
lui $2, 11
TAG696:
lui $4, 3
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG697:
lui $1, 5
lui $4, 0
mflo $4
andi $1, $1, 10
TAG698:
multu $1, $1
sll $3, $1, 4
mtlo $1
lui $3, 12
TAG699:
beq $3, $3, TAG700
sll $0, $0, 0
sw $3, 0($3)
lw $3, 0($1)
TAG700:
div $3, $3
beq $3, $3, TAG701
lui $4, 14
addi $3, $3, 11
TAG701:
lui $2, 1
bne $2, $2, TAG702
addiu $2, $2, 15
sll $2, $3, 6
TAG702:
divu $2, $2
sll $0, $0, 0
srlv $1, $2, $2
mflo $3
TAG703:
slt $4, $3, $3
blez $4, TAG704
mfhi $2
and $4, $3, $4
TAG704:
bltz $4, TAG705
lw $1, 0($4)
subu $2, $4, $4
lbu $2, 0($4)
TAG705:
bgez $2, TAG706
mflo $3
div $2, $3
blez $2, TAG706
TAG706:
mflo $2
blez $3, TAG707
mult $3, $3
mtlo $3
TAG707:
divu $2, $2
subu $1, $2, $2
lui $1, 7
or $2, $1, $1
TAG708:
subu $1, $2, $2
sll $3, $2, 0
mflo $2
slti $2, $3, 14
TAG709:
blez $2, TAG710
lui $2, 6
sllv $3, $2, $2
lui $2, 9
TAG710:
sll $0, $0, 0
lui $2, 4
bne $2, $2, TAG711
lui $3, 1
TAG711:
subu $1, $3, $3
sltiu $1, $3, 9
bgtz $1, TAG712
mthi $1
TAG712:
mflo $1
bne $1, $1, TAG713
and $4, $1, $1
bgez $1, TAG713
TAG713:
mfhi $1
bltz $4, TAG714
lbu $1, 0($4)
lh $2, 0($1)
TAG714:
sub $1, $2, $2
multu $2, $2
sw $2, 0($2)
bne $2, $2, TAG715
TAG715:
mfhi $2
sb $1, 0($2)
mult $2, $1
xor $2, $2, $1
TAG716:
lw $1, 0($2)
mthi $2
lui $3, 12
bne $2, $3, TAG717
TAG717:
lui $1, 5
nor $3, $1, $3
mtlo $3
lui $4, 5
TAG718:
xori $3, $4, 11
xor $4, $3, $4
mthi $4
lui $3, 3
TAG719:
sll $0, $0, 0
slt $2, $3, $3
mtlo $2
addu $1, $3, $3
TAG720:
mfhi $2
bne $1, $1, TAG721
mtlo $2
sll $0, $0, 0
TAG721:
divu $2, $2
beq $2, $2, TAG722
lb $1, 0($2)
lui $3, 12
TAG722:
bltz $3, TAG723
mult $3, $3
bne $3, $3, TAG723
sll $0, $0, 0
TAG723:
mflo $4
mflo $4
slti $2, $4, 1
sh $2, 0($4)
TAG724:
sra $4, $2, 6
sll $2, $4, 12
bgez $2, TAG725
mthi $2
TAG725:
or $1, $2, $2
ori $2, $2, 2
mthi $2
lb $3, 0($2)
TAG726:
addi $3, $3, 15
divu $3, $3
bgtz $3, TAG727
addu $2, $3, $3
TAG727:
multu $2, $2
mthi $2
bgtz $2, TAG728
mult $2, $2
TAG728:
andi $4, $2, 14
lhu $3, 0($4)
lui $3, 13
sll $0, $0, 0
TAG729:
mfhi $2
sb $2, 0($2)
mfhi $1
sw $1, 0($2)
TAG730:
subu $1, $1, $1
mflo $1
lui $1, 0
bgtz $1, TAG731
TAG731:
mthi $1
mtlo $1
subu $4, $1, $1
xori $2, $4, 8
TAG732:
bgez $2, TAG733
sra $3, $2, 15
sh $2, 0($3)
addi $1, $2, 11
TAG733:
lui $1, 0
mthi $1
mfhi $1
sh $1, 0($1)
TAG734:
mtlo $1
lui $1, 10
mfhi $1
add $1, $1, $1
TAG735:
sll $2, $1, 8
bltz $2, TAG736
lw $3, 0($1)
mtlo $1
TAG736:
mfhi $3
bgtz $3, TAG737
mfhi $4
bltz $4, TAG737
TAG737:
sub $1, $4, $4
multu $4, $1
bne $1, $4, TAG738
lui $4, 1
TAG738:
sll $0, $0, 0
multu $4, $2
mflo $3
lui $2, 13
TAG739:
mthi $2
mflo $3
sll $0, $0, 0
mfhi $4
TAG740:
mflo $4
bgtz $4, TAG741
multu $4, $4
lhu $4, 0($4)
TAG741:
mtlo $4
mult $4, $4
lui $4, 7
mfhi $2
TAG742:
srl $2, $2, 0
mflo $4
lui $3, 13
beq $3, $4, TAG743
TAG743:
mtlo $3
bne $3, $3, TAG744
sll $0, $0, 0
mult $3, $4
TAG744:
lui $4, 15
sll $0, $0, 0
bgez $4, TAG745
sll $0, $0, 0
TAG745:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 8
mflo $2
TAG746:
xori $4, $2, 13
beq $2, $4, TAG747
multu $2, $2
lh $4, 0($2)
TAG747:
mthi $4
sb $4, 0($4)
bne $4, $4, TAG748
lui $1, 1
TAG748:
blez $1, TAG749
addiu $4, $1, 13
sll $0, $0, 0
addiu $1, $4, 0
TAG749:
sllv $4, $1, $1
beq $4, $4, TAG750
sll $0, $0, 0
lh $2, 0($1)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop