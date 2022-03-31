ori $1, $0, 11
ori $2, $0, 8
ori $3, $0, 8
ori $4, $0, 0
sw $4, 0($0)
sw $1, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $3, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $1, 72($0)
sw $2, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $2, 124($0)
lui $2, 2
sltiu $1, $2, 7
sb $2, 0($1)
srav $2, $2, $2
TAG1:
mfhi $3
sra $4, $2, 12
mtlo $3
sll $0, $0, 0
TAG2:
lui $1, 15
ori $1, $4, 3
mult $1, $4
mflo $3
TAG3:
lui $2, 2
bgez $2, TAG4
srlv $4, $3, $2
andi $3, $4, 6
TAG4:
slt $2, $3, $3
mthi $2
mtlo $2
lui $3, 9
TAG5:
mtlo $3
bne $3, $3, TAG6
lui $3, 14
addiu $3, $3, 10
TAG6:
sll $0, $0, 0
mtlo $3
mtlo $3
lui $2, 13
TAG7:
sll $0, $0, 0
bne $2, $2, TAG8
mflo $2
div $2, $2
TAG8:
bltz $2, TAG9
mfhi $4
mult $2, $4
mtlo $4
TAG9:
bltz $4, TAG10
lui $1, 9
sll $0, $0, 0
lui $3, 10
TAG10:
mfhi $4
beq $3, $3, TAG11
lw $3, 0($4)
and $2, $3, $3
TAG11:
sll $0, $0, 0
mtlo $4
beq $4, $4, TAG12
slt $4, $4, $4
TAG12:
lw $1, 0($4)
blez $4, TAG13
addu $4, $1, $1
bgtz $4, TAG13
TAG13:
nor $3, $4, $4
lb $2, 1($3)
mult $3, $2
beq $2, $4, TAG14
TAG14:
lui $4, 14
subu $3, $2, $4
bltz $2, TAG15
sb $2, 0($2)
TAG15:
mflo $1
lui $2, 14
mthi $1
srav $4, $3, $1
TAG16:
sll $0, $0, 0
addiu $2, $1, 12
mfhi $3
lh $3, 0($3)
TAG17:
slti $1, $3, 3
bne $3, $3, TAG18
mthi $1
xor $1, $3, $1
TAG18:
addu $1, $1, $1
mthi $1
ori $3, $1, 9
bgez $1, TAG19
TAG19:
addiu $3, $3, 8
divu $3, $3
bgtz $3, TAG20
lui $4, 7
TAG20:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG21
srl $4, $4, 10
TAG21:
beq $4, $4, TAG22
divu $4, $4
mtlo $4
beq $4, $4, TAG22
TAG22:
sb $4, -448($4)
lui $1, 8
mfhi $3
mflo $4
TAG23:
bgtz $4, TAG24
lui $1, 11
bltz $4, TAG24
mtlo $1
TAG24:
xori $4, $1, 13
multu $4, $4
sll $0, $0, 0
mtlo $4
TAG25:
bltz $4, TAG26
addu $3, $4, $4
bne $3, $3, TAG26
lui $3, 1
TAG26:
mflo $2
slt $4, $2, $3
and $4, $2, $4
nor $2, $3, $3
TAG27:
sll $0, $0, 0
lbu $3, 0($4)
mfhi $4
lbu $1, -192($3)
TAG28:
sltu $3, $1, $1
mfhi $2
mtlo $1
lhu $3, -192($1)
TAG29:
bgez $3, TAG30
subu $2, $3, $3
sw $3, 0($3)
divu $3, $2
TAG30:
sub $4, $2, $2
lbu $3, 0($2)
bne $4, $3, TAG31
sh $2, 0($2)
TAG31:
nor $4, $3, $3
xori $3, $3, 9
lui $1, 5
bne $1, $1, TAG32
TAG32:
sltiu $3, $1, 11
sll $2, $3, 7
mtlo $3
bne $3, $2, TAG33
TAG33:
srlv $3, $2, $2
sltiu $4, $2, 13
bgez $4, TAG34
lui $1, 11
TAG34:
srl $2, $1, 4
sll $0, $0, 0
lui $1, 3
bne $1, $3, TAG35
TAG35:
sll $0, $0, 0
multu $4, $4
mflo $3
xori $4, $1, 7
TAG36:
lui $1, 4
sll $0, $0, 0
addu $1, $1, $4
sll $0, $0, 0
TAG37:
lui $4, 0
mfhi $1
mult $4, $4
mult $1, $1
TAG38:
lh $1, 0($1)
sb $1, 0($1)
mfhi $4
blez $4, TAG39
TAG39:
lw $1, 0($4)
lui $2, 7
lhu $3, 0($1)
mult $3, $1
TAG40:
mult $3, $3
bltz $3, TAG41
lh $1, 0($3)
sltiu $4, $1, 15
TAG41:
bgtz $4, TAG42
lui $3, 9
ori $4, $4, 14
mult $3, $4
TAG42:
lui $4, 14
xori $2, $4, 10
sll $0, $0, 0
mthi $2
TAG43:
mtlo $2
mfhi $4
lui $1, 8
bltz $1, TAG44
TAG44:
mtlo $1
mtlo $1
sll $0, $0, 0
lui $1, 1
TAG45:
mthi $1
sll $0, $0, 0
lui $1, 10
bne $2, $2, TAG46
TAG46:
mflo $3
addu $3, $1, $3
mtlo $3
srav $3, $3, $1
TAG47:
bne $3, $3, TAG48
xori $1, $3, 1
xori $1, $3, 8
addu $1, $3, $3
TAG48:
lui $2, 2
subu $4, $2, $2
multu $2, $4
mthi $4
TAG49:
sll $3, $4, 1
beq $3, $3, TAG50
sub $2, $3, $3
div $4, $4
TAG50:
lhu $1, 0($2)
mfhi $2
sb $2, 0($2)
lui $2, 6
TAG51:
multu $2, $2
mult $2, $2
div $2, $2
lui $2, 5
TAG52:
addu $1, $2, $2
sltiu $3, $1, 1
bne $3, $3, TAG53
lui $1, 11
TAG53:
sll $0, $0, 0
sll $0, $0, 0
srav $3, $2, $1
xori $2, $2, 3
TAG54:
mult $2, $2
mtlo $2
beq $2, $2, TAG55
mtlo $2
TAG55:
subu $1, $2, $2
divu $2, $2
mtlo $1
sllv $2, $2, $1
TAG56:
sll $0, $0, 0
mult $2, $2
bgtz $4, TAG57
nor $2, $2, $4
TAG57:
sltu $1, $2, $2
mtlo $2
sb $1, 0($1)
sll $0, $0, 0
TAG58:
sw $1, 0($1)
xori $1, $1, 7
mtlo $1
sllv $4, $1, $1
TAG59:
mflo $3
mflo $3
lb $1, 0($3)
multu $4, $1
TAG60:
add $2, $1, $1
sltu $2, $2, $1
mthi $2
mthi $2
TAG61:
sllv $1, $2, $2
ori $3, $1, 14
srav $4, $1, $1
xori $4, $1, 12
TAG62:
div $4, $4
sra $3, $4, 13
bltz $3, TAG63
xori $4, $3, 3
TAG63:
addiu $1, $4, 5
mfhi $2
lui $3, 4
mthi $3
TAG64:
mfhi $2
bgez $3, TAG65
mfhi $3
or $3, $2, $3
TAG65:
mtlo $3
bltz $3, TAG66
divu $3, $3
bltz $3, TAG66
TAG66:
mthi $3
mflo $3
bgez $3, TAG67
mfhi $4
TAG67:
slt $4, $4, $4
blez $4, TAG68
sh $4, 0($4)
sltiu $1, $4, 15
TAG68:
lui $4, 8
mflo $2
sra $2, $4, 6
mflo $2
TAG69:
bgez $2, TAG70
sra $4, $2, 1
mthi $2
lhu $2, 0($4)
TAG70:
bne $2, $2, TAG71
sb $2, 0($2)
nor $3, $2, $2
lui $3, 1
TAG71:
beq $3, $3, TAG72
mthi $3
addi $4, $3, 4
bne $3, $3, TAG72
TAG72:
addu $2, $4, $4
mtlo $4
lui $2, 12
lui $4, 9
TAG73:
sll $0, $0, 0
lui $4, 10
lui $2, 5
mflo $2
TAG74:
multu $2, $2
lh $2, 0($2)
lui $3, 1
lui $3, 14
TAG75:
mthi $3
mtlo $3
mtlo $3
bne $3, $3, TAG76
TAG76:
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $1, 14
TAG77:
sh $3, 0($3)
lui $1, 2
bne $3, $1, TAG78
slt $3, $3, $1
TAG78:
mfhi $3
slt $4, $3, $3
mflo $1
beq $3, $4, TAG79
TAG79:
multu $1, $1
lui $2, 15
or $4, $1, $1
mflo $2
TAG80:
sb $2, 0($2)
mfhi $4
lh $1, -196($4)
subu $2, $4, $4
TAG81:
blez $2, TAG82
sh $2, 0($2)
sw $2, 0($2)
bltz $2, TAG82
TAG82:
mtlo $2
mfhi $3
mthi $3
mflo $4
TAG83:
mthi $4
lui $1, 10
ori $1, $1, 10
beq $1, $4, TAG84
TAG84:
sll $0, $0, 0
beq $1, $1, TAG85
sll $0, $0, 0
sh $1, 0($4)
TAG85:
bgez $4, TAG86
lhu $1, 0($4)
mthi $4
mthi $1
TAG86:
mflo $4
lui $2, 0
beq $4, $1, TAG87
srl $1, $1, 8
TAG87:
sw $1, 0($1)
lhu $2, 0($1)
bltz $2, TAG88
mfhi $2
TAG88:
beq $2, $2, TAG89
lui $1, 7
mthi $1
bgtz $1, TAG89
TAG89:
lui $4, 8
mtlo $1
bgez $4, TAG90
mult $4, $4
TAG90:
bne $4, $4, TAG91
mult $4, $4
mult $4, $4
blez $4, TAG91
TAG91:
sra $2, $4, 6
xori $2, $4, 8
beq $2, $4, TAG92
lui $2, 11
TAG92:
blez $2, TAG93
mult $2, $2
xori $3, $2, 3
bne $2, $2, TAG93
TAG93:
lui $4, 10
mtlo $3
mfhi $2
mtlo $4
TAG94:
mthi $2
sb $2, 0($2)
sb $2, 0($2)
mtlo $2
TAG95:
mfhi $3
lb $1, 0($3)
bgez $1, TAG96
lui $2, 13
TAG96:
addiu $1, $2, 10
lui $4, 10
beq $1, $1, TAG97
srav $3, $1, $1
TAG97:
sll $0, $0, 0
sb $1, -832($3)
mfhi $2
sll $0, $0, 0
TAG98:
srl $2, $1, 6
bgez $2, TAG99
sll $2, $1, 9
lui $2, 14
TAG99:
bne $2, $2, TAG100
sll $0, $0, 0
andi $1, $2, 10
sll $0, $0, 0
TAG100:
beq $1, $1, TAG101
sub $1, $1, $1
mfhi $4
sw $4, 0($1)
TAG101:
lui $2, 3
bltz $2, TAG102
divu $4, $2
bne $4, $4, TAG102
TAG102:
mflo $4
mfhi $4
bne $2, $4, TAG103
subu $2, $4, $4
TAG103:
sb $2, 0($2)
lui $3, 15
sb $2, 0($2)
lui $4, 1
TAG104:
xori $1, $4, 5
bltz $4, TAG105
mthi $1
bgez $1, TAG105
TAG105:
mtlo $1
sll $0, $0, 0
lui $1, 4
beq $2, $2, TAG106
TAG106:
multu $1, $1
lui $1, 7
mtlo $1
bne $1, $1, TAG107
TAG107:
sltu $3, $1, $1
beq $3, $1, TAG108
multu $3, $1
mthi $3
TAG108:
addi $1, $3, 3
srl $3, $1, 1
addiu $1, $3, 13
sltu $1, $3, $1
TAG109:
mflo $3
mflo $2
srav $3, $2, $2
mult $1, $3
TAG110:
beq $3, $3, TAG111
ori $4, $3, 5
lh $3, 0($4)
mthi $3
TAG111:
mflo $4
andi $1, $3, 2
lbu $1, 0($4)
bgez $3, TAG112
TAG112:
add $3, $1, $1
lh $1, 0($1)
sh $1, 0($3)
lh $1, 0($1)
TAG113:
blez $1, TAG114
addiu $2, $1, 7
subu $4, $2, $1
srlv $3, $1, $2
TAG114:
bgtz $3, TAG115
mtlo $3
mflo $3
lui $1, 1
TAG115:
lui $4, 5
mult $4, $1
mtlo $1
mthi $4
TAG116:
sll $0, $0, 0
and $2, $4, $4
mthi $4
mthi $2
TAG117:
mtlo $2
sll $0, $0, 0
sll $3, $2, 10
mflo $1
TAG118:
sll $0, $0, 0
div $1, $1
bgez $1, TAG119
sra $4, $1, 4
TAG119:
sll $0, $0, 0
beq $2, $2, TAG120
mthi $4
bne $2, $2, TAG120
TAG120:
mult $2, $2
beq $2, $2, TAG121
lui $3, 11
bne $3, $3, TAG121
TAG121:
or $2, $3, $3
beq $2, $3, TAG122
mfhi $4
mtlo $2
TAG122:
lb $2, 0($4)
lbu $3, 0($2)
sb $2, 0($4)
sll $1, $2, 14
TAG123:
bltz $1, TAG124
sh $1, 0($1)
mthi $1
lui $2, 1
TAG124:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
bltz $2, TAG125
TAG125:
sll $0, $0, 0
blez $2, TAG126
mthi $2
lui $3, 5
TAG126:
or $1, $3, $3
bgtz $1, TAG127
lui $2, 1
lbu $1, 0($1)
TAG127:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
or $4, $4, $4
TAG128:
beq $4, $4, TAG129
mflo $4
lui $2, 0
lh $1, 0($2)
TAG129:
blez $1, TAG130
mfhi $2
sll $0, $0, 0
mflo $1
TAG130:
beq $1, $1, TAG131
sll $0, $0, 0
mthi $1
sra $1, $1, 1
TAG131:
beq $1, $1, TAG132
mthi $1
mflo $2
sra $1, $2, 9
TAG132:
div $1, $1
blez $1, TAG133
mfhi $2
bgez $1, TAG133
TAG133:
sltiu $1, $2, 8
sllv $1, $1, $2
div $1, $1
multu $1, $1
TAG134:
lb $1, 0($1)
mult $1, $1
sltiu $2, $1, 11
lui $2, 14
TAG135:
addu $4, $2, $2
ori $1, $2, 11
bne $1, $1, TAG136
mtlo $2
TAG136:
sll $0, $0, 0
mthi $4
andi $4, $1, 14
mthi $4
TAG137:
mtlo $4
multu $4, $4
mflo $3
lui $2, 14
TAG138:
nor $2, $2, $2
bgtz $2, TAG139
sll $0, $0, 0
bne $2, $2, TAG139
TAG139:
andi $3, $2, 2
sll $0, $0, 0
sll $2, $3, 0
bne $3, $2, TAG140
TAG140:
mfhi $1
mtlo $2
lui $1, 12
sh $1, 0($2)
TAG141:
and $2, $1, $1
bgez $2, TAG142
lui $3, 2
srav $3, $1, $1
TAG142:
multu $3, $3
lui $3, 9
blez $3, TAG143
multu $3, $3
TAG143:
bne $3, $3, TAG144
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG144:
mflo $1
multu $1, $1
lui $3, 1
beq $1, $1, TAG145
TAG145:
lui $4, 10
mfhi $2
bgez $3, TAG146
slti $1, $2, 14
TAG146:
lui $4, 7
mtlo $1
mflo $2
mfhi $2
TAG147:
lb $4, 0($2)
sra $1, $4, 3
mfhi $2
sw $1, 0($1)
TAG148:
divu $2, $2
subu $3, $2, $2
mult $2, $2
multu $3, $3
TAG149:
beq $3, $3, TAG150
lhu $2, 0($3)
sb $2, 0($2)
lui $1, 15
TAG150:
sra $1, $1, 8
addu $3, $1, $1
bgtz $3, TAG151
lui $3, 15
TAG151:
sll $0, $0, 0
divu $3, $3
addiu $4, $3, 11
bgez $3, TAG152
TAG152:
lui $3, 3
mfhi $1
addu $3, $4, $1
beq $1, $3, TAG153
TAG153:
mthi $3
sll $0, $0, 0
bne $1, $1, TAG154
slt $3, $1, $3
TAG154:
sllv $1, $3, $3
mfhi $4
sltu $3, $4, $4
sb $3, 0($1)
TAG155:
sh $3, 0($3)
bne $3, $3, TAG156
subu $1, $3, $3
mfhi $2
TAG156:
bltz $2, TAG157
andi $1, $2, 13
mflo $1
mtlo $1
TAG157:
bgez $1, TAG158
subu $1, $1, $1
lh $1, 0($1)
lui $1, 0
TAG158:
sra $4, $1, 15
addiu $4, $1, 11
bgez $4, TAG159
lb $3, 0($4)
TAG159:
lw $1, 0($3)
multu $3, $3
bgtz $1, TAG160
lui $2, 3
TAG160:
beq $2, $2, TAG161
mthi $2
subu $1, $2, $2
mflo $2
TAG161:
lui $4, 11
beq $2, $2, TAG162
lui $1, 6
lui $1, 1
TAG162:
multu $1, $1
sltu $1, $1, $1
lhu $4, 0($1)
mthi $1
TAG163:
addu $3, $4, $4
srl $4, $3, 4
mult $4, $3
sw $4, 0($4)
TAG164:
lh $2, 0($4)
mflo $1
lb $4, 0($2)
multu $4, $4
TAG165:
lbu $2, 0($4)
bne $2, $4, TAG166
mfhi $3
andi $1, $3, 8
TAG166:
multu $1, $1
lw $1, 0($1)
lhu $1, 0($1)
slti $2, $1, 13
TAG167:
blez $2, TAG168
mflo $1
bgtz $2, TAG168
subu $3, $2, $1
TAG168:
sb $3, 0($3)
sltiu $4, $3, 3
lbu $2, 0($3)
mfhi $3
TAG169:
sll $1, $3, 12
mfhi $1
sb $3, 0($3)
mflo $4
TAG170:
beq $4, $4, TAG171
multu $4, $4
mflo $2
bgtz $4, TAG171
TAG171:
srl $3, $2, 15
mfhi $4
multu $4, $4
lui $1, 7
TAG172:
sll $0, $0, 0
div $1, $1
subu $3, $1, $1
mflo $3
TAG173:
lb $3, 0($3)
div $3, $3
sll $1, $3, 2
mult $1, $3
TAG174:
sw $1, 0($1)
mtlo $1
addiu $3, $1, 4
mtlo $3
TAG175:
bltz $3, TAG176
sh $3, 0($3)
bgez $3, TAG176
sllv $1, $3, $3
TAG176:
mfhi $4
beq $4, $4, TAG177
xori $2, $1, 13
bne $1, $1, TAG177
TAG177:
mtlo $2
sra $4, $2, 3
bltz $2, TAG178
lui $3, 6
TAG178:
sll $3, $3, 13
sll $0, $0, 0
srl $1, $3, 11
sll $0, $0, 0
TAG179:
sll $0, $0, 0
beq $1, $1, TAG180
mult $1, $1
lui $2, 7
TAG180:
sll $0, $0, 0
mflo $4
beq $4, $2, TAG181
mtlo $2
TAG181:
lui $3, 8
mtlo $4
blez $3, TAG182
addu $4, $3, $3
TAG182:
mtlo $4
bne $4, $4, TAG183
mthi $4
sll $0, $0, 0
TAG183:
addiu $1, $4, 3
div $4, $1
sll $0, $0, 0
sll $0, $0, 0
TAG184:
beq $1, $1, TAG185
slt $2, $1, $1
bltz $2, TAG185
sw $1, 0($1)
TAG185:
mthi $2
lui $4, 0
bne $4, $4, TAG186
lui $4, 8
TAG186:
bgez $4, TAG187
mfhi $1
multu $1, $4
mthi $1
TAG187:
lbu $3, 0($1)
lbu $3, 0($3)
mult $3, $3
mthi $3
TAG188:
sw $3, 0($3)
sltiu $1, $3, 11
mflo $1
beq $3, $1, TAG189
TAG189:
sh $1, 0($1)
slti $4, $1, 9
srl $4, $4, 11
mult $1, $1
TAG190:
mtlo $4
sll $2, $4, 1
sh $2, 0($2)
mult $4, $2
TAG191:
bne $2, $2, TAG192
lui $3, 3
sll $0, $0, 0
lui $2, 6
TAG192:
mtlo $2
multu $2, $2
mthi $2
lui $4, 8
TAG193:
multu $4, $4
bgez $4, TAG194
mthi $4
blez $4, TAG194
TAG194:
mtlo $4
mtlo $4
mult $4, $4
lui $2, 9
TAG195:
ori $2, $2, 10
or $4, $2, $2
bgez $4, TAG196
or $3, $2, $2
TAG196:
sll $0, $0, 0
mfhi $2
bgez $1, TAG197
subu $1, $2, $1
TAG197:
addiu $4, $1, 15
mflo $1
mflo $2
addi $1, $1, 8
TAG198:
bne $1, $1, TAG199
lui $4, 12
lb $3, 0($1)
mthi $1
TAG199:
blez $3, TAG200
mthi $3
div $3, $3
xori $2, $3, 15
TAG200:
sb $2, 0($2)
sb $2, 0($2)
lui $1, 4
srlv $1, $1, $2
TAG201:
mtlo $1
lhu $1, -2048($1)
mthi $1
multu $1, $1
TAG202:
mtlo $1
ori $3, $1, 5
mflo $2
addiu $2, $2, 12
TAG203:
bne $2, $2, TAG204
mfhi $3
sw $3, 0($3)
srl $4, $3, 12
TAG204:
xori $2, $4, 8
bgez $4, TAG205
srlv $3, $4, $2
sh $2, 0($2)
TAG205:
sw $3, 0($3)
bgez $3, TAG206
xori $2, $3, 15
lui $2, 3
TAG206:
bgez $2, TAG207
mtlo $2
mthi $2
add $3, $2, $2
TAG207:
add $1, $3, $3
srav $3, $3, $3
beq $1, $3, TAG208
multu $3, $3
TAG208:
xori $3, $3, 7
addu $4, $3, $3
sb $3, 0($3)
lui $3, 9
TAG209:
sll $0, $0, 0
beq $3, $3, TAG210
sllv $2, $3, $3
mflo $3
TAG210:
mthi $3
bne $3, $3, TAG211
sltu $4, $3, $3
div $3, $3
TAG211:
bgtz $4, TAG212
nor $3, $4, $4
mfhi $3
blez $4, TAG212
TAG212:
sh $3, 0($3)
sh $3, 0($3)
mfhi $4
beq $4, $3, TAG213
TAG213:
sllv $4, $4, $4
lb $1, 0($4)
lui $1, 5
add $4, $4, $1
TAG214:
slt $4, $4, $4
bgez $4, TAG215
sb $4, 0($4)
sb $4, 0($4)
TAG215:
mfhi $3
multu $3, $3
lui $1, 7
or $1, $1, $1
TAG216:
lui $2, 2
sltiu $2, $1, 11
mult $1, $2
sb $2, 0($2)
TAG217:
andi $2, $2, 9
addiu $1, $2, 3
lui $1, 2
blez $2, TAG218
TAG218:
sll $4, $1, 5
sllv $2, $4, $4
sll $0, $0, 0
bgtz $4, TAG219
TAG219:
xori $1, $4, 1
mtlo $4
and $3, $1, $4
mflo $4
TAG220:
beq $4, $4, TAG221
div $4, $4
and $2, $4, $4
mtlo $4
TAG221:
divu $2, $2
and $4, $2, $2
blez $4, TAG222
or $2, $2, $4
TAG222:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $2
mtlo $1
TAG223:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
xor $3, $4, $4
TAG224:
lbu $4, 0($3)
mtlo $4
lui $1, 2
mflo $1
TAG225:
bltz $1, TAG226
lui $2, 9
xori $4, $2, 6
mfhi $2
TAG226:
lui $4, 13
sll $0, $0, 0
lw $4, -4096($2)
xori $2, $2, 2
TAG227:
addu $2, $2, $2
lb $3, -8196($2)
mtlo $2
bgtz $2, TAG228
TAG228:
mfhi $4
mflo $4
beq $4, $3, TAG229
lhu $1, -8196($4)
TAG229:
mflo $4
ori $3, $4, 11
mthi $1
mthi $4
TAG230:
sltiu $4, $3, 4
beq $4, $4, TAG231
subu $4, $4, $4
bne $4, $4, TAG231
TAG231:
mult $4, $4
lh $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
TAG232:
slti $2, $4, 5
bgtz $2, TAG233
mult $4, $4
sll $3, $4, 1
TAG233:
sll $0, $0, 0
sw $3, -8207($3)
mthi $3
lbu $4, 0($2)
TAG234:
bltz $4, TAG235
mtlo $4
lui $4, 1
lui $3, 10
TAG235:
lui $2, 0
divu $2, $3
sll $0, $0, 0
mthi $2
TAG236:
mflo $3
sb $2, 0($3)
lh $2, 0($2)
div $2, $2
TAG237:
lui $4, 5
srav $2, $2, $2
bne $2, $4, TAG238
sltu $3, $4, $2
TAG238:
lbu $1, 0($3)
lhu $3, 0($1)
mthi $3
bne $3, $1, TAG239
TAG239:
div $3, $3
beq $3, $3, TAG240
mtlo $3
bgez $3, TAG240
TAG240:
xor $4, $3, $3
ori $3, $4, 6
sb $4, 0($3)
lb $1, 0($3)
TAG241:
blez $1, TAG242
xor $2, $1, $1
sh $2, 0($1)
lbu $2, 0($2)
TAG242:
sb $2, 0($2)
mfhi $1
lw $3, 0($2)
lui $3, 2
TAG243:
multu $3, $3
beq $3, $3, TAG244
ori $4, $3, 5
lui $2, 7
TAG244:
mflo $1
lui $4, 14
subu $1, $1, $4
lui $4, 8
TAG245:
sll $4, $4, 3
sll $0, $0, 0
blez $4, TAG246
div $4, $4
TAG246:
lui $2, 7
sll $0, $0, 0
bgtz $2, TAG247
sll $0, $0, 0
TAG247:
sll $0, $0, 0
lui $1, 8
bltz $1, TAG248
mfhi $2
TAG248:
mflo $2
sb $2, 0($2)
slt $4, $2, $2
sllv $3, $2, $2
TAG249:
bne $3, $3, TAG250
sh $3, 0($3)
lh $1, 0($3)
mtlo $1
TAG250:
bne $1, $1, TAG251
mfhi $2
mult $2, $2
lh $4, 0($1)
TAG251:
beq $4, $4, TAG252
div $4, $4
mult $4, $4
lui $3, 7
TAG252:
multu $3, $3
lh $3, 0($3)
sb $3, 0($3)
sh $3, 0($3)
TAG253:
bne $3, $3, TAG254
lh $4, 0($3)
addu $3, $4, $3
lui $1, 15
TAG254:
sll $0, $0, 0
beq $1, $1, TAG255
sll $3, $1, 10
mfhi $2
TAG255:
xor $1, $2, $2
xor $4, $1, $2
nor $2, $2, $4
mult $4, $4
TAG256:
mtlo $2
div $2, $2
mfhi $3
mtlo $3
TAG257:
srl $2, $3, 14
bne $3, $3, TAG258
lhu $1, 0($3)
mult $1, $3
TAG258:
addiu $3, $1, 6
divu $3, $3
sltu $2, $3, $1
addu $2, $2, $1
TAG259:
mult $2, $2
divu $2, $2
and $4, $2, $2
mthi $4
TAG260:
bgez $4, TAG261
sh $4, -256($4)
lw $3, 0($4)
bltz $3, TAG261
TAG261:
sra $4, $3, 1
sb $3, -131($4)
subu $4, $4, $4
bne $4, $3, TAG262
TAG262:
mfhi $2
lui $1, 12
sb $4, 0($4)
lui $3, 11
TAG263:
sra $3, $3, 0
mthi $3
bltz $3, TAG264
lui $3, 4
TAG264:
mfhi $1
divu $3, $1
sll $4, $3, 11
multu $1, $1
TAG265:
beq $4, $4, TAG266
mflo $1
sltiu $4, $4, 12
add $4, $4, $1
TAG266:
mfhi $3
lui $1, 13
xor $2, $1, $4
beq $4, $4, TAG267
TAG267:
sll $0, $0, 0
blez $2, TAG268
and $1, $2, $2
bltz $1, TAG268
TAG268:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG269
srav $4, $1, $1
TAG269:
addu $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG270
TAG270:
srl $1, $2, 10
sll $0, $0, 0
bgtz $1, TAG271
div $2, $1
TAG271:
xor $3, $4, $4
multu $3, $3
lui $2, 13
bne $3, $3, TAG272
TAG272:
lui $4, 14
mfhi $3
multu $4, $2
bltz $4, TAG273
TAG273:
mtlo $3
mfhi $2
mfhi $1
lw $3, 0($3)
TAG274:
mult $3, $3
mtlo $3
slt $2, $3, $3
bgez $2, TAG275
TAG275:
multu $2, $2
mtlo $2
sw $2, 0($2)
and $4, $2, $2
TAG276:
multu $4, $4
bltz $4, TAG277
lui $4, 1
sll $0, $0, 0
TAG277:
lui $4, 7
lui $3, 5
sll $0, $0, 0
sh $3, -182($1)
TAG278:
sll $0, $0, 0
lbu $3, 0($2)
mfhi $1
bgez $1, TAG279
TAG279:
sh $1, 0($1)
sll $3, $1, 1
addiu $3, $1, 4
mflo $1
TAG280:
mthi $1
bltz $1, TAG281
mthi $1
mthi $1
TAG281:
bne $1, $1, TAG282
lh $2, 0($1)
mthi $2
sb $2, 0($2)
TAG282:
bne $2, $2, TAG283
mflo $4
mtlo $2
lui $4, 11
TAG283:
beq $4, $4, TAG284
sltiu $3, $4, 6
lui $1, 2
sb $3, 0($1)
TAG284:
bgtz $1, TAG285
lw $2, 0($1)
sw $1, 0($2)
lui $3, 12
TAG285:
subu $2, $3, $3
nor $3, $3, $2
bltz $2, TAG286
mtlo $3
TAG286:
mtlo $3
mult $3, $3
divu $3, $3
multu $3, $3
TAG287:
bgtz $3, TAG288
lui $4, 11
or $2, $3, $4
mult $2, $2
TAG288:
bne $2, $2, TAG289
slti $2, $2, 9
bgtz $2, TAG289
div $2, $2
TAG289:
mtlo $2
lui $1, 15
sll $1, $2, 9
nor $1, $1, $1
TAG290:
blez $1, TAG291
lw $1, 513($1)
multu $1, $1
mfhi $1
TAG291:
sltu $3, $1, $1
bgez $3, TAG292
lb $3, 0($3)
bgtz $1, TAG292
TAG292:
lh $1, 0($3)
mtlo $3
mfhi $2
mtlo $1
TAG293:
beq $2, $2, TAG294
mthi $2
lui $4, 14
mflo $4
TAG294:
slti $4, $4, 1
lw $1, 0($4)
andi $2, $1, 10
sub $2, $4, $2
TAG295:
sb $2, 0($2)
mfhi $2
sltiu $1, $2, 4
sh $2, 0($2)
TAG296:
lui $2, 9
bgez $1, TAG297
mflo $2
lh $2, 0($2)
TAG297:
lw $4, 0($2)
mthi $2
beq $2, $4, TAG298
mflo $1
TAG298:
mult $1, $1
sb $1, 0($1)
beq $1, $1, TAG299
lbu $2, 0($1)
TAG299:
bgez $2, TAG300
lb $2, 0($2)
bne $2, $2, TAG300
mtlo $2
TAG300:
lhu $3, 0($2)
bne $2, $3, TAG301
multu $2, $3
mthi $3
TAG301:
bne $3, $3, TAG302
mflo $2
lb $4, 0($3)
lui $1, 13
TAG302:
mflo $1
sltu $1, $1, $1
slt $1, $1, $1
mflo $4
TAG303:
bne $4, $4, TAG304
lhu $2, 0($4)
beq $2, $2, TAG304
sw $4, 0($2)
TAG304:
sltiu $2, $2, 5
bne $2, $2, TAG305
addiu $4, $2, 9
lbu $1, 0($2)
TAG305:
mfhi $2
lui $4, 0
and $2, $2, $1
mthi $2
TAG306:
beq $2, $2, TAG307
lui $1, 9
sw $2, 0($1)
andi $1, $2, 7
TAG307:
sll $0, $0, 0
mfhi $1
mtlo $4
and $4, $4, $1
TAG308:
mflo $3
lui $4, 6
sll $0, $0, 0
lhu $3, 0($3)
TAG309:
mtlo $3
multu $3, $3
addu $4, $3, $3
mult $3, $4
TAG310:
sw $4, 0($4)
sh $4, 0($4)
bgtz $4, TAG311
lb $4, 0($4)
TAG311:
multu $4, $4
mthi $4
mthi $4
mthi $4
TAG312:
addu $4, $4, $4
ori $1, $4, 12
bne $4, $4, TAG313
sw $4, 0($4)
TAG313:
mfhi $1
mthi $1
beq $1, $1, TAG314
lui $1, 5
TAG314:
mult $1, $1
beq $1, $1, TAG315
mult $1, $1
mflo $3
TAG315:
blez $3, TAG316
addu $2, $3, $3
lui $1, 8
sll $4, $2, 8
TAG316:
lui $1, 1
sh $1, 0($4)
sll $0, $0, 0
sll $0, $0, 0
TAG317:
div $1, $1
mtlo $1
bgtz $1, TAG318
or $1, $1, $1
TAG318:
multu $1, $1
sll $0, $0, 0
bltz $3, TAG319
mult $1, $3
TAG319:
lui $2, 0
sw $2, 0($2)
lui $1, 11
lhu $3, 0($2)
TAG320:
andi $3, $3, 15
multu $3, $3
mfhi $2
mult $3, $2
TAG321:
srlv $1, $2, $2
bltz $2, TAG322
mult $2, $1
mflo $1
TAG322:
slti $4, $1, 3
lui $1, 2
mfhi $3
srlv $3, $1, $3
TAG323:
lui $2, 13
blez $2, TAG324
sll $0, $0, 0
lui $3, 15
TAG324:
xor $1, $3, $3
and $4, $1, $1
mtlo $1
mflo $4
TAG325:
mult $4, $4
mfhi $3
xor $3, $4, $4
mflo $1
TAG326:
lw $2, 0($1)
lui $2, 7
slt $1, $1, $2
lui $4, 0
TAG327:
blez $4, TAG328
mult $4, $4
divu $4, $4
lb $2, 0($4)
TAG328:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG329:
mtlo $4
nor $3, $4, $4
mtlo $4
sb $4, 1($3)
TAG330:
sra $1, $3, 9
sh $1, 1($3)
sllv $2, $3, $3
bgtz $3, TAG331
TAG331:
addu $2, $2, $2
srlv $3, $2, $2
addi $1, $3, 3
beq $1, $2, TAG332
TAG332:
xor $1, $1, $1
lh $2, 0($1)
bne $1, $2, TAG333
lui $1, 0
TAG333:
sb $1, 0($1)
lui $1, 9
lui $4, 15
lui $2, 9
TAG334:
sll $0, $0, 0
sra $1, $3, 2
mfhi $3
mult $2, $1
TAG335:
srl $4, $3, 15
addu $2, $4, $3
nor $2, $3, $2
mfhi $3
TAG336:
lbu $3, 0($3)
mtlo $3
beq $3, $3, TAG337
sllv $2, $3, $3
TAG337:
lui $1, 5
mtlo $1
lui $2, 1
sll $0, $0, 0
TAG338:
lw $2, 0($3)
mflo $1
lui $3, 1
mult $3, $3
TAG339:
slti $2, $3, 15
sll $0, $0, 0
sll $0, $0, 0
lh $3, 0($2)
TAG340:
beq $3, $3, TAG341
mthi $3
mtlo $3
sltu $4, $3, $3
TAG341:
or $2, $4, $4
mfhi $3
beq $3, $3, TAG342
mthi $4
TAG342:
bgtz $3, TAG343
lw $1, 256($3)
sltiu $1, $1, 0
multu $3, $3
TAG343:
sllv $3, $1, $1
addiu $1, $3, 1
lui $1, 10
mult $1, $1
TAG344:
mult $1, $1
bne $1, $1, TAG345
mflo $2
sh $1, 0($2)
TAG345:
mflo $3
mtlo $3
bgez $2, TAG346
or $4, $3, $2
TAG346:
sw $4, 0($4)
bgez $4, TAG347
lh $2, 0($4)
addu $3, $4, $4
TAG347:
sb $3, 0($3)
mtlo $3
mfhi $2
sb $3, 0($3)
TAG348:
sh $2, 0($2)
bne $2, $2, TAG349
mthi $2
mfhi $2
TAG349:
lui $3, 5
bltz $2, TAG350
andi $4, $3, 13
sra $3, $4, 5
TAG350:
sw $3, 0($3)
subu $3, $3, $3
multu $3, $3
mthi $3
TAG351:
multu $3, $3
mthi $3
mult $3, $3
sw $3, 0($3)
TAG352:
sb $3, 0($3)
mtlo $3
sh $3, 0($3)
lui $2, 7
TAG353:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
subu $1, $2, $2
TAG354:
mthi $1
addi $2, $1, 6
lui $2, 10
addi $1, $1, 7
TAG355:
addiu $2, $1, 12
lb $2, 0($1)
divu $2, $1
lui $1, 2
TAG356:
bgez $1, TAG357
addiu $4, $1, 3
sll $4, $1, 14
bgtz $1, TAG357
TAG357:
sra $4, $4, 7
ori $1, $4, 13
mfhi $4
subu $1, $4, $1
TAG358:
beq $1, $1, TAG359
mfhi $4
mthi $4
bne $1, $4, TAG359
TAG359:
mfhi $3
mult $4, $3
lh $4, 0($4)
mtlo $4
TAG360:
slt $1, $4, $4
bgtz $4, TAG361
addi $3, $1, 8
mult $1, $1
TAG361:
divu $3, $3
mfhi $3
multu $3, $3
lui $1, 0
TAG362:
mult $1, $1
mult $1, $1
subu $1, $1, $1
mfhi $4
TAG363:
bgez $4, TAG364
lui $3, 5
lui $3, 0
mtlo $3
TAG364:
mfhi $1
sll $0, $0, 0
lui $1, 9
sll $0, $0, 0
TAG365:
sltiu $3, $1, 10
lui $1, 5
mflo $3
blez $1, TAG366
TAG366:
mflo $1
mflo $4
lui $3, 14
blez $3, TAG367
TAG367:
sll $1, $3, 6
mtlo $3
subu $2, $1, $3
mthi $3
TAG368:
subu $3, $2, $2
lui $1, 7
lui $1, 14
mfhi $3
TAG369:
sll $0, $0, 0
or $1, $3, $3
srl $1, $1, 14
mfhi $4
TAG370:
mfhi $2
mfhi $3
mfhi $4
bgez $3, TAG371
TAG371:
sll $0, $0, 0
mtlo $4
bgtz $3, TAG372
mflo $1
TAG372:
sll $0, $0, 0
sll $0, $0, 0
xor $1, $4, $4
sll $0, $0, 0
TAG373:
sltiu $3, $1, 7
mult $3, $3
mthi $1
mthi $3
TAG374:
mflo $2
mtlo $2
srl $4, $2, 8
lbu $1, 0($4)
TAG375:
lui $2, 13
bne $2, $1, TAG376
lbu $4, 0($1)
mflo $1
TAG376:
sll $4, $1, 4
lb $4, 0($1)
ori $3, $4, 0
lbu $3, 0($4)
TAG377:
beq $3, $3, TAG378
addi $3, $3, 5
bgtz $3, TAG378
mult $3, $3
TAG378:
lb $1, 0($3)
sltu $1, $1, $3
mtlo $3
lui $1, 8
TAG379:
beq $1, $1, TAG380
sll $0, $0, 0
mfhi $2
lhu $3, 0($2)
TAG380:
mult $3, $3
sb $3, 0($3)
beq $3, $3, TAG381
mfhi $1
TAG381:
bne $1, $1, TAG382
mflo $2
lbu $3, 0($2)
lw $1, 0($3)
TAG382:
srav $1, $1, $1
multu $1, $1
addiu $1, $1, 1
mthi $1
TAG383:
lbu $4, 0($1)
mtlo $1
lui $2, 7
sltiu $2, $1, 4
TAG384:
multu $2, $2
mflo $2
bne $2, $2, TAG385
divu $2, $2
TAG385:
bgez $2, TAG386
multu $2, $2
lui $3, 11
addu $4, $3, $3
TAG386:
lui $2, 12
mfhi $2
mtlo $4
mflo $4
TAG387:
sb $4, 0($4)
multu $4, $4
addiu $4, $4, 14
divu $4, $4
TAG388:
lh $4, 0($4)
sh $4, 0($4)
mflo $1
lb $2, 0($1)
TAG389:
addi $3, $2, 1
srlv $4, $2, $3
multu $4, $2
mtlo $4
TAG390:
mfhi $3
sub $4, $4, $4
blez $4, TAG391
sw $4, 0($4)
TAG391:
xor $4, $4, $4
mflo $2
and $1, $4, $4
bltz $2, TAG392
TAG392:
lui $2, 10
div $2, $2
lui $3, 12
bgez $1, TAG393
TAG393:
div $3, $3
sll $0, $0, 0
lui $2, 10
divu $3, $3
TAG394:
bgtz $2, TAG395
sll $0, $0, 0
sltiu $3, $2, 9
lui $3, 0
TAG395:
mfhi $1
xor $4, $1, $3
sltiu $4, $1, 2
and $2, $4, $3
TAG396:
bgtz $2, TAG397
lbu $1, 0($2)
bgtz $2, TAG397
mfhi $1
TAG397:
bne $1, $1, TAG398
srav $1, $1, $1
beq $1, $1, TAG398
lhu $4, 0($1)
TAG398:
lb $4, 0($4)
lbu $3, 0($4)
mthi $4
andi $4, $4, 12
TAG399:
bgtz $4, TAG400
lbu $1, 0($4)
lui $3, 15
addu $4, $1, $3
TAG400:
mflo $1
div $4, $1
mthi $1
mflo $4
TAG401:
sll $4, $4, 4
blez $4, TAG402
mthi $4
sll $0, $0, 0
TAG402:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
mthi $4
TAG403:
mtlo $4
bne $4, $4, TAG404
lui $1, 1
bne $1, $4, TAG404
TAG404:
mthi $1
slt $3, $1, $1
lui $3, 10
lui $1, 14
TAG405:
beq $1, $1, TAG406
andi $3, $1, 14
lh $4, 0($3)
lbu $3, 0($4)
TAG406:
sltiu $1, $3, 1
sb $1, 0($1)
bne $3, $1, TAG407
sh $3, 0($3)
TAG407:
slt $3, $1, $1
mfhi $4
addiu $1, $3, 7
bgez $3, TAG408
TAG408:
mthi $1
mtlo $1
beq $1, $1, TAG409
divu $1, $1
TAG409:
slt $4, $1, $1
mflo $4
multu $1, $1
multu $4, $4
TAG410:
sb $4, 0($4)
multu $4, $4
blez $4, TAG411
sb $4, 0($4)
TAG411:
divu $4, $4
blez $4, TAG412
lui $3, 15
xori $3, $4, 3
TAG412:
lui $4, 10
mtlo $3
beq $3, $4, TAG413
sll $0, $0, 0
TAG413:
sll $1, $1, 11
beq $1, $1, TAG414
lui $2, 8
blez $2, TAG414
TAG414:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 14
slt $4, $1, $2
TAG415:
mfhi $2
slti $3, $2, 11
lui $4, 10
sllv $2, $2, $4
TAG416:
mult $2, $2
bgtz $2, TAG417
sltiu $3, $2, 3
blez $3, TAG417
TAG417:
lui $1, 2
div $3, $3
or $3, $3, $3
srav $2, $3, $3
TAG418:
mult $2, $2
mflo $4
lui $1, 7
lb $1, 0($2)
TAG419:
slt $4, $1, $1
slti $1, $1, 13
multu $1, $1
mthi $1
TAG420:
andi $1, $1, 14
lui $2, 5
mtlo $1
addiu $1, $2, 14
TAG421:
bgez $1, TAG422
sll $0, $0, 0
mtlo $1
lw $2, 0($1)
TAG422:
bgez $2, TAG423
mflo $4
div $4, $2
sw $2, 0($4)
TAG423:
mtlo $4
bgtz $4, TAG424
sw $4, 0($4)
bne $4, $4, TAG424
TAG424:
mflo $1
lb $2, 0($4)
lui $1, 11
lui $1, 2
TAG425:
mfhi $2
mtlo $2
beq $1, $1, TAG426
lbu $1, 0($2)
TAG426:
nor $3, $1, $1
mfhi $1
bne $3, $3, TAG427
nor $1, $1, $1
TAG427:
sll $0, $0, 0
lui $1, 14
sll $0, $0, 0
addu $2, $1, $1
TAG428:
nor $3, $2, $2
sll $0, $0, 0
srl $3, $3, 5
bne $2, $3, TAG429
TAG429:
sll $0, $0, 0
bne $3, $3, TAG430
lui $2, 12
mfhi $2
TAG430:
lui $1, 7
lbu $1, 0($2)
mtlo $2
sra $1, $1, 6
TAG431:
lui $1, 6
lui $3, 2
srl $2, $1, 13
lbu $2, 0($2)
TAG432:
lw $3, 0($2)
lh $2, 0($2)
bltz $3, TAG433
multu $2, $3
TAG433:
divu $2, $2
srl $1, $2, 5
ori $2, $2, 13
lui $3, 0
TAG434:
andi $4, $3, 14
mtlo $3
bne $3, $3, TAG435
lb $2, 0($4)
TAG435:
ori $2, $2, 15
bne $2, $2, TAG436
mthi $2
srlv $3, $2, $2
TAG436:
lb $4, 0($3)
multu $3, $3
beq $3, $4, TAG437
multu $4, $4
TAG437:
sw $4, 0($4)
sltu $2, $4, $4
lui $2, 13
bgtz $2, TAG438
TAG438:
lui $1, 13
div $1, $1
mfhi $3
mtlo $3
TAG439:
beq $3, $3, TAG440
mfhi $1
lui $1, 12
mtlo $1
TAG440:
lb $4, 0($1)
beq $4, $1, TAG441
mtlo $4
sw $1, 0($4)
TAG441:
sh $4, 0($4)
lui $1, 12
lui $2, 12
div $1, $2
TAG442:
andi $1, $2, 6
mthi $1
sh $2, 0($1)
bgez $1, TAG443
TAG443:
sltu $1, $1, $1
addu $3, $1, $1
mfhi $2
lbu $3, 0($1)
TAG444:
bne $3, $3, TAG445
mfhi $3
bne $3, $3, TAG445
mthi $3
TAG445:
bgtz $3, TAG446
lbu $2, 0($3)
srav $4, $2, $2
multu $4, $3
TAG446:
multu $4, $4
lui $4, 1
xori $3, $4, 7
srav $2, $4, $3
TAG447:
addiu $4, $2, 6
sb $4, -518($4)
bltz $4, TAG448
sb $4, -518($4)
TAG448:
sll $0, $0, 0
sb $2, -512($2)
sltu $4, $4, $2
sw $4, -512($2)
TAG449:
lui $4, 4
beq $4, $4, TAG450
sll $0, $0, 0
sllv $3, $4, $4
TAG450:
srav $1, $3, $3
bne $1, $1, TAG451
lui $2, 4
mthi $1
TAG451:
andi $3, $2, 3
sll $0, $0, 0
beq $3, $3, TAG452
mtlo $2
TAG452:
mflo $1
sll $0, $0, 0
beq $1, $3, TAG453
xori $4, $3, 7
TAG453:
beq $4, $4, TAG454
srlv $1, $4, $4
lui $4, 6
beq $4, $1, TAG454
TAG454:
lb $4, 0($4)
lui $4, 2
sll $3, $4, 5
blez $3, TAG455
TAG455:
sll $0, $0, 0
beq $3, $3, TAG456
ori $2, $3, 9
bne $2, $3, TAG456
TAG456:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
TAG457:
sll $0, $0, 0
lui $3, 8
sll $0, $0, 0
sb $2, 0($1)
TAG458:
lb $3, 0($1)
and $4, $3, $1
and $1, $4, $4
blez $4, TAG459
TAG459:
mthi $1
bne $1, $1, TAG460
lb $4, 0($1)
addu $3, $4, $1
TAG460:
sb $3, 0($3)
lui $1, 13
mfhi $3
bne $3, $1, TAG461
TAG461:
lhu $1, 0($3)
mtlo $1
sra $1, $1, 1
mult $3, $3
TAG462:
sb $1, 0($1)
bltz $1, TAG463
multu $1, $1
bne $1, $1, TAG463
TAG463:
lui $4, 2
mtlo $4
mfhi $3
mthi $3
TAG464:
mthi $3
lui $1, 7
mtlo $1
mthi $3
TAG465:
bne $1, $1, TAG466
sll $0, $0, 0
bgtz $1, TAG466
mtlo $1
TAG466:
beq $4, $4, TAG467
srl $2, $4, 3
lui $4, 6
add $2, $4, $4
TAG467:
sb $2, -16384($2)
beq $2, $2, TAG468
sw $2, -16384($2)
lui $4, 12
TAG468:
mfhi $2
mthi $2
mtlo $2
div $4, $4
TAG469:
subu $3, $2, $2
sllv $1, $2, $2
lb $4, 0($2)
lui $2, 14
TAG470:
sll $0, $0, 0
mflo $3
bne $1, $1, TAG471
sub $1, $1, $1
TAG471:
lui $1, 1
mtlo $1
lui $4, 0
beq $4, $1, TAG472
TAG472:
multu $4, $4
bgez $4, TAG473
sh $4, 0($4)
lui $2, 7
TAG473:
divu $2, $2
bltz $2, TAG474
subu $2, $2, $2
bltz $2, TAG474
TAG474:
sra $3, $2, 8
mtlo $2
bgez $3, TAG475
sw $2, 0($3)
TAG475:
mthi $3
srl $1, $3, 5
multu $1, $1
lui $4, 3
TAG476:
mfhi $4
beq $4, $4, TAG477
lui $2, 7
divu $4, $4
TAG477:
mthi $2
ori $2, $2, 4
slt $1, $2, $2
mult $2, $2
TAG478:
mfhi $4
lui $3, 6
mfhi $2
multu $3, $2
TAG479:
addiu $4, $2, 14
mfhi $2
multu $4, $2
and $3, $2, $2
TAG480:
add $4, $3, $3
mult $3, $4
srl $3, $4, 10
lhu $2, 0($4)
TAG481:
mult $2, $2
lw $1, 0($2)
lh $4, 0($1)
multu $4, $1
TAG482:
lb $2, 0($4)
bltz $2, TAG483
sw $4, 0($4)
bne $2, $2, TAG483
TAG483:
sh $2, 0($2)
bne $2, $2, TAG484
multu $2, $2
mthi $2
TAG484:
mfhi $2
mult $2, $2
lb $3, 0($2)
lh $4, 0($2)
TAG485:
mfhi $3
lb $3, 0($4)
mfhi $1
mflo $3
TAG486:
mult $3, $3
mfhi $4
sh $3, 0($3)
mult $3, $3
TAG487:
lui $2, 13
mthi $4
sll $0, $0, 0
lui $2, 0
TAG488:
lh $2, 0($2)
ori $1, $2, 9
xor $1, $1, $1
lui $4, 10
TAG489:
mthi $4
mfhi $1
bgtz $4, TAG490
lui $4, 0
TAG490:
sw $4, 0($4)
sb $4, 0($4)
mthi $4
bltz $4, TAG491
TAG491:
multu $4, $4
srlv $4, $4, $4
lb $1, 0($4)
sh $4, 0($4)
TAG492:
mthi $1
addiu $4, $1, 9
lui $2, 6
mflo $3
TAG493:
bltz $3, TAG494
lui $1, 0
addiu $2, $1, 11
addu $3, $2, $1
TAG494:
bltz $3, TAG495
mtlo $3
multu $3, $3
sb $3, 0($3)
TAG495:
andi $2, $3, 15
bgez $3, TAG496
ori $4, $2, 1
xor $3, $2, $3
TAG496:
bltz $3, TAG497
lui $1, 3
sll $0, $0, 0
sll $0, $0, 0
TAG497:
mult $3, $3
subu $2, $3, $3
sb $3, 0($3)
srl $3, $3, 4
TAG498:
mtlo $3
multu $3, $3
beq $3, $3, TAG499
lui $2, 3
TAG499:
slti $4, $2, 7
bltz $2, TAG500
mthi $4
mtlo $4
TAG500:
lhu $1, 0($4)
bne $1, $1, TAG501
add $1, $1, $1
mflo $2
TAG501:
lui $1, 12
beq $1, $2, TAG502
sll $0, $0, 0
mflo $3
TAG502:
lui $3, 9
mthi $3
bgtz $3, TAG503
divu $3, $3
TAG503:
sltiu $2, $3, 10
sb $3, 0($2)
sll $0, $0, 0
lui $1, 5
TAG504:
mtlo $1
subu $4, $1, $1
mflo $4
blez $4, TAG505
TAG505:
divu $4, $4
mflo $1
bne $1, $1, TAG506
lui $4, 3
TAG506:
lui $3, 15
mfhi $4
multu $4, $4
or $4, $4, $3
TAG507:
mflo $2
multu $2, $4
multu $2, $2
sll $0, $0, 0
TAG508:
lui $3, 0
multu $3, $2
mthi $3
mtlo $3
TAG509:
lbu $3, 0($3)
mfhi $1
slti $2, $1, 1
beq $3, $3, TAG510
TAG510:
lui $4, 7
sltu $2, $2, $2
bgtz $2, TAG511
addu $2, $2, $2
TAG511:
mfhi $2
lui $2, 8
subu $4, $2, $2
bltz $2, TAG512
TAG512:
mthi $4
lb $3, 0($4)
mthi $4
sb $4, 0($4)
TAG513:
mthi $3
bgtz $3, TAG514
slti $2, $3, 0
srl $4, $3, 1
TAG514:
subu $2, $4, $4
lh $4, 0($4)
xori $1, $4, 13
srl $1, $2, 9
TAG515:
multu $1, $1
sb $1, 0($1)
bne $1, $1, TAG516
sb $1, 0($1)
TAG516:
lui $3, 1
mfhi $4
beq $3, $1, TAG517
addu $1, $3, $4
TAG517:
lui $1, 1
xori $3, $1, 9
mfhi $3
lui $3, 3
TAG518:
mthi $3
sll $0, $0, 0
mtlo $3
and $4, $3, $3
TAG519:
lui $1, 14
sltiu $4, $1, 13
or $4, $1, $4
lui $4, 7
TAG520:
mfhi $2
multu $2, $4
mthi $2
mflo $2
TAG521:
lb $1, 0($2)
lh $1, 0($2)
lui $2, 10
sll $0, $0, 0
TAG522:
sll $0, $0, 0
and $2, $4, $4
mtlo $4
mtlo $2
TAG523:
beq $2, $2, TAG524
sltu $1, $2, $2
sll $1, $1, 4
mflo $1
TAG524:
bne $1, $1, TAG525
mflo $3
addiu $1, $1, 7
mfhi $1
TAG525:
div $1, $1
bgtz $1, TAG526
sll $0, $0, 0
sw $1, 0($2)
TAG526:
mthi $2
multu $2, $2
lui $1, 15
lui $3, 6
TAG527:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
bne $3, $3, TAG528
TAG528:
srav $4, $3, $3
bne $4, $4, TAG529
srl $1, $3, 4
slti $2, $4, 4
TAG529:
lui $1, 13
bne $1, $1, TAG530
srlv $2, $2, $2
lh $4, 0($2)
TAG530:
mtlo $4
sh $4, 0($4)
bltz $4, TAG531
srlv $1, $4, $4
TAG531:
lui $2, 11
blez $1, TAG532
lui $3, 10
lui $1, 7
TAG532:
sra $4, $1, 15
addiu $1, $4, 10
subu $1, $1, $1
lw $2, 0($1)
TAG533:
srlv $3, $2, $2
lui $1, 4
mthi $2
blez $3, TAG534
TAG534:
mult $1, $1
mtlo $1
mtlo $1
mtlo $1
TAG535:
lui $1, 4
mflo $4
divu $1, $1
bltz $1, TAG536
TAG536:
nor $2, $4, $4
beq $2, $2, TAG537
or $1, $4, $4
bne $2, $1, TAG537
TAG537:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG538
TAG538:
mfhi $1
mult $2, $2
blez $2, TAG539
lbu $1, 0($1)
TAG539:
mult $1, $1
srlv $3, $1, $1
xori $4, $3, 14
blez $4, TAG540
TAG540:
lui $1, 4
sll $0, $0, 0
beq $1, $1, TAG541
subu $3, $4, $4
TAG541:
beq $3, $3, TAG542
lhu $4, 0($3)
beq $3, $4, TAG542
lb $4, 0($3)
TAG542:
mfhi $4
sub $4, $4, $4
lh $3, 0($4)
mthi $4
TAG543:
sub $2, $3, $3
sltiu $3, $2, 7
sh $3, 0($2)
bne $3, $2, TAG544
TAG544:
lui $1, 1
bgez $3, TAG545
mflo $3
beq $3, $1, TAG545
TAG545:
lhu $2, 0($3)
addu $3, $3, $3
lb $2, 0($2)
sb $3, 0($3)
TAG546:
bgez $2, TAG547
lui $2, 13
divu $2, $2
srlv $3, $2, $2
TAG547:
mtlo $3
sw $3, 0($3)
beq $3, $3, TAG548
sw $3, 0($3)
TAG548:
bne $3, $3, TAG549
sb $3, 0($3)
sub $2, $3, $3
mtlo $2
TAG549:
subu $1, $2, $2
mthi $1
sub $3, $2, $1
mult $2, $3
TAG550:
lh $2, 0($3)
sb $3, 0($2)
srlv $4, $3, $3
mthi $3
TAG551:
sh $4, 0($4)
bgez $4, TAG552
sw $4, 0($4)
srav $1, $4, $4
TAG552:
mflo $3
add $4, $3, $3
sh $4, 0($1)
mtlo $4
TAG553:
mthi $4
lb $3, 0($4)
and $2, $3, $3
bne $2, $3, TAG554
TAG554:
sllv $3, $2, $2
xor $2, $3, $2
lw $2, 0($2)
sw $2, 0($2)
TAG555:
bne $2, $2, TAG556
lui $2, 11
div $2, $2
beq $2, $2, TAG556
TAG556:
mthi $2
multu $2, $2
bne $2, $2, TAG557
addu $1, $2, $2
TAG557:
nor $2, $1, $1
mthi $1
mtlo $2
multu $2, $2
TAG558:
lui $1, 10
bltz $1, TAG559
subu $2, $1, $1
mult $2, $2
TAG559:
lui $3, 5
mfhi $2
and $3, $3, $3
mthi $2
TAG560:
div $3, $3
beq $3, $3, TAG561
sll $0, $0, 0
mflo $4
TAG561:
mthi $4
mthi $4
lui $3, 5
sll $2, $4, 11
TAG562:
sw $2, 0($2)
addu $1, $2, $2
addiu $3, $2, 4
mult $3, $1
TAG563:
sltu $2, $3, $3
sb $3, 0($3)
or $4, $2, $2
mtlo $4
TAG564:
sb $4, 0($4)
beq $4, $4, TAG565
nor $3, $4, $4
lb $3, 0($3)
TAG565:
subu $2, $3, $3
bgtz $3, TAG566
lb $2, 0($2)
srlv $1, $2, $2
TAG566:
beq $1, $1, TAG567
sw $1, 0($1)
lui $4, 6
sw $4, 0($1)
TAG567:
addu $1, $4, $4
lui $2, 11
bgez $2, TAG568
lui $1, 15
TAG568:
mthi $1
addu $2, $1, $1
beq $1, $1, TAG569
sll $0, $0, 0
TAG569:
mthi $4
addi $3, $4, 3
mthi $3
mfhi $2
TAG570:
srlv $1, $2, $2
bltz $2, TAG571
srl $3, $1, 6
xor $3, $3, $2
TAG571:
sb $3, 0($3)
slti $3, $3, 11
lui $1, 15
mtlo $1
TAG572:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lb $2, 0($2)
TAG573:
mflo $3
lb $3, 0($2)
ori $2, $2, 8
blez $2, TAG574
TAG574:
slti $3, $2, 13
lui $4, 4
xor $3, $4, $2
sll $0, $0, 0
TAG575:
addu $2, $3, $3
mthi $3
divu $3, $2
ori $1, $2, 8
TAG576:
blez $1, TAG577
mflo $3
mflo $4
slt $1, $1, $1
TAG577:
blez $1, TAG578
mthi $1
nor $2, $1, $1
beq $1, $1, TAG578
TAG578:
addu $4, $2, $2
nor $1, $2, $4
lui $4, 12
sltiu $3, $4, 12
TAG579:
sb $3, 0($3)
mtlo $3
bltz $3, TAG580
sh $3, 0($3)
TAG580:
multu $3, $3
add $3, $3, $3
beq $3, $3, TAG581
mfhi $1
TAG581:
sb $1, 0($1)
lw $2, 0($1)
blez $1, TAG582
lui $4, 1
TAG582:
bne $4, $4, TAG583
mfhi $3
bne $3, $4, TAG583
lui $2, 9
TAG583:
sll $0, $0, 0
sh $2, 0($1)
mthi $2
addi $1, $1, 15
TAG584:
mfhi $4
beq $1, $1, TAG585
mfhi $4
bltz $1, TAG585
TAG585:
sll $0, $0, 0
mtlo $4
lui $3, 1
bne $4, $3, TAG586
TAG586:
sll $0, $0, 0
sll $0, $0, 0
xori $4, $4, 0
sll $0, $0, 0
TAG587:
bltz $4, TAG588
sll $1, $4, 3
sra $1, $4, 3
multu $1, $4
TAG588:
mflo $1
mtlo $1
mflo $1
lui $4, 6
TAG589:
nor $4, $4, $4
bne $4, $4, TAG590
addiu $2, $4, 8
mfhi $4
TAG590:
lui $1, 8
mthi $4
ori $1, $4, 3
bne $1, $1, TAG591
TAG591:
addiu $2, $1, 7
bgez $1, TAG592
lui $4, 7
mthi $4
TAG592:
and $4, $4, $4
subu $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG593:
divu $2, $2
bne $2, $2, TAG594
lhu $2, 0($2)
multu $2, $2
TAG594:
sb $2, 0($2)
blez $2, TAG595
mult $2, $2
divu $2, $2
TAG595:
andi $4, $2, 15
lui $3, 3
mflo $4
addu $2, $4, $4
TAG596:
sh $2, 0($2)
mult $2, $2
mthi $2
beq $2, $2, TAG597
TAG597:
lui $2, 7
sll $0, $0, 0
addiu $1, $2, 12
blez $1, TAG598
TAG598:
ori $3, $1, 15
mfhi $1
bgtz $1, TAG599
sll $0, $0, 0
TAG599:
blez $1, TAG600
mult $1, $1
lb $4, 0($1)
bne $1, $4, TAG600
TAG600:
multu $4, $4
sll $2, $4, 15
addi $1, $4, 10
sh $2, 0($2)
TAG601:
blez $1, TAG602
ori $3, $1, 3
bltz $3, TAG602
lb $1, 0($3)
TAG602:
lui $3, 8
bgez $3, TAG603
sll $0, $0, 0
bne $3, $1, TAG603
TAG603:
lb $3, 0($1)
mflo $3
lui $2, 6
andi $4, $1, 5
TAG604:
lui $4, 9
divu $4, $4
sll $0, $0, 0
xori $3, $4, 7
TAG605:
multu $3, $3
sll $0, $0, 0
bltz $3, TAG606
and $4, $3, $3
TAG606:
ori $2, $4, 3
srl $2, $4, 3
subu $1, $2, $2
bltz $2, TAG607
TAG607:
lbu $1, 0($1)
bgez $1, TAG608
mult $1, $1
lui $2, 2
TAG608:
bne $2, $2, TAG609
addiu $1, $2, 2
blez $2, TAG609
sll $0, $0, 0
TAG609:
sll $0, $0, 0
ori $4, $4, 8
bgtz $4, TAG610
addiu $3, $4, 11
TAG610:
mthi $3
or $2, $3, $3
bne $2, $2, TAG611
subu $2, $2, $3
TAG611:
bltz $2, TAG612
lb $1, 0($2)
bgtz $1, TAG612
multu $2, $2
TAG612:
lui $3, 7
lui $3, 5
lh $1, 0($1)
lui $1, 0
TAG613:
mult $1, $1
multu $1, $1
bne $1, $1, TAG614
sub $4, $1, $1
TAG614:
mthi $4
nor $4, $4, $4
beq $4, $4, TAG615
multu $4, $4
TAG615:
mflo $2
xori $2, $2, 0
sb $4, 0($2)
sb $2, 1($4)
TAG616:
ori $4, $2, 13
mtlo $2
mtlo $4
mtlo $2
TAG617:
mfhi $3
mult $4, $4
lb $2, 0($4)
mflo $4
TAG618:
lui $2, 6
lui $3, 11
mtlo $4
mthi $4
TAG619:
mtlo $3
lui $1, 8
mfhi $4
and $3, $4, $3
TAG620:
mfhi $4
mflo $4
sh $3, 0($3)
multu $4, $4
TAG621:
multu $4, $4
addu $4, $4, $4
bgtz $4, TAG622
mthi $4
TAG622:
mthi $4
mthi $4
sll $0, $0, 0
blez $4, TAG623
TAG623:
sll $0, $0, 0
bltz $1, TAG624
sll $0, $0, 0
divu $1, $1
TAG624:
lui $3, 9
sll $0, $0, 0
beq $1, $1, TAG625
mfhi $1
TAG625:
sh $1, 0($1)
mfhi $2
mult $1, $1
mthi $2
TAG626:
bgez $2, TAG627
mtlo $2
xor $3, $2, $2
addiu $1, $2, 7
TAG627:
lh $2, 0($1)
bne $1, $2, TAG628
sw $1, 0($2)
blez $2, TAG628
TAG628:
lui $2, 0
lui $2, 11
mfhi $1
xori $4, $1, 5
TAG629:
mtlo $4
bne $4, $4, TAG630
lui $3, 1
mtlo $4
TAG630:
mflo $3
lb $3, 0($3)
sb $3, 0($3)
multu $3, $3
TAG631:
andi $4, $3, 5
mult $3, $4
lb $1, 0($4)
bne $4, $1, TAG632
TAG632:
lui $4, 1
sll $0, $0, 0
mtlo $4
divu $1, $1
TAG633:
sll $0, $0, 0
and $3, $4, $3
mthi $3
srav $2, $4, $3
TAG634:
sltiu $3, $2, 12
lui $2, 8
bne $2, $3, TAG635
sll $0, $0, 0
TAG635:
sll $0, $0, 0
mfhi $1
sh $2, 0($1)
mfhi $2
TAG636:
bne $2, $2, TAG637
multu $2, $2
lui $4, 12
srav $1, $4, $4
TAG637:
divu $1, $1
sll $0, $0, 0
lui $4, 2
mult $4, $4
TAG638:
srav $1, $4, $4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG639:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG640:
mfhi $3
mthi $3
blez $3, TAG641
multu $3, $3
TAG641:
mfhi $2
mfhi $2
mflo $1
lui $4, 5
TAG642:
blez $4, TAG643
divu $4, $4
lui $4, 9
multu $4, $4
TAG643:
sll $0, $0, 0
sll $0, $0, 0
sll $4, $4, 13
or $2, $4, $4
TAG644:
sll $0, $0, 0
addiu $4, $2, 12
mtlo $4
mfhi $2
TAG645:
mflo $2
blez $2, TAG646
lui $4, 2
sll $0, $0, 0
TAG646:
sll $0, $0, 0
mflo $1
mflo $1
sll $0, $0, 0
TAG647:
bne $1, $1, TAG648
mfhi $3
divu $3, $1
mflo $2
TAG648:
mfhi $3
bne $3, $3, TAG649
sb $3, 0($3)
blez $2, TAG649
TAG649:
sb $3, 0($3)
nor $2, $3, $3
mtlo $2
mfhi $3
TAG650:
beq $3, $3, TAG651
srl $3, $3, 6
lui $1, 2
bgez $3, TAG651
TAG651:
div $1, $1
bgtz $1, TAG652
sll $0, $0, 0
bne $1, $1, TAG652
TAG652:
mfhi $4
bgez $4, TAG653
mfhi $4
blez $4, TAG653
TAG653:
mult $4, $4
srl $1, $4, 9
bne $4, $1, TAG654
lh $1, 0($1)
TAG654:
sh $1, 0($1)
bne $1, $1, TAG655
mtlo $1
sh $1, 0($1)
TAG655:
lui $4, 13
multu $1, $4
mthi $4
lhu $2, 0($1)
TAG656:
lui $4, 11
lui $2, 11
multu $2, $4
mflo $4
TAG657:
lui $3, 5
mflo $4
addi $3, $4, 14
div $3, $3
TAG658:
lui $4, 4
lui $3, 13
bne $3, $3, TAG659
mult $3, $3
TAG659:
sll $0, $0, 0
bgez $3, TAG660
sll $0, $0, 0
mthi $3
TAG660:
sll $0, $0, 0
bgtz $3, TAG661
sltiu $3, $3, 14
mfhi $3
TAG661:
lb $1, 0($3)
mthi $1
sh $3, 0($3)
addiu $1, $3, 4
TAG662:
sb $1, 0($1)
ori $2, $1, 3
lb $4, 0($2)
divu $4, $4
TAG663:
sb $4, 0($4)
bne $4, $4, TAG664
mfhi $4
mthi $4
TAG664:
beq $4, $4, TAG665
lb $4, 0($4)
mfhi $1
bgez $1, TAG665
TAG665:
ori $1, $1, 1
mthi $1
nor $4, $1, $1
andi $4, $1, 12
TAG666:
mflo $2
subu $1, $2, $2
lui $4, 6
sll $0, $0, 0
TAG667:
subu $1, $4, $4
lui $4, 7
sra $2, $4, 15
mult $4, $4
TAG668:
mult $2, $2
or $3, $2, $2
mfhi $2
bgtz $2, TAG669
TAG669:
lui $3, 4
sb $3, 0($2)
subu $4, $3, $2
slt $3, $4, $3
TAG670:
lb $1, 0($3)
mthi $1
mult $1, $1
mflo $1
TAG671:
nor $4, $1, $1
mthi $1
bgtz $4, TAG672
mtlo $1
TAG672:
sra $2, $4, 15
beq $2, $2, TAG673
mthi $2
andi $3, $4, 14
TAG673:
sb $3, 0($3)
lh $3, 0($3)
ori $1, $3, 0
sll $2, $1, 15
TAG674:
mult $2, $2
lui $2, 9
divu $2, $2
lui $2, 13
TAG675:
blez $2, TAG676
div $2, $2
mfhi $3
bne $3, $2, TAG676
TAG676:
multu $3, $3
lui $4, 11
beq $4, $3, TAG677
sw $4, 0($3)
TAG677:
sra $4, $4, 7
subu $4, $4, $4
mtlo $4
bne $4, $4, TAG678
TAG678:
lhu $4, 0($4)
mthi $4
sb $4, 0($4)
mfhi $1
TAG679:
blez $1, TAG680
sw $1, 0($1)
nor $2, $1, $1
sb $1, 0($2)
TAG680:
mflo $4
bgtz $4, TAG681
mflo $3
mthi $3
TAG681:
sb $3, 0($3)
andi $4, $3, 13
mthi $4
bltz $3, TAG682
TAG682:
mfhi $4
lbu $3, 0($4)
multu $4, $4
multu $3, $3
TAG683:
lb $3, 0($3)
lh $1, 0($3)
lui $1, 12
lui $2, 13
TAG684:
mtlo $2
sll $0, $0, 0
mflo $4
mtlo $4
TAG685:
lui $3, 5
lui $3, 7
sll $0, $0, 0
mtlo $4
TAG686:
beq $3, $3, TAG687
sll $0, $0, 0
mflo $1
blez $1, TAG687
TAG687:
sll $0, $0, 0
divu $1, $1
multu $1, $1
sll $0, $0, 0
TAG688:
nor $3, $3, $3
mult $3, $3
multu $3, $3
mflo $2
TAG689:
sra $4, $2, 6
addu $2, $4, $4
lh $2, -28672($2)
mthi $2
TAG690:
bgtz $2, TAG691
mult $2, $2
bne $2, $2, TAG691
addi $4, $2, 2
TAG691:
div $4, $4
bgtz $4, TAG692
srl $1, $4, 6
bltz $4, TAG692
TAG692:
lui $3, 11
mult $1, $1
mtlo $1
mfhi $1
TAG693:
blez $1, TAG694
lbu $4, 0($1)
blez $1, TAG694
sh $4, 0($4)
TAG694:
multu $4, $4
mult $4, $4
lui $1, 9
lui $2, 6
TAG695:
mfhi $4
lui $1, 1
sll $3, $1, 7
mtlo $3
TAG696:
bne $3, $3, TAG697
or $1, $3, $3
sll $0, $0, 0
mfhi $4
TAG697:
multu $4, $4
multu $4, $4
mfhi $4
mflo $3
TAG698:
bne $3, $3, TAG699
or $3, $3, $3
sb $3, 0($3)
mtlo $3
TAG699:
lui $2, 8
bne $3, $3, TAG700
ori $4, $2, 1
lui $4, 14
TAG700:
sll $0, $0, 0
lui $2, 14
lw $4, 0($3)
mtlo $4
TAG701:
multu $4, $4
lb $4, 0($4)
srl $3, $4, 12
multu $4, $4
TAG702:
lui $2, 13
bgtz $3, TAG703
lui $3, 15
sll $0, $0, 0
TAG703:
sll $0, $0, 0
srlv $4, $3, $2
bgtz $2, TAG704
mthi $2
TAG704:
sll $0, $0, 0
nor $2, $4, $4
div $2, $4
sll $0, $0, 0
TAG705:
mult $2, $2
lui $1, 4
bltz $2, TAG706
sll $0, $0, 0
TAG706:
beq $3, $3, TAG707
mflo $2
mult $3, $3
div $3, $3
TAG707:
mthi $2
divu $2, $2
blez $2, TAG708
subu $3, $2, $2
TAG708:
mfhi $1
bgez $1, TAG709
nor $1, $3, $1
sb $1, 0($1)
TAG709:
slt $1, $1, $1
lui $3, 10
mflo $3
mthi $1
TAG710:
mflo $3
mfhi $3
xor $3, $3, $3
lui $3, 4
TAG711:
sltu $3, $3, $3
sb $3, 0($3)
mult $3, $3
addu $4, $3, $3
TAG712:
mfhi $1
bne $4, $4, TAG713
mult $1, $1
ori $4, $1, 1
TAG713:
sb $4, 0($4)
lb $1, 0($4)
bltz $4, TAG714
lbu $2, 0($4)
TAG714:
sb $2, 0($2)
lui $1, 1
mthi $2
mflo $3
TAG715:
mult $3, $3
bne $3, $3, TAG716
lh $4, 0($3)
lbu $3, -256($4)
TAG716:
sltu $1, $3, $3
mult $3, $1
addiu $1, $1, 4
srl $1, $1, 7
TAG717:
mflo $2
mfhi $2
sw $2, 0($2)
lb $1, 0($2)
TAG718:
sb $1, 0($1)
lbu $4, 0($1)
mtlo $4
beq $4, $4, TAG719
TAG719:
addu $2, $4, $4
lui $2, 5
andi $1, $4, 7
bltz $2, TAG720
TAG720:
lbu $3, 0($1)
mult $1, $3
lbu $4, 0($3)
lui $4, 0
TAG721:
bne $4, $4, TAG722
mflo $3
sb $4, 0($3)
lui $3, 1
TAG722:
bgtz $3, TAG723
mtlo $3
sltiu $1, $3, 10
mtlo $3
TAG723:
beq $1, $1, TAG724
mfhi $1
lbu $1, 0($1)
slti $4, $1, 5
TAG724:
lb $4, 0($4)
sb $4, 0($4)
mflo $3
multu $4, $4
TAG725:
mult $3, $3
sll $0, $0, 0
sll $2, $3, 1
sltiu $2, $3, 8
TAG726:
lhu $3, 0($2)
mfhi $1
lbu $1, 0($1)
mtlo $1
TAG727:
blez $1, TAG728
multu $1, $1
lui $4, 12
slti $2, $1, 4
TAG728:
mflo $3
sw $2, 0($3)
lb $2, 0($3)
bne $2, $3, TAG729
TAG729:
lbu $4, 0($2)
lhu $4, 0($2)
blez $4, TAG730
sh $4, 0($4)
TAG730:
sh $4, 0($4)
bgtz $4, TAG731
andi $3, $4, 13
lw $3, 0($3)
TAG731:
mflo $2
mflo $3
srav $4, $3, $3
mfhi $3
TAG732:
sra $2, $3, 13
bne $3, $3, TAG733
mthi $2
lui $4, 8
TAG733:
bgtz $4, TAG734
div $4, $4
mflo $1
bne $1, $4, TAG734
TAG734:
slti $2, $1, 6
div $1, $2
mult $2, $1
lui $1, 12
TAG735:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG736:
lui $1, 0
lw $3, 0($1)
lui $2, 4
lui $3, 9
TAG737:
mthi $3
nor $3, $3, $3
slt $1, $3, $3
mtlo $3
TAG738:
lui $2, 8
beq $1, $1, TAG739
sb $2, 0($1)
bgez $1, TAG739
TAG739:
mflo $1
mtlo $1
lui $2, 4
bgez $1, TAG740
TAG740:
sll $0, $0, 0
sltiu $3, $2, 12
sll $0, $0, 0
bltz $3, TAG741
TAG741:
mthi $3
multu $3, $3
sub $2, $3, $3
or $4, $2, $2
TAG742:
mtlo $4
lw $3, 0($4)
mfhi $2
mflo $3
TAG743:
mthi $3
blez $3, TAG744
sw $3, 0($3)
mthi $3
TAG744:
beq $3, $3, TAG745
mflo $4
srl $2, $3, 9
sb $2, 0($4)
TAG745:
bne $2, $2, TAG746
lw $2, 0($2)
subu $4, $2, $2
multu $2, $4
TAG746:
bgtz $4, TAG747
slti $3, $4, 4
lui $1, 3
mult $1, $1
TAG747:
beq $1, $1, TAG748
mthi $1
lb $4, 0($1)
mflo $3
TAG748:
sb $3, 0($3)
blez $3, TAG749
ori $4, $3, 9
lb $2, 0($3)
TAG749:
bgez $2, TAG750
div $2, $2
sb $2, 0($2)
mfhi $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop