ori $1, $0, 4
ori $2, $0, 11
ori $3, $0, 8
ori $4, $0, 11
sw $2, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $2, 96($0)
sw $1, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $4, 120($0)
sw $3, 124($0)
ori $2, $2, 6
lui $1, 5
div $2, $2
addu $1, $2, $1
TAG1:
mtlo $1
sll $2, $1, 10
bgez $1, TAG2
xori $4, $2, 9
TAG2:
mult $4, $4
lui $1, 1
blez $1, TAG3
sll $0, $0, 0
TAG3:
srlv $3, $1, $1
mfhi $1
sll $0, $0, 0
bne $1, $1, TAG4
TAG4:
mthi $1
addiu $3, $1, 0
lui $1, 6
sllv $1, $3, $1
TAG5:
mthi $1
mfhi $1
sll $0, $0, 0
divu $1, $1
TAG6:
beq $1, $1, TAG7
srlv $1, $1, $1
mthi $1
bne $1, $1, TAG7
TAG7:
sltu $1, $1, $1
addi $2, $1, 14
sllv $1, $1, $2
sh $2, 0($2)
TAG8:
bgtz $1, TAG9
xor $2, $1, $1
addiu $1, $1, 4
sltiu $4, $1, 8
TAG9:
beq $4, $4, TAG10
sllv $4, $4, $4
bne $4, $4, TAG10
lbu $3, 0($4)
TAG10:
mtlo $3
mfhi $4
andi $3, $3, 0
subu $3, $3, $3
TAG11:
bltz $3, TAG12
lw $4, 0($3)
lui $2, 8
lbu $2, 0($4)
TAG12:
lw $1, 0($2)
mtlo $1
mfhi $4
bgez $2, TAG13
TAG13:
sh $4, 0($4)
bgtz $4, TAG14
lui $1, 7
bne $1, $1, TAG14
TAG14:
sll $0, $0, 0
lhu $1, 0($4)
sra $1, $4, 13
mfhi $2
TAG15:
multu $2, $2
mtlo $2
lhu $3, 0($2)
lui $2, 12
TAG16:
and $2, $2, $2
mfhi $4
mfhi $4
and $2, $4, $2
TAG17:
multu $2, $2
bne $2, $2, TAG18
mult $2, $2
bltz $2, TAG18
TAG18:
andi $1, $2, 0
lui $4, 11
beq $4, $4, TAG19
sltu $4, $2, $4
TAG19:
bne $4, $4, TAG20
lb $3, 0($4)
mthi $3
bgez $4, TAG20
TAG20:
mfhi $4
sllv $4, $4, $4
nor $3, $4, $3
lh $3, 0($4)
TAG21:
lui $1, 4
lui $2, 9
mflo $4
mfhi $1
TAG22:
mfhi $1
blez $1, TAG23
sra $4, $1, 2
mthi $1
TAG23:
blez $4, TAG24
xori $4, $4, 10
lui $3, 4
sw $3, 0($3)
TAG24:
mult $3, $3
sw $3, 0($3)
lui $1, 1
addiu $2, $3, 6
TAG25:
mthi $2
lui $3, 15
blez $3, TAG26
multu $2, $3
TAG26:
ori $4, $3, 11
bne $3, $4, TAG27
addiu $2, $4, 5
lbu $2, 0($3)
TAG27:
sll $0, $0, 0
mult $2, $2
mthi $2
sll $0, $0, 0
TAG28:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
beq $1, $3, TAG29
TAG29:
sll $0, $0, 0
ori $2, $1, 11
sra $1, $2, 9
sllv $3, $1, $2
TAG30:
sll $0, $0, 0
mthi $3
mflo $3
mtlo $3
TAG31:
bgtz $3, TAG32
sll $0, $0, 0
bne $3, $3, TAG32
div $3, $3
TAG32:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG33
TAG33:
sh $1, 0($1)
lb $2, 0($1)
slt $2, $1, $1
mthi $2
TAG34:
mult $2, $2
mtlo $2
mfhi $2
lui $2, 7
TAG35:
ori $1, $2, 2
mflo $3
mflo $4
sll $0, $0, 0
TAG36:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 5
sll $0, $0, 0
TAG37:
mthi $3
mtlo $3
bltz $3, TAG38
multu $3, $3
TAG38:
beq $3, $3, TAG39
ori $3, $3, 14
add $3, $3, $3
bltz $3, TAG39
TAG39:
mflo $2
slt $3, $2, $2
bgtz $3, TAG40
lw $3, 0($2)
TAG40:
lb $3, 0($3)
mflo $1
mflo $2
lhu $3, 0($1)
TAG41:
sb $3, 0($3)
lui $1, 15
mthi $3
sll $0, $0, 0
TAG42:
sw $3, 0($3)
mtlo $3
multu $3, $3
sh $3, 0($3)
TAG43:
lb $3, 0($3)
mult $3, $3
srav $1, $3, $3
bne $3, $1, TAG44
TAG44:
addi $2, $1, 15
addiu $3, $2, 15
lb $3, 0($1)
sll $4, $3, 4
TAG45:
multu $4, $4
addu $1, $4, $4
mfhi $2
bgtz $1, TAG46
TAG46:
multu $2, $2
sw $2, 0($2)
sh $2, 0($2)
lhu $1, 0($2)
TAG47:
and $1, $1, $1
lui $2, 9
sll $0, $0, 0
blez $4, TAG48
TAG48:
mtlo $4
andi $1, $4, 10
sra $2, $1, 6
multu $4, $4
TAG49:
lb $3, 0($2)
or $4, $3, $2
srav $4, $2, $4
lbu $3, 0($4)
TAG50:
lui $1, 0
bltz $1, TAG51
mflo $2
lh $4, 0($3)
TAG51:
mtlo $4
sh $4, 0($4)
lb $3, 0($4)
sb $4, 0($4)
TAG52:
slti $1, $3, 13
beq $3, $3, TAG53
divu $1, $1
blez $3, TAG53
TAG53:
mtlo $1
lui $4, 2
divu $4, $1
sll $0, $0, 0
TAG54:
lb $1, 0($1)
lb $1, 0($1)
bltz $1, TAG55
sw $1, 0($1)
TAG55:
bne $1, $1, TAG56
srl $2, $1, 12
mthi $1
subu $1, $2, $1
TAG56:
multu $1, $1
beq $1, $1, TAG57
multu $1, $1
divu $1, $1
TAG57:
mthi $1
sra $4, $1, 6
lbu $3, 0($1)
lui $3, 14
TAG58:
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG59
mult $3, $3
TAG59:
sll $3, $3, 0
blez $3, TAG60
sll $4, $3, 1
divu $3, $3
TAG60:
divu $4, $4
bne $4, $4, TAG61
sll $0, $0, 0
div $4, $4
TAG61:
mtlo $4
mtlo $4
divu $4, $4
bgtz $4, TAG62
TAG62:
subu $4, $4, $4
mflo $2
mult $4, $4
mfhi $4
TAG63:
bne $4, $4, TAG64
lui $4, 11
bne $4, $4, TAG64
srlv $1, $4, $4
TAG64:
mthi $1
srav $2, $1, $1
or $1, $2, $1
mfhi $1
TAG65:
slti $4, $1, 8
lhu $3, 0($4)
bne $3, $3, TAG66
srl $1, $4, 9
TAG66:
mult $1, $1
lbu $3, 0($1)
sh $3, 0($1)
bgtz $3, TAG67
TAG67:
sb $3, 0($3)
blez $3, TAG68
and $2, $3, $3
mflo $4
TAG68:
lb $3, 0($4)
lui $3, 12
lui $4, 1
sll $0, $0, 0
TAG69:
bgtz $4, TAG70
lui $4, 9
lui $4, 3
lb $2, 0($4)
TAG70:
mult $2, $2
mtlo $2
blez $2, TAG71
lbu $4, 0($2)
TAG71:
sh $4, 0($4)
mfhi $3
sb $4, 0($3)
andi $1, $4, 11
TAG72:
lh $3, 0($1)
mtlo $1
sh $1, 0($3)
sh $3, 0($1)
TAG73:
bgez $3, TAG74
mfhi $4
sh $4, 0($4)
mfhi $3
TAG74:
bgtz $3, TAG75
lui $2, 13
beq $2, $2, TAG75
sll $0, $0, 0
TAG75:
mflo $4
addiu $3, $2, 9
lui $3, 7
sll $0, $0, 0
TAG76:
bgtz $3, TAG77
subu $4, $3, $3
lui $1, 15
lw $4, 0($4)
TAG77:
mfhi $3
mult $3, $3
blez $3, TAG78
lw $4, 0($3)
TAG78:
mult $4, $4
bne $4, $4, TAG79
mflo $3
addiu $2, $3, 8
TAG79:
bltz $2, TAG80
xor $3, $2, $2
slti $4, $2, 2
multu $4, $2
TAG80:
sllv $4, $4, $4
lui $2, 1
bltz $2, TAG81
slt $3, $4, $4
TAG81:
andi $4, $3, 11
andi $3, $4, 0
lui $4, 3
bne $3, $3, TAG82
TAG82:
addu $4, $4, $4
sltiu $4, $4, 7
mult $4, $4
mfhi $3
TAG83:
bgtz $3, TAG84
multu $3, $3
blez $3, TAG84
mult $3, $3
TAG84:
mflo $2
bne $2, $2, TAG85
sltu $2, $3, $2
lui $3, 3
TAG85:
bne $3, $3, TAG86
sll $0, $0, 0
multu $3, $3
srlv $3, $3, $3
TAG86:
sll $0, $0, 0
sll $0, $0, 0
or $4, $3, $3
lui $2, 11
TAG87:
sll $0, $0, 0
lui $3, 15
lui $2, 15
sll $0, $0, 0
TAG88:
and $2, $2, $2
addiu $1, $2, 15
bgtz $2, TAG89
mthi $2
TAG89:
lui $3, 0
addi $2, $3, 14
sll $0, $0, 0
mthi $3
TAG90:
blez $2, TAG91
div $2, $2
bne $2, $2, TAG91
lb $3, 0($2)
TAG91:
lui $1, 5
bgtz $3, TAG92
andi $1, $3, 13
mthi $1
TAG92:
lhu $2, 0($1)
mflo $3
sb $3, 0($2)
bne $1, $3, TAG93
TAG93:
lbu $3, 0($3)
mult $3, $3
sll $1, $3, 15
mtlo $1
TAG94:
mtlo $1
andi $3, $1, 13
addiu $4, $3, 9
mthi $1
TAG95:
sb $4, 0($4)
lui $2, 7
srav $4, $4, $4
sra $4, $2, 3
TAG96:
xor $1, $4, $4
mthi $4
bgtz $1, TAG97
sll $3, $4, 1
TAG97:
bltz $3, TAG98
mfhi $3
andi $2, $3, 5
sw $3, 0($2)
TAG98:
beq $2, $2, TAG99
lui $3, 12
srav $3, $2, $2
mtlo $2
TAG99:
slti $3, $3, 2
and $4, $3, $3
sltiu $2, $4, 1
multu $4, $2
TAG100:
lbu $1, 0($2)
lw $1, -224($1)
sll $0, $0, 0
bgtz $1, TAG101
TAG101:
addu $3, $1, $1
and $2, $3, $1
subu $1, $3, $3
sll $0, $0, 0
TAG102:
lbu $4, 0($1)
mflo $3
lbu $1, 0($3)
multu $4, $1
TAG103:
mthi $1
mthi $1
mfhi $1
sltu $2, $1, $1
TAG104:
mflo $2
lui $2, 0
mtlo $2
lb $1, 0($2)
TAG105:
mult $1, $1
andi $1, $1, 2
lui $1, 10
sll $0, $0, 0
TAG106:
divu $1, $1
sll $0, $0, 0
blez $1, TAG107
slt $1, $1, $1
TAG107:
mult $1, $1
mthi $1
mflo $4
sh $1, 0($4)
TAG108:
multu $4, $4
bgez $4, TAG109
multu $4, $4
bltz $4, TAG109
TAG109:
sll $2, $4, 2
add $1, $2, $2
multu $1, $2
add $2, $4, $2
TAG110:
srlv $1, $2, $2
bne $1, $2, TAG111
add $4, $1, $1
mtlo $2
TAG111:
sub $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG112
sh $4, 0($4)
TAG112:
nor $3, $4, $4
subu $4, $3, $4
sllv $3, $4, $4
lw $1, 1($4)
TAG113:
lw $2, 0($1)
lui $3, 7
lui $1, 3
sll $0, $0, 0
TAG114:
blez $1, TAG115
mflo $2
div $2, $1
mthi $1
TAG115:
lui $4, 13
lui $2, 12
lui $3, 2
mtlo $2
TAG116:
lui $4, 9
sll $0, $0, 0
addiu $1, $3, 11
lui $1, 1
TAG117:
div $1, $1
mtlo $1
div $1, $1
sll $0, $0, 0
TAG118:
bltz $1, TAG119
xori $2, $1, 10
multu $2, $1
addiu $1, $1, 1
TAG119:
lui $4, 10
sll $0, $0, 0
bgtz $3, TAG120
div $1, $1
TAG120:
beq $3, $3, TAG121
addiu $4, $3, 10
sllv $1, $3, $4
mthi $3
TAG121:
addiu $3, $1, 2
xori $1, $3, 13
xori $3, $3, 1
mult $1, $3
TAG122:
sll $0, $0, 0
sll $0, $0, 0
sll $4, $3, 0
blez $1, TAG123
TAG123:
mult $4, $4
div $4, $4
bltz $4, TAG124
lui $3, 4
TAG124:
bne $3, $3, TAG125
mtlo $3
bgez $3, TAG125
mthi $3
TAG125:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
and $4, $3, $3
TAG126:
sltiu $4, $4, 3
lui $4, 5
slti $2, $4, 12
andi $3, $2, 1
TAG127:
sw $3, 0($3)
beq $3, $3, TAG128
sltu $4, $3, $3
lui $2, 3
TAG128:
mfhi $2
sll $0, $0, 0
lb $4, 0($3)
addu $1, $2, $2
TAG129:
sll $0, $0, 0
ori $3, $1, 15
mflo $4
sll $0, $0, 0
TAG130:
multu $1, $1
beq $1, $1, TAG131
xor $4, $1, $1
mthi $1
TAG131:
sw $4, 0($4)
andi $4, $4, 11
blez $4, TAG132
lb $4, 0($4)
TAG132:
beq $4, $4, TAG133
sra $1, $4, 2
mfhi $2
bne $4, $4, TAG133
TAG133:
slt $2, $2, $2
lui $2, 0
lhu $3, 0($2)
mtlo $3
TAG134:
mthi $3
mult $3, $3
sltu $4, $3, $3
sh $3, 0($4)
TAG135:
beq $4, $4, TAG136
lui $3, 6
ori $1, $3, 0
bgtz $4, TAG136
TAG136:
sltu $3, $1, $1
lui $3, 4
bne $1, $1, TAG137
srl $2, $1, 5
TAG137:
lui $3, 14
beq $3, $3, TAG138
addiu $2, $3, 14
lb $4, 0($2)
TAG138:
lhu $4, 0($4)
sltu $4, $4, $4
lhu $2, 0($4)
mthi $2
TAG139:
addiu $1, $2, 14
srlv $4, $1, $1
multu $2, $1
mfhi $4
TAG140:
multu $4, $4
mult $4, $4
andi $1, $4, 6
bne $4, $1, TAG141
TAG141:
mtlo $1
mthi $1
lui $3, 11
sw $1, 0($1)
TAG142:
bltz $3, TAG143
mfhi $4
addiu $3, $3, 2
subu $3, $3, $3
TAG143:
lb $1, 0($3)
sh $1, 0($1)
bgtz $3, TAG144
mfhi $3
TAG144:
sh $3, 0($3)
lui $4, 6
mfhi $3
bne $3, $3, TAG145
TAG145:
mfhi $4
lui $1, 5
bne $4, $3, TAG146
xori $3, $4, 3
TAG146:
lui $1, 8
lui $3, 7
divu $1, $1
sll $0, $0, 0
TAG147:
lui $1, 1
srav $2, $1, $1
srlv $1, $1, $1
sll $0, $0, 0
TAG148:
mflo $4
beq $4, $4, TAG149
lui $1, 12
xor $4, $4, $2
TAG149:
beq $4, $4, TAG150
lui $3, 12
blez $4, TAG150
mthi $3
TAG150:
nor $2, $3, $3
sll $0, $0, 0
bltz $2, TAG151
lui $3, 3
TAG151:
sll $0, $0, 0
mtlo $3
bgez $3, TAG152
divu $3, $3
TAG152:
sll $0, $0, 0
xori $3, $3, 2
lui $1, 0
sll $0, $0, 0
TAG153:
ori $2, $1, 5
mflo $4
beq $1, $4, TAG154
sw $2, 0($1)
TAG154:
sra $3, $4, 11
beq $4, $4, TAG155
sltu $3, $3, $3
nor $2, $4, $3
TAG155:
andi $2, $2, 12
addu $4, $2, $2
mflo $3
or $4, $4, $4
TAG156:
lui $2, 4
bgez $2, TAG157
mtlo $2
sw $4, 0($2)
TAG157:
sll $4, $2, 4
sllv $4, $2, $4
sll $0, $0, 0
lui $3, 15
TAG158:
bgtz $3, TAG159
slti $2, $3, 10
sub $1, $3, $2
addi $1, $2, 15
TAG159:
multu $1, $1
mfhi $2
beq $2, $1, TAG160
subu $2, $2, $2
TAG160:
lui $4, 13
xori $4, $2, 0
sb $4, 0($4)
bltz $2, TAG161
TAG161:
multu $4, $4
mtlo $4
mthi $4
mtlo $4
TAG162:
beq $4, $4, TAG163
mfhi $1
lb $4, 0($4)
multu $4, $4
TAG163:
bgtz $4, TAG164
sh $4, 0($4)
bgtz $4, TAG164
mthi $4
TAG164:
bne $4, $4, TAG165
sw $4, 0($4)
sltiu $3, $4, 5
mtlo $3
TAG165:
mthi $3
multu $3, $3
mtlo $3
divu $3, $3
TAG166:
mfhi $2
mtlo $3
mfhi $3
lbu $4, 0($3)
TAG167:
lui $4, 3
div $4, $4
bgtz $4, TAG168
mfhi $1
TAG168:
mthi $1
mult $1, $1
mfhi $1
mflo $1
TAG169:
bgez $1, TAG170
mthi $1
bgez $1, TAG170
div $1, $1
TAG170:
beq $1, $1, TAG171
sw $1, 0($1)
xor $2, $1, $1
bltz $1, TAG171
TAG171:
srl $1, $2, 13
mthi $2
lb $3, 0($2)
beq $2, $2, TAG172
TAG172:
sw $3, 0($3)
sll $1, $3, 14
lb $3, 0($1)
mfhi $4
TAG173:
sh $4, 0($4)
mthi $4
mthi $4
sh $4, 0($4)
TAG174:
srav $3, $4, $4
sh $3, 0($4)
bltz $3, TAG175
sltiu $4, $4, 4
TAG175:
bne $4, $4, TAG176
mthi $4
blez $4, TAG176
mtlo $4
TAG176:
slti $2, $4, 13
mfhi $4
lui $3, 1
ori $1, $4, 14
TAG177:
multu $1, $1
sb $1, 0($1)
sltiu $3, $1, 3
beq $1, $3, TAG178
TAG178:
lui $2, 0
sra $2, $3, 4
bgez $2, TAG179
mult $2, $2
TAG179:
mflo $4
lhu $4, 0($4)
beq $4, $4, TAG180
lbu $4, 0($4)
TAG180:
sw $4, 0($4)
mflo $3
mult $4, $4
addi $4, $3, 13
TAG181:
multu $4, $4
addiu $1, $4, 13
nor $4, $4, $4
sb $4, 14($4)
TAG182:
mtlo $4
lh $3, 14($4)
div $4, $4
div $4, $3
TAG183:
bltz $3, TAG184
mflo $1
mflo $1
bltz $1, TAG184
TAG184:
slt $2, $1, $1
subu $1, $2, $2
bgez $1, TAG185
lui $1, 7
TAG185:
slti $1, $1, 15
sb $1, 0($1)
lh $3, 0($1)
xori $2, $1, 3
TAG186:
mtlo $2
mflo $4
sra $2, $4, 14
lbu $3, 0($2)
TAG187:
mfhi $4
bgtz $3, TAG188
lh $2, 14($4)
lui $2, 14
TAG188:
mult $2, $2
mflo $2
lui $2, 2
sll $0, $0, 0
TAG189:
sll $0, $0, 0
sll $3, $2, 2
srlv $3, $3, $3
sll $0, $0, 0
TAG190:
lui $2, 13
subu $4, $2, $2
lui $2, 6
lb $2, 0($4)
TAG191:
lw $4, 0($2)
lui $3, 5
bltz $4, TAG192
mfhi $3
TAG192:
lui $1, 12
and $3, $1, $3
lb $4, 0($3)
sb $1, 0($4)
TAG193:
bne $4, $4, TAG194
mult $4, $4
lb $2, 0($4)
sw $4, 0($2)
TAG194:
beq $2, $2, TAG195
mfhi $4
mflo $4
sh $2, 0($4)
TAG195:
mult $4, $4
lw $2, 0($4)
mthi $2
mfhi $3
TAG196:
multu $3, $3
lh $2, 0($3)
sw $2, 0($3)
mthi $3
TAG197:
lui $2, 5
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG198:
lh $2, 0($3)
blez $2, TAG199
sltu $1, $2, $3
andi $2, $2, 0
TAG199:
mfhi $4
mult $2, $4
bgtz $2, TAG200
lw $2, 0($2)
TAG200:
sw $2, 0($2)
multu $2, $2
ori $1, $2, 2
beq $1, $1, TAG201
TAG201:
lui $4, 8
lb $3, 0($1)
lui $1, 15
sh $1, 0($3)
TAG202:
bne $1, $1, TAG203
sll $0, $0, 0
mflo $3
lui $1, 9
TAG203:
mtlo $1
sll $0, $0, 0
lui $2, 14
beq $2, $1, TAG204
TAG204:
sll $0, $0, 0
mtlo $2
mult $2, $2
mtlo $2
TAG205:
div $2, $2
multu $2, $2
sltiu $1, $2, 5
sll $0, $0, 0
TAG206:
bne $1, $1, TAG207
mtlo $1
addiu $3, $1, 9
sb $3, 0($1)
TAG207:
multu $3, $3
subu $1, $3, $3
multu $3, $1
bgtz $3, TAG208
TAG208:
xor $3, $1, $1
lb $4, 0($1)
slti $4, $1, 12
lui $4, 1
TAG209:
lui $1, 12
bne $1, $4, TAG210
mfhi $1
divu $4, $1
TAG210:
bltz $1, TAG211
mult $1, $1
mfhi $4
or $4, $1, $1
TAG211:
lui $4, 14
xor $3, $4, $4
bltz $4, TAG212
mtlo $3
TAG212:
mfhi $4
mult $3, $3
mfhi $2
add $4, $4, $4
TAG213:
srav $1, $4, $4
slti $1, $1, 10
nor $3, $1, $4
bne $4, $4, TAG214
TAG214:
lui $4, 14
sll $0, $0, 0
multu $3, $4
xor $3, $3, $3
TAG215:
lui $3, 6
sll $0, $0, 0
lui $4, 2
multu $4, $4
TAG216:
slti $3, $4, 9
beq $4, $3, TAG217
mfhi $3
sltu $3, $3, $3
TAG217:
mult $3, $3
bgtz $3, TAG218
srlv $3, $3, $3
bltz $3, TAG218
TAG218:
mult $3, $3
sltiu $4, $3, 1
bgez $3, TAG219
mtlo $4
TAG219:
divu $4, $4
sb $4, 0($4)
lb $2, 0($4)
beq $4, $4, TAG220
TAG220:
lui $2, 1
bgtz $2, TAG221
mtlo $2
lhu $2, 0($2)
TAG221:
bgez $2, TAG222
sll $0, $0, 0
mthi $2
lui $4, 12
TAG222:
sra $4, $4, 8
mult $4, $4
mthi $4
multu $4, $4
TAG223:
lui $2, 14
mtlo $4
mtlo $4
sll $0, $0, 0
TAG224:
srav $3, $4, $4
bgez $4, TAG225
slt $2, $4, $3
mult $3, $2
TAG225:
srlv $2, $2, $2
lui $4, 14
sb $2, 0($2)
sw $4, 0($2)
TAG226:
mfhi $1
mthi $1
beq $4, $4, TAG227
mfhi $4
TAG227:
mtlo $4
mult $4, $4
mflo $1
beq $4, $4, TAG228
TAG228:
mflo $1
lui $1, 8
mfhi $4
nor $2, $1, $1
TAG229:
mtlo $2
lui $1, 4
mthi $1
slt $4, $2, $2
TAG230:
lh $4, 0($4)
or $4, $4, $4
subu $2, $4, $4
sb $4, 0($2)
TAG231:
mult $2, $2
lb $2, 0($2)
bne $2, $2, TAG232
sw $2, 0($2)
TAG232:
lh $3, 0($2)
multu $2, $3
mult $3, $3
lb $4, 0($3)
TAG233:
multu $4, $4
bltz $4, TAG234
mflo $1
sltiu $2, $1, 6
TAG234:
lbu $1, 0($2)
bltz $1, TAG235
lui $1, 9
sll $0, $0, 0
TAG235:
sb $2, 0($2)
mult $2, $2
bne $2, $2, TAG236
mtlo $2
TAG236:
lui $1, 11
xori $3, $1, 1
sltiu $2, $1, 9
bltz $2, TAG237
TAG237:
sw $2, 0($2)
sw $2, 0($2)
addu $1, $2, $2
lh $4, 0($2)
TAG238:
mthi $4
lui $1, 5
sll $0, $0, 0
mthi $1
TAG239:
bltz $1, TAG240
multu $1, $1
multu $1, $1
sll $0, $0, 0
TAG240:
addiu $4, $1, 2
mult $1, $4
sltu $4, $1, $1
mflo $2
TAG241:
lui $4, 10
srav $2, $4, $2
mthi $2
addiu $2, $2, 3
TAG242:
mthi $2
addiu $3, $2, 2
div $2, $3
bltz $2, TAG243
TAG243:
slt $3, $3, $3
bgez $3, TAG244
lui $4, 3
mfhi $4
TAG244:
sltiu $1, $4, 12
bgez $1, TAG245
sll $4, $1, 4
bltz $4, TAG245
TAG245:
andi $4, $4, 3
mflo $1
andi $1, $1, 11
mthi $4
TAG246:
mfhi $2
mthi $2
or $3, $2, $2
multu $2, $1
TAG247:
sw $3, 0($3)
lui $2, 14
sw $3, 0($3)
sll $0, $0, 0
TAG248:
mult $2, $2
bne $2, $2, TAG249
xor $1, $2, $2
srav $3, $1, $1
TAG249:
mflo $2
mtlo $2
bgez $3, TAG250
mthi $3
TAG250:
mflo $1
lui $3, 13
lw $1, 0($2)
mult $3, $1
TAG251:
and $4, $1, $1
bgtz $4, TAG252
xori $2, $1, 0
lui $3, 13
TAG252:
sll $0, $0, 0
blez $3, TAG253
srlv $1, $3, $3
bltz $1, TAG253
TAG253:
mult $1, $1
multu $1, $1
lui $4, 11
mflo $3
TAG254:
blez $3, TAG255
sh $3, 0($3)
lbu $3, 0($3)
lui $4, 9
TAG255:
lui $4, 0
bgtz $4, TAG256
multu $4, $4
bgez $4, TAG256
TAG256:
slti $1, $4, 8
srav $2, $4, $1
slt $4, $4, $4
mfhi $2
TAG257:
sb $2, 0($2)
lbu $1, 0($2)
lui $2, 3
bltz $1, TAG258
TAG258:
sllv $2, $2, $2
sllv $4, $2, $2
multu $2, $2
mtlo $2
TAG259:
srlv $1, $4, $4
subu $3, $4, $1
srav $4, $1, $3
beq $3, $4, TAG260
TAG260:
sll $0, $0, 0
xor $1, $4, $4
bgtz $4, TAG261
lui $1, 6
TAG261:
bltz $1, TAG262
div $1, $1
divu $1, $1
mthi $1
TAG262:
sltu $1, $1, $1
sra $3, $1, 8
sb $3, 0($1)
blez $3, TAG263
TAG263:
sll $3, $3, 7
lui $2, 12
bne $2, $3, TAG264
multu $2, $3
TAG264:
beq $2, $2, TAG265
sll $0, $0, 0
bgtz $2, TAG265
sw $2, 0($2)
TAG265:
mult $2, $2
divu $2, $2
sll $0, $0, 0
bne $4, $4, TAG266
TAG266:
mthi $4
xori $4, $4, 7
lui $2, 5
beq $4, $4, TAG267
TAG267:
sll $0, $0, 0
mthi $2
mtlo $2
divu $2, $2
TAG268:
multu $2, $2
xori $2, $2, 13
bne $2, $2, TAG269
divu $2, $2
TAG269:
mflo $2
lbu $2, 0($2)
beq $2, $2, TAG270
sh $2, 0($2)
TAG270:
sw $2, 0($2)
lh $1, 0($2)
sllv $2, $2, $2
mflo $4
TAG271:
lb $4, 0($4)
multu $4, $4
lui $4, 12
bne $4, $4, TAG272
TAG272:
mflo $2
sh $4, 0($2)
subu $4, $2, $4
multu $2, $2
TAG273:
divu $4, $4
bgez $4, TAG274
sll $0, $0, 0
lui $4, 15
TAG274:
mult $4, $4
mflo $3
multu $3, $3
sll $0, $0, 0
TAG275:
beq $4, $4, TAG276
lui $4, 14
sw $4, 0($4)
lb $2, 0($4)
TAG276:
mthi $2
lh $3, 0($2)
mult $2, $2
blez $3, TAG277
TAG277:
sb $3, 0($3)
bgez $3, TAG278
or $4, $3, $3
lb $3, 0($4)
TAG278:
mult $3, $3
lh $4, 0($3)
mfhi $2
mthi $3
TAG279:
mfhi $3
lui $2, 14
addiu $4, $2, 15
bgtz $4, TAG280
TAG280:
divu $4, $4
mflo $1
bltz $4, TAG281
mflo $3
TAG281:
bne $3, $3, TAG282
mfhi $3
addu $3, $3, $3
sh $3, 0($3)
TAG282:
multu $3, $3
bne $3, $3, TAG283
lhu $4, 0($3)
mthi $3
TAG283:
addi $1, $4, 12
sw $1, 0($1)
sltu $3, $4, $4
mthi $4
TAG284:
sw $3, 0($3)
bgez $3, TAG285
sh $3, 0($3)
mtlo $3
TAG285:
lbu $4, 0($3)
bne $4, $3, TAG286
lui $2, 14
lui $1, 5
TAG286:
sll $0, $0, 0
mflo $3
lb $1, 0($3)
add $3, $1, $3
TAG287:
sllv $1, $3, $3
bltz $3, TAG288
lui $4, 11
sw $3, 0($1)
TAG288:
bltz $4, TAG289
div $4, $4
bgtz $4, TAG289
mfhi $4
TAG289:
mthi $4
lui $2, 14
mflo $3
div $4, $3
TAG290:
sb $3, 0($3)
bltz $3, TAG291
lbu $4, 0($3)
div $4, $3
TAG291:
mfhi $2
mfhi $3
mflo $3
sra $3, $2, 12
TAG292:
bgez $3, TAG293
mthi $3
sh $3, 0($3)
div $3, $3
TAG293:
slti $4, $3, 5
srav $1, $4, $4
sb $4, 0($4)
lui $1, 0
TAG294:
lui $4, 10
bgtz $4, TAG295
mflo $3
sw $1, 0($4)
TAG295:
lui $2, 13
mtlo $3
lui $2, 4
blez $2, TAG296
TAG296:
mfhi $3
lb $4, 0($3)
blez $2, TAG297
mtlo $4
TAG297:
lui $2, 1
subu $1, $4, $4
sll $0, $0, 0
lui $4, 7
TAG298:
blez $4, TAG299
multu $4, $4
beq $4, $4, TAG299
multu $4, $4
TAG299:
bgtz $4, TAG300
multu $4, $4
sh $4, 0($4)
andi $2, $4, 3
TAG300:
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
TAG301:
lui $4, 10
mtlo $4
addiu $3, $4, 1
addiu $2, $4, 4
TAG302:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG303:
srl $2, $3, 3
bne $2, $3, TAG304
sll $0, $0, 0
beq $2, $2, TAG304
TAG304:
mtlo $2
sll $0, $0, 0
lui $1, 1
div $2, $1
TAG305:
lui $4, 5
multu $1, $4
div $4, $4
beq $4, $4, TAG306
TAG306:
mflo $3
mflo $3
sb $4, 0($3)
mtlo $3
TAG307:
mfhi $3
mult $3, $3
bne $3, $3, TAG308
sw $3, 0($3)
TAG308:
mfhi $1
slti $3, $1, 5
lui $1, 14
bne $3, $3, TAG309
TAG309:
mfhi $1
sw $1, 0($1)
lhu $1, 0($1)
lb $3, 0($1)
TAG310:
addiu $1, $3, 6
sh $1, 0($3)
subu $1, $3, $3
sb $3, 0($1)
TAG311:
lui $2, 9
mtlo $2
sll $0, $0, 0
divu $1, $2
TAG312:
sw $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG313
mthi $1
TAG313:
bne $1, $1, TAG314
sll $3, $1, 11
mflo $1
bgtz $1, TAG314
TAG314:
or $3, $1, $1
slti $4, $1, 15
mthi $3
mthi $3
TAG315:
nor $1, $4, $4
nor $3, $1, $4
mtlo $3
lui $1, 12
TAG316:
nor $2, $1, $1
mtlo $2
mflo $3
srl $2, $2, 7
TAG317:
mtlo $2
multu $2, $2
bgtz $2, TAG318
div $2, $2
TAG318:
multu $2, $2
addiu $1, $2, 1
addiu $3, $1, 10
bgez $3, TAG319
TAG319:
sll $0, $0, 0
mflo $1
mtlo $1
bltz $3, TAG320
TAG320:
mthi $1
lui $1, 12
blez $1, TAG321
lui $1, 3
TAG321:
bltz $1, TAG322
subu $1, $1, $1
bne $1, $1, TAG322
sub $3, $1, $1
TAG322:
mfhi $1
lui $3, 13
lui $3, 4
sll $0, $0, 0
TAG323:
srl $3, $3, 1
slt $3, $3, $3
addi $1, $3, 7
sra $1, $3, 1
TAG324:
sll $1, $1, 5
blez $1, TAG325
sra $1, $1, 6
mflo $2
TAG325:
lui $3, 7
beq $2, $3, TAG326
mult $3, $2
mflo $2
TAG326:
beq $2, $2, TAG327
lui $2, 10
bne $2, $2, TAG327
xor $4, $2, $2
TAG327:
addu $2, $4, $4
mfhi $3
slti $4, $3, 12
mtlo $4
TAG328:
mflo $2
mflo $1
xor $4, $2, $2
bne $1, $4, TAG329
TAG329:
mult $4, $4
sll $3, $4, 12
mfhi $3
bltz $3, TAG330
TAG330:
srav $1, $3, $3
mflo $2
beq $2, $2, TAG331
sltiu $3, $1, 3
TAG331:
lui $4, 6
mult $4, $3
lb $1, 0($3)
lui $1, 15
TAG332:
sll $0, $0, 0
divu $1, $1
ori $4, $1, 5
slt $1, $4, $1
TAG333:
lui $1, 7
subu $2, $1, $1
mflo $1
srl $2, $1, 14
TAG334:
slti $1, $2, 15
srlv $4, $1, $1
bltz $4, TAG335
lui $3, 15
TAG335:
srl $4, $3, 6
lui $3, 9
beq $3, $3, TAG336
lui $1, 9
TAG336:
nor $1, $1, $1
bgez $1, TAG337
lui $2, 0
srl $1, $2, 11
TAG337:
subu $4, $1, $1
mthi $1
lui $3, 7
lui $3, 4
TAG338:
sra $4, $3, 1
bne $3, $3, TAG339
sll $0, $0, 0
bgez $3, TAG339
TAG339:
sll $0, $0, 0
bne $4, $4, TAG340
addu $2, $4, $4
bgez $4, TAG340
TAG340:
div $2, $2
mfhi $4
mult $2, $4
lhu $4, 0($4)
TAG341:
mfhi $4
xor $2, $4, $4
ori $2, $4, 11
addiu $3, $2, 10
TAG342:
srlv $4, $3, $3
sltiu $1, $3, 14
divu $1, $3
bgtz $4, TAG343
TAG343:
lui $2, 15
xori $4, $2, 7
lw $3, 0($1)
bgtz $3, TAG344
TAG344:
slti $1, $3, 10
mflo $1
lhu $4, 0($3)
sll $2, $4, 12
TAG345:
xori $3, $2, 14
bne $3, $2, TAG346
sltu $3, $3, $2
and $1, $3, $3
TAG346:
bltz $1, TAG347
sll $2, $1, 14
bgtz $2, TAG347
mflo $1
TAG347:
mfhi $4
lui $2, 6
mtlo $4
mthi $2
TAG348:
lui $2, 11
mflo $2
addi $2, $2, 13
beq $2, $2, TAG349
TAG349:
and $3, $2, $2
lui $3, 12
mtlo $3
xori $3, $3, 10
TAG350:
sll $0, $0, 0
lui $3, 6
mult $3, $3
divu $3, $3
TAG351:
mfhi $1
mtlo $1
and $3, $3, $3
beq $1, $3, TAG352
TAG352:
multu $3, $3
div $3, $3
mfhi $1
lui $1, 9
TAG353:
lui $2, 4
beq $1, $1, TAG354
div $1, $2
bne $2, $1, TAG354
TAG354:
mthi $2
mthi $2
sll $0, $0, 0
mthi $2
TAG355:
slti $4, $2, 10
sll $0, $0, 0
mflo $3
bltz $3, TAG356
TAG356:
mthi $3
mult $3, $3
beq $3, $3, TAG357
multu $3, $3
TAG357:
bne $3, $3, TAG358
lui $2, 10
lbu $1, 0($3)
bne $3, $2, TAG358
TAG358:
addi $4, $1, 7
mult $4, $4
lui $1, 5
lbu $3, 0($4)
TAG359:
lui $4, 13
sra $4, $3, 15
or $4, $4, $4
sh $4, 0($3)
TAG360:
mfhi $1
sltu $4, $1, $4
mult $4, $1
addu $1, $1, $1
TAG361:
sub $4, $1, $1
sll $1, $4, 5
blez $4, TAG362
lb $1, 0($4)
TAG362:
mult $1, $1
mult $1, $1
lhu $2, 0($1)
mfhi $2
TAG363:
mult $2, $2
lui $1, 8
lhu $4, 0($2)
mfhi $3
TAG364:
nor $4, $3, $3
bgtz $3, TAG365
lui $1, 1
lui $1, 7
TAG365:
srl $4, $1, 13
blez $4, TAG366
and $2, $4, $1
sltiu $2, $1, 13
TAG366:
lb $4, 0($2)
multu $2, $2
mthi $4
srl $3, $2, 10
TAG367:
mthi $3
mthi $3
lw $4, 0($3)
lui $3, 10
TAG368:
mfhi $1
sll $0, $0, 0
mthi $3
lui $3, 0
TAG369:
bne $3, $3, TAG370
lui $3, 4
sll $0, $0, 0
srlv $1, $3, $3
TAG370:
mfhi $1
bgez $1, TAG371
nor $4, $1, $1
lui $1, 5
TAG371:
lui $2, 1
sltu $1, $1, $1
bne $1, $2, TAG372
ori $4, $1, 1
TAG372:
mthi $4
mtlo $4
mult $4, $4
blez $4, TAG373
TAG373:
lb $2, 0($4)
or $1, $4, $4
blez $4, TAG374
xori $3, $4, 11
TAG374:
lui $3, 7
lui $1, 8
sll $0, $0, 0
bltz $3, TAG375
TAG375:
srlv $2, $1, $1
div $1, $1
beq $1, $1, TAG376
lui $4, 5
TAG376:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG377:
bgez $2, TAG378
sra $1, $2, 15
mflo $3
bgtz $2, TAG378
TAG378:
mflo $3
addiu $4, $3, 9
mfhi $2
nor $3, $3, $3
TAG379:
ori $1, $3, 0
sll $0, $0, 0
mtlo $1
srl $2, $4, 5
TAG380:
srlv $4, $2, $2
beq $4, $2, TAG381
srl $1, $2, 11
sw $4, 0($2)
TAG381:
bne $1, $1, TAG382
slti $1, $1, 0
addiu $1, $1, 14
mflo $1
TAG382:
and $4, $1, $1
mflo $1
srl $2, $4, 15
sll $3, $2, 8
TAG383:
srlv $1, $3, $3
sll $0, $0, 0
addu $4, $3, $3
mtlo $3
TAG384:
beq $4, $4, TAG385
sll $1, $4, 2
bgtz $1, TAG385
mflo $4
TAG385:
lui $4, 9
mflo $4
div $4, $4
bne $4, $4, TAG386
TAG386:
sll $2, $4, 2
lui $4, 6
bgtz $4, TAG387
mtlo $4
TAG387:
lui $2, 2
slti $3, $2, 5
bne $4, $2, TAG388
mflo $1
TAG388:
sll $0, $0, 0
mult $3, $1
sll $0, $0, 0
lui $3, 14
TAG389:
addu $3, $3, $3
mflo $4
sltu $1, $4, $3
sll $2, $4, 4
TAG390:
bgez $2, TAG391
multu $2, $2
lui $1, 8
sb $2, 0($2)
TAG391:
sb $1, 0($1)
beq $1, $1, TAG392
nor $2, $1, $1
multu $1, $2
TAG392:
addiu $4, $2, 14
mult $4, $4
mflo $4
lb $4, -144($4)
TAG393:
bne $4, $4, TAG394
multu $4, $4
mult $4, $4
multu $4, $4
TAG394:
sll $1, $4, 9
lui $2, 10
sw $1, 0($4)
sllv $2, $2, $1
TAG395:
mflo $1
div $2, $2
lbu $4, 0($1)
mfhi $1
TAG396:
bne $1, $1, TAG397
xor $2, $1, $1
sh $1, 0($1)
ori $3, $2, 4
TAG397:
divu $3, $3
sll $1, $3, 5
mtlo $1
bgez $1, TAG398
TAG398:
divu $1, $1
multu $1, $1
div $1, $1
sltiu $2, $1, 2
TAG399:
bltz $2, TAG400
mtlo $2
sh $2, 0($2)
bne $2, $2, TAG400
TAG400:
mflo $2
addu $4, $2, $2
sh $2, 0($4)
lw $2, 0($4)
TAG401:
nor $3, $2, $2
subu $4, $2, $2
lw $1, 0($2)
mtlo $4
TAG402:
blez $1, TAG403
lbu $3, 0($1)
lui $4, 14
bgtz $4, TAG403
TAG403:
mult $4, $4
sra $4, $4, 8
lui $1, 4
mtlo $4
TAG404:
sll $0, $0, 0
multu $1, $1
add $3, $4, $4
mflo $4
TAG405:
addiu $1, $4, 15
xor $4, $1, $4
sb $1, 0($4)
div $4, $4
TAG406:
mthi $4
mult $4, $4
multu $4, $4
mtlo $4
TAG407:
beq $4, $4, TAG408
sll $4, $4, 7
lh $4, 0($4)
mflo $1
TAG408:
bgtz $1, TAG409
mthi $1
lw $4, 0($1)
sll $3, $4, 4
TAG409:
bne $3, $3, TAG410
xori $4, $3, 8
mfhi $1
mflo $2
TAG410:
divu $2, $2
divu $2, $2
blez $2, TAG411
sll $4, $2, 1
TAG411:
multu $4, $4
lui $4, 12
sll $0, $0, 0
beq $4, $4, TAG412
TAG412:
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG413:
bne $1, $1, TAG414
addiu $3, $1, 7
mflo $2
lhu $3, -900($2)
TAG414:
bgez $3, TAG415
sh $3, 0($3)
bne $3, $3, TAG415
ori $3, $3, 8
TAG415:
blez $3, TAG416
lbu $2, 0($3)
bgez $2, TAG416
div $2, $3
TAG416:
mflo $4
lui $2, 15
lw $4, -900($4)
addiu $3, $2, 11
TAG417:
sll $0, $0, 0
mthi $3
bne $3, $3, TAG418
sra $3, $3, 12
TAG418:
mfhi $1
lui $2, 12
mflo $2
mflo $1
TAG419:
nor $2, $1, $1
mult $1, $1
mfhi $3
multu $1, $1
TAG420:
lui $1, 0
lui $2, 3
sh $2, 0($3)
lui $3, 10
TAG421:
bltz $3, TAG422
sltiu $4, $3, 11
srav $2, $3, $3
sllv $4, $4, $3
TAG422:
bgtz $4, TAG423
mflo $3
bgez $4, TAG423
and $2, $4, $4
TAG423:
multu $2, $2
lh $4, 0($2)
multu $2, $4
lbu $3, 0($4)
TAG424:
xor $1, $3, $3
mthi $1
lb $3, 0($1)
lh $2, 0($3)
TAG425:
lui $1, 2
sll $0, $0, 0
lui $2, 1
addiu $1, $2, 8
TAG426:
div $1, $1
addiu $1, $1, 6
sll $3, $1, 4
multu $1, $1
TAG427:
mfhi $1
srav $2, $1, $3
lui $3, 5
beq $2, $2, TAG428
TAG428:
xori $4, $3, 10
addiu $1, $3, 4
mfhi $3
lui $1, 5
TAG429:
mflo $2
lui $4, 10
subu $4, $1, $1
sll $0, $0, 0
TAG430:
bgtz $4, TAG431
mthi $4
mtlo $4
lui $3, 3
TAG431:
addiu $2, $3, 6
mthi $2
lui $2, 1
sll $0, $0, 0
TAG432:
mthi $2
lui $2, 4
bne $2, $2, TAG433
lui $3, 10
TAG433:
bne $3, $3, TAG434
sltiu $3, $3, 4
mult $3, $3
srlv $2, $3, $3
TAG434:
srl $1, $2, 7
mflo $4
mflo $3
beq $1, $4, TAG435
TAG435:
lh $4, 0($3)
blez $3, TAG436
lui $2, 14
mult $4, $2
TAG436:
mthi $2
mthi $2
mult $2, $2
mthi $2
TAG437:
mtlo $2
sra $1, $2, 5
lui $1, 13
ori $4, $2, 9
TAG438:
sll $0, $0, 0
bgtz $2, TAG439
sltu $1, $4, $2
mtlo $2
TAG439:
mthi $1
ori $3, $1, 0
sw $3, 0($1)
beq $1, $3, TAG440
TAG440:
ori $1, $3, 14
bne $1, $3, TAG441
mfhi $1
mult $1, $1
TAG441:
xori $3, $1, 13
mflo $4
lui $1, 10
mfhi $2
TAG442:
lb $3, 0($2)
mtlo $3
blez $2, TAG443
nor $2, $2, $3
TAG443:
mthi $2
bgtz $2, TAG444
slti $4, $2, 15
mult $2, $2
TAG444:
divu $4, $4
sb $4, 0($4)
lui $4, 2
sll $0, $0, 0
TAG445:
bne $4, $4, TAG446
sll $0, $0, 0
blez $1, TAG446
sll $0, $0, 0
TAG446:
lbu $3, 0($3)
lui $4, 12
lui $2, 9
multu $4, $3
TAG447:
lui $3, 6
ori $2, $3, 15
srl $4, $3, 1
beq $3, $4, TAG448
TAG448:
mflo $1
andi $2, $4, 4
mtlo $1
mthi $4
TAG449:
lhu $3, 0($2)
mfhi $3
bne $3, $2, TAG450
mtlo $2
TAG450:
bne $3, $3, TAG451
ori $4, $3, 1
mflo $3
blez $4, TAG451
TAG451:
lui $4, 7
lui $3, 6
mtlo $3
ori $3, $3, 7
TAG452:
lui $4, 11
divu $4, $4
sll $0, $0, 0
slti $4, $3, 14
TAG453:
bltz $4, TAG454
multu $4, $4
sltiu $4, $4, 1
bgez $4, TAG454
TAG454:
slt $4, $4, $4
lhu $1, 0($4)
lui $4, 12
multu $4, $4
TAG455:
lui $3, 3
mflo $2
sll $2, $3, 9
beq $2, $4, TAG456
TAG456:
mthi $2
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG457:
mflo $1
sh $2, 0($1)
blez $2, TAG458
sh $2, 0($1)
TAG458:
slt $4, $1, $1
add $2, $1, $1
mtlo $1
mtlo $4
TAG459:
mthi $2
lui $1, 15
mult $2, $1
sb $2, 0($2)
TAG460:
slt $4, $1, $1
addiu $3, $1, 13
mult $4, $3
multu $4, $3
TAG461:
beq $3, $3, TAG462
sllv $2, $3, $3
lui $3, 14
bgez $3, TAG462
TAG462:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 11
lui $3, 12
TAG463:
mult $3, $3
lui $4, 6
sll $0, $0, 0
bltz $3, TAG464
TAG464:
sll $0, $0, 0
multu $4, $4
bltz $4, TAG465
sll $0, $0, 0
TAG465:
sll $0, $0, 0
beq $1, $3, TAG466
sll $0, $0, 0
mult $1, $1
TAG466:
lui $1, 6
mfhi $1
and $3, $1, $1
addu $1, $3, $3
TAG467:
sh $1, -450($1)
sh $1, -450($1)
sb $1, -450($1)
mtlo $1
TAG468:
bgtz $1, TAG469
sllv $1, $1, $1
mfhi $3
bgtz $1, TAG469
TAG469:
lui $3, 15
sll $0, $0, 0
lui $3, 0
blez $3, TAG470
TAG470:
lui $2, 0
bne $3, $3, TAG471
lui $2, 5
slti $1, $2, 0
TAG471:
lh $1, 0($1)
lui $4, 12
lw $2, -450($1)
slt $4, $1, $1
TAG472:
mtlo $4
addiu $1, $4, 13
bltz $1, TAG473
slt $3, $4, $4
TAG473:
mult $3, $3
blez $3, TAG474
lh $2, 0($3)
bne $3, $3, TAG474
TAG474:
sll $0, $0, 0
mthi $2
mult $4, $2
beq $2, $2, TAG475
TAG475:
or $2, $4, $4
bltz $2, TAG476
mthi $4
addu $2, $4, $4
TAG476:
sh $2, 0($2)
bltz $2, TAG477
lw $4, 0($2)
mflo $3
TAG477:
sltu $2, $3, $3
mflo $3
blez $3, TAG478
sh $2, 0($3)
TAG478:
lw $4, 0($3)
bne $4, $4, TAG479
mtlo $3
mflo $1
TAG479:
bgtz $1, TAG480
lhu $1, 0($1)
slti $2, $1, 12
div $1, $2
TAG480:
div $2, $2
slt $4, $2, $2
subu $3, $4, $4
mthi $2
TAG481:
mult $3, $3
multu $3, $3
mthi $3
bne $3, $3, TAG482
TAG482:
mfhi $3
sw $3, 0($3)
mthi $3
slt $3, $3, $3
TAG483:
sb $3, 0($3)
beq $3, $3, TAG484
lhu $2, 0($3)
slti $1, $3, 11
TAG484:
multu $1, $1
sb $1, 0($1)
mflo $2
mult $1, $2
TAG485:
xori $3, $2, 4
multu $2, $3
addiu $3, $2, 13
lh $1, 0($2)
TAG486:
mtlo $1
bne $1, $1, TAG487
mult $1, $1
mflo $2
TAG487:
nor $2, $2, $2
sb $2, 1($2)
mfhi $4
multu $4, $2
TAG488:
mflo $2
bltz $2, TAG489
sb $2, 0($2)
mthi $4
TAG489:
srlv $4, $2, $2
mfhi $2
lbu $1, 0($4)
lui $4, 4
TAG490:
sll $0, $0, 0
mfhi $4
lui $4, 0
bgez $4, TAG491
TAG491:
ori $2, $4, 6
blez $2, TAG492
lb $2, 0($2)
multu $2, $2
TAG492:
slti $1, $2, 7
xori $3, $2, 13
multu $3, $3
srlv $2, $1, $1
TAG493:
lh $3, 0($2)
lui $1, 12
lui $4, 8
bgtz $2, TAG494
TAG494:
mfhi $1
multu $1, $1
blez $1, TAG495
lb $4, 0($1)
TAG495:
lbu $2, 0($4)
multu $2, $2
bne $4, $2, TAG496
multu $2, $2
TAG496:
mthi $2
mflo $4
mflo $2
mult $2, $4
TAG497:
multu $2, $2
lhu $3, 0($2)
addiu $3, $2, 2
mflo $4
TAG498:
bne $4, $4, TAG499
lui $2, 15
mtlo $4
sll $0, $0, 0
TAG499:
bne $2, $2, TAG500
slti $4, $2, 0
lui $4, 1
xor $1, $2, $4
TAG500:
bne $1, $1, TAG501
sll $0, $0, 0
div $1, $2
sll $0, $0, 0
TAG501:
bne $2, $2, TAG502
mfhi $4
sra $1, $2, 15
xori $1, $2, 13
TAG502:
sll $0, $0, 0
andi $4, $3, 15
mflo $2
bne $3, $4, TAG503
TAG503:
lui $1, 0
mtlo $2
andi $2, $2, 4
add $3, $2, $2
TAG504:
bgez $3, TAG505
lui $2, 11
lui $3, 15
mult $3, $3
TAG505:
bgtz $3, TAG506
add $1, $3, $3
lbu $2, 0($3)
mult $1, $3
TAG506:
lui $3, 9
mthi $3
addiu $2, $3, 6
lui $2, 1
TAG507:
sll $0, $0, 0
blez $4, TAG508
mtlo $2
beq $2, $4, TAG508
TAG508:
sh $4, 0($4)
bgez $4, TAG509
multu $4, $4
bne $4, $4, TAG509
TAG509:
mfhi $4
sw $4, 0($4)
mult $4, $4
beq $4, $4, TAG510
TAG510:
sltu $3, $4, $4
lw $3, 0($4)
bne $3, $3, TAG511
sh $3, 0($3)
TAG511:
multu $3, $3
mflo $4
lui $3, 0
multu $3, $3
TAG512:
bgtz $3, TAG513
srl $3, $3, 0
lui $3, 9
sll $0, $0, 0
TAG513:
mtlo $3
mflo $4
bne $3, $3, TAG514
mfhi $4
TAG514:
mthi $4
sb $4, 0($4)
mtlo $4
bgez $4, TAG515
TAG515:
sb $4, 0($4)
mflo $2
bgtz $4, TAG516
nor $3, $2, $4
TAG516:
sb $3, 1($3)
xori $3, $3, 13
mthi $3
subu $3, $3, $3
TAG517:
lh $3, 0($3)
and $3, $3, $3
blez $3, TAG518
sw $3, -255($3)
TAG518:
mult $3, $3
lb $2, -255($3)
bgtz $3, TAG519
nor $2, $3, $2
TAG519:
nor $2, $2, $2
slti $2, $2, 6
bgez $2, TAG520
mtlo $2
TAG520:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
srl $1, $3, 7
TAG521:
sh $1, -5120($1)
lw $2, -5120($1)
bgtz $1, TAG522
mfhi $1
TAG522:
srl $3, $1, 15
blez $1, TAG523
lui $3, 15
lw $1, 0($1)
TAG523:
mthi $1
and $1, $1, $1
andi $1, $1, 14
lui $3, 12
TAG524:
blez $3, TAG525
addiu $2, $3, 10
addiu $1, $3, 4
sll $0, $0, 0
TAG525:
sll $0, $0, 0
mtlo $1
bgez $3, TAG526
mflo $3
TAG526:
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG527
mthi $3
TAG527:
bne $3, $3, TAG528
addiu $3, $3, 7
blez $3, TAG528
srl $1, $3, 8
TAG528:
sw $1, -3072($1)
sh $1, -3072($1)
lbu $3, -3072($1)
mfhi $2
TAG529:
sll $0, $0, 0
slti $4, $2, 7
bltz $2, TAG530
lhu $1, 0($4)
TAG530:
beq $1, $1, TAG531
lui $3, 3
divu $1, $3
sub $3, $3, $3
TAG531:
addu $4, $3, $3
mtlo $3
nor $4, $3, $3
sll $0, $0, 0
TAG532:
mfhi $4
beq $4, $4, TAG533
lui $2, 14
bltz $4, TAG533
TAG533:
div $2, $2
sll $0, $0, 0
sllv $4, $1, $1
mtlo $4
TAG534:
beq $4, $4, TAG535
multu $4, $4
multu $4, $4
xor $2, $4, $4
TAG535:
andi $2, $2, 5
mult $2, $2
bne $2, $2, TAG536
mfhi $3
TAG536:
bgtz $3, TAG537
lui $1, 6
beq $3, $3, TAG537
subu $4, $1, $1
TAG537:
blez $4, TAG538
multu $4, $4
mthi $4
mfhi $4
TAG538:
mult $4, $4
mtlo $4
sw $4, 0($4)
bne $4, $4, TAG539
TAG539:
lhu $3, 0($4)
bltz $3, TAG540
mfhi $1
lui $3, 3
TAG540:
multu $3, $3
mflo $1
div $1, $3
sw $3, 0($1)
TAG541:
sra $4, $1, 3
mult $1, $4
addi $2, $4, 6
mfhi $2
TAG542:
addiu $4, $2, 15
bgtz $4, TAG543
lb $3, 0($4)
mtlo $2
TAG543:
mult $3, $3
sb $3, 0($3)
divu $3, $3
slt $1, $3, $3
TAG544:
mflo $4
sh $4, 0($1)
lui $3, 13
mfhi $2
TAG545:
blez $2, TAG546
multu $2, $2
divu $2, $2
sll $3, $2, 10
TAG546:
lui $2, 3
mthi $2
sll $0, $0, 0
beq $3, $2, TAG547
TAG547:
mtlo $2
beq $2, $2, TAG548
sll $0, $0, 0
bltz $2, TAG548
TAG548:
addiu $2, $2, 12
bne $2, $2, TAG549
sll $0, $0, 0
lh $2, 0($1)
TAG549:
sllv $2, $2, $2
or $4, $2, $2
bltz $2, TAG550
mfhi $3
TAG550:
slt $1, $3, $3
lui $1, 13
lui $3, 1
addiu $2, $1, 11
TAG551:
bne $2, $2, TAG552
sll $0, $0, 0
bne $1, $1, TAG552
lui $1, 7
TAG552:
mflo $1
addu $1, $1, $1
mult $1, $1
mtlo $1
TAG553:
sll $0, $0, 0
mthi $1
mflo $2
mtlo $1
TAG554:
mthi $2
blez $2, TAG555
subu $1, $2, $2
slt $2, $1, $1
TAG555:
lui $3, 8
sb $3, 0($2)
addu $2, $3, $3
sll $0, $0, 0
TAG556:
srav $2, $2, $2
mtlo $2
bgez $2, TAG557
and $4, $2, $2
TAG557:
mthi $4
and $2, $4, $4
bne $2, $4, TAG558
sll $0, $0, 0
TAG558:
lui $4, 14
sltiu $4, $2, 9
sb $2, 0($4)
and $2, $4, $4
TAG559:
mtlo $2
mthi $2
multu $2, $2
beq $2, $2, TAG560
TAG560:
or $1, $2, $2
ori $1, $1, 4
mfhi $2
bne $2, $1, TAG561
TAG561:
lh $3, 0($2)
lui $1, 15
lw $3, 0($2)
mthi $3
TAG562:
mfhi $1
subu $3, $3, $1
lw $2, 0($3)
addiu $1, $3, 0
TAG563:
mthi $1
sw $1, 0($1)
lui $2, 5
div $1, $2
TAG564:
bltz $2, TAG565
mfhi $3
srl $1, $3, 7
sll $2, $3, 15
TAG565:
lb $3, 0($2)
bne $2, $3, TAG566
mult $2, $2
lw $2, 0($2)
TAG566:
mfhi $3
sw $3, 0($2)
nor $1, $3, $2
lui $4, 8
TAG567:
addiu $2, $4, 14
sll $0, $0, 0
beq $4, $4, TAG568
div $4, $4
TAG568:
sltiu $2, $2, 10
lhu $4, 0($2)
multu $2, $2
srl $1, $2, 7
TAG569:
bne $1, $1, TAG570
lb $3, 0($1)
lui $4, 15
multu $3, $3
TAG570:
sll $0, $0, 0
mtlo $2
sra $1, $2, 0
lb $3, 0($1)
TAG571:
lbu $3, 0($3)
lhu $4, 0($3)
blez $3, TAG572
sh $4, 0($3)
TAG572:
bne $4, $4, TAG573
lui $1, 2
slti $1, $4, 3
lbu $3, 0($1)
TAG573:
sll $4, $3, 2
sw $4, 0($4)
mthi $4
lui $3, 0
TAG574:
mfhi $1
mtlo $1
xori $3, $1, 3
beq $3, $3, TAG575
TAG575:
mfhi $3
mtlo $3
sb $3, 0($3)
mflo $1
TAG576:
beq $1, $1, TAG577
mult $1, $1
mthi $1
multu $1, $1
TAG577:
mfhi $3
beq $3, $1, TAG578
lui $1, 10
sub $2, $1, $1
TAG578:
mfhi $2
lhu $3, 0($2)
mult $3, $2
andi $3, $2, 14
TAG579:
sh $3, 0($3)
mthi $3
mfhi $3
mthi $3
TAG580:
nor $1, $3, $3
mfhi $3
lhu $2, 0($3)
bgtz $3, TAG581
TAG581:
sra $3, $2, 7
bgez $2, TAG582
lui $1, 9
lui $1, 1
TAG582:
mfhi $1
lb $2, 0($1)
beq $1, $2, TAG583
lhu $4, 0($2)
TAG583:
lh $3, 0($4)
bne $4, $4, TAG584
mflo $4
beq $4, $4, TAG584
TAG584:
mflo $3
addu $4, $4, $4
slt $1, $3, $3
sb $3, 0($4)
TAG585:
lui $2, 2
mtlo $1
sh $2, 0($1)
lw $2, 0($1)
TAG586:
subu $3, $2, $2
lui $4, 0
multu $2, $2
bne $4, $4, TAG587
TAG587:
mfhi $4
mfhi $1
sllv $1, $1, $1
lui $2, 6
TAG588:
bltz $2, TAG589
addiu $2, $2, 6
blez $2, TAG589
mfhi $1
TAG589:
mtlo $1
mthi $1
or $4, $1, $1
beq $1, $1, TAG590
TAG590:
sltu $2, $4, $4
addiu $4, $4, 2
bgez $2, TAG591
add $1, $2, $4
TAG591:
mfhi $2
bne $2, $1, TAG592
lh $4, 0($1)
or $4, $1, $1
TAG592:
mfhi $2
lb $4, 0($2)
mfhi $4
andi $2, $4, 3
TAG593:
mult $2, $2
sltu $4, $2, $2
sltiu $4, $2, 4
bgtz $2, TAG594
TAG594:
mflo $1
mtlo $4
beq $1, $4, TAG595
and $3, $4, $4
TAG595:
beq $3, $3, TAG596
sltu $3, $3, $3
lui $3, 6
beq $3, $3, TAG596
TAG596:
lui $1, 10
lui $4, 13
beq $4, $3, TAG597
addiu $2, $1, 9
TAG597:
mult $2, $2
xor $3, $2, $2
sw $3, 0($3)
beq $3, $3, TAG598
TAG598:
sb $3, 0($3)
lbu $3, 0($3)
mflo $3
bne $3, $3, TAG599
TAG599:
multu $3, $3
srlv $3, $3, $3
mflo $2
mthi $3
TAG600:
srl $1, $2, 6
beq $2, $1, TAG601
lui $2, 6
beq $2, $1, TAG601
TAG601:
mthi $2
sll $0, $0, 0
mtlo $2
mflo $4
TAG602:
sltiu $2, $4, 14
bgez $2, TAG603
lui $2, 7
bne $2, $4, TAG603
TAG603:
mthi $2
bgez $2, TAG604
srlv $2, $2, $2
mflo $1
TAG604:
sll $0, $0, 0
sll $0, $0, 0
srlv $3, $1, $3
mtlo $3
TAG605:
sb $3, 0($3)
multu $3, $3
bne $3, $3, TAG606
sub $2, $3, $3
TAG606:
mult $2, $2
lb $3, 0($2)
sw $2, 0($3)
lui $3, 0
TAG607:
srl $2, $3, 5
lui $2, 0
mtlo $2
blez $3, TAG608
TAG608:
sb $2, 0($2)
or $2, $2, $2
xori $4, $2, 4
mflo $4
TAG609:
ori $2, $4, 0
multu $4, $4
multu $2, $4
bgtz $4, TAG610
TAG610:
mfhi $2
srlv $3, $2, $2
bltz $2, TAG611
slt $4, $2, $3
TAG611:
mtlo $4
sh $4, 0($4)
mult $4, $4
lui $2, 7
TAG612:
sll $0, $0, 0
lui $3, 0
blez $2, TAG613
addu $3, $3, $1
TAG613:
sll $0, $0, 0
mfhi $3
addi $1, $3, 13
mfhi $1
TAG614:
beq $1, $1, TAG615
sh $1, 0($1)
or $2, $1, $1
divu $2, $2
TAG615:
lui $1, 4
xori $3, $1, 0
bne $3, $1, TAG616
sll $0, $0, 0
TAG616:
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
mult $4, $3
TAG617:
beq $4, $4, TAG618
mfhi $3
mult $3, $4
mthi $3
TAG618:
div $3, $3
divu $3, $3
mult $3, $3
bne $3, $3, TAG619
TAG619:
multu $3, $3
multu $3, $3
bgez $3, TAG620
multu $3, $3
TAG620:
mthi $3
lhu $1, 0($3)
lui $3, 9
sll $0, $0, 0
TAG621:
sll $0, $0, 0
mtlo $3
mfhi $2
mthi $3
TAG622:
xori $3, $2, 0
multu $3, $3
addu $2, $3, $3
mtlo $3
TAG623:
lh $1, 0($2)
bltz $2, TAG624
sh $2, 0($2)
andi $3, $2, 8
TAG624:
lui $1, 13
mflo $3
mtlo $1
bne $3, $1, TAG625
TAG625:
lui $4, 14
lui $3, 1
beq $3, $3, TAG626
lui $3, 14
TAG626:
divu $3, $3
multu $3, $3
sll $0, $0, 0
sltu $1, $3, $3
TAG627:
lui $2, 4
beq $1, $2, TAG628
lhu $4, 0($1)
sll $0, $0, 0
TAG628:
multu $4, $4
and $2, $4, $4
lui $4, 11
sll $0, $0, 0
TAG629:
beq $4, $4, TAG630
mfhi $1
xor $3, $1, $4
div $3, $4
TAG630:
bne $3, $3, TAG631
addu $4, $3, $3
bgez $3, TAG631
addiu $2, $3, 0
TAG631:
mfhi $4
mtlo $4
mthi $4
mflo $3
TAG632:
beq $3, $3, TAG633
multu $3, $3
sb $3, 0($3)
sub $4, $3, $3
TAG633:
bne $4, $4, TAG634
mfhi $4
addiu $3, $4, 12
nor $3, $4, $3
TAG634:
addiu $2, $3, 6
bltz $3, TAG635
lh $1, 13($3)
mtlo $2
TAG635:
multu $1, $1
mfhi $3
ori $2, $1, 1
lb $4, 0($1)
TAG636:
multu $4, $4
beq $4, $4, TAG637
lui $2, 10
mfhi $2
TAG637:
sll $0, $0, 0
lui $4, 9
mflo $2
xori $2, $3, 8
TAG638:
blez $2, TAG639
sb $2, 0($2)
ori $3, $2, 2
mflo $1
TAG639:
mthi $1
mult $1, $1
mthi $1
slt $2, $1, $1
TAG640:
sllv $1, $2, $2
mult $2, $1
sb $2, 0($2)
and $4, $1, $1
TAG641:
srlv $1, $4, $4
addiu $4, $4, 8
mthi $1
sw $4, 0($4)
TAG642:
bne $4, $4, TAG643
andi $1, $4, 7
lui $2, 15
bne $2, $1, TAG643
TAG643:
mthi $2
bne $2, $2, TAG644
lui $2, 2
srlv $4, $2, $2
TAG644:
multu $4, $4
sll $0, $0, 0
bne $4, $4, TAG645
sll $0, $0, 0
TAG645:
sh $3, 0($3)
mthi $3
bgtz $3, TAG646
lbu $1, 0($3)
TAG646:
ori $4, $1, 7
mthi $1
blez $1, TAG647
lhu $3, 0($1)
TAG647:
sh $3, 0($3)
lui $1, 10
mfhi $4
mflo $4
TAG648:
lui $1, 6
multu $1, $4
add $2, $4, $4
lui $1, 10
TAG649:
srav $4, $1, $1
mtlo $4
beq $1, $1, TAG650
lui $1, 6
TAG650:
mthi $1
lui $2, 1
nor $2, $2, $2
sllv $1, $2, $2
TAG651:
mtlo $1
lui $3, 2
addu $4, $3, $3
blez $4, TAG652
TAG652:
lui $4, 6
sll $0, $0, 0
bne $4, $4, TAG653
sll $0, $0, 0
TAG653:
mflo $1
sll $0, $0, 0
addu $4, $1, $4
bne $4, $4, TAG654
TAG654:
mthi $4
multu $4, $4
blez $4, TAG655
srlv $3, $4, $4
TAG655:
sll $0, $0, 0
addu $3, $3, $3
sltiu $3, $3, 5
multu $3, $3
TAG656:
sw $3, 0($3)
sltiu $4, $3, 7
mfhi $3
lh $4, 0($3)
TAG657:
srlv $2, $4, $4
mthi $4
add $1, $2, $4
mfhi $3
TAG658:
lw $2, 0($3)
mult $2, $3
mthi $3
lui $2, 0
TAG659:
srlv $3, $2, $2
lw $4, 0($3)
lhu $2, 0($2)
mult $3, $3
TAG660:
bne $2, $2, TAG661
mult $2, $2
multu $2, $2
bne $2, $2, TAG661
TAG661:
mtlo $2
bltz $2, TAG662
sh $2, 0($2)
bne $2, $2, TAG662
TAG662:
mflo $1
beq $1, $2, TAG663
addu $4, $2, $1
lb $1, 0($4)
TAG663:
mfhi $2
mult $2, $2
mtlo $2
sll $2, $2, 1
TAG664:
lui $1, 13
mflo $1
mfhi $1
multu $1, $2
TAG665:
multu $1, $1
mtlo $1
lui $4, 2
mflo $3
TAG666:
sllv $3, $3, $3
xor $2, $3, $3
lh $3, 0($3)
sra $4, $3, 10
TAG667:
sub $3, $4, $4
mtlo $3
lb $3, 0($4)
lh $2, 0($4)
TAG668:
lui $3, 15
mthi $3
beq $2, $2, TAG669
multu $2, $3
TAG669:
bgez $3, TAG670
mflo $3
sh $3, 0($3)
or $1, $3, $3
TAG670:
mtlo $1
lui $4, 5
mthi $1
bltz $1, TAG671
TAG671:
sll $0, $0, 0
mthi $1
mflo $2
lui $2, 13
TAG672:
slti $2, $2, 2
xori $2, $2, 5
blez $2, TAG673
multu $2, $2
TAG673:
mflo $4
srav $1, $2, $4
mfhi $4
mflo $3
TAG674:
divu $3, $3
addiu $2, $3, 4
multu $2, $3
mtlo $2
TAG675:
divu $2, $2
andi $2, $2, 12
sw $2, 0($2)
lui $1, 4
TAG676:
lui $1, 8
addiu $3, $1, 2
sll $0, $0, 0
sltu $1, $1, $3
TAG677:
addu $1, $1, $1
sh $1, 0($1)
sh $1, 0($1)
mfhi $4
TAG678:
mfhi $1
add $1, $4, $1
multu $4, $1
bltz $4, TAG679
TAG679:
lui $1, 1
mtlo $1
sll $0, $0, 0
mthi $4
TAG680:
sub $2, $4, $4
multu $2, $4
multu $2, $2
lui $1, 13
TAG681:
srlv $2, $1, $1
mfhi $4
sra $3, $1, 1
sll $0, $0, 0
TAG682:
subu $3, $1, $1
bne $1, $3, TAG683
srlv $1, $1, $1
sltiu $2, $1, 13
TAG683:
mtlo $2
xori $3, $2, 10
beq $3, $2, TAG684
mtlo $2
TAG684:
lui $3, 1
addiu $3, $3, 11
addiu $3, $3, 15
lui $2, 9
TAG685:
blez $2, TAG686
lui $2, 4
sll $0, $0, 0
div $2, $2
TAG686:
subu $1, $2, $2
lhu $2, 0($1)
mult $2, $2
sll $2, $1, 8
TAG687:
beq $2, $2, TAG688
mfhi $3
sltiu $4, $3, 11
mult $4, $4
TAG688:
addiu $2, $4, 11
blez $2, TAG689
lui $1, 0
mfhi $2
TAG689:
mthi $2
bltz $2, TAG690
sll $1, $2, 4
bne $1, $2, TAG690
TAG690:
multu $1, $1
blez $1, TAG691
multu $1, $1
mult $1, $1
TAG691:
mult $1, $1
lhu $3, 0($1)
mthi $1
bgtz $1, TAG692
TAG692:
mflo $1
addiu $2, $1, 10
mflo $3
lui $1, 8
TAG693:
sll $0, $0, 0
lui $2, 14
sh $4, 0($4)
subu $3, $2, $2
TAG694:
lui $1, 2
add $1, $3, $1
sll $0, $0, 0
lui $3, 13
TAG695:
mthi $3
blez $3, TAG696
divu $3, $3
subu $4, $3, $3
TAG696:
lhu $2, 0($4)
bgez $2, TAG697
multu $2, $4
mfhi $3
TAG697:
blez $3, TAG698
mflo $3
xori $3, $3, 1
slti $2, $3, 5
TAG698:
mfhi $2
sh $2, 0($2)
beq $2, $2, TAG699
subu $3, $2, $2
TAG699:
lbu $1, 0($3)
blez $1, TAG700
mflo $4
srl $3, $4, 11
TAG700:
mult $3, $3
sll $2, $3, 6
mult $3, $3
nor $4, $3, $2
TAG701:
mult $4, $4
mtlo $4
sra $2, $4, 5
sh $4, 1($4)
TAG702:
bgtz $2, TAG703
srav $3, $2, $2
lui $4, 10
lbu $3, 1($2)
TAG703:
mtlo $3
mthi $3
slt $3, $3, $3
subu $4, $3, $3
TAG704:
lui $2, 14
bgez $2, TAG705
mult $4, $4
mult $4, $2
TAG705:
divu $2, $2
div $2, $2
mtlo $2
div $2, $2
TAG706:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG707
lbu $2, 0($3)
TAG707:
sb $2, -255($2)
mtlo $2
sw $2, -255($2)
mfhi $3
TAG708:
mthi $3
srav $4, $3, $3
beq $3, $4, TAG709
sb $3, 0($3)
TAG709:
mult $4, $4
xori $4, $4, 7
subu $1, $4, $4
mflo $3
TAG710:
lw $1, 0($3)
mflo $4
addu $1, $1, $4
sb $3, 0($1)
TAG711:
mfhi $2
sb $1, 0($1)
srl $4, $2, 0
sh $2, 0($1)
TAG712:
mtlo $4
bgtz $4, TAG713
multu $4, $4
sll $1, $4, 9
TAG713:
and $2, $1, $1
lbu $3, 0($1)
mult $3, $2
lbu $1, 0($3)
TAG714:
lui $2, 10
sw $2, 0($1)
mflo $1
multu $2, $1
TAG715:
srl $2, $1, 11
lw $3, 0($1)
bne $1, $2, TAG716
sltu $3, $2, $3
TAG716:
andi $3, $3, 15
blez $3, TAG717
mthi $3
bgtz $3, TAG717
TAG717:
mfhi $1
bgez $1, TAG718
lbu $1, 0($3)
mflo $4
TAG718:
slti $1, $4, 2
bne $4, $1, TAG719
lui $2, 14
lb $1, 0($1)
TAG719:
sb $1, 0($1)
mfhi $3
mthi $3
andi $4, $1, 4
TAG720:
bgtz $4, TAG721
slt $1, $4, $4
mflo $3
sw $4, 0($1)
TAG721:
mtlo $3
mflo $4
bne $4, $4, TAG722
lui $1, 2
TAG722:
srav $1, $1, $1
lui $2, 11
lui $2, 2
sll $0, $0, 0
TAG723:
sra $4, $2, 2
mfhi $4
beq $4, $4, TAG724
sll $0, $0, 0
TAG724:
bgtz $4, TAG725
sb $4, 0($4)
ori $3, $4, 1
mfhi $4
TAG725:
mthi $4
lui $2, 11
beq $4, $2, TAG726
mfhi $4
TAG726:
lbu $2, 0($4)
ori $3, $4, 0
sb $3, 0($2)
mthi $4
TAG727:
sll $3, $3, 6
mthi $3
mflo $4
bne $3, $3, TAG728
TAG728:
lbu $1, 0($4)
lui $1, 15
sll $0, $0, 0
mfhi $2
TAG729:
mfhi $3
multu $2, $2
mflo $1
sh $2, -4096($1)
TAG730:
bne $1, $1, TAG731
lui $1, 12
ori $4, $1, 14
mflo $2
TAG731:
beq $2, $2, TAG732
slti $2, $2, 3
sh $2, 0($2)
mflo $2
TAG732:
lui $2, 1
lui $1, 13
sltiu $3, $1, 14
mflo $4
TAG733:
mtlo $4
mthi $4
mthi $4
bne $4, $4, TAG734
TAG734:
slti $2, $4, 4
sll $4, $4, 12
mflo $3
lui $3, 15
TAG735:
sra $3, $3, 0
mflo $3
bgez $3, TAG736
mfhi $4
TAG736:
sh $4, -4096($4)
div $4, $4
sh $4, -4096($4)
lbu $3, -4096($4)
TAG737:
mtlo $3
mtlo $3
slti $1, $3, 2
addiu $4, $1, 7
TAG738:
addiu $1, $4, 12
bne $4, $4, TAG739
lhu $1, 0($4)
mult $1, $1
TAG739:
lui $2, 5
sll $0, $0, 0
lui $1, 9
sll $0, $0, 0
TAG740:
mfhi $2
srlv $3, $2, $1
srl $1, $2, 13
blez $1, TAG741
TAG741:
subu $4, $1, $1
lui $3, 15
bltz $3, TAG742
mfhi $2
TAG742:
lui $2, 5
addu $3, $2, $2
mult $2, $2
beq $3, $3, TAG743
TAG743:
mtlo $3
sltiu $2, $3, 1
blez $3, TAG744
lui $4, 13
TAG744:
mfhi $3
mthi $3
bltz $4, TAG745
lui $3, 10
TAG745:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $3, TAG746
sll $0, $0, 0
TAG746:
lui $2, 4
srlv $4, $3, $3
mfhi $4
sb $2, 0($4)
TAG747:
multu $4, $4
div $4, $4
andi $1, $4, 7
mflo $2
TAG748:
blez $2, TAG749
lbu $2, 0($2)
beq $2, $2, TAG749
lw $3, 0($2)
TAG749:
mfhi $2
sb $2, 0($3)
lui $4, 5
mfhi $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop