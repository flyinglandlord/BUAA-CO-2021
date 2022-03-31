ori $1, $0, 4
ori $2, $0, 11
ori $3, $0, 5
ori $4, $0, 1
sw $1, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $3, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $1, 124($0)
lui $3, 1
mfhi $2
mthi $2
multu $2, $2
TAG1:
bne $2, $2, TAG2
lui $1, 10
beq $1, $2, TAG2
mthi $1
TAG2:
bgez $1, TAG3
mfhi $1
sb $1, 0($1)
nor $3, $1, $1
TAG3:
lui $4, 9
multu $4, $4
sll $0, $0, 0
bltz $1, TAG4
TAG4:
andi $2, $1, 9
subu $3, $2, $2
sh $2, 0($2)
blez $3, TAG5
TAG5:
multu $3, $3
multu $3, $3
mult $3, $3
mtlo $3
TAG6:
beq $3, $3, TAG7
subu $3, $3, $3
mtlo $3
andi $4, $3, 4
TAG7:
mfhi $4
blez $4, TAG8
lw $3, 0($4)
lbu $3, 0($4)
TAG8:
multu $3, $3
mfhi $1
sll $1, $3, 12
sb $1, 0($1)
TAG9:
mult $1, $1
lbu $1, 0($1)
and $3, $1, $1
sw $3, 0($1)
TAG10:
bne $3, $3, TAG11
lbu $2, 0($3)
multu $2, $2
lh $1, 0($3)
TAG11:
mfhi $1
bgtz $1, TAG12
multu $1, $1
mthi $1
TAG12:
srlv $4, $1, $1
lh $1, 0($4)
sw $1, 0($1)
lb $3, 0($1)
TAG13:
srl $2, $3, 14
mfhi $4
sh $2, 0($4)
mthi $3
TAG14:
mfhi $4
mfhi $4
sb $4, 0($4)
sh $4, 0($4)
TAG15:
xor $3, $4, $4
mflo $2
bne $4, $4, TAG16
mthi $2
TAG16:
multu $2, $2
lui $2, 14
divu $2, $2
div $2, $2
TAG17:
mult $2, $2
lui $2, 10
andi $2, $2, 3
lui $4, 10
TAG18:
beq $4, $4, TAG19
sll $0, $0, 0
lui $3, 2
lhu $1, 0($3)
TAG19:
lui $1, 15
lui $3, 14
multu $3, $3
srlv $4, $3, $1
TAG20:
andi $2, $4, 7
sll $0, $0, 0
beq $4, $3, TAG21
mthi $4
TAG21:
blez $3, TAG22
mult $3, $3
srl $3, $3, 11
div $3, $3
TAG22:
multu $3, $3
sw $3, -448($3)
bgtz $3, TAG23
xori $1, $3, 3
TAG23:
sltiu $3, $1, 12
blez $3, TAG24
lui $4, 10
mfhi $1
TAG24:
mthi $1
mfhi $4
andi $4, $4, 11
lui $1, 9
TAG25:
blez $1, TAG26
slt $4, $1, $1
bne $4, $1, TAG26
mthi $4
TAG26:
mflo $2
mfhi $4
mthi $4
mult $2, $4
TAG27:
or $2, $4, $4
lbu $3, 0($4)
lb $3, -192($3)
ori $4, $3, 10
TAG28:
mthi $4
mthi $4
sb $4, 54($4)
mthi $4
TAG29:
lui $3, 1
sll $0, $0, 0
xori $3, $3, 9
sb $4, 54($4)
TAG30:
sll $0, $0, 0
mflo $4
bltz $4, TAG31
sll $0, $0, 0
TAG31:
mthi $1
lui $2, 4
srlv $1, $1, $1
sll $3, $2, 2
TAG32:
ori $3, $3, 15
bne $3, $3, TAG33
lui $3, 14
bne $3, $3, TAG33
TAG33:
and $3, $3, $3
beq $3, $3, TAG34
addu $2, $3, $3
or $3, $2, $3
TAG34:
multu $3, $3
beq $3, $3, TAG35
lui $2, 1
subu $1, $2, $3
TAG35:
sll $0, $0, 0
addiu $4, $1, 10
mthi $1
mult $4, $1
TAG36:
mflo $3
sll $0, $0, 0
mtlo $3
bltz $3, TAG37
TAG37:
lui $1, 13
divu $1, $1
bne $1, $1, TAG38
mfhi $4
TAG38:
sh $4, 0($4)
mflo $2
lw $1, 0($4)
bltz $4, TAG39
TAG39:
mthi $1
mflo $4
multu $4, $1
mtlo $4
TAG40:
blez $4, TAG41
mthi $4
bltz $4, TAG41
lui $3, 1
TAG41:
bgtz $3, TAG42
sll $0, $0, 0
ori $2, $3, 13
lw $2, 0($3)
TAG42:
andi $2, $2, 12
mult $2, $2
add $4, $2, $2
lw $3, 0($4)
TAG43:
lui $3, 8
lui $1, 4
blez $1, TAG44
and $2, $3, $1
TAG44:
bgtz $2, TAG45
mfhi $4
mthi $2
mflo $3
TAG45:
or $1, $3, $3
mfhi $2
bgez $3, TAG46
lui $2, 5
TAG46:
mfhi $3
sh $3, 0($3)
sw $3, 0($3)
beq $2, $2, TAG47
TAG47:
sh $3, 0($3)
mflo $4
lw $1, 0($3)
bgtz $3, TAG48
TAG48:
xor $4, $1, $1
mthi $4
lui $3, 12
lhu $3, 0($4)
TAG49:
blez $3, TAG50
lui $3, 13
sltiu $4, $3, 5
beq $3, $4, TAG50
TAG50:
lui $2, 2
sllv $1, $2, $4
sll $0, $0, 0
sll $0, $0, 0
TAG51:
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG52
TAG52:
divu $2, $2
bne $2, $2, TAG53
lui $2, 11
nor $1, $2, $2
TAG53:
subu $2, $1, $1
multu $1, $2
add $1, $2, $1
lbu $4, 0($2)
TAG54:
multu $4, $4
mthi $4
beq $4, $4, TAG55
lui $4, 15
TAG55:
bne $4, $4, TAG56
sll $0, $0, 0
mflo $4
lui $3, 10
TAG56:
sll $0, $0, 0
bgez $3, TAG57
sll $0, $0, 0
mfhi $3
TAG57:
mfhi $4
sll $0, $0, 0
lhu $4, 0($4)
beq $4, $4, TAG58
TAG58:
lui $4, 4
addiu $1, $4, 14
sll $0, $0, 0
mfhi $2
TAG59:
bgtz $2, TAG60
sb $2, 0($2)
mflo $3
sw $2, 0($3)
TAG60:
sra $3, $3, 8
lui $1, 15
ori $2, $3, 0
bgez $2, TAG61
TAG61:
lui $2, 11
sll $0, $0, 0
bne $2, $2, TAG62
srl $1, $2, 5
TAG62:
or $3, $1, $1
mflo $2
sw $1, 0($2)
lh $4, -22528($3)
TAG63:
lui $4, 11
mfhi $1
nor $2, $4, $4
sll $0, $0, 0
TAG64:
bltz $4, TAG65
mtlo $4
lui $4, 14
srlv $2, $4, $4
TAG65:
divu $2, $2
mfhi $4
mthi $2
mtlo $2
TAG66:
lui $1, 11
slti $1, $4, 1
lui $3, 8
mtlo $1
TAG67:
div $3, $3
mflo $4
mthi $3
sra $2, $4, 10
TAG68:
mtlo $2
lb $4, 0($2)
mthi $4
bltz $4, TAG69
TAG69:
mthi $4
mult $4, $4
bgtz $4, TAG70
sra $3, $4, 2
TAG70:
bltz $3, TAG71
sh $3, 0($3)
lh $2, 0($3)
mult $3, $3
TAG71:
sh $2, 0($2)
mfhi $1
bgez $2, TAG72
lui $1, 11
TAG72:
lui $3, 11
addiu $2, $1, 0
mfhi $1
lhu $3, 0($1)
TAG73:
lh $2, 0($3)
bltz $2, TAG74
lb $3, 0($3)
lhu $2, 0($3)
TAG74:
add $4, $2, $2
blez $2, TAG75
srav $4, $2, $2
mfhi $4
TAG75:
multu $4, $4
lui $3, 3
mtlo $4
lui $1, 4
TAG76:
addiu $4, $1, 15
mflo $2
bltz $4, TAG77
mflo $2
TAG77:
srlv $1, $2, $2
lw $3, 0($2)
lhu $2, 0($3)
mfhi $4
TAG78:
multu $4, $4
bgtz $4, TAG79
addi $2, $4, 12
sh $2, 0($4)
TAG79:
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
divu $2, $2
TAG80:
lui $1, 0
bgtz $1, TAG81
multu $2, $1
mtlo $1
TAG81:
ori $2, $1, 14
srav $3, $2, $1
or $1, $2, $1
mtlo $1
TAG82:
sh $1, 0($1)
bltz $1, TAG83
mult $1, $1
divu $1, $1
TAG83:
lui $4, 5
xor $3, $4, $4
mthi $4
lhu $2, 0($3)
TAG84:
srlv $2, $2, $2
sb $2, 0($2)
mult $2, $2
andi $1, $2, 10
TAG85:
sh $1, 0($1)
sub $1, $1, $1
mult $1, $1
mfhi $2
TAG86:
bltz $2, TAG87
lui $1, 15
beq $2, $2, TAG87
andi $3, $1, 0
TAG87:
lui $1, 12
mthi $3
or $1, $1, $3
mfhi $1
TAG88:
lui $1, 2
mtlo $1
addiu $1, $1, 2
addiu $1, $1, 10
TAG89:
lui $1, 14
sll $1, $1, 13
sll $0, $0, 0
mflo $2
TAG90:
lui $2, 14
ori $2, $2, 14
sll $0, $0, 0
mthi $2
TAG91:
bltz $4, TAG92
mult $4, $4
mult $4, $4
mtlo $4
TAG92:
srl $4, $4, 9
lui $4, 7
sll $0, $0, 0
mflo $2
TAG93:
lui $3, 3
beq $2, $2, TAG94
mtlo $2
addi $1, $3, 13
TAG94:
slt $2, $1, $1
sra $2, $2, 9
bltz $2, TAG95
and $4, $2, $2
TAG95:
bne $4, $4, TAG96
srlv $2, $4, $4
mfhi $3
lh $1, 0($4)
TAG96:
sll $3, $1, 1
mflo $3
ori $2, $3, 10
slt $3, $3, $2
TAG97:
or $3, $3, $3
lui $3, 3
sll $0, $0, 0
sltu $4, $4, $3
TAG98:
lui $2, 2
beq $4, $4, TAG99
mthi $4
sra $2, $4, 14
TAG99:
andi $3, $2, 13
bgtz $3, TAG100
mfhi $4
sll $0, $0, 0
TAG100:
mthi $4
lui $1, 3
srl $4, $1, 4
mfhi $4
TAG101:
bne $4, $4, TAG102
sb $4, 0($4)
lbu $1, 0($4)
multu $1, $4
TAG102:
lb $2, 0($1)
lb $3, 0($2)
or $2, $2, $1
lbu $1, 0($3)
TAG103:
lui $2, 3
sra $4, $1, 15
sltu $1, $1, $1
subu $3, $1, $1
TAG104:
lui $3, 14
subu $2, $3, $3
mtlo $2
multu $2, $3
TAG105:
mflo $2
mult $2, $2
mtlo $2
sh $2, 0($2)
TAG106:
sb $2, 0($2)
mflo $1
lb $2, 0($2)
bne $2, $1, TAG107
TAG107:
multu $2, $2
beq $2, $2, TAG108
nor $3, $2, $2
beq $3, $3, TAG108
TAG108:
sb $3, 1($3)
sh $3, 1($3)
subu $3, $3, $3
mflo $2
TAG109:
lui $3, 1
sll $0, $0, 0
bltz $3, TAG110
lbu $3, 0($2)
TAG110:
subu $3, $3, $3
sltiu $3, $3, 7
bgez $3, TAG111
mflo $2
TAG111:
lw $3, 0($2)
multu $2, $2
beq $3, $2, TAG112
lui $3, 5
TAG112:
mthi $3
sll $0, $0, 0
mflo $3
mthi $3
TAG113:
multu $3, $3
mfhi $2
mfhi $3
lw $3, 0($3)
TAG114:
mthi $3
div $3, $3
mthi $3
sll $0, $0, 0
TAG115:
addiu $4, $3, 7
srl $3, $4, 10
lw $4, 0($3)
sh $3, 0($3)
TAG116:
beq $4, $4, TAG117
mthi $4
addiu $2, $4, 14
multu $4, $4
TAG117:
sw $2, 0($2)
bne $2, $2, TAG118
mfhi $1
mfhi $1
TAG118:
beq $1, $1, TAG119
lui $1, 11
lh $1, 0($1)
lh $1, 0($1)
TAG119:
sll $0, $0, 0
beq $1, $1, TAG120
sll $1, $1, 9
beq $1, $1, TAG120
TAG120:
sll $0, $0, 0
lui $4, 7
mtlo $4
sll $0, $0, 0
TAG121:
lui $2, 15
multu $2, $4
mtlo $2
sll $0, $0, 0
TAG122:
mtlo $4
addu $4, $4, $4
bne $4, $4, TAG123
subu $3, $4, $4
TAG123:
lw $1, 0($3)
mthi $1
lb $3, 0($3)
mult $3, $3
TAG124:
mflo $2
mthi $3
mtlo $2
addu $1, $3, $3
TAG125:
multu $1, $1
lui $1, 8
srlv $3, $1, $1
lui $2, 8
TAG126:
beq $2, $2, TAG127
mult $2, $2
lb $3, 0($2)
bltz $3, TAG127
TAG127:
lui $4, 0
addiu $3, $3, 7
addu $3, $4, $3
sll $3, $3, 10
TAG128:
srl $1, $3, 2
beq $1, $1, TAG129
sll $0, $0, 0
beq $2, $1, TAG129
TAG129:
and $2, $2, $2
beq $2, $2, TAG130
lui $3, 6
mfhi $3
TAG130:
bgez $3, TAG131
mflo $4
bne $3, $3, TAG131
mflo $4
TAG131:
addu $1, $4, $4
mtlo $1
lui $2, 10
blez $2, TAG132
TAG132:
sll $0, $0, 0
multu $2, $1
lui $2, 2
bgez $2, TAG133
TAG133:
sll $0, $0, 0
div $2, $2
slti $4, $2, 11
mfhi $3
TAG134:
mflo $2
bltz $2, TAG135
mflo $4
mflo $2
TAG135:
lb $1, 0($2)
beq $2, $1, TAG136
mflo $1
bne $2, $2, TAG136
TAG136:
sb $1, 0($1)
lui $4, 10
div $4, $4
lui $3, 13
TAG137:
sll $0, $0, 0
lui $4, 2
mtlo $4
divu $4, $4
TAG138:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
mult $2, $2
TAG139:
bne $4, $4, TAG140
multu $4, $4
xor $4, $4, $4
sw $4, 0($4)
TAG140:
sh $4, 0($4)
slt $1, $4, $4
mflo $4
bgez $1, TAG141
TAG141:
srl $1, $4, 4
xori $3, $1, 7
mult $3, $4
slti $2, $1, 10
TAG142:
mthi $2
mflo $2
bgtz $2, TAG143
slti $3, $2, 15
TAG143:
or $2, $3, $3
sltu $2, $3, $3
sb $3, 0($2)
bne $3, $2, TAG144
TAG144:
sllv $2, $2, $2
bne $2, $2, TAG145
addi $3, $2, 2
lui $2, 8
TAG145:
or $1, $2, $2
bltz $1, TAG146
mthi $2
beq $1, $1, TAG146
TAG146:
mflo $1
lb $1, 0($1)
beq $1, $1, TAG147
mthi $1
TAG147:
mflo $4
lui $3, 6
bltz $1, TAG148
srav $1, $1, $1
TAG148:
mult $1, $1
sh $1, 0($1)
sltiu $4, $1, 8
bgtz $1, TAG149
TAG149:
mthi $4
mtlo $4
sra $3, $4, 0
lui $4, 5
TAG150:
mtlo $4
mult $4, $4
sll $0, $0, 0
sltu $3, $2, $4
TAG151:
mult $3, $3
sh $3, 0($3)
multu $3, $3
lhu $4, 0($3)
TAG152:
mfhi $1
beq $4, $4, TAG153
addi $4, $4, 14
divu $4, $1
TAG153:
bgez $4, TAG154
divu $4, $4
bgtz $4, TAG154
srl $1, $4, 0
TAG154:
mthi $1
addiu $2, $1, 1
bne $2, $1, TAG155
sb $2, 0($2)
TAG155:
beq $2, $2, TAG156
divu $2, $2
mfhi $1
sh $2, 0($2)
TAG156:
mflo $2
mthi $1
mtlo $2
multu $2, $1
TAG157:
beq $2, $2, TAG158
slt $4, $2, $2
andi $1, $4, 6
beq $4, $4, TAG158
TAG158:
lui $3, 15
sll $0, $0, 0
sw $3, 0($1)
xori $4, $1, 12
TAG159:
div $4, $4
lui $3, 12
lui $2, 6
sw $4, 0($4)
TAG160:
sll $0, $0, 0
lui $4, 12
mthi $2
bgtz $3, TAG161
TAG161:
sll $0, $0, 0
lui $4, 15
lui $1, 11
lui $1, 9
TAG162:
lui $1, 13
mfhi $2
lui $1, 9
sltu $3, $1, $2
TAG163:
bgez $3, TAG164
slti $3, $3, 8
lui $4, 8
mfhi $4
TAG164:
sll $0, $0, 0
mtlo $4
sltiu $3, $4, 11
bne $3, $3, TAG165
TAG165:
mfhi $4
mtlo $3
sllv $2, $3, $3
bne $4, $2, TAG166
TAG166:
multu $2, $2
xori $4, $2, 3
sh $4, 0($2)
mthi $2
TAG167:
bltz $4, TAG168
addu $3, $4, $4
mult $3, $3
bne $3, $3, TAG168
TAG168:
mfhi $3
sw $3, 0($3)
mflo $2
slti $3, $2, 2
TAG169:
sh $3, 0($3)
bgez $3, TAG170
sb $3, 0($3)
lui $1, 11
TAG170:
sll $0, $0, 0
bgez $1, TAG171
sll $0, $0, 0
ori $2, $2, 3
TAG171:
mthi $2
lhu $1, 0($2)
lui $1, 1
beq $2, $1, TAG172
TAG172:
sll $0, $0, 0
sllv $4, $1, $1
sll $0, $0, 0
mtlo $1
TAG173:
bgez $4, TAG174
mtlo $4
addi $1, $4, 4
lbu $3, 0($4)
TAG174:
bgtz $3, TAG175
sw $3, 0($3)
xori $4, $3, 13
xori $2, $3, 5
TAG175:
div $2, $2
subu $3, $2, $2
mult $2, $3
bne $3, $2, TAG176
TAG176:
mfhi $4
mtlo $4
mfhi $1
or $2, $3, $1
TAG177:
lw $4, 0($2)
sb $2, 0($4)
lhu $2, 0($2)
sltu $3, $4, $2
TAG178:
lw $2, 0($3)
lh $2, 0($3)
addiu $3, $2, 8
sw $2, 0($3)
TAG179:
addiu $4, $3, 5
sb $3, 0($4)
div $4, $4
mflo $1
TAG180:
beq $1, $1, TAG181
or $3, $1, $1
mflo $1
mtlo $3
TAG181:
xor $1, $1, $1
lbu $1, 0($1)
sw $1, 0($1)
sltiu $2, $1, 15
TAG182:
div $2, $2
sb $2, 0($2)
mtlo $2
bne $2, $2, TAG183
TAG183:
mthi $2
beq $2, $2, TAG184
mflo $3
bne $2, $2, TAG184
TAG184:
lbu $2, 0($3)
lui $4, 9
mthi $2
divu $3, $3
TAG185:
bne $4, $4, TAG186
mflo $4
lui $2, 7
lui $2, 0
TAG186:
bgez $2, TAG187
multu $2, $2
bltz $2, TAG187
div $2, $2
TAG187:
lb $1, 0($2)
mult $2, $1
srlv $1, $2, $1
bne $2, $1, TAG188
TAG188:
sb $1, 0($1)
sw $1, 0($1)
mult $1, $1
lui $4, 11
TAG189:
xori $4, $4, 10
multu $4, $4
mult $4, $4
blez $4, TAG190
TAG190:
mthi $4
mult $4, $4
addiu $1, $4, 6
multu $4, $4
TAG191:
sll $0, $0, 0
srl $4, $1, 6
sll $2, $4, 9
mthi $4
TAG192:
bne $2, $2, TAG193
mtlo $2
sll $4, $2, 8
divu $4, $4
TAG193:
bltz $4, TAG194
sll $0, $0, 0
sll $0, $0, 0
lui $4, 7
TAG194:
sltiu $4, $4, 10
sltiu $1, $4, 14
mthi $4
lh $1, 0($4)
TAG195:
lui $4, 3
mtlo $4
sll $0, $0, 0
bne $1, $4, TAG196
TAG196:
addu $3, $4, $4
beq $4, $4, TAG197
mtlo $4
sll $2, $4, 10
TAG197:
bltz $2, TAG198
lui $3, 14
mtlo $2
sll $0, $0, 0
TAG198:
bgtz $4, TAG199
addu $4, $4, $4
beq $4, $4, TAG199
mthi $4
TAG199:
sra $2, $4, 11
beq $2, $2, TAG200
mthi $4
bne $2, $4, TAG200
TAG200:
mfhi $2
sll $0, $0, 0
srl $2, $2, 6
nor $3, $2, $2
TAG201:
addiu $2, $3, 8
sw $3, 6137($2)
sll $2, $2, 12
lui $3, 8
TAG202:
beq $3, $3, TAG203
sll $0, $0, 0
bltz $3, TAG203
mflo $4
TAG203:
mfhi $3
sltiu $1, $4, 10
multu $4, $3
mtlo $3
TAG204:
mthi $1
beq $1, $1, TAG205
multu $1, $1
mtlo $1
TAG205:
lui $3, 10
lui $2, 3
lui $3, 9
beq $3, $2, TAG206
TAG206:
addiu $1, $3, 1
srl $1, $1, 2
beq $1, $3, TAG207
divu $3, $3
TAG207:
lui $2, 4
sra $1, $1, 2
lui $1, 6
bgez $1, TAG208
TAG208:
mflo $4
andi $1, $1, 10
multu $1, $1
xor $1, $1, $1
TAG209:
sra $1, $1, 2
bne $1, $1, TAG210
lb $4, 0($1)
sw $1, 0($1)
TAG210:
sb $4, 1($4)
mthi $4
lui $4, 13
mult $4, $4
TAG211:
mflo $3
mflo $1
sw $3, 0($1)
mfhi $4
TAG212:
mthi $4
addiu $4, $4, 15
sltiu $4, $4, 9
beq $4, $4, TAG213
TAG213:
lb $4, 0($4)
mfhi $1
sb $4, 0($4)
mtlo $4
TAG214:
sll $0, $0, 0
lui $3, 0
mthi $4
srav $1, $1, $1
TAG215:
blez $1, TAG216
ori $2, $1, 14
multu $1, $2
bne $1, $2, TAG216
TAG216:
lui $2, 5
mthi $2
mtlo $2
slt $1, $2, $2
TAG217:
mult $1, $1
lw $2, 0($1)
mthi $1
sb $2, 0($1)
TAG218:
sub $3, $2, $2
sb $3, 0($2)
srlv $1, $3, $2
sb $1, 0($1)
TAG219:
sh $1, 0($1)
mflo $2
multu $1, $1
blez $1, TAG220
TAG220:
lw $3, 0($2)
sw $2, 0($2)
sll $2, $2, 11
mult $2, $3
TAG221:
blez $2, TAG222
lh $1, 0($2)
mult $1, $2
mthi $1
TAG222:
mfhi $1
multu $1, $1
blez $1, TAG223
addi $4, $1, 13
TAG223:
bne $4, $4, TAG224
div $4, $4
lui $1, 8
sb $4, 0($4)
TAG224:
beq $1, $1, TAG225
sll $0, $0, 0
lh $1, 0($1)
bgtz $1, TAG225
TAG225:
lui $3, 0
bgez $3, TAG226
sll $0, $0, 0
div $3, $1
TAG226:
sh $3, 0($3)
mult $3, $3
bne $3, $3, TAG227
mthi $3
TAG227:
lui $3, 8
mult $3, $3
lui $1, 4
sll $0, $0, 0
TAG228:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
multu $2, $1
TAG229:
bne $2, $2, TAG230
srav $2, $2, $2
sltu $4, $2, $2
mult $2, $2
TAG230:
lb $4, 0($4)
lui $4, 8
divu $4, $4
sll $0, $0, 0
TAG231:
lui $1, 1
bltz $1, TAG232
sltu $3, $1, $4
nor $1, $4, $4
TAG232:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG233:
slti $2, $4, 10
bltz $2, TAG234
sllv $3, $4, $4
lui $2, 13
TAG234:
subu $4, $2, $2
mtlo $2
lui $1, 6
bgez $4, TAG235
TAG235:
sll $0, $0, 0
sll $0, $0, 0
slt $4, $1, $1
mfhi $2
TAG236:
bne $2, $2, TAG237
mtlo $2
lhu $1, 0($2)
multu $1, $2
TAG237:
xor $2, $1, $1
addiu $4, $1, 6
mflo $4
lui $1, 4
TAG238:
lui $1, 5
sll $0, $0, 0
bltz $1, TAG239
andi $3, $1, 0
TAG239:
bgez $3, TAG240
slti $1, $3, 10
bltz $3, TAG240
sh $1, 0($1)
TAG240:
addiu $1, $1, 14
divu $1, $1
mthi $1
beq $1, $1, TAG241
TAG241:
addu $4, $1, $1
div $1, $1
slt $3, $4, $4
mult $1, $4
TAG242:
xor $1, $3, $3
lw $4, 0($3)
ori $1, $4, 0
mfhi $4
TAG243:
mflo $1
lui $2, 2
mthi $4
blez $2, TAG244
TAG244:
sll $0, $0, 0
xor $2, $3, $2
subu $4, $3, $2
mfhi $4
TAG245:
sw $4, 0($4)
mflo $1
sh $4, 0($4)
mult $1, $1
TAG246:
mult $1, $1
xori $2, $1, 10
bltz $1, TAG247
lui $1, 9
TAG247:
mtlo $1
sll $0, $0, 0
sb $1, -456($2)
bne $2, $2, TAG248
TAG248:
divu $2, $2
addu $2, $2, $2
mflo $2
sltu $3, $2, $2
TAG249:
nor $1, $3, $3
sll $4, $3, 7
mult $4, $4
sw $1, 1($1)
TAG250:
sb $4, 0($4)
sw $4, 0($4)
sw $4, 0($4)
sltu $4, $4, $4
TAG251:
multu $4, $4
srav $3, $4, $4
addiu $1, $3, 9
add $3, $4, $3
TAG252:
mfhi $3
slt $3, $3, $3
mthi $3
lui $4, 8
TAG253:
bgez $4, TAG254
div $4, $4
multu $4, $4
beq $4, $4, TAG254
TAG254:
divu $4, $4
beq $4, $4, TAG255
sllv $3, $4, $4
lui $3, 13
TAG255:
sll $0, $0, 0
sllv $3, $3, $3
mtlo $3
sll $0, $0, 0
TAG256:
multu $3, $3
subu $4, $3, $3
sll $0, $0, 0
multu $3, $3
TAG257:
addu $1, $4, $4
mthi $4
sltiu $1, $1, 14
lbu $2, 0($1)
TAG258:
bne $2, $2, TAG259
mthi $2
sltu $3, $2, $2
mtlo $3
TAG259:
blez $3, TAG260
subu $3, $3, $3
beq $3, $3, TAG260
divu $3, $3
TAG260:
lui $1, 0
lbu $2, 0($3)
lui $2, 7
bgtz $2, TAG261
TAG261:
div $2, $2
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
TAG262:
sltiu $1, $2, 15
mthi $2
blez $2, TAG263
subu $4, $2, $2
TAG263:
mtlo $4
ori $2, $4, 13
mult $2, $4
addiu $4, $2, 2
TAG264:
bltz $4, TAG265
slti $2, $4, 15
sh $4, 0($2)
lw $2, 0($2)
TAG265:
lui $3, 11
divu $2, $3
div $2, $3
lui $2, 0
TAG266:
sb $2, 0($2)
beq $2, $2, TAG267
mthi $2
srlv $3, $2, $2
TAG267:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 14
multu $2, $2
TAG268:
bltz $2, TAG269
mflo $4
sll $0, $0, 0
bne $4, $2, TAG269
TAG269:
mflo $1
sb $1, 0($1)
add $4, $1, $3
mflo $2
TAG270:
mtlo $2
mflo $4
mflo $4
multu $4, $2
TAG271:
sh $4, 0($4)
sh $4, 0($4)
sh $4, 0($4)
sw $4, 0($4)
TAG272:
lui $2, 10
lui $1, 5
mult $2, $4
blez $4, TAG273
TAG273:
sll $0, $0, 0
divu $1, $1
bgez $1, TAG274
andi $4, $1, 9
TAG274:
subu $4, $4, $4
lui $3, 3
multu $3, $4
srav $1, $4, $3
TAG275:
mtlo $1
sh $1, 0($1)
bne $1, $1, TAG276
lui $4, 4
TAG276:
lui $1, 9
sll $0, $0, 0
bne $4, $1, TAG277
mult $4, $4
TAG277:
andi $2, $4, 7
bgez $4, TAG278
divu $2, $4
lw $4, 0($2)
TAG278:
sra $2, $4, 13
subu $2, $4, $4
andi $1, $4, 3
xor $1, $4, $1
TAG279:
mflo $3
bgtz $1, TAG280
mult $1, $3
sb $1, 0($3)
TAG280:
mtlo $3
slti $3, $3, 10
bgtz $3, TAG281
mflo $2
TAG281:
lw $4, 0($2)
mthi $2
mflo $2
mthi $2
TAG282:
lbu $3, 0($2)
srlv $4, $3, $3
mtlo $3
bne $3, $3, TAG283
TAG283:
mthi $4
lui $3, 10
mflo $1
bgez $3, TAG284
TAG284:
multu $1, $1
blez $1, TAG285
lw $1, 0($1)
mtlo $1
TAG285:
mflo $4
lh $4, 0($4)
mult $1, $1
mult $4, $1
TAG286:
sll $2, $4, 1
mthi $2
sw $4, 0($4)
beq $4, $4, TAG287
TAG287:
mflo $3
sw $2, 0($2)
mfhi $2
mthi $2
TAG288:
addiu $2, $2, 14
bgez $2, TAG289
nor $2, $2, $2
bne $2, $2, TAG289
TAG289:
sw $2, 15($2)
sh $2, 15($2)
beq $2, $2, TAG290
lui $1, 6
TAG290:
mfhi $4
div $4, $1
sllv $4, $4, $1
lh $2, 0($4)
TAG291:
ori $4, $2, 9
lhu $2, 7($4)
slti $1, $4, 13
andi $2, $2, 0
TAG292:
mthi $2
slti $2, $2, 0
multu $2, $2
lw $1, 0($2)
TAG293:
lui $4, 5
beq $4, $1, TAG294
lui $1, 2
multu $4, $1
TAG294:
slti $2, $1, 15
or $4, $1, $2
beq $4, $1, TAG295
sll $1, $4, 12
TAG295:
mfhi $3
bgez $1, TAG296
mtlo $3
sw $1, 0($3)
TAG296:
mtlo $3
lh $4, 0($3)
lui $2, 9
sll $0, $0, 0
TAG297:
mtlo $2
bgtz $2, TAG298
mfhi $1
srl $3, $1, 11
TAG298:
srlv $2, $3, $3
sb $3, 0($2)
multu $3, $2
sw $2, 0($2)
TAG299:
lb $4, 0($2)
mfhi $2
srlv $2, $2, $4
sh $2, 0($2)
TAG300:
nor $3, $2, $2
mthi $2
bgez $3, TAG301
lui $4, 15
TAG301:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
slti $1, $4, 13
TAG302:
addiu $4, $1, 6
mfhi $1
bgtz $1, TAG303
slt $3, $1, $1
TAG303:
multu $3, $3
multu $3, $3
lui $1, 8
lui $2, 4
TAG304:
mfhi $2
sltu $3, $2, $2
mtlo $3
sw $2, 0($2)
TAG305:
lui $4, 7
mflo $1
blez $3, TAG306
lb $3, 0($3)
TAG306:
sh $3, 0($3)
sb $3, 0($3)
mfhi $4
addi $2, $4, 8
TAG307:
div $2, $2
sh $2, 0($2)
or $1, $2, $2
addiu $3, $1, 11
TAG308:
divu $3, $3
mtlo $3
sb $3, 0($3)
mtlo $3
TAG309:
lui $2, 12
addu $2, $3, $2
bltz $3, TAG310
sll $0, $0, 0
TAG310:
sll $0, $0, 0
mtlo $4
blez $2, TAG311
lw $3, 0($4)
TAG311:
mfhi $1
mult $3, $1
lbu $2, 0($1)
lui $3, 10
TAG312:
bgtz $3, TAG313
nor $3, $3, $3
bne $3, $3, TAG313
lb $3, 0($3)
TAG313:
mthi $3
sll $0, $0, 0
lui $2, 0
sll $0, $0, 0
TAG314:
addu $1, $2, $2
multu $1, $2
mthi $2
bne $2, $2, TAG315
TAG315:
lw $1, 0($1)
lh $3, 0($1)
beq $1, $3, TAG316
sltiu $1, $3, 15
TAG316:
lui $2, 8
mfhi $3
lui $3, 7
bne $3, $3, TAG317
TAG317:
lui $1, 4
and $2, $3, $3
bltz $3, TAG318
mtlo $2
TAG318:
xori $3, $2, 8
bgtz $3, TAG319
addiu $4, $2, 3
lhu $4, 0($4)
TAG319:
slti $1, $4, 15
slti $3, $4, 12
lui $4, 8
mfhi $1
TAG320:
mtlo $1
mtlo $1
beq $1, $1, TAG321
sh $1, 0($1)
TAG321:
lui $3, 2
mflo $1
sllv $4, $1, $1
mflo $2
TAG322:
subu $3, $2, $2
lui $2, 12
addiu $3, $2, 4
lui $3, 12
TAG323:
multu $3, $3
sll $0, $0, 0
divu $4, $3
srlv $2, $4, $4
TAG324:
bgtz $2, TAG325
lhu $2, 0($2)
mult $2, $2
mthi $2
TAG325:
mflo $2
sltiu $3, $2, 15
lui $2, 14
mfhi $1
TAG326:
mflo $2
mtlo $2
sh $1, 0($1)
lhu $3, 0($1)
TAG327:
addi $3, $3, 11
beq $3, $3, TAG328
lui $1, 13
lui $1, 2
TAG328:
mtlo $1
beq $1, $1, TAG329
subu $1, $1, $1
subu $3, $1, $1
TAG329:
mthi $3
bltz $3, TAG330
slti $3, $3, 15
sltiu $2, $3, 2
TAG330:
slt $1, $2, $2
mflo $1
mflo $2
sll $0, $0, 0
TAG331:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
srlv $4, $2, $2
TAG332:
sll $0, $0, 0
lui $1, 9
beq $4, $4, TAG333
mtlo $1
TAG333:
divu $1, $1
lui $3, 11
mtlo $1
mflo $3
TAG334:
mthi $3
beq $3, $3, TAG335
sll $0, $0, 0
lb $1, 0($3)
TAG335:
multu $1, $1
mult $1, $1
sll $0, $0, 0
mthi $1
TAG336:
blez $1, TAG337
xori $4, $1, 14
sll $0, $0, 0
mtlo $1
TAG337:
beq $1, $1, TAG338
sll $0, $0, 0
lui $2, 5
bne $1, $1, TAG338
TAG338:
addu $4, $2, $2
beq $2, $4, TAG339
mtlo $2
bgtz $4, TAG339
TAG339:
addiu $1, $4, 4
mtlo $1
sll $0, $0, 0
sllv $2, $1, $4
TAG340:
divu $2, $2
mult $2, $2
divu $2, $2
sll $0, $0, 0
TAG341:
mfhi $3
mult $3, $2
mfhi $4
mtlo $4
TAG342:
sll $3, $4, 12
lui $4, 2
beq $3, $4, TAG343
mfhi $4
TAG343:
blez $4, TAG344
mflo $1
mthi $4
sb $1, 0($4)
TAG344:
mult $1, $1
mult $1, $1
mthi $1
mult $1, $1
TAG345:
subu $1, $1, $1
sw $1, 0($1)
slti $3, $1, 3
beq $3, $1, TAG346
TAG346:
mflo $4
mflo $4
mult $4, $4
sb $3, 0($3)
TAG347:
lui $1, 9
subu $4, $4, $1
div $1, $4
blez $1, TAG348
TAG348:
multu $4, $4
mtlo $4
sll $0, $0, 0
beq $3, $3, TAG349
TAG349:
mflo $2
bne $2, $3, TAG350
sll $0, $0, 0
mfhi $4
TAG350:
bgtz $4, TAG351
mthi $4
sll $0, $0, 0
sll $2, $3, 9
TAG351:
bne $2, $2, TAG352
lh $3, -512($2)
blez $2, TAG352
sh $2, -256($3)
TAG352:
div $3, $3
bgez $3, TAG353
div $3, $3
lw $4, 0($3)
TAG353:
bltz $4, TAG354
mthi $4
blez $4, TAG354
mtlo $4
TAG354:
bne $4, $4, TAG355
sll $0, $0, 0
bgtz $4, TAG355
slti $2, $4, 5
TAG355:
div $2, $2
mtlo $2
bne $2, $2, TAG356
slti $2, $2, 4
TAG356:
lui $2, 13
xori $3, $2, 9
lui $4, 14
srlv $2, $4, $2
TAG357:
srl $3, $2, 8
srl $2, $2, 5
beq $3, $2, TAG358
lb $3, -28672($2)
TAG358:
add $1, $3, $3
mfhi $4
mult $1, $3
slt $2, $3, $3
TAG359:
mult $2, $2
lbu $4, 0($2)
srl $2, $2, 2
lui $3, 6
TAG360:
divu $3, $3
mult $3, $3
bne $3, $3, TAG361
ori $2, $3, 12
TAG361:
srl $4, $2, 6
beq $4, $4, TAG362
mthi $4
mflo $4
TAG362:
beq $4, $4, TAG363
mfhi $3
bltz $4, TAG363
lui $4, 14
TAG363:
sll $0, $0, 0
bgtz $4, TAG364
addu $1, $4, $4
bgtz $4, TAG364
TAG364:
multu $1, $1
sltiu $1, $1, 14
mthi $1
and $3, $1, $1
TAG365:
sltu $3, $3, $3
mtlo $3
andi $4, $3, 3
sw $3, 0($3)
TAG366:
addiu $1, $4, 10
lhu $4, 0($4)
addiu $1, $4, 0
bltz $4, TAG367
TAG367:
srav $3, $1, $1
sb $1, 0($3)
mflo $3
mflo $4
TAG368:
lui $1, 7
mtlo $4
mfhi $1
mult $1, $4
TAG369:
mflo $1
and $1, $1, $1
mfhi $3
mult $3, $1
TAG370:
lhu $3, 0($3)
lhu $1, 0($3)
multu $3, $1
sra $1, $1, 0
TAG371:
mfhi $2
lhu $2, 0($1)
mflo $1
mult $2, $2
TAG372:
sb $1, 0($1)
lb $3, 0($1)
bgtz $3, TAG373
srlv $3, $3, $1
TAG373:
sb $3, 0($3)
bne $3, $3, TAG374
lhu $3, 0($3)
mfhi $2
TAG374:
sb $2, 0($2)
sh $2, 0($2)
sw $2, 0($2)
bgtz $2, TAG375
TAG375:
sb $2, 0($2)
sw $2, 0($2)
srav $1, $2, $2
mflo $1
TAG376:
mflo $2
mthi $1
lui $1, 11
lui $3, 6
TAG377:
sll $0, $0, 0
addu $4, $3, $3
sll $0, $0, 0
sllv $2, $1, $2
TAG378:
slt $4, $2, $2
bgez $4, TAG379
mfhi $2
div $2, $4
TAG379:
mfhi $1
or $2, $1, $2
mthi $2
beq $2, $1, TAG380
TAG380:
slti $3, $2, 9
bne $2, $3, TAG381
lbu $3, 0($3)
srl $1, $3, 10
TAG381:
sltiu $4, $1, 8
mflo $4
bne $1, $4, TAG382
mflo $2
TAG382:
mult $2, $2
addiu $2, $2, 5
and $1, $2, $2
bgez $1, TAG383
TAG383:
div $1, $1
blez $1, TAG384
lui $1, 7
mthi $1
TAG384:
sltiu $3, $1, 13
mfhi $4
bltz $1, TAG385
divu $1, $4
TAG385:
sll $0, $0, 0
srav $2, $3, $3
lui $1, 15
sll $0, $0, 0
TAG386:
bgez $1, TAG387
xor $3, $1, $1
sw $3, 0($3)
lb $4, 0($1)
TAG387:
blez $4, TAG388
sll $0, $0, 0
mfhi $2
bne $4, $2, TAG388
TAG388:
lui $4, 13
mfhi $4
mfhi $3
mfhi $3
TAG389:
mfhi $2
lb $4, 0($3)
multu $3, $2
lui $3, 7
TAG390:
mult $3, $3
mult $3, $3
bgez $3, TAG391
addiu $2, $3, 14
TAG391:
lui $2, 10
sll $0, $0, 0
mult $2, $2
lui $4, 9
TAG392:
bne $4, $4, TAG393
lui $2, 15
lui $3, 12
srav $4, $4, $3
TAG393:
beq $4, $4, TAG394
ori $2, $4, 3
div $4, $4
lui $2, 0
TAG394:
slt $2, $2, $2
subu $3, $2, $2
ori $1, $2, 2
sra $1, $3, 0
TAG395:
beq $1, $1, TAG396
multu $1, $1
lui $2, 14
slti $1, $1, 13
TAG396:
lbu $1, 0($1)
beq $1, $1, TAG397
srl $2, $1, 13
div $1, $1
TAG397:
lh $3, 0($2)
sh $3, 0($2)
mflo $1
lui $1, 6
TAG398:
sll $0, $0, 0
subu $2, $1, $1
mfhi $1
bgez $2, TAG399
TAG399:
mtlo $1
mtlo $1
lui $4, 3
mflo $3
TAG400:
sb $3, 0($3)
or $4, $3, $3
sllv $2, $4, $4
sll $1, $4, 9
TAG401:
beq $1, $1, TAG402
sw $1, 0($1)
multu $1, $1
sw $1, 0($1)
TAG402:
lui $4, 10
mthi $1
mflo $2
addi $3, $2, 15
TAG403:
sb $3, 0($3)
mflo $2
sra $3, $2, 4
sw $2, 0($3)
TAG404:
addiu $4, $3, 12
beq $4, $4, TAG405
lui $1, 13
xori $3, $3, 3
TAG405:
bltz $3, TAG406
mthi $3
beq $3, $3, TAG406
mult $3, $3
TAG406:
sub $4, $3, $3
sltu $3, $3, $4
add $4, $4, $3
lui $3, 0
TAG407:
mfhi $3
lui $4, 2
bne $4, $4, TAG408
subu $4, $3, $4
TAG408:
multu $4, $4
sra $4, $4, 6
sb $4, 2048($4)
lui $3, 3
TAG409:
sll $0, $0, 0
lui $2, 2
sh $4, 2048($4)
sll $0, $0, 0
TAG410:
mtlo $2
sll $0, $0, 0
subu $2, $2, $2
mtlo $2
TAG411:
mtlo $2
lbu $1, 0($2)
bgtz $2, TAG412
mflo $2
TAG412:
lui $2, 14
mfhi $3
sll $0, $0, 0
subu $2, $2, $3
TAG413:
bne $2, $2, TAG414
xor $4, $2, $2
sb $2, 0($4)
divu $2, $2
TAG414:
addiu $3, $4, 7
bne $3, $3, TAG415
sb $3, 0($3)
blez $3, TAG415
TAG415:
mthi $3
lbu $2, 0($3)
lbu $1, 0($2)
lbu $4, 0($1)
TAG416:
lui $2, 14
mfhi $3
mthi $4
lui $3, 1
TAG417:
bgez $3, TAG418
sll $0, $0, 0
bgez $3, TAG418
lui $4, 7
TAG418:
mflo $2
mthi $4
sltiu $4, $4, 2
lui $3, 10
TAG419:
bne $3, $3, TAG420
xor $2, $3, $3
andi $2, $2, 7
mflo $1
TAG420:
beq $1, $1, TAG421
lui $4, 12
or $4, $1, $1
mthi $4
TAG421:
beq $4, $4, TAG422
lui $3, 12
bne $3, $3, TAG422
lui $2, 5
TAG422:
bgez $2, TAG423
lui $1, 10
beq $2, $2, TAG423
lui $3, 14
TAG423:
mflo $1
lui $1, 13
sll $0, $0, 0
mfhi $2
TAG424:
mfhi $2
slti $3, $2, 10
lbu $3, 0($2)
blez $3, TAG425
TAG425:
multu $3, $3
lb $4, 0($3)
bgez $4, TAG426
mfhi $1
TAG426:
lb $1, 0($1)
lw $2, 4($1)
mthi $1
lui $4, 3
TAG427:
srav $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
srl $3, $4, 3
TAG428:
bgtz $3, TAG429
mfhi $1
bltz $1, TAG429
mult $3, $3
TAG429:
sll $0, $0, 0
mfhi $2
addiu $1, $2, 6
mfhi $3
TAG430:
mthi $3
lb $3, 4($3)
nor $1, $3, $3
sw $3, 4($3)
TAG431:
addiu $1, $1, 15
mult $1, $1
mthi $1
bgtz $1, TAG432
TAG432:
lbu $3, 0($1)
lbu $2, 0($3)
div $3, $1
sb $3, 0($3)
TAG433:
sb $2, -252($2)
lui $1, 6
slti $4, $1, 3
mult $4, $4
TAG434:
mflo $3
mtlo $3
bgez $4, TAG435
lh $1, 0($4)
TAG435:
mtlo $1
lui $3, 15
lui $3, 1
lui $2, 8
TAG436:
sll $0, $0, 0
mfhi $1
lui $1, 10
bne $2, $1, TAG437
TAG437:
sll $0, $0, 0
blez $1, TAG438
multu $1, $1
mfhi $3
TAG438:
lui $1, 7
bltz $3, TAG439
addiu $3, $1, 11
srl $3, $3, 2
TAG439:
slt $3, $3, $3
lh $2, 0($3)
lbu $3, 0($3)
lb $1, -252($3)
TAG440:
sll $0, $0, 0
beq $1, $1, TAG441
div $1, $1
sh $1, 0($1)
TAG441:
mthi $1
sb $1, 4($1)
mthi $1
sb $1, 4($1)
TAG442:
lui $4, 7
and $1, $1, $1
mflo $3
mtlo $1
TAG443:
mthi $3
bne $3, $3, TAG444
mfhi $2
lui $3, 8
TAG444:
multu $3, $3
slt $1, $3, $3
addiu $1, $1, 1
bgtz $3, TAG445
TAG445:
lui $3, 13
sra $2, $3, 4
blez $2, TAG446
sll $0, $0, 0
TAG446:
sll $0, $0, 0
mtlo $3
mult $3, $3
sll $4, $3, 6
TAG447:
mthi $4
sll $0, $0, 0
bne $4, $4, TAG448
sll $0, $0, 0
TAG448:
sll $0, $0, 0
sra $4, $4, 6
lui $2, 5
lui $1, 10
TAG449:
mtlo $1
beq $1, $1, TAG450
lui $1, 8
mthi $1
TAG450:
sll $0, $0, 0
sll $0, $0, 0
nor $1, $1, $1
lui $2, 0
TAG451:
multu $2, $2
srl $2, $2, 0
lbu $4, 0($2)
beq $2, $2, TAG452
TAG452:
mtlo $4
sh $4, -252($4)
sll $3, $4, 4
sltu $4, $4, $3
TAG453:
lui $1, 14
lui $2, 8
bne $2, $2, TAG454
sll $0, $0, 0
TAG454:
andi $2, $2, 9
sh $2, 0($2)
beq $2, $2, TAG455
lui $4, 7
TAG455:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
divu $3, $4
TAG456:
blez $4, TAG457
mtlo $4
sltu $4, $4, $4
lui $3, 10
TAG457:
mult $3, $3
beq $3, $3, TAG458
mtlo $3
lbu $2, 0($3)
TAG458:
mthi $2
mthi $2
bgez $2, TAG459
sltiu $4, $2, 5
TAG459:
subu $1, $4, $4
bne $1, $1, TAG460
lui $2, 9
lui $3, 6
TAG460:
blez $3, TAG461
or $3, $3, $3
bne $3, $3, TAG461
nor $1, $3, $3
TAG461:
divu $1, $1
sll $0, $0, 0
mthi $3
bne $1, $1, TAG462
TAG462:
andi $3, $3, 15
srl $2, $3, 3
bltz $2, TAG463
sb $3, 0($3)
TAG463:
addu $4, $2, $2
multu $2, $4
lbu $2, 0($2)
lbu $4, 0($2)
TAG464:
lui $1, 3
bgez $1, TAG465
sll $0, $0, 0
mfhi $2
TAG465:
beq $2, $2, TAG466
multu $2, $2
mthi $2
beq $2, $2, TAG466
TAG466:
subu $1, $2, $2
mthi $2
mthi $1
multu $1, $1
TAG467:
nor $1, $1, $1
lui $2, 13
beq $2, $2, TAG468
addiu $3, $2, 0
TAG468:
bltz $3, TAG469
mthi $3
addiu $2, $3, 7
beq $3, $3, TAG469
TAG469:
sll $0, $0, 0
subu $3, $3, $3
bne $2, $3, TAG470
mfhi $1
TAG470:
lui $4, 7
andi $1, $1, 3
mult $1, $1
bne $1, $4, TAG471
TAG471:
lhu $1, 0($1)
sw $1, 0($1)
lui $1, 15
bgez $1, TAG472
TAG472:
mthi $1
mflo $1
lui $3, 13
bgtz $3, TAG473
TAG473:
andi $3, $3, 5
mtlo $3
beq $3, $3, TAG474
addi $1, $3, 3
TAG474:
mthi $1
mfhi $2
bgtz $1, TAG475
mtlo $2
TAG475:
mfhi $2
lb $4, 0($2)
sw $2, 0($4)
bltz $2, TAG476
TAG476:
mtlo $4
mflo $1
mtlo $4
lui $4, 0
TAG477:
srav $4, $4, $4
mtlo $4
bne $4, $4, TAG478
lh $4, 0($4)
TAG478:
lui $3, 6
sll $0, $0, 0
lb $3, 0($4)
mfhi $1
TAG479:
mflo $3
beq $3, $1, TAG480
slt $2, $3, $1
lhu $3, 0($3)
TAG480:
multu $3, $3
mthi $3
bgez $3, TAG481
lui $2, 3
TAG481:
bltz $2, TAG482
mtlo $2
mflo $4
mtlo $4
TAG482:
mfhi $2
bne $2, $2, TAG483
sll $0, $0, 0
lbu $4, 0($2)
TAG483:
mult $4, $4
mflo $3
sw $4, 0($4)
beq $4, $3, TAG484
TAG484:
lh $1, 0($3)
mtlo $1
lui $2, 5
blez $3, TAG485
TAG485:
lui $1, 9
mflo $2
mfhi $2
andi $2, $2, 8
TAG486:
lui $1, 2
mthi $2
bne $2, $2, TAG487
divu $1, $1
TAG487:
bltz $1, TAG488
sll $0, $0, 0
mfhi $2
lui $1, 0
TAG488:
lw $4, 0($1)
lui $2, 2
mult $4, $1
mult $1, $2
TAG489:
sll $0, $0, 0
mult $2, $2
sltu $3, $2, $2
mflo $1
TAG490:
lb $4, 0($1)
bltz $4, TAG491
mtlo $1
mthi $4
TAG491:
beq $4, $4, TAG492
mfhi $4
bne $4, $4, TAG492
lw $3, 0($4)
TAG492:
bgtz $3, TAG493
lui $4, 7
mtlo $3
mthi $4
TAG493:
beq $4, $4, TAG494
andi $1, $4, 15
mult $4, $4
lui $3, 13
TAG494:
mthi $3
beq $3, $3, TAG495
mflo $3
mfhi $4
TAG495:
sll $0, $0, 0
mthi $4
beq $4, $4, TAG496
lui $4, 1
TAG496:
bne $4, $4, TAG497
lui $3, 7
lui $1, 8
slt $3, $3, $4
TAG497:
blez $3, TAG498
lui $2, 15
bltz $3, TAG498
sh $3, 0($3)
TAG498:
subu $1, $2, $2
srav $1, $1, $2
div $1, $2
sb $2, 0($1)
TAG499:
mflo $2
blez $1, TAG500
lui $1, 15
divu $1, $1
TAG500:
andi $3, $1, 5
sll $0, $0, 0
lui $1, 14
bltz $1, TAG501
TAG501:
multu $1, $1
blez $1, TAG502
sra $2, $1, 12
mfhi $3
TAG502:
mtlo $3
lui $2, 1
sll $0, $0, 0
mtlo $2
TAG503:
sll $0, $0, 0
mthi $2
lui $2, 2
mflo $3
TAG504:
beq $3, $3, TAG505
lui $3, 11
bgez $3, TAG505
lui $3, 11
TAG505:
bltz $3, TAG506
mfhi $1
sll $0, $0, 0
mtlo $3
TAG506:
mult $1, $1
mtlo $1
beq $1, $1, TAG507
sll $0, $0, 0
TAG507:
lui $4, 2
slt $2, $1, $4
divu $2, $2
subu $1, $4, $1
TAG508:
multu $1, $1
srav $1, $1, $1
sll $0, $0, 0
sll $3, $1, 2
TAG509:
and $1, $3, $3
mfhi $1
mtlo $1
sll $0, $0, 0
TAG510:
blez $1, TAG511
lbu $4, 0($1)
lb $2, 0($4)
mult $1, $4
TAG511:
xor $3, $2, $2
bne $3, $3, TAG512
lui $4, 6
multu $3, $3
TAG512:
sll $0, $0, 0
mfhi $2
slti $3, $4, 2
mtlo $3
TAG513:
lbu $4, 0($3)
mfhi $4
beq $4, $4, TAG514
mfhi $1
TAG514:
mthi $1
mthi $1
sw $1, 0($1)
mflo $1
TAG515:
bltz $1, TAG516
slti $1, $1, 2
mfhi $4
sb $1, 0($1)
TAG516:
multu $4, $4
sw $4, 0($4)
mtlo $4
mtlo $4
TAG517:
blez $4, TAG518
slti $4, $4, 13
sw $4, 0($4)
mflo $3
TAG518:
multu $3, $3
bgez $3, TAG519
mtlo $3
multu $3, $3
TAG519:
bne $3, $3, TAG520
lb $2, 0($3)
bne $3, $3, TAG520
andi $3, $2, 14
TAG520:
bne $3, $3, TAG521
lui $2, 1
lbu $1, 0($3)
beq $3, $1, TAG521
TAG521:
lui $1, 11
lui $3, 6
mfhi $2
mfhi $2
TAG522:
nor $4, $2, $2
multu $4, $2
multu $4, $2
beq $4, $2, TAG523
TAG523:
addu $3, $4, $4
srl $3, $4, 11
mflo $2
srl $2, $3, 5
TAG524:
divu $2, $2
lui $1, 4
sll $0, $0, 0
lui $4, 4
TAG525:
blez $4, TAG526
mflo $1
bne $4, $4, TAG526
mfhi $1
TAG526:
sll $3, $1, 8
lh $1, 0($3)
blez $1, TAG527
mthi $1
TAG527:
sb $1, 0($1)
mtlo $1
blez $1, TAG528
multu $1, $1
TAG528:
lw $3, 0($1)
mthi $1
add $2, $1, $3
sh $1, 0($2)
TAG529:
add $2, $2, $2
mult $2, $2
beq $2, $2, TAG530
sw $2, 0($2)
TAG530:
lh $1, 0($2)
subu $2, $1, $1
addi $3, $2, 1
mtlo $2
TAG531:
lui $1, 0
bne $3, $3, TAG532
lui $4, 11
bltz $3, TAG532
TAG532:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
beq $4, $4, TAG533
TAG533:
lui $1, 8
mflo $2
beq $1, $2, TAG534
mfhi $3
TAG534:
sh $3, 0($3)
addiu $2, $3, 9
bgtz $2, TAG535
mtlo $3
TAG535:
mthi $2
divu $2, $2
bne $2, $2, TAG536
srlv $3, $2, $2
TAG536:
bltz $3, TAG537
mthi $3
bne $3, $3, TAG537
multu $3, $3
TAG537:
mflo $3
xor $1, $3, $3
mtlo $1
and $3, $3, $1
TAG538:
andi $4, $3, 15
lhu $1, 0($4)
multu $1, $4
multu $4, $4
TAG539:
andi $2, $1, 10
multu $2, $2
sb $2, 0($2)
lw $1, 0($2)
TAG540:
sub $3, $1, $1
sh $3, 0($3)
mfhi $2
lui $4, 10
TAG541:
and $2, $4, $4
beq $4, $4, TAG542
sllv $2, $4, $2
beq $2, $2, TAG542
TAG542:
srl $2, $2, 5
mflo $1
mthi $2
bgez $2, TAG543
TAG543:
mult $1, $1
bltz $1, TAG544
lhu $2, 0($1)
multu $1, $1
TAG544:
lui $4, 4
blez $2, TAG545
lui $3, 15
lui $1, 2
TAG545:
mflo $4
sw $1, 0($1)
mfhi $2
andi $1, $1, 6
TAG546:
mflo $3
blez $1, TAG547
sra $3, $1, 0
sb $3, 0($1)
TAG547:
nor $3, $3, $3
addiu $1, $3, 7
bne $3, $3, TAG548
sh $3, 0($1)
TAG548:
lui $2, 13
bne $2, $1, TAG549
mflo $1
bltz $1, TAG549
TAG549:
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
sw $1, 1($3)
TAG550:
lui $3, 8
mtlo $3
ori $2, $3, 9
divu $3, $2
TAG551:
srav $4, $2, $2
srav $2, $2, $4
beq $2, $2, TAG552
divu $4, $2
TAG552:
mtlo $2
sra $4, $2, 13
divu $2, $4
beq $2, $4, TAG553
TAG553:
mflo $2
sh $2, 0($4)
sll $3, $4, 12
beq $2, $4, TAG554
TAG554:
sll $0, $0, 0
srl $4, $3, 9
mthi $4
lui $3, 3
TAG555:
bgez $3, TAG556
div $3, $3
mfhi $1
addu $4, $1, $3
TAG556:
sra $2, $4, 15
slti $2, $4, 10
bltz $2, TAG557
mult $2, $4
TAG557:
bltz $2, TAG558
mflo $1
add $1, $2, $2
lui $2, 7
TAG558:
sll $1, $2, 11
lui $3, 3
or $4, $2, $3
bltz $4, TAG559
TAG559:
lui $4, 8
sll $0, $0, 0
sll $0, $0, 0
xori $4, $4, 12
TAG560:
mthi $4
and $3, $4, $4
mtlo $4
sllv $1, $4, $3
TAG561:
bltz $1, TAG562
mult $1, $1
sb $1, 0($1)
sw $1, 0($1)
TAG562:
sll $0, $0, 0
sll $0, $0, 0
srav $4, $1, $1
blez $4, TAG563
TAG563:
mfhi $4
mfhi $3
mflo $2
lui $4, 10
TAG564:
mult $4, $4
sll $0, $0, 0
mflo $3
sltu $3, $4, $4
TAG565:
mflo $4
mult $4, $4
bgez $3, TAG566
multu $3, $3
TAG566:
lui $2, 4
beq $4, $2, TAG567
sw $2, 0($4)
mfhi $2
TAG567:
lui $4, 3
addiu $3, $2, 14
blez $3, TAG568
lbu $2, 0($2)
TAG568:
addi $2, $2, 7
sb $2, 0($2)
slti $4, $2, 9
bltz $2, TAG569
TAG569:
lb $2, 0($4)
lui $2, 3
addu $4, $4, $4
sll $0, $0, 0
TAG570:
lui $4, 8
slti $4, $3, 2
blez $3, TAG571
subu $2, $3, $3
TAG571:
bne $2, $2, TAG572
mult $2, $2
mult $2, $2
srlv $1, $2, $2
TAG572:
bne $1, $1, TAG573
lw $4, 0($1)
mfhi $3
bltz $4, TAG573
TAG573:
mflo $2
beq $2, $2, TAG574
mflo $2
mthi $2
TAG574:
sw $2, 0($2)
bgez $2, TAG575
mflo $2
sll $2, $2, 3
TAG575:
lui $2, 13
xor $3, $2, $2
addiu $4, $2, 1
bne $4, $3, TAG576
TAG576:
mtlo $4
andi $3, $4, 3
lui $1, 6
lui $1, 6
TAG577:
mflo $1
mtlo $1
mult $1, $1
mflo $3
TAG578:
mfhi $1
sltiu $2, $1, 0
sw $3, -169($1)
div $2, $1
TAG579:
bgez $2, TAG580
lui $1, 6
subu $1, $2, $1
bgtz $1, TAG580
TAG580:
mthi $1
mfhi $1
mult $1, $1
subu $3, $1, $1
TAG581:
bne $3, $3, TAG582
mthi $3
mthi $3
sh $3, 0($3)
TAG582:
mthi $3
beq $3, $3, TAG583
sw $3, 0($3)
mult $3, $3
TAG583:
beq $3, $3, TAG584
lui $3, 0
mflo $1
beq $3, $1, TAG584
TAG584:
lui $3, 3
lui $4, 10
beq $4, $3, TAG585
sll $0, $0, 0
TAG585:
sll $0, $0, 0
addu $3, $4, $1
lui $4, 10
sll $0, $0, 0
TAG586:
mflo $3
lhu $2, 0($3)
ori $1, $3, 3
lui $4, 14
TAG587:
div $4, $4
mfhi $4
mflo $4
sb $4, 0($4)
TAG588:
mtlo $4
sra $1, $4, 12
bgez $1, TAG589
sb $1, 0($4)
TAG589:
mtlo $1
sh $1, 0($1)
beq $1, $1, TAG590
mult $1, $1
TAG590:
xori $2, $1, 9
mfhi $2
sll $3, $1, 8
bgez $3, TAG591
TAG591:
sh $3, 0($3)
bltz $3, TAG592
mfhi $2
srlv $2, $3, $3
TAG592:
lh $3, 0($2)
xor $1, $2, $2
sra $2, $2, 7
slt $1, $2, $2
TAG593:
sll $1, $1, 12
mtlo $1
mtlo $1
multu $1, $1
TAG594:
lui $3, 2
mthi $1
sll $0, $0, 0
sll $1, $3, 13
TAG595:
subu $4, $1, $1
xori $3, $4, 8
sll $3, $4, 9
mfhi $1
TAG596:
mfhi $3
beq $3, $3, TAG597
sw $3, 0($3)
slti $3, $3, 1
TAG597:
sh $3, 0($3)
multu $3, $3
sll $1, $3, 13
lui $1, 5
TAG598:
lui $2, 1
xor $1, $1, $1
sh $1, 0($1)
lh $2, 0($1)
TAG599:
bne $2, $2, TAG600
multu $2, $2
lui $4, 1
lui $2, 15
TAG600:
mfhi $3
multu $2, $2
beq $2, $2, TAG601
lui $4, 9
TAG601:
divu $4, $4
xor $1, $4, $4
mfhi $3
addiu $1, $1, 15
TAG602:
bgez $1, TAG603
div $1, $1
beq $1, $1, TAG603
lh $4, 0($1)
TAG603:
lui $1, 13
mthi $4
mthi $1
or $2, $4, $4
TAG604:
multu $2, $2
lui $2, 10
lui $4, 8
subu $1, $2, $2
TAG605:
mflo $3
sh $3, 0($1)
bne $3, $1, TAG606
lhu $4, 0($1)
TAG606:
mfhi $3
sb $3, 0($3)
lb $2, 0($3)
beq $4, $4, TAG607
TAG607:
lui $4, 15
lui $3, 8
beq $3, $2, TAG608
multu $3, $3
TAG608:
bne $3, $3, TAG609
sll $0, $0, 0
lui $3, 2
div $3, $3
TAG609:
srav $3, $3, $3
mthi $3
nor $3, $3, $3
sll $0, $0, 0
TAG610:
bgtz $3, TAG611
lui $1, 5
div $3, $1
mthi $3
TAG611:
sllv $4, $1, $1
mthi $4
sltu $4, $4, $1
xori $3, $1, 10
TAG612:
div $3, $3
bgtz $3, TAG613
sll $0, $0, 0
bne $3, $3, TAG613
TAG613:
mfhi $4
mflo $4
beq $3, $4, TAG614
multu $3, $4
TAG614:
sb $4, 0($4)
blez $4, TAG615
ori $3, $4, 13
mthi $3
TAG615:
or $1, $3, $3
srav $3, $1, $1
beq $3, $1, TAG616
div $1, $1
TAG616:
multu $3, $3
sh $3, 0($3)
multu $3, $3
mfhi $1
TAG617:
mfhi $4
mflo $4
mthi $4
lbu $1, 0($4)
TAG618:
lhu $1, 0($1)
blez $1, TAG619
addiu $4, $1, 2
srav $3, $4, $1
TAG619:
lw $1, 0($3)
mflo $1
srlv $3, $1, $1
sh $3, 0($3)
TAG620:
mult $3, $3
sh $3, 0($3)
and $1, $3, $3
lui $2, 13
TAG621:
bne $2, $2, TAG622
sll $0, $0, 0
sll $0, $0, 0
subu $1, $3, $3
TAG622:
bgez $1, TAG623
xori $4, $1, 7
mfhi $3
beq $1, $4, TAG623
TAG623:
mthi $3
multu $3, $3
sh $3, 0($3)
sw $3, 0($3)
TAG624:
bne $3, $3, TAG625
mfhi $4
lui $2, 2
beq $3, $3, TAG625
TAG625:
addu $4, $2, $2
addiu $3, $4, 11
mtlo $2
sll $0, $0, 0
TAG626:
addiu $4, $2, 2
mfhi $4
sw $4, 0($4)
mfhi $2
TAG627:
sw $2, 0($2)
slt $4, $2, $2
lw $4, 0($2)
mfhi $2
TAG628:
lhu $3, 0($2)
srl $3, $3, 4
bgez $3, TAG629
mthi $2
TAG629:
lui $3, 9
sll $0, $0, 0
mtlo $3
lui $2, 7
TAG630:
mflo $4
lui $3, 5
beq $3, $3, TAG631
sll $0, $0, 0
TAG631:
divu $3, $3
lui $3, 15
bgtz $3, TAG632
multu $3, $3
TAG632:
andi $2, $3, 14
sll $0, $0, 0
mthi $2
lui $2, 7
TAG633:
bgtz $2, TAG634
multu $2, $2
mthi $2
nor $1, $2, $2
TAG634:
sll $1, $1, 15
sltu $4, $1, $1
mflo $2
lui $3, 12
TAG635:
mult $3, $3
bne $3, $3, TAG636
lui $4, 0
mtlo $3
TAG636:
mthi $4
lui $4, 9
mflo $2
sra $1, $4, 4
TAG637:
mthi $1
beq $1, $1, TAG638
andi $4, $1, 3
multu $1, $1
TAG638:
xori $1, $4, 13
addu $3, $1, $4
and $3, $4, $1
sra $4, $3, 1
TAG639:
sh $4, 0($4)
lui $4, 12
mfhi $2
nor $1, $4, $4
TAG640:
subu $1, $1, $1
lh $3, 0($1)
bltz $1, TAG641
srl $1, $1, 2
TAG641:
multu $1, $1
andi $3, $1, 7
mflo $2
lui $3, 8
TAG642:
mult $3, $3
bne $3, $3, TAG643
sll $0, $0, 0
lui $1, 4
TAG643:
bltz $1, TAG644
lui $1, 2
sll $0, $0, 0
mflo $1
TAG644:
add $4, $1, $1
multu $1, $1
beq $1, $1, TAG645
multu $4, $1
TAG645:
lhu $3, 0($4)
mult $4, $3
bgtz $4, TAG646
or $3, $4, $3
TAG646:
lui $3, 2
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG647:
multu $2, $2
mflo $3
srl $1, $2, 3
bltz $1, TAG648
TAG648:
mfhi $3
slti $3, $3, 12
lui $3, 14
sll $0, $0, 0
TAG649:
mthi $3
mtlo $3
bltz $3, TAG650
mtlo $3
TAG650:
bltz $3, TAG651
srlv $1, $3, $3
lui $2, 9
sltiu $1, $1, 4
TAG651:
bne $1, $1, TAG652
lui $4, 5
blez $1, TAG652
lhu $2, 0($1)
TAG652:
subu $2, $2, $2
srav $3, $2, $2
bne $2, $2, TAG653
lui $2, 4
TAG653:
bltz $2, TAG654
mtlo $2
subu $3, $2, $2
mflo $1
TAG654:
div $1, $1
srl $1, $1, 0
bne $1, $1, TAG655
xori $4, $1, 10
TAG655:
beq $4, $4, TAG656
srlv $1, $4, $4
sltiu $2, $4, 8
sllv $2, $2, $4
TAG656:
slti $4, $2, 13
sll $0, $0, 0
beq $2, $4, TAG657
multu $2, $2
TAG657:
mfhi $3
addu $1, $3, $4
lui $4, 15
lw $2, 0($1)
TAG658:
mthi $2
sll $0, $0, 0
srl $2, $2, 14
sh $2, -19456($2)
TAG659:
blez $2, TAG660
sra $2, $2, 14
and $3, $2, $2
addu $1, $2, $2
TAG660:
div $1, $1
bne $1, $1, TAG661
sh $1, 0($1)
bgtz $1, TAG661
TAG661:
sh $1, 0($1)
xori $4, $1, 5
andi $2, $4, 4
sllv $4, $4, $2
TAG662:
mfhi $2
bltz $4, TAG663
lhu $3, 0($4)
mult $4, $2
TAG663:
ori $4, $3, 13
andi $1, $4, 11
mthi $4
lb $2, 0($4)
TAG664:
lbu $2, 0($2)
addiu $2, $2, 6
mult $2, $2
lui $1, 12
TAG665:
or $2, $1, $1
lui $2, 9
nor $4, $2, $2
sll $0, $0, 0
TAG666:
mfhi $2
or $2, $2, $2
lui $2, 3
bltz $2, TAG667
TAG667:
mfhi $1
mthi $2
mthi $2
beq $2, $1, TAG668
TAG668:
lb $1, 0($1)
sll $1, $1, 3
lhu $1, 0($1)
blez $1, TAG669
TAG669:
sh $1, -19456($1)
bltz $1, TAG670
sh $1, -19456($1)
bgtz $1, TAG670
TAG670:
sll $0, $0, 0
beq $4, $1, TAG671
subu $1, $1, $4
blez $4, TAG671
TAG671:
mtlo $1
lui $3, 14
bltz $1, TAG672
lui $2, 3
TAG672:
sra $2, $2, 0
addiu $1, $2, 15
sll $0, $0, 0
sll $0, $0, 0
TAG673:
xor $1, $1, $1
mtlo $1
bgez $1, TAG674
lui $2, 3
TAG674:
beq $2, $2, TAG675
sll $0, $0, 0
lhu $1, 0($2)
multu $2, $1
TAG675:
beq $1, $1, TAG676
mult $1, $1
mfhi $1
bgtz $1, TAG676
TAG676:
sll $2, $1, 15
sb $2, 0($1)
mult $1, $1
mthi $1
TAG677:
lui $1, 1
srl $3, $1, 7
mthi $2
lhu $3, 0($2)
TAG678:
mfhi $3
bne $3, $3, TAG679
lui $4, 4
sra $4, $3, 1
TAG679:
mflo $3
lh $3, 0($3)
bltz $3, TAG680
ori $2, $3, 2
TAG680:
mtlo $2
bgtz $2, TAG681
lw $4, -19458($2)
sb $4, 0($4)
TAG681:
sll $0, $0, 0
mthi $4
blez $4, TAG682
sll $0, $0, 0
TAG682:
or $1, $3, $3
mflo $4
bgtz $1, TAG683
lui $4, 10
TAG683:
lui $1, 1
xor $2, $1, $4
blez $4, TAG684
mthi $4
TAG684:
bltz $2, TAG685
lui $4, 1
lui $4, 4
bltz $4, TAG685
TAG685:
mtlo $4
mtlo $4
mflo $1
sll $0, $0, 0
TAG686:
subu $4, $1, $1
mfhi $2
sll $0, $0, 0
divu $2, $2
TAG687:
divu $2, $2
lui $2, 1
sll $0, $0, 0
bltz $2, TAG688
TAG688:
addu $2, $2, $2
mtlo $2
lui $4, 2
sra $2, $4, 8
TAG689:
sll $0, $0, 0
mflo $2
lui $3, 0
mtlo $2
TAG690:
bgez $3, TAG691
sllv $3, $3, $3
add $3, $3, $3
bne $3, $3, TAG691
TAG691:
sh $3, 0($3)
bltz $3, TAG692
mthi $3
mflo $4
TAG692:
divu $4, $4
sll $1, $4, 14
sll $0, $0, 0
bne $4, $1, TAG693
TAG693:
slti $3, $2, 5
lui $2, 0
sh $2, 0($2)
sw $2, 0($3)
TAG694:
mfhi $3
mtlo $3
lhu $1, 0($3)
lui $1, 10
TAG695:
beq $1, $1, TAG696
lui $3, 1
xori $3, $1, 8
sh $1, 0($3)
TAG696:
bgtz $3, TAG697
sll $0, $0, 0
bne $3, $3, TAG697
sh $3, 0($3)
TAG697:
xori $3, $3, 15
sra $3, $3, 8
mtlo $3
mtlo $3
TAG698:
lui $2, 10
and $3, $3, $3
mult $2, $2
blez $3, TAG699
TAG699:
lui $2, 0
divu $3, $3
bltz $2, TAG700
sw $2, -256($3)
TAG700:
mthi $2
multu $2, $2
srl $1, $2, 2
add $4, $1, $2
TAG701:
multu $4, $4
lui $2, 3
lui $2, 11
sra $2, $4, 8
TAG702:
sb $2, 0($2)
bne $2, $2, TAG703
lw $2, 0($2)
multu $2, $2
TAG703:
lui $4, 8
sh $2, 0($2)
srl $3, $4, 10
mflo $4
TAG704:
lui $3, 10
div $3, $3
bne $3, $4, TAG705
nor $4, $4, $4
TAG705:
sll $0, $0, 0
subu $4, $4, $2
mflo $3
blez $4, TAG706
TAG706:
slt $2, $3, $3
beq $2, $2, TAG707
mthi $2
lui $1, 6
TAG707:
bltz $1, TAG708
mfhi $3
bgez $1, TAG708
lhu $1, 0($1)
TAG708:
mult $1, $1
sb $1, 0($1)
lui $4, 12
lui $4, 8
TAG709:
mfhi $4
lui $4, 3
sll $0, $0, 0
sltiu $3, $4, 3
TAG710:
multu $3, $3
lbu $3, 0($3)
mflo $1
lui $2, 0
TAG711:
lh $3, 0($2)
bgez $3, TAG712
srlv $3, $2, $2
beq $3, $3, TAG712
TAG712:
mfhi $3
blez $3, TAG713
mflo $4
ori $1, $4, 10
TAG713:
lh $3, 0($1)
bltz $1, TAG714
lui $3, 14
multu $3, $3
TAG714:
addu $1, $3, $3
sll $0, $0, 0
sll $2, $3, 0
sll $0, $0, 0
TAG715:
subu $3, $2, $2
sll $0, $0, 0
mtlo $2
lui $1, 5
TAG716:
sll $0, $0, 0
srl $4, $1, 9
andi $2, $1, 9
sll $0, $0, 0
TAG717:
sb $4, -640($4)
lw $4, -640($4)
bgtz $4, TAG718
srav $2, $4, $4
TAG718:
blez $2, TAG719
lb $2, 0($2)
bne $2, $2, TAG719
andi $1, $2, 7
TAG719:
mult $1, $1
sltiu $2, $1, 6
lui $2, 4
lui $3, 14
TAG720:
sll $0, $0, 0
lui $1, 6
mfhi $1
sll $2, $1, 6
TAG721:
lh $2, 0($2)
bltz $2, TAG722
lhu $2, 0($2)
bgez $2, TAG722
TAG722:
sll $2, $2, 5
blez $2, TAG723
sub $3, $2, $2
mflo $3
TAG723:
lui $2, 2
mult $3, $3
lui $3, 10
addiu $1, $2, 15
TAG724:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 4
beq $1, $1, TAG725
TAG725:
sll $0, $0, 0
mfhi $1
srlv $4, $4, $4
blez $4, TAG726
TAG726:
sll $0, $0, 0
lui $2, 2
blez $4, TAG727
ori $2, $4, 5
TAG727:
sll $0, $0, 0
bltz $2, TAG728
div $2, $2
bne $2, $2, TAG728
TAG728:
sll $0, $0, 0
bgez $2, TAG729
sll $0, $0, 0
bgtz $4, TAG729
TAG729:
sll $0, $0, 0
sltu $2, $1, $4
srl $1, $4, 12
mflo $1
TAG730:
bgez $1, TAG731
sb $1, 0($1)
mfhi $1
mthi $1
TAG731:
blez $1, TAG732
sb $1, 0($1)
nor $4, $1, $1
mtlo $4
TAG732:
sll $0, $0, 0
bne $1, $4, TAG733
lw $1, 2($4)
mflo $2
TAG733:
lb $3, 0($2)
mfhi $2
blez $2, TAG734
mthi $3
TAG734:
mtlo $2
lui $1, 13
mthi $1
lui $3, 3
TAG735:
addiu $3, $3, 14
mfhi $3
mthi $3
lui $2, 10
TAG736:
div $2, $2
sll $0, $0, 0
subu $1, $2, $2
mult $1, $2
TAG737:
sb $1, 0($1)
add $3, $1, $1
lui $3, 4
bgez $3, TAG738
TAG738:
lui $1, 13
bltz $1, TAG739
srl $1, $3, 6
addu $1, $1, $1
TAG739:
sb $1, -8192($1)
srl $3, $1, 1
beq $3, $1, TAG740
lhu $3, -4096($3)
TAG740:
nor $3, $3, $3
divu $3, $3
mult $3, $3
sb $3, 257($3)
TAG741:
sll $0, $0, 0
bne $3, $3, TAG742
sb $3, 257($3)
bne $2, $2, TAG742
TAG742:
lui $4, 4
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG743:
bltz $4, TAG744
mflo $4
mult $4, $4
sll $0, $0, 0
TAG744:
andi $3, $1, 0
mfhi $3
addiu $4, $3, 15
divu $3, $3
TAG745:
multu $4, $4
srlv $3, $4, $4
lw $3, 0($4)
sll $0, $0, 0
TAG746:
mult $1, $1
lw $1, -8192($1)
lb $3, -511($1)
beq $3, $1, TAG747
TAG747:
sltu $1, $3, $3
beq $3, $1, TAG748
mflo $4
srlv $1, $3, $4
TAG748:
sltu $2, $1, $1
blez $1, TAG749
slti $1, $1, 11
lui $2, 4
TAG749:
mtlo $2
mtlo $2
beq $2, $2, TAG750
multu $2, $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop