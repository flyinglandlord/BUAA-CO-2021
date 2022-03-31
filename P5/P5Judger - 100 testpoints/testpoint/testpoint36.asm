ori $1, $0, 7
ori $2, $0, 8
ori $3, $0, 14
ori $4, $0, 8
sw $1, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $4, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $3, 124($0)
srlv $2, $2, $2
sub $4, $2, $2
mtlo $4
andi $2, $4, 4
TAG1:
blez $2, TAG2
xori $2, $2, 10
lui $4, 2
lh $2, 0($2)
TAG2:
lui $4, 13
bltz $2, TAG3
mthi $4
lhu $1, 0($2)
TAG3:
blez $1, TAG4
mult $1, $1
mfhi $3
mtlo $3
TAG4:
beq $3, $3, TAG5
slt $1, $3, $3
sll $3, $3, 13
bgtz $1, TAG5
TAG5:
sra $2, $3, 6
mthi $3
lui $1, 0
mthi $2
TAG6:
subu $1, $1, $1
lh $1, 0($1)
lb $1, 0($1)
lb $3, 0($1)
TAG7:
blez $3, TAG8
lbu $2, 0($3)
srav $2, $3, $3
and $3, $2, $2
TAG8:
beq $3, $3, TAG9
mfhi $4
blez $4, TAG9
sub $3, $3, $4
TAG9:
addiu $3, $3, 9
slti $3, $3, 9
mfhi $1
sh $1, 0($1)
TAG10:
multu $1, $1
lh $4, 0($1)
lw $1, 0($4)
sw $1, 0($1)
TAG11:
mult $1, $1
mthi $1
sb $1, 0($1)
beq $1, $1, TAG12
TAG12:
addi $3, $1, 12
mtlo $3
addi $4, $1, 8
xor $1, $4, $1
TAG13:
div $1, $1
div $1, $1
mtlo $1
mult $1, $1
TAG14:
xori $2, $1, 1
srav $1, $1, $2
or $3, $2, $2
lbu $3, 0($3)
TAG15:
lbu $4, 0($3)
multu $3, $3
lui $3, 15
multu $3, $4
TAG16:
sll $0, $0, 0
sb $1, 0($1)
mult $1, $1
addu $4, $3, $1
TAG17:
sll $0, $0, 0
lui $2, 0
bne $2, $2, TAG18
mfhi $1
TAG18:
sh $1, 0($1)
mfhi $4
xor $1, $4, $4
bgez $1, TAG19
TAG19:
sra $1, $1, 5
mfhi $3
lhu $1, 0($1)
lui $3, 15
TAG20:
mult $3, $3
sll $0, $0, 0
multu $3, $3
divu $3, $3
TAG21:
sll $0, $0, 0
lw $4, 0($2)
and $2, $3, $3
sll $0, $0, 0
TAG22:
bne $3, $3, TAG23
multu $3, $3
sll $0, $0, 0
mflo $3
TAG23:
sh $3, 0($3)
mtlo $3
lui $2, 4
xor $3, $3, $2
TAG24:
mflo $1
multu $3, $1
sll $0, $0, 0
sll $0, $0, 0
TAG25:
lui $2, 5
beq $2, $1, TAG26
mflo $4
lbu $3, 0($4)
TAG26:
beq $3, $3, TAG27
srlv $3, $3, $3
slt $1, $3, $3
mthi $3
TAG27:
beq $1, $1, TAG28
srav $3, $1, $1
andi $1, $1, 14
mtlo $1
TAG28:
sll $1, $1, 8
lui $4, 11
lui $4, 5
addi $1, $1, 12
TAG29:
bgez $1, TAG30
sb $1, 0($1)
srl $3, $1, 2
mfhi $4
TAG30:
sll $0, $0, 0
mtlo $4
bltz $4, TAG31
ori $1, $4, 14
TAG31:
blez $1, TAG32
lui $3, 2
addiu $1, $3, 7
sll $0, $0, 0
TAG32:
sra $4, $3, 4
ori $2, $3, 12
divu $2, $3
lui $1, 1
TAG33:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG34:
sltiu $2, $1, 8
sw $2, 0($2)
sll $0, $0, 0
multu $2, $2
TAG35:
lh $1, 0($2)
or $4, $2, $2
sltu $1, $4, $2
blez $1, TAG36
TAG36:
lui $1, 10
sll $4, $1, 2
divu $1, $1
lui $1, 15
TAG37:
sll $1, $1, 8
mult $1, $1
bne $1, $1, TAG38
div $1, $1
TAG38:
mflo $1
bne $1, $1, TAG39
sll $4, $1, 9
addu $1, $1, $1
TAG39:
div $1, $1
nor $3, $1, $1
sb $3, 3($3)
mfhi $1
TAG40:
subu $1, $1, $1
beq $1, $1, TAG41
mfhi $1
sh $1, 0($1)
TAG41:
or $4, $1, $1
multu $4, $4
sll $3, $4, 2
mult $1, $1
TAG42:
beq $3, $3, TAG43
sh $3, 0($3)
lui $4, 6
sw $4, 0($3)
TAG43:
mthi $4
lw $3, 0($4)
bgtz $3, TAG44
mflo $3
TAG44:
mflo $2
mthi $2
mult $2, $3
mflo $4
TAG45:
multu $4, $4
bgtz $4, TAG46
lb $3, 0($4)
sb $4, 0($3)
TAG46:
sb $3, 0($3)
blez $3, TAG47
multu $3, $3
lui $4, 5
TAG47:
mfhi $2
lbu $3, 0($4)
mthi $2
bne $2, $2, TAG48
TAG48:
sw $3, 0($3)
mult $3, $3
bltz $3, TAG49
lui $3, 4
TAG49:
lui $2, 14
beq $3, $3, TAG50
sll $0, $0, 0
xori $2, $2, 8
TAG50:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
sll $2, $1, 9
TAG51:
bltz $2, TAG52
lui $2, 7
sll $0, $0, 0
bgez $2, TAG52
TAG52:
mflo $2
multu $2, $2
sw $2, 0($1)
lui $3, 15
TAG53:
lui $3, 12
mtlo $3
multu $3, $3
sll $0, $0, 0
TAG54:
beq $4, $4, TAG55
mult $4, $4
lbu $3, 0($4)
bne $3, $3, TAG55
TAG55:
sll $0, $0, 0
lui $1, 0
sh $4, 0($4)
mfhi $2
TAG56:
mult $2, $2
sllv $4, $2, $2
or $2, $2, $4
lb $2, 0($2)
TAG57:
mthi $2
multu $2, $2
beq $2, $2, TAG58
multu $2, $2
TAG58:
mult $2, $2
blez $2, TAG59
sb $2, 0($2)
bne $2, $2, TAG59
TAG59:
lw $2, 0($2)
mult $2, $2
lui $4, 2
bne $2, $4, TAG60
TAG60:
mtlo $4
srl $1, $4, 5
bne $4, $1, TAG61
sh $4, -4096($1)
TAG61:
sltiu $3, $1, 10
mtlo $1
srl $1, $1, 4
mult $1, $3
TAG62:
sra $2, $1, 3
div $2, $1
bne $2, $1, TAG63
mfhi $2
TAG63:
mthi $2
addiu $1, $2, 0
lhu $3, 0($2)
sw $1, 0($2)
TAG64:
sb $3, 0($3)
addiu $1, $3, 1
andi $3, $1, 9
bltz $3, TAG65
TAG65:
lui $1, 12
bltz $3, TAG66
lbu $1, 0($3)
lui $2, 6
TAG66:
mfhi $1
sb $2, 0($1)
divu $2, $2
sll $0, $0, 0
TAG67:
sllv $3, $2, $2
mtlo $2
srl $4, $2, 4
mflo $3
TAG68:
bne $3, $3, TAG69
sll $0, $0, 0
div $3, $3
multu $3, $3
TAG69:
sll $0, $0, 0
sra $2, $3, 2
sll $0, $0, 0
div $2, $3
TAG70:
mult $1, $1
mthi $1
sb $1, 0($1)
lui $2, 15
TAG71:
sll $0, $0, 0
xori $4, $2, 8
bltz $4, TAG72
lui $4, 15
TAG72:
lui $1, 10
multu $4, $4
sll $0, $0, 0
bne $4, $4, TAG73
TAG73:
sltiu $3, $1, 4
bne $1, $3, TAG74
xor $4, $1, $3
mult $3, $1
TAG74:
bltz $4, TAG75
srlv $4, $4, $4
sltiu $1, $4, 1
sll $0, $0, 0
TAG75:
lhu $2, 0($1)
mfhi $1
multu $1, $1
sh $1, 0($2)
TAG76:
lui $3, 11
sll $0, $0, 0
bltz $1, TAG77
mflo $3
TAG77:
bgez $3, TAG78
sll $0, $0, 0
lbu $1, 0($3)
bne $2, $2, TAG78
TAG78:
mult $1, $1
lui $1, 15
lui $4, 15
andi $1, $1, 7
TAG79:
sw $1, 0($1)
addiu $1, $1, 1
lui $1, 4
sll $0, $0, 0
TAG80:
beq $1, $1, TAG81
lui $3, 12
sh $3, 0($3)
lui $3, 6
TAG81:
mflo $2
sll $0, $0, 0
addu $1, $2, $3
sll $0, $0, 0
TAG82:
bgtz $4, TAG83
mfhi $3
sh $4, 0($4)
sub $1, $4, $4
TAG83:
mfhi $3
bgtz $1, TAG84
lui $1, 14
slti $1, $1, 15
TAG84:
srlv $4, $1, $1
lui $3, 8
mtlo $4
subu $1, $3, $4
TAG85:
mthi $1
sll $3, $1, 5
mflo $4
divu $4, $3
TAG86:
mthi $4
mthi $4
nor $2, $4, $4
sll $0, $0, 0
TAG87:
slt $2, $2, $2
mfhi $2
div $2, $2
mflo $3
TAG88:
sb $3, 0($3)
mtlo $3
div $3, $3
lbu $3, 0($3)
TAG89:
and $4, $3, $3
addu $4, $3, $3
lh $4, 0($4)
multu $4, $4
TAG90:
sw $4, 0($4)
sra $3, $4, 1
subu $2, $4, $3
lui $3, 9
TAG91:
sll $0, $0, 0
slti $1, $3, 2
blez $3, TAG92
multu $1, $1
TAG92:
multu $1, $1
sltu $4, $1, $1
sw $1, 0($4)
mthi $4
TAG93:
sh $4, 0($4)
lb $4, 0($4)
addi $2, $4, 0
mflo $1
TAG94:
mtlo $1
addi $2, $1, 10
slt $2, $1, $1
multu $2, $2
TAG95:
lh $3, 0($2)
mult $3, $2
mflo $4
bgez $3, TAG96
TAG96:
and $2, $4, $4
and $3, $2, $4
mtlo $4
beq $4, $2, TAG97
TAG97:
lui $2, 9
mflo $1
mult $1, $3
mflo $1
TAG98:
slti $3, $1, 13
slt $2, $1, $3
beq $3, $3, TAG99
mult $3, $3
TAG99:
mtlo $2
mfhi $1
lui $3, 13
lh $4, 0($1)
TAG100:
ori $1, $4, 15
beq $1, $1, TAG101
mtlo $1
div $4, $4
TAG101:
beq $1, $1, TAG102
mthi $1
lw $3, 0($1)
mfhi $2
TAG102:
subu $3, $2, $2
mtlo $3
addiu $2, $2, 9
blez $2, TAG103
TAG103:
lui $1, 6
divu $1, $1
sh $1, 0($2)
bne $1, $2, TAG104
TAG104:
mfhi $1
lw $4, 0($1)
lui $1, 15
bne $1, $4, TAG105
TAG105:
subu $2, $1, $1
lui $1, 15
sll $0, $0, 0
sll $0, $0, 0
TAG106:
bltz $4, TAG107
lui $1, 4
beq $1, $4, TAG107
lw $4, 0($4)
TAG107:
blez $4, TAG108
sh $4, 0($4)
lbu $2, 0($4)
mfhi $4
TAG108:
multu $4, $4
lui $3, 13
bltz $4, TAG109
sltu $3, $3, $3
TAG109:
mfhi $2
mflo $3
subu $4, $3, $3
lbu $4, 0($3)
TAG110:
sh $4, 0($4)
mthi $4
lui $1, 10
div $4, $1
TAG111:
subu $2, $1, $1
mthi $1
beq $2, $1, TAG112
multu $1, $1
TAG112:
blez $2, TAG113
and $1, $2, $2
sb $2, 0($1)
sw $1, 0($1)
TAG113:
bgez $1, TAG114
addi $1, $1, 15
ori $2, $1, 0
sb $1, 0($2)
TAG114:
bltz $2, TAG115
mthi $2
sltu $1, $2, $2
mflo $2
TAG115:
beq $2, $2, TAG116
lui $3, 2
bne $3, $3, TAG116
lw $4, 0($2)
TAG116:
lhu $3, 0($4)
bne $4, $4, TAG117
mflo $1
sw $3, 0($1)
TAG117:
sw $1, 0($1)
lbu $2, 0($1)
srl $1, $1, 13
and $1, $1, $1
TAG118:
srlv $2, $1, $1
mflo $1
sltiu $2, $2, 5
beq $2, $2, TAG119
TAG119:
lbu $1, 0($2)
lui $1, 9
lui $3, 4
subu $1, $1, $1
TAG120:
addu $2, $1, $1
mfhi $2
sh $2, 0($2)
lui $4, 0
TAG121:
beq $4, $4, TAG122
sll $1, $4, 3
mtlo $4
xori $1, $4, 5
TAG122:
mtlo $1
bgtz $1, TAG123
lb $2, 0($1)
bne $2, $2, TAG123
TAG123:
mflo $1
lui $2, 9
mfhi $4
slti $3, $2, 13
TAG124:
mtlo $3
mult $3, $3
lui $3, 8
div $3, $3
TAG125:
andi $3, $3, 0
mthi $3
lb $1, 0($3)
mthi $3
TAG126:
mflo $3
addu $3, $3, $3
mthi $3
lw $4, 0($1)
TAG127:
nor $3, $4, $4
bne $3, $4, TAG128
mflo $1
lui $4, 4
TAG128:
multu $4, $4
sll $1, $4, 0
lui $3, 4
mflo $3
TAG129:
sltiu $1, $3, 8
bne $3, $1, TAG130
sllv $2, $3, $1
bgtz $2, TAG130
TAG130:
mult $2, $2
bgtz $2, TAG131
ori $2, $2, 9
bgtz $2, TAG131
TAG131:
mult $2, $2
addu $2, $2, $2
multu $2, $2
sh $2, 0($2)
TAG132:
srlv $3, $2, $2
sh $2, 0($3)
bne $3, $2, TAG133
mtlo $2
TAG133:
bne $3, $3, TAG134
multu $3, $3
mult $3, $3
bne $3, $3, TAG134
TAG134:
mult $3, $3
mtlo $3
lui $2, 4
mult $3, $2
TAG135:
sll $0, $0, 0
blez $2, TAG136
div $2, $2
sll $0, $0, 0
TAG136:
mfhi $3
addiu $1, $4, 9
or $2, $1, $4
subu $4, $2, $1
TAG137:
sll $2, $4, 12
slt $1, $2, $2
mult $4, $1
mult $2, $2
TAG138:
sh $1, 0($1)
mthi $1
and $1, $1, $1
srlv $2, $1, $1
TAG139:
lhu $3, 0($2)
lhu $3, 0($3)
lui $3, 3
divu $3, $3
TAG140:
slti $3, $3, 0
mult $3, $3
sw $3, 0($3)
sb $3, 0($3)
TAG141:
lui $3, 13
mfhi $4
mtlo $3
bltz $3, TAG142
TAG142:
multu $4, $4
mtlo $4
sh $4, 0($4)
sb $4, 0($4)
TAG143:
ori $2, $4, 9
multu $4, $4
mtlo $4
sra $3, $4, 9
TAG144:
sb $3, 0($3)
multu $3, $3
mfhi $1
beq $3, $1, TAG145
TAG145:
sltiu $4, $1, 10
beq $1, $1, TAG146
mflo $3
multu $4, $1
TAG146:
lui $4, 12
mthi $3
mflo $2
mthi $2
TAG147:
bltz $2, TAG148
lui $4, 2
bltz $2, TAG148
sltu $4, $2, $4
TAG148:
lui $2, 12
lui $3, 11
mfhi $1
sll $0, $0, 0
TAG149:
beq $3, $3, TAG150
sll $0, $0, 0
lui $2, 7
sh $1, 0($1)
TAG150:
mult $2, $2
srl $4, $2, 7
lui $4, 15
mthi $4
TAG151:
sllv $1, $4, $4
sll $0, $0, 0
blez $1, TAG152
sll $0, $0, 0
TAG152:
mthi $1
srlv $1, $1, $1
sll $0, $0, 0
xori $1, $1, 9
TAG153:
sltu $2, $1, $1
sll $0, $0, 0
bne $2, $2, TAG154
mtlo $2
TAG154:
beq $1, $1, TAG155
div $1, $1
mthi $1
ori $2, $1, 11
TAG155:
mult $2, $2
lui $2, 2
bne $2, $2, TAG156
lui $2, 14
TAG156:
sll $0, $0, 0
lui $3, 11
divu $3, $3
xor $1, $3, $2
TAG157:
mfhi $1
mtlo $1
lh $3, 0($1)
mult $3, $1
TAG158:
bne $3, $3, TAG159
mfhi $3
beq $3, $3, TAG159
mult $3, $3
TAG159:
beq $3, $3, TAG160
addu $1, $3, $3
lui $4, 11
bgez $1, TAG160
TAG160:
mfhi $1
sll $0, $0, 0
mthi $1
mthi $1
TAG161:
beq $1, $1, TAG162
mflo $4
mthi $1
lui $4, 14
TAG162:
bgtz $4, TAG163
sb $4, 0($4)
mfhi $3
mflo $4
TAG163:
lbu $2, 0($4)
multu $4, $2
mtlo $2
blez $2, TAG164
TAG164:
xor $1, $2, $2
mult $1, $1
lui $3, 11
and $3, $2, $2
TAG165:
sw $3, 0($3)
lb $3, 0($3)
lbu $4, 0($3)
slti $2, $3, 10
TAG166:
sb $2, 0($2)
srl $3, $2, 13
multu $3, $3
mult $3, $3
TAG167:
multu $3, $3
sra $4, $3, 6
ori $4, $4, 3
addiu $2, $4, 15
TAG168:
lui $1, 10
sll $0, $0, 0
beq $2, $2, TAG169
sb $1, 0($4)
TAG169:
lbu $1, 0($4)
lb $1, 0($1)
addu $1, $4, $4
sh $1, 0($1)
TAG170:
bne $1, $1, TAG171
div $1, $1
sb $1, 0($1)
xori $4, $1, 0
TAG171:
lui $2, 7
lui $1, 15
mtlo $2
blez $4, TAG172
TAG172:
slti $2, $1, 4
beq $1, $1, TAG173
sll $0, $0, 0
sw $2, 0($2)
TAG173:
mult $2, $2
mflo $4
multu $4, $2
mtlo $2
TAG174:
sll $2, $4, 9
mfhi $4
bltz $4, TAG175
sub $3, $2, $2
TAG175:
lh $2, 0($3)
addu $2, $2, $3
lhu $2, 0($3)
mtlo $2
TAG176:
lui $2, 2
sll $0, $0, 0
multu $2, $2
mthi $4
TAG177:
bne $4, $4, TAG178
lb $2, 0($4)
addi $2, $4, 13
bgtz $4, TAG178
TAG178:
mfhi $2
bne $2, $2, TAG179
sra $2, $2, 13
mfhi $3
TAG179:
lui $3, 13
div $3, $3
or $1, $3, $3
mfhi $1
TAG180:
sb $1, 0($1)
ori $4, $1, 12
srlv $1, $1, $1
sb $4, 0($1)
TAG181:
sb $1, 0($1)
bne $1, $1, TAG182
mthi $1
mult $1, $1
TAG182:
srl $3, $1, 8
sh $3, 0($1)
mult $1, $3
bgez $1, TAG183
TAG183:
sw $3, 0($3)
lh $2, 0($3)
bgtz $3, TAG184
sll $4, $3, 1
TAG184:
xor $4, $4, $4
mthi $4
lw $3, 0($4)
sh $4, 0($4)
TAG185:
mfhi $3
mtlo $3
lhu $3, 0($3)
multu $3, $3
TAG186:
and $1, $3, $3
sw $3, 0($1)
lui $2, 14
bne $1, $3, TAG187
TAG187:
mtlo $2
sll $0, $0, 0
bltz $2, TAG188
mult $2, $2
TAG188:
mfhi $4
srl $2, $2, 4
sll $0, $0, 0
mtlo $2
TAG189:
xori $3, $2, 11
mthi $3
mfhi $2
bgez $2, TAG190
TAG190:
subu $1, $2, $2
sltu $4, $1, $2
mtlo $2
mflo $2
TAG191:
sll $0, $0, 0
lui $2, 11
beq $2, $2, TAG192
div $2, $2
TAG192:
divu $2, $2
sllv $1, $2, $2
multu $1, $1
multu $2, $2
TAG193:
div $1, $1
mtlo $1
bltz $1, TAG194
lui $2, 7
TAG194:
lui $2, 11
bne $2, $2, TAG195
div $2, $2
sll $0, $0, 0
TAG195:
bgtz $4, TAG196
lb $1, 0($4)
slt $3, $1, $4
andi $4, $4, 4
TAG196:
srlv $3, $4, $4
div $4, $4
addiu $2, $4, 7
bne $3, $3, TAG197
TAG197:
slti $3, $2, 11
mfhi $2
bne $2, $3, TAG198
xori $1, $2, 1
TAG198:
mthi $1
mthi $1
subu $1, $1, $1
bne $1, $1, TAG199
TAG199:
sh $1, 0($1)
mtlo $1
bltz $1, TAG200
sb $1, 0($1)
TAG200:
slti $3, $1, 9
mthi $1
bgtz $1, TAG201
div $3, $3
TAG201:
sll $4, $3, 14
divu $3, $3
lui $3, 8
lui $2, 13
TAG202:
mthi $2
and $4, $2, $2
bgtz $2, TAG203
sll $0, $0, 0
TAG203:
mflo $2
mflo $1
mflo $2
beq $2, $2, TAG204
TAG204:
addu $3, $2, $2
sb $3, 0($2)
blez $3, TAG205
subu $2, $3, $3
TAG205:
bltz $2, TAG206
sllv $3, $2, $2
sltiu $3, $2, 1
mult $3, $2
TAG206:
mflo $1
or $1, $1, $3
beq $3, $3, TAG207
mtlo $1
TAG207:
sltiu $2, $1, 0
lb $4, 0($2)
mfhi $2
lb $3, 0($1)
TAG208:
lh $1, 0($3)
mflo $4
lui $2, 3
lh $4, 0($3)
TAG209:
lw $2, 0($4)
bne $2, $4, TAG210
mflo $4
mtlo $4
TAG210:
bgtz $4, TAG211
mflo $3
mtlo $4
beq $4, $4, TAG211
TAG211:
sltu $2, $3, $3
sw $3, 0($2)
mtlo $3
mtlo $2
TAG212:
multu $2, $2
mfhi $1
multu $2, $1
mflo $4
TAG213:
mtlo $4
mflo $1
mult $4, $1
mflo $4
TAG214:
lb $3, 0($4)
sllv $4, $3, $3
slti $3, $4, 11
lb $2, 0($4)
TAG215:
bgtz $2, TAG216
mthi $2
mthi $2
sub $1, $2, $2
TAG216:
sll $4, $1, 1
lbu $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG217
TAG217:
srl $3, $1, 12
mthi $3
ori $1, $1, 2
lb $4, 0($1)
TAG218:
srl $1, $4, 10
lui $2, 10
mflo $3
sra $3, $3, 14
TAG219:
mtlo $3
multu $3, $3
sh $3, 0($3)
mflo $4
TAG220:
mult $4, $4
mult $4, $4
sllv $1, $4, $4
mflo $4
TAG221:
beq $4, $4, TAG222
srlv $2, $4, $4
lw $4, 0($2)
lhu $4, 0($2)
TAG222:
sw $4, 0($4)
srav $3, $4, $4
sltu $3, $3, $4
sb $3, 0($3)
TAG223:
bne $3, $3, TAG224
sra $2, $3, 0
lb $3, 0($3)
slti $3, $3, 6
TAG224:
sra $2, $3, 0
mtlo $3
mflo $2
sb $2, 0($2)
TAG225:
lb $1, 0($2)
blez $2, TAG226
lui $1, 7
sra $3, $1, 1
TAG226:
bne $3, $3, TAG227
srlv $4, $3, $3
mtlo $3
xor $4, $4, $4
TAG227:
mthi $4
mthi $4
xori $4, $4, 5
mfhi $3
TAG228:
lui $4, 7
sllv $4, $3, $4
lhu $4, 0($4)
sw $3, 0($3)
TAG229:
bgez $4, TAG230
lb $4, -256($4)
bne $4, $4, TAG230
lui $2, 1
TAG230:
and $4, $2, $2
nor $2, $2, $4
sh $4, 2($2)
lb $2, 2($2)
TAG231:
bne $2, $2, TAG232
lbu $2, 0($2)
beq $2, $2, TAG232
lw $4, 0($2)
TAG232:
bne $4, $4, TAG233
mflo $4
mtlo $4
mthi $4
TAG233:
div $4, $4
sltu $3, $4, $4
sll $0, $0, 0
sltiu $1, $4, 5
TAG234:
mthi $1
and $2, $1, $1
slti $3, $2, 0
mthi $1
TAG235:
sh $3, 0($3)
bne $3, $3, TAG236
sw $3, 0($3)
lw $1, 0($3)
TAG236:
lb $2, 0($1)
sub $4, $1, $2
addi $3, $2, 12
lui $1, 0
TAG237:
srlv $1, $1, $1
addi $1, $1, 1
bltz $1, TAG238
lui $1, 12
TAG238:
sll $0, $0, 0
mthi $1
bgtz $1, TAG239
or $4, $1, $1
TAG239:
lui $1, 7
bne $4, $1, TAG240
srl $3, $4, 2
div $3, $1
TAG240:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
mult $3, $3
TAG241:
slti $1, $3, 9
sltu $4, $3, $1
mtlo $1
lui $3, 4
TAG242:
lui $1, 2
mthi $3
mflo $3
subu $2, $3, $1
TAG243:
sll $0, $0, 0
bltz $2, TAG244
sll $0, $0, 0
srlv $4, $2, $2
TAG244:
lui $2, 3
bgtz $2, TAG245
mthi $2
bgez $4, TAG245
TAG245:
sll $0, $0, 0
slti $2, $3, 10
mflo $3
mthi $3
TAG246:
bltz $3, TAG247
lui $2, 3
mtlo $3
lui $2, 8
TAG247:
mtlo $2
bgtz $2, TAG248
lui $4, 0
srlv $3, $2, $2
TAG248:
bne $3, $3, TAG249
xori $2, $3, 9
mflo $3
lui $2, 8
TAG249:
subu $3, $2, $2
mfhi $4
mthi $3
srl $3, $3, 8
TAG250:
mtlo $3
andi $1, $3, 13
multu $3, $1
lui $1, 0
TAG251:
bgtz $1, TAG252
lb $3, 0($1)
mthi $3
bne $1, $3, TAG252
TAG252:
xor $1, $3, $3
lui $1, 12
slti $3, $1, 7
mthi $3
TAG253:
mflo $3
mfhi $3
and $3, $3, $3
lui $1, 5
TAG254:
lui $2, 6
mthi $2
mthi $2
bgez $1, TAG255
TAG255:
sllv $4, $2, $2
mfhi $4
lui $2, 9
mflo $1
TAG256:
lui $2, 1
mult $1, $1
bgtz $2, TAG257
mthi $2
TAG257:
sra $1, $2, 6
lui $3, 12
mflo $3
sll $0, $0, 0
TAG258:
sw $3, 0($3)
bltz $3, TAG259
mtlo $3
lhu $4, 0($3)
TAG259:
slti $1, $4, 9
addiu $2, $4, 6
bne $1, $1, TAG260
mfhi $1
TAG260:
lui $3, 4
subu $4, $1, $1
sllv $3, $1, $3
lw $4, 0($4)
TAG261:
sb $4, 0($4)
bgez $4, TAG262
srl $1, $4, 7
add $1, $4, $4
TAG262:
blez $1, TAG263
lui $2, 2
sb $1, 0($2)
lui $1, 14
TAG263:
mfhi $4
lui $2, 5
bne $4, $1, TAG264
xori $2, $1, 14
TAG264:
bgez $2, TAG265
mfhi $1
lh $2, 0($1)
lui $2, 3
TAG265:
sltu $2, $2, $2
beq $2, $2, TAG266
lb $1, 0($2)
addi $4, $2, 7
TAG266:
mflo $4
mflo $1
sb $1, 0($4)
sll $3, $1, 2
TAG267:
nor $1, $3, $3
lui $2, 4
bne $2, $1, TAG268
mtlo $3
TAG268:
bne $2, $2, TAG269
sll $0, $0, 0
sll $0, $0, 0
addu $1, $2, $2
TAG269:
bltz $1, TAG270
mtlo $1
addu $3, $1, $1
lui $2, 10
TAG270:
sll $0, $0, 0
mtlo $2
bltz $2, TAG271
ori $1, $2, 13
TAG271:
sll $0, $0, 0
bne $1, $1, TAG272
sllv $4, $1, $1
beq $4, $1, TAG272
TAG272:
sll $0, $0, 0
mult $4, $4
sll $2, $4, 3
div $4, $2
TAG273:
mthi $2
addu $3, $2, $2
div $2, $2
lui $4, 5
TAG274:
div $4, $4
lui $1, 4
mthi $4
lui $1, 7
TAG275:
sll $0, $0, 0
sll $3, $1, 9
sll $0, $0, 0
mult $1, $3
TAG276:
sll $0, $0, 0
and $2, $3, $3
bltz $3, TAG277
mtlo $3
TAG277:
lui $4, 6
bltz $2, TAG278
sll $0, $0, 0
mtlo $4
TAG278:
sll $0, $0, 0
sll $0, $0, 0
mult $4, $4
mthi $4
TAG279:
beq $4, $4, TAG280
ori $3, $4, 11
beq $3, $3, TAG280
andi $2, $4, 11
TAG280:
addiu $1, $2, 2
blez $1, TAG281
lui $3, 13
mtlo $2
TAG281:
sltu $4, $3, $3
bgez $4, TAG282
multu $4, $4
sll $3, $4, 11
TAG282:
addiu $4, $3, 5
xori $2, $3, 3
mfhi $3
sltu $2, $4, $2
TAG283:
lbu $2, 0($2)
sh $2, 0($2)
sw $2, 0($2)
mthi $2
TAG284:
mthi $2
mtlo $2
addiu $3, $2, 12
bgez $2, TAG285
TAG285:
divu $3, $3
mthi $3
bgez $3, TAG286
lw $2, 0($3)
TAG286:
lui $4, 3
mult $2, $2
sra $2, $4, 10
lui $1, 2
TAG287:
xor $4, $1, $1
bgez $1, TAG288
sll $0, $0, 0
div $1, $1
TAG288:
bgez $1, TAG289
mtlo $1
mthi $1
mflo $3
TAG289:
mflo $3
sll $0, $0, 0
bgtz $3, TAG290
addu $4, $3, $3
TAG290:
mtlo $4
sll $0, $0, 0
sltiu $4, $4, 9
mult $4, $4
TAG291:
mtlo $4
bgez $4, TAG292
sltu $3, $4, $4
mfhi $2
TAG292:
addiu $2, $2, 7
bne $2, $2, TAG293
divu $2, $2
lbu $1, -199($2)
TAG293:
bne $1, $1, TAG294
xor $3, $1, $1
blez $3, TAG294
lui $4, 11
TAG294:
bgtz $4, TAG295
sll $0, $0, 0
sw $4, 0($4)
bne $4, $4, TAG295
TAG295:
divu $4, $4
andi $1, $4, 6
lui $2, 1
mult $4, $4
TAG296:
mfhi $3
beq $2, $2, TAG297
mtlo $2
sra $4, $2, 0
TAG297:
bltz $4, TAG298
mfhi $4
bne $4, $4, TAG298
subu $1, $4, $4
TAG298:
lw $1, 0($1)
beq $1, $1, TAG299
mtlo $1
mtlo $1
TAG299:
add $2, $1, $1
blez $2, TAG300
mflo $4
div $4, $1
TAG300:
mthi $4
mflo $2
mthi $4
mtlo $4
TAG301:
sw $2, 0($2)
mult $2, $2
sw $2, 0($2)
sh $2, 0($2)
TAG302:
addi $3, $2, 4
add $2, $2, $3
lh $4, 0($2)
mthi $3
TAG303:
mflo $4
mflo $3
mfhi $1
bltz $3, TAG304
TAG304:
div $1, $1
lb $2, 0($1)
div $2, $2
sllv $3, $2, $2
TAG305:
mflo $4
sll $0, $0, 0
lb $3, 0($2)
bltz $2, TAG306
TAG306:
mthi $3
andi $4, $3, 3
lb $1, 0($3)
bne $1, $3, TAG307
TAG307:
lh $1, 0($1)
lui $1, 5
mfhi $1
beq $1, $1, TAG308
TAG308:
lh $4, 0($1)
lbu $3, 0($4)
bne $4, $4, TAG309
lui $2, 3
TAG309:
lui $3, 15
slti $1, $2, 2
sll $0, $0, 0
sltiu $4, $2, 7
TAG310:
mult $4, $4
sw $4, 0($4)
lui $4, 1
lui $4, 14
TAG311:
multu $4, $4
div $4, $4
mflo $4
lb $1, 0($4)
TAG312:
sb $1, 0($1)
mthi $1
lui $2, 2
lb $3, 0($1)
TAG313:
addi $3, $3, 4
sw $3, 0($3)
bne $3, $3, TAG314
slti $3, $3, 15
TAG314:
sb $3, 0($3)
mult $3, $3
mfhi $4
sltu $2, $4, $3
TAG315:
sb $2, 0($2)
mfhi $3
subu $1, $3, $2
lh $2, 1($1)
TAG316:
sll $0, $0, 0
mflo $3
beq $2, $2, TAG317
srav $3, $2, $3
TAG317:
div $3, $3
div $3, $3
addiu $1, $3, 0
addu $1, $3, $1
TAG318:
mtlo $1
bltz $1, TAG319
sw $1, -256($1)
mflo $4
TAG319:
lui $2, 10
lui $2, 3
lui $3, 11
mtlo $2
TAG320:
sltiu $1, $3, 3
mfhi $4
mfhi $4
mflo $3
TAG321:
sll $0, $0, 0
bne $3, $3, TAG322
mfhi $3
bne $3, $3, TAG322
TAG322:
sw $3, 0($3)
blez $3, TAG323
mult $3, $3
mult $3, $3
TAG323:
blez $3, TAG324
mflo $4
lw $4, 0($3)
mthi $4
TAG324:
sw $4, 0($4)
addi $1, $4, 6
lbu $4, 0($4)
lui $3, 3
TAG325:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $3, 1
TAG326:
beq $2, $2, TAG327
mthi $2
andi $1, $2, 15
multu $2, $2
TAG327:
mflo $1
sw $1, 0($1)
bgtz $1, TAG328
mult $1, $1
TAG328:
addiu $4, $1, 1
bltz $4, TAG329
lui $4, 12
mthi $4
TAG329:
mthi $4
lui $2, 15
mthi $2
multu $4, $2
TAG330:
subu $4, $2, $2
sll $0, $0, 0
div $4, $2
mthi $4
TAG331:
beq $4, $4, TAG332
sltiu $3, $4, 1
lb $4, 0($3)
mfhi $2
TAG332:
bne $2, $2, TAG333
mtlo $2
sltiu $4, $2, 2
bne $4, $2, TAG333
TAG333:
lbu $4, 0($4)
beq $4, $4, TAG334
add $1, $4, $4
lhu $1, 0($1)
TAG334:
bgez $1, TAG335
lbu $1, 0($1)
mthi $1
lb $4, 0($1)
TAG335:
mflo $4
sll $0, $0, 0
lui $1, 15
mult $4, $4
TAG336:
bltz $1, TAG337
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG337:
bne $3, $3, TAG338
lh $1, 0($3)
mfhi $1
bltz $1, TAG338
TAG338:
or $3, $1, $1
div $1, $3
div $1, $1
andi $4, $3, 6
TAG339:
mfhi $3
lui $1, 1
sh $1, 0($4)
bgez $3, TAG340
TAG340:
lui $1, 8
bltz $1, TAG341
divu $1, $1
mtlo $1
TAG341:
sll $0, $0, 0
subu $1, $1, $1
mthi $1
mult $1, $1
TAG342:
bne $1, $1, TAG343
lui $4, 10
mflo $2
sb $4, 0($1)
TAG343:
mtlo $2
sb $2, 0($2)
mtlo $2
mthi $2
TAG344:
mfhi $2
xori $3, $2, 7
mthi $3
mtlo $2
TAG345:
blez $3, TAG346
sb $3, 0($3)
mfhi $4
or $1, $3, $3
TAG346:
sb $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
lui $1, 3
TAG347:
xor $2, $1, $1
mtlo $2
xor $4, $2, $1
blez $2, TAG348
TAG348:
sll $0, $0, 0
mtlo $4
beq $4, $4, TAG349
sllv $1, $4, $4
TAG349:
div $1, $1
sll $0, $0, 0
mult $1, $1
lbu $4, 0($2)
TAG350:
bne $4, $4, TAG351
mult $4, $4
lui $1, 13
mthi $1
TAG351:
mtlo $1
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG352:
divu $4, $4
lui $3, 1
addu $4, $4, $3
lui $4, 10
TAG353:
sll $0, $0, 0
beq $4, $4, TAG354
multu $4, $4
sll $4, $4, 6
TAG354:
multu $4, $4
mtlo $4
bgez $4, TAG355
srl $2, $4, 11
TAG355:
bltz $2, TAG356
addiu $2, $2, 15
srav $1, $2, $2
mfhi $4
TAG356:
subu $4, $4, $4
sw $4, 0($4)
bne $4, $4, TAG357
lbu $4, 0($4)
TAG357:
mflo $4
lui $4, 6
subu $2, $4, $4
sll $0, $0, 0
TAG358:
sb $1, 0($1)
bne $1, $1, TAG359
andi $3, $1, 15
bne $3, $1, TAG359
TAG359:
multu $3, $3
lw $1, 0($3)
bne $1, $1, TAG360
lbu $4, 0($3)
TAG360:
sra $2, $4, 6
lui $4, 1
sh $4, 0($2)
mfhi $4
TAG361:
mthi $4
bltz $4, TAG362
mfhi $1
lui $2, 15
TAG362:
mthi $2
mflo $4
bne $4, $4, TAG363
multu $4, $2
TAG363:
lui $3, 15
bne $4, $4, TAG364
lw $3, 0($4)
mthi $3
TAG364:
xor $4, $3, $3
beq $4, $4, TAG365
mflo $1
lui $2, 0
TAG365:
sltu $1, $2, $2
bgez $2, TAG366
addu $1, $1, $2
mthi $1
TAG366:
mfhi $4
sw $4, 0($4)
sll $0, $0, 0
lui $1, 12
TAG367:
div $1, $1
sll $0, $0, 0
beq $2, $1, TAG368
lui $4, 7
TAG368:
sll $0, $0, 0
sra $2, $4, 8
beq $4, $4, TAG369
mflo $4
TAG369:
mflo $3
bltz $4, TAG370
sb $3, 0($4)
bgez $3, TAG370
TAG370:
subu $3, $3, $3
bne $3, $3, TAG371
sllv $3, $3, $3
sb $3, 0($3)
TAG371:
nor $2, $3, $3
sh $3, 1($2)
bne $3, $3, TAG372
multu $2, $3
TAG372:
sll $0, $0, 0
mtlo $4
mflo $1
lbu $2, 0($4)
TAG373:
addi $1, $2, 15
lui $4, 1
bne $4, $4, TAG374
mtlo $1
TAG374:
divu $4, $4
mult $4, $4
nor $3, $4, $4
mfhi $1
TAG375:
beq $1, $1, TAG376
lbu $4, 0($1)
sllv $2, $1, $4
bne $1, $4, TAG376
TAG376:
sw $2, 0($2)
sll $4, $2, 4
mfhi $3
multu $2, $3
TAG377:
lbu $2, 0($3)
srlv $4, $3, $2
beq $4, $3, TAG378
div $3, $3
TAG378:
bgez $4, TAG379
srl $1, $4, 5
mthi $4
bltz $4, TAG379
TAG379:
slti $4, $1, 13
srl $4, $4, 6
add $2, $4, $4
beq $2, $2, TAG380
TAG380:
lw $4, 0($2)
bne $4, $2, TAG381
sb $2, 0($2)
sb $2, 0($2)
TAG381:
multu $4, $4
mtlo $4
mthi $4
srav $1, $4, $4
TAG382:
addiu $3, $1, 12
mfhi $2
xor $1, $3, $3
sra $1, $1, 10
TAG383:
sb $1, 0($1)
mult $1, $1
lw $4, 0($1)
sltiu $2, $1, 11
TAG384:
mthi $2
sb $2, 0($2)
blez $2, TAG385
sltiu $2, $2, 2
TAG385:
lb $1, 0($2)
srl $1, $1, 1
sw $2, 0($1)
bne $1, $2, TAG386
TAG386:
slt $4, $1, $1
lhu $1, 0($4)
beq $1, $1, TAG387
lui $3, 2
TAG387:
divu $3, $3
addiu $1, $3, 15
lui $4, 3
slti $3, $4, 15
TAG388:
bgez $3, TAG389
lhu $2, 0($3)
beq $3, $2, TAG389
lb $2, 0($3)
TAG389:
sltu $1, $2, $2
xori $4, $2, 3
bne $1, $2, TAG390
divu $2, $4
TAG390:
bgez $4, TAG391
mflo $4
mfhi $1
lb $2, 0($1)
TAG391:
mult $2, $2
sra $1, $2, 15
xori $2, $1, 1
sb $2, 0($2)
TAG392:
lui $3, 12
divu $2, $3
sll $0, $0, 0
sll $0, $0, 0
TAG393:
ori $2, $3, 10
mult $3, $3
lui $2, 5
beq $3, $2, TAG394
TAG394:
sll $0, $0, 0
bne $2, $3, TAG395
mtlo $3
mfhi $1
TAG395:
bltz $1, TAG396
slt $1, $1, $1
bne $1, $1, TAG396
mthi $1
TAG396:
mfhi $4
bgtz $4, TAG397
sh $4, 0($1)
lui $3, 4
TAG397:
lui $2, 11
lui $2, 0
mtlo $2
bne $3, $3, TAG398
TAG398:
sh $2, 0($2)
lui $1, 3
sll $0, $0, 0
sb $1, 0($2)
TAG399:
bne $2, $2, TAG400
mult $2, $2
bne $2, $2, TAG400
nor $2, $2, $2
TAG400:
sltiu $2, $2, 1
srav $3, $2, $2
bgez $3, TAG401
slti $1, $2, 7
TAG401:
beq $1, $1, TAG402
lbu $4, 0($1)
sb $1, 0($1)
beq $1, $1, TAG402
TAG402:
lui $1, 6
lbu $3, 0($4)
xori $4, $4, 10
bgtz $1, TAG403
TAG403:
subu $1, $4, $4
mthi $4
mfhi $2
andi $3, $4, 10
TAG404:
lui $2, 11
mfhi $3
lui $4, 8
bgtz $3, TAG405
TAG405:
sll $4, $4, 0
mtlo $4
sll $0, $0, 0
mult $4, $4
TAG406:
bgez $4, TAG407
xor $4, $4, $4
andi $3, $4, 8
mult $4, $3
TAG407:
lui $4, 5
lui $3, 8
bne $4, $3, TAG408
subu $3, $3, $3
TAG408:
multu $3, $3
multu $3, $3
add $4, $3, $3
mthi $3
TAG409:
mflo $4
lhu $1, 0($4)
mfhi $4
sh $4, 0($4)
TAG410:
mult $4, $4
srlv $4, $4, $4
mflo $1
lw $4, 0($4)
TAG411:
blez $4, TAG412
lhu $2, 0($4)
divu $2, $2
sllv $2, $2, $4
TAG412:
sb $2, 0($2)
sh $2, 0($2)
mult $2, $2
mthi $2
TAG413:
lui $4, 7
mthi $2
lbu $4, 0($2)
mtlo $4
TAG414:
add $2, $4, $4
bne $4, $4, TAG415
mult $4, $4
sw $2, 0($2)
TAG415:
lui $3, 3
sra $1, $3, 12
sb $1, 0($1)
addi $2, $2, 11
TAG416:
mfhi $4
mtlo $4
bgtz $2, TAG417
sb $4, 0($2)
TAG417:
blez $4, TAG418
ori $3, $4, 11
multu $3, $4
srlv $2, $4, $4
TAG418:
slti $3, $2, 9
sllv $3, $2, $3
sll $4, $3, 12
slt $3, $4, $2
TAG419:
andi $3, $3, 0
mfhi $3
multu $3, $3
sh $3, 0($3)
TAG420:
multu $3, $3
mthi $3
addiu $1, $3, 4
mult $1, $3
TAG421:
bgtz $1, TAG422
multu $1, $1
slt $2, $1, $1
sh $2, 0($2)
TAG422:
lbu $4, 0($2)
addiu $2, $4, 14
mflo $1
beq $4, $4, TAG423
TAG423:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
srav $2, $1, $1
TAG424:
sll $0, $0, 0
beq $2, $2, TAG425
sll $0, $0, 0
sb $1, 0($2)
TAG425:
sll $0, $0, 0
srlv $1, $1, $1
divu $1, $1
sll $0, $0, 0
TAG426:
and $1, $2, $2
mfhi $3
lw $2, 0($3)
and $2, $2, $2
TAG427:
mflo $4
beq $2, $2, TAG428
lui $4, 0
ori $3, $4, 8
TAG428:
beq $3, $3, TAG429
sb $3, 0($3)
bne $3, $3, TAG429
mult $3, $3
TAG429:
multu $3, $3
lui $1, 3
slt $1, $1, $1
xori $4, $1, 0
TAG430:
beq $4, $4, TAG431
lb $3, 0($4)
sb $4, 0($4)
mfhi $2
TAG431:
lui $1, 8
mfhi $1
sub $1, $2, $2
mult $1, $1
TAG432:
mfhi $3
multu $1, $3
beq $1, $1, TAG433
mtlo $3
TAG433:
bgtz $3, TAG434
sh $3, 0($3)
addiu $2, $3, 5
bgez $3, TAG434
TAG434:
lb $3, 0($2)
lhu $2, 0($3)
lui $4, 6
bgez $3, TAG435
TAG435:
andi $3, $4, 7
lui $4, 5
xor $3, $4, $3
slt $2, $3, $4
TAG436:
mflo $2
mflo $4
xori $1, $2, 2
lui $2, 4
TAG437:
bgez $2, TAG438
lui $4, 3
lw $3, 0($2)
sb $4, 0($3)
TAG438:
and $4, $3, $3
mthi $4
lui $1, 7
mflo $3
TAG439:
lui $2, 12
sll $0, $0, 0
mthi $2
srlv $4, $3, $1
TAG440:
mult $4, $4
bgtz $4, TAG441
lui $2, 9
nor $3, $2, $4
TAG441:
lui $4, 6
sll $0, $0, 0
addiu $4, $3, 8
lui $3, 15
TAG442:
sll $0, $0, 0
xori $2, $3, 14
and $1, $2, $2
slti $4, $2, 11
TAG443:
mtlo $4
bne $4, $4, TAG444
ori $3, $4, 7
bgtz $4, TAG444
TAG444:
mflo $4
multu $3, $3
sra $2, $4, 3
mthi $3
TAG445:
bgtz $2, TAG446
addiu $4, $2, 5
mflo $1
bgez $4, TAG446
TAG446:
lui $1, 1
sll $0, $0, 0
lui $1, 1
sll $0, $0, 0
TAG447:
bgtz $1, TAG448
lui $2, 6
bne $2, $2, TAG448
divu $2, $1
TAG448:
mfhi $3
sll $0, $0, 0
bgtz $3, TAG449
mthi $2
TAG449:
lui $2, 0
xor $4, $3, $3
mtlo $2
sll $2, $2, 6
TAG450:
lui $4, 3
ori $2, $4, 11
mult $2, $2
mfhi $2
TAG451:
mthi $2
lb $4, 0($2)
sb $4, 0($2)
mfhi $3
TAG452:
mtlo $3
lui $3, 2
bltz $3, TAG453
mthi $3
TAG453:
mthi $3
sll $0, $0, 0
divu $3, $3
bltz $3, TAG454
TAG454:
lui $3, 13
srlv $4, $3, $3
multu $4, $4
sll $0, $0, 0
TAG455:
sll $0, $0, 0
div $4, $4
div $4, $4
divu $4, $4
TAG456:
mflo $3
lui $1, 6
beq $1, $4, TAG457
srav $4, $1, $3
TAG457:
divu $4, $4
mtlo $4
mthi $4
sll $0, $0, 0
TAG458:
lui $1, 7
sll $0, $0, 0
sb $1, 0($2)
mthi $4
TAG459:
mtlo $2
lui $4, 15
srlv $4, $2, $2
mult $4, $4
TAG460:
mfhi $2
mfhi $3
blez $3, TAG461
lh $1, 0($4)
TAG461:
bne $1, $1, TAG462
slti $4, $1, 13
lui $1, 0
blez $1, TAG462
TAG462:
srl $2, $1, 6
beq $1, $2, TAG463
sltiu $3, $2, 11
sltiu $2, $3, 3
TAG463:
nor $2, $2, $2
bgez $2, TAG464
or $3, $2, $2
ori $4, $3, 9
TAG464:
sb $4, 1($4)
xor $4, $4, $4
bgez $4, TAG465
mult $4, $4
TAG465:
beq $4, $4, TAG466
lui $3, 13
mfhi $3
mfhi $3
TAG466:
sra $3, $3, 11
bgez $3, TAG467
mflo $3
lui $2, 11
TAG467:
beq $2, $2, TAG468
lui $2, 8
slt $1, $2, $2
lui $2, 11
TAG468:
multu $2, $2
sll $0, $0, 0
srlv $3, $2, $2
bltz $2, TAG469
TAG469:
lui $1, 5
lui $4, 0
lui $1, 0
ori $4, $1, 6
TAG470:
mfhi $3
slt $1, $4, $3
xori $4, $3, 8
sw $4, 0($4)
TAG471:
mflo $4
mtlo $4
lui $4, 11
slt $4, $4, $4
TAG472:
blez $4, TAG473
mfhi $4
sllv $1, $4, $4
lui $1, 13
TAG473:
sb $1, 0($1)
mtlo $1
multu $1, $1
bne $1, $1, TAG474
TAG474:
sb $1, 0($1)
andi $1, $1, 10
srlv $4, $1, $1
bltz $1, TAG475
TAG475:
mthi $4
xor $1, $4, $4
lhu $2, 0($1)
sra $2, $1, 12
TAG476:
mflo $4
sw $4, 0($2)
lbu $3, 0($4)
bgtz $2, TAG477
TAG477:
multu $3, $3
mfhi $1
lb $3, 0($3)
sb $1, 0($3)
TAG478:
lb $1, 0($3)
sb $1, 0($3)
mthi $3
mtlo $1
TAG479:
mtlo $1
mthi $1
lui $4, 3
beq $1, $4, TAG480
TAG480:
addiu $3, $4, 11
sltu $4, $4, $3
lb $4, 0($4)
and $4, $4, $4
TAG481:
bne $4, $4, TAG482
lui $1, 14
beq $1, $4, TAG482
mthi $1
TAG482:
lui $1, 3
divu $1, $1
or $2, $1, $1
multu $1, $1
TAG483:
sra $3, $2, 8
beq $2, $3, TAG484
multu $3, $2
lui $3, 12
TAG484:
sll $0, $0, 0
slt $3, $3, $3
sw $3, 0($3)
mult $3, $3
TAG485:
ori $4, $3, 9
beq $4, $4, TAG486
addu $3, $4, $4
bltz $3, TAG486
TAG486:
or $4, $3, $3
lh $4, 0($3)
mtlo $3
divu $4, $4
TAG487:
or $4, $4, $4
mfhi $1
lui $3, 14
lhu $2, 0($4)
TAG488:
lh $2, 0($2)
mflo $2
multu $2, $2
mult $2, $2
TAG489:
bgtz $2, TAG490
mtlo $2
lhu $4, 0($2)
subu $3, $2, $2
TAG490:
andi $1, $3, 2
lui $2, 10
bltz $1, TAG491
divu $1, $2
TAG491:
lui $4, 7
bgtz $4, TAG492
mtlo $4
mthi $2
TAG492:
lui $2, 4
sll $0, $0, 0
bne $4, $4, TAG493
mult $2, $4
TAG493:
mtlo $2
sll $2, $2, 14
srav $4, $2, $2
mflo $1
TAG494:
lui $1, 10
addu $1, $1, $1
multu $1, $1
mfhi $3
TAG495:
sll $0, $0, 0
lh $1, 0($4)
lhu $1, -400($3)
blez $1, TAG496
TAG496:
mflo $2
sllv $3, $1, $2
beq $1, $3, TAG497
sllv $1, $1, $3
TAG497:
lui $4, 1
mtlo $4
mthi $1
srl $1, $1, 2
TAG498:
lui $2, 0
multu $2, $2
multu $1, $2
multu $1, $1
TAG499:
mflo $3
blez $3, TAG500
add $2, $2, $3
srlv $3, $2, $2
TAG500:
lbu $1, 0($3)
mthi $3
mtlo $3
lw $4, 0($1)
TAG501:
mtlo $4
addu $3, $4, $4
lh $2, 0($3)
lui $4, 1
TAG502:
multu $4, $4
lui $4, 15
bltz $4, TAG503
lui $4, 1
TAG503:
mthi $4
addu $3, $4, $4
mthi $4
bne $4, $4, TAG504
TAG504:
mthi $3
sll $0, $0, 0
sra $1, $1, 3
sltiu $4, $3, 1
TAG505:
bne $4, $4, TAG506
mtlo $4
mthi $4
sh $4, 0($4)
TAG506:
lhu $2, 0($4)
srl $2, $2, 8
lhu $4, 0($4)
addu $3, $4, $4
TAG507:
sh $3, 0($3)
lb $3, 0($3)
multu $3, $3
lhu $1, 0($3)
TAG508:
andi $1, $1, 12
bne $1, $1, TAG509
mthi $1
mflo $4
TAG509:
mult $4, $4
mtlo $4
bne $4, $4, TAG510
mult $4, $4
TAG510:
addiu $3, $4, 8
multu $3, $4
lb $3, 0($4)
lui $2, 0
TAG511:
mtlo $2
mtlo $2
bltz $2, TAG512
mflo $1
TAG512:
multu $1, $1
addu $1, $1, $1
multu $1, $1
sh $1, 0($1)
TAG513:
sltu $1, $1, $1
mfhi $3
lbu $3, 0($1)
mult $3, $3
TAG514:
lw $4, 0($3)
lbu $4, 0($3)
lui $1, 4
sll $0, $0, 0
TAG515:
sll $0, $0, 0
lbu $1, 0($4)
sb $4, 0($1)
lbu $4, 0($1)
TAG516:
addiu $3, $4, 3
lui $2, 13
mthi $4
lui $1, 9
TAG517:
div $1, $1
bgez $1, TAG518
mtlo $1
lbu $4, 0($1)
TAG518:
bne $4, $4, TAG519
lui $1, 11
lhu $3, 0($4)
bne $3, $1, TAG519
TAG519:
sw $3, 0($3)
xori $3, $3, 5
sb $3, 0($3)
multu $3, $3
TAG520:
bne $3, $3, TAG521
mthi $3
lui $3, 9
srl $1, $3, 9
TAG521:
srl $2, $1, 12
mtlo $1
mflo $1
sh $2, -1152($1)
TAG522:
mthi $1
mthi $1
mthi $1
lh $2, -1152($1)
TAG523:
sra $4, $2, 2
multu $4, $4
sb $2, 0($4)
lui $3, 6
TAG524:
multu $3, $3
sll $0, $0, 0
divu $3, $3
mthi $3
TAG525:
sll $0, $0, 0
sh $3, -1152($1)
mflo $2
lui $2, 15
TAG526:
lui $4, 3
mflo $4
bne $4, $4, TAG527
lui $1, 7
TAG527:
bgez $1, TAG528
sll $0, $0, 0
lh $1, 0($1)
sb $1, 0($1)
TAG528:
multu $1, $1
mtlo $1
blez $1, TAG529
lui $1, 13
TAG529:
sll $0, $0, 0
slt $3, $1, $1
mflo $2
beq $3, $3, TAG530
TAG530:
lui $4, 9
mtlo $4
sll $0, $0, 0
mult $2, $2
TAG531:
sll $0, $0, 0
xori $1, $2, 14
divu $2, $2
sllv $3, $1, $1
TAG532:
beq $3, $3, TAG533
sll $0, $0, 0
nor $2, $3, $2
sb $2, 0($3)
TAG533:
addiu $1, $2, 1
sltu $1, $2, $1
mthi $1
sll $0, $0, 0
TAG534:
srav $2, $3, $3
sra $2, $2, 3
lui $4, 7
mflo $1
TAG535:
mthi $1
sb $1, 0($1)
and $2, $1, $1
lui $4, 15
TAG536:
bne $4, $4, TAG537
xor $2, $4, $4
beq $4, $2, TAG537
sltu $4, $4, $4
TAG537:
multu $4, $4
lh $4, 0($4)
lh $4, -256($4)
mtlo $4
TAG538:
mtlo $4
lb $1, -256($4)
mtlo $1
lui $1, 0
TAG539:
sra $2, $1, 10
nor $1, $2, $1
blez $1, TAG540
mfhi $3
TAG540:
mult $3, $3
addu $3, $3, $3
sllv $4, $3, $3
mflo $2
TAG541:
mult $2, $2
mult $2, $2
sw $2, 0($2)
beq $2, $2, TAG542
TAG542:
mtlo $2
mflo $1
addu $3, $1, $2
lui $1, 13
TAG543:
mfhi $4
srlv $3, $1, $1
sll $0, $0, 0
bgez $3, TAG544
TAG544:
slti $2, $1, 8
mthi $1
mult $1, $2
bne $2, $2, TAG545
TAG545:
sw $2, 0($2)
sw $2, 0($2)
sh $2, 0($2)
bgtz $2, TAG546
TAG546:
mthi $2
lui $2, 14
lui $1, 6
sll $0, $0, 0
TAG547:
sll $0, $0, 0
multu $1, $4
beq $1, $1, TAG548
sll $0, $0, 0
TAG548:
lw $4, 0($4)
sltiu $3, $4, 10
mtlo $3
bltz $3, TAG549
TAG549:
lbu $2, 0($3)
sra $4, $3, 4
andi $3, $4, 7
sw $3, 0($3)
TAG550:
nor $4, $3, $3
sw $4, 0($3)
sb $4, 1($4)
lb $1, 1($4)
TAG551:
sh $1, 1($1)
beq $1, $1, TAG552
mflo $1
mult $1, $1
TAG552:
mflo $2
sb $1, 0($1)
ori $4, $2, 9
sllv $4, $2, $1
TAG553:
sh $4, 0($4)
bne $4, $4, TAG554
lhu $2, 0($4)
lh $2, 0($4)
TAG554:
lui $4, 5
bgtz $2, TAG555
sh $2, 0($2)
mfhi $3
TAG555:
lui $1, 8
sll $0, $0, 0
mfhi $3
slti $1, $1, 1
TAG556:
mthi $1
mflo $4
bgez $4, TAG557
sh $4, 0($1)
TAG557:
bne $4, $4, TAG558
srav $1, $4, $4
multu $1, $1
lbu $1, 0($1)
TAG558:
subu $1, $1, $1
sw $1, 0($1)
mfhi $1
mflo $3
TAG559:
ori $3, $3, 5
mult $3, $3
bne $3, $3, TAG560
mfhi $1
TAG560:
bltz $1, TAG561
mfhi $1
bgez $1, TAG561
mult $1, $1
TAG561:
lui $1, 3
sll $0, $0, 0
mthi $3
divu $3, $1
TAG562:
mflo $3
mflo $3
mtlo $3
multu $3, $3
TAG563:
ori $3, $3, 14
sh $3, 0($3)
beq $3, $3, TAG564
ori $1, $3, 8
TAG564:
mtlo $1
lh $2, 0($1)
blez $1, TAG565
mflo $4
TAG565:
lui $4, 8
sll $0, $0, 0
lui $1, 10
mflo $4
TAG566:
sb $4, 0($4)
divu $4, $4
lhu $4, 0($4)
lb $4, 0($4)
TAG567:
bgtz $4, TAG568
sh $4, 0($4)
and $2, $4, $4
bne $4, $4, TAG568
TAG568:
addu $2, $2, $2
mtlo $2
bgez $2, TAG569
divu $2, $2
TAG569:
lb $3, 0($2)
sra $1, $3, 12
multu $3, $3
lw $3, 0($2)
TAG570:
bgez $3, TAG571
div $3, $3
beq $3, $3, TAG571
sw $3, 0($3)
TAG571:
lui $4, 13
beq $3, $3, TAG572
lui $2, 11
beq $2, $3, TAG572
TAG572:
mfhi $3
addu $1, $2, $3
addu $4, $2, $3
lui $4, 2
TAG573:
mfhi $2
bgtz $2, TAG574
divu $4, $4
lui $4, 1
TAG574:
srlv $3, $4, $4
bgez $3, TAG575
sll $0, $0, 0
beq $3, $4, TAG575
TAG575:
slti $4, $3, 6
beq $4, $3, TAG576
sb $3, 0($4)
mtlo $3
TAG576:
blez $4, TAG577
lh $4, 0($4)
beq $4, $4, TAG577
lb $2, 0($4)
TAG577:
lw $2, 0($2)
lhu $4, 0($2)
lh $4, 0($2)
blez $2, TAG578
TAG578:
add $4, $4, $4
addi $4, $4, 7
mfhi $3
lui $2, 10
TAG579:
sll $0, $0, 0
beq $2, $2, TAG580
sll $0, $0, 0
mflo $3
TAG580:
bgez $3, TAG581
srlv $4, $3, $3
div $3, $4
lui $2, 12
TAG581:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
beq $2, $4, TAG582
TAG582:
mflo $3
blez $3, TAG583
mtlo $3
sll $0, $0, 0
TAG583:
bgtz $4, TAG584
mfhi $2
beq $2, $4, TAG584
divu $2, $2
TAG584:
addiu $3, $2, 4
lh $4, 0($3)
slti $3, $4, 12
multu $3, $3
TAG585:
sh $3, 0($3)
lui $1, 0
mult $1, $3
bne $1, $1, TAG586
TAG586:
andi $3, $1, 2
lui $1, 10
lui $2, 13
bltz $2, TAG587
TAG587:
mthi $2
sll $0, $0, 0
ori $3, $2, 8
and $2, $2, $3
TAG588:
sll $0, $0, 0
bltz $2, TAG589
mult $1, $1
bne $2, $2, TAG589
TAG589:
sll $0, $0, 0
srlv $1, $1, $1
sll $0, $0, 0
beq $1, $1, TAG590
TAG590:
mthi $1
sll $0, $0, 0
divu $1, $3
mtlo $1
TAG591:
mthi $3
sll $0, $0, 0
bgtz $3, TAG592
sll $0, $0, 0
TAG592:
mfhi $3
lui $4, 15
lui $3, 1
srav $3, $2, $4
TAG593:
mflo $2
beq $2, $2, TAG594
lui $3, 9
mflo $2
TAG594:
mflo $2
ori $3, $2, 0
sra $3, $2, 12
addu $2, $3, $3
TAG595:
subu $2, $2, $2
xori $3, $2, 7
sh $2, 0($2)
mfhi $4
TAG596:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $4
lui $2, 6
TAG597:
sltiu $1, $2, 12
blez $2, TAG598
lw $1, 0($1)
sll $0, $0, 0
TAG598:
lui $1, 0
ori $1, $2, 8
mtlo $2
mflo $3
TAG599:
mflo $2
andi $3, $3, 13
nor $3, $3, $3
beq $3, $2, TAG600
TAG600:
sll $0, $0, 0
div $3, $2
sb $2, 1($3)
mflo $1
TAG601:
sll $4, $1, 8
or $2, $1, $4
sra $4, $4, 8
beq $1, $4, TAG602
TAG602:
multu $4, $4
bne $4, $4, TAG603
lh $2, 0($4)
lb $3, 0($4)
TAG603:
mflo $3
lhu $3, 0($3)
lhu $1, 0($3)
lui $4, 9
TAG604:
bltz $4, TAG605
sll $4, $4, 14
mthi $4
beq $4, $4, TAG605
TAG605:
srl $4, $4, 2
sll $0, $0, 0
bne $4, $4, TAG606
multu $4, $4
TAG606:
subu $4, $4, $4
ori $2, $4, 9
mult $2, $4
mfhi $4
TAG607:
sh $4, 0($4)
sw $4, 0($4)
mflo $3
andi $1, $4, 2
TAG608:
lbu $1, 0($1)
lui $2, 14
mfhi $2
lui $2, 13
TAG609:
xori $4, $2, 5
subu $1, $4, $2
mflo $4
bgez $1, TAG610
TAG610:
slt $1, $4, $4
xori $4, $4, 6
lh $3, 0($1)
blez $4, TAG611
TAG611:
lh $4, 0($3)
lui $4, 2
blez $4, TAG612
lui $2, 11
TAG612:
mflo $4
mthi $2
addu $2, $2, $2
mtlo $2
TAG613:
and $3, $2, $2
mthi $3
beq $3, $3, TAG614
mfhi $2
TAG614:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
bgtz $3, TAG615
TAG615:
sll $0, $0, 0
bne $3, $3, TAG616
sll $0, $0, 0
sll $0, $0, 0
TAG616:
sw $4, 0($4)
sh $4, 0($4)
mthi $4
lui $2, 2
TAG617:
mthi $2
lui $1, 2
xori $1, $1, 13
srav $1, $2, $1
TAG618:
ori $2, $1, 7
sll $4, $1, 8
subu $1, $2, $1
lui $3, 0
TAG619:
beq $3, $3, TAG620
lui $2, 4
and $1, $3, $3
blez $2, TAG620
TAG620:
mtlo $1
bgtz $1, TAG621
lb $4, 0($1)
lh $3, 0($1)
TAG621:
lui $4, 8
lui $2, 10
mthi $3
sll $0, $0, 0
TAG622:
sltiu $3, $1, 11
mtlo $1
mtlo $1
lui $2, 9
TAG623:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG624
TAG624:
lui $1, 0
subu $4, $2, $2
mfhi $4
sh $4, 0($1)
TAG625:
lui $4, 0
beq $4, $4, TAG626
add $3, $4, $4
mtlo $4
TAG626:
sh $3, 0($3)
bgtz $3, TAG627
mtlo $3
ori $1, $3, 2
TAG627:
sb $1, 0($1)
bgtz $1, TAG628
mthi $1
andi $3, $1, 13
TAG628:
mflo $1
beq $3, $3, TAG629
sltiu $3, $1, 0
mthi $1
TAG629:
or $4, $3, $3
mfhi $4
andi $4, $3, 8
bgtz $3, TAG630
TAG630:
lui $4, 15
bne $4, $4, TAG631
sll $0, $0, 0
mthi $4
TAG631:
srl $2, $4, 9
bltz $2, TAG632
nor $3, $4, $2
sll $0, $0, 0
TAG632:
subu $2, $3, $3
bne $2, $2, TAG633
mult $3, $2
mthi $2
TAG633:
blez $2, TAG634
or $1, $2, $2
lb $3, 0($2)
blez $1, TAG634
TAG634:
sll $0, $0, 0
mtlo $3
mtlo $3
blez $3, TAG635
TAG635:
xor $2, $3, $3
slt $1, $3, $2
lui $2, 1
lui $4, 9
TAG636:
and $4, $4, $4
bgez $4, TAG637
xor $3, $4, $4
mthi $3
TAG637:
bgez $3, TAG638
multu $3, $3
lui $2, 11
mthi $2
TAG638:
subu $3, $2, $2
lui $3, 5
lui $2, 6
lui $3, 4
TAG639:
lui $2, 11
sll $0, $0, 0
sll $0, $0, 0
lui $3, 6
TAG640:
sll $0, $0, 0
mthi $3
multu $1, $1
lui $1, 0
TAG641:
multu $1, $1
beq $1, $1, TAG642
lui $2, 7
sb $2, 0($1)
TAG642:
multu $2, $2
mthi $2
addiu $4, $2, 3
lui $1, 11
TAG643:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
TAG644:
mflo $3
mflo $3
divu $3, $3
div $3, $3
TAG645:
srl $1, $3, 12
mfhi $2
sb $1, 0($2)
addiu $1, $2, 0
TAG646:
mthi $1
lui $3, 13
lui $1, 15
sll $0, $0, 0
TAG647:
bltz $1, TAG648
srav $4, $1, $1
bne $4, $1, TAG648
mtlo $1
TAG648:
addiu $3, $4, 3
sra $1, $4, 10
div $4, $4
bne $1, $1, TAG649
TAG649:
multu $1, $1
sltiu $4, $1, 2
addiu $4, $1, 3
bgez $1, TAG650
TAG650:
xori $4, $4, 0
sh $4, -963($4)
sw $4, -963($4)
lb $4, -963($4)
TAG651:
bne $4, $4, TAG652
sh $4, 61($4)
slt $3, $4, $4
bltz $4, TAG652
TAG652:
multu $3, $3
sh $3, 0($3)
lh $4, 0($3)
mflo $4
TAG653:
mfhi $1
bgez $4, TAG654
mfhi $4
bgez $1, TAG654
TAG654:
multu $4, $4
and $2, $4, $4
sll $4, $2, 10
xori $3, $4, 7
TAG655:
mtlo $3
mtlo $3
mult $3, $3
mtlo $3
TAG656:
mult $3, $3
mflo $4
divu $4, $3
blez $4, TAG657
TAG657:
subu $4, $4, $4
mtlo $4
mflo $2
or $3, $4, $4
TAG658:
or $1, $3, $3
mflo $2
beq $1, $2, TAG659
lh $1, 0($2)
TAG659:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG660:
srav $1, $1, $1
lbu $1, 0($1)
addu $2, $1, $1
bgez $1, TAG661
TAG661:
lui $1, 12
multu $2, $2
lui $3, 14
mthi $2
TAG662:
andi $1, $3, 11
slti $2, $1, 12
lbu $4, 0($2)
bne $4, $1, TAG663
TAG663:
mthi $4
addi $1, $4, 7
multu $4, $4
sb $4, 0($1)
TAG664:
bne $1, $1, TAG665
lui $2, 4
lui $3, 5
divu $3, $3
TAG665:
mfhi $4
sll $0, $0, 0
bgez $2, TAG666
mult $3, $4
TAG666:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG667
div $2, $2
TAG667:
mult $1, $1
div $1, $1
andi $3, $1, 10
lbu $4, 0($1)
TAG668:
sh $4, 0($4)
bgtz $4, TAG669
andi $3, $4, 12
lui $3, 0
TAG669:
sw $3, 0($3)
bne $3, $3, TAG670
sb $3, 0($3)
bne $3, $3, TAG670
TAG670:
lbu $3, 0($3)
bltz $3, TAG671
sh $3, 0($3)
nor $4, $3, $3
TAG671:
mtlo $4
bne $4, $4, TAG672
lui $4, 9
mflo $2
TAG672:
sh $2, 1($2)
sw $2, 1($2)
blez $2, TAG673
sllv $1, $2, $2
TAG673:
mfhi $2
div $1, $1
divu $1, $1
lui $3, 15
TAG674:
mflo $4
sb $3, 0($4)
bgez $3, TAG675
sll $0, $0, 0
TAG675:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG676:
lui $1, 8
srl $2, $1, 0
sll $0, $0, 0
bne $1, $2, TAG677
TAG677:
mflo $2
mtlo $2
div $2, $2
lbu $3, 0($2)
TAG678:
lh $3, 0($3)
bgez $3, TAG679
mflo $2
bltz $3, TAG679
TAG679:
mthi $2
mfhi $1
mtlo $1
bne $1, $2, TAG680
TAG680:
mtlo $1
mult $1, $1
bne $1, $1, TAG681
mtlo $1
TAG681:
mult $1, $1
blez $1, TAG682
mthi $1
xor $3, $1, $1
TAG682:
beq $3, $3, TAG683
mtlo $3
mfhi $1
mfhi $3
TAG683:
multu $3, $3
srav $1, $3, $3
mtlo $3
mtlo $3
TAG684:
sltu $2, $1, $1
mflo $1
multu $1, $1
lui $3, 2
TAG685:
divu $3, $3
lui $1, 3
or $3, $3, $1
slt $4, $1, $1
TAG686:
multu $4, $4
lui $1, 8
bgez $4, TAG687
mflo $2
TAG687:
lui $1, 5
bgtz $1, TAG688
sll $0, $0, 0
bltz $2, TAG688
TAG688:
lui $2, 9
mflo $2
bgez $2, TAG689
lui $2, 15
TAG689:
div $2, $2
mtlo $2
sll $0, $0, 0
mfhi $2
TAG690:
srl $4, $2, 11
bne $4, $2, TAG691
mtlo $2
lb $2, 0($2)
TAG691:
sll $0, $0, 0
sh $2, 1($2)
divu $2, $2
mthi $2
TAG692:
mflo $4
lui $1, 2
addiu $2, $1, 15
addiu $2, $1, 5
TAG693:
mflo $4
multu $2, $2
mtlo $2
mtlo $2
TAG694:
sb $4, 0($4)
mtlo $4
lbu $3, 0($4)
subu $4, $4, $4
TAG695:
and $3, $4, $4
beq $4, $4, TAG696
sb $3, 0($4)
lb $2, 0($3)
TAG696:
mfhi $4
xori $1, $4, 12
sw $4, 0($4)
beq $2, $4, TAG697
TAG697:
divu $1, $1
mthi $1
bne $1, $1, TAG698
nor $1, $1, $1
TAG698:
lui $4, 6
sll $0, $0, 0
mfhi $4
divu $1, $1
TAG699:
div $4, $4
lbu $1, 0($4)
mtlo $4
sltiu $4, $1, 15
TAG700:
mflo $1
divu $4, $1
lw $4, 0($1)
bne $4, $4, TAG701
TAG701:
multu $4, $4
mfhi $1
lui $4, 1
mtlo $1
TAG702:
lui $3, 7
sll $0, $0, 0
bne $4, $3, TAG703
sll $0, $0, 0
TAG703:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
mthi $2
TAG704:
addiu $1, $3, 9
bne $1, $1, TAG705
sll $0, $0, 0
lui $1, 15
TAG705:
addu $2, $1, $1
lui $4, 4
blez $1, TAG706
mflo $4
TAG706:
or $4, $4, $4
sll $0, $0, 0
div $4, $1
lui $2, 11
TAG707:
subu $4, $2, $2
sll $0, $0, 0
mult $4, $2
sll $2, $4, 9
TAG708:
beq $2, $2, TAG709
lh $4, 0($2)
sb $4, 0($4)
div $2, $4
TAG709:
divu $4, $4
divu $4, $4
addu $3, $4, $4
mtlo $4
TAG710:
sll $0, $0, 0
beq $1, $3, TAG711
mthi $1
lui $4, 12
TAG711:
bne $4, $4, TAG712
lui $1, 6
or $2, $4, $1
blez $2, TAG712
TAG712:
sll $0, $0, 0
xori $2, $2, 10
bltz $2, TAG713
subu $3, $2, $2
TAG713:
lhu $2, 0($3)
nor $1, $3, $2
multu $1, $3
bltz $2, TAG714
TAG714:
mtlo $1
mtlo $1
addu $2, $1, $1
mflo $3
TAG715:
sb $3, 257($3)
mtlo $3
sll $3, $3, 13
mflo $3
TAG716:
mult $3, $3
mtlo $3
sll $2, $3, 14
mfhi $1
TAG717:
bgtz $1, TAG718
mtlo $1
mfhi $2
sb $2, 0($2)
TAG718:
mthi $2
lui $2, 0
mfhi $4
sh $2, 0($2)
TAG719:
lhu $2, 0($4)
lui $2, 13
sw $4, 0($4)
srl $1, $4, 10
TAG720:
mult $1, $1
mthi $1
addi $4, $1, 11
sllv $2, $1, $1
TAG721:
sh $2, 0($2)
bltz $2, TAG722
sb $2, 0($2)
lui $2, 3
TAG722:
slt $3, $2, $2
mthi $2
srlv $1, $3, $3
mthi $1
TAG723:
addu $1, $1, $1
lb $4, 0($1)
mult $1, $1
xori $1, $1, 1
TAG724:
mflo $2
mflo $2
sltu $4, $1, $2
mfhi $1
TAG725:
addiu $4, $1, 6
mthi $4
bgtz $4, TAG726
multu $1, $1
TAG726:
beq $4, $4, TAG727
lui $4, 1
lui $3, 14
sb $4, 0($3)
TAG727:
sb $3, 0($3)
and $4, $3, $3
mult $4, $4
lui $4, 13
TAG728:
mthi $4
sll $0, $0, 0
bne $4, $4, TAG729
andi $1, $4, 8
TAG729:
lh $2, 0($1)
lb $1, 0($2)
and $1, $2, $2
mthi $1
TAG730:
lh $1, 0($1)
multu $1, $1
mthi $1
lbu $1, 0($1)
TAG731:
lbu $2, 0($1)
bgez $2, TAG732
mfhi $3
divu $3, $3
TAG732:
mflo $3
bgez $3, TAG733
mthi $3
mflo $3
TAG733:
lui $1, 15
bgez $3, TAG734
lui $3, 3
lbu $1, 0($3)
TAG734:
blez $1, TAG735
sll $0, $0, 0
lui $4, 13
subu $2, $3, $3
TAG735:
lh $4, 0($2)
sltiu $2, $4, 3
div $2, $2
beq $2, $2, TAG736
TAG736:
sb $2, 0($2)
mfhi $4
nor $1, $4, $4
lui $2, 7
TAG737:
nor $3, $2, $2
sll $0, $0, 0
bne $2, $2, TAG738
lui $2, 3
TAG738:
sll $0, $0, 0
and $1, $2, $2
bne $1, $1, TAG739
sll $0, $0, 0
TAG739:
bltz $2, TAG740
sll $0, $0, 0
mult $2, $2
multu $2, $2
TAG740:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
bgtz $2, TAG741
TAG741:
sll $0, $0, 0
addu $1, $2, $2
mfhi $1
lui $3, 1
TAG742:
mtlo $3
lui $2, 7
beq $2, $2, TAG743
ori $1, $2, 6
TAG743:
mthi $1
mult $1, $1
bne $1, $1, TAG744
lui $3, 12
TAG744:
lui $3, 5
lui $2, 13
mult $2, $3
mflo $2
TAG745:
mult $2, $2
xor $4, $2, $2
bne $4, $2, TAG746
or $1, $2, $2
TAG746:
lui $4, 14
mtlo $1
sub $4, $4, $1
bne $1, $4, TAG747
TAG747:
mflo $2
sll $0, $0, 0
bltz $2, TAG748
sh $1, 0($2)
TAG748:
lui $4, 4
mflo $3
sll $0, $0, 0
sltiu $3, $4, 10
TAG749:
lui $2, 8
mult $3, $2
sll $0, $0, 0
mflo $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop