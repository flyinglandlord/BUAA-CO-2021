ori $1, $0, 2
ori $2, $0, 10
ori $3, $0, 0
ori $4, $0, 9
sw $2, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $2, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $1, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $2, 124($0)
xor $2, $2, $2
lui $2, 10
div $2, $2
xori $1, $2, 14
TAG1:
srlv $1, $1, $1
sllv $1, $1, $1
bgtz $1, TAG2
mtlo $1
TAG2:
andi $1, $1, 9
multu $1, $1
and $1, $1, $1
lb $4, 0($1)
TAG3:
mtlo $4
mfhi $1
lw $3, 0($1)
lhu $2, 0($3)
TAG4:
lui $4, 10
sltu $2, $4, $4
sll $0, $0, 0
lui $2, 13
TAG5:
sll $0, $0, 0
bltz $2, TAG6
sll $0, $0, 0
sll $0, $0, 0
TAG6:
mthi $2
sll $0, $0, 0
bltz $2, TAG7
lui $3, 4
TAG7:
sll $0, $0, 0
sltiu $2, $3, 12
bltz $3, TAG8
sll $0, $0, 0
TAG8:
ori $2, $4, 1
mflo $4
beq $4, $4, TAG9
mthi $4
TAG9:
bgtz $4, TAG10
and $1, $4, $4
lui $1, 15
bne $1, $1, TAG10
TAG10:
lbu $4, 0($1)
lbu $4, 0($4)
bne $4, $1, TAG11
divu $4, $4
TAG11:
subu $4, $4, $4
bltz $4, TAG12
multu $4, $4
lw $2, 0($4)
TAG12:
bgez $2, TAG13
xor $4, $2, $2
bne $2, $4, TAG13
sh $2, 0($2)
TAG13:
sll $3, $4, 12
addu $3, $3, $4
lui $2, 4
mtlo $3
TAG14:
bgez $2, TAG15
mtlo $2
sh $2, 0($2)
mult $2, $2
TAG15:
sltiu $1, $2, 2
bgtz $1, TAG16
mflo $4
blez $2, TAG16
TAG16:
subu $3, $4, $4
lui $2, 0
mfhi $3
lui $3, 6
TAG17:
mult $3, $3
blez $3, TAG18
lui $1, 11
ori $4, $3, 2
TAG18:
or $4, $4, $4
nor $1, $4, $4
multu $4, $4
sll $0, $0, 0
TAG19:
bgtz $1, TAG20
multu $1, $1
mflo $3
blez $3, TAG20
TAG20:
mthi $3
slti $2, $3, 14
mthi $3
div $2, $3
TAG21:
lbu $4, 0($2)
lhu $3, 0($4)
ori $3, $3, 4
mfhi $1
TAG22:
sw $1, 0($1)
mfhi $2
multu $2, $2
mflo $3
TAG23:
sltu $2, $3, $3
sb $3, 0($3)
slti $3, $3, 14
lui $3, 1
TAG24:
lui $2, 15
sll $0, $0, 0
beq $2, $2, TAG25
sll $0, $0, 0
TAG25:
xori $1, $4, 9
sltiu $4, $4, 12
ori $3, $1, 10
bne $3, $4, TAG26
TAG26:
divu $3, $3
lb $4, 0($3)
mfhi $1
nor $4, $3, $3
TAG27:
mult $4, $4
sh $4, 12($4)
beq $4, $4, TAG28
mfhi $4
TAG28:
bgtz $4, TAG29
lui $4, 4
bne $4, $4, TAG29
div $4, $4
TAG29:
nor $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
sb $2, 0($3)
TAG30:
divu $3, $3
beq $3, $3, TAG31
sb $3, 0($3)
bne $3, $3, TAG31
TAG31:
lui $3, 11
lui $4, 13
sll $1, $4, 4
sll $0, $0, 0
TAG32:
bne $4, $4, TAG33
mflo $1
beq $4, $1, TAG33
mflo $3
TAG33:
xor $4, $3, $3
lb $2, 0($4)
bne $2, $2, TAG34
mthi $2
TAG34:
addu $4, $2, $2
lhu $3, 24($4)
srl $2, $3, 1
addu $2, $4, $2
TAG35:
subu $2, $2, $2
multu $2, $2
mult $2, $2
bltz $2, TAG36
TAG36:
nor $3, $2, $2
lbu $2, 0($2)
beq $2, $2, TAG37
divu $2, $3
TAG37:
beq $2, $2, TAG38
sb $2, -244($2)
mfhi $4
lui $2, 11
TAG38:
bltz $2, TAG39
mthi $2
lw $1, -244($2)
addu $4, $2, $2
TAG39:
mfhi $1
ori $3, $1, 15
mult $4, $3
srl $3, $3, 5
TAG40:
mthi $3
mtlo $3
mult $3, $3
ori $2, $3, 11
TAG41:
lui $4, 2
lbu $1, 0($2)
mfhi $4
lui $3, 10
TAG42:
bne $3, $3, TAG43
mult $3, $3
lui $4, 12
sll $0, $0, 0
TAG43:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG44:
lui $4, 1
mult $4, $4
or $2, $3, $4
bltz $4, TAG45
TAG45:
div $2, $2
mflo $4
lui $4, 1
multu $4, $4
TAG46:
mult $4, $4
sltu $2, $4, $4
sh $4, 0($2)
multu $2, $2
TAG47:
beq $2, $2, TAG48
multu $2, $2
lh $4, 0($2)
add $4, $4, $2
TAG48:
div $4, $4
sll $0, $0, 0
bgez $2, TAG49
mfhi $1
TAG49:
mult $1, $1
mflo $2
lw $3, 0($2)
bltz $1, TAG50
TAG50:
mthi $3
lbu $3, 0($3)
mfhi $1
lui $4, 3
TAG51:
mflo $1
mfhi $1
addiu $2, $1, 5
bltz $1, TAG52
TAG52:
subu $3, $2, $2
addu $1, $2, $2
blez $2, TAG53
lui $4, 10
TAG53:
blez $4, TAG54
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $2, 7
TAG54:
srlv $3, $4, $4
lui $3, 8
bne $3, $4, TAG55
sltiu $4, $3, 8
TAG55:
srl $3, $4, 0
mflo $1
mtlo $1
blez $1, TAG56
TAG56:
sltiu $4, $1, 4
mult $4, $4
sltiu $3, $1, 2
mthi $4
TAG57:
sb $3, 0($3)
lui $4, 1
mtlo $4
slti $1, $3, 7
TAG58:
beq $1, $1, TAG59
lb $2, 0($1)
sw $2, 0($1)
lw $2, 0($2)
TAG59:
mthi $2
mtlo $2
mthi $2
bltz $2, TAG60
TAG60:
sb $2, 0($2)
sra $1, $2, 2
beq $2, $1, TAG61
xori $2, $2, 3
TAG61:
xor $3, $2, $2
ori $1, $3, 13
beq $3, $2, TAG62
sb $3, 0($3)
TAG62:
mult $1, $1
bgtz $1, TAG63
lui $2, 6
lui $2, 12
TAG63:
sll $0, $0, 0
mfhi $4
sllv $4, $2, $4
blez $2, TAG64
TAG64:
lui $4, 13
sll $2, $4, 5
sll $0, $0, 0
multu $2, $2
TAG65:
mtlo $2
xor $4, $2, $2
mult $2, $4
bltz $2, TAG66
TAG66:
ori $4, $4, 5
and $4, $4, $4
beq $4, $4, TAG67
mflo $3
TAG67:
beq $3, $3, TAG68
mthi $3
sb $3, 0($3)
addi $4, $3, 2
TAG68:
bne $4, $4, TAG69
lbu $3, 0($4)
sltu $1, $3, $4
mthi $3
TAG69:
div $1, $1
mtlo $1
ori $2, $1, 15
slti $4, $2, 6
TAG70:
bltz $4, TAG71
sb $4, 0($4)
mult $4, $4
beq $4, $4, TAG71
TAG71:
lui $3, 11
addiu $4, $4, 7
lui $3, 13
slti $1, $4, 8
TAG72:
bne $1, $1, TAG73
lbu $2, 0($1)
lui $4, 6
bgez $2, TAG73
TAG73:
mflo $1
addiu $1, $4, 7
bltz $1, TAG74
mthi $1
TAG74:
bne $1, $1, TAG75
andi $2, $1, 0
slti $4, $1, 12
mfhi $3
TAG75:
lui $1, 13
bltz $3, TAG76
div $3, $1
bne $1, $3, TAG76
TAG76:
sll $0, $0, 0
div $3, $3
blez $1, TAG77
and $3, $1, $3
TAG77:
sll $0, $0, 0
addiu $1, $3, 14
lui $3, 1
lui $3, 8
TAG78:
mfhi $3
blez $3, TAG79
lui $1, 8
ori $3, $3, 1
TAG79:
mtlo $3
mtlo $3
sb $3, 0($3)
lui $2, 5
TAG80:
mthi $2
mthi $2
mflo $2
and $2, $2, $2
TAG81:
mult $2, $2
sw $2, 0($2)
mfhi $1
sh $2, 0($1)
TAG82:
bltz $1, TAG83
multu $1, $1
beq $1, $1, TAG83
srlv $2, $1, $1
TAG83:
bltz $2, TAG84
mtlo $2
mult $2, $2
mult $2, $2
TAG84:
bltz $2, TAG85
mthi $2
andi $4, $2, 10
sw $4, 0($4)
TAG85:
mthi $4
mfhi $2
sltiu $4, $2, 10
add $1, $2, $2
TAG86:
ori $2, $1, 11
lb $4, 0($2)
mult $1, $2
mflo $2
TAG87:
srl $4, $2, 0
mtlo $4
mthi $4
sll $3, $4, 7
TAG88:
mflo $1
mtlo $1
mult $1, $1
mult $1, $3
TAG89:
xori $2, $1, 12
multu $1, $1
mflo $2
bgtz $2, TAG90
TAG90:
mflo $1
sh $1, 0($1)
lbu $4, 0($1)
mflo $4
TAG91:
mflo $2
mfhi $2
lh $2, 0($2)
bltz $2, TAG92
TAG92:
nor $3, $2, $2
blez $2, TAG93
lhu $4, 1($3)
multu $4, $4
TAG93:
bltz $4, TAG94
mthi $4
mthi $4
beq $4, $4, TAG94
TAG94:
lhu $2, 0($4)
mflo $2
lh $1, 0($2)
mtlo $2
TAG95:
sh $1, 0($1)
lw $4, 0($1)
lui $2, 11
beq $1, $4, TAG96
TAG96:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG97
sll $0, $0, 0
TAG97:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG98:
sltu $4, $1, $1
nor $3, $1, $1
beq $3, $1, TAG99
srav $2, $4, $1
TAG99:
bne $2, $2, TAG100
sh $2, 0($2)
sra $4, $2, 7
multu $4, $2
TAG100:
lbu $4, 0($4)
multu $4, $4
lbu $1, 0($4)
lui $4, 10
TAG101:
mtlo $4
bne $4, $4, TAG102
sll $0, $0, 0
bne $4, $4, TAG102
TAG102:
sll $0, $0, 0
sll $0, $0, 0
sltu $1, $1, $4
mflo $3
TAG103:
mflo $3
mtlo $3
bgez $3, TAG104
mthi $3
TAG104:
div $3, $3
multu $3, $3
sll $0, $0, 0
lui $3, 11
TAG105:
bne $3, $3, TAG106
divu $3, $3
mtlo $3
xori $4, $3, 3
TAG106:
mfhi $2
sh $2, 0($2)
addu $2, $4, $2
blez $4, TAG107
TAG107:
mflo $4
srl $3, $4, 14
beq $3, $4, TAG108
addiu $4, $2, 5
TAG108:
mfhi $4
sb $4, 0($4)
sllv $2, $4, $4
lh $3, 0($4)
TAG109:
bltz $3, TAG110
mult $3, $3
mflo $4
mtlo $4
TAG110:
lui $4, 12
beq $4, $4, TAG111
mflo $3
addi $2, $4, 9
TAG111:
bne $2, $2, TAG112
mult $2, $2
mtlo $2
bne $2, $2, TAG112
TAG112:
sw $2, 0($2)
mfhi $2
sh $2, 0($2)
blez $2, TAG113
TAG113:
mflo $2
sh $2, 0($2)
lb $2, 0($2)
bltz $2, TAG114
TAG114:
sh $2, 0($2)
bltz $2, TAG115
mult $2, $2
mtlo $2
TAG115:
or $3, $2, $2
lui $3, 5
mthi $2
mthi $3
TAG116:
mthi $3
divu $3, $3
lui $2, 0
lui $1, 6
TAG117:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
mflo $1
TAG118:
xori $2, $1, 13
sh $1, 0($2)
sh $2, 0($2)
ori $4, $1, 10
TAG119:
mtlo $4
div $4, $4
div $4, $4
lb $4, 0($4)
TAG120:
nor $2, $4, $4
bltz $2, TAG121
lui $1, 9
bgtz $1, TAG121
TAG121:
srav $3, $1, $1
subu $2, $3, $3
mtlo $3
xori $1, $3, 0
TAG122:
beq $1, $1, TAG123
sll $0, $0, 0
xor $1, $1, $1
bne $4, $1, TAG123
TAG123:
mflo $3
mflo $4
sll $0, $0, 0
mfhi $2
TAG124:
xori $3, $2, 13
bgtz $2, TAG125
mflo $2
lui $2, 5
TAG125:
andi $2, $2, 1
srlv $1, $2, $2
addiu $1, $2, 7
bne $2, $1, TAG126
TAG126:
lbu $2, 0($1)
beq $1, $2, TAG127
sw $1, 0($2)
mflo $1
TAG127:
subu $4, $1, $1
lhu $2, 0($4)
sll $0, $0, 0
sll $0, $0, 0
TAG128:
bgtz $2, TAG129
lui $1, 13
mthi $2
sra $2, $2, 11
TAG129:
multu $2, $2
slt $1, $2, $2
bne $2, $2, TAG130
lui $1, 0
TAG130:
lbu $3, 0($1)
sb $3, 0($1)
lbu $3, 0($3)
mtlo $3
TAG131:
lui $2, 7
xori $1, $2, 1
sll $0, $0, 0
srlv $1, $3, $2
TAG132:
xor $2, $1, $1
mthi $2
mtlo $1
lui $1, 15
TAG133:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $3
mflo $2
TAG134:
mthi $2
mfhi $4
xor $2, $4, $4
lui $4, 10
TAG135:
beq $4, $4, TAG136
or $1, $4, $4
andi $1, $1, 13
lbu $4, 0($1)
TAG136:
lui $3, 11
lui $4, 0
mult $4, $4
sh $3, 0($4)
TAG137:
multu $4, $4
mthi $4
lw $3, 0($4)
lw $2, 0($3)
TAG138:
lbu $1, 0($2)
andi $2, $2, 14
bgez $1, TAG139
mtlo $1
TAG139:
lbu $1, 0($2)
mtlo $1
sw $2, 0($2)
lbu $1, 0($2)
TAG140:
lh $4, 0($1)
blez $4, TAG141
multu $1, $4
sh $4, 0($4)
TAG141:
sh $4, 0($4)
beq $4, $4, TAG142
lui $2, 14
mtlo $2
TAG142:
subu $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
lh $4, 0($1)
TAG143:
lw $2, 0($4)
lbu $4, 0($4)
lw $2, 0($4)
bne $2, $4, TAG144
TAG144:
lbu $4, 0($2)
addu $2, $4, $4
lbu $3, 0($2)
mtlo $3
TAG145:
andi $2, $3, 15
multu $2, $3
lbu $3, 0($2)
sw $3, 0($3)
TAG146:
sw $3, 0($3)
mflo $4
mthi $4
lui $1, 5
TAG147:
sll $0, $0, 0
addiu $1, $1, 2
lui $1, 2
sll $0, $0, 0
TAG148:
ori $4, $2, 13
mflo $4
add $1, $4, $2
xori $3, $4, 10
TAG149:
srlv $2, $3, $3
sb $2, 0($2)
lhu $2, 0($3)
mfhi $3
TAG150:
srl $2, $3, 10
sllv $1, $3, $3
addi $4, $2, 5
bne $1, $3, TAG151
TAG151:
sb $4, 0($4)
bne $4, $4, TAG152
slt $2, $4, $4
multu $2, $2
TAG152:
lh $4, 0($2)
sb $4, 0($4)
bne $2, $4, TAG153
mtlo $4
TAG153:
nor $3, $4, $4
srlv $4, $3, $3
mtlo $4
subu $3, $4, $3
TAG154:
mflo $2
lb $2, 0($2)
lb $4, 0($2)
bltz $2, TAG155
TAG155:
sb $4, 0($4)
mthi $4
bne $4, $4, TAG156
mflo $4
TAG156:
sb $4, 0($4)
beq $4, $4, TAG157
mult $4, $4
beq $4, $4, TAG157
TAG157:
sb $4, 0($4)
sra $2, $4, 13
lui $4, 2
mtlo $2
TAG158:
lui $1, 0
lui $2, 8
sll $0, $0, 0
sw $4, 0($1)
TAG159:
multu $1, $1
xor $2, $1, $1
sll $3, $2, 5
sb $3, 0($1)
TAG160:
bne $3, $3, TAG161
multu $3, $3
mthi $3
sh $3, 0($3)
TAG161:
lh $1, 0($3)
subu $3, $3, $3
bgtz $3, TAG162
mult $1, $3
TAG162:
lui $3, 2
lui $2, 1
mthi $3
bgez $2, TAG163
TAG163:
sll $0, $0, 0
beq $2, $2, TAG164
sltu $1, $4, $4
addiu $2, $4, 4
TAG164:
subu $4, $2, $2
mflo $3
multu $4, $4
divu $4, $2
TAG165:
mtlo $3
sh $3, 0($3)
bne $3, $3, TAG166
lui $1, 7
TAG166:
sltiu $3, $1, 9
sltiu $3, $1, 11
bne $3, $3, TAG167
sh $3, 0($3)
TAG167:
bltz $3, TAG168
sltu $2, $3, $3
lui $4, 3
mtlo $3
TAG168:
lui $2, 13
bgez $4, TAG169
lui $1, 1
mthi $1
TAG169:
mtlo $1
bgtz $1, TAG170
xor $4, $1, $1
lh $3, 0($4)
TAG170:
lhu $4, 0($3)
lhu $1, 0($3)
mflo $3
andi $4, $3, 0
TAG171:
mthi $4
sw $4, 0($4)
lui $3, 9
sll $0, $0, 0
TAG172:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
mfhi $1
TAG173:
lui $1, 9
mthi $1
mthi $1
bgtz $1, TAG174
TAG174:
multu $1, $1
mflo $2
mthi $2
blez $2, TAG175
TAG175:
lui $1, 6
srav $2, $1, $2
divu $2, $2
sll $0, $0, 0
TAG176:
div $2, $2
mthi $2
multu $2, $2
divu $2, $2
TAG177:
mult $2, $2
mflo $3
lb $1, 0($3)
srlv $3, $3, $3
TAG178:
mfhi $2
sh $2, 0($2)
mtlo $3
lui $2, 15
TAG179:
beq $2, $2, TAG180
addiu $2, $2, 7
beq $2, $2, TAG180
nor $1, $2, $2
TAG180:
blez $1, TAG181
mtlo $1
sw $1, 0($1)
lui $4, 14
TAG181:
lhu $2, 0($4)
mfhi $3
lui $3, 5
bgez $4, TAG182
TAG182:
mthi $3
bgez $3, TAG183
divu $3, $3
lui $2, 7
TAG183:
sltu $2, $2, $2
beq $2, $2, TAG184
and $4, $2, $2
sw $2, 0($2)
TAG184:
lui $4, 7
slt $1, $4, $4
mfhi $1
mtlo $1
TAG185:
bgtz $1, TAG186
lbu $2, 0($1)
bltz $2, TAG186
multu $1, $1
TAG186:
lui $1, 14
sw $1, 0($2)
multu $1, $2
bne $2, $1, TAG187
TAG187:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
lui $2, 7
TAG188:
bne $2, $2, TAG189
divu $2, $2
bltz $2, TAG189
lui $3, 7
TAG189:
bgtz $3, TAG190
addiu $2, $3, 7
beq $3, $2, TAG190
lb $2, 0($3)
TAG190:
mfhi $2
lh $2, 0($2)
srlv $4, $2, $2
add $4, $2, $4
TAG191:
bltz $4, TAG192
xor $1, $4, $4
srav $1, $4, $1
mfhi $1
TAG192:
mfhi $4
sltu $1, $4, $1
lw $4, 0($1)
sll $1, $4, 8
TAG193:
addiu $1, $1, 9
addu $2, $1, $1
sra $4, $1, 4
bltz $2, TAG194
TAG194:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $2, $1, TAG195
TAG195:
sll $0, $0, 0
sra $4, $2, 9
mthi $2
srl $2, $1, 4
TAG196:
sll $0, $0, 0
lui $1, 4
beq $2, $1, TAG197
ori $4, $1, 0
TAG197:
lui $3, 5
srav $2, $4, $3
and $4, $2, $3
bgtz $2, TAG198
TAG198:
sll $0, $0, 0
sll $0, $0, 0
div $4, $1
lui $1, 10
TAG199:
beq $1, $1, TAG200
sll $0, $0, 0
bne $1, $1, TAG200
addi $2, $1, 13
TAG200:
mflo $2
lui $2, 5
mult $2, $2
div $2, $2
TAG201:
xori $3, $2, 5
bgtz $2, TAG202
sll $0, $0, 0
multu $2, $2
TAG202:
mfhi $4
mult $4, $4
or $4, $3, $4
sll $0, $0, 0
TAG203:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
TAG204:
mult $1, $1
mtlo $1
mthi $1
addu $1, $1, $1
TAG205:
beq $1, $1, TAG206
sll $0, $0, 0
lui $4, 14
blez $4, TAG206
TAG206:
xori $2, $4, 12
lui $1, 2
div $1, $4
addiu $4, $2, 8
TAG207:
beq $4, $4, TAG208
mfhi $1
bne $1, $4, TAG208
div $1, $1
TAG208:
sll $0, $0, 0
bgtz $1, TAG209
mthi $1
slt $3, $4, $1
TAG209:
sll $0, $0, 0
xor $3, $3, $3
srlv $2, $3, $3
bne $3, $3, TAG210
TAG210:
mult $2, $2
addi $4, $2, 2
mthi $2
mfhi $3
TAG211:
mtlo $3
mflo $3
beq $3, $3, TAG212
mult $3, $3
TAG212:
bne $3, $3, TAG213
mfhi $1
mtlo $3
sh $3, 0($3)
TAG213:
lw $2, 0($1)
mflo $2
mult $1, $2
lui $1, 2
TAG214:
mtlo $1
sll $0, $0, 0
mflo $1
lui $4, 8
TAG215:
mthi $4
sll $0, $0, 0
blez $4, TAG216
lui $3, 7
TAG216:
bgez $3, TAG217
nor $1, $3, $3
lui $4, 10
mfhi $4
TAG217:
sll $0, $0, 0
div $4, $4
sra $3, $4, 10
mult $3, $4
TAG218:
multu $3, $3
nor $2, $3, $3
srlv $4, $3, $2
bne $3, $3, TAG219
TAG219:
srlv $3, $4, $4
beq $3, $3, TAG220
mthi $3
subu $3, $3, $4
TAG220:
xori $2, $3, 12
mflo $3
sll $0, $0, 0
mfhi $1
TAG221:
bgtz $1, TAG222
lh $3, 0($1)
addu $1, $3, $3
sb $1, 0($1)
TAG222:
mthi $1
subu $4, $1, $1
mtlo $4
sb $1, 0($1)
TAG223:
mult $4, $4
bne $4, $4, TAG224
multu $4, $4
bne $4, $4, TAG224
TAG224:
lhu $3, 0($4)
bltz $4, TAG225
mtlo $4
lui $2, 2
TAG225:
mult $2, $2
mtlo $2
beq $2, $2, TAG226
ori $4, $2, 1
TAG226:
lui $1, 5
mflo $2
srl $1, $4, 3
xori $4, $1, 2
TAG227:
slti $1, $4, 10
addiu $4, $1, 0
bne $1, $1, TAG228
and $2, $4, $1
TAG228:
lui $2, 14
bgez $2, TAG229
mtlo $2
blez $2, TAG229
TAG229:
multu $2, $2
divu $2, $2
sll $0, $0, 0
divu $2, $2
TAG230:
mflo $1
bne $1, $2, TAG231
xori $4, $2, 14
ori $1, $4, 5
TAG231:
slt $3, $1, $1
mtlo $1
nor $2, $3, $1
mult $3, $3
TAG232:
ori $1, $2, 0
div $1, $2
mthi $1
bne $1, $1, TAG233
TAG233:
xor $3, $1, $1
lb $2, 2($1)
bne $2, $1, TAG234
lui $3, 14
TAG234:
bgez $3, TAG235
lui $4, 7
subu $1, $3, $4
mtlo $4
TAG235:
beq $1, $1, TAG236
mtlo $1
lhu $2, 0($1)
mfhi $4
TAG236:
beq $4, $4, TAG237
xori $4, $4, 14
sw $4, 0($4)
andi $4, $4, 1
TAG237:
mflo $1
lui $4, 13
sltu $2, $4, $4
xor $1, $4, $2
TAG238:
bne $1, $1, TAG239
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG239:
blez $2, TAG240
mtlo $2
mfhi $4
lui $2, 3
TAG240:
subu $3, $2, $2
subu $2, $2, $3
mult $2, $3
lui $1, 9
TAG241:
mflo $3
mtlo $3
sb $1, 0($3)
sra $3, $3, 14
TAG242:
mtlo $3
xori $4, $3, 7
lbu $4, 0($3)
mfhi $1
TAG243:
sra $4, $1, 1
mthi $1
mtlo $4
sh $1, 0($4)
TAG244:
xori $4, $4, 11
bne $4, $4, TAG245
sb $4, 0($4)
beq $4, $4, TAG245
TAG245:
mfhi $2
mthi $4
bgez $2, TAG246
mflo $4
TAG246:
mflo $1
mthi $4
mfhi $2
multu $2, $4
TAG247:
ori $1, $2, 5
mfhi $4
addiu $1, $2, 11
lb $3, 0($1)
TAG248:
bgez $3, TAG249
srav $2, $3, $3
sub $1, $2, $3
bne $1, $1, TAG249
TAG249:
addu $1, $1, $1
bgez $1, TAG250
addiu $1, $1, 8
lhu $3, 0($1)
TAG250:
lb $3, 0($3)
bgez $3, TAG251
lui $3, 3
mthi $3
TAG251:
mthi $3
lui $3, 14
mthi $3
beq $3, $3, TAG252
TAG252:
sltiu $3, $3, 3
mflo $2
andi $3, $2, 10
mtlo $3
TAG253:
mtlo $3
beq $3, $3, TAG254
sra $1, $3, 11
lui $1, 6
TAG254:
xori $4, $1, 11
div $1, $4
bne $4, $4, TAG255
divu $4, $4
TAG255:
addiu $2, $4, 7
sb $4, 0($2)
sh $2, 0($2)
mult $2, $2
TAG256:
blez $2, TAG257
mfhi $3
ori $1, $3, 11
lui $1, 13
TAG257:
mtlo $1
mthi $1
sll $0, $0, 0
mfhi $3
TAG258:
nor $2, $3, $3
sll $0, $0, 0
mflo $1
sll $0, $0, 0
TAG259:
sll $0, $0, 0
sll $0, $0, 0
sllv $4, $1, $1
bgtz $4, TAG260
TAG260:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $4, 5
TAG261:
lui $3, 3
sll $0, $0, 0
addiu $4, $3, 5
mflo $4
TAG262:
mflo $2
ori $4, $4, 11
bgtz $2, TAG263
slti $1, $4, 8
TAG263:
bgtz $1, TAG264
lw $1, 0($1)
xor $4, $1, $1
beq $4, $1, TAG264
TAG264:
mfhi $2
lb $4, -169($2)
mfhi $4
lw $2, -169($4)
TAG265:
ori $4, $2, 12
sll $0, $0, 0
divu $2, $2
subu $2, $2, $2
TAG266:
beq $2, $2, TAG267
mtlo $2
lbu $4, 0($2)
sw $4, 0($4)
TAG267:
mthi $4
sll $0, $0, 0
sltu $2, $4, $4
lh $4, 0($2)
TAG268:
mult $4, $4
lui $4, 0
mflo $1
addi $3, $4, 13
TAG269:
lbu $3, 0($3)
lui $4, 1
lh $1, 0($3)
mthi $3
TAG270:
mthi $1
multu $1, $1
srav $2, $1, $1
sb $1, 0($1)
TAG271:
mult $2, $2
bltz $2, TAG272
mthi $2
lb $3, 0($2)
TAG272:
mthi $3
multu $3, $3
lui $2, 15
bne $2, $2, TAG273
TAG273:
mthi $2
lui $2, 8
bgez $2, TAG274
sll $1, $2, 11
TAG274:
mfhi $1
mflo $1
blez $1, TAG275
mflo $2
TAG275:
mtlo $2
mtlo $2
bltz $2, TAG276
mflo $3
TAG276:
sra $2, $3, 15
sltiu $2, $3, 13
mthi $2
slti $1, $3, 4
TAG277:
mfhi $2
mult $2, $2
mtlo $2
div $1, $1
TAG278:
mfhi $1
divu $1, $2
sh $2, 0($1)
lb $3, 0($2)
TAG279:
mthi $3
mtlo $3
subu $4, $3, $3
lb $1, 0($3)
TAG280:
beq $1, $1, TAG281
sb $1, 0($1)
srav $2, $1, $1
sw $1, 0($1)
TAG281:
addiu $4, $2, 4
slti $3, $2, 11
mfhi $1
bne $2, $3, TAG282
TAG282:
mtlo $1
mult $1, $1
lhu $3, 0($1)
beq $3, $1, TAG283
TAG283:
sh $3, -257($3)
ori $1, $3, 15
divu $3, $1
blez $1, TAG284
TAG284:
srav $2, $1, $1
divu $1, $1
or $1, $2, $1
sh $2, -271($1)
TAG285:
mtlo $1
beq $1, $1, TAG286
div $1, $1
sh $1, 0($1)
TAG286:
divu $1, $1
beq $1, $1, TAG287
divu $1, $1
lui $2, 7
TAG287:
beq $2, $2, TAG288
mfhi $3
lbu $4, 0($3)
sltiu $2, $2, 2
TAG288:
mtlo $2
subu $3, $2, $2
mthi $3
srav $1, $2, $3
TAG289:
mthi $1
lui $3, 13
ori $2, $1, 12
lui $1, 10
TAG290:
sll $0, $0, 0
mflo $1
mthi $4
lw $1, 0($1)
TAG291:
blez $1, TAG292
mfhi $4
subu $1, $1, $4
mflo $2
TAG292:
sra $2, $2, 11
mult $2, $2
mfhi $4
mtlo $4
TAG293:
lui $4, 4
srl $2, $4, 2
bgtz $2, TAG294
lui $3, 8
TAG294:
lui $4, 8
mfhi $3
sll $0, $0, 0
srl $4, $4, 4
TAG295:
nor $2, $4, $4
srav $3, $2, $2
slt $3, $4, $2
sll $0, $0, 0
TAG296:
div $1, $1
bltz $1, TAG297
addiu $4, $1, 6
lui $1, 8
TAG297:
bgez $1, TAG298
div $1, $1
multu $1, $1
mfhi $3
TAG298:
lw $1, 0($3)
blez $1, TAG299
lui $3, 4
mthi $3
TAG299:
sll $0, $0, 0
beq $3, $3, TAG300
sll $0, $0, 0
mfhi $1
TAG300:
bltz $1, TAG301
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG301:
bne $1, $1, TAG302
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG302:
addiu $3, $2, 1
sll $0, $0, 0
mfhi $4
divu $2, $4
TAG303:
mflo $4
ori $1, $4, 5
mflo $2
blez $1, TAG304
TAG304:
mflo $1
mult $1, $2
mult $2, $1
lh $3, -16383($1)
TAG305:
mthi $3
addiu $1, $3, 0
or $2, $3, $1
xori $4, $2, 3
TAG306:
mfhi $3
sw $3, 0($3)
mfhi $2
srlv $1, $3, $2
TAG307:
ori $3, $1, 7
bgez $3, TAG308
lui $1, 8
mflo $4
TAG308:
andi $3, $4, 5
lbu $1, 0($3)
srav $1, $4, $3
mthi $1
TAG309:
srl $3, $1, 15
subu $2, $3, $3
sb $3, 0($1)
add $2, $2, $2
TAG310:
bltz $2, TAG311
mtlo $2
add $3, $2, $2
xor $2, $3, $3
TAG311:
sh $2, 0($2)
sb $2, 0($2)
mult $2, $2
mthi $2
TAG312:
mthi $2
lbu $1, 0($2)
sllv $2, $1, $2
multu $2, $1
TAG313:
bgtz $2, TAG314
lh $3, 0($2)
sra $4, $3, 9
sltiu $2, $3, 12
TAG314:
lbu $4, 0($2)
lui $2, 4
lui $4, 2
bne $2, $2, TAG315
TAG315:
mflo $4
lui $4, 8
sll $0, $0, 0
lui $3, 13
TAG316:
subu $3, $3, $3
lh $1, 0($3)
lb $4, 0($3)
bgez $3, TAG317
TAG317:
mult $4, $4
bgtz $4, TAG318
sw $4, 0($4)
multu $4, $4
TAG318:
sw $4, 0($4)
srlv $4, $4, $4
lui $3, 8
lbu $4, 0($4)
TAG319:
lui $4, 7
mthi $4
div $4, $4
mflo $4
TAG320:
mthi $4
mtlo $4
bne $4, $4, TAG321
slti $2, $4, 6
TAG321:
mfhi $1
div $2, $2
divu $2, $1
mflo $2
TAG322:
lui $3, 3
mfhi $1
mfhi $2
bgtz $1, TAG323
TAG323:
multu $2, $2
mfhi $3
andi $1, $3, 10
blez $1, TAG324
TAG324:
sb $1, 0($1)
mult $1, $1
lbu $3, 0($1)
lh $1, 0($3)
TAG325:
sllv $2, $1, $1
bgtz $2, TAG326
nor $3, $2, $1
lui $2, 4
TAG326:
lui $2, 3
srl $3, $2, 6
srl $3, $3, 8
mfhi $2
TAG327:
srl $4, $2, 15
lb $4, 0($4)
mult $4, $4
lhu $1, 0($4)
TAG328:
or $1, $1, $1
mthi $1
mult $1, $1
mfhi $1
TAG329:
bne $1, $1, TAG330
lui $3, 8
mult $3, $3
srl $3, $1, 1
TAG330:
sll $3, $3, 15
lui $1, 4
sll $2, $3, 8
bltz $3, TAG331
TAG331:
mtlo $2
srl $1, $2, 14
lh $1, 0($1)
mthi $1
TAG332:
sb $1, 0($1)
lui $4, 8
sra $2, $1, 11
bgez $1, TAG333
TAG333:
sh $2, 0($2)
mtlo $2
sh $2, 0($2)
sh $2, 0($2)
TAG334:
sltu $4, $2, $2
beq $4, $4, TAG335
sw $4, 0($2)
mthi $4
TAG335:
bltz $4, TAG336
lui $3, 10
mfhi $3
sw $3, 0($4)
TAG336:
mthi $3
or $3, $3, $3
mflo $4
lhu $1, 0($3)
TAG337:
and $1, $1, $1
sltu $4, $1, $1
lui $3, 8
lui $3, 15
TAG338:
divu $3, $3
bne $3, $3, TAG339
subu $4, $3, $3
lb $2, 0($4)
TAG339:
bgtz $2, TAG340
mult $2, $2
lui $4, 9
sll $0, $0, 0
TAG340:
lui $2, 2
and $4, $2, $4
sltu $1, $2, $4
beq $2, $4, TAG341
TAG341:
sll $2, $1, 11
bne $1, $2, TAG342
multu $1, $2
slti $2, $1, 4
TAG342:
blez $2, TAG343
sb $2, 0($2)
subu $4, $2, $2
lui $3, 9
TAG343:
sll $0, $0, 0
mflo $1
mult $1, $1
blez $3, TAG344
TAG344:
lb $4, 0($1)
bne $4, $1, TAG345
sltu $3, $4, $1
sb $3, 0($4)
TAG345:
bgtz $3, TAG346
srlv $1, $3, $3
multu $1, $3
bne $3, $3, TAG346
TAG346:
sh $1, 0($1)
lui $4, 12
or $1, $1, $4
lui $4, 2
TAG347:
sll $0, $0, 0
mult $4, $4
bne $4, $4, TAG348
mflo $1
TAG348:
mflo $2
mult $1, $2
srlv $4, $1, $2
lui $4, 4
TAG349:
bgez $4, TAG350
div $4, $4
sub $4, $4, $4
sltu $4, $4, $4
TAG350:
lui $4, 15
mflo $3
mflo $3
addu $1, $4, $3
TAG351:
bne $1, $1, TAG352
sll $0, $0, 0
beq $3, $3, TAG352
mfhi $1
TAG352:
sw $1, 0($1)
sb $1, 0($1)
blez $1, TAG353
mthi $1
TAG353:
mtlo $1
bgez $1, TAG354
lbu $4, 0($1)
sub $3, $4, $4
TAG354:
bne $3, $3, TAG355
mtlo $3
lui $2, 6
mflo $3
TAG355:
subu $4, $3, $3
addi $3, $4, 7
lh $2, 0($4)
lhu $2, 0($4)
TAG356:
srlv $4, $2, $2
mfhi $2
mflo $3
lbu $4, 0($3)
TAG357:
lw $2, 0($4)
xori $2, $4, 14
blez $4, TAG358
sra $2, $2, 11
TAG358:
mult $2, $2
sw $2, 0($2)
lh $3, 0($2)
mthi $2
TAG359:
lh $1, 0($3)
mflo $2
lw $2, 0($2)
sllv $2, $2, $3
TAG360:
sltiu $3, $2, 3
sw $2, 0($2)
bgez $3, TAG361
mflo $3
TAG361:
mult $3, $3
lui $4, 13
bgtz $4, TAG362
mfhi $3
TAG362:
bltz $3, TAG363
sllv $3, $3, $3
lhu $1, 0($3)
subu $1, $3, $1
TAG363:
andi $3, $1, 1
lui $2, 11
sll $0, $0, 0
lui $4, 11
TAG364:
mult $4, $4
sll $0, $0, 0
lui $2, 6
sll $0, $0, 0
TAG365:
beq $4, $4, TAG366
div $4, $4
mtlo $4
bne $4, $4, TAG366
TAG366:
lui $2, 8
mflo $2
lui $1, 11
or $1, $2, $2
TAG367:
bne $1, $1, TAG368
lui $1, 4
lui $4, 13
bgez $1, TAG368
TAG368:
sltiu $1, $4, 7
multu $4, $1
sll $0, $0, 0
mthi $2
TAG369:
bne $2, $2, TAG370
mult $2, $2
bne $2, $2, TAG370
sb $2, 0($2)
TAG370:
andi $3, $2, 2
bltz $3, TAG371
divu $2, $2
mfhi $2
TAG371:
mtlo $2
lh $1, 0($2)
subu $3, $1, $2
mfhi $2
TAG372:
bltz $2, TAG373
srl $4, $2, 6
lui $2, 4
multu $2, $2
TAG373:
srlv $1, $2, $2
subu $1, $2, $2
subu $3, $2, $2
bne $3, $2, TAG374
TAG374:
sub $4, $3, $3
mthi $3
beq $3, $4, TAG375
lhu $3, 0($3)
TAG375:
mtlo $3
blez $3, TAG376
addu $2, $3, $3
mfhi $1
TAG376:
sh $1, 0($1)
sra $4, $1, 6
addiu $2, $4, 1
lui $3, 5
TAG377:
mtlo $3
sll $0, $0, 0
addu $3, $3, $3
mflo $4
TAG378:
multu $4, $4
or $1, $4, $4
blez $4, TAG379
ori $3, $1, 3
TAG379:
sll $0, $0, 0
divu $4, $3
mult $4, $4
multu $4, $4
TAG380:
sll $0, $0, 0
bltz $4, TAG381
mflo $2
mthi $4
TAG381:
bgez $2, TAG382
lbu $4, 0($2)
sb $2, 0($4)
sb $2, 0($4)
TAG382:
sra $3, $4, 8
lui $4, 3
lui $2, 4
div $4, $2
TAG383:
bgtz $2, TAG384
addiu $4, $2, 4
bltz $4, TAG384
mthi $4
TAG384:
sltu $2, $4, $4
or $3, $2, $4
sll $0, $0, 0
lui $3, 6
TAG385:
mflo $3
beq $3, $3, TAG386
mfhi $1
or $3, $3, $3
TAG386:
sltu $3, $3, $3
mtlo $3
mfhi $2
slt $2, $3, $3
TAG387:
mtlo $2
bgtz $2, TAG388
multu $2, $2
blez $2, TAG388
TAG388:
sb $2, 0($2)
lui $2, 6
mthi $2
sll $0, $0, 0
TAG389:
subu $1, $4, $4
sll $0, $0, 0
sw $1, 0($3)
ori $3, $1, 10
TAG390:
sh $3, 0($3)
bgez $3, TAG391
mfhi $2
xor $2, $3, $2
TAG391:
srav $3, $2, $2
beq $2, $2, TAG392
mtlo $2
xori $3, $2, 13
TAG392:
mtlo $3
addiu $4, $3, 6
and $4, $3, $3
addu $3, $3, $4
TAG393:
sll $0, $0, 0
andi $4, $3, 13
bltz $3, TAG394
mthi $3
TAG394:
mult $4, $4
xor $1, $4, $4
lui $1, 0
sh $4, 0($1)
TAG395:
mflo $3
lbu $2, 0($1)
lui $2, 4
mfhi $2
TAG396:
mtlo $2
bltz $2, TAG397
mflo $4
mflo $3
TAG397:
lui $3, 8
lui $4, 3
sll $0, $0, 0
sll $1, $3, 4
TAG398:
sll $0, $0, 0
bne $1, $1, TAG399
srav $2, $1, $1
bne $1, $2, TAG399
TAG399:
mflo $1
srav $1, $2, $2
srl $4, $1, 13
sll $0, $0, 0
TAG400:
sllv $1, $4, $4
sb $1, -1024($4)
bgtz $4, TAG401
lui $3, 13
TAG401:
mflo $1
mflo $2
mtlo $2
mthi $3
TAG402:
mflo $4
lhu $1, 0($2)
mthi $4
lui $3, 8
TAG403:
mult $3, $3
mult $3, $3
bltz $3, TAG404
xori $3, $3, 6
TAG404:
blez $3, TAG405
mflo $4
mflo $4
srl $1, $4, 10
TAG405:
mflo $4
bltz $4, TAG406
mtlo $4
lui $1, 0
TAG406:
mflo $1
sw $1, 0($1)
mfhi $1
lui $1, 14
TAG407:
multu $1, $1
subu $1, $1, $1
sw $1, 0($1)
mult $1, $1
TAG408:
multu $1, $1
mtlo $1
slt $4, $1, $1
blez $4, TAG409
TAG409:
multu $4, $4
lui $4, 14
bgez $4, TAG410
addu $2, $4, $4
TAG410:
and $2, $2, $2
lui $3, 8
bgez $2, TAG411
lui $4, 11
TAG411:
and $2, $4, $4
addu $3, $4, $4
sll $0, $0, 0
bgez $3, TAG412
TAG412:
addu $2, $3, $3
mtlo $3
addu $2, $3, $3
xor $1, $2, $3
TAG413:
sll $0, $0, 0
or $2, $1, $1
mfhi $1
lb $3, 0($1)
TAG414:
sb $3, 0($3)
sllv $3, $3, $3
addi $2, $3, 2
div $3, $2
TAG415:
sllv $2, $2, $2
div $2, $2
mfhi $1
lbu $3, 0($1)
TAG416:
srav $3, $3, $3
srl $4, $3, 1
blez $3, TAG417
mult $4, $3
TAG417:
srav $3, $4, $4
mflo $2
lui $2, 1
sll $0, $0, 0
TAG418:
beq $2, $2, TAG419
sll $0, $0, 0
srl $3, $2, 1
div $2, $2
TAG419:
bne $3, $3, TAG420
mult $3, $3
blez $3, TAG420
mfhi $3
TAG420:
mflo $4
mthi $4
sw $4, 0($4)
mflo $4
TAG421:
sh $4, 0($4)
srav $1, $4, $4
lh $1, 0($1)
sltiu $4, $1, 15
TAG422:
sb $4, 0($4)
lbu $4, 0($4)
lbu $1, 0($4)
lui $2, 12
TAG423:
mthi $2
mult $2, $2
mtlo $2
lui $2, 4
TAG424:
sltiu $1, $2, 6
bne $1, $2, TAG425
lui $3, 7
sh $3, 0($2)
TAG425:
lui $1, 15
mult $1, $3
mflo $2
mtlo $2
TAG426:
srlv $3, $2, $2
sw $2, 0($2)
slti $1, $3, 4
lui $1, 5
TAG427:
sra $1, $1, 12
mthi $1
mthi $1
lh $3, 0($1)
TAG428:
bgez $3, TAG429
mflo $1
multu $3, $1
bne $1, $1, TAG429
TAG429:
mtlo $1
multu $1, $1
lhu $4, 0($1)
lui $1, 3
TAG430:
mflo $4
sll $0, $0, 0
andi $4, $2, 10
sb $4, 0($4)
TAG431:
mflo $2
mthi $4
mult $2, $2
mult $2, $4
TAG432:
bgtz $2, TAG433
addiu $4, $2, 2
divu $2, $4
bltz $2, TAG433
TAG433:
mthi $4
multu $4, $4
mult $4, $4
sb $4, 0($4)
TAG434:
mflo $1
mfhi $1
mtlo $4
blez $4, TAG435
TAG435:
lh $2, 0($1)
beq $2, $1, TAG436
lh $1, 0($1)
mtlo $1
TAG436:
mthi $1
mult $1, $1
mflo $2
sltu $2, $2, $1
TAG437:
mult $2, $2
mfhi $1
sw $1, 0($2)
mtlo $2
TAG438:
andi $2, $1, 1
lh $1, 0($2)
lhu $3, 0($1)
mthi $2
TAG439:
lb $4, 0($3)
lui $4, 6
mthi $4
and $3, $3, $3
TAG440:
multu $3, $3
mflo $2
lbu $4, 0($2)
mthi $2
TAG441:
lw $4, 0($4)
addu $4, $4, $4
lw $3, 0($4)
or $2, $4, $4
TAG442:
mtlo $2
sb $2, 0($2)
mtlo $2
mfhi $1
TAG443:
srlv $1, $1, $1
xor $4, $1, $1
mfhi $4
mult $1, $4
TAG444:
mtlo $4
lui $2, 3
beq $2, $4, TAG445
lui $1, 1
TAG445:
sll $0, $0, 0
mfhi $3
lui $2, 0
mtlo $3
TAG446:
bgtz $2, TAG447
mtlo $2
sw $2, 0($2)
lui $2, 0
TAG447:
lhu $1, 0($2)
mflo $2
sll $3, $1, 2
lw $2, 0($2)
TAG448:
lb $4, 0($2)
bne $2, $2, TAG449
sltiu $1, $2, 5
bltz $1, TAG449
TAG449:
sll $2, $1, 3
multu $2, $1
beq $1, $2, TAG450
addiu $3, $1, 15
TAG450:
beq $3, $3, TAG451
divu $3, $3
mflo $4
bltz $3, TAG451
TAG451:
mtlo $4
lui $4, 1
mflo $1
addiu $2, $4, 1
TAG452:
multu $2, $2
sll $0, $0, 0
lui $1, 5
mtlo $2
TAG453:
multu $1, $1
sll $0, $0, 0
subu $2, $1, $1
mthi $2
TAG454:
lw $3, 0($2)
sb $2, 0($2)
mflo $2
and $1, $2, $3
TAG455:
multu $1, $1
bltz $1, TAG456
mthi $1
lui $3, 15
TAG456:
sll $0, $0, 0
mflo $2
andi $1, $2, 12
beq $3, $2, TAG457
TAG457:
lb $3, 0($1)
mfhi $2
bne $3, $2, TAG458
xor $4, $2, $2
TAG458:
mflo $2
sb $2, 0($4)
addiu $1, $2, 8
nor $1, $2, $1
TAG459:
slti $4, $1, 10
bgez $4, TAG460
lb $3, 0($4)
bne $3, $4, TAG460
TAG460:
mfhi $1
lui $1, 13
bne $1, $1, TAG461
mtlo $3
TAG461:
sll $0, $0, 0
addiu $2, $1, 7
addiu $4, $1, 6
beq $1, $1, TAG462
TAG462:
div $4, $4
sll $0, $0, 0
bgtz $4, TAG463
lui $3, 8
TAG463:
mtlo $3
bltz $3, TAG464
sllv $1, $3, $3
sll $0, $0, 0
TAG464:
bgez $1, TAG465
sll $0, $0, 0
srlv $2, $4, $4
sra $3, $2, 3
TAG465:
sll $0, $0, 0
sll $0, $0, 0
xori $2, $3, 14
lui $2, 5
TAG466:
sll $0, $0, 0
bltz $4, TAG467
slti $1, $4, 8
xori $2, $1, 2
TAG467:
bltz $2, TAG468
mult $2, $2
sh $2, 0($2)
sh $2, 0($2)
TAG468:
bgtz $2, TAG469
mtlo $2
sb $2, 0($2)
lh $1, 0($2)
TAG469:
bgtz $1, TAG470
srl $4, $1, 3
sh $1, 0($4)
mult $1, $1
TAG470:
mult $4, $4
bgez $4, TAG471
mult $4, $4
sb $4, 0($4)
TAG471:
sw $4, 0($4)
lui $1, 2
lui $4, 9
beq $1, $1, TAG472
TAG472:
div $4, $4
sll $0, $0, 0
mflo $2
bne $4, $4, TAG473
TAG473:
mult $2, $2
addu $4, $2, $2
or $2, $4, $4
sltiu $3, $2, 7
TAG474:
srav $2, $3, $3
lui $3, 2
bgez $3, TAG475
sll $0, $0, 0
TAG475:
bltz $1, TAG476
sll $0, $0, 0
sll $0, $0, 0
subu $1, $1, $1
TAG476:
addiu $2, $1, 7
multu $2, $1
sh $2, 0($1)
srlv $1, $2, $1
TAG477:
or $4, $1, $1
mflo $2
mthi $4
mthi $4
TAG478:
bgtz $2, TAG479
mtlo $2
mtlo $2
mflo $4
TAG479:
mfhi $4
lb $4, 0($4)
mflo $1
beq $4, $4, TAG480
TAG480:
multu $1, $1
lui $3, 0
bne $1, $1, TAG481
lui $1, 4
TAG481:
mfhi $4
mfhi $2
mult $2, $2
or $1, $1, $4
TAG482:
bltz $1, TAG483
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG483:
mflo $2
mfhi $3
lw $2, 0($2)
mult $2, $3
TAG484:
bgtz $2, TAG485
divu $2, $2
mflo $3
sub $1, $3, $2
TAG485:
bgtz $1, TAG486
srav $3, $1, $1
xori $3, $3, 5
mfhi $3
TAG486:
mflo $3
addiu $3, $3, 2
bne $3, $3, TAG487
lui $4, 6
TAG487:
sll $0, $0, 0
bne $4, $2, TAG488
addu $4, $4, $4
multu $2, $4
TAG488:
srl $4, $4, 15
sllv $4, $4, $4
sll $0, $0, 0
mtlo $4
TAG489:
lui $4, 7
sll $0, $0, 0
lw $3, 0($1)
mthi $4
TAG490:
bgtz $3, TAG491
mtlo $3
bne $3, $3, TAG491
lui $2, 13
TAG491:
sb $2, 0($2)
bne $2, $2, TAG492
divu $2, $2
ori $1, $2, 8
TAG492:
lb $2, 0($1)
bne $1, $1, TAG493
lui $2, 13
divu $1, $1
TAG493:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG494
mtlo $2
TAG494:
slti $1, $2, 15
lui $3, 9
sb $1, 0($1)
xori $1, $2, 15
TAG495:
mthi $1
sll $0, $0, 0
div $2, $1
beq $2, $1, TAG496
TAG496:
xor $1, $2, $2
multu $2, $1
sh $1, 0($1)
andi $1, $1, 15
TAG497:
mfhi $4
mult $4, $1
sb $4, 0($4)
beq $1, $4, TAG498
TAG498:
mflo $1
bltz $4, TAG499
sll $4, $4, 13
multu $1, $4
TAG499:
lui $3, 0
sra $4, $4, 13
xori $3, $3, 9
lhu $3, 0($4)
TAG500:
lui $3, 1
addiu $3, $3, 0
sll $0, $0, 0
blez $3, TAG501
TAG501:
sll $0, $0, 0
sll $0, $0, 0
subu $3, $4, $4
mfhi $4
TAG502:
bne $4, $4, TAG503
mfhi $4
bne $4, $4, TAG503
srlv $4, $4, $4
TAG503:
mult $4, $4
addi $2, $4, 13
mflo $2
mult $2, $4
TAG504:
blez $2, TAG505
slti $1, $2, 10
lbu $1, 0($2)
beq $1, $1, TAG505
TAG505:
nor $3, $1, $1
blez $3, TAG506
lb $4, 0($1)
subu $3, $1, $1
TAG506:
sb $3, 2($3)
blez $3, TAG507
lui $3, 8
mult $3, $3
TAG507:
lui $3, 5
mthi $3
beq $3, $3, TAG508
divu $3, $3
TAG508:
mtlo $3
beq $3, $3, TAG509
srav $2, $3, $3
bgez $2, TAG509
TAG509:
xor $3, $2, $2
srav $3, $2, $3
beq $2, $3, TAG510
lui $2, 0
TAG510:
beq $2, $2, TAG511
or $4, $2, $2
lui $3, 14
div $4, $4
TAG511:
mthi $3
slti $4, $3, 9
bgtz $4, TAG512
lui $1, 5
TAG512:
multu $1, $1
sll $0, $0, 0
mult $3, $3
bgtz $3, TAG513
TAG513:
sll $0, $0, 0
bltz $3, TAG514
sll $4, $3, 5
div $4, $3
TAG514:
ori $1, $4, 13
sll $0, $0, 0
bne $1, $1, TAG515
sll $0, $0, 0
TAG515:
bgtz $2, TAG516
mflo $3
mflo $2
bne $2, $2, TAG516
TAG516:
lui $1, 1
lui $3, 14
xor $1, $1, $2
sh $1, 0($2)
TAG517:
subu $1, $1, $1
lui $1, 2
mfhi $1
sub $4, $1, $1
TAG518:
blez $4, TAG519
mflo $2
ori $1, $4, 7
slt $3, $4, $2
TAG519:
div $3, $3
sll $0, $0, 0
and $2, $3, $3
lui $1, 14
TAG520:
mult $1, $1
sllv $2, $1, $1
mflo $2
lui $4, 12
TAG521:
sll $0, $0, 0
srlv $3, $4, $4
bgtz $3, TAG522
multu $4, $3
TAG522:
sll $0, $0, 0
bltz $3, TAG523
sll $0, $0, 0
bgez $3, TAG523
TAG523:
mfhi $1
bne $1, $2, TAG524
sltiu $2, $2, 15
mtlo $2
TAG524:
sb $2, 0($2)
subu $4, $2, $2
mflo $4
sb $4, 0($4)
TAG525:
mthi $4
mtlo $4
mult $4, $4
sh $4, 0($4)
TAG526:
lui $3, 4
sh $3, 0($4)
multu $4, $4
slti $3, $4, 14
TAG527:
beq $3, $3, TAG528
mult $3, $3
mflo $4
lw $3, 0($4)
TAG528:
sb $3, 0($3)
div $3, $3
lbu $4, 0($3)
lui $4, 10
TAG529:
lui $2, 14
sll $0, $0, 0
divu $4, $4
div $2, $2
TAG530:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG531:
bltz $2, TAG532
sll $0, $0, 0
srlv $1, $2, $2
lui $1, 5
TAG532:
srlv $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG533
TAG533:
sra $2, $4, 14
sh $4, 0($2)
bne $4, $2, TAG534
div $4, $4
TAG534:
mult $2, $2
sb $2, 0($2)
lui $4, 5
lui $4, 9
TAG535:
sll $0, $0, 0
sll $0, $0, 0
sb $4, 0($3)
sb $3, 0($3)
TAG536:
addiu $2, $3, 7
srl $2, $2, 0
sltiu $3, $3, 6
beq $3, $2, TAG537
TAG537:
lb $3, 0($3)
beq $3, $3, TAG538
lui $4, 9
beq $3, $4, TAG538
TAG538:
sll $0, $0, 0
bne $4, $4, TAG539
lui $2, 6
xor $3, $4, $4
TAG539:
bne $3, $3, TAG540
mtlo $3
mult $3, $3
bne $3, $3, TAG540
TAG540:
lh $4, 0($3)
bne $4, $4, TAG541
or $2, $3, $3
sllv $4, $2, $3
TAG541:
blez $4, TAG542
sltu $3, $4, $4
mflo $2
sw $2, 0($2)
TAG542:
slti $4, $2, 0
subu $3, $2, $2
mtlo $3
srl $2, $4, 5
TAG543:
bgez $2, TAG544
lui $2, 5
lui $2, 6
sw $2, 0($2)
TAG544:
srlv $3, $2, $2
ori $4, $2, 1
divu $3, $4
beq $3, $3, TAG545
TAG545:
divu $4, $4
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
TAG546:
mult $4, $4
lui $1, 13
mthi $4
mtlo $4
TAG547:
mfhi $1
xori $4, $1, 0
sll $0, $0, 0
mthi $4
TAG548:
mfhi $3
mfhi $1
andi $4, $1, 4
mult $3, $4
TAG549:
sub $1, $4, $4
mthi $4
sh $1, 0($1)
lui $2, 6
TAG550:
mflo $2
mtlo $2
mthi $2
lui $3, 7
TAG551:
mtlo $3
slti $4, $3, 9
lui $3, 15
lbu $2, 0($4)
TAG552:
beq $2, $2, TAG553
mfhi $4
beq $2, $2, TAG553
lw $3, 0($4)
TAG553:
sll $0, $0, 0
sltu $2, $3, $3
sll $0, $0, 0
lui $4, 15
TAG554:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
multu $4, $1
TAG555:
mthi $1
beq $1, $1, TAG556
lui $4, 13
bne $1, $1, TAG556
TAG556:
sll $0, $0, 0
bgez $4, TAG557
sll $0, $0, 0
mflo $1
TAG557:
lhu $1, 0($1)
mfhi $4
mtlo $4
mtlo $1
TAG558:
ori $2, $4, 13
bne $4, $2, TAG559
mult $2, $4
mult $2, $4
TAG559:
multu $2, $2
lui $2, 13
lui $2, 0
mtlo $2
TAG560:
beq $2, $2, TAG561
lw $3, 0($2)
lw $4, 0($3)
slt $1, $2, $3
TAG561:
lui $1, 14
lui $4, 0
bne $4, $1, TAG562
divu $4, $1
TAG562:
bgez $4, TAG563
mthi $4
sw $4, 0($4)
mfhi $4
TAG563:
lb $3, 0($4)
lui $2, 8
srav $2, $4, $3
lui $4, 15
TAG564:
mthi $4
mflo $3
ori $4, $3, 12
mthi $3
TAG565:
bne $4, $4, TAG566
lui $3, 13
multu $4, $4
sll $0, $0, 0
TAG566:
sll $0, $0, 0
mflo $4
and $3, $2, $3
bltz $2, TAG567
TAG567:
or $4, $3, $3
bgtz $3, TAG568
srlv $2, $3, $3
sll $1, $3, 1
TAG568:
sb $1, 0($1)
mflo $1
xor $4, $1, $1
bgtz $4, TAG569
TAG569:
lbu $2, 0($4)
lui $3, 4
mult $2, $4
sh $2, 0($2)
TAG570:
sll $0, $0, 0
bgez $3, TAG571
addiu $3, $2, 5
mthi $2
TAG571:
srl $1, $3, 9
srlv $2, $1, $3
mfhi $2
sb $2, 0($2)
TAG572:
srav $1, $2, $2
lb $3, 0($1)
slt $3, $1, $3
sw $1, 0($3)
TAG573:
sw $3, 0($3)
mtlo $3
sb $3, 0($3)
mfhi $2
TAG574:
sw $2, 0($2)
bne $2, $2, TAG575
lui $3, 8
sll $2, $2, 9
TAG575:
lui $4, 5
srl $1, $4, 9
blez $4, TAG576
multu $2, $2
TAG576:
bgez $1, TAG577
xor $2, $1, $1
lw $3, 0($2)
mult $3, $3
TAG577:
blez $3, TAG578
mfhi $3
srav $3, $3, $3
mult $3, $3
TAG578:
xori $4, $3, 12
sb $4, 0($4)
sw $3, 0($3)
mflo $4
TAG579:
lhu $1, 0($4)
beq $1, $1, TAG580
mult $4, $4
sra $1, $4, 4
TAG580:
bne $1, $1, TAG581
and $1, $1, $1
sltiu $2, $1, 2
lui $2, 6
TAG581:
sll $0, $0, 0
sll $0, $0, 0
nor $1, $2, $2
bgez $2, TAG582
TAG582:
multu $1, $1
bgtz $1, TAG583
sll $0, $0, 0
mflo $3
TAG583:
lui $2, 6
subu $4, $2, $2
or $4, $2, $3
srav $3, $4, $4
TAG584:
div $3, $3
mfhi $3
mtlo $3
mthi $3
TAG585:
mfhi $2
mthi $3
lui $3, 8
sll $0, $0, 0
TAG586:
lui $4, 0
mflo $3
bgez $4, TAG587
mflo $3
TAG587:
lui $2, 10
blez $2, TAG588
srlv $1, $3, $2
addu $1, $1, $1
TAG588:
blez $1, TAG589
mfhi $2
mthi $1
addu $2, $2, $1
TAG589:
mtlo $2
lui $4, 6
subu $3, $4, $4
mthi $4
TAG590:
beq $3, $3, TAG591
lui $1, 9
lh $4, 0($1)
divu $4, $1
TAG591:
bltz $4, TAG592
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG592:
mflo $1
slti $4, $1, 13
lui $1, 10
sll $0, $0, 0
TAG593:
bne $1, $1, TAG594
mfhi $2
bltz $1, TAG594
lui $2, 4
TAG594:
beq $2, $2, TAG595
multu $2, $2
lb $1, 0($2)
srav $3, $2, $1
TAG595:
bgez $3, TAG596
lbu $2, 0($3)
lui $2, 1
mthi $2
TAG596:
mult $2, $2
lui $4, 12
sh $4, 0($2)
lb $3, 0($2)
TAG597:
bltz $3, TAG598
mthi $3
sllv $1, $3, $3
beq $1, $3, TAG598
TAG598:
mtlo $1
mfhi $2
lw $4, 0($1)
xori $3, $4, 7
TAG599:
lbu $3, 0($3)
bne $3, $3, TAG600
mfhi $2
lui $3, 3
TAG600:
mfhi $4
mult $4, $4
srl $4, $4, 13
mthi $4
TAG601:
or $1, $4, $4
multu $1, $1
lw $2, 0($4)
mtlo $1
TAG602:
lui $3, 3
multu $2, $2
sll $0, $0, 0
mthi $2
TAG603:
ori $4, $4, 3
addu $2, $4, $4
mthi $2
lui $2, 11
TAG604:
multu $2, $2
mfhi $2
divu $2, $2
mfhi $3
TAG605:
lui $1, 3
mfhi $3
lh $3, 0($3)
addu $1, $3, $1
TAG606:
mfhi $2
multu $2, $2
div $1, $1
sw $1, 0($2)
TAG607:
multu $2, $2
mthi $2
lui $4, 1
mult $2, $2
TAG608:
mtlo $4
sll $0, $0, 0
slt $4, $4, $4
mthi $4
TAG609:
sb $4, 0($4)
mult $4, $4
blez $4, TAG610
lbu $1, 0($4)
TAG610:
beq $1, $1, TAG611
lw $3, 0($1)
mthi $3
sh $1, 0($3)
TAG611:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG612:
lh $3, 0($2)
multu $2, $3
mthi $3
bgtz $3, TAG613
TAG613:
mthi $3
multu $3, $3
bltz $3, TAG614
lhu $1, 0($3)
TAG614:
add $3, $1, $1
bgez $3, TAG615
lui $1, 3
bltz $1, TAG615
TAG615:
sra $2, $1, 7
addiu $3, $1, 6
bltz $1, TAG616
subu $4, $2, $2
TAG616:
mfhi $2
xor $4, $4, $4
lui $2, 6
multu $2, $2
TAG617:
mthi $2
mult $2, $2
ori $4, $2, 9
sll $0, $0, 0
TAG618:
mtlo $3
mflo $2
sll $0, $0, 0
sll $0, $0, 0
TAG619:
lui $1, 2
blez $1, TAG620
xori $3, $1, 10
divu $3, $1
TAG620:
srl $4, $3, 4
srl $1, $3, 8
multu $1, $1
lhu $3, -8192($4)
TAG621:
lhu $2, 0($3)
lw $4, 0($2)
srlv $4, $3, $2
mfhi $3
TAG622:
lui $1, 8
mult $3, $3
srlv $2, $3, $1
lbu $2, 0($2)
TAG623:
lui $3, 7
sll $0, $0, 0
mthi $2
lui $2, 2
TAG624:
mthi $2
blez $2, TAG625
divu $2, $2
sll $0, $0, 0
TAG625:
ori $1, $2, 9
xor $2, $2, $2
mflo $1
mflo $3
TAG626:
addiu $4, $3, 4
bgez $4, TAG627
mthi $4
div $3, $4
TAG627:
bgez $4, TAG628
andi $1, $4, 5
sll $1, $4, 3
mult $1, $1
TAG628:
mthi $1
lui $1, 13
sll $0, $0, 0
sb $1, 0($3)
TAG629:
bgtz $3, TAG630
andi $1, $3, 14
bltz $1, TAG630
lbu $2, 0($1)
TAG630:
bltz $2, TAG631
multu $2, $2
xor $4, $2, $2
mfhi $4
TAG631:
srl $2, $4, 15
bne $2, $2, TAG632
sh $2, 0($2)
sb $4, 0($2)
TAG632:
beq $2, $2, TAG633
lui $3, 12
lbu $4, 0($3)
ori $3, $4, 10
TAG633:
lui $3, 9
beq $3, $3, TAG634
sll $0, $0, 0
mthi $3
TAG634:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG635:
srav $2, $3, $3
mult $2, $3
bgtz $3, TAG636
mthi $2
TAG636:
mtlo $2
lui $4, 15
bne $2, $2, TAG637
mfhi $3
TAG637:
mflo $1
beq $1, $1, TAG638
sll $0, $0, 0
sw $3, 0($1)
TAG638:
mflo $2
beq $1, $2, TAG639
lui $1, 7
sh $1, 0($1)
TAG639:
mfhi $3
beq $3, $3, TAG640
slti $2, $1, 3
mfhi $4
TAG640:
mult $4, $4
beq $4, $4, TAG641
sll $0, $0, 0
mflo $1
TAG641:
mfhi $4
mtlo $1
sll $0, $0, 0
mfhi $4
TAG642:
slt $4, $4, $4
sb $4, 0($4)
mflo $4
bltz $4, TAG643
TAG643:
or $3, $4, $4
divu $3, $3
mult $4, $3
lui $4, 2
TAG644:
bgez $4, TAG645
mflo $4
mfhi $3
divu $4, $3
TAG645:
sra $1, $3, 3
beq $3, $1, TAG646
mfhi $4
lbu $1, 0($4)
TAG646:
sltiu $4, $1, 15
blez $1, TAG647
sb $4, 0($1)
lb $3, 0($1)
TAG647:
mflo $4
bltz $3, TAG648
lui $3, 0
lw $1, 0($4)
TAG648:
beq $1, $1, TAG649
mfhi $1
mflo $4
mthi $1
TAG649:
mtlo $4
addiu $3, $4, 5
bgtz $4, TAG650
mfhi $1
TAG650:
blez $1, TAG651
mthi $1
mtlo $1
lui $2, 6
TAG651:
mthi $2
divu $2, $2
sll $0, $0, 0
lui $3, 15
TAG652:
xori $1, $3, 3
lui $3, 13
sll $0, $0, 0
mtlo $3
TAG653:
multu $1, $1
sll $3, $1, 3
subu $4, $1, $1
slt $2, $4, $3
TAG654:
bgtz $2, TAG655
addu $2, $2, $2
bne $2, $2, TAG655
sb $2, 0($2)
TAG655:
ori $1, $2, 7
sh $2, 0($2)
subu $1, $2, $2
lui $2, 12
TAG656:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG657
sll $3, $2, 10
TAG657:
beq $3, $3, TAG658
sltiu $1, $3, 1
lui $1, 4
and $2, $3, $1
TAG658:
slti $4, $2, 3
blez $4, TAG659
lui $2, 8
sllv $1, $4, $2
TAG659:
sh $1, 0($1)
subu $3, $1, $1
srlv $1, $1, $1
bne $1, $1, TAG660
TAG660:
sltu $1, $1, $1
blez $1, TAG661
multu $1, $1
lui $3, 14
TAG661:
bltz $3, TAG662
lui $2, 8
div $3, $2
mflo $1
TAG662:
blez $1, TAG663
lui $3, 13
lw $3, 0($1)
mthi $3
TAG663:
lui $4, 4
mflo $2
bgez $4, TAG664
mflo $2
TAG664:
mflo $2
sb $2, 0($2)
lb $1, 0($2)
mult $1, $1
TAG665:
multu $1, $1
sh $1, 0($1)
mult $1, $1
lui $2, 8
TAG666:
srlv $3, $2, $2
sll $0, $0, 0
mfhi $3
lb $3, 0($3)
TAG667:
mfhi $2
sb $2, 0($3)
sw $3, 0($3)
mflo $2
TAG668:
lb $1, 0($2)
mfhi $4
beq $2, $1, TAG669
lui $2, 6
TAG669:
sll $0, $0, 0
mflo $1
sw $2, 0($1)
mult $1, $2
TAG670:
lui $3, 8
mtlo $3
lui $4, 3
blez $4, TAG671
TAG671:
srav $1, $4, $4
mflo $3
lui $3, 15
lui $2, 13
TAG672:
divu $2, $2
lui $1, 1
sll $0, $0, 0
mthi $3
TAG673:
or $4, $3, $3
bltz $4, TAG674
mfhi $1
sll $0, $0, 0
TAG674:
slt $4, $1, $1
bltz $1, TAG675
sb $1, 0($4)
mtlo $1
TAG675:
multu $4, $4
lhu $2, 0($4)
subu $2, $4, $4
lw $1, 0($2)
TAG676:
xor $4, $1, $1
bne $1, $1, TAG677
ori $1, $1, 3
sll $0, $0, 0
TAG677:
mtlo $3
bgez $3, TAG678
mtlo $3
mfhi $2
TAG678:
bne $2, $2, TAG679
nor $1, $2, $2
lb $2, 0($2)
lhu $1, 0($2)
TAG679:
lbu $2, 0($1)
bne $2, $1, TAG680
andi $1, $2, 9
mflo $4
TAG680:
sll $0, $0, 0
beq $4, $4, TAG681
mflo $3
bltz $1, TAG681
TAG681:
mthi $3
bltz $3, TAG682
sll $0, $0, 0
lui $3, 1
TAG682:
xor $2, $3, $3
sltu $1, $2, $3
mtlo $2
bne $2, $3, TAG683
TAG683:
sll $4, $1, 15
bne $1, $4, TAG684
mthi $1
sltiu $4, $4, 9
TAG684:
bgtz $4, TAG685
mthi $4
lui $1, 10
divu $1, $1
TAG685:
lbu $4, 0($1)
sh $1, 0($4)
mflo $3
mthi $4
TAG686:
beq $3, $3, TAG687
sltiu $2, $3, 5
lui $1, 11
div $2, $1
TAG687:
sb $1, 0($1)
lui $1, 3
beq $1, $1, TAG688
srav $3, $1, $1
TAG688:
blez $3, TAG689
andi $1, $3, 1
lw $2, 0($1)
mtlo $1
TAG689:
divu $2, $2
mtlo $2
mthi $2
sll $0, $0, 0
TAG690:
bgtz $2, TAG691
multu $2, $2
mflo $1
mthi $1
TAG691:
mult $1, $1
sw $1, 0($1)
lui $2, 14
beq $2, $1, TAG692
TAG692:
mfhi $2
sllv $2, $2, $2
mflo $2
sb $2, 0($2)
TAG693:
bgez $2, TAG694
sltu $2, $2, $2
bne $2, $2, TAG694
mult $2, $2
TAG694:
srlv $3, $2, $2
beq $3, $2, TAG695
sltu $1, $2, $2
sltiu $3, $1, 10
TAG695:
xori $3, $3, 3
lb $2, 0($3)
mult $2, $3
lb $3, 0($2)
TAG696:
mthi $3
mflo $2
blez $3, TAG697
lb $1, 0($2)
TAG697:
mult $1, $1
beq $1, $1, TAG698
mthi $1
lui $3, 12
TAG698:
lb $2, 0($3)
bne $3, $2, TAG699
multu $2, $2
sh $3, 0($3)
TAG699:
beq $2, $2, TAG700
mfhi $4
lw $2, 0($2)
or $2, $2, $2
TAG700:
sb $2, 0($2)
bgez $2, TAG701
lw $1, 0($2)
lui $2, 5
TAG701:
lui $1, 5
slt $3, $1, $1
sll $0, $0, 0
sll $1, $1, 4
TAG702:
beq $1, $1, TAG703
mfhi $3
sll $1, $1, 0
lui $2, 6
TAG703:
mtlo $2
mfhi $2
mtlo $2
lui $3, 12
TAG704:
mult $3, $3
lui $3, 7
mthi $3
subu $1, $3, $3
TAG705:
mtlo $1
mtlo $1
addiu $2, $1, 8
bgez $2, TAG706
TAG706:
lw $1, 0($2)
sh $2, 0($2)
mthi $2
slt $2, $1, $1
TAG707:
blez $2, TAG708
sb $2, 0($2)
bne $2, $2, TAG708
mfhi $2
TAG708:
blez $2, TAG709
mfhi $1
ori $4, $1, 8
slti $4, $4, 2
TAG709:
bgez $4, TAG710
sltu $2, $4, $4
srlv $3, $4, $4
bne $4, $2, TAG710
TAG710:
sll $0, $0, 0
lui $2, 15
mfhi $1
mthi $2
TAG711:
lb $3, 0($1)
mfhi $4
bltz $4, TAG712
or $4, $3, $3
TAG712:
sh $4, 0($4)
lbu $1, 0($4)
mthi $1
addiu $3, $1, 9
TAG713:
lui $2, 0
lb $3, 0($3)
ori $1, $3, 15
lui $2, 11
TAG714:
blez $2, TAG715
mtlo $2
sll $0, $0, 0
mflo $4
TAG715:
sll $0, $0, 0
lui $3, 14
mthi $3
lui $3, 5
TAG716:
mfhi $1
xori $4, $1, 2
sll $0, $0, 0
sll $0, $0, 0
TAG717:
beq $1, $1, TAG718
sll $0, $0, 0
sb $1, 0($1)
lui $1, 3
TAG718:
mflo $1
div $1, $1
bgez $1, TAG719
div $1, $1
TAG719:
multu $1, $1
slt $2, $1, $1
beq $2, $1, TAG720
lui $3, 11
TAG720:
sll $0, $0, 0
sll $0, $0, 0
srlv $3, $2, $2
multu $3, $3
TAG721:
addi $1, $3, 15
mthi $1
mtlo $3
sltiu $1, $1, 14
TAG722:
blez $1, TAG723
lui $4, 3
bgez $4, TAG723
mtlo $1
TAG723:
sll $0, $0, 0
bgez $4, TAG724
sll $0, $0, 0
div $4, $4
TAG724:
mult $4, $4
mflo $3
sb $3, 0($3)
subu $4, $4, $4
TAG725:
xor $4, $4, $4
addu $1, $4, $4
mtlo $4
lui $2, 14
TAG726:
addiu $3, $2, 2
lui $3, 11
mult $3, $2
sll $0, $0, 0
TAG727:
sll $0, $0, 0
lui $3, 10
mflo $2
multu $3, $2
TAG728:
sltu $1, $2, $2
bne $1, $1, TAG729
add $1, $1, $1
bgtz $1, TAG729
TAG729:
mtlo $1
mtlo $1
bltz $1, TAG730
lui $3, 6
TAG730:
mthi $3
beq $3, $3, TAG731
mult $3, $3
lw $2, 0($3)
TAG731:
multu $2, $2
bne $2, $2, TAG732
sw $2, 0($2)
mflo $2
TAG732:
bne $2, $2, TAG733
sw $2, 0($2)
sw $2, 0($2)
mult $2, $2
TAG733:
sll $1, $2, 3
sh $2, 0($2)
mflo $4
mthi $2
TAG734:
mflo $3
srlv $2, $3, $3
mflo $2
beq $2, $2, TAG735
TAG735:
lh $4, 0($2)
beq $2, $4, TAG736
sw $2, 0($4)
divu $4, $2
TAG736:
lbu $3, 0($4)
mtlo $4
sub $4, $4, $3
bne $3, $3, TAG737
TAG737:
mthi $4
lbu $3, 0($4)
multu $4, $4
ori $1, $4, 15
TAG738:
mtlo $1
addiu $2, $1, 8
divu $1, $1
mfhi $1
TAG739:
mtlo $1
lui $2, 0
mtlo $1
mult $2, $1
TAG740:
bgez $2, TAG741
mflo $2
mthi $2
sh $2, 0($2)
TAG741:
mfhi $1
bgez $1, TAG742
sw $1, 0($1)
lui $1, 7
TAG742:
mtlo $1
sh $1, 0($1)
blez $1, TAG743
mfhi $3
TAG743:
lui $1, 7
divu $1, $1
sra $2, $3, 12
slt $1, $2, $2
TAG744:
sw $1, 0($1)
bne $1, $1, TAG745
addi $3, $1, 2
div $3, $3
TAG745:
bne $3, $3, TAG746
mult $3, $3
lhu $4, 0($3)
lui $2, 13
TAG746:
bgez $2, TAG747
sll $0, $0, 0
srlv $3, $2, $2
sh $2, 0($2)
TAG747:
lbu $4, 0($3)
xori $3, $4, 10
mthi $3
lui $1, 6
TAG748:
sra $3, $1, 11
lui $3, 9
sll $0, $0, 0
mtlo $3
TAG749:
sll $0, $0, 0
bgez $3, TAG750
lui $4, 12
bgez $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop