ori $1, $0, 4
ori $2, $0, 5
ori $3, $0, 12
ori $4, $0, 1
sw $4, 0($0)
sw $2, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $2, 120($0)
sw $3, 124($0)
divu $2, $2
bgez $2, TAG1
sll $1, $2, 1
mthi $1
TAG1:
srl $3, $1, 6
lb $1, 0($3)
mtlo $1
ori $3, $1, 14
TAG2:
lui $4, 14
mfhi $3
srav $1, $4, $3
sll $0, $0, 0
TAG3:
bgez $1, TAG4
div $1, $1
sh $1, 0($1)
mflo $4
TAG4:
addiu $4, $4, 10
sll $0, $0, 0
mflo $4
or $2, $4, $4
TAG5:
mfhi $3
subu $3, $3, $3
bgez $3, TAG6
mthi $3
TAG6:
mflo $2
bgez $2, TAG7
mflo $4
or $3, $2, $4
TAG7:
sh $3, 0($3)
sra $4, $3, 9
nor $2, $3, $4
bne $3, $3, TAG8
TAG8:
mtlo $2
sw $2, 1($2)
sw $2, 1($2)
or $1, $2, $2
TAG9:
beq $1, $1, TAG10
lui $2, 11
lb $2, 0($2)
mthi $1
TAG10:
lui $3, 1
addiu $1, $3, 1
sll $0, $0, 0
addiu $4, $1, 1
TAG11:
lui $2, 13
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
TAG12:
srl $2, $2, 11
beq $2, $2, TAG13
div $2, $2
mfhi $3
TAG13:
mult $3, $3
xori $2, $3, 15
divu $3, $3
multu $3, $2
TAG14:
mult $2, $2
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG15:
nor $3, $4, $4
mtlo $4
mflo $3
or $2, $3, $4
TAG16:
blez $2, TAG17
or $2, $2, $2
srlv $4, $2, $2
beq $2, $2, TAG17
TAG17:
mfhi $4
lui $4, 4
slti $4, $4, 8
mfhi $1
TAG18:
mtlo $1
mtlo $1
bgez $1, TAG19
lui $2, 2
TAG19:
lui $3, 10
lui $2, 1
nor $1, $3, $2
sll $0, $0, 0
TAG20:
bgez $2, TAG21
mtlo $2
mult $2, $2
beq $2, $2, TAG21
TAG21:
mthi $2
lui $3, 7
mfhi $4
blez $4, TAG22
TAG22:
sll $0, $0, 0
lui $1, 4
bne $1, $1, TAG23
lui $3, 14
TAG23:
beq $3, $3, TAG24
sll $0, $0, 0
div $3, $3
andi $3, $3, 12
TAG24:
sll $0, $0, 0
and $1, $3, $1
mthi $3
sll $0, $0, 0
TAG25:
beq $1, $1, TAG26
mtlo $1
bltz $1, TAG26
div $1, $1
TAG26:
sll $0, $0, 0
beq $1, $1, TAG27
sll $0, $0, 0
sw $1, 0($3)
TAG27:
sll $0, $0, 0
addu $3, $3, $3
sll $0, $0, 0
bltz $3, TAG28
TAG28:
mult $3, $3
mtlo $3
sll $0, $0, 0
multu $3, $3
TAG29:
lui $3, 14
srl $3, $3, 8
mflo $3
lui $4, 6
TAG30:
lui $3, 6
mthi $3
sll $0, $0, 0
bne $4, $1, TAG31
TAG31:
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG32
divu $1, $1
TAG32:
lui $1, 5
bgtz $1, TAG33
sll $0, $0, 0
mult $1, $2
TAG33:
beq $2, $2, TAG34
lui $2, 12
lui $1, 6
mthi $1
TAG34:
sll $0, $0, 0
srl $3, $1, 15
mtlo $1
divu $1, $1
TAG35:
beq $3, $3, TAG36
div $3, $3
mfhi $2
and $4, $2, $3
TAG36:
beq $4, $4, TAG37
mult $4, $4
mult $4, $4
multu $4, $4
TAG37:
mthi $4
sll $0, $0, 0
blez $4, TAG38
sllv $3, $4, $4
TAG38:
bgtz $3, TAG39
mthi $3
subu $4, $3, $3
beq $3, $4, TAG39
TAG39:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG40:
sll $0, $0, 0
lui $1, 10
mthi $1
sll $0, $0, 0
TAG41:
bgtz $1, TAG42
mthi $1
mult $1, $1
nor $3, $1, $1
TAG42:
beq $3, $3, TAG43
addu $2, $3, $3
mflo $2
divu $3, $3
TAG43:
bltz $2, TAG44
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG44:
mflo $3
lbu $1, 0($3)
divu $3, $1
lb $2, 0($3)
TAG45:
mfhi $2
lui $2, 10
or $1, $2, $2
sll $0, $0, 0
TAG46:
sll $0, $0, 0
blez $1, TAG47
mfhi $1
mfhi $2
TAG47:
srlv $1, $2, $2
bgtz $1, TAG48
mfhi $1
multu $2, $1
TAG48:
add $2, $1, $1
sh $2, 0($1)
multu $2, $2
beq $2, $1, TAG49
TAG49:
slt $1, $2, $2
mflo $1
bltz $1, TAG50
mflo $4
TAG50:
lw $4, 0($4)
sll $0, $0, 0
div $4, $4
lui $3, 10
TAG51:
sll $0, $0, 0
bgez $3, TAG52
lui $4, 2
sltiu $1, $3, 11
TAG52:
mult $1, $1
mtlo $1
sw $1, 0($1)
bltz $1, TAG53
TAG53:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
lui $4, 4
TAG54:
beq $4, $4, TAG55
ori $2, $4, 6
lw $2, 0($2)
sw $2, 0($2)
TAG55:
sll $0, $0, 0
addu $2, $2, $3
subu $2, $3, $2
lui $2, 5
TAG56:
lui $1, 2
bgez $1, TAG57
addiu $2, $1, 3
lui $3, 12
TAG57:
divu $3, $3
mthi $3
lui $2, 9
mflo $3
TAG58:
ori $3, $3, 10
bne $3, $3, TAG59
xori $2, $3, 5
srl $1, $3, 6
TAG59:
lui $2, 0
bgtz $2, TAG60
multu $2, $1
lui $2, 10
TAG60:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
lui $2, 5
TAG61:
sll $0, $0, 0
bgtz $3, TAG62
sll $0, $0, 0
lh $1, 0($4)
TAG62:
mtlo $1
lh $4, 0($1)
sw $1, 0($1)
bne $4, $1, TAG63
TAG63:
multu $4, $4
bgez $4, TAG64
mfhi $1
lui $3, 11
TAG64:
slti $1, $3, 7
lh $1, 0($1)
mult $1, $1
mthi $1
TAG65:
bgtz $1, TAG66
slti $4, $1, 2
blez $4, TAG66
mtlo $4
TAG66:
mult $4, $4
sllv $2, $4, $4
mflo $3
subu $2, $2, $2
TAG67:
sh $2, 0($2)
addiu $1, $2, 8
beq $1, $1, TAG68
srl $4, $1, 2
TAG68:
mtlo $4
beq $4, $4, TAG69
mfhi $1
sltiu $4, $4, 12
TAG69:
mflo $2
mfhi $4
bne $4, $4, TAG70
mflo $1
TAG70:
lhu $3, 0($1)
lui $1, 1
beq $3, $1, TAG71
mthi $1
TAG71:
lui $2, 0
bne $2, $2, TAG72
multu $2, $2
nor $4, $2, $2
TAG72:
bne $4, $4, TAG73
andi $4, $4, 10
mult $4, $4
addiu $2, $4, 7
TAG73:
mfhi $3
lui $1, 11
bgtz $2, TAG74
addu $1, $2, $1
TAG74:
mtlo $1
and $2, $1, $1
div $2, $2
slt $3, $1, $2
TAG75:
lbu $3, 0($3)
lhu $4, 0($3)
bne $3, $4, TAG76
mtlo $3
TAG76:
lui $4, 11
slt $2, $4, $4
mult $2, $2
lui $1, 14
TAG77:
sll $0, $0, 0
beq $1, $1, TAG78
div $1, $1
div $1, $1
TAG78:
slti $3, $1, 9
mflo $3
div $3, $3
mthi $1
TAG79:
multu $3, $3
sb $3, 0($3)
mtlo $3
mflo $3
TAG80:
bne $3, $3, TAG81
lui $4, 15
sll $3, $3, 15
mflo $2
TAG81:
sb $2, 0($2)
or $3, $2, $2
mfhi $2
lbu $1, 0($3)
TAG82:
slti $1, $1, 15
addiu $4, $1, 11
multu $4, $1
bne $1, $1, TAG83
TAG83:
mflo $4
lui $1, 7
lui $1, 3
addiu $2, $4, 0
TAG84:
div $2, $2
mflo $4
sb $4, 0($4)
sh $4, 0($2)
TAG85:
sb $4, 0($4)
lui $4, 13
mflo $3
lui $3, 13
TAG86:
addiu $2, $3, 0
slt $4, $3, $3
subu $3, $3, $4
sw $3, 0($4)
TAG87:
lui $1, 10
sra $2, $3, 5
sll $0, $0, 0
addiu $3, $4, 12
TAG88:
addu $1, $3, $3
mflo $1
mtlo $1
mult $3, $1
TAG89:
mtlo $1
addu $1, $1, $1
bne $1, $1, TAG90
mthi $1
TAG90:
bgtz $1, TAG91
sh $1, 0($1)
lbu $2, 0($1)
lb $3, 0($1)
TAG91:
lui $3, 13
addu $4, $3, $3
mult $4, $4
subu $2, $3, $4
TAG92:
divu $2, $2
mflo $1
lui $2, 5
sll $0, $0, 0
TAG93:
addu $4, $2, $2
lui $1, 12
sll $0, $0, 0
bne $2, $4, TAG94
TAG94:
nor $1, $4, $4
beq $1, $1, TAG95
divu $1, $4
mfhi $2
TAG95:
mthi $2
mfhi $4
sll $0, $0, 0
andi $3, $4, 3
TAG96:
mflo $1
mflo $4
beq $1, $1, TAG97
mtlo $3
TAG97:
div $4, $4
bltz $4, TAG98
mflo $2
mtlo $2
TAG98:
and $3, $2, $2
sb $3, 0($2)
lui $1, 12
sll $0, $0, 0
TAG99:
sll $0, $0, 0
mflo $1
mthi $1
mflo $3
TAG100:
blez $3, TAG101
lui $3, 1
addiu $1, $3, 10
sll $0, $0, 0
TAG101:
multu $1, $1
sll $0, $0, 0
sllv $4, $1, $1
mult $4, $1
TAG102:
sll $0, $0, 0
sll $0, $0, 0
sllv $1, $4, $4
multu $4, $1
TAG103:
srl $3, $1, 6
sll $0, $0, 0
blez $4, TAG104
mtlo $1
TAG104:
bgez $4, TAG105
mthi $4
sltiu $4, $4, 12
addiu $3, $4, 4
TAG105:
sll $0, $0, 0
mult $3, $3
addiu $2, $3, 11
lui $1, 5
TAG106:
mfhi $2
andi $4, $2, 14
lw $3, 0($4)
mtlo $4
TAG107:
mtlo $3
and $2, $3, $3
bne $2, $3, TAG108
sll $0, $0, 0
TAG108:
mthi $2
mthi $2
bltz $2, TAG109
mthi $2
TAG109:
mfhi $2
div $2, $2
lui $4, 12
div $2, $2
TAG110:
subu $3, $4, $4
mflo $1
mtlo $1
divu $1, $1
TAG111:
bgez $1, TAG112
sllv $4, $1, $1
divu $4, $1
addiu $4, $4, 3
TAG112:
lh $2, 0($4)
lui $3, 12
bltz $2, TAG113
mflo $3
TAG113:
ori $4, $3, 5
lui $4, 14
multu $4, $4
bgtz $3, TAG114
TAG114:
slti $4, $4, 11
mthi $4
bgtz $4, TAG115
lui $2, 12
TAG115:
blez $2, TAG116
mfhi $1
bne $2, $1, TAG116
mfhi $1
TAG116:
mflo $3
lbu $1, 0($3)
beq $1, $3, TAG117
mult $1, $1
TAG117:
mthi $1
lui $2, 15
mult $1, $2
and $1, $2, $1
TAG118:
mfhi $2
mtlo $1
mthi $1
mthi $2
TAG119:
add $3, $2, $2
bgez $3, TAG120
multu $2, $3
beq $2, $3, TAG120
TAG120:
addu $2, $3, $3
bne $2, $3, TAG121
multu $3, $2
sh $2, 0($3)
TAG121:
lhu $4, 0($2)
lw $4, 0($4)
mtlo $4
lui $3, 8
TAG122:
sll $0, $0, 0
sllv $2, $1, $3
multu $3, $2
mflo $2
TAG123:
bltz $2, TAG124
sb $2, 0($2)
sltu $4, $2, $2
addiu $3, $4, 14
TAG124:
sll $1, $3, 7
lui $1, 9
mflo $2
srav $3, $1, $1
TAG125:
srav $3, $3, $3
mthi $3
multu $3, $3
srl $2, $3, 3
TAG126:
andi $4, $2, 14
lbu $1, 0($4)
sh $2, 0($4)
mflo $4
TAG127:
add $3, $4, $4
lui $3, 4
ori $3, $3, 7
bne $3, $4, TAG128
TAG128:
mflo $2
sll $0, $0, 0
subu $1, $1, $3
mfhi $4
TAG129:
divu $4, $4
mthi $4
beq $4, $4, TAG130
lbu $1, 0($4)
TAG130:
sltiu $1, $1, 9
mtlo $1
lui $1, 14
bltz $1, TAG131
TAG131:
mthi $1
blez $1, TAG132
mfhi $1
beq $1, $1, TAG132
TAG132:
sltiu $4, $1, 12
sll $0, $0, 0
mflo $4
lui $4, 9
TAG133:
mtlo $4
sll $0, $0, 0
mult $4, $4
xori $3, $4, 0
TAG134:
mfhi $4
mthi $3
slt $1, $3, $3
sll $0, $0, 0
TAG135:
mthi $1
beq $1, $1, TAG136
slti $3, $1, 7
sh $1, 0($3)
TAG136:
sra $1, $3, 5
lw $1, 0($1)
bgtz $1, TAG137
srlv $1, $1, $1
TAG137:
lui $4, 10
lui $4, 3
addu $2, $4, $4
xori $3, $1, 0
TAG138:
bgez $3, TAG139
mthi $3
div $3, $3
lh $2, 0($3)
TAG139:
sltiu $1, $2, 12
mthi $2
mflo $3
sll $4, $2, 12
TAG140:
mflo $4
mflo $1
lui $4, 13
and $1, $4, $1
TAG141:
lbu $4, 0($1)
mtlo $4
lhu $3, 0($1)
lb $4, -8192($3)
TAG142:
mflo $2
sw $4, 0($2)
mtlo $2
sra $1, $2, 4
TAG143:
bltz $1, TAG144
lh $3, 0($1)
bne $1, $3, TAG144
mfhi $4
TAG144:
bgez $4, TAG145
mtlo $4
sb $4, 0($4)
sllv $1, $4, $4
TAG145:
sll $1, $1, 15
lui $2, 10
sw $1, 0($1)
sh $2, 0($1)
TAG146:
mtlo $2
sll $0, $0, 0
lui $4, 14
mult $2, $4
TAG147:
mthi $4
addiu $1, $4, 14
lui $2, 9
bltz $2, TAG148
TAG148:
mtlo $2
bgez $2, TAG149
mflo $1
lui $2, 14
TAG149:
xori $3, $2, 9
sll $0, $0, 0
mult $2, $3
srav $3, $1, $1
TAG150:
sll $2, $3, 14
addiu $4, $3, 0
sll $0, $0, 0
bgtz $2, TAG151
TAG151:
lui $4, 11
bne $2, $2, TAG152
divu $2, $2
sra $4, $2, 5
TAG152:
sltiu $3, $4, 1
mfhi $4
lw $2, 0($4)
lui $1, 7
TAG153:
mflo $4
lui $3, 9
sll $4, $1, 11
lui $4, 6
TAG154:
addu $1, $4, $4
addu $3, $1, $4
nor $4, $3, $4
sll $0, $0, 0
TAG155:
beq $4, $4, TAG156
ori $3, $4, 2
beq $4, $4, TAG156
and $4, $4, $4
TAG156:
sll $0, $0, 0
lui $4, 9
divu $4, $4
ori $3, $4, 14
TAG157:
mtlo $3
or $1, $3, $3
sltiu $4, $1, 15
lbu $2, 0($4)
TAG158:
beq $2, $2, TAG159
and $3, $2, $2
multu $3, $2
sh $3, 0($2)
TAG159:
sw $3, 0($3)
mthi $3
lh $3, 0($3)
bne $3, $3, TAG160
TAG160:
lui $4, 11
mthi $4
mfhi $1
sll $0, $0, 0
TAG161:
div $1, $1
sltiu $4, $1, 5
ori $3, $1, 14
andi $3, $4, 12
TAG162:
slt $1, $3, $3
mtlo $1
subu $3, $1, $3
bne $3, $3, TAG163
TAG163:
multu $3, $3
beq $3, $3, TAG164
sh $3, 0($3)
and $4, $3, $3
TAG164:
sllv $4, $4, $4
bne $4, $4, TAG165
lw $4, 0($4)
lui $4, 0
TAG165:
addi $4, $4, 14
addu $2, $4, $4
beq $2, $4, TAG166
srlv $1, $4, $4
TAG166:
lui $2, 2
sll $0, $0, 0
multu $2, $1
mtlo $1
TAG167:
lhu $3, 0($3)
mult $3, $3
bltz $3, TAG168
mtlo $3
TAG168:
addu $3, $3, $3
mtlo $3
addiu $1, $3, 4
sh $3, 0($3)
TAG169:
bgez $1, TAG170
mfhi $2
beq $2, $1, TAG170
mfhi $2
TAG170:
lhu $1, 0($2)
blez $2, TAG171
sw $2, 0($2)
blez $1, TAG171
TAG171:
sh $1, 0($1)
lw $4, 0($1)
addi $3, $4, 9
addiu $2, $4, 5
TAG172:
mflo $2
lui $1, 6
mfhi $2
beq $1, $2, TAG173
TAG173:
mthi $2
bne $2, $2, TAG174
lbu $2, 0($2)
slti $4, $2, 1
TAG174:
beq $4, $4, TAG175
mflo $2
divu $2, $4
beq $2, $2, TAG175
TAG175:
ori $3, $2, 3
subu $1, $3, $3
multu $2, $1
bne $3, $3, TAG176
TAG176:
slti $2, $1, 0
mflo $1
mult $1, $2
lui $2, 1
TAG177:
ori $4, $2, 2
beq $2, $2, TAG178
sll $0, $0, 0
lw $4, 0($2)
TAG178:
bne $4, $4, TAG179
lui $3, 3
mflo $2
lui $4, 13
TAG179:
sll $0, $0, 0
multu $4, $1
beq $1, $1, TAG180
and $4, $1, $1
TAG180:
sltu $3, $4, $4
mult $4, $3
lw $3, 0($4)
mflo $2
TAG181:
nor $2, $2, $2
ori $1, $2, 10
bne $1, $2, TAG182
lh $1, 1($2)
TAG182:
multu $1, $1
mtlo $1
lui $2, 4
ori $1, $1, 13
TAG183:
sb $1, 0($1)
lb $4, 0($1)
lui $4, 6
beq $4, $4, TAG184
TAG184:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
bne $4, $4, TAG185
TAG185:
sltu $2, $2, $2
sh $2, 0($2)
sltiu $2, $2, 12
sltiu $2, $2, 4
TAG186:
mfhi $3
mtlo $3
mtlo $3
addiu $2, $2, 5
TAG187:
sb $2, 0($2)
lhu $2, 0($2)
bne $2, $2, TAG188
lui $2, 0
TAG188:
ori $1, $2, 11
xor $1, $2, $2
sb $2, 0($1)
mthi $1
TAG189:
sw $1, 0($1)
sh $1, 0($1)
multu $1, $1
sra $3, $1, 13
TAG190:
mfhi $4
subu $4, $3, $4
mfhi $4
bgtz $4, TAG191
TAG191:
sw $4, 0($4)
lbu $3, 0($4)
sw $4, 0($3)
or $3, $3, $4
TAG192:
mthi $3
multu $3, $3
sra $4, $3, 11
bgez $3, TAG193
TAG193:
multu $4, $4
mult $4, $4
lui $4, 7
bne $4, $4, TAG194
TAG194:
mtlo $4
lui $4, 6
bgtz $4, TAG195
sll $0, $0, 0
TAG195:
sb $2, 0($2)
lb $1, 0($2)
bne $1, $1, TAG196
add $4, $2, $1
TAG196:
sh $4, 0($4)
bltz $4, TAG197
xori $1, $4, 15
mthi $4
TAG197:
mflo $3
slt $1, $1, $3
mthi $3
lui $1, 12
TAG198:
mthi $1
div $1, $1
bne $1, $1, TAG199
divu $1, $1
TAG199:
blez $1, TAG200
multu $1, $1
and $3, $1, $1
sll $0, $0, 0
TAG200:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
lui $3, 13
TAG201:
addiu $4, $3, 2
bltz $3, TAG202
lui $1, 1
mtlo $4
TAG202:
mtlo $1
xor $3, $1, $1
sltu $1, $1, $3
sll $4, $3, 14
TAG203:
bltz $4, TAG204
or $4, $4, $4
lhu $1, 0($4)
andi $3, $4, 14
TAG204:
bltz $3, TAG205
sb $3, 0($3)
sh $3, 0($3)
lbu $3, 0($3)
TAG205:
sllv $1, $3, $3
sllv $2, $3, $1
multu $1, $3
bne $2, $3, TAG206
TAG206:
mult $2, $2
srav $3, $2, $2
mtlo $3
addi $1, $2, 8
TAG207:
bne $1, $1, TAG208
sltiu $3, $1, 13
lui $3, 15
lui $4, 8
TAG208:
mthi $4
mtlo $4
mflo $3
lui $4, 9
TAG209:
lui $3, 13
bltz $3, TAG210
sll $0, $0, 0
addu $4, $3, $3
TAG210:
sll $0, $0, 0
lui $1, 8
addiu $4, $1, 2
sll $0, $0, 0
TAG211:
mflo $4
sb $2, 0($2)
bne $4, $4, TAG212
mtlo $4
TAG212:
divu $4, $4
multu $4, $4
mtlo $4
sll $0, $0, 0
TAG213:
lhu $4, 0($2)
addi $2, $2, 12
mtlo $4
bne $2, $2, TAG214
TAG214:
lui $3, 5
lui $4, 11
mflo $4
mflo $2
TAG215:
mult $2, $2
srlv $1, $2, $2
andi $1, $2, 5
beq $1, $2, TAG216
TAG216:
mflo $3
ori $4, $3, 11
subu $3, $1, $4
sltu $4, $1, $3
TAG217:
sb $4, 0($4)
sltu $2, $4, $4
multu $4, $2
bne $2, $2, TAG218
TAG218:
mthi $2
sra $2, $2, 14
mtlo $2
lui $4, 13
TAG219:
sll $0, $0, 0
bgtz $4, TAG220
multu $4, $1
lhu $4, 0($4)
TAG220:
mult $4, $4
beq $4, $4, TAG221
and $4, $4, $4
div $4, $4
TAG221:
subu $2, $4, $4
nor $1, $2, $4
multu $1, $2
lw $2, 0($2)
TAG222:
sll $0, $0, 0
mult $1, $1
xor $4, $1, $1
lui $3, 15
TAG223:
sll $0, $0, 0
sll $0, $0, 0
slti $4, $3, 15
mtlo $3
TAG224:
sw $4, 0($4)
bltz $4, TAG225
sb $4, 0($4)
mfhi $4
TAG225:
slti $3, $4, 11
mult $4, $3
sw $4, 0($3)
bltz $4, TAG226
TAG226:
mthi $3
lui $3, 13
beq $3, $3, TAG227
lui $3, 15
TAG227:
sll $0, $0, 0
lui $3, 5
mfhi $3
sw $3, 0($3)
TAG228:
beq $3, $3, TAG229
mult $3, $3
sw $3, 0($3)
srl $2, $3, 14
TAG229:
div $2, $2
subu $4, $2, $2
andi $3, $2, 11
andi $4, $3, 5
TAG230:
mflo $2
lhu $1, 0($4)
mult $1, $1
bgez $1, TAG231
TAG231:
andi $3, $1, 1
mtlo $3
xor $3, $3, $3
sra $3, $3, 0
TAG232:
lui $2, 2
bne $3, $2, TAG233
addiu $2, $2, 15
sw $3, 0($3)
TAG233:
div $2, $2
mtlo $2
addiu $2, $2, 13
bgez $2, TAG234
TAG234:
ori $1, $2, 7
mthi $2
mfhi $3
addiu $1, $3, 15
TAG235:
slt $4, $1, $1
lui $2, 3
bne $4, $1, TAG236
sll $0, $0, 0
TAG236:
lw $3, 0($4)
lw $4, 0($4)
bne $3, $4, TAG237
mflo $1
TAG237:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
lui $2, 10
TAG238:
mfhi $4
srl $2, $4, 6
lui $2, 7
mtlo $2
TAG239:
lui $3, 3
srav $2, $2, $3
mtlo $3
mflo $3
TAG240:
sltu $4, $3, $3
srlv $3, $4, $4
mult $3, $4
andi $2, $4, 13
TAG241:
srlv $2, $2, $2
blez $2, TAG242
lui $1, 6
bne $1, $2, TAG242
TAG242:
sll $0, $0, 0
div $4, $1
lui $2, 12
sll $0, $0, 0
TAG243:
srl $4, $4, 9
lui $2, 2
mult $2, $4
bne $2, $4, TAG244
TAG244:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
divu $4, $1
TAG245:
multu $4, $4
sra $3, $4, 13
beq $4, $4, TAG246
multu $4, $3
TAG246:
mult $3, $3
beq $3, $3, TAG247
mflo $1
ori $1, $3, 5
TAG247:
multu $1, $1
addiu $4, $1, 15
and $1, $4, $4
multu $1, $1
TAG248:
div $1, $1
lui $3, 8
sb $1, 0($1)
xor $2, $1, $3
TAG249:
addu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
addu $4, $2, $3
TAG250:
beq $4, $4, TAG251
sll $0, $0, 0
mthi $4
bgez $4, TAG251
TAG251:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG252:
lb $4, 0($1)
sra $4, $1, 11
subu $3, $4, $4
bgez $1, TAG253
TAG253:
lb $3, 0($3)
multu $3, $3
mthi $3
sllv $3, $3, $3
TAG254:
sh $3, 0($3)
ori $2, $3, 9
mflo $3
mflo $4
TAG255:
sll $2, $4, 5
bltz $2, TAG256
and $3, $2, $2
mflo $2
TAG256:
lui $3, 3
divu $3, $3
ori $3, $3, 7
lhu $4, 0($2)
TAG257:
multu $4, $4
mult $4, $4
sra $1, $4, 0
addi $2, $4, 2
TAG258:
sb $2, 0($2)
lhu $3, 0($2)
blez $3, TAG259
subu $3, $2, $2
TAG259:
mflo $1
xori $3, $3, 10
bgez $3, TAG260
mtlo $1
TAG260:
bgtz $3, TAG261
sltiu $4, $3, 15
beq $4, $4, TAG261
mtlo $3
TAG261:
beq $4, $4, TAG262
slti $3, $4, 0
bltz $4, TAG262
lh $3, 0($3)
TAG262:
mult $3, $3
mflo $3
bgtz $3, TAG263
mthi $3
TAG263:
lui $1, 6
lui $4, 12
lui $4, 11
sll $0, $0, 0
TAG264:
beq $4, $4, TAG265
div $4, $4
sw $4, 0($4)
bne $4, $4, TAG265
TAG265:
mflo $4
addu $4, $4, $4
mthi $4
mthi $4
TAG266:
sb $4, 0($4)
mfhi $2
lhu $4, 0($2)
bgtz $2, TAG267
TAG267:
lbu $1, 0($4)
bgtz $4, TAG268
mtlo $1
mflo $3
TAG268:
lui $1, 10
add $1, $3, $1
blez $3, TAG269
sllv $2, $3, $3
TAG269:
mfhi $1
mfhi $2
xori $1, $2, 8
mflo $3
TAG270:
lh $1, 0($3)
bne $1, $1, TAG271
or $3, $1, $1
bgez $1, TAG271
TAG271:
nor $3, $3, $3
bne $3, $3, TAG272
mtlo $3
div $3, $3
TAG272:
bgtz $3, TAG273
sh $3, 0($3)
mflo $4
mthi $3
TAG273:
sh $4, 0($4)
bne $4, $4, TAG274
mult $4, $4
subu $2, $4, $4
TAG274:
srlv $2, $2, $2
sh $2, 0($2)
mthi $2
lw $2, 0($2)
TAG275:
andi $1, $2, 13
sll $0, $0, 0
sub $4, $2, $1
mflo $3
TAG276:
lbu $3, 0($3)
mtlo $3
div $3, $3
bgez $3, TAG277
TAG277:
lui $4, 2
mtlo $3
addiu $1, $3, 13
xori $1, $4, 15
TAG278:
lui $4, 0
beq $1, $1, TAG279
lui $2, 3
lbu $2, 0($2)
TAG279:
mtlo $2
and $3, $2, $2
beq $2, $2, TAG280
mtlo $2
TAG280:
sll $0, $0, 0
bgez $3, TAG281
mult $3, $3
sra $1, $3, 7
TAG281:
or $3, $1, $1
lui $4, 8
srlv $1, $1, $4
mfhi $3
TAG282:
sltiu $3, $3, 13
beq $3, $3, TAG283
lui $2, 4
beq $2, $2, TAG283
TAG283:
sll $0, $0, 0
mflo $2
mtlo $2
addiu $3, $2, 8
TAG284:
lui $4, 6
sb $3, 0($3)
beq $4, $4, TAG285
mfhi $1
TAG285:
sltiu $4, $1, 1
mfhi $3
mfhi $3
or $1, $1, $1
TAG286:
lui $4, 8
beq $1, $4, TAG287
addiu $4, $4, 7
mfhi $2
TAG287:
sll $4, $2, 8
lui $4, 8
bltz $2, TAG288
mtlo $4
TAG288:
mult $4, $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG289:
sra $4, $4, 7
divu $4, $4
lhu $1, -4096($4)
or $1, $4, $4
TAG290:
beq $1, $1, TAG291
sh $1, -4096($1)
lh $4, 0($1)
div $1, $4
TAG291:
slti $3, $4, 11
bgtz $4, TAG292
mult $3, $3
lui $2, 1
TAG292:
xori $4, $2, 7
mfhi $1
addiu $1, $2, 9
bltz $1, TAG293
TAG293:
and $1, $1, $1
sb $1, 0($1)
mtlo $1
beq $1, $1, TAG294
TAG294:
mtlo $1
addu $3, $1, $1
beq $3, $1, TAG295
subu $3, $1, $1
TAG295:
sw $3, 0($3)
mflo $4
lhu $1, 0($3)
div $1, $4
TAG296:
mflo $1
beq $1, $1, TAG297
sra $3, $1, 1
bne $1, $3, TAG297
TAG297:
mflo $4
sh $4, 0($4)
multu $3, $4
andi $1, $3, 6
TAG298:
multu $1, $1
mult $1, $1
beq $1, $1, TAG299
mtlo $1
TAG299:
nor $3, $1, $1
lui $4, 6
bne $3, $3, TAG300
mthi $3
TAG300:
beq $4, $4, TAG301
mtlo $4
mthi $4
lui $2, 12
TAG301:
mfhi $3
addu $1, $2, $3
lhu $2, 1($3)
slti $4, $3, 12
TAG302:
addiu $4, $4, 7
or $3, $4, $4
mfhi $2
sb $4, 0($3)
TAG303:
bgtz $2, TAG304
slt $4, $2, $2
lb $1, 1($2)
sra $3, $1, 0
TAG304:
mthi $3
xori $3, $3, 4
mthi $3
addiu $2, $3, 15
TAG305:
lbu $3, 0($2)
lui $3, 5
lui $1, 15
mfhi $4
TAG306:
lui $3, 5
lb $4, 0($4)
mtlo $4
srav $3, $4, $3
TAG307:
sll $1, $3, 5
sh $3, -160($1)
addu $1, $3, $3
mthi $3
TAG308:
lb $3, 0($1)
mfhi $2
divu $1, $2
mthi $3
TAG309:
mflo $1
bgez $2, TAG310
mtlo $2
beq $1, $2, TAG310
TAG310:
mtlo $1
bltz $1, TAG311
srl $2, $1, 15
mfhi $4
TAG311:
mflo $3
bltz $3, TAG312
sw $3, 0($4)
lui $1, 0
TAG312:
slti $2, $1, 7
sh $1, 0($1)
lb $4, 0($2)
bgtz $4, TAG313
TAG313:
mult $4, $4
mflo $2
slt $4, $4, $2
multu $4, $2
TAG314:
nor $3, $4, $4
sw $4, 0($4)
bgtz $3, TAG315
lh $1, 0($4)
TAG315:
blez $1, TAG316
mfhi $4
mthi $1
lui $1, 8
TAG316:
mthi $1
mfhi $1
sw $1, 0($1)
ori $4, $1, 6
TAG317:
mtlo $4
bgtz $4, TAG318
div $4, $4
lhu $1, 0($4)
TAG318:
sh $1, 0($1)
lw $1, 0($1)
sltiu $4, $1, 11
xori $2, $4, 7
TAG319:
bne $2, $2, TAG320
addu $3, $2, $2
srav $3, $3, $2
divu $3, $2
TAG320:
bgez $3, TAG321
sw $3, 0($3)
mtlo $3
divu $3, $3
TAG321:
mthi $3
lh $3, 0($3)
addi $4, $3, 2
bgez $4, TAG322
TAG322:
divu $4, $4
addiu $3, $4, 13
divu $3, $3
blez $4, TAG323
TAG323:
addu $2, $3, $3
mfhi $2
multu $2, $3
mtlo $2
TAG324:
beq $2, $2, TAG325
mtlo $2
mfhi $4
ori $3, $4, 5
TAG325:
lb $3, 0($3)
mult $3, $3
beq $3, $3, TAG326
sll $2, $3, 8
TAG326:
mthi $2
bgez $2, TAG327
lui $1, 7
mthi $2
TAG327:
srlv $4, $1, $1
mflo $3
lui $4, 3
mflo $3
TAG328:
lui $4, 14
mfhi $4
mfhi $3
sb $3, -3840($4)
TAG329:
lui $1, 12
div $1, $1
mthi $3
mfhi $2
TAG330:
sll $0, $0, 0
mtlo $2
sw $3, -3840($3)
sltiu $2, $3, 0
TAG331:
beq $2, $2, TAG332
slt $3, $2, $2
sw $2, 0($2)
mfhi $2
TAG332:
beq $2, $2, TAG333
ori $1, $2, 12
bltz $1, TAG333
lh $1, 0($2)
TAG333:
nor $2, $1, $1
addiu $2, $2, 7
sra $1, $1, 5
mflo $1
TAG334:
bltz $1, TAG335
lhu $2, -3840($1)
lb $1, -3840($1)
multu $1, $2
TAG335:
lhu $4, 0($1)
lhu $1, -3840($4)
bne $1, $1, TAG336
mfhi $4
TAG336:
sb $4, 0($4)
mflo $4
bgez $4, TAG337
multu $4, $4
TAG337:
ori $2, $4, 11
mflo $4
bgez $2, TAG338
sw $4, 0($4)
TAG338:
mfhi $4
sll $1, $4, 13
bgez $1, TAG339
sub $1, $4, $4
TAG339:
sb $1, 0($1)
sh $1, 0($1)
mflo $4
mtlo $4
TAG340:
sw $4, 0($4)
mflo $2
sh $2, 0($4)
multu $4, $2
TAG341:
lui $2, 12
mthi $2
mfhi $2
sll $0, $0, 0
TAG342:
sll $0, $0, 0
bgtz $2, TAG343
sll $0, $0, 0
bne $2, $2, TAG343
TAG343:
andi $4, $4, 8
lh $1, 0($4)
bgez $4, TAG344
multu $1, $4
TAG344:
sb $1, 0($1)
lb $1, 0($1)
mult $1, $1
lh $2, 0($1)
TAG345:
mthi $2
mflo $1
lb $2, 0($2)
mfhi $3
TAG346:
lw $2, 0($3)
mfhi $3
lb $1, 0($3)
subu $1, $1, $3
TAG347:
mflo $1
xori $1, $1, 1
sb $1, 0($1)
lui $4, 3
TAG348:
bgtz $4, TAG349
sll $0, $0, 0
mtlo $1
lw $3, 0($4)
TAG349:
mfhi $1
lbu $1, 0($3)
mtlo $3
srl $1, $1, 8
TAG350:
mtlo $1
lui $3, 5
lui $4, 6
bgez $1, TAG351
TAG351:
mfhi $4
mtlo $4
sltiu $2, $4, 11
bne $4, $4, TAG352
TAG352:
mflo $3
mflo $2
bgez $2, TAG353
mfhi $4
TAG353:
sb $4, 0($4)
bgtz $4, TAG354
lui $1, 1
divu $4, $1
TAG354:
lui $3, 15
slti $1, $3, 8
bltz $1, TAG355
mtlo $1
TAG355:
mfhi $1
blez $1, TAG356
lui $4, 7
beq $1, $1, TAG356
TAG356:
ori $1, $4, 7
multu $1, $4
srl $4, $1, 1
divu $4, $1
TAG357:
bgez $4, TAG358
sll $0, $0, 0
beq $4, $4, TAG358
addi $2, $4, 3
TAG358:
bltz $2, TAG359
mtlo $2
bne $2, $2, TAG359
sw $2, 0($2)
TAG359:
lui $3, 10
lui $4, 3
subu $4, $2, $3
mthi $3
TAG360:
beq $4, $4, TAG361
sll $0, $0, 0
lbu $4, 0($4)
mflo $2
TAG361:
lui $3, 7
sll $0, $0, 0
blez $2, TAG362
mfhi $1
TAG362:
mult $1, $1
sltiu $1, $1, 8
mflo $1
sltu $2, $1, $1
TAG363:
lui $2, 4
bgtz $2, TAG364
lui $3, 2
lui $2, 10
TAG364:
sltiu $3, $2, 12
bne $2, $2, TAG365
sll $0, $0, 0
lui $1, 7
TAG365:
andi $1, $1, 6
mult $1, $1
ori $2, $1, 2
sw $1, 0($1)
TAG366:
multu $2, $2
mflo $2
sw $2, 0($2)
lw $3, 0($2)
TAG367:
divu $3, $3
lui $1, 13
lb $3, 0($3)
subu $2, $3, $3
TAG368:
bgez $2, TAG369
slti $3, $2, 5
lui $3, 12
slt $2, $3, $2
TAG369:
lb $3, 0($2)
bgez $3, TAG370
mfhi $4
sra $3, $2, 7
TAG370:
bltz $3, TAG371
lhu $2, 0($3)
bne $2, $3, TAG371
lui $3, 10
TAG371:
addu $4, $3, $3
slt $2, $3, $3
bgez $3, TAG372
srav $4, $3, $4
TAG372:
div $4, $4
mthi $4
sltu $2, $4, $4
mflo $3
TAG373:
sra $2, $3, 0
lbu $1, 0($2)
sra $4, $1, 3
mthi $4
TAG374:
addu $2, $4, $4
sw $4, 0($2)
mthi $4
xor $3, $2, $4
TAG375:
sh $3, 0($3)
add $3, $3, $3
mthi $3
lui $4, 0
TAG376:
lui $2, 13
xori $4, $4, 2
divu $4, $4
lui $1, 0
TAG377:
xori $3, $1, 8
andi $2, $1, 1
beq $2, $1, TAG378
sb $2, 0($2)
TAG378:
bgez $2, TAG379
lhu $3, 0($2)
mflo $1
lui $4, 5
TAG379:
bgez $4, TAG380
nor $4, $4, $4
mflo $4
mfhi $1
TAG380:
sw $1, 0($1)
mtlo $1
xori $3, $1, 8
mult $3, $1
TAG381:
mfhi $3
mtlo $3
sltiu $4, $3, 8
lh $2, 0($3)
TAG382:
mthi $2
mult $2, $2
lui $3, 12
mthi $2
TAG383:
srl $3, $3, 6
xor $1, $3, $3
lbu $2, -12288($3)
lbu $2, 0($2)
TAG384:
mtlo $2
sub $2, $2, $2
sb $2, 0($2)
sb $2, 0($2)
TAG385:
beq $2, $2, TAG386
mthi $2
sw $2, 0($2)
lh $3, 0($2)
TAG386:
xor $4, $3, $3
mthi $3
beq $3, $4, TAG387
div $4, $3
TAG387:
sh $4, 0($4)
sllv $4, $4, $4
bltz $4, TAG388
mult $4, $4
TAG388:
sh $4, 0($4)
srlv $3, $4, $4
sltu $3, $4, $3
mfhi $3
TAG389:
sh $3, 0($3)
mult $3, $3
bne $3, $3, TAG390
mthi $3
TAG390:
mfhi $1
blez $1, TAG391
sh $1, 0($3)
blez $1, TAG391
TAG391:
mthi $1
sub $3, $1, $1
beq $1, $3, TAG392
subu $1, $3, $1
TAG392:
lui $2, 7
bltz $1, TAG393
lui $1, 6
subu $4, $2, $1
TAG393:
mfhi $3
lb $2, 0($3)
bne $4, $2, TAG394
sw $3, 0($3)
TAG394:
addiu $2, $2, 11
lbu $3, 0($2)
lh $3, 0($3)
mflo $2
TAG395:
beq $2, $2, TAG396
lui $1, 7
beq $1, $2, TAG396
lui $1, 10
TAG396:
lui $4, 0
srav $3, $1, $4
mthi $3
bgtz $1, TAG397
TAG397:
sll $0, $0, 0
bne $3, $3, TAG398
xori $4, $3, 3
lui $3, 7
TAG398:
blez $3, TAG399
sltiu $2, $3, 8
addi $4, $2, 8
bltz $4, TAG399
TAG399:
mflo $3
xor $1, $3, $3
bltz $1, TAG400
lw $3, 0($4)
TAG400:
divu $3, $3
lbu $4, 0($3)
lb $4, 0($4)
addiu $2, $4, 14
TAG401:
sb $2, 0($2)
mfhi $3
bne $2, $2, TAG402
mult $3, $3
TAG402:
mult $3, $3
andi $4, $3, 6
multu $3, $3
lui $1, 0
TAG403:
lbu $4, 0($1)
slti $3, $1, 15
mult $3, $1
mthi $3
TAG404:
multu $3, $3
subu $1, $3, $3
lui $3, 8
mflo $3
TAG405:
mtlo $3
lbu $4, 0($3)
lbu $1, 0($3)
mtlo $4
TAG406:
lhu $2, 0($1)
mfhi $4
addu $3, $4, $1
mthi $1
TAG407:
sh $3, 0($3)
addiu $3, $3, 13
lbu $4, 0($3)
sb $3, 0($3)
TAG408:
bne $4, $4, TAG409
lui $4, 14
mthi $4
mthi $4
TAG409:
mfhi $2
sll $2, $2, 6
subu $1, $2, $2
mthi $2
TAG410:
mthi $1
mthi $1
multu $1, $1
sw $1, 0($1)
TAG411:
sb $1, 0($1)
sb $1, 0($1)
mfhi $2
beq $1, $2, TAG412
TAG412:
xori $1, $2, 1
or $2, $2, $1
mflo $4
srl $4, $2, 7
TAG413:
sh $4, 0($4)
bne $4, $4, TAG414
lw $2, 0($4)
multu $4, $4
TAG414:
lui $3, 8
add $2, $2, $2
mfhi $3
lh $3, 0($2)
TAG415:
mult $3, $3
lui $3, 15
bgtz $3, TAG416
mtlo $3
TAG416:
andi $3, $3, 15
bne $3, $3, TAG417
sb $3, 0($3)
bne $3, $3, TAG417
TAG417:
mflo $3
sra $1, $3, 0
sll $0, $0, 0
addiu $1, $3, 15
TAG418:
mult $1, $1
mtlo $1
beq $1, $1, TAG419
mtlo $1
TAG419:
sll $0, $0, 0
mthi $1
lui $3, 6
sll $0, $0, 0
TAG420:
sltiu $3, $4, 7
lui $3, 8
bne $3, $3, TAG421
mfhi $4
TAG421:
srav $4, $4, $4
div $4, $4
bgez $4, TAG422
lui $3, 4
TAG422:
sll $0, $0, 0
lui $4, 15
sll $0, $0, 0
sll $0, $0, 0
TAG423:
sll $0, $0, 0
lui $2, 0
bgez $1, TAG424
lui $1, 10
TAG424:
lui $4, 4
bgez $4, TAG425
lui $1, 3
blez $4, TAG425
TAG425:
mtlo $1
sll $0, $0, 0
mthi $1
sra $1, $4, 3
TAG426:
divu $1, $1
mfhi $2
mtlo $1
mtlo $1
TAG427:
multu $2, $2
mthi $2
lbu $1, 0($2)
blez $1, TAG428
TAG428:
mflo $1
bne $1, $1, TAG429
xori $3, $1, 4
lui $4, 5
TAG429:
lui $1, 9
srl $2, $1, 8
div $4, $4
sb $2, -2304($2)
TAG430:
mflo $1
sb $1, 0($1)
lui $2, 12
bne $2, $2, TAG431
TAG431:
mult $2, $2
mtlo $2
mfhi $4
mtlo $2
TAG432:
blez $4, TAG433
lui $2, 2
mthi $4
sw $4, -144($4)
TAG433:
bgtz $2, TAG434
mult $2, $2
mult $2, $2
mtlo $2
TAG434:
bltz $2, TAG435
lui $3, 1
bgtz $2, TAG435
sll $0, $0, 0
TAG435:
mflo $3
srlv $1, $3, $3
lw $2, 0($1)
lhu $3, -144($2)
TAG436:
mtlo $3
divu $3, $3
mflo $1
lui $4, 2
TAG437:
mtlo $4
beq $4, $4, TAG438
slti $4, $4, 1
mthi $4
TAG438:
mflo $2
mfhi $2
lui $2, 3
sll $0, $0, 0
TAG439:
bgez $2, TAG440
sllv $1, $2, $2
mtlo $2
divu $1, $2
TAG440:
sll $0, $0, 0
divu $1, $1
andi $4, $1, 8
sll $0, $0, 0
TAG441:
addiu $3, $2, 9
blez $3, TAG442
mthi $3
mflo $3
TAG442:
mflo $3
bne $3, $3, TAG443
divu $3, $3
sb $3, 0($3)
TAG443:
mtlo $3
nor $2, $3, $3
lui $2, 5
bgtz $2, TAG444
TAG444:
sll $0, $0, 0
beq $2, $2, TAG445
mfhi $1
beq $1, $1, TAG445
TAG445:
lbu $1, 0($1)
bgtz $1, TAG446
sb $1, -144($1)
lui $1, 12
TAG446:
lui $3, 10
beq $1, $3, TAG447
sll $0, $0, 0
mfhi $4
TAG447:
sw $4, 0($4)
mfhi $3
beq $3, $3, TAG448
sb $3, 0($3)
TAG448:
lui $4, 4
bne $3, $3, TAG449
mthi $3
mult $4, $4
TAG449:
blez $4, TAG450
subu $1, $4, $4
beq $4, $1, TAG450
sll $4, $1, 9
TAG450:
lui $1, 11
add $2, $4, $4
mfhi $1
blez $2, TAG451
TAG451:
mfhi $4
ori $1, $1, 13
addiu $1, $1, 1
srlv $2, $1, $4
TAG452:
mtlo $2
mthi $2
sb $2, 0($2)
sub $2, $2, $2
TAG453:
sb $2, 0($2)
sltiu $4, $2, 15
beq $4, $2, TAG454
multu $4, $2
TAG454:
lui $2, 15
sltiu $3, $2, 8
lui $4, 4
bne $2, $4, TAG455
TAG455:
sll $0, $0, 0
lui $3, 3
divu $3, $4
mflo $3
TAG456:
mfhi $4
mult $3, $3
or $4, $3, $3
lh $2, 0($4)
TAG457:
bgez $2, TAG458
lh $1, 0($2)
mtlo $1
mfhi $1
TAG458:
lhu $3, 0($1)
addiu $1, $3, 6
sh $1, 0($1)
slti $2, $1, 7
TAG459:
div $2, $2
mtlo $2
sll $1, $2, 8
multu $1, $1
TAG460:
xori $1, $1, 8
bne $1, $1, TAG461
sltiu $2, $1, 7
blez $1, TAG461
TAG461:
lbu $4, 0($2)
lbu $3, 0($4)
sra $3, $3, 14
bne $2, $4, TAG462
TAG462:
mtlo $3
mflo $1
bne $3, $1, TAG463
xor $1, $1, $1
TAG463:
blez $1, TAG464
mfhi $4
lhu $2, 0($4)
bne $4, $4, TAG464
TAG464:
lbu $4, 0($2)
multu $4, $4
lui $3, 11
lui $4, 14
TAG465:
addiu $2, $4, 11
bgez $2, TAG466
sll $0, $0, 0
lb $3, 0($4)
TAG466:
mtlo $3
xor $3, $3, $3
sb $3, 0($3)
lhu $4, 0($3)
TAG467:
addi $3, $4, 11
andi $4, $4, 3
lui $1, 7
mthi $1
TAG468:
lui $4, 13
mflo $4
bgez $4, TAG469
mtlo $4
TAG469:
beq $4, $4, TAG470
sll $0, $0, 0
sh $2, 0($2)
bne $2, $2, TAG470
TAG470:
lui $4, 13
bgtz $2, TAG471
mflo $2
sb $2, 0($2)
TAG471:
sll $0, $0, 0
mthi $2
sltiu $2, $2, 11
mflo $4
TAG472:
sll $0, $0, 0
mflo $2
multu $2, $2
ori $1, $4, 13
TAG473:
bne $1, $1, TAG474
andi $1, $1, 5
lui $4, 2
mtlo $4
TAG474:
bgtz $4, TAG475
addu $1, $4, $4
beq $1, $1, TAG475
mult $1, $1
TAG475:
beq $1, $1, TAG476
sra $4, $1, 4
mtlo $4
multu $4, $4
TAG476:
bne $4, $4, TAG477
divu $4, $4
lui $4, 9
srav $4, $4, $4
TAG477:
blez $4, TAG478
lui $2, 12
mfhi $4
beq $4, $4, TAG478
TAG478:
mflo $3
lbu $1, 0($3)
lbu $1, 0($4)
blez $4, TAG479
TAG479:
mfhi $2
mfhi $1
multu $1, $1
slti $1, $2, 2
TAG480:
sllv $4, $1, $1
divu $4, $1
lui $2, 7
sb $1, 0($4)
TAG481:
mtlo $2
bltz $2, TAG482
mfhi $4
mtlo $2
TAG482:
andi $3, $4, 7
sll $1, $3, 6
beq $1, $4, TAG483
mtlo $4
TAG483:
srlv $3, $1, $1
sllv $1, $1, $3
lb $3, 0($3)
sh $1, 0($1)
TAG484:
beq $3, $3, TAG485
mtlo $3
lbu $2, 0($3)
bne $3, $2, TAG485
TAG485:
mfhi $1
lui $2, 1
sll $0, $0, 0
mfhi $2
TAG486:
sh $2, 0($2)
mtlo $2
blez $2, TAG487
lw $4, 0($2)
TAG487:
sltu $3, $4, $4
lui $4, 14
multu $4, $3
beq $4, $4, TAG488
TAG488:
multu $4, $4
lui $2, 3
mfhi $2
lui $2, 7
TAG489:
lui $2, 11
nor $4, $2, $2
srav $2, $2, $2
bne $2, $2, TAG490
TAG490:
xor $2, $2, $2
mfhi $3
sh $2, 0($2)
lui $4, 6
TAG491:
lui $1, 9
mfhi $3
bne $3, $1, TAG492
lui $2, 9
TAG492:
bne $2, $2, TAG493
lui $3, 14
divu $3, $3
ori $1, $2, 7
TAG493:
mtlo $1
divu $1, $1
div $1, $1
bne $1, $1, TAG494
TAG494:
divu $1, $1
ori $1, $1, 3
addu $4, $1, $1
mtlo $1
TAG495:
sll $0, $0, 0
slti $3, $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG496:
sllv $4, $2, $2
bgtz $2, TAG497
xor $4, $2, $2
beq $4, $2, TAG497
TAG497:
mult $4, $4
sw $4, 0($4)
mfhi $3
add $4, $4, $3
TAG498:
bgtz $4, TAG499
mthi $4
multu $4, $4
xori $3, $4, 2
TAG499:
mfhi $1
lhu $2, 0($1)
lb $2, 0($3)
mtlo $2
TAG500:
bgez $2, TAG501
addi $1, $2, 0
add $2, $2, $2
sh $1, 0($2)
TAG501:
mflo $3
slti $1, $2, 2
bne $3, $3, TAG502
sw $3, 0($2)
TAG502:
lbu $4, 0($1)
beq $1, $1, TAG503
lui $2, 11
mfhi $4
TAG503:
srl $2, $4, 14
bne $4, $2, TAG504
sh $2, 0($4)
bgtz $4, TAG504
TAG504:
lui $3, 0
mflo $3
sra $2, $3, 10
bltz $2, TAG505
TAG505:
subu $1, $2, $2
bne $1, $2, TAG506
lui $3, 3
mthi $1
TAG506:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
mfhi $4
TAG507:
bne $4, $4, TAG508
lui $3, 13
lui $2, 10
lui $2, 7
TAG508:
mult $2, $2
divu $2, $2
bne $2, $2, TAG509
mfhi $4
TAG509:
sb $4, 0($4)
lui $4, 6
srav $4, $4, $4
mfhi $4
TAG510:
sll $1, $4, 11
beq $4, $4, TAG511
sw $4, 0($1)
mthi $4
TAG511:
sw $1, 0($1)
lui $4, 10
mfhi $4
mtlo $4
TAG512:
lh $1, 0($4)
bltz $4, TAG513
sh $4, 0($1)
lui $1, 13
TAG513:
sll $0, $0, 0
multu $1, $1
sra $2, $1, 3
slti $1, $2, 4
TAG514:
bgtz $1, TAG515
sb $1, 0($1)
beq $1, $1, TAG515
lui $2, 0
TAG515:
mthi $2
srl $4, $2, 2
lw $2, 0($4)
sw $4, 0($2)
TAG516:
bgtz $2, TAG517
lui $2, 14
sll $2, $2, 10
mthi $2
TAG517:
mflo $4
slti $1, $4, 4
mthi $1
beq $2, $2, TAG518
TAG518:
mult $1, $1
bgtz $1, TAG519
and $3, $1, $1
lui $2, 12
TAG519:
mfhi $1
subu $1, $2, $2
mult $2, $2
bne $2, $1, TAG520
TAG520:
mfhi $4
mflo $1
bgtz $4, TAG521
lui $3, 15
TAG521:
mthi $3
beq $3, $3, TAG522
sll $0, $0, 0
andi $1, $3, 10
TAG522:
bgtz $1, TAG523
subu $1, $1, $1
lw $4, 0($1)
mult $4, $4
TAG523:
lui $4, 0
sb $4, 0($4)
sltiu $3, $4, 14
beq $4, $4, TAG524
TAG524:
sb $3, 0($3)
blez $3, TAG525
sll $2, $3, 13
mult $3, $3
TAG525:
srav $3, $2, $2
mfhi $1
subu $3, $3, $2
lui $2, 5
TAG526:
mtlo $2
mthi $2
multu $2, $2
mtlo $2
TAG527:
bgtz $2, TAG528
mult $2, $2
beq $2, $2, TAG528
lui $1, 14
TAG528:
mult $1, $1
mfhi $2
lh $1, 0($1)
mthi $1
TAG529:
multu $1, $1
lb $3, -256($1)
add $1, $3, $3
subu $4, $3, $1
TAG530:
lhu $3, 0($4)
mtlo $3
sra $1, $4, 15
bltz $1, TAG531
TAG531:
mtlo $1
mult $1, $1
add $4, $1, $1
mtlo $1
TAG532:
bgtz $4, TAG533
sh $4, 0($4)
srlv $4, $4, $4
lui $2, 0
TAG533:
sll $1, $2, 10
bne $2, $1, TAG534
lh $3, 0($1)
bgtz $1, TAG534
TAG534:
mfhi $4
sw $4, 0($3)
srl $4, $4, 14
multu $3, $3
TAG535:
bgez $4, TAG536
lw $1, 0($4)
beq $1, $4, TAG536
lui $2, 9
TAG536:
bne $2, $2, TAG537
lb $3, 0($2)
bne $3, $2, TAG537
multu $2, $2
TAG537:
sll $4, $3, 10
mtlo $4
slti $2, $4, 1
bgtz $4, TAG538
TAG538:
mult $2, $2
andi $1, $2, 7
lb $1, 0($2)
blez $1, TAG539
TAG539:
sb $1, 0($1)
and $1, $1, $1
bgez $1, TAG540
mthi $1
TAG540:
lui $4, 7
mtlo $4
bgez $1, TAG541
mflo $1
TAG541:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
bgez $1, TAG542
TAG542:
multu $1, $1
lui $1, 3
mfhi $2
bgez $1, TAG543
TAG543:
lb $2, 0($2)
mfhi $4
bgez $4, TAG544
mtlo $4
TAG544:
mfhi $1
bne $1, $4, TAG545
sb $4, 0($1)
mult $4, $4
TAG545:
mfhi $1
xor $3, $1, $1
beq $1, $1, TAG546
srl $2, $1, 8
TAG546:
lui $4, 7
sltu $1, $4, $2
mflo $4
mult $1, $1
TAG547:
lui $1, 7
sra $4, $1, 9
mtlo $4
sb $4, -896($4)
TAG548:
srl $4, $4, 11
lui $1, 12
bltz $4, TAG549
mtlo $4
TAG549:
sll $0, $0, 0
xori $3, $1, 15
lui $2, 8
lui $2, 9
TAG550:
bne $2, $2, TAG551
sll $0, $0, 0
addiu $1, $2, 8
bgtz $1, TAG551
TAG551:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
lui $2, 13
TAG552:
bltz $2, TAG553
sll $0, $0, 0
mthi $2
bne $3, $2, TAG553
TAG553:
mfhi $3
sll $0, $0, 0
divu $3, $3
blez $3, TAG554
TAG554:
mthi $3
sll $0, $0, 0
mflo $2
subu $4, $4, $3
TAG555:
sra $2, $4, 7
srav $1, $2, $4
lui $3, 0
addiu $2, $1, 12
TAG556:
bgtz $2, TAG557
mtlo $2
blez $2, TAG557
mult $2, $2
TAG557:
sll $0, $0, 0
mtlo $2
lui $2, 5
mthi $2
TAG558:
sra $2, $2, 0
lui $2, 6
mfhi $4
mtlo $4
TAG559:
mfhi $4
div $4, $4
sll $0, $0, 0
mthi $2
TAG560:
sll $0, $0, 0
mfhi $2
bltz $2, TAG561
div $2, $2
TAG561:
and $4, $2, $2
mthi $2
or $3, $2, $4
mtlo $4
TAG562:
lui $4, 11
lui $3, 11
sll $0, $0, 0
mthi $3
TAG563:
sll $3, $3, 12
lui $3, 6
sll $0, $0, 0
bne $3, $3, TAG564
TAG564:
mflo $4
mthi $4
mflo $4
sll $0, $0, 0
TAG565:
mfhi $2
sll $0, $0, 0
xor $1, $3, $2
lui $1, 10
TAG566:
bne $1, $1, TAG567
mthi $1
bne $1, $1, TAG567
lui $3, 5
TAG567:
xori $4, $3, 1
addiu $1, $3, 9
nor $2, $3, $1
slti $1, $4, 2
TAG568:
mtlo $1
beq $1, $1, TAG569
lui $1, 11
lui $4, 1
TAG569:
mthi $4
blez $4, TAG570
sltu $1, $4, $4
bgtz $1, TAG570
TAG570:
mtlo $1
mflo $1
bne $1, $1, TAG571
lbu $3, 0($1)
TAG571:
beq $3, $3, TAG572
mfhi $3
mthi $3
sb $3, 0($3)
TAG572:
mult $3, $3
lui $3, 1
mult $3, $3
mfhi $1
TAG573:
mflo $2
slti $1, $1, 11
mfhi $4
sb $2, 0($1)
TAG574:
addu $2, $4, $4
mtlo $2
srav $1, $2, $2
mfhi $4
TAG575:
bgtz $4, TAG576
sb $4, 0($4)
mflo $4
lui $1, 15
TAG576:
sh $1, 0($1)
sb $1, 0($1)
mthi $1
slti $2, $1, 14
TAG577:
beq $2, $2, TAG578
lui $3, 14
sllv $4, $3, $3
blez $2, TAG578
TAG578:
slti $3, $4, 7
nor $4, $4, $4
mtlo $3
bgtz $3, TAG579
TAG579:
lui $4, 13
mult $4, $4
sll $0, $0, 0
mfhi $4
TAG580:
mflo $4
mflo $4
multu $4, $4
bne $4, $4, TAG581
TAG581:
mfhi $2
mthi $4
mflo $4
blez $4, TAG582
TAG582:
lbu $4, 0($4)
srl $1, $4, 6
blez $1, TAG583
lbu $1, 0($1)
TAG583:
mfhi $1
lui $4, 11
sw $1, 0($1)
lhu $3, 0($1)
TAG584:
sw $3, 0($3)
addu $2, $3, $3
mtlo $2
mfhi $3
TAG585:
mult $3, $3
multu $3, $3
sll $3, $3, 7
lui $2, 3
TAG586:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
sb $2, 0($1)
TAG587:
sra $1, $1, 3
lhu $1, 0($1)
sub $4, $1, $1
blez $1, TAG588
TAG588:
mult $4, $4
bne $4, $4, TAG589
srav $4, $4, $4
bne $4, $4, TAG589
TAG589:
sh $4, 0($4)
sw $4, 0($4)
lw $1, 0($4)
ori $4, $1, 7
TAG590:
mult $4, $4
sb $4, 0($4)
slti $2, $4, 8
lui $2, 4
TAG591:
ori $4, $2, 11
sll $0, $0, 0
mult $4, $2
slti $2, $2, 12
TAG592:
multu $2, $2
beq $2, $2, TAG593
slt $3, $2, $2
sw $3, 0($3)
TAG593:
mtlo $3
mthi $3
slt $1, $3, $3
beq $3, $1, TAG594
TAG594:
mult $1, $1
mfhi $3
mfhi $3
mtlo $3
TAG595:
mfhi $4
lui $3, 8
mult $3, $3
slt $4, $3, $3
TAG596:
mflo $1
srlv $4, $1, $1
mfhi $2
bgez $4, TAG597
TAG597:
mthi $2
div $2, $2
lbu $4, 0($2)
slt $2, $4, $4
TAG598:
beq $2, $2, TAG599
mtlo $2
bne $2, $2, TAG599
mflo $2
TAG599:
lui $4, 6
sll $0, $0, 0
lui $4, 0
mtlo $4
TAG600:
mfhi $4
multu $4, $4
lui $2, 1
addiu $1, $2, 13
TAG601:
addiu $2, $1, 3
blez $1, TAG602
sll $0, $0, 0
sll $0, $0, 0
TAG602:
lw $3, 0($4)
mtlo $4
mthi $3
sllv $1, $4, $3
TAG603:
lb $4, 0($1)
mult $1, $4
bne $4, $4, TAG604
sh $1, 0($1)
TAG604:
mfhi $1
bltz $4, TAG605
lhu $4, 0($4)
sh $4, 0($4)
TAG605:
addiu $1, $4, 8
lui $2, 15
multu $2, $1
multu $1, $4
TAG606:
sll $0, $0, 0
multu $2, $2
bltz $2, TAG607
mflo $4
TAG607:
mflo $2
beq $2, $4, TAG608
lui $3, 15
bne $2, $4, TAG608
TAG608:
mult $3, $3
bgtz $3, TAG609
addiu $4, $3, 11
bgtz $4, TAG609
TAG609:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
mfhi $4
TAG610:
mtlo $4
lui $4, 3
sll $0, $0, 0
sll $0, $0, 0
TAG611:
blez $3, TAG612
div $3, $3
sltiu $1, $3, 0
lbu $4, 0($1)
TAG612:
lbu $4, 0($4)
bltz $4, TAG613
lbu $3, 0($4)
lui $1, 11
TAG613:
bne $1, $1, TAG614
mfhi $2
bgtz $1, TAG614
srl $3, $2, 15
TAG614:
mflo $2
bne $3, $3, TAG615
lb $2, 0($2)
nor $2, $2, $3
TAG615:
sh $2, 1($2)
srav $3, $2, $2
multu $3, $2
mult $2, $2
TAG616:
beq $3, $3, TAG617
sllv $1, $3, $3
sltu $4, $1, $3
slt $4, $3, $4
TAG617:
bgtz $4, TAG618
lui $3, 13
bltz $3, TAG618
mult $3, $3
TAG618:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
or $4, $3, $3
TAG619:
bne $4, $4, TAG620
divu $4, $4
sll $0, $0, 0
bltz $4, TAG620
TAG620:
lui $4, 6
sll $0, $0, 0
slti $4, $4, 14
mfhi $1
TAG621:
multu $1, $1
mflo $3
beq $1, $3, TAG622
lui $2, 5
TAG622:
lui $2, 11
sltiu $3, $2, 13
mfhi $2
beq $2, $3, TAG623
TAG623:
mfhi $4
multu $2, $2
mfhi $2
sw $2, 0($2)
TAG624:
sb $2, 0($2)
multu $2, $2
sw $2, 0($2)
sh $2, 0($2)
TAG625:
addu $3, $2, $2
add $2, $2, $2
lui $4, 0
mthi $2
TAG626:
mthi $4
multu $4, $4
lui $2, 4
lh $2, 0($4)
TAG627:
lhu $4, 0($2)
bne $2, $2, TAG628
andi $4, $2, 9
bgtz $4, TAG628
TAG628:
lbu $4, 0($4)
lbu $1, 0($4)
slt $4, $4, $1
lhu $3, 0($4)
TAG629:
mthi $3
sb $3, 0($3)
xor $1, $3, $3
sb $1, 0($1)
TAG630:
mult $1, $1
lui $1, 5
beq $1, $1, TAG631
sll $0, $0, 0
TAG631:
srlv $4, $1, $1
mtlo $1
bne $1, $4, TAG632
mflo $1
TAG632:
lui $3, 14
sll $0, $0, 0
lui $4, 3
sll $0, $0, 0
TAG633:
beq $4, $4, TAG634
divu $4, $4
bne $4, $4, TAG634
lw $2, 0($4)
TAG634:
lui $4, 5
divu $4, $4
lui $2, 11
lui $2, 7
TAG635:
subu $3, $2, $2
and $1, $3, $2
blez $1, TAG636
nor $2, $3, $2
TAG636:
sll $1, $2, 13
lui $1, 13
xori $1, $1, 13
lui $4, 5
TAG637:
multu $4, $4
andi $2, $4, 10
sll $0, $0, 0
multu $1, $2
TAG638:
beq $1, $1, TAG639
mflo $1
lb $4, 0($1)
mtlo $4
TAG639:
div $4, $4
sll $0, $0, 0
sllv $1, $4, $4
mtlo $4
TAG640:
lui $4, 7
lui $4, 7
div $4, $4
divu $4, $4
TAG641:
subu $2, $4, $4
addiu $2, $2, 11
multu $2, $2
bltz $2, TAG642
TAG642:
mfhi $1
mult $1, $1
xori $2, $2, 9
lui $3, 8
TAG643:
sltiu $2, $3, 11
sll $4, $2, 2
multu $4, $3
mfhi $4
TAG644:
mfhi $2
bgtz $2, TAG645
add $3, $4, $4
sb $2, 0($4)
TAG645:
mflo $4
mthi $4
mfhi $1
sub $2, $1, $4
TAG646:
addu $3, $2, $2
bltz $3, TAG647
sub $2, $3, $2
bne $2, $3, TAG647
TAG647:
multu $2, $2
sra $1, $2, 11
multu $1, $1
xori $2, $2, 8
TAG648:
lw $3, 0($2)
mthi $2
multu $2, $3
blez $3, TAG649
TAG649:
divu $3, $3
lui $4, 11
div $4, $3
nor $4, $4, $3
TAG650:
xori $4, $4, 2
bne $4, $4, TAG651
multu $4, $4
div $4, $4
TAG651:
xori $1, $4, 11
sll $0, $0, 0
beq $1, $4, TAG652
mfhi $2
TAG652:
mfhi $3
lui $2, 8
xor $2, $2, $3
slti $2, $2, 5
TAG653:
nor $3, $2, $2
mfhi $4
div $3, $3
bgez $3, TAG654
TAG654:
mflo $4
sltu $4, $4, $4
sllv $4, $4, $4
mflo $1
TAG655:
blez $1, TAG656
sb $1, 0($1)
lbu $1, 0($1)
multu $1, $1
TAG656:
lui $4, 7
bne $1, $1, TAG657
sll $0, $0, 0
mthi $4
TAG657:
blez $4, TAG658
sll $0, $0, 0
sllv $3, $1, $1
sb $1, 0($3)
TAG658:
blez $3, TAG659
subu $4, $3, $3
lhu $4, 0($3)
lb $2, 0($3)
TAG659:
divu $2, $2
mthi $2
slt $2, $2, $2
sb $2, 0($2)
TAG660:
lui $1, 5
sb $1, 0($2)
mthi $2
mult $2, $2
TAG661:
sll $0, $0, 0
multu $1, $2
sw $2, 0($2)
mflo $3
TAG662:
and $1, $3, $3
sra $1, $1, 2
bne $3, $1, TAG663
add $2, $3, $1
TAG663:
mthi $2
bgez $2, TAG664
lui $2, 3
bgtz $2, TAG664
TAG664:
addu $4, $2, $2
lui $2, 8
mflo $2
multu $2, $2
TAG665:
lh $1, 0($2)
mult $2, $2
mthi $2
mflo $3
TAG666:
beq $3, $3, TAG667
mult $3, $3
mthi $3
srlv $4, $3, $3
TAG667:
bgtz $4, TAG668
sllv $3, $4, $4
addi $1, $4, 4
sw $4, 0($3)
TAG668:
sb $1, 0($1)
mfhi $3
sw $1, 0($3)
mflo $1
TAG669:
xori $1, $1, 1
bgtz $1, TAG670
lbu $3, 0($1)
mfhi $2
TAG670:
addiu $4, $2, 10
sb $4, 0($4)
mult $4, $2
blez $2, TAG671
TAG671:
lhu $2, 0($4)
sh $4, 0($2)
mflo $1
lui $2, 15
TAG672:
sll $0, $0, 0
mthi $2
bne $2, $2, TAG673
mtlo $2
TAG673:
sltiu $1, $2, 10
lh $3, 0($1)
xori $3, $1, 6
sll $0, $0, 0
TAG674:
sh $3, 0($3)
lui $3, 9
mthi $3
lui $1, 15
TAG675:
sll $0, $0, 0
sll $0, $0, 0
div $1, $3
sll $0, $0, 0
TAG676:
bgez $3, TAG677
sll $0, $0, 0
lw $4, 0($2)
bne $2, $2, TAG677
TAG677:
mfhi $3
mflo $3
lui $1, 15
bltz $3, TAG678
TAG678:
sll $0, $0, 0
mtlo $3
mthi $3
bltz $1, TAG679
TAG679:
or $4, $3, $3
addiu $3, $4, 9
nor $2, $3, $3
andi $3, $3, 2
TAG680:
mthi $3
sh $3, 0($3)
lui $2, 0
mflo $2
TAG681:
bgtz $2, TAG682
mfhi $3
mtlo $3
bgtz $3, TAG682
TAG682:
mthi $3
sllv $4, $3, $3
mthi $4
lbu $3, 0($3)
TAG683:
sh $3, 0($3)
lui $4, 8
beq $3, $3, TAG684
sh $3, 0($3)
TAG684:
bltz $4, TAG685
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG685:
sra $2, $3, 15
mthi $3
bne $2, $2, TAG686
sb $2, 0($3)
TAG686:
beq $2, $2, TAG687
mtlo $2
blez $2, TAG687
srl $4, $2, 12
TAG687:
ori $3, $4, 6
mflo $1
xor $1, $4, $1
sll $0, $0, 0
TAG688:
nor $2, $1, $1
multu $1, $1
mthi $1
div $2, $1
TAG689:
mult $2, $2
sll $1, $2, 0
slti $2, $1, 13
sb $2, 0($2)
TAG690:
divu $2, $2
andi $4, $2, 14
lui $3, 12
lb $3, 0($2)
TAG691:
lui $3, 1
lui $2, 12
bgtz $2, TAG692
sllv $2, $3, $3
TAG692:
bgez $2, TAG693
srlv $3, $2, $2
mthi $2
mthi $2
TAG693:
blez $3, TAG694
sll $0, $0, 0
bne $3, $3, TAG694
sll $0, $0, 0
TAG694:
lui $3, 15
and $1, $1, $3
ori $1, $1, 12
div $3, $3
TAG695:
andi $1, $1, 8
sw $1, 0($1)
mult $1, $1
lbu $2, 0($1)
TAG696:
bgez $2, TAG697
mflo $4
div $2, $4
sh $4, 0($4)
TAG697:
mflo $2
bgtz $2, TAG698
sh $2, 0($4)
divu $4, $4
TAG698:
lui $1, 6
bgez $2, TAG699
subu $3, $1, $2
lhu $3, 0($2)
TAG699:
sll $0, $0, 0
mfhi $2
mult $2, $3
mflo $1
TAG700:
multu $1, $1
lui $1, 11
mflo $1
lh $3, 0($1)
TAG701:
bgez $3, TAG702
mfhi $3
mtlo $3
div $3, $3
TAG702:
mflo $2
addiu $2, $3, 15
div $2, $2
mult $2, $2
TAG703:
and $2, $2, $2
multu $2, $2
bltz $2, TAG704
mfhi $3
TAG704:
mtlo $3
lui $2, 5
lw $1, 0($3)
addu $4, $2, $3
TAG705:
beq $4, $4, TAG706
xor $2, $4, $4
ori $3, $4, 10
lui $1, 10
TAG706:
sll $0, $0, 0
mult $1, $1
sll $0, $0, 0
div $1, $1
TAG707:
lui $1, 15
sllv $3, $1, $1
slt $2, $3, $3
bltz $1, TAG708
TAG708:
andi $1, $2, 7
lui $2, 10
slti $2, $2, 0
sltiu $4, $1, 7
TAG709:
lui $2, 15
mtlo $2
multu $2, $2
divu $2, $4
TAG710:
bltz $2, TAG711
multu $2, $2
ori $3, $2, 2
mfhi $4
TAG711:
sw $4, -225($4)
lui $4, 2
lui $2, 14
bltz $4, TAG712
TAG712:
sll $0, $0, 0
div $1, $2
subu $2, $2, $1
beq $2, $2, TAG713
TAG713:
or $2, $2, $2
beq $2, $2, TAG714
srav $3, $2, $2
lui $3, 10
TAG714:
mult $3, $3
addiu $3, $3, 0
mthi $3
mflo $3
TAG715:
mult $3, $3
mflo $2
bgez $2, TAG716
sltu $4, $2, $3
TAG716:
multu $4, $4
sub $1, $4, $4
mthi $1
bltz $1, TAG717
TAG717:
mthi $1
mfhi $4
mfhi $3
sw $3, 0($3)
TAG718:
ori $1, $3, 10
bne $3, $3, TAG719
sh $3, 0($3)
sh $1, 0($1)
TAG719:
multu $1, $1
bne $1, $1, TAG720
lui $3, 1
addiu $2, $1, 1
TAG720:
multu $2, $2
mthi $2
mtlo $2
or $4, $2, $2
TAG721:
sb $4, 0($4)
mflo $1
blez $4, TAG722
ori $1, $1, 15
TAG722:
bgez $1, TAG723
mthi $1
lui $4, 10
mtlo $4
TAG723:
sb $4, 0($4)
mthi $4
bgez $4, TAG724
lbu $3, 0($4)
TAG724:
mtlo $3
mtlo $3
lb $3, 0($3)
bne $3, $3, TAG725
TAG725:
lbu $1, 0($3)
sb $3, 0($3)
beq $1, $3, TAG726
srlv $4, $3, $3
TAG726:
mthi $4
mult $4, $4
mthi $4
sltu $3, $4, $4
TAG727:
multu $3, $3
bne $3, $3, TAG728
mflo $2
bgez $3, TAG728
TAG728:
lui $4, 9
bne $2, $4, TAG729
sltiu $1, $2, 15
lui $2, 0
TAG729:
mflo $3
slt $2, $3, $2
multu $3, $2
lb $1, 0($2)
TAG730:
sh $1, 0($1)
lui $3, 3
sll $0, $0, 0
mfhi $1
TAG731:
lui $3, 12
mflo $2
lui $1, 4
div $3, $1
TAG732:
sll $0, $0, 0
srlv $3, $3, $3
multu $1, $3
bne $1, $3, TAG733
TAG733:
slt $4, $3, $3
div $3, $3
sw $3, 0($4)
sltiu $1, $4, 6
TAG734:
lui $1, 10
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG735:
beq $3, $3, TAG736
sll $0, $0, 0
mult $3, $3
lui $1, 15
TAG736:
slt $2, $1, $1
mthi $2
sll $0, $0, 0
lui $1, 15
TAG737:
lui $2, 4
lui $4, 0
sll $0, $0, 0
mthi $4
TAG738:
sb $4, 0($4)
mthi $4
xori $2, $4, 4
mflo $1
TAG739:
lbu $4, 0($1)
or $4, $1, $1
sb $4, 0($4)
xori $3, $1, 11
TAG740:
mtlo $3
multu $3, $3
mthi $3
mflo $3
TAG741:
lh $1, 0($3)
bltz $3, TAG742
lbu $2, 0($1)
sra $1, $1, 4
TAG742:
nor $2, $1, $1
ori $3, $2, 2
mflo $3
xor $1, $2, $3
TAG743:
multu $1, $1
lui $2, 4
beq $1, $1, TAG744
mthi $2
TAG744:
sltu $4, $2, $2
mthi $2
lbu $3, 0($4)
bltz $2, TAG745
TAG745:
mthi $3
mflo $1
sh $1, 0($3)
bltz $1, TAG746
TAG746:
multu $1, $1
lw $3, -10201($1)
lui $2, 12
div $1, $1
TAG747:
mult $2, $2
and $3, $2, $2
div $2, $2
addu $4, $2, $3
TAG748:
or $3, $4, $4
mflo $3
bne $3, $3, TAG749
mthi $3
TAG749:
sltu $3, $3, $3
bltz $3, TAG750
mfhi $1
mthi $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop