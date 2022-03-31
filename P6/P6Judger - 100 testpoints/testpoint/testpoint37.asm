ori $1, $0, 6
ori $2, $0, 4
ori $3, $0, 14
ori $4, $0, 5
sw $2, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $3, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $4, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $2, 124($0)
sw $2, 0($2)
lw $4, 0($2)
lui $3, 8
xori $2, $3, 3
TAG1:
mtlo $2
bgtz $2, TAG2
mtlo $2
mflo $1
TAG2:
beq $1, $1, TAG3
srl $4, $1, 1
xori $1, $4, 9
lh $2, 0($1)
TAG3:
mflo $4
sll $0, $0, 0
andi $3, $2, 15
mthi $3
TAG4:
mtlo $3
addu $1, $3, $3
mthi $3
lb $2, 0($3)
TAG5:
lw $2, 0($2)
sllv $1, $2, $2
lbu $2, 0($1)
lui $3, 9
TAG6:
lui $3, 9
bne $3, $3, TAG7
divu $3, $3
divu $3, $3
TAG7:
bgtz $3, TAG8
mfhi $4
sw $3, 0($4)
multu $4, $4
TAG8:
add $4, $4, $4
bne $4, $4, TAG9
sra $3, $4, 6
mtlo $3
TAG9:
slt $2, $3, $3
addiu $3, $3, 5
sllv $1, $2, $3
div $1, $3
TAG10:
mthi $1
mthi $1
mflo $2
bgez $2, TAG11
TAG11:
mtlo $2
mult $2, $2
mfhi $2
mthi $2
TAG12:
lui $1, 9
bne $2, $2, TAG13
addiu $2, $2, 1
mthi $1
TAG13:
bgtz $2, TAG14
lbu $2, 0($2)
sllv $3, $2, $2
lw $3, 0($3)
TAG14:
mfhi $1
bne $3, $1, TAG15
lbu $2, 0($3)
mfhi $1
TAG15:
lui $3, 8
sll $0, $0, 0
lui $1, 4
div $3, $1
TAG16:
subu $4, $1, $1
multu $4, $4
sll $0, $0, 0
mfhi $4
TAG17:
sltu $3, $4, $4
mthi $4
bgez $3, TAG18
lui $2, 14
TAG18:
beq $2, $2, TAG19
lui $4, 2
bltz $4, TAG19
mthi $2
TAG19:
lui $2, 3
mtlo $2
divu $2, $4
addu $1, $4, $2
TAG20:
mflo $1
sb $1, 0($1)
sb $1, 0($1)
mflo $3
TAG21:
sll $1, $3, 9
mtlo $3
sll $4, $1, 9
mfhi $2
TAG22:
mtlo $2
sll $0, $0, 0
beq $2, $3, TAG23
xori $3, $2, 13
TAG23:
srl $4, $3, 2
lui $4, 3
beq $3, $4, TAG24
mflo $3
TAG24:
slt $2, $3, $3
sll $0, $0, 0
lui $3, 5
sll $0, $0, 0
TAG25:
mthi $2
beq $2, $2, TAG26
mtlo $2
blez $2, TAG26
TAG26:
sw $2, 0($2)
multu $2, $2
sltu $3, $2, $2
mthi $3
TAG27:
lui $4, 7
sll $0, $0, 0
sw $3, 0($3)
or $1, $3, $4
TAG28:
multu $1, $1
bne $1, $1, TAG29
div $1, $1
sra $3, $1, 10
TAG29:
srlv $4, $3, $3
sh $4, -448($4)
sra $1, $3, 8
mflo $2
TAG30:
ori $1, $2, 14
addiu $2, $2, 9
bgtz $1, TAG31
divu $2, $2
TAG31:
bltz $2, TAG32
mtlo $2
lb $4, 0($2)
srl $2, $4, 0
TAG32:
lh $4, 0($2)
sb $2, -448($4)
mtlo $2
mfhi $4
TAG33:
mtlo $4
lui $1, 5
lui $2, 15
sb $2, 0($4)
TAG34:
blez $2, TAG35
andi $3, $2, 14
sll $0, $0, 0
bgtz $2, TAG35
TAG35:
addiu $2, $2, 15
bgtz $2, TAG36
mult $2, $2
divu $2, $2
TAG36:
lui $4, 5
addu $3, $2, $2
mthi $3
addu $4, $4, $2
TAG37:
lui $1, 9
sllv $4, $4, $1
mtlo $4
mult $4, $4
TAG38:
beq $4, $4, TAG39
addu $3, $4, $4
andi $4, $4, 12
multu $4, $4
TAG39:
mthi $4
sll $0, $0, 0
xor $4, $4, $4
lui $3, 9
TAG40:
ori $2, $3, 2
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG41:
sltiu $3, $4, 11
mthi $4
mthi $4
lui $4, 5
TAG42:
sra $4, $4, 6
srlv $3, $4, $4
addiu $2, $4, 2
bgez $3, TAG43
TAG43:
subu $4, $2, $2
andi $4, $2, 14
mtlo $4
lh $4, 0($4)
TAG44:
bgtz $4, TAG45
lui $3, 5
mfhi $2
sll $0, $0, 0
TAG45:
sh $2, 0($2)
lui $3, 3
sb $2, 0($2)
lui $4, 9
TAG46:
div $4, $4
lui $4, 13
sll $0, $0, 0
mflo $1
TAG47:
mfhi $3
multu $3, $3
srav $2, $1, $1
bltz $3, TAG48
TAG48:
mthi $2
bne $2, $2, TAG49
mfhi $2
lui $2, 12
TAG49:
mtlo $2
div $2, $2
and $3, $2, $2
mflo $3
TAG50:
bgtz $3, TAG51
mflo $1
lui $2, 10
lui $4, 6
TAG51:
sll $0, $0, 0
multu $4, $4
divu $4, $4
mflo $3
TAG52:
multu $3, $3
blez $3, TAG53
subu $2, $3, $3
sb $3, 0($2)
TAG53:
bne $2, $2, TAG54
multu $2, $2
sra $2, $2, 6
mult $2, $2
TAG54:
mult $2, $2
mult $2, $2
mult $2, $2
add $1, $2, $2
TAG55:
mfhi $1
bgtz $1, TAG56
sh $1, 0($1)
beq $1, $1, TAG56
TAG56:
lb $2, 0($1)
subu $2, $2, $1
slti $4, $2, 7
lui $1, 10
TAG57:
mult $1, $1
mthi $1
nor $2, $1, $1
sll $0, $0, 0
TAG58:
divu $2, $2
mult $2, $2
bgez $2, TAG59
sll $0, $0, 0
TAG59:
bgez $3, TAG60
lui $4, 13
divu $4, $3
srav $2, $4, $4
TAG60:
blez $2, TAG61
sll $0, $0, 0
mflo $2
bgez $3, TAG61
TAG61:
andi $4, $2, 2
srav $1, $2, $2
lbu $3, 0($4)
blez $3, TAG62
TAG62:
lb $1, 0($3)
addi $4, $1, 14
xor $3, $4, $4
mult $1, $3
TAG63:
beq $3, $3, TAG64
srl $1, $3, 5
beq $3, $3, TAG64
mflo $4
TAG64:
blez $4, TAG65
mthi $4
mult $4, $4
sra $3, $4, 12
TAG65:
slt $3, $3, $3
lhu $2, 0($3)
lw $1, 0($3)
mfhi $4
TAG66:
mult $4, $4
nor $1, $4, $4
sw $1, 0($4)
blez $4, TAG67
TAG67:
xori $3, $1, 15
bltz $3, TAG68
lui $1, 4
lui $2, 7
TAG68:
lb $1, 0($2)
mfhi $2
mflo $3
sltiu $3, $2, 12
TAG69:
mult $3, $3
lui $4, 9
mflo $4
andi $1, $4, 11
TAG70:
div $1, $1
mflo $1
sb $1, 0($1)
bne $1, $1, TAG71
TAG71:
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG72
lui $4, 9
TAG72:
sll $0, $0, 0
sll $0, $0, 0
ori $3, $2, 5
mtlo $3
TAG73:
mthi $3
beq $3, $3, TAG74
lui $1, 10
lui $3, 4
TAG74:
lui $3, 12
slti $4, $3, 3
mthi $3
mfhi $1
TAG75:
div $1, $1
beq $1, $1, TAG76
divu $1, $1
multu $1, $1
TAG76:
sllv $1, $1, $1
mthi $1
sll $0, $0, 0
blez $1, TAG77
TAG77:
mflo $4
sra $3, $1, 8
slt $1, $3, $1
lui $3, 4
TAG78:
or $1, $3, $3
bne $3, $3, TAG79
sll $0, $0, 0
sll $0, $0, 0
TAG79:
bltz $4, TAG80
mthi $4
lb $2, 0($4)
bltz $2, TAG80
TAG80:
lui $3, 8
mflo $3
lui $4, 13
mthi $3
TAG81:
or $1, $4, $4
sll $0, $0, 0
sllv $2, $4, $1
lui $3, 13
TAG82:
mthi $3
mtlo $3
srav $1, $3, $3
sll $0, $0, 0
TAG83:
bgez $2, TAG84
srlv $4, $2, $2
lui $3, 13
mthi $2
TAG84:
lui $4, 8
blez $4, TAG85
sll $0, $0, 0
beq $4, $3, TAG85
TAG85:
xor $2, $4, $4
mthi $2
multu $2, $2
lui $3, 14
TAG86:
lui $2, 1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG87:
srav $1, $4, $4
sll $0, $0, 0
mflo $4
mtlo $4
TAG88:
multu $4, $4
mthi $4
addiu $3, $4, 10
mflo $1
TAG89:
multu $1, $1
mflo $4
blez $1, TAG90
lw $4, 0($4)
TAG90:
lui $3, 9
sll $0, $0, 0
lui $1, 10
mtlo $3
TAG91:
sltiu $2, $1, 13
sw $2, 0($2)
and $1, $2, $1
sb $1, 0($1)
TAG92:
nor $3, $1, $1
blez $3, TAG93
addi $3, $1, 3
mult $3, $3
TAG93:
sb $3, 0($3)
slti $4, $3, 2
mfhi $3
sh $4, 0($3)
TAG94:
lui $1, 4
bne $3, $1, TAG95
addu $4, $1, $3
sh $1, 0($4)
TAG95:
mthi $4
multu $4, $4
xor $2, $4, $4
sllv $3, $4, $2
TAG96:
mult $3, $3
mflo $2
bgez $2, TAG97
multu $2, $3
TAG97:
mflo $3
bgez $3, TAG98
sw $2, 0($2)
mflo $1
TAG98:
sll $0, $0, 0
mult $1, $1
bne $2, $1, TAG99
sh $1, 0($2)
TAG99:
multu $2, $2
lh $2, 0($2)
sltiu $3, $2, 14
addiu $1, $3, 8
TAG100:
andi $1, $1, 8
bgez $1, TAG101
div $1, $1
andi $1, $1, 6
TAG101:
mult $1, $1
subu $4, $1, $1
mthi $4
mthi $1
TAG102:
mult $4, $4
mfhi $2
mult $4, $4
mtlo $2
TAG103:
sh $2, 0($2)
mfhi $3
lb $2, 0($2)
blez $2, TAG104
TAG104:
lui $3, 12
mflo $2
mthi $2
mult $2, $3
TAG105:
addiu $3, $2, 15
mthi $3
divu $2, $3
divu $2, $3
TAG106:
mthi $3
sb $3, 0($3)
bltz $3, TAG107
lb $1, 0($3)
TAG107:
lb $4, 0($1)
div $4, $4
bltz $1, TAG108
divu $1, $1
TAG108:
subu $3, $4, $4
bne $3, $3, TAG109
multu $4, $4
sw $4, 0($3)
TAG109:
bgtz $3, TAG110
mflo $4
lhu $2, 0($3)
nor $1, $3, $3
TAG110:
bne $1, $1, TAG111
div $1, $1
mult $1, $1
lui $4, 13
TAG111:
blez $4, TAG112
nor $3, $4, $4
lui $3, 4
mthi $3
TAG112:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
mult $2, $1
TAG113:
bgez $2, TAG114
sb $2, 0($2)
bltz $2, TAG114
lui $1, 9
TAG114:
mfhi $4
mtlo $4
lui $2, 12
mtlo $2
TAG115:
beq $2, $2, TAG116
mtlo $2
lui $2, 15
mtlo $2
TAG116:
mthi $2
mult $2, $2
bgez $2, TAG117
divu $2, $2
TAG117:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG118
sll $0, $0, 0
TAG118:
sll $0, $0, 0
div $3, $3
bgtz $3, TAG119
sll $4, $3, 15
TAG119:
lui $4, 9
bgtz $4, TAG120
addu $4, $4, $4
multu $4, $4
TAG120:
div $4, $4
lui $1, 2
bne $4, $4, TAG121
sll $0, $0, 0
TAG121:
andi $4, $4, 4
mfhi $1
bne $1, $4, TAG122
sltu $3, $4, $1
TAG122:
lw $3, 0($3)
mfhi $2
sltu $4, $2, $3
divu $4, $3
TAG123:
sb $4, 0($4)
mtlo $4
mtlo $4
lui $2, 10
TAG124:
sll $0, $0, 0
bgez $2, TAG125
and $3, $2, $2
mfhi $1
TAG125:
bgtz $1, TAG126
lui $1, 12
or $1, $1, $1
divu $1, $1
TAG126:
multu $1, $1
lui $1, 6
bne $1, $1, TAG127
mflo $2
TAG127:
sw $2, 0($2)
slt $2, $2, $2
bne $2, $2, TAG128
mtlo $2
TAG128:
multu $2, $2
mtlo $2
mthi $2
mult $2, $2
TAG129:
lbu $2, 0($2)
mfhi $1
mult $2, $2
multu $2, $2
TAG130:
bltz $1, TAG131
lbu $2, 0($1)
bgtz $2, TAG131
add $2, $1, $1
TAG131:
lui $2, 6
lui $4, 9
lui $2, 5
mtlo $2
TAG132:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG133:
sll $0, $0, 0
addu $4, $4, $4
beq $3, $4, TAG134
mflo $1
TAG134:
lui $4, 4
xor $3, $4, $1
sll $0, $0, 0
divu $4, $4
TAG135:
bgez $4, TAG136
subu $4, $4, $4
beq $4, $4, TAG136
mtlo $4
TAG136:
mtlo $4
sw $4, 0($4)
lui $1, 14
lui $2, 4
TAG137:
bgtz $2, TAG138
sll $0, $0, 0
mtlo $2
andi $1, $2, 9
TAG138:
beq $1, $1, TAG139
mthi $1
mfhi $3
sub $1, $1, $1
TAG139:
subu $2, $1, $1
and $4, $1, $2
mflo $4
mfhi $4
TAG140:
lui $1, 11
sll $0, $0, 0
lui $1, 5
mfhi $4
TAG141:
div $4, $4
andi $1, $4, 10
mfhi $1
sll $0, $0, 0
TAG142:
mtlo $1
multu $1, $1
addu $1, $1, $1
mtlo $1
TAG143:
mflo $1
mthi $1
lui $2, 12
lui $1, 0
TAG144:
and $4, $1, $1
mfhi $2
mtlo $1
or $2, $4, $4
TAG145:
mfhi $1
mult $2, $1
bgez $2, TAG146
lbu $1, 0($2)
TAG146:
sb $1, 0($1)
beq $1, $1, TAG147
mthi $1
sb $1, 0($1)
TAG147:
mthi $1
bgez $1, TAG148
lui $1, 15
bgez $1, TAG148
TAG148:
mthi $1
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG149:
sll $0, $0, 0
bltz $3, TAG150
nor $2, $3, $3
addu $4, $3, $3
TAG150:
sll $0, $0, 0
bne $4, $4, TAG151
mult $4, $4
sll $3, $4, 5
TAG151:
bne $3, $3, TAG152
addu $4, $3, $3
lui $4, 8
beq $4, $4, TAG152
TAG152:
mfhi $1
mflo $1
lhu $3, 0($1)
mfhi $2
TAG153:
addiu $1, $2, 13
bne $2, $2, TAG154
sltiu $4, $1, 8
sh $2, 0($2)
TAG154:
blez $4, TAG155
lui $3, 7
sw $3, 0($3)
bne $3, $4, TAG155
TAG155:
sll $4, $3, 5
div $4, $3
beq $4, $3, TAG156
sll $0, $0, 0
TAG156:
subu $4, $4, $4
lhu $4, 0($4)
mtlo $4
srl $1, $4, 12
TAG157:
lb $2, 0($1)
multu $2, $1
lui $2, 3
andi $4, $2, 10
TAG158:
mtlo $4
srl $1, $4, 1
bne $1, $4, TAG159
mtlo $4
TAG159:
beq $1, $1, TAG160
xori $1, $1, 1
mflo $3
blez $1, TAG160
TAG160:
and $1, $3, $3
sll $0, $0, 0
bltz $1, TAG161
sll $0, $0, 0
TAG161:
sll $0, $0, 0
mtlo $3
mthi $3
mthi $3
TAG162:
sll $0, $0, 0
lui $1, 13
divu $3, $3
srav $1, $1, $1
TAG163:
ori $1, $1, 12
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG164:
multu $3, $3
beq $3, $3, TAG165
sll $0, $0, 0
mfhi $2
TAG165:
mfhi $4
mthi $4
bne $2, $4, TAG166
subu $4, $4, $4
TAG166:
addu $1, $4, $4
beq $4, $1, TAG167
mult $4, $4
bne $4, $1, TAG167
TAG167:
sltiu $2, $1, 8
mthi $2
sh $2, 0($1)
bltz $1, TAG168
TAG168:
lui $1, 10
mflo $4
divu $1, $2
mult $1, $2
TAG169:
sllv $2, $4, $4
beq $4, $2, TAG170
addu $2, $2, $2
mflo $4
TAG170:
mfhi $4
mult $4, $4
sub $2, $4, $4
lh $1, 0($4)
TAG171:
sb $1, 0($1)
mfhi $3
mtlo $1
lui $1, 8
TAG172:
bne $1, $1, TAG173
mflo $1
mflo $4
mtlo $4
TAG173:
divu $4, $4
mfhi $3
lb $2, 0($4)
sb $2, 0($4)
TAG174:
sb $2, 0($2)
lui $3, 13
sll $0, $0, 0
multu $2, $2
TAG175:
mflo $4
bne $3, $3, TAG176
andi $4, $3, 12
mult $4, $4
TAG176:
lbu $1, 0($4)
bgez $4, TAG177
srl $4, $1, 0
bgtz $1, TAG177
TAG177:
lb $2, 0($4)
sll $2, $4, 1
beq $2, $2, TAG178
mthi $2
TAG178:
sltiu $4, $2, 10
sb $4, 0($4)
sb $2, 0($4)
sb $2, 0($4)
TAG179:
sb $4, 0($4)
sll $2, $4, 4
lui $3, 13
bne $4, $4, TAG180
TAG180:
sll $0, $0, 0
sll $0, $0, 0
subu $2, $4, $4
srlv $2, $2, $3
TAG181:
lb $2, 0($2)
lbu $3, 0($2)
multu $2, $3
mflo $1
TAG182:
srl $3, $1, 3
mflo $1
lbu $1, 0($1)
sllv $3, $1, $1
TAG183:
mflo $4
sb $3, 0($4)
div $3, $4
sh $4, 0($3)
TAG184:
sb $4, 0($4)
lb $2, 0($4)
mult $2, $4
lbu $4, 0($4)
TAG185:
nor $2, $4, $4
bne $2, $4, TAG186
sb $2, 2($2)
blez $4, TAG186
TAG186:
lui $1, 3
addiu $4, $1, 11
sb $1, 2($2)
nor $4, $2, $2
TAG187:
lui $1, 13
sll $0, $0, 0
bltz $4, TAG188
addu $1, $1, $1
TAG188:
sra $2, $1, 11
sll $0, $0, 0
mthi $1
addiu $1, $1, 4
TAG189:
mflo $2
sll $0, $0, 0
and $3, $2, $2
blez $3, TAG190
TAG190:
mfhi $1
slt $1, $1, $3
mult $3, $1
and $3, $1, $1
TAG191:
lw $3, 0($3)
sll $0, $0, 0
mtlo $3
lui $2, 1
TAG192:
mult $2, $2
sll $0, $0, 0
bne $1, $1, TAG193
mtlo $2
TAG193:
beq $1, $1, TAG194
lh $3, 0($1)
mfhi $4
blez $1, TAG194
TAG194:
lui $2, 1
divu $4, $4
bne $2, $2, TAG195
sll $0, $0, 0
TAG195:
blez $4, TAG196
divu $4, $4
srlv $3, $4, $4
bgtz $3, TAG196
TAG196:
mult $3, $3
beq $3, $3, TAG197
nor $1, $3, $3
sw $1, 0($3)
TAG197:
subu $1, $1, $1
add $1, $1, $1
multu $1, $1
sb $1, 0($1)
TAG198:
lhu $1, 0($1)
bgtz $1, TAG199
sb $1, -256($1)
addu $4, $1, $1
TAG199:
blez $4, TAG200
and $2, $4, $4
multu $2, $2
mtlo $4
TAG200:
lbu $3, 0($2)
lbu $4, 0($2)
divu $4, $4
sllv $1, $4, $3
TAG201:
bgtz $1, TAG202
lb $1, 0($1)
bltz $1, TAG202
mflo $4
TAG202:
mult $4, $4
lui $4, 13
mflo $1
mflo $1
TAG203:
mthi $1
beq $1, $1, TAG204
srl $4, $1, 12
multu $4, $1
TAG204:
mtlo $4
mfhi $4
beq $4, $4, TAG205
addu $4, $4, $4
TAG205:
mfhi $1
mfhi $2
mflo $1
sb $4, 0($4)
TAG206:
mthi $1
subu $1, $1, $1
sw $1, 0($1)
mtlo $1
TAG207:
lb $4, 0($1)
bgez $4, TAG208
mflo $3
beq $4, $4, TAG208
TAG208:
sw $3, 0($3)
bgez $3, TAG209
multu $3, $3
and $1, $3, $3
TAG209:
mthi $1
addiu $1, $1, 3
mfhi $4
xori $3, $1, 6
TAG210:
lbu $4, 0($3)
mult $4, $3
lui $2, 7
lb $2, 0($4)
TAG211:
sh $2, 0($2)
sltiu $2, $2, 11
subu $2, $2, $2
multu $2, $2
TAG212:
sw $2, 0($2)
lh $2, 0($2)
andi $4, $2, 11
lui $1, 5
TAG213:
sllv $4, $1, $1
lui $2, 1
slt $2, $2, $1
mtlo $2
TAG214:
mfhi $4
bgez $2, TAG215
mtlo $4
div $2, $2
TAG215:
bgtz $4, TAG216
and $1, $4, $4
bne $1, $4, TAG216
mult $1, $1
TAG216:
lbu $4, 0($1)
lui $4, 13
mthi $4
mthi $4
TAG217:
addu $4, $4, $4
srl $1, $4, 10
bne $4, $4, TAG218
sll $0, $0, 0
TAG218:
mthi $1
sb $1, -1664($1)
mult $1, $1
beq $1, $1, TAG219
TAG219:
subu $1, $1, $1
mfhi $4
mtlo $1
blez $1, TAG220
TAG220:
lui $2, 0
multu $2, $4
mflo $1
mfhi $1
TAG221:
mfhi $3
mtlo $3
sltiu $4, $1, 12
mfhi $2
TAG222:
bltz $2, TAG223
mtlo $2
bltz $2, TAG223
addu $3, $2, $2
TAG223:
addiu $1, $3, 5
bgez $3, TAG224
lb $1, 0($1)
beq $3, $1, TAG224
TAG224:
andi $4, $1, 8
mthi $1
sltu $3, $4, $4
mflo $3
TAG225:
lui $3, 6
lui $1, 13
mult $1, $3
mult $3, $1
TAG226:
blez $1, TAG227
sll $0, $0, 0
bne $1, $1, TAG227
sll $0, $0, 0
TAG227:
slti $2, $1, 6
nor $1, $1, $1
sll $3, $1, 10
mfhi $1
TAG228:
sltu $2, $1, $1
bgtz $2, TAG229
lui $4, 14
blez $2, TAG229
TAG229:
addiu $1, $4, 4
mthi $4
bltz $1, TAG230
addu $4, $1, $1
TAG230:
addiu $2, $4, 10
mflo $4
lb $1, 0($4)
mtlo $4
TAG231:
sw $1, 128($1)
addu $2, $1, $1
bne $1, $2, TAG232
multu $1, $1
TAG232:
multu $2, $2
bgez $2, TAG233
div $2, $2
lui $4, 15
TAG233:
sll $0, $0, 0
div $4, $4
mthi $4
lui $4, 8
TAG234:
mflo $1
lbu $3, 0($1)
ori $4, $3, 14
xor $4, $1, $4
TAG235:
lui $3, 1
sll $0, $0, 0
slt $1, $4, $4
beq $3, $1, TAG236
TAG236:
sub $1, $1, $1
bltz $1, TAG237
sra $1, $1, 10
sw $1, 0($1)
TAG237:
sw $1, 0($1)
mult $1, $1
lh $3, 0($1)
lh $3, 0($3)
TAG238:
beq $3, $3, TAG239
mfhi $4
lui $4, 9
slti $3, $3, 9
TAG239:
mult $3, $3
bltz $3, TAG240
mthi $3
mult $3, $3
TAG240:
mflo $2
and $4, $2, $3
slti $2, $2, 12
multu $2, $3
TAG241:
mtlo $2
divu $2, $2
slti $1, $2, 0
lbu $3, 0($2)
TAG242:
sub $3, $3, $3
multu $3, $3
slti $2, $3, 14
lh $4, 0($3)
TAG243:
nor $4, $4, $4
mtlo $4
sb $4, 1($4)
divu $4, $4
TAG244:
mfhi $2
mtlo $2
mflo $3
xori $3, $4, 4
TAG245:
blez $3, TAG246
andi $1, $3, 14
bltz $1, TAG246
lui $3, 5
TAG246:
nor $3, $3, $3
mflo $1
bne $3, $3, TAG247
mtlo $3
TAG247:
bltz $1, TAG248
mflo $2
bne $1, $1, TAG248
lh $3, 0($1)
TAG248:
subu $1, $3, $3
andi $4, $1, 8
and $1, $4, $4
mtlo $1
TAG249:
sll $2, $1, 12
sll $4, $1, 8
mthi $2
sw $4, 0($1)
TAG250:
bltz $4, TAG251
mthi $4
blez $4, TAG251
lw $4, 0($4)
TAG251:
lui $4, 3
and $2, $4, $4
sll $0, $0, 0
mfhi $2
TAG252:
lui $3, 3
mult $2, $3
sll $2, $3, 1
mtlo $3
TAG253:
lui $2, 8
bgez $2, TAG254
mflo $1
bgez $2, TAG254
TAG254:
mfhi $4
multu $1, $4
slti $3, $1, 13
mflo $1
TAG255:
multu $1, $1
beq $1, $1, TAG256
lbu $2, 0($1)
sw $2, 0($2)
TAG256:
bne $2, $2, TAG257
lui $1, 4
andi $1, $1, 12
mult $2, $1
TAG257:
sw $1, 0($1)
lhu $3, 0($1)
bltz $1, TAG258
mtlo $3
TAG258:
beq $3, $3, TAG259
lui $1, 7
ori $2, $3, 13
sw $1, 0($1)
TAG259:
andi $1, $2, 5
bne $1, $2, TAG260
mflo $4
lh $2, 0($1)
TAG260:
lhu $3, 0($2)
sb $3, 0($3)
lh $1, 0($3)
mult $1, $3
TAG261:
lh $3, 0($1)
addiu $4, $1, 11
sw $4, 0($1)
sw $4, 0($3)
TAG262:
mfhi $4
lh $3, 0($4)
lh $3, 0($4)
bltz $3, TAG263
TAG263:
divu $3, $3
beq $3, $3, TAG264
lbu $3, 0($3)
multu $3, $3
TAG264:
xori $1, $3, 4
mthi $1
lb $3, 0($3)
sw $3, 0($1)
TAG265:
lb $1, 0($3)
mfhi $3
subu $3, $1, $3
addiu $2, $3, 3
TAG266:
beq $2, $2, TAG267
slti $2, $2, 10
divu $2, $2
lui $4, 1
TAG267:
bltz $4, TAG268
lui $1, 14
sll $1, $4, 10
bgez $1, TAG268
TAG268:
mtlo $1
mtlo $1
lbu $4, 0($1)
sll $3, $4, 6
TAG269:
sll $0, $0, 0
mtlo $3
bne $1, $3, TAG270
sb $1, 0($1)
TAG270:
sll $2, $1, 0
bltz $2, TAG271
lhu $2, 0($1)
ori $2, $2, 3
TAG271:
addu $1, $2, $2
lh $4, 0($1)
sb $2, 0($2)
mult $2, $1
TAG272:
ori $4, $4, 13
beq $4, $4, TAG273
mult $4, $4
multu $4, $4
TAG273:
sb $4, 0($4)
and $2, $4, $4
lbu $2, 0($4)
beq $4, $2, TAG274
TAG274:
lui $2, 11
mtlo $2
bne $2, $2, TAG275
addu $4, $2, $2
TAG275:
bne $4, $4, TAG276
sll $0, $0, 0
srl $4, $4, 12
mult $4, $4
TAG276:
sltiu $3, $4, 12
bgez $3, TAG277
mtlo $4
blez $4, TAG277
TAG277:
mtlo $3
slt $2, $3, $3
multu $2, $3
subu $2, $2, $2
TAG278:
bne $2, $2, TAG279
lui $3, 9
mtlo $3
mtlo $3
TAG279:
lui $4, 12
mflo $2
sltu $2, $3, $4
bltz $2, TAG280
TAG280:
mtlo $2
sb $2, 0($2)
sb $2, 0($2)
sllv $3, $2, $2
TAG281:
lb $1, 0($3)
slt $4, $3, $1
ori $1, $3, 1
mfhi $4
TAG282:
bgtz $4, TAG283
multu $4, $4
lui $3, 11
mfhi $2
TAG283:
sh $2, 0($2)
sh $2, 0($2)
lui $1, 9
mflo $3
TAG284:
sw $3, 0($3)
addiu $3, $3, 2
sh $3, 0($3)
lui $2, 13
TAG285:
mthi $2
mtlo $2
div $2, $2
xori $2, $2, 3
TAG286:
beq $2, $2, TAG287
lui $4, 0
lhu $3, 0($4)
lui $3, 12
TAG287:
mflo $3
addiu $4, $3, 10
lui $1, 6
sll $3, $1, 11
TAG288:
beq $3, $3, TAG289
divu $3, $3
div $3, $3
lui $4, 0
TAG289:
or $1, $4, $4
sb $4, 0($4)
slti $2, $4, 7
ori $3, $2, 3
TAG290:
sb $3, 0($3)
mthi $3
bgtz $3, TAG291
multu $3, $3
TAG291:
mthi $3
sb $3, 0($3)
sllv $4, $3, $3
lbu $1, 0($3)
TAG292:
lbu $3, 0($1)
bgez $3, TAG293
mfhi $2
multu $3, $3
TAG293:
sb $2, 0($2)
beq $2, $2, TAG294
mfhi $3
slti $3, $3, 13
TAG294:
sb $3, 0($3)
beq $3, $3, TAG295
lbu $4, 0($3)
lui $4, 6
TAG295:
lb $4, 0($4)
div $4, $4
lui $2, 3
sra $1, $4, 10
TAG296:
multu $1, $1
sb $1, 0($1)
beq $1, $1, TAG297
mthi $1
TAG297:
mult $1, $1
bne $1, $1, TAG298
sh $1, 0($1)
bne $1, $1, TAG298
TAG298:
xori $4, $1, 14
lbu $4, 0($1)
addi $3, $1, 8
multu $3, $4
TAG299:
lui $2, 9
lui $4, 9
bltz $2, TAG300
lui $1, 11
TAG300:
beq $1, $1, TAG301
sll $0, $0, 0
lui $2, 0
lui $3, 8
TAG301:
lui $1, 0
srav $4, $3, $1
sh $4, 0($3)
sltiu $1, $1, 5
TAG302:
mflo $2
mflo $1
sb $1, 0($1)
beq $2, $1, TAG303
TAG303:
sll $2, $1, 15
bne $2, $2, TAG304
mult $1, $2
xori $4, $1, 1
TAG304:
mtlo $4
slt $2, $4, $4
mflo $2
lui $2, 5
TAG305:
sll $0, $0, 0
mflo $3
addiu $4, $2, 0
divu $4, $3
TAG306:
beq $4, $4, TAG307
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG307
TAG307:
sll $2, $4, 7
addiu $2, $2, 12
divu $4, $4
sltiu $4, $4, 5
TAG308:
lui $1, 5
mult $4, $4
bne $1, $4, TAG309
mult $1, $4
TAG309:
beq $1, $1, TAG310
lui $3, 2
lui $3, 7
mthi $3
TAG310:
nor $3, $3, $3
sll $3, $3, 2
xori $1, $3, 4
sll $0, $0, 0
TAG311:
mthi $4
xor $2, $4, $4
sra $3, $2, 12
mtlo $4
TAG312:
bgtz $3, TAG313
sh $3, 0($3)
bgtz $3, TAG313
sw $3, 0($3)
TAG313:
mflo $2
bgtz $2, TAG314
sw $2, 0($2)
beq $2, $3, TAG314
TAG314:
lhu $2, 0($2)
sw $2, 0($2)
lbu $2, 0($2)
mult $2, $2
TAG315:
lui $2, 10
lui $2, 9
andi $1, $2, 2
bne $2, $2, TAG316
TAG316:
lhu $4, 0($1)
bgtz $1, TAG317
sh $1, 0($4)
beq $4, $1, TAG317
TAG317:
mult $4, $4
mtlo $4
mtlo $4
lui $1, 8
TAG318:
xori $2, $1, 1
sll $0, $0, 0
bne $1, $2, TAG319
sll $0, $0, 0
TAG319:
add $1, $3, $3
mult $1, $3
lui $1, 10
mflo $3
TAG320:
sh $3, 0($3)
bltz $3, TAG321
lb $3, 0($3)
lui $4, 14
TAG321:
sll $0, $0, 0
mthi $2
mfhi $2
sll $0, $0, 0
TAG322:
lui $3, 4
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG323
TAG323:
mflo $3
beq $1, $1, TAG324
mult $3, $3
sb $3, 0($1)
TAG324:
sh $3, 0($3)
multu $3, $3
mfhi $3
andi $4, $3, 1
TAG325:
bgez $4, TAG326
mfhi $1
lui $2, 10
bgez $2, TAG326
TAG326:
lui $3, 9
addiu $4, $3, 1
multu $3, $2
sll $0, $0, 0
TAG327:
and $1, $4, $4
srav $2, $4, $1
multu $4, $2
sll $0, $0, 0
TAG328:
sll $0, $0, 0
div $2, $2
beq $2, $2, TAG329
sll $0, $0, 0
TAG329:
mtlo $2
subu $4, $2, $2
add $2, $4, $2
slti $3, $2, 0
TAG330:
bgtz $3, TAG331
lui $4, 0
lw $1, 0($3)
sll $1, $1, 11
TAG331:
blez $1, TAG332
mfhi $4
sw $1, 0($1)
lui $4, 7
TAG332:
lui $3, 7
mtlo $3
divu $4, $3
lhu $4, 0($4)
TAG333:
andi $2, $4, 11
bgez $2, TAG334
lbu $3, 0($2)
bgez $4, TAG334
TAG334:
mtlo $3
sw $3, 0($3)
mult $3, $3
mfhi $1
TAG335:
lhu $4, 0($1)
mult $1, $1
sw $4, 0($1)
sb $4, 0($4)
TAG336:
mflo $3
mfhi $3
sw $4, 0($3)
bgtz $3, TAG337
TAG337:
sll $4, $3, 6
bgez $3, TAG338
lui $4, 2
srl $3, $3, 12
TAG338:
multu $3, $3
bne $3, $3, TAG339
mfhi $4
mult $4, $3
TAG339:
lw $3, 0($4)
lui $2, 11
mthi $3
bgtz $3, TAG340
TAG340:
sltiu $1, $2, 6
mflo $1
mtlo $1
lh $4, 0($1)
TAG341:
lh $4, 0($4)
addiu $3, $4, 12
bgez $4, TAG342
sh $4, 0($3)
TAG342:
sltu $1, $3, $3
mfhi $2
lh $4, 0($2)
bne $1, $2, TAG343
TAG343:
mult $4, $4
mfhi $1
slti $1, $1, 8
lb $3, 0($1)
TAG344:
addiu $4, $3, 5
sb $4, 0($4)
multu $4, $3
mtlo $4
TAG345:
lb $4, 0($4)
mflo $4
sb $4, 0($4)
lb $1, 0($4)
TAG346:
lb $4, 0($1)
bne $4, $4, TAG347
lui $4, 13
slti $2, $4, 0
TAG347:
or $2, $2, $2
bne $2, $2, TAG348
lhu $4, 0($2)
mthi $2
TAG348:
srl $3, $4, 10
bgez $4, TAG349
lhu $1, 0($3)
sw $1, 0($4)
TAG349:
xori $3, $1, 8
bgez $3, TAG350
lui $4, 5
beq $1, $3, TAG350
TAG350:
sll $0, $0, 0
lui $4, 5
lui $3, 7
lui $3, 8
TAG351:
mfhi $2
mtlo $2
mult $2, $3
bgez $2, TAG352
TAG352:
mfhi $1
bgez $1, TAG353
sw $1, 0($1)
lhu $2, 0($2)
TAG353:
beq $2, $2, TAG354
slti $4, $2, 7
lui $2, 0
sllv $3, $2, $2
TAG354:
mthi $3
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG355:
bne $3, $3, TAG356
mtlo $3
multu $3, $3
beq $3, $3, TAG356
TAG356:
mthi $3
mtlo $3
sll $0, $0, 0
lui $1, 0
TAG357:
mult $1, $1
mtlo $1
multu $1, $1
mthi $1
TAG358:
and $2, $1, $1
mflo $2
sh $2, 0($1)
lui $3, 9
TAG359:
mtlo $3
sll $0, $0, 0
bne $3, $3, TAG360
sll $0, $0, 0
TAG360:
sltiu $4, $2, 0
lui $1, 7
lui $3, 3
mtlo $2
TAG361:
blez $3, TAG362
multu $3, $3
mult $3, $3
sll $0, $0, 0
TAG362:
mthi $3
lui $2, 5
sll $0, $0, 0
sll $0, $0, 0
TAG363:
divu $2, $2
div $2, $2
sll $0, $0, 0
sra $4, $2, 5
TAG364:
xori $3, $4, 13
subu $2, $3, $4
mult $3, $2
mtlo $4
TAG365:
lui $1, 12
lbu $1, 0($2)
mfhi $1
mult $1, $1
TAG366:
lui $4, 7
lui $4, 8
bne $4, $4, TAG367
lbu $1, 0($1)
TAG367:
lui $1, 6
subu $4, $1, $1
lw $4, 0($4)
bne $1, $1, TAG368
TAG368:
mtlo $4
lui $3, 9
sll $0, $0, 0
slti $1, $1, 3
TAG369:
sh $1, 0($1)
sh $1, 0($1)
nor $4, $1, $1
mflo $4
TAG370:
bgtz $4, TAG371
ori $2, $4, 0
beq $4, $4, TAG371
mfhi $4
TAG371:
ori $4, $4, 10
bne $4, $4, TAG372
sh $4, 0($4)
bltz $4, TAG372
TAG372:
sh $4, 0($4)
beq $4, $4, TAG373
srl $4, $4, 8
div $4, $4
TAG373:
bne $4, $4, TAG374
mflo $3
mult $4, $3
mult $4, $3
TAG374:
bne $3, $3, TAG375
add $2, $3, $3
bgtz $3, TAG375
mtlo $3
TAG375:
bgtz $2, TAG376
mflo $1
ori $4, $1, 1
divu $2, $4
TAG376:
xor $4, $4, $4
andi $4, $4, 2
mtlo $4
mflo $1
TAG377:
beq $1, $1, TAG378
lui $4, 4
mfhi $4
mthi $4
TAG378:
mfhi $4
sb $4, 0($4)
bgtz $4, TAG379
subu $1, $4, $4
TAG379:
bne $1, $1, TAG380
multu $1, $1
mflo $2
lui $2, 2
TAG380:
lui $1, 3
bne $1, $1, TAG381
mflo $1
bne $2, $1, TAG381
TAG381:
mtlo $1
lb $4, 0($1)
sll $1, $1, 13
lui $3, 14
TAG382:
mult $3, $3
mthi $3
sll $0, $0, 0
mflo $4
TAG383:
lui $2, 8
sll $0, $0, 0
mtlo $3
div $4, $2
TAG384:
slt $4, $3, $3
lui $3, 14
mthi $3
lw $3, 0($4)
TAG385:
lui $3, 8
sll $0, $0, 0
mflo $4
sra $1, $3, 2
TAG386:
mtlo $1
mfhi $3
mtlo $3
mthi $1
TAG387:
mfhi $1
sra $2, $3, 9
mflo $1
mtlo $2
TAG388:
sll $0, $0, 0
addu $2, $1, $1
mtlo $2
mflo $4
TAG389:
mtlo $4
lui $2, 11
beq $2, $2, TAG390
mtlo $4
TAG390:
sll $0, $0, 0
lui $3, 15
beq $3, $2, TAG391
sll $0, $0, 0
TAG391:
addu $3, $1, $1
xori $4, $1, 15
sll $0, $0, 0
sltu $4, $1, $3
TAG392:
addiu $3, $4, 14
mflo $3
slt $3, $3, $3
nor $4, $3, $3
TAG393:
mtlo $4
lui $3, 9
bne $3, $3, TAG394
mflo $4
TAG394:
sll $0, $0, 0
mthi $4
mfhi $4
mthi $4
TAG395:
lui $4, 3
bne $4, $4, TAG396
ori $4, $4, 3
andi $1, $4, 12
TAG396:
mult $1, $1
lui $4, 3
mthi $1
sltiu $1, $4, 7
TAG397:
sh $1, 0($1)
lui $4, 15
sll $0, $0, 0
lui $4, 11
TAG398:
sll $0, $0, 0
lui $4, 11
blez $4, TAG399
mfhi $2
TAG399:
mthi $2
bgtz $2, TAG400
lbu $4, 0($2)
sw $4, 0($2)
TAG400:
lui $3, 8
ori $4, $3, 8
mfhi $4
sb $4, 0($4)
TAG401:
lui $1, 11
mflo $2
bgez $2, TAG402
multu $2, $2
TAG402:
multu $2, $2
sllv $4, $2, $2
addu $4, $2, $4
srlv $3, $4, $4
TAG403:
mult $3, $3
sh $3, 0($3)
bne $3, $3, TAG404
lui $4, 14
TAG404:
sll $0, $0, 0
lui $3, 11
lui $3, 14
sll $0, $0, 0
TAG405:
lui $2, 15
addiu $1, $2, 1
sll $0, $0, 0
mfhi $3
TAG406:
xor $4, $3, $3
lui $3, 1
multu $3, $3
lui $4, 0
TAG407:
mult $4, $4
mfhi $2
sw $2, 0($2)
beq $2, $2, TAG408
TAG408:
mthi $2
mflo $2
lui $1, 15
mult $2, $2
TAG409:
addiu $4, $1, 4
sra $2, $4, 15
sh $2, 0($2)
mfhi $4
TAG410:
mflo $3
bgtz $4, TAG411
mult $4, $4
bne $3, $4, TAG411
TAG411:
xori $2, $3, 8
bgez $2, TAG412
lui $2, 0
sh $2, 0($2)
TAG412:
lh $1, 0($2)
srav $4, $1, $2
slt $4, $2, $1
bgez $4, TAG413
TAG413:
mflo $1
bgez $1, TAG414
xori $3, $1, 13
lhu $1, 0($1)
TAG414:
lhu $3, 0($1)
mtlo $1
xor $1, $1, $1
lui $3, 7
TAG415:
bne $3, $3, TAG416
xor $4, $3, $3
beq $4, $4, TAG416
lh $4, 0($4)
TAG416:
add $4, $4, $4
mtlo $4
mthi $4
mult $4, $4
TAG417:
mflo $3
bgtz $4, TAG418
lbu $1, 0($4)
slti $4, $4, 6
TAG418:
bne $4, $4, TAG419
mtlo $4
bgtz $4, TAG419
mtlo $4
TAG419:
lb $3, 0($4)
blez $3, TAG420
mult $4, $3
bne $4, $4, TAG420
TAG420:
lui $2, 9
bne $3, $2, TAG421
sltiu $1, $3, 7
bgtz $3, TAG421
TAG421:
div $1, $1
srav $1, $1, $1
bne $1, $1, TAG422
xori $3, $1, 8
TAG422:
bltz $3, TAG423
lw $4, 0($3)
addu $1, $4, $4
addiu $4, $3, 7
TAG423:
lbu $4, 0($4)
divu $4, $4
div $4, $4
lb $4, 0($4)
TAG424:
mflo $1
sb $1, 0($1)
mthi $1
mthi $4
TAG425:
sb $1, 0($1)
beq $1, $1, TAG426
xor $1, $1, $1
bne $1, $1, TAG426
TAG426:
slt $2, $1, $1
sw $1, 0($2)
lui $1, 5
sltu $3, $1, $1
TAG427:
beq $3, $3, TAG428
mtlo $3
sra $2, $3, 0
lw $2, 0($3)
TAG428:
bgez $2, TAG429
mfhi $3
lbu $2, 0($3)
blez $2, TAG429
TAG429:
addi $4, $2, 7
addiu $2, $2, 7
sb $2, 0($4)
div $4, $2
TAG430:
lui $2, 0
sb $2, 0($2)
mfhi $2
sll $2, $2, 7
TAG431:
blez $2, TAG432
mfhi $3
lui $3, 15
mtlo $3
TAG432:
mthi $3
mthi $3
mthi $3
mult $3, $3
TAG433:
mtlo $3
sw $3, 0($3)
lui $1, 4
ori $3, $3, 11
TAG434:
bgez $3, TAG435
lb $3, 0($3)
addi $3, $3, 4
sll $3, $3, 15
TAG435:
multu $3, $3
sw $3, 0($3)
beq $3, $3, TAG436
sh $3, 0($3)
TAG436:
addi $3, $3, 10
bltz $3, TAG437
mthi $3
bgez $3, TAG437
TAG437:
srl $4, $3, 6
sll $1, $4, 12
mult $3, $1
lui $4, 7
TAG438:
slti $2, $4, 4
srav $4, $2, $4
mfhi $3
mfhi $2
TAG439:
addiu $3, $2, 2
blez $3, TAG440
nor $2, $2, $3
mult $2, $2
TAG440:
mtlo $2
sh $2, 3($2)
mult $2, $2
lui $3, 6
TAG441:
mfhi $4
bne $4, $3, TAG442
sltiu $1, $4, 1
mflo $2
TAG442:
mthi $2
mflo $4
lui $1, 3
slt $1, $4, $4
TAG443:
bgez $1, TAG444
lhu $4, 0($1)
mflo $3
beq $3, $1, TAG444
TAG444:
sll $0, $0, 0
bne $3, $3, TAG445
sll $0, $0, 0
lui $2, 1
TAG445:
srl $2, $2, 10
bne $2, $2, TAG446
sh $2, 0($2)
lui $2, 2
TAG446:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
TAG447:
multu $2, $2
addu $1, $2, $2
div $1, $1
blez $2, TAG448
TAG448:
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG449:
sra $4, $2, 5
mtlo $4
sltiu $2, $4, 8
lbu $3, 0($2)
TAG450:
bgtz $3, TAG451
mtlo $3
bgez $3, TAG451
mfhi $2
TAG451:
addu $4, $2, $2
mult $4, $4
bne $4, $4, TAG452
sh $2, 0($2)
TAG452:
sllv $3, $4, $4
mtlo $4
sb $3, 0($3)
ori $3, $3, 9
TAG453:
lb $4, 0($3)
sb $4, 0($4)
sb $4, 0($3)
lui $2, 15
TAG454:
mult $2, $2
divu $2, $2
lui $3, 15
sll $0, $0, 0
TAG455:
lui $2, 8
srl $3, $2, 8
sll $0, $0, 0
mfhi $1
TAG456:
mtlo $1
sllv $2, $1, $1
add $3, $2, $1
mthi $1
TAG457:
mflo $4
srl $2, $3, 7
mtlo $2
mflo $3
TAG458:
srlv $4, $3, $3
srl $4, $4, 5
lw $1, 0($3)
bgtz $4, TAG459
TAG459:
lhu $1, 0($1)
lui $1, 2
nor $4, $1, $1
mfhi $4
TAG460:
srav $4, $4, $4
mfhi $3
multu $3, $4
mthi $4
TAG461:
lh $4, 0($3)
ori $1, $3, 14
lui $2, 14
beq $3, $2, TAG462
TAG462:
div $2, $2
and $3, $2, $2
sll $0, $0, 0
srl $1, $2, 3
TAG463:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $2, 14
TAG464:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG465
TAG465:
ori $1, $3, 11
ori $2, $1, 0
sll $0, $0, 0
sll $0, $0, 0
TAG466:
blez $3, TAG467
sll $0, $0, 0
mflo $1
mtlo $3
TAG467:
sll $0, $0, 0
div $1, $1
bltz $1, TAG468
sll $0, $0, 0
TAG468:
lui $1, 15
addu $3, $1, $1
mtlo $3
sll $0, $0, 0
TAG469:
mthi $3
mfhi $1
mflo $1
mfhi $4
TAG470:
div $4, $4
mthi $4
divu $4, $4
subu $1, $4, $4
TAG471:
mflo $2
sb $2, 0($2)
lui $4, 4
sll $4, $4, 8
TAG472:
bgtz $4, TAG473
sll $0, $0, 0
beq $4, $2, TAG473
xori $3, $2, 0
TAG473:
sll $0, $0, 0
bltz $3, TAG474
mtlo $3
sll $0, $0, 0
TAG474:
mfhi $4
bne $2, $2, TAG475
lb $4, 0($2)
mult $4, $4
TAG475:
and $2, $4, $4
mult $4, $4
addu $1, $4, $2
mflo $2
TAG476:
lbu $2, 0($2)
sb $2, 0($2)
lb $4, 0($2)
divu $4, $2
TAG477:
mfhi $1
mflo $1
sb $4, 0($4)
mtlo $1
TAG478:
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG479
sb $1, 0($1)
TAG479:
mtlo $1
mtlo $1
sllv $1, $1, $1
subu $1, $1, $1
TAG480:
mflo $4
sb $4, 0($1)
lhu $4, 0($1)
xor $3, $1, $4
TAG481:
mtlo $3
bne $3, $3, TAG482
srav $4, $3, $3
bgtz $4, TAG482
TAG482:
mfhi $4
srl $1, $4, 9
slti $1, $4, 12
mtlo $4
TAG483:
lbu $2, 0($1)
bne $2, $1, TAG484
divu $1, $1
divu $2, $2
TAG484:
bgez $2, TAG485
lbu $2, 0($2)
andi $1, $2, 6
srl $4, $2, 2
TAG485:
lb $1, 0($4)
bgtz $4, TAG486
mtlo $1
beq $1, $1, TAG486
TAG486:
sra $3, $1, 1
mtlo $3
sb $3, 0($1)
bgez $1, TAG487
TAG487:
lui $1, 0
srl $1, $1, 1
mult $1, $1
bgez $1, TAG488
TAG488:
multu $1, $1
bne $1, $1, TAG489
mult $1, $1
lh $2, 0($1)
TAG489:
bne $2, $2, TAG490
mthi $2
blez $2, TAG490
divu $2, $2
TAG490:
mfhi $3
mflo $2
mthi $2
xori $2, $2, 6
TAG491:
sllv $1, $2, $2
mflo $1
sllv $3, $1, $2
mtlo $3
TAG492:
addiu $3, $3, 2
div $3, $3
lw $4, -130($3)
multu $3, $3
TAG493:
sllv $3, $4, $4
bgez $3, TAG494
mtlo $3
bltz $4, TAG494
TAG494:
mfhi $1
bgez $3, TAG495
mthi $1
lh $1, 0($1)
TAG495:
lui $3, 2
addu $3, $3, $1
mfhi $2
multu $3, $3
TAG496:
mult $2, $2
nor $4, $2, $2
beq $4, $2, TAG497
mfhi $3
TAG497:
lh $3, 0($3)
xori $1, $3, 15
beq $1, $1, TAG498
sltu $2, $1, $3
TAG498:
beq $2, $2, TAG499
lh $3, 0($2)
mflo $2
bne $3, $3, TAG499
TAG499:
sltiu $2, $2, 15
addiu $3, $2, 10
slt $4, $3, $2
mfhi $1
TAG500:
multu $1, $1
sb $1, 0($1)
bltz $1, TAG501
subu $3, $1, $1
TAG501:
bgtz $3, TAG502
sub $2, $3, $3
multu $2, $3
blez $2, TAG502
TAG502:
sltiu $2, $2, 14
lui $3, 2
xor $1, $2, $2
beq $2, $1, TAG503
TAG503:
lb $4, 0($1)
bgez $4, TAG504
lh $2, 0($4)
bgtz $2, TAG504
TAG504:
sll $4, $2, 3
mflo $1
bgez $2, TAG505
mthi $1
TAG505:
sra $1, $1, 14
bne $1, $1, TAG506
lw $4, 0($1)
mthi $1
TAG506:
mthi $4
bne $4, $4, TAG507
lui $2, 13
beq $4, $4, TAG507
TAG507:
mflo $4
beq $4, $2, TAG508
lui $4, 0
lui $1, 5
TAG508:
srl $4, $1, 14
sw $1, 0($4)
sll $0, $0, 0
mflo $3
TAG509:
bgtz $3, TAG510
mflo $2
srlv $2, $2, $2
sw $3, 0($2)
TAG510:
mflo $2
xor $1, $2, $2
multu $2, $2
subu $1, $1, $1
TAG511:
lui $4, 1
mult $4, $1
bne $4, $1, TAG512
mtlo $1
TAG512:
divu $4, $4
lui $1, 15
bltz $1, TAG513
srl $2, $4, 14
TAG513:
mtlo $2
beq $2, $2, TAG514
mthi $2
or $1, $2, $2
TAG514:
slt $4, $1, $1
lh $4, 0($4)
mflo $2
mflo $4
TAG515:
or $1, $4, $4
bltz $1, TAG516
multu $1, $4
bgez $1, TAG516
TAG516:
lhu $4, 0($1)
mflo $1
lw $3, 0($1)
mflo $4
TAG517:
div $4, $4
mflo $1
blez $1, TAG518
lui $4, 7
TAG518:
slt $2, $4, $4
slti $3, $2, 4
lb $4, 0($3)
lui $1, 4
TAG519:
mthi $1
sll $0, $0, 0
srl $4, $1, 2
sll $0, $0, 0
TAG520:
blez $2, TAG521
srlv $1, $2, $2
sb $2, 0($1)
slt $1, $2, $2
TAG521:
bltz $1, TAG522
sb $1, 0($1)
bltz $1, TAG522
multu $1, $1
TAG522:
mfhi $3
lui $4, 13
bne $3, $3, TAG523
mthi $3
TAG523:
sltiu $4, $4, 15
mtlo $4
sll $1, $4, 13
sltiu $2, $1, 1
TAG524:
addu $1, $2, $2
multu $2, $1
mfhi $3
lb $1, 0($1)
TAG525:
blez $1, TAG526
mfhi $3
mflo $1
srlv $2, $3, $1
TAG526:
sb $2, 0($2)
lui $4, 14
mfhi $3
lb $4, 0($2)
TAG527:
mflo $3
mthi $3
bgtz $3, TAG528
mflo $3
TAG528:
lh $4, 0($3)
xor $4, $3, $4
bltz $3, TAG529
div $3, $4
TAG529:
beq $4, $4, TAG530
sh $4, 0($4)
mfhi $1
multu $1, $4
TAG530:
mflo $4
lbu $3, 0($4)
bne $1, $4, TAG531
sb $3, 0($3)
TAG531:
mfhi $3
bne $3, $3, TAG532
srlv $2, $3, $3
sll $4, $3, 10
TAG532:
mflo $1
mflo $3
bltz $4, TAG533
lui $3, 0
TAG533:
mthi $3
slti $2, $3, 15
mfhi $3
mult $3, $3
TAG534:
blez $3, TAG535
lui $2, 14
slt $2, $3, $3
subu $4, $2, $2
TAG535:
lui $1, 5
mtlo $4
bne $1, $1, TAG536
div $4, $1
TAG536:
mfhi $3
lui $4, 15
addu $3, $4, $3
mtlo $4
TAG537:
mtlo $3
bgez $3, TAG538
sltiu $4, $3, 3
sh $4, 0($4)
TAG538:
sra $4, $4, 3
lui $3, 13
add $3, $4, $4
sh $3, 0($3)
TAG539:
lui $3, 7
sll $0, $0, 0
xori $3, $3, 0
mfhi $4
TAG540:
beq $4, $4, TAG541
mthi $4
mthi $4
sb $4, 0($4)
TAG541:
lui $1, 4
sltiu $4, $1, 9
mult $1, $4
lui $4, 11
TAG542:
sll $0, $0, 0
srl $3, $3, 13
blez $3, TAG543
multu $3, $3
TAG543:
divu $3, $3
divu $3, $3
div $3, $3
beq $3, $3, TAG544
TAG544:
lb $2, 0($3)
or $1, $3, $2
mflo $4
bne $2, $4, TAG545
TAG545:
addiu $4, $4, 7
sb $4, 0($4)
srav $2, $4, $4
mult $4, $2
TAG546:
lw $1, 0($2)
blez $1, TAG547
addi $1, $2, 2
lh $3, 0($1)
TAG547:
lui $1, 8
and $2, $3, $1
mflo $2
multu $3, $2
TAG548:
bne $2, $2, TAG549
lb $4, 0($2)
multu $4, $2
sb $2, 0($2)
TAG549:
bltz $4, TAG550
sb $4, 0($4)
beq $4, $4, TAG550
addi $4, $4, 13
TAG550:
sb $4, 0($4)
beq $4, $4, TAG551
sra $2, $4, 2
lhu $2, 0($2)
TAG551:
mfhi $4
beq $4, $2, TAG552
sh $2, 0($4)
lui $3, 7
TAG552:
mflo $3
beq $3, $3, TAG553
mtlo $3
blez $3, TAG553
TAG553:
or $3, $3, $3
blez $3, TAG554
slt $3, $3, $3
beq $3, $3, TAG554
TAG554:
sw $3, 0($3)
mflo $2
bne $2, $3, TAG555
mfhi $4
TAG555:
lui $2, 1
bne $4, $2, TAG556
sll $0, $0, 0
beq $2, $4, TAG556
TAG556:
sll $0, $0, 0
multu $2, $3
sll $0, $0, 0
beq $3, $2, TAG557
TAG557:
div $2, $2
mthi $2
subu $4, $2, $2
beq $2, $2, TAG558
TAG558:
multu $4, $4
addu $3, $4, $4
lbu $3, 0($4)
sw $4, 0($3)
TAG559:
mtlo $3
mfhi $1
bgtz $3, TAG560
sh $1, 0($3)
TAG560:
lui $1, 8
lui $4, 1
sll $0, $0, 0
lui $2, 14
TAG561:
addiu $1, $2, 4
mflo $4
beq $4, $1, TAG562
mtlo $4
TAG562:
sltiu $1, $4, 4
mflo $1
lh $2, 0($1)
xori $2, $4, 4
TAG563:
slti $1, $2, 8
sb $2, 0($1)
addu $4, $2, $2
lui $1, 4
TAG564:
lui $3, 13
lui $4, 6
bgez $1, TAG565
mult $1, $4
TAG565:
sll $0, $0, 0
sb $2, 0($2)
sll $1, $2, 10
sb $2, -4096($1)
TAG566:
bne $1, $1, TAG567
mtlo $1
sb $1, -4096($1)
bne $1, $1, TAG567
TAG567:
lui $3, 12
mfhi $3
andi $4, $3, 11
bgez $3, TAG568
TAG568:
lui $2, 9
mfhi $2
bltz $4, TAG569
subu $3, $2, $2
TAG569:
mult $3, $3
bne $3, $3, TAG570
lw $4, 0($3)
mtlo $3
TAG570:
mthi $4
blez $4, TAG571
mflo $3
mtlo $3
TAG571:
multu $3, $3
xori $4, $3, 6
lui $4, 0
bne $4, $3, TAG572
TAG572:
mult $4, $4
mthi $4
bgtz $4, TAG573
lui $4, 2
TAG573:
addu $2, $4, $4
mthi $4
lui $4, 3
mtlo $2
TAG574:
bltz $4, TAG575
mflo $4
slti $4, $4, 4
lui $3, 5
TAG575:
bgtz $3, TAG576
sll $4, $3, 6
lui $2, 4
blez $3, TAG576
TAG576:
lui $3, 15
sll $0, $0, 0
multu $2, $3
bne $2, $2, TAG577
TAG577:
mfhi $3
sh $2, 0($3)
xori $3, $2, 6
blez $2, TAG578
TAG578:
srav $3, $3, $3
mtlo $3
bne $3, $3, TAG579
sh $3, -4096($3)
TAG579:
lui $3, 12
lui $3, 14
mthi $3
sll $0, $0, 0
TAG580:
subu $1, $4, $4
bne $4, $1, TAG581
sll $0, $0, 0
mflo $4
TAG581:
bltz $4, TAG582
lui $4, 2
sltu $3, $4, $4
lui $2, 15
TAG582:
bgtz $2, TAG583
lui $3, 1
beq $3, $3, TAG583
lbu $1, 0($3)
TAG583:
mult $1, $1
lui $2, 9
xor $1, $2, $2
mfhi $4
TAG584:
bne $4, $4, TAG585
lui $1, 8
sll $0, $0, 0
mthi $4
TAG585:
sll $0, $0, 0
blez $1, TAG586
xor $1, $1, $1
lhu $1, 0($1)
TAG586:
sll $0, $0, 0
divu $1, $1
div $1, $1
blez $1, TAG587
TAG587:
and $1, $1, $1
sw $1, -4096($1)
lui $2, 5
sll $0, $0, 0
TAG588:
srav $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG589:
mtlo $4
sub $4, $4, $4
lhu $3, 0($4)
mtlo $3
TAG590:
mfhi $2
lui $4, 2
blez $2, TAG591
slt $3, $2, $3
TAG591:
lbu $4, 0($3)
addiu $3, $4, 14
mflo $2
mthi $2
TAG592:
sll $0, $0, 0
lb $1, 0($3)
bgez $1, TAG593
multu $3, $1
TAG593:
sh $1, 0($1)
mfhi $2
beq $2, $2, TAG594
sw $2, 0($2)
TAG594:
mfhi $4
lui $3, 14
lw $2, 0($4)
multu $4, $2
TAG595:
mthi $2
lui $1, 12
multu $2, $2
sb $2, 0($2)
TAG596:
sll $0, $0, 0
mflo $3
div $1, $1
multu $1, $3
TAG597:
ori $3, $3, 0
lhu $3, 0($3)
lw $3, 0($3)
sll $1, $3, 9
TAG598:
bne $1, $1, TAG599
ori $4, $1, 8
ori $2, $4, 10
blez $1, TAG599
TAG599:
slti $3, $2, 14
mthi $2
mfhi $3
beq $3, $2, TAG600
TAG600:
mthi $3
nor $4, $3, $3
mthi $4
bltz $4, TAG601
TAG601:
multu $4, $4
subu $2, $4, $4
subu $3, $4, $2
sb $4, 0($2)
TAG602:
bgtz $3, TAG603
addu $3, $3, $3
bgez $3, TAG603
sw $3, 22($3)
TAG603:
bne $3, $3, TAG604
srav $4, $3, $3
bne $3, $4, TAG604
lw $4, 1($4)
TAG604:
lui $1, 10
mflo $4
sb $4, 0($4)
lb $4, 0($4)
TAG605:
mthi $4
beq $4, $4, TAG606
sb $4, 0($4)
lhu $1, 0($4)
TAG606:
sll $0, $0, 0
div $1, $1
bne $1, $1, TAG607
lui $1, 4
TAG607:
lui $1, 7
lui $4, 13
sll $0, $0, 0
lui $2, 9
TAG608:
blez $2, TAG609
divu $2, $2
multu $2, $2
mtlo $2
TAG609:
beq $2, $2, TAG610
sll $0, $0, 0
blez $2, TAG610
divu $2, $2
TAG610:
bne $2, $2, TAG611
mult $2, $2
bgtz $2, TAG611
mthi $2
TAG611:
beq $2, $2, TAG612
sll $0, $0, 0
bltz $2, TAG612
slt $1, $2, $2
TAG612:
sll $4, $1, 12
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG613:
sll $0, $0, 0
lui $2, 6
beq $2, $2, TAG614
sll $0, $0, 0
TAG614:
sll $0, $0, 0
bgez $4, TAG615
multu $4, $4
divu $4, $2
TAG615:
lui $3, 8
lui $1, 5
multu $1, $1
mfhi $3
TAG616:
sll $1, $3, 15
slt $3, $3, $3
mtlo $1
multu $3, $3
TAG617:
xor $3, $3, $3
sll $3, $3, 6
lui $4, 9
lui $2, 3
TAG618:
or $2, $2, $2
bgtz $2, TAG619
sll $0, $0, 0
lh $3, 0($2)
TAG619:
slti $2, $3, 9
sw $3, 0($3)
bne $3, $2, TAG620
mult $3, $3
TAG620:
bgtz $2, TAG621
lui $4, 5
blez $2, TAG621
sltu $2, $4, $4
TAG621:
mtlo $2
srav $1, $2, $2
slti $3, $2, 15
addu $2, $3, $3
TAG622:
bltz $2, TAG623
mflo $3
slt $1, $3, $2
sra $2, $1, 12
TAG623:
lui $3, 6
beq $2, $3, TAG624
sllv $2, $2, $3
bltz $2, TAG624
TAG624:
srlv $4, $2, $2
beq $2, $2, TAG625
mfhi $4
mult $2, $4
TAG625:
mflo $2
bltz $4, TAG626
lui $4, 8
lui $4, 1
TAG626:
ori $2, $4, 8
mtlo $2
and $1, $4, $2
sll $0, $0, 0
TAG627:
bgez $1, TAG628
sll $0, $0, 0
sltiu $3, $1, 7
lbu $2, 0($1)
TAG628:
mthi $2
bne $2, $2, TAG629
ori $2, $2, 14
sll $0, $0, 0
TAG629:
andi $2, $2, 14
lui $4, 9
mflo $1
beq $1, $2, TAG630
TAG630:
lui $1, 5
addu $4, $1, $1
mult $1, $4
mtlo $1
TAG631:
sll $0, $0, 0
mflo $4
subu $4, $4, $4
mtlo $4
TAG632:
sw $4, 0($4)
lui $2, 9
xori $1, $4, 4
beq $2, $1, TAG633
TAG633:
sw $1, 0($1)
sra $4, $1, 12
sb $1, 0($1)
bgez $4, TAG634
TAG634:
slti $4, $4, 12
mfhi $2
bltz $4, TAG635
lhu $4, 0($2)
TAG635:
mfhi $3
lb $4, 0($4)
lui $2, 5
slt $3, $4, $2
TAG636:
sb $3, 0($3)
bgez $3, TAG637
mflo $2
lui $4, 1
TAG637:
sh $4, 0($4)
multu $4, $4
mult $4, $4
mthi $4
TAG638:
mthi $4
mflo $4
bne $4, $4, TAG639
sb $4, 0($4)
TAG639:
lui $3, 10
mthi $3
mult $4, $4
lhu $2, 0($4)
TAG640:
mfhi $3
bne $2, $2, TAG641
sw $2, 0($3)
mtlo $3
TAG641:
sh $3, 0($3)
multu $3, $3
mult $3, $3
xori $3, $3, 11
TAG642:
bltz $3, TAG643
mfhi $4
multu $4, $4
addu $1, $3, $3
TAG643:
lui $3, 15
sh $3, 0($1)
bgtz $1, TAG644
mflo $1
TAG644:
lb $2, 0($1)
sltiu $2, $2, 15
nor $2, $2, $2
xori $4, $2, 1
TAG645:
mtlo $4
lh $4, 1($4)
lhu $1, 0($4)
lui $4, 7
TAG646:
bgez $4, TAG647
mthi $4
multu $4, $4
mtlo $4
TAG647:
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
lui $2, 7
TAG648:
mflo $4
slt $1, $4, $4
andi $3, $4, 7
bgtz $3, TAG649
TAG649:
sb $3, 0($3)
mflo $3
bne $3, $3, TAG650
lui $1, 3
TAG650:
mflo $4
lui $3, 12
addiu $1, $4, 3
addu $2, $1, $1
TAG651:
slt $3, $2, $2
and $2, $2, $3
sb $2, 0($2)
xor $1, $2, $3
TAG652:
sll $4, $1, 14
mult $1, $1
mthi $1
ori $1, $4, 12
TAG653:
div $1, $1
addu $3, $1, $1
addiu $1, $1, 1
sb $1, 0($1)
TAG654:
beq $1, $1, TAG655
lbu $4, 0($1)
bne $4, $1, TAG655
lui $4, 7
TAG655:
mfhi $1
lw $3, 0($1)
lui $4, 11
sll $0, $0, 0
TAG656:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
lui $3, 12
TAG657:
addiu $4, $3, 7
sll $1, $3, 13
mtlo $4
sll $0, $0, 0
TAG658:
sll $0, $0, 0
bgez $1, TAG659
or $4, $4, $1
sll $0, $0, 0
TAG659:
mtlo $2
slti $1, $2, 13
sb $2, 0($2)
mflo $4
TAG660:
bgez $4, TAG661
sb $4, 0($4)
mtlo $4
mtlo $4
TAG661:
beq $4, $4, TAG662
mtlo $4
divu $4, $4
bne $4, $4, TAG662
TAG662:
sh $4, 0($4)
sll $1, $4, 2
or $4, $4, $1
mfhi $4
TAG663:
beq $4, $4, TAG664
lh $4, 0($4)
mfhi $4
sb $4, 0($4)
TAG664:
mflo $4
bne $4, $4, TAG665
sra $2, $4, 7
sw $2, 0($4)
TAG665:
add $3, $2, $2
mthi $3
lhu $2, 0($2)
sh $3, 0($2)
TAG666:
sll $2, $2, 15
beq $2, $2, TAG667
lb $3, 0($2)
lbu $2, 0($2)
TAG667:
mtlo $2
bltz $2, TAG668
lui $1, 14
bgez $2, TAG668
TAG668:
xori $1, $1, 14
bgtz $1, TAG669
addiu $2, $1, 2
or $1, $1, $1
TAG669:
mfhi $3
lbu $1, 0($3)
bne $3, $1, TAG670
mtlo $1
TAG670:
xor $3, $1, $1
lh $2, 0($3)
sb $1, 0($1)
bltz $3, TAG671
TAG671:
slti $1, $2, 0
lh $2, 0($1)
srl $2, $2, 14
and $4, $2, $2
TAG672:
lhu $2, 0($4)
blez $2, TAG673
sub $3, $4, $2
bne $4, $2, TAG673
TAG673:
mult $3, $3
mthi $3
sltiu $3, $3, 13
mtlo $3
TAG674:
lui $2, 15
bltz $2, TAG675
mtlo $3
mthi $3
TAG675:
lui $3, 8
sll $0, $0, 0
addu $1, $3, $2
mtlo $2
TAG676:
lui $2, 0
bne $2, $2, TAG677
mtlo $2
sll $0, $0, 0
TAG677:
sltiu $4, $2, 14
lbu $2, 0($4)
bgez $4, TAG678
sltiu $3, $2, 9
TAG678:
bgez $3, TAG679
lbu $2, 0($3)
mfhi $1
sh $1, 0($2)
TAG679:
bltz $1, TAG680
srlv $3, $1, $1
mflo $2
sll $0, $0, 0
TAG680:
multu $2, $2
blez $2, TAG681
lui $1, 1
mflo $1
TAG681:
bne $1, $1, TAG682
mfhi $4
nor $4, $4, $1
lui $4, 7
TAG682:
sll $0, $0, 0
mfhi $3
sltiu $3, $4, 10
sltu $4, $3, $3
TAG683:
add $1, $4, $4
mthi $1
nor $4, $4, $1
bltz $1, TAG684
TAG684:
nor $2, $4, $4
bne $2, $2, TAG685
mult $2, $2
beq $2, $4, TAG685
TAG685:
lui $3, 0
sltu $3, $2, $3
lw $2, 0($2)
sb $2, 0($2)
TAG686:
lui $4, 7
multu $2, $2
sll $0, $0, 0
lui $1, 8
TAG687:
bne $1, $1, TAG688
sll $0, $0, 0
sll $0, $0, 0
or $2, $1, $1
TAG688:
slti $4, $2, 0
mthi $4
lw $4, 0($4)
nor $3, $4, $2
TAG689:
sll $0, $0, 0
bgez $3, TAG690
sll $0, $0, 0
mthi $3
TAG690:
sra $4, $3, 12
bne $3, $4, TAG691
mflo $2
bgez $3, TAG691
TAG691:
addiu $2, $2, 13
mfhi $3
bltz $2, TAG692
mult $2, $2
TAG692:
bltz $3, TAG693
mflo $1
lw $2, 0($3)
beq $1, $2, TAG693
TAG693:
lbu $1, 0($2)
mfhi $3
mfhi $3
addiu $3, $3, 10
TAG694:
lbu $1, 0($3)
blez $1, TAG695
mtlo $3
xori $2, $1, 5
TAG695:
slti $1, $2, 11
mfhi $2
multu $1, $2
multu $2, $2
TAG696:
mtlo $2
mfhi $3
andi $4, $3, 0
mthi $3
TAG697:
sh $4, 0($4)
lui $2, 6
bgez $2, TAG698
mfhi $1
TAG698:
mfhi $2
bltz $2, TAG699
slti $2, $1, 10
divu $2, $2
TAG699:
lui $2, 8
beq $2, $2, TAG700
srav $2, $2, $2
sll $2, $2, 11
TAG700:
addiu $3, $2, 5
bltz $3, TAG701
mfhi $3
mfhi $1
TAG701:
lh $2, 0($1)
lui $4, 14
sw $1, 0($1)
sw $4, 0($2)
TAG702:
mthi $4
bne $4, $4, TAG703
sll $0, $0, 0
mult $4, $4
TAG703:
mflo $1
mflo $3
mthi $4
slti $2, $1, 7
TAG704:
mtlo $2
bgez $2, TAG705
sb $2, 0($2)
beq $2, $2, TAG705
TAG705:
andi $4, $2, 6
lui $4, 7
bgtz $4, TAG706
lui $1, 7
TAG706:
bltz $1, TAG707
sll $0, $0, 0
mflo $3
mtlo $3
TAG707:
or $1, $3, $3
slti $3, $1, 4
mtlo $3
xor $4, $1, $1
TAG708:
sb $4, 0($4)
sh $4, 0($4)
mfhi $2
sll $0, $0, 0
TAG709:
andi $2, $3, 9
bne $2, $2, TAG710
multu $2, $3
mflo $1
TAG710:
lui $3, 9
beq $3, $3, TAG711
lbu $1, 0($1)
lui $1, 1
TAG711:
lui $1, 3
beq $1, $1, TAG712
multu $1, $1
addiu $4, $1, 8
TAG712:
lb $3, 0($4)
mult $4, $4
sw $4, 0($3)
sw $3, 0($3)
TAG713:
mult $3, $3
mflo $3
bne $3, $3, TAG714
lui $2, 10
TAG714:
bgez $2, TAG715
sll $0, $0, 0
lw $4, 0($3)
xori $4, $4, 12
TAG715:
bne $4, $4, TAG716
mflo $4
mult $4, $4
lui $3, 5
TAG716:
mtlo $3
mflo $1
beq $1, $1, TAG717
andi $4, $1, 14
TAG717:
sw $4, 0($4)
bgtz $4, TAG718
lhu $3, 0($4)
mfhi $3
TAG718:
srlv $1, $3, $3
and $2, $1, $1
addi $4, $3, 12
bgtz $2, TAG719
TAG719:
and $3, $4, $4
bgtz $4, TAG720
lui $4, 6
lhu $4, 0($4)
TAG720:
addiu $3, $4, 3
mflo $1
mult $4, $3
sll $0, $0, 0
TAG721:
ori $1, $1, 6
mtlo $1
addiu $4, $1, 15
subu $4, $4, $1
TAG722:
nor $2, $4, $4
andi $1, $2, 7
ori $1, $1, 7
lbu $2, 16($2)
TAG723:
mflo $1
sh $2, 0($2)
lui $4, 12
sll $0, $0, 0
TAG724:
mthi $4
mfhi $2
div $4, $4
mtlo $2
TAG725:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
lb $1, 0($1)
TAG726:
xori $1, $1, 10
mfhi $2
mthi $2
lui $3, 13
TAG727:
mtlo $3
div $3, $3
bltz $3, TAG728
slti $4, $3, 0
TAG728:
mult $4, $4
mtlo $4
mthi $4
lui $3, 2
TAG729:
mtlo $3
mthi $3
blez $3, TAG730
mthi $3
TAG730:
sllv $2, $3, $3
sll $0, $0, 0
multu $3, $2
lui $1, 9
TAG731:
sllv $1, $1, $1
beq $1, $1, TAG732
mult $1, $1
divu $1, $1
TAG732:
sll $0, $0, 0
bne $1, $1, TAG733
mthi $1
sllv $2, $1, $1
TAG733:
lui $1, 13
bgtz $1, TAG734
divu $2, $2
mflo $4
TAG734:
mflo $4
subu $2, $4, $4
srl $1, $4, 11
mfhi $2
TAG735:
mthi $2
lw $4, 0($2)
xor $3, $2, $2
mflo $1
TAG736:
mfhi $4
mflo $1
xori $3, $1, 13
multu $4, $3
TAG737:
lh $1, 0($3)
nor $3, $3, $1
and $3, $3, $1
or $2, $3, $1
TAG738:
blez $2, TAG739
mult $2, $2
lui $1, 3
lh $1, -3328($2)
TAG739:
bne $1, $1, TAG740
mflo $1
mflo $3
mthi $1
TAG740:
ori $2, $3, 9
bne $2, $3, TAG741
addu $4, $3, $3
div $4, $2
TAG741:
lui $3, 12
blez $3, TAG742
mtlo $4
lui $2, 3
TAG742:
beq $2, $2, TAG743
sll $0, $0, 0
blez $2, TAG743
sh $2, 0($2)
TAG743:
mtlo $2
mfhi $3
beq $3, $3, TAG744
mflo $1
TAG744:
div $1, $1
addu $2, $1, $1
bgtz $2, TAG745
sll $0, $0, 0
TAG745:
mfhi $3
sh $2, 0($3)
lh $1, 0($3)
addu $2, $2, $1
TAG746:
mtlo $2
and $1, $2, $2
beq $2, $2, TAG747
addu $1, $2, $2
TAG747:
divu $1, $1
mult $1, $1
div $1, $1
beq $1, $1, TAG748
TAG748:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
xor $1, $4, $2
TAG749:
div $1, $1
addiu $1, $1, 7
lui $4, 5
sltiu $2, $1, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop