ori $1, $0, 4
ori $2, $0, 15
ori $3, $0, 10
ori $4, $0, 9
sw $2, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $3, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $3, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $4, 124($0)
beq $2, $2, TAG1
subu $2, $2, $2
beq $2, $2, TAG1
slt $3, $2, $2
TAG1:
bgtz $3, TAG2
lbu $4, 0($3)
sra $1, $4, 5
lhu $4, 0($3)
TAG2:
mflo $3
mthi $4
bgez $4, TAG3
multu $4, $4
TAG3:
mult $3, $3
sra $1, $3, 0
mtlo $3
sllv $1, $3, $1
TAG4:
bne $1, $1, TAG5
and $3, $1, $1
lui $3, 5
mfhi $2
TAG5:
lui $1, 8
multu $1, $2
sll $0, $0, 0
lhu $3, 0($2)
TAG6:
bgtz $3, TAG7
lb $1, 0($3)
sb $3, 0($1)
sw $1, 0($3)
TAG7:
mflo $1
beq $1, $1, TAG8
sub $1, $1, $1
lh $4, 0($1)
TAG8:
bgez $4, TAG9
multu $4, $4
beq $4, $4, TAG9
mthi $4
TAG9:
multu $4, $4
bne $4, $4, TAG10
sw $4, 0($4)
mult $4, $4
TAG10:
lw $4, 0($4)
sub $3, $4, $4
mflo $4
mthi $4
TAG11:
multu $4, $4
srlv $3, $4, $4
mfhi $3
andi $2, $3, 10
TAG12:
sw $2, 0($2)
ori $4, $2, 8
bgtz $2, TAG13
srl $1, $2, 7
TAG13:
mthi $1
ori $2, $1, 5
ori $3, $1, 0
mflo $2
TAG14:
mtlo $2
sw $2, 0($2)
beq $2, $2, TAG15
lui $1, 13
TAG15:
lui $2, 6
bgez $2, TAG16
mtlo $1
bltz $1, TAG16
TAG16:
sll $0, $0, 0
lui $1, 3
bgez $1, TAG17
subu $3, $2, $1
TAG17:
sll $0, $0, 0
blez $3, TAG18
andi $3, $3, 7
lui $4, 12
TAG18:
mtlo $4
sll $0, $0, 0
bne $4, $4, TAG19
ori $2, $4, 14
TAG19:
lui $1, 3
mtlo $1
lui $1, 5
mfhi $3
TAG20:
lui $3, 2
mfhi $1
multu $1, $3
mthi $3
TAG21:
lw $1, 0($1)
sw $1, 0($1)
sll $1, $1, 2
srlv $1, $1, $1
TAG22:
mult $1, $1
multu $1, $1
mfhi $4
addi $4, $4, 10
TAG23:
xori $1, $4, 4
mfhi $3
mtlo $4
blez $3, TAG24
TAG24:
sh $3, 0($3)
mtlo $3
blez $3, TAG25
sra $3, $3, 1
TAG25:
lhu $2, 0($3)
blez $3, TAG26
lui $4, 2
multu $2, $2
TAG26:
multu $4, $4
bne $4, $4, TAG27
sll $0, $0, 0
mflo $1
TAG27:
addi $3, $1, 13
bne $3, $1, TAG28
mtlo $1
mthi $1
TAG28:
addiu $1, $3, 9
bne $3, $3, TAG29
lbu $3, 0($1)
mfhi $2
TAG29:
sw $2, 0($2)
beq $2, $2, TAG30
mthi $2
sltu $3, $2, $2
TAG30:
multu $3, $3
mtlo $3
bltz $3, TAG31
mfhi $2
TAG31:
mflo $1
lbu $2, 0($2)
sra $2, $1, 14
andi $2, $2, 6
TAG32:
beq $2, $2, TAG33
sub $3, $2, $2
andi $4, $2, 10
lw $4, 0($2)
TAG33:
sll $0, $0, 0
srav $4, $4, $4
sll $0, $0, 0
bltz $4, TAG34
TAG34:
subu $2, $4, $4
andi $1, $2, 14
sll $0, $0, 0
divu $1, $4
TAG35:
mfhi $3
lui $3, 2
sub $1, $1, $1
lui $1, 12
TAG36:
sll $0, $0, 0
bltz $1, TAG37
slti $4, $1, 5
bltz $4, TAG37
TAG37:
sw $4, 0($4)
mthi $4
mflo $2
beq $2, $2, TAG38
TAG38:
lhu $2, 0($2)
bne $2, $2, TAG39
mflo $4
sll $4, $2, 3
TAG39:
sw $4, 0($4)
xor $1, $4, $4
mflo $1
bgez $1, TAG40
TAG40:
lb $4, 0($1)
addi $4, $1, 12
lw $4, 0($4)
mthi $4
TAG41:
lui $2, 3
sll $0, $0, 0
lui $2, 9
mflo $3
TAG42:
lbu $3, 0($3)
addiu $3, $3, 8
lui $1, 15
mtlo $3
TAG43:
blez $1, TAG44
sll $0, $0, 0
beq $3, $1, TAG44
sll $0, $0, 0
TAG44:
nor $1, $3, $3
beq $3, $1, TAG45
mfhi $4
mtlo $1
TAG45:
sb $4, 0($4)
mult $4, $4
mfhi $4
mthi $4
TAG46:
lhu $4, 0($4)
bne $4, $4, TAG47
sb $4, 0($4)
bgez $4, TAG47
TAG47:
mflo $1
blez $1, TAG48
sb $1, 0($1)
and $3, $1, $1
TAG48:
nor $3, $3, $3
addiu $2, $3, 13
bne $3, $3, TAG49
mtlo $3
TAG49:
bgez $2, TAG50
divu $2, $2
lui $4, 11
slti $1, $4, 15
TAG50:
sw $1, 0($1)
sh $1, 0($1)
sw $1, 0($1)
and $1, $1, $1
TAG51:
lui $2, 4
bgez $1, TAG52
lui $4, 8
bgtz $2, TAG52
TAG52:
lui $3, 3
multu $3, $4
mtlo $4
sll $0, $0, 0
TAG53:
sllv $3, $3, $3
mthi $3
mfhi $2
div $3, $2
TAG54:
divu $2, $2
sll $0, $0, 0
blez $2, TAG55
lui $3, 11
TAG55:
bltz $3, TAG56
sll $0, $0, 0
mult $3, $3
sltu $2, $3, $3
TAG56:
andi $4, $2, 15
lb $1, 0($2)
lui $3, 7
lui $3, 1
TAG57:
lui $2, 4
sll $0, $0, 0
slti $3, $2, 6
mthi $2
TAG58:
lui $4, 5
bgez $4, TAG59
xori $2, $3, 15
divu $3, $3
TAG59:
blez $2, TAG60
lui $3, 2
mthi $3
mthi $3
TAG60:
blez $3, TAG61
mflo $4
beq $3, $3, TAG61
sltu $1, $3, $4
TAG61:
bgtz $1, TAG62
lbu $2, 0($1)
mult $2, $2
bne $1, $1, TAG62
TAG62:
addiu $3, $2, 0
sll $3, $2, 6
andi $1, $2, 7
srl $4, $1, 12
TAG63:
sh $4, 0($4)
sh $4, 0($4)
bgtz $4, TAG64
xor $2, $4, $4
TAG64:
lhu $1, 0($2)
mflo $2
bne $1, $1, TAG65
lui $2, 10
TAG65:
lui $3, 0
bne $2, $2, TAG66
lui $2, 0
multu $2, $2
TAG66:
or $2, $2, $2
mthi $2
beq $2, $2, TAG67
sb $2, 0($2)
TAG67:
multu $2, $2
multu $2, $2
mflo $2
sw $2, 0($2)
TAG68:
sltu $2, $2, $2
xori $2, $2, 5
bne $2, $2, TAG69
lui $4, 8
TAG69:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG70:
sb $1, 0($1)
lui $1, 2
sll $0, $0, 0
srav $2, $1, $1
TAG71:
div $2, $2
bltz $2, TAG72
divu $2, $2
sll $0, $0, 0
TAG72:
blez $2, TAG73
sll $0, $0, 0
lui $3, 5
sll $0, $0, 0
TAG73:
bne $3, $3, TAG74
mfhi $2
sw $2, 0($2)
andi $2, $2, 6
TAG74:
bne $2, $2, TAG75
sub $4, $2, $2
mfhi $3
lb $3, 0($4)
TAG75:
lui $3, 6
multu $3, $3
lui $1, 9
bltz $3, TAG76
TAG76:
mfhi $1
divu $1, $1
mthi $1
mflo $4
TAG77:
addiu $3, $4, 9
sb $3, 0($3)
sltiu $3, $4, 8
lbu $4, 0($3)
TAG78:
mtlo $4
sh $4, 0($4)
blez $4, TAG79
mfhi $1
TAG79:
xori $3, $1, 1
srl $3, $3, 4
multu $3, $3
sh $1, 0($3)
TAG80:
divu $3, $3
lui $3, 14
mflo $2
lui $3, 13
TAG81:
lui $3, 8
mult $3, $3
sll $0, $0, 0
div $3, $2
TAG82:
slt $2, $2, $2
bltz $2, TAG83
multu $2, $2
ori $1, $2, 9
TAG83:
sllv $4, $1, $1
bgez $1, TAG84
nor $4, $4, $1
mflo $4
TAG84:
divu $4, $4
xori $3, $4, 11
bgtz $4, TAG85
lhu $1, 4611($3)
TAG85:
multu $1, $1
bgtz $1, TAG86
lui $1, 2
addiu $4, $1, 0
TAG86:
bgtz $4, TAG87
sll $0, $0, 0
sltiu $3, $2, 4
lui $3, 14
TAG87:
ori $2, $3, 8
mtlo $3
andi $1, $3, 14
bgtz $3, TAG88
TAG88:
lui $2, 13
bgtz $1, TAG89
sll $0, $0, 0
slt $4, $1, $2
TAG89:
multu $4, $4
bgtz $4, TAG90
div $4, $4
srav $2, $4, $4
TAG90:
addiu $3, $2, 0
lui $3, 10
mflo $1
srav $4, $1, $1
TAG91:
lh $4, 0($4)
sw $4, 0($4)
multu $4, $4
mfhi $4
TAG92:
beq $4, $4, TAG93
mfhi $4
lui $1, 3
mthi $1
TAG93:
blez $1, TAG94
lui $3, 14
beq $3, $1, TAG94
lui $4, 14
TAG94:
sltiu $3, $4, 3
mtlo $4
srl $1, $4, 11
lui $4, 7
TAG95:
sll $0, $0, 0
bne $4, $4, TAG96
lui $3, 8
beq $4, $4, TAG96
TAG96:
addiu $1, $3, 10
ori $1, $3, 4
sll $0, $0, 0
nor $4, $1, $2
TAG97:
sltu $4, $4, $4
lhu $3, 0($4)
sw $4, 0($4)
mflo $1
TAG98:
sll $0, $0, 0
sll $0, $0, 0
xori $3, $3, 6
addiu $4, $3, 3
TAG99:
addu $2, $4, $4
lui $2, 1
sll $0, $0, 0
lui $4, 8
TAG100:
sltiu $3, $4, 5
multu $4, $4
multu $3, $4
lui $3, 0
TAG101:
mult $3, $3
mult $3, $3
mtlo $3
bne $3, $3, TAG102
TAG102:
slti $4, $3, 11
beq $4, $4, TAG103
lui $4, 12
mfhi $3
TAG103:
sh $3, 0($3)
mflo $2
beq $3, $3, TAG104
mfhi $4
TAG104:
beq $4, $4, TAG105
lw $3, 0($4)
sllv $1, $3, $4
lhu $3, 0($3)
TAG105:
mthi $3
lui $3, 0
bgtz $3, TAG106
lw $1, 0($3)
TAG106:
addu $4, $1, $1
mult $1, $1
mult $1, $4
bltz $4, TAG107
TAG107:
sh $4, 0($4)
lui $1, 0
bne $4, $1, TAG108
sllv $4, $1, $4
TAG108:
bne $4, $4, TAG109
lui $2, 4
sb $2, 0($4)
sw $4, 0($4)
TAG109:
addiu $1, $2, 11
sll $0, $0, 0
multu $2, $2
bgez $1, TAG110
TAG110:
lb $3, 0($3)
bgez $3, TAG111
sb $3, 0($3)
bgez $3, TAG111
TAG111:
lui $2, 3
sra $1, $3, 4
bne $2, $1, TAG112
sb $3, 0($1)
TAG112:
lui $2, 1
sll $0, $0, 0
lhu $3, 0($1)
andi $1, $2, 7
TAG113:
bgtz $1, TAG114
sll $1, $1, 15
mthi $1
or $3, $1, $1
TAG114:
srav $2, $3, $3
mult $2, $2
mtlo $2
sll $2, $3, 12
TAG115:
blez $2, TAG116
mthi $2
mthi $2
bgez $2, TAG116
TAG116:
sw $2, 0($2)
slti $1, $2, 3
srlv $1, $2, $1
bltz $1, TAG117
TAG117:
lw $4, 0($1)
slt $1, $4, $4
bgtz $1, TAG118
lui $1, 10
TAG118:
bgez $1, TAG119
lui $3, 7
blez $1, TAG119
mult $1, $3
TAG119:
bne $3, $3, TAG120
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG120:
mult $1, $1
nor $1, $1, $1
xori $4, $1, 7
slt $3, $1, $4
TAG121:
multu $3, $3
lw $2, 0($3)
xori $1, $3, 10
lb $1, 0($2)
TAG122:
and $2, $1, $1
mult $2, $2
multu $2, $2
sb $1, 0($2)
TAG123:
lw $1, 0($2)
lh $3, 0($2)
multu $2, $3
sw $3, 0($2)
TAG124:
multu $3, $3
mult $3, $3
lw $1, 0($3)
srlv $4, $1, $1
TAG125:
mtlo $4
sh $4, 0($4)
bne $4, $4, TAG126
mflo $3
TAG126:
mflo $3
bltz $3, TAG127
mflo $1
lui $2, 8
TAG127:
blez $2, TAG128
subu $4, $2, $2
sw $2, 0($4)
bltz $4, TAG128
TAG128:
addi $2, $4, 8
xori $4, $4, 14
blez $2, TAG129
mfhi $4
TAG129:
addi $3, $4, 0
bgtz $3, TAG130
mflo $1
lui $2, 6
TAG130:
sll $4, $2, 3
mflo $3
bne $3, $3, TAG131
lui $4, 8
TAG131:
sll $0, $0, 0
bne $4, $3, TAG132
mtlo $4
beq $3, $3, TAG132
TAG132:
xori $3, $3, 7
multu $3, $3
sb $3, 0($3)
mtlo $3
TAG133:
bltz $3, TAG134
sllv $4, $3, $3
lh $3, -896($4)
bltz $3, TAG134
TAG134:
mult $3, $3
beq $3, $3, TAG135
sb $3, 0($3)
bltz $3, TAG135
TAG135:
lhu $3, 0($3)
blez $3, TAG136
lh $4, 0($3)
addi $2, $3, 9
TAG136:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
bne $2, $1, TAG137
TAG137:
sb $1, 0($1)
mflo $4
nor $1, $1, $4
mtlo $1
TAG138:
lui $3, 0
srlv $4, $3, $3
slti $4, $3, 7
mthi $4
TAG139:
sll $2, $4, 8
lui $3, 11
mtlo $4
lbu $2, 0($4)
TAG140:
lui $2, 3
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG141:
bne $4, $4, TAG142
multu $4, $4
sb $4, 0($4)
sra $3, $4, 2
TAG142:
lw $1, 0($3)
mfhi $4
sll $0, $0, 0
lui $2, 2
TAG143:
lui $4, 10
bne $2, $2, TAG144
sll $3, $4, 12
mtlo $3
TAG144:
beq $3, $3, TAG145
lui $2, 12
mthi $3
sltu $4, $2, $2
TAG145:
lui $4, 6
slti $1, $4, 5
bltz $4, TAG146
sll $0, $0, 0
TAG146:
mflo $1
bne $1, $1, TAG147
sll $0, $0, 0
mflo $2
TAG147:
sll $0, $0, 0
mthi $3
subu $1, $3, $3
sh $1, 0($1)
TAG148:
multu $1, $1
mflo $4
mthi $1
mtlo $1
TAG149:
sll $3, $4, 3
lbu $2, 0($3)
bgtz $2, TAG150
sh $2, 0($3)
TAG150:
sh $2, 0($2)
sh $2, 0($2)
or $1, $2, $2
mflo $1
TAG151:
or $3, $1, $1
beq $1, $3, TAG152
multu $3, $1
and $3, $1, $3
TAG152:
mfhi $1
lb $4, 0($1)
bltz $3, TAG153
mflo $3
TAG153:
sltu $3, $3, $3
addi $1, $3, 4
sllv $1, $3, $3
slti $3, $3, 9
TAG154:
divu $3, $3
sb $3, 0($3)
blez $3, TAG155
sb $3, 0($3)
TAG155:
lbu $3, 0($3)
mult $3, $3
blez $3, TAG156
lui $2, 14
TAG156:
srlv $4, $2, $2
lui $1, 10
andi $1, $1, 8
slti $1, $4, 9
TAG157:
sb $1, 0($1)
mflo $1
beq $1, $1, TAG158
lui $3, 12
TAG158:
bgtz $3, TAG159
slti $1, $3, 0
divu $1, $1
mflo $3
TAG159:
sll $0, $0, 0
srlv $3, $2, $3
beq $3, $2, TAG160
sltiu $1, $2, 10
TAG160:
lh $2, 0($1)
or $3, $2, $1
lb $4, 0($1)
bne $3, $4, TAG161
TAG161:
mthi $4
bne $4, $4, TAG162
multu $4, $4
nor $1, $4, $4
TAG162:
lui $3, 12
blez $3, TAG163
mflo $3
lui $2, 2
TAG163:
bne $2, $2, TAG164
div $2, $2
div $2, $2
multu $2, $2
TAG164:
bgtz $2, TAG165
sll $0, $0, 0
or $2, $2, $2
multu $2, $2
TAG165:
sll $0, $0, 0
multu $4, $2
mfhi $1
div $4, $2
TAG166:
slti $4, $1, 1
div $1, $4
blez $1, TAG167
slti $3, $1, 12
TAG167:
mfhi $1
mflo $1
mfhi $4
addu $3, $1, $3
TAG168:
sllv $2, $3, $3
or $3, $3, $3
beq $3, $2, TAG169
sltu $1, $3, $2
TAG169:
mflo $1
mtlo $1
mflo $1
multu $1, $1
TAG170:
sb $1, 0($1)
mtlo $1
mfhi $1
lui $4, 0
TAG171:
bgtz $4, TAG172
mult $4, $4
mthi $4
srav $1, $4, $4
TAG172:
beq $1, $1, TAG173
sra $3, $1, 2
sltu $3, $3, $3
bgtz $3, TAG173
TAG173:
sltiu $1, $3, 9
lh $1, 0($3)
sh $1, 0($3)
beq $1, $1, TAG174
TAG174:
mtlo $1
div $1, $1
subu $4, $1, $1
beq $4, $1, TAG175
TAG175:
sub $1, $4, $4
lw $1, 0($1)
mthi $4
multu $4, $4
TAG176:
beq $1, $1, TAG177
sll $0, $0, 0
mflo $3
mthi $3
TAG177:
beq $3, $3, TAG178
addiu $2, $3, 13
sb $3, 0($2)
lhu $2, 0($2)
TAG178:
mthi $2
beq $2, $2, TAG179
slt $1, $2, $2
lbu $1, 0($2)
TAG179:
sw $1, 0($1)
bne $1, $1, TAG180
multu $1, $1
lh $1, 0($1)
TAG180:
lui $2, 11
sll $0, $0, 0
lhu $2, 0($1)
xori $3, $1, 10
TAG181:
mtlo $3
mthi $3
sh $3, 0($3)
lhu $2, 0($3)
TAG182:
nor $4, $2, $2
addu $1, $4, $2
bgez $2, TAG183
addu $1, $1, $4
TAG183:
slti $2, $1, 8
blez $2, TAG184
lbu $4, 0($2)
mthi $4
TAG184:
bgtz $4, TAG185
addu $3, $4, $4
beq $3, $4, TAG185
lui $3, 9
TAG185:
sll $0, $0, 0
mfhi $1
mtlo $3
lui $2, 7
TAG186:
addiu $2, $2, 8
mthi $2
mthi $2
sll $0, $0, 0
TAG187:
mtlo $2
sltiu $3, $2, 5
lui $1, 7
ori $2, $3, 5
TAG188:
mtlo $2
bne $2, $2, TAG189
div $2, $2
lb $2, 0($2)
TAG189:
andi $4, $2, 7
multu $2, $2
multu $4, $2
mflo $4
TAG190:
add $3, $4, $4
lui $3, 4
mthi $3
bne $3, $4, TAG191
TAG191:
mtlo $3
mtlo $3
lui $2, 8
sll $0, $0, 0
TAG192:
bgez $2, TAG193
sll $0, $0, 0
mflo $1
mflo $2
TAG193:
div $2, $2
mtlo $2
mthi $2
beq $2, $2, TAG194
TAG194:
xor $4, $2, $2
bgtz $4, TAG195
mflo $2
subu $4, $4, $4
TAG195:
mtlo $4
beq $4, $4, TAG196
lb $2, 0($4)
slt $4, $4, $2
TAG196:
mthi $4
sltiu $2, $4, 10
lui $3, 0
lb $3, 0($3)
TAG197:
lui $4, 2
mflo $4
lui $2, 15
multu $4, $3
TAG198:
bltz $2, TAG199
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG199
TAG199:
sll $0, $0, 0
bgtz $2, TAG200
lui $4, 6
beq $2, $4, TAG200
TAG200:
srlv $2, $4, $4
addiu $3, $2, 14
beq $3, $3, TAG201
xor $3, $3, $4
TAG201:
slti $4, $3, 15
sh $3, 0($3)
sll $1, $3, 13
blez $1, TAG202
TAG202:
sra $2, $1, 3
or $1, $2, $1
subu $4, $2, $1
sll $0, $0, 0
TAG203:
beq $4, $4, TAG204
addu $4, $4, $4
bgtz $4, TAG204
xori $4, $4, 0
TAG204:
beq $4, $4, TAG205
addiu $1, $4, 1
lui $1, 1
nor $2, $1, $1
TAG205:
mfhi $1
beq $1, $1, TAG206
mflo $2
lui $2, 11
TAG206:
and $2, $2, $2
sw $2, 0($2)
slti $3, $2, 0
multu $2, $2
TAG207:
mult $3, $3
sllv $4, $3, $3
mthi $4
mthi $3
TAG208:
bgez $4, TAG209
sh $4, 0($4)
lui $1, 0
mfhi $1
TAG209:
mthi $1
sh $1, 0($1)
lh $1, 0($1)
sw $1, 0($1)
TAG210:
addu $3, $1, $1
mthi $3
mthi $1
mtlo $1
TAG211:
lui $3, 5
blez $3, TAG212
mthi $3
bne $3, $3, TAG212
TAG212:
sll $0, $0, 0
mtlo $3
mult $3, $3
addiu $2, $3, 3
TAG213:
srl $3, $2, 4
sb $2, -20480($3)
bltz $3, TAG214
lbu $4, -20480($3)
TAG214:
bltz $4, TAG215
lui $1, 9
sb $4, 0($4)
xori $1, $1, 3
TAG215:
beq $1, $1, TAG216
sll $0, $0, 0
bne $1, $1, TAG216
lui $2, 15
TAG216:
sll $0, $0, 0
mthi $2
beq $2, $1, TAG217
sll $0, $0, 0
TAG217:
div $1, $1
mtlo $1
sra $4, $1, 14
beq $1, $4, TAG218
TAG218:
mult $4, $4
lui $2, 4
andi $3, $2, 15
mfhi $4
TAG219:
lb $1, 0($4)
sra $4, $4, 7
mtlo $4
multu $4, $4
TAG220:
addiu $4, $4, 0
sh $4, 0($4)
lw $3, 0($4)
srav $1, $3, $3
TAG221:
bltz $1, TAG222
multu $1, $1
beq $1, $1, TAG222
slti $1, $1, 1
TAG222:
lui $4, 5
mult $1, $4
sll $0, $0, 0
bgez $4, TAG223
TAG223:
sra $2, $4, 10
mfhi $4
mfhi $4
multu $4, $4
TAG224:
bltz $4, TAG225
mfhi $2
blez $4, TAG225
mflo $2
TAG225:
slt $1, $2, $2
sll $4, $2, 12
bltz $2, TAG226
sw $2, 0($2)
TAG226:
mult $4, $4
lui $3, 1
bgez $3, TAG227
lui $2, 0
TAG227:
bne $2, $2, TAG228
sub $1, $2, $2
sb $1, 0($1)
lui $4, 15
TAG228:
sll $0, $0, 0
bgtz $4, TAG229
sra $2, $4, 1
divu $4, $2
TAG229:
mult $2, $2
sll $0, $0, 0
mflo $1
addiu $1, $1, 9
TAG230:
sra $3, $1, 12
slt $1, $3, $1
mult $3, $1
sltiu $3, $1, 7
TAG231:
lui $1, 3
multu $1, $3
mult $1, $3
lui $3, 2
TAG232:
sll $0, $0, 0
bgez $3, TAG233
mtlo $3
sub $2, $3, $3
TAG233:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG234:
addu $1, $2, $2
sll $4, $1, 2
div $1, $1
div $1, $4
TAG235:
sll $2, $4, 6
subu $3, $2, $2
mflo $2
bne $4, $2, TAG236
TAG236:
mtlo $2
bltz $2, TAG237
mult $2, $2
multu $2, $2
TAG237:
srl $4, $2, 12
bgez $4, TAG238
sw $2, 0($4)
bne $4, $4, TAG238
TAG238:
sh $4, 0($4)
bltz $4, TAG239
mtlo $4
sllv $2, $4, $4
TAG239:
lhu $1, 0($2)
lui $2, 11
bltz $2, TAG240
srav $3, $2, $2
TAG240:
addu $1, $3, $3
sll $0, $0, 0
div $1, $3
bltz $3, TAG241
TAG241:
addiu $2, $1, 15
mflo $4
bltz $1, TAG242
lh $3, 0($4)
TAG242:
xori $2, $3, 15
lbu $2, 0($2)
lhu $2, 0($3)
lb $1, 0($3)
TAG243:
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG244:
lui $3, 15
sltiu $1, $3, 12
nor $3, $3, $2
mult $3, $1
TAG245:
srlv $3, $3, $3
mflo $3
or $3, $3, $3
blez $3, TAG246
TAG246:
mflo $1
bltz $1, TAG247
multu $1, $3
sb $1, 0($1)
TAG247:
add $3, $1, $1
mflo $2
lhu $2, 0($1)
bne $1, $1, TAG248
TAG248:
lbu $1, 0($2)
mfhi $3
sll $3, $1, 2
lui $1, 12
TAG249:
div $1, $1
addiu $3, $1, 15
bgtz $3, TAG250
sll $0, $0, 0
TAG250:
multu $3, $3
slti $3, $3, 14
lhu $3, 0($3)
lhu $2, 0($3)
TAG251:
sh $2, 0($2)
mfhi $4
mthi $2
lui $3, 10
TAG252:
bgez $3, TAG253
sll $0, $0, 0
beq $1, $3, TAG253
mflo $2
TAG253:
mtlo $2
sb $2, 0($2)
lw $1, 0($2)
lui $3, 6
TAG254:
lui $2, 0
bltz $3, TAG255
multu $3, $2
bgtz $3, TAG255
TAG255:
mtlo $2
mult $2, $2
mfhi $2
bne $2, $2, TAG256
TAG256:
lui $4, 13
lui $1, 13
bgez $4, TAG257
mflo $4
TAG257:
multu $4, $4
mtlo $4
blez $4, TAG258
srlv $4, $4, $4
TAG258:
addiu $2, $4, 13
beq $4, $4, TAG259
lui $1, 6
xori $2, $2, 2
TAG259:
bgtz $2, TAG260
sll $2, $2, 13
bgez $2, TAG260
mtlo $2
TAG260:
mflo $4
sll $0, $0, 0
bne $2, $4, TAG261
srav $2, $4, $4
TAG261:
lui $2, 9
div $2, $2
blez $2, TAG262
multu $2, $2
TAG262:
mflo $3
mtlo $2
mult $3, $2
lh $2, 0($3)
TAG263:
lui $1, 9
mflo $3
bne $2, $2, TAG264
sw $1, 0($2)
TAG264:
srl $4, $3, 6
mtlo $4
bne $4, $4, TAG265
sh $3, 0($3)
TAG265:
lhu $1, 0($4)
sb $1, 0($4)
lbu $1, 0($1)
sw $4, 0($4)
TAG266:
mtlo $1
multu $1, $1
mult $1, $1
beq $1, $1, TAG267
TAG267:
lbu $3, 0($1)
subu $2, $1, $1
multu $1, $2
multu $2, $1
TAG268:
lui $1, 12
bne $2, $2, TAG269
mthi $2
lh $2, 0($2)
TAG269:
lhu $4, 0($2)
xor $1, $4, $2
mfhi $2
mtlo $2
TAG270:
add $4, $2, $2
mfhi $2
sltiu $3, $4, 12
lui $4, 1
TAG271:
sll $0, $0, 0
mflo $1
mfhi $1
lui $4, 8
TAG272:
bne $4, $4, TAG273
sll $0, $0, 0
div $4, $4
bgez $4, TAG273
TAG273:
lui $3, 6
sll $2, $4, 14
mfhi $3
addu $1, $3, $2
TAG274:
beq $1, $1, TAG275
lui $1, 0
srl $4, $1, 7
sw $1, 0($4)
TAG275:
mfhi $4
mtlo $4
lh $2, 0($4)
and $2, $4, $4
TAG276:
mtlo $2
mflo $2
lhu $1, 0($2)
sw $2, 0($2)
TAG277:
mthi $1
mult $1, $1
slti $3, $1, 14
slti $1, $1, 15
TAG278:
andi $3, $1, 8
sb $3, 0($3)
lui $2, 12
sllv $1, $1, $1
TAG279:
sh $1, 0($1)
bgtz $1, TAG280
divu $1, $1
mfhi $1
TAG280:
addiu $1, $1, 13
lui $2, 5
srl $2, $1, 6
lh $3, 0($2)
TAG281:
andi $4, $3, 4
sb $4, 0($3)
sb $4, 0($3)
lhu $3, 0($4)
TAG282:
lbu $3, 0($3)
lui $1, 3
and $2, $3, $1
mult $3, $1
TAG283:
mtlo $2
lhu $3, 0($2)
bne $3, $3, TAG284
multu $2, $3
TAG284:
sw $3, 0($3)
beq $3, $3, TAG285
mtlo $3
mflo $4
TAG285:
addu $1, $4, $4
sb $4, 0($1)
addi $1, $1, 13
lui $2, 11
TAG286:
div $2, $2
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
TAG287:
mthi $4
mthi $4
mfhi $2
mfhi $3
TAG288:
lui $3, 6
andi $4, $3, 10
mthi $3
mfhi $2
TAG289:
srl $4, $2, 3
blez $4, TAG290
sll $0, $0, 0
sll $0, $0, 0
TAG290:
slti $2, $3, 1
mthi $2
xor $3, $3, $3
sll $2, $3, 6
TAG291:
beq $2, $2, TAG292
lw $4, 0($2)
bgez $2, TAG292
subu $2, $4, $2
TAG292:
multu $2, $2
and $2, $2, $2
mflo $3
multu $2, $3
TAG293:
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG294:
lui $1, 0
mthi $1
addi $2, $1, 7
sb $2, 0($2)
TAG295:
mfhi $1
andi $1, $2, 4
beq $1, $2, TAG296
srlv $3, $1, $1
TAG296:
lui $3, 11
div $3, $3
sll $0, $0, 0
multu $3, $3
TAG297:
bltz $3, TAG298
lui $1, 14
div $1, $3
sll $0, $0, 0
TAG298:
lui $1, 5
beq $3, $3, TAG299
divu $3, $3
divu $1, $1
TAG299:
blez $1, TAG300
mflo $1
mthi $1
bgez $1, TAG300
TAG300:
slt $2, $1, $1
sb $1, 0($2)
mflo $3
sb $3, 0($1)
TAG301:
mfhi $3
sb $3, 0($3)
beq $3, $3, TAG302
mflo $3
TAG302:
mtlo $3
bne $3, $3, TAG303
sltiu $3, $3, 10
blez $3, TAG303
TAG303:
lbu $3, 0($3)
lui $4, 0
sb $4, 0($4)
div $4, $3
TAG304:
mtlo $4
mflo $3
mult $3, $4
sll $1, $4, 0
TAG305:
lui $4, 7
sh $1, 0($1)
lui $4, 3
mfhi $3
TAG306:
lh $2, 0($3)
mtlo $2
sw $2, 0($3)
ori $2, $3, 2
TAG307:
lhu $3, 0($2)
mfhi $2
bgez $2, TAG308
xori $3, $2, 9
TAG308:
multu $3, $3
mtlo $3
bltz $3, TAG309
and $1, $3, $3
TAG309:
lbu $2, 0($1)
sb $2, 0($1)
lui $3, 5
addiu $2, $1, 8
TAG310:
and $4, $2, $2
mfhi $3
bgtz $2, TAG311
ori $4, $4, 14
TAG311:
sb $4, 0($4)
mthi $4
mult $4, $4
lui $2, 11
TAG312:
sll $0, $0, 0
slti $4, $2, 0
lhu $2, 0($4)
sb $2, 0($2)
TAG313:
beq $2, $2, TAG314
mflo $4
sw $4, 0($4)
lui $1, 10
TAG314:
blez $1, TAG315
mthi $1
ori $1, $1, 11
sltu $2, $1, $1
TAG315:
lui $3, 4
slt $1, $3, $3
mflo $3
multu $2, $1
TAG316:
div $3, $3
mult $3, $3
mfhi $4
mflo $1
TAG317:
sra $4, $1, 1
mthi $4
srav $2, $4, $1
lui $3, 7
TAG318:
blez $3, TAG319
mfhi $3
mflo $3
beq $3, $3, TAG319
TAG319:
sll $0, $0, 0
bne $3, $3, TAG320
mflo $3
mtlo $3
TAG320:
ori $2, $3, 3
beq $2, $2, TAG321
sll $0, $0, 0
mthi $3
TAG321:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG322:
mtlo $3
sltiu $3, $3, 7
sw $3, 0($3)
multu $3, $3
TAG323:
mfhi $4
mtlo $4
beq $4, $4, TAG324
and $3, $4, $3
TAG324:
sll $3, $3, 10
sw $3, 0($3)
ori $3, $3, 13
srav $3, $3, $3
TAG325:
mthi $3
beq $3, $3, TAG326
lw $3, 0($3)
sb $3, 0($3)
TAG326:
sw $3, 0($3)
mthi $3
mult $3, $3
ori $3, $3, 9
TAG327:
mfhi $1
mtlo $1
blez $1, TAG328
lui $2, 8
TAG328:
mfhi $3
div $3, $2
mfhi $4
mthi $2
TAG329:
lhu $2, 0($4)
andi $1, $4, 8
mthi $1
lui $3, 1
TAG330:
sra $3, $3, 5
lui $2, 13
lbu $3, -2048($3)
mult $3, $3
TAG331:
sb $3, 0($3)
mfhi $2
mfhi $3
beq $2, $3, TAG332
TAG332:
mflo $4
mflo $3
lh $4, 0($3)
multu $4, $3
TAG333:
sw $4, 0($4)
lw $4, 0($4)
mfhi $1
bltz $4, TAG334
TAG334:
mthi $1
or $2, $1, $1
bne $2, $1, TAG335
sra $1, $1, 14
TAG335:
sh $1, 0($1)
srlv $3, $1, $1
lhu $1, 0($3)
bltz $1, TAG336
TAG336:
sltiu $1, $1, 11
lbu $4, 0($1)
sb $4, 0($1)
mthi $1
TAG337:
mfhi $4
ori $2, $4, 12
lbu $3, 0($4)
lbu $2, 0($3)
TAG338:
multu $2, $2
or $4, $2, $2
beq $4, $2, TAG339
multu $4, $2
TAG339:
mtlo $4
sb $4, 0($4)
mfhi $1
bne $4, $1, TAG340
TAG340:
mtlo $1
and $2, $1, $1
lui $2, 1
mtlo $2
TAG341:
beq $2, $2, TAG342
sll $0, $0, 0
mthi $2
lui $4, 8
TAG342:
lhu $3, 0($4)
beq $4, $3, TAG343
lui $3, 11
sh $3, 0($3)
TAG343:
bne $3, $3, TAG344
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG344
TAG344:
lui $1, 13
bltz $1, TAG345
srlv $4, $1, $3
mfhi $4
TAG345:
mfhi $4
lui $3, 4
sll $0, $0, 0
sll $0, $0, 0
TAG346:
bltz $3, TAG347
lui $1, 1
mflo $3
beq $3, $3, TAG347
TAG347:
mfhi $2
lb $3, 0($2)
lb $2, 0($3)
sw $3, 0($2)
TAG348:
sw $2, 0($2)
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
TAG349:
divu $2, $2
bgez $2, TAG350
mfhi $1
bltz $2, TAG350
TAG350:
xor $2, $1, $1
sb $2, 0($2)
sb $2, 0($1)
mthi $1
TAG351:
bltz $2, TAG352
sllv $3, $2, $2
sh $2, 0($3)
lui $4, 13
TAG352:
sll $0, $0, 0
mthi $4
mflo $1
sll $0, $0, 0
TAG353:
sb $1, 0($1)
addu $3, $1, $1
lh $1, 0($3)
or $2, $1, $1
TAG354:
beq $2, $2, TAG355
multu $2, $2
srl $1, $2, 1
bltz $1, TAG355
TAG355:
lui $1, 4
subu $4, $1, $1
beq $1, $4, TAG356
mflo $1
TAG356:
andi $4, $1, 9
beq $1, $1, TAG357
lh $1, 0($1)
or $4, $1, $1
TAG357:
sw $4, 0($4)
beq $4, $4, TAG358
addiu $2, $4, 7
bgtz $2, TAG358
TAG358:
mflo $3
lbu $2, 0($2)
mult $2, $3
mflo $2
TAG359:
lw $1, 0($2)
lbu $4, 0($1)
sw $2, 0($4)
mfhi $4
TAG360:
mult $4, $4
mflo $3
mflo $4
blez $3, TAG361
TAG361:
sw $4, 0($4)
or $1, $4, $4
lui $4, 15
xori $2, $4, 9
TAG362:
bltz $2, TAG363
sll $0, $0, 0
mthi $2
sltiu $3, $2, 14
TAG363:
blez $3, TAG364
mthi $3
sllv $2, $3, $3
mflo $2
TAG364:
sll $0, $0, 0
mtlo $2
srl $3, $2, 10
lbu $4, -960($3)
TAG365:
lui $1, 0
sb $4, 0($4)
blez $4, TAG366
mult $4, $4
TAG366:
bne $1, $1, TAG367
nor $3, $1, $1
lbu $3, 1($3)
bgez $3, TAG367
TAG367:
sw $3, 0($3)
bgez $3, TAG368
multu $3, $3
lui $1, 6
TAG368:
sb $1, 0($1)
mtlo $1
mfhi $4
mtlo $4
TAG369:
bltz $4, TAG370
lh $4, 0($4)
addiu $4, $4, 7
lb $4, 0($4)
TAG370:
mfhi $2
beq $2, $4, TAG371
lw $3, 0($2)
mfhi $3
TAG371:
beq $3, $3, TAG372
lb $4, 0($3)
lbu $3, 0($4)
blez $4, TAG372
TAG372:
mthi $3
bne $3, $3, TAG373
slti $1, $3, 10
mtlo $1
TAG373:
nor $3, $1, $1
sw $1, 2($3)
mtlo $3
bgtz $1, TAG374
TAG374:
srl $4, $3, 3
mult $4, $4
multu $3, $3
sw $3, 2($3)
TAG375:
divu $4, $4
mtlo $4
lui $4, 9
blez $4, TAG376
TAG376:
addu $1, $4, $4
ori $1, $4, 10
slti $1, $4, 15
lbu $3, 0($1)
TAG377:
divu $3, $3
sh $3, -254($3)
lui $4, 4
sll $0, $0, 0
TAG378:
lui $3, 14
lui $3, 1
mtlo $4
sll $0, $0, 0
TAG379:
mtlo $3
srl $4, $3, 2
mflo $2
sltiu $2, $2, 6
TAG380:
bgez $2, TAG381
multu $2, $2
lui $4, 7
srav $4, $4, $4
TAG381:
lui $4, 12
addiu $1, $4, 14
beq $4, $1, TAG382
sltiu $2, $1, 12
TAG382:
lui $1, 1
mflo $1
slti $1, $2, 14
sb $1, 0($1)
TAG383:
lui $3, 1
lbu $1, 0($1)
lui $2, 5
lbu $4, 0($1)
TAG384:
xor $3, $4, $4
multu $3, $4
bne $3, $4, TAG385
sll $2, $4, 12
TAG385:
blez $2, TAG386
lb $4, -4096($2)
mtlo $2
sltu $2, $4, $2
TAG386:
bne $2, $2, TAG387
sw $2, 0($2)
multu $2, $2
sb $2, 0($2)
TAG387:
mfhi $1
mtlo $1
multu $2, $1
ori $4, $2, 5
TAG388:
mfhi $4
lbu $1, 0($4)
multu $4, $1
beq $4, $1, TAG389
TAG389:
lui $2, 13
sll $0, $0, 0
slti $2, $1, 12
sb $2, 0($2)
TAG390:
mthi $2
sltu $2, $2, $2
mtlo $2
multu $2, $2
TAG391:
sb $2, 0($2)
sra $4, $2, 15
addiu $2, $4, 11
xor $1, $2, $4
TAG392:
bltz $1, TAG393
sb $1, 0($1)
divu $1, $1
sb $1, 0($1)
TAG393:
sra $1, $1, 0
mfhi $2
lui $3, 4
sltiu $3, $3, 6
TAG394:
mflo $2
addu $2, $2, $3
lui $3, 14
mtlo $3
TAG395:
lui $4, 11
lui $2, 0
bgez $3, TAG396
sll $0, $0, 0
TAG396:
mthi $2
mfhi $4
bne $4, $4, TAG397
mult $2, $4
TAG397:
lui $4, 14
subu $4, $4, $4
lui $2, 13
lui $2, 11
TAG398:
multu $2, $2
mtlo $2
bgtz $2, TAG399
sll $0, $0, 0
TAG399:
mtlo $2
sll $0, $0, 0
and $1, $2, $2
multu $1, $1
TAG400:
bne $1, $1, TAG401
mthi $1
multu $1, $1
sltiu $1, $1, 2
TAG401:
mtlo $1
lui $4, 3
sll $0, $0, 0
slti $4, $1, 10
TAG402:
sb $4, 0($4)
mthi $4
sb $4, 0($4)
mthi $4
TAG403:
lb $2, 0($4)
or $3, $4, $2
bgez $2, TAG404
lui $3, 1
TAG404:
mflo $1
lui $2, 2
xori $3, $3, 4
sll $4, $3, 6
TAG405:
sll $0, $0, 0
mult $1, $4
addu $2, $4, $1
lui $4, 11
TAG406:
bne $4, $4, TAG407
sll $0, $0, 0
lbu $2, 0($1)
and $1, $1, $2
TAG407:
xor $4, $1, $1
srl $2, $4, 9
multu $1, $4
addi $4, $1, 0
TAG408:
sw $4, 0($4)
lh $3, 0($4)
lui $4, 6
sll $0, $0, 0
TAG409:
blez $3, TAG410
mthi $3
sw $3, 0($3)
sw $3, 0($3)
TAG410:
lw $4, 0($3)
mthi $4
lui $2, 14
lhu $1, 0($3)
TAG411:
addu $1, $1, $1
bne $1, $1, TAG412
addi $3, $1, 8
mult $3, $1
TAG412:
lb $3, 0($3)
slti $3, $3, 8
sh $3, 0($3)
lui $1, 13
TAG413:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
beq $1, $2, TAG414
TAG414:
addiu $3, $2, 1
multu $2, $3
bne $2, $3, TAG415
sll $0, $0, 0
TAG415:
sll $0, $0, 0
lui $4, 1
bgtz $4, TAG416
sll $0, $0, 0
TAG416:
blez $4, TAG417
mflo $2
sll $0, $0, 0
mthi $4
TAG417:
sll $0, $0, 0
beq $2, $2, TAG418
mthi $2
lui $3, 10
TAG418:
beq $3, $3, TAG419
div $3, $3
lui $3, 3
lui $4, 8
TAG419:
bgtz $4, TAG420
sll $0, $0, 0
lhu $2, 0($4)
multu $2, $2
TAG420:
sll $0, $0, 0
lui $3, 11
sltiu $4, $2, 6
bgtz $4, TAG421
TAG421:
mult $4, $4
andi $2, $4, 9
lui $3, 14
sra $4, $3, 7
TAG422:
sll $0, $0, 0
lhu $2, -7168($4)
lhu $2, -7168($4)
mult $2, $4
TAG423:
mtlo $2
srl $4, $2, 9
srav $2, $2, $2
mthi $2
TAG424:
lui $1, 6
sll $0, $0, 0
lhu $2, 0($2)
bne $2, $2, TAG425
TAG425:
mflo $3
lui $2, 7
srlv $4, $2, $2
mthi $2
TAG426:
andi $2, $4, 14
blez $4, TAG427
mtlo $2
bgez $2, TAG427
TAG427:
multu $2, $2
andi $4, $2, 2
bltz $4, TAG428
mthi $2
TAG428:
multu $4, $4
nor $4, $4, $4
mtlo $4
lb $3, 1($4)
TAG429:
nor $4, $3, $3
sb $3, 1($4)
mthi $3
mfhi $3
TAG430:
lui $1, 8
nor $3, $1, $1
mtlo $1
lui $3, 12
TAG431:
addiu $4, $3, 15
sll $0, $0, 0
ori $3, $3, 7
bne $3, $3, TAG432
TAG432:
mfhi $1
beq $1, $1, TAG433
mthi $3
ori $3, $1, 3
TAG433:
mfhi $3
sll $0, $0, 0
beq $3, $3, TAG434
mthi $3
TAG434:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
bltz $3, TAG435
TAG435:
lb $3, 0($2)
mfhi $1
lhu $3, 0($1)
lw $1, 0($3)
TAG436:
nor $1, $1, $1
bltz $1, TAG437
sw $1, 1($1)
lh $3, 0($1)
TAG437:
bgtz $3, TAG438
lbu $2, 0($3)
mtlo $3
lui $3, 4
TAG438:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 0
sll $0, $0, 0
TAG439:
blez $1, TAG440
mtlo $1
mflo $3
lhu $3, 0($1)
TAG440:
sll $0, $0, 0
bne $4, $4, TAG441
lui $1, 9
subu $2, $3, $1
TAG441:
sll $0, $0, 0
bne $2, $2, TAG442
mflo $3
blez $3, TAG442
TAG442:
sw $3, 0($3)
addu $3, $3, $3
bne $3, $3, TAG443
addi $4, $3, 5
TAG443:
mtlo $4
mflo $2
bgtz $4, TAG444
mthi $4
TAG444:
ori $3, $2, 12
mfhi $1
div $2, $3
bgez $1, TAG445
TAG445:
mtlo $1
divu $1, $1
sb $1, 0($1)
mfhi $3
TAG446:
mult $3, $3
bne $3, $3, TAG447
sb $3, 0($3)
lui $1, 9
TAG447:
div $1, $1
mthi $1
sll $0, $0, 0
lui $3, 3
TAG448:
addu $2, $3, $3
mflo $1
sb $1, 0($1)
mfhi $2
TAG449:
div $2, $2
mfhi $4
sllv $3, $2, $2
multu $2, $3
TAG450:
slt $2, $3, $3
mflo $3
lui $4, 14
mfhi $4
TAG451:
mflo $2
xori $3, $2, 1
nor $4, $2, $4
mflo $1
TAG452:
bne $1, $1, TAG453
lui $3, 1
lui $3, 4
sll $0, $0, 0
TAG453:
slti $3, $3, 3
lui $4, 8
mfhi $1
addu $1, $1, $3
TAG454:
lui $3, 12
sll $0, $0, 0
mtlo $1
lui $2, 10
TAG455:
mflo $3
mflo $1
bgtz $1, TAG456
srav $1, $3, $3
TAG456:
lw $4, 0($1)
mtlo $1
sllv $4, $1, $1
mtlo $4
TAG457:
sra $1, $4, 8
lb $2, 0($4)
lui $2, 12
mflo $2
TAG458:
multu $2, $2
mfhi $4
sub $1, $2, $4
lb $4, 0($2)
TAG459:
lh $3, 0($4)
sh $4, 0($4)
mtlo $3
beq $3, $4, TAG460
TAG460:
sll $0, $0, 0
addu $3, $3, $3
slt $3, $3, $3
srlv $4, $3, $3
TAG461:
mult $4, $4
mflo $2
mflo $2
addi $1, $4, 15
TAG462:
bgtz $1, TAG463
lb $2, 0($1)
sw $1, 0($1)
mthi $2
TAG463:
addiu $2, $2, 7
blez $2, TAG464
mult $2, $2
srlv $4, $2, $2
TAG464:
bgez $4, TAG465
multu $4, $4
mthi $4
mtlo $4
TAG465:
lui $4, 7
xor $3, $4, $4
beq $3, $4, TAG466
mthi $4
TAG466:
mtlo $3
lhu $1, 0($3)
sll $4, $3, 9
mfhi $4
TAG467:
lui $2, 5
mult $2, $4
sll $0, $0, 0
sll $0, $0, 0
TAG468:
beq $2, $2, TAG469
subu $4, $2, $2
bgez $2, TAG469
sll $1, $4, 14
TAG469:
multu $1, $1
lbu $2, 0($1)
srl $2, $1, 13
beq $2, $1, TAG470
TAG470:
mflo $3
andi $4, $3, 4
mfhi $3
lui $4, 9
TAG471:
xori $4, $4, 12
sltiu $1, $4, 13
lui $1, 11
mfhi $4
TAG472:
mult $4, $4
sb $4, 0($4)
mthi $4
andi $2, $4, 3
TAG473:
mult $2, $2
lh $3, 0($2)
bne $2, $2, TAG474
mflo $2
TAG474:
sh $2, 0($2)
mtlo $2
sh $2, 0($2)
mthi $2
TAG475:
mult $2, $2
mflo $3
lui $1, 13
andi $4, $1, 15
TAG476:
bne $4, $4, TAG477
mthi $4
mult $4, $4
beq $4, $4, TAG477
TAG477:
lhu $4, 0($4)
bne $4, $4, TAG478
sb $4, 0($4)
mflo $1
TAG478:
lhu $4, 0($1)
lh $3, 0($4)
mtlo $4
multu $3, $1
TAG479:
ori $2, $3, 4
nor $2, $2, $3
lui $3, 11
subu $4, $3, $2
TAG480:
beq $4, $4, TAG481
sll $0, $0, 0
sra $4, $2, 2
or $4, $2, $4
TAG481:
mfhi $1
bgez $1, TAG482
mflo $1
lui $2, 2
TAG482:
mfhi $1
mtlo $1
slt $1, $1, $2
mtlo $1
TAG483:
beq $1, $1, TAG484
sllv $4, $1, $1
lui $1, 0
sltu $1, $4, $1
TAG484:
bgtz $1, TAG485
mtlo $1
bne $1, $1, TAG485
multu $1, $1
TAG485:
beq $1, $1, TAG486
nor $2, $1, $1
mflo $3
bne $2, $2, TAG486
TAG486:
subu $4, $3, $3
mtlo $3
subu $1, $4, $3
sll $0, $0, 0
TAG487:
sll $1, $1, 8
lui $4, 12
bne $1, $1, TAG488
multu $4, $4
TAG488:
beq $4, $4, TAG489
sll $0, $0, 0
mflo $3
bne $3, $3, TAG489
TAG489:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG490
TAG490:
addiu $1, $3, 6
sll $0, $0, 0
blez $3, TAG491
mflo $3
TAG491:
mflo $4
mflo $4
mfhi $3
multu $3, $4
TAG492:
mthi $3
lhu $3, -144($3)
multu $3, $3
addi $3, $3, 6
TAG493:
sh $3, 0($3)
bltz $3, TAG494
srl $3, $3, 8
mthi $3
TAG494:
mflo $1
addiu $3, $3, 8
mfhi $3
bne $3, $3, TAG495
TAG495:
mthi $3
bgez $3, TAG496
mfhi $2
sra $4, $3, 10
TAG496:
sh $4, 0($4)
bltz $4, TAG497
sra $1, $4, 12
lui $2, 15
TAG497:
beq $2, $2, TAG498
sll $0, $0, 0
sltu $1, $4, $2
lui $3, 0
TAG498:
mult $3, $3
slti $2, $3, 4
mtlo $3
mfhi $4
TAG499:
mtlo $4
mthi $4
lhu $2, 0($4)
bne $4, $4, TAG500
TAG500:
mfhi $3
mflo $1
beq $1, $3, TAG501
mfhi $3
TAG501:
bne $3, $3, TAG502
mtlo $3
lui $3, 6
beq $3, $3, TAG502
TAG502:
divu $3, $3
sll $0, $0, 0
lui $2, 1
sll $0, $0, 0
TAG503:
beq $2, $2, TAG504
lui $1, 15
beq $2, $1, TAG504
mthi $1
TAG504:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG505
slt $4, $1, $2
TAG505:
or $4, $4, $4
lh $3, 0($4)
sw $4, 0($3)
lui $1, 13
TAG506:
div $1, $1
sll $0, $0, 0
slti $1, $1, 3
srl $3, $1, 13
TAG507:
subu $1, $3, $3
sh $1, 0($3)
sltiu $2, $1, 1
lui $4, 13
TAG508:
sll $0, $0, 0
div $4, $4
bne $4, $4, TAG509
sll $0, $0, 0
TAG509:
multu $2, $2
sb $2, 0($2)
divu $2, $2
ori $2, $2, 5
TAG510:
mult $2, $2
sllv $2, $2, $2
srav $4, $2, $2
beq $4, $2, TAG511
TAG511:
addu $1, $4, $4
addiu $1, $4, 5
lh $2, -165($1)
lui $2, 1
TAG512:
xor $4, $2, $2
lui $2, 14
mflo $2
lui $4, 10
TAG513:
addu $2, $4, $4
srav $1, $2, $4
slt $4, $4, $1
sb $4, 0($4)
TAG514:
lb $2, 0($4)
lui $1, 5
sll $0, $0, 0
lui $4, 9
TAG515:
mthi $4
bne $4, $4, TAG516
mflo $4
lui $3, 8
TAG516:
lui $2, 13
sll $0, $0, 0
lui $1, 3
mtlo $1
TAG517:
mflo $4
mthi $4
beq $1, $4, TAG518
slti $3, $4, 9
TAG518:
nor $3, $3, $3
divu $3, $3
andi $2, $3, 1
lui $3, 12
TAG519:
andi $2, $3, 6
slti $4, $3, 7
lui $2, 5
lui $1, 7
TAG520:
sra $4, $1, 14
slt $2, $4, $1
bgtz $2, TAG521
and $2, $2, $4
TAG521:
sll $4, $2, 2
lh $3, 0($4)
mult $2, $4
mflo $2
TAG522:
multu $2, $2
multu $2, $2
slti $4, $2, 9
mthi $2
TAG523:
addu $1, $4, $4
sb $4, 0($1)
divu $1, $4
addiu $3, $4, 12
TAG524:
bne $3, $3, TAG525
mthi $3
sb $3, 0($3)
slti $3, $3, 5
TAG525:
sh $3, 0($3)
bne $3, $3, TAG526
mthi $3
or $4, $3, $3
TAG526:
beq $4, $4, TAG527
mtlo $4
lbu $1, 0($4)
subu $3, $1, $1
TAG527:
bgtz $3, TAG528
mult $3, $3
lui $3, 15
bltz $3, TAG528
TAG528:
sll $0, $0, 0
mfhi $3
addu $4, $3, $3
bne $4, $3, TAG529
TAG529:
lhu $2, 0($4)
beq $2, $4, TAG530
and $1, $2, $2
sll $1, $4, 15
TAG530:
mult $1, $1
bgez $1, TAG531
mthi $1
bne $1, $1, TAG531
TAG531:
mflo $1
lui $2, 5
lui $2, 14
addiu $2, $1, 4
TAG532:
multu $2, $2
mtlo $2
lui $4, 3
lw $3, 0($2)
TAG533:
mthi $3
andi $4, $3, 4
bgez $3, TAG534
xori $2, $3, 5
TAG534:
div $2, $2
mfhi $3
subu $1, $3, $2
beq $2, $3, TAG535
TAG535:
mfhi $2
addu $4, $1, $2
sltiu $1, $2, 12
beq $4, $2, TAG536
TAG536:
mtlo $1
beq $1, $1, TAG537
addiu $4, $1, 8
lhu $2, 0($1)
TAG537:
mtlo $2
blez $2, TAG538
addu $3, $2, $2
mtlo $3
TAG538:
mtlo $3
blez $3, TAG539
lh $3, 0($3)
sw $3, 0($3)
TAG539:
sh $3, 0($3)
sll $4, $3, 7
sll $3, $4, 14
mtlo $3
TAG540:
blez $3, TAG541
add $2, $3, $3
mfhi $3
lui $2, 0
TAG541:
sw $2, 0($2)
sw $2, 0($2)
bne $2, $2, TAG542
lui $2, 5
TAG542:
bgtz $2, TAG543
sll $0, $0, 0
sltu $2, $2, $2
lhu $3, 0($2)
TAG543:
lui $4, 9
lui $3, 3
mflo $3
mult $4, $3
TAG544:
lui $3, 12
div $3, $3
subu $3, $3, $3
addu $1, $3, $3
TAG545:
lb $1, 0($1)
sh $1, 0($1)
sw $1, 0($1)
sb $1, 0($1)
TAG546:
beq $1, $1, TAG547
lhu $2, 0($1)
blez $2, TAG547
mult $2, $2
TAG547:
lh $2, 0($2)
beq $2, $2, TAG548
sh $2, 0($2)
blez $2, TAG548
TAG548:
lui $3, 10
sll $0, $0, 0
bgtz $3, TAG549
sll $0, $0, 0
TAG549:
bne $3, $3, TAG550
sra $1, $3, 13
lui $3, 3
beq $1, $3, TAG550
TAG550:
mfhi $3
bgtz $3, TAG551
mfhi $1
lui $2, 12
TAG551:
mult $2, $2
beq $2, $2, TAG552
lui $2, 7
lui $2, 8
TAG552:
blez $2, TAG553
divu $2, $2
beq $2, $2, TAG553
srl $2, $2, 9
TAG553:
bne $2, $2, TAG554
sh $2, -896($2)
sll $2, $2, 11
sltu $1, $2, $2
TAG554:
lui $3, 8
blez $3, TAG555
sll $0, $0, 0
multu $3, $1
TAG555:
sra $2, $3, 10
andi $3, $2, 8
ori $3, $3, 1
divu $2, $3
TAG556:
lbu $2, 0($3)
mtlo $3
mtlo $2
bltz $2, TAG557
TAG557:
sb $2, 0($2)
addiu $3, $2, 8
mult $3, $2
mthi $3
TAG558:
bne $3, $3, TAG559
multu $3, $3
mflo $1
ori $3, $3, 1
TAG559:
sllv $1, $3, $3
lb $2, 0($3)
lui $4, 5
subu $3, $3, $1
TAG560:
srl $1, $3, 3
sh $3, 22517($3)
mfhi $4
andi $3, $1, 1
TAG561:
mfhi $3
sw $3, 0($3)
lui $4, 8
lui $2, 2
TAG562:
bltz $2, TAG563
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG563:
sll $1, $4, 3
sll $0, $0, 0
blez $1, TAG564
mfhi $4
TAG564:
srlv $1, $4, $4
mult $1, $1
multu $1, $4
lui $2, 4
TAG565:
sll $0, $0, 0
sll $1, $2, 0
div $2, $2
lui $3, 12
TAG566:
lui $2, 13
lui $2, 14
beq $2, $2, TAG567
lui $2, 12
TAG567:
lui $1, 7
bne $2, $2, TAG568
sll $0, $0, 0
andi $4, $2, 11
TAG568:
beq $4, $4, TAG569
addiu $2, $4, 9
mflo $3
srlv $1, $4, $2
TAG569:
lui $3, 12
lui $3, 3
sllv $3, $3, $3
bne $3, $3, TAG570
TAG570:
sra $3, $3, 4
addiu $1, $3, 6
bne $3, $3, TAG571
addu $3, $3, $3
TAG571:
lui $4, 2
sll $0, $0, 0
mflo $1
mtlo $2
TAG572:
addiu $3, $1, 3
bne $1, $1, TAG573
mfhi $2
mflo $3
TAG573:
mtlo $3
blez $3, TAG574
lbu $2, 0($3)
beq $2, $2, TAG574
TAG574:
lbu $3, 0($2)
beq $2, $2, TAG575
mthi $2
lui $1, 0
TAG575:
divu $1, $1
sra $3, $1, 8
bne $1, $3, TAG576
mtlo $3
TAG576:
bgtz $3, TAG577
sub $2, $3, $3
bgez $2, TAG577
mult $3, $3
TAG577:
lhu $1, 0($2)
bgez $1, TAG578
lui $3, 3
sra $1, $3, 10
TAG578:
addu $1, $1, $1
sll $4, $1, 0
multu $1, $4
mthi $4
TAG579:
lb $3, 0($4)
mtlo $4
beq $3, $3, TAG580
lw $1, 0($3)
TAG580:
bgez $1, TAG581
multu $1, $1
bgtz $1, TAG581
mflo $3
TAG581:
bne $3, $3, TAG582
add $2, $3, $3
lui $4, 13
slti $2, $2, 7
TAG582:
bne $2, $2, TAG583
sltiu $4, $2, 4
lb $2, 0($2)
sb $2, 0($4)
TAG583:
mflo $3
sltu $3, $3, $2
mtlo $2
sb $3, 0($2)
TAG584:
mthi $3
mthi $3
bne $3, $3, TAG585
lbu $2, 0($3)
TAG585:
mult $2, $2
xor $3, $2, $2
lui $3, 0
subu $4, $2, $3
TAG586:
ori $4, $4, 2
srl $2, $4, 10
bgtz $2, TAG587
mflo $1
TAG587:
mult $1, $1
lui $2, 14
mtlo $2
lui $4, 7
TAG588:
sll $0, $0, 0
mfhi $2
beq $4, $2, TAG589
div $4, $4
TAG589:
mult $2, $2
sw $2, 0($2)
mtlo $2
lui $2, 9
TAG590:
mflo $2
lui $2, 12
multu $2, $2
or $3, $2, $2
TAG591:
mfhi $1
bgtz $3, TAG592
mfhi $2
mflo $1
TAG592:
xor $1, $1, $1
sltu $3, $1, $1
mfhi $3
mflo $3
TAG593:
subu $1, $3, $3
lb $2, 0($1)
bne $3, $2, TAG594
addi $1, $3, 7
TAG594:
bltz $1, TAG595
multu $1, $1
sb $1, 0($1)
mtlo $1
TAG595:
sllv $1, $1, $1
srlv $4, $1, $1
mthi $4
mflo $1
TAG596:
subu $2, $1, $1
multu $1, $1
bgtz $1, TAG597
lui $2, 10
TAG597:
mflo $4
mthi $2
sltiu $2, $4, 5
bgez $2, TAG598
TAG598:
lui $3, 0
multu $2, $3
sb $2, 0($3)
lb $1, 0($3)
TAG599:
or $1, $1, $1
lui $1, 2
nor $4, $1, $1
beq $4, $1, TAG600
TAG600:
sll $0, $0, 0
sll $0, $0, 0
nor $2, $4, $4
lui $3, 2
TAG601:
sll $0, $0, 0
mult $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG602:
sll $0, $0, 0
lui $1, 14
mflo $3
sll $0, $0, 0
TAG603:
lui $1, 2
subu $4, $3, $1
bgez $4, TAG604
sll $0, $0, 0
TAG604:
beq $1, $1, TAG605
mtlo $1
sub $1, $1, $1
sltiu $4, $1, 2
TAG605:
mthi $4
addiu $4, $4, 12
bgez $4, TAG606
sll $3, $4, 13
TAG606:
andi $3, $3, 7
mfhi $3
mtlo $3
mflo $1
TAG607:
bgtz $1, TAG608
sll $0, $0, 0
beq $1, $1, TAG608
sll $0, $0, 0
TAG608:
lui $3, 10
bgtz $1, TAG609
mult $3, $3
sllv $4, $1, $1
TAG609:
beq $4, $4, TAG610
sll $0, $0, 0
and $3, $4, $4
lhu $4, 0($3)
TAG610:
sll $0, $0, 0
mthi $4
srl $4, $4, 9
div $4, $4
TAG611:
mfhi $2
mthi $4
xor $3, $4, $2
sll $0, $0, 0
TAG612:
mflo $1
xor $1, $1, $1
mtlo $1
sltu $2, $1, $1
TAG613:
lui $4, 12
subu $2, $2, $2
mfhi $1
ori $2, $2, 11
TAG614:
mtlo $2
mtlo $2
bgtz $2, TAG615
slti $4, $2, 14
TAG615:
div $4, $4
lui $2, 1
sb $2, 0($4)
mthi $4
TAG616:
div $2, $2
srl $4, $2, 10
lui $4, 5
sll $0, $0, 0
TAG617:
bltz $4, TAG618
sllv $3, $4, $4
mflo $2
bne $4, $4, TAG618
TAG618:
srav $1, $2, $2
and $4, $2, $2
lui $2, 10
addiu $4, $2, 9
TAG619:
srlv $4, $4, $4
addu $4, $4, $4
bgtz $4, TAG620
mfhi $2
TAG620:
lui $3, 10
lui $3, 2
bgtz $3, TAG621
mflo $4
TAG621:
bgez $4, TAG622
mflo $3
sltu $1, $4, $4
mflo $1
TAG622:
lui $2, 11
bgtz $2, TAG623
sllv $3, $1, $1
mfhi $3
TAG623:
ori $4, $3, 11
nor $2, $3, $4
sltu $2, $2, $2
mfhi $2
TAG624:
lui $3, 9
mfhi $3
multu $3, $2
bne $2, $2, TAG625
TAG625:
lui $1, 13
mthi $1
sll $0, $0, 0
lui $1, 3
TAG626:
mfhi $3
mfhi $2
mtlo $3
div $3, $2
TAG627:
bgez $2, TAG628
srav $2, $2, $2
lui $4, 1
lh $1, 0($2)
TAG628:
subu $1, $1, $1
multu $1, $1
bne $1, $1, TAG629
lui $3, 12
TAG629:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
subu $4, $3, $3
TAG630:
multu $4, $4
lbu $3, 0($4)
ori $1, $3, 1
addu $2, $1, $3
TAG631:
blez $2, TAG632
lb $4, 0($2)
mflo $3
mflo $4
TAG632:
and $2, $4, $4
lw $3, 0($4)
lui $3, 3
bgtz $4, TAG633
TAG633:
addiu $2, $3, 13
beq $3, $2, TAG634
xor $3, $2, $2
subu $2, $3, $3
TAG634:
subu $2, $2, $2
lhu $4, 0($2)
lui $3, 9
beq $2, $2, TAG635
TAG635:
mflo $2
div $2, $3
mfhi $2
sw $2, 0($2)
TAG636:
mult $2, $2
mult $2, $2
multu $2, $2
beq $2, $2, TAG637
TAG637:
lui $3, 0
lb $3, 0($2)
xori $2, $3, 3
bgez $2, TAG638
TAG638:
andi $2, $2, 12
mthi $2
andi $1, $2, 15
mult $2, $2
TAG639:
mflo $3
lui $3, 7
bne $1, $3, TAG640
mtlo $3
TAG640:
sll $0, $0, 0
nor $2, $1, $1
sh $3, 1($2)
lb $2, 1($2)
TAG641:
lhu $3, 0($2)
blez $3, TAG642
mult $3, $3
sw $2, 0($2)
TAG642:
slt $3, $3, $3
lui $1, 14
sltiu $3, $3, 12
sll $3, $3, 6
TAG643:
sb $3, 0($3)
xori $3, $3, 2
sb $3, 0($3)
bne $3, $3, TAG644
TAG644:
lui $3, 2
multu $3, $3
and $1, $3, $3
lui $1, 4
TAG645:
bltz $1, TAG646
divu $1, $1
lui $1, 15
lui $4, 12
TAG646:
mtlo $4
sll $0, $0, 0
blez $4, TAG647
addiu $3, $4, 12
TAG647:
bne $3, $3, TAG648
multu $3, $3
divu $3, $3
sll $0, $0, 0
TAG648:
lw $1, 0($2)
sb $1, 0($1)
ori $3, $2, 4
or $1, $1, $3
TAG649:
mthi $1
subu $4, $1, $1
mthi $1
mult $1, $1
TAG650:
lhu $1, 0($4)
sb $1, 0($1)
mult $1, $1
mtlo $4
TAG651:
slt $4, $1, $1
bgez $1, TAG652
sw $4, 0($4)
sra $2, $1, 11
TAG652:
sw $2, 0($2)
bgez $2, TAG653
mflo $4
mthi $2
TAG653:
sll $4, $4, 10
sw $4, 0($4)
sw $4, 0($4)
mult $4, $4
TAG654:
mthi $4
mult $4, $4
mthi $4
multu $4, $4
TAG655:
sra $3, $4, 15
mthi $3
blez $3, TAG656
sh $3, 0($4)
TAG656:
subu $1, $3, $3
mfhi $4
sh $1, 0($1)
lb $2, 0($3)
TAG657:
multu $2, $2
mthi $2
beq $2, $2, TAG658
mult $2, $2
TAG658:
subu $1, $2, $2
mult $1, $2
sh $2, 0($2)
sw $2, 0($1)
TAG659:
xor $3, $1, $1
or $3, $3, $1
sb $3, 0($1)
lui $2, 9
TAG660:
lui $4, 11
addu $1, $2, $4
mthi $2
lui $4, 15
TAG661:
mfhi $1
sll $0, $0, 0
div $4, $4
mfhi $1
TAG662:
mult $1, $1
bltz $1, TAG663
addiu $4, $1, 6
multu $4, $4
TAG663:
sh $4, 0($4)
lh $3, 0($4)
sh $4, 0($3)
mtlo $3
TAG664:
divu $3, $3
srav $1, $3, $3
sb $1, 0($1)
mflo $1
TAG665:
andi $4, $1, 12
blez $1, TAG666
mfhi $4
mfhi $4
TAG666:
multu $4, $4
sltu $3, $4, $4
xor $1, $4, $3
multu $3, $4
TAG667:
beq $1, $1, TAG668
nor $1, $1, $1
mult $1, $1
lh $3, 0($1)
TAG668:
mthi $3
mflo $2
lui $4, 6
lui $1, 1
TAG669:
lui $1, 6
bne $1, $1, TAG670
mflo $4
mthi $4
TAG670:
bgtz $4, TAG671
mthi $4
lui $2, 8
addiu $4, $2, 12
TAG671:
andi $2, $4, 9
multu $4, $2
blez $4, TAG672
mult $2, $2
TAG672:
multu $2, $2
beq $2, $2, TAG673
sw $2, 0($2)
blez $2, TAG673
TAG673:
sw $2, 0($2)
mfhi $1
bgtz $2, TAG674
slti $1, $1, 10
TAG674:
addu $2, $1, $1
andi $4, $1, 0
mflo $1
mthi $4
TAG675:
mfhi $3
sltiu $3, $1, 13
bgez $3, TAG676
divu $3, $1
TAG676:
xori $3, $3, 8
beq $3, $3, TAG677
mthi $3
lui $4, 3
TAG677:
sltu $3, $4, $4
lw $1, 0($3)
sb $4, 0($3)
sw $3, 0($4)
TAG678:
mult $1, $1
sb $1, 0($1)
addu $3, $1, $1
mtlo $1
TAG679:
xor $1, $3, $3
sra $1, $1, 0
add $2, $1, $3
multu $3, $1
TAG680:
sb $2, 0($2)
mtlo $2
sh $2, 0($2)
sw $2, 0($2)
TAG681:
srlv $2, $2, $2
lui $1, 15
bne $1, $2, TAG682
srl $2, $2, 14
TAG682:
mfhi $2
mflo $3
sltu $3, $2, $2
sh $2, 0($2)
TAG683:
sh $3, 0($3)
bgez $3, TAG684
mflo $3
lui $1, 14
TAG684:
mflo $1
mthi $1
mult $1, $1
bltz $1, TAG685
TAG685:
multu $1, $1
sb $1, 0($1)
mult $1, $1
addi $2, $1, 3
TAG686:
bgez $2, TAG687
mtlo $2
sltiu $4, $2, 1
lh $2, 0($2)
TAG687:
lui $2, 11
sll $0, $0, 0
sw $2, 0($1)
mthi $2
TAG688:
lhu $2, 0($1)
multu $1, $2
blez $2, TAG689
lhu $4, 0($2)
TAG689:
bgtz $4, TAG690
lw $1, 0($4)
mtlo $4
bne $1, $4, TAG690
TAG690:
mflo $4
lw $3, 0($4)
mfhi $2
lui $3, 10
TAG691:
bltz $3, TAG692
sltu $4, $3, $3
lui $3, 9
sll $0, $0, 0
TAG692:
sll $0, $0, 0
mthi $4
bne $4, $3, TAG693
xor $2, $4, $3
TAG693:
mflo $2
sw $2, 0($2)
lbu $3, 0($2)
lui $2, 1
TAG694:
div $2, $2
sll $0, $0, 0
lui $4, 5
lui $1, 8
TAG695:
lui $2, 9
sll $0, $0, 0
bltz $1, TAG696
mthi $3
TAG696:
sltu $3, $3, $3
lb $2, 0($3)
bgtz $2, TAG697
lw $1, 0($2)
TAG697:
sh $1, 0($1)
mult $1, $1
mfhi $2
lb $4, 0($1)
TAG698:
xori $4, $4, 2
bgez $4, TAG699
slt $3, $4, $4
bltz $4, TAG699
TAG699:
mtlo $3
sw $3, 0($3)
beq $3, $3, TAG700
ori $3, $3, 10
TAG700:
mult $3, $3
beq $3, $3, TAG701
multu $3, $3
mflo $4
TAG701:
mflo $1
sb $1, 0($1)
sllv $1, $4, $4
bltz $4, TAG702
TAG702:
addu $3, $1, $1
mthi $1
subu $3, $1, $1
mtlo $3
TAG703:
sb $3, 0($3)
addu $2, $3, $3
mtlo $3
lhu $1, 0($3)
TAG704:
sra $3, $1, 3
xori $4, $3, 12
divu $3, $4
mult $4, $1
TAG705:
sw $4, 0($4)
sh $4, 0($4)
mflo $3
slt $1, $3, $4
TAG706:
sb $1, 0($1)
mthi $1
bgtz $1, TAG707
mtlo $1
TAG707:
bne $1, $1, TAG708
lui $3, 10
mtlo $1
lui $1, 13
TAG708:
bne $1, $1, TAG709
slt $2, $1, $1
lb $2, 0($2)
lui $4, 13
TAG709:
mflo $2
addiu $1, $2, 3
lui $4, 1
divu $1, $4
TAG710:
sll $0, $0, 0
lb $2, 0($2)
blez $4, TAG711
sll $0, $0, 0
TAG711:
and $2, $4, $4
slti $4, $4, 13
mtlo $2
mtlo $4
TAG712:
beq $4, $4, TAG713
sltiu $3, $4, 11
addiu $1, $3, 10
mflo $4
TAG713:
multu $4, $4
lui $1, 13
sll $0, $0, 0
slt $3, $1, $1
TAG714:
bne $3, $3, TAG715
mult $3, $3
mthi $3
addu $3, $3, $3
TAG715:
bgez $3, TAG716
and $1, $3, $3
mtlo $3
sub $4, $1, $3
TAG716:
bne $4, $4, TAG717
mfhi $2
sltu $2, $4, $4
mtlo $2
TAG717:
multu $2, $2
xori $2, $2, 7
bne $2, $2, TAG718
lb $3, 0($2)
TAG718:
lh $1, 0($3)
mthi $3
mtlo $3
lw $2, -256($1)
TAG719:
mflo $2
mult $2, $2
sh $2, 0($2)
bgtz $2, TAG720
TAG720:
lw $1, 0($2)
sltu $1, $1, $1
sh $1, 0($2)
lui $1, 3
TAG721:
sll $0, $0, 0
mthi $1
div $1, $1
sll $0, $0, 0
TAG722:
lui $1, 3
multu $1, $2
mflo $1
bne $1, $2, TAG723
TAG723:
xori $3, $1, 14
mtlo $3
lui $3, 10
sltu $1, $1, $3
TAG724:
divu $1, $1
nor $2, $1, $1
sltiu $3, $2, 3
lui $2, 8
TAG725:
lui $1, 9
sll $0, $0, 0
mtlo $1
srav $3, $1, $2
TAG726:
bltz $3, TAG727
sll $0, $0, 0
mthi $3
mflo $3
TAG727:
beq $3, $3, TAG728
lui $2, 11
lb $4, 0($2)
mtlo $2
TAG728:
blez $4, TAG729
andi $1, $4, 9
bltz $4, TAG729
mthi $1
TAG729:
mthi $1
lb $3, 0($1)
bne $1, $3, TAG730
subu $1, $1, $3
TAG730:
mflo $4
sll $4, $1, 9
addi $1, $4, 10
srlv $4, $4, $1
TAG731:
lui $2, 6
beq $4, $4, TAG732
sll $0, $0, 0
mflo $4
TAG732:
mfhi $1
sltu $3, $1, $1
blez $3, TAG733
multu $4, $3
TAG733:
mtlo $3
blez $3, TAG734
multu $3, $3
lui $1, 6
TAG734:
lui $4, 3
lui $4, 9
sll $0, $0, 0
multu $3, $3
TAG735:
multu $3, $3
mfhi $1
bgtz $3, TAG736
lbu $1, 0($3)
TAG736:
beq $1, $1, TAG737
mult $1, $1
mflo $1
mtlo $1
TAG737:
beq $1, $1, TAG738
mthi $1
bltz $1, TAG738
mult $1, $1
TAG738:
mult $1, $1
sw $1, 0($1)
bltz $1, TAG739
sh $1, 0($1)
TAG739:
blez $1, TAG740
mflo $4
beq $1, $4, TAG740
divu $1, $1
TAG740:
mthi $4
bltz $4, TAG741
mflo $4
slt $1, $4, $4
TAG741:
lh $3, 0($1)
beq $1, $1, TAG742
mult $1, $3
sh $3, 0($3)
TAG742:
lui $3, 14
lui $3, 5
lui $1, 9
addiu $3, $1, 9
TAG743:
mtlo $3
addiu $1, $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG744:
bne $1, $1, TAG745
sll $0, $0, 0
lui $4, 11
or $2, $1, $4
TAG745:
divu $2, $2
sll $0, $0, 0
mtlo $1
srlv $2, $2, $1
TAG746:
addiu $1, $2, 15
bne $2, $1, TAG747
mflo $1
mthi $1
TAG747:
srl $4, $1, 15
addiu $2, $4, 6
div $4, $4
lui $3, 11
TAG748:
sll $0, $0, 0
mthi $3
lui $4, 9
bgtz $4, TAG749
TAG749:
ori $2, $4, 6
bne $2, $2, TAG750
lui $3, 13
lui $3, 6
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop