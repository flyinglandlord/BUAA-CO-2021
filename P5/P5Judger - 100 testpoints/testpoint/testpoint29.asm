ori $1, $0, 5
ori $2, $0, 1
ori $3, $0, 8
ori $4, $0, 12
sw $3, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $2, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $4, 124($0)
bgez $2, TAG1
multu $2, $2
lui $1, 13
srl $3, $1, 14
TAG1:
beq $3, $3, TAG2
lui $2, 2
mtlo $3
lui $2, 2
TAG2:
mfhi $1
lui $2, 7
sll $0, $0, 0
blez $2, TAG3
TAG3:
mflo $2
slti $3, $2, 10
beq $3, $3, TAG4
mfhi $2
TAG4:
mult $2, $2
addi $3, $2, 6
mthi $2
mtlo $3
TAG5:
multu $3, $3
ori $1, $3, 10
beq $3, $1, TAG6
lui $4, 2
TAG6:
addiu $2, $4, 9
sll $0, $0, 0
beq $4, $4, TAG7
sra $1, $2, 7
TAG7:
sb $1, -1024($1)
slt $2, $1, $1
sb $1, 0($2)
lui $4, 0
TAG8:
sh $4, 0($4)
sb $4, 0($4)
mult $4, $4
sll $1, $4, 13
TAG9:
mult $1, $1
subu $2, $1, $1
lhu $3, 0($2)
lui $2, 1
TAG10:
subu $2, $2, $2
mthi $2
add $2, $2, $2
mthi $2
TAG11:
mflo $3
mflo $2
lui $4, 2
mtlo $4
TAG12:
lui $2, 8
mfhi $2
mflo $1
lbu $1, 0($2)
TAG13:
srlv $2, $1, $1
mult $1, $2
lui $3, 7
bltz $3, TAG14
TAG14:
mfhi $1
lui $4, 4
lui $2, 4
mthi $3
TAG15:
lui $2, 11
xori $3, $2, 8
sll $0, $0, 0
sll $0, $0, 0
TAG16:
mthi $4
sll $0, $0, 0
lui $3, 10
sra $4, $3, 14
TAG17:
mflo $3
and $3, $4, $4
lbu $3, 0($3)
lbu $2, 0($3)
TAG18:
lbu $4, 0($2)
sh $4, 0($4)
xor $4, $2, $2
lui $2, 4
TAG19:
sll $0, $0, 0
bgtz $2, TAG20
lui $2, 8
sh $2, 0($2)
TAG20:
mthi $2
bgtz $2, TAG21
xori $1, $2, 9
xori $1, $1, 1
TAG21:
sll $0, $0, 0
sra $2, $1, 2
sll $0, $0, 0
mtlo $1
TAG22:
divu $2, $2
blez $2, TAG23
lui $2, 4
sll $0, $0, 0
TAG23:
bltz $4, TAG24
mfhi $2
xori $1, $4, 11
sb $2, 0($1)
TAG24:
bltz $1, TAG25
multu $1, $1
bgez $1, TAG25
sll $4, $1, 10
TAG25:
bne $4, $4, TAG26
lbu $4, -11264($4)
slt $1, $4, $4
add $2, $1, $4
TAG26:
lui $3, 6
sllv $1, $2, $3
lui $2, 9
mtlo $1
TAG27:
divu $2, $2
beq $2, $2, TAG28
mfhi $4
bne $4, $2, TAG28
TAG28:
multu $4, $4
mult $4, $4
bgez $4, TAG29
and $3, $4, $4
TAG29:
bne $3, $3, TAG30
or $4, $3, $3
sw $4, 0($4)
slt $4, $4, $4
TAG30:
mtlo $4
bne $4, $4, TAG31
ori $4, $4, 6
or $4, $4, $4
TAG31:
mthi $4
bne $4, $4, TAG32
xori $4, $4, 4
sh $4, 0($4)
TAG32:
bne $4, $4, TAG33
mtlo $4
blez $4, TAG33
srlv $4, $4, $4
TAG33:
sb $4, 0($4)
sb $4, 0($4)
mtlo $4
mfhi $1
TAG34:
lui $4, 13
lui $3, 6
sltiu $3, $3, 2
mflo $3
TAG35:
bne $3, $3, TAG36
mfhi $4
mtlo $3
beq $3, $3, TAG36
TAG36:
mthi $4
slt $4, $4, $4
mfhi $4
sh $4, 0($4)
TAG37:
blez $4, TAG38
lui $4, 0
andi $1, $4, 1
xori $1, $4, 10
TAG38:
sh $1, 0($1)
ori $1, $1, 11
mfhi $4
sh $4, 0($4)
TAG39:
bgez $4, TAG40
mflo $1
sh $4, 0($1)
bgez $4, TAG40
TAG40:
sh $1, 0($1)
bgez $1, TAG41
addi $1, $1, 14
slti $4, $1, 0
TAG41:
mflo $3
sh $4, 0($3)
lbu $3, 0($3)
lb $3, 0($4)
TAG42:
slti $1, $3, 10
div $3, $1
bgtz $1, TAG43
addiu $4, $1, 4
TAG43:
addiu $3, $4, 6
mtlo $4
lbu $2, 0($3)
mthi $2
TAG44:
mtlo $2
lui $4, 7
xori $2, $2, 0
ori $3, $2, 0
TAG45:
sw $3, 0($3)
sh $3, 0($3)
mtlo $3
mult $3, $3
TAG46:
mflo $3
bne $3, $3, TAG47
sw $3, 0($3)
sub $3, $3, $3
TAG47:
beq $3, $3, TAG48
sh $3, 0($3)
bltz $3, TAG48
sltiu $3, $3, 2
TAG48:
mult $3, $3
mthi $3
sh $3, 0($3)
mtlo $3
TAG49:
sb $3, 0($3)
beq $3, $3, TAG50
mtlo $3
lui $4, 2
TAG50:
slti $2, $4, 5
mfhi $4
multu $4, $4
mthi $2
TAG51:
nor $2, $4, $4
sub $1, $2, $4
bltz $1, TAG52
sh $1, 0($4)
TAG52:
mfhi $3
bltz $3, TAG53
lb $2, 0($3)
beq $1, $3, TAG53
TAG53:
and $3, $2, $2
multu $3, $2
mtlo $3
xori $3, $3, 5
TAG54:
subu $1, $3, $3
sb $1, 6($3)
beq $3, $1, TAG55
lw $1, 6($3)
TAG55:
mthi $1
lui $2, 5
sll $0, $0, 0
addiu $1, $2, 3
TAG56:
mult $1, $1
beq $1, $1, TAG57
lui $4, 12
lhu $4, 0($1)
TAG57:
sra $4, $4, 5
and $2, $4, $4
mfhi $2
bgez $2, TAG58
TAG58:
andi $3, $2, 13
mfhi $3
bltz $3, TAG59
mfhi $2
TAG59:
mflo $4
mflo $4
lui $4, 0
lui $4, 13
TAG60:
lui $4, 15
mtlo $4
mult $4, $4
bgez $4, TAG61
TAG61:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG62
divu $4, $4
TAG62:
lui $2, 12
sll $0, $0, 0
beq $2, $1, TAG63
andi $3, $2, 12
TAG63:
beq $3, $3, TAG64
lw $1, 0($3)
divu $1, $3
mfhi $2
TAG64:
sra $2, $2, 3
andi $2, $2, 2
mtlo $2
subu $4, $2, $2
TAG65:
and $1, $4, $4
mflo $4
lui $1, 14
lui $2, 0
TAG66:
slt $4, $2, $2
mtlo $4
sb $4, 0($4)
slt $1, $4, $2
TAG67:
lbu $4, 0($1)
sh $4, 0($4)
sh $4, 0($4)
mflo $1
TAG68:
lh $1, 0($1)
sb $1, 0($1)
mtlo $1
addu $4, $1, $1
TAG69:
lui $1, 13
lui $4, 1
mflo $1
multu $1, $4
TAG70:
beq $1, $1, TAG71
lw $3, 0($1)
mflo $1
addi $4, $1, 0
TAG71:
mult $4, $4
sll $0, $0, 0
lui $4, 2
lui $2, 10
TAG72:
mthi $2
bne $2, $2, TAG73
sll $0, $0, 0
mfhi $4
TAG73:
sll $0, $0, 0
mult $4, $2
lui $1, 1
mfhi $1
TAG74:
andi $1, $1, 1
lw $2, 0($1)
lui $1, 12
multu $2, $1
TAG75:
mtlo $1
sltiu $1, $1, 0
lw $4, 0($1)
blez $1, TAG76
TAG76:
lui $4, 0
addiu $3, $4, 0
srlv $2, $3, $4
multu $4, $2
TAG77:
nor $1, $2, $2
lbu $4, 1($1)
mflo $1
lh $1, 0($1)
TAG78:
lui $3, 6
lui $4, 4
sll $0, $0, 0
lbu $1, 0($1)
TAG79:
bgtz $1, TAG80
andi $3, $1, 1
lui $4, 1
addiu $1, $3, 0
TAG80:
lhu $3, 0($1)
lbu $3, 0($3)
bltz $3, TAG81
lw $4, 0($1)
TAG81:
sllv $1, $4, $4
mflo $1
bne $4, $1, TAG82
sh $4, 0($1)
TAG82:
beq $1, $1, TAG83
sw $1, 0($1)
mtlo $1
blez $1, TAG83
TAG83:
mtlo $1
blez $1, TAG84
lui $4, 8
sra $2, $4, 11
TAG84:
mflo $4
lbu $2, 0($2)
mfhi $2
sw $2, 0($2)
TAG85:
sw $2, 0($2)
lui $2, 7
sll $2, $2, 15
sltiu $2, $2, 13
TAG86:
mflo $1
bne $2, $1, TAG87
sb $2, 0($2)
sb $1, 0($2)
TAG87:
mflo $1
mthi $1
mthi $1
lui $1, 9
TAG88:
addiu $2, $1, 8
mfhi $4
sll $0, $0, 0
beq $4, $2, TAG89
TAG89:
mflo $2
lw $3, 0($2)
mflo $2
beq $3, $2, TAG90
TAG90:
sw $2, 0($2)
mult $2, $2
mthi $2
lui $4, 9
TAG91:
lui $2, 2
sll $0, $0, 0
sb $4, 0($3)
bgez $4, TAG92
TAG92:
lhu $1, 0($3)
lui $4, 7
mtlo $3
bgez $3, TAG93
TAG93:
multu $4, $4
sll $0, $0, 0
mtlo $4
mflo $3
TAG94:
sll $0, $0, 0
lui $1, 6
bltz $1, TAG95
div $1, $3
TAG95:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG96:
mfhi $4
mthi $4
subu $3, $4, $4
mflo $4
TAG97:
mflo $1
lui $1, 13
div $1, $1
bgez $1, TAG98
TAG98:
addiu $2, $1, 12
bgtz $2, TAG99
slti $4, $2, 8
mflo $4
TAG99:
mfhi $3
mthi $3
mthi $4
bne $3, $3, TAG100
TAG100:
mult $3, $3
mfhi $2
mult $2, $2
mflo $3
TAG101:
add $2, $3, $3
beq $2, $3, TAG102
multu $2, $2
sh $2, 0($3)
TAG102:
mthi $2
bgez $2, TAG103
srav $2, $2, $2
mtlo $2
TAG103:
lb $4, 0($2)
mtlo $4
andi $2, $4, 0
beq $2, $2, TAG104
TAG104:
sltiu $4, $2, 7
blez $2, TAG105
slt $2, $2, $2
bltz $4, TAG105
TAG105:
mult $2, $2
addi $4, $2, 0
bltz $4, TAG106
lw $3, 0($2)
TAG106:
bgez $3, TAG107
sllv $1, $3, $3
beq $1, $1, TAG107
mthi $3
TAG107:
lbu $2, 0($1)
mthi $1
mthi $1
mflo $3
TAG108:
beq $3, $3, TAG109
sh $3, 0($3)
lui $4, 9
mult $3, $4
TAG109:
mthi $4
mtlo $4
lui $1, 12
sll $0, $0, 0
TAG110:
sltu $2, $2, $2
sh $2, 0($2)
mult $2, $2
sllv $2, $2, $2
TAG111:
bgtz $2, TAG112
mthi $2
sb $2, 0($2)
sb $2, 0($2)
TAG112:
multu $2, $2
add $2, $2, $2
mfhi $2
addiu $4, $2, 1
TAG113:
mthi $4
bltz $4, TAG114
multu $4, $4
sltu $1, $4, $4
TAG114:
mflo $2
bne $2, $2, TAG115
mflo $2
lbu $1, 0($2)
TAG115:
multu $1, $1
slti $1, $1, 9
beq $1, $1, TAG116
subu $3, $1, $1
TAG116:
multu $3, $3
xor $3, $3, $3
multu $3, $3
bne $3, $3, TAG117
TAG117:
add $1, $3, $3
lui $4, 5
mtlo $3
lui $3, 15
TAG118:
beq $3, $3, TAG119
andi $3, $3, 9
blez $3, TAG119
lw $3, 0($3)
TAG119:
mflo $2
lb $4, 0($2)
sub $3, $4, $3
lui $1, 11
TAG120:
bgez $1, TAG121
xori $2, $1, 1
slt $1, $1, $1
addiu $3, $1, 15
TAG121:
addiu $4, $3, 6
lui $2, 5
div $3, $2
bltz $3, TAG122
TAG122:
sll $0, $0, 0
lui $3, 9
multu $3, $2
divu $3, $3
TAG123:
beq $3, $3, TAG124
lui $1, 11
mflo $4
lhu $1, 0($1)
TAG124:
sll $0, $0, 0
sra $2, $1, 15
mtlo $1
or $1, $1, $2
TAG125:
bgez $1, TAG126
sll $0, $0, 0
sw $1, 0($1)
sltu $4, $1, $1
TAG126:
bltz $4, TAG127
sb $4, 0($4)
or $3, $4, $4
or $3, $3, $3
TAG127:
div $3, $3
sb $3, 0($3)
bgez $3, TAG128
lui $3, 7
TAG128:
mult $3, $3
mtlo $3
lui $4, 7
srlv $2, $3, $4
TAG129:
mtlo $2
lui $2, 0
multu $2, $2
mthi $2
TAG130:
lb $3, 0($2)
lui $4, 11
mflo $4
sllv $3, $4, $3
TAG131:
mflo $2
subu $2, $3, $3
sllv $1, $2, $2
nor $2, $1, $2
TAG132:
mtlo $2
mtlo $2
mflo $3
sh $3, 1($2)
TAG133:
sll $0, $0, 0
lui $2, 13
mflo $4
sllv $3, $3, $4
TAG134:
bgez $3, TAG135
addu $4, $3, $3
addiu $2, $3, 11
mflo $3
TAG135:
sltiu $2, $3, 12
lh $3, 1($3)
addiu $1, $3, 13
addi $2, $2, 7
TAG136:
divu $2, $2
bltz $2, TAG137
lui $1, 7
beq $1, $1, TAG137
TAG137:
mtlo $1
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG138:
lui $3, 13
sll $0, $0, 0
lui $4, 4
sll $0, $0, 0
TAG139:
mfhi $3
bgtz $3, TAG140
sll $0, $0, 0
sw $4, 0($3)
TAG140:
addiu $3, $3, 3
sb $3, 0($3)
slti $2, $3, 0
srlv $2, $3, $3
TAG141:
lui $3, 12
mfhi $2
mfhi $4
sll $0, $0, 0
TAG142:
sll $0, $0, 0
lui $1, 6
sll $0, $0, 0
blez $1, TAG143
TAG143:
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
beq $3, $3, TAG144
TAG144:
sll $0, $0, 0
sltu $1, $3, $3
sh $3, 0($1)
mult $3, $1
TAG145:
multu $1, $1
beq $1, $1, TAG146
mult $1, $1
sh $1, 0($1)
TAG146:
lui $3, 6
blez $3, TAG147
mfhi $2
mtlo $1
TAG147:
lh $4, 0($2)
blez $2, TAG148
lui $1, 2
mtlo $4
TAG148:
sll $0, $0, 0
mult $2, $2
addi $2, $2, 13
bgtz $1, TAG149
TAG149:
lbu $4, 0($2)
multu $4, $4
divu $4, $2
mthi $4
TAG150:
sb $4, 0($4)
beq $4, $4, TAG151
mthi $4
sh $4, 0($4)
TAG151:
bne $4, $4, TAG152
subu $4, $4, $4
blez $4, TAG152
mult $4, $4
TAG152:
addi $2, $4, 2
mflo $4
mtlo $4
mult $4, $4
TAG153:
mthi $4
lui $3, 14
divu $3, $3
sll $1, $4, 7
TAG154:
lb $4, 0($1)
bgtz $4, TAG155
multu $4, $1
lw $2, 0($1)
TAG155:
sll $0, $0, 0
bgez $3, TAG156
sltu $3, $3, $3
lui $4, 7
TAG156:
lb $1, 0($4)
sw $4, 0($4)
addiu $4, $4, 10
multu $4, $4
TAG157:
slt $4, $4, $4
xor $3, $4, $4
subu $1, $3, $4
slti $3, $3, 10
TAG158:
sb $3, 0($3)
lui $4, 14
subu $4, $3, $3
multu $3, $4
TAG159:
beq $4, $4, TAG160
mult $4, $4
mfhi $3
addiu $4, $3, 14
TAG160:
lbu $4, 0($4)
mflo $1
mult $4, $1
mfhi $1
TAG161:
bne $1, $1, TAG162
mfhi $1
mflo $1
lui $3, 2
TAG162:
bne $3, $3, TAG163
lui $2, 7
lui $2, 1
sll $2, $2, 12
TAG163:
bgez $2, TAG164
sltu $2, $2, $2
lb $1, 0($2)
divu $2, $1
TAG164:
add $4, $1, $1
bgtz $1, TAG165
sb $1, 0($1)
multu $1, $1
TAG165:
srav $2, $4, $4
mflo $3
add $1, $2, $3
mult $1, $4
TAG166:
bgtz $1, TAG167
mult $1, $1
xor $2, $1, $1
mflo $4
TAG167:
mtlo $4
mflo $3
beq $4, $4, TAG168
lui $4, 6
TAG168:
sll $0, $0, 0
lhu $1, 0($2)
lb $3, -256($1)
bne $3, $2, TAG169
TAG169:
addi $2, $3, 3
mflo $1
mthi $2
multu $2, $1
TAG170:
bgez $1, TAG171
mthi $1
lui $2, 13
mtlo $1
TAG171:
or $1, $2, $2
mthi $2
mflo $3
lw $1, 0($3)
TAG172:
div $1, $1
sb $1, -256($1)
beq $1, $1, TAG173
lb $2, -256($1)
TAG173:
lhu $1, 0($2)
slti $3, $1, 15
beq $3, $3, TAG174
slti $1, $1, 12
TAG174:
slt $1, $1, $1
mtlo $1
multu $1, $1
mflo $2
TAG175:
lui $3, 12
sll $3, $2, 3
beq $3, $3, TAG176
lui $1, 15
TAG176:
bgez $1, TAG177
sll $0, $0, 0
slti $1, $1, 1
mflo $4
TAG177:
addu $3, $4, $4
mflo $2
sra $1, $2, 14
mflo $2
TAG178:
add $4, $2, $2
mflo $3
blez $3, TAG179
lui $1, 13
TAG179:
div $1, $1
mfhi $1
lhu $3, 0($1)
sub $4, $3, $1
TAG180:
bgez $4, TAG181
mfhi $4
sh $4, 0($4)
lui $1, 3
TAG181:
mfhi $3
beq $1, $3, TAG182
lhu $3, 0($1)
mflo $3
TAG182:
bgez $3, TAG183
lh $2, -256($3)
beq $2, $2, TAG183
lui $2, 8
TAG183:
bltz $2, TAG184
mflo $3
mfhi $3
bne $3, $3, TAG184
TAG184:
sw $3, 0($3)
mthi $3
mult $3, $3
lui $3, 7
TAG185:
mtlo $3
div $3, $3
srlv $2, $3, $3
bne $2, $2, TAG186
TAG186:
sllv $3, $2, $2
mtlo $3
mult $3, $3
nor $1, $2, $3
TAG187:
bltz $1, TAG188
mtlo $1
mthi $1
mfhi $4
TAG188:
sw $4, 0($4)
sb $4, 0($4)
lw $1, 0($4)
xor $2, $4, $4
TAG189:
lh $2, 0($2)
mthi $2
ori $3, $2, 6
addu $3, $2, $2
TAG190:
sb $3, 0($3)
multu $3, $3
lui $1, 14
sll $0, $0, 0
TAG191:
sll $0, $0, 0
xori $3, $1, 2
lui $4, 12
mtlo $4
TAG192:
addu $1, $4, $4
blez $1, TAG193
sllv $4, $4, $1
beq $4, $1, TAG193
TAG193:
sll $0, $0, 0
bltz $4, TAG194
mult $4, $4
mtlo $4
TAG194:
or $4, $4, $4
bne $4, $4, TAG195
slti $2, $4, 7
lui $2, 0
TAG195:
mflo $1
mfhi $4
addiu $3, $1, 6
bne $3, $1, TAG196
TAG196:
subu $1, $3, $3
sll $0, $0, 0
multu $1, $1
lui $4, 7
TAG197:
srlv $3, $4, $4
beq $4, $4, TAG198
mthi $3
or $2, $3, $4
TAG198:
bne $2, $2, TAG199
lbu $3, 0($2)
addiu $2, $2, 8
mtlo $3
TAG199:
divu $2, $2
addiu $4, $2, 7
div $2, $4
lui $4, 0
TAG200:
mult $4, $4
mthi $4
lui $4, 2
sll $0, $0, 0
TAG201:
sll $0, $0, 0
lui $2, 12
mthi $2
sll $0, $0, 0
TAG202:
sll $0, $0, 0
mthi $4
multu $4, $4
mtlo $4
TAG203:
xor $3, $4, $4
mult $3, $4
xori $2, $3, 13
sb $4, 0($3)
TAG204:
div $2, $2
div $2, $2
or $3, $2, $2
lui $4, 12
TAG205:
mult $4, $4
lui $3, 4
mult $4, $4
sltiu $1, $4, 1
TAG206:
sltu $3, $1, $1
multu $1, $1
multu $3, $3
lui $2, 12
TAG207:
sll $0, $0, 0
bgez $2, TAG208
mult $1, $1
sll $1, $1, 11
TAG208:
addu $4, $1, $1
bgtz $4, TAG209
xori $1, $1, 3
mflo $3
TAG209:
sltu $2, $3, $3
sw $2, 0($3)
sra $4, $3, 15
sub $1, $3, $3
TAG210:
mfhi $2
bgtz $2, TAG211
lui $2, 8
lui $2, 9
TAG211:
sll $0, $0, 0
bgtz $2, TAG212
mflo $1
bgtz $1, TAG212
TAG212:
sw $1, 0($1)
mtlo $1
bltz $1, TAG213
multu $1, $1
TAG213:
lui $2, 15
bne $2, $2, TAG214
lui $4, 2
andi $2, $4, 0
TAG214:
sh $2, 0($2)
mtlo $2
blez $2, TAG215
addiu $4, $2, 14
TAG215:
bne $4, $4, TAG216
mtlo $4
sh $4, 0($4)
lui $1, 14
TAG216:
sll $3, $1, 4
mfhi $3
bne $1, $3, TAG217
lw $3, 0($3)
TAG217:
lb $1, 0($3)
lhu $4, 0($3)
mfhi $1
mtlo $1
TAG218:
lhu $1, 0($1)
add $2, $1, $1
sh $2, 0($2)
mtlo $1
TAG219:
add $2, $2, $2
and $1, $2, $2
nor $2, $1, $2
lui $1, 7
TAG220:
sll $0, $0, 0
div $1, $1
bltz $1, TAG221
addu $3, $1, $1
TAG221:
mflo $1
mult $1, $1
lui $2, 5
bne $1, $3, TAG222
TAG222:
mthi $2
sll $0, $0, 0
lui $2, 15
lui $4, 12
TAG223:
lui $4, 9
lui $4, 8
sll $0, $0, 0
bgez $4, TAG224
TAG224:
lui $2, 1
subu $2, $1, $2
mthi $2
bltz $1, TAG225
TAG225:
mflo $4
blez $4, TAG226
xori $1, $4, 1
mfhi $3
TAG226:
mtlo $3
beq $3, $3, TAG227
div $3, $3
sh $3, 0($3)
TAG227:
bne $3, $3, TAG228
mthi $3
mthi $3
bne $3, $3, TAG228
TAG228:
mthi $3
sll $0, $0, 0
slti $1, $3, 9
bgtz $1, TAG229
TAG229:
lbu $3, 0($1)
lbu $3, 0($1)
addu $2, $3, $3
mfhi $1
TAG230:
lui $1, 5
mtlo $1
lui $3, 6
sll $0, $0, 0
TAG231:
mtlo $3
lui $2, 15
divu $3, $3
srlv $3, $2, $2
TAG232:
srlv $3, $3, $3
mflo $1
beq $3, $3, TAG233
sll $0, $0, 0
TAG233:
slti $1, $1, 13
div $1, $1
beq $1, $1, TAG234
mfhi $1
TAG234:
sb $1, 0($1)
beq $1, $1, TAG235
lh $4, 0($1)
beq $4, $1, TAG235
TAG235:
lw $1, 0($4)
bgtz $1, TAG236
mtlo $1
lui $1, 12
TAG236:
lui $2, 1
bne $2, $2, TAG237
sll $0, $0, 0
bgtz $1, TAG237
TAG237:
mflo $3
sw $1, 0($3)
mthi $3
mfhi $2
TAG238:
mfhi $2
sub $3, $2, $2
bne $2, $2, TAG239
multu $2, $3
TAG239:
lui $2, 15
slti $3, $3, 5
lb $2, 0($3)
lbu $1, 0($2)
TAG240:
bgtz $1, TAG241
sh $1, 0($1)
lui $2, 4
andi $1, $2, 9
TAG241:
sb $1, 0($1)
bltz $1, TAG242
sb $1, 0($1)
bgez $1, TAG242
TAG242:
lui $3, 7
mflo $2
sll $1, $2, 6
bgtz $2, TAG243
TAG243:
lw $1, 0($1)
beq $1, $1, TAG244
sll $0, $0, 0
lb $2, 0($1)
TAG244:
add $3, $2, $2
lb $1, 0($2)
beq $2, $2, TAG245
lui $1, 11
TAG245:
slt $1, $1, $1
mult $1, $1
bgtz $1, TAG246
sll $3, $1, 7
TAG246:
nor $2, $3, $3
bne $2, $2, TAG247
nor $3, $3, $2
mthi $3
TAG247:
lh $1, 0($3)
slti $3, $1, 8
lbu $4, 0($3)
mflo $2
TAG248:
mtlo $2
sra $3, $2, 0
lw $2, 0($2)
mflo $2
TAG249:
lui $2, 14
lui $3, 11
srlv $2, $2, $2
bltz $2, TAG250
TAG250:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
TAG251:
divu $2, $2
sll $0, $0, 0
lui $2, 3
sll $0, $0, 0
TAG252:
bgtz $4, TAG253
mtlo $4
mult $4, $4
beq $4, $4, TAG253
TAG253:
mtlo $4
addi $3, $4, 0
bne $4, $4, TAG254
lui $2, 15
TAG254:
mthi $2
lui $1, 8
blez $2, TAG255
addu $3, $2, $2
TAG255:
xori $3, $3, 1
bgtz $3, TAG256
sll $0, $0, 0
beq $3, $3, TAG256
TAG256:
sll $0, $0, 0
beq $4, $3, TAG257
nor $4, $4, $4
mfhi $2
TAG257:
subu $1, $2, $2
bgez $2, TAG258
xori $2, $1, 15
lui $1, 11
TAG258:
mult $1, $1
lw $4, 0($1)
lw $4, 0($1)
sra $2, $1, 3
TAG259:
bne $2, $2, TAG260
mfhi $4
lbu $1, 0($2)
blez $4, TAG260
TAG260:
addi $4, $1, 8
bgez $1, TAG261
sll $2, $4, 4
lb $2, 0($2)
TAG261:
divu $2, $2
mult $2, $2
bgtz $2, TAG262
slt $4, $2, $2
TAG262:
lui $3, 10
lui $1, 7
sll $0, $0, 0
bne $4, $3, TAG263
TAG263:
lui $4, 0
slt $3, $4, $4
bgez $4, TAG264
mflo $1
TAG264:
sllv $1, $1, $1
beq $1, $1, TAG265
lbu $1, -16384($1)
lui $4, 10
TAG265:
srav $2, $4, $4
blez $4, TAG266
mtlo $4
lw $3, 0($4)
TAG266:
lui $3, 9
sll $1, $3, 15
divu $1, $3
mult $3, $1
TAG267:
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $1, 11
TAG268:
mult $3, $3
bgez $3, TAG269
mflo $4
blez $4, TAG269
TAG269:
sll $0, $0, 0
mflo $4
sll $0, $0, 0
beq $3, $4, TAG270
TAG270:
sll $0, $0, 0
andi $4, $3, 6
sh $4, 0($4)
sra $2, $3, 11
TAG271:
bltz $2, TAG272
sw $2, -416($2)
addiu $2, $2, 10
lui $1, 12
TAG272:
mfhi $2
mtlo $2
lui $3, 10
sll $0, $0, 0
TAG273:
bltz $3, TAG274
slti $4, $3, 9
sb $4, 0($4)
beq $3, $3, TAG274
TAG274:
mult $4, $4
lui $4, 3
divu $4, $4
lui $4, 15
TAG275:
sll $0, $0, 0
sll $0, $0, 0
xor $2, $3, $3
lui $2, 6
TAG276:
bne $2, $2, TAG277
sll $0, $0, 0
beq $2, $2, TAG277
mflo $1
TAG277:
sltiu $4, $1, 11
bltz $1, TAG278
srlv $4, $1, $1
nor $3, $4, $4
TAG278:
subu $3, $3, $3
blez $3, TAG279
andi $1, $3, 14
lh $1, 0($3)
TAG279:
addiu $2, $1, 10
lui $1, 13
sllv $2, $2, $1
lui $4, 9
TAG280:
slti $2, $4, 5
mfhi $1
bne $2, $4, TAG281
ori $1, $4, 10
TAG281:
beq $1, $1, TAG282
mult $1, $1
bne $1, $1, TAG282
lh $2, 0($1)
TAG282:
mthi $2
lbu $4, 0($2)
beq $2, $2, TAG283
lw $1, 0($4)
TAG283:
divu $1, $1
sb $1, -256($1)
mtlo $1
mthi $1
TAG284:
bgtz $1, TAG285
sll $3, $1, 4
xori $4, $1, 9
or $1, $4, $3
TAG285:
mtlo $1
subu $1, $1, $1
mtlo $1
lh $3, 0($1)
TAG286:
sll $0, $0, 0
mthi $2
bgtz $3, TAG287
sb $2, 0($2)
TAG287:
mult $2, $2
lhu $1, 0($2)
mflo $1
lbu $1, 0($2)
TAG288:
lb $3, 0($1)
mult $3, $3
mthi $3
mtlo $1
TAG289:
bne $3, $3, TAG290
sb $3, 0($3)
mfhi $1
add $2, $3, $3
TAG290:
mult $2, $2
sb $2, 0($2)
multu $2, $2
lb $1, 0($2)
TAG291:
ori $1, $1, 13
lui $2, 15
mtlo $1
srav $4, $1, $1
TAG292:
lhu $4, 0($4)
bltz $4, TAG293
mflo $4
mthi $4
TAG293:
mthi $4
bgtz $4, TAG294
mfhi $2
sb $2, 0($4)
TAG294:
or $2, $2, $2
lbu $2, 0($2)
beq $2, $2, TAG295
and $2, $2, $2
TAG295:
nor $1, $2, $2
and $3, $1, $2
mult $3, $2
xor $3, $2, $1
TAG296:
bltz $3, TAG297
addu $2, $3, $3
beq $2, $2, TAG297
lhu $1, 0($2)
TAG297:
sh $1, 1($1)
srl $4, $1, 1
sll $0, $0, 0
mflo $2
TAG298:
bltz $2, TAG299
mtlo $2
addiu $3, $2, 14
beq $3, $3, TAG299
TAG299:
lhu $2, 0($3)
addu $1, $2, $2
bgtz $1, TAG300
mflo $4
TAG300:
srav $3, $4, $4
mflo $2
srlv $1, $3, $2
and $2, $3, $3
TAG301:
sltiu $1, $2, 7
slt $3, $1, $2
addi $3, $3, 9
mfhi $2
TAG302:
sb $2, 0($2)
andi $1, $2, 1
lui $1, 6
lui $4, 2
TAG303:
bne $4, $4, TAG304
mfhi $4
srl $2, $4, 14
andi $1, $2, 3
TAG304:
bgez $1, TAG305
mult $1, $1
ori $2, $1, 2
lui $4, 6
TAG305:
bne $4, $4, TAG306
lui $1, 1
sb $1, 0($4)
mtlo $1
TAG306:
sll $0, $0, 0
sltu $3, $1, $1
bgez $1, TAG307
sll $0, $0, 0
TAG307:
multu $3, $3
mthi $3
mflo $1
lui $2, 13
TAG308:
mthi $2
bgez $2, TAG309
mflo $2
slti $3, $2, 9
TAG309:
xori $4, $3, 2
lh $3, 0($3)
lbu $1, 0($4)
lui $4, 13
TAG310:
xor $3, $4, $4
sh $4, 0($3)
mfhi $3
mtlo $3
TAG311:
divu $3, $3
divu $3, $3
sll $0, $0, 0
bgez $3, TAG312
TAG312:
sh $1, 0($1)
xor $3, $1, $1
mfhi $4
mult $4, $3
TAG313:
lhu $3, 0($4)
lui $2, 9
bltz $3, TAG314
lui $2, 8
TAG314:
mfhi $3
bltz $2, TAG315
mult $3, $3
sb $3, 0($3)
TAG315:
lh $2, 0($3)
mthi $2
mfhi $3
lui $2, 6
TAG316:
lui $2, 12
mtlo $2
multu $2, $2
div $2, $2
TAG317:
bltz $2, TAG318
sltu $4, $2, $2
addiu $4, $2, 2
mtlo $4
TAG318:
slt $3, $4, $4
lui $4, 5
mflo $3
sll $0, $0, 0
TAG319:
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG320
lui $2, 14
TAG320:
mthi $2
lui $4, 5
lui $3, 3
sltiu $1, $4, 4
TAG321:
lui $3, 4
sll $4, $3, 7
sll $0, $0, 0
lui $2, 1
TAG322:
lui $4, 12
beq $2, $2, TAG323
mflo $3
div $3, $3
TAG323:
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG324
and $4, $3, $3
TAG324:
lui $2, 9
sll $0, $0, 0
divu $4, $2
mfhi $3
TAG325:
sll $0, $0, 0
lui $2, 0
mflo $3
lui $1, 4
TAG326:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG327
sll $0, $0, 0
TAG327:
sw $2, 0($2)
mfhi $1
lui $3, 10
bne $1, $3, TAG328
TAG328:
div $3, $3
bne $3, $3, TAG329
sll $0, $0, 0
and $4, $3, $3
TAG329:
mthi $4
addiu $1, $4, 6
mflo $1
slti $4, $1, 4
TAG330:
lbu $1, 0($4)
mtlo $4
mtlo $4
sb $4, 0($4)
TAG331:
beq $1, $1, TAG332
lbu $3, 0($1)
lui $1, 9
beq $1, $1, TAG332
TAG332:
mtlo $1
lw $2, 0($1)
lh $3, 0($1)
beq $2, $2, TAG333
TAG333:
mthi $3
sltu $1, $3, $3
sltu $2, $1, $1
srav $3, $2, $2
TAG334:
slti $1, $3, 10
addiu $2, $1, 14
mtlo $1
ori $2, $2, 7
TAG335:
divu $2, $2
bgtz $2, TAG336
mthi $2
ori $3, $2, 10
TAG336:
mfhi $1
mfhi $1
beq $3, $1, TAG337
or $4, $1, $1
TAG337:
bgtz $4, TAG338
mflo $4
mfhi $1
mfhi $4
TAG338:
lb $2, 0($4)
beq $4, $2, TAG339
lb $2, 0($2)
mtlo $2
TAG339:
bgtz $2, TAG340
mtlo $2
lhu $2, 0($2)
xori $1, $2, 10
TAG340:
lbu $2, 0($1)
srl $3, $1, 1
mfhi $4
srav $1, $3, $3
TAG341:
sb $1, 0($1)
srlv $3, $1, $1
sub $1, $1, $3
mtlo $1
TAG342:
mthi $1
mflo $4
mthi $1
lui $1, 11
TAG343:
lui $3, 3
mtlo $3
addiu $1, $3, 1
bgez $1, TAG344
TAG344:
lui $4, 6
lui $1, 14
mflo $1
divu $1, $1
TAG345:
beq $1, $1, TAG346
mfhi $4
lui $4, 8
srl $3, $1, 11
TAG346:
sll $0, $0, 0
lui $3, 12
addu $2, $3, $3
mthi $2
TAG347:
lui $4, 9
sll $0, $0, 0
blez $3, TAG348
sll $0, $0, 0
TAG348:
lui $2, 12
bgtz $2, TAG349
and $2, $2, $3
addiu $1, $2, 12
TAG349:
sll $0, $0, 0
bgez $1, TAG350
lui $4, 2
lw $4, 0($1)
TAG350:
blez $4, TAG351
lui $1, 15
lui $4, 5
div $4, $4
TAG351:
mthi $4
sll $0, $0, 0
mult $4, $4
divu $4, $4
TAG352:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
addu $2, $4, $3
TAG353:
divu $2, $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG354:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
multu $4, $4
TAG355:
lui $2, 3
multu $4, $2
mult $2, $4
lh $1, 0($4)
TAG356:
sw $1, -256($1)
mthi $1
xor $1, $1, $1
add $3, $1, $1
TAG357:
add $4, $3, $3
xor $2, $4, $3
lui $1, 0
addu $1, $3, $2
TAG358:
sub $3, $1, $1
bne $3, $1, TAG359
sh $3, 0($3)
lui $3, 1
TAG359:
sll $0, $0, 0
mtlo $3
addu $3, $1, $1
beq $3, $3, TAG360
TAG360:
mthi $3
mflo $4
sra $3, $4, 1
sll $0, $0, 0
TAG361:
mult $3, $3
addu $2, $3, $3
addiu $3, $3, 10
sll $0, $0, 0
TAG362:
bgez $1, TAG363
sltiu $3, $1, 4
bne $1, $1, TAG363
mult $1, $3
TAG363:
mfhi $3
slt $4, $3, $3
blez $3, TAG364
multu $3, $3
TAG364:
mtlo $4
lhu $3, 0($4)
sra $1, $4, 15
lw $4, 0($4)
TAG365:
mthi $4
mflo $3
sw $4, 0($4)
beq $3, $3, TAG366
TAG366:
mthi $3
mtlo $3
multu $3, $3
mtlo $3
TAG367:
lbu $4, 0($3)
mtlo $4
mflo $2
bne $2, $4, TAG368
TAG368:
or $1, $2, $2
mthi $1
mfhi $4
addi $2, $1, 5
TAG369:
mthi $2
bne $2, $2, TAG370
divu $2, $2
bne $2, $2, TAG370
TAG370:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $2, 15
TAG371:
sll $0, $0, 0
addiu $4, $3, 15
mfhi $2
addiu $3, $2, 5
TAG372:
multu $3, $3
slti $3, $3, 10
slti $3, $3, 14
blez $3, TAG373
TAG373:
mflo $4
mult $4, $3
lb $2, 0($3)
bne $2, $4, TAG374
TAG374:
lui $2, 4
lui $3, 4
sra $1, $2, 10
sra $1, $2, 0
TAG375:
mtlo $1
bne $1, $1, TAG376
sra $3, $1, 8
addiu $4, $1, 10
TAG376:
beq $4, $4, TAG377
addiu $4, $4, 15
sb $4, 0($4)
divu $4, $4
TAG377:
bne $4, $4, TAG378
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
TAG378:
addiu $2, $4, 10
sll $0, $0, 0
subu $2, $2, $2
blez $2, TAG379
TAG379:
mfhi $2
andi $2, $2, 15
lui $1, 2
blez $2, TAG380
TAG380:
mthi $1
addiu $2, $1, 2
subu $4, $1, $1
lui $2, 3
TAG381:
sll $4, $2, 1
sll $0, $0, 0
mflo $1
lui $4, 2
TAG382:
mthi $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG383:
multu $4, $4
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
TAG384:
bne $3, $3, TAG385
sltu $1, $3, $3
bgtz $3, TAG385
mfhi $1
TAG385:
beq $1, $1, TAG386
lbu $3, 0($1)
multu $3, $1
beq $3, $1, TAG386
TAG386:
lui $3, 12
ori $2, $3, 1
sll $0, $0, 0
bltz $2, TAG387
TAG387:
div $2, $2
mflo $4
sll $0, $0, 0
mflo $2
TAG388:
bne $2, $2, TAG389
mtlo $2
mfhi $1
sw $2, 0($1)
TAG389:
sltiu $1, $1, 6
lbu $1, 0($1)
lb $4, 0($1)
lb $1, 0($1)
TAG390:
xor $1, $1, $1
sw $1, 0($1)
sw $1, 0($1)
mthi $1
TAG391:
mfhi $3
multu $3, $1
lui $2, 15
lh $4, 0($3)
TAG392:
nor $4, $4, $4
lb $1, 1($4)
mtlo $4
mtlo $4
TAG393:
bgtz $1, TAG394
lw $3, 0($1)
lui $3, 1
or $3, $3, $3
TAG394:
lui $3, 12
addiu $2, $3, 4
divu $2, $2
lui $3, 12
TAG395:
addiu $3, $3, 0
sll $0, $0, 0
sll $0, $0, 0
subu $1, $4, $3
TAG396:
sll $0, $0, 0
lui $1, 13
xor $2, $2, $2
multu $2, $1
TAG397:
blez $2, TAG398
srlv $2, $2, $2
sltiu $3, $2, 2
mflo $3
TAG398:
lui $1, 3
bne $1, $1, TAG399
sll $0, $0, 0
div $3, $3
TAG399:
mflo $1
mtlo $1
lui $2, 2
bne $2, $1, TAG400
TAG400:
sll $0, $0, 0
sll $1, $2, 11
sll $0, $0, 0
mtlo $2
TAG401:
div $2, $2
mthi $2
lui $3, 6
sra $2, $3, 2
TAG402:
mfhi $1
mthi $1
ori $4, $2, 13
beq $4, $1, TAG403
TAG403:
lui $1, 2
nor $3, $4, $4
multu $3, $3
div $1, $3
TAG404:
mult $3, $3
mthi $3
bgez $3, TAG405
sll $0, $0, 0
TAG405:
beq $3, $3, TAG406
or $3, $3, $3
lui $4, 14
beq $3, $4, TAG406
TAG406:
sll $0, $0, 0
slti $2, $1, 2
addu $2, $4, $1
sll $0, $0, 0
TAG407:
beq $2, $2, TAG408
addu $4, $2, $2
mflo $1
sw $1, 0($2)
TAG408:
bgez $1, TAG409
lui $4, 2
div $1, $4
mflo $3
TAG409:
beq $3, $3, TAG410
mfhi $1
lui $4, 13
divu $1, $4
TAG410:
mfhi $1
subu $1, $4, $1
and $1, $1, $1
mflo $4
TAG411:
sll $0, $0, 0
blez $4, TAG412
srlv $2, $4, $1
lui $2, 10
TAG412:
lui $1, 11
beq $2, $1, TAG413
multu $2, $1
sll $0, $0, 0
TAG413:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG414
TAG414:
lui $2, 5
mflo $3
mtlo $4
sll $0, $0, 0
TAG415:
sll $0, $0, 0
blez $3, TAG416
mult $3, $3
sll $0, $0, 0
TAG416:
multu $3, $3
ori $2, $3, 7
bne $3, $3, TAG417
andi $3, $2, 5
TAG417:
beq $3, $3, TAG418
slti $1, $3, 3
bltz $1, TAG418
div $1, $3
TAG418:
srl $1, $1, 10
bltz $1, TAG419
srl $1, $1, 14
sw $1, 0($1)
TAG419:
mult $1, $1
bgtz $1, TAG420
mthi $1
lui $2, 1
TAG420:
sll $0, $0, 0
addu $1, $3, $2
lui $1, 13
sll $0, $0, 0
TAG421:
bgtz $3, TAG422
lui $3, 2
bgtz $3, TAG422
mfhi $2
TAG422:
multu $2, $2
mult $2, $2
sll $0, $0, 0
mult $2, $2
TAG423:
lui $4, 0
add $3, $4, $2
lui $1, 7
mfhi $2
TAG424:
beq $2, $2, TAG425
mflo $1
bne $1, $1, TAG425
div $2, $1
TAG425:
bgtz $1, TAG426
mult $1, $1
lui $2, 4
multu $2, $2
TAG426:
divu $2, $2
multu $2, $2
mflo $4
mthi $2
TAG427:
slt $2, $4, $4
mfhi $1
sb $1, 0($4)
mfhi $2
TAG428:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
bgtz $2, TAG429
TAG429:
mtlo $4
lui $3, 14
sll $0, $0, 0
sb $4, 0($4)
TAG430:
mtlo $1
sll $0, $0, 0
sltiu $4, $1, 1
lw $2, 0($4)
TAG431:
addi $4, $2, 14
sra $3, $4, 1
lhu $4, 0($4)
mtlo $4
TAG432:
bltz $4, TAG433
andi $4, $4, 3
lbu $4, 0($4)
addiu $2, $4, 5
TAG433:
ori $2, $2, 3
lb $4, 0($2)
xori $2, $4, 2
bne $2, $4, TAG434
TAG434:
mtlo $2
sh $2, 0($2)
bne $2, $2, TAG435
div $2, $2
TAG435:
blez $2, TAG436
lb $4, 0($2)
sll $3, $4, 0
xori $3, $3, 4
TAG436:
mult $3, $3
lh $4, 0($3)
sltiu $2, $4, 0
mflo $4
TAG437:
mflo $3
lw $3, 0($4)
and $4, $3, $3
mtlo $4
TAG438:
lui $3, 0
bne $4, $3, TAG439
sb $3, 0($4)
ori $2, $3, 5
TAG439:
slti $4, $2, 12
bgtz $4, TAG440
divu $2, $4
addi $4, $2, 2
TAG440:
mflo $2
bltz $4, TAG441
sw $2, 0($2)
or $3, $2, $2
TAG441:
blez $3, TAG442
lb $3, 0($3)
add $2, $3, $3
divu $3, $2
TAG442:
mflo $3
bne $2, $3, TAG443
xor $4, $3, $3
blez $3, TAG443
TAG443:
lbu $2, 0($4)
mult $2, $2
sb $2, 0($2)
lh $1, 0($2)
TAG444:
lui $2, 5
mflo $3
bgez $2, TAG445
sltu $3, $3, $2
TAG445:
bgtz $3, TAG446
divu $3, $3
lh $4, 0($3)
lui $4, 4
TAG446:
mult $4, $4
mtlo $4
mflo $3
and $2, $4, $4
TAG447:
subu $4, $2, $2
lhu $2, 0($2)
lbu $2, 0($2)
lb $3, 0($2)
TAG448:
sb $3, 0($3)
sh $3, 0($3)
and $3, $3, $3
mtlo $3
TAG449:
nor $2, $3, $3
bgez $3, TAG450
srl $3, $3, 3
beq $3, $3, TAG450
TAG450:
sb $3, 0($3)
beq $3, $3, TAG451
lui $4, 15
bgez $4, TAG451
TAG451:
mtlo $4
addiu $4, $4, 7
sll $0, $0, 0
beq $4, $4, TAG452
TAG452:
and $4, $4, $4
mthi $4
mtlo $4
lui $2, 7
TAG453:
sll $3, $2, 10
lui $4, 2
lui $2, 15
bne $3, $2, TAG454
TAG454:
sltiu $4, $2, 5
lui $2, 10
sll $0, $0, 0
or $2, $4, $2
TAG455:
mfhi $3
sll $2, $2, 6
sll $0, $0, 0
mflo $2
TAG456:
lui $3, 3
blez $3, TAG457
sll $0, $0, 0
beq $2, $3, TAG457
TAG457:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 15
sll $0, $0, 0
TAG458:
srl $3, $3, 7
mthi $3
mthi $3
mfhi $3
TAG459:
bne $3, $3, TAG460
mtlo $3
lui $3, 10
sll $0, $0, 0
TAG460:
blez $3, TAG461
lui $2, 11
beq $3, $3, TAG461
sll $0, $0, 0
TAG461:
mthi $2
blez $2, TAG462
lui $4, 6
subu $1, $2, $2
TAG462:
multu $1, $1
mthi $1
bgtz $1, TAG463
addi $2, $1, 13
TAG463:
slti $3, $2, 11
lui $4, 8
lui $2, 4
mthi $3
TAG464:
slt $1, $2, $2
sltu $1, $2, $1
lui $3, 7
bne $2, $1, TAG465
TAG465:
mtlo $3
bne $3, $3, TAG466
sll $0, $0, 0
sll $0, $0, 0
TAG466:
sll $0, $0, 0
bltz $3, TAG467
mthi $3
slti $4, $3, 4
TAG467:
sllv $1, $4, $4
lh $1, 0($4)
bgtz $4, TAG468
lhu $4, 0($1)
TAG468:
addi $2, $4, 6
mfhi $3
sb $3, 0($4)
beq $4, $4, TAG469
TAG469:
addiu $4, $3, 0
mtlo $4
bgez $3, TAG470
mfhi $4
TAG470:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG471
sll $0, $0, 0
TAG471:
mfhi $4
slti $2, $4, 3
addu $2, $4, $2
mfhi $2
TAG472:
div $2, $2
mfhi $4
lui $2, 1
sll $0, $0, 0
TAG473:
bne $2, $2, TAG474
sll $0, $0, 0
bne $2, $1, TAG474
or $4, $2, $2
TAG474:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG475:
multu $3, $3
bgtz $3, TAG476
sll $0, $0, 0
lhu $3, 0($3)
TAG476:
andi $4, $3, 14
mtlo $3
lui $3, 5
sw $4, 0($4)
TAG477:
lui $2, 12
lui $2, 0
bgtz $3, TAG478
mfhi $2
TAG478:
bgez $2, TAG479
mflo $1
lui $2, 1
mflo $2
TAG479:
blez $2, TAG480
sltu $4, $2, $2
sb $2, 0($2)
bgez $2, TAG480
TAG480:
mfhi $3
add $3, $4, $3
lbu $3, 0($4)
blez $3, TAG481
TAG481:
mtlo $3
sll $2, $3, 5
mflo $2
mfhi $1
TAG482:
sb $1, 0($1)
xori $4, $1, 12
mflo $1
mtlo $1
TAG483:
bne $1, $1, TAG484
srlv $4, $1, $1
lui $4, 14
multu $4, $4
TAG484:
mthi $4
mthi $4
sltiu $1, $4, 6
srlv $4, $4, $1
TAG485:
bgtz $4, TAG486
mthi $4
lh $1, 0($4)
mult $4, $1
TAG486:
beq $1, $1, TAG487
sb $1, 0($1)
div $1, $1
beq $1, $1, TAG487
TAG487:
lui $3, 10
sll $0, $0, 0
slt $2, $1, $3
bltz $1, TAG488
TAG488:
addiu $1, $2, 11
beq $1, $2, TAG489
sh $1, 0($1)
sb $2, 0($2)
TAG489:
slti $4, $1, 9
bgtz $4, TAG490
multu $4, $1
sh $4, 0($1)
TAG490:
mfhi $2
sw $4, 0($4)
mfhi $3
bne $4, $2, TAG491
TAG491:
slt $1, $3, $3
multu $3, $1
lui $4, 7
sltiu $2, $3, 13
TAG492:
mult $2, $2
lb $3, 0($2)
mtlo $2
lui $1, 7
TAG493:
divu $1, $1
beq $1, $1, TAG494
lui $2, 9
lui $1, 5
TAG494:
mflo $1
sb $1, 0($1)
mflo $3
sb $1, 0($1)
TAG495:
mult $3, $3
addiu $2, $3, 7
slti $1, $2, 0
div $2, $2
TAG496:
xori $2, $1, 0
sllv $4, $2, $1
bne $1, $1, TAG497
mflo $1
TAG497:
mflo $1
lb $1, 0($1)
beq $1, $1, TAG498
mtlo $1
TAG498:
addiu $4, $1, 9
mflo $1
slt $4, $1, $1
mfhi $3
TAG499:
xori $4, $3, 8
mthi $4
divu $4, $4
mflo $3
TAG500:
mflo $1
multu $3, $3
sllv $1, $1, $3
lh $2, 0($1)
TAG501:
mult $2, $2
mflo $4
nor $3, $2, $2
lui $4, 9
TAG502:
lui $4, 13
bne $4, $4, TAG503
mult $4, $4
addu $1, $4, $4
TAG503:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
beq $3, $3, TAG504
TAG504:
divu $3, $3
multu $3, $3
mtlo $3
bne $3, $3, TAG505
TAG505:
lui $4, 1
srav $2, $3, $3
mflo $2
mflo $4
TAG506:
lui $1, 5
slt $2, $4, $1
lui $1, 7
bltz $1, TAG507
TAG507:
andi $4, $1, 6
mult $1, $4
beq $1, $4, TAG508
lw $3, 0($4)
TAG508:
mtlo $3
mfhi $2
divu $2, $3
multu $3, $3
TAG509:
lhu $3, 0($2)
sub $3, $3, $2
multu $2, $2
beq $3, $3, TAG510
TAG510:
mflo $1
bgez $3, TAG511
srl $4, $3, 4
bne $4, $3, TAG511
TAG511:
mfhi $1
sw $4, 0($1)
sb $1, 0($1)
sw $4, 0($1)
TAG512:
mthi $1
lui $4, 4
mthi $4
sll $0, $0, 0
TAG513:
andi $1, $4, 8
mthi $1
andi $2, $4, 0
lui $4, 5
TAG514:
beq $4, $4, TAG515
sll $0, $0, 0
mthi $4
mult $4, $4
TAG515:
lui $1, 6
mthi $1
lui $2, 11
beq $1, $1, TAG516
TAG516:
mthi $2
sll $0, $0, 0
mult $4, $4
lui $4, 7
TAG517:
bgtz $4, TAG518
sll $0, $0, 0
mfhi $3
bltz $3, TAG518
TAG518:
mfhi $2
blez $2, TAG519
mthi $2
lui $2, 4
TAG519:
multu $2, $2
mult $2, $2
mflo $1
multu $1, $2
TAG520:
bne $1, $1, TAG521
lw $2, 0($1)
bne $1, $2, TAG521
mflo $3
TAG521:
add $4, $3, $3
sw $4, 0($3)
beq $3, $4, TAG522
sb $3, 0($3)
TAG522:
bgez $4, TAG523
lui $2, 6
mfhi $4
sll $4, $2, 10
TAG523:
lbu $3, 0($4)
blez $3, TAG524
addiu $4, $3, 12
sw $3, 0($4)
TAG524:
mflo $1
lui $1, 2
sltiu $3, $1, 4
mtlo $1
TAG525:
xori $2, $3, 14
sh $2, 0($2)
mflo $3
sll $0, $0, 0
TAG526:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG527:
divu $1, $1
xor $4, $1, $1
mflo $4
sll $0, $0, 0
TAG528:
lbu $4, 0($4)
lui $4, 11
bltz $4, TAG529
sltiu $2, $4, 11
TAG529:
or $2, $2, $2
sw $2, 0($2)
sw $2, 0($2)
or $2, $2, $2
TAG530:
multu $2, $2
xori $4, $2, 4
sltiu $4, $4, 4
bne $4, $4, TAG531
TAG531:
multu $4, $4
sra $4, $4, 4
and $3, $4, $4
sw $4, 0($4)
TAG532:
mflo $4
bne $3, $4, TAG533
mflo $1
mthi $3
TAG533:
lui $1, 10
mfhi $4
mflo $2
lhu $4, 0($2)
TAG534:
sb $4, 0($4)
mult $4, $4
bne $4, $4, TAG535
lui $2, 10
TAG535:
sltiu $1, $2, 12
sb $1, 0($1)
slti $2, $2, 9
mtlo $1
TAG536:
lui $1, 14
and $2, $1, $1
bne $2, $2, TAG537
sll $0, $0, 0
TAG537:
subu $2, $2, $2
mtlo $2
addu $4, $2, $2
mtlo $2
TAG538:
bne $4, $4, TAG539
multu $4, $4
mult $4, $4
mfhi $2
TAG539:
mult $2, $2
beq $2, $2, TAG540
lui $3, 1
mfhi $3
TAG540:
sll $0, $0, 0
divu $3, $3
div $3, $3
bgez $3, TAG541
TAG541:
mflo $1
beq $3, $3, TAG542
addu $4, $3, $1
mthi $4
TAG542:
lui $3, 15
mult $4, $4
srl $2, $3, 6
mthi $3
TAG543:
addu $4, $2, $2
lw $1, -30720($4)
mfhi $3
lui $3, 9
TAG544:
bltz $3, TAG545
srlv $1, $3, $3
mthi $3
sll $0, $0, 0
TAG545:
slti $3, $4, 4
sb $4, 0($3)
lw $4, 0($3)
beq $4, $3, TAG546
TAG546:
lui $3, 6
blez $3, TAG547
mtlo $4
and $2, $3, $3
TAG547:
slti $4, $2, 1
mult $4, $2
lw $2, 0($4)
mthi $4
TAG548:
beq $2, $2, TAG549
lb $3, 0($2)
bltz $3, TAG549
lui $4, 8
TAG549:
bne $4, $4, TAG550
sh $4, 0($4)
slti $3, $4, 4
lbu $1, 0($4)
TAG550:
lw $2, 0($1)
bgtz $1, TAG551
sltiu $2, $2, 2
sltu $4, $2, $1
TAG551:
sh $4, 0($4)
bgez $4, TAG552
lui $4, 8
sw $4, 0($4)
TAG552:
sll $0, $0, 0
lui $3, 4
divu $4, $3
mflo $2
TAG553:
div $2, $2
multu $2, $2
srl $3, $2, 12
beq $2, $2, TAG554
TAG554:
xor $3, $3, $3
bne $3, $3, TAG555
mfhi $2
sw $3, 0($2)
TAG555:
srlv $3, $2, $2
mthi $2
sh $3, 0($2)
mfhi $1
TAG556:
bgez $1, TAG557
lb $3, 0($1)
ori $4, $3, 2
bne $1, $1, TAG557
TAG557:
sll $0, $0, 0
mfhi $3
mtlo $4
mthi $3
TAG558:
sw $3, 0($3)
sw $3, 0($3)
sb $3, 0($3)
ori $4, $3, 4
TAG559:
multu $4, $4
lw $4, 0($4)
sll $0, $0, 0
bgez $4, TAG560
TAG560:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG561:
mthi $3
mflo $3
mfhi $2
xori $3, $3, 9
TAG562:
beq $3, $3, TAG563
div $3, $3
multu $3, $3
lui $2, 2
TAG563:
mtlo $2
lui $1, 3
mfhi $1
sb $2, 0($1)
TAG564:
mult $1, $1
mfhi $2
srl $2, $2, 13
bgtz $2, TAG565
TAG565:
xor $1, $2, $2
mthi $2
xor $1, $1, $2
ori $1, $2, 9
TAG566:
lbu $4, 0($1)
lw $3, 0($4)
srlv $2, $3, $1
sw $3, 0($3)
TAG567:
and $2, $2, $2
sw $2, 0($2)
bgez $2, TAG568
sb $2, 0($2)
TAG568:
lui $3, 2
bgez $3, TAG569
ori $3, $2, 10
lui $1, 13
TAG569:
lbu $2, 0($1)
beq $2, $2, TAG570
lui $4, 3
slti $3, $2, 4
TAG570:
bgtz $3, TAG571
andi $1, $3, 12
sw $1, 0($3)
mtlo $3
TAG571:
slt $2, $1, $1
lbu $3, 0($1)
mtlo $2
addu $3, $2, $3
TAG572:
sw $3, 0($3)
lui $1, 13
bltz $1, TAG573
mtlo $3
TAG573:
lui $3, 1
multu $3, $3
mfhi $1
beq $1, $3, TAG574
TAG574:
or $3, $1, $1
div $3, $3
mfhi $4
beq $4, $1, TAG575
TAG575:
lui $1, 9
sll $4, $4, 7
div $4, $1
sll $0, $0, 0
TAG576:
mthi $3
lui $1, 3
sll $0, $0, 0
lui $3, 4
TAG577:
beq $3, $3, TAG578
mthi $3
mtlo $3
mfhi $3
TAG578:
sll $0, $0, 0
bne $3, $3, TAG579
lui $3, 15
lui $3, 7
TAG579:
addiu $4, $3, 4
mflo $3
bne $3, $3, TAG580
mflo $2
TAG580:
multu $2, $2
mtlo $2
sb $2, 0($2)
mfhi $3
TAG581:
mflo $3
lh $3, 0($3)
lui $2, 4
blez $3, TAG582
TAG582:
sll $0, $0, 0
mtlo $3
multu $2, $3
lui $3, 1
TAG583:
addiu $2, $3, 7
bne $3, $3, TAG584
sll $0, $0, 0
multu $4, $4
TAG584:
bgez $4, TAG585
sll $0, $0, 0
subu $4, $4, $2
slt $1, $2, $4
TAG585:
mthi $1
sll $0, $0, 0
bgtz $1, TAG586
addu $1, $1, $1
TAG586:
lui $1, 7
subu $2, $1, $1
sltiu $2, $2, 15
ori $2, $1, 1
TAG587:
sll $0, $0, 0
mult $1, $2
mult $2, $2
divu $2, $1
TAG588:
sll $0, $0, 0
slt $3, $1, $1
xor $3, $3, $3
multu $3, $3
TAG589:
slti $1, $3, 14
beq $3, $3, TAG590
sb $1, 0($1)
lui $1, 9
TAG590:
mult $1, $1
srav $2, $1, $1
or $1, $1, $1
bltz $1, TAG591
TAG591:
sb $1, 0($1)
mthi $1
mtlo $1
sb $1, 0($1)
TAG592:
mthi $1
mtlo $1
mtlo $1
bgtz $1, TAG593
TAG593:
mtlo $1
divu $1, $1
mfhi $1
sh $1, 0($1)
TAG594:
mflo $2
beq $2, $2, TAG595
mthi $2
mfhi $2
TAG595:
sltiu $3, $2, 10
sllv $1, $2, $2
mtlo $2
srlv $2, $1, $2
TAG596:
mflo $4
multu $2, $4
lui $4, 15
mthi $4
TAG597:
lui $2, 7
sll $0, $0, 0
beq $2, $2, TAG598
sll $0, $0, 0
TAG598:
bne $2, $2, TAG599
subu $1, $2, $2
mfhi $1
ori $2, $1, 4
TAG599:
divu $2, $2
addiu $2, $2, 14
beq $2, $2, TAG600
slt $4, $2, $2
TAG600:
sltiu $2, $4, 15
sb $2, 0($2)
lb $3, 0($4)
sb $2, 0($2)
TAG601:
lw $1, 0($3)
lui $2, 2
lui $1, 3
mtlo $1
TAG602:
div $1, $1
mult $1, $1
beq $1, $1, TAG603
mult $1, $1
TAG603:
divu $1, $1
mtlo $1
lui $3, 6
sll $3, $1, 0
TAG604:
xori $2, $3, 15
bne $2, $2, TAG605
lui $3, 10
mtlo $3
TAG605:
sll $0, $0, 0
ori $4, $3, 1
addiu $1, $4, 10
mflo $4
TAG606:
addu $3, $4, $4
multu $4, $3
beq $4, $3, TAG607
sltiu $4, $3, 11
TAG607:
lui $2, 14
sra $1, $2, 3
mtlo $4
bne $1, $2, TAG608
TAG608:
sltiu $2, $1, 5
sll $0, $0, 0
beq $1, $2, TAG609
mult $1, $2
TAG609:
bgez $1, TAG610
div $1, $1
divu $1, $1
addi $1, $1, 14
TAG610:
mthi $1
subu $2, $1, $1
blez $2, TAG611
lui $4, 9
TAG611:
bne $4, $4, TAG612
addu $4, $4, $4
sltiu $4, $4, 8
multu $4, $4
TAG612:
srav $2, $4, $4
mthi $4
lui $4, 11
mthi $4
TAG613:
sll $0, $0, 0
lh $2, 0($2)
sll $0, $0, 0
mfhi $3
TAG614:
blez $3, TAG615
andi $3, $3, 4
mthi $3
lbu $1, 0($3)
TAG615:
mthi $1
beq $1, $1, TAG616
mtlo $1
lui $1, 15
TAG616:
bgez $1, TAG617
sw $1, 0($1)
beq $1, $1, TAG617
mult $1, $1
TAG617:
beq $1, $1, TAG618
mult $1, $1
multu $1, $1
lui $3, 4
TAG618:
mult $3, $3
multu $3, $3
sll $1, $3, 2
sb $3, 0($1)
TAG619:
sb $1, 0($1)
mflo $4
addi $4, $4, 2
mult $1, $4
TAG620:
sll $1, $4, 3
srav $2, $4, $1
sltu $3, $1, $1
mtlo $2
TAG621:
lui $4, 14
bgez $4, TAG622
mtlo $4
sw $3, 0($3)
TAG622:
lui $1, 15
beq $1, $4, TAG623
lui $3, 13
mthi $4
TAG623:
sllv $1, $3, $3
mthi $1
mtlo $1
sltiu $1, $3, 8
TAG624:
beq $1, $1, TAG625
srl $1, $1, 6
add $4, $1, $1
beq $1, $1, TAG625
TAG625:
sll $0, $0, 0
bgtz $3, TAG626
lui $3, 13
lhu $4, 0($3)
TAG626:
addu $2, $4, $4
bne $2, $4, TAG627
addu $4, $4, $4
mfhi $3
TAG627:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG628
sll $0, $0, 0
TAG628:
multu $2, $2
lui $2, 12
mfhi $4
bltz $2, TAG629
TAG629:
mthi $4
lui $4, 14
mfhi $4
div $4, $4
TAG630:
sh $4, -784($4)
bne $4, $4, TAG631
mtlo $4
lui $1, 7
TAG631:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
TAG632:
sll $0, $0, 0
bgez $3, TAG633
mult $3, $3
xori $4, $3, 4
TAG633:
beq $4, $4, TAG634
mtlo $4
xori $1, $4, 2
mtlo $4
TAG634:
sll $0, $0, 0
lui $3, 14
sll $0, $0, 0
addiu $3, $2, 3
TAG635:
multu $3, $3
mtlo $3
bltz $3, TAG636
mult $3, $3
TAG636:
blez $3, TAG637
mthi $3
mfhi $1
mtlo $1
TAG637:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
srlv $3, $1, $2
TAG638:
sll $0, $0, 0
mtlo $3
addiu $4, $3, 12
mthi $4
TAG639:
mtlo $4
addiu $1, $4, 12
beq $1, $4, TAG640
sll $0, $0, 0
TAG640:
beq $3, $3, TAG641
sll $0, $0, 0
xor $1, $4, $3
lbu $3, 0($3)
TAG641:
mthi $3
bltz $3, TAG642
div $3, $3
sll $0, $0, 0
TAG642:
divu $3, $3
addu $2, $3, $3
multu $3, $3
sll $0, $0, 0
TAG643:
mult $2, $2
lui $4, 5
srav $4, $2, $4
bne $4, $4, TAG644
TAG644:
div $4, $4
bgtz $4, TAG645
mthi $4
multu $4, $4
TAG645:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG646
sll $0, $0, 0
TAG646:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG647:
slt $1, $4, $4
sra $1, $4, 14
mtlo $1
sb $4, 0($1)
TAG648:
lhu $1, 0($1)
mflo $1
subu $1, $1, $1
mult $1, $1
TAG649:
bltz $1, TAG650
xori $3, $1, 7
blez $1, TAG650
lui $1, 14
TAG650:
sll $0, $0, 0
mfhi $3
xori $1, $2, 4
bltz $1, TAG651
TAG651:
mtlo $1
subu $3, $1, $1
andi $1, $1, 0
sh $3, 0($1)
TAG652:
beq $1, $1, TAG653
mfhi $4
div $4, $4
lui $2, 13
TAG653:
mthi $2
bltz $2, TAG654
lui $1, 6
bltz $1, TAG654
TAG654:
mtlo $1
lui $1, 15
lui $2, 5
sll $0, $0, 0
TAG655:
lui $4, 9
lui $1, 11
blez $4, TAG656
sll $0, $0, 0
TAG656:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
beq $1, $1, TAG657
TAG657:
lui $1, 12
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG658
TAG658:
mult $2, $2
mfhi $2
sb $2, 0($2)
lui $3, 15
TAG659:
mtlo $3
mfhi $3
beq $3, $3, TAG660
multu $3, $3
TAG660:
lui $2, 2
mthi $2
lui $1, 0
mflo $1
TAG661:
multu $1, $1
addiu $4, $1, 4
sb $1, 0($4)
multu $4, $4
TAG662:
div $4, $4
lui $3, 6
andi $3, $3, 3
mflo $1
TAG663:
beq $1, $1, TAG664
sb $1, 0($1)
or $2, $1, $1
bltz $2, TAG664
TAG664:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $1, TAG665
mtlo $1
TAG665:
sb $1, 0($1)
sb $1, 0($1)
bltz $1, TAG666
div $1, $1
TAG666:
mult $1, $1
mtlo $1
addu $3, $1, $1
mflo $2
TAG667:
mtlo $2
mflo $4
sll $2, $4, 4
sb $2, 0($4)
TAG668:
beq $2, $2, TAG669
lui $4, 5
mtlo $2
blez $2, TAG669
TAG669:
sll $0, $0, 0
bne $2, $2, TAG670
sltiu $3, $2, 7
sw $2, 0($2)
TAG670:
sb $3, 0($3)
mflo $4
lui $3, 1
mfhi $1
TAG671:
sllv $1, $1, $1
sh $1, 0($1)
addi $2, $1, 15
lb $1, 0($2)
TAG672:
sb $1, 0($1)
lui $2, 1
addu $1, $2, $1
beq $1, $1, TAG673
TAG673:
mflo $1
mfhi $1
addiu $2, $1, 12
mthi $1
TAG674:
bne $2, $2, TAG675
multu $2, $2
mflo $3
bgtz $3, TAG675
TAG675:
mthi $3
mfhi $3
slt $4, $3, $3
lhu $3, -144($3)
TAG676:
lui $2, 8
mfhi $2
sw $2, -144($2)
lb $4, -144($2)
TAG677:
mtlo $4
mthi $4
xori $3, $4, 2
bgtz $3, TAG678
TAG678:
mflo $3
sw $3, 112($3)
sltiu $4, $3, 10
sb $3, 112($3)
TAG679:
lui $4, 8
mfhi $1
sll $3, $1, 15
multu $1, $3
TAG680:
bgez $3, TAG681
lui $4, 6
addiu $3, $3, 13
lui $1, 1
TAG681:
lui $4, 14
bne $1, $1, TAG682
srl $1, $1, 11
multu $1, $4
TAG682:
bltz $1, TAG683
mfhi $2
multu $1, $2
bltz $2, TAG683
TAG683:
mflo $3
slti $2, $2, 4
lb $3, 0($2)
bne $3, $2, TAG684
TAG684:
mfhi $3
mult $3, $3
lui $2, 12
sll $0, $0, 0
TAG685:
sltiu $3, $1, 15
beq $1, $1, TAG686
lui $1, 4
multu $1, $1
TAG686:
mult $1, $1
bgez $1, TAG687
sll $0, $0, 0
sltu $1, $1, $3
TAG687:
mult $1, $1
lui $1, 2
mfhi $2
lui $1, 14
TAG688:
lui $3, 5
mflo $3
mfhi $1
bne $3, $1, TAG689
TAG689:
lui $3, 3
beq $1, $3, TAG690
lui $4, 6
mthi $3
TAG690:
mfhi $4
divu $4, $4
srl $3, $4, 12
bltz $4, TAG691
TAG691:
lui $2, 6
multu $3, $3
srlv $3, $2, $2
mflo $2
TAG692:
sll $0, $0, 0
lui $3, 10
bgez $1, TAG693
srlv $4, $3, $3
TAG693:
mtlo $4
bgtz $4, TAG694
lui $2, 8
lw $3, 0($2)
TAG694:
sltu $1, $3, $3
and $4, $3, $3
bgtz $1, TAG695
mflo $3
TAG695:
sll $0, $0, 0
divu $3, $3
sra $1, $3, 2
mfhi $4
TAG696:
srlv $4, $4, $4
mult $4, $4
lui $3, 7
sll $0, $0, 0
TAG697:
mtlo $3
mtlo $3
lui $4, 7
bne $3, $4, TAG698
TAG698:
sll $0, $0, 0
subu $2, $4, $4
beq $2, $4, TAG699
sw $4, 0($2)
TAG699:
bgez $2, TAG700
sll $3, $2, 11
blez $2, TAG700
slt $1, $3, $3
TAG700:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG701
sll $0, $0, 0
TAG701:
xori $1, $1, 9
slt $2, $1, $1
multu $1, $1
lui $1, 11
TAG702:
bltz $1, TAG703
addu $1, $1, $1
sllv $2, $1, $1
sll $0, $0, 0
TAG703:
slti $4, $3, 3
mfhi $2
mult $2, $4
beq $2, $3, TAG704
TAG704:
sltiu $1, $2, 10
mtlo $2
addiu $1, $2, 10
lw $2, 0($1)
TAG705:
sb $2, 0($2)
lui $4, 6
bne $4, $2, TAG706
mflo $3
TAG706:
lui $1, 15
mflo $1
mflo $1
lui $4, 8
TAG707:
sll $0, $0, 0
mfhi $1
mfhi $4
bne $4, $4, TAG708
TAG708:
mfhi $4
addu $4, $4, $4
sltiu $2, $4, 7
beq $4, $4, TAG709
TAG709:
or $4, $2, $2
lbu $3, 0($4)
mtlo $2
xor $2, $4, $2
TAG710:
mfhi $4
mflo $1
lbu $3, 0($2)
bne $1, $3, TAG711
TAG711:
mflo $4
sb $3, 0($4)
divu $3, $4
sh $3, 0($3)
TAG712:
lb $3, 0($4)
sb $4, 0($4)
bgtz $4, TAG713
divu $3, $4
TAG713:
lui $2, 12
xori $2, $2, 9
blez $2, TAG714
lui $2, 14
TAG714:
sll $0, $0, 0
mult $2, $2
mthi $2
bgtz $2, TAG715
TAG715:
mthi $2
andi $1, $2, 4
mthi $2
or $4, $1, $1
TAG716:
bgez $4, TAG717
sw $4, 0($4)
lw $1, 0($4)
mflo $1
TAG717:
sh $1, 0($1)
lbu $2, 0($1)
add $2, $1, $1
mtlo $2
TAG718:
mtlo $2
mult $2, $2
sh $2, 0($2)
lui $4, 7
TAG719:
div $4, $4
sll $0, $0, 0
addi $3, $1, 9
mflo $1
TAG720:
lui $2, 0
lb $1, 0($2)
mflo $4
blez $4, TAG721
TAG721:
mflo $4
beq $4, $4, TAG722
sb $4, 0($4)
mult $4, $4
TAG722:
mfhi $1
xori $2, $4, 10
mfhi $4
mult $4, $4
TAG723:
srl $4, $4, 4
mfhi $2
sb $2, 0($4)
lui $1, 9
TAG724:
lui $1, 3
addiu $1, $1, 7
subu $4, $1, $1
subu $1, $1, $1
TAG725:
addiu $2, $1, 14
sb $2, 0($1)
beq $2, $1, TAG726
lb $3, 0($2)
TAG726:
lui $1, 13
addiu $1, $3, 5
srav $3, $1, $3
bne $3, $3, TAG727
TAG727:
lui $1, 1
slt $4, $1, $3
mfhi $2
mflo $1
TAG728:
lbu $1, 0($1)
lui $1, 1
subu $3, $1, $1
bne $1, $1, TAG729
TAG729:
mflo $4
lui $4, 15
ori $4, $4, 15
srav $2, $4, $4
TAG730:
addu $3, $2, $2
divu $2, $2
ori $2, $2, 11
beq $3, $2, TAG731
TAG731:
lbu $3, 0($2)
lui $3, 4
srav $3, $3, $3
sltiu $3, $3, 4
TAG732:
mthi $3
bne $3, $3, TAG733
lw $3, 0($3)
mflo $1
TAG733:
subu $2, $1, $1
sll $2, $1, 12
sltu $1, $2, $1
div $1, $2
TAG734:
mflo $3
lui $2, 12
addi $4, $3, 5
sb $3, 0($1)
TAG735:
lui $4, 10
mflo $4
bne $4, $4, TAG736
mtlo $4
TAG736:
lui $3, 10
srav $2, $4, $4
mflo $4
lui $3, 9
TAG737:
mfhi $2
srl $3, $3, 0
bgez $3, TAG738
sll $0, $0, 0
TAG738:
bgez $1, TAG739
andi $1, $1, 10
bgez $1, TAG739
sh $1, 0($1)
TAG739:
sb $1, 0($1)
bne $1, $1, TAG740
add $2, $1, $1
lhu $4, 0($1)
TAG740:
sh $4, -256($4)
div $4, $4
xor $1, $4, $4
mflo $4
TAG741:
lui $1, 9
sb $4, 0($4)
sb $4, 0($4)
blez $1, TAG742
TAG742:
lui $4, 3
ori $2, $1, 2
mthi $1
mthi $1
TAG743:
beq $2, $2, TAG744
addiu $3, $2, 2
sh $2, 0($3)
lw $3, 0($2)
TAG744:
mflo $4
lui $4, 11
sll $0, $0, 0
bne $4, $3, TAG745
TAG745:
divu $4, $4
addu $3, $4, $4
beq $3, $3, TAG746
addu $2, $3, $4
TAG746:
bgez $2, TAG747
addiu $2, $2, 2
bne $2, $2, TAG747
mtlo $2
TAG747:
mult $2, $2
sll $0, $0, 0
blez $2, TAG748
mthi $2
TAG748:
sll $0, $0, 0
bltz $2, TAG749
div $2, $2
lui $3, 15
TAG749:
mfhi $2
mfhi $3
mflo $2
bne $2, $2, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop