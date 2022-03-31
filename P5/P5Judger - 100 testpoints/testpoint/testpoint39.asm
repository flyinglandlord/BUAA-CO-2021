ori $1, $0, 10
ori $2, $0, 0
ori $3, $0, 8
ori $4, $0, 15
sw $1, 0($0)
sw $1, 4($0)
sw $3, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $3, 36($0)
sw $4, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $2, 120($0)
sw $1, 124($0)
blez $2, TAG1
mfhi $1
mtlo $1
mflo $3
TAG1:
beq $3, $3, TAG2
mfhi $3
lw $3, 0($3)
bgez $3, TAG2
TAG2:
mult $3, $3
addiu $4, $3, 4
lui $3, 12
beq $4, $4, TAG3
TAG3:
srl $4, $3, 0
addiu $2, $3, 15
beq $3, $3, TAG4
multu $4, $2
TAG4:
bne $2, $2, TAG5
lui $4, 14
ori $2, $2, 3
sll $1, $2, 12
TAG5:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
blez $1, TAG6
TAG6:
xori $2, $3, 11
div $2, $3
multu $2, $3
nor $2, $2, $2
TAG7:
mthi $2
sltiu $2, $2, 3
mfhi $2
blez $2, TAG8
TAG8:
lui $2, 7
sll $0, $0, 0
div $1, $1
lui $2, 8
TAG9:
ori $4, $2, 0
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
TAG10:
nor $1, $2, $2
bgez $2, TAG11
mflo $4
mtlo $1
TAG11:
mtlo $4
mtlo $4
bltz $4, TAG12
lui $4, 5
TAG12:
bne $4, $4, TAG13
mfhi $4
addiu $1, $4, 1
sll $1, $4, 9
TAG13:
bgez $1, TAG14
sb $1, 0($1)
bltz $1, TAG14
addiu $2, $1, 7
TAG14:
sll $0, $0, 0
sll $4, $2, 3
bne $2, $2, TAG15
sll $0, $0, 0
TAG15:
lui $1, 0
xor $4, $4, $4
mtlo $4
lui $4, 2
TAG16:
bne $4, $4, TAG17
lui $3, 15
mthi $3
sra $1, $4, 8
TAG17:
mthi $1
mflo $4
lui $4, 10
divu $1, $4
TAG18:
lui $4, 0
lbu $1, 0($4)
mflo $2
mflo $2
TAG19:
mthi $2
lui $2, 4
sll $4, $2, 5
bne $2, $4, TAG20
TAG20:
lui $1, 4
mthi $1
bgtz $4, TAG21
mthi $1
TAG21:
lui $3, 2
mthi $1
mthi $1
mfhi $1
TAG22:
mflo $1
sltiu $3, $1, 2
sb $1, 0($1)
multu $3, $1
TAG23:
sb $3, 0($3)
sb $3, 0($3)
sb $3, 0($3)
blez $3, TAG24
TAG24:
lbu $1, 0($3)
lui $3, 3
multu $1, $1
lui $2, 13
TAG25:
lui $4, 0
bltz $4, TAG26
mtlo $4
lui $3, 8
TAG26:
nor $2, $3, $3
bltz $2, TAG27
sll $2, $2, 10
sb $3, 0($2)
TAG27:
multu $2, $2
bne $2, $2, TAG28
sll $0, $0, 0
mthi $3
TAG28:
beq $3, $3, TAG29
mtlo $3
mult $3, $3
sltiu $3, $3, 3
TAG29:
beq $3, $3, TAG30
mflo $4
sh $4, 0($4)
mflo $4
TAG30:
divu $4, $4
bltz $4, TAG31
sll $0, $0, 0
lui $3, 11
TAG31:
mtlo $3
slt $4, $3, $3
lui $1, 2
addiu $2, $1, 13
TAG32:
lui $3, 12
bne $3, $2, TAG33
srl $4, $2, 12
lbu $4, 0($2)
TAG33:
nor $1, $4, $4
bne $4, $4, TAG34
mflo $4
mfhi $3
TAG34:
sltiu $3, $3, 14
mtlo $3
sll $4, $3, 8
div $4, $4
TAG35:
div $4, $4
mtlo $4
divu $4, $4
mfhi $3
TAG36:
lui $1, 10
sra $3, $1, 14
mthi $3
srlv $3, $3, $3
TAG37:
sra $4, $3, 9
mflo $1
mthi $4
beq $3, $3, TAG38
TAG38:
lui $3, 4
sll $0, $0, 0
mult $1, $3
lui $1, 4
TAG39:
sll $0, $0, 0
sll $0, $0, 0
andi $3, $1, 10
lui $1, 1
TAG40:
beq $1, $1, TAG41
sll $0, $0, 0
mflo $1
bgtz $1, TAG41
TAG41:
mthi $1
sll $0, $0, 0
andi $1, $1, 4
lw $2, 0($1)
TAG42:
div $2, $2
divu $2, $2
addiu $1, $2, 5
lw $2, -256($2)
TAG43:
srl $4, $2, 13
mfhi $2
mflo $1
lui $3, 1
TAG44:
mflo $1
ori $3, $3, 0
xor $3, $3, $3
multu $1, $1
TAG45:
mtlo $3
mthi $3
lui $3, 2
beq $3, $3, TAG46
TAG46:
multu $3, $3
div $3, $3
lui $4, 13
divu $3, $3
TAG47:
lui $3, 4
blez $4, TAG48
divu $3, $4
addiu $4, $3, 7
TAG48:
mult $4, $4
sll $0, $0, 0
mtlo $2
addu $1, $4, $2
TAG49:
bne $1, $1, TAG50
mtlo $1
lui $1, 8
multu $1, $1
TAG50:
lui $4, 3
divu $4, $1
lui $3, 11
multu $4, $1
TAG51:
sll $0, $0, 0
mtlo $3
sra $4, $3, 2
srl $4, $3, 0
TAG52:
subu $3, $4, $4
blez $4, TAG53
mthi $3
lui $3, 12
TAG53:
mtlo $3
mthi $3
slt $2, $3, $3
xori $3, $3, 2
TAG54:
sll $0, $0, 0
sll $0, $0, 0
addu $2, $3, $3
beq $4, $3, TAG55
TAG55:
mtlo $2
addiu $4, $2, 2
beq $2, $2, TAG56
mflo $4
TAG56:
sll $0, $0, 0
beq $4, $4, TAG57
divu $4, $4
slti $3, $4, 10
TAG57:
sll $1, $3, 8
sll $0, $0, 0
lui $3, 6
lui $3, 12
TAG58:
div $3, $3
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG59:
mthi $2
bgtz $2, TAG60
mflo $1
mtlo $2
TAG60:
sltu $3, $1, $1
srl $4, $1, 14
lbu $3, 0($1)
lui $3, 6
TAG61:
mtlo $3
mflo $1
blez $3, TAG62
xori $2, $3, 7
TAG62:
lui $3, 1
sll $0, $0, 0
lui $1, 6
bne $1, $1, TAG63
TAG63:
mthi $1
bgez $1, TAG64
xori $4, $1, 2
sra $1, $4, 5
TAG64:
sll $0, $0, 0
xor $1, $1, $1
bgtz $4, TAG65
multu $4, $4
TAG65:
bgtz $1, TAG66
mthi $1
lui $3, 0
bltz $1, TAG66
TAG66:
addi $3, $3, 13
bltz $3, TAG67
mtlo $3
addu $3, $3, $3
TAG67:
xor $4, $3, $3
blez $4, TAG68
multu $3, $4
lbu $4, 0($4)
TAG68:
lui $1, 13
mflo $2
sb $2, 0($2)
lui $3, 4
TAG69:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
subu $3, $3, $3
TAG70:
bne $3, $3, TAG71
mult $3, $3
andi $3, $3, 10
lbu $2, 0($3)
TAG71:
mult $2, $2
addu $2, $2, $2
sw $2, 0($2)
mtlo $2
TAG72:
multu $2, $2
mthi $2
mfhi $2
addu $2, $2, $2
TAG73:
blez $2, TAG74
mult $2, $2
mflo $2
div $2, $2
TAG74:
srav $3, $2, $2
mthi $3
beq $3, $2, TAG75
sllv $1, $2, $2
TAG75:
slti $3, $1, 11
mtlo $1
mflo $3
xor $4, $3, $3
TAG76:
subu $1, $4, $4
blez $1, TAG77
ori $3, $1, 1
div $3, $3
TAG77:
bne $3, $3, TAG78
sb $3, 0($3)
mtlo $3
mflo $1
TAG78:
beq $1, $1, TAG79
lbu $3, 0($1)
mflo $2
sb $3, 0($3)
TAG79:
lb $1, 0($2)
lui $4, 11
multu $4, $1
mflo $2
TAG80:
lbu $2, 0($2)
lhu $3, 0($2)
sll $1, $2, 13
addiu $2, $3, 11
TAG81:
andi $3, $2, 9
xori $3, $2, 1
mfhi $1
mfhi $3
TAG82:
sb $3, 0($3)
srlv $1, $3, $3
lui $4, 6
sll $0, $0, 0
TAG83:
bgez $4, TAG84
sll $0, $0, 0
bgez $4, TAG84
sh $4, 0($4)
TAG84:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 2
mthi $4
TAG85:
andi $3, $4, 9
beq $3, $4, TAG86
lui $3, 14
sll $0, $0, 0
TAG86:
bne $4, $4, TAG87
sll $0, $0, 0
sll $0, $0, 0
mult $4, $2
TAG87:
mthi $2
bne $2, $2, TAG88
lb $3, -267($2)
lui $1, 0
TAG88:
multu $1, $1
lui $3, 12
mflo $3
sllv $2, $1, $1
TAG89:
multu $2, $2
blez $2, TAG90
mflo $4
bgez $4, TAG90
TAG90:
sll $2, $4, 12
lui $1, 0
lb $2, 0($2)
srav $4, $1, $2
TAG91:
srl $1, $4, 13
and $4, $4, $1
bltz $4, TAG92
lui $3, 6
TAG92:
div $3, $3
mflo $4
lui $1, 2
mthi $3
TAG93:
bgtz $1, TAG94
mtlo $1
mfhi $4
mult $4, $1
TAG94:
mthi $4
lbu $4, 0($4)
lui $4, 13
mult $4, $4
TAG95:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG96
sll $0, $0, 0
TAG96:
sll $0, $0, 0
lui $1, 15
sll $0, $0, 0
ori $1, $4, 5
TAG97:
xori $1, $1, 6
beq $1, $1, TAG98
lui $3, 10
addu $1, $1, $1
TAG98:
lui $2, 3
bne $1, $2, TAG99
sll $0, $0, 0
beq $2, $4, TAG99
TAG99:
lui $2, 7
sll $0, $0, 0
bgez $2, TAG100
sltiu $3, $4, 14
TAG100:
sub $3, $3, $3
mtlo $3
mult $3, $3
multu $3, $3
TAG101:
mthi $3
mfhi $2
mult $3, $2
mult $3, $3
TAG102:
slti $3, $2, 11
bgez $3, TAG103
ori $2, $2, 5
mult $3, $2
TAG103:
nor $1, $2, $2
addiu $1, $1, 4
xori $3, $2, 12
mtlo $2
TAG104:
subu $2, $3, $3
sb $3, 0($3)
lw $1, 0($2)
slt $2, $3, $1
TAG105:
xori $2, $2, 6
mflo $2
mfhi $4
sb $2, 0($2)
TAG106:
mthi $4
mtlo $4
multu $4, $4
lh $3, 0($4)
TAG107:
andi $4, $3, 1
sb $4, -256($3)
lb $2, 0($4)
bltz $3, TAG108
TAG108:
andi $2, $2, 11
sh $2, 0($2)
bne $2, $2, TAG109
lhu $4, 0($2)
TAG109:
beq $4, $4, TAG110
multu $4, $4
bgtz $4, TAG110
mfhi $3
TAG110:
srav $2, $3, $3
lui $1, 4
sh $1, -256($3)
sll $0, $0, 0
TAG111:
slt $2, $3, $3
addiu $4, $3, 15
bgtz $2, TAG112
mult $3, $3
TAG112:
bgtz $4, TAG113
sltu $3, $4, $4
lbu $2, 0($3)
srav $4, $2, $3
TAG113:
sll $0, $0, 0
addi $2, $2, 5
slti $4, $2, 5
bgez $4, TAG114
TAG114:
mfhi $1
lbu $3, 0($4)
lui $1, 14
mtlo $4
TAG115:
mflo $1
beq $1, $1, TAG116
sw $1, 0($1)
mthi $1
TAG116:
multu $1, $1
mthi $1
beq $1, $1, TAG117
mult $1, $1
TAG117:
beq $1, $1, TAG118
addi $3, $1, 1
mthi $3
and $4, $1, $3
TAG118:
andi $2, $4, 13
mtlo $4
mtlo $2
mfhi $3
TAG119:
nor $1, $3, $3
lhu $3, 1($1)
multu $3, $3
beq $3, $3, TAG120
TAG120:
mflo $3
mtlo $3
blez $3, TAG121
sra $3, $3, 11
TAG121:
addi $4, $3, 12
div $4, $4
bgez $4, TAG122
mfhi $4
TAG122:
sra $1, $4, 4
mult $1, $4
lw $3, 0($4)
slti $4, $4, 12
TAG123:
lbu $2, 0($4)
sw $4, 0($2)
mfhi $2
ori $3, $2, 2
TAG124:
bne $3, $3, TAG125
mfhi $4
addu $4, $4, $4
bgtz $3, TAG125
TAG125:
mthi $4
sb $4, 0($4)
lh $2, 0($4)
lui $4, 0
TAG126:
bne $4, $4, TAG127
and $2, $4, $4
mflo $2
addu $4, $2, $2
TAG127:
lui $4, 12
slt $3, $4, $4
sll $0, $0, 0
lui $1, 0
TAG128:
lw $4, 0($1)
lh $4, 0($4)
bgez $4, TAG129
srl $1, $4, 10
TAG129:
ori $4, $1, 8
or $2, $4, $1
mult $4, $1
multu $2, $4
TAG130:
xori $4, $2, 11
bne $4, $4, TAG131
mtlo $4
mthi $2
TAG131:
multu $4, $4
mflo $2
mult $4, $4
andi $2, $2, 11
TAG132:
mfhi $1
sltu $1, $2, $2
sw $1, 0($1)
bgez $1, TAG133
TAG133:
mtlo $1
mthi $1
mflo $3
bgtz $3, TAG134
TAG134:
add $3, $3, $3
bltz $3, TAG135
slti $4, $3, 3
mthi $4
TAG135:
mtlo $4
mfhi $1
slti $4, $4, 11
blez $4, TAG136
TAG136:
sltiu $1, $4, 2
mflo $2
addiu $1, $2, 4
mtlo $4
TAG137:
lui $1, 3
sra $2, $1, 10
multu $1, $1
and $1, $2, $1
TAG138:
mflo $1
mflo $2
mult $1, $2
lb $2, 0($1)
TAG139:
lui $4, 12
bgtz $4, TAG140
mflo $4
mthi $4
TAG140:
addiu $2, $4, 15
lui $1, 13
sll $0, $0, 0
mfhi $4
TAG141:
slt $4, $4, $4
sb $4, 0($4)
multu $4, $4
lbu $2, 0($4)
TAG142:
addi $3, $2, 2
addi $2, $2, 10
slt $4, $3, $2
sh $2, 0($2)
TAG143:
mtlo $4
lui $3, 11
sb $4, 0($4)
addiu $3, $4, 1
TAG144:
beq $3, $3, TAG145
lhu $3, 0($3)
multu $3, $3
sltu $4, $3, $3
TAG145:
bltz $4, TAG146
sb $4, 0($4)
beq $4, $4, TAG146
mflo $2
TAG146:
lbu $2, 0($2)
bne $2, $2, TAG147
mthi $2
sb $2, 0($2)
TAG147:
addu $3, $2, $2
lh $2, 0($3)
mfhi $1
lui $4, 3
TAG148:
mthi $4
lui $4, 7
mflo $1
sll $0, $0, 0
TAG149:
mflo $2
lui $3, 1
blez $1, TAG150
multu $3, $3
TAG150:
xori $3, $3, 6
bgtz $3, TAG151
mfhi $2
mult $3, $2
TAG151:
lb $1, 0($2)
beq $2, $1, TAG152
div $1, $2
bltz $1, TAG152
TAG152:
sltu $1, $1, $1
lw $1, 0($1)
multu $1, $1
sra $4, $1, 4
TAG153:
lw $2, 0($4)
sh $2, 0($4)
ori $2, $4, 7
lui $2, 6
TAG154:
mthi $2
subu $2, $2, $2
bgez $2, TAG155
lui $1, 13
TAG155:
bne $1, $1, TAG156
mthi $1
sll $0, $0, 0
or $3, $1, $1
TAG156:
sllv $4, $3, $3
div $3, $4
mtlo $4
lui $1, 6
TAG157:
xori $1, $1, 5
blez $1, TAG158
sll $0, $0, 0
div $1, $1
TAG158:
mflo $4
andi $1, $4, 11
mthi $4
mthi $4
TAG159:
bltz $1, TAG160
mfhi $1
nor $1, $1, $1
mthi $1
TAG160:
lui $2, 3
lui $2, 6
lui $3, 6
mtlo $2
TAG161:
blez $3, TAG162
sll $0, $0, 0
sll $0, $0, 0
multu $3, $1
TAG162:
xor $4, $1, $1
subu $2, $4, $1
mthi $1
mflo $1
TAG163:
sll $4, $1, 8
beq $4, $4, TAG164
mfhi $2
lhu $2, 0($4)
TAG164:
bne $2, $2, TAG165
mtlo $2
lh $3, 2($2)
mflo $1
TAG165:
lui $1, 7
lui $3, 3
sll $0, $0, 0
xor $1, $3, $3
TAG166:
lui $1, 4
lui $2, 13
mthi $2
lui $2, 4
TAG167:
blez $2, TAG168
divu $2, $2
lui $2, 9
addu $1, $2, $2
TAG168:
sll $0, $0, 0
bgez $1, TAG169
sll $0, $0, 0
beq $1, $1, TAG169
TAG169:
sll $0, $0, 0
sltu $2, $1, $1
sll $3, $1, 3
sll $0, $0, 0
TAG170:
mthi $3
sll $0, $0, 0
bltz $3, TAG171
sll $0, $0, 0
TAG171:
sll $0, $0, 0
mtlo $1
lui $2, 11
div $3, $2
TAG172:
sll $0, $0, 0
lui $3, 12
sll $0, $0, 0
mflo $3
TAG173:
mthi $3
sb $3, 0($3)
mfhi $3
sb $3, 0($3)
TAG174:
multu $3, $3
div $3, $3
bltz $3, TAG175
lui $3, 4
TAG175:
mflo $1
sb $1, 0($1)
andi $3, $3, 13
lui $1, 1
TAG176:
mflo $1
mfhi $2
sh $1, 0($2)
lui $1, 0
TAG177:
sltu $3, $1, $1
nor $2, $3, $3
mthi $2
sllv $1, $3, $2
TAG178:
bne $1, $1, TAG179
lb $1, 0($1)
mtlo $1
sb $1, 0($1)
TAG179:
lui $4, 6
addiu $1, $4, 14
sll $0, $0, 0
sll $0, $0, 0
TAG180:
sra $4, $1, 1
xori $3, $1, 4
xori $2, $1, 6
blez $2, TAG181
TAG181:
sll $0, $0, 0
beq $2, $2, TAG182
addu $1, $2, $2
bltz $1, TAG182
TAG182:
slti $4, $1, 5
srl $4, $4, 13
lbu $3, 0($4)
mthi $3
TAG183:
bne $3, $3, TAG184
sllv $4, $3, $3
mthi $4
sb $3, 0($3)
TAG184:
mtlo $4
multu $4, $4
mthi $4
bgtz $4, TAG185
TAG185:
addu $4, $4, $4
mult $4, $4
sw $4, 0($4)
sb $4, 0($4)
TAG186:
mfhi $3
mthi $3
sb $3, 0($3)
bgez $4, TAG187
TAG187:
lui $4, 0
lui $1, 15
beq $1, $3, TAG188
lw $4, 0($4)
TAG188:
bltz $4, TAG189
sw $4, -256($4)
mult $4, $4
mthi $4
TAG189:
sll $0, $0, 0
sw $4, -256($4)
sltu $3, $4, $4
sltiu $4, $3, 12
TAG190:
lui $3, 2
xori $4, $3, 3
sll $0, $0, 0
bgtz $4, TAG191
TAG191:
sll $0, $0, 0
bgez $2, TAG192
sltiu $2, $2, 15
addu $3, $2, $2
TAG192:
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG193
lui $4, 10
TAG193:
mthi $4
sll $0, $0, 0
ori $3, $2, 11
mthi $2
TAG194:
nor $4, $3, $3
mfhi $2
mthi $2
sb $2, 0($2)
TAG195:
lui $3, 11
lbu $2, 0($2)
mtlo $3
slti $4, $3, 8
TAG196:
bne $4, $4, TAG197
mfhi $2
sb $4, 0($4)
mult $4, $2
TAG197:
multu $2, $2
lh $4, 0($2)
divu $2, $4
bltz $4, TAG198
TAG198:
sll $0, $0, 0
mult $4, $1
blez $1, TAG199
ori $4, $4, 8
TAG199:
div $4, $4
mthi $4
lui $1, 2
lw $2, -264($4)
TAG200:
sll $0, $0, 0
sw $2, -256($2)
sll $0, $0, 0
beq $2, $2, TAG201
TAG201:
mfhi $4
mult $2, $2
lw $2, -256($2)
bgtz $2, TAG202
TAG202:
sll $0, $0, 0
mthi $2
nor $3, $2, $3
sll $0, $0, 0
TAG203:
multu $4, $4
blez $4, TAG204
divu $4, $4
lui $3, 15
TAG204:
addiu $4, $3, 7
lui $3, 2
divu $3, $4
beq $3, $4, TAG205
TAG205:
mult $3, $3
lui $4, 1
sll $0, $0, 0
lui $4, 9
TAG206:
sll $0, $0, 0
mflo $2
lb $3, 0($2)
mflo $4
TAG207:
sra $3, $4, 1
andi $3, $3, 13
beq $3, $3, TAG208
mfhi $3
TAG208:
sra $4, $3, 5
sltiu $2, $3, 8
slt $2, $4, $4
beq $4, $4, TAG209
TAG209:
sb $2, 0($2)
addi $1, $2, 7
multu $1, $2
beq $1, $2, TAG210
TAG210:
lb $2, 0($1)
sll $1, $2, 2
lui $2, 7
mult $2, $1
TAG211:
divu $2, $2
lui $4, 10
bgtz $4, TAG212
sll $0, $0, 0
TAG212:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG213
lui $2, 12
TAG213:
bgtz $2, TAG214
nor $2, $2, $2
blez $2, TAG214
lui $1, 11
TAG214:
bgtz $1, TAG215
lui $4, 4
sll $0, $0, 0
sll $4, $4, 15
TAG215:
bgez $4, TAG216
sw $4, 0($4)
mult $4, $4
mfhi $1
TAG216:
lui $2, 2
bne $2, $1, TAG217
sll $0, $0, 0
blez $2, TAG217
TAG217:
lui $3, 5
sll $0, $0, 0
sll $4, $3, 15
sll $0, $0, 0
TAG218:
mult $4, $4
beq $4, $4, TAG219
subu $2, $4, $4
sh $2, 0($4)
TAG219:
lb $4, 0($2)
lw $4, 0($2)
lbu $2, 0($2)
sub $1, $4, $2
TAG220:
lui $3, 12
addiu $4, $3, 7
mthi $4
sllv $1, $3, $4
TAG221:
mflo $4
lui $3, 2
subu $1, $3, $1
beq $3, $1, TAG222
TAG222:
lui $2, 2
multu $1, $1
mult $1, $1
div $1, $2
TAG223:
mthi $2
bltz $2, TAG224
sll $0, $0, 0
mtlo $2
TAG224:
andi $3, $2, 13
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG225:
mult $1, $1
divu $1, $1
mflo $2
lui $4, 4
TAG226:
blez $4, TAG227
mfhi $4
multu $4, $4
slti $3, $4, 12
TAG227:
mfhi $3
blez $3, TAG228
lui $1, 10
xor $1, $3, $3
TAG228:
mthi $1
mfhi $4
divu $4, $4
lui $1, 7
TAG229:
bne $1, $1, TAG230
lui $3, 8
lui $2, 3
sll $0, $0, 0
TAG230:
lui $3, 13
sll $0, $0, 0
mflo $4
div $4, $1
TAG231:
mflo $4
lhu $3, 0($4)
mult $3, $3
mthi $3
TAG232:
sra $1, $3, 0
mult $3, $1
lb $2, 0($1)
lb $1, 0($3)
TAG233:
bne $1, $1, TAG234
sb $1, 0($1)
lb $4, 0($1)
mfhi $3
TAG234:
beq $3, $3, TAG235
lui $2, 5
srl $1, $2, 3
multu $1, $1
TAG235:
mthi $1
multu $1, $1
lui $1, 8
mfhi $3
TAG236:
mfhi $1
lbu $2, 0($3)
beq $2, $2, TAG237
sh $2, 0($1)
TAG237:
mtlo $2
multu $2, $2
mtlo $2
add $4, $2, $2
TAG238:
lui $1, 11
bgez $4, TAG239
mfhi $2
mtlo $4
TAG239:
blez $2, TAG240
lb $3, 0($2)
lw $1, 0($3)
lui $1, 15
TAG240:
blez $1, TAG241
mthi $1
srav $2, $1, $1
mthi $2
TAG241:
sll $0, $0, 0
bne $4, $4, TAG242
mflo $3
bltz $2, TAG242
TAG242:
mflo $1
lui $2, 1
multu $3, $2
mtlo $3
TAG243:
srl $2, $2, 14
subu $4, $2, $2
mflo $1
mfhi $2
TAG244:
bne $2, $2, TAG245
nor $4, $2, $2
lui $1, 14
nor $3, $4, $1
TAG245:
lui $1, 3
sll $4, $1, 11
lui $1, 5
sll $0, $0, 0
TAG246:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG247
mthi $1
TAG247:
sllv $4, $1, $1
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG248:
bgtz $1, TAG249
sltu $3, $1, $1
mthi $1
slt $1, $3, $1
TAG249:
sll $1, $1, 6
andi $4, $1, 7
divu $1, $1
beq $1, $1, TAG250
TAG250:
subu $4, $4, $4
srav $2, $4, $4
lbu $4, 0($4)
bne $4, $4, TAG251
TAG251:
sh $4, 0($4)
mult $4, $4
bgtz $4, TAG252
lbu $4, 0($4)
TAG252:
mthi $4
lui $3, 1
sll $1, $4, 1
mfhi $3
TAG253:
mtlo $3
beq $3, $3, TAG254
mthi $3
sb $3, 0($3)
TAG254:
lh $4, 0($3)
or $3, $4, $3
multu $4, $3
sh $3, 0($3)
TAG255:
multu $3, $3
sb $3, 0($3)
mult $3, $3
beq $3, $3, TAG256
TAG256:
mtlo $3
mflo $3
mfhi $4
lh $1, 0($3)
TAG257:
mtlo $1
lh $2, 0($1)
sb $2, 0($1)
sra $2, $2, 5
TAG258:
lui $4, 14
sh $4, 0($2)
mfhi $4
lui $4, 1
TAG259:
bltz $4, TAG260
sll $0, $0, 0
mflo $4
mfhi $4
TAG260:
sw $4, 0($4)
lui $4, 0
nor $1, $4, $4
mult $4, $4
TAG261:
sb $1, 1($1)
sll $3, $1, 3
mtlo $3
div $1, $1
TAG262:
bgez $3, TAG263
lh $1, 8($3)
lw $4, -255($1)
mult $4, $3
TAG263:
bne $4, $4, TAG264
mfhi $4
sltu $4, $4, $4
multu $4, $4
TAG264:
srl $2, $4, 3
beq $4, $4, TAG265
multu $4, $2
bgtz $2, TAG265
TAG265:
mfhi $4
mfhi $3
lb $4, 0($4)
srl $4, $4, 15
TAG266:
multu $4, $4
divu $4, $4
and $2, $4, $4
bne $4, $4, TAG267
TAG267:
div $2, $2
mtlo $2
bltz $2, TAG268
sll $0, $0, 0
TAG268:
sh $3, 0($3)
mtlo $3
sra $1, $3, 0
blez $3, TAG269
TAG269:
sw $1, 0($1)
lui $3, 10
lui $4, 0
sltu $1, $1, $4
TAG270:
lb $1, 0($1)
sll $4, $1, 8
mthi $1
lbu $2, 0($1)
TAG271:
andi $3, $2, 2
mult $3, $3
lui $1, 13
sll $0, $0, 0
TAG272:
mflo $4
sll $3, $1, 14
beq $3, $1, TAG273
lui $4, 4
TAG273:
sll $0, $0, 0
beq $4, $4, TAG274
addu $2, $4, $4
mfhi $3
TAG274:
addu $2, $3, $3
beq $3, $3, TAG275
mthi $2
add $3, $3, $2
TAG275:
lui $2, 11
mthi $2
bne $2, $2, TAG276
sll $0, $0, 0
TAG276:
multu $2, $2
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
TAG277:
mfhi $1
div $1, $1
divu $4, $1
mthi $1
TAG278:
bne $1, $1, TAG279
lw $1, 0($1)
mthi $1
blez $1, TAG279
TAG279:
and $4, $1, $1
bne $4, $4, TAG280
sh $4, 0($4)
divu $1, $4
TAG280:
slti $2, $4, 12
lb $2, 0($4)
subu $2, $4, $4
multu $2, $2
TAG281:
beq $2, $2, TAG282
sw $2, 0($2)
lw $1, 0($2)
beq $2, $1, TAG282
TAG282:
lui $3, 6
lhu $1, 0($1)
mfhi $1
lui $2, 6
TAG283:
mfhi $3
sb $3, 0($3)
addu $3, $3, $3
mflo $2
TAG284:
beq $2, $2, TAG285
sh $2, 0($2)
and $3, $2, $2
sb $2, 0($3)
TAG285:
multu $3, $3
addiu $2, $3, 5
mtlo $3
sb $3, 0($2)
TAG286:
lbu $1, 0($2)
lbu $1, 0($2)
addu $2, $2, $2
bne $1, $1, TAG287
TAG287:
sb $2, 0($2)
bltz $2, TAG288
multu $2, $2
lb $2, 0($2)
TAG288:
mthi $2
bne $2, $2, TAG289
addu $2, $2, $2
bgtz $2, TAG289
TAG289:
lui $3, 15
mthi $3
blez $2, TAG290
mtlo $2
TAG290:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
lui $3, 15
TAG291:
mflo $2
multu $2, $3
beq $2, $2, TAG292
andi $1, $2, 12
TAG292:
bgez $1, TAG293
lw $2, 0($1)
bne $1, $2, TAG293
mult $2, $2
TAG293:
lb $3, 0($2)
mtlo $2
lb $2, 0($2)
mtlo $2
TAG294:
sh $2, 0($2)
sh $2, 0($2)
sra $2, $2, 14
mfhi $4
TAG295:
divu $4, $4
beq $4, $4, TAG296
mflo $1
bgtz $1, TAG296
TAG296:
addiu $4, $1, 3
lui $1, 7
mtlo $1
blez $1, TAG297
TAG297:
sll $0, $0, 0
lui $2, 11
mflo $1
mflo $2
TAG298:
blez $2, TAG299
ori $1, $2, 2
sll $0, $0, 0
bgtz $2, TAG299
TAG299:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
nor $1, $1, $1
TAG300:
addu $1, $1, $1
ori $3, $1, 12
sll $0, $0, 0
sltu $4, $4, $3
TAG301:
bgez $4, TAG302
mtlo $4
mfhi $1
mthi $4
TAG302:
mfhi $2
bgez $2, TAG303
sh $1, 0($2)
mtlo $1
TAG303:
mtlo $2
mult $2, $2
lh $1, 0($2)
lui $1, 11
TAG304:
beq $1, $1, TAG305
lui $4, 14
sh $1, 0($1)
beq $4, $4, TAG305
TAG305:
mfhi $2
sh $2, 0($2)
sltu $1, $4, $4
addiu $1, $1, 11
TAG306:
lb $2, 0($1)
sb $2, 0($1)
sb $2, 0($1)
nor $1, $1, $2
TAG307:
addu $2, $1, $1
ori $3, $1, 13
sra $4, $1, 2
mfhi $1
TAG308:
mfhi $4
srl $2, $4, 4
bgtz $4, TAG309
mflo $4
TAG309:
lui $1, 14
mult $1, $4
lui $1, 13
sll $0, $0, 0
TAG310:
mthi $1
beq $1, $1, TAG311
mflo $2
lbu $1, 0($2)
TAG311:
mtlo $1
lui $3, 15
mult $1, $1
mtlo $1
TAG312:
sll $0, $0, 0
blez $3, TAG313
mult $3, $3
bne $3, $3, TAG313
TAG313:
sll $0, $0, 0
sltiu $2, $3, 8
blez $2, TAG314
lui $2, 2
TAG314:
bltz $2, TAG315
sll $0, $0, 0
sll $0, $0, 0
sltu $2, $2, $2
TAG315:
subu $3, $2, $2
sltiu $4, $3, 9
bne $3, $4, TAG316
mflo $2
TAG316:
addiu $1, $2, 0
addiu $4, $1, 7
slt $4, $2, $4
lui $2, 6
TAG317:
sll $0, $0, 0
sra $3, $2, 2
mflo $3
mflo $1
TAG318:
beq $1, $1, TAG319
slti $1, $1, 8
srlv $1, $1, $1
srav $4, $1, $1
TAG319:
lbu $2, 0($4)
beq $4, $2, TAG320
and $3, $2, $4
mfhi $1
TAG320:
mthi $1
sw $1, -225($1)
lui $3, 0
mfhi $3
TAG321:
mtlo $3
mthi $3
sw $3, -225($3)
mtlo $3
TAG322:
blez $3, TAG323
lui $4, 15
lbu $4, -225($3)
mthi $3
TAG323:
mfhi $4
mthi $4
subu $2, $4, $4
mtlo $2
TAG324:
sw $2, 0($2)
sw $2, 0($2)
mfhi $4
lui $4, 5
TAG325:
div $4, $4
mult $4, $4
mtlo $4
lui $1, 3
TAG326:
sll $0, $0, 0
mflo $4
sll $0, $0, 0
srlv $3, $4, $1
TAG327:
div $3, $3
sllv $2, $3, $3
and $3, $2, $3
lui $2, 1
TAG328:
bne $2, $2, TAG329
mtlo $2
subu $4, $2, $2
lui $3, 8
TAG329:
lui $1, 4
sll $0, $0, 0
sltu $4, $3, $3
lui $3, 2
TAG330:
mflo $2
or $3, $2, $3
sll $0, $0, 0
mflo $4
TAG331:
lui $2, 9
beq $2, $2, TAG332
sllv $2, $4, $2
lui $1, 0
TAG332:
bgez $1, TAG333
sll $0, $0, 0
lw $3, 0($1)
lhu $2, 0($1)
TAG333:
lui $3, 9
ori $3, $3, 3
sll $0, $0, 0
mflo $4
TAG334:
sltu $4, $4, $4
mult $4, $4
bne $4, $4, TAG335
lui $4, 6
TAG335:
sll $0, $0, 0
sllv $3, $4, $4
sltiu $1, $4, 3
ori $2, $1, 13
TAG336:
lui $1, 11
lui $2, 0
beq $1, $1, TAG337
srl $3, $2, 14
TAG337:
sh $3, 0($3)
mthi $3
lbu $2, 0($3)
beq $2, $3, TAG338
TAG338:
lw $4, 0($2)
mthi $4
lhu $2, 0($4)
mflo $2
TAG339:
mflo $3
lui $2, 8
sll $0, $0, 0
mflo $4
TAG340:
andi $2, $4, 3
mult $4, $2
slt $3, $4, $2
subu $1, $4, $2
TAG341:
bne $1, $1, TAG342
mflo $4
sh $4, 0($1)
slt $1, $1, $1
TAG342:
sra $4, $1, 4
mtlo $1
bne $1, $4, TAG343
lbu $4, 0($4)
TAG343:
beq $4, $4, TAG344
slti $1, $4, 5
lui $2, 12
subu $3, $4, $4
TAG344:
beq $3, $3, TAG345
mthi $3
lui $4, 12
lhu $2, 0($4)
TAG345:
mult $2, $2
beq $2, $2, TAG346
mfhi $2
slti $3, $2, 12
TAG346:
sub $3, $3, $3
multu $3, $3
lui $1, 5
slt $3, $3, $1
TAG347:
lui $4, 9
beq $4, $3, TAG348
sll $0, $0, 0
bne $3, $4, TAG348
TAG348:
mflo $4
and $3, $4, $4
ori $1, $3, 2
lui $2, 6
TAG349:
mthi $2
div $2, $2
mtlo $2
mult $2, $2
TAG350:
divu $2, $2
bne $2, $2, TAG351
sll $0, $0, 0
andi $1, $2, 1
TAG351:
xori $4, $1, 12
lui $3, 12
sb $4, 0($4)
sh $3, 0($1)
TAG352:
div $3, $3
divu $3, $3
addu $2, $3, $3
sll $4, $2, 10
TAG353:
lui $4, 10
sll $0, $0, 0
sra $1, $4, 13
mfhi $2
TAG354:
mfhi $1
nor $1, $1, $2
mult $1, $1
sra $1, $1, 8
TAG355:
bltz $1, TAG356
mtlo $1
mflo $3
sw $1, 0($3)
TAG356:
lui $2, 10
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG357:
mflo $1
mthi $1
lbu $2, 1($1)
lui $4, 6
TAG358:
bne $4, $4, TAG359
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG359
TAG359:
mfhi $1
slti $3, $3, 13
srav $3, $3, $3
mfhi $1
TAG360:
lui $3, 7
mflo $2
bgtz $2, TAG361
multu $1, $1
TAG361:
beq $2, $2, TAG362
sw $2, 1($2)
beq $2, $2, TAG362
mfhi $1
TAG362:
lui $3, 6
sll $4, $1, 0
mfhi $1
sh $1, 2($1)
TAG363:
sb $1, 2($1)
mtlo $1
nor $2, $1, $1
multu $1, $2
TAG364:
div $2, $2
multu $2, $2
mult $2, $2
mtlo $2
TAG365:
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
multu $2, $2
TAG366:
lb $2, 0($2)
sb $2, 0($2)
mthi $2
sb $2, 0($2)
TAG367:
slt $4, $2, $2
beq $4, $2, TAG368
lui $3, 12
mthi $3
TAG368:
sll $0, $0, 0
sh $4, 0($4)
xori $2, $4, 3
sll $0, $0, 0
TAG369:
sb $2, 0($2)
mfhi $4
sll $0, $0, 0
bgez $4, TAG370
TAG370:
mflo $4
bltz $2, TAG371
addiu $3, $2, 13
mfhi $4
TAG371:
beq $4, $4, TAG372
srl $1, $4, 10
or $2, $1, $4
beq $1, $2, TAG372
TAG372:
subu $2, $2, $2
multu $2, $2
lw $3, 0($2)
bgtz $2, TAG373
TAG373:
sra $1, $3, 2
mflo $2
lui $2, 8
ori $3, $3, 10
TAG374:
beq $3, $3, TAG375
sll $0, $0, 0
lui $4, 2
lui $1, 8
TAG375:
sll $0, $0, 0
andi $1, $1, 2
srl $3, $1, 7
multu $1, $3
TAG376:
mult $3, $3
lui $4, 13
multu $4, $3
nor $2, $3, $4
TAG377:
xor $4, $2, $2
bne $4, $4, TAG378
sll $0, $0, 0
mtlo $4
TAG378:
sw $4, 0($4)
beq $4, $4, TAG379
sb $4, 0($4)
mult $4, $4
TAG379:
blez $4, TAG380
lui $4, 5
srav $2, $4, $4
sllv $4, $2, $4
TAG380:
multu $4, $4
mfhi $3
bltz $3, TAG381
sll $0, $0, 0
TAG381:
bgtz $3, TAG382
ori $4, $3, 5
mfhi $3
lbu $2, 0($4)
TAG382:
beq $2, $2, TAG383
sltiu $1, $2, 12
mult $2, $1
and $4, $1, $2
TAG383:
bne $4, $4, TAG384
or $3, $4, $4
mult $3, $4
addiu $1, $4, 13
TAG384:
andi $4, $1, 2
lui $3, 13
mtlo $3
sll $0, $0, 0
TAG385:
sb $1, 0($1)
blez $1, TAG386
nor $3, $1, $1
multu $3, $3
TAG386:
sw $3, 43($3)
xori $3, $3, 14
lui $4, 8
lb $4, 37($3)
TAG387:
mtlo $4
beq $4, $4, TAG388
lh $2, 43($4)
nor $4, $2, $2
TAG388:
mtlo $4
beq $4, $4, TAG389
mtlo $4
sltiu $2, $4, 13
TAG389:
sll $0, $0, 0
sw $3, 43($2)
div $2, $3
lw $2, 37($3)
TAG390:
mult $2, $2
mthi $2
sh $2, 37($2)
blez $2, TAG391
TAG391:
andi $3, $2, 2
mtlo $3
multu $3, $2
lui $3, 0
TAG392:
bltz $3, TAG393
mtlo $3
lb $2, 0($3)
div $2, $2
TAG393:
mthi $2
mult $2, $2
lui $1, 3
mfhi $2
TAG394:
lui $3, 4
slt $4, $2, $2
sll $0, $0, 0
sw $3, 0($4)
TAG395:
sll $1, $1, 15
mthi $1
bgtz $1, TAG396
mthi $1
TAG396:
ori $4, $1, 11
divu $1, $1
mflo $1
mthi $4
TAG397:
subu $3, $1, $1
blez $1, TAG398
mtlo $3
lbu $3, 0($3)
TAG398:
mtlo $3
sltu $4, $3, $3
sw $4, 0($4)
mthi $3
TAG399:
lhu $2, 0($4)
mtlo $2
lh $1, 0($4)
mtlo $1
TAG400:
bne $1, $1, TAG401
mfhi $1
lw $2, 0($1)
mflo $3
TAG401:
lb $2, 0($3)
sltiu $4, $2, 12
xori $1, $2, 14
divu $1, $4
TAG402:
lhu $1, 0($1)
multu $1, $1
sb $1, 0($1)
beq $1, $1, TAG403
TAG403:
sw $1, 0($1)
bne $1, $1, TAG404
multu $1, $1
ori $4, $1, 3
TAG404:
divu $4, $4
mthi $4
lb $4, 0($4)
lh $2, 0($4)
TAG405:
bne $2, $2, TAG406
mflo $1
mflo $2
divu $1, $2
TAG406:
bne $2, $2, TAG407
lui $2, 8
mtlo $2
bne $2, $2, TAG407
TAG407:
sll $0, $0, 0
divu $2, $2
slti $2, $2, 5
lb $3, 0($2)
TAG408:
sh $3, 0($3)
mult $3, $3
sw $3, 0($3)
bgez $3, TAG409
TAG409:
slti $3, $3, 1
multu $3, $3
lui $3, 6
mtlo $3
TAG410:
mflo $2
sll $0, $0, 0
mthi $2
mfhi $3
TAG411:
div $3, $3
sll $0, $0, 0
bgtz $3, TAG412
xor $2, $3, $3
TAG412:
lui $4, 4
mult $4, $2
addiu $1, $4, 6
mflo $1
TAG413:
mtlo $1
mthi $1
beq $1, $1, TAG414
mult $1, $1
TAG414:
mflo $4
beq $4, $1, TAG415
sw $4, 0($4)
bgtz $1, TAG415
TAG415:
lb $2, 0($4)
mfhi $3
subu $3, $3, $2
mtlo $3
TAG416:
multu $3, $3
slti $4, $3, 10
lui $4, 1
bne $4, $4, TAG417
TAG417:
addiu $3, $4, 3
slt $2, $4, $3
sll $0, $0, 0
sb $2, 0($2)
TAG418:
multu $1, $1
lui $3, 7
multu $1, $3
multu $3, $1
TAG419:
mflo $3
lui $3, 6
sll $0, $0, 0
srl $3, $3, 0
TAG420:
mult $3, $3
subu $3, $3, $3
beq $3, $3, TAG421
slt $3, $3, $3
TAG421:
andi $1, $3, 8
multu $1, $1
andi $4, $1, 9
beq $1, $4, TAG422
TAG422:
lh $3, 0($4)
multu $3, $3
mfhi $2
lb $4, 0($4)
TAG423:
mflo $2
addiu $3, $2, 12
mtlo $4
lui $4, 13
TAG424:
beq $4, $4, TAG425
divu $4, $4
sw $4, 0($4)
mtlo $4
TAG425:
sll $0, $0, 0
sltu $3, $4, $4
mflo $1
lui $1, 10
TAG426:
beq $1, $1, TAG427
mflo $3
lbu $1, 0($3)
mfhi $3
TAG427:
mult $3, $3
sra $2, $3, 12
mflo $1
mfhi $1
TAG428:
lui $4, 2
beq $4, $1, TAG429
sltiu $2, $4, 12
mult $4, $2
TAG429:
bltz $2, TAG430
nor $1, $2, $2
lhu $3, 0($2)
mfhi $4
TAG430:
lui $4, 13
mfhi $1
subu $3, $4, $4
mthi $4
TAG431:
beq $3, $3, TAG432
multu $3, $3
nor $4, $3, $3
slti $4, $3, 0
TAG432:
sra $3, $4, 9
sra $2, $3, 3
beq $3, $2, TAG433
srlv $1, $3, $4
TAG433:
srav $4, $1, $1
mthi $1
div $1, $1
sb $4, -1664($4)
TAG434:
mtlo $4
mthi $4
div $4, $4
bgez $4, TAG435
TAG435:
srav $3, $4, $4
mtlo $4
slt $1, $4, $3
bne $3, $1, TAG436
TAG436:
subu $1, $1, $1
lui $2, 8
bgtz $1, TAG437
lui $1, 3
TAG437:
mult $1, $1
multu $1, $1
beq $1, $1, TAG438
lui $2, 14
TAG438:
sll $0, $0, 0
mflo $3
bltz $3, TAG439
lui $2, 4
TAG439:
mfhi $3
sll $0, $0, 0
mtlo $2
subu $1, $2, $3
TAG440:
sltu $3, $1, $1
mflo $1
srl $3, $1, 1
bltz $1, TAG441
TAG441:
multu $3, $3
sll $0, $0, 0
bne $3, $3, TAG442
sll $0, $0, 0
TAG442:
bgtz $3, TAG443
addu $4, $3, $3
mflo $3
mult $3, $4
TAG443:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
bgtz $2, TAG444
TAG444:
mfhi $3
mfhi $1
sltu $4, $1, $3
mflo $3
TAG445:
bltz $3, TAG446
mflo $2
mthi $2
lui $1, 11
TAG446:
beq $1, $1, TAG447
ori $1, $1, 7
beq $1, $1, TAG447
multu $1, $1
TAG447:
sll $0, $0, 0
mflo $4
mfhi $2
xor $2, $1, $2
TAG448:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG449
or $4, $2, $1
TAG449:
and $1, $4, $4
or $1, $4, $4
bne $1, $1, TAG450
lui $1, 9
TAG450:
lui $3, 11
mflo $2
bgez $1, TAG451
divu $3, $1
TAG451:
lh $2, 0($2)
lh $3, -384($2)
divu $3, $2
beq $2, $2, TAG452
TAG452:
mflo $2
beq $3, $3, TAG453
mfhi $1
divu $3, $3
TAG453:
beq $1, $1, TAG454
mtlo $1
mtlo $1
lui $4, 13
TAG454:
lui $2, 3
bne $2, $2, TAG455
sll $0, $0, 0
lui $4, 14
TAG455:
mfhi $3
multu $4, $3
mflo $3
lui $2, 6
TAG456:
srlv $2, $2, $2
beq $2, $2, TAG457
and $1, $2, $2
div $2, $1
TAG457:
sll $0, $0, 0
and $2, $1, $1
beq $1, $2, TAG458
lui $1, 14
TAG458:
bgez $1, TAG459
sll $0, $0, 0
sltiu $1, $1, 1
sb $1, 0($1)
TAG459:
slti $4, $1, 7
slt $3, $4, $1
bgez $4, TAG460
lb $2, 0($4)
TAG460:
beq $2, $2, TAG461
mtlo $2
mthi $2
slt $4, $2, $2
TAG461:
subu $2, $4, $4
mthi $4
lbu $2, 0($4)
lbu $4, 0($2)
TAG462:
bgtz $4, TAG463
sb $4, 0($4)
bgez $4, TAG463
mtlo $4
TAG463:
multu $4, $4
multu $4, $4
sllv $3, $4, $4
bgez $3, TAG464
TAG464:
multu $3, $3
mfhi $4
lui $2, 13
blez $4, TAG465
TAG465:
sltiu $1, $2, 13
sw $2, 0($1)
mfhi $4
sra $3, $1, 15
TAG466:
lui $3, 2
sll $0, $0, 0
bgtz $3, TAG467
mthi $3
TAG467:
lui $4, 13
subu $1, $4, $4
mthi $4
sb $3, 0($1)
TAG468:
mfhi $3
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
TAG469:
mflo $1
bltz $1, TAG470
srlv $2, $1, $1
lui $2, 5
TAG470:
or $2, $2, $2
sll $0, $0, 0
multu $2, $2
sll $0, $0, 0
TAG471:
mfhi $2
and $4, $2, $2
beq $2, $4, TAG472
sb $2, 0($4)
TAG472:
xor $3, $4, $4
addiu $4, $4, 3
mtlo $3
xori $4, $4, 3
TAG473:
mthi $4
lui $3, 6
sll $0, $0, 0
and $1, $4, $3
TAG474:
slt $4, $1, $1
mfhi $3
sb $1, 0($4)
bne $4, $3, TAG475
TAG475:
mthi $3
div $3, $3
div $3, $3
mthi $3
TAG476:
srlv $3, $3, $3
mthi $3
sb $3, 0($3)
mthi $3
TAG477:
ori $1, $3, 14
addi $4, $3, 15
mthi $4
andi $2, $1, 14
TAG478:
lb $4, 0($2)
lui $4, 8
div $4, $2
bne $4, $2, TAG479
TAG479:
lui $1, 1
lui $1, 1
blez $1, TAG480
slti $3, $4, 15
TAG480:
sb $3, 0($3)
bgez $3, TAG481
mthi $3
sh $3, 0($3)
TAG481:
mfhi $3
xori $3, $3, 14
addiu $3, $3, 15
sb $3, 0($3)
TAG482:
sb $3, 0($3)
mthi $3
lbu $1, 0($3)
divu $1, $1
TAG483:
sltiu $2, $1, 11
lui $4, 7
bne $2, $4, TAG484
div $1, $1
TAG484:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
sb $4, 0($1)
TAG485:
blez $2, TAG486
sll $4, $2, 14
bgtz $4, TAG486
mflo $4
TAG486:
mthi $4
addu $4, $4, $4
lui $4, 4
mtlo $4
TAG487:
mtlo $4
mthi $4
sltiu $1, $4, 2
slti $3, $4, 0
TAG488:
multu $3, $3
mthi $3
lui $3, 4
ori $3, $3, 2
TAG489:
sll $0, $0, 0
lui $1, 10
mfhi $1
mthi $3
TAG490:
bltz $1, TAG491
lh $2, 0($1)
mfhi $3
sb $2, 0($1)
TAG491:
sll $0, $0, 0
bne $3, $3, TAG492
sll $0, $0, 0
lh $4, 0($2)
TAG492:
bltz $4, TAG493
slt $1, $4, $4
mthi $1
lui $1, 15
TAG493:
sll $0, $0, 0
sll $0, $0, 0
srl $4, $2, 12
bgtz $1, TAG494
TAG494:
mflo $4
sb $4, 0($4)
mthi $4
mfhi $1
TAG495:
sw $1, 0($1)
lhu $2, 0($1)
lui $3, 10
mfhi $2
TAG496:
beq $2, $2, TAG497
sw $2, 0($2)
lui $3, 9
beq $3, $2, TAG497
TAG497:
mthi $3
mfhi $4
mtlo $3
bgtz $3, TAG498
TAG498:
div $4, $4
mthi $4
lui $3, 10
div $3, $4
TAG499:
lui $2, 9
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG500:
mthi $2
or $1, $2, $2
sltiu $4, $2, 12
lhu $4, 0($4)
TAG501:
bne $4, $4, TAG502
lui $3, 13
sll $0, $0, 0
mflo $3
TAG502:
sra $2, $3, 15
sll $0, $0, 0
sltu $2, $3, $3
mfhi $3
TAG503:
bgez $3, TAG504
mthi $3
andi $1, $3, 0
mthi $1
TAG504:
mfhi $3
bltz $3, TAG505
div $3, $3
mfhi $1
TAG505:
srl $3, $1, 0
sltu $4, $1, $3
mflo $2
mtlo $4
TAG506:
mflo $3
lbu $3, 0($2)
sllv $1, $3, $3
lw $2, 0($1)
TAG507:
addi $4, $2, 6
bgtz $4, TAG508
sh $4, 0($4)
sh $4, 0($4)
TAG508:
lb $3, 0($4)
beq $3, $4, TAG509
lui $2, 15
sb $2, 0($3)
TAG509:
mfhi $2
lui $1, 15
multu $2, $2
lb $1, 0($2)
TAG510:
lb $1, 0($1)
sltiu $2, $1, 12
and $4, $1, $2
sb $4, 0($2)
TAG511:
lui $3, 8
mtlo $4
bne $3, $3, TAG512
addu $4, $3, $3
TAG512:
mfhi $2
addiu $1, $4, 9
sll $0, $0, 0
mfhi $4
TAG513:
mult $4, $4
xori $2, $4, 11
beq $4, $4, TAG514
sb $2, 0($2)
TAG514:
mfhi $2
mtlo $2
sra $3, $2, 13
srl $3, $2, 10
TAG515:
sltiu $2, $3, 7
mthi $3
mthi $2
lui $4, 10
TAG516:
bltz $4, TAG517
sll $0, $0, 0
blez $2, TAG517
multu $2, $4
TAG517:
mtlo $2
mflo $2
xori $3, $2, 15
sb $3, 0($2)
TAG518:
multu $3, $3
bne $3, $3, TAG519
lui $3, 13
addu $2, $3, $3
TAG519:
blez $2, TAG520
nor $2, $2, $2
sll $0, $0, 0
divu $2, $2
TAG520:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG521
xori $2, $1, 9
TAG521:
multu $2, $2
beq $2, $2, TAG522
lui $1, 9
mfhi $4
TAG522:
sltiu $4, $4, 5
sltu $2, $4, $4
lui $4, 7
lui $2, 2
TAG523:
sra $4, $2, 8
bgez $2, TAG524
sb $4, -512($4)
bgtz $2, TAG524
TAG524:
addiu $3, $4, 10
mflo $3
bne $3, $4, TAG525
andi $3, $3, 11
TAG525:
ori $3, $3, 14
mthi $3
lb $2, 0($3)
mfhi $4
TAG526:
divu $4, $4
mtlo $4
lbu $4, 0($4)
sb $4, 0($4)
TAG527:
sh $4, 0($4)
add $2, $4, $4
lhu $4, 0($2)
beq $2, $2, TAG528
TAG528:
mflo $2
mult $4, $4
subu $3, $4, $2
bltz $3, TAG529
TAG529:
lui $3, 13
xori $3, $3, 8
mult $3, $3
beq $3, $3, TAG530
TAG530:
sll $0, $0, 0
mfhi $2
beq $2, $3, TAG531
xori $2, $3, 12
TAG531:
bne $2, $2, TAG532
mult $2, $2
lui $2, 4
sll $0, $0, 0
TAG532:
sll $0, $0, 0
mtlo $3
mtlo $3
sltu $1, $3, $3
TAG533:
bgtz $1, TAG534
sb $1, 0($1)
beq $1, $1, TAG534
ori $4, $1, 0
TAG534:
mflo $1
bne $1, $1, TAG535
andi $4, $4, 1
beq $4, $1, TAG535
TAG535:
sw $4, 0($4)
sw $4, 0($4)
sh $4, 0($4)
ori $2, $4, 14
TAG536:
mflo $2
lui $4, 11
mflo $4
mtlo $4
TAG537:
beq $4, $4, TAG538
div $4, $4
sllv $4, $4, $4
lh $1, 0($4)
TAG538:
andi $4, $1, 12
beq $4, $1, TAG539
sll $0, $0, 0
lui $4, 9
TAG539:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG540
TAG540:
srlv $1, $3, $3
mthi $3
lui $4, 10
sll $0, $0, 0
TAG541:
lui $1, 7
andi $4, $1, 6
mflo $3
sll $0, $0, 0
TAG542:
addu $1, $3, $3
blez $3, TAG543
mthi $3
srl $2, $1, 7
TAG543:
srav $3, $2, $2
srl $2, $3, 4
mfhi $1
srlv $4, $3, $2
TAG544:
sb $4, -9216($4)
div $4, $4
multu $4, $4
subu $1, $4, $4
TAG545:
ori $1, $1, 8
mthi $1
mtlo $1
sh $1, 0($1)
TAG546:
nor $1, $1, $1
bne $1, $1, TAG547
sb $1, 9($1)
bne $1, $1, TAG547
TAG547:
div $1, $1
lh $4, 9($1)
mfhi $4
mflo $3
TAG548:
and $1, $3, $3
slt $4, $1, $3
mflo $4
lui $1, 14
TAG549:
divu $1, $1
bltz $1, TAG550
lui $3, 0
sb $1, 0($3)
TAG550:
lb $1, 0($3)
lh $2, 0($1)
addiu $4, $3, 2
mthi $1
TAG551:
mfhi $4
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
TAG552:
beq $2, $2, TAG553
sll $1, $2, 2
lui $4, 13
lbu $2, 0($1)
TAG553:
sub $3, $2, $2
sb $2, 0($2)
xori $3, $3, 7
mfhi $1
TAG554:
mult $1, $1
mflo $3
mtlo $1
mthi $3
TAG555:
beq $3, $3, TAG556
sw $3, 0($3)
sb $3, 0($3)
srl $2, $3, 12
TAG556:
multu $2, $2
beq $2, $2, TAG557
and $2, $2, $2
lbu $3, 0($2)
TAG557:
bltz $3, TAG558
sb $3, 0($3)
bne $3, $3, TAG558
sw $3, 0($3)
TAG558:
lh $4, 0($3)
or $1, $4, $4
sb $1, 0($4)
multu $3, $4
TAG559:
bltz $1, TAG560
sw $1, 0($1)
mult $1, $1
mthi $1
TAG560:
bgtz $1, TAG561
lhu $1, 0($1)
sra $1, $1, 15
xori $4, $1, 7
TAG561:
sb $4, 0($4)
mfhi $3
mult $3, $3
mthi $4
TAG562:
sw $3, 0($3)
mthi $3
lui $2, 11
lw $1, 0($3)
TAG563:
bne $1, $1, TAG564
lui $2, 9
bne $1, $1, TAG564
sll $0, $0, 0
TAG564:
beq $2, $2, TAG565
sll $0, $0, 0
mtlo $2
sb $2, 0($2)
TAG565:
addu $2, $2, $2
lui $1, 11
bne $2, $2, TAG566
andi $3, $2, 12
TAG566:
bne $3, $3, TAG567
sh $3, 0($3)
lui $1, 4
sltu $4, $3, $1
TAG567:
mflo $4
nor $1, $4, $4
lh $2, 0($4)
sw $4, 0($2)
TAG568:
mthi $2
beq $2, $2, TAG569
sub $4, $2, $2
mult $2, $4
TAG569:
mthi $4
sltu $1, $4, $4
multu $4, $4
sub $2, $4, $1
TAG570:
lb $4, 0($2)
bgez $2, TAG571
sw $4, 0($4)
bne $2, $4, TAG571
TAG571:
ori $4, $4, 1
sltiu $4, $4, 5
srl $1, $4, 4
srav $3, $4, $4
TAG572:
mult $3, $3
xori $3, $3, 9
lui $1, 4
sll $0, $0, 0
TAG573:
sw $2, 0($2)
or $2, $2, $2
addu $1, $2, $2
beq $2, $2, TAG574
TAG574:
lui $3, 0
lbu $1, 0($1)
sll $1, $1, 9
sb $3, 0($1)
TAG575:
mtlo $1
bne $1, $1, TAG576
lw $3, 0($1)
mflo $4
TAG576:
ori $1, $4, 14
blez $4, TAG577
mfhi $3
mfhi $4
TAG577:
slt $4, $4, $4
lui $4, 4
beq $4, $4, TAG578
mflo $2
TAG578:
multu $2, $2
mflo $2
beq $2, $2, TAG579
lbu $3, 0($2)
TAG579:
mfhi $1
multu $3, $3
mfhi $1
xori $3, $1, 11
TAG580:
mtlo $3
bgez $3, TAG581
mflo $2
sw $2, 0($3)
TAG581:
sb $2, 0($2)
sb $2, 0($2)
ori $3, $2, 14
ori $4, $2, 2
TAG582:
mthi $4
bne $4, $4, TAG583
addiu $3, $4, 12
beq $3, $4, TAG583
TAG583:
lbu $4, 0($3)
sb $3, 0($3)
slti $1, $4, 15
mthi $4
TAG584:
blez $1, TAG585
lui $4, 12
lui $1, 13
mult $4, $1
TAG585:
bgtz $1, TAG586
xor $2, $1, $1
mtlo $2
mfhi $2
TAG586:
mfhi $4
sw $4, 0($2)
sub $3, $4, $2
mfhi $3
TAG587:
div $3, $3
beq $3, $3, TAG588
mfhi $2
lui $3, 5
TAG588:
beq $3, $3, TAG589
mtlo $3
beq $3, $3, TAG589
mflo $4
TAG589:
sb $4, -156($4)
bne $4, $4, TAG590
and $1, $4, $4
mtlo $1
TAG590:
sll $0, $0, 0
addiu $4, $1, 0
mtlo $4
sb $1, -156($4)
TAG591:
lui $1, 3
sw $1, -156($4)
bne $4, $1, TAG592
sra $2, $1, 11
TAG592:
multu $2, $2
lh $4, 0($2)
sb $2, 0($2)
lb $3, 0($4)
TAG593:
sw $3, 0($3)
sltiu $2, $3, 9
sltu $2, $2, $2
mfhi $1
TAG594:
lui $4, 4
xori $4, $4, 7
sll $0, $0, 0
mult $4, $1
TAG595:
sll $0, $0, 0
mthi $3
srlv $4, $3, $3
beq $3, $4, TAG596
TAG596:
sh $4, 0($4)
sh $4, 0($4)
mthi $4
lui $1, 10
TAG597:
mthi $1
mfhi $3
sll $0, $0, 0
bgtz $1, TAG598
TAG598:
mthi $4
sra $4, $4, 2
or $1, $4, $4
beq $4, $4, TAG599
TAG599:
addu $2, $1, $1
add $2, $1, $1
lui $3, 4
andi $4, $3, 5
TAG600:
mflo $3
bne $3, $4, TAG601
mflo $2
lw $3, 0($4)
TAG601:
or $1, $3, $3
addiu $2, $3, 5
mult $3, $3
mult $3, $3
TAG602:
nor $2, $2, $2
mfhi $3
bgtz $3, TAG603
mult $2, $3
TAG603:
sb $3, 0($3)
multu $3, $3
srl $4, $3, 15
srav $2, $4, $4
TAG604:
mtlo $2
sll $2, $2, 1
mfhi $3
sw $3, 0($2)
TAG605:
add $2, $3, $3
mthi $2
lui $3, 4
bne $3, $2, TAG606
TAG606:
sll $0, $0, 0
subu $3, $3, $3
bgtz $3, TAG607
multu $1, $3
TAG607:
multu $3, $3
bne $3, $3, TAG608
mflo $2
bgez $3, TAG608
TAG608:
ori $2, $2, 9
beq $2, $2, TAG609
sltu $2, $2, $2
sw $2, 0($2)
TAG609:
blez $2, TAG610
srav $2, $2, $2
sb $2, 0($2)
bltz $2, TAG610
TAG610:
sb $2, 0($2)
multu $2, $2
lui $4, 15
bgtz $4, TAG611
TAG611:
lui $1, 8
bne $4, $4, TAG612
mthi $1
mfhi $4
TAG612:
lui $3, 8
addiu $3, $3, 4
addu $2, $3, $3
xor $1, $3, $2
TAG613:
beq $1, $1, TAG614
and $4, $1, $1
lui $4, 10
lbu $3, 0($4)
TAG614:
srl $3, $3, 15
beq $3, $3, TAG615
addiu $3, $3, 15
mflo $2
TAG615:
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
lui $1, 8
TAG616:
multu $1, $1
sll $0, $0, 0
bgtz $4, TAG617
sll $0, $0, 0
TAG617:
blez $2, TAG618
addu $1, $2, $2
multu $2, $1
lui $4, 13
TAG618:
subu $3, $4, $4
sb $3, 0($3)
multu $4, $3
mflo $2
TAG619:
lbu $3, 0($2)
bgez $2, TAG620
lui $3, 3
lui $4, 14
TAG620:
lui $3, 12
mfhi $4
sll $0, $0, 0
addu $4, $4, $3
TAG621:
mthi $4
beq $4, $4, TAG622
sll $0, $0, 0
divu $4, $4
TAG622:
mflo $1
mult $1, $1
subu $4, $1, $4
bne $4, $4, TAG623
TAG623:
mult $4, $4
xori $3, $4, 4
slt $3, $3, $4
div $4, $4
TAG624:
mflo $3
multu $3, $3
sltiu $3, $3, 4
ori $4, $3, 8
TAG625:
sb $4, 0($4)
addiu $4, $4, 7
multu $4, $4
lbu $4, 0($4)
TAG626:
xori $4, $4, 0
lh $4, 0($4)
sb $4, -2826($4)
ori $3, $4, 5
TAG627:
addu $1, $3, $3
div $3, $3
lb $1, -5662($1)
bltz $1, TAG628
TAG628:
lb $4, 0($1)
sb $1, 0($4)
mfhi $3
mult $3, $1
TAG629:
addu $4, $3, $3
bne $4, $4, TAG630
mult $4, $3
andi $1, $3, 11
TAG630:
mthi $1
sll $4, $1, 13
sh $4, 0($4)
mthi $4
TAG631:
multu $4, $4
lui $2, 10
lui $3, 2
mflo $4
TAG632:
lhu $3, 0($4)
sh $4, 0($3)
sb $4, 0($3)
mfhi $3
TAG633:
lui $1, 8
sltiu $3, $3, 2
sra $4, $3, 5
lui $2, 4
TAG634:
or $2, $2, $2
mtlo $2
slti $3, $2, 0
lbu $2, 0($3)
TAG635:
mult $2, $2
mult $2, $2
sb $2, 0($2)
mult $2, $2
TAG636:
lui $1, 1
xori $3, $1, 2
blez $2, TAG637
lbu $1, 0($2)
TAG637:
srl $3, $1, 4
multu $1, $3
multu $3, $3
multu $1, $1
TAG638:
lui $4, 9
mthi $3
div $4, $4
lbu $1, 0($3)
TAG639:
mfhi $4
mthi $1
beq $1, $4, TAG640
multu $4, $4
TAG640:
mflo $2
sh $4, 0($2)
mflo $1
mtlo $4
TAG641:
mflo $1
lbu $1, 0($1)
mtlo $1
sb $1, 0($1)
TAG642:
beq $1, $1, TAG643
mtlo $1
xori $1, $1, 8
add $4, $1, $1
TAG643:
mult $4, $4
sb $4, 0($4)
mfhi $2
sh $4, 0($4)
TAG644:
ori $2, $2, 13
bne $2, $2, TAG645
divu $2, $2
mtlo $2
TAG645:
mflo $1
mthi $1
beq $2, $1, TAG646
ori $4, $2, 13
TAG646:
bne $4, $4, TAG647
mthi $4
mtlo $4
slt $1, $4, $4
TAG647:
mfhi $4
lui $1, 12
multu $4, $1
sra $3, $1, 15
TAG648:
slt $4, $3, $3
lui $2, 14
bne $4, $4, TAG649
mthi $3
TAG649:
beq $2, $2, TAG650
sll $0, $0, 0
lw $2, 0($2)
beq $2, $2, TAG650
TAG650:
sll $0, $0, 0
ori $1, $2, 4
mthi $1
mfhi $2
TAG651:
and $1, $2, $2
mflo $1
slt $1, $1, $1
slt $2, $1, $1
TAG652:
sltiu $4, $2, 6
lui $1, 9
multu $1, $4
and $1, $1, $1
TAG653:
bltz $1, TAG654
mthi $1
sra $2, $1, 4
sll $0, $0, 0
TAG654:
sra $3, $2, 1
mflo $4
beq $4, $3, TAG655
sll $0, $0, 0
TAG655:
lui $2, 13
bne $2, $4, TAG656
div $4, $2
bgtz $4, TAG656
TAG656:
mtlo $2
blez $2, TAG657
sll $0, $0, 0
mthi $2
TAG657:
mfhi $1
mfhi $3
sll $0, $0, 0
mfhi $2
TAG658:
sll $0, $0, 0
mtlo $2
lui $1, 12
mtlo $1
TAG659:
sll $0, $0, 0
mthi $1
mfhi $2
srl $4, $1, 5
TAG660:
mtlo $4
bgtz $4, TAG661
mtlo $4
sb $4, 0($4)
TAG661:
mult $4, $4
subu $3, $4, $4
bne $3, $4, TAG662
srlv $3, $3, $3
TAG662:
srl $3, $3, 10
mfhi $1
lhu $2, 0($1)
bgtz $1, TAG663
TAG663:
mtlo $2
lh $4, 0($2)
slt $4, $4, $4
add $1, $4, $4
TAG664:
lb $4, 0($1)
lw $2, 0($1)
bltz $1, TAG665
mthi $2
TAG665:
bltz $2, TAG666
lui $2, 9
mult $2, $2
bltz $2, TAG666
TAG666:
multu $2, $2
lui $3, 3
lui $4, 15
sll $0, $0, 0
TAG667:
lui $2, 4
bne $2, $4, TAG668
addiu $1, $4, 3
div $4, $1
TAG668:
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG669:
lui $4, 1
bgez $1, TAG670
mthi $1
bne $4, $1, TAG670
TAG670:
lui $2, 0
mthi $4
sltiu $2, $4, 8
lw $3, 0($2)
TAG671:
mult $3, $3
lui $3, 7
beq $3, $3, TAG672
mthi $3
TAG672:
multu $3, $3
sll $0, $0, 0
lui $2, 6
mfhi $1
TAG673:
srl $1, $1, 4
lbu $1, 0($1)
mtlo $1
sh $1, 0($1)
TAG674:
ori $4, $1, 4
sh $1, 0($4)
mthi $1
lui $2, 14
TAG675:
mtlo $2
mtlo $2
sll $0, $0, 0
div $2, $2
TAG676:
srav $3, $2, $2
andi $4, $2, 0
mtlo $2
and $2, $4, $3
TAG677:
sllv $1, $2, $2
beq $2, $1, TAG678
ori $3, $2, 0
beq $2, $3, TAG678
TAG678:
sh $3, 0($3)
mult $3, $3
bne $3, $3, TAG679
slti $2, $3, 10
TAG679:
lb $1, 0($2)
lui $1, 2
sll $0, $0, 0
sll $0, $0, 0
TAG680:
andi $2, $4, 4
nor $4, $4, $4
mtlo $2
mflo $4
TAG681:
addi $1, $4, 0
addi $4, $4, 1
mtlo $1
addu $2, $4, $4
TAG682:
lui $2, 3
beq $2, $2, TAG683
slti $1, $2, 8
lhu $3, 0($2)
TAG683:
lbu $1, 0($3)
multu $3, $1
lui $3, 15
bltz $1, TAG684
TAG684:
mtlo $3
srlv $1, $3, $3
sll $0, $0, 0
mflo $1
TAG685:
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG686
mfhi $4
TAG686:
sltu $1, $4, $4
mflo $1
mfhi $3
mtlo $3
TAG687:
mthi $3
mfhi $3
mfhi $2
sw $2, 0($2)
TAG688:
blez $2, TAG689
srlv $2, $2, $2
sb $2, 0($2)
mthi $2
TAG689:
lh $2, 0($2)
lb $2, 0($2)
lui $2, 0
srl $3, $2, 4
TAG690:
sb $3, 0($3)
mthi $3
lhu $2, 0($3)
bgtz $3, TAG691
TAG691:
slti $1, $2, 0
andi $1, $1, 14
blez $2, TAG692
srl $4, $1, 14
TAG692:
blez $4, TAG693
nor $2, $4, $4
mflo $3
sb $2, 0($2)
TAG693:
sltiu $1, $3, 15
sb $1, 0($1)
mfhi $4
sra $4, $4, 6
TAG694:
lui $1, 12
lui $4, 10
mult $4, $1
mthi $4
TAG695:
sll $0, $0, 0
mthi $4
lui $4, 0
bne $4, $4, TAG696
TAG696:
lbu $3, 0($4)
beq $4, $3, TAG697
mtlo $4
add $2, $3, $3
TAG697:
subu $3, $2, $2
mtlo $2
sll $4, $3, 1
bne $3, $2, TAG698
TAG698:
sw $4, 0($4)
lui $3, 9
bne $4, $3, TAG699
mult $3, $4
TAG699:
xor $4, $3, $3
xor $1, $4, $3
divu $4, $3
xori $2, $3, 2
TAG700:
mtlo $2
bgtz $2, TAG701
mthi $2
bgtz $2, TAG701
TAG701:
mthi $2
mflo $1
xor $1, $1, $2
bne $1, $1, TAG702
TAG702:
mfhi $4
sll $0, $0, 0
lui $2, 7
lhu $4, 0($1)
TAG703:
lui $1, 4
lui $4, 2
bgtz $4, TAG704
lui $3, 1
TAG704:
beq $3, $3, TAG705
slti $2, $3, 3
sll $3, $3, 11
sw $3, 0($2)
TAG705:
lui $2, 15
mult $2, $3
sll $0, $0, 0
sll $0, $0, 0
TAG706:
sll $0, $0, 0
ori $3, $2, 2
bgtz $3, TAG707
mfhi $4
TAG707:
divu $4, $4
divu $4, $4
mtlo $4
div $4, $4
TAG708:
div $4, $4
blez $4, TAG709
mflo $4
mtlo $4
TAG709:
bgez $4, TAG710
andi $4, $4, 11
sw $4, 0($4)
lhu $4, 0($4)
TAG710:
mult $4, $4
lui $4, 14
mtlo $4
bgtz $4, TAG711
TAG711:
xori $2, $4, 11
sll $0, $0, 0
ori $2, $4, 11
andi $2, $2, 4
TAG712:
multu $2, $2
sw $2, 0($2)
multu $2, $2
bgtz $2, TAG713
TAG713:
xori $2, $2, 10
bgez $2, TAG714
addu $1, $2, $2
bne $2, $1, TAG714
TAG714:
sll $1, $1, 2
bgez $1, TAG715
lui $4, 10
sub $2, $4, $4
TAG715:
sh $2, 0($2)
andi $2, $2, 1
sra $4, $2, 9
beq $2, $4, TAG716
TAG716:
mflo $1
sh $4, 0($1)
mflo $4
mult $4, $4
TAG717:
bgez $4, TAG718
lui $1, 1
mult $4, $4
bgtz $1, TAG718
TAG718:
sll $0, $0, 0
blez $1, TAG719
lh $1, 0($4)
slt $3, $1, $1
TAG719:
sh $3, 0($3)
blez $3, TAG720
add $4, $3, $3
lhu $3, 0($3)
TAG720:
lui $3, 12
mthi $3
bne $3, $3, TAG721
sll $0, $0, 0
TAG721:
sll $0, $0, 0
beq $3, $3, TAG722
lui $2, 11
lhu $1, 0($3)
TAG722:
ori $4, $1, 6
xor $4, $1, $1
sh $1, 0($1)
xor $1, $4, $4
TAG723:
lui $4, 14
mfhi $4
beq $1, $1, TAG724
mthi $4
TAG724:
sll $0, $0, 0
lui $3, 8
mtlo $4
sll $0, $0, 0
TAG725:
bne $3, $3, TAG726
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG726
TAG726:
lui $4, 15
mtlo $4
mthi $4
mfhi $4
TAG727:
lui $4, 12
mflo $1
bgez $1, TAG728
sll $0, $0, 0
TAG728:
addu $4, $2, $2
lui $4, 13
sltiu $2, $4, 13
sll $0, $0, 0
TAG729:
mflo $3
bltz $3, TAG730
lui $4, 4
lui $1, 4
TAG730:
bne $1, $1, TAG731
mflo $1
srlv $1, $1, $1
sll $0, $0, 0
TAG731:
lui $2, 2
bne $4, $2, TAG732
sll $0, $0, 0
mthi $2
TAG732:
or $3, $2, $2
beq $2, $3, TAG733
sltiu $2, $3, 14
divu $2, $3
TAG733:
or $3, $2, $2
sb $2, 0($3)
blez $3, TAG734
mflo $3
TAG734:
bne $3, $3, TAG735
lui $3, 0
mult $3, $3
xori $4, $3, 8
TAG735:
slt $3, $4, $4
bgez $3, TAG736
subu $3, $3, $3
mfhi $3
TAG736:
bgez $3, TAG737
addiu $4, $3, 10
bgtz $4, TAG737
divu $4, $3
TAG737:
subu $3, $4, $4
lui $2, 7
mult $3, $4
lhu $2, 0($4)
TAG738:
lui $1, 15
sll $0, $0, 0
subu $2, $1, $2
blez $2, TAG739
TAG739:
div $2, $2
sll $0, $0, 0
sh $2, 0($4)
lui $3, 8
TAG740:
slti $2, $3, 12
xori $2, $2, 6
lui $2, 0
lb $3, 0($2)
TAG741:
slti $3, $3, 13
beq $3, $3, TAG742
or $2, $3, $3
lui $3, 8
TAG742:
bgtz $3, TAG743
srav $4, $3, $3
bgez $4, TAG743
srl $2, $4, 7
TAG743:
lbu $4, 0($2)
mfhi $3
blez $2, TAG744
mfhi $3
TAG744:
lbu $3, 0($3)
lui $2, 8
beq $3, $3, TAG745
lui $2, 0
TAG745:
lhu $3, 0($2)
beq $3, $3, TAG746
mthi $3
bne $3, $2, TAG746
TAG746:
ori $1, $3, 9
multu $1, $1
mflo $2
sb $2, 0($1)
TAG747:
sb $2, 0($2)
bne $2, $2, TAG748
lui $2, 2
addu $3, $2, $2
TAG748:
andi $4, $3, 13
beq $4, $3, TAG749
lui $2, 1
addiu $1, $2, 9
TAG749:
lui $1, 9
sll $0, $0, 0
or $4, $1, $1
mfhi $4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop