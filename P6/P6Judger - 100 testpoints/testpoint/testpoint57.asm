ori $1, $0, 12
ori $2, $0, 14
ori $3, $0, 14
ori $4, $0, 2
sw $2, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $4, 16($0)
sw $2, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $4, 44($0)
sw $3, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $3, 124($0)
lb $1, 0($2)
slti $4, $2, 5
multu $2, $1
blez $2, TAG1
TAG1:
lb $4, 0($4)
lui $4, 5
sll $0, $0, 0
lui $4, 11
TAG2:
sll $0, $0, 0
or $2, $4, $4
sllv $1, $2, $4
lui $4, 2
TAG3:
mtlo $4
mfhi $1
beq $4, $4, TAG4
sll $0, $0, 0
TAG4:
multu $1, $1
sra $4, $1, 6
bgtz $4, TAG5
slti $1, $4, 14
TAG5:
lui $2, 7
bgtz $1, TAG6
sll $0, $0, 0
bgez $2, TAG6
TAG6:
div $2, $2
mtlo $2
bne $2, $2, TAG7
mult $2, $2
TAG7:
mflo $2
sw $2, 0($2)
mtlo $2
lh $3, 0($2)
TAG8:
mult $3, $3
subu $1, $3, $3
or $3, $1, $3
bne $3, $1, TAG9
TAG9:
lui $4, 2
lhu $3, 0($3)
or $1, $3, $4
mfhi $1
TAG10:
beq $1, $1, TAG11
lh $4, 0($1)
sh $4, 0($4)
bltz $1, TAG11
TAG11:
multu $4, $4
sh $4, 0($4)
addiu $2, $4, 14
sb $4, 0($2)
TAG12:
sh $2, 0($2)
bltz $2, TAG13
mthi $2
bgtz $2, TAG13
TAG13:
srav $4, $2, $2
bgez $4, TAG14
sw $2, 0($4)
lui $2, 14
TAG14:
lbu $2, 0($2)
addu $2, $2, $2
div $2, $2
srlv $1, $2, $2
TAG15:
lh $4, 0($1)
sh $1, 0($4)
mfhi $4
sllv $1, $4, $1
TAG16:
sltiu $4, $1, 1
mult $1, $1
bgtz $4, TAG17
xori $1, $4, 4
TAG17:
subu $3, $1, $1
beq $1, $3, TAG18
lh $1, 0($3)
multu $1, $3
TAG18:
subu $4, $1, $1
lui $4, 4
lui $2, 5
bgtz $4, TAG19
TAG19:
lui $4, 0
mthi $2
mtlo $4
lui $2, 5
TAG20:
bgtz $2, TAG21
sll $0, $0, 0
mflo $4
mtlo $2
TAG21:
lui $2, 4
addi $2, $4, 0
sllv $2, $2, $4
mthi $4
TAG22:
bltz $2, TAG23
lb $3, 0($2)
sb $2, 0($3)
mtlo $3
TAG23:
bltz $3, TAG24
lui $4, 8
mfhi $1
sh $4, 0($3)
TAG24:
mult $1, $1
mthi $1
sw $1, 0($1)
multu $1, $1
TAG25:
blez $1, TAG26
subu $1, $1, $1
sllv $3, $1, $1
addiu $3, $1, 2
TAG26:
multu $3, $3
nor $3, $3, $3
mthi $3
sw $3, 15($3)
TAG27:
sll $0, $0, 0
lbu $3, 15($3)
mthi $3
bne $3, $3, TAG28
TAG28:
lui $2, 3
mtlo $2
mflo $2
sll $0, $0, 0
TAG29:
mtlo $1
lb $2, 0($1)
lui $2, 11
sll $0, $0, 0
TAG30:
div $2, $2
xori $4, $2, 12
sll $0, $0, 0
div $4, $4
TAG31:
mflo $4
bne $4, $4, TAG32
divu $4, $4
sltiu $4, $4, 4
TAG32:
lui $3, 1
lbu $1, 0($4)
multu $4, $1
lui $2, 14
TAG33:
divu $2, $2
sll $0, $0, 0
or $2, $1, $1
bne $1, $1, TAG34
TAG34:
divu $2, $2
lui $4, 8
subu $3, $4, $2
sll $0, $0, 0
TAG35:
mult $1, $1
sra $1, $1, 11
mflo $1
mthi $1
TAG36:
lui $2, 5
sll $0, $0, 0
bne $1, $2, TAG37
lui $2, 13
TAG37:
sll $0, $0, 0
bne $2, $2, TAG38
mfhi $1
blez $1, TAG38
TAG38:
sltu $1, $1, $1
lui $3, 3
lui $1, 15
mthi $1
TAG39:
lui $4, 12
sll $0, $0, 0
div $1, $1
beq $4, $1, TAG40
TAG40:
sll $0, $0, 0
xori $3, $4, 14
xori $1, $3, 5
lui $2, 14
TAG41:
sll $2, $2, 7
sll $0, $0, 0
mthi $2
sltiu $2, $2, 11
TAG42:
subu $2, $2, $2
andi $4, $2, 5
addi $3, $2, 11
mthi $4
TAG43:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
bne $3, $3, TAG44
TAG44:
lui $3, 13
sll $0, $0, 0
bne $3, $3, TAG45
multu $3, $3
TAG45:
mflo $4
sll $0, $0, 0
mthi $4
srlv $4, $3, $3
TAG46:
sll $0, $0, 0
or $4, $4, $4
mthi $4
beq $4, $4, TAG47
TAG47:
multu $4, $4
slti $1, $4, 4
sra $4, $1, 14
bne $1, $4, TAG48
TAG48:
multu $4, $4
blez $4, TAG49
slt $4, $4, $4
bne $4, $4, TAG49
TAG49:
slt $4, $4, $4
sb $4, 0($4)
lui $2, 5
bne $4, $4, TAG50
TAG50:
sll $0, $0, 0
mfhi $4
mflo $1
mfhi $2
TAG51:
sw $2, 0($2)
mthi $2
sw $2, 0($2)
bne $2, $2, TAG52
TAG52:
andi $2, $2, 4
lh $3, 0($2)
lui $2, 14
slti $2, $2, 5
TAG53:
sh $2, 0($2)
mult $2, $2
addiu $2, $2, 1
blez $2, TAG54
TAG54:
mfhi $4
sb $2, 0($4)
bltz $2, TAG55
srl $3, $2, 0
TAG55:
mflo $1
mflo $2
bne $1, $1, TAG56
sb $1, 0($3)
TAG56:
beq $2, $2, TAG57
sh $2, 0($2)
mfhi $2
divu $2, $2
TAG57:
sh $2, 0($2)
or $1, $2, $2
mthi $1
multu $1, $2
TAG58:
lui $1, 15
sltu $3, $1, $1
lui $4, 15
sb $1, 0($3)
TAG59:
addu $4, $4, $4
or $4, $4, $4
blez $4, TAG60
sll $0, $0, 0
TAG60:
slt $2, $4, $4
sw $2, 0($2)
lui $1, 7
mult $2, $4
TAG61:
lui $3, 12
mtlo $3
bgez $1, TAG62
addiu $3, $3, 12
TAG62:
mtlo $3
beq $3, $3, TAG63
mtlo $3
lb $1, 0($3)
TAG63:
mfhi $1
mult $1, $1
sw $1, 0($1)
mthi $1
TAG64:
lui $4, 12
mult $1, $1
sll $0, $0, 0
ori $2, $4, 1
TAG65:
sll $0, $0, 0
subu $3, $2, $2
sll $0, $0, 0
lhu $1, 0($3)
TAG66:
srl $1, $1, 13
mult $1, $1
sll $3, $1, 9
lui $1, 11
TAG67:
beq $1, $1, TAG68
div $1, $1
slt $4, $1, $1
bne $4, $4, TAG68
TAG68:
mfhi $1
mtlo $1
mtlo $4
sllv $2, $4, $1
TAG69:
divu $2, $2
blez $2, TAG70
sll $0, $0, 0
mtlo $2
TAG70:
blez $2, TAG71
divu $2, $2
addiu $4, $2, 9
mfhi $3
TAG71:
blez $3, TAG72
lh $1, 0($3)
beq $1, $1, TAG72
lui $4, 13
TAG72:
sltu $1, $4, $4
xori $3, $1, 9
bltz $3, TAG73
sb $3, 0($1)
TAG73:
mtlo $3
multu $3, $3
divu $3, $3
lui $4, 10
TAG74:
lui $3, 12
mflo $3
lbu $4, 0($3)
bgtz $4, TAG75
TAG75:
lbu $1, 0($4)
lui $3, 8
mthi $1
lb $1, 0($1)
TAG76:
lui $3, 15
andi $1, $1, 11
or $3, $1, $3
subu $4, $1, $3
TAG77:
beq $4, $4, TAG78
mfhi $4
slti $1, $4, 13
addu $3, $4, $4
TAG78:
addiu $1, $3, 5
mflo $3
bgez $3, TAG79
mtlo $3
TAG79:
mfhi $1
andi $2, $3, 15
mflo $4
lbu $4, 0($4)
TAG80:
mfhi $1
beq $1, $4, TAG81
lb $3, 0($1)
lw $4, 0($4)
TAG81:
bgez $4, TAG82
sb $4, 0($4)
sh $4, 0($4)
sh $4, 0($4)
TAG82:
lui $1, 1
mthi $1
bltz $1, TAG83
addu $4, $4, $4
TAG83:
addiu $2, $4, 10
addiu $1, $4, 5
multu $4, $1
srlv $4, $4, $1
TAG84:
sllv $4, $4, $4
lb $3, 0($4)
lb $3, 0($3)
mult $3, $3
TAG85:
subu $2, $3, $3
divu $3, $3
sb $2, 0($3)
lh $4, 0($2)
TAG86:
srlv $3, $4, $4
beq $4, $4, TAG87
sb $3, 0($4)
mtlo $4
TAG87:
lbu $4, 0($3)
lbu $3, 0($3)
mthi $4
sb $3, 0($4)
TAG88:
mthi $3
andi $1, $3, 2
addiu $3, $3, 6
sb $3, 0($3)
TAG89:
sb $3, 0($3)
lui $4, 12
sll $0, $0, 0
sb $3, 0($3)
TAG90:
mtlo $3
lui $3, 2
xori $3, $3, 3
blez $3, TAG91
TAG91:
sll $0, $0, 0
lui $1, 6
sll $3, $3, 14
div $1, $3
TAG92:
beq $3, $3, TAG93
subu $3, $3, $3
mtlo $3
sllv $1, $3, $3
TAG93:
sll $0, $0, 0
addu $1, $1, $1
bne $1, $1, TAG94
mtlo $2
TAG94:
sll $0, $0, 0
subu $1, $1, $1
bltz $1, TAG95
mflo $4
TAG95:
sw $4, 0($4)
mfhi $2
ori $2, $2, 1
lb $3, 0($4)
TAG96:
mtlo $3
sw $3, 0($3)
bgtz $3, TAG97
lui $3, 9
TAG97:
lui $2, 7
mthi $3
or $1, $2, $2
multu $1, $3
TAG98:
beq $1, $1, TAG99
mthi $1
mtlo $1
mtlo $1
TAG99:
sll $0, $0, 0
and $3, $1, $1
mthi $1
bgtz $1, TAG100
TAG100:
sltiu $1, $3, 12
lui $3, 13
bne $3, $3, TAG101
sb $1, 0($1)
TAG101:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
sw $3, 0($1)
TAG102:
mult $1, $1
lw $4, 0($1)
nor $2, $4, $4
sb $4, 0($1)
TAG103:
addu $2, $2, $2
bltz $2, TAG104
lui $4, 3
nor $4, $4, $2
TAG104:
mfhi $2
mult $4, $4
bltz $4, TAG105
multu $4, $4
TAG105:
bgtz $2, TAG106
lui $4, 4
mtlo $2
mtlo $4
TAG106:
div $4, $4
mfhi $1
divu $1, $4
mult $4, $4
TAG107:
beq $1, $1, TAG108
sra $4, $1, 1
mflo $4
sub $2, $1, $4
TAG108:
srav $4, $2, $2
mtlo $2
mflo $2
sh $4, 0($2)
TAG109:
bltz $2, TAG110
mthi $2
lhu $4, 0($2)
multu $4, $2
TAG110:
sra $1, $4, 1
mfhi $4
srl $2, $1, 11
beq $2, $4, TAG111
TAG111:
mflo $4
sra $3, $4, 12
sb $4, 0($3)
lh $3, 0($4)
TAG112:
bgez $3, TAG113
lui $3, 10
sh $3, 0($3)
bltz $3, TAG113
TAG113:
addu $3, $3, $3
bgez $3, TAG114
multu $3, $3
beq $3, $3, TAG114
TAG114:
mfhi $1
mfhi $1
bgez $3, TAG115
lui $3, 15
TAG115:
div $3, $3
bltz $3, TAG116
addu $2, $3, $3
bgez $2, TAG116
TAG116:
mtlo $2
divu $2, $2
sll $0, $0, 0
slt $4, $2, $2
TAG117:
sw $4, 0($4)
mthi $4
beq $4, $4, TAG118
lhu $2, 0($4)
TAG118:
add $3, $2, $2
lhu $2, 0($2)
slt $4, $3, $3
lb $1, 0($4)
TAG119:
mfhi $1
mflo $4
andi $2, $1, 11
bltz $4, TAG120
TAG120:
mfhi $3
mtlo $2
sltu $1, $3, $3
sw $2, 0($3)
TAG121:
mtlo $1
bgtz $1, TAG122
sw $1, 0($1)
ori $2, $1, 7
TAG122:
lb $4, 0($2)
srl $4, $2, 9
beq $4, $4, TAG123
mtlo $2
TAG123:
lhu $2, 0($4)
lb $1, 0($2)
lui $3, 8
bltz $3, TAG124
TAG124:
divu $3, $3
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG125:
mult $4, $4
blez $4, TAG126
lui $2, 7
sb $2, 0($2)
TAG126:
sll $0, $0, 0
beq $2, $3, TAG127
addu $3, $2, $3
sll $0, $0, 0
TAG127:
divu $3, $3
mfhi $3
lui $3, 7
mflo $3
TAG128:
lui $3, 9
sra $1, $3, 0
mfhi $4
div $3, $1
TAG129:
lui $3, 8
sll $0, $0, 0
lui $1, 0
bgez $3, TAG130
TAG130:
addiu $2, $1, 12
bltz $2, TAG131
mfhi $4
lb $2, 0($4)
TAG131:
bgtz $2, TAG132
slt $2, $2, $2
lb $4, 0($2)
srl $3, $4, 15
TAG132:
lb $1, 0($3)
lhu $1, 0($3)
sh $1, 0($3)
lui $4, 11
TAG133:
bgez $4, TAG134
divu $4, $4
addu $2, $4, $4
mtlo $4
TAG134:
bgez $2, TAG135
lui $3, 10
mfhi $4
mtlo $3
TAG135:
blez $4, TAG136
mflo $1
lui $2, 3
mfhi $1
TAG136:
sw $1, 0($1)
beq $1, $1, TAG137
sh $1, 0($1)
slt $2, $1, $1
TAG137:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
lui $2, 15
TAG138:
addu $2, $2, $2
mult $2, $2
addiu $3, $2, 6
sll $0, $0, 0
TAG139:
bltz $3, TAG140
mult $3, $3
lui $3, 9
sll $0, $0, 0
TAG140:
sb $1, 0($1)
bgez $1, TAG141
mfhi $4
sw $1, 0($4)
TAG141:
mflo $4
mult $4, $4
slt $2, $4, $4
srav $1, $2, $4
TAG142:
beq $1, $1, TAG143
addi $2, $1, 0
addu $3, $2, $1
lb $4, 0($3)
TAG143:
sll $0, $0, 0
beq $1, $4, TAG144
xori $2, $4, 2
mtlo $1
TAG144:
sllv $3, $2, $2
sll $0, $0, 0
bgez $2, TAG145
sll $0, $0, 0
TAG145:
srav $1, $2, $2
xor $4, $2, $1
mfhi $1
mtlo $1
TAG146:
mult $1, $1
div $1, $1
sll $0, $0, 0
beq $1, $1, TAG147
TAG147:
mfhi $1
subu $1, $1, $1
lui $3, 0
mfhi $2
TAG148:
mthi $2
mflo $3
bne $2, $2, TAG149
multu $2, $2
TAG149:
mthi $3
mthi $3
lb $4, 0($3)
mtlo $3
TAG150:
slt $1, $4, $4
lui $1, 6
bgez $1, TAG151
lui $2, 2
TAG151:
sra $3, $2, 2
mflo $1
and $4, $2, $2
mfhi $4
TAG152:
blez $4, TAG153
lui $2, 5
mflo $4
multu $2, $4
TAG153:
bne $4, $4, TAG154
sltiu $3, $4, 0
subu $3, $4, $4
multu $3, $4
TAG154:
lbu $2, 0($3)
multu $2, $3
sw $3, 0($3)
mthi $3
TAG155:
sw $2, 0($2)
bgez $2, TAG156
mfhi $1
ori $4, $1, 13
TAG156:
sb $4, 0($4)
lb $3, 0($4)
sb $4, 0($4)
lui $3, 12
TAG157:
sltiu $4, $3, 14
sb $3, 0($4)
sw $3, 0($4)
mtlo $4
TAG158:
bgez $4, TAG159
lbu $2, 0($4)
sra $2, $2, 9
beq $2, $2, TAG159
TAG159:
nor $3, $2, $2
lui $1, 13
lui $4, 2
bgtz $1, TAG160
TAG160:
mthi $4
sll $0, $0, 0
bgtz $4, TAG161
sll $0, $0, 0
TAG161:
nor $3, $4, $4
beq $3, $4, TAG162
mthi $4
mfhi $4
TAG162:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
beq $3, $4, TAG163
TAG163:
lh $1, 0($2)
blez $1, TAG164
sb $1, 0($2)
mthi $1
TAG164:
sw $1, 0($1)
lbu $3, 0($1)
mflo $2
addi $2, $3, 13
TAG165:
mflo $3
sw $2, 0($3)
bltz $3, TAG166
sb $3, 0($2)
TAG166:
mfhi $1
mthi $3
srl $3, $3, 11
mthi $3
TAG167:
mtlo $3
lui $1, 0
mthi $1
beq $1, $3, TAG168
TAG168:
xori $4, $1, 0
bne $1, $1, TAG169
mthi $4
lui $4, 3
TAG169:
beq $4, $4, TAG170
addiu $2, $4, 5
mult $4, $4
mthi $4
TAG170:
lui $2, 11
divu $2, $2
mtlo $2
sll $0, $0, 0
TAG171:
mtlo $2
sll $0, $0, 0
bgtz $2, TAG172
sll $0, $0, 0
TAG172:
mthi $2
lui $1, 4
sll $0, $0, 0
andi $2, $1, 12
TAG173:
mfhi $1
bgtz $1, TAG174
lui $4, 5
blez $2, TAG174
TAG174:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG175
andi $3, $4, 5
TAG175:
lh $4, 0($3)
srlv $4, $4, $4
lbu $1, 0($3)
multu $4, $1
TAG176:
sra $4, $1, 14
sb $4, 0($1)
mthi $1
mult $4, $4
TAG177:
multu $4, $4
sh $4, 0($4)
bgez $4, TAG178
mtlo $4
TAG178:
sub $4, $4, $4
multu $4, $4
sltiu $4, $4, 4
mthi $4
TAG179:
lbu $4, 0($4)
bgtz $4, TAG180
sw $4, 0($4)
lhu $2, 0($4)
TAG180:
sw $2, 0($2)
bltz $2, TAG181
mult $2, $2
sw $2, 0($2)
TAG181:
lui $4, 12
lw $2, 0($2)
sb $2, 0($2)
lbu $1, 0($2)
TAG182:
sh $1, 0($1)
mfhi $3
mthi $3
mflo $1
TAG183:
lui $3, 11
lui $3, 11
bgez $3, TAG184
mthi $3
TAG184:
blez $3, TAG185
sll $0, $0, 0
mtlo $3
addu $3, $3, $3
TAG185:
sll $0, $0, 0
mtlo $3
beq $3, $3, TAG186
mfhi $2
TAG186:
sltiu $1, $2, 5
bgez $2, TAG187
div $2, $2
mthi $1
TAG187:
mflo $2
bltz $1, TAG188
divu $1, $2
sw $2, 0($1)
TAG188:
mtlo $2
mfhi $2
sh $2, 0($2)
lui $2, 1
TAG189:
mfhi $1
nor $4, $2, $2
sw $1, 0($1)
bne $2, $2, TAG190
TAG190:
sll $0, $0, 0
bne $4, $4, TAG191
multu $4, $4
sll $0, $0, 0
TAG191:
bne $4, $4, TAG192
multu $4, $4
bltz $4, TAG192
mflo $3
TAG192:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
mthi $4
TAG193:
multu $4, $4
srlv $2, $4, $4
lb $4, 0($2)
sw $4, 0($4)
TAG194:
mult $4, $4
blez $4, TAG195
srl $3, $4, 1
beq $4, $4, TAG195
TAG195:
mult $3, $3
lui $2, 3
lb $4, 0($3)
bltz $2, TAG196
TAG196:
lb $4, 0($4)
lw $1, 0($4)
lui $1, 0
mtlo $4
TAG197:
srl $2, $1, 11
lui $1, 10
mult $1, $2
sll $0, $0, 0
TAG198:
mflo $3
multu $2, $3
mult $2, $3
mtlo $2
TAG199:
lui $4, 7
sra $1, $3, 4
mfhi $4
sllv $1, $3, $4
TAG200:
mthi $1
lbu $4, 0($1)
lb $2, 0($1)
sw $4, 0($2)
TAG201:
bgez $2, TAG202
sb $2, 0($2)
subu $3, $2, $2
bne $2, $3, TAG202
TAG202:
lui $3, 6
blez $3, TAG203
lui $4, 3
sll $0, $0, 0
TAG203:
beq $2, $2, TAG204
andi $1, $2, 10
lui $4, 8
bne $1, $1, TAG204
TAG204:
mflo $4
bltz $4, TAG205
mtlo $4
srav $3, $4, $4
TAG205:
mtlo $3
mfhi $2
mfhi $2
lh $4, 0($2)
TAG206:
mult $4, $4
sh $4, 0($4)
slt $2, $4, $4
lw $1, 0($2)
TAG207:
beq $1, $1, TAG208
nor $1, $1, $1
lh $4, 0($1)
lbu $4, 0($4)
TAG208:
sw $4, 0($4)
blez $4, TAG209
mtlo $4
mfhi $3
TAG209:
lui $2, 1
beq $2, $2, TAG210
lhu $1, 0($3)
lui $2, 14
TAG210:
mflo $1
xor $1, $1, $2
lui $1, 13
sll $0, $0, 0
TAG211:
mfhi $4
lui $3, 10
lui $1, 5
lb $1, 0($4)
TAG212:
blez $1, TAG213
sb $1, 0($1)
lui $3, 15
mtlo $1
TAG213:
subu $4, $3, $3
mfhi $4
mflo $1
xor $1, $1, $1
TAG214:
lh $3, 0($1)
lui $1, 14
mflo $2
bne $3, $1, TAG215
TAG215:
subu $2, $2, $2
mthi $2
sltiu $3, $2, 0
lui $2, 14
TAG216:
sll $0, $0, 0
mfhi $3
mthi $2
mult $4, $4
TAG217:
lhu $1, 0($3)
mfhi $4
bne $3, $1, TAG218
mfhi $3
TAG218:
sw $3, 0($3)
lw $1, 0($3)
or $1, $1, $3
mtlo $1
TAG219:
mflo $1
multu $1, $1
xor $3, $1, $1
slti $3, $1, 3
TAG220:
beq $3, $3, TAG221
xori $4, $3, 2
mflo $2
andi $2, $3, 13
TAG221:
sll $0, $0, 0
mthi $2
mflo $3
mflo $3
TAG222:
lh $2, 0($3)
addu $3, $3, $3
bgtz $3, TAG223
lui $2, 6
TAG223:
addiu $4, $2, 14
div $2, $2
divu $2, $2
sll $0, $0, 0
TAG224:
sll $0, $0, 0
sltu $2, $4, $4
mult $4, $2
beq $4, $2, TAG225
TAG225:
mtlo $2
sh $2, 0($2)
mflo $3
nor $2, $3, $2
TAG226:
sll $4, $2, 14
xori $2, $4, 6
bne $2, $4, TAG227
srav $2, $4, $2
TAG227:
mthi $2
multu $2, $2
sll $2, $2, 10
divu $2, $2
TAG228:
multu $2, $2
slt $4, $2, $2
bne $2, $2, TAG229
sll $2, $2, 14
TAG229:
mtlo $2
multu $2, $2
sw $2, 0($2)
mtlo $2
TAG230:
lhu $3, 0($2)
lb $1, 0($3)
bne $1, $2, TAG231
mult $2, $2
TAG231:
sh $1, 0($1)
mthi $1
sb $1, 0($1)
mult $1, $1
TAG232:
mthi $1
lh $4, 0($1)
xor $1, $4, $1
and $4, $1, $4
TAG233:
lh $3, 0($4)
and $3, $4, $4
bgez $3, TAG234
lui $2, 5
TAG234:
sll $0, $0, 0
blez $2, TAG235
sw $3, 0($3)
lui $2, 9
TAG235:
sll $0, $0, 0
andi $4, $2, 12
mult $4, $4
bgez $2, TAG236
TAG236:
lui $2, 1
sh $4, 0($4)
mthi $2
mult $4, $4
TAG237:
addiu $1, $2, 9
sll $0, $0, 0
sll $0, $0, 0
multu $2, $1
TAG238:
sb $4, 0($4)
mflo $3
mflo $4
sll $0, $0, 0
TAG239:
sll $0, $0, 0
sll $0, $0, 0
or $2, $4, $4
lui $4, 10
TAG240:
lui $1, 1
sll $0, $0, 0
lui $3, 14
subu $2, $3, $1
TAG241:
bltz $2, TAG242
sltu $3, $2, $2
mflo $4
lui $4, 12
TAG242:
srl $1, $4, 13
mtlo $1
lui $1, 2
lui $2, 7
TAG243:
lui $1, 7
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
TAG244:
sltiu $4, $3, 15
srlv $1, $3, $3
srlv $2, $1, $1
srlv $1, $1, $1
TAG245:
beq $1, $1, TAG246
sltiu $3, $1, 1
lui $1, 7
lb $1, 0($3)
TAG246:
slt $4, $1, $1
sh $1, 0($4)
lw $3, 0($4)
blez $4, TAG247
TAG247:
multu $3, $3
beq $3, $3, TAG248
sll $4, $3, 15
xori $1, $3, 11
TAG248:
bne $1, $1, TAG249
mflo $3
bgez $3, TAG249
mthi $1
TAG249:
lhu $3, 0($3)
lui $2, 9
slti $4, $2, 8
srl $4, $4, 13
TAG250:
lhu $2, 0($4)
addiu $1, $2, 11
multu $2, $4
bgtz $1, TAG251
TAG251:
lb $4, 0($1)
xor $4, $1, $4
bgtz $4, TAG252
sb $1, 0($4)
TAG252:
mflo $4
mthi $4
sll $2, $4, 15
xor $1, $4, $4
TAG253:
lui $2, 0
ori $2, $2, 12
mtlo $2
xor $4, $1, $1
TAG254:
blez $4, TAG255
sh $4, 0($4)
mfhi $4
mfhi $1
TAG255:
bgez $1, TAG256
lh $4, 0($1)
srav $4, $1, $1
sw $4, 0($4)
TAG256:
bltz $4, TAG257
mtlo $4
sh $4, 0($4)
slt $4, $4, $4
TAG257:
sll $3, $4, 1
mult $4, $4
multu $3, $4
blez $3, TAG258
TAG258:
addiu $4, $3, 15
lb $3, 0($3)
sw $4, 0($3)
mthi $3
TAG259:
mflo $2
lhu $2, 0($3)
sll $2, $2, 4
lhu $4, 0($3)
TAG260:
ori $2, $4, 12
sb $2, 0($2)
addiu $3, $2, 9
divu $3, $3
TAG261:
lui $4, 8
slti $3, $4, 12
mfhi $3
bgtz $3, TAG262
TAG262:
sll $1, $3, 8
xori $3, $1, 7
sh $3, 0($1)
sb $1, 0($1)
TAG263:
lbu $1, 0($3)
sb $1, 0($3)
bne $3, $1, TAG264
mtlo $1
TAG264:
mthi $1
lui $1, 2
lui $2, 1
mfhi $4
TAG265:
sw $4, 0($4)
mtlo $4
mflo $2
mult $4, $2
TAG266:
and $2, $2, $2
beq $2, $2, TAG267
addiu $1, $2, 14
lw $4, 0($2)
TAG267:
beq $4, $4, TAG268
mthi $4
multu $4, $4
bgez $4, TAG268
TAG268:
mflo $2
mtlo $2
sw $2, 0($2)
bltz $4, TAG269
TAG269:
sb $2, 0($2)
and $4, $2, $2
mult $2, $2
bgtz $2, TAG270
TAG270:
mult $4, $4
mflo $3
bltz $4, TAG271
multu $4, $3
TAG271:
mult $3, $3
lui $2, 0
multu $3, $2
lui $3, 9
TAG272:
mtlo $3
sll $0, $0, 0
mflo $1
sll $0, $0, 0
TAG273:
lui $3, 7
lui $2, 13
div $2, $2
bgtz $2, TAG274
TAG274:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
subu $3, $2, $3
TAG275:
sll $0, $0, 0
addu $2, $3, $3
srav $3, $2, $3
mthi $2
TAG276:
div $3, $3
div $3, $3
mfhi $3
mflo $4
TAG277:
beq $4, $4, TAG278
sb $4, 0($4)
mtlo $4
lw $4, 0($4)
TAG278:
srl $4, $4, 4
lui $4, 14
addiu $1, $4, 8
sll $0, $0, 0
TAG279:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
lui $2, 6
TAG280:
mtlo $2
sll $0, $0, 0
beq $3, $2, TAG281
sb $2, 0($3)
TAG281:
blez $3, TAG282
mflo $1
lui $3, 13
sb $1, 0($3)
TAG282:
bgtz $3, TAG283
lw $2, 0($3)
beq $3, $3, TAG283
sltiu $3, $3, 14
TAG283:
mult $3, $3
mthi $3
bne $3, $3, TAG284
mfhi $4
TAG284:
blez $4, TAG285
sll $4, $4, 1
beq $4, $4, TAG285
lh $2, 0($4)
TAG285:
lhu $2, 0($2)
mtlo $2
bne $2, $2, TAG286
lui $1, 1
TAG286:
bgez $1, TAG287
mtlo $1
srav $2, $1, $1
mfhi $3
TAG287:
lbu $1, 0($3)
beq $3, $3, TAG288
mfhi $1
lb $1, 0($1)
TAG288:
sb $1, 0($1)
and $4, $1, $1
mult $4, $1
mult $4, $1
TAG289:
mfhi $2
mthi $4
mfhi $3
lbu $3, 0($3)
TAG290:
lbu $1, 0($3)
slti $1, $1, 8
lbu $1, 0($3)
bltz $1, TAG291
TAG291:
divu $1, $1
mfhi $4
sb $1, 0($4)
lui $2, 12
TAG292:
sll $0, $0, 0
lui $2, 6
mflo $4
mthi $2
TAG293:
xor $4, $4, $4
mthi $4
subu $1, $4, $4
addu $4, $4, $1
TAG294:
mult $4, $4
lb $3, 0($4)
lui $2, 0
sb $2, 0($2)
TAG295:
beq $2, $2, TAG296
mthi $2
mfhi $2
lui $1, 10
TAG296:
sltu $1, $1, $1
lui $3, 12
lui $2, 8
blez $3, TAG297
TAG297:
multu $2, $2
sll $0, $0, 0
mtlo $2
divu $2, $2
TAG298:
slti $4, $2, 4
mthi $4
sllv $2, $2, $4
andi $1, $2, 9
TAG299:
lb $2, 0($1)
sllv $2, $1, $2
lui $2, 1
bne $2, $2, TAG300
TAG300:
slti $3, $2, 2
bgez $2, TAG301
mtlo $2
sra $2, $3, 0
TAG301:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
multu $2, $3
TAG302:
multu $3, $3
multu $3, $3
mfhi $2
sw $3, 0($3)
TAG303:
lb $4, 0($2)
mult $4, $2
bgez $2, TAG304
mult $2, $4
TAG304:
mthi $4
lui $1, 12
beq $1, $4, TAG305
sll $0, $0, 0
TAG305:
xori $3, $1, 10
sll $0, $0, 0
multu $1, $1
mfhi $1
TAG306:
mtlo $1
lw $2, -144($1)
lui $4, 10
sll $0, $0, 0
TAG307:
mthi $2
sll $4, $2, 5
multu $2, $2
lhu $2, 0($4)
TAG308:
bne $2, $2, TAG309
nor $1, $2, $2
bgez $2, TAG309
lui $4, 1
TAG309:
lui $1, 13
mthi $4
mthi $1
sll $0, $0, 0
TAG310:
sll $0, $0, 0
beq $3, $3, TAG311
mtlo $3
mult $3, $3
TAG311:
mthi $3
bne $3, $3, TAG312
addiu $3, $3, 10
multu $3, $3
TAG312:
lui $4, 15
mthi $3
mfhi $1
sll $0, $0, 0
TAG313:
lui $2, 6
sll $0, $0, 0
mtlo $2
mult $2, $2
TAG314:
beq $2, $2, TAG315
mthi $2
sll $3, $2, 0
xori $4, $3, 9
TAG315:
div $4, $4
beq $4, $4, TAG316
mtlo $4
sll $2, $4, 9
TAG316:
srl $2, $2, 7
bgez $2, TAG317
lhu $3, -3072($2)
mflo $1
TAG317:
mthi $1
sll $0, $0, 0
lui $2, 3
xori $4, $3, 8
TAG318:
div $4, $4
sb $4, 0($4)
mfhi $4
beq $4, $4, TAG319
TAG319:
nor $4, $4, $4
beq $4, $4, TAG320
mflo $2
lw $4, 0($4)
TAG320:
bgez $4, TAG321
lui $4, 7
blez $4, TAG321
sh $4, 0($4)
TAG321:
mthi $4
mthi $4
multu $4, $4
sra $3, $4, 4
TAG322:
mult $3, $3
beq $3, $3, TAG323
and $3, $3, $3
ori $3, $3, 2
TAG323:
mfhi $2
lui $1, 3
sll $0, $0, 0
mfhi $1
TAG324:
or $1, $1, $1
blez $1, TAG325
andi $1, $1, 14
divu $1, $1
TAG325:
lui $3, 5
beq $3, $3, TAG326
sll $0, $0, 0
mfhi $4
TAG326:
sll $0, $0, 0
subu $2, $4, $4
bne $2, $2, TAG327
sll $0, $0, 0
TAG327:
sll $0, $0, 0
multu $4, $4
mfhi $2
beq $4, $2, TAG328
TAG328:
sltu $2, $2, $2
blez $2, TAG329
mtlo $2
sw $2, 0($2)
TAG329:
blez $2, TAG330
mthi $2
sh $2, 0($2)
mtlo $2
TAG330:
mflo $1
mthi $2
mthi $2
lhu $3, 0($1)
TAG331:
sh $3, 0($3)
lw $2, 0($3)
bltz $3, TAG332
lui $3, 0
TAG332:
sh $3, 0($3)
mtlo $3
lui $1, 3
divu $3, $1
TAG333:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
mthi $1
TAG334:
bgez $3, TAG335
mtlo $3
bne $3, $3, TAG335
and $4, $3, $3
TAG335:
sltiu $1, $4, 10
bgez $1, TAG336
andi $4, $4, 15
bne $1, $4, TAG336
TAG336:
lui $4, 3
mthi $4
sllv $2, $4, $4
mult $4, $2
TAG337:
blez $2, TAG338
lui $4, 6
mult $2, $4
sll $0, $0, 0
TAG338:
mfhi $3
blez $3, TAG339
mfhi $4
mthi $2
TAG339:
mfhi $4
sll $0, $0, 0
mflo $1
mflo $3
TAG340:
sb $3, 0($3)
mfhi $3
sll $0, $0, 0
mtlo $3
TAG341:
sll $0, $0, 0
bgtz $4, TAG342
mfhi $1
mfhi $4
TAG342:
xor $3, $4, $4
div $3, $4
slti $1, $4, 9
lui $4, 3
TAG343:
mthi $4
xori $4, $4, 10
mflo $1
or $1, $4, $1
TAG344:
sll $0, $0, 0
srav $1, $1, $1
bne $1, $1, TAG345
lhu $1, -192($1)
TAG345:
mthi $1
mflo $1
mult $1, $1
sw $1, 0($1)
TAG346:
nor $4, $1, $1
blez $1, TAG347
srlv $4, $4, $4
mflo $3
TAG347:
sh $3, 0($3)
sw $3, 0($3)
bne $3, $3, TAG348
mult $3, $3
TAG348:
and $1, $3, $3
lui $2, 10
lui $3, 12
sra $3, $1, 12
TAG349:
addi $1, $3, 5
andi $4, $3, 0
multu $3, $4
lbu $4, 0($1)
TAG350:
addi $1, $4, 8
lui $1, 0
sw $1, 0($4)
lui $2, 5
TAG351:
beq $2, $2, TAG352
mfhi $3
bltz $2, TAG352
lbu $2, 0($3)
TAG352:
sll $0, $0, 0
xor $2, $2, $2
mtlo $2
sh $2, 0($2)
TAG353:
mfhi $1
multu $1, $1
sh $2, 0($1)
sh $1, 0($2)
TAG354:
and $2, $1, $1
lui $4, 11
sltu $1, $1, $2
beq $1, $4, TAG355
TAG355:
lui $4, 1
lui $4, 5
srav $1, $4, $1
sll $0, $0, 0
TAG356:
mfhi $2
mtlo $2
mthi $2
mthi $2
TAG357:
lhu $2, 0($2)
mtlo $2
mtlo $2
lh $3, 0($2)
TAG358:
sltu $3, $3, $3
sub $2, $3, $3
mflo $2
mthi $2
TAG359:
mult $2, $2
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
TAG360:
bne $3, $3, TAG361
sb $3, 0($3)
multu $3, $3
mfhi $2
TAG361:
subu $3, $2, $2
lb $4, 0($3)
mtlo $4
bgtz $2, TAG362
TAG362:
add $2, $4, $4
blez $4, TAG363
mtlo $4
lui $4, 11
TAG363:
lui $1, 5
lui $1, 1
mthi $1
lui $3, 9
TAG364:
bne $3, $3, TAG365
mult $3, $3
mthi $3
lui $1, 6
TAG365:
sll $0, $0, 0
bne $1, $1, TAG366
subu $1, $3, $1
multu $3, $1
TAG366:
and $4, $1, $1
srl $4, $4, 7
mflo $3
sb $4, 0($3)
TAG367:
blez $3, TAG368
and $4, $3, $3
lhu $2, 0($3)
sw $2, 0($4)
TAG368:
andi $2, $2, 3
blez $2, TAG369
sb $2, 0($2)
srav $4, $2, $2
TAG369:
mflo $1
bltz $4, TAG370
multu $4, $4
sltiu $1, $1, 0
TAG370:
mflo $3
sw $3, 0($3)
lui $1, 4
bne $1, $1, TAG371
TAG371:
mtlo $1
subu $3, $1, $1
bne $1, $1, TAG372
sw $3, 0($3)
TAG372:
multu $3, $3
mfhi $3
lw $1, 0($3)
bgez $3, TAG373
TAG373:
mtlo $1
lh $2, 0($1)
mult $2, $2
beq $2, $2, TAG374
TAG374:
lui $2, 13
mthi $2
bgtz $2, TAG375
srlv $4, $2, $2
TAG375:
mthi $4
sll $0, $0, 0
xori $1, $4, 3
lui $3, 3
TAG376:
bgez $3, TAG377
xori $2, $3, 9
multu $3, $3
sltu $4, $2, $3
TAG377:
mult $4, $4
beq $4, $4, TAG378
sll $0, $0, 0
mfhi $4
TAG378:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
addu $3, $4, $4
TAG379:
lui $4, 11
divu $4, $4
bgtz $3, TAG380
sll $0, $0, 0
TAG380:
bgtz $4, TAG381
mult $4, $4
mtlo $4
slti $4, $4, 3
TAG381:
mult $4, $4
lui $1, 2
sll $0, $0, 0
beq $1, $2, TAG382
TAG382:
srl $2, $2, 9
subu $4, $2, $2
bgez $4, TAG383
sb $4, 0($4)
TAG383:
mtlo $4
sub $3, $4, $4
mthi $4
mult $4, $4
TAG384:
mtlo $3
xor $3, $3, $3
mflo $3
mfhi $3
TAG385:
lui $2, 10
sw $3, 0($3)
addu $3, $2, $3
srlv $4, $2, $3
TAG386:
mfhi $4
mflo $1
sllv $4, $1, $4
beq $4, $4, TAG387
TAG387:
mfhi $4
multu $4, $4
beq $4, $4, TAG388
lbu $2, 0($4)
TAG388:
mult $2, $2
sll $4, $2, 1
mthi $2
lui $1, 14
TAG389:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG390:
multu $2, $2
mthi $2
slti $3, $2, 13
sb $2, 0($3)
TAG391:
blez $3, TAG392
divu $3, $3
bne $3, $3, TAG392
mfhi $3
TAG392:
bgtz $3, TAG393
add $3, $3, $3
blez $3, TAG393
lui $3, 15
TAG393:
sll $0, $0, 0
bltz $3, TAG394
sra $4, $1, 4
bgez $4, TAG394
TAG394:
subu $4, $4, $4
sll $2, $4, 8
sw $4, 0($4)
lb $4, 0($2)
TAG395:
mtlo $4
lhu $4, 0($4)
bgtz $4, TAG396
sb $4, 0($4)
TAG396:
lui $3, 15
sllv $2, $3, $3
beq $2, $2, TAG397
sh $3, 0($4)
TAG397:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $4
multu $4, $4
TAG398:
srl $3, $4, 1
beq $4, $3, TAG399
sll $1, $4, 1
lui $3, 6
TAG399:
mthi $3
mfhi $3
bne $3, $3, TAG400
mfhi $4
TAG400:
lui $1, 3
bltz $4, TAG401
sltiu $4, $4, 8
sll $0, $0, 0
TAG401:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
TAG402:
subu $4, $3, $3
sra $4, $4, 1
bltz $4, TAG403
sltiu $1, $3, 11
TAG403:
xori $2, $1, 4
bltz $2, TAG404
slt $1, $2, $2
lui $2, 2
TAG404:
sll $4, $2, 6
lui $3, 15
lui $4, 3
bne $2, $3, TAG405
TAG405:
mult $4, $4
bne $4, $4, TAG406
sll $0, $0, 0
sll $0, $0, 0
TAG406:
mflo $2
sll $0, $0, 0
mult $2, $2
slti $1, $2, 12
TAG407:
subu $1, $1, $1
mtlo $1
lui $4, 7
beq $1, $1, TAG408
TAG408:
sll $0, $0, 0
bgez $2, TAG409
div $2, $4
mthi $2
TAG409:
slt $3, $2, $2
bne $3, $3, TAG410
mthi $2
mflo $1
TAG410:
mthi $1
mult $1, $1
bne $1, $1, TAG411
subu $2, $1, $1
TAG411:
mthi $2
mfhi $2
lui $2, 3
mtlo $2
TAG412:
and $3, $2, $2
nor $4, $3, $2
sll $0, $0, 0
mtlo $4
TAG413:
lui $1, 13
bne $2, $1, TAG414
srav $1, $1, $2
addi $3, $1, 11
TAG414:
divu $3, $3
mfhi $2
bltz $2, TAG415
sll $0, $0, 0
TAG415:
mtlo $3
mflo $3
mthi $3
lui $4, 5
TAG416:
divu $4, $4
blez $4, TAG417
sll $0, $0, 0
sll $0, $0, 0
TAG417:
sll $0, $0, 0
multu $1, $4
mthi $4
mfhi $4
TAG418:
mtlo $4
sll $0, $0, 0
mult $4, $2
addu $2, $2, $2
TAG419:
addiu $4, $2, 8
mflo $2
lui $3, 12
sb $2, 0($2)
TAG420:
bne $3, $3, TAG421
sra $3, $3, 14
mfhi $1
lui $1, 11
TAG421:
lui $2, 2
mfhi $4
ori $2, $1, 13
sll $0, $0, 0
TAG422:
sb $3, 0($3)
blez $3, TAG423
multu $3, $3
lui $3, 0
TAG423:
beq $3, $3, TAG424
multu $3, $3
sll $3, $3, 13
lh $3, 0($3)
TAG424:
mtlo $3
mthi $3
bne $3, $3, TAG425
mthi $3
TAG425:
slt $3, $3, $3
lhu $1, 0($3)
sra $1, $3, 3
lui $1, 13
TAG426:
beq $1, $1, TAG427
sll $0, $0, 0
beq $1, $2, TAG427
sllv $1, $2, $1
TAG427:
lui $3, 0
mflo $1
beq $3, $3, TAG428
ori $2, $1, 8
TAG428:
mthi $2
slt $2, $2, $2
mflo $3
lh $1, 0($3)
TAG429:
lui $2, 15
sll $2, $2, 9
sll $0, $0, 0
mflo $3
TAG430:
sra $3, $3, 3
ori $1, $3, 0
sltiu $4, $1, 7
lui $4, 5
TAG431:
or $2, $4, $4
mult $2, $4
bne $4, $2, TAG432
sllv $1, $2, $4
TAG432:
divu $1, $1
mthi $1
addiu $1, $1, 2
sllv $3, $1, $1
TAG433:
sll $0, $0, 0
bltz $3, TAG434
lui $4, 12
divu $4, $4
TAG434:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
sltu $4, $4, $4
TAG435:
mthi $4
mult $4, $4
mflo $2
bne $4, $2, TAG436
TAG436:
mtlo $2
lb $2, 0($2)
sh $2, 0($2)
mflo $2
TAG437:
bgtz $2, TAG438
and $1, $2, $2
lui $3, 9
sb $1, 0($2)
TAG438:
sll $0, $0, 0
subu $2, $3, $1
mtlo $3
multu $2, $1
TAG439:
bgtz $2, TAG440
and $4, $2, $2
bne $2, $2, TAG440
sll $4, $4, 12
TAG440:
mfhi $4
mthi $4
mtlo $4
bltz $4, TAG441
TAG441:
xori $4, $4, 8
slt $2, $4, $4
lw $4, 0($4)
bne $4, $4, TAG442
TAG442:
sll $0, $0, 0
slti $2, $4, 3
addiu $3, $2, 14
sltiu $1, $2, 9
TAG443:
mflo $1
bne $1, $1, TAG444
subu $4, $1, $1
or $3, $1, $4
TAG444:
mult $3, $3
mflo $2
srav $3, $2, $3
mfhi $4
TAG445:
mthi $4
add $1, $4, $4
lui $1, 3
lui $2, 12
TAG446:
xori $3, $2, 11
sll $0, $0, 0
mthi $3
and $2, $2, $3
TAG447:
lui $1, 2
sll $0, $0, 0
div $2, $2
div $2, $2
TAG448:
mflo $4
sllv $4, $4, $4
andi $1, $4, 15
lui $4, 6
TAG449:
multu $4, $4
blez $4, TAG450
sll $0, $0, 0
beq $4, $4, TAG450
TAG450:
mflo $4
sll $2, $1, 13
lui $1, 11
bgtz $4, TAG451
TAG451:
mfhi $3
addiu $1, $1, 8
divu $3, $1
sll $0, $0, 0
TAG452:
mthi $3
divu $3, $3
lui $1, 11
lh $4, 0($3)
TAG453:
bgtz $4, TAG454
addu $3, $4, $4
bne $4, $3, TAG454
slt $3, $3, $4
TAG454:
mfhi $3
and $4, $3, $3
mthi $3
mthi $3
TAG455:
sw $4, 0($4)
sb $4, 0($4)
sllv $3, $4, $4
mtlo $4
TAG456:
sw $3, 0($3)
sb $3, 0($3)
sltu $1, $3, $3
bgtz $3, TAG457
TAG457:
mfhi $1
lbu $4, 0($1)
multu $4, $1
mtlo $4
TAG458:
bne $4, $4, TAG459
srlv $4, $4, $4
bne $4, $4, TAG459
mult $4, $4
TAG459:
multu $4, $4
lui $2, 12
lui $3, 8
mflo $1
TAG460:
mflo $1
lui $4, 2
sll $0, $0, 0
div $4, $4
TAG461:
mult $3, $3
srl $2, $3, 5
lui $3, 11
sll $0, $0, 0
TAG462:
lui $1, 5
mtlo $3
lui $4, 10
sll $0, $0, 0
TAG463:
lui $4, 13
or $1, $4, $4
mtlo $1
mthi $4
TAG464:
lui $3, 2
srav $2, $1, $1
bltz $1, TAG465
subu $4, $2, $2
TAG465:
xori $2, $4, 0
sw $2, 0($2)
addiu $4, $4, 14
sh $4, 0($4)
TAG466:
mfhi $3
bgez $4, TAG467
lui $4, 9
mthi $3
TAG467:
mtlo $4
beq $4, $4, TAG468
lui $1, 8
mult $1, $4
TAG468:
addu $3, $1, $1
srl $4, $3, 5
sll $0, $0, 0
sll $0, $0, 0
TAG469:
mflo $3
sll $0, $0, 0
multu $3, $3
bgez $3, TAG470
TAG470:
mthi $3
mflo $3
mflo $3
sb $3, 0($3)
TAG471:
sw $3, 0($3)
lui $3, 6
bgtz $3, TAG472
ori $3, $3, 7
TAG472:
bltz $3, TAG473
sll $0, $0, 0
mthi $3
slti $1, $3, 5
TAG473:
sb $1, 0($1)
lui $2, 10
multu $2, $1
mflo $2
TAG474:
sh $2, 0($2)
mthi $2
mtlo $2
add $2, $2, $2
TAG475:
xori $1, $2, 7
mflo $4
sb $1, 0($4)
mult $2, $2
TAG476:
sb $4, 0($4)
mtlo $4
mflo $2
bgtz $4, TAG477
TAG477:
multu $2, $2
beq $2, $2, TAG478
sh $2, 0($2)
beq $2, $2, TAG478
TAG478:
addu $3, $2, $2
xori $1, $2, 9
lui $4, 0
sh $2, 0($3)
TAG479:
bltz $4, TAG480
lw $4, 0($4)
addu $3, $4, $4
addu $2, $4, $3
TAG480:
bne $2, $2, TAG481
lui $1, 7
lhu $4, 0($2)
lui $1, 8
TAG481:
mthi $1
sltu $4, $1, $1
addu $4, $4, $1
blez $1, TAG482
TAG482:
lui $3, 15
sll $0, $0, 0
bltz $3, TAG483
mtlo $3
TAG483:
mult $3, $3
addu $1, $3, $3
bne $1, $1, TAG484
mfhi $2
TAG484:
and $3, $2, $2
lui $1, 1
blez $2, TAG485
addu $2, $1, $3
TAG485:
lui $4, 15
beq $2, $2, TAG486
sll $0, $0, 0
sra $3, $2, 1
TAG486:
beq $3, $3, TAG487
multu $3, $3
multu $3, $3
nor $3, $3, $3
TAG487:
blez $3, TAG488
lbu $2, -225($3)
sw $3, -225($3)
lb $3, 0($2)
TAG488:
lui $3, 9
xori $4, $3, 15
bgtz $4, TAG489
mfhi $1
TAG489:
sh $1, 0($1)
sllv $1, $1, $1
beq $1, $1, TAG490
sh $1, 0($1)
TAG490:
mthi $1
lui $1, 4
addiu $1, $1, 0
mfhi $1
TAG491:
bgtz $1, TAG492
sw $1, 0($1)
sw $1, 0($1)
multu $1, $1
TAG492:
sw $1, 0($1)
mult $1, $1
lui $4, 13
sltiu $4, $1, 5
TAG493:
lui $4, 3
and $1, $4, $4
mtlo $1
div $1, $1
TAG494:
xori $2, $1, 12
sra $2, $2, 14
lui $3, 6
mtlo $2
TAG495:
bgez $3, TAG496
mthi $3
mfhi $1
sb $1, 0($1)
TAG496:
mtlo $1
beq $1, $1, TAG497
mfhi $4
bgez $4, TAG497
TAG497:
sll $3, $4, 2
mtlo $4
sll $0, $0, 0
bgez $4, TAG498
TAG498:
addu $1, $3, $3
xori $2, $1, 12
bgez $3, TAG499
sll $0, $0, 0
TAG499:
beq $2, $2, TAG500
addiu $1, $2, 13
beq $1, $1, TAG500
slti $4, $2, 9
TAG500:
blez $4, TAG501
sll $0, $0, 0
beq $2, $4, TAG501
mflo $1
TAG501:
lui $2, 1
sll $0, $0, 0
ori $3, $2, 1
lui $2, 14
TAG502:
subu $3, $2, $2
bne $3, $3, TAG503
mthi $2
slti $2, $3, 15
TAG503:
lui $2, 15
mult $2, $2
lui $2, 6
sll $0, $0, 0
TAG504:
bltz $2, TAG505
sll $0, $0, 0
bgez $2, TAG505
mfhi $4
TAG505:
sll $0, $0, 0
beq $2, $2, TAG506
lui $3, 9
addiu $1, $4, 0
TAG506:
slti $1, $1, 14
lbu $1, 0($1)
mult $1, $1
slti $1, $1, 14
TAG507:
sltu $2, $1, $1
bne $2, $2, TAG508
sb $1, 0($1)
mthi $2
TAG508:
srl $1, $2, 12
lui $4, 2
sra $2, $2, 4
mfhi $3
TAG509:
blez $3, TAG510
lhu $1, 0($3)
mtlo $1
xor $3, $3, $1
TAG510:
bgez $3, TAG511
multu $3, $3
multu $3, $3
nor $4, $3, $3
TAG511:
sltiu $1, $4, 14
div $1, $4
sb $1, 0($1)
lbu $3, 0($1)
TAG512:
mtlo $3
bgtz $3, TAG513
lbu $1, 0($3)
slt $2, $3, $3
TAG513:
bltz $2, TAG514
sll $4, $2, 1
mtlo $2
or $3, $2, $2
TAG514:
multu $3, $3
addi $2, $3, 6
lui $2, 12
sll $0, $0, 0
TAG515:
sll $0, $0, 0
beq $2, $2, TAG516
multu $2, $2
bgez $2, TAG516
TAG516:
lui $1, 12
lui $1, 14
mtlo $1
bne $2, $1, TAG517
TAG517:
mflo $4
mflo $3
bne $1, $1, TAG518
sll $0, $0, 0
TAG518:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG519:
srlv $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $2, 8
TAG520:
mtlo $2
sll $4, $2, 1
addu $4, $2, $2
mfhi $2
TAG521:
srav $1, $2, $2
sll $0, $0, 0
andi $4, $2, 0
bne $4, $1, TAG522
TAG522:
mthi $4
mult $4, $4
blez $4, TAG523
sb $4, 0($4)
TAG523:
sh $4, 0($4)
sw $4, 0($4)
lh $4, 0($4)
mult $4, $4
TAG524:
lui $2, 8
andi $1, $4, 1
mflo $2
ori $3, $2, 5
TAG525:
beq $3, $3, TAG526
andi $3, $3, 5
sw $3, 0($3)
beq $3, $3, TAG526
TAG526:
lb $1, 0($3)
mult $3, $3
ori $3, $3, 3
xori $4, $3, 15
TAG527:
bgez $4, TAG528
lui $3, 4
mfhi $2
mthi $3
TAG528:
mtlo $2
sb $2, 0($2)
lbu $3, 0($2)
multu $2, $3
TAG529:
add $1, $3, $3
bne $3, $1, TAG530
mthi $1
bne $1, $3, TAG530
TAG530:
mflo $2
mtlo $2
bne $2, $2, TAG531
xori $3, $1, 5
TAG531:
mthi $3
mfhi $2
bltz $3, TAG532
or $4, $3, $2
TAG532:
blez $4, TAG533
addu $4, $4, $4
lhu $2, 0($4)
sb $4, 0($4)
TAG533:
lui $3, 0
div $2, $2
nor $4, $3, $2
sh $4, 0($3)
TAG534:
srlv $2, $4, $4
bltz $4, TAG535
andi $4, $4, 0
addu $2, $4, $4
TAG535:
addu $1, $2, $2
bne $2, $2, TAG536
divu $1, $2
slti $1, $1, 9
TAG536:
lbu $4, 0($1)
sra $2, $1, 7
lui $3, 11
mthi $3
TAG537:
subu $2, $3, $3
mthi $3
mthi $2
sll $0, $0, 0
TAG538:
mtlo $2
mthi $2
multu $2, $2
mtlo $2
TAG539:
bgez $2, TAG540
sb $2, 0($2)
sw $2, 0($2)
div $2, $2
TAG540:
srav $2, $2, $2
lb $1, 0($2)
srl $1, $2, 13
lui $1, 4
TAG541:
mult $1, $1
bltz $1, TAG542
sltiu $3, $1, 9
lh $3, 0($3)
TAG542:
lui $3, 5
lui $4, 1
sll $0, $0, 0
div $3, $3
TAG543:
mtlo $3
and $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG544:
beq $3, $3, TAG545
srlv $1, $3, $3
lw $2, 0($1)
div $1, $1
TAG545:
lbu $1, 0($2)
sh $2, 0($2)
blez $1, TAG546
lb $1, 0($2)
TAG546:
blez $1, TAG547
lw $4, 0($1)
mflo $4
mfhi $1
TAG547:
multu $1, $1
mtlo $1
lui $4, 8
mfhi $1
TAG548:
beq $1, $1, TAG549
lhu $3, 0($1)
divu $1, $1
divu $3, $1
TAG549:
mtlo $3
sw $3, 0($3)
bgez $3, TAG550
xori $3, $3, 15
TAG550:
subu $1, $3, $3
or $2, $3, $1
mfhi $3
lhu $3, 0($3)
TAG551:
mfhi $4
mult $4, $4
mfhi $4
mthi $4
TAG552:
multu $4, $4
sb $4, 0($4)
mtlo $4
bltz $4, TAG553
TAG553:
xori $4, $4, 5
addu $2, $4, $4
mfhi $4
sb $2, 0($2)
TAG554:
sb $4, 0($4)
ori $4, $4, 9
slt $3, $4, $4
multu $4, $3
TAG555:
sh $3, 0($3)
xori $1, $3, 9
mflo $1
lui $3, 8
TAG556:
lui $4, 14
sll $0, $0, 0
lui $1, 12
mtlo $4
TAG557:
mflo $4
multu $4, $4
mtlo $1
div $1, $1
TAG558:
bne $4, $4, TAG559
mfhi $1
lui $2, 11
sltu $2, $2, $4
TAG559:
mfhi $2
sh $2, 0($2)
mfhi $3
bne $2, $2, TAG560
TAG560:
mflo $4
mthi $3
mflo $1
mthi $1
TAG561:
bgez $1, TAG562
lui $4, 3
mtlo $1
mtlo $1
TAG562:
bne $4, $4, TAG563
mfhi $2
mult $2, $4
srlv $4, $2, $2
TAG563:
bne $4, $4, TAG564
mfhi $3
sb $3, 0($4)
lui $2, 12
TAG564:
bgtz $2, TAG565
sll $0, $0, 0
lui $3, 12
bne $2, $3, TAG565
TAG565:
srlv $2, $3, $3
mult $2, $3
mthi $2
addi $4, $3, 12
TAG566:
sh $4, 0($4)
andi $4, $4, 3
lui $4, 10
sll $0, $0, 0
TAG567:
bne $4, $4, TAG568
srav $1, $4, $4
mthi $1
bltz $4, TAG568
TAG568:
lui $1, 5
sll $0, $0, 0
div $1, $1
bne $1, $1, TAG569
TAG569:
mflo $4
bgez $1, TAG570
srav $3, $4, $1
sllv $4, $4, $4
TAG570:
mfhi $2
mthi $2
andi $3, $2, 0
lh $2, 0($3)
TAG571:
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
mthi $2
TAG572:
sw $2, 0($2)
mflo $1
lhu $3, 0($1)
sw $3, 0($2)
TAG573:
sh $3, 0($3)
mfhi $4
bne $3, $4, TAG574
lui $4, 10
TAG574:
beq $4, $4, TAG575
lui $1, 3
bne $4, $4, TAG575
lui $4, 7
TAG575:
sll $0, $0, 0
bne $4, $4, TAG576
mtlo $4
sll $0, $0, 0
TAG576:
mfhi $2
lh $1, 0($2)
mtlo $4
multu $4, $1
TAG577:
multu $1, $1
nor $3, $1, $1
lhu $2, 0($1)
nor $3, $1, $3
TAG578:
bgtz $3, TAG579
lw $4, 0($3)
bne $4, $3, TAG579
xori $4, $3, 14
TAG579:
bgez $4, TAG580
multu $4, $4
xor $4, $4, $4
or $4, $4, $4
TAG580:
lui $3, 2
divu $3, $4
nor $3, $3, $4
bltz $3, TAG581
TAG581:
mtlo $3
mthi $3
addu $1, $3, $3
or $1, $3, $1
TAG582:
lui $1, 4
lui $2, 12
beq $1, $1, TAG583
lui $2, 15
TAG583:
sll $0, $0, 0
lui $2, 5
xor $2, $3, $2
lui $2, 4
TAG584:
addiu $1, $2, 6
mthi $2
sll $0, $0, 0
sra $4, $2, 9
TAG585:
addiu $4, $4, 3
lui $1, 5
sh $1, -515($4)
blez $4, TAG586
TAG586:
xori $1, $1, 8
bgtz $1, TAG587
sll $0, $0, 0
bne $1, $1, TAG587
TAG587:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG588
mfhi $3
TAG588:
sll $1, $3, 13
bgtz $3, TAG589
sll $0, $0, 0
beq $3, $3, TAG589
TAG589:
mflo $3
mthi $3
sll $0, $0, 0
bltz $1, TAG590
TAG590:
mfhi $4
beq $4, $4, TAG591
slt $2, $3, $4
sh $2, 0($2)
TAG591:
mflo $2
blez $2, TAG592
mflo $2
lw $4, 0($2)
TAG592:
subu $3, $4, $4
andi $4, $4, 10
multu $4, $4
mflo $2
TAG593:
bgez $2, TAG594
mfhi $4
lh $1, 0($2)
div $4, $2
TAG594:
mtlo $1
lui $1, 13
sra $1, $1, 8
beq $1, $1, TAG595
TAG595:
mflo $4
lb $2, -3328($1)
mult $2, $2
addiu $4, $2, 3
TAG596:
sb $4, 0($4)
slt $1, $4, $4
sw $4, 0($1)
mtlo $4
TAG597:
bgtz $1, TAG598
lui $3, 13
beq $3, $3, TAG598
divu $3, $3
TAG598:
beq $3, $3, TAG599
or $1, $3, $3
lui $1, 13
lui $4, 11
TAG599:
beq $4, $4, TAG600
mthi $4
mtlo $4
and $4, $4, $4
TAG600:
lui $4, 13
mfhi $2
mfhi $4
lui $2, 12
TAG601:
sll $0, $0, 0
addiu $1, $2, 0
bgez $2, TAG602
div $2, $1
TAG602:
sll $4, $1, 9
sll $0, $0, 0
sll $0, $0, 0
div $1, $4
TAG603:
divu $4, $4
lui $1, 5
sll $0, $0, 0
sll $0, $0, 0
TAG604:
blez $1, TAG605
sll $0, $0, 0
sll $0, $0, 0
sra $1, $1, 3
TAG605:
sra $1, $1, 11
addu $2, $1, $1
mflo $3
lui $2, 1
TAG606:
sll $0, $0, 0
lui $1, 14
divu $1, $4
bltz $4, TAG607
TAG607:
addiu $2, $1, 13
sll $0, $0, 0
mthi $1
mfhi $2
TAG608:
ori $2, $2, 6
addu $1, $2, $2
xori $2, $2, 12
lui $4, 6
TAG609:
divu $4, $4
nor $2, $4, $4
xori $4, $2, 6
beq $4, $4, TAG610
TAG610:
sll $2, $4, 13
srl $3, $2, 11
addu $1, $4, $4
sll $0, $0, 0
TAG611:
mthi $4
divu $4, $4
mflo $2
xori $3, $4, 12
TAG612:
sll $0, $0, 0
sll $0, $0, 0
sltiu $1, $3, 9
lui $2, 14
TAG613:
srlv $3, $2, $2
bltz $3, TAG614
mtlo $3
blez $2, TAG614
TAG614:
divu $3, $3
sll $0, $0, 0
sra $1, $3, 0
bne $1, $3, TAG615
TAG615:
mult $1, $1
mflo $3
mult $3, $3
blez $1, TAG616
TAG616:
or $1, $3, $3
sb $3, 0($1)
or $1, $3, $3
mtlo $1
TAG617:
bne $1, $1, TAG618
addu $2, $1, $1
mthi $2
sh $1, 0($2)
TAG618:
lui $1, 15
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG619:
sll $0, $0, 0
subu $1, $1, $1
bltz $4, TAG620
mult $4, $1
TAG620:
multu $1, $1
lb $2, 0($1)
lui $3, 9
srav $1, $3, $3
TAG621:
sll $0, $0, 0
mtlo $1
subu $1, $1, $4
bgez $1, TAG622
TAG622:
mtlo $1
blez $1, TAG623
sll $0, $0, 0
mthi $1
TAG623:
blez $4, TAG624
slti $4, $4, 3
mult $4, $4
lui $4, 12
TAG624:
mthi $4
slti $1, $4, 6
lui $3, 8
mthi $1
TAG625:
bltz $3, TAG626
lui $4, 0
beq $3, $4, TAG626
xor $3, $4, $4
TAG626:
mthi $3
addu $3, $3, $3
blez $3, TAG627
andi $2, $3, 4
TAG627:
lh $2, 0($2)
bne $2, $2, TAG628
lui $1, 6
or $2, $1, $1
TAG628:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG629:
lui $4, 12
sll $0, $0, 0
mtlo $4
ori $2, $4, 10
TAG630:
mtlo $2
mthi $2
sll $0, $0, 0
mtlo $2
TAG631:
sll $0, $0, 0
srl $2, $3, 15
beq $2, $3, TAG632
lui $2, 4
TAG632:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG633:
blez $2, TAG634
mthi $2
bltz $2, TAG634
mthi $2
TAG634:
sll $0, $0, 0
addiu $4, $2, 5
bltz $4, TAG635
lui $4, 9
TAG635:
bltz $4, TAG636
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG636:
blez $2, TAG637
multu $2, $2
beq $2, $2, TAG637
or $1, $2, $2
TAG637:
beq $1, $1, TAG638
srav $4, $1, $1
lui $1, 12
sh $1, 0($4)
TAG638:
sll $0, $0, 0
lui $1, 14
blez $1, TAG639
lui $2, 2
TAG639:
sll $0, $0, 0
blez $2, TAG640
addu $2, $2, $2
sllv $1, $2, $2
TAG640:
bne $1, $1, TAG641
sra $4, $1, 8
beq $4, $4, TAG641
slti $1, $1, 1
TAG641:
and $2, $1, $1
and $3, $1, $2
mthi $3
mfhi $3
TAG642:
lui $4, 0
bne $3, $3, TAG643
srl $2, $4, 1
mfhi $2
TAG643:
bltz $2, TAG644
mflo $2
bne $2, $2, TAG644
xori $4, $2, 1
TAG644:
or $2, $4, $4
lbu $3, 0($2)
sltu $1, $2, $4
mthi $2
TAG645:
mthi $1
or $4, $1, $1
mthi $4
bgez $1, TAG646
TAG646:
mult $4, $4
mflo $1
ori $4, $1, 0
sw $4, 0($4)
TAG647:
lb $4, 0($4)
multu $4, $4
beq $4, $4, TAG648
mfhi $1
TAG648:
mfhi $4
blez $1, TAG649
mthi $4
multu $4, $1
TAG649:
mflo $2
lw $4, 0($2)
blez $4, TAG650
lui $4, 10
TAG650:
bgtz $4, TAG651
sltu $4, $4, $4
xori $3, $4, 2
bltz $4, TAG651
TAG651:
mthi $3
xor $1, $3, $3
bgtz $1, TAG652
mult $1, $3
TAG652:
mult $1, $1
nor $4, $1, $1
beq $4, $4, TAG653
mtlo $1
TAG653:
sll $1, $4, 3
multu $1, $4
sllv $2, $4, $4
bgez $4, TAG654
TAG654:
mflo $1
sll $0, $0, 0
bgez $1, TAG655
sll $0, $0, 0
TAG655:
lui $2, 7
ori $4, $4, 11
sll $2, $4, 2
bne $2, $4, TAG656
TAG656:
mfhi $1
lui $3, 15
mthi $1
bgez $1, TAG657
TAG657:
sll $0, $0, 0
lui $1, 3
bgtz $3, TAG658
mfhi $2
TAG658:
blez $2, TAG659
sh $2, 9($2)
sll $1, $2, 10
ori $4, $2, 5
TAG659:
addu $2, $4, $4
mfhi $4
lui $2, 6
sh $4, 9($4)
TAG660:
mflo $4
mult $2, $4
mfhi $1
mtlo $1
TAG661:
lb $1, 0($1)
lui $2, 8
bgtz $2, TAG662
lbu $1, 9($1)
TAG662:
lui $2, 7
mthi $1
mtlo $1
lui $4, 12
TAG663:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
bne $1, $1, TAG664
TAG664:
mthi $1
lui $2, 9
sltu $3, $2, $2
bne $2, $2, TAG665
TAG665:
lui $1, 6
bne $1, $3, TAG666
srlv $3, $3, $3
sb $3, 0($3)
TAG666:
sb $3, 0($3)
lh $4, 0($3)
mflo $1
mtlo $3
TAG667:
mtlo $1
lui $3, 2
sll $0, $0, 0
slti $1, $1, 13
TAG668:
sltiu $4, $1, 4
bgez $1, TAG669
lui $1, 14
mflo $4
TAG669:
lbu $4, 0($4)
mfhi $2
blez $4, TAG670
addiu $1, $4, 13
TAG670:
lui $2, 11
bne $2, $2, TAG671
multu $1, $2
sll $0, $0, 0
TAG671:
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG672
TAG672:
sh $1, -268($1)
beq $1, $1, TAG673
ori $3, $1, 10
bne $1, $3, TAG673
TAG673:
sw $3, -270($3)
mtlo $3
srl $4, $3, 7
beq $4, $3, TAG674
TAG674:
div $4, $4
bgtz $4, TAG675
mfhi $2
lui $3, 11
TAG675:
mthi $3
lbu $4, -270($3)
sh $4, -270($3)
srlv $2, $3, $4
TAG676:
lui $3, 10
sll $0, $0, 0
sub $3, $2, $2
beq $3, $3, TAG677
TAG677:
sw $3, 0($3)
bne $3, $3, TAG678
lui $2, 14
lui $3, 11
TAG678:
addiu $3, $3, 6
srl $4, $3, 4
mthi $4
sll $0, $0, 0
TAG679:
mflo $1
sll $0, $0, 0
bltz $4, TAG680
subu $2, $1, $4
TAG680:
sll $0, $0, 0
beq $1, $1, TAG681
lui $3, 7
mfhi $3
TAG681:
mfhi $4
mthi $4
lui $1, 10
sra $2, $3, 13
TAG682:
bltz $2, TAG683
mfhi $2
sll $0, $0, 0
mthi $2
TAG683:
srlv $3, $2, $2
mflo $1
mtlo $3
subu $2, $3, $3
TAG684:
mfhi $1
srav $1, $1, $2
addiu $1, $2, 1
beq $1, $1, TAG685
TAG685:
subu $4, $1, $1
sltu $4, $1, $1
multu $4, $1
and $2, $4, $1
TAG686:
sh $2, 0($2)
multu $2, $2
bgez $2, TAG687
andi $1, $2, 13
TAG687:
blez $1, TAG688
mfhi $1
lui $1, 4
bne $1, $1, TAG688
TAG688:
nor $4, $1, $1
mtlo $1
bne $4, $1, TAG689
mthi $1
TAG689:
andi $2, $4, 9
bltz $2, TAG690
sb $4, 1($4)
sb $4, 0($2)
TAG690:
xor $4, $2, $2
lb $4, 0($2)
ori $3, $2, 2
xor $3, $4, $4
TAG691:
beq $3, $3, TAG692
mfhi $4
lh $1, 0($3)
lui $1, 4
TAG692:
beq $1, $1, TAG693
sh $1, 0($1)
lui $4, 13
sb $1, 0($4)
TAG693:
sllv $4, $4, $4
sw $4, 0($4)
beq $4, $4, TAG694
lui $3, 14
TAG694:
sra $4, $3, 2
lui $3, 8
sll $0, $0, 0
mtlo $3
TAG695:
sll $0, $0, 0
divu $3, $3
mthi $3
mfhi $3
TAG696:
mult $3, $3
bgtz $3, TAG697
subu $1, $3, $3
mfhi $4
TAG697:
lui $4, 9
sll $0, $0, 0
blez $4, TAG698
xori $1, $4, 15
TAG698:
multu $1, $1
bgtz $1, TAG699
div $1, $1
mflo $3
TAG699:
bltz $3, TAG700
sll $0, $0, 0
mfhi $3
mfhi $3
TAG700:
mflo $3
mfhi $4
sub $2, $3, $4
mtlo $3
TAG701:
divu $2, $2
sb $2, 0($2)
bgtz $2, TAG702
subu $3, $2, $2
TAG702:
blez $3, TAG703
mthi $3
addiu $3, $3, 4
slt $4, $3, $3
TAG703:
lui $3, 2
add $3, $4, $4
subu $2, $4, $4
sw $3, 0($3)
TAG704:
mult $2, $2
nor $3, $2, $2
mfhi $2
multu $2, $3
TAG705:
lw $2, 0($2)
multu $2, $2
bgez $2, TAG706
lui $4, 0
TAG706:
mtlo $4
sub $2, $4, $4
ori $2, $2, 9
bgez $4, TAG707
TAG707:
mtlo $2
beq $2, $2, TAG708
lbu $3, 0($2)
mult $2, $2
TAG708:
mtlo $3
mflo $2
mthi $2
nor $3, $3, $2
TAG709:
ori $2, $3, 11
mtlo $2
slt $1, $2, $3
mflo $2
TAG710:
sll $0, $0, 0
bne $2, $4, TAG711
mfhi $3
blez $3, TAG711
TAG711:
sra $3, $3, 2
addu $4, $3, $3
mthi $4
divu $3, $4
TAG712:
slt $3, $4, $4
bgtz $4, TAG713
mult $4, $3
bne $3, $3, TAG713
TAG713:
lw $4, 0($3)
lhu $1, 0($4)
mult $1, $4
and $1, $3, $1
TAG714:
lhu $2, 0($1)
addu $2, $1, $2
mult $2, $2
beq $1, $2, TAG715
TAG715:
lui $3, 13
mfhi $4
lui $4, 10
beq $3, $4, TAG716
TAG716:
sll $0, $0, 0
sra $2, $4, 3
sll $0, $0, 0
mfhi $4
TAG717:
bgtz $4, TAG718
nor $1, $4, $4
blez $1, TAG718
xor $2, $1, $1
TAG718:
srav $4, $2, $2
addiu $2, $4, 1
mult $2, $4
bne $2, $2, TAG719
TAG719:
xor $3, $2, $2
addiu $2, $2, 10
srl $4, $3, 9
lui $3, 6
TAG720:
multu $3, $3
mflo $1
mthi $1
multu $3, $1
TAG721:
mtlo $1
addi $4, $1, 4
or $3, $1, $1
lb $2, 0($4)
TAG722:
mthi $2
and $2, $2, $2
lui $2, 3
bne $2, $2, TAG723
TAG723:
mfhi $4
mthi $4
lui $4, 15
sll $0, $0, 0
TAG724:
mtlo $2
sll $0, $0, 0
slti $3, $2, 2
mthi $2
TAG725:
bltz $3, TAG726
addiu $4, $3, 0
bgez $3, TAG726
lui $3, 6
TAG726:
sll $0, $0, 0
mthi $3
sw $1, 0($1)
srav $3, $1, $3
TAG727:
mtlo $3
multu $3, $3
mult $3, $3
mult $3, $3
TAG728:
bgtz $3, TAG729
mthi $3
mtlo $3
mfhi $4
TAG729:
nor $2, $4, $4
multu $2, $4
multu $4, $4
sltu $2, $2, $2
TAG730:
lbu $2, 0($2)
sra $2, $2, 3
sltiu $1, $2, 15
bne $2, $1, TAG731
TAG731:
mfhi $4
bgez $4, TAG732
mfhi $2
sh $4, 0($2)
TAG732:
lb $4, 0($2)
mflo $2
mfhi $2
xor $1, $2, $2
TAG733:
sll $3, $1, 14
mflo $2
andi $4, $1, 9
mtlo $4
TAG734:
lui $4, 10
slti $4, $4, 1
srlv $3, $4, $4
multu $4, $3
TAG735:
slt $2, $3, $3
beq $2, $3, TAG736
lui $1, 9
div $2, $3
TAG736:
lui $4, 9
sltiu $3, $1, 8
mtlo $3
bgez $4, TAG737
TAG737:
sllv $3, $3, $3
addi $1, $3, 9
sw $3, 0($3)
slti $2, $3, 1
TAG738:
lui $2, 0
sb $2, 0($2)
mflo $2
lh $2, 0($2)
TAG739:
mthi $2
lui $4, 8
bgez $4, TAG740
div $2, $4
TAG740:
sltiu $3, $4, 1
mflo $1
sll $0, $0, 0
mtlo $1
TAG741:
lh $3, 0($1)
mfhi $4
mult $1, $1
lui $3, 12
TAG742:
beq $3, $3, TAG743
sll $0, $0, 0
bltz $3, TAG743
ori $1, $3, 14
TAG743:
mflo $3
mfhi $1
sb $1, 0($1)
lui $4, 11
TAG744:
mthi $4
or $2, $4, $4
mtlo $2
sll $0, $0, 0
TAG745:
sll $0, $0, 0
or $4, $2, $4
addiu $4, $4, 2
mflo $4
TAG746:
sll $0, $0, 0
mflo $1
bgez $4, TAG747
mflo $3
TAG747:
mfhi $4
beq $4, $4, TAG748
sll $0, $0, 0
blez $3, TAG748
TAG748:
div $4, $4
xori $2, $4, 10
bgtz $2, TAG749
srl $4, $4, 15
TAG749:
divu $4, $4
sh $4, 0($4)
slti $3, $4, 14
beq $3, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop