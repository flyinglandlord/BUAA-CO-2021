ori $1, $0, 0
ori $2, $0, 1
ori $3, $0, 8
ori $4, $0, 15
sw $1, 0($0)
sw $1, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $4, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $1, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $3, 112($0)
sw $2, 116($0)
sw $1, 120($0)
sw $3, 124($0)
srlv $3, $2, $2
mthi $3
mthi $2
lui $2, 8
TAG1:
bne $2, $2, TAG2
sll $0, $0, 0
xori $3, $2, 8
mtlo $3
TAG2:
bgez $3, TAG3
srlv $3, $3, $3
beq $3, $3, TAG3
mthi $3
TAG3:
sb $3, -2048($3)
sh $3, -2048($3)
subu $4, $3, $3
mfhi $2
TAG4:
bne $2, $2, TAG5
sb $2, 0($2)
lui $1, 1
sllv $1, $1, $2
TAG5:
divu $1, $1
sll $0, $0, 0
ori $3, $1, 8
addiu $1, $3, 1
TAG6:
bne $1, $1, TAG7
srlv $2, $1, $1
slt $2, $2, $1
mfhi $1
TAG7:
bltz $1, TAG8
multu $1, $1
addiu $3, $1, 10
lui $3, 0
TAG8:
addi $3, $3, 2
slt $2, $3, $3
ori $2, $3, 11
beq $3, $3, TAG9
TAG9:
multu $2, $2
divu $2, $2
sb $2, 0($2)
lb $4, 0($2)
TAG10:
addu $3, $4, $4
lui $1, 6
addu $2, $1, $3
mflo $4
TAG11:
bltz $4, TAG12
srav $4, $4, $4
sb $4, 0($4)
bltz $4, TAG12
TAG12:
mfhi $4
sllv $4, $4, $4
mtlo $4
subu $1, $4, $4
TAG13:
lui $3, 10
multu $3, $3
div $1, $3
mfhi $4
TAG14:
slti $2, $4, 8
sb $4, 0($2)
mtlo $4
mult $4, $4
TAG15:
mflo $2
addi $2, $2, 9
bltz $2, TAG16
addiu $2, $2, 6
TAG16:
div $2, $2
lui $2, 9
sll $0, $0, 0
lui $2, 7
TAG17:
sll $0, $0, 0
mthi $2
and $1, $2, $2
sll $0, $0, 0
TAG18:
addiu $2, $1, 15
mflo $2
mflo $4
mfhi $4
TAG19:
sll $0, $0, 0
mthi $4
mflo $4
div $4, $4
TAG20:
bne $4, $4, TAG21
mtlo $4
beq $4, $4, TAG21
mult $4, $4
TAG21:
beq $4, $4, TAG22
andi $1, $4, 13
mtlo $1
blez $1, TAG22
TAG22:
sb $1, 0($1)
lb $3, 0($1)
sb $1, 0($3)
sb $1, 0($1)
TAG23:
lui $1, 1
bne $3, $3, TAG24
sll $0, $0, 0
lui $4, 12
TAG24:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG25
lui $4, 12
TAG25:
blez $4, TAG26
mult $4, $4
srlv $1, $4, $4
bgez $1, TAG26
TAG26:
sll $0, $0, 0
lui $4, 2
sll $0, $0, 0
lui $3, 14
TAG27:
xor $2, $3, $3
sb $2, 0($2)
xori $4, $3, 11
mult $4, $2
TAG28:
mtlo $4
sllv $3, $4, $4
subu $4, $3, $4
sll $0, $0, 0
TAG29:
addu $1, $4, $4
ori $1, $1, 0
mthi $4
nor $2, $1, $4
TAG30:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG31
TAG31:
div $4, $4
mtlo $4
lui $4, 3
mthi $4
TAG32:
sll $0, $0, 0
sltu $1, $4, $4
mtlo $1
sll $0, $0, 0
TAG33:
sll $0, $0, 0
blez $4, TAG34
mthi $4
mtlo $4
TAG34:
beq $4, $4, TAG35
mthi $4
blez $4, TAG35
sw $4, 0($4)
TAG35:
lui $1, 14
mflo $1
bne $1, $1, TAG36
mfhi $3
TAG36:
divu $3, $3
bgtz $3, TAG37
lui $2, 15
lhu $4, 0($3)
TAG37:
sll $0, $0, 0
div $4, $4
mthi $4
sll $0, $0, 0
TAG38:
divu $1, $1
srlv $1, $1, $1
mthi $1
mult $1, $1
TAG39:
sllv $1, $1, $1
mflo $4
lui $3, 5
addu $3, $1, $1
TAG40:
sll $0, $0, 0
sltiu $2, $3, 6
xor $1, $2, $3
mtlo $2
TAG41:
addu $1, $1, $1
bne $1, $1, TAG42
sll $0, $0, 0
slti $3, $1, 7
TAG42:
mfhi $3
lui $1, 12
slti $3, $3, 2
sh $3, 0($3)
TAG43:
bltz $3, TAG44
sw $3, 0($3)
lui $1, 9
blez $3, TAG44
TAG44:
divu $1, $1
sll $0, $0, 0
bne $1, $1, TAG45
sll $0, $0, 0
TAG45:
mtlo $1
sll $0, $0, 0
addi $1, $3, 13
mfhi $4
TAG46:
blez $4, TAG47
multu $4, $4
mtlo $4
srav $1, $4, $4
TAG47:
lui $4, 14
srav $1, $4, $1
mflo $4
lui $2, 9
TAG48:
mtlo $2
addiu $1, $2, 8
mtlo $1
lui $2, 15
TAG49:
srlv $4, $2, $2
mtlo $4
sltu $3, $4, $4
lui $3, 3
TAG50:
mthi $3
sll $2, $3, 3
lui $2, 11
sll $0, $0, 0
TAG51:
mtlo $2
xori $4, $2, 9
bne $4, $4, TAG52
addiu $1, $2, 13
TAG52:
sll $0, $0, 0
mflo $2
addiu $3, $2, 7
sll $0, $0, 0
TAG53:
multu $1, $1
bgtz $1, TAG54
sll $0, $0, 0
lbu $4, 0($4)
TAG54:
mthi $4
mult $4, $4
bgtz $4, TAG55
sll $0, $0, 0
TAG55:
mfhi $3
beq $3, $3, TAG56
srav $3, $3, $3
lbu $4, 0($3)
TAG56:
sll $0, $0, 0
bne $4, $4, TAG57
sll $4, $4, 10
sll $0, $0, 0
TAG57:
lw $4, 0($3)
mtlo $4
sb $4, 0($3)
blez $4, TAG58
TAG58:
mult $4, $4
sb $4, 0($4)
sub $4, $4, $4
multu $4, $4
TAG59:
srlv $3, $4, $4
subu $4, $4, $3
mtlo $3
or $1, $3, $4
TAG60:
lhu $4, 0($1)
lui $3, 4
sll $0, $0, 0
beq $3, $4, TAG61
TAG61:
or $1, $3, $3
bgez $3, TAG62
sll $0, $0, 0
addi $4, $1, 15
TAG62:
sh $4, 0($4)
mult $4, $4
multu $4, $4
bgez $4, TAG63
TAG63:
lhu $3, 0($4)
bne $4, $3, TAG64
sltu $3, $4, $3
mthi $3
TAG64:
lui $1, 6
lui $1, 14
bgez $1, TAG65
mfhi $4
TAG65:
sw $4, 0($4)
addi $4, $4, 6
lh $3, 0($4)
sh $4, 0($4)
TAG66:
mflo $1
mthi $3
mthi $3
beq $1, $1, TAG67
TAG67:
mult $1, $1
mult $1, $1
lbu $1, 0($1)
sh $1, 0($1)
TAG68:
sllv $2, $1, $1
bgez $1, TAG69
addi $3, $1, 13
sb $3, 0($3)
TAG69:
div $3, $3
lui $1, 3
andi $4, $1, 2
bne $3, $4, TAG70
TAG70:
multu $4, $4
bne $4, $4, TAG71
mfhi $1
bltz $1, TAG71
TAG71:
mthi $1
sra $4, $1, 12
beq $4, $4, TAG72
lbu $1, 0($4)
TAG72:
bgtz $1, TAG73
mthi $1
andi $2, $1, 9
sw $2, 0($2)
TAG73:
beq $2, $2, TAG74
lh $3, 0($2)
mflo $4
beq $3, $3, TAG74
TAG74:
lui $4, 7
mflo $1
addu $4, $4, $4
bgez $4, TAG75
TAG75:
sltu $3, $4, $4
bne $3, $3, TAG76
andi $3, $4, 12
mtlo $3
TAG76:
mflo $2
mthi $3
bne $3, $2, TAG77
sllv $4, $3, $2
TAG77:
sb $4, 0($4)
mult $4, $4
lui $2, 14
sh $2, 0($4)
TAG78:
sll $0, $0, 0
bltz $2, TAG79
sll $0, $0, 0
bne $2, $2, TAG79
TAG79:
srlv $4, $2, $2
xor $2, $2, $2
sll $0, $0, 0
mult $2, $2
TAG80:
blez $2, TAG81
mflo $3
mult $3, $2
mflo $3
TAG81:
mtlo $3
bne $3, $3, TAG82
sw $3, 0($3)
multu $3, $3
TAG82:
sra $1, $3, 5
sh $1, 0($3)
addi $3, $3, 4
mthi $3
TAG83:
mult $3, $3
mthi $3
xor $3, $3, $3
xori $2, $3, 10
TAG84:
lhu $3, 0($2)
divu $2, $3
beq $2, $3, TAG85
lbu $2, 0($2)
TAG85:
mult $2, $2
mult $2, $2
bgtz $2, TAG86
lui $1, 8
TAG86:
lui $1, 15
lui $2, 10
sll $1, $1, 2
sll $0, $0, 0
TAG87:
or $1, $3, $3
sll $1, $3, 8
sll $0, $0, 0
or $1, $1, $3
TAG88:
mtlo $1
mtlo $1
bne $1, $1, TAG89
lui $2, 9
TAG89:
lui $2, 4
sll $0, $0, 0
mflo $4
or $1, $2, $2
TAG90:
sll $2, $1, 4
multu $2, $1
sll $0, $0, 0
mult $2, $1
TAG91:
mflo $3
multu $2, $2
sll $4, $2, 9
sll $0, $0, 0
TAG92:
mthi $4
mtlo $4
lui $1, 8
andi $4, $1, 4
TAG93:
mtlo $4
srlv $3, $4, $4
bgtz $4, TAG94
sb $4, 0($4)
TAG94:
srlv $2, $3, $3
lw $3, 0($3)
bgez $3, TAG95
sw $2, 0($3)
TAG95:
bltz $3, TAG96
sh $3, 0($3)
and $3, $3, $3
multu $3, $3
TAG96:
lw $1, 0($3)
sb $3, 0($1)
sw $3, 0($3)
mflo $4
TAG97:
addiu $1, $4, 6
lbu $1, 0($1)
beq $1, $4, TAG98
mtlo $4
TAG98:
lui $1, 8
mult $1, $1
sll $0, $0, 0
mtlo $1
TAG99:
sw $2, 0($2)
mfhi $4
mult $2, $2
div $4, $4
TAG100:
sh $4, 0($4)
mflo $2
mthi $2
bltz $4, TAG101
TAG101:
lbu $2, 0($2)
lui $2, 2
mult $2, $2
srl $3, $2, 11
TAG102:
bgtz $3, TAG103
sltiu $4, $3, 5
mfhi $2
mthi $4
TAG103:
bltz $2, TAG104
mflo $1
ori $4, $1, 9
beq $2, $4, TAG104
TAG104:
mflo $4
bne $4, $4, TAG105
lh $1, 0($4)
mflo $3
TAG105:
blez $3, TAG106
lui $4, 12
lbu $2, 0($4)
mtlo $3
TAG106:
mflo $1
mthi $2
bgtz $1, TAG107
mfhi $2
TAG107:
xori $1, $2, 11
div $2, $2
nor $2, $2, $1
subu $1, $1, $2
TAG108:
lui $3, 5
bgtz $1, TAG109
sll $0, $0, 0
sub $3, $1, $3
TAG109:
lui $4, 2
beq $4, $4, TAG110
mthi $3
srav $1, $4, $4
TAG110:
bltz $1, TAG111
sll $0, $0, 0
bltz $1, TAG111
lui $3, 15
TAG111:
sra $4, $3, 6
slt $2, $3, $4
lbu $4, 0($2)
beq $4, $4, TAG112
TAG112:
lb $2, 0($4)
subu $4, $4, $4
lui $2, 11
mflo $3
TAG113:
beq $3, $3, TAG114
sb $3, 0($3)
mtlo $3
xori $2, $3, 15
TAG114:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $2
addiu $4, $2, 10
TAG115:
mthi $4
srav $4, $4, $4
and $4, $4, $4
div $4, $4
TAG116:
mthi $4
addiu $2, $4, 12
mflo $2
sh $2, -704($4)
TAG117:
div $2, $2
slti $4, $2, 9
multu $2, $4
sb $2, 0($4)
TAG118:
sb $4, 0($4)
divu $4, $4
nor $3, $4, $4
sb $4, 0($4)
TAG119:
lui $4, 10
sll $0, $0, 0
sll $1, $4, 10
bltz $3, TAG120
TAG120:
addiu $3, $1, 4
sll $0, $0, 0
mflo $4
lbu $1, 0($4)
TAG121:
lbu $1, 0($1)
mthi $1
and $1, $1, $1
mtlo $1
TAG122:
beq $1, $1, TAG123
or $3, $1, $1
mflo $2
mfhi $3
TAG123:
bgtz $3, TAG124
sb $3, 0($3)
sb $3, 0($3)
lh $3, 0($3)
TAG124:
lui $1, 14
addiu $4, $1, 12
sll $0, $0, 0
bgtz $4, TAG125
TAG125:
lb $1, 0($3)
lui $1, 12
sll $0, $0, 0
mflo $3
TAG126:
sltu $1, $3, $3
mthi $1
mthi $3
lb $4, 0($3)
TAG127:
mult $4, $4
mfhi $2
mfhi $1
lbu $3, 0($1)
TAG128:
nor $1, $3, $3
mfhi $1
multu $3, $1
lbu $1, 0($3)
TAG129:
sb $1, 0($1)
lui $4, 5
mthi $1
beq $4, $1, TAG130
TAG130:
sll $0, $0, 0
bgez $4, TAG131
sll $0, $0, 0
mflo $4
TAG131:
mtlo $4
bne $4, $4, TAG132
addiu $3, $4, 1
lui $4, 15
TAG132:
xor $4, $4, $4
bne $4, $4, TAG133
andi $1, $4, 2
mult $1, $4
TAG133:
beq $1, $1, TAG134
mfhi $2
sll $2, $2, 10
div $2, $2
TAG134:
mthi $2
slt $3, $2, $2
mthi $2
bgez $2, TAG135
TAG135:
mflo $1
lbu $4, 0($1)
sra $4, $1, 3
sub $3, $4, $3
TAG136:
lui $1, 11
addiu $2, $1, 9
sh $2, 0($3)
mult $1, $3
TAG137:
lui $2, 1
multu $2, $2
divu $2, $2
bne $2, $2, TAG138
TAG138:
xor $2, $2, $2
addu $4, $2, $2
mult $2, $2
bne $2, $4, TAG139
TAG139:
mult $4, $4
multu $4, $4
sltu $3, $4, $4
lhu $3, 0($4)
TAG140:
sb $3, 0($3)
bne $3, $3, TAG141
sb $3, 0($3)
lui $1, 12
TAG141:
bne $1, $1, TAG142
mult $1, $1
addu $3, $1, $1
sll $0, $0, 0
TAG142:
mflo $2
mflo $3
lui $2, 12
mfhi $1
TAG143:
slti $1, $1, 0
sh $1, 0($1)
multu $1, $1
mflo $2
TAG144:
mthi $2
beq $2, $2, TAG145
lui $2, 14
sw $2, 0($2)
TAG145:
sll $0, $0, 0
sb $1, 0($1)
blez $2, TAG146
lui $2, 2
TAG146:
nor $3, $2, $2
mthi $3
sltu $2, $3, $3
lui $3, 7
TAG147:
blez $3, TAG148
sll $0, $0, 0
lui $2, 2
divu $2, $2
TAG148:
mthi $2
mtlo $2
lui $1, 3
slti $3, $1, 15
TAG149:
srlv $3, $3, $3
bne $3, $3, TAG150
lui $2, 12
lui $2, 1
TAG150:
bgez $2, TAG151
mflo $2
sw $2, 0($2)
mult $2, $2
TAG151:
sll $0, $0, 0
slti $4, $2, 5
mult $2, $4
mtlo $2
TAG152:
srlv $1, $4, $4
lb $1, 0($4)
mthi $1
lui $2, 15
TAG153:
mflo $1
div $1, $1
mfhi $3
div $1, $1
TAG154:
multu $3, $3
mult $3, $3
sra $3, $3, 10
mult $3, $3
TAG155:
lw $2, 0($3)
srlv $3, $2, $3
sra $2, $3, 13
mult $2, $3
TAG156:
addiu $1, $2, 1
blez $1, TAG157
divu $1, $1
beq $1, $2, TAG157
TAG157:
lb $3, 0($1)
lb $3, 0($3)
mult $1, $3
mtlo $1
TAG158:
or $2, $3, $3
lbu $2, 0($3)
sb $3, 0($3)
mflo $2
TAG159:
mtlo $2
slti $3, $2, 7
bne $3, $2, TAG160
lbu $3, 0($3)
TAG160:
mult $3, $3
mtlo $3
slti $2, $3, 12
xori $1, $3, 14
TAG161:
addiu $4, $1, 3
mthi $4
bltz $4, TAG162
mthi $1
TAG162:
bgez $4, TAG163
xori $2, $4, 4
lui $4, 3
lui $2, 3
TAG163:
sb $2, 0($2)
lui $2, 12
srlv $4, $2, $2
sll $0, $0, 0
TAG164:
sb $1, 0($1)
subu $3, $1, $1
bgtz $3, TAG165
subu $2, $3, $3
TAG165:
sllv $2, $2, $2
srav $3, $2, $2
lui $1, 5
bgtz $3, TAG166
TAG166:
sll $0, $0, 0
mfhi $2
lui $4, 5
mthi $4
TAG167:
bgez $4, TAG168
lui $1, 13
lb $1, 0($1)
bgez $4, TAG168
TAG168:
sll $0, $0, 0
nor $2, $1, $1
addu $2, $2, $2
mfhi $2
TAG169:
lui $1, 11
bne $2, $2, TAG170
mult $1, $1
mtlo $2
TAG170:
lui $3, 2
xori $4, $1, 9
sll $0, $0, 0
srl $3, $3, 15
TAG171:
sw $3, 0($3)
sw $3, 0($3)
lw $2, 0($3)
addu $2, $3, $3
TAG172:
mfhi $3
bne $2, $3, TAG173
lbu $1, 0($3)
slti $4, $1, 1
TAG173:
lui $3, 4
mult $4, $3
mfhi $4
lhu $4, 0($4)
TAG174:
addu $4, $4, $4
lui $4, 2
mult $4, $4
sll $0, $0, 0
TAG175:
bgtz $4, TAG176
nor $3, $4, $4
sllv $2, $4, $3
sltu $3, $3, $4
TAG176:
sll $0, $0, 0
beq $4, $3, TAG177
addiu $4, $4, 5
div $4, $4
TAG177:
lui $3, 13
subu $3, $3, $3
sll $0, $0, 0
mthi $4
TAG178:
lui $3, 15
slt $3, $3, $3
sw $3, 0($3)
sllv $2, $3, $3
TAG179:
mult $2, $2
multu $2, $2
lb $4, 0($2)
sh $4, 0($4)
TAG180:
bltz $4, TAG181
mfhi $3
beq $4, $3, TAG181
mflo $2
TAG181:
lui $2, 15
lui $2, 10
sll $0, $0, 0
srlv $3, $2, $2
TAG182:
sltiu $3, $3, 3
mflo $2
mtlo $3
mult $3, $2
TAG183:
bgez $2, TAG184
mthi $2
beq $2, $2, TAG184
sw $2, 0($2)
TAG184:
bgtz $2, TAG185
slti $1, $2, 14
mtlo $2
mthi $1
TAG185:
addiu $3, $1, 13
bgez $3, TAG186
lui $3, 6
ori $3, $1, 13
TAG186:
mfhi $1
lui $4, 8
beq $3, $4, TAG187
lbu $1, 0($1)
TAG187:
mflo $1
sh $1, 0($1)
sltiu $3, $1, 8
sh $1, 0($1)
TAG188:
srav $4, $3, $3
lb $1, 0($3)
beq $1, $3, TAG189
lui $1, 11
TAG189:
mult $1, $1
mthi $1
mult $1, $1
sll $1, $1, 14
TAG190:
sll $0, $0, 0
mfhi $1
blez $1, TAG191
sb $1, 0($1)
TAG191:
bgez $1, TAG192
nor $1, $1, $1
bgez $1, TAG192
mtlo $1
TAG192:
mfhi $1
sb $1, 0($1)
srlv $3, $1, $1
lbu $3, 0($1)
TAG193:
sb $3, 0($3)
blez $3, TAG194
sll $3, $3, 5
mult $3, $3
TAG194:
addu $2, $3, $3
sb $3, -7744($2)
beq $3, $2, TAG195
mfhi $2
TAG195:
bltz $2, TAG196
mthi $2
mflo $2
mfhi $4
TAG196:
bgez $4, TAG197
lui $3, 9
xor $3, $4, $3
sb $3, 0($3)
TAG197:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG198:
multu $4, $4
mult $4, $4
mflo $2
bgez $2, TAG199
TAG199:
addiu $2, $2, 8
beq $2, $2, TAG200
andi $3, $2, 6
sw $2, 0($3)
TAG200:
bltz $3, TAG201
lui $1, 13
mult $1, $1
lui $4, 5
TAG201:
lui $4, 11
xori $1, $4, 6
bne $1, $1, TAG202
mthi $4
TAG202:
beq $1, $1, TAG203
addiu $2, $1, 4
slt $3, $1, $2
divu $2, $1
TAG203:
mult $3, $3
mfhi $2
lh $3, 0($2)
lui $4, 4
TAG204:
sll $0, $0, 0
lui $1, 7
sll $0, $0, 0
mfhi $2
TAG205:
mfhi $1
lui $2, 6
lui $4, 8
blez $1, TAG206
TAG206:
lui $4, 11
bltz $4, TAG207
mtlo $4
sll $3, $4, 11
TAG207:
mult $3, $3
mult $3, $3
divu $3, $3
mthi $3
TAG208:
mtlo $3
lui $4, 11
or $3, $3, $4
mfhi $2
TAG209:
sll $0, $0, 0
lh $2, 0($1)
blez $1, TAG210
mtlo $1
TAG210:
or $4, $2, $2
sb $2, 0($2)
bgez $4, TAG211
lui $4, 13
TAG211:
beq $4, $4, TAG212
mult $4, $4
beq $4, $4, TAG212
mfhi $1
TAG212:
mflo $3
sra $4, $3, 11
mfhi $3
lui $3, 12
TAG213:
mthi $3
xori $2, $3, 1
bgtz $3, TAG214
sll $0, $0, 0
TAG214:
sb $4, 0($4)
lui $4, 2
bne $4, $4, TAG215
lui $4, 14
TAG215:
lui $1, 9
bgez $1, TAG216
sll $0, $0, 0
sw $1, 0($4)
TAG216:
mthi $2
beq $2, $2, TAG217
sll $0, $0, 0
beq $2, $4, TAG217
TAG217:
xor $4, $4, $4
mult $4, $4
sw $4, 0($4)
sllv $3, $4, $4
TAG218:
mult $3, $3
blez $3, TAG219
lui $2, 10
lui $2, 8
TAG219:
mflo $2
bne $2, $2, TAG220
srav $2, $2, $2
mflo $3
TAG220:
lh $4, 0($3)
bne $4, $4, TAG221
addiu $2, $4, 12
mthi $4
TAG221:
mult $2, $2
lui $4, 9
multu $4, $4
addu $1, $4, $4
TAG222:
div $1, $1
addiu $4, $1, 9
mflo $4
subu $1, $1, $4
TAG223:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 3
bltz $2, TAG224
TAG224:
mthi $2
subu $2, $2, $2
bne $2, $2, TAG225
sh $2, 0($2)
TAG225:
nor $1, $2, $2
blez $1, TAG226
sh $2, 1($1)
blez $2, TAG226
TAG226:
multu $1, $1
mflo $2
lw $3, 1($1)
subu $1, $2, $1
TAG227:
mflo $4
sllv $2, $4, $1
divu $4, $2
lh $4, 0($1)
TAG228:
mtlo $4
sh $4, 0($4)
mtlo $4
bgez $4, TAG229
TAG229:
lbu $3, 0($4)
srav $3, $3, $3
bne $3, $3, TAG230
mflo $3
TAG230:
sw $3, 0($3)
mfhi $2
multu $3, $3
lui $3, 1
TAG231:
sltiu $4, $3, 14
beq $4, $4, TAG232
sllv $2, $4, $4
lui $4, 7
TAG232:
multu $4, $4
beq $4, $4, TAG233
lui $1, 1
lui $1, 3
TAG233:
divu $1, $1
sll $0, $0, 0
lui $2, 9
beq $1, $1, TAG234
TAG234:
sll $0, $0, 0
bne $2, $2, TAG235
mflo $1
lui $4, 5
TAG235:
divu $4, $4
bgez $4, TAG236
mfhi $4
ori $4, $4, 7
TAG236:
lh $1, 0($4)
srlv $3, $1, $4
lui $1, 11
mthi $1
TAG237:
mtlo $1
div $1, $1
addu $3, $1, $1
lui $4, 10
TAG238:
beq $4, $4, TAG239
mtlo $4
lb $1, 0($4)
divu $1, $4
TAG239:
div $1, $1
mfhi $4
beq $1, $4, TAG240
mthi $1
TAG240:
bltz $4, TAG241
mflo $1
beq $4, $4, TAG241
or $4, $4, $1
TAG241:
sb $4, 0($4)
andi $2, $4, 3
sb $4, 0($4)
sb $4, 0($4)
TAG242:
sb $2, 0($2)
mfhi $1
sltiu $4, $2, 1
mtlo $1
TAG243:
lui $4, 3
mflo $1
srl $4, $4, 15
beq $4, $4, TAG244
TAG244:
mfhi $3
div $3, $4
mfhi $4
subu $2, $4, $4
TAG245:
sb $2, 0($2)
multu $2, $2
srlv $3, $2, $2
lui $4, 15
TAG246:
mfhi $2
lhu $4, 0($2)
sw $4, -256($4)
multu $4, $2
TAG247:
div $4, $4
beq $4, $4, TAG248
divu $4, $4
mflo $3
TAG248:
beq $3, $3, TAG249
sb $3, 0($3)
mult $3, $3
bne $3, $3, TAG249
TAG249:
lb $1, 0($3)
mult $1, $1
multu $1, $1
mfhi $3
TAG250:
sllv $2, $3, $3
lb $2, 0($3)
lui $1, 2
lhu $2, 0($3)
TAG251:
sll $0, $0, 0
sb $2, -256($2)
bne $2, $1, TAG252
sltiu $2, $1, 5
TAG252:
lbu $3, 0($2)
andi $1, $2, 14
bgtz $1, TAG253
add $2, $3, $3
TAG253:
bgtz $2, TAG254
mthi $2
mflo $4
sh $2, 0($4)
TAG254:
mult $4, $4
mtlo $4
ori $4, $4, 12
and $2, $4, $4
TAG255:
mfhi $1
lui $2, 9
sll $0, $0, 0
mfhi $1
TAG256:
beq $1, $1, TAG257
sb $1, 0($1)
lui $3, 4
mult $1, $1
TAG257:
bgez $3, TAG258
slti $4, $3, 8
divu $3, $3
mfhi $2
TAG258:
sll $0, $0, 0
slti $2, $1, 13
bne $2, $1, TAG259
mult $2, $2
TAG259:
srav $2, $2, $2
bne $2, $2, TAG260
mfhi $1
srlv $4, $1, $2
TAG260:
bgtz $4, TAG261
mflo $4
mfhi $1
srav $1, $4, $4
TAG261:
mflo $2
lw $1, 0($1)
lui $1, 3
mfhi $1
TAG262:
lui $4, 13
bgez $1, TAG263
subu $2, $1, $1
addu $3, $2, $1
TAG263:
mfhi $3
sllv $1, $3, $3
bne $3, $3, TAG264
sh $3, 0($1)
TAG264:
lh $3, 0($1)
mflo $4
bne $4, $3, TAG265
mflo $4
TAG265:
bgtz $4, TAG266
slt $4, $4, $4
srl $4, $4, 0
add $1, $4, $4
TAG266:
ori $3, $1, 4
bne $1, $3, TAG267
div $3, $3
addi $1, $1, 5
TAG267:
lb $3, 0($1)
and $1, $1, $3
mult $1, $3
srav $4, $1, $3
TAG268:
bgez $4, TAG269
mtlo $4
lh $3, 0($4)
mflo $2
TAG269:
addiu $4, $2, 7
lb $4, 0($4)
addi $2, $4, 8
srl $1, $2, 12
TAG270:
mfhi $4
lui $1, 13
or $1, $4, $1
mflo $1
TAG271:
lb $2, 0($1)
addu $2, $1, $2
mult $1, $2
blez $2, TAG272
TAG272:
lbu $2, 0($2)
bgtz $2, TAG273
subu $4, $2, $2
beq $4, $4, TAG273
TAG273:
sltiu $2, $4, 11
lbu $1, 0($4)
lb $4, 0($2)
beq $4, $2, TAG274
TAG274:
multu $4, $4
beq $4, $4, TAG275
mtlo $4
mult $4, $4
TAG275:
mtlo $4
xori $2, $4, 2
mtlo $4
divu $4, $2
TAG276:
multu $2, $2
lhu $3, 0($2)
bne $3, $3, TAG277
lui $1, 6
TAG277:
sll $0, $0, 0
lui $2, 9
srl $4, $1, 7
bne $2, $2, TAG278
TAG278:
addiu $1, $4, 6
sllv $3, $4, $4
mfhi $3
lhu $4, -3072($4)
TAG279:
sh $4, 0($4)
lui $1, 6
sll $0, $0, 0
lhu $2, 0($4)
TAG280:
slt $1, $2, $2
lui $4, 5
bgez $2, TAG281
mfhi $1
TAG281:
mthi $1
lhu $3, 0($1)
sltu $2, $3, $1
mult $1, $3
TAG282:
beq $2, $2, TAG283
mfhi $2
sh $2, 0($2)
slti $4, $2, 8
TAG283:
multu $4, $4
mflo $4
bne $4, $4, TAG284
lh $3, 0($4)
TAG284:
mthi $3
or $3, $3, $3
lui $4, 11
sh $4, 0($3)
TAG285:
multu $4, $4
blez $4, TAG286
sll $0, $0, 0
bgtz $4, TAG286
TAG286:
mtlo $4
xori $4, $4, 3
srl $2, $4, 1
mtlo $4
TAG287:
sltiu $4, $2, 5
bgtz $4, TAG288
addiu $3, $2, 8
lhu $2, 0($4)
TAG288:
bne $2, $2, TAG289
ori $2, $2, 1
nor $2, $2, $2
mthi $2
TAG289:
sra $3, $2, 15
div $3, $3
divu $3, $3
slt $1, $2, $2
TAG290:
bltz $1, TAG291
sw $1, 0($1)
sll $2, $1, 4
mult $1, $2
TAG291:
mthi $2
andi $4, $2, 2
mflo $3
lui $4, 2
TAG292:
nor $1, $4, $4
multu $1, $4
sll $0, $0, 0
sra $3, $4, 10
TAG293:
lui $3, 11
mflo $2
divu $3, $3
sll $0, $0, 0
TAG294:
addiu $1, $3, 12
mthi $3
sll $0, $0, 0
divu $3, $3
TAG295:
div $1, $1
div $1, $1
mfhi $2
mtlo $1
TAG296:
nor $3, $2, $2
mthi $2
blez $2, TAG297
lw $1, 1($3)
TAG297:
lui $1, 12
lui $3, 7
addiu $3, $3, 0
addiu $2, $3, 2
TAG298:
slt $4, $2, $2
multu $2, $4
blez $2, TAG299
sll $0, $0, 0
TAG299:
sb $4, 0($4)
blez $4, TAG300
xor $2, $4, $4
bgtz $2, TAG300
TAG300:
mflo $2
mflo $1
lhu $1, 0($1)
mfhi $4
TAG301:
beq $4, $4, TAG302
lui $3, 10
subu $1, $3, $4
blez $1, TAG302
TAG302:
lh $4, 0($1)
lhu $4, 0($1)
lui $2, 14
addiu $4, $4, 13
TAG303:
or $3, $4, $4
divu $4, $4
mtlo $4
mthi $3
TAG304:
beq $3, $3, TAG305
mtlo $3
sra $2, $3, 3
mtlo $3
TAG305:
mtlo $2
and $3, $2, $2
mtlo $2
mtlo $2
TAG306:
mtlo $3
lui $1, 6
div $3, $1
lui $1, 13
TAG307:
sll $0, $0, 0
lui $2, 10
beq $2, $2, TAG308
sll $1, $1, 13
TAG308:
mfhi $1
bgez $1, TAG309
mult $1, $1
mthi $1
TAG309:
andi $3, $1, 10
mthi $3
lw $3, 0($3)
addiu $3, $1, 14
TAG310:
mult $3, $3
and $4, $3, $3
bne $4, $3, TAG311
addu $2, $3, $3
TAG311:
divu $2, $2
mfhi $3
sll $0, $0, 0
bltz $3, TAG312
TAG312:
nor $3, $3, $3
beq $3, $3, TAG313
lui $1, 4
lw $2, 0($3)
TAG313:
mtlo $2
lui $1, 10
mtlo $2
mtlo $2
TAG314:
multu $1, $1
beq $1, $1, TAG315
addu $4, $1, $1
bgez $1, TAG315
TAG315:
srlv $4, $4, $4
addiu $2, $4, 4
div $2, $4
sll $0, $0, 0
TAG316:
divu $1, $1
mthi $1
addu $4, $1, $1
addiu $4, $1, 4
TAG317:
sll $0, $0, 0
bgez $4, TAG318
lui $4, 14
lui $1, 1
TAG318:
addiu $2, $1, 10
lui $1, 12
beq $2, $1, TAG319
multu $1, $1
TAG319:
beq $1, $1, TAG320
subu $1, $1, $1
mfhi $1
lb $2, 0($1)
TAG320:
multu $2, $2
blez $2, TAG321
addiu $3, $2, 7
sll $0, $0, 0
TAG321:
sll $0, $0, 0
mtlo $3
and $3, $3, $3
beq $3, $3, TAG322
TAG322:
subu $3, $3, $3
lbu $3, 0($3)
sw $3, 0($3)
mthi $3
TAG323:
nor $2, $3, $3
mthi $3
sh $2, 0($3)
lui $4, 10
TAG324:
beq $4, $4, TAG325
or $2, $4, $4
mthi $4
mflo $4
TAG325:
mtlo $4
bltz $4, TAG326
mfhi $1
bgtz $4, TAG326
TAG326:
lui $1, 13
bltz $1, TAG327
sll $0, $0, 0
sll $0, $0, 0
TAG327:
sllv $2, $1, $1
blez $1, TAG328
lui $4, 5
divu $4, $2
TAG328:
mthi $4
bne $4, $4, TAG329
lui $2, 15
multu $2, $4
TAG329:
sll $0, $0, 0
mfhi $3
multu $3, $3
bltz $3, TAG330
TAG330:
mtlo $3
bltz $3, TAG331
lui $2, 8
srav $4, $2, $3
TAG331:
lui $4, 11
lui $3, 2
bne $4, $3, TAG332
lui $2, 9
TAG332:
mflo $1
lui $1, 1
lui $2, 6
beq $1, $2, TAG333
TAG333:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG334
sll $0, $0, 0
TAG334:
lui $2, 3
srav $2, $2, $2
mfhi $2
sw $2, 0($2)
TAG335:
sra $3, $2, 14
beq $3, $2, TAG336
sltiu $4, $2, 9
addi $3, $3, 9
TAG336:
mthi $3
sh $3, 0($3)
srav $2, $3, $3
lw $4, 0($3)
TAG337:
bgtz $4, TAG338
lh $3, 0($4)
mult $4, $3
lbu $2, 0($4)
TAG338:
mfhi $4
multu $4, $4
beq $2, $2, TAG339
mthi $4
TAG339:
mfhi $4
mthi $4
sb $4, 0($4)
multu $4, $4
TAG340:
mflo $4
beq $4, $4, TAG341
sh $4, 0($4)
blez $4, TAG341
TAG341:
mthi $4
mthi $4
multu $4, $4
mflo $2
TAG342:
sllv $4, $2, $2
lbu $4, 0($4)
srlv $4, $4, $4
sb $4, 0($4)
TAG343:
mflo $1
sltu $4, $4, $1
lui $2, 9
mflo $3
TAG344:
bne $3, $3, TAG345
andi $2, $3, 2
bltz $3, TAG345
lui $4, 3
TAG345:
bne $4, $4, TAG346
lui $4, 7
lui $4, 11
sll $0, $0, 0
TAG346:
mfhi $2
sll $0, $0, 0
ori $3, $2, 15
mflo $3
TAG347:
sb $3, 0($3)
andi $1, $3, 15
mthi $1
addiu $4, $3, 2
TAG348:
and $2, $4, $4
lui $3, 8
mfhi $2
lui $4, 14
TAG349:
mfhi $2
slti $4, $4, 5
lb $2, 0($4)
lui $4, 3
TAG350:
bltz $4, TAG351
srav $3, $4, $4
mtlo $3
sll $0, $0, 0
TAG351:
mflo $3
and $1, $3, $3
sra $2, $1, 1
sll $0, $0, 0
TAG352:
subu $2, $2, $2
bne $2, $2, TAG353
mflo $1
bltz $1, TAG353
TAG353:
mflo $3
lui $1, 10
mthi $1
sll $0, $0, 0
TAG354:
blez $2, TAG355
or $4, $2, $2
mtlo $4
sll $2, $2, 8
TAG355:
lui $4, 2
bne $4, $2, TAG356
sltu $4, $4, $2
beq $4, $4, TAG356
TAG356:
multu $4, $4
mfhi $1
xori $3, $1, 3
sh $1, 0($1)
TAG357:
mfhi $2
xor $1, $3, $2
multu $3, $2
lbu $3, 0($1)
TAG358:
add $4, $3, $3
mfhi $2
lhu $4, 0($2)
lh $1, 0($4)
TAG359:
mflo $3
lui $1, 6
addiu $3, $3, 11
mthi $1
TAG360:
lui $3, 2
bne $3, $3, TAG361
lui $2, 10
addiu $2, $3, 9
TAG361:
sll $0, $0, 0
slt $2, $2, $1
divu $2, $1
addu $4, $1, $2
TAG362:
beq $4, $4, TAG363
div $4, $4
lui $2, 9
lui $3, 13
TAG363:
bgtz $3, TAG364
lui $2, 3
sb $3, 0($2)
div $2, $2
TAG364:
sll $0, $0, 0
lui $3, 2
lui $2, 14
nor $2, $3, $3
TAG365:
mult $2, $2
bne $2, $2, TAG366
sll $0, $0, 0
sll $0, $0, 0
TAG366:
lui $4, 4
multu $4, $4
bgez $2, TAG367
lui $4, 0
TAG367:
lui $3, 4
lui $2, 1
mtlo $4
bne $4, $2, TAG368
TAG368:
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG369:
lui $1, 14
xori $2, $2, 14
mfhi $1
div $1, $2
TAG370:
lb $4, 0($1)
bgez $1, TAG371
nor $4, $1, $1
mfhi $3
TAG371:
sra $4, $3, 1
bgtz $3, TAG372
mthi $3
addi $1, $4, 15
TAG372:
sb $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
bltz $1, TAG373
TAG373:
xori $2, $1, 1
beq $2, $1, TAG374
mthi $2
sltu $4, $2, $2
TAG374:
addiu $1, $4, 10
mflo $3
beq $3, $3, TAG375
mult $4, $4
TAG375:
sb $3, 0($3)
lui $1, 6
sll $0, $0, 0
multu $1, $3
TAG376:
bne $1, $1, TAG377
ori $2, $1, 14
bgez $2, TAG377
mtlo $2
TAG377:
slti $4, $2, 9
multu $4, $4
and $3, $4, $2
sll $3, $2, 9
TAG378:
mult $3, $3
sll $0, $0, 0
divu $3, $2
div $3, $3
TAG379:
beq $2, $2, TAG380
ori $2, $2, 4
bltz $2, TAG380
sw $2, 0($2)
TAG380:
divu $2, $2
bltz $2, TAG381
sll $0, $0, 0
mult $2, $2
TAG381:
blez $4, TAG382
sh $4, 0($4)
lbu $1, 0($4)
sltiu $3, $1, 4
TAG382:
xor $1, $3, $3
sll $0, $0, 0
lui $3, 3
sllv $1, $3, $3
TAG383:
lui $1, 12
sll $0, $0, 0
sltiu $2, $1, 4
bne $1, $1, TAG384
TAG384:
lui $4, 4
div $2, $4
mtlo $4
mult $2, $4
TAG385:
sll $0, $0, 0
bgtz $4, TAG386
mtlo $4
mfhi $4
TAG386:
bne $4, $4, TAG387
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG387:
mthi $2
sh $2, 0($2)
srav $1, $2, $2
beq $2, $2, TAG388
TAG388:
mthi $1
beq $1, $1, TAG389
sra $1, $1, 1
lhu $2, 0($1)
TAG389:
slti $4, $2, 3
mfhi $4
lui $2, 4
lui $3, 15
TAG390:
div $3, $3
bgtz $3, TAG391
srav $2, $3, $3
lui $3, 9
TAG391:
mthi $3
sll $0, $0, 0
mflo $2
sltiu $1, $3, 11
TAG392:
lhu $2, 0($1)
bne $1, $2, TAG393
lui $1, 0
xori $1, $2, 5
TAG393:
lb $3, 0($1)
mfhi $3
lui $2, 10
mfhi $1
TAG394:
bgez $1, TAG395
div $1, $1
lh $4, 0($1)
mtlo $1
TAG395:
sw $4, 0($4)
addu $1, $4, $4
addiu $3, $4, 5
subu $2, $1, $4
TAG396:
lbu $3, 0($2)
mtlo $3
multu $3, $2
lui $3, 13
TAG397:
lui $2, 10
mfhi $1
bne $3, $3, TAG398
subu $2, $1, $2
TAG398:
bne $2, $2, TAG399
mtlo $2
bne $2, $2, TAG399
sll $0, $0, 0
TAG399:
multu $1, $1
bgtz $1, TAG400
addi $3, $1, 0
bne $3, $3, TAG400
TAG400:
mthi $3
lui $4, 4
bgtz $3, TAG401
mflo $2
TAG401:
sw $2, 0($2)
multu $2, $2
bne $2, $2, TAG402
slti $4, $2, 2
TAG402:
multu $4, $4
divu $4, $4
lui $4, 14
mthi $4
TAG403:
div $4, $4
sltu $2, $4, $4
slti $4, $4, 4
mfhi $4
TAG404:
nor $2, $4, $4
addi $2, $4, 10
mthi $2
mfhi $2
TAG405:
mthi $2
lui $3, 11
bltz $2, TAG406
sra $2, $3, 5
TAG406:
mult $2, $2
bne $2, $2, TAG407
sb $2, -22528($2)
lhu $2, -22528($2)
TAG407:
addiu $4, $2, 5
xori $3, $4, 0
multu $3, $2
divu $4, $4
TAG408:
beq $3, $3, TAG409
div $3, $3
mtlo $3
add $3, $3, $3
TAG409:
sb $3, 0($3)
mflo $1
and $2, $1, $3
sb $1, 0($1)
TAG410:
lbu $4, 0($2)
bgtz $2, TAG411
sb $4, 0($2)
mflo $2
TAG411:
bgtz $2, TAG412
lui $4, 10
lw $2, 0($4)
nor $4, $4, $2
TAG412:
mtlo $4
multu $4, $4
lui $4, 6
beq $4, $4, TAG413
TAG413:
lui $2, 8
mfhi $2
sll $0, $0, 0
subu $3, $4, $4
TAG414:
lui $1, 10
sllv $4, $1, $1
blez $4, TAG415
mtlo $3
TAG415:
addu $4, $4, $4
sll $0, $0, 0
srl $3, $4, 12
mflo $2
TAG416:
bne $2, $2, TAG417
sw $2, 0($2)
sw $2, 0($2)
sltiu $4, $2, 10
TAG417:
bgtz $4, TAG418
mtlo $4
ori $4, $4, 1
slt $2, $4, $4
TAG418:
andi $4, $2, 5
blez $4, TAG419
sb $2, 0($2)
srav $4, $2, $4
TAG419:
sh $4, 0($4)
mfhi $3
beq $3, $4, TAG420
lui $3, 9
TAG420:
divu $3, $3
mfhi $2
beq $2, $2, TAG421
mtlo $3
TAG421:
sw $2, 0($2)
sltiu $4, $2, 2
lhu $4, 0($2)
mfhi $4
TAG422:
sw $4, 0($4)
sw $4, 0($4)
blez $4, TAG423
mthi $4
TAG423:
lui $4, 8
addiu $1, $4, 13
sll $0, $0, 0
mult $4, $4
TAG424:
mthi $1
lui $1, 11
divu $1, $1
mfhi $1
TAG425:
lui $4, 13
beq $1, $4, TAG426
sll $3, $1, 13
lb $1, 0($3)
TAG426:
srlv $3, $1, $1
mthi $3
lui $1, 7
bgtz $1, TAG427
TAG427:
multu $1, $1
sll $0, $0, 0
mthi $1
subu $4, $1, $1
TAG428:
ori $3, $4, 4
beq $4, $4, TAG429
mult $4, $4
multu $4, $3
TAG429:
addu $1, $3, $3
lbu $2, 0($1)
lhu $4, 0($2)
beq $2, $2, TAG430
TAG430:
divu $4, $4
lw $2, -2312($4)
beq $4, $4, TAG431
mflo $4
TAG431:
bgtz $4, TAG432
mtlo $4
mtlo $4
lw $1, 0($4)
TAG432:
beq $1, $1, TAG433
lui $2, 0
mthi $1
srav $2, $2, $1
TAG433:
sra $2, $2, 5
addu $1, $2, $2
multu $2, $1
multu $2, $2
TAG434:
bgtz $1, TAG435
mult $1, $1
bltz $1, TAG435
sb $1, 0($1)
TAG435:
mult $1, $1
mfhi $4
andi $1, $4, 14
lw $1, 0($1)
TAG436:
sh $1, 0($1)
mflo $1
mult $1, $1
slti $3, $1, 13
TAG437:
or $4, $3, $3
mflo $3
xor $3, $3, $4
slti $1, $4, 11
TAG438:
divu $1, $1
bgtz $1, TAG439
mtlo $1
sh $1, 0($1)
TAG439:
or $4, $1, $1
divu $4, $1
bgez $1, TAG440
lb $4, 0($4)
TAG440:
sw $4, 0($4)
sb $4, 0($4)
srl $4, $4, 5
bne $4, $4, TAG441
TAG441:
lb $3, 0($4)
lbu $4, 0($4)
addiu $4, $4, 4
mthi $4
TAG442:
or $1, $4, $4
mflo $4
lb $2, 0($4)
lb $2, 0($4)
TAG443:
mult $2, $2
mult $2, $2
multu $2, $2
mtlo $2
TAG444:
or $2, $2, $2
mult $2, $2
lbu $4, 0($2)
mthi $4
TAG445:
lb $3, 0($4)
mthi $3
mult $3, $3
mflo $1
TAG446:
slt $2, $1, $1
lhu $4, 0($1)
lw $3, 0($1)
bne $1, $3, TAG447
TAG447:
andi $3, $3, 5
multu $3, $3
nor $1, $3, $3
sh $1, 0($3)
TAG448:
bgez $1, TAG449
divu $1, $1
sll $4, $1, 2
mtlo $4
TAG449:
bne $4, $4, TAG450
lui $3, 9
mflo $3
mfhi $1
TAG450:
mflo $4
sltu $3, $4, $1
bgez $3, TAG451
lui $4, 1
TAG451:
sltiu $2, $4, 1
lui $2, 4
slt $4, $4, $2
mthi $4
TAG452:
mtlo $4
lui $3, 6
mfhi $4
srl $2, $4, 5
TAG453:
lui $2, 0
ori $4, $2, 8
bne $2, $2, TAG454
addi $1, $2, 15
TAG454:
lui $3, 5
mtlo $1
multu $1, $1
lui $4, 7
TAG455:
mflo $4
xori $3, $4, 14
lui $4, 0
mtlo $4
TAG456:
bgtz $4, TAG457
sltiu $2, $4, 9
beq $4, $4, TAG457
mflo $4
TAG457:
blez $4, TAG458
srav $1, $4, $4
andi $1, $4, 10
nor $4, $1, $1
TAG458:
mfhi $2
mthi $2
mtlo $4
mfhi $3
TAG459:
addu $1, $3, $3
bne $3, $1, TAG460
multu $3, $1
ori $1, $1, 1
TAG460:
lui $1, 1
sllv $3, $1, $1
bltz $1, TAG461
mfhi $3
TAG461:
bgtz $3, TAG462
mflo $1
mfhi $3
lui $2, 14
TAG462:
bgez $2, TAG463
sll $0, $0, 0
lui $1, 1
bne $1, $1, TAG463
TAG463:
lui $2, 14
sw $1, 0($1)
mult $2, $2
multu $1, $1
TAG464:
div $2, $2
sll $3, $2, 13
sll $0, $0, 0
beq $3, $2, TAG465
TAG465:
subu $3, $2, $2
multu $2, $3
lui $1, 7
blez $1, TAG466
TAG466:
divu $1, $1
sll $0, $0, 0
beq $4, $4, TAG467
lui $3, 14
TAG467:
mtlo $3
divu $3, $3
mfhi $3
lb $3, 0($3)
TAG468:
sra $3, $3, 4
mtlo $3
mthi $3
blez $3, TAG469
TAG469:
sb $3, 0($3)
lw $4, 0($3)
sw $4, 0($3)
slti $3, $3, 3
TAG470:
mtlo $3
blez $3, TAG471
sllv $1, $3, $3
bltz $1, TAG471
TAG471:
lbu $3, 0($1)
mflo $2
sh $2, 0($1)
bne $1, $3, TAG472
TAG472:
and $3, $2, $2
lbu $2, 0($3)
mflo $1
lb $1, 0($3)
TAG473:
multu $1, $1
slti $1, $1, 13
lbu $4, 0($1)
blez $1, TAG474
TAG474:
mfhi $1
lb $4, 0($4)
mflo $4
mfhi $1
TAG475:
slt $4, $1, $1
lui $2, 6
addu $1, $2, $1
sll $0, $0, 0
TAG476:
mfhi $1
xori $3, $1, 1
mfhi $4
sltu $4, $3, $3
TAG477:
bne $4, $4, TAG478
subu $2, $4, $4
mfhi $4
bne $4, $2, TAG478
TAG478:
lui $4, 15
mfhi $4
bgtz $4, TAG479
mtlo $4
TAG479:
lui $2, 14
mflo $3
mult $4, $3
mtlo $3
TAG480:
sh $3, 0($3)
blez $3, TAG481
mult $3, $3
and $2, $3, $3
TAG481:
multu $2, $2
sll $0, $0, 0
multu $3, $2
mult $2, $3
TAG482:
srl $2, $3, 13
beq $2, $2, TAG483
multu $3, $2
addiu $1, $3, 0
TAG483:
lbu $4, 0($1)
lui $4, 11
andi $1, $4, 12
mfhi $3
TAG484:
addiu $1, $3, 8
sh $1, 0($1)
sh $1, 0($1)
bne $1, $1, TAG485
TAG485:
sw $1, 0($1)
subu $4, $1, $1
lh $3, 0($4)
mfhi $2
TAG486:
lui $3, 12
lbu $4, 0($2)
sw $3, 0($2)
slti $2, $3, 4
TAG487:
mfhi $3
mflo $4
mult $4, $3
andi $1, $2, 4
TAG488:
mflo $1
sw $1, 0($1)
beq $1, $1, TAG489
multu $1, $1
TAG489:
mult $1, $1
srav $4, $1, $1
mflo $2
mflo $4
TAG490:
or $1, $4, $4
lui $3, 8
mtlo $1
mtlo $1
TAG491:
bgez $3, TAG492
sll $0, $0, 0
divu $3, $3
sw $3, 0($3)
TAG492:
sll $0, $0, 0
bne $4, $3, TAG493
mthi $4
lui $1, 15
TAG493:
nor $3, $1, $1
bne $3, $1, TAG494
sw $3, 0($1)
mflo $3
TAG494:
srav $4, $3, $3
blez $3, TAG495
lh $1, 1($4)
addiu $3, $1, 14
TAG495:
beq $3, $3, TAG496
sltiu $4, $3, 10
lw $1, 0($3)
mthi $1
TAG496:
mtlo $1
srav $2, $1, $1
bne $2, $1, TAG497
mflo $3
TAG497:
bne $3, $3, TAG498
sra $1, $3, 1
bltz $1, TAG498
sb $3, 1($1)
TAG498:
sra $1, $1, 13
bne $1, $1, TAG499
ori $4, $1, 8
lui $1, 8
TAG499:
bgez $1, TAG500
mtlo $1
mthi $1
lhu $1, 0($1)
TAG500:
bltz $1, TAG501
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG501:
sll $0, $0, 0
sra $4, $3, 2
sltu $3, $1, $3
bgtz $4, TAG502
TAG502:
mtlo $3
bltz $3, TAG503
subu $2, $3, $3
bgez $3, TAG503
TAG503:
sw $2, 0($2)
lui $3, 12
lui $2, 7
lui $4, 10
TAG504:
sll $0, $0, 0
div $2, $4
srl $4, $2, 6
sll $0, $0, 0
TAG505:
bne $4, $4, TAG506
srl $2, $4, 11
sll $2, $4, 14
lui $3, 0
TAG506:
lw $4, 0($3)
bgtz $3, TAG507
sb $3, 0($4)
sh $3, 0($3)
TAG507:
mflo $4
lh $3, 0($4)
xor $3, $4, $4
addiu $1, $3, 5
TAG508:
lb $1, 0($1)
blez $1, TAG509
lui $1, 6
sll $0, $0, 0
TAG509:
sll $0, $0, 0
bne $1, $1, TAG510
mthi $1
and $1, $1, $1
TAG510:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
mtlo $1
TAG511:
mthi $2
blez $2, TAG512
mfhi $3
sll $0, $0, 0
TAG512:
bne $3, $3, TAG513
mtlo $3
bne $3, $3, TAG513
sll $0, $0, 0
TAG513:
bgtz $3, TAG514
lui $2, 12
lbu $1, 0($3)
bne $1, $1, TAG514
TAG514:
sltiu $1, $1, 13
sltiu $4, $1, 6
beq $1, $1, TAG515
lui $2, 3
TAG515:
sll $4, $2, 5
mfhi $4
div $2, $2
mtlo $2
TAG516:
mtlo $4
slti $1, $4, 9
slt $4, $1, $1
sllv $2, $4, $4
TAG517:
xor $2, $2, $2
mfhi $3
sw $3, 0($3)
srl $1, $3, 4
TAG518:
blez $1, TAG519
multu $1, $1
lui $4, 11
srl $3, $1, 2
TAG519:
lui $3, 5
srlv $1, $3, $3
blez $1, TAG520
mtlo $3
TAG520:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG521:
mthi $4
mthi $4
mthi $4
bne $4, $4, TAG522
TAG522:
and $4, $4, $4
bne $4, $4, TAG523
sll $0, $0, 0
slt $2, $4, $4
TAG523:
beq $2, $2, TAG524
mfhi $1
mflo $2
beq $2, $1, TAG524
TAG524:
mthi $2
sw $2, 0($2)
beq $2, $2, TAG525
mult $2, $2
TAG525:
multu $2, $2
sltiu $1, $2, 11
lui $4, 2
lui $4, 8
TAG526:
mthi $4
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG527
TAG527:
mtlo $4
bne $4, $4, TAG528
addu $1, $4, $4
sltu $3, $1, $4
TAG528:
bne $3, $3, TAG529
sll $4, $3, 8
sll $3, $3, 0
bne $3, $3, TAG529
TAG529:
lui $2, 0
lh $3, 0($3)
blez $3, TAG530
mtlo $2
TAG530:
lhu $3, 0($3)
mflo $3
beq $3, $3, TAG531
mtlo $3
TAG531:
sub $2, $3, $3
sh $2, 0($2)
multu $3, $3
mthi $2
TAG532:
mult $2, $2
andi $1, $2, 9
mthi $1
ori $4, $2, 13
TAG533:
bne $4, $4, TAG534
sb $4, 0($4)
div $4, $4
beq $4, $4, TAG534
TAG534:
divu $4, $4
mtlo $4
multu $4, $4
multu $4, $4
TAG535:
bgez $4, TAG536
mtlo $4
mtlo $4
multu $4, $4
TAG536:
divu $4, $4
mfhi $4
srav $2, $4, $4
bgtz $2, TAG537
TAG537:
lw $4, 0($2)
sh $2, 0($4)
addiu $3, $2, 8
xori $1, $3, 10
TAG538:
bltz $1, TAG539
sb $1, 0($1)
lui $2, 9
lui $1, 6
TAG539:
xori $2, $1, 7
sll $0, $0, 0
srav $1, $2, $2
multu $2, $1
TAG540:
multu $1, $1
sw $1, -3072($1)
blez $1, TAG541
lh $2, -3072($1)
TAG541:
mult $2, $2
mflo $3
lb $2, -3072($2)
or $1, $2, $2
TAG542:
mflo $4
bltz $1, TAG543
lui $1, 1
bne $1, $1, TAG543
TAG543:
addiu $3, $1, 5
bgez $3, TAG544
nor $4, $3, $3
beq $4, $4, TAG544
TAG544:
mflo $2
bgez $2, TAG545
sll $0, $0, 0
sh $4, 0($4)
TAG545:
beq $2, $2, TAG546
sll $0, $0, 0
sll $1, $2, 11
multu $1, $1
TAG546:
sll $0, $0, 0
sltiu $1, $2, 13
sll $0, $0, 0
multu $2, $2
TAG547:
bltz $1, TAG548
lui $3, 6
bne $3, $3, TAG548
sll $0, $0, 0
TAG548:
mflo $1
mthi $3
mtlo $3
blez $3, TAG549
TAG549:
sw $1, 0($1)
lui $2, 14
addu $2, $2, $1
div $2, $2
TAG550:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
bgez $2, TAG551
TAG551:
sll $0, $0, 0
mflo $2
lui $1, 11
bgtz $2, TAG552
TAG552:
lui $2, 12
subu $4, $1, $1
mthi $1
mtlo $1
TAG553:
sub $4, $4, $4
mthi $4
xor $2, $4, $4
sw $4, 0($4)
TAG554:
sll $4, $2, 14
lui $4, 12
mthi $4
bne $4, $2, TAG555
TAG555:
lui $4, 0
mthi $4
mtlo $4
sb $4, 0($4)
TAG556:
sll $2, $4, 7
sw $4, 0($2)
andi $3, $2, 10
lh $2, 0($3)
TAG557:
slti $3, $2, 14
srl $3, $2, 9
bne $3, $3, TAG558
srl $1, $2, 14
TAG558:
lui $2, 8
lbu $4, 0($1)
bltz $2, TAG559
lh $2, 0($4)
TAG559:
beq $2, $2, TAG560
mtlo $2
srav $1, $2, $2
lhu $4, 0($2)
TAG560:
lui $2, 12
bne $2, $2, TAG561
sltu $2, $2, $2
lhu $3, 0($4)
TAG561:
lui $4, 15
sll $0, $0, 0
lui $2, 11
beq $4, $4, TAG562
TAG562:
addiu $2, $2, 14
mult $2, $2
addiu $2, $2, 13
mflo $3
TAG563:
sll $0, $0, 0
lhu $3, 0($1)
mtlo $3
mult $3, $3
TAG564:
sh $3, 0($3)
lw $1, 0($3)
beq $3, $3, TAG565
mtlo $1
TAG565:
mtlo $1
mult $1, $1
sltiu $3, $1, 10
bltz $1, TAG566
TAG566:
nor $3, $3, $3
sll $2, $3, 4
lb $3, 32($2)
mult $2, $3
TAG567:
bne $3, $3, TAG568
mult $3, $3
bltz $3, TAG568
mfhi $2
TAG568:
lw $1, 0($2)
lui $4, 5
sh $2, 0($1)
sll $1, $2, 8
TAG569:
sw $1, 0($1)
sllv $1, $1, $1
mtlo $1
mult $1, $1
TAG570:
mtlo $1
lbu $3, 0($1)
bgtz $1, TAG571
sltiu $3, $1, 14
TAG571:
mflo $3
sb $3, 0($3)
addiu $1, $3, 8
sw $3, 0($3)
TAG572:
mfhi $4
addiu $1, $1, 13
sll $1, $1, 5
xori $1, $1, 13
TAG573:
sll $0, $0, 0
nor $2, $3, $1
blez $2, TAG574
mfhi $4
TAG574:
sltiu $4, $4, 15
lb $2, 0($4)
sll $4, $4, 8
lui $1, 1
TAG575:
sll $0, $0, 0
lhu $4, 0($3)
xor $3, $4, $3
bltz $3, TAG576
TAG576:
mflo $4
sll $2, $4, 1
srl $1, $3, 0
multu $2, $4
TAG577:
mflo $3
sh $1, 0($1)
sub $3, $1, $3
lui $3, 3
TAG578:
divu $3, $3
sll $0, $0, 0
mfhi $2
bgez $3, TAG579
TAG579:
slt $3, $2, $2
addiu $4, $2, 12
slt $1, $4, $4
addu $3, $1, $3
TAG580:
mflo $2
beq $2, $3, TAG581
mtlo $3
lbu $2, 0($2)
TAG581:
sh $2, 0($2)
ori $2, $2, 3
bgez $2, TAG582
sltiu $4, $2, 8
TAG582:
sb $4, 0($4)
mthi $4
lui $4, 8
beq $4, $4, TAG583
TAG583:
and $4, $4, $4
sra $2, $4, 15
mfhi $2
lui $2, 5
TAG584:
mtlo $2
mult $2, $2
mtlo $2
sltiu $3, $2, 14
TAG585:
srl $1, $3, 7
mtlo $3
slt $2, $1, $3
sb $2, 0($1)
TAG586:
bne $2, $2, TAG587
mflo $2
sw $2, 0($2)
sh $2, 0($2)
TAG587:
sb $2, 0($2)
mflo $4
bgez $2, TAG588
mtlo $4
TAG588:
lui $2, 8
sra $2, $2, 0
bltz $4, TAG589
sll $0, $0, 0
TAG589:
bltz $1, TAG590
slti $3, $1, 6
lhu $2, 0($1)
bgez $3, TAG590
TAG590:
multu $2, $2
bne $2, $2, TAG591
mult $2, $2
bltz $2, TAG591
TAG591:
lh $1, 0($2)
mthi $2
lh $4, 0($2)
bgez $2, TAG592
TAG592:
lw $1, 0($4)
bne $1, $1, TAG593
mtlo $1
addiu $2, $1, 10
TAG593:
lui $4, 13
slt $2, $2, $4
lui $4, 11
mflo $1
TAG594:
sltu $2, $1, $1
bne $2, $1, TAG595
mthi $1
mflo $2
TAG595:
sltiu $1, $2, 15
lui $3, 15
mult $1, $1
mtlo $1
TAG596:
multu $3, $3
sll $0, $0, 0
blez $3, TAG597
sll $0, $0, 0
TAG597:
lui $3, 5
sw $2, 0($2)
beq $2, $3, TAG598
mfhi $4
TAG598:
mtlo $4
div $4, $4
nor $1, $4, $4
mfhi $2
TAG599:
lui $4, 9
add $2, $2, $2
mthi $2
mfhi $4
TAG600:
mflo $2
mflo $4
lui $4, 6
beq $4, $2, TAG601
TAG601:
slt $3, $4, $4
mult $4, $3
sll $0, $0, 0
div $3, $4
TAG602:
slti $3, $3, 7
beq $3, $3, TAG603
sb $3, 0($3)
sw $3, 0($3)
TAG603:
mtlo $3
lui $2, 5
sll $0, $0, 0
sll $0, $0, 0
TAG604:
srlv $1, $3, $3
mult $1, $1
mthi $3
lui $2, 1
TAG605:
xori $3, $2, 14
mflo $1
sll $0, $0, 0
lui $2, 14
TAG606:
addiu $3, $2, 6
srl $4, $2, 0
bgez $3, TAG607
mtlo $3
TAG607:
sra $3, $4, 8
mflo $1
mflo $4
sll $0, $0, 0
TAG608:
lui $2, 0
srl $2, $4, 4
bltz $2, TAG609
mthi $2
TAG609:
sll $2, $2, 9
mthi $2
bgez $2, TAG610
sll $0, $0, 0
TAG610:
lui $4, 13
mtlo $3
subu $2, $3, $3
lui $2, 9
TAG611:
beq $2, $2, TAG612
ori $3, $2, 8
and $1, $3, $2
sb $1, 0($2)
TAG612:
sll $0, $0, 0
andi $4, $1, 3
sll $0, $0, 0
bgtz $4, TAG613
TAG613:
sh $4, 0($4)
srav $3, $4, $4
bne $3, $3, TAG614
mthi $4
TAG614:
mtlo $3
multu $3, $3
sw $3, 0($3)
mfhi $1
TAG615:
bgez $1, TAG616
sb $1, 0($1)
lh $3, 0($1)
sb $3, 0($3)
TAG616:
beq $3, $3, TAG617
sub $3, $3, $3
beq $3, $3, TAG617
lui $1, 12
TAG617:
lw $1, 0($1)
lw $1, 0($1)
bgtz $1, TAG618
sw $1, 0($1)
TAG618:
xori $4, $1, 11
addiu $2, $4, 5
bltz $1, TAG619
lbu $1, 0($4)
TAG619:
mthi $1
mfhi $3
bne $1, $1, TAG620
lui $3, 7
TAG620:
sltu $4, $3, $3
beq $3, $4, TAG621
addiu $3, $4, 2
xori $2, $3, 5
TAG621:
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
srav $2, $2, $2
TAG622:
subu $4, $2, $2
mthi $4
multu $4, $4
mthi $2
TAG623:
bne $4, $4, TAG624
lh $4, 0($4)
nor $4, $4, $4
beq $4, $4, TAG624
TAG624:
sll $0, $0, 0
sh $4, 0($2)
multu $2, $2
slt $1, $4, $2
TAG625:
addu $2, $1, $1
lui $3, 9
srlv $3, $1, $3
lhu $4, 0($2)
TAG626:
sh $4, 0($4)
mtlo $4
mflo $1
sh $4, 0($1)
TAG627:
lbu $4, 0($1)
lui $4, 2
mfhi $1
mthi $4
TAG628:
sh $1, 0($1)
mtlo $1
lb $2, 0($1)
sh $2, 0($1)
TAG629:
mult $2, $2
mtlo $2
beq $2, $2, TAG630
mtlo $2
TAG630:
beq $2, $2, TAG631
lh $3, 0($2)
bgez $3, TAG631
mthi $3
TAG631:
lui $1, 8
bgtz $3, TAG632
mflo $2
xori $3, $1, 1
TAG632:
bgtz $3, TAG633
sll $0, $0, 0
sltu $3, $3, $3
sw $1, 0($3)
TAG633:
lui $2, 15
lui $2, 13
div $2, $2
mtlo $3
TAG634:
mfhi $1
mtlo $1
multu $1, $1
mult $2, $1
TAG635:
sh $1, 0($1)
bne $1, $1, TAG636
sub $3, $1, $1
mthi $1
TAG636:
lui $2, 5
mult $2, $3
lui $1, 3
mflo $2
TAG637:
mtlo $2
beq $2, $2, TAG638
multu $2, $2
addi $3, $2, 2
TAG638:
bgez $3, TAG639
sw $3, 0($3)
lui $3, 15
div $3, $3
TAG639:
multu $3, $3
sw $3, 0($3)
sh $3, 0($3)
xor $4, $3, $3
TAG640:
bgtz $4, TAG641
mult $4, $4
lui $3, 7
sra $2, $3, 2
TAG641:
sll $0, $0, 0
divu $2, $2
subu $4, $2, $2
xori $2, $2, 10
TAG642:
andi $2, $2, 7
mflo $4
sb $2, 0($2)
bltz $2, TAG643
TAG643:
lbu $1, 0($4)
blez $1, TAG644
mflo $3
bgez $4, TAG644
TAG644:
lui $4, 14
addiu $2, $3, 6
bgez $4, TAG645
mtlo $4
TAG645:
mthi $2
sb $2, 0($2)
sltiu $3, $2, 6
multu $2, $2
TAG646:
mthi $3
mflo $2
blez $2, TAG647
multu $3, $2
TAG647:
bne $2, $2, TAG648
subu $1, $2, $2
mult $2, $1
xor $1, $1, $1
TAG648:
bgtz $1, TAG649
mthi $1
mult $1, $1
lh $1, 0($1)
TAG649:
srl $2, $1, 7
mult $1, $2
beq $2, $1, TAG650
and $3, $2, $2
TAG650:
mflo $1
mfhi $3
mfhi $1
sra $1, $3, 12
TAG651:
mthi $1
sb $1, 0($1)
mthi $1
beq $1, $1, TAG652
TAG652:
lui $4, 10
mfhi $1
lhu $2, 0($1)
bne $1, $2, TAG653
TAG653:
mflo $4
mflo $2
lhu $3, 0($2)
lbu $1, 0($4)
TAG654:
mflo $1
lui $1, 9
addiu $4, $1, 14
sll $1, $1, 2
TAG655:
xori $4, $1, 6
bne $1, $1, TAG656
xor $3, $1, $1
multu $3, $3
TAG656:
mflo $4
beq $4, $3, TAG657
mult $4, $4
mthi $4
TAG657:
xori $1, $4, 2
sw $4, 0($4)
bgtz $4, TAG658
srlv $1, $4, $4
TAG658:
xor $4, $1, $1
multu $4, $4
lui $1, 0
subu $2, $4, $4
TAG659:
mflo $4
lui $1, 6
sw $2, 0($2)
mtlo $2
TAG660:
bltz $1, TAG661
mfhi $2
bne $2, $2, TAG661
sh $2, 0($2)
TAG661:
lh $3, 0($2)
bltz $2, TAG662
addu $2, $2, $3
bne $2, $3, TAG662
TAG662:
subu $1, $2, $2
mtlo $2
multu $2, $2
xori $2, $2, 13
TAG663:
mtlo $2
bne $2, $2, TAG664
lui $4, 9
xori $4, $2, 5
TAG664:
beq $4, $4, TAG665
mtlo $4
mthi $4
beq $4, $4, TAG665
TAG665:
div $4, $4
lbu $3, 0($4)
bltz $3, TAG666
lw $4, 0($4)
TAG666:
mfhi $4
mthi $4
sw $4, 0($4)
lui $1, 13
TAG667:
ori $4, $1, 9
bgtz $1, TAG668
sll $3, $1, 9
mflo $3
TAG668:
lui $3, 11
div $3, $3
lui $4, 8
mthi $3
TAG669:
beq $4, $4, TAG670
sltu $2, $4, $4
srav $4, $2, $2
mfhi $2
TAG670:
lui $1, 13
sll $0, $0, 0
lui $2, 6
sll $0, $0, 0
TAG671:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
bltz $4, TAG672
TAG672:
addiu $3, $4, 5
bgez $3, TAG673
subu $2, $4, $4
mflo $1
TAG673:
sll $0, $0, 0
mult $1, $1
mtlo $1
mflo $3
TAG674:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
mfhi $3
TAG675:
sll $0, $0, 0
multu $4, $4
mflo $2
mflo $4
TAG676:
srl $1, $4, 11
sb $1, 0($4)
mult $1, $4
bne $4, $1, TAG677
TAG677:
sllv $1, $1, $1
xori $3, $1, 15
mfhi $4
sb $1, 0($1)
TAG678:
sh $4, 0($4)
srl $2, $4, 15
lui $2, 12
lw $2, 0($4)
TAG679:
lhu $3, 0($2)
bgez $3, TAG680
multu $2, $3
ori $3, $3, 0
TAG680:
sub $2, $3, $3
ori $2, $2, 6
mtlo $3
divu $2, $2
TAG681:
bgtz $2, TAG682
mflo $4
bgtz $2, TAG682
lui $3, 13
TAG682:
mthi $3
andi $1, $3, 4
beq $1, $3, TAG683
multu $1, $1
TAG683:
lw $3, 0($1)
mfhi $3
mult $1, $1
blez $3, TAG684
TAG684:
mult $3, $3
lhu $3, 0($3)
multu $3, $3
multu $3, $3
TAG685:
bgez $3, TAG686
mfhi $1
sb $1, 0($3)
mult $3, $3
TAG686:
mtlo $1
lbu $1, 0($1)
mult $1, $1
bltz $1, TAG687
TAG687:
lui $2, 0
mfhi $2
sw $1, 0($1)
mfhi $3
TAG688:
bgez $3, TAG689
nor $2, $3, $3
mfhi $2
div $2, $2
TAG689:
sll $3, $2, 13
mflo $2
mtlo $3
blez $2, TAG690
TAG690:
lh $2, 0($2)
lui $1, 4
bgtz $2, TAG691
nor $3, $2, $1
TAG691:
bgtz $3, TAG692
and $3, $3, $3
div $3, $3
sll $0, $0, 0
TAG692:
bne $3, $3, TAG693
sll $0, $0, 0
blez $3, TAG693
lui $4, 9
TAG693:
lui $1, 8
mflo $4
lbu $3, 0($4)
mtlo $3
TAG694:
sw $3, 0($3)
bltz $3, TAG695
add $3, $3, $3
mthi $3
TAG695:
lui $1, 13
mtlo $3
mflo $2
bne $2, $1, TAG696
TAG696:
lw $2, 0($2)
bne $2, $2, TAG697
multu $2, $2
multu $2, $2
TAG697:
slt $4, $2, $2
bne $4, $4, TAG698
mflo $4
xori $3, $4, 8
TAG698:
lui $2, 6
mtlo $3
mtlo $3
mfhi $2
TAG699:
mfhi $4
lui $4, 6
slt $1, $2, $2
bltz $4, TAG700
TAG700:
xori $4, $1, 11
multu $4, $1
mfhi $4
lui $2, 0
TAG701:
addi $1, $2, 9
bne $2, $1, TAG702
mult $1, $1
xor $4, $1, $2
TAG702:
mflo $4
mtlo $4
blez $4, TAG703
srlv $1, $4, $4
TAG703:
mtlo $1
xor $1, $1, $1
mtlo $1
mult $1, $1
TAG704:
sb $1, 0($1)
multu $1, $1
bne $1, $1, TAG705
mult $1, $1
TAG705:
multu $1, $1
mult $1, $1
mult $1, $1
multu $1, $1
TAG706:
mfhi $3
lui $1, 2
lh $1, 0($3)
sb $1, 0($1)
TAG707:
lb $3, 0($1)
sh $3, 0($1)
lw $1, 0($1)
bltz $1, TAG708
TAG708:
slt $1, $1, $1
addu $2, $1, $1
mtlo $1
multu $1, $2
TAG709:
bltz $2, TAG710
sb $2, 0($2)
beq $2, $2, TAG710
lui $4, 2
TAG710:
subu $3, $4, $4
mthi $3
beq $4, $4, TAG711
xor $2, $4, $3
TAG711:
lui $3, 4
mflo $3
mfhi $3
bgtz $3, TAG712
TAG712:
sw $3, 0($3)
sb $3, 0($3)
xori $1, $3, 5
bne $3, $3, TAG713
TAG713:
lui $2, 6
mfhi $1
lui $2, 7
xori $4, $1, 2
TAG714:
lui $2, 6
beq $2, $4, TAG715
slti $3, $2, 1
mthi $3
TAG715:
addiu $2, $3, 14
sub $2, $3, $3
mult $2, $2
multu $3, $3
TAG716:
mtlo $2
lui $2, 1
srav $1, $2, $2
sll $0, $0, 0
TAG717:
multu $2, $2
sll $0, $0, 0
bgtz $4, TAG718
multu $4, $2
TAG718:
multu $4, $4
beq $4, $4, TAG719
mthi $4
xor $1, $4, $4
TAG719:
div $1, $1
sltu $3, $1, $1
sh $3, 0($3)
bltz $3, TAG720
TAG720:
sw $3, 0($3)
mtlo $3
bgez $3, TAG721
lui $2, 7
TAG721:
mfhi $2
lui $4, 12
xor $3, $4, $2
sll $0, $0, 0
TAG722:
mthi $1
or $1, $1, $1
mtlo $1
sll $0, $0, 0
TAG723:
beq $2, $2, TAG724
lui $2, 3
multu $2, $2
bne $2, $2, TAG724
TAG724:
mult $2, $2
lui $3, 0
srlv $2, $3, $3
sll $1, $2, 10
TAG725:
mtlo $1
add $4, $1, $1
blez $1, TAG726
or $1, $1, $1
TAG726:
lui $4, 14
mflo $4
lui $1, 0
sh $1, 0($1)
TAG727:
sh $1, 0($1)
mfhi $4
bne $1, $1, TAG728
mthi $1
TAG728:
sb $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
subu $4, $4, $4
TAG729:
lb $1, 0($4)
andi $1, $1, 0
multu $1, $4
andi $2, $1, 0
TAG730:
sb $2, 0($2)
lui $4, 10
addi $4, $2, 6
mflo $2
TAG731:
lh $4, 0($2)
lui $3, 15
sb $3, 0($2)
subu $2, $2, $3
TAG732:
lui $1, 6
mflo $2
beq $2, $2, TAG733
lw $2, 0($2)
TAG733:
srl $1, $2, 4
sb $2, 0($1)
sh $1, 0($1)
mflo $2
TAG734:
addu $2, $2, $2
lhu $1, 0($2)
lbu $3, 0($1)
mtlo $1
TAG735:
mfhi $1
and $1, $3, $3
lh $1, 0($1)
srl $2, $3, 12
TAG736:
bgez $2, TAG737
srl $1, $2, 0
div $2, $2
lw $4, 0($2)
TAG737:
andi $2, $4, 12
mthi $2
mfhi $3
mtlo $4
TAG738:
bltz $3, TAG739
mult $3, $3
mtlo $3
lbu $3, 0($3)
TAG739:
mfhi $4
bgtz $3, TAG740
lui $1, 8
mflo $1
TAG740:
slt $4, $1, $1
beq $1, $1, TAG741
lhu $1, 0($4)
blez $4, TAG741
TAG741:
sltu $1, $1, $1
xori $2, $1, 14
beq $1, $1, TAG742
sh $1, 0($1)
TAG742:
lui $1, 3
sll $4, $2, 7
divu $1, $2
lui $1, 0
TAG743:
mflo $1
sb $1, -14043($1)
sllv $3, $1, $1
sra $4, $3, 3
TAG744:
addiu $4, $4, 13
mfhi $4
blez $4, TAG745
divu $4, $4
TAG745:
divu $4, $4
lui $4, 11
or $2, $4, $4
bgtz $4, TAG746
TAG746:
sltu $2, $2, $2
mthi $2
lh $4, 0($2)
lui $4, 7
TAG747:
sll $0, $0, 0
or $1, $4, $4
bne $1, $4, TAG748
sll $0, $0, 0
TAG748:
mult $2, $2
sll $1, $2, 6
lui $1, 10
lui $2, 9
TAG749:
mflo $1
blez $2, TAG750
sll $0, $0, 0
lui $4, 4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop