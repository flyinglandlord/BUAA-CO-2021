ori $1, $0, 15
ori $2, $0, 0
ori $3, $0, 8
ori $4, $0, 14
sw $4, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $3, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $4, 120($0)
sw $2, 124($0)
mtlo $2
mthi $2
slti $2, $2, 13
mthi $2
TAG1:
lui $2, 7
sll $0, $0, 0
mflo $3
multu $2, $3
TAG2:
addu $4, $3, $3
sh $4, 0($3)
multu $3, $3
srl $1, $3, 14
TAG3:
beq $1, $1, TAG4
mfhi $3
sb $3, 0($3)
bltz $1, TAG4
TAG4:
lui $4, 9
bgtz $4, TAG5
mtlo $4
multu $4, $4
TAG5:
divu $4, $4
sll $1, $4, 8
sll $0, $0, 0
beq $3, $3, TAG6
TAG6:
slt $3, $3, $3
beq $3, $3, TAG7
mflo $3
xori $4, $3, 13
TAG7:
sll $0, $0, 0
srl $1, $2, 2
srlv $4, $1, $4
mult $4, $2
TAG8:
sll $0, $0, 0
mflo $4
sb $3, 0($3)
mflo $4
TAG9:
addu $2, $4, $4
sll $0, $0, 0
slt $4, $4, $2
mult $4, $4
TAG10:
mult $4, $4
multu $4, $4
mtlo $4
mthi $4
TAG11:
ori $2, $4, 12
add $2, $4, $4
lbu $1, 0($2)
mflo $1
TAG12:
bgez $1, TAG13
lui $3, 10
lbu $4, 0($1)
sh $3, 0($4)
TAG13:
beq $4, $4, TAG14
subu $1, $4, $4
add $3, $4, $4
lui $4, 0
TAG14:
mult $4, $4
mthi $4
mfhi $4
xori $2, $4, 10
TAG15:
mthi $2
lh $4, 0($2)
mflo $2
mflo $4
TAG16:
sh $4, 0($4)
lui $4, 12
mflo $3
bltz $4, TAG17
TAG17:
nor $2, $3, $3
bgtz $2, TAG18
multu $3, $3
bgtz $2, TAG18
TAG18:
divu $2, $2
addu $2, $2, $2
sw $2, 2($2)
sw $2, 2($2)
TAG19:
mult $2, $2
andi $3, $2, 12
bne $3, $3, TAG20
mult $3, $3
TAG20:
lw $4, 0($3)
bltz $3, TAG21
sh $4, 0($4)
addiu $2, $3, 11
TAG21:
mflo $2
srl $3, $2, 9
mfhi $2
bgez $2, TAG22
TAG22:
mult $2, $2
ori $1, $2, 2
lw $4, 0($2)
bne $1, $4, TAG23
TAG23:
addiu $1, $4, 9
sra $1, $4, 13
mthi $4
lb $1, 2($4)
TAG24:
div $1, $1
or $4, $1, $1
slti $2, $4, 5
mfhi $1
TAG25:
sw $1, 0($1)
sb $1, 0($1)
mflo $3
beq $1, $3, TAG26
TAG26:
mflo $1
div $1, $1
beq $3, $1, TAG27
srav $2, $3, $1
TAG27:
lui $2, 3
lui $4, 7
bne $4, $2, TAG28
mtlo $2
TAG28:
sll $0, $0, 0
lbu $3, 0($1)
mfhi $2
lui $1, 15
TAG29:
sll $0, $0, 0
div $4, $4
mult $4, $1
beq $1, $4, TAG30
TAG30:
mflo $3
mflo $1
sll $0, $0, 0
lui $1, 7
TAG31:
mtlo $1
mtlo $1
slti $3, $1, 0
sll $0, $0, 0
TAG32:
slt $3, $3, $3
sltiu $1, $3, 11
sll $1, $1, 3
lui $2, 0
TAG33:
mult $2, $2
subu $3, $2, $2
sltiu $2, $3, 14
lui $1, 13
TAG34:
sll $0, $0, 0
div $1, $1
srl $4, $1, 9
bltz $1, TAG35
TAG35:
mtlo $4
mtlo $4
or $1, $4, $4
bne $1, $1, TAG36
TAG36:
mflo $1
lhu $1, -1664($1)
sllv $2, $1, $1
beq $1, $2, TAG37
TAG37:
mthi $2
bgtz $2, TAG38
sub $2, $2, $2
lhu $3, 0($2)
TAG38:
beq $3, $3, TAG39
multu $3, $3
lui $3, 2
mult $3, $3
TAG39:
beq $3, $3, TAG40
sh $3, 0($3)
beq $3, $3, TAG40
lui $2, 13
TAG40:
lui $4, 5
andi $4, $4, 14
mflo $1
beq $1, $1, TAG41
TAG41:
lui $4, 6
nor $4, $1, $1
mthi $4
subu $1, $1, $4
TAG42:
sb $1, 0($1)
sb $1, 0($1)
sltu $4, $1, $1
lui $1, 11
TAG43:
sll $0, $0, 0
mthi $1
beq $1, $1, TAG44
sh $3, 0($3)
TAG44:
multu $3, $3
mflo $1
xor $4, $1, $1
lui $1, 0
TAG45:
lui $1, 2
bltz $1, TAG46
lui $4, 8
mthi $4
TAG46:
addiu $4, $4, 10
mfhi $2
sll $0, $0, 0
sllv $1, $4, $4
TAG47:
addiu $1, $1, 15
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG48:
sll $0, $0, 0
and $1, $3, $3
mtlo $1
mult $3, $1
TAG49:
mfhi $3
blez $3, TAG50
mfhi $4
and $2, $1, $1
TAG50:
divu $2, $2
sll $0, $0, 0
mfhi $2
mfhi $4
TAG51:
lb $2, 0($4)
sh $4, 0($2)
andi $3, $2, 9
bgez $2, TAG52
TAG52:
sh $3, 0($3)
mthi $3
bltz $3, TAG53
lui $4, 10
TAG53:
sll $0, $0, 0
mflo $3
andi $1, $3, 6
mult $1, $4
TAG54:
sh $1, 0($1)
or $1, $1, $1
sh $1, 0($1)
beq $1, $1, TAG55
TAG55:
mtlo $1
blez $1, TAG56
sb $1, 0($1)
beq $1, $1, TAG56
TAG56:
sw $1, 0($1)
mult $1, $1
mfhi $4
lui $4, 4
TAG57:
mtlo $4
addiu $3, $4, 10
divu $3, $4
bgtz $3, TAG58
TAG58:
lui $2, 4
mflo $2
divu $3, $2
lbu $4, 0($2)
TAG59:
multu $4, $4
mthi $4
addiu $2, $4, 6
mtlo $2
TAG60:
bgtz $2, TAG61
lui $2, 2
mult $2, $2
mfhi $1
TAG61:
bgtz $1, TAG62
mthi $1
mult $1, $1
sb $1, 0($1)
TAG62:
sll $4, $1, 4
addiu $3, $4, 0
ori $1, $3, 2
lb $4, 0($3)
TAG63:
lhu $2, 0($4)
bgez $2, TAG64
mult $2, $2
lui $3, 8
TAG64:
bne $3, $3, TAG65
mtlo $3
blez $3, TAG65
multu $3, $3
TAG65:
lui $4, 4
mtlo $4
sltiu $1, $3, 14
lui $1, 13
TAG66:
bgez $1, TAG67
sll $0, $0, 0
mflo $1
multu $2, $1
TAG67:
sll $0, $0, 0
mthi $1
mult $1, $1
mtlo $1
TAG68:
mthi $1
blez $1, TAG69
mflo $3
blez $1, TAG69
TAG69:
ori $4, $3, 0
lui $2, 15
mflo $1
beq $2, $1, TAG70
TAG70:
mthi $1
multu $1, $1
mfhi $4
beq $1, $4, TAG71
TAG71:
srlv $1, $4, $4
lui $4, 8
mflo $4
sh $4, 0($4)
TAG72:
bne $4, $4, TAG73
mtlo $4
mfhi $3
divu $4, $3
TAG73:
mfhi $1
lui $2, 7
xori $2, $3, 11
mthi $3
TAG74:
srlv $2, $2, $2
beq $2, $2, TAG75
sh $2, 0($2)
lhu $1, 0($2)
TAG75:
bgez $1, TAG76
mthi $1
mult $1, $1
lui $1, 3
TAG76:
mfhi $2
beq $2, $2, TAG77
sw $2, 0($2)
mtlo $2
TAG77:
sra $2, $2, 12
mthi $2
lui $2, 11
sll $0, $0, 0
TAG78:
lh $3, 0($4)
lbu $4, 0($4)
addiu $3, $4, 10
lbu $1, 0($3)
TAG79:
mult $1, $1
lb $4, 0($1)
lb $1, 0($1)
slt $4, $1, $1
TAG80:
bne $4, $4, TAG81
lui $4, 5
sll $0, $0, 0
sll $1, $4, 3
TAG81:
mult $1, $1
lui $4, 1
sll $0, $0, 0
or $4, $1, $1
TAG82:
mult $4, $4
bne $4, $4, TAG83
sll $0, $0, 0
bne $4, $4, TAG83
TAG83:
sll $0, $0, 0
srlv $1, $4, $4
bltz $1, TAG84
sll $0, $0, 0
TAG84:
bgez $4, TAG85
multu $4, $4
mflo $2
mthi $4
TAG85:
bne $2, $2, TAG86
sll $0, $0, 0
mflo $1
bne $2, $1, TAG86
TAG86:
sb $1, 0($1)
bne $1, $1, TAG87
sra $2, $1, 8
mflo $1
TAG87:
mtlo $1
bgez $1, TAG88
lui $1, 5
lh $4, 0($1)
TAG88:
slt $4, $4, $4
beq $4, $4, TAG89
sb $4, 0($4)
lui $3, 13
TAG89:
divu $3, $3
mthi $3
beq $3, $3, TAG90
lhu $2, 0($3)
TAG90:
sh $2, 0($2)
bgez $2, TAG91
sllv $3, $2, $2
mflo $3
TAG91:
lhu $1, 0($3)
lh $4, 0($3)
bgtz $1, TAG92
mult $1, $1
TAG92:
bgtz $4, TAG93
mtlo $4
slti $4, $4, 7
bgez $4, TAG93
TAG93:
sb $4, 0($4)
bne $4, $4, TAG94
sltiu $3, $4, 8
lui $2, 15
TAG94:
blez $2, TAG95
sll $0, $0, 0
srl $4, $2, 10
mthi $4
TAG95:
bne $4, $4, TAG96
mflo $1
and $3, $1, $1
lhu $2, 0($3)
TAG96:
mfhi $1
beq $1, $1, TAG97
div $1, $2
bne $2, $2, TAG97
TAG97:
divu $1, $1
mtlo $1
addu $4, $1, $1
mfhi $1
TAG98:
mfhi $4
blez $1, TAG99
mthi $1
mult $1, $1
TAG99:
multu $4, $4
sh $4, 0($4)
slt $2, $4, $4
mult $2, $2
TAG100:
mtlo $2
mtlo $2
mflo $4
bne $2, $2, TAG101
TAG101:
mthi $4
mflo $4
mflo $3
mtlo $3
TAG102:
ori $2, $3, 8
lh $3, 0($2)
bgez $2, TAG103
mult $3, $2
TAG103:
sh $3, 0($3)
divu $3, $3
mthi $3
beq $3, $3, TAG104
TAG104:
mtlo $3
lb $1, 0($3)
xor $3, $1, $3
div $3, $1
TAG105:
sw $3, 0($3)
sw $3, 0($3)
slti $3, $3, 3
lbu $3, 0($3)
TAG106:
lw $1, 0($3)
blez $1, TAG107
lui $1, 5
bltz $1, TAG107
TAG107:
nor $3, $1, $1
sll $0, $0, 0
sb $2, 0($2)
lui $4, 14
TAG108:
mthi $4
lui $2, 1
beq $2, $4, TAG109
sll $0, $0, 0
TAG109:
sll $0, $0, 0
slt $1, $4, $4
sh $4, 0($1)
sll $0, $0, 0
TAG110:
lui $1, 12
subu $2, $1, $1
sllv $1, $1, $1
mflo $3
TAG111:
mthi $3
sh $3, 0($3)
mthi $3
mult $3, $3
TAG112:
lb $4, 0($3)
lw $2, 0($4)
bne $3, $3, TAG113
sh $4, 0($3)
TAG113:
sllv $3, $2, $2
sltu $4, $2, $2
mfhi $2
sltiu $4, $4, 7
TAG114:
lb $2, 0($4)
multu $2, $2
mthi $2
andi $3, $4, 4
TAG115:
bne $3, $3, TAG116
mfhi $1
mfhi $1
lui $2, 1
TAG116:
mtlo $2
sll $0, $0, 0
addu $4, $2, $2
sll $0, $0, 0
TAG117:
multu $4, $4
bne $4, $4, TAG118
slti $4, $4, 4
blez $4, TAG118
TAG118:
lbu $3, 0($4)
mtlo $4
mflo $3
sb $3, 0($3)
TAG119:
lui $3, 0
lb $1, 0($3)
slti $3, $1, 11
lui $4, 1
TAG120:
multu $4, $4
addiu $3, $4, 6
divu $4, $3
mult $4, $3
TAG121:
addu $3, $3, $3
bltz $3, TAG122
mflo $3
mfhi $1
TAG122:
mflo $4
mfhi $3
lb $1, 0($3)
and $3, $1, $3
TAG123:
lui $2, 15
mthi $3
mult $2, $3
mthi $3
TAG124:
div $2, $2
lui $1, 0
srl $1, $1, 4
blez $2, TAG125
TAG125:
addi $3, $1, 13
lui $2, 8
bne $1, $2, TAG126
mthi $1
TAG126:
sll $0, $0, 0
multu $2, $2
lui $2, 12
lui $3, 1
TAG127:
beq $3, $3, TAG128
mthi $3
lhu $1, 0($3)
lh $2, 0($3)
TAG128:
div $2, $2
div $2, $2
mtlo $2
bgtz $2, TAG129
TAG129:
sll $0, $0, 0
mfhi $2
lui $3, 1
andi $1, $3, 15
TAG130:
bgez $1, TAG131
or $4, $1, $1
lbu $4, 0($4)
blez $4, TAG131
TAG131:
mfhi $1
lw $4, 0($4)
lw $1, 0($4)
lw $3, 0($4)
TAG132:
bne $3, $3, TAG133
sh $3, 0($3)
and $3, $3, $3
lui $4, 12
TAG133:
bne $4, $4, TAG134
mtlo $4
addu $2, $4, $4
divu $4, $4
TAG134:
bne $2, $2, TAG135
mfhi $1
multu $2, $1
sll $0, $0, 0
TAG135:
beq $1, $1, TAG136
add $2, $1, $1
mult $2, $2
mthi $1
TAG136:
beq $2, $2, TAG137
mthi $2
lhu $2, 0($2)
srav $3, $2, $2
TAG137:
lui $3, 8
srl $2, $3, 8
bne $2, $3, TAG138
mfhi $3
TAG138:
blez $3, TAG139
lui $3, 12
bne $3, $3, TAG139
mfhi $4
TAG139:
srlv $3, $4, $4
sltiu $2, $3, 10
beq $2, $3, TAG140
sb $3, 0($2)
TAG140:
multu $2, $2
mthi $2
lui $2, 14
bne $2, $2, TAG141
TAG141:
lui $2, 4
ori $4, $2, 3
multu $2, $4
sll $0, $0, 0
TAG142:
mthi $3
div $3, $3
bne $3, $3, TAG143
sltu $2, $3, $3
TAG143:
bltz $2, TAG144
mflo $2
sllv $3, $2, $2
lb $3, 0($2)
TAG144:
mflo $3
mult $3, $3
xor $1, $3, $3
sra $1, $3, 0
TAG145:
beq $1, $1, TAG146
srl $1, $1, 9
bgez $1, TAG146
lbu $4, 0($1)
TAG146:
addiu $4, $4, 0
blez $4, TAG147
or $4, $4, $4
blez $4, TAG147
TAG147:
and $4, $4, $4
beq $4, $4, TAG148
mthi $4
mflo $4
TAG148:
lui $3, 3
mflo $1
nor $1, $3, $4
lui $2, 15
TAG149:
sll $0, $0, 0
bltz $2, TAG150
slt $3, $4, $2
beq $2, $3, TAG150
TAG150:
sb $3, 0($3)
andi $4, $3, 7
subu $1, $3, $3
lui $2, 12
TAG151:
sll $0, $0, 0
sb $3, 0($3)
lbu $1, 0($3)
mflo $4
TAG152:
addu $3, $4, $4
lbu $1, 0($3)
div $4, $3
srav $4, $1, $1
TAG153:
nor $3, $4, $4
mfhi $2
beq $4, $3, TAG154
lui $1, 13
TAG154:
multu $1, $1
mthi $1
bne $1, $1, TAG155
or $2, $1, $1
TAG155:
sll $0, $0, 0
bgez $2, TAG156
mthi $2
bltz $2, TAG156
TAG156:
lui $1, 3
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG157:
mfhi $1
mflo $3
lui $4, 2
mtlo $1
TAG158:
bne $4, $4, TAG159
addu $2, $4, $4
sll $0, $0, 0
lui $3, 7
TAG159:
bne $3, $3, TAG160
xor $2, $3, $3
bne $2, $2, TAG160
lui $2, 10
TAG160:
slt $1, $2, $2
lhu $4, 0($1)
sll $0, $0, 0
lui $2, 11
TAG161:
sll $0, $0, 0
ori $3, $2, 14
xor $3, $3, $2
bgez $2, TAG162
TAG162:
lbu $3, 0($3)
mflo $1
mflo $4
lui $3, 6
TAG163:
sltiu $4, $3, 9
xori $1, $4, 13
mult $3, $1
mult $4, $1
TAG164:
blez $1, TAG165
lui $4, 8
sb $4, 0($1)
mfhi $4
TAG165:
subu $4, $4, $4
mtlo $4
mtlo $4
bgtz $4, TAG166
TAG166:
lb $3, 0($4)
beq $4, $3, TAG167
mthi $4
sh $3, 0($4)
TAG167:
bne $3, $3, TAG168
mflo $1
mult $3, $3
lui $3, 13
TAG168:
sll $0, $0, 0
sll $3, $3, 13
sll $0, $0, 0
bgez $3, TAG169
TAG169:
mflo $2
mult $2, $3
lui $4, 12
bne $4, $3, TAG170
TAG170:
mfhi $3
sll $0, $0, 0
slti $1, $3, 3
sll $1, $4, 4
TAG171:
sltiu $2, $1, 8
mult $2, $2
slti $2, $1, 7
beq $2, $1, TAG172
TAG172:
mthi $2
beq $2, $2, TAG173
lui $4, 6
sra $4, $2, 10
TAG173:
multu $4, $4
bne $4, $4, TAG174
mthi $4
beq $4, $4, TAG174
TAG174:
sll $0, $0, 0
bltz $4, TAG175
lui $2, 14
sll $0, $0, 0
TAG175:
mflo $4
mthi $4
blez $4, TAG176
srlv $2, $2, $4
TAG176:
srav $3, $2, $2
mthi $3
bgez $2, TAG177
or $1, $3, $2
TAG177:
mthi $1
divu $1, $1
lui $1, 4
xori $1, $1, 0
TAG178:
sll $0, $0, 0
sltu $1, $1, $1
sb $1, 0($1)
mult $1, $1
TAG179:
srlv $2, $1, $1
and $4, $1, $1
mfhi $1
bltz $4, TAG180
TAG180:
srl $2, $1, 11
lui $3, 15
lui $3, 15
beq $1, $2, TAG181
TAG181:
mflo $2
div $2, $3
andi $3, $2, 7
lb $4, 0($3)
TAG182:
sb $4, 0($4)
beq $4, $4, TAG183
mult $4, $4
bgez $4, TAG183
TAG183:
mult $4, $4
mtlo $4
lbu $1, 0($4)
andi $2, $4, 2
TAG184:
lui $2, 4
bgtz $2, TAG185
mult $2, $2
bne $2, $2, TAG185
TAG185:
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG186:
mflo $1
andi $3, $1, 15
bgtz $3, TAG187
slti $4, $3, 12
TAG187:
lui $2, 2
or $1, $2, $2
mflo $3
beq $1, $4, TAG188
TAG188:
andi $3, $3, 7
bgtz $3, TAG189
divu $3, $3
bne $3, $3, TAG189
TAG189:
andi $2, $3, 3
mflo $2
sb $2, 0($3)
lui $1, 14
TAG190:
bgez $1, TAG191
sll $0, $0, 0
mthi $1
div $1, $1
TAG191:
mflo $2
beq $1, $2, TAG192
mult $1, $1
mtlo $2
TAG192:
beq $2, $2, TAG193
lui $2, 1
lui $2, 4
mtlo $2
TAG193:
lui $1, 2
beq $2, $2, TAG194
andi $4, $2, 10
lbu $1, 0($2)
TAG194:
multu $1, $1
mflo $3
mtlo $3
blez $1, TAG195
TAG195:
mtlo $3
slt $3, $3, $3
lui $2, 0
lw $2, 0($3)
TAG196:
mtlo $2
sh $2, -256($2)
div $2, $2
and $2, $2, $2
TAG197:
sra $1, $2, 12
mflo $4
blez $4, TAG198
mtlo $4
TAG198:
lbu $2, 0($4)
lb $2, 0($4)
bne $2, $4, TAG199
mult $4, $2
TAG199:
bgez $2, TAG200
slt $3, $2, $2
mtlo $3
lui $1, 4
TAG200:
and $3, $1, $1
lb $2, 0($3)
sh $3, 0($2)
lb $1, 0($1)
TAG201:
bgez $1, TAG202
sw $1, 0($1)
sw $1, 0($1)
bne $1, $1, TAG202
TAG202:
mthi $1
mthi $1
slt $3, $1, $1
lhu $4, 0($3)
TAG203:
mult $4, $4
srav $1, $4, $4
ori $1, $4, 2
mflo $4
TAG204:
lui $4, 15
mtlo $4
blez $4, TAG205
lui $2, 9
TAG205:
multu $2, $2
lui $3, 4
slti $4, $3, 9
mult $3, $4
TAG206:
mfhi $3
mult $4, $4
bltz $4, TAG207
lui $3, 4
TAG207:
mthi $3
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG208
TAG208:
lui $4, 3
nor $2, $3, $4
multu $4, $3
xor $3, $4, $4
TAG209:
slti $2, $3, 14
mfhi $2
sll $3, $3, 13
lui $2, 10
TAG210:
sll $0, $0, 0
bgez $2, TAG211
lui $1, 8
lb $3, 0($2)
TAG211:
blez $3, TAG212
sh $3, 0($3)
bgtz $3, TAG212
mfhi $4
TAG212:
bgtz $4, TAG213
div $4, $4
lui $3, 3
sw $3, 0($3)
TAG213:
mfhi $1
mult $1, $1
sh $3, 0($1)
multu $3, $1
TAG214:
multu $1, $1
beq $1, $1, TAG215
sb $1, 0($1)
sll $3, $1, 15
TAG215:
mult $3, $3
sllv $4, $3, $3
bne $3, $4, TAG216
lbu $4, 0($3)
TAG216:
mfhi $2
mfhi $2
multu $2, $4
mflo $4
TAG217:
lui $4, 7
beq $4, $4, TAG218
mult $4, $4
beq $4, $4, TAG218
TAG218:
sll $0, $0, 0
div $4, $4
bne $4, $4, TAG219
sll $0, $0, 0
TAG219:
sll $0, $0, 0
mfhi $1
bgez $3, TAG220
lui $1, 14
TAG220:
lui $3, 3
xor $1, $1, $3
mfhi $3
sb $3, 0($3)
TAG221:
mthi $3
sb $3, 0($3)
ori $3, $3, 4
mthi $3
TAG222:
lui $1, 7
sltiu $4, $1, 6
sra $1, $4, 6
sh $3, 0($1)
TAG223:
mthi $1
lh $2, 0($1)
bltz $1, TAG224
mflo $3
TAG224:
lb $2, 0($3)
beq $2, $3, TAG225
sb $3, 0($3)
sb $2, 0($3)
TAG225:
bltz $2, TAG226
mfhi $1
mflo $2
addu $1, $2, $1
TAG226:
lui $3, 0
srl $3, $1, 12
sra $2, $1, 6
xor $4, $1, $3
TAG227:
sb $4, 0($4)
sb $4, 0($4)
addu $2, $4, $4
bgtz $4, TAG228
TAG228:
lhu $1, 0($2)
mflo $4
addiu $3, $2, 9
mtlo $3
TAG229:
bltz $3, TAG230
lbu $2, 0($3)
sb $3, 0($3)
sb $3, 0($3)
TAG230:
lui $2, 10
mflo $4
lui $4, 0
add $2, $4, $2
TAG231:
addiu $1, $2, 10
mflo $1
andi $3, $2, 8
lw $2, 0($3)
TAG232:
addu $4, $2, $2
blez $4, TAG233
addiu $3, $2, 7
mtlo $4
TAG233:
sh $3, -267($3)
lui $3, 7
sll $0, $0, 0
lui $1, 3
TAG234:
or $3, $1, $1
divu $1, $3
lui $3, 10
and $4, $1, $3
TAG235:
blez $4, TAG236
mfhi $2
mfhi $4
mtlo $4
TAG236:
lui $4, 6
mfhi $1
sll $0, $0, 0
lui $3, 3
TAG237:
sll $0, $0, 0
mult $4, $3
mthi $4
lui $3, 8
TAG238:
div $3, $3
sra $2, $3, 12
lui $1, 0
beq $3, $2, TAG239
TAG239:
lh $3, 0($1)
multu $3, $1
bne $1, $3, TAG240
sw $1, -267($3)
TAG240:
bgez $3, TAG241
mult $3, $3
bne $3, $3, TAG241
mflo $2
TAG241:
bgtz $2, TAG242
div $2, $2
lbu $2, 0($2)
bgtz $2, TAG242
TAG242:
ori $4, $2, 0
lh $1, 0($2)
mflo $2
srav $3, $1, $4
TAG243:
mult $3, $3
addu $1, $3, $3
beq $1, $3, TAG244
xori $1, $3, 5
TAG244:
addu $3, $1, $1
xor $3, $3, $1
lui $3, 7
slt $4, $3, $1
TAG245:
mult $4, $4
mfhi $1
srlv $2, $1, $1
mthi $2
TAG246:
multu $2, $2
multu $2, $2
lui $2, 14
mfhi $3
TAG247:
srlv $2, $3, $3
beq $3, $2, TAG248
mthi $3
lb $1, 0($3)
TAG248:
mfhi $1
mult $1, $1
mtlo $1
mfhi $4
TAG249:
bltz $4, TAG250
sllv $2, $4, $4
beq $4, $2, TAG250
mflo $3
TAG250:
addi $4, $3, 11
bne $3, $4, TAG251
multu $4, $3
mthi $3
TAG251:
lbu $2, 0($4)
bgtz $2, TAG252
lbu $3, 0($2)
sb $2, 0($3)
TAG252:
sb $3, 0($3)
sb $3, 0($3)
mfhi $2
lbu $1, 0($3)
TAG253:
mfhi $1
bne $1, $1, TAG254
lw $4, 0($1)
lhu $2, 0($1)
TAG254:
sw $2, 0($2)
subu $1, $2, $2
sh $2, 0($2)
beq $2, $1, TAG255
TAG255:
multu $1, $1
lh $3, 0($1)
sb $3, 0($3)
sub $4, $3, $1
TAG256:
mtlo $4
sb $4, 0($4)
srav $3, $4, $4
sra $4, $4, 15
TAG257:
mfhi $1
beq $1, $1, TAG258
add $3, $4, $1
div $3, $3
TAG258:
bgez $3, TAG259
sb $3, 0($3)
lh $4, 0($3)
mthi $3
TAG259:
or $3, $4, $4
mflo $2
srav $2, $3, $3
bltz $2, TAG260
TAG260:
sb $2, 0($2)
sub $4, $2, $2
and $4, $4, $4
addi $4, $2, 2
TAG261:
lb $4, 0($4)
bgez $4, TAG262
mflo $4
slt $4, $4, $4
TAG262:
blez $4, TAG263
mult $4, $4
sh $4, 0($4)
srav $2, $4, $4
TAG263:
add $4, $2, $2
sltiu $2, $2, 9
bltz $2, TAG264
srav $4, $2, $2
TAG264:
mult $4, $4
multu $4, $4
blez $4, TAG265
lui $1, 13
TAG265:
beq $1, $1, TAG266
sll $0, $0, 0
and $4, $1, $1
lui $1, 13
TAG266:
mthi $1
mtlo $1
sllv $3, $1, $1
sll $0, $0, 0
TAG267:
mflo $4
mfhi $4
lui $1, 4
mflo $3
TAG268:
mflo $2
bltz $3, TAG269
mthi $2
sra $1, $3, 9
TAG269:
lui $1, 6
beq $1, $1, TAG270
div $1, $1
beq $1, $1, TAG270
TAG270:
mfhi $1
mtlo $1
bgez $1, TAG271
andi $3, $1, 12
TAG271:
mfhi $4
lui $2, 0
multu $2, $2
multu $4, $3
TAG272:
sub $4, $2, $2
lui $3, 11
nor $3, $4, $4
lb $2, 1($3)
TAG273:
lui $2, 13
bne $2, $2, TAG274
sltu $2, $2, $2
mult $2, $2
TAG274:
lui $1, 15
lui $1, 4
bltz $2, TAG275
mfhi $1
TAG275:
sllv $2, $1, $1
mtlo $2
lb $3, 0($2)
xor $1, $3, $1
TAG276:
mult $1, $1
and $2, $1, $1
lui $2, 1
sll $0, $0, 0
TAG277:
sll $0, $0, 0
lw $4, 0($1)
beq $1, $4, TAG278
lui $2, 15
TAG278:
lui $4, 1
mthi $2
mthi $4
mfhi $1
TAG279:
sll $0, $0, 0
beq $1, $1, TAG280
and $3, $1, $1
divu $1, $1
TAG280:
sll $0, $0, 0
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
TAG281:
subu $1, $4, $4
bne $1, $4, TAG282
or $2, $4, $4
mfhi $2
TAG282:
bltz $2, TAG283
mtlo $2
lui $1, 15
sll $0, $0, 0
TAG283:
srlv $3, $1, $1
slt $4, $3, $3
sll $0, $0, 0
sh $3, 0($4)
TAG284:
mtlo $4
bgtz $4, TAG285
mflo $4
lui $1, 10
TAG285:
mfhi $4
beq $1, $1, TAG286
subu $2, $1, $4
mult $4, $4
TAG286:
sll $1, $2, 4
mtlo $2
mtlo $2
mtlo $1
TAG287:
sra $1, $1, 14
mthi $1
lui $4, 5
multu $1, $1
TAG288:
mflo $1
sll $0, $0, 0
bne $1, $4, TAG289
divu $4, $1
TAG289:
srav $2, $1, $1
mtlo $2
sra $4, $1, 8
blez $2, TAG290
TAG290:
sllv $4, $4, $4
bgez $4, TAG291
lui $3, 13
mtlo $4
TAG291:
mfhi $1
sll $0, $0, 0
divu $3, $1
div $3, $3
TAG292:
bne $1, $1, TAG293
slt $2, $1, $1
sll $0, $0, 0
srlv $2, $1, $1
TAG293:
bltz $2, TAG294
div $2, $2
div $2, $2
mfhi $2
TAG294:
multu $2, $2
xori $4, $2, 5
bltz $2, TAG295
sb $4, 0($4)
TAG295:
lbu $1, 0($4)
addiu $3, $1, 13
slti $1, $3, 15
lui $1, 0
TAG296:
lbu $2, 0($1)
lbu $1, 0($1)
sw $1, 0($1)
multu $2, $1
TAG297:
mfhi $2
mult $2, $1
sh $2, 0($1)
lw $1, 0($2)
TAG298:
beq $1, $1, TAG299
xori $1, $1, 12
and $4, $1, $1
mtlo $1
TAG299:
bgtz $4, TAG300
addu $4, $4, $4
bne $4, $4, TAG300
sll $1, $4, 7
TAG300:
beq $1, $1, TAG301
divu $1, $1
divu $1, $1
mfhi $2
TAG301:
srl $1, $2, 13
mtlo $1
srlv $3, $1, $2
bne $3, $1, TAG302
TAG302:
mflo $4
bgtz $4, TAG303
mfhi $4
lw $4, 0($4)
TAG303:
mfhi $1
mtlo $4
mthi $1
lui $4, 0
TAG304:
lui $4, 12
sll $0, $0, 0
bgtz $3, TAG305
xor $4, $3, $3
TAG305:
lb $3, 0($4)
lbu $2, 0($4)
mfhi $4
mflo $1
TAG306:
bne $1, $1, TAG307
mtlo $1
bne $1, $1, TAG307
mflo $1
TAG307:
sltiu $3, $1, 15
beq $3, $3, TAG308
lbu $1, 0($1)
sub $4, $1, $1
TAG308:
sb $4, 0($4)
bne $4, $4, TAG309
sltiu $4, $4, 14
bltz $4, TAG309
TAG309:
lui $3, 12
srav $4, $3, $4
bgtz $3, TAG310
sll $0, $0, 0
TAG310:
addiu $2, $4, 2
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
TAG311:
multu $4, $4
andi $2, $4, 13
sll $0, $0, 0
lui $1, 11
TAG312:
slti $3, $1, 6
multu $3, $1
sh $3, 0($3)
lh $3, 0($3)
TAG313:
mthi $3
mfhi $1
sh $1, 0($1)
multu $3, $1
TAG314:
sh $1, 0($1)
sltu $2, $1, $1
nor $3, $2, $2
lui $4, 11
TAG315:
sll $0, $0, 0
sll $0, $0, 0
srav $3, $4, $4
mflo $2
TAG316:
bgez $2, TAG317
mult $2, $2
slti $2, $2, 11
lhu $3, 0($2)
TAG317:
subu $4, $3, $3
sll $0, $0, 0
mfhi $4
beq $4, $4, TAG318
TAG318:
mtlo $4
lui $4, 4
mthi $4
andi $2, $4, 9
TAG319:
bne $2, $2, TAG320
mflo $1
blez $2, TAG320
mflo $3
TAG320:
mfhi $4
bne $4, $4, TAG321
mtlo $4
mfhi $3
TAG321:
mult $3, $3
mthi $3
beq $3, $3, TAG322
sll $0, $0, 0
TAG322:
mtlo $3
bne $3, $3, TAG323
mfhi $2
sll $0, $0, 0
TAG323:
mthi $2
sll $0, $0, 0
sh $2, 0($1)
mflo $3
TAG324:
sll $0, $0, 0
blez $3, TAG325
sltu $1, $3, $3
sllv $4, $3, $3
TAG325:
blez $4, TAG326
sll $0, $0, 0
mtlo $4
beq $4, $2, TAG326
TAG326:
mflo $1
lui $1, 12
bgtz $1, TAG327
lui $1, 6
TAG327:
sll $0, $0, 0
bne $1, $1, TAG328
mflo $3
sll $0, $0, 0
TAG328:
lui $2, 14
bgez $3, TAG329
sll $0, $0, 0
beq $3, $3, TAG329
TAG329:
sll $0, $0, 0
lui $1, 11
mfhi $3
sll $0, $0, 0
TAG330:
mult $2, $2
bgtz $2, TAG331
mult $2, $2
lhu $4, 0($2)
TAG331:
bgez $4, TAG332
srav $1, $4, $4
addiu $4, $1, 3
mfhi $2
TAG332:
blez $2, TAG333
mult $2, $2
sll $0, $0, 0
divu $2, $2
TAG333:
sll $0, $0, 0
bgez $2, TAG334
mtlo $2
mtlo $2
TAG334:
sll $0, $0, 0
multu $2, $2
blez $2, TAG335
sll $0, $0, 0
TAG335:
srl $4, $2, 12
bne $2, $2, TAG336
mthi $4
xor $4, $2, $2
TAG336:
lhu $3, 0($4)
sb $4, 0($3)
mtlo $3
bgez $3, TAG337
TAG337:
slti $4, $3, 1
mult $4, $3
mtlo $4
lui $4, 2
TAG338:
xor $4, $4, $4
lui $4, 13
lui $2, 1
sll $0, $0, 0
TAG339:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
divu $4, $2
TAG340:
div $4, $4
bne $4, $4, TAG341
sll $0, $0, 0
nor $1, $4, $1
TAG341:
sll $0, $0, 0
bltz $1, TAG342
lw $2, 0($3)
lui $3, 14
TAG342:
sb $3, 0($3)
mult $3, $3
lui $2, 15
mfhi $1
TAG343:
sw $1, 0($1)
mflo $3
bne $3, $3, TAG344
xor $4, $3, $1
TAG344:
mtlo $4
mtlo $4
sb $4, 0($4)
beq $4, $4, TAG345
TAG345:
mthi $4
mult $4, $4
beq $4, $4, TAG346
mtlo $4
TAG346:
lui $1, 9
divu $4, $1
bne $1, $4, TAG347
addiu $3, $4, 15
TAG347:
sllv $3, $3, $3
or $4, $3, $3
srl $4, $3, 5
lb $1, -15360($4)
TAG348:
mtlo $1
lui $1, 13
andi $4, $1, 6
mfhi $4
TAG349:
mthi $4
sw $4, 0($4)
addi $2, $4, 9
lb $2, 0($4)
TAG350:
lhu $3, 0($2)
mtlo $3
mflo $3
subu $4, $3, $2
TAG351:
addi $3, $4, 0
bltz $4, TAG352
sb $4, 0($4)
sb $4, 0($4)
TAG352:
addu $3, $3, $3
beq $3, $3, TAG353
lui $4, 7
multu $3, $3
TAG353:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG354:
mthi $2
multu $2, $2
mtlo $2
lui $1, 12
TAG355:
sll $0, $0, 0
multu $1, $1
lui $4, 3
sll $0, $0, 0
TAG356:
bne $4, $4, TAG357
srav $1, $4, $4
bne $4, $1, TAG357
addu $4, $1, $4
TAG357:
bne $4, $4, TAG358
sll $0, $0, 0
lui $2, 15
mtlo $2
TAG358:
slti $4, $2, 0
mthi $2
mflo $3
sll $0, $0, 0
TAG359:
mflo $1
mthi $1
mthi $3
sll $0, $0, 0
TAG360:
lui $4, 13
mfhi $4
sll $0, $0, 0
bgtz $4, TAG361
TAG361:
mthi $4
mflo $2
subu $3, $2, $2
mult $3, $4
TAG362:
mfhi $3
blez $3, TAG363
mult $3, $3
div $3, $3
TAG363:
mflo $2
lbu $1, 0($2)
mult $1, $3
sra $3, $3, 5
TAG364:
mfhi $1
lui $2, 14
mult $2, $2
lui $3, 7
TAG365:
mtlo $3
bne $3, $3, TAG366
mflo $3
mflo $4
TAG366:
or $3, $4, $4
subu $1, $4, $3
xor $2, $4, $4
bgez $1, TAG367
TAG367:
andi $2, $2, 8
mult $2, $2
blez $2, TAG368
lui $2, 7
TAG368:
lui $3, 6
bltz $2, TAG369
mthi $3
addiu $2, $2, 6
TAG369:
bne $2, $2, TAG370
sll $0, $0, 0
mflo $2
mtlo $2
TAG370:
bne $2, $2, TAG371
lw $2, 0($2)
sb $2, 0($2)
beq $2, $2, TAG371
TAG371:
addiu $2, $2, 14
bne $2, $2, TAG372
sw $2, 0($2)
divu $2, $2
TAG372:
or $1, $2, $2
bltz $2, TAG373
sh $1, 0($2)
bne $1, $2, TAG373
TAG373:
sb $1, 0($1)
sh $1, 0($1)
lui $1, 13
bgtz $1, TAG374
TAG374:
sra $4, $1, 6
slti $2, $4, 11
ori $1, $4, 12
mfhi $1
TAG375:
sw $1, 0($1)
lhu $3, 0($1)
multu $1, $1
subu $4, $1, $1
TAG376:
addiu $4, $4, 15
addiu $3, $4, 14
lui $1, 2
slti $4, $1, 0
TAG377:
lb $2, 0($4)
sw $4, 0($2)
bne $4, $2, TAG378
lbu $4, 0($2)
TAG378:
mflo $4
bne $4, $4, TAG379
mthi $4
sb $4, 0($4)
TAG379:
mflo $3
mtlo $4
multu $4, $4
sw $3, 0($3)
TAG380:
bltz $3, TAG381
multu $3, $3
mtlo $3
mult $3, $3
TAG381:
lui $4, 14
addiu $1, $4, 5
lui $1, 9
beq $1, $1, TAG382
TAG382:
sll $0, $0, 0
beq $4, $1, TAG383
mthi $1
beq $4, $4, TAG383
TAG383:
sll $0, $0, 0
mthi $4
lui $1, 6
addiu $3, $1, 15
TAG384:
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG385
TAG385:
lui $2, 11
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG386:
lui $2, 15
beq $2, $2, TAG387
sltiu $4, $2, 7
subu $4, $2, $4
TAG387:
mfhi $2
sll $0, $0, 0
bltz $2, TAG388
sll $0, $0, 0
TAG388:
mthi $2
sll $0, $0, 0
lui $1, 10
mflo $3
TAG389:
xor $1, $3, $3
sb $1, 0($1)
bgez $1, TAG390
mthi $1
TAG390:
lui $2, 14
bne $2, $2, TAG391
mthi $1
lui $1, 5
TAG391:
blez $1, TAG392
mflo $1
divu $1, $1
mthi $1
TAG392:
mtlo $1
sll $0, $0, 0
lh $2, 0($4)
beq $2, $1, TAG393
TAG393:
sb $2, 0($2)
mthi $2
lh $4, 0($2)
beq $2, $2, TAG394
TAG394:
mtlo $4
bne $4, $4, TAG395
srlv $4, $4, $4
xori $4, $4, 10
TAG395:
subu $1, $4, $4
sb $1, 0($1)
beq $1, $4, TAG396
lbu $3, 0($4)
TAG396:
sw $3, 0($3)
bgtz $3, TAG397
lh $4, 0($3)
bgtz $4, TAG397
TAG397:
multu $4, $4
mflo $2
lw $1, 0($4)
addu $4, $4, $1
TAG398:
lui $1, 7
srlv $3, $4, $1
sw $3, 0($4)
multu $3, $4
TAG399:
and $1, $3, $3
ori $2, $1, 15
bltz $3, TAG400
mfhi $2
TAG400:
beq $2, $2, TAG401
lb $4, 0($2)
beq $2, $4, TAG401
multu $2, $2
TAG401:
lbu $1, 0($4)
bne $1, $1, TAG402
lw $2, 0($1)
lui $1, 11
TAG402:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
lui $4, 6
TAG403:
lui $4, 5
mthi $4
srlv $3, $4, $4
sllv $4, $3, $3
TAG404:
divu $4, $4
lui $1, 14
srav $4, $4, $4
multu $4, $1
TAG405:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $2
bgez $2, TAG406
TAG406:
lui $1, 10
multu $1, $2
mfhi $4
mflo $1
TAG407:
mthi $1
sw $1, 0($1)
or $2, $1, $1
srav $4, $2, $1
TAG408:
sb $4, 0($4)
lui $1, 11
mthi $1
sll $1, $4, 14
TAG409:
xor $1, $1, $1
mtlo $1
mthi $1
sltiu $4, $1, 15
TAG410:
lui $2, 8
sltu $3, $2, $4
addu $3, $3, $2
andi $4, $3, 4
TAG411:
blez $4, TAG412
sh $4, 0($4)
sltiu $4, $4, 8
ori $1, $4, 12
TAG412:
mthi $1
lui $4, 14
mfhi $3
lui $4, 5
TAG413:
bne $4, $4, TAG414
srav $3, $4, $4
sll $0, $0, 0
mthi $4
TAG414:
bne $4, $4, TAG415
mfhi $3
mtlo $4
addiu $3, $4, 8
TAG415:
mult $3, $3
sll $0, $0, 0
addu $3, $3, $3
bgtz $3, TAG416
TAG416:
sll $0, $0, 0
andi $3, $3, 11
slt $1, $3, $3
blez $1, TAG417
TAG417:
mthi $1
sb $1, 0($1)
multu $1, $1
mthi $1
TAG418:
addu $3, $1, $1
mult $3, $1
mfhi $3
lh $1, 0($3)
TAG419:
lui $2, 0
lui $2, 15
sltiu $2, $1, 10
sb $2, 0($2)
TAG420:
bgez $2, TAG421
mult $2, $2
lui $2, 9
mtlo $2
TAG421:
srl $4, $2, 5
sllv $4, $4, $4
bltz $4, TAG422
lw $2, 0($4)
TAG422:
sll $2, $2, 1
bgtz $2, TAG423
mult $2, $2
andi $2, $2, 13
TAG423:
mult $2, $2
lui $3, 13
mtlo $2
mthi $2
TAG424:
div $3, $3
blez $3, TAG425
multu $3, $3
mflo $2
TAG425:
andi $1, $2, 0
sw $2, 0($1)
mfhi $1
beq $1, $1, TAG426
TAG426:
div $1, $1
mthi $1
beq $1, $1, TAG427
sb $1, -169($1)
TAG427:
slti $3, $1, 14
sh $1, -169($1)
mtlo $3
mflo $1
TAG428:
mthi $1
lw $4, 0($1)
lui $1, 15
mflo $4
TAG429:
sb $4, 0($4)
slt $1, $4, $4
srl $4, $1, 0
mfhi $4
TAG430:
mtlo $4
blez $4, TAG431
slti $2, $4, 11
bgez $2, TAG431
TAG431:
srlv $2, $2, $2
bltz $2, TAG432
sb $2, 0($2)
lhu $2, 0($2)
TAG432:
mfhi $1
multu $1, $2
sllv $3, $1, $2
sb $1, 0($1)
TAG433:
sb $3, 0($3)
bgtz $3, TAG434
lw $2, 0($3)
sll $3, $3, 14
TAG434:
lh $2, 0($3)
sra $1, $2, 8
bgtz $3, TAG435
mthi $3
TAG435:
bgtz $1, TAG436
mult $1, $1
add $1, $1, $1
bgez $1, TAG436
TAG436:
addi $2, $1, 13
mthi $2
beq $2, $2, TAG437
mfhi $4
TAG437:
mflo $2
mtlo $4
bne $4, $2, TAG438
sra $4, $4, 9
TAG438:
addi $2, $4, 8
sh $2, 0($2)
sw $4, 0($4)
srl $3, $2, 13
TAG439:
bltz $3, TAG440
sw $3, 0($3)
mtlo $3
multu $3, $3
TAG440:
sltiu $4, $3, 13
mthi $4
lui $1, 15
lbu $1, 0($3)
TAG441:
bgez $1, TAG442
sh $1, 0($1)
bne $1, $1, TAG442
lui $2, 5
TAG442:
sw $2, 0($2)
mthi $2
bne $2, $2, TAG443
multu $2, $2
TAG443:
andi $2, $2, 8
mult $2, $2
and $2, $2, $2
beq $2, $2, TAG444
TAG444:
div $2, $2
lhu $2, 0($2)
mfhi $1
mflo $2
TAG445:
sb $2, 0($2)
sltiu $3, $2, 8
lbu $4, 0($3)
mfhi $3
TAG446:
lui $2, 7
sltu $2, $2, $3
sltiu $1, $3, 4
ori $4, $2, 7
TAG447:
mfhi $2
addiu $2, $4, 1
sh $4, 0($2)
mthi $2
TAG448:
mthi $2
bne $2, $2, TAG449
slti $1, $2, 8
andi $3, $1, 12
TAG449:
nor $1, $3, $3
lh $3, 1($1)
lw $4, -256($3)
lh $2, 1($1)
TAG450:
lui $1, 13
multu $2, $2
sw $1, -256($2)
srav $3, $1, $1
TAG451:
blez $3, TAG452
multu $3, $3
multu $3, $3
blez $3, TAG452
TAG452:
sll $0, $0, 0
sltu $2, $3, $3
mflo $1
subu $3, $3, $3
TAG453:
mfhi $4
bgez $3, TAG454
mult $3, $3
sh $4, 0($3)
TAG454:
lui $2, 9
mflo $3
lh $1, 0($3)
mfhi $2
TAG455:
lui $4, 10
beq $4, $4, TAG456
sh $4, 0($2)
lw $4, 0($2)
TAG456:
blez $4, TAG457
mthi $4
bne $4, $4, TAG457
lui $1, 7
TAG457:
mflo $1
mfhi $3
bgez $3, TAG458
sll $0, $0, 0
TAG458:
bne $1, $1, TAG459
slti $1, $1, 8
srl $4, $1, 13
sb $4, 0($4)
TAG459:
mflo $3
blez $3, TAG460
sw $3, 0($4)
bne $3, $3, TAG460
TAG460:
srl $1, $3, 15
mthi $3
bne $1, $3, TAG461
mtlo $1
TAG461:
multu $1, $1
lhu $3, 0($1)
mflo $3
mtlo $3
TAG462:
sllv $4, $3, $3
mult $4, $4
bne $4, $4, TAG463
srl $2, $3, 11
TAG463:
lui $1, 15
bgtz $1, TAG464
sw $1, 0($2)
sb $2, 0($2)
TAG464:
addiu $3, $1, 4
beq $3, $1, TAG465
lui $3, 3
mult $3, $3
TAG465:
lui $1, 13
mtlo $1
beq $3, $1, TAG466
lui $3, 1
TAG466:
sll $0, $0, 0
mult $1, $3
lui $4, 6
mthi $4
TAG467:
sll $0, $0, 0
bne $4, $4, TAG468
sll $0, $0, 0
addu $3, $4, $2
TAG468:
mflo $3
bne $3, $3, TAG469
nor $4, $3, $3
mtlo $3
TAG469:
bgez $4, TAG470
mthi $4
bgez $4, TAG470
mthi $4
TAG470:
sll $0, $0, 0
bgez $4, TAG471
lui $1, 15
mtlo $4
TAG471:
mflo $2
mthi $2
lbu $1, 1($2)
mflo $2
TAG472:
lui $2, 4
mfhi $2
lui $4, 2
mflo $3
TAG473:
bltz $3, TAG474
xori $1, $3, 3
lui $2, 10
mflo $1
TAG474:
mthi $1
subu $1, $1, $1
sw $1, 0($1)
lb $2, 0($1)
TAG475:
multu $2, $2
lhu $3, 0($2)
lui $2, 2
mflo $1
TAG476:
blez $1, TAG477
ori $1, $1, 7
multu $1, $1
mflo $4
TAG477:
mthi $4
mflo $2
sltiu $1, $4, 10
ori $3, $2, 5
TAG478:
mthi $3
mflo $3
bgtz $3, TAG479
mult $3, $3
TAG479:
lui $4, 3
subu $2, $4, $3
blez $2, TAG480
lb $3, 0($3)
TAG480:
mult $3, $3
lhu $1, 0($3)
lbu $4, 0($1)
blez $1, TAG481
TAG481:
lui $3, 7
sltiu $4, $3, 7
mthi $4
mthi $4
TAG482:
sh $4, 0($4)
mfhi $4
srl $1, $4, 3
sh $4, 0($4)
TAG483:
mult $1, $1
mflo $1
lhu $2, 0($1)
mflo $1
TAG484:
srl $1, $1, 7
sll $1, $1, 10
multu $1, $1
lhu $3, 0($1)
TAG485:
mtlo $3
lh $3, 0($3)
addiu $2, $3, 10
blez $3, TAG486
TAG486:
sh $2, 0($2)
mtlo $2
sh $2, 0($2)
div $2, $2
TAG487:
sh $2, 0($2)
sh $2, 0($2)
blez $2, TAG488
lh $4, 0($2)
TAG488:
addu $3, $4, $4
mtlo $3
lui $1, 1
mfhi $2
TAG489:
mtlo $2
lui $1, 6
srav $4, $1, $1
sw $4, 0($2)
TAG490:
and $4, $4, $4
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
TAG491:
multu $4, $4
bltz $4, TAG492
sll $0, $0, 0
subu $1, $2, $4
TAG492:
bgez $1, TAG493
lui $1, 11
sll $0, $0, 0
bne $1, $1, TAG493
TAG493:
sll $0, $0, 0
sll $0, $0, 0
andi $3, $1, 6
lui $4, 15
TAG494:
mtlo $4
mflo $3
sllv $1, $3, $3
sll $0, $0, 0
TAG495:
multu $4, $4
beq $4, $4, TAG496
xor $2, $4, $4
bgtz $4, TAG496
TAG496:
sh $2, 0($2)
xor $2, $2, $2
beq $2, $2, TAG497
lhu $1, 0($2)
TAG497:
mflo $3
lb $1, 0($3)
bgtz $3, TAG498
add $1, $1, $3
TAG498:
mult $1, $1
lui $4, 14
beq $1, $1, TAG499
sll $0, $0, 0
TAG499:
blez $3, TAG500
lb $3, 0($3)
lbu $3, 0($3)
mtlo $3
TAG500:
lhu $2, 0($3)
lui $2, 6
sw $2, 0($3)
divu $2, $2
TAG501:
mtlo $2
sllv $1, $2, $2
mtlo $1
addiu $4, $2, 1
TAG502:
sll $0, $0, 0
bgez $4, TAG503
sltiu $1, $4, 8
beq $4, $1, TAG503
TAG503:
mflo $4
bltz $4, TAG504
lui $3, 7
addiu $2, $3, 2
TAG504:
mflo $3
and $1, $3, $3
mflo $4
mtlo $3
TAG505:
sll $0, $0, 0
multu $4, $4
bne $4, $4, TAG506
sll $0, $0, 0
TAG506:
bgtz $4, TAG507
addiu $2, $4, 2
multu $4, $4
bgez $4, TAG507
TAG507:
sll $0, $0, 0
ori $3, $2, 1
lui $4, 4
mthi $3
TAG508:
lui $1, 7
srav $1, $1, $1
bne $4, $1, TAG509
sll $0, $0, 0
TAG509:
bgtz $1, TAG510
mtlo $1
bgtz $1, TAG510
lui $3, 4
TAG510:
lui $1, 9
srlv $1, $1, $3
sltiu $1, $1, 0
bgez $1, TAG511
TAG511:
lhu $1, 0($1)
bltz $1, TAG512
mtlo $1
sltiu $1, $1, 1
TAG512:
sb $1, 0($1)
bne $1, $1, TAG513
divu $1, $1
mflo $1
TAG513:
sb $1, 0($1)
srav $1, $1, $1
mthi $1
bgez $1, TAG514
TAG514:
lui $3, 15
mthi $1
lui $3, 13
sll $0, $0, 0
TAG515:
sltiu $3, $3, 7
mthi $3
ori $1, $3, 14
lui $2, 14
TAG516:
srl $1, $2, 6
lui $4, 14
mthi $2
or $2, $2, $1
TAG517:
sll $0, $0, 0
lui $1, 11
divu $2, $1
beq $1, $1, TAG518
TAG518:
sll $0, $0, 0
sllv $3, $1, $3
bgtz $3, TAG519
mtlo $3
TAG519:
mtlo $3
bne $3, $3, TAG520
addu $2, $3, $3
beq $2, $3, TAG520
TAG520:
andi $1, $2, 8
sll $0, $0, 0
lui $3, 12
sll $0, $0, 0
TAG521:
addi $1, $1, 4
bltz $1, TAG522
lui $3, 3
and $1, $1, $1
TAG522:
mtlo $1
mfhi $2
sll $0, $0, 0
mtlo $2
TAG523:
mflo $3
addu $3, $2, $2
sll $0, $0, 0
srav $1, $3, $3
TAG524:
lui $4, 12
mflo $3
mthi $3
bne $1, $1, TAG525
TAG525:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG526:
blez $4, TAG527
mflo $4
sll $0, $0, 0
bgez $3, TAG527
TAG527:
lui $4, 1
sll $3, $3, 2
andi $2, $4, 14
andi $4, $3, 12
TAG528:
mflo $1
mfhi $1
bne $4, $1, TAG529
mtlo $1
TAG529:
lui $3, 7
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG530
TAG530:
mtlo $1
bltz $1, TAG531
sll $0, $0, 0
bgez $1, TAG531
TAG531:
multu $1, $1
bgtz $1, TAG532
mtlo $1
or $4, $1, $1
TAG532:
lui $1, 12
div $1, $1
bltz $1, TAG533
addiu $3, $1, 2
TAG533:
blez $3, TAG534
lui $4, 6
bgez $4, TAG534
mtlo $4
TAG534:
divu $4, $4
sll $0, $0, 0
beq $2, $4, TAG535
sll $0, $0, 0
TAG535:
lui $2, 7
sra $4, $2, 6
addiu $1, $2, 15
sllv $1, $1, $4
TAG536:
lui $2, 7
nor $3, $1, $1
andi $4, $3, 14
sb $2, 0($4)
TAG537:
mfhi $1
bgez $4, TAG538
sb $4, 0($1)
bltz $1, TAG538
TAG538:
sllv $4, $1, $1
addi $4, $1, 4
mthi $4
mthi $4
TAG539:
srl $2, $4, 15
sb $4, 0($4)
mflo $3
srl $2, $4, 14
TAG540:
mfhi $3
lh $2, 0($3)
bne $2, $2, TAG541
mthi $2
TAG541:
beq $2, $2, TAG542
lhu $4, -1284($2)
mthi $2
mtlo $4
TAG542:
bne $4, $4, TAG543
multu $4, $4
beq $4, $4, TAG543
mult $4, $4
TAG543:
multu $4, $4
mthi $4
mflo $2
sb $2, -256($4)
TAG544:
xor $1, $2, $2
mthi $2
bgtz $2, TAG545
lhu $3, 0($1)
TAG545:
lui $3, 6
sll $0, $0, 0
mthi $3
mfhi $4
TAG546:
bltz $4, TAG547
mtlo $4
divu $4, $4
lui $4, 6
TAG547:
sll $0, $0, 0
sltiu $2, $4, 0
mtlo $4
subu $2, $4, $2
TAG548:
div $2, $2
sll $0, $0, 0
sh $1, 0($1)
bltz $1, TAG549
TAG549:
nor $3, $1, $1
bgez $3, TAG550
mthi $1
mtlo $1
TAG550:
addiu $3, $3, 12
srav $2, $3, $3
bne $2, $3, TAG551
mfhi $4
TAG551:
sh $4, 0($4)
lbu $4, 0($4)
mult $4, $4
lw $4, 0($4)
TAG552:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
mtlo $2
TAG553:
lw $2, 0($2)
bgez $2, TAG554
sll $0, $0, 0
sw $3, 0($3)
TAG554:
mthi $3
beq $3, $3, TAG555
lui $2, 15
beq $2, $3, TAG555
TAG555:
sll $0, $0, 0
blez $3, TAG556
lb $2, 0($3)
lh $3, 0($2)
TAG556:
lui $4, 13
sh $4, 0($3)
sll $0, $0, 0
sllv $4, $3, $4
TAG557:
lw $3, 0($4)
bltz $4, TAG558
sh $3, 0($4)
nor $1, $4, $3
TAG558:
beq $1, $1, TAG559
subu $4, $1, $1
addiu $4, $4, 12
multu $1, $4
TAG559:
lui $4, 14
beq $4, $4, TAG560
lui $3, 5
mthi $4
TAG560:
lui $3, 13
mtlo $3
mflo $4
sll $0, $0, 0
TAG561:
bgtz $4, TAG562
mfhi $3
mthi $3
lui $1, 10
TAG562:
sll $0, $0, 0
multu $2, $2
bne $2, $2, TAG563
mflo $2
TAG563:
bgtz $2, TAG564
lh $4, 0($2)
lui $2, 4
lui $3, 8
TAG564:
bne $3, $3, TAG565
mthi $3
mthi $3
or $2, $3, $3
TAG565:
mthi $2
div $2, $2
bltz $2, TAG566
mtlo $2
TAG566:
sll $0, $0, 0
subu $2, $3, $3
lui $1, 15
xori $3, $1, 6
TAG567:
mflo $2
mfhi $2
bne $2, $2, TAG568
xori $3, $3, 15
TAG568:
addu $3, $3, $3
bne $3, $3, TAG569
sll $0, $0, 0
mtlo $3
TAG569:
blez $3, TAG570
lui $1, 1
bne $3, $3, TAG570
lui $1, 3
TAG570:
lui $4, 14
mflo $2
sll $0, $0, 0
sll $0, $0, 0
TAG571:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
sltu $2, $1, $1
TAG572:
bne $2, $2, TAG573
mtlo $2
lui $4, 15
lh $4, 0($2)
TAG573:
bgtz $4, TAG574
addi $2, $4, 5
mthi $2
beq $4, $4, TAG574
TAG574:
lb $3, 0($2)
bgtz $3, TAG575
srl $1, $3, 14
mtlo $3
TAG575:
bne $1, $1, TAG576
sb $1, 0($1)
lb $4, 0($1)
mult $1, $1
TAG576:
lui $2, 15
bgez $2, TAG577
srlv $2, $2, $4
mfhi $4
TAG577:
lbu $3, 0($4)
mult $3, $4
bgtz $3, TAG578
mtlo $3
TAG578:
lbu $1, 0($3)
beq $1, $1, TAG579
lhu $1, 0($3)
sllv $1, $1, $1
TAG579:
beq $1, $1, TAG580
or $2, $1, $1
slti $2, $1, 7
ori $1, $1, 9
TAG580:
or $2, $1, $1
sh $2, 0($2)
mfhi $3
lui $4, 5
TAG581:
bgtz $4, TAG582
xori $2, $4, 0
xori $1, $4, 4
lui $1, 4
TAG582:
lui $3, 12
bne $3, $3, TAG583
sltiu $1, $1, 2
xor $3, $1, $1
TAG583:
mflo $3
mthi $3
multu $3, $3
blez $3, TAG584
TAG584:
mfhi $1
lui $3, 1
mult $3, $1
lhu $2, 0($1)
TAG585:
mthi $2
or $1, $2, $2
lb $3, 0($2)
xori $2, $3, 9
TAG586:
sb $2, 0($2)
mthi $2
mtlo $2
lui $2, 8
TAG587:
beq $2, $2, TAG588
lui $1, 7
lui $1, 8
lw $3, 0($1)
TAG588:
mflo $4
mtlo $3
sh $3, 0($3)
sra $3, $4, 15
TAG589:
lb $2, 0($3)
mflo $3
lui $3, 13
mflo $2
TAG590:
blez $2, TAG591
mtlo $2
sb $2, 0($2)
bgez $2, TAG591
TAG591:
lui $4, 9
andi $1, $4, 14
sllv $4, $2, $1
ori $1, $1, 9
TAG592:
sltu $3, $1, $1
multu $3, $3
sltu $2, $3, $3
lbu $1, 0($1)
TAG593:
bgez $1, TAG594
mfhi $2
bltz $2, TAG594
lw $2, 0($2)
TAG594:
mthi $2
bgez $2, TAG595
lui $4, 3
andi $3, $4, 4
TAG595:
addu $3, $3, $3
mtlo $3
bne $3, $3, TAG596
multu $3, $3
TAG596:
beq $3, $3, TAG597
mult $3, $3
bne $3, $3, TAG597
mfhi $4
TAG597:
mflo $2
blez $2, TAG598
mthi $4
lbu $2, 0($2)
TAG598:
beq $2, $2, TAG599
and $1, $2, $2
mtlo $2
mult $1, $2
TAG599:
beq $1, $1, TAG600
sll $2, $1, 9
lhu $3, 0($1)
bgtz $3, TAG600
TAG600:
mtlo $3
sw $3, 0($3)
bne $3, $3, TAG601
mflo $4
TAG601:
bne $4, $4, TAG602
addi $3, $4, 9
lb $1, 0($4)
addiu $4, $3, 9
TAG602:
mflo $3
lui $4, 11
sll $0, $0, 0
bltz $3, TAG603
TAG603:
mfhi $4
mthi $4
lui $1, 14
divu $4, $4
TAG604:
beq $1, $1, TAG605
multu $1, $1
sb $1, 0($1)
srl $4, $1, 6
TAG605:
sra $2, $4, 12
bgtz $2, TAG606
srav $3, $2, $4
beq $4, $2, TAG606
TAG606:
mflo $1
bltz $1, TAG607
addu $1, $3, $1
sb $1, 0($3)
TAG607:
addiu $2, $1, 13
lhu $2, 0($1)
lui $4, 6
lui $4, 5
TAG608:
sll $0, $0, 0
lui $2, 3
multu $1, $2
multu $2, $4
TAG609:
div $2, $2
multu $2, $2
beq $2, $2, TAG610
lui $2, 13
TAG610:
srlv $2, $2, $2
lui $1, 6
bltz $2, TAG611
mflo $1
TAG611:
addu $1, $1, $1
slt $1, $1, $1
sll $1, $1, 2
mthi $1
TAG612:
lw $3, 0($1)
mfhi $3
bgez $1, TAG613
mflo $1
TAG613:
mfhi $1
lui $4, 5
lui $1, 2
mfhi $1
TAG614:
sh $1, 0($1)
blez $1, TAG615
mfhi $1
bltz $1, TAG615
TAG615:
mtlo $1
multu $1, $1
sh $1, 0($1)
lui $3, 14
TAG616:
mfhi $4
mfhi $1
mult $3, $4
mfhi $3
TAG617:
lui $1, 2
bne $3, $3, TAG618
lui $2, 5
mthi $2
TAG618:
lui $4, 7
sll $0, $0, 0
sltiu $3, $4, 11
sw $4, 0($3)
TAG619:
mult $3, $3
mult $3, $3
srl $3, $3, 10
and $2, $3, $3
TAG620:
and $2, $2, $2
lui $2, 12
mflo $4
sltiu $4, $2, 4
TAG621:
sltiu $4, $4, 13
sra $3, $4, 10
mtlo $4
multu $3, $3
TAG622:
mflo $3
blez $3, TAG623
sb $3, 0($3)
mthi $3
TAG623:
mflo $1
bgez $3, TAG624
mfhi $4
multu $4, $3
TAG624:
mthi $4
bltz $4, TAG625
mfhi $2
bgtz $4, TAG625
TAG625:
mflo $2
mfhi $2
bne $2, $2, TAG626
subu $2, $2, $2
TAG626:
sh $2, 0($2)
lhu $1, 0($2)
beq $1, $1, TAG627
mfhi $1
TAG627:
ori $4, $1, 4
mthi $4
bne $1, $4, TAG628
lui $4, 2
TAG628:
lui $1, 10
srl $3, $4, 13
lui $3, 11
bgez $1, TAG629
TAG629:
mflo $2
mult $2, $2
sll $0, $0, 0
sltiu $3, $3, 4
TAG630:
mflo $1
or $3, $3, $3
srl $3, $3, 4
mflo $2
TAG631:
lhu $2, 0($2)
sltu $2, $2, $2
mult $2, $2
mfhi $3
TAG632:
sllv $4, $3, $3
bne $4, $4, TAG633
mtlo $3
mtlo $3
TAG633:
bgtz $4, TAG634
add $1, $4, $4
mtlo $4
beq $4, $1, TAG634
TAG634:
lui $1, 0
lui $3, 7
lb $1, 0($1)
bltz $1, TAG635
TAG635:
lhu $4, 0($1)
slti $2, $1, 12
mult $2, $2
slt $2, $4, $2
TAG636:
xor $1, $2, $2
lui $4, 4
mfhi $3
lb $1, 0($2)
TAG637:
mthi $1
bgtz $1, TAG638
multu $1, $1
sllv $3, $1, $1
TAG638:
bgtz $3, TAG639
ori $4, $3, 0
mflo $4
srl $3, $3, 8
TAG639:
mult $3, $3
srl $3, $3, 12
multu $3, $3
bgtz $3, TAG640
TAG640:
mult $3, $3
sll $3, $3, 9
bltz $3, TAG641
mflo $1
TAG641:
lui $3, 8
lui $2, 8
mtlo $3
sll $0, $0, 0
TAG642:
multu $4, $4
sw $4, 0($4)
beq $4, $4, TAG643
mthi $4
TAG643:
lui $1, 14
addu $4, $1, $4
sll $0, $0, 0
beq $4, $1, TAG644
TAG644:
slti $1, $4, 13
srav $1, $4, $1
sll $0, $0, 0
sll $0, $0, 0
TAG645:
bltz $1, TAG646
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG646:
mthi $2
sll $0, $0, 0
lui $4, 0
mult $4, $2
TAG647:
mult $4, $4
lui $2, 4
sll $1, $2, 1
bne $4, $1, TAG648
TAG648:
subu $1, $1, $1
srl $2, $1, 8
bne $1, $1, TAG649
mflo $2
TAG649:
nor $3, $2, $2
multu $3, $2
lh $1, 0($2)
mflo $3
TAG650:
lb $2, 0($3)
beq $3, $2, TAG651
mflo $3
lb $2, 0($2)
TAG651:
mtlo $2
mtlo $2
sh $2, 0($2)
mult $2, $2
TAG652:
mfhi $2
mthi $2
lbu $1, 0($2)
sltiu $4, $2, 15
TAG653:
mflo $2
sh $2, 0($2)
sltiu $3, $4, 9
addiu $4, $4, 0
TAG654:
bgtz $4, TAG655
xor $4, $4, $4
lh $4, 0($4)
sb $4, 0($4)
TAG655:
bne $4, $4, TAG656
subu $1, $4, $4
slti $2, $1, 12
mfhi $2
TAG656:
mflo $1
mtlo $1
lui $1, 9
divu $2, $1
TAG657:
sll $0, $0, 0
nor $2, $1, $1
lui $3, 4
beq $1, $1, TAG658
TAG658:
mflo $1
mthi $3
slti $2, $3, 2
beq $1, $3, TAG659
TAG659:
mflo $2
sub $2, $2, $2
bne $2, $2, TAG660
mult $2, $2
TAG660:
lh $1, 0($2)
lw $4, 0($1)
subu $1, $2, $4
mult $1, $2
TAG661:
mthi $1
mthi $1
bne $1, $1, TAG662
mfhi $2
TAG662:
mflo $3
slti $3, $3, 10
lw $4, 0($2)
div $3, $3
TAG663:
lui $3, 1
multu $4, $4
lui $1, 10
sll $4, $3, 2
TAG664:
mtlo $4
bgtz $4, TAG665
div $4, $4
addiu $2, $4, 2
TAG665:
lw $4, 0($2)
lui $2, 4
sll $0, $0, 0
andi $1, $2, 3
TAG666:
lui $1, 7
lui $4, 4
bne $1, $1, TAG667
mtlo $1
TAG667:
bgez $4, TAG668
divu $4, $4
or $1, $4, $4
bne $4, $4, TAG668
TAG668:
lui $4, 9
addiu $1, $1, 9
div $1, $1
beq $1, $1, TAG669
TAG669:
sltiu $3, $1, 4
sll $2, $1, 6
sub $4, $1, $3
mtlo $1
TAG670:
divu $4, $4
div $4, $4
mult $4, $4
mfhi $4
TAG671:
sltiu $2, $4, 11
beq $2, $4, TAG672
multu $2, $2
multu $4, $2
TAG672:
sb $2, 0($2)
lui $4, 4
addu $4, $4, $2
bltz $2, TAG673
TAG673:
sll $0, $0, 0
lui $3, 10
sll $1, $3, 2
xor $1, $4, $4
TAG674:
subu $3, $1, $1
multu $1, $3
ori $1, $1, 13
sb $1, 0($1)
TAG675:
bgez $1, TAG676
mtlo $1
lui $3, 10
bne $3, $1, TAG676
TAG676:
mult $3, $3
lui $2, 2
lui $4, 5
mthi $3
TAG677:
lui $3, 8
sll $0, $0, 0
sll $4, $4, 8
sll $0, $0, 0
TAG678:
multu $2, $2
sltiu $3, $2, 12
lui $2, 10
nor $2, $2, $3
TAG679:
bne $2, $2, TAG680
sll $0, $0, 0
and $4, $2, $2
beq $4, $2, TAG680
TAG680:
addiu $3, $4, 9
lui $1, 7
mfhi $1
mflo $4
TAG681:
mult $4, $4
bgez $4, TAG682
multu $4, $4
mtlo $4
TAG682:
add $1, $4, $4
sb $1, 0($4)
lb $1, 0($1)
sh $4, 0($1)
TAG683:
mfhi $1
mthi $1
multu $1, $1
sb $1, 0($1)
TAG684:
lui $3, 15
addi $4, $1, 8
addu $1, $3, $1
lui $1, 4
TAG685:
mthi $1
mflo $3
lb $2, 0($3)
bltz $2, TAG686
TAG686:
sll $4, $2, 4
bgez $4, TAG687
sra $3, $2, 6
mult $2, $4
TAG687:
lw $3, 0($3)
lw $2, 0($3)
mult $2, $3
sb $3, 0($3)
TAG688:
add $4, $2, $2
lui $2, 10
sll $0, $0, 0
sh $2, 0($4)
TAG689:
sb $4, 0($4)
mthi $4
mthi $4
lh $3, 0($4)
TAG690:
sltu $4, $3, $3
ori $3, $3, 15
lui $3, 11
sll $0, $0, 0
TAG691:
sll $3, $3, 7
blez $3, TAG692
lui $3, 5
bgez $3, TAG692
TAG692:
lui $1, 10
lui $3, 8
multu $1, $1
lui $1, 12
TAG693:
sll $0, $0, 0
or $3, $1, $1
lui $2, 4
lui $2, 10
TAG694:
srlv $4, $2, $2
divu $2, $2
mult $4, $4
bgtz $2, TAG695
TAG695:
slti $2, $4, 6
mthi $4
blez $4, TAG696
mfhi $3
TAG696:
mfhi $1
sll $3, $1, 7
mfhi $3
mtlo $3
TAG697:
mthi $3
beq $3, $3, TAG698
lui $3, 0
lui $3, 14
TAG698:
beq $3, $3, TAG699
lui $3, 13
mult $3, $3
blez $3, TAG699
TAG699:
mthi $3
sll $0, $0, 0
sll $3, $3, 7
sll $0, $0, 0
TAG700:
sh $2, 0($2)
bgtz $2, TAG701
nor $1, $2, $2
mult $1, $1
TAG701:
mthi $1
blez $1, TAG702
lui $2, 15
srlv $3, $1, $1
TAG702:
beq $3, $3, TAG703
sll $0, $0, 0
mult $4, $4
slt $4, $3, $3
TAG703:
sll $0, $0, 0
beq $4, $4, TAG704
mtlo $4
lui $1, 5
TAG704:
sll $0, $0, 0
divu $2, $2
div $2, $1
sw $1, 1($1)
TAG705:
lui $4, 11
sll $0, $0, 0
mtlo $2
div $4, $2
TAG706:
bltz $4, TAG707
lui $4, 6
mfhi $4
sll $0, $0, 0
TAG707:
divu $4, $4
bgtz $4, TAG708
lui $2, 2
addu $1, $4, $4
TAG708:
bgtz $1, TAG709
lui $1, 5
beq $1, $1, TAG709
mtlo $1
TAG709:
mthi $1
bgez $1, TAG710
andi $2, $1, 7
lui $2, 7
TAG710:
srl $1, $2, 14
addu $4, $2, $2
sw $4, 0($2)
mflo $1
TAG711:
bne $1, $1, TAG712
divu $1, $1
sll $0, $0, 0
srav $4, $1, $1
TAG712:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
blez $4, TAG713
TAG713:
lui $1, 7
sltu $1, $1, $1
mflo $1
mthi $1
TAG714:
lui $1, 8
sll $0, $0, 0
bltz $1, TAG715
mthi $1
TAG715:
sll $0, $0, 0
beq $3, $1, TAG716
mtlo $1
sll $0, $0, 0
TAG716:
addiu $4, $3, 2
sll $0, $0, 0
sra $1, $3, 13
or $2, $1, $3
TAG717:
beq $2, $2, TAG718
ori $2, $2, 13
bgtz $2, TAG718
addiu $2, $2, 5
TAG718:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG719:
mfhi $2
mflo $3
sll $0, $0, 0
or $3, $2, $3
TAG720:
sll $3, $3, 9
sll $0, $0, 0
bltz $3, TAG721
mthi $3
TAG721:
mtlo $4
bne $4, $4, TAG722
mthi $4
mthi $4
TAG722:
multu $4, $4
lui $4, 9
mfhi $2
sll $0, $0, 0
TAG723:
sw $1, -13312($1)
bgez $1, TAG724
mthi $1
subu $1, $1, $1
TAG724:
multu $1, $1
lui $1, 4
lui $4, 8
bgtz $1, TAG725
TAG725:
lui $4, 2
slt $1, $4, $4
mult $4, $4
bne $4, $4, TAG726
TAG726:
sw $1, 0($1)
lui $3, 12
beq $1, $3, TAG727
addu $2, $3, $1
TAG727:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 14
mfhi $3
TAG728:
andi $3, $3, 1
sw $3, 0($3)
sb $3, 0($3)
mult $3, $3
TAG729:
mult $3, $3
lui $4, 12
mthi $3
mthi $4
TAG730:
bne $4, $4, TAG731
addiu $2, $4, 9
lui $1, 6
mfhi $1
TAG731:
srl $2, $1, 8
addu $4, $1, $1
beq $2, $1, TAG732
sll $0, $0, 0
TAG732:
sll $0, $0, 0
sll $0, $0, 0
and $3, $1, $1
bne $4, $3, TAG733
TAG733:
mult $3, $3
bgtz $3, TAG734
slt $4, $3, $3
slti $4, $3, 1
TAG734:
bgez $4, TAG735
mthi $4
mthi $4
divu $4, $4
TAG735:
multu $4, $4
lui $4, 11
mthi $4
lui $3, 0
TAG736:
add $2, $3, $3
mfhi $3
sll $0, $0, 0
mflo $1
TAG737:
mtlo $1
mthi $1
sb $1, 0($1)
sb $1, 0($1)
TAG738:
mult $1, $1
sub $2, $1, $1
bgtz $1, TAG739
mfhi $1
TAG739:
lhu $1, 0($1)
mtlo $1
slti $4, $1, 1
sb $4, 0($4)
TAG740:
multu $4, $4
mfhi $1
addiu $4, $1, 8
sb $1, 0($4)
TAG741:
sltu $2, $4, $4
mthi $2
mthi $4
lbu $1, 0($4)
TAG742:
lbu $1, 0($1)
lui $4, 5
subu $2, $1, $4
lui $4, 6
TAG743:
sll $0, $0, 0
mflo $3
mtlo $3
andi $1, $2, 13
TAG744:
addu $1, $1, $1
mthi $1
bltz $1, TAG745
addu $1, $1, $1
TAG745:
mthi $1
sh $1, 0($1)
nor $2, $1, $1
bne $2, $1, TAG746
TAG746:
addu $3, $2, $2
sw $3, 2($3)
beq $3, $2, TAG747
subu $3, $3, $3
TAG747:
multu $3, $3
sh $3, 0($3)
beq $3, $3, TAG748
lui $1, 9
TAG748:
sll $0, $0, 0
bgtz $1, TAG749
sll $0, $0, 0
sh $1, 0($1)
TAG749:
mthi $4
bgtz $4, TAG750
mthi $4
bne $4, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop