ori $1, $0, 3
ori $2, $0, 4
ori $3, $0, 2
ori $4, $0, 11
sw $1, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $3, 124($0)
sllv $4, $2, $2
subu $3, $2, $4
mult $4, $4
lui $4, 12
TAG1:
mthi $4
beq $4, $4, TAG2
sll $0, $0, 0
lb $1, 0($4)
TAG2:
lui $4, 0
bltz $4, TAG3
lbu $3, 0($4)
bltz $1, TAG3
TAG3:
mthi $3
lb $3, 0($3)
multu $3, $3
mthi $3
TAG4:
multu $3, $3
srl $1, $3, 1
mthi $1
mthi $1
TAG5:
xori $1, $1, 0
mtlo $1
mtlo $1
lui $1, 6
TAG6:
mthi $1
sll $0, $0, 0
xor $3, $4, $4
mflo $4
TAG7:
sb $4, 0($4)
addiu $2, $4, 12
beq $4, $2, TAG8
mult $2, $4
TAG8:
sh $2, 0($2)
mflo $3
slti $1, $3, 8
div $2, $1
TAG9:
or $3, $1, $1
sb $3, 0($1)
mthi $1
divu $1, $3
TAG10:
sb $3, 0($3)
bltz $3, TAG11
div $3, $3
divu $3, $3
TAG11:
beq $3, $3, TAG12
sb $3, 0($3)
lhu $4, 0($3)
mflo $1
TAG12:
lui $2, 11
bne $2, $1, TAG13
lui $4, 4
bgtz $4, TAG13
TAG13:
multu $4, $4
mthi $4
bne $4, $4, TAG14
nor $4, $4, $4
TAG14:
mthi $4
bgez $4, TAG15
sll $0, $0, 0
sltiu $4, $4, 15
TAG15:
mfhi $2
addiu $3, $4, 11
mflo $2
blez $4, TAG16
TAG16:
ori $4, $2, 7
sltiu $2, $2, 10
lui $4, 11
lui $1, 11
TAG17:
mtlo $1
sll $0, $0, 0
addiu $3, $1, 10
sll $0, $0, 0
TAG18:
andi $3, $1, 7
xori $4, $1, 1
mult $4, $1
multu $4, $1
TAG19:
mult $4, $4
bltz $4, TAG20
mult $4, $4
mtlo $4
TAG20:
mflo $1
blez $4, TAG21
sll $0, $0, 0
mthi $1
TAG21:
xori $4, $1, 10
divu $4, $4
addiu $1, $1, 8
sll $0, $0, 0
TAG22:
mtlo $3
mfhi $1
subu $4, $1, $3
ori $3, $1, 11
TAG23:
srl $2, $3, 1
sb $3, 0($3)
bne $3, $3, TAG24
mult $2, $2
TAG24:
multu $2, $2
lui $4, 14
bgez $4, TAG25
ori $4, $2, 6
TAG25:
sb $4, 0($4)
lui $2, 12
mtlo $2
sll $0, $0, 0
TAG26:
sra $4, $4, 0
bgez $4, TAG27
xori $1, $4, 14
sh $4, 0($4)
TAG27:
mtlo $1
lb $2, 0($1)
xori $3, $2, 4
bne $3, $1, TAG28
TAG28:
lui $3, 0
multu $3, $3
lui $4, 10
sll $0, $0, 0
TAG29:
sh $3, 0($3)
bgtz $3, TAG30
mfhi $4
sw $4, 0($4)
TAG30:
mflo $2
beq $2, $4, TAG31
mtlo $2
sltiu $4, $4, 9
TAG31:
sh $4, 0($4)
lui $2, 5
lb $1, 0($4)
mthi $2
TAG32:
mtlo $1
lui $3, 5
sltu $2, $3, $1
bne $3, $2, TAG33
TAG33:
mult $2, $2
sw $2, 0($2)
beq $2, $2, TAG34
mflo $4
TAG34:
sllv $3, $4, $4
sb $3, 0($4)
lw $2, 0($3)
mult $3, $4
TAG35:
mthi $2
slti $2, $2, 1
multu $2, $2
nor $4, $2, $2
TAG36:
mthi $4
lui $4, 0
xor $1, $4, $4
bgez $4, TAG37
TAG37:
lui $4, 12
mfhi $4
mfhi $1
srav $3, $1, $1
TAG38:
mflo $1
mtlo $1
mflo $3
bgez $3, TAG39
TAG39:
mtlo $3
mtlo $3
lbu $4, 0($3)
srlv $1, $3, $3
TAG40:
blez $1, TAG41
sb $1, 0($1)
and $4, $1, $1
sw $4, 0($4)
TAG41:
addiu $3, $4, 15
multu $4, $4
lui $4, 0
mult $4, $4
TAG42:
mult $4, $4
addiu $2, $4, 13
lb $3, 0($4)
mtlo $2
TAG43:
lb $4, 0($3)
mflo $1
sll $4, $4, 2
or $1, $3, $4
TAG44:
mflo $2
bgtz $2, TAG45
mtlo $1
multu $2, $1
TAG45:
lb $4, 0($2)
beq $4, $4, TAG46
ori $2, $2, 12
mthi $2
TAG46:
mflo $4
mflo $4
lb $1, 0($2)
bgtz $4, TAG47
TAG47:
mtlo $1
beq $1, $1, TAG48
mtlo $1
lui $1, 0
TAG48:
andi $2, $1, 4
sltiu $2, $2, 4
lui $3, 7
addiu $2, $2, 9
TAG49:
blez $2, TAG50
lui $4, 3
sll $0, $0, 0
sll $0, $0, 0
TAG50:
mflo $3
andi $1, $4, 1
mtlo $4
sb $3, 0($3)
TAG51:
bltz $1, TAG52
slti $1, $1, 7
bgtz $1, TAG52
lb $2, 0($1)
TAG52:
multu $2, $2
bltz $2, TAG53
lui $4, 2
beq $2, $4, TAG53
TAG53:
sltiu $2, $4, 4
bne $2, $2, TAG54
mthi $2
sll $0, $0, 0
TAG54:
div $4, $4
mfhi $4
mthi $4
mthi $4
TAG55:
bgtz $4, TAG56
lw $2, 0($4)
sh $4, 0($4)
subu $3, $4, $4
TAG56:
multu $3, $3
sb $3, 0($3)
sb $3, 0($3)
mthi $3
TAG57:
bne $3, $3, TAG58
mtlo $3
mult $3, $3
mflo $2
TAG58:
lh $4, 0($2)
nor $4, $2, $2
mfhi $1
addu $3, $4, $4
TAG59:
beq $3, $3, TAG60
div $3, $3
mflo $2
addu $1, $3, $2
TAG60:
ori $4, $1, 15
mfhi $1
lb $4, 0($4)
sb $4, 0($4)
TAG61:
bgez $4, TAG62
sb $4, 0($4)
lui $2, 0
bgez $4, TAG62
TAG62:
lui $2, 14
nor $4, $2, $2
mthi $2
sll $0, $0, 0
TAG63:
lui $4, 2
blez $4, TAG64
lui $3, 15
mfhi $1
TAG64:
sll $0, $0, 0
sltiu $3, $1, 1
lhu $3, 0($3)
subu $4, $3, $1
TAG65:
bgez $4, TAG66
lui $4, 3
mtlo $4
mtlo $4
TAG66:
mfhi $2
beq $4, $2, TAG67
mtlo $4
mfhi $1
TAG67:
lui $2, 2
mflo $1
mfhi $2
bne $1, $2, TAG68
TAG68:
mtlo $2
bgtz $2, TAG69
sll $0, $0, 0
or $1, $2, $2
TAG69:
xori $1, $1, 3
sll $0, $0, 0
mult $1, $1
mflo $2
TAG70:
sll $0, $0, 0
mtlo $3
div $3, $2
bne $2, $2, TAG71
TAG71:
multu $3, $3
bgez $3, TAG72
xor $1, $3, $3
sh $3, 0($1)
TAG72:
lui $3, 8
bgtz $3, TAG73
xori $4, $3, 11
bgtz $4, TAG73
TAG73:
mult $4, $4
mtlo $4
blez $4, TAG74
lui $2, 12
TAG74:
sll $0, $0, 0
subu $1, $2, $2
mfhi $4
beq $2, $1, TAG75
TAG75:
lui $3, 15
addu $1, $3, $3
sll $0, $0, 0
lui $2, 4
TAG76:
mtlo $2
sll $0, $0, 0
beq $2, $2, TAG77
sll $0, $0, 0
TAG77:
mthi $2
mthi $2
mthi $2
sltiu $4, $2, 0
TAG78:
mfhi $3
addi $2, $4, 2
sb $4, 0($4)
sll $0, $0, 0
TAG79:
bltz $3, TAG80
mflo $4
beq $3, $4, TAG80
mult $3, $3
TAG80:
mtlo $4
or $3, $4, $4
mfhi $4
mthi $4
TAG81:
lhu $4, 0($4)
sb $4, 0($4)
lhu $2, 0($4)
div $4, $2
TAG82:
beq $2, $2, TAG83
lui $2, 0
mfhi $4
multu $2, $4
TAG83:
sra $4, $4, 8
or $2, $4, $4
lui $2, 1
lui $3, 0
TAG84:
sra $1, $3, 2
bne $3, $3, TAG85
mfhi $4
mthi $1
TAG85:
bltz $4, TAG86
slt $1, $4, $4
srlv $4, $4, $4
mflo $2
TAG86:
bltz $2, TAG87
subu $1, $2, $2
lui $1, 10
mfhi $4
TAG87:
multu $4, $4
addi $1, $4, 14
bne $4, $1, TAG88
slti $2, $4, 1
TAG88:
sb $2, 0($2)
mfhi $3
srl $1, $2, 10
addiu $2, $2, 0
TAG89:
lbu $1, 0($2)
srl $1, $2, 3
lw $4, 0($1)
mtlo $2
TAG90:
slti $1, $4, 5
sb $4, 0($1)
multu $1, $1
lui $4, 1
TAG91:
subu $2, $4, $4
sll $0, $0, 0
mthi $3
mtlo $2
TAG92:
bltz $3, TAG93
multu $3, $3
lw $4, 0($3)
beq $4, $4, TAG93
TAG93:
divu $4, $4
lui $4, 11
mtlo $4
sll $0, $0, 0
TAG94:
beq $4, $4, TAG95
mfhi $1
mflo $1
divu $1, $4
TAG95:
mult $1, $1
srav $4, $1, $1
bne $4, $4, TAG96
sb $4, 0($4)
TAG96:
bne $4, $4, TAG97
mtlo $4
lui $3, 8
lui $1, 14
TAG97:
sltu $2, $1, $1
lui $2, 9
or $3, $1, $1
sll $0, $0, 0
TAG98:
beq $2, $2, TAG99
sltiu $4, $2, 11
bgtz $4, TAG99
lh $2, 0($2)
TAG99:
bgtz $2, TAG100
mtlo $2
lui $3, 11
mtlo $2
TAG100:
bltz $3, TAG101
mult $3, $3
sll $0, $0, 0
bgtz $3, TAG101
TAG101:
sltiu $4, $3, 4
sra $4, $3, 11
bltz $4, TAG102
lw $3, -448($4)
TAG102:
mtlo $3
sra $4, $3, 13
bne $4, $3, TAG103
sllv $2, $3, $4
TAG103:
sll $0, $0, 0
sll $0, $0, 0
lb $4, 0($4)
mthi $4
TAG104:
mfhi $2
sh $4, 0($4)
sltiu $2, $4, 4
mflo $3
TAG105:
multu $3, $3
srlv $2, $3, $3
bgtz $2, TAG106
mthi $2
TAG106:
beq $2, $2, TAG107
mfhi $4
divu $2, $4
mflo $3
TAG107:
lui $1, 14
sll $0, $0, 0
mthi $2
mtlo $1
TAG108:
mtlo $2
sll $0, $0, 0
sllv $3, $2, $2
beq $3, $3, TAG109
TAG109:
mfhi $3
mult $3, $3
mfhi $3
lui $4, 9
TAG110:
mtlo $4
mfhi $1
divu $4, $4
mflo $2
TAG111:
mult $2, $2
addiu $2, $2, 0
mtlo $2
bne $2, $2, TAG112
TAG112:
nor $3, $2, $2
lui $3, 8
sll $0, $0, 0
lui $2, 12
TAG113:
or $4, $2, $2
mtlo $4
bgtz $4, TAG114
sll $0, $0, 0
TAG114:
bne $4, $4, TAG115
lui $1, 6
or $2, $4, $4
addu $4, $4, $2
TAG115:
bne $4, $4, TAG116
multu $4, $4
sll $0, $0, 0
div $4, $4
TAG116:
div $4, $4
subu $1, $4, $4
sb $1, 0($1)
bltz $4, TAG117
TAG117:
sw $1, 0($1)
mult $1, $1
lh $1, 0($1)
beq $1, $1, TAG118
TAG118:
mflo $1
mtlo $1
addiu $1, $1, 2
lb $2, 0($1)
TAG119:
lbu $4, 0($2)
lui $3, 8
beq $2, $3, TAG120
addiu $1, $2, 3
TAG120:
beq $1, $1, TAG121
mthi $1
lbu $1, 0($1)
nor $3, $1, $1
TAG121:
lui $3, 5
mult $3, $3
divu $3, $3
bne $3, $3, TAG122
TAG122:
sll $0, $0, 0
bgtz $1, TAG123
sltiu $4, $1, 1
lw $2, 0($1)
TAG123:
lui $4, 12
srl $2, $4, 12
bgez $2, TAG124
lh $4, -192($2)
TAG124:
multu $4, $4
bgtz $4, TAG125
lui $4, 5
mflo $4
TAG125:
bne $4, $4, TAG126
lui $3, 0
nor $3, $4, $4
mfhi $2
TAG126:
mtlo $2
mthi $2
srav $2, $2, $2
mthi $2
TAG127:
mult $2, $2
mult $2, $2
subu $2, $2, $2
sh $2, 0($2)
TAG128:
mflo $3
beq $2, $3, TAG129
lui $1, 4
divu $1, $2
TAG129:
sll $0, $0, 0
bne $1, $1, TAG130
sll $0, $0, 0
bgtz $4, TAG130
TAG130:
sll $4, $4, 8
mfhi $1
lui $1, 6
mtlo $4
TAG131:
lui $3, 4
mfhi $1
lbu $3, 0($1)
bltz $3, TAG132
TAG132:
mthi $3
bne $3, $3, TAG133
sb $3, 0($3)
mtlo $3
TAG133:
lui $3, 8
mthi $3
or $3, $3, $3
bltz $3, TAG134
TAG134:
mflo $1
slt $1, $1, $1
bne $1, $1, TAG135
srl $1, $1, 0
TAG135:
sh $1, 0($1)
mthi $1
sb $1, 0($1)
sw $1, 0($1)
TAG136:
lbu $3, 0($1)
bne $3, $3, TAG137
mthi $3
bgtz $3, TAG137
TAG137:
mfhi $1
ori $4, $3, 13
bgtz $1, TAG138
lui $2, 4
TAG138:
nor $2, $2, $2
sll $0, $0, 0
subu $2, $2, $2
bne $2, $2, TAG139
TAG139:
lui $3, 11
mthi $2
multu $2, $3
sra $1, $3, 2
TAG140:
mflo $2
mflo $3
mfhi $3
nor $4, $1, $2
TAG141:
sltiu $3, $4, 4
lui $1, 10
bgez $1, TAG142
divu $3, $4
TAG142:
bne $1, $1, TAG143
mflo $2
bgez $2, TAG143
sllv $4, $1, $1
TAG143:
mult $4, $4
multu $4, $4
mfhi $1
lb $2, 0($1)
TAG144:
sb $2, 0($2)
and $3, $2, $2
andi $3, $3, 14
bne $3, $3, TAG145
TAG145:
mflo $3
mthi $3
beq $3, $3, TAG146
addu $2, $3, $3
TAG146:
bgtz $2, TAG147
lhu $2, 0($2)
beq $2, $2, TAG147
multu $2, $2
TAG147:
xori $3, $2, 5
sh $3, 0($2)
lw $4, 0($2)
nor $1, $4, $3
TAG148:
mfhi $4
addi $3, $4, 4
sltiu $2, $1, 15
mflo $2
TAG149:
blez $2, TAG150
mflo $2
lui $2, 11
lhu $3, 0($2)
TAG150:
bne $3, $3, TAG151
sltu $4, $3, $3
sh $3, 0($4)
sh $3, 0($3)
TAG151:
mthi $4
sub $4, $4, $4
beq $4, $4, TAG152
srlv $2, $4, $4
TAG152:
lui $3, 7
srl $1, $3, 11
sltiu $2, $3, 3
multu $2, $2
TAG153:
bne $2, $2, TAG154
sw $2, 0($2)
mflo $4
mflo $1
TAG154:
and $3, $1, $1
lbu $4, 0($1)
mflo $1
sh $1, 0($4)
TAG155:
mfhi $2
and $2, $1, $2
slti $4, $1, 15
lui $2, 9
TAG156:
bltz $2, TAG157
lui $1, 6
bne $1, $1, TAG157
slt $4, $1, $1
TAG157:
lui $4, 3
blez $4, TAG158
mtlo $4
beq $4, $4, TAG158
TAG158:
sll $0, $0, 0
mfhi $4
andi $2, $4, 2
sb $4, 0($4)
TAG159:
subu $2, $2, $2
bltz $2, TAG160
sh $2, 0($2)
lb $3, 0($2)
TAG160:
mult $3, $3
mfhi $2
sb $2, 0($3)
mtlo $2
TAG161:
mtlo $2
mfhi $1
addi $2, $2, 8
mult $1, $1
TAG162:
lhu $2, 0($2)
bgez $2, TAG163
sb $2, 0($2)
bgez $2, TAG163
TAG163:
mthi $2
lui $4, 13
sll $0, $0, 0
divu $2, $2
TAG164:
sll $0, $0, 0
bgez $4, TAG165
slt $2, $4, $4
lw $1, 0($4)
TAG165:
slti $4, $1, 9
lbu $4, 0($1)
sh $4, 0($4)
mtlo $1
TAG166:
lui $2, 8
mflo $4
sb $4, 0($4)
slti $4, $2, 5
TAG167:
mult $4, $4
mthi $4
bgtz $4, TAG168
multu $4, $4
TAG168:
sb $4, 0($4)
mfhi $1
lui $3, 14
multu $1, $3
TAG169:
bne $3, $3, TAG170
mthi $3
multu $3, $3
sll $0, $0, 0
TAG170:
addiu $3, $3, 13
sll $0, $0, 0
mthi $2
mfhi $1
TAG171:
mfhi $3
sll $0, $0, 0
sllv $4, $3, $1
bgtz $3, TAG172
TAG172:
lui $1, 10
multu $1, $4
lui $2, 9
sll $0, $0, 0
TAG173:
sll $0, $0, 0
bltz $2, TAG174
mfhi $1
mtlo $3
TAG174:
divu $1, $1
beq $1, $1, TAG175
mtlo $1
mflo $4
TAG175:
bltz $4, TAG176
srlv $3, $4, $4
mthi $4
beq $3, $3, TAG176
TAG176:
sll $0, $0, 0
mfhi $3
and $2, $3, $3
ori $2, $3, 10
TAG177:
bgez $2, TAG178
mtlo $2
srl $1, $2, 9
bltz $2, TAG178
TAG178:
mfhi $3
nor $2, $3, $3
lbu $4, 0($1)
mtlo $1
TAG179:
bgez $4, TAG180
sb $4, 0($4)
multu $4, $4
sh $4, 0($4)
TAG180:
xor $3, $4, $4
mflo $2
mtlo $3
sh $4, 0($3)
TAG181:
lui $4, 6
lui $2, 15
div $4, $4
divu $2, $2
TAG182:
beq $2, $2, TAG183
sll $0, $0, 0
xor $3, $2, $2
bltz $3, TAG183
TAG183:
addiu $4, $3, 2
blez $4, TAG184
mult $4, $3
lui $3, 0
TAG184:
sb $3, 0($3)
ori $4, $3, 13
and $2, $3, $4
bgez $4, TAG185
TAG185:
mtlo $2
lb $1, 0($2)
lui $3, 8
mflo $4
TAG186:
mult $4, $4
bltz $4, TAG187
lbu $4, 0($4)
lui $4, 9
TAG187:
beq $4, $4, TAG188
lui $1, 9
mfhi $4
lui $2, 7
TAG188:
bne $2, $2, TAG189
lui $3, 3
lui $2, 4
mtlo $2
TAG189:
mtlo $2
sll $0, $0, 0
subu $4, $2, $2
div $2, $2
TAG190:
lhu $1, 0($4)
bgez $4, TAG191
lui $1, 11
div $1, $4
TAG191:
sll $0, $0, 0
mthi $1
mfhi $1
andi $1, $2, 3
TAG192:
blez $1, TAG193
andi $2, $1, 12
beq $1, $1, TAG193
or $2, $2, $2
TAG193:
mthi $2
lb $4, 0($2)
ori $1, $4, 0
lbu $1, 0($4)
TAG194:
srlv $1, $1, $1
beq $1, $1, TAG195
mult $1, $1
sh $1, 0($1)
TAG195:
addiu $3, $1, 6
sb $1, 0($1)
sra $3, $3, 6
sb $3, 0($3)
TAG196:
sb $3, 0($3)
subu $3, $3, $3
slt $1, $3, $3
addi $1, $1, 15
TAG197:
sll $2, $1, 6
andi $4, $1, 7
sll $2, $2, 3
multu $1, $2
TAG198:
mflo $4
mfhi $2
lui $3, 10
addiu $2, $4, 6
TAG199:
bgtz $2, TAG200
sll $0, $0, 0
bgez $2, TAG200
lw $4, 0($2)
TAG200:
sll $0, $0, 0
mthi $4
lui $2, 0
lui $2, 12
TAG201:
bltz $2, TAG202
addu $3, $2, $2
bgez $2, TAG202
lui $2, 8
TAG202:
bne $2, $2, TAG203
mflo $1
mfhi $3
mfhi $1
TAG203:
mflo $3
lui $3, 8
beq $3, $3, TAG204
lui $3, 12
TAG204:
sll $0, $0, 0
bgez $3, TAG205
divu $3, $3
mult $3, $3
TAG205:
lui $4, 8
mfhi $1
multu $3, $4
mfhi $4
TAG206:
ori $4, $4, 8
lui $3, 3
mthi $4
div $3, $4
TAG207:
ori $1, $3, 3
mflo $1
beq $3, $1, TAG208
mfhi $3
TAG208:
xori $3, $3, 12
lui $1, 7
beq $1, $1, TAG209
lui $3, 3
TAG209:
or $3, $3, $3
bltz $3, TAG210
sll $0, $0, 0
mtlo $3
TAG210:
mthi $3
and $2, $3, $3
xori $1, $2, 10
mflo $1
TAG211:
beq $1, $1, TAG212
lui $1, 4
beq $1, $1, TAG212
slt $1, $1, $1
TAG212:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG213
div $1, $1
TAG213:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG214
multu $1, $1
TAG214:
divu $4, $4
sh $4, 0($4)
lui $3, 14
mult $3, $4
TAG215:
sll $0, $0, 0
lw $4, 0($4)
sll $1, $4, 2
bne $3, $3, TAG216
TAG216:
mflo $1
subu $2, $1, $1
sltiu $3, $2, 1
lhu $4, 0($2)
TAG217:
subu $1, $4, $4
bne $1, $1, TAG218
lbu $2, 0($4)
sltiu $2, $4, 0
TAG218:
sh $2, 0($2)
multu $2, $2
subu $1, $2, $2
lui $2, 1
TAG219:
mfhi $3
divu $2, $2
multu $2, $2
sll $0, $0, 0
TAG220:
beq $3, $3, TAG221
lui $3, 13
sra $2, $3, 10
bne $3, $2, TAG221
TAG221:
mthi $2
sll $0, $0, 0
beq $2, $2, TAG222
addi $3, $1, 15
TAG222:
div $3, $3
mflo $3
andi $4, $3, 2
lb $1, 0($3)
TAG223:
lbu $2, 0($1)
mfhi $1
mtlo $1
multu $1, $1
TAG224:
mult $1, $1
srlv $4, $1, $1
sb $1, 0($1)
mfhi $4
TAG225:
sb $4, 0($4)
lhu $4, 0($4)
lui $1, 15
subu $3, $1, $4
TAG226:
mtlo $3
lui $1, 13
beq $1, $3, TAG227
lui $2, 15
TAG227:
lui $3, 10
bne $2, $2, TAG228
sll $0, $0, 0
blez $3, TAG228
TAG228:
sra $1, $3, 14
addu $3, $1, $3
beq $1, $3, TAG229
sll $2, $3, 4
TAG229:
bltz $2, TAG230
sra $2, $2, 1
andi $1, $2, 5
mthi $2
TAG230:
addiu $3, $1, 3
beq $3, $1, TAG231
lb $2, 0($3)
addi $2, $1, 2
TAG231:
sltiu $2, $2, 1
beq $2, $2, TAG232
mflo $2
sw $2, 0($2)
TAG232:
andi $3, $2, 2
ori $1, $3, 10
srav $1, $1, $1
srl $2, $1, 10
TAG233:
sub $4, $2, $2
bgez $2, TAG234
andi $1, $2, 8
lui $2, 9
TAG234:
lb $2, 0($2)
lb $4, 0($2)
lw $3, 0($4)
beq $2, $4, TAG235
TAG235:
subu $3, $3, $3
bne $3, $3, TAG236
sltiu $2, $3, 2
bne $3, $2, TAG236
TAG236:
lui $2, 8
mtlo $2
mtlo $2
srl $1, $2, 7
TAG237:
divu $1, $1
bgtz $1, TAG238
sw $1, -4096($1)
mflo $1
TAG238:
div $1, $1
mfhi $4
blez $4, TAG239
sh $4, 0($4)
TAG239:
sllv $2, $4, $4
sub $1, $4, $2
lui $1, 6
ori $2, $1, 12
TAG240:
bne $2, $2, TAG241
mtlo $2
mfhi $1
srl $2, $2, 8
TAG241:
blez $2, TAG242
mthi $2
mtlo $2
beq $2, $2, TAG242
TAG242:
xor $4, $2, $2
xor $3, $2, $2
lw $4, 0($4)
mtlo $4
TAG243:
srav $4, $4, $4
mthi $4
sw $4, 0($4)
addi $3, $4, 15
TAG244:
lui $3, 12
beq $3, $3, TAG245
sll $0, $0, 0
sltiu $4, $3, 6
TAG245:
xori $3, $4, 4
lhu $3, 0($3)
sb $3, 0($4)
bne $3, $3, TAG246
TAG246:
multu $3, $3
divu $3, $3
mflo $2
lb $4, 0($2)
TAG247:
mfhi $4
bne $4, $4, TAG248
multu $4, $4
addi $3, $4, 5
TAG248:
bgez $3, TAG249
srlv $3, $3, $3
blez $3, TAG249
mtlo $3
TAG249:
mtlo $3
bgez $3, TAG250
mult $3, $3
mflo $3
TAG250:
multu $3, $3
lhu $3, 0($3)
blez $3, TAG251
lh $1, 0($3)
TAG251:
andi $3, $1, 14
mthi $3
sltiu $4, $1, 6
mfhi $4
TAG252:
sra $4, $4, 3
bgtz $4, TAG253
ori $1, $4, 14
bgez $1, TAG253
TAG253:
ori $3, $1, 11
sb $1, 0($1)
lhu $4, 0($1)
mtlo $4
TAG254:
mthi $4
lui $3, 3
addu $4, $4, $4
lui $1, 3
TAG255:
mthi $1
srl $3, $1, 8
divu $3, $3
or $3, $1, $3
TAG256:
lui $3, 12
mthi $3
subu $2, $3, $3
beq $2, $2, TAG257
TAG257:
subu $3, $2, $2
sb $2, 0($2)
mfhi $1
mflo $4
TAG258:
bgez $4, TAG259
lui $4, 5
blez $4, TAG259
lw $2, 0($4)
TAG259:
lw $1, 0($2)
srlv $2, $2, $1
mthi $2
srl $1, $2, 11
TAG260:
lh $1, 0($1)
mfhi $3
sw $1, 0($3)
slt $2, $3, $3
TAG261:
multu $2, $2
bne $2, $2, TAG262
mfhi $1
sw $2, 0($1)
TAG262:
mtlo $1
lui $3, 5
mfhi $1
sb $1, 0($1)
TAG263:
beq $1, $1, TAG264
mtlo $1
add $4, $1, $1
div $1, $4
TAG264:
bne $4, $4, TAG265
lui $3, 3
srlv $3, $3, $4
div $3, $4
TAG265:
mtlo $3
sll $0, $0, 0
beq $3, $3, TAG266
addiu $3, $3, 8
TAG266:
lui $1, 3
lui $3, 10
mfhi $1
sll $0, $0, 0
TAG267:
mtlo $1
lui $3, 11
div $1, $1
div $1, $3
TAG268:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sh $3, 0($2)
TAG269:
bgtz $2, TAG270
mfhi $2
sll $0, $0, 0
div $2, $2
TAG270:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $1
mfhi $4
TAG271:
mthi $4
mtlo $4
beq $4, $4, TAG272
ori $3, $4, 0
TAG272:
bgtz $3, TAG273
andi $2, $3, 1
mult $3, $2
div $2, $2
TAG273:
beq $2, $2, TAG274
mtlo $2
blez $2, TAG274
mfhi $4
TAG274:
bltz $4, TAG275
mflo $3
lui $4, 12
mthi $4
TAG275:
lui $1, 5
addu $1, $4, $4
bgez $1, TAG276
mthi $1
TAG276:
sltiu $4, $1, 7
bgez $1, TAG277
lui $3, 15
lui $2, 12
TAG277:
nor $1, $2, $2
mflo $3
lui $3, 4
beq $3, $3, TAG278
TAG278:
mtlo $3
blez $3, TAG279
or $3, $3, $3
beq $3, $3, TAG279
TAG279:
sltiu $3, $3, 9
andi $1, $3, 15
subu $2, $1, $3
mthi $3
TAG280:
lhu $1, 0($2)
subu $2, $2, $1
andi $3, $2, 15
sh $2, 0($2)
TAG281:
mult $3, $3
or $2, $3, $3
mult $3, $3
beq $2, $3, TAG282
TAG282:
sw $2, 0($2)
mult $2, $2
sh $2, 0($2)
lw $4, 0($2)
TAG283:
subu $2, $4, $4
bgtz $2, TAG284
ori $1, $2, 9
xor $4, $4, $2
TAG284:
multu $4, $4
addi $2, $4, 11
blez $4, TAG285
slti $3, $2, 8
TAG285:
ori $1, $3, 13
lbu $3, 0($1)
bltz $1, TAG286
lbu $3, 0($3)
TAG286:
lui $3, 0
and $2, $3, $3
bne $3, $3, TAG287
sltu $1, $2, $3
TAG287:
nor $4, $1, $1
sh $1, 0($1)
bne $4, $4, TAG288
multu $4, $1
TAG288:
blez $4, TAG289
sw $4, 1($4)
blez $4, TAG289
sw $4, 0($4)
TAG289:
sll $0, $0, 0
bgtz $3, TAG290
lbu $4, 0($3)
bgez $4, TAG290
TAG290:
mult $4, $4
sw $4, -255($4)
addu $1, $4, $4
lw $2, -510($1)
TAG291:
sll $0, $0, 0
blez $2, TAG292
addu $2, $1, $2
sw $1, -765($2)
TAG292:
blez $2, TAG293
andi $4, $2, 10
blez $2, TAG293
lui $4, 6
TAG293:
blez $4, TAG294
div $4, $4
sll $0, $0, 0
mtlo $4
TAG294:
mtlo $4
sll $0, $0, 0
slt $4, $4, $4
lw $1, 0($4)
TAG295:
mtlo $1
mflo $3
mult $3, $3
beq $3, $3, TAG296
TAG296:
mthi $3
bltz $3, TAG297
mfhi $4
mthi $3
TAG297:
srl $2, $4, 6
mflo $4
mthi $4
bgtz $2, TAG298
TAG298:
mflo $3
sll $0, $0, 0
mflo $1
beq $1, $1, TAG299
TAG299:
mfhi $4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG300:
mthi $4
sll $0, $0, 0
addu $3, $4, $4
and $4, $3, $4
TAG301:
lui $1, 14
and $3, $1, $4
lui $2, 2
mfhi $1
TAG302:
bgtz $1, TAG303
andi $3, $1, 11
multu $3, $1
sllv $4, $1, $1
TAG303:
mflo $4
lui $3, 7
bgez $4, TAG304
divu $3, $3
TAG304:
sll $0, $0, 0
beq $1, $3, TAG305
mthi $3
sll $0, $0, 0
TAG305:
beq $4, $4, TAG306
lui $1, 11
lui $3, 3
andi $2, $3, 14
TAG306:
sll $0, $0, 0
andi $1, $2, 14
sltu $1, $2, $3
mfhi $4
TAG307:
sll $0, $0, 0
sra $2, $4, 2
mtlo $2
mflo $1
TAG308:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG309
lui $2, 12
TAG309:
addu $4, $2, $2
lui $3, 3
or $3, $4, $2
mtlo $4
TAG310:
sll $0, $0, 0
sll $0, $0, 0
xori $2, $3, 4
srlv $3, $2, $2
TAG311:
sltiu $4, $3, 2
or $3, $3, $3
bltz $4, TAG312
lui $1, 14
TAG312:
mfhi $3
srav $2, $3, $3
xor $1, $2, $3
addiu $3, $2, 2
TAG313:
lui $2, 6
sll $0, $0, 0
mflo $3
mtlo $3
TAG314:
sll $0, $0, 0
sltiu $2, $4, 2
blez $2, TAG315
sll $0, $0, 0
TAG315:
beq $2, $2, TAG316
lui $1, 3
andi $4, $2, 4
bgez $2, TAG316
TAG316:
multu $4, $4
sb $4, 0($4)
lw $1, 0($4)
div $4, $1
TAG317:
mflo $1
mflo $4
bgez $1, TAG318
mflo $1
TAG318:
lbu $1, 0($1)
multu $1, $1
lw $3, 0($1)
lhu $1, -256($3)
TAG319:
sb $1, -256($1)
subu $2, $1, $1
multu $1, $2
sll $3, $2, 6
TAG320:
sw $3, 0($3)
sb $3, 0($3)
mtlo $3
subu $2, $3, $3
TAG321:
sra $1, $2, 0
sub $3, $1, $1
beq $2, $1, TAG322
sub $1, $1, $3
TAG322:
srlv $1, $1, $1
bne $1, $1, TAG323
mfhi $2
bltz $1, TAG323
TAG323:
mtlo $2
mtlo $2
sh $2, 0($2)
lbu $3, 0($2)
TAG324:
mfhi $1
mthi $3
beq $3, $3, TAG325
lui $1, 8
TAG325:
addu $1, $1, $1
bgez $1, TAG326
divu $1, $1
lui $2, 0
TAG326:
slt $3, $2, $2
addu $1, $3, $2
addi $3, $1, 8
lhu $1, 0($3)
TAG327:
ori $3, $1, 2
lhu $4, 0($3)
divu $4, $4
lui $3, 10
TAG328:
blez $3, TAG329
addu $3, $3, $3
ori $4, $3, 2
sll $0, $0, 0
TAG329:
mthi $4
lui $2, 0
divu $2, $4
blez $2, TAG330
TAG330:
lui $4, 2
lui $3, 14
mthi $4
mflo $1
TAG331:
bgtz $1, TAG332
sw $1, 0($1)
bne $1, $1, TAG332
srl $4, $1, 8
TAG332:
sub $3, $4, $4
beq $3, $4, TAG333
mthi $3
addu $1, $4, $4
TAG333:
mthi $1
bgez $1, TAG334
xori $3, $1, 4
mflo $3
TAG334:
mfhi $1
mfhi $1
mthi $1
lui $3, 10
TAG335:
sll $0, $0, 0
bgtz $3, TAG336
sllv $1, $3, $3
bne $3, $1, TAG336
TAG336:
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
div $1, $1
TAG337:
bgtz $1, TAG338
mtlo $1
div $1, $1
mfhi $2
TAG338:
lui $2, 11
multu $2, $2
sll $0, $0, 0
bgtz $2, TAG339
TAG339:
lui $4, 2
mthi $2
bne $4, $4, TAG340
mult $4, $4
TAG340:
mflo $2
slti $4, $2, 12
lb $1, 0($4)
sltiu $2, $4, 1
TAG341:
blez $2, TAG342
lui $2, 2
mult $2, $2
lb $3, 0($2)
TAG342:
mthi $3
divu $3, $3
lui $1, 2
sll $0, $0, 0
TAG343:
mtlo $1
ori $2, $1, 6
mfhi $1
bltz $1, TAG344
TAG344:
subu $3, $1, $1
or $1, $1, $1
lh $1, 0($1)
add $4, $1, $1
TAG345:
lw $3, 0($4)
sll $3, $3, 13
beq $3, $3, TAG346
xor $1, $3, $3
TAG346:
lh $3, 0($1)
lui $1, 0
slti $1, $1, 4
bgez $1, TAG347
TAG347:
mfhi $4
lb $1, 0($1)
sra $4, $4, 6
mflo $1
TAG348:
multu $1, $1
sllv $3, $1, $1
mthi $1
bne $1, $1, TAG349
TAG349:
sll $0, $0, 0
mtlo $3
addiu $1, $3, 8
xor $1, $1, $1
TAG350:
mtlo $1
lui $4, 14
bltz $4, TAG351
lb $4, 0($1)
TAG351:
mtlo $4
or $4, $4, $4
lui $3, 5
bgtz $3, TAG352
TAG352:
andi $3, $3, 11
sw $3, 0($3)
multu $3, $3
mult $3, $3
TAG353:
lui $4, 8
ori $3, $3, 4
sh $4, 0($3)
bgtz $3, TAG354
TAG354:
ori $2, $3, 14
mult $3, $3
lui $1, 10
sltiu $3, $3, 9
TAG355:
sb $3, 0($3)
bne $3, $3, TAG356
mthi $3
srl $3, $3, 12
TAG356:
lw $3, 0($3)
sltiu $2, $3, 14
lui $1, 1
mthi $3
TAG357:
lui $1, 5
beq $1, $1, TAG358
sll $0, $0, 0
lbu $1, 0($1)
TAG358:
lui $4, 3
mtlo $4
div $1, $4
mthi $1
TAG359:
mtlo $4
lui $2, 2
bne $4, $2, TAG360
lui $3, 13
TAG360:
mult $3, $3
lui $3, 4
sll $0, $0, 0
lui $2, 4
TAG361:
lui $2, 1
multu $2, $2
subu $1, $2, $2
sll $0, $0, 0
TAG362:
bne $1, $1, TAG363
sw $1, 0($1)
sll $1, $1, 9
mult $1, $1
TAG363:
slti $2, $1, 14
sh $1, 0($1)
bltz $2, TAG364
sb $1, 0($2)
TAG364:
sb $2, 0($2)
sra $4, $2, 6
mthi $4
sb $4, 0($2)
TAG365:
mtlo $4
beq $4, $4, TAG366
sb $4, 0($4)
lui $2, 7
TAG366:
lbu $2, 0($2)
sra $1, $2, 12
lw $2, 0($2)
mflo $1
TAG367:
sh $1, 0($1)
mthi $1
lui $1, 11
mfhi $4
TAG368:
lhu $1, 0($4)
sw $1, 0($1)
mthi $4
bne $1, $4, TAG369
TAG369:
mult $1, $1
sh $1, 0($1)
multu $1, $1
blez $1, TAG370
TAG370:
mfhi $2
bgtz $1, TAG371
mtlo $1
lui $1, 7
TAG371:
sll $0, $0, 0
mfhi $4
mthi $4
lh $3, 0($4)
TAG372:
bgtz $3, TAG373
multu $3, $3
lw $4, 0($3)
lui $3, 6
TAG373:
bne $3, $3, TAG374
multu $3, $3
bne $3, $3, TAG374
sll $0, $0, 0
TAG374:
sll $0, $0, 0
bgez $3, TAG375
mtlo $3
ori $1, $3, 1
TAG375:
divu $1, $1
multu $1, $1
lui $2, 8
mfhi $1
TAG376:
sllv $2, $1, $1
sra $2, $1, 12
lui $2, 14
multu $2, $2
TAG377:
sll $0, $0, 0
lui $2, 11
bne $2, $2, TAG378
mfhi $3
TAG378:
sb $3, -196($3)
lui $3, 9
sra $3, $3, 9
bne $3, $3, TAG379
TAG379:
sll $0, $0, 0
multu $3, $3
bne $3, $2, TAG380
srav $2, $3, $2
TAG380:
lui $1, 10
mflo $4
mtlo $2
sw $2, -1152($2)
TAG381:
mtlo $4
sra $1, $4, 10
bne $1, $4, TAG382
mthi $1
TAG382:
sra $1, $1, 8
lb $4, 0($1)
sh $4, 0($4)
beq $1, $1, TAG383
TAG383:
mthi $4
bgtz $4, TAG384
mult $4, $4
lui $1, 10
TAG384:
addu $3, $1, $1
lui $3, 12
lui $3, 13
sll $0, $0, 0
TAG385:
mfhi $2
lui $3, 0
bne $2, $2, TAG386
lbu $3, 0($3)
TAG386:
add $2, $3, $3
bne $3, $2, TAG387
lui $4, 9
sh $3, 0($3)
TAG387:
addiu $4, $4, 6
sll $0, $0, 0
beq $4, $4, TAG388
sll $0, $0, 0
TAG388:
lui $1, 12
ori $3, $1, 4
bne $1, $1, TAG389
mflo $3
TAG389:
lw $2, 0($3)
sub $4, $3, $3
mfhi $2
multu $4, $4
TAG390:
bltz $2, TAG391
mflo $2
ori $3, $2, 0
mfhi $1
TAG391:
mthi $1
bgtz $1, TAG392
lb $3, 0($1)
mthi $1
TAG392:
beq $3, $3, TAG393
lui $2, 8
div $3, $2
bgez $3, TAG393
TAG393:
divu $2, $2
bltz $2, TAG394
addu $1, $2, $2
mflo $2
TAG394:
bne $2, $2, TAG395
lui $1, 7
bne $1, $2, TAG395
xor $3, $2, $1
TAG395:
sll $0, $0, 0
lui $3, 5
bne $4, $3, TAG396
sll $0, $0, 0
TAG396:
beq $2, $2, TAG397
multu $2, $2
mfhi $4
divu $4, $2
TAG397:
lui $3, 8
bne $3, $3, TAG398
sra $3, $3, 10
addiu $1, $4, 9
TAG398:
lui $3, 14
ori $3, $3, 10
lui $3, 14
mthi $1
TAG399:
bgez $3, TAG400
multu $3, $3
mflo $2
mfhi $3
TAG400:
xor $3, $3, $3
xori $1, $3, 5
mfhi $4
lh $4, 0($3)
TAG401:
mtlo $4
and $1, $4, $4
mfhi $3
lhu $3, -196($3)
TAG402:
mtlo $3
sh $3, 0($3)
mult $3, $3
mthi $3
TAG403:
beq $3, $3, TAG404
mflo $4
bgez $3, TAG404
add $3, $4, $4
TAG404:
lb $4, 0($3)
bgez $3, TAG405
lbu $3, 0($4)
lw $2, 0($3)
TAG405:
lbu $4, 0($2)
bgez $4, TAG406
sh $4, 0($4)
blez $2, TAG406
TAG406:
sw $4, 0($4)
multu $4, $4
sb $4, 0($4)
lb $3, 0($4)
TAG407:
lui $3, 3
or $1, $3, $3
div $3, $3
mthi $3
TAG408:
mflo $2
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG409:
mtlo $4
sltu $2, $4, $4
andi $2, $4, 10
mfhi $3
TAG410:
mthi $3
beq $3, $3, TAG411
sll $0, $0, 0
mtlo $3
TAG411:
lui $1, 0
bgtz $1, TAG412
sb $1, 0($1)
mthi $1
TAG412:
multu $1, $1
lw $1, 0($1)
blez $1, TAG413
multu $1, $1
TAG413:
mfhi $3
addiu $4, $3, 11
mult $3, $3
bgez $3, TAG414
TAG414:
div $4, $4
bgez $4, TAG415
lui $2, 2
sltiu $3, $2, 11
TAG415:
beq $3, $3, TAG416
srl $3, $3, 13
bgez $3, TAG416
lui $2, 0
TAG416:
sll $0, $0, 0
bgez $2, TAG417
addu $1, $2, $2
mthi $1
TAG417:
mthi $1
sll $0, $0, 0
xori $2, $1, 1
lui $4, 5
TAG418:
mflo $2
mthi $4
bne $4, $2, TAG419
mflo $1
TAG419:
mtlo $1
mfhi $1
mult $1, $1
sll $0, $0, 0
TAG420:
mthi $4
sll $0, $0, 0
bne $4, $4, TAG421
sll $0, $0, 0
TAG421:
ori $2, $4, 8
srav $1, $4, $2
andi $1, $4, 3
xori $2, $2, 14
TAG422:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $2
multu $2, $2
TAG423:
lui $2, 11
sllv $1, $2, $2
srav $4, $2, $1
mflo $2
TAG424:
slt $2, $2, $2
slt $1, $2, $2
mfhi $1
sra $4, $1, 2
TAG425:
slti $3, $4, 6
lbu $1, 0($3)
mfhi $2
beq $1, $1, TAG426
TAG426:
mflo $2
xori $4, $2, 12
divu $4, $2
sll $0, $0, 0
TAG427:
blez $4, TAG428
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG428:
mtlo $4
lui $2, 10
mtlo $2
mthi $4
TAG429:
beq $2, $2, TAG430
mflo $2
sh $2, 0($2)
lui $1, 0
TAG430:
sra $1, $1, 7
lui $3, 0
addi $3, $1, 6
lui $2, 6
TAG431:
sll $0, $0, 0
bne $2, $2, TAG432
mtlo $2
sll $0, $0, 0
TAG432:
sllv $2, $3, $3
mfhi $1
nor $3, $1, $2
sll $0, $0, 0
TAG433:
mflo $2
mtlo $2
lui $4, 2
beq $4, $4, TAG434
TAG434:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG435:
lui $2, 6
lui $4, 0
bltz $2, TAG436
sll $0, $0, 0
TAG436:
divu $1, $1
sllv $2, $1, $1
sll $0, $0, 0
mult $1, $3
TAG437:
mthi $3
mflo $2
mthi $3
sltiu $3, $3, 0
TAG438:
lui $4, 14
bne $3, $3, TAG439
multu $3, $3
sll $0, $0, 0
TAG439:
srlv $2, $4, $4
bltz $4, TAG440
div $4, $2
sll $0, $0, 0
TAG440:
beq $1, $1, TAG441
sll $0, $0, 0
sh $1, 0($1)
mtlo $1
TAG441:
nor $2, $2, $2
addiu $3, $2, 3
mfhi $1
sll $1, $2, 13
TAG442:
bltz $1, TAG443
mtlo $1
bgtz $1, TAG443
lui $4, 7
TAG443:
andi $4, $4, 7
bltz $4, TAG444
sltiu $4, $4, 1
or $4, $4, $4
TAG444:
sltiu $4, $4, 3
mthi $4
sb $4, 0($4)
srl $2, $4, 3
TAG445:
blez $2, TAG446
lb $3, 0($2)
and $2, $2, $2
sb $3, 0($3)
TAG446:
bltz $2, TAG447
multu $2, $2
add $1, $2, $2
nor $4, $2, $2
TAG447:
sll $0, $0, 0
lui $1, 10
lui $4, 1
beq $4, $1, TAG448
TAG448:
lui $2, 15
ori $1, $2, 14
bltz $4, TAG449
mflo $3
TAG449:
xori $3, $3, 10
mfhi $4
mtlo $4
lb $2, 0($4)
TAG450:
lui $2, 0
mtlo $2
bgez $2, TAG451
multu $2, $2
TAG451:
lh $1, 0($2)
mfhi $1
mfhi $4
addi $4, $1, 13
TAG452:
mflo $1
mtlo $4
beq $4, $4, TAG453
sb $4, 0($4)
TAG453:
bgez $1, TAG454
mtlo $1
beq $1, $1, TAG454
mtlo $1
TAG454:
andi $3, $1, 5
lui $3, 6
srl $3, $3, 5
sll $3, $1, 8
TAG455:
multu $3, $3
mtlo $3
lui $1, 5
beq $1, $3, TAG456
TAG456:
mfhi $2
beq $1, $1, TAG457
sw $2, 0($2)
lui $4, 0
TAG457:
div $4, $4
slt $2, $4, $4
sllv $3, $4, $4
sb $4, 0($4)
TAG458:
mtlo $3
mflo $1
srl $4, $1, 3
lui $4, 14
TAG459:
sll $0, $0, 0
divu $4, $4
bgtz $4, TAG460
mflo $1
TAG460:
mthi $1
lui $2, 5
bgez $1, TAG461
sb $1, 0($1)
TAG461:
lui $2, 11
subu $4, $2, $2
sll $0, $0, 0
lui $1, 2
TAG462:
mtlo $1
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG463:
lui $2, 2
or $4, $2, $3
mfhi $4
bltz $4, TAG464
TAG464:
sb $4, 0($4)
lbu $4, 0($4)
mthi $4
sltu $1, $4, $4
TAG465:
sllv $2, $1, $1
lui $1, 9
mfhi $1
sltu $2, $1, $1
TAG466:
lui $2, 2
sltu $3, $2, $2
sll $0, $0, 0
sh $2, 0($3)
TAG467:
nor $3, $1, $1
ori $1, $1, 4
lui $1, 7
mthi $1
TAG468:
mult $1, $1
nor $2, $1, $1
sll $0, $0, 0
mtlo $2
TAG469:
andi $1, $2, 3
blez $1, TAG470
mfhi $2
slt $3, $2, $1
TAG470:
addiu $2, $3, 6
lhu $4, 0($2)
lui $2, 2
sll $0, $0, 0
TAG471:
bgtz $3, TAG472
mfhi $2
bgtz $3, TAG472
lhu $2, 0($3)
TAG472:
lui $3, 6
lb $1, 0($2)
mult $2, $2
mult $3, $2
TAG473:
lui $1, 14
srav $1, $1, $1
sll $0, $0, 0
subu $1, $1, $1
TAG474:
sh $1, 0($1)
sw $1, 0($1)
xor $4, $1, $1
multu $1, $1
TAG475:
mfhi $1
mfhi $2
sh $4, 0($4)
beq $2, $4, TAG476
TAG476:
addiu $2, $2, 12
slti $3, $2, 7
mult $2, $3
xor $4, $3, $3
TAG477:
lw $1, 0($4)
bgtz $4, TAG478
multu $4, $1
mflo $1
TAG478:
xori $4, $1, 14
mthi $1
lh $2, 0($1)
mult $2, $1
TAG479:
lui $1, 15
mflo $1
sw $1, 0($1)
xor $3, $2, $1
TAG480:
mthi $3
mflo $4
beq $3, $3, TAG481
sw $3, 0($3)
TAG481:
multu $4, $4
sltiu $3, $4, 13
mflo $1
mthi $4
TAG482:
srav $3, $1, $1
xori $1, $3, 0
sh $1, 0($3)
beq $1, $1, TAG483
TAG483:
lui $4, 6
bne $4, $4, TAG484
lui $1, 6
nor $1, $1, $1
TAG484:
bgez $1, TAG485
sltu $2, $1, $1
beq $1, $1, TAG485
mflo $1
TAG485:
lui $4, 0
mfhi $4
mfhi $1
slti $4, $1, 6
TAG486:
bne $4, $4, TAG487
mtlo $4
lui $1, 14
lbu $1, 0($4)
TAG487:
mfhi $1
mthi $1
bgez $1, TAG488
andi $2, $1, 1
TAG488:
mult $2, $2
bgtz $2, TAG489
lui $2, 12
sll $0, $0, 0
TAG489:
sllv $1, $1, $1
sll $3, $1, 12
mult $3, $1
multu $1, $3
TAG490:
sub $2, $3, $3
multu $3, $2
sw $3, 0($3)
mfhi $4
TAG491:
lui $1, 8
mflo $3
mult $4, $4
mfhi $3
TAG492:
sb $3, 0($3)
sh $3, 0($3)
mflo $2
sll $3, $3, 7
TAG493:
lw $2, 0($3)
lh $1, 0($3)
xori $2, $2, 0
sb $3, 0($1)
TAG494:
multu $2, $2
mthi $2
mthi $2
sh $2, 0($2)
TAG495:
lui $4, 1
sb $2, 0($2)
mflo $3
beq $3, $4, TAG496
TAG496:
lb $2, 0($3)
sll $2, $2, 10
beq $2, $2, TAG497
mflo $4
TAG497:
srlv $2, $4, $4
bne $2, $2, TAG498
multu $2, $4
lb $4, 0($4)
TAG498:
beq $4, $4, TAG499
sw $4, 0($4)
bne $4, $4, TAG499
mfhi $1
TAG499:
lui $4, 3
mfhi $2
sra $4, $1, 3
add $3, $2, $1
TAG500:
xor $4, $3, $3
bne $4, $4, TAG501
sw $3, 0($4)
mtlo $4
TAG501:
bgtz $4, TAG502
lh $1, 0($4)
lui $1, 5
mthi $1
TAG502:
bgez $1, TAG503
sltiu $4, $1, 2
bgez $4, TAG503
srlv $2, $4, $1
TAG503:
bgez $2, TAG504
mtlo $2
lb $2, 0($2)
lui $4, 1
TAG504:
lui $2, 3
lw $4, 0($4)
mtlo $4
lui $3, 3
TAG505:
sll $0, $0, 0
nor $2, $3, $3
sll $0, $0, 0
mult $1, $1
TAG506:
mflo $4
sb $1, 0($4)
lui $3, 0
mflo $4
TAG507:
lui $4, 0
bgtz $4, TAG508
xori $1, $4, 9
addu $3, $4, $4
TAG508:
multu $3, $3
mult $3, $3
bgtz $3, TAG509
multu $3, $3
TAG509:
mfhi $3
mfhi $1
multu $1, $3
add $4, $1, $1
TAG510:
mult $4, $4
and $1, $4, $4
mult $4, $1
lui $1, 6
TAG511:
sll $0, $0, 0
srlv $1, $2, $2
mthi $1
mult $2, $1
TAG512:
bne $1, $1, TAG513
sb $1, 0($1)
bltz $1, TAG513
or $3, $1, $1
TAG513:
lbu $3, 0($3)
mfhi $3
sh $3, 1($3)
andi $1, $3, 7
TAG514:
lbu $1, 0($1)
xori $4, $1, 6
lui $2, 1
lui $1, 13
TAG515:
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $4, 5
bne $1, $3, TAG516
TAG516:
lui $1, 11
slti $1, $3, 10
mfhi $2
srl $2, $1, 9
TAG517:
mthi $2
mthi $2
lui $3, 7
bne $3, $3, TAG518
TAG518:
sll $0, $0, 0
div $4, $3
mtlo $3
mflo $2
TAG519:
sll $0, $0, 0
beq $1, $1, TAG520
div $1, $1
divu $1, $1
TAG520:
beq $1, $1, TAG521
mtlo $1
bgtz $1, TAG521
mflo $2
TAG521:
beq $2, $2, TAG522
mtlo $2
multu $2, $2
mtlo $2
TAG522:
sll $0, $0, 0
subu $2, $2, $2
srl $1, $2, 0
mtlo $2
TAG523:
sltiu $3, $1, 12
mflo $4
andi $2, $3, 11
multu $4, $2
TAG524:
sb $2, 0($2)
mthi $2
sltu $3, $2, $2
blez $2, TAG525
TAG525:
mfhi $2
blez $3, TAG526
sw $3, 0($3)
divu $2, $3
TAG526:
lui $2, 5
sll $0, $0, 0
mflo $2
multu $2, $2
TAG527:
mflo $2
mfhi $2
sb $2, 0($2)
mult $2, $2
TAG528:
mult $2, $2
mthi $2
sltu $2, $2, $2
lui $2, 6
TAG529:
bne $2, $2, TAG530
lui $3, 9
subu $4, $2, $3
sll $0, $0, 0
TAG530:
beq $1, $1, TAG531
sb $1, 0($1)
mfhi $1
bne $1, $1, TAG531
TAG531:
and $3, $1, $1
lh $4, 0($3)
xori $4, $1, 5
sb $4, 0($1)
TAG532:
addiu $3, $4, 5
mtlo $3
blez $3, TAG533
mflo $1
TAG533:
bne $1, $1, TAG534
srlv $3, $1, $1
bltz $1, TAG534
addu $2, $3, $1
TAG534:
sh $2, 0($2)
mflo $1
mflo $4
lui $4, 15
TAG535:
addu $1, $4, $4
lui $2, 9
div $4, $4
andi $3, $4, 1
TAG536:
xor $3, $3, $3
lui $4, 15
sll $0, $0, 0
bgtz $4, TAG537
TAG537:
addiu $1, $2, 6
mtlo $2
sll $0, $0, 0
bne $2, $3, TAG538
TAG538:
lw $1, 0($3)
mfhi $2
div $1, $1
mfhi $4
TAG539:
bgez $4, TAG540
mult $4, $4
multu $4, $4
sw $4, 0($4)
TAG540:
sh $4, 0($4)
bne $4, $4, TAG541
multu $4, $4
mflo $1
TAG541:
mult $1, $1
ori $1, $1, 5
mult $1, $1
xor $3, $1, $1
TAG542:
beq $3, $3, TAG543
multu $3, $3
beq $3, $3, TAG543
xori $2, $3, 7
TAG543:
multu $2, $2
beq $2, $2, TAG544
srl $4, $2, 10
lui $2, 11
TAG544:
blez $2, TAG545
lui $4, 4
lui $4, 1
or $3, $2, $4
TAG545:
slt $1, $3, $3
sw $3, 0($1)
sh $3, 0($3)
lui $2, 1
TAG546:
bgtz $2, TAG547
lui $1, 15
beq $1, $2, TAG547
mthi $1
TAG547:
mthi $1
divu $1, $1
beq $1, $1, TAG548
addu $3, $1, $1
TAG548:
sll $0, $0, 0
blez $3, TAG549
sll $0, $0, 0
sll $0, $0, 0
TAG549:
beq $1, $1, TAG550
sll $0, $0, 0
lhu $4, 0($1)
addiu $2, $1, 15
TAG550:
lui $2, 5
lui $1, 3
mtlo $2
sll $0, $0, 0
TAG551:
sll $0, $0, 0
andi $1, $1, 0
mflo $2
lui $2, 13
TAG552:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
lui $1, 11
TAG553:
lui $3, 15
slti $2, $3, 15
sltiu $2, $3, 0
lbu $4, 0($2)
TAG554:
bne $4, $4, TAG555
mflo $4
lui $2, 3
bltz $4, TAG555
TAG555:
mthi $2
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG556:
sll $0, $0, 0
sllv $4, $2, $2
bne $4, $2, TAG557
sll $0, $0, 0
TAG557:
sll $2, $3, 9
sll $0, $0, 0
andi $4, $2, 15
mtlo $2
TAG558:
sw $4, 0($4)
lbu $3, 0($4)
mtlo $3
lui $3, 15
TAG559:
nor $3, $3, $3
blez $3, TAG560
mfhi $1
lh $2, 0($3)
TAG560:
mtlo $2
lui $1, 12
mflo $4
sll $0, $0, 0
TAG561:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG562
TAG562:
sll $0, $0, 0
multu $3, $3
lui $2, 3
mthi $3
TAG563:
bne $2, $2, TAG564
divu $2, $2
sll $0, $0, 0
lui $3, 12
TAG564:
sll $0, $0, 0
or $4, $2, $2
beq $3, $4, TAG565
sll $0, $0, 0
TAG565:
multu $4, $4
subu $3, $4, $4
beq $4, $3, TAG566
mthi $4
TAG566:
mfhi $3
addu $4, $3, $3
lui $1, 4
sltiu $2, $3, 15
TAG567:
bne $2, $2, TAG568
mfhi $4
sb $4, 0($2)
bgtz $4, TAG568
TAG568:
divu $4, $4
lui $4, 8
andi $4, $4, 13
mult $4, $4
TAG569:
lh $3, 0($4)
sb $4, 0($4)
mult $3, $3
mtlo $4
TAG570:
bne $3, $3, TAG571
mtlo $3
sllv $4, $3, $3
mtlo $4
TAG571:
sh $4, 0($4)
sw $4, 0($4)
beq $4, $4, TAG572
mflo $1
TAG572:
bgez $1, TAG573
mtlo $1
lb $1, 0($1)
bgtz $1, TAG573
TAG573:
lh $2, 0($1)
mult $2, $2
sw $1, 0($1)
mthi $1
TAG574:
bgez $2, TAG575
ori $1, $2, 3
mflo $4
sb $4, 0($2)
TAG575:
lui $4, 1
mult $4, $4
xor $3, $4, $4
bltz $4, TAG576
TAG576:
mfhi $2
lui $3, 3
xori $3, $3, 15
mflo $3
TAG577:
blez $3, TAG578
mult $3, $3
beq $3, $3, TAG578
sb $3, 0($3)
TAG578:
lui $3, 8
mtlo $3
mflo $2
sll $0, $0, 0
TAG579:
sll $0, $0, 0
lui $4, 15
sll $0, $0, 0
mthi $4
TAG580:
nor $3, $4, $4
bgez $4, TAG581
mflo $4
blez $4, TAG581
TAG581:
mthi $4
mfhi $4
lui $3, 3
div $3, $4
TAG582:
divu $3, $3
mfhi $2
sll $0, $0, 0
lui $3, 10
TAG583:
mtlo $3
lui $4, 10
mfhi $2
bgtz $3, TAG584
TAG584:
lbu $1, 0($2)
lb $2, 0($1)
bne $2, $2, TAG585
lui $4, 10
TAG585:
lui $1, 7
bne $4, $4, TAG586
sll $0, $0, 0
subu $3, $1, $1
TAG586:
sh $3, 0($3)
sltu $1, $3, $3
blez $3, TAG587
sh $3, 0($3)
TAG587:
mthi $1
lhu $4, 0($1)
lw $2, 0($4)
bne $4, $2, TAG588
TAG588:
mfhi $1
mtlo $1
lw $1, 0($2)
sb $1, 0($1)
TAG589:
lui $4, 10
sb $4, 0($1)
lbu $2, 0($1)
mthi $1
TAG590:
mflo $1
mtlo $2
lui $1, 1
blez $2, TAG591
TAG591:
sll $0, $0, 0
mflo $2
bne $2, $1, TAG592
mtlo $1
TAG592:
multu $2, $2
bgtz $2, TAG593
lh $4, 0($2)
mflo $4
TAG593:
sub $1, $4, $4
mult $4, $4
mult $1, $1
bne $4, $1, TAG594
TAG594:
slt $2, $1, $1
sb $2, 0($2)
bne $1, $1, TAG595
sw $2, 0($1)
TAG595:
mflo $4
sll $2, $4, 2
blez $2, TAG596
mtlo $2
TAG596:
subu $4, $2, $2
bgtz $2, TAG597
addi $3, $4, 5
mfhi $3
TAG597:
sb $3, 0($3)
lui $2, 6
mtlo $3
lui $4, 5
TAG598:
or $3, $4, $4
lui $2, 12
sll $0, $0, 0
mult $2, $4
TAG599:
srav $1, $2, $2
beq $1, $1, TAG600
ori $3, $1, 3
lui $3, 1
TAG600:
addu $4, $3, $3
bne $4, $3, TAG601
mult $4, $4
mflo $2
TAG601:
blez $2, TAG602
sll $0, $0, 0
addiu $2, $2, 9
bgtz $2, TAG602
TAG602:
and $1, $2, $2
andi $2, $2, 0
bgtz $2, TAG603
lui $4, 10
TAG603:
beq $4, $4, TAG604
xor $3, $4, $4
sub $1, $4, $4
div $1, $3
TAG604:
mtlo $1
nor $4, $1, $1
sll $0, $0, 0
sllv $3, $1, $4
TAG605:
bgtz $3, TAG606
slti $3, $3, 12
lw $4, 0($3)
divu $3, $3
TAG606:
mfhi $2
sll $0, $0, 0
bltz $2, TAG607
mtlo $2
TAG607:
sb $2, -576($2)
xor $2, $2, $2
lh $4, 0($2)
ori $4, $2, 10
TAG608:
sh $4, 0($4)
lbu $1, 0($4)
sh $1, 0($1)
bne $4, $4, TAG609
TAG609:
mtlo $1
sb $1, 0($1)
div $1, $1
bne $1, $1, TAG610
TAG610:
lbu $2, 0($1)
addu $2, $1, $1
div $2, $1
ori $1, $1, 13
TAG611:
lbu $4, 0($1)
mthi $4
lb $4, 0($1)
sh $1, 0($4)
TAG612:
sh $4, 0($4)
mtlo $4
sb $4, 0($4)
lb $4, 0($4)
TAG613:
sltu $3, $4, $4
addiu $3, $4, 1
mflo $1
mfhi $4
TAG614:
bgez $4, TAG615
mflo $1
mthi $4
lui $3, 9
TAG615:
slti $2, $3, 5
bltz $3, TAG616
mfhi $3
multu $3, $3
TAG616:
mflo $3
mflo $3
bne $3, $3, TAG617
lw $1, 0($3)
TAG617:
beq $1, $1, TAG618
lbu $3, 0($1)
lui $2, 9
mfhi $3
TAG618:
lhu $3, 0($3)
sw $3, 0($3)
mthi $3
lui $4, 2
TAG619:
lui $2, 6
mtlo $2
multu $2, $2
mthi $2
TAG620:
sll $0, $0, 0
mtlo $2
andi $2, $2, 5
sh $2, 0($2)
TAG621:
sb $2, 0($2)
and $1, $2, $2
subu $4, $2, $1
bltz $4, TAG622
TAG622:
sb $4, 0($4)
lhu $2, 0($4)
lui $2, 14
lb $4, 0($4)
TAG623:
sb $4, 0($4)
mtlo $4
sw $4, 0($4)
addiu $2, $4, 1
TAG624:
mtlo $2
bgtz $2, TAG625
mtlo $2
srl $1, $2, 10
TAG625:
lb $2, 0($1)
sra $1, $2, 5
mult $2, $1
lui $3, 11
TAG626:
lui $1, 2
mflo $1
mflo $3
sra $3, $1, 11
TAG627:
beq $3, $3, TAG628
sb $3, 0($3)
divu $3, $3
div $3, $3
TAG628:
slti $2, $3, 13
mflo $3
mflo $4
slti $3, $3, 14
TAG629:
sb $3, 0($3)
lb $1, 0($3)
beq $1, $1, TAG630
lb $1, 0($1)
TAG630:
mfhi $4
bne $4, $1, TAG631
multu $4, $1
mtlo $1
TAG631:
mtlo $4
lh $1, 0($4)
blez $4, TAG632
lw $4, 0($4)
TAG632:
mfhi $4
sltu $3, $4, $4
sh $4, 0($4)
mfhi $4
TAG633:
sb $4, 0($4)
lui $4, 10
sllv $1, $4, $4
mult $1, $4
TAG634:
bltz $1, TAG635
nor $4, $1, $1
lui $1, 2
lui $2, 14
TAG635:
sll $0, $0, 0
addu $1, $2, $2
sll $0, $0, 0
mtlo $2
TAG636:
div $1, $1
mfhi $4
mfhi $3
bltz $3, TAG637
TAG637:
lui $1, 4
divu $1, $1
bgtz $1, TAG638
lui $4, 7
TAG638:
mflo $2
bgtz $4, TAG639
lui $3, 9
divu $4, $3
TAG639:
bltz $3, TAG640
sll $0, $0, 0
mtlo $3
sltu $3, $3, $3
TAG640:
beq $3, $3, TAG641
lui $4, 5
mfhi $2
lui $3, 15
TAG641:
sra $1, $3, 4
multu $1, $1
sub $2, $3, $3
sltu $4, $2, $2
TAG642:
lb $3, 0($4)
mflo $2
sh $2, 0($2)
mthi $2
TAG643:
bne $2, $2, TAG644
mult $2, $2
beq $2, $2, TAG644
mtlo $2
TAG644:
mflo $3
mflo $4
sh $4, 0($2)
mfhi $4
TAG645:
srlv $1, $4, $4
lui $2, 15
lui $1, 3
sll $0, $0, 0
TAG646:
mthi $1
multu $1, $1
mflo $1
multu $1, $1
TAG647:
lui $2, 11
mfhi $3
sh $2, 0($3)
mfhi $2
TAG648:
lui $1, 8
bne $2, $2, TAG649
lbu $2, 0($2)
mthi $2
TAG649:
lw $4, 0($2)
lui $1, 8
and $2, $4, $1
sh $2, 0($4)
TAG650:
addiu $3, $2, 11
addi $1, $2, 14
and $3, $3, $1
mult $3, $3
TAG651:
sllv $1, $3, $3
andi $2, $3, 13
sw $3, 0($2)
mflo $4
TAG652:
bne $4, $4, TAG653
mtlo $4
lhu $3, 0($4)
bne $3, $4, TAG653
TAG653:
mfhi $2
bgtz $2, TAG654
addu $4, $3, $3
mult $2, $4
TAG654:
lui $1, 6
lbu $1, 0($4)
div $1, $4
nor $4, $1, $4
TAG655:
subu $4, $4, $4
multu $4, $4
lui $3, 7
bne $4, $4, TAG656
TAG656:
lui $2, 9
mthi $2
bgez $2, TAG657
nor $4, $3, $2
TAG657:
bgez $4, TAG658
mfhi $2
blez $4, TAG658
ori $3, $2, 7
TAG658:
bgtz $3, TAG659
mult $3, $3
lui $4, 3
bltz $4, TAG659
TAG659:
sll $0, $0, 0
addu $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG660:
bne $1, $1, TAG661
sll $4, $1, 0
blez $1, TAG661
mflo $2
TAG661:
mflo $2
sll $0, $0, 0
bne $4, $2, TAG662
mthi $2
TAG662:
sll $0, $0, 0
sll $0, $0, 0
andi $1, $4, 2
beq $4, $4, TAG663
TAG663:
sh $1, 0($1)
mtlo $1
mthi $1
mflo $4
TAG664:
lui $2, 7
bne $4, $4, TAG665
sll $0, $0, 0
addu $2, $4, $2
TAG665:
lui $2, 14
lui $4, 3
sll $0, $0, 0
mthi $2
TAG666:
mfhi $4
lhu $4, 0($1)
and $4, $1, $1
bltz $4, TAG667
TAG667:
lbu $2, 0($4)
lui $4, 1
divu $2, $2
lb $1, 0($2)
TAG668:
mflo $1
bne $1, $1, TAG669
sb $1, 0($1)
mflo $4
TAG669:
blez $4, TAG670
lb $3, 0($4)
sll $2, $4, 0
lui $3, 2
TAG670:
bne $3, $3, TAG671
sll $0, $0, 0
srlv $1, $3, $3
lui $1, 2
TAG671:
sra $4, $1, 6
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG672
TAG672:
mflo $4
bne $3, $3, TAG673
subu $1, $3, $4
addiu $2, $1, 8
TAG673:
bgtz $2, TAG674
srlv $1, $2, $2
bne $2, $1, TAG674
mflo $4
TAG674:
bltz $4, TAG675
mult $4, $4
mfhi $2
sltu $3, $2, $2
TAG675:
xori $1, $3, 9
lui $1, 12
mfhi $4
bne $1, $1, TAG676
TAG676:
andi $4, $4, 9
mfhi $4
bltz $4, TAG677
srl $4, $4, 12
TAG677:
multu $4, $4
lw $1, 0($4)
mfhi $1
xori $3, $4, 12
TAG678:
div $3, $3
nor $1, $3, $3
blez $3, TAG679
srl $1, $3, 14
TAG679:
multu $1, $1
mthi $1
bltz $1, TAG680
andi $2, $1, 6
TAG680:
mult $2, $2
bne $2, $2, TAG681
addu $1, $2, $2
xor $4, $1, $1
TAG681:
sh $4, 0($4)
add $4, $4, $4
beq $4, $4, TAG682
lui $4, 7
TAG682:
multu $4, $4
sll $0, $0, 0
srl $4, $4, 15
divu $4, $4
TAG683:
blez $4, TAG684
mthi $4
lh $1, 0($4)
lbu $1, 0($4)
TAG684:
mflo $2
xori $3, $2, 3
lh $4, 0($1)
slt $4, $4, $1
TAG685:
mfhi $2
sb $4, 0($4)
mflo $3
lbu $4, 0($3)
TAG686:
lui $3, 4
mflo $3
mthi $4
mthi $4
TAG687:
blez $3, TAG688
addiu $2, $3, 9
mfhi $3
subu $3, $3, $2
TAG688:
sb $3, 10($3)
multu $3, $3
mthi $3
lw $4, 10($3)
TAG689:
sll $0, $0, 0
lui $3, 13
bgtz $4, TAG690
mtlo $4
TAG690:
lui $3, 10
mthi $3
lui $1, 4
sltiu $1, $3, 10
TAG691:
ori $3, $1, 6
bne $1, $1, TAG692
xor $2, $1, $1
multu $1, $2
TAG692:
lb $3, 0($2)
lhu $4, 10($3)
lui $1, 12
sw $4, -246($4)
TAG693:
sll $1, $1, 14
bgez $1, TAG694
sw $1, 0($1)
lui $4, 14
TAG694:
sll $0, $0, 0
bgtz $4, TAG695
addiu $4, $4, 13
lui $2, 12
TAG695:
srl $2, $2, 0
bgtz $2, TAG696
mult $2, $2
slt $2, $2, $2
TAG696:
lw $3, 0($2)
bgtz $3, TAG697
sh $3, 0($2)
bgez $2, TAG697
TAG697:
mthi $3
lui $2, 1
blez $3, TAG698
mtlo $2
TAG698:
sll $0, $0, 0
subu $3, $2, $2
lh $4, 0($3)
sra $1, $2, 7
TAG699:
bgez $1, TAG700
and $1, $1, $1
mfhi $1
sllv $3, $1, $1
TAG700:
mfhi $2
mflo $4
sb $2, 0($3)
divu $2, $4
TAG701:
xori $2, $4, 11
mflo $2
mfhi $4
bne $4, $4, TAG702
TAG702:
sb $4, 0($4)
lb $2, 0($4)
mfhi $2
or $4, $4, $4
TAG703:
multu $4, $4
sh $4, 0($4)
srl $3, $4, 13
beq $3, $3, TAG704
TAG704:
mflo $1
mfhi $2
lui $3, 9
blez $2, TAG705
TAG705:
addiu $4, $3, 4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG706:
addu $2, $4, $4
lui $1, 6
sll $0, $0, 0
mtlo $1
TAG707:
slt $3, $3, $3
beq $3, $3, TAG708
sllv $2, $3, $3
sh $3, 0($2)
TAG708:
multu $2, $2
lhu $3, 0($2)
mult $3, $2
mthi $2
TAG709:
lui $4, 11
add $1, $3, $3
xor $1, $3, $1
sltu $4, $4, $1
TAG710:
sh $4, 0($4)
mtlo $4
lui $4, 15
div $4, $4
TAG711:
mtlo $4
multu $4, $4
lui $3, 0
multu $4, $3
TAG712:
lui $3, 7
sll $0, $0, 0
blez $3, TAG713
mfhi $2
TAG713:
mult $2, $2
multu $2, $2
slt $1, $2, $2
mthi $1
TAG714:
bgtz $1, TAG715
subu $4, $1, $1
lb $1, 0($4)
mult $1, $4
TAG715:
lui $3, 9
lui $2, 5
sll $0, $0, 0
beq $3, $2, TAG716
TAG716:
lui $3, 14
lui $1, 12
mflo $2
andi $4, $1, 14
TAG717:
mflo $4
lui $2, 7
sll $0, $0, 0
lui $4, 11
TAG718:
beq $4, $4, TAG719
srlv $4, $4, $4
divu $4, $4
bltz $4, TAG719
TAG719:
mult $4, $4
sll $0, $0, 0
div $4, $4
srl $3, $4, 8
TAG720:
xori $2, $3, 1
sllv $3, $2, $2
bgtz $3, TAG721
sllv $2, $3, $3
TAG721:
beq $2, $2, TAG722
lw $3, -22536($2)
divu $3, $2
sb $3, 0($3)
TAG722:
beq $3, $3, TAG723
lui $4, 11
or $1, $3, $3
xori $4, $1, 12
TAG723:
lui $4, 8
sll $0, $0, 0
srl $1, $4, 7
sltiu $2, $1, 15
TAG724:
mfhi $1
lui $1, 13
sll $0, $0, 0
srlv $1, $2, $2
TAG725:
sra $2, $1, 6
blez $1, TAG726
lui $4, 14
lw $2, 0($4)
TAG726:
mflo $3
mtlo $2
addi $4, $2, 13
lb $4, 0($4)
TAG727:
multu $4, $4
andi $3, $4, 14
mthi $4
lhu $4, 0($3)
TAG728:
srav $1, $4, $4
mult $4, $1
mfhi $3
bne $4, $3, TAG729
TAG729:
mtlo $3
mflo $1
mult $1, $3
beq $3, $1, TAG730
TAG730:
sw $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
lb $4, 0($1)
TAG731:
mthi $4
lui $1, 11
multu $1, $4
sb $4, 0($4)
TAG732:
mtlo $1
lui $2, 15
addiu $1, $2, 4
bne $1, $2, TAG733
TAG733:
subu $1, $1, $1
bgtz $1, TAG734
multu $1, $1
subu $2, $1, $1
TAG734:
mthi $2
lb $3, 0($2)
mtlo $3
mfhi $3
TAG735:
mthi $3
bne $3, $3, TAG736
sw $3, 0($3)
lui $2, 3
TAG736:
lui $3, 7
mfhi $1
lui $4, 5
srl $1, $1, 0
TAG737:
lui $3, 5
mthi $3
addiu $4, $1, 3
sb $1, 0($1)
TAG738:
bne $4, $4, TAG739
subu $1, $4, $4
multu $1, $4
addi $4, $1, 9
TAG739:
andi $4, $4, 8
multu $4, $4
mfhi $2
mthi $4
TAG740:
lui $1, 0
addi $2, $1, 2
mthi $1
mflo $3
TAG741:
div $3, $3
multu $3, $3
xori $2, $3, 11
lui $3, 9
TAG742:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $2, $3, $1
TAG743:
multu $2, $2
mthi $2
mfhi $4
sll $0, $0, 0
TAG744:
beq $4, $4, TAG745
andi $1, $4, 1
lh $2, 0($1)
bne $4, $4, TAG745
TAG745:
subu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG746:
mflo $4
sh $4, 0($4)
xori $4, $4, 11
lbu $3, 0($4)
TAG747:
sb $3, 0($3)
multu $3, $3
bne $3, $3, TAG748
add $3, $3, $3
TAG748:
mthi $3
mflo $3
mthi $3
lb $2, 0($3)
TAG749:
addi $2, $2, 2
addu $1, $2, $2
divu $2, $2
sltu $1, $2, $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop