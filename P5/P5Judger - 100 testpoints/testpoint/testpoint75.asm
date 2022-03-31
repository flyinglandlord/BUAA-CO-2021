ori $1, $0, 3
ori $2, $0, 2
ori $3, $0, 14
ori $4, $0, 2
sw $2, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $4, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $2, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $2, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $4, 124($0)
addiu $4, $2, 10
mflo $1
beq $4, $1, TAG1
srlv $2, $2, $4
TAG1:
mtlo $2
slti $3, $2, 3
beq $2, $3, TAG2
mthi $3
TAG2:
lui $2, 9
mflo $2
sh $3, 0($2)
lui $2, 13
TAG3:
subu $4, $2, $2
bltz $4, TAG4
srav $1, $4, $2
lbu $4, 0($1)
TAG4:
mtlo $4
addu $1, $4, $4
addu $1, $1, $4
div $4, $1
TAG5:
mtlo $1
xor $3, $1, $1
beq $1, $1, TAG6
lui $4, 6
TAG6:
ori $3, $4, 2
lui $2, 0
div $2, $3
sll $0, $0, 0
TAG7:
bgez $2, TAG8
sw $2, 0($2)
beq $2, $2, TAG8
mflo $4
TAG8:
mflo $3
sll $0, $0, 0
mult $3, $4
sw $3, 0($3)
TAG9:
mtlo $2
mtlo $2
beq $2, $2, TAG10
lui $2, 6
TAG10:
sll $0, $0, 0
lui $1, 6
xori $2, $1, 14
mfhi $4
TAG11:
and $1, $4, $4
sltu $2, $1, $4
lui $4, 6
multu $4, $1
TAG12:
lui $2, 5
mtlo $2
bgtz $4, TAG13
div $2, $2
TAG13:
bne $2, $2, TAG14
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG14:
lui $4, 15
lhu $1, 0($3)
mtlo $3
subu $4, $3, $1
TAG15:
sh $4, 0($4)
bltz $4, TAG16
mthi $4
lui $3, 14
TAG16:
sltiu $3, $3, 5
multu $3, $3
lui $1, 4
mflo $3
TAG17:
slt $1, $3, $3
sh $3, 0($1)
mult $1, $3
slti $4, $3, 7
TAG18:
lui $2, 9
lbu $1, 0($4)
mfhi $1
lui $2, 2
TAG19:
divu $2, $2
lui $3, 1
divu $2, $3
bgtz $3, TAG20
TAG20:
sll $0, $0, 0
mthi $3
lui $2, 13
divu $2, $2
TAG21:
mult $2, $2
bgez $2, TAG22
mflo $1
slti $4, $1, 11
TAG22:
mthi $4
bne $4, $4, TAG23
lui $1, 10
lbu $2, 0($4)
TAG23:
mtlo $2
mfhi $1
and $4, $2, $2
xori $3, $1, 1
TAG24:
sll $3, $3, 15
mfhi $4
addiu $2, $3, 4
or $4, $4, $2
TAG25:
mtlo $4
lui $1, 12
lb $1, 0($4)
mfhi $3
TAG26:
or $3, $3, $3
mult $3, $3
srlv $1, $3, $3
lui $1, 1
TAG27:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
addiu $3, $1, 8
TAG28:
sll $0, $0, 0
div $3, $3
addiu $4, $1, 13
sll $0, $0, 0
TAG29:
mtlo $4
xori $1, $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG30:
sll $3, $1, 7
sll $0, $0, 0
sll $0, $0, 0
lui $3, 10
TAG31:
sll $0, $0, 0
divu $2, $3
sll $0, $0, 0
nor $3, $3, $2
TAG32:
mfhi $3
sh $3, 0($3)
srl $3, $3, 7
lh $1, 0($3)
TAG33:
bne $1, $1, TAG34
mult $1, $1
sub $4, $1, $1
lb $4, 0($4)
TAG34:
mtlo $4
xori $1, $4, 1
lui $3, 8
bltz $1, TAG35
TAG35:
mfhi $4
mflo $1
mfhi $1
mthi $3
TAG36:
bltz $1, TAG37
lui $2, 12
mtlo $2
mflo $2
TAG37:
beq $2, $2, TAG38
sll $0, $0, 0
lui $3, 9
bgez $2, TAG38
TAG38:
srlv $4, $3, $3
beq $4, $3, TAG39
sll $0, $0, 0
mflo $1
TAG39:
multu $1, $1
sltiu $1, $1, 15
bgtz $1, TAG40
multu $1, $1
TAG40:
mtlo $1
sra $1, $1, 10
bgez $1, TAG41
mult $1, $1
TAG41:
blez $1, TAG42
sh $1, 0($1)
bne $1, $1, TAG42
or $3, $1, $1
TAG42:
bne $3, $3, TAG43
mflo $4
lhu $1, 0($4)
bgtz $4, TAG43
TAG43:
addiu $3, $1, 5
sllv $1, $1, $3
div $1, $3
srlv $3, $3, $3
TAG44:
mflo $1
srl $3, $1, 2
sw $3, 0($3)
sh $1, 0($3)
TAG45:
sw $3, 0($3)
multu $3, $3
mfhi $1
srlv $4, $3, $3
TAG46:
ori $1, $4, 3
lui $4, 11
sll $0, $0, 0
beq $1, $1, TAG47
TAG47:
sllv $3, $4, $4
or $4, $4, $4
sll $0, $0, 0
nor $3, $4, $4
TAG48:
mthi $3
nor $2, $3, $3
sll $0, $0, 0
mflo $4
TAG49:
lw $1, 0($4)
multu $4, $4
sw $4, 0($4)
mult $1, $1
TAG50:
sh $1, 0($1)
bgez $1, TAG51
mthi $1
mtlo $1
TAG51:
bne $1, $1, TAG52
sll $2, $1, 1
lui $4, 12
lw $3, 0($1)
TAG52:
ori $2, $3, 9
lbu $4, 0($3)
mflo $2
lh $3, 0($2)
TAG53:
sllv $3, $3, $3
sh $3, 0($3)
bltz $3, TAG54
multu $3, $3
TAG54:
multu $3, $3
mfhi $4
lhu $3, 0($4)
mthi $3
TAG55:
sllv $1, $3, $3
bne $1, $1, TAG56
mult $3, $1
bne $1, $1, TAG56
TAG56:
sw $1, 0($1)
mfhi $2
mfhi $3
sb $3, 0($3)
TAG57:
multu $3, $3
bne $3, $3, TAG58
mtlo $3
sw $3, 0($3)
TAG58:
mthi $3
bne $3, $3, TAG59
mtlo $3
bne $3, $3, TAG59
TAG59:
lui $1, 2
sra $4, $3, 0
srav $2, $4, $3
bltz $1, TAG60
TAG60:
mflo $2
lui $1, 7
lui $1, 0
sw $2, 0($1)
TAG61:
mthi $1
lui $1, 2
srl $2, $1, 12
div $1, $1
TAG62:
lh $4, 0($2)
lbu $1, 0($2)
lui $4, 5
addiu $3, $2, 1
TAG63:
mflo $2
mfhi $3
sb $3, 0($3)
bne $3, $3, TAG64
TAG64:
lui $4, 8
mfhi $2
bgtz $4, TAG65
sw $2, 0($3)
TAG65:
blez $2, TAG66
lbu $4, 0($2)
bgez $4, TAG66
add $3, $2, $2
TAG66:
lhu $2, 0($3)
sra $2, $3, 11
sltiu $4, $3, 9
bltz $2, TAG67
TAG67:
lb $4, 0($4)
mflo $3
mthi $3
mthi $3
TAG68:
sb $3, 0($3)
sb $3, 0($3)
mthi $3
srl $3, $3, 5
TAG69:
mfhi $2
lui $1, 14
addu $2, $3, $2
lui $4, 11
TAG70:
mtlo $4
multu $4, $4
multu $4, $4
sltu $4, $4, $4
TAG71:
sw $4, 0($4)
lui $2, 12
mult $4, $4
bgtz $2, TAG72
TAG72:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG73:
bltz $3, TAG74
sll $3, $3, 10
mtlo $3
mtlo $3
TAG74:
mtlo $3
mtlo $3
andi $4, $3, 7
mfhi $4
TAG75:
srl $3, $4, 0
mflo $3
mult $3, $3
bgtz $3, TAG76
TAG76:
lui $4, 9
mflo $4
lui $4, 12
mflo $1
TAG77:
addiu $4, $1, 8
bltz $1, TAG78
lb $1, 0($4)
mflo $3
TAG78:
lb $3, 0($3)
mtlo $3
mfhi $2
beq $2, $3, TAG79
TAG79:
lh $4, 0($2)
multu $2, $4
bltz $4, TAG80
srav $1, $2, $2
TAG80:
multu $1, $1
lhu $2, 0($1)
lbu $1, 0($2)
mult $2, $1
TAG81:
mflo $2
bgtz $2, TAG82
mthi $1
lui $3, 10
TAG82:
beq $3, $3, TAG83
mtlo $3
mfhi $1
blez $3, TAG83
TAG83:
lb $3, 0($1)
sw $1, 0($3)
bne $1, $1, TAG84
mfhi $3
TAG84:
srlv $4, $3, $3
mthi $4
blez $4, TAG85
lui $1, 0
TAG85:
bne $1, $1, TAG86
slt $2, $1, $1
sb $2, 0($2)
beq $2, $2, TAG86
TAG86:
mthi $2
sb $2, 0($2)
lui $2, 9
srl $2, $2, 3
TAG87:
bltz $2, TAG88
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
TAG88:
blez $4, TAG89
mfhi $2
xori $2, $2, 11
srav $4, $4, $2
TAG89:
sh $4, 0($4)
lhu $1, 0($4)
xori $2, $4, 8
mult $4, $4
TAG90:
lhu $2, 0($2)
bltz $2, TAG91
divu $2, $2
blez $2, TAG91
TAG91:
lui $1, 2
divu $1, $2
srav $1, $1, $2
lui $4, 15
TAG92:
mtlo $4
mflo $3
beq $3, $4, TAG93
sll $0, $0, 0
TAG93:
divu $4, $4
sll $0, $0, 0
lui $2, 3
sll $0, $0, 0
TAG94:
lui $1, 14
beq $1, $2, TAG95
lui $2, 6
srav $2, $2, $1
TAG95:
addiu $4, $2, 12
div $4, $2
addiu $4, $4, 3
mtlo $4
TAG96:
mtlo $4
srlv $2, $4, $4
mfhi $2
sw $2, 0($2)
TAG97:
multu $2, $2
or $1, $2, $2
or $3, $1, $2
mfhi $4
TAG98:
bltz $4, TAG99
mult $4, $4
srav $3, $4, $4
lbu $4, 0($3)
TAG99:
lw $3, 0($4)
blez $3, TAG100
addiu $2, $4, 10
mfhi $1
TAG100:
mult $1, $1
sh $1, 0($1)
sltu $4, $1, $1
lw $3, 0($4)
TAG101:
addu $1, $3, $3
mtlo $1
lh $1, 0($3)
sh $1, 0($3)
TAG102:
mtlo $1
slti $1, $1, 5
beq $1, $1, TAG103
mult $1, $1
TAG103:
sltu $4, $1, $1
or $2, $1, $4
div $2, $1
mtlo $1
TAG104:
mthi $2
lui $4, 2
bne $4, $2, TAG105
lui $1, 11
TAG105:
bgtz $1, TAG106
div $1, $1
bgez $1, TAG106
sh $1, 0($1)
TAG106:
sll $0, $0, 0
nor $1, $1, $1
mtlo $1
sll $0, $0, 0
TAG107:
lui $2, 14
divu $2, $1
sra $2, $1, 6
slt $3, $1, $1
TAG108:
mtlo $3
sb $3, 0($3)
add $3, $3, $3
lui $2, 0
TAG109:
lui $4, 14
bltz $4, TAG110
mtlo $4
lui $3, 0
TAG110:
lui $4, 11
lui $4, 15
beq $4, $3, TAG111
lui $2, 4
TAG111:
sll $0, $0, 0
bne $1, $1, TAG112
multu $2, $1
bgez $2, TAG112
TAG112:
sll $0, $0, 0
lui $1, 9
xor $3, $4, $1
mflo $4
TAG113:
beq $4, $4, TAG114
mflo $4
and $3, $4, $4
sllv $3, $4, $4
TAG114:
nor $4, $3, $3
lui $2, 1
blez $3, TAG115
sll $0, $0, 0
TAG115:
mtlo $3
srlv $2, $3, $3
lui $2, 7
beq $2, $2, TAG116
TAG116:
mflo $2
mthi $2
mfhi $2
mtlo $2
TAG117:
beq $2, $2, TAG118
sltiu $4, $2, 2
lui $3, 6
lui $3, 1
TAG118:
mtlo $3
mflo $1
sra $2, $1, 9
sll $0, $0, 0
TAG119:
beq $2, $2, TAG120
sw $2, -768($2)
lb $3, 0($2)
bgez $3, TAG120
TAG120:
lui $1, 1
bne $3, $3, TAG121
mtlo $1
lui $4, 15
TAG121:
or $3, $4, $4
bgez $4, TAG122
lui $3, 9
mfhi $4
TAG122:
sll $0, $0, 0
addiu $1, $1, 10
sll $0, $0, 0
sll $0, $0, 0
TAG123:
mtlo $1
mfhi $4
divu $1, $1
nor $1, $1, $1
TAG124:
subu $1, $1, $1
multu $1, $1
mult $1, $1
xor $2, $1, $1
TAG125:
srlv $4, $2, $2
addi $2, $2, 0
bne $4, $2, TAG126
lb $1, 0($4)
TAG126:
sltu $4, $1, $1
lui $1, 14
or $3, $1, $1
sll $0, $0, 0
TAG127:
addu $2, $3, $3
mthi $3
divu $2, $2
mtlo $2
TAG128:
andi $2, $2, 9
lui $3, 4
multu $3, $2
multu $2, $2
TAG129:
srlv $3, $3, $3
div $3, $3
srl $3, $3, 5
blez $3, TAG130
TAG130:
addiu $3, $3, 4
sh $3, -8196($3)
bgtz $3, TAG131
sll $1, $3, 0
TAG131:
mflo $3
bne $1, $1, TAG132
lh $2, -8196($1)
bgez $2, TAG132
TAG132:
lui $4, 7
bne $2, $2, TAG133
mfhi $2
bgtz $2, TAG133
TAG133:
lui $2, 12
sll $0, $0, 0
lui $1, 0
sw $4, 0($1)
TAG134:
lui $1, 15
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
TAG135:
mflo $2
sll $0, $0, 0
bne $4, $4, TAG136
sb $2, 0($2)
TAG136:
mflo $4
blez $4, TAG137
lui $2, 4
mfhi $3
TAG137:
sh $3, 0($3)
srav $2, $3, $3
mfhi $2
lui $2, 10
TAG138:
multu $2, $2
divu $2, $2
bne $2, $2, TAG139
sll $0, $0, 0
TAG139:
and $3, $3, $3
srlv $4, $3, $3
lui $3, 6
mtlo $4
TAG140:
sll $0, $0, 0
lui $3, 0
blez $1, TAG141
mflo $3
TAG141:
bne $3, $3, TAG142
mult $3, $3
mult $3, $3
lui $2, 14
TAG142:
sll $0, $0, 0
mfhi $2
sw $1, 0($2)
multu $2, $2
TAG143:
mthi $2
mthi $2
lui $2, 9
mflo $3
TAG144:
mflo $2
sh $3, 0($2)
slt $3, $3, $3
mfhi $4
TAG145:
beq $4, $4, TAG146
andi $2, $4, 8
mflo $1
bne $4, $1, TAG146
TAG146:
multu $1, $1
mflo $1
sllv $3, $1, $1
bgtz $1, TAG147
TAG147:
lui $4, 8
sll $0, $0, 0
lh $2, 0($3)
sll $0, $0, 0
TAG148:
andi $3, $2, 8
beq $2, $2, TAG149
mfhi $1
mflo $4
TAG149:
sll $0, $0, 0
mthi $4
multu $3, $4
sw $3, 0($3)
TAG150:
mflo $2
mflo $4
sra $1, $4, 15
mflo $4
TAG151:
multu $4, $4
slti $3, $4, 10
sb $3, 0($3)
lw $4, 0($4)
TAG152:
bne $4, $4, TAG153
div $4, $4
addiu $3, $4, 4
beq $3, $3, TAG153
TAG153:
mfhi $2
mflo $2
lui $1, 14
sb $2, 0($2)
TAG154:
divu $1, $1
mfhi $4
beq $1, $4, TAG155
lh $2, 0($4)
TAG155:
lui $2, 6
lui $3, 12
mfhi $4
and $1, $2, $4
TAG156:
slti $2, $1, 7
lbu $3, 0($2)
sb $3, 0($2)
lhu $4, 0($1)
TAG157:
addiu $1, $4, 15
sb $4, -256($4)
bgez $1, TAG158
lui $3, 5
TAG158:
lui $3, 6
addu $3, $3, $3
xori $1, $3, 5
lui $3, 0
TAG159:
lbu $1, 0($3)
sw $1, 0($1)
and $2, $3, $1
lw $3, 0($2)
TAG160:
beq $3, $3, TAG161
mult $3, $3
sh $3, 0($3)
mthi $3
TAG161:
mult $3, $3
mthi $3
multu $3, $3
addu $3, $3, $3
TAG162:
lui $2, 1
lbu $1, 0($3)
mult $1, $3
lui $1, 14
TAG163:
sltiu $4, $1, 5
mthi $4
mfhi $3
mthi $3
TAG164:
mtlo $3
bne $3, $3, TAG165
sb $3, 0($3)
mfhi $4
TAG165:
multu $4, $4
mthi $4
mfhi $3
blez $3, TAG166
TAG166:
mfhi $3
multu $3, $3
sra $3, $3, 2
subu $2, $3, $3
TAG167:
mfhi $2
sh $2, 0($2)
and $4, $2, $2
lhu $3, 0($2)
TAG168:
lh $2, 0($3)
sra $3, $2, 9
andi $4, $2, 1
sh $3, 0($2)
TAG169:
slti $2, $4, 2
mfhi $2
lh $4, 0($4)
lb $4, 0($4)
TAG170:
multu $4, $4
lui $1, 5
mfhi $1
bne $4, $4, TAG171
TAG171:
lui $2, 8
andi $3, $2, 2
mthi $1
bgtz $2, TAG172
TAG172:
lui $2, 7
bgez $3, TAG173
mflo $4
subu $3, $3, $4
TAG173:
mtlo $3
bne $3, $3, TAG174
mflo $3
addi $3, $3, 7
TAG174:
xori $2, $3, 11
mflo $2
mtlo $3
mthi $3
TAG175:
multu $2, $2
bne $2, $2, TAG176
mflo $2
mthi $2
TAG176:
lhu $1, 0($2)
lh $1, 0($2)
bgez $2, TAG177
sll $2, $1, 15
TAG177:
add $1, $2, $2
srl $4, $2, 14
mthi $1
sw $2, 0($4)
TAG178:
lb $2, 0($4)
mtlo $4
bne $2, $4, TAG179
mtlo $2
TAG179:
bgez $2, TAG180
lui $4, 1
mult $4, $2
bltz $4, TAG180
TAG180:
sll $0, $0, 0
mfhi $4
sh $4, 0($4)
multu $4, $4
TAG181:
mult $4, $4
srav $4, $4, $4
lh $3, 0($4)
sra $2, $4, 11
TAG182:
mthi $2
mtlo $2
lhu $2, 0($2)
lbu $1, 0($2)
TAG183:
srl $2, $1, 3
srl $4, $2, 8
or $3, $1, $1
sub $4, $4, $2
TAG184:
mthi $4
mult $4, $4
mflo $4
sb $4, 0($4)
TAG185:
mfhi $3
ori $1, $3, 6
lui $3, 12
sll $0, $0, 0
TAG186:
sll $0, $0, 0
mthi $3
addiu $4, $3, 12
divu $4, $4
TAG187:
mthi $4
sll $0, $0, 0
addiu $2, $4, 7
bne $4, $4, TAG188
TAG188:
sll $0, $0, 0
sll $0, $0, 0
and $3, $4, $4
lui $1, 3
TAG189:
xori $2, $1, 12
multu $1, $1
mfhi $2
mfhi $3
TAG190:
mfhi $1
div $3, $3
mthi $1
subu $4, $3, $3
TAG191:
lui $2, 7
multu $2, $2
mflo $4
ori $3, $4, 10
TAG192:
lui $3, 9
sll $0, $0, 0
bltz $3, TAG193
slt $4, $4, $4
TAG193:
mtlo $4
lb $3, 0($4)
bne $3, $4, TAG194
sub $2, $3, $4
TAG194:
lhu $4, 0($2)
mult $4, $4
mtlo $4
sb $2, 0($2)
TAG195:
bgez $4, TAG196
sllv $1, $4, $4
sub $4, $1, $1
sh $4, 0($4)
TAG196:
bltz $4, TAG197
lbu $2, 0($4)
blez $4, TAG197
add $3, $2, $2
TAG197:
ori $2, $3, 14
beq $3, $3, TAG198
lb $3, 0($3)
lui $4, 5
TAG198:
bgtz $4, TAG199
lui $3, 11
lh $2, 0($4)
lui $4, 14
TAG199:
bltz $4, TAG200
sll $0, $0, 0
lui $3, 1
mflo $4
TAG200:
beq $4, $4, TAG201
mflo $4
sb $4, 0($4)
lui $1, 14
TAG201:
multu $1, $1
mfhi $4
mthi $4
beq $4, $4, TAG202
TAG202:
multu $4, $4
mult $4, $4
mfhi $4
mtlo $4
TAG203:
lb $3, 0($4)
mthi $3
lbu $3, 0($4)
lh $1, 0($3)
TAG204:
mthi $1
sltiu $2, $1, 9
sb $2, 0($2)
multu $2, $2
TAG205:
lb $3, 0($2)
and $3, $3, $3
andi $3, $2, 8
sltiu $2, $2, 10
TAG206:
lbu $1, 0($2)
mtlo $2
lui $2, 0
lhu $1, 0($2)
TAG207:
bgez $1, TAG208
lui $1, 0
bne $1, $1, TAG208
lw $4, 0($1)
TAG208:
lui $2, 5
mflo $4
sb $4, 0($4)
bltz $2, TAG209
TAG209:
lb $3, 0($4)
divu $4, $3
lbu $1, 0($3)
mtlo $1
TAG210:
lui $4, 2
divu $4, $1
sll $0, $0, 0
bne $4, $4, TAG211
TAG211:
mtlo $4
beq $4, $4, TAG212
nor $2, $4, $4
mflo $1
TAG212:
div $1, $1
sb $1, 0($1)
mthi $1
bltz $1, TAG213
TAG213:
sltu $1, $1, $1
nor $1, $1, $1
lui $1, 2
sll $0, $0, 0
TAG214:
bne $1, $1, TAG215
mthi $1
sltu $1, $1, $1
blez $1, TAG215
TAG215:
sltu $3, $1, $1
bne $3, $1, TAG216
mtlo $1
multu $1, $1
TAG216:
bgez $3, TAG217
mult $3, $3
bne $3, $3, TAG217
mflo $1
TAG217:
bne $1, $1, TAG218
addi $4, $1, 0
sw $4, 0($1)
lui $2, 1
TAG218:
bgez $2, TAG219
mtlo $2
mfhi $4
mfhi $4
TAG219:
lui $4, 2
multu $4, $4
blez $4, TAG220
ori $3, $4, 3
TAG220:
sll $0, $0, 0
bgez $3, TAG221
mtlo $3
srl $3, $2, 11
TAG221:
mthi $3
mflo $4
bne $4, $3, TAG222
andi $3, $3, 8
TAG222:
mult $3, $3
addu $3, $3, $3
mult $3, $3
addiu $2, $3, 4
TAG223:
bne $2, $2, TAG224
lui $4, 8
mfhi $1
mthi $1
TAG224:
mflo $2
sh $1, 0($2)
sltiu $3, $1, 7
beq $3, $1, TAG225
TAG225:
lbu $3, 0($3)
bgtz $3, TAG226
mfhi $1
beq $1, $3, TAG226
TAG226:
mult $1, $1
bltz $1, TAG227
lhu $1, 0($1)
lui $2, 13
TAG227:
sltiu $1, $2, 1
xori $2, $2, 7
mult $2, $1
sll $0, $0, 0
TAG228:
mfhi $1
bgtz $1, TAG229
addi $4, $1, 7
sltiu $2, $4, 3
TAG229:
addiu $1, $2, 14
bgtz $2, TAG230
multu $2, $1
blez $2, TAG230
TAG230:
and $4, $1, $1
slt $3, $4, $1
sllv $4, $1, $3
mtlo $4
TAG231:
mflo $3
bgez $3, TAG232
mflo $3
lui $3, 15
TAG232:
lui $3, 14
slt $1, $3, $3
lui $2, 6
lhu $3, 0($1)
TAG233:
mtlo $3
mfhi $4
lui $1, 3
and $1, $4, $3
TAG234:
lh $3, 0($1)
lb $1, 0($1)
lui $2, 3
sll $0, $0, 0
TAG235:
sll $0, $0, 0
mtlo $2
mult $2, $2
sll $0, $0, 0
TAG236:
multu $3, $3
multu $3, $3
lh $3, 0($3)
addiu $4, $3, 15
TAG237:
lui $4, 11
beq $4, $4, TAG238
sll $0, $0, 0
sb $4, 0($4)
TAG238:
bltz $4, TAG239
lui $2, 14
sll $0, $0, 0
sllv $4, $2, $4
TAG239:
sllv $4, $4, $4
mfhi $1
bgez $4, TAG240
multu $1, $4
TAG240:
mthi $1
blez $1, TAG241
addiu $4, $1, 7
lui $3, 6
TAG241:
lbu $3, 0($3)
blez $3, TAG242
mfhi $1
lhu $3, 0($1)
TAG242:
mthi $3
sb $3, 0($3)
mthi $3
addi $3, $3, 0
TAG243:
mflo $2
mthi $2
bne $2, $3, TAG244
lh $4, 0($3)
TAG244:
bne $4, $4, TAG245
slt $2, $4, $4
srav $4, $4, $2
lh $1, 0($2)
TAG245:
sb $1, 0($1)
bne $1, $1, TAG246
mthi $1
mflo $3
TAG246:
beq $3, $3, TAG247
lbu $2, 0($3)
bne $2, $2, TAG247
mthi $2
TAG247:
mult $2, $2
bne $2, $2, TAG248
lhu $1, 0($2)
mtlo $2
TAG248:
mthi $1
add $3, $1, $1
multu $3, $1
mult $1, $3
TAG249:
bgez $3, TAG250
multu $3, $3
mthi $3
sll $1, $3, 13
TAG250:
sltiu $2, $1, 2
mult $1, $1
sb $1, 0($1)
mult $1, $1
TAG251:
mtlo $2
xori $2, $2, 6
lbu $3, 0($2)
beq $2, $2, TAG252
TAG252:
sltu $1, $3, $3
srav $1, $1, $1
lui $1, 12
divu $1, $1
TAG253:
mult $1, $1
mthi $1
beq $1, $1, TAG254
nor $3, $1, $1
TAG254:
bgez $3, TAG255
sll $0, $0, 0
mult $3, $3
mthi $3
TAG255:
sll $0, $0, 0
addu $2, $3, $3
mtlo $2
mfhi $2
TAG256:
bgtz $2, TAG257
slt $1, $2, $2
multu $1, $1
sh $2, 0($1)
TAG257:
bltz $1, TAG258
add $1, $1, $1
mult $1, $1
lui $4, 3
TAG258:
lui $3, 6
slti $2, $3, 5
mthi $4
multu $2, $3
TAG259:
lhu $1, 0($2)
addiu $2, $2, 0
lui $4, 12
mfhi $4
TAG260:
add $3, $4, $4
mult $3, $4
bgtz $4, TAG261
mflo $1
TAG261:
multu $1, $1
lui $3, 12
addi $3, $1, 6
lb $3, 0($1)
TAG262:
mfhi $1
lb $1, 0($1)
slt $4, $1, $1
mtlo $1
TAG263:
sb $4, 0($4)
bgez $4, TAG264
lh $3, 0($4)
mtlo $4
TAG264:
bgtz $3, TAG265
lb $4, 256($3)
mflo $4
xor $4, $4, $4
TAG265:
mtlo $4
sh $4, 0($4)
bltz $4, TAG266
add $3, $4, $4
TAG266:
sra $1, $3, 1
bne $1, $1, TAG267
ori $2, $1, 13
sb $2, 0($1)
TAG267:
blez $2, TAG268
lui $2, 10
mtlo $2
mflo $3
TAG268:
sll $0, $0, 0
bgtz $3, TAG269
mtlo $3
mult $3, $3
TAG269:
divu $3, $3
lui $4, 4
sll $0, $0, 0
multu $4, $4
TAG270:
mfhi $3
addu $3, $3, $4
bgtz $3, TAG271
lui $2, 12
TAG271:
sll $0, $0, 0
mfhi $3
bgez $3, TAG272
lui $3, 8
TAG272:
xori $2, $3, 2
slti $2, $3, 11
mflo $4
blez $3, TAG273
TAG273:
sb $4, 0($4)
mfhi $1
div $1, $1
lbu $4, 0($1)
TAG274:
bgez $4, TAG275
sll $2, $4, 15
slti $1, $2, 0
lui $3, 11
TAG275:
mfhi $4
mthi $4
lui $2, 6
mult $3, $4
TAG276:
multu $2, $2
sll $0, $0, 0
slt $1, $2, $2
sb $1, 0($1)
TAG277:
beq $1, $1, TAG278
addu $2, $1, $1
mthi $2
sb $2, 0($2)
TAG278:
sh $2, 0($2)
multu $2, $2
slti $3, $2, 2
bne $2, $3, TAG279
TAG279:
lui $4, 4
addiu $1, $4, 15
mult $4, $3
mtlo $1
TAG280:
sll $0, $0, 0
mult $3, $1
mfhi $4
mfhi $1
TAG281:
lui $1, 9
sll $0, $0, 0
sltu $1, $2, $2
lui $1, 15
TAG282:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $4, $1, $1
TAG283:
xori $2, $4, 15
multu $2, $2
addiu $2, $4, 9
bltz $2, TAG284
TAG284:
sllv $1, $2, $2
sll $0, $0, 0
multu $1, $1
lui $1, 2
TAG285:
andi $2, $1, 14
blez $1, TAG286
sh $1, 0($2)
lui $4, 14
TAG286:
addiu $2, $4, 7
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG287:
lbu $4, 0($3)
multu $3, $4
sub $3, $4, $4
lw $3, 0($3)
TAG288:
bne $3, $3, TAG289
multu $3, $3
add $3, $3, $3
mfhi $4
TAG289:
mthi $4
multu $4, $4
lb $1, 0($4)
mthi $4
TAG290:
sll $2, $1, 6
sw $2, 0($2)
blez $1, TAG291
mthi $1
TAG291:
lui $1, 13
mflo $2
sll $0, $0, 0
mult $1, $2
TAG292:
addiu $2, $2, 11
sb $2, 0($2)
lui $2, 12
mthi $2
TAG293:
multu $2, $2
beq $2, $2, TAG294
mtlo $2
lbu $2, 0($2)
TAG294:
sll $0, $0, 0
mthi $2
srl $1, $2, 8
sllv $2, $1, $2
TAG295:
sltiu $3, $2, 6
mtlo $3
or $1, $2, $3
slti $3, $1, 12
TAG296:
multu $3, $3
mtlo $3
bltz $3, TAG297
lui $4, 3
TAG297:
lui $1, 1
div $1, $4
subu $4, $4, $1
sll $0, $0, 0
TAG298:
bgez $1, TAG299
sltu $2, $1, $1
lui $3, 3
sra $3, $2, 5
TAG299:
mtlo $3
lw $4, 0($3)
bltz $4, TAG300
mtlo $4
TAG300:
mult $4, $4
lhu $4, 0($4)
blez $4, TAG301
mthi $4
TAG301:
bne $4, $4, TAG302
lbu $2, 0($4)
lui $1, 4
bne $1, $1, TAG302
TAG302:
lui $1, 2
mflo $1
multu $1, $1
mfhi $2
TAG303:
bgtz $2, TAG304
mflo $3
mtlo $3
beq $2, $3, TAG304
TAG304:
sub $2, $3, $3
mtlo $3
lui $2, 9
beq $3, $2, TAG305
TAG305:
mtlo $2
bne $2, $2, TAG306
ori $4, $2, 12
addiu $2, $4, 2
TAG306:
srav $1, $2, $2
bltz $1, TAG307
mtlo $2
lui $4, 5
TAG307:
blez $4, TAG308
mflo $1
sll $0, $0, 0
mthi $1
TAG308:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
mflo $1
TAG309:
mflo $2
beq $2, $1, TAG310
div $2, $2
sb $2, 0($1)
TAG310:
multu $2, $2
sll $0, $0, 0
mflo $3
blez $2, TAG311
TAG311:
sll $0, $0, 0
sll $0, $0, 0
xori $2, $3, 14
mflo $3
TAG312:
sll $0, $0, 0
addu $1, $3, $3
mflo $4
lui $4, 7
TAG313:
sll $0, $0, 0
mflo $4
addiu $4, $2, 3
addu $1, $4, $4
TAG314:
lui $1, 4
subu $4, $1, $1
mfhi $1
bne $1, $1, TAG315
TAG315:
mtlo $1
bne $1, $1, TAG316
slt $1, $1, $1
mflo $3
TAG316:
srav $3, $3, $3
bgez $3, TAG317
sltu $3, $3, $3
divu $3, $3
TAG317:
bne $3, $3, TAG318
lui $4, 8
sll $0, $0, 0
mfhi $4
TAG318:
sra $2, $4, 13
blez $2, TAG319
sb $4, 0($4)
xori $3, $2, 7
TAG319:
srl $1, $3, 2
mthi $1
multu $1, $1
multu $3, $3
TAG320:
mthi $1
mflo $3
mfhi $3
blez $3, TAG321
TAG321:
lui $2, 2
mflo $4
srlv $2, $3, $2
lh $3, 0($2)
TAG322:
xori $2, $3, 1
div $3, $2
sb $3, 0($2)
or $1, $2, $2
TAG323:
mfhi $3
lui $3, 1
beq $3, $3, TAG324
sb $1, 0($1)
TAG324:
sll $0, $0, 0
lui $4, 5
sll $0, $0, 0
sll $0, $0, 0
TAG325:
subu $2, $1, $1
lui $2, 14
mtlo $2
mfhi $3
TAG326:
multu $3, $3
mtlo $3
bne $3, $3, TAG327
sh $3, 0($3)
TAG327:
sh $3, 0($3)
lui $2, 14
mult $2, $3
blez $3, TAG328
TAG328:
sll $0, $0, 0
xori $3, $2, 11
mfhi $3
beq $3, $2, TAG329
TAG329:
mult $3, $3
addi $4, $3, 12
lui $3, 2
multu $3, $4
TAG330:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
andi $4, $4, 15
TAG331:
lh $4, 0($4)
mfhi $4
lui $3, 12
lui $1, 5
TAG332:
mflo $3
beq $3, $1, TAG333
sltu $2, $1, $1
mthi $1
TAG333:
sb $2, 0($2)
lw $4, 0($2)
lw $1, 0($2)
bgtz $2, TAG334
TAG334:
mflo $1
mfhi $2
mfhi $2
lui $2, 15
TAG335:
slti $3, $2, 13
mult $2, $2
bne $2, $2, TAG336
mtlo $3
TAG336:
lbu $4, 0($3)
srl $3, $4, 4
sw $3, 0($3)
mtlo $3
TAG337:
lui $3, 8
sll $0, $0, 0
beq $3, $3, TAG338
mthi $3
TAG338:
mthi $3
mflo $4
mthi $3
sll $0, $0, 0
TAG339:
lui $1, 12
blez $1, TAG340
sltu $1, $1, $1
lw $3, 0($1)
TAG340:
srav $1, $3, $3
lui $1, 13
mult $1, $3
mult $1, $3
TAG341:
addiu $2, $1, 4
mtlo $1
sll $0, $0, 0
mthi $1
TAG342:
sllv $3, $3, $3
beq $3, $3, TAG343
mfhi $4
div $4, $4
TAG343:
addiu $4, $4, 14
mthi $4
mthi $4
sll $0, $0, 0
TAG344:
slt $4, $2, $2
mthi $2
mult $4, $4
bgez $2, TAG345
TAG345:
addi $1, $4, 5
lw $3, 0($4)
mthi $1
bgtz $4, TAG346
TAG346:
lw $1, 0($3)
lui $4, 9
add $4, $3, $4
multu $4, $3
TAG347:
xor $3, $4, $4
mult $4, $3
sra $4, $4, 8
sw $4, 0($3)
TAG348:
srl $1, $4, 10
sll $3, $1, 8
ori $3, $4, 10
mfhi $2
TAG349:
lui $3, 7
mfhi $2
sh $2, 0($2)
lh $3, 0($2)
TAG350:
mfhi $1
bgez $3, TAG351
addi $4, $1, 11
srlv $3, $1, $4
TAG351:
mult $3, $3
nor $4, $3, $3
lui $3, 11
mtlo $4
TAG352:
bne $3, $3, TAG353
lui $2, 7
mult $2, $2
beq $2, $2, TAG353
TAG353:
mtlo $2
bltz $2, TAG354
srl $4, $2, 5
bgez $4, TAG354
TAG354:
sll $0, $0, 0
slt $4, $3, $3
divu $4, $3
lui $1, 14
TAG355:
multu $1, $1
sll $0, $0, 0
mflo $3
div $3, $1
TAG356:
mthi $3
lw $4, 0($3)
lh $1, 0($4)
mult $4, $1
TAG357:
mtlo $1
sb $1, 0($1)
bgtz $1, TAG358
lb $1, 0($1)
TAG358:
mflo $4
mtlo $1
lui $3, 9
sra $3, $1, 0
TAG359:
mflo $2
mfhi $2
mfhi $2
bltz $3, TAG360
TAG360:
lh $1, 0($2)
lhu $4, 0($2)
slt $1, $2, $4
bne $2, $1, TAG361
TAG361:
and $2, $1, $1
add $3, $1, $2
mtlo $2
lui $2, 2
TAG362:
lui $3, 8
sllv $2, $2, $2
sll $0, $0, 0
beq $2, $2, TAG363
TAG363:
sll $0, $0, 0
srav $2, $2, $2
mflo $1
divu $2, $2
TAG364:
lui $4, 5
xori $1, $4, 4
sll $0, $0, 0
mtlo $4
TAG365:
sll $0, $0, 0
nor $1, $1, $1
div $1, $1
andi $1, $1, 5
TAG366:
div $1, $1
lui $2, 4
bne $1, $1, TAG367
subu $3, $1, $2
TAG367:
srav $1, $3, $3
sll $2, $1, 2
bgtz $1, TAG368
sll $0, $0, 0
TAG368:
srlv $4, $2, $2
addiu $4, $2, 1
divu $4, $4
sll $0, $0, 0
TAG369:
blez $4, TAG370
mult $4, $4
mflo $3
mflo $2
TAG370:
and $3, $2, $2
bgtz $2, TAG371
ori $4, $2, 9
addiu $2, $4, 3
TAG371:
or $3, $2, $2
beq $3, $3, TAG372
srl $1, $3, 8
bgtz $2, TAG372
TAG372:
or $3, $1, $1
srlv $1, $1, $3
mult $3, $1
div $3, $3
TAG373:
subu $2, $1, $1
mtlo $1
sw $2, 0($2)
sw $1, 0($2)
TAG374:
mfhi $4
srl $4, $4, 11
sh $2, 0($2)
lbu $4, 0($2)
TAG375:
beq $4, $4, TAG376
lui $3, 12
mfhi $4
blez $4, TAG376
TAG376:
xori $4, $4, 2
mfhi $1
sh $4, 0($1)
lui $2, 7
TAG377:
sll $0, $0, 0
and $2, $2, $4
mflo $1
mtlo $2
TAG378:
mtlo $1
mflo $1
bne $1, $1, TAG379
divu $1, $1
TAG379:
bgtz $1, TAG380
mflo $1
sltiu $2, $1, 6
bgtz $2, TAG380
TAG380:
lui $1, 9
lb $1, 0($2)
sb $2, 0($1)
blez $2, TAG381
TAG381:
mthi $1
sltu $2, $1, $1
mult $1, $1
sh $2, 0($1)
TAG382:
lui $1, 15
lui $4, 7
blez $4, TAG383
mflo $1
TAG383:
sb $1, 0($1)
mfhi $4
lbu $4, 0($1)
lui $2, 0
TAG384:
lui $2, 13
addiu $1, $2, 0
div $2, $2
lui $2, 8
TAG385:
xor $4, $2, $2
sb $4, 0($4)
mflo $3
multu $2, $3
TAG386:
divu $3, $3
mflo $4
subu $3, $3, $3
lhu $2, 0($3)
TAG387:
beq $2, $2, TAG388
mfhi $4
lw $3, 0($4)
sb $4, 0($3)
TAG388:
sra $3, $3, 13
lui $4, 1
lui $2, 5
bne $4, $3, TAG389
TAG389:
sll $0, $0, 0
lui $4, 5
mfhi $3
srlv $1, $4, $3
TAG390:
sll $0, $0, 0
blez $1, TAG391
addu $1, $1, $1
sll $0, $0, 0
TAG391:
mfhi $3
mtlo $3
bne $4, $4, TAG392
mtlo $4
TAG392:
bne $3, $3, TAG393
add $1, $3, $3
beq $3, $1, TAG393
mthi $3
TAG393:
bne $1, $1, TAG394
lhu $3, 0($1)
mflo $4
mthi $4
TAG394:
bgez $4, TAG395
div $4, $4
bgtz $4, TAG395
lbu $4, 0($4)
TAG395:
lui $4, 6
sll $0, $0, 0
bne $4, $4, TAG396
mtlo $4
TAG396:
andi $2, $4, 4
beq $2, $2, TAG397
sb $2, 0($2)
bne $2, $4, TAG397
TAG397:
mthi $2
multu $2, $2
mult $2, $2
mthi $2
TAG398:
mfhi $3
mflo $1
mflo $3
bne $2, $2, TAG399
TAG399:
sw $3, 0($3)
lh $3, 0($3)
sra $4, $3, 13
sh $3, 0($3)
TAG400:
sw $4, 0($4)
lw $3, 0($4)
multu $4, $3
beq $4, $4, TAG401
TAG401:
subu $2, $3, $3
lui $2, 9
sltiu $1, $2, 3
lui $3, 11
TAG402:
divu $3, $3
mflo $1
srl $3, $3, 12
lbu $3, -176($3)
TAG403:
sb $3, 0($3)
bgez $3, TAG404
sra $1, $3, 8
mflo $3
TAG404:
mtlo $3
lw $3, 0($3)
addu $4, $3, $3
mflo $4
TAG405:
blez $4, TAG406
mthi $4
sb $4, 0($4)
lui $1, 3
TAG406:
lui $1, 15
multu $1, $1
bgtz $1, TAG407
xor $2, $1, $1
TAG407:
bltz $2, TAG408
mthi $2
sltu $1, $2, $2
lh $1, 0($2)
TAG408:
lui $4, 8
mflo $4
multu $1, $4
lbu $2, 0($4)
TAG409:
sltiu $2, $2, 15
bne $2, $2, TAG410
sb $2, 0($2)
srlv $3, $2, $2
TAG410:
lui $3, 9
beq $3, $3, TAG411
sll $0, $0, 0
slt $4, $3, $3
TAG411:
mthi $4
multu $4, $4
mflo $2
addu $2, $2, $2
TAG412:
sb $2, 0($2)
sub $4, $2, $2
mfhi $2
lui $4, 7
TAG413:
bgez $4, TAG414
lui $3, 6
srl $1, $3, 2
sb $3, 0($1)
TAG414:
multu $1, $1
bgtz $1, TAG415
lhu $3, 0($1)
sltiu $2, $3, 10
TAG415:
mflo $1
subu $2, $2, $2
mfhi $1
mfhi $3
TAG416:
mthi $3
sw $3, 0($3)
mflo $2
andi $1, $3, 4
TAG417:
add $3, $1, $1
mflo $2
mfhi $2
mflo $3
TAG418:
or $1, $3, $3
bgez $3, TAG419
mfhi $3
addiu $2, $3, 2
TAG419:
mfhi $3
mflo $4
mthi $3
lui $3, 0
TAG420:
lui $4, 3
mtlo $3
sltiu $4, $4, 5
addu $4, $4, $3
TAG421:
mfhi $3
lbu $2, 0($3)
blez $4, TAG422
mthi $3
TAG422:
mtlo $2
multu $2, $2
bltz $2, TAG423
mthi $2
TAG423:
lh $1, 0($2)
lui $2, 12
slt $4, $1, $2
mfhi $3
TAG424:
lh $4, 0($3)
sllv $3, $3, $3
bne $3, $3, TAG425
sb $3, 0($3)
TAG425:
mflo $3
blez $3, TAG426
srlv $3, $3, $3
bgtz $3, TAG426
TAG426:
sb $3, 0($3)
lb $4, 0($3)
lui $3, 7
mflo $4
TAG427:
lui $3, 14
sll $0, $0, 0
sh $4, 0($1)
mult $1, $1
TAG428:
mult $1, $1
lbu $1, 0($1)
addi $2, $1, 11
mtlo $1
TAG429:
mfhi $3
blez $3, TAG430
lui $4, 10
divu $2, $2
TAG430:
mflo $4
bgtz $4, TAG431
xori $3, $4, 11
sra $3, $4, 3
TAG431:
sw $3, 0($3)
blez $3, TAG432
mtlo $3
lbu $1, 0($3)
TAG432:
sh $1, 0($1)
mfhi $1
addiu $1, $1, 15
divu $1, $1
TAG433:
srlv $3, $1, $1
mthi $1
lb $3, 0($1)
mtlo $3
TAG434:
mthi $3
lui $4, 13
mflo $4
sb $4, 0($4)
TAG435:
bgez $4, TAG436
sltiu $2, $4, 11
bltz $2, TAG436
lhu $4, 0($4)
TAG436:
sb $4, 0($4)
lui $4, 8
sll $0, $0, 0
mflo $2
TAG437:
bltz $2, TAG438
mtlo $2
mfhi $3
lui $2, 1
TAG438:
lui $4, 9
mtlo $2
sra $1, $2, 10
and $4, $4, $4
TAG439:
div $4, $4
blez $4, TAG440
lui $3, 0
addiu $2, $3, 2
TAG440:
bltz $2, TAG441
sb $2, 0($2)
mflo $3
bne $2, $3, TAG441
TAG441:
mult $3, $3
divu $3, $3
lb $3, 0($3)
mfhi $2
TAG442:
sw $2, 0($2)
multu $2, $2
mtlo $2
beq $2, $2, TAG443
TAG443:
sh $2, 0($2)
srl $1, $2, 7
and $4, $1, $1
lui $1, 0
TAG444:
bne $1, $1, TAG445
multu $1, $1
sra $3, $1, 8
multu $1, $1
TAG445:
multu $3, $3
sw $3, 0($3)
lui $4, 6
lui $3, 1
TAG446:
blez $3, TAG447
divu $3, $3
mtlo $3
bgtz $3, TAG447
TAG447:
sll $1, $3, 3
lui $3, 3
sll $0, $0, 0
bltz $3, TAG448
TAG448:
lb $1, 0($2)
mflo $1
lui $4, 2
sll $0, $0, 0
TAG449:
sll $2, $4, 10
mfhi $1
sll $0, $0, 0
mflo $2
TAG450:
addiu $2, $2, 13
mtlo $2
mfhi $2
add $1, $2, $2
TAG451:
bgtz $1, TAG452
mfhi $1
multu $1, $1
mult $1, $1
TAG452:
sw $1, 0($1)
lhu $4, 0($1)
lhu $1, 0($1)
bne $1, $1, TAG453
TAG453:
addiu $3, $1, 15
sb $1, 0($3)
mthi $1
mthi $3
TAG454:
multu $3, $3
sb $3, 0($3)
srl $2, $3, 9
sb $2, 0($3)
TAG455:
lui $1, 10
mthi $2
mtlo $2
mfhi $2
TAG456:
beq $2, $2, TAG457
mult $2, $2
beq $2, $2, TAG457
lui $3, 10
TAG457:
div $3, $3
mflo $1
mult $1, $1
ori $1, $1, 5
TAG458:
lbu $1, 0($1)
lbu $3, 0($1)
mfhi $4
multu $3, $3
TAG459:
lui $1, 10
bne $4, $4, TAG460
lh $1, 0($4)
bne $1, $1, TAG460
TAG460:
sh $1, 0($1)
lui $1, 12
bgez $1, TAG461
sll $2, $1, 1
TAG461:
bne $2, $2, TAG462
mult $2, $2
lui $4, 0
sll $0, $0, 0
TAG462:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 6
bne $2, $1, TAG463
TAG463:
lui $1, 8
mfhi $2
sll $0, $0, 0
lui $4, 10
TAG464:
div $4, $4
div $4, $4
bltz $4, TAG465
xori $3, $4, 4
TAG465:
mult $3, $3
lui $2, 4
srav $2, $2, $3
divu $3, $2
TAG466:
xor $3, $2, $2
sh $2, 0($3)
beq $2, $3, TAG467
xori $4, $2, 1
TAG467:
bne $4, $4, TAG468
sw $4, -16385($4)
lhu $4, -16385($4)
sw $4, -16385($4)
TAG468:
sltiu $1, $4, 6
mfhi $2
beq $1, $1, TAG469
mflo $4
TAG469:
lui $2, 14
sllv $3, $4, $2
beq $2, $4, TAG470
lui $4, 13
TAG470:
bltz $4, TAG471
subu $4, $4, $4
multu $4, $4
addiu $3, $4, 12
TAG471:
bltz $3, TAG472
sltiu $2, $3, 8
mflo $1
subu $1, $3, $3
TAG472:
beq $1, $1, TAG473
lui $2, 9
divu $1, $1
addu $1, $2, $1
TAG473:
blez $1, TAG474
mult $1, $1
sw $1, 0($1)
bltz $1, TAG474
TAG474:
mtlo $1
mtlo $1
mult $1, $1
nor $4, $1, $1
TAG475:
beq $4, $4, TAG476
lbu $3, 1($4)
sb $4, 0($4)
srav $2, $4, $3
TAG476:
bne $2, $2, TAG477
mthi $2
lui $2, 7
sll $0, $0, 0
TAG477:
beq $1, $1, TAG478
sw $1, 0($1)
blez $1, TAG478
lui $1, 2
TAG478:
lui $2, 5
bne $2, $1, TAG479
lui $4, 3
mtlo $2
TAG479:
bgez $4, TAG480
sll $0, $0, 0
sb $4, 0($4)
mflo $3
TAG480:
bltz $3, TAG481
mthi $3
bne $3, $3, TAG481
multu $3, $3
TAG481:
lui $4, 5
bgtz $3, TAG482
xori $3, $4, 0
lui $2, 6
TAG482:
blez $2, TAG483
mthi $2
mult $2, $2
blez $2, TAG483
TAG483:
mtlo $2
sll $0, $0, 0
blez $2, TAG484
xori $4, $2, 2
TAG484:
xori $3, $4, 8
lui $4, 8
sll $0, $0, 0
bltz $3, TAG485
TAG485:
mflo $3
andi $3, $4, 10
and $2, $3, $4
sltu $3, $2, $3
TAG486:
sub $4, $3, $3
multu $3, $4
mtlo $4
lui $4, 1
TAG487:
ori $2, $4, 15
mfhi $3
mfhi $4
bgez $3, TAG488
TAG488:
multu $4, $4
sh $4, 0($4)
lw $4, 0($4)
beq $4, $4, TAG489
TAG489:
sw $4, 0($4)
subu $3, $4, $4
mtlo $4
bgtz $3, TAG490
TAG490:
mtlo $3
blez $3, TAG491
sh $3, 0($3)
xor $2, $3, $3
TAG491:
mflo $2
sh $2, 0($2)
mfhi $2
mthi $2
TAG492:
srlv $3, $2, $2
lhu $1, 0($2)
srlv $4, $1, $2
beq $3, $3, TAG493
TAG493:
mfhi $1
sh $1, 0($4)
mthi $4
slti $4, $1, 13
TAG494:
addu $1, $4, $4
sb $1, 0($4)
lb $4, 0($4)
divu $1, $4
TAG495:
bne $4, $4, TAG496
srlv $4, $4, $4
multu $4, $4
multu $4, $4
TAG496:
multu $4, $4
sb $4, 0($4)
beq $4, $4, TAG497
mthi $4
TAG497:
bne $4, $4, TAG498
xor $4, $4, $4
sw $4, 0($4)
mthi $4
TAG498:
sw $4, 0($4)
lui $2, 13
bgez $4, TAG499
mthi $4
TAG499:
div $2, $2
multu $2, $2
mtlo $2
beq $2, $2, TAG500
TAG500:
mtlo $2
mtlo $2
andi $2, $2, 15
beq $2, $2, TAG501
TAG501:
lhu $4, 0($2)
lw $2, 0($4)
mult $4, $2
multu $4, $4
TAG502:
mtlo $2
lui $1, 7
beq $2, $2, TAG503
mthi $2
TAG503:
mult $1, $1
mtlo $1
srav $3, $1, $1
mfhi $3
TAG504:
mthi $3
beq $3, $3, TAG505
mflo $3
lui $1, 7
TAG505:
sll $0, $0, 0
addu $4, $1, $1
divu $4, $4
bltz $1, TAG506
TAG506:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG507
lui $4, 3
TAG507:
mfhi $2
sltiu $2, $4, 9
mthi $4
sll $0, $0, 0
TAG508:
blez $2, TAG509
mthi $2
multu $2, $2
sh $2, 0($2)
TAG509:
xor $3, $2, $2
srl $1, $2, 9
multu $3, $1
multu $2, $3
TAG510:
srl $1, $1, 4
bne $1, $1, TAG511
mtlo $1
srlv $3, $1, $1
TAG511:
multu $3, $3
bgtz $3, TAG512
lbu $2, 0($3)
mfhi $1
TAG512:
multu $1, $1
mtlo $1
multu $1, $1
lui $2, 2
TAG513:
multu $2, $2
mthi $2
slt $4, $2, $2
mflo $4
TAG514:
lhu $1, 0($4)
mult $4, $4
lbu $1, 0($1)
bgtz $4, TAG515
TAG515:
mfhi $2
sb $2, 0($1)
sltiu $2, $1, 9
andi $1, $1, 15
TAG516:
mthi $1
lbu $1, 0($1)
mult $1, $1
blez $1, TAG517
TAG517:
lhu $3, 0($1)
lhu $3, 0($1)
multu $1, $3
lb $1, 0($3)
TAG518:
xori $4, $1, 11
lui $2, 0
mthi $2
mfhi $1
TAG519:
lui $2, 3
sll $0, $0, 0
bltz $2, TAG520
mtlo $1
TAG520:
mflo $4
mthi $4
sll $0, $0, 0
sltu $1, $2, $2
TAG521:
mthi $1
lui $1, 0
blez $1, TAG522
mtlo $1
TAG522:
lui $3, 7
blez $3, TAG523
sll $0, $0, 0
lui $4, 1
TAG523:
lui $2, 9
divu $4, $2
sll $0, $0, 0
sra $2, $2, 9
TAG524:
sh $2, -1152($2)
bgtz $2, TAG525
sh $2, -1152($2)
sw $2, 0($2)
TAG525:
bgez $2, TAG526
mthi $2
mtlo $2
srlv $1, $2, $2
TAG526:
bne $1, $1, TAG527
lui $2, 11
sll $0, $0, 0
lui $2, 1
TAG527:
slti $4, $2, 3
beq $2, $2, TAG528
mfhi $1
lw $4, 0($2)
TAG528:
sub $2, $4, $4
lui $3, 6
mult $4, $2
mult $2, $4
TAG529:
sll $0, $0, 0
lui $1, 2
sll $0, $0, 0
mthi $4
TAG530:
beq $1, $1, TAG531
mflo $3
div $1, $1
sltiu $1, $1, 1
TAG531:
mthi $1
sll $0, $0, 0
mthi $4
sw $1, 0($4)
TAG532:
mtlo $4
lui $3, 4
lui $4, 12
lui $2, 0
TAG533:
sw $2, 0($2)
beq $2, $2, TAG534
mfhi $4
beq $2, $4, TAG534
TAG534:
lui $1, 3
sll $0, $0, 0
mfhi $1
bgez $1, TAG535
TAG535:
sltu $3, $1, $1
mthi $1
mult $1, $3
sw $1, 0($1)
TAG536:
lhu $3, 0($3)
lw $3, 0($3)
sh $3, 0($3)
mfhi $1
TAG537:
mflo $3
mtlo $1
sh $3, 0($1)
sltu $1, $3, $1
TAG538:
add $4, $1, $1
sb $4, 0($1)
lhu $2, 0($1)
lhu $2, 0($1)
TAG539:
bgez $2, TAG540
mtlo $2
multu $2, $2
sub $1, $2, $2
TAG540:
bgez $1, TAG541
slt $4, $1, $1
sb $1, 0($4)
mthi $1
TAG541:
mtlo $4
multu $4, $4
blez $4, TAG542
lui $2, 10
TAG542:
mult $2, $2
div $2, $2
mfhi $4
sll $0, $0, 0
TAG543:
lhu $4, 0($3)
and $4, $4, $4
lh $1, 0($4)
bne $4, $3, TAG544
TAG544:
lui $4, 10
bne $4, $4, TAG545
mflo $3
divu $3, $3
TAG545:
lui $4, 4
beq $4, $3, TAG546
lui $4, 11
subu $1, $4, $4
TAG546:
slti $4, $1, 5
mflo $3
multu $4, $3
and $3, $3, $4
TAG547:
mfhi $4
multu $4, $4
and $4, $3, $4
mult $3, $4
TAG548:
mthi $4
multu $4, $4
lui $4, 15
mtlo $4
TAG549:
sll $0, $0, 0
mfhi $1
blez $1, TAG550
mflo $1
TAG550:
div $1, $1
addu $4, $1, $1
sll $0, $0, 0
mflo $1
TAG551:
or $2, $1, $1
blez $1, TAG552
mfhi $4
mfhi $1
TAG552:
beq $1, $1, TAG553
mtlo $1
lui $4, 1
srlv $2, $4, $1
TAG553:
lui $1, 3
mult $1, $1
addu $2, $2, $2
mflo $3
TAG554:
bltz $3, TAG555
multu $3, $3
mflo $3
andi $2, $3, 8
TAG555:
beq $2, $2, TAG556
multu $2, $2
mtlo $2
sw $2, 0($2)
TAG556:
mult $2, $2
mflo $3
lb $1, 0($3)
lb $3, 0($2)
TAG557:
bne $3, $3, TAG558
mult $3, $3
mtlo $3
mfhi $2
TAG558:
beq $2, $2, TAG559
lui $3, 7
lb $4, 0($3)
sh $3, 0($4)
TAG559:
mfhi $2
addi $2, $4, 8
lb $4, 0($2)
bne $2, $4, TAG560
TAG560:
sb $4, 0($4)
mthi $4
addu $4, $4, $4
lw $4, 0($4)
TAG561:
lbu $4, 0($4)
bltz $4, TAG562
lui $2, 10
mult $4, $4
TAG562:
lui $1, 6
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
TAG563:
div $1, $1
beq $1, $1, TAG564
divu $1, $1
mfhi $2
TAG564:
lui $2, 0
multu $2, $2
mult $2, $2
lui $3, 10
TAG565:
mtlo $3
sra $2, $3, 6
ori $1, $2, 8
multu $2, $3
TAG566:
mult $1, $1
mthi $1
sb $1, -10248($1)
mtlo $1
TAG567:
sltiu $3, $1, 1
lw $1, 0($3)
mtlo $3
addiu $3, $3, 6
TAG568:
addiu $4, $3, 4
divu $3, $4
mult $3, $4
srl $4, $4, 11
TAG569:
lb $4, 0($4)
sw $4, 0($4)
sw $4, 0($4)
lw $1, 0($4)
TAG570:
mtlo $1
mthi $1
sb $1, 0($1)
bgtz $1, TAG571
TAG571:
slti $4, $1, 11
sb $1, 0($1)
mthi $4
bgez $1, TAG572
TAG572:
mult $4, $4
sb $4, 0($4)
lui $2, 12
sll $1, $2, 0
TAG573:
bgtz $1, TAG574
slt $3, $1, $1
mflo $2
lbu $3, 0($1)
TAG574:
ori $2, $3, 8
xori $3, $2, 10
xori $2, $2, 13
mult $2, $3
TAG575:
mfhi $2
sb $2, 0($2)
addu $2, $2, $2
sw $2, 0($2)
TAG576:
sw $2, 0($2)
bgtz $2, TAG577
sh $2, 0($2)
multu $2, $2
TAG577:
mfhi $3
sltiu $4, $2, 15
lui $3, 14
sll $0, $0, 0
TAG578:
lui $4, 2
nor $4, $3, $3
bne $3, $4, TAG579
mthi $4
TAG579:
sll $0, $0, 0
blez $4, TAG580
lui $3, 5
bne $4, $3, TAG580
TAG580:
sll $0, $0, 0
subu $4, $3, $3
bne $3, $4, TAG581
lui $3, 12
TAG581:
mfhi $4
mtlo $4
mfhi $2
sll $0, $0, 0
TAG582:
lui $3, 4
bne $4, $3, TAG583
sll $0, $0, 0
andi $4, $4, 13
TAG583:
mfhi $1
multu $4, $1
mfhi $3
lui $1, 14
TAG584:
divu $1, $1
addu $2, $1, $1
mthi $2
mflo $1
TAG585:
multu $1, $1
beq $1, $1, TAG586
slt $1, $1, $1
bgtz $1, TAG586
TAG586:
mflo $3
beq $3, $3, TAG587
srav $3, $1, $1
lui $4, 8
TAG587:
beq $4, $4, TAG588
sll $0, $0, 0
and $3, $4, $4
blez $4, TAG588
TAG588:
lw $3, 0($3)
ori $4, $3, 15
sll $4, $3, 6
mult $3, $3
TAG589:
mthi $4
sh $4, 0($4)
mult $4, $4
lui $2, 15
TAG590:
bltz $2, TAG591
sll $0, $0, 0
bne $2, $1, TAG591
lui $1, 4
TAG591:
beq $1, $1, TAG592
sll $0, $0, 0
lhu $3, 0($1)
blez $1, TAG592
TAG592:
srl $2, $3, 0
multu $3, $2
beq $2, $3, TAG593
lb $4, 0($3)
TAG593:
bgtz $4, TAG594
sll $1, $4, 2
mfhi $2
lhu $2, 0($4)
TAG594:
mfhi $3
xor $1, $2, $3
lui $3, 2
srl $2, $3, 5
TAG595:
lui $4, 7
lui $4, 9
lui $1, 8
multu $4, $4
TAG596:
mflo $4
sra $1, $4, 13
mfhi $3
blez $1, TAG597
TAG597:
mfhi $3
sb $3, 0($3)
mthi $3
bne $3, $3, TAG598
TAG598:
lui $3, 8
subu $3, $3, $3
lui $3, 6
mthi $3
TAG599:
srlv $3, $3, $3
xor $3, $3, $3
sb $3, 0($3)
multu $3, $3
TAG600:
lui $4, 7
mthi $4
lui $2, 2
bgtz $2, TAG601
TAG601:
mflo $1
mthi $1
mflo $2
sw $2, 0($1)
TAG602:
lbu $1, 0($2)
mfhi $4
bne $4, $1, TAG603
mfhi $2
TAG603:
bltz $2, TAG604
mult $2, $2
lh $2, 0($2)
addiu $4, $2, 15
TAG604:
bgez $4, TAG605
xor $3, $4, $4
sb $3, 0($3)
bltz $4, TAG605
TAG605:
lui $3, 2
bgtz $3, TAG606
sll $0, $0, 0
mfhi $2
TAG606:
srav $2, $2, $2
lh $2, 0($2)
bltz $2, TAG607
ori $3, $2, 15
TAG607:
sb $3, 0($3)
sb $3, 0($3)
lui $4, 7
bne $4, $3, TAG608
TAG608:
multu $4, $4
mthi $4
addiu $2, $4, 0
sll $0, $0, 0
TAG609:
mfhi $2
mfhi $1
lui $3, 3
sll $0, $0, 0
TAG610:
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG611
srav $2, $3, $3
TAG611:
mtlo $2
divu $2, $2
beq $2, $2, TAG612
sll $0, $0, 0
TAG612:
beq $2, $2, TAG613
mthi $2
mfhi $1
lw $1, 0($2)
TAG613:
mthi $1
sll $0, $0, 0
bne $2, $1, TAG614
lui $3, 5
TAG614:
blez $3, TAG615
addu $2, $3, $3
subu $3, $3, $3
mtlo $3
TAG615:
lh $4, 0($3)
sb $3, 0($3)
lbu $4, 0($3)
mflo $2
TAG616:
sh $2, 0($2)
multu $2, $2
mult $2, $2
sb $2, 0($2)
TAG617:
ori $2, $2, 13
sb $2, 0($2)
lbu $1, 0($2)
mflo $3
TAG618:
lui $2, 12
mflo $1
subu $1, $1, $2
lui $3, 11
TAG619:
xor $1, $3, $3
mflo $2
nor $4, $1, $2
sll $0, $0, 0
TAG620:
bgtz $4, TAG621
lui $3, 1
sb $3, 1($4)
bne $3, $4, TAG621
TAG621:
mflo $1
mthi $3
mfhi $4
blez $3, TAG622
TAG622:
addiu $2, $4, 2
andi $1, $4, 4
srav $4, $4, $1
sll $0, $0, 0
TAG623:
bgtz $4, TAG624
sll $0, $0, 0
beq $4, $4, TAG624
mthi $4
TAG624:
xori $4, $4, 5
sll $0, $0, 0
or $3, $4, $4
lui $3, 9
TAG625:
sll $0, $0, 0
mthi $4
multu $4, $3
srl $1, $4, 4
TAG626:
bltz $1, TAG627
sw $1, -4096($1)
sll $2, $1, 13
sw $1, -4096($1)
TAG627:
bltz $2, TAG628
mthi $2
mtlo $2
sll $0, $0, 0
TAG628:
xor $1, $3, $3
lui $3, 4
bgez $1, TAG629
sll $0, $0, 0
TAG629:
mfhi $2
beq $3, $2, TAG630
addiu $3, $3, 11
mthi $3
TAG630:
lui $1, 3
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG631:
mflo $2
bne $4, $4, TAG632
mult $2, $2
multu $4, $2
TAG632:
bgtz $2, TAG633
lui $2, 2
mflo $2
beq $2, $2, TAG633
TAG633:
sll $0, $0, 0
sll $3, $2, 1
blez $2, TAG634
mthi $2
TAG634:
sllv $1, $3, $3
srl $3, $1, 9
ori $1, $3, 12
beq $3, $1, TAG635
TAG635:
or $3, $1, $1
mult $1, $3
bne $1, $3, TAG636
ori $2, $3, 0
TAG636:
beq $2, $2, TAG637
addu $3, $2, $2
lui $3, 0
sw $3, 0($3)
TAG637:
xori $1, $3, 15
bltz $3, TAG638
addu $1, $1, $1
bne $3, $1, TAG638
TAG638:
sltu $4, $1, $1
lbu $1, -2094($1)
beq $4, $1, TAG639
ori $2, $4, 14
TAG639:
mthi $2
blez $2, TAG640
divu $2, $2
lh $2, 0($2)
TAG640:
mflo $1
mthi $2
bne $2, $2, TAG641
mthi $2
TAG641:
sra $4, $1, 0
lui $1, 3
sll $0, $0, 0
sltiu $3, $1, 11
TAG642:
srav $3, $3, $3
mthi $3
lh $4, 0($3)
multu $4, $3
TAG643:
sll $0, $0, 0
xor $3, $4, $1
bne $3, $1, TAG644
lui $4, 7
TAG644:
sltiu $3, $4, 10
lui $2, 2
sb $4, 0($3)
lw $4, 0($3)
TAG645:
sw $4, -4096($4)
lh $2, -4096($4)
slti $3, $2, 2
bne $3, $4, TAG646
TAG646:
mflo $1
mflo $3
sw $3, 0($1)
mult $1, $3
TAG647:
lui $1, 4
mfhi $3
bgtz $3, TAG648
nor $2, $1, $3
TAG648:
sll $0, $0, 0
mthi $2
beq $2, $2, TAG649
mflo $2
TAG649:
lui $1, 13
sll $0, $0, 0
multu $1, $1
mthi $3
TAG650:
bgtz $3, TAG651
slti $4, $3, 5
xori $3, $4, 13
bne $3, $3, TAG651
TAG651:
multu $3, $3
lbu $1, 0($3)
mthi $3
lhu $4, 0($3)
TAG652:
sb $4, -3340($4)
sb $4, -3340($4)
sll $1, $4, 15
bne $1, $1, TAG653
TAG653:
divu $1, $1
sll $3, $1, 4
sll $0, $0, 0
blez $1, TAG654
TAG654:
sll $0, $0, 0
xori $3, $1, 2
divu $1, $3
addiu $4, $1, 9
TAG655:
slti $3, $4, 13
sb $3, 0($3)
multu $3, $3
lui $4, 2
TAG656:
bgez $4, TAG657
srav $2, $4, $4
div $4, $4
mfhi $2
TAG657:
subu $3, $2, $2
lui $3, 14
bltz $3, TAG658
sll $0, $0, 0
TAG658:
andi $3, $3, 9
beq $3, $3, TAG659
mflo $4
mthi $4
TAG659:
beq $4, $4, TAG660
sw $4, 0($4)
mtlo $4
multu $4, $4
TAG660:
sh $4, 0($4)
sh $4, 0($4)
sw $4, 0($4)
beq $4, $4, TAG661
TAG661:
sh $4, 0($4)
lui $2, 8
mtlo $2
xor $4, $4, $2
TAG662:
beq $4, $4, TAG663
xor $1, $4, $4
lui $3, 1
sh $1, 0($4)
TAG663:
srav $4, $3, $3
bltz $3, TAG664
addiu $2, $3, 11
beq $3, $2, TAG664
TAG664:
lui $1, 5
lbu $4, 0($2)
mult $1, $4
bne $4, $4, TAG665
TAG665:
sra $1, $4, 0
lhu $4, 0($1)
beq $4, $4, TAG666
mfhi $3
TAG666:
bgez $3, TAG667
sltiu $1, $3, 12
mthi $1
sllv $2, $3, $3
TAG667:
beq $2, $2, TAG668
div $2, $2
beq $2, $2, TAG668
mtlo $2
TAG668:
srav $2, $2, $2
mtlo $2
lui $1, 2
lui $1, 8
TAG669:
mflo $1
mflo $3
mfhi $1
xori $1, $1, 3
TAG670:
beq $1, $1, TAG671
lui $4, 0
subu $3, $4, $1
lbu $1, 0($4)
TAG671:
srl $1, $1, 2
mfhi $4
mfhi $1
mthi $1
TAG672:
sltiu $1, $1, 10
or $1, $1, $1
sb $1, 0($1)
bgtz $1, TAG673
TAG673:
addu $2, $1, $1
sb $2, 0($1)
mult $2, $1
divu $1, $2
TAG674:
mfhi $3
mtlo $3
sll $2, $3, 2
mthi $3
TAG675:
mult $2, $2
lui $3, 3
lui $2, 6
blez $3, TAG676
TAG676:
sll $0, $0, 0
subu $2, $2, $2
sll $3, $2, 11
bgez $3, TAG677
TAG677:
sra $1, $3, 4
lui $1, 2
divu $1, $1
mflo $3
TAG678:
lbu $1, 0($3)
div $3, $1
bgtz $3, TAG679
mfhi $1
TAG679:
mfhi $1
mflo $2
lh $2, 0($2)
beq $1, $1, TAG680
TAG680:
mult $2, $2
mult $2, $2
lb $2, -512($2)
bne $2, $2, TAG681
TAG681:
sltiu $4, $2, 8
lui $4, 12
lui $3, 10
lui $1, 9
TAG682:
andi $1, $1, 13
mult $1, $1
sw $1, 0($1)
nor $2, $1, $1
TAG683:
sb $2, 1($2)
mtlo $2
divu $2, $2
mtlo $2
TAG684:
lui $4, 5
bltz $2, TAG685
lui $1, 5
lui $2, 7
TAG685:
sh $2, 1($2)
or $2, $2, $2
addiu $4, $2, 3
mthi $2
TAG686:
ori $4, $4, 6
lb $3, 0($4)
mfhi $1
and $2, $1, $3
TAG687:
mflo $1
mflo $2
mfhi $3
sw $1, 1($1)
TAG688:
or $1, $3, $3
multu $3, $3
mflo $4
sw $1, 1($3)
TAG689:
beq $4, $4, TAG690
lui $2, 1
divu $4, $4
sltiu $2, $2, 13
TAG690:
blez $2, TAG691
srlv $3, $2, $2
bgez $3, TAG691
divu $2, $3
TAG691:
lui $4, 14
nor $1, $4, $3
beq $3, $1, TAG692
multu $1, $4
TAG692:
srav $2, $1, $1
mthi $2
sb $2, 1($2)
sll $0, $0, 0
TAG693:
sw $2, 1($2)
lui $3, 3
mthi $3
bgez $3, TAG694
TAG694:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG695
TAG695:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG696:
bgtz $2, TAG697
slti $2, $2, 13
mflo $3
lbu $3, 0($2)
TAG697:
mthi $3
lw $1, -255($3)
ori $3, $1, 2
divu $3, $3
TAG698:
xor $2, $3, $3
divu $2, $3
lbu $3, 1($3)
blez $3, TAG699
TAG699:
sll $0, $0, 0
lui $1, 12
multu $1, $1
sll $0, $0, 0
TAG700:
or $2, $1, $1
srav $1, $1, $1
bltz $1, TAG701
sll $0, $0, 0
TAG701:
mtlo $1
mfhi $1
lw $4, -144($1)
sw $1, -144($1)
TAG702:
lui $4, 14
lui $3, 1
bltz $3, TAG703
sll $0, $0, 0
TAG703:
mfhi $3
ori $3, $2, 0
bne $3, $3, TAG704
sll $0, $0, 0
TAG704:
sll $0, $0, 0
andi $2, $2, 0
lui $3, 4
bne $2, $3, TAG705
TAG705:
lui $3, 0
sh $3, 0($3)
mfhi $2
lui $3, 10
TAG706:
subu $1, $3, $3
sll $0, $0, 0
mflo $2
lui $1, 1
TAG707:
srlv $3, $1, $1
beq $1, $1, TAG708
mtlo $3
blez $1, TAG708
TAG708:
sll $0, $0, 0
or $3, $3, $3
sll $0, $0, 0
mfhi $3
TAG709:
bltz $3, TAG710
mtlo $3
blez $3, TAG710
andi $1, $3, 10
TAG710:
slti $4, $1, 11
mthi $1
sb $4, 0($1)
bne $4, $1, TAG711
TAG711:
mflo $4
bne $4, $4, TAG712
and $3, $4, $4
mtlo $4
TAG712:
mfhi $1
sb $1, -144($3)
xori $4, $3, 5
div $3, $4
TAG713:
lui $3, 4
mfhi $1
bne $1, $4, TAG714
mflo $3
TAG714:
sh $3, 0($3)
lb $3, 0($3)
sw $3, 0($3)
xori $4, $3, 4
TAG715:
sb $4, 0($4)
mthi $4
mfhi $1
subu $3, $4, $4
TAG716:
sb $3, 0($3)
bgtz $3, TAG717
lh $3, 0($3)
lh $3, 0($3)
TAG717:
mflo $3
multu $3, $3
bne $3, $3, TAG718
lhu $2, 0($3)
TAG718:
bgtz $2, TAG719
mflo $4
addi $1, $2, 12
mtlo $1
TAG719:
mflo $4
beq $4, $1, TAG720
sltiu $4, $1, 3
sh $1, 0($4)
TAG720:
lb $2, 0($4)
multu $4, $4
bne $4, $2, TAG721
lbu $1, 0($2)
TAG721:
lbu $4, 0($1)
mflo $2
multu $2, $4
lb $4, 0($2)
TAG722:
bne $4, $4, TAG723
lh $2, 0($4)
bgez $2, TAG723
multu $2, $2
TAG723:
bltz $2, TAG724
sb $2, 0($2)
multu $2, $2
mthi $2
TAG724:
sh $2, 0($2)
lui $3, 11
mflo $1
sltiu $3, $2, 8
TAG725:
mtlo $3
bgez $3, TAG726
lb $4, 0($3)
add $2, $3, $4
TAG726:
beq $2, $2, TAG727
mthi $2
lui $1, 4
div $2, $1
TAG727:
bgez $1, TAG728
sb $1, 0($1)
sh $1, 0($1)
addiu $4, $1, 13
TAG728:
andi $1, $4, 5
multu $1, $1
lb $4, 0($1)
mfhi $1
TAG729:
srl $2, $1, 7
lui $2, 7
sll $0, $0, 0
sll $0, $0, 0
TAG730:
sll $0, $0, 0
bne $2, $1, TAG731
lui $3, 3
sw $2, 0($3)
TAG731:
mflo $3
mult $3, $3
sh $3, 0($3)
mflo $1
TAG732:
lw $1, 0($1)
beq $1, $1, TAG733
mthi $1
mtlo $1
TAG733:
lui $2, 11
sll $0, $0, 0
bne $1, $2, TAG734
lui $2, 15
TAG734:
srl $2, $2, 1
sll $0, $0, 0
sll $0, $0, 0
addu $2, $2, $3
TAG735:
bltz $2, TAG736
sll $0, $0, 0
lui $1, 11
srav $3, $1, $1
TAG736:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG737
TAG737:
lui $1, 13
lui $1, 15
subu $2, $1, $1
bltz $1, TAG738
TAG738:
xor $3, $2, $2
beq $2, $3, TAG739
mthi $2
mtlo $3
TAG739:
mfhi $2
slt $4, $2, $3
mthi $3
sub $1, $4, $3
TAG740:
mthi $1
beq $1, $1, TAG741
sb $1, 0($1)
sw $1, 0($1)
TAG741:
mtlo $1
bne $1, $1, TAG742
mflo $2
xor $3, $1, $1
TAG742:
lui $3, 14
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG743:
lw $2, 0($4)
mthi $2
ori $4, $4, 11
addu $2, $2, $2
TAG744:
sw $2, 0($2)
mult $2, $2
mfhi $4
bne $2, $2, TAG745
TAG745:
andi $2, $4, 6
addi $2, $4, 5
mtlo $2
xori $1, $4, 13
TAG746:
mfhi $1
multu $1, $1
mult $1, $1
sb $1, 0($1)
TAG747:
lh $3, 0($1)
mthi $1
sllv $1, $3, $1
blez $3, TAG748
TAG748:
lh $3, 0($1)
mult $1, $3
multu $3, $3
or $1, $3, $1
TAG749:
mult $1, $1
bne $1, $1, TAG750
lui $4, 7
mfhi $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop