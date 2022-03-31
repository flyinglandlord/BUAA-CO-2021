ori $1, $0, 10
ori $2, $0, 13
ori $3, $0, 6
ori $4, $0, 0
sw $2, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $1, 80($0)
sw $4, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $1, 124($0)
mthi $2
nor $2, $2, $2
mult $2, $2
lui $1, 15
TAG1:
beq $1, $1, TAG2
mflo $1
ori $1, $1, 8
bgtz $1, TAG2
TAG2:
mtlo $1
mthi $1
mtlo $1
slti $2, $1, 11
TAG3:
lb $2, 0($2)
lb $2, 0($2)
sra $3, $2, 6
sw $2, 0($2)
TAG4:
sw $3, 0($3)
lui $2, 3
blez $3, TAG5
multu $3, $2
TAG5:
mult $2, $2
mtlo $2
lui $1, 6
lui $2, 1
TAG6:
mfhi $4
nor $2, $2, $4
bgtz $2, TAG7
lb $1, 0($4)
TAG7:
sw $1, 0($1)
multu $1, $1
lui $3, 8
sll $0, $0, 0
TAG8:
srlv $1, $3, $3
lui $4, 10
lui $1, 9
addiu $3, $4, 9
TAG9:
sll $0, $0, 0
sltu $1, $3, $1
bne $3, $1, TAG10
sw $1, 0($1)
TAG10:
bltz $1, TAG11
lui $3, 15
mthi $1
sll $0, $0, 0
TAG11:
mthi $3
div $3, $3
sll $0, $0, 0
divu $1, $3
TAG12:
mult $1, $1
multu $1, $1
mfhi $3
mult $1, $3
TAG13:
sb $3, 0($3)
blez $3, TAG14
lui $3, 11
ori $3, $3, 3
TAG14:
sll $0, $0, 0
mflo $4
sb $4, 0($4)
multu $3, $4
TAG15:
mtlo $4
mtlo $4
lui $3, 9
mult $3, $4
TAG16:
mtlo $3
bltz $3, TAG17
sll $0, $0, 0
lui $1, 0
TAG17:
mtlo $1
mtlo $1
mfhi $1
sltu $1, $1, $1
TAG18:
sb $1, 0($1)
mflo $2
mthi $2
beq $2, $1, TAG19
TAG19:
mthi $2
andi $1, $2, 3
sw $1, 0($2)
sb $2, 0($2)
TAG20:
lui $2, 13
lui $2, 6
div $2, $2
mfhi $3
TAG21:
slt $1, $3, $3
mtlo $3
mtlo $3
andi $4, $3, 0
TAG22:
mthi $4
slti $3, $4, 2
lb $3, 0($3)
andi $4, $4, 2
TAG23:
bltz $4, TAG24
sb $4, 0($4)
mtlo $4
multu $4, $4
TAG24:
bltz $4, TAG25
lh $3, 0($4)
mult $4, $3
sh $3, 0($3)
TAG25:
lbu $4, 0($3)
mfhi $1
and $1, $3, $1
bltz $3, TAG26
TAG26:
lhu $2, 0($1)
blez $1, TAG27
multu $1, $2
beq $2, $2, TAG27
TAG27:
lhu $3, 0($2)
mfhi $4
lui $2, 0
slti $2, $2, 4
TAG28:
mtlo $2
bltz $2, TAG29
divu $2, $2
lui $3, 2
TAG29:
sll $0, $0, 0
beq $3, $3, TAG30
ori $2, $4, 2
addiu $2, $4, 14
TAG30:
div $2, $2
mfhi $4
lhu $1, 0($2)
mtlo $4
TAG31:
mfhi $4
mflo $3
lb $3, 0($1)
blez $3, TAG32
TAG32:
add $2, $3, $3
xor $2, $3, $3
lui $2, 10
beq $2, $2, TAG33
TAG33:
mult $2, $2
mfhi $1
blez $2, TAG34
subu $3, $1, $2
TAG34:
sll $0, $0, 0
mult $3, $4
sll $0, $0, 0
mthi $3
TAG35:
mult $4, $4
mult $4, $4
bgtz $4, TAG36
mfhi $1
TAG36:
multu $1, $1
bgez $1, TAG37
mult $1, $1
mtlo $1
TAG37:
bltz $1, TAG38
sh $1, 0($1)
mfhi $3
mtlo $1
TAG38:
mfhi $3
nor $4, $3, $3
sb $3, 1($4)
slt $3, $4, $3
TAG39:
lui $4, 3
mfhi $2
mflo $3
sltu $1, $4, $4
TAG40:
lh $3, 0($1)
lbu $1, 0($1)
bne $1, $3, TAG41
lb $3, 0($1)
TAG41:
xori $1, $3, 6
addiu $1, $1, 9
lui $2, 2
or $2, $1, $1
TAG42:
lb $3, 0($2)
lh $3, 0($3)
andi $4, $3, 15
mtlo $3
TAG43:
sll $1, $4, 7
mtlo $1
mflo $3
multu $3, $1
TAG44:
beq $3, $3, TAG45
mfhi $3
mult $3, $3
sltiu $3, $3, 1
TAG45:
mflo $4
sllv $2, $4, $3
lui $4, 12
srlv $1, $4, $4
TAG46:
beq $1, $1, TAG47
sll $0, $0, 0
lb $1, 0($1)
multu $1, $1
TAG47:
addu $4, $1, $1
beq $1, $1, TAG48
sll $0, $0, 0
blez $1, TAG48
TAG48:
andi $4, $3, 4
mult $4, $3
sh $4, 0($3)
addu $3, $3, $4
TAG49:
lui $3, 7
mfhi $2
mflo $3
ori $2, $2, 1
TAG50:
andi $3, $2, 10
srlv $2, $2, $2
beq $3, $3, TAG51
sb $2, 0($2)
TAG51:
bne $2, $2, TAG52
ori $1, $2, 12
lui $2, 14
lw $2, 0($1)
TAG52:
bne $2, $2, TAG53
sll $4, $2, 15
sb $2, 0($4)
bne $2, $4, TAG53
TAG53:
sw $4, 0($4)
lw $2, 0($4)
andi $2, $2, 13
mtlo $4
TAG54:
mthi $2
lw $2, 0($2)
sh $2, 0($2)
lw $1, 0($2)
TAG55:
mflo $3
slti $3, $3, 2
mtlo $1
mult $1, $3
TAG56:
sb $3, 0($3)
bgez $3, TAG57
lui $2, 11
blez $3, TAG57
TAG57:
sll $0, $0, 0
lui $2, 6
multu $2, $2
beq $2, $2, TAG58
TAG58:
srl $1, $2, 9
sb $1, -768($1)
mthi $1
mult $1, $1
TAG59:
lui $1, 11
sll $0, $0, 0
bne $1, $1, TAG60
andi $2, $1, 7
TAG60:
slt $3, $2, $2
andi $4, $2, 9
mult $2, $2
mtlo $3
TAG61:
sw $4, 0($4)
mfhi $1
or $3, $1, $1
lui $3, 1
TAG62:
div $3, $3
mtlo $3
mtlo $3
subu $2, $3, $3
TAG63:
sll $4, $2, 1
bne $4, $4, TAG64
lui $1, 4
mfhi $1
TAG64:
mfhi $4
sh $1, 0($1)
lui $4, 9
bne $1, $1, TAG65
TAG65:
lui $2, 2
mflo $1
xori $2, $1, 2
mtlo $2
TAG66:
beq $2, $2, TAG67
multu $2, $2
sw $2, 0($2)
sllv $4, $2, $2
TAG67:
beq $4, $4, TAG68
addiu $3, $4, 11
bltz $3, TAG68
lui $4, 6
TAG68:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $1, $2, TAG69
TAG69:
mthi $2
lui $3, 4
bgtz $3, TAG70
lui $1, 3
TAG70:
mfhi $1
mtlo $1
mfhi $3
lui $3, 12
TAG71:
lui $4, 4
mthi $3
beq $4, $4, TAG72
multu $4, $3
TAG72:
lui $1, 14
slti $2, $4, 9
sll $0, $0, 0
lh $1, 0($2)
TAG73:
srav $4, $1, $1
nor $3, $4, $1
mtlo $4
sra $2, $4, 3
TAG74:
bne $2, $2, TAG75
lui $4, 4
mfhi $1
sll $0, $0, 0
TAG75:
lh $2, 0($1)
slt $2, $2, $2
bgez $2, TAG76
lui $1, 5
TAG76:
sll $0, $0, 0
blez $4, TAG77
sll $0, $0, 0
sll $0, $0, 0
TAG77:
bgtz $4, TAG78
mflo $1
mflo $2
andi $1, $1, 7
TAG78:
lbu $1, 0($1)
mthi $1
lui $3, 1
sltiu $3, $1, 2
TAG79:
sltu $1, $3, $3
mfhi $3
mtlo $3
mthi $1
TAG80:
lw $2, 0($3)
addu $3, $2, $3
sb $3, 0($3)
sltu $3, $3, $3
TAG81:
sw $3, 0($3)
mult $3, $3
mtlo $3
sw $3, 0($3)
TAG82:
sh $3, 0($3)
sltiu $3, $3, 13
andi $1, $3, 0
sb $3, 0($3)
TAG83:
bgtz $1, TAG84
lui $1, 10
mfhi $1
bgtz $1, TAG84
TAG84:
sh $1, 0($1)
sh $1, 0($1)
mfhi $2
mtlo $2
TAG85:
beq $2, $2, TAG86
lhu $1, 0($2)
mflo $2
lui $1, 13
TAG86:
slti $2, $1, 10
subu $3, $2, $2
mflo $3
mult $1, $2
TAG87:
bgtz $3, TAG88
mult $3, $3
mthi $3
sb $3, 0($3)
TAG88:
ori $4, $3, 10
slt $3, $3, $4
mfhi $1
xor $4, $1, $1
TAG89:
lb $3, 0($4)
slti $2, $3, 14
addi $4, $3, 4
lbu $2, 0($2)
TAG90:
sh $2, 0($2)
lb $1, 0($2)
mfhi $3
sw $3, 0($2)
TAG91:
sb $3, 0($3)
srlv $2, $3, $3
mthi $2
lhu $1, 0($2)
TAG92:
lui $4, 8
mflo $2
mtlo $2
bltz $4, TAG93
TAG93:
lui $1, 9
addu $3, $1, $2
bgtz $1, TAG94
lh $1, 0($2)
TAG94:
blez $1, TAG95
mult $1, $1
bgtz $1, TAG95
mflo $2
TAG95:
multu $2, $2
blez $2, TAG96
mthi $2
mfhi $2
TAG96:
srlv $1, $2, $2
mult $2, $1
beq $1, $2, TAG97
sll $1, $2, 1
TAG97:
mthi $1
multu $1, $1
bne $1, $1, TAG98
mthi $1
TAG98:
mtlo $1
xori $2, $1, 1
multu $1, $1
sb $2, 0($2)
TAG99:
bgtz $2, TAG100
sll $4, $2, 9
bne $2, $4, TAG100
sb $2, 0($4)
TAG100:
lui $2, 5
lui $4, 10
beq $4, $4, TAG101
sltiu $2, $4, 8
TAG101:
sh $2, 0($2)
slt $3, $2, $2
mthi $2
addiu $1, $2, 5
TAG102:
lbu $4, 0($1)
addi $4, $4, 9
bltz $4, TAG103
lbu $1, 0($4)
TAG103:
bne $1, $1, TAG104
lui $1, 3
mtlo $1
multu $1, $1
TAG104:
mthi $1
multu $1, $1
mflo $3
lui $4, 10
TAG105:
multu $4, $4
srav $2, $4, $4
sll $3, $2, 8
sll $0, $0, 0
TAG106:
sll $0, $0, 0
bgtz $2, TAG107
multu $2, $2
lb $2, 0($2)
TAG107:
sll $0, $0, 0
or $3, $2, $2
divu $2, $3
beq $2, $2, TAG108
TAG108:
sll $2, $3, 8
mthi $3
mflo $2
sll $2, $2, 1
TAG109:
addiu $3, $2, 15
mthi $3
and $4, $2, $3
bne $3, $2, TAG110
TAG110:
mtlo $4
mthi $4
bgtz $4, TAG111
mflo $4
TAG111:
lui $3, 12
beq $3, $4, TAG112
mfhi $4
sb $4, 0($4)
TAG112:
bgez $4, TAG113
lb $4, 0($4)
sll $2, $4, 7
mflo $1
TAG113:
lui $1, 5
mfhi $3
sll $0, $0, 0
sra $1, $1, 0
TAG114:
bgtz $1, TAG115
mfhi $3
sw $3, 0($1)
bne $3, $1, TAG115
TAG115:
mflo $3
bgtz $3, TAG116
multu $3, $3
mflo $2
TAG116:
sltiu $1, $2, 2
mfhi $1
mtlo $1
beq $2, $2, TAG117
TAG117:
xori $3, $1, 14
bne $1, $1, TAG118
mthi $1
srl $2, $3, 9
TAG118:
lui $4, 7
mult $4, $2
nor $1, $4, $2
sll $0, $0, 0
TAG119:
lui $2, 9
sll $0, $0, 0
mult $2, $1
lui $4, 11
TAG120:
sllv $1, $4, $4
lui $2, 2
mthi $2
sll $0, $0, 0
TAG121:
bne $2, $2, TAG122
nor $3, $2, $2
subu $4, $2, $3
sra $3, $4, 9
TAG122:
sb $3, -512($3)
lh $3, -512($3)
mtlo $3
lw $4, 0($3)
TAG123:
mthi $4
beq $4, $4, TAG124
lw $4, 0($4)
lh $3, 0($4)
TAG124:
mtlo $3
bne $3, $3, TAG125
lui $2, 0
blez $3, TAG125
TAG125:
lui $4, 4
mtlo $2
lui $2, 12
andi $4, $2, 10
TAG126:
mthi $4
beq $4, $4, TAG127
sub $4, $4, $4
mthi $4
TAG127:
mult $4, $4
xor $2, $4, $4
mthi $4
mthi $4
TAG128:
mtlo $2
addiu $2, $2, 14
nor $1, $2, $2
mfhi $3
TAG129:
mfhi $1
multu $3, $3
mtlo $1
bgtz $3, TAG130
TAG130:
srav $1, $1, $1
sh $1, 0($1)
mfhi $4
lui $3, 14
TAG131:
bne $3, $3, TAG132
sra $4, $3, 6
bne $4, $4, TAG132
sra $1, $4, 6
TAG132:
mtlo $1
mtlo $1
lbu $3, -224($1)
mfhi $2
TAG133:
lhu $4, 0($2)
lbu $1, 0($2)
sb $2, 0($4)
mflo $2
TAG134:
lui $3, 14
slti $2, $3, 0
bgtz $3, TAG135
multu $2, $2
TAG135:
mtlo $2
mult $2, $2
srl $4, $2, 7
lb $1, 0($2)
TAG136:
beq $1, $1, TAG137
mtlo $1
slti $3, $1, 3
mtlo $1
TAG137:
multu $3, $3
lui $1, 8
blez $3, TAG138
lui $2, 1
TAG138:
bne $2, $2, TAG139
lui $3, 2
subu $4, $2, $3
sll $0, $0, 0
TAG139:
subu $3, $2, $2
sll $0, $0, 0
mult $2, $3
beq $3, $3, TAG140
TAG140:
mtlo $3
lhu $2, 0($3)
mult $3, $3
sb $3, 0($3)
TAG141:
lh $3, 0($2)
blez $2, TAG142
srav $2, $3, $3
slti $3, $3, 1
TAG142:
sltiu $1, $3, 5
lui $4, 4
beq $1, $1, TAG143
mtlo $1
TAG143:
mthi $4
mfhi $4
bgtz $4, TAG144
subu $3, $4, $4
TAG144:
mtlo $3
bne $3, $3, TAG145
nor $2, $3, $3
bltz $2, TAG145
TAG145:
mflo $4
lh $3, 0($4)
mult $4, $4
lh $4, 0($4)
TAG146:
mthi $4
multu $4, $4
multu $4, $4
lui $1, 10
TAG147:
srl $1, $1, 13
mthi $1
lw $1, 0($1)
lhu $4, 0($1)
TAG148:
mthi $4
multu $4, $4
mflo $3
lui $1, 1
TAG149:
addiu $1, $1, 2
mflo $4
srav $4, $4, $4
beq $1, $4, TAG150
TAG150:
addiu $3, $4, 15
ori $3, $3, 2
lbu $2, 0($3)
addu $1, $2, $3
TAG151:
sb $1, 0($1)
sb $1, 0($1)
mthi $1
lui $2, 6
TAG152:
mthi $2
beq $2, $2, TAG153
mfhi $3
srav $1, $2, $2
TAG153:
andi $1, $1, 5
div $1, $1
divu $1, $1
mflo $3
TAG154:
multu $3, $3
bne $3, $3, TAG155
sllv $2, $3, $3
blez $2, TAG155
TAG155:
lui $1, 13
mfhi $4
sll $0, $0, 0
lui $1, 10
TAG156:
mflo $3
bne $1, $1, TAG157
mfhi $2
multu $3, $2
TAG157:
sh $2, 0($2)
multu $2, $2
andi $2, $2, 11
beq $2, $2, TAG158
TAG158:
mthi $2
lui $3, 15
mthi $2
mfhi $3
TAG159:
lui $2, 5
blez $2, TAG160
sh $3, 0($3)
lui $2, 3
TAG160:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG161:
mtlo $2
mtlo $2
divu $2, $2
beq $2, $2, TAG162
TAG162:
div $2, $2
xor $3, $2, $2
sllv $3, $3, $2
beq $2, $2, TAG163
TAG163:
lbu $3, 0($3)
mthi $3
beq $3, $3, TAG164
lui $3, 15
TAG164:
blez $3, TAG165
lui $2, 8
mthi $3
mflo $1
TAG165:
addu $3, $1, $1
addiu $3, $1, 2
mthi $3
mfhi $2
TAG166:
mfhi $1
lb $3, 0($2)
bne $1, $3, TAG167
mflo $3
TAG167:
bne $3, $3, TAG168
lui $1, 7
sb $1, 0($3)
bne $3, $3, TAG168
TAG168:
mult $1, $1
lui $2, 7
mtlo $2
bgtz $1, TAG169
TAG169:
multu $2, $2
multu $2, $2
mtlo $2
sll $0, $0, 0
TAG170:
lui $2, 13
sll $0, $0, 0
mflo $1
mtlo $2
TAG171:
srl $3, $1, 5
sltiu $1, $1, 4
lb $1, 0($1)
bne $1, $1, TAG172
TAG172:
sh $1, 0($1)
addu $3, $1, $1
mtlo $1
bltz $1, TAG173
TAG173:
lb $1, 0($3)
mflo $3
lhu $4, 0($3)
lw $3, 0($4)
TAG174:
bne $3, $3, TAG175
mfhi $4
beq $4, $3, TAG175
mthi $4
TAG175:
divu $4, $4
srav $4, $4, $4
mthi $4
mtlo $4
TAG176:
mthi $4
mfhi $3
and $3, $4, $4
mtlo $3
TAG177:
ori $1, $3, 2
lhu $2, 0($3)
sh $2, 0($3)
bne $1, $1, TAG178
TAG178:
sh $2, 0($2)
beq $2, $2, TAG179
lb $4, 0($2)
mthi $2
TAG179:
sll $1, $4, 10
lui $4, 14
div $1, $4
beq $1, $1, TAG180
TAG180:
sll $3, $4, 5
bgtz $4, TAG181
mult $4, $3
lui $3, 7
TAG181:
slt $2, $3, $3
lui $2, 4
sll $0, $0, 0
sll $0, $0, 0
TAG182:
beq $2, $2, TAG183
divu $2, $2
sb $2, 0($2)
mthi $2
TAG183:
sll $0, $0, 0
beq $1, $1, TAG184
mult $2, $1
lhu $1, 0($1)
TAG184:
xori $1, $1, 15
lb $4, 0($1)
sb $4, 0($4)
lb $3, 0($4)
TAG185:
mflo $4
or $2, $4, $3
mflo $3
lbu $4, 0($2)
TAG186:
andi $2, $4, 15
addiu $1, $4, 5
mtlo $1
slt $2, $2, $2
TAG187:
beq $2, $2, TAG188
lui $1, 7
ori $2, $2, 4
beq $2, $1, TAG188
TAG188:
mthi $2
xor $3, $2, $2
lui $3, 15
lh $2, 0($2)
TAG189:
lbu $2, 0($2)
mflo $4
lui $1, 12
mflo $3
TAG190:
sh $3, 0($3)
sltiu $2, $3, 4
bne $3, $2, TAG191
mfhi $3
TAG191:
addiu $2, $3, 3
sll $1, $3, 6
lb $1, 0($2)
blez $3, TAG192
TAG192:
mtlo $1
mtlo $1
lhu $4, 0($1)
bne $1, $4, TAG193
TAG193:
mflo $2
sub $4, $2, $4
sw $4, 0($4)
srl $4, $2, 6
TAG194:
mflo $2
mthi $4
lw $4, 0($4)
beq $4, $4, TAG195
TAG195:
lb $2, 0($4)
mtlo $2
mflo $4
subu $3, $4, $4
TAG196:
addiu $3, $3, 11
sra $4, $3, 8
divu $3, $3
lui $1, 8
TAG197:
bltz $1, TAG198
addu $4, $1, $1
mfhi $2
mtlo $4
TAG198:
bgtz $2, TAG199
mfhi $1
multu $2, $1
lh $3, 0($1)
TAG199:
and $3, $3, $3
sb $3, 0($3)
lui $2, 0
mtlo $3
TAG200:
mult $2, $2
lui $1, 1
blez $1, TAG201
slti $4, $2, 2
TAG201:
mfhi $1
bne $4, $1, TAG202
sb $4, 0($4)
lb $4, 0($1)
TAG202:
addu $2, $4, $4
lui $4, 11
bgtz $4, TAG203
sll $1, $2, 12
TAG203:
sb $1, -8192($1)
blez $1, TAG204
mflo $2
mult $2, $2
TAG204:
srl $2, $2, 11
mult $2, $2
mult $2, $2
bgtz $2, TAG205
TAG205:
mfhi $1
lw $4, 0($2)
lui $3, 9
mthi $2
TAG206:
bgez $3, TAG207
mfhi $3
mthi $3
mthi $3
TAG207:
xori $1, $3, 0
mtlo $3
sltu $1, $3, $1
sra $2, $3, 14
TAG208:
mtlo $2
xor $1, $2, $2
mtlo $1
srlv $1, $2, $2
TAG209:
mflo $1
lw $4, 0($1)
bne $1, $1, TAG210
lui $2, 2
TAG210:
sll $0, $0, 0
blez $2, TAG211
mtlo $2
bgtz $2, TAG211
TAG211:
lui $2, 4
mult $2, $2
bne $2, $2, TAG212
srl $2, $2, 9
TAG212:
bgez $2, TAG213
mthi $2
lui $3, 11
bltz $3, TAG213
TAG213:
sh $3, 0($3)
mult $3, $3
lh $4, 0($3)
lui $1, 12
TAG214:
div $1, $1
subu $1, $1, $1
sb $1, 0($1)
lhu $3, 0($1)
TAG215:
nor $4, $3, $3
mult $3, $3
srlv $1, $3, $3
sw $1, 0($1)
TAG216:
lui $1, 9
subu $4, $1, $1
bltz $1, TAG217
mult $1, $1
TAG217:
lui $2, 13
mthi $4
bne $4, $4, TAG218
xori $3, $4, 2
TAG218:
lhu $4, 0($3)
sllv $3, $3, $3
mtlo $3
lb $4, 0($3)
TAG219:
lui $4, 12
mult $4, $4
nor $1, $4, $4
sltiu $1, $4, 15
TAG220:
mult $1, $1
sw $1, 0($1)
bne $1, $1, TAG221
mfhi $2
TAG221:
lw $1, 0($2)
mtlo $2
lw $4, 0($1)
bne $4, $4, TAG222
TAG222:
addiu $2, $4, 8
sh $4, 0($4)
bgez $2, TAG223
sra $1, $2, 9
TAG223:
mtlo $1
blez $1, TAG224
sb $1, 0($1)
bltz $1, TAG224
TAG224:
mfhi $4
sllv $3, $1, $1
beq $4, $1, TAG225
lui $2, 13
TAG225:
beq $2, $2, TAG226
srlv $1, $2, $2
beq $2, $2, TAG226
mfhi $4
TAG226:
lb $1, 0($4)
bgez $4, TAG227
addiu $3, $1, 2
bgez $1, TAG227
TAG227:
sb $3, 0($3)
mfhi $1
mult $1, $3
divu $3, $3
TAG228:
mflo $4
srl $2, $4, 13
mflo $3
lbu $4, 0($3)
TAG229:
mthi $4
mfhi $2
sw $2, 0($2)
mthi $2
TAG230:
mthi $2
blez $2, TAG231
mfhi $3
mult $3, $3
TAG231:
mfhi $3
sb $3, 0($3)
blez $3, TAG232
multu $3, $3
TAG232:
sltu $4, $3, $3
mtlo $4
mult $4, $3
mult $4, $3
TAG233:
lui $2, 2
beq $4, $4, TAG234
lui $4, 4
sw $4, 0($2)
TAG234:
nor $4, $4, $4
mfhi $1
sw $1, 0($1)
blez $4, TAG235
TAG235:
mtlo $1
lw $1, 0($1)
bne $1, $1, TAG236
lh $3, 0($1)
TAG236:
lbu $2, 0($3)
blez $2, TAG237
sltu $2, $2, $3
or $4, $2, $2
TAG237:
mtlo $4
mtlo $4
srlv $4, $4, $4
mthi $4
TAG238:
mthi $4
xori $4, $4, 6
sb $4, 0($4)
lui $2, 11
TAG239:
blez $2, TAG240
mfhi $1
nor $3, $2, $2
sllv $3, $3, $1
TAG240:
sll $0, $0, 0
sra $2, $3, 15
beq $2, $3, TAG241
lui $1, 13
TAG241:
mflo $1
multu $1, $1
sltiu $3, $1, 3
lui $3, 0
TAG242:
bgez $3, TAG243
lui $1, 7
srl $2, $3, 4
sltiu $3, $1, 9
TAG243:
add $2, $3, $3
mfhi $1
bne $1, $3, TAG244
subu $2, $2, $2
TAG244:
sll $3, $2, 5
mflo $2
srlv $1, $2, $3
lui $4, 15
TAG245:
mthi $4
sll $0, $0, 0
addiu $1, $4, 2
addu $4, $1, $1
TAG246:
blez $4, TAG247
multu $4, $4
sll $0, $0, 0
subu $3, $4, $4
TAG247:
slt $1, $3, $3
ori $3, $1, 15
lb $1, 0($3)
lui $4, 11
TAG248:
mflo $1
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
TAG249:
mflo $3
lui $1, 12
lui $1, 15
mult $1, $1
TAG250:
sll $0, $0, 0
divu $1, $1
bgtz $1, TAG251
multu $1, $1
TAG251:
div $1, $1
divu $1, $1
mthi $1
mtlo $1
TAG252:
mthi $1
bgtz $1, TAG253
mtlo $1
addu $1, $1, $1
TAG253:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 15
mthi $2
TAG254:
ori $1, $4, 2
multu $4, $4
sra $3, $1, 5
divu $1, $4
TAG255:
sll $0, $0, 0
divu $3, $3
bgez $4, TAG256
lui $1, 14
TAG256:
mthi $1
multu $1, $1
mfhi $3
sll $0, $0, 0
TAG257:
bne $3, $3, TAG258
xor $3, $3, $3
bgez $3, TAG258
lb $4, 0($3)
TAG258:
sb $4, 0($4)
bgtz $4, TAG259
mfhi $1
div $4, $1
TAG259:
mflo $2
lui $1, 15
andi $3, $1, 8
beq $3, $3, TAG260
TAG260:
lbu $1, 0($3)
multu $3, $1
and $1, $1, $1
multu $1, $3
TAG261:
mthi $1
bgez $1, TAG262
mult $1, $1
mflo $1
TAG262:
bne $1, $1, TAG263
sh $1, 0($1)
sllv $2, $1, $1
mflo $3
TAG263:
mthi $3
sh $3, 0($3)
sh $3, 0($3)
lui $1, 4
TAG264:
lui $3, 7
bne $1, $1, TAG265
mflo $3
blez $3, TAG265
TAG265:
sw $3, 0($3)
lui $3, 7
bltz $3, TAG266
addiu $2, $3, 6
TAG266:
mfhi $2
mtlo $2
sw $2, 0($2)
beq $2, $2, TAG267
TAG267:
lw $1, 0($2)
sltiu $2, $2, 8
multu $2, $1
lui $3, 6
TAG268:
blez $3, TAG269
lui $2, 12
addiu $1, $2, 0
mtlo $1
TAG269:
mtlo $1
sll $0, $0, 0
subu $4, $1, $1
lbu $2, 0($4)
TAG270:
bltz $2, TAG271
sh $2, 0($2)
sra $1, $2, 8
bgtz $2, TAG271
TAG271:
mtlo $1
sub $1, $1, $1
srl $2, $1, 15
srav $1, $1, $1
TAG272:
multu $1, $1
srav $4, $1, $1
sb $1, 0($1)
sb $4, 0($1)
TAG273:
mult $4, $4
bltz $4, TAG274
lw $4, 0($4)
lui $3, 14
TAG274:
divu $3, $3
mtlo $3
sll $0, $0, 0
bne $3, $1, TAG275
TAG275:
addi $3, $1, 2
sh $3, 0($3)
lui $3, 13
mflo $3
TAG276:
blez $3, TAG277
sll $0, $0, 0
beq $3, $3, TAG277
addu $3, $3, $3
TAG277:
sltiu $2, $3, 6
sb $3, 0($2)
srlv $2, $3, $3
sll $0, $0, 0
TAG278:
mtlo $3
div $3, $3
mfhi $1
and $4, $1, $1
TAG279:
bltz $4, TAG280
slti $4, $4, 13
sb $4, 0($4)
lb $2, 0($4)
TAG280:
beq $2, $2, TAG281
nor $4, $2, $2
divu $2, $4
mtlo $4
TAG281:
blez $4, TAG282
addiu $1, $4, 4
mult $1, $1
lb $1, 0($4)
TAG282:
sh $1, 0($1)
mthi $1
mfhi $3
addu $2, $1, $1
TAG283:
beq $2, $2, TAG284
lui $2, 0
lw $1, 0($2)
xori $2, $2, 2
TAG284:
sh $2, 0($2)
lb $2, 0($2)
mthi $2
lb $4, 0($2)
TAG285:
mtlo $4
mthi $4
mthi $4
mult $4, $4
TAG286:
mflo $1
bgez $4, TAG287
srl $4, $4, 13
lui $2, 14
TAG287:
mult $2, $2
mflo $4
mfhi $4
bne $4, $4, TAG288
TAG288:
addi $4, $4, 9
lui $1, 4
xor $1, $4, $1
sb $1, 0($4)
TAG289:
sltiu $1, $1, 5
sb $1, 0($1)
addiu $1, $1, 2
div $1, $1
TAG290:
sllv $4, $1, $1
sh $4, 0($1)
sw $4, 0($4)
sh $1, 0($1)
TAG291:
blez $4, TAG292
mflo $4
slti $4, $4, 14
bne $4, $4, TAG292
TAG292:
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
TAG293:
mflo $4
sw $1, 0($4)
srav $2, $1, $4
div $2, $1
TAG294:
mfhi $3
sb $2, 0($2)
mflo $4
beq $2, $2, TAG295
TAG295:
mfhi $4
xori $1, $4, 3
sra $4, $4, 1
mthi $4
TAG296:
mfhi $2
xori $2, $2, 0
sll $4, $2, 11
bltz $4, TAG297
TAG297:
multu $4, $4
bgez $4, TAG298
lh $2, 0($4)
mfhi $2
TAG298:
sh $2, 0($2)
sb $2, 0($2)
mflo $3
bgtz $2, TAG299
TAG299:
srav $4, $3, $3
mult $3, $3
blez $4, TAG300
multu $3, $3
TAG300:
sub $4, $4, $4
mfhi $2
lui $4, 11
mfhi $4
TAG301:
lw $4, 0($4)
sll $0, $0, 0
beq $4, $4, TAG302
sll $0, $0, 0
TAG302:
lui $1, 2
multu $4, $1
lui $1, 12
sll $0, $0, 0
TAG303:
sll $0, $0, 0
mtlo $1
mthi $1
addiu $3, $1, 15
TAG304:
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG305
lui $2, 11
TAG305:
slti $2, $2, 10
sllv $4, $2, $2
mult $2, $4
multu $2, $2
TAG306:
bne $4, $4, TAG307
mflo $4
mflo $3
mflo $4
TAG307:
sb $4, 0($4)
mult $4, $4
multu $4, $4
lb $1, 0($4)
TAG308:
bne $1, $1, TAG309
and $2, $1, $1
beq $1, $1, TAG309
nor $3, $2, $1
TAG309:
mthi $3
mflo $4
addiu $3, $3, 12
srlv $1, $3, $3
TAG310:
lui $1, 10
mfhi $3
sll $0, $0, 0
sra $4, $3, 7
TAG311:
beq $4, $4, TAG312
lbu $4, 1($4)
srlv $3, $4, $4
multu $4, $4
TAG312:
div $3, $3
divu $3, $3
sw $3, 1($3)
beq $3, $3, TAG313
TAG313:
andi $4, $3, 12
srlv $3, $4, $3
lb $4, 0($4)
mfhi $3
TAG314:
sw $3, 0($3)
addiu $3, $3, 1
bne $3, $3, TAG315
divu $3, $3
TAG315:
bne $3, $3, TAG316
lui $4, 4
subu $4, $3, $4
bltz $4, TAG316
TAG316:
mfhi $1
lh $1, 0($1)
lui $3, 0
mthi $1
TAG317:
lh $1, 0($3)
lui $1, 4
srl $4, $3, 11
multu $1, $3
TAG318:
bgez $4, TAG319
mult $4, $4
sw $4, 0($4)
lui $4, 8
TAG319:
bne $4, $4, TAG320
mthi $4
sw $4, 0($4)
beq $4, $4, TAG320
TAG320:
sb $4, 0($4)
mflo $1
bgez $4, TAG321
lui $3, 12
TAG321:
ori $1, $3, 11
lui $4, 12
slti $4, $3, 9
xor $3, $4, $1
TAG322:
addiu $2, $3, 14
lui $3, 6
sllv $4, $3, $3
sll $0, $0, 0
TAG323:
bne $3, $3, TAG324
multu $3, $3
lui $4, 5
sll $0, $0, 0
TAG324:
sll $0, $0, 0
mfhi $4
sb $4, 0($4)
mtlo $4
TAG325:
lui $2, 6
bgez $4, TAG326
addu $3, $2, $2
mtlo $3
TAG326:
bne $3, $3, TAG327
sllv $2, $3, $3
lui $1, 6
lui $2, 14
TAG327:
sltu $1, $2, $2
mfhi $4
mthi $2
blez $2, TAG328
TAG328:
mthi $4
multu $4, $4
slti $3, $4, 9
lui $3, 13
TAG329:
mthi $3
bne $3, $3, TAG330
sll $0, $0, 0
addu $3, $3, $3
TAG330:
lui $1, 3
bgez $3, TAG331
sll $0, $0, 0
sw $3, 0($3)
TAG331:
sll $0, $0, 0
sllv $4, $3, $3
mfhi $1
mfhi $2
TAG332:
lui $1, 6
sltiu $3, $2, 0
beq $2, $2, TAG333
lhu $4, 0($3)
TAG333:
mtlo $4
mthi $4
lui $1, 11
multu $4, $1
TAG334:
bne $1, $1, TAG335
mfhi $3
multu $1, $1
subu $2, $3, $3
TAG335:
lb $1, 0($2)
bne $1, $2, TAG336
addu $1, $1, $1
lh $3, 0($1)
TAG336:
sw $3, 0($3)
sw $3, 0($3)
mthi $3
multu $3, $3
TAG337:
beq $3, $3, TAG338
sra $2, $3, 3
and $4, $3, $3
mthi $4
TAG338:
bltz $4, TAG339
lui $2, 5
mfhi $2
mtlo $4
TAG339:
multu $2, $2
sltu $1, $2, $2
mfhi $3
lui $4, 15
TAG340:
lui $4, 10
div $4, $4
sll $0, $0, 0
or $1, $4, $4
TAG341:
beq $1, $1, TAG342
divu $1, $1
sw $1, 0($1)
lui $3, 8
TAG342:
mthi $3
sltiu $1, $3, 1
beq $1, $3, TAG343
mflo $2
TAG343:
beq $2, $2, TAG344
mtlo $2
add $2, $2, $2
sw $2, 0($2)
TAG344:
lbu $4, 0($2)
bgtz $4, TAG345
lbu $2, 0($4)
lhu $1, 0($2)
TAG345:
multu $1, $1
addu $2, $1, $1
bgtz $2, TAG346
mflo $2
TAG346:
mult $2, $2
lbu $4, 0($2)
mflo $2
mthi $4
TAG347:
sh $2, 0($2)
beq $2, $2, TAG348
lui $1, 11
sltiu $3, $1, 3
TAG348:
mtlo $3
multu $3, $3
ori $1, $3, 4
sll $3, $1, 10
TAG349:
mtlo $3
lh $4, -4096($3)
mthi $4
ori $3, $4, 1
TAG350:
beq $3, $3, TAG351
mflo $2
addiu $2, $3, 0
mthi $2
TAG351:
sb $2, -4096($2)
mtlo $2
xori $4, $2, 9
andi $3, $2, 13
TAG352:
mflo $4
lui $2, 15
lui $1, 4
slt $2, $4, $2
TAG353:
div $2, $2
sb $2, 0($2)
mfhi $1
nor $4, $2, $2
TAG354:
bgtz $4, TAG355
or $4, $4, $4
sh $4, 2($4)
andi $1, $4, 4
TAG355:
sw $1, 0($1)
mtlo $1
srl $3, $1, 0
lh $2, 0($1)
TAG356:
mthi $2
sw $2, 0($2)
ori $4, $2, 8
multu $2, $2
TAG357:
bne $4, $4, TAG358
lui $3, 1
sll $0, $0, 0
sll $0, $0, 0
TAG358:
ori $3, $2, 1
sltu $3, $3, $2
sw $3, 0($2)
mtlo $3
TAG359:
addu $4, $3, $3
mtlo $3
sb $4, 0($3)
lui $1, 9
TAG360:
div $1, $1
beq $1, $1, TAG361
subu $1, $1, $1
sh $1, 0($1)
TAG361:
multu $1, $1
bne $1, $1, TAG362
mfhi $1
multu $1, $1
TAG362:
lw $1, 0($1)
blez $1, TAG363
mflo $1
blez $1, TAG363
TAG363:
mflo $3
lbu $1, 0($1)
lw $2, 0($1)
mtlo $1
TAG364:
beq $2, $2, TAG365
mfhi $3
sh $2, 0($2)
slti $4, $3, 15
TAG365:
add $2, $4, $4
sb $4, 0($4)
multu $4, $2
mfhi $3
TAG366:
mthi $3
mfhi $4
beq $4, $3, TAG367
sh $3, 0($3)
TAG367:
beq $4, $4, TAG368
mflo $2
mult $4, $2
mthi $2
TAG368:
nor $3, $2, $2
lui $3, 6
mthi $3
multu $3, $2
TAG369:
multu $3, $3
addiu $3, $3, 10
lui $1, 10
mthi $1
TAG370:
addu $1, $1, $1
srlv $2, $1, $1
sll $0, $0, 0
div $2, $2
TAG371:
mfhi $2
xori $4, $2, 1
bltz $2, TAG372
lw $2, 0($2)
TAG372:
sb $2, 0($2)
bgez $2, TAG373
sw $2, 0($2)
mthi $2
TAG373:
beq $2, $2, TAG374
sllv $2, $2, $2
multu $2, $2
lbu $4, 0($2)
TAG374:
mflo $4
subu $2, $4, $4
bne $4, $4, TAG375
multu $2, $2
TAG375:
and $1, $2, $2
lui $3, 4
srav $1, $3, $3
sw $3, 0($2)
TAG376:
subu $3, $1, $1
ori $1, $1, 1
mtlo $1
beq $1, $1, TAG377
TAG377:
xori $1, $1, 13
mfhi $1
beq $1, $1, TAG378
srl $1, $1, 5
TAG378:
srl $4, $1, 3
mfhi $4
mfhi $1
bltz $1, TAG379
TAG379:
multu $1, $1
bne $1, $1, TAG380
sra $3, $1, 9
lui $1, 0
TAG380:
lhu $2, 0($1)
bgez $1, TAG381
srlv $1, $2, $1
lui $2, 0
TAG381:
multu $2, $2
beq $2, $2, TAG382
addu $4, $2, $2
divu $2, $2
TAG382:
lh $2, 0($4)
lw $2, 0($4)
bne $2, $2, TAG383
sltiu $2, $2, 11
TAG383:
lbu $2, 0($2)
mflo $2
add $2, $2, $2
bltz $2, TAG384
TAG384:
mult $2, $2
lhu $1, 0($2)
bltz $2, TAG385
lb $3, 0($1)
TAG385:
mthi $3
mfhi $1
srav $2, $1, $3
sll $1, $1, 8
TAG386:
multu $1, $1
lui $1, 2
xori $2, $1, 12
mult $1, $2
TAG387:
sll $0, $0, 0
addiu $4, $2, 1
sll $0, $0, 0
bgez $2, TAG388
TAG388:
sll $0, $0, 0
lui $3, 5
bne $4, $4, TAG389
addu $4, $3, $2
TAG389:
sll $0, $0, 0
mult $3, $4
mfhi $2
lui $2, 5
TAG390:
bne $2, $2, TAG391
lui $3, 8
mfhi $1
beq $2, $2, TAG391
TAG391:
lb $3, 0($1)
lui $3, 11
bgez $3, TAG392
lui $1, 0
TAG392:
multu $1, $1
sb $1, 0($1)
slti $4, $1, 7
lbu $2, 0($4)
TAG393:
blez $2, TAG394
lui $4, 10
nor $2, $4, $2
bgtz $2, TAG394
TAG394:
sb $2, 0($2)
mult $2, $2
bgtz $2, TAG395
sll $3, $2, 11
TAG395:
sllv $1, $3, $3
lbu $2, 0($1)
beq $1, $1, TAG396
sb $1, 0($1)
TAG396:
sw $2, 0($2)
bltz $2, TAG397
xori $3, $2, 4
mtlo $2
TAG397:
mthi $3
blez $3, TAG398
xori $2, $3, 12
divu $2, $2
TAG398:
mfhi $1
lw $4, 0($2)
sw $4, 0($1)
mtlo $2
TAG399:
mtlo $4
sltu $2, $4, $4
mthi $4
sh $2, 0($2)
TAG400:
lui $1, 0
multu $2, $2
mult $2, $2
sb $1, 0($1)
TAG401:
sw $1, 0($1)
sra $1, $1, 3
blez $1, TAG402
sw $1, 0($1)
TAG402:
sh $1, 0($1)
slti $3, $1, 12
lui $3, 2
mthi $1
TAG403:
mtlo $3
mult $3, $3
mthi $3
srl $4, $3, 4
TAG404:
srlv $2, $4, $4
lbu $3, -8192($4)
lui $1, 0
beq $1, $2, TAG405
TAG405:
mtlo $1
beq $1, $1, TAG406
sub $3, $1, $1
mflo $4
TAG406:
slti $3, $4, 15
mtlo $4
sb $4, -8192($4)
addiu $3, $3, 8
TAG407:
srlv $2, $3, $3
and $2, $3, $3
mflo $2
sb $2, -8192($2)
TAG408:
addiu $4, $2, 10
or $3, $2, $4
lb $3, -8202($4)
sw $2, -8192($2)
TAG409:
mthi $3
sw $3, 0($3)
mflo $3
lh $3, -8192($3)
TAG410:
mflo $3
sltiu $1, $3, 0
divu $1, $3
xor $4, $3, $3
TAG411:
bne $4, $4, TAG412
mult $4, $4
lui $2, 5
sltiu $3, $4, 1
TAG412:
xori $3, $3, 12
mfhi $4
mthi $3
mtlo $3
TAG413:
lw $3, 0($4)
blez $3, TAG414
mflo $3
sw $3, 0($3)
TAG414:
bne $3, $3, TAG415
addu $2, $3, $3
blez $3, TAG415
lui $3, 3
TAG415:
nor $3, $3, $3
bgez $3, TAG416
div $3, $3
mult $3, $3
TAG416:
beq $3, $3, TAG417
and $1, $3, $3
sllv $3, $1, $3
sll $3, $3, 11
TAG417:
mfhi $4
bgtz $4, TAG418
slti $2, $4, 15
bne $3, $4, TAG418
TAG418:
mtlo $2
bne $2, $2, TAG419
lbu $1, 0($2)
mult $2, $1
TAG419:
lbu $2, 0($1)
mfhi $2
lui $3, 2
lui $1, 4
TAG420:
bne $1, $1, TAG421
and $4, $1, $1
mthi $4
lui $1, 6
TAG421:
mthi $1
sll $0, $0, 0
subu $2, $1, $4
slti $1, $1, 6
TAG422:
bne $1, $1, TAG423
mfhi $1
sll $0, $0, 0
sltiu $3, $1, 3
TAG423:
lbu $2, 0($3)
lh $4, 0($2)
mflo $3
beq $2, $3, TAG424
TAG424:
sw $3, 0($3)
bne $3, $3, TAG425
lui $4, 0
mflo $3
TAG425:
lui $4, 15
mthi $4
mtlo $3
bgtz $3, TAG426
TAG426:
divu $4, $4
srav $1, $4, $4
nor $2, $1, $4
mflo $1
TAG427:
sb $1, 0($1)
lui $4, 8
bne $1, $1, TAG428
sra $3, $4, 13
TAG428:
beq $3, $3, TAG429
mthi $3
bgtz $3, TAG429
lw $2, 0($3)
TAG429:
sll $0, $0, 0
blez $4, TAG430
lui $4, 15
divu $4, $4
TAG430:
addu $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG431:
sltiu $4, $4, 11
mfhi $3
mflo $2
xori $1, $4, 14
TAG432:
bne $1, $1, TAG433
lui $4, 7
lui $4, 15
lb $1, 0($1)
TAG433:
xor $2, $1, $1
beq $2, $2, TAG434
mtlo $2
sll $1, $2, 9
TAG434:
mthi $1
mthi $1
ori $4, $1, 14
multu $4, $1
TAG435:
subu $1, $4, $4
bne $1, $4, TAG436
lui $3, 0
ori $4, $3, 15
TAG436:
lbu $1, 0($4)
mthi $4
lb $4, 0($4)
div $4, $4
TAG437:
beq $4, $4, TAG438
lb $1, 0($4)
multu $4, $1
bne $1, $1, TAG438
TAG438:
srav $4, $1, $1
mtlo $1
lbu $2, 0($4)
xori $4, $4, 13
TAG439:
lui $3, 0
beq $4, $4, TAG440
lui $2, 1
lw $1, 0($3)
TAG440:
mthi $1
sb $1, 0($1)
mflo $1
mtlo $1
TAG441:
xori $3, $1, 14
xor $3, $1, $1
bltz $3, TAG442
mult $3, $1
TAG442:
mflo $3
multu $3, $3
mtlo $3
sw $3, 0($3)
TAG443:
lui $2, 4
addi $1, $3, 7
lhu $1, 0($3)
sh $3, 0($1)
TAG444:
mfhi $2
mthi $2
lbu $4, 0($1)
mtlo $4
TAG445:
sb $4, 0($4)
sltiu $3, $4, 14
lui $4, 0
sllv $1, $4, $3
TAG446:
mfhi $1
mtlo $1
mthi $1
lui $3, 5
TAG447:
mult $3, $3
addu $2, $3, $3
sll $0, $0, 0
mult $2, $2
TAG448:
mthi $2
bltz $2, TAG449
sll $0, $0, 0
sll $0, $0, 0
TAG449:
sll $0, $0, 0
srav $4, $2, $2
sll $0, $0, 0
div $2, $2
TAG450:
beq $4, $4, TAG451
mult $4, $4
nor $4, $4, $4
sw $4, 0($4)
TAG451:
lui $1, 8
mtlo $1
divu $4, $4
sll $0, $0, 0
TAG452:
bgez $1, TAG453
lui $2, 12
mflo $2
mflo $1
TAG453:
sllv $1, $1, $1
sll $0, $0, 0
lui $1, 0
lbu $4, 0($1)
TAG454:
mflo $3
lb $4, 0($3)
bgtz $3, TAG455
mtlo $3
TAG455:
mthi $4
sw $4, 0($4)
beq $4, $4, TAG456
mfhi $1
TAG456:
beq $1, $1, TAG457
mflo $2
sb $2, 0($2)
beq $1, $2, TAG457
TAG457:
sb $2, 0($2)
blez $2, TAG458
lui $1, 7
mfhi $1
TAG458:
mflo $4
lbu $1, 0($1)
lui $1, 6
lui $4, 13
TAG459:
bgez $4, TAG460
sra $4, $4, 6
lb $2, 0($4)
mthi $4
TAG460:
divu $2, $2
sra $3, $2, 0
sb $2, 0($3)
mtlo $2
TAG461:
lb $4, 0($3)
lui $4, 8
bgez $3, TAG462
multu $4, $4
TAG462:
sll $0, $0, 0
beq $4, $4, TAG463
sll $0, $0, 0
div $4, $2
TAG463:
mtlo $2
bgez $2, TAG464
multu $2, $2
blez $2, TAG464
TAG464:
lb $1, 0($2)
lui $4, 8
bgez $2, TAG465
divu $4, $4
TAG465:
xori $3, $4, 9
lui $3, 4
sll $0, $0, 0
lui $4, 8
TAG466:
bgtz $4, TAG467
mfhi $4
mthi $4
divu $4, $4
TAG467:
sb $4, 0($4)
lui $3, 2
subu $4, $3, $3
lui $4, 14
TAG468:
mflo $4
bne $4, $4, TAG469
sb $4, 0($4)
lui $4, 13
TAG469:
mult $4, $4
divu $4, $4
mthi $4
ori $4, $4, 6
TAG470:
sll $0, $0, 0
bne $4, $4, TAG471
addiu $4, $4, 4
bltz $4, TAG471
TAG471:
slt $3, $4, $4
sll $0, $0, 0
mfhi $4
lui $4, 14
TAG472:
sll $0, $0, 0
mtlo $4
div $4, $4
sll $0, $0, 0
TAG473:
bne $4, $4, TAG474
lui $3, 9
sll $0, $0, 0
bgez $3, TAG474
TAG474:
mflo $3
lui $4, 6
sltu $3, $4, $3
mult $3, $4
TAG475:
multu $3, $3
mult $3, $3
ori $3, $3, 3
lui $2, 5
TAG476:
sll $0, $0, 0
beq $2, $2, TAG477
lui $3, 13
beq $3, $2, TAG477
TAG477:
divu $3, $3
bne $3, $3, TAG478
sll $2, $3, 6
slti $4, $3, 5
TAG478:
multu $4, $4
bne $4, $4, TAG479
sb $4, 0($4)
multu $4, $4
TAG479:
lh $4, 0($4)
mfhi $4
slti $3, $4, 1
mult $4, $4
TAG480:
bne $3, $3, TAG481
lui $3, 13
sll $0, $0, 0
beq $3, $3, TAG481
TAG481:
divu $3, $3
sll $0, $0, 0
blez $4, TAG482
addiu $2, $3, 0
TAG482:
beq $2, $2, TAG483
sll $0, $0, 0
bne $2, $2, TAG483
lui $4, 1
TAG483:
sb $4, 0($4)
add $1, $4, $4
beq $4, $1, TAG484
mthi $1
TAG484:
mthi $1
lw $1, 0($1)
sh $1, -256($1)
lui $1, 3
TAG485:
sll $0, $0, 0
slti $1, $1, 10
lhu $2, 0($1)
mfhi $3
TAG486:
bne $3, $3, TAG487
lbu $1, 0($3)
lui $1, 6
mflo $3
TAG487:
bne $3, $3, TAG488
sb $3, 0($3)
subu $3, $3, $3
mfhi $4
TAG488:
lui $3, 12
mthi $4
mfhi $1
bltz $4, TAG489
TAG489:
mfhi $2
mflo $3
divu $2, $3
mult $1, $1
TAG490:
mthi $3
blez $3, TAG491
divu $3, $3
addu $1, $3, $3
TAG491:
bne $1, $1, TAG492
mult $1, $1
and $4, $1, $1
lh $2, 0($1)
TAG492:
sb $2, 0($2)
sb $2, 0($2)
beq $2, $2, TAG493
multu $2, $2
TAG493:
mfhi $1
blez $2, TAG494
srav $1, $1, $1
srav $4, $1, $1
TAG494:
mthi $4
lui $2, 15
lui $3, 6
lui $1, 14
TAG495:
sltu $1, $1, $1
srl $1, $1, 8
multu $1, $1
sw $1, 0($1)
TAG496:
lui $4, 10
lb $2, 0($1)
mthi $2
mtlo $1
TAG497:
mthi $2
sltiu $1, $2, 1
mfhi $2
sb $1, 0($1)
TAG498:
sh $2, 0($2)
mult $2, $2
andi $1, $2, 4
bne $2, $2, TAG499
TAG499:
lw $2, 0($1)
slt $1, $2, $1
mtlo $2
mthi $2
TAG500:
bgez $1, TAG501
mfhi $1
bgtz $1, TAG501
lui $2, 9
TAG501:
xor $2, $2, $2
mflo $2
addiu $1, $2, 8
sll $1, $2, 14
TAG502:
lb $4, 0($1)
addu $3, $4, $1
slt $2, $4, $4
lb $3, 0($3)
TAG503:
lui $4, 15
lui $2, 9
lui $2, 12
sll $0, $0, 0
TAG504:
lui $2, 6
bgtz $2, TAG505
div $2, $2
lh $1, 0($2)
TAG505:
beq $1, $1, TAG506
lw $3, 0($1)
beq $1, $1, TAG506
lh $4, 0($1)
TAG506:
addu $3, $4, $4
bne $3, $4, TAG507
mult $4, $4
divu $3, $4
TAG507:
bgtz $3, TAG508
xori $2, $3, 12
multu $2, $2
beq $2, $3, TAG508
TAG508:
ori $3, $2, 12
sll $0, $0, 0
bltz $3, TAG509
lui $3, 4
TAG509:
mfhi $4
lui $2, 4
addu $3, $4, $2
beq $3, $3, TAG510
TAG510:
sll $0, $0, 0
sh $3, 0($1)
lhu $1, 0($1)
bne $1, $1, TAG511
TAG511:
srav $3, $1, $1
mthi $1
mtlo $1
lui $4, 1
TAG512:
mflo $1
lui $3, 9
srlv $4, $4, $4
bltz $1, TAG513
TAG513:
sll $0, $0, 0
blez $4, TAG514
or $3, $4, $4
divu $3, $3
TAG514:
sll $0, $0, 0
div $3, $3
mthi $3
blez $3, TAG515
TAG515:
mtlo $3
addiu $1, $3, 4
sll $0, $0, 0
sll $0, $0, 0
TAG516:
blez $3, TAG517
mfhi $1
sltu $2, $1, $1
lui $3, 6
TAG517:
sll $0, $0, 0
bltz $3, TAG518
sll $0, $0, 0
bne $4, $3, TAG518
TAG518:
slti $1, $4, 9
nor $2, $4, $4
mfhi $2
mthi $2
TAG519:
sll $0, $0, 0
mthi $2
blez $2, TAG520
sll $0, $0, 0
TAG520:
lw $3, 0($1)
mflo $2
bne $2, $1, TAG521
divu $3, $3
TAG521:
mthi $2
mtlo $2
mthi $2
lui $4, 6
TAG522:
bltz $4, TAG523
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG523:
mtlo $2
mfhi $2
srl $4, $2, 0
bltz $2, TAG524
TAG524:
lui $1, 0
bltz $4, TAG525
multu $4, $4
lui $2, 15
TAG525:
beq $2, $2, TAG526
lui $4, 11
slt $3, $4, $2
bgtz $4, TAG526
TAG526:
mthi $3
sb $3, -225($3)
sltiu $2, $3, 14
nor $4, $2, $3
TAG527:
sb $4, 226($4)
mflo $2
lhu $4, 0($2)
mtlo $4
TAG528:
lui $3, 5
mthi $4
sh $3, 0($4)
divu $3, $3
TAG529:
lui $3, 12
bne $3, $3, TAG530
lui $2, 4
beq $3, $2, TAG530
TAG530:
sll $0, $0, 0
sll $2, $2, 3
sll $0, $0, 0
multu $2, $1
TAG531:
srav $3, $1, $1
bgez $3, TAG532
multu $3, $3
lb $3, 0($3)
TAG532:
mfhi $1
mult $3, $3
mfhi $2
lb $2, 0($1)
TAG533:
mfhi $4
lui $3, 2
bne $2, $2, TAG534
mult $3, $2
TAG534:
mthi $3
bltz $3, TAG535
mfhi $2
bltz $2, TAG535
TAG535:
sll $2, $2, 9
lui $1, 6
and $3, $2, $2
mult $2, $2
TAG536:
or $3, $3, $3
divu $3, $3
nor $1, $3, $3
addiu $4, $1, 0
TAG537:
mult $4, $4
sll $0, $0, 0
mfhi $2
bgtz $4, TAG538
TAG538:
sll $0, $0, 0
lui $1, 5
sra $4, $2, 2
addiu $4, $1, 9
TAG539:
sll $0, $0, 0
sll $0, $0, 0
div $4, $3
subu $2, $4, $3
TAG540:
srlv $1, $2, $2
sll $0, $0, 0
sra $1, $1, 5
bne $1, $1, TAG541
TAG541:
lui $1, 14
mthi $1
srl $3, $1, 0
subu $2, $3, $1
TAG542:
nor $3, $2, $2
lui $1, 13
sw $1, 1($3)
mtlo $3
TAG543:
sll $0, $0, 0
bltz $1, TAG544
sll $0, $0, 0
mthi $4
TAG544:
andi $1, $4, 14
bne $1, $1, TAG545
mtlo $4
srl $2, $1, 7
TAG545:
bgtz $2, TAG546
lb $1, 0($2)
blez $1, TAG546
mflo $3
TAG546:
srlv $2, $3, $3
addu $3, $3, $2
blez $2, TAG547
sll $0, $0, 0
TAG547:
mult $3, $3
mult $3, $3
srav $3, $3, $3
mfhi $1
TAG548:
lb $2, 0($1)
mflo $1
sll $0, $0, 0
ori $2, $2, 4
TAG549:
lui $4, 13
bgtz $4, TAG550
sb $4, 0($2)
sw $2, 0($2)
TAG550:
beq $4, $4, TAG551
mfhi $2
mtlo $4
multu $2, $4
TAG551:
sb $2, 0($2)
mthi $2
mtlo $2
mflo $4
TAG552:
lui $4, 12
and $3, $4, $4
addu $4, $3, $3
bgtz $4, TAG553
TAG553:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
mfhi $1
TAG554:
sb $1, 0($1)
sb $1, 0($1)
subu $3, $1, $1
beq $3, $3, TAG555
TAG555:
lh $3, 0($3)
sh $3, 0($3)
lui $4, 1
sll $0, $0, 0
TAG556:
sll $0, $0, 0
lui $4, 8
addu $2, $4, $4
mflo $1
TAG557:
bne $1, $1, TAG558
divu $1, $1
subu $1, $1, $1
mult $1, $1
TAG558:
mtlo $1
bltz $1, TAG559
mult $1, $1
bgtz $1, TAG559
TAG559:
multu $1, $1
lh $2, 0($1)
mfhi $4
addiu $2, $4, 11
TAG560:
mtlo $2
mflo $2
sb $2, 0($2)
lui $2, 8
TAG561:
mtlo $2
addiu $4, $2, 4
and $2, $4, $2
mflo $4
TAG562:
lui $2, 8
bne $4, $2, TAG563
mflo $1
sll $0, $0, 0
TAG563:
lui $3, 0
slti $3, $3, 4
multu $3, $1
blez $1, TAG564
TAG564:
sb $3, 0($3)
srl $3, $3, 4
xori $4, $3, 13
mthi $3
TAG565:
srl $2, $4, 9
sb $2, 0($4)
lb $4, 0($4)
lui $2, 5
TAG566:
mflo $4
multu $4, $4
mfhi $3
bne $2, $3, TAG567
TAG567:
sllv $2, $3, $3
multu $2, $3
sw $3, 0($2)
lui $4, 10
TAG568:
mthi $4
lui $2, 2
mflo $2
divu $2, $2
TAG569:
beq $2, $2, TAG570
and $3, $2, $2
srlv $3, $2, $3
nor $4, $3, $2
TAG570:
mtlo $4
bne $4, $4, TAG571
mfhi $4
lbu $4, 0($4)
TAG571:
mthi $4
addi $2, $4, 7
lui $4, 6
mthi $2
TAG572:
addiu $4, $4, 14
mfhi $3
lui $3, 6
mtlo $4
TAG573:
mthi $3
mtlo $3
xori $3, $3, 1
slt $1, $3, $3
TAG574:
sb $1, 0($1)
lui $2, 4
lui $3, 7
beq $3, $1, TAG575
TAG575:
lui $1, 7
mthi $3
bne $3, $1, TAG576
sllv $2, $3, $3
TAG576:
sll $0, $0, 0
bne $2, $2, TAG577
mfhi $3
addiu $1, $2, 9
TAG577:
sll $4, $1, 10
mtlo $1
sra $2, $1, 0
bne $2, $1, TAG578
TAG578:
mfhi $2
sll $0, $0, 0
mult $2, $2
mfhi $1
TAG579:
sb $1, 0($1)
bne $1, $1, TAG580
lui $2, 0
slti $1, $2, 6
TAG580:
mfhi $2
bne $1, $2, TAG581
srl $1, $1, 9
bgtz $1, TAG581
TAG581:
lui $2, 3
multu $2, $1
bltz $1, TAG582
mthi $1
TAG582:
sll $0, $0, 0
beq $2, $2, TAG583
sll $0, $0, 0
mfhi $2
TAG583:
nor $1, $2, $2
bltz $2, TAG584
addu $1, $1, $2
lui $2, 10
TAG584:
slt $3, $2, $2
mult $2, $3
lui $1, 11
mtlo $3
TAG585:
divu $1, $1
divu $1, $1
bgtz $1, TAG586
multu $1, $1
TAG586:
mult $1, $1
sll $0, $0, 0
mult $1, $4
blez $1, TAG587
TAG587:
sll $0, $0, 0
sll $0, $0, 0
srl $1, $4, 9
beq $1, $1, TAG588
TAG588:
mfhi $2
mtlo $1
mtlo $2
beq $1, $1, TAG589
TAG589:
mtlo $2
bne $2, $2, TAG590
sltiu $4, $2, 1
lh $3, 0($4)
TAG590:
sb $3, -256($3)
lui $2, 2
mflo $4
srlv $2, $2, $3
TAG591:
mfhi $4
beq $4, $2, TAG592
sltiu $4, $4, 13
mtlo $2
TAG592:
beq $4, $4, TAG593
sllv $1, $4, $4
blez $1, TAG593
mtlo $4
TAG593:
bltz $1, TAG594
mthi $1
sb $1, 0($1)
mult $1, $1
TAG594:
sltu $2, $1, $1
mthi $2
sh $1, 0($2)
mflo $4
TAG595:
or $1, $4, $4
sb $1, 0($1)
lhu $1, 0($1)
sltiu $2, $1, 3
TAG596:
mthi $2
lb $1, 0($2)
addu $3, $2, $1
sltu $2, $3, $3
TAG597:
sb $2, 0($2)
mflo $4
xori $2, $4, 11
srlv $2, $2, $2
TAG598:
lui $3, 9
sltu $2, $3, $2
mfhi $2
lb $1, 0($2)
TAG599:
mflo $1
sw $1, 0($1)
bne $1, $1, TAG600
mtlo $1
TAG600:
lui $3, 12
srlv $1, $1, $1
mflo $2
mthi $1
TAG601:
lui $3, 4
mflo $4
beq $3, $3, TAG602
sll $0, $0, 0
TAG602:
lui $3, 0
bltz $4, TAG603
sw $3, 0($3)
lui $2, 14
TAG603:
mfhi $4
div $4, $2
sw $4, 0($4)
sll $0, $0, 0
TAG604:
mfhi $2
mflo $3
mult $2, $3
xori $3, $4, 4
TAG605:
sw $3, 0($3)
xor $4, $3, $3
sltiu $3, $4, 12
lhu $2, 0($4)
TAG606:
sub $4, $2, $2
mfhi $1
sh $4, 0($2)
sltiu $4, $2, 8
TAG607:
bgtz $4, TAG608
mflo $4
blez $4, TAG608
lui $3, 4
TAG608:
lbu $3, 0($3)
sb $3, 0($3)
bgez $3, TAG609
lb $3, 0($3)
TAG609:
bltz $3, TAG610
mult $3, $3
sh $3, 0($3)
lw $2, 0($3)
TAG610:
blez $2, TAG611
mtlo $2
bne $2, $2, TAG611
slti $3, $2, 8
TAG611:
mflo $4
mfhi $1
slti $4, $3, 13
bne $4, $4, TAG612
TAG612:
multu $4, $4
lbu $4, 0($4)
srl $3, $4, 4
multu $4, $4
TAG613:
mthi $3
and $3, $3, $3
lui $2, 14
blez $3, TAG614
TAG614:
sllv $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG615:
lh $3, 0($4)
lh $4, 0($3)
lui $1, 8
bgtz $4, TAG616
TAG616:
mult $1, $1
beq $1, $1, TAG617
mthi $1
lbu $1, 0($1)
TAG617:
bne $1, $1, TAG618
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG618:
multu $4, $4
lui $4, 4
blez $4, TAG619
mfhi $4
TAG619:
mflo $2
lhu $2, 0($4)
sh $4, 0($2)
mthi $2
TAG620:
sb $2, 0($2)
xori $4, $2, 14
beq $4, $2, TAG621
sw $2, 0($2)
TAG621:
lui $2, 6
srlv $2, $4, $4
beq $2, $2, TAG622
mfhi $3
TAG622:
lui $1, 5
bgez $1, TAG623
sll $0, $0, 0
bne $1, $1, TAG623
TAG623:
lui $4, 10
lui $2, 11
and $2, $4, $2
mthi $2
TAG624:
sra $1, $2, 12
lui $4, 2
mflo $3
srav $4, $4, $2
TAG625:
lui $4, 12
div $4, $4
blez $4, TAG626
sll $0, $0, 0
TAG626:
mtlo $4
lui $1, 9
bltz $1, TAG627
srav $1, $1, $1
TAG627:
divu $1, $1
mtlo $1
sll $0, $0, 0
mfhi $2
TAG628:
sh $2, 0($2)
mfhi $4
beq $4, $4, TAG629
lw $2, 0($2)
TAG629:
lui $2, 0
beq $2, $2, TAG630
mult $2, $2
sw $2, 0($2)
TAG630:
and $1, $2, $2
mflo $1
sllv $4, $1, $1
lui $1, 6
TAG631:
sll $0, $0, 0
blez $1, TAG632
lui $1, 15
beq $1, $1, TAG632
TAG632:
mflo $3
div $3, $1
sra $1, $3, 13
sw $1, 0($1)
TAG633:
multu $1, $1
lui $3, 0
ori $2, $1, 9
lhu $1, 0($3)
TAG634:
add $2, $1, $1
multu $1, $1
mflo $1
mthi $2
TAG635:
multu $1, $1
sb $1, 0($1)
sw $1, 0($1)
srl $4, $1, 5
TAG636:
sll $4, $4, 14
addiu $1, $4, 5
mtlo $4
bgtz $4, TAG637
TAG637:
sllv $2, $1, $1
mtlo $1
addiu $4, $1, 6
bltz $2, TAG638
TAG638:
srl $2, $4, 7
sh $2, 0($2)
sb $2, 0($4)
beq $2, $2, TAG639
TAG639:
multu $2, $2
lui $4, 9
bgtz $4, TAG640
lui $1, 9
TAG640:
sll $0, $0, 0
mflo $4
bltz $1, TAG641
srav $1, $4, $4
TAG641:
lhu $1, 0($1)
addi $1, $1, 14
mtlo $1
multu $1, $1
TAG642:
sltu $3, $1, $1
lui $4, 7
lui $2, 2
sltu $1, $1, $2
TAG643:
div $1, $1
mthi $1
bne $1, $1, TAG644
mflo $4
TAG644:
sra $1, $4, 0
sb $1, 0($1)
sb $4, 0($4)
lui $4, 10
TAG645:
div $4, $4
sll $0, $0, 0
bltz $2, TAG646
mult $4, $4
TAG646:
multu $2, $2
addu $2, $2, $2
divu $2, $2
bgez $2, TAG647
TAG647:
mtlo $2
divu $2, $2
lui $1, 1
mthi $2
TAG648:
mflo $4
mult $1, $1
bne $4, $1, TAG649
mtlo $1
TAG649:
mult $4, $4
bne $4, $4, TAG650
lbu $3, 0($4)
bltz $3, TAG650
TAG650:
lb $3, 0($3)
mflo $4
sb $3, 0($3)
blez $3, TAG651
TAG651:
divu $4, $4
and $3, $4, $4
lb $2, 0($3)
sb $4, 0($2)
TAG652:
mflo $3
divu $3, $3
divu $3, $2
sllv $4, $2, $2
TAG653:
srl $1, $4, 6
lbu $3, 0($4)
sltiu $1, $3, 2
sb $4, 0($4)
TAG654:
bltz $1, TAG655
sra $3, $1, 6
mult $3, $1
addi $2, $3, 9
TAG655:
mthi $2
beq $2, $2, TAG656
sb $2, 0($2)
blez $2, TAG656
TAG656:
srlv $4, $2, $2
mflo $1
lw $4, 0($4)
mult $4, $4
TAG657:
mfhi $4
multu $4, $4
bne $4, $4, TAG658
lhu $3, 0($4)
TAG658:
mflo $3
xor $3, $3, $3
sltu $3, $3, $3
addiu $4, $3, 2
TAG659:
subu $3, $4, $4
mult $4, $4
mfhi $2
bgtz $4, TAG660
TAG660:
multu $2, $2
lhu $3, 0($2)
slti $4, $3, 1
lb $1, 0($2)
TAG661:
multu $1, $1
slt $2, $1, $1
sb $1, 0($1)
subu $1, $1, $1
TAG662:
mthi $1
lui $4, 7
mflo $1
sll $0, $0, 0
TAG663:
sh $1, 0($1)
xori $4, $1, 0
mfhi $3
beq $3, $4, TAG664
TAG664:
ori $1, $3, 1
lui $2, 7
lui $4, 5
div $3, $1
TAG665:
lui $4, 0
and $1, $4, $4
lw $3, 0($4)
bgtz $4, TAG666
TAG666:
mult $3, $3
bgtz $3, TAG667
addiu $1, $3, 14
beq $3, $1, TAG667
TAG667:
mtlo $1
beq $1, $1, TAG668
sll $2, $1, 10
sh $2, 0($2)
TAG668:
lui $2, 4
sll $0, $0, 0
bgtz $2, TAG669
ori $3, $2, 8
TAG669:
bgtz $3, TAG670
mtlo $3
bgez $3, TAG670
sub $2, $3, $3
TAG670:
addiu $3, $2, 2
lui $3, 9
sll $0, $0, 0
blez $3, TAG671
TAG671:
lw $1, 0($4)
beq $1, $1, TAG672
sra $2, $4, 4
srl $2, $1, 2
TAG672:
sb $2, 0($2)
bne $2, $2, TAG673
sllv $1, $2, $2
lw $4, 0($2)
TAG673:
mthi $4
lui $2, 3
sll $0, $0, 0
mult $4, $2
TAG674:
sllv $2, $3, $3
andi $3, $3, 2
lui $1, 11
bltz $2, TAG675
TAG675:
mfhi $3
sll $3, $3, 2
divu $3, $3
beq $1, $3, TAG676
TAG676:
div $3, $3
beq $3, $3, TAG677
divu $3, $3
bne $3, $3, TAG677
TAG677:
lw $4, 0($3)
bne $3, $3, TAG678
ori $4, $3, 1
mflo $3
TAG678:
bgez $3, TAG679
mult $3, $3
multu $3, $3
lw $4, 0($3)
TAG679:
sltu $4, $4, $4
bltz $4, TAG680
lhu $3, 0($4)
beq $4, $3, TAG680
TAG680:
lui $4, 2
lbu $2, 0($3)
bltz $4, TAG681
addiu $2, $2, 10
TAG681:
bne $2, $2, TAG682
mult $2, $2
bltz $2, TAG682
lh $1, 0($2)
TAG682:
mtlo $1
beq $1, $1, TAG683
addu $2, $1, $1
bltz $2, TAG683
TAG683:
mtlo $2
mthi $2
blez $2, TAG684
srl $3, $2, 13
TAG684:
lb $3, 0($3)
beq $3, $3, TAG685
xori $4, $3, 12
sb $4, 0($3)
TAG685:
lui $3, 8
bgez $3, TAG686
lui $2, 2
div $2, $3
TAG686:
lui $2, 4
sll $0, $0, 0
subu $1, $2, $2
mthi $2
TAG687:
xori $4, $1, 7
div $1, $4
lbu $4, 0($4)
mult $4, $1
TAG688:
mthi $4
srl $2, $4, 6
bne $4, $4, TAG689
addiu $1, $2, 0
TAG689:
beq $1, $1, TAG690
mthi $1
mtlo $1
bne $1, $1, TAG690
TAG690:
mult $1, $1
sub $3, $1, $1
srlv $4, $3, $3
add $4, $4, $1
TAG691:
sb $4, 0($4)
bgtz $4, TAG692
mtlo $4
bgez $4, TAG692
TAG692:
mfhi $1
mtlo $4
bltz $4, TAG693
mthi $4
TAG693:
mflo $3
mtlo $1
lui $1, 14
mtlo $3
TAG694:
sra $1, $1, 7
lhu $2, -7168($1)
mult $1, $2
addi $1, $2, 10
TAG695:
lbu $1, 0($1)
mfhi $4
slti $3, $1, 11
sltiu $1, $3, 6
TAG696:
beq $1, $1, TAG697
lbu $2, 0($1)
mfhi $1
sltiu $4, $1, 3
TAG697:
blez $4, TAG698
lb $1, 0($4)
lui $1, 6
sllv $2, $1, $4
TAG698:
srav $3, $2, $2
lh $1, 0($3)
lbu $1, 0($3)
slti $1, $2, 12
TAG699:
lui $3, 3
mflo $4
mtlo $4
slt $1, $4, $4
TAG700:
sra $1, $1, 14
srav $1, $1, $1
mflo $1
lhu $4, 0($1)
TAG701:
bne $4, $4, TAG702
lb $2, 0($4)
sb $2, 0($2)
mthi $4
TAG702:
lui $2, 3
mtlo $2
lui $1, 14
mthi $1
TAG703:
and $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG704:
mflo $1
lui $1, 6
multu $2, $1
divu $1, $2
TAG705:
mthi $1
bgtz $1, TAG706
sll $0, $0, 0
lh $4, 0($1)
TAG706:
lh $4, 0($4)
srl $1, $4, 6
multu $4, $4
mfhi $2
TAG707:
mflo $3
mfhi $3
sb $2, 0($3)
sw $3, 0($3)
TAG708:
lh $4, 0($3)
sb $3, 0($3)
multu $3, $3
lui $3, 8
TAG709:
mflo $3
ori $3, $3, 7
mult $3, $3
sra $4, $3, 9
TAG710:
lui $3, 5
sh $3, 0($4)
or $1, $4, $3
mult $1, $4
TAG711:
mfhi $4
or $4, $1, $4
sll $0, $0, 0
sll $1, $4, 7
TAG712:
bne $1, $1, TAG713
sll $3, $1, 8
mflo $4
mthi $1
TAG713:
sb $4, 0($4)
xori $4, $4, 0
sb $4, 0($4)
lb $3, 0($4)
TAG714:
lw $4, 0($3)
sb $4, 0($4)
xor $2, $3, $3
mult $3, $4
TAG715:
mult $2, $2
mtlo $2
bne $2, $2, TAG716
sltiu $1, $2, 6
TAG716:
lui $4, 3
lui $1, 1
blez $1, TAG717
lui $4, 9
TAG717:
mtlo $4
sltu $4, $4, $4
bltz $4, TAG718
mflo $4
TAG718:
xori $2, $4, 0
srlv $3, $2, $2
bltz $2, TAG719
mthi $4
TAG719:
divu $3, $3
sll $0, $0, 0
ori $4, $3, 14
mtlo $4
TAG720:
mtlo $4
sll $0, $0, 0
lui $4, 14
mult $4, $4
TAG721:
blez $4, TAG722
divu $4, $4
bne $4, $4, TAG722
sltu $3, $4, $4
TAG722:
bne $3, $3, TAG723
lw $2, 0($3)
lui $3, 4
sltiu $4, $3, 13
TAG723:
addi $1, $4, 9
subu $4, $4, $1
multu $4, $4
lui $3, 5
TAG724:
xor $4, $3, $3
mfhi $2
lbu $4, 0($4)
blez $3, TAG725
TAG725:
lui $2, 13
nor $1, $4, $4
bgtz $2, TAG726
mtlo $1
TAG726:
mflo $4
nor $4, $4, $4
mfhi $2
addu $3, $4, $1
TAG727:
divu $3, $3
lui $2, 6
mflo $4
mthi $2
TAG728:
sll $1, $4, 4
bgtz $1, TAG729
lui $2, 11
sltu $1, $4, $2
TAG729:
srav $4, $1, $1
lui $3, 5
srl $3, $4, 1
mtlo $1
TAG730:
beq $3, $3, TAG731
lw $3, 0($3)
bgez $3, TAG731
mthi $3
TAG731:
srl $1, $3, 5
sll $1, $1, 7
lui $3, 0
blez $3, TAG732
TAG732:
lui $3, 8
bne $3, $3, TAG733
mflo $2
sll $0, $0, 0
TAG733:
mtlo $2
beq $2, $2, TAG734
srav $4, $2, $2
xori $3, $2, 0
TAG734:
sra $1, $3, 2
lui $3, 11
mthi $3
ori $1, $3, 4
TAG735:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG736:
mtlo $1
mfhi $3
sll $0, $0, 0
mtlo $1
TAG737:
sll $0, $0, 0
bgtz $3, TAG738
mfhi $3
sra $2, $3, 13
TAG738:
bgez $2, TAG739
andi $3, $2, 6
mfhi $2
lb $4, 0($2)
TAG739:
xori $1, $4, 8
mult $4, $4
bne $1, $1, TAG740
lui $1, 14
TAG740:
sll $0, $0, 0
bne $1, $1, TAG741
mflo $3
addiu $3, $1, 5
TAG741:
bne $3, $3, TAG742
mflo $4
addiu $2, $3, 0
mfhi $2
TAG742:
bne $2, $2, TAG743
mult $2, $2
lbu $3, 0($2)
lui $1, 12
TAG743:
multu $1, $1
sll $0, $0, 0
nor $2, $3, $1
addu $2, $2, $2
TAG744:
sll $0, $0, 0
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG745:
subu $2, $2, $2
lui $4, 0
mthi $2
sh $2, 0($2)
TAG746:
or $1, $4, $4
beq $4, $1, TAG747
mult $4, $1
bne $4, $1, TAG747
TAG747:
sh $1, 0($1)
mflo $2
mthi $1
mthi $2
TAG748:
bgtz $2, TAG749
mfhi $4
bne $4, $4, TAG749
slti $4, $4, 14
TAG749:
bgez $4, TAG750
mflo $3
sw $4, 0($4)
subu $2, $4, $4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop