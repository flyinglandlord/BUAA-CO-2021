ori $1, $0, 1
ori $2, $0, 11
ori $3, $0, 0
ori $4, $0, 11
sw $1, 0($0)
sw $3, 4($0)
sw $3, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $2, 28($0)
sw $3, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $1, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $4, 124($0)
lui $4, 13
mfhi $1
bne $2, $2, TAG1
mfhi $4
TAG1:
bltz $4, TAG2
lh $4, 0($4)
multu $4, $4
div $4, $4
TAG2:
sb $4, 0($4)
lui $1, 10
srav $3, $4, $4
addiu $4, $3, 3
TAG3:
multu $4, $4
bltz $4, TAG4
lbu $4, 0($4)
lw $1, 0($4)
TAG4:
subu $1, $1, $1
sltu $2, $1, $1
mult $1, $1
mtlo $1
TAG5:
sb $2, 0($2)
sb $2, 0($2)
bgez $2, TAG6
mflo $4
TAG6:
sh $4, 0($4)
sh $4, 0($4)
mfhi $2
mtlo $2
TAG7:
lui $4, 9
bgez $4, TAG8
xori $2, $4, 8
lui $1, 10
TAG8:
mult $1, $1
lhu $4, 0($1)
lhu $2, 0($1)
mtlo $1
TAG9:
andi $4, $2, 2
mtlo $2
mthi $2
mtlo $4
TAG10:
bltz $4, TAG11
mflo $3
blez $3, TAG11
addu $3, $3, $4
TAG11:
sllv $2, $3, $3
sb $3, 0($2)
bgez $2, TAG12
sh $2, 0($2)
TAG12:
lui $4, 12
mtlo $2
subu $3, $4, $4
mthi $4
TAG13:
sb $3, 0($3)
sb $3, 0($3)
lui $2, 8
srav $2, $3, $3
TAG14:
mult $2, $2
lui $1, 7
beq $1, $1, TAG15
sw $1, 0($2)
TAG15:
lui $3, 12
bgez $1, TAG16
srlv $1, $1, $1
multu $1, $3
TAG16:
mfhi $3
multu $3, $3
mflo $4
multu $3, $4
TAG17:
lbu $4, 0($4)
mflo $4
subu $1, $4, $4
sh $4, 0($4)
TAG18:
xor $4, $1, $1
lbu $3, 0($1)
bne $4, $1, TAG19
mtlo $4
TAG19:
nor $4, $3, $3
beq $3, $4, TAG20
mflo $4
mthi $4
TAG20:
bne $4, $4, TAG21
mflo $2
sw $4, 0($4)
beq $4, $4, TAG21
TAG21:
lhu $4, 0($2)
lb $1, 0($2)
multu $1, $1
mult $1, $4
TAG22:
mthi $1
sb $1, 0($1)
lui $3, 12
sll $0, $0, 0
TAG23:
mflo $4
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
TAG24:
lui $2, 3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG25:
mfhi $4
lb $1, 0($4)
mflo $4
lui $1, 10
TAG26:
mfhi $3
addiu $3, $1, 15
sll $2, $3, 8
div $1, $1
TAG27:
blez $2, TAG28
mfhi $1
sb $1, 0($1)
subu $4, $2, $2
TAG28:
sll $2, $4, 3
xor $1, $4, $4
beq $4, $1, TAG29
ori $4, $2, 5
TAG29:
mfhi $2
mthi $2
lb $3, 0($4)
xori $1, $4, 4
TAG30:
beq $1, $1, TAG31
xori $3, $1, 8
mthi $1
divu $1, $1
TAG31:
lbu $3, 0($3)
mthi $3
lui $2, 9
lhu $1, 0($3)
TAG32:
lhu $2, 0($1)
mtlo $2
mthi $1
lh $4, 0($2)
TAG33:
xori $1, $4, 7
slti $1, $1, 10
sb $4, 0($1)
xor $1, $4, $4
TAG34:
lui $3, 9
mtlo $3
sll $0, $0, 0
sll $4, $1, 13
TAG35:
lw $4, 0($4)
bgtz $4, TAG36
sb $4, 0($4)
mult $4, $4
TAG36:
lbu $2, 0($4)
lui $3, 1
beq $2, $2, TAG37
mthi $2
TAG37:
mult $3, $3
mfhi $2
sb $3, 0($2)
lui $2, 13
TAG38:
addiu $4, $2, 12
slt $4, $2, $4
beq $4, $4, TAG39
sra $2, $4, 4
TAG39:
srl $1, $2, 7
sh $2, 0($2)
sb $1, 0($2)
beq $2, $2, TAG40
TAG40:
mult $1, $1
sw $1, 0($1)
lb $2, 0($1)
mtlo $2
TAG41:
mflo $4
bgtz $2, TAG42
mthi $4
bne $2, $2, TAG42
TAG42:
and $4, $4, $4
slti $4, $4, 2
slt $1, $4, $4
srlv $1, $4, $4
TAG43:
sh $1, 0($1)
mfhi $1
sw $1, 0($1)
bgtz $1, TAG44
TAG44:
sw $1, 0($1)
sra $2, $1, 9
lui $1, 0
lui $4, 10
TAG45:
bltz $4, TAG46
lui $4, 14
beq $4, $4, TAG46
mflo $2
TAG46:
lui $3, 13
beq $2, $2, TAG47
sw $3, 0($2)
sb $2, 0($3)
TAG47:
bne $3, $3, TAG48
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG48
TAG48:
addiu $3, $3, 7
sll $0, $0, 0
addiu $4, $3, 12
bgez $3, TAG49
TAG49:
slt $4, $4, $4
mfhi $1
bltz $4, TAG50
slt $1, $1, $4
TAG50:
bne $1, $1, TAG51
mflo $1
addiu $4, $1, 6
lui $1, 2
TAG51:
andi $3, $1, 7
xori $3, $3, 7
addu $3, $1, $3
srlv $3, $3, $1
TAG52:
mfhi $4
lui $1, 13
mtlo $1
beq $4, $1, TAG53
TAG53:
mthi $1
xori $4, $1, 6
divu $4, $4
bne $4, $4, TAG54
TAG54:
sll $0, $0, 0
bne $2, $4, TAG55
divu $4, $4
sw $2, 0($4)
TAG55:
addiu $1, $2, 7
mfhi $3
mflo $3
mflo $3
TAG56:
mtlo $3
sb $3, 0($3)
bltz $3, TAG57
xor $4, $3, $3
TAG57:
sb $4, 0($4)
sb $4, 0($4)
mthi $4
nor $3, $4, $4
TAG58:
lui $3, 7
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG59:
sb $4, 0($4)
srl $3, $4, 12
sltiu $4, $3, 5
mfhi $4
TAG60:
div $4, $4
sb $4, 0($4)
mfhi $4
multu $4, $4
TAG61:
mflo $3
mthi $4
mtlo $4
mtlo $3
TAG62:
bgez $3, TAG63
mflo $4
xori $4, $3, 14
mthi $4
TAG63:
mfhi $1
mult $1, $1
lh $1, 0($1)
blez $1, TAG64
TAG64:
mfhi $2
srl $2, $2, 13
beq $2, $1, TAG65
mtlo $1
TAG65:
multu $2, $2
lh $4, 0($2)
beq $2, $2, TAG66
mfhi $4
TAG66:
blez $4, TAG67
lb $4, 0($4)
sll $2, $4, 12
div $4, $4
TAG67:
sllv $1, $2, $2
bne $1, $1, TAG68
lui $3, 10
mflo $3
TAG68:
beq $3, $3, TAG69
mflo $2
beq $3, $3, TAG69
mtlo $3
TAG69:
xori $4, $2, 0
bgtz $4, TAG70
lui $1, 12
beq $4, $1, TAG70
TAG70:
mtlo $1
ori $3, $1, 2
sll $3, $3, 9
bgez $3, TAG71
TAG71:
sll $0, $0, 0
lui $4, 5
sll $0, $0, 0
mthi $2
TAG72:
mflo $1
lui $2, 4
div $2, $2
blez $2, TAG73
TAG73:
xori $4, $2, 5
bne $2, $2, TAG74
lui $2, 12
mfhi $4
TAG74:
mthi $4
slti $1, $4, 4
bgtz $1, TAG75
lb $1, 0($1)
TAG75:
multu $1, $1
bgez $1, TAG76
mtlo $1
lui $1, 10
TAG76:
beq $1, $1, TAG77
lui $1, 10
bgez $1, TAG77
mthi $1
TAG77:
sll $0, $0, 0
slt $1, $1, $1
mtlo $1
slt $1, $1, $1
TAG78:
mult $1, $1
addi $1, $1, 4
lh $1, 0($1)
multu $1, $1
TAG79:
sb $1, 0($1)
blez $1, TAG80
lui $4, 1
lui $3, 11
TAG80:
slti $4, $3, 13
addi $3, $4, 0
mfhi $1
bltz $3, TAG81
TAG81:
mtlo $1
sw $1, 0($1)
sh $1, 0($1)
multu $1, $1
TAG82:
sltu $2, $1, $1
blez $1, TAG83
sw $2, 0($1)
mult $1, $2
TAG83:
mfhi $2
sw $2, 0($2)
mtlo $2
mult $2, $2
TAG84:
mfhi $2
multu $2, $2
lui $3, 5
mthi $2
TAG85:
xori $4, $3, 13
sll $0, $0, 0
srav $1, $3, $3
sll $2, $3, 2
TAG86:
srl $2, $2, 6
slt $3, $2, $2
mfhi $2
lui $4, 13
TAG87:
sll $0, $0, 0
multu $1, $4
sll $0, $0, 0
bne $4, $1, TAG88
TAG88:
sll $0, $0, 0
lui $3, 9
divu $1, $1
mtlo $3
TAG89:
sll $0, $0, 0
sll $0, $0, 0
mult $1, $1
ori $1, $1, 8
TAG90:
subu $1, $1, $1
lw $3, 0($1)
mflo $1
blez $1, TAG91
TAG91:
addiu $1, $1, 0
lb $2, 0($1)
lui $1, 4
mtlo $1
TAG92:
slt $1, $1, $1
blez $1, TAG93
sllv $4, $1, $1
and $3, $1, $4
TAG93:
mfhi $4
sb $4, 0($4)
lb $3, 0($4)
sb $4, 0($3)
TAG94:
bltz $3, TAG95
lui $1, 8
mtlo $1
lui $2, 13
TAG95:
multu $2, $2
slti $2, $2, 10
beq $2, $2, TAG96
lw $3, 0($2)
TAG96:
lw $4, 0($3)
sh $4, 0($3)
bltz $3, TAG97
mtlo $4
TAG97:
lui $3, 12
mflo $4
sll $3, $3, 12
lui $4, 2
TAG98:
beq $4, $4, TAG99
mthi $4
mtlo $4
slt $2, $4, $4
TAG99:
mtlo $2
bgez $2, TAG100
lw $1, 0($2)
sltu $4, $1, $1
TAG100:
divu $4, $4
mthi $4
lui $3, 7
sltu $1, $4, $4
TAG101:
mthi $1
srl $2, $1, 5
mflo $4
srl $1, $2, 7
TAG102:
lui $2, 3
beq $1, $2, TAG103
sll $0, $0, 0
sll $0, $0, 0
TAG103:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
mult $2, $2
TAG104:
subu $1, $2, $2
lui $1, 12
sll $0, $0, 0
mflo $2
TAG105:
mult $2, $2
sltu $1, $2, $2
sh $2, 0($1)
multu $1, $1
TAG106:
or $3, $1, $1
lui $3, 4
sll $0, $0, 0
mflo $2
TAG107:
lhu $4, 0($2)
mthi $4
and $2, $4, $4
mflo $4
TAG108:
addiu $3, $4, 12
blez $3, TAG109
multu $3, $3
sb $4, 0($4)
TAG109:
multu $3, $3
subu $1, $3, $3
nor $2, $3, $1
mult $3, $3
TAG110:
bgez $2, TAG111
lui $1, 2
sll $3, $1, 2
mtlo $1
TAG111:
addiu $2, $3, 15
mfhi $3
sll $0, $0, 0
bne $3, $2, TAG112
TAG112:
lui $1, 1
beq $1, $3, TAG113
mult $1, $1
multu $3, $3
TAG113:
div $1, $1
srlv $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG114:
mtlo $1
blez $1, TAG115
mflo $1
slti $2, $1, 14
TAG115:
sb $2, 0($2)
lb $3, 0($2)
sra $1, $3, 14
multu $1, $1
TAG116:
slt $3, $1, $1
mtlo $3
srl $3, $3, 3
mtlo $1
TAG117:
lui $1, 9
bne $1, $3, TAG118
sh $3, 0($3)
xori $2, $1, 10
TAG118:
ori $4, $2, 11
bne $2, $2, TAG119
mtlo $4
slti $1, $4, 15
TAG119:
lui $1, 4
bne $1, $1, TAG120
divu $1, $1
bne $1, $1, TAG120
TAG120:
lui $3, 8
lui $3, 3
mthi $3
div $3, $1
TAG121:
mtlo $3
srav $4, $3, $3
divu $3, $4
mthi $4
TAG122:
multu $4, $4
mthi $4
beq $4, $4, TAG123
lui $4, 6
TAG123:
mthi $4
sll $0, $0, 0
sra $4, $4, 12
subu $1, $4, $4
TAG124:
mthi $1
xor $4, $1, $1
lhu $3, 0($4)
lh $2, 0($1)
TAG125:
sra $2, $2, 11
mult $2, $2
mthi $2
andi $2, $2, 1
TAG126:
lhu $1, 0($2)
sw $2, 0($2)
lh $1, 0($1)
lbu $4, 0($2)
TAG127:
xor $4, $4, $4
lw $4, 0($4)
andi $4, $4, 13
multu $4, $4
TAG128:
multu $4, $4
mfhi $2
lui $2, 11
lb $2, 0($4)
TAG129:
mthi $2
mtlo $2
bltz $2, TAG130
slti $1, $2, 2
TAG130:
mthi $1
lbu $3, 0($1)
sh $1, 0($3)
mfhi $1
TAG131:
mflo $4
mfhi $2
multu $4, $1
bgtz $2, TAG132
TAG132:
sb $2, 0($2)
lui $1, 10
mult $1, $2
mtlo $2
TAG133:
bgez $1, TAG134
sll $0, $0, 0
mfhi $2
mtlo $1
TAG134:
lb $2, 0($2)
sra $4, $2, 7
lui $2, 2
blez $2, TAG135
TAG135:
xor $1, $2, $2
bgez $1, TAG136
lui $2, 0
mfhi $4
TAG136:
mflo $2
lb $3, 0($2)
slti $4, $3, 5
sb $2, 0($3)
TAG137:
blez $4, TAG138
lui $4, 4
sltiu $1, $4, 13
sllv $3, $4, $4
TAG138:
bne $3, $3, TAG139
lui $4, 9
lui $2, 4
sll $0, $0, 0
TAG139:
beq $2, $2, TAG140
addu $4, $2, $2
mult $4, $4
div $2, $4
TAG140:
lui $3, 0
mflo $2
subu $1, $3, $2
mult $4, $3
TAG141:
sll $4, $1, 10
sltu $1, $1, $1
bgez $4, TAG142
sb $1, 1024($4)
TAG142:
mflo $1
andi $2, $1, 13
sh $1, 0($2)
mthi $1
TAG143:
mult $2, $2
mult $2, $2
sb $2, 0($2)
bltz $2, TAG144
TAG144:
addu $3, $2, $2
bgtz $3, TAG145
lui $2, 5
mthi $3
TAG145:
mtlo $2
beq $2, $2, TAG146
sll $0, $0, 0
sw $2, 0($2)
TAG146:
bltz $2, TAG147
mflo $4
multu $4, $4
sll $0, $0, 0
TAG147:
addiu $2, $4, 1
nor $1, $2, $4
subu $4, $1, $1
addu $3, $4, $1
TAG148:
sll $0, $0, 0
beq $3, $3, TAG149
mflo $3
bltz $3, TAG149
TAG149:
lui $1, 0
sb $3, 0($1)
andi $2, $1, 14
mtlo $2
TAG150:
sb $2, 0($2)
bgtz $2, TAG151
lui $2, 0
multu $2, $2
TAG151:
mult $2, $2
sll $2, $2, 0
multu $2, $2
lui $4, 0
TAG152:
mtlo $4
mflo $4
bne $4, $4, TAG153
sra $2, $4, 6
TAG153:
mfhi $2
sw $2, 0($2)
multu $2, $2
mthi $2
TAG154:
lui $1, 10
beq $2, $1, TAG155
sll $0, $0, 0
sll $0, $0, 0
TAG155:
sh $3, 0($3)
lbu $4, 0($3)
slt $3, $4, $3
mtlo $3
TAG156:
mflo $3
bne $3, $3, TAG157
mflo $3
mflo $4
TAG157:
sh $4, 0($4)
bltz $4, TAG158
sw $4, 0($4)
bne $4, $4, TAG158
TAG158:
lui $4, 13
mfhi $4
bne $4, $4, TAG159
xori $1, $4, 1
TAG159:
andi $4, $1, 2
multu $1, $4
mult $4, $4
bgtz $4, TAG160
TAG160:
mtlo $4
bgtz $4, TAG161
lhu $3, 0($4)
bgtz $4, TAG161
TAG161:
mflo $4
lhu $3, 0($3)
lw $1, 0($3)
mtlo $3
TAG162:
mult $1, $1
sh $1, 0($1)
blez $1, TAG163
mtlo $1
TAG163:
mflo $2
bltz $2, TAG164
srlv $1, $2, $2
bne $1, $2, TAG164
TAG164:
lui $2, 10
xor $3, $2, $2
lb $1, 0($1)
xor $3, $3, $1
TAG165:
mflo $1
subu $4, $3, $1
blez $4, TAG166
sw $3, 0($1)
TAG166:
beq $4, $4, TAG167
multu $4, $4
mthi $4
slti $1, $4, 10
TAG167:
mtlo $1
mult $1, $1
mflo $3
lui $2, 15
TAG168:
lui $4, 5
bgez $4, TAG169
sll $0, $0, 0
lw $4, 0($2)
TAG169:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG170
mfhi $1
TAG170:
mult $1, $1
lh $1, 0($1)
lui $4, 2
mflo $3
TAG171:
mult $3, $3
mthi $3
mult $3, $3
xori $4, $3, 5
TAG172:
lbu $1, 0($4)
ori $3, $4, 5
sb $4, 0($1)
lw $3, 0($1)
TAG173:
lui $1, 5
mflo $4
beq $1, $3, TAG174
slti $1, $4, 13
TAG174:
addu $3, $1, $1
lui $1, 0
beq $3, $3, TAG175
srav $4, $1, $1
TAG175:
mfhi $4
sb $4, 0($4)
bne $4, $4, TAG176
mfhi $1
TAG176:
lbu $4, 0($1)
mult $4, $4
lbu $1, 0($1)
blez $1, TAG177
TAG177:
sra $4, $1, 2
lw $4, 0($1)
bgtz $1, TAG178
addi $3, $4, 11
TAG178:
sltu $4, $3, $3
div $3, $3
multu $4, $4
mtlo $3
TAG179:
bne $4, $4, TAG180
multu $4, $4
mtlo $4
sw $4, 0($4)
TAG180:
mult $4, $4
mfhi $3
mfhi $3
bltz $3, TAG181
TAG181:
multu $3, $3
lui $4, 0
beq $3, $4, TAG182
multu $3, $3
TAG182:
mflo $1
multu $4, $1
mtlo $4
mtlo $1
TAG183:
beq $1, $1, TAG184
sllv $2, $1, $1
multu $2, $2
lhu $4, 0($1)
TAG184:
bltz $4, TAG185
addi $1, $4, 7
mult $4, $1
beq $4, $4, TAG185
TAG185:
nor $3, $1, $1
bne $1, $1, TAG186
mthi $1
mthi $1
TAG186:
sb $3, 8($3)
lbu $3, 8($3)
divu $3, $3
mult $3, $3
TAG187:
sltiu $3, $3, 4
mult $3, $3
ori $2, $3, 11
sltiu $4, $3, 10
TAG188:
lb $2, 0($4)
slti $1, $4, 11
divu $2, $4
lui $3, 0
TAG189:
sra $3, $3, 7
lhu $1, 0($3)
sh $1, 0($3)
slti $1, $3, 6
TAG190:
sltu $4, $1, $1
mtlo $1
bne $4, $1, TAG191
lhu $2, 0($4)
TAG191:
bne $2, $2, TAG192
lb $2, -248($2)
sb $2, 8($2)
mflo $3
TAG192:
mfhi $4
beq $3, $4, TAG193
addiu $4, $4, 13
nor $3, $3, $4
TAG193:
sb $3, 14($3)
sw $3, 14($3)
mflo $4
mthi $3
TAG194:
sb $4, 0($4)
addu $4, $4, $4
subu $1, $4, $4
lui $3, 3
TAG195:
ori $4, $3, 5
sllv $4, $4, $3
and $1, $3, $4
xori $1, $1, 11
TAG196:
sll $0, $0, 0
mthi $1
srl $3, $1, 15
bgtz $1, TAG197
TAG197:
sh $3, 0($3)
mfhi $4
slti $1, $4, 13
bne $4, $1, TAG198
TAG198:
mfhi $1
lui $2, 9
mflo $3
addu $1, $2, $2
TAG199:
divu $1, $1
srlv $4, $1, $1
slti $1, $1, 3
xori $3, $4, 5
TAG200:
lui $4, 15
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG201:
lui $1, 9
subu $2, $1, $1
sll $0, $0, 0
bgez $1, TAG202
TAG202:
mult $2, $2
lhu $2, 0($2)
sb $2, -498($2)
multu $2, $2
TAG203:
sll $0, $0, 0
srav $2, $2, $2
div $2, $4
mthi $4
TAG204:
nor $4, $2, $2
lhu $1, 0($2)
mthi $2
mfhi $1
TAG205:
andi $1, $1, 10
add $2, $1, $1
mtlo $1
nor $1, $1, $1
TAG206:
bne $1, $1, TAG207
mult $1, $1
lui $4, 8
divu $1, $1
TAG207:
mthi $4
ori $1, $4, 13
divu $1, $1
srav $3, $1, $1
TAG208:
mthi $3
sh $3, 0($3)
mtlo $3
sra $3, $3, 14
TAG209:
lui $4, 10
sb $3, 0($3)
lui $1, 0
mtlo $1
TAG210:
mthi $1
blez $1, TAG211
mult $1, $1
addiu $1, $1, 10
TAG211:
xor $4, $1, $1
mfhi $3
mfhi $1
beq $4, $3, TAG212
TAG212:
mflo $2
mthi $1
srlv $2, $2, $1
andi $1, $2, 5
TAG213:
bgtz $1, TAG214
lhu $4, 0($1)
sb $1, 0($1)
mthi $1
TAG214:
mthi $4
sll $1, $4, 8
bne $4, $1, TAG215
sw $1, -256($4)
TAG215:
beq $1, $1, TAG216
mthi $1
bgez $1, TAG216
sh $1, 0($1)
TAG216:
sll $0, $0, 0
mflo $2
lui $2, 0
sw $2, 0($2)
TAG217:
mthi $2
bne $2, $2, TAG218
sh $2, 0($2)
mtlo $2
TAG218:
mtlo $2
sw $2, 0($2)
sra $4, $2, 7
mflo $2
TAG219:
bgtz $2, TAG220
andi $1, $2, 4
nor $2, $2, $1
mflo $1
TAG220:
mtlo $1
bgez $1, TAG221
lbu $2, 0($1)
mult $2, $1
TAG221:
beq $2, $2, TAG222
sllv $4, $2, $2
lui $4, 8
mflo $2
TAG222:
lui $3, 2
mtlo $2
bgtz $3, TAG223
sllv $4, $2, $3
TAG223:
multu $4, $4
lh $1, 0($4)
lhu $4, 0($1)
beq $1, $4, TAG224
TAG224:
lui $1, 14
multu $4, $4
lui $2, 9
sll $0, $0, 0
TAG225:
bgtz $2, TAG226
sll $0, $0, 0
sh $2, 0($2)
sltiu $1, $2, 14
TAG226:
mflo $2
and $3, $1, $2
sh $2, 0($2)
mfhi $2
TAG227:
mfhi $3
srl $4, $2, 2
sra $3, $2, 4
mthi $4
TAG228:
mfhi $2
addu $2, $3, $3
xori $4, $3, 7
mult $2, $2
TAG229:
bgtz $4, TAG230
srl $3, $4, 3
lbu $2, 0($4)
mflo $2
TAG230:
sb $2, 0($2)
sltiu $4, $2, 6
mthi $4
bgtz $2, TAG231
TAG231:
addiu $2, $4, 11
bgez $4, TAG232
mfhi $4
mtlo $4
TAG232:
mthi $4
divu $4, $4
lb $4, 0($4)
mflo $4
TAG233:
sb $4, 0($4)
bgez $4, TAG234
mflo $3
blez $4, TAG234
TAG234:
mtlo $3
mthi $3
div $3, $3
bltz $3, TAG235
TAG235:
lbu $4, 0($3)
mfhi $3
mult $4, $4
or $1, $4, $3
TAG236:
sltu $4, $1, $1
div $1, $1
mfhi $1
lui $3, 0
TAG237:
blez $3, TAG238
sltiu $4, $3, 0
lhu $3, 0($4)
lbu $3, 0($4)
TAG238:
srlv $2, $3, $3
sb $2, 0($2)
sh $2, 0($2)
mfhi $2
TAG239:
bne $2, $2, TAG240
mult $2, $2
sb $2, 0($2)
lw $4, 0($2)
TAG240:
sh $4, 0($4)
beq $4, $4, TAG241
lui $1, 14
mthi $4
TAG241:
subu $3, $1, $1
mult $1, $3
andi $1, $3, 0
sh $1, 0($3)
TAG242:
sw $1, 0($1)
sll $1, $1, 13
bne $1, $1, TAG243
mflo $2
TAG243:
mult $2, $2
mult $2, $2
mfhi $3
xori $1, $2, 0
TAG244:
sll $3, $1, 6
mflo $2
lui $3, 3
bne $1, $2, TAG245
TAG245:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $3, $3
sll $0, $0, 0
TAG246:
bne $3, $3, TAG247
mfhi $3
beq $3, $3, TAG247
xor $3, $3, $3
TAG247:
multu $3, $3
bne $3, $3, TAG248
sb $3, 0($3)
bne $3, $3, TAG248
TAG248:
or $3, $3, $3
lbu $3, 0($3)
slti $1, $3, 4
xor $3, $1, $3
TAG249:
mflo $4
beq $3, $3, TAG250
or $1, $4, $4
mtlo $3
TAG250:
slt $4, $1, $1
lh $1, 0($4)
mthi $1
srlv $3, $1, $1
TAG251:
bne $3, $3, TAG252
sh $3, 0($3)
srl $3, $3, 7
mthi $3
TAG252:
sh $3, 0($3)
sll $1, $3, 1
addu $3, $3, $1
beq $1, $3, TAG253
TAG253:
lui $1, 0
beq $1, $3, TAG254
xori $4, $1, 6
mthi $4
TAG254:
mthi $4
bltz $4, TAG255
divu $4, $4
beq $4, $4, TAG255
TAG255:
slt $2, $4, $4
slti $1, $2, 2
mtlo $2
bgtz $2, TAG256
TAG256:
slti $2, $1, 15
slti $3, $2, 0
bgez $2, TAG257
sb $3, 0($1)
TAG257:
lui $1, 15
mthi $1
mfhi $1
sll $0, $0, 0
TAG258:
lui $2, 8
slt $2, $1, $2
sll $0, $0, 0
mthi $1
TAG259:
sh $2, 0($2)
mtlo $2
sltiu $1, $2, 2
lui $1, 12
TAG260:
lui $2, 8
lui $4, 1
mflo $1
div $2, $2
TAG261:
lui $4, 15
mtlo $4
bltz $4, TAG262
sw $4, 0($1)
TAG262:
multu $4, $4
sll $0, $0, 0
mflo $3
xori $2, $3, 1
TAG263:
mflo $3
sltu $2, $3, $3
multu $3, $3
srav $3, $3, $2
TAG264:
blez $3, TAG265
mflo $1
sw $3, 0($1)
srlv $4, $1, $3
TAG265:
mflo $2
bltz $2, TAG266
sll $2, $2, 0
sll $2, $4, 10
TAG266:
lui $2, 8
mflo $2
bne $2, $2, TAG267
subu $4, $2, $2
TAG267:
srl $3, $4, 3
mtlo $3
mthi $4
mult $3, $3
TAG268:
mthi $3
sh $3, 0($3)
sh $3, 0($3)
bgez $3, TAG269
TAG269:
lhu $4, 0($3)
beq $3, $4, TAG270
addu $4, $4, $4
divu $3, $4
TAG270:
mult $4, $4
mfhi $3
lbu $1, 0($3)
multu $1, $3
TAG271:
andi $4, $1, 1
beq $1, $4, TAG272
lh $3, 0($4)
multu $4, $1
TAG272:
bgez $3, TAG273
sb $3, 0($3)
bltz $3, TAG273
mfhi $3
TAG273:
ori $1, $3, 10
lui $2, 12
subu $3, $2, $2
sll $0, $0, 0
TAG274:
nor $1, $3, $3
bne $3, $3, TAG275
mtlo $1
lw $3, 0($3)
TAG275:
mult $3, $3
addiu $2, $3, 10
andi $1, $2, 3
mthi $3
TAG276:
and $2, $1, $1
mflo $1
beq $1, $2, TAG277
lw $2, 0($1)
TAG277:
xor $4, $2, $2
addiu $4, $2, 8
addiu $2, $2, 1
beq $2, $2, TAG278
TAG278:
lui $3, 11
mflo $2
andi $3, $2, 13
lui $2, 8
TAG279:
sltu $2, $2, $2
bne $2, $2, TAG280
mult $2, $2
sh $2, 0($2)
TAG280:
bne $2, $2, TAG281
subu $4, $2, $2
lui $2, 14
mthi $2
TAG281:
blez $2, TAG282
sll $0, $0, 0
lui $4, 6
mthi $2
TAG282:
mflo $1
addu $2, $4, $4
multu $1, $1
andi $3, $2, 2
TAG283:
multu $3, $3
mult $3, $3
lh $1, 0($3)
bltz $1, TAG284
TAG284:
mflo $4
multu $1, $4
mfhi $3
bgtz $4, TAG285
TAG285:
sltu $2, $3, $3
bgtz $3, TAG286
mfhi $1
sltiu $2, $1, 0
TAG286:
addiu $4, $2, 12
mthi $4
sw $2, 0($2)
mflo $4
TAG287:
sb $4, 0($4)
sra $4, $4, 9
sh $4, 0($4)
addu $1, $4, $4
TAG288:
xor $1, $1, $1
lh $3, 0($1)
mflo $3
bne $1, $1, TAG289
TAG289:
lui $2, 9
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG290:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
mfhi $3
TAG291:
lh $3, 0($3)
srl $3, $3, 14
multu $3, $3
mflo $1
TAG292:
lui $4, 0
lh $3, 0($4)
sltiu $2, $1, 10
lbu $1, 0($4)
TAG293:
lbu $4, 0($1)
srlv $2, $1, $4
mthi $4
sub $2, $1, $1
TAG294:
sh $2, 0($2)
sllv $3, $2, $2
lbu $2, 0($2)
lui $2, 13
TAG295:
mflo $3
subu $2, $2, $2
mthi $3
ori $3, $2, 8
TAG296:
sh $3, 0($3)
sh $3, 0($3)
bgtz $3, TAG297
lui $4, 15
TAG297:
mfhi $2
mflo $2
sb $4, 0($2)
mtlo $4
TAG298:
mthi $2
bgez $2, TAG299
mult $2, $2
mflo $1
TAG299:
multu $1, $1
bne $1, $1, TAG300
lui $3, 1
mfhi $4
TAG300:
blez $4, TAG301
add $2, $4, $4
mtlo $4
lw $4, 0($4)
TAG301:
bgez $4, TAG302
mflo $3
mfhi $2
andi $4, $2, 2
TAG302:
lhu $3, 0($4)
and $1, $4, $3
xori $3, $4, 7
xori $4, $1, 5
TAG303:
mflo $4
lb $2, 0($4)
lui $3, 9
mthi $3
TAG304:
bne $3, $3, TAG305
lui $1, 13
bne $1, $1, TAG305
xor $2, $3, $3
TAG305:
blez $2, TAG306
xori $1, $2, 8
lw $1, 0($2)
lui $3, 4
TAG306:
mfhi $4
mtlo $4
mult $3, $4
sll $0, $0, 0
TAG307:
beq $4, $4, TAG308
lui $1, 10
mtlo $4
mthi $1
TAG308:
divu $1, $1
sllv $3, $1, $1
sll $0, $0, 0
mtlo $1
TAG309:
bgez $3, TAG310
mtlo $3
or $3, $3, $3
xori $1, $3, 4
TAG310:
sll $0, $0, 0
mfhi $2
srlv $3, $2, $2
addu $2, $2, $1
TAG311:
bgez $2, TAG312
addiu $4, $2, 9
slt $4, $4, $4
beq $2, $2, TAG312
TAG312:
mtlo $4
beq $4, $4, TAG313
div $4, $4
sll $4, $4, 15
TAG313:
multu $4, $4
sll $0, $0, 0
beq $4, $1, TAG314
sll $0, $0, 0
TAG314:
bgtz $1, TAG315
addu $2, $1, $1
lh $2, 0($2)
beq $2, $2, TAG315
TAG315:
lui $4, 11
lui $1, 3
mthi $4
blez $4, TAG316
TAG316:
divu $1, $1
divu $1, $1
sll $0, $0, 0
blez $1, TAG317
TAG317:
sll $0, $0, 0
mthi $1
lui $4, 9
divu $4, $4
TAG318:
sll $0, $0, 0
mtlo $4
lui $1, 6
addu $3, $4, $1
TAG319:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
bgtz $4, TAG320
TAG320:
and $1, $4, $4
mtlo $1
sll $0, $0, 0
xor $2, $4, $1
TAG321:
lui $4, 9
lui $1, 1
srav $4, $4, $1
bne $4, $1, TAG322
TAG322:
addiu $2, $4, 6
blez $4, TAG323
lui $3, 13
beq $4, $4, TAG323
TAG323:
lui $3, 8
bltz $3, TAG324
subu $4, $3, $3
mflo $4
TAG324:
or $1, $4, $4
sll $0, $0, 0
and $3, $4, $1
sltiu $1, $3, 12
TAG325:
mtlo $1
mtlo $1
lui $4, 2
sll $2, $4, 15
TAG326:
andi $2, $2, 3
lbu $3, 0($2)
addi $2, $3, 11
sb $2, 0($2)
TAG327:
sb $2, 0($2)
mtlo $2
mtlo $2
bgez $2, TAG328
TAG328:
lui $1, 11
mflo $4
sll $0, $0, 0
bne $2, $1, TAG329
TAG329:
sb $2, 0($2)
mult $2, $2
mtlo $2
lui $2, 7
TAG330:
sll $0, $0, 0
lui $3, 7
sll $0, $0, 0
divu $1, $1
TAG331:
lui $4, 11
lui $1, 4
mflo $1
bne $3, $3, TAG332
TAG332:
sb $1, 0($1)
bne $1, $1, TAG333
lui $4, 6
lui $4, 3
TAG333:
mult $4, $4
subu $3, $4, $4
addiu $2, $4, 9
blez $2, TAG334
TAG334:
lui $4, 15
beq $2, $2, TAG335
mfhi $4
sltiu $1, $4, 15
TAG335:
beq $1, $1, TAG336
slti $2, $1, 12
mfhi $3
bltz $2, TAG336
TAG336:
lbu $4, 0($3)
lb $3, 0($3)
beq $3, $3, TAG337
sb $3, 0($3)
TAG337:
bgez $3, TAG338
lui $1, 8
lh $3, 0($3)
subu $4, $1, $3
TAG338:
lb $2, 0($4)
lb $1, 0($2)
multu $1, $2
lw $4, 0($2)
TAG339:
lui $3, 12
bltz $4, TAG340
mult $4, $4
lb $4, -256($4)
TAG340:
sh $4, 0($4)
mflo $1
mflo $4
beq $1, $4, TAG341
TAG341:
lui $3, 13
multu $4, $4
mthi $3
mfhi $4
TAG342:
mfhi $2
sllv $2, $4, $2
bgtz $2, TAG343
multu $2, $2
TAG343:
bne $2, $2, TAG344
lui $3, 3
sll $0, $0, 0
lui $4, 7
TAG344:
sll $0, $0, 0
lui $1, 14
blez $4, TAG345
sll $0, $0, 0
TAG345:
lui $1, 8
mflo $2
mflo $3
subu $3, $3, $1
TAG346:
mfhi $4
ori $4, $4, 15
lui $2, 8
bgtz $2, TAG347
TAG347:
lui $3, 1
lui $2, 10
mult $3, $2
lui $4, 8
TAG348:
blez $4, TAG349
lui $2, 0
divu $2, $4
subu $2, $2, $4
TAG349:
multu $2, $2
sll $0, $0, 0
sltu $4, $2, $3
multu $4, $4
TAG350:
lw $2, 0($4)
lui $3, 12
bgez $4, TAG351
mfhi $3
TAG351:
ori $2, $3, 7
mtlo $2
sb $2, 0($2)
sh $3, 0($3)
TAG352:
lui $3, 3
bne $3, $3, TAG353
mfhi $2
ori $1, $2, 13
TAG353:
sb $1, 0($1)
srav $3, $1, $1
bne $1, $1, TAG354
or $2, $1, $1
TAG354:
mfhi $4
beq $4, $2, TAG355
lui $3, 11
divu $4, $3
TAG355:
srav $2, $3, $3
mtlo $3
sll $0, $0, 0
lui $2, 1
TAG356:
mflo $3
beq $2, $3, TAG357
sltu $1, $2, $2
multu $3, $1
TAG357:
mthi $1
srav $3, $1, $1
addu $1, $1, $1
sb $1, 0($3)
TAG358:
multu $1, $1
sh $1, 0($1)
lbu $3, 0($1)
srlv $4, $3, $3
TAG359:
sw $4, 0($4)
beq $4, $4, TAG360
sub $1, $4, $4
mflo $2
TAG360:
mthi $2
mfhi $4
beq $2, $4, TAG361
divu $2, $2
TAG361:
mult $4, $4
bne $4, $4, TAG362
divu $4, $4
slti $3, $4, 9
TAG362:
mflo $3
mfhi $1
mfhi $3
lui $4, 15
TAG363:
bne $4, $4, TAG364
mflo $4
mult $4, $4
lui $3, 7
TAG364:
lui $1, 12
bgtz $1, TAG365
divu $3, $3
div $1, $1
TAG365:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
lui $2, 13
TAG366:
mtlo $2
mthi $2
beq $2, $2, TAG367
sll $0, $0, 0
TAG367:
andi $3, $3, 4
xor $4, $3, $3
sub $3, $3, $3
lui $4, 13
TAG368:
sll $0, $0, 0
beq $4, $4, TAG369
mult $4, $4
sh $4, 0($4)
TAG369:
lui $4, 5
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG370:
lb $2, 0($3)
sub $3, $3, $2
srlv $3, $3, $2
or $1, $3, $3
TAG371:
multu $1, $1
lui $3, 10
mfhi $2
lui $4, 10
TAG372:
sltiu $3, $4, 9
beq $3, $4, TAG373
multu $4, $3
srav $1, $4, $4
TAG373:
sll $0, $0, 0
mthi $1
beq $1, $1, TAG374
sltiu $4, $1, 2
TAG374:
sw $4, 0($4)
lw $4, 0($4)
mtlo $4
lhu $3, 0($4)
TAG375:
beq $3, $3, TAG376
andi $2, $3, 2
divu $2, $2
blez $3, TAG376
TAG376:
or $2, $2, $2
xori $4, $2, 14
lui $2, 4
mthi $2
TAG377:
addu $3, $2, $2
mflo $1
lui $4, 10
sllv $2, $3, $1
TAG378:
sll $0, $0, 0
bgtz $2, TAG379
slt $2, $2, $2
blez $2, TAG379
TAG379:
slt $4, $2, $2
mtlo $4
bgtz $4, TAG380
sh $2, 0($4)
TAG380:
bgez $4, TAG381
ori $2, $4, 1
mflo $4
lui $1, 7
TAG381:
bgtz $1, TAG382
mflo $4
mthi $1
multu $4, $4
TAG382:
mflo $3
lbu $4, 0($4)
mflo $3
lbu $1, 0($3)
TAG383:
bne $1, $1, TAG384
lh $4, 0($1)
mfhi $4
multu $4, $1
TAG384:
lui $3, 4
blez $4, TAG385
lui $3, 7
bne $4, $3, TAG385
TAG385:
div $3, $3
mflo $4
sll $0, $0, 0
mult $3, $3
TAG386:
beq $4, $4, TAG387
srlv $1, $4, $4
lui $3, 8
mfhi $2
TAG387:
mtlo $2
mult $2, $2
lui $3, 3
bltz $2, TAG388
TAG388:
sll $3, $3, 1
sll $0, $0, 0
bne $3, $3, TAG389
or $3, $3, $3
TAG389:
sll $0, $0, 0
lui $1, 14
lui $1, 4
lui $3, 13
TAG390:
mtlo $3
subu $2, $3, $3
mfhi $3
srl $1, $3, 5
TAG391:
mtlo $1
beq $1, $1, TAG392
mflo $1
lhu $4, 0($1)
TAG392:
lb $2, 0($4)
andi $1, $4, 10
mtlo $2
mtlo $4
TAG393:
xori $1, $1, 2
mult $1, $1
and $3, $1, $1
divu $1, $1
TAG394:
bne $3, $3, TAG395
mtlo $3
lb $2, 0($3)
mflo $4
TAG395:
mthi $4
lh $4, 0($4)
lui $1, 9
multu $4, $4
TAG396:
sll $0, $0, 0
sll $0, $0, 0
lh $4, 0($3)
sltiu $3, $3, 2
TAG397:
lui $3, 4
addu $2, $3, $3
lui $4, 4
blez $3, TAG398
TAG398:
mfhi $3
lui $4, 4
lui $2, 4
addu $4, $2, $4
TAG399:
lui $3, 5
slt $3, $4, $3
sb $3, 0($3)
sll $0, $0, 0
TAG400:
beq $3, $3, TAG401
mflo $2
mult $2, $3
div $2, $2
TAG401:
mfhi $1
mtlo $2
and $2, $1, $1
mtlo $2
TAG402:
sb $2, 0($2)
lui $3, 6
lw $4, 0($2)
sh $3, 0($2)
TAG403:
multu $4, $4
lh $4, 0($4)
lb $4, 0($4)
mfhi $1
TAG404:
srl $1, $1, 6
bne $1, $1, TAG405
sb $1, 0($1)
mult $1, $1
TAG405:
srav $4, $1, $1
srlv $2, $1, $4
lui $4, 1
mflo $2
TAG406:
bgez $2, TAG407
lui $3, 1
bne $3, $2, TAG407
sw $2, 0($3)
TAG407:
addu $2, $3, $3
nor $2, $3, $3
mflo $2
lh $3, 0($2)
TAG408:
lb $1, 0($3)
mfhi $2
mthi $3
addi $2, $2, 13
TAG409:
lbu $4, 0($2)
multu $4, $2
sltu $2, $4, $2
mfhi $4
TAG410:
lh $4, 0($4)
bne $4, $4, TAG411
mult $4, $4
mtlo $4
TAG411:
lb $4, 0($4)
multu $4, $4
andi $1, $4, 15
lui $4, 13
TAG412:
bltz $4, TAG413
sll $0, $0, 0
sll $0, $0, 0
sra $1, $4, 9
TAG413:
mthi $1
lb $2, -1664($1)
lh $2, -1664($1)
lui $3, 3
TAG414:
sll $0, $0, 0
sll $1, $3, 15
blez $3, TAG415
slti $2, $1, 1
TAG415:
lb $2, 0($2)
multu $2, $2
mthi $2
mtlo $2
TAG416:
mflo $2
multu $2, $2
addiu $1, $2, 15
mfhi $1
TAG417:
multu $1, $1
sb $1, 0($1)
sltu $4, $1, $1
mult $4, $1
TAG418:
bne $4, $4, TAG419
lui $2, 2
beq $4, $4, TAG419
mfhi $3
TAG419:
lui $3, 13
lui $4, 13
mflo $2
lui $4, 7
TAG420:
sll $0, $0, 0
mfhi $2
lui $4, 6
mtlo $4
TAG421:
xor $3, $4, $4
mtlo $4
bne $3, $3, TAG422
lb $2, 0($3)
TAG422:
mfhi $3
ori $2, $2, 7
mflo $2
sll $0, $0, 0
TAG423:
lui $4, 12
addiu $3, $4, 14
bgez $3, TAG424
sll $0, $0, 0
TAG424:
srav $3, $3, $3
sw $3, 0($3)
bne $3, $3, TAG425
divu $3, $3
TAG425:
mthi $3
mfhi $1
multu $3, $3
slti $3, $1, 5
TAG426:
mfhi $4
sw $3, 0($3)
mtlo $4
lui $3, 4
TAG427:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
nor $1, $3, $4
TAG428:
addu $1, $1, $1
ori $3, $1, 9
div $3, $1
sll $0, $0, 0
TAG429:
sll $0, $0, 0
lui $3, 2
mthi $3
addiu $2, $3, 9
TAG430:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
ori $3, $1, 6
TAG431:
andi $2, $3, 1
sll $1, $3, 7
lui $1, 3
bltz $2, TAG432
TAG432:
sll $0, $0, 0
lui $2, 3
multu $1, $1
lui $3, 1
TAG433:
lui $4, 0
sll $0, $0, 0
xori $4, $3, 0
sll $0, $0, 0
TAG434:
mfhi $4
bgtz $4, TAG435
mflo $2
bgtz $4, TAG435
TAG435:
lb $2, 0($2)
lui $3, 4
lui $3, 11
mtlo $2
TAG436:
srlv $3, $3, $3
mflo $4
mtlo $3
sll $0, $0, 0
TAG437:
lhu $2, 0($4)
mflo $2
lui $4, 3
sll $0, $0, 0
TAG438:
sll $0, $0, 0
and $1, $2, $1
multu $1, $1
mflo $3
TAG439:
multu $3, $3
sltiu $1, $3, 6
mfhi $2
sw $3, 0($3)
TAG440:
slt $2, $2, $2
nor $2, $2, $2
beq $2, $2, TAG441
mfhi $3
TAG441:
sll $1, $3, 11
mult $3, $1
beq $3, $1, TAG442
sll $3, $3, 6
TAG442:
sub $1, $3, $3
or $1, $1, $3
sll $1, $3, 9
beq $1, $1, TAG443
TAG443:
mthi $1
multu $1, $1
sb $1, 0($1)
mflo $3
TAG444:
and $4, $3, $3
lui $2, 15
and $2, $3, $3
slti $4, $3, 4
TAG445:
mtlo $4
blez $4, TAG446
mult $4, $4
mflo $1
TAG446:
lbu $4, 0($1)
bne $1, $4, TAG447
lbu $2, 0($4)
sw $4, 0($2)
TAG447:
multu $2, $2
mult $2, $2
lui $4, 7
lui $4, 7
TAG448:
srl $1, $4, 2
andi $4, $1, 4
srl $4, $1, 7
lui $3, 5
TAG449:
bgez $3, TAG450
mult $3, $3
bltz $3, TAG450
sltiu $4, $3, 14
TAG450:
addiu $3, $4, 0
mflo $4
sw $4, 0($4)
sw $3, 0($4)
TAG451:
sw $4, 0($4)
bne $4, $4, TAG452
mthi $4
slt $4, $4, $4
TAG452:
sllv $2, $4, $4
srav $3, $4, $4
mtlo $4
bne $4, $3, TAG453
TAG453:
sw $3, 0($3)
mthi $3
sw $3, 0($3)
mtlo $3
TAG454:
blez $3, TAG455
lui $4, 13
lui $3, 8
lui $1, 1
TAG455:
mflo $2
sll $0, $0, 0
mflo $1
lui $1, 14
TAG456:
lui $3, 9
multu $1, $3
sll $0, $0, 0
bltz $1, TAG457
TAG457:
lui $3, 15
sll $0, $0, 0
divu $3, $3
blez $3, TAG458
TAG458:
mult $3, $3
sll $0, $0, 0
mflo $2
sh $2, 0($2)
TAG459:
xori $4, $2, 2
sw $4, 0($2)
mfhi $1
lh $1, 0($4)
TAG460:
blez $1, TAG461
lui $2, 13
sb $2, 0($2)
nor $4, $1, $2
TAG461:
blez $4, TAG462
mflo $2
sh $4, 0($4)
sh $2, 0($4)
TAG462:
bgtz $2, TAG463
subu $1, $2, $2
sll $2, $1, 11
nor $4, $1, $2
TAG463:
mtlo $4
slti $3, $4, 9
mtlo $4
blez $3, TAG464
TAG464:
slt $4, $3, $3
bne $4, $3, TAG465
lui $2, 2
lh $4, 0($2)
TAG465:
lui $2, 15
addiu $4, $2, 9
bgez $2, TAG466
sll $0, $0, 0
TAG466:
beq $4, $4, TAG467
sll $0, $0, 0
beq $4, $4, TAG467
lhu $3, 0($4)
TAG467:
lbu $1, 0($3)
mult $1, $3
div $1, $3
blez $3, TAG468
TAG468:
and $3, $1, $1
mthi $3
lbu $1, 0($3)
sw $3, 0($3)
TAG469:
lhu $3, 0($1)
slti $1, $3, 3
xori $2, $3, 9
sb $1, 0($1)
TAG470:
lb $1, 0($2)
lb $2, 0($1)
lbu $1, 0($1)
sub $2, $2, $1
TAG471:
srlv $1, $2, $2
mfhi $3
xor $3, $2, $3
sra $4, $1, 3
TAG472:
and $4, $4, $4
nor $2, $4, $4
divu $4, $2
lui $2, 12
TAG473:
lui $2, 10
lui $3, 8
lui $3, 4
xor $1, $2, $2
TAG474:
beq $1, $1, TAG475
mfhi $1
divu $1, $1
beq $1, $1, TAG475
TAG475:
lh $1, 0($1)
bltz $1, TAG476
lhu $2, -256($1)
bgtz $1, TAG476
TAG476:
addiu $4, $2, 1
lh $1, -256($2)
subu $1, $4, $1
subu $1, $1, $4
TAG477:
blez $1, TAG478
lui $4, 0
sh $4, 0($1)
bltz $1, TAG478
TAG478:
multu $4, $4
mtlo $4
sw $4, 0($4)
mfhi $1
TAG479:
mult $1, $1
mflo $2
lui $2, 11
sllv $1, $2, $2
TAG480:
sltu $3, $1, $1
addu $4, $3, $3
sw $1, 0($3)
mfhi $3
TAG481:
bne $3, $3, TAG482
sb $3, 0($3)
bne $3, $3, TAG482
sh $3, 0($3)
TAG482:
xor $2, $3, $3
bgtz $2, TAG483
mthi $2
sw $2, 0($3)
TAG483:
mfhi $2
ori $2, $2, 15
mult $2, $2
nor $1, $2, $2
TAG484:
bne $1, $1, TAG485
divu $1, $1
mthi $1
mtlo $1
TAG485:
sltiu $4, $1, 4
mult $4, $4
mflo $2
slti $4, $2, 4
TAG486:
div $4, $4
subu $3, $4, $4
mtlo $4
blez $3, TAG487
TAG487:
mthi $3
lbu $3, 0($3)
and $3, $3, $3
multu $3, $3
TAG488:
lh $1, 0($3)
add $1, $1, $1
multu $3, $1
bne $1, $1, TAG489
TAG489:
lui $1, 13
beq $1, $1, TAG490
mult $1, $1
div $1, $1
TAG490:
bltz $1, TAG491
mflo $2
and $1, $2, $1
bltz $1, TAG491
TAG491:
addiu $4, $1, 14
mfhi $4
mult $1, $4
lui $1, 6
TAG492:
bgez $1, TAG493
ori $2, $1, 1
lui $3, 7
lb $2, 0($3)
TAG493:
srlv $1, $2, $2
sll $0, $0, 0
bne $2, $2, TAG494
sll $0, $0, 0
TAG494:
srav $3, $4, $4
bgtz $4, TAG495
andi $3, $3, 4
sw $3, 0($3)
TAG495:
lui $3, 3
beq $3, $3, TAG496
lui $4, 4
blez $3, TAG496
TAG496:
addiu $3, $4, 0
sll $0, $0, 0
or $3, $4, $3
mfhi $3
TAG497:
mfhi $4
mtlo $3
mflo $3
lhu $1, 0($4)
TAG498:
nor $3, $1, $1
xori $4, $3, 2
ori $1, $1, 8
mthi $1
TAG499:
mtlo $1
sh $1, 0($1)
beq $1, $1, TAG500
lh $4, 0($1)
TAG500:
mult $4, $4
lhu $2, 0($4)
sb $4, 0($2)
beq $2, $4, TAG501
TAG501:
sb $2, 0($2)
bne $2, $2, TAG502
sltiu $3, $2, 7
sllv $1, $3, $2
TAG502:
bne $1, $1, TAG503
sra $1, $1, 5
mult $1, $1
srl $2, $1, 4
TAG503:
mflo $1
mtlo $2
lh $2, 0($2)
srl $1, $1, 2
TAG504:
mfhi $2
mflo $2
sw $2, 0($1)
mthi $1
TAG505:
bne $2, $2, TAG506
xori $2, $2, 1
bltz $2, TAG506
ori $3, $2, 0
TAG506:
lbu $1, 0($3)
mfhi $4
beq $3, $1, TAG507
lw $1, 0($1)
TAG507:
lh $3, 0($1)
xor $1, $3, $3
and $4, $3, $1
beq $4, $1, TAG508
TAG508:
lui $1, 4
sb $4, 0($4)
sll $0, $0, 0
sb $1, 0($4)
TAG509:
blez $1, TAG510
mflo $4
beq $4, $1, TAG510
mult $1, $4
TAG510:
mthi $4
mult $4, $4
lhu $2, 0($4)
multu $2, $4
TAG511:
beq $2, $2, TAG512
addi $4, $2, 6
subu $4, $4, $2
mtlo $4
TAG512:
bgez $4, TAG513
divu $4, $4
lui $2, 5
divu $2, $2
TAG513:
slti $4, $2, 6
sb $4, 0($4)
lw $1, 0($2)
mfhi $3
TAG514:
multu $3, $3
mult $3, $3
bgtz $3, TAG515
lui $3, 10
TAG515:
lui $3, 14
mflo $1
mflo $1
sll $0, $0, 0
TAG516:
multu $1, $1
mfhi $2
and $2, $2, $2
mtlo $1
TAG517:
blez $2, TAG518
sb $2, 0($2)
mfhi $2
sw $2, 0($2)
TAG518:
bltz $2, TAG519
addu $4, $2, $2
bgez $4, TAG519
lhu $2, 0($4)
TAG519:
srav $2, $2, $2
beq $2, $2, TAG520
addiu $3, $2, 5
bgez $2, TAG520
TAG520:
mflo $3
sh $3, 0($3)
mtlo $3
bne $3, $3, TAG521
TAG521:
and $4, $3, $3
mfhi $3
sb $3, 0($4)
xori $2, $3, 0
TAG522:
lhu $1, 0($2)
addi $1, $2, 8
lh $3, 0($1)
bne $2, $3, TAG523
TAG523:
mflo $3
lui $1, 10
lw $2, 0($3)
bgez $1, TAG524
TAG524:
addi $3, $2, 2
mtlo $3
sh $3, 0($2)
lb $2, 0($3)
TAG525:
bne $2, $2, TAG526
xori $1, $2, 10
bgtz $2, TAG526
sb $1, 0($2)
TAG526:
mult $1, $1
beq $1, $1, TAG527
mflo $4
mflo $1
TAG527:
sb $1, 0($1)
sb $1, 0($1)
multu $1, $1
divu $1, $1
TAG528:
bne $1, $1, TAG529
sll $1, $1, 8
and $3, $1, $1
xori $3, $1, 7
TAG529:
sll $0, $0, 0
blez $3, TAG530
srlv $2, $3, $3
mfhi $3
TAG530:
slt $2, $3, $3
sb $3, 0($2)
bne $2, $2, TAG531
lw $2, 0($2)
TAG531:
bgez $2, TAG532
multu $2, $2
lh $3, 0($2)
bne $2, $2, TAG532
TAG532:
multu $3, $3
bne $3, $3, TAG533
addi $3, $3, 15
lbu $4, 0($3)
TAG533:
lw $1, 0($4)
mult $4, $4
sh $4, 0($4)
sh $1, 0($4)
TAG534:
lh $4, 0($1)
mtlo $4
lh $3, 0($4)
sh $1, 0($3)
TAG535:
subu $3, $3, $3
and $2, $3, $3
bne $3, $3, TAG536
lhu $1, 0($2)
TAG536:
bne $1, $1, TAG537
mfhi $3
beq $3, $3, TAG537
mtlo $1
TAG537:
mthi $3
sw $3, 0($3)
lui $3, 10
mult $3, $3
TAG538:
and $2, $3, $3
beq $2, $3, TAG539
sra $3, $3, 7
mtlo $2
TAG539:
lui $1, 5
mflo $1
sh $1, 0($1)
lui $3, 2
TAG540:
bgtz $3, TAG541
lui $3, 5
div $3, $3
lbu $3, 0($3)
TAG541:
sll $0, $0, 0
bne $3, $3, TAG542
div $4, $3
beq $4, $3, TAG542
TAG542:
multu $4, $4
bne $4, $4, TAG543
sw $4, 0($4)
lb $1, 0($4)
TAG543:
bltz $1, TAG544
sh $1, 0($1)
multu $1, $1
bne $1, $1, TAG544
TAG544:
lhu $1, 0($1)
beq $1, $1, TAG545
add $1, $1, $1
slti $2, $1, 10
TAG545:
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
srlv $2, $1, $4
TAG546:
beq $2, $2, TAG547
mult $2, $2
lui $2, 0
sll $2, $2, 15
TAG547:
sh $2, 0($2)
mthi $2
lui $4, 2
sllv $4, $2, $2
TAG548:
sb $4, 0($4)
beq $4, $4, TAG549
mthi $4
mthi $4
TAG549:
lui $1, 10
bltz $4, TAG550
mfhi $1
sh $4, 0($1)
TAG550:
xor $3, $1, $1
mtlo $1
sltiu $4, $3, 8
bne $4, $4, TAG551
TAG551:
mthi $4
mthi $4
sb $4, 0($4)
bne $4, $4, TAG552
TAG552:
srl $1, $4, 5
mflo $3
bne $1, $3, TAG553
sh $3, 0($1)
TAG553:
subu $2, $3, $3
lui $4, 8
sh $4, 0($3)
lui $2, 8
TAG554:
bne $2, $2, TAG555
sllv $1, $2, $2
lui $4, 10
sll $0, $0, 0
TAG555:
ori $1, $4, 1
mtlo $4
mult $4, $4
lui $2, 9
TAG556:
xor $2, $2, $2
bgtz $2, TAG557
lui $4, 5
sllv $4, $4, $2
TAG557:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
bgtz $4, TAG558
TAG558:
lh $4, 0($4)
mthi $4
addi $1, $4, 14
srl $2, $4, 3
TAG559:
slt $1, $2, $2
sw $1, 0($2)
lui $4, 6
multu $2, $1
TAG560:
mult $4, $4
nor $1, $4, $4
lui $4, 2
mthi $4
TAG561:
bne $4, $4, TAG562
divu $4, $4
srav $2, $4, $4
bne $2, $4, TAG562
TAG562:
lui $3, 8
divu $3, $3
xori $2, $3, 7
bne $2, $2, TAG563
TAG563:
multu $2, $2
bne $2, $2, TAG564
and $3, $2, $2
srl $4, $2, 4
TAG564:
xori $4, $4, 12
sll $0, $0, 0
beq $4, $4, TAG565
lui $4, 4
TAG565:
mfhi $1
mthi $4
sll $2, $4, 4
mfhi $1
TAG566:
xori $4, $1, 13
bltz $1, TAG567
sll $0, $0, 0
mflo $3
TAG567:
sll $0, $0, 0
beq $3, $3, TAG568
sll $0, $0, 0
lui $3, 0
TAG568:
lui $1, 3
beq $1, $1, TAG569
sllv $3, $1, $3
mfhi $1
TAG569:
sll $0, $0, 0
lui $4, 2
bgez $1, TAG570
sll $0, $0, 0
TAG570:
lw $3, 0($3)
sra $3, $3, 8
lh $1, 0($3)
multu $3, $1
TAG571:
beq $1, $1, TAG572
sw $1, 0($1)
mtlo $1
lb $1, 0($1)
TAG572:
mfhi $1
beq $1, $1, TAG573
addiu $4, $1, 9
lhu $3, 0($1)
TAG573:
slt $1, $3, $3
bne $3, $3, TAG574
xor $1, $3, $3
sh $1, 0($1)
TAG574:
lb $1, 0($1)
bgez $1, TAG575
srlv $2, $1, $1
mflo $4
TAG575:
divu $4, $4
beq $4, $4, TAG576
divu $4, $4
blez $4, TAG576
TAG576:
mtlo $4
bne $4, $4, TAG577
mfhi $3
mtlo $4
TAG577:
bne $3, $3, TAG578
mult $3, $3
lui $4, 6
blez $4, TAG578
TAG578:
sll $0, $0, 0
lui $3, 11
subu $3, $4, $3
sll $0, $0, 0
TAG579:
bgtz $3, TAG580
xori $3, $3, 0
bltz $3, TAG580
subu $3, $3, $3
TAG580:
mtlo $3
xori $4, $3, 1
div $3, $4
sltiu $4, $3, 7
TAG581:
bgez $4, TAG582
sllv $1, $4, $4
mthi $4
sb $1, 0($1)
TAG582:
mfhi $4
lh $3, 0($4)
beq $3, $1, TAG583
mfhi $1
TAG583:
mtlo $1
lh $1, 0($1)
mult $1, $1
ori $1, $1, 10
TAG584:
sb $1, 0($1)
bne $1, $1, TAG585
sh $1, 0($1)
mtlo $1
TAG585:
lb $1, 0($1)
subu $4, $1, $1
slti $3, $1, 5
beq $4, $1, TAG586
TAG586:
lui $1, 4
beq $3, $3, TAG587
multu $1, $3
bltz $1, TAG587
TAG587:
slti $4, $1, 15
sltu $3, $1, $4
mflo $1
mthi $3
TAG588:
lh $1, 0($1)
sb $1, 0($1)
xori $1, $1, 12
slti $4, $1, 3
TAG589:
multu $4, $4
mthi $4
lui $4, 10
div $4, $4
TAG590:
sll $0, $0, 0
mfhi $3
sltu $4, $3, $4
addiu $1, $4, 2
TAG591:
mthi $1
lui $2, 5
slti $3, $1, 14
beq $2, $2, TAG592
TAG592:
mfhi $4
addu $3, $3, $3
divu $3, $3
lui $4, 0
TAG593:
multu $4, $4
lhu $4, 0($4)
sub $3, $4, $4
multu $4, $3
TAG594:
bgez $3, TAG595
sh $3, 0($3)
lui $3, 8
blez $3, TAG595
TAG595:
sw $3, 0($3)
sh $3, 0($3)
lui $1, 1
blez $3, TAG596
TAG596:
lui $4, 14
bne $4, $1, TAG597
sll $0, $0, 0
bne $1, $1, TAG597
TAG597:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
lh $4, 0($3)
TAG598:
mfhi $2
sb $2, 0($2)
sb $2, 0($2)
lui $2, 9
TAG599:
xor $1, $2, $2
sltu $1, $2, $1
mflo $4
mthi $4
TAG600:
mfhi $2
lbu $4, 0($4)
mthi $4
blez $2, TAG601
TAG601:
multu $4, $4
bne $4, $4, TAG602
srlv $2, $4, $4
mfhi $1
TAG602:
beq $1, $1, TAG603
multu $1, $1
sh $1, 0($1)
mflo $2
TAG603:
blez $2, TAG604
lui $2, 8
lui $3, 12
mtlo $3
TAG604:
lui $1, 8
andi $3, $3, 11
mflo $2
beq $3, $1, TAG605
TAG605:
lui $4, 7
mflo $2
lbu $4, 0($2)
mtlo $4
TAG606:
lui $1, 7
bne $1, $4, TAG607
divu $1, $1
lui $1, 14
TAG607:
multu $1, $1
addu $3, $1, $1
mflo $1
mfhi $1
TAG608:
div $1, $1
divu $1, $1
divu $1, $1
mfhi $2
TAG609:
lui $2, 8
mflo $4
addiu $1, $2, 11
bne $4, $4, TAG610
TAG610:
sll $0, $0, 0
lui $1, 7
lui $3, 8
sll $0, $0, 0
TAG611:
beq $3, $3, TAG612
xor $2, $3, $3
lui $4, 1
mflo $4
TAG612:
beq $4, $4, TAG613
sb $4, 0($4)
lui $2, 5
addu $2, $2, $4
TAG613:
blez $2, TAG614
srav $2, $2, $2
bgez $2, TAG614
lui $2, 9
TAG614:
bltz $2, TAG615
sw $2, 0($2)
mfhi $1
mthi $2
TAG615:
lhu $4, 0($1)
lui $3, 9
sh $3, 0($4)
mtlo $4
TAG616:
lui $4, 10
and $1, $4, $3
blez $1, TAG617
subu $2, $1, $4
TAG617:
divu $2, $2
sll $0, $0, 0
mtlo $3
srav $2, $2, $3
TAG618:
beq $2, $2, TAG619
sll $0, $0, 0
srav $3, $2, $2
lb $1, 0($3)
TAG619:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
lui $2, 11
TAG620:
bgez $2, TAG621
sll $4, $2, 3
addiu $2, $4, 14
mthi $4
TAG621:
mthi $2
mfhi $1
lui $3, 11
sltu $4, $2, $3
TAG622:
sll $1, $4, 3
mult $4, $1
add $3, $1, $1
bgez $1, TAG623
TAG623:
mthi $3
or $2, $3, $3
bne $3, $3, TAG624
sw $2, 0($2)
TAG624:
beq $2, $2, TAG625
mflo $3
srl $3, $2, 13
bgtz $2, TAG625
TAG625:
mfhi $1
lui $2, 15
bltz $3, TAG626
addu $1, $3, $3
TAG626:
addi $3, $1, 6
lb $1, 0($1)
bltz $1, TAG627
sh $1, 0($1)
TAG627:
mtlo $1
lbu $4, 0($1)
sh $4, 0($4)
lui $1, 9
TAG628:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG629
mthi $2
TAG629:
mfhi $1
and $1, $2, $1
and $2, $1, $2
bltz $2, TAG630
TAG630:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $2, 3
addiu $3, $2, 0
TAG631:
bltz $3, TAG632
multu $3, $3
mthi $3
lui $2, 14
TAG632:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
sw $4, 0($4)
TAG633:
mflo $4
lbu $1, 0($4)
multu $4, $1
lui $3, 12
TAG634:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG635:
lui $3, 4
bltz $3, TAG636
mult $1, $1
multu $3, $3
TAG636:
mflo $1
beq $1, $3, TAG637
lui $2, 9
mfhi $3
TAG637:
mtlo $3
lbu $4, 0($3)
lw $2, 0($3)
bltz $3, TAG638
TAG638:
mult $2, $2
sb $2, 0($2)
bgez $2, TAG639
divu $2, $2
TAG639:
sb $2, 0($2)
lbu $1, 0($2)
lui $3, 9
beq $2, $2, TAG640
TAG640:
sll $0, $0, 0
blez $3, TAG641
div $3, $3
bgtz $3, TAG641
TAG641:
or $4, $3, $3
bgtz $3, TAG642
mflo $3
mflo $3
TAG642:
addiu $1, $3, 10
sb $1, 0($3)
bne $1, $1, TAG643
lb $4, 0($1)
TAG643:
lb $3, 0($4)
bgez $3, TAG644
mfhi $2
mthi $3
TAG644:
multu $2, $2
lui $2, 7
mtlo $2
mthi $2
TAG645:
sll $0, $0, 0
sll $0, $0, 0
xori $1, $1, 8
beq $1, $1, TAG646
TAG646:
mfhi $4
mfhi $4
mfhi $4
divu $1, $4
TAG647:
bgez $4, TAG648
sll $4, $4, 0
mfhi $2
slti $2, $4, 10
TAG648:
addiu $4, $2, 13
mfhi $2
lbu $4, 0($2)
mult $4, $4
TAG649:
mtlo $4
sub $3, $4, $4
mfhi $4
lw $3, 0($4)
TAG650:
sh $3, -2816($3)
mthi $3
mfhi $1
beq $3, $1, TAG651
TAG651:
div $1, $1
beq $1, $1, TAG652
lui $1, 2
bne $1, $1, TAG652
TAG652:
srl $2, $1, 7
sw $1, -1024($2)
lui $3, 10
xori $3, $1, 11
TAG653:
mfhi $2
lui $1, 12
lui $1, 15
sll $0, $0, 0
TAG654:
blez $3, TAG655
slt $2, $3, $3
mult $3, $2
mflo $1
TAG655:
mflo $1
srl $2, $1, 11
mfhi $3
bgez $1, TAG656
TAG656:
mthi $3
lw $2, 0($3)
lui $2, 15
mflo $3
TAG657:
blez $3, TAG658
lui $1, 7
addiu $4, $1, 4
bgez $1, TAG658
TAG658:
sll $1, $4, 1
mtlo $1
mthi $1
sllv $4, $4, $1
TAG659:
bne $4, $4, TAG660
addu $1, $4, $4
mtlo $4
mult $1, $4
TAG660:
lui $4, 7
sllv $4, $4, $1
subu $3, $4, $4
lui $3, 1
TAG661:
blez $3, TAG662
sra $1, $3, 10
addu $4, $3, $3
sll $0, $0, 0
TAG662:
sll $0, $0, 0
subu $1, $3, $4
mflo $3
mthi $3
TAG663:
multu $3, $3
sw $3, 0($3)
mtlo $3
sb $3, 0($3)
TAG664:
slti $2, $3, 10
blez $2, TAG665
sllv $3, $3, $2
nor $4, $3, $2
TAG665:
mthi $4
mtlo $4
mflo $1
bltz $1, TAG666
TAG666:
nor $4, $1, $1
beq $4, $1, TAG667
lui $2, 0
sra $3, $4, 8
TAG667:
beq $3, $3, TAG668
mult $3, $3
mfhi $2
beq $3, $3, TAG668
TAG668:
lh $1, 0($2)
sw $1, 0($2)
lw $2, 0($2)
beq $2, $1, TAG669
TAG669:
lw $3, 0($2)
bne $2, $2, TAG670
mthi $2
bltz $3, TAG670
TAG670:
mult $3, $3
mtlo $3
sb $3, 0($3)
lui $3, 6
TAG671:
mthi $3
sll $0, $0, 0
subu $1, $3, $3
srlv $2, $3, $3
TAG672:
or $4, $2, $2
bne $4, $4, TAG673
sll $0, $0, 0
divu $2, $2
TAG673:
sll $0, $0, 0
bne $4, $4, TAG674
slt $3, $4, $4
mflo $4
TAG674:
bgez $4, TAG675
mflo $1
mfhi $3
lui $3, 1
TAG675:
blez $3, TAG676
sltiu $2, $3, 8
sltiu $1, $2, 8
lhu $4, 0($2)
TAG676:
mflo $1
sb $4, 0($4)
lui $4, 14
mflo $4
TAG677:
sb $4, 0($4)
bgtz $4, TAG678
sltiu $2, $4, 15
mfhi $4
TAG678:
lb $4, 0($4)
divu $4, $4
divu $4, $4
sll $4, $4, 14
TAG679:
mtlo $4
sh $4, -16384($4)
multu $4, $4
sllv $2, $4, $4
TAG680:
beq $2, $2, TAG681
ori $2, $2, 8
mflo $2
sw $2, 0($2)
TAG681:
mult $2, $2
sb $2, -16392($2)
mfhi $2
mult $2, $2
TAG682:
mflo $4
lui $2, 4
divu $4, $2
bgez $2, TAG683
TAG683:
mtlo $2
bne $2, $2, TAG684
sll $2, $2, 9
divu $2, $2
TAG684:
sll $0, $0, 0
mfhi $4
addi $2, $4, 10
bne $2, $2, TAG685
TAG685:
lui $4, 6
srav $4, $4, $2
lhu $4, -384($4)
bgez $4, TAG686
TAG686:
lui $1, 9
beq $4, $1, TAG687
sra $2, $1, 14
andi $4, $1, 12
TAG687:
mult $4, $4
bgez $4, TAG688
mthi $4
beq $4, $4, TAG688
TAG688:
mthi $4
lui $2, 9
mtlo $4
sb $4, 0($4)
TAG689:
mtlo $2
beq $2, $2, TAG690
mthi $2
mflo $4
TAG690:
mtlo $4
or $3, $4, $4
or $3, $3, $4
mult $3, $3
TAG691:
mfhi $3
lb $4, 0($3)
mthi $3
mfhi $4
TAG692:
mfhi $2
sb $4, 0($2)
sw $2, 0($2)
beq $2, $2, TAG693
TAG693:
mfhi $1
lhu $3, 0($2)
beq $3, $3, TAG694
mthi $1
TAG694:
addiu $1, $3, 6
mthi $3
srl $2, $1, 0
bltz $2, TAG695
TAG695:
lhu $4, 0($2)
lh $3, -1798($4)
bne $2, $2, TAG696
addu $2, $4, $4
TAG696:
sw $2, -3596($2)
mthi $2
sh $2, -3596($2)
mflo $3
TAG697:
multu $3, $3
blez $3, TAG698
mult $3, $3
mflo $2
TAG698:
mfhi $4
addiu $1, $2, 6
addu $3, $4, $4
lui $4, 1
TAG699:
andi $3, $4, 4
bne $3, $3, TAG700
mfhi $2
mflo $3
TAG700:
sw $3, 0($3)
lui $4, 7
multu $4, $4
beq $4, $4, TAG701
TAG701:
mflo $1
bgez $4, TAG702
xori $3, $4, 4
bne $4, $1, TAG702
TAG702:
lui $2, 10
slt $2, $3, $2
lui $3, 7
mtlo $3
TAG703:
sra $1, $3, 13
bgtz $1, TAG704
mult $3, $1
andi $2, $3, 10
TAG704:
bne $2, $2, TAG705
mthi $2
lbu $3, 0($2)
lui $3, 6
TAG705:
sll $0, $0, 0
mtlo $3
slt $4, $3, $4
div $3, $4
TAG706:
xori $1, $4, 10
lui $1, 3
mflo $2
lui $4, 11
TAG707:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
mtlo $4
TAG708:
sll $0, $0, 0
mtlo $2
bne $2, $4, TAG709
lui $3, 8
TAG709:
div $3, $3
mflo $3
bgtz $3, TAG710
mtlo $3
TAG710:
or $4, $3, $3
mflo $4
div $4, $3
beq $3, $3, TAG711
TAG711:
div $4, $4
subu $4, $4, $4
mflo $4
bgez $4, TAG712
TAG712:
andi $1, $4, 3
slti $1, $4, 1
addiu $3, $4, 10
blez $1, TAG713
TAG713:
mthi $3
lui $4, 15
mtlo $4
bne $3, $4, TAG714
TAG714:
divu $4, $4
xori $2, $4, 15
sll $0, $0, 0
xori $2, $1, 0
TAG715:
beq $2, $2, TAG716
sw $2, 0($2)
multu $2, $2
sw $2, 0($2)
TAG716:
lui $4, 10
bgez $4, TAG717
lui $2, 15
bne $4, $4, TAG717
TAG717:
sll $4, $2, 13
div $4, $4
sll $0, $0, 0
bgez $1, TAG718
TAG718:
xori $3, $1, 8
xor $1, $3, $3
srlv $4, $1, $3
xori $2, $3, 8
TAG719:
beq $2, $2, TAG720
sltiu $4, $2, 3
divu $2, $4
lui $1, 2
TAG720:
srl $1, $1, 6
mtlo $1
blez $1, TAG721
lbu $3, 0($1)
TAG721:
lw $4, 0($3)
mtlo $4
lb $2, 0($4)
slti $2, $2, 11
TAG722:
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
mfhi $4
TAG723:
beq $4, $4, TAG724
mfhi $4
mthi $4
lui $3, 15
TAG724:
mthi $3
sh $3, 0($3)
sh $3, 0($3)
sh $3, 0($3)
TAG725:
beq $3, $3, TAG726
xor $1, $3, $3
lui $4, 13
lh $2, 0($1)
TAG726:
bltz $2, TAG727
mthi $2
mflo $3
lbu $3, 0($2)
TAG727:
lui $1, 0
bne $1, $3, TAG728
lui $4, 9
subu $2, $4, $3
TAG728:
subu $4, $2, $2
bne $4, $4, TAG729
mtlo $4
sll $4, $2, 5
TAG729:
divu $4, $4
xori $2, $4, 6
divu $4, $4
mfhi $3
TAG730:
bgez $3, TAG731
lui $3, 9
sltiu $1, $3, 7
sb $3, 0($3)
TAG731:
and $4, $1, $1
bgez $1, TAG732
lui $2, 13
mthi $2
TAG732:
sll $0, $0, 0
ori $4, $2, 9
divu $2, $2
bgez $2, TAG733
TAG733:
addu $4, $4, $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG734:
addu $1, $3, $3
mfhi $3
ori $2, $3, 12
addiu $1, $3, 11
TAG735:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG736
sll $0, $0, 0
TAG736:
sll $0, $0, 0
mthi $1
mflo $1
lui $1, 5
TAG737:
nor $1, $1, $1
sll $0, $0, 0
mthi $1
mtlo $1
TAG738:
sltu $2, $1, $1
lui $4, 7
multu $1, $4
lh $3, 0($2)
TAG739:
lb $1, 0($3)
sw $3, 0($3)
mthi $1
beq $3, $3, TAG740
TAG740:
srl $3, $1, 13
sub $1, $1, $1
mult $1, $1
lui $4, 11
TAG741:
bgtz $4, TAG742
sllv $3, $4, $4
mthi $4
mfhi $4
TAG742:
mfhi $1
slti $1, $4, 4
bne $1, $1, TAG743
div $4, $4
TAG743:
bltz $1, TAG744
andi $4, $1, 11
multu $4, $4
multu $1, $1
TAG744:
blez $4, TAG745
addiu $2, $4, 10
nor $1, $4, $2
div $4, $2
TAG745:
lui $2, 10
mfhi $4
multu $2, $1
mfhi $3
TAG746:
mflo $1
bgtz $1, TAG747
mult $3, $1
mfhi $3
TAG747:
sh $3, 0($3)
mthi $3
bltz $3, TAG748
multu $3, $3
TAG748:
addiu $2, $3, 10
subu $2, $2, $2
mtlo $3
sh $2, 0($3)
TAG749:
ori $1, $2, 6
lbu $3, 0($2)
lbu $1, 0($1)
sllv $1, $3, $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop