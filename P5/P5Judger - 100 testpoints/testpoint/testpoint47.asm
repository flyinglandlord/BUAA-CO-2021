ori $1, $0, 1
ori $2, $0, 4
ori $3, $0, 11
ori $4, $0, 9
sw $3, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $4, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $1, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $2, 124($0)
sb $2, 0($2)
divu $2, $2
lhu $3, 0($2)
lh $2, 0($2)
TAG1:
beq $2, $2, TAG2
mfhi $3
andi $4, $3, 4
or $1, $4, $3
TAG2:
bltz $1, TAG3
and $3, $1, $1
andi $2, $1, 6
lbu $1, 0($1)
TAG3:
mult $1, $1
sub $1, $1, $1
sw $1, 0($1)
sb $1, 0($1)
TAG4:
srlv $3, $1, $1
bgez $3, TAG5
mflo $1
mthi $1
TAG5:
bltz $1, TAG6
lbu $4, 0($1)
sllv $1, $4, $4
multu $1, $1
TAG6:
beq $1, $1, TAG7
sh $1, 0($1)
div $1, $1
lbu $1, 0($1)
TAG7:
multu $1, $1
lui $3, 8
sltu $3, $1, $3
lbu $4, 0($3)
TAG8:
lbu $3, 0($4)
sllv $2, $3, $3
addu $1, $2, $2
mfhi $4
TAG9:
lbu $4, 0($4)
lh $4, 0($4)
srlv $1, $4, $4
lh $4, 0($4)
TAG10:
multu $4, $4
lui $1, 14
lui $2, 6
mthi $1
TAG11:
bgez $2, TAG12
mflo $4
beq $4, $4, TAG12
divu $2, $2
TAG12:
mflo $2
mflo $4
sb $4, 0($4)
lui $1, 11
TAG13:
lui $1, 7
lui $4, 13
or $2, $1, $1
mfhi $2
TAG14:
blez $2, TAG15
sll $0, $0, 0
sltiu $1, $2, 14
slt $3, $2, $3
TAG15:
beq $3, $3, TAG16
sh $3, 0($3)
lui $1, 1
sh $3, 0($3)
TAG16:
nor $1, $1, $1
srav $2, $1, $1
lui $4, 0
bne $1, $2, TAG17
TAG17:
sh $4, 0($4)
multu $4, $4
mult $4, $4
lb $4, 0($4)
TAG18:
lb $4, 0($4)
lui $2, 12
lui $4, 1
beq $2, $2, TAG19
TAG19:
mfhi $1
beq $4, $1, TAG20
subu $4, $4, $4
lw $1, 0($1)
TAG20:
sw $1, 0($1)
mtlo $1
mthi $1
mthi $1
TAG21:
lhu $2, 0($1)
mflo $2
blez $2, TAG22
lui $1, 7
TAG22:
mflo $2
mult $2, $2
sh $1, 0($2)
addi $3, $2, 2
TAG23:
bgez $3, TAG24
addiu $4, $3, 13
mflo $2
divu $4, $2
TAG24:
lui $3, 13
bltz $3, TAG25
sw $2, 0($2)
ori $2, $2, 13
TAG25:
addiu $1, $2, 10
bltz $2, TAG26
sltiu $4, $2, 10
lb $1, 0($1)
TAG26:
mult $1, $1
mult $1, $1
sllv $1, $1, $1
lui $4, 5
TAG27:
sll $0, $0, 0
divu $4, $4
mfhi $2
mthi $4
TAG28:
lb $2, 0($2)
slt $4, $2, $2
sb $2, 0($2)
mtlo $4
TAG29:
mfhi $1
divu $1, $1
mfhi $3
multu $3, $3
TAG30:
mthi $3
srl $2, $3, 5
mthi $2
blez $3, TAG31
TAG31:
lb $4, 0($2)
mfhi $4
multu $4, $2
mfhi $3
TAG32:
bne $3, $3, TAG33
lh $2, 0($3)
sra $1, $2, 10
bltz $3, TAG33
TAG33:
multu $1, $1
mult $1, $1
bgez $1, TAG34
mthi $1
TAG34:
mfhi $1
blez $1, TAG35
lui $3, 1
lui $2, 3
TAG35:
lui $4, 15
mult $2, $2
mult $2, $2
lui $2, 3
TAG36:
lui $2, 13
lui $3, 0
lui $3, 3
sll $0, $0, 0
TAG37:
mfhi $1
lui $1, 7
mthi $3
sltiu $2, $1, 4
TAG38:
bne $2, $2, TAG39
mtlo $2
mfhi $3
sll $0, $0, 0
TAG39:
lui $3, 2
sllv $2, $3, $4
mthi $4
srl $1, $2, 2
TAG40:
sll $0, $0, 0
mult $4, $1
sll $0, $0, 0
srl $2, $4, 11
TAG41:
mult $2, $2
mult $2, $2
lh $3, -480($2)
mflo $4
TAG42:
addiu $1, $4, 8
sll $0, $0, 0
sll $0, $0, 0
and $4, $1, $1
TAG43:
mult $4, $4
srl $2, $4, 12
bltz $2, TAG44
mfhi $2
TAG44:
sll $4, $2, 8
mthi $4
lbu $3, 0($2)
sb $3, -3072($4)
TAG45:
bltz $3, TAG46
mfhi $2
mult $3, $2
mtlo $3
TAG46:
mfhi $4
lui $1, 12
mtlo $4
bne $2, $1, TAG47
TAG47:
srlv $1, $1, $1
lui $3, 0
mfhi $2
lui $3, 8
TAG48:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
srav $1, $3, $3
TAG49:
srlv $4, $1, $1
andi $3, $4, 5
sll $0, $0, 0
beq $1, $1, TAG50
TAG50:
sw $3, 0($3)
lhu $3, 0($3)
xor $3, $3, $3
mflo $3
TAG51:
sh $3, 0($3)
add $3, $3, $3
lw $4, 0($3)
add $2, $3, $3
TAG52:
mfhi $3
srav $4, $3, $2
xori $3, $2, 11
lui $1, 3
TAG53:
bne $1, $1, TAG54
sll $0, $0, 0
sll $0, $0, 0
mult $1, $4
TAG54:
mflo $1
mtlo $1
sb $1, 0($4)
lui $2, 10
TAG55:
mult $2, $2
sll $0, $0, 0
mflo $3
xori $3, $3, 3
TAG56:
bltz $3, TAG57
subu $3, $3, $3
lui $4, 6
divu $3, $4
TAG57:
mthi $4
srl $3, $4, 14
lui $1, 6
beq $4, $4, TAG58
TAG58:
sll $2, $1, 9
mtlo $2
blez $1, TAG59
div $2, $1
TAG59:
mthi $2
or $4, $2, $2
srlv $3, $2, $4
bne $2, $2, TAG60
TAG60:
lui $2, 14
bne $2, $3, TAG61
mfhi $4
div $2, $3
TAG61:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
mflo $1
TAG62:
sw $1, -512($1)
ori $2, $1, 15
blez $1, TAG63
sltiu $2, $1, 5
TAG63:
sllv $1, $2, $2
add $4, $2, $2
lui $3, 10
lui $1, 6
TAG64:
mtlo $1
mflo $3
lui $3, 5
addiu $1, $3, 8
TAG65:
lui $2, 0
mflo $1
mthi $2
sll $0, $0, 0
TAG66:
mthi $3
srl $4, $3, 1
addiu $4, $3, 12
lui $1, 14
TAG67:
bne $1, $1, TAG68
mflo $4
lui $4, 4
div $4, $1
TAG68:
mfhi $3
sll $0, $0, 0
lui $4, 1
bltz $3, TAG69
TAG69:
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
lui $2, 14
TAG70:
nor $1, $2, $2
sll $0, $0, 0
mtlo $2
mflo $3
TAG71:
sll $0, $0, 0
slt $1, $3, $3
divu $1, $3
slti $2, $3, 0
TAG72:
blez $2, TAG73
multu $2, $2
div $2, $2
sll $2, $2, 14
TAG73:
sra $1, $2, 0
sb $1, 0($2)
sw $2, 0($1)
mthi $1
TAG74:
blez $1, TAG75
lhu $3, 0($1)
mfhi $1
lb $2, 0($1)
TAG75:
lb $2, 0($2)
lui $3, 4
lui $1, 14
bgtz $3, TAG76
TAG76:
lui $2, 13
addu $4, $1, $1
lui $3, 2
or $3, $3, $4
TAG77:
sll $0, $0, 0
sll $0, $0, 0
addu $2, $4, $4
sll $0, $0, 0
TAG78:
blez $2, TAG79
mtlo $2
addiu $4, $2, 12
lui $2, 6
TAG79:
beq $2, $2, TAG80
mtlo $2
blez $2, TAG80
sb $2, 0($2)
TAG80:
mult $2, $2
mtlo $2
sll $0, $0, 0
sltiu $3, $2, 15
TAG81:
mflo $2
sll $2, $3, 5
xor $4, $2, $2
sw $3, 0($4)
TAG82:
lui $2, 5
ori $1, $2, 15
mfhi $2
sll $0, $0, 0
TAG83:
mtlo $4
mtlo $4
lh $3, 0($4)
mthi $4
TAG84:
beq $3, $3, TAG85
mflo $4
beq $4, $4, TAG85
addi $1, $3, 12
TAG85:
addiu $2, $1, 3
sll $0, $0, 0
bgez $2, TAG86
mtlo $2
TAG86:
div $2, $2
xori $4, $2, 2
mflo $3
mfhi $3
TAG87:
bgez $3, TAG88
sw $3, 0($3)
divu $3, $3
or $1, $3, $3
TAG88:
mtlo $1
srl $2, $1, 8
lui $3, 14
bgez $3, TAG89
TAG89:
div $3, $3
addu $2, $3, $3
sll $0, $0, 0
mtlo $2
TAG90:
mtlo $2
sll $0, $0, 0
sra $3, $2, 9
sll $0, $0, 0
TAG91:
div $3, $3
mthi $3
bne $3, $3, TAG92
sw $3, -3584($3)
TAG92:
mult $3, $3
nor $1, $3, $3
lb $3, 3585($1)
mtlo $1
TAG93:
blez $3, TAG94
sltu $3, $3, $3
sb $3, 0($3)
divu $3, $3
TAG94:
lb $1, 0($3)
bltz $3, TAG95
lui $2, 10
mfhi $2
TAG95:
mtlo $2
blez $2, TAG96
sll $3, $2, 6
sb $2, 0($3)
TAG96:
mthi $3
bgtz $3, TAG97
mult $3, $3
mfhi $1
TAG97:
addu $2, $1, $1
bgtz $2, TAG98
sllv $3, $2, $1
bgtz $3, TAG98
TAG98:
mtlo $3
mfhi $1
mtlo $3
blez $3, TAG99
TAG99:
addiu $2, $1, 8
mthi $1
sb $2, 0($1)
mtlo $1
TAG100:
lui $1, 13
mflo $1
lui $2, 10
sll $0, $0, 0
TAG101:
sll $0, $0, 0
andi $4, $2, 6
lb $3, 0($4)
mfhi $3
TAG102:
slti $3, $3, 5
div $3, $3
slt $3, $3, $3
bgtz $3, TAG103
TAG103:
mflo $3
sb $3, 0($3)
bltz $3, TAG104
mfhi $1
TAG104:
sb $1, 0($1)
xori $2, $1, 1
mflo $1
sb $1, 0($1)
TAG105:
mflo $3
sb $1, 0($3)
multu $3, $1
bgez $1, TAG106
TAG106:
mtlo $3
xor $1, $3, $3
lb $2, 0($1)
sh $1, 0($2)
TAG107:
lui $1, 10
mult $1, $2
bne $1, $1, TAG108
multu $1, $2
TAG108:
divu $1, $1
subu $2, $1, $1
lui $1, 1
mflo $1
TAG109:
mtlo $1
bne $1, $1, TAG110
sllv $3, $1, $1
lbu $2, 0($1)
TAG110:
mult $2, $2
bltz $2, TAG111
mult $2, $2
blez $2, TAG111
TAG111:
lhu $4, 0($2)
multu $4, $4
srl $4, $2, 9
multu $4, $2
TAG112:
addiu $4, $4, 7
beq $4, $4, TAG113
sb $4, 0($4)
lui $2, 6
TAG113:
mfhi $2
slti $3, $2, 9
lui $4, 12
blez $4, TAG114
TAG114:
slti $3, $4, 11
mflo $3
mthi $3
div $3, $4
TAG115:
lh $2, 0($3)
sh $2, 0($3)
nor $1, $2, $3
beq $2, $3, TAG116
TAG116:
lui $2, 11
lw $3, 1($1)
sb $3, 1($1)
bgez $1, TAG117
TAG117:
nor $3, $3, $3
mult $3, $3
mthi $3
lui $1, 8
TAG118:
sll $1, $1, 11
bne $1, $1, TAG119
sll $0, $0, 0
lui $4, 2
TAG119:
sll $0, $0, 0
mtlo $4
blez $4, TAG120
mflo $3
TAG120:
sll $0, $0, 0
andi $3, $2, 0
blez $3, TAG121
srlv $4, $2, $3
TAG121:
lui $1, 2
mtlo $4
sll $0, $0, 0
sltiu $2, $4, 2
TAG122:
multu $2, $2
mflo $3
xori $4, $3, 15
lw $3, 0($2)
TAG123:
mtlo $3
bltz $3, TAG124
multu $3, $3
lui $4, 7
TAG124:
sll $0, $0, 0
lui $1, 1
mflo $4
mfhi $4
TAG125:
mtlo $4
mflo $3
srav $2, $3, $3
bne $2, $2, TAG126
TAG126:
lw $3, 0($2)
multu $2, $3
xori $4, $3, 15
slt $1, $2, $4
TAG127:
lui $1, 14
bltz $1, TAG128
sll $0, $0, 0
sll $0, $0, 0
TAG128:
bne $1, $1, TAG129
sll $0, $0, 0
and $3, $3, $1
sw $3, 0($3)
TAG129:
mult $3, $3
mtlo $3
sb $3, 0($3)
bgtz $3, TAG130
TAG130:
sllv $3, $3, $3
lh $1, 0($3)
multu $3, $3
andi $1, $3, 11
TAG131:
multu $1, $1
bne $1, $1, TAG132
lui $3, 2
sra $1, $1, 2
TAG132:
lui $1, 12
mfhi $3
srav $2, $3, $1
blez $2, TAG133
TAG133:
mult $2, $2
lui $3, 3
bgtz $2, TAG134
sh $2, 0($2)
TAG134:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG135
sll $3, $3, 2
TAG135:
addiu $1, $3, 11
mfhi $4
sw $3, 0($4)
bgez $3, TAG136
TAG136:
sh $4, 0($4)
lui $4, 3
lui $2, 12
beq $2, $4, TAG137
TAG137:
sll $0, $0, 0
div $4, $4
mthi $2
sll $0, $0, 0
TAG138:
beq $4, $4, TAG139
mtlo $4
mflo $4
div $4, $4
TAG139:
beq $4, $4, TAG140
mthi $4
div $4, $4
lui $2, 7
TAG140:
addiu $2, $2, 1
lui $4, 6
sll $0, $0, 0
blez $2, TAG141
TAG141:
sllv $4, $2, $2
or $3, $4, $4
sll $0, $0, 0
srl $1, $2, 2
TAG142:
subu $3, $1, $1
div $3, $1
sll $0, $0, 0
sltu $2, $3, $1
TAG143:
div $2, $2
blez $2, TAG144
mthi $2
andi $3, $2, 9
TAG144:
sllv $3, $3, $3
mthi $3
lui $4, 2
lbu $3, 0($3)
TAG145:
lui $3, 2
mult $3, $3
bne $3, $3, TAG146
sltiu $3, $3, 2
TAG146:
lhu $4, 0($3)
sb $3, 0($4)
srlv $1, $4, $3
mfhi $2
TAG147:
srl $1, $2, 9
mflo $4
lui $3, 15
sb $3, 0($2)
TAG148:
lui $4, 5
addu $3, $3, $3
mtlo $4
bgez $4, TAG149
TAG149:
andi $1, $3, 3
bne $1, $3, TAG150
lui $3, 4
bgez $3, TAG150
TAG150:
lui $1, 11
andi $3, $3, 12
bgez $3, TAG151
subu $2, $3, $1
TAG151:
blez $2, TAG152
sll $0, $0, 0
beq $2, $2, TAG152
mthi $2
TAG152:
sll $0, $0, 0
lui $1, 14
bgez $2, TAG153
xori $4, $1, 3
TAG153:
bltz $4, TAG154
mthi $4
mtlo $4
srl $1, $4, 11
TAG154:
div $1, $1
bne $1, $1, TAG155
lui $3, 14
sll $0, $0, 0
TAG155:
lui $2, 15
mfhi $3
divu $2, $2
lhu $4, 0($3)
TAG156:
bltz $4, TAG157
sh $4, 0($4)
mtlo $4
lui $1, 12
TAG157:
div $1, $1
slti $3, $1, 1
mfhi $4
mtlo $1
TAG158:
sllv $3, $4, $4
beq $3, $4, TAG159
mult $4, $4
andi $4, $3, 8
TAG159:
mflo $4
lhu $2, 0($4)
sw $2, 0($4)
sb $4, 0($4)
TAG160:
sh $2, 0($2)
sw $2, 0($2)
srav $1, $2, $2
beq $2, $1, TAG161
TAG161:
multu $1, $1
mthi $1
multu $1, $1
sll $4, $1, 14
TAG162:
sb $4, 0($4)
bne $4, $4, TAG163
mfhi $1
beq $1, $4, TAG163
TAG163:
lui $3, 13
sll $0, $0, 0
multu $3, $4
sll $0, $0, 0
TAG164:
bgtz $4, TAG165
slt $2, $4, $4
sb $2, 0($4)
lb $1, 0($2)
TAG165:
sh $1, 0($1)
lw $4, 0($1)
ori $2, $1, 13
lhu $4, 0($1)
TAG166:
mfhi $3
lui $4, 6
div $3, $4
sll $0, $0, 0
TAG167:
bne $3, $3, TAG168
mflo $3
mfhi $1
andi $3, $3, 13
TAG168:
sw $3, 0($3)
lui $3, 5
sll $0, $0, 0
multu $3, $3
TAG169:
sltiu $4, $1, 2
mflo $4
sw $4, 0($4)
mfhi $4
TAG170:
mtlo $4
beq $4, $4, TAG171
subu $3, $4, $4
mfhi $3
TAG171:
mthi $3
sra $2, $3, 14
bltz $2, TAG172
sw $3, 0($2)
TAG172:
sw $2, 0($2)
lw $2, 0($2)
srav $3, $2, $2
sh $3, 0($2)
TAG173:
bne $3, $3, TAG174
lui $4, 0
bne $3, $3, TAG174
xori $1, $3, 15
TAG174:
sb $1, 0($1)
srav $2, $1, $1
lb $4, 0($2)
lui $2, 13
TAG175:
sll $0, $0, 0
sll $0, $0, 0
lbu $4, 0($3)
mflo $3
TAG176:
beq $3, $3, TAG177
mtlo $3
beq $3, $3, TAG177
mult $3, $3
TAG177:
mfhi $1
sh $1, 0($1)
lui $1, 5
mult $3, $1
TAG178:
mult $1, $1
beq $1, $1, TAG179
sll $0, $0, 0
addu $2, $1, $1
TAG179:
mtlo $2
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG180:
sll $2, $3, 2
divu $3, $3
sllv $3, $2, $3
sll $0, $0, 0
TAG181:
bne $4, $4, TAG182
mthi $4
mtlo $4
beq $4, $4, TAG182
TAG182:
add $4, $4, $4
xor $4, $4, $4
bgtz $4, TAG183
mfhi $2
TAG183:
sb $2, 0($2)
sltiu $2, $2, 12
slt $4, $2, $2
sltu $3, $4, $2
TAG184:
bgtz $3, TAG185
lui $1, 10
lui $1, 4
sh $1, 0($3)
TAG185:
addu $1, $1, $1
subu $3, $1, $1
bgtz $1, TAG186
mfhi $2
TAG186:
mult $2, $2
bne $2, $2, TAG187
sllv $3, $2, $2
ori $3, $2, 9
TAG187:
mult $3, $3
lb $3, 0($3)
addiu $2, $3, 5
mfhi $3
TAG188:
mflo $4
slt $3, $4, $4
lbu $4, 0($4)
sh $4, 0($3)
TAG189:
nor $1, $4, $4
mflo $3
mfhi $1
sb $1, 0($1)
TAG190:
mult $1, $1
addu $1, $1, $1
sra $2, $1, 15
bne $2, $1, TAG191
TAG191:
multu $2, $2
mfhi $3
mtlo $3
mfhi $2
TAG192:
mflo $2
multu $2, $2
sw $2, 0($2)
lui $4, 9
TAG193:
andi $1, $4, 10
sll $0, $0, 0
sll $0, $0, 0
bne $1, $2, TAG194
TAG194:
sltiu $4, $2, 3
sb $2, 0($4)
subu $3, $4, $4
sw $2, 0($2)
TAG195:
multu $3, $3
xori $3, $3, 6
multu $3, $3
beq $3, $3, TAG196
TAG196:
multu $3, $3
xori $4, $3, 2
addu $3, $3, $3
bltz $3, TAG197
TAG197:
xori $3, $3, 3
mflo $3
blez $3, TAG198
divu $3, $3
TAG198:
blez $3, TAG199
lhu $4, 0($3)
sb $3, 0($4)
sw $4, 0($3)
TAG199:
mtlo $4
subu $2, $4, $4
sllv $2, $2, $4
xor $4, $4, $4
TAG200:
mfhi $2
bgez $4, TAG201
mult $4, $4
beq $2, $2, TAG201
TAG201:
sw $2, 0($2)
lui $3, 14
addiu $4, $3, 4
ori $3, $2, 1
TAG202:
bltz $3, TAG203
lui $3, 3
beq $3, $3, TAG203
mflo $4
TAG203:
lbu $3, 0($4)
lui $2, 2
mfhi $4
xori $3, $4, 1
TAG204:
lbu $3, 0($3)
lui $1, 8
bltz $3, TAG205
lhu $4, 0($3)
TAG205:
bgez $4, TAG206
mtlo $4
mflo $3
sub $4, $4, $3
TAG206:
beq $4, $4, TAG207
sltu $3, $4, $4
mthi $3
beq $3, $3, TAG207
TAG207:
multu $3, $3
mflo $3
sw $3, 0($3)
lbu $2, 0($3)
TAG208:
lhu $2, 0($2)
lh $1, 0($2)
lhu $4, 0($2)
bne $1, $2, TAG209
TAG209:
mflo $4
mult $4, $4
blez $4, TAG210
lw $1, 0($4)
TAG210:
beq $1, $1, TAG211
ori $4, $1, 15
sh $1, 0($4)
bltz $1, TAG211
TAG211:
sb $4, 0($4)
lui $3, 1
mthi $4
sll $0, $0, 0
TAG212:
mfhi $4
sb $4, 0($4)
sll $0, $0, 0
sll $0, $0, 0
TAG213:
mflo $1
mult $4, $1
bltz $4, TAG214
sb $4, 0($1)
TAG214:
bgtz $1, TAG215
lhu $3, 0($1)
bltz $3, TAG215
lbu $1, 0($1)
TAG215:
blez $1, TAG216
sb $1, 0($1)
bgez $1, TAG216
lui $1, 8
TAG216:
and $2, $1, $1
mtlo $1
bne $2, $2, TAG217
mthi $1
TAG217:
bgez $2, TAG218
subu $1, $2, $2
sra $2, $1, 3
lui $3, 5
TAG218:
mflo $2
lui $3, 14
sll $0, $0, 0
bne $3, $3, TAG219
TAG219:
sllv $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
TAG220:
mthi $2
bgez $2, TAG221
sll $0, $0, 0
mfhi $1
TAG221:
slt $1, $1, $1
sb $1, 0($1)
sub $4, $1, $1
sltu $4, $4, $4
TAG222:
ori $2, $4, 15
lui $4, 1
lui $4, 14
bltz $2, TAG223
TAG223:
mtlo $4
beq $4, $4, TAG224
subu $2, $4, $4
blez $4, TAG224
TAG224:
addiu $2, $2, 12
mflo $3
bgez $2, TAG225
srav $1, $3, $2
TAG225:
srl $1, $1, 9
mflo $2
addu $3, $2, $1
multu $1, $1
TAG226:
bgez $3, TAG227
mtlo $3
sb $3, 0($3)
lui $1, 2
TAG227:
mtlo $1
mflo $4
mflo $2
lbu $1, 0($1)
TAG228:
bne $1, $1, TAG229
lw $2, 0($1)
sh $2, 0($1)
lhu $4, 0($1)
TAG229:
lh $3, 0($4)
xori $3, $3, 14
mtlo $4
bltz $3, TAG230
TAG230:
sb $3, 0($3)
bgtz $3, TAG231
subu $2, $3, $3
multu $3, $2
TAG231:
lui $2, 14
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG232:
sh $4, 0($4)
slt $1, $4, $4
mflo $3
mflo $2
TAG233:
beq $2, $2, TAG234
xori $4, $2, 0
bltz $4, TAG234
lui $4, 7
TAG234:
sh $4, 0($4)
mflo $4
lb $4, 0($4)
sltu $1, $4, $4
TAG235:
lbu $4, 0($1)
sra $2, $1, 14
multu $1, $2
mtlo $2
TAG236:
mfhi $3
multu $2, $2
bltz $3, TAG237
mflo $3
TAG237:
mtlo $3
sllv $4, $3, $3
slt $1, $3, $3
and $1, $4, $3
TAG238:
bgtz $1, TAG239
sh $1, 0($1)
sw $1, 0($1)
sltiu $3, $1, 3
TAG239:
bne $3, $3, TAG240
srl $2, $3, 0
lui $2, 12
bltz $2, TAG240
TAG240:
xori $1, $2, 3
mthi $1
divu $2, $2
sll $0, $0, 0
TAG241:
bne $1, $1, TAG242
addu $3, $1, $1
beq $1, $3, TAG242
sll $0, $0, 0
TAG242:
blez $3, TAG243
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG243:
and $2, $2, $2
and $4, $2, $2
divu $4, $4
beq $2, $2, TAG244
TAG244:
lui $3, 1
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
TAG245:
lui $4, 7
divu $4, $4
mtlo $3
mflo $4
TAG246:
andi $1, $4, 7
mtlo $1
blez $4, TAG247
mtlo $4
TAG247:
sh $1, 0($1)
lw $3, 0($1)
bgtz $3, TAG248
mtlo $3
TAG248:
bgez $3, TAG249
lui $1, 10
sltu $4, $3, $1
mfhi $2
TAG249:
lui $2, 8
div $2, $2
mtlo $2
bgez $2, TAG250
TAG250:
mthi $2
beq $2, $2, TAG251
mfhi $2
div $2, $2
TAG251:
blez $2, TAG252
lui $2, 9
mflo $3
sra $2, $2, 14
TAG252:
sb $2, 0($2)
mflo $1
sra $3, $1, 15
divu $3, $3
TAG253:
div $3, $3
sll $3, $3, 12
mthi $3
srav $3, $3, $3
TAG254:
lui $4, 7
srlv $1, $4, $3
beq $1, $3, TAG255
lui $1, 10
TAG255:
mflo $4
mtlo $1
blez $1, TAG256
lb $3, 0($4)
TAG256:
sb $3, 0($3)
beq $3, $3, TAG257
srl $3, $3, 8
xori $4, $3, 7
TAG257:
bne $4, $4, TAG258
srl $2, $4, 0
sb $4, 0($2)
sb $4, 0($4)
TAG258:
lb $2, 0($2)
bgtz $2, TAG259
lui $4, 4
sw $2, 0($4)
TAG259:
mult $4, $4
mflo $3
beq $4, $4, TAG260
mthi $3
TAG260:
sw $3, 0($3)
sh $3, 0($3)
blez $3, TAG261
and $2, $3, $3
TAG261:
lui $4, 12
andi $4, $2, 13
lw $1, 0($4)
mult $4, $2
TAG262:
and $2, $1, $1
bne $1, $2, TAG263
multu $2, $1
lui $3, 10
TAG263:
sll $0, $0, 0
mthi $3
srlv $2, $3, $3
mflo $3
TAG264:
sllv $1, $3, $3
mfhi $4
sb $3, 0($3)
lui $3, 3
TAG265:
blez $3, TAG266
multu $3, $3
xor $1, $3, $3
beq $3, $3, TAG266
TAG266:
lui $4, 6
lbu $2, 0($1)
mtlo $1
lui $4, 11
TAG267:
mthi $4
bgtz $4, TAG268
mult $4, $4
divu $4, $4
TAG268:
sltiu $3, $4, 4
lbu $4, 0($3)
mtlo $3
addu $3, $4, $3
TAG269:
mthi $3
slti $4, $3, 1
bne $4, $3, TAG270
addi $3, $3, 8
TAG270:
sb $3, 0($3)
mtlo $3
bgez $3, TAG271
mfhi $4
TAG271:
bgtz $4, TAG272
or $1, $4, $4
mthi $4
mult $1, $1
TAG272:
mthi $1
subu $1, $1, $1
sub $4, $1, $1
multu $1, $1
TAG273:
lui $2, 6
mfhi $4
mfhi $2
mfhi $4
TAG274:
blez $4, TAG275
slt $2, $4, $4
mtlo $2
bgtz $2, TAG275
TAG275:
mult $2, $2
addu $1, $2, $2
mtlo $2
sb $1, 0($2)
TAG276:
lui $2, 0
bgtz $1, TAG277
lw $2, 0($2)
bltz $2, TAG277
TAG277:
sb $2, 0($2)
sltu $4, $2, $2
mflo $3
lui $4, 1
TAG278:
sll $0, $0, 0
sll $3, $4, 4
mflo $4
add $2, $4, $4
TAG279:
mfhi $3
add $2, $3, $3
subu $1, $2, $3
bne $3, $2, TAG280
TAG280:
mult $1, $1
sltiu $3, $1, 1
sb $1, 0($3)
slt $2, $1, $1
TAG281:
mflo $4
sub $2, $2, $4
beq $2, $2, TAG282
lui $3, 0
TAG282:
sra $1, $3, 13
xori $3, $3, 4
sh $3, 0($3)
lui $2, 0
TAG283:
lui $2, 11
addu $4, $2, $2
sll $0, $0, 0
slti $2, $2, 1
TAG284:
lui $4, 10
srl $1, $4, 6
sh $2, -10240($1)
mfhi $3
TAG285:
lhu $2, 0($3)
multu $3, $2
bgtz $3, TAG286
lw $2, 0($3)
TAG286:
lui $1, 11
sb $2, 0($2)
lui $1, 11
beq $1, $2, TAG287
TAG287:
lui $3, 12
mtlo $1
div $3, $1
sll $0, $0, 0
TAG288:
lui $4, 12
lui $4, 11
mthi $3
lui $4, 8
TAG289:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG290:
ori $4, $1, 11
and $3, $4, $1
slt $4, $4, $1
lui $2, 0
TAG291:
sh $2, 0($2)
bne $2, $2, TAG292
sw $2, 0($2)
lui $1, 15
TAG292:
mult $1, $1
mflo $3
mfhi $4
mtlo $1
TAG293:
lui $1, 15
addiu $4, $1, 1
addiu $2, $4, 9
bne $4, $4, TAG294
TAG294:
mtlo $2
sll $0, $0, 0
srl $4, $2, 7
mflo $1
TAG295:
xor $2, $1, $1
mfhi $2
lui $1, 7
lui $1, 0
TAG296:
mfhi $2
bne $2, $2, TAG297
sltu $3, $2, $1
mfhi $2
TAG297:
multu $2, $2
divu $2, $2
sw $2, -225($2)
bne $2, $2, TAG298
TAG298:
sll $0, $0, 0
lh $4, -7680($4)
lhu $1, -225($4)
lhu $3, -225($4)
TAG299:
blez $3, TAG300
mfhi $1
lui $1, 1
blez $1, TAG300
TAG300:
srav $2, $1, $1
lui $1, 12
lui $2, 3
mflo $1
TAG301:
lui $1, 1
lui $3, 4
beq $3, $1, TAG302
sltiu $1, $3, 1
TAG302:
lh $3, 0($1)
blez $3, TAG303
sh $1, -225($3)
lui $4, 15
TAG303:
mult $4, $4
mflo $4
mfhi $3
mflo $4
TAG304:
sltiu $1, $4, 11
lbu $4, 0($4)
sh $4, 0($4)
beq $4, $4, TAG305
TAG305:
mthi $4
bgtz $4, TAG306
sw $4, 0($4)
or $3, $4, $4
TAG306:
mfhi $4
lui $2, 15
mthi $4
beq $2, $4, TAG307
TAG307:
srav $4, $2, $2
srav $2, $2, $2
sll $0, $0, 0
sltu $1, $2, $2
TAG308:
sltiu $2, $1, 12
lbu $2, 0($2)
blez $2, TAG309
mflo $2
TAG309:
sltu $4, $2, $2
blez $4, TAG310
multu $4, $4
mthi $4
TAG310:
lw $2, 0($4)
mtlo $2
lui $4, 2
mult $4, $2
TAG311:
mfhi $3
sll $0, $0, 0
beq $3, $3, TAG312
mflo $3
TAG312:
bgez $3, TAG313
lw $4, 0($3)
lhu $1, 0($3)
mtlo $4
TAG313:
lui $1, 7
bgez $1, TAG314
sll $0, $0, 0
bne $1, $4, TAG314
TAG314:
lw $2, 0($4)
beq $4, $4, TAG315
sb $4, 0($2)
bltz $4, TAG315
TAG315:
mflo $2
mflo $4
and $3, $2, $4
bne $3, $3, TAG316
TAG316:
lb $1, 0($3)
lh $2, 0($3)
bgez $2, TAG317
lw $2, 0($3)
TAG317:
multu $2, $2
lui $4, 1
lui $2, 12
divu $2, $4
TAG318:
bgez $2, TAG319
mthi $2
xori $2, $2, 12
mthi $2
TAG319:
mult $2, $2
bltz $2, TAG320
lui $3, 5
sll $0, $0, 0
TAG320:
divu $2, $2
sra $4, $2, 15
lb $4, 0($4)
lui $3, 11
TAG321:
addu $3, $3, $3
sll $0, $0, 0
mult $3, $3
mthi $3
TAG322:
lui $3, 6
beq $3, $3, TAG323
sll $0, $0, 0
sb $3, 0($3)
TAG323:
multu $4, $4
mtlo $4
lui $1, 12
sb $4, 0($4)
TAG324:
bne $1, $1, TAG325
slti $2, $1, 3
divu $1, $1
sw $1, 0($2)
TAG325:
lbu $3, 0($2)
sh $2, 0($3)
mult $3, $2
and $1, $2, $3
TAG326:
xori $1, $1, 9
xor $2, $1, $1
sw $1, 0($2)
xori $3, $1, 14
TAG327:
mult $3, $3
mfhi $3
mthi $3
lui $1, 8
TAG328:
mtlo $1
multu $1, $1
lui $1, 15
srlv $4, $1, $1
TAG329:
mfhi $2
div $2, $2
blez $4, TAG330
slti $1, $2, 2
TAG330:
beq $1, $1, TAG331
mfhi $1
andi $4, $1, 8
lui $1, 8
TAG331:
multu $1, $1
sw $1, 0($1)
lui $4, 2
bgtz $1, TAG332
TAG332:
sll $0, $0, 0
lui $4, 9
bgez $4, TAG333
lhu $2, 0($2)
TAG333:
beq $2, $2, TAG334
sw $2, 0($2)
mthi $2
srav $2, $2, $2
TAG334:
sll $3, $2, 6
mthi $2
addu $1, $3, $3
mthi $3
TAG335:
srl $2, $1, 7
blez $2, TAG336
srlv $4, $2, $1
sh $4, 0($2)
TAG336:
sw $4, 0($4)
srav $2, $4, $4
mult $2, $2
bltz $2, TAG337
TAG337:
mult $2, $2
sllv $2, $2, $2
lbu $1, 0($2)
beq $1, $1, TAG338
TAG338:
sw $1, 0($1)
lui $3, 10
beq $3, $3, TAG339
addiu $1, $3, 1
TAG339:
sll $0, $0, 0
subu $4, $1, $1
mfhi $4
lui $4, 4
TAG340:
bgez $4, TAG341
sll $0, $0, 0
lh $4, 0($4)
lui $2, 5
TAG341:
slt $3, $2, $2
multu $3, $3
bne $3, $2, TAG342
lui $2, 0
TAG342:
mflo $1
lw $1, 0($2)
blez $1, TAG343
multu $1, $1
TAG343:
mthi $1
slt $3, $1, $1
bltz $3, TAG344
multu $3, $1
TAG344:
multu $3, $3
xori $3, $3, 4
mflo $2
blez $3, TAG345
TAG345:
lh $2, 0($2)
mfhi $2
beq $2, $2, TAG346
andi $3, $2, 9
TAG346:
mtlo $3
nor $4, $3, $3
mflo $3
mult $4, $3
TAG347:
slt $2, $3, $3
bne $2, $2, TAG348
sb $2, 0($2)
lh $1, 0($3)
TAG348:
lb $1, 0($1)
mthi $1
mthi $1
lh $3, 0($1)
TAG349:
blez $3, TAG350
sb $3, 0($3)
bne $3, $3, TAG350
mflo $3
TAG350:
mtlo $3
mtlo $3
sw $3, 0($3)
mfhi $2
TAG351:
sh $2, 0($2)
srl $3, $2, 0
ori $1, $2, 11
lhu $2, 0($3)
TAG352:
blez $2, TAG353
mthi $2
bltz $2, TAG353
sb $2, 0($2)
TAG353:
ori $1, $2, 0
lui $3, 7
mflo $2
slti $1, $3, 14
TAG354:
lui $1, 10
mtlo $1
slti $2, $1, 5
mfhi $1
TAG355:
ori $2, $1, 15
or $3, $2, $1
lbu $1, 0($3)
lui $4, 15
TAG356:
sltu $1, $4, $4
sll $0, $0, 0
lw $3, 0($1)
slti $1, $4, 14
TAG357:
sb $1, 0($1)
mfhi $4
sw $4, 0($1)
beq $4, $1, TAG358
TAG358:
mfhi $2
lb $2, 0($4)
lui $1, 12
lui $4, 7
TAG359:
slt $2, $4, $4
mflo $2
mfhi $4
mthi $4
TAG360:
bne $4, $4, TAG361
lb $2, 0($4)
and $1, $4, $2
sll $2, $4, 8
TAG361:
mfhi $2
blez $2, TAG362
mtlo $2
multu $2, $2
TAG362:
sra $1, $2, 8
lui $2, 15
sra $1, $1, 11
sll $0, $0, 0
TAG363:
srlv $3, $1, $1
mfhi $4
mthi $4
lui $3, 4
TAG364:
bltz $3, TAG365
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG365:
addiu $2, $3, 13
lui $2, 2
sltu $2, $3, $2
bgez $3, TAG366
TAG366:
mult $2, $2
beq $2, $2, TAG367
lui $2, 12
bltz $2, TAG367
TAG367:
sll $0, $0, 0
mfhi $4
mthi $2
mult $2, $4
TAG368:
sh $4, 0($4)
bgez $4, TAG369
sh $4, 0($4)
sltu $2, $4, $4
TAG369:
mflo $4
lui $4, 6
slt $1, $4, $4
sll $0, $0, 0
TAG370:
sb $1, 0($1)
blez $1, TAG371
andi $2, $1, 14
lui $3, 2
TAG371:
sll $0, $0, 0
lui $3, 11
beq $4, $3, TAG372
lui $1, 0
TAG372:
subu $3, $1, $1
sb $3, 0($3)
sb $3, 0($1)
slt $4, $3, $3
TAG373:
lui $4, 11
mthi $4
lui $2, 7
blez $4, TAG374
TAG374:
slt $3, $2, $2
mthi $3
mtlo $2
mult $3, $2
TAG375:
and $1, $3, $3
bgez $1, TAG376
ori $2, $1, 5
sw $3, 0($2)
TAG376:
mfhi $1
mthi $2
bne $1, $2, TAG377
mtlo $2
TAG377:
sh $1, 0($1)
srlv $4, $1, $1
sb $1, 0($1)
sltu $4, $4, $4
TAG378:
multu $4, $4
lhu $2, 0($4)
mthi $2
srlv $2, $4, $4
TAG379:
lh $4, 0($2)
mthi $2
blez $2, TAG380
sub $3, $2, $4
TAG380:
bne $3, $3, TAG381
andi $2, $3, 4
lui $1, 1
sh $1, 0($2)
TAG381:
blez $1, TAG382
mthi $1
ori $1, $1, 7
beq $1, $1, TAG382
TAG382:
mflo $3
multu $1, $3
mflo $3
ori $3, $3, 4
TAG383:
bgtz $3, TAG384
and $4, $3, $3
lb $1, 0($3)
bne $3, $4, TAG384
TAG384:
lui $1, 13
mtlo $1
mtlo $1
mflo $4
TAG385:
bgtz $4, TAG386
lui $3, 10
bgez $3, TAG386
lb $1, 0($3)
TAG386:
mfhi $1
mtlo $1
multu $1, $1
bgez $1, TAG387
TAG387:
lbu $4, 0($1)
mflo $4
lui $3, 7
multu $4, $3
TAG388:
slti $2, $3, 5
srl $1, $2, 8
sb $2, 0($1)
mthi $1
TAG389:
mflo $2
sb $1, 0($1)
sb $2, 0($1)
bne $2, $2, TAG390
TAG390:
mflo $2
sw $2, 0($2)
or $2, $2, $2
mflo $1
TAG391:
bgez $1, TAG392
sllv $4, $1, $1
bgtz $1, TAG392
mtlo $4
TAG392:
bne $4, $4, TAG393
mtlo $4
bgez $4, TAG393
sub $2, $4, $4
TAG393:
lhu $2, 0($2)
lui $4, 1
bne $2, $2, TAG394
xor $2, $4, $2
TAG394:
addiu $2, $2, 8
lui $2, 7
blez $2, TAG395
mthi $2
TAG395:
sll $3, $2, 7
sllv $2, $2, $3
nor $1, $2, $2
sll $0, $0, 0
TAG396:
ori $4, $3, 11
lui $4, 9
bne $4, $4, TAG397
addu $3, $3, $4
TAG397:
subu $4, $3, $3
srlv $4, $3, $4
bltz $4, TAG398
mthi $3
TAG398:
bltz $4, TAG399
mfhi $1
addiu $4, $1, 10
blez $1, TAG399
TAG399:
nor $3, $4, $4
mtlo $4
bgtz $3, TAG400
sll $0, $0, 0
TAG400:
sll $0, $0, 0
mflo $4
beq $4, $3, TAG401
mflo $3
TAG401:
bne $3, $3, TAG402
mfhi $4
mult $3, $3
slt $1, $3, $4
TAG402:
sra $4, $1, 12
sll $3, $1, 0
subu $1, $4, $1
lui $2, 0
TAG403:
mult $2, $2
addu $4, $2, $2
mfhi $1
blez $1, TAG404
TAG404:
lui $1, 11
bgtz $1, TAG405
sllv $3, $1, $1
lhu $3, 0($1)
TAG405:
lui $1, 1
divu $1, $3
srav $4, $3, $3
mthi $4
TAG406:
addu $1, $4, $4
beq $4, $1, TAG407
addiu $1, $1, 13
sll $0, $0, 0
TAG407:
sll $0, $0, 0
lui $4, 2
mthi $1
srav $1, $4, $4
TAG408:
bne $1, $1, TAG409
subu $3, $1, $1
mult $1, $3
bne $1, $1, TAG409
TAG409:
mflo $3
sb $3, 0($3)
nor $4, $3, $3
lw $4, 0($3)
TAG410:
mflo $1
mult $1, $4
mult $1, $1
lhu $4, 0($4)
TAG411:
sw $4, 0($4)
bgtz $4, TAG412
addi $2, $4, 5
and $3, $4, $2
TAG412:
beq $3, $3, TAG413
xori $4, $3, 3
bgtz $4, TAG413
xori $2, $4, 5
TAG413:
mflo $3
beq $2, $2, TAG414
mtlo $2
sw $3, 0($3)
TAG414:
mflo $2
lbu $3, 0($2)
sltu $1, $3, $3
mfhi $2
TAG415:
mflo $2
multu $2, $2
lb $2, 0($2)
lui $3, 12
TAG416:
sll $0, $0, 0
bne $2, $2, TAG417
sra $1, $2, 11
divu $3, $3
TAG417:
lui $2, 12
sll $0, $0, 0
and $1, $2, $1
or $2, $2, $2
TAG418:
lui $4, 0
sll $1, $4, 5
bne $4, $4, TAG419
mflo $3
TAG419:
lui $1, 2
mtlo $3
sra $1, $3, 10
bgtz $3, TAG420
TAG420:
mult $1, $1
sra $3, $1, 3
mtlo $1
lh $4, 0($3)
TAG421:
lb $1, 0($4)
nor $3, $4, $4
addiu $2, $1, 6
sh $3, 0($4)
TAG422:
mfhi $4
mfhi $3
lhu $1, 0($3)
lhu $1, 0($2)
TAG423:
lw $2, 0($1)
nor $2, $2, $2
bgtz $1, TAG424
multu $2, $1
TAG424:
div $2, $2
mfhi $1
sh $2, 0($1)
srl $3, $1, 3
TAG425:
mthi $3
mult $3, $3
blez $3, TAG426
mfhi $3
TAG426:
mflo $1
mfhi $1
lui $2, 13
mfhi $2
TAG427:
mflo $4
sh $4, 0($2)
mthi $2
sw $4, 0($2)
TAG428:
ori $3, $4, 5
sh $4, 0($4)
blez $3, TAG429
divu $4, $3
TAG429:
slt $2, $3, $3
lui $2, 10
subu $3, $2, $2
mult $2, $3
TAG430:
mfhi $4
multu $3, $4
mult $4, $3
mfhi $2
TAG431:
srav $4, $2, $2
addi $1, $2, 1
addi $1, $4, 6
mflo $3
TAG432:
mflo $4
nor $4, $4, $4
lb $4, 1($4)
beq $4, $4, TAG433
TAG433:
mfhi $4
mult $4, $4
beq $4, $4, TAG434
or $2, $4, $4
TAG434:
lui $4, 0
multu $2, $4
beq $2, $4, TAG435
lui $4, 11
TAG435:
sll $0, $0, 0
lui $1, 13
divu $1, $1
sll $0, $0, 0
TAG436:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
xori $3, $1, 5
TAG437:
sll $1, $3, 13
blez $3, TAG438
xori $1, $1, 14
sll $0, $0, 0
TAG438:
bgtz $1, TAG439
subu $3, $1, $1
bltz $3, TAG439
sb $1, 0($3)
TAG439:
bgez $3, TAG440
mfhi $1
lhu $4, 0($3)
lui $2, 0
TAG440:
xori $3, $2, 3
sh $2, 0($2)
mult $3, $2
lw $3, 0($2)
TAG441:
sltiu $2, $3, 15
bgez $3, TAG442
multu $2, $2
div $2, $3
TAG442:
mult $2, $2
lui $2, 0
lbu $2, 0($2)
lui $1, 8
TAG443:
divu $1, $1
mflo $1
lbu $1, 0($1)
xor $2, $1, $1
TAG444:
bgtz $2, TAG445
mthi $2
lw $1, 0($2)
sw $2, 0($2)
TAG445:
bgez $1, TAG446
mtlo $1
mthi $1
sb $1, 0($1)
TAG446:
xori $1, $1, 6
blez $1, TAG447
lhu $3, 0($1)
bgtz $3, TAG447
TAG447:
nor $2, $3, $3
mthi $2
lb $4, 1($2)
mthi $4
TAG448:
lui $3, 12
sll $0, $0, 0
lui $2, 12
bgtz $3, TAG449
TAG449:
lui $2, 2
sll $0, $0, 0
beq $2, $2, TAG450
div $2, $2
TAG450:
sll $0, $0, 0
addiu $3, $2, 14
mthi $2
sll $0, $0, 0
TAG451:
subu $4, $1, $1
mtlo $1
sll $1, $4, 3
addi $1, $4, 8
TAG452:
bgez $1, TAG453
xori $3, $1, 4
lh $4, 0($1)
lb $2, 0($3)
TAG453:
lui $4, 1
srl $4, $4, 15
sllv $2, $2, $2
bne $4, $2, TAG454
TAG454:
addu $1, $2, $2
mtlo $2
lui $3, 13
sll $0, $0, 0
TAG455:
mthi $3
sll $0, $0, 0
lui $1, 2
sll $0, $0, 0
TAG456:
sll $0, $0, 0
slt $4, $1, $1
srlv $2, $4, $1
bltz $1, TAG457
TAG457:
mfhi $3
sb $3, 0($2)
mfhi $2
mfhi $4
TAG458:
and $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG459:
lui $1, 13
beq $1, $1, TAG460
mult $3, $3
mtlo $3
TAG460:
sll $0, $0, 0
sra $3, $2, 1
mflo $1
lui $1, 5
TAG461:
beq $1, $1, TAG462
mfhi $4
sllv $4, $1, $4
mthi $1
TAG462:
addu $2, $4, $4
mthi $4
xori $2, $4, 4
xori $3, $2, 3
TAG463:
sll $0, $0, 0
multu $3, $2
bgtz $2, TAG464
srav $3, $3, $3
TAG464:
slt $3, $3, $3
bltz $3, TAG465
nor $4, $3, $3
beq $3, $3, TAG465
TAG465:
mfhi $3
xori $3, $3, 13
lb $2, 0($3)
mtlo $3
TAG466:
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG467:
mtlo $4
sltiu $3, $4, 2
mfhi $4
sll $2, $3, 4
TAG468:
multu $2, $2
mflo $1
lui $4, 15
andi $3, $4, 11
TAG469:
subu $4, $3, $3
mflo $4
xor $3, $4, $4
sw $4, 0($3)
TAG470:
blez $3, TAG471
subu $4, $3, $3
bgez $4, TAG471
mfhi $1
TAG471:
sltiu $3, $1, 8
mult $3, $1
bgez $3, TAG472
mult $1, $1
TAG472:
sb $3, 0($3)
sltu $4, $3, $3
sb $4, 0($3)
sw $3, 0($4)
TAG473:
lb $1, 0($4)
mtlo $4
lui $4, 10
bne $4, $4, TAG474
TAG474:
andi $2, $4, 5
multu $4, $2
mult $2, $4
beq $4, $4, TAG475
TAG475:
sb $2, 0($2)
bgez $2, TAG476
lw $3, 0($2)
mfhi $4
TAG476:
slt $1, $4, $4
sll $3, $4, 4
sll $0, $0, 0
mfhi $4
TAG477:
bne $4, $4, TAG478
mtlo $4
lui $1, 12
lui $4, 2
TAG478:
sll $0, $0, 0
xor $4, $4, $4
lui $1, 5
sll $0, $0, 0
TAG479:
mtlo $1
mflo $3
bgez $1, TAG480
sltu $3, $3, $1
TAG480:
bne $3, $3, TAG481
lbu $4, 0($3)
mthi $3
blez $4, TAG481
TAG481:
multu $4, $4
sh $4, 0($4)
mfhi $3
mflo $3
TAG482:
sllv $4, $3, $3
srlv $2, $3, $3
addiu $4, $3, 12
beq $4, $2, TAG483
TAG483:
mthi $4
mflo $1
mtlo $1
mult $4, $1
TAG484:
bne $1, $1, TAG485
addi $2, $1, 5
beq $1, $2, TAG485
lui $2, 8
TAG485:
sll $0, $0, 0
bne $2, $2, TAG486
sll $0, $0, 0
sll $0, $0, 0
TAG486:
mult $2, $2
sra $2, $2, 1
mthi $2
multu $2, $2
TAG487:
bne $2, $2, TAG488
sll $0, $0, 0
mfhi $4
bgtz $2, TAG488
TAG488:
mfhi $1
lh $1, 0($4)
multu $1, $1
div $1, $1
TAG489:
mfhi $4
lb $2, 0($4)
andi $4, $4, 15
sllv $3, $2, $1
TAG490:
slti $1, $3, 11
sra $4, $3, 9
mflo $3
lui $1, 9
TAG491:
div $1, $1
srl $2, $1, 8
andi $3, $2, 7
lui $4, 13
TAG492:
bne $4, $4, TAG493
addiu $2, $4, 15
lui $1, 10
divu $4, $4
TAG493:
srl $3, $1, 14
blez $3, TAG494
div $3, $3
lui $3, 7
TAG494:
mflo $1
mult $1, $3
nor $4, $3, $1
addu $1, $3, $3
TAG495:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
TAG496:
mflo $1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG497:
subu $3, $2, $2
lh $3, 0($3)
mult $2, $3
mtlo $2
TAG498:
mflo $3
bgez $3, TAG499
lui $3, 4
lbu $1, 0($3)
TAG499:
bgez $1, TAG500
subu $3, $1, $1
andi $3, $1, 5
lui $4, 12
TAG500:
slt $3, $4, $4
lui $4, 10
sll $2, $4, 13
sll $0, $0, 0
TAG501:
div $4, $4
srlv $4, $4, $4
sll $0, $0, 0
lui $1, 12
TAG502:
sra $3, $1, 5
sll $4, $1, 13
sb $1, -24576($3)
sll $0, $0, 0
TAG503:
sll $0, $0, 0
addiu $4, $3, 2
beq $3, $3, TAG504
sh $3, -24576($3)
TAG504:
lui $3, 11
bne $4, $3, TAG505
div $4, $4
sb $3, 0($3)
TAG505:
beq $3, $3, TAG506
sll $0, $0, 0
mtlo $4
sw $3, 0($4)
TAG506:
bne $4, $4, TAG507
mthi $4
bltz $4, TAG507
divu $4, $4
TAG507:
subu $4, $4, $4
lui $4, 7
sll $0, $0, 0
bne $4, $4, TAG508
TAG508:
mthi $2
and $2, $2, $2
or $3, $2, $2
sll $0, $0, 0
TAG509:
sll $0, $0, 0
mfhi $2
mfhi $3
multu $3, $3
TAG510:
mtlo $3
sra $3, $3, 8
bgtz $3, TAG511
lui $4, 9
TAG511:
bltz $4, TAG512
divu $4, $4
sra $4, $4, 13
and $3, $4, $4
TAG512:
mthi $3
lw $3, 0($3)
lui $1, 8
bgez $1, TAG513
TAG513:
mtlo $1
mthi $1
xori $2, $1, 14
sll $0, $0, 0
TAG514:
lui $2, 5
sll $0, $0, 0
mthi $2
addiu $4, $2, 10
TAG515:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
bne $1, $4, TAG516
TAG516:
lui $1, 14
lui $3, 3
multu $2, $2
sll $0, $0, 0
TAG517:
mfhi $1
lui $1, 15
xor $3, $1, $3
mfhi $1
TAG518:
mult $1, $1
lui $4, 0
xori $4, $4, 3
beq $1, $4, TAG519
TAG519:
mflo $2
sw $4, -625($2)
lui $2, 1
bgez $2, TAG520
TAG520:
sll $0, $0, 0
mflo $3
mflo $4
lui $2, 1
TAG521:
addu $4, $2, $2
sll $0, $0, 0
bne $3, $2, TAG522
mfhi $2
TAG522:
multu $2, $2
mult $2, $2
mult $2, $2
srl $3, $2, 4
TAG523:
mult $3, $3
lh $2, 0($3)
slt $1, $2, $3
lb $4, 0($1)
TAG524:
sb $4, 0($4)
addiu $1, $4, 7
srl $1, $1, 12
mult $1, $1
TAG525:
sw $1, 0($1)
lb $1, 0($1)
bltz $1, TAG526
multu $1, $1
TAG526:
sb $1, 0($1)
sh $1, 0($1)
mult $1, $1
bgez $1, TAG527
TAG527:
andi $1, $1, 8
bgez $1, TAG528
sub $3, $1, $1
div $1, $3
TAG528:
mtlo $3
lui $2, 9
bgtz $3, TAG529
mthi $3
TAG529:
lui $4, 6
div $4, $4
mflo $4
div $4, $2
TAG530:
mflo $2
mflo $4
beq $2, $2, TAG531
lui $4, 2
TAG531:
mtlo $4
beq $4, $4, TAG532
sll $0, $0, 0
mtlo $4
TAG532:
mthi $4
sltiu $3, $4, 7
mtlo $4
mflo $2
TAG533:
sll $0, $0, 0
ori $1, $3, 8
bgtz $1, TAG534
lb $4, 0($1)
TAG534:
sh $4, 0($4)
xori $4, $4, 13
lui $1, 5
mfhi $1
TAG535:
sll $0, $0, 0
mfhi $4
mflo $4
sltiu $3, $1, 0
TAG536:
beq $3, $3, TAG537
mthi $3
beq $3, $3, TAG537
sub $2, $3, $3
TAG537:
slt $4, $2, $2
sll $0, $0, 0
mfhi $4
mthi $4
TAG538:
mflo $2
mult $2, $4
lui $1, 14
mflo $1
TAG539:
mfhi $3
sra $3, $3, 12
bgtz $3, TAG540
mult $1, $3
TAG540:
lh $3, 0($3)
lw $4, 0($3)
mult $3, $4
lhu $4, 0($3)
TAG541:
lb $1, 0($4)
bne $4, $4, TAG542
multu $1, $1
lui $1, 15
TAG542:
multu $1, $1
bne $1, $1, TAG543
mflo $2
sh $1, 0($2)
TAG543:
addiu $4, $2, 9
bne $4, $2, TAG544
lhu $4, 0($2)
lhu $4, 0($4)
TAG544:
xori $1, $4, 7
bltz $4, TAG545
lbu $4, 0($1)
beq $4, $4, TAG545
TAG545:
lhu $4, 0($4)
srlv $2, $4, $4
mflo $3
xor $2, $4, $3
TAG546:
mult $2, $2
bltz $2, TAG547
lui $2, 8
sll $0, $0, 0
TAG547:
mtlo $2
lui $4, 9
bne $2, $2, TAG548
multu $2, $4
TAG548:
multu $4, $4
beq $4, $4, TAG549
addiu $3, $4, 14
bne $4, $3, TAG549
TAG549:
mtlo $3
subu $3, $3, $3
beq $3, $3, TAG550
andi $3, $3, 12
TAG550:
bltz $3, TAG551
lb $2, 0($3)
beq $3, $2, TAG551
lhu $1, 0($2)
TAG551:
lh $4, 0($1)
bne $4, $4, TAG552
sw $4, 0($4)
bltz $1, TAG552
TAG552:
mtlo $4
sra $1, $4, 3
bne $4, $1, TAG553
mthi $1
TAG553:
sub $1, $1, $1
lui $1, 13
divu $1, $1
sll $0, $0, 0
TAG554:
mtlo $1
mfhi $4
bne $1, $4, TAG555
mflo $4
TAG555:
sll $0, $0, 0
srlv $3, $1, $1
div $3, $3
mflo $2
TAG556:
sb $2, 0($2)
divu $2, $2
subu $1, $2, $2
lbu $4, 0($2)
TAG557:
sb $4, 0($4)
mthi $4
multu $4, $4
slti $1, $4, 15
TAG558:
sb $1, 0($1)
bltz $1, TAG559
mflo $1
beq $1, $1, TAG559
TAG559:
sb $1, 0($1)
lb $4, 0($1)
lui $1, 5
srav $2, $4, $1
TAG560:
bne $2, $2, TAG561
sb $2, 0($2)
lui $4, 2
blez $2, TAG561
TAG561:
addiu $4, $4, 15
slt $2, $4, $4
lb $3, 0($2)
bgtz $4, TAG562
TAG562:
multu $3, $3
lui $2, 12
sh $3, 0($3)
bgtz $2, TAG563
TAG563:
andi $4, $2, 14
mflo $4
multu $4, $4
mult $4, $4
TAG564:
lui $2, 14
beq $2, $4, TAG565
mflo $4
mflo $1
TAG565:
addi $3, $1, 7
lui $1, 1
mtlo $1
bne $1, $1, TAG566
TAG566:
and $2, $1, $1
mult $1, $2
bgez $1, TAG567
lui $3, 7
TAG567:
multu $3, $3
sll $0, $0, 0
sltu $3, $2, $2
bne $3, $3, TAG568
TAG568:
mthi $3
bne $3, $3, TAG569
mthi $3
bne $3, $3, TAG569
TAG569:
mult $3, $3
sb $3, 0($3)
mflo $2
mfhi $4
TAG570:
addu $1, $4, $4
mthi $1
addu $3, $4, $4
srav $1, $3, $3
TAG571:
mthi $1
beq $1, $1, TAG572
lui $1, 12
subu $3, $1, $1
TAG572:
sb $3, 0($3)
lui $1, 4
blez $3, TAG573
sltiu $4, $3, 11
TAG573:
srav $1, $4, $4
andi $4, $4, 14
sltiu $4, $4, 14
bne $4, $4, TAG574
TAG574:
addiu $1, $4, 10
andi $1, $1, 6
mtlo $4
lh $1, 0($1)
TAG575:
sll $1, $1, 12
mult $1, $1
mult $1, $1
bltz $1, TAG576
TAG576:
mult $1, $1
beq $1, $1, TAG577
multu $1, $1
sra $1, $1, 10
TAG577:
addiu $3, $1, 13
sltu $2, $3, $1
mthi $1
sh $2, 0($1)
TAG578:
mtlo $2
bgtz $2, TAG579
add $1, $2, $2
bne $1, $2, TAG579
TAG579:
mult $1, $1
lhu $1, 0($1)
lui $1, 5
multu $1, $1
TAG580:
mfhi $2
mflo $2
lui $2, 6
sll $0, $0, 0
TAG581:
sll $0, $0, 0
sll $0, $0, 0
sb $3, 0($3)
xori $3, $3, 14
TAG582:
sra $2, $3, 5
bne $2, $3, TAG583
mult $3, $3
bgez $3, TAG583
TAG583:
lhu $1, 0($2)
lui $3, 11
lui $2, 11
blez $2, TAG584
TAG584:
lui $2, 11
sltu $3, $2, $2
bgtz $2, TAG585
add $2, $3, $2
TAG585:
multu $2, $2
sll $0, $0, 0
sw $2, 0($1)
bgtz $1, TAG586
TAG586:
mflo $4
mthi $1
addi $1, $4, 0
bne $1, $4, TAG587
TAG587:
sh $1, 0($1)
multu $1, $1
lui $3, 10
mflo $1
TAG588:
lui $1, 7
mfhi $3
sll $0, $0, 0
addu $4, $3, $1
TAG589:
sll $0, $0, 0
mult $4, $4
lui $3, 1
beq $3, $4, TAG590
TAG590:
divu $3, $3
lui $2, 3
mult $3, $2
beq $3, $3, TAG591
TAG591:
div $2, $2
lui $3, 8
mflo $1
mtlo $3
TAG592:
xor $3, $1, $1
mthi $3
lw $3, 0($3)
sll $0, $0, 0
TAG593:
addiu $4, $4, 3
bne $4, $4, TAG594
div $4, $4
lui $4, 9
TAG594:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG595
mult $4, $4
TAG595:
sll $0, $0, 0
beq $4, $4, TAG596
mthi $4
sltu $2, $4, $4
TAG596:
bltz $2, TAG597
sll $0, $0, 0
divu $3, $3
andi $1, $3, 0
TAG597:
slti $2, $1, 6
sb $1, 0($1)
srlv $4, $2, $1
divu $2, $4
TAG598:
mflo $1
mflo $1
blez $1, TAG599
lui $3, 15
TAG599:
divu $3, $3
mtlo $3
sltiu $1, $3, 15
mfhi $1
TAG600:
mfhi $3
xor $1, $3, $1
srl $4, $1, 7
sll $3, $1, 2
TAG601:
bne $3, $3, TAG602
subu $4, $3, $3
mfhi $3
bne $3, $3, TAG602
TAG602:
slti $3, $3, 5
mfhi $4
lbu $4, 0($3)
mtlo $3
TAG603:
lui $4, 12
mthi $4
sltu $2, $4, $4
addiu $1, $4, 11
TAG604:
mfhi $3
mtlo $1
blez $3, TAG605
and $3, $3, $3
TAG605:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG606
lui $1, 1
TAG606:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
bgtz $1, TAG607
TAG607:
lhu $2, 0($2)
beq $2, $2, TAG608
slt $4, $2, $2
blez $2, TAG608
TAG608:
srlv $3, $4, $4
lb $3, 0($4)
sw $3, 0($3)
sltiu $2, $3, 15
TAG609:
srl $2, $2, 9
srl $2, $2, 6
lh $3, 0($2)
lhu $3, 0($2)
TAG610:
mflo $3
sll $0, $0, 0
beq $3, $3, TAG611
sll $0, $0, 0
TAG611:
andi $1, $4, 0
addi $1, $1, 14
lui $2, 7
sll $0, $0, 0
TAG612:
div $3, $3
sll $0, $0, 0
mthi $3
mflo $2
TAG613:
lb $1, 0($2)
mthi $1
srl $2, $2, 0
bgez $2, TAG614
TAG614:
mthi $2
beq $2, $2, TAG615
addiu $4, $2, 0
lui $4, 5
TAG615:
lbu $2, 0($4)
lui $1, 5
sll $0, $0, 0
divu $4, $1
TAG616:
lui $4, 3
bgez $4, TAG617
srl $4, $4, 12
mthi $4
TAG617:
sb $4, 0($4)
mtlo $4
multu $4, $4
mtlo $4
TAG618:
lh $3, 0($4)
blez $3, TAG619
addiu $3, $3, 9
div $3, $3
TAG619:
bne $3, $3, TAG620
sb $3, 0($3)
srav $2, $3, $3
mthi $2
TAG620:
multu $2, $2
multu $2, $2
slti $4, $2, 2
multu $2, $2
TAG621:
bgez $4, TAG622
lui $2, 6
mfhi $4
mflo $4
TAG622:
sb $4, 0($4)
addu $4, $4, $4
sb $4, 0($4)
divu $4, $4
TAG623:
multu $4, $4
sh $4, 0($4)
sh $4, 0($4)
srav $1, $4, $4
TAG624:
mflo $1
multu $1, $1
addiu $2, $1, 12
mflo $1
TAG625:
srav $2, $1, $1
multu $2, $2
bne $1, $2, TAG626
mtlo $1
TAG626:
sb $2, 0($2)
addi $2, $2, 8
lui $4, 13
sra $4, $2, 3
TAG627:
lb $2, 0($4)
addu $2, $4, $2
lh $4, 0($2)
sh $4, 0($2)
TAG628:
sh $4, 0($4)
bltz $4, TAG629
mflo $4
lbu $3, 0($4)
TAG629:
andi $4, $3, 14
lb $4, 0($3)
sb $3, 0($4)
mflo $3
TAG630:
bgez $3, TAG631
divu $3, $3
mfhi $2
mfhi $3
TAG631:
blez $3, TAG632
multu $3, $3
ori $4, $3, 4
lbu $3, 0($3)
TAG632:
beq $3, $3, TAG633
lui $1, 5
mflo $3
bne $3, $1, TAG633
TAG633:
lui $4, 2
lui $4, 13
beq $4, $4, TAG634
lb $3, 0($3)
TAG634:
div $3, $3
lui $4, 9
sll $0, $0, 0
blez $3, TAG635
TAG635:
multu $4, $4
srl $2, $4, 9
lui $3, 11
bltz $4, TAG636
TAG636:
lui $2, 10
addiu $3, $3, 14
multu $3, $2
subu $4, $3, $3
TAG637:
bltz $4, TAG638
sw $4, 0($4)
addiu $1, $4, 6
mflo $1
TAG638:
beq $1, $1, TAG639
sltiu $1, $1, 0
sh $1, 0($1)
sh $1, 0($1)
TAG639:
mult $1, $1
sw $1, 0($1)
lui $1, 4
slti $1, $1, 11
TAG640:
bne $1, $1, TAG641
sw $1, 0($1)
lbu $1, 0($1)
beq $1, $1, TAG641
TAG641:
lhu $2, 0($1)
bltz $1, TAG642
mthi $2
and $4, $2, $1
TAG642:
lb $1, 0($4)
mfhi $3
lbu $3, 0($3)
blez $3, TAG643
TAG643:
mtlo $3
lw $1, 0($3)
sltiu $3, $3, 4
div $3, $3
TAG644:
divu $3, $3
bne $3, $3, TAG645
lui $4, 0
mtlo $3
TAG645:
lui $2, 5
lui $4, 11
mthi $4
mthi $4
TAG646:
div $4, $4
mult $4, $4
mthi $4
lui $1, 1
TAG647:
subu $3, $1, $1
nor $2, $3, $3
nor $4, $1, $3
sll $0, $0, 0
TAG648:
mfhi $1
lui $3, 2
subu $1, $4, $1
srl $2, $1, 14
TAG649:
sll $0, $0, 0
lui $1, 7
sll $0, $0, 0
addiu $2, $2, 15
TAG650:
blez $2, TAG651
sll $0, $0, 0
mthi $2
mthi $2
TAG651:
nor $1, $2, $2
mfhi $3
bgez $2, TAG652
sra $2, $1, 9
TAG652:
addu $3, $2, $2
bltz $3, TAG653
lbu $3, 512($2)
beq $2, $3, TAG653
TAG653:
lhu $3, 0($3)
mfhi $2
subu $3, $3, $2
bne $3, $3, TAG654
TAG654:
mtlo $3
sll $0, $0, 0
slti $1, $2, 1
mult $2, $2
TAG655:
mflo $3
mtlo $3
bgez $1, TAG656
lui $1, 9
TAG656:
mtlo $1
mfhi $4
blez $4, TAG657
lb $4, 0($4)
TAG657:
mult $4, $4
div $4, $4
mthi $4
mtlo $4
TAG658:
sra $3, $4, 13
ori $4, $3, 10
bgez $4, TAG659
mthi $4
TAG659:
mflo $2
srlv $3, $4, $2
div $3, $4
mult $4, $3
TAG660:
andi $2, $3, 7
xori $2, $3, 0
mfhi $3
bltz $2, TAG661
TAG661:
lbu $4, 0($3)
sb $3, 0($4)
sub $2, $4, $3
blez $3, TAG662
TAG662:
lw $1, 0($2)
mult $1, $2
and $1, $2, $1
beq $1, $1, TAG663
TAG663:
xor $2, $1, $1
mflo $4
lui $4, 7
mult $4, $1
TAG664:
sltiu $1, $4, 1
beq $1, $1, TAG665
subu $3, $1, $4
sb $3, 0($3)
TAG665:
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG666:
sb $1, 0($1)
lui $3, 2
lh $2, 0($1)
lw $1, 0($1)
TAG667:
bgez $1, TAG668
sw $1, 0($1)
mtlo $1
bne $1, $1, TAG668
TAG668:
mthi $1
mflo $4
multu $1, $4
mthi $1
TAG669:
mtlo $4
sw $4, 0($4)
sw $4, 0($4)
mtlo $4
TAG670:
xori $1, $4, 12
sra $4, $4, 11
lui $3, 9
sllv $2, $4, $4
TAG671:
mult $2, $2
lh $2, 0($2)
xori $4, $2, 15
lui $3, 10
TAG672:
beq $3, $3, TAG673
mtlo $3
beq $3, $3, TAG673
mfhi $4
TAG673:
mtlo $4
multu $4, $4
bne $4, $4, TAG674
divu $4, $4
TAG674:
sra $2, $4, 4
lw $2, 0($2)
sb $2, 0($2)
lui $1, 6
TAG675:
beq $1, $1, TAG676
lui $1, 1
lhu $3, 0($1)
mtlo $1
TAG676:
sll $0, $0, 0
beq $3, $3, TAG677
sll $0, $0, 0
lui $2, 0
TAG677:
slt $3, $2, $2
bgtz $3, TAG678
mult $3, $3
bgtz $3, TAG678
TAG678:
lui $3, 7
sll $0, $0, 0
mfhi $4
mfhi $3
TAG679:
lui $1, 9
blez $1, TAG680
mflo $4
mtlo $3
TAG680:
blez $4, TAG681
sw $4, 0($4)
lui $2, 2
mthi $4
TAG681:
blez $2, TAG682
lui $1, 9
mtlo $2
lui $4, 10
TAG682:
mult $4, $4
mflo $4
mult $4, $4
xor $2, $4, $4
TAG683:
lh $2, 0($2)
bgez $2, TAG684
lui $2, 11
lbu $4, 0($2)
TAG684:
mthi $4
sub $1, $4, $4
nor $4, $4, $4
subu $4, $1, $4
TAG685:
lui $1, 14
bgez $1, TAG686
mtlo $1
addiu $4, $4, 14
TAG686:
bltz $4, TAG687
sll $2, $4, 1
bgtz $4, TAG687
sltu $1, $2, $4
TAG687:
mult $1, $1
sra $1, $1, 5
lb $3, 0($1)
mtlo $3
TAG688:
lbu $3, 0($3)
mfhi $1
addi $3, $3, 12
mfhi $1
TAG689:
srl $2, $1, 9
sb $2, 0($1)
sll $3, $2, 9
lui $1, 12
TAG690:
mtlo $1
addu $2, $1, $1
and $3, $1, $1
sll $0, $0, 0
TAG691:
lb $2, 0($4)
mflo $2
mtlo $2
sll $0, $0, 0
TAG692:
beq $2, $2, TAG693
mflo $3
slt $2, $3, $2
sra $4, $2, 10
TAG693:
multu $4, $4
sb $4, 0($4)
divu $4, $4
lui $3, 15
TAG694:
mtlo $3
lui $2, 5
blez $2, TAG695
lui $4, 13
TAG695:
sll $0, $0, 0
bne $2, $2, TAG696
sll $0, $0, 0
mfhi $2
TAG696:
srav $2, $2, $2
addiu $3, $2, 0
mult $2, $3
lhu $3, 0($2)
TAG697:
divu $3, $3
addiu $2, $3, 6
lh $4, -256($3)
div $4, $4
TAG698:
sll $0, $0, 0
blez $4, TAG699
subu $4, $4, $4
add $1, $4, $4
TAG699:
subu $2, $1, $1
mfhi $3
sra $2, $3, 10
sh $2, 0($1)
TAG700:
sltu $1, $2, $2
multu $1, $1
lb $1, 0($2)
sw $2, 0($1)
TAG701:
lui $3, 4
xor $1, $3, $3
bne $1, $3, TAG702
lui $3, 6
TAG702:
sltiu $3, $3, 0
mult $3, $3
ori $4, $3, 7
sltu $3, $3, $3
TAG703:
bne $3, $3, TAG704
lbu $4, 0($3)
sw $4, 0($4)
mthi $3
TAG704:
addi $4, $4, 7
divu $4, $4
subu $4, $4, $4
bgez $4, TAG705
TAG705:
add $2, $4, $4
multu $2, $4
addu $2, $2, $2
mflo $2
TAG706:
slt $2, $2, $2
mtlo $2
multu $2, $2
lb $1, 0($2)
TAG707:
lbu $2, 0($1)
sh $1, 0($2)
slti $2, $2, 2
lbu $4, 0($2)
TAG708:
beq $4, $4, TAG709
sb $4, 0($4)
lui $3, 9
beq $3, $4, TAG709
TAG709:
xori $3, $3, 7
bne $3, $3, TAG710
lui $2, 13
bgtz $2, TAG710
TAG710:
mflo $1
sw $2, 0($1)
lui $2, 14
bltz $2, TAG711
TAG711:
sll $0, $0, 0
sll $0, $0, 0
sb $1, 0($1)
lui $4, 5
TAG712:
mtlo $4
bltz $4, TAG713
mfhi $2
lb $4, 0($2)
TAG713:
mtlo $4
mthi $4
addi $1, $4, 0
mult $1, $4
TAG714:
lbu $3, 0($1)
addi $2, $3, 4
andi $1, $2, 15
mthi $1
TAG715:
lhu $2, 0($1)
lui $3, 0
bne $3, $2, TAG716
mult $1, $3
TAG716:
mfhi $4
lui $3, 2
sltiu $3, $3, 4
sb $3, 0($4)
TAG717:
ori $2, $3, 9
mfhi $4
beq $2, $2, TAG718
xor $2, $4, $2
TAG718:
mflo $4
xori $4, $4, 2
mfhi $4
bgez $4, TAG719
TAG719:
lui $1, 15
and $4, $1, $1
sll $0, $0, 0
blez $4, TAG720
TAG720:
mtlo $4
bltz $4, TAG721
ori $1, $4, 14
srl $1, $1, 7
TAG721:
sll $0, $0, 0
lui $2, 3
divu $1, $1
lb $2, -7680($1)
TAG722:
mtlo $2
bne $2, $2, TAG723
mthi $2
beq $2, $2, TAG723
TAG723:
mfhi $1
bne $1, $2, TAG724
mult $2, $1
bne $1, $2, TAG724
TAG724:
sltu $4, $1, $1
sb $4, 0($4)
mtlo $4
sw $4, 0($4)
TAG725:
lui $2, 14
sll $0, $0, 0
sra $3, $4, 3
multu $4, $3
TAG726:
mfhi $3
xori $3, $3, 9
mthi $3
bgez $3, TAG727
TAG727:
multu $3, $3
lb $4, 0($3)
multu $3, $4
blez $3, TAG728
TAG728:
srl $4, $4, 5
lui $4, 14
mult $4, $4
mfhi $1
TAG729:
sw $1, -196($1)
mflo $2
addiu $2, $2, 0
lbu $2, -196($1)
TAG730:
bne $2, $2, TAG731
mtlo $2
beq $2, $2, TAG731
mtlo $2
TAG731:
subu $3, $2, $2
sll $3, $2, 9
bgtz $2, TAG732
mthi $2
TAG732:
sll $0, $0, 0
bgtz $3, TAG733
mfhi $4
mfhi $2
TAG733:
mflo $2
divu $2, $2
sllv $3, $2, $2
lui $2, 14
TAG734:
addiu $3, $2, 3
multu $3, $2
sltu $2, $3, $3
srlv $1, $2, $3
TAG735:
mthi $1
mthi $1
slti $1, $1, 11
bgez $1, TAG736
TAG736:
lui $4, 12
lbu $3, 0($1)
bgtz $3, TAG737
mthi $3
TAG737:
bltz $3, TAG738
multu $3, $3
sb $3, 0($3)
lui $3, 8
TAG738:
sll $0, $0, 0
mfhi $2
mflo $4
multu $2, $3
TAG739:
mflo $2
mflo $3
lhu $1, 0($3)
sltiu $3, $3, 11
TAG740:
mthi $3
mfhi $3
sb $3, 0($3)
bne $3, $3, TAG741
TAG741:
lbu $4, 0($3)
sb $3, 0($3)
mflo $1
or $1, $1, $1
TAG742:
lui $4, 5
lui $4, 10
mfhi $3
bgez $3, TAG743
TAG743:
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
sb $3, 0($3)
TAG744:
bne $3, $3, TAG745
xori $2, $3, 4
ori $1, $3, 7
mflo $3
TAG745:
sb $3, 0($3)
lhu $4, 0($3)
sh $4, -256($4)
mult $3, $4
TAG746:
bltz $4, TAG747
lui $2, 12
mfhi $3
bne $3, $3, TAG747
TAG747:
sllv $3, $3, $3
lui $2, 12
lbu $1, 0($3)
bltz $3, TAG748
TAG748:
subu $2, $1, $1
sw $1, 0($1)
beq $1, $1, TAG749
mult $2, $2
TAG749:
sh $2, 0($2)
mthi $2
addu $1, $2, $2
mfhi $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop