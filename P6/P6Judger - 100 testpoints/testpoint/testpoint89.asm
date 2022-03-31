ori $1, $0, 9
ori $2, $0, 7
ori $3, $0, 2
ori $4, $0, 5
sw $3, 0($0)
sw $2, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $3, 44($0)
sw $1, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $2, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $1, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $2, 124($0)
bgez $2, TAG1
sb $2, 0($2)
sra $2, $2, 7
lw $2, 0($2)
TAG1:
sll $1, $2, 4
mfhi $3
mfhi $4
mtlo $2
TAG2:
mfhi $4
beq $4, $4, TAG3
mfhi $1
bltz $4, TAG3
TAG3:
sll $1, $1, 12
mthi $1
mtlo $1
mult $1, $1
TAG4:
beq $1, $1, TAG5
sb $1, 0($1)
lui $3, 4
sh $3, 0($1)
TAG5:
lui $3, 2
srl $1, $3, 2
mthi $3
lui $1, 3
TAG6:
lui $2, 2
mthi $2
beq $2, $2, TAG7
srl $1, $2, 12
TAG7:
srlv $4, $1, $1
subu $2, $4, $4
multu $4, $2
sll $1, $1, 10
TAG8:
addiu $4, $1, 4
bne $4, $1, TAG9
sll $0, $0, 0
lw $1, 0($1)
TAG9:
mult $1, $1
multu $1, $1
mthi $1
sll $0, $0, 0
TAG10:
sll $0, $0, 0
lui $1, 5
blez $4, TAG11
mult $1, $4
TAG11:
mtlo $1
sltu $4, $1, $1
beq $1, $1, TAG12
xor $3, $4, $1
TAG12:
mthi $3
blez $3, TAG13
sll $0, $0, 0
lb $3, 0($4)
TAG13:
mflo $1
sll $2, $1, 14
sll $0, $0, 0
bltz $2, TAG14
TAG14:
sllv $1, $2, $2
or $4, $1, $1
bne $2, $1, TAG15
lui $4, 5
TAG15:
or $3, $4, $4
beq $4, $4, TAG16
addiu $3, $4, 5
mfhi $1
TAG16:
lui $2, 5
divu $1, $1
sll $0, $0, 0
bgez $1, TAG17
TAG17:
or $3, $2, $2
multu $3, $3
div $2, $3
subu $2, $3, $3
TAG18:
lui $4, 11
bgtz $4, TAG19
add $3, $2, $4
bltz $3, TAG19
TAG19:
slti $3, $3, 2
lui $4, 12
bne $3, $3, TAG20
lui $4, 7
TAG20:
mflo $3
bne $4, $4, TAG21
sb $3, 0($3)
addiu $1, $3, 14
TAG21:
sltu $2, $1, $1
mtlo $1
lh $4, 0($2)
nor $1, $2, $4
TAG22:
srl $3, $1, 1
bne $3, $1, TAG23
mthi $3
or $4, $1, $1
TAG23:
bltz $4, TAG24
sb $4, -256($4)
mflo $3
mult $3, $4
TAG24:
mtlo $3
lbu $3, 0($3)
lui $4, 1
lui $3, 4
TAG25:
mflo $1
blez $3, TAG26
addu $2, $3, $3
mflo $3
TAG26:
mflo $4
beq $3, $3, TAG27
mult $4, $4
ori $4, $4, 14
TAG27:
lbu $2, 0($4)
sb $2, 0($4)
lui $4, 1
sll $0, $0, 0
TAG28:
blez $4, TAG29
sll $0, $0, 0
xor $2, $4, $4
sll $0, $0, 0
TAG29:
subu $1, $2, $2
sh $1, 0($1)
lbu $2, 0($2)
bgtz $1, TAG30
TAG30:
mult $2, $2
sub $3, $2, $2
multu $2, $3
bgez $2, TAG31
TAG31:
addiu $3, $3, 9
mflo $4
sh $3, 0($3)
mult $3, $4
TAG32:
blez $4, TAG33
mult $4, $4
lw $4, 0($4)
beq $4, $4, TAG33
TAG33:
lw $4, 0($4)
beq $4, $4, TAG34
mfhi $4
add $4, $4, $4
TAG34:
lui $2, 14
sll $3, $4, 15
slti $3, $2, 5
sb $3, 0($3)
TAG35:
subu $2, $3, $3
bltz $3, TAG36
sh $3, 0($2)
beq $3, $3, TAG36
TAG36:
mflo $2
sh $2, 0($2)
sb $2, 0($2)
addi $4, $2, 10
TAG37:
sltu $2, $4, $4
beq $4, $2, TAG38
mfhi $2
mthi $2
TAG38:
beq $2, $2, TAG39
sh $2, 0($2)
divu $2, $2
sw $2, 0($2)
TAG39:
lb $4, 0($2)
mtlo $4
mtlo $4
and $1, $2, $4
TAG40:
mfhi $1
mthi $1
mfhi $2
mtlo $2
TAG41:
mthi $2
lui $2, 15
blez $2, TAG42
mfhi $2
TAG42:
mflo $2
mtlo $2
mult $2, $2
bltz $2, TAG43
TAG43:
mflo $1
lbu $3, 0($1)
lui $4, 2
sh $2, 0($2)
TAG44:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG45
andi $2, $4, 11
TAG45:
ori $4, $2, 13
lui $3, 6
slti $4, $2, 6
lui $2, 1
TAG46:
lui $1, 10
sll $3, $2, 9
xori $1, $1, 15
lui $4, 1
TAG47:
sll $0, $0, 0
mflo $1
divu $1, $1
nor $4, $4, $1
TAG48:
slti $1, $4, 13
mflo $3
sll $0, $0, 0
or $3, $4, $3
TAG49:
beq $3, $3, TAG50
mtlo $3
mult $3, $3
multu $3, $3
TAG50:
slti $1, $3, 1
multu $3, $3
lui $1, 13
mflo $2
TAG51:
bne $2, $2, TAG52
lui $1, 7
mflo $2
sll $0, $0, 0
TAG52:
sll $0, $0, 0
bgez $1, TAG53
sllv $1, $1, $1
mtlo $1
TAG53:
addu $3, $1, $1
bgtz $3, TAG54
div $3, $1
bgez $3, TAG54
TAG54:
subu $2, $3, $3
lui $4, 7
srav $3, $3, $3
lb $3, 0($2)
TAG55:
mfhi $1
bne $3, $1, TAG56
mthi $1
mfhi $3
TAG56:
mthi $3
bne $3, $3, TAG57
multu $3, $3
sb $3, 0($3)
TAG57:
beq $3, $3, TAG58
sra $1, $3, 13
xor $2, $3, $3
mfhi $2
TAG58:
sra $3, $2, 2
multu $3, $2
beq $2, $2, TAG59
lb $2, 0($3)
TAG59:
srl $1, $2, 13
sh $1, 0($1)
lui $4, 13
bne $2, $1, TAG60
TAG60:
sllv $3, $4, $4
sll $0, $0, 0
mfhi $1
lui $3, 6
TAG61:
subu $2, $3, $3
xor $1, $2, $2
sh $3, 0($1)
blez $3, TAG62
TAG62:
mult $1, $1
mfhi $1
mthi $1
lbu $3, 0($1)
TAG63:
lui $2, 9
xor $4, $2, $3
mtlo $2
beq $2, $2, TAG64
TAG64:
mult $4, $4
beq $4, $4, TAG65
sll $0, $0, 0
bne $4, $4, TAG65
TAG65:
lui $3, 0
multu $3, $3
sll $0, $0, 0
div $3, $4
TAG66:
beq $4, $4, TAG67
srlv $4, $4, $4
divu $4, $4
blez $4, TAG67
TAG67:
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
sra $4, $3, 6
TAG68:
sllv $3, $4, $4
div $4, $4
beq $3, $3, TAG69
lhu $3, -3072($4)
TAG69:
lui $1, 15
sll $0, $0, 0
multu $1, $1
addu $4, $1, $1
TAG70:
bltz $4, TAG71
lui $3, 6
sll $3, $3, 10
addiu $2, $3, 14
TAG71:
div $2, $2
divu $2, $2
mthi $2
divu $2, $2
TAG72:
beq $2, $2, TAG73
sltu $2, $2, $2
div $2, $2
sw $2, 0($2)
TAG73:
or $4, $2, $2
sllv $1, $4, $4
beq $4, $1, TAG74
or $4, $4, $1
TAG74:
mtlo $4
bne $4, $4, TAG75
mtlo $4
mthi $4
TAG75:
xor $1, $4, $4
sb $4, 0($1)
bgez $1, TAG76
mult $4, $1
TAG76:
mfhi $4
bne $4, $1, TAG77
lb $3, 0($1)
mfhi $4
TAG77:
mflo $3
mult $4, $3
blez $4, TAG78
sltiu $3, $4, 10
TAG78:
addiu $1, $3, 0
mtlo $3
sltiu $1, $1, 15
sb $1, 0($1)
TAG79:
beq $1, $1, TAG80
slti $4, $1, 2
bltz $4, TAG80
lui $1, 11
TAG80:
mthi $1
lb $2, 0($1)
srav $1, $1, $2
sltu $2, $1, $1
TAG81:
sw $2, 0($2)
sb $2, 0($2)
sllv $3, $2, $2
lui $4, 13
TAG82:
bltz $4, TAG83
sll $0, $0, 0
mult $2, $4
bgez $2, TAG83
TAG83:
mfhi $1
beq $2, $2, TAG84
andi $2, $1, 14
sh $2, 0($2)
TAG84:
srl $3, $2, 12
lui $4, 12
divu $3, $4
sll $0, $0, 0
TAG85:
bne $4, $4, TAG86
sll $0, $0, 0
lui $3, 6
blez $3, TAG86
TAG86:
div $3, $3
and $4, $3, $3
and $1, $3, $3
bltz $1, TAG87
TAG87:
mtlo $1
mflo $4
divu $1, $4
ori $2, $4, 12
TAG88:
lui $1, 13
lui $4, 7
lui $3, 10
sll $0, $0, 0
TAG89:
mthi $3
mflo $4
lui $1, 4
or $2, $1, $3
TAG90:
lui $2, 12
slt $3, $2, $2
lui $3, 2
sll $0, $0, 0
TAG91:
mthi $1
mult $1, $1
sll $0, $0, 0
mfhi $2
TAG92:
slt $3, $2, $2
ori $1, $2, 7
mult $3, $2
sh $1, 0($2)
TAG93:
mfhi $3
lui $4, 8
mfhi $2
bgtz $3, TAG94
TAG94:
sw $2, 0($2)
sltu $4, $2, $2
sra $3, $2, 10
lui $2, 4
TAG95:
xor $4, $2, $2
divu $2, $2
multu $4, $2
bltz $2, TAG96
TAG96:
mflo $2
mthi $4
blez $2, TAG97
sll $1, $4, 7
TAG97:
mult $1, $1
mfhi $4
mfhi $2
bne $4, $1, TAG98
TAG98:
lui $1, 2
lw $3, 0($2)
div $1, $1
srlv $4, $1, $1
TAG99:
beq $4, $4, TAG100
slti $1, $4, 5
sw $1, 0($4)
divu $1, $4
TAG100:
lbu $4, 0($1)
mthi $1
lui $1, 9
mfhi $4
TAG101:
mult $4, $4
lui $3, 5
mthi $3
mult $4, $4
TAG102:
bne $3, $3, TAG103
sll $0, $0, 0
lui $4, 14
sll $0, $0, 0
TAG103:
mthi $4
bgez $4, TAG104
xori $1, $4, 2
sh $4, 0($1)
TAG104:
lui $2, 6
lui $3, 5
mflo $2
sb $1, 0($2)
TAG105:
addiu $2, $2, 2
addiu $4, $2, 14
addu $3, $4, $4
mflo $4
TAG106:
lh $2, 0($4)
bgtz $2, TAG107
sb $4, 0($2)
mthi $4
TAG107:
mthi $2
mflo $2
mult $2, $2
lui $2, 14
TAG108:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG109:
bltz $2, TAG110
sll $0, $0, 0
bne $2, $2, TAG110
sll $0, $0, 0
TAG110:
sll $0, $0, 0
lui $3, 15
mtlo $2
mthi $2
TAG111:
mtlo $3
sll $3, $3, 7
bgez $3, TAG112
divu $3, $3
TAG112:
beq $3, $3, TAG113
sltu $2, $3, $3
lui $1, 15
mthi $2
TAG113:
ori $2, $1, 12
mult $2, $1
mtlo $2
or $4, $2, $2
TAG114:
div $4, $4
xori $3, $4, 6
mflo $1
divu $3, $4
TAG115:
lbu $3, 0($1)
addiu $4, $1, 0
lui $1, 14
beq $1, $1, TAG116
TAG116:
sllv $1, $1, $1
addu $3, $1, $1
addiu $4, $1, 13
lui $4, 11
TAG117:
addu $1, $4, $4
and $1, $1, $4
srlv $3, $1, $4
mfhi $2
TAG118:
mthi $2
sll $0, $0, 0
beq $2, $2, TAG119
lui $3, 13
TAG119:
sll $4, $3, 1
mfhi $1
sll $0, $0, 0
sll $3, $4, 4
TAG120:
sll $0, $0, 0
subu $4, $3, $3
sll $0, $0, 0
sb $3, 0($4)
TAG121:
mult $4, $4
sb $4, 0($4)
mflo $4
mthi $4
TAG122:
bne $4, $4, TAG123
xor $3, $4, $4
mthi $3
multu $3, $4
TAG123:
mfhi $4
subu $1, $3, $4
lhu $4, 0($4)
ori $4, $3, 1
TAG124:
bgtz $4, TAG125
mult $4, $4
beq $4, $4, TAG125
multu $4, $4
TAG125:
lb $4, 0($4)
bltz $4, TAG126
lw $1, 0($4)
mthi $1
TAG126:
multu $1, $1
mtlo $1
mflo $2
xori $4, $2, 7
TAG127:
lbu $2, 0($4)
blez $4, TAG128
lb $2, 0($4)
srl $4, $2, 3
TAG128:
mthi $4
mflo $2
lui $1, 0
sw $4, 0($1)
TAG129:
multu $1, $1
beq $1, $1, TAG130
ori $1, $1, 5
mflo $1
TAG130:
mthi $1
slt $1, $1, $1
lui $2, 2
mult $1, $1
TAG131:
sra $3, $2, 12
sll $0, $0, 0
bne $2, $2, TAG132
mtlo $2
TAG132:
sltu $1, $2, $2
sll $3, $2, 13
mfhi $2
bltz $2, TAG133
TAG133:
addi $4, $2, 7
and $4, $4, $2
lui $4, 0
lui $2, 0
TAG134:
mtlo $2
add $4, $2, $2
or $2, $2, $2
blez $2, TAG135
TAG135:
lh $4, 0($2)
mthi $2
mflo $4
beq $4, $4, TAG136
TAG136:
lui $3, 5
sll $0, $0, 0
mtlo $3
lui $1, 6
TAG137:
mtlo $1
bne $1, $1, TAG138
addiu $1, $1, 0
addu $3, $1, $1
TAG138:
sll $0, $0, 0
div $3, $3
mtlo $3
sllv $3, $3, $3
TAG139:
blez $3, TAG140
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG140:
mtlo $3
mfhi $1
lb $4, 0($1)
lui $2, 1
TAG141:
lui $4, 10
sll $0, $0, 0
mtlo $2
divu $2, $2
TAG142:
slti $3, $4, 12
lui $1, 0
bgez $1, TAG143
sh $4, 0($3)
TAG143:
mtlo $1
sllv $4, $1, $1
lui $3, 2
and $4, $4, $4
TAG144:
bltz $4, TAG145
lh $3, 0($4)
lhu $1, 0($3)
mflo $3
TAG145:
bne $3, $3, TAG146
mtlo $3
sh $3, 0($3)
sh $3, 0($3)
TAG146:
mflo $1
multu $1, $1
lhu $1, 0($1)
beq $3, $1, TAG147
TAG147:
sh $1, 0($1)
lbu $2, 0($1)
sh $2, 0($2)
bne $1, $1, TAG148
TAG148:
mtlo $2
bgez $2, TAG149
multu $2, $2
mfhi $4
TAG149:
sltu $2, $4, $4
srav $3, $4, $4
bgez $4, TAG150
multu $2, $2
TAG150:
srl $2, $3, 8
xor $2, $3, $2
bgez $2, TAG151
nor $3, $3, $2
TAG151:
mfhi $3
mflo $4
sb $3, 0($4)
lw $2, 0($4)
TAG152:
mflo $4
bne $4, $4, TAG153
lbu $1, 0($2)
mflo $1
TAG153:
sltu $4, $1, $1
lui $1, 10
beq $1, $1, TAG154
mfhi $3
TAG154:
sh $3, 0($3)
bgez $3, TAG155
lui $4, 14
beq $3, $4, TAG155
TAG155:
or $2, $4, $4
sra $3, $2, 3
mthi $2
lui $2, 11
TAG156:
divu $2, $2
sll $0, $0, 0
mfhi $1
mflo $3
TAG157:
lb $4, 0($3)
lui $2, 10
lui $4, 4
mfhi $3
TAG158:
blez $3, TAG159
mfhi $1
srl $4, $1, 3
sw $1, 0($4)
TAG159:
xor $4, $4, $4
multu $4, $4
mfhi $4
blez $4, TAG160
TAG160:
addu $4, $4, $4
sw $4, 0($4)
lw $2, 0($4)
and $4, $4, $2
TAG161:
mflo $2
and $3, $2, $4
mtlo $4
multu $2, $3
TAG162:
mtlo $3
mtlo $3
addu $2, $3, $3
lh $3, 0($3)
TAG163:
mflo $3
lui $1, 15
subu $3, $3, $1
beq $3, $3, TAG164
TAG164:
sll $0, $0, 0
sll $0, $0, 0
or $3, $3, $4
mflo $4
TAG165:
lui $1, 11
bne $1, $4, TAG166
lui $4, 4
bgtz $1, TAG166
TAG166:
lui $3, 7
bgtz $4, TAG167
mthi $4
sll $3, $4, 5
TAG167:
sll $0, $0, 0
blez $3, TAG168
sll $0, $0, 0
beq $3, $3, TAG168
TAG168:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 13
sllv $3, $4, $2
TAG169:
and $2, $3, $3
addiu $4, $3, 4
sll $0, $0, 0
multu $3, $3
TAG170:
div $4, $4
mthi $4
srl $3, $4, 15
andi $4, $4, 6
TAG171:
lb $4, 0($4)
lui $2, 0
bne $4, $4, TAG172
mthi $4
TAG172:
multu $2, $2
beq $2, $2, TAG173
lbu $4, 0($2)
lbu $4, 0($2)
TAG173:
mfhi $1
mflo $1
blez $1, TAG174
mtlo $1
TAG174:
lui $2, 4
mfhi $4
bltz $4, TAG175
sh $1, 0($1)
TAG175:
lui $1, 15
mtlo $1
bgez $4, TAG176
sll $0, $0, 0
TAG176:
multu $1, $1
sll $0, $0, 0
bne $1, $1, TAG177
div $1, $1
TAG177:
mfhi $3
bltz $1, TAG178
sll $0, $0, 0
sll $0, $0, 0
TAG178:
mtlo $3
bgez $3, TAG179
sb $3, 0($3)
lhu $1, 0($3)
TAG179:
srav $2, $1, $1
mult $2, $2
beq $1, $1, TAG180
sll $0, $0, 0
TAG180:
lui $3, 0
blez $2, TAG181
addiu $2, $2, 5
mfhi $1
TAG181:
sll $0, $0, 0
mfhi $2
addu $4, $1, $1
addiu $3, $2, 6
TAG182:
bltz $3, TAG183
mflo $3
mthi $3
bne $3, $3, TAG183
TAG183:
sltu $1, $3, $3
bltz $3, TAG184
mthi $3
ori $3, $3, 4
TAG184:
slt $1, $3, $3
srav $2, $1, $3
mflo $1
sh $1, 0($2)
TAG185:
srlv $1, $1, $1
lw $4, 0($1)
add $3, $1, $1
sltiu $2, $3, 6
TAG186:
mflo $4
mflo $4
sw $4, 0($4)
mflo $4
TAG187:
mfhi $1
blez $4, TAG188
lhu $2, 0($4)
mflo $3
TAG188:
mtlo $3
lb $4, 0($3)
mfhi $4
sh $4, 0($4)
TAG189:
bgez $4, TAG190
mthi $4
mtlo $4
mult $4, $4
TAG190:
mfhi $3
lhu $2, 0($3)
lui $3, 8
multu $3, $4
TAG191:
sll $0, $0, 0
bne $3, $4, TAG192
mthi $4
sh $4, 0($3)
TAG192:
addi $2, $4, 0
mult $4, $4
lui $4, 6
sll $0, $0, 0
TAG193:
mthi $4
lui $4, 11
lui $1, 13
mflo $2
TAG194:
lui $1, 1
mflo $2
bne $2, $2, TAG195
and $4, $2, $2
TAG195:
bne $4, $4, TAG196
sw $4, 0($4)
multu $4, $4
multu $4, $4
TAG196:
beq $4, $4, TAG197
lui $2, 9
mthi $4
mflo $1
TAG197:
mthi $1
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
TAG198:
sll $0, $0, 0
mtlo $3
divu $3, $3
beq $3, $3, TAG199
TAG199:
xor $2, $3, $3
sra $2, $2, 4
sltu $3, $3, $3
bgtz $2, TAG200
TAG200:
lh $1, 0($3)
sub $4, $3, $1
mthi $3
srav $1, $4, $1
TAG201:
blez $1, TAG202
mthi $1
add $2, $1, $1
sb $1, 0($1)
TAG202:
lbu $4, 0($2)
multu $2, $2
mflo $1
bne $4, $4, TAG203
TAG203:
mfhi $1
mtlo $1
multu $1, $1
mflo $4
TAG204:
mult $4, $4
bgtz $4, TAG205
mfhi $2
lh $1, 0($4)
TAG205:
lbu $2, 0($1)
mflo $4
lbu $2, 0($2)
subu $3, $1, $1
TAG206:
lui $3, 12
mult $3, $3
mfhi $1
sw $3, -144($1)
TAG207:
sll $0, $0, 0
lui $1, 1
sllv $1, $2, $2
lui $4, 2
TAG208:
sll $0, $0, 0
mthi $4
or $2, $4, $4
divu $4, $2
TAG209:
mflo $4
mtlo $4
addiu $2, $2, 0
bne $4, $2, TAG210
TAG210:
sll $0, $0, 0
blez $2, TAG211
lui $4, 6
mthi $2
TAG211:
mtlo $4
beq $4, $4, TAG212
sll $0, $0, 0
mflo $2
TAG212:
div $2, $2
lui $2, 6
bltz $2, TAG213
div $2, $2
TAG213:
sll $0, $0, 0
mthi $1
lui $2, 2
lui $1, 3
TAG214:
lui $2, 9
sll $0, $0, 0
beq $2, $2, TAG215
mthi $1
TAG215:
bne $2, $2, TAG216
mtlo $2
mult $2, $2
lui $4, 4
TAG216:
slt $2, $4, $4
mfhi $3
bne $2, $2, TAG217
divu $3, $4
TAG217:
beq $3, $3, TAG218
lui $4, 4
div $4, $4
lw $1, 0($4)
TAG218:
sll $0, $0, 0
lui $2, 2
sllv $1, $2, $1
sll $0, $0, 0
TAG219:
mfhi $4
andi $2, $3, 8
beq $3, $2, TAG220
mfhi $1
TAG220:
mtlo $1
multu $1, $1
mflo $2
mflo $3
TAG221:
mfhi $2
lb $4, -6561($3)
mthi $2
mflo $4
TAG222:
addu $1, $4, $4
lui $2, 10
nor $4, $1, $4
bgez $4, TAG223
TAG223:
sw $4, 15332($4)
mfhi $2
sltiu $4, $2, 13
mflo $2
TAG224:
div $2, $2
sltu $2, $2, $2
beq $2, $2, TAG225
mflo $1
TAG225:
sb $1, 0($1)
divu $1, $1
mthi $1
lbu $4, 0($1)
TAG226:
sb $4, 0($4)
mfhi $1
mthi $4
div $1, $4
TAG227:
blez $1, TAG228
sb $1, 0($1)
mthi $1
sra $2, $1, 13
TAG228:
mfhi $2
mthi $2
mflo $3
bgtz $3, TAG229
TAG229:
divu $3, $3
lui $3, 3
mthi $3
sll $0, $0, 0
TAG230:
mtlo $3
bne $3, $3, TAG231
sll $0, $0, 0
addiu $1, $3, 6
TAG231:
bne $1, $1, TAG232
lui $4, 12
sll $0, $0, 0
beq $4, $1, TAG232
TAG232:
sll $0, $0, 0
bgez $1, TAG233
mtlo $1
beq $1, $1, TAG233
TAG233:
sltu $4, $1, $1
mtlo $1
sll $0, $0, 0
andi $2, $4, 6
TAG234:
mfhi $4
srav $3, $2, $4
mflo $1
lui $3, 10
TAG235:
lui $3, 9
sll $0, $0, 0
addu $4, $3, $3
multu $3, $4
TAG236:
lui $2, 4
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG237:
mflo $4
sltu $3, $3, $3
mfhi $3
bgez $4, TAG238
TAG238:
xori $3, $3, 5
xori $2, $3, 8
bgez $3, TAG239
sb $3, 0($3)
TAG239:
srlv $3, $2, $2
lui $1, 4
mthi $2
sb $1, 0($2)
TAG240:
sll $0, $0, 0
lui $4, 6
sll $0, $0, 0
beq $4, $2, TAG241
TAG241:
lw $2, 0($2)
mthi $2
mult $2, $2
and $3, $2, $2
TAG242:
xor $4, $3, $3
mtlo $4
mult $4, $3
mtlo $4
TAG243:
lui $3, 8
srav $2, $3, $4
sll $0, $0, 0
mflo $3
TAG244:
mflo $3
bne $3, $3, TAG245
lui $1, 4
sltiu $4, $3, 14
TAG245:
divu $4, $4
mtlo $4
mfhi $3
bgtz $3, TAG246
TAG246:
sub $4, $3, $3
mflo $1
mfhi $1
mfhi $2
TAG247:
mthi $2
lui $3, 3
sh $3, 0($2)
mfhi $2
TAG248:
multu $2, $2
srl $2, $2, 0
subu $3, $2, $2
or $2, $2, $2
TAG249:
sub $1, $2, $2
bgez $1, TAG250
and $1, $2, $1
div $1, $2
TAG250:
lhu $3, 0($1)
multu $3, $3
mflo $3
sw $3, 0($3)
TAG251:
mflo $1
blez $3, TAG252
addiu $1, $1, 14
sh $3, 0($3)
TAG252:
mfhi $1
blez $1, TAG253
sltu $3, $1, $1
bne $3, $3, TAG253
TAG253:
lbu $3, 0($3)
lh $4, 0($3)
multu $4, $3
bgtz $4, TAG254
TAG254:
lhu $4, 0($4)
bgez $4, TAG255
mflo $3
sh $4, 0($4)
TAG255:
lhu $4, 0($3)
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
TAG256:
beq $3, $3, TAG257
slti $2, $3, 1
mthi $2
beq $3, $2, TAG257
TAG257:
sh $2, 0($2)
or $1, $2, $2
mfhi $4
bne $4, $2, TAG258
TAG258:
lw $2, 0($4)
lb $3, 0($4)
mtlo $2
mult $4, $3
TAG259:
bne $3, $3, TAG260
sh $3, 0($3)
sll $2, $3, 13
beq $2, $2, TAG260
TAG260:
addiu $2, $2, 11
mthi $2
or $4, $2, $2
lb $4, 0($2)
TAG261:
lh $4, 0($4)
addu $1, $4, $4
mfhi $3
beq $4, $3, TAG262
TAG262:
mtlo $3
sh $3, 0($3)
lui $4, 5
mult $3, $3
TAG263:
mtlo $4
sll $0, $0, 0
subu $2, $4, $4
lui $4, 12
TAG264:
mfhi $4
bne $4, $4, TAG265
lui $4, 0
beq $4, $4, TAG265
TAG265:
lw $4, 0($4)
sw $4, 0($4)
sll $1, $4, 3
xori $1, $4, 3
TAG266:
div $1, $1
sra $3, $1, 14
lui $2, 0
mflo $2
TAG267:
sllv $3, $2, $2
sb $2, 0($3)
div $3, $2
bgtz $2, TAG268
TAG268:
ori $3, $3, 8
sh $3, 0($3)
bne $3, $3, TAG269
sllv $1, $3, $3
TAG269:
sll $0, $0, 0
sltu $2, $4, $1
bne $1, $1, TAG270
mfhi $1
TAG270:
multu $1, $1
lw $2, 0($1)
sll $0, $0, 0
mflo $4
TAG271:
mflo $3
mfhi $3
mfhi $1
sra $2, $3, 11
TAG272:
xori $1, $2, 7
mult $1, $2
mfhi $4
sw $2, 0($4)
TAG273:
lui $2, 0
bne $4, $4, TAG274
slt $2, $2, $2
bltz $4, TAG274
TAG274:
mtlo $2
sh $2, 0($2)
sb $2, 0($2)
beq $2, $2, TAG275
TAG275:
sh $2, 0($2)
lui $2, 6
mflo $2
lw $4, 0($2)
TAG276:
mult $4, $4
mfhi $2
bltz $4, TAG277
lui $3, 0
TAG277:
bne $3, $3, TAG278
sub $1, $3, $3
mflo $2
multu $1, $3
TAG278:
mtlo $2
lw $3, 0($2)
mthi $2
lui $1, 9
TAG279:
xor $1, $1, $1
sw $1, 0($1)
lui $2, 14
mflo $4
TAG280:
bgtz $4, TAG281
mfhi $1
bgtz $1, TAG281
multu $4, $1
TAG281:
slti $2, $1, 13
mfhi $3
blez $3, TAG282
mult $2, $3
TAG282:
sw $3, 0($3)
blez $3, TAG283
mfhi $1
blez $1, TAG283
TAG283:
lui $4, 9
subu $4, $1, $4
blez $1, TAG284
mtlo $4
TAG284:
div $4, $4
nor $1, $4, $4
lui $4, 10
mflo $4
TAG285:
multu $4, $4
bgtz $4, TAG286
lbu $3, 0($4)
sll $1, $3, 3
TAG286:
mflo $3
sll $0, $0, 0
bgtz $1, TAG287
mtlo $3
TAG287:
mthi $3
lui $4, 1
beq $4, $4, TAG288
sll $0, $0, 0
TAG288:
sll $0, $0, 0
lui $4, 5
mfhi $2
bgez $4, TAG289
TAG289:
addiu $2, $2, 15
lb $2, 0($2)
bgez $2, TAG290
add $1, $2, $2
TAG290:
sw $1, 0($1)
sra $1, $1, 2
bltz $1, TAG291
and $4, $1, $1
TAG291:
bne $4, $4, TAG292
slti $3, $4, 13
blez $3, TAG292
mfhi $3
TAG292:
divu $3, $3
sra $1, $3, 5
mthi $1
lhu $4, 0($1)
TAG293:
bne $4, $4, TAG294
sw $4, 0($4)
bne $4, $4, TAG294
sw $4, 0($4)
TAG294:
mthi $4
multu $4, $4
mtlo $4
mfhi $2
TAG295:
srl $4, $2, 3
lui $1, 13
blez $1, TAG296
andi $3, $1, 3
TAG296:
beq $3, $3, TAG297
addu $2, $3, $3
mthi $3
mtlo $2
TAG297:
lh $3, 0($2)
mult $3, $2
multu $3, $2
beq $3, $2, TAG298
TAG298:
lui $2, 8
lui $4, 15
mflo $1
srl $1, $1, 13
TAG299:
lb $3, 0($1)
lb $2, 0($3)
bltz $2, TAG300
mthi $1
TAG300:
or $3, $2, $2
bgez $2, TAG301
lbu $1, 0($3)
bgez $3, TAG301
TAG301:
or $3, $1, $1
sw $1, 0($3)
bne $1, $1, TAG302
lui $4, 11
TAG302:
sll $0, $0, 0
bne $4, $4, TAG303
mthi $4
sltiu $3, $4, 3
TAG303:
mfhi $2
mflo $2
sh $2, 0($3)
sltiu $3, $3, 15
TAG304:
lui $2, 1
mfhi $2
mtlo $3
xor $4, $2, $2
TAG305:
srlv $4, $4, $4
multu $4, $4
andi $4, $4, 15
mtlo $4
TAG306:
lhu $3, 0($4)
bltz $4, TAG307
lbu $4, 0($4)
add $4, $3, $3
TAG307:
sb $4, 0($4)
sw $4, 0($4)
lbu $2, 0($4)
srav $4, $4, $4
TAG308:
mflo $3
lw $1, 0($4)
andi $1, $4, 5
bne $3, $1, TAG309
TAG309:
multu $1, $1
multu $1, $1
andi $3, $1, 5
lbu $3, 0($3)
TAG310:
bltz $3, TAG311
mthi $3
slt $2, $3, $3
lui $3, 7
TAG311:
divu $3, $3
div $3, $3
mtlo $3
sll $0, $0, 0
TAG312:
sll $0, $0, 0
lui $3, 2
mtlo $3
addi $2, $1, 3
TAG313:
addiu $3, $2, 14
sb $3, 0($2)
addiu $1, $2, 10
div $1, $2
TAG314:
bgtz $1, TAG315
mfhi $3
blez $3, TAG315
mthi $3
TAG315:
mtlo $3
lui $4, 10
bgez $4, TAG316
mfhi $2
TAG316:
subu $2, $2, $2
sw $2, 0($2)
sw $2, 0($2)
mthi $2
TAG317:
mthi $2
mflo $4
mflo $2
sll $2, $4, 8
TAG318:
beq $2, $2, TAG319
lw $4, -256($2)
multu $4, $2
sll $1, $4, 13
TAG319:
lui $3, 9
lb $4, 0($1)
lui $4, 15
and $2, $3, $3
TAG320:
lui $1, 11
sll $0, $0, 0
sltu $1, $1, $2
sltiu $4, $1, 13
TAG321:
ori $3, $4, 4
sltu $2, $4, $3
sb $2, 0($2)
bne $2, $4, TAG322
TAG322:
sb $2, 0($2)
sra $1, $2, 14
mtlo $2
sub $3, $2, $1
TAG323:
lb $3, 0($3)
bne $3, $3, TAG324
mthi $3
blez $3, TAG324
TAG324:
mflo $1
mult $3, $1
mfhi $3
mthi $1
TAG325:
and $2, $3, $3
mult $3, $3
mtlo $3
multu $2, $3
TAG326:
mflo $3
lw $2, 0($2)
bgtz $3, TAG327
sh $3, 0($3)
TAG327:
lui $1, 11
sll $0, $0, 0
and $4, $3, $3
sltiu $3, $3, 10
TAG328:
mflo $2
mult $2, $2
divu $2, $3
mtlo $3
TAG329:
srl $2, $2, 9
lui $3, 3
andi $2, $2, 1
blez $2, TAG330
TAG330:
add $4, $2, $2
sh $4, 0($4)
lb $4, 0($2)
mult $2, $4
TAG331:
sllv $2, $4, $4
blez $4, TAG332
sw $2, 0($4)
sw $2, 0($4)
TAG332:
sllv $2, $2, $2
mult $2, $2
lui $2, 0
mult $2, $2
TAG333:
srl $3, $2, 3
lui $1, 6
sll $0, $0, 0
sb $1, 0($2)
TAG334:
bgtz $1, TAG335
sll $0, $0, 0
bgtz $3, TAG335
mflo $1
TAG335:
mflo $4
mult $1, $4
bgtz $1, TAG336
mthi $4
TAG336:
bne $4, $4, TAG337
mtlo $4
or $2, $4, $4
lui $1, 9
TAG337:
bne $1, $1, TAG338
xor $4, $1, $1
sll $0, $0, 0
bgez $4, TAG338
TAG338:
multu $4, $4
mult $4, $4
nor $4, $4, $4
multu $4, $4
TAG339:
sllv $3, $4, $4
subu $1, $4, $3
sll $0, $0, 0
mthi $4
TAG340:
bne $3, $3, TAG341
lui $4, 11
sra $4, $4, 0
sll $0, $0, 0
TAG341:
sll $0, $0, 0
mthi $1
sll $1, $4, 5
sll $0, $0, 0
TAG342:
bne $3, $3, TAG343
sll $0, $0, 0
mflo $4
mfhi $3
TAG343:
mflo $2
xori $1, $3, 0
mthi $2
mult $2, $2
TAG344:
mfhi $1
bgez $1, TAG345
mfhi $4
bltz $4, TAG345
TAG345:
sb $4, 0($4)
bgtz $4, TAG346
slt $1, $4, $4
mtlo $4
TAG346:
lui $4, 4
sh $1, 0($1)
lui $2, 14
andi $2, $1, 4
TAG347:
lui $4, 7
sll $0, $0, 0
beq $4, $4, TAG348
mult $2, $4
TAG348:
beq $4, $4, TAG349
sra $4, $4, 5
blez $4, TAG349
lui $3, 6
TAG349:
xori $4, $3, 2
sll $0, $0, 0
mtlo $3
addiu $3, $4, 10
TAG350:
divu $3, $3
sltiu $4, $3, 6
mult $4, $4
mtlo $3
TAG351:
sh $4, 0($4)
lui $4, 6
bgez $4, TAG352
lui $4, 11
TAG352:
mtlo $4
div $4, $4
sll $0, $0, 0
addu $1, $2, $2
TAG353:
mthi $1
sh $1, 0($1)
mflo $2
lui $1, 3
TAG354:
beq $1, $1, TAG355
sll $1, $1, 15
sub $2, $1, $1
divu $1, $1
TAG355:
mthi $2
andi $2, $2, 6
lh $2, 0($2)
addiu $4, $2, 6
TAG356:
sh $4, 0($4)
mthi $4
lb $4, 0($4)
lui $2, 15
TAG357:
sll $0, $0, 0
blez $3, TAG358
sll $0, $0, 0
mfhi $4
TAG358:
addiu $1, $4, 13
lb $4, 0($4)
mflo $2
srl $3, $2, 0
TAG359:
blez $3, TAG360
addiu $3, $3, 13
mflo $3
bne $3, $3, TAG360
TAG360:
sb $3, 0($3)
beq $3, $3, TAG361
slti $1, $3, 15
mthi $1
TAG361:
beq $1, $1, TAG362
mtlo $1
sw $1, 0($1)
blez $1, TAG362
TAG362:
div $1, $1
sll $3, $1, 4
mtlo $1
blez $3, TAG363
TAG363:
mtlo $3
mtlo $3
lui $2, 0
lb $3, 0($2)
TAG364:
blez $3, TAG365
slti $2, $3, 5
srav $4, $3, $3
multu $2, $4
TAG365:
sra $3, $4, 7
mult $3, $3
and $1, $4, $4
or $1, $1, $3
TAG366:
sb $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG367
srav $1, $1, $1
TAG367:
mult $1, $1
beq $1, $1, TAG368
lw $3, 0($1)
lbu $4, 0($1)
TAG368:
or $4, $4, $4
addiu $1, $4, 9
beq $4, $4, TAG369
lhu $2, 0($4)
TAG369:
blez $2, TAG370
sb $2, 0($2)
mthi $2
multu $2, $2
TAG370:
subu $2, $2, $2
lhu $4, 0($2)
sltu $1, $2, $2
sh $1, 0($2)
TAG371:
mthi $1
bgtz $1, TAG372
sb $1, 0($1)
mtlo $1
TAG372:
lui $2, 12
multu $1, $1
lui $4, 4
beq $2, $1, TAG373
TAG373:
lui $1, 15
sllv $3, $4, $4
blez $3, TAG374
sll $0, $0, 0
TAG374:
mthi $4
mthi $4
sltiu $4, $4, 2
sh $4, 0($4)
TAG375:
ori $2, $4, 7
lbu $2, 0($2)
bne $4, $2, TAG376
mflo $4
TAG376:
addiu $1, $4, 6
bne $1, $1, TAG377
lbu $2, 0($1)
mult $4, $4
TAG377:
sh $2, 0($2)
mtlo $2
lui $4, 8
mflo $1
TAG378:
lui $2, 9
div $2, $2
mflo $3
addiu $3, $3, 10
TAG379:
mfhi $3
slti $4, $3, 1
ori $4, $4, 5
and $4, $4, $4
TAG380:
multu $4, $4
sra $1, $4, 15
or $3, $4, $4
beq $4, $1, TAG381
TAG381:
sltiu $1, $3, 0
bne $1, $3, TAG382
mtlo $1
lhu $4, 0($3)
TAG382:
sb $4, 0($4)
sllv $1, $4, $4
div $4, $1
lbu $2, 0($4)
TAG383:
lui $4, 11
lb $3, 0($2)
sll $0, $0, 0
sb $2, 0($3)
TAG384:
mtlo $1
bgtz $1, TAG385
andi $3, $1, 5
sra $1, $3, 9
TAG385:
sll $0, $0, 0
blez $1, TAG386
sw $1, -160($1)
sb $3, 0($3)
TAG386:
lh $4, 0($3)
lb $4, 0($4)
bgez $4, TAG387
mult $4, $4
TAG387:
srl $1, $4, 3
sh $4, 0($4)
mtlo $1
bgtz $4, TAG388
TAG388:
mthi $1
lbu $3, 0($1)
mtlo $3
sra $1, $3, 4
TAG389:
blez $1, TAG390
lw $1, 0($1)
ori $3, $1, 11
lhu $1, 0($1)
TAG390:
lb $2, 0($1)
lui $1, 10
addu $2, $1, $1
ori $1, $1, 9
TAG391:
bgez $1, TAG392
mflo $1
divu $1, $1
sltu $1, $1, $1
TAG392:
sllv $3, $1, $1
ori $1, $3, 13
addiu $3, $1, 6
multu $3, $3
TAG393:
bltz $3, TAG394
mtlo $3
ori $2, $3, 0
sb $2, 0($3)
TAG394:
mthi $2
mult $2, $2
beq $2, $2, TAG395
lbu $1, 0($2)
TAG395:
mthi $1
sb $1, 0($1)
sllv $4, $1, $1
sll $0, $0, 0
TAG396:
sll $0, $0, 0
multu $4, $2
multu $4, $4
bne $2, $4, TAG397
TAG397:
sb $2, 0($2)
mflo $3
nor $4, $3, $2
mflo $3
TAG398:
bgtz $3, TAG399
multu $3, $3
lh $1, 0($3)
andi $2, $1, 8
TAG399:
bgez $2, TAG400
addi $2, $2, 7
sb $2, 0($2)
mthi $2
TAG400:
lbu $1, 0($2)
addu $1, $1, $1
multu $1, $1
beq $2, $2, TAG401
TAG401:
mflo $3
mthi $3
bltz $1, TAG402
sll $4, $3, 9
TAG402:
sra $4, $4, 2
sb $4, 0($4)
sw $4, 0($4)
bgez $4, TAG403
TAG403:
mfhi $3
lui $1, 12
bne $1, $3, TAG404
srl $4, $4, 5
TAG404:
lui $4, 9
sll $1, $4, 12
xori $1, $1, 9
mtlo $1
TAG405:
bgtz $1, TAG406
xori $2, $1, 13
blez $2, TAG406
sll $0, $0, 0
TAG406:
beq $2, $2, TAG407
mfhi $2
sb $2, 0($2)
or $3, $2, $2
TAG407:
beq $3, $3, TAG408
srlv $3, $3, $3
mult $3, $3
sb $3, 0($3)
TAG408:
mult $3, $3
mtlo $3
sh $3, 0($3)
lw $2, 0($3)
TAG409:
multu $2, $2
mfhi $4
mtlo $4
sllv $1, $4, $2
TAG410:
lui $3, 1
bgez $3, TAG411
slti $4, $1, 2
bgtz $4, TAG411
TAG411:
lui $4, 7
mflo $4
subu $1, $4, $4
mflo $2
TAG412:
lb $2, 0($2)
blez $2, TAG413
sub $3, $2, $2
bne $3, $3, TAG413
TAG413:
lhu $2, 0($3)
mult $3, $3
bgtz $2, TAG414
sw $2, 0($3)
TAG414:
sh $2, 0($2)
mflo $2
mtlo $2
bne $2, $2, TAG415
TAG415:
mfhi $1
mtlo $1
beq $1, $2, TAG416
mflo $2
TAG416:
or $2, $2, $2
lui $4, 7
lw $3, 0($2)
addu $3, $4, $2
TAG417:
div $3, $3
sll $0, $0, 0
lui $4, 10
lbu $4, 0($1)
TAG418:
xor $3, $4, $4
bltz $4, TAG419
lb $1, 0($4)
mult $3, $4
TAG419:
sra $4, $1, 8
lb $2, 0($1)
mult $4, $2
bgez $1, TAG420
TAG420:
mtlo $2
blez $2, TAG421
mfhi $4
ori $4, $2, 12
TAG421:
mflo $1
bltz $1, TAG422
sra $4, $1, 10
mult $1, $1
TAG422:
lui $3, 10
lui $4, 15
bgtz $4, TAG423
mthi $4
TAG423:
beq $4, $4, TAG424
sll $0, $0, 0
lbu $3, 0($4)
multu $2, $3
TAG424:
addiu $1, $3, 6
sra $1, $1, 2
multu $1, $3
addu $1, $1, $1
TAG425:
bne $1, $1, TAG426
mfhi $2
slti $3, $2, 5
lhu $4, 0($3)
TAG426:
subu $4, $4, $4
lw $1, 0($4)
addiu $1, $1, 6
div $4, $1
TAG427:
beq $1, $1, TAG428
div $1, $1
mflo $3
beq $1, $3, TAG428
TAG428:
ori $2, $3, 8
xori $3, $3, 13
sll $4, $2, 15
bgez $4, TAG429
TAG429:
mtlo $4
mthi $4
srl $2, $4, 13
ori $4, $2, 11
TAG430:
lbu $4, 0($4)
multu $4, $4
sub $2, $4, $4
sw $4, 0($4)
TAG431:
bgez $2, TAG432
mthi $2
lui $4, 15
blez $4, TAG432
TAG432:
ori $4, $4, 9
mflo $1
lw $2, 0($1)
mfhi $3
TAG433:
sh $3, 0($3)
sh $3, 0($3)
mfhi $2
lui $3, 0
TAG434:
lb $3, 0($3)
beq $3, $3, TAG435
sh $3, 0($3)
sll $2, $3, 4
TAG435:
lui $4, 5
bltz $4, TAG436
multu $2, $2
srav $2, $2, $2
TAG436:
mthi $2
lb $4, 0($2)
lui $2, 3
sltiu $3, $2, 3
TAG437:
mflo $2
bne $3, $2, TAG438
lui $3, 4
bltz $3, TAG438
TAG438:
mtlo $3
lui $1, 9
mflo $2
mthi $1
TAG439:
sltiu $1, $2, 12
andi $3, $2, 14
lbu $2, 0($1)
mflo $4
TAG440:
lui $2, 6
sll $0, $0, 0
blez $4, TAG441
mthi $2
TAG441:
beq $2, $2, TAG442
sll $0, $0, 0
sra $1, $2, 11
beq $2, $1, TAG442
TAG442:
xori $3, $1, 14
beq $1, $1, TAG443
mtlo $3
sw $3, 0($1)
TAG443:
lb $2, 0($3)
blez $3, TAG444
lui $4, 5
lh $1, 0($3)
TAG444:
multu $1, $1
mflo $4
lui $4, 3
mtlo $4
TAG445:
addiu $4, $4, 0
sll $0, $0, 0
divu $1, $4
sh $4, 0($1)
TAG446:
mult $1, $1
mflo $4
beq $1, $4, TAG447
mfhi $2
TAG447:
beq $2, $2, TAG448
mtlo $2
ori $1, $2, 7
lui $1, 4
TAG448:
mult $1, $1
lb $4, 0($1)
mtlo $1
multu $4, $1
TAG449:
sb $4, 0($4)
blez $4, TAG450
nor $3, $4, $4
beq $3, $3, TAG450
TAG450:
mthi $3
mfhi $3
bne $3, $3, TAG451
srlv $4, $3, $3
TAG451:
srlv $2, $4, $4
sllv $3, $2, $2
xor $3, $2, $2
beq $4, $3, TAG452
TAG452:
mfhi $3
divu $3, $3
mtlo $3
lui $1, 9
TAG453:
ori $2, $1, 14
lui $1, 2
multu $2, $1
sll $0, $0, 0
TAG454:
slti $4, $4, 3
addiu $2, $4, 5
lhu $1, 0($2)
mflo $3
TAG455:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
mtlo $1
TAG456:
mthi $4
mthi $4
divu $4, $4
div $4, $4
TAG457:
sh $4, 0($4)
sra $1, $4, 4
mflo $3
sh $4, 0($4)
TAG458:
mflo $1
beq $3, $1, TAG459
mult $3, $1
ori $3, $1, 5
TAG459:
bgtz $3, TAG460
sb $3, 0($3)
lhu $4, 0($3)
bne $4, $3, TAG460
TAG460:
mfhi $1
mult $1, $1
lui $3, 6
lw $3, 0($1)
TAG461:
subu $3, $3, $3
sw $3, 0($3)
lui $3, 10
blez $3, TAG462
TAG462:
lui $4, 2
bne $4, $3, TAG463
lui $3, 3
lui $4, 0
TAG463:
and $2, $4, $4
mthi $4
sll $0, $0, 0
ori $4, $4, 8
TAG464:
mfhi $2
lui $1, 14
mult $4, $2
bgtz $2, TAG465
TAG465:
lui $3, 11
multu $3, $1
mfhi $2
sll $0, $0, 0
TAG466:
mflo $3
multu $4, $3
sll $0, $0, 0
mflo $1
TAG467:
mthi $1
lui $1, 10
sll $0, $0, 0
mthi $1
TAG468:
mult $1, $1
beq $1, $1, TAG469
lui $3, 4
lb $3, 0($3)
TAG469:
sll $0, $0, 0
beq $4, $4, TAG470
mtlo $3
lui $4, 0
TAG470:
sll $0, $0, 0
mthi $4
mthi $3
srlv $3, $3, $4
TAG471:
lui $4, 13
bltz $4, TAG472
mfhi $2
bgtz $3, TAG472
TAG472:
sll $0, $0, 0
bne $1, $2, TAG473
sll $0, $0, 0
bltz $1, TAG473
TAG473:
lui $4, 8
addiu $2, $1, 9
lui $3, 9
mfhi $3
TAG474:
srl $4, $3, 3
lui $2, 11
div $2, $4
lui $2, 11
TAG475:
mfhi $3
bltz $2, TAG476
mthi $3
lui $1, 15
TAG476:
andi $2, $1, 10
sll $0, $0, 0
div $1, $1
mult $2, $2
TAG477:
sb $2, 0($2)
sh $2, 0($2)
addi $2, $2, 1
bltz $2, TAG478
TAG478:
lb $2, 0($2)
bne $2, $2, TAG479
sltu $2, $2, $2
bltz $2, TAG479
TAG479:
srl $1, $2, 14
lh $2, 0($1)
blez $1, TAG480
multu $1, $2
TAG480:
lui $1, 6
mthi $1
lui $1, 9
beq $1, $2, TAG481
TAG481:
addu $4, $1, $1
mflo $1
mthi $1
mflo $3
TAG482:
srav $3, $3, $3
beq $3, $3, TAG483
xori $1, $3, 6
lui $3, 3
TAG483:
lui $3, 9
bgtz $3, TAG484
mflo $4
div $4, $3
TAG484:
multu $4, $4
mtlo $4
sb $4, 0($4)
mtlo $4
TAG485:
bltz $4, TAG486
mfhi $2
lui $1, 15
slt $4, $2, $1
TAG486:
slt $3, $4, $4
addiu $4, $4, 14
mthi $4
mult $3, $3
TAG487:
subu $3, $4, $4
beq $3, $4, TAG488
lh $4, 0($3)
mthi $4
TAG488:
sub $4, $4, $4
lui $1, 11
sll $0, $0, 0
mthi $4
TAG489:
lb $1, 0($4)
mthi $4
bgtz $4, TAG490
lui $3, 6
TAG490:
multu $3, $3
mflo $3
multu $3, $3
lw $2, 0($3)
TAG491:
multu $2, $2
lui $3, 1
mfhi $1
multu $1, $2
TAG492:
lui $2, 12
lh $1, 0($1)
sll $0, $0, 0
bne $4, $1, TAG493
TAG493:
mthi $4
lhu $1, 0($4)
mthi $1
mtlo $1
TAG494:
subu $2, $1, $1
beq $1, $1, TAG495
mthi $1
bgez $2, TAG495
TAG495:
addi $2, $2, 11
slt $2, $2, $2
lh $1, 0($2)
lui $4, 9
TAG496:
multu $4, $4
mthi $4
divu $4, $4
bltz $4, TAG497
TAG497:
ori $2, $4, 6
xori $1, $4, 12
mtlo $4
bltz $4, TAG498
TAG498:
sll $0, $0, 0
beq $1, $1, TAG499
sll $0, $0, 0
multu $1, $1
TAG499:
bne $1, $1, TAG500
divu $1, $1
sll $0, $0, 0
nor $1, $1, $1
TAG500:
mflo $4
addu $4, $1, $4
slti $3, $1, 11
sll $0, $0, 0
TAG501:
bltz $4, TAG502
sll $0, $0, 0
xor $2, $4, $4
mult $4, $4
TAG502:
mult $2, $2
bne $2, $2, TAG503
andi $1, $2, 7
sll $0, $0, 0
TAG503:
beq $2, $2, TAG504
lui $1, 9
sw $2, 0($1)
sh $2, 0($2)
TAG504:
bltz $1, TAG505
mflo $3
mthi $3
addiu $3, $3, 5
TAG505:
mtlo $3
mfhi $1
xor $2, $1, $1
mult $1, $3
TAG506:
beq $2, $2, TAG507
mfhi $1
xori $3, $1, 4
lui $3, 15
TAG507:
and $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sra $4, $3, 6
TAG508:
lui $4, 8
sll $0, $0, 0
beq $4, $4, TAG509
mtlo $4
TAG509:
addiu $4, $4, 14
beq $4, $4, TAG510
mtlo $4
beq $4, $4, TAG510
TAG510:
sll $0, $0, 0
ori $1, $4, 1
beq $1, $4, TAG511
div $1, $1
TAG511:
lui $1, 10
lui $3, 15
sll $0, $0, 0
blez $1, TAG512
TAG512:
divu $3, $3
sll $0, $0, 0
lui $4, 7
bltz $4, TAG513
TAG513:
sll $0, $0, 0
sltu $3, $4, $4
xor $1, $4, $3
and $1, $3, $3
TAG514:
sltiu $1, $1, 8
lb $1, 0($1)
mflo $4
lui $4, 9
TAG515:
div $4, $4
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG516:
lbu $3, 0($3)
bgez $3, TAG517
mfhi $4
div $3, $4
TAG517:
mfhi $4
sll $2, $4, 2
sltu $1, $4, $4
sh $4, 0($4)
TAG518:
bltz $1, TAG519
or $4, $1, $1
mfhi $4
sw $1, 0($4)
TAG519:
mtlo $4
bgtz $4, TAG520
lbu $1, 0($4)
mult $1, $4
TAG520:
multu $1, $1
multu $1, $1
addi $4, $1, 15
bne $4, $4, TAG521
TAG521:
mtlo $4
lui $4, 4
div $4, $4
sltu $4, $4, $4
TAG522:
mthi $4
lh $2, 0($4)
lhu $4, 0($4)
multu $4, $2
TAG523:
blez $4, TAG524
xori $2, $4, 5
lw $2, 0($4)
lw $4, 0($2)
TAG524:
bltz $4, TAG525
sh $4, 0($4)
slti $2, $4, 10
div $4, $2
TAG525:
bgtz $2, TAG526
lui $4, 8
sb $4, 0($4)
sra $4, $2, 0
TAG526:
lui $1, 8
sll $0, $0, 0
lui $1, 1
div $1, $4
TAG527:
beq $1, $1, TAG528
mflo $4
sh $1, 0($1)
lui $3, 7
TAG528:
mtlo $3
and $2, $3, $3
mult $3, $3
lhu $1, 0($3)
TAG529:
multu $1, $1
mflo $1
bgtz $1, TAG530
mfhi $3
TAG530:
sltiu $4, $3, 9
multu $3, $4
sb $4, 0($3)
bltz $3, TAG531
TAG531:
mult $4, $4
lb $4, 0($4)
lbu $4, 0($4)
lbu $4, 0($4)
TAG532:
mfhi $1
lui $4, 3
sll $0, $0, 0
srav $1, $1, $3
TAG533:
bne $1, $1, TAG534
sb $1, 0($1)
multu $1, $1
bgez $1, TAG534
TAG534:
mflo $3
mtlo $3
bgtz $1, TAG535
multu $1, $3
TAG535:
mult $3, $3
sh $3, 0($3)
bne $3, $3, TAG536
addiu $1, $3, 14
TAG536:
slti $2, $1, 15
sb $1, 0($2)
mfhi $3
lui $1, 13
TAG537:
andi $2, $1, 8
sb $1, 0($2)
lui $2, 1
sra $4, $2, 3
TAG538:
subu $2, $4, $4
sra $3, $2, 10
mfhi $1
or $2, $2, $1
TAG539:
xori $1, $2, 10
sh $1, 0($1)
nor $1, $1, $2
beq $2, $1, TAG540
TAG540:
divu $1, $1
lh $4, 11($1)
lui $1, 14
beq $4, $4, TAG541
TAG541:
lui $2, 12
mtlo $1
sll $0, $0, 0
mthi $1
TAG542:
bgez $2, TAG543
sllv $1, $2, $2
lui $2, 14
bltz $2, TAG543
TAG543:
addu $4, $2, $2
mflo $2
blez $2, TAG544
sll $0, $0, 0
TAG544:
mtlo $4
mult $4, $4
mflo $4
mthi $4
TAG545:
sw $4, 0($4)
sh $4, 0($4)
beq $4, $4, TAG546
mthi $4
TAG546:
mult $4, $4
mthi $4
slt $4, $4, $4
slti $1, $4, 2
TAG547:
divu $1, $1
or $2, $1, $1
beq $2, $1, TAG548
lui $3, 15
TAG548:
mult $3, $3
div $3, $3
divu $3, $3
mflo $3
TAG549:
mthi $3
mflo $2
and $1, $3, $2
mflo $4
TAG550:
sb $4, 0($4)
mthi $4
mult $4, $4
subu $1, $4, $4
TAG551:
sw $1, 0($1)
nor $4, $1, $1
mthi $1
lbu $4, 0($1)
TAG552:
sh $4, 0($4)
mthi $4
mfhi $1
beq $4, $4, TAG553
TAG553:
mfhi $3
sra $4, $1, 15
mflo $2
sra $1, $2, 1
TAG554:
mfhi $2
slt $4, $2, $2
sh $4, 0($1)
bgtz $1, TAG555
TAG555:
lw $3, 0($4)
mflo $4
mfhi $2
mtlo $4
TAG556:
mfhi $3
bgtz $2, TAG557
mfhi $1
blez $2, TAG557
TAG557:
sltiu $2, $1, 13
srl $3, $1, 9
subu $3, $3, $2
mfhi $3
TAG558:
nor $1, $3, $3
bne $1, $3, TAG559
lbu $3, 0($3)
mfhi $1
TAG559:
ori $1, $1, 14
addiu $1, $1, 0
bne $1, $1, TAG560
sb $1, 1($1)
TAG560:
divu $1, $1
lui $4, 1
sh $4, 1($1)
bne $4, $1, TAG561
TAG561:
mflo $4
div $4, $4
lui $4, 3
mult $4, $4
TAG562:
divu $4, $4
sll $0, $0, 0
addiu $3, $4, 2
lui $2, 7
TAG563:
blez $2, TAG564
multu $2, $2
mthi $2
andi $4, $2, 14
TAG564:
blez $4, TAG565
lb $3, 0($4)
srlv $4, $3, $3
mfhi $1
TAG565:
div $1, $1
lui $4, 14
bltz $4, TAG566
addiu $4, $1, 11
TAG566:
sb $4, 0($4)
lb $4, 0($4)
lhu $1, 0($4)
bne $1, $1, TAG567
TAG567:
lhu $2, 0($1)
bltz $2, TAG568
sb $1, 0($1)
sll $4, $2, 13
TAG568:
lui $1, 8
mthi $4
addiu $3, $4, 13
sra $4, $3, 5
TAG569:
lui $4, 10
slt $3, $4, $4
sb $4, 0($3)
lui $2, 11
TAG570:
mult $2, $2
sll $0, $0, 0
lui $2, 7
mtlo $2
TAG571:
slti $2, $2, 4
bne $2, $2, TAG572
lui $4, 10
addiu $4, $4, 1
TAG572:
beq $4, $4, TAG573
mthi $4
div $4, $4
bgez $4, TAG573
TAG573:
lui $2, 2
sll $0, $0, 0
mtlo $4
sll $4, $2, 6
TAG574:
or $4, $4, $4
sll $0, $0, 0
sll $0, $0, 0
lui $1, 14
TAG575:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
sll $3, $2, 1
TAG576:
blez $3, TAG577
srav $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG577:
bltz $2, TAG578
sll $0, $0, 0
bne $1, $1, TAG578
sltiu $4, $1, 7
TAG578:
slt $2, $4, $4
addiu $4, $2, 13
lui $1, 13
multu $4, $1
TAG579:
sll $0, $0, 0
lui $2, 5
mtlo $1
xor $2, $1, $1
TAG580:
sra $1, $2, 1
sltiu $2, $2, 15
addiu $1, $2, 14
mflo $4
TAG581:
sll $0, $0, 0
sll $0, $0, 0
addu $1, $4, $4
mthi $1
TAG582:
mflo $1
bne $1, $1, TAG583
lui $4, 0
bgtz $4, TAG583
TAG583:
lbu $4, 0($4)
lui $3, 15
sll $0, $0, 0
lh $1, 0($4)
TAG584:
sra $4, $1, 2
add $2, $4, $1
srlv $2, $4, $2
mult $2, $4
TAG585:
mfhi $2
bne $2, $2, TAG586
mflo $4
slti $2, $2, 13
TAG586:
bne $2, $2, TAG587
mtlo $2
lbu $3, 0($2)
lhu $1, 0($3)
TAG587:
sh $1, 0($1)
sw $1, 0($1)
beq $1, $1, TAG588
lui $4, 12
TAG588:
sll $0, $0, 0
sltiu $4, $3, 14
lui $4, 0
subu $1, $3, $4
TAG589:
sw $1, 0($1)
sh $1, 0($1)
mfhi $4
mflo $4
TAG590:
mtlo $4
div $4, $4
lb $1, 0($4)
multu $1, $1
TAG591:
lui $2, 2
xor $1, $2, $1
lui $1, 6
bne $1, $1, TAG592
TAG592:
addu $3, $1, $1
bne $3, $3, TAG593
mflo $1
and $2, $1, $1
TAG593:
sltiu $2, $2, 9
lui $2, 5
sll $0, $0, 0
lui $1, 11
TAG594:
lui $1, 5
mthi $1
mflo $2
sll $1, $2, 13
TAG595:
sw $1, 0($1)
bgtz $1, TAG596
addi $1, $1, 4
srlv $4, $1, $1
TAG596:
lui $2, 1
sh $2, 0($4)
mthi $2
xori $3, $4, 7
TAG597:
and $2, $3, $3
sb $2, 0($2)
bne $2, $2, TAG598
mfhi $3
TAG598:
bgez $3, TAG599
and $1, $3, $3
lhu $1, 0($3)
lui $2, 7
TAG599:
subu $4, $2, $2
lbu $2, 0($2)
lui $1, 9
div $2, $1
TAG600:
sll $0, $0, 0
sll $0, $0, 0
sb $2, 0($2)
lui $3, 6
TAG601:
sll $0, $0, 0
mult $3, $3
divu $3, $3
addu $1, $3, $3
TAG602:
mult $1, $1
beq $1, $1, TAG603
sll $0, $0, 0
sb $1, 0($1)
TAG603:
lui $3, 5
beq $1, $3, TAG604
addiu $2, $1, 0
mflo $1
TAG604:
xor $2, $1, $1
lui $4, 3
sll $0, $0, 0
lui $1, 8
TAG605:
sll $0, $0, 0
beq $1, $3, TAG606
addu $3, $1, $1
mflo $3
TAG606:
mtlo $3
sw $3, 0($3)
and $4, $3, $3
and $3, $3, $4
TAG607:
lbu $4, 0($3)
sh $3, 0($3)
bltz $4, TAG608
lui $3, 7
TAG608:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
bne $2, $3, TAG609
TAG609:
lui $2, 4
andi $4, $2, 13
mtlo $2
sh $2, 0($4)
TAG610:
lui $2, 7
lb $1, 0($4)
bne $2, $1, TAG611
mfhi $1
TAG611:
lb $1, 0($1)
bne $1, $1, TAG612
sh $1, 0($1)
lh $3, 0($1)
TAG612:
mflo $2
mult $2, $2
bltz $2, TAG613
or $3, $2, $2
TAG613:
multu $3, $3
slt $2, $3, $3
srav $4, $2, $2
addu $3, $3, $2
TAG614:
lui $2, 14
divu $2, $3
sll $0, $0, 0
mfhi $2
TAG615:
beq $2, $2, TAG616
mflo $1
mtlo $1
or $3, $2, $1
TAG616:
bgtz $3, TAG617
mthi $3
sub $2, $3, $3
slti $4, $3, 3
TAG617:
sw $4, 0($4)
bgez $4, TAG618
multu $4, $4
lui $4, 14
TAG618:
mthi $4
bne $4, $4, TAG619
lui $1, 6
divu $4, $1
TAG619:
mflo $3
divu $3, $1
bne $1, $3, TAG620
addu $4, $1, $3
TAG620:
slti $4, $4, 14
lui $4, 12
bne $4, $4, TAG621
sll $0, $0, 0
TAG621:
sll $0, $0, 0
div $4, $4
lui $4, 7
sll $0, $0, 0
TAG622:
sb $3, 0($3)
beq $3, $3, TAG623
slti $2, $3, 6
bltz $2, TAG623
TAG623:
lui $2, 14
sll $0, $0, 0
sll $1, $2, 8
and $1, $2, $2
TAG624:
mult $1, $1
mult $1, $1
mflo $2
bltz $2, TAG625
TAG625:
ori $4, $2, 7
mfhi $1
lui $1, 12
bne $4, $4, TAG626
TAG626:
lui $4, 12
div $4, $1
lui $2, 10
sll $0, $0, 0
TAG627:
slt $1, $2, $2
sll $0, $0, 0
sllv $2, $2, $2
mfhi $3
TAG628:
mflo $1
mult $1, $3
divu $1, $1
lui $2, 6
TAG629:
mtlo $2
mflo $2
ori $1, $2, 4
lui $4, 7
TAG630:
bgtz $4, TAG631
sll $0, $0, 0
addi $1, $1, 11
lb $4, 0($1)
TAG631:
sll $0, $0, 0
multu $4, $4
mfhi $3
sltiu $3, $3, 11
TAG632:
multu $3, $3
beq $3, $3, TAG633
srlv $3, $3, $3
mthi $3
TAG633:
beq $3, $3, TAG634
add $3, $3, $3
mflo $4
mfhi $2
TAG634:
sll $0, $0, 0
addu $2, $2, $1
lui $2, 7
bgtz $2, TAG635
TAG635:
multu $2, $2
blez $2, TAG636
sll $0, $0, 0
srl $1, $2, 7
TAG636:
xori $3, $1, 0
divu $3, $1
bgez $1, TAG637
mtlo $1
TAG637:
mfhi $3
bgtz $3, TAG638
sll $1, $3, 14
lhu $3, 0($1)
TAG638:
lh $2, 0($3)
sw $3, 0($2)
bne $2, $3, TAG639
lh $4, 0($3)
TAG639:
sh $4, 0($4)
bgez $4, TAG640
mthi $4
lbu $2, 0($4)
TAG640:
lui $4, 4
beq $2, $4, TAG641
multu $4, $2
ori $3, $2, 13
TAG641:
bne $3, $3, TAG642
mtlo $3
lui $2, 11
div $3, $3
TAG642:
beq $2, $2, TAG643
addiu $3, $2, 1
divu $2, $3
sllv $4, $2, $3
TAG643:
bltz $4, TAG644
lui $1, 6
lui $4, 14
mtlo $4
TAG644:
addiu $2, $4, 5
lui $3, 2
blez $3, TAG645
mfhi $2
TAG645:
sh $2, 0($2)
srav $3, $2, $2
srl $4, $3, 6
mflo $2
TAG646:
bne $2, $2, TAG647
lui $1, 1
sll $0, $0, 0
multu $2, $1
TAG647:
bne $4, $4, TAG648
ori $2, $4, 13
addiu $3, $2, 0
sb $2, 0($3)
TAG648:
mthi $3
srlv $4, $3, $3
lui $2, 0
lw $4, 0($4)
TAG649:
beq $4, $4, TAG650
mfhi $3
sltu $1, $4, $4
andi $2, $1, 13
TAG650:
beq $2, $2, TAG651
sw $2, 0($2)
beq $2, $2, TAG651
lui $3, 9
TAG651:
lb $4, 0($3)
lb $4, 0($3)
lui $2, 8
sll $0, $0, 0
TAG652:
subu $3, $2, $2
mthi $3
sll $0, $0, 0
or $3, $2, $3
TAG653:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
bne $3, $3, TAG654
TAG654:
mthi $1
mflo $1
xor $2, $1, $1
sb $1, 0($1)
TAG655:
lbu $2, 0($2)
mult $2, $2
lui $2, 2
bgtz $2, TAG656
TAG656:
sltu $1, $2, $2
sll $4, $1, 4
mtlo $1
sll $0, $0, 0
TAG657:
mfhi $3
lui $2, 11
lui $1, 0
mult $3, $3
TAG658:
slti $4, $1, 7
mtlo $1
addi $2, $1, 8
beq $1, $2, TAG659
TAG659:
slti $2, $2, 6
lbu $4, 0($2)
blez $2, TAG660
subu $1, $2, $2
TAG660:
mflo $4
mflo $4
sh $4, 0($4)
sra $1, $1, 7
TAG661:
slti $4, $1, 2
lui $2, 14
sll $4, $1, 1
mult $1, $4
TAG662:
lui $3, 10
lui $1, 4
sll $0, $0, 0
lui $1, 9
TAG663:
bne $1, $1, TAG664
lui $3, 0
bgtz $1, TAG664
addiu $1, $1, 8
TAG664:
sll $0, $0, 0
divu $1, $1
sltu $3, $1, $1
bgez $1, TAG665
TAG665:
lbu $2, 0($3)
lui $4, 4
mflo $3
mfhi $1
TAG666:
xori $4, $1, 10
bne $4, $1, TAG667
mthi $1
bltz $1, TAG667
TAG667:
lbu $2, 0($4)
beq $4, $4, TAG668
div $4, $2
sb $2, 0($4)
TAG668:
srlv $4, $2, $2
lbu $2, 0($2)
multu $2, $4
mthi $2
TAG669:
mtlo $2
sltiu $3, $2, 1
bgez $3, TAG670
lb $2, 0($2)
TAG670:
bgtz $2, TAG671
lui $4, 7
sb $4, 0($4)
andi $2, $2, 4
TAG671:
sb $2, 0($2)
mtlo $2
mflo $4
bltz $2, TAG672
TAG672:
addu $1, $4, $4
lh $2, 0($1)
mult $1, $1
bne $4, $4, TAG673
TAG673:
mtlo $2
addu $2, $2, $2
mtlo $2
div $2, $2
TAG674:
xor $1, $2, $2
bgez $2, TAG675
lui $3, 9
mtlo $2
TAG675:
addu $2, $3, $3
subu $1, $2, $3
lui $1, 9
bne $2, $1, TAG676
TAG676:
srl $1, $1, 8
mtlo $1
srav $4, $1, $1
sb $1, 0($1)
TAG677:
beq $4, $4, TAG678
mtlo $4
beq $4, $4, TAG678
sll $3, $4, 13
TAG678:
mflo $3
bltz $3, TAG679
lui $1, 13
mtlo $1
TAG679:
sll $0, $0, 0
mult $2, $2
mtlo $1
ori $2, $1, 8
TAG680:
sll $0, $0, 0
mthi $2
xor $4, $2, $2
sra $3, $2, 7
TAG681:
sll $0, $0, 0
addu $4, $3, $3
sh $3, -13312($4)
mtlo $4
TAG682:
sb $4, -13312($4)
div $4, $4
mflo $3
addu $1, $4, $3
TAG683:
and $3, $1, $1
mthi $3
lui $2, 15
mthi $3
TAG684:
srlv $3, $2, $2
sll $0, $0, 0
addu $2, $2, $2
beq $2, $2, TAG685
TAG685:
sltu $4, $2, $2
lb $2, 0($4)
lui $1, 10
mflo $2
TAG686:
mflo $2
div $2, $2
sb $2, 0($2)
divu $2, $2
TAG687:
lbu $2, 0($2)
bltz $2, TAG688
lui $3, 8
divu $3, $2
TAG688:
lui $4, 7
beq $4, $3, TAG689
sll $0, $0, 0
lui $4, 11
TAG689:
slt $3, $4, $4
lui $4, 12
sll $0, $0, 0
mtlo $4
TAG690:
mtlo $1
beq $1, $1, TAG691
subu $2, $1, $1
blez $1, TAG691
TAG691:
sltu $1, $2, $2
srav $1, $2, $1
multu $2, $1
beq $1, $2, TAG692
TAG692:
or $1, $1, $1
bltz $1, TAG693
sw $1, 0($1)
bltz $1, TAG693
TAG693:
multu $1, $1
add $1, $1, $1
bne $1, $1, TAG694
mthi $1
TAG694:
sh $1, 0($1)
lb $1, 0($1)
mflo $1
beq $1, $1, TAG695
TAG695:
mult $1, $1
beq $1, $1, TAG696
multu $1, $1
lui $4, 7
TAG696:
divu $4, $4
bgez $4, TAG697
srav $2, $4, $4
lui $2, 11
TAG697:
sll $4, $2, 14
mfhi $4
ori $1, $4, 2
lui $3, 15
TAG698:
beq $3, $3, TAG699
sll $0, $0, 0
lui $3, 2
sb $3, 0($3)
TAG699:
subu $3, $3, $3
lui $2, 0
mtlo $3
bne $2, $3, TAG700
TAG700:
sh $2, 0($2)
lhu $3, 0($2)
sh $3, 0($2)
lui $2, 2
TAG701:
blez $2, TAG702
slt $1, $2, $2
bne $1, $2, TAG702
lui $4, 5
TAG702:
blez $4, TAG703
addiu $3, $4, 10
mtlo $3
srlv $2, $3, $4
TAG703:
mthi $2
sll $0, $0, 0
srl $3, $4, 9
mfhi $4
TAG704:
mfhi $4
mtlo $4
mtlo $4
sll $3, $4, 0
TAG705:
bne $3, $3, TAG706
mfhi $4
bltz $3, TAG706
subu $1, $4, $3
TAG706:
multu $1, $1
blez $1, TAG707
sh $1, 0($1)
sllv $3, $1, $1
TAG707:
multu $3, $3
div $3, $3
lui $4, 10
multu $3, $4
TAG708:
beq $4, $4, TAG709
lui $2, 5
lui $2, 15
beq $2, $4, TAG709
TAG709:
sllv $2, $2, $2
lui $1, 9
sll $0, $0, 0
bgez $2, TAG710
TAG710:
sll $0, $0, 0
bgez $4, TAG711
mthi $4
slti $4, $4, 14
TAG711:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
subu $1, $4, $4
TAG712:
mflo $2
multu $2, $2
blez $1, TAG713
mflo $3
TAG713:
mult $3, $3
lbu $3, 0($3)
mult $3, $3
beq $3, $3, TAG714
TAG714:
lui $3, 0
add $1, $3, $3
beq $3, $3, TAG715
lui $1, 3
TAG715:
mtlo $1
sll $4, $1, 14
xor $1, $4, $1
bne $4, $4, TAG716
TAG716:
sll $0, $0, 0
mfhi $2
multu $1, $2
multu $2, $2
TAG717:
multu $2, $2
lb $4, 0($2)
lhu $4, 0($4)
mult $2, $4
TAG718:
lh $4, 0($4)
or $4, $4, $4
lhu $3, 0($4)
mtlo $4
TAG719:
ori $3, $3, 6
lui $3, 6
addu $1, $3, $3
bne $3, $3, TAG720
TAG720:
sll $0, $0, 0
mtlo $1
lui $2, 12
divu $2, $2
TAG721:
sll $0, $0, 0
divu $2, $2
ori $1, $2, 3
sltiu $1, $1, 13
TAG722:
lw $1, 0($1)
lhu $1, 0($1)
addi $3, $1, 4
lbu $2, 0($1)
TAG723:
bltz $2, TAG724
multu $2, $2
mthi $2
mthi $2
TAG724:
bltz $2, TAG725
lui $4, 7
mflo $3
mtlo $3
TAG725:
addiu $1, $3, 9
mfhi $1
mfhi $2
mult $2, $1
TAG726:
lui $1, 7
bltz $1, TAG727
addiu $2, $1, 7
multu $2, $1
TAG727:
bgtz $2, TAG728
sll $3, $2, 8
bltz $3, TAG728
xori $4, $3, 3
TAG728:
slti $4, $4, 6
xor $2, $4, $4
mflo $3
bltz $4, TAG729
TAG729:
srl $3, $3, 15
div $3, $3
lbu $3, 0($3)
mflo $3
TAG730:
bltz $3, TAG731
mfhi $1
lui $1, 2
bgtz $1, TAG731
TAG731:
addu $2, $1, $1
bne $2, $1, TAG732
xor $2, $1, $2
lui $3, 8
TAG732:
lui $2, 11
div $3, $3
sll $0, $0, 0
lui $2, 14
TAG733:
subu $2, $2, $2
bgtz $2, TAG734
sh $2, 0($2)
multu $2, $2
TAG734:
mfhi $3
sh $2, 0($2)
beq $2, $2, TAG735
lui $2, 15
TAG735:
bne $2, $2, TAG736
addiu $4, $2, 3
bgtz $4, TAG736
mult $4, $4
TAG736:
lui $4, 3
lui $2, 10
mflo $1
bgez $4, TAG737
TAG737:
srav $3, $1, $1
bgez $1, TAG738
addu $1, $3, $3
mult $1, $1
TAG738:
sw $1, -23040($1)
bne $1, $1, TAG739
lui $4, 4
lbu $4, -23040($1)
TAG739:
mfhi $2
lh $3, -225($2)
bgez $3, TAG740
xori $1, $4, 14
TAG740:
addiu $3, $1, 4
lhu $3, 0($1)
lui $2, 14
sll $0, $0, 0
TAG741:
div $2, $2
sll $0, $0, 0
bne $2, $2, TAG742
mult $2, $2
TAG742:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $3
div $3, $2
TAG743:
multu $3, $3
multu $3, $3
lui $3, 9
sll $0, $0, 0
TAG744:
mthi $4
beq $4, $4, TAG745
mtlo $4
sw $4, 0($4)
TAG745:
lui $1, 9
slti $2, $1, 7
lui $3, 1
sll $0, $0, 0
TAG746:
mthi $3
multu $3, $3
sll $0, $0, 0
subu $2, $1, $3
TAG747:
blez $2, TAG748
sll $0, $0, 0
lui $4, 14
bltz $4, TAG748
TAG748:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $3, 14
sll $0, $0, 0
TAG749:
mflo $4
sll $0, $0, 0
mtlo $4
bgez $3, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop