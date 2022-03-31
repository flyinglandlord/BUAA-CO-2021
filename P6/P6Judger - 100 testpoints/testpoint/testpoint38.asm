ori $1, $0, 2
ori $2, $0, 12
ori $3, $0, 15
ori $4, $0, 12
sw $1, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $3, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $1, 124($0)
bltz $2, TAG1
andi $3, $2, 4
lb $3, 0($2)
lui $4, 5
TAG1:
mthi $4
bgez $4, TAG2
mflo $1
lui $4, 3
TAG2:
sll $0, $0, 0
div $4, $4
beq $4, $4, TAG3
sll $0, $0, 0
TAG3:
lui $4, 14
mflo $2
mthi $3
mflo $4
TAG4:
mfhi $1
bltz $4, TAG5
srl $3, $4, 1
bltz $4, TAG5
TAG5:
mthi $3
bne $3, $3, TAG6
mult $3, $3
sll $4, $3, 1
TAG6:
bgtz $4, TAG7
slt $3, $4, $4
srav $3, $3, $4
lhu $2, 0($4)
TAG7:
lbu $3, 0($2)
beq $2, $2, TAG8
sb $2, 0($2)
or $2, $2, $3
TAG8:
div $2, $2
mult $2, $2
lh $1, 0($2)
divu $2, $1
TAG9:
bltz $1, TAG10
sh $1, 0($1)
mthi $1
lui $3, 7
TAG10:
divu $3, $3
lui $1, 6
mthi $3
div $1, $3
TAG11:
bgez $1, TAG12
slti $1, $1, 5
mtlo $1
lui $3, 13
TAG12:
bne $3, $3, TAG13
mult $3, $3
lui $1, 8
mflo $4
TAG13:
addi $4, $4, 11
mflo $2
mthi $4
srl $4, $2, 4
TAG14:
blez $4, TAG15
slti $1, $4, 14
lh $3, 0($1)
mflo $4
TAG15:
beq $4, $4, TAG16
multu $4, $4
multu $4, $4
lw $1, 0($4)
TAG16:
lb $4, 0($1)
lui $3, 5
sb $1, 0($4)
sllv $1, $1, $4
TAG17:
beq $1, $1, TAG18
addu $1, $1, $1
subu $4, $1, $1
sb $4, 0($1)
TAG18:
mult $4, $4
sw $4, 0($4)
beq $4, $4, TAG19
multu $4, $4
TAG19:
mult $4, $4
lh $3, 0($4)
sw $4, 0($3)
blez $4, TAG20
TAG20:
lui $4, 8
mtlo $3
sb $4, 0($3)
lui $1, 15
TAG21:
sll $0, $0, 0
slt $1, $1, $1
lui $4, 5
sll $0, $0, 0
TAG22:
beq $2, $2, TAG23
mult $2, $2
mflo $1
lhu $4, 0($1)
TAG23:
lui $3, 11
beq $4, $4, TAG24
divu $4, $3
xori $4, $4, 5
TAG24:
beq $4, $4, TAG25
lui $1, 11
divu $1, $1
xori $4, $1, 15
TAG25:
beq $4, $4, TAG26
divu $4, $4
sw $4, 0($4)
mthi $4
TAG26:
mult $4, $4
div $4, $4
div $4, $4
lui $3, 3
TAG27:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 10
TAG28:
bgez $4, TAG29
lui $1, 2
mflo $4
lui $4, 4
TAG29:
mult $4, $4
sll $0, $0, 0
mflo $4
mfhi $3
TAG30:
mthi $3
beq $3, $3, TAG31
lui $1, 12
bne $1, $3, TAG31
TAG31:
sll $0, $0, 0
srav $2, $1, $1
blez $1, TAG32
andi $1, $4, 6
TAG32:
sh $1, 0($1)
mthi $1
add $2, $1, $1
mflo $1
TAG33:
beq $1, $1, TAG34
lw $4, 0($1)
and $2, $1, $1
lui $4, 4
TAG34:
sltu $4, $4, $4
lui $1, 7
sll $0, $0, 0
mflo $3
TAG35:
sh $3, 0($3)
lhu $3, 0($3)
multu $3, $3
bgez $3, TAG36
TAG36:
mfhi $4
sll $1, $4, 9
bltz $1, TAG37
sltiu $2, $1, 3
TAG37:
lbu $2, 0($2)
multu $2, $2
beq $2, $2, TAG38
mfhi $3
TAG38:
lhu $2, 0($3)
lhu $1, 0($3)
lhu $2, 0($1)
mthi $1
TAG39:
mthi $2
mthi $2
lui $3, 8
lui $2, 6
TAG40:
lui $3, 5
lui $2, 10
mtlo $3
sll $0, $0, 0
TAG41:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
ori $4, $3, 7
TAG42:
sll $0, $0, 0
mfhi $3
lui $3, 4
mtlo $3
TAG43:
mflo $4
sll $0, $0, 0
subu $4, $3, $3
srl $4, $4, 3
TAG44:
beq $4, $4, TAG45
lui $4, 12
xori $3, $4, 4
sltu $3, $3, $3
TAG45:
mfhi $1
mthi $3
sh $3, 0($1)
mflo $4
TAG46:
sllv $3, $4, $4
sll $0, $0, 0
slti $4, $4, 8
bgtz $4, TAG47
TAG47:
lbu $2, 0($4)
lui $4, 5
mflo $3
nor $2, $3, $2
TAG48:
bltz $2, TAG49
mtlo $2
mult $2, $2
mflo $1
TAG49:
lh $2, 0($1)
mflo $1
mtlo $2
mult $1, $1
TAG50:
lui $3, 14
beq $3, $1, TAG51
mult $3, $3
blez $3, TAG51
TAG51:
mflo $4
sb $4, 0($4)
bne $3, $4, TAG52
mtlo $3
TAG52:
sb $4, 0($4)
multu $4, $4
lui $2, 3
bne $2, $4, TAG53
TAG53:
mflo $3
beq $3, $3, TAG54
sll $0, $0, 0
sw $4, 0($3)
TAG54:
bltz $4, TAG55
subu $1, $4, $4
addiu $2, $4, 14
ori $3, $2, 5
TAG55:
lbu $4, 0($3)
bgez $4, TAG56
mthi $4
addiu $4, $3, 8
TAG56:
sltiu $4, $4, 1
subu $1, $4, $4
sb $4, 0($4)
mfhi $3
TAG57:
blez $3, TAG58
mthi $3
lb $2, 0($3)
mthi $2
TAG58:
multu $2, $2
sltiu $1, $2, 1
mtlo $1
mult $2, $1
TAG59:
sh $1, 0($1)
lw $2, 0($1)
multu $1, $1
mfhi $3
TAG60:
addi $1, $3, 4
lb $2, 0($3)
beq $1, $3, TAG61
lbu $3, 0($1)
TAG61:
sh $3, 0($3)
mtlo $3
mult $3, $3
mfhi $2
TAG62:
slti $1, $2, 8
blez $1, TAG63
slti $3, $1, 4
xor $2, $3, $3
TAG63:
add $2, $2, $2
subu $3, $2, $2
beq $2, $2, TAG64
slt $1, $2, $3
TAG64:
sb $1, 0($1)
add $1, $1, $1
mfhi $2
mfhi $4
TAG65:
lbu $3, 0($4)
lui $3, 7
mtlo $3
mtlo $3
TAG66:
beq $3, $3, TAG67
divu $3, $3
sltiu $4, $3, 8
mtlo $4
TAG67:
xori $1, $4, 14
mult $4, $1
sltiu $4, $4, 3
addu $3, $4, $4
TAG68:
mflo $3
multu $3, $3
lui $3, 8
sll $0, $0, 0
TAG69:
mult $2, $2
mtlo $2
mthi $2
addu $2, $2, $2
TAG70:
sw $2, 0($2)
beq $2, $2, TAG71
lhu $3, 0($2)
lb $2, 0($3)
TAG71:
bltz $2, TAG72
mflo $1
lui $1, 6
xor $1, $1, $1
TAG72:
slt $2, $1, $1
multu $2, $2
lbu $3, 0($1)
lb $4, 0($1)
TAG73:
multu $4, $4
multu $4, $4
lui $2, 7
sb $4, 0($4)
TAG74:
lui $4, 7
div $2, $2
mfhi $3
nor $3, $4, $2
TAG75:
div $3, $3
slti $3, $3, 14
lui $1, 2
sll $0, $0, 0
TAG76:
bgtz $1, TAG77
sltiu $3, $1, 7
lw $1, 0($3)
sh $1, 0($1)
TAG77:
lui $4, 1
mfhi $3
slti $2, $4, 10
sllv $2, $3, $3
TAG78:
sw $2, 0($2)
bgtz $2, TAG79
sb $2, 0($2)
addiu $4, $2, 2
TAG79:
mflo $3
lhu $4, 0($4)
mult $3, $4
sw $4, 0($4)
TAG80:
lb $1, 0($4)
bne $1, $4, TAG81
mtlo $4
sh $1, 0($4)
TAG81:
lui $2, 7
mfhi $2
sw $2, 0($1)
beq $1, $1, TAG82
TAG82:
mthi $2
mthi $2
or $4, $2, $2
mthi $4
TAG83:
multu $4, $4
bne $4, $4, TAG84
slti $2, $4, 4
lb $4, 0($2)
TAG84:
lui $4, 9
sll $0, $0, 0
bltz $3, TAG85
sll $0, $0, 0
TAG85:
lui $2, 13
bne $3, $3, TAG86
lui $2, 8
sll $0, $0, 0
TAG86:
mthi $1
bltz $1, TAG87
sllv $3, $1, $1
add $1, $1, $1
TAG87:
sll $3, $1, 7
mult $1, $3
lui $1, 11
andi $2, $1, 9
TAG88:
mfhi $2
addi $2, $2, 9
sra $1, $2, 12
mult $2, $1
TAG89:
bne $1, $1, TAG90
mthi $1
mfhi $2
bne $1, $1, TAG90
TAG90:
mthi $2
bgtz $2, TAG91
or $3, $2, $2
andi $3, $2, 1
TAG91:
mfhi $3
mfhi $4
mflo $3
mult $3, $4
TAG92:
sltiu $3, $3, 11
srl $2, $3, 10
lui $2, 5
sll $0, $0, 0
TAG93:
mtlo $3
sltu $4, $3, $3
mfhi $1
srl $2, $4, 8
TAG94:
bgtz $2, TAG95
sw $2, 0($2)
sw $2, 0($2)
addi $4, $2, 6
TAG95:
divu $4, $4
mflo $3
bgez $3, TAG96
mfhi $1
TAG96:
sll $2, $1, 7
mfhi $4
beq $2, $1, TAG97
sh $1, 0($4)
TAG97:
lh $3, 0($4)
blez $3, TAG98
sb $3, 0($3)
sltiu $2, $3, 15
TAG98:
sb $2, 0($2)
sh $2, 0($2)
mult $2, $2
mult $2, $2
TAG99:
mthi $2
sb $2, 0($2)
sllv $1, $2, $2
sra $4, $1, 0
TAG100:
mflo $1
multu $4, $4
andi $1, $1, 9
lui $1, 4
TAG101:
mtlo $1
mthi $1
mthi $1
beq $1, $1, TAG102
TAG102:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
bltz $1, TAG103
TAG103:
mflo $1
xori $1, $1, 5
bgez $1, TAG104
multu $1, $1
TAG104:
sb $1, 0($1)
divu $1, $1
bne $1, $1, TAG105
div $1, $1
TAG105:
mtlo $1
bgez $1, TAG106
lb $2, 0($1)
xor $3, $2, $1
TAG106:
lh $3, 0($3)
bne $3, $3, TAG107
sb $3, 0($3)
lui $4, 12
TAG107:
sll $0, $0, 0
bne $4, $4, TAG108
srav $1, $4, $4
addu $1, $4, $1
TAG108:
mfhi $4
multu $4, $1
ori $2, $1, 8
sh $1, 0($4)
TAG109:
div $2, $2
xor $3, $2, $2
sh $2, 0($3)
sll $0, $0, 0
TAG110:
mfhi $3
lhu $1, 0($3)
addu $3, $3, $3
blez $3, TAG111
TAG111:
mtlo $3
blez $3, TAG112
sb $3, 0($3)
lui $3, 14
TAG112:
mthi $3
bgtz $3, TAG113
mfhi $3
multu $3, $3
TAG113:
lbu $1, 0($3)
mfhi $1
mtlo $3
nor $1, $3, $1
TAG114:
sll $0, $0, 0
bgez $3, TAG115
lw $4, 0($3)
slt $2, $3, $4
TAG115:
mfhi $3
lui $2, 13
mtlo $3
bne $2, $2, TAG116
TAG116:
sll $0, $0, 0
xori $3, $4, 0
bgez $2, TAG117
sltu $3, $3, $3
TAG117:
lh $1, 0($3)
bltz $3, TAG118
lb $1, 0($3)
slt $3, $1, $1
TAG118:
mult $3, $3
beq $3, $3, TAG119
addi $1, $3, 15
div $3, $1
TAG119:
lb $1, 0($1)
lui $2, 8
lhu $1, 0($1)
slt $3, $2, $2
TAG120:
slt $2, $3, $3
lw $2, 0($3)
lh $3, 0($2)
lw $1, 0($3)
TAG121:
srav $4, $1, $1
mtlo $4
bne $4, $4, TAG122
srl $3, $1, 10
TAG122:
ori $4, $3, 15
add $4, $3, $4
sll $1, $4, 13
lui $3, 6
TAG123:
slt $3, $3, $3
mtlo $3
mthi $3
mthi $3
TAG124:
sllv $4, $3, $3
bne $4, $3, TAG125
lui $3, 5
div $3, $3
TAG125:
div $3, $3
ori $1, $3, 4
multu $3, $3
div $3, $3
TAG126:
div $1, $1
srav $4, $1, $1
sll $0, $0, 0
multu $1, $4
TAG127:
sw $4, -20480($4)
sra $3, $4, 11
divu $4, $4
xor $3, $3, $3
TAG128:
multu $3, $3
mfhi $2
bltz $3, TAG129
sh $3, 0($3)
TAG129:
bgez $2, TAG130
mult $2, $2
mflo $1
sw $1, 0($1)
TAG130:
sll $0, $0, 0
blez $4, TAG131
sll $0, $0, 0
sb $1, -20480($4)
TAG131:
bltz $3, TAG132
sra $3, $3, 0
mthi $3
sll $1, $3, 6
TAG132:
srl $3, $1, 0
addi $1, $3, 12
lui $2, 9
lui $2, 5
TAG133:
lui $2, 0
bgtz $2, TAG134
mthi $2
blez $2, TAG134
TAG134:
mfhi $1
sh $1, 0($1)
lui $1, 8
multu $2, $1
TAG135:
andi $2, $1, 8
bne $1, $2, TAG136
andi $2, $1, 2
mult $1, $2
TAG136:
bne $2, $2, TAG137
mtlo $2
lhu $2, 0($2)
mthi $2
TAG137:
lbu $3, 0($2)
lui $4, 12
mfhi $2
beq $3, $2, TAG138
TAG138:
multu $2, $2
lui $2, 13
sll $0, $0, 0
bgtz $2, TAG139
TAG139:
sll $0, $0, 0
lui $2, 11
mflo $2
mtlo $2
TAG140:
mult $2, $2
sb $2, 0($2)
bne $2, $2, TAG141
lui $4, 7
TAG141:
sltiu $4, $4, 15
sw $4, 0($4)
bne $4, $4, TAG142
mthi $4
TAG142:
mult $4, $4
lui $1, 1
mult $1, $4
lui $1, 7
TAG143:
sll $0, $0, 0
divu $1, $1
sllv $1, $1, $1
div $1, $1
TAG144:
lui $3, 9
srl $4, $3, 10
mtlo $3
beq $3, $4, TAG145
TAG145:
sll $0, $0, 0
mflo $2
lui $1, 13
mfhi $4
TAG146:
sllv $4, $4, $4
multu $4, $4
mult $4, $4
sb $4, 0($4)
TAG147:
beq $4, $4, TAG148
add $3, $4, $4
mtlo $4
bgtz $3, TAG148
TAG148:
lh $1, 0($3)
sh $3, 0($1)
srav $1, $3, $3
slt $4, $1, $3
TAG149:
add $2, $4, $4
lui $2, 11
mflo $2
add $1, $2, $2
TAG150:
sb $1, 0($1)
lui $2, 2
sllv $4, $1, $1
lui $1, 12
TAG151:
sll $0, $0, 0
sra $3, $1, 3
sll $0, $0, 0
multu $3, $1
TAG152:
mfhi $1
sllv $1, $1, $1
div $1, $3
sllv $3, $1, $3
TAG153:
divu $3, $3
mfhi $2
lui $1, 11
srl $1, $1, 8
TAG154:
mult $1, $1
mfhi $4
lhu $2, -2816($1)
nor $4, $4, $2
TAG155:
mult $4, $4
mflo $2
lui $3, 5
blez $2, TAG156
TAG156:
sll $0, $0, 0
blez $4, TAG157
sll $0, $0, 0
blez $3, TAG157
TAG157:
sltu $3, $4, $4
lh $1, 1($4)
mfhi $3
slti $1, $4, 12
TAG158:
lui $4, 3
mthi $1
mtlo $4
beq $4, $1, TAG159
TAG159:
mflo $1
mthi $4
mfhi $2
or $2, $4, $4
TAG160:
multu $2, $2
mtlo $2
addiu $1, $2, 12
lui $4, 9
TAG161:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
bne $1, $1, TAG162
TAG162:
multu $1, $1
beq $1, $1, TAG163
sb $1, 0($1)
sll $2, $1, 9
TAG163:
lui $3, 11
lui $4, 0
mthi $3
xori $2, $3, 3
TAG164:
lui $2, 2
beq $2, $2, TAG165
mflo $1
lb $4, 0($2)
TAG165:
lh $3, 0($4)
lui $2, 4
multu $3, $3
sh $3, 0($3)
TAG166:
sra $4, $2, 2
sll $0, $0, 0
mtlo $4
mflo $4
TAG167:
addu $3, $4, $4
sll $0, $0, 0
div $2, $3
lui $1, 1
TAG168:
sll $0, $0, 0
lui $2, 4
lui $3, 9
xori $3, $1, 1
TAG169:
nor $1, $3, $3
mflo $2
mthi $2
lui $3, 14
TAG170:
mfhi $4
mult $3, $3
blez $4, TAG171
or $3, $4, $4
TAG171:
mfhi $1
sltu $4, $3, $1
mtlo $3
sb $1, -196($1)
TAG172:
lui $1, 7
andi $1, $4, 12
multu $1, $1
mfhi $1
TAG173:
multu $1, $1
multu $1, $1
lw $2, 0($1)
lb $1, -196($2)
TAG174:
bgez $1, TAG175
addiu $1, $1, 4
subu $4, $1, $1
sw $1, 56($1)
TAG175:
lw $1, 0($4)
lhu $1, 56($1)
multu $1, $4
multu $4, $4
TAG176:
mult $1, $1
sll $0, $0, 0
lui $2, 7
lhu $2, 0($3)
TAG177:
sll $0, $0, 0
bltz $2, TAG178
addu $4, $3, $3
mtlo $4
TAG178:
addu $3, $4, $4
mthi $3
multu $3, $3
bne $3, $3, TAG179
TAG179:
lhu $2, 0($3)
divu $2, $2
bne $2, $3, TAG180
slt $1, $3, $2
TAG180:
srav $1, $1, $1
sb $1, 0($1)
bne $1, $1, TAG181
mthi $1
TAG181:
lui $1, 7
div $1, $1
addu $2, $1, $1
mtlo $1
TAG182:
or $4, $2, $2
blez $4, TAG183
mtlo $2
bltz $4, TAG183
TAG183:
addu $3, $4, $4
bne $4, $3, TAG184
lui $3, 11
lh $3, 0($4)
TAG184:
bne $3, $3, TAG185
lui $4, 6
mtlo $4
bne $3, $3, TAG185
TAG185:
sll $0, $0, 0
bltz $3, TAG186
sll $0, $0, 0
lui $2, 10
TAG186:
bne $2, $2, TAG187
sll $0, $0, 0
lui $4, 5
sll $0, $0, 0
TAG187:
multu $3, $3
sll $0, $0, 0
bgtz $2, TAG188
divu $3, $2
TAG188:
mthi $2
and $2, $2, $2
mtlo $2
bne $2, $2, TAG189
TAG189:
sll $4, $2, 1
mtlo $4
bne $2, $2, TAG190
lui $2, 14
TAG190:
bgtz $2, TAG191
mtlo $2
lui $3, 7
beq $3, $3, TAG191
TAG191:
mflo $2
mtlo $3
divu $2, $2
bgtz $2, TAG192
TAG192:
mfhi $1
bne $2, $2, TAG193
lui $2, 11
bne $1, $1, TAG193
TAG193:
mflo $1
sb $2, 0($1)
addiu $3, $2, 12
mfhi $3
TAG194:
mfhi $2
sh $3, 0($2)
slti $3, $2, 7
sh $2, 0($2)
TAG195:
blez $3, TAG196
sb $3, 0($3)
bgtz $3, TAG196
xori $2, $3, 0
TAG196:
lui $1, 13
mflo $3
sb $2, 0($3)
beq $3, $2, TAG197
TAG197:
divu $3, $3
lb $1, 0($3)
bne $3, $3, TAG198
mflo $2
TAG198:
beq $2, $2, TAG199
mfhi $3
mfhi $2
lui $4, 6
TAG199:
nor $2, $4, $4
mflo $3
blez $3, TAG200
sll $0, $0, 0
TAG200:
multu $3, $3
sb $3, 0($3)
mflo $4
bgez $4, TAG201
TAG201:
sltiu $4, $4, 4
lui $2, 15
lui $3, 8
ori $3, $3, 15
TAG202:
or $3, $3, $3
beq $3, $3, TAG203
sll $0, $0, 0
bltz $3, TAG203
TAG203:
srlv $2, $1, $1
lui $4, 13
sltiu $3, $1, 9
and $4, $1, $3
TAG204:
slti $1, $4, 15
subu $3, $1, $1
mflo $1
mult $1, $3
TAG205:
bne $1, $1, TAG206
addiu $2, $1, 15
sllv $1, $2, $1
mthi $1
TAG206:
lbu $1, 0($1)
bltz $1, TAG207
mfhi $2
slt $1, $2, $2
TAG207:
sb $1, 0($1)
srlv $2, $1, $1
multu $2, $2
srl $4, $2, 10
TAG208:
bltz $4, TAG209
lhu $4, 0($4)
slti $2, $4, 6
bgtz $4, TAG209
TAG209:
lui $3, 0
bne $3, $2, TAG210
xor $3, $3, $2
mflo $2
TAG210:
bgtz $2, TAG211
lui $3, 10
slt $3, $2, $2
beq $3, $3, TAG211
TAG211:
multu $3, $3
mult $3, $3
sb $3, 0($3)
mflo $2
TAG212:
lui $4, 8
lui $2, 0
beq $2, $2, TAG213
mult $2, $2
TAG213:
lui $2, 11
sll $0, $0, 0
mfhi $3
bgez $2, TAG214
TAG214:
mult $3, $3
sw $3, 0($3)
mult $3, $3
mflo $1
TAG215:
mult $1, $1
addu $3, $1, $1
sra $2, $3, 7
mtlo $2
TAG216:
sh $2, 0($2)
lui $4, 11
mult $4, $2
divu $2, $4
TAG217:
lui $2, 5
bne $2, $4, TAG218
lui $1, 10
mult $2, $4
TAG218:
bgez $1, TAG219
mtlo $1
bne $1, $1, TAG219
divu $1, $1
TAG219:
xor $3, $1, $1
sll $0, $0, 0
mthi $1
mult $1, $3
TAG220:
lbu $1, 0($3)
mflo $2
mtlo $3
sll $1, $3, 2
TAG221:
bgtz $1, TAG222
sllv $2, $1, $1
sw $2, 0($1)
mtlo $2
TAG222:
bne $2, $2, TAG223
lbu $3, 0($2)
mtlo $3
sw $3, 0($3)
TAG223:
multu $3, $3
bne $3, $3, TAG224
andi $2, $3, 11
nor $1, $2, $2
TAG224:
sh $1, 1($1)
sb $1, 1($1)
mthi $1
div $1, $1
TAG225:
sra $2, $1, 0
sw $2, 1($1)
beq $1, $1, TAG226
lui $4, 13
TAG226:
beq $4, $4, TAG227
addu $2, $4, $4
mfhi $2
sub $3, $4, $4
TAG227:
lui $2, 6
sll $0, $0, 0
blez $3, TAG228
mflo $3
TAG228:
subu $4, $3, $3
divu $4, $3
mfhi $2
xori $4, $2, 12
TAG229:
blez $4, TAG230
mfhi $4
mtlo $4
or $3, $4, $4
TAG230:
addiu $3, $3, 6
sh $3, 0($3)
mtlo $3
bgez $3, TAG231
TAG231:
mtlo $3
mthi $3
srav $2, $3, $3
sra $4, $2, 10
TAG232:
lw $2, 0($4)
bgtz $4, TAG233
mfhi $4
lui $2, 4
TAG233:
beq $2, $2, TAG234
sll $0, $0, 0
bltz $2, TAG234
mult $2, $2
TAG234:
blez $2, TAG235
sll $0, $0, 0
mult $2, $3
xor $3, $2, $2
TAG235:
mfhi $4
sw $3, 0($3)
mult $4, $3
lw $4, 0($4)
TAG236:
mtlo $4
mult $4, $4
lbu $4, 0($4)
bgez $4, TAG237
TAG237:
sltiu $2, $4, 8
sw $2, 0($4)
mthi $2
lui $2, 1
TAG238:
mflo $1
mfhi $1
mtlo $1
mtlo $1
TAG239:
slti $1, $1, 5
bne $1, $1, TAG240
lui $1, 7
andi $4, $1, 1
TAG240:
mtlo $4
mtlo $4
bgez $4, TAG241
sw $4, 0($4)
TAG241:
bgtz $4, TAG242
sh $4, 0($4)
mult $4, $4
mtlo $4
TAG242:
mflo $3
nor $4, $4, $3
sltiu $1, $3, 6
srlv $1, $3, $4
TAG243:
mflo $2
srl $2, $1, 9
sub $2, $2, $2
mflo $4
TAG244:
mfhi $4
lb $3, 0($4)
mthi $3
bne $4, $3, TAG245
TAG245:
lb $1, 0($3)
mthi $3
bgtz $1, TAG246
nor $3, $1, $1
TAG246:
sll $0, $0, 0
bgtz $3, TAG247
lui $1, 15
bgtz $4, TAG247
TAG247:
sll $0, $0, 0
div $3, $3
bne $3, $3, TAG248
lh $4, 1($3)
TAG248:
bgez $4, TAG249
lw $4, 0($4)
lhu $4, 0($4)
sllv $2, $4, $4
TAG249:
slti $1, $2, 2
lui $3, 6
mflo $2
bltz $3, TAG250
TAG250:
lbu $1, 0($2)
slti $1, $1, 15
sb $2, 0($1)
bgtz $1, TAG251
TAG251:
sb $1, 0($1)
mfhi $1
lb $2, 0($1)
subu $2, $2, $1
TAG252:
mthi $2
mfhi $2
lbu $4, 0($2)
and $1, $2, $2
TAG253:
srl $3, $1, 10
lui $4, 9
lui $3, 7
bltz $4, TAG254
TAG254:
div $3, $3
beq $3, $3, TAG255
ori $2, $3, 9
beq $3, $2, TAG255
TAG255:
divu $2, $2
mflo $2
srlv $2, $2, $2
sltiu $3, $2, 7
TAG256:
lui $2, 1
mfhi $4
or $4, $3, $3
mflo $3
TAG257:
mflo $3
div $3, $3
sb $3, 0($3)
mthi $3
TAG258:
lbu $3, 0($3)
addu $3, $3, $3
lui $2, 6
sll $0, $0, 0
TAG259:
xori $1, $4, 12
mthi $1
xori $1, $4, 2
sltiu $1, $4, 12
TAG260:
lui $1, 1
mtlo $1
bne $1, $1, TAG261
mflo $2
TAG261:
addiu $1, $2, 10
bgtz $1, TAG262
divu $1, $1
sb $2, 0($2)
TAG262:
bltz $1, TAG263
addiu $3, $1, 3
sll $0, $0, 0
bltz $3, TAG263
TAG263:
slti $2, $3, 6
lbu $4, 0($2)
bgtz $3, TAG264
mult $4, $4
TAG264:
mflo $2
lw $4, 0($4)
blez $2, TAG265
div $4, $4
TAG265:
addiu $4, $4, 5
lbu $4, -261($4)
mthi $4
lui $4, 8
TAG266:
bltz $4, TAG267
mtlo $4
sll $0, $0, 0
ori $4, $1, 7
TAG267:
sll $0, $0, 0
sll $0, $0, 0
srlv $1, $4, $4
div $1, $4
TAG268:
beq $1, $1, TAG269
mult $1, $1
bne $1, $1, TAG269
lui $4, 13
TAG269:
lui $2, 7
bgtz $4, TAG270
mfhi $2
slt $4, $2, $2
TAG270:
bgtz $4, TAG271
ori $1, $4, 4
sb $4, 0($4)
lui $4, 9
TAG271:
blez $4, TAG272
lui $1, 3
sltu $1, $4, $1
blez $1, TAG272
TAG272:
sb $1, 0($1)
bgez $1, TAG273
subu $4, $1, $1
bgtz $4, TAG273
TAG273:
xori $3, $4, 13
mthi $4
sll $4, $3, 2
mfhi $3
TAG274:
mtlo $3
lbu $1, 0($3)
subu $2, $3, $3
multu $1, $2
TAG275:
bne $2, $2, TAG276
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG276:
sll $0, $0, 0
srav $2, $4, $2
mtlo $4
andi $4, $2, 12
TAG277:
mtlo $4
lhu $4, 0($4)
div $4, $4
mfhi $4
TAG278:
beq $4, $4, TAG279
sub $3, $4, $4
bgtz $4, TAG279
lui $2, 7
TAG279:
bne $2, $2, TAG280
mtlo $2
sll $0, $0, 0
lui $1, 4
TAG280:
sll $0, $0, 0
beq $1, $1, TAG281
lui $1, 10
andi $2, $1, 9
TAG281:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG282:
beq $3, $3, TAG283
mfhi $2
mtlo $2
mtlo $3
TAG283:
div $2, $2
beq $2, $2, TAG284
or $4, $2, $2
addiu $4, $2, 5
TAG284:
bltz $4, TAG285
sll $0, $0, 0
sll $0, $0, 0
ori $1, $4, 11
TAG285:
bltz $1, TAG286
mthi $1
slti $4, $1, 14
andi $3, $1, 1
TAG286:
sb $3, 0($3)
andi $3, $3, 6
lb $1, 0($3)
mthi $1
TAG287:
bgtz $1, TAG288
mult $1, $1
lui $1, 6
sll $0, $0, 0
TAG288:
lui $4, 7
sll $0, $0, 0
sll $0, $0, 0
lui $3, 14
TAG289:
mfhi $1
lbu $4, 0($1)
lui $3, 15
mult $3, $3
TAG290:
mflo $3
mtlo $3
mthi $3
lui $3, 12
TAG291:
beq $3, $3, TAG292
mfhi $2
lb $4, 0($3)
lui $2, 12
TAG292:
mfhi $1
sh $2, 0($1)
lui $4, 9
lhu $2, 0($2)
TAG293:
mfhi $2
ori $1, $2, 4
sh $2, 0($2)
mflo $3
TAG294:
mflo $1
mtlo $3
lui $3, 1
lb $1, 0($1)
TAG295:
lhu $1, 0($1)
multu $1, $1
mflo $4
sw $1, 0($1)
TAG296:
mult $4, $4
multu $4, $4
mthi $4
lui $3, 1
TAG297:
mflo $1
bgez $1, TAG298
mthi $1
multu $1, $3
TAG298:
beq $1, $1, TAG299
lb $3, 0($1)
or $2, $3, $3
div $2, $1
TAG299:
mult $2, $2
lui $3, 9
mflo $2
lbu $3, 0($2)
TAG300:
xor $1, $3, $3
lui $2, 6
addiu $3, $1, 1
mflo $1
TAG301:
mult $1, $1
lui $3, 14
addiu $1, $1, 0
subu $4, $3, $1
TAG302:
sll $0, $0, 0
sll $0, $0, 0
nor $4, $2, $4
sll $0, $0, 0
TAG303:
mtlo $4
mthi $4
lui $3, 14
mfhi $2
TAG304:
mfhi $3
bgez $2, TAG305
mfhi $2
sll $0, $0, 0
TAG305:
bne $2, $2, TAG306
mthi $2
mflo $2
sll $0, $0, 0
TAG306:
sll $0, $0, 0
bgez $2, TAG307
mflo $3
sll $0, $0, 0
TAG307:
lui $4, 2
xori $1, $3, 9
mthi $1
xor $2, $4, $1
TAG308:
sll $0, $0, 0
andi $4, $1, 2
divu $4, $1
slti $1, $1, 12
TAG309:
mflo $4
and $2, $4, $1
addiu $1, $1, 13
mthi $1
TAG310:
blez $1, TAG311
or $4, $1, $1
bltz $1, TAG311
mflo $1
TAG311:
lw $1, 0($1)
multu $1, $1
lui $4, 12
sll $0, $0, 0
TAG312:
andi $4, $2, 7
bgtz $2, TAG313
mflo $4
ori $1, $2, 10
TAG313:
div $1, $1
lh $2, 0($1)
sb $1, 0($2)
beq $2, $1, TAG314
TAG314:
srav $1, $2, $2
and $3, $2, $1
mtlo $3
bne $3, $3, TAG315
TAG315:
lui $4, 7
andi $2, $4, 10
lui $4, 3
bne $2, $4, TAG316
TAG316:
lui $3, 15
sll $0, $0, 0
lui $4, 10
sll $0, $0, 0
TAG317:
nor $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
beq $1, $3, TAG318
TAG318:
andi $2, $3, 7
lui $4, 10
bgtz $3, TAG319
sll $0, $0, 0
TAG319:
mthi $3
subu $1, $3, $3
sll $0, $0, 0
multu $3, $1
TAG320:
mult $1, $1
lh $2, 0($1)
lui $1, 1
mthi $2
TAG321:
sll $0, $0, 0
lui $2, 14
sll $0, $0, 0
and $1, $1, $1
TAG322:
andi $1, $1, 1
slt $1, $1, $1
sltu $1, $1, $1
bltz $1, TAG323
TAG323:
sh $1, 0($1)
bgtz $1, TAG324
xori $1, $1, 11
beq $1, $1, TAG324
TAG324:
mthi $1
lbu $3, 0($1)
sll $2, $3, 9
lb $4, 0($1)
TAG325:
bne $4, $4, TAG326
lui $4, 7
div $4, $4
bgtz $4, TAG326
TAG326:
sll $0, $0, 0
mtlo $4
nor $1, $2, $4
bgtz $1, TAG327
TAG327:
divu $1, $1
sll $0, $0, 0
mthi $1
lui $3, 8
TAG328:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
or $3, $3, $3
TAG329:
bne $3, $3, TAG330
sll $0, $0, 0
sll $0, $0, 0
lui $2, 15
TAG330:
mfhi $4
bltz $4, TAG331
mflo $4
slti $2, $4, 7
TAG331:
sll $0, $0, 0
sll $3, $2, 13
ori $4, $3, 5
mfhi $4
TAG332:
bgez $4, TAG333
sltiu $1, $4, 13
sll $0, $0, 0
div $1, $4
TAG333:
bgtz $1, TAG334
mthi $1
beq $1, $1, TAG334
lui $4, 13
TAG334:
or $1, $4, $4
bne $4, $4, TAG335
mtlo $4
mthi $4
TAG335:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
beq $1, $1, TAG336
TAG336:
mflo $3
blez $3, TAG337
nor $4, $3, $3
sll $0, $0, 0
TAG337:
addiu $4, $4, 10
blez $4, TAG338
mult $4, $4
lui $1, 2
TAG338:
multu $1, $1
sra $1, $1, 6
lui $3, 13
bne $3, $1, TAG339
TAG339:
srav $3, $3, $3
and $3, $3, $3
sll $0, $0, 0
bne $3, $3, TAG340
TAG340:
lui $2, 7
xor $4, $2, $3
ori $3, $2, 11
blez $2, TAG341
TAG341:
slti $3, $3, 2
mtlo $3
lbu $2, 0($3)
and $3, $3, $2
TAG342:
add $1, $3, $3
lui $2, 14
multu $1, $1
mflo $3
TAG343:
lb $1, 0($3)
bgtz $1, TAG344
sw $3, 0($3)
mthi $1
TAG344:
mfhi $3
sllv $3, $3, $1
mult $3, $3
beq $1, $1, TAG345
TAG345:
mthi $3
lw $4, 0($3)
lhu $4, 0($4)
nor $3, $4, $4
TAG346:
sll $0, $0, 0
bgtz $2, TAG347
subu $4, $3, $2
lb $1, 0($2)
TAG347:
subu $4, $1, $1
lui $1, 6
bgez $1, TAG348
sll $0, $0, 0
TAG348:
bgez $1, TAG349
ori $3, $1, 13
lw $3, 0($1)
lui $1, 1
TAG349:
addiu $4, $1, 14
bne $1, $4, TAG350
sll $0, $0, 0
mfhi $4
TAG350:
sllv $2, $4, $4
sltiu $2, $4, 7
beq $2, $4, TAG351
sll $0, $0, 0
TAG351:
divu $3, $3
bgtz $3, TAG352
mthi $3
bgez $3, TAG352
TAG352:
srlv $1, $3, $3
bgtz $1, TAG353
divu $1, $1
blez $1, TAG353
TAG353:
lw $4, 0($1)
lhu $3, 0($4)
bltz $4, TAG354
sb $4, 0($3)
TAG354:
lui $2, 10
bltz $2, TAG355
divu $3, $2
lui $4, 14
TAG355:
blez $4, TAG356
mfhi $2
srlv $3, $2, $4
sra $1, $2, 8
TAG356:
sub $3, $1, $1
lui $3, 11
multu $3, $3
mfhi $1
TAG357:
mthi $1
bgez $1, TAG358
mthi $1
mtlo $1
TAG358:
bltz $1, TAG359
div $1, $1
andi $1, $1, 10
slti $4, $1, 14
TAG359:
sb $4, 0($4)
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
TAG360:
sll $0, $0, 0
bgez $3, TAG361
sll $0, $0, 0
lb $3, 0($3)
TAG361:
bne $3, $3, TAG362
andi $4, $3, 4
mflo $1
lbu $1, 0($4)
TAG362:
mflo $3
mtlo $3
lui $4, 12
lui $4, 12
TAG363:
mflo $3
srav $1, $3, $4
sra $1, $1, 5
beq $1, $1, TAG364
TAG364:
mult $1, $1
bgtz $1, TAG365
lhu $3, 0($1)
bgtz $1, TAG365
TAG365:
mflo $3
beq $3, $3, TAG366
sh $3, 0($3)
mthi $3
TAG366:
mult $3, $3
xor $4, $3, $3
sb $3, 0($3)
mflo $1
TAG367:
slt $4, $1, $1
lbu $1, 0($4)
mult $4, $1
or $1, $4, $1
TAG368:
lui $4, 3
lui $2, 10
slti $1, $1, 12
mflo $2
TAG369:
addiu $4, $2, 7
sltiu $3, $2, 11
bne $3, $3, TAG370
and $3, $3, $4
TAG370:
andi $4, $3, 7
andi $2, $4, 10
blez $4, TAG371
multu $4, $2
TAG371:
lui $1, 7
lw $1, 0($2)
lui $4, 2
lui $4, 13
TAG372:
sll $0, $0, 0
mult $4, $4
blez $4, TAG373
addu $4, $4, $4
TAG373:
lui $3, 6
subu $1, $3, $4
srlv $3, $3, $3
mfhi $4
TAG374:
blez $4, TAG375
mflo $4
mflo $3
multu $3, $4
TAG375:
lui $4, 3
mtlo $3
bltz $4, TAG376
lui $2, 14
TAG376:
beq $2, $2, TAG377
addu $2, $2, $2
lb $3, 0($2)
beq $2, $2, TAG377
TAG377:
lbu $3, 0($3)
bgez $3, TAG378
multu $3, $3
mflo $1
TAG378:
sll $0, $0, 0
mtlo $4
mtlo $4
ori $4, $4, 4
TAG379:
beq $4, $4, TAG380
multu $4, $4
multu $4, $4
sltiu $4, $4, 0
TAG380:
bne $4, $4, TAG381
xori $3, $4, 1
addu $3, $3, $3
sltiu $1, $3, 6
TAG381:
multu $1, $1
mult $1, $1
lui $3, 4
blez $3, TAG382
TAG382:
mult $3, $3
slt $4, $3, $3
bne $4, $4, TAG383
lui $4, 10
TAG383:
mthi $4
sll $0, $0, 0
mult $2, $4
beq $2, $4, TAG384
TAG384:
lui $4, 4
mflo $4
multu $4, $2
beq $4, $4, TAG385
TAG385:
andi $1, $4, 1
beq $1, $1, TAG386
sw $1, 0($4)
sh $1, 0($1)
TAG386:
sub $2, $1, $1
mflo $1
mfhi $1
mult $1, $2
TAG387:
beq $1, $1, TAG388
mfhi $4
bltz $4, TAG388
lui $2, 6
TAG388:
xori $1, $2, 4
divu $1, $1
bltz $1, TAG389
sw $1, 0($2)
TAG389:
mflo $4
bltz $1, TAG390
lw $2, 0($1)
sllv $2, $2, $1
TAG390:
sltiu $1, $2, 9
sll $0, $0, 0
mfhi $3
mfhi $3
TAG391:
mult $3, $3
add $2, $3, $3
lw $4, 0($3)
mtlo $2
TAG392:
slti $1, $4, 15
div $4, $1
bgtz $1, TAG393
lb $4, 0($4)
TAG393:
lui $4, 10
bgtz $4, TAG394
mfhi $1
sw $4, 0($4)
TAG394:
mflo $1
xor $1, $1, $1
beq $1, $1, TAG395
sll $1, $1, 8
TAG395:
sb $1, 0($1)
sra $2, $1, 6
sll $4, $2, 8
lui $4, 4
TAG396:
sll $0, $0, 0
xor $2, $4, $4
mfhi $2
lw $2, 0($2)
TAG397:
sh $2, 0($2)
beq $2, $2, TAG398
lui $3, 10
sb $3, 0($2)
TAG398:
sll $0, $0, 0
subu $4, $3, $3
lui $3, 0
mthi $3
TAG399:
bne $3, $3, TAG400
lui $2, 0
mfhi $4
bgez $3, TAG400
TAG400:
mthi $4
beq $4, $4, TAG401
lbu $4, 0($4)
sll $3, $4, 13
TAG401:
add $2, $3, $3
andi $2, $2, 6
mfhi $3
sll $2, $3, 6
TAG402:
mflo $4
or $4, $4, $4
sh $2, 0($4)
sw $4, 0($4)
TAG403:
slti $3, $4, 4
bgez $3, TAG404
mult $4, $3
bne $3, $3, TAG404
TAG404:
lb $3, 0($3)
lb $1, 0($3)
mtlo $3
mtlo $3
TAG405:
mfhi $4
sra $3, $1, 12
mfhi $4
sllv $3, $3, $4
TAG406:
sh $3, 0($3)
beq $3, $3, TAG407
lui $3, 5
sh $3, 0($3)
TAG407:
bne $3, $3, TAG408
mfhi $4
mult $4, $4
mflo $4
TAG408:
lui $2, 12
bgez $4, TAG409
lui $3, 6
blez $3, TAG409
TAG409:
sll $0, $0, 0
slt $4, $3, $3
lui $4, 1
div $4, $4
TAG410:
sltiu $3, $4, 6
mflo $4
bne $3, $3, TAG411
lw $4, 0($3)
TAG411:
mflo $2
addiu $3, $4, 6
mfhi $4
beq $2, $4, TAG412
TAG412:
mflo $4
addiu $2, $4, 8
sb $4, 0($2)
srav $3, $4, $4
TAG413:
lui $4, 6
sll $0, $0, 0
mthi $4
mflo $2
TAG414:
mflo $1
mtlo $2
beq $1, $2, TAG415
or $4, $2, $2
TAG415:
lui $2, 8
sll $0, $0, 0
bgez $3, TAG416
mflo $4
TAG416:
beq $4, $4, TAG417
lbu $3, 0($4)
div $4, $4
nor $1, $4, $3
TAG417:
sb $1, 0($1)
sll $3, $1, 15
subu $1, $3, $1
bgtz $1, TAG418
TAG418:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG419
mtlo $2
TAG419:
sll $0, $0, 0
lui $2, 2
sll $0, $0, 0
sll $0, $0, 0
TAG420:
mtlo $2
subu $2, $2, $2
lbu $4, 0($2)
bltz $2, TAG421
TAG421:
lh $3, 0($4)
bgtz $4, TAG422
mtlo $4
mtlo $4
TAG422:
or $3, $3, $3
lui $2, 4
subu $3, $3, $3
sll $4, $3, 4
TAG423:
sh $4, 0($4)
ori $3, $4, 11
bltz $4, TAG424
xori $1, $3, 14
TAG424:
sltu $1, $1, $1
bgtz $1, TAG425
slt $1, $1, $1
lui $1, 14
TAG425:
bne $1, $1, TAG426
srl $3, $1, 5
beq $1, $1, TAG426
multu $1, $3
TAG426:
sra $1, $3, 1
subu $3, $1, $3
slt $2, $3, $3
sw $3, 0($2)
TAG427:
bltz $2, TAG428
lb $3, 0($2)
lui $4, 4
addu $1, $2, $4
TAG428:
mthi $1
bne $1, $1, TAG429
sll $0, $0, 0
beq $1, $1, TAG429
TAG429:
slti $1, $1, 14
lui $1, 9
lui $3, 2
sll $0, $0, 0
TAG430:
mfhi $3
nor $4, $3, $3
xor $4, $3, $3
mtlo $4
TAG431:
lhu $3, 0($4)
mtlo $4
sll $0, $0, 0
addiu $1, $3, 15
TAG432:
sltu $2, $1, $1
mthi $1
mthi $2
sh $1, 0($2)
TAG433:
sw $2, 0($2)
sb $2, 0($2)
mthi $2
add $1, $2, $2
TAG434:
sb $1, 0($1)
lui $2, 9
bne $1, $2, TAG435
lui $3, 4
TAG435:
mfhi $2
multu $3, $2
mult $2, $3
mthi $3
TAG436:
sll $2, $2, 12
beq $2, $2, TAG437
lhu $4, 0($2)
mthi $2
TAG437:
lb $3, 0($4)
bne $4, $3, TAG438
lb $1, 0($3)
addiu $1, $1, 8
TAG438:
mtlo $1
xor $2, $1, $1
sh $1, 0($1)
sw $1, 0($2)
TAG439:
sh $2, 0($2)
sw $2, 0($2)
mthi $2
mult $2, $2
TAG440:
mtlo $2
beq $2, $2, TAG441
mtlo $2
div $2, $2
TAG441:
sh $2, 0($2)
mflo $2
mthi $2
multu $2, $2
TAG442:
blez $2, TAG443
sb $2, 0($2)
sh $2, 0($2)
lui $1, 9
TAG443:
blez $1, TAG444
sb $1, 0($1)
mflo $2
lbu $4, 0($1)
TAG444:
mfhi $3
beq $4, $3, TAG445
mflo $3
lb $1, 0($3)
TAG445:
and $4, $1, $1
mflo $3
lui $4, 2
multu $1, $1
TAG446:
slt $3, $4, $4
ori $2, $4, 0
mtlo $2
srlv $4, $2, $4
TAG447:
bltz $4, TAG448
and $2, $4, $4
mtlo $4
divu $4, $4
TAG448:
sll $0, $0, 0
lui $3, 10
sll $0, $0, 0
mult $4, $4
TAG449:
multu $3, $3
bne $3, $3, TAG450
andi $4, $3, 0
addu $2, $3, $4
TAG450:
div $2, $2
bne $2, $2, TAG451
sll $0, $0, 0
div $2, $2
TAG451:
beq $2, $2, TAG452
mfhi $1
lui $4, 14
srav $3, $1, $2
TAG452:
lui $4, 8
mtlo $3
lui $4, 5
mthi $4
TAG453:
div $4, $4
sll $0, $0, 0
bgez $3, TAG454
slti $1, $3, 5
TAG454:
sh $1, 0($1)
addiu $2, $1, 12
lui $1, 1
divu $1, $2
TAG455:
bltz $1, TAG456
lui $1, 3
bltz $1, TAG456
multu $1, $1
TAG456:
sll $0, $0, 0
ori $2, $1, 15
mult $1, $2
sll $0, $0, 0
TAG457:
sll $0, $0, 0
addiu $4, $1, 14
sll $0, $0, 0
mfhi $3
TAG458:
bgez $3, TAG459
sll $2, $3, 13
mult $2, $3
lhu $1, 0($3)
TAG459:
bgez $1, TAG460
sll $0, $0, 0
mfhi $3
sw $4, 0($4)
TAG460:
xori $2, $3, 3
sb $2, 0($3)
lh $1, 0($2)
mflo $3
TAG461:
div $3, $3
sll $0, $0, 0
sra $1, $4, 11
lui $1, 11
TAG462:
divu $1, $1
sll $0, $0, 0
sh $1, 0($2)
subu $2, $1, $1
TAG463:
mthi $2
sh $2, 0($2)
srav $2, $2, $2
sh $2, 0($2)
TAG464:
mthi $2
blez $2, TAG465
sltu $2, $2, $2
multu $2, $2
TAG465:
sb $2, 0($2)
sub $1, $2, $2
addi $1, $2, 15
mthi $1
TAG466:
mflo $2
lb $1, 0($1)
srav $3, $1, $1
mtlo $1
TAG467:
lhu $1, 0($3)
lw $2, 0($3)
bgtz $2, TAG468
mflo $2
TAG468:
lbu $4, 0($2)
mflo $2
bgez $4, TAG469
sltiu $3, $4, 11
TAG469:
sh $3, 0($3)
mfhi $1
mthi $1
lbu $3, 0($1)
TAG470:
mfhi $3
mflo $4
lui $2, 0
multu $3, $2
TAG471:
mthi $2
multu $2, $2
multu $2, $2
sh $2, 0($2)
TAG472:
beq $2, $2, TAG473
lw $4, 0($2)
mfhi $2
slt $1, $2, $2
TAG473:
lui $4, 14
bne $4, $4, TAG474
sb $1, 0($1)
andi $1, $4, 5
TAG474:
sh $1, 0($1)
beq $1, $1, TAG475
nor $1, $1, $1
srav $4, $1, $1
TAG475:
mthi $4
mfhi $3
sra $3, $3, 12
div $4, $4
TAG476:
mtlo $3
mfhi $2
blez $3, TAG477
multu $3, $2
TAG477:
subu $4, $2, $2
bgez $4, TAG478
andi $3, $2, 9
lui $3, 4
TAG478:
mtlo $3
bne $3, $3, TAG479
andi $4, $3, 9
mfhi $2
TAG479:
mflo $4
blez $2, TAG480
lui $4, 1
lui $1, 0
TAG480:
sw $1, 1($1)
mult $1, $1
ori $4, $1, 6
blez $4, TAG481
TAG481:
sll $0, $0, 0
srav $1, $4, $3
sll $3, $3, 12
mflo $2
TAG482:
slt $1, $2, $2
mflo $2
mflo $4
sb $2, 0($2)
TAG483:
divu $4, $4
sb $4, 0($4)
mflo $1
lui $4, 9
TAG484:
subu $3, $4, $4
div $4, $4
bgez $4, TAG485
sra $3, $4, 0
TAG485:
sll $0, $0, 0
sll $0, $0, 0
xor $2, $1, $3
mflo $4
TAG486:
lui $4, 5
slti $4, $4, 3
bne $4, $4, TAG487
sw $4, 0($4)
TAG487:
mthi $4
lui $1, 15
sll $0, $0, 0
multu $4, $1
TAG488:
mult $1, $1
bne $1, $1, TAG489
sll $0, $0, 0
beq $1, $2, TAG489
TAG489:
mfhi $3
multu $3, $3
mtlo $2
divu $3, $3
TAG490:
sltu $2, $3, $3
mflo $4
lb $1, 0($2)
nor $4, $2, $2
TAG491:
blez $4, TAG492
sb $4, 1($4)
lui $1, 11
blez $4, TAG492
TAG492:
mthi $1
slti $3, $1, 12
mthi $3
mthi $3
TAG493:
multu $3, $3
sb $3, 0($3)
mult $3, $3
mflo $1
TAG494:
mfhi $3
blez $3, TAG495
nor $1, $3, $3
mtlo $1
TAG495:
beq $1, $1, TAG496
lui $4, 12
mthi $4
mfhi $4
TAG496:
srav $4, $4, $4
addu $1, $4, $4
mflo $1
slt $2, $4, $4
TAG497:
sh $2, 0($2)
sh $2, 0($2)
or $1, $2, $2
slt $2, $2, $2
TAG498:
mtlo $2
ori $1, $2, 5
beq $1, $2, TAG499
mflo $4
TAG499:
mtlo $4
mfhi $4
bgtz $4, TAG500
mtlo $4
TAG500:
sh $4, 0($4)
sw $4, 0($4)
mthi $4
sw $4, 0($4)
TAG501:
mflo $1
multu $4, $1
or $2, $1, $1
bgez $2, TAG502
TAG502:
sltu $4, $2, $2
multu $4, $2
bgtz $4, TAG503
lui $3, 14
TAG503:
sll $0, $0, 0
sll $0, $0, 0
sll $2, $3, 11
nor $2, $3, $3
TAG504:
bgez $2, TAG505
sltu $2, $2, $2
sb $2, 0($2)
addi $3, $2, 13
TAG505:
mflo $1
mthi $3
blez $1, TAG506
sb $1, 0($3)
TAG506:
bgez $1, TAG507
mflo $2
lui $1, 2
sb $1, 0($2)
TAG507:
lb $1, 0($1)
sh $1, 0($1)
bltz $1, TAG508
multu $1, $1
TAG508:
mfhi $1
sw $1, 0($1)
sw $1, 0($1)
multu $1, $1
TAG509:
bgez $1, TAG510
sw $1, 0($1)
bltz $1, TAG510
mflo $2
TAG510:
mtlo $2
bne $2, $2, TAG511
sb $2, 0($2)
subu $3, $2, $2
TAG511:
lh $2, 0($3)
mult $3, $3
mtlo $3
mthi $2
TAG512:
mthi $2
lui $3, 4
lui $2, 11
blez $2, TAG513
TAG513:
subu $2, $2, $2
bne $2, $2, TAG514
mthi $2
mtlo $2
TAG514:
multu $2, $2
sll $2, $2, 5
lh $4, 0($2)
mthi $4
TAG515:
beq $4, $4, TAG516
sltiu $1, $4, 8
bne $1, $4, TAG516
lui $4, 0
TAG516:
sb $4, 0($4)
lb $1, 0($4)
mfhi $2
bltz $2, TAG517
TAG517:
lui $1, 0
lh $2, 0($1)
subu $2, $1, $2
mthi $2
TAG518:
bne $2, $2, TAG519
nor $2, $2, $2
div $2, $2
beq $2, $2, TAG519
TAG519:
mthi $2
subu $2, $2, $2
addi $2, $2, 15
srav $4, $2, $2
TAG520:
blez $4, TAG521
mtlo $4
mthi $4
bltz $4, TAG521
TAG521:
multu $4, $4
lhu $3, 0($4)
mult $4, $3
mtlo $4
TAG522:
sh $3, 0($3)
bgtz $3, TAG523
slti $4, $3, 12
beq $4, $4, TAG523
TAG523:
divu $4, $4
mtlo $4
andi $4, $4, 13
sb $4, 0($4)
TAG524:
sra $1, $4, 14
mthi $4
sh $1, 0($1)
blez $1, TAG525
TAG525:
lui $4, 8
lui $3, 14
sll $0, $0, 0
or $4, $3, $2
TAG526:
mtlo $4
sll $0, $0, 0
lui $1, 2
div $1, $1
TAG527:
lui $3, 4
srl $2, $3, 4
sll $0, $0, 0
mtlo $2
TAG528:
slti $2, $3, 14
beq $2, $2, TAG529
xori $4, $2, 0
mtlo $4
TAG529:
mfhi $2
xor $3, $2, $2
andi $1, $2, 15
mult $4, $2
TAG530:
sw $1, 0($1)
beq $1, $1, TAG531
sb $1, 0($1)
bgtz $1, TAG531
TAG531:
srl $3, $1, 4
mtlo $3
beq $3, $3, TAG532
lb $4, 0($3)
TAG532:
bgez $4, TAG533
lui $1, 9
lh $4, 0($4)
sw $1, 0($1)
TAG533:
lui $4, 6
sll $0, $0, 0
mflo $3
lui $2, 0
TAG534:
multu $2, $2
srl $2, $2, 1
andi $4, $2, 12
lui $1, 10
TAG535:
bne $1, $1, TAG536
lui $2, 13
lui $4, 10
multu $1, $4
TAG536:
sll $0, $0, 0
slt $1, $1, $4
sll $0, $0, 0
mfhi $2
TAG537:
lui $3, 13
sll $0, $0, 0
sw $2, 0($2)
srl $4, $2, 13
TAG538:
subu $2, $4, $4
xori $1, $4, 0
mflo $3
andi $4, $3, 2
TAG539:
lb $4, 0($4)
sll $4, $4, 5
multu $4, $4
mfhi $3
TAG540:
mfhi $4
xori $2, $4, 12
sra $3, $4, 10
lw $2, 0($3)
TAG541:
mthi $2
lh $4, 0($2)
bgez $4, TAG542
mtlo $2
TAG542:
bne $4, $4, TAG543
or $3, $4, $4
slt $4, $4, $3
beq $4, $4, TAG543
TAG543:
addiu $3, $4, 15
subu $2, $3, $3
sb $4, 0($4)
multu $2, $4
TAG544:
beq $2, $2, TAG545
mthi $2
slti $2, $2, 15
beq $2, $2, TAG545
TAG545:
sh $2, 0($2)
blez $2, TAG546
lui $4, 14
mfhi $2
TAG546:
sh $2, 0($2)
multu $2, $2
sh $2, 0($2)
sh $2, 0($2)
TAG547:
and $1, $2, $2
mfhi $2
mfhi $2
beq $1, $1, TAG548
TAG548:
lhu $3, 0($2)
bgez $2, TAG549
and $1, $2, $2
blez $2, TAG549
TAG549:
mfhi $1
beq $1, $1, TAG550
or $3, $1, $1
mflo $3
TAG550:
lb $2, 0($3)
srl $2, $2, 6
mflo $4
multu $3, $2
TAG551:
lbu $2, 0($4)
srl $4, $2, 8
addiu $4, $2, 14
mflo $1
TAG552:
lbu $4, 0($1)
blez $1, TAG553
nor $3, $1, $1
sra $1, $1, 8
TAG553:
bne $1, $1, TAG554
slti $4, $1, 3
mflo $4
addi $1, $1, 8
TAG554:
lui $1, 0
mthi $1
addiu $2, $1, 1
xor $4, $1, $1
TAG555:
mthi $4
mflo $3
sra $3, $3, 4
bne $4, $4, TAG556
TAG556:
multu $3, $3
mtlo $3
sltiu $3, $3, 15
sb $3, 0($3)
TAG557:
xori $2, $3, 8
lb $4, 0($3)
mtlo $3
divu $3, $3
TAG558:
lui $3, 2
mflo $3
subu $4, $4, $4
beq $3, $4, TAG559
TAG559:
lui $2, 1
bne $4, $2, TAG560
div $2, $2
sw $4, 0($2)
TAG560:
sll $0, $0, 0
lui $4, 2
nor $3, $2, $4
xor $1, $4, $2
TAG561:
sltiu $1, $1, 1
lhu $2, 0($1)
lui $4, 7
sltiu $1, $2, 4
TAG562:
beq $1, $1, TAG563
mflo $3
beq $3, $3, TAG563
sll $2, $3, 5
TAG563:
mflo $4
bltz $2, TAG564
addu $3, $2, $2
sw $2, -256($2)
TAG564:
bgtz $3, TAG565
mult $3, $3
xori $4, $3, 1
andi $3, $4, 3
TAG565:
sll $0, $0, 0
bgez $3, TAG566
lui $3, 2
addi $2, $3, 9
TAG566:
blez $2, TAG567
div $2, $2
blez $2, TAG567
sw $2, -256($2)
TAG567:
sll $0, $0, 0
lh $1, -256($2)
lui $1, 0
multu $1, $1
TAG568:
bgtz $1, TAG569
xor $4, $1, $1
mtlo $4
lh $1, 0($4)
TAG569:
sw $1, -256($1)
bgtz $1, TAG570
lui $3, 7
mfhi $1
TAG570:
bgez $1, TAG571
xori $4, $1, 0
mthi $4
lw $2, 0($1)
TAG571:
slt $3, $2, $2
mfhi $2
sltiu $3, $2, 5
mfhi $4
TAG572:
bne $4, $4, TAG573
mthi $4
lui $4, 11
div $4, $4
TAG573:
lui $2, 4
bne $2, $2, TAG574
sll $0, $0, 0
addu $4, $2, $2
TAG574:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG575:
lui $1, 11
bne $2, $2, TAG576
sltiu $1, $1, 4
blez $2, TAG576
TAG576:
nor $1, $1, $1
mtlo $1
addiu $3, $1, 5
sw $1, 0($3)
TAG577:
divu $3, $3
sllv $3, $3, $3
mthi $3
lui $1, 6
TAG578:
lui $1, 8
lui $2, 6
lui $2, 2
subu $2, $1, $2
TAG579:
sll $0, $0, 0
andi $4, $2, 5
beq $2, $2, TAG580
divu $2, $2
TAG580:
sub $1, $4, $4
mthi $4
bltz $4, TAG581
ori $3, $1, 12
TAG581:
lui $2, 10
sh $2, 0($3)
divu $3, $3
slti $4, $2, 8
TAG582:
lui $2, 13
bne $2, $4, TAG583
mthi $4
sllv $2, $2, $2
TAG583:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG584:
and $1, $3, $3
lbu $4, 0($1)
sltu $1, $3, $4
ori $4, $3, 13
TAG585:
bne $4, $4, TAG586
sb $4, 0($4)
bgez $4, TAG586
mfhi $2
TAG586:
mtlo $2
bne $2, $2, TAG587
sb $2, -169($2)
divu $2, $2
TAG587:
sll $2, $2, 4
mtlo $2
addiu $1, $2, 3
mflo $3
TAG588:
sll $0, $0, 0
or $3, $4, $4
beq $3, $3, TAG589
mthi $3
TAG589:
sb $3, 0($3)
mtlo $3
bgtz $3, TAG590
lui $1, 4
TAG590:
sll $0, $0, 0
mtlo $1
nor $4, $1, $1
blez $1, TAG591
TAG591:
addu $1, $4, $4
mtlo $1
xori $4, $4, 9
bgtz $4, TAG592
TAG592:
mtlo $4
bltz $4, TAG593
divu $4, $4
mtlo $4
TAG593:
subu $3, $4, $4
sb $3, 0($3)
lb $3, 0($3)
sub $4, $3, $3
TAG594:
multu $4, $4
sw $4, 0($4)
sub $4, $4, $4
andi $2, $4, 4
TAG595:
sh $2, 0($2)
lui $4, 0
sltiu $3, $2, 12
multu $3, $4
TAG596:
mult $3, $3
lbu $3, 0($3)
lui $1, 3
lb $4, 0($3)
TAG597:
mflo $2
bgez $4, TAG598
lhu $2, 0($4)
beq $2, $4, TAG598
TAG598:
multu $2, $2
multu $2, $2
mthi $2
addu $2, $2, $2
TAG599:
lui $3, 1
mthi $2
lui $1, 15
or $1, $3, $3
TAG600:
addiu $4, $1, 0
bgez $1, TAG601
lui $3, 11
sll $4, $1, 3
TAG601:
bne $4, $4, TAG602
nor $4, $4, $4
sltu $2, $4, $4
sb $4, 0($2)
TAG602:
mult $2, $2
sh $2, 0($2)
lhu $3, 0($2)
bne $2, $3, TAG603
TAG603:
mtlo $3
and $3, $3, $3
blez $3, TAG604
lw $4, 0($3)
TAG604:
lui $2, 8
multu $4, $4
sll $0, $0, 0
xori $1, $4, 4
TAG605:
bltz $1, TAG606
sb $1, 0($1)
and $4, $1, $1
bltz $4, TAG606
TAG606:
mthi $4
mthi $4
lw $2, 0($4)
mult $4, $2
TAG607:
addu $3, $2, $2
lb $2, 252($2)
beq $2, $2, TAG608
multu $3, $3
TAG608:
lb $4, 0($2)
mult $2, $4
xori $1, $4, 11
mfhi $4
TAG609:
mfhi $4
blez $4, TAG610
andi $2, $4, 8
div $4, $2
TAG610:
lui $1, 3
mthi $2
bgez $1, TAG611
sll $0, $0, 0
TAG611:
sb $4, 0($4)
slti $1, $4, 0
lui $3, 10
srlv $2, $3, $4
TAG612:
bne $2, $2, TAG613
addu $1, $2, $2
addu $3, $2, $2
lui $1, 5
TAG613:
lui $3, 8
sll $0, $0, 0
lui $1, 8
and $1, $3, $3
TAG614:
lui $2, 10
slt $2, $2, $1
mfhi $2
sltu $2, $1, $1
TAG615:
bgez $2, TAG616
sw $2, 0($2)
mfhi $3
lbu $1, 0($2)
TAG616:
lui $4, 4
div $1, $1
beq $1, $4, TAG617
lui $4, 9
TAG617:
multu $4, $4
mtlo $4
lui $3, 8
multu $4, $3
TAG618:
beq $3, $3, TAG619
sll $0, $0, 0
sll $2, $3, 11
mtlo $2
TAG619:
mult $2, $2
blez $2, TAG620
subu $3, $2, $2
sw $2, 0($2)
TAG620:
mflo $1
mflo $4
lui $1, 3
mflo $1
TAG621:
mthi $1
mult $1, $1
lhu $3, 0($1)
sh $3, 0($3)
TAG622:
addiu $1, $3, 12
nor $1, $1, $3
lui $4, 9
blez $4, TAG623
TAG623:
sll $1, $4, 13
mthi $1
mfhi $3
bgtz $1, TAG624
TAG624:
sll $2, $3, 12
multu $3, $3
mthi $3
lui $4, 3
TAG625:
subu $3, $4, $4
lui $3, 11
sllv $1, $3, $3
sll $0, $0, 0
TAG626:
bne $1, $1, TAG627
mfhi $3
sll $4, $3, 3
ori $4, $4, 13
TAG627:
bgez $4, TAG628
div $4, $4
divu $4, $4
sh $4, 0($4)
TAG628:
mfhi $2
lui $1, 8
bltz $1, TAG629
lb $1, 0($4)
TAG629:
mtlo $1
mfhi $2
div $2, $1
lh $1, 0($2)
TAG630:
mflo $2
lb $1, 0($1)
lbu $1, 0($1)
ori $1, $1, 0
TAG631:
sll $4, $1, 15
sra $1, $4, 1
bltz $1, TAG632
srav $4, $1, $1
TAG632:
mfhi $1
lui $1, 15
mult $4, $1
bltz $4, TAG633
TAG633:
lui $1, 7
beq $1, $1, TAG634
mfhi $2
mult $1, $2
TAG634:
beq $2, $2, TAG635
srl $4, $2, 11
lw $3, 0($4)
multu $3, $3
TAG635:
andi $2, $3, 9
bne $3, $3, TAG636
lui $3, 3
andi $2, $3, 5
TAG636:
lui $1, 1
mfhi $4
mthi $4
lhu $2, 0($4)
TAG637:
lui $1, 15
mflo $4
lbu $3, 0($2)
addiu $2, $3, 10
TAG638:
mtlo $2
multu $2, $2
sb $2, 0($2)
lui $2, 4
TAG639:
or $2, $2, $2
xor $2, $2, $2
subu $4, $2, $2
multu $4, $4
TAG640:
bne $4, $4, TAG641
lw $4, 0($4)
mflo $1
mfhi $4
TAG641:
lui $3, 2
mult $4, $4
sll $0, $0, 0
sw $3, 0($4)
TAG642:
sll $0, $0, 0
lui $2, 13
div $2, $3
srl $2, $3, 8
TAG643:
srl $3, $2, 14
sra $1, $2, 2
lh $4, -512($2)
mflo $2
TAG644:
srl $3, $2, 3
subu $1, $3, $3
lui $1, 2
sll $0, $0, 0
TAG645:
srlv $1, $2, $2
mtlo $1
mfhi $2
mfhi $1
TAG646:
div $1, $1
addiu $3, $1, 3
sll $0, $0, 0
mthi $1
TAG647:
lui $2, 10
bgez $2, TAG648
sll $0, $0, 0
lbu $4, 0($2)
TAG648:
lui $2, 6
mthi $2
srlv $2, $2, $2
mtlo $2
TAG649:
mthi $2
bltz $2, TAG650
multu $2, $2
sll $0, $0, 0
TAG650:
div $2, $2
sltiu $1, $2, 11
mfhi $3
beq $3, $3, TAG651
TAG651:
lhu $1, 0($3)
mflo $3
mfhi $2
bgez $3, TAG652
TAG652:
sb $2, 0($2)
lhu $2, 0($2)
sh $2, 0($2)
bgtz $2, TAG653
TAG653:
sll $1, $2, 7
mtlo $2
lhu $2, 0($1)
mthi $2
TAG654:
sw $2, 0($2)
bltz $2, TAG655
sw $2, 0($2)
andi $1, $2, 12
TAG655:
addi $4, $1, 12
mult $1, $1
mtlo $1
mfhi $4
TAG656:
srl $2, $4, 13
lui $2, 5
sll $0, $0, 0
beq $4, $2, TAG657
TAG657:
sh $1, 0($1)
ori $3, $1, 14
lhu $2, 0($3)
lw $3, 0($1)
TAG658:
mflo $3
lui $2, 12
bgtz $3, TAG659
mult $3, $3
TAG659:
sll $0, $0, 0
subu $1, $2, $2
bne $1, $1, TAG660
sll $0, $0, 0
TAG660:
multu $4, $4
mult $4, $4
blez $4, TAG661
add $2, $4, $4
TAG661:
mtlo $2
lui $2, 9
mflo $4
mfhi $2
TAG662:
bltz $2, TAG663
mult $2, $2
lh $3, 0($2)
lui $1, 11
TAG663:
lui $3, 4
mfhi $4
lui $3, 4
bgez $1, TAG664
TAG664:
subu $3, $3, $3
mult $3, $3
lui $1, 7
blez $1, TAG665
TAG665:
sll $0, $0, 0
bgtz $1, TAG666
mult $2, $1
lh $3, 0($2)
TAG666:
bne $3, $3, TAG667
sltiu $2, $3, 8
mflo $3
sb $2, 0($2)
TAG667:
lui $2, 5
lui $1, 12
mtlo $2
lui $4, 13
TAG668:
div $4, $4
sll $0, $0, 0
andi $3, $1, 9
mfhi $4
TAG669:
xor $1, $4, $4
mfhi $1
srl $4, $1, 14
mflo $4
TAG670:
lbu $2, 0($4)
srl $3, $4, 3
mult $2, $3
blez $4, TAG671
TAG671:
lui $3, 9
mfhi $2
sll $0, $0, 0
mthi $3
TAG672:
mfhi $3
lui $4, 2
multu $2, $4
mthi $4
TAG673:
mfhi $4
bne $4, $4, TAG674
sltiu $2, $4, 14
multu $2, $2
TAG674:
mflo $2
bne $2, $2, TAG675
sh $2, 0($2)
bltz $2, TAG675
TAG675:
lhu $2, 0($2)
mflo $4
lb $4, 0($2)
add $4, $2, $2
TAG676:
sra $3, $4, 14
beq $4, $3, TAG677
mfhi $4
sllv $4, $4, $3
TAG677:
sh $4, 0($4)
lh $3, 0($4)
lw $2, 0($3)
sra $2, $2, 14
TAG678:
lhu $2, 0($2)
multu $2, $2
lui $3, 1
lbu $1, 0($2)
TAG679:
bne $1, $1, TAG680
lb $2, 0($1)
sltu $2, $1, $1
lb $4, 0($2)
TAG680:
add $3, $4, $4
mtlo $3
sb $3, 0($3)
multu $3, $3
TAG681:
mthi $3
mflo $3
beq $3, $3, TAG682
sw $3, 0($3)
TAG682:
xori $1, $3, 5
slti $2, $1, 13
sb $3, 0($1)
srlv $2, $3, $3
TAG683:
mthi $2
bgez $2, TAG684
mult $2, $2
lbu $2, 0($2)
TAG684:
bgtz $2, TAG685
lbu $2, 0($2)
srav $3, $2, $2
beq $2, $2, TAG685
TAG685:
ori $3, $3, 13
lui $4, 1
lui $2, 15
lb $3, 0($3)
TAG686:
mthi $3
lbu $4, 0($3)
sll $4, $3, 3
div $4, $3
TAG687:
blez $4, TAG688
sb $4, 0($4)
lbu $4, 0($4)
mthi $4
TAG688:
mfhi $2
sb $2, 0($4)
lui $3, 15
xori $2, $4, 11
TAG689:
lb $1, 0($2)
sra $1, $2, 13
lui $4, 15
sll $0, $0, 0
TAG690:
sll $0, $0, 0
ori $3, $4, 14
lui $4, 7
sll $0, $0, 0
TAG691:
mflo $4
mfhi $4
lh $2, 0($4)
sh $4, 0($2)
TAG692:
sw $2, 0($2)
multu $2, $2
mtlo $2
bne $2, $2, TAG693
TAG693:
addiu $4, $2, 2
lui $1, 1
sll $0, $0, 0
bgez $1, TAG694
TAG694:
or $2, $2, $2
mflo $1
and $2, $1, $1
mfhi $1
TAG695:
sltiu $1, $1, 15
bltz $1, TAG696
mflo $3
beq $1, $1, TAG696
TAG696:
sllv $3, $3, $3
bgtz $3, TAG697
subu $4, $3, $3
srav $2, $3, $3
TAG697:
bne $2, $2, TAG698
sb $2, 0($2)
sllv $1, $2, $2
lui $4, 3
TAG698:
lui $1, 4
multu $4, $1
mult $1, $4
mfhi $4
TAG699:
mfhi $3
lbu $3, 0($4)
addiu $2, $3, 9
sb $2, 0($3)
TAG700:
bgtz $2, TAG701
lui $2, 3
blez $2, TAG701
sh $2, 0($2)
TAG701:
lui $1, 1
mtlo $1
slti $1, $1, 7
lui $1, 1
TAG702:
srlv $1, $1, $1
bgez $1, TAG703
mfhi $3
beq $1, $1, TAG703
TAG703:
sll $2, $3, 14
sb $3, 0($3)
beq $3, $3, TAG704
sh $3, 0($3)
TAG704:
bne $2, $2, TAG705
mult $2, $2
sll $0, $0, 0
mflo $4
TAG705:
lbu $4, 0($4)
subu $3, $4, $4
mflo $4
srav $4, $4, $3
TAG706:
mult $4, $4
bne $4, $4, TAG707
nor $4, $4, $4
lw $2, 1($4)
TAG707:
mtlo $2
mtlo $2
sllv $4, $2, $2
sb $2, -4608($4)
TAG708:
slt $2, $4, $4
mfhi $4
lw $3, 0($4)
lui $4, 8
TAG709:
sll $0, $0, 0
sllv $4, $4, $4
bltz $4, TAG710
lui $3, 3
TAG710:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
mtlo $3
TAG711:
lui $2, 0
beq $3, $2, TAG712
mult $2, $2
bgtz $3, TAG712
TAG712:
mtlo $2
mtlo $2
slt $3, $2, $2
xori $1, $2, 11
TAG713:
and $1, $1, $1
bgez $1, TAG714
mflo $2
mthi $1
TAG714:
mfhi $3
mfhi $4
beq $3, $4, TAG715
addi $4, $3, 10
TAG715:
beq $4, $4, TAG716
mthi $4
bltz $4, TAG716
sh $4, 0($4)
TAG716:
mult $4, $4
mtlo $4
beq $4, $4, TAG717
sb $4, 0($4)
TAG717:
lui $4, 3
sll $0, $0, 0
bgtz $3, TAG718
and $3, $3, $4
TAG718:
bgez $3, TAG719
multu $3, $3
lui $3, 5
bgtz $3, TAG719
TAG719:
sh $3, 0($3)
mflo $3
lui $2, 9
beq $2, $3, TAG720
TAG720:
sll $0, $0, 0
bgtz $2, TAG721
sll $0, $0, 0
addu $4, $2, $2
TAG721:
mthi $4
bgtz $4, TAG722
ori $1, $4, 10
divu $1, $1
TAG722:
mflo $3
multu $1, $3
and $1, $3, $1
srl $4, $3, 11
TAG723:
lui $2, 9
lui $1, 5
bltz $4, TAG724
sll $0, $0, 0
TAG724:
bne $4, $4, TAG725
multu $4, $4
multu $4, $4
multu $4, $4
TAG725:
lui $1, 9
bgtz $1, TAG726
and $3, $4, $4
mflo $1
TAG726:
mtlo $1
beq $1, $1, TAG727
lui $3, 0
sw $3, 0($1)
TAG727:
mfhi $3
multu $3, $3
lb $2, 0($3)
mflo $3
TAG728:
beq $3, $3, TAG729
sb $3, 0($3)
divu $3, $3
sll $4, $3, 0
TAG729:
addiu $3, $4, 14
mtlo $3
bltz $3, TAG730
sh $4, 0($4)
TAG730:
divu $3, $3
lhu $4, 0($3)
bltz $4, TAG731
lui $2, 0
TAG731:
bgtz $2, TAG732
sb $2, 0($2)
mtlo $2
lui $1, 13
TAG732:
mtlo $1
blez $1, TAG733
mult $1, $1
sll $0, $0, 0
TAG733:
multu $3, $3
mfhi $1
sh $1, 0($3)
blez $1, TAG734
TAG734:
lbu $4, 0($1)
lh $2, 0($4)
bne $1, $1, TAG735
mfhi $4
TAG735:
lui $3, 1
srav $2, $3, $3
sll $0, $0, 0
multu $4, $3
TAG736:
sllv $4, $2, $2
mfhi $4
sw $4, 0($4)
andi $1, $4, 13
TAG737:
mflo $4
mthi $1
mflo $1
mthi $1
TAG738:
lui $2, 8
lui $3, 9
slti $4, $3, 8
sb $1, 0($1)
TAG739:
mfhi $2
bne $2, $2, TAG740
mthi $4
lb $3, 0($2)
TAG740:
sw $3, 0($3)
lhu $4, 0($3)
and $3, $3, $3
mthi $3
TAG741:
beq $3, $3, TAG742
mfhi $4
slt $3, $3, $3
sh $4, 0($3)
TAG742:
mthi $3
mflo $4
andi $2, $3, 7
sh $3, 0($3)
TAG743:
nor $3, $2, $2
mtlo $2
multu $3, $3
sra $4, $2, 5
TAG744:
addiu $1, $4, 3
ori $4, $4, 3
beq $1, $1, TAG745
mtlo $4
TAG745:
lui $2, 4
mult $2, $4
mtlo $2
slti $1, $4, 12
TAG746:
bgtz $1, TAG747
srl $2, $1, 11
beq $2, $1, TAG747
divu $2, $1
TAG747:
lh $1, 0($2)
lb $2, 0($2)
sltiu $1, $1, 10
xor $1, $1, $2
TAG748:
mthi $1
bltz $1, TAG749
lb $3, 0($1)
bgez $3, TAG749
TAG749:
lui $3, 4
sll $0, $0, 0
bne $3, $3, TAG750
lui $1, 12
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop