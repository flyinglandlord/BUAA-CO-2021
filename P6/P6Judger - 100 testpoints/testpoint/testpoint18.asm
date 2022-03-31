ori $1, $0, 1
ori $2, $0, 1
ori $3, $0, 11
ori $4, $0, 12
sw $1, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $3, 32($0)
sw $1, 36($0)
sw $4, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $2, 124($0)
subu $1, $2, $2
lw $1, 0($1)
sltu $1, $2, $1
beq $1, $1, TAG1
TAG1:
lui $1, 3
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG2:
mflo $4
lui $1, 0
lh $3, 0($1)
sb $1, 0($1)
TAG3:
multu $3, $3
lui $3, 0
mthi $3
sllv $3, $3, $3
TAG4:
mtlo $3
sub $3, $3, $3
bgez $3, TAG5
multu $3, $3
TAG5:
mflo $3
mflo $3
sh $3, 0($3)
sb $3, 0($3)
TAG6:
lw $4, 0($3)
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
TAG7:
div $1, $1
sll $0, $0, 0
addiu $3, $1, 14
xor $3, $3, $1
TAG8:
lui $2, 7
mflo $4
sb $3, 0($4)
sltu $1, $2, $2
TAG9:
lui $3, 11
sll $0, $0, 0
slti $3, $1, 10
mfhi $3
TAG10:
mult $3, $3
mthi $3
mflo $3
andi $2, $3, 10
TAG11:
bgez $2, TAG12
mfhi $4
ori $4, $4, 7
beq $4, $2, TAG12
TAG12:
mtlo $4
bltz $4, TAG13
sltu $1, $4, $4
srl $2, $1, 0
TAG13:
mflo $1
lui $1, 14
bne $1, $2, TAG14
mfhi $3
TAG14:
sub $3, $3, $3
ori $4, $3, 14
multu $4, $3
addiu $4, $3, 0
TAG15:
lb $4, 0($4)
mult $4, $4
bgez $4, TAG16
mflo $4
TAG16:
mflo $1
sb $4, 0($4)
mthi $1
beq $1, $4, TAG17
TAG17:
lui $3, 13
addu $3, $1, $1
mthi $1
bne $1, $3, TAG18
TAG18:
lb $2, 0($3)
lui $4, 12
mtlo $4
sltu $2, $3, $3
TAG19:
bgez $2, TAG20
sub $1, $2, $2
blez $2, TAG20
ori $1, $1, 12
TAG20:
srav $1, $1, $1
lhu $2, 0($1)
addu $3, $2, $2
bgtz $2, TAG21
TAG21:
mtlo $3
bne $3, $3, TAG22
mtlo $3
nor $3, $3, $3
TAG22:
srl $2, $3, 0
lui $1, 9
mtlo $2
mfhi $1
TAG23:
add $3, $1, $1
sh $3, 0($3)
mflo $4
mflo $3
TAG24:
mtlo $3
lbu $4, 7169($3)
lui $3, 6
mtlo $3
TAG25:
mflo $3
mflo $1
sll $0, $0, 0
mthi $3
TAG26:
sll $0, $0, 0
lui $3, 1
sra $1, $3, 0
sll $0, $0, 0
TAG27:
bne $1, $1, TAG28
lui $3, 0
mfhi $4
mfhi $2
TAG28:
mflo $4
mtlo $4
bgtz $2, TAG29
divu $2, $2
TAG29:
mflo $2
lui $1, 10
lb $4, 0($2)
beq $2, $4, TAG30
TAG30:
mtlo $4
mthi $4
ori $4, $4, 6
bne $4, $4, TAG31
TAG31:
lb $1, 0($4)
bgez $4, TAG32
addiu $1, $4, 2
lui $1, 15
TAG32:
sh $1, 0($1)
multu $1, $1
mult $1, $1
mfhi $4
TAG33:
lui $3, 15
sll $0, $0, 0
lbu $2, 0($4)
lui $4, 9
TAG34:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG35:
sh $2, 0($2)
multu $2, $2
mult $2, $2
sw $2, 0($2)
TAG36:
mtlo $2
ori $2, $2, 4
sltu $4, $2, $2
xor $4, $4, $2
TAG37:
lbu $2, 0($4)
xori $2, $2, 5
lui $1, 7
blez $4, TAG38
TAG38:
subu $1, $1, $1
add $2, $1, $1
mtlo $2
sra $2, $1, 9
TAG39:
blez $2, TAG40
lb $4, 0($2)
sb $4, 0($2)
subu $3, $2, $2
TAG40:
bltz $3, TAG41
mtlo $3
div $3, $3
mthi $3
TAG41:
xor $1, $3, $3
beq $3, $1, TAG42
sll $0, $0, 0
bgtz $3, TAG42
TAG42:
div $3, $3
mfhi $4
bltz $3, TAG43
multu $3, $4
TAG43:
bltz $4, TAG44
lui $3, 6
mthi $3
lui $4, 2
TAG44:
xor $2, $4, $4
bltz $2, TAG45
sw $2, 0($2)
mflo $2
TAG45:
mfhi $2
bne $2, $2, TAG46
sll $0, $0, 0
lui $2, 5
TAG46:
mtlo $2
blez $2, TAG47
lui $1, 1
lui $2, 5
TAG47:
bltz $2, TAG48
addiu $3, $2, 3
sll $0, $0, 0
lui $3, 15
TAG48:
bne $3, $3, TAG49
mtlo $3
mfhi $4
bltz $4, TAG49
TAG49:
sll $0, $0, 0
mtlo $4
mflo $2
sll $0, $0, 0
TAG50:
multu $2, $2
xori $4, $2, 7
slt $3, $4, $4
srl $2, $2, 15
TAG51:
subu $1, $2, $2
bne $2, $1, TAG52
addiu $2, $2, 9
srlv $2, $2, $2
TAG52:
sb $2, 0($2)
bgtz $2, TAG53
mflo $2
divu $2, $2
TAG53:
bne $2, $2, TAG54
sb $2, 0($2)
addiu $1, $2, 4
mult $2, $2
TAG54:
lui $2, 7
mthi $1
mflo $2
mtlo $2
TAG55:
mtlo $2
addiu $3, $2, 13
beq $2, $2, TAG56
sh $3, 0($2)
TAG56:
div $3, $3
bne $3, $3, TAG57
sb $3, 0($3)
lb $3, 0($3)
TAG57:
blez $3, TAG58
lui $3, 13
beq $3, $3, TAG58
mflo $4
TAG58:
lui $4, 7
sll $0, $0, 0
mflo $4
multu $4, $4
TAG59:
multu $4, $4
sllv $2, $4, $4
mflo $3
lbu $4, 0($3)
TAG60:
sh $4, 0($4)
nor $3, $4, $4
lbu $4, 0($4)
lb $3, 0($4)
TAG61:
blez $3, TAG62
subu $3, $3, $3
mtlo $3
mflo $3
TAG62:
srav $1, $3, $3
mtlo $1
bgtz $3, TAG63
mult $1, $3
TAG63:
mflo $2
lb $4, 0($1)
mult $4, $4
bgez $4, TAG64
TAG64:
sh $4, 0($4)
lui $1, 12
lui $3, 8
sb $3, 0($4)
TAG65:
blez $3, TAG66
multu $3, $3
mfhi $4
sra $1, $3, 8
TAG66:
sh $1, -2048($1)
srl $1, $1, 0
lui $1, 1
mtlo $1
TAG67:
bltz $1, TAG68
lui $3, 10
srl $2, $3, 15
beq $2, $2, TAG68
TAG68:
sb $2, 0($2)
sb $2, 0($2)
bne $2, $2, TAG69
sltu $3, $2, $2
TAG69:
lw $1, 0($3)
sh $1, -2048($1)
divu $3, $1
sltu $2, $1, $1
TAG70:
lb $1, 0($2)
add $1, $1, $1
beq $1, $2, TAG71
addiu $4, $1, 2
TAG71:
divu $4, $4
srav $4, $4, $4
xori $1, $4, 7
sw $4, 0($4)
TAG72:
sll $1, $1, 10
sw $1, -7168($1)
sltu $4, $1, $1
multu $1, $4
TAG73:
bgez $4, TAG74
lui $1, 8
sb $4, 0($1)
bltz $4, TAG74
TAG74:
sll $0, $0, 0
sll $0, $0, 0
ori $3, $3, 14
ori $3, $1, 10
TAG75:
mfhi $3
lw $2, 0($3)
sb $2, 0($3)
lui $2, 7
TAG76:
srav $2, $2, $2
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG77:
lui $3, 11
lui $1, 13
andi $3, $3, 10
bne $3, $1, TAG78
TAG78:
mthi $3
mult $3, $3
bgtz $3, TAG79
lui $4, 10
TAG79:
sll $0, $0, 0
sb $4, 0($3)
mflo $4
srl $2, $4, 8
TAG80:
bne $2, $2, TAG81
addi $4, $2, 4
mtlo $2
lhu $1, 0($4)
TAG81:
divu $1, $1
beq $1, $1, TAG82
lb $4, 0($1)
xori $4, $4, 1
TAG82:
mtlo $4
bne $4, $4, TAG83
sb $4, 0($4)
beq $4, $4, TAG83
TAG83:
mflo $4
bne $4, $4, TAG84
mthi $4
bgez $4, TAG84
TAG84:
sltu $3, $4, $4
sw $4, 0($3)
mtlo $4
bgtz $4, TAG85
TAG85:
lhu $3, 0($3)
lui $4, 6
sh $4, 0($3)
bne $3, $3, TAG86
TAG86:
mthi $4
sll $0, $0, 0
addu $2, $1, $4
mflo $1
TAG87:
slt $3, $1, $1
lui $3, 15
subu $2, $1, $3
mfhi $2
TAG88:
sll $0, $0, 0
div $2, $2
mult $2, $2
lui $4, 4
TAG89:
mflo $1
bltz $4, TAG90
multu $1, $4
mfhi $1
TAG90:
mfhi $4
multu $4, $1
sb $4, 0($4)
addi $4, $1, 3
TAG91:
sltu $2, $4, $4
sb $2, 0($2)
bltz $4, TAG92
multu $2, $4
TAG92:
mtlo $2
bgez $2, TAG93
sllv $4, $2, $2
or $1, $4, $2
TAG93:
lui $1, 0
srlv $2, $1, $1
beq $2, $1, TAG94
lui $4, 11
TAG94:
lui $3, 5
sll $0, $0, 0
bltz $4, TAG95
sll $0, $0, 0
TAG95:
bne $3, $3, TAG96
or $4, $3, $3
lui $4, 8
mult $4, $4
TAG96:
sll $0, $0, 0
mthi $4
addu $4, $4, $4
blez $4, TAG97
TAG97:
addiu $2, $4, 14
mult $4, $2
sll $0, $0, 0
mflo $2
TAG98:
lui $1, 12
sra $3, $1, 2
lui $4, 4
srav $2, $1, $4
TAG99:
bgez $2, TAG100
mfhi $4
lui $2, 10
bgez $4, TAG100
TAG100:
mfhi $4
mfhi $2
divu $2, $2
lui $1, 13
TAG101:
mfhi $3
mflo $2
ori $4, $2, 0
lui $2, 2
TAG102:
bltz $2, TAG103
srl $2, $2, 13
mtlo $2
lui $4, 3
TAG103:
lui $3, 6
slt $3, $4, $3
slti $4, $3, 7
srav $1, $3, $3
TAG104:
blez $1, TAG105
slti $3, $1, 3
srl $2, $3, 8
ori $4, $3, 13
TAG105:
xor $4, $4, $4
mtlo $4
bne $4, $4, TAG106
mthi $4
TAG106:
lw $1, 0($4)
multu $1, $4
sb $1, 0($4)
lh $2, 0($1)
TAG107:
sb $2, 0($2)
or $3, $2, $2
and $4, $3, $2
sltiu $3, $3, 6
TAG108:
sb $3, 0($3)
div $3, $3
bltz $3, TAG109
mflo $2
TAG109:
lui $3, 7
mthi $2
xori $1, $3, 2
lb $1, 0($2)
TAG110:
mflo $3
lui $2, 1
sllv $4, $1, $1
subu $2, $1, $4
TAG111:
sb $2, 1($2)
bgtz $2, TAG112
mfhi $2
lui $2, 12
TAG112:
srl $4, $2, 11
lui $4, 13
srl $3, $4, 12
beq $4, $4, TAG113
TAG113:
mfhi $3
lb $1, 0($3)
bne $3, $3, TAG114
lbu $1, 0($1)
TAG114:
mflo $4
mfhi $1
bne $4, $1, TAG115
slti $3, $1, 8
TAG115:
mthi $3
mflo $3
mfhi $4
sb $3, 0($3)
TAG116:
mtlo $4
bgez $4, TAG117
lbu $1, 0($4)
beq $4, $1, TAG117
TAG117:
lb $2, 0($1)
divu $1, $1
beq $1, $1, TAG118
sb $1, 0($1)
TAG118:
sb $2, 0($2)
mfhi $2
andi $1, $2, 10
bne $2, $1, TAG119
TAG119:
mult $1, $1
mflo $4
ori $4, $4, 14
mflo $3
TAG120:
mult $3, $3
mtlo $3
slt $2, $3, $3
beq $3, $3, TAG121
TAG121:
mflo $1
mfhi $3
lui $4, 12
blez $1, TAG122
TAG122:
andi $1, $4, 1
sll $0, $0, 0
sltu $4, $1, $4
mtlo $4
TAG123:
mflo $4
mflo $3
mthi $3
lui $1, 2
TAG124:
blez $1, TAG125
mflo $3
lui $2, 5
mflo $4
TAG125:
bgtz $4, TAG126
nor $2, $4, $4
bltz $2, TAG126
mtlo $2
TAG126:
mfhi $2
bltz $2, TAG127
mtlo $2
lui $1, 13
TAG127:
beq $1, $1, TAG128
lui $2, 5
bne $2, $2, TAG128
sra $4, $2, 3
TAG128:
mtlo $4
bgtz $4, TAG129
mtlo $4
sh $4, 0($4)
TAG129:
ori $2, $4, 14
sb $4, 0($2)
lbu $1, 0($4)
addiu $2, $2, 6
TAG130:
lui $3, 5
bgtz $2, TAG131
slti $2, $3, 8
bltz $2, TAG131
TAG131:
lui $1, 10
srl $4, $1, 0
divu $1, $4
blez $1, TAG132
TAG132:
mflo $4
lbu $2, 0($4)
mfhi $3
lw $4, 0($3)
TAG133:
div $4, $4
divu $4, $4
sra $3, $4, 7
xori $1, $3, 0
TAG134:
srl $1, $1, 14
beq $1, $1, TAG135
srl $3, $1, 1
mfhi $4
TAG135:
sll $1, $4, 14
mtlo $4
sll $0, $0, 0
mflo $4
TAG136:
mfhi $4
ori $1, $4, 7
lh $2, 0($4)
sltiu $3, $4, 11
TAG137:
sb $3, 0($3)
beq $3, $3, TAG138
mtlo $3
mthi $3
TAG138:
slti $2, $3, 11
mfhi $2
blez $2, TAG139
multu $3, $2
TAG139:
bne $2, $2, TAG140
mthi $2
mtlo $2
bgtz $2, TAG140
TAG140:
lui $4, 0
sb $2, 0($2)
blez $4, TAG141
sltu $4, $2, $4
TAG141:
blez $4, TAG142
lui $3, 3
addiu $3, $3, 5
mfhi $4
TAG142:
lui $1, 10
multu $4, $4
bgez $4, TAG143
andi $3, $4, 14
TAG143:
andi $3, $3, 15
lui $1, 0
bgtz $3, TAG144
mflo $2
TAG144:
lb $3, 0($2)
lui $4, 2
bgez $3, TAG145
mthi $4
TAG145:
sll $0, $0, 0
bltz $4, TAG146
divu $4, $4
mult $4, $4
TAG146:
sll $0, $0, 0
lui $2, 3
subu $2, $2, $4
beq $4, $2, TAG147
TAG147:
lui $2, 7
mflo $4
sll $0, $0, 0
bne $2, $2, TAG148
TAG148:
mtlo $2
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG149:
lui $4, 9
addiu $1, $4, 7
multu $1, $4
slt $4, $1, $1
TAG150:
xori $1, $4, 1
lb $4, 0($1)
or $4, $4, $4
lui $3, 13
TAG151:
div $3, $3
mtlo $3
multu $3, $3
sll $0, $0, 0
TAG152:
lui $4, 9
beq $4, $3, TAG153
xor $4, $4, $4
mthi $4
TAG153:
mthi $4
mflo $4
mult $4, $4
sra $2, $4, 3
TAG154:
sw $2, 0($2)
lbu $2, 0($2)
mfhi $3
lui $3, 5
TAG155:
lui $2, 8
sll $0, $0, 0
bgez $3, TAG156
mfhi $4
TAG156:
addi $4, $4, 11
lbu $2, 0($4)
sb $2, 0($4)
mflo $2
TAG157:
mult $2, $2
sb $2, 0($2)
multu $2, $2
mult $2, $2
TAG158:
bne $2, $2, TAG159
subu $2, $2, $2
mflo $2
mtlo $2
TAG159:
and $3, $2, $2
mult $2, $2
sb $3, 0($3)
bgez $2, TAG160
TAG160:
sh $3, 0($3)
slt $1, $3, $3
mflo $3
lb $1, 0($3)
TAG161:
srlv $2, $1, $1
multu $1, $2
lui $1, 9
mflo $4
TAG162:
ori $4, $4, 2
ori $1, $4, 12
slt $2, $1, $4
srlv $2, $2, $4
TAG163:
lui $2, 5
srlv $1, $2, $2
srav $2, $2, $2
or $4, $2, $2
TAG164:
srl $4, $4, 2
mthi $4
mtlo $4
sll $0, $0, 0
TAG165:
lui $3, 6
divu $3, $4
lui $4, 6
bltz $4, TAG166
TAG166:
sll $0, $0, 0
lui $2, 2
mfhi $4
mthi $4
TAG167:
sll $0, $0, 0
mflo $2
mtlo $2
mflo $1
TAG168:
beq $1, $1, TAG169
mfhi $3
sw $3, 0($3)
and $2, $1, $3
TAG169:
divu $2, $2
lh $3, 0($2)
divu $2, $3
bgez $3, TAG170
TAG170:
mtlo $3
sb $3, 0($3)
bgtz $3, TAG171
lb $4, 0($3)
TAG171:
srl $1, $4, 4
sll $3, $1, 13
lui $4, 7
mthi $4
TAG172:
lui $2, 14
bne $4, $4, TAG173
lui $4, 4
mtlo $2
TAG173:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
addu $2, $2, $4
TAG174:
lui $3, 7
divu $2, $3
sll $0, $0, 0
bne $2, $2, TAG175
TAG175:
srlv $1, $2, $2
mthi $1
mtlo $1
sll $0, $0, 0
TAG176:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $1
lui $3, 9
TAG177:
lui $2, 12
sll $0, $0, 0
blez $3, TAG178
div $3, $3
TAG178:
addiu $4, $2, 6
lui $3, 6
sll $0, $0, 0
bgez $4, TAG179
TAG179:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
bgtz $2, TAG180
TAG180:
mtlo $2
mthi $2
multu $2, $2
and $4, $2, $2
TAG181:
addu $3, $4, $4
sll $0, $0, 0
lui $4, 6
andi $3, $4, 4
TAG182:
lb $4, 0($3)
lbu $2, 0($3)
addi $4, $3, 9
mtlo $2
TAG183:
lb $1, 0($4)
sll $1, $1, 13
beq $1, $1, TAG184
lui $3, 3
TAG184:
or $2, $3, $3
lui $2, 6
mtlo $2
sll $0, $0, 0
TAG185:
beq $3, $3, TAG186
lui $2, 9
mthi $3
ori $2, $2, 1
TAG186:
sra $2, $2, 14
mthi $2
multu $2, $2
mfhi $3
TAG187:
subu $2, $3, $3
bgtz $3, TAG188
mflo $3
blez $2, TAG188
TAG188:
addu $2, $3, $3
mflo $4
lui $3, 15
slti $1, $3, 2
TAG189:
lh $3, 0($1)
sltiu $4, $1, 7
div $3, $4
mfhi $2
TAG190:
sb $2, 0($2)
blez $2, TAG191
lh $1, 0($2)
mtlo $1
TAG191:
mthi $1
lui $2, 2
lui $4, 0
andi $2, $1, 15
TAG192:
beq $2, $2, TAG193
mthi $2
beq $2, $2, TAG193
mthi $2
TAG193:
sh $2, 0($2)
lui $1, 0
sll $3, $1, 13
beq $3, $2, TAG194
TAG194:
sh $3, 0($3)
mtlo $3
and $3, $3, $3
srlv $3, $3, $3
TAG195:
lui $1, 5
sll $0, $0, 0
lui $2, 2
srav $3, $1, $3
TAG196:
beq $3, $3, TAG197
mfhi $1
nor $2, $3, $1
mthi $1
TAG197:
srl $4, $2, 7
bne $4, $2, TAG198
mflo $2
mfhi $2
TAG198:
lbu $1, 0($2)
addu $3, $1, $2
bgtz $2, TAG199
sllv $1, $3, $1
TAG199:
lui $3, 11
mtlo $1
sll $1, $1, 3
beq $3, $1, TAG200
TAG200:
mthi $1
sw $1, 0($1)
mthi $1
beq $1, $1, TAG201
TAG201:
slti $4, $1, 3
mflo $3
bgez $3, TAG202
lui $1, 6
TAG202:
mthi $1
mtlo $1
bgez $1, TAG203
mfhi $3
TAG203:
div $3, $3
xori $3, $3, 13
bne $3, $3, TAG204
addiu $2, $3, 13
TAG204:
mtlo $2
mfhi $2
andi $4, $2, 14
sh $2, 0($4)
TAG205:
mult $4, $4
lbu $1, 0($4)
srl $1, $4, 14
xor $3, $1, $1
TAG206:
srl $4, $3, 13
beq $3, $3, TAG207
multu $4, $4
lui $3, 15
TAG207:
addiu $4, $3, 12
bgez $4, TAG208
lbu $2, 0($4)
lb $3, 0($3)
TAG208:
bgtz $3, TAG209
lui $2, 11
multu $3, $3
addiu $1, $3, 5
TAG209:
addiu $3, $1, 2
mtlo $1
mfhi $4
lui $4, 2
TAG210:
sll $0, $0, 0
or $1, $1, $1
ori $3, $1, 3
mult $1, $3
TAG211:
lui $3, 7
multu $3, $3
mfhi $2
srav $4, $3, $2
TAG212:
multu $4, $4
bltz $4, TAG213
lb $1, 0($4)
blez $1, TAG213
TAG213:
sra $4, $1, 15
mthi $1
lui $2, 10
mult $2, $4
TAG214:
mfhi $2
beq $2, $2, TAG215
mult $2, $2
slti $2, $2, 13
TAG215:
sb $2, 0($2)
blez $2, TAG216
mult $2, $2
mtlo $2
TAG216:
mflo $4
beq $2, $2, TAG217
xor $1, $2, $2
mult $1, $2
TAG217:
mfhi $1
addu $4, $1, $1
bgez $4, TAG218
mfhi $1
TAG218:
bltz $1, TAG219
sltiu $2, $1, 9
sub $2, $2, $1
srlv $4, $2, $2
TAG219:
andi $1, $4, 13
lui $4, 5
beq $4, $4, TAG220
sll $0, $0, 0
TAG220:
sltu $3, $4, $4
lui $2, 8
mflo $3
beq $2, $4, TAG221
TAG221:
multu $3, $3
mthi $3
lui $2, 4
mtlo $3
TAG222:
mflo $4
beq $2, $2, TAG223
mflo $1
sb $4, 0($4)
TAG223:
beq $1, $1, TAG224
lb $1, 0($1)
sh $1, 0($1)
xor $2, $1, $1
TAG224:
sllv $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG225:
mthi $1
mult $1, $1
mult $1, $1
andi $3, $1, 12
TAG226:
sw $3, 0($3)
lbu $3, 0($3)
bne $3, $3, TAG227
sltiu $4, $3, 13
TAG227:
sltu $4, $4, $4
lh $1, 0($4)
bltz $4, TAG228
mflo $1
TAG228:
lb $3, 0($1)
beq $3, $3, TAG229
mfhi $3
sw $3, 0($1)
TAG229:
and $1, $3, $3
sh $3, 0($1)
mflo $1
andi $2, $1, 0
TAG230:
bltz $2, TAG231
lui $3, 6
bne $3, $3, TAG231
sll $0, $0, 0
TAG231:
mult $4, $4
multu $4, $4
sub $4, $4, $4
bgez $4, TAG232
TAG232:
lw $2, 0($4)
lui $2, 8
lui $1, 14
lui $2, 10
TAG233:
bltz $2, TAG234
mtlo $2
addu $2, $2, $2
sll $0, $0, 0
TAG234:
sra $2, $4, 6
mfhi $3
sll $3, $3, 8
sw $3, 0($2)
TAG235:
mtlo $3
mtlo $3
sh $3, 0($3)
mflo $4
TAG236:
multu $4, $4
bgtz $4, TAG237
nor $1, $4, $4
lui $4, 13
TAG237:
lui $3, 2
mtlo $4
sll $0, $0, 0
mflo $4
TAG238:
slt $4, $4, $4
bne $4, $4, TAG239
sb $4, 0($4)
mtlo $4
TAG239:
lui $4, 7
sll $0, $0, 0
mthi $4
mflo $2
TAG240:
lhu $3, 0($2)
beq $3, $3, TAG241
mult $3, $2
add $1, $3, $2
TAG241:
mthi $1
lh $2, 1($1)
lb $2, 1($1)
bgez $2, TAG242
TAG242:
mult $2, $2
mfhi $3
addu $1, $2, $3
mfhi $4
TAG243:
sltiu $3, $4, 4
mtlo $3
lui $3, 9
mthi $3
TAG244:
xori $2, $3, 4
sll $0, $0, 0
lui $3, 14
mtlo $3
TAG245:
sll $0, $0, 0
addiu $3, $3, 0
sll $0, $0, 0
sll $0, $0, 0
TAG246:
andi $3, $2, 11
xori $1, $3, 13
lui $1, 5
mtlo $3
TAG247:
mflo $1
sh $1, 0($1)
lh $3, 0($1)
nor $1, $1, $1
TAG248:
lui $4, 10
bgez $4, TAG249
subu $3, $1, $1
lui $2, 13
TAG249:
mfhi $3
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG250:
mflo $1
mfhi $1
mthi $1
mfhi $3
TAG251:
beq $3, $3, TAG252
mult $3, $3
lui $4, 10
addu $2, $3, $4
TAG252:
sll $0, $0, 0
xori $2, $2, 10
mfhi $3
mfhi $2
TAG253:
lui $4, 15
addu $2, $2, $2
andi $3, $4, 14
beq $2, $2, TAG254
TAG254:
mult $3, $3
bgtz $3, TAG255
lbu $1, 0($3)
mflo $1
TAG255:
mtlo $1
multu $1, $1
lw $1, 0($1)
lui $1, 12
TAG256:
srl $4, $1, 12
lui $3, 8
lbu $1, -192($4)
bgtz $1, TAG257
TAG257:
mtlo $1
lui $3, 1
multu $1, $1
mflo $4
TAG258:
mfhi $1
addiu $4, $1, 13
beq $1, $4, TAG259
sw $4, 0($1)
TAG259:
beq $4, $4, TAG260
divu $4, $4
bne $4, $4, TAG260
or $1, $4, $4
TAG260:
multu $1, $1
bne $1, $1, TAG261
lui $2, 11
bne $1, $1, TAG261
TAG261:
lui $2, 4
sll $0, $0, 0
beq $2, $2, TAG262
mthi $2
TAG262:
bne $2, $2, TAG263
sll $0, $0, 0
srlv $1, $2, $2
mflo $2
TAG263:
mtlo $2
lui $1, 2
sw $2, 0($2)
bgtz $1, TAG264
TAG264:
lui $2, 8
bltz $1, TAG265
div $1, $1
addu $2, $2, $2
TAG265:
mflo $4
lui $4, 3
mflo $1
mthi $2
TAG266:
lbu $1, 0($1)
mthi $1
sh $1, 0($1)
bne $1, $1, TAG267
TAG267:
mflo $4
bgtz $1, TAG268
sll $4, $1, 5
sw $4, 0($1)
TAG268:
sw $4, 0($4)
blez $4, TAG269
lui $2, 6
sw $4, 0($2)
TAG269:
multu $2, $2
xor $3, $2, $2
sll $0, $0, 0
addu $4, $3, $2
TAG270:
mflo $3
lui $4, 12
xor $4, $4, $3
sh $4, 0($3)
TAG271:
mtlo $4
sll $0, $0, 0
mfhi $2
xor $1, $4, $4
TAG272:
mflo $3
mtlo $3
lh $1, 0($1)
lui $3, 2
TAG273:
mflo $2
lui $3, 3
mtlo $2
bne $3, $3, TAG274
TAG274:
lui $3, 9
lui $3, 7
srav $3, $3, $3
div $3, $3
TAG275:
lui $2, 1
mflo $1
beq $2, $1, TAG276
or $2, $1, $2
TAG276:
bgez $2, TAG277
sll $0, $0, 0
lh $1, 0($2)
mthi $2
TAG277:
mthi $1
blez $1, TAG278
mtlo $1
lb $1, 0($1)
TAG278:
sb $1, 0($1)
lhu $3, 0($1)
multu $1, $1
mfhi $1
TAG279:
lw $3, 0($1)
xor $3, $1, $3
lb $2, 0($3)
mfhi $2
TAG280:
mult $2, $2
sh $2, 0($2)
lbu $1, 0($2)
lui $3, 0
TAG281:
multu $3, $3
lui $4, 14
sw $4, 0($3)
lb $4, 0($3)
TAG282:
andi $1, $4, 2
and $2, $4, $1
sw $1, 0($2)
mflo $4
TAG283:
mfhi $3
addu $4, $4, $3
addi $1, $3, 3
lui $3, 3
TAG284:
sll $0, $0, 0
andi $1, $3, 11
mthi $1
mfhi $3
TAG285:
sb $3, 0($3)
lbu $1, 0($3)
mfhi $2
sll $2, $1, 5
TAG286:
lb $3, 0($2)
lbu $1, 0($2)
mflo $2
multu $2, $1
TAG287:
slti $1, $2, 10
lb $1, 0($1)
mtlo $2
mfhi $1
TAG288:
lui $4, 0
lui $2, 8
mtlo $2
lui $1, 11
TAG289:
subu $4, $1, $1
lui $2, 7
sllv $2, $2, $1
mflo $3
TAG290:
addu $3, $3, $3
sll $0, $0, 0
bgez $3, TAG291
sll $0, $0, 0
TAG291:
mflo $4
srlv $1, $4, $4
mflo $3
sll $0, $0, 0
TAG292:
sll $0, $0, 0
multu $2, $2
mfhi $3
beq $2, $3, TAG293
TAG293:
mtlo $3
bne $3, $3, TAG294
lui $3, 7
subu $1, $3, $3
TAG294:
mtlo $1
bne $1, $1, TAG295
lbu $4, 0($1)
mfhi $4
TAG295:
lui $4, 10
lui $3, 5
beq $3, $4, TAG296
divu $4, $3
TAG296:
sll $0, $0, 0
sll $0, $0, 0
andi $3, $3, 9
lb $3, 0($1)
TAG297:
lb $2, 0($3)
bne $2, $2, TAG298
multu $2, $3
bgez $3, TAG298
TAG298:
addi $4, $2, 0
mfhi $1
bltz $1, TAG299
mflo $1
TAG299:
sltiu $4, $1, 1
mfhi $4
multu $4, $4
xori $2, $4, 13
TAG300:
mtlo $2
lbu $2, 0($2)
beq $2, $2, TAG301
lbu $4, 0($2)
TAG301:
sb $4, 0($4)
multu $4, $4
xori $2, $4, 7
lbu $1, 0($2)
TAG302:
bne $1, $1, TAG303
lbu $1, 0($1)
bne $1, $1, TAG303
addu $3, $1, $1
TAG303:
multu $3, $3
mfhi $4
mthi $3
mult $4, $3
TAG304:
mflo $1
mtlo $1
bne $4, $4, TAG305
mthi $1
TAG305:
bne $1, $1, TAG306
slti $2, $1, 3
bltz $2, TAG306
sb $1, 0($2)
TAG306:
mflo $4
div $2, $2
bgtz $4, TAG307
div $2, $2
TAG307:
mfhi $2
slti $4, $2, 0
lui $3, 13
lui $1, 2
TAG308:
sll $0, $0, 0
sll $0, $0, 0
sh $1, 0($2)
sll $0, $0, 0
TAG309:
addi $4, $2, 0
mult $2, $4
lb $3, 0($4)
slti $1, $4, 6
TAG310:
addiu $4, $1, 0
lbu $1, 0($1)
blez $4, TAG311
srl $3, $1, 4
TAG311:
sh $3, 0($3)
bltz $3, TAG312
lb $3, 0($3)
mthi $3
TAG312:
mtlo $3
bne $3, $3, TAG313
xor $3, $3, $3
beq $3, $3, TAG313
TAG313:
mtlo $3
mthi $3
lui $1, 4
sh $1, 0($3)
TAG314:
slt $2, $1, $1
mtlo $1
lbu $4, 0($2)
lb $3, 0($4)
TAG315:
mtlo $3
blez $3, TAG316
lui $3, 8
sltiu $3, $3, 7
TAG316:
sll $0, $0, 0
multu $3, $3
lui $4, 3
bgez $3, TAG317
TAG317:
div $4, $4
mtlo $4
nor $1, $4, $4
mtlo $4
TAG318:
mflo $3
mtlo $3
ori $3, $3, 11
beq $3, $3, TAG319
TAG319:
sll $0, $0, 0
sltiu $3, $3, 1
mtlo $3
sra $1, $3, 9
TAG320:
lbu $3, 0($1)
sb $3, 0($3)
slti $2, $3, 4
sll $4, $1, 8
TAG321:
mthi $4
bne $4, $4, TAG322
mfhi $4
addi $3, $4, 15
TAG322:
divu $3, $3
bltz $3, TAG323
sra $4, $3, 7
lui $1, 4
TAG323:
lui $2, 7
bgtz $1, TAG324
mthi $2
xor $2, $1, $1
TAG324:
bne $2, $2, TAG325
mthi $2
slt $4, $2, $2
sllv $4, $4, $2
TAG325:
lui $4, 5
mflo $1
sllv $4, $1, $4
sb $4, 0($4)
TAG326:
sb $4, 0($4)
mflo $2
sb $2, 0($4)
beq $2, $4, TAG327
TAG327:
lbu $1, 0($2)
mtlo $1
sb $1, 0($2)
bltz $2, TAG328
TAG328:
divu $1, $1
sltiu $2, $1, 0
mthi $2
lui $4, 5
TAG329:
mult $4, $4
mflo $2
sltu $1, $2, $2
mthi $4
TAG330:
bgez $1, TAG331
srlv $3, $1, $1
bltz $1, TAG331
mflo $4
TAG331:
bne $4, $4, TAG332
sll $0, $0, 0
lui $1, 1
slt $1, $1, $4
TAG332:
lui $3, 8
mflo $2
sb $2, 0($1)
mthi $3
TAG333:
lb $4, 0($2)
lw $3, 0($2)
mthi $4
xori $1, $3, 9
TAG334:
subu $2, $1, $1
sb $2, 0($1)
mtlo $1
lui $4, 15
TAG335:
lui $1, 12
multu $1, $4
sll $0, $0, 0
bgtz $1, TAG336
TAG336:
sll $0, $0, 0
bgez $1, TAG337
divu $1, $1
beq $1, $1, TAG337
TAG337:
mtlo $1
sll $0, $0, 0
sll $2, $1, 5
beq $2, $1, TAG338
TAG338:
srl $1, $2, 15
beq $2, $1, TAG339
addiu $2, $1, 15
bltz $1, TAG339
TAG339:
subu $4, $2, $2
andi $1, $2, 4
bne $1, $4, TAG340
mthi $4
TAG340:
mthi $1
addiu $1, $1, 15
bne $1, $1, TAG341
sb $1, 0($1)
TAG341:
sb $1, 0($1)
blez $1, TAG342
and $2, $1, $1
srl $3, $2, 11
TAG342:
blez $3, TAG343
mthi $3
lui $1, 7
lui $1, 11
TAG343:
beq $1, $1, TAG344
multu $1, $1
slt $1, $1, $1
sb $1, 0($1)
TAG344:
subu $4, $1, $1
and $3, $1, $1
bgez $4, TAG345
mfhi $2
TAG345:
blez $2, TAG346
lui $2, 8
beq $2, $2, TAG346
xor $3, $2, $2
TAG346:
sb $3, 0($3)
mflo $3
mthi $3
multu $3, $3
TAG347:
multu $3, $3
mflo $3
lui $2, 8
lui $1, 13
TAG348:
or $1, $1, $1
sll $0, $0, 0
mflo $4
mflo $2
TAG349:
mult $2, $2
srlv $4, $2, $2
sll $0, $0, 0
bgtz $4, TAG350
TAG350:
addu $3, $2, $2
sltiu $1, $2, 0
mflo $4
bgtz $1, TAG351
TAG351:
lui $3, 2
beq $3, $4, TAG352
sltiu $2, $4, 0
mthi $3
TAG352:
sh $2, 0($2)
lbu $4, 0($2)
mthi $4
multu $4, $4
TAG353:
bne $4, $4, TAG354
ori $1, $4, 8
mflo $4
xori $4, $4, 11
TAG354:
sltiu $2, $4, 10
srav $4, $4, $4
beq $2, $4, TAG355
mult $4, $4
TAG355:
lui $2, 15
mflo $4
mfhi $4
beq $2, $4, TAG356
TAG356:
mflo $4
lbu $2, 0($4)
sb $4, 0($4)
bne $4, $4, TAG357
TAG357:
xori $2, $2, 13
subu $4, $2, $2
xor $3, $4, $2
multu $2, $4
TAG358:
sb $3, 0($3)
andi $3, $3, 13
bne $3, $3, TAG359
mthi $3
TAG359:
lui $2, 14
bne $2, $2, TAG360
slti $3, $2, 1
srl $3, $3, 11
TAG360:
lb $4, 0($3)
bltz $3, TAG361
addu $2, $3, $4
sw $4, 0($2)
TAG361:
mtlo $2
andi $2, $2, 8
lb $4, 0($2)
sltu $4, $4, $2
TAG362:
mult $4, $4
sh $4, 0($4)
lui $2, 10
sh $2, 0($4)
TAG363:
sll $0, $0, 0
mult $2, $2
addiu $1, $2, 6
sll $0, $0, 0
TAG364:
xori $2, $4, 13
mult $4, $4
sb $4, 0($4)
div $2, $2
TAG365:
mult $2, $2
sb $2, 0($2)
mtlo $2
lui $3, 14
TAG366:
lui $1, 7
blez $1, TAG367
addiu $4, $1, 13
lui $4, 1
TAG367:
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG368:
sllv $1, $3, $3
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG369:
bltz $3, TAG370
div $3, $3
andi $1, $3, 5
bgtz $1, TAG370
TAG370:
sltu $4, $1, $1
mtlo $1
nor $4, $4, $1
lui $1, 15
TAG371:
mtlo $1
bltz $1, TAG372
sra $4, $1, 4
bgtz $4, TAG372
TAG372:
mthi $4
blez $4, TAG373
sll $0, $0, 0
addu $4, $4, $4
TAG373:
addu $1, $4, $4
sll $0, $0, 0
blez $2, TAG374
divu $4, $2
TAG374:
multu $2, $2
divu $2, $2
sb $2, 0($2)
div $2, $2
TAG375:
multu $2, $2
lbu $2, 0($2)
lui $4, 13
multu $4, $2
TAG376:
mfhi $3
sll $0, $0, 0
mtlo $1
divu $3, $1
TAG377:
mtlo $1
addiu $1, $1, 14
div $1, $1
mflo $1
TAG378:
bne $1, $1, TAG379
multu $1, $1
div $1, $1
mtlo $1
TAG379:
bne $1, $1, TAG380
sb $1, 0($1)
addiu $3, $1, 15
mflo $4
TAG380:
addiu $4, $4, 11
beq $4, $4, TAG381
lui $4, 15
andi $1, $4, 15
TAG381:
lui $4, 2
sll $0, $0, 0
mtlo $4
mtlo $1
TAG382:
bgtz $4, TAG383
sll $0, $0, 0
lh $1, 0($4)
bltz $4, TAG383
TAG383:
sltu $3, $1, $1
lbu $3, 0($1)
bgez $3, TAG384
lui $1, 13
TAG384:
addiu $1, $1, 3
mflo $4
lui $1, 5
subu $4, $1, $4
TAG385:
lui $3, 7
bgtz $4, TAG386
div $3, $3
bne $4, $4, TAG386
TAG386:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
sllv $4, $1, $3
TAG387:
blez $4, TAG388
mult $4, $4
addiu $1, $4, 11
mfhi $1
TAG388:
mthi $1
blez $1, TAG389
mflo $4
xori $3, $4, 9
TAG389:
mflo $3
sra $1, $3, 7
andi $1, $3, 11
mfhi $2
TAG390:
bgtz $2, TAG391
mult $2, $2
lui $3, 11
lhu $3, 0($3)
TAG391:
beq $3, $3, TAG392
mtlo $3
bne $3, $3, TAG392
lui $3, 7
TAG392:
beq $3, $3, TAG393
mult $3, $3
sb $3, 0($3)
mfhi $2
TAG393:
lbu $3, 0($2)
sltiu $3, $3, 5
beq $3, $3, TAG394
mflo $4
TAG394:
mflo $2
bgez $4, TAG395
lhu $4, 0($2)
sw $2, 0($4)
TAG395:
addiu $2, $4, 9
addu $4, $2, $2
lb $3, -530($4)
lui $4, 1
TAG396:
div $4, $4
sll $0, $0, 0
beq $4, $4, TAG397
sll $0, $0, 0
TAG397:
subu $2, $4, $4
lui $1, 11
lui $3, 4
sll $0, $0, 0
TAG398:
div $3, $3
lui $4, 9
slti $2, $4, 7
sh $4, 0($2)
TAG399:
mtlo $2
subu $3, $2, $2
beq $2, $2, TAG400
mtlo $2
TAG400:
mflo $1
sh $1, 0($3)
xor $1, $3, $1
lui $3, 1
TAG401:
bgtz $3, TAG402
sll $0, $0, 0
lw $3, 0($1)
bne $3, $3, TAG402
TAG402:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG403
sll $0, $0, 0
TAG403:
lui $3, 6
sll $0, $0, 0
sll $0, $0, 0
divu $4, $3
TAG404:
sll $0, $0, 0
mthi $3
sh $3, 0($2)
sra $2, $2, 11
TAG405:
lhu $2, 0($2)
srav $3, $2, $2
blez $2, TAG406
mthi $2
TAG406:
sh $3, 0($3)
mult $3, $3
subu $2, $3, $3
nor $4, $3, $2
TAG407:
mtlo $4
div $4, $4
mthi $4
bltz $4, TAG408
TAG408:
or $4, $4, $4
lh $1, 1($4)
lui $1, 5
lui $3, 11
TAG409:
mult $3, $3
bgez $3, TAG410
sll $0, $0, 0
bgtz $3, TAG410
TAG410:
lui $4, 8
bne $4, $4, TAG411
div $3, $3
mflo $2
TAG411:
bgtz $2, TAG412
sb $2, 0($2)
lui $3, 0
bltz $2, TAG412
TAG412:
sll $0, $0, 0
sltiu $1, $3, 10
sh $1, 0($1)
mflo $4
TAG413:
mthi $4
addu $3, $4, $4
blez $4, TAG414
subu $2, $4, $3
TAG414:
bne $2, $2, TAG415
sw $2, 1($2)
lui $4, 11
blez $4, TAG415
TAG415:
mflo $3
lbu $2, 0($3)
mtlo $2
lbu $1, -255($2)
TAG416:
bne $1, $1, TAG417
lui $4, 5
slt $1, $1, $1
mtlo $1
TAG417:
lui $3, 13
mflo $1
lw $4, 0($1)
bgtz $1, TAG418
TAG418:
sllv $2, $4, $4
mfhi $2
or $4, $2, $2
lui $1, 3
TAG419:
beq $1, $1, TAG420
lui $2, 5
bne $1, $1, TAG420
mfhi $1
TAG420:
xori $2, $1, 7
blez $1, TAG421
multu $2, $1
xori $4, $1, 13
TAG421:
subu $3, $4, $4
bgtz $3, TAG422
andi $4, $4, 2
mtlo $4
TAG422:
lb $2, 0($4)
subu $3, $2, $2
mfhi $1
mflo $4
TAG423:
srl $4, $4, 2
add $3, $4, $4
addu $1, $4, $4
multu $4, $4
TAG424:
mtlo $1
beq $1, $1, TAG425
lui $1, 5
lw $4, 0($1)
TAG425:
bltz $4, TAG426
multu $4, $4
mflo $3
addiu $3, $3, 4
TAG426:
bne $3, $3, TAG427
multu $3, $3
beq $3, $3, TAG427
lb $3, 0($3)
TAG427:
mthi $3
lb $3, 0($3)
addu $3, $3, $3
mflo $1
TAG428:
lhu $4, 0($1)
srav $1, $4, $1
lui $3, 8
lui $3, 1
TAG429:
sll $0, $0, 0
beq $3, $3, TAG430
mthi $3
div $3, $3
TAG430:
slt $1, $3, $3
bltz $1, TAG431
multu $3, $1
andi $1, $3, 2
TAG431:
beq $1, $1, TAG432
sw $1, 0($1)
lui $3, 14
sllv $1, $3, $3
TAG432:
multu $1, $1
sh $1, 0($1)
sw $1, 0($1)
bltz $1, TAG433
TAG433:
mflo $2
lhu $2, 0($1)
blez $2, TAG434
srav $4, $2, $1
TAG434:
beq $4, $4, TAG435
sw $4, 0($4)
mthi $4
bne $4, $4, TAG435
TAG435:
sb $4, 0($4)
lw $1, 0($4)
andi $1, $1, 1
mthi $4
TAG436:
mflo $4
lh $2, 0($1)
lui $3, 9
srl $2, $2, 15
TAG437:
mult $2, $2
or $4, $2, $2
multu $4, $2
beq $2, $4, TAG438
TAG438:
mult $4, $4
sw $4, 0($4)
sltiu $1, $4, 3
addi $4, $4, 6
TAG439:
mult $4, $4
sltu $4, $4, $4
sh $4, 0($4)
multu $4, $4
TAG440:
lb $4, 0($4)
multu $4, $4
sh $4, 0($4)
sw $4, 0($4)
TAG441:
sb $4, 0($4)
lbu $3, 0($4)
lw $3, 0($3)
multu $3, $4
TAG442:
subu $1, $3, $3
lui $3, 1
sll $0, $0, 0
mfhi $3
TAG443:
bgtz $3, TAG444
multu $3, $3
sh $3, 0($3)
bgtz $3, TAG444
TAG444:
lui $4, 2
sb $4, 0($3)
sh $4, 0($3)
nor $3, $4, $4
TAG445:
ori $1, $3, 9
or $4, $1, $1
bgtz $3, TAG446
mtlo $3
TAG446:
srav $4, $4, $4
lbu $1, 1($4)
and $3, $4, $1
lw $2, 0($3)
TAG447:
lui $4, 3
bltz $4, TAG448
sll $0, $0, 0
sra $2, $4, 1
TAG448:
sll $0, $0, 0
ori $4, $2, 9
slt $1, $4, $2
lui $2, 7
TAG449:
lui $4, 8
sll $0, $0, 0
sll $0, $0, 0
lui $1, 8
TAG450:
divu $1, $1
ori $2, $1, 11
mthi $1
divu $1, $1
TAG451:
mflo $2
mtlo $2
beq $2, $2, TAG452
sb $2, 0($2)
TAG452:
srl $1, $2, 9
multu $2, $1
sb $1, 0($2)
div $1, $2
TAG453:
mult $1, $1
mult $1, $1
mult $1, $1
addi $3, $1, 13
TAG454:
xori $2, $3, 0
beq $2, $2, TAG455
lui $4, 15
bltz $4, TAG455
TAG455:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
bne $2, $2, TAG456
TAG456:
multu $1, $1
sh $1, 0($1)
bne $1, $1, TAG457
ori $3, $1, 8
TAG457:
mthi $3
xor $4, $3, $3
srlv $4, $3, $3
lui $4, 0
TAG458:
bltz $4, TAG459
mtlo $4
lui $3, 13
multu $4, $4
TAG459:
beq $3, $3, TAG460
lui $4, 11
addu $2, $3, $4
mtlo $3
TAG460:
mthi $2
lui $1, 1
mtlo $2
sll $0, $0, 0
TAG461:
sltiu $3, $3, 14
beq $3, $3, TAG462
subu $1, $3, $3
mtlo $3
TAG462:
bne $1, $1, TAG463
mfhi $2
mult $1, $1
mult $2, $1
TAG463:
bne $2, $2, TAG464
sb $2, 0($2)
sltu $3, $2, $2
mthi $2
TAG464:
mflo $1
sllv $2, $1, $1
sh $1, 0($1)
mtlo $1
TAG465:
or $1, $2, $2
sb $1, 0($2)
sub $2, $2, $1
mult $2, $2
TAG466:
lbu $1, 0($2)
nor $1, $2, $1
srav $3, $1, $2
lui $4, 3
TAG467:
mtlo $4
mfhi $4
multu $4, $4
beq $4, $4, TAG468
TAG468:
lh $3, 0($4)
mult $3, $4
lbu $4, 0($3)
srlv $4, $3, $3
TAG469:
sra $1, $4, 14
sllv $3, $4, $4
subu $4, $1, $3
lbu $4, 0($4)
TAG470:
lbu $1, 0($4)
sb $1, 0($1)
mthi $4
mfhi $4
TAG471:
xor $1, $4, $4
lui $3, 9
sb $4, 0($4)
xor $3, $4, $1
TAG472:
mult $3, $3
mfhi $3
lui $1, 12
lui $2, 13
TAG473:
multu $2, $2
srl $4, $2, 13
beq $2, $2, TAG474
mthi $4
TAG474:
beq $4, $4, TAG475
mfhi $4
lh $4, 0($4)
lui $1, 9
TAG475:
mflo $3
mtlo $1
multu $1, $1
lui $1, 11
TAG476:
mthi $1
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
TAG477:
sll $0, $0, 0
mfhi $2
beq $2, $2, TAG478
mfhi $3
TAG478:
mflo $2
lui $4, 2
div $2, $4
blez $2, TAG479
TAG479:
mfhi $4
mfhi $2
mult $4, $4
ori $4, $4, 8
TAG480:
srlv $2, $4, $4
sb $2, 0($2)
bltz $4, TAG481
srl $1, $4, 10
TAG481:
lh $4, 0($1)
lui $3, 6
mfhi $2
bne $4, $3, TAG482
TAG482:
and $3, $2, $2
bgez $3, TAG483
lw $1, 0($2)
lw $4, 0($1)
TAG483:
sb $4, 0($4)
mflo $4
mthi $4
mflo $3
TAG484:
multu $3, $3
sb $3, 0($3)
sb $3, 0($3)
mfhi $1
TAG485:
blez $1, TAG486
lw $2, 0($1)
mtlo $1
mtlo $2
TAG486:
mflo $2
mtlo $2
sb $2, 0($2)
sra $1, $2, 10
TAG487:
beq $1, $1, TAG488
mthi $1
beq $1, $1, TAG488
sh $1, 0($1)
TAG488:
mthi $1
subu $2, $1, $1
mtlo $2
sh $1, 0($2)
TAG489:
bgez $2, TAG490
lui $3, 3
bgez $3, TAG490
multu $3, $2
TAG490:
bne $3, $3, TAG491
mtlo $3
slti $4, $3, 12
lui $2, 13
TAG491:
sll $0, $0, 0
beq $4, $2, TAG492
mtlo $4
srav $1, $2, $2
TAG492:
mthi $1
mfhi $1
sll $0, $0, 0
subu $4, $2, $1
TAG493:
mtlo $4
mfhi $4
sll $0, $0, 0
bltz $4, TAG494
TAG494:
sll $0, $0, 0
subu $4, $3, $3
or $1, $4, $4
sll $0, $0, 0
TAG495:
bltz $3, TAG496
mflo $2
multu $2, $2
mtlo $3
TAG496:
addi $1, $2, 5
slt $4, $1, $1
lui $3, 9
srlv $3, $4, $1
TAG497:
bne $3, $3, TAG498
sb $3, 0($3)
mflo $4
mult $3, $3
TAG498:
multu $4, $4
srl $2, $4, 11
lui $2, 6
sll $0, $0, 0
TAG499:
lui $2, 6
div $2, $2
ori $1, $2, 0
div $2, $2
TAG500:
ori $2, $1, 2
sra $4, $1, 4
bgtz $1, TAG501
mtlo $4
TAG501:
subu $3, $4, $4
lbu $3, -24576($4)
lhu $4, 0($3)
lh $1, 0($3)
TAG502:
mthi $1
addiu $3, $1, 11
mult $1, $1
mthi $3
TAG503:
divu $3, $3
or $2, $3, $3
lui $2, 10
mflo $4
TAG504:
addu $2, $4, $4
lui $4, 7
sll $0, $0, 0
subu $3, $2, $4
TAG505:
bgez $3, TAG506
mult $3, $3
srav $3, $3, $3
bltz $3, TAG506
TAG506:
xori $3, $3, 1
mthi $3
beq $3, $3, TAG507
sltu $1, $3, $3
TAG507:
lhu $2, 0($1)
lw $2, 0($2)
multu $1, $2
sb $1, 0($2)
TAG508:
sh $2, 0($2)
sw $2, 0($2)
blez $2, TAG509
mfhi $3
TAG509:
sh $3, 0($3)
sh $3, 0($3)
mfhi $3
sh $3, 0($3)
TAG510:
blez $3, TAG511
slt $3, $3, $3
blez $3, TAG511
mtlo $3
TAG511:
beq $3, $3, TAG512
sb $3, 0($3)
sw $3, 0($3)
mflo $2
TAG512:
sll $3, $2, 15
sw $2, 0($3)
or $4, $3, $3
lw $2, 0($2)
TAG513:
sub $1, $2, $2
mflo $3
bne $2, $3, TAG514
lb $3, 0($1)
TAG514:
bgez $3, TAG515
mflo $2
sh $2, 0($3)
sh $2, 0($2)
TAG515:
sw $2, 0($2)
bgez $2, TAG516
or $2, $2, $2
beq $2, $2, TAG516
TAG516:
lui $1, 0
mtlo $1
bgez $1, TAG517
mtlo $1
TAG517:
mult $1, $1
mtlo $1
xor $1, $1, $1
mthi $1
TAG518:
blez $1, TAG519
multu $1, $1
beq $1, $1, TAG519
addiu $1, $1, 7
TAG519:
beq $1, $1, TAG520
xori $4, $1, 7
lbu $2, 0($1)
mthi $2
TAG520:
lbu $3, 0($2)
subu $3, $2, $2
bgtz $3, TAG521
sh $3, 0($3)
TAG521:
mtlo $3
lui $1, 11
mult $3, $1
mfhi $2
TAG522:
lh $2, 0($2)
multu $2, $2
blez $2, TAG523
sw $2, 0($2)
TAG523:
lui $3, 6
mtlo $2
lui $3, 7
lw $1, 0($2)
TAG524:
mfhi $1
mfhi $2
slt $1, $1, $1
multu $2, $1
TAG525:
beq $1, $1, TAG526
mtlo $1
sh $1, 0($1)
lw $4, 0($1)
TAG526:
lbu $3, 0($4)
xori $2, $3, 9
mflo $2
beq $4, $2, TAG527
TAG527:
lui $2, 2
beq $2, $2, TAG528
subu $1, $2, $2
sw $2, 0($2)
TAG528:
addi $1, $1, 2
lui $1, 2
sll $0, $0, 0
lui $4, 0
TAG529:
bgez $4, TAG530
lw $3, 0($4)
lui $1, 9
lui $4, 0
TAG530:
sltu $4, $4, $4
addu $3, $4, $4
or $4, $4, $3
xori $3, $4, 3
TAG531:
sb $3, 0($3)
sll $1, $3, 3
sltiu $3, $3, 5
sll $4, $1, 2
TAG532:
slti $4, $4, 3
bgez $4, TAG533
mthi $4
bne $4, $4, TAG533
TAG533:
srl $3, $4, 10
bgez $4, TAG534
mtlo $3
addi $4, $3, 1
TAG534:
sllv $3, $4, $4
mtlo $4
bne $4, $3, TAG535
mult $3, $4
TAG535:
mtlo $3
or $2, $3, $3
mult $2, $3
beq $3, $2, TAG536
TAG536:
add $3, $2, $2
lui $4, 12
lui $4, 10
sh $4, 0($2)
TAG537:
sll $0, $0, 0
mtlo $2
lui $2, 0
sltu $4, $4, $2
TAG538:
lh $1, 0($4)
mthi $1
lui $4, 15
srav $4, $1, $4
TAG539:
sb $4, 0($4)
mult $4, $4
subu $1, $4, $4
multu $1, $4
TAG540:
bne $1, $1, TAG541
mfhi $4
beq $4, $4, TAG541
lui $4, 3
TAG541:
lui $2, 5
srav $4, $2, $2
slti $4, $4, 15
slti $2, $4, 14
TAG542:
sb $2, 0($2)
mflo $1
sw $1, 0($1)
blez $1, TAG543
TAG543:
multu $1, $1
sw $1, 0($1)
mflo $4
mult $4, $4
TAG544:
sltiu $4, $4, 10
mflo $4
slt $1, $4, $4
sw $4, 0($4)
TAG545:
sra $4, $1, 8
lui $4, 13
multu $1, $4
lui $1, 8
TAG546:
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG547
mthi $2
TAG547:
mult $2, $2
mflo $2
lbu $2, 0($2)
mthi $2
TAG548:
lb $2, 0($2)
bne $2, $2, TAG549
sh $2, 0($2)
sw $2, 0($2)
TAG549:
mfhi $1
sra $1, $1, 14
xori $1, $1, 8
beq $1, $1, TAG550
TAG550:
lh $3, 0($1)
or $3, $1, $1
div $3, $3
mtlo $3
TAG551:
mthi $3
sw $3, 0($3)
mflo $3
beq $3, $3, TAG552
TAG552:
mult $3, $3
blez $3, TAG553
lui $4, 15
bgez $3, TAG553
TAG553:
mthi $4
bltz $4, TAG554
sll $0, $0, 0
srav $4, $4, $4
TAG554:
bne $4, $4, TAG555
mfhi $3
lui $4, 0
mult $4, $4
TAG555:
slti $1, $4, 3
multu $1, $1
nor $1, $1, $1
div $1, $1
TAG556:
sll $0, $0, 0
sltu $3, $1, $1
bgez $1, TAG557
slti $4, $1, 1
TAG557:
sb $4, 0($4)
beq $4, $4, TAG558
xori $1, $4, 8
beq $4, $4, TAG558
TAG558:
sb $1, 0($1)
div $1, $1
lui $2, 2
lbu $3, 0($1)
TAG559:
bltz $3, TAG560
sltu $1, $3, $3
sltu $4, $1, $1
add $1, $1, $1
TAG560:
sb $1, 0($1)
mflo $2
sra $4, $1, 2
srlv $2, $4, $1
TAG561:
mfhi $1
multu $1, $2
lui $1, 13
sll $0, $0, 0
TAG562:
sb $3, 0($3)
nor $3, $3, $3
sb $3, 10($3)
lui $2, 1
TAG563:
sll $0, $0, 0
mflo $1
bltz $2, TAG564
sb $1, 0($4)
TAG564:
lui $3, 0
multu $1, $1
lhu $3, 0($3)
mfhi $1
TAG565:
mult $1, $1
bgez $1, TAG566
mflo $2
divu $2, $2
TAG566:
ori $2, $2, 3
slti $3, $2, 3
lui $1, 5
lui $4, 7
TAG567:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG568
lui $2, 9
TAG568:
bgtz $2, TAG569
sll $0, $0, 0
mthi $2
lui $4, 13
TAG569:
mthi $4
srlv $1, $4, $4
bgtz $4, TAG570
lui $1, 11
TAG570:
mflo $1
addu $4, $1, $1
beq $1, $1, TAG571
mthi $1
TAG571:
mfhi $2
beq $4, $2, TAG572
and $2, $4, $2
div $4, $2
TAG572:
bne $2, $2, TAG573
multu $2, $2
addu $3, $2, $2
beq $3, $2, TAG573
TAG573:
sll $0, $0, 0
bgez $3, TAG574
sll $0, $0, 0
lui $1, 3
TAG574:
bgtz $1, TAG575
addiu $2, $1, 3
mfhi $4
beq $2, $2, TAG575
TAG575:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $4, TAG576
mult $2, $2
TAG576:
mtlo $2
beq $2, $2, TAG577
mfhi $2
mfhi $4
TAG577:
slti $4, $4, 4
lb $1, 0($4)
bne $4, $1, TAG578
lb $2, 0($4)
TAG578:
sb $2, 0($2)
and $1, $2, $2
nor $1, $2, $2
lb $2, 1($1)
TAG579:
sll $4, $2, 7
lb $2, 0($4)
sllv $2, $2, $2
lui $2, 6
TAG580:
bgez $2, TAG581
ori $2, $2, 3
lh $1, 0($2)
bne $2, $2, TAG581
TAG581:
multu $1, $1
bgez $1, TAG582
mtlo $1
nor $2, $1, $1
TAG582:
sll $2, $2, 15
multu $2, $2
mthi $2
subu $1, $2, $2
TAG583:
lb $1, 0($1)
lui $1, 7
bgtz $1, TAG584
sll $0, $0, 0
TAG584:
mflo $4
mtlo $4
mtlo $4
lui $4, 13
TAG585:
addiu $4, $4, 7
lui $4, 9
sll $0, $0, 0
addu $2, $4, $4
TAG586:
sltiu $4, $2, 11
sll $0, $0, 0
andi $1, $2, 9
mult $2, $2
TAG587:
bne $1, $1, TAG588
lui $4, 7
beq $1, $4, TAG588
mtlo $1
TAG588:
sll $0, $0, 0
lui $3, 6
slt $1, $4, $4
mflo $3
TAG589:
mthi $3
blez $3, TAG590
mtlo $3
sw $3, 0($3)
TAG590:
and $4, $3, $3
mult $4, $4
sra $2, $4, 12
multu $4, $3
TAG591:
xori $2, $2, 10
mtlo $2
mthi $2
lb $2, 0($2)
TAG592:
lb $2, 0($2)
andi $4, $2, 15
sb $4, 0($2)
subu $3, $2, $2
TAG593:
lhu $3, 0($3)
blez $3, TAG594
mflo $2
mtlo $3
TAG594:
mflo $3
andi $4, $3, 10
mult $2, $4
mtlo $2
TAG595:
sra $2, $4, 14
mult $4, $2
lui $2, 1
slti $4, $2, 6
TAG596:
mtlo $4
mfhi $3
sh $3, 0($4)
addi $1, $3, 10
TAG597:
xor $4, $1, $1
subu $1, $1, $4
beq $1, $1, TAG598
lhu $2, 0($4)
TAG598:
beq $2, $2, TAG599
mult $2, $2
blez $2, TAG599
lui $2, 10
TAG599:
beq $2, $2, TAG600
lb $4, 0($2)
addi $1, $4, 4
sra $4, $2, 3
TAG600:
beq $4, $4, TAG601
mflo $2
lbu $1, 0($2)
beq $4, $4, TAG601
TAG601:
mtlo $1
beq $1, $1, TAG602
srl $1, $1, 1
bne $1, $1, TAG602
TAG602:
lbu $2, 0($1)
bltz $1, TAG603
addiu $1, $1, 12
lhu $3, 0($2)
TAG603:
sw $3, 0($3)
blez $3, TAG604
addi $3, $3, 5
lui $3, 12
TAG604:
slt $2, $3, $3
mfhi $4
lui $1, 5
bgtz $3, TAG605
TAG605:
sll $0, $0, 0
addu $1, $1, $1
bne $1, $1, TAG606
sll $0, $0, 0
TAG606:
mfhi $4
lui $1, 5
mfhi $1
or $2, $1, $4
TAG607:
mthi $2
mthi $2
sb $2, 0($2)
srlv $4, $2, $2
TAG608:
sw $4, 0($4)
mthi $4
bgtz $4, TAG609
sra $3, $4, 10
TAG609:
mfhi $3
lui $4, 10
sll $0, $0, 0
addiu $4, $4, 1
TAG610:
mtlo $4
lui $1, 0
multu $1, $1
beq $1, $1, TAG611
TAG611:
sb $1, 0($1)
beq $1, $1, TAG612
xor $4, $1, $1
lui $3, 10
TAG612:
bgtz $3, TAG613
lb $4, 0($3)
beq $4, $4, TAG613
mult $4, $3
TAG613:
beq $4, $4, TAG614
mfhi $2
lui $1, 9
lh $2, 0($4)
TAG614:
sw $2, 0($2)
addu $3, $2, $2
bltz $3, TAG615
lbu $3, 0($3)
TAG615:
mfhi $2
multu $3, $3
bne $2, $3, TAG616
sltu $4, $2, $3
TAG616:
mthi $4
lw $2, 0($4)
bgtz $4, TAG617
lbu $2, 0($4)
TAG617:
sh $2, 0($2)
mult $2, $2
bne $2, $2, TAG618
sw $2, 0($2)
TAG618:
multu $2, $2
mfhi $3
multu $3, $3
mthi $3
TAG619:
mtlo $3
sltiu $1, $3, 6
mult $3, $3
lbu $4, 0($3)
TAG620:
lui $2, 7
sll $0, $0, 0
multu $4, $2
mfhi $2
TAG621:
bgez $2, TAG622
mult $2, $2
mfhi $3
or $4, $3, $3
TAG622:
mflo $4
blez $4, TAG623
slti $3, $4, 13
mtlo $3
TAG623:
sb $3, 0($3)
mfhi $1
lui $1, 11
mthi $3
TAG624:
sll $4, $1, 0
slt $4, $1, $4
lui $1, 10
bltz $1, TAG625
TAG625:
ori $1, $1, 15
beq $1, $1, TAG626
srav $2, $1, $1
slt $4, $1, $1
TAG626:
bgez $4, TAG627
sra $3, $4, 9
mflo $1
bgez $1, TAG627
TAG627:
multu $1, $1
sltiu $1, $1, 1
sh $1, 0($1)
bne $1, $1, TAG628
TAG628:
mfhi $2
add $4, $1, $1
mtlo $4
subu $1, $2, $1
TAG629:
mfhi $2
lui $4, 9
mtlo $4
mflo $1
TAG630:
mthi $1
bgtz $1, TAG631
mfhi $4
div $4, $1
TAG631:
sll $0, $0, 0
beq $4, $4, TAG632
mtlo $4
sh $4, 0($4)
TAG632:
blez $4, TAG633
sll $0, $0, 0
bne $4, $4, TAG633
mthi $4
TAG633:
sll $0, $0, 0
bgtz $4, TAG634
mfhi $3
sw $4, 0($3)
TAG634:
addiu $2, $3, 15
lui $4, 4
srl $3, $2, 5
sw $4, -18432($3)
TAG635:
sw $3, -18432($3)
bltz $3, TAG636
divu $3, $3
lui $3, 9
TAG636:
blez $3, TAG637
mfhi $1
bgtz $1, TAG637
lui $1, 13
TAG637:
subu $4, $1, $1
beq $4, $1, TAG638
sllv $2, $4, $4
mflo $3
TAG638:
bne $3, $3, TAG639
lbu $2, 0($3)
mthi $3
lh $1, 0($2)
TAG639:
lui $3, 9
multu $3, $3
bne $3, $3, TAG640
lui $2, 8
TAG640:
mthi $2
sll $0, $0, 0
addu $4, $2, $2
srlv $3, $4, $2
TAG641:
sll $0, $0, 0
div $3, $3
subu $3, $3, $3
bne $3, $3, TAG642
TAG642:
mult $3, $3
sw $3, 0($3)
lui $4, 3
beq $4, $3, TAG643
TAG643:
mthi $4
lui $3, 14
bgtz $3, TAG644
mult $4, $3
TAG644:
mfhi $3
lhu $1, 0($3)
lh $1, 0($3)
bgez $1, TAG645
TAG645:
mthi $1
beq $1, $1, TAG646
mthi $1
beq $1, $1, TAG646
TAG646:
srlv $1, $1, $1
multu $1, $1
mtlo $1
mult $1, $1
TAG647:
mfhi $4
mult $1, $1
blez $4, TAG648
lw $1, 0($1)
TAG648:
bne $1, $1, TAG649
mflo $1
xori $3, $1, 4
beq $1, $3, TAG649
TAG649:
mfhi $3
mfhi $4
mtlo $3
subu $4, $3, $3
TAG650:
multu $4, $4
beq $4, $4, TAG651
sltiu $4, $4, 5
srav $2, $4, $4
TAG651:
lui $1, 7
sll $0, $0, 0
srl $2, $4, 14
multu $2, $1
TAG652:
beq $2, $2, TAG653
lui $2, 6
bgez $2, TAG653
sra $3, $2, 6
TAG653:
multu $3, $3
bne $3, $3, TAG654
sw $3, 0($3)
srl $4, $3, 3
TAG654:
lh $2, 0($4)
bne $4, $4, TAG655
lbu $4, 0($2)
mtlo $4
TAG655:
mfhi $1
ori $3, $4, 3
mflo $3
bne $3, $3, TAG656
TAG656:
addi $2, $3, 4
bne $2, $3, TAG657
ori $1, $3, 7
bne $2, $2, TAG657
TAG657:
ori $3, $1, 5
lbu $2, 0($3)
lb $2, 0($3)
mflo $1
TAG658:
lui $2, 4
lui $3, 15
mfhi $1
mthi $2
TAG659:
lui $4, 7
sll $0, $0, 0
mfhi $3
sb $3, 0($1)
TAG660:
addiu $1, $3, 3
sll $0, $0, 0
blez $3, TAG661
sll $0, $0, 0
TAG661:
slt $4, $2, $2
bne $4, $4, TAG662
xori $4, $4, 8
blez $2, TAG662
TAG662:
sw $4, 0($4)
multu $4, $4
mflo $2
mthi $4
TAG663:
ori $1, $2, 3
bgtz $2, TAG664
mthi $2
mtlo $2
TAG664:
srlv $2, $1, $1
mthi $1
sb $2, 0($1)
slti $3, $1, 6
TAG665:
andi $4, $3, 1
lhu $3, 0($4)
mthi $3
mflo $3
TAG666:
mtlo $3
lbu $2, 0($3)
bgtz $3, TAG667
mtlo $3
TAG667:
mthi $2
mthi $2
bne $2, $2, TAG668
srlv $1, $2, $2
TAG668:
mthi $1
add $3, $1, $1
srav $2, $3, $3
bgtz $3, TAG669
TAG669:
sll $2, $2, 11
bgez $2, TAG670
mthi $2
mthi $2
TAG670:
sh $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
mfhi $2
TAG671:
sh $2, 0($2)
srlv $3, $2, $2
mthi $2
multu $3, $2
TAG672:
sb $3, 0($3)
mthi $3
xori $3, $3, 14
mfhi $2
TAG673:
lui $4, 1
mtlo $4
lui $1, 9
mult $1, $1
TAG674:
mtlo $1
mfhi $1
lui $3, 6
mthi $1
TAG675:
sll $0, $0, 0
bne $3, $3, TAG676
mflo $4
sll $0, $0, 0
TAG676:
div $1, $1
blez $1, TAG677
sb $1, 0($1)
lb $4, 0($1)
TAG677:
lb $1, 0($4)
sb $1, 0($1)
sb $1, 0($4)
mfhi $3
TAG678:
bgez $3, TAG679
sh $3, 0($3)
lhu $2, 0($3)
bne $3, $3, TAG679
TAG679:
sub $2, $2, $2
xor $2, $2, $2
xor $2, $2, $2
mthi $2
TAG680:
mflo $3
mthi $2
bltz $3, TAG681
mthi $2
TAG681:
sb $3, 0($3)
lb $1, 0($3)
sb $1, 0($3)
srl $1, $1, 14
TAG682:
bne $1, $1, TAG683
mflo $4
lui $4, 10
srlv $4, $4, $1
TAG683:
mfhi $3
beq $3, $3, TAG684
lui $3, 3
sw $4, 0($3)
TAG684:
nor $2, $3, $3
andi $2, $2, 11
sb $3, 0($2)
div $2, $2
TAG685:
ori $2, $2, 2
or $1, $2, $2
mflo $1
bgtz $2, TAG686
TAG686:
sb $1, 0($1)
addiu $1, $1, 6
addiu $3, $1, 8
lb $3, 0($1)
TAG687:
mthi $3
lh $4, 0($3)
divu $3, $4
sw $4, -256($4)
TAG688:
sb $4, -256($4)
bne $4, $4, TAG689
lw $3, -256($4)
mtlo $4
TAG689:
sll $0, $0, 0
srl $3, $4, 0
andi $1, $3, 3
lh $3, -256($4)
TAG690:
mfhi $1
srav $3, $3, $3
mfhi $3
addi $4, $1, 15
TAG691:
subu $1, $4, $4
mthi $4
multu $1, $1
mtlo $4
TAG692:
lui $3, 1
mtlo $1
divu $1, $3
sll $0, $0, 0
TAG693:
bltz $1, TAG694
lui $1, 3
mflo $4
sll $0, $0, 0
TAG694:
lui $1, 7
bgez $1, TAG695
srav $4, $3, $1
bgtz $3, TAG695
TAG695:
multu $4, $4
beq $4, $4, TAG696
addu $1, $4, $4
div $1, $1
TAG696:
lui $3, 6
mult $3, $1
sll $4, $1, 13
mult $4, $1
TAG697:
mtlo $4
mthi $4
xori $4, $4, 6
mfhi $2
TAG698:
mthi $2
sra $2, $2, 4
xori $3, $2, 13
blez $2, TAG699
TAG699:
mfhi $3
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG700:
sll $0, $0, 0
lui $2, 9
mfhi $4
sll $0, $0, 0
TAG701:
or $1, $4, $4
sll $0, $0, 0
blez $4, TAG702
sll $0, $0, 0
TAG702:
mtlo $1
and $2, $1, $1
mtlo $1
mthi $2
TAG703:
andi $4, $2, 11
bgtz $2, TAG704
multu $2, $2
lui $4, 4
TAG704:
lui $2, 0
mflo $4
lhu $2, 0($4)
multu $4, $2
TAG705:
bgez $2, TAG706
multu $2, $2
sltiu $4, $2, 5
sb $4, 0($2)
TAG706:
lhu $2, 0($4)
sb $2, -256($2)
lui $2, 3
bltz $2, TAG707
TAG707:
lui $1, 9
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG708:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
beq $3, $2, TAG709
TAG709:
sll $0, $0, 0
bgez $3, TAG710
div $3, $3
add $1, $3, $3
TAG710:
andi $4, $1, 1
sll $0, $0, 0
bgtz $1, TAG711
mult $1, $1
TAG711:
sll $0, $0, 0
addu $1, $1, $1
bne $1, $1, TAG712
ori $1, $1, 10
TAG712:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG713:
slti $1, $2, 5
mult $2, $2
xor $3, $1, $2
beq $1, $2, TAG714
TAG714:
mthi $3
lui $4, 4
subu $3, $4, $3
srav $1, $3, $3
TAG715:
lb $4, 0($1)
mthi $1
bne $1, $1, TAG716
sb $4, 0($1)
TAG716:
mtlo $4
lw $2, 0($4)
lhu $3, -256($2)
bgtz $4, TAG717
TAG717:
mtlo $3
lui $2, 7
lb $3, -256($3)
lui $1, 9
TAG718:
blez $1, TAG719
sll $0, $0, 0
sltu $2, $1, $1
sll $0, $0, 0
TAG719:
mthi $2
lui $3, 13
lui $1, 5
beq $2, $1, TAG720
TAG720:
sll $0, $0, 0
xor $3, $1, $1
addiu $2, $3, 5
sh $2, 0($3)
TAG721:
or $3, $2, $2
mtlo $2
bgtz $3, TAG722
lbu $3, 0($2)
TAG722:
lw $2, 0($3)
lb $2, 0($2)
andi $2, $3, 9
slt $3, $2, $2
TAG723:
sw $3, 0($3)
lb $3, 0($3)
mtlo $3
mfhi $1
TAG724:
mthi $1
bne $1, $1, TAG725
andi $2, $1, 10
bltz $2, TAG725
TAG725:
sw $2, 0($2)
lui $4, 9
beq $4, $2, TAG726
mfhi $4
TAG726:
lb $1, 0($4)
blez $1, TAG727
sra $2, $4, 12
srav $1, $2, $2
TAG727:
bgtz $1, TAG728
sllv $1, $1, $1
beq $1, $1, TAG728
and $3, $1, $1
TAG728:
mthi $3
beq $3, $3, TAG729
sra $1, $3, 8
lbu $1, 0($3)
TAG729:
sb $1, 0($1)
multu $1, $1
blez $1, TAG730
sh $1, 0($1)
TAG730:
bltz $1, TAG731
sb $1, 0($1)
mthi $1
sw $1, 0($1)
TAG731:
add $4, $1, $1
multu $1, $4
blez $1, TAG732
lui $4, 13
TAG732:
srlv $3, $4, $4
mfhi $3
addu $2, $3, $3
sw $4, 0($3)
TAG733:
lui $1, 5
mult $2, $2
sra $1, $1, 8
div $1, $1
TAG734:
sll $0, $0, 0
divu $1, $1
bgez $1, TAG735
srav $1, $1, $1
TAG735:
div $1, $1
lui $1, 3
sll $0, $0, 0
mfhi $1
TAG736:
mtlo $1
slti $2, $1, 8
beq $1, $1, TAG737
mthi $1
TAG737:
lui $3, 5
bne $2, $3, TAG738
lui $4, 0
slt $1, $4, $3
TAG738:
andi $3, $1, 12
andi $3, $1, 10
blez $3, TAG739
add $1, $3, $1
TAG739:
bgtz $1, TAG740
mfhi $4
lb $3, 0($1)
mfhi $2
TAG740:
blez $2, TAG741
sh $2, 0($2)
addu $4, $2, $2
divu $2, $4
TAG741:
sh $4, 0($4)
mthi $4
beq $4, $4, TAG742
lui $4, 11
TAG742:
sll $0, $0, 0
bne $4, $4, TAG743
divu $4, $4
addiu $2, $4, 9
TAG743:
sll $0, $0, 0
mult $2, $3
mflo $4
xor $1, $4, $3
TAG744:
lui $2, 9
lh $2, 0($1)
lui $3, 8
mtlo $3
TAG745:
divu $3, $3
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG746:
lhu $3, 0($4)
sh $4, 0($4)
lb $1, 0($3)
beq $3, $3, TAG747
TAG747:
xor $2, $1, $1
bgez $1, TAG748
sra $4, $1, 0
mtlo $2
TAG748:
lui $1, 9
mfhi $4
mtlo $4
xor $2, $4, $1
TAG749:
mthi $2
bltz $2, TAG750
mult $2, $2
mtlo $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop