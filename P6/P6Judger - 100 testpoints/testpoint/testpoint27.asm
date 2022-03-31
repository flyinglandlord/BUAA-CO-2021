ori $1, $0, 6
ori $2, $0, 8
ori $3, $0, 6
ori $4, $0, 9
sw $2, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $4, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $4, 124($0)
beq $2, $2, TAG1
sh $2, 0($2)
bgtz $2, TAG1
mtlo $2
TAG1:
lw $1, 0($2)
beq $2, $1, TAG2
mfhi $1
bne $1, $2, TAG2
TAG2:
add $2, $1, $1
lb $1, 0($2)
xori $4, $2, 7
sltiu $1, $1, 8
TAG3:
srl $1, $1, 13
mthi $1
lhu $1, 0($1)
sltiu $3, $1, 1
TAG4:
bgez $3, TAG5
mfhi $3
mtlo $3
sw $3, 0($3)
TAG5:
bne $3, $3, TAG6
mflo $1
lhu $1, 0($3)
lui $1, 8
TAG6:
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $1, 10
TAG7:
bne $1, $1, TAG8
sll $0, $0, 0
sll $0, $0, 0
lui $4, 9
TAG8:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
beq $4, $4, TAG9
TAG9:
mflo $3
bltz $4, TAG10
xor $2, $3, $4
mflo $4
TAG10:
bgtz $4, TAG11
lw $1, 0($4)
mflo $3
mflo $2
TAG11:
lui $3, 1
slt $1, $3, $3
mult $2, $1
mtlo $2
TAG12:
mflo $4
sw $4, 0($1)
srlv $3, $4, $1
mthi $3
TAG13:
lh $1, 0($3)
beq $3, $3, TAG14
sw $1, 0($3)
mflo $2
TAG14:
lui $1, 4
sltiu $2, $1, 4
lbu $2, 0($2)
lui $3, 15
TAG15:
mflo $3
sll $4, $3, 11
sb $3, 0($4)
lb $4, 0($3)
TAG16:
addu $2, $4, $4
lui $1, 15
bgtz $2, TAG17
lui $4, 7
TAG17:
mflo $3
bltz $4, TAG18
lui $3, 12
sll $0, $0, 0
TAG18:
beq $3, $3, TAG19
lui $2, 15
multu $3, $3
sh $3, 0($2)
TAG19:
addu $1, $2, $2
mfhi $2
multu $2, $1
sh $1, 0($2)
TAG20:
lh $4, 0($2)
multu $2, $4
beq $2, $4, TAG21
lbu $3, 0($2)
TAG21:
lui $1, 12
mflo $2
mfhi $1
blez $2, TAG22
TAG22:
mflo $3
mflo $3
srav $1, $3, $3
mflo $3
TAG23:
lw $3, 0($3)
bgez $3, TAG24
mtlo $3
sltu $1, $3, $3
TAG24:
beq $1, $1, TAG25
mult $1, $1
sltiu $3, $1, 8
addiu $3, $3, 10
TAG25:
lbu $4, 0($3)
addi $1, $3, 2
beq $1, $1, TAG26
srav $2, $3, $4
TAG26:
sw $2, 0($2)
mflo $3
multu $3, $2
slti $4, $3, 2
TAG27:
mtlo $4
beq $4, $4, TAG28
mult $4, $4
bgez $4, TAG28
TAG28:
lb $1, 0($4)
sb $1, 0($4)
sb $1, 0($4)
beq $1, $1, TAG29
TAG29:
sw $1, 0($1)
bltz $1, TAG30
srav $3, $1, $1
andi $4, $3, 12
TAG30:
lh $4, 0($4)
multu $4, $4
mult $4, $4
sw $4, 0($4)
TAG31:
add $1, $4, $4
srlv $4, $1, $4
sh $4, 0($4)
mult $4, $4
TAG32:
beq $4, $4, TAG33
sh $4, 0($4)
multu $4, $4
mult $4, $4
TAG33:
mfhi $1
mthi $1
lui $1, 5
blez $4, TAG34
TAG34:
div $1, $1
lui $3, 2
mfhi $3
multu $3, $3
TAG35:
beq $3, $3, TAG36
lw $4, 0($3)
mtlo $4
bne $4, $3, TAG36
TAG36:
sra $3, $4, 1
lui $4, 15
mtlo $4
beq $4, $4, TAG37
TAG37:
sra $1, $4, 1
addu $3, $1, $4
mfhi $4
sw $4, 0($4)
TAG38:
blez $4, TAG39
sll $1, $4, 14
lh $3, 0($4)
mtlo $3
TAG39:
sll $2, $3, 2
bne $3, $3, TAG40
multu $3, $2
sll $0, $0, 0
TAG40:
mtlo $2
sll $0, $0, 0
subu $1, $2, $2
mflo $1
TAG41:
sll $0, $0, 0
lui $1, 15
sll $0, $0, 0
or $4, $1, $1
TAG42:
addu $4, $4, $4
div $4, $4
bgez $4, TAG43
sll $0, $0, 0
TAG43:
bltz $4, TAG44
mtlo $4
lui $4, 15
mtlo $4
TAG44:
addiu $4, $4, 14
sll $0, $0, 0
addu $2, $4, $4
beq $2, $4, TAG45
TAG45:
xori $3, $2, 3
sll $0, $0, 0
mtlo $2
mflo $2
TAG46:
sll $0, $0, 0
lui $2, 0
bltz $3, TAG47
sw $3, 0($2)
TAG47:
mflo $3
lui $3, 7
lui $4, 0
sll $0, $0, 0
TAG48:
blez $4, TAG49
mult $4, $4
mthi $4
beq $4, $4, TAG49
TAG49:
lui $3, 0
lui $2, 14
multu $4, $4
srlv $1, $2, $2
TAG50:
subu $4, $1, $1
bne $4, $4, TAG51
xori $1, $4, 9
sltiu $3, $4, 7
TAG51:
lbu $3, 0($3)
multu $3, $3
blez $3, TAG52
mflo $1
TAG52:
sw $1, 0($1)
mthi $1
mflo $3
sra $4, $1, 3
TAG53:
multu $4, $4
mult $4, $4
mthi $4
bne $4, $4, TAG54
TAG54:
mtlo $4
lui $3, 11
sll $0, $0, 0
mflo $2
TAG55:
mult $2, $2
blez $2, TAG56
andi $2, $2, 11
mfhi $4
TAG56:
blez $4, TAG57
lui $3, 0
mthi $4
bne $4, $3, TAG57
TAG57:
mfhi $3
lbu $2, 0($3)
lui $1, 6
bne $2, $1, TAG58
TAG58:
sll $0, $0, 0
lh $2, 0($2)
addiu $1, $2, 12
mult $2, $2
TAG59:
subu $4, $1, $1
addi $4, $4, 10
srav $4, $4, $4
sw $4, 0($4)
TAG60:
bgtz $4, TAG61
srav $3, $4, $4
bne $3, $3, TAG61
lui $1, 2
TAG61:
mflo $1
bgtz $1, TAG62
mult $1, $1
multu $1, $1
TAG62:
lui $1, 10
addiu $2, $1, 8
sll $0, $0, 0
sll $0, $0, 0
TAG63:
bltz $2, TAG64
sllv $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG64:
beq $2, $2, TAG65
mtlo $2
mflo $4
sh $2, 0($2)
TAG65:
xor $1, $4, $4
lui $2, 7
sll $0, $0, 0
srl $1, $4, 14
TAG66:
sh $1, 0($1)
mult $1, $1
lui $1, 15
div $1, $1
TAG67:
mflo $1
mflo $2
mfhi $2
mfhi $2
TAG68:
bne $2, $2, TAG69
mtlo $2
mflo $2
beq $2, $2, TAG69
TAG69:
andi $1, $2, 13
mthi $2
lui $4, 4
bgez $2, TAG70
TAG70:
lui $1, 15
slt $4, $1, $1
xor $2, $4, $4
sll $0, $0, 0
TAG71:
multu $2, $2
beq $2, $2, TAG72
lui $2, 10
sltu $3, $2, $2
TAG72:
bgtz $3, TAG73
xor $3, $3, $3
lbu $1, 0($3)
bgez $1, TAG73
TAG73:
divu $1, $1
bne $1, $1, TAG74
mtlo $1
bne $1, $1, TAG74
TAG74:
mflo $2
addu $1, $2, $2
slt $1, $2, $1
lui $3, 13
TAG75:
mthi $3
div $3, $3
addu $4, $3, $3
lui $3, 2
TAG76:
sll $0, $0, 0
divu $3, $3
lui $3, 0
blez $3, TAG77
TAG77:
lb $3, 0($3)
beq $3, $3, TAG78
sra $2, $3, 7
sb $2, 0($2)
TAG78:
sh $2, 0($2)
lui $2, 9
sll $0, $0, 0
sll $0, $0, 0
TAG79:
div $2, $2
mfhi $3
beq $3, $2, TAG80
sb $3, 0($3)
TAG80:
blez $3, TAG81
mflo $1
multu $3, $1
mult $3, $1
TAG81:
div $1, $1
lui $2, 15
addu $3, $1, $1
bltz $2, TAG82
TAG82:
sra $4, $3, 10
bltz $3, TAG83
sll $3, $3, 12
srav $2, $3, $3
TAG83:
mtlo $2
addiu $3, $2, 6
mflo $2
andi $4, $3, 2
TAG84:
mflo $4
mtlo $4
lui $3, 10
bne $4, $4, TAG85
TAG85:
sll $0, $0, 0
mult $3, $3
nor $2, $3, $3
sll $0, $0, 0
TAG86:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG87:
addu $2, $2, $2
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG88:
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $1, 14
xori $2, $1, 2
TAG89:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG90
TAG90:
sll $0, $0, 0
mflo $4
bne $2, $4, TAG91
sll $0, $0, 0
TAG91:
bgtz $4, TAG92
multu $4, $4
blez $4, TAG92
and $3, $4, $4
TAG92:
lb $1, 0($3)
lui $4, 13
mfhi $1
lui $4, 8
TAG93:
div $4, $4
sll $0, $0, 0
bne $4, $4, TAG94
mflo $1
TAG94:
divu $1, $1
sb $1, 0($1)
beq $1, $1, TAG95
lb $1, 0($1)
TAG95:
bltz $1, TAG96
sb $1, 0($1)
lbu $4, 0($1)
bne $4, $1, TAG96
TAG96:
lui $3, 14
beq $4, $4, TAG97
lui $4, 3
sllv $1, $4, $4
TAG97:
lbu $1, 0($1)
lb $1, 0($1)
mthi $1
subu $4, $1, $1
TAG98:
lui $1, 9
lhu $1, 0($4)
mfhi $3
lw $2, 0($4)
TAG99:
beq $2, $2, TAG100
divu $2, $2
lui $4, 0
slt $2, $2, $2
TAG100:
mthi $2
slti $4, $2, 6
sw $2, 0($4)
beq $2, $4, TAG101
TAG101:
xori $2, $4, 13
multu $2, $4
multu $2, $4
lh $4, 0($4)
TAG102:
bne $4, $4, TAG103
lui $3, 4
sll $0, $0, 0
sb $3, -256($4)
TAG103:
multu $3, $3
subu $4, $3, $3
divu $4, $3
sb $4, 0($4)
TAG104:
addiu $2, $4, 9
lbu $2, 0($4)
slti $1, $2, 8
div $2, $1
TAG105:
lui $1, 3
addu $1, $1, $1
nor $1, $1, $1
sltiu $2, $1, 13
TAG106:
ori $2, $2, 13
bgez $2, TAG107
divu $2, $2
or $1, $2, $2
TAG107:
mfhi $4
bne $1, $1, TAG108
mtlo $1
sll $1, $1, 9
TAG108:
div $1, $1
addiu $3, $1, 0
multu $3, $3
bne $3, $1, TAG109
TAG109:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
lui $2, 15
TAG110:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $2, 5
TAG111:
beq $2, $2, TAG112
mflo $2
divu $2, $2
bne $2, $2, TAG112
TAG112:
sll $0, $0, 0
xori $2, $2, 13
mthi $2
multu $4, $4
TAG113:
lui $1, 6
sll $0, $0, 0
mthi $1
sllv $1, $1, $1
TAG114:
lui $3, 9
mtlo $1
sll $0, $0, 0
bgtz $4, TAG115
TAG115:
lui $2, 11
lhu $2, 0($4)
divu $2, $2
mthi $4
TAG116:
sw $2, -256($2)
addu $1, $2, $2
xori $3, $2, 4
beq $2, $3, TAG117
TAG117:
sltiu $4, $3, 11
slti $3, $4, 7
sb $3, 0($3)
lb $1, 0($3)
TAG118:
sltiu $3, $1, 14
mthi $3
lbu $3, 0($1)
bne $1, $3, TAG119
TAG119:
mthi $3
lui $3, 15
subu $2, $3, $3
sltiu $4, $3, 9
TAG120:
bgez $4, TAG121
lhu $2, 0($4)
sb $2, 0($4)
mthi $4
TAG121:
andi $4, $2, 12
mfhi $2
sltu $4, $4, $2
mfhi $1
TAG122:
sb $1, 0($1)
mtlo $1
sb $1, 0($1)
slti $2, $1, 7
TAG123:
bne $2, $2, TAG124
mflo $4
lb $4, 0($2)
sb $4, 0($4)
TAG124:
lui $4, 13
sll $0, $0, 0
sll $2, $4, 7
multu $4, $4
TAG125:
sll $0, $0, 0
divu $2, $2
mfhi $1
sra $2, $1, 9
TAG126:
sh $2, 0($2)
lui $1, 8
srl $1, $1, 12
bgez $2, TAG127
TAG127:
mtlo $1
mflo $1
sb $1, 0($1)
bltz $1, TAG128
TAG128:
mtlo $1
lw $1, 0($1)
mtlo $1
addu $2, $1, $1
TAG129:
bltz $2, TAG130
mult $2, $2
bgtz $2, TAG130
sb $2, -256($2)
TAG130:
lui $1, 13
mflo $1
lui $3, 6
sll $0, $0, 0
TAG131:
lui $1, 9
bne $1, $1, TAG132
sll $0, $0, 0
lui $3, 5
TAG132:
slt $3, $3, $3
mflo $2
bne $3, $2, TAG133
sw $2, 0($3)
TAG133:
mtlo $2
mflo $4
mflo $4
sll $0, $0, 0
TAG134:
sll $0, $0, 0
beq $4, $4, TAG135
mthi $4
mthi $4
TAG135:
mfhi $1
bne $4, $1, TAG136
mthi $1
mtlo $1
TAG136:
beq $1, $1, TAG137
sll $0, $0, 0
mtlo $2
divu $1, $1
TAG137:
sll $0, $0, 0
mthi $2
beq $2, $2, TAG138
sll $0, $0, 0
TAG138:
sll $0, $0, 0
bgez $1, TAG139
lui $1, 11
addiu $4, $1, 14
TAG139:
sll $0, $0, 0
andi $2, $1, 12
and $2, $2, $4
multu $2, $2
TAG140:
mthi $2
sb $2, 0($2)
mtlo $2
multu $2, $2
TAG141:
bne $2, $2, TAG142
lhu $3, 0($2)
lui $2, 1
blez $3, TAG142
TAG142:
sltiu $2, $2, 11
subu $2, $2, $2
bgez $2, TAG143
add $2, $2, $2
TAG143:
bne $2, $2, TAG144
lw $4, 0($2)
blez $2, TAG144
mflo $3
TAG144:
bne $3, $3, TAG145
sw $3, 0($3)
mfhi $4
lui $1, 0
TAG145:
mthi $1
bne $1, $1, TAG146
lui $1, 0
multu $1, $1
TAG146:
mflo $3
blez $3, TAG147
sb $1, 0($3)
mfhi $4
TAG147:
blez $4, TAG148
mult $4, $4
mult $4, $4
mflo $1
TAG148:
beq $1, $1, TAG149
mthi $1
beq $1, $1, TAG149
lui $1, 14
TAG149:
sra $2, $1, 1
bgez $2, TAG150
mtlo $2
beq $2, $2, TAG150
TAG150:
mult $2, $2
mflo $3
mfhi $4
lui $2, 1
TAG151:
beq $2, $2, TAG152
sll $0, $0, 0
subu $4, $2, $2
sub $4, $4, $4
TAG152:
mfhi $2
blez $2, TAG153
lui $3, 11
mfhi $3
TAG153:
multu $3, $3
lui $1, 5
mfhi $3
bgtz $3, TAG154
TAG154:
lb $4, 0($3)
beq $3, $3, TAG155
lw $2, 0($4)
bgez $4, TAG155
TAG155:
sw $2, 0($2)
multu $2, $2
andi $3, $2, 13
bgtz $2, TAG156
TAG156:
xor $1, $3, $3
mflo $3
bltz $3, TAG157
mthi $1
TAG157:
sb $3, 0($3)
sltiu $1, $3, 14
mflo $1
bgtz $1, TAG158
TAG158:
multu $1, $1
beq $1, $1, TAG159
srlv $3, $1, $1
lw $2, 0($3)
TAG159:
mthi $2
mtlo $2
sll $1, $2, 13
mflo $3
TAG160:
bne $3, $3, TAG161
lui $1, 11
mthi $3
lui $2, 8
TAG161:
or $2, $2, $2
beq $2, $2, TAG162
divu $2, $2
beq $2, $2, TAG162
TAG162:
nor $4, $2, $2
mtlo $2
mthi $4
mult $2, $2
TAG163:
beq $4, $4, TAG164
sltu $3, $4, $4
sw $3, 0($4)
div $4, $3
TAG164:
mult $3, $3
bltz $3, TAG165
mthi $3
lui $3, 10
TAG165:
mtlo $3
sll $0, $0, 0
bgez $3, TAG166
sll $0, $0, 0
TAG166:
beq $3, $3, TAG167
sll $0, $0, 0
lui $1, 12
sra $2, $3, 11
TAG167:
mtlo $2
multu $2, $2
sll $0, $0, 0
blez $2, TAG168
TAG168:
multu $1, $1
bne $1, $1, TAG169
or $1, $1, $1
multu $1, $1
TAG169:
sll $0, $0, 0
mult $1, $1
sltu $1, $3, $1
sll $4, $1, 15
TAG170:
mfhi $4
sltiu $4, $4, 6
xor $4, $4, $4
or $4, $4, $4
TAG171:
slti $4, $4, 0
bgez $4, TAG172
multu $4, $4
bne $4, $4, TAG172
TAG172:
mthi $4
mflo $3
lui $1, 12
mult $4, $3
TAG173:
bgez $1, TAG174
lui $3, 12
bgez $1, TAG174
div $3, $3
TAG174:
subu $4, $3, $3
bne $4, $4, TAG175
mtlo $3
lui $4, 6
TAG175:
blez $4, TAG176
lui $2, 12
lui $2, 0
sw $4, 0($2)
TAG176:
mtlo $2
sw $2, 0($2)
lbu $1, 0($2)
mtlo $2
TAG177:
mtlo $1
mult $1, $1
lui $2, 15
sub $4, $1, $1
TAG178:
beq $4, $4, TAG179
lui $2, 7
lhu $4, 0($4)
sw $4, 0($4)
TAG179:
subu $2, $4, $4
mflo $1
bltz $4, TAG180
lh $3, 0($2)
TAG180:
multu $3, $3
mflo $2
sra $2, $2, 1
lw $3, 0($3)
TAG181:
sll $4, $3, 3
srl $1, $4, 12
sltu $4, $1, $4
sh $4, 0($1)
TAG182:
mflo $1
lw $2, 0($1)
mfhi $3
mflo $2
TAG183:
multu $2, $2
multu $2, $2
bne $2, $2, TAG184
andi $4, $2, 7
TAG184:
sltiu $2, $4, 8
mflo $4
multu $2, $2
mult $2, $4
TAG185:
addiu $2, $4, 2
lhu $1, 0($4)
addiu $2, $2, 11
bgtz $2, TAG186
TAG186:
mthi $2
sra $4, $2, 5
and $4, $2, $2
bne $2, $4, TAG187
TAG187:
sll $4, $4, 0
lui $1, 1
andi $2, $1, 6
sll $0, $0, 0
TAG188:
bne $3, $3, TAG189
mflo $4
mflo $4
mtlo $3
TAG189:
sra $2, $4, 9
multu $2, $2
sll $1, $2, 1
mflo $4
TAG190:
addu $3, $4, $4
sh $3, 0($4)
or $2, $3, $3
lui $1, 4
TAG191:
or $3, $1, $1
bne $1, $1, TAG192
mflo $4
lui $3, 14
TAG192:
sll $0, $0, 0
srlv $3, $3, $3
slti $2, $3, 5
and $4, $3, $4
TAG193:
bne $4, $4, TAG194
mult $4, $4
srav $1, $4, $4
mflo $1
TAG194:
mthi $1
sb $1, 0($1)
bltz $1, TAG195
sh $1, 0($1)
TAG195:
sb $1, 0($1)
bgez $1, TAG196
andi $2, $1, 11
nor $2, $2, $2
TAG196:
bgez $2, TAG197
mfhi $1
beq $1, $1, TAG197
sb $2, 0($2)
TAG197:
subu $3, $1, $1
lb $3, 0($3)
mflo $1
addu $1, $3, $3
TAG198:
bne $1, $1, TAG199
mfhi $1
srlv $3, $1, $1
bne $1, $1, TAG199
TAG199:
mult $3, $3
ori $3, $3, 2
bgtz $3, TAG200
lui $3, 7
TAG200:
bne $3, $3, TAG201
mflo $4
mtlo $3
bne $3, $3, TAG201
TAG201:
andi $3, $4, 8
mult $4, $4
multu $4, $4
sltiu $4, $3, 9
TAG202:
lbu $1, 0($4)
lui $3, 11
mthi $1
lbu $1, 0($4)
TAG203:
lui $3, 7
sll $0, $0, 0
mult $1, $1
beq $1, $3, TAG204
TAG204:
mult $3, $3
bgez $3, TAG205
lui $3, 11
beq $3, $3, TAG205
TAG205:
lui $1, 14
multu $1, $1
sll $0, $0, 0
mthi $3
TAG206:
bgez $4, TAG207
mflo $3
bne $4, $4, TAG207
and $3, $3, $4
TAG207:
lw $3, 0($3)
mthi $3
mflo $2
ori $1, $3, 15
TAG208:
lb $2, 0($1)
sll $2, $2, 14
multu $2, $2
mtlo $2
TAG209:
mflo $2
beq $2, $2, TAG210
lui $3, 10
add $3, $3, $3
TAG210:
lui $2, 11
xor $1, $3, $2
bgtz $3, TAG211
multu $3, $1
TAG211:
sll $0, $0, 0
sra $4, $1, 11
lui $3, 3
slti $3, $1, 8
TAG212:
bgtz $3, TAG213
lb $1, 0($3)
multu $3, $1
bltz $3, TAG213
TAG213:
lb $3, 0($1)
bgtz $1, TAG214
andi $3, $3, 4
multu $3, $1
TAG214:
mfhi $3
lbu $3, 0($3)
mfhi $3
sw $3, 0($3)
TAG215:
lui $2, 14
bgez $3, TAG216
sll $0, $0, 0
lui $1, 10
TAG216:
bgez $1, TAG217
sltiu $2, $1, 12
divu $2, $1
mult $1, $1
TAG217:
beq $2, $2, TAG218
sllv $2, $2, $2
mflo $1
mult $1, $2
TAG218:
mfhi $3
sh $1, 0($1)
srav $2, $1, $3
bgtz $2, TAG219
TAG219:
mflo $2
sh $2, 0($2)
srlv $4, $2, $2
mflo $3
TAG220:
lui $3, 7
sllv $4, $3, $3
or $4, $3, $3
mflo $2
TAG221:
mfhi $3
lw $1, 0($2)
sh $2, 0($3)
lb $2, 0($1)
TAG222:
lb $1, 0($2)
addiu $2, $2, 9
srav $3, $2, $1
div $2, $3
TAG223:
mfhi $2
mflo $2
bltz $2, TAG224
lui $2, 12
TAG224:
sll $0, $0, 0
mfhi $2
multu $2, $2
mthi $2
TAG225:
bgez $2, TAG226
lui $1, 3
multu $2, $1
beq $1, $2, TAG226
TAG226:
sll $0, $0, 0
sll $0, $0, 0
lbu $2, 0($3)
bne $3, $3, TAG227
TAG227:
mfhi $1
xori $1, $2, 14
andi $1, $2, 15
and $3, $1, $1
TAG228:
mfhi $1
lui $1, 7
mfhi $3
lhu $2, 0($3)
TAG229:
sh $2, 0($2)
mthi $2
subu $3, $2, $2
lui $2, 10
TAG230:
bgez $2, TAG231
sll $0, $0, 0
mtlo $2
bne $2, $2, TAG231
TAG231:
mflo $4
mtlo $4
mtlo $2
mult $2, $4
TAG232:
mthi $4
mult $4, $4
mthi $4
lui $3, 10
TAG233:
sltiu $2, $3, 11
beq $2, $3, TAG234
lui $3, 5
sw $3, 0($2)
TAG234:
mfhi $2
lb $2, 0($2)
lui $4, 13
lui $1, 4
TAG235:
beq $1, $1, TAG236
sll $0, $0, 0
bgtz $1, TAG236
mtlo $4
TAG236:
sll $0, $0, 0
bne $4, $4, TAG237
multu $4, $4
mthi $4
TAG237:
lui $3, 7
srlv $2, $4, $4
sll $0, $0, 0
mflo $4
TAG238:
mtlo $4
mthi $4
lui $4, 12
div $4, $4
TAG239:
mthi $4
sll $0, $0, 0
mfhi $3
divu $4, $3
TAG240:
or $1, $3, $3
slti $3, $3, 6
bgez $1, TAG241
mfhi $1
TAG241:
bltz $1, TAG242
sub $4, $1, $1
lui $3, 2
bltz $4, TAG242
TAG242:
subu $1, $3, $3
lui $3, 9
addiu $2, $3, 7
sb $1, 0($1)
TAG243:
divu $2, $2
mtlo $2
mtlo $2
srlv $2, $2, $2
TAG244:
lui $1, 8
addiu $4, $1, 8
slt $4, $2, $2
mfhi $1
TAG245:
bne $1, $1, TAG246
slti $4, $1, 10
sllv $4, $4, $1
sll $4, $4, 11
TAG246:
sh $4, -2048($4)
lui $1, 2
and $2, $1, $4
sltiu $2, $1, 15
TAG247:
bltz $2, TAG248
lh $3, 0($2)
addiu $4, $3, 11
subu $4, $2, $2
TAG248:
addu $2, $4, $4
mthi $2
sb $2, 0($4)
lb $1, 0($2)
TAG249:
lui $1, 11
multu $1, $1
bgez $1, TAG250
lui $1, 6
TAG250:
or $3, $1, $1
bgtz $1, TAG251
sll $0, $0, 0
bgtz $3, TAG251
TAG251:
multu $4, $4
sh $4, 0($4)
bgez $4, TAG252
mfhi $4
TAG252:
lhu $4, 0($4)
bne $4, $4, TAG253
mflo $2
mult $4, $2
TAG253:
mflo $4
lhu $4, 0($2)
mthi $4
blez $2, TAG254
TAG254:
slti $4, $4, 6
lbu $3, 0($4)
mthi $4
slti $3, $4, 7
TAG255:
bltz $3, TAG256
div $3, $3
sra $1, $3, 11
lui $3, 14
TAG256:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
mtlo $2
TAG257:
sb $2, 0($2)
sb $2, 0($2)
bgez $2, TAG258
andi $4, $2, 0
TAG258:
mthi $4
blez $4, TAG259
sw $4, 0($4)
sh $4, 0($4)
TAG259:
multu $4, $4
lui $3, 6
bgtz $4, TAG260
lhu $4, 0($4)
TAG260:
subu $3, $4, $4
lui $2, 12
lbu $2, 0($3)
lui $1, 8
TAG261:
sllv $4, $1, $1
mflo $3
sll $0, $0, 0
mtlo $3
TAG262:
mthi $3
multu $3, $3
or $1, $3, $3
mfhi $1
TAG263:
bne $1, $1, TAG264
sh $1, 0($1)
lb $1, 0($1)
sh $1, 0($1)
TAG264:
sb $1, 0($1)
lw $3, 0($1)
srl $4, $3, 10
mflo $4
TAG265:
lh $4, 0($4)
lui $4, 11
addiu $1, $4, 2
sll $0, $0, 0
TAG266:
mtlo $4
sll $0, $0, 0
slti $3, $4, 2
ori $2, $3, 10
TAG267:
addiu $2, $2, 9
bltz $2, TAG268
lui $2, 10
mtlo $2
TAG268:
mthi $2
sll $0, $0, 0
mfhi $1
divu $1, $1
TAG269:
and $3, $1, $1
sll $0, $0, 0
lui $3, 15
bne $3, $1, TAG270
TAG270:
sll $0, $0, 0
mthi $3
srl $2, $3, 3
mthi $3
TAG271:
mult $2, $2
addu $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG272:
sll $0, $0, 0
sltiu $4, $3, 14
bne $3, $4, TAG273
mflo $4
TAG273:
bne $4, $4, TAG274
sll $2, $4, 3
bgtz $4, TAG274
div $4, $2
TAG274:
div $2, $2
sll $0, $0, 0
sll $2, $2, 7
mult $2, $2
TAG275:
mfhi $4
bne $2, $4, TAG276
mthi $2
sb $4, 0($2)
TAG276:
bgtz $4, TAG277
mtlo $4
mflo $4
lb $1, 0($4)
TAG277:
blez $1, TAG278
xori $1, $1, 5
lh $4, 0($1)
mult $1, $4
TAG278:
sltu $1, $4, $4
mult $1, $1
bne $4, $4, TAG279
mflo $2
TAG279:
blez $2, TAG280
srl $3, $2, 7
lbu $2, 0($2)
mult $3, $2
TAG280:
srl $1, $2, 14
bne $1, $1, TAG281
mult $2, $1
mult $1, $2
TAG281:
or $4, $1, $1
lui $2, 8
mthi $1
sb $1, 0($1)
TAG282:
mfhi $3
beq $2, $2, TAG283
lui $4, 12
mfhi $2
TAG283:
sll $0, $0, 0
mtlo $2
lui $3, 12
mtlo $3
TAG284:
divu $3, $3
multu $3, $3
subu $2, $3, $3
mtlo $2
TAG285:
lui $1, 7
sll $0, $0, 0
sh $3, 0($2)
sh $2, 0($2)
TAG286:
sll $1, $3, 5
mthi $1
mflo $3
mfhi $3
TAG287:
mult $3, $3
mthi $3
subu $1, $3, $3
mthi $3
TAG288:
lbu $3, 0($1)
multu $3, $1
mthi $3
lui $3, 4
TAG289:
mfhi $1
addu $1, $3, $3
blez $1, TAG290
lui $4, 10
TAG290:
bne $4, $4, TAG291
sll $0, $0, 0
sll $0, $0, 0
sltiu $3, $4, 3
TAG291:
mthi $3
slti $2, $3, 6
mult $3, $3
mfhi $4
TAG292:
bgtz $4, TAG293
lh $1, 0($4)
lw $1, 0($1)
bltz $1, TAG293
TAG293:
lui $4, 0
mtlo $4
lb $1, 0($1)
mtlo $1
TAG294:
sub $4, $1, $1
slt $2, $1, $1
addu $4, $4, $4
lh $2, 0($4)
TAG295:
mflo $2
bgtz $2, TAG296
mthi $2
sll $2, $2, 1
TAG296:
mult $2, $2
sllv $4, $2, $2
beq $2, $2, TAG297
mthi $4
TAG297:
mthi $4
multu $4, $4
mtlo $4
bne $4, $4, TAG298
TAG298:
mult $4, $4
mult $4, $4
multu $4, $4
or $1, $4, $4
TAG299:
andi $4, $1, 8
bltz $4, TAG300
lui $2, 6
lui $1, 13
TAG300:
sll $0, $0, 0
mflo $2
mflo $1
lui $2, 15
TAG301:
lui $3, 7
ori $3, $2, 0
srlv $3, $3, $3
sll $0, $0, 0
TAG302:
mfhi $1
multu $1, $1
mtlo $3
mthi $3
TAG303:
beq $1, $1, TAG304
mult $1, $1
sltiu $4, $1, 12
mfhi $4
TAG304:
mthi $4
mult $4, $4
slti $3, $4, 7
blez $4, TAG305
TAG305:
mthi $3
sb $3, 0($3)
multu $3, $3
mtlo $3
TAG306:
bne $3, $3, TAG307
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG307:
mtlo $3
lui $1, 4
mtlo $3
ori $4, $1, 0
TAG308:
sll $0, $0, 0
and $3, $4, $4
subu $1, $4, $4
sll $0, $0, 0
TAG309:
lhu $3, 0($1)
bltz $3, TAG310
lui $2, 6
mflo $2
TAG310:
beq $2, $2, TAG311
sra $3, $2, 12
bne $2, $3, TAG311
sw $3, 0($2)
TAG311:
multu $3, $3
divu $3, $3
bgtz $3, TAG312
mtlo $3
TAG312:
blez $3, TAG313
slti $1, $3, 7
sw $3, -208($3)
lbu $3, -208($3)
TAG313:
mthi $3
srl $4, $3, 8
sltiu $3, $4, 5
mfhi $1
TAG314:
bne $1, $1, TAG315
sra $2, $1, 11
mtlo $1
mflo $2
TAG315:
mthi $2
lui $2, 4
sll $0, $0, 0
div $2, $1
TAG316:
bgtz $1, TAG317
sw $1, -208($1)
mthi $1
bne $1, $1, TAG317
TAG317:
sh $1, -208($1)
mult $1, $1
and $4, $1, $1
srav $1, $1, $4
TAG318:
srav $3, $1, $1
lui $4, 8
mfhi $4
slti $2, $1, 14
TAG319:
mflo $4
lui $4, 14
sb $4, 0($2)
mflo $2
TAG320:
lui $1, 7
divu $2, $1
sll $0, $0, 0
sll $0, $0, 0
TAG321:
lui $2, 13
bltz $2, TAG322
lui $3, 1
bne $2, $2, TAG322
TAG322:
sll $0, $0, 0
mflo $4
lb $3, 0($4)
lb $1, 48($3)
TAG323:
subu $1, $1, $1
multu $1, $1
lhu $4, 0($1)
or $1, $1, $1
TAG324:
bgtz $1, TAG325
lui $1, 12
andi $2, $1, 8
mtlo $1
TAG325:
lb $2, 0($2)
and $1, $2, $2
mtlo $2
mtlo $1
TAG326:
bltz $1, TAG327
sltiu $2, $1, 13
mthi $2
beq $1, $2, TAG327
TAG327:
mtlo $2
multu $2, $2
bltz $2, TAG328
sb $2, 0($2)
TAG328:
mthi $2
bne $2, $2, TAG329
mtlo $2
multu $2, $2
TAG329:
sw $2, 0($2)
slti $3, $2, 3
addi $2, $2, 10
lb $1, 0($3)
TAG330:
mfhi $2
mtlo $2
sb $2, 0($2)
sh $2, 0($2)
TAG331:
mfhi $1
multu $2, $1
bne $2, $2, TAG332
lui $4, 9
TAG332:
lui $3, 9
sll $0, $0, 0
slti $3, $1, 1
mthi $3
TAG333:
sb $3, 0($3)
xori $2, $3, 6
mfhi $2
sb $2, 0($2)
TAG334:
lbu $1, 0($2)
mult $1, $2
lbu $4, 0($1)
sb $4, 0($1)
TAG335:
mflo $1
lui $1, 13
sll $0, $0, 0
bltz $1, TAG336
TAG336:
sll $0, $0, 0
bgtz $1, TAG337
div $1, $4
lui $2, 10
TAG337:
xori $3, $2, 11
bltz $2, TAG338
mthi $3
sb $2, 0($2)
TAG338:
bgez $3, TAG339
mfhi $1
sh $3, 0($3)
beq $1, $3, TAG339
TAG339:
mtlo $1
mflo $3
blez $3, TAG340
lh $3, 0($3)
TAG340:
beq $3, $3, TAG341
sw $3, 0($3)
blez $3, TAG341
slti $3, $3, 7
TAG341:
lhu $4, 0($3)
lui $2, 8
mfhi $1
multu $4, $4
TAG342:
sh $1, 0($1)
mflo $1
sra $3, $1, 3
mult $3, $1
TAG343:
mflo $4
add $4, $3, $3
slt $3, $4, $4
or $4, $4, $3
TAG344:
mult $4, $4
srlv $4, $4, $4
mult $4, $4
srl $2, $4, 4
TAG345:
sh $2, 0($2)
mtlo $2
mthi $2
mthi $2
TAG346:
sb $2, 0($2)
mult $2, $2
blez $2, TAG347
mfhi $4
TAG347:
mtlo $4
bgtz $4, TAG348
xor $3, $4, $4
sb $4, 0($4)
TAG348:
mult $3, $3
mflo $2
blez $2, TAG349
lb $2, 0($2)
TAG349:
multu $2, $2
mflo $1
lui $3, 5
lui $2, 5
TAG350:
lui $2, 2
slti $1, $2, 10
sll $0, $0, 0
lhu $4, 0($1)
TAG351:
lui $3, 3
bgtz $4, TAG352
addu $3, $3, $4
sll $1, $3, 3
TAG352:
srav $2, $1, $1
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG353:
multu $2, $2
lw $3, 0($2)
bgtz $3, TAG354
lui $1, 13
TAG354:
bne $1, $1, TAG355
lui $3, 10
sll $0, $0, 0
nor $4, $1, $3
TAG355:
mtlo $4
divu $4, $4
mthi $4
multu $4, $4
TAG356:
beq $4, $4, TAG357
xori $2, $4, 7
lh $1, 0($2)
bgez $4, TAG357
TAG357:
andi $2, $1, 6
sw $2, 0($2)
andi $3, $2, 14
subu $4, $1, $1
TAG358:
multu $4, $4
multu $4, $4
addi $3, $4, 14
mflo $1
TAG359:
lui $3, 12
sb $3, 0($1)
sll $0, $0, 0
andi $3, $2, 4
TAG360:
blez $3, TAG361
lui $4, 4
bltz $4, TAG361
sub $3, $4, $3
TAG361:
bltz $3, TAG362
mult $3, $3
addiu $4, $3, 11
and $4, $3, $3
TAG362:
mfhi $1
lui $4, 8
sh $4, 0($1)
mfhi $1
TAG363:
mfhi $2
lbu $2, 0($2)
lui $2, 11
subu $3, $2, $2
TAG364:
multu $3, $3
mthi $3
lui $3, 8
beq $3, $3, TAG365
TAG365:
lui $2, 8
beq $2, $2, TAG366
lui $4, 7
lhu $3, 0($3)
TAG366:
bgez $3, TAG367
sll $0, $0, 0
bltz $3, TAG367
div $3, $3
TAG367:
sll $0, $0, 0
mult $3, $3
mtlo $3
mthi $2
TAG368:
divu $2, $2
mfhi $2
lui $4, 8
multu $4, $2
TAG369:
sll $0, $0, 0
sra $1, $4, 10
sll $0, $0, 0
multu $3, $4
TAG370:
sll $0, $0, 0
mflo $4
beq $4, $4, TAG371
mtlo $3
TAG371:
mfhi $3
add $3, $4, $3
mult $4, $3
bltz $4, TAG372
TAG372:
sra $4, $3, 8
sb $3, 0($4)
lhu $3, 0($3)
div $4, $3
TAG373:
lui $2, 5
nor $1, $3, $2
sll $0, $0, 0
lui $1, 0
TAG374:
bne $1, $1, TAG375
mthi $1
and $2, $1, $1
lh $1, 0($1)
TAG375:
or $2, $1, $1
mfhi $3
lbu $4, 0($1)
lui $3, 15
TAG376:
mfhi $1
lh $2, 0($1)
bltz $3, TAG377
sw $2, 0($1)
TAG377:
mtlo $2
bltz $2, TAG378
mthi $2
lw $1, 0($2)
TAG378:
bne $1, $1, TAG379
sll $3, $1, 4
mthi $3
mfhi $2
TAG379:
bgtz $2, TAG380
addiu $4, $2, 7
lw $4, 0($2)
mfhi $4
TAG380:
beq $4, $4, TAG381
mult $4, $4
lui $2, 9
bgez $2, TAG381
TAG381:
multu $2, $2
bgez $2, TAG382
addiu $4, $2, 6
bgez $4, TAG382
TAG382:
addiu $2, $4, 14
lui $2, 5
multu $4, $2
divu $4, $4
TAG383:
lui $4, 7
beq $2, $2, TAG384
sll $0, $0, 0
beq $4, $4, TAG384
TAG384:
sll $0, $0, 0
sll $0, $0, 0
srlv $2, $4, $4
lui $1, 0
TAG385:
sub $3, $1, $1
addi $1, $1, 12
sh $1, 0($1)
or $4, $1, $3
TAG386:
div $4, $4
sb $4, 0($4)
andi $1, $4, 7
mflo $2
TAG387:
lui $4, 12
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
TAG388:
sub $1, $3, $3
nor $2, $3, $3
and $4, $3, $1
lhu $3, 1($2)
TAG389:
bne $3, $3, TAG390
lui $3, 13
sll $0, $0, 0
sllv $3, $3, $3
TAG390:
mflo $1
sll $3, $1, 10
sltiu $4, $3, 5
addiu $4, $3, 3
TAG391:
lui $4, 10
nor $3, $4, $4
mflo $4
or $1, $3, $4
TAG392:
mult $1, $1
bne $1, $1, TAG393
div $1, $1
mtlo $1
TAG393:
sll $4, $1, 12
xori $2, $1, 11
sra $1, $4, 12
addu $3, $1, $4
TAG394:
divu $3, $3
div $3, $3
bne $3, $3, TAG395
divu $3, $3
TAG395:
beq $3, $3, TAG396
mtlo $3
sll $2, $3, 0
blez $3, TAG396
TAG396:
divu $2, $2
mtlo $2
andi $1, $2, 8
bne $1, $1, TAG397
TAG397:
nor $2, $1, $1
addu $3, $2, $2
blez $2, TAG398
lui $4, 2
TAG398:
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG399
sllv $3, $4, $4
TAG399:
lui $1, 5
addu $2, $3, $1
bgez $3, TAG400
sll $2, $1, 7
TAG400:
lui $1, 13
sllv $1, $2, $2
mthi $1
or $4, $1, $2
TAG401:
bgez $4, TAG402
sll $0, $0, 0
bne $4, $4, TAG402
mfhi $4
TAG402:
sll $0, $0, 0
beq $3, $4, TAG403
lui $4, 11
div $3, $4
TAG403:
mtlo $4
multu $4, $4
bltz $4, TAG404
lui $1, 3
TAG404:
mult $1, $1
blez $1, TAG405
sll $0, $0, 0
bltz $1, TAG405
TAG405:
sll $0, $0, 0
bgez $1, TAG406
lui $1, 7
andi $4, $1, 4
TAG406:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG407:
subu $1, $4, $4
addi $1, $1, 15
sll $0, $0, 0
mtlo $1
TAG408:
mflo $2
sb $1, 0($2)
bgtz $2, TAG409
sb $1, 0($2)
TAG409:
sb $2, 0($2)
lui $3, 15
bne $2, $3, TAG410
or $4, $2, $2
TAG410:
mflo $4
sltu $1, $4, $4
mtlo $4
bne $4, $4, TAG411
TAG411:
lui $4, 13
bne $1, $4, TAG412
sltiu $3, $4, 2
div $3, $4
TAG412:
lb $2, 0($3)
beq $2, $3, TAG413
andi $4, $3, 3
bgtz $3, TAG413
TAG413:
lui $3, 9
and $3, $3, $3
xori $3, $3, 5
bgtz $3, TAG414
TAG414:
srl $4, $3, 0
bne $4, $4, TAG415
mflo $4
mthi $3
TAG415:
lui $2, 13
mflo $2
mult $2, $4
mflo $4
TAG416:
srav $4, $4, $4
lui $3, 1
bgez $4, TAG417
addu $2, $4, $3
TAG417:
addiu $1, $2, 6
lui $1, 2
mtlo $1
sll $0, $0, 0
TAG418:
sll $0, $0, 0
addiu $3, $3, 6
lui $1, 13
sll $0, $0, 0
TAG419:
blez $2, TAG420
mtlo $2
bgtz $2, TAG420
mflo $2
TAG420:
mfhi $1
lui $1, 9
mtlo $2
sll $0, $0, 0
TAG421:
divu $2, $2
mthi $2
bne $2, $2, TAG422
sll $0, $0, 0
TAG422:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $3, $2, TAG423
TAG423:
multu $4, $4
lh $4, 0($4)
mfhi $2
bgtz $4, TAG424
TAG424:
addiu $4, $2, 15
lb $4, 0($4)
slt $1, $4, $2
beq $2, $4, TAG425
TAG425:
sb $1, 0($1)
mflo $1
ori $1, $1, 5
mfhi $2
TAG426:
lui $4, 6
mult $2, $2
mult $4, $2
lui $3, 5
TAG427:
lui $1, 5
mflo $4
mthi $4
lui $2, 8
TAG428:
lui $2, 9
mflo $4
mult $4, $2
sw $2, 0($4)
TAG429:
lw $3, 0($4)
subu $3, $4, $3
sll $0, $0, 0
lhu $3, 0($4)
TAG430:
sh $3, 0($3)
addi $1, $3, 3
lui $4, 0
sh $4, 0($3)
TAG431:
beq $4, $4, TAG432
mtlo $4
sll $1, $4, 11
lh $4, 0($1)
TAG432:
beq $4, $4, TAG433
lui $4, 8
lb $3, 0($4)
lui $1, 13
TAG433:
mthi $1
lui $3, 11
div $3, $3
srlv $2, $1, $1
TAG434:
lb $4, 0($2)
srav $4, $4, $4
beq $4, $2, TAG435
nor $3, $4, $4
TAG435:
div $3, $3
lh $4, 1($3)
multu $4, $3
slti $1, $4, 2
TAG436:
multu $1, $1
sllv $3, $1, $1
addu $3, $1, $3
lui $2, 14
TAG437:
sll $0, $0, 0
lui $2, 5
sll $0, $0, 0
sb $2, 0($4)
TAG438:
mtlo $2
sltiu $4, $2, 6
addu $4, $2, $4
divu $2, $2
TAG439:
bne $4, $4, TAG440
sll $0, $0, 0
mfhi $2
multu $4, $2
TAG440:
sw $2, 0($2)
lui $2, 2
divu $2, $2
sll $0, $0, 0
TAG441:
mtlo $4
bltz $4, TAG442
sll $0, $0, 0
sll $0, $0, 0
TAG442:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
andi $1, $4, 8
TAG443:
lb $1, 0($1)
mult $1, $1
lw $3, 0($1)
multu $1, $1
TAG444:
blez $3, TAG445
mtlo $3
xor $2, $3, $3
mtlo $2
TAG445:
xori $1, $2, 1
mfhi $1
mtlo $2
ori $4, $1, 11
TAG446:
sb $4, 0($4)
sb $4, 0($4)
multu $4, $4
lbu $3, 0($4)
TAG447:
lui $4, 2
lui $2, 10
bne $4, $2, TAG448
lb $2, 0($3)
TAG448:
sra $4, $2, 8
lb $4, 0($4)
lui $1, 1
bne $4, $2, TAG449
TAG449:
ori $2, $1, 2
mtlo $2
sll $0, $0, 0
mfhi $1
TAG450:
mult $1, $1
sw $1, 0($1)
bne $1, $1, TAG451
mthi $1
TAG451:
bgtz $1, TAG452
sub $1, $1, $1
lui $1, 2
addu $2, $1, $1
TAG452:
mthi $2
sll $0, $0, 0
lui $4, 12
srl $4, $4, 7
TAG453:
mflo $3
lui $2, 9
lui $4, 1
lbu $4, 0($3)
TAG454:
nor $4, $4, $4
or $2, $4, $4
sb $4, 1($4)
beq $4, $2, TAG455
TAG455:
addiu $1, $2, 14
blez $1, TAG456
lui $3, 14
srlv $3, $3, $1
TAG456:
lui $4, 15
xor $3, $4, $4
blez $4, TAG457
sll $0, $0, 0
TAG457:
bltz $1, TAG458
sra $4, $1, 2
lui $2, 14
lui $4, 14
TAG458:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 12
srlv $4, $3, $4
TAG459:
mult $4, $4
bne $4, $4, TAG460
mthi $4
add $3, $4, $4
TAG460:
sb $3, 0($3)
lb $1, 0($3)
sh $3, 0($3)
sh $1, 0($1)
TAG461:
sw $1, 0($1)
add $2, $1, $1
bne $2, $2, TAG462
mtlo $1
TAG462:
sb $2, 0($2)
sb $2, 0($2)
lh $4, 0($2)
lui $1, 1
TAG463:
nor $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG464
TAG464:
lui $4, 12
sll $0, $0, 0
divu $4, $4
bne $2, $2, TAG465
TAG465:
addiu $2, $4, 12
bne $2, $2, TAG466
mtlo $2
lui $2, 2
TAG466:
bgtz $2, TAG467
lui $2, 15
lhu $1, 0($2)
mflo $4
TAG467:
sll $0, $0, 0
lui $1, 11
or $1, $4, $1
mfhi $4
TAG468:
blez $4, TAG469
lh $3, 0($4)
sw $4, 0($3)
lh $3, 0($3)
TAG469:
mthi $3
lh $4, 0($3)
mfhi $4
sra $4, $4, 10
TAG470:
mult $4, $4
lh $2, 0($4)
sb $4, 0($2)
mthi $2
TAG471:
mfhi $1
lbu $2, 0($2)
lui $1, 1
sb $1, 0($2)
TAG472:
lui $4, 4
mthi $1
mflo $3
sll $0, $0, 0
TAG473:
sh $3, 0($3)
lb $1, 0($3)
lh $3, 0($3)
sb $3, 0($3)
TAG474:
beq $3, $3, TAG475
mthi $3
xor $3, $3, $3
mtlo $3
TAG475:
xori $3, $3, 11
mfhi $4
bltz $3, TAG476
div $4, $3
TAG476:
lui $1, 11
mthi $4
sll $0, $0, 0
lui $2, 4
TAG477:
bgtz $2, TAG478
divu $2, $2
lui $3, 0
blez $2, TAG478
TAG478:
lui $1, 7
multu $3, $1
mflo $3
sll $0, $0, 0
TAG479:
sll $0, $0, 0
bne $3, $3, TAG480
mtlo $3
srl $4, $3, 10
TAG480:
sll $0, $0, 0
sb $1, -4928($4)
divu $1, $1
bltz $1, TAG481
TAG481:
xor $2, $1, $1
bltz $1, TAG482
mfhi $4
andi $2, $4, 6
TAG482:
sh $2, 0($2)
slt $2, $2, $2
mtlo $2
lui $3, 11
TAG483:
bgez $3, TAG484
div $3, $3
sb $3, 0($3)
andi $1, $3, 10
TAG484:
sltu $3, $1, $1
addiu $2, $1, 14
blez $3, TAG485
mthi $1
TAG485:
sll $0, $0, 0
mfhi $3
mflo $2
andi $2, $3, 13
TAG486:
lb $1, 0($2)
blez $2, TAG487
mthi $2
bne $1, $1, TAG487
TAG487:
sb $1, 0($1)
lui $1, 11
mflo $2
mtlo $1
TAG488:
sb $2, 0($2)
lui $2, 3
lui $1, 12
sll $0, $0, 0
TAG489:
slti $3, $1, 6
mtlo $3
addiu $1, $1, 11
lui $4, 15
TAG490:
sltu $2, $4, $4
mflo $4
sltiu $2, $4, 7
sb $4, 0($2)
TAG491:
xor $4, $2, $2
blez $4, TAG492
multu $4, $4
div $2, $2
TAG492:
lh $1, 0($4)
lui $4, 5
mthi $1
addiu $2, $1, 5
TAG493:
subu $1, $2, $2
multu $1, $2
mult $1, $1
bne $1, $1, TAG494
TAG494:
sb $1, 0($1)
lw $2, 0($1)
lui $1, 3
lui $1, 3
TAG495:
sll $0, $0, 0
sll $0, $0, 0
andi $1, $1, 3
mflo $2
TAG496:
lw $4, 0($2)
blez $4, TAG497
lb $1, 0($4)
mfhi $4
TAG497:
mult $4, $4
lui $3, 12
subu $1, $4, $3
mflo $1
TAG498:
lui $2, 8
mtlo $2
lhu $2, 0($1)
lui $2, 10
TAG499:
mthi $2
sll $0, $0, 0
bltz $2, TAG500
add $2, $4, $4
TAG500:
bgtz $2, TAG501
mtlo $2
lui $4, 8
mtlo $2
TAG501:
sll $0, $0, 0
lh $1, 0($1)
mflo $3
lui $2, 13
TAG502:
lui $2, 3
sllv $1, $2, $2
div $2, $1
bne $2, $2, TAG503
TAG503:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
mthi $1
TAG504:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG505:
lbu $3, 0($3)
sra $1, $3, 11
lw $1, 0($1)
bltz $3, TAG506
TAG506:
sb $1, 0($1)
lh $1, 0($1)
mflo $2
sltiu $4, $1, 9
TAG507:
subu $1, $4, $4
mtlo $4
multu $4, $4
xori $4, $4, 8
TAG508:
lui $3, 2
lui $2, 0
subu $3, $2, $2
mthi $3
TAG509:
lb $2, 0($3)
lui $1, 7
mflo $1
mflo $1
TAG510:
mtlo $1
lb $3, 0($1)
lb $2, 0($1)
multu $3, $2
TAG511:
mult $2, $2
lui $1, 11
bgez $2, TAG512
mthi $2
TAG512:
sll $0, $0, 0
addiu $2, $1, 9
bne $1, $1, TAG513
and $1, $1, $1
TAG513:
lui $1, 1
mflo $4
sll $0, $0, 0
sltiu $3, $1, 1
TAG514:
beq $3, $3, TAG515
slt $4, $3, $3
multu $3, $3
div $3, $3
TAG515:
mflo $3
sb $3, 0($4)
sb $3, 0($4)
lui $1, 14
TAG516:
addu $3, $1, $1
ori $2, $1, 8
or $4, $3, $3
lui $4, 10
TAG517:
mthi $4
mthi $4
lui $3, 8
srl $4, $4, 4
TAG518:
addiu $3, $4, 0
beq $3, $4, TAG519
sll $0, $0, 0
mthi $4
TAG519:
mflo $2
lui $4, 12
sll $0, $0, 0
div $1, $3
TAG520:
bne $1, $1, TAG521
mfhi $4
lui $3, 1
srlv $3, $1, $1
TAG521:
mthi $3
mthi $3
div $3, $3
addu $3, $3, $3
TAG522:
mflo $2
mult $2, $3
sb $2, 0($2)
beq $3, $3, TAG523
TAG523:
mflo $3
mthi $2
multu $3, $2
mflo $1
TAG524:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG525
TAG525:
mthi $1
mthi $1
sll $0, $0, 0
or $1, $1, $1
TAG526:
sll $0, $0, 0
lui $1, 8
div $1, $4
beq $1, $1, TAG527
TAG527:
mult $1, $1
lui $1, 12
sltiu $2, $1, 10
sll $0, $0, 0
TAG528:
beq $2, $2, TAG529
lui $4, 6
blez $2, TAG529
sh $2, 0($2)
TAG529:
or $2, $4, $4
sll $0, $0, 0
lui $1, 7
lui $3, 9
TAG530:
sllv $3, $3, $3
blez $3, TAG531
div $3, $3
sll $0, $0, 0
TAG531:
sll $0, $0, 0
bne $2, $2, TAG532
sll $0, $0, 0
sra $2, $2, 11
TAG532:
sb $2, -192($2)
sh $2, -192($2)
slt $4, $2, $2
lui $2, 13
TAG533:
sll $0, $0, 0
lui $3, 13
subu $3, $3, $2
sll $0, $0, 0
TAG534:
sw $3, 0($3)
lui $2, 7
mult $3, $2
mfhi $1
TAG535:
and $4, $1, $1
beq $4, $1, TAG536
mflo $4
srav $1, $4, $4
TAG536:
bgtz $1, TAG537
mflo $1
lui $2, 12
bne $2, $1, TAG537
TAG537:
slt $3, $2, $2
bgez $2, TAG538
ori $1, $2, 7
mflo $1
TAG538:
divu $1, $1
sll $0, $0, 0
beq $1, $1, TAG539
and $4, $1, $1
TAG539:
subu $4, $4, $4
lui $2, 8
bltz $4, TAG540
add $1, $4, $4
TAG540:
lhu $1, 0($1)
bltz $1, TAG541
addi $2, $1, 13
andi $2, $2, 2
TAG541:
multu $2, $2
sb $2, 0($2)
mthi $2
lbu $2, 0($2)
TAG542:
mfhi $1
sb $1, 0($2)
lb $2, 0($1)
mult $1, $2
TAG543:
lui $4, 8
mfhi $3
bne $3, $2, TAG544
mflo $1
TAG544:
sllv $2, $1, $1
mflo $4
lhu $2, 0($4)
mflo $3
TAG545:
bne $3, $3, TAG546
xor $2, $3, $3
mult $2, $3
lui $1, 14
TAG546:
mult $1, $1
addu $3, $1, $1
bgtz $3, TAG547
divu $3, $3
TAG547:
mthi $3
sll $0, $0, 0
srl $3, $3, 7
mfhi $1
TAG548:
mflo $1
mflo $1
blez $1, TAG549
lui $2, 14
TAG549:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG550:
lui $4, 8
bgtz $4, TAG551
sll $0, $0, 0
beq $4, $4, TAG551
TAG551:
srl $3, $4, 4
mflo $4
lui $3, 5
mflo $3
TAG552:
slti $3, $3, 2
divu $3, $3
multu $3, $3
bne $3, $3, TAG553
TAG553:
mflo $3
mtlo $3
bgtz $3, TAG554
nor $1, $3, $3
TAG554:
sll $0, $0, 0
mtlo $2
srav $4, $1, $1
srl $3, $2, 8
TAG555:
bne $3, $3, TAG556
mflo $2
lui $1, 9
sltiu $4, $3, 10
TAG556:
mult $4, $4
mfhi $1
lui $3, 12
sll $0, $0, 0
TAG557:
srlv $3, $4, $4
mthi $4
sb $3, 0($4)
bgtz $3, TAG558
TAG558:
mflo $1
xori $1, $1, 9
sll $1, $1, 11
lh $3, -18432($1)
TAG559:
lh $1, 0($3)
mflo $1
srav $1, $1, $1
sh $1, 0($1)
TAG560:
mflo $2
ori $2, $2, 4
slti $1, $2, 2
mfhi $4
TAG561:
lui $3, 3
mult $4, $4
lui $2, 12
mthi $4
TAG562:
sltiu $4, $2, 8
multu $2, $2
blez $2, TAG563
lui $1, 11
TAG563:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
mtlo $4
TAG564:
mult $4, $4
sb $4, 0($4)
lhu $2, 0($4)
bltz $2, TAG565
TAG565:
lw $4, 0($2)
lui $1, 5
lh $4, 0($4)
sh $2, 0($4)
TAG566:
multu $4, $4
beq $4, $4, TAG567
mthi $4
lui $4, 14
TAG567:
mthi $4
xori $4, $4, 7
mfhi $2
div $4, $4
TAG568:
add $2, $2, $2
multu $2, $2
lui $2, 11
lui $4, 4
TAG569:
mthi $4
sll $0, $0, 0
mfhi $1
lui $4, 8
TAG570:
addiu $1, $4, 10
divu $1, $1
bgtz $1, TAG571
mtlo $4
TAG571:
mfhi $4
or $4, $1, $4
lui $4, 7
multu $1, $4
TAG572:
sll $0, $0, 0
mult $3, $3
lui $1, 3
beq $1, $4, TAG573
TAG573:
mthi $1
sll $0, $0, 0
bne $2, $1, TAG574
sltiu $1, $2, 14
TAG574:
addi $4, $1, 1
bltz $4, TAG575
lb $2, 0($4)
sll $2, $4, 7
TAG575:
beq $2, $2, TAG576
mflo $4
mult $4, $4
mflo $3
TAG576:
sra $4, $3, 12
bltz $4, TAG577
sb $4, 0($4)
sb $4, 0($4)
TAG577:
addu $1, $4, $4
bne $1, $4, TAG578
lb $4, 0($1)
bne $1, $4, TAG578
TAG578:
lh $1, 0($4)
sltu $1, $1, $1
bgez $1, TAG579
add $4, $1, $4
TAG579:
ori $3, $4, 12
beq $4, $3, TAG580
sh $4, 0($3)
bltz $3, TAG580
TAG580:
sltiu $2, $3, 13
xor $3, $3, $2
subu $1, $2, $3
mflo $2
TAG581:
sw $2, 0($2)
mult $2, $2
lui $1, 0
beq $2, $1, TAG582
TAG582:
xor $4, $1, $1
or $3, $4, $4
mfhi $1
mthi $3
TAG583:
srlv $2, $1, $1
lhu $2, 0($1)
lbu $2, 0($2)
sw $2, 0($2)
TAG584:
lui $4, 2
mthi $4
sra $3, $4, 12
sll $0, $0, 0
TAG585:
lui $2, 15
sb $2, 0($3)
bltz $2, TAG586
divu $3, $3
TAG586:
mtlo $2
mflo $4
lui $3, 11
sltu $2, $4, $2
TAG587:
lui $1, 5
srl $3, $2, 3
nor $2, $1, $2
mult $3, $3
TAG588:
beq $2, $2, TAG589
slti $3, $2, 12
xor $2, $3, $3
multu $2, $2
TAG589:
lui $2, 0
lui $1, 3
sra $1, $1, 0
mtlo $1
TAG590:
lui $2, 0
div $2, $1
bltz $1, TAG591
srl $3, $2, 7
TAG591:
sh $3, 0($3)
lhu $3, 0($3)
beq $3, $3, TAG592
sh $3, 0($3)
TAG592:
multu $3, $3
mtlo $3
bltz $3, TAG593
lui $2, 7
TAG593:
lui $4, 9
lui $2, 7
lui $2, 4
multu $2, $2
TAG594:
bltz $2, TAG595
sll $0, $0, 0
addiu $1, $2, 6
sll $0, $0, 0
TAG595:
bne $2, $2, TAG596
mfhi $4
mult $2, $2
bltz $4, TAG596
TAG596:
lb $4, 0($4)
bltz $4, TAG597
ori $3, $4, 6
mflo $4
TAG597:
sltiu $4, $4, 6
mtlo $4
div $4, $4
sb $4, 0($4)
TAG598:
blez $4, TAG599
mtlo $4
divu $4, $4
sll $3, $4, 15
TAG599:
mflo $1
lbu $4, 0($1)
bgez $3, TAG600
xor $1, $3, $4
TAG600:
slt $1, $1, $1
lh $2, 0($1)
bne $2, $2, TAG601
mtlo $2
TAG601:
subu $1, $2, $2
lh $3, 0($1)
mtlo $3
lhu $4, -256($3)
TAG602:
sb $4, -256($4)
sh $4, -256($4)
lui $1, 6
xor $3, $1, $1
TAG603:
beq $3, $3, TAG604
lb $2, 0($3)
beq $3, $3, TAG604
mfhi $1
TAG604:
mtlo $1
addiu $4, $1, 4
mtlo $4
divu $4, $1
TAG605:
sra $4, $4, 5
lui $1, 7
mthi $4
srlv $2, $4, $4
TAG606:
div $2, $2
sll $3, $2, 8
bgez $3, TAG607
sh $3, -12288($2)
TAG607:
mflo $2
mfhi $1
sll $3, $1, 11
srl $1, $1, 2
TAG608:
multu $1, $1
beq $1, $1, TAG609
multu $1, $1
mthi $1
TAG609:
sh $1, 0($1)
bltz $1, TAG610
mtlo $1
mtlo $1
TAG610:
mult $1, $1
lw $2, 0($1)
lui $1, 13
blez $2, TAG611
TAG611:
mfhi $3
mult $3, $3
divu $1, $1
bne $1, $3, TAG612
TAG612:
mfhi $1
lui $3, 0
blez $3, TAG613
mflo $2
TAG613:
lb $3, 0($2)
lbu $1, 0($2)
lui $3, 7
bne $3, $1, TAG614
TAG614:
mfhi $2
mult $3, $3
mult $3, $2
bne $3, $2, TAG615
TAG615:
multu $2, $2
mult $2, $2
addi $3, $2, 12
lui $2, 5
TAG616:
srl $2, $2, 14
mtlo $2
mfhi $4
beq $2, $2, TAG617
TAG617:
lb $3, 0($4)
multu $3, $4
srlv $4, $3, $4
multu $4, $3
TAG618:
mflo $1
blez $4, TAG619
mfhi $3
nor $4, $1, $1
TAG619:
lui $4, 12
mfhi $4
lh $1, 0($4)
mtlo $4
TAG620:
slt $3, $1, $1
bne $1, $3, TAG621
lui $2, 6
mflo $4
TAG621:
lw $1, 0($4)
sb $4, 0($4)
blez $4, TAG622
xor $1, $4, $1
TAG622:
mtlo $1
beq $1, $1, TAG623
mflo $2
mtlo $2
TAG623:
beq $2, $2, TAG624
multu $2, $2
bgez $2, TAG624
lhu $2, 0($2)
TAG624:
bgez $2, TAG625
lhu $4, 0($2)
bgtz $2, TAG625
sll $3, $2, 12
TAG625:
multu $3, $3
mthi $3
mflo $4
bgez $4, TAG626
TAG626:
sh $4, 0($4)
mflo $4
bgez $4, TAG627
add $1, $4, $4
TAG627:
sltiu $2, $1, 10
addiu $2, $2, 4
beq $2, $2, TAG628
nor $1, $2, $1
TAG628:
mult $1, $1
lui $2, 5
beq $2, $1, TAG629
mflo $2
TAG629:
andi $3, $2, 11
lw $1, 0($3)
lui $4, 8
addiu $4, $4, 7
TAG630:
mult $4, $4
sll $0, $0, 0
beq $4, $1, TAG631
sll $0, $0, 0
TAG631:
mfhi $3
beq $1, $3, TAG632
mthi $3
lb $1, 0($1)
TAG632:
mult $1, $1
lui $3, 3
blez $1, TAG633
mtlo $1
TAG633:
mfhi $3
addi $1, $3, 10
lbu $4, 0($3)
andi $4, $3, 6
TAG634:
sh $4, 0($4)
sh $4, 0($4)
add $2, $4, $4
lb $3, 0($4)
TAG635:
lui $2, 13
mfhi $4
sh $4, 0($4)
sra $2, $3, 2
TAG636:
sub $1, $2, $2
mult $2, $1
beq $2, $2, TAG637
multu $2, $2
TAG637:
lh $1, 0($1)
sub $4, $1, $1
subu $3, $4, $1
mtlo $4
TAG638:
multu $3, $3
sh $3, 0($3)
andi $1, $3, 0
multu $3, $3
TAG639:
mtlo $1
multu $1, $1
mult $1, $1
sub $3, $1, $1
TAG640:
mult $3, $3
lbu $4, 0($3)
mfhi $2
bgtz $4, TAG641
TAG641:
lbu $1, 0($2)
ori $3, $2, 13
srlv $1, $3, $3
bgtz $1, TAG642
TAG642:
lui $3, 1
bgtz $1, TAG643
lui $1, 8
divu $3, $1
TAG643:
sll $0, $0, 0
beq $1, $1, TAG644
subu $1, $1, $1
bne $1, $1, TAG644
TAG644:
sltiu $2, $1, 9
lui $1, 0
bne $1, $1, TAG645
lbu $3, 0($2)
TAG645:
bne $3, $3, TAG646
lh $3, 0($3)
sb $3, 0($3)
mflo $3
TAG646:
multu $3, $3
mthi $3
beq $3, $3, TAG647
andi $2, $3, 8
TAG647:
sb $2, 0($2)
addu $1, $2, $2
slt $2, $1, $1
sb $2, 0($2)
TAG648:
lui $3, 8
lb $3, 0($2)
bltz $2, TAG649
mthi $3
TAG649:
mflo $1
lui $4, 11
and $2, $4, $3
bgtz $2, TAG650
TAG650:
sb $2, 0($2)
lui $4, 9
addu $4, $4, $4
sll $0, $0, 0
TAG651:
sll $0, $0, 0
lui $2, 12
bgez $4, TAG652
lui $2, 6
TAG652:
mtlo $2
mtlo $2
sll $0, $0, 0
sltu $4, $2, $2
TAG653:
mthi $4
mflo $3
multu $4, $4
multu $3, $3
TAG654:
blez $3, TAG655
addiu $2, $3, 12
mtlo $2
sllv $1, $2, $3
TAG655:
mfhi $4
divu $1, $4
sll $0, $0, 0
divu $4, $1
TAG656:
sltu $3, $4, $4
mfhi $4
addu $4, $4, $4
bltz $4, TAG657
TAG657:
sllv $1, $4, $4
div $1, $4
beq $4, $4, TAG658
srav $4, $4, $1
TAG658:
bgez $4, TAG659
lui $1, 15
mult $4, $1
mult $4, $4
TAG659:
bgez $1, TAG660
mthi $1
lw $2, 0($1)
bgez $1, TAG660
TAG660:
lui $1, 15
divu $1, $2
mthi $2
lui $3, 4
TAG661:
mfhi $2
mtlo $3
addiu $2, $2, 7
bgtz $2, TAG662
TAG662:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 10
mfhi $4
TAG663:
subu $3, $4, $4
mtlo $3
beq $4, $4, TAG664
and $4, $4, $3
TAG664:
beq $4, $4, TAG665
lui $3, 13
sw $3, 0($3)
bltz $3, TAG665
TAG665:
mtlo $3
sll $0, $0, 0
xori $2, $1, 10
bne $1, $1, TAG666
TAG666:
mflo $3
mtlo $3
mtlo $2
mfhi $2
TAG667:
lui $4, 15
sll $0, $0, 0
addu $2, $4, $4
addu $1, $4, $2
TAG668:
blez $1, TAG669
lui $4, 14
mflo $3
sra $2, $3, 10
TAG669:
bgtz $2, TAG670
lbu $2, -640($2)
mfhi $3
mfhi $3
TAG670:
div $3, $3
div $3, $3
sll $0, $0, 0
lui $4, 14
TAG671:
mtlo $4
slti $1, $4, 12
bgtz $4, TAG672
or $1, $1, $4
TAG672:
sll $0, $0, 0
div $1, $1
divu $1, $3
mflo $4
TAG673:
bne $4, $4, TAG674
mult $4, $4
mthi $4
xori $1, $4, 11
TAG674:
lh $4, 0($1)
sw $1, -2826($4)
mthi $1
ori $2, $1, 5
TAG675:
bgtz $2, TAG676
addiu $2, $2, 11
sw $2, 0($2)
lhu $2, 0($2)
TAG676:
subu $2, $2, $2
lui $1, 12
divu $1, $1
multu $2, $1
TAG677:
lui $3, 1
subu $2, $1, $3
beq $3, $2, TAG678
mtlo $2
TAG678:
mflo $4
mflo $4
bgtz $4, TAG679
xori $2, $2, 12
TAG679:
sll $0, $0, 0
and $4, $2, $2
bgez $4, TAG680
lui $1, 1
TAG680:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG681:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG682
TAG682:
mflo $2
lui $3, 4
xor $4, $2, $4
bne $4, $4, TAG683
TAG683:
mult $4, $4
lui $2, 3
mflo $3
mult $2, $4
TAG684:
sub $1, $3, $3
lui $3, 11
srav $3, $3, $3
sll $0, $0, 0
TAG685:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
mthi $2
TAG686:
bne $3, $3, TAG687
lbu $4, 0($3)
blez $4, TAG687
lbu $1, 0($3)
TAG687:
beq $1, $1, TAG688
lb $3, 0($1)
bgez $3, TAG688
multu $3, $3
TAG688:
lh $4, 0($3)
sb $3, 0($3)
ori $1, $4, 1
mthi $1
TAG689:
bgtz $1, TAG690
addu $3, $1, $1
mthi $1
xor $2, $1, $3
TAG690:
bltz $2, TAG691
mflo $4
mtlo $4
multu $4, $2
TAG691:
lb $3, 0($4)
lui $2, 7
div $4, $2
sltiu $3, $4, 14
TAG692:
mtlo $3
lbu $1, 0($3)
sb $1, 0($3)
bltz $1, TAG693
TAG693:
sltiu $3, $1, 13
bltz $1, TAG694
sb $1, 0($3)
lui $3, 0
TAG694:
bgez $3, TAG695
mflo $1
mthi $3
mtlo $3
TAG695:
div $1, $1
lb $3, 0($1)
lui $2, 9
mfhi $3
TAG696:
mult $3, $3
or $3, $3, $3
andi $1, $3, 7
srlv $2, $1, $3
TAG697:
bltz $2, TAG698
xor $2, $2, $2
lui $2, 8
sll $0, $0, 0
TAG698:
or $1, $3, $3
beq $3, $3, TAG699
lw $3, 0($3)
nor $1, $3, $3
TAG699:
lui $4, 3
mtlo $1
sltiu $2, $4, 9
mfhi $4
TAG700:
mflo $3
mfhi $4
lui $2, 6
mthi $4
TAG701:
mtlo $2
sll $0, $0, 0
lui $4, 1
beq $2, $4, TAG702
TAG702:
ori $3, $4, 8
mthi $3
mult $4, $4
sll $0, $0, 0
TAG703:
sll $0, $0, 0
addiu $4, $2, 3
sll $0, $0, 0
mflo $2
TAG704:
add $4, $2, $2
andi $4, $4, 3
addiu $3, $4, 6
bgez $4, TAG705
TAG705:
mfhi $3
andi $4, $3, 13
sllv $1, $4, $3
beq $3, $3, TAG706
TAG706:
mthi $1
mthi $1
lui $4, 8
addiu $4, $4, 5
TAG707:
sltu $3, $4, $4
bgtz $4, TAG708
and $3, $4, $4
add $2, $3, $3
TAG708:
lw $3, 0($2)
srlv $4, $2, $3
mthi $3
srlv $3, $2, $4
TAG709:
lhu $2, 0($3)
mflo $2
mthi $2
xor $2, $3, $2
TAG710:
beq $2, $2, TAG711
sw $2, 0($2)
bgez $2, TAG711
mfhi $2
TAG711:
bne $2, $2, TAG712
sb $2, 0($2)
bne $2, $2, TAG712
andi $1, $2, 5
TAG712:
lh $1, 0($1)
sw $1, 0($1)
lh $1, 0($1)
mult $1, $1
TAG713:
bne $1, $1, TAG714
sw $1, 0($1)
lui $2, 9
bgtz $2, TAG714
TAG714:
sll $3, $2, 15
mfhi $2
sb $2, 0($2)
mflo $2
TAG715:
beq $2, $2, TAG716
lbu $1, 0($2)
bgez $1, TAG716
mthi $2
TAG716:
beq $1, $1, TAG717
multu $1, $1
lb $2, 0($1)
nor $1, $2, $2
TAG717:
mfhi $1
beq $1, $1, TAG718
mfhi $4
addu $4, $4, $1
TAG718:
and $2, $4, $4
ori $3, $4, 2
bne $3, $2, TAG719
sb $2, 0($3)
TAG719:
beq $3, $3, TAG720
addu $3, $3, $3
sb $3, 0($3)
bgtz $3, TAG720
TAG720:
mflo $2
sw $3, 0($3)
mflo $4
lb $2, 0($2)
TAG721:
mtlo $2
ori $4, $2, 4
lui $4, 14
bgez $4, TAG722
TAG722:
lui $2, 14
sll $0, $0, 0
mtlo $4
andi $2, $4, 11
TAG723:
mthi $2
lui $1, 7
mfhi $3
lui $3, 11
TAG724:
sll $0, $0, 0
addu $1, $1, $3
sll $0, $0, 0
beq $1, $1, TAG725
TAG725:
mtlo $1
slt $1, $1, $1
blez $1, TAG726
mflo $1
TAG726:
sll $0, $0, 0
mflo $4
div $4, $4
andi $2, $1, 2
TAG727:
sb $2, 0($2)
blez $2, TAG728
lb $1, 0($2)
sh $2, 0($2)
TAG728:
multu $1, $1
lui $2, 4
mthi $2
mfhi $1
TAG729:
sll $0, $0, 0
mfhi $1
bgtz $3, TAG730
lui $3, 15
TAG730:
mult $3, $3
mthi $3
blez $3, TAG731
sll $0, $0, 0
TAG731:
mtlo $3
srav $3, $3, $3
lui $1, 8
sll $0, $0, 0
TAG732:
lui $3, 4
sll $0, $0, 0
mtlo $3
addiu $1, $3, 11
TAG733:
sll $0, $0, 0
bltz $1, TAG734
lui $4, 5
sll $0, $0, 0
TAG734:
and $2, $4, $4
bne $2, $2, TAG735
mflo $1
div $4, $1
TAG735:
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG736
TAG736:
sll $0, $0, 0
sll $1, $2, 6
bne $1, $2, TAG737
sll $0, $0, 0
TAG737:
srav $4, $1, $1
mfhi $2
sll $0, $0, 0
lui $2, 9
TAG738:
mult $2, $2
bgtz $2, TAG739
mfhi $1
andi $4, $2, 1
TAG739:
mthi $4
sll $0, $0, 0
mult $4, $4
bne $4, $4, TAG740
TAG740:
andi $1, $4, 2
multu $4, $1
lui $3, 8
subu $1, $1, $3
TAG741:
srav $2, $1, $1
nor $4, $1, $2
beq $2, $1, TAG742
mtlo $2
TAG742:
blez $4, TAG743
mtlo $4
or $4, $4, $4
mult $4, $4
TAG743:
addiu $4, $4, 3
sll $0, $0, 0
mthi $2
mult $4, $2
TAG744:
sll $0, $0, 0
lui $1, 15
beq $1, $2, TAG745
srlv $4, $1, $1
TAG745:
sltiu $1, $4, 14
sltiu $2, $4, 1
sw $4, 0($1)
bltz $4, TAG746
TAG746:
sh $2, 0($2)
lw $3, 0($2)
ori $3, $3, 3
bltz $3, TAG747
TAG747:
lui $3, 11
srlv $2, $3, $3
div $3, $2
mfhi $1
TAG748:
beq $1, $1, TAG749
lui $1, 7
andi $1, $1, 11
sh $1, 0($1)
TAG749:
sll $0, $0, 0
xor $4, $1, $1
blez $4, TAG750
lui $2, 4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop