ori $1, $0, 13
ori $2, $0, 0
ori $3, $0, 13
ori $4, $0, 3
sw $2, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $3, 56($0)
sw $1, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $2, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $4, 124($0)
slt $2, $2, $2
mult $2, $2
lui $3, 4
slti $2, $2, 2
TAG1:
mflo $2
bgez $2, TAG2
srav $1, $2, $2
sh $2, 0($1)
TAG2:
andi $1, $1, 15
mult $1, $1
lw $2, 0($1)
blez $1, TAG3
TAG3:
lbu $1, 0($2)
sra $3, $1, 8
lui $1, 8
mflo $1
TAG4:
bgtz $1, TAG5
lui $2, 12
sll $0, $0, 0
addu $4, $1, $1
TAG5:
lui $4, 14
mfhi $1
addiu $3, $4, 7
sll $0, $0, 0
TAG6:
sll $0, $0, 0
bne $3, $3, TAG7
mult $3, $3
srlv $4, $3, $3
TAG7:
divu $4, $4
lh $4, -7168($4)
sll $3, $4, 13
blez $3, TAG8
TAG8:
add $4, $3, $3
mflo $4
multu $4, $3
beq $3, $4, TAG9
TAG9:
lui $3, 8
blez $3, TAG10
mfhi $1
lui $3, 8
TAG10:
div $3, $3
sll $0, $0, 0
bne $3, $3, TAG11
multu $3, $3
TAG11:
bne $3, $3, TAG12
mflo $4
mthi $4
bne $3, $4, TAG12
TAG12:
mflo $2
sh $4, 0($4)
lh $3, 0($2)
lui $4, 1
TAG13:
sll $0, $0, 0
mult $4, $3
mfhi $3
andi $3, $3, 1
TAG14:
bltz $3, TAG15
addu $2, $3, $3
lhu $3, 0($3)
ori $1, $2, 13
TAG15:
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG16
div $1, $1
TAG16:
slt $1, $1, $1
mult $1, $1
sb $1, 0($1)
srl $4, $1, 9
TAG17:
mtlo $4
lw $3, 0($4)
sub $2, $3, $4
mthi $4
TAG18:
blez $2, TAG19
and $1, $2, $2
bgtz $2, TAG19
sltu $2, $1, $2
TAG19:
mthi $2
beq $2, $2, TAG20
srav $3, $2, $2
sllv $1, $2, $2
TAG20:
mthi $1
beq $1, $1, TAG21
mtlo $1
mult $1, $1
TAG21:
sb $1, 0($1)
mthi $1
beq $1, $1, TAG22
sb $1, 0($1)
TAG22:
ori $4, $1, 15
lbu $3, 0($4)
sh $3, 0($1)
sra $2, $1, 6
TAG23:
sb $2, 0($2)
beq $2, $2, TAG24
lb $1, 0($2)
mflo $1
TAG24:
bltz $1, TAG25
xor $3, $1, $1
xor $2, $1, $1
mfhi $2
TAG25:
lui $1, 6
sll $0, $0, 0
mthi $2
addiu $3, $2, 3
TAG26:
multu $3, $3
mfhi $4
or $1, $4, $4
sb $4, 0($1)
TAG27:
lb $1, 0($1)
bltz $1, TAG28
lui $1, 4
bgez $1, TAG28
TAG28:
mult $1, $1
beq $1, $1, TAG29
multu $1, $1
beq $1, $1, TAG29
TAG29:
mtlo $1
divu $1, $1
mthi $1
bgtz $1, TAG30
TAG30:
addu $1, $1, $1
bne $1, $1, TAG31
sll $0, $0, 0
mfhi $4
TAG31:
bgtz $4, TAG32
sll $0, $0, 0
mthi $4
sb $4, 0($4)
TAG32:
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
mtlo $4
TAG33:
bgez $4, TAG34
mthi $4
mfhi $1
andi $3, $1, 0
TAG34:
lui $3, 11
sll $0, $0, 0
and $1, $3, $3
srl $4, $3, 1
TAG35:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
lb $4, 0($2)
TAG36:
sllv $1, $4, $4
lui $1, 1
addiu $1, $1, 2
lb $4, 0($4)
TAG37:
sh $4, 0($4)
bne $4, $4, TAG38
andi $3, $4, 5
mthi $4
TAG38:
lui $3, 1
blez $3, TAG39
sll $0, $0, 0
mtlo $3
TAG39:
divu $3, $3
mfhi $2
lui $4, 1
mthi $2
TAG40:
mflo $3
srav $1, $4, $4
sll $0, $0, 0
beq $4, $4, TAG41
TAG41:
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
subu $1, $1, $1
TAG42:
blez $1, TAG43
mthi $1
sltiu $4, $1, 15
sltu $4, $4, $4
TAG43:
sll $0, $0, 0
bne $3, $3, TAG44
div $3, $3
sll $0, $0, 0
TAG44:
mfhi $1
mfhi $1
sltu $2, $1, $3
mtlo $2
TAG45:
mthi $2
sltu $4, $2, $2
lui $4, 4
mflo $1
TAG46:
mthi $1
div $1, $1
mtlo $1
beq $1, $1, TAG47
TAG47:
sb $1, 0($1)
sb $1, 0($1)
bgtz $1, TAG48
mfhi $2
TAG48:
lui $4, 2
beq $4, $2, TAG49
mfhi $2
mfhi $1
TAG49:
multu $1, $1
mflo $2
lui $3, 1
bgez $2, TAG50
TAG50:
mtlo $3
blez $3, TAG51
sll $0, $0, 0
sll $0, $0, 0
TAG51:
lui $1, 0
addiu $1, $4, 5
div $1, $1
bgez $1, TAG52
TAG52:
sll $0, $0, 0
mfhi $1
lui $3, 7
bltz $3, TAG53
TAG53:
xori $4, $3, 10
mult $4, $4
mfhi $2
mtlo $4
TAG54:
srav $4, $2, $2
sb $2, 0($2)
xor $3, $4, $4
lui $2, 13
TAG55:
multu $2, $2
beq $2, $2, TAG56
mthi $2
bgez $2, TAG56
TAG56:
sll $0, $0, 0
bne $2, $2, TAG57
sll $0, $0, 0
divu $2, $2
TAG57:
lui $1, 8
blez $2, TAG58
divu $1, $1
beq $1, $2, TAG58
TAG58:
srlv $4, $1, $1
sll $0, $0, 0
sub $4, $4, $3
addiu $1, $1, 5
TAG59:
mfhi $4
mthi $1
lui $1, 7
mflo $4
TAG60:
lbu $1, 0($4)
srav $2, $4, $4
blez $2, TAG61
mthi $4
TAG61:
mult $2, $2
mthi $2
mflo $2
mthi $2
TAG62:
mult $2, $2
bgez $2, TAG63
srav $4, $2, $2
lw $4, 0($2)
TAG63:
lui $1, 4
mthi $1
xori $4, $1, 9
sll $0, $0, 0
TAG64:
div $4, $4
bne $4, $4, TAG65
lui $3, 12
beq $3, $3, TAG65
TAG65:
mflo $2
addiu $4, $3, 14
lui $2, 3
bne $2, $2, TAG66
TAG66:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG67
lui $2, 11
TAG67:
sll $0, $0, 0
andi $4, $4, 6
lui $1, 14
lui $3, 5
TAG68:
multu $3, $3
multu $3, $3
mfhi $2
mtlo $3
TAG69:
bne $2, $2, TAG70
subu $4, $2, $2
bgez $4, TAG70
addu $3, $4, $2
TAG70:
lbu $2, 0($3)
lb $4, 0($2)
andi $3, $3, 11
mfhi $4
TAG71:
lb $4, 0($4)
sltu $3, $4, $4
lui $3, 12
srav $1, $3, $3
TAG72:
lui $4, 4
sll $0, $0, 0
xor $1, $4, $4
sb $4, 0($1)
TAG73:
multu $1, $1
lh $3, 0($1)
sb $1, -256($3)
mflo $3
TAG74:
lhu $1, 0($3)
mflo $2
blez $2, TAG75
multu $1, $2
TAG75:
blez $2, TAG76
mtlo $2
bgez $2, TAG76
mflo $2
TAG76:
addiu $4, $2, 3
mfhi $4
lw $3, 0($4)
lui $3, 3
TAG77:
lui $3, 3
srav $4, $3, $3
multu $3, $3
mtlo $4
TAG78:
mtlo $4
lui $2, 9
lui $2, 12
mtlo $2
TAG79:
mtlo $2
sll $0, $0, 0
subu $1, $2, $2
sub $2, $2, $1
TAG80:
subu $2, $2, $2
sb $2, 0($2)
mfhi $3
nor $3, $2, $2
TAG81:
mtlo $3
sw $3, 1($3)
xori $3, $3, 10
sb $3, 11($3)
TAG82:
ori $4, $3, 7
addiu $3, $3, 15
lb $1, 9($4)
mtlo $3
TAG83:
sb $1, 11($1)
mult $1, $1
lh $4, 11($1)
sllv $1, $4, $4
TAG84:
srl $1, $1, 6
slt $1, $1, $1
lui $3, 12
beq $1, $1, TAG85
TAG85:
mfhi $1
multu $1, $1
mtlo $3
lui $1, 4
TAG86:
bne $1, $1, TAG87
mfhi $1
mflo $3
mflo $1
TAG87:
beq $1, $1, TAG88
divu $1, $1
mflo $1
mtlo $1
TAG88:
sll $0, $0, 0
addiu $2, $2, 15
lui $3, 8
multu $2, $3
TAG89:
lui $4, 12
xor $1, $3, $4
sll $0, $0, 0
mflo $4
TAG90:
sll $0, $0, 0
bgtz $4, TAG91
lui $4, 13
bne $4, $4, TAG91
TAG91:
multu $4, $4
mtlo $4
mthi $4
mult $4, $4
TAG92:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 1
div $4, $4
TAG93:
srl $1, $1, 7
lui $1, 10
divu $1, $1
sll $4, $1, 7
TAG94:
mflo $3
sb $4, 0($3)
lui $2, 11
lui $1, 10
TAG95:
mthi $1
or $1, $1, $1
slt $3, $1, $1
mtlo $1
TAG96:
or $1, $3, $3
lui $2, 8
mfhi $2
and $2, $1, $2
TAG97:
lbu $3, 0($2)
bgtz $3, TAG98
sll $1, $2, 10
sllv $3, $3, $2
TAG98:
mult $3, $3
divu $3, $3
beq $3, $3, TAG99
ori $3, $3, 14
TAG99:
sll $0, $0, 0
mfhi $4
lui $3, 0
ori $3, $3, 7
TAG100:
mtlo $3
lui $2, 13
beq $3, $2, TAG101
andi $1, $3, 10
TAG101:
beq $1, $1, TAG102
multu $1, $1
beq $1, $1, TAG102
andi $2, $1, 14
TAG102:
sll $0, $0, 0
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
TAG103:
multu $4, $4
mthi $4
or $2, $4, $4
lui $2, 13
TAG104:
mthi $2
lui $2, 0
bgez $2, TAG105
mtlo $2
TAG105:
mflo $1
lw $4, 0($1)
sh $2, 0($1)
sll $0, $0, 0
TAG106:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG107
sll $0, $0, 0
TAG107:
bgtz $4, TAG108
mult $4, $4
ori $3, $4, 6
lui $4, 13
TAG108:
sll $0, $0, 0
sw $1, 0($1)
sh $1, 0($1)
lui $3, 10
TAG109:
sll $0, $0, 0
lui $3, 2
lw $2, 0($2)
bne $2, $3, TAG110
TAG110:
sub $2, $2, $2
sh $2, 0($2)
lui $3, 11
addiu $1, $3, 3
TAG111:
beq $1, $1, TAG112
mflo $2
lw $4, 0($2)
sh $4, 0($2)
TAG112:
sll $0, $0, 0
bgtz $4, TAG113
mfhi $2
lui $3, 7
TAG113:
andi $4, $3, 11
lui $4, 11
sll $0, $0, 0
lui $3, 4
TAG114:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG115
srlv $2, $3, $3
TAG115:
or $1, $2, $2
lui $3, 6
mfhi $2
sltiu $2, $2, 0
TAG116:
mtlo $2
nor $4, $2, $2
srav $1, $2, $4
srav $4, $4, $1
TAG117:
sll $0, $0, 0
lui $2, 1
lui $2, 4
slti $2, $2, 7
TAG118:
bltz $2, TAG119
sh $2, 0($2)
blez $2, TAG119
lui $3, 1
TAG119:
lui $3, 1
sltiu $1, $3, 5
bne $3, $3, TAG120
mthi $3
TAG120:
bne $1, $1, TAG121
lhu $3, 0($1)
beq $1, $3, TAG121
slti $4, $1, 1
TAG121:
sb $4, 0($4)
lui $2, 1
sb $4, 0($4)
sll $0, $0, 0
TAG122:
sll $0, $0, 0
mfhi $1
sll $3, $2, 11
mtlo $4
TAG123:
beq $3, $3, TAG124
sll $0, $0, 0
lbu $1, 0($3)
addiu $4, $1, 13
TAG124:
sb $4, 0($4)
mthi $4
bgtz $4, TAG125
slti $2, $4, 3
TAG125:
nor $3, $2, $2
bltz $3, TAG126
mflo $3
lbu $4, 0($3)
TAG126:
sb $4, 0($4)
xor $1, $4, $4
bne $1, $4, TAG127
sll $1, $1, 3
TAG127:
lw $3, 0($1)
bne $3, $1, TAG128
sb $3, 0($1)
mfhi $2
TAG128:
sb $2, 0($2)
multu $2, $2
sb $2, 0($2)
bne $2, $2, TAG129
TAG129:
lui $3, 13
lb $2, 0($2)
sll $0, $0, 0
addu $2, $3, $1
TAG130:
xor $2, $2, $2
xori $3, $2, 7
or $3, $2, $2
lui $1, 5
TAG131:
mtlo $1
sll $0, $0, 0
mfhi $3
mflo $3
TAG132:
beq $3, $3, TAG133
mfhi $4
sll $2, $3, 15
mfhi $2
TAG133:
mult $2, $2
mfhi $2
lui $4, 9
bgtz $2, TAG134
TAG134:
slti $2, $4, 1
bne $2, $2, TAG135
sll $0, $0, 0
addu $2, $4, $1
TAG135:
bltz $2, TAG136
or $4, $2, $2
mflo $3
beq $4, $4, TAG136
TAG136:
and $2, $3, $3
bne $2, $2, TAG137
mult $2, $2
blez $3, TAG137
TAG137:
mflo $4
srav $4, $2, $2
mfhi $1
mult $2, $1
TAG138:
sb $1, 0($1)
mtlo $1
bne $1, $1, TAG139
sltiu $1, $1, 3
TAG139:
mthi $1
bgez $1, TAG140
lui $2, 7
slt $2, $2, $1
TAG140:
div $2, $2
sra $4, $2, 1
slti $2, $2, 6
sltu $3, $2, $2
TAG141:
bne $3, $3, TAG142
mthi $3
sllv $4, $3, $3
bne $4, $3, TAG142
TAG142:
lui $4, 0
sll $2, $4, 10
beq $4, $4, TAG143
sh $2, 0($2)
TAG143:
bgez $2, TAG144
ori $2, $2, 13
sh $2, 0($2)
bgtz $2, TAG144
TAG144:
mflo $4
mtlo $2
mflo $3
mflo $2
TAG145:
div $2, $2
subu $3, $2, $2
lui $4, 14
blez $2, TAG146
TAG146:
lui $3, 2
sll $0, $0, 0
mthi $3
or $4, $4, $4
TAG147:
bltz $4, TAG148
multu $4, $4
subu $4, $4, $4
lbu $3, 0($4)
TAG148:
sb $3, 0($3)
bltz $3, TAG149
srlv $4, $3, $3
mult $3, $4
TAG149:
bne $4, $4, TAG150
mult $4, $4
lui $4, 12
mthi $4
TAG150:
sll $0, $0, 0
multu $1, $1
mtlo $1
lbu $1, 0($1)
TAG151:
sw $1, 0($1)
srav $4, $1, $1
lui $4, 15
mthi $1
TAG152:
lui $3, 12
mfhi $3
mult $4, $3
bltz $3, TAG153
TAG153:
mthi $3
addiu $2, $3, 14
sra $4, $2, 8
lui $4, 7
TAG154:
subu $3, $4, $4
lui $1, 0
beq $3, $4, TAG155
subu $1, $3, $3
TAG155:
lbu $4, 0($1)
lbu $1, 0($1)
sh $1, 0($1)
lh $1, 0($1)
TAG156:
bgtz $1, TAG157
lbu $4, 0($1)
ori $1, $4, 5
subu $2, $4, $1
TAG157:
srl $2, $2, 11
srl $3, $2, 12
blez $2, TAG158
divu $3, $3
TAG158:
mtlo $3
mflo $1
mthi $3
sltiu $2, $1, 9
TAG159:
mflo $3
lui $1, 3
sb $3, 0($2)
bgez $3, TAG160
TAG160:
mtlo $1
addu $2, $1, $1
lui $3, 7
srl $2, $1, 10
TAG161:
mfhi $4
slt $1, $4, $2
sw $2, -192($2)
lw $1, 0($1)
TAG162:
mtlo $1
mthi $1
blez $1, TAG163
lb $3, -192($1)
TAG163:
sw $3, 64($3)
sra $1, $3, 12
bne $3, $3, TAG164
divu $1, $3
TAG164:
beq $1, $1, TAG165
lui $1, 10
mult $1, $1
bgtz $1, TAG165
TAG165:
sll $0, $0, 0
bne $1, $1, TAG166
mthi $1
andi $3, $1, 0
TAG166:
sltu $3, $3, $3
lui $4, 1
mult $4, $3
sltiu $4, $4, 3
TAG167:
sh $4, 0($4)
sra $2, $4, 12
sw $2, 0($4)
mflo $1
TAG168:
bne $1, $1, TAG169
lbu $4, 0($1)
lui $4, 4
bgez $1, TAG169
TAG169:
sll $0, $0, 0
beq $4, $1, TAG170
mult $1, $4
sll $0, $0, 0
TAG170:
mult $1, $1
sll $4, $1, 1
mfhi $4
srav $1, $4, $4
TAG171:
bltz $1, TAG172
addi $3, $1, 6
sltiu $3, $3, 7
sltu $2, $1, $1
TAG172:
lui $3, 9
bltz $2, TAG173
mfhi $1
srav $4, $1, $1
TAG173:
lui $3, 14
multu $4, $4
and $2, $3, $4
lui $1, 3
TAG174:
mthi $1
mult $1, $1
mult $1, $1
mtlo $1
TAG175:
lui $2, 12
mult $1, $1
blez $2, TAG176
subu $4, $1, $2
TAG176:
sll $0, $0, 0
mtlo $4
beq $4, $4, TAG177
sll $0, $0, 0
TAG177:
lui $3, 2
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG178:
bgez $2, TAG179
mflo $2
mfhi $3
sllv $1, $3, $2
TAG179:
lui $4, 13
sb $1, 0($1)
lui $3, 10
sll $0, $0, 0
TAG180:
sll $0, $0, 0
lui $2, 11
bne $3, $2, TAG181
sll $0, $0, 0
TAG181:
mfhi $2
lb $3, 0($2)
lb $2, 0($2)
lb $3, 0($1)
TAG182:
mfhi $1
lbu $2, 0($1)
srl $2, $3, 11
lui $3, 9
TAG183:
lui $2, 3
mult $2, $3
beq $3, $3, TAG184
multu $3, $2
TAG184:
andi $3, $2, 9
srlv $2, $2, $2
mthi $2
mfhi $3
TAG185:
mfhi $2
mflo $3
multu $2, $3
lh $1, 0($3)
TAG186:
bltz $1, TAG187
lui $1, 11
subu $4, $1, $1
lui $3, 14
TAG187:
slti $2, $3, 4
lw $3, 0($2)
mult $3, $2
bne $2, $3, TAG188
TAG188:
lui $1, 14
mthi $1
lui $2, 1
mult $1, $1
TAG189:
bne $2, $2, TAG190
mfhi $1
bgez $2, TAG190
mfhi $3
TAG190:
multu $3, $3
lui $1, 15
lbu $1, -196($3)
and $3, $3, $1
TAG191:
beq $3, $3, TAG192
sw $3, 0($3)
beq $3, $3, TAG192
sw $3, 0($3)
TAG192:
sw $3, 0($3)
mtlo $3
add $1, $3, $3
slti $2, $1, 6
TAG193:
bne $2, $2, TAG194
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
TAG194:
lui $1, 7
mtlo $1
bgtz $1, TAG195
mult $1, $2
TAG195:
sll $0, $0, 0
mthi $3
sra $4, $3, 9
mthi $1
TAG196:
sw $4, 0($4)
multu $4, $4
mult $4, $4
lui $3, 10
TAG197:
bne $3, $3, TAG198
sll $0, $0, 0
beq $3, $3, TAG198
sllv $4, $3, $3
TAG198:
sll $0, $0, 0
bgez $4, TAG199
sll $0, $0, 0
sw $2, 0($2)
TAG199:
mthi $2
sb $2, 0($2)
lui $1, 10
lui $3, 7
TAG200:
mtlo $3
beq $3, $3, TAG201
mtlo $3
sra $3, $3, 3
TAG201:
bne $3, $3, TAG202
div $3, $3
sllv $2, $3, $3
bne $3, $3, TAG202
TAG202:
addiu $4, $2, 15
sll $3, $4, 11
divu $3, $3
bltz $4, TAG203
TAG203:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG204
TAG204:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG205
TAG205:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 9
sll $0, $0, 0
TAG206:
bne $2, $2, TAG207
mult $2, $2
mfhi $1
lui $2, 11
TAG207:
beq $2, $2, TAG208
nor $1, $2, $2
sb $1, 0($1)
beq $2, $2, TAG208
TAG208:
sll $0, $0, 0
multu $1, $1
mult $1, $1
sll $4, $1, 11
TAG209:
addu $2, $4, $4
lui $3, 11
addiu $3, $3, 7
div $3, $4
TAG210:
bgtz $3, TAG211
sllv $2, $3, $3
mthi $2
mult $2, $3
TAG211:
lui $2, 8
bgez $2, TAG212
andi $2, $2, 12
mult $2, $2
TAG212:
sw $2, 0($2)
lhu $3, 0($2)
mtlo $2
lbu $3, 0($3)
TAG213:
mflo $4
lui $4, 13
lui $1, 14
divu $4, $1
TAG214:
mthi $1
lui $1, 13
and $1, $1, $1
addu $2, $1, $1
TAG215:
sll $0, $0, 0
mthi $2
lui $2, 10
sll $0, $0, 0
TAG216:
beq $2, $2, TAG217
div $2, $2
mflo $4
bgez $2, TAG217
TAG217:
sll $0, $0, 0
addu $3, $4, $4
beq $4, $3, TAG218
sll $0, $0, 0
TAG218:
bne $4, $4, TAG219
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
TAG219:
mthi $2
bgez $2, TAG220
mthi $2
mflo $1
TAG220:
lui $1, 5
mflo $3
addiu $4, $3, 1
srl $3, $3, 6
TAG221:
lbu $4, 0($3)
lbu $1, 0($4)
lh $3, 0($4)
mfhi $1
TAG222:
sll $0, $0, 0
multu $1, $3
mfhi $4
multu $1, $3
TAG223:
lbu $3, 0($4)
lui $3, 4
mthi $3
xori $2, $3, 9
TAG224:
sll $0, $0, 0
sltu $4, $3, $3
andi $2, $3, 11
srl $4, $4, 5
TAG225:
lw $3, 0($4)
mfhi $3
sll $0, $0, 0
nor $2, $3, $3
TAG226:
bgez $2, TAG227
multu $2, $2
mtlo $2
beq $2, $2, TAG227
TAG227:
sll $0, $0, 0
bltz $2, TAG228
srl $4, $2, 5
mfhi $3
TAG228:
mtlo $3
beq $3, $3, TAG229
mflo $3
addi $4, $3, 8
TAG229:
addiu $3, $4, 13
bgez $3, TAG230
mflo $2
lw $2, 0($4)
TAG230:
sll $0, $0, 0
mflo $2
subu $4, $2, $2
lui $4, 11
TAG231:
bne $4, $4, TAG232
addu $1, $4, $4
mtlo $4
lui $4, 15
TAG232:
srl $3, $4, 11
bne $3, $4, TAG233
mult $3, $3
divu $4, $4
TAG233:
mflo $1
and $1, $1, $1
sll $0, $0, 0
srav $4, $3, $1
TAG234:
bne $4, $4, TAG235
lb $2, -480($4)
sb $4, 0($2)
mthi $4
TAG235:
bne $2, $2, TAG236
mult $2, $2
mtlo $2
sltu $4, $2, $2
TAG236:
bgtz $4, TAG237
lh $1, 0($4)
sh $1, -224($1)
sub $1, $4, $4
TAG237:
sllv $2, $1, $1
mtlo $2
mflo $2
slt $2, $2, $2
TAG238:
sltiu $2, $2, 0
bltz $2, TAG239
sra $3, $2, 14
lui $2, 7
TAG239:
lui $1, 0
bne $1, $2, TAG240
sltiu $1, $2, 3
mult $2, $1
TAG240:
xori $3, $1, 9
bne $3, $1, TAG241
mtlo $3
addi $1, $3, 4
TAG241:
mult $1, $1
sltiu $4, $1, 12
beq $1, $1, TAG242
divu $4, $4
TAG242:
divu $4, $4
sb $4, 0($4)
lbu $4, 0($4)
divu $4, $4
TAG243:
bgtz $4, TAG244
mflo $4
mfhi $4
lbu $1, 0($4)
TAG244:
lui $3, 1
mflo $2
addiu $2, $3, 5
srav $3, $2, $2
TAG245:
slti $3, $3, 2
lui $1, 5
bltz $1, TAG246
mtlo $1
TAG246:
subu $1, $1, $1
bne $1, $1, TAG247
mfhi $1
lui $2, 4
TAG247:
bgez $2, TAG248
mfhi $4
sw $2, 0($2)
sltiu $1, $2, 14
TAG248:
lb $3, 0($1)
nor $1, $1, $3
sb $1, 0($1)
mfhi $1
TAG249:
bltz $1, TAG250
ori $1, $1, 15
mthi $1
mthi $1
TAG250:
sb $1, 0($1)
lbu $1, 0($1)
bgez $1, TAG251
lb $1, 0($1)
TAG251:
lui $3, 7
lbu $1, 0($1)
sll $0, $0, 0
sltu $4, $1, $3
TAG252:
srl $3, $4, 6
srl $4, $3, 15
ori $4, $4, 8
srlv $4, $4, $4
TAG253:
bgtz $4, TAG254
lhu $4, 0($4)
or $1, $4, $4
lui $1, 12
TAG254:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
lui $3, 2
TAG255:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG256:
mthi $4
sw $4, -480($4)
lh $1, -480($4)
slti $1, $1, 9
TAG257:
sltiu $3, $1, 10
mtlo $1
nor $1, $3, $1
addu $3, $3, $1
TAG258:
mult $3, $3
ori $3, $3, 4
lb $1, 1($3)
divu $1, $1
TAG259:
mflo $2
lui $1, 15
blez $2, TAG260
sll $0, $0, 0
TAG260:
mfhi $2
lui $2, 12
mult $2, $1
multu $1, $2
TAG261:
bne $2, $2, TAG262
multu $2, $2
bne $2, $2, TAG262
lui $4, 15
TAG262:
sll $0, $0, 0
andi $2, $4, 1
sra $1, $4, 8
lb $4, -3840($1)
TAG263:
beq $4, $4, TAG264
divu $4, $4
div $4, $4
mthi $4
TAG264:
div $4, $4
blez $4, TAG265
sw $4, 32($4)
lui $2, 2
TAG265:
mthi $2
addiu $2, $2, 10
sh $2, 0($2)
mfhi $1
TAG266:
sw $1, 0($1)
mflo $3
bgtz $3, TAG267
lui $2, 5
TAG267:
mflo $3
lui $1, 9
sb $1, 0($3)
mflo $1
TAG268:
mthi $1
mthi $1
mflo $4
multu $4, $1
TAG269:
sb $4, 0($4)
sb $4, 0($4)
srlv $1, $4, $4
mult $1, $1
TAG270:
mfhi $2
addi $2, $2, 15
lui $2, 0
beq $2, $2, TAG271
TAG271:
addiu $2, $2, 15
nor $2, $2, $2
lui $3, 1
divu $2, $2
TAG272:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG273:
addu $4, $3, $3
sll $0, $0, 0
subu $1, $4, $3
mthi $1
TAG274:
div $1, $1
bne $1, $1, TAG275
mfhi $1
xori $3, $1, 5
TAG275:
mflo $4
lb $1, 0($4)
lb $3, 0($3)
andi $2, $3, 12
TAG276:
mflo $2
lb $4, 0($2)
bgez $2, TAG277
mtlo $4
TAG277:
addiu $3, $4, 0
multu $4, $3
mflo $1
blez $4, TAG278
TAG278:
mult $1, $1
mult $1, $1
beq $1, $1, TAG279
mult $1, $1
TAG279:
sb $1, 0($1)
lui $3, 12
bltz $3, TAG280
lbu $3, 0($1)
TAG280:
mflo $2
blez $3, TAG281
nor $3, $3, $2
divu $3, $2
TAG281:
sllv $1, $3, $3
mtlo $1
lui $1, 4
div $1, $1
TAG282:
addiu $2, $1, 3
divu $2, $1
bltz $2, TAG283
addu $3, $2, $1
TAG283:
multu $3, $3
beq $3, $3, TAG284
mfhi $2
blez $2, TAG284
TAG284:
mthi $2
beq $2, $2, TAG285
sw $2, 0($2)
mtlo $2
TAG285:
subu $3, $2, $2
mflo $4
mthi $4
mthi $3
TAG286:
sllv $2, $4, $4
sll $0, $0, 0
xor $1, $2, $4
beq $2, $1, TAG287
TAG287:
div $1, $1
sra $2, $1, 6
mflo $4
mtlo $1
TAG288:
lui $3, 9
lui $1, 4
sll $0, $0, 0
mflo $1
TAG289:
beq $1, $1, TAG290
sll $0, $0, 0
srav $3, $2, $2
sh $2, 0($2)
TAG290:
mtlo $3
sll $0, $0, 0
blez $3, TAG291
sll $0, $0, 0
TAG291:
sll $0, $0, 0
divu $3, $3
srl $4, $3, 0
sll $0, $0, 0
TAG292:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG293
mult $4, $4
TAG293:
mfhi $2
blez $2, TAG294
sllv $2, $4, $2
bgez $4, TAG294
TAG294:
mthi $2
lb $3, 0($2)
mflo $2
addiu $3, $3, 13
TAG295:
bne $3, $3, TAG296
slt $4, $3, $3
addiu $4, $3, 9
mfhi $4
TAG296:
multu $4, $4
sra $4, $4, 10
lui $1, 10
beq $1, $1, TAG297
TAG297:
mthi $1
divu $1, $1
bltz $1, TAG298
mtlo $1
TAG298:
sll $2, $1, 0
div $2, $2
lui $4, 10
addiu $2, $4, 3
TAG299:
ori $1, $2, 5
mthi $2
bne $2, $1, TAG300
sll $0, $0, 0
TAG300:
bne $3, $3, TAG301
sb $3, 0($3)
srlv $1, $3, $3
lb $3, 0($3)
TAG301:
mthi $3
xori $4, $3, 2
div $4, $3
slti $3, $3, 1
TAG302:
bgtz $3, TAG303
mtlo $3
lui $4, 15
lhu $1, 0($3)
TAG303:
divu $1, $1
bltz $1, TAG304
subu $4, $1, $1
sra $3, $1, 8
TAG304:
slti $1, $3, 14
bltz $1, TAG305
lb $4, 0($1)
and $2, $4, $3
TAG305:
addu $3, $2, $2
blez $3, TAG306
mthi $3
lb $4, 0($2)
TAG306:
bne $4, $4, TAG307
addiu $1, $4, 2
div $1, $4
mtlo $4
TAG307:
lui $2, 2
blez $2, TAG308
multu $2, $2
mflo $2
TAG308:
addu $1, $2, $2
mult $1, $2
add $4, $2, $1
mfhi $1
TAG309:
mtlo $1
lb $4, 0($1)
sh $4, 0($4)
nor $2, $4, $4
TAG310:
lui $3, 4
div $3, $2
lw $4, 1($2)
beq $4, $4, TAG311
TAG311:
lh $4, 0($4)
bgez $4, TAG312
addi $1, $4, 13
sh $4, 0($1)
TAG312:
subu $3, $1, $1
subu $4, $1, $1
lui $3, 15
sw $4, 0($4)
TAG313:
mthi $3
beq $3, $3, TAG314
sltiu $3, $3, 10
multu $3, $3
TAG314:
sb $3, 0($3)
sb $3, 0($3)
sra $2, $3, 9
mthi $3
TAG315:
mfhi $3
bgez $2, TAG316
mthi $3
mfhi $3
TAG316:
xor $4, $3, $3
bgez $4, TAG317
lui $2, 4
sll $4, $3, 10
TAG317:
beq $4, $4, TAG318
lw $2, 0($4)
lhu $2, 0($4)
sw $4, 0($4)
TAG318:
lui $2, 10
bgtz $2, TAG319
sll $0, $0, 0
mthi $2
TAG319:
and $1, $2, $2
multu $1, $1
mtlo $1
bne $2, $2, TAG320
TAG320:
lui $2, 12
slti $4, $1, 2
sll $0, $0, 0
mflo $1
TAG321:
sll $0, $0, 0
lui $3, 12
srl $4, $1, 5
bne $4, $3, TAG322
TAG322:
mfhi $1
bgez $1, TAG323
sb $4, -20480($4)
lbu $4, 0($4)
TAG323:
sll $0, $0, 0
srl $4, $2, 15
xori $1, $2, 5
mflo $4
TAG324:
beq $4, $4, TAG325
and $1, $4, $4
mult $4, $1
sllv $1, $4, $4
TAG325:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG326
multu $1, $1
TAG326:
div $1, $1
mtlo $1
srl $3, $1, 1
sll $0, $0, 0
TAG327:
mflo $1
sra $2, $1, 9
lui $4, 14
mfhi $3
TAG328:
mfhi $3
blez $3, TAG329
multu $3, $3
lb $1, 0($3)
TAG329:
sll $0, $0, 0
sb $1, 0($3)
mult $1, $3
sll $0, $0, 0
TAG330:
bne $3, $3, TAG331
multu $3, $3
and $1, $3, $3
beq $1, $1, TAG331
TAG331:
multu $1, $1
bltz $1, TAG332
lbu $2, 0($1)
sltu $2, $2, $2
TAG332:
andi $4, $2, 15
lw $3, 0($4)
mthi $4
mfhi $2
TAG333:
addu $1, $2, $2
mfhi $2
add $1, $2, $2
xor $1, $1, $1
TAG334:
lh $1, 0($1)
addiu $2, $1, 8
blez $2, TAG335
lui $1, 12
TAG335:
mult $1, $1
slti $1, $1, 11
lui $2, 13
mflo $3
TAG336:
bgez $3, TAG337
multu $3, $3
sub $4, $3, $3
srav $4, $4, $3
TAG337:
sub $3, $4, $4
lui $3, 10
andi $2, $3, 10
sltiu $1, $3, 11
TAG338:
lb $1, 0($1)
sh $1, 0($1)
mult $1, $1
lui $2, 14
TAG339:
ori $1, $2, 15
bne $2, $1, TAG340
sll $0, $0, 0
mflo $2
TAG340:
and $4, $2, $2
mthi $2
multu $4, $4
bne $4, $2, TAG341
TAG341:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 4
sll $0, $0, 0
TAG342:
bgez $3, TAG343
addiu $4, $3, 9
sltiu $4, $3, 9
mflo $2
TAG343:
beq $2, $2, TAG344
sll $0, $0, 0
mthi $2
addi $4, $2, 13
TAG344:
sll $0, $0, 0
lui $1, 3
lui $1, 7
sll $4, $4, 2
TAG345:
lui $3, 3
sll $0, $0, 0
bne $3, $4, TAG346
sll $0, $0, 0
TAG346:
sra $1, $1, 15
mthi $1
lui $1, 2
sll $0, $0, 0
TAG347:
bgez $1, TAG348
sll $0, $0, 0
ori $3, $3, 2
beq $3, $3, TAG348
TAG348:
subu $2, $3, $3
multu $3, $2
mtlo $3
mfhi $4
TAG349:
xor $1, $4, $4
blez $1, TAG350
mult $1, $1
mtlo $4
TAG350:
lui $1, 14
bltz $1, TAG351
sll $0, $0, 0
lui $4, 6
TAG351:
lui $1, 4
mflo $3
mtlo $4
bne $1, $4, TAG352
TAG352:
multu $3, $3
addu $2, $3, $3
beq $3, $2, TAG353
mtlo $2
TAG353:
bne $2, $2, TAG354
lui $2, 1
lui $3, 5
beq $3, $3, TAG354
TAG354:
subu $1, $3, $3
blez $1, TAG355
sltiu $4, $1, 7
addiu $1, $1, 3
TAG355:
multu $1, $1
beq $1, $1, TAG356
mfhi $3
bltz $1, TAG356
TAG356:
multu $3, $3
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
TAG357:
sll $0, $0, 0
mfhi $1
bgtz $1, TAG358
andi $2, $1, 2
TAG358:
bltz $2, TAG359
mthi $2
bgez $2, TAG359
sh $2, 0($2)
TAG359:
mtlo $2
sll $2, $2, 10
bne $2, $2, TAG360
multu $2, $2
TAG360:
sb $2, 0($2)
sb $2, 0($2)
lui $1, 7
mfhi $4
TAG361:
multu $4, $4
mult $4, $4
mfhi $4
sb $4, 0($4)
TAG362:
sb $4, 0($4)
sh $4, 0($4)
multu $4, $4
blez $4, TAG363
TAG363:
lbu $4, 0($4)
bgtz $4, TAG364
mfhi $4
mult $4, $4
TAG364:
sh $4, 0($4)
mtlo $4
sw $4, 0($4)
bltz $4, TAG365
TAG365:
mult $4, $4
mtlo $4
lui $3, 1
addu $1, $3, $4
TAG366:
sll $0, $0, 0
addu $4, $1, $1
div $4, $4
lui $2, 0
TAG367:
lh $3, 0($2)
blez $2, TAG368
mthi $2
mfhi $1
TAG368:
bne $1, $1, TAG369
sll $0, $0, 0
bgtz $1, TAG369
sll $0, $0, 0
TAG369:
lui $3, 4
sll $0, $0, 0
bne $3, $3, TAG370
sll $0, $0, 0
TAG370:
srl $1, $3, 6
mflo $4
slt $2, $1, $3
bne $3, $1, TAG371
TAG371:
mult $2, $2
mthi $2
mtlo $2
lui $2, 2
TAG372:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG373:
multu $1, $1
mtlo $1
mult $1, $1
nor $2, $1, $1
TAG374:
mflo $3
mthi $2
sll $0, $0, 0
subu $2, $1, $3
TAG375:
sll $0, $0, 0
bne $2, $2, TAG376
sll $0, $0, 0
mthi $2
TAG376:
srlv $2, $2, $2
bgez $2, TAG377
addu $3, $2, $2
slti $1, $2, 4
TAG377:
xori $2, $1, 14
mtlo $2
lui $3, 3
mflo $1
TAG378:
lui $1, 10
bne $1, $1, TAG379
mult $1, $1
sll $0, $0, 0
TAG379:
lui $4, 12
and $4, $1, $1
lui $4, 7
sll $0, $0, 0
TAG380:
mtlo $3
mflo $1
sll $0, $0, 0
mflo $1
TAG381:
mflo $3
mflo $4
srav $3, $4, $1
sll $0, $0, 0
TAG382:
sb $2, 0($2)
divu $2, $2
ori $4, $2, 5
bltz $2, TAG383
TAG383:
andi $2, $4, 11
or $1, $2, $2
bltz $4, TAG384
sb $4, 0($1)
TAG384:
sra $2, $1, 11
srav $3, $1, $2
sb $1, 0($3)
sra $3, $3, 2
TAG385:
lui $4, 9
sra $2, $4, 13
mfhi $3
beq $2, $3, TAG386
TAG386:
lui $4, 10
bne $3, $4, TAG387
mult $4, $3
lui $2, 14
TAG387:
div $2, $2
srav $3, $2, $2
addu $1, $2, $3
multu $1, $3
TAG388:
nor $4, $1, $1
blez $1, TAG389
mfhi $1
sb $4, 73($4)
TAG389:
mtlo $1
mflo $2
multu $1, $2
mult $1, $1
TAG390:
mtlo $2
mflo $2
bgtz $2, TAG391
sra $4, $2, 7
TAG391:
lbu $4, 0($4)
bgez $4, TAG392
mfhi $1
xori $2, $1, 11
TAG392:
multu $2, $2
bne $2, $2, TAG393
sh $2, 0($2)
lb $2, 0($2)
TAG393:
xor $4, $2, $2
sb $4, 0($4)
mult $2, $4
sw $2, 0($4)
TAG394:
sra $2, $4, 7
bne $2, $4, TAG395
mfhi $2
multu $2, $4
TAG395:
mthi $2
ori $3, $2, 2
lw $2, 0($2)
beq $3, $2, TAG396
TAG396:
sllv $2, $2, $2
bgez $2, TAG397
sw $2, 0($2)
lhu $4, 0($2)
TAG397:
ori $1, $4, 13
sh $4, 0($4)
beq $4, $1, TAG398
lui $2, 6
TAG398:
bgez $2, TAG399
multu $2, $2
mtlo $2
sh $2, 0($2)
TAG399:
multu $2, $2
sll $0, $0, 0
div $2, $2
bgez $2, TAG400
TAG400:
slti $2, $2, 15
or $4, $2, $2
mthi $2
bgtz $4, TAG401
TAG401:
mthi $4
lb $4, 0($4)
and $4, $4, $4
mult $4, $4
TAG402:
bne $4, $4, TAG403
sh $4, 0($4)
bne $4, $4, TAG403
slti $4, $4, 12
TAG403:
beq $4, $4, TAG404
sb $4, 0($4)
mtlo $4
mult $4, $4
TAG404:
sltiu $2, $4, 0
sb $4, 0($2)
add $2, $2, $4
lb $3, 0($4)
TAG405:
bltz $3, TAG406
mthi $3
mfhi $2
bne $2, $2, TAG406
TAG406:
mfhi $1
sltu $3, $2, $1
lui $1, 7
sll $0, $0, 0
TAG407:
mtlo $1
divu $1, $1
lui $1, 2
beq $1, $1, TAG408
TAG408:
lui $3, 4
beq $3, $3, TAG409
andi $4, $1, 12
lw $3, 0($1)
TAG409:
bne $3, $3, TAG410
mtlo $3
mult $3, $3
lui $1, 8
TAG410:
beq $1, $1, TAG411
mthi $1
bgtz $1, TAG411
multu $1, $1
TAG411:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG412:
andi $1, $1, 6
subu $2, $1, $1
slti $3, $2, 3
blez $1, TAG413
TAG413:
lui $2, 14
bne $3, $3, TAG414
sb $3, 0($3)
mtlo $3
TAG414:
lui $1, 6
lui $3, 10
sra $1, $1, 15
xori $3, $3, 8
TAG415:
multu $3, $3
beq $3, $3, TAG416
sll $0, $0, 0
mflo $4
TAG416:
sw $4, 0($4)
multu $4, $4
lui $3, 7
blez $3, TAG417
TAG417:
lui $4, 5
sll $0, $0, 0
mtlo $4
lui $1, 9
TAG418:
mflo $2
beq $1, $1, TAG419
and $3, $1, $1
lui $3, 5
TAG419:
mflo $1
mult $3, $1
addiu $4, $1, 13
blez $4, TAG420
TAG420:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG421
sll $0, $0, 0
TAG421:
mfhi $4
divu $4, $4
sb $4, 0($4)
lb $1, 0($4)
TAG422:
mflo $3
bltz $1, TAG423
sb $1, 0($1)
mflo $3
TAG423:
multu $3, $3
mtlo $3
beq $3, $3, TAG424
mtlo $3
TAG424:
divu $3, $3
sb $3, 0($3)
mflo $4
addu $4, $4, $3
TAG425:
lh $2, 0($4)
mflo $3
mtlo $3
mflo $1
TAG426:
mthi $1
sb $1, 0($1)
bltz $1, TAG427
mthi $1
TAG427:
lui $2, 7
beq $1, $1, TAG428
sll $3, $1, 1
sh $1, 0($3)
TAG428:
nor $3, $3, $3
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG429:
mflo $4
sll $0, $0, 0
mthi $4
mflo $3
TAG430:
subu $3, $3, $3
mflo $3
addiu $2, $3, 0
sb $3, 0($3)
TAG431:
bgez $2, TAG432
lb $4, 0($2)
divu $4, $2
sw $4, 0($2)
TAG432:
mult $4, $4
mult $4, $4
sb $4, 0($4)
beq $4, $4, TAG433
TAG433:
sb $4, 0($4)
mthi $4
lb $2, 0($4)
bne $2, $2, TAG434
TAG434:
sra $4, $2, 13
mfhi $2
mtlo $2
mult $2, $2
TAG435:
sltiu $3, $2, 7
mflo $4
bgez $2, TAG436
mflo $2
TAG436:
mthi $2
addiu $4, $2, 1
ori $1, $4, 1
divu $1, $4
TAG437:
lbu $4, 0($1)
sb $4, 0($1)
lui $1, 7
xori $3, $1, 0
TAG438:
mfhi $4
addiu $3, $4, 0
sb $4, 0($3)
mthi $3
TAG439:
sllv $3, $3, $3
addiu $2, $3, 2
beq $3, $3, TAG440
lbu $3, 0($2)
TAG440:
bgez $3, TAG441
sllv $1, $3, $3
lui $2, 12
xori $3, $2, 2
TAG441:
beq $3, $3, TAG442
lui $2, 10
sh $3, 0($3)
blez $3, TAG442
TAG442:
xori $4, $2, 4
xori $2, $2, 12
addiu $2, $4, 4
lui $1, 6
TAG443:
mthi $1
lui $2, 5
mthi $2
mtlo $1
TAG444:
xori $1, $2, 6
mult $1, $1
mflo $1
bgez $2, TAG445
TAG445:
mthi $1
lui $1, 2
mthi $1
sll $0, $0, 0
TAG446:
bne $1, $1, TAG447
mflo $4
sll $0, $0, 0
addu $4, $1, $4
TAG447:
addiu $4, $4, 6
mult $4, $4
lui $4, 9
sll $0, $0, 0
TAG448:
mthi $1
mult $1, $1
slti $2, $1, 7
blez $1, TAG449
TAG449:
multu $2, $2
sra $3, $2, 1
mthi $3
beq $3, $3, TAG450
TAG450:
mfhi $3
sll $1, $3, 8
multu $1, $1
mflo $1
TAG451:
mfhi $2
lui $3, 0
blez $1, TAG452
lui $2, 13
TAG452:
bltz $2, TAG453
mult $2, $2
divu $2, $2
mtlo $2
TAG453:
mthi $2
bne $2, $2, TAG454
mfhi $1
bgez $1, TAG454
TAG454:
andi $4, $1, 0
blez $4, TAG455
sll $1, $4, 0
bne $4, $1, TAG455
TAG455:
mult $1, $1
lui $2, 5
lhu $4, 0($1)
bltz $4, TAG456
TAG456:
lui $2, 12
lui $2, 13
mfhi $3
mtlo $3
TAG457:
bne $3, $3, TAG458
sllv $4, $3, $3
beq $4, $3, TAG458
sw $3, 0($3)
TAG458:
lui $2, 6
addu $1, $2, $2
divu $4, $1
sll $0, $0, 0
TAG459:
mthi $1
addiu $4, $1, 9
subu $1, $4, $4
bltz $1, TAG460
TAG460:
lbu $1, 0($1)
addiu $1, $1, 10
lui $3, 0
lui $1, 2
TAG461:
srav $1, $1, $1
mflo $4
andi $1, $1, 13
blez $1, TAG462
TAG462:
sra $3, $1, 10
bgtz $3, TAG463
sh $3, 0($1)
andi $4, $3, 5
TAG463:
beq $4, $4, TAG464
lbu $3, 0($4)
sh $4, 0($4)
lhu $3, 0($3)
TAG464:
lw $1, 0($3)
addu $2, $1, $1
addu $1, $2, $3
bgez $1, TAG465
TAG465:
sh $1, 0($1)
bltz $1, TAG466
multu $1, $1
mult $1, $1
TAG466:
lui $3, 7
bgtz $3, TAG467
sll $0, $0, 0
bne $1, $4, TAG467
TAG467:
sltu $2, $4, $4
mflo $2
blez $2, TAG468
nor $2, $2, $4
TAG468:
multu $2, $2
lui $1, 13
mtlo $2
divu $2, $2
TAG469:
sll $0, $0, 0
mtlo $1
blez $1, TAG470
mult $1, $1
TAG470:
sll $0, $0, 0
sll $0, $0, 0
lh $4, 0($4)
sltiu $3, $1, 10
TAG471:
lw $4, 0($3)
xor $4, $3, $3
lb $3, 0($3)
lhu $1, 0($4)
TAG472:
beq $1, $1, TAG473
multu $1, $1
lh $2, 0($1)
blez $2, TAG473
TAG473:
sw $2, 1($2)
slti $2, $2, 1
bne $2, $2, TAG474
mflo $2
TAG474:
mflo $1
mult $2, $1
beq $1, $2, TAG475
multu $1, $1
TAG475:
bgtz $1, TAG476
lui $3, 7
mthi $1
bne $3, $3, TAG476
TAG476:
addiu $4, $3, 9
srav $1, $4, $4
sll $0, $0, 0
lui $4, 14
TAG477:
sll $0, $0, 0
mult $4, $3
mtlo $4
bne $3, $3, TAG478
TAG478:
mthi $3
bne $3, $3, TAG479
mflo $3
sllv $4, $3, $3
TAG479:
sll $0, $0, 0
div $4, $4
mult $4, $4
bne $4, $4, TAG480
TAG480:
xori $1, $4, 4
bne $1, $4, TAG481
div $1, $1
mfhi $1
TAG481:
sll $0, $0, 0
srl $4, $1, 1
mtlo $1
mtlo $1
TAG482:
bgtz $4, TAG483
div $4, $4
lui $3, 0
lh $4, 0($4)
TAG483:
lui $1, 7
subu $1, $1, $4
sw $4, 2($1)
sb $1, 2($1)
TAG484:
sw $1, 2($1)
subu $2, $1, $1
lhu $1, 2($1)
lui $3, 4
TAG485:
sll $0, $0, 0
multu $3, $3
multu $3, $3
lui $2, 0
TAG486:
lui $1, 6
mthi $1
lbu $2, 0($2)
bgez $1, TAG487
TAG487:
mtlo $2
bne $2, $2, TAG488
mfhi $1
blez $2, TAG488
TAG488:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG489:
mult $4, $4
and $2, $4, $4
multu $4, $4
div $2, $4
TAG490:
sll $0, $0, 0
lui $1, 5
addiu $2, $1, 7
lui $4, 7
TAG491:
sll $0, $0, 0
bne $3, $3, TAG492
mtlo $4
div $3, $3
TAG492:
div $3, $3
bgtz $3, TAG493
div $3, $3
lui $2, 5
TAG493:
lui $3, 8
slt $4, $2, $3
and $1, $3, $3
sb $1, 0($4)
TAG494:
sll $0, $0, 0
bltz $1, TAG495
sll $0, $0, 0
divu $1, $1
TAG495:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG496
sll $0, $0, 0
TAG496:
multu $4, $4
sb $4, 0($4)
lui $3, 4
mtlo $4
TAG497:
bgez $3, TAG498
mtlo $3
srl $4, $3, 12
mtlo $4
TAG498:
div $4, $4
bgez $4, TAG499
multu $4, $4
mthi $4
TAG499:
lb $3, 0($4)
sb $3, 0($4)
bgtz $3, TAG500
div $3, $4
TAG500:
beq $3, $3, TAG501
sb $3, 0($3)
subu $3, $3, $3
mthi $3
TAG501:
mflo $2
sb $3, 0($2)
mtlo $2
sb $2, 0($3)
TAG502:
divu $2, $2
multu $2, $2
sb $2, 0($2)
sll $4, $2, 4
TAG503:
div $4, $4
div $4, $4
slt $2, $4, $4
lb $1, 0($2)
TAG504:
mflo $2
addiu $2, $1, 3
beq $1, $2, TAG505
lui $2, 2
TAG505:
bne $2, $2, TAG506
lui $4, 11
sll $0, $0, 0
sll $2, $4, 4
TAG506:
sll $0, $0, 0
beq $2, $1, TAG507
addiu $2, $1, 10
bne $2, $2, TAG507
TAG507:
mthi $2
mult $2, $2
lbu $4, 0($2)
sb $2, 0($4)
TAG508:
lbu $3, 0($4)
sh $4, 0($3)
lui $1, 2
lui $4, 9
TAG509:
mthi $4
multu $4, $4
srav $2, $4, $4
bgez $2, TAG510
TAG510:
mfhi $3
lbu $1, 0($3)
bne $1, $1, TAG511
mflo $4
TAG511:
sh $4, 0($4)
sb $4, 0($4)
bne $4, $4, TAG512
mfhi $3
TAG512:
lui $4, 1
sll $0, $0, 0
bne $3, $2, TAG513
sll $0, $0, 0
TAG513:
beq $4, $4, TAG514
mthi $4
beq $4, $4, TAG514
mtlo $4
TAG514:
srl $2, $4, 15
bltz $4, TAG515
addu $1, $2, $4
sll $0, $0, 0
TAG515:
sll $0, $0, 0
sll $0, $0, 0
sb $2, 0($2)
mfhi $4
TAG516:
mult $4, $4
mthi $4
xor $1, $4, $4
sll $0, $0, 0
TAG517:
blez $3, TAG518
lbu $4, 0($3)
bne $3, $4, TAG518
lui $3, 6
TAG518:
div $3, $3
mtlo $3
mult $3, $3
mtlo $3
TAG519:
bne $3, $3, TAG520
sll $0, $0, 0
blez $3, TAG520
mult $4, $4
TAG520:
lui $4, 8
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG521:
sll $0, $0, 0
bgtz $3, TAG522
sll $0, $0, 0
bgtz $3, TAG522
TAG522:
mflo $2
mult $2, $4
sll $0, $0, 0
mflo $2
TAG523:
beq $2, $2, TAG524
sb $2, 0($2)
mtlo $2
mflo $1
TAG524:
lb $1, 0($1)
mflo $1
lui $1, 10
mflo $1
TAG525:
sh $1, 0($1)
bltz $1, TAG526
mflo $2
mthi $2
TAG526:
bne $2, $2, TAG527
mflo $1
mult $1, $2
multu $1, $2
TAG527:
sw $1, 0($1)
bne $1, $1, TAG528
lh $4, 0($1)
mthi $4
TAG528:
nor $4, $4, $4
bne $4, $4, TAG529
multu $4, $4
sh $4, 1($4)
TAG529:
sb $4, 1($4)
sh $4, 1($4)
bltz $4, TAG530
lh $2, 1($4)
TAG530:
mflo $2
addu $3, $2, $2
lhu $2, 0($3)
bne $2, $3, TAG531
TAG531:
lb $1, 0($2)
add $4, $2, $1
mthi $1
beq $2, $2, TAG532
TAG532:
nor $3, $4, $4
addiu $3, $4, 1
mflo $1
bne $4, $3, TAG533
TAG533:
mult $1, $1
lb $2, 0($1)
divu $1, $1
sb $1, 0($1)
TAG534:
or $4, $2, $2
xori $3, $2, 7
mthi $3
lhu $3, 1($4)
TAG535:
beq $3, $3, TAG536
mthi $3
sw $3, 0($3)
mfhi $3
TAG536:
mtlo $3
sh $3, -511($3)
slt $4, $3, $3
lhu $1, -511($3)
TAG537:
sll $3, $1, 15
sll $0, $0, 0
mtlo $1
multu $1, $1
TAG538:
srl $3, $3, 5
xor $1, $3, $3
bne $3, $3, TAG539
lh $3, 0($1)
TAG539:
sra $1, $3, 10
lw $3, -511($3)
mflo $4
slt $4, $4, $1
TAG540:
lui $4, 5
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG541:
lw $4, 0($1)
addiu $2, $4, 6
addiu $2, $1, 1
mflo $4
TAG542:
mfhi $3
sll $0, $0, 0
ori $4, $4, 4
multu $4, $4
TAG543:
mult $4, $4
sra $2, $4, 3
lui $2, 11
sll $4, $2, 11
TAG544:
mtlo $4
div $4, $4
div $4, $4
sll $0, $0, 0
TAG545:
lui $1, 11
mfhi $3
sll $0, $0, 0
bltz $4, TAG546
TAG546:
mult $3, $3
mflo $4
andi $3, $4, 4
lui $3, 14
TAG547:
multu $3, $3
blez $3, TAG548
srav $1, $3, $3
addiu $1, $3, 9
TAG548:
sll $0, $0, 0
mtlo $4
mtlo $1
mflo $3
TAG549:
lui $4, 11
div $4, $4
blez $3, TAG550
xori $2, $3, 7
TAG550:
mflo $3
multu $3, $3
mthi $3
sll $0, $0, 0
TAG551:
mthi $3
sb $3, 0($3)
mtlo $3
lb $1, 0($3)
TAG552:
lb $2, 0($1)
sb $2, 0($2)
slti $2, $1, 9
subu $4, $2, $2
TAG553:
xor $2, $4, $4
bltz $2, TAG554
sb $2, 0($4)
lui $2, 1
TAG554:
addiu $1, $2, 12
bne $2, $2, TAG555
mthi $2
xor $3, $2, $2
TAG555:
beq $3, $3, TAG556
sltu $1, $3, $3
mtlo $1
lhu $4, 0($1)
TAG556:
sh $4, 0($4)
mthi $4
srl $2, $4, 10
lui $2, 13
TAG557:
lui $3, 4
nor $4, $3, $2
slt $3, $3, $3
sll $0, $0, 0
TAG558:
mtlo $2
mfhi $4
lui $2, 15
sll $0, $0, 0
TAG559:
mfhi $2
mfhi $1
mfhi $3
mthi $2
TAG560:
beq $3, $3, TAG561
multu $3, $3
mflo $1
div $3, $3
TAG561:
sra $2, $1, 12
lw $4, 0($2)
sllv $1, $1, $2
sw $1, 0($1)
TAG562:
srav $3, $1, $1
mflo $3
slti $2, $3, 4
lui $3, 0
TAG563:
blez $3, TAG564
mfhi $4
divu $4, $3
sll $3, $3, 2
TAG564:
sh $3, 0($3)
multu $3, $3
bne $3, $3, TAG565
lui $4, 4
TAG565:
sra $2, $4, 4
sb $2, -16384($2)
mtlo $4
sltu $2, $4, $4
TAG566:
lui $4, 14
bgtz $4, TAG567
lui $4, 14
sh $4, 0($4)
TAG567:
slti $4, $4, 12
lui $4, 3
sll $0, $0, 0
lui $4, 14
TAG568:
mtlo $4
mthi $4
mult $4, $4
sll $0, $0, 0
TAG569:
sll $0, $0, 0
beq $4, $4, TAG570
mflo $4
mflo $4
TAG570:
slt $2, $4, $4
lui $4, 9
lui $4, 7
multu $2, $2
TAG571:
mthi $4
divu $4, $4
sll $0, $0, 0
blez $4, TAG572
TAG572:
mfhi $1
mfhi $1
mthi $1
mult $4, $4
TAG573:
multu $1, $1
sllv $4, $1, $1
lhu $2, 0($4)
sb $2, 0($1)
TAG574:
addu $1, $2, $2
lui $2, 11
sllv $3, $1, $1
or $3, $2, $1
TAG575:
sll $0, $0, 0
sll $3, $3, 13
sll $0, $0, 0
mfhi $1
TAG576:
lui $4, 7
mtlo $4
mult $4, $1
lui $4, 3
TAG577:
bne $4, $4, TAG578
lui $1, 14
mthi $4
xori $2, $4, 12
TAG578:
mfhi $2
beq $2, $2, TAG579
sll $0, $0, 0
srlv $4, $3, $2
TAG579:
bne $4, $4, TAG580
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG580
TAG580:
ori $2, $1, 11
bgtz $2, TAG581
sll $0, $0, 0
sub $1, $2, $1
TAG581:
sll $0, $0, 0
lui $2, 14
addiu $2, $2, 12
lui $1, 15
TAG582:
mfhi $4
sll $0, $0, 0
or $3, $1, $4
bgtz $3, TAG583
TAG583:
div $3, $3
mult $3, $3
andi $3, $3, 6
subu $3, $3, $3
TAG584:
mthi $3
bne $3, $3, TAG585
lhu $2, 0($3)
sh $2, 0($3)
TAG585:
lhu $2, 0($2)
addi $1, $2, 8
mtlo $2
bgtz $1, TAG586
TAG586:
lbu $1, 0($1)
mfhi $1
blez $1, TAG587
mult $1, $1
TAG587:
lb $2, 0($1)
bne $1, $2, TAG588
and $1, $2, $1
add $3, $1, $2
TAG588:
lw $2, 0($3)
sh $3, 0($2)
sb $2, 0($3)
bne $2, $2, TAG589
TAG589:
sw $2, 0($2)
mfhi $1
lbu $4, 0($2)
mflo $1
TAG590:
andi $4, $1, 4
mfhi $2
bgtz $2, TAG591
nor $3, $2, $2
TAG591:
mflo $2
xor $3, $2, $2
lhu $3, 0($2)
subu $2, $3, $3
TAG592:
multu $2, $2
lhu $1, 0($2)
sb $2, 0($1)
nor $2, $2, $2
TAG593:
bne $2, $2, TAG594
lhu $4, 1($2)
bne $2, $2, TAG594
sltiu $2, $4, 10
TAG594:
sb $2, 0($2)
mfhi $1
beq $1, $2, TAG595
sb $1, 0($2)
TAG595:
or $4, $1, $1
bne $1, $1, TAG596
mult $1, $1
mfhi $3
TAG596:
mfhi $2
sb $3, 0($3)
mflo $3
addiu $3, $2, 13
TAG597:
sltiu $2, $3, 11
lui $4, 1
blez $3, TAG598
mtlo $2
TAG598:
bltz $4, TAG599
mthi $4
lui $2, 15
bne $4, $2, TAG599
TAG599:
mflo $3
mtlo $2
lui $2, 7
beq $2, $2, TAG600
TAG600:
sll $0, $0, 0
srl $3, $2, 7
xori $4, $2, 8
div $4, $2
TAG601:
bgtz $4, TAG602
addu $3, $4, $4
lui $1, 15
lui $1, 0
TAG602:
bne $1, $1, TAG603
lui $4, 7
sll $0, $0, 0
sw $4, 0($1)
TAG603:
beq $2, $2, TAG604
mflo $3
bgtz $3, TAG604
lui $1, 10
TAG604:
mtlo $1
multu $1, $1
beq $1, $1, TAG605
xori $4, $1, 7
TAG605:
bgez $4, TAG606
srl $3, $4, 11
lui $1, 12
blez $3, TAG606
TAG606:
lui $3, 4
sra $2, $1, 1
lui $3, 7
bgtz $2, TAG607
TAG607:
mtlo $3
divu $3, $3
beq $3, $3, TAG608
addiu $3, $3, 15
TAG608:
beq $3, $3, TAG609
nor $2, $3, $3
bltz $3, TAG609
mflo $3
TAG609:
div $3, $3
sll $0, $0, 0
lui $3, 7
lui $1, 11
TAG610:
bgez $1, TAG611
sll $0, $0, 0
lui $2, 7
mflo $3
TAG611:
bne $3, $3, TAG612
mthi $3
mult $3, $3
lui $2, 14
TAG612:
mthi $2
beq $2, $2, TAG613
sll $0, $0, 0
lh $2, 0($3)
TAG613:
mthi $2
lui $4, 8
lui $3, 8
lui $4, 9
TAG614:
div $4, $4
sll $0, $0, 0
beq $4, $4, TAG615
addu $4, $4, $4
TAG615:
beq $4, $4, TAG616
subu $3, $4, $4
beq $4, $4, TAG616
sw $4, 0($4)
TAG616:
beq $3, $3, TAG617
srlv $4, $3, $3
mult $4, $3
sw $4, 0($3)
TAG617:
multu $4, $4
sltiu $3, $4, 15
sb $4, 0($4)
sb $4, 0($3)
TAG618:
bltz $3, TAG619
mthi $3
bgtz $3, TAG619
lui $1, 2
TAG619:
lui $3, 15
bgez $3, TAG620
mfhi $3
sb $3, 0($3)
TAG620:
andi $4, $3, 13
beq $3, $4, TAG621
mthi $4
add $2, $4, $3
TAG621:
blez $2, TAG622
sll $0, $0, 0
multu $2, $2
div $2, $2
TAG622:
div $2, $2
multu $2, $2
bgtz $2, TAG623
divu $2, $2
TAG623:
mthi $2
blez $2, TAG624
mfhi $4
sll $0, $0, 0
TAG624:
xori $3, $3, 7
divu $3, $3
bne $3, $3, TAG625
mthi $3
TAG625:
bgtz $3, TAG626
mflo $1
beq $3, $3, TAG626
sw $1, 0($3)
TAG626:
mtlo $1
mthi $1
lbu $1, 0($1)
bne $1, $1, TAG627
TAG627:
multu $1, $1
xor $4, $1, $1
sra $1, $1, 9
srl $4, $4, 8
TAG628:
srl $1, $4, 5
xor $4, $4, $4
lb $3, 0($1)
mflo $1
TAG629:
bgtz $1, TAG630
mtlo $1
sw $1, 0($1)
lui $3, 4
TAG630:
mflo $4
mthi $3
addiu $2, $3, 8
sllv $3, $4, $2
TAG631:
beq $3, $3, TAG632
lb $3, 0($3)
andi $2, $3, 7
addi $2, $3, 6
TAG632:
sll $0, $0, 0
bgez $2, TAG633
mfhi $3
andi $2, $3, 12
TAG633:
mult $2, $2
sll $0, $0, 0
sltu $2, $2, $2
bltz $2, TAG634
TAG634:
lbu $3, 0($2)
sb $2, 0($3)
or $3, $2, $2
sll $2, $3, 7
TAG635:
mfhi $2
subu $2, $2, $2
addu $3, $2, $2
sb $2, 0($2)
TAG636:
mtlo $3
sllv $4, $3, $3
sw $3, 0($3)
lw $1, 0($4)
TAG637:
multu $1, $1
mthi $1
bne $1, $1, TAG638
nor $4, $1, $1
TAG638:
sll $0, $0, 0
mthi $4
ori $3, $4, 8
srlv $3, $3, $4
TAG639:
mflo $4
lui $1, 3
lui $2, 10
beq $3, $1, TAG640
TAG640:
sll $0, $0, 0
bgtz $2, TAG641
sll $0, $0, 0
beq $1, $2, TAG641
TAG641:
mfhi $3
lui $4, 11
mthi $3
bgez $4, TAG642
TAG642:
lui $1, 14
mthi $1
addiu $1, $1, 10
srl $3, $4, 1
TAG643:
blez $3, TAG644
sll $1, $3, 11
subu $3, $1, $3
multu $3, $3
TAG644:
and $2, $3, $3
mfhi $1
srl $3, $1, 0
beq $3, $2, TAG645
TAG645:
mfhi $2
bltz $2, TAG646
xori $1, $2, 14
nor $1, $2, $2
TAG646:
mtlo $1
srav $3, $1, $1
sll $0, $0, 0
sltiu $4, $4, 3
TAG647:
sltu $3, $4, $4
beq $3, $4, TAG648
sb $4, 0($4)
mflo $3
TAG648:
multu $3, $3
sltu $1, $3, $3
lw $1, 0($3)
lbu $1, 0($1)
TAG649:
mthi $1
bne $1, $1, TAG650
slti $3, $1, 4
mtlo $1
TAG650:
sb $3, 0($3)
mflo $1
bgez $3, TAG651
mtlo $1
TAG651:
sb $1, 0($1)
lh $2, 0($1)
mthi $2
sh $1, 0($1)
TAG652:
bltz $2, TAG653
sw $2, -256($2)
bne $2, $2, TAG653
mthi $2
TAG653:
multu $2, $2
lbu $3, -256($2)
lui $4, 7
beq $4, $2, TAG654
TAG654:
mtlo $4
bgez $4, TAG655
lui $4, 14
sub $4, $4, $4
TAG655:
sll $0, $0, 0
mthi $4
mfhi $4
mflo $1
TAG656:
lui $3, 5
multu $1, $3
sll $0, $0, 0
sll $0, $0, 0
TAG657:
sll $0, $0, 0
mult $3, $3
sltiu $3, $3, 12
sb $3, 0($3)
TAG658:
bne $3, $3, TAG659
lw $1, 0($3)
mthi $1
lui $2, 0
TAG659:
mfhi $3
lw $4, 0($2)
divu $3, $4
bgez $2, TAG660
TAG660:
mfhi $3
lui $1, 2
sh $4, -256($4)
mtlo $3
TAG661:
mflo $3
bgez $1, TAG662
nor $3, $1, $1
lb $3, 0($3)
TAG662:
bltz $3, TAG663
mflo $2
lw $4, 0($3)
sh $3, 0($4)
TAG663:
bltz $4, TAG664
mfhi $1
beq $1, $4, TAG664
multu $4, $1
TAG664:
xor $2, $1, $1
beq $2, $2, TAG665
mtlo $1
lbu $1, 0($1)
TAG665:
lui $4, 5
sll $0, $0, 0
lw $1, 0($1)
sw $4, -256($1)
TAG666:
lui $2, 10
bgtz $1, TAG667
multu $1, $1
blez $2, TAG667
TAG667:
addiu $4, $2, 0
mthi $2
or $4, $2, $2
sll $0, $0, 0
TAG668:
bne $4, $4, TAG669
sll $0, $0, 0
lui $3, 4
mflo $2
TAG669:
lui $4, 3
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG670
TAG670:
mthi $4
sll $0, $0, 0
subu $3, $2, $2
div $3, $4
TAG671:
lui $4, 14
bne $4, $3, TAG672
mult $4, $3
lh $1, 0($4)
TAG672:
bgtz $1, TAG673
mtlo $1
mthi $1
andi $2, $1, 7
TAG673:
sll $1, $2, 11
bne $2, $2, TAG674
mflo $4
bgtz $4, TAG674
TAG674:
mfhi $3
srav $4, $4, $3
lb $1, -256($4)
mthi $4
TAG675:
mult $1, $1
sllv $1, $1, $1
multu $1, $1
or $2, $1, $1
TAG676:
sltu $1, $2, $2
bltz $2, TAG677
lhu $1, 0($1)
mtlo $1
TAG677:
lui $2, 14
slti $1, $1, 1
sllv $2, $1, $2
and $3, $1, $2
TAG678:
bgtz $3, TAG679
mult $3, $3
div $3, $3
srl $4, $3, 5
TAG679:
mflo $2
mflo $1
divu $1, $2
sb $1, 0($2)
TAG680:
subu $1, $1, $1
blez $1, TAG681
sh $1, 0($1)
mflo $4
TAG681:
sw $4, -256($4)
div $4, $4
beq $4, $4, TAG682
mthi $4
TAG682:
srlv $4, $4, $4
sb $4, -256($4)
beq $4, $4, TAG683
mult $4, $4
TAG683:
divu $4, $4
mthi $4
lui $4, 4
and $3, $4, $4
TAG684:
sll $0, $0, 0
lui $1, 10
bgez $1, TAG685
mfhi $1
TAG685:
mtlo $1
mfhi $3
subu $3, $3, $1
mflo $1
TAG686:
mult $1, $1
mult $1, $1
lhu $1, -256($1)
mtlo $1
TAG687:
multu $1, $1
slti $3, $1, 10
mthi $1
lui $3, 9
TAG688:
mfhi $4
mflo $2
sltiu $1, $3, 4
sra $2, $2, 3
TAG689:
divu $2, $2
addu $2, $2, $2
divu $2, $2
blez $2, TAG690
TAG690:
slti $1, $2, 5
bltz $1, TAG691
sh $1, 0($1)
sw $1, -16384($2)
TAG691:
lh $3, 0($1)
multu $1, $3
mthi $3
srl $1, $3, 9
TAG692:
mfhi $4
sb $1, 0($1)
lui $3, 3
and $2, $3, $1
TAG693:
mflo $2
beq $2, $2, TAG694
mfhi $3
or $1, $2, $2
TAG694:
beq $1, $1, TAG695
sltiu $4, $1, 13
bne $1, $1, TAG695
sub $3, $1, $1
TAG695:
lui $3, 1
slt $1, $3, $3
lui $1, 12
sll $0, $0, 0
TAG696:
lui $4, 14
sll $0, $0, 0
mthi $4
and $4, $4, $4
TAG697:
divu $4, $4
beq $4, $4, TAG698
sll $0, $0, 0
sb $4, 0($4)
TAG698:
blez $4, TAG699
sll $0, $0, 0
beq $4, $4, TAG699
srav $3, $4, $4
TAG699:
sll $0, $0, 0
mflo $2
lui $2, 4
lui $1, 10
TAG700:
mult $1, $1
beq $1, $1, TAG701
andi $4, $1, 9
xor $1, $1, $4
TAG701:
lui $4, 5
mflo $1
beq $1, $1, TAG702
sra $1, $1, 3
TAG702:
lui $4, 10
xori $1, $4, 12
sll $0, $0, 0
sll $0, $0, 0
TAG703:
beq $3, $3, TAG704
sll $0, $0, 0
lui $3, 13
lbu $3, 0($1)
TAG704:
div $3, $3
bne $3, $3, TAG705
lui $1, 8
andi $3, $3, 2
TAG705:
bltz $3, TAG706
or $3, $3, $3
mthi $3
mfhi $3
TAG706:
bne $3, $3, TAG707
sw $3, 0($3)
andi $3, $3, 3
add $4, $3, $3
TAG707:
mthi $4
andi $4, $4, 4
mtlo $4
sb $4, 0($4)
TAG708:
bgtz $4, TAG709
mult $4, $4
lw $2, 0($4)
lw $2, 0($4)
TAG709:
lui $1, 4
multu $1, $1
lhu $3, 0($2)
slti $1, $3, 15
TAG710:
mult $1, $1
lbu $3, 0($1)
lui $4, 2
beq $1, $3, TAG711
TAG711:
mfhi $3
bne $4, $4, TAG712
mthi $3
lui $4, 15
TAG712:
lui $2, 3
subu $2, $2, $4
sll $0, $0, 0
sll $0, $0, 0
TAG713:
sra $3, $4, 6
mthi $4
xori $4, $3, 7
srlv $2, $4, $4
TAG714:
slti $4, $2, 7
lhu $2, 0($2)
divu $2, $2
mthi $2
TAG715:
lui $2, 6
mthi $2
slt $3, $2, $2
mtlo $3
TAG716:
sb $3, 0($3)
sll $4, $3, 5
lui $3, 12
beq $4, $4, TAG717
TAG717:
sll $0, $0, 0
addu $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG718:
sll $0, $0, 0
multu $1, $1
beq $1, $1, TAG719
mflo $2
TAG719:
lui $1, 6
beq $2, $1, TAG720
addu $2, $1, $1
lui $1, 6
TAG720:
mtlo $1
mult $1, $1
mfhi $2
mflo $1
TAG721:
sltu $3, $1, $1
lbu $1, 0($1)
mfhi $1
mflo $1
TAG722:
mthi $1
lh $4, 0($1)
sh $1, 0($4)
mflo $4
TAG723:
bne $4, $4, TAG724
andi $2, $4, 10
mtlo $4
sb $2, 0($4)
TAG724:
mfhi $4
sh $2, 0($2)
addi $1, $2, 12
bgez $2, TAG725
TAG725:
addiu $3, $1, 5
blez $3, TAG726
div $3, $3
beq $3, $3, TAG726
TAG726:
nor $4, $3, $3
subu $4, $3, $4
sb $4, 0($3)
ori $3, $4, 5
TAG727:
bne $3, $3, TAG728
lui $2, 13
bgez $2, TAG728
lbu $1, 0($3)
TAG728:
mtlo $1
mult $1, $1
sh $1, 0($1)
sh $1, 0($1)
TAG729:
addi $1, $1, 1
mtlo $1
mult $1, $1
lui $4, 13
TAG730:
divu $4, $4
beq $4, $4, TAG731
multu $4, $4
sb $4, 0($4)
TAG731:
div $4, $4
bne $4, $4, TAG732
mtlo $4
mfhi $3
TAG732:
lui $2, 0
lui $2, 4
sltu $2, $2, $2
mflo $2
TAG733:
subu $2, $2, $2
mthi $2
mtlo $2
lui $1, 4
TAG734:
beq $1, $1, TAG735
mult $1, $1
bne $1, $1, TAG735
subu $2, $1, $1
TAG735:
srl $3, $2, 9
sw $3, 0($3)
lui $3, 10
slt $4, $3, $2
TAG736:
bne $4, $4, TAG737
lb $2, 0($4)
mthi $2
subu $1, $2, $2
TAG737:
mtlo $1
mthi $1
bgez $1, TAG738
sh $1, 0($1)
TAG738:
ori $1, $1, 14
lui $1, 7
sll $0, $0, 0
lui $4, 15
TAG739:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
lui $2, 0
TAG740:
blez $2, TAG741
addi $4, $2, 14
sra $1, $2, 4
lui $4, 14
TAG741:
bgtz $4, TAG742
lui $1, 3
lbu $3, 0($4)
lui $2, 1
TAG742:
addi $4, $2, 8
lb $2, 0($4)
lui $4, 5
bgez $4, TAG743
TAG743:
sll $3, $4, 13
lui $1, 3
sll $0, $0, 0
sra $1, $3, 1
TAG744:
mflo $2
mult $2, $2
multu $1, $2
bltz $2, TAG745
TAG745:
lbu $3, 0($2)
lui $2, 11
mthi $3
srl $4, $2, 4
TAG746:
sll $0, $0, 0
mflo $4
beq $4, $4, TAG747
mtlo $4
TAG747:
mflo $2
bne $2, $4, TAG748
lw $2, 0($4)
mflo $3
TAG748:
mult $3, $3
srl $1, $3, 7
sltiu $4, $1, 11
beq $1, $1, TAG749
TAG749:
addiu $1, $4, 4
beq $4, $1, TAG750
multu $1, $4
nor $3, $4, $4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop