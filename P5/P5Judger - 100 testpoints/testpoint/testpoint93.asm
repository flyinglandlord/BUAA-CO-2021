ori $1, $0, 8
ori $2, $0, 0
ori $3, $0, 10
ori $4, $0, 7
sw $4, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $4, 124($0)
bne $2, $2, TAG1
mfhi $1
bne $2, $1, TAG1
sw $2, 0($1)
TAG1:
sh $1, 0($1)
mult $1, $1
sw $1, 0($1)
lhu $3, 0($1)
TAG2:
srl $1, $3, 6
mult $1, $1
mfhi $4
slt $2, $3, $3
TAG3:
sh $2, 0($2)
nor $1, $2, $2
beq $1, $2, TAG4
mtlo $1
TAG4:
slt $1, $1, $1
bgtz $1, TAG5
sltu $1, $1, $1
bgez $1, TAG5
TAG5:
mult $1, $1
addi $2, $1, 3
bne $2, $1, TAG6
mtlo $2
TAG6:
lbu $3, 0($2)
andi $2, $2, 2
div $2, $2
bne $3, $3, TAG7
TAG7:
mfhi $1
srl $4, $1, 13
addi $4, $4, 14
mflo $3
TAG8:
subu $2, $3, $3
lbu $1, 0($2)
subu $3, $3, $2
mthi $3
TAG9:
mtlo $3
addiu $3, $3, 14
bgtz $3, TAG10
multu $3, $3
TAG10:
mtlo $3
mthi $3
mthi $3
bltz $3, TAG11
TAG11:
sb $3, 0($3)
beq $3, $3, TAG12
sb $3, 0($3)
sb $3, 0($3)
TAG12:
ori $2, $3, 9
mthi $3
mtlo $2
lbu $2, 0($2)
TAG13:
sb $2, 0($2)
mthi $2
multu $2, $2
mfhi $1
TAG14:
lui $1, 5
sll $0, $0, 0
div $1, $1
ori $3, $1, 10
TAG15:
blez $3, TAG16
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG16:
bltz $3, TAG17
mthi $3
mthi $3
sll $0, $0, 0
TAG17:
lui $4, 13
mult $3, $4
sll $0, $0, 0
lui $1, 6
TAG18:
mfhi $4
xori $4, $1, 9
bne $1, $1, TAG19
sll $0, $0, 0
TAG19:
bltz $4, TAG20
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG20
TAG20:
sll $0, $0, 0
blez $3, TAG21
mtlo $3
lui $3, 15
TAG21:
mfhi $3
srl $3, $3, 11
lw $4, 0($3)
mflo $2
TAG22:
sll $0, $0, 0
srlv $1, $2, $2
lui $1, 6
sll $0, $0, 0
TAG23:
blez $1, TAG24
addiu $4, $1, 4
mflo $1
multu $1, $1
TAG24:
addu $4, $1, $1
sll $3, $4, 4
div $1, $4
div $1, $1
TAG25:
srl $3, $3, 1
sll $0, $0, 0
bgez $3, TAG26
mflo $2
TAG26:
bltz $2, TAG27
lb $1, 0($2)
sll $3, $2, 15
mthi $2
TAG27:
mflo $3
div $3, $3
srl $1, $3, 7
lbu $2, 0($3)
TAG28:
mtlo $2
lui $4, 15
blez $4, TAG29
mtlo $2
TAG29:
sll $0, $0, 0
mthi $1
mult $1, $1
sltu $2, $4, $4
TAG30:
mthi $2
bgez $2, TAG31
sh $2, 0($2)
lb $2, 0($2)
TAG31:
lh $1, 0($2)
mthi $1
sh $2, 0($1)
bgtz $2, TAG32
TAG32:
mtlo $1
beq $1, $1, TAG33
multu $1, $1
nor $3, $1, $1
TAG33:
sb $3, 0($3)
mtlo $3
mthi $3
bne $3, $3, TAG34
TAG34:
nor $2, $3, $3
addiu $3, $2, 1
multu $3, $3
mfhi $3
TAG35:
sh $3, 2($3)
blez $3, TAG36
xori $1, $3, 14
bgez $1, TAG36
TAG36:
addiu $2, $1, 11
mthi $1
lhu $3, 5($2)
bgtz $3, TAG37
TAG37:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG38
TAG38:
mflo $3
mthi $3
andi $2, $3, 0
mflo $2
TAG39:
blez $2, TAG40
mthi $2
lbu $3, 0($2)
lb $3, 0($2)
TAG40:
xori $2, $3, 10
slti $4, $3, 2
bgtz $2, TAG41
lui $3, 1
TAG41:
lui $1, 4
multu $3, $1
mtlo $1
xor $2, $3, $3
TAG42:
lui $3, 5
sll $0, $0, 0
lui $3, 10
divu $3, $3
TAG43:
srav $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
xor $2, $3, $3
TAG44:
lui $3, 4
mult $3, $2
lb $2, 0($2)
ori $1, $3, 3
TAG45:
addiu $2, $1, 1
divu $1, $2
divu $1, $2
srav $3, $1, $1
TAG46:
mthi $3
bne $3, $3, TAG47
sll $0, $0, 0
bne $3, $3, TAG47
TAG47:
mflo $2
lui $4, 8
xori $3, $4, 11
beq $3, $3, TAG48
TAG48:
lui $1, 0
srlv $4, $3, $3
mfhi $4
slt $3, $4, $4
TAG49:
mult $3, $3
mthi $3
bltz $3, TAG50
sw $3, 0($3)
TAG50:
lui $3, 4
xori $4, $3, 1
mult $3, $3
mflo $4
TAG51:
xori $2, $4, 15
bgez $4, TAG52
slti $3, $4, 5
lui $4, 6
TAG52:
multu $4, $4
bne $4, $4, TAG53
mflo $3
ori $1, $4, 1
TAG53:
sll $2, $1, 0
lui $3, 15
lui $4, 5
addu $1, $1, $4
TAG54:
slti $4, $1, 14
bltz $1, TAG55
mthi $1
bgtz $4, TAG55
TAG55:
mult $4, $4
multu $4, $4
bne $4, $4, TAG56
lh $2, 0($4)
TAG56:
beq $2, $2, TAG57
lb $1, 0($2)
beq $2, $1, TAG57
mtlo $1
TAG57:
mflo $2
blez $1, TAG58
mfhi $1
xori $3, $1, 5
TAG58:
mtlo $3
sll $0, $0, 0
multu $3, $4
mflo $1
TAG59:
lui $3, 13
mtlo $3
ori $3, $3, 4
add $4, $1, $1
TAG60:
sw $4, 0($4)
mult $4, $4
beq $4, $4, TAG61
srlv $3, $4, $4
TAG61:
multu $3, $3
bltz $3, TAG62
sb $3, 0($3)
beq $3, $3, TAG62
TAG62:
lui $4, 15
sll $0, $0, 0
srl $4, $3, 13
bne $1, $1, TAG63
TAG63:
mtlo $4
mtlo $4
sb $4, 0($4)
lui $1, 14
TAG64:
addu $3, $1, $1
bne $3, $1, TAG65
sll $0, $0, 0
mfhi $1
TAG65:
sll $0, $0, 0
multu $1, $1
addiu $2, $1, 13
sll $0, $0, 0
TAG66:
lui $1, 9
divu $1, $2
xori $3, $1, 1
mult $3, $1
TAG67:
bgtz $3, TAG68
sll $0, $0, 0
lw $4, 0($3)
lbu $1, 0($3)
TAG68:
beq $1, $1, TAG69
sll $0, $0, 0
sra $2, $1, 14
slti $2, $1, 10
TAG69:
mflo $2
sll $0, $0, 0
multu $1, $1
lui $1, 4
TAG70:
mtlo $1
sll $0, $0, 0
ori $3, $1, 2
lui $1, 9
TAG71:
mfhi $1
addiu $3, $1, 2
mult $1, $1
lui $2, 10
TAG72:
lui $2, 3
sll $0, $0, 0
blez $2, TAG73
sll $0, $0, 0
TAG73:
mthi $2
mthi $2
addu $4, $2, $2
mthi $4
TAG74:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
lui $1, 4
TAG75:
bne $1, $1, TAG76
and $1, $1, $1
bltz $1, TAG76
lui $2, 0
TAG76:
lw $4, 0($2)
multu $2, $4
mflo $1
addu $1, $4, $1
TAG77:
bgtz $1, TAG78
sltiu $1, $1, 8
bltz $1, TAG78
sb $1, 0($1)
TAG78:
sb $1, 0($1)
addu $3, $1, $1
or $1, $3, $1
div $3, $3
TAG79:
lb $1, 0($1)
multu $1, $1
mfhi $1
mfhi $4
TAG80:
lui $1, 15
beq $1, $4, TAG81
mult $4, $4
add $2, $4, $1
TAG81:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG82
multu $1, $2
TAG82:
mult $1, $1
srlv $1, $1, $1
mtlo $1
sll $0, $0, 0
TAG83:
multu $1, $1
ori $2, $1, 10
sll $0, $0, 0
divu $2, $1
TAG84:
div $2, $2
mflo $1
bne $2, $2, TAG85
sb $1, 0($1)
TAG85:
mfhi $4
divu $1, $1
mult $4, $4
mfhi $4
TAG86:
mult $4, $4
multu $4, $4
beq $4, $4, TAG87
mflo $4
TAG87:
sra $3, $4, 5
or $3, $4, $3
beq $3, $3, TAG88
addiu $3, $3, 12
TAG88:
mflo $2
lui $1, 3
mflo $4
divu $3, $1
TAG89:
bne $4, $4, TAG90
mflo $3
sb $3, 0($4)
bgez $3, TAG90
TAG90:
lw $1, 0($3)
bltz $1, TAG91
sh $3, 0($3)
sw $3, -256($1)
TAG91:
sh $1, -256($1)
div $1, $1
mult $1, $1
sra $2, $1, 7
TAG92:
lb $1, 0($2)
lb $4, 0($2)
lbu $3, 0($4)
multu $2, $2
TAG93:
mtlo $3
beq $3, $3, TAG94
multu $3, $3
beq $3, $3, TAG94
TAG94:
lhu $3, 0($3)
mthi $3
xor $4, $3, $3
mthi $4
TAG95:
mthi $4
mthi $4
sra $4, $4, 15
lbu $3, 0($4)
TAG96:
sh $3, 0($3)
beq $3, $3, TAG97
lui $2, 7
lb $2, 0($3)
TAG97:
blez $2, TAG98
sll $0, $0, 0
mflo $4
lui $2, 2
TAG98:
lui $1, 3
sll $0, $0, 0
div $2, $1
bne $2, $2, TAG99
TAG99:
mult $1, $1
mthi $1
mthi $1
lui $2, 12
TAG100:
beq $2, $2, TAG101
sltiu $4, $2, 0
subu $4, $4, $4
lui $2, 12
TAG101:
andi $3, $2, 5
lui $1, 4
sll $0, $0, 0
beq $3, $1, TAG102
TAG102:
andi $1, $2, 5
bgez $2, TAG103
addu $4, $2, $2
blez $2, TAG103
TAG103:
mult $4, $4
bgtz $4, TAG104
sll $0, $0, 0
srav $2, $4, $4
TAG104:
srl $2, $2, 2
sltiu $4, $2, 1
sll $0, $0, 0
sllv $2, $2, $2
TAG105:
sll $0, $0, 0
sllv $4, $2, $1
bne $1, $1, TAG106
mflo $1
TAG106:
bne $1, $1, TAG107
and $2, $1, $1
lhu $2, 0($2)
lui $1, 6
TAG107:
sll $0, $0, 0
mthi $4
lui $4, 5
bne $1, $1, TAG108
TAG108:
divu $4, $4
sll $1, $4, 10
sll $0, $0, 0
subu $2, $1, $1
TAG109:
ori $3, $2, 1
lbu $1, 0($3)
multu $2, $1
mult $1, $1
TAG110:
lui $1, 5
sltiu $2, $1, 0
nor $3, $1, $2
bltz $1, TAG111
TAG111:
addiu $1, $3, 15
sll $0, $0, 0
mfhi $1
beq $1, $1, TAG112
TAG112:
mflo $2
addi $4, $2, 10
slti $1, $4, 11
bgtz $2, TAG113
TAG113:
sb $1, 0($1)
sb $1, 0($1)
lb $3, 0($1)
bltz $1, TAG114
TAG114:
subu $1, $3, $3
sltiu $2, $3, 6
lui $2, 10
bne $2, $1, TAG115
TAG115:
multu $2, $2
lui $3, 7
mult $2, $3
mflo $3
TAG116:
mthi $3
lbu $4, 0($3)
add $2, $3, $4
subu $1, $4, $4
TAG117:
sw $1, 0($1)
blez $1, TAG118
lhu $1, 0($1)
mfhi $4
TAG118:
sll $1, $4, 1
mthi $1
addiu $2, $4, 0
add $4, $4, $2
TAG119:
mthi $4
mtlo $4
mflo $3
sb $4, 0($4)
TAG120:
beq $3, $3, TAG121
mtlo $3
bltz $3, TAG121
mthi $3
TAG121:
mflo $2
lbu $4, 0($2)
multu $3, $4
multu $3, $4
TAG122:
lbu $2, 0($4)
mult $2, $4
bgez $4, TAG123
mult $2, $2
TAG123:
multu $2, $2
mtlo $2
mtlo $2
slt $1, $2, $2
TAG124:
lui $1, 14
blez $1, TAG125
addu $3, $1, $1
mfhi $4
TAG125:
lui $3, 9
bgtz $4, TAG126
sltiu $2, $4, 8
multu $3, $2
TAG126:
mthi $2
lbu $1, 0($2)
mflo $1
bne $1, $1, TAG127
TAG127:
mthi $1
mult $1, $1
multu $1, $1
bgtz $1, TAG128
TAG128:
sll $0, $0, 0
lui $4, 4
blez $3, TAG129
lui $3, 6
TAG129:
bne $3, $3, TAG130
multu $3, $3
bltz $3, TAG130
sll $0, $0, 0
TAG130:
sll $0, $0, 0
mthi $3
slt $2, $4, $4
subu $1, $2, $3
TAG131:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG132:
sll $0, $0, 0
srav $1, $1, $1
xori $1, $1, 7
sll $0, $0, 0
TAG133:
lui $1, 8
xori $4, $1, 3
andi $2, $1, 0
lui $2, 1
TAG134:
mult $2, $2
mult $2, $2
bne $2, $2, TAG135
mtlo $2
TAG135:
beq $2, $2, TAG136
addiu $2, $2, 14
sltiu $2, $2, 14
divu $2, $2
TAG136:
bne $2, $2, TAG137
lui $1, 0
add $3, $1, $1
multu $1, $3
TAG137:
mthi $3
mthi $3
addiu $2, $3, 0
sw $3, 0($3)
TAG138:
beq $2, $2, TAG139
mfhi $3
multu $2, $2
bgez $2, TAG139
TAG139:
lui $1, 9
bgez $1, TAG140
ori $1, $1, 13
lui $4, 5
TAG140:
sll $0, $0, 0
mtlo $4
bltz $4, TAG141
mtlo $4
TAG141:
mflo $3
mtlo $4
slti $1, $3, 1
blez $1, TAG142
TAG142:
sh $1, 0($1)
multu $1, $1
mult $1, $1
sltu $2, $1, $1
TAG143:
bgez $2, TAG144
lbu $1, 0($2)
mult $1, $2
mfhi $1
TAG144:
sh $1, 0($1)
multu $1, $1
beq $1, $1, TAG145
mtlo $1
TAG145:
mfhi $4
bltz $1, TAG146
lb $4, 0($1)
lui $3, 0
TAG146:
srav $1, $3, $3
sltiu $4, $3, 5
and $1, $3, $3
srlv $2, $1, $1
TAG147:
mflo $4
lbu $4, 0($4)
bne $4, $2, TAG148
mfhi $4
TAG148:
multu $4, $4
ori $1, $4, 10
bne $1, $4, TAG149
srlv $2, $4, $1
TAG149:
bltz $2, TAG150
lhu $2, 0($2)
blez $2, TAG150
sh $2, 0($2)
TAG150:
srl $1, $2, 4
beq $1, $2, TAG151
mflo $2
bltz $1, TAG151
TAG151:
sh $2, 0($2)
lui $3, 6
sll $0, $0, 0
sub $1, $2, $2
TAG152:
sw $1, 0($1)
bne $1, $1, TAG153
mthi $1
beq $1, $1, TAG153
TAG153:
mult $1, $1
beq $1, $1, TAG154
sltiu $1, $1, 14
mtlo $1
TAG154:
multu $1, $1
sb $1, 0($1)
slti $3, $1, 2
multu $3, $1
TAG155:
sb $3, 0($3)
sra $4, $3, 3
mthi $4
xor $1, $4, $4
TAG156:
bne $1, $1, TAG157
lw $2, 0($1)
slti $4, $2, 8
multu $4, $1
TAG157:
addiu $4, $4, 5
bltz $4, TAG158
or $1, $4, $4
xori $3, $4, 5
TAG158:
mult $3, $3
blez $3, TAG159
mfhi $4
lh $3, 0($3)
TAG159:
lbu $3, 0($3)
mthi $3
sb $3, 0($3)
mult $3, $3
TAG160:
mult $3, $3
beq $3, $3, TAG161
xori $3, $3, 0
sltiu $2, $3, 2
TAG161:
beq $2, $2, TAG162
ori $3, $2, 4
sra $4, $3, 6
mtlo $4
TAG162:
mflo $3
lui $2, 12
mult $2, $2
blez $4, TAG163
TAG163:
slt $3, $2, $2
mflo $3
mtlo $3
sll $0, $0, 0
TAG164:
mthi $3
add $3, $3, $3
mflo $3
lw $4, 0($3)
TAG165:
sb $4, -256($4)
mflo $2
mthi $4
xori $2, $4, 4
TAG166:
sll $0, $0, 0
sll $2, $2, 7
mthi $2
mthi $2
TAG167:
sll $0, $0, 0
and $1, $2, $2
sltiu $1, $1, 1
sll $0, $0, 0
TAG168:
sllv $4, $2, $2
bltz $4, TAG169
mflo $1
mflo $1
TAG169:
lui $3, 6
lbu $1, 0($1)
lbu $3, 0($1)
lui $4, 10
TAG170:
mtlo $4
nor $4, $4, $4
mult $4, $4
lui $4, 9
TAG171:
addu $1, $4, $4
mfhi $1
sw $1, 0($1)
mflo $4
TAG172:
xori $4, $4, 9
sltiu $2, $4, 9
addiu $1, $4, 4
mtlo $2
TAG173:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
slt $1, $1, $1
TAG174:
slti $3, $1, 0
andi $3, $3, 14
lw $4, 0($3)
sw $3, -256($4)
TAG175:
blez $4, TAG176
andi $4, $4, 15
addi $3, $4, 8
bgez $4, TAG176
TAG176:
mult $3, $3
lw $1, 0($3)
multu $3, $1
lbu $2, 0($3)
TAG177:
blez $2, TAG178
mfhi $1
multu $2, $1
div $2, $2
TAG178:
bgez $1, TAG179
multu $1, $1
sub $4, $1, $1
mthi $4
TAG179:
mflo $3
lb $3, 0($4)
mthi $3
multu $3, $3
TAG180:
add $1, $3, $3
lhu $3, 0($1)
sw $3, 0($3)
lui $4, 4
TAG181:
sll $0, $0, 0
lui $3, 13
nor $4, $3, $4
mtlo $4
TAG182:
blez $4, TAG183
mflo $1
bgez $4, TAG183
sltu $1, $1, $4
TAG183:
mflo $2
xori $2, $2, 10
sll $0, $0, 0
divu $1, $1
TAG184:
multu $2, $2
beq $2, $2, TAG185
andi $3, $2, 4
sub $2, $3, $2
TAG185:
sll $0, $0, 0
blez $2, TAG186
mthi $1
bgez $1, TAG186
TAG186:
sll $0, $0, 0
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG187:
lh $3, 0($3)
srav $3, $3, $3
bne $3, $3, TAG188
addi $3, $3, 4
TAG188:
sb $3, 0($3)
sltiu $4, $3, 5
mtlo $4
slti $2, $4, 5
TAG189:
mult $2, $2
srl $4, $2, 3
mtlo $2
beq $4, $4, TAG190
TAG190:
lui $2, 5
bgez $2, TAG191
mflo $2
bgtz $2, TAG191
TAG191:
and $4, $2, $2
lbu $2, 0($4)
sb $2, 0($2)
sra $4, $4, 13
TAG192:
mtlo $4
addiu $1, $4, 11
lh $4, 0($4)
lui $1, 5
TAG193:
bne $1, $1, TAG194
multu $1, $1
addiu $4, $1, 5
sll $0, $0, 0
TAG194:
sll $2, $4, 4
lui $1, 1
sll $0, $0, 0
mflo $3
TAG195:
lui $4, 9
sll $0, $0, 0
sltiu $3, $3, 11
mthi $4
TAG196:
blez $3, TAG197
mfhi $3
bne $3, $3, TAG197
mthi $3
TAG197:
mtlo $3
bgtz $3, TAG198
mthi $3
mthi $3
TAG198:
lui $4, 3
blez $3, TAG199
sra $1, $3, 13
mthi $4
TAG199:
addu $2, $1, $1
divu $2, $2
sh $1, 0($1)
mfhi $1
TAG200:
bne $1, $1, TAG201
mfhi $4
bltz $4, TAG201
mflo $3
TAG201:
lb $2, 0($3)
bne $3, $2, TAG202
divu $3, $3
sh $2, 0($2)
TAG202:
beq $2, $2, TAG203
mfhi $2
beq $2, $2, TAG203
sh $2, 0($2)
TAG203:
sh $2, 0($2)
sh $2, 0($2)
sh $2, 0($2)
add $3, $2, $2
TAG204:
srlv $3, $3, $3
blez $3, TAG205
xori $3, $3, 11
addiu $2, $3, 7
TAG205:
lui $3, 1
sll $0, $0, 0
lui $2, 15
subu $2, $2, $1
TAG206:
lui $1, 12
mthi $2
mtlo $1
subu $2, $2, $2
TAG207:
bne $2, $2, TAG208
lui $2, 1
xori $2, $2, 5
sllv $2, $2, $2
TAG208:
mfhi $1
sltu $1, $1, $2
subu $1, $2, $1
sll $0, $0, 0
TAG209:
sltiu $1, $4, 9
mfhi $3
mfhi $4
sll $0, $0, 0
TAG210:
mthi $4
lui $3, 1
or $1, $4, $3
lui $4, 13
TAG211:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $4
beq $4, $1, TAG212
TAG212:
sltiu $3, $1, 9
lui $2, 9
bgtz $1, TAG213
addiu $4, $1, 15
TAG213:
addiu $3, $4, 3
sll $0, $0, 0
andi $1, $2, 9
sll $0, $0, 0
TAG214:
mult $1, $1
mult $1, $1
sllv $4, $1, $1
sh $1, 0($1)
TAG215:
lw $3, 0($4)
beq $3, $3, TAG216
lhu $1, 0($4)
mult $1, $3
TAG216:
multu $1, $1
lh $1, 0($1)
slt $1, $1, $1
mflo $4
TAG217:
xor $2, $4, $4
multu $4, $4
sb $2, 0($4)
beq $4, $2, TAG218
TAG218:
sb $2, 0($2)
bne $2, $2, TAG219
mtlo $2
sb $2, 0($2)
TAG219:
sw $2, 0($2)
sw $2, 0($2)
mult $2, $2
subu $4, $2, $2
TAG220:
bne $4, $4, TAG221
lui $3, 2
mtlo $3
andi $2, $4, 6
TAG221:
blez $2, TAG222
lui $3, 5
bne $3, $2, TAG222
addi $2, $3, 9
TAG222:
sw $2, 0($2)
sh $2, 0($2)
slti $4, $2, 7
xori $4, $2, 0
TAG223:
mult $4, $4
lui $2, 12
sll $0, $0, 0
bne $2, $4, TAG224
TAG224:
lui $3, 8
sll $0, $0, 0
beq $2, $3, TAG225
sll $0, $0, 0
TAG225:
divu $3, $3
sll $0, $0, 0
lui $4, 3
blez $1, TAG226
TAG226:
sll $0, $0, 0
srl $2, $4, 4
lhu $4, -12288($2)
bne $4, $4, TAG227
TAG227:
lui $4, 8
bne $4, $4, TAG228
sll $0, $0, 0
lui $2, 10
TAG228:
lui $1, 9
sll $0, $0, 0
bne $2, $2, TAG229
mtlo $2
TAG229:
sll $0, $0, 0
sll $2, $2, 13
xori $3, $1, 5
lui $3, 8
TAG230:
srav $1, $3, $3
bne $1, $1, TAG231
mfhi $3
mtlo $3
TAG231:
blez $3, TAG232
sh $3, 0($3)
bltz $3, TAG232
lhu $4, 0($3)
TAG232:
divu $4, $4
divu $4, $4
blez $4, TAG233
addiu $3, $4, 14
TAG233:
sll $4, $3, 15
sll $0, $0, 0
bne $3, $2, TAG234
mflo $1
TAG234:
lui $2, 0
bne $2, $2, TAG235
mfhi $4
mfhi $1
TAG235:
bltz $1, TAG236
sb $1, 0($1)
addiu $4, $1, 4
bgez $4, TAG236
TAG236:
sllv $4, $4, $4
lb $3, 0($4)
multu $4, $3
div $4, $4
TAG237:
lhu $3, 0($3)
addiu $1, $3, 3
lui $1, 4
mfhi $4
TAG238:
mtlo $4
lui $4, 0
bgtz $4, TAG239
lui $2, 7
TAG239:
lui $2, 5
subu $1, $2, $2
srlv $1, $2, $2
mfhi $4
TAG240:
sh $4, 0($4)
addi $4, $4, 11
lui $3, 4
sll $0, $0, 0
TAG241:
srav $1, $3, $3
sll $0, $0, 0
lui $3, 3
mult $3, $1
TAG242:
lui $2, 14
and $1, $3, $2
beq $1, $2, TAG243
mfhi $2
TAG243:
bgtz $2, TAG244
mthi $2
lui $4, 11
mtlo $2
TAG244:
mthi $4
or $3, $4, $4
lb $2, 0($3)
mthi $4
TAG245:
multu $2, $2
beq $2, $2, TAG246
lb $2, 0($2)
ori $2, $2, 5
TAG246:
mtlo $2
addiu $2, $2, 14
bgtz $2, TAG247
mthi $2
TAG247:
addu $4, $2, $2
mflo $2
mthi $2
beq $2, $2, TAG248
TAG248:
sh $2, 0($2)
bne $2, $2, TAG249
sra $1, $2, 3
sltu $2, $1, $2
TAG249:
mthi $2
slti $3, $2, 14
sh $2, 0($2)
beq $3, $3, TAG250
TAG250:
or $3, $3, $3
div $3, $3
bne $3, $3, TAG251
mflo $1
TAG251:
addiu $2, $1, 6
bne $2, $2, TAG252
mthi $2
slt $4, $1, $1
TAG252:
mfhi $2
ori $4, $2, 13
mtlo $2
blez $4, TAG253
TAG253:
srlv $1, $4, $4
mfhi $4
sltiu $3, $4, 3
multu $3, $4
TAG254:
mthi $3
add $2, $3, $3
bne $3, $2, TAG255
multu $2, $3
TAG255:
mfhi $4
nor $2, $4, $4
nor $3, $2, $4
multu $2, $3
TAG256:
bgez $3, TAG257
srav $2, $3, $3
bgez $2, TAG257
lhu $1, 0($3)
TAG257:
srav $2, $1, $1
addu $1, $1, $2
lh $4, 0($1)
xori $4, $1, 8
TAG258:
mult $4, $4
divu $4, $4
slti $2, $4, 6
sw $2, 0($2)
TAG259:
multu $2, $2
mfhi $1
bltz $1, TAG260
mtlo $2
TAG260:
lhu $2, 0($1)
bne $2, $2, TAG261
srav $3, $2, $2
sltu $4, $2, $3
TAG261:
beq $4, $4, TAG262
mult $4, $4
slt $1, $4, $4
multu $1, $4
TAG262:
sb $1, 0($1)
xor $4, $1, $1
andi $1, $1, 12
bne $1, $1, TAG263
TAG263:
lw $3, 0($1)
mthi $3
srav $2, $1, $1
lui $4, 2
TAG264:
srl $3, $4, 1
mult $3, $3
lui $3, 15
srl $2, $4, 7
TAG265:
bne $2, $2, TAG266
sw $2, -1024($2)
mult $2, $2
bgez $2, TAG266
TAG266:
ori $2, $2, 9
lui $2, 9
sll $0, $0, 0
sll $0, $0, 0
TAG267:
bgtz $2, TAG268
mflo $4
srlv $4, $2, $4
lui $3, 11
TAG268:
sll $0, $0, 0
mtlo $3
mflo $3
blez $3, TAG269
TAG269:
addu $1, $3, $3
mflo $4
mthi $1
mult $3, $4
TAG270:
mfhi $3
lui $2, 2
multu $3, $2
lui $3, 0
TAG271:
bltz $3, TAG272
lui $4, 13
bgez $4, TAG272
lui $2, 9
TAG272:
sll $4, $2, 7
divu $4, $2
xor $3, $2, $2
sll $3, $2, 14
TAG273:
sll $0, $0, 0
bne $3, $3, TAG274
addiu $2, $3, 7
mtlo $3
TAG274:
sll $0, $0, 0
lui $3, 4
mfhi $1
sll $0, $0, 0
TAG275:
sb $1, 0($1)
mflo $4
srl $2, $1, 0
mtlo $4
TAG276:
bgtz $2, TAG277
mult $2, $2
and $2, $2, $2
xori $3, $2, 6
TAG277:
srl $1, $3, 3
mfhi $4
mfhi $4
sh $1, 0($3)
TAG278:
sw $4, 0($4)
beq $4, $4, TAG279
lui $4, 2
sb $4, 0($4)
TAG279:
mthi $4
mfhi $4
addiu $1, $4, 12
slt $4, $4, $4
TAG280:
blez $4, TAG281
lb $3, 0($4)
ori $3, $4, 15
srlv $2, $3, $4
TAG281:
beq $2, $2, TAG282
mflo $4
srlv $4, $4, $4
mflo $3
TAG282:
mtlo $3
lw $1, 0($3)
srl $4, $3, 15
lui $3, 6
TAG283:
sll $4, $3, 11
lui $4, 11
sll $0, $0, 0
mfhi $2
TAG284:
sllv $3, $2, $2
sltiu $4, $2, 2
bltz $4, TAG285
lui $2, 9
TAG285:
sll $0, $0, 0
addiu $4, $2, 13
sll $0, $0, 0
lui $2, 10
TAG286:
mfhi $4
lui $4, 8
mult $4, $2
addiu $1, $2, 11
TAG287:
divu $1, $1
mfhi $4
mtlo $4
bne $1, $4, TAG288
TAG288:
lui $1, 7
sra $1, $1, 13
lui $1, 4
mfhi $1
TAG289:
lui $1, 13
srav $4, $1, $1
sll $0, $0, 0
mtlo $1
TAG290:
sll $0, $0, 0
srav $3, $4, $4
sll $0, $0, 0
lui $1, 10
TAG291:
bne $1, $1, TAG292
mflo $2
mthi $2
mult $1, $1
TAG292:
mthi $2
bltz $2, TAG293
sll $0, $0, 0
sra $3, $2, 7
TAG293:
sll $0, $0, 0
bgtz $1, TAG294
sll $0, $0, 0
or $1, $1, $4
TAG294:
sll $0, $0, 0
slt $1, $1, $1
sh $1, 0($1)
bgtz $1, TAG295
TAG295:
mult $1, $1
lui $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG296:
slti $4, $1, 6
mflo $4
beq $4, $4, TAG297
mthi $1
TAG297:
lw $4, 0($4)
lbu $3, 0($4)
lui $4, 9
xori $1, $4, 0
TAG298:
bgez $1, TAG299
sll $0, $0, 0
beq $4, $4, TAG299
multu $1, $4
TAG299:
div $4, $4
bgez $4, TAG300
addiu $1, $4, 8
beq $4, $1, TAG300
TAG300:
mult $1, $1
bgtz $1, TAG301
mtlo $1
bne $1, $1, TAG301
TAG301:
mflo $3
sll $0, $0, 0
mflo $2
and $3, $2, $3
TAG302:
sll $0, $0, 0
sra $3, $4, 1
sll $4, $4, 5
sll $0, $0, 0
TAG303:
mtlo $1
divu $1, $1
beq $1, $1, TAG304
sll $0, $0, 0
TAG304:
lui $3, 8
lui $3, 7
divu $3, $3
addu $3, $3, $3
TAG305:
xor $3, $3, $3
or $3, $3, $3
lui $3, 5
blez $3, TAG306
TAG306:
mfhi $1
mflo $2
and $3, $3, $3
bltz $2, TAG307
TAG307:
lui $2, 2
sll $0, $0, 0
lui $2, 8
mult $3, $3
TAG308:
mfhi $3
lb $3, 0($3)
blez $3, TAG309
lui $2, 4
TAG309:
mfhi $1
div $2, $2
mult $1, $2
lui $1, 9
TAG310:
mfhi $4
mtlo $1
blez $4, TAG311
subu $2, $4, $1
TAG311:
lui $2, 12
sra $2, $2, 15
lhu $4, 0($2)
sltiu $4, $4, 15
TAG312:
lb $4, 0($4)
mthi $4
sh $4, 0($4)
bgtz $4, TAG313
TAG313:
xori $4, $4, 2
bgtz $4, TAG314
mfhi $3
sb $4, 0($4)
TAG314:
lui $4, 7
bgez $3, TAG315
andi $4, $4, 9
blez $3, TAG315
TAG315:
mflo $3
ori $2, $3, 14
mult $2, $4
sll $0, $0, 0
TAG316:
mflo $2
lui $1, 15
lhu $3, 0($2)
mult $1, $2
TAG317:
srl $3, $3, 15
sb $3, 0($3)
multu $3, $3
mtlo $3
TAG318:
mthi $3
mfhi $3
lh $1, 0($3)
andi $1, $3, 13
TAG319:
mfhi $3
lb $4, 0($1)
mtlo $1
slti $2, $3, 2
TAG320:
addu $3, $2, $2
ori $3, $2, 13
mfhi $3
bgtz $3, TAG321
TAG321:
mult $3, $3
lb $4, 0($3)
bne $4, $4, TAG322
addiu $3, $4, 4
TAG322:
mfhi $4
sh $4, 0($4)
lui $3, 10
lui $2, 9
TAG323:
mult $2, $2
mflo $2
bne $2, $2, TAG324
sh $2, 0($2)
TAG324:
lui $2, 6
slt $2, $2, $2
lhu $1, 0($2)
sllv $2, $2, $2
TAG325:
lbu $4, 0($2)
blez $2, TAG326
sh $4, 0($4)
bne $2, $2, TAG326
TAG326:
mflo $2
lui $1, 13
multu $2, $4
mtlo $1
TAG327:
mfhi $3
blez $3, TAG328
mtlo $1
lui $4, 4
TAG328:
mflo $1
sw $1, 0($4)
sb $1, 0($4)
lui $4, 4
TAG329:
lui $2, 8
beq $2, $4, TAG330
mtlo $4
mfhi $3
TAG330:
and $4, $3, $3
mult $3, $3
beq $4, $3, TAG331
mult $3, $3
TAG331:
mtlo $4
bgtz $4, TAG332
srl $4, $4, 4
mthi $4
TAG332:
bne $4, $4, TAG333
sh $4, 0($4)
lb $1, 0($4)
xori $2, $4, 15
TAG333:
bne $2, $2, TAG334
lui $4, 0
mthi $4
blez $4, TAG334
TAG334:
sub $2, $4, $4
lhu $3, 0($4)
sw $2, 0($3)
mult $3, $2
TAG335:
mtlo $3
mflo $1
mfhi $4
mthi $4
TAG336:
lw $2, 0($4)
mflo $3
beq $3, $4, TAG337
mthi $4
TAG337:
sb $3, 0($3)
addi $1, $3, 10
lbu $2, 0($1)
ori $1, $3, 6
TAG338:
lui $3, 8
mult $1, $3
blez $3, TAG339
lui $3, 1
TAG339:
blez $3, TAG340
mflo $4
sll $0, $0, 0
mfhi $3
TAG340:
slti $1, $3, 6
bgez $1, TAG341
mtlo $3
addi $4, $3, 7
TAG341:
bgez $4, TAG342
slti $1, $4, 2
mflo $3
addiu $3, $1, 0
TAG342:
beq $3, $3, TAG343
multu $3, $3
lui $4, 4
mthi $4
TAG343:
bne $4, $4, TAG344
mtlo $4
beq $4, $4, TAG344
lui $3, 4
TAG344:
divu $3, $3
xori $3, $3, 6
beq $3, $3, TAG345
sll $0, $0, 0
TAG345:
mult $3, $3
lui $1, 4
bne $1, $1, TAG346
mult $1, $1
TAG346:
mthi $1
mthi $1
sll $3, $1, 8
addiu $2, $3, 12
TAG347:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
multu $2, $2
TAG348:
srlv $3, $2, $2
blez $3, TAG349
sll $0, $0, 0
sll $0, $0, 0
TAG349:
or $1, $3, $3
xor $1, $1, $1
mtlo $3
bgtz $1, TAG350
TAG350:
multu $1, $1
bgtz $1, TAG351
lui $1, 14
multu $1, $1
TAG351:
lui $1, 4
sltu $2, $1, $1
bltz $1, TAG352
subu $2, $1, $1
TAG352:
lui $4, 2
multu $4, $2
mfhi $2
blez $2, TAG353
TAG353:
mult $2, $2
blez $2, TAG354
lui $3, 13
ori $3, $3, 0
TAG354:
lui $1, 15
subu $1, $3, $3
multu $1, $1
sb $3, 0($1)
TAG355:
lbu $2, 0($1)
lbu $2, 0($1)
lui $1, 12
lui $2, 10
TAG356:
mfhi $4
mtlo $2
blez $2, TAG357
sll $0, $0, 0
TAG357:
mflo $4
multu $4, $1
mthi $1
mtlo $1
TAG358:
sll $0, $0, 0
divu $4, $4
addu $3, $4, $4
sll $0, $0, 0
TAG359:
beq $3, $3, TAG360
sll $0, $0, 0
sb $3, 0($3)
addi $2, $3, 15
TAG360:
sll $0, $0, 0
bne $2, $2, TAG361
multu $2, $2
bgtz $2, TAG361
TAG361:
sll $0, $0, 0
sra $2, $2, 3
mflo $1
sltiu $2, $1, 6
TAG362:
mflo $1
beq $2, $2, TAG363
sb $2, 0($2)
blez $2, TAG363
TAG363:
lh $1, 0($1)
addiu $4, $1, 9
bgez $1, TAG364
addiu $4, $1, 1
TAG364:
blez $4, TAG365
mfhi $4
mthi $4
lui $3, 10
TAG365:
sltiu $2, $3, 10
sw $3, 0($2)
ori $1, $2, 1
lui $1, 1
TAG366:
bne $1, $1, TAG367
addiu $2, $1, 8
mtlo $2
addu $4, $2, $2
TAG367:
beq $4, $4, TAG368
lui $2, 6
lui $2, 11
xor $3, $2, $2
TAG368:
blez $3, TAG369
sll $0, $0, 0
mflo $1
bgtz $3, TAG369
TAG369:
mult $1, $1
sll $0, $0, 0
slt $1, $2, $2
addiu $3, $1, 6
TAG370:
sltiu $2, $3, 7
lui $3, 6
mthi $3
lb $1, 0($2)
TAG371:
lh $4, 0($1)
nor $2, $1, $1
beq $2, $2, TAG372
multu $2, $2
TAG372:
mfhi $4
lhu $2, 1($2)
lh $3, 2($4)
lui $1, 2
TAG373:
mflo $4
bltz $4, TAG374
srav $2, $1, $4
sb $2, 0($4)
TAG374:
sll $0, $0, 0
srl $3, $2, 11
sll $0, $0, 0
divu $3, $2
TAG375:
mtlo $4
andi $1, $4, 9
sltiu $2, $4, 12
lbu $2, 0($2)
TAG376:
bne $2, $2, TAG377
sh $2, 0($2)
mult $2, $2
blez $2, TAG377
TAG377:
sra $4, $2, 2
bne $2, $4, TAG378
mtlo $2
blez $4, TAG378
TAG378:
mthi $4
lh $1, 0($4)
ori $1, $4, 0
sb $1, 0($1)
TAG379:
multu $1, $1
sw $1, 0($1)
mult $1, $1
mult $1, $1
TAG380:
mfhi $4
mfhi $1
mflo $1
sh $4, 0($4)
TAG381:
lbu $4, 0($1)
beq $4, $4, TAG382
lui $4, 6
lui $2, 7
TAG382:
lui $2, 6
mfhi $3
mtlo $2
lui $2, 3
TAG383:
srl $3, $2, 13
bgtz $2, TAG384
xor $4, $2, $3
mflo $3
TAG384:
mflo $3
mthi $3
lui $1, 3
sll $0, $0, 0
TAG385:
mthi $1
divu $1, $1
bgtz $1, TAG386
sra $1, $1, 12
TAG386:
bgtz $1, TAG387
mult $1, $1
bltz $1, TAG387
mflo $4
TAG387:
divu $4, $4
xor $2, $4, $4
lui $1, 14
lui $1, 15
TAG388:
sll $0, $0, 0
bgtz $1, TAG389
mult $1, $1
lb $1, 0($1)
TAG389:
lui $1, 11
beq $1, $1, TAG390
lui $1, 12
divu $1, $1
TAG390:
mtlo $1
ori $1, $1, 13
addiu $4, $1, 5
sll $0, $0, 0
TAG391:
divu $1, $1
addiu $4, $1, 12
bltz $1, TAG392
multu $1, $1
TAG392:
div $4, $4
mthi $4
bgez $4, TAG393
xor $1, $4, $4
TAG393:
mfhi $1
mflo $3
sll $0, $0, 0
lb $3, 0($3)
TAG394:
sb $3, 0($3)
sltu $3, $3, $3
multu $3, $3
mthi $3
TAG395:
mtlo $3
mtlo $3
mflo $1
nor $4, $3, $1
TAG396:
mfhi $1
mtlo $1
mult $4, $1
mfhi $2
TAG397:
sh $2, 0($2)
beq $2, $2, TAG398
mult $2, $2
addi $4, $2, 4
TAG398:
addiu $3, $4, 10
srav $1, $3, $4
beq $3, $1, TAG399
divu $1, $4
TAG399:
sllv $4, $1, $1
lw $2, 0($4)
sw $1, 0($4)
multu $4, $2
TAG400:
mult $2, $2
addu $4, $2, $2
mtlo $4
sltu $3, $4, $2
TAG401:
bne $3, $3, TAG402
sw $3, 0($3)
sb $3, 0($3)
or $4, $3, $3
TAG402:
srl $4, $4, 13
xori $2, $4, 6
lhu $3, 0($4)
lui $4, 4
TAG403:
and $3, $4, $4
sll $0, $0, 0
slti $2, $3, 15
bne $3, $3, TAG404
TAG404:
mflo $3
sw $2, 0($2)
addiu $4, $2, 0
sh $2, 0($3)
TAG405:
bgtz $4, TAG406
mthi $4
sb $4, 0($4)
mthi $4
TAG406:
mult $4, $4
mflo $3
mfhi $4
mthi $4
TAG407:
ori $4, $4, 14
mflo $3
xor $2, $4, $3
mtlo $2
TAG408:
lhu $1, 0($2)
addiu $2, $2, 15
div $2, $2
sb $1, 0($2)
TAG409:
mthi $2
lui $1, 6
lui $1, 1
bne $1, $1, TAG410
TAG410:
lui $1, 5
bltz $1, TAG411
lui $4, 4
divu $1, $1
TAG411:
mult $4, $4
sltu $3, $4, $4
lui $3, 6
sra $4, $3, 6
TAG412:
bgez $4, TAG413
sb $4, -6144($4)
sw $4, 0($4)
lui $3, 6
TAG413:
sltiu $4, $3, 10
mthi $3
sw $4, 0($4)
mtlo $3
TAG414:
multu $4, $4
mult $4, $4
mult $4, $4
bne $4, $4, TAG415
TAG415:
mtlo $4
beq $4, $4, TAG416
sw $4, 0($4)
mfhi $3
TAG416:
mfhi $2
sll $3, $3, 1
andi $3, $2, 2
mflo $1
TAG417:
mtlo $1
sllv $3, $1, $1
lui $1, 1
sll $0, $0, 0
TAG418:
multu $3, $3
mfhi $2
mfhi $2
lui $3, 6
TAG419:
mthi $3
lui $1, 9
xor $3, $1, $1
multu $3, $1
TAG420:
srl $1, $3, 7
addiu $1, $1, 1
beq $1, $3, TAG421
mtlo $1
TAG421:
lbu $3, 0($1)
srl $2, $3, 14
bne $1, $1, TAG422
mult $3, $1
TAG422:
lh $1, 0($2)
mthi $2
mfhi $4
andi $3, $4, 2
TAG423:
bgtz $3, TAG424
lui $2, 15
mthi $3
sll $0, $0, 0
TAG424:
sll $0, $0, 0
mtlo $2
srlv $1, $2, $2
mflo $3
TAG425:
xori $3, $3, 4
div $3, $3
bgez $3, TAG426
mtlo $3
TAG426:
mtlo $3
sll $0, $0, 0
multu $3, $3
bltz $3, TAG427
TAG427:
mflo $1
bne $3, $1, TAG428
addu $4, $1, $1
sllv $1, $4, $4
TAG428:
sll $0, $0, 0
addu $3, $1, $1
lui $3, 4
bltz $3, TAG429
TAG429:
mthi $3
sll $2, $3, 14
mfhi $1
bgtz $3, TAG430
TAG430:
mult $1, $1
mfhi $3
xori $2, $1, 5
lui $1, 7
TAG431:
sll $0, $0, 0
mflo $2
lui $1, 6
beq $1, $1, TAG432
TAG432:
sll $0, $0, 0
sll $0, $0, 0
ori $2, $1, 8
addiu $1, $1, 5
TAG433:
div $1, $1
and $1, $1, $1
beq $1, $1, TAG434
divu $1, $1
TAG434:
sll $0, $0, 0
bne $1, $4, TAG435
mthi $4
lui $1, 11
TAG435:
bne $1, $1, TAG436
div $1, $1
slti $1, $1, 8
mult $1, $1
TAG436:
mtlo $1
sra $1, $1, 11
mflo $1
lw $3, 0($1)
TAG437:
sh $3, 0($3)
sh $3, 0($3)
mtlo $3
sra $4, $3, 5
TAG438:
nor $1, $4, $4
lui $3, 5
bltz $4, TAG439
sb $4, 0($4)
TAG439:
mthi $3
srlv $2, $3, $3
beq $2, $2, TAG440
sllv $3, $2, $3
TAG440:
beq $3, $3, TAG441
div $3, $3
sb $3, 0($3)
srl $1, $3, 12
TAG441:
multu $1, $1
mtlo $1
slt $3, $1, $1
bgez $3, TAG442
TAG442:
andi $4, $3, 4
mfhi $4
bgez $3, TAG443
lui $4, 7
TAG443:
mfhi $3
sll $0, $0, 0
beq $3, $2, TAG444
lui $2, 4
TAG444:
slt $2, $2, $2
sw $2, 0($2)
bne $2, $2, TAG445
sub $4, $2, $2
TAG445:
sra $1, $4, 4
andi $4, $1, 3
mflo $2
sh $1, 0($1)
TAG446:
multu $2, $2
beq $2, $2, TAG447
mfhi $4
sb $4, 0($4)
TAG447:
sll $0, $0, 0
lbu $4, 2($4)
bgtz $4, TAG448
sra $3, $4, 5
TAG448:
lui $1, 9
bltz $1, TAG449
mtlo $3
sw $3, 0($3)
TAG449:
mult $1, $1
sra $1, $1, 14
blez $1, TAG450
slti $4, $1, 7
TAG450:
mthi $4
lbu $4, 0($4)
addu $1, $4, $4
bgez $1, TAG451
TAG451:
mflo $3
mflo $4
srlv $1, $1, $3
mflo $3
TAG452:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
or $1, $1, $1
TAG453:
lb $4, 0($1)
or $4, $4, $1
bgez $4, TAG454
mthi $4
TAG454:
mtlo $4
andi $3, $4, 12
bne $4, $4, TAG455
mtlo $3
TAG455:
mfhi $1
bltz $1, TAG456
mtlo $1
mthi $3
TAG456:
mthi $1
lbu $2, 0($1)
blez $1, TAG457
mtlo $1
TAG457:
add $3, $2, $2
mult $3, $3
lui $1, 5
bgez $2, TAG458
TAG458:
sll $0, $0, 0
blez $1, TAG459
lui $3, 7
lui $3, 15
TAG459:
addu $1, $3, $3
lui $1, 5
bne $3, $1, TAG460
sll $0, $0, 0
TAG460:
sb $4, 0($4)
bne $4, $4, TAG461
lbu $1, 0($4)
blez $1, TAG461
TAG461:
lui $2, 9
beq $1, $2, TAG462
sb $1, 0($1)
sll $0, $0, 0
TAG462:
lui $3, 13
divu $3, $2
beq $3, $2, TAG463
andi $3, $2, 0
TAG463:
mflo $1
bgtz $3, TAG464
lhu $3, 0($3)
sh $3, 0($3)
TAG464:
lui $1, 13
mflo $4
slti $4, $4, 13
lui $2, 1
TAG465:
lui $3, 9
sll $0, $0, 0
sll $1, $3, 3
beq $3, $3, TAG466
TAG466:
sltiu $4, $1, 3
sll $0, $0, 0
srav $3, $1, $4
mthi $4
TAG467:
bgtz $3, TAG468
mfhi $3
mtlo $3
blez $3, TAG468
TAG468:
sw $3, 0($3)
mflo $4
bne $4, $4, TAG469
sub $3, $3, $3
TAG469:
xori $4, $3, 14
slti $2, $3, 6
slti $1, $4, 3
lui $3, 5
TAG470:
sll $0, $0, 0
sltu $3, $3, $3
mtlo $3
mtlo $3
TAG471:
beq $3, $3, TAG472
srlv $2, $3, $3
bne $2, $2, TAG472
sub $2, $2, $2
TAG472:
mthi $2
multu $2, $2
bne $2, $2, TAG473
slt $4, $2, $2
TAG473:
lui $2, 11
sh $4, 0($4)
sll $3, $4, 12
sll $0, $0, 0
TAG474:
mtlo $4
bne $4, $4, TAG475
srl $1, $4, 10
sh $1, 0($1)
TAG475:
sll $1, $1, 0
mfhi $4
beq $1, $1, TAG476
mult $1, $4
TAG476:
lui $1, 13
or $4, $4, $1
sll $0, $0, 0
sll $0, $0, 0
TAG477:
subu $4, $4, $4
and $3, $4, $4
lui $1, 12
lb $2, 0($4)
TAG478:
sh $2, 0($2)
sh $2, 0($2)
bltz $2, TAG479
lh $2, 0($2)
TAG479:
mthi $2
lb $1, 0($2)
lui $1, 15
srl $3, $1, 13
TAG480:
sw $3, 0($3)
bgez $3, TAG481
mult $3, $3
sb $3, 0($3)
TAG481:
sll $3, $3, 2
xor $2, $3, $3
bgtz $3, TAG482
mfhi $4
TAG482:
multu $4, $4
lui $2, 0
lw $3, 0($2)
lb $1, 0($4)
TAG483:
lb $1, 0($1)
bltz $1, TAG484
lui $2, 9
lbu $3, 0($1)
TAG484:
mflo $1
mtlo $3
addi $1, $3, 3
lui $3, 14
TAG485:
lui $2, 15
mthi $3
sll $0, $0, 0
mtlo $3
TAG486:
mtlo $3
mthi $3
beq $3, $3, TAG487
mtlo $3
TAG487:
multu $3, $3
subu $1, $3, $3
mult $1, $3
mthi $1
TAG488:
xori $4, $1, 12
sb $4, 0($4)
lw $1, 0($1)
mult $1, $1
TAG489:
beq $1, $1, TAG490
sltu $3, $1, $1
lb $3, 0($3)
lbu $4, 0($3)
TAG490:
lui $1, 7
sh $1, 0($4)
sw $4, 0($4)
mflo $2
TAG491:
multu $2, $2
mthi $2
sh $2, 0($2)
addi $3, $2, 12
TAG492:
bltz $3, TAG493
lui $1, 11
blez $1, TAG493
mthi $3
TAG493:
divu $1, $1
div $1, $1
div $1, $1
bgtz $1, TAG494
TAG494:
sll $0, $0, 0
mult $1, $1
sw $1, 0($4)
blez $4, TAG495
TAG495:
lui $3, 5
subu $1, $3, $4
addiu $2, $3, 4
mthi $4
TAG496:
xor $1, $2, $2
mfhi $1
sll $0, $0, 0
bgtz $1, TAG497
TAG497:
lui $3, 2
mtlo $3
ori $4, $1, 3
mfhi $2
TAG498:
bltz $2, TAG499
divu $2, $2
mtlo $2
addiu $4, $2, 7
TAG499:
bne $4, $4, TAG500
lui $2, 15
mthi $4
lui $1, 0
TAG500:
slti $4, $1, 14
multu $4, $1
lui $4, 4
sll $0, $0, 0
TAG501:
div $4, $4
mfhi $2
div $2, $4
mthi $2
TAG502:
bltz $2, TAG503
mfhi $3
sltiu $4, $2, 9
multu $3, $3
TAG503:
lb $3, 0($4)
xor $3, $3, $4
sb $3, 0($3)
sb $3, 0($3)
TAG504:
bgtz $3, TAG505
lui $2, 15
mtlo $2
bgtz $3, TAG505
TAG505:
addiu $2, $2, 11
subu $2, $2, $2
lui $3, 4
mtlo $3
TAG506:
mfhi $2
lui $2, 8
bgtz $2, TAG507
sll $0, $0, 0
TAG507:
xor $1, $2, $2
sra $3, $2, 13
beq $2, $1, TAG508
sll $0, $0, 0
TAG508:
srlv $3, $3, $3
div $3, $3
slti $4, $3, 4
addiu $3, $3, 11
TAG509:
blez $3, TAG510
andi $3, $3, 8
mfhi $4
srl $2, $3, 15
TAG510:
sw $2, 0($2)
addi $1, $2, 5
and $3, $2, $1
mfhi $4
TAG511:
sra $3, $4, 9
bgez $4, TAG512
addiu $4, $3, 4
bltz $4, TAG512
TAG512:
lhu $4, 0($4)
mtlo $4
sll $1, $4, 1
lui $4, 13
TAG513:
mfhi $3
mtlo $3
mtlo $4
bltz $3, TAG514
TAG514:
lbu $1, 0($3)
mult $3, $1
bltz $1, TAG515
add $1, $3, $3
TAG515:
lbu $1, 0($1)
beq $1, $1, TAG516
mthi $1
sltu $3, $1, $1
TAG516:
lhu $3, 0($3)
lui $1, 8
andi $4, $1, 12
lui $1, 12
TAG517:
bne $1, $1, TAG518
sll $3, $1, 12
bne $3, $3, TAG518
srlv $1, $3, $3
TAG518:
mflo $1
addiu $3, $1, 6
slt $1, $1, $1
lh $4, 0($1)
TAG519:
mfhi $1
mthi $1
lui $4, 15
blez $1, TAG520
TAG520:
mflo $3
bgez $4, TAG521
addu $1, $4, $3
mfhi $1
TAG521:
sll $0, $0, 0
mfhi $2
lui $2, 6
bgtz $2, TAG522
TAG522:
xori $4, $2, 4
mthi $4
subu $2, $4, $2
beq $2, $4, TAG523
TAG523:
lui $1, 4
sw $1, 0($2)
bne $2, $1, TAG524
div $1, $2
TAG524:
mtlo $1
sll $0, $0, 0
bne $2, $2, TAG525
lbu $3, 0($2)
TAG525:
mfhi $4
mfhi $2
mflo $4
divu $3, $4
TAG526:
divu $4, $4
sll $0, $0, 0
lui $3, 14
lui $2, 0
TAG527:
bne $2, $2, TAG528
srav $4, $2, $2
mfhi $4
ori $3, $4, 14
TAG528:
sh $3, 0($3)
subu $2, $3, $3
lhu $3, 0($3)
sh $3, 0($3)
TAG529:
mult $3, $3
lhu $2, 0($3)
lui $2, 12
addu $2, $2, $2
TAG530:
bne $2, $2, TAG531
sll $0, $0, 0
lui $1, 5
div $1, $2
TAG531:
lui $1, 0
beq $1, $1, TAG532
addi $3, $1, 13
beq $1, $1, TAG532
TAG532:
lbu $3, 0($3)
mthi $3
multu $3, $3
beq $3, $3, TAG533
TAG533:
mtlo $3
lui $3, 0
lh $2, 0($3)
mult $3, $3
TAG534:
sw $2, 0($2)
bgez $2, TAG535
slti $3, $2, 1
mtlo $3
TAG535:
lui $4, 4
srlv $1, $4, $4
sll $4, $3, 14
addiu $4, $4, 13
TAG536:
bgez $4, TAG537
slti $4, $4, 12
mthi $4
div $4, $4
TAG537:
sh $4, 0($4)
beq $4, $4, TAG538
mult $4, $4
subu $4, $4, $4
TAG538:
mfhi $2
mtlo $4
bgtz $4, TAG539
srav $4, $2, $4
TAG539:
multu $4, $4
sw $4, 0($4)
mfhi $4
mtlo $4
TAG540:
lui $3, 8
lui $4, 7
lui $3, 12
xor $4, $4, $3
TAG541:
sll $0, $0, 0
mtlo $4
and $4, $4, $4
mfhi $4
TAG542:
sub $3, $4, $4
mtlo $4
bgtz $3, TAG543
mflo $2
TAG543:
lhu $4, 0($2)
beq $4, $2, TAG544
slti $3, $2, 8
bgez $4, TAG544
TAG544:
addiu $2, $3, 3
addu $3, $3, $3
multu $3, $3
mtlo $3
TAG545:
lui $1, 3
sll $0, $0, 0
sb $2, 0($3)
subu $1, $1, $3
TAG546:
sllv $1, $1, $1
lui $3, 10
mult $1, $3
bltz $3, TAG547
TAG547:
multu $3, $3
sra $4, $3, 2
beq $4, $4, TAG548
sll $0, $0, 0
TAG548:
lui $1, 6
srl $2, $1, 1
blez $1, TAG549
sltu $2, $4, $4
TAG549:
lh $2, 0($2)
mthi $2
subu $4, $2, $2
mthi $2
TAG550:
add $4, $4, $4
sltiu $1, $4, 7
slt $2, $1, $4
sllv $1, $2, $2
TAG551:
mthi $1
bgez $1, TAG552
mthi $1
bne $1, $1, TAG552
TAG552:
sb $1, 0($1)
bne $1, $1, TAG553
sh $1, 0($1)
mtlo $1
TAG553:
bgez $1, TAG554
mtlo $1
mflo $3
sltu $3, $1, $1
TAG554:
divu $3, $3
mult $3, $3
mult $3, $3
srl $2, $3, 3
TAG555:
sll $0, $0, 0
divu $3, $3
lui $3, 0
bgtz $3, TAG556
TAG556:
ori $4, $3, 8
div $4, $4
srav $1, $4, $4
beq $1, $4, TAG557
TAG557:
lb $2, 0($1)
lh $2, 0($1)
sw $2, 0($1)
mfhi $4
TAG558:
lui $4, 4
mflo $1
sll $0, $0, 0
mtlo $4
TAG559:
bgtz $1, TAG560
lb $3, 0($1)
lui $3, 1
lbu $4, 0($1)
TAG560:
mflo $1
sll $0, $0, 0
mflo $1
sra $2, $4, 15
TAG561:
div $2, $2
srl $4, $2, 8
beq $4, $2, TAG562
sh $4, 0($4)
TAG562:
sb $4, 0($4)
sw $4, 0($4)
mtlo $4
lh $1, 0($4)
TAG563:
mtlo $1
mtlo $1
lui $1, 3
sltiu $2, $1, 14
TAG564:
or $2, $2, $2
lui $1, 1
beq $2, $1, TAG565
sll $0, $0, 0
TAG565:
mthi $1
mfhi $3
mult $1, $1
mtlo $3
TAG566:
mfhi $2
divu $3, $2
lbu $1, 0($2)
slti $3, $2, 10
TAG567:
bne $3, $3, TAG568
lb $1, 0($3)
beq $1, $1, TAG568
sb $1, 0($1)
TAG568:
sb $1, 0($1)
mfhi $4
sw $4, 0($4)
sb $4, 0($1)
TAG569:
lui $1, 10
mthi $4
lhu $4, 0($4)
ori $3, $4, 7
TAG570:
subu $2, $3, $3
sltiu $2, $2, 4
mtlo $2
multu $2, $3
TAG571:
mfhi $2
beq $2, $2, TAG572
lbu $2, 0($2)
mtlo $2
TAG572:
sltiu $2, $2, 5
nor $1, $2, $2
mfhi $2
multu $2, $2
TAG573:
bgez $2, TAG574
sw $2, 0($2)
sub $3, $2, $2
divu $2, $3
TAG574:
lui $2, 15
divu $3, $3
bgez $3, TAG575
sb $3, 0($3)
TAG575:
sll $0, $0, 0
lui $3, 9
sll $0, $0, 0
lui $4, 2
TAG576:
sll $0, $0, 0
multu $4, $4
mthi $4
sll $0, $0, 0
TAG577:
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $4, 5
bne $2, $4, TAG578
TAG578:
mfhi $4
bne $4, $4, TAG579
nor $3, $4, $4
bgtz $4, TAG579
TAG579:
lui $1, 14
sra $4, $1, 1
bgtz $3, TAG580
sll $0, $0, 0
TAG580:
beq $2, $2, TAG581
andi $1, $2, 14
mfhi $3
lh $4, 0($2)
TAG581:
sltiu $2, $4, 2
sll $0, $0, 0
lui $3, 0
mult $4, $3
TAG582:
sw $3, 0($3)
mtlo $3
bgez $3, TAG583
mflo $2
TAG583:
lui $3, 3
sll $0, $0, 0
beq $2, $2, TAG584
andi $1, $2, 9
TAG584:
srav $4, $1, $1
sra $2, $4, 9
mfhi $2
mflo $1
TAG585:
sra $1, $1, 0
multu $1, $1
slti $3, $1, 11
bgez $1, TAG586
TAG586:
mthi $3
mflo $1
srl $4, $1, 9
sh $3, 0($4)
TAG587:
sltu $1, $4, $4
mtlo $1
multu $4, $4
lbu $3, 0($4)
TAG588:
bgez $3, TAG589
multu $3, $3
divu $3, $3
beq $3, $3, TAG589
TAG589:
multu $3, $3
sb $3, 0($3)
mfhi $3
mtlo $3
TAG590:
mfhi $4
mflo $4
bgtz $4, TAG591
addi $3, $4, 10
TAG591:
lh $1, 0($3)
beq $3, $3, TAG592
mult $3, $1
lb $2, 0($1)
TAG592:
mthi $2
mult $2, $2
lui $3, 13
xori $1, $2, 3
TAG593:
bgtz $1, TAG594
sb $1, 0($1)
beq $1, $1, TAG594
mfhi $3
TAG594:
bltz $3, TAG595
addu $2, $3, $3
addiu $4, $2, 13
sll $0, $0, 0
TAG595:
mfhi $3
sb $3, 0($3)
lui $1, 4
blez $3, TAG596
TAG596:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 9
lui $3, 7
TAG597:
sll $0, $0, 0
bgtz $3, TAG598
addu $3, $3, $3
lui $3, 9
TAG598:
bgtz $3, TAG599
mtlo $3
lui $3, 11
or $4, $3, $3
TAG599:
bne $4, $4, TAG600
lui $3, 13
bne $3, $3, TAG600
divu $4, $3
TAG600:
xor $3, $3, $3
multu $3, $3
lh $4, 0($3)
mthi $4
TAG601:
lui $1, 13
divu $4, $1
bne $4, $4, TAG602
lb $4, -256($4)
TAG602:
addiu $2, $4, 14
sltu $4, $2, $4
lui $3, 14
blez $4, TAG603
TAG603:
mtlo $3
bltz $3, TAG604
sll $3, $3, 8
bne $3, $3, TAG604
TAG604:
sll $0, $0, 0
div $3, $1
blez $3, TAG605
sll $0, $0, 0
TAG605:
lui $1, 5
mult $1, $1
lui $4, 8
addu $3, $3, $3
TAG606:
sll $0, $0, 0
slti $2, $3, 9
sra $2, $3, 8
and $2, $3, $2
TAG607:
lh $1, 0($2)
beq $2, $2, TAG608
mtlo $2
lui $4, 2
TAG608:
srlv $3, $4, $4
sll $0, $0, 0
mflo $3
sb $3, 0($3)
TAG609:
beq $3, $3, TAG610
addu $2, $3, $3
bltz $3, TAG610
add $4, $2, $3
TAG610:
mflo $3
beq $3, $4, TAG611
lui $3, 1
beq $4, $4, TAG611
TAG611:
subu $1, $3, $3
nor $3, $3, $1
bgez $3, TAG612
lui $3, 2
TAG612:
bne $3, $3, TAG613
xor $4, $3, $3
sll $0, $0, 0
bne $3, $3, TAG613
TAG613:
mthi $4
lui $2, 10
addiu $4, $2, 7
mflo $1
TAG614:
mtlo $1
bltz $1, TAG615
sltiu $2, $1, 5
blez $2, TAG615
TAG615:
sb $2, 0($2)
mfhi $1
bgez $2, TAG616
mflo $4
TAG616:
mtlo $4
mfhi $3
mtlo $3
mfhi $1
TAG617:
mflo $1
lh $3, 0($1)
mthi $3
sh $1, -256($3)
TAG618:
lui $1, 2
ori $4, $3, 8
lui $1, 2
divu $1, $1
TAG619:
lui $3, 2
mtlo $3
mflo $2
bne $1, $2, TAG620
TAG620:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
subu $2, $2, $1
TAG621:
beq $2, $2, TAG622
sh $2, 0($2)
mthi $2
addiu $4, $2, 1
TAG622:
bne $4, $4, TAG623
lbu $3, -264($4)
sb $4, 0($3)
sllv $2, $4, $4
TAG623:
mtlo $2
mtlo $2
mthi $2
xori $1, $2, 15
TAG624:
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG625:
blez $1, TAG626
subu $1, $1, $1
mtlo $1
multu $1, $1
TAG626:
mult $1, $1
multu $1, $1
lbu $2, 0($1)
mtlo $2
TAG627:
div $2, $2
mthi $2
sw $2, 0($2)
mult $2, $2
TAG628:
sh $2, 0($2)
mtlo $2
mfhi $2
lui $3, 1
TAG629:
mfhi $4
slt $3, $3, $3
sb $3, 0($3)
sb $3, 0($3)
TAG630:
bne $3, $3, TAG631
slti $1, $3, 4
div $3, $1
xor $2, $3, $3
TAG631:
lui $4, 0
mflo $1
lui $3, 1
lui $3, 14
TAG632:
sll $0, $0, 0
beq $1, $1, TAG633
lui $4, 1
sll $4, $3, 7
TAG633:
bltz $4, TAG634
mtlo $4
sll $0, $0, 0
lui $3, 9
TAG634:
mflo $2
mtlo $3
mult $2, $2
sra $2, $3, 0
TAG635:
and $3, $2, $2
bgtz $2, TAG636
sra $4, $3, 11
mflo $4
TAG636:
mflo $2
bltz $2, TAG637
mthi $2
mtlo $4
TAG637:
sltiu $2, $2, 4
lbu $4, 0($2)
mthi $4
addu $2, $2, $2
TAG638:
lui $3, 6
sh $3, 0($2)
sh $3, 0($2)
lui $1, 1
TAG639:
and $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
TAG640:
mthi $3
subu $1, $3, $3
mult $1, $1
sltu $1, $3, $1
TAG641:
bgez $1, TAG642
lui $1, 9
mflo $2
sw $1, 0($2)
TAG642:
mthi $2
sh $2, 0($2)
sra $2, $2, 5
lbu $3, 0($2)
TAG643:
mfhi $2
lh $1, 0($3)
lui $1, 11
mult $2, $1
TAG644:
blez $1, TAG645
sll $0, $0, 0
bgez $1, TAG645
lui $4, 14
TAG645:
andi $2, $4, 14
sra $2, $4, 3
bltz $2, TAG646
mflo $2
TAG646:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
sb $4, 0($4)
TAG647:
multu $4, $4
lui $4, 11
mflo $2
mult $4, $4
TAG648:
blez $2, TAG649
multu $2, $2
lui $3, 3
lh $3, 0($3)
TAG649:
bne $3, $3, TAG650
mtlo $3
srl $1, $3, 5
multu $1, $3
TAG650:
sra $1, $1, 14
lui $3, 14
mult $3, $3
lui $4, 0
TAG651:
lbu $2, 0($4)
xor $1, $4, $2
sb $2, 0($4)
sltu $2, $2, $4
TAG652:
beq $2, $2, TAG653
mtlo $2
bltz $2, TAG653
addu $2, $2, $2
TAG653:
mthi $2
multu $2, $2
lbu $4, 0($2)
bne $4, $4, TAG654
TAG654:
sw $4, 0($4)
sltiu $4, $4, 8
multu $4, $4
bne $4, $4, TAG655
TAG655:
lui $2, 7
lb $1, 0($4)
bne $2, $4, TAG656
and $4, $1, $1
TAG656:
lui $4, 5
mflo $2
lb $3, 0($2)
mfhi $4
TAG657:
mthi $4
mult $4, $4
beq $4, $4, TAG658
mthi $4
TAG658:
mult $4, $4
bltz $4, TAG659
mflo $2
lui $3, 6
TAG659:
lui $4, 13
addu $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG660:
mfhi $3
beq $2, $2, TAG661
lw $1, 0($2)
lui $1, 14
TAG661:
andi $1, $1, 6
mtlo $1
lui $2, 4
sra $3, $2, 3
TAG662:
sll $0, $0, 0
divu $3, $3
sltiu $2, $3, 7
lui $3, 0
TAG663:
sh $3, 0($3)
mflo $2
lui $2, 7
ori $4, $3, 7
TAG664:
mthi $4
sb $4, 0($4)
lui $4, 10
bltz $4, TAG665
TAG665:
addu $2, $4, $4
mfhi $3
mtlo $4
beq $3, $4, TAG666
TAG666:
lui $4, 7
lui $1, 3
sll $0, $0, 0
xor $3, $1, $1
TAG667:
mfhi $3
ori $1, $3, 10
mtlo $3
lui $1, 5
TAG668:
sll $0, $0, 0
mfhi $4
mflo $4
mfhi $4
TAG669:
lui $2, 14
mtlo $2
lbu $3, 0($4)
lui $2, 10
TAG670:
sra $3, $2, 3
bne $2, $2, TAG671
sll $0, $0, 0
addiu $2, $3, 3
TAG671:
sll $0, $0, 0
srl $2, $2, 11
div $2, $3
div $2, $2
TAG672:
lb $1, 0($2)
lui $3, 2
mult $2, $2
sll $0, $0, 0
TAG673:
addu $4, $3, $3
divu $3, $3
mfhi $2
mtlo $2
TAG674:
mtlo $2
lui $1, 7
sh $2, 0($2)
mfhi $2
TAG675:
mflo $1
mtlo $1
lui $3, 0
addi $3, $2, 5
TAG676:
slti $4, $3, 10
sb $3, 0($4)
mflo $2
lbu $4, 0($3)
TAG677:
mthi $4
multu $4, $4
lb $3, 0($4)
bgez $3, TAG678
TAG678:
mfhi $4
sub $3, $4, $4
blez $4, TAG679
and $3, $4, $3
TAG679:
mtlo $3
mthi $3
bne $3, $3, TAG680
sh $3, 0($3)
TAG680:
multu $3, $3
sub $4, $3, $3
mfhi $4
and $4, $4, $3
TAG681:
multu $4, $4
mthi $4
mtlo $4
lui $3, 15
TAG682:
bltz $3, TAG683
and $3, $3, $3
lui $2, 1
sra $3, $2, 10
TAG683:
lb $4, 0($3)
addu $3, $4, $3
div $4, $3
sw $4, 0($3)
TAG684:
xori $4, $3, 15
lb $2, 0($3)
div $3, $4
lui $3, 14
TAG685:
bgez $3, TAG686
divu $3, $3
bltz $3, TAG686
multu $3, $3
TAG686:
srl $2, $3, 15
mthi $2
lui $1, 0
mthi $2
TAG687:
bgez $1, TAG688
sw $1, 0($1)
bgtz $1, TAG688
xor $4, $1, $1
TAG688:
bne $4, $4, TAG689
lbu $2, 0($4)
sltu $1, $4, $2
lbu $3, 0($2)
TAG689:
mult $3, $3
lui $4, 8
blez $4, TAG690
mtlo $4
TAG690:
lui $4, 6
multu $4, $4
mthi $4
sllv $1, $4, $4
TAG691:
xori $1, $1, 11
addiu $2, $1, 12
bgtz $2, TAG692
sll $0, $0, 0
TAG692:
addu $3, $2, $2
beq $2, $3, TAG693
sll $0, $0, 0
bne $1, $3, TAG693
TAG693:
lui $3, 10
bgtz $1, TAG694
mthi $1
sltiu $1, $3, 10
TAG694:
or $3, $1, $1
sll $0, $0, 0
blez $3, TAG695
mtlo $1
TAG695:
sll $0, $0, 0
mflo $1
lui $2, 2
sll $0, $0, 0
TAG696:
srav $1, $3, $3
slt $3, $3, $1
nor $1, $3, $3
mflo $3
TAG697:
bgez $3, TAG698
nor $1, $3, $3
addu $1, $3, $3
sh $3, 0($3)
TAG698:
mthi $1
beq $1, $1, TAG699
and $4, $1, $1
mtlo $1
TAG699:
sll $1, $4, 4
slt $2, $1, $1
mthi $1
lui $1, 1
TAG700:
beq $1, $1, TAG701
lui $1, 5
mthi $1
mthi $1
TAG701:
blez $1, TAG702
mfhi $3
addiu $1, $3, 2
andi $2, $1, 9
TAG702:
lw $2, 0($2)
mflo $4
bne $2, $4, TAG703
sw $4, 0($2)
TAG703:
lui $4, 11
srav $2, $4, $4
lui $3, 7
sll $0, $0, 0
TAG704:
sll $0, $0, 0
mtlo $4
bgez $4, TAG705
sll $0, $0, 0
TAG705:
mfhi $4
bne $4, $4, TAG706
div $4, $4
divu $3, $4
TAG706:
srl $3, $4, 12
sll $0, $0, 0
sll $0, $0, 0
sltu $4, $4, $3
TAG707:
mthi $4
bne $4, $4, TAG708
sh $4, 0($4)
lui $4, 9
TAG708:
lui $1, 8
lui $2, 6
sll $0, $0, 0
blez $4, TAG709
TAG709:
srav $2, $2, $2
mflo $4
mthi $2
sll $0, $0, 0
TAG710:
multu $4, $4
bne $4, $4, TAG711
sw $4, 0($4)
nor $2, $4, $4
TAG711:
mthi $2
mult $2, $2
sb $2, 1($2)
divu $2, $2
TAG712:
andi $3, $2, 3
div $2, $3
lb $4, 0($3)
beq $3, $2, TAG713
TAG713:
mult $4, $4
lw $2, 0($4)
xor $4, $4, $2
blez $4, TAG714
TAG714:
mfhi $1
mthi $4
lui $4, 9
bne $1, $4, TAG715
TAG715:
addiu $2, $4, 13
mfhi $2
div $2, $2
divu $2, $4
TAG716:
mfhi $1
mult $2, $2
sw $1, -255($1)
sb $1, -255($2)
TAG717:
andi $3, $1, 4
mthi $3
lui $3, 14
ori $3, $3, 0
TAG718:
andi $4, $3, 6
mult $4, $3
sb $3, 0($4)
or $1, $4, $4
TAG719:
sra $3, $1, 0
mflo $4
slt $4, $4, $4
srav $4, $3, $3
TAG720:
lhu $2, 0($4)
blez $2, TAG721
srl $1, $2, 14
mfhi $2
TAG721:
sllv $2, $2, $2
bne $2, $2, TAG722
lh $3, 0($2)
mthi $3
TAG722:
mthi $3
sll $4, $3, 10
mfhi $2
mfhi $2
TAG723:
mtlo $2
lw $3, 0($2)
multu $3, $3
multu $3, $3
TAG724:
sb $3, 0($3)
mtlo $3
mthi $3
lw $2, 0($3)
TAG725:
multu $2, $2
xori $2, $2, 4
bne $2, $2, TAG726
sra $2, $2, 13
TAG726:
mflo $4
mtlo $2
sw $2, 0($2)
bltz $4, TAG727
TAG727:
mflo $3
multu $4, $4
sw $4, 0($4)
mflo $3
TAG728:
mthi $3
sw $3, 0($3)
mthi $3
mult $3, $3
TAG729:
lbu $2, 0($3)
lui $4, 4
bltz $3, TAG730
slti $2, $4, 9
TAG730:
slti $2, $2, 15
sb $2, 0($2)
lui $1, 10
beq $2, $2, TAG731
TAG731:
sll $0, $0, 0
sllv $4, $1, $1
sll $0, $0, 0
mult $1, $4
TAG732:
mfhi $1
mult $4, $4
div $4, $1
lui $1, 0
TAG733:
lui $1, 13
mult $1, $1
mult $1, $1
or $4, $1, $1
TAG734:
sll $0, $0, 0
mflo $3
blez $4, TAG735
srav $4, $3, $3
TAG735:
mflo $4
lb $1, 0($4)
sll $2, $4, 2
mflo $1
TAG736:
mflo $4
mult $1, $4
lui $3, 13
mult $1, $4
TAG737:
lui $3, 14
srlv $4, $3, $3
andi $1, $3, 15
addu $3, $3, $3
TAG738:
mfhi $4
lui $4, 10
andi $4, $4, 9
sll $0, $0, 0
TAG739:
srl $2, $4, 0
lbu $1, 0($2)
mthi $1
lui $4, 3
TAG740:
mult $4, $4
mflo $1
bne $1, $1, TAG741
sltiu $3, $4, 8
TAG741:
bgez $3, TAG742
lb $3, 0($3)
mthi $3
lh $2, 0($3)
TAG742:
mult $2, $2
multu $2, $2
mflo $2
mult $2, $2
TAG743:
mflo $2
srav $4, $2, $2
mfhi $3
mflo $4
TAG744:
bgtz $4, TAG745
lui $4, 8
mthi $4
bgtz $4, TAG745
TAG745:
mfhi $3
mflo $4
mtlo $4
mtlo $3
TAG746:
lui $4, 14
sll $0, $0, 0
addu $1, $4, $4
lui $1, 11
TAG747:
mfhi $4
mfhi $4
beq $1, $1, TAG748
multu $1, $1
TAG748:
addiu $4, $4, 2
bne $4, $4, TAG749
div $4, $4
sll $0, $0, 0
TAG749:
sll $0, $0, 0
mtlo $4
addiu $2, $4, 2
mfhi $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop