ori $1, $0, 0
ori $2, $0, 7
ori $3, $0, 12
ori $4, $0, 14
sw $2, 0($0)
sw $2, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $1, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $3, 124($0)
sb $2, 0($2)
lbu $2, 0($2)
mtlo $2
lui $3, 1
TAG1:
mfhi $4
sll $0, $0, 0
sltu $4, $3, $4
mthi $3
TAG2:
add $2, $4, $4
lh $1, 0($4)
mthi $2
beq $4, $1, TAG3
TAG3:
srl $1, $1, 5
blez $1, TAG4
mfhi $4
mthi $1
TAG4:
bgtz $4, TAG5
sw $4, 0($4)
sb $4, 0($4)
lui $3, 7
TAG5:
multu $3, $3
sll $0, $0, 0
mflo $1
ori $3, $2, 4
TAG6:
srlv $3, $3, $3
lui $3, 1
lui $1, 14
mult $3, $3
TAG7:
sll $0, $0, 0
lui $2, 5
bltz $2, TAG8
sll $0, $0, 0
TAG8:
sll $0, $0, 0
mthi $2
mtlo $2
bltz $4, TAG9
TAG9:
lw $4, 0($4)
slt $2, $4, $4
mflo $3
sll $0, $0, 0
TAG10:
ori $3, $3, 3
andi $3, $3, 5
multu $3, $3
lui $2, 8
TAG11:
mtlo $2
bne $2, $2, TAG12
mtlo $2
sltiu $4, $2, 13
TAG12:
sra $2, $4, 7
sh $2, 0($4)
sw $2, 0($4)
xori $1, $4, 1
TAG13:
blez $1, TAG14
mthi $1
blez $1, TAG14
sra $1, $1, 11
TAG14:
lui $4, 8
lh $4, 0($1)
mflo $1
mflo $3
TAG15:
bltz $3, TAG16
div $3, $3
bgez $3, TAG16
lui $3, 5
TAG16:
slti $1, $3, 13
lbu $2, 0($1)
bne $1, $1, TAG17
mtlo $3
TAG17:
lui $2, 0
sb $2, 0($2)
multu $2, $2
bne $2, $2, TAG18
TAG18:
sltiu $2, $2, 4
mthi $2
lbu $2, 0($2)
addiu $4, $2, 0
TAG19:
bgtz $4, TAG20
mult $4, $4
multu $4, $4
sh $4, 0($4)
TAG20:
mflo $1
mthi $4
mult $4, $4
bltz $1, TAG21
TAG21:
lui $3, 9
lui $4, 14
mult $1, $3
sra $3, $4, 3
TAG22:
xori $4, $3, 7
bgtz $3, TAG23
sll $0, $0, 0
lui $3, 3
TAG23:
mflo $4
addu $1, $3, $3
beq $3, $3, TAG24
lui $4, 12
TAG24:
sll $0, $0, 0
mthi $3
bgtz $3, TAG25
mtlo $3
TAG25:
div $3, $3
beq $3, $3, TAG26
addiu $1, $3, 2
sh $1, 0($3)
TAG26:
mtlo $1
bgtz $1, TAG27
sll $0, $0, 0
mtlo $1
TAG27:
sll $0, $0, 0
mult $1, $1
bltz $1, TAG28
sll $0, $0, 0
TAG28:
nor $1, $1, $1
multu $1, $1
bltz $1, TAG29
mflo $1
TAG29:
div $1, $1
sll $0, $0, 0
beq $1, $1, TAG30
mtlo $1
TAG30:
sll $0, $0, 0
or $2, $1, $1
sra $2, $2, 11
divu $1, $1
TAG31:
addiu $1, $2, 12
blez $1, TAG32
lui $3, 2
sll $0, $0, 0
TAG32:
mfhi $3
mfhi $1
multu $3, $3
mfhi $2
TAG33:
bgtz $2, TAG34
nor $4, $2, $2
bne $4, $4, TAG34
sltu $4, $2, $2
TAG34:
mtlo $4
multu $4, $4
ori $2, $4, 10
mtlo $2
TAG35:
lui $3, 3
bltz $3, TAG36
ori $4, $2, 12
sll $0, $0, 0
TAG36:
div $2, $2
divu $2, $2
lui $4, 13
sll $0, $0, 0
TAG37:
lui $3, 9
beq $1, $3, TAG38
mthi $3
and $2, $1, $1
TAG38:
mfhi $4
sh $2, 0($2)
mtlo $2
lw $4, 0($2)
TAG39:
sub $2, $4, $4
srlv $2, $4, $4
bgtz $2, TAG40
mult $2, $2
TAG40:
multu $2, $2
beq $2, $2, TAG41
sub $2, $2, $2
mthi $2
TAG41:
lb $4, 0($2)
sh $4, 0($4)
lw $1, 0($2)
sllv $4, $2, $1
TAG42:
addu $2, $4, $4
sw $2, 0($4)
bltz $4, TAG43
sra $2, $2, 1
TAG43:
mfhi $2
sh $2, 0($2)
multu $2, $2
lb $4, 0($2)
TAG44:
lw $4, 0($4)
beq $4, $4, TAG45
slti $3, $4, 0
bgez $4, TAG45
TAG45:
andi $2, $3, 3
bltz $3, TAG46
lui $3, 11
bgez $3, TAG46
TAG46:
mfhi $4
lhu $4, 0($4)
lh $3, 0($4)
mtlo $4
TAG47:
mflo $2
mthi $2
multu $2, $3
multu $2, $3
TAG48:
mfhi $2
sh $2, 0($2)
sltu $4, $2, $2
multu $4, $2
TAG49:
srl $3, $4, 4
mult $4, $3
bltz $3, TAG50
subu $2, $3, $3
TAG50:
beq $2, $2, TAG51
lui $4, 4
sb $4, 0($4)
mfhi $4
TAG51:
mflo $1
beq $1, $4, TAG52
mflo $2
bne $4, $4, TAG52
TAG52:
sw $2, 0($2)
mthi $2
mflo $3
sll $3, $2, 2
TAG53:
mult $3, $3
beq $3, $3, TAG54
andi $2, $3, 3
xori $4, $3, 4
TAG54:
bgez $4, TAG55
mtlo $4
addiu $3, $4, 15
blez $3, TAG55
TAG55:
sb $3, 0($3)
mfhi $4
mtlo $3
sh $4, 0($4)
TAG56:
bne $4, $4, TAG57
lb $3, 0($4)
ori $2, $4, 3
sltu $3, $4, $3
TAG57:
lui $3, 5
mtlo $3
bne $3, $3, TAG58
div $3, $3
TAG58:
mtlo $3
sltiu $1, $3, 9
lh $2, 0($1)
addu $4, $3, $1
TAG59:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG60
sra $3, $4, 4
TAG60:
mflo $3
bne $3, $3, TAG61
ori $1, $3, 0
sll $0, $0, 0
TAG61:
div $4, $4
mtlo $4
sll $0, $0, 0
slt $4, $3, $4
TAG62:
mflo $3
bltz $4, TAG63
or $4, $4, $3
mthi $4
TAG63:
sll $0, $0, 0
lui $4, 11
beq $4, $4, TAG64
lui $3, 11
TAG64:
lui $4, 5
mult $3, $4
sll $0, $0, 0
beq $4, $3, TAG65
TAG65:
mthi $1
mfhi $4
sll $0, $0, 0
beq $4, $4, TAG66
TAG66:
sll $0, $0, 0
bne $4, $4, TAG67
sll $0, $0, 0
bgez $4, TAG67
TAG67:
lui $4, 9
lui $4, 14
bgtz $2, TAG68
sll $0, $0, 0
TAG68:
sltiu $2, $3, 4
multu $3, $2
sll $0, $0, 0
blez $2, TAG69
TAG69:
lui $3, 13
srav $2, $2, $3
bne $2, $2, TAG70
sll $0, $0, 0
TAG70:
beq $2, $2, TAG71
sllv $4, $2, $2
mult $4, $4
lb $3, 0($2)
TAG71:
divu $3, $3
mthi $3
sll $0, $0, 0
mflo $3
TAG72:
nor $1, $3, $3
lui $2, 13
mflo $1
sb $1, 0($1)
TAG73:
multu $1, $1
mtlo $1
mtlo $1
xor $3, $1, $1
TAG74:
lui $2, 0
lw $2, 0($2)
lhu $3, -256($2)
or $1, $2, $3
TAG75:
sll $0, $0, 0
beq $1, $1, TAG76
sh $1, -256($1)
sll $1, $1, 2
TAG76:
sw $1, -256($1)
sb $1, -256($1)
beq $1, $1, TAG77
lui $4, 4
TAG77:
sll $0, $0, 0
sltiu $3, $4, 6
mflo $4
bgez $4, TAG78
TAG78:
mfhi $3
bne $4, $3, TAG79
mflo $1
mfhi $1
TAG79:
sltu $4, $1, $1
sh $4, 0($4)
sltiu $2, $1, 9
sb $1, 0($4)
TAG80:
blez $2, TAG81
ori $1, $2, 12
mfhi $3
lbu $1, 0($1)
TAG81:
lw $3, 0($1)
mfhi $3
bltz $3, TAG82
mfhi $2
TAG82:
mfhi $1
mflo $2
lbu $3, 0($2)
sb $2, 0($2)
TAG83:
lb $4, 0($3)
mfhi $3
multu $3, $3
blez $3, TAG84
TAG84:
mtlo $3
multu $3, $3
lh $2, 0($3)
sw $3, -257($2)
TAG85:
lui $3, 8
addiu $3, $2, 3
srl $1, $2, 10
mflo $4
TAG86:
lui $4, 14
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
TAG87:
sra $2, $3, 2
mult $3, $3
mtlo $3
nor $4, $3, $3
TAG88:
sll $0, $0, 0
lui $2, 15
addu $1, $3, $4
lhu $3, 1($1)
TAG89:
srl $2, $3, 7
lui $3, 14
bne $3, $2, TAG90
mtlo $2
TAG90:
mflo $3
nor $1, $3, $3
mfhi $4
multu $4, $4
TAG91:
lui $2, 12
bne $4, $4, TAG92
mtlo $2
div $4, $2
TAG92:
mthi $2
lui $1, 8
bne $2, $1, TAG93
mfhi $2
TAG93:
srl $4, $2, 7
or $3, $2, $4
divu $4, $3
mtlo $3
TAG94:
sll $0, $0, 0
div $2, $3
mtlo $3
slti $4, $3, 3
TAG95:
mfhi $1
ori $3, $4, 2
sw $4, 0($4)
bne $1, $4, TAG96
TAG96:
mtlo $3
lhu $1, 0($3)
lw $1, 0($1)
multu $3, $1
TAG97:
mflo $4
mflo $4
sll $2, $4, 6
mfhi $4
TAG98:
sltiu $1, $4, 4
mfhi $2
sh $2, 0($4)
multu $4, $4
TAG99:
mult $2, $2
mtlo $2
bltz $2, TAG100
mult $2, $2
TAG100:
beq $2, $2, TAG101
lh $1, 0($2)
mtlo $2
sw $1, 0($1)
TAG101:
srlv $3, $1, $1
bne $1, $3, TAG102
sub $3, $1, $3
mfhi $4
TAG102:
lhu $2, 0($4)
bne $4, $2, TAG103
slt $2, $2, $4
mfhi $4
TAG103:
sra $2, $4, 5
nor $3, $2, $2
lui $3, 11
mtlo $3
TAG104:
sll $0, $0, 0
bltz $1, TAG105
mthi $3
xori $2, $3, 5
TAG105:
mult $2, $2
beq $2, $2, TAG106
sltu $2, $2, $2
bltz $2, TAG106
TAG106:
sb $2, 0($2)
blez $2, TAG107
mfhi $1
lhu $3, 0($1)
TAG107:
blez $3, TAG108
sllv $3, $3, $3
lui $4, 3
sll $0, $0, 0
TAG108:
bgez $4, TAG109
sltiu $4, $4, 14
mfhi $2
beq $2, $4, TAG109
TAG109:
lh $2, 0($2)
multu $2, $2
lb $4, 0($2)
beq $2, $2, TAG110
TAG110:
lui $3, 1
mflo $3
mfhi $4
bne $4, $3, TAG111
TAG111:
mtlo $4
bgez $4, TAG112
mthi $4
mthi $4
TAG112:
multu $4, $4
mult $4, $4
lui $4, 1
sll $0, $0, 0
TAG113:
mflo $2
sll $0, $0, 0
lui $3, 9
lb $1, 0($1)
TAG114:
blez $1, TAG115
mtlo $1
mflo $2
mthi $1
TAG115:
mult $2, $2
lui $2, 14
mfhi $4
bgez $2, TAG116
TAG116:
lui $1, 5
addiu $4, $4, 0
srav $2, $4, $4
lbu $3, 0($2)
TAG117:
sw $3, 0($3)
mtlo $3
beq $3, $3, TAG118
sltiu $1, $3, 7
TAG118:
lb $4, 0($1)
bgez $1, TAG119
lbu $2, 0($1)
mfhi $3
TAG119:
blez $3, TAG120
sh $3, 0($3)
lw $1, 0($3)
sh $3, 0($1)
TAG120:
beq $1, $1, TAG121
sb $1, 0($1)
beq $1, $1, TAG121
sw $1, 0($1)
TAG121:
bne $1, $1, TAG122
lui $3, 8
div $1, $3
lb $1, 0($1)
TAG122:
mtlo $1
mtlo $1
bgtz $1, TAG123
mfhi $1
TAG123:
srav $4, $1, $1
add $2, $4, $1
mthi $4
mfhi $2
TAG124:
bltz $2, TAG125
sw $2, 0($2)
sb $2, 0($2)
add $2, $2, $2
TAG125:
mult $2, $2
lhu $4, 0($2)
mfhi $3
sra $4, $2, 1
TAG126:
bne $4, $4, TAG127
multu $4, $4
bgtz $4, TAG127
sb $4, 0($4)
TAG127:
lui $2, 10
beq $2, $2, TAG128
lbu $1, 0($4)
beq $2, $4, TAG128
TAG128:
subu $3, $1, $1
sb $1, 0($3)
slti $3, $3, 4
mtlo $3
TAG129:
bgtz $3, TAG130
divu $3, $3
xori $4, $3, 9
lui $3, 15
TAG130:
mflo $4
lui $3, 12
lui $1, 3
sll $0, $0, 0
TAG131:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 1
divu $1, $1
TAG132:
mult $1, $1
mfhi $2
slti $3, $1, 7
lb $2, 0($2)
TAG133:
mult $2, $2
lhu $3, 0($2)
lui $3, 13
beq $2, $3, TAG134
TAG134:
mflo $1
mult $3, $1
multu $1, $1
mfhi $4
TAG135:
add $3, $4, $4
beq $4, $4, TAG136
lbu $4, 0($3)
beq $3, $4, TAG136
TAG136:
mfhi $2
beq $4, $2, TAG137
mtlo $2
andi $3, $2, 0
TAG137:
lui $1, 1
lui $2, 5
bne $3, $3, TAG138
divu $3, $2
TAG138:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
sltiu $1, $1, 14
TAG139:
blez $1, TAG140
sb $1, 0($1)
sltiu $4, $1, 12
xor $1, $1, $1
TAG140:
blez $1, TAG141
sb $1, 0($1)
mtlo $1
lbu $2, 0($1)
TAG141:
nor $2, $2, $2
bne $2, $2, TAG142
divu $2, $2
mtlo $2
TAG142:
xori $2, $2, 5
and $2, $2, $2
beq $2, $2, TAG143
mflo $3
TAG143:
sll $0, $0, 0
sw $3, 1($3)
mflo $4
lui $4, 10
TAG144:
lui $2, 11
sll $0, $0, 0
mult $2, $4
lui $3, 10
TAG145:
divu $3, $3
addiu $2, $3, 9
beq $2, $2, TAG146
sll $0, $0, 0
TAG146:
bltz $2, TAG147
mthi $2
mthi $2
lui $4, 2
TAG147:
nor $1, $4, $4
bne $4, $4, TAG148
sll $0, $0, 0
divu $4, $1
TAG148:
multu $2, $2
sll $0, $0, 0
sll $4, $2, 11
lui $4, 11
TAG149:
sll $0, $0, 0
sltiu $4, $4, 14
mtlo $4
mthi $4
TAG150:
xor $4, $4, $4
blez $4, TAG151
mfhi $2
divu $4, $4
TAG151:
lhu $1, 0($2)
sll $1, $1, 9
sub $4, $2, $2
mfhi $1
TAG152:
sh $1, 0($1)
mthi $1
multu $1, $1
lui $2, 13
TAG153:
bgtz $2, TAG154
sll $0, $0, 0
bltz $2, TAG154
lui $1, 9
TAG154:
lui $1, 1
blez $1, TAG155
sll $0, $0, 0
subu $2, $1, $1
TAG155:
blez $2, TAG156
lui $1, 15
mult $2, $2
sb $2, 0($2)
TAG156:
bgtz $1, TAG157
sll $0, $0, 0
mtlo $1
lui $4, 6
TAG157:
bne $4, $4, TAG158
lui $2, 11
addu $2, $2, $4
bgtz $4, TAG158
TAG158:
addiu $3, $2, 12
lui $1, 6
mflo $1
sll $0, $0, 0
TAG159:
addiu $1, $1, 4
mtlo $1
lh $4, 0($1)
mfhi $2
TAG160:
mfhi $1
sllv $4, $1, $2
mflo $4
slti $2, $1, 11
TAG161:
srl $2, $2, 8
bgez $2, TAG162
lhu $2, 0($2)
lui $1, 8
TAG162:
multu $1, $1
sw $1, 0($1)
xori $1, $1, 13
mtlo $1
TAG163:
slt $1, $1, $1
sw $1, 0($1)
blez $1, TAG164
srav $2, $1, $1
TAG164:
mthi $2
multu $2, $2
sll $2, $2, 7
xori $3, $2, 10
TAG165:
subu $4, $3, $3
mfhi $1
addiu $2, $1, 11
addu $3, $2, $3
TAG166:
sb $3, 0($3)
sb $3, 0($3)
slt $4, $3, $3
lh $4, 0($4)
TAG167:
mfhi $3
sw $4, 0($4)
slt $1, $4, $4
bgez $3, TAG168
TAG168:
sll $3, $1, 3
sw $3, 0($1)
blez $1, TAG169
multu $1, $3
TAG169:
mult $3, $3
mthi $3
bne $3, $3, TAG170
lh $2, 0($3)
TAG170:
bne $2, $2, TAG171
multu $2, $2
mflo $4
beq $4, $4, TAG171
TAG171:
lh $2, 0($4)
mthi $4
addiu $4, $4, 14
mthi $4
TAG172:
sh $4, 0($4)
subu $1, $4, $4
multu $4, $1
srav $1, $4, $4
TAG173:
lui $3, 5
mtlo $1
bltz $3, TAG174
mthi $3
TAG174:
divu $3, $3
sll $0, $0, 0
subu $1, $3, $3
lui $3, 15
TAG175:
mfhi $1
subu $1, $3, $1
lui $2, 6
mflo $2
TAG176:
xor $2, $2, $2
mfhi $3
addi $3, $2, 4
bgtz $3, TAG177
TAG177:
lbu $3, 0($3)
slt $1, $3, $3
mfhi $3
lui $1, 4
TAG178:
addu $4, $1, $1
bne $1, $1, TAG179
sll $0, $0, 0
divu $4, $1
TAG179:
lui $2, 14
ori $1, $2, 11
lui $1, 3
mfhi $2
TAG180:
lh $2, 0($2)
mtlo $2
multu $2, $2
beq $2, $2, TAG181
TAG181:
lui $2, 3
lui $1, 7
sltiu $2, $2, 9
sw $2, 0($2)
TAG182:
mflo $2
bgez $2, TAG183
subu $3, $2, $2
mfhi $1
TAG183:
mult $1, $1
bltz $1, TAG184
mult $1, $1
lui $1, 8
TAG184:
mflo $4
lui $3, 14
srl $3, $3, 14
mflo $4
TAG185:
mthi $4
xori $3, $4, 1
mfhi $4
bgez $4, TAG186
TAG186:
srl $2, $4, 10
mfhi $1
sb $1, 0($4)
mthi $4
TAG187:
mthi $1
lb $4, 0($1)
mflo $2
bne $1, $2, TAG188
TAG188:
sw $2, 0($2)
blez $2, TAG189
mult $2, $2
mfhi $4
TAG189:
mthi $4
lhu $4, 0($4)
lh $2, 0($4)
lhu $3, 0($4)
TAG190:
srl $2, $3, 12
beq $2, $2, TAG191
addiu $3, $2, 5
sltiu $2, $3, 14
TAG191:
bltz $2, TAG192
mflo $1
lb $2, 0($1)
lb $4, 0($1)
TAG192:
sltu $3, $4, $4
blez $3, TAG193
lh $3, 0($4)
beq $3, $4, TAG193
TAG193:
mthi $3
bgez $3, TAG194
lw $4, 0($3)
mult $3, $4
TAG194:
and $1, $4, $4
mflo $3
mflo $2
multu $1, $2
TAG195:
bne $2, $2, TAG196
mfhi $1
sll $4, $1, 6
mult $4, $2
TAG196:
multu $4, $4
mfhi $1
lui $4, 5
sll $0, $0, 0
TAG197:
sll $0, $0, 0
lui $3, 10
mthi $4
divu $4, $4
TAG198:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG199
subu $3, $3, $4
TAG199:
bltz $3, TAG200
sltu $3, $3, $3
mthi $3
sw $3, 0($3)
TAG200:
mult $3, $3
lhu $3, 0($3)
mult $3, $3
lui $2, 1
TAG201:
addiu $1, $2, 4
mflo $4
mfhi $4
lui $4, 2
TAG202:
mtlo $4
beq $4, $4, TAG203
sll $0, $0, 0
slt $4, $3, $3
TAG203:
sll $0, $0, 0
sll $0, $0, 0
and $3, $4, $2
mtlo $2
TAG204:
lui $1, 13
srav $2, $1, $1
sll $0, $0, 0
beq $3, $2, TAG205
TAG205:
lui $4, 0
sb $4, 0($4)
sra $2, $1, 2
addiu $4, $1, 11
TAG206:
sll $0, $0, 0
srl $4, $4, 5
beq $4, $4, TAG207
sb $4, -26624($4)
TAG207:
bne $4, $4, TAG208
mthi $4
mtlo $4
lui $1, 13
TAG208:
subu $2, $1, $1
bne $2, $2, TAG209
lui $4, 1
sll $0, $0, 0
TAG209:
sh $2, 0($2)
lui $1, 4
mult $2, $2
div $1, $1
TAG210:
bgez $1, TAG211
and $2, $1, $1
bgtz $2, TAG211
sh $2, 0($2)
TAG211:
beq $2, $2, TAG212
mthi $2
divu $2, $2
blez $2, TAG212
TAG212:
div $2, $2
addiu $1, $2, 6
andi $4, $2, 14
mthi $2
TAG213:
mthi $4
mthi $4
lui $3, 13
multu $3, $3
TAG214:
lui $2, 15
sra $4, $3, 13
div $3, $4
beq $2, $4, TAG215
TAG215:
mflo $1
slti $3, $4, 11
and $4, $3, $1
mflo $2
TAG216:
mtlo $2
multu $2, $2
sw $2, -8192($2)
mflo $3
TAG217:
bne $3, $3, TAG218
mtlo $3
addu $1, $3, $3
sll $0, $0, 0
TAG218:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
sll $0, $0, 0
TAG219:
mtlo $2
div $2, $2
sll $0, $0, 0
bgtz $2, TAG220
TAG220:
subu $4, $2, $2
sw $4, 0($4)
blez $4, TAG221
lh $4, 0($4)
TAG221:
lui $1, 5
lbu $1, 0($4)
bne $1, $1, TAG222
sb $1, 0($1)
TAG222:
lui $1, 1
bne $1, $1, TAG223
mthi $1
bne $1, $1, TAG223
TAG223:
mult $1, $1
mtlo $1
sll $0, $0, 0
sh $1, 0($4)
TAG224:
mfhi $2
sllv $3, $2, $4
mflo $1
lui $4, 6
TAG225:
mfhi $2
lui $2, 15
sll $0, $0, 0
mfhi $4
TAG226:
lui $3, 13
div $4, $4
lui $1, 4
mflo $4
TAG227:
mtlo $4
addiu $3, $4, 6
lbu $3, 0($3)
sb $3, 0($3)
TAG228:
sb $3, 0($3)
srl $3, $3, 0
mthi $3
lbu $2, 0($3)
TAG229:
bgez $2, TAG230
lui $3, 10
mthi $2
lui $4, 6
TAG230:
multu $4, $4
lui $1, 8
lbu $2, 0($4)
sll $0, $0, 0
TAG231:
blez $1, TAG232
lui $1, 15
lui $4, 6
bgtz $1, TAG232
TAG232:
sll $0, $0, 0
multu $4, $4
mtlo $4
addu $1, $4, $4
TAG233:
mthi $1
mfhi $4
sll $0, $0, 0
sltiu $4, $4, 11
TAG234:
mtlo $4
mthi $4
beq $4, $4, TAG235
addu $1, $4, $4
TAG235:
lui $2, 1
slt $2, $2, $2
bltz $2, TAG236
or $1, $2, $2
TAG236:
bne $1, $1, TAG237
lui $1, 13
nor $3, $1, $1
bgtz $1, TAG237
TAG237:
sll $0, $0, 0
sll $0, $0, 0
addu $1, $3, $3
bgez $1, TAG238
TAG238:
sll $0, $0, 0
blez $1, TAG239
mthi $1
beq $1, $1, TAG239
TAG239:
lui $1, 11
mthi $1
sll $0, $0, 0
bltz $1, TAG240
TAG240:
addiu $1, $1, 15
addiu $3, $1, 1
mfhi $3
bgtz $3, TAG241
TAG241:
div $3, $3
mthi $3
bgtz $3, TAG242
sll $0, $0, 0
TAG242:
sll $0, $0, 0
mtlo $3
beq $3, $3, TAG243
andi $1, $3, 10
TAG243:
sw $1, 0($1)
blez $1, TAG244
mtlo $1
div $1, $1
TAG244:
lui $2, 5
multu $2, $1
andi $4, $2, 2
sll $0, $0, 0
TAG245:
sra $3, $1, 8
sh $3, 0($1)
sub $2, $1, $1
mthi $3
TAG246:
mult $2, $2
multu $2, $2
lui $4, 7
nor $2, $2, $2
TAG247:
mfhi $3
lhu $1, 1($2)
sll $4, $1, 12
beq $3, $2, TAG248
TAG248:
or $3, $4, $4
sll $2, $3, 10
slti $3, $2, 0
sw $3, 0($3)
TAG249:
xori $1, $3, 3
sb $1, 0($1)
mflo $4
bltz $1, TAG250
TAG250:
mthi $4
lw $3, 0($4)
mfhi $1
bne $3, $1, TAG251
TAG251:
lb $2, 0($1)
mult $1, $1
lui $3, 13
subu $3, $3, $1
TAG252:
multu $3, $3
mfhi $2
bne $2, $3, TAG253
sw $3, -169($2)
TAG253:
sltu $3, $2, $2
and $1, $3, $3
lui $3, 2
lbu $1, 0($1)
TAG254:
sltiu $3, $1, 14
lui $1, 1
lui $2, 14
mfhi $1
TAG255:
srl $2, $1, 4
mthi $2
srav $1, $2, $1
mfhi $4
TAG256:
and $3, $4, $4
sh $3, 0($4)
blez $3, TAG257
addiu $3, $3, 1
TAG257:
bgtz $3, TAG258
div $3, $3
mflo $1
mflo $3
TAG258:
beq $3, $3, TAG259
subu $4, $3, $3
mflo $3
mthi $3
TAG259:
slti $2, $3, 3
sh $3, 0($2)
bne $2, $3, TAG260
srlv $3, $3, $2
TAG260:
multu $3, $3
lui $1, 6
div $3, $3
lui $3, 15
TAG261:
bne $3, $3, TAG262
sltiu $4, $3, 6
mult $3, $4
sw $3, 0($4)
TAG262:
mfhi $1
srav $3, $4, $4
lbu $1, 0($4)
lw $2, 0($1)
TAG263:
bne $2, $2, TAG264
lui $3, 5
sll $0, $0, 0
div $3, $2
TAG264:
sll $0, $0, 0
mfhi $4
sh $1, 0($1)
sll $0, $0, 0
TAG265:
bgez $3, TAG266
nor $4, $3, $3
sra $3, $3, 1
sltu $2, $3, $3
TAG266:
divu $2, $2
mult $2, $2
mtlo $2
and $4, $2, $2
TAG267:
ori $4, $4, 6
lui $3, 8
bgtz $4, TAG268
ori $4, $4, 2
TAG268:
mflo $3
or $3, $3, $3
mthi $4
mult $3, $3
TAG269:
lui $2, 12
sll $0, $0, 0
beq $3, $3, TAG270
xori $3, $2, 3
TAG270:
lui $1, 3
bne $1, $3, TAG271
sll $4, $3, 13
nor $3, $1, $1
TAG271:
mtlo $3
bne $3, $3, TAG272
sllv $3, $3, $3
mfhi $3
TAG272:
bgez $3, TAG273
lbu $2, -225($3)
divu $2, $3
lb $2, 0($2)
TAG273:
and $2, $2, $2
bne $2, $2, TAG274
lw $1, 0($2)
bne $1, $2, TAG274
TAG274:
lui $3, 12
div $1, $1
subu $4, $3, $3
andi $3, $4, 13
TAG275:
mthi $3
multu $3, $3
lui $4, 8
sll $0, $0, 0
TAG276:
bne $4, $4, TAG277
or $2, $4, $4
addiu $4, $4, 1
sll $0, $0, 0
TAG277:
div $2, $2
sll $0, $0, 0
bgez $2, TAG278
mult $2, $3
TAG278:
addu $2, $3, $3
sra $3, $2, 10
mflo $4
xori $1, $3, 2
TAG279:
sb $1, 0($1)
sb $1, 0($1)
lui $3, 9
mflo $1
TAG280:
multu $1, $1
mthi $1
beq $1, $1, TAG281
mtlo $1
TAG281:
srl $2, $1, 4
lui $2, 4
slti $1, $2, 0
addiu $4, $2, 15
TAG282:
mult $4, $4
multu $4, $4
divu $4, $4
srl $1, $4, 14
TAG283:
andi $4, $1, 13
lui $2, 2
mthi $2
slt $3, $2, $4
TAG284:
mthi $3
add $1, $3, $3
srl $4, $1, 12
lh $4, 0($4)
TAG285:
mthi $4
srl $2, $4, 3
mult $4, $4
lh $1, 0($4)
TAG286:
multu $1, $1
lui $1, 9
bgez $1, TAG287
mthi $1
TAG287:
sll $0, $0, 0
addiu $3, $1, 3
addiu $4, $1, 5
lui $1, 7
TAG288:
bne $1, $1, TAG289
divu $1, $1
mflo $3
bne $3, $3, TAG289
TAG289:
sb $3, 0($3)
mflo $1
bgtz $1, TAG290
div $3, $3
TAG290:
lui $4, 1
mflo $2
sll $4, $4, 15
sllv $3, $1, $2
TAG291:
addu $2, $3, $3
mfhi $1
bgez $3, TAG292
mtlo $3
TAG292:
mthi $1
or $3, $1, $1
xori $1, $1, 0
lui $2, 12
TAG293:
bltz $2, TAG294
mflo $4
div $4, $4
divu $4, $4
TAG294:
addiu $1, $4, 15
bgtz $4, TAG295
lui $1, 14
lw $4, 0($1)
TAG295:
ori $4, $4, 3
bgtz $4, TAG296
sltu $2, $4, $4
sb $2, 0($4)
TAG296:
bgtz $2, TAG297
mthi $2
bne $2, $2, TAG297
mtlo $2
TAG297:
bltz $2, TAG298
mult $2, $2
mult $2, $2
mthi $2
TAG298:
bltz $2, TAG299
mult $2, $2
beq $2, $2, TAG299
mflo $1
TAG299:
lui $3, 0
lhu $2, 0($1)
mfhi $3
mfhi $4
TAG300:
lui $3, 6
bne $3, $3, TAG301
mthi $3
lbu $3, 0($4)
TAG301:
bgtz $3, TAG302
sw $3, 0($3)
bne $3, $3, TAG302
sh $3, 0($3)
TAG302:
lh $4, 0($3)
multu $3, $3
lui $2, 15
multu $4, $4
TAG303:
sll $0, $0, 0
multu $2, $2
lui $1, 15
mflo $4
TAG304:
sb $4, 0($4)
sw $4, 0($4)
addiu $2, $4, 6
sw $2, 0($4)
TAG305:
bgtz $2, TAG306
mthi $2
sh $2, 0($2)
mfhi $1
TAG306:
slti $2, $1, 2
bltz $1, TAG307
addu $4, $2, $2
addiu $3, $4, 12
TAG307:
sh $3, 0($3)
slt $4, $3, $3
lh $3, 0($3)
sh $4, 0($3)
TAG308:
mflo $3
mult $3, $3
mtlo $3
lui $2, 2
TAG309:
mfhi $2
sub $4, $2, $2
blez $2, TAG310
lui $2, 9
TAG310:
bne $2, $2, TAG311
divu $2, $2
beq $2, $2, TAG311
ori $1, $2, 7
TAG311:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG312
addu $2, $1, $1
TAG312:
blez $2, TAG313
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG313:
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG314
TAG314:
sll $0, $0, 0
bltz $3, TAG315
sw $3, 0($3)
addiu $3, $3, 0
TAG315:
blez $3, TAG316
lbu $4, 0($3)
bne $3, $4, TAG316
lui $1, 11
TAG316:
bne $1, $1, TAG317
sll $0, $0, 0
mthi $1
sll $4, $1, 14
TAG317:
bne $4, $4, TAG318
sll $0, $0, 0
mtlo $4
bgtz $4, TAG318
TAG318:
mflo $1
mflo $4
lui $1, 11
bgez $4, TAG319
TAG319:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
slt $3, $4, $4
TAG320:
bgtz $3, TAG321
sw $3, 0($3)
lui $1, 1
sltu $4, $1, $3
TAG321:
slt $4, $4, $4
lui $2, 12
bne $2, $2, TAG322
sll $0, $0, 0
TAG322:
mflo $2
mfhi $3
lui $1, 2
blez $2, TAG323
TAG323:
mult $1, $1
div $1, $1
bne $1, $1, TAG324
lui $3, 11
TAG324:
bgez $3, TAG325
andi $3, $3, 7
mthi $3
bgez $3, TAG325
TAG325:
sltiu $3, $3, 12
bltz $3, TAG326
lui $1, 12
andi $2, $3, 14
TAG326:
mult $2, $2
sra $2, $2, 0
bne $2, $2, TAG327
lui $3, 7
TAG327:
xori $2, $3, 9
sll $0, $0, 0
mthi $3
multu $3, $3
TAG328:
sll $0, $0, 0
bne $3, $3, TAG329
sll $0, $0, 0
subu $4, $3, $3
TAG329:
beq $4, $4, TAG330
sra $2, $4, 4
srlv $1, $2, $4
lb $1, 0($2)
TAG330:
subu $2, $1, $1
lhu $2, 0($2)
lhu $4, 0($2)
mthi $2
TAG331:
blez $4, TAG332
slti $2, $4, 15
mfhi $4
bltz $4, TAG332
TAG332:
mult $4, $4
mflo $1
beq $1, $1, TAG333
lh $4, 0($1)
TAG333:
subu $2, $4, $4
multu $4, $2
lui $4, 11
sll $0, $0, 0
TAG334:
mfhi $2
bgtz $1, TAG335
mthi $2
bltz $2, TAG335
TAG335:
mult $2, $2
lui $4, 11
mfhi $1
multu $2, $2
TAG336:
mult $1, $1
addiu $1, $1, 7
mflo $3
sw $1, 0($3)
TAG337:
sll $4, $3, 3
sb $3, 0($3)
xor $4, $4, $4
lhu $3, 0($3)
TAG338:
bne $3, $3, TAG339
lui $3, 5
sra $4, $3, 8
sll $0, $0, 0
TAG339:
divu $4, $4
mult $4, $4
mfhi $3
bgtz $3, TAG340
TAG340:
mult $3, $3
bne $3, $3, TAG341
lhu $3, 0($3)
blez $3, TAG341
TAG341:
sh $3, 0($3)
bne $3, $3, TAG342
ori $4, $3, 14
lw $4, 0($3)
TAG342:
mflo $3
nor $4, $4, $4
lui $3, 6
bgez $3, TAG343
TAG343:
mflo $2
mtlo $3
mflo $3
sll $0, $0, 0
TAG344:
or $4, $2, $2
mthi $4
bltz $2, TAG345
mthi $4
TAG345:
mthi $4
multu $4, $4
beq $4, $4, TAG346
mult $4, $4
TAG346:
mtlo $4
slti $3, $4, 0
blez $4, TAG347
sh $3, 0($4)
TAG347:
lhu $2, 0($3)
multu $2, $3
mfhi $4
mthi $3
TAG348:
mult $4, $4
mflo $1
mfhi $3
mthi $1
TAG349:
lui $1, 12
bltz $3, TAG350
mult $1, $1
multu $1, $3
TAG350:
mflo $4
sllv $4, $1, $4
mfhi $2
sll $0, $0, 0
TAG351:
mult $2, $2
andi $4, $2, 12
ori $1, $4, 10
addiu $1, $1, 6
TAG352:
sll $1, $1, 7
mflo $3
sll $4, $1, 13
mfhi $1
TAG353:
beq $1, $1, TAG354
lb $2, 0($1)
mflo $2
sh $2, 0($2)
TAG354:
sllv $3, $2, $2
bne $3, $2, TAG355
sh $3, 0($3)
beq $3, $2, TAG355
TAG355:
lw $3, 0($3)
mthi $3
bne $3, $3, TAG356
mult $3, $3
TAG356:
slt $4, $3, $3
sw $4, 0($4)
beq $4, $4, TAG357
sw $4, 0($4)
TAG357:
addu $3, $4, $4
lui $2, 9
mtlo $3
mult $4, $2
TAG358:
ori $2, $2, 15
mflo $1
and $3, $2, $2
sll $0, $0, 0
TAG359:
sll $0, $0, 0
sltu $4, $3, $3
mflo $3
mflo $3
TAG360:
mtlo $3
slti $3, $3, 12
sb $3, 0($3)
lbu $3, 0($3)
TAG361:
mthi $3
lbu $4, 0($3)
andi $2, $3, 10
nor $1, $4, $2
TAG362:
mult $1, $1
lhu $4, 2($1)
mtlo $4
addiu $4, $4, 0
TAG363:
lui $2, 15
addiu $4, $2, 15
sll $0, $0, 0
mfhi $2
TAG364:
sw $2, 0($2)
sb $2, 0($2)
mfhi $3
lui $1, 9
TAG365:
mflo $4
lui $2, 9
beq $1, $2, TAG366
xori $4, $4, 2
TAG366:
sll $0, $0, 0
mfhi $3
beq $3, $4, TAG367
sb $1, 0($3)
TAG367:
slti $2, $3, 7
sh $3, 0($3)
divu $2, $2
mthi $2
TAG368:
bne $2, $2, TAG369
mthi $2
mflo $3
addiu $4, $3, 8
TAG369:
div $4, $4
mflo $2
addu $2, $2, $4
sb $4, 0($4)
TAG370:
mflo $3
sb $3, 0($3)
lb $4, 0($2)
lh $2, 0($2)
TAG371:
lbu $1, 0($2)
bne $2, $2, TAG372
srlv $4, $1, $2
sw $2, 0($4)
TAG372:
sh $4, 0($4)
sh $4, 0($4)
slti $1, $4, 3
divu $4, $1
TAG373:
and $2, $1, $1
sb $1, 0($1)
bltz $2, TAG374
lb $2, 0($1)
TAG374:
mflo $2
sw $2, 0($2)
blez $2, TAG375
sw $2, 0($2)
TAG375:
mflo $2
mtlo $2
sll $3, $2, 1
slti $3, $2, 3
TAG376:
beq $3, $3, TAG377
mfhi $2
mult $2, $3
beq $2, $2, TAG377
TAG377:
sra $4, $2, 10
mflo $3
mflo $4
mflo $2
TAG378:
mult $2, $2
andi $1, $2, 9
sw $1, 0($1)
bgtz $2, TAG379
TAG379:
multu $1, $1
or $1, $1, $1
sh $1, 0($1)
bne $1, $1, TAG380
TAG380:
mfhi $2
bne $1, $1, TAG381
lhu $2, 0($2)
andi $4, $1, 13
TAG381:
lw $4, 0($4)
bgtz $4, TAG382
lhu $3, 0($4)
lb $3, 0($3)
TAG382:
mfhi $4
lui $2, 9
sllv $4, $2, $3
blez $2, TAG383
TAG383:
lui $2, 9
sll $0, $0, 0
beq $2, $2, TAG384
sll $0, $0, 0
TAG384:
lui $3, 12
multu $4, $4
sll $0, $0, 0
slt $3, $4, $4
TAG385:
mult $3, $3
lhu $4, 0($3)
lui $4, 10
sll $0, $0, 0
TAG386:
lh $3, 0($3)
mthi $3
mfhi $4
mflo $3
TAG387:
lw $2, 0($3)
bgez $2, TAG388
lbu $3, 0($3)
sub $4, $3, $2
TAG388:
bgtz $4, TAG389
mflo $2
lh $2, 0($4)
multu $4, $4
TAG389:
bne $2, $2, TAG390
lbu $1, 0($2)
bgez $1, TAG390
multu $1, $1
TAG390:
blez $1, TAG391
subu $4, $1, $1
sll $2, $1, 6
multu $2, $2
TAG391:
bgtz $2, TAG392
slti $4, $2, 3
mthi $2
lui $1, 14
TAG392:
bltz $1, TAG393
mult $1, $1
mtlo $1
or $1, $1, $1
TAG393:
sll $0, $0, 0
bgez $1, TAG394
sll $0, $0, 0
mfhi $3
TAG394:
mult $3, $3
lui $1, 15
sll $0, $0, 0
slti $1, $1, 9
TAG395:
slti $2, $1, 12
and $4, $2, $2
bne $4, $1, TAG396
mtlo $1
TAG396:
lui $1, 8
mtlo $4
xor $4, $4, $1
sllv $2, $4, $4
TAG397:
divu $2, $2
srav $4, $2, $2
lui $3, 14
lui $2, 4
TAG398:
addiu $2, $2, 3
mfhi $1
lui $4, 15
lui $4, 0
TAG399:
srlv $3, $4, $4
mthi $4
blez $3, TAG400
mflo $1
TAG400:
bne $1, $1, TAG401
multu $1, $1
addu $4, $1, $1
sb $4, 0($1)
TAG401:
mfhi $2
srav $2, $2, $2
sw $2, 0($2)
lhu $3, 0($4)
TAG402:
bgez $3, TAG403
sw $3, 0($3)
and $2, $3, $3
bne $3, $2, TAG403
TAG403:
multu $2, $2
mflo $3
addiu $4, $2, 3
beq $3, $4, TAG404
TAG404:
sb $4, 0($4)
multu $4, $4
sb $4, 0($4)
mfhi $2
TAG405:
multu $2, $2
bne $2, $2, TAG406
lui $3, 0
lh $3, 0($2)
TAG406:
mflo $3
sw $3, 0($3)
beq $3, $3, TAG407
mult $3, $3
TAG407:
bne $3, $3, TAG408
mult $3, $3
beq $3, $3, TAG408
sra $4, $3, 3
TAG408:
beq $4, $4, TAG409
srav $1, $4, $4
beq $4, $4, TAG409
lhu $1, 0($4)
TAG409:
lui $3, 14
bne $3, $3, TAG410
lh $4, 0($1)
sh $3, 0($1)
TAG410:
bne $4, $4, TAG411
mthi $4
xor $2, $4, $4
lb $3, 0($4)
TAG411:
mfhi $3
sw $3, 0($3)
lb $3, 0($3)
lui $1, 9
TAG412:
sll $0, $0, 0
mflo $3
addi $4, $3, 4
lui $1, 4
TAG413:
mfhi $2
bne $2, $2, TAG414
mflo $3
and $4, $3, $1
TAG414:
nor $1, $4, $4
bltz $4, TAG415
mult $4, $1
andi $1, $4, 10
TAG415:
bne $1, $1, TAG416
xor $3, $1, $1
bltz $3, TAG416
multu $3, $1
TAG416:
sh $3, 0($3)
mthi $3
mflo $4
slt $2, $4, $4
TAG417:
slt $4, $2, $2
beq $2, $4, TAG418
mflo $3
multu $4, $2
TAG418:
sb $3, 0($3)
sltiu $1, $3, 8
multu $3, $3
sra $3, $1, 14
TAG419:
mthi $3
mflo $2
lbu $2, 0($2)
bgez $3, TAG420
TAG420:
mflo $1
multu $2, $2
multu $2, $1
bne $1, $2, TAG421
TAG421:
sltu $1, $1, $1
bne $1, $1, TAG422
slti $2, $1, 1
multu $1, $1
TAG422:
bne $2, $2, TAG423
mthi $2
blez $2, TAG423
mfhi $2
TAG423:
mtlo $2
slt $1, $2, $2
lb $4, 0($2)
mult $1, $4
TAG424:
lui $4, 15
mtlo $4
lui $2, 1
mthi $4
TAG425:
sltu $3, $2, $2
mfhi $2
sb $3, 0($3)
mfhi $2
TAG426:
sll $0, $0, 0
addiu $3, $2, 12
mflo $2
blez $3, TAG427
TAG427:
mtlo $2
beq $2, $2, TAG428
lui $3, 3
div $3, $3
TAG428:
mthi $3
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG429:
srl $1, $4, 1
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG430:
mfhi $1
sltu $2, $3, $3
srl $1, $3, 15
lui $3, 9
TAG431:
addu $1, $3, $3
srlv $2, $3, $3
sltu $4, $1, $3
sh $2, 0($4)
TAG432:
beq $4, $4, TAG433
lui $4, 7
mthi $4
lui $2, 12
TAG433:
bne $2, $2, TAG434
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
TAG434:
sll $0, $0, 0
beq $1, $1, TAG435
subu $3, $1, $1
lh $4, 0($3)
TAG435:
mtlo $4
mthi $4
sll $0, $0, 0
bne $4, $4, TAG436
TAG436:
sll $0, $0, 0
divu $4, $4
xori $3, $4, 10
bltz $4, TAG437
TAG437:
sll $0, $0, 0
sllv $1, $3, $3
mfhi $1
lui $3, 10
TAG438:
mfhi $2
lb $3, 0($2)
beq $2, $3, TAG439
mtlo $3
TAG439:
mflo $1
add $1, $1, $3
lui $4, 4
sw $4, 0($1)
TAG440:
beq $4, $4, TAG441
sll $0, $0, 0
bltz $4, TAG441
sw $4, 0($4)
TAG441:
bgez $4, TAG442
sll $0, $0, 0
beq $4, $4, TAG442
multu $4, $4
TAG442:
bne $4, $4, TAG443
sllv $1, $4, $4
sll $0, $0, 0
sltiu $1, $2, 2
TAG443:
bltz $1, TAG444
mfhi $4
lbu $4, 0($1)
lui $2, 5
TAG444:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
lb $4, 0($3)
TAG445:
ori $2, $4, 4
addiu $1, $4, 15
mult $1, $4
lhu $4, 0($2)
TAG446:
lbu $2, 0($4)
sb $4, 0($4)
sltu $3, $4, $2
lui $4, 7
TAG447:
slt $1, $4, $4
beq $4, $4, TAG448
lui $2, 6
mfhi $1
TAG448:
mtlo $1
sh $1, 0($1)
bltz $1, TAG449
sh $1, 0($1)
TAG449:
lbu $1, 0($1)
and $1, $1, $1
multu $1, $1
lui $3, 13
TAG450:
bgez $3, TAG451
sllv $3, $3, $3
nor $4, $3, $3
lui $3, 14
TAG451:
lui $3, 5
blez $3, TAG452
mtlo $3
slt $1, $3, $3
TAG452:
mtlo $1
addu $4, $1, $1
lbu $1, 0($4)
mflo $1
TAG453:
mfhi $1
mthi $1
lui $1, 4
beq $1, $1, TAG454
TAG454:
mtlo $1
sll $0, $0, 0
blez $1, TAG455
sll $0, $0, 0
TAG455:
lw $2, 0($4)
sub $4, $2, $4
multu $4, $4
sll $0, $0, 0
TAG456:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 6
mflo $4
TAG457:
mflo $4
sw $4, 0($4)
mfhi $4
mtlo $4
TAG458:
sh $4, 0($4)
mfhi $1
bgez $4, TAG459
multu $4, $4
TAG459:
sllv $1, $1, $1
mult $1, $1
beq $1, $1, TAG460
lui $2, 4
TAG460:
div $2, $2
sll $0, $0, 0
lui $4, 0
multu $4, $4
TAG461:
bltz $4, TAG462
xor $3, $4, $4
addi $3, $4, 8
mflo $1
TAG462:
sh $1, 0($1)
mthi $1
lui $4, 5
slti $4, $1, 1
TAG463:
mult $4, $4
xor $4, $4, $4
bltz $4, TAG464
mthi $4
TAG464:
beq $4, $4, TAG465
mthi $4
blez $4, TAG465
sh $4, 0($4)
TAG465:
mthi $4
lbu $3, 0($4)
mtlo $4
sll $1, $3, 7
TAG466:
mult $1, $1
mthi $1
lui $1, 9
mflo $3
TAG467:
multu $3, $3
lui $4, 12
ori $1, $4, 7
mfhi $1
TAG468:
beq $1, $1, TAG469
lui $3, 4
sh $3, 0($3)
sltu $3, $1, $1
TAG469:
div $3, $3
mflo $4
lb $4, 0($4)
bltz $4, TAG470
TAG470:
lui $4, 10
or $2, $4, $4
beq $4, $4, TAG471
sll $0, $0, 0
TAG471:
beq $2, $2, TAG472
slt $4, $2, $2
bgez $2, TAG472
addiu $2, $4, 4
TAG472:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG473:
srav $4, $1, $1
blez $4, TAG474
ori $3, $4, 7
sw $3, 0($1)
TAG474:
xor $2, $3, $3
bne $3, $2, TAG475
srl $4, $3, 14
bgez $2, TAG475
TAG475:
multu $4, $4
multu $4, $4
mult $4, $4
sb $4, 0($4)
TAG476:
lw $2, 0($4)
sb $2, 0($4)
sltiu $1, $2, 8
addiu $3, $4, 13
TAG477:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG478:
lui $2, 0
lui $2, 3
bgez $2, TAG479
sll $0, $0, 0
TAG479:
sll $0, $0, 0
bne $2, $2, TAG480
sll $0, $0, 0
srav $3, $2, $2
TAG480:
addu $1, $3, $3
div $3, $3
sll $0, $0, 0
mthi $3
TAG481:
mflo $2
sll $0, $0, 0
slt $1, $1, $2
beq $1, $1, TAG482
TAG482:
lw $4, 0($1)
bne $1, $4, TAG483
mult $4, $4
blez $4, TAG483
TAG483:
lb $3, 0($4)
bne $4, $4, TAG484
sll $4, $3, 10
srav $3, $4, $4
TAG484:
lui $2, 9
beq $2, $2, TAG485
mult $2, $3
sb $2, 0($3)
TAG485:
bgez $2, TAG486
sll $0, $0, 0
lui $2, 14
lui $3, 6
TAG486:
lui $2, 9
bgez $2, TAG487
mfhi $3
mfhi $1
TAG487:
mthi $1
sh $1, 0($1)
lhu $1, 0($1)
lui $3, 14
TAG488:
mult $3, $3
sra $3, $3, 13
lui $4, 15
lui $1, 8
TAG489:
mtlo $1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG490:
mflo $4
beq $4, $2, TAG491
sll $0, $0, 0
bne $2, $2, TAG491
TAG491:
ori $3, $4, 0
beq $4, $3, TAG492
sll $0, $0, 0
sllv $2, $1, $1
TAG492:
lui $1, 1
sll $0, $0, 0
bltz $1, TAG493
lui $4, 2
TAG493:
beq $4, $4, TAG494
subu $1, $4, $4
sll $3, $1, 8
lbu $4, 0($1)
TAG494:
bne $4, $4, TAG495
multu $4, $4
blez $4, TAG495
srav $1, $4, $4
TAG495:
addiu $2, $1, 8
bgez $1, TAG496
multu $1, $2
srav $1, $2, $2
TAG496:
nor $1, $1, $1
blez $1, TAG497
sll $0, $0, 0
sb $1, 0($1)
TAG497:
bgtz $3, TAG498
mflo $2
or $2, $2, $3
mtlo $3
TAG498:
mtlo $2
mtlo $2
mflo $1
mflo $3
TAG499:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
TAG500:
beq $3, $3, TAG501
addiu $1, $3, 15
mflo $2
addi $1, $1, 7
TAG501:
mfhi $4
sll $0, $0, 0
and $2, $1, $1
mflo $2
TAG502:
blez $2, TAG503
mtlo $2
mult $2, $2
bgtz $2, TAG503
TAG503:
sll $0, $0, 0
mtlo $2
lui $2, 14
sll $0, $0, 0
TAG504:
bgez $3, TAG505
mtlo $3
srlv $3, $3, $3
sw $3, 0($3)
TAG505:
subu $3, $3, $3
lw $4, 0($3)
lui $1, 6
lui $3, 0
TAG506:
mflo $2
lui $1, 8
bgtz $2, TAG507
sll $0, $0, 0
TAG507:
lw $2, 0($4)
mtlo $2
sll $3, $4, 6
lui $2, 4
TAG508:
bne $2, $2, TAG509
lui $1, 14
sll $0, $0, 0
lui $1, 10
TAG509:
andi $1, $1, 10
bne $1, $1, TAG510
mtlo $1
bne $1, $1, TAG510
TAG510:
mult $1, $1
mflo $4
mtlo $1
bne $1, $4, TAG511
TAG511:
sllv $2, $4, $4
sw $4, 0($2)
mthi $2
sltu $4, $2, $4
TAG512:
ori $4, $4, 4
mtlo $4
mfhi $3
and $4, $4, $3
TAG513:
subu $2, $4, $4
mult $2, $2
sll $3, $2, 12
mflo $2
TAG514:
sw $2, 0($2)
lw $1, 0($2)
add $3, $2, $1
sltiu $2, $2, 12
TAG515:
bgtz $2, TAG516
mthi $2
addiu $2, $2, 9
mthi $2
TAG516:
andi $1, $2, 6
sltiu $2, $2, 9
slti $1, $2, 2
mthi $2
TAG517:
lui $1, 1
bne $1, $1, TAG518
lui $4, 1
mtlo $1
TAG518:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
divu $4, $4
TAG519:
srl $1, $3, 0
mfhi $2
lui $3, 3
multu $3, $2
TAG520:
bgtz $3, TAG521
addu $4, $3, $3
slti $4, $3, 15
lb $3, 0($3)
TAG521:
lui $1, 5
lui $2, 11
sll $0, $0, 0
srav $3, $1, $2
TAG522:
bgtz $3, TAG523
mfhi $2
lui $4, 3
ori $1, $2, 2
TAG523:
bgtz $1, TAG524
divu $1, $1
lui $1, 4
bne $1, $1, TAG524
TAG524:
and $2, $1, $1
beq $1, $2, TAG525
sll $0, $0, 0
bgez $2, TAG525
TAG525:
sll $0, $0, 0
mtlo $2
mult $2, $2
mult $2, $2
TAG526:
sll $0, $0, 0
mult $2, $2
mfhi $2
mult $2, $2
TAG527:
bne $2, $2, TAG528
mflo $1
bgez $1, TAG528
sb $2, -625($1)
TAG528:
div $1, $1
mult $1, $1
sh $1, -625($1)
beq $1, $1, TAG529
TAG529:
mfhi $3
divu $3, $1
mult $1, $1
lui $4, 15
TAG530:
xori $2, $4, 8
bltz $4, TAG531
mtlo $2
mthi $4
TAG531:
addu $3, $2, $2
sll $0, $0, 0
beq $3, $3, TAG532
sll $1, $2, 4
TAG532:
slt $1, $1, $1
multu $1, $1
sllv $2, $1, $1
lhu $1, 0($1)
TAG533:
bgtz $1, TAG534
lw $1, -625($1)
bne $1, $1, TAG534
lw $3, 0($1)
TAG534:
mflo $3
multu $3, $3
lh $4, 0($3)
or $3, $4, $4
TAG535:
sll $0, $0, 0
blez $3, TAG536
mfhi $1
lb $4, -625($4)
TAG536:
blez $4, TAG537
mult $4, $4
mflo $4
bgez $4, TAG537
TAG537:
sltiu $4, $4, 7
sra $2, $4, 2
bgtz $2, TAG538
multu $4, $2
TAG538:
mult $2, $2
mult $2, $2
lui $4, 9
sra $4, $4, 8
TAG539:
sra $4, $4, 7
mtlo $4
mthi $4
mtlo $4
TAG540:
bne $4, $4, TAG541
divu $4, $4
lh $2, 0($4)
multu $4, $2
TAG541:
lh $3, 0($2)
lw $4, -625($3)
bgez $2, TAG542
mtlo $2
TAG542:
sh $4, -625($4)
bne $4, $4, TAG543
sw $4, -625($4)
lui $3, 0
TAG543:
andi $4, $3, 11
lhu $4, 0($3)
mthi $3
mfhi $3
TAG544:
mflo $3
nor $1, $3, $3
mflo $4
sb $3, 0($3)
TAG545:
lb $1, 0($4)
mflo $2
sw $2, 0($1)
bne $2, $1, TAG546
TAG546:
lbu $1, 0($2)
mflo $2
mfhi $3
bne $3, $2, TAG547
TAG547:
mtlo $3
multu $3, $3
beq $3, $3, TAG548
lh $1, 0($3)
TAG548:
lui $3, 8
mtlo $1
lui $3, 14
sh $1, 0($1)
TAG549:
lui $3, 8
slt $2, $3, $3
lui $2, 2
mthi $3
TAG550:
sll $0, $0, 0
sll $0, $0, 0
srlv $3, $1, $2
mflo $2
TAG551:
mult $2, $2
and $3, $2, $2
bne $3, $2, TAG552
lw $3, 0($3)
TAG552:
srlv $4, $3, $3
mtlo $3
beq $3, $4, TAG553
slti $1, $3, 4
TAG553:
sb $1, 0($1)
ori $3, $1, 1
divu $3, $1
mflo $2
TAG554:
mfhi $3
mult $2, $3
sb $3, 0($2)
multu $3, $3
TAG555:
beq $3, $3, TAG556
mult $3, $3
mthi $3
nor $1, $3, $3
TAG556:
lb $4, 0($1)
lui $2, 6
mthi $1
mtlo $4
TAG557:
bgtz $2, TAG558
srl $4, $2, 8
sh $2, 0($4)
bne $4, $2, TAG558
TAG558:
mfhi $2
xor $3, $2, $2
lui $2, 8
sra $3, $2, 15
TAG559:
mthi $3
mfhi $1
divu $3, $1
lbu $4, 0($3)
TAG560:
mtlo $4
lb $2, 0($4)
sh $4, 0($4)
mthi $2
TAG561:
mtlo $2
lw $2, 0($2)
bltz $2, TAG562
divu $2, $2
TAG562:
bgez $2, TAG563
mthi $2
slt $1, $2, $2
bne $1, $1, TAG563
TAG563:
div $1, $1
lbu $1, 0($1)
sw $1, 0($1)
mfhi $2
TAG564:
mflo $4
andi $2, $2, 4
lb $1, 0($2)
multu $4, $1
TAG565:
lui $3, 6
lhu $4, 0($1)
mthi $4
bne $4, $4, TAG566
TAG566:
lhu $4, 0($4)
mtlo $4
bne $4, $4, TAG567
multu $4, $4
TAG567:
beq $4, $4, TAG568
multu $4, $4
sh $4, 0($4)
bne $4, $4, TAG568
TAG568:
sw $4, 0($4)
multu $4, $4
xori $2, $4, 13
bltz $2, TAG569
TAG569:
slt $3, $2, $2
lui $2, 5
lw $2, 0($3)
sw $2, 0($2)
TAG570:
multu $2, $2
sw $2, 0($2)
slt $1, $2, $2
blez $2, TAG571
TAG571:
xori $3, $1, 3
xori $2, $3, 8
sltiu $4, $3, 13
mtlo $4
TAG572:
mfhi $4
lhu $1, 0($4)
srl $4, $4, 13
sw $4, 0($4)
TAG573:
srl $4, $4, 14
lbu $3, 0($4)
nor $4, $3, $4
lui $2, 5
TAG574:
sll $0, $0, 0
srl $4, $2, 1
srlv $1, $2, $4
bgtz $1, TAG575
TAG575:
divu $1, $1
bltz $1, TAG576
xori $1, $1, 8
slt $4, $1, $1
TAG576:
lh $4, 0($4)
sllv $2, $4, $4
mult $4, $2
sw $4, 0($2)
TAG577:
blez $2, TAG578
sb $2, 0($2)
mtlo $2
bgtz $2, TAG578
TAG578:
sh $2, 0($2)
lui $2, 0
bgtz $2, TAG579
mthi $2
TAG579:
lui $3, 14
srav $1, $2, $2
bne $3, $2, TAG580
mfhi $2
TAG580:
sub $3, $2, $2
beq $3, $2, TAG581
lh $2, 0($3)
slti $4, $2, 8
TAG581:
addiu $2, $4, 2
lui $3, 10
or $1, $2, $3
mflo $4
TAG582:
mflo $4
bne $4, $4, TAG583
lui $1, 1
lbu $2, 0($4)
TAG583:
bne $2, $2, TAG584
sh $2, 0($2)
bgez $2, TAG584
mult $2, $2
TAG584:
andi $2, $2, 7
sra $3, $2, 12
xor $1, $2, $3
bne $1, $2, TAG585
TAG585:
mflo $2
blez $1, TAG586
subu $1, $1, $1
mtlo $1
TAG586:
addiu $1, $1, 0
andi $4, $1, 2
lb $2, 0($1)
mult $1, $4
TAG587:
sub $1, $2, $2
multu $2, $2
sb $1, 0($1)
sb $1, 0($1)
TAG588:
lw $3, 0($1)
lbu $3, 0($3)
mthi $3
sb $3, 0($1)
TAG589:
srav $1, $3, $3
mflo $3
subu $1, $3, $1
mflo $1
TAG590:
mtlo $1
blez $1, TAG591
mflo $4
sllv $4, $4, $4
TAG591:
lw $4, 0($4)
lui $4, 9
mtlo $4
sltu $1, $4, $4
TAG592:
mult $1, $1
multu $1, $1
srav $1, $1, $1
lhu $1, 0($1)
TAG593:
multu $1, $1
lw $3, 0($1)
lui $4, 7
blez $3, TAG594
TAG594:
subu $2, $4, $4
addi $2, $2, 13
addu $4, $2, $2
slti $4, $2, 1
TAG595:
lui $3, 13
beq $3, $4, TAG596
srlv $4, $3, $3
mflo $1
TAG596:
addi $2, $1, 8
lh $1, 0($2)
mult $1, $1
divu $1, $2
TAG597:
divu $1, $1
mult $1, $1
sb $1, -2304($1)
lh $4, -2304($1)
TAG598:
lui $2, 8
multu $2, $2
mthi $4
mflo $1
TAG599:
bgez $1, TAG600
mflo $3
mtlo $1
lui $4, 3
TAG600:
mfhi $3
mfhi $3
srl $2, $3, 8
mthi $3
TAG601:
mfhi $2
sb $2, 0($2)
bgez $2, TAG602
slt $4, $2, $2
TAG602:
mtlo $4
slt $2, $4, $4
blez $2, TAG603
sltu $2, $2, $4
TAG603:
bne $2, $2, TAG604
sb $2, 0($2)
lui $2, 4
mthi $2
TAG604:
mflo $1
addu $3, $2, $2
mthi $1
mfhi $4
TAG605:
slt $2, $4, $4
sw $4, 0($4)
mthi $2
and $2, $2, $4
TAG606:
multu $2, $2
mfhi $2
xori $1, $2, 5
mtlo $2
TAG607:
subu $4, $1, $1
mtlo $1
mfhi $3
sw $3, 0($3)
TAG608:
blez $3, TAG609
mthi $3
mflo $4
sh $4, 0($4)
TAG609:
sw $4, 0($4)
mtlo $4
or $4, $4, $4
mthi $4
TAG610:
mult $4, $4
beq $4, $4, TAG611
mflo $3
mflo $1
TAG611:
sb $1, 0($1)
div $1, $1
sb $1, 0($1)
lui $1, 2
TAG612:
sll $0, $0, 0
lbu $1, 0($2)
addi $3, $2, 8
bgtz $2, TAG613
TAG613:
lb $4, 0($3)
mfhi $4
sb $3, 0($3)
lw $1, 0($3)
TAG614:
sll $0, $0, 0
mtlo $1
or $2, $1, $1
xori $4, $1, 13
TAG615:
mult $4, $4
lui $4, 12
sll $0, $0, 0
mflo $1
TAG616:
bne $1, $1, TAG617
or $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG617:
bne $4, $4, TAG618
mthi $4
mthi $4
lui $4, 10
TAG618:
multu $4, $4
mflo $2
sw $2, 0($2)
sh $2, 0($2)
TAG619:
lui $4, 0
lhu $1, 0($2)
mflo $4
mtlo $4
TAG620:
lb $4, 0($4)
bgtz $4, TAG621
mflo $2
blez $4, TAG621
TAG621:
mult $2, $2
bgtz $2, TAG622
srav $1, $2, $2
lb $2, 0($1)
TAG622:
bne $2, $2, TAG623
mthi $2
add $4, $2, $2
subu $2, $2, $2
TAG623:
lui $2, 12
mfhi $1
mtlo $1
bgez $2, TAG624
TAG624:
lh $3, 0($1)
mfhi $2
mflo $2
sw $2, 0($3)
TAG625:
mult $2, $2
lw $4, 0($2)
mflo $3
lh $3, 0($2)
TAG626:
lui $4, 10
bne $3, $3, TAG627
lui $1, 7
lui $3, 4
TAG627:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
lui $2, 6
TAG628:
lui $1, 15
bne $1, $1, TAG629
sll $0, $0, 0
mflo $4
TAG629:
beq $4, $4, TAG630
mflo $4
lhu $1, 0($4)
bne $4, $4, TAG630
TAG630:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
TAG631:
mthi $1
sll $0, $0, 0
xor $1, $1, $1
mult $1, $1
TAG632:
add $3, $1, $1
bne $1, $1, TAG633
sltu $3, $3, $1
srav $4, $3, $1
TAG633:
sw $4, 0($4)
bne $4, $4, TAG634
lhu $2, 0($4)
mtlo $2
TAG634:
mflo $3
lui $4, 11
lhu $2, 0($2)
mflo $4
TAG635:
addu $1, $4, $4
mthi $4
lbu $2, 0($4)
bne $1, $4, TAG636
TAG636:
sw $2, 0($2)
lui $3, 6
mflo $4
sb $2, 0($2)
TAG637:
mthi $4
bgez $4, TAG638
nor $4, $4, $4
sb $4, 0($4)
TAG638:
mthi $4
bgez $4, TAG639
divu $4, $4
lh $1, 1($4)
TAG639:
mfhi $2
lui $2, 4
multu $2, $2
div $2, $2
TAG640:
sltu $4, $2, $2
ori $1, $4, 4
mthi $1
mflo $4
TAG641:
bne $4, $4, TAG642
subu $1, $4, $4
srl $4, $1, 15
lui $1, 9
TAG642:
mult $1, $1
bne $1, $1, TAG643
lui $2, 12
bgtz $2, TAG643
TAG643:
lui $4, 7
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG644:
bne $4, $4, TAG645
srav $1, $4, $4
bne $4, $4, TAG645
lui $2, 14
TAG645:
bltz $2, TAG646
ori $3, $2, 10
sll $0, $0, 0
blez $3, TAG646
TAG646:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $3, $4, $3
TAG647:
mtlo $3
bltz $3, TAG648
mflo $1
mult $1, $3
TAG648:
sll $0, $0, 0
lui $1, 11
mtlo $1
sll $0, $0, 0
TAG649:
addiu $3, $1, 0
bne $3, $1, TAG650
multu $3, $1
lui $3, 6
TAG650:
mfhi $4
sll $0, $0, 0
and $1, $4, $4
addu $1, $1, $4
TAG651:
sw $1, -242($1)
sllv $2, $1, $1
or $2, $1, $2
addu $4, $1, $1
TAG652:
subu $3, $4, $4
lbu $2, -484($4)
nor $4, $3, $2
lui $1, 2
TAG653:
bne $1, $1, TAG654
sll $0, $0, 0
sll $0, $0, 0
beq $2, $4, TAG654
TAG654:
sw $2, -242($2)
lui $2, 13
sra $1, $2, 13
sll $0, $0, 0
TAG655:
lui $3, 3
mtlo $3
mfhi $2
slt $1, $2, $3
TAG656:
lui $4, 14
lui $3, 13
mflo $3
sra $4, $3, 7
TAG657:
andi $1, $4, 7
bne $1, $1, TAG658
multu $4, $1
multu $4, $4
TAG658:
addi $3, $1, 11
lui $3, 5
and $2, $1, $1
sra $4, $2, 3
TAG659:
mtlo $4
sw $4, 0($4)
xori $4, $4, 2
mtlo $4
TAG660:
andi $2, $4, 3
mult $2, $4
lui $4, 1
slt $4, $4, $4
TAG661:
sllv $3, $4, $4
lhu $3, 0($4)
bne $3, $4, TAG662
mtlo $4
TAG662:
mfhi $3
mult $3, $3
bne $3, $3, TAG663
lhu $3, 0($3)
TAG663:
multu $3, $3
mult $3, $3
lhu $3, 0($3)
mult $3, $3
TAG664:
nor $1, $3, $3
mult $3, $3
blez $1, TAG665
lui $4, 8
TAG665:
sll $0, $0, 0
divu $4, $4
or $3, $4, $4
lui $3, 4
TAG666:
sll $0, $0, 0
bgtz $4, TAG667
sll $0, $0, 0
lbu $1, 0($4)
TAG667:
lui $4, 4
beq $1, $1, TAG668
srl $2, $1, 6
xori $3, $2, 3
TAG668:
addu $2, $3, $3
divu $2, $3
sra $4, $2, 14
blez $3, TAG669
TAG669:
lui $4, 7
blez $4, TAG670
lui $4, 12
lui $1, 3
TAG670:
mult $1, $1
bne $1, $1, TAG671
srav $3, $1, $1
sll $0, $0, 0
TAG671:
mfhi $3
lui $4, 6
mthi $3
beq $4, $1, TAG672
TAG672:
xori $3, $4, 5
sll $0, $0, 0
mflo $1
beq $4, $1, TAG673
TAG673:
lui $3, 5
blez $3, TAG674
divu $1, $3
beq $3, $1, TAG674
TAG674:
or $3, $3, $3
sltu $3, $3, $3
sw $3, 0($3)
sltiu $2, $3, 1
TAG675:
mfhi $3
lui $1, 0
sltiu $4, $1, 4
addiu $1, $1, 15
TAG676:
sb $1, 0($1)
beq $1, $1, TAG677
lbu $1, 0($1)
sw $1, 0($1)
TAG677:
mthi $1
lui $4, 9
ori $2, $1, 14
bltz $1, TAG678
TAG678:
lb $3, 0($2)
bne $2, $3, TAG679
mthi $3
beq $2, $3, TAG679
TAG679:
andi $1, $3, 5
beq $3, $3, TAG680
mflo $3
bgtz $1, TAG680
TAG680:
sw $3, 0($3)
sltu $4, $3, $3
srlv $2, $3, $3
lui $1, 13
TAG681:
mult $1, $1
multu $1, $1
mflo $4
mtlo $1
TAG682:
mult $4, $4
bgez $4, TAG683
lh $1, 0($4)
bgez $1, TAG683
TAG683:
lb $1, 0($1)
mthi $1
add $4, $1, $1
mtlo $4
TAG684:
lui $2, 11
bltz $2, TAG685
addi $2, $4, 13
sb $4, 0($2)
TAG685:
beq $2, $2, TAG686
sb $2, 0($2)
add $1, $2, $2
addi $1, $1, 14
TAG686:
blez $1, TAG687
mult $1, $1
mfhi $1
mfhi $4
TAG687:
lb $1, 0($4)
bgez $4, TAG688
mult $1, $1
mfhi $3
TAG688:
mfhi $2
mult $3, $3
lui $4, 12
lui $1, 14
TAG689:
addu $1, $1, $1
mfhi $4
mthi $1
lhu $4, 0($4)
TAG690:
or $4, $4, $4
sb $4, 0($4)
mthi $4
bltz $4, TAG691
TAG691:
lhu $2, 0($4)
blez $4, TAG692
lui $3, 15
div $3, $3
TAG692:
mtlo $3
bltz $3, TAG693
mult $3, $3
div $3, $3
TAG693:
srl $4, $3, 11
mtlo $4
addiu $1, $3, 9
sll $0, $0, 0
TAG694:
addiu $2, $1, 6
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG695:
sll $0, $0, 0
blez $3, TAG696
sll $0, $0, 0
addu $1, $1, $1
TAG696:
div $1, $1
multu $1, $1
mult $1, $1
mthi $1
TAG697:
ori $3, $1, 7
lui $1, 5
sll $0, $0, 0
mthi $1
TAG698:
mfhi $4
slt $1, $4, $4
addiu $4, $1, 14
mflo $4
TAG699:
lui $1, 4
blez $4, TAG700
lui $3, 1
bltz $4, TAG700
TAG700:
mflo $2
mflo $1
lui $4, 3
mfhi $3
TAG701:
sll $0, $0, 0
lui $2, 1
mthi $3
bgtz $2, TAG702
TAG702:
mtlo $2
bgez $2, TAG703
addiu $2, $2, 11
bltz $2, TAG703
TAG703:
mflo $2
mtlo $2
sll $0, $0, 0
srl $3, $2, 7
TAG704:
nor $2, $3, $3
mtlo $3
lui $4, 14
bltz $3, TAG705
TAG705:
sll $0, $0, 0
addu $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG706:
div $3, $3
lui $2, 0
mtlo $2
mthi $2
TAG707:
lui $3, 9
bgez $3, TAG708
sltu $2, $3, $3
mthi $2
TAG708:
lhu $2, 0($2)
bne $2, $2, TAG709
lui $4, 1
sb $4, 0($2)
TAG709:
mfhi $4
mthi $4
bltz $4, TAG710
lui $3, 14
TAG710:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 13
addu $2, $4, $4
TAG711:
bne $2, $2, TAG712
mthi $2
mfhi $2
lui $1, 6
TAG712:
lui $2, 7
bne $1, $2, TAG713
sll $0, $0, 0
sw $1, 0($1)
TAG713:
mfhi $4
lui $3, 2
addu $4, $4, $3
mthi $3
TAG714:
addu $4, $4, $4
addiu $4, $4, 12
slti $2, $4, 4
sll $0, $0, 0
TAG715:
bltz $2, TAG716
sw $2, 0($2)
mflo $2
mult $2, $2
TAG716:
blez $2, TAG717
slti $1, $2, 1
slt $4, $2, $1
mthi $4
TAG717:
divu $4, $4
sll $0, $0, 0
beq $4, $4, TAG718
multu $4, $4
TAG718:
addiu $3, $4, 15
mflo $1
beq $1, $3, TAG719
lui $3, 13
TAG719:
sll $0, $0, 0
bgtz $3, TAG720
lui $2, 12
sw $2, 0($2)
TAG720:
mtlo $2
mthi $2
beq $2, $2, TAG721
sll $0, $0, 0
TAG721:
bltz $2, TAG722
mthi $2
multu $2, $2
beq $2, $2, TAG722
TAG722:
srl $1, $2, 0
sll $0, $0, 0
mtlo $2
bgez $1, TAG723
TAG723:
mflo $2
bgez $2, TAG724
sll $0, $0, 0
beq $2, $2, TAG724
TAG724:
slt $4, $2, $2
beq $2, $2, TAG725
sltu $4, $2, $4
srav $2, $2, $2
TAG725:
sltu $3, $2, $2
beq $2, $3, TAG726
lui $1, 1
mult $1, $1
TAG726:
sll $0, $0, 0
sltu $1, $1, $1
bgez $1, TAG727
lw $3, 0($3)
TAG727:
mult $3, $3
sw $3, 0($3)
multu $3, $3
beq $3, $3, TAG728
TAG728:
lui $2, 9
mthi $3
or $1, $3, $2
addiu $3, $2, 14
TAG729:
subu $3, $3, $3
mult $3, $3
lui $1, 12
andi $2, $3, 6
TAG730:
lbu $1, 0($2)
lh $2, 0($2)
mult $2, $2
mfhi $4
TAG731:
lui $1, 11
bne $1, $4, TAG732
lb $4, 0($4)
lw $4, 0($1)
TAG732:
mflo $3
blez $3, TAG733
sltu $4, $4, $4
lui $2, 4
TAG733:
mflo $3
mult $2, $3
multu $2, $3
sltiu $3, $3, 14
TAG734:
mtlo $3
bgez $3, TAG735
lui $2, 4
lui $1, 0
TAG735:
sll $0, $0, 0
lui $2, 4
mflo $4
div $2, $1
TAG736:
bne $4, $4, TAG737
lb $1, 0($4)
mtlo $1
sltu $3, $4, $1
TAG737:
lhu $2, 0($3)
and $1, $2, $2
beq $2, $2, TAG738
lui $3, 10
TAG738:
srav $4, $3, $3
xor $2, $3, $4
srav $3, $2, $4
bne $2, $3, TAG739
TAG739:
mfhi $3
mflo $1
sll $0, $0, 0
lui $1, 12
TAG740:
srl $4, $1, 6
multu $4, $4
div $1, $4
divu $4, $4
TAG741:
bne $4, $4, TAG742
mtlo $4
mtlo $4
mflo $3
TAG742:
lui $3, 3
addu $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG743:
beq $1, $1, TAG744
sll $0, $0, 0
sb $1, 0($4)
addu $4, $1, $1
TAG744:
or $3, $4, $4
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
TAG745:
slti $1, $2, 7
sra $3, $1, 14
mult $2, $2
lui $2, 8
TAG746:
sra $3, $2, 0
bgtz $3, TAG747
sllv $2, $2, $3
sra $3, $2, 9
TAG747:
mult $3, $3
sllv $3, $3, $3
bgez $3, TAG748
lui $3, 3
TAG748:
mthi $3
sll $1, $3, 3
sltiu $4, $1, 7
xor $1, $3, $4
TAG749:
mfhi $3
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop