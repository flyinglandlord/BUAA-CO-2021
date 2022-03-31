ori $1, $0, 3
ori $2, $0, 9
ori $3, $0, 7
ori $4, $0, 9
sw $2, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $4, 40($0)
sw $1, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $3, 124($0)
beq $2, $2, TAG1
mflo $2
mtlo $2
lui $1, 11
TAG1:
bne $1, $1, TAG2
mthi $1
bne $1, $1, TAG2
sb $1, 0($1)
TAG2:
bltz $1, TAG3
lb $4, 0($1)
sb $4, 0($4)
bltz $1, TAG3
TAG3:
lui $3, 0
mult $4, $3
addu $3, $3, $4
mtlo $3
TAG4:
multu $3, $3
sb $3, 0($3)
mflo $2
sb $3, 0($3)
TAG5:
lui $4, 14
mult $2, $4
div $2, $4
xori $2, $4, 3
TAG6:
mflo $4
bgez $4, TAG7
mtlo $4
blez $2, TAG7
TAG7:
sh $4, 0($4)
mthi $4
beq $4, $4, TAG8
mult $4, $4
TAG8:
lb $4, 0($4)
bgez $4, TAG9
multu $4, $4
slt $3, $4, $4
TAG9:
lui $3, 7
bgez $3, TAG10
sll $0, $0, 0
mthi $3
TAG10:
mult $4, $4
lui $1, 2
mfhi $4
mtlo $4
TAG11:
mtlo $4
mflo $3
xor $2, $3, $4
bgez $3, TAG12
TAG12:
mflo $2
slt $1, $2, $2
mthi $2
mflo $2
TAG13:
mult $2, $2
bgtz $2, TAG14
mult $2, $2
slt $3, $2, $2
TAG14:
sb $3, 0($3)
mult $3, $3
lui $2, 14
blez $3, TAG15
TAG15:
sllv $2, $2, $2
sltiu $4, $2, 7
andi $4, $4, 7
mult $4, $4
TAG16:
lui $4, 2
bne $4, $4, TAG17
mflo $1
mthi $4
TAG17:
lw $2, 0($1)
slt $2, $1, $2
mflo $3
multu $2, $1
TAG18:
sh $3, 0($3)
mult $3, $3
multu $3, $3
beq $3, $3, TAG19
TAG19:
sra $4, $3, 3
lhu $1, 0($4)
mult $3, $3
sh $1, 0($1)
TAG20:
bgtz $1, TAG21
multu $1, $1
sll $4, $1, 6
mfhi $2
TAG21:
mfhi $3
sltu $4, $2, $2
mtlo $2
sllv $4, $3, $4
TAG22:
lui $1, 11
sh $4, 0($4)
sll $0, $0, 0
addu $1, $4, $4
TAG23:
lui $2, 11
beq $2, $1, TAG24
mult $1, $2
lui $1, 15
TAG24:
sll $0, $0, 0
multu $1, $4
sllv $4, $1, $1
or $1, $1, $4
TAG25:
blez $1, TAG26
mfhi $1
multu $1, $1
beq $1, $1, TAG26
TAG26:
mthi $1
lw $3, 0($1)
sltiu $3, $3, 0
slti $1, $3, 2
TAG27:
lui $1, 2
mtlo $1
srl $2, $1, 6
div $1, $1
TAG28:
xori $1, $2, 12
sb $2, -2048($2)
sllv $3, $2, $1
mtlo $2
TAG29:
beq $3, $3, TAG30
sll $0, $0, 0
mfhi $1
blez $3, TAG30
TAG30:
mflo $2
sh $2, -2060($1)
mfhi $3
sh $3, -2048($2)
TAG31:
mtlo $3
bne $3, $3, TAG32
lb $3, 0($3)
multu $3, $3
TAG32:
srl $2, $3, 0
lb $2, 0($3)
lui $3, 2
beq $2, $3, TAG33
TAG33:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 15
addiu $1, $3, 4
TAG34:
bne $1, $1, TAG35
lui $2, 5
beq $2, $2, TAG35
mflo $3
TAG35:
beq $3, $3, TAG36
lui $1, 2
mtlo $1
sh $1, 0($3)
TAG36:
lui $3, 10
sll $0, $0, 0
sll $4, $1, 0
addiu $4, $4, 3
TAG37:
mthi $4
div $4, $4
mthi $4
div $4, $4
TAG38:
mthi $4
srav $2, $4, $4
bne $2, $4, TAG39
mfhi $2
TAG39:
beq $2, $2, TAG40
subu $2, $2, $2
bne $2, $2, TAG40
mthi $2
TAG40:
lui $1, 13
mfhi $4
lui $1, 3
multu $1, $1
TAG41:
bne $1, $1, TAG42
mthi $1
lui $1, 10
lui $1, 5
TAG42:
bgtz $1, TAG43
mthi $1
lui $1, 0
div $1, $1
TAG43:
mflo $1
mfhi $3
bltz $1, TAG44
sll $0, $0, 0
TAG44:
mtlo $3
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG45:
or $4, $2, $2
sltu $1, $2, $4
xori $1, $1, 11
mthi $2
TAG46:
lbu $4, 0($1)
blez $1, TAG47
mtlo $4
beq $4, $4, TAG47
TAG47:
mflo $1
sw $1, 0($4)
bne $1, $1, TAG48
mflo $1
TAG48:
lb $4, 0($1)
bltz $1, TAG49
lui $4, 14
lui $1, 11
TAG49:
bgtz $1, TAG50
lui $4, 2
mtlo $4
lhu $3, 0($1)
TAG50:
or $3, $3, $3
mthi $3
bne $3, $3, TAG51
srav $1, $3, $3
TAG51:
bgtz $1, TAG52
sll $0, $0, 0
lw $3, 0($1)
bgtz $1, TAG52
TAG52:
sll $2, $3, 6
subu $4, $3, $2
beq $3, $4, TAG53
mtlo $4
TAG53:
lui $4, 12
beq $4, $4, TAG54
sll $0, $0, 0
sltu $3, $4, $4
TAG54:
bgez $3, TAG55
mflo $1
mflo $1
sh $3, 0($1)
TAG55:
mult $1, $1
lui $3, 3
xori $2, $1, 5
sll $0, $0, 0
TAG56:
addu $4, $2, $2
lui $4, 11
subu $2, $4, $4
bne $2, $2, TAG57
TAG57:
sltiu $3, $2, 12
mult $2, $2
lbu $1, 0($2)
lui $2, 9
TAG58:
lui $2, 1
beq $2, $2, TAG59
srl $3, $2, 6
addi $1, $2, 13
TAG59:
addi $2, $1, 15
mflo $2
beq $2, $1, TAG60
andi $2, $2, 11
TAG60:
mult $2, $2
lui $3, 15
lui $3, 11
lbu $4, 0($2)
TAG61:
lbu $4, 0($4)
multu $4, $4
beq $4, $4, TAG62
lui $3, 15
TAG62:
sll $0, $0, 0
bne $3, $3, TAG63
addiu $2, $3, 3
lui $2, 7
TAG63:
bgtz $2, TAG64
srl $3, $2, 3
div $2, $2
bne $3, $2, TAG64
TAG64:
mthi $3
bgtz $3, TAG65
nor $4, $3, $3
sltiu $1, $4, 14
TAG65:
lb $4, 0($1)
mflo $2
mult $2, $4
beq $1, $2, TAG66
TAG66:
mthi $2
mfhi $3
lbu $3, 0($2)
bne $3, $3, TAG67
TAG67:
sll $3, $3, 12
lui $3, 2
bgez $3, TAG68
lui $1, 5
TAG68:
mtlo $1
mthi $1
mtlo $1
mflo $2
TAG69:
sll $0, $0, 0
mflo $2
bltz $1, TAG70
sll $0, $0, 0
TAG70:
mtlo $2
mfhi $3
mtlo $2
and $3, $2, $3
TAG71:
mflo $2
bgtz $2, TAG72
mflo $2
lw $4, 0($2)
TAG72:
xor $2, $4, $4
lui $4, 13
mflo $2
bgez $2, TAG73
TAG73:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
addu $4, $2, $2
TAG74:
mfhi $4
bltz $4, TAG75
sll $0, $0, 0
xori $1, $4, 3
TAG75:
sra $3, $1, 2
sll $0, $0, 0
multu $3, $3
mult $3, $3
TAG76:
div $3, $3
sltiu $3, $3, 11
multu $3, $3
lui $4, 6
TAG77:
nor $3, $4, $4
mfhi $3
lh $3, 0($3)
mflo $2
TAG78:
ori $4, $2, 0
bgez $2, TAG79
sb $2, 0($4)
or $2, $4, $4
TAG79:
lui $3, 7
sh $2, 0($2)
mtlo $2
mthi $2
TAG80:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
sra $2, $3, 11
TAG81:
ori $4, $2, 8
slti $4, $2, 0
beq $4, $4, TAG82
div $4, $2
TAG82:
lhu $2, 0($4)
addiu $3, $4, 7
lb $2, 0($4)
mtlo $4
TAG83:
slti $1, $2, 7
bne $1, $1, TAG84
lhu $4, 0($2)
divu $1, $1
TAG84:
bgtz $4, TAG85
sll $4, $4, 7
bltz $4, TAG85
lh $4, 0($4)
TAG85:
lhu $1, 0($4)
addiu $2, $1, 2
bgez $4, TAG86
multu $1, $4
TAG86:
bne $2, $2, TAG87
lbu $3, 0($2)
mult $2, $2
slt $2, $2, $3
TAG87:
sb $2, 0($2)
mult $2, $2
multu $2, $2
multu $2, $2
TAG88:
multu $2, $2
sltiu $4, $2, 12
bltz $4, TAG89
lui $4, 14
TAG89:
mfhi $3
beq $4, $3, TAG90
mthi $4
mult $3, $3
TAG90:
bltz $3, TAG91
lhu $4, 0($3)
bgez $3, TAG91
srlv $3, $3, $4
TAG91:
bgtz $3, TAG92
srlv $3, $3, $3
lui $2, 10
sw $3, 0($3)
TAG92:
mtlo $2
mtlo $2
xor $4, $2, $2
blez $2, TAG93
TAG93:
mult $4, $4
nor $3, $4, $4
beq $4, $3, TAG94
mflo $1
TAG94:
sw $1, 0($1)
bgtz $1, TAG95
mtlo $1
lb $3, 0($1)
TAG95:
blez $3, TAG96
sub $1, $3, $3
sw $1, 0($1)
ori $4, $1, 11
TAG96:
and $2, $4, $4
lh $4, 0($2)
lw $1, 0($4)
lh $3, 0($4)
TAG97:
blez $3, TAG98
lui $4, 10
addi $2, $3, 2
ori $1, $2, 1
TAG98:
mtlo $1
subu $4, $1, $1
beq $1, $4, TAG99
lhu $3, 0($1)
TAG99:
sltiu $3, $3, 13
lui $2, 6
blez $2, TAG100
sltiu $3, $3, 12
TAG100:
mtlo $3
mthi $3
lui $1, 10
sb $3, 0($3)
TAG101:
mfhi $1
beq $1, $1, TAG102
sb $1, 0($1)
mfhi $2
TAG102:
sll $0, $0, 0
lui $2, 10
bne $2, $2, TAG103
sll $0, $0, 0
TAG103:
mult $3, $3
mfhi $4
sub $2, $4, $4
bgtz $2, TAG104
TAG104:
lh $3, 0($2)
sb $3, -256($3)
div $3, $3
bgez $2, TAG105
TAG105:
lui $2, 10
sb $2, -256($3)
addiu $3, $3, 4
lh $1, -260($3)
TAG106:
ori $3, $1, 13
mflo $4
sh $3, -256($1)
sb $1, 0($4)
TAG107:
sb $4, 0($4)
addu $2, $4, $4
bgtz $2, TAG108
sb $4, 0($4)
TAG108:
mflo $1
lh $1, 0($2)
beq $1, $1, TAG109
lbu $4, 0($1)
TAG109:
lb $4, 0($4)
or $2, $4, $4
mflo $1
lw $1, 0($4)
TAG110:
mtlo $1
sh $1, -269($1)
lbu $3, -269($1)
beq $1, $1, TAG111
TAG111:
lbu $3, 0($3)
addiu $2, $3, 4
xori $1, $3, 4
mtlo $3
TAG112:
lbu $1, 0($1)
beq $1, $1, TAG113
sra $2, $1, 8
mflo $2
TAG113:
mflo $1
lui $1, 13
sw $2, 0($2)
addi $4, $2, 14
TAG114:
bgtz $4, TAG115
addiu $2, $4, 2
sltiu $4, $2, 2
sw $2, 0($4)
TAG115:
nor $3, $4, $4
subu $4, $3, $3
bne $3, $3, TAG116
sb $4, 0($4)
TAG116:
multu $4, $4
mtlo $4
sw $4, 0($4)
addi $1, $4, 11
TAG117:
nor $2, $1, $1
mtlo $2
blez $1, TAG118
slt $3, $2, $1
TAG118:
divu $3, $3
blez $3, TAG119
sll $1, $3, 6
bltz $3, TAG119
TAG119:
lui $3, 7
mflo $3
div $1, $3
bne $3, $1, TAG120
TAG120:
mflo $2
mtlo $2
lhu $1, 0($2)
mtlo $3
TAG121:
srl $1, $1, 6
srl $1, $1, 14
and $4, $1, $1
bne $1, $4, TAG122
TAG122:
mflo $4
sb $4, 0($4)
lb $4, 0($4)
addiu $2, $4, 1
TAG123:
bne $2, $2, TAG124
mtlo $2
mtlo $2
bne $2, $2, TAG124
TAG124:
xori $2, $2, 7
sb $2, 0($2)
sllv $1, $2, $2
sb $2, 0($2)
TAG125:
mthi $1
mult $1, $1
mtlo $1
sb $1, -160($1)
TAG126:
mtlo $1
lh $2, -160($1)
lbu $1, -160($1)
mfhi $2
TAG127:
lui $3, 0
multu $3, $3
lw $1, 0($3)
sb $2, 0($2)
TAG128:
sw $1, -416($1)
lhu $1, -416($1)
bne $1, $1, TAG129
sw $1, -416($1)
TAG129:
mtlo $1
div $1, $1
mult $1, $1
mthi $1
TAG130:
and $3, $1, $1
bne $3, $3, TAG131
lui $2, 3
addu $4, $2, $1
TAG131:
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
srlv $3, $4, $4
TAG132:
or $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG133:
bgez $4, TAG134
mthi $4
bne $4, $4, TAG134
sllv $1, $4, $4
TAG134:
srlv $4, $1, $1
bgtz $1, TAG135
lb $1, -416($4)
lh $1, 0($1)
TAG135:
mflo $4
bgtz $4, TAG136
srl $4, $1, 13
lw $4, 0($4)
TAG136:
mtlo $4
multu $4, $4
beq $4, $4, TAG137
mthi $4
TAG137:
addu $1, $4, $4
beq $1, $4, TAG138
lui $3, 7
bgez $1, TAG138
TAG138:
andi $1, $3, 1
subu $3, $1, $1
lui $2, 2
mtlo $1
TAG139:
beq $2, $2, TAG140
xori $4, $2, 14
mflo $1
bltz $4, TAG140
TAG140:
and $2, $1, $1
mult $1, $2
mthi $1
sllv $3, $2, $2
TAG141:
mult $3, $3
beq $3, $3, TAG142
sb $3, 0($3)
mflo $1
TAG142:
sra $1, $1, 2
sh $1, 0($1)
mtlo $1
lui $1, 2
TAG143:
sllv $1, $1, $1
mult $1, $1
sll $0, $0, 0
andi $3, $1, 15
TAG144:
sll $4, $3, 6
sw $4, 0($3)
lui $2, 11
mult $3, $4
TAG145:
lui $1, 5
mthi $2
mtlo $2
mfhi $2
TAG146:
addiu $3, $2, 12
bltz $2, TAG147
sltu $4, $2, $3
sll $0, $0, 0
TAG147:
bne $2, $2, TAG148
multu $2, $2
mflo $3
mflo $2
TAG148:
mtlo $2
sw $2, 0($2)
mtlo $2
bltz $2, TAG149
TAG149:
sw $2, 0($2)
mtlo $2
bgez $2, TAG150
addi $4, $2, 4
TAG150:
mfhi $4
mfhi $1
lb $1, 0($1)
sw $4, 0($1)
TAG151:
sra $1, $1, 6
mult $1, $1
mtlo $1
beq $1, $1, TAG152
TAG152:
lui $3, 3
bne $1, $3, TAG153
lui $1, 11
lui $4, 0
TAG153:
mfhi $4
mthi $4
bne $4, $4, TAG154
slt $4, $4, $4
TAG154:
sra $2, $4, 3
bgez $2, TAG155
sh $4, 0($4)
sltiu $3, $4, 3
TAG155:
sll $0, $0, 0
sra $3, $3, 0
sll $0, $0, 0
div $3, $3
TAG156:
bne $2, $2, TAG157
lui $3, 11
multu $2, $2
sll $0, $0, 0
TAG157:
mfhi $4
mtlo $4
bgez $4, TAG158
and $4, $4, $4
TAG158:
sll $1, $4, 8
bgtz $1, TAG159
mflo $1
addiu $3, $1, 15
TAG159:
sb $3, 0($3)
andi $1, $3, 12
andi $3, $3, 1
bne $3, $3, TAG160
TAG160:
sb $3, 0($3)
mfhi $4
mtlo $4
sb $4, 0($3)
TAG161:
mult $4, $4
xori $2, $4, 5
lb $1, 0($2)
lb $2, 0($4)
TAG162:
mfhi $2
multu $2, $2
and $1, $2, $2
mflo $3
TAG163:
bgtz $3, TAG164
mflo $3
sll $3, $3, 10
lb $3, 0($3)
TAG164:
lb $4, 0($3)
mfhi $1
lui $3, 4
bltz $1, TAG165
TAG165:
mtlo $3
lui $3, 13
div $3, $3
bne $3, $3, TAG166
TAG166:
sll $0, $0, 0
lui $3, 13
xori $3, $3, 0
nor $3, $3, $3
TAG167:
srl $3, $3, 1
lui $2, 14
mthi $3
lui $2, 4
TAG168:
addu $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
slti $1, $2, 15
TAG169:
lhu $1, 0($1)
lbu $4, 0($1)
beq $1, $1, TAG170
mult $4, $1
TAG170:
sb $4, 0($4)
sltiu $2, $4, 1
lui $3, 0
addu $4, $4, $4
TAG171:
sw $4, 0($4)
mfhi $1
sb $4, 0($1)
lui $4, 10
TAG172:
multu $4, $4
lui $2, 3
sll $0, $0, 0
addiu $2, $4, 9
TAG173:
addiu $2, $2, 15
lui $1, 10
bne $1, $2, TAG174
sll $0, $0, 0
TAG174:
srlv $4, $1, $1
bne $1, $4, TAG175
lui $3, 2
mult $4, $4
TAG175:
sll $0, $0, 0
mfhi $4
mult $4, $4
mthi $4
TAG176:
lb $2, 0($4)
slti $2, $4, 0
blez $2, TAG177
lbu $3, 0($2)
TAG177:
bgez $3, TAG178
mfhi $2
lhu $3, 0($2)
multu $3, $3
TAG178:
lh $1, 0($3)
mflo $3
divu $3, $3
lw $2, -10000($3)
TAG179:
addi $1, $2, 6
bltz $2, TAG180
mult $2, $2
beq $2, $2, TAG180
TAG180:
mflo $1
sh $1, 0($1)
mtlo $1
or $2, $1, $1
TAG181:
blez $2, TAG182
sra $2, $2, 5
mflo $4
sw $2, 0($2)
TAG182:
sh $4, 0($4)
lui $3, 7
sb $4, 0($4)
mtlo $3
TAG183:
sll $0, $0, 0
slt $4, $3, $3
bgez $3, TAG184
mfhi $4
TAG184:
mult $4, $4
multu $4, $4
mflo $4
beq $4, $4, TAG185
TAG185:
srav $3, $4, $4
xor $4, $3, $3
mthi $4
sb $4, 0($4)
TAG186:
mtlo $4
mult $4, $4
beq $4, $4, TAG187
xor $2, $4, $4
TAG187:
lh $4, 0($2)
bne $2, $2, TAG188
lui $1, 4
nor $1, $4, $4
TAG188:
addiu $2, $1, 4
mtlo $1
sw $2, 1($1)
srl $1, $2, 3
TAG189:
bltz $1, TAG190
mthi $1
sw $1, 0($1)
bne $1, $1, TAG190
TAG190:
mult $1, $1
ori $3, $1, 1
sb $1, 0($3)
div $3, $3
TAG191:
bgez $3, TAG192
ori $2, $3, 15
div $3, $2
lui $4, 14
TAG192:
sllv $3, $4, $4
sw $4, 0($3)
slti $3, $4, 15
sllv $4, $3, $3
TAG193:
mtlo $4
andi $3, $4, 3
sb $3, 0($4)
mthi $3
TAG194:
blez $3, TAG195
addiu $4, $3, 9
bgez $4, TAG195
divu $4, $4
TAG195:
mflo $4
bgez $4, TAG196
sb $4, 0($4)
beq $4, $4, TAG196
TAG196:
lui $2, 2
lb $2, 0($4)
addu $1, $4, $4
sb $2, 0($4)
TAG197:
lbu $4, 0($1)
sh $4, 0($4)
sh $4, 0($4)
mult $4, $4
TAG198:
bgtz $4, TAG199
mflo $3
lui $1, 10
bne $1, $3, TAG199
TAG199:
mult $1, $1
beq $1, $1, TAG200
mflo $3
addi $1, $3, 13
TAG200:
sb $1, 0($1)
mthi $1
sra $4, $1, 5
mthi $4
TAG201:
mfhi $2
addu $4, $2, $2
mflo $3
lw $4, 0($2)
TAG202:
blez $4, TAG203
mflo $3
sll $0, $0, 0
sllv $2, $4, $4
TAG203:
xor $1, $2, $2
lui $4, 12
lui $1, 3
bgez $1, TAG204
TAG204:
xori $2, $1, 9
bgtz $1, TAG205
addu $3, $1, $2
bne $2, $1, TAG205
TAG205:
srl $2, $3, 8
addu $2, $3, $3
bltz $2, TAG206
ori $1, $2, 7
TAG206:
slti $4, $1, 12
div $4, $1
mfhi $1
mfhi $4
TAG207:
lui $3, 10
sltiu $3, $3, 7
lbu $4, 0($3)
andi $2, $3, 6
TAG208:
mthi $2
srl $2, $2, 15
sh $2, 0($2)
sw $2, 0($2)
TAG209:
mflo $4
mthi $2
multu $4, $4
mflo $2
TAG210:
mflo $1
mult $2, $2
sb $1, 0($1)
mflo $1
TAG211:
mult $1, $1
sw $1, 0($1)
sh $1, 0($1)
xori $3, $1, 13
TAG212:
bgtz $3, TAG213
mult $3, $3
lh $2, 0($3)
bgtz $3, TAG213
TAG213:
sw $2, 0($2)
blez $2, TAG214
lui $1, 11
mult $1, $1
TAG214:
addu $3, $1, $1
sll $0, $0, 0
divu $1, $1
ori $4, $1, 3
TAG215:
lui $1, 10
srl $3, $4, 3
mtlo $1
mflo $2
TAG216:
sll $0, $0, 0
srl $1, $2, 4
srl $1, $2, 15
lh $1, 0($1)
TAG217:
mtlo $1
or $1, $1, $1
mtlo $1
sb $1, 0($1)
TAG218:
multu $1, $1
bltz $1, TAG219
mthi $1
mflo $3
TAG219:
sb $3, 0($3)
lbu $4, 0($3)
srl $3, $3, 10
mult $3, $3
TAG220:
bltz $3, TAG221
mult $3, $3
lh $1, 0($3)
addu $3, $3, $1
TAG221:
mfhi $2
blez $3, TAG222
sh $2, 0($3)
bgez $2, TAG222
TAG222:
sw $2, 0($2)
lb $1, 0($2)
multu $1, $1
bltz $1, TAG223
TAG223:
sb $1, 0($1)
lhu $3, 0($1)
addi $2, $1, 12
divu $1, $2
TAG224:
mflo $1
slti $2, $1, 11
lbu $3, 0($2)
lui $1, 15
TAG225:
lui $4, 12
bgtz $1, TAG226
mtlo $1
lui $2, 1
TAG226:
xori $1, $2, 15
bgez $2, TAG227
mthi $2
sltiu $3, $2, 5
TAG227:
mfhi $3
lb $3, 0($3)
mult $3, $3
bgtz $3, TAG228
TAG228:
srav $2, $3, $3
beq $2, $3, TAG229
sw $2, 0($3)
divu $3, $2
TAG229:
sra $1, $2, 3
lui $3, 0
ori $4, $1, 12
sw $3, 0($3)
TAG230:
lw $3, 0($4)
mfhi $3
divu $4, $4
mtlo $4
TAG231:
mtlo $3
sw $3, 0($3)
mflo $4
bgtz $3, TAG232
TAG232:
mthi $4
bne $4, $4, TAG233
lui $4, 9
mfhi $3
TAG233:
sh $3, 0($3)
lbu $2, 0($3)
mthi $3
xori $1, $2, 8
TAG234:
bne $1, $1, TAG235
addu $2, $1, $1
bltz $1, TAG235
lui $4, 3
TAG235:
slti $2, $4, 2
srav $4, $4, $2
bne $4, $4, TAG236
sltu $4, $2, $4
TAG236:
bgtz $4, TAG237
mfhi $1
sb $4, 0($1)
bgtz $1, TAG237
TAG237:
mult $1, $1
sb $1, 0($1)
sh $1, 0($1)
lh $1, 0($1)
TAG238:
multu $1, $1
bgez $1, TAG239
multu $1, $1
blez $1, TAG239
TAG239:
lui $3, 1
sll $4, $3, 2
lui $4, 12
addu $3, $4, $4
TAG240:
sltu $3, $3, $3
mflo $4
mflo $3
mflo $1
TAG241:
bne $1, $1, TAG242
multu $1, $1
lh $2, 0($1)
sw $2, 0($1)
TAG242:
lb $1, 0($2)
mfhi $4
mult $1, $4
mtlo $2
TAG243:
mtlo $4
mfhi $3
mtlo $4
lhu $2, 0($3)
TAG244:
sb $2, 0($2)
lhu $3, 0($2)
mfhi $3
sub $3, $3, $3
TAG245:
lw $1, 0($3)
bgtz $3, TAG246
mfhi $2
blez $2, TAG246
TAG246:
sb $2, 0($2)
mthi $2
addu $3, $2, $2
lui $2, 13
TAG247:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
lw $1, 0($4)
TAG248:
bne $1, $1, TAG249
xor $4, $1, $1
mult $4, $1
sb $1, 0($4)
TAG249:
slt $1, $4, $4
bltz $1, TAG250
lw $2, 0($1)
subu $1, $1, $2
TAG250:
lh $4, 0($1)
bne $1, $4, TAG251
sub $3, $1, $1
lui $3, 7
TAG251:
xori $1, $3, 11
sll $0, $0, 0
lui $2, 3
addu $1, $2, $1
TAG252:
sll $0, $0, 0
sb $1, 0($4)
mfhi $4
andi $2, $4, 10
TAG253:
sh $2, 0($2)
beq $2, $2, TAG254
ori $1, $2, 11
lh $1, 0($2)
TAG254:
sb $1, 0($1)
mfhi $4
sw $4, 0($4)
lbu $2, 0($1)
TAG255:
mult $2, $2
mfhi $2
mtlo $2
mflo $2
TAG256:
multu $2, $2
mflo $1
mflo $4
sltiu $4, $4, 2
TAG257:
bltz $4, TAG258
sb $4, 0($4)
lb $4, 0($4)
mfhi $1
TAG258:
sb $1, 0($1)
lui $4, 12
bgtz $4, TAG259
mtlo $1
TAG259:
sll $0, $0, 0
bltz $4, TAG260
mult $4, $4
sllv $4, $4, $4
TAG260:
sll $0, $0, 0
sra $3, $4, 1
div $3, $4
mult $3, $3
TAG261:
lui $4, 2
lui $1, 7
lui $3, 14
beq $3, $3, TAG262
TAG262:
mflo $4
mtlo $3
sll $0, $0, 0
beq $3, $4, TAG263
TAG263:
mult $4, $4
lhu $4, 0($4)
divu $4, $4
mfhi $2
TAG264:
mfhi $4
multu $4, $2
slt $2, $4, $2
lhu $4, 0($2)
TAG265:
srl $2, $4, 4
blez $4, TAG266
mfhi $3
and $3, $3, $4
TAG266:
ori $4, $3, 10
lhu $1, 0($4)
sb $4, 0($4)
mthi $1
TAG267:
beq $1, $1, TAG268
mult $1, $1
sll $3, $1, 7
bne $3, $1, TAG268
TAG268:
lw $2, 0($3)
multu $3, $2
lb $4, -256($2)
mult $3, $3
TAG269:
mflo $3
srl $1, $3, 12
bgez $3, TAG270
mflo $1
TAG270:
mtlo $1
bgtz $1, TAG271
slti $2, $1, 11
and $4, $1, $2
TAG271:
sh $4, 0($4)
mfhi $1
beq $4, $4, TAG272
lui $1, 8
TAG272:
mtlo $1
bne $1, $1, TAG273
mthi $1
mthi $1
TAG273:
mult $1, $1
mtlo $1
addiu $2, $1, 9
xori $2, $2, 8
TAG274:
xor $3, $2, $2
beq $2, $2, TAG275
addu $3, $3, $3
mfhi $3
TAG275:
bgez $3, TAG276
lui $3, 6
bgtz $3, TAG276
mthi $3
TAG276:
div $3, $3
beq $3, $3, TAG277
div $3, $3
mult $3, $3
TAG277:
bltz $3, TAG278
div $3, $3
mflo $1
lbu $1, 0($1)
TAG278:
beq $1, $1, TAG279
lhu $2, 0($1)
sw $1, 0($1)
bltz $1, TAG279
TAG279:
lh $2, 0($2)
lw $4, 0($2)
subu $1, $2, $2
lui $1, 2
TAG280:
mfhi $2
mtlo $1
lui $1, 8
beq $1, $2, TAG281
TAG281:
divu $1, $1
addu $2, $1, $1
sra $1, $2, 3
sll $0, $0, 0
TAG282:
blez $2, TAG283
sll $0, $0, 0
beq $2, $2, TAG283
lui $4, 7
TAG283:
blez $4, TAG284
multu $4, $4
bgez $4, TAG284
sll $1, $4, 14
TAG284:
mult $1, $1
mflo $3
bgez $1, TAG285
mfhi $2
TAG285:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG286:
lui $1, 10
bne $1, $1, TAG287
mfhi $4
mthi $4
TAG287:
mthi $4
bne $4, $4, TAG288
mflo $2
sh $2, 0($4)
TAG288:
sb $2, 0($2)
mthi $2
mult $2, $2
xor $3, $2, $2
TAG289:
beq $3, $3, TAG290
slti $4, $3, 10
bgtz $3, TAG290
add $2, $3, $3
TAG290:
andi $2, $2, 10
mult $2, $2
sllv $3, $2, $2
bltz $3, TAG291
TAG291:
sra $4, $3, 9
lh $2, 0($4)
mfhi $2
blez $3, TAG292
TAG292:
mtlo $2
blez $2, TAG293
sra $2, $2, 15
addi $2, $2, 7
TAG293:
sw $2, 0($2)
multu $2, $2
lui $2, 4
bgez $2, TAG294
TAG294:
mtlo $2
lui $3, 14
sll $0, $0, 0
div $3, $3
TAG295:
lui $4, 2
andi $3, $4, 2
lui $2, 0
and $4, $4, $2
TAG296:
mthi $4
beq $4, $4, TAG297
lb $3, 0($4)
mtlo $3
TAG297:
sh $3, 0($3)
sw $3, 0($3)
srl $1, $3, 5
beq $1, $3, TAG298
TAG298:
mult $1, $1
bgtz $1, TAG299
mult $1, $1
mthi $1
TAG299:
lb $3, 0($1)
add $1, $3, $1
lh $3, 0($1)
mult $3, $1
TAG300:
mfhi $4
sb $3, 0($4)
mflo $4
mtlo $3
TAG301:
mfhi $4
mtlo $4
beq $4, $4, TAG302
sw $4, 0($4)
TAG302:
nor $2, $4, $4
lui $4, 7
bltz $4, TAG303
divu $4, $4
TAG303:
mthi $4
mtlo $4
beq $4, $4, TAG304
multu $4, $4
TAG304:
beq $4, $4, TAG305
and $3, $4, $4
div $4, $3
mflo $3
TAG305:
sll $0, $0, 0
sltiu $1, $1, 8
multu $1, $1
mthi $1
TAG306:
mfhi $1
lui $2, 9
bltz $2, TAG307
lui $2, 0
TAG307:
add $3, $2, $2
bne $2, $2, TAG308
slt $3, $2, $3
mfhi $4
TAG308:
bne $4, $4, TAG309
sll $4, $4, 0
sb $4, 0($4)
lui $1, 2
TAG309:
bltz $1, TAG310
sltu $2, $1, $1
mthi $1
bgez $1, TAG310
TAG310:
multu $2, $2
lui $4, 2
slt $3, $4, $2
lbu $2, 0($2)
TAG311:
lbu $4, 0($2)
sll $1, $4, 3
mtlo $4
mfhi $3
TAG312:
lbu $1, 0($3)
bltz $1, TAG313
mthi $1
lbu $1, 0($1)
TAG313:
beq $1, $1, TAG314
lui $1, 14
mthi $1
sb $1, 0($1)
TAG314:
sra $3, $1, 6
lui $3, 10
bne $3, $3, TAG315
lui $3, 11
TAG315:
sll $0, $0, 0
beq $3, $4, TAG316
slti $1, $4, 2
mfhi $4
TAG316:
mult $4, $4
mult $4, $4
beq $4, $4, TAG317
sb $4, 0($4)
TAG317:
lui $4, 0
mtlo $4
sw $4, 0($4)
bne $4, $4, TAG318
TAG318:
ori $2, $4, 6
lb $4, 0($4)
sltiu $3, $4, 9
sllv $2, $4, $3
TAG319:
xor $4, $2, $2
mtlo $4
subu $4, $2, $2
lhu $1, 0($4)
TAG320:
bgtz $1, TAG321
xor $4, $1, $1
sh $4, 0($4)
subu $1, $1, $4
TAG321:
mthi $1
bgez $1, TAG322
nor $3, $1, $1
lw $1, 0($1)
TAG322:
mflo $2
mthi $1
bne $2, $1, TAG323
sb $1, 0($1)
TAG323:
beq $2, $2, TAG324
multu $2, $2
lbu $2, 0($2)
srlv $1, $2, $2
TAG324:
blez $1, TAG325
mflo $2
multu $2, $1
lui $2, 10
TAG325:
lw $3, 0($2)
lb $2, 0($3)
mthi $3
bltz $3, TAG326
TAG326:
addu $4, $2, $2
lui $2, 8
ori $4, $2, 10
bltz $2, TAG327
TAG327:
addiu $1, $4, 8
multu $1, $4
mflo $1
sll $0, $0, 0
TAG328:
lui $3, 2
slti $4, $4, 1
divu $3, $3
mthi $4
TAG329:
beq $4, $4, TAG330
sh $4, 0($4)
mflo $1
lw $3, 0($1)
TAG330:
bgtz $3, TAG331
sll $0, $0, 0
bltz $3, TAG331
mthi $3
TAG331:
lui $4, 3
ori $3, $4, 13
mthi $3
mult $4, $3
TAG332:
lui $2, 9
div $2, $3
bgez $2, TAG333
sll $1, $3, 4
TAG333:
blez $1, TAG334
sll $0, $0, 0
xori $4, $1, 14
mtlo $1
TAG334:
beq $4, $4, TAG335
sll $0, $0, 0
lbu $2, 0($1)
mult $1, $1
TAG335:
mtlo $2
mflo $3
beq $3, $2, TAG336
slt $3, $3, $3
TAG336:
multu $3, $3
bne $3, $3, TAG337
mtlo $3
beq $3, $3, TAG337
TAG337:
mthi $3
mfhi $1
mfhi $2
lbu $1, 0($1)
TAG338:
mtlo $1
beq $1, $1, TAG339
lui $3, 10
lui $1, 4
TAG339:
sra $4, $1, 8
add $3, $4, $4
mflo $1
sh $1, 0($4)
TAG340:
mfhi $1
mult $1, $1
sra $3, $1, 11
addu $4, $3, $1
TAG341:
mthi $4
lb $2, 0($4)
blez $4, TAG342
mthi $2
TAG342:
lui $3, 8
lh $3, 0($2)
multu $3, $3
mfhi $4
TAG343:
mtlo $4
mflo $4
ori $4, $4, 2
or $1, $4, $4
TAG344:
sh $1, 0($1)
sh $1, 0($1)
sllv $4, $1, $1
xor $3, $1, $1
TAG345:
mflo $3
bgez $3, TAG346
sllv $3, $3, $3
mtlo $3
TAG346:
bgez $3, TAG347
srl $3, $3, 1
beq $3, $3, TAG347
mflo $2
TAG347:
sllv $2, $2, $2
beq $2, $2, TAG348
mtlo $2
lui $2, 0
TAG348:
bne $2, $2, TAG349
sh $2, 0($2)
bne $2, $2, TAG349
mult $2, $2
TAG349:
sw $2, 0($2)
lw $4, 0($2)
sb $2, 0($2)
xor $4, $2, $4
TAG350:
mthi $4
sh $4, 0($4)
bgtz $4, TAG351
sh $4, 0($4)
TAG351:
sw $4, 0($4)
bgez $4, TAG352
sw $4, 0($4)
lw $4, 0($4)
TAG352:
mult $4, $4
bne $4, $4, TAG353
mult $4, $4
mtlo $4
TAG353:
sltu $1, $4, $4
sh $4, 0($4)
lh $4, 0($4)
lui $3, 7
TAG354:
mflo $3
multu $3, $3
mflo $3
bne $3, $3, TAG355
TAG355:
add $4, $3, $3
subu $2, $4, $4
sh $3, 0($4)
mthi $2
TAG356:
lui $2, 9
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG357:
lw $1, 0($3)
lui $3, 9
sll $0, $0, 0
bltz $3, TAG358
TAG358:
mtlo $3
lui $2, 2
sll $0, $0, 0
beq $2, $2, TAG359
TAG359:
nor $3, $2, $2
beq $2, $3, TAG360
sll $0, $0, 0
multu $2, $3
TAG360:
xor $4, $3, $3
mtlo $4
mflo $2
sltu $2, $3, $3
TAG361:
beq $2, $2, TAG362
lui $4, 13
sb $2, 0($4)
srlv $2, $4, $4
TAG362:
mthi $2
bgez $2, TAG363
sra $1, $2, 10
lbu $3, 0($1)
TAG363:
slti $1, $3, 0
bltz $1, TAG364
mthi $3
beq $3, $1, TAG364
TAG364:
sra $1, $1, 14
beq $1, $1, TAG365
mthi $1
mtlo $1
TAG365:
mtlo $1
sllv $3, $1, $1
ori $1, $3, 4
mfhi $4
TAG366:
sll $3, $4, 6
bltz $3, TAG367
mflo $4
xori $1, $3, 7
TAG367:
sb $1, 0($1)
bgez $1, TAG368
ori $3, $1, 1
bne $1, $3, TAG368
TAG368:
sb $3, 0($3)
srl $4, $3, 5
lhu $1, 0($4)
bne $3, $4, TAG369
TAG369:
addu $4, $1, $1
lw $4, 0($4)
slti $4, $4, 10
srlv $2, $4, $4
TAG370:
multu $2, $2
xori $2, $2, 11
mfhi $2
sltiu $1, $2, 0
TAG371:
sw $1, 0($1)
sltu $4, $1, $1
mfhi $4
addiu $2, $1, 14
TAG372:
mult $2, $2
lui $3, 15
div $3, $2
sllv $4, $3, $3
TAG373:
beq $4, $4, TAG374
sll $1, $4, 12
andi $1, $4, 7
bne $4, $1, TAG374
TAG374:
addiu $3, $1, 15
sll $0, $0, 0
mfhi $4
blez $3, TAG375
TAG375:
lui $3, 12
mthi $4
beq $4, $4, TAG376
sh $3, 0($4)
TAG376:
sll $0, $0, 0
lui $4, 0
beq $3, $4, TAG377
sltiu $3, $3, 9
TAG377:
sw $3, 0($3)
bne $3, $3, TAG378
addi $2, $3, 5
multu $2, $2
TAG378:
slt $4, $2, $2
mthi $2
mfhi $1
xori $4, $1, 1
TAG379:
srl $3, $4, 11
sra $3, $4, 2
mfhi $1
bne $1, $3, TAG380
TAG380:
sra $3, $1, 8
lb $4, 0($1)
beq $4, $3, TAG381
srl $3, $1, 6
TAG381:
lh $3, 0($3)
bgez $3, TAG382
lhu $3, 0($3)
addiu $4, $3, 0
TAG382:
bne $4, $4, TAG383
divu $4, $4
bgtz $4, TAG383
sb $4, 0($4)
TAG383:
addu $1, $4, $4
bltz $1, TAG384
subu $1, $4, $4
sb $4, 0($1)
TAG384:
mfhi $3
mfhi $2
blez $2, TAG385
mflo $2
TAG385:
multu $2, $2
sb $2, 0($2)
divu $2, $2
addu $3, $2, $2
TAG386:
bne $3, $3, TAG387
subu $2, $3, $3
mflo $3
sb $3, 0($3)
TAG387:
sb $3, 0($3)
bltz $3, TAG388
lb $4, 0($3)
mtlo $3
TAG388:
sb $4, 0($4)
mult $4, $4
lui $2, 14
beq $2, $2, TAG389
TAG389:
sll $0, $0, 0
slti $2, $1, 14
mfhi $3
bne $1, $2, TAG390
TAG390:
mtlo $3
xori $2, $3, 15
mflo $3
sw $2, 0($3)
TAG391:
beq $3, $3, TAG392
or $2, $3, $3
slti $3, $2, 0
slti $2, $3, 15
TAG392:
slti $2, $2, 4
sll $3, $2, 5
bgtz $2, TAG393
mult $2, $2
TAG393:
or $3, $3, $3
bne $3, $3, TAG394
sra $2, $3, 3
multu $3, $2
TAG394:
mult $2, $2
mfhi $4
mult $4, $4
beq $2, $2, TAG395
TAG395:
mthi $4
addiu $4, $4, 15
or $4, $4, $4
lui $2, 7
TAG396:
beq $2, $2, TAG397
srl $2, $2, 14
lbu $4, 0($2)
mult $2, $4
TAG397:
divu $4, $4
mthi $4
mflo $2
bne $4, $4, TAG398
TAG398:
lui $4, 10
mfhi $3
bgez $3, TAG399
sb $2, 0($3)
TAG399:
and $4, $3, $3
div $4, $3
lbu $3, 0($3)
xori $1, $3, 10
TAG400:
lb $2, 0($1)
srav $2, $2, $2
mult $2, $1
addiu $2, $1, 5
TAG401:
sb $2, 0($2)
mfhi $1
sh $2, 0($2)
lh $2, 0($2)
TAG402:
mthi $2
lui $4, 11
bltz $4, TAG403
sll $0, $0, 0
TAG403:
addiu $1, $4, 7
divu $4, $4
mflo $4
mthi $4
TAG404:
lui $2, 4
srl $3, $2, 4
sb $3, -16384($3)
lui $3, 8
TAG405:
mfhi $2
mult $2, $3
multu $2, $3
mthi $2
TAG406:
mflo $4
mfhi $3
sll $0, $0, 0
andi $2, $3, 14
TAG407:
ori $2, $2, 0
multu $2, $2
sb $2, 0($2)
sh $2, 0($2)
TAG408:
bgez $2, TAG409
multu $2, $2
nor $2, $2, $2
sb $2, 0($2)
TAG409:
sb $2, 0($2)
lui $2, 11
sll $0, $0, 0
addiu $3, $2, 1
TAG410:
mfhi $3
mflo $3
sh $3, 0($3)
bgtz $3, TAG411
TAG411:
sw $3, 0($3)
slti $2, $3, 5
mthi $3
mfhi $3
TAG412:
lw $4, 0($3)
lw $1, 0($4)
addi $1, $3, 9
bgtz $1, TAG413
TAG413:
mtlo $1
bgtz $1, TAG414
sb $1, 0($1)
sra $1, $1, 13
TAG414:
sll $1, $1, 4
mthi $1
nor $1, $1, $1
mult $1, $1
TAG415:
lui $4, 7
multu $1, $1
div $4, $4
lui $3, 2
TAG416:
mtlo $3
lui $2, 13
bne $3, $2, TAG417
srlv $1, $3, $2
TAG417:
mflo $4
mult $4, $1
mthi $4
lui $1, 14
TAG418:
sra $3, $1, 5
beq $3, $3, TAG419
mflo $3
lb $4, 0($1)
TAG419:
sltiu $2, $4, 9
mult $4, $2
mtlo $4
mflo $2
TAG420:
lui $3, 11
mfhi $1
bgez $1, TAG421
sll $0, $0, 0
TAG421:
sh $1, 0($1)
lui $3, 2
lui $1, 0
bltz $1, TAG422
TAG422:
nor $3, $1, $1
lui $4, 14
sh $4, 1($3)
lui $3, 0
TAG423:
mflo $4
lhu $2, 0($3)
multu $2, $2
mflo $4
TAG424:
ori $4, $4, 6
addu $2, $4, $4
mflo $1
mult $4, $2
TAG425:
lbu $1, 0($1)
mtlo $1
mult $1, $1
bltz $1, TAG426
TAG426:
lbu $4, 0($1)
sltu $1, $4, $1
lh $3, 0($1)
xor $3, $1, $1
TAG427:
lh $3, 0($3)
lui $2, 7
lui $2, 5
add $2, $3, $2
TAG428:
sll $0, $0, 0
mfhi $1
mflo $2
ori $1, $2, 10
TAG429:
beq $1, $1, TAG430
mult $1, $1
sb $1, 0($1)
beq $1, $1, TAG430
TAG430:
mtlo $1
addu $2, $1, $1
sh $1, 0($2)
div $2, $2
TAG431:
sllv $1, $2, $2
lui $2, 14
mtlo $2
sll $0, $0, 0
TAG432:
lui $2, 2
sll $0, $0, 0
sll $0, $0, 0
lui $4, 3
TAG433:
sll $0, $0, 0
mtlo $3
or $2, $4, $4
sll $0, $0, 0
TAG434:
lbu $3, 0($3)
lw $3, 0($3)
lui $3, 1
sll $0, $0, 0
TAG435:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG436
TAG436:
subu $3, $2, $2
mthi $2
bne $2, $2, TAG437
div $2, $2
TAG437:
beq $3, $3, TAG438
lui $2, 6
ori $2, $2, 0
xor $3, $2, $3
TAG438:
sb $3, 0($3)
mfhi $4
lui $4, 0
addi $4, $3, 12
TAG439:
andi $3, $4, 8
xori $2, $3, 6
addiu $2, $2, 13
xori $4, $3, 10
TAG440:
mfhi $3
div $3, $4
addiu $3, $4, 3
mfhi $3
TAG441:
sll $1, $3, 15
blez $1, TAG442
add $1, $1, $1
bne $3, $1, TAG442
TAG442:
srl $1, $1, 1
or $3, $1, $1
multu $1, $1
bltz $3, TAG443
TAG443:
sub $2, $3, $3
mflo $1
lbu $1, 0($2)
multu $2, $2
TAG444:
beq $1, $1, TAG445
mfhi $1
lb $1, 0($1)
mfhi $3
TAG445:
mult $3, $3
beq $3, $3, TAG446
lui $1, 10
mflo $3
TAG446:
lui $4, 7
sb $3, 0($3)
sll $0, $0, 0
mfhi $1
TAG447:
beq $1, $1, TAG448
addiu $3, $1, 6
beq $3, $1, TAG448
lh $2, 0($3)
TAG448:
mult $2, $2
beq $2, $2, TAG449
multu $2, $2
mfhi $1
TAG449:
bltz $1, TAG450
sh $1, 0($1)
bgtz $1, TAG450
slt $3, $1, $1
TAG450:
sb $3, 0($3)
lui $4, 1
lui $1, 11
lui $1, 9
TAG451:
bltz $1, TAG452
sll $0, $0, 0
slti $2, $1, 9
bgez $2, TAG452
TAG452:
mthi $2
lui $3, 7
mult $2, $2
lw $2, 0($2)
TAG453:
mult $2, $2
blez $2, TAG454
mflo $2
lw $2, 0($2)
TAG454:
bltz $2, TAG455
lui $4, 2
sll $0, $0, 0
beq $2, $4, TAG455
TAG455:
sll $0, $0, 0
div $4, $4
multu $4, $4
mtlo $4
TAG456:
bgez $4, TAG457
xori $4, $4, 10
lui $2, 1
bltz $2, TAG457
TAG457:
lw $1, 0($2)
lbu $4, 0($1)
mflo $2
bltz $4, TAG458
TAG458:
addiu $1, $2, 9
bne $2, $1, TAG459
mthi $2
beq $1, $1, TAG459
TAG459:
addu $3, $1, $1
bltz $1, TAG460
sll $0, $0, 0
mfhi $1
TAG460:
lui $4, 12
mfhi $2
bltz $4, TAG461
div $1, $2
TAG461:
lui $3, 13
srlv $4, $2, $2
beq $4, $4, TAG462
sll $0, $0, 0
TAG462:
divu $2, $2
mfhi $1
beq $2, $2, TAG463
mthi $1
TAG463:
sra $4, $1, 5
srl $1, $4, 3
lb $2, 0($1)
bltz $1, TAG464
TAG464:
xor $4, $2, $2
blez $4, TAG465
lhu $3, 0($2)
mult $4, $3
TAG465:
xor $2, $3, $3
mflo $4
lui $2, 3
mfhi $4
TAG466:
addi $1, $4, 0
bne $4, $4, TAG467
lb $4, 0($1)
mfhi $1
TAG467:
mfhi $2
beq $1, $2, TAG468
lh $2, 0($1)
lb $3, 0($2)
TAG468:
mflo $2
sb $2, 0($2)
lbu $2, 0($2)
sll $2, $2, 8
TAG469:
sll $2, $2, 5
mtlo $2
div $2, $2
mflo $2
TAG470:
mfhi $3
bne $3, $2, TAG471
lui $3, 9
or $2, $2, $3
TAG471:
bltz $2, TAG472
lui $4, 0
lui $2, 15
mtlo $2
TAG472:
mult $2, $2
mtlo $2
mflo $4
sll $0, $0, 0
TAG473:
sll $0, $0, 0
beq $3, $3, TAG474
sll $0, $0, 0
mfhi $4
TAG474:
multu $4, $4
mtlo $4
addu $2, $4, $4
bne $2, $2, TAG475
TAG475:
srlv $1, $2, $2
bne $1, $2, TAG476
lui $4, 10
lui $3, 8
TAG476:
srl $2, $3, 4
bgtz $2, TAG477
mult $2, $2
beq $2, $2, TAG477
TAG477:
xor $1, $2, $2
sb $2, 0($1)
mult $2, $1
bgez $1, TAG478
TAG478:
lbu $1, 0($1)
lhu $1, 0($1)
beq $1, $1, TAG479
lui $1, 0
TAG479:
bne $1, $1, TAG480
lui $4, 5
slti $3, $1, 13
sll $0, $0, 0
TAG480:
nor $3, $3, $3
bne $3, $3, TAG481
mfhi $2
mult $2, $3
TAG481:
lhu $1, 0($2)
bne $2, $2, TAG482
addu $4, $2, $2
addu $1, $4, $4
TAG482:
sw $1, 0($1)
sh $1, 0($1)
sb $1, 0($1)
lw $2, 0($1)
TAG483:
sw $2, 0($2)
beq $2, $2, TAG484
sltiu $1, $2, 1
andi $4, $2, 3
TAG484:
mtlo $4
sw $4, 0($4)
mflo $1
bgez $1, TAG485
TAG485:
mthi $1
mfhi $2
mult $2, $1
sllv $4, $2, $2
TAG486:
bne $4, $4, TAG487
sw $4, 0($4)
bltz $4, TAG487
lhu $2, 0($4)
TAG487:
mtlo $2
lhu $4, 0($2)
beq $2, $4, TAG488
mthi $4
TAG488:
mfhi $2
lui $2, 7
bgtz $2, TAG489
mflo $1
TAG489:
lui $4, 9
beq $1, $4, TAG490
sll $0, $0, 0
mult $1, $1
TAG490:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG491
TAG491:
sll $0, $0, 0
sra $2, $4, 11
sltiu $3, $3, 4
slt $3, $3, $4
TAG492:
mflo $3
mult $3, $3
bne $3, $3, TAG493
lb $3, 0($3)
TAG493:
bgez $3, TAG494
subu $3, $3, $3
mtlo $3
nor $2, $3, $3
TAG494:
lui $3, 5
sll $0, $0, 0
div $3, $2
addu $1, $3, $2
TAG495:
sll $0, $0, 0
lui $1, 8
sll $0, $0, 0
bltz $1, TAG496
TAG496:
mthi $1
divu $1, $1
divu $1, $1
mflo $3
TAG497:
lui $3, 9
blez $3, TAG498
sltiu $3, $3, 14
bltz $3, TAG498
TAG498:
multu $3, $3
bgtz $3, TAG499
sh $3, 0($3)
mthi $3
TAG499:
beq $3, $3, TAG500
lw $3, 0($3)
divu $3, $3
bne $3, $3, TAG500
TAG500:
sh $3, 0($3)
xori $4, $3, 8
bgtz $4, TAG501
add $3, $3, $3
TAG501:
lui $2, 2
sllv $2, $2, $3
lb $2, 0($3)
lbu $3, 0($2)
TAG502:
sw $3, 0($3)
sw $3, 0($3)
lb $3, 0($3)
multu $3, $3
TAG503:
mtlo $3
andi $4, $3, 6
mthi $3
bne $3, $4, TAG504
TAG504:
sra $4, $4, 15
add $4, $4, $4
lh $2, 0($4)
lui $2, 7
TAG505:
sll $0, $0, 0
multu $2, $4
mtlo $2
div $2, $2
TAG506:
mult $4, $4
sra $4, $4, 15
bne $4, $4, TAG507
lui $1, 1
TAG507:
div $1, $1
sll $0, $0, 0
subu $4, $1, $1
sra $2, $4, 3
TAG508:
sub $4, $2, $2
multu $4, $4
bgez $2, TAG509
mult $4, $4
TAG509:
nor $1, $4, $4
bgez $1, TAG510
lui $3, 9
bgtz $1, TAG510
TAG510:
multu $3, $3
srl $2, $3, 10
lw $3, -576($2)
mflo $2
TAG511:
mtlo $2
andi $2, $2, 8
mflo $4
sw $4, 0($4)
TAG512:
mflo $4
lui $3, 4
addu $2, $3, $4
lui $1, 15
TAG513:
andi $4, $1, 13
bgtz $4, TAG514
lui $3, 14
slt $1, $3, $3
TAG514:
lui $4, 11
mult $4, $4
beq $1, $4, TAG515
lbu $2, 0($1)
TAG515:
multu $2, $2
sub $4, $2, $2
sh $2, 0($4)
srav $3, $2, $4
TAG516:
mult $3, $3
bgez $3, TAG517
lui $3, 7
mult $3, $3
TAG517:
sll $0, $0, 0
mthi $3
mflo $3
mthi $3
TAG518:
lui $2, 7
mtlo $2
lui $4, 2
sra $2, $2, 15
TAG519:
mult $2, $2
mfhi $1
bltz $1, TAG520
mfhi $3
TAG520:
mult $3, $3
lb $1, 0($3)
lui $4, 8
lh $4, 0($3)
TAG521:
lh $2, 0($4)
sh $2, 0($4)
mult $2, $4
bltz $4, TAG522
TAG522:
srlv $2, $2, $2
srl $2, $2, 4
mult $2, $2
lbu $4, 0($2)
TAG523:
sh $4, 0($4)
lui $2, 1
mult $4, $4
mtlo $2
TAG524:
lui $3, 7
sll $0, $0, 0
addu $4, $4, $4
lbu $2, 0($4)
TAG525:
lui $3, 9
srl $1, $3, 11
bgtz $3, TAG526
mthi $3
TAG526:
and $1, $1, $1
srlv $1, $1, $1
mthi $1
mfhi $4
TAG527:
beq $4, $4, TAG528
mult $4, $4
mtlo $4
multu $4, $4
TAG528:
subu $1, $4, $4
mtlo $1
mthi $4
xori $2, $4, 10
TAG529:
bne $2, $2, TAG530
nor $1, $2, $2
mthi $2
lw $3, 299($1)
TAG530:
lui $1, 3
lui $3, 4
div $1, $3
xori $2, $1, 11
TAG531:
beq $2, $2, TAG532
div $2, $2
blez $2, TAG532
lw $3, 0($2)
TAG532:
slt $2, $3, $3
mthi $2
ori $4, $2, 5
lui $2, 9
TAG533:
lui $3, 3
subu $1, $3, $3
slt $2, $2, $1
add $1, $2, $2
TAG534:
slti $4, $1, 6
sltu $2, $1, $1
lb $2, 0($4)
mflo $3
TAG535:
addiu $2, $3, 7
bgez $2, TAG536
multu $3, $2
sw $3, 0($2)
TAG536:
lh $3, 0($2)
xori $4, $3, 13
sll $2, $4, 13
sltiu $4, $4, 7
TAG537:
multu $4, $4
bgez $4, TAG538
sw $4, 0($4)
divu $4, $4
TAG538:
mult $4, $4
sw $4, 0($4)
addi $1, $4, 5
lb $2, 0($1)
TAG539:
bltz $2, TAG540
lbu $2, 0($2)
blez $2, TAG540
sb $2, 0($2)
TAG540:
lb $3, 0($2)
sb $2, 0($3)
mthi $3
addu $3, $3, $2
TAG541:
sh $3, 0($3)
lui $4, 8
lui $2, 6
sll $0, $0, 0
TAG542:
bltz $2, TAG543
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG543:
sll $0, $0, 0
bne $2, $2, TAG544
sllv $4, $2, $2
lui $1, 14
TAG544:
bne $1, $1, TAG545
div $1, $1
bne $1, $1, TAG545
xor $2, $1, $1
TAG545:
lui $2, 6
mthi $2
lui $3, 3
multu $2, $2
TAG546:
srl $1, $3, 10
subu $1, $1, $3
bgtz $3, TAG547
mtlo $1
TAG547:
mult $1, $1
beq $1, $1, TAG548
div $1, $1
nor $3, $1, $1
TAG548:
sll $0, $0, 0
mthi $3
mthi $3
mflo $2
TAG549:
sb $2, 0($2)
lb $1, 0($2)
bne $2, $1, TAG550
multu $1, $2
TAG550:
slti $4, $1, 0
nor $3, $1, $1
beq $4, $4, TAG551
divu $4, $1
TAG551:
blez $3, TAG552
lb $4, 2($3)
beq $3, $3, TAG552
sltiu $2, $3, 5
TAG552:
subu $2, $2, $2
sltu $3, $2, $2
mthi $2
or $1, $3, $3
TAG553:
multu $1, $1
lhu $1, 0($1)
lh $1, -256($1)
beq $1, $1, TAG554
TAG554:
mfhi $4
divu $1, $1
mfhi $2
lbu $4, -256($1)
TAG555:
lbu $4, 0($4)
blez $4, TAG556
mfhi $2
bgez $2, TAG556
TAG556:
lb $2, 0($2)
sw $2, 0($2)
beq $2, $2, TAG557
sh $2, 0($2)
TAG557:
lw $4, 0($2)
mult $4, $4
beq $4, $4, TAG558
mtlo $2
TAG558:
mult $4, $4
bgtz $4, TAG559
lw $2, 0($4)
sra $2, $2, 4
TAG559:
sb $2, 0($2)
mtlo $2
srlv $2, $2, $2
lhu $4, 0($2)
TAG560:
bne $4, $4, TAG561
lui $4, 10
blez $4, TAG561
slti $4, $4, 0
TAG561:
lui $1, 3
mthi $4
bgtz $4, TAG562
multu $4, $1
TAG562:
divu $1, $1
sll $0, $0, 0
slt $3, $1, $1
andi $1, $3, 7
TAG563:
sll $2, $1, 5
lb $2, 0($1)
multu $2, $2
sra $3, $1, 8
TAG564:
bltz $3, TAG565
multu $3, $3
beq $3, $3, TAG565
sra $1, $3, 1
TAG565:
sh $1, 0($1)
sra $4, $1, 5
sh $4, 0($1)
addiu $2, $1, 9
TAG566:
beq $2, $2, TAG567
sra $4, $2, 0
srav $4, $2, $4
mfhi $4
TAG567:
div $4, $4
mflo $1
bne $4, $4, TAG568
slti $4, $1, 15
TAG568:
bne $4, $4, TAG569
lbu $1, 0($4)
sllv $1, $1, $4
sub $1, $1, $1
TAG569:
mflo $4
and $3, $1, $4
sw $4, 0($1)
mult $4, $3
TAG570:
bne $3, $3, TAG571
mflo $4
lui $3, 2
srav $3, $3, $3
TAG571:
slt $4, $3, $3
sltiu $1, $4, 11
nor $3, $3, $3
mflo $2
TAG572:
blez $2, TAG573
mtlo $2
divu $2, $2
blez $2, TAG573
TAG573:
lw $4, 0($2)
bgtz $4, TAG574
lui $4, 12
bne $2, $4, TAG574
TAG574:
srl $1, $4, 7
mult $4, $4
lui $2, 13
bgtz $1, TAG575
TAG575:
div $2, $2
addu $4, $2, $2
sltu $3, $2, $4
bne $3, $2, TAG576
TAG576:
mthi $3
beq $3, $3, TAG577
subu $1, $3, $3
bne $1, $1, TAG577
TAG577:
mfhi $1
bne $1, $1, TAG578
addiu $1, $1, 7
sw $1, 0($1)
TAG578:
sh $1, 0($1)
sll $4, $1, 0
mult $1, $1
bltz $4, TAG579
TAG579:
lui $1, 4
lui $1, 1
lui $3, 7
andi $1, $1, 15
TAG580:
sh $1, 0($1)
lbu $2, 0($1)
sb $1, 0($2)
blez $2, TAG581
TAG581:
mthi $2
mthi $2
mfhi $3
bgez $2, TAG582
TAG582:
srav $2, $3, $3
sb $2, 0($2)
sra $3, $3, 4
blez $3, TAG583
TAG583:
lui $2, 14
bgez $2, TAG584
sltu $3, $3, $3
andi $1, $2, 5
TAG584:
addu $2, $1, $1
srav $3, $2, $1
xor $4, $1, $2
bgtz $1, TAG585
TAG585:
mult $4, $4
mtlo $4
bgez $4, TAG586
or $2, $4, $4
TAG586:
beq $2, $2, TAG587
mult $2, $2
mult $2, $2
mtlo $2
TAG587:
sh $2, 0($2)
lbu $1, 0($2)
bltz $1, TAG588
lui $4, 13
TAG588:
mtlo $4
or $2, $4, $4
blez $4, TAG589
xor $1, $2, $4
TAG589:
sub $3, $1, $1
mult $3, $1
multu $3, $1
lb $1, 0($3)
TAG590:
mfhi $1
beq $1, $1, TAG591
srlv $3, $1, $1
bgez $3, TAG591
TAG591:
nor $2, $3, $3
addu $4, $2, $3
blez $2, TAG592
or $2, $2, $4
TAG592:
mflo $4
bltz $2, TAG593
mthi $2
bgtz $4, TAG593
TAG593:
mfhi $2
mult $2, $4
mtlo $4
bgtz $4, TAG594
TAG594:
multu $2, $2
lui $3, 8
sll $0, $0, 0
nor $1, $3, $2
TAG595:
sb $1, 0($1)
sb $1, 0($1)
ori $2, $1, 6
mthi $2
TAG596:
nor $4, $2, $2
sh $2, 0($2)
mtlo $2
sh $4, 7($4)
TAG597:
sb $4, 7($4)
beq $4, $4, TAG598
mult $4, $4
bgtz $4, TAG598
TAG598:
lui $2, 12
sw $4, 7($4)
addiu $1, $2, 3
slti $1, $2, 2
TAG599:
srav $4, $1, $1
mthi $4
multu $4, $1
sub $3, $1, $1
TAG600:
bgez $3, TAG601
lhu $1, 0($3)
lh $3, 0($1)
beq $1, $1, TAG601
TAG601:
multu $3, $3
addi $1, $3, 13
addu $2, $3, $3
mflo $2
TAG602:
lw $3, 0($2)
sub $1, $3, $2
sw $1, 7($1)
sllv $1, $2, $1
TAG603:
multu $1, $1
lui $3, 11
divu $1, $3
blez $1, TAG604
TAG604:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG605
TAG605:
mthi $1
bne $1, $1, TAG606
lui $3, 3
xor $2, $3, $3
TAG606:
mtlo $2
lb $1, 0($2)
bltz $1, TAG607
mthi $1
TAG607:
sh $1, 7($1)
sh $1, 7($1)
mthi $1
bne $1, $1, TAG608
TAG608:
mtlo $1
lb $3, 7($1)
mflo $1
blez $1, TAG609
TAG609:
lui $4, 6
div $4, $1
sll $0, $0, 0
sll $0, $0, 0
TAG610:
nor $3, $2, $2
addu $2, $2, $2
multu $2, $2
lui $3, 14
TAG611:
mflo $2
beq $2, $2, TAG612
multu $2, $2
divu $3, $2
TAG612:
sw $2, 0($2)
lui $3, 4
mflo $4
sll $4, $3, 9
TAG613:
mfhi $4
sh $4, 0($4)
srav $1, $4, $4
srl $1, $4, 1
TAG614:
beq $1, $1, TAG615
multu $1, $1
lbu $4, 0($1)
multu $1, $4
TAG615:
add $4, $4, $4
bne $4, $4, TAG616
sh $4, 0($4)
andi $2, $4, 13
TAG616:
sllv $4, $2, $2
lb $3, 0($4)
addiu $2, $4, 15
multu $4, $3
TAG617:
beq $2, $2, TAG618
lb $2, 0($2)
lui $2, 15
lui $4, 15
TAG618:
mfhi $3
lhu $2, 0($3)
sltu $4, $2, $2
mflo $3
TAG619:
sw $3, 0($3)
mfhi $2
lui $2, 11
or $4, $2, $2
TAG620:
sltu $4, $4, $4
mult $4, $4
addi $1, $4, 2
lhu $3, 0($1)
TAG621:
mflo $3
sh $3, 0($3)
mthi $3
beq $3, $3, TAG622
TAG622:
sw $3, 0($3)
mthi $3
sub $1, $3, $3
sw $3, 0($3)
TAG623:
multu $1, $1
addiu $2, $1, 3
addi $4, $1, 15
mfhi $1
TAG624:
or $3, $1, $1
bne $1, $1, TAG625
mflo $3
blez $1, TAG625
TAG625:
lhu $2, 0($3)
mult $2, $2
beq $2, $2, TAG626
mult $2, $2
TAG626:
andi $3, $2, 9
blez $2, TAG627
ori $4, $2, 2
lhu $1, 0($4)
TAG627:
multu $1, $1
lb $1, 0($1)
mfhi $2
addu $4, $2, $2
TAG628:
sll $3, $4, 8
lui $1, 2
beq $3, $3, TAG629
mflo $2
TAG629:
bltz $2, TAG630
xori $1, $2, 8
multu $2, $2
mfhi $3
TAG630:
addi $4, $3, 3
mtlo $3
lb $2, 0($4)
andi $4, $4, 6
TAG631:
sb $4, 0($4)
mflo $2
bne $2, $4, TAG632
mtlo $2
TAG632:
srav $2, $2, $2
mfhi $1
lui $2, 0
mflo $4
TAG633:
srav $3, $4, $4
lhu $4, 0($4)
mult $3, $3
mthi $4
TAG634:
addu $1, $4, $4
lui $1, 2
sltu $4, $4, $4
sll $0, $0, 0
TAG635:
sllv $3, $3, $3
add $3, $3, $3
srav $1, $3, $3
or $2, $3, $3
TAG636:
lh $2, 0($2)
mult $2, $2
andi $1, $2, 10
subu $2, $2, $2
TAG637:
beq $2, $2, TAG638
addi $4, $2, 2
mtlo $2
lui $1, 4
TAG638:
bgez $1, TAG639
lui $1, 9
beq $1, $1, TAG639
lui $4, 12
TAG639:
lh $2, 0($4)
mthi $2
lui $2, 14
lb $4, 0($4)
TAG640:
lui $2, 9
bne $4, $2, TAG641
div $2, $2
bne $4, $2, TAG641
TAG641:
mult $2, $2
addiu $1, $2, 9
sll $0, $0, 0
sllv $3, $2, $1
TAG642:
beq $3, $3, TAG643
sll $0, $0, 0
lw $2, 0($3)
mthi $3
TAG643:
sltu $2, $2, $2
blez $2, TAG644
srav $1, $2, $2
addi $1, $2, 1
TAG644:
mtlo $1
blez $1, TAG645
sb $1, 0($1)
multu $1, $1
TAG645:
xor $3, $1, $1
mthi $3
lbu $4, 0($1)
bne $4, $4, TAG646
TAG646:
mtlo $4
bltz $4, TAG647
or $2, $4, $4
mfhi $3
TAG647:
lui $3, 1
lui $1, 2
lui $3, 3
sltu $1, $1, $3
TAG648:
mflo $3
sra $1, $3, 12
srl $4, $1, 7
lw $4, 0($4)
TAG649:
mtlo $4
mfhi $3
lbu $2, 0($3)
sb $3, 0($2)
TAG650:
lui $4, 13
sll $0, $0, 0
lb $1, 0($3)
lw $1, 0($3)
TAG651:
slti $3, $1, 13
lui $3, 4
subu $2, $3, $1
mtlo $3
TAG652:
and $3, $2, $2
multu $2, $3
mult $3, $2
bltz $2, TAG653
TAG653:
lui $3, 15
sll $0, $0, 0
bne $3, $3, TAG654
sll $0, $0, 0
TAG654:
sll $0, $0, 0
bgez $3, TAG655
mfhi $4
mthi $3
TAG655:
sltu $1, $4, $4
bgez $4, TAG656
mflo $3
mflo $2
TAG656:
slti $1, $2, 1
beq $1, $2, TAG657
divu $1, $2
lui $2, 15
TAG657:
mflo $4
bne $2, $4, TAG658
lui $2, 3
sh $4, 0($2)
TAG658:
bltz $2, TAG659
sll $3, $2, 14
bltz $3, TAG659
mtlo $2
TAG659:
lui $1, 2
lui $1, 13
addiu $4, $1, 1
sltu $3, $1, $4
TAG660:
sltiu $4, $3, 11
mthi $4
bne $4, $4, TAG661
lui $4, 7
TAG661:
mthi $4
mtlo $4
sllv $1, $4, $4
sll $0, $0, 0
TAG662:
sll $0, $0, 0
bgez $1, TAG663
multu $4, $4
div $1, $4
TAG663:
lui $2, 4
divu $4, $2
sll $0, $0, 0
sll $0, $0, 0
TAG664:
sra $2, $2, 10
subu $2, $2, $2
sw $2, 0($2)
mthi $2
TAG665:
lui $3, 15
andi $2, $2, 3
beq $2, $3, TAG666
lw $2, 0($2)
TAG666:
ori $4, $2, 6
mflo $4
sb $4, 0($4)
blez $2, TAG667
TAG667:
lbu $4, 0($4)
lui $3, 14
lb $3, 0($4)
bgtz $4, TAG668
TAG668:
sb $3, 0($3)
bgtz $3, TAG669
lui $4, 2
lbu $2, 0($3)
TAG669:
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG670:
mult $2, $2
bne $2, $2, TAG671
sll $0, $0, 0
mthi $2
TAG671:
sra $4, $2, 15
lh $2, 0($4)
lui $3, 6
mult $2, $4
TAG672:
sll $0, $0, 0
lui $1, 6
mtlo $3
sltiu $1, $3, 12
TAG673:
xori $1, $1, 6
addiu $2, $1, 8
bgtz $2, TAG674
addiu $1, $1, 11
TAG674:
mthi $1
lb $3, 0($1)
lb $4, 0($1)
sb $3, 0($1)
TAG675:
slti $4, $4, 14
bne $4, $4, TAG676
mfhi $1
mtlo $4
TAG676:
sb $1, 0($1)
addiu $1, $1, 11
lui $4, 15
multu $1, $1
TAG677:
lui $1, 11
mthi $1
bgtz $1, TAG678
sll $0, $0, 0
TAG678:
sll $0, $0, 0
beq $1, $1, TAG679
mthi $1
beq $1, $1, TAG679
TAG679:
lui $2, 6
mfhi $2
mfhi $1
mflo $4
TAG680:
bne $4, $4, TAG681
sll $3, $4, 8
bne $4, $3, TAG681
srl $3, $3, 10
TAG681:
srlv $3, $3, $3
or $1, $3, $3
sw $3, 0($3)
mtlo $3
TAG682:
mtlo $1
sb $1, 0($1)
lui $3, 13
slt $4, $1, $1
TAG683:
ori $4, $4, 1
sb $4, 0($4)
div $4, $4
mtlo $4
TAG684:
sra $2, $4, 5
lh $3, 0($2)
lui $3, 12
sb $3, 0($4)
TAG685:
mflo $2
mfhi $1
sltiu $2, $2, 1
lui $4, 3
TAG686:
blez $4, TAG687
mflo $2
lbu $3, 0($2)
ori $3, $3, 4
TAG687:
mult $3, $3
addiu $3, $3, 13
mflo $2
div $3, $3
TAG688:
bgtz $2, TAG689
srav $1, $2, $2
lw $4, 0($1)
multu $1, $2
TAG689:
bltz $4, TAG690
multu $4, $4
nor $3, $4, $4
ori $3, $4, 0
TAG690:
addu $3, $3, $3
mtlo $3
ori $1, $3, 0
mult $3, $3
TAG691:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG692
TAG692:
divu $2, $2
andi $4, $2, 11
mthi $2
sw $2, 0($2)
TAG693:
sltu $2, $4, $4
mflo $3
sll $4, $2, 14
mfhi $4
TAG694:
mthi $4
mfhi $3
mflo $3
bne $3, $3, TAG695
TAG695:
andi $4, $3, 1
mfhi $1
sb $4, 0($3)
or $1, $1, $4
TAG696:
sltiu $4, $1, 8
mflo $3
lhu $3, 0($4)
mfhi $1
TAG697:
nor $3, $1, $1
mult $1, $3
sra $2, $1, 12
mult $2, $3
TAG698:
mfhi $4
sh $2, 0($4)
sb $4, 0($2)
mflo $1
TAG699:
sllv $2, $1, $1
bne $1, $1, TAG700
lw $4, 0($1)
mult $2, $1
TAG700:
mthi $4
blez $4, TAG701
srl $3, $4, 13
andi $4, $4, 11
TAG701:
sh $4, 0($4)
mult $4, $4
slti $2, $4, 12
mult $2, $4
TAG702:
lui $1, 4
ori $3, $2, 2
divu $1, $1
beq $2, $2, TAG703
TAG703:
lb $1, 0($3)
div $3, $3
sltu $1, $3, $3
mult $1, $1
TAG704:
lh $4, 0($1)
bgtz $1, TAG705
srl $4, $1, 2
mfhi $4
TAG705:
lh $2, 0($4)
mtlo $4
lui $4, 1
addu $2, $2, $4
TAG706:
mthi $2
multu $2, $2
bltz $2, TAG707
mflo $1
TAG707:
sh $1, 0($1)
mfhi $1
bgtz $1, TAG708
lb $1, 0($1)
TAG708:
beq $1, $1, TAG709
lui $3, 15
bne $3, $1, TAG709
srl $4, $1, 6
TAG709:
divu $4, $4
mfhi $2
beq $2, $4, TAG710
sltiu $4, $2, 14
TAG710:
mflo $2
addu $4, $2, $2
bgtz $4, TAG711
mult $4, $4
TAG711:
lbu $1, 0($4)
sltiu $3, $1, 10
addu $2, $4, $4
bgtz $3, TAG712
TAG712:
lb $4, 0($2)
srlv $2, $2, $2
mflo $3
lui $1, 5
TAG713:
sll $0, $0, 0
srav $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG714:
blez $1, TAG715
mfhi $3
div $1, $1
bltz $1, TAG715
TAG715:
sh $3, 0($3)
sb $3, 0($3)
lh $1, 0($3)
xori $1, $3, 8
TAG716:
blez $1, TAG717
lui $4, 10
lbu $1, 0($1)
mthi $1
TAG717:
sw $1, 0($1)
lw $1, 0($1)
addiu $3, $1, 2
bltz $3, TAG718
TAG718:
sltiu $4, $3, 14
lh $3, 0($3)
beq $4, $3, TAG719
lb $2, 0($3)
TAG719:
subu $1, $2, $2
mthi $2
multu $1, $2
mfhi $2
TAG720:
bne $2, $2, TAG721
lh $1, 0($2)
srl $3, $1, 3
mult $1, $3
TAG721:
nor $4, $3, $3
or $1, $4, $3
bne $4, $4, TAG722
ori $3, $1, 0
TAG722:
sll $3, $3, 14
divu $3, $3
lbu $2, 16384($3)
addi $3, $2, 6
TAG723:
multu $3, $3
bne $3, $3, TAG724
lui $2, 13
sltiu $2, $2, 10
TAG724:
bgez $2, TAG725
lui $1, 14
beq $1, $1, TAG725
lb $4, 0($1)
TAG725:
divu $4, $4
subu $3, $4, $4
xori $1, $3, 1
multu $3, $3
TAG726:
multu $1, $1
lui $3, 7
bltz $1, TAG727
addu $2, $3, $3
TAG727:
lui $3, 11
beq $2, $3, TAG728
sltu $3, $2, $2
beq $3, $2, TAG728
TAG728:
nor $3, $3, $3
sw $3, 1($3)
divu $3, $3
bgtz $3, TAG729
TAG729:
sb $3, 1($3)
srav $1, $3, $3
blez $3, TAG730
mthi $3
TAG730:
blez $1, TAG731
mthi $1
lb $4, 0($1)
multu $4, $1
TAG731:
sh $4, 1($4)
bgez $4, TAG732
andi $4, $4, 13
mult $4, $4
TAG732:
lbu $4, 0($4)
blez $4, TAG733
multu $4, $4
beq $4, $4, TAG733
TAG733:
lui $3, 15
bne $4, $4, TAG734
subu $3, $3, $4
mfhi $2
TAG734:
mfhi $4
sw $2, 0($4)
bne $2, $2, TAG735
sw $4, 0($2)
TAG735:
sw $4, 0($4)
sb $4, 0($4)
lbu $4, 0($4)
lbu $4, 0($4)
TAG736:
sw $4, 0($4)
mthi $4
beq $4, $4, TAG737
mflo $3
TAG737:
mfhi $2
mflo $4
sltiu $3, $4, 10
sw $2, 0($2)
TAG738:
bltz $3, TAG739
lui $3, 15
sll $0, $0, 0
div $3, $3
TAG739:
bltz $3, TAG740
andi $1, $3, 6
sw $1, 0($1)
sll $0, $0, 0
TAG740:
sll $0, $0, 0
sllv $4, $3, $3
multu $4, $1
bne $3, $4, TAG741
TAG741:
sra $4, $4, 14
bltz $4, TAG742
lui $3, 13
mflo $4
TAG742:
xori $3, $4, 7
mthi $3
sllv $4, $4, $4
lbu $2, 0($4)
TAG743:
sub $3, $2, $2
bgtz $3, TAG744
lui $1, 4
beq $3, $1, TAG744
TAG744:
sll $0, $0, 0
div $1, $1
mthi $1
mflo $3
TAG745:
sltiu $4, $3, 5
subu $2, $4, $4
nor $4, $3, $4
div $2, $3
TAG746:
mfhi $4
lh $2, 0($4)
mthi $4
sb $2, 0($4)
TAG747:
srav $4, $2, $2
mtlo $4
lh $4, 0($2)
bgez $4, TAG748
TAG748:
lui $2, 10
sll $0, $0, 0
bgtz $4, TAG749
mfhi $1
TAG749:
addiu $1, $1, 9
lb $2, 0($1)
lw $2, 0($2)
lui $4, 5
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop