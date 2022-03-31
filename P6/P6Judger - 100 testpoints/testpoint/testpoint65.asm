ori $1, $0, 3
ori $2, $0, 6
ori $3, $0, 11
ori $4, $0, 12
sw $2, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $3, 88($0)
sw $3, 92($0)
sw $4, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $4, 124($0)
mflo $3
bgez $2, TAG1
lui $2, 6
sw $2, 0($3)
TAG1:
mtlo $2
mflo $3
bne $2, $3, TAG2
mflo $4
TAG2:
mtlo $4
mult $4, $4
sltiu $3, $4, 2
bgtz $4, TAG3
TAG3:
lb $2, 0($3)
bgtz $3, TAG4
sb $2, 0($2)
beq $3, $2, TAG4
TAG4:
lui $2, 2
subu $1, $2, $2
beq $1, $2, TAG5
sw $1, 0($1)
TAG5:
add $4, $1, $1
mtlo $1
bne $4, $4, TAG6
multu $4, $1
TAG6:
multu $4, $4
mflo $4
multu $4, $4
srlv $1, $4, $4
TAG7:
sh $1, 0($1)
mult $1, $1
sra $4, $1, 6
mfhi $4
TAG8:
sllv $1, $4, $4
slt $3, $1, $1
mtlo $4
sllv $3, $1, $1
TAG9:
lb $3, 0($3)
bne $3, $3, TAG10
mult $3, $3
bne $3, $3, TAG10
TAG10:
sra $1, $3, 1
bne $3, $1, TAG11
mult $1, $3
sb $3, 0($1)
TAG11:
subu $2, $1, $1
bne $1, $2, TAG12
multu $1, $2
mult $2, $1
TAG12:
bgtz $2, TAG13
mflo $2
sllv $2, $2, $2
andi $4, $2, 13
TAG13:
bne $4, $4, TAG14
addi $2, $4, 13
mult $4, $4
mfhi $1
TAG14:
beq $1, $1, TAG15
slt $1, $1, $1
sra $1, $1, 13
addiu $2, $1, 2
TAG15:
beq $2, $2, TAG16
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
TAG16:
blez $2, TAG17
mflo $4
lui $4, 7
multu $4, $2
TAG17:
bne $4, $4, TAG18
or $4, $4, $4
sra $3, $4, 6
lui $4, 13
TAG18:
bne $4, $4, TAG19
lui $3, 11
addiu $3, $3, 9
mthi $4
TAG19:
bltz $3, TAG20
div $3, $3
lui $1, 10
lui $4, 15
TAG20:
sll $0, $0, 0
bgez $4, TAG21
sltu $4, $4, $4
andi $4, $4, 3
TAG21:
mthi $4
mflo $4
lui $1, 6
lbu $4, 0($4)
TAG22:
andi $2, $4, 5
sb $4, 0($4)
lhu $4, 0($2)
mtlo $4
TAG23:
lh $1, 0($4)
lui $4, 15
blez $4, TAG24
andi $1, $4, 3
TAG24:
slti $4, $1, 14
mflo $4
sh $4, 0($4)
mtlo $1
TAG25:
mthi $4
mtlo $4
mfhi $3
slti $2, $3, 15
TAG26:
blez $2, TAG27
mtlo $2
multu $2, $2
and $1, $2, $2
TAG27:
div $1, $1
blez $1, TAG28
divu $1, $1
divu $1, $1
TAG28:
mult $1, $1
lbu $1, 0($1)
mtlo $1
bltz $1, TAG29
TAG29:
sw $1, 0($1)
lui $2, 12
mthi $1
sll $0, $0, 0
TAG30:
sra $2, $4, 15
mult $2, $2
mflo $1
andi $4, $1, 5
TAG31:
bltz $4, TAG32
sw $4, 0($4)
lh $1, 0($4)
beq $1, $4, TAG32
TAG32:
mflo $3
multu $1, $1
beq $1, $3, TAG33
mthi $1
TAG33:
sh $3, 0($3)
mtlo $3
bne $3, $3, TAG34
lh $4, 0($3)
TAG34:
mfhi $4
sltiu $2, $4, 11
ori $3, $2, 3
lw $2, 0($4)
TAG35:
and $2, $2, $2
lui $1, 4
lui $3, 9
lw $3, 0($2)
TAG36:
mult $3, $3
lw $1, 0($3)
xori $4, $3, 13
mtlo $4
TAG37:
srlv $2, $4, $4
beq $4, $4, TAG38
sb $2, 0($4)
sh $2, 0($4)
TAG38:
mtlo $2
blez $2, TAG39
sra $3, $2, 3
lui $3, 5
TAG39:
mthi $3
lui $1, 15
blez $3, TAG40
mthi $3
TAG40:
sll $0, $0, 0
sllv $3, $1, $1
multu $3, $2
sll $0, $0, 0
TAG41:
lui $1, 4
bne $1, $1, TAG42
sll $0, $0, 0
addu $2, $1, $4
TAG42:
mfhi $3
mfhi $3
mtlo $2
bltz $2, TAG43
TAG43:
mflo $2
blez $2, TAG44
sb $2, 0($3)
lhu $1, 0($3)
TAG44:
mtlo $1
blez $1, TAG45
divu $1, $1
blez $1, TAG45
TAG45:
sll $1, $1, 14
bne $1, $1, TAG46
mflo $2
bgtz $1, TAG46
TAG46:
slt $3, $2, $2
mtlo $3
multu $2, $3
beq $3, $2, TAG47
TAG47:
mult $3, $3
sb $3, 0($3)
mfhi $2
mult $2, $3
TAG48:
beq $2, $2, TAG49
mfhi $2
or $1, $2, $2
mfhi $2
TAG49:
sw $2, 0($2)
bgtz $2, TAG50
and $1, $2, $2
bne $1, $1, TAG50
TAG50:
sll $3, $1, 1
bne $1, $3, TAG51
mthi $3
addiu $4, $1, 4
TAG51:
sh $4, 0($4)
bgez $4, TAG52
sltu $2, $4, $4
beq $4, $2, TAG52
TAG52:
multu $2, $2
bne $2, $2, TAG53
mfhi $3
sub $3, $3, $3
TAG53:
slti $3, $3, 5
addiu $3, $3, 13
mthi $3
mflo $1
TAG54:
bgez $1, TAG55
xori $2, $1, 0
divu $1, $1
divu $1, $2
TAG55:
subu $2, $2, $2
ori $1, $2, 8
blez $1, TAG56
sb $2, 0($1)
TAG56:
bne $1, $1, TAG57
lbu $1, 0($1)
sub $4, $1, $1
slt $3, $1, $4
TAG57:
lui $1, 15
mflo $2
mflo $4
mfhi $4
TAG58:
bne $4, $4, TAG59
mult $4, $4
or $4, $4, $4
sltu $3, $4, $4
TAG59:
beq $3, $3, TAG60
and $3, $3, $3
mtlo $3
bgtz $3, TAG60
TAG60:
lbu $4, 0($3)
sw $4, 0($3)
lb $1, 0($4)
bgtz $1, TAG61
TAG61:
sltiu $2, $1, 5
mtlo $1
bltz $2, TAG62
subu $4, $1, $1
TAG62:
bne $4, $4, TAG63
mtlo $4
sw $4, 0($4)
lhu $2, 0($4)
TAG63:
lhu $4, 0($2)
lui $3, 8
addi $1, $4, 15
sb $2, 0($1)
TAG64:
sb $1, 0($1)
lui $2, 8
mfhi $2
bgez $2, TAG65
TAG65:
lui $3, 6
mfhi $4
sll $0, $0, 0
sltiu $2, $2, 13
TAG66:
mthi $2
sb $2, 0($2)
bne $2, $2, TAG67
lbu $2, 0($2)
TAG67:
sb $2, 0($2)
lui $1, 14
sb $2, 0($2)
subu $3, $2, $1
TAG68:
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
lui $4, 4
TAG69:
xori $3, $4, 5
beq $3, $3, TAG70
lui $2, 6
lui $2, 7
TAG70:
mfhi $3
lhu $1, 0($3)
blez $2, TAG71
sw $2, 0($3)
TAG71:
blez $1, TAG72
lh $4, -256($1)
mfhi $4
mthi $4
TAG72:
lhu $1, 0($4)
sub $2, $1, $1
mfhi $1
bgtz $4, TAG73
TAG73:
mflo $4
lb $4, 0($1)
sltiu $2, $4, 15
lui $2, 13
TAG74:
sll $0, $0, 0
multu $2, $4
lw $4, 0($4)
and $3, $2, $4
TAG75:
sll $4, $3, 5
mult $3, $4
sll $0, $0, 0
mult $4, $4
TAG76:
mtlo $3
lui $1, 5
mthi $3
slt $1, $3, $1
TAG77:
mult $1, $1
mthi $1
lui $4, 2
lbu $2, 0($1)
TAG78:
bgez $2, TAG79
lui $1, 15
div $2, $1
sb $2, 0($1)
TAG79:
addiu $2, $1, 2
divu $2, $2
mthi $2
sll $0, $0, 0
TAG80:
ori $4, $3, 2
mtlo $3
blez $3, TAG81
lui $3, 15
TAG81:
lui $2, 2
and $1, $3, $2
mflo $4
sllv $4, $2, $2
TAG82:
ori $4, $4, 14
blez $4, TAG83
sll $0, $0, 0
bltz $4, TAG83
TAG83:
mthi $4
sll $0, $0, 0
addu $3, $4, $4
mthi $4
TAG84:
mfhi $1
mthi $3
bne $1, $3, TAG85
mthi $1
TAG85:
divu $1, $1
mflo $4
sb $1, 0($4)
sll $0, $0, 0
TAG86:
lui $2, 8
divu $2, $4
mfhi $1
and $4, $4, $1
TAG87:
sll $3, $4, 13
mtlo $4
multu $3, $3
mtlo $4
TAG88:
mtlo $3
andi $1, $3, 14
sb $3, 0($1)
multu $3, $1
TAG89:
mult $1, $1
blez $1, TAG90
mthi $1
bltz $1, TAG90
TAG90:
subu $4, $1, $1
mtlo $4
lui $4, 4
mtlo $4
TAG91:
xori $3, $4, 12
slt $2, $3, $3
blez $3, TAG92
sll $0, $0, 0
TAG92:
sw $1, 0($1)
lh $4, 0($1)
sll $3, $1, 15
lui $4, 15
TAG93:
lui $3, 9
sll $0, $0, 0
lui $3, 6
div $4, $3
TAG94:
sltiu $4, $3, 13
blez $4, TAG95
lui $2, 3
lhu $1, 0($2)
TAG95:
add $3, $1, $1
mult $3, $1
mthi $1
lui $1, 9
TAG96:
sll $0, $0, 0
sra $4, $2, 7
sll $0, $0, 0
div $1, $1
TAG97:
lui $2, 10
mthi $2
bgtz $2, TAG98
div $1, $2
TAG98:
mthi $2
sll $0, $0, 0
lui $2, 15
lui $4, 9
TAG99:
sll $0, $0, 0
sra $2, $4, 0
bgez $4, TAG100
subu $4, $1, $1
TAG100:
sh $4, 0($4)
lui $2, 7
sll $1, $4, 3
lbu $2, 0($4)
TAG101:
beq $2, $2, TAG102
lui $4, 15
mthi $4
bgtz $4, TAG102
TAG102:
subu $1, $4, $4
lui $1, 2
bltz $1, TAG103
mtlo $1
TAG103:
sll $0, $0, 0
andi $4, $3, 1
addi $4, $3, 7
sll $0, $0, 0
TAG104:
mfhi $4
addiu $3, $4, 10
multu $3, $4
bne $4, $3, TAG105
TAG105:
andi $1, $3, 8
srav $2, $1, $3
blez $1, TAG106
mtlo $3
TAG106:
slti $4, $2, 0
beq $2, $2, TAG107
mult $4, $2
sh $4, 0($2)
TAG107:
add $4, $4, $4
mtlo $4
lh $2, 0($4)
mult $4, $4
TAG108:
mthi $2
mflo $3
sb $2, 0($2)
bgez $3, TAG109
TAG109:
lw $3, 0($3)
bne $3, $3, TAG110
addiu $3, $3, 12
sh $3, 0($3)
TAG110:
addu $3, $3, $3
sw $3, 0($3)
mult $3, $3
bgtz $3, TAG111
TAG111:
mfhi $2
blez $2, TAG112
mflo $1
div $2, $1
TAG112:
lui $2, 2
sltiu $1, $2, 7
nor $4, $1, $2
mult $1, $1
TAG113:
mfhi $2
bgtz $2, TAG114
mult $4, $2
mtlo $2
TAG114:
lh $2, 0($2)
mult $2, $2
beq $2, $2, TAG115
lbu $2, 0($2)
TAG115:
mult $2, $2
mfhi $4
multu $2, $4
lhu $4, 0($4)
TAG116:
mtlo $4
bne $4, $4, TAG117
sh $4, 0($4)
lh $4, 0($4)
TAG117:
lui $2, 14
beq $2, $4, TAG118
mthi $4
lb $2, 0($4)
TAG118:
lhu $1, 0($2)
mult $2, $1
lui $4, 5
bne $4, $2, TAG119
TAG119:
mfhi $3
blez $4, TAG120
sll $0, $0, 0
bgtz $3, TAG120
TAG120:
mtlo $1
lui $4, 14
bgtz $1, TAG121
sll $0, $0, 0
TAG121:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG122
mthi $4
TAG122:
lui $2, 6
beq $2, $4, TAG123
multu $4, $4
mtlo $4
TAG123:
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG124
mult $2, $2
TAG124:
srlv $1, $2, $2
mflo $2
nor $3, $1, $1
sra $4, $1, 12
TAG125:
mthi $4
mthi $4
mthi $4
bgez $4, TAG126
TAG126:
lui $4, 1
beq $4, $4, TAG127
divu $4, $4
sb $4, 0($4)
TAG127:
bltz $4, TAG128
div $4, $4
mflo $2
slti $2, $2, 4
TAG128:
sb $2, 0($2)
addu $1, $2, $2
sb $2, 0($1)
addiu $4, $1, 0
TAG129:
lbu $3, 0($4)
sb $3, 0($4)
bgez $3, TAG130
multu $4, $3
TAG130:
mflo $4
addu $2, $4, $4
bltz $3, TAG131
mtlo $3
TAG131:
lui $1, 7
div $1, $1
andi $1, $2, 2
lw $4, 0($1)
TAG132:
mthi $4
sll $0, $0, 0
bgtz $4, TAG133
sb $3, 0($3)
TAG133:
lbu $4, 0($3)
bne $4, $4, TAG134
lb $4, 0($4)
sb $4, 0($4)
TAG134:
addiu $4, $4, 11
slt $4, $4, $4
bgez $4, TAG135
sltu $1, $4, $4
TAG135:
lui $4, 7
nor $2, $4, $4
mfhi $4
blez $4, TAG136
TAG136:
sra $4, $4, 6
sb $4, -1028($4)
lw $3, -1028($4)
or $1, $3, $4
TAG137:
xori $4, $1, 3
sll $0, $0, 0
mult $4, $1
srlv $4, $4, $4
TAG138:
mthi $4
bgez $4, TAG139
mthi $4
sb $4, 0($4)
TAG139:
sw $4, -522($4)
mflo $3
mthi $4
sll $0, $0, 0
TAG140:
divu $4, $4
lui $3, 2
mthi $3
addu $1, $4, $4
TAG141:
mfhi $2
bne $1, $1, TAG142
lbu $1, -1044($1)
mflo $4
TAG142:
lui $3, 6
andi $3, $4, 0
mfhi $4
addiu $1, $4, 3
TAG143:
bne $1, $1, TAG144
sll $0, $0, 0
bne $1, $1, TAG144
and $1, $1, $1
TAG144:
bgtz $1, TAG145
div $1, $1
mfhi $3
xori $1, $1, 6
TAG145:
mthi $1
mthi $1
mthi $1
sllv $4, $1, $1
TAG146:
mthi $4
bgez $4, TAG147
sra $4, $4, 13
lhu $1, 0($4)
TAG147:
mflo $4
blez $4, TAG148
lui $1, 8
addu $3, $4, $4
TAG148:
mfhi $1
lui $2, 11
blez $3, TAG149
mthi $1
TAG149:
sll $0, $0, 0
mthi $2
lui $3, 13
xor $2, $2, $3
TAG150:
beq $2, $2, TAG151
sll $2, $2, 10
srl $2, $2, 6
addiu $4, $2, 10
TAG151:
srlv $1, $4, $4
addiu $3, $4, 10
slti $1, $4, 13
sb $1, 0($1)
TAG152:
blez $1, TAG153
mtlo $1
sb $1, 0($1)
srl $4, $1, 7
TAG153:
sltu $3, $4, $4
lui $4, 0
lb $4, 0($4)
sb $4, 0($3)
TAG154:
lbu $2, 0($4)
blez $4, TAG155
sb $4, 0($2)
sb $2, 0($4)
TAG155:
bltz $2, TAG156
sh $2, 0($2)
lui $1, 4
mfhi $3
TAG156:
mflo $4
mflo $4
bgez $3, TAG157
srav $4, $4, $3
TAG157:
bne $4, $4, TAG158
lui $1, 8
div $1, $4
mflo $1
TAG158:
sll $0, $0, 0
mthi $1
sllv $3, $1, $1
sll $0, $0, 0
TAG159:
mflo $3
sll $0, $0, 0
mtlo $3
mtlo $3
TAG160:
sll $0, $0, 0
beq $3, $3, TAG161
sll $0, $0, 0
multu $3, $3
TAG161:
mtlo $3
mtlo $3
bltz $3, TAG162
ori $3, $3, 6
TAG162:
div $3, $3
mthi $3
beq $3, $3, TAG163
sltiu $1, $3, 7
TAG163:
blez $1, TAG164
sw $1, 0($1)
bgez $1, TAG164
mfhi $1
TAG164:
lui $1, 8
sll $0, $0, 0
lui $2, 9
mflo $1
TAG165:
mtlo $1
mthi $1
mfhi $1
lbu $3, 0($1)
TAG166:
lh $4, 0($3)
mtlo $3
mflo $3
bne $3, $3, TAG167
TAG167:
xori $2, $3, 11
mult $3, $3
sb $3, 0($2)
lui $3, 6
TAG168:
andi $1, $3, 0
mfhi $4
sltu $1, $3, $1
addiu $2, $1, 0
TAG169:
multu $2, $2
lui $1, 14
sll $0, $0, 0
lui $2, 1
TAG170:
mflo $2
lw $1, 0($2)
lui $1, 12
bgez $2, TAG171
TAG171:
ori $2, $1, 3
bgez $2, TAG172
mtlo $1
sw $2, 0($2)
TAG172:
addiu $3, $2, 1
addu $3, $2, $2
mfhi $3
xori $2, $3, 6
TAG173:
beq $2, $2, TAG174
div $2, $2
blez $2, TAG174
lui $2, 3
TAG174:
bltz $2, TAG175
sh $2, 0($2)
mthi $2
lh $2, 0($2)
TAG175:
slt $2, $2, $2
mfhi $3
sh $3, 0($3)
addi $4, $2, 4
TAG176:
mthi $4
bne $4, $4, TAG177
lui $1, 11
bgtz $1, TAG177
TAG177:
andi $3, $1, 11
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG178
TAG178:
lui $3, 6
bgez $4, TAG179
sh $3, 0($4)
blez $3, TAG179
TAG179:
mult $3, $3
lui $4, 14
srav $1, $4, $4
lui $4, 8
TAG180:
sll $0, $0, 0
blez $4, TAG181
div $4, $4
sll $0, $0, 0
TAG181:
lui $4, 6
mtlo $4
mflo $1
sll $0, $0, 0
TAG182:
sll $0, $0, 0
mthi $1
beq $1, $1, TAG183
sltu $4, $1, $1
TAG183:
mtlo $4
mthi $4
lb $1, 0($4)
mfhi $2
TAG184:
bgez $2, TAG185
addu $3, $2, $2
beq $3, $3, TAG185
mtlo $3
TAG185:
sh $3, 0($3)
lh $2, 0($3)
add $2, $2, $2
bne $3, $2, TAG186
TAG186:
mflo $1
lhu $3, 0($1)
lui $1, 12
lui $1, 4
TAG187:
beq $1, $1, TAG188
sll $0, $0, 0
mfhi $1
sub $2, $1, $4
TAG188:
add $1, $2, $2
bgez $2, TAG189
subu $4, $2, $2
mflo $2
TAG189:
sh $2, 0($2)
mflo $4
sb $4, 0($4)
lui $4, 6
TAG190:
bne $4, $4, TAG191
addiu $2, $4, 6
lui $3, 10
sll $0, $0, 0
TAG191:
divu $3, $3
mflo $4
lui $1, 11
sll $0, $0, 0
TAG192:
sll $0, $0, 0
srl $2, $1, 5
beq $2, $2, TAG193
lui $3, 11
TAG193:
sll $0, $0, 0
mult $3, $3
multu $3, $3
lui $3, 5
TAG194:
bgtz $3, TAG195
lui $1, 0
beq $3, $3, TAG195
sw $3, 0($3)
TAG195:
addiu $4, $1, 1
mtlo $4
lw $3, 0($1)
mthi $4
TAG196:
bne $3, $3, TAG197
lb $3, 0($3)
multu $3, $3
multu $3, $3
TAG197:
multu $3, $3
mthi $3
bgtz $3, TAG198
srav $1, $3, $3
TAG198:
beq $1, $1, TAG199
lw $1, 0($1)
beq $1, $1, TAG199
sh $1, 0($1)
TAG199:
mthi $1
beq $1, $1, TAG200
srl $2, $1, 3
bne $2, $2, TAG200
TAG200:
lhu $4, 0($2)
sw $4, 0($2)
lhu $1, 0($2)
mfhi $3
TAG201:
mtlo $3
mflo $3
bltz $3, TAG202
lw $4, 0($3)
TAG202:
mfhi $2
beq $4, $2, TAG203
lui $3, 5
xori $2, $4, 2
TAG203:
bne $2, $2, TAG204
lb $4, 0($2)
bne $2, $4, TAG204
and $1, $4, $4
TAG204:
sh $1, 0($1)
mthi $1
lb $1, 0($1)
mflo $3
TAG205:
sh $3, 0($3)
sb $3, 0($3)
mflo $3
lh $2, 0($3)
TAG206:
multu $2, $2
bne $2, $2, TAG207
lbu $4, 0($2)
sh $4, 0($4)
TAG207:
mtlo $4
sltiu $1, $4, 6
mfhi $2
bltz $1, TAG208
TAG208:
mtlo $2
multu $2, $2
sb $2, 0($2)
blez $2, TAG209
TAG209:
lhu $3, 0($2)
addi $1, $3, 3
lbu $1, 0($1)
mthi $1
TAG210:
lw $3, 0($1)
lb $4, 0($3)
sh $3, 0($1)
multu $1, $4
TAG211:
srav $2, $4, $4
bgez $2, TAG212
sb $4, 0($2)
bne $2, $2, TAG212
TAG212:
lh $3, 0($2)
lh $4, 0($2)
lui $4, 14
srl $4, $4, 2
TAG213:
mflo $4
beq $4, $4, TAG214
mfhi $3
mtlo $3
TAG214:
srl $3, $3, 8
lw $3, 0($3)
sll $4, $3, 14
mult $3, $3
TAG215:
multu $4, $4
mult $4, $4
mflo $3
mfhi $3
TAG216:
bgez $3, TAG217
addiu $3, $3, 15
srl $4, $3, 12
and $2, $3, $3
TAG217:
mult $2, $2
xori $4, $2, 5
sb $4, 0($2)
lh $2, 0($2)
TAG218:
mtlo $2
mtlo $2
addu $4, $2, $2
div $4, $2
TAG219:
bne $4, $4, TAG220
sb $4, 0($4)
lui $2, 1
sh $4, 0($4)
TAG220:
sll $0, $0, 0
xori $3, $2, 3
nor $2, $2, $3
mthi $3
TAG221:
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG222:
bgez $1, TAG223
sllv $1, $1, $1
sb $1, 0($1)
sll $1, $1, 15
TAG223:
lui $1, 11
sll $4, $1, 11
mflo $2
srlv $1, $1, $1
TAG224:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
blez $2, TAG225
TAG225:
mthi $2
mflo $2
ori $2, $2, 3
bne $2, $2, TAG226
TAG226:
sltiu $2, $2, 8
bgez $2, TAG227
sb $2, 0($2)
lw $1, 0($2)
TAG227:
mult $1, $1
mthi $1
addiu $1, $1, 10
sltu $1, $1, $1
TAG228:
lui $2, 1
sll $0, $0, 0
lh $4, 0($1)
sll $0, $0, 0
TAG229:
mult $4, $4
slti $1, $4, 9
nor $3, $4, $4
lui $2, 4
TAG230:
multu $2, $2
sll $0, $0, 0
div $2, $3
beq $2, $3, TAG231
TAG231:
mthi $3
mflo $1
bgez $3, TAG232
divu $1, $3
TAG232:
lui $3, 5
lb $4, 1000($1)
mflo $2
addiu $1, $1, 7
TAG233:
lui $4, 6
lui $3, 1
div $3, $1
srav $4, $1, $3
TAG234:
sll $3, $4, 15
bgtz $4, TAG235
sll $0, $0, 0
divu $4, $3
TAG235:
lui $3, 15
beq $3, $3, TAG236
lui $3, 7
bltz $3, TAG236
TAG236:
lui $4, 4
lui $2, 4
lui $1, 7
multu $1, $3
TAG237:
beq $1, $1, TAG238
lui $3, 11
bne $1, $3, TAG238
lw $4, 0($3)
TAG238:
mfhi $3
sll $0, $0, 0
bgez $3, TAG239
mtlo $3
TAG239:
bltz $3, TAG240
mthi $3
mthi $3
beq $3, $3, TAG240
TAG240:
lbu $2, 0($3)
sll $3, $2, 8
lhu $4, 0($2)
mthi $3
TAG241:
sll $0, $0, 0
bne $4, $4, TAG242
multu $2, $2
bgtz $2, TAG242
TAG242:
or $2, $2, $2
sw $2, 0($2)
lbu $2, 0($2)
addiu $2, $2, 0
TAG243:
beq $2, $2, TAG244
sw $2, 0($2)
sltiu $1, $2, 5
bgtz $2, TAG244
TAG244:
sll $0, $0, 0
and $3, $1, $1
mflo $4
mfhi $4
TAG245:
sw $4, 0($4)
mtlo $4
mtlo $4
mthi $4
TAG246:
mthi $4
sw $4, 0($4)
srl $2, $4, 1
sltiu $2, $4, 7
TAG247:
mfhi $1
multu $2, $1
and $3, $2, $1
sllv $4, $2, $1
TAG248:
bgez $4, TAG249
lbu $3, 0($4)
sra $3, $3, 3
bne $3, $3, TAG249
TAG249:
lui $3, 13
subu $3, $3, $3
multu $3, $3
mfhi $4
TAG250:
srlv $3, $4, $4
multu $4, $4
mfhi $1
multu $3, $4
TAG251:
lui $3, 12
mthi $3
multu $3, $3
mflo $2
TAG252:
sh $2, 0($2)
mthi $2
multu $2, $2
lui $2, 15
TAG253:
or $1, $2, $2
sll $0, $0, 0
and $3, $1, $1
mflo $1
TAG254:
mthi $1
bgez $1, TAG255
sb $1, 0($1)
lui $3, 13
TAG255:
beq $3, $3, TAG256
lui $1, 7
sll $3, $3, 14
sw $1, 0($3)
TAG256:
mult $3, $3
sll $0, $0, 0
slti $2, $4, 6
lui $3, 11
TAG257:
andi $4, $3, 9
div $4, $3
sll $1, $4, 7
mfhi $1
TAG258:
mult $1, $1
lui $4, 4
lb $4, 0($1)
sb $1, 0($1)
TAG259:
mtlo $4
subu $1, $4, $4
xori $1, $4, 1
sb $1, 0($1)
TAG260:
multu $1, $1
slti $3, $1, 5
sb $1, 0($3)
lui $1, 2
TAG261:
bgez $1, TAG262
sll $0, $0, 0
sltiu $2, $1, 14
lw $2, 0($1)
TAG262:
sb $2, 0($2)
sb $2, 0($2)
mtlo $2
div $2, $2
TAG263:
lui $3, 2
mfhi $3
mtlo $3
multu $2, $3
TAG264:
bne $3, $3, TAG265
sh $3, 0($3)
multu $3, $3
xori $2, $3, 11
TAG265:
sllv $1, $2, $2
addiu $3, $2, 11
divu $1, $2
lhu $2, 0($3)
TAG266:
mthi $2
lb $4, 0($2)
lhu $4, 0($2)
lw $4, 0($4)
TAG267:
ori $1, $4, 0
lhu $4, 0($4)
xori $1, $4, 8
blez $1, TAG268
TAG268:
sltu $2, $1, $1
mfhi $1
lbu $3, 0($1)
beq $1, $1, TAG269
TAG269:
mflo $3
mthi $3
slt $3, $3, $3
multu $3, $3
TAG270:
lh $4, 0($3)
addi $2, $3, 1
mfhi $3
beq $3, $3, TAG271
TAG271:
sw $3, 0($3)
bne $3, $3, TAG272
mflo $3
sb $3, 0($3)
TAG272:
lhu $2, 0($3)
lbu $3, 0($2)
multu $2, $3
multu $3, $3
TAG273:
mflo $3
beq $3, $3, TAG274
slt $1, $3, $3
addu $2, $3, $3
TAG274:
mtlo $2
lui $1, 10
bltz $2, TAG275
sll $0, $0, 0
TAG275:
beq $4, $4, TAG276
nor $2, $4, $4
bltz $4, TAG276
mult $4, $2
TAG276:
sb $2, 1($2)
mflo $4
sb $4, 0($4)
xori $3, $4, 5
TAG277:
mthi $3
slt $1, $3, $3
beq $3, $3, TAG278
lui $2, 5
TAG278:
sll $0, $0, 0
mflo $3
xor $4, $2, $2
mfhi $1
TAG279:
lui $3, 12
srlv $1, $1, $3
or $3, $3, $3
lui $1, 14
TAG280:
addiu $4, $1, 5
subu $2, $1, $1
mfhi $2
or $4, $2, $2
TAG281:
mfhi $1
mflo $2
divu $2, $4
sb $2, 0($4)
TAG282:
mult $2, $2
lui $1, 15
srav $3, $2, $2
mtlo $3
TAG283:
lb $4, 0($3)
bltz $4, TAG284
lui $2, 15
lui $1, 12
TAG284:
beq $1, $1, TAG285
div $1, $1
lb $3, 0($1)
lb $3, 0($3)
TAG285:
lw $3, 0($3)
lui $3, 2
addiu $1, $3, 7
addu $1, $3, $3
TAG286:
lui $4, 8
mtlo $1
sll $0, $0, 0
lui $4, 3
TAG287:
xori $2, $4, 2
lui $3, 5
mthi $2
mtlo $3
TAG288:
sll $0, $0, 0
mfhi $4
bgtz $3, TAG289
lui $2, 0
TAG289:
subu $4, $2, $2
sub $4, $2, $4
lui $4, 5
bne $4, $4, TAG290
TAG290:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
lbu $2, 0($2)
TAG291:
mflo $1
mtlo $1
mthi $1
sltu $2, $1, $2
TAG292:
bgtz $2, TAG293
addiu $2, $2, 8
sllv $4, $2, $2
bltz $4, TAG293
TAG293:
sw $4, -2048($4)
lhu $3, -2048($4)
mflo $1
mfhi $4
TAG294:
sll $0, $0, 0
div $4, $4
bne $4, $4, TAG295
lui $2, 12
TAG295:
mthi $2
sll $2, $2, 10
sll $0, $0, 0
mflo $3
TAG296:
bne $3, $3, TAG297
mtlo $3
addu $1, $3, $3
mtlo $1
TAG297:
mult $1, $1
mflo $3
beq $1, $1, TAG298
div $3, $1
TAG298:
div $3, $3
lui $2, 11
lui $1, 11
lui $1, 4
TAG299:
mult $1, $1
mflo $3
blez $1, TAG300
lui $4, 0
TAG300:
bne $4, $4, TAG301
srl $1, $4, 15
srl $4, $1, 12
lh $4, 0($4)
TAG301:
mthi $4
addiu $4, $4, 8
bne $4, $4, TAG302
subu $4, $4, $4
TAG302:
blez $4, TAG303
mult $4, $4
srlv $1, $4, $4
lh $3, 0($4)
TAG303:
bne $3, $3, TAG304
mult $3, $3
lui $3, 2
lui $1, 0
TAG304:
mthi $1
mflo $3
multu $3, $3
bne $3, $3, TAG305
TAG305:
srav $4, $3, $3
addi $2, $3, 13
mflo $2
mfhi $3
TAG306:
bne $3, $3, TAG307
lbu $1, 0($3)
lui $4, 11
bne $3, $4, TAG307
TAG307:
sll $0, $0, 0
mthi $4
div $4, $4
mthi $4
TAG308:
bne $4, $4, TAG309
mtlo $4
mfhi $2
sll $0, $0, 0
TAG309:
divu $2, $2
mtlo $2
mult $2, $2
lui $4, 3
TAG310:
lui $3, 13
lui $4, 9
divu $4, $3
mult $4, $3
TAG311:
srav $1, $4, $4
sll $0, $0, 0
mflo $2
bgez $4, TAG312
TAG312:
srl $2, $2, 13
mult $2, $2
sb $2, 0($2)
mflo $1
TAG313:
ori $1, $1, 14
mthi $1
xor $1, $1, $1
bne $1, $1, TAG314
TAG314:
mfhi $4
mtlo $1
sh $4, 0($4)
mflo $3
TAG315:
bne $3, $3, TAG316
lh $1, 0($3)
lw $4, 0($3)
mult $3, $3
TAG316:
bne $4, $4, TAG317
mult $4, $4
sltu $1, $4, $4
bgtz $4, TAG317
TAG317:
mtlo $1
lb $4, 0($1)
beq $4, $4, TAG318
lui $1, 14
TAG318:
mflo $3
lhu $1, 0($3)
lui $1, 6
mtlo $1
TAG319:
addiu $4, $1, 5
divu $1, $1
bne $1, $4, TAG320
srav $1, $4, $4
TAG320:
mfhi $4
mthi $1
xori $2, $4, 11
sb $4, -12288($1)
TAG321:
bne $2, $2, TAG322
divu $2, $2
addiu $3, $2, 6
bne $3, $3, TAG322
TAG322:
sll $4, $3, 0
bltz $3, TAG323
divu $3, $4
srlv $1, $3, $4
TAG323:
mtlo $1
mfhi $3
mult $3, $1
multu $3, $1
TAG324:
lui $2, 10
sw $3, 0($3)
sltu $4, $3, $3
blez $4, TAG325
TAG325:
multu $4, $4
mtlo $4
sltu $2, $4, $4
lw $2, 0($2)
TAG326:
mflo $1
lui $2, 6
sll $0, $0, 0
mfhi $1
TAG327:
mfhi $4
bltz $1, TAG328
multu $4, $4
add $3, $4, $4
TAG328:
lui $1, 12
lui $3, 10
srl $1, $3, 14
mflo $1
TAG329:
sb $1, 0($1)
srl $3, $1, 12
nor $2, $3, $3
sw $3, 1($2)
TAG330:
mult $2, $2
div $2, $2
sb $2, 1($2)
bltz $2, TAG331
TAG331:
subu $4, $2, $2
bgez $2, TAG332
multu $4, $2
sllv $4, $4, $4
TAG332:
beq $4, $4, TAG333
mthi $4
sltu $2, $4, $4
mflo $3
TAG333:
mult $3, $3
mthi $3
sw $3, 0($3)
lui $1, 13
TAG334:
sll $0, $0, 0
mult $1, $1
addu $1, $1, $1
sll $0, $0, 0
TAG335:
mthi $2
ori $1, $2, 4
mflo $4
sw $1, 1($1)
TAG336:
lui $2, 12
sll $0, $0, 0
lui $4, 11
lui $1, 7
TAG337:
mfhi $1
subu $4, $1, $1
blez $1, TAG338
divu $1, $1
TAG338:
bne $4, $4, TAG339
and $3, $4, $4
sltiu $4, $4, 9
sh $3, 0($3)
TAG339:
addiu $1, $4, 12
bgez $1, TAG340
subu $1, $1, $1
beq $1, $4, TAG340
TAG340:
lb $1, 0($1)
multu $1, $1
mfhi $2
multu $1, $2
TAG341:
mtlo $2
mflo $4
mfhi $3
nor $2, $2, $2
TAG342:
lui $3, 15
slti $2, $2, 12
beq $2, $2, TAG343
lui $1, 14
TAG343:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 15
sll $2, $1, 4
TAG344:
mthi $2
sll $0, $0, 0
lui $3, 11
blez $2, TAG345
TAG345:
addu $3, $3, $3
mtlo $3
sll $2, $3, 1
sll $0, $0, 0
TAG346:
bne $2, $2, TAG347
mtlo $2
mtlo $2
mthi $2
TAG347:
lui $1, 15
subu $4, $1, $2
srl $2, $1, 11
mthi $1
TAG348:
sll $0, $0, 0
bgez $2, TAG349
lw $2, -480($2)
srav $3, $2, $2
TAG349:
div $3, $3
lui $4, 1
sra $1, $4, 2
beq $3, $1, TAG350
TAG350:
lui $1, 7
srav $4, $1, $1
lui $2, 5
bltz $1, TAG351
TAG351:
mtlo $2
mthi $2
xori $1, $2, 12
sll $0, $0, 0
TAG352:
sll $0, $0, 0
mthi $4
xor $2, $4, $4
andi $4, $4, 14
TAG353:
lui $3, 1
srlv $2, $3, $4
lui $1, 13
sll $0, $0, 0
TAG354:
multu $1, $1
bne $1, $1, TAG355
multu $1, $1
sll $0, $0, 0
TAG355:
subu $3, $2, $2
subu $4, $2, $3
and $4, $4, $4
sra $3, $4, 6
TAG356:
lui $1, 9
bgez $3, TAG357
mtlo $3
slti $3, $3, 14
TAG357:
or $1, $3, $3
lhu $2, -1024($1)
blez $2, TAG358
lhu $4, 0($2)
TAG358:
bne $4, $4, TAG359
lui $4, 9
lui $4, 12
sll $0, $0, 0
TAG359:
lui $1, 2
divu $1, $1
sll $3, $1, 7
beq $1, $1, TAG360
TAG360:
mult $3, $3
sll $0, $0, 0
bgtz $3, TAG361
mfhi $3
TAG361:
sll $0, $0, 0
divu $3, $3
beq $3, $3, TAG362
ori $2, $3, 7
TAG362:
sll $0, $0, 0
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
TAG363:
beq $2, $2, TAG364
sll $0, $0, 0
or $3, $2, $2
srl $3, $2, 6
TAG364:
mtlo $3
sll $0, $0, 0
div $3, $3
andi $3, $3, 0
TAG365:
sll $2, $3, 11
bne $3, $2, TAG366
sb $3, 0($2)
sb $3, 0($3)
TAG366:
xori $2, $2, 8
lbu $4, 0($2)
bgtz $2, TAG367
ori $3, $2, 5
TAG367:
addiu $2, $3, 7
mtlo $3
bne $2, $3, TAG368
sw $3, 0($2)
TAG368:
mflo $4
bgtz $4, TAG369
mtlo $2
mflo $2
TAG369:
addiu $2, $2, 13
sltu $2, $2, $2
lui $1, 13
blez $2, TAG370
TAG370:
sll $0, $0, 0
addiu $1, $1, 10
subu $3, $1, $1
sw $1, 0($3)
TAG371:
lui $4, 13
sll $0, $0, 0
xori $2, $3, 2
ori $4, $2, 9
TAG372:
sltiu $3, $4, 9
lui $3, 14
lui $1, 7
lui $4, 14
TAG373:
multu $4, $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG374:
lui $3, 13
sll $0, $0, 0
lui $4, 8
div $4, $4
TAG375:
sll $0, $0, 0
lui $1, 14
sll $0, $0, 0
blez $1, TAG376
TAG376:
addiu $3, $1, 0
sll $0, $0, 0
lui $3, 2
blez $3, TAG377
TAG377:
lui $1, 12
multu $1, $1
sll $0, $0, 0
srl $1, $1, 1
TAG378:
lui $2, 13
addu $4, $1, $2
mfhi $1
blez $4, TAG379
TAG379:
slti $3, $1, 8
mfhi $4
multu $1, $3
sb $3, -144($1)
TAG380:
andi $4, $4, 14
mflo $4
mtlo $4
lui $1, 5
TAG381:
bgtz $1, TAG382
mtlo $1
sw $1, 0($1)
lw $2, 0($1)
TAG382:
mtlo $2
bne $2, $2, TAG383
srav $3, $2, $2
divu $3, $2
TAG383:
sll $0, $0, 0
beq $1, $3, TAG384
addiu $2, $1, 10
bltz $1, TAG384
TAG384:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG385:
lui $2, 11
srlv $3, $2, $2
beq $2, $2, TAG386
addiu $1, $2, 6
TAG386:
mtlo $1
divu $1, $1
lui $4, 11
bgez $1, TAG387
TAG387:
sll $0, $0, 0
divu $2, $4
subu $4, $4, $2
sltiu $1, $4, 2
TAG388:
lui $4, 6
bltz $4, TAG389
mflo $3
sb $4, 0($1)
TAG389:
beq $3, $3, TAG390
sll $4, $3, 0
sh $4, 0($3)
srl $1, $3, 15
TAG390:
lui $2, 3
lui $4, 3
mfhi $1
bne $1, $1, TAG391
TAG391:
mult $1, $1
mflo $1
mtlo $1
multu $1, $1
TAG392:
bne $1, $1, TAG393
sb $1, 0($1)
sh $1, 0($1)
sb $1, 0($1)
TAG393:
mflo $2
mult $2, $1
lw $1, 0($2)
sllv $2, $1, $1
TAG394:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG395:
nor $2, $1, $1
sll $0, $0, 0
lui $2, 15
subu $1, $2, $2
TAG396:
sltu $4, $1, $1
mflo $3
mthi $4
or $1, $1, $1
TAG397:
lb $4, 0($1)
bne $1, $1, TAG398
ori $1, $1, 15
lui $1, 2
TAG398:
mtlo $1
sll $0, $0, 0
xori $2, $1, 0
multu $1, $1
TAG399:
div $2, $2
addu $2, $2, $2
lui $2, 3
bgtz $2, TAG400
TAG400:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
beq $2, $2, TAG401
TAG401:
sll $0, $0, 0
lui $4, 1
mflo $3
beq $4, $2, TAG402
TAG402:
or $4, $3, $3
sh $3, 0($3)
mthi $4
addiu $3, $4, 14
TAG403:
sh $3, 0($3)
lhu $1, 0($3)
lb $3, 0($3)
mflo $2
TAG404:
lw $4, 0($2)
sltiu $3, $2, 4
bltz $3, TAG405
mult $3, $2
TAG405:
beq $3, $3, TAG406
lb $3, 0($3)
mthi $3
lui $3, 5
TAG406:
slti $4, $3, 13
mult $4, $4
mult $4, $3
lw $3, 0($3)
TAG407:
bltz $3, TAG408
mthi $3
sra $2, $3, 12
divu $3, $3
TAG408:
bne $2, $2, TAG409
mtlo $2
mtlo $2
sltiu $4, $2, 11
TAG409:
xor $2, $4, $4
lb $4, 0($4)
mfhi $4
bltz $4, TAG410
TAG410:
lbu $4, 0($4)
or $1, $4, $4
mtlo $4
lui $4, 11
TAG411:
sll $0, $0, 0
mflo $1
lui $2, 14
mult $4, $1
TAG412:
sll $0, $0, 0
lui $2, 5
sll $0, $0, 0
lui $2, 4
TAG413:
sll $0, $0, 0
bltz $1, TAG414
lui $4, 7
lui $3, 8
TAG414:
sll $0, $0, 0
mtlo $3
lui $1, 4
srlv $3, $1, $3
TAG415:
bgtz $3, TAG416
sll $0, $0, 0
divu $3, $3
sh $3, 0($3)
TAG416:
bne $3, $3, TAG417
mult $3, $3
and $3, $3, $3
sll $0, $0, 0
TAG417:
slti $1, $4, 1
multu $1, $1
lui $1, 8
mthi $1
TAG418:
lui $1, 13
lui $3, 6
bgtz $1, TAG419
lui $4, 1
TAG419:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
sltu $3, $4, $4
TAG420:
blez $3, TAG421
sltu $2, $3, $3
lhu $1, 0($3)
lb $1, 0($1)
TAG421:
mtlo $1
sll $0, $0, 0
bgez $3, TAG422
sll $2, $1, 1
TAG422:
sltu $3, $2, $2
lui $1, 0
bgez $2, TAG423
sllv $3, $1, $1
TAG423:
lui $3, 10
div $3, $3
mtlo $3
mtlo $3
TAG424:
lui $1, 3
mult $3, $3
bltz $3, TAG425
subu $4, $1, $1
TAG425:
mflo $4
lui $4, 7
beq $4, $4, TAG426
mthi $4
TAG426:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
nor $1, $4, $1
TAG427:
bgez $1, TAG428
srlv $4, $1, $1
mthi $1
div $1, $4
TAG428:
xor $4, $4, $4
lb $2, 0($4)
mfhi $4
sb $4, 0($4)
TAG429:
mfhi $2
mflo $2
sltu $2, $2, $2
sh $4, 0($2)
TAG430:
lh $3, 0($2)
mflo $2
nor $4, $2, $3
sll $0, $0, 0
TAG431:
bgtz $4, TAG432
mthi $4
bgtz $4, TAG432
addiu $2, $4, 14
TAG432:
mflo $1
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG433:
divu $1, $1
lui $2, 13
lui $4, 7
addu $1, $2, $4
TAG434:
mtlo $1
nor $4, $1, $1
lui $1, 6
bgez $4, TAG435
TAG435:
sll $0, $0, 0
sll $0, $0, 0
slt $1, $2, $2
sw $1, 0($1)
TAG436:
mthi $1
mult $1, $1
mtlo $1
multu $1, $1
TAG437:
bgez $1, TAG438
sw $1, 0($1)
lhu $1, 0($1)
mflo $2
TAG438:
or $1, $2, $2
divu $1, $1
sll $0, $0, 0
beq $2, $1, TAG439
TAG439:
sllv $4, $2, $2
srlv $3, $2, $2
lui $2, 9
sll $0, $0, 0
TAG440:
bne $2, $2, TAG441
sll $0, $0, 0
srlv $2, $2, $2
srav $2, $2, $2
TAG441:
sll $0, $0, 0
lui $2, 15
lui $4, 12
sltu $4, $3, $3
TAG442:
slti $4, $4, 10
mfhi $2
bgez $4, TAG443
lb $3, 0($4)
TAG443:
multu $3, $3
sb $3, 0($3)
bne $3, $3, TAG444
sra $4, $3, 11
TAG444:
srav $4, $4, $4
sra $4, $4, 4
sll $4, $4, 5
sw $4, 0($4)
TAG445:
bne $4, $4, TAG446
multu $4, $4
blez $4, TAG446
xor $2, $4, $4
TAG446:
sw $2, 0($2)
blez $2, TAG447
lui $3, 2
divu $3, $3
TAG447:
lui $2, 2
sll $0, $0, 0
subu $2, $3, $3
divu $3, $3
TAG448:
beq $2, $2, TAG449
and $1, $2, $2
beq $2, $1, TAG449
lhu $1, 0($1)
TAG449:
beq $1, $1, TAG450
mflo $4
lui $4, 13
beq $4, $1, TAG450
TAG450:
divu $4, $4
sb $4, 0($4)
mflo $1
srl $2, $4, 0
TAG451:
sb $2, 0($2)
bgtz $2, TAG452
lb $3, 0($2)
bgez $2, TAG452
TAG452:
lui $1, 3
beq $3, $3, TAG453
mtlo $3
mtlo $3
TAG453:
mflo $1
addu $1, $1, $1
lui $2, 14
bne $1, $1, TAG454
TAG454:
sll $0, $0, 0
mfhi $1
sltiu $3, $1, 12
lbu $2, 0($3)
TAG455:
andi $2, $2, 11
divu $2, $2
lbu $1, 0($2)
lb $3, 0($1)
TAG456:
sb $3, 0($3)
mfhi $4
or $2, $3, $4
mtlo $4
TAG457:
mtlo $2
sb $2, 0($2)
sb $2, 0($2)
lui $2, 9
TAG458:
lui $4, 2
or $2, $4, $2
addu $1, $2, $2
mflo $3
TAG459:
mthi $3
lb $4, 0($3)
bne $4, $3, TAG460
lui $1, 12
TAG460:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG461
mthi $1
TAG461:
mult $1, $1
sll $0, $0, 0
blez $1, TAG462
mfhi $4
TAG462:
mult $4, $4
sh $4, -144($4)
mthi $4
sh $4, -144($4)
TAG463:
sll $0, $0, 0
sw $4, -144($4)
sb $4, -144($4)
addiu $2, $4, 12
TAG464:
mfhi $1
sw $2, -144($1)
srlv $3, $1, $2
sw $2, -144($1)
TAG465:
lui $4, 12
lui $4, 9
mthi $4
sll $0, $0, 0
TAG466:
beq $1, $1, TAG467
divu $1, $1
sw $1, 0($1)
srl $2, $1, 9
TAG467:
mfhi $3
mult $2, $2
nor $2, $2, $2
srav $4, $2, $2
TAG468:
mflo $4
blez $4, TAG469
xori $3, $4, 14
lui $2, 9
TAG469:
mtlo $2
sll $0, $0, 0
slti $2, $2, 9
beq $2, $2, TAG470
TAG470:
lhu $1, 0($2)
sh $2, -156($1)
mtlo $2
sltu $4, $1, $1
TAG471:
lhu $3, 0($4)
mflo $1
mult $3, $3
bltz $1, TAG472
TAG472:
mult $1, $1
addi $3, $1, 4
and $3, $3, $3
lb $2, 0($3)
TAG473:
lui $3, 3
slti $3, $3, 4
sb $2, 0($3)
mflo $2
TAG474:
xori $3, $2, 11
mfhi $1
beq $2, $1, TAG475
lui $4, 2
TAG475:
subu $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG476
lh $3, 0($4)
TAG476:
sb $3, 0($3)
lb $2, 0($3)
mtlo $3
sh $3, 0($2)
TAG477:
lui $3, 5
mtlo $3
mthi $2
mtlo $2
TAG478:
blez $3, TAG479
mthi $3
addiu $1, $3, 14
divu $3, $1
TAG479:
andi $4, $1, 8
mthi $1
bne $4, $4, TAG480
addu $4, $1, $1
TAG480:
bltz $4, TAG481
mfhi $4
mtlo $4
divu $4, $4
TAG481:
sll $0, $0, 0
nor $2, $2, $4
divu $2, $2
sll $0, $0, 0
TAG482:
xori $3, $2, 14
beq $3, $2, TAG483
sll $0, $0, 0
mfhi $3
TAG483:
mfhi $2
blez $2, TAG484
add $1, $3, $2
divu $2, $1
TAG484:
slti $3, $1, 3
bgez $3, TAG485
mtlo $3
sb $1, 0($3)
TAG485:
mflo $3
mtlo $3
blez $3, TAG486
mtlo $3
TAG486:
mtlo $3
bne $3, $3, TAG487
mtlo $3
addiu $1, $3, 7
TAG487:
bltz $1, TAG488
lui $3, 1
mthi $1
mtlo $1
TAG488:
mtlo $3
bltz $3, TAG489
sll $0, $0, 0
sll $0, $0, 0
TAG489:
blez $2, TAG490
lhu $1, 0($2)
sb $2, 0($2)
sw $1, 0($1)
TAG490:
sb $1, 0($1)
lh $3, 0($1)
lw $3, 0($1)
beq $3, $3, TAG491
TAG491:
lui $3, 2
sll $0, $0, 0
beq $3, $3, TAG492
subu $4, $3, $3
TAG492:
mflo $1
bltz $1, TAG493
xor $3, $4, $1
bgez $3, TAG493
TAG493:
ori $2, $3, 4
sll $0, $0, 0
mfhi $3
lui $2, 13
TAG494:
mthi $2
slti $4, $2, 13
srl $3, $4, 12
lui $1, 8
TAG495:
mult $1, $1
srlv $3, $1, $1
div $3, $3
sra $4, $1, 7
TAG496:
and $4, $4, $4
sll $4, $4, 15
addiu $2, $4, 11
beq $2, $4, TAG497
TAG497:
sll $0, $0, 0
mthi $2
sll $3, $4, 7
ori $3, $2, 13
TAG498:
sll $0, $0, 0
srlv $3, $3, $3
blez $3, TAG499
divu $3, $3
TAG499:
mtlo $3
xori $1, $3, 14
srlv $1, $3, $3
slt $4, $3, $1
TAG500:
sh $4, 0($4)
mthi $4
lui $3, 10
multu $3, $3
TAG501:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
blez $3, TAG502
TAG502:
sw $1, 0($1)
mthi $1
sra $1, $1, 10
beq $1, $1, TAG503
TAG503:
sh $1, 0($1)
bne $1, $1, TAG504
sb $1, 0($1)
beq $1, $1, TAG504
TAG504:
mfhi $1
sh $1, 0($1)
lui $4, 9
sra $2, $4, 3
TAG505:
mthi $2
bne $2, $2, TAG506
lui $1, 4
mthi $2
TAG506:
lui $2, 15
subu $1, $1, $2
lui $2, 12
mthi $2
TAG507:
sll $1, $2, 10
mult $1, $1
beq $1, $2, TAG508
lui $1, 5
TAG508:
mfhi $4
slt $3, $1, $1
divu $4, $4
mflo $2
TAG509:
blez $2, TAG510
multu $2, $2
bne $2, $2, TAG510
sb $2, 0($2)
TAG510:
andi $3, $2, 10
mult $3, $3
sb $2, 0($2)
mult $3, $2
TAG511:
sltiu $2, $3, 13
bne $2, $2, TAG512
lb $2, 0($3)
bgez $2, TAG512
TAG512:
multu $2, $2
mtlo $2
bgtz $2, TAG513
lw $3, 0($2)
TAG513:
mthi $3
mtlo $3
div $3, $3
lui $1, 5
TAG514:
bltz $1, TAG515
sll $0, $0, 0
bne $1, $1, TAG515
subu $2, $1, $1
TAG515:
mult $2, $2
sh $2, 0($2)
multu $2, $2
lh $2, 0($2)
TAG516:
lui $3, 10
mthi $3
sll $0, $0, 0
lui $1, 6
TAG517:
mfhi $4
sll $0, $0, 0
mflo $4
bgez $4, TAG518
TAG518:
lhu $4, 0($4)
bgtz $4, TAG519
xori $4, $4, 15
mult $4, $4
TAG519:
sllv $1, $4, $4
bltz $4, TAG520
lui $4, 12
mtlo $1
TAG520:
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG521:
lui $3, 6
mtlo $3
lui $3, 0
mflo $4
TAG522:
beq $4, $4, TAG523
addiu $3, $4, 8
and $1, $4, $4
mtlo $1
TAG523:
mflo $1
bltz $1, TAG524
and $4, $1, $1
sll $0, $0, 0
TAG524:
lui $3, 4
and $2, $3, $3
mthi $4
mult $3, $3
TAG525:
div $2, $2
sll $0, $0, 0
beq $2, $2, TAG526
subu $2, $2, $2
TAG526:
mflo $1
lui $4, 6
multu $1, $1
mflo $2
TAG527:
sb $2, 0($2)
slti $2, $2, 11
bgez $2, TAG528
mthi $2
TAG528:
lb $1, 0($2)
mthi $2
sb $2, 0($2)
addiu $3, $1, 5
TAG529:
sh $3, 0($3)
mtlo $3
sb $3, 0($3)
sh $3, 0($3)
TAG530:
divu $3, $3
xori $4, $3, 2
sh $3, 0($3)
mfhi $2
TAG531:
multu $2, $2
multu $2, $2
addiu $2, $2, 13
mtlo $2
TAG532:
mflo $1
mfhi $2
mfhi $3
and $2, $2, $3
TAG533:
xori $3, $2, 14
sra $1, $2, 11
lbu $3, 0($2)
slti $4, $1, 6
TAG534:
sb $4, 0($4)
mtlo $4
mfhi $2
lb $3, 0($2)
TAG535:
multu $3, $3
mult $3, $3
sh $3, 0($3)
beq $3, $3, TAG536
TAG536:
lb $2, 0($3)
mtlo $3
bgtz $2, TAG537
multu $3, $3
TAG537:
bne $2, $2, TAG538
sll $4, $2, 13
sltu $3, $4, $4
beq $4, $3, TAG538
TAG538:
lb $3, 0($3)
bltz $3, TAG539
sh $3, 0($3)
bne $3, $3, TAG539
TAG539:
mthi $3
mult $3, $3
lui $2, 1
lui $4, 5
TAG540:
mflo $3
sllv $3, $3, $4
addi $1, $3, 10
sra $3, $3, 14
TAG541:
lw $4, 0($3)
bne $3, $3, TAG542
lui $4, 2
sll $0, $0, 0
TAG542:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
bne $3, $2, TAG543
TAG543:
lhu $4, 0($3)
bne $4, $4, TAG544
mtlo $4
bne $4, $4, TAG544
TAG544:
sb $4, 0($4)
lui $3, 6
mfhi $3
sh $3, 0($4)
TAG545:
mult $3, $3
sb $3, 0($3)
bgez $3, TAG546
lh $2, 0($3)
TAG546:
subu $2, $2, $2
lhu $2, 0($2)
bgtz $2, TAG547
div $2, $2
TAG547:
sb $2, 0($2)
lui $4, 2
srl $4, $4, 0
andi $2, $2, 0
TAG548:
mthi $2
mult $2, $2
lh $2, 0($2)
sh $2, 0($2)
TAG549:
blez $2, TAG550
lh $1, 0($2)
divu $2, $2
ori $4, $2, 10
TAG550:
sh $4, 0($4)
mfhi $3
multu $4, $3
mflo $1
TAG551:
bltz $1, TAG552
lui $4, 5
mflo $1
mtlo $1
TAG552:
mtlo $1
bne $1, $1, TAG553
multu $1, $1
multu $1, $1
TAG553:
mthi $1
mflo $2
multu $2, $1
mult $1, $1
TAG554:
mfhi $3
bne $2, $2, TAG555
and $1, $3, $3
mfhi $4
TAG555:
sw $4, 0($4)
mtlo $4
lbu $2, 0($4)
lui $3, 0
TAG556:
srlv $3, $3, $3
sb $3, 0($3)
lbu $2, 0($3)
lw $3, 0($3)
TAG557:
lui $3, 2
bgez $3, TAG558
sra $2, $3, 13
lui $1, 14
TAG558:
srlv $4, $1, $1
multu $4, $4
bne $1, $4, TAG559
multu $1, $1
TAG559:
lui $1, 0
mfhi $1
mult $1, $1
lh $4, 0($1)
TAG560:
bgtz $4, TAG561
lhu $2, 0($4)
slti $1, $4, 15
lbu $1, 0($1)
TAG561:
bltz $1, TAG562
mtlo $1
sltu $2, $1, $1
bgtz $1, TAG562
TAG562:
lhu $2, 0($2)
mfhi $1
mfhi $4
addiu $3, $4, 8
TAG563:
sw $3, 0($3)
mfhi $4
mult $4, $4
beq $3, $3, TAG564
TAG564:
addiu $4, $4, 8
mtlo $4
multu $4, $4
lh $1, 0($4)
TAG565:
ori $4, $1, 4
mflo $1
lui $2, 0
mtlo $4
TAG566:
lhu $3, 0($2)
bne $2, $2, TAG567
addi $4, $3, 5
addi $2, $2, 13
TAG567:
srlv $2, $2, $2
addu $1, $2, $2
xori $3, $1, 3
divu $2, $3
TAG568:
mfhi $1
beq $3, $3, TAG569
lb $3, 0($1)
nor $2, $1, $1
TAG569:
xor $3, $2, $2
subu $3, $3, $2
lw $4, 0($3)
mflo $2
TAG570:
bne $2, $2, TAG571
mfhi $4
lui $3, 8
sw $4, 0($2)
TAG571:
mtlo $3
addu $3, $3, $3
mtlo $3
bgtz $3, TAG572
TAG572:
mfhi $4
mfhi $2
lui $3, 4
bgez $2, TAG573
TAG573:
sll $0, $0, 0
mfhi $4
mflo $4
sll $0, $0, 0
TAG574:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
xori $2, $4, 1
TAG575:
mthi $2
sll $0, $0, 0
addiu $1, $2, 8
addiu $1, $1, 5
TAG576:
sra $3, $1, 11
addiu $3, $3, 6
lh $2, -518($3)
mthi $3
TAG577:
subu $3, $2, $2
ori $2, $2, 6
xor $3, $2, $3
lui $2, 9
TAG578:
mflo $4
mfhi $3
nor $1, $3, $2
sll $0, $0, 0
TAG579:
blez $1, TAG580
sltu $1, $1, $1
bne $1, $1, TAG580
lui $2, 6
TAG580:
mthi $2
beq $2, $2, TAG581
srl $3, $2, 6
bgtz $2, TAG581
TAG581:
mflo $4
lb $3, -9216($3)
slti $1, $3, 13
lb $1, 0($4)
TAG582:
mult $1, $1
beq $1, $1, TAG583
lui $2, 13
sra $4, $1, 5
TAG583:
sll $1, $4, 5
andi $1, $1, 6
subu $2, $4, $4
multu $4, $1
TAG584:
sh $2, 0($2)
mfhi $1
mthi $2
sb $2, 0($2)
TAG585:
andi $3, $1, 3
lui $2, 5
add $2, $1, $3
lui $3, 4
TAG586:
mtlo $3
sll $0, $0, 0
xor $4, $3, $3
sll $0, $0, 0
TAG587:
beq $4, $4, TAG588
multu $4, $4
lui $4, 13
mtlo $4
TAG588:
bgtz $4, TAG589
lb $1, 0($4)
sltu $1, $1, $1
sw $1, 0($1)
TAG589:
bgez $1, TAG590
addu $2, $1, $1
div $2, $1
sll $3, $1, 11
TAG590:
sltiu $3, $3, 2
lui $2, 14
bltz $3, TAG591
lw $1, 0($3)
TAG591:
addi $2, $1, 13
mfhi $3
subu $4, $3, $2
lui $3, 14
TAG592:
subu $4, $3, $3
bne $3, $4, TAG593
srl $1, $3, 5
sh $4, 0($3)
TAG593:
sh $1, -28672($1)
mflo $3
beq $1, $1, TAG594
mthi $3
TAG594:
mflo $1
bltz $3, TAG595
mflo $3
or $2, $3, $3
TAG595:
lw $1, 0($2)
lh $2, -28672($1)
sll $1, $2, 0
bgez $2, TAG596
TAG596:
mflo $1
sllv $4, $1, $1
srl $4, $4, 0
bne $4, $4, TAG597
TAG597:
mflo $4
sh $4, 0($4)
multu $4, $4
mfhi $3
TAG598:
sltiu $3, $3, 4
mflo $1
lbu $3, 0($3)
multu $3, $3
TAG599:
lui $1, 1
addu $3, $1, $3
lui $1, 11
mtlo $1
TAG600:
lui $1, 9
bne $1, $1, TAG601
sra $3, $1, 9
mflo $1
TAG601:
mflo $1
mflo $3
addiu $4, $1, 13
div $4, $3
TAG602:
sll $0, $0, 0
mult $4, $4
mthi $4
beq $2, $4, TAG603
TAG603:
slt $4, $2, $2
lw $2, -28672($2)
mfhi $2
lui $4, 8
TAG604:
multu $4, $4
multu $4, $4
mflo $2
bgez $4, TAG605
TAG605:
mflo $3
lui $4, 5
bne $2, $2, TAG606
sb $4, 0($2)
TAG606:
mtlo $4
mtlo $4
mult $4, $4
beq $4, $4, TAG607
TAG607:
nor $2, $4, $4
mflo $2
mtlo $2
addiu $1, $4, 14
TAG608:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 13
sllv $3, $1, $1
TAG609:
sll $0, $0, 0
sw $3, 0($2)
mult $3, $3
nor $2, $3, $3
TAG610:
addiu $3, $2, 11
beq $3, $3, TAG611
sll $0, $0, 0
xor $3, $4, $4
TAG611:
mult $3, $3
sll $1, $3, 6
sll $0, $0, 0
bgez $3, TAG612
TAG612:
mflo $1
slti $4, $1, 9
beq $1, $1, TAG613
sll $0, $0, 0
TAG613:
mult $4, $4
sb $4, 0($4)
lui $2, 15
mthi $2
TAG614:
bne $2, $2, TAG615
sll $0, $0, 0
lui $2, 13
bgez $2, TAG615
TAG615:
mflo $4
addu $3, $2, $2
divu $2, $2
mflo $3
TAG616:
mthi $3
and $4, $3, $3
mfhi $2
mtlo $3
TAG617:
mthi $2
bne $2, $2, TAG618
lui $3, 12
div $2, $2
TAG618:
xori $3, $3, 11
bltz $3, TAG619
sll $0, $0, 0
srav $4, $3, $3
TAG619:
sw $4, -384($4)
sh $4, -384($4)
mtlo $4
lw $2, -384($4)
TAG620:
mtlo $2
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
TAG621:
sll $0, $0, 0
bgez $1, TAG622
mfhi $2
bgez $2, TAG622
TAG622:
mthi $2
lui $3, 1
sll $0, $0, 0
mtlo $3
TAG623:
addu $3, $3, $3
bne $3, $3, TAG624
mtlo $3
lui $4, 6
TAG624:
mtlo $4
mflo $4
sll $0, $0, 0
divu $4, $1
TAG625:
ori $4, $1, 3
mult $4, $4
bgez $1, TAG626
sltiu $3, $1, 5
TAG626:
sra $4, $3, 13
mfhi $2
multu $3, $2
mflo $3
TAG627:
mflo $3
and $3, $3, $3
addiu $1, $3, 4
mfhi $2
TAG628:
blez $2, TAG629
mthi $2
blez $2, TAG629
sltiu $1, $2, 3
TAG629:
blez $1, TAG630
or $4, $1, $1
mflo $2
blez $2, TAG630
TAG630:
mflo $3
srav $1, $3, $2
ori $4, $3, 5
lhu $4, 0($2)
TAG631:
bne $4, $4, TAG632
div $4, $4
and $4, $4, $4
divu $4, $4
TAG632:
srlv $3, $4, $4
lw $3, -384($3)
blez $3, TAG633
lb $1, -384($3)
TAG633:
sra $1, $1, 2
sb $1, 32($1)
bltz $1, TAG634
addu $1, $1, $1
TAG634:
sll $0, $0, 0
sh $4, -384($4)
slti $4, $4, 4
mtlo $4
TAG635:
bgez $4, TAG636
lui $1, 13
lui $2, 10
bgez $1, TAG636
TAG636:
lui $3, 8
mthi $2
mflo $1
mtlo $2
TAG637:
sw $1, 0($1)
mfhi $2
lui $2, 8
beq $2, $2, TAG638
TAG638:
lui $1, 5
divu $1, $2
mfhi $2
bgez $2, TAG639
TAG639:
sll $0, $0, 0
beq $2, $2, TAG640
ori $3, $2, 11
lui $3, 13
TAG640:
mfhi $1
beq $1, $1, TAG641
sll $0, $0, 0
sb $3, 0($3)
TAG641:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 2
beq $4, $1, TAG642
TAG642:
multu $4, $4
mflo $4
mult $4, $4
sb $4, 0($4)
TAG643:
blez $4, TAG644
mtlo $4
sb $4, 0($4)
bgtz $4, TAG644
TAG644:
mthi $4
lui $2, 1
bgez $4, TAG645
lui $2, 10
TAG645:
sltiu $4, $2, 12
multu $4, $2
lui $3, 2
lui $4, 5
TAG646:
sll $0, $0, 0
lui $3, 8
xori $2, $4, 0
sll $0, $0, 0
TAG647:
lui $4, 5
lui $1, 8
and $4, $2, $2
bgtz $4, TAG648
TAG648:
addiu $1, $4, 12
slti $4, $1, 13
sh $1, 0($4)
bltz $1, TAG649
TAG649:
xor $3, $4, $4
bne $4, $3, TAG650
lui $3, 14
bgez $3, TAG650
TAG650:
mfhi $1
sll $0, $0, 0
lui $1, 0
mult $1, $1
TAG651:
lui $3, 15
beq $3, $3, TAG652
addu $2, $1, $1
blez $1, TAG652
TAG652:
sw $2, 0($2)
sh $2, 0($2)
mthi $2
mthi $2
TAG653:
beq $2, $2, TAG654
mtlo $2
mflo $2
mtlo $2
TAG654:
lhu $3, 0($2)
sltiu $2, $2, 6
lui $2, 14
mult $2, $2
TAG655:
beq $2, $2, TAG656
lui $4, 3
nor $3, $4, $2
mthi $3
TAG656:
lb $3, 0($3)
sh $3, 0($3)
lui $4, 5
mfhi $4
TAG657:
beq $4, $4, TAG658
lui $4, 2
bgez $4, TAG658
mfhi $3
TAG658:
bgtz $3, TAG659
mthi $3
blez $3, TAG659
sh $3, 0($3)
TAG659:
beq $3, $3, TAG660
mult $3, $3
mflo $3
sb $3, 0($3)
TAG660:
sltiu $2, $3, 7
lui $1, 3
mflo $3
sll $0, $0, 0
TAG661:
mthi $3
mfhi $2
subu $2, $3, $3
lui $3, 2
TAG662:
lui $4, 3
blez $3, TAG663
sll $0, $0, 0
bgtz $4, TAG663
TAG663:
sll $0, $0, 0
bgtz $1, TAG664
mflo $3
or $1, $3, $1
TAG664:
mthi $1
addu $1, $1, $1
mtlo $1
beq $1, $1, TAG665
TAG665:
mtlo $1
lui $4, 14
sll $0, $0, 0
bne $1, $1, TAG666
TAG666:
subu $1, $1, $1
sltiu $1, $1, 7
lui $4, 12
sb $4, 0($1)
TAG667:
bltz $4, TAG668
nor $1, $4, $4
mtlo $4
mflo $1
TAG668:
and $4, $1, $1
sll $0, $0, 0
addiu $3, $4, 10
multu $3, $4
TAG669:
mtlo $3
mtlo $3
lui $1, 1
addu $3, $1, $3
TAG670:
lui $2, 5
addiu $4, $3, 5
srlv $1, $3, $2
beq $2, $4, TAG671
TAG671:
mflo $4
bgtz $1, TAG672
multu $1, $4
mtlo $4
TAG672:
lui $3, 8
slti $1, $4, 6
sll $0, $0, 0
lui $2, 1
TAG673:
mtlo $2
slt $4, $2, $2
sw $4, 0($4)
mult $4, $4
TAG674:
bltz $4, TAG675
sltu $2, $4, $4
sh $4, 0($4)
mflo $4
TAG675:
mflo $3
slt $1, $3, $3
sllv $2, $3, $3
mult $2, $3
TAG676:
sltu $4, $2, $2
lui $1, 7
mult $4, $4
multu $2, $2
TAG677:
mflo $4
bgtz $1, TAG678
sll $0, $0, 0
nor $3, $4, $4
TAG678:
lui $2, 5
mflo $1
mflo $1
multu $1, $2
TAG679:
bne $1, $1, TAG680
sb $1, 0($1)
bne $1, $1, TAG680
mthi $1
TAG680:
sh $1, 0($1)
xor $2, $1, $1
mthi $1
lui $2, 8
TAG681:
mult $2, $2
srav $4, $2, $2
mflo $2
bne $4, $2, TAG682
TAG682:
multu $2, $2
lui $4, 8
mthi $2
slt $4, $4, $2
TAG683:
mflo $1
srav $1, $4, $4
mtlo $1
lhu $2, 0($1)
TAG684:
xor $2, $2, $2
sllv $3, $2, $2
bgtz $3, TAG685
lui $2, 5
TAG685:
lui $1, 1
mtlo $2
mflo $3
mflo $4
TAG686:
mthi $4
mtlo $4
lui $1, 3
ori $1, $1, 8
TAG687:
lui $1, 10
mfhi $3
bne $3, $3, TAG688
lui $4, 4
TAG688:
sll $0, $0, 0
sllv $2, $4, $4
sll $0, $0, 0
bgez $2, TAG689
TAG689:
sltiu $4, $2, 14
blez $4, TAG690
sll $0, $0, 0
lw $4, 0($4)
TAG690:
mflo $2
sb $2, 0($4)
sll $0, $0, 0
srl $1, $2, 13
TAG691:
bne $1, $1, TAG692
mfhi $4
mthi $1
sll $0, $0, 0
TAG692:
sll $0, $0, 0
lui $1, 13
sll $0, $0, 0
mflo $4
TAG693:
beq $4, $4, TAG694
xori $1, $4, 14
sw $1, 0($4)
divu $1, $4
TAG694:
beq $1, $1, TAG695
lui $4, 1
mfhi $4
addi $3, $4, 6
TAG695:
addu $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG696
TAG696:
mflo $4
sllv $2, $4, $4
xori $2, $2, 4
mtlo $2
TAG697:
subu $3, $2, $2
lui $1, 11
multu $2, $3
sll $0, $0, 0
TAG698:
lui $4, 0
mflo $3
sw $2, 0($4)
sub $3, $4, $4
TAG699:
lui $3, 3
mfhi $4
srl $2, $3, 9
ori $4, $3, 6
TAG700:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
bgtz $3, TAG701
TAG701:
subu $4, $4, $4
multu $4, $4
lui $3, 6
beq $4, $3, TAG702
TAG702:
mflo $1
sub $2, $3, $1
beq $1, $2, TAG703
sltu $4, $3, $1
TAG703:
multu $4, $4
mtlo $4
sw $4, 0($4)
mthi $4
TAG704:
sh $4, 0($4)
andi $3, $4, 1
multu $3, $3
beq $3, $3, TAG705
TAG705:
mult $3, $3
lui $2, 0
srl $2, $3, 13
lb $3, 0($3)
TAG706:
lui $2, 10
lui $4, 11
bgtz $3, TAG707
lui $2, 9
TAG707:
mflo $2
mult $2, $2
blez $2, TAG708
lui $3, 10
TAG708:
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG709
mult $3, $3
TAG709:
mflo $1
div $4, $4
addiu $3, $4, 4
bltz $4, TAG710
TAG710:
lui $3, 10
mflo $1
lui $1, 7
div $1, $1
TAG711:
slti $1, $1, 12
subu $2, $1, $1
multu $2, $2
slti $1, $1, 9
TAG712:
sb $1, 0($1)
lui $1, 9
blez $1, TAG713
multu $1, $1
TAG713:
sll $0, $0, 0
mfhi $4
addiu $4, $4, 1
sll $0, $0, 0
TAG714:
mthi $4
lui $4, 12
bgtz $4, TAG715
lui $1, 12
TAG715:
sll $0, $0, 0
lui $1, 7
sll $0, $0, 0
andi $4, $1, 13
TAG716:
mult $4, $4
beq $4, $4, TAG717
mthi $4
bne $4, $4, TAG717
TAG717:
sh $4, 0($4)
sw $4, 0($4)
lui $1, 11
addiu $3, $1, 8
TAG718:
sll $0, $0, 0
mfhi $1
sll $1, $3, 12
beq $1, $1, TAG719
TAG719:
mtlo $1
mflo $1
srl $4, $1, 10
ori $1, $1, 15
TAG720:
sll $0, $0, 0
bgtz $1, TAG721
divu $1, $1
bne $1, $1, TAG721
TAG721:
addu $3, $1, $1
sll $0, $0, 0
bne $1, $1, TAG722
mflo $1
TAG722:
lui $4, 10
sltiu $1, $1, 2
mflo $1
bgez $4, TAG723
TAG723:
mult $1, $1
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
TAG724:
sra $1, $4, 5
bgtz $1, TAG725
mfhi $2
bne $1, $4, TAG725
TAG725:
mtlo $2
mfhi $1
sh $1, 0($2)
bltz $2, TAG726
TAG726:
mult $1, $1
sll $3, $1, 13
lui $3, 2
lui $1, 6
TAG727:
bgez $1, TAG728
sll $0, $0, 0
lbu $4, 0($1)
multu $1, $4
TAG728:
sll $0, $0, 0
mthi $4
bgez $4, TAG729
mfhi $4
TAG729:
mtlo $4
bltz $4, TAG730
sll $0, $0, 0
multu $4, $4
TAG730:
xori $3, $4, 3
mfhi $2
srav $2, $4, $4
addu $4, $2, $2
TAG731:
mflo $1
multu $4, $4
divu $1, $4
lhu $3, 0($1)
TAG732:
mthi $3
sb $3, 0($3)
sltu $4, $3, $3
sb $4, 0($3)
TAG733:
addi $2, $4, 6
beq $4, $4, TAG734
xori $2, $4, 13
bne $2, $4, TAG734
TAG734:
or $4, $2, $2
bgez $2, TAG735
lb $4, 0($4)
lui $2, 3
TAG735:
blez $2, TAG736
sra $3, $2, 5
mfhi $3
sb $3, 0($3)
TAG736:
lhu $4, 0($3)
mthi $3
sh $3, 0($3)
lbu $2, 0($3)
TAG737:
andi $1, $2, 9
mflo $4
bne $2, $1, TAG738
mthi $4
TAG738:
ori $1, $4, 2
sllv $4, $1, $4
nor $3, $4, $4
bgtz $4, TAG739
TAG739:
or $1, $3, $3
mtlo $1
div $1, $3
sb $3, 3($3)
TAG740:
subu $4, $1, $1
lui $3, 11
multu $1, $3
mthi $4
TAG741:
multu $3, $3
beq $3, $3, TAG742
sra $1, $3, 9
lui $2, 9
TAG742:
mflo $3
lui $4, 10
sw $4, 0($2)
mfhi $4
TAG743:
slti $4, $4, 11
sb $4, 0($4)
add $1, $4, $4
mthi $1
TAG744:
lui $2, 5
sll $0, $0, 0
addiu $3, $2, 11
beq $1, $1, TAG745
TAG745:
addiu $4, $3, 0
ori $1, $3, 0
srav $1, $1, $4
beq $1, $4, TAG746
TAG746:
sltiu $2, $1, 3
lh $2, -160($1)
bgez $2, TAG747
lui $1, 7
TAG747:
mthi $1
divu $1, $1
bltz $1, TAG748
sll $0, $0, 0
TAG748:
nor $2, $1, $1
sll $0, $0, 0
bgez $2, TAG749
sll $0, $0, 0
TAG749:
nor $4, $1, $1
divu $4, $1
sll $0, $0, 0
bltz $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop