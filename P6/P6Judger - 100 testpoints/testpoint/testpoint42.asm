ori $1, $0, 6
ori $2, $0, 11
ori $3, $0, 15
ori $4, $0, 11
sw $2, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $3, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $3, 88($0)
sw $1, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $4, 124($0)
lbu $3, 0($2)
sh $2, 0($3)
lui $4, 14
xori $1, $2, 5
TAG1:
sh $1, 0($1)
lhu $2, 0($1)
lui $3, 5
mtlo $1
TAG2:
sll $0, $0, 0
srl $2, $3, 2
sll $0, $0, 0
blez $3, TAG3
TAG3:
mthi $2
addiu $1, $2, 1
divu $1, $1
mflo $3
TAG4:
lui $3, 13
subu $4, $3, $3
sb $3, 0($4)
mult $4, $3
TAG5:
lui $1, 15
bgtz $1, TAG6
lui $4, 6
mthi $1
TAG6:
sll $0, $0, 0
mflo $3
bgez $1, TAG7
sll $0, $0, 0
TAG7:
mflo $4
beq $4, $4, TAG8
xori $3, $4, 10
mfhi $1
TAG8:
div $1, $1
mult $1, $1
bgtz $1, TAG9
mult $1, $1
TAG9:
lui $3, 6
mtlo $1
mfhi $1
lh $4, -225($1)
TAG10:
xor $4, $4, $4
lui $1, 4
lh $1, 0($4)
sh $1, 0($4)
TAG11:
lui $3, 12
mult $3, $1
mtlo $3
lui $2, 13
TAG12:
sll $0, $0, 0
subu $2, $2, $2
lb $1, 0($2)
mfhi $2
TAG13:
mfhi $1
sw $1, 0($1)
srav $3, $2, $2
addi $4, $2, 3
TAG14:
multu $4, $4
lbu $2, 0($4)
lb $1, 0($4)
andi $2, $4, 0
TAG15:
mult $2, $2
sllv $4, $2, $2
lh $4, 0($4)
subu $4, $4, $4
TAG16:
mthi $4
bgez $4, TAG17
sllv $1, $4, $4
mtlo $4
TAG17:
mfhi $3
sh $1, 0($1)
bltz $1, TAG18
mtlo $1
TAG18:
sb $3, 0($3)
nor $2, $3, $3
mtlo $3
sra $2, $2, 14
TAG19:
bne $2, $2, TAG20
multu $2, $2
mfhi $4
addu $3, $2, $4
TAG20:
bgtz $3, TAG21
lhu $2, 3($3)
subu $2, $3, $2
beq $2, $3, TAG21
TAG21:
sh $2, 3($2)
blez $2, TAG22
mflo $1
sll $3, $2, 15
TAG22:
multu $3, $3
multu $3, $3
bgtz $3, TAG23
sb $3, 3($3)
TAG23:
lui $2, 2
bne $2, $3, TAG24
mtlo $2
sllv $2, $2, $2
TAG24:
addiu $1, $2, 5
slt $3, $1, $2
divu $3, $1
sll $0, $0, 0
TAG25:
lh $1, 0($3)
bltz $1, TAG26
lw $4, 0($3)
mfhi $3
TAG26:
mult $3, $3
lui $1, 14
addu $1, $3, $1
mflo $2
TAG27:
blez $2, TAG28
mult $2, $2
mthi $2
mtlo $2
TAG28:
mfhi $4
sltiu $4, $2, 6
sb $2, 0($2)
blez $4, TAG29
TAG29:
addu $3, $4, $4
xori $1, $3, 0
mtlo $4
multu $1, $4
TAG30:
lui $4, 2
mfhi $2
mflo $2
sh $2, 0($1)
TAG31:
beq $2, $2, TAG32
mflo $2
sw $2, 0($2)
slti $2, $2, 12
TAG32:
beq $2, $2, TAG33
lui $3, 12
mtlo $2
srl $2, $2, 7
TAG33:
sltiu $4, $2, 3
bne $2, $4, TAG34
sh $4, 0($2)
divu $4, $2
TAG34:
div $4, $4
lb $3, 0($4)
lb $3, 0($4)
lbu $3, 0($4)
TAG35:
mtlo $3
lb $4, -255($3)
sb $4, -255($3)
lui $2, 10
TAG36:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
bgtz $1, TAG37
TAG37:
srl $4, $1, 13
bne $1, $1, TAG38
sltu $4, $1, $4
sb $4, 0($4)
TAG38:
mthi $4
multu $4, $4
mult $4, $4
beq $4, $4, TAG39
TAG39:
lui $1, 8
beq $1, $1, TAG40
subu $1, $4, $1
srav $3, $1, $4
TAG40:
sll $2, $3, 6
sb $2, -255($3)
lh $2, -255($3)
lui $3, 0
TAG41:
lui $3, 5
lui $2, 1
sll $0, $0, 0
mflo $2
TAG42:
bgez $2, TAG43
mult $2, $2
addiu $3, $2, 3
bne $2, $2, TAG43
TAG43:
sll $0, $0, 0
mfhi $3
beq $3, $3, TAG44
lh $1, 0($3)
TAG44:
lui $3, 7
srl $2, $1, 10
addiu $4, $1, 3
srlv $4, $1, $1
TAG45:
xor $4, $4, $4
beq $4, $4, TAG46
lbu $4, 0($4)
div $4, $4
TAG46:
blez $4, TAG47
mult $4, $4
srl $2, $4, 8
lui $1, 7
TAG47:
sll $0, $0, 0
mfhi $2
xori $1, $2, 8
beq $1, $1, TAG48
TAG48:
sb $1, 0($1)
lui $3, 8
mthi $1
multu $3, $3
TAG49:
bne $3, $3, TAG50
mtlo $3
sll $0, $0, 0
slti $3, $4, 15
TAG50:
lui $2, 5
nor $1, $2, $3
multu $2, $3
mflo $3
TAG51:
lui $4, 2
srlv $3, $3, $3
srlv $3, $4, $3
mthi $3
TAG52:
and $3, $3, $3
sll $0, $0, 0
mfhi $4
lui $2, 0
TAG53:
xor $1, $2, $2
mfhi $2
sub $2, $1, $1
sw $2, 0($2)
TAG54:
sh $2, 0($2)
sw $2, 0($2)
beq $2, $2, TAG55
andi $3, $2, 1
TAG55:
lhu $2, 0($3)
mtlo $2
sltiu $1, $2, 14
mthi $3
TAG56:
lui $2, 7
mflo $3
div $1, $1
sb $2, 0($1)
TAG57:
lw $4, 0($3)
beq $4, $4, TAG58
multu $3, $3
sb $4, 0($3)
TAG58:
mfhi $2
bne $4, $4, TAG59
mflo $2
lh $3, 0($2)
TAG59:
bne $3, $3, TAG60
multu $3, $3
beq $3, $3, TAG60
sub $1, $3, $3
TAG60:
addi $3, $1, 11
subu $1, $3, $1
mthi $1
bgtz $1, TAG61
TAG61:
lbu $2, 0($1)
mult $2, $2
mthi $2
mthi $2
TAG62:
slt $1, $2, $2
sra $3, $1, 15
mtlo $1
xori $2, $1, 9
TAG63:
mfhi $1
beq $2, $1, TAG64
mflo $1
blez $2, TAG64
TAG64:
sll $2, $1, 9
beq $1, $2, TAG65
lui $4, 1
beq $2, $1, TAG65
TAG65:
lui $2, 12
bne $4, $4, TAG66
srl $3, $4, 6
sw $4, -1024($3)
TAG66:
beq $3, $3, TAG67
lbu $1, -1024($3)
mthi $1
sllv $2, $3, $3
TAG67:
slt $4, $2, $2
add $1, $4, $4
lbu $1, 0($4)
mflo $1
TAG68:
multu $1, $1
mtlo $1
sb $1, 0($1)
mult $1, $1
TAG69:
mult $1, $1
mflo $3
lui $4, 11
addiu $3, $4, 13
TAG70:
multu $3, $3
multu $3, $3
mthi $3
addiu $3, $3, 8
TAG71:
mtlo $3
sltiu $1, $3, 14
bgez $1, TAG72
mult $1, $3
TAG72:
mult $1, $1
xori $2, $1, 12
mtlo $1
sh $1, 0($2)
TAG73:
mfhi $4
sh $4, 0($4)
lui $4, 3
multu $4, $2
TAG74:
beq $4, $4, TAG75
mfhi $4
xor $3, $4, $4
addu $4, $4, $4
TAG75:
sh $4, 0($4)
lui $1, 4
sll $0, $0, 0
sw $1, 0($4)
TAG76:
lui $3, 3
mult $3, $3
addiu $3, $1, 9
mtlo $1
TAG77:
sll $0, $0, 0
sll $1, $3, 14
mfhi $3
mflo $3
TAG78:
or $1, $3, $3
sll $0, $0, 0
lui $3, 12
sll $0, $0, 0
TAG79:
mtlo $3
lui $1, 7
xor $2, $1, $1
bne $3, $3, TAG80
TAG80:
mfhi $1
multu $2, $2
sb $1, 0($1)
lui $2, 13
TAG81:
sll $0, $0, 0
div $2, $2
xori $2, $1, 13
addiu $4, $1, 3
TAG82:
mflo $1
mflo $2
mflo $3
bgtz $3, TAG83
TAG83:
mflo $4
lui $4, 2
sll $0, $0, 0
bgtz $4, TAG84
TAG84:
sllv $1, $4, $4
subu $2, $4, $1
bgez $1, TAG85
mfhi $2
TAG85:
multu $2, $2
xor $2, $2, $2
sb $2, 0($2)
mult $2, $2
TAG86:
bgtz $2, TAG87
sb $2, 0($2)
beq $2, $2, TAG87
lbu $1, 0($2)
TAG87:
mtlo $1
mult $1, $1
xori $4, $1, 8
sltiu $2, $4, 5
TAG88:
ori $2, $2, 6
sb $2, 0($2)
xor $1, $2, $2
multu $2, $1
TAG89:
lui $4, 10
srlv $2, $1, $4
sll $0, $0, 0
slti $3, $1, 13
TAG90:
andi $2, $3, 7
mthi $3
lui $1, 3
mthi $3
TAG91:
srl $2, $1, 9
lui $3, 1
sll $0, $0, 0
beq $2, $3, TAG92
TAG92:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG93:
addiu $2, $4, 12
srlv $1, $2, $2
mult $2, $4
nor $3, $1, $4
TAG94:
div $3, $3
blez $3, TAG95
and $2, $3, $3
srlv $4, $2, $3
TAG95:
bltz $4, TAG96
lui $4, 3
mthi $4
lui $2, 1
TAG96:
nor $4, $2, $2
slt $4, $2, $2
mult $4, $4
mflo $4
TAG97:
lui $3, 14
bgtz $4, TAG98
lui $1, 1
mtlo $1
TAG98:
sll $0, $0, 0
multu $1, $1
beq $1, $1, TAG99
sll $0, $0, 0
TAG99:
mfhi $4
lui $3, 12
mfhi $1
blez $4, TAG100
TAG100:
lui $2, 4
bgtz $2, TAG101
sb $2, 0($1)
mfhi $4
TAG101:
addiu $2, $4, 14
sb $2, 0($4)
addiu $4, $4, 1
mthi $4
TAG102:
mfhi $4
subu $3, $4, $4
srlv $4, $4, $4
mult $4, $3
TAG103:
srl $2, $4, 13
lui $4, 0
xori $1, $4, 0
ori $2, $1, 12
TAG104:
addiu $2, $2, 3
and $1, $2, $2
slti $3, $2, 6
addu $4, $1, $2
TAG105:
mult $4, $4
bne $4, $4, TAG106
sh $4, 0($4)
slti $4, $4, 0
TAG106:
bne $4, $4, TAG107
mflo $1
mthi $4
multu $4, $4
TAG107:
sltiu $3, $1, 9
addiu $4, $1, 4
lui $2, 5
bgtz $2, TAG108
TAG108:
mtlo $2
bne $2, $2, TAG109
sll $0, $0, 0
addiu $3, $3, 8
TAG109:
lui $4, 8
sll $0, $0, 0
sw $4, 0($3)
or $1, $4, $3
TAG110:
mflo $4
mtlo $4
mtlo $4
mflo $4
TAG111:
beq $4, $4, TAG112
sll $0, $0, 0
lhu $2, 0($4)
mfhi $1
TAG112:
mthi $1
mfhi $1
mtlo $1
mtlo $1
TAG113:
mflo $3
mfhi $4
mult $3, $1
blez $4, TAG114
TAG114:
andi $4, $4, 8
addu $2, $4, $4
mtlo $2
subu $3, $4, $2
TAG115:
sltiu $4, $3, 10
bgez $3, TAG116
sb $3, 0($4)
sllv $4, $3, $4
TAG116:
sb $4, 8($4)
mflo $4
mflo $2
lui $1, 1
TAG117:
mfhi $1
addiu $3, $1, 11
lui $2, 7
mflo $4
TAG118:
srlv $3, $4, $4
lb $4, 0($4)
sb $4, 0($3)
mtlo $4
TAG119:
divu $4, $4
xori $4, $4, 11
bgez $4, TAG120
mult $4, $4
TAG120:
lui $1, 2
bne $1, $1, TAG121
mflo $2
bgez $1, TAG121
TAG121:
subu $4, $2, $2
sb $4, -169($2)
bne $2, $2, TAG122
mult $4, $2
TAG122:
lh $4, 0($4)
lui $4, 13
mflo $4
srav $1, $4, $4
TAG123:
sh $1, 0($1)
lui $4, 6
srlv $3, $1, $1
sw $1, 0($3)
TAG124:
bne $3, $3, TAG125
mtlo $3
mult $3, $3
lh $3, 0($3)
TAG125:
lbu $3, 0($3)
beq $3, $3, TAG126
sh $3, 0($3)
or $3, $3, $3
TAG126:
lui $4, 12
lui $3, 6
mult $4, $4
sll $0, $0, 0
TAG127:
bne $4, $4, TAG128
sra $1, $4, 7
mfhi $4
bgez $1, TAG128
TAG128:
slti $1, $4, 8
ori $4, $4, 12
mflo $2
sw $1, 0($1)
TAG129:
slt $3, $2, $2
and $3, $3, $2
beq $2, $2, TAG130
mfhi $4
TAG130:
sll $0, $0, 0
lb $1, -144($4)
mult $1, $1
addi $3, $1, 13
TAG131:
lb $3, 0($3)
add $1, $3, $3
lhu $1, 0($3)
mult $3, $3
TAG132:
beq $1, $1, TAG133
mfhi $4
subu $1, $4, $1
lui $1, 12
TAG133:
mult $1, $1
multu $1, $1
lh $1, 0($1)
addu $4, $1, $1
TAG134:
mtlo $4
blez $4, TAG135
mtlo $4
divu $4, $4
TAG135:
lhu $2, 0($4)
mthi $4
multu $4, $4
beq $2, $2, TAG136
TAG136:
addi $1, $2, 11
sh $1, 0($2)
lw $2, 0($2)
div $2, $2
TAG137:
lui $1, 7
mthi $1
multu $2, $2
sll $0, $0, 0
TAG138:
beq $3, $3, TAG139
sw $3, 0($3)
blez $3, TAG139
sll $3, $3, 6
TAG139:
lui $4, 0
srav $3, $3, $4
beq $3, $3, TAG140
lui $2, 0
TAG140:
andi $2, $2, 11
mflo $3
addiu $2, $3, 13
mthi $2
TAG141:
div $2, $2
lb $2, -134($2)
mthi $2
mtlo $2
TAG142:
beq $2, $2, TAG143
xori $1, $2, 7
sltu $3, $1, $1
mtlo $1
TAG143:
lbu $1, 0($3)
mult $1, $1
lhu $1, 0($1)
bne $1, $3, TAG144
TAG144:
lui $3, 4
blez $1, TAG145
sll $3, $1, 8
sb $3, 0($1)
TAG145:
addi $3, $3, 8
sltiu $2, $3, 9
lui $3, 2
mtlo $3
TAG146:
or $3, $3, $3
beq $3, $3, TAG147
lui $3, 5
div $3, $3
TAG147:
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG148
sra $2, $3, 12
TAG148:
mflo $1
lui $2, 4
mfhi $3
sll $0, $0, 0
TAG149:
mfhi $4
lbu $1, 0($4)
multu $3, $4
mult $3, $3
TAG150:
and $2, $1, $1
sw $1, 0($2)
lh $3, 0($1)
addi $1, $1, 9
TAG151:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG152
TAG152:
sltiu $4, $3, 0
lui $4, 2
subu $4, $4, $3
bgez $4, TAG153
TAG153:
lui $1, 13
sll $0, $0, 0
or $1, $1, $4
addiu $4, $4, 0
TAG154:
sll $0, $0, 0
lui $1, 7
sra $1, $1, 2
lui $1, 7
TAG155:
divu $1, $1
mtlo $1
bne $1, $1, TAG156
mthi $1
TAG156:
mfhi $3
sll $0, $0, 0
beq $1, $3, TAG157
mflo $4
TAG157:
ori $2, $4, 4
lui $2, 11
bne $4, $2, TAG158
lui $3, 4
TAG158:
mult $3, $3
mflo $1
sh $3, 0($1)
srlv $1, $3, $3
TAG159:
sltu $3, $1, $1
lw $1, 0($3)
sw $3, 0($1)
bgez $1, TAG160
TAG160:
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
lui $1, 3
TAG161:
andi $3, $1, 1
bltz $1, TAG162
xor $1, $3, $3
mfhi $1
TAG162:
beq $1, $1, TAG163
mthi $1
lb $2, 0($1)
mfhi $2
TAG163:
multu $2, $2
mflo $2
mthi $2
bne $2, $2, TAG164
TAG164:
sll $4, $2, 4
nor $4, $2, $2
bgtz $4, TAG165
mthi $4
TAG165:
sh $4, 1($4)
lw $1, 1($4)
mthi $1
bne $1, $1, TAG166
TAG166:
sll $0, $0, 0
beq $1, $1, TAG167
sll $0, $0, 0
sh $1, 0($3)
TAG167:
mfhi $3
sll $0, $0, 0
srl $1, $3, 7
beq $1, $3, TAG168
TAG168:
sll $0, $0, 0
or $4, $3, $1
bne $1, $4, TAG169
mtlo $1
TAG169:
lui $2, 11
beq $2, $4, TAG170
sll $0, $0, 0
nor $2, $4, $4
TAG170:
xori $2, $2, 12
mflo $3
beq $2, $2, TAG171
addu $2, $2, $2
TAG171:
mthi $2
sll $1, $2, 6
bgez $1, TAG172
sll $0, $0, 0
TAG172:
sll $0, $0, 0
sra $4, $1, 6
or $3, $1, $4
sll $0, $0, 0
TAG173:
srl $2, $2, 3
addiu $3, $2, 12
sll $0, $0, 0
mfhi $2
TAG174:
srl $3, $2, 9
lui $2, 13
mthi $2
mult $2, $2
TAG175:
bne $2, $2, TAG176
subu $2, $2, $2
mtlo $2
bne $2, $2, TAG176
TAG176:
sh $2, 0($2)
lui $4, 1
beq $2, $2, TAG177
mfhi $3
TAG177:
subu $2, $3, $3
blez $3, TAG178
addiu $2, $3, 14
blez $2, TAG178
TAG178:
mtlo $2
srl $4, $2, 7
multu $2, $2
sb $2, -183($2)
TAG179:
beq $4, $4, TAG180
lui $3, 0
bgtz $3, TAG180
mfhi $3
TAG180:
lui $2, 6
multu $3, $3
blez $2, TAG181
or $1, $3, $3
TAG181:
lbu $1, 0($1)
blez $1, TAG182
lui $4, 12
ori $4, $4, 2
TAG182:
sltiu $2, $4, 7
and $4, $2, $4
bgtz $4, TAG183
lui $2, 13
TAG183:
multu $2, $2
nor $1, $2, $2
sll $0, $0, 0
lui $1, 3
TAG184:
multu $1, $1
mult $1, $1
mthi $1
beq $1, $1, TAG185
TAG185:
nor $2, $1, $1
sll $0, $0, 0
lui $1, 4
bne $2, $2, TAG186
TAG186:
mtlo $1
multu $1, $1
sll $0, $0, 0
beq $1, $1, TAG187
TAG187:
mflo $1
ori $4, $4, 2
addiu $2, $4, 10
mult $2, $2
TAG188:
sra $3, $2, 3
subu $3, $2, $3
mfhi $4
divu $4, $3
TAG189:
mtlo $4
blez $4, TAG190
mthi $4
addiu $2, $4, 12
TAG190:
addiu $3, $2, 5
multu $2, $3
lui $3, 11
sll $0, $0, 0
TAG191:
sll $0, $0, 0
beq $2, $2, TAG192
sh $2, 0($2)
mtlo $3
TAG192:
bgtz $2, TAG193
sh $2, 0($2)
srav $2, $2, $2
multu $2, $2
TAG193:
multu $2, $2
beq $2, $2, TAG194
lui $2, 6
bltz $2, TAG194
TAG194:
subu $4, $2, $2
mtlo $4
mthi $2
bne $2, $4, TAG195
TAG195:
mtlo $4
mthi $4
srl $4, $4, 6
mflo $3
TAG196:
xori $4, $3, 12
mthi $3
multu $3, $3
lb $1, 0($4)
TAG197:
mtlo $1
srl $3, $1, 13
sw $1, 0($3)
sb $1, 0($3)
TAG198:
or $2, $3, $3
lui $4, 9
addiu $4, $4, 6
blez $4, TAG199
TAG199:
sll $0, $0, 0
bne $4, $4, TAG200
sll $0, $0, 0
blez $4, TAG200
TAG200:
lui $2, 7
mthi $2
sll $0, $0, 0
lui $1, 12
TAG201:
bgez $1, TAG202
srav $3, $1, $1
and $1, $1, $1
mtlo $1
TAG202:
xori $3, $1, 0
div $1, $3
bgez $3, TAG203
subu $4, $1, $3
TAG203:
lui $3, 14
beq $3, $3, TAG204
mflo $4
divu $4, $3
TAG204:
bgtz $4, TAG205
lui $2, 6
lh $4, 0($4)
lh $4, 0($4)
TAG205:
bgez $4, TAG206
sb $4, 0($4)
mtlo $4
sb $4, 0($4)
TAG206:
lb $3, 0($4)
lbu $4, 0($4)
sllv $3, $4, $4
div $4, $3
TAG207:
beq $3, $3, TAG208
mtlo $3
multu $3, $3
addiu $2, $3, 4
TAG208:
lui $1, 10
mult $1, $2
addu $3, $1, $2
lui $3, 1
TAG209:
mtlo $3
lui $2, 7
sll $0, $0, 0
lui $4, 9
TAG210:
bne $4, $4, TAG211
sll $0, $0, 0
ori $1, $1, 6
beq $4, $1, TAG211
TAG211:
mthi $1
bltz $1, TAG212
multu $1, $1
sllv $4, $1, $1
TAG212:
sll $0, $0, 0
blez $4, TAG213
sll $0, $0, 0
mtlo $4
TAG213:
lui $1, 11
bltz $4, TAG214
sll $0, $0, 0
multu $1, $1
TAG214:
mfhi $4
xor $2, $4, $4
multu $4, $4
add $1, $2, $4
TAG215:
xori $4, $1, 3
bne $1, $4, TAG216
divu $1, $1
sllv $3, $1, $1
TAG216:
sll $0, $0, 0
beq $3, $3, TAG217
sltiu $2, $2, 6
mult $2, $2
TAG217:
lui $3, 10
lb $1, 0($2)
bne $3, $1, TAG218
mflo $4
TAG218:
sb $4, 0($4)
sb $4, 0($4)
bne $4, $4, TAG219
sllv $3, $4, $4
TAG219:
lh $1, 0($3)
sh $3, 0($3)
mflo $3
bne $1, $1, TAG220
TAG220:
lui $4, 13
sll $0, $0, 0
lui $2, 5
lui $3, 8
TAG221:
lui $3, 4
beq $3, $3, TAG222
xor $3, $3, $3
sh $3, 0($3)
TAG222:
mult $3, $3
sh $3, 0($3)
add $3, $3, $3
mthi $3
TAG223:
srlv $4, $3, $3
multu $4, $4
beq $3, $3, TAG224
multu $3, $3
TAG224:
bgtz $4, TAG225
mflo $4
bne $4, $4, TAG225
slti $3, $4, 1
TAG225:
sb $3, 0($3)
mflo $2
lui $2, 0
sh $3, 0($2)
TAG226:
mtlo $2
mfhi $1
mult $2, $1
blez $2, TAG227
TAG227:
sb $1, 0($1)
mtlo $1
mthi $1
sb $1, 0($1)
TAG228:
or $4, $1, $1
lhu $3, 0($1)
bne $4, $3, TAG229
sh $4, 0($3)
TAG229:
nor $1, $3, $3
lhu $2, 0($3)
lbu $1, 1($1)
mflo $3
TAG230:
sub $2, $3, $3
bgez $2, TAG231
sw $2, 0($3)
sh $2, 0($3)
TAG231:
mthi $2
sw $2, 0($2)
mtlo $2
blez $2, TAG232
TAG232:
mflo $3
sh $2, 0($3)
lb $3, 0($3)
mthi $3
TAG233:
multu $3, $3
sh $3, 0($3)
lh $1, 0($3)
mthi $3
TAG234:
lui $3, 7
beq $3, $1, TAG235
lui $4, 11
multu $1, $1
TAG235:
lui $4, 5
divu $4, $4
sll $0, $0, 0
mfhi $2
TAG236:
beq $2, $2, TAG237
andi $2, $2, 10
multu $2, $2
slt $4, $2, $2
TAG237:
sll $0, $0, 0
mthi $4
mflo $2
beq $4, $4, TAG238
TAG238:
lui $3, 8
lbu $3, 0($2)
mfhi $2
mfhi $2
TAG239:
addu $3, $2, $2
sll $0, $0, 0
mtlo $2
mtlo $2
TAG240:
sw $1, 0($1)
sltiu $4, $1, 13
mflo $3
xor $3, $3, $4
TAG241:
sll $0, $0, 0
mthi $3
multu $3, $1
mflo $1
TAG242:
mthi $1
lui $4, 2
mult $1, $1
mtlo $4
TAG243:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
TAG244:
mfhi $3
mfhi $2
mflo $4
bltz $4, TAG245
TAG245:
lb $2, 0($4)
sb $4, 0($4)
bgez $2, TAG246
mthi $2
TAG246:
mult $2, $2
srlv $4, $2, $2
sb $4, 0($4)
sb $4, 0($4)
TAG247:
sltiu $4, $4, 0
sub $4, $4, $4
blez $4, TAG248
srl $3, $4, 4
TAG248:
mflo $1
lbu $4, 0($3)
mfhi $1
beq $1, $1, TAG249
TAG249:
lui $2, 12
nor $4, $1, $1
mult $4, $4
and $2, $2, $2
TAG250:
lui $3, 9
mflo $1
bgez $1, TAG251
lui $1, 0
TAG251:
bgtz $1, TAG252
or $2, $1, $1
multu $1, $2
beq $1, $1, TAG252
TAG252:
mfhi $1
beq $1, $2, TAG253
mthi $1
nor $3, $2, $1
TAG253:
multu $3, $3
mflo $2
sll $0, $0, 0
mthi $3
TAG254:
andi $3, $3, 12
blez $3, TAG255
mflo $4
nor $3, $3, $3
TAG255:
mflo $1
addu $4, $1, $3
xori $3, $4, 11
mthi $3
TAG256:
mfhi $1
mfhi $3
sra $2, $1, 9
lui $1, 11
TAG257:
sll $0, $0, 0
mthi $1
blez $1, TAG258
mfhi $1
TAG258:
beq $1, $1, TAG259
addiu $4, $1, 14
mult $1, $1
mult $1, $4
TAG259:
mflo $3
beq $3, $4, TAG260
sw $4, 0($3)
mtlo $4
TAG260:
sub $4, $3, $3
lw $2, 0($3)
lui $2, 15
bltz $3, TAG261
TAG261:
lui $3, 0
multu $3, $3
srl $3, $3, 1
add $2, $3, $3
TAG262:
mthi $2
lui $1, 0
sw $1, 0($2)
mflo $3
TAG263:
lui $4, 2
blez $3, TAG264
mult $4, $3
div $3, $4
TAG264:
sll $0, $0, 0
mflo $2
multu $2, $4
bltz $2, TAG265
TAG265:
nor $3, $2, $2
subu $2, $3, $2
sh $3, 1($2)
lui $4, 4
TAG266:
and $3, $4, $4
beq $4, $4, TAG267
sll $0, $0, 0
sw $1, 0($3)
TAG267:
mtlo $1
mult $1, $1
srl $3, $1, 3
multu $1, $3
TAG268:
mthi $3
lui $3, 9
srlv $2, $3, $3
lui $1, 14
TAG269:
lui $1, 8
blez $1, TAG270
mthi $1
bltz $1, TAG270
TAG270:
sll $0, $0, 0
blez $1, TAG271
lui $3, 5
sltiu $1, $1, 8
TAG271:
bgtz $1, TAG272
mthi $1
sh $1, 0($1)
ori $4, $1, 0
TAG272:
mtlo $4
bltz $4, TAG273
sw $4, 0($4)
mtlo $4
TAG273:
lui $4, 4
mfhi $4
bne $4, $4, TAG274
lui $3, 4
TAG274:
xori $3, $3, 15
sll $0, $0, 0
sll $0, $0, 0
sll $1, $3, 11
TAG275:
bne $1, $1, TAG276
srav $1, $1, $1
mflo $2
mthi $1
TAG276:
sh $2, 0($2)
lui $4, 0
lui $3, 12
addi $1, $4, 3
TAG277:
beq $1, $1, TAG278
lbu $4, 0($1)
bltz $1, TAG278
lui $2, 13
TAG278:
mtlo $2
sra $4, $2, 12
srav $1, $2, $4
lw $2, 0($4)
TAG279:
sllv $2, $2, $2
lui $1, 3
bgtz $2, TAG280
mult $2, $2
TAG280:
sltiu $1, $1, 13
bne $1, $1, TAG281
addi $4, $1, 3
bgez $1, TAG281
TAG281:
lui $1, 10
beq $4, $4, TAG282
addiu $2, $1, 11
mthi $2
TAG282:
addu $2, $2, $2
mflo $3
sll $0, $0, 0
mult $2, $3
TAG283:
mthi $3
lw $1, 0($3)
xori $4, $3, 10
xor $4, $4, $1
TAG284:
mthi $4
divu $4, $4
sllv $3, $4, $4
mthi $3
TAG285:
div $3, $3
bgtz $3, TAG286
sb $3, -10240($3)
bne $3, $3, TAG286
TAG286:
mtlo $3
lui $3, 0
sh $3, 0($3)
blez $3, TAG287
TAG287:
mult $3, $3
lui $3, 8
mfhi $2
sll $0, $0, 0
TAG288:
mflo $4
mflo $1
blez $2, TAG289
lb $3, 0($2)
TAG289:
beq $3, $3, TAG290
sw $3, 0($3)
bgtz $3, TAG290
mfhi $4
TAG290:
mtlo $4
mfhi $1
beq $1, $4, TAG291
lhu $4, 0($1)
TAG291:
sltu $4, $4, $4
lbu $3, 0($4)
ori $1, $4, 5
xori $3, $1, 1
TAG292:
sb $3, 0($3)
sh $3, 0($3)
mfhi $2
multu $3, $3
TAG293:
srav $3, $2, $2
sh $2, 0($2)
lui $1, 15
blez $1, TAG294
TAG294:
mfhi $3
sra $1, $3, 11
mfhi $1
addi $4, $3, 12
TAG295:
lui $1, 14
sra $2, $1, 15
lbu $1, 0($2)
sh $4, 0($1)
TAG296:
beq $1, $1, TAG297
mthi $1
sw $1, 0($1)
lui $4, 5
TAG297:
lui $1, 0
mtlo $1
mtlo $4
addu $4, $4, $1
TAG298:
sb $4, 0($4)
bgtz $4, TAG299
srav $1, $4, $4
lui $2, 7
TAG299:
bgtz $2, TAG300
sw $2, 0($2)
sra $4, $2, 5
lui $1, 5
TAG300:
mthi $1
sw $1, 0($1)
beq $1, $1, TAG301
multu $1, $1
TAG301:
multu $1, $1
lui $3, 7
beq $3, $3, TAG302
mult $3, $1
TAG302:
sll $0, $0, 0
divu $3, $3
mfhi $4
bltz $3, TAG303
TAG303:
mult $4, $4
lui $1, 4
beq $4, $1, TAG304
sb $4, 0($4)
TAG304:
lui $3, 2
lui $1, 0
slt $2, $3, $1
beq $1, $2, TAG305
TAG305:
lui $4, 8
mtlo $4
lui $3, 0
lui $2, 9
TAG306:
lui $1, 11
slt $1, $1, $1
addiu $3, $1, 10
mfhi $2
TAG307:
sh $2, 0($2)
mtlo $2
sb $2, 0($2)
lw $4, 0($2)
TAG308:
lh $4, 0($4)
lb $1, 0($4)
mflo $2
multu $2, $1
TAG309:
beq $2, $2, TAG310
sh $2, 0($2)
mflo $3
sh $3, 0($3)
TAG310:
mthi $3
sb $3, 0($3)
lh $3, 0($3)
lh $3, 0($3)
TAG311:
div $3, $3
mfhi $2
xor $4, $3, $2
bltz $3, TAG312
TAG312:
sh $4, 0($4)
sh $4, 0($4)
div $4, $4
div $4, $4
TAG313:
multu $4, $4
lb $2, 0($4)
mfhi $3
ori $3, $3, 12
TAG314:
and $2, $3, $3
divu $2, $2
mflo $4
sltu $1, $3, $2
TAG315:
lui $2, 2
bne $2, $2, TAG316
mflo $3
sll $0, $0, 0
TAG316:
sb $3, 0($3)
mtlo $3
mult $3, $3
bltz $3, TAG317
TAG317:
lui $1, 11
mfhi $1
blez $1, TAG318
mflo $2
TAG318:
mult $2, $2
bne $2, $2, TAG319
sb $2, 0($2)
mflo $1
TAG319:
sb $1, 0($1)
mflo $1
lb $2, 0($1)
bgtz $1, TAG320
TAG320:
mfhi $2
mult $2, $2
mfhi $3
beq $3, $2, TAG321
TAG321:
slti $1, $3, 5
blez $1, TAG322
lbu $3, 0($1)
bltz $3, TAG322
TAG322:
mfhi $1
addiu $2, $3, 0
mthi $1
lhu $4, 0($1)
TAG323:
sll $0, $0, 0
beq $4, $3, TAG324
mflo $4
bgez $4, TAG324
TAG324:
mult $4, $4
bgez $4, TAG325
mult $4, $4
bgez $4, TAG325
TAG325:
lw $1, 0($4)
lbu $3, -256($1)
lui $4, 7
xor $2, $3, $3
TAG326:
mfhi $3
mflo $3
mflo $3
sll $1, $2, 8
TAG327:
sra $1, $1, 15
lui $4, 12
lui $3, 8
beq $1, $1, TAG328
TAG328:
mflo $2
div $3, $3
sh $3, 0($2)
bltz $2, TAG329
TAG329:
sra $1, $2, 10
srlv $1, $2, $2
srlv $2, $2, $1
mthi $1
TAG330:
addi $2, $2, 0
mult $2, $2
mfhi $1
mtlo $2
TAG331:
mflo $4
ori $1, $1, 7
mthi $1
bltz $1, TAG332
TAG332:
andi $4, $1, 0
bne $1, $1, TAG333
multu $1, $4
lhu $2, 0($4)
TAG333:
beq $2, $2, TAG334
ori $4, $2, 1
andi $1, $2, 8
beq $4, $4, TAG334
TAG334:
mfhi $4
slt $2, $4, $1
lb $3, 0($1)
mult $1, $1
TAG335:
lui $2, 8
lui $2, 13
sll $0, $0, 0
sh $2, 0($3)
TAG336:
lui $4, 10
beq $4, $3, TAG337
sll $0, $0, 0
mthi $4
TAG337:
blez $3, TAG338
lhu $3, 0($3)
bne $3, $3, TAG338
sh $3, 0($3)
TAG338:
blez $3, TAG339
mfhi $2
srav $3, $2, $3
mtlo $3
TAG339:
subu $4, $3, $3
mtlo $3
lui $1, 10
mtlo $3
TAG340:
mflo $3
mfhi $2
sll $0, $0, 0
ori $3, $3, 15
TAG341:
xor $4, $3, $3
bgtz $3, TAG342
lui $4, 10
slti $3, $4, 14
TAG342:
sb $3, 0($3)
lb $3, 0($3)
lui $4, 0
nor $1, $3, $3
TAG343:
mflo $3
lh $2, 0($3)
mthi $1
sh $2, 0($2)
TAG344:
bne $2, $2, TAG345
mthi $2
mthi $2
andi $3, $2, 7
TAG345:
lui $2, 1
bltz $3, TAG346
mfhi $1
sllv $3, $1, $1
TAG346:
bgez $3, TAG347
srav $4, $3, $3
mult $4, $4
lui $2, 5
TAG347:
sll $0, $0, 0
beq $2, $2, TAG348
lui $4, 14
divu $2, $4
TAG348:
beq $4, $4, TAG349
addiu $4, $4, 5
lui $4, 11
bne $4, $4, TAG349
TAG349:
sll $0, $0, 0
multu $4, $4
bne $4, $4, TAG350
mflo $4
TAG350:
lui $2, 3
xori $4, $4, 2
div $2, $4
slt $1, $4, $2
TAG351:
lui $3, 1
slti $3, $3, 5
addi $1, $3, 9
bltz $3, TAG352
TAG352:
lbu $1, 0($1)
mthi $1
lui $3, 6
lui $2, 15
TAG353:
beq $2, $2, TAG354
sll $0, $0, 0
mtlo $2
blez $2, TAG354
TAG354:
mflo $3
mflo $4
mflo $3
bne $3, $4, TAG355
TAG355:
lui $1, 8
multu $1, $1
sll $0, $0, 0
lui $2, 2
TAG356:
mtlo $2
mflo $4
blez $2, TAG357
xor $1, $4, $4
TAG357:
sw $1, 0($1)
multu $1, $1
beq $1, $1, TAG358
mtlo $1
TAG358:
lb $3, 0($1)
ori $4, $1, 15
lbu $4, 0($3)
sra $2, $4, 5
TAG359:
bne $2, $2, TAG360
mult $2, $2
mfhi $3
mult $3, $3
TAG360:
beq $3, $3, TAG361
mflo $2
mthi $3
sll $2, $3, 15
TAG361:
mflo $4
bne $2, $4, TAG362
mfhi $3
lui $1, 12
TAG362:
lui $1, 0
lui $1, 0
multu $1, $1
mtlo $1
TAG363:
mfhi $2
mflo $3
mfhi $1
bne $1, $1, TAG364
TAG364:
slt $3, $1, $1
lui $3, 2
div $1, $3
andi $1, $3, 2
TAG365:
mthi $1
blez $1, TAG366
mfhi $2
lui $3, 7
TAG366:
slti $4, $3, 13
bne $4, $3, TAG367
sll $0, $0, 0
mflo $4
TAG367:
sh $4, 0($4)
xori $3, $4, 2
mfhi $1
or $2, $4, $1
TAG368:
bne $2, $2, TAG369
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG369
TAG369:
sll $1, $2, 14
and $4, $2, $2
bltz $2, TAG370
lui $4, 11
TAG370:
multu $4, $4
blez $4, TAG371
multu $4, $4
mthi $4
TAG371:
sll $0, $0, 0
lb $4, 0($2)
lui $2, 5
sll $0, $0, 0
TAG372:
mfhi $2
mult $2, $2
addiu $1, $2, 1
addu $1, $1, $1
TAG373:
bgtz $1, TAG374
divu $1, $1
lbu $4, 0($1)
bgtz $4, TAG374
TAG374:
sb $4, 0($4)
bgez $4, TAG375
mthi $4
blez $4, TAG375
TAG375:
mfhi $4
bne $4, $4, TAG376
lw $3, 0($4)
mult $4, $3
TAG376:
mult $3, $3
mflo $4
bne $3, $3, TAG377
lbu $1, 0($4)
TAG377:
lb $3, 0($1)
or $1, $3, $3
bgez $1, TAG378
mtlo $3
TAG378:
lui $4, 8
blez $1, TAG379
mthi $4
mult $4, $1
TAG379:
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG380
mult $3, $4
TAG380:
mtlo $3
beq $3, $3, TAG381
sh $3, 0($3)
bgez $3, TAG381
TAG381:
lb $1, 0($3)
ori $3, $3, 9
lb $4, 0($3)
mthi $4
TAG382:
lui $4, 7
mflo $1
mtlo $4
lui $2, 5
TAG383:
div $2, $2
bgtz $2, TAG384
mtlo $2
sra $4, $2, 4
TAG384:
srl $4, $4, 8
bgtz $4, TAG385
mtlo $4
sw $4, 0($4)
TAG385:
mtlo $4
divu $4, $4
multu $4, $4
lui $2, 9
TAG386:
sll $0, $0, 0
bne $2, $2, TAG387
sll $0, $0, 0
bne $3, $3, TAG387
TAG387:
sltu $3, $3, $3
sh $3, 0($3)
lui $4, 2
lw $3, 0($3)
TAG388:
mthi $3
lbu $2, 0($3)
mthi $2
slt $4, $3, $2
TAG389:
sllv $3, $4, $4
mflo $2
sll $0, $0, 0
xori $4, $4, 12
TAG390:
mfhi $3
beq $4, $4, TAG391
addiu $4, $3, 15
multu $4, $3
TAG391:
addu $1, $4, $4
beq $1, $4, TAG392
sb $4, 0($4)
lui $1, 14
TAG392:
mflo $2
or $1, $1, $2
lui $4, 13
mtlo $4
TAG393:
beq $4, $4, TAG394
mtlo $4
mult $4, $4
bgez $4, TAG394
TAG394:
sll $0, $0, 0
bgez $4, TAG395
lui $2, 4
mfhi $2
TAG395:
multu $2, $2
sll $0, $0, 0
bne $2, $4, TAG396
subu $2, $4, $2
TAG396:
mflo $2
bne $2, $2, TAG397
mfhi $2
addu $2, $2, $2
TAG397:
sltiu $4, $2, 1
srl $4, $4, 15
sw $4, 0($2)
bltz $4, TAG398
TAG398:
multu $4, $4
mtlo $4
lb $2, 0($4)
lb $3, 0($4)
TAG399:
lhu $4, 0($3)
nor $1, $3, $4
lbu $4, 0($3)
lui $4, 3
TAG400:
mfhi $1
or $1, $1, $4
mflo $1
bne $1, $1, TAG401
TAG401:
mflo $3
sw $3, 0($3)
lbu $3, 0($3)
beq $3, $1, TAG402
TAG402:
lw $4, 0($3)
mthi $3
mflo $4
lui $1, 8
TAG403:
bltz $1, TAG404
xori $4, $1, 3
lui $1, 15
bgtz $1, TAG404
TAG404:
multu $1, $1
srlv $4, $1, $1
lui $4, 4
beq $1, $1, TAG405
TAG405:
mthi $4
beq $4, $4, TAG406
sll $0, $0, 0
mtlo $4
TAG406:
and $4, $2, $2
mflo $4
mtlo $4
lhu $4, 0($2)
TAG407:
bgtz $4, TAG408
sw $4, 0($4)
bgez $4, TAG408
nor $3, $4, $4
TAG408:
ori $4, $3, 8
mfhi $2
bgtz $3, TAG409
sll $0, $0, 0
TAG409:
bne $2, $2, TAG410
lui $1, 8
bne $1, $1, TAG410
xor $3, $1, $2
TAG410:
addu $2, $3, $3
addu $2, $3, $2
sllv $2, $2, $2
divu $3, $2
TAG411:
divu $2, $2
mthi $2
mflo $3
subu $4, $3, $3
TAG412:
lb $4, 0($4)
sll $4, $4, 14
sh $4, 0($4)
sw $4, 0($4)
TAG413:
mult $4, $4
mfhi $2
sra $2, $4, 13
lw $4, 0($2)
TAG414:
lh $2, 0($4)
beq $4, $4, TAG415
mthi $4
sub $2, $4, $4
TAG415:
lh $2, 0($2)
lbu $3, 0($2)
blez $2, TAG416
sub $3, $2, $3
TAG416:
sw $3, 0($3)
mflo $4
mtlo $3
sub $2, $3, $3
TAG417:
mult $2, $2
mfhi $2
mthi $2
sltiu $2, $2, 4
TAG418:
mflo $2
sh $2, 0($2)
lw $2, 0($2)
bgtz $2, TAG419
TAG419:
lui $2, 15
bne $2, $2, TAG420
sll $0, $0, 0
sll $0, $0, 0
TAG420:
lui $3, 3
bgez $1, TAG421
mtlo $3
bne $1, $1, TAG421
TAG421:
srlv $1, $3, $3
ori $2, $3, 13
addiu $1, $2, 4
lui $1, 10
TAG422:
subu $2, $1, $1
blez $2, TAG423
divu $1, $1
sra $4, $2, 9
TAG423:
lui $4, 5
mthi $4
mtlo $4
sll $0, $0, 0
TAG424:
mult $4, $4
lui $3, 2
srl $2, $3, 4
div $3, $2
TAG425:
divu $2, $2
sb $2, -8192($2)
beq $2, $2, TAG426
mtlo $2
TAG426:
sll $0, $0, 0
lui $1, 12
sh $2, -8192($2)
blez $1, TAG427
TAG427:
mfhi $1
sra $4, $1, 13
beq $1, $1, TAG428
nor $4, $1, $1
TAG428:
beq $4, $4, TAG429
lui $3, 8
mfhi $4
mthi $4
TAG429:
lui $2, 6
addu $3, $4, $2
sll $0, $0, 0
mflo $2
TAG430:
sllv $1, $2, $2
lh $3, -8192($1)
mtlo $1
bne $1, $3, TAG431
TAG431:
sw $3, -8192($3)
multu $3, $3
srav $2, $3, $3
sltu $2, $3, $3
TAG432:
lbu $1, 0($2)
beq $1, $2, TAG433
mflo $3
bne $3, $2, TAG433
TAG433:
srlv $4, $3, $3
sltiu $1, $4, 11
mflo $1
bgtz $3, TAG434
TAG434:
srlv $3, $1, $1
bne $1, $1, TAG435
lui $2, 1
srl $4, $2, 11
TAG435:
sh $4, 0($4)
subu $2, $4, $4
addu $4, $2, $2
sltiu $3, $4, 11
TAG436:
mult $3, $3
sb $3, 0($3)
div $3, $3
sb $3, 0($3)
TAG437:
divu $3, $3
lui $4, 3
lb $1, 0($3)
slti $1, $3, 5
TAG438:
bne $1, $1, TAG439
lbu $3, 0($1)
sltu $4, $3, $3
sra $2, $1, 1
TAG439:
sh $2, 0($2)
mflo $2
lui $4, 4
bne $4, $2, TAG440
TAG440:
mult $4, $4
mtlo $4
sll $0, $0, 0
slt $2, $4, $4
TAG441:
mfhi $2
lw $1, 0($2)
bne $1, $2, TAG442
mfhi $1
TAG442:
mfhi $2
lh $3, 0($2)
mtlo $3
mflo $2
TAG443:
beq $2, $2, TAG444
addiu $2, $2, 8
mtlo $2
lui $1, 12
TAG444:
bgtz $1, TAG445
sw $1, 0($1)
slti $3, $1, 15
mflo $3
TAG445:
bgtz $3, TAG446
xor $1, $3, $3
lh $1, 0($1)
bltz $1, TAG446
TAG446:
sh $1, 0($1)
mfhi $4
lui $3, 3
mflo $1
TAG447:
bne $1, $1, TAG448
mfhi $2
sllv $1, $1, $2
bne $1, $2, TAG448
TAG448:
mthi $1
addiu $1, $1, 0
mfhi $4
beq $4, $1, TAG449
TAG449:
sll $0, $0, 0
multu $4, $4
divu $4, $4
mthi $4
TAG450:
or $2, $4, $4
sll $0, $0, 0
beq $4, $2, TAG451
nor $3, $2, $2
TAG451:
mthi $3
bne $3, $3, TAG452
mthi $3
mflo $3
TAG452:
lui $1, 13
bne $3, $1, TAG453
div $1, $3
sltiu $2, $3, 9
TAG453:
beq $2, $2, TAG454
mflo $4
sltu $3, $2, $2
sh $3, 0($4)
TAG454:
bne $3, $3, TAG455
mthi $3
mtlo $3
and $3, $3, $3
TAG455:
slti $1, $3, 7
mthi $1
sb $1, 0($3)
mult $1, $3
TAG456:
mflo $1
blez $1, TAG457
subu $1, $1, $1
lui $3, 11
TAG457:
mthi $3
mtlo $3
mtlo $3
bne $3, $3, TAG458
TAG458:
sll $0, $0, 0
bgez $3, TAG459
slti $3, $3, 10
lbu $4, 0($3)
TAG459:
sll $0, $0, 0
mtlo $4
srl $3, $2, 11
mthi $4
TAG460:
mthi $3
lui $4, 15
lui $4, 11
mfhi $3
TAG461:
bgtz $3, TAG462
sh $3, -192($3)
lbu $2, 0($3)
lui $1, 7
TAG462:
bgtz $1, TAG463
mtlo $1
mult $1, $1
lui $3, 7
TAG463:
mfhi $2
bne $2, $3, TAG464
and $4, $3, $3
srav $4, $2, $4
TAG464:
mflo $1
sltu $4, $1, $4
mult $4, $4
sw $4, 0($1)
TAG465:
ori $1, $4, 7
sra $2, $4, 4
mtlo $2
lui $3, 0
TAG466:
bne $3, $3, TAG467
lui $1, 4
lui $1, 1
lui $3, 7
TAG467:
mfhi $1
srl $2, $1, 10
multu $1, $2
bgez $1, TAG468
TAG468:
multu $2, $2
bltz $2, TAG469
lui $4, 2
divu $4, $4
TAG469:
mult $4, $4
bltz $4, TAG470
subu $1, $4, $4
lhu $3, 0($1)
TAG470:
mfhi $2
lui $1, 13
mflo $4
slti $1, $1, 3
TAG471:
multu $1, $1
lw $2, 0($1)
bne $1, $1, TAG472
lui $2, 11
TAG472:
mthi $2
beq $2, $2, TAG473
addu $2, $2, $2
lui $2, 8
TAG473:
mfhi $3
mflo $1
mfhi $4
bgtz $3, TAG474
TAG474:
srl $1, $4, 1
sll $0, $0, 0
lui $1, 11
sll $0, $0, 0
TAG475:
mtlo $4
blez $4, TAG476
ori $3, $4, 6
lui $1, 9
TAG476:
blez $1, TAG477
and $2, $1, $1
mult $1, $2
mflo $2
TAG477:
multu $2, $2
srl $4, $2, 7
xor $3, $4, $2
addiu $3, $4, 3
TAG478:
bltz $3, TAG479
sllv $3, $3, $3
lui $3, 2
sll $0, $0, 0
TAG479:
blez $1, TAG480
mflo $1
bltz $1, TAG480
sll $1, $1, 3
TAG480:
lui $1, 3
beq $1, $1, TAG481
multu $1, $1
slti $2, $1, 11
TAG481:
sub $4, $2, $2
lui $3, 8
mtlo $3
lbu $4, 0($2)
TAG482:
beq $4, $4, TAG483
sb $4, 0($4)
mthi $4
sh $4, 0($4)
TAG483:
lbu $3, 0($4)
mfhi $1
sb $3, 0($1)
lbu $3, 0($3)
TAG484:
lui $3, 4
lui $4, 9
sltiu $1, $3, 6
slti $2, $3, 12
TAG485:
bltz $2, TAG486
mthi $2
bne $2, $2, TAG486
lw $1, 0($2)
TAG486:
mflo $2
mtlo $1
bltz $1, TAG487
mthi $1
TAG487:
divu $2, $2
div $2, $2
xori $4, $2, 13
mfhi $2
TAG488:
lb $2, 0($2)
sb $2, 0($2)
mtlo $2
lui $1, 6
TAG489:
sll $0, $0, 0
bltz $1, TAG490
mflo $1
sb $1, 0($1)
TAG490:
sb $1, 0($1)
mthi $1
lui $2, 0
lui $2, 15
TAG491:
srav $2, $2, $2
lui $4, 10
lui $2, 13
mflo $1
TAG492:
subu $3, $1, $1
sb $3, 0($1)
addu $4, $1, $3
divu $1, $1
TAG493:
lb $1, 0($4)
addu $3, $4, $1
bne $4, $3, TAG494
mtlo $1
TAG494:
subu $4, $3, $3
andi $2, $4, 1
mtlo $3
blez $4, TAG495
TAG495:
lui $2, 6
ori $2, $2, 13
sra $1, $2, 12
sll $0, $0, 0
TAG496:
beq $1, $1, TAG497
divu $1, $1
lui $1, 9
mfhi $4
TAG497:
ori $1, $4, 8
mfhi $1
beq $1, $1, TAG498
sh $1, 0($1)
TAG498:
lbu $4, 0($1)
lui $4, 11
mtlo $4
lui $2, 10
TAG499:
beq $2, $2, TAG500
sll $0, $0, 0
lui $1, 15
bne $4, $1, TAG500
TAG500:
lhu $3, 0($1)
lui $2, 12
sh $1, 0($1)
sra $3, $2, 11
TAG501:
mtlo $3
sra $2, $3, 12
bne $3, $2, TAG502
mtlo $2
TAG502:
mthi $2
sb $2, 0($2)
lhu $2, 0($2)
multu $2, $2
TAG503:
sub $4, $2, $2
lh $1, 0($4)
bne $2, $4, TAG504
add $3, $2, $4
TAG504:
mthi $3
mult $3, $3
xori $4, $3, 2
lui $3, 14
TAG505:
beq $3, $3, TAG506
sll $0, $0, 0
srav $3, $3, $3
srl $4, $3, 8
TAG506:
mtlo $4
divu $4, $4
srlv $1, $4, $4
mfhi $4
TAG507:
sh $4, 0($4)
lui $1, 6
subu $3, $1, $4
mflo $3
TAG508:
mthi $3
sb $3, 0($3)
addu $1, $3, $3
lbu $1, 0($1)
TAG509:
blez $1, TAG510
mtlo $1
beq $1, $1, TAG510
nor $3, $1, $1
TAG510:
beq $3, $3, TAG511
sltu $3, $3, $3
lhu $2, 0($3)
mfhi $1
TAG511:
bgtz $1, TAG512
srl $4, $1, 15
blez $1, TAG512
lui $4, 8
TAG512:
bgtz $4, TAG513
sll $0, $0, 0
sh $4, 0($4)
mult $3, $3
TAG513:
and $3, $3, $3
mult $3, $3
mult $3, $3
lui $1, 0
TAG514:
sltu $4, $1, $1
bltz $4, TAG515
mthi $4
lhu $2, 0($1)
TAG515:
sw $2, -256($2)
divu $2, $2
mfhi $2
mult $2, $2
TAG516:
addiu $4, $2, 15
slt $3, $2, $2
multu $4, $2
lui $3, 3
TAG517:
or $3, $3, $3
subu $4, $3, $3
mflo $4
sll $0, $0, 0
TAG518:
bgez $1, TAG519
mtlo $1
lui $3, 5
slti $4, $3, 4
TAG519:
andi $4, $4, 2
mult $4, $4
mtlo $4
sltiu $3, $4, 1
TAG520:
beq $3, $3, TAG521
mflo $1
mthi $1
mflo $2
TAG521:
sb $2, 0($2)
slti $1, $2, 9
multu $1, $2
mthi $2
TAG522:
mfhi $4
beq $4, $1, TAG523
sb $1, 0($1)
bne $1, $1, TAG523
TAG523:
mthi $4
lhu $2, 0($4)
sub $4, $2, $4
sll $4, $4, 11
TAG524:
sll $0, $0, 0
lbu $3, 0($1)
mtlo $4
slt $2, $4, $1
TAG525:
sw $2, 0($2)
lh $2, 0($2)
multu $2, $2
lui $2, 2
TAG526:
bgez $2, TAG527
sra $3, $2, 6
sub $3, $2, $3
slti $4, $3, 1
TAG527:
mtlo $4
bgez $4, TAG528
sll $0, $0, 0
mtlo $4
TAG528:
bgtz $2, TAG529
srl $1, $2, 2
mfhi $4
lhu $1, 0($2)
TAG529:
sll $0, $0, 0
sllv $4, $1, $1
nor $4, $4, $1
lui $2, 13
TAG530:
mult $2, $2
lui $2, 15
bgtz $2, TAG531
xori $3, $2, 0
TAG531:
sll $0, $0, 0
mfhi $3
bne $3, $3, TAG532
slti $4, $3, 15
TAG532:
addi $2, $4, 2
bltz $2, TAG533
lb $3, 0($4)
bne $2, $4, TAG533
TAG533:
multu $3, $3
lhu $4, 0($3)
lui $3, 3
mtlo $3
TAG534:
mthi $3
subu $4, $3, $3
lh $4, 0($4)
mthi $4
TAG535:
lh $1, 0($4)
nor $1, $4, $4
xori $4, $1, 11
andi $2, $4, 3
TAG536:
bgtz $2, TAG537
mtlo $2
lhu $3, 0($2)
mthi $3
TAG537:
multu $3, $3
sllv $2, $3, $3
lbu $3, 0($3)
mtlo $3
TAG538:
slt $1, $3, $3
sb $3, 0($3)
lui $3, 3
mthi $3
TAG539:
mfhi $4
xor $1, $4, $3
mfhi $4
and $1, $1, $4
TAG540:
mfhi $2
sltu $1, $1, $1
sllv $1, $2, $2
addiu $2, $1, 6
TAG541:
subu $2, $2, $2
lui $4, 13
sra $2, $2, 1
bgez $2, TAG542
TAG542:
lw $4, 0($2)
andi $2, $2, 15
mflo $4
lui $4, 6
TAG543:
div $4, $4
sll $1, $4, 13
bne $1, $1, TAG544
sllv $3, $4, $1
TAG544:
sll $0, $0, 0
sll $0, $0, 0
div $2, $3
sll $0, $0, 0
TAG545:
lui $2, 15
mult $2, $2
bltz $4, TAG546
mflo $4
TAG546:
sll $3, $4, 0
sb $4, 0($3)
mtlo $4
mfhi $2
TAG547:
sll $0, $0, 0
mflo $2
bne $2, $3, TAG548
mult $3, $2
TAG548:
sltu $1, $2, $2
xori $2, $1, 14
blez $2, TAG549
ori $2, $1, 8
TAG549:
lh $3, 0($2)
mtlo $2
sb $3, -256($3)
mthi $2
TAG550:
blez $3, TAG551
mult $3, $3
sw $3, -256($3)
bgtz $3, TAG551
TAG551:
mflo $4
mtlo $3
mtlo $3
divu $4, $3
TAG552:
mfhi $4
blez $4, TAG553
multu $4, $4
lui $3, 13
TAG553:
beq $3, $3, TAG554
lh $3, -256($3)
lui $2, 13
bgez $3, TAG554
TAG554:
ori $1, $2, 11
multu $1, $2
mfhi $4
and $2, $4, $2
TAG555:
sh $2, 0($2)
beq $2, $2, TAG556
lui $3, 2
sub $1, $2, $3
TAG556:
mthi $1
addu $4, $1, $1
lui $4, 8
lui $3, 3
TAG557:
xori $1, $3, 1
lui $4, 10
mtlo $4
srav $3, $3, $3
TAG558:
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG559
srav $1, $3, $3
TAG559:
mtlo $1
addiu $1, $1, 11
sll $0, $0, 0
sll $0, $0, 0
TAG560:
bltz $2, TAG561
mfhi $2
div $2, $2
lb $4, 0($2)
TAG561:
bgez $4, TAG562
mult $4, $4
sltu $3, $4, $4
bgtz $4, TAG562
TAG562:
mthi $3
bne $3, $3, TAG563
mtlo $3
sll $0, $0, 0
TAG563:
lbu $3, 0($2)
sb $3, 0($2)
div $3, $2
bgtz $3, TAG564
TAG564:
sb $3, 0($3)
mthi $3
lw $2, 0($3)
sh $3, 0($3)
TAG565:
mtlo $2
mflo $3
sltiu $1, $3, 9
nor $3, $3, $1
TAG566:
mult $3, $3
mtlo $3
sltu $3, $3, $3
beq $3, $3, TAG567
TAG567:
mult $3, $3
lh $2, 0($3)
mfhi $4
lw $3, 0($2)
TAG568:
multu $3, $3
lw $2, 0($3)
mflo $2
sw $2, 0($2)
TAG569:
bgtz $2, TAG570
lui $3, 3
sltiu $2, $3, 15
slti $3, $3, 4
TAG570:
sh $3, 0($3)
lui $3, 3
lui $2, 13
divu $3, $3
TAG571:
addiu $4, $2, 14
mult $4, $2
mfhi $2
mthi $2
TAG572:
slti $4, $2, 8
mtlo $4
mthi $2
multu $4, $4
TAG573:
mult $4, $4
sub $2, $4, $4
sb $4, 0($4)
sh $2, 0($4)
TAG574:
srl $1, $2, 5
multu $1, $2
add $2, $1, $2
sh $1, 0($2)
TAG575:
lb $4, 0($2)
beq $4, $4, TAG576
sb $4, 0($2)
bgez $2, TAG576
TAG576:
mult $4, $4
lui $3, 9
beq $3, $4, TAG577
mfhi $1
TAG577:
lbu $3, 0($1)
bne $3, $1, TAG578
sra $1, $1, 0
mfhi $4
TAG578:
bltz $4, TAG579
sb $4, 0($4)
sw $4, 0($4)
mult $4, $4
TAG579:
mult $4, $4
xori $1, $4, 5
lui $3, 4
sltu $2, $3, $4
TAG580:
multu $2, $2
lhu $3, 0($2)
slt $4, $2, $2
multu $3, $3
TAG581:
lui $1, 4
mthi $4
beq $1, $4, TAG582
mthi $4
TAG582:
sll $0, $0, 0
beq $1, $1, TAG583
sll $0, $0, 0
lui $1, 9
TAG583:
sll $0, $0, 0
mthi $1
div $1, $1
srl $2, $1, 4
TAG584:
addiu $1, $2, 7
mfhi $3
andi $2, $3, 8
lw $2, -16391($1)
TAG585:
slti $4, $2, 5
ori $1, $2, 4
mflo $2
mthi $1
TAG586:
slt $4, $2, $2
xori $3, $4, 4
bgez $3, TAG587
lui $2, 3
TAG587:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG588
div $2, $2
TAG588:
sll $0, $0, 0
addiu $3, $2, 2
mfhi $3
divu $3, $2
TAG589:
addu $4, $3, $3
mflo $4
andi $2, $4, 3
slti $1, $3, 7
TAG590:
lbu $4, 0($1)
andi $3, $4, 9
sh $3, 0($3)
lui $2, 13
TAG591:
lui $2, 3
nor $4, $2, $2
multu $2, $4
sll $0, $0, 0
TAG592:
div $4, $4
srl $4, $4, 3
lui $1, 0
sllv $3, $1, $4
TAG593:
mtlo $3
lh $4, 0($3)
mult $3, $4
sll $3, $4, 3
TAG594:
lui $1, 2
bne $1, $1, TAG595
mflo $4
sll $0, $0, 0
TAG595:
slt $2, $3, $3
lui $2, 0
multu $3, $2
lui $4, 14
TAG596:
sll $0, $0, 0
lui $1, 11
mthi $1
sll $0, $0, 0
TAG597:
multu $1, $1
beq $1, $1, TAG598
sll $0, $0, 0
mfhi $3
TAG598:
lui $1, 3
div $1, $1
lui $3, 0
mfhi $3
TAG599:
bltz $3, TAG600
sw $3, 0($3)
mult $3, $3
bgez $3, TAG600
TAG600:
mfhi $1
mfhi $4
mult $1, $4
mult $4, $1
TAG601:
bgez $4, TAG602
sra $3, $4, 2
mthi $3
bgtz $3, TAG602
TAG602:
lui $3, 1
srl $2, $3, 13
mthi $2
lui $2, 12
TAG603:
beq $2, $2, TAG604
mthi $2
sltiu $2, $2, 12
mflo $4
TAG604:
beq $4, $4, TAG605
mflo $4
sra $1, $4, 1
sb $4, 0($1)
TAG605:
mthi $1
blez $1, TAG606
multu $1, $1
lw $1, 0($1)
TAG606:
slti $4, $1, 2
bne $1, $1, TAG607
sb $1, 0($4)
ori $4, $4, 9
TAG607:
xori $4, $4, 8
sb $4, 0($4)
blez $4, TAG608
lb $2, 0($4)
TAG608:
lui $2, 15
lui $2, 15
srlv $4, $2, $2
div $2, $4
TAG609:
mult $4, $4
sll $0, $0, 0
multu $1, $1
subu $4, $1, $4
TAG610:
sll $0, $0, 0
div $4, $4
srl $1, $2, 1
mflo $2
TAG611:
lui $2, 14
lui $2, 14
blez $2, TAG612
sll $0, $0, 0
TAG612:
bne $4, $4, TAG613
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
TAG613:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 10
beq $2, $3, TAG614
TAG614:
sll $0, $0, 0
lui $3, 2
sll $3, $3, 14
bgtz $3, TAG615
TAG615:
mfhi $2
mflo $1
mthi $2
sll $0, $0, 0
TAG616:
lb $4, 0($1)
sb $1, 0($4)
lui $4, 1
mflo $1
TAG617:
sb $1, 0($1)
blez $1, TAG618
slt $4, $1, $1
nor $3, $4, $1
TAG618:
sll $3, $3, 9
beq $3, $3, TAG619
mflo $3
mult $3, $3
TAG619:
mfhi $1
lb $3, 0($3)
mthi $3
divu $1, $3
TAG620:
mflo $4
mflo $2
sll $3, $4, 4
mthi $2
TAG621:
multu $3, $3
blez $3, TAG622
ori $4, $3, 9
mtlo $4
TAG622:
bgtz $4, TAG623
sll $4, $4, 8
mult $4, $4
multu $4, $4
TAG623:
sb $4, -2304($4)
mult $4, $4
beq $4, $4, TAG624
lhu $3, -2304($4)
TAG624:
sll $0, $0, 0
srav $4, $3, $3
bne $4, $4, TAG625
mflo $3
TAG625:
beq $3, $3, TAG626
mthi $3
lui $4, 13
lui $1, 10
TAG626:
bltz $1, TAG627
xori $1, $1, 14
sllv $2, $1, $1
divu $1, $1
TAG627:
bne $2, $2, TAG628
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG628:
mfhi $3
sra $4, $4, 1
mflo $3
lb $2, 0($4)
TAG629:
sh $2, 0($2)
mult $2, $2
lui $1, 14
lui $4, 0
TAG630:
sh $4, 0($4)
blez $4, TAG631
xori $3, $4, 15
sw $3, 0($3)
TAG631:
mtlo $3
sllv $2, $3, $3
mtlo $2
multu $3, $2
TAG632:
beq $2, $2, TAG633
sll $0, $0, 0
mult $2, $2
lui $2, 9
TAG633:
sll $0, $0, 0
bgtz $2, TAG634
sll $0, $0, 0
sw $4, 0($4)
TAG634:
bgtz $4, TAG635
mflo $3
bgtz $3, TAG635
lui $1, 3
TAG635:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
slti $3, $1, 8
TAG636:
lui $1, 7
slti $3, $3, 5
srav $4, $3, $3
slt $3, $1, $1
TAG637:
and $1, $3, $3
subu $1, $3, $1
bgez $1, TAG638
mfhi $1
TAG638:
mthi $1
bne $1, $1, TAG639
mult $1, $1
addiu $3, $1, 3
TAG639:
bne $3, $3, TAG640
mtlo $3
mfhi $3
bgtz $3, TAG640
TAG640:
mfhi $2
lui $1, 13
lui $1, 1
mfhi $2
TAG641:
mthi $2
mfhi $3
lui $3, 8
sll $0, $0, 0
TAG642:
sll $0, $0, 0
mfhi $1
slti $3, $3, 14
mflo $3
TAG643:
beq $3, $3, TAG644
slti $1, $3, 5
mfhi $1
beq $3, $1, TAG644
TAG644:
lui $2, 11
mthi $2
bne $2, $1, TAG645
srlv $3, $2, $2
TAG645:
beq $3, $3, TAG646
lui $3, 11
lui $3, 1
lui $1, 6
TAG646:
mflo $2
or $3, $2, $1
addiu $1, $3, 10
slt $3, $1, $2
TAG647:
sh $3, 0($3)
lui $3, 12
divu $3, $3
sll $0, $0, 0
TAG648:
sll $0, $0, 0
slti $4, $3, 0
sh $4, 0($4)
bgtz $4, TAG649
TAG649:
lhu $1, 0($4)
mult $4, $4
mflo $2
bne $4, $1, TAG650
TAG650:
sltiu $1, $2, 8
lb $1, 0($1)
mthi $2
mfhi $4
TAG651:
sh $4, 0($4)
slti $3, $4, 11
mult $3, $4
lui $4, 13
TAG652:
mtlo $4
multu $4, $4
bgez $4, TAG653
mult $4, $4
TAG653:
sll $0, $0, 0
mult $4, $4
bgtz $4, TAG654
mflo $3
TAG654:
lui $1, 15
beq $1, $1, TAG655
sll $3, $1, 15
mthi $1
TAG655:
blez $3, TAG656
subu $3, $3, $3
bgez $3, TAG656
lui $2, 8
TAG656:
sh $2, 0($2)
beq $2, $2, TAG657
mtlo $2
sh $2, 0($2)
TAG657:
and $3, $2, $2
lb $3, 0($2)
lw $3, 0($3)
lbu $4, 0($3)
TAG658:
sb $4, 0($4)
mtlo $4
mflo $4
sb $4, 0($4)
TAG659:
mthi $4
beq $4, $4, TAG660
mult $4, $4
div $4, $4
TAG660:
mfhi $3
srl $1, $3, 14
mfhi $3
bne $4, $3, TAG661
TAG661:
mtlo $3
mflo $1
srl $4, $1, 8
mfhi $1
TAG662:
lui $3, 1
bltz $1, TAG663
mfhi $3
mult $3, $3
TAG663:
bne $3, $3, TAG664
mult $3, $3
beq $3, $3, TAG664
sb $3, 0($3)
TAG664:
mflo $2
sw $2, 0($2)
mfhi $4
mtlo $4
TAG665:
add $2, $4, $4
xori $4, $4, 4
lui $1, 6
mult $4, $4
TAG666:
lui $2, 1
sll $0, $0, 0
bltz $1, TAG667
sll $0, $0, 0
TAG667:
bne $1, $1, TAG668
mtlo $1
or $3, $1, $1
sll $0, $0, 0
TAG668:
sll $0, $0, 0
subu $4, $1, $1
xori $1, $4, 2
lhu $4, 0($1)
TAG669:
sh $4, 0($4)
lb $4, 0($4)
mfhi $3
srlv $4, $3, $3
TAG670:
beq $4, $4, TAG671
sh $4, 0($4)
lb $1, 0($4)
bne $1, $4, TAG671
TAG671:
srlv $4, $1, $1
mult $1, $1
or $1, $4, $1
bltz $4, TAG672
TAG672:
div $1, $1
multu $1, $1
lbu $4, 0($1)
addiu $1, $4, 3
TAG673:
mfhi $1
blez $1, TAG674
srl $3, $1, 1
bgez $3, TAG674
TAG674:
mfhi $1
lui $3, 10
lui $4, 6
bgtz $3, TAG675
TAG675:
slt $1, $4, $4
bgez $4, TAG676
mthi $1
beq $1, $4, TAG676
TAG676:
mult $1, $1
slt $3, $1, $1
multu $3, $3
mfhi $2
TAG677:
lb $3, 0($2)
mtlo $2
multu $3, $3
multu $2, $3
TAG678:
addu $1, $3, $3
lh $2, 0($3)
mthi $1
bgtz $1, TAG679
TAG679:
sltiu $3, $2, 5
subu $1, $3, $3
lhu $2, 0($2)
lh $3, 0($1)
TAG680:
sb $3, 0($3)
bgtz $3, TAG681
lui $3, 1
mtlo $3
TAG681:
mflo $4
mthi $4
mfhi $1
lui $3, 12
TAG682:
mtlo $3
bgtz $3, TAG683
ori $1, $3, 0
sra $3, $1, 6
TAG683:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
addiu $2, $3, 15
TAG684:
mtlo $2
bne $2, $2, TAG685
mtlo $2
lui $1, 15
TAG685:
xori $2, $1, 9
mult $2, $2
divu $1, $1
bgez $1, TAG686
TAG686:
mfhi $1
beq $2, $2, TAG687
addu $1, $2, $1
mthi $1
TAG687:
ori $2, $1, 4
addiu $4, $2, 1
mthi $1
bgez $2, TAG688
TAG688:
srl $4, $4, 11
mult $4, $4
lhu $2, 0($4)
sb $4, 0($2)
TAG689:
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
lui $2, 4
TAG690:
mfhi $2
sh $2, 0($2)
xori $3, $2, 10
bgez $2, TAG691
TAG691:
lbu $4, 0($3)
mtlo $4
sb $3, 0($4)
blez $4, TAG692
TAG692:
div $4, $4
sh $4, 0($4)
mtlo $4
mflo $2
TAG693:
lb $3, 0($2)
lbu $1, 0($2)
bne $3, $2, TAG694
lb $4, 0($1)
TAG694:
mtlo $4
mflo $3
sll $3, $3, 7
lbu $4, -1280($3)
TAG695:
sub $2, $4, $4
mult $2, $4
blez $4, TAG696
lw $2, 0($2)
TAG696:
lh $3, 0($2)
lui $1, 1
mtlo $3
mtlo $1
TAG697:
lui $1, 11
multu $1, $1
div $1, $1
ori $2, $1, 1
TAG698:
sll $0, $0, 0
lui $4, 15
multu $3, $3
and $1, $3, $3
TAG699:
lbu $1, 0($1)
mult $1, $1
multu $1, $1
bltz $1, TAG700
TAG700:
subu $2, $1, $1
lui $1, 2
sll $0, $0, 0
or $2, $1, $1
TAG701:
slti $1, $2, 8
mtlo $2
sb $1, 0($1)
blez $1, TAG702
TAG702:
and $1, $1, $1
sra $4, $1, 13
sh $1, 0($4)
lui $4, 2
TAG703:
addu $1, $4, $4
mflo $2
sll $0, $0, 0
lui $2, 3
TAG704:
bgez $2, TAG705
sll $0, $0, 0
blez $2, TAG705
mthi $2
TAG705:
sll $0, $0, 0
sll $0, $0, 0
addu $1, $1, $1
beq $1, $1, TAG706
TAG706:
mthi $1
bgez $1, TAG707
mtlo $1
lui $2, 7
TAG707:
xori $1, $2, 7
sll $0, $0, 0
addiu $3, $3, 10
mthi $2
TAG708:
ori $4, $3, 13
divu $4, $4
lui $1, 0
div $1, $4
TAG709:
sh $1, 0($1)
mtlo $1
lb $2, 0($1)
beq $1, $1, TAG710
TAG710:
sub $3, $2, $2
multu $3, $2
mflo $3
bgtz $3, TAG711
TAG711:
lui $3, 6
sll $0, $0, 0
bne $2, $2, TAG712
subu $4, $2, $3
TAG712:
bltz $4, TAG713
srl $1, $4, 12
ori $2, $4, 6
mult $1, $2
TAG713:
sll $3, $2, 6
bne $2, $3, TAG714
mfhi $4
bgtz $4, TAG714
TAG714:
mfhi $3
multu $3, $3
multu $4, $4
multu $4, $3
TAG715:
lw $4, 0($3)
beq $4, $3, TAG716
slti $4, $4, 10
lhu $2, 0($3)
TAG716:
mtlo $2
sw $2, 0($2)
mult $2, $2
addu $4, $2, $2
TAG717:
ori $1, $4, 6
mflo $1
sh $4, 0($4)
sh $1, 0($4)
TAG718:
lbu $3, 0($1)
multu $3, $1
mult $1, $1
lui $2, 15
TAG719:
xori $4, $2, 4
blez $2, TAG720
mult $4, $4
multu $2, $2
TAG720:
sll $0, $0, 0
lui $2, 7
div $4, $2
mflo $3
TAG721:
multu $3, $3
mult $3, $3
lhu $2, 0($3)
mfhi $2
TAG722:
lb $2, 0($2)
addiu $3, $2, 7
or $2, $3, $3
sll $3, $2, 0
TAG723:
lui $1, 9
mfhi $4
bne $4, $3, TAG724
nor $1, $4, $4
TAG724:
bltz $1, TAG725
srl $1, $1, 4
lui $2, 4
sb $1, 0($1)
TAG725:
slt $3, $2, $2
mflo $2
mflo $4
mfhi $4
TAG726:
lui $2, 12
blez $4, TAG727
srav $3, $2, $4
bne $2, $2, TAG727
TAG727:
mult $3, $3
beq $3, $3, TAG728
mfhi $3
mthi $3
TAG728:
sb $3, -144($3)
sb $3, -144($3)
lh $1, -144($3)
addu $1, $3, $1
TAG729:
beq $1, $1, TAG730
sltu $1, $1, $1
lui $3, 5
xori $3, $1, 5
TAG730:
bgez $3, TAG731
mtlo $3
sltiu $2, $3, 4
ori $4, $2, 8
TAG731:
mthi $4
lui $2, 0
mthi $2
sb $2, 0($4)
TAG732:
srl $2, $2, 11
sw $2, 0($2)
bne $2, $2, TAG733
slt $2, $2, $2
TAG733:
sra $1, $2, 13
sll $3, $1, 2
lb $2, 0($3)
mtlo $2
TAG734:
lw $2, 0($2)
bne $2, $2, TAG735
multu $2, $2
bgez $2, TAG735
TAG735:
mflo $2
lui $2, 13
divu $2, $2
bgez $2, TAG736
TAG736:
mult $2, $2
mtlo $2
mult $2, $2
blez $2, TAG737
TAG737:
sll $0, $0, 0
mthi $2
lui $2, 1
beq $2, $2, TAG738
TAG738:
div $2, $2
div $2, $2
mthi $2
mtlo $2
TAG739:
sll $0, $0, 0
mthi $2
bne $2, $4, TAG740
xor $3, $2, $4
TAG740:
mthi $3
beq $3, $3, TAG741
lui $4, 12
mflo $2
TAG741:
lui $3, 4
sll $0, $0, 0
lui $2, 11
subu $3, $2, $2
TAG742:
lbu $4, 0($3)
sh $3, 0($4)
lui $1, 11
mtlo $3
TAG743:
mtlo $1
srl $4, $1, 10
addiu $1, $1, 10
mthi $1
TAG744:
mfhi $1
addiu $1, $1, 2
sll $0, $0, 0
mult $1, $1
TAG745:
bne $1, $1, TAG746
mthi $1
multu $1, $1
mult $1, $1
TAG746:
sll $0, $0, 0
mthi $1
mthi $1
bltz $4, TAG747
TAG747:
xori $2, $4, 13
xori $2, $4, 3
bne $4, $4, TAG748
ori $1, $2, 0
TAG748:
lui $2, 7
beq $1, $2, TAG749
srlv $3, $1, $1
sllv $4, $1, $3
TAG749:
srl $3, $4, 13
beq $4, $4, TAG750
lui $4, 2
beq $4, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop