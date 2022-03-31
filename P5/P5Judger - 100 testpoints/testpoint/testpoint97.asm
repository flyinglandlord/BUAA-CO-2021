ori $1, $0, 15
ori $2, $0, 7
ori $3, $0, 3
ori $4, $0, 15
sw $3, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $1, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $3, 120($0)
sw $2, 124($0)
div $2, $2
mthi $2
lui $4, 9
divu $4, $4
TAG1:
bltz $4, TAG2
addiu $2, $4, 0
bltz $4, TAG2
lui $3, 12
TAG2:
addiu $2, $3, 15
lui $4, 7
bgez $4, TAG3
sll $0, $0, 0
TAG3:
addu $2, $4, $4
sll $0, $0, 0
bne $2, $2, TAG4
sll $0, $0, 0
TAG4:
addiu $4, $2, 13
lui $1, 8
bgtz $4, TAG5
sll $0, $0, 0
TAG5:
slti $2, $3, 4
multu $2, $2
beq $2, $3, TAG6
mult $2, $2
TAG6:
sltiu $4, $2, 3
blez $2, TAG7
multu $2, $2
mflo $4
TAG7:
xori $3, $4, 9
srlv $1, $4, $3
lui $4, 15
beq $4, $3, TAG8
TAG8:
sll $0, $0, 0
lui $4, 12
lui $1, 7
beq $4, $1, TAG9
TAG9:
multu $1, $1
xor $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG10:
bgtz $4, TAG11
lui $4, 12
bne $4, $4, TAG11
multu $4, $4
TAG11:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 3
lui $2, 9
TAG12:
bgtz $2, TAG13
mult $2, $2
andi $3, $2, 14
mflo $1
TAG13:
sll $0, $0, 0
mflo $3
blez $3, TAG14
sll $0, $0, 0
TAG14:
bne $1, $1, TAG15
divu $1, $1
lui $1, 10
lui $4, 12
TAG15:
sltu $1, $4, $4
sll $0, $0, 0
lui $1, 2
multu $1, $1
TAG16:
mflo $3
bgtz $1, TAG17
mflo $4
sb $4, 0($4)
TAG17:
lh $2, 0($4)
lh $1, 0($4)
sb $4, 0($2)
sb $4, 0($2)
TAG18:
sb $1, 0($1)
mtlo $1
mfhi $4
lhu $1, 0($4)
TAG19:
mfhi $2
lui $1, 3
and $3, $2, $2
mthi $1
TAG20:
mfhi $1
mthi $3
lui $1, 6
sll $0, $0, 0
TAG21:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG22:
bltz $2, TAG23
mthi $2
lui $4, 11
multu $4, $4
TAG23:
mult $4, $4
addiu $1, $4, 14
sll $0, $0, 0
multu $4, $4
TAG24:
mtlo $1
sll $0, $0, 0
bgtz $1, TAG25
mflo $2
TAG25:
sll $0, $0, 0
mult $2, $2
lui $1, 3
mflo $3
TAG26:
bgtz $3, TAG27
mthi $3
sltiu $3, $3, 3
lb $4, 0($3)
TAG27:
divu $4, $4
lui $1, 6
lui $4, 11
mult $4, $4
TAG28:
subu $3, $4, $4
sltiu $1, $4, 12
xor $3, $3, $3
or $3, $3, $1
TAG29:
lui $3, 9
addiu $4, $3, 15
sllv $2, $4, $3
srl $3, $2, 12
TAG30:
mfhi $1
sll $4, $3, 13
addiu $1, $4, 10
sll $0, $0, 0
TAG31:
sll $0, $0, 0
addiu $4, $3, 1
addu $2, $3, $3
lbu $1, -288($2)
TAG32:
bgez $1, TAG33
sltu $1, $1, $1
bgez $1, TAG33
divu $1, $1
TAG33:
lui $2, 9
bgtz $1, TAG34
mflo $1
beq $1, $2, TAG34
TAG34:
mfhi $2
lbu $4, 0($1)
lui $2, 12
lui $1, 2
TAG35:
bne $1, $1, TAG36
lui $1, 12
sll $0, $0, 0
mflo $3
TAG36:
sllv $1, $3, $3
bgtz $3, TAG37
mtlo $3
mfhi $1
TAG37:
sltu $1, $1, $1
lui $3, 4
lui $4, 6
bltz $3, TAG38
TAG38:
lui $2, 5
addu $1, $2, $4
blez $1, TAG39
sll $0, $0, 0
TAG39:
mult $1, $1
lui $3, 6
xori $3, $1, 10
bgtz $3, TAG40
TAG40:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG41
mthi $3
TAG41:
mfhi $4
blez $4, TAG42
addiu $2, $4, 1
mult $4, $2
TAG42:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
mflo $1
TAG43:
or $1, $1, $1
lui $3, 5
sll $3, $1, 6
sll $0, $0, 0
TAG44:
sll $0, $0, 0
slti $3, $3, 11
srlv $1, $3, $3
addi $4, $3, 7
TAG45:
lb $3, 0($4)
bgtz $3, TAG46
xori $2, $3, 3
addu $3, $2, $4
TAG46:
mfhi $3
lb $2, 0($3)
lui $3, 6
bltz $3, TAG47
TAG47:
lui $2, 7
bne $3, $2, TAG48
andi $3, $3, 8
mfhi $4
TAG48:
bgez $4, TAG49
divu $4, $4
beq $4, $4, TAG49
mfhi $3
TAG49:
lbu $4, 0($3)
srlv $1, $4, $3
and $4, $3, $4
mfhi $3
TAG50:
sw $3, 0($3)
multu $3, $3
multu $3, $3
blez $3, TAG51
TAG51:
sh $3, 0($3)
bgez $3, TAG52
lui $2, 11
lh $3, 0($3)
TAG52:
add $2, $3, $3
lui $1, 5
slti $2, $2, 5
mfhi $1
TAG53:
mtlo $1
lw $4, 0($1)
blez $1, TAG54
slt $1, $4, $4
TAG54:
slti $4, $1, 8
subu $4, $4, $4
sh $1, 0($4)
bne $1, $4, TAG55
TAG55:
multu $4, $4
lbu $3, 0($4)
lh $4, 0($4)
sw $4, 0($3)
TAG56:
mult $4, $4
bne $4, $4, TAG57
srlv $2, $4, $4
xor $1, $4, $2
TAG57:
sh $1, 0($1)
mthi $1
lw $1, 0($1)
slt $4, $1, $1
TAG58:
lui $2, 9
lui $4, 11
lui $3, 2
srlv $3, $4, $4
TAG59:
sll $0, $0, 0
blez $4, TAG60
sll $0, $0, 0
sll $0, $0, 0
TAG60:
beq $3, $3, TAG61
mthi $3
mtlo $3
sh $3, 0($3)
TAG61:
lui $4, 15
or $4, $3, $4
bne $4, $3, TAG62
sll $0, $0, 0
TAG62:
blez $4, TAG63
sll $0, $0, 0
bltz $4, TAG63
mult $4, $4
TAG63:
lui $2, 13
lui $1, 7
sll $0, $0, 0
lui $3, 11
TAG64:
multu $3, $3
addiu $4, $3, 9
sll $0, $0, 0
lui $3, 4
TAG65:
sll $0, $0, 0
andi $2, $3, 13
lbu $1, 0($2)
mthi $2
TAG66:
mtlo $1
mthi $1
andi $1, $1, 7
lui $1, 4
TAG67:
bgtz $1, TAG68
sll $0, $0, 0
lhu $4, 0($1)
mfhi $2
TAG68:
mtlo $2
sw $2, 0($2)
srlv $2, $2, $2
blez $2, TAG69
TAG69:
lui $2, 1
lui $4, 6
subu $3, $2, $2
mfhi $4
TAG70:
mtlo $4
beq $4, $4, TAG71
mthi $4
srl $2, $4, 2
TAG71:
multu $2, $2
ori $2, $2, 11
beq $2, $2, TAG72
srl $4, $2, 11
TAG72:
bgtz $4, TAG73
mflo $1
multu $4, $1
divu $4, $1
TAG73:
lbu $1, 0($1)
beq $1, $1, TAG74
lui $2, 13
lui $3, 0
TAG74:
addiu $1, $3, 15
sb $3, 0($3)
bgez $3, TAG75
multu $1, $1
TAG75:
bltz $1, TAG76
sb $1, 0($1)
sllv $4, $1, $1
lb $4, 0($1)
TAG76:
mthi $4
mflo $3
sh $4, -225($3)
lui $2, 2
TAG77:
divu $2, $2
bgtz $2, TAG78
lui $3, 2
mtlo $2
TAG78:
slt $4, $3, $3
mtlo $4
sll $4, $4, 10
bne $3, $4, TAG79
TAG79:
xori $3, $4, 13
beq $3, $3, TAG80
sllv $3, $3, $4
bne $3, $3, TAG80
TAG80:
lui $4, 5
multu $4, $4
mfhi $4
mult $3, $4
TAG81:
bne $4, $4, TAG82
ori $1, $4, 9
beq $4, $1, TAG82
div $4, $1
TAG82:
lui $4, 15
mtlo $1
sll $0, $0, 0
xor $3, $4, $4
TAG83:
or $2, $3, $3
beq $3, $2, TAG84
sb $2, 0($3)
lui $3, 5
TAG84:
blez $3, TAG85
sw $3, 0($3)
sh $3, 0($3)
lw $3, 0($3)
TAG85:
srlv $3, $3, $3
bgez $3, TAG86
lui $4, 9
sll $1, $4, 6
TAG86:
beq $1, $1, TAG87
lui $2, 6
mthi $1
mflo $3
TAG87:
mtlo $3
mult $3, $3
lui $2, 13
mfhi $3
TAG88:
bgtz $3, TAG89
sh $3, 0($3)
sra $1, $3, 10
mflo $2
TAG89:
mflo $2
addiu $4, $2, 11
mflo $1
mtlo $4
TAG90:
slti $4, $1, 13
addi $3, $1, 6
lui $4, 6
mfhi $1
TAG91:
lhu $2, 0($1)
srav $4, $2, $2
lbu $4, 0($2)
lw $4, 0($4)
TAG92:
bgez $4, TAG93
ori $2, $4, 13
bne $4, $2, TAG93
mfhi $4
TAG93:
mthi $4
mthi $4
multu $4, $4
sw $4, 0($4)
TAG94:
lui $1, 8
mthi $1
div $1, $1
or $4, $1, $4
TAG95:
andi $3, $4, 8
sllv $4, $3, $3
sltiu $2, $4, 3
beq $3, $3, TAG96
TAG96:
mtlo $2
mthi $2
sb $2, 0($2)
lui $3, 4
TAG97:
bne $3, $3, TAG98
sll $0, $0, 0
lb $3, 0($4)
mfhi $4
TAG98:
addiu $4, $4, 1
sb $4, 0($4)
beq $4, $4, TAG99
subu $3, $4, $4
TAG99:
mthi $3
bltz $3, TAG100
add $4, $3, $3
multu $4, $4
TAG100:
sllv $2, $4, $4
or $3, $2, $4
sh $3, 0($4)
bgtz $2, TAG101
TAG101:
mflo $2
multu $2, $2
mtlo $3
blez $2, TAG102
TAG102:
lh $3, 0($2)
lui $2, 12
div $2, $2
mflo $3
TAG103:
lui $2, 15
lui $4, 15
mfhi $3
mthi $2
TAG104:
lhu $2, 0($3)
mflo $1
lui $3, 4
srav $1, $2, $2
TAG105:
xor $2, $1, $1
sb $1, 0($2)
lhu $4, 0($1)
sw $1, 0($2)
TAG106:
mult $4, $4
multu $4, $4
lb $4, 0($4)
multu $4, $4
TAG107:
addi $2, $4, 8
multu $4, $4
addu $4, $2, $4
mtlo $2
TAG108:
sra $1, $4, 1
bgtz $4, TAG109
lhu $4, 0($4)
multu $1, $4
TAG109:
sb $4, 0($4)
lbu $2, 0($4)
div $4, $2
nor $4, $4, $4
TAG110:
mthi $4
blez $4, TAG111
mflo $3
lhu $4, 0($3)
TAG111:
sll $0, $0, 0
lui $1, 9
srav $1, $3, $1
sra $1, $1, 8
TAG112:
lui $1, 2
sll $0, $0, 0
addiu $2, $1, 2
multu $1, $1
TAG113:
and $3, $2, $2
bne $3, $3, TAG114
andi $3, $3, 4
mthi $2
TAG114:
beq $3, $3, TAG115
lbu $2, 0($3)
mfhi $3
mult $3, $3
TAG115:
addi $3, $3, 0
beq $3, $3, TAG116
mtlo $3
sltiu $4, $3, 7
TAG116:
lui $1, 13
mthi $4
sw $4, 16($4)
mtlo $4
TAG117:
and $3, $1, $1
addu $2, $3, $3
mult $3, $2
addu $2, $1, $3
TAG118:
div $2, $2
mtlo $2
addiu $2, $2, 4
bne $2, $2, TAG119
TAG119:
addiu $2, $2, 15
sll $3, $2, 5
sll $0, $0, 0
beq $2, $3, TAG120
TAG120:
mfhi $1
addu $3, $3, $3
lui $1, 15
lui $4, 12
TAG121:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
TAG122:
beq $2, $2, TAG123
divu $2, $2
bgez $2, TAG123
lui $4, 1
TAG123:
beq $4, $4, TAG124
sll $0, $0, 0
mthi $4
blez $4, TAG124
TAG124:
mtlo $1
bne $1, $1, TAG125
xor $3, $1, $1
mthi $3
TAG125:
sll $2, $3, 7
mflo $4
bltz $3, TAG126
sllv $4, $3, $2
TAG126:
mflo $1
mthi $1
div $1, $1
multu $4, $1
TAG127:
mfhi $1
lw $4, 0($1)
lb $4, 0($1)
sltiu $1, $1, 6
TAG128:
addiu $1, $1, 12
bne $1, $1, TAG129
lui $1, 15
slt $3, $1, $1
TAG129:
addu $1, $3, $3
sw $3, 0($1)
mfhi $1
mtlo $1
TAG130:
mflo $3
addi $1, $3, 11
lui $4, 10
bltz $1, TAG131
TAG131:
sll $0, $0, 0
lui $2, 15
bgtz $2, TAG132
andi $3, $2, 0
TAG132:
bne $3, $3, TAG133
mult $3, $3
lbu $4, 0($3)
multu $3, $3
TAG133:
lui $4, 2
blez $4, TAG134
sll $0, $0, 0
bgez $4, TAG134
TAG134:
mfhi $4
bgez $4, TAG135
lui $4, 7
blez $4, TAG135
TAG135:
slti $2, $4, 10
bltz $4, TAG136
subu $4, $2, $4
or $2, $2, $4
TAG136:
lui $1, 8
andi $3, $1, 13
or $3, $3, $2
bgez $2, TAG137
TAG137:
sll $0, $0, 0
bne $2, $3, TAG138
lui $3, 10
sll $0, $0, 0
TAG138:
addiu $4, $1, 1
lui $2, 2
lui $1, 0
sra $4, $1, 9
TAG139:
sltu $1, $4, $4
mult $1, $1
beq $4, $1, TAG140
mfhi $2
TAG140:
bgez $2, TAG141
mult $2, $2
sb $2, 0($2)
bne $2, $2, TAG141
TAG141:
sltiu $4, $2, 7
lhu $4, 0($2)
mtlo $2
mthi $2
TAG142:
lui $2, 3
bne $2, $4, TAG143
lui $1, 11
lui $2, 14
TAG143:
mtlo $2
mtlo $2
srl $3, $2, 9
mtlo $2
TAG144:
mthi $3
lui $4, 3
slti $3, $4, 12
mthi $3
TAG145:
add $1, $3, $3
sltu $2, $1, $1
blez $2, TAG146
slt $4, $3, $3
TAG146:
multu $4, $4
lui $1, 0
bne $4, $1, TAG147
lhu $1, 0($4)
TAG147:
lui $2, 3
bne $1, $1, TAG148
mthi $1
mflo $1
TAG148:
lui $1, 1
lui $4, 10
lui $4, 10
beq $1, $4, TAG149
TAG149:
xori $2, $4, 7
mthi $4
lui $4, 6
mflo $1
TAG150:
or $2, $1, $1
lui $2, 6
bne $2, $2, TAG151
subu $3, $1, $2
TAG151:
mflo $4
lui $3, 14
mthi $3
lui $2, 3
TAG152:
bgtz $2, TAG153
divu $2, $2
mflo $3
lb $2, 0($2)
TAG153:
mthi $2
srav $2, $2, $2
beq $2, $2, TAG154
sll $0, $0, 0
TAG154:
sw $4, 0($4)
addi $1, $4, 0
ori $3, $1, 3
mult $3, $4
TAG155:
lb $2, 0($3)
addu $2, $2, $3
mfhi $4
mthi $3
TAG156:
mfhi $2
add $1, $4, $2
bgez $2, TAG157
mflo $4
TAG157:
multu $4, $4
sltiu $1, $4, 12
andi $1, $1, 6
mflo $2
TAG158:
lbu $4, 0($2)
mult $4, $4
mfhi $1
mfhi $4
TAG159:
lui $4, 11
mthi $4
lui $4, 2
sll $0, $0, 0
TAG160:
sltiu $4, $4, 4
mult $4, $4
srlv $3, $4, $4
srav $2, $4, $3
TAG161:
sra $1, $2, 14
mtlo $1
mthi $1
multu $1, $2
TAG162:
beq $1, $1, TAG163
lui $3, 14
sb $1, 0($3)
slti $1, $1, 14
TAG163:
lbu $3, 0($1)
sll $4, $3, 6
mfhi $2
beq $1, $4, TAG164
TAG164:
mtlo $2
sllv $3, $2, $2
beq $2, $3, TAG165
sh $2, 0($2)
TAG165:
lui $2, 3
lui $2, 13
bgtz $3, TAG166
sll $0, $0, 0
TAG166:
mtlo $2
sll $0, $0, 0
lui $1, 11
sll $0, $0, 0
TAG167:
sltu $1, $4, $4
mtlo $4
mthi $4
bne $4, $4, TAG168
TAG168:
mtlo $1
sb $1, 0($1)
srav $1, $1, $1
sltu $1, $1, $1
TAG169:
or $1, $1, $1
bgez $1, TAG170
mtlo $1
mfhi $1
TAG170:
srav $1, $1, $1
lui $1, 6
addu $1, $1, $1
mtlo $1
TAG171:
xori $1, $1, 8
bgtz $1, TAG172
sll $0, $0, 0
mfhi $3
TAG172:
bne $3, $3, TAG173
mult $3, $3
sw $3, 0($3)
sltiu $2, $3, 6
TAG173:
beq $2, $2, TAG174
lbu $1, 0($2)
mtlo $2
mtlo $2
TAG174:
mthi $1
bltz $1, TAG175
xori $2, $1, 9
mfhi $2
TAG175:
mult $2, $2
mult $2, $2
mfhi $3
bne $3, $2, TAG176
TAG176:
sb $3, 0($3)
slti $3, $3, 3
bgez $3, TAG177
sb $3, 0($3)
TAG177:
bne $3, $3, TAG178
mfhi $1
sra $2, $3, 4
lui $2, 8
TAG178:
nor $1, $2, $2
slt $2, $2, $1
mult $1, $2
sltiu $2, $2, 1
TAG179:
blez $2, TAG180
mfhi $3
mflo $3
multu $2, $2
TAG180:
mfhi $4
sra $3, $3, 8
sll $4, $3, 10
sw $4, 0($3)
TAG181:
mflo $1
xori $3, $1, 9
sb $4, 0($3)
lui $1, 1
TAG182:
sra $2, $1, 12
srl $3, $2, 4
sll $3, $1, 2
lui $2, 10
TAG183:
ori $1, $2, 3
lui $3, 4
slti $3, $3, 4
bgez $2, TAG184
TAG184:
lh $2, 0($3)
mfhi $2
bgez $2, TAG185
mthi $2
TAG185:
srlv $4, $2, $2
beq $2, $2, TAG186
lhu $2, 0($4)
mfhi $3
TAG186:
bgez $3, TAG187
mflo $3
mfhi $3
divu $3, $3
TAG187:
mthi $3
beq $3, $3, TAG188
lui $1, 0
sltu $1, $3, $3
TAG188:
sh $1, 0($1)
lbu $4, 0($1)
lui $3, 5
beq $1, $4, TAG189
TAG189:
divu $3, $3
mtlo $3
mthi $3
bltz $3, TAG190
TAG190:
mfhi $1
lui $4, 14
sll $0, $0, 0
sltu $4, $4, $4
TAG191:
lhu $1, 0($4)
mtlo $4
mult $1, $1
srlv $1, $4, $4
TAG192:
sb $1, 0($1)
lui $3, 15
sb $3, 0($1)
andi $4, $1, 6
TAG193:
multu $4, $4
xori $2, $4, 9
or $1, $2, $2
slt $3, $1, $2
TAG194:
bgtz $3, TAG195
subu $4, $3, $3
sh $3, 0($3)
ori $1, $3, 5
TAG195:
lbu $3, 0($1)
mflo $4
nor $1, $3, $1
bne $1, $1, TAG196
TAG196:
mflo $3
bgez $1, TAG197
sw $1, 0($3)
sh $3, 6($1)
TAG197:
lui $2, 1
beq $3, $3, TAG198
sh $2, 0($3)
divu $2, $2
TAG198:
mthi $2
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
TAG199:
nor $1, $1, $1
mult $1, $1
sb $1, 0($1)
div $1, $1
TAG200:
div $1, $1
beq $1, $1, TAG201
sra $3, $1, 12
or $2, $1, $3
TAG201:
sll $0, $0, 0
mfhi $3
mult $2, $3
beq $4, $2, TAG202
TAG202:
lui $2, 13
bgtz $2, TAG203
addiu $4, $3, 1
or $2, $4, $4
TAG203:
sllv $1, $2, $2
sll $0, $0, 0
srav $3, $2, $1
mflo $4
TAG204:
ori $1, $4, 1
mfhi $1
lhu $1, 0($4)
lui $2, 9
TAG205:
mthi $2
beq $2, $2, TAG206
div $2, $2
beq $2, $2, TAG206
TAG206:
andi $3, $2, 7
bgtz $2, TAG207
srlv $3, $3, $2
lui $1, 2
TAG207:
lui $3, 10
mtlo $3
subu $2, $3, $3
mthi $1
TAG208:
multu $2, $2
lui $3, 4
bne $2, $2, TAG209
lh $4, 0($2)
TAG209:
sh $4, 0($4)
lh $4, 0($4)
lui $4, 12
mfhi $3
TAG210:
xori $2, $3, 2
xor $4, $3, $2
lui $4, 5
bgtz $4, TAG211
TAG211:
mthi $4
multu $4, $4
lui $3, 11
sll $0, $0, 0
TAG212:
and $3, $3, $3
beq $3, $3, TAG213
mtlo $3
mthi $3
TAG213:
mflo $3
divu $3, $3
bgtz $3, TAG214
mthi $3
TAG214:
sll $0, $0, 0
bne $3, $3, TAG215
ori $3, $3, 2
srlv $2, $3, $3
TAG215:
mflo $2
beq $2, $2, TAG216
sb $2, 0($2)
beq $2, $2, TAG216
TAG216:
mtlo $2
lb $1, 0($2)
bne $1, $1, TAG217
xor $3, $2, $2
TAG217:
xor $2, $3, $3
beq $2, $2, TAG218
ori $2, $2, 10
multu $2, $2
TAG218:
mthi $2
mflo $3
sra $1, $2, 10
mult $3, $3
TAG219:
xori $1, $1, 2
blez $1, TAG220
sb $1, 0($1)
lb $4, 0($1)
TAG220:
mflo $3
mfhi $1
blez $4, TAG221
lui $3, 11
TAG221:
sll $0, $0, 0
mtlo $3
mthi $3
sll $0, $0, 0
TAG222:
lh $2, 0($2)
mflo $4
mtlo $4
mfhi $1
TAG223:
srl $3, $1, 14
mult $1, $1
sll $2, $1, 15
slti $3, $3, 2
TAG224:
blez $3, TAG225
multu $3, $3
sw $3, 0($3)
slti $2, $3, 7
TAG225:
addiu $4, $2, 9
xor $4, $2, $4
xor $3, $2, $4
beq $3, $4, TAG226
TAG226:
mthi $3
lui $4, 7
sra $3, $3, 7
mthi $3
TAG227:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
beq $3, $3, TAG228
TAG228:
sll $0, $0, 0
lui $2, 7
mult $2, $4
mtlo $4
TAG229:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG230:
lui $3, 0
mtlo $3
mtlo $4
bne $3, $3, TAG231
TAG231:
lui $4, 11
bgtz $3, TAG232
lh $4, 0($3)
mult $4, $4
TAG232:
sll $0, $0, 0
addi $1, $3, 14
divu $1, $4
bgtz $4, TAG233
TAG233:
lui $1, 4
sltu $2, $1, $1
lui $4, 15
slti $1, $2, 15
TAG234:
lui $4, 10
beq $1, $1, TAG235
lui $2, 3
sb $2, 0($1)
TAG235:
sll $0, $0, 0
div $2, $2
lui $2, 13
add $3, $3, $2
TAG236:
sltu $1, $3, $3
lui $1, 13
slti $1, $3, 10
lhu $3, 0($1)
TAG237:
lui $1, 6
mflo $4
sh $4, -256($3)
bltz $4, TAG238
TAG238:
mfhi $3
bgtz $3, TAG239
mfhi $2
lbu $1, 0($4)
TAG239:
mtlo $1
addu $4, $1, $1
mfhi $3
mthi $4
TAG240:
mtlo $3
andi $3, $3, 1
sh $3, 0($3)
lui $4, 8
TAG241:
mult $4, $4
div $4, $4
bltz $4, TAG242
mflo $3
TAG242:
beq $3, $3, TAG243
sb $3, 0($3)
lb $4, 0($3)
lui $1, 0
TAG243:
mtlo $1
bgtz $1, TAG244
lui $4, 11
mflo $3
TAG244:
multu $3, $3
mult $3, $3
lw $4, 0($3)
bne $4, $4, TAG245
TAG245:
div $4, $4
beq $4, $4, TAG246
sll $0, $0, 0
mthi $4
TAG246:
sll $0, $0, 0
divu $4, $4
andi $3, $2, 5
mthi $4
TAG247:
lui $2, 6
lhu $4, 0($3)
beq $4, $3, TAG248
lui $2, 3
TAG248:
beq $2, $2, TAG249
subu $3, $2, $2
xori $4, $3, 15
addu $2, $4, $3
TAG249:
sll $0, $0, 0
bgez $2, TAG250
mtlo $2
mthi $2
TAG250:
lui $3, 4
bgtz $2, TAG251
lui $1, 0
andi $3, $3, 11
TAG251:
mfhi $2
multu $2, $2
sll $4, $3, 12
blez $3, TAG252
TAG252:
mthi $4
mthi $4
bgtz $4, TAG253
sra $2, $4, 3
TAG253:
beq $2, $2, TAG254
mthi $2
lbu $2, 0($2)
and $3, $2, $2
TAG254:
ori $3, $3, 15
lui $4, 7
sll $0, $0, 0
div $3, $3
TAG255:
sll $0, $0, 0
mfhi $3
lbu $1, 0($3)
ori $4, $3, 9
TAG256:
mtlo $4
beq $4, $4, TAG257
lui $3, 8
lb $4, 0($3)
TAG257:
sb $4, 0($4)
lbu $2, 0($4)
lui $3, 10
mult $3, $4
TAG258:
blez $3, TAG259
subu $3, $3, $3
mult $3, $3
mfhi $1
TAG259:
sub $2, $1, $1
mult $1, $1
bne $1, $2, TAG260
ori $4, $2, 8
TAG260:
xor $1, $4, $4
srl $1, $4, 13
beq $4, $1, TAG261
lh $3, 0($1)
TAG261:
mult $3, $3
andi $2, $3, 0
lhu $1, -256($3)
mflo $1
TAG262:
slti $1, $1, 6
sllv $4, $1, $1
sub $2, $4, $1
lui $4, 2
TAG263:
lui $4, 4
beq $4, $4, TAG264
andi $1, $4, 14
beq $4, $4, TAG264
TAG264:
xori $3, $1, 10
bne $1, $3, TAG265
sllv $4, $3, $3
sh $4, 0($1)
TAG265:
sb $4, -10240($4)
sra $1, $4, 7
lbu $3, -10240($4)
multu $1, $1
TAG266:
sll $1, $3, 13
mult $1, $3
lui $1, 7
lui $1, 4
TAG267:
xor $4, $1, $1
mult $4, $4
bne $4, $4, TAG268
sltu $3, $1, $1
TAG268:
multu $3, $3
blez $3, TAG269
lhu $1, 0($3)
ori $1, $1, 5
TAG269:
mult $1, $1
bltz $1, TAG270
multu $1, $1
beq $1, $1, TAG270
TAG270:
div $1, $1
mfhi $1
mflo $4
sltiu $3, $4, 12
TAG271:
lui $4, 14
bne $4, $3, TAG272
mtlo $3
mthi $3
TAG272:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
div $4, $3
TAG273:
bne $3, $3, TAG274
addu $2, $3, $3
sh $2, 0($2)
mthi $2
TAG274:
lhu $1, 0($2)
mtlo $1
sh $2, 0($1)
lui $1, 7
TAG275:
sll $0, $0, 0
mtlo $1
bgez $1, TAG276
sll $0, $0, 0
TAG276:
addu $2, $1, $1
multu $2, $2
lui $1, 8
mfhi $1
TAG277:
srlv $4, $1, $1
subu $3, $4, $1
mult $4, $4
mthi $1
TAG278:
sll $0, $0, 0
lh $3, 184($3)
or $3, $3, $3
blez $3, TAG279
TAG279:
lui $1, 9
sb $3, -256($3)
div $3, $3
sll $0, $0, 0
TAG280:
bne $4, $4, TAG281
mfhi $2
lh $4, 0($2)
bne $4, $4, TAG281
TAG281:
multu $4, $4
subu $4, $4, $4
mtlo $4
mflo $3
TAG282:
lui $2, 12
bgtz $2, TAG283
lui $1, 14
addiu $3, $2, 10
TAG283:
sw $3, 0($3)
mult $3, $3
mfhi $3
mtlo $3
TAG284:
sw $3, 0($3)
andi $2, $3, 10
mfhi $1
mtlo $3
TAG285:
beq $1, $1, TAG286
mthi $1
lhu $4, 0($1)
mflo $3
TAG286:
mtlo $3
bltz $3, TAG287
mult $3, $3
addu $1, $3, $3
TAG287:
lui $1, 4
andi $3, $1, 15
blez $1, TAG288
mfhi $1
TAG288:
and $4, $1, $1
srl $3, $1, 10
bgez $3, TAG289
srlv $4, $1, $3
TAG289:
bltz $4, TAG290
lh $4, 0($4)
mflo $3
mflo $1
TAG290:
multu $1, $1
lb $1, 0($1)
sub $4, $1, $1
lui $2, 2
TAG291:
sll $3, $2, 12
mthi $2
subu $2, $3, $2
sll $0, $0, 0
TAG292:
addu $3, $2, $2
bgez $3, TAG293
mult $3, $2
add $1, $3, $3
TAG293:
lhu $2, 0($1)
slti $4, $1, 8
lbu $2, 0($2)
or $1, $2, $4
TAG294:
divu $1, $1
lui $3, 0
mthi $1
mtlo $1
TAG295:
sh $3, 0($3)
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG296:
lui $4, 3
xori $1, $4, 11
bltz $4, TAG297
addu $3, $1, $1
TAG297:
mtlo $3
andi $3, $3, 1
multu $3, $3
mflo $3
TAG298:
andi $4, $3, 1
lhu $1, 0($3)
lh $4, 0($1)
bltz $4, TAG299
TAG299:
sll $4, $4, 11
mthi $4
mult $4, $4
bgtz $4, TAG300
TAG300:
multu $4, $4
mfhi $3
mfhi $2
lui $1, 13
TAG301:
mfhi $1
bltz $1, TAG302
sh $1, 0($1)
mtlo $1
TAG302:
sb $1, 0($1)
sh $1, 0($1)
mfhi $1
mfhi $2
TAG303:
lui $2, 3
sll $0, $0, 0
bne $2, $2, TAG304
subu $4, $2, $2
TAG304:
bne $4, $4, TAG305
mult $4, $4
mult $4, $4
lh $4, 0($4)
TAG305:
mfhi $2
slti $4, $2, 10
slti $2, $4, 6
mthi $2
TAG306:
mtlo $2
mfhi $3
mfhi $1
beq $2, $2, TAG307
TAG307:
lb $2, 0($1)
mflo $2
sb $2, 0($1)
addiu $3, $2, 12
TAG308:
mthi $3
bgez $3, TAG309
mthi $3
mtlo $3
TAG309:
or $1, $3, $3
lbu $2, 0($3)
lui $3, 3
srlv $4, $3, $3
TAG310:
mfhi $3
bne $4, $3, TAG311
sll $0, $0, 0
subu $3, $3, $4
TAG311:
mtlo $3
mfhi $1
lui $2, 9
sltu $3, $3, $3
TAG312:
bgez $3, TAG313
mtlo $3
mfhi $1
sw $1, 0($1)
TAG313:
mthi $1
slti $1, $1, 15
or $3, $1, $1
sb $3, 0($1)
TAG314:
sb $3, 0($3)
sb $3, 0($3)
sltiu $4, $3, 2
xori $3, $4, 10
TAG315:
slt $3, $3, $3
lb $1, 0($3)
sllv $3, $3, $1
sh $3, 0($1)
TAG316:
mflo $2
sb $3, 0($2)
lui $3, 2
lui $2, 12
TAG317:
bgtz $2, TAG318
mflo $3
mflo $3
beq $3, $3, TAG318
TAG318:
lui $3, 1
mfhi $4
bgtz $3, TAG319
divu $4, $3
TAG319:
addiu $3, $4, 9
lui $3, 15
bgtz $3, TAG320
nor $4, $4, $3
TAG320:
divu $4, $4
sll $0, $0, 0
bgtz $4, TAG321
xor $1, $4, $4
TAG321:
sltiu $3, $1, 3
sw $3, 0($1)
bne $1, $1, TAG322
lh $4, 0($1)
TAG322:
nor $1, $4, $4
lw $4, 2($1)
slti $1, $4, 4
bgez $1, TAG323
TAG323:
lui $4, 2
bgtz $4, TAG324
sb $1, 0($1)
bgtz $1, TAG324
TAG324:
srav $1, $4, $4
bltz $1, TAG325
lui $3, 9
blez $4, TAG325
TAG325:
srlv $3, $3, $3
mthi $3
andi $1, $3, 4
multu $3, $3
TAG326:
mfhi $4
xor $3, $1, $1
mthi $4
mtlo $1
TAG327:
sw $3, 0($3)
mult $3, $3
lbu $2, 0($3)
lui $3, 5
TAG328:
mfhi $3
ori $3, $3, 12
lui $4, 14
sll $3, $3, 15
TAG329:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 1
mflo $1
TAG330:
bne $1, $1, TAG331
addiu $3, $1, 6
sb $3, 0($1)
mtlo $1
TAG331:
lbu $1, 0($3)
sllv $3, $1, $3
lui $4, 5
bne $1, $3, TAG332
TAG332:
mtlo $4
mflo $4
sll $0, $0, 0
mfhi $2
TAG333:
sll $1, $2, 12
sw $1, 0($1)
bgtz $2, TAG334
mtlo $2
TAG334:
lui $4, 13
mult $4, $1
lui $3, 5
multu $3, $1
TAG335:
lui $4, 6
mtlo $3
mult $4, $3
mfhi $1
TAG336:
beq $1, $1, TAG337
slti $3, $1, 3
sh $1, 0($3)
bne $1, $1, TAG337
TAG337:
multu $3, $3
bltz $3, TAG338
lb $1, 0($3)
mfhi $4
TAG338:
sll $3, $4, 12
mflo $2
xor $3, $4, $3
lb $1, 0($2)
TAG339:
mtlo $1
bgez $1, TAG340
addiu $3, $1, 8
mtlo $3
TAG340:
mtlo $3
blez $3, TAG341
addu $1, $3, $3
addiu $4, $1, 6
TAG341:
mfhi $4
mult $4, $4
bgez $4, TAG342
mult $4, $4
TAG342:
lb $4, 0($4)
lh $3, 0($4)
sb $4, 0($4)
multu $4, $3
TAG343:
sb $3, 0($3)
mthi $3
mfhi $4
lhu $2, 0($3)
TAG344:
bne $2, $2, TAG345
ori $3, $2, 7
sb $2, 0($3)
mfhi $2
TAG345:
andi $4, $2, 2
bgtz $4, TAG346
sw $2, 0($2)
lui $3, 6
TAG346:
lui $2, 11
andi $3, $3, 4
lhu $4, 0($3)
sw $2, 0($4)
TAG347:
mthi $4
sh $4, 0($4)
mult $4, $4
mfhi $3
TAG348:
mtlo $3
srlv $3, $3, $3
multu $3, $3
mfhi $3
TAG349:
lh $1, 0($3)
bne $3, $3, TAG350
slti $3, $1, 1
lui $2, 0
TAG350:
lui $4, 8
lui $4, 4
xori $3, $2, 15
blez $4, TAG351
TAG351:
lui $1, 11
div $1, $1
blez $1, TAG352
sllv $2, $3, $3
TAG352:
mtlo $2
sll $0, $0, 0
srl $3, $3, 11
bne $3, $3, TAG353
TAG353:
lui $2, 0
mfhi $2
lbu $4, 0($2)
lui $2, 2
TAG354:
sll $0, $0, 0
mthi $2
mfhi $4
mthi $2
TAG355:
mfhi $3
addiu $1, $4, 8
blez $3, TAG356
mtlo $4
TAG356:
mtlo $1
sll $0, $0, 0
lui $3, 13
sll $0, $0, 0
TAG357:
lui $4, 11
sll $0, $0, 0
bne $4, $3, TAG358
mthi $3
TAG358:
mfhi $1
sll $0, $0, 0
lui $3, 4
mtlo $2
TAG359:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sllv $2, $3, $2
TAG360:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
or $3, $1, $1
TAG361:
sll $0, $0, 0
lui $2, 8
mthi $3
sllv $3, $3, $2
TAG362:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG363:
sll $0, $0, 0
lui $4, 7
beq $3, $3, TAG364
mflo $2
TAG364:
div $2, $2
multu $2, $2
sltiu $4, $2, 12
sll $0, $0, 0
TAG365:
multu $4, $4
mfhi $2
beq $4, $2, TAG366
multu $2, $2
TAG366:
multu $2, $2
mthi $2
lw $1, 0($2)
sll $0, $0, 0
TAG367:
bgez $3, TAG368
lui $1, 6
sw $3, 0($1)
ori $3, $1, 9
TAG368:
bne $3, $3, TAG369
andi $1, $3, 12
mult $1, $1
sb $3, 0($1)
TAG369:
addiu $3, $1, 7
and $2, $1, $3
sb $1, 0($1)
lbu $4, 0($1)
TAG370:
andi $4, $4, 2
lw $3, 0($4)
mult $4, $4
bne $4, $3, TAG371
TAG371:
nor $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG372
TAG372:
sll $0, $0, 0
beq $3, $4, TAG373
mfhi $1
sll $0, $0, 0
TAG373:
sb $1, 0($1)
sub $3, $1, $1
mflo $3
mflo $4
TAG374:
lui $4, 11
bgez $4, TAG375
lui $3, 13
addiu $1, $3, 0
TAG375:
sw $1, 0($1)
ori $2, $1, 15
sb $1, 0($2)
lui $3, 12
TAG376:
bne $3, $3, TAG377
lui $4, 11
lui $3, 14
mult $3, $3
TAG377:
bne $3, $3, TAG378
mthi $3
mfhi $4
or $4, $3, $4
TAG378:
lui $3, 13
multu $3, $4
mthi $3
lui $4, 10
TAG379:
lui $3, 0
lui $2, 10
mflo $3
mflo $2
TAG380:
sra $2, $2, 10
srav $3, $2, $2
or $1, $2, $2
multu $2, $1
TAG381:
lui $4, 13
mtlo $1
mtlo $1
mflo $4
TAG382:
sb $4, 0($4)
mfhi $1
slti $1, $4, 7
lui $2, 6
TAG383:
bne $2, $2, TAG384
addiu $1, $2, 2
mflo $2
mtlo $2
TAG384:
ori $1, $2, 8
addiu $3, $1, 6
beq $3, $3, TAG385
mult $3, $2
TAG385:
divu $3, $3
mflo $1
mthi $1
sh $1, 0($3)
TAG386:
sll $1, $1, 15
lui $4, 10
and $1, $1, $1
mthi $4
TAG387:
lui $4, 8
mult $4, $4
mthi $1
mfhi $1
TAG388:
beq $1, $1, TAG389
srl $3, $1, 4
lui $4, 10
blez $4, TAG389
TAG389:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $2, $2
mult $2, $2
TAG390:
add $2, $3, $3
sllv $3, $2, $2
and $1, $3, $3
mfhi $1
TAG391:
mfhi $4
and $1, $1, $1
mtlo $4
lui $4, 8
TAG392:
mflo $2
bgtz $4, TAG393
mfhi $3
sltiu $4, $2, 15
TAG393:
mult $4, $4
bne $4, $4, TAG394
sll $0, $0, 0
mfhi $4
TAG394:
mfhi $1
bne $1, $4, TAG395
mtlo $4
lui $4, 7
TAG395:
mult $4, $4
blez $4, TAG396
lui $2, 12
mthi $4
TAG396:
mthi $2
mthi $2
mthi $2
mflo $2
TAG397:
ori $1, $2, 4
lui $1, 12
bgtz $1, TAG398
sll $0, $0, 0
TAG398:
lui $1, 2
ori $2, $1, 0
divu $1, $1
sll $0, $0, 0
TAG399:
sltiu $2, $1, 13
sll $0, $0, 0
lui $2, 8
lui $2, 3
TAG400:
xori $3, $2, 3
bne $2, $3, TAG401
lui $3, 15
mfhi $2
TAG401:
bltz $2, TAG402
mthi $2
lui $2, 11
mflo $3
TAG402:
lb $2, 0($3)
lui $4, 7
multu $4, $2
divu $3, $3
TAG403:
xori $3, $4, 6
sll $0, $0, 0
subu $2, $4, $3
lui $4, 9
TAG404:
bne $4, $4, TAG405
multu $4, $4
sll $0, $0, 0
mtlo $4
TAG405:
bltz $2, TAG406
mtlo $2
or $1, $2, $2
srl $4, $2, 10
TAG406:
bne $4, $4, TAG407
divu $4, $4
mthi $4
mtlo $4
TAG407:
bne $4, $4, TAG408
mflo $1
ori $4, $4, 3
bltz $4, TAG408
TAG408:
lui $3, 8
srav $4, $3, $4
divu $4, $4
lui $3, 4
TAG409:
bgez $3, TAG410
sll $0, $0, 0
bgez $3, TAG410
mthi $3
TAG410:
lui $4, 11
sll $0, $0, 0
slti $2, $3, 3
sra $1, $4, 7
TAG411:
bgez $1, TAG412
srav $3, $1, $1
and $2, $1, $3
lw $1, 0($1)
TAG412:
div $1, $1
mthi $1
addiu $1, $1, 1
mtlo $1
TAG413:
sltu $1, $1, $1
xori $1, $1, 11
mthi $1
mtlo $1
TAG414:
subu $2, $1, $1
slti $2, $1, 2
mult $2, $2
beq $2, $2, TAG415
TAG415:
lb $1, 0($2)
blez $2, TAG416
lb $3, 0($1)
sh $2, 0($3)
TAG416:
mfhi $4
bne $4, $3, TAG417
mthi $4
lui $3, 2
TAG417:
sll $0, $0, 0
mthi $4
bne $3, $4, TAG418
sh $3, 0($4)
TAG418:
mult $4, $4
mtlo $4
lui $1, 1
bne $1, $1, TAG419
TAG419:
mfhi $3
addiu $1, $3, 8
lh $1, 0($1)
multu $1, $1
TAG420:
sll $0, $0, 0
lbu $1, 0($2)
sh $2, 0($1)
lw $2, 0($1)
TAG421:
addiu $1, $2, 15
lh $1, 0($2)
bne $1, $2, TAG422
multu $1, $1
TAG422:
lui $1, 1
mthi $1
bgez $1, TAG423
mfhi $3
TAG423:
sll $0, $0, 0
multu $4, $4
mthi $4
add $3, $4, $3
TAG424:
subu $2, $3, $3
or $4, $2, $2
bgtz $3, TAG425
nor $3, $3, $3
TAG425:
beq $3, $3, TAG426
multu $3, $3
ori $4, $3, 11
mflo $3
TAG426:
bgtz $3, TAG427
sltiu $1, $3, 4
beq $3, $1, TAG427
sh $1, 0($1)
TAG427:
mult $1, $1
multu $1, $1
mtlo $1
lui $1, 0
TAG428:
bltz $1, TAG429
sub $3, $1, $1
mthi $3
bne $1, $1, TAG429
TAG429:
sb $3, 0($3)
lui $4, 6
bgtz $3, TAG430
sb $3, 0($3)
TAG430:
sll $0, $0, 0
and $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG431:
lh $4, 0($1)
blez $4, TAG432
lh $3, 0($4)
mflo $4
TAG432:
bgez $4, TAG433
mthi $4
sw $4, 0($4)
lh $2, 0($4)
TAG433:
lui $4, 8
mtlo $4
bne $2, $4, TAG434
divu $4, $2
TAG434:
sll $0, $0, 0
mthi $2
addu $1, $4, $4
mult $1, $4
TAG435:
nor $2, $1, $1
addu $2, $1, $2
beq $1, $2, TAG436
xori $1, $1, 15
TAG436:
srav $1, $1, $1
lui $2, 7
divu $1, $1
mfhi $2
TAG437:
beq $2, $2, TAG438
sltu $1, $2, $2
lb $4, 0($2)
mtlo $2
TAG438:
sltu $3, $4, $4
bgtz $4, TAG439
lui $3, 9
lui $1, 0
TAG439:
multu $1, $1
mtlo $1
mthi $1
bne $1, $1, TAG440
TAG440:
mthi $1
bgez $1, TAG441
lui $3, 5
lui $3, 11
TAG441:
ori $4, $3, 9
or $4, $4, $4
sll $0, $0, 0
mfhi $3
TAG442:
sb $3, 0($3)
multu $3, $3
beq $3, $3, TAG443
and $2, $3, $3
TAG443:
mult $2, $2
mflo $1
sh $2, 0($1)
mthi $2
TAG444:
sh $1, 0($1)
lb $3, 0($1)
sb $1, 0($3)
sw $3, 0($1)
TAG445:
srl $2, $3, 8
srlv $4, $2, $2
sw $3, 0($3)
bne $3, $4, TAG446
TAG446:
mflo $4
mtlo $4
lui $4, 13
srl $3, $4, 9
TAG447:
sltiu $3, $3, 11
lw $3, 0($3)
sw $3, 0($3)
lbu $4, 0($3)
TAG448:
mflo $3
or $3, $4, $4
mflo $4
sra $1, $4, 11
TAG449:
mflo $1
bltz $1, TAG450
slt $1, $1, $1
slti $1, $1, 7
TAG450:
lb $4, 0($1)
mthi $1
div $1, $1
multu $4, $1
TAG451:
mtlo $4
xori $1, $4, 5
bgez $4, TAG452
mthi $4
TAG452:
sb $1, 0($1)
div $1, $1
blez $1, TAG453
srav $3, $1, $1
TAG453:
sllv $1, $3, $3
lui $1, 14
mtlo $1
lui $2, 9
TAG454:
lui $1, 6
lui $1, 11
addiu $1, $2, 14
sll $0, $0, 0
TAG455:
sll $0, $0, 0
lui $3, 2
sll $0, $0, 0
divu $3, $3
TAG456:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG457:
sll $0, $0, 0
mflo $3
sb $3, 0($3)
mthi $3
TAG458:
addiu $2, $3, 0
bgtz $3, TAG459
sb $2, 0($3)
beq $3, $3, TAG459
TAG459:
divu $2, $2
lui $3, 10
bne $2, $2, TAG460
mtlo $3
TAG460:
bgez $3, TAG461
multu $3, $3
mflo $2
mtlo $3
TAG461:
xori $3, $2, 10
addiu $4, $3, 3
beq $2, $3, TAG462
sltiu $2, $3, 2
TAG462:
multu $2, $2
sb $2, 0($2)
multu $2, $2
mflo $3
TAG463:
bgez $3, TAG464
lh $1, 0($3)
sw $1, 0($1)
sub $2, $1, $1
TAG464:
mflo $1
mult $1, $2
mtlo $1
lb $1, 0($2)
TAG465:
mfhi $3
nor $4, $3, $3
sb $1, 0($3)
lui $4, 10
TAG466:
mflo $4
sub $3, $4, $4
bne $3, $3, TAG467
mflo $4
TAG467:
lui $1, 10
bgez $1, TAG468
slti $3, $1, 1
sb $3, 0($4)
TAG468:
lhu $1, 0($3)
mthi $1
sw $1, -256($1)
bgtz $1, TAG469
TAG469:
subu $1, $1, $1
beq $1, $1, TAG470
sltiu $2, $1, 15
srav $4, $1, $1
TAG470:
mult $4, $4
nor $2, $4, $4
sh $2, 1($2)
slti $4, $2, 4
TAG471:
lbu $2, 0($4)
ori $1, $2, 12
mtlo $4
sb $4, 0($4)
TAG472:
sllv $2, $1, $1
beq $2, $1, TAG473
divu $2, $2
beq $2, $1, TAG473
TAG473:
or $3, $2, $2
sll $0, $0, 0
divu $3, $2
lui $2, 12
TAG474:
sll $0, $0, 0
lui $2, 5
bltz $1, TAG475
mthi $2
TAG475:
subu $4, $2, $2
sll $0, $0, 0
sw $2, 0($4)
mflo $2
TAG476:
blez $2, TAG477
divu $2, $2
xori $4, $2, 0
lbu $4, 0($4)
TAG477:
beq $4, $4, TAG478
mflo $1
lui $2, 2
lui $2, 10
TAG478:
mfhi $2
mthi $2
sb $2, 0($2)
mtlo $2
TAG479:
lbu $2, 0($2)
lh $4, 0($2)
multu $4, $2
bgtz $2, TAG480
TAG480:
mfhi $1
mflo $3
beq $1, $4, TAG481
lui $3, 5
TAG481:
lui $2, 12
bltz $2, TAG482
andi $4, $3, 15
xor $1, $2, $2
TAG482:
multu $1, $1
slti $1, $1, 13
sb $1, 0($1)
lui $1, 0
TAG483:
mult $1, $1
lh $3, 0($1)
lh $2, 0($1)
addiu $3, $3, 8
TAG484:
bne $3, $3, TAG485
divu $3, $3
sltiu $2, $3, 0
divu $2, $3
TAG485:
lbu $4, 0($2)
bne $4, $2, TAG486
multu $2, $2
multu $4, $4
TAG486:
addiu $1, $4, 14
sh $1, 0($4)
srav $3, $1, $4
lbu $1, 0($4)
TAG487:
bgtz $1, TAG488
sltu $2, $1, $1
sltu $2, $2, $2
nor $4, $1, $2
TAG488:
andi $2, $4, 3
lw $4, 0($4)
sll $0, $0, 0
beq $2, $4, TAG489
TAG489:
sll $0, $0, 0
srlv $1, $4, $4
mtlo $4
lui $4, 10
TAG490:
sltu $3, $4, $4
sh $4, 0($3)
mthi $3
sll $0, $0, 0
TAG491:
beq $3, $3, TAG492
srav $1, $3, $3
sh $3, 0($1)
blez $1, TAG492
TAG492:
multu $1, $1
bltz $1, TAG493
sw $1, 0($1)
slt $1, $1, $1
TAG493:
mflo $1
sb $1, 0($1)
mult $1, $1
bne $1, $1, TAG494
TAG494:
lui $3, 11
bne $1, $1, TAG495
lh $3, 0($1)
addiu $3, $3, 7
TAG495:
beq $3, $3, TAG496
srl $1, $3, 0
mtlo $3
and $2, $3, $1
TAG496:
mflo $1
multu $1, $2
lui $1, 11
mflo $3
TAG497:
beq $3, $3, TAG498
lui $4, 15
mfhi $3
lhu $2, 0($4)
TAG498:
mthi $2
mthi $2
ori $2, $2, 5
div $2, $2
TAG499:
lbu $2, 0($2)
multu $2, $2
sb $2, 0($2)
bgez $2, TAG500
TAG500:
div $2, $2
mfhi $2
sw $2, 0($2)
lb $2, 0($2)
TAG501:
lhu $2, 0($2)
mflo $2
mfhi $2
mflo $1
TAG502:
bgtz $1, TAG503
lui $1, 8
beq $1, $1, TAG503
mfhi $4
TAG503:
sll $0, $0, 0
divu $4, $4
sb $4, 0($3)
lui $2, 2
TAG504:
lui $1, 1
divu $2, $1
lui $1, 10
srl $4, $2, 1
TAG505:
lui $3, 5
beq $4, $4, TAG506
mthi $4
bne $4, $4, TAG506
TAG506:
mtlo $3
multu $3, $3
mthi $3
bne $3, $3, TAG507
TAG507:
lui $4, 5
sll $0, $0, 0
nor $1, $4, $3
sll $0, $0, 0
TAG508:
lui $4, 8
sll $0, $0, 0
srlv $3, $3, $4
sll $0, $0, 0
TAG509:
lui $2, 0
divu $3, $3
lui $2, 8
mult $2, $2
TAG510:
sll $0, $0, 0
bne $2, $2, TAG511
andi $3, $2, 5
subu $4, $2, $2
TAG511:
mthi $4
mult $4, $4
addi $4, $4, 8
sltiu $1, $4, 5
TAG512:
mfhi $2
lhu $4, 0($2)
mthi $1
sltiu $4, $2, 8
TAG513:
lui $1, 9
bgtz $1, TAG514
xori $2, $4, 1
mtlo $2
TAG514:
mtlo $2
sra $3, $2, 14
lui $1, 2
mtlo $1
TAG515:
beq $1, $1, TAG516
mthi $1
sw $1, 0($1)
lw $1, 0($1)
TAG516:
bltz $1, TAG517
slti $2, $1, 1
mflo $1
div $1, $1
TAG517:
mfhi $2
mfhi $2
bne $1, $2, TAG518
mtlo $1
TAG518:
sb $2, 0($2)
srav $2, $2, $2
lhu $4, 0($2)
mflo $4
TAG519:
bne $4, $4, TAG520
mflo $2
mfhi $4
mtlo $4
TAG520:
mflo $3
xori $2, $3, 3
beq $2, $3, TAG521
mtlo $2
TAG521:
sb $2, 0($2)
sb $2, 0($2)
mult $2, $2
bgtz $2, TAG522
TAG522:
sb $2, 0($2)
subu $2, $2, $2
subu $2, $2, $2
mult $2, $2
TAG523:
multu $2, $2
sltiu $4, $2, 13
mthi $2
sh $4, 0($2)
TAG524:
sb $4, 0($4)
sb $4, 0($4)
addiu $2, $4, 12
bgez $2, TAG525
TAG525:
and $4, $2, $2
bgez $2, TAG526
lui $3, 6
bgez $2, TAG526
TAG526:
sll $0, $0, 0
mtlo $3
bgez $3, TAG527
sll $0, $0, 0
TAG527:
sltiu $2, $2, 6
or $1, $2, $2
lui $4, 2
bltz $1, TAG528
TAG528:
subu $3, $4, $4
lb $1, 0($3)
div $4, $1
bgez $1, TAG529
TAG529:
ori $4, $1, 1
addiu $4, $4, 9
mtlo $4
beq $4, $4, TAG530
TAG530:
subu $3, $4, $4
mthi $3
mflo $1
mtlo $4
TAG531:
mthi $1
mfhi $3
bgez $1, TAG532
and $1, $3, $3
TAG532:
lb $2, 0($1)
mtlo $2
lhu $3, 0($2)
bgtz $2, TAG533
TAG533:
divu $3, $3
sh $3, -257($3)
mflo $2
srl $1, $2, 5
TAG534:
mfhi $4
bltz $4, TAG535
lw $1, 0($4)
blez $4, TAG535
TAG535:
mthi $1
lui $4, 8
sll $0, $0, 0
blez $4, TAG536
TAG536:
multu $4, $4
srl $1, $4, 1
lui $4, 6
lui $2, 11
TAG537:
xori $4, $2, 4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG538:
mflo $4
bltz $4, TAG539
lw $2, 0($4)
lb $3, 0($4)
TAG539:
mthi $3
mfhi $4
lui $1, 6
mthi $3
TAG540:
lui $4, 3
sll $0, $0, 0
srlv $4, $4, $4
lui $1, 7
TAG541:
mfhi $2
or $4, $2, $2
mflo $2
sb $2, 0($4)
TAG542:
mfhi $1
lui $1, 9
lui $1, 15
sll $0, $0, 0
TAG543:
mtlo $2
mflo $4
srlv $3, $4, $2
mfhi $3
TAG544:
lui $3, 4
sllv $3, $3, $3
mflo $4
beq $3, $4, TAG545
TAG545:
lb $3, 0($4)
sra $4, $3, 1
xori $1, $3, 4
bne $4, $1, TAG546
TAG546:
mthi $1
bltz $1, TAG547
sra $3, $1, 15
multu $1, $3
TAG547:
xor $1, $3, $3
srav $3, $1, $3
mflo $4
blez $3, TAG548
TAG548:
multu $4, $4
sw $4, 0($4)
mtlo $4
bgez $4, TAG549
TAG549:
mtlo $4
sra $4, $4, 8
mflo $4
sw $4, 0($4)
TAG550:
mflo $2
bne $4, $2, TAG551
lbu $4, 0($2)
bgez $4, TAG551
TAG551:
ori $3, $4, 3
mflo $3
srav $1, $4, $4
lui $4, 13
TAG552:
sll $0, $0, 0
lui $4, 8
slt $2, $4, $2
lui $1, 11
TAG553:
sra $3, $1, 15
sll $1, $1, 15
divu $3, $1
addiu $4, $1, 10
TAG554:
bne $4, $4, TAG555
div $4, $4
mtlo $4
mthi $4
TAG555:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG556:
bgtz $2, TAG557
divu $2, $2
sll $1, $2, 1
bne $1, $2, TAG557
TAG557:
lw $4, 0($1)
sllv $3, $1, $4
bne $1, $1, TAG558
sltiu $3, $1, 5
TAG558:
multu $3, $3
sw $3, 0($3)
mflo $4
bltz $3, TAG559
TAG559:
sb $4, 0($4)
mtlo $4
sltiu $2, $4, 15
sb $2, 0($2)
TAG560:
slti $4, $2, 1
lui $2, 6
mtlo $2
lhu $2, 0($4)
TAG561:
sll $3, $2, 3
lw $3, -2048($3)
mflo $3
lui $4, 7
TAG562:
sll $0, $0, 0
div $4, $4
lui $4, 10
slti $2, $4, 2
TAG563:
beq $2, $2, TAG564
sltiu $2, $2, 0
sh $2, 0($2)
beq $2, $2, TAG564
TAG564:
nor $3, $2, $2
lui $1, 7
sll $0, $0, 0
sb $1, 1($3)
TAG565:
mflo $4
bltz $4, TAG566
lbu $4, 0($4)
bltz $4, TAG566
TAG566:
sltu $2, $4, $4
lui $3, 4
bgez $2, TAG567
ori $3, $2, 10
TAG567:
lb $3, 0($3)
multu $3, $3
addi $1, $3, 12
sh $3, 0($3)
TAG568:
lb $4, 0($1)
lhu $2, 0($1)
srl $4, $2, 4
sllv $1, $4, $1
TAG569:
multu $1, $1
mtlo $1
sub $2, $1, $1
lui $3, 9
TAG570:
blez $3, TAG571
xori $4, $3, 10
subu $2, $3, $4
sll $0, $0, 0
TAG571:
sll $0, $0, 0
bltz $2, TAG572
subu $3, $4, $4
divu $3, $4
TAG572:
lh $3, 0($3)
mult $3, $3
blez $3, TAG573
ori $1, $3, 5
TAG573:
mtlo $1
lui $2, 2
multu $2, $2
mfhi $4
TAG574:
sltu $4, $4, $4
or $2, $4, $4
bltz $2, TAG575
lui $4, 6
TAG575:
multu $4, $4
addiu $3, $4, 6
mfhi $2
bne $2, $3, TAG576
TAG576:
srl $2, $2, 15
xori $3, $2, 12
beq $3, $2, TAG577
lbu $2, 0($3)
TAG577:
sb $2, 0($2)
mthi $2
div $2, $2
xori $1, $2, 0
TAG578:
lui $3, 9
slti $3, $3, 3
mflo $2
mult $3, $3
TAG579:
mfhi $2
bne $2, $2, TAG580
lui $4, 10
xor $4, $2, $2
TAG580:
multu $4, $4
lui $2, 10
lw $2, 0($4)
andi $4, $2, 12
TAG581:
lui $4, 11
sll $0, $0, 0
mthi $4
mflo $3
TAG582:
lw $3, 0($3)
mtlo $3
add $4, $3, $3
multu $3, $4
TAG583:
sb $4, 0($4)
slt $2, $4, $4
lui $4, 6
beq $4, $4, TAG584
TAG584:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
lui $1, 6
TAG585:
bgtz $1, TAG586
addu $1, $1, $1
mthi $1
sltu $1, $1, $1
TAG586:
and $4, $1, $1
ori $1, $4, 15
div $1, $4
bgez $1, TAG587
TAG587:
mult $1, $1
lui $3, 13
sll $0, $0, 0
slt $2, $1, $1
TAG588:
addu $1, $2, $2
blez $1, TAG589
sub $4, $2, $1
srav $2, $1, $1
TAG589:
sw $2, 0($2)
mult $2, $2
add $3, $2, $2
bgtz $2, TAG590
TAG590:
multu $3, $3
sra $2, $3, 8
lhu $3, 0($2)
mfhi $1
TAG591:
srav $1, $1, $1
bne $1, $1, TAG592
sllv $1, $1, $1
lui $3, 4
TAG592:
xori $3, $3, 13
srav $1, $3, $3
sllv $2, $3, $3
srl $3, $1, 14
TAG593:
mtlo $3
lui $2, 13
sll $0, $0, 0
lui $4, 4
TAG594:
lui $4, 2
bgez $4, TAG595
lui $2, 1
bne $4, $4, TAG595
TAG595:
sltiu $4, $2, 15
divu $4, $2
lui $2, 2
mtlo $4
TAG596:
div $2, $2
srav $3, $2, $2
sll $0, $0, 0
bne $3, $3, TAG597
TAG597:
mthi $3
lui $4, 7
mthi $4
sll $0, $0, 0
TAG598:
divu $4, $4
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
TAG599:
sll $0, $0, 0
beq $4, $4, TAG600
mtlo $2
beq $2, $2, TAG600
TAG600:
mfhi $3
mult $3, $3
xor $1, $3, $2
sll $0, $0, 0
TAG601:
div $1, $1
lui $4, 10
mthi $1
mtlo $1
TAG602:
sll $0, $0, 0
bgtz $1, TAG603
mthi $4
andi $2, $1, 15
TAG603:
mfhi $2
sll $0, $0, 0
mfhi $2
lui $2, 0
TAG604:
lui $4, 15
bne $4, $4, TAG605
mthi $4
sll $0, $0, 0
TAG605:
mflo $3
beq $1, $3, TAG606
lui $4, 3
mfhi $3
TAG606:
mtlo $3
xori $2, $3, 4
lui $3, 15
sll $0, $0, 0
TAG607:
bne $3, $3, TAG608
sltu $4, $3, $3
lui $4, 2
sll $0, $0, 0
TAG608:
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG609:
bne $3, $3, TAG610
mflo $2
sll $0, $0, 0
or $1, $3, $2
TAG610:
subu $4, $1, $1
mtlo $1
andi $3, $1, 6
lb $3, 0($3)
TAG611:
addi $4, $3, 9
lbu $4, 0($3)
or $2, $4, $3
bne $2, $3, TAG612
TAG612:
mtlo $2
mult $2, $2
srlv $3, $2, $2
sltiu $4, $2, 6
TAG613:
mtlo $4
mtlo $4
srav $4, $4, $4
blez $4, TAG614
TAG614:
mult $4, $4
bgtz $4, TAG615
sltiu $1, $4, 15
xori $1, $1, 12
TAG615:
divu $1, $1
mflo $3
bne $3, $1, TAG616
mtlo $1
TAG616:
mthi $3
sb $3, 0($3)
mthi $3
lui $2, 12
TAG617:
divu $2, $2
lui $2, 9
bne $2, $2, TAG618
nor $1, $2, $2
TAG618:
sll $0, $0, 0
srlv $2, $3, $1
sb $1, 0($3)
lui $3, 7
TAG619:
sll $0, $0, 0
bne $3, $3, TAG620
multu $3, $3
lui $1, 11
TAG620:
mtlo $1
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG621:
sll $0, $0, 0
multu $2, $2
addu $4, $2, $2
bne $2, $2, TAG622
TAG622:
ori $2, $4, 12
multu $2, $4
lui $2, 6
sll $0, $0, 0
TAG623:
sll $0, $0, 0
bne $2, $2, TAG624
mfhi $2
mflo $1
TAG624:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG625
xor $3, $1, $1
TAG625:
mtlo $3
beq $3, $3, TAG626
sw $3, 0($3)
lui $2, 15
TAG626:
mfhi $1
lb $3, -484($2)
lui $4, 9
blez $3, TAG627
TAG627:
slti $4, $4, 0
mflo $2
addiu $1, $4, 12
mtlo $2
TAG628:
lui $2, 12
lhu $1, 0($1)
lui $4, 1
sll $0, $0, 0
TAG629:
mtlo $4
sll $0, $0, 0
slt $3, $4, $4
lui $1, 11
TAG630:
mult $1, $1
sll $0, $0, 0
divu $1, $1
multu $1, $1
TAG631:
lui $1, 9
lui $1, 11
beq $1, $1, TAG632
sll $0, $0, 0
TAG632:
mfhi $4
bne $1, $1, TAG633
divu $1, $4
sltiu $3, $1, 10
TAG633:
lui $4, 0
blez $4, TAG634
lb $3, 0($3)
divu $3, $3
TAG634:
sw $3, 0($3)
mthi $3
lhu $1, 0($3)
addiu $3, $3, 4
TAG635:
mthi $3
mtlo $3
beq $3, $3, TAG636
lui $1, 15
TAG636:
subu $4, $1, $1
addu $2, $1, $1
subu $1, $2, $2
lhu $1, 0($4)
TAG637:
sb $1, 0($1)
bltz $1, TAG638
sh $1, 0($1)
bgtz $1, TAG638
TAG638:
add $1, $1, $1
sh $1, 0($1)
mtlo $1
lbu $3, 0($1)
TAG639:
mflo $1
bltz $3, TAG640
addiu $4, $1, 6
mult $4, $1
TAG640:
xori $3, $4, 14
lui $1, 1
sh $3, 0($3)
mflo $2
TAG641:
multu $2, $2
mtlo $2
bne $2, $2, TAG642
add $3, $2, $2
TAG642:
beq $3, $3, TAG643
lui $1, 5
multu $3, $1
beq $1, $1, TAG643
TAG643:
sll $0, $0, 0
beq $1, $1, TAG644
sra $1, $1, 4
srlv $3, $1, $1
TAG644:
mult $3, $3
mult $3, $3
mtlo $3
andi $2, $3, 6
TAG645:
multu $2, $2
sllv $1, $2, $2
bne $1, $1, TAG646
sltu $2, $1, $1
TAG646:
addi $2, $2, 7
andi $2, $2, 2
addiu $4, $2, 0
sb $2, 0($2)
TAG647:
beq $4, $4, TAG648
divu $4, $4
div $4, $4
mtlo $4
TAG648:
mtlo $4
sh $4, 0($4)
lh $2, 0($4)
mthi $2
TAG649:
andi $4, $2, 8
mult $4, $4
mtlo $4
lui $1, 13
TAG650:
lui $2, 2
sll $0, $0, 0
blez $2, TAG651
addiu $2, $1, 15
TAG651:
lui $2, 6
beq $2, $2, TAG652
mfhi $3
addi $2, $2, 10
TAG652:
div $2, $2
sra $4, $2, 7
lui $2, 8
addu $4, $4, $4
TAG653:
addiu $3, $4, 13
bne $3, $3, TAG654
srl $4, $4, 1
mfhi $3
TAG654:
mult $3, $3
beq $3, $3, TAG655
mflo $1
mflo $4
TAG655:
mult $4, $4
sltu $3, $4, $4
mtlo $4
mult $3, $3
TAG656:
mflo $1
xori $4, $1, 11
lui $1, 7
ori $2, $4, 11
TAG657:
lui $4, 8
subu $2, $2, $2
sb $2, 0($2)
multu $4, $4
TAG658:
addi $4, $2, 10
divu $2, $4
sh $2, 0($4)
mfhi $4
TAG659:
andi $4, $4, 11
mfhi $1
multu $4, $1
blez $4, TAG660
TAG660:
mult $1, $1
beq $1, $1, TAG661
mult $1, $1
xori $1, $1, 11
TAG661:
bgtz $1, TAG662
lb $2, 0($1)
bltz $1, TAG662
lh $2, 0($2)
TAG662:
multu $2, $2
sw $2, 0($2)
lui $4, 12
beq $2, $2, TAG663
TAG663:
mtlo $4
addiu $3, $4, 15
mtlo $3
div $3, $3
TAG664:
bgtz $3, TAG665
sltu $2, $3, $3
bgtz $3, TAG665
lui $1, 11
TAG665:
lw $1, 0($1)
lhu $4, 0($1)
bne $4, $1, TAG666
lui $3, 11
TAG666:
divu $3, $3
nor $2, $3, $3
sra $3, $3, 8
bgtz $3, TAG667
TAG667:
subu $3, $3, $3
addiu $3, $3, 8
mult $3, $3
sw $3, 0($3)
TAG668:
beq $3, $3, TAG669
mfhi $3
mthi $3
bne $3, $3, TAG669
TAG669:
mfhi $3
beq $3, $3, TAG670
lui $1, 8
andi $4, $3, 9
TAG670:
lbu $1, 0($4)
mfhi $4
beq $4, $1, TAG671
xori $2, $1, 2
TAG671:
lhu $3, 0($2)
mtlo $3
bgtz $2, TAG672
lui $4, 4
TAG672:
mthi $4
beq $4, $4, TAG673
mthi $4
mfhi $3
TAG673:
subu $1, $3, $3
mult $1, $3
sh $1, 0($3)
sh $3, 0($1)
TAG674:
multu $1, $1
nor $1, $1, $1
addiu $3, $1, 15
divu $1, $3
TAG675:
lb $1, 0($3)
sh $1, 0($3)
mthi $1
lui $3, 5
TAG676:
beq $3, $3, TAG677
mtlo $3
sw $3, 0($3)
sub $3, $3, $3
TAG677:
subu $1, $3, $3
lb $3, 0($1)
mtlo $3
xor $4, $1, $3
TAG678:
beq $4, $4, TAG679
mfhi $1
bltz $1, TAG679
slt $1, $4, $4
TAG679:
bgez $1, TAG680
sb $1, 0($1)
subu $3, $1, $1
mult $1, $3
TAG680:
blez $3, TAG681
multu $3, $3
addiu $4, $3, 5
sltu $4, $3, $4
TAG681:
xori $1, $4, 13
lui $4, 4
sb $4, 0($1)
lui $3, 4
TAG682:
bne $3, $3, TAG683
sll $0, $0, 0
mthi $3
lui $3, 0
TAG683:
mfhi $2
lbu $1, 0($3)
sll $0, $0, 0
mflo $2
TAG684:
mthi $2
sra $1, $2, 12
bne $2, $2, TAG685
lui $3, 12
TAG685:
beq $3, $3, TAG686
addiu $1, $3, 6
lui $3, 13
and $3, $1, $1
TAG686:
bltz $3, TAG687
addiu $3, $3, 7
mult $3, $3
lui $2, 5
TAG687:
bgtz $2, TAG688
mult $2, $2
lui $2, 11
lui $1, 0
TAG688:
lui $1, 13
mflo $4
multu $1, $4
sll $0, $0, 0
TAG689:
blez $4, TAG690
sw $4, 0($4)
lui $4, 13
mfhi $2
TAG690:
mflo $3
bgez $2, TAG691
xor $3, $2, $3
lui $2, 14
TAG691:
addu $2, $2, $2
bltz $2, TAG692
multu $2, $2
sll $0, $0, 0
TAG692:
sll $0, $0, 0
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
TAG693:
sll $0, $0, 0
mflo $1
lui $4, 7
sllv $2, $1, $1
TAG694:
mult $2, $2
bgez $2, TAG695
lui $3, 6
lbu $2, 0($2)
TAG695:
sw $2, 0($2)
bgez $2, TAG696
sllv $2, $2, $2
and $2, $2, $2
TAG696:
lw $1, 0($2)
bgez $2, TAG697
mfhi $4
bgez $4, TAG697
TAG697:
lh $2, 0($4)
bltz $2, TAG698
mtlo $4
bgez $2, TAG698
TAG698:
lui $1, 11
andi $1, $1, 9
beq $1, $1, TAG699
xori $3, $1, 14
TAG699:
sh $3, 0($3)
sb $3, 0($3)
lui $3, 0
srl $1, $3, 10
TAG700:
sltu $4, $1, $1
lb $3, 0($1)
lui $1, 6
bgez $3, TAG701
TAG701:
multu $1, $1
lui $3, 1
subu $1, $1, $1
sub $2, $3, $1
TAG702:
mfhi $1
sll $0, $0, 0
mflo $4
mthi $2
TAG703:
lhu $3, 0($4)
mfhi $3
mflo $2
sll $0, $0, 0
TAG704:
lui $4, 0
sltu $3, $2, $2
mult $3, $4
bgtz $3, TAG705
TAG705:
lui $2, 10
mfhi $1
lui $4, 10
mult $4, $1
TAG706:
nor $4, $4, $4
bne $4, $4, TAG707
sll $0, $0, 0
beq $4, $4, TAG707
TAG707:
sltiu $2, $2, 10
mult $2, $2
xori $3, $2, 4
xor $2, $3, $2
TAG708:
xor $2, $2, $2
lw $4, 0($2)
srav $3, $2, $4
bgtz $4, TAG709
TAG709:
slti $1, $3, 1
sb $3, 0($1)
blez $1, TAG710
sllv $4, $3, $1
TAG710:
sw $4, 0($4)
lw $2, 0($4)
lui $4, 0
lb $1, 0($4)
TAG711:
lui $3, 2
bne $3, $3, TAG712
mthi $1
beq $1, $3, TAG712
TAG712:
mflo $1
slti $2, $1, 14
blez $1, TAG713
lbu $3, 0($2)
TAG713:
sltu $4, $3, $3
mthi $3
sll $3, $4, 8
ori $1, $3, 10
TAG714:
slt $1, $1, $1
slt $4, $1, $1
sh $1, 0($1)
beq $4, $4, TAG715
TAG715:
mtlo $4
sra $4, $4, 14
bgez $4, TAG716
mflo $4
TAG716:
multu $4, $4
srl $1, $4, 15
sb $4, 0($4)
multu $1, $1
TAG717:
lw $3, 0($1)
mthi $3
lui $2, 11
lui $2, 4
TAG718:
bne $2, $2, TAG719
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG719:
sb $1, 0($1)
mfhi $2
mtlo $2
or $4, $1, $1
TAG720:
sb $4, 0($4)
beq $4, $4, TAG721
mult $4, $4
mtlo $4
TAG721:
sh $4, 0($4)
lui $1, 1
sll $0, $0, 0
bgtz $4, TAG722
TAG722:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG723
sll $3, $1, 2
TAG723:
sll $0, $0, 0
mult $2, $3
and $2, $2, $2
bgtz $2, TAG724
TAG724:
sw $2, 0($2)
mfhi $3
mflo $1
mthi $3
TAG725:
lui $3, 6
bne $3, $3, TAG726
lh $4, 0($1)
mflo $3
TAG726:
sw $3, 0($3)
bltz $3, TAG727
addiu $3, $3, 3
mflo $4
TAG727:
lui $4, 10
mflo $1
mthi $4
bne $4, $1, TAG728
TAG728:
addiu $3, $1, 1
sb $3, 0($3)
sra $4, $3, 13
sltu $4, $3, $1
TAG729:
bltz $4, TAG730
srlv $2, $4, $4
and $2, $4, $4
andi $2, $4, 13
TAG730:
sw $2, 0($2)
sw $2, 0($2)
xor $4, $2, $2
lui $2, 7
TAG731:
addiu $1, $2, 13
div $1, $1
blez $2, TAG732
divu $1, $1
TAG732:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
beq $4, $1, TAG733
TAG733:
mfhi $3
lui $1, 13
mflo $3
mtlo $3
TAG734:
sll $0, $0, 0
subu $1, $3, $3
lui $3, 14
mult $1, $3
TAG735:
mthi $3
slt $2, $3, $3
blez $2, TAG736
mfhi $1
TAG736:
lui $2, 1
blez $1, TAG737
mflo $2
beq $2, $2, TAG737
TAG737:
subu $3, $2, $2
multu $3, $2
multu $2, $2
mthi $2
TAG738:
beq $3, $3, TAG739
mflo $2
beq $2, $3, TAG739
mthi $2
TAG739:
bgez $2, TAG740
sb $2, 0($2)
div $2, $2
lui $3, 1
TAG740:
lhu $3, 0($3)
sltu $3, $3, $3
blez $3, TAG741
srav $2, $3, $3
TAG741:
srl $4, $2, 12
mflo $3
lui $4, 15
lui $4, 8
TAG742:
sll $0, $0, 0
sllv $2, $4, $4
mtlo $2
beq $4, $2, TAG743
TAG743:
lui $1, 9
beq $2, $1, TAG744
sll $0, $0, 0
subu $4, $1, $2
TAG744:
bgtz $4, TAG745
andi $2, $4, 14
lui $2, 2
addiu $3, $4, 2
TAG745:
mfhi $2
mthi $2
blez $3, TAG746
mult $2, $2
TAG746:
mtlo $2
bgtz $2, TAG747
sll $2, $2, 14
add $3, $2, $2
TAG747:
multu $3, $3
bne $3, $3, TAG748
mflo $3
bne $3, $3, TAG748
TAG748:
mfhi $1
sb $1, 0($3)
mflo $1
lui $3, 11
TAG749:
andi $1, $3, 3
mflo $4
lui $4, 6
subu $3, $4, $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop