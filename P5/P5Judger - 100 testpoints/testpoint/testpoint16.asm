ori $1, $0, 7
ori $2, $0, 1
ori $3, $0, 11
ori $4, $0, 9
sw $2, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $2, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $3, 88($0)
sw $1, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $3, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $4, 124($0)
lbu $3, 0($2)
mtlo $2
mflo $2
mfhi $4
TAG1:
srav $4, $4, $4
mult $4, $4
mtlo $4
and $1, $4, $4
TAG2:
lui $1, 2
mfhi $4
lui $4, 11
mfhi $3
TAG3:
sltu $1, $3, $3
lh $1, 0($3)
lui $3, 13
lui $3, 7
TAG4:
nor $1, $3, $3
mflo $1
sw $1, 0($1)
mthi $1
TAG5:
sw $1, 0($1)
sw $1, 0($1)
bgtz $1, TAG6
multu $1, $1
TAG6:
srlv $1, $1, $1
lh $1, 0($1)
lui $4, 3
bne $4, $1, TAG7
TAG7:
addiu $3, $4, 4
mult $3, $4
divu $4, $4
lui $4, 11
TAG8:
beq $4, $4, TAG9
mflo $1
ori $4, $4, 3
lb $1, 0($4)
TAG9:
xor $2, $1, $1
xor $2, $1, $2
multu $2, $1
sltu $2, $2, $1
TAG10:
mult $2, $2
beq $2, $2, TAG11
sb $2, 0($2)
lui $3, 15
TAG11:
sltiu $4, $3, 7
sltiu $3, $3, 12
mflo $4
multu $3, $4
TAG12:
mult $4, $4
bgtz $4, TAG13
subu $2, $4, $4
bne $4, $4, TAG13
TAG13:
lw $2, 0($2)
blez $2, TAG14
multu $2, $2
divu $2, $2
TAG14:
bne $2, $2, TAG15
sw $2, 0($2)
blez $2, TAG15
mflo $4
TAG15:
multu $4, $4
bgtz $4, TAG16
mthi $4
sra $3, $4, 2
TAG16:
addu $4, $3, $3
mult $3, $4
mult $3, $4
nor $2, $4, $3
TAG17:
bgtz $2, TAG18
xor $3, $2, $2
lbu $1, 0($3)
mthi $2
TAG18:
mult $1, $1
xori $4, $1, 10
mflo $3
lui $3, 14
TAG19:
bltz $3, TAG20
sll $0, $0, 0
mthi $1
bne $1, $1, TAG20
TAG20:
sb $1, 0($1)
mtlo $1
bgez $1, TAG21
lui $1, 2
TAG21:
sra $2, $1, 14
mtlo $2
lui $4, 11
beq $2, $4, TAG22
TAG22:
xor $1, $4, $4
sb $4, 0($1)
sll $0, $0, 0
srlv $3, $1, $1
TAG23:
sb $3, 0($3)
lhu $1, 0($3)
sh $1, 0($1)
mult $1, $3
TAG24:
lhu $4, 0($1)
mfhi $3
lui $3, 13
beq $3, $4, TAG25
TAG25:
mflo $4
mult $4, $4
lui $3, 5
sltu $2, $4, $3
TAG26:
sb $2, 0($2)
div $2, $2
slti $2, $2, 14
andi $2, $2, 7
TAG27:
mtlo $2
addu $2, $2, $2
mult $2, $2
lui $4, 1
TAG28:
lui $2, 11
addiu $1, $2, 7
andi $1, $2, 2
mflo $4
TAG29:
bne $4, $4, TAG30
sw $4, 0($4)
srav $2, $4, $4
lb $2, 0($2)
TAG30:
mflo $2
bgez $2, TAG31
mflo $1
sb $2, 0($1)
TAG31:
lw $1, 0($1)
srav $2, $1, $1
lb $3, 0($2)
sb $2, 0($1)
TAG32:
srlv $2, $3, $3
xori $1, $2, 13
sh $1, 0($3)
lw $1, 0($3)
TAG33:
sb $1, 0($1)
sllv $2, $1, $1
mult $2, $2
bne $1, $1, TAG34
TAG34:
lui $1, 15
lui $4, 7
sll $0, $0, 0
mthi $2
TAG35:
beq $4, $4, TAG36
mfhi $4
mflo $2
divu $2, $2
TAG36:
lui $4, 5
lui $1, 8
bne $2, $4, TAG37
sll $0, $0, 0
TAG37:
beq $1, $1, TAG38
mtlo $1
bgez $1, TAG38
div $1, $1
TAG38:
lui $1, 12
srav $4, $1, $1
bltz $1, TAG39
mfhi $2
TAG39:
lui $1, 6
sll $0, $0, 0
lui $2, 7
mfhi $4
TAG40:
multu $4, $4
mflo $4
mtlo $4
blez $4, TAG41
TAG41:
mflo $4
bltz $4, TAG42
sll $0, $0, 0
lui $2, 7
TAG42:
lui $2, 4
sll $0, $0, 0
xori $2, $2, 3
multu $2, $2
TAG43:
bgez $2, TAG44
sll $0, $0, 0
beq $2, $2, TAG44
mtlo $2
TAG44:
sll $0, $0, 0
divu $2, $2
lui $2, 9
sll $0, $0, 0
TAG45:
lui $2, 10
lui $2, 5
or $4, $2, $2
sll $0, $0, 0
TAG46:
sll $0, $0, 0
bne $2, $2, TAG47
sll $0, $0, 0
mflo $1
TAG47:
bne $1, $1, TAG48
lui $1, 11
div $1, $1
mflo $4
TAG48:
bne $4, $4, TAG49
slt $1, $4, $4
lhu $1, 0($1)
mfhi $4
TAG49:
sh $4, 0($4)
addiu $1, $4, 10
addu $3, $1, $1
bne $1, $3, TAG50
TAG50:
divu $3, $3
mult $3, $3
mflo $4
sra $1, $4, 10
TAG51:
mthi $1
bgez $1, TAG52
lh $2, 0($1)
mtlo $1
TAG52:
mtlo $2
lui $3, 2
sll $0, $0, 0
sb $2, 0($2)
TAG53:
mthi $3
lui $4, 14
mthi $4
sll $0, $0, 0
TAG54:
sll $0, $0, 0
blez $4, TAG55
lui $1, 7
mtlo $4
TAG55:
sll $0, $0, 0
lui $2, 12
subu $4, $2, $3
div $2, $1
TAG56:
sll $0, $0, 0
mflo $3
lui $2, 3
mflo $2
TAG57:
mtlo $2
beq $2, $2, TAG58
mtlo $2
xori $1, $2, 10
TAG58:
bne $1, $1, TAG59
sll $0, $0, 0
sll $1, $1, 8
srl $2, $1, 4
TAG59:
mthi $2
bne $2, $2, TAG60
sll $4, $2, 9
mfhi $3
TAG60:
addu $2, $3, $3
srav $2, $3, $2
sll $0, $0, 0
lui $1, 6
TAG61:
mtlo $1
divu $1, $1
mflo $3
sll $0, $0, 0
TAG62:
mtlo $1
sll $0, $0, 0
bltz $3, TAG63
subu $3, $3, $3
TAG63:
mfhi $2
multu $3, $2
sw $3, 0($2)
lb $3, 0($2)
TAG64:
lui $2, 14
lui $3, 9
mflo $4
and $1, $2, $4
TAG65:
sltiu $4, $1, 1
multu $4, $1
sub $1, $1, $1
lui $4, 3
TAG66:
sll $4, $4, 8
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
TAG67:
mfhi $2
bne $2, $2, TAG68
mtlo $2
mult $2, $2
TAG68:
mthi $2
beq $2, $2, TAG69
mthi $2
bne $2, $2, TAG69
TAG69:
lui $2, 15
mfhi $4
mthi $2
sll $0, $0, 0
TAG70:
lui $2, 15
bltz $1, TAG71
lui $4, 7
xori $2, $1, 9
TAG71:
lbu $3, 0($2)
sltu $4, $3, $2
slti $2, $2, 8
mtlo $4
TAG72:
mfhi $1
sll $0, $0, 0
lh $3, 0($2)
mflo $1
TAG73:
mflo $1
lui $3, 2
addu $3, $3, $3
blez $1, TAG74
TAG74:
sll $0, $0, 0
mthi $3
beq $3, $3, TAG75
slt $2, $3, $1
TAG75:
mthi $2
bne $2, $2, TAG76
nor $4, $2, $2
add $4, $2, $4
TAG76:
mult $4, $4
sll $2, $4, 2
sltu $1, $2, $4
lui $3, 5
TAG77:
xori $1, $3, 7
sll $0, $0, 0
lui $4, 8
bgez $1, TAG78
TAG78:
slt $3, $4, $4
sll $0, $0, 0
slti $1, $3, 11
mtlo $4
TAG79:
lb $2, 0($1)
mult $2, $2
mtlo $1
sltu $2, $2, $1
TAG80:
sra $2, $2, 0
xor $3, $2, $2
sb $3, 0($2)
lb $3, 0($2)
TAG81:
beq $3, $3, TAG82
sltu $3, $3, $3
beq $3, $3, TAG82
sltiu $2, $3, 5
TAG82:
blez $2, TAG83
mfhi $4
mtlo $2
bltz $4, TAG83
TAG83:
mflo $3
lui $3, 11
beq $3, $4, TAG84
lbu $1, 0($4)
TAG84:
sh $1, 0($1)
lui $2, 9
multu $2, $1
mult $2, $2
TAG85:
divu $2, $2
mfhi $1
bgez $1, TAG86
sll $2, $1, 7
TAG86:
bgez $2, TAG87
srav $3, $2, $2
lui $1, 6
lhu $3, 0($3)
TAG87:
lhu $3, 0($3)
sra $2, $3, 5
sb $3, 0($3)
lbu $1, 0($3)
TAG88:
addu $2, $1, $1
blez $1, TAG89
multu $2, $1
lbu $2, 0($1)
TAG89:
sra $3, $2, 2
lui $2, 9
mtlo $3
mfhi $1
TAG90:
lui $1, 11
lui $4, 11
lui $3, 13
lui $2, 15
TAG91:
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG92
sll $0, $0, 0
TAG92:
multu $2, $2
blez $2, TAG93
mtlo $2
bgez $2, TAG93
TAG93:
sra $2, $2, 13
srlv $1, $2, $2
sra $3, $2, 3
mult $1, $2
TAG94:
mthi $3
mthi $3
lw $2, 0($3)
bgez $2, TAG95
TAG95:
lhu $3, 0($2)
bne $2, $3, TAG96
lbu $3, 0($3)
mflo $1
TAG96:
bltz $1, TAG97
mthi $1
bne $1, $1, TAG97
srl $1, $1, 10
TAG97:
multu $1, $1
lbu $1, 0($1)
addiu $3, $1, 12
lui $4, 12
TAG98:
bne $4, $4, TAG99
addu $4, $4, $4
sll $0, $0, 0
mthi $4
TAG99:
bgtz $4, TAG100
sll $0, $0, 0
divu $4, $4
bgtz $4, TAG100
TAG100:
sll $0, $0, 0
mthi $4
beq $4, $4, TAG101
sll $0, $0, 0
TAG101:
sh $1, 0($1)
mfhi $1
subu $3, $1, $1
mfhi $4
TAG102:
multu $4, $4
bgtz $4, TAG103
srl $3, $4, 9
beq $4, $4, TAG103
TAG103:
addiu $4, $3, 11
blez $4, TAG104
mfhi $1
mtlo $1
TAG104:
lui $2, 3
mflo $4
sll $0, $0, 0
lhu $4, -3072($3)
TAG105:
lh $3, 0($4)
nor $1, $3, $3
multu $3, $4
mthi $4
TAG106:
beq $1, $1, TAG107
lui $1, 14
lui $1, 15
beq $1, $1, TAG107
TAG107:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG108
sll $0, $0, 0
TAG108:
mthi $3
mflo $2
lui $4, 6
sh $3, 0($3)
TAG109:
lui $3, 1
srav $4, $4, $4
divu $3, $4
mflo $4
TAG110:
sra $4, $4, 12
mtlo $4
bne $4, $4, TAG111
sw $4, 0($4)
TAG111:
bgez $4, TAG112
sb $4, 0($4)
lh $4, 0($4)
addiu $2, $4, 6
TAG112:
mtlo $2
lui $3, 12
multu $2, $3
sll $0, $0, 0
TAG113:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
sw $3, 0($4)
TAG114:
bne $4, $4, TAG115
mfhi $1
mflo $3
beq $3, $4, TAG115
TAG115:
lui $1, 10
lui $3, 10
lui $2, 0
slt $2, $1, $3
TAG116:
mfhi $1
mthi $1
mfhi $1
ori $3, $1, 8
TAG117:
lh $1, 0($3)
bne $3, $3, TAG118
addu $4, $1, $1
mult $1, $1
TAG118:
multu $4, $4
and $2, $4, $4
bgez $2, TAG119
or $3, $2, $2
TAG119:
mult $3, $3
div $3, $3
lui $2, 12
xori $2, $2, 15
TAG120:
mult $2, $2
lui $1, 11
divu $2, $1
sll $0, $0, 0
TAG121:
mflo $2
nor $1, $2, $2
srl $1, $2, 0
subu $4, $1, $1
TAG122:
bgez $4, TAG123
mfhi $3
divu $4, $4
slti $3, $3, 7
TAG123:
lui $2, 10
sra $4, $3, 9
sll $0, $0, 0
sll $0, $0, 0
TAG124:
addu $4, $4, $4
beq $4, $4, TAG125
lui $3, 0
multu $4, $3
TAG125:
lhu $4, 0($3)
mflo $1
sw $1, 0($3)
mfhi $4
TAG126:
beq $4, $4, TAG127
addu $1, $4, $4
bltz $4, TAG127
sh $1, 0($4)
TAG127:
multu $1, $1
bltz $1, TAG128
divu $1, $1
lui $4, 9
TAG128:
sllv $1, $4, $4
xor $3, $1, $1
blez $4, TAG129
sub $1, $1, $3
TAG129:
sll $0, $0, 0
mult $1, $1
mflo $1
mflo $1
TAG130:
beq $1, $1, TAG131
lui $1, 3
sub $4, $1, $1
bne $4, $4, TAG131
TAG131:
mthi $4
lui $3, 3
bgtz $4, TAG132
xori $3, $4, 15
TAG132:
sll $0, $0, 0
slt $3, $3, $3
multu $3, $3
mflo $1
TAG133:
andi $1, $1, 4
lui $3, 15
slt $4, $1, $1
xor $1, $1, $3
TAG134:
multu $1, $1
div $1, $1
bgez $1, TAG135
sltiu $3, $1, 9
TAG135:
lh $1, 0($3)
mtlo $1
lb $4, 0($3)
lui $1, 11
TAG136:
mfhi $1
sltiu $3, $1, 5
lui $3, 8
srl $4, $1, 1
TAG137:
sh $4, 0($4)
mthi $4
mfhi $4
bgez $4, TAG138
TAG138:
sb $4, 0($4)
sw $4, 0($4)
lui $3, 13
sll $0, $0, 0
TAG139:
bltz $3, TAG140
divu $3, $3
lui $1, 14
lui $1, 11
TAG140:
subu $2, $1, $1
sw $1, 0($2)
addiu $3, $1, 4
lui $1, 5
TAG141:
subu $4, $1, $1
lui $4, 2
mflo $3
mflo $2
TAG142:
mtlo $2
mtlo $2
sb $2, 0($2)
bne $2, $2, TAG143
TAG143:
lb $3, 0($2)
lb $1, 0($2)
lui $3, 0
mult $2, $3
TAG144:
mflo $2
mtlo $3
sllv $4, $2, $2
lui $4, 13
TAG145:
sll $0, $0, 0
nor $4, $3, $3
srav $2, $3, $4
addiu $1, $4, 8
TAG146:
mfhi $2
bgtz $2, TAG147
lh $4, 0($2)
sb $2, 0($1)
TAG147:
and $1, $4, $4
lw $1, -256($1)
mthi $1
lui $2, 7
TAG148:
or $2, $2, $2
sltu $3, $2, $2
sll $4, $2, 11
sll $0, $0, 0
TAG149:
srav $4, $4, $4
multu $4, $4
sll $0, $0, 0
multu $4, $4
TAG150:
mtlo $1
mult $1, $1
sll $0, $0, 0
lui $3, 2
TAG151:
mfhi $4
lui $3, 8
lb $1, 0($4)
bgez $4, TAG152
TAG152:
srl $1, $1, 13
blez $1, TAG153
sb $1, 0($1)
mflo $3
TAG153:
sll $2, $3, 9
andi $3, $2, 2
andi $1, $3, 12
lui $4, 9
TAG154:
lui $2, 9
slti $1, $4, 12
sll $0, $0, 0
or $3, $1, $4
TAG155:
mflo $1
mfhi $4
mfhi $1
sra $3, $1, 14
TAG156:
bne $3, $3, TAG157
sh $3, 0($3)
lui $4, 11
mfhi $2
TAG157:
mfhi $2
sb $2, 0($2)
lb $1, 0($2)
sra $3, $2, 7
TAG158:
bgez $3, TAG159
mflo $1
mthi $3
mult $1, $3
TAG159:
sll $0, $0, 0
nor $4, $1, $1
lui $3, 12
lui $3, 7
TAG160:
mthi $3
sll $0, $0, 0
addiu $3, $3, 13
sll $0, $0, 0
TAG161:
bltz $3, TAG162
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG162:
bne $3, $3, TAG163
lui $2, 8
subu $2, $2, $3
sll $0, $0, 0
TAG163:
sll $0, $0, 0
slti $3, $3, 8
bne $3, $3, TAG164
sh $3, 0($3)
TAG164:
addu $4, $3, $3
mfhi $4
mfhi $2
beq $4, $3, TAG165
TAG165:
lui $1, 10
lui $2, 2
beq $2, $1, TAG166
mfhi $1
TAG166:
blez $1, TAG167
sll $0, $0, 0
mtlo $1
mfhi $1
TAG167:
sllv $3, $1, $1
bgez $1, TAG168
sll $0, $0, 0
sw $2, 0($2)
TAG168:
mflo $4
lui $3, 14
sll $0, $0, 0
mflo $2
TAG169:
bgez $2, TAG170
lui $4, 13
divu $4, $4
bne $2, $2, TAG170
TAG170:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 0
beq $4, $2, TAG171
TAG171:
mflo $4
lb $2, 0($2)
bgtz $4, TAG172
sltu $1, $2, $2
TAG172:
mthi $1
beq $1, $1, TAG173
sllv $2, $1, $1
mtlo $2
TAG173:
bne $2, $2, TAG174
xor $2, $2, $2
mult $2, $2
beq $2, $2, TAG174
TAG174:
multu $2, $2
lui $1, 6
lbu $4, 0($2)
lui $2, 15
TAG175:
beq $2, $2, TAG176
sll $0, $0, 0
mult $2, $2
lui $1, 14
TAG176:
mfhi $2
sb $1, 0($2)
sb $2, 0($2)
mtlo $2
TAG177:
lui $1, 7
sh $1, 0($2)
mfhi $3
sll $0, $0, 0
TAG178:
bltz $3, TAG179
addi $4, $3, 7
bltz $4, TAG179
lui $2, 12
TAG179:
xor $3, $2, $2
bltz $2, TAG180
mtlo $3
lui $2, 15
TAG180:
sltiu $3, $2, 11
mflo $4
mfhi $3
mthi $3
TAG181:
slti $2, $3, 8
srl $3, $2, 9
andi $1, $3, 4
srlv $3, $3, $3
TAG182:
mfhi $3
mult $3, $3
mthi $3
bne $3, $3, TAG183
TAG183:
mfhi $4
lbu $1, 0($3)
lui $3, 1
lui $2, 4
TAG184:
sll $0, $0, 0
div $2, $2
bltz $2, TAG185
srav $1, $2, $2
TAG185:
sllv $1, $1, $1
slt $1, $1, $1
mfhi $3
sw $1, 0($1)
TAG186:
lui $2, 14
lui $1, 2
mfhi $3
mult $3, $2
TAG187:
bltz $3, TAG188
sub $4, $3, $3
slt $1, $3, $3
bltz $1, TAG188
TAG188:
sb $1, 0($1)
beq $1, $1, TAG189
mflo $2
lui $2, 13
TAG189:
sub $3, $2, $2
bne $2, $3, TAG190
lui $1, 4
ori $4, $3, 6
TAG190:
mthi $4
xor $4, $4, $4
bgtz $4, TAG191
multu $4, $4
TAG191:
and $1, $4, $4
lui $4, 0
sltu $1, $4, $4
mflo $3
TAG192:
xor $1, $3, $3
sllv $3, $1, $3
beq $3, $1, TAG193
xor $3, $3, $3
TAG193:
lui $3, 3
mflo $4
sll $0, $0, 0
mflo $3
TAG194:
addiu $2, $3, 0
bne $3, $3, TAG195
srlv $3, $3, $2
mthi $2
TAG195:
lbu $1, 0($3)
multu $1, $3
mult $1, $3
lh $3, 0($1)
TAG196:
beq $3, $3, TAG197
mflo $4
lh $1, 0($3)
divu $1, $3
TAG197:
multu $1, $1
bne $1, $1, TAG198
addi $4, $1, 4
multu $1, $1
TAG198:
beq $4, $4, TAG199
lui $2, 14
mtlo $2
multu $4, $4
TAG199:
mflo $2
multu $2, $2
mult $2, $2
lh $4, 0($2)
TAG200:
mthi $4
mfhi $3
bgtz $3, TAG201
sltu $1, $4, $3
TAG201:
mflo $4
subu $4, $4, $1
mtlo $1
lui $3, 8
TAG202:
lui $3, 13
srlv $4, $3, $3
sll $0, $0, 0
mfhi $3
TAG203:
mflo $4
srav $4, $3, $4
mult $4, $4
sw $4, 0($3)
TAG204:
beq $4, $4, TAG205
lui $4, 10
sh $4, 0($4)
sb $4, 0($4)
TAG205:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
subu $3, $2, $4
TAG206:
sll $0, $0, 0
slti $2, $3, 1
ori $4, $2, 2
sll $0, $0, 0
TAG207:
lbu $4, 0($4)
mthi $4
multu $4, $4
mult $4, $4
TAG208:
mthi $4
mthi $4
bgez $4, TAG209
mfhi $2
TAG209:
lhu $4, 0($2)
mthi $2
lw $1, 0($2)
lui $2, 9
TAG210:
mflo $3
beq $3, $3, TAG211
lh $2, 0($3)
bltz $2, TAG211
TAG211:
multu $2, $2
lh $4, 0($2)
beq $4, $4, TAG212
sh $2, 0($4)
TAG212:
mfhi $1
multu $4, $1
mtlo $4
lui $2, 13
TAG213:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
sll $0, $0, 0
TAG214:
mtlo $4
nor $1, $4, $4
slt $1, $4, $4
mfhi $2
TAG215:
mtlo $2
mflo $2
xor $3, $2, $2
lui $3, 15
TAG216:
bne $3, $3, TAG217
nor $4, $3, $3
mtlo $3
sll $0, $0, 0
TAG217:
div $4, $4
bgtz $4, TAG218
mtlo $4
mfhi $1
TAG218:
lhu $1, 0($1)
multu $1, $1
lbu $2, 0($1)
lui $4, 15
TAG219:
mthi $4
lui $3, 14
mflo $4
mthi $4
TAG220:
beq $4, $4, TAG221
xori $2, $4, 14
srav $1, $4, $2
bltz $4, TAG221
TAG221:
andi $1, $1, 1
lui $1, 4
lui $3, 9
sll $0, $0, 0
TAG222:
sll $0, $0, 0
subu $4, $3, $3
multu $3, $4
multu $4, $3
TAG223:
nor $4, $4, $4
mult $4, $4
lb $1, 1($4)
mult $4, $1
TAG224:
lb $1, 0($1)
blez $1, TAG225
lh $1, 0($1)
slt $4, $1, $1
TAG225:
div $4, $4
sb $4, 1($4)
sw $4, 1($4)
lh $2, 1($4)
TAG226:
sll $0, $0, 0
addu $2, $4, $4
addiu $1, $4, 15
srlv $2, $1, $4
TAG227:
mthi $2
addiu $1, $2, 2
mflo $3
beq $2, $3, TAG228
TAG228:
mfhi $1
addu $2, $3, $1
bltz $1, TAG229
xori $4, $3, 14
TAG229:
mtlo $4
blez $4, TAG230
mthi $4
lbu $4, 0($4)
TAG230:
mult $4, $4
beq $4, $4, TAG231
mflo $2
mfhi $2
TAG231:
sw $2, 0($2)
slt $4, $2, $2
bgtz $2, TAG232
multu $4, $4
TAG232:
lui $2, 6
sll $0, $0, 0
lui $3, 1
mult $2, $4
TAG233:
slti $1, $3, 6
bne $3, $1, TAG234
mthi $3
bgez $1, TAG234
TAG234:
slt $1, $1, $1
blez $1, TAG235
lw $3, 0($1)
lui $2, 11
TAG235:
multu $2, $2
ori $3, $2, 6
bltz $2, TAG236
sll $1, $3, 1
TAG236:
lui $3, 11
div $3, $3
mfhi $2
sll $0, $0, 0
TAG237:
bgtz $4, TAG238
sh $4, 0($4)
mthi $4
mthi $4
TAG238:
mflo $1
bgez $1, TAG239
mtlo $1
xori $4, $1, 14
TAG239:
blez $4, TAG240
lbu $4, 0($4)
addi $1, $4, 8
divu $4, $1
TAG240:
divu $1, $1
lui $3, 4
sllv $3, $1, $1
mflo $3
TAG241:
beq $3, $3, TAG242
mflo $3
srav $2, $3, $3
srlv $4, $3, $3
TAG242:
beq $4, $4, TAG243
mthi $4
mflo $1
mthi $1
TAG243:
lbu $3, 0($1)
bne $3, $3, TAG244
lw $3, 0($3)
xor $1, $1, $3
TAG244:
lbu $1, 0($1)
multu $1, $1
lbu $3, 0($1)
sb $1, 0($3)
TAG245:
mflo $1
bne $3, $3, TAG246
sb $3, 0($1)
slt $4, $1, $1
TAG246:
srlv $1, $4, $4
mthi $4
mfhi $4
sb $1, 0($4)
TAG247:
sh $4, 0($4)
slt $1, $4, $4
beq $4, $4, TAG248
mfhi $2
TAG248:
sra $1, $2, 3
bgez $1, TAG249
mtlo $2
slti $4, $2, 5
TAG249:
mthi $4
mult $4, $4
lw $4, 0($4)
lui $2, 4
TAG250:
bgez $2, TAG251
mflo $4
mfhi $1
multu $2, $2
TAG251:
bltz $1, TAG252
mult $1, $1
addiu $1, $1, 9
lbu $2, 0($1)
TAG252:
xor $3, $2, $2
mult $3, $2
lbu $1, 0($3)
lui $2, 5
TAG253:
lui $2, 15
sltiu $2, $2, 7
bne $2, $2, TAG254
mflo $2
TAG254:
mult $2, $2
addiu $2, $2, 7
mfhi $3
mthi $3
TAG255:
srav $1, $3, $3
lhu $4, 0($1)
mult $4, $1
lui $1, 0
TAG256:
lui $1, 3
bgtz $1, TAG257
mfhi $1
sb $1, 0($1)
TAG257:
sltu $3, $1, $1
lui $4, 4
sll $0, $0, 0
sra $1, $1, 13
TAG258:
sw $1, 0($1)
multu $1, $1
lb $1, 0($1)
addi $2, $1, 12
TAG259:
srl $1, $2, 10
lui $1, 9
bltz $1, TAG260
lui $3, 9
TAG260:
srl $4, $3, 0
sltiu $3, $3, 4
lh $3, 0($3)
sb $3, 0($3)
TAG261:
sb $3, 0($3)
lbu $4, 0($3)
bgez $4, TAG262
mtlo $3
TAG262:
addiu $1, $4, 3
srl $1, $1, 9
lui $3, 9
blez $3, TAG263
TAG263:
divu $3, $3
blez $3, TAG264
lui $2, 9
subu $4, $3, $2
TAG264:
multu $4, $4
multu $4, $4
bltz $4, TAG265
mflo $2
TAG265:
bne $2, $2, TAG266
lui $1, 10
beq $1, $2, TAG266
mflo $2
TAG266:
srav $1, $2, $2
bgez $1, TAG267
multu $1, $2
blez $2, TAG267
TAG267:
sw $1, 0($1)
ori $2, $1, 11
mult $1, $1
mflo $4
TAG268:
bne $4, $4, TAG269
sh $4, 0($4)
lui $1, 7
sw $1, 0($4)
TAG269:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
bgez $3, TAG270
TAG270:
xor $3, $3, $3
lui $2, 15
beq $3, $3, TAG271
lui $2, 7
TAG271:
bne $2, $2, TAG272
sll $0, $0, 0
mfhi $2
multu $2, $2
TAG272:
bgez $2, TAG273
lui $1, 15
xori $2, $2, 8
bne $1, $2, TAG273
TAG273:
or $3, $2, $2
lbu $4, 0($2)
mtlo $2
blez $4, TAG274
TAG274:
srl $2, $4, 2
multu $4, $2
lhu $2, 0($4)
mthi $4
TAG275:
lui $4, 10
srav $3, $4, $4
sll $0, $0, 0
srlv $1, $3, $3
TAG276:
bgtz $1, TAG277
sll $0, $0, 0
mfhi $2
mult $2, $2
TAG277:
mflo $2
mflo $4
subu $3, $2, $2
lb $2, 0($2)
TAG278:
mtlo $2
mult $2, $2
multu $2, $2
sltiu $4, $2, 14
TAG279:
lui $3, 12
bltz $3, TAG280
mfhi $2
lhu $1, 0($2)
TAG280:
bltz $1, TAG281
mthi $1
sw $1, 0($1)
mfhi $3
TAG281:
mtlo $3
mthi $3
mthi $3
mult $3, $3
TAG282:
lh $4, 0($3)
lb $1, 0($3)
lui $1, 14
addiu $3, $3, 7
TAG283:
addiu $1, $3, 7
mthi $1
sh $3, 0($1)
beq $1, $3, TAG284
TAG284:
lh $3, 0($1)
sllv $3, $3, $1
xor $4, $3, $3
mtlo $4
TAG285:
sh $4, 0($4)
bne $4, $4, TAG286
lui $1, 6
sll $3, $1, 5
TAG286:
divu $3, $3
mthi $3
mthi $3
sll $0, $0, 0
TAG287:
srl $3, $3, 10
lui $2, 0
mtlo $3
lbu $4, 0($2)
TAG288:
multu $4, $4
mtlo $4
srl $4, $4, 6
ori $3, $4, 15
TAG289:
mthi $3
multu $3, $3
srlv $4, $3, $3
sub $4, $4, $4
TAG290:
lbu $2, 0($4)
addiu $3, $4, 3
beq $4, $3, TAG291
lbu $2, 0($2)
TAG291:
mfhi $1
sllv $4, $2, $1
mtlo $1
bne $2, $2, TAG292
TAG292:
mult $4, $4
nor $3, $4, $4
mtlo $4
sra $4, $4, 8
TAG293:
lbu $3, 0($4)
beq $3, $3, TAG294
lh $1, 0($4)
or $1, $4, $3
TAG294:
mflo $3
lhu $4, 0($3)
sh $1, 0($3)
mfhi $3
TAG295:
srl $2, $3, 12
mult $3, $3
lhu $1, 0($2)
sw $2, 0($2)
TAG296:
addi $3, $1, 11
bltz $1, TAG297
srav $2, $3, $1
mtlo $2
TAG297:
mthi $2
lbu $2, 0($2)
mult $2, $2
mfhi $4
TAG298:
srlv $1, $4, $4
nor $3, $1, $4
mfhi $1
bltz $4, TAG299
TAG299:
mflo $1
lhu $4, 0($1)
xori $4, $1, 14
srl $4, $1, 0
TAG300:
srl $2, $4, 10
mult $4, $2
sw $2, 0($4)
mthi $4
TAG301:
addu $3, $2, $2
addu $3, $2, $3
bne $2, $3, TAG302
lh $1, 0($3)
TAG302:
beq $1, $1, TAG303
multu $1, $1
bne $1, $1, TAG303
divu $1, $1
TAG303:
mtlo $1
mfhi $2
mtlo $2
beq $2, $2, TAG304
TAG304:
subu $3, $2, $2
srav $2, $2, $3
multu $2, $2
sh $3, 0($3)
TAG305:
multu $2, $2
mflo $2
srlv $4, $2, $2
bne $4, $2, TAG306
TAG306:
slti $2, $4, 8
sw $4, 0($4)
mtlo $2
mthi $4
TAG307:
mthi $2
mtlo $2
bgez $2, TAG308
addu $4, $2, $2
TAG308:
mflo $2
mflo $3
sltiu $4, $4, 13
mflo $1
TAG309:
sb $1, 0($1)
lbu $2, 0($1)
lui $3, 3
bgez $1, TAG310
TAG310:
mfhi $2
bne $3, $3, TAG311
subu $4, $3, $2
bltz $2, TAG311
TAG311:
sll $2, $4, 14
bne $2, $4, TAG312
mtlo $2
sb $4, 0($4)
TAG312:
bgez $2, TAG313
mult $2, $2
mtlo $2
divu $2, $2
TAG313:
div $2, $2
sll $0, $0, 0
bne $2, $3, TAG314
sll $0, $0, 0
TAG314:
lui $4, 8
bne $3, $4, TAG315
mfhi $2
slti $4, $2, 14
TAG315:
sll $0, $0, 0
mflo $2
lui $3, 13
mtlo $2
TAG316:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 1
div $3, $3
TAG317:
sll $0, $0, 0
bltz $1, TAG318
addiu $2, $4, 3
sll $0, $0, 0
TAG318:
mflo $1
mfhi $4
bgtz $1, TAG319
lbu $2, 0($4)
TAG319:
mthi $2
addiu $4, $2, 10
lbu $2, 0($2)
addi $4, $2, 2
TAG320:
mult $4, $4
bltz $4, TAG321
nor $2, $4, $4
nor $3, $2, $2
TAG321:
lui $1, 2
slti $4, $3, 15
bne $4, $4, TAG322
srlv $1, $1, $4
TAG322:
lui $2, 10
sll $0, $0, 0
xor $3, $2, $1
mthi $1
TAG323:
sll $0, $0, 0
bltz $3, TAG324
mfhi $1
divu $1, $3
TAG324:
lui $2, 14
srlv $2, $1, $1
bne $2, $2, TAG325
mtlo $2
TAG325:
div $2, $2
div $2, $2
mult $2, $2
mult $2, $2
TAG326:
mthi $2
lui $2, 12
beq $2, $2, TAG327
slt $3, $2, $2
TAG327:
lhu $3, 0($3)
mult $3, $3
bltz $3, TAG328
lui $1, 6
TAG328:
mfhi $4
srl $3, $4, 5
bgez $1, TAG329
mthi $1
TAG329:
sll $2, $3, 9
bltz $3, TAG330
lui $3, 3
lui $3, 0
TAG330:
mtlo $3
lui $1, 5
mtlo $3
sh $3, 0($3)
TAG331:
sll $0, $0, 0
addu $1, $1, $2
blez $1, TAG332
divu $2, $1
TAG332:
slt $2, $1, $1
sw $2, 0($2)
beq $2, $1, TAG333
lui $3, 3
TAG333:
mult $3, $3
div $3, $3
srl $4, $3, 10
mthi $4
TAG334:
or $3, $4, $4
bgez $4, TAG335
mtlo $4
mfhi $1
TAG335:
lui $1, 9
mflo $1
bltz $1, TAG336
nor $2, $1, $1
TAG336:
sltu $2, $2, $2
sb $2, 0($2)
srl $4, $2, 3
lui $2, 15
TAG337:
bne $2, $2, TAG338
lui $3, 2
lui $2, 8
sll $0, $0, 0
TAG338:
sltiu $1, $2, 6
sll $0, $0, 0
lhu $1, 0($1)
beq $1, $1, TAG339
TAG339:
mult $1, $1
beq $1, $1, TAG340
mfhi $2
lb $4, 0($1)
TAG340:
bgtz $4, TAG341
sllv $1, $4, $4
mthi $1
lui $3, 6
TAG341:
andi $4, $3, 6
sll $0, $0, 0
beq $3, $3, TAG342
sll $0, $0, 0
TAG342:
bgez $1, TAG343
mfhi $4
sh $4, 0($4)
sh $4, 0($1)
TAG343:
mult $4, $4
addu $4, $4, $4
multu $4, $4
sw $4, 0($4)
TAG344:
lbu $2, 0($4)
bgez $4, TAG345
lbu $4, 0($4)
mtlo $4
TAG345:
andi $1, $4, 13
bne $4, $1, TAG346
mfhi $2
blez $2, TAG346
TAG346:
sh $2, 0($2)
multu $2, $2
xori $1, $2, 6
mfhi $1
TAG347:
andi $1, $1, 10
ori $2, $1, 13
mflo $2
bne $1, $1, TAG348
TAG348:
lb $1, 0($2)
ori $2, $1, 14
sh $2, 0($1)
srl $2, $2, 13
TAG349:
bltz $2, TAG350
mtlo $2
bne $2, $2, TAG350
lui $3, 10
TAG350:
bltz $3, TAG351
lui $2, 6
mtlo $2
blez $3, TAG351
TAG351:
or $3, $2, $2
div $2, $2
sll $0, $0, 0
mflo $3
TAG352:
div $3, $3
beq $3, $3, TAG353
srl $2, $3, 6
srl $2, $2, 9
TAG353:
mtlo $2
mtlo $2
blez $2, TAG354
multu $2, $2
TAG354:
sll $2, $2, 9
lui $1, 3
lui $1, 5
lb $4, 0($2)
TAG355:
bgtz $4, TAG356
sra $4, $4, 5
mtlo $4
lbu $4, 0($4)
TAG356:
beq $4, $4, TAG357
mult $4, $4
addu $4, $4, $4
lui $4, 15
TAG357:
lb $2, 0($4)
beq $2, $2, TAG358
lui $3, 0
beq $2, $3, TAG358
TAG358:
multu $3, $3
beq $3, $3, TAG359
lh $4, 0($3)
divu $4, $4
TAG359:
mtlo $4
mtlo $4
sh $4, 0($4)
lui $1, 8
TAG360:
srl $3, $1, 6
mtlo $1
sll $0, $0, 0
xori $1, $3, 15
TAG361:
mult $1, $1
sh $1, -8207($1)
sra $4, $1, 10
lh $4, 0($4)
TAG362:
div $4, $4
sb $4, 0($4)
mult $4, $4
lui $4, 13
TAG363:
or $4, $4, $4
blez $4, TAG364
sll $0, $0, 0
sll $0, $0, 0
TAG364:
sll $0, $0, 0
bgez $4, TAG365
sll $0, $0, 0
lw $2, 0($4)
TAG365:
bgtz $2, TAG366
sll $3, $2, 7
mult $3, $3
lb $1, 0($2)
TAG366:
slti $4, $1, 5
nor $1, $4, $1
sb $4, 8208($1)
sh $4, 8208($1)
TAG367:
mfhi $3
sltu $3, $3, $3
mtlo $3
mfhi $4
TAG368:
srl $3, $4, 15
sll $1, $4, 1
sw $4, 0($3)
beq $4, $4, TAG369
TAG369:
sw $1, 0($1)
sh $1, 0($1)
sh $1, 0($1)
lh $3, 0($1)
TAG370:
lb $2, 0($3)
slt $4, $3, $3
bgez $4, TAG371
mthi $4
TAG371:
and $2, $4, $4
and $1, $4, $2
addi $4, $1, 9
mthi $1
TAG372:
mfhi $1
lui $2, 1
blez $1, TAG373
multu $4, $1
TAG373:
bne $2, $2, TAG374
mfhi $1
slti $3, $2, 3
beq $2, $3, TAG374
TAG374:
srav $2, $3, $3
mult $3, $3
mult $2, $2
mult $2, $3
TAG375:
sub $3, $2, $2
lbu $2, 0($3)
mthi $3
blez $3, TAG376
TAG376:
lui $1, 10
slt $1, $2, $1
mtlo $1
lui $1, 9
TAG377:
sltu $2, $1, $1
lhu $4, 0($2)
blez $1, TAG378
multu $2, $4
TAG378:
mflo $4
lw $4, 0($4)
bne $4, $4, TAG379
sra $1, $4, 0
TAG379:
mfhi $2
mtlo $2
subu $1, $1, $2
sb $1, 0($1)
TAG380:
multu $1, $1
lui $1, 5
lui $1, 12
srl $1, $1, 12
TAG381:
addiu $2, $1, 3
bne $1, $2, TAG382
subu $3, $1, $2
divu $1, $3
TAG382:
subu $2, $3, $3
mfhi $2
lw $4, 0($2)
beq $2, $4, TAG383
TAG383:
sb $4, 0($4)
sltiu $2, $4, 12
lbu $1, 0($4)
lui $1, 14
TAG384:
divu $1, $1
mtlo $1
addu $1, $1, $1
mfhi $3
TAG385:
mflo $1
mult $1, $1
bgtz $3, TAG386
lh $4, 0($3)
TAG386:
sll $2, $4, 13
mflo $4
xori $4, $2, 7
sb $4, 0($4)
TAG387:
bgez $4, TAG388
sllv $3, $4, $4
lui $1, 2
lui $3, 12
TAG388:
blez $3, TAG389
xori $2, $3, 12
andi $1, $2, 0
and $4, $1, $3
TAG389:
sw $4, 0($4)
mflo $4
mtlo $4
multu $4, $4
TAG390:
sltu $2, $4, $4
addu $3, $2, $2
sltiu $3, $3, 9
slti $2, $2, 13
TAG391:
div $2, $2
lbu $4, 0($2)
mfhi $3
lhu $4, 0($4)
TAG392:
mflo $3
bgez $3, TAG393
andi $1, $3, 8
srl $1, $4, 5
TAG393:
mthi $1
mult $1, $1
mflo $1
lui $3, 0
TAG394:
lui $4, 9
mflo $1
andi $1, $1, 5
multu $4, $1
TAG395:
multu $1, $1
lhu $4, 0($1)
subu $3, $4, $4
mult $4, $3
TAG396:
mflo $1
bne $3, $3, TAG397
mfhi $2
blez $1, TAG397
TAG397:
multu $2, $2
mthi $2
sw $2, 0($2)
mflo $2
TAG398:
xor $3, $2, $2
mtlo $3
bne $3, $3, TAG399
mflo $1
TAG399:
mtlo $1
bgez $1, TAG400
lui $1, 0
lui $3, 11
TAG400:
multu $3, $3
and $4, $3, $3
multu $4, $3
mfhi $4
TAG401:
sll $2, $4, 2
sw $2, 0($2)
slt $4, $2, $4
bltz $4, TAG402
TAG402:
mfhi $1
bltz $1, TAG403
sw $4, 0($1)
nor $1, $4, $4
TAG403:
sllv $3, $1, $1
divu $1, $3
blez $1, TAG404
or $4, $3, $3
TAG404:
multu $4, $4
xori $1, $4, 5
andi $4, $1, 1
mthi $4
TAG405:
subu $3, $4, $4
bgez $4, TAG406
mflo $1
blez $1, TAG406
TAG406:
srlv $1, $1, $1
lbu $2, 0($1)
bgtz $1, TAG407
lbu $2, 0($1)
TAG407:
lbu $3, 0($2)
beq $3, $2, TAG408
lh $4, 0($2)
mtlo $2
TAG408:
multu $4, $4
mfhi $2
lb $2, 0($2)
sw $2, 0($4)
TAG409:
sw $2, 0($2)
mtlo $2
mflo $1
mtlo $1
TAG410:
sb $1, 0($1)
beq $1, $1, TAG411
sh $1, 0($1)
lb $4, 0($1)
TAG411:
mthi $4
mult $4, $4
sw $4, 0($4)
add $1, $4, $4
TAG412:
sh $1, 0($1)
ori $4, $1, 6
beq $1, $1, TAG413
sh $1, 0($1)
TAG413:
lbu $4, 0($4)
mult $4, $4
multu $4, $4
mthi $4
TAG414:
slt $3, $4, $4
mflo $2
mtlo $4
sll $4, $2, 5
TAG415:
srlv $2, $4, $4
bne $4, $4, TAG416
lui $2, 6
multu $2, $2
TAG416:
mult $2, $2
div $2, $2
bne $2, $2, TAG417
mtlo $2
TAG417:
divu $2, $2
sll $0, $0, 0
mfhi $2
beq $2, $2, TAG418
TAG418:
sw $2, 0($2)
bne $2, $2, TAG419
mthi $2
andi $2, $2, 14
TAG419:
bne $2, $2, TAG420
sb $2, 0($2)
bne $2, $2, TAG420
sw $2, 0($2)
TAG420:
lui $3, 7
bgtz $2, TAG421
mtlo $3
divu $2, $3
TAG421:
lui $3, 12
mflo $2
lui $4, 12
mult $2, $4
TAG422:
subu $2, $4, $4
sll $1, $4, 10
mtlo $4
nor $2, $4, $4
TAG423:
mthi $2
and $1, $2, $2
lui $4, 9
bgez $4, TAG424
TAG424:
lui $1, 15
ori $2, $1, 7
mult $4, $1
mflo $1
TAG425:
multu $1, $1
sw $1, 0($1)
lui $1, 8
sll $0, $0, 0
TAG426:
bgez $1, TAG427
divu $1, $1
sh $1, 0($1)
sb $1, 0($1)
TAG427:
srav $2, $1, $1
divu $1, $2
sltu $1, $1, $1
lui $2, 2
TAG428:
beq $2, $2, TAG429
lui $3, 12
bltz $3, TAG429
mfhi $4
TAG429:
div $4, $4
bne $4, $4, TAG430
mflo $1
sll $0, $0, 0
TAG430:
mtlo $3
sll $0, $0, 0
lui $4, 7
bne $3, $3, TAG431
TAG431:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
addiu $3, $4, 0
TAG432:
lui $2, 12
sll $0, $0, 0
bne $2, $2, TAG433
mtlo $2
TAG433:
lui $1, 6
divu $1, $1
blez $1, TAG434
mflo $1
TAG434:
lui $4, 15
lb $1, 0($1)
mflo $2
ori $2, $2, 15
TAG435:
sb $2, 0($2)
mfhi $3
slti $2, $3, 13
lui $1, 3
TAG436:
sll $0, $0, 0
sll $0, $0, 0
subu $1, $1, $4
sll $0, $0, 0
TAG437:
ori $2, $1, 12
mfhi $4
lui $4, 6
beq $2, $2, TAG438
TAG438:
sll $0, $0, 0
addiu $1, $4, 7
srl $4, $4, 1
sll $0, $0, 0
TAG439:
mflo $3
sltiu $3, $4, 5
div $4, $4
lh $3, 0($3)
TAG440:
mtlo $3
lui $2, 9
bne $2, $2, TAG441
mtlo $2
TAG441:
bltz $2, TAG442
andi $2, $2, 10
mflo $4
bne $2, $4, TAG442
TAG442:
mult $4, $4
bne $4, $4, TAG443
lui $1, 14
sll $0, $0, 0
TAG443:
sra $3, $1, 13
sb $1, 0($3)
sll $0, $0, 0
sll $0, $0, 0
TAG444:
bgez $4, TAG445
sll $4, $4, 6
bgtz $4, TAG445
lui $3, 5
TAG445:
mflo $3
mfhi $1
or $4, $3, $1
beq $4, $3, TAG446
TAG446:
xor $2, $4, $4
lui $4, 0
srl $2, $2, 1
mflo $1
TAG447:
multu $1, $1
lui $2, 8
divu $1, $2
bne $2, $1, TAG448
TAG448:
addu $1, $2, $2
addiu $3, $2, 0
div $2, $2
sll $0, $0, 0
TAG449:
mtlo $1
mtlo $1
lui $1, 6
sll $0, $0, 0
TAG450:
lui $2, 3
mthi $2
lui $2, 11
sra $2, $1, 4
TAG451:
mfhi $3
blez $3, TAG452
lui $3, 13
mflo $1
TAG452:
mthi $1
mthi $1
mfhi $3
sll $0, $0, 0
TAG453:
srav $1, $3, $3
bne $1, $3, TAG454
div $1, $1
div $3, $1
TAG454:
slt $4, $1, $1
multu $1, $1
mfhi $4
srlv $3, $4, $1
TAG455:
lui $1, 3
mtlo $3
sll $0, $0, 0
xori $4, $3, 10
TAG456:
lui $4, 13
mtlo $4
mtlo $4
and $3, $4, $4
TAG457:
div $3, $3
sltu $2, $3, $3
sh $2, 0($2)
srav $3, $3, $3
TAG458:
or $3, $3, $3
mflo $4
mtlo $3
sllv $4, $4, $4
TAG459:
addiu $3, $4, 8
lui $2, 6
srav $4, $4, $3
nor $3, $4, $3
TAG460:
bgtz $3, TAG461
srl $3, $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG461:
sll $0, $0, 0
addu $3, $1, $1
sll $0, $0, 0
xor $3, $1, $1
TAG462:
bltz $3, TAG463
addi $1, $3, 12
lh $3, 0($1)
mtlo $3
TAG463:
bgez $3, TAG464
or $3, $3, $3
lui $3, 4
sh $3, 0($3)
TAG464:
mflo $2
and $3, $2, $2
sltu $2, $3, $3
mfhi $2
TAG465:
lui $2, 2
blez $2, TAG466
lui $4, 14
sll $0, $0, 0
TAG466:
mflo $4
sltu $3, $4, $4
srav $2, $4, $4
mthi $2
TAG467:
bltz $2, TAG468
lui $4, 0
addu $4, $2, $4
xor $3, $4, $4
TAG468:
lui $3, 0
lw $4, 0($3)
mult $3, $3
lw $1, 0($3)
TAG469:
and $4, $1, $1
mtlo $4
xori $1, $4, 11
multu $1, $4
TAG470:
mult $1, $1
lb $3, 0($1)
bgez $1, TAG471
sb $3, 0($1)
TAG471:
bne $3, $3, TAG472
mflo $4
lui $1, 1
sll $0, $0, 0
TAG472:
bltz $1, TAG473
sll $0, $0, 0
sll $0, $0, 0
xori $1, $1, 2
TAG473:
sll $0, $0, 0
beq $1, $1, TAG474
divu $1, $1
bgez $1, TAG474
TAG474:
multu $1, $1
beq $1, $1, TAG475
divu $1, $1
mflo $2
TAG475:
bltz $2, TAG476
lh $3, 0($2)
xori $3, $3, 6
mfhi $2
TAG476:
bne $2, $2, TAG477
lb $4, 0($2)
lui $4, 12
multu $4, $2
TAG477:
sra $3, $4, 4
mthi $4
xori $4, $4, 9
sll $0, $0, 0
TAG478:
multu $4, $4
sll $0, $0, 0
blez $4, TAG479
sll $0, $0, 0
TAG479:
bltz $4, TAG480
sll $0, $0, 0
mflo $4
bne $4, $4, TAG480
TAG480:
mthi $4
srav $3, $4, $4
mfhi $3
mtlo $3
TAG481:
mult $3, $3
mtlo $3
bgez $3, TAG482
sll $0, $0, 0
TAG482:
bgtz $3, TAG483
mult $3, $3
sw $3, 0($3)
mfhi $1
TAG483:
blez $1, TAG484
divu $1, $1
lui $2, 4
mfhi $4
TAG484:
mthi $4
multu $4, $4
lhu $4, 0($4)
addiu $3, $4, 1
TAG485:
bltz $3, TAG486
addiu $1, $3, 2
lui $3, 11
lbu $4, 0($1)
TAG486:
slt $2, $4, $4
bgez $2, TAG487
mtlo $4
mfhi $2
TAG487:
addu $2, $2, $2
lui $3, 8
lb $2, 0($2)
divu $2, $3
TAG488:
mtlo $2
mfhi $3
bgez $3, TAG489
lui $2, 14
TAG489:
lui $1, 1
mflo $4
mthi $4
addu $1, $2, $2
TAG490:
mthi $1
addiu $2, $1, 12
slti $4, $1, 2
bgez $2, TAG491
TAG491:
sb $4, 0($4)
sll $2, $4, 1
bgtz $2, TAG492
mfhi $3
TAG492:
lui $4, 4
nor $3, $4, $3
bgtz $3, TAG493
lui $1, 14
TAG493:
lui $1, 13
sll $0, $0, 0
bgez $3, TAG494
sll $0, $0, 0
TAG494:
div $3, $3
lui $4, 4
multu $3, $3
mthi $3
TAG495:
div $4, $4
lui $1, 1
xor $1, $4, $4
lb $4, 0($1)
TAG496:
multu $4, $4
mult $4, $4
lui $3, 15
mflo $1
TAG497:
beq $1, $1, TAG498
mthi $1
mtlo $1
srl $1, $1, 0
TAG498:
mfhi $3
bgez $3, TAG499
lui $3, 0
mtlo $1
TAG499:
sb $3, 0($3)
and $2, $3, $3
bgez $3, TAG500
lb $2, 0($2)
TAG500:
ori $4, $2, 1
bne $2, $4, TAG501
lbu $4, 0($2)
bgtz $4, TAG501
TAG501:
mthi $4
srl $1, $4, 5
sh $4, 0($4)
bltz $1, TAG502
TAG502:
lui $4, 4
lbu $4, 0($1)
beq $1, $4, TAG503
lui $4, 12
TAG503:
sll $0, $0, 0
lui $3, 11
lui $3, 14
divu $3, $3
TAG504:
bltz $3, TAG505
lui $3, 6
beq $3, $3, TAG505
mtlo $3
TAG505:
sll $0, $0, 0
mflo $1
lui $2, 7
xori $3, $2, 7
TAG506:
lui $1, 3
lui $3, 3
mthi $3
sll $0, $0, 0
TAG507:
lui $1, 10
srl $2, $1, 13
beq $3, $2, TAG508
lui $4, 4
TAG508:
bgtz $4, TAG509
sll $0, $0, 0
sb $4, 0($2)
mfhi $2
TAG509:
mflo $3
div $2, $2
lui $1, 2
mult $1, $2
TAG510:
mflo $1
mult $1, $1
addiu $2, $1, 6
mthi $1
TAG511:
sll $0, $0, 0
addu $2, $2, $2
bne $2, $2, TAG512
sll $0, $0, 0
TAG512:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG513
lui $2, 3
TAG513:
lui $1, 7
bgtz $1, TAG514
mflo $1
lhu $3, 0($1)
TAG514:
sll $0, $0, 0
mthi $3
div $2, $2
srl $4, $3, 14
TAG515:
bltz $4, TAG516
lw $1, 0($4)
mflo $4
bne $4, $4, TAG516
TAG516:
sb $4, 0($4)
mfhi $3
sb $4, 0($3)
sh $4, 0($3)
TAG517:
mtlo $3
srl $3, $3, 7
sll $1, $3, 10
lh $2, 0($1)
TAG518:
mfhi $1
and $1, $1, $2
xori $3, $1, 13
lui $3, 12
TAG519:
bgez $3, TAG520
sll $0, $0, 0
addi $2, $3, 12
lui $4, 13
TAG520:
lui $1, 2
sb $4, 0($4)
and $1, $1, $4
sra $4, $1, 7
TAG521:
mflo $1
sltiu $2, $4, 8
sltiu $3, $2, 12
addiu $2, $3, 5
TAG522:
divu $2, $2
lui $1, 4
sh $2, 0($2)
subu $1, $2, $2
TAG523:
mtlo $1
multu $1, $1
mflo $2
lui $4, 8
TAG524:
bne $4, $4, TAG525
mtlo $4
mfhi $1
bne $1, $1, TAG525
TAG525:
mult $1, $1
srl $2, $1, 0
mthi $2
sra $1, $1, 6
TAG526:
sb $1, 0($1)
lui $4, 6
mtlo $4
lui $1, 9
TAG527:
mflo $1
lui $1, 1
bltz $1, TAG528
sra $2, $1, 4
TAG528:
mfhi $2
lh $2, 0($2)
lui $1, 5
blez $2, TAG529
TAG529:
mtlo $1
addu $2, $1, $1
lui $1, 7
or $3, $2, $1
TAG530:
mfhi $1
lui $2, 2
sll $0, $0, 0
ori $3, $1, 14
TAG531:
mult $3, $3
div $3, $3
lui $4, 12
slt $1, $4, $4
TAG532:
sh $1, 0($1)
lb $2, 0($1)
multu $2, $1
mflo $1
TAG533:
sh $1, 0($1)
multu $1, $1
lui $2, 9
mthi $1
TAG534:
or $1, $2, $2
ori $2, $1, 5
sll $0, $0, 0
sll $0, $0, 0
TAG535:
mtlo $3
lh $3, 0($3)
lui $1, 11
mfhi $3
TAG536:
xor $3, $3, $3
srav $3, $3, $3
bgtz $3, TAG537
lui $1, 1
TAG537:
sll $0, $0, 0
or $4, $1, $1
mtlo $4
mthi $1
TAG538:
divu $4, $4
addiu $4, $4, 8
mfhi $4
lui $2, 6
TAG539:
mthi $2
bltz $2, TAG540
mtlo $2
sll $0, $0, 0
TAG540:
bgez $4, TAG541
sll $3, $4, 3
lui $2, 4
srlv $3, $3, $2
TAG541:
sw $3, 0($3)
addi $1, $3, 2
addi $1, $3, 10
beq $1, $1, TAG542
TAG542:
sltu $3, $1, $1
divu $3, $1
sh $1, 0($3)
bltz $3, TAG543
TAG543:
lui $2, 1
lbu $3, 0($3)
multu $3, $2
lh $4, 0($3)
TAG544:
multu $4, $4
srlv $4, $4, $4
lui $2, 6
bgtz $4, TAG545
TAG545:
addiu $4, $2, 15
or $4, $2, $4
sll $0, $0, 0
lui $2, 0
TAG546:
mult $2, $2
lui $2, 2
mtlo $2
lui $2, 8
TAG547:
mflo $2
mflo $4
mtlo $2
sll $0, $0, 0
TAG548:
mthi $1
sltiu $2, $1, 2
sllv $1, $2, $1
add $1, $1, $1
TAG549:
mult $1, $1
sh $1, 0($1)
lh $3, 0($1)
bgez $3, TAG550
TAG550:
sw $3, 0($3)
mflo $2
beq $3, $2, TAG551
multu $2, $3
TAG551:
sh $2, 0($2)
lh $2, 0($2)
xor $4, $2, $2
lbu $3, 0($4)
TAG552:
beq $3, $3, TAG553
lui $4, 2
sw $4, 0($3)
bne $3, $4, TAG553
TAG553:
lui $3, 7
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG554:
beq $1, $1, TAG555
lui $4, 11
beq $4, $1, TAG555
sltu $1, $1, $1
TAG555:
sll $2, $1, 13
blez $2, TAG556
sb $2, 0($1)
slt $3, $1, $1
TAG556:
sll $0, $0, 0
mtlo $3
mtlo $3
mtlo $3
TAG557:
beq $3, $3, TAG558
sltiu $4, $3, 4
ori $1, $3, 13
sub $3, $1, $4
TAG558:
divu $3, $3
bltz $3, TAG559
sll $0, $0, 0
sltiu $3, $3, 12
TAG559:
lw $1, 0($3)
sw $3, 0($3)
lb $3, 0($1)
blez $3, TAG560
TAG560:
ori $1, $3, 9
lbu $4, 0($1)
mfhi $3
beq $4, $3, TAG561
TAG561:
mtlo $3
mthi $3
slti $1, $3, 4
bgtz $3, TAG562
TAG562:
lui $1, 11
sll $2, $1, 9
mult $1, $1
srl $2, $2, 12
TAG563:
mthi $2
slti $1, $2, 15
lb $3, 0($1)
mtlo $3
TAG564:
slti $3, $3, 13
multu $3, $3
lui $2, 10
mfhi $2
TAG565:
multu $2, $2
mthi $2
mthi $2
blez $2, TAG566
TAG566:
addiu $3, $2, 13
mflo $1
bne $3, $1, TAG567
mthi $1
TAG567:
blez $1, TAG568
mtlo $1
sw $1, 0($1)
lui $1, 13
TAG568:
multu $1, $1
mfhi $2
lhu $2, 0($1)
sb $2, 0($2)
TAG569:
mthi $2
beq $2, $2, TAG570
lhu $1, 0($2)
srav $1, $1, $2
TAG570:
mfhi $3
sll $2, $1, 14
mtlo $1
mthi $1
TAG571:
mult $2, $2
sltiu $4, $2, 13
mtlo $4
bne $4, $2, TAG572
TAG572:
lb $2, 0($4)
bne $2, $4, TAG573
multu $2, $2
slt $2, $2, $2
TAG573:
mflo $4
lh $2, 0($4)
or $4, $2, $2
bgtz $2, TAG574
TAG574:
multu $4, $4
lui $3, 7
xor $4, $4, $4
multu $4, $3
TAG575:
sh $4, 0($4)
sb $4, 0($4)
lh $3, 0($4)
mult $4, $4
TAG576:
mthi $3
sra $1, $3, 5
blez $1, TAG577
nor $4, $3, $1
TAG577:
sh $4, 1($4)
mthi $4
lui $4, 15
div $4, $4
TAG578:
lui $2, 1
sll $0, $0, 0
mult $4, $2
sll $0, $0, 0
TAG579:
lui $2, 12
srl $3, $2, 3
beq $2, $2, TAG580
mthi $3
TAG580:
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
beq $3, $3, TAG581
TAG581:
multu $3, $3
beq $3, $3, TAG582
sll $0, $0, 0
mthi $3
TAG582:
sll $0, $0, 0
bne $2, $2, TAG583
lui $4, 1
bne $4, $2, TAG583
TAG583:
sll $0, $0, 0
lui $2, 15
sltiu $4, $4, 14
multu $2, $4
TAG584:
slt $1, $4, $4
mtlo $4
beq $4, $4, TAG585
mthi $1
TAG585:
beq $1, $1, TAG586
and $4, $1, $1
lui $2, 11
bne $1, $1, TAG586
TAG586:
divu $2, $2
mthi $2
subu $3, $2, $2
bne $3, $2, TAG587
TAG587:
nor $1, $3, $3
sw $3, 1($1)
bltz $1, TAG588
sllv $2, $1, $3
TAG588:
mfhi $4
sll $0, $0, 0
lui $2, 11
divu $2, $2
TAG589:
bne $2, $2, TAG590
mult $2, $2
multu $2, $2
mtlo $2
TAG590:
sll $0, $0, 0
lui $4, 7
mflo $2
bltz $2, TAG591
TAG591:
addiu $4, $2, 11
sll $0, $0, 0
srlv $1, $2, $4
lh $4, -352($1)
TAG592:
mult $4, $4
mfhi $2
sw $4, 0($2)
mflo $2
TAG593:
srlv $2, $2, $2
sw $2, 0($2)
mfhi $3
sb $2, 0($3)
TAG594:
multu $3, $3
mflo $2
mthi $2
beq $2, $3, TAG595
TAG595:
lb $3, 0($2)
mult $3, $2
lbu $4, 0($2)
bgtz $3, TAG596
TAG596:
mfhi $3
multu $3, $4
lui $3, 8
lbu $3, 0($4)
TAG597:
mfhi $4
multu $4, $3
sh $4, 0($4)
sh $3, 0($4)
TAG598:
lui $3, 11
lui $1, 8
sb $4, 0($4)
bne $4, $3, TAG599
TAG599:
mfhi $2
mtlo $2
and $3, $1, $2
mflo $4
TAG600:
sh $4, 0($4)
bne $4, $4, TAG601
multu $4, $4
bne $4, $4, TAG601
TAG601:
mult $4, $4
lh $3, 0($4)
beq $4, $4, TAG602
sra $3, $3, 6
TAG602:
mult $3, $3
sh $3, 0($3)
mtlo $3
lw $1, 0($3)
TAG603:
mult $1, $1
mflo $2
lb $1, 0($2)
lw $1, 0($1)
TAG604:
sh $1, 0($1)
mthi $1
bgtz $1, TAG605
mflo $3
TAG605:
sra $4, $3, 7
sra $2, $4, 15
lbu $3, 0($2)
lui $1, 14
TAG606:
bne $1, $1, TAG607
sll $0, $0, 0
add $3, $2, $1
mthi $1
TAG607:
lui $4, 5
addiu $1, $3, 3
sll $0, $0, 0
mthi $4
TAG608:
mult $1, $1
mtlo $1
sllv $1, $1, $1
mfhi $4
TAG609:
sll $0, $0, 0
sh $4, -196($4)
bne $4, $3, TAG610
sw $4, -196($4)
TAG610:
lui $1, 4
mflo $1
mtlo $1
mtlo $1
TAG611:
andi $1, $1, 9
sllv $3, $1, $1
lui $2, 14
bgez $3, TAG612
TAG612:
mtlo $2
mtlo $2
bltz $2, TAG613
xori $4, $2, 12
TAG613:
srav $3, $4, $4
mflo $3
multu $3, $3
divu $3, $3
TAG614:
bltz $3, TAG615
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
TAG615:
mtlo $1
mthi $1
lb $1, 0($1)
lui $3, 3
TAG616:
mflo $2
sb $3, 0($2)
mult $2, $2
lui $4, 2
TAG617:
addu $2, $4, $4
srav $3, $4, $4
lui $1, 11
mthi $2
TAG618:
sll $0, $0, 0
mtlo $1
subu $3, $1, $1
slti $1, $1, 0
TAG619:
srl $2, $1, 0
lui $1, 12
slt $3, $1, $2
divu $2, $1
TAG620:
nor $2, $3, $3
sltiu $1, $3, 8
bgtz $2, TAG621
sw $1, 1($2)
TAG621:
blez $1, TAG622
lb $4, 0($1)
lh $2, 0($4)
slt $4, $2, $4
TAG622:
multu $4, $4
lhu $2, 0($4)
mflo $4
slt $1, $2, $4
TAG623:
xori $4, $1, 7
xori $3, $4, 13
bne $4, $1, TAG624
lhu $3, 0($3)
TAG624:
lw $1, 0($3)
multu $1, $1
addiu $2, $3, 6
lbu $4, 0($1)
TAG625:
bgez $4, TAG626
lui $4, 8
mfhi $2
bgez $2, TAG626
TAG626:
lb $4, 0($2)
subu $3, $2, $4
divu $3, $4
lb $4, 0($4)
TAG627:
lui $4, 8
bltz $4, TAG628
multu $4, $4
beq $4, $4, TAG628
TAG628:
lui $1, 0
xori $4, $4, 3
sw $1, 0($1)
mfhi $1
TAG629:
sh $1, 0($1)
beq $1, $1, TAG630
divu $1, $1
bltz $1, TAG630
TAG630:
sh $1, 0($1)
srav $4, $1, $1
nor $3, $1, $4
div $1, $4
TAG631:
lui $4, 8
bgtz $3, TAG632
sb $3, 65($3)
lui $4, 7
TAG632:
mfhi $2
bgez $4, TAG633
sll $0, $0, 0
mthi $1
TAG633:
bne $1, $1, TAG634
mthi $1
lw $2, 0($1)
mfhi $4
TAG634:
sw $4, 0($4)
mtlo $4
mfhi $4
sh $4, 0($4)
TAG635:
lh $3, 0($4)
sltu $4, $3, $4
ori $3, $3, 10
multu $4, $4
TAG636:
sra $4, $3, 6
sb $4, 0($4)
bgtz $3, TAG637
multu $3, $4
TAG637:
nor $4, $4, $4
subu $3, $4, $4
bne $4, $4, TAG638
mthi $3
TAG638:
bne $3, $3, TAG639
lhu $1, 0($3)
sb $1, -447($1)
srav $2, $1, $3
TAG639:
lui $4, 11
andi $2, $4, 2
ori $2, $4, 1
mflo $2
TAG640:
lh $2, 0($2)
lbu $2, 0($2)
blez $2, TAG641
sb $2, -191($2)
TAG641:
bgez $2, TAG642
lhu $2, -191($2)
lb $1, 0($2)
bgtz $1, TAG642
TAG642:
lui $1, 6
bne $1, $1, TAG643
mthi $1
subu $4, $1, $1
TAG643:
bgtz $4, TAG644
lbu $2, 0($4)
blez $4, TAG644
lw $4, -191($2)
TAG644:
mfhi $3
sw $3, -447($4)
or $2, $3, $3
lui $4, 12
TAG645:
bgtz $4, TAG646
xori $4, $4, 1
bne $4, $4, TAG646
mfhi $4
TAG646:
lui $1, 4
mthi $1
beq $1, $1, TAG647
div $4, $1
TAG647:
xori $1, $1, 15
srav $2, $1, $1
lui $4, 1
addiu $3, $1, 6
TAG648:
mthi $3
sll $0, $0, 0
bne $2, $3, TAG649
srlv $2, $2, $2
TAG649:
lh $2, 0($2)
mtlo $2
lui $3, 6
mtlo $2
TAG650:
lui $4, 3
blez $4, TAG651
mflo $2
srav $1, $2, $3
TAG651:
mtlo $1
sw $1, 0($1)
lw $4, 0($1)
blez $1, TAG652
TAG652:
mtlo $4
mthi $4
addiu $4, $4, 1
mfhi $4
TAG653:
bne $4, $4, TAG654
addi $2, $4, 4
bne $4, $4, TAG654
lbu $4, 0($2)
TAG654:
mflo $4
mflo $1
bltz $1, TAG655
xor $1, $4, $1
TAG655:
blez $1, TAG656
mfhi $2
mult $2, $1
lui $2, 10
TAG656:
lb $4, 0($2)
sra $1, $4, 13
mtlo $1
lw $4, 0($2)
TAG657:
srl $4, $4, 7
mflo $4
lui $1, 3
sw $4, 0($4)
TAG658:
sll $0, $0, 0
mult $1, $1
bne $1, $1, TAG659
mthi $1
TAG659:
mfhi $1
xori $2, $1, 3
bltz $1, TAG660
div $2, $1
TAG660:
or $1, $2, $2
subu $4, $2, $2
lw $3, 0($4)
mtlo $1
TAG661:
lui $3, 0
mult $3, $3
lui $3, 15
lui $3, 1
TAG662:
blez $3, TAG663
mfhi $1
sll $0, $0, 0
mflo $4
TAG663:
subu $3, $4, $4
beq $4, $4, TAG664
addi $2, $4, 15
sllv $4, $4, $3
TAG664:
mult $4, $4
lui $2, 9
srl $2, $2, 9
sb $4, 0($4)
TAG665:
bne $2, $2, TAG666
sb $2, -1152($2)
bgez $2, TAG666
sw $2, -1152($2)
TAG666:
divu $2, $2
beq $2, $2, TAG667
lui $3, 9
srav $3, $3, $2
TAG667:
mthi $3
nor $4, $3, $3
beq $3, $3, TAG668
mfhi $4
TAG668:
blez $4, TAG669
lui $2, 0
mflo $2
bne $2, $2, TAG669
TAG669:
mtlo $2
beq $2, $2, TAG670
mflo $3
bne $3, $2, TAG670
TAG670:
slti $2, $3, 11
lb $2, 0($3)
sltu $4, $2, $2
sb $4, 0($3)
TAG671:
mthi $4
slti $2, $4, 14
mfhi $3
mult $2, $2
TAG672:
multu $3, $3
mflo $4
mthi $3
sub $3, $3, $3
TAG673:
lui $3, 0
bne $3, $3, TAG674
lh $2, 0($3)
bltz $3, TAG674
TAG674:
sltiu $1, $2, 8
bgez $2, TAG675
divu $1, $2
and $1, $1, $1
TAG675:
bgtz $1, TAG676
sltiu $1, $1, 1
mtlo $1
subu $4, $1, $1
TAG676:
lh $3, 0($4)
slti $2, $3, 1
beq $4, $2, TAG677
mtlo $4
TAG677:
mthi $2
mthi $2
multu $2, $2
multu $2, $2
TAG678:
mflo $4
mtlo $4
multu $2, $2
mflo $1
TAG679:
multu $1, $1
xori $2, $1, 9
mfhi $3
bgtz $2, TAG680
TAG680:
mthi $3
mthi $3
sw $3, 0($3)
lw $2, 0($3)
TAG681:
mtlo $2
lh $1, 0($2)
lb $2, 0($1)
mtlo $2
TAG682:
lui $3, 12
mfhi $3
mfhi $2
sw $3, 0($2)
TAG683:
beq $2, $2, TAG684
sb $2, 0($2)
bgtz $2, TAG684
mflo $1
TAG684:
sh $1, 0($1)
lui $1, 4
bne $1, $1, TAG685
lui $2, 10
TAG685:
sll $0, $0, 0
beq $2, $2, TAG686
sll $0, $0, 0
sub $4, $2, $2
TAG686:
mflo $3
lb $2, 0($4)
lui $4, 8
multu $3, $3
TAG687:
lui $3, 8
bne $4, $3, TAG688
multu $3, $3
sll $0, $0, 0
TAG688:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
sllv $4, $1, $1
TAG689:
sll $0, $0, 0
multu $4, $4
sra $2, $4, 3
sll $0, $0, 0
TAG690:
bne $4, $4, TAG691
mthi $4
beq $4, $4, TAG691
mfhi $4
TAG691:
mfhi $4
blez $4, TAG692
mflo $3
beq $4, $3, TAG692
TAG692:
mult $3, $3
sw $3, 0($3)
mfhi $3
multu $3, $3
TAG693:
sb $3, 0($3)
and $4, $3, $3
mfhi $4
sll $1, $3, 12
TAG694:
sh $1, 0($1)
sw $1, 0($1)
lb $4, 0($1)
bgtz $1, TAG695
TAG695:
mult $4, $4
mtlo $4
sw $4, 0($4)
lui $2, 0
TAG696:
srl $3, $2, 13
blez $2, TAG697
lui $1, 4
beq $3, $3, TAG697
TAG697:
mthi $1
bltz $1, TAG698
mfhi $2
lui $1, 15
TAG698:
multu $1, $1
xor $1, $1, $1
srlv $4, $1, $1
slti $4, $4, 0
TAG699:
sb $4, 0($4)
multu $4, $4
mthi $4
sb $4, 0($4)
TAG700:
bgtz $4, TAG701
mthi $4
bgez $4, TAG701
sub $1, $4, $4
TAG701:
srav $1, $1, $1
sb $1, 0($1)
lw $2, 0($1)
mfhi $4
TAG702:
sw $4, 0($4)
ori $1, $4, 6
sh $4, 0($1)
lui $3, 6
TAG703:
mult $3, $3
bne $3, $3, TAG704
andi $2, $3, 1
lui $3, 8
TAG704:
lui $2, 11
sll $0, $0, 0
mtlo $2
mtlo $3
TAG705:
lui $1, 4
multu $1, $1
sll $0, $0, 0
bgtz $1, TAG706
TAG706:
mflo $3
addu $4, $1, $3
slti $3, $4, 11
beq $4, $1, TAG707
TAG707:
mthi $3
bgez $3, TAG708
subu $1, $3, $3
multu $3, $3
TAG708:
beq $1, $1, TAG709
sll $2, $1, 13
mfhi $4
sw $2, 0($4)
TAG709:
sll $0, $0, 0
slti $4, $4, 12
lui $4, 10
andi $1, $2, 9
TAG710:
sh $1, 0($1)
bne $1, $1, TAG711
mtlo $1
nor $2, $1, $1
TAG711:
sh $2, 1($2)
subu $2, $2, $2
beq $2, $2, TAG712
addu $1, $2, $2
TAG712:
sb $1, 0($1)
lw $3, 0($1)
bne $1, $1, TAG713
mflo $1
TAG713:
bne $1, $1, TAG714
sb $1, 0($1)
addiu $2, $1, 4
sb $2, 0($1)
TAG714:
mthi $2
lbu $4, 0($2)
bltz $4, TAG715
addiu $4, $2, 2
TAG715:
addu $3, $4, $4
sw $4, 0($3)
sb $4, 0($3)
srl $3, $3, 4
TAG716:
sb $3, 0($3)
lui $1, 8
sw $3, 0($3)
bltz $1, TAG717
TAG717:
sltiu $3, $1, 11
addu $4, $1, $3
sll $0, $0, 0
divu $4, $4
TAG718:
lb $1, 0($2)
lui $2, 14
blez $1, TAG719
mtlo $2
TAG719:
lui $3, 3
lui $2, 15
divu $2, $2
sltiu $1, $3, 15
TAG720:
mthi $1
addiu $4, $1, 9
mflo $1
bgez $1, TAG721
TAG721:
andi $1, $1, 2
mthi $1
addi $2, $1, 0
addi $4, $1, 1
TAG722:
or $2, $4, $4
sb $2, 0($4)
mfhi $4
beq $4, $2, TAG723
TAG723:
mfhi $2
bne $2, $2, TAG724
lhu $2, 0($4)
bne $4, $4, TAG724
TAG724:
sb $2, -256($2)
bne $2, $2, TAG725
mtlo $2
slt $1, $2, $2
TAG725:
mthi $1
sw $1, 0($1)
multu $1, $1
slt $3, $1, $1
TAG726:
bgtz $3, TAG727
sub $1, $3, $3
sw $1, 0($1)
and $4, $3, $1
TAG727:
sb $4, 0($4)
andi $2, $4, 13
sh $4, 0($4)
multu $2, $4
TAG728:
sb $2, 0($2)
beq $2, $2, TAG729
mthi $2
multu $2, $2
TAG729:
add $2, $2, $2
mfhi $2
lw $3, 0($2)
bgez $2, TAG730
TAG730:
mfhi $2
mflo $3
mfhi $2
mthi $3
TAG731:
lw $2, 0($2)
mult $2, $2
bgtz $2, TAG732
andi $3, $2, 3
TAG732:
subu $3, $3, $3
ori $2, $3, 13
lui $2, 3
mtlo $3
TAG733:
blez $2, TAG734
or $1, $2, $2
lui $1, 15
mtlo $1
TAG734:
bne $1, $1, TAG735
andi $3, $1, 8
multu $3, $1
mthi $3
TAG735:
lbu $3, 0($3)
and $1, $3, $3
beq $1, $1, TAG736
mfhi $3
TAG736:
lui $1, 0
lhu $1, 0($3)
lui $3, 7
bltz $3, TAG737
TAG737:
xor $2, $3, $3
mfhi $3
bne $3, $2, TAG738
multu $3, $3
TAG738:
mflo $4
beq $3, $3, TAG739
mthi $3
lw $3, 0($4)
TAG739:
blez $3, TAG740
lb $2, 0($3)
beq $3, $3, TAG740
lui $3, 5
TAG740:
add $2, $3, $3
lui $3, 12
sll $0, $0, 0
mfhi $3
TAG741:
sw $3, 0($3)
lhu $2, 0($3)
lui $4, 12
lui $2, 11
TAG742:
srlv $2, $2, $2
beq $2, $2, TAG743
mfhi $2
mtlo $2
TAG743:
bltz $2, TAG744
sb $2, 0($2)
mfhi $1
or $1, $1, $1
TAG744:
mthi $1
lui $2, 10
mthi $2
lh $1, 0($1)
TAG745:
ori $1, $1, 6
mthi $1
lui $3, 10
divu $1, $3
TAG746:
sll $0, $0, 0
mthi $3
mult $3, $3
beq $3, $3, TAG747
TAG747:
nor $2, $3, $3
mult $3, $3
bgez $3, TAG748
multu $3, $2
TAG748:
mflo $3
bne $2, $3, TAG749
mthi $2
mthi $2
TAG749:
mthi $3
mthi $3
mthi $3
mult $3, $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop