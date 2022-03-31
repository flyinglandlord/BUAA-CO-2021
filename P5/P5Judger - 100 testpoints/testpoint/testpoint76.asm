ori $1, $0, 7
ori $2, $0, 7
ori $3, $0, 12
ori $4, $0, 6
sw $2, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $3, 44($0)
sw $1, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $2, 64($0)
sw $3, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $2, 124($0)
bne $2, $2, TAG1
mfhi $1
bltz $1, TAG1
mthi $2
TAG1:
multu $1, $1
andi $1, $1, 2
sb $1, 0($1)
mthi $1
TAG2:
bltz $1, TAG3
mult $1, $1
mtlo $1
lui $3, 6
TAG3:
nor $3, $3, $3
andi $3, $3, 6
mult $3, $3
mult $3, $3
TAG4:
bne $3, $3, TAG5
mflo $1
srlv $2, $3, $3
mflo $2
TAG5:
bne $2, $2, TAG6
lw $2, 0($2)
bne $2, $2, TAG6
lb $3, 0($2)
TAG6:
addu $4, $3, $3
multu $4, $3
andi $3, $3, 5
blez $3, TAG7
TAG7:
lb $2, 0($3)
sh $2, 0($2)
bgez $3, TAG8
mthi $2
TAG8:
mflo $3
multu $3, $2
sw $3, 0($2)
srav $3, $3, $2
TAG9:
mflo $3
subu $1, $3, $3
mthi $3
xori $3, $3, 10
TAG10:
lb $2, 0($3)
ori $4, $3, 6
mtlo $2
blez $2, TAG11
TAG11:
addiu $3, $4, 7
sh $4, 0($4)
sh $3, 0($4)
lui $4, 5
TAG12:
mult $4, $4
bne $4, $4, TAG13
mtlo $4
bne $4, $4, TAG13
TAG13:
subu $3, $4, $4
mthi $4
mfhi $1
lui $2, 6
TAG14:
bgtz $2, TAG15
ori $2, $2, 13
sltiu $1, $2, 13
bne $2, $1, TAG15
TAG15:
mthi $1
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
TAG16:
sltu $1, $1, $1
multu $1, $1
bgtz $1, TAG17
mult $1, $1
TAG17:
lbu $2, 0($1)
lui $4, 2
lui $2, 9
addiu $3, $4, 7
TAG18:
beq $3, $3, TAG19
mtlo $3
sub $1, $3, $3
lh $2, 0($1)
TAG19:
bltz $2, TAG20
xori $4, $2, 5
lui $3, 10
mfhi $4
TAG20:
bgtz $4, TAG21
mult $4, $4
ori $2, $4, 13
andi $2, $2, 15
TAG21:
mflo $4
bne $4, $2, TAG22
lbu $3, 0($2)
mfhi $3
TAG22:
mflo $4
sh $3, 0($4)
multu $3, $4
xori $4, $3, 2
TAG23:
sb $4, 0($4)
sh $4, 0($4)
lui $2, 15
lb $3, 0($4)
TAG24:
bne $3, $3, TAG25
and $3, $3, $3
mtlo $3
sh $3, 0($3)
TAG25:
mflo $4
sh $4, 0($3)
divu $4, $3
lb $3, 0($4)
TAG26:
mtlo $3
xor $1, $3, $3
lh $3, 0($3)
sltiu $4, $3, 5
TAG27:
subu $3, $4, $4
bne $4, $3, TAG28
srlv $4, $4, $3
divu $4, $4
TAG28:
sb $4, 0($4)
bgez $4, TAG29
lui $3, 1
addi $3, $4, 12
TAG29:
sll $0, $0, 0
mult $4, $3
sb $3, 0($4)
and $3, $4, $4
TAG30:
bgez $3, TAG31
sltu $4, $3, $3
mfhi $1
beq $4, $1, TAG31
TAG31:
sb $1, 0($1)
mult $1, $1
mflo $1
beq $1, $1, TAG32
TAG32:
mfhi $1
addu $3, $1, $1
lb $1, 0($1)
lui $1, 10
TAG33:
xori $3, $1, 4
mtlo $3
bgez $3, TAG34
mfhi $1
TAG34:
mfhi $1
bne $1, $1, TAG35
xor $2, $1, $1
bgez $1, TAG35
TAG35:
mthi $2
xori $1, $2, 13
lui $3, 9
and $1, $3, $2
TAG36:
mfhi $1
mflo $1
srl $1, $1, 1
srlv $4, $1, $1
TAG37:
bgez $4, TAG38
ori $1, $4, 6
sw $1, 0($4)
mult $1, $1
TAG38:
sll $0, $0, 0
lui $4, 3
bne $1, $1, TAG39
mthi $4
TAG39:
div $4, $4
sll $0, $0, 0
div $4, $4
lui $3, 5
TAG40:
mtlo $3
beq $3, $3, TAG41
sll $0, $0, 0
mflo $2
TAG41:
sltu $4, $2, $2
blez $2, TAG42
lb $4, 0($4)
mtlo $4
TAG42:
sltiu $2, $4, 13
beq $4, $4, TAG43
mtlo $2
lbu $3, 0($2)
TAG43:
sll $0, $0, 0
lb $3, 0($2)
mult $2, $2
lbu $3, 0($3)
TAG44:
lh $2, 0($3)
andi $3, $3, 4
bne $3, $3, TAG45
add $1, $3, $2
TAG45:
lui $4, 10
mflo $2
lui $4, 6
mtlo $1
TAG46:
mthi $4
mflo $2
sll $0, $0, 0
lui $4, 12
TAG47:
srl $3, $4, 8
bne $3, $3, TAG48
sll $0, $0, 0
bgtz $4, TAG48
TAG48:
mfhi $3
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
TAG49:
mflo $4
multu $2, $2
bgez $4, TAG50
mfhi $3
TAG50:
mflo $2
sb $3, 0($2)
mthi $3
lhu $4, 0($3)
TAG51:
and $3, $4, $4
sh $3, 0($3)
sh $4, 0($3)
bltz $4, TAG52
TAG52:
sb $3, 0($3)
beq $3, $3, TAG53
lb $4, 0($3)
mthi $4
TAG53:
bltz $4, TAG54
sll $3, $4, 6
lw $2, 0($3)
mtlo $4
TAG54:
mflo $3
mflo $2
mthi $2
mfhi $4
TAG55:
sll $2, $4, 5
sh $4, 0($2)
mfhi $3
lui $4, 13
TAG56:
beq $4, $4, TAG57
mtlo $4
sb $4, 0($4)
bgtz $4, TAG57
TAG57:
mfhi $1
mflo $1
mtlo $1
sll $0, $0, 0
TAG58:
sll $0, $0, 0
mfhi $1
mflo $3
beq $4, $3, TAG59
TAG59:
mtlo $3
srlv $2, $3, $3
slti $4, $2, 7
srl $3, $4, 4
TAG60:
addu $3, $3, $3
mthi $3
sw $3, 0($3)
sw $3, 0($3)
TAG61:
mthi $3
lbu $3, 0($3)
sh $3, 0($3)
slti $4, $3, 14
TAG62:
bltz $4, TAG63
xori $4, $4, 15
lui $2, 14
multu $4, $4
TAG63:
sll $0, $0, 0
slt $3, $2, $2
multu $3, $3
lui $3, 11
TAG64:
mfhi $4
sra $3, $3, 13
mult $4, $4
div $3, $3
TAG65:
lbu $3, 0($3)
lui $2, 10
lui $4, 14
srl $4, $3, 4
TAG66:
bgez $4, TAG67
slti $4, $4, 12
lw $2, 0($4)
mtlo $4
TAG67:
blez $2, TAG68
mflo $4
divu $4, $2
mult $4, $4
TAG68:
divu $4, $4
mtlo $4
lui $2, 15
lbu $1, 0($4)
TAG69:
lw $3, 0($1)
sb $3, 0($1)
ori $1, $3, 7
mflo $4
TAG70:
beq $4, $4, TAG71
div $4, $4
bne $4, $4, TAG71
and $2, $4, $4
TAG71:
lui $1, 8
lui $4, 2
sll $0, $0, 0
mthi $1
TAG72:
sll $0, $0, 0
div $2, $2
srav $4, $2, $2
multu $4, $2
TAG73:
sll $0, $0, 0
lui $2, 6
sll $1, $4, 7
bgtz $1, TAG74
TAG74:
mthi $1
mthi $1
andi $2, $1, 11
lui $4, 5
TAG75:
mfhi $4
or $4, $4, $4
sll $0, $0, 0
lui $1, 11
TAG76:
beq $1, $1, TAG77
sll $0, $0, 0
bne $1, $1, TAG77
divu $1, $1
TAG77:
beq $1, $1, TAG78
sll $0, $0, 0
sw $1, 0($1)
lui $4, 15
TAG78:
mthi $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG79:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $4, $1, TAG80
TAG80:
lui $4, 2
div $4, $4
sll $0, $0, 0
mfhi $2
TAG81:
sra $3, $2, 8
slt $1, $3, $2
addiu $3, $1, 0
mthi $3
TAG82:
mult $3, $3
mthi $3
slti $2, $3, 1
lb $2, 0($2)
TAG83:
mfhi $1
sb $2, 0($1)
andi $4, $1, 7
multu $1, $4
TAG84:
mtlo $4
sb $4, 0($4)
sw $4, 0($4)
sh $4, 0($4)
TAG85:
mthi $4
mult $4, $4
lhu $2, 0($4)
sh $4, 0($2)
TAG86:
bgtz $2, TAG87
subu $3, $2, $2
sw $2, 0($2)
lhu $4, 0($2)
TAG87:
sb $4, 0($4)
beq $4, $4, TAG88
lui $1, 3
blez $1, TAG88
TAG88:
sll $0, $0, 0
bgtz $1, TAG89
mflo $3
srl $1, $1, 11
TAG89:
sll $0, $0, 0
mtlo $4
mflo $2
multu $4, $4
TAG90:
and $4, $2, $2
sb $4, 0($2)
blez $4, TAG91
lh $1, 0($4)
TAG91:
bne $1, $1, TAG92
addi $1, $1, 7
div $1, $1
lui $4, 10
TAG92:
sll $0, $0, 0
bne $4, $4, TAG93
sll $0, $0, 0
andi $3, $4, 9
TAG93:
lui $2, 11
lui $1, 9
lh $2, 0($3)
lui $1, 0
TAG94:
slti $1, $1, 12
bne $1, $1, TAG95
mflo $2
srl $1, $1, 3
TAG95:
slti $3, $1, 4
mflo $4
mult $4, $4
lbu $4, 0($3)
TAG96:
mtlo $4
sb $4, 0($4)
multu $4, $4
mfhi $1
TAG97:
sub $2, $1, $1
lui $3, 3
lui $4, 6
beq $3, $4, TAG98
TAG98:
mtlo $4
div $4, $4
mtlo $4
beq $4, $4, TAG99
TAG99:
lui $4, 11
beq $4, $4, TAG100
divu $4, $4
lui $1, 4
TAG100:
lb $2, 0($1)
sb $2, 0($1)
mfhi $4
beq $2, $4, TAG101
TAG101:
mfhi $1
sb $4, 0($1)
beq $4, $1, TAG102
addu $1, $4, $4
TAG102:
bne $1, $1, TAG103
multu $1, $1
blez $1, TAG103
mfhi $3
TAG103:
lui $1, 13
mflo $4
blez $1, TAG104
or $3, $3, $4
TAG104:
beq $3, $3, TAG105
lui $4, 2
lbu $3, 0($3)
mtlo $4
TAG105:
lui $4, 13
mtlo $3
bgez $3, TAG106
mult $3, $3
TAG106:
lui $3, 14
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG107:
mtlo $3
sll $2, $3, 13
sll $0, $0, 0
bgtz $1, TAG108
TAG108:
sll $0, $0, 0
mfhi $4
and $2, $4, $1
blez $1, TAG109
TAG109:
sb $2, 0($2)
lui $4, 11
multu $2, $2
blez $4, TAG110
TAG110:
slti $2, $4, 0
srav $2, $2, $4
mult $4, $2
lui $4, 14
TAG111:
mflo $4
multu $4, $4
addiu $3, $4, 4
lb $1, 0($4)
TAG112:
lui $4, 8
sltu $3, $4, $1
mthi $1
subu $2, $1, $4
TAG113:
sll $0, $0, 0
addiu $3, $2, 12
addiu $1, $2, 13
addiu $4, $2, 6
TAG114:
mfhi $3
addu $2, $4, $3
blez $2, TAG115
sw $2, 0($3)
TAG115:
lui $2, 8
beq $2, $2, TAG116
mtlo $2
mfhi $2
TAG116:
div $2, $2
bltz $2, TAG117
mthi $2
sll $0, $0, 0
TAG117:
mflo $2
lbu $1, 0($2)
mtlo $1
mfhi $3
TAG118:
bgez $3, TAG119
lui $1, 11
bgez $1, TAG119
mthi $1
TAG119:
bltz $1, TAG120
mthi $1
beq $1, $1, TAG120
mult $1, $1
TAG120:
sll $0, $0, 0
beq $3, $3, TAG121
mult $1, $3
or $1, $3, $1
TAG121:
mult $1, $1
lui $1, 11
sll $0, $0, 0
lbu $2, 0($2)
TAG122:
mtlo $2
lui $1, 13
bne $1, $1, TAG123
sllv $3, $1, $2
TAG123:
addu $4, $3, $3
sll $0, $0, 0
beq $4, $3, TAG124
mult $3, $4
TAG124:
bgez $4, TAG125
lui $2, 2
mflo $2
mthi $2
TAG125:
bltz $2, TAG126
sll $0, $0, 0
andi $4, $1, 10
mult $1, $4
TAG126:
mfhi $1
mult $4, $4
sh $1, 0($1)
andi $4, $4, 11
TAG127:
addi $3, $4, 14
beq $4, $4, TAG128
lhu $4, 0($3)
andi $3, $4, 9
TAG128:
mult $3, $3
bgez $3, TAG129
srlv $2, $3, $3
addi $3, $2, 3
TAG129:
sh $3, 0($3)
addiu $4, $3, 1
lui $2, 11
mthi $2
TAG130:
mtlo $2
beq $2, $2, TAG131
sll $0, $0, 0
bne $4, $4, TAG131
TAG131:
lb $3, 0($4)
lui $1, 0
bgez $1, TAG132
lui $1, 1
TAG132:
blez $1, TAG133
sll $0, $0, 0
mtlo $1
mthi $1
TAG133:
sll $0, $0, 0
divu $1, $1
divu $1, $1
or $4, $1, $1
TAG134:
sll $0, $0, 0
blez $4, TAG135
sltiu $1, $4, 3
xori $3, $4, 10
TAG135:
sll $0, $0, 0
or $2, $3, $3
sll $0, $0, 0
sra $3, $3, 4
TAG136:
sll $0, $0, 0
mfhi $1
mfhi $1
sh $1, 0($1)
TAG137:
sltiu $1, $1, 2
mthi $1
subu $1, $1, $1
lui $4, 3
TAG138:
sll $0, $0, 0
bgez $4, TAG139
sra $2, $4, 8
lui $1, 9
TAG139:
mtlo $1
mflo $4
mfhi $4
lw $1, 0($1)
TAG140:
or $1, $1, $1
beq $1, $1, TAG141
div $1, $1
lw $2, 0($1)
TAG141:
and $2, $2, $2
bgez $2, TAG142
lb $3, -768($2)
mthi $3
TAG142:
lbu $1, 0($3)
beq $3, $3, TAG143
lui $3, 12
bgtz $3, TAG143
TAG143:
sll $0, $0, 0
mtlo $4
sb $4, 0($4)
bltz $4, TAG144
TAG144:
srav $2, $4, $4
sllv $3, $4, $4
mflo $1
mflo $1
TAG145:
lbu $1, 0($1)
lbu $2, 0($1)
addiu $2, $2, 14
xori $1, $1, 1
TAG146:
bltz $1, TAG147
sltiu $1, $1, 2
lbu $4, 0($1)
mfhi $2
TAG147:
lui $3, 6
sll $0, $0, 0
xor $4, $3, $4
mtlo $4
TAG148:
sll $0, $0, 0
beq $4, $4, TAG149
sll $0, $0, 0
lh $1, 0($4)
TAG149:
bgez $1, TAG150
lb $2, 0($1)
bgtz $1, TAG150
lw $3, 0($1)
TAG150:
mfhi $4
beq $3, $3, TAG151
mult $3, $3
mtlo $4
TAG151:
lui $1, 4
mflo $1
mflo $2
mthi $2
TAG152:
mfhi $2
lbu $4, 0($2)
bne $2, $2, TAG153
multu $2, $2
TAG153:
or $4, $4, $4
lb $4, 0($4)
sh $4, 0($4)
sltiu $1, $4, 13
TAG154:
lb $2, 0($1)
mfhi $4
blez $2, TAG155
xor $4, $4, $1
TAG155:
sb $4, 0($4)
lb $1, 0($4)
beq $4, $1, TAG156
lui $2, 4
TAG156:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
TAG157:
bltz $3, TAG158
addu $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG158:
mflo $4
lui $1, 5
sll $0, $0, 0
sll $0, $0, 0
TAG159:
lui $1, 2
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG160:
sll $0, $0, 0
blez $4, TAG161
srl $3, $4, 4
lui $2, 14
TAG161:
addu $1, $2, $2
mflo $4
mfhi $3
lui $2, 4
TAG162:
mthi $2
mfhi $3
blez $2, TAG163
mtlo $3
TAG163:
lui $4, 15
sll $0, $0, 0
lui $4, 9
mflo $1
TAG164:
slti $4, $1, 14
mflo $1
sll $0, $0, 0
mult $1, $1
TAG165:
sll $0, $0, 0
srl $2, $1, 9
slt $4, $2, $1
sll $0, $0, 0
TAG166:
mtlo $4
lui $4, 2
multu $4, $4
andi $2, $4, 12
TAG167:
lbu $4, 0($2)
sh $4, 0($2)
bgtz $4, TAG168
sb $2, 0($4)
TAG168:
mthi $4
lui $3, 12
sltu $3, $4, $3
sltiu $3, $3, 15
TAG169:
bgtz $3, TAG170
xori $3, $3, 5
lui $2, 7
lhu $1, 0($3)
TAG170:
sll $0, $0, 0
lui $4, 7
sub $4, $4, $2
lui $3, 7
TAG171:
subu $2, $3, $3
lw $2, 0($2)
divu $2, $2
sll $0, $0, 0
TAG172:
sll $0, $0, 0
addiu $1, $2, 8
sll $0, $0, 0
nor $1, $1, $4
TAG173:
mtlo $1
mflo $3
mthi $3
bgez $1, TAG174
TAG174:
and $4, $3, $3
mflo $1
addu $1, $4, $1
bne $3, $1, TAG175
TAG175:
lui $4, 10
slt $2, $4, $4
bne $1, $1, TAG176
ori $2, $4, 2
TAG176:
srlv $4, $2, $2
andi $2, $2, 9
mfhi $1
sll $0, $0, 0
TAG177:
sll $0, $0, 0
bne $1, $1, TAG178
mtlo $1
slti $3, $1, 8
TAG178:
mflo $2
mtlo $2
bltz $2, TAG179
sll $0, $0, 0
TAG179:
ori $4, $2, 0
srlv $4, $2, $4
bgez $2, TAG180
and $4, $4, $2
TAG180:
bne $4, $4, TAG181
sh $4, 0($4)
multu $4, $4
bne $4, $4, TAG181
TAG181:
sh $4, 0($4)
lhu $3, 0($4)
mfhi $4
beq $3, $3, TAG182
TAG182:
lbu $1, 0($4)
mtlo $1
beq $4, $1, TAG183
sub $3, $4, $1
TAG183:
nor $2, $3, $3
mult $3, $3
bne $2, $3, TAG184
mflo $1
TAG184:
sub $4, $1, $1
lb $1, 0($1)
multu $1, $1
srav $2, $4, $1
TAG185:
srav $2, $2, $2
mthi $2
bgez $2, TAG186
lui $3, 10
TAG186:
bgtz $3, TAG187
srav $4, $3, $3
lb $1, 0($3)
lw $4, 0($4)
TAG187:
mtlo $4
mtlo $4
bltz $4, TAG188
sltiu $1, $4, 6
TAG188:
lui $2, 1
bne $1, $1, TAG189
lhu $4, 0($1)
lbu $4, 0($4)
TAG189:
bltz $4, TAG190
lui $3, 6
sw $3, 0($4)
bltz $4, TAG190
TAG190:
sll $0, $0, 0
bltz $4, TAG191
lbu $2, 0($4)
lui $2, 4
TAG191:
beq $2, $2, TAG192
sll $0, $0, 0
beq $2, $2, TAG192
lui $1, 5
TAG192:
multu $1, $1
blez $1, TAG193
mfhi $2
addiu $1, $1, 5
TAG193:
lbu $3, 0($1)
mthi $1
bne $3, $1, TAG194
lui $4, 14
TAG194:
addiu $3, $4, 8
sll $0, $0, 0
sll $0, $0, 0
sllv $1, $4, $4
TAG195:
addiu $4, $1, 0
mfhi $3
sll $0, $0, 0
srlv $4, $4, $4
TAG196:
beq $4, $4, TAG197
xori $2, $4, 12
lui $1, 4
mflo $4
TAG197:
addiu $2, $4, 7
sll $0, $0, 0
blez $4, TAG198
sll $0, $0, 0
TAG198:
mtlo $2
mtlo $2
slti $4, $2, 5
lui $3, 14
TAG199:
srl $4, $3, 13
sll $0, $0, 0
or $2, $3, $4
mfhi $3
TAG200:
mflo $2
mfhi $3
mthi $3
srl $3, $2, 14
TAG201:
div $3, $3
sllv $3, $3, $3
mflo $2
lui $1, 3
TAG202:
mflo $1
beq $1, $1, TAG203
mthi $1
mult $1, $1
TAG203:
sb $1, 0($1)
nor $2, $1, $1
sb $2, 0($1)
beq $2, $2, TAG204
TAG204:
lui $4, 10
sh $4, 2($2)
sll $0, $0, 0
lui $4, 1
TAG205:
sll $0, $0, 0
divu $4, $4
bne $4, $4, TAG206
nor $3, $4, $4
TAG206:
beq $3, $3, TAG207
lui $2, 0
lui $3, 3
mthi $3
TAG207:
bne $3, $3, TAG208
mflo $1
divu $1, $3
sll $1, $1, 11
TAG208:
beq $1, $1, TAG209
sh $1, -2048($1)
bne $1, $1, TAG209
sltu $4, $1, $1
TAG209:
mthi $4
mfhi $4
div $4, $4
xor $4, $4, $4
TAG210:
and $1, $4, $4
lhu $2, 0($4)
andi $3, $2, 2
lb $1, 0($1)
TAG211:
bgez $1, TAG212
mtlo $1
ori $3, $1, 15
mflo $3
TAG212:
bne $3, $3, TAG213
lw $2, 0($3)
div $3, $2
bgtz $3, TAG213
TAG213:
lui $4, 14
mult $4, $4
mthi $2
sll $0, $0, 0
TAG214:
mfhi $1
divu $2, $1
beq $2, $1, TAG215
slt $4, $2, $1
TAG215:
lb $4, 0($4)
lui $4, 2
bgez $4, TAG216
and $4, $4, $4
TAG216:
addu $2, $4, $4
mflo $3
lui $2, 0
mthi $3
TAG217:
sh $2, 0($2)
sb $2, 0($2)
mult $2, $2
beq $2, $2, TAG218
TAG218:
mthi $2
bne $2, $2, TAG219
mfhi $2
mthi $2
TAG219:
multu $2, $2
addiu $1, $2, 6
blez $2, TAG220
mtlo $2
TAG220:
mfhi $1
mtlo $1
mtlo $1
beq $1, $1, TAG221
TAG221:
lui $2, 6
beq $1, $1, TAG222
mthi $2
sh $2, 0($2)
TAG222:
srlv $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG223
TAG223:
sll $0, $0, 0
sll $1, $2, 14
mthi $4
mult $4, $1
TAG224:
sllv $2, $1, $1
mthi $1
mfhi $2
sll $0, $0, 0
TAG225:
addu $4, $2, $2
lui $3, 4
mult $2, $3
mflo $3
TAG226:
mthi $3
slti $4, $3, 8
mtlo $3
bgtz $3, TAG227
TAG227:
multu $4, $4
sb $4, 0($4)
lui $2, 14
sll $0, $0, 0
TAG228:
mult $2, $2
sra $2, $2, 8
sh $2, -3584($2)
div $2, $2
TAG229:
sll $0, $0, 0
lui $1, 15
beq $1, $1, TAG230
mthi $1
TAG230:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG231
ori $1, $1, 4
TAG231:
sll $0, $0, 0
and $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG232:
nor $3, $1, $1
beq $3, $1, TAG233
mthi $3
andi $2, $3, 15
TAG233:
sb $2, 0($2)
mfhi $4
mthi $2
bne $2, $4, TAG234
TAG234:
sll $0, $0, 0
sll $0, $0, 0
slti $4, $4, 8
bne $1, $4, TAG235
TAG235:
divu $4, $4
mfhi $3
multu $3, $3
blez $4, TAG236
TAG236:
lw $1, 0($3)
multu $1, $1
sll $0, $0, 0
bne $3, $3, TAG237
TAG237:
divu $4, $4
mfhi $3
lui $2, 0
bgtz $4, TAG238
TAG238:
xori $1, $2, 4
lui $4, 7
bgtz $4, TAG239
sll $0, $0, 0
TAG239:
bgez $4, TAG240
addiu $1, $4, 9
bne $4, $1, TAG240
mflo $4
TAG240:
sll $0, $0, 0
mflo $3
addu $3, $4, $3
divu $3, $4
TAG241:
mflo $2
divu $2, $2
mthi $3
nor $1, $2, $3
TAG242:
sll $0, $0, 0
mflo $2
subu $2, $3, $1
mtlo $1
TAG243:
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
multu $3, $2
TAG244:
mflo $1
mflo $2
sltiu $2, $2, 9
sw $1, 0($2)
TAG245:
beq $2, $2, TAG246
mult $2, $2
bne $2, $2, TAG246
sub $4, $2, $2
TAG246:
sll $0, $0, 0
srl $4, $4, 13
lhu $2, 0($4)
addiu $3, $4, 0
TAG247:
sra $1, $3, 10
sw $1, 0($3)
mthi $3
bne $1, $3, TAG248
TAG248:
srav $4, $1, $1
bltz $1, TAG249
mult $4, $4
lui $1, 0
TAG249:
lui $3, 4
bne $1, $1, TAG250
lw $3, 0($1)
lui $4, 3
TAG250:
lui $1, 12
bgtz $1, TAG251
sll $0, $0, 0
sh $1, 0($1)
TAG251:
mfhi $4
mflo $3
bne $4, $4, TAG252
nor $1, $1, $4
TAG252:
bltz $1, TAG253
sll $0, $0, 0
multu $3, $3
div $3, $3
TAG253:
sra $1, $3, 7
mthi $3
bgtz $1, TAG254
lui $2, 5
TAG254:
ori $1, $2, 4
mflo $1
mfhi $4
lui $2, 8
TAG255:
bgez $2, TAG256
sll $0, $0, 0
nor $4, $2, $2
beq $4, $2, TAG256
TAG256:
slti $3, $4, 8
beq $3, $4, TAG257
sh $3, 0($4)
sb $4, 0($4)
TAG257:
bne $3, $3, TAG258
sb $3, 0($3)
bltz $3, TAG258
mfhi $3
TAG258:
mult $3, $3
bne $3, $3, TAG259
addu $1, $3, $3
lh $1, 0($3)
TAG259:
div $1, $1
addiu $1, $1, 6
mfhi $3
mflo $1
TAG260:
bgez $1, TAG261
mthi $1
multu $1, $1
lb $2, 0($1)
TAG261:
multu $2, $2
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG262:
sra $1, $3, 1
xor $2, $1, $3
bgez $3, TAG263
sw $3, 0($3)
TAG263:
beq $2, $2, TAG264
lw $2, 0($2)
mult $2, $2
lui $1, 2
TAG264:
lb $3, 0($1)
bgtz $1, TAG265
multu $1, $1
mflo $2
TAG265:
lbu $1, 0($2)
mthi $1
sh $2, 0($1)
slt $3, $1, $1
TAG266:
lui $2, 4
bne $3, $2, TAG267
lui $3, 11
bne $3, $2, TAG267
TAG267:
div $3, $3
sll $0, $0, 0
mtlo $3
mflo $1
TAG268:
mfhi $4
mflo $2
ori $1, $4, 12
slti $2, $1, 13
TAG269:
addu $1, $2, $2
sb $2, 0($2)
sb $2, 0($1)
srav $3, $1, $1
TAG270:
lh $1, 0($3)
ori $3, $3, 7
sb $3, 0($3)
mthi $3
TAG271:
and $2, $3, $3
lbu $2, 0($3)
lb $1, 0($2)
mthi $3
TAG272:
mult $1, $1
blez $1, TAG273
mthi $1
blez $1, TAG273
TAG273:
srl $3, $1, 15
beq $1, $1, TAG274
addiu $1, $1, 5
beq $1, $3, TAG274
TAG274:
mthi $1
lui $4, 14
srl $2, $1, 12
beq $1, $4, TAG275
TAG275:
sb $2, 0($2)
blez $2, TAG276
sltiu $4, $2, 13
slti $1, $4, 8
TAG276:
sh $1, 0($1)
subu $4, $1, $1
lbu $4, 0($1)
beq $4, $4, TAG277
TAG277:
sh $4, 0($4)
lui $4, 13
mflo $2
div $4, $4
TAG278:
mfhi $2
mult $2, $2
addi $3, $2, 11
and $4, $3, $2
TAG279:
lui $3, 10
divu $3, $3
nor $1, $3, $4
sw $1, 0($4)
TAG280:
sllv $2, $1, $1
blez $2, TAG281
sll $0, $0, 0
lui $1, 8
TAG281:
beq $1, $1, TAG282
multu $1, $1
lh $2, 0($1)
divu $2, $1
TAG282:
bltz $2, TAG283
mfhi $1
lb $4, 0($1)
lui $3, 8
TAG283:
sll $0, $0, 0
or $2, $3, $3
lui $4, 5
srl $1, $2, 2
TAG284:
mfhi $2
sll $0, $0, 0
divu $1, $1
andi $4, $1, 5
TAG285:
nor $1, $4, $4
srlv $1, $1, $4
bgez $1, TAG286
mtlo $1
TAG286:
addiu $2, $1, 13
bne $1, $2, TAG287
mult $1, $2
ori $4, $2, 6
TAG287:
addu $1, $4, $4
bgez $4, TAG288
lui $3, 10
multu $1, $3
TAG288:
addiu $3, $3, 6
divu $3, $3
lui $4, 12
sltu $3, $3, $3
TAG289:
bne $3, $3, TAG290
add $2, $3, $3
beq $3, $2, TAG290
mfhi $1
TAG290:
mtlo $1
multu $1, $1
bgez $1, TAG291
addu $4, $1, $1
TAG291:
sw $4, 0($4)
bltz $4, TAG292
mtlo $4
mfhi $1
TAG292:
lui $2, 11
subu $4, $1, $1
bgez $4, TAG293
mfhi $1
TAG293:
and $1, $1, $1
mult $1, $1
sb $1, 0($1)
lui $2, 2
TAG294:
divu $2, $2
or $4, $2, $2
sll $0, $0, 0
subu $1, $4, $2
TAG295:
beq $1, $1, TAG296
lui $1, 7
lw $3, 0($1)
lhu $4, 0($1)
TAG296:
sllv $2, $4, $4
beq $2, $2, TAG297
mflo $3
srav $2, $3, $4
TAG297:
srav $1, $2, $2
mult $1, $2
ori $4, $2, 8
mult $2, $1
TAG298:
bltz $4, TAG299
sll $0, $0, 0
bne $4, $4, TAG299
sll $4, $4, 4
TAG299:
mfhi $3
mthi $3
bne $4, $3, TAG300
lui $4, 2
TAG300:
beq $4, $4, TAG301
addu $2, $4, $4
mult $2, $4
bgez $4, TAG301
TAG301:
or $1, $2, $2
lui $4, 0
mult $2, $1
xor $2, $1, $1
TAG302:
bne $2, $2, TAG303
sh $2, 0($2)
bne $2, $2, TAG303
mthi $2
TAG303:
lui $3, 10
sh $2, 0($2)
lui $4, 14
sll $0, $0, 0
TAG304:
sll $0, $0, 0
mtlo $4
mthi $4
subu $1, $4, $1
TAG305:
mflo $4
mthi $1
lui $4, 12
div $1, $4
TAG306:
sll $0, $0, 0
div $3, $3
lui $3, 10
bne $4, $4, TAG307
TAG307:
sll $0, $0, 0
subu $3, $3, $3
bgez $3, TAG308
mult $3, $3
TAG308:
lbu $2, 0($3)
mthi $3
sub $2, $2, $2
lh $2, 0($3)
TAG309:
mflo $3
lw $3, 0($2)
bne $3, $3, TAG310
multu $3, $2
TAG310:
xori $1, $3, 6
sw $1, 0($3)
sra $2, $3, 1
mflo $3
TAG311:
addi $3, $3, 14
xori $1, $3, 2
beq $3, $3, TAG312
mfhi $3
TAG312:
lui $4, 5
lhu $2, 0($3)
srav $1, $4, $2
mflo $2
TAG313:
beq $2, $2, TAG314
mfhi $4
srlv $4, $4, $4
andi $2, $4, 11
TAG314:
lui $1, 6
mflo $1
lui $2, 2
sll $0, $0, 0
TAG315:
sll $0, $0, 0
mtlo $3
multu $2, $3
ori $2, $2, 5
TAG316:
addiu $2, $2, 1
beq $2, $2, TAG317
multu $2, $2
srav $2, $2, $2
TAG317:
sll $0, $0, 0
sltu $1, $4, $2
divu $1, $2
xori $2, $2, 11
TAG318:
bne $2, $2, TAG319
slt $1, $2, $2
sll $1, $2, 3
sll $0, $0, 0
TAG319:
sllv $1, $2, $2
sll $0, $0, 0
bltz $2, TAG320
subu $1, $4, $1
TAG320:
lui $1, 5
sll $0, $0, 0
srl $1, $1, 12
sw $1, 0($1)
TAG321:
and $2, $1, $1
bne $1, $1, TAG322
mthi $2
slti $4, $2, 7
TAG322:
multu $4, $4
blez $4, TAG323
multu $4, $4
mflo $4
TAG323:
lh $4, 0($4)
bltz $4, TAG324
lbu $4, 0($4)
nor $1, $4, $4
TAG324:
bne $1, $1, TAG325
sll $2, $1, 4
lh $4, 16($2)
bgez $4, TAG325
TAG325:
addu $1, $4, $4
mtlo $1
bne $4, $1, TAG326
div $1, $4
TAG326:
lw $4, 0($1)
mflo $2
mflo $2
mthi $2
TAG327:
addu $4, $2, $2
lh $1, 0($4)
subu $2, $4, $4
bgez $4, TAG328
TAG328:
xor $3, $2, $2
lui $3, 13
lb $1, 0($2)
sll $0, $0, 0
TAG329:
beq $2, $2, TAG330
lbu $2, 0($2)
mult $2, $2
or $2, $2, $2
TAG330:
sltu $2, $2, $2
sltiu $2, $2, 4
mthi $2
mthi $2
TAG331:
div $2, $2
lbu $1, 0($2)
divu $1, $2
sllv $1, $1, $2
TAG332:
lbu $4, 0($1)
beq $4, $4, TAG333
divu $4, $4
mfhi $1
TAG333:
beq $1, $1, TAG334
lui $2, 12
lui $1, 0
add $1, $2, $2
TAG334:
mtlo $1
multu $1, $1
lui $3, 2
mtlo $3
TAG335:
sll $0, $0, 0
bltz $3, TAG336
multu $3, $3
bgtz $3, TAG336
TAG336:
sll $0, $0, 0
and $4, $3, $3
sll $0, $0, 0
or $2, $3, $3
TAG337:
mfhi $4
sll $0, $0, 0
sh $2, 0($4)
sh $4, 0($4)
TAG338:
lw $1, 0($4)
srl $1, $4, 10
mflo $4
bne $1, $1, TAG339
TAG339:
lui $1, 1
multu $1, $4
sll $0, $0, 0
lhu $3, 0($4)
TAG340:
lui $4, 13
lui $4, 14
bltz $4, TAG341
sll $0, $0, 0
TAG341:
sll $0, $0, 0
mfhi $3
mfhi $1
bltz $1, TAG342
TAG342:
slti $1, $1, 12
lbu $3, 0($1)
mfhi $4
div $3, $1
TAG343:
sra $3, $4, 3
bne $3, $3, TAG344
sh $4, 0($3)
addi $4, $4, 1
TAG344:
addiu $1, $4, 1
mflo $1
lb $4, 0($4)
and $4, $4, $1
TAG345:
lui $3, 11
div $4, $3
lhu $2, 0($4)
lui $3, 2
TAG346:
lui $3, 2
mfhi $3
beq $3, $3, TAG347
mthi $3
TAG347:
mflo $2
mthi $3
mthi $2
xori $3, $3, 1
TAG348:
bltz $3, TAG349
div $3, $3
lui $2, 4
sb $2, 0($3)
TAG349:
sra $2, $2, 6
mtlo $2
lui $4, 13
mthi $2
TAG350:
blez $4, TAG351
mthi $4
sll $0, $0, 0
addu $2, $4, $4
TAG351:
sll $0, $0, 0
bgez $2, TAG352
addu $1, $2, $2
bltz $2, TAG352
TAG352:
sltiu $2, $1, 7
mtlo $2
sb $1, 0($2)
bne $2, $2, TAG353
TAG353:
lhu $3, 0($2)
sb $3, 0($3)
mult $3, $2
sll $3, $2, 10
TAG354:
bne $3, $3, TAG355
nor $2, $3, $3
sllv $3, $3, $2
lui $4, 3
TAG355:
addiu $4, $4, 12
srav $2, $4, $4
lui $2, 0
and $4, $4, $2
TAG356:
lw $4, 0($4)
mflo $4
bgtz $4, TAG357
subu $1, $4, $4
TAG357:
mfhi $3
mthi $3
mfhi $4
bne $4, $1, TAG358
TAG358:
mthi $4
addiu $3, $4, 14
lbu $3, 0($3)
lui $1, 15
TAG359:
sltiu $1, $1, 0
sw $1, 0($1)
multu $1, $1
mflo $2
TAG360:
ori $4, $2, 4
bgtz $4, TAG361
slti $3, $4, 7
bgtz $2, TAG361
TAG361:
lui $2, 13
lui $3, 4
sll $0, $0, 0
lui $1, 5
TAG362:
lui $3, 8
mfhi $4
mfhi $3
ori $2, $1, 0
TAG363:
xor $4, $2, $2
bgtz $4, TAG364
and $1, $4, $2
sh $1, 0($1)
TAG364:
mflo $3
multu $3, $3
sra $4, $1, 7
mult $4, $4
TAG365:
bne $4, $4, TAG366
lhu $4, 0($4)
sh $4, 0($4)
lh $2, 0($4)
TAG366:
mult $2, $2
srl $1, $2, 13
mflo $3
sh $1, 0($3)
TAG367:
mfhi $3
add $3, $3, $3
mflo $4
lui $2, 12
TAG368:
bgtz $2, TAG369
mthi $2
lhu $2, 0($2)
addiu $4, $2, 13
TAG369:
mthi $4
sh $4, 0($4)
lui $1, 10
mthi $1
TAG370:
beq $1, $1, TAG371
sll $0, $0, 0
lui $4, 7
addiu $1, $4, 13
TAG371:
mtlo $1
mflo $1
beq $1, $1, TAG372
sll $0, $0, 0
TAG372:
beq $4, $4, TAG373
sh $4, 0($4)
mtlo $4
ori $2, $4, 6
TAG373:
andi $4, $2, 0
lbu $1, 0($4)
sll $1, $2, 14
srav $1, $1, $4
TAG374:
beq $1, $1, TAG375
mthi $1
mthi $1
mtlo $1
TAG375:
addiu $1, $1, 13
mfhi $3
lh $3, 0($3)
bltz $3, TAG376
TAG376:
mflo $3
beq $3, $3, TAG377
mflo $2
xori $1, $2, 15
TAG377:
divu $1, $1
sltiu $1, $1, 11
lw $1, 0($1)
mthi $1
TAG378:
add $1, $1, $1
lui $1, 15
mthi $1
slt $3, $1, $1
TAG379:
sh $3, 0($3)
sllv $1, $3, $3
mtlo $3
sw $1, 0($3)
TAG380:
sw $1, 0($1)
lui $1, 0
lh $2, 0($1)
sllv $2, $1, $1
TAG381:
addi $3, $2, 2
lb $1, 0($3)
lui $3, 13
slt $3, $3, $1
TAG382:
mtlo $3
sltiu $1, $3, 2
lui $3, 11
lui $2, 13
TAG383:
mflo $1
sra $4, $1, 10
mthi $4
multu $2, $2
TAG384:
sll $4, $4, 12
mflo $4
mflo $1
lhu $1, 0($4)
TAG385:
add $3, $1, $1
bgtz $3, TAG386
mtlo $1
xori $3, $1, 7
TAG386:
sb $3, 0($3)
sltu $1, $3, $3
lui $2, 9
sll $0, $0, 0
TAG387:
sll $0, $0, 0
beq $2, $1, TAG388
lw $4, 0($1)
beq $2, $2, TAG388
TAG388:
mtlo $4
lb $2, 0($4)
multu $2, $2
bgez $4, TAG389
TAG389:
sw $2, 0($2)
mthi $2
lui $4, 15
sltiu $1, $2, 15
TAG390:
sb $1, 0($1)
mthi $1
bne $1, $1, TAG391
sb $1, 0($1)
TAG391:
and $2, $1, $1
lbu $4, 0($2)
bgez $2, TAG392
mfhi $1
TAG392:
sb $1, 0($1)
lui $2, 12
multu $2, $1
multu $1, $1
TAG393:
xor $3, $2, $2
bltz $3, TAG394
multu $2, $3
slti $4, $2, 10
TAG394:
mtlo $4
sh $4, 0($4)
lh $2, 0($4)
lhu $3, 0($4)
TAG395:
mflo $3
mthi $3
bltz $3, TAG396
mflo $1
TAG396:
lui $4, 9
mflo $2
sll $0, $0, 0
bne $4, $1, TAG397
TAG397:
sll $0, $0, 0
mtlo $4
divu $4, $4
sw $4, 0($3)
TAG398:
mflo $2
lb $1, 0($2)
beq $1, $2, TAG399
lui $2, 2
TAG399:
sltiu $4, $2, 14
lh $3, 0($4)
lh $1, 0($3)
slti $1, $4, 3
TAG400:
xori $3, $1, 8
mtlo $1
sb $1, 0($3)
andi $1, $1, 1
TAG401:
bgez $1, TAG402
nor $2, $1, $1
sw $2, 0($1)
lui $4, 4
TAG402:
lui $2, 7
sra $1, $4, 15
sll $0, $0, 0
mtlo $2
TAG403:
multu $3, $3
mult $3, $3
bgtz $3, TAG404
lui $3, 8
TAG404:
mthi $3
divu $3, $3
bgtz $3, TAG405
or $2, $3, $3
TAG405:
bgez $2, TAG406
mult $2, $2
mult $2, $2
beq $2, $2, TAG406
TAG406:
mtlo $2
bgez $2, TAG407
nor $3, $2, $2
srav $2, $3, $3
TAG407:
div $2, $2
mtlo $2
mult $2, $2
addu $1, $2, $2
TAG408:
bne $1, $1, TAG409
mfhi $3
mfhi $4
bne $4, $1, TAG409
TAG409:
addiu $3, $4, 2
div $4, $3
bltz $3, TAG410
lui $2, 12
TAG410:
beq $2, $2, TAG411
lui $2, 6
mfhi $3
sh $2, 0($2)
TAG411:
beq $3, $3, TAG412
lhu $4, 0($3)
lh $4, 0($3)
sh $4, 0($4)
TAG412:
mthi $4
beq $4, $4, TAG413
mflo $1
mthi $1
TAG413:
xori $4, $1, 14
lui $4, 9
slti $1, $1, 5
sltiu $3, $4, 15
TAG414:
nor $1, $3, $3
mthi $3
divu $3, $1
slti $3, $3, 8
TAG415:
bgez $3, TAG416
mtlo $3
blez $3, TAG416
lw $1, 0($3)
TAG416:
mflo $2
beq $1, $2, TAG417
lui $3, 6
lui $3, 15
TAG417:
beq $3, $3, TAG418
mfhi $2
mthi $2
blez $3, TAG418
TAG418:
slti $4, $2, 11
lb $4, 0($2)
lui $1, 2
sw $1, 0($4)
TAG419:
andi $4, $1, 12
bne $1, $4, TAG420
addiu $4, $1, 4
lb $1, 0($4)
TAG420:
and $1, $1, $1
mult $1, $1
div $1, $1
subu $3, $1, $1
TAG421:
sw $3, 0($3)
srlv $2, $3, $3
lw $3, 0($3)
sb $2, 0($2)
TAG422:
mthi $3
andi $1, $3, 2
lbu $2, 0($1)
sltu $3, $2, $2
TAG423:
sb $3, 0($3)
mflo $2
mflo $3
subu $1, $2, $2
TAG424:
mfhi $3
mfhi $4
lhu $1, 0($3)
mult $4, $3
TAG425:
mult $1, $1
beq $1, $1, TAG426
lw $2, 0($1)
sra $2, $2, 4
TAG426:
beq $2, $2, TAG427
mthi $2
bne $2, $2, TAG427
mfhi $1
TAG427:
mtlo $1
bgtz $1, TAG428
lhu $1, 0($1)
sh $1, 0($1)
TAG428:
mult $1, $1
multu $1, $1
lhu $3, 0($1)
blez $3, TAG429
TAG429:
addi $1, $3, 4
mfhi $3
mflo $3
bne $1, $1, TAG430
TAG430:
lui $3, 6
subu $3, $3, $3
bne $3, $3, TAG431
mtlo $3
TAG431:
nor $2, $3, $3
mthi $2
ori $4, $3, 10
mflo $4
TAG432:
sll $4, $4, 9
mthi $4
lui $3, 2
bne $4, $3, TAG433
TAG433:
mult $3, $3
lui $1, 8
addu $4, $1, $3
bne $1, $3, TAG434
TAG434:
andi $1, $4, 7
lui $4, 4
sb $1, 0($1)
lb $4, 0($1)
TAG435:
multu $4, $4
and $1, $4, $4
slti $1, $1, 11
blez $1, TAG436
TAG436:
mthi $1
sb $1, 0($1)
bltz $1, TAG437
lui $2, 10
TAG437:
divu $2, $2
subu $3, $2, $2
sll $0, $0, 0
beq $2, $3, TAG438
TAG438:
and $1, $2, $2
mtlo $1
blez $2, TAG439
sll $0, $0, 0
TAG439:
xor $1, $1, $1
lh $2, 0($1)
lh $3, 0($1)
mtlo $2
TAG440:
blez $3, TAG441
addiu $3, $3, 9
lh $4, -265($3)
mtlo $4
TAG441:
addiu $3, $4, 13
or $1, $4, $4
sh $1, -256($4)
sltu $3, $3, $4
TAG442:
multu $3, $3
mfhi $4
lui $3, 10
sll $0, $0, 0
TAG443:
sh $4, 0($4)
mult $4, $4
bgtz $4, TAG444
multu $4, $4
TAG444:
lw $2, 0($4)
sll $1, $4, 14
multu $2, $4
sltiu $3, $1, 8
TAG445:
mflo $3
lbu $3, 0($3)
mthi $3
mthi $3
TAG446:
blez $3, TAG447
sw $3, 0($3)
mfhi $3
sh $3, 0($3)
TAG447:
sb $3, 0($3)
mfhi $3
bne $3, $3, TAG448
sb $3, 0($3)
TAG448:
beq $3, $3, TAG449
lui $2, 15
sw $2, 0($3)
lui $1, 3
TAG449:
lui $4, 7
lui $2, 13
lui $2, 10
lui $1, 2
TAG450:
mthi $1
or $1, $1, $1
mflo $4
sb $1, 0($4)
TAG451:
multu $4, $4
andi $2, $4, 9
blez $4, TAG452
sltu $3, $4, $4
TAG452:
sw $3, 0($3)
multu $3, $3
beq $3, $3, TAG453
multu $3, $3
TAG453:
xori $2, $3, 8
sllv $3, $3, $3
multu $2, $2
blez $3, TAG454
TAG454:
multu $3, $3
bne $3, $3, TAG455
mtlo $3
lui $2, 12
TAG455:
beq $2, $2, TAG456
subu $3, $2, $2
sllv $1, $3, $3
lb $1, 0($1)
TAG456:
div $1, $1
mfhi $1
bltz $1, TAG457
lw $2, 0($1)
TAG457:
srl $4, $2, 3
mtlo $4
bne $4, $4, TAG458
mtlo $2
TAG458:
sb $4, 0($4)
srav $2, $4, $4
lui $4, 15
sll $0, $0, 0
TAG459:
mthi $4
sll $0, $0, 0
bgtz $4, TAG460
addiu $3, $1, 9
TAG460:
addiu $4, $3, 15
mult $4, $4
bne $3, $4, TAG461
mfhi $3
TAG461:
mthi $3
mtlo $3
mthi $3
bgez $3, TAG462
TAG462:
lui $4, 2
and $1, $4, $3
bgez $1, TAG463
sll $0, $0, 0
TAG463:
beq $1, $1, TAG464
sh $1, 0($1)
mflo $1
beq $1, $1, TAG464
TAG464:
sw $1, 0($1)
lh $1, 0($1)
bgez $1, TAG465
lui $2, 5
TAG465:
mfhi $2
lbu $1, 0($2)
mfhi $1
mtlo $2
TAG466:
mfhi $1
add $1, $1, $1
lb $1, 0($1)
blez $1, TAG467
TAG467:
multu $1, $1
sra $4, $1, 1
lh $3, 0($4)
add $4, $4, $3
TAG468:
sw $4, 0($4)
mtlo $4
beq $4, $4, TAG469
mflo $3
TAG469:
lui $3, 15
mflo $4
lh $2, 0($4)
nor $4, $2, $2
TAG470:
divu $4, $4
mthi $4
nor $1, $4, $4
blez $4, TAG471
TAG471:
multu $1, $1
slti $1, $1, 4
mflo $3
blez $1, TAG472
TAG472:
mtlo $3
lui $1, 7
xori $2, $3, 14
lh $2, 0($3)
TAG473:
bltz $2, TAG474
mthi $2
lui $1, 1
blez $1, TAG474
TAG474:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
mfhi $1
TAG475:
mult $1, $1
beq $1, $1, TAG476
lui $3, 12
sw $1, 0($3)
TAG476:
mthi $3
sll $0, $0, 0
beq $3, $3, TAG477
sra $4, $3, 13
TAG477:
mfhi $2
mtlo $2
lui $1, 9
lh $4, 0($4)
TAG478:
lw $2, 0($4)
multu $4, $2
div $2, $4
sll $0, $0, 0
TAG479:
addiu $4, $4, 11
mfhi $4
addiu $3, $4, 13
nor $1, $4, $4
TAG480:
mflo $4
sb $4, 9($1)
mfhi $3
divu $1, $4
TAG481:
mfhi $3
slt $4, $3, $3
lbu $1, 0($4)
sb $3, 0($4)
TAG482:
beq $1, $1, TAG483
lui $4, 15
mtlo $4
mthi $1
TAG483:
sll $1, $4, 6
mult $1, $4
sll $0, $0, 0
mflo $3
TAG484:
sw $3, 0($3)
mult $3, $3
subu $1, $3, $3
mtlo $1
TAG485:
multu $1, $1
lw $3, 0($1)
xor $1, $3, $3
mult $1, $1
TAG486:
bne $1, $1, TAG487
lui $2, 3
mult $2, $1
blez $1, TAG487
TAG487:
addiu $2, $2, 0
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG488:
slt $2, $2, $2
srlv $1, $2, $2
bltz $1, TAG489
mthi $2
TAG489:
beq $1, $1, TAG490
sh $1, 0($1)
srl $1, $1, 10
bgez $1, TAG490
TAG490:
lui $4, 2
sra $1, $1, 1
nor $3, $1, $4
lb $4, 0($1)
TAG491:
mthi $4
slti $2, $4, 12
lhu $3, 0($4)
bltz $3, TAG492
TAG492:
ori $2, $3, 0
lbu $1, 0($3)
mthi $2
mfhi $4
TAG493:
sb $4, 0($4)
mfhi $2
blez $2, TAG494
addiu $1, $4, 14
TAG494:
xori $2, $1, 9
bgtz $2, TAG495
lui $2, 13
bne $2, $1, TAG495
TAG495:
mflo $2
addu $3, $2, $2
sltiu $1, $2, 13
subu $1, $1, $1
TAG496:
bne $1, $1, TAG497
lbu $4, 0($1)
mflo $1
sltiu $4, $1, 5
TAG497:
mult $4, $4
mfhi $1
addiu $4, $4, 14
sra $3, $4, 13
TAG498:
lui $4, 14
div $3, $4
mtlo $4
sb $4, 0($3)
TAG499:
divu $4, $4
mthi $4
lui $1, 3
bltz $4, TAG500
TAG500:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
mult $3, $3
TAG501:
bne $3, $3, TAG502
mflo $3
bgez $3, TAG502
mthi $3
TAG502:
mflo $4
mfhi $2
blez $2, TAG503
sltu $1, $4, $2
TAG503:
bne $1, $1, TAG504
mult $1, $1
multu $1, $1
bne $1, $1, TAG504
TAG504:
sh $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG505
slti $4, $1, 12
TAG505:
mtlo $4
sllv $1, $4, $4
sh $1, 0($1)
or $2, $4, $1
TAG506:
lui $1, 2
mflo $4
sll $3, $2, 5
mflo $4
TAG507:
lb $1, 0($4)
mtlo $1
mult $4, $1
lui $2, 0
TAG508:
sh $2, 0($2)
sb $2, 0($2)
sw $2, 0($2)
mfhi $1
TAG509:
or $1, $1, $1
beq $1, $1, TAG510
mult $1, $1
mthi $1
TAG510:
bltz $1, TAG511
lh $1, 0($1)
srlv $4, $1, $1
lui $2, 1
TAG511:
mfhi $1
subu $4, $1, $2
xori $1, $1, 10
beq $1, $4, TAG512
TAG512:
srlv $4, $1, $1
mult $1, $4
lui $3, 0
mthi $4
TAG513:
mthi $3
lh $1, 0($3)
bltz $3, TAG514
mult $1, $1
TAG514:
lh $3, 0($1)
lw $3, 0($3)
sh $3, 0($3)
mtlo $3
TAG515:
mflo $1
mflo $4
subu $2, $1, $4
lh $4, 0($4)
TAG516:
srav $4, $4, $4
lui $1, 9
sub $3, $1, $4
beq $3, $4, TAG517
TAG517:
sltiu $1, $3, 7
mfhi $2
srlv $3, $1, $1
lui $1, 7
TAG518:
sll $0, $0, 0
blez $1, TAG519
mthi $1
sll $0, $0, 0
TAG519:
sll $0, $0, 0
andi $2, $1, 10
lw $1, 0($2)
beq $2, $2, TAG520
TAG520:
lbu $2, 0($1)
lui $2, 12
sll $0, $0, 0
mtlo $3
TAG521:
lhu $2, 0($3)
mtlo $3
sb $3, 0($3)
sb $3, 0($2)
TAG522:
mflo $2
lhu $2, 0($2)
bltz $2, TAG523
sub $1, $2, $2
TAG523:
lui $3, 12
lw $1, 0($1)
lui $1, 1
beq $1, $1, TAG524
TAG524:
sll $0, $0, 0
blez $2, TAG525
lui $3, 7
lui $1, 8
TAG525:
lui $1, 11
mfhi $3
mtlo $1
lui $1, 5
TAG526:
div $1, $1
bgez $1, TAG527
ori $1, $1, 5
nor $4, $1, $1
TAG527:
mtlo $4
multu $4, $4
mult $4, $4
sw $4, 0($4)
TAG528:
lui $2, 4
mult $4, $2
bltz $2, TAG529
sll $0, $0, 0
TAG529:
mflo $2
sw $2, 0($2)
multu $2, $2
lw $1, 0($2)
TAG530:
sh $1, 0($1)
bltz $1, TAG531
lui $2, 9
sltu $3, $1, $1
TAG531:
lui $4, 5
lui $4, 10
sll $0, $0, 0
sll $0, $0, 0
TAG532:
mthi $4
srlv $3, $4, $4
mthi $4
sll $0, $0, 0
TAG533:
sll $0, $0, 0
sw $1, 0($1)
sll $0, $0, 0
lui $3, 12
TAG534:
mtlo $3
mtlo $3
mtlo $3
mfhi $3
TAG535:
bne $3, $3, TAG536
nor $1, $3, $3
bgez $3, TAG536
lui $2, 7
TAG536:
ori $4, $2, 15
srl $2, $2, 9
beq $2, $2, TAG537
sll $0, $0, 0
TAG537:
sw $2, -896($2)
blez $2, TAG538
lui $3, 3
addu $1, $3, $2
TAG538:
bne $1, $1, TAG539
mthi $1
mult $1, $1
bgez $1, TAG539
TAG539:
sll $0, $0, 0
lui $2, 4
sll $0, $0, 0
addiu $2, $1, 0
TAG540:
sll $0, $0, 0
sll $0, $0, 0
subu $3, $2, $1
mflo $4
TAG541:
sll $0, $0, 0
lui $3, 9
bgtz $3, TAG542
sltiu $4, $4, 6
TAG542:
sh $4, 0($4)
lw $2, 0($4)
mult $4, $2
mfhi $2
TAG543:
lui $2, 7
mtlo $2
nor $2, $2, $2
sll $0, $0, 0
TAG544:
subu $4, $2, $2
sll $0, $0, 0
bgtz $2, TAG545
mflo $2
TAG545:
div $2, $2
xori $4, $2, 1
mflo $1
mult $1, $4
TAG546:
srav $4, $1, $1
mflo $2
sh $1, 0($4)
bgez $4, TAG547
TAG547:
lui $4, 0
bne $4, $2, TAG548
mtlo $2
mtlo $4
TAG548:
lui $2, 7
mfhi $2
sub $4, $2, $2
mult $4, $4
TAG549:
multu $4, $4
sh $4, 0($4)
mthi $4
mthi $4
TAG550:
sb $4, 0($4)
beq $4, $4, TAG551
lui $4, 10
lui $3, 7
TAG551:
xor $2, $3, $3
srlv $3, $3, $2
beq $3, $3, TAG552
srav $1, $3, $3
TAG552:
multu $1, $1
bgtz $1, TAG553
sll $3, $1, 10
mult $3, $1
TAG553:
bgtz $3, TAG554
mflo $4
bgtz $3, TAG554
lui $1, 11
TAG554:
mtlo $1
beq $1, $1, TAG555
sll $0, $0, 0
sltiu $3, $1, 4
TAG555:
lui $2, 0
mtlo $2
mult $3, $2
mflo $4
TAG556:
mult $4, $4
mthi $4
lui $4, 7
mtlo $4
TAG557:
sll $0, $0, 0
div $4, $4
slt $4, $3, $3
sw $4, 0($4)
TAG558:
sh $4, 0($4)
mtlo $4
xori $1, $4, 12
lui $3, 0
TAG559:
sltu $2, $3, $3
sw $2, 0($3)
mflo $2
lui $2, 6
TAG560:
sll $0, $0, 0
bne $2, $2, TAG561
sll $0, $0, 0
mult $3, $3
TAG561:
sub $3, $3, $3
lh $3, 0($3)
mtlo $3
mthi $3
TAG562:
lui $2, 1
or $3, $2, $2
xori $2, $2, 14
sll $0, $0, 0
TAG563:
lui $2, 9
andi $4, $2, 4
add $2, $4, $2
sw $2, 0($4)
TAG564:
and $2, $2, $2
sra $3, $2, 1
sll $0, $0, 0
bne $2, $3, TAG565
TAG565:
multu $4, $4
blez $4, TAG566
mfhi $2
lb $3, 0($2)
TAG566:
mfhi $2
beq $3, $2, TAG567
mult $3, $3
sw $2, 0($2)
TAG567:
blez $2, TAG568
mflo $1
addu $2, $2, $1
beq $2, $2, TAG568
TAG568:
sll $1, $2, 15
mtlo $1
sltu $4, $1, $1
multu $4, $1
TAG569:
beq $4, $4, TAG570
sh $4, 0($4)
sb $4, 0($4)
mtlo $4
TAG570:
sb $4, 0($4)
bne $4, $4, TAG571
multu $4, $4
sh $4, 0($4)
TAG571:
and $3, $4, $4
mfhi $3
lui $4, 4
beq $3, $4, TAG572
TAG572:
sll $0, $0, 0
mthi $4
bgtz $4, TAG573
sll $0, $0, 0
TAG573:
xor $4, $4, $4
sw $4, 0($4)
mthi $4
mult $4, $4
TAG574:
mtlo $4
mult $4, $4
sw $4, 0($4)
bgez $4, TAG575
TAG575:
multu $4, $4
multu $4, $4
lui $1, 3
lui $2, 1
TAG576:
bltz $2, TAG577
sll $0, $0, 0
sllv $1, $1, $2
sll $0, $0, 0
TAG577:
sll $0, $0, 0
srl $3, $1, 3
bltz $1, TAG578
sll $0, $0, 0
TAG578:
sw $3, -24576($3)
mfhi $2
div $2, $3
bgtz $3, TAG579
TAG579:
mult $2, $2
mult $2, $2
mult $2, $2
beq $2, $2, TAG580
TAG580:
mfhi $4
mult $4, $2
sw $2, 0($2)
mthi $2
TAG581:
mthi $4
bltz $4, TAG582
lui $2, 5
div $2, $2
TAG582:
blez $2, TAG583
div $2, $2
addiu $4, $2, 15
lui $2, 7
TAG583:
mflo $1
mflo $1
addiu $3, $1, 6
div $3, $1
TAG584:
and $3, $3, $3
lui $2, 7
sllv $2, $2, $3
bne $3, $2, TAG585
TAG585:
sll $0, $0, 0
sll $0, $0, 0
lbu $2, 0($3)
srav $1, $2, $2
TAG586:
lb $1, 0($1)
mult $1, $1
sw $1, 0($1)
sh $1, 0($1)
TAG587:
mtlo $1
sra $4, $1, 5
mfhi $2
addi $3, $2, 11
TAG588:
mflo $4
mflo $2
andi $3, $4, 5
lui $3, 6
TAG589:
srav $3, $3, $3
divu $3, $3
sll $0, $0, 0
div $3, $3
TAG590:
blez $3, TAG591
andi $4, $3, 1
lui $1, 5
sltu $4, $1, $4
TAG591:
bgtz $4, TAG592
lbu $1, 0($4)
sb $4, 0($4)
mflo $3
TAG592:
mflo $3
bne $3, $3, TAG593
sltu $2, $3, $3
mfhi $2
TAG593:
bne $2, $2, TAG594
mtlo $2
mult $2, $2
mfhi $3
TAG594:
mult $3, $3
srl $3, $3, 5
blez $3, TAG595
mult $3, $3
TAG595:
sb $3, 0($3)
mflo $2
subu $4, $3, $2
sh $3, 0($2)
TAG596:
and $2, $4, $4
lui $2, 3
divu $4, $2
lui $2, 12
TAG597:
mfhi $1
slt $3, $2, $2
srl $3, $1, 3
bgez $3, TAG598
TAG598:
add $1, $3, $3
slt $1, $3, $1
mtlo $1
lb $1, 0($1)
TAG599:
lbu $2, 0($1)
and $4, $2, $2
blez $2, TAG600
lw $4, 0($2)
TAG600:
beq $4, $4, TAG601
mtlo $4
sh $4, 0($4)
sll $4, $4, 9
TAG601:
mfhi $3
sw $4, 0($4)
srav $2, $3, $4
mthi $2
TAG602:
sh $2, 0($2)
mult $2, $2
bgtz $2, TAG603
mfhi $4
TAG603:
lh $2, 0($4)
ori $3, $4, 14
mflo $1
beq $2, $1, TAG604
TAG604:
mtlo $1
bgez $1, TAG605
mflo $4
bne $1, $1, TAG605
TAG605:
ori $4, $4, 3
beq $4, $4, TAG606
mult $4, $4
lh $4, 0($4)
TAG606:
mtlo $4
bne $4, $4, TAG607
lb $4, 0($4)
mthi $4
TAG607:
mfhi $1
sllv $2, $1, $1
mult $2, $1
add $4, $2, $2
TAG608:
ori $3, $4, 12
sw $3, 0($3)
mflo $3
srl $3, $3, 4
TAG609:
mthi $3
blez $3, TAG610
srl $1, $3, 12
mfhi $4
TAG610:
bltz $4, TAG611
lui $2, 8
ori $1, $4, 0
lui $2, 0
TAG611:
mflo $1
beq $1, $1, TAG612
sltiu $2, $2, 5
beq $2, $2, TAG612
TAG612:
slt $1, $2, $2
mflo $1
or $1, $1, $1
and $1, $1, $1
TAG613:
mtlo $1
bne $1, $1, TAG614
sw $1, 0($1)
bne $1, $1, TAG614
TAG614:
mtlo $1
sb $1, 0($1)
mfhi $2
blez $1, TAG615
TAG615:
lui $2, 4
mfhi $3
or $4, $3, $3
srl $1, $4, 10
TAG616:
blez $1, TAG617
sltiu $3, $1, 12
sh $1, 0($1)
or $2, $3, $3
TAG617:
lui $4, 3
subu $1, $4, $2
sll $0, $0, 0
mflo $1
TAG618:
multu $1, $1
mult $1, $1
sll $1, $1, 4
mfhi $4
TAG619:
beq $4, $4, TAG620
mthi $4
mflo $1
lui $3, 14
TAG620:
ori $3, $3, 8
mflo $2
mflo $1
xor $2, $3, $3
TAG621:
beq $2, $2, TAG622
lui $3, 10
multu $3, $3
ori $2, $3, 7
TAG622:
nor $1, $2, $2
mtlo $1
mflo $2
bgtz $1, TAG623
TAG623:
sb $2, 1($2)
srl $2, $2, 2
bne $2, $2, TAG624
mfhi $2
TAG624:
addiu $4, $2, 11
nor $1, $4, $2
mfhi $2
slt $3, $4, $4
TAG625:
beq $3, $3, TAG626
mthi $3
sltu $1, $3, $3
sh $3, 0($1)
TAG626:
mflo $3
lui $3, 15
mthi $3
bltz $1, TAG627
TAG627:
divu $3, $3
sltu $4, $3, $3
bne $3, $4, TAG628
lui $1, 14
TAG628:
sll $0, $0, 0
addu $2, $1, $1
beq $2, $1, TAG629
sll $0, $0, 0
TAG629:
lui $1, 7
mtlo $1
bgez $1, TAG630
mthi $1
TAG630:
bgez $1, TAG631
xor $3, $1, $1
lui $2, 3
addi $1, $1, 6
TAG631:
sll $0, $0, 0
mtlo $4
mflo $4
lh $4, 0($4)
TAG632:
mfhi $1
mflo $2
mthi $1
and $3, $1, $1
TAG633:
lui $2, 3
addiu $1, $2, 11
mfhi $3
bne $2, $1, TAG634
TAG634:
addu $1, $3, $3
subu $1, $3, $3
bgez $1, TAG635
sll $0, $0, 0
TAG635:
multu $1, $1
addiu $4, $1, 5
bne $1, $4, TAG636
lhu $4, 0($1)
TAG636:
sw $4, -255($4)
addu $3, $4, $4
lui $2, 1
mthi $2
TAG637:
sll $0, $0, 0
sh $1, 0($1)
sra $3, $2, 5
lbu $1, -2048($3)
TAG638:
blez $1, TAG639
mfhi $3
xori $4, $3, 7
mtlo $1
TAG639:
sb $4, -255($4)
mult $4, $4
sb $4, -255($4)
beq $4, $4, TAG640
TAG640:
mfhi $4
sw $4, 0($4)
lui $1, 14
lui $4, 14
TAG641:
mtlo $4
blez $4, TAG642
mthi $4
bne $4, $4, TAG642
TAG642:
and $3, $4, $4
sltu $4, $4, $3
mthi $4
bne $3, $3, TAG643
TAG643:
lhu $4, 0($4)
lbu $2, 0($4)
mtlo $4
bgez $4, TAG644
TAG644:
lui $4, 8
mtlo $4
srlv $1, $2, $2
divu $1, $4
TAG645:
sh $1, 0($1)
mthi $1
sb $1, 0($1)
beq $1, $1, TAG646
TAG646:
lui $2, 15
div $1, $2
div $2, $2
bne $2, $2, TAG647
TAG647:
mflo $4
sll $0, $0, 0
beq $3, $3, TAG648
sll $0, $0, 0
TAG648:
sll $0, $0, 0
mflo $2
blez $2, TAG649
andi $2, $3, 15
TAG649:
lh $4, 0($2)
bgez $4, TAG650
addu $3, $4, $4
slt $3, $3, $3
TAG650:
mthi $3
sw $3, 0($3)
lh $2, 0($3)
xori $1, $3, 6
TAG651:
bne $1, $1, TAG652
lui $4, 12
addu $3, $1, $1
lui $1, 3
TAG652:
mthi $1
sll $0, $0, 0
lui $1, 14
lui $3, 11
TAG653:
blez $3, TAG654
sll $0, $0, 0
multu $3, $3
addu $4, $3, $3
TAG654:
sll $0, $0, 0
sll $0, $0, 0
or $2, $3, $4
sltiu $2, $4, 8
TAG655:
addiu $2, $2, 3
sb $2, 0($2)
lui $4, 7
divu $2, $4
TAG656:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG657
mflo $3
TAG657:
multu $3, $3
beq $3, $3, TAG658
multu $3, $3
sll $4, $3, 9
TAG658:
mflo $1
mtlo $4
mflo $1
mtlo $1
TAG659:
bltz $1, TAG660
srl $3, $1, 12
xor $4, $3, $3
lhu $3, 0($3)
TAG660:
sb $3, 0($3)
bltz $3, TAG661
ori $4, $3, 15
lbu $1, 0($3)
TAG661:
sllv $2, $1, $1
beq $1, $2, TAG662
mult $1, $2
srl $1, $2, 11
TAG662:
addu $2, $1, $1
bne $2, $2, TAG663
lui $2, 8
slti $2, $2, 14
TAG663:
bgez $2, TAG664
lhu $3, 0($2)
mthi $2
mflo $3
TAG664:
lw $3, 0($3)
bne $3, $3, TAG665
slt $4, $3, $3
multu $3, $3
TAG665:
bgez $4, TAG666
mfhi $4
lui $2, 10
bne $2, $4, TAG666
TAG666:
mult $2, $2
mult $2, $2
mfhi $4
mthi $4
TAG667:
multu $4, $4
mfhi $4
lui $4, 8
mthi $4
TAG668:
and $2, $4, $4
mult $2, $4
sll $0, $0, 0
blez $2, TAG669
TAG669:
slt $2, $2, $2
mult $2, $2
or $4, $2, $2
bgez $4, TAG670
TAG670:
mtlo $4
mfhi $3
bgtz $3, TAG671
sra $2, $3, 3
TAG671:
bne $2, $2, TAG672
xori $3, $2, 8
mfhi $4
bne $4, $2, TAG672
TAG672:
srl $1, $4, 3
mthi $4
lh $3, 0($4)
lhu $3, 0($1)
TAG673:
bne $3, $3, TAG674
sw $3, 0($3)
sh $3, 0($3)
multu $3, $3
TAG674:
xori $4, $3, 2
mtlo $4
beq $4, $4, TAG675
xor $3, $3, $4
TAG675:
lbu $1, 0($3)
sh $3, 0($3)
mfhi $3
xor $2, $3, $3
TAG676:
mtlo $2
sw $2, 0($2)
sll $4, $2, 5
sllv $3, $2, $4
TAG677:
mfhi $2
mflo $1
lui $4, 7
srl $4, $1, 7
TAG678:
mult $4, $4
bgez $4, TAG679
sllv $3, $4, $4
mflo $3
TAG679:
bne $3, $3, TAG680
mthi $3
bne $3, $3, TAG680
mflo $2
TAG680:
mult $2, $2
lb $3, 0($2)
lbu $4, 0($3)
mtlo $4
TAG681:
sh $4, 0($4)
sb $4, 0($4)
sltu $2, $4, $4
multu $4, $2
TAG682:
multu $2, $2
sw $2, 0($2)
lw $2, 0($2)
lw $4, 0($2)
TAG683:
addu $1, $4, $4
sw $4, 0($1)
lhu $1, 0($4)
lui $1, 9
TAG684:
lui $3, 14
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
TAG685:
blez $1, TAG686
sll $0, $0, 0
srlv $2, $1, $1
bne $1, $1, TAG686
TAG686:
ori $4, $2, 3
mfhi $1
andi $1, $1, 3
sll $0, $0, 0
TAG687:
mflo $4
beq $1, $4, TAG688
srlv $3, $4, $4
slt $4, $4, $1
TAG688:
bne $4, $4, TAG689
lui $3, 9
lb $1, 0($4)
bgtz $4, TAG689
TAG689:
sw $1, 0($1)
bne $1, $1, TAG690
sll $2, $1, 14
lbu $4, 0($2)
TAG690:
multu $4, $4
sb $4, 0($4)
bne $4, $4, TAG691
subu $2, $4, $4
TAG691:
and $1, $2, $2
nor $3, $1, $1
sub $4, $2, $2
bne $4, $3, TAG692
TAG692:
lw $3, 0($4)
xor $3, $4, $4
multu $3, $3
bltz $3, TAG693
TAG693:
mthi $3
bltz $3, TAG694
sw $3, 0($3)
sh $3, 0($3)
TAG694:
sh $3, 0($3)
xor $2, $3, $3
mflo $2
bne $2, $2, TAG695
TAG695:
sh $2, 0($2)
lh $2, 0($2)
sllv $4, $2, $2
lui $4, 8
TAG696:
mult $4, $4
bgtz $4, TAG697
xori $1, $4, 3
lui $2, 7
TAG697:
mflo $3
lui $3, 3
sll $0, $0, 0
mflo $2
TAG698:
mflo $1
slt $4, $2, $1
slti $4, $2, 1
bgez $4, TAG699
TAG699:
sltiu $3, $4, 1
sw $3, 0($3)
mthi $3
bne $3, $3, TAG700
TAG700:
andi $3, $3, 0
addi $1, $3, 1
mtlo $3
sw $3, 0($3)
TAG701:
mflo $4
sb $4, 0($1)
sltu $1, $4, $4
srlv $1, $1, $4
TAG702:
sltu $1, $1, $1
mthi $1
lb $2, 0($1)
beq $2, $1, TAG703
TAG703:
mult $2, $2
lui $1, 3
mtlo $2
multu $1, $2
TAG704:
beq $1, $1, TAG705
sll $0, $0, 0
bne $1, $1, TAG705
mult $1, $1
TAG705:
lui $2, 15
div $2, $2
bgtz $2, TAG706
mthi $1
TAG706:
mthi $2
sll $0, $0, 0
sh $3, 0($3)
mtlo $3
TAG707:
sw $3, 0($3)
addi $1, $3, 6
mflo $2
lh $3, 0($1)
TAG708:
bne $3, $3, TAG709
andi $2, $3, 5
lhu $2, -1792($3)
mthi $3
TAG709:
mthi $2
sb $2, 0($2)
multu $2, $2
beq $2, $2, TAG710
TAG710:
lbu $4, 0($2)
beq $2, $2, TAG711
srlv $2, $2, $4
lw $3, 0($2)
TAG711:
mflo $2
mult $2, $3
mflo $4
lui $3, 14
TAG712:
addiu $3, $3, 3
divu $3, $3
lui $1, 9
lui $4, 15
TAG713:
beq $4, $4, TAG714
and $1, $4, $4
mult $1, $1
mflo $2
TAG714:
mtlo $2
srlv $3, $2, $2
mthi $3
multu $3, $3
TAG715:
slti $1, $3, 13
mfhi $4
mthi $4
xori $2, $3, 0
TAG716:
bgez $2, TAG717
lui $3, 15
lw $3, 0($3)
sw $2, 0($3)
TAG717:
sll $0, $0, 0
multu $3, $3
mflo $3
lui $4, 8
TAG718:
sll $0, $0, 0
sra $2, $4, 4
lui $2, 6
subu $1, $4, $2
TAG719:
sllv $3, $1, $1
mthi $1
sltiu $2, $1, 7
sltiu $2, $2, 14
TAG720:
slti $1, $2, 1
bne $1, $1, TAG721
sb $1, 0($2)
sb $2, 0($2)
TAG721:
bgtz $1, TAG722
mflo $1
beq $1, $1, TAG722
sll $1, $1, 7
TAG722:
mult $1, $1
mtlo $1
mfhi $3
multu $3, $3
TAG723:
bltz $3, TAG724
mfhi $3
mtlo $3
multu $3, $3
TAG724:
blez $3, TAG725
lui $3, 3
sb $3, 0($3)
lh $1, 0($3)
TAG725:
lui $1, 10
mflo $4
beq $1, $4, TAG726
mfhi $2
TAG726:
mthi $2
subu $4, $2, $2
sh $4, 0($2)
mflo $4
TAG727:
sh $4, 0($4)
blez $4, TAG728
multu $4, $4
sw $4, 0($4)
TAG728:
xori $3, $4, 8
beq $4, $3, TAG729
mfhi $4
beq $4, $3, TAG729
TAG729:
lui $4, 4
sll $1, $4, 15
beq $1, $4, TAG730
sllv $2, $4, $4
TAG730:
sll $0, $0, 0
mult $2, $1
mult $2, $1
beq $1, $1, TAG731
TAG731:
mult $1, $1
multu $1, $1
srl $1, $1, 1
mtlo $1
TAG732:
beq $1, $1, TAG733
sw $1, 0($1)
sltiu $1, $1, 12
sh $1, 0($1)
TAG733:
sh $1, 0($1)
blez $1, TAG734
lui $2, 6
sh $2, 0($2)
TAG734:
lui $2, 8
bne $2, $2, TAG735
slt $4, $2, $2
andi $1, $2, 3
TAG735:
lui $2, 4
sll $0, $0, 0
blez $2, TAG736
sll $0, $0, 0
TAG736:
beq $4, $4, TAG737
lbu $2, 0($4)
mtlo $2
sh $2, 0($4)
TAG737:
beq $2, $2, TAG738
sb $2, 0($2)
lui $4, 14
mtlo $4
TAG738:
lb $2, 0($4)
blez $4, TAG739
mfhi $2
lbu $4, 0($2)
TAG739:
mfhi $2
mfhi $4
lui $2, 9
mthi $2
TAG740:
blez $2, TAG741
mflo $2
mflo $1
mtlo $1
TAG741:
mfhi $2
bgtz $1, TAG742
sw $1, 0($1)
lbu $1, 0($1)
TAG742:
lui $3, 6
lhu $3, 0($1)
mfhi $3
multu $3, $3
TAG743:
mflo $1
slt $3, $3, $3
lui $2, 14
mflo $1
TAG744:
sltu $2, $1, $1
mult $1, $1
bltz $2, TAG745
add $4, $2, $1
TAG745:
lui $1, 8
andi $3, $4, 1
sll $0, $0, 0
multu $1, $3
TAG746:
mthi $3
lh $2, 0($3)
lw $4, 0($3)
multu $2, $2
TAG747:
mfhi $2
mtlo $4
mfhi $4
lb $2, 0($4)
TAG748:
srav $4, $2, $2
mtlo $4
sb $4, 0($4)
bltz $2, TAG749
TAG749:
mthi $4
multu $4, $4
mthi $4
bne $4, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop