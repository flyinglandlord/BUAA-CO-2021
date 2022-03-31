ori $1, $0, 11
ori $2, $0, 8
ori $3, $0, 1
ori $4, $0, 15
sw $2, 0($0)
sw $4, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $2, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $2, 40($0)
sw $1, 44($0)
sw $1, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $3, 124($0)
lui $2, 10
sll $0, $0, 0
mflo $3
mfhi $3
TAG1:
lbu $4, 0($3)
xori $3, $4, 13
xori $1, $3, 8
mflo $4
TAG2:
lhu $4, 0($4)
sw $4, 0($4)
mtlo $4
mult $4, $4
TAG3:
sb $4, 0($4)
lui $3, 10
bgtz $3, TAG4
or $4, $3, $4
TAG4:
lui $3, 6
mfhi $3
lbu $1, 0($3)
mflo $3
TAG5:
beq $3, $3, TAG6
lw $1, 0($3)
bltz $1, TAG6
sltu $2, $1, $3
TAG6:
sll $0, $0, 0
divu $2, $2
multu $2, $2
mfhi $1
TAG7:
sw $1, 0($1)
sltu $3, $1, $1
div $3, $1
mthi $1
TAG8:
lui $3, 0
lh $2, 0($3)
mflo $3
lui $2, 14
TAG9:
mthi $2
lui $3, 1
lui $4, 1
addu $1, $4, $4
TAG10:
sll $0, $0, 0
mflo $1
div $4, $4
sll $0, $0, 0
TAG11:
lb $4, 0($1)
div $4, $4
bltz $4, TAG12
mtlo $1
TAG12:
sw $4, 0($4)
sw $4, 0($4)
sw $4, 0($4)
bltz $4, TAG13
TAG13:
subu $3, $4, $4
sltu $2, $3, $4
srlv $1, $2, $2
srl $1, $2, 1
TAG14:
mthi $1
multu $1, $1
lui $1, 8
mtlo $1
TAG15:
srlv $2, $1, $1
sll $0, $0, 0
mflo $1
sll $3, $2, 12
TAG16:
beq $3, $3, TAG17
mthi $3
mthi $3
or $2, $3, $3
TAG17:
bgtz $2, TAG18
sll $0, $0, 0
mflo $3
mult $2, $3
TAG18:
lui $3, 10
lui $2, 7
lui $3, 2
blez $3, TAG19
TAG19:
sll $0, $0, 0
sll $0, $0, 0
sra $2, $3, 13
mthi $3
TAG20:
lui $4, 9
sll $0, $0, 0
mult $1, $2
sll $0, $0, 0
TAG21:
mthi $2
lw $3, 0($2)
bne $3, $2, TAG22
sb $3, 0($3)
TAG22:
srl $4, $3, 11
mtlo $4
nor $3, $3, $3
lw $2, 9($3)
TAG23:
bgtz $2, TAG24
nor $1, $2, $2
andi $4, $1, 14
bltz $2, TAG24
TAG24:
sb $4, 0($4)
multu $4, $4
lui $4, 15
xori $1, $4, 6
TAG25:
mflo $3
mfhi $4
lbu $2, 0($3)
bne $3, $4, TAG26
TAG26:
lh $4, 0($2)
srl $1, $2, 6
multu $4, $1
mflo $2
TAG27:
lb $1, 0($2)
beq $2, $2, TAG28
mthi $2
bgez $1, TAG28
TAG28:
mfhi $1
lhu $1, 0($1)
beq $1, $1, TAG29
multu $1, $1
TAG29:
lui $4, 6
lui $1, 5
srlv $4, $1, $1
lui $4, 8
TAG30:
bgtz $4, TAG31
mthi $4
xori $1, $4, 10
bne $1, $4, TAG31
TAG31:
lui $3, 10
sll $0, $0, 0
multu $3, $1
bltz $1, TAG32
TAG32:
sltiu $2, $3, 7
lui $3, 5
mflo $1
lui $3, 5
TAG33:
addiu $3, $3, 3
divu $3, $3
beq $3, $3, TAG34
addiu $4, $3, 14
TAG34:
mfhi $3
lui $3, 12
beq $4, $4, TAG35
or $1, $3, $3
TAG35:
sll $0, $0, 0
divu $1, $1
beq $1, $1, TAG36
sll $0, $0, 0
TAG36:
sltiu $4, $1, 2
beq $1, $1, TAG37
sll $0, $0, 0
mflo $1
TAG37:
bgtz $1, TAG38
sll $0, $0, 0
xori $3, $1, 0
lb $3, 0($1)
TAG38:
sll $0, $0, 0
sltiu $3, $3, 9
mthi $3
bltz $3, TAG39
TAG39:
mult $3, $3
mflo $4
multu $4, $4
bne $3, $4, TAG40
TAG40:
lhu $1, 0($4)
sll $1, $4, 3
sh $1, 0($4)
beq $4, $1, TAG41
TAG41:
lw $4, 0($1)
mflo $1
andi $3, $1, 5
mtlo $4
TAG42:
lb $1, 0($3)
subu $3, $3, $3
lui $1, 4
blez $1, TAG43
TAG43:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
beq $1, $1, TAG44
TAG44:
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
xor $1, $1, $1
TAG45:
lui $3, 11
ori $4, $1, 0
subu $1, $4, $1
lui $4, 11
TAG46:
beq $4, $4, TAG47
sll $0, $0, 0
lw $1, 0($1)
sh $4, 0($1)
TAG47:
beq $1, $1, TAG48
sw $1, 0($1)
mfhi $2
mtlo $1
TAG48:
sltiu $2, $2, 8
blez $2, TAG49
mult $2, $2
sltu $1, $2, $2
TAG49:
lui $3, 3
sll $0, $0, 0
beq $3, $3, TAG50
srlv $2, $1, $1
TAG50:
lhu $2, 0($2)
bltz $2, TAG51
mfhi $3
multu $2, $2
TAG51:
mfhi $3
lh $1, 0($3)
lw $1, 0($1)
beq $1, $3, TAG52
TAG52:
sh $1, 0($1)
lw $2, 0($1)
addu $4, $2, $1
bgtz $2, TAG53
TAG53:
mtlo $4
mtlo $4
mthi $4
bne $4, $4, TAG54
TAG54:
slti $1, $4, 7
addu $4, $1, $4
subu $2, $1, $4
bgez $1, TAG55
TAG55:
sw $2, 0($2)
sub $1, $2, $2
lui $1, 9
mult $1, $1
TAG56:
lui $3, 1
sll $0, $0, 0
divu $1, $4
mflo $1
TAG57:
divu $1, $1
bgtz $1, TAG58
lui $4, 5
sb $4, 0($4)
TAG58:
and $1, $4, $4
mtlo $4
sll $0, $0, 0
mfhi $2
TAG59:
multu $2, $2
lhu $2, 0($2)
mflo $2
xor $2, $2, $2
TAG60:
multu $2, $2
mflo $1
lb $3, 0($2)
lui $1, 10
TAG61:
srav $1, $1, $1
bgtz $1, TAG62
sll $0, $0, 0
xori $3, $1, 4
TAG62:
mflo $3
addiu $1, $3, 8
mthi $1
mthi $3
TAG63:
divu $1, $1
beq $1, $1, TAG64
subu $2, $1, $1
lui $2, 14
TAG64:
mult $2, $2
mult $2, $2
lb $3, 0($2)
mtlo $2
TAG65:
add $3, $3, $3
bne $3, $3, TAG66
addiu $4, $3, 1
sh $3, 0($3)
TAG66:
ori $1, $4, 11
mflo $1
srlv $3, $4, $1
lh $2, 0($1)
TAG67:
multu $2, $2
sll $3, $2, 4
bne $2, $3, TAG68
sll $3, $3, 15
TAG68:
bne $3, $3, TAG69
sra $3, $3, 8
sw $3, 0($3)
lw $3, 0($3)
TAG69:
lw $2, 0($3)
mult $3, $3
mult $2, $3
sh $2, 0($3)
TAG70:
multu $2, $2
andi $2, $2, 9
addi $1, $2, 13
multu $2, $2
TAG71:
sra $2, $1, 14
mflo $1
or $1, $1, $2
mtlo $1
TAG72:
beq $1, $1, TAG73
sb $1, 0($1)
sw $1, 0($1)
mtlo $1
TAG73:
sll $4, $1, 14
mult $4, $1
andi $1, $1, 2
xori $2, $1, 12
TAG74:
sb $2, 0($2)
div $2, $2
bgtz $2, TAG75
sll $3, $2, 2
TAG75:
lui $1, 8
sh $3, 0($3)
mflo $1
lb $4, 0($1)
TAG76:
mthi $4
bne $4, $4, TAG77
lui $3, 2
sb $4, 0($4)
TAG77:
sltiu $4, $3, 8
lb $2, 0($4)
sll $0, $0, 0
lw $4, 0($4)
TAG78:
mult $4, $4
sll $4, $4, 9
mfhi $2
sh $2, 0($4)
TAG79:
mthi $2
or $2, $2, $2
mult $2, $2
mthi $2
TAG80:
multu $2, $2
lw $1, 0($2)
multu $1, $1
bgez $2, TAG81
TAG81:
lui $1, 5
mflo $3
nor $4, $3, $1
mflo $1
TAG82:
mtlo $1
lui $1, 0
sh $1, 0($1)
beq $1, $1, TAG83
TAG83:
mtlo $1
lw $4, 0($1)
bltz $1, TAG84
and $3, $1, $1
TAG84:
bne $3, $3, TAG85
mfhi $1
blez $3, TAG85
sh $1, 0($3)
TAG85:
bne $1, $1, TAG86
mfhi $1
beq $1, $1, TAG86
sh $1, 0($1)
TAG86:
mult $1, $1
sra $2, $1, 2
sra $1, $2, 4
bne $1, $1, TAG87
TAG87:
mflo $1
xori $2, $1, 5
mflo $3
bne $1, $1, TAG88
TAG88:
mflo $3
bne $3, $3, TAG89
sltu $4, $3, $3
lui $1, 0
TAG89:
slt $1, $1, $1
beq $1, $1, TAG90
lui $1, 14
bltz $1, TAG90
TAG90:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG91:
sll $0, $0, 0
bgtz $1, TAG92
sll $0, $0, 0
lui $2, 7
TAG92:
mtlo $2
mult $2, $2
lui $4, 14
lui $2, 1
TAG93:
beq $2, $2, TAG94
sll $0, $0, 0
sb $2, 0($2)
mfhi $4
TAG94:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
mfhi $1
TAG95:
sw $1, 0($1)
sb $1, 0($1)
slt $4, $1, $1
sh $1, 0($1)
TAG96:
xori $1, $4, 2
mthi $4
lui $4, 6
multu $4, $1
TAG97:
sll $0, $0, 0
ori $2, $4, 12
slt $4, $4, $2
slti $2, $4, 4
TAG98:
mult $2, $2
slt $2, $2, $2
lbu $3, 0($2)
sll $2, $3, 0
TAG99:
sh $2, 0($2)
sw $2, 0($2)
mtlo $2
mflo $3
TAG100:
xor $1, $3, $3
lui $2, 9
sb $1, 0($1)
sllv $4, $3, $2
TAG101:
lhu $4, 0($4)
blez $4, TAG102
lui $4, 9
mtlo $4
TAG102:
sll $0, $0, 0
sll $0, $0, 0
addu $2, $4, $4
sll $0, $0, 0
TAG103:
mflo $1
xori $2, $1, 9
beq $2, $2, TAG104
mfhi $1
TAG104:
sltiu $4, $1, 2
mflo $1
mfhi $4
lui $4, 0
TAG105:
sub $3, $4, $4
mult $4, $3
mflo $3
andi $4, $3, 14
TAG106:
mtlo $4
bgtz $4, TAG107
mult $4, $4
mflo $3
TAG107:
mthi $3
sub $2, $3, $3
lw $1, 0($2)
mult $1, $2
TAG108:
addi $4, $1, 9
divu $1, $4
bgez $4, TAG109
slti $4, $4, 0
TAG109:
beq $4, $4, TAG110
multu $4, $4
bltz $4, TAG110
mtlo $4
TAG110:
lb $2, 0($4)
sra $4, $4, 0
bne $4, $4, TAG111
srl $3, $4, 4
TAG111:
multu $3, $3
mthi $3
mtlo $3
mflo $2
TAG112:
lui $4, 10
sll $0, $0, 0
lui $3, 8
bgez $3, TAG113
TAG113:
lui $3, 3
sltiu $4, $3, 3
sh $4, 0($4)
bne $4, $3, TAG114
TAG114:
lw $1, 0($4)
srlv $3, $1, $1
bgez $1, TAG115
sra $1, $1, 3
TAG115:
sw $1, 0($1)
bgez $1, TAG116
mflo $2
bne $2, $1, TAG116
TAG116:
sw $2, 0($2)
mthi $2
multu $2, $2
mfhi $4
TAG117:
lb $4, 0($4)
sllv $2, $4, $4
bne $4, $2, TAG118
sb $2, 0($4)
TAG118:
bgtz $2, TAG119
mthi $2
srl $1, $2, 0
beq $2, $1, TAG119
TAG119:
lhu $1, 0($1)
mult $1, $1
or $1, $1, $1
mtlo $1
TAG120:
mult $1, $1
mthi $1
bne $1, $1, TAG121
ori $4, $1, 2
TAG121:
beq $4, $4, TAG122
lui $2, 7
div $2, $4
blez $2, TAG122
TAG122:
mfhi $2
lui $1, 3
sltu $3, $1, $2
beq $2, $3, TAG123
TAG123:
srl $1, $3, 1
mtlo $1
mfhi $1
lw $2, 0($3)
TAG124:
mthi $2
mfhi $2
mthi $2
sb $2, 0($2)
TAG125:
lui $2, 9
sll $0, $0, 0
multu $2, $2
beq $2, $2, TAG126
TAG126:
divu $2, $2
sll $0, $0, 0
srl $4, $4, 6
sra $2, $4, 5
TAG127:
slti $3, $2, 8
sb $2, 0($3)
div $2, $3
bne $2, $3, TAG128
TAG128:
lb $1, 0($3)
sb $3, 0($3)
lui $2, 0
sb $3, 0($3)
TAG129:
bgez $2, TAG130
sw $2, 0($2)
mtlo $2
multu $2, $2
TAG130:
mtlo $2
bne $2, $2, TAG131
mflo $1
mfhi $3
TAG131:
beq $3, $3, TAG132
sb $3, 0($3)
subu $1, $3, $3
multu $1, $3
TAG132:
lui $2, 9
bgez $2, TAG133
sll $1, $1, 5
multu $1, $1
TAG133:
srlv $2, $1, $1
bne $2, $1, TAG134
mult $1, $2
mtlo $1
TAG134:
mflo $2
mthi $2
lh $1, 0($2)
sw $1, 0($2)
TAG135:
blez $1, TAG136
sb $1, 0($1)
mflo $3
lui $1, 2
TAG136:
addi $4, $1, 9
mtlo $4
mfhi $4
mthi $1
TAG137:
lui $2, 9
lui $1, 15
sra $1, $1, 15
bgez $4, TAG138
TAG138:
mtlo $1
bne $1, $1, TAG139
mflo $3
multu $1, $3
TAG139:
addiu $3, $3, 13
addiu $2, $3, 12
sb $3, 0($2)
addu $2, $2, $3
TAG140:
addu $2, $2, $2
ori $1, $2, 13
lbu $3, -196($2)
sh $1, -205($1)
TAG141:
mfhi $3
lb $3, 0($3)
sb $3, 51($3)
bne $3, $3, TAG142
TAG142:
divu $3, $3
bgtz $3, TAG143
sb $3, 51($3)
divu $3, $3
TAG143:
sll $0, $0, 0
lui $2, 6
mfhi $3
bne $3, $4, TAG144
TAG144:
sll $2, $3, 14
mtlo $2
multu $2, $3
multu $3, $2
TAG145:
lui $3, 5
mthi $2
sll $0, $0, 0
lui $4, 10
TAG146:
srl $1, $4, 2
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $2, 15
TAG147:
bne $2, $2, TAG148
sb $2, 0($2)
sb $2, 0($2)
xor $2, $2, $2
TAG148:
lw $2, 0($2)
lh $1, -205($2)
bgtz $2, TAG149
sw $2, -205($2)
TAG149:
sll $1, $1, 11
bne $1, $1, TAG150
sll $0, $0, 0
sll $0, $0, 0
TAG150:
sll $0, $0, 0
sll $2, $1, 7
sll $0, $0, 0
addiu $4, $2, 5
TAG151:
bltz $4, TAG152
lui $3, 11
blez $4, TAG152
mtlo $3
TAG152:
mflo $3
lui $2, 6
subu $3, $3, $3
bgtz $2, TAG153
TAG153:
lui $4, 6
sll $0, $0, 0
beq $4, $4, TAG154
mfhi $4
TAG154:
lh $2, 0($4)
mult $4, $4
mtlo $2
sh $2, -205($2)
TAG155:
bltz $2, TAG156
divu $2, $2
sw $2, -205($2)
sb $2, -205($2)
TAG156:
sll $0, $0, 0
bgtz $1, TAG157
srl $1, $1, 11
bgez $2, TAG157
TAG157:
mtlo $1
lui $4, 11
slti $2, $1, 13
addu $1, $4, $2
TAG158:
beq $1, $1, TAG159
mfhi $1
mthi $1
mfhi $3
TAG159:
mflo $4
mthi $4
lui $3, 8
lb $4, -205($4)
TAG160:
blez $4, TAG161
div $4, $4
bltz $4, TAG161
lui $1, 7
TAG161:
mfhi $2
beq $2, $1, TAG162
mflo $3
sw $1, 0($2)
TAG162:
bne $3, $3, TAG163
lbu $3, 0($3)
slti $3, $3, 5
or $2, $3, $3
TAG163:
mthi $2
multu $2, $2
lbu $3, 0($2)
lui $2, 14
TAG164:
addiu $3, $2, 1
bgtz $2, TAG165
sll $0, $0, 0
beq $2, $3, TAG165
TAG165:
sll $2, $2, 7
sll $0, $0, 0
bgez $3, TAG166
mflo $3
TAG166:
lb $3, 0($3)
srlv $1, $3, $3
mthi $3
lui $1, 14
TAG167:
mtlo $1
mthi $1
mflo $3
sltu $1, $1, $1
TAG168:
addu $2, $1, $1
lhu $3, 0($1)
beq $1, $2, TAG169
mfhi $1
TAG169:
beq $1, $1, TAG170
mflo $1
mtlo $1
beq $1, $1, TAG170
TAG170:
lui $3, 4
mflo $2
mthi $1
beq $1, $2, TAG171
TAG171:
sll $0, $0, 0
mflo $4
lui $2, 1
bgez $4, TAG172
TAG172:
sll $0, $0, 0
blez $2, TAG173
mtlo $2
sll $0, $0, 0
TAG173:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
mthi $2
TAG174:
lui $4, 13
mflo $3
sll $0, $0, 0
mult $3, $3
TAG175:
mfhi $1
sll $0, $0, 0
bltz $3, TAG176
sllv $2, $3, $3
TAG176:
mflo $1
add $1, $1, $2
mtlo $2
mfhi $1
TAG177:
mtlo $1
mfhi $3
bne $3, $3, TAG178
mfhi $3
TAG178:
sltu $3, $3, $3
bltz $3, TAG179
addu $2, $3, $3
mflo $4
TAG179:
beq $4, $4, TAG180
mtlo $4
sb $4, 0($4)
mthi $4
TAG180:
mtlo $4
lui $2, 2
sb $4, 0($4)
div $4, $2
TAG181:
mflo $2
or $4, $2, $2
multu $4, $4
lw $1, 0($2)
TAG182:
divu $1, $1
bne $1, $1, TAG183
multu $1, $1
slti $2, $1, 12
TAG183:
mfhi $4
xor $3, $4, $2
srav $4, $3, $4
bgez $3, TAG184
TAG184:
mthi $4
mflo $3
sw $3, 0($4)
lb $2, 0($4)
TAG185:
lb $3, 0($2)
div $3, $2
multu $3, $3
mfhi $3
TAG186:
xor $3, $3, $3
mult $3, $3
mtlo $3
sb $3, 0($3)
TAG187:
nor $4, $3, $3
lui $1, 7
multu $3, $3
lui $1, 2
TAG188:
lui $2, 15
sll $0, $0, 0
div $2, $2
bne $1, $2, TAG189
TAG189:
divu $2, $2
bne $2, $2, TAG190
addu $2, $2, $2
bne $2, $2, TAG190
TAG190:
slt $3, $2, $2
bgtz $2, TAG191
slt $2, $3, $2
mflo $3
TAG191:
xori $4, $3, 6
or $2, $3, $3
mtlo $4
lui $1, 9
TAG192:
mfhi $1
bltz $1, TAG193
slt $2, $1, $1
bne $1, $1, TAG193
TAG193:
multu $2, $2
beq $2, $2, TAG194
sb $2, 0($2)
sw $2, 0($2)
TAG194:
mthi $2
sw $2, 0($2)
add $1, $2, $2
mthi $2
TAG195:
ori $1, $1, 13
mthi $1
mthi $1
lui $3, 3
TAG196:
nor $3, $3, $3
bne $3, $3, TAG197
sll $0, $0, 0
sll $0, $0, 0
TAG197:
lb $2, 0($4)
and $2, $4, $4
div $2, $4
mthi $2
TAG198:
bgtz $2, TAG199
mflo $1
bne $2, $2, TAG199
lui $3, 1
TAG199:
sll $0, $0, 0
lui $3, 4
mflo $3
lui $2, 3
TAG200:
div $2, $2
blez $2, TAG201
lui $4, 8
lui $1, 4
TAG201:
multu $1, $1
sll $0, $0, 0
lui $2, 7
bne $1, $2, TAG202
TAG202:
sll $0, $0, 0
divu $2, $1
subu $4, $1, $1
xor $1, $4, $4
TAG203:
lhu $1, 0($1)
xori $3, $1, 7
beq $3, $1, TAG204
sh $1, 0($1)
TAG204:
srlv $3, $3, $3
mthi $3
mfhi $2
mthi $2
TAG205:
lbu $3, 0($2)
mtlo $2
lui $1, 13
mflo $3
TAG206:
sll $3, $3, 3
multu $3, $3
srl $3, $3, 10
bltz $3, TAG207
TAG207:
xori $1, $3, 2
sh $1, 0($1)
beq $3, $1, TAG208
lui $3, 3
TAG208:
div $3, $3
bltz $3, TAG209
andi $2, $3, 3
mfhi $2
TAG209:
mult $2, $2
sra $2, $2, 2
lb $3, 0($2)
sh $2, 0($2)
TAG210:
sllv $4, $3, $3
lbu $1, 0($3)
bgtz $1, TAG211
sb $3, 0($1)
TAG211:
bne $1, $1, TAG212
mult $1, $1
mtlo $1
mflo $2
TAG212:
lbu $1, 0($2)
mfhi $4
mult $1, $1
sw $4, 0($1)
TAG213:
sh $4, 0($4)
sw $4, 0($4)
mult $4, $4
bne $4, $4, TAG214
TAG214:
multu $4, $4
blez $4, TAG215
srlv $2, $4, $4
or $2, $4, $4
TAG215:
beq $2, $2, TAG216
mflo $4
addi $4, $4, 6
sb $4, 0($4)
TAG216:
beq $4, $4, TAG217
mfhi $3
lw $1, 0($4)
div $4, $4
TAG217:
lui $1, 5
mflo $3
mthi $3
sltu $2, $1, $3
TAG218:
blez $2, TAG219
lui $3, 4
slt $1, $2, $3
sra $2, $3, 4
TAG219:
mfhi $4
sb $4, 0($2)
beq $4, $2, TAG220
sra $1, $4, 13
TAG220:
multu $1, $1
sub $2, $1, $1
sh $1, 0($1)
lhu $2, 0($2)
TAG221:
mtlo $2
bgez $2, TAG222
add $4, $2, $2
sh $4, 0($4)
TAG222:
mflo $3
addi $4, $4, 2
lbu $2, 0($4)
mthi $3
TAG223:
and $2, $2, $2
mflo $3
lui $4, 14
multu $3, $2
TAG224:
addiu $4, $4, 14
lui $1, 14
mtlo $4
beq $1, $4, TAG225
TAG225:
subu $3, $1, $1
sll $0, $0, 0
bltz $3, TAG226
sll $0, $0, 0
TAG226:
mfhi $1
srl $4, $2, 2
mult $1, $1
sw $4, 0($2)
TAG227:
addu $3, $4, $4
lhu $1, 0($4)
beq $1, $4, TAG228
lui $3, 12
TAG228:
lui $1, 8
lui $2, 4
slt $3, $3, $1
lui $1, 13
TAG229:
sll $0, $0, 0
sb $1, 0($4)
sll $0, $0, 0
sltu $1, $4, $1
TAG230:
multu $1, $1
bgtz $1, TAG231
addiu $2, $1, 2
beq $2, $2, TAG231
TAG231:
sb $2, 0($2)
blez $2, TAG232
and $1, $2, $2
bgez $2, TAG232
TAG232:
mtlo $1
mthi $1
sb $1, 0($1)
mthi $1
TAG233:
ori $1, $1, 9
lui $2, 7
divu $1, $2
lb $3, 0($1)
TAG234:
sw $3, 0($3)
multu $3, $3
multu $3, $3
beq $3, $3, TAG235
TAG235:
srlv $3, $3, $3
bgtz $3, TAG236
andi $2, $3, 9
beq $3, $3, TAG236
TAG236:
sh $2, 0($2)
mfhi $1
mfhi $4
add $2, $4, $1
TAG237:
or $1, $2, $2
bgez $1, TAG238
sh $2, 0($1)
mthi $2
TAG238:
multu $1, $1
lui $1, 2
sll $0, $0, 0
lui $4, 1
TAG239:
lui $2, 7
mult $2, $4
bgtz $2, TAG240
srlv $4, $4, $2
TAG240:
addiu $4, $4, 9
lui $4, 14
blez $4, TAG241
mtlo $4
TAG241:
mflo $2
bne $2, $4, TAG242
sll $0, $0, 0
lui $4, 9
TAG242:
bgtz $4, TAG243
mflo $3
mflo $4
mult $4, $4
TAG243:
bne $4, $4, TAG244
subu $3, $4, $4
mult $4, $3
lb $3, 0($3)
TAG244:
andi $4, $3, 15
mthi $3
bgez $4, TAG245
lui $1, 7
TAG245:
mfhi $4
mflo $4
mtlo $1
sll $0, $0, 0
TAG246:
mult $4, $4
mthi $4
mtlo $4
lbu $2, 0($4)
TAG247:
slti $1, $2, 7
multu $1, $1
mtlo $1
bgez $1, TAG248
TAG248:
lbu $4, 0($1)
mult $1, $4
mthi $1
mtlo $4
TAG249:
lui $1, 12
bne $1, $4, TAG250
sltu $4, $1, $4
bgez $1, TAG250
TAG250:
mfhi $2
beq $2, $2, TAG251
lui $4, 12
mtlo $4
TAG251:
mfhi $4
mflo $1
multu $4, $4
andi $2, $4, 7
TAG252:
bltz $2, TAG253
srl $3, $2, 0
mtlo $3
lb $1, 0($2)
TAG253:
nor $3, $1, $1
mult $3, $1
bne $1, $3, TAG254
mfhi $3
TAG254:
beq $3, $3, TAG255
mflo $2
mfhi $3
lhu $2, 0($2)
TAG255:
sb $2, 0($2)
lui $1, 12
div $1, $1
sra $2, $2, 1
TAG256:
bltz $2, TAG257
sh $2, 0($2)
srav $3, $2, $2
bne $2, $2, TAG257
TAG257:
multu $3, $3
mult $3, $3
beq $3, $3, TAG258
sltu $3, $3, $3
TAG258:
lui $3, 11
nor $1, $3, $3
divu $3, $3
sllv $1, $1, $3
TAG259:
blez $1, TAG260
mtlo $1
mflo $3
sw $3, 0($1)
TAG260:
mthi $3
mthi $3
sll $0, $0, 0
bgtz $3, TAG261
TAG261:
ori $3, $3, 11
blez $3, TAG262
divu $3, $3
mthi $3
TAG262:
bne $3, $3, TAG263
srav $3, $3, $3
lhu $1, -352($3)
sh $1, -352($3)
TAG263:
multu $1, $1
beq $1, $1, TAG264
multu $1, $1
sltu $1, $1, $1
TAG264:
lui $3, 13
multu $3, $1
srav $4, $1, $1
lui $2, 15
TAG265:
bgez $2, TAG266
divu $2, $2
mflo $4
lui $2, 7
TAG266:
sll $0, $0, 0
divu $3, $2
multu $3, $3
sltu $2, $3, $2
TAG267:
mult $2, $2
mthi $2
multu $2, $2
mflo $2
TAG268:
bgez $2, TAG269
lbu $1, 0($2)
sb $2, 0($2)
beq $1, $2, TAG269
TAG269:
mult $1, $1
lui $1, 0
lbu $4, 0($1)
mflo $3
TAG270:
mflo $4
mult $4, $4
lb $1, 0($4)
mfhi $2
TAG271:
bgtz $2, TAG272
mtlo $2
lbu $4, 0($2)
blez $4, TAG272
TAG272:
lhu $1, 0($4)
sw $4, 0($4)
bne $4, $4, TAG273
or $4, $4, $4
TAG273:
lhu $1, 0($4)
lbu $4, 0($1)
bne $4, $4, TAG274
lh $4, 0($1)
TAG274:
srlv $2, $4, $4
lb $3, 0($2)
lbu $2, 0($4)
bltz $2, TAG275
TAG275:
sw $2, 0($2)
lb $2, 0($2)
sllv $1, $2, $2
subu $2, $2, $2
TAG276:
mfhi $1
slt $1, $1, $2
lui $4, 4
bgtz $4, TAG277
TAG277:
sll $0, $0, 0
divu $4, $4
bltz $4, TAG278
addiu $2, $4, 9
TAG278:
subu $4, $2, $2
mflo $1
srl $2, $2, 9
srl $4, $2, 4
TAG279:
mtlo $4
xor $1, $4, $4
lbu $4, 0($1)
lui $2, 1
TAG280:
nor $4, $2, $2
lui $1, 4
sll $0, $0, 0
blez $2, TAG281
TAG281:
subu $4, $1, $1
slt $1, $4, $4
sll $2, $1, 15
mfhi $1
TAG282:
lui $4, 4
sll $1, $1, 6
sw $4, 0($1)
sw $4, 0($1)
TAG283:
mfhi $3
multu $1, $3
multu $1, $1
mfhi $3
TAG284:
lb $1, 0($3)
xori $3, $3, 3
sll $1, $3, 11
addiu $1, $3, 0
TAG285:
lui $1, 0
blez $1, TAG286
lbu $1, 0($1)
or $2, $1, $1
TAG286:
mthi $2
mthi $2
sltu $1, $2, $2
bgez $1, TAG287
TAG287:
multu $1, $1
nor $4, $1, $1
addiu $2, $1, 12
slti $4, $1, 11
TAG288:
sb $4, 0($4)
mfhi $3
mflo $2
bne $3, $3, TAG289
TAG289:
lui $4, 5
nor $1, $4, $2
divu $2, $4
bgtz $1, TAG290
TAG290:
andi $3, $1, 5
lui $3, 11
lui $2, 5
div $3, $3
TAG291:
bne $2, $2, TAG292
srl $1, $2, 11
mtlo $2
lh $3, -160($1)
TAG292:
slt $2, $3, $3
multu $2, $3
multu $2, $2
mfhi $3
TAG293:
multu $3, $3
lw $2, 0($3)
mflo $4
multu $2, $2
TAG294:
lb $2, 0($4)
mfhi $4
subu $3, $4, $4
mthi $4
TAG295:
beq $3, $3, TAG296
multu $3, $3
lui $4, 4
blez $4, TAG296
TAG296:
lbu $1, 0($4)
lhu $2, 0($1)
div $1, $4
lui $2, 2
TAG297:
lui $3, 1
srl $1, $3, 8
andi $3, $3, 9
mflo $2
TAG298:
sw $2, 0($2)
lhu $4, 0($2)
xori $2, $4, 8
mfhi $4
TAG299:
mtlo $4
sb $4, 0($4)
beq $4, $4, TAG300
div $4, $4
TAG300:
beq $4, $4, TAG301
addiu $2, $4, 4
mfhi $3
beq $3, $2, TAG301
TAG301:
lhu $4, 0($3)
xori $1, $4, 10
andi $1, $3, 3
and $4, $1, $1
TAG302:
sllv $1, $4, $4
sll $4, $4, 10
srl $3, $4, 1
lui $1, 3
TAG303:
addiu $2, $1, 10
sll $3, $2, 14
lui $4, 4
sll $0, $0, 0
TAG304:
sll $0, $0, 0
mflo $4
lb $3, 0($4)
mthi $4
TAG305:
mflo $1
sb $1, 0($1)
div $1, $1
mthi $3
TAG306:
lui $4, 8
sra $2, $1, 1
beq $2, $1, TAG307
multu $2, $4
TAG307:
mult $2, $2
sh $2, 0($2)
multu $2, $2
sb $2, 0($2)
TAG308:
multu $2, $2
mfhi $3
beq $3, $2, TAG309
lw $2, 0($2)
TAG309:
sltiu $3, $2, 15
slti $1, $3, 2
sw $1, 0($2)
lb $4, 0($2)
TAG310:
sra $1, $4, 13
blez $4, TAG311
sra $3, $4, 3
bgtz $3, TAG311
TAG311:
mthi $3
lui $4, 2
srav $3, $3, $3
nor $2, $3, $3
TAG312:
sh $2, 1($2)
mtlo $2
bgez $2, TAG313
mtlo $2
TAG313:
beq $2, $2, TAG314
lb $3, 1($2)
blez $3, TAG314
slti $1, $3, 15
TAG314:
mfhi $1
beq $1, $1, TAG315
lui $3, 7
div $3, $1
TAG315:
bltz $3, TAG316
sll $0, $0, 0
mflo $3
beq $3, $3, TAG316
TAG316:
sb $3, 1($3)
mult $3, $3
bne $3, $3, TAG317
sb $3, 1($3)
TAG317:
mthi $3
bgtz $3, TAG318
lui $1, 1
andi $4, $1, 12
TAG318:
bne $4, $4, TAG319
mflo $3
lui $1, 5
or $2, $1, $4
TAG319:
mflo $3
sra $2, $3, 6
mult $3, $2
add $3, $2, $2
TAG320:
bgez $3, TAG321
addiu $3, $3, 12
sh $3, 0($3)
andi $2, $3, 8
TAG321:
multu $2, $2
mfhi $4
srlv $1, $4, $2
lb $4, 0($1)
TAG322:
slti $2, $4, 9
mtlo $4
sw $4, 1($4)
ori $1, $2, 1
TAG323:
addiu $1, $1, 4
sb $1, 0($1)
mtlo $1
sb $1, 0($1)
TAG324:
ori $1, $1, 3
mthi $1
bne $1, $1, TAG325
srl $3, $1, 13
TAG325:
mtlo $3
lb $1, 0($3)
addu $1, $3, $1
lui $1, 8
TAG326:
bne $1, $1, TAG327
mthi $1
mthi $1
srlv $2, $1, $1
TAG327:
lui $1, 14
divu $1, $2
bgtz $1, TAG328
lui $4, 9
TAG328:
lui $3, 8
mult $3, $3
beq $4, $4, TAG329
mtlo $4
TAG329:
beq $3, $3, TAG330
sll $0, $0, 0
lui $4, 14
sltiu $3, $1, 2
TAG330:
lui $3, 0
addu $3, $3, $3
mtlo $3
multu $3, $3
TAG331:
multu $3, $3
multu $3, $3
lw $3, 0($3)
sw $3, 1($3)
TAG332:
mthi $3
sh $3, 1($3)
mult $3, $3
addiu $2, $3, 3
TAG333:
lhu $4, 0($2)
slti $2, $2, 6
sb $4, 0($2)
mfhi $2
TAG334:
multu $2, $2
xor $3, $2, $2
sltu $4, $3, $3
lui $1, 1
TAG335:
sll $0, $0, 0
mthi $1
mtlo $1
mflo $1
TAG336:
multu $1, $1
beq $1, $1, TAG337
lui $2, 9
lui $4, 2
TAG337:
lhu $3, 0($4)
bne $3, $3, TAG338
lbu $3, 0($4)
lhu $1, -255($3)
TAG338:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
subu $4, $1, $1
TAG339:
mfhi $4
mthi $4
sb $4, 0($4)
mthi $4
TAG340:
mflo $4
sll $2, $4, 10
srav $3, $4, $4
sll $0, $0, 0
TAG341:
mthi $4
sll $0, $0, 0
xor $2, $4, $4
addiu $3, $4, 10
TAG342:
mtlo $3
mflo $3
mtlo $3
sra $3, $3, 7
TAG343:
mfhi $2
multu $3, $2
blez $3, TAG344
mflo $1
TAG344:
bgez $1, TAG345
mult $1, $1
mtlo $1
bgtz $1, TAG345
TAG345:
lui $3, 15
mfhi $2
srav $2, $1, $1
lui $4, 10
TAG346:
mflo $1
sll $0, $0, 0
mflo $3
multu $1, $1
TAG347:
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
mfhi $3
TAG348:
srl $4, $3, 15
mthi $4
lh $4, 0($3)
addu $2, $4, $4
TAG349:
lui $3, 6
bne $2, $3, TAG350
divu $3, $2
sh $3, 0($3)
TAG350:
sll $0, $0, 0
div $3, $3
mfhi $1
subu $1, $3, $3
TAG351:
lbu $2, 0($1)
mflo $1
lbu $1, 0($1)
subu $2, $1, $1
TAG352:
sw $2, 0($2)
sw $2, 0($2)
sltu $2, $2, $2
sb $2, 0($2)
TAG353:
ori $4, $2, 1
sb $2, 0($4)
ori $1, $2, 14
srav $2, $2, $4
TAG354:
andi $3, $2, 1
multu $2, $3
or $2, $3, $3
and $3, $2, $2
TAG355:
sh $3, 0($3)
ori $4, $3, 15
bne $3, $3, TAG356
and $3, $3, $4
TAG356:
lb $4, 0($3)
lh $1, 0($4)
mtlo $4
sh $4, 0($3)
TAG357:
xori $2, $1, 7
beq $2, $1, TAG358
sb $2, 0($2)
sh $2, 0($1)
TAG358:
lbu $2, 0($2)
addu $1, $2, $2
lbu $2, 0($2)
divu $2, $2
TAG359:
mflo $3
mfhi $1
bne $1, $1, TAG360
lb $2, 0($3)
TAG360:
addiu $2, $2, 4
srl $4, $2, 11
mthi $4
mtlo $2
TAG361:
bgez $4, TAG362
sra $4, $4, 7
lui $4, 2
lui $3, 9
TAG362:
lbu $3, 0($3)
multu $3, $3
mflo $2
ori $3, $2, 0
TAG363:
addiu $2, $3, 1
mflo $2
lui $4, 1
lbu $4, 0($3)
TAG364:
lb $2, 0($4)
sb $4, 0($4)
srlv $3, $2, $4
bltz $2, TAG365
TAG365:
mflo $1
mtlo $3
mflo $2
beq $2, $3, TAG366
TAG366:
multu $2, $2
nor $3, $2, $2
srav $1, $2, $3
add $3, $1, $3
TAG367:
divu $3, $3
or $1, $3, $3
andi $1, $1, 14
lh $2, 1($3)
TAG368:
lui $1, 6
mtlo $1
bgez $1, TAG369
sll $0, $0, 0
TAG369:
lui $1, 13
mthi $1
sll $0, $0, 0
beq $1, $1, TAG370
TAG370:
mthi $1
lui $2, 8
mfhi $1
slt $2, $1, $1
TAG371:
bgez $2, TAG372
andi $2, $2, 9
sh $2, 0($2)
multu $2, $2
TAG372:
mflo $1
sltiu $3, $1, 1
div $3, $1
mtlo $1
TAG373:
sb $3, 0($3)
mflo $1
mflo $2
beq $2, $3, TAG374
TAG374:
subu $1, $2, $2
mflo $1
slti $4, $1, 4
multu $1, $1
TAG375:
mflo $1
mtlo $1
multu $1, $1
lw $1, 0($1)
TAG376:
sh $1, 0($1)
beq $1, $1, TAG377
subu $1, $1, $1
mflo $2
TAG377:
mult $2, $2
srav $2, $2, $2
mflo $1
mfhi $3
TAG378:
srl $4, $3, 3
bgtz $4, TAG379
sh $3, 0($3)
lbu $2, 0($3)
TAG379:
mfhi $2
lhu $3, 0($2)
addiu $3, $2, 13
xori $1, $2, 0
TAG380:
lui $1, 6
mtlo $1
multu $1, $1
divu $1, $1
TAG381:
mflo $1
div $1, $1
sb $1, 0($1)
mult $1, $1
TAG382:
sb $1, 0($1)
beq $1, $1, TAG383
multu $1, $1
bne $1, $1, TAG383
TAG383:
lui $3, 14
lui $3, 4
divu $3, $3
mtlo $3
TAG384:
beq $3, $3, TAG385
addiu $3, $3, 9
lb $2, 0($3)
addiu $1, $2, 10
TAG385:
sb $1, 0($1)
bgez $1, TAG386
sb $1, 0($1)
sllv $1, $1, $1
TAG386:
div $1, $1
beq $1, $1, TAG387
sra $4, $1, 3
lh $1, 0($4)
TAG387:
lui $2, 5
addiu $4, $2, 10
blez $4, TAG388
mflo $4
TAG388:
ori $2, $4, 6
lui $2, 1
addiu $4, $2, 9
slti $2, $2, 10
TAG389:
bgtz $2, TAG390
sh $2, 0($2)
mtlo $2
bltz $2, TAG390
TAG390:
slti $4, $2, 2
div $2, $4
div $4, $4
lb $2, 0($2)
TAG391:
subu $1, $2, $2
multu $1, $1
ori $3, $2, 14
multu $2, $1
TAG392:
lh $4, 0($3)
beq $4, $4, TAG393
mflo $2
xor $3, $3, $4
TAG393:
beq $3, $3, TAG394
ori $3, $3, 11
lui $4, 1
mflo $4
TAG394:
mfhi $2
andi $2, $4, 1
mthi $2
mfhi $4
TAG395:
beq $4, $4, TAG396
mult $4, $4
lui $2, 7
lhu $2, 0($4)
TAG396:
sll $3, $2, 4
bne $2, $3, TAG397
mflo $3
mthi $3
TAG397:
bgez $3, TAG398
lh $3, 0($3)
sra $1, $3, 9
or $2, $3, $1
TAG398:
mthi $2
lui $2, 8
lui $2, 11
lui $1, 9
TAG399:
sltiu $3, $1, 12
mtlo $3
lui $2, 7
sll $0, $0, 0
TAG400:
bgez $2, TAG401
slt $3, $2, $2
addu $4, $3, $3
mtlo $2
TAG401:
sh $4, 0($4)
beq $4, $4, TAG402
lb $2, 0($4)
mtlo $2
TAG402:
sw $2, 0($2)
sll $1, $2, 7
beq $2, $1, TAG403
lui $2, 2
TAG403:
beq $2, $2, TAG404
mtlo $2
xor $1, $2, $2
beq $2, $2, TAG404
TAG404:
lb $1, 0($1)
addu $4, $1, $1
beq $1, $4, TAG405
mthi $1
TAG405:
blez $4, TAG406
sh $4, 0($4)
sltu $1, $4, $4
nor $1, $4, $4
TAG406:
slt $2, $1, $1
mult $1, $2
add $2, $1, $1
mtlo $2
TAG407:
bne $2, $2, TAG408
sh $2, 0($2)
mflo $3
sub $3, $2, $2
TAG408:
beq $3, $3, TAG409
sltiu $2, $3, 12
or $2, $3, $3
lh $4, 0($2)
TAG409:
bne $4, $4, TAG410
sh $4, 0($4)
lui $2, 2
bne $2, $2, TAG410
TAG410:
mtlo $2
blez $2, TAG411
div $2, $2
sll $2, $2, 1
TAG411:
sra $4, $2, 11
lw $1, 0($4)
mtlo $1
lui $3, 7
TAG412:
and $4, $3, $3
slti $1, $3, 1
mflo $1
mtlo $1
TAG413:
mfhi $1
mthi $1
sh $1, 0($1)
bne $1, $1, TAG414
TAG414:
lw $2, 0($1)
mflo $2
beq $2, $2, TAG415
lh $4, 0($2)
TAG415:
mthi $4
mult $4, $4
lui $4, 7
beq $4, $4, TAG416
TAG416:
sll $0, $0, 0
addu $4, $4, $4
lui $4, 11
mthi $4
TAG417:
bne $4, $4, TAG418
sll $0, $0, 0
sll $0, $0, 0
srl $4, $1, 6
TAG418:
andi $1, $4, 7
lw $2, 0($4)
beq $2, $2, TAG419
mthi $1
TAG419:
lui $4, 6
multu $2, $4
divu $4, $4
subu $2, $4, $2
TAG420:
slt $4, $2, $2
mtlo $4
blez $2, TAG421
mtlo $4
TAG421:
mult $4, $4
bgtz $4, TAG422
lui $2, 7
mflo $3
TAG422:
lui $2, 8
lui $4, 14
blez $2, TAG423
mthi $3
TAG423:
beq $4, $4, TAG424
lui $3, 14
bltz $4, TAG424
mthi $3
TAG424:
sltu $2, $3, $3
lhu $4, 0($2)
srav $2, $2, $4
xor $1, $4, $3
TAG425:
bgez $1, TAG426
sll $0, $0, 0
and $3, $1, $1
sllv $3, $1, $1
TAG426:
mflo $2
blez $2, TAG427
srav $4, $3, $2
mfhi $3
TAG427:
andi $1, $3, 4
mflo $3
slti $3, $3, 4
andi $4, $1, 2
TAG428:
mflo $2
slti $2, $4, 12
mthi $2
mflo $3
TAG429:
sltiu $3, $3, 2
sb $3, 0($3)
multu $3, $3
blez $3, TAG430
TAG430:
divu $3, $3
multu $3, $3
lui $2, 10
addiu $1, $2, 10
TAG431:
mult $1, $1
bltz $1, TAG432
sll $0, $0, 0
mfhi $2
TAG432:
lw $1, 0($2)
mult $2, $2
sh $1, 0($1)
multu $1, $2
TAG433:
addu $1, $1, $1
bgtz $1, TAG434
mfhi $3
addi $2, $3, 3
TAG434:
bgez $2, TAG435
lw $1, 0($2)
bne $1, $2, TAG435
sltu $1, $1, $2
TAG435:
lb $3, 0($1)
bgtz $3, TAG436
div $1, $1
sh $3, 0($1)
TAG436:
bltz $3, TAG437
lw $3, 0($3)
lw $4, 0($3)
subu $2, $3, $3
TAG437:
lhu $3, 0($2)
bgtz $2, TAG438
addiu $1, $2, 6
mtlo $3
TAG438:
bltz $1, TAG439
mflo $1
beq $1, $1, TAG439
nor $4, $1, $1
TAG439:
divu $4, $4
bne $4, $4, TAG440
sb $4, 257($4)
mtlo $4
TAG440:
bne $4, $4, TAG441
sltu $2, $4, $4
lw $3, 257($4)
mfhi $4
TAG441:
lui $2, 14
sll $0, $0, 0
beq $2, $1, TAG442
mflo $1
TAG442:
sw $1, 257($1)
divu $1, $1
sb $1, 257($1)
mult $1, $1
TAG443:
sb $1, 257($1)
divu $1, $1
sltiu $1, $1, 6
nor $4, $1, $1
TAG444:
lui $2, 5
sll $0, $0, 0
lui $2, 7
sltu $4, $2, $4
TAG445:
addu $4, $4, $4
lui $2, 8
mtlo $4
lui $3, 15
TAG446:
sltu $4, $3, $3
lui $4, 9
or $4, $3, $3
bgez $4, TAG447
TAG447:
sll $0, $0, 0
divu $4, $4
bne $4, $4, TAG448
xori $4, $4, 11
TAG448:
subu $2, $4, $4
sub $1, $4, $2
lui $2, 13
mflo $1
TAG449:
mthi $1
sltiu $2, $1, 7
sb $1, 0($2)
bgtz $2, TAG450
TAG450:
mthi $2
mthi $2
sb $2, 0($2)
subu $2, $2, $2
TAG451:
multu $2, $2
srl $2, $2, 12
mult $2, $2
mthi $2
TAG452:
srav $1, $2, $2
mult $2, $2
mthi $1
sra $4, $2, 11
TAG453:
mult $4, $4
sw $4, 0($4)
multu $4, $4
srl $4, $4, 1
TAG454:
sll $4, $4, 10
multu $4, $4
mtlo $4
mult $4, $4
TAG455:
mfhi $3
multu $4, $4
lui $1, 10
bgtz $4, TAG456
TAG456:
lui $2, 6
sll $0, $0, 0
mfhi $1
mfhi $1
TAG457:
lui $2, 5
addu $2, $1, $1
mult $2, $1
mult $1, $2
TAG458:
mflo $2
mfhi $3
mfhi $3
beq $3, $3, TAG459
TAG459:
lh $1, 0($3)
multu $1, $1
mthi $3
beq $1, $3, TAG460
TAG460:
mthi $1
beq $1, $1, TAG461
mult $1, $1
mtlo $1
TAG461:
sb $1, 0($1)
blez $1, TAG462
mfhi $4
sltiu $3, $1, 8
TAG462:
mfhi $2
bne $3, $2, TAG463
sltiu $2, $2, 3
mfhi $4
TAG463:
sh $4, 0($4)
mult $4, $4
slt $4, $4, $4
mfhi $3
TAG464:
multu $3, $3
lw $1, 0($3)
multu $1, $3
sb $1, 0($1)
TAG465:
bgtz $1, TAG466
lui $1, 10
sllv $2, $1, $1
lui $1, 15
TAG466:
subu $1, $1, $1
lui $2, 7
bgtz $2, TAG467
xori $3, $1, 8
TAG467:
lui $3, 0
multu $3, $3
multu $3, $3
mflo $3
TAG468:
lbu $1, 0($3)
lui $2, 5
sll $0, $0, 0
sb $3, 0($1)
TAG469:
bgtz $4, TAG470
lui $1, 13
sll $0, $0, 0
mult $4, $4
TAG470:
sltiu $2, $1, 6
blez $2, TAG471
mult $2, $2
lb $1, 0($1)
TAG471:
mflo $4
mthi $1
bgez $1, TAG472
mflo $3
TAG472:
mult $3, $3
mfhi $4
mtlo $4
multu $3, $4
TAG473:
bne $4, $4, TAG474
lui $2, 12
subu $3, $4, $4
bgez $2, TAG474
TAG474:
mfhi $3
sh $3, 0($3)
lui $2, 12
lui $2, 11
TAG475:
div $2, $2
mflo $3
sll $0, $0, 0
lui $3, 15
TAG476:
bltz $3, TAG477
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG477
TAG477:
addiu $4, $2, 14
lui $4, 13
mthi $4
lui $4, 11
TAG478:
mfhi $3
mflo $3
sll $3, $4, 14
beq $4, $3, TAG479
TAG479:
mflo $2
blez $2, TAG480
slti $4, $3, 2
andi $3, $3, 12
TAG480:
mflo $3
sb $3, 0($3)
mflo $2
bltz $2, TAG481
TAG481:
lbu $3, 0($2)
bltz $2, TAG482
mflo $4
addu $2, $4, $4
TAG482:
lui $4, 3
mfhi $3
lui $4, 6
sll $0, $0, 0
TAG483:
sll $0, $0, 0
blez $4, TAG484
lui $1, 13
sll $0, $0, 0
TAG484:
srlv $1, $1, $1
addu $4, $1, $1
lui $4, 14
bgez $4, TAG485
TAG485:
sll $0, $0, 0
mflo $1
srlv $4, $4, $4
sltiu $2, $4, 6
TAG486:
slti $2, $2, 12
lui $4, 13
divu $2, $2
bgez $2, TAG487
TAG487:
mflo $3
lbu $2, 0($3)
srav $4, $4, $3
srlv $1, $4, $3
TAG488:
multu $1, $1
sll $0, $0, 0
mtlo $2
div $2, $2
TAG489:
mthi $2
xori $2, $2, 9
lw $3, 0($2)
div $2, $2
TAG490:
beq $3, $3, TAG491
addiu $3, $3, 3
srlv $1, $3, $3
lui $1, 4
TAG491:
mfhi $1
mflo $3
sll $2, $3, 13
bltz $2, TAG492
TAG492:
mthi $2
mthi $2
bne $2, $2, TAG493
sw $2, -8192($2)
TAG493:
lui $1, 0
bne $1, $1, TAG494
subu $2, $1, $1
or $4, $1, $1
TAG494:
bgez $4, TAG495
lh $4, 0($4)
mflo $3
bgez $4, TAG495
TAG495:
mult $3, $3
lui $4, 8
sll $0, $0, 0
sltu $2, $3, $4
TAG496:
ori $1, $2, 14
sb $1, 0($2)
mult $1, $2
sra $4, $2, 10
TAG497:
mthi $4
lhu $2, 0($4)
lui $2, 6
beq $2, $2, TAG498
TAG498:
sll $0, $0, 0
div $2, $2
mtlo $2
mfhi $3
TAG499:
mtlo $3
mthi $3
lui $3, 1
lui $3, 12
TAG500:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
mthi $3
TAG501:
xor $1, $3, $3
multu $3, $3
lh $2, 0($1)
sh $2, 0($1)
TAG502:
mfhi $4
addu $3, $4, $2
xor $2, $3, $4
div $3, $2
TAG503:
sh $2, -3840($2)
mthi $2
div $2, $2
sb $2, -3840($2)
TAG504:
lui $1, 1
mthi $1
srav $3, $2, $2
beq $1, $1, TAG505
TAG505:
divu $3, $3
divu $3, $3
mtlo $3
bne $3, $3, TAG506
TAG506:
lui $1, 14
mfhi $3
sll $1, $3, 2
sh $1, 0($1)
TAG507:
lbu $2, 0($1)
lbu $4, 0($2)
multu $1, $1
sh $1, 0($4)
TAG508:
sltiu $1, $4, 0
mfhi $4
sltiu $4, $4, 7
sltu $1, $1, $4
TAG509:
addiu $3, $1, 3
lbu $4, 0($1)
lui $3, 2
bltz $3, TAG510
TAG510:
addiu $1, $3, 2
sll $0, $0, 0
sltiu $1, $3, 7
mthi $3
TAG511:
mthi $1
mflo $1
sll $4, $1, 8
mult $1, $1
TAG512:
sll $4, $4, 5
lui $3, 9
blez $3, TAG513
sll $0, $0, 0
TAG513:
bne $4, $4, TAG514
mtlo $4
addi $1, $4, 5
mtlo $4
TAG514:
lui $2, 3
lbu $1, 0($1)
multu $1, $2
multu $2, $2
TAG515:
sb $1, 0($1)
mflo $2
bgez $1, TAG516
mflo $4
TAG516:
bltz $4, TAG517
lhu $3, 0($4)
lw $4, 0($3)
lui $1, 9
TAG517:
sll $0, $0, 0
sb $2, 0($2)
addu $1, $1, $1
mflo $1
TAG518:
lb $3, 0($1)
slt $2, $3, $3
mflo $4
bgtz $1, TAG519
TAG519:
mtlo $4
mult $4, $4
bgez $4, TAG520
mthi $4
TAG520:
multu $4, $4
bne $4, $4, TAG521
multu $4, $4
multu $4, $4
TAG521:
mfhi $4
multu $4, $4
xor $2, $4, $4
and $2, $2, $2
TAG522:
beq $2, $2, TAG523
slti $1, $2, 4
beq $1, $2, TAG523
sb $2, 0($2)
TAG523:
sb $1, 0($1)
bgez $1, TAG524
sb $1, 0($1)
mtlo $1
TAG524:
lui $4, 9
mflo $1
lbu $3, 0($1)
sltu $3, $4, $3
TAG525:
mfhi $4
lui $3, 13
mfhi $4
lui $2, 5
TAG526:
lui $1, 5
mflo $1
blez $1, TAG527
mult $2, $1
TAG527:
blez $1, TAG528
sra $2, $1, 15
beq $2, $2, TAG528
sb $1, 0($1)
TAG528:
blez $2, TAG529
lui $4, 4
addu $2, $4, $2
mult $2, $2
TAG529:
bgtz $2, TAG530
mult $2, $2
mfhi $4
lui $3, 2
TAG530:
divu $3, $3
addu $4, $3, $3
bgtz $4, TAG531
mtlo $3
TAG531:
slt $2, $4, $4
mfhi $3
beq $2, $2, TAG532
sll $0, $0, 0
TAG532:
sltiu $3, $3, 9
addiu $4, $3, 1
mult $4, $3
lbu $4, 0($3)
TAG533:
lbu $3, 0($4)
subu $2, $4, $4
bgtz $2, TAG534
sb $3, 0($2)
TAG534:
sw $2, 0($2)
sh $2, 0($2)
sw $2, 0($2)
bltz $2, TAG535
TAG535:
sh $2, 0($2)
lb $3, 0($2)
bgez $2, TAG536
mfhi $2
TAG536:
mtlo $2
bne $2, $2, TAG537
lw $1, 0($2)
mfhi $4
TAG537:
mfhi $1
mtlo $4
bgtz $4, TAG538
lw $3, 0($4)
TAG538:
sllv $3, $3, $3
bne $3, $3, TAG539
lui $2, 0
mtlo $3
TAG539:
mthi $2
lui $4, 9
addu $2, $4, $2
ori $2, $2, 9
TAG540:
srlv $1, $2, $2
sltiu $3, $2, 1
lui $2, 1
sll $0, $0, 0
TAG541:
mfhi $3
lui $4, 2
mtlo $2
sll $0, $0, 0
TAG542:
slt $4, $1, $1
lui $4, 0
sra $3, $1, 8
mthi $4
TAG543:
mfhi $4
mflo $3
lui $3, 5
bltz $3, TAG544
TAG544:
slt $3, $3, $3
srl $4, $3, 2
sltiu $2, $3, 13
mult $4, $3
TAG545:
bgtz $2, TAG546
mtlo $2
lbu $4, 0($2)
sw $4, 0($2)
TAG546:
lui $3, 13
addu $4, $4, $4
lw $4, 0($4)
sw $4, 0($4)
TAG547:
mtlo $4
bgtz $4, TAG548
mfhi $1
sub $2, $4, $4
TAG548:
lbu $2, 0($2)
lb $1, 0($2)
lui $2, 14
lui $2, 9
TAG549:
blez $2, TAG550
mtlo $2
divu $2, $2
mthi $2
TAG550:
sll $0, $0, 0
sra $1, $2, 4
mult $2, $2
bgtz $1, TAG551
TAG551:
slti $4, $1, 1
mult $1, $4
sh $1, 0($4)
addi $4, $4, 12
TAG552:
mult $4, $4
sb $4, 0($4)
blez $4, TAG553
mflo $4
TAG553:
lui $3, 2
mflo $3
lb $1, -144($3)
lh $3, -144($3)
TAG554:
mfhi $4
lw $3, 28672($3)
sll $0, $0, 0
sll $0, $0, 0
TAG555:
sll $0, $0, 0
sllv $3, $3, $3
mfhi $1
mthi $3
TAG556:
nor $1, $1, $1
bgez $1, TAG557
sll $3, $1, 2
bne $3, $3, TAG557
TAG557:
mthi $3
mthi $3
sw $3, 4($3)
or $1, $3, $3
TAG558:
lui $2, 5
mthi $1
sra $1, $2, 15
mfhi $2
TAG559:
lui $2, 13
bltz $2, TAG560
sll $0, $0, 0
bgez $2, TAG560
TAG560:
mfhi $4
addu $2, $4, $2
sw $4, 4($4)
sll $0, $0, 0
TAG561:
mtlo $4
addiu $3, $4, 4
multu $3, $3
bgez $4, TAG562
TAG562:
mfhi $3
sh $3, 0($3)
sb $3, 0($3)
bgtz $3, TAG563
TAG563:
mflo $1
mthi $3
mthi $1
andi $4, $1, 2
TAG564:
lui $4, 12
srav $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG565:
lui $2, 13
mult $2, $3
add $4, $3, $3
mthi $2
TAG566:
addu $4, $4, $4
mflo $1
srav $2, $4, $4
mtlo $1
TAG567:
sw $2, 0($2)
xori $2, $2, 6
ori $3, $2, 14
mthi $2
TAG568:
sll $1, $3, 12
mfhi $2
andi $3, $2, 0
ori $1, $1, 5
TAG569:
bgtz $1, TAG570
sra $4, $1, 8
sw $1, 0($1)
sw $4, 0($1)
TAG570:
mflo $1
lui $4, 0
bgez $1, TAG571
mflo $4
TAG571:
mflo $1
mflo $1
lh $2, 0($1)
blez $1, TAG572
TAG572:
sw $2, 0($2)
addiu $4, $2, 15
mult $2, $2
lbu $1, 0($2)
TAG573:
multu $1, $1
mtlo $1
lui $3, 10
lui $2, 13
TAG574:
slti $2, $2, 0
slti $1, $2, 1
divu $1, $1
lui $2, 14
TAG575:
mflo $4
mtlo $4
mtlo $2
lb $3, 0($4)
TAG576:
xor $3, $3, $3
mthi $3
beq $3, $3, TAG577
sltiu $2, $3, 14
TAG577:
sb $2, 0($2)
lui $4, 3
bne $4, $2, TAG578
mtlo $2
TAG578:
ori $3, $4, 13
mtlo $4
andi $2, $3, 15
mfhi $4
TAG579:
bne $4, $4, TAG580
lh $1, 0($4)
xori $1, $4, 7
bne $1, $1, TAG580
TAG580:
and $2, $1, $1
slt $1, $2, $2
mflo $1
mtlo $1
TAG581:
mfhi $2
srlv $4, $1, $1
mtlo $1
bgtz $1, TAG582
TAG582:
lui $3, 14
slt $1, $4, $4
subu $2, $3, $3
mfhi $3
TAG583:
sb $3, 0($3)
or $4, $3, $3
add $2, $4, $4
lui $1, 5
TAG584:
lui $2, 13
lui $2, 7
sll $0, $0, 0
mfhi $2
TAG585:
mult $2, $2
lhu $4, 0($2)
lui $3, 1
mtlo $2
TAG586:
bne $3, $3, TAG587
xor $3, $3, $3
sh $3, 0($3)
bgez $3, TAG587
TAG587:
ori $4, $3, 14
bne $3, $3, TAG588
mthi $3
mfhi $2
TAG588:
sllv $1, $2, $2
mthi $2
andi $4, $2, 4
lui $2, 6
TAG589:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG590
mult $2, $4
TAG590:
or $2, $4, $4
mfhi $3
sb $4, 0($2)
bne $4, $2, TAG591
TAG591:
mult $3, $3
lui $4, 15
div $3, $4
lbu $2, 0($3)
TAG592:
sh $2, 0($2)
multu $2, $2
beq $2, $2, TAG593
mthi $2
TAG593:
mult $2, $2
beq $2, $2, TAG594
lui $3, 13
bne $3, $3, TAG594
TAG594:
mthi $3
bne $3, $3, TAG595
sllv $4, $3, $3
sll $0, $0, 0
TAG595:
bne $4, $4, TAG596
div $4, $4
sll $0, $0, 0
sra $2, $4, 4
TAG596:
slt $1, $2, $2
mtlo $2
lui $4, 10
addiu $4, $2, 3
TAG597:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG598
multu $1, $1
TAG598:
mult $1, $1
slt $2, $1, $1
bne $1, $1, TAG599
lb $1, 0($1)
TAG599:
nor $4, $1, $1
bgtz $4, TAG600
lbu $1, 1($4)
sra $3, $1, 6
TAG600:
mfhi $2
srl $3, $2, 6
sb $3, 0($2)
sll $2, $3, 3
TAG601:
bgez $2, TAG602
mthi $2
lbu $3, 0($2)
sh $3, 0($3)
TAG602:
lh $1, 0($3)
mthi $3
lui $1, 6
div $3, $1
TAG603:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG604:
srav $3, $2, $2
ori $2, $2, 3
addu $4, $3, $3
sh $4, 0($3)
TAG605:
bgtz $4, TAG606
mflo $2
mult $2, $4
beq $4, $2, TAG606
TAG606:
mfhi $4
lh $2, 0($4)
lh $2, 0($4)
sltiu $3, $2, 4
TAG607:
blez $3, TAG608
mtlo $3
slti $3, $3, 7
sb $3, 0($3)
TAG608:
and $4, $3, $3
multu $3, $4
sltiu $4, $3, 0
xori $3, $4, 10
TAG609:
multu $3, $3
lb $4, 0($3)
lui $1, 9
srav $1, $1, $1
TAG610:
sll $0, $0, 0
srlv $2, $1, $1
sll $0, $0, 0
ori $4, $1, 15
TAG611:
slti $1, $4, 4
div $1, $4
beq $1, $1, TAG612
mflo $2
TAG612:
andi $1, $2, 5
lw $1, 0($1)
bgez $1, TAG613
addiu $3, $1, 9
TAG613:
multu $3, $3
sh $3, -265($3)
lh $4, -265($3)
beq $3, $3, TAG614
TAG614:
subu $1, $4, $4
divu $4, $4
lhu $1, -265($4)
ori $2, $1, 15
TAG615:
mult $2, $2
lw $4, -271($2)
beq $4, $4, TAG616
mtlo $4
TAG616:
lui $2, 9
bgez $2, TAG617
xor $2, $2, $4
mult $4, $2
TAG617:
bne $2, $2, TAG618
mthi $2
mult $2, $2
bne $2, $2, TAG618
TAG618:
sra $1, $2, 8
beq $2, $2, TAG619
sll $3, $1, 7
sb $1, 0($2)
TAG619:
mflo $2
div $3, $3
mult $2, $3
sll $0, $0, 0
TAG620:
sll $0, $0, 0
and $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG621:
addiu $3, $1, 13
blez $1, TAG622
sll $2, $1, 3
div $2, $1
TAG622:
bne $2, $2, TAG623
lbu $1, -18440($2)
div $1, $2
mtlo $2
TAG623:
mflo $4
mflo $3
lb $3, -18440($3)
sll $3, $4, 14
TAG624:
srav $2, $3, $3
div $3, $3
sll $0, $0, 0
ori $3, $3, 7
TAG625:
sllv $4, $3, $3
sll $0, $0, 0
multu $4, $3
bgez $3, TAG626
TAG626:
mtlo $4
mtlo $4
sltiu $1, $4, 8
sll $0, $0, 0
TAG627:
mtlo $2
srl $4, $2, 4
bltz $4, TAG628
sll $0, $0, 0
TAG628:
sll $3, $4, 9
sltu $1, $3, $4
mtlo $4
lui $2, 11
TAG629:
mtlo $2
sra $4, $2, 11
lui $1, 12
sh $2, -352($4)
TAG630:
sll $0, $0, 0
beq $2, $2, TAG631
mflo $1
mthi $1
TAG631:
addiu $4, $1, 11
lui $2, 1
lui $1, 9
bgez $1, TAG632
TAG632:
mflo $4
bne $1, $4, TAG633
divu $1, $1
divu $4, $4
TAG633:
sll $0, $0, 0
lui $2, 1
mflo $3
mfhi $2
TAG634:
lb $4, 0($2)
lbu $3, 0($2)
lh $3, 0($4)
mfhi $2
TAG635:
sb $2, 0($2)
nor $4, $2, $2
xor $3, $4, $4
addi $4, $2, 5
TAG636:
multu $4, $4
lui $2, 7
lui $3, 15
lui $3, 6
TAG637:
mflo $1
slti $4, $1, 0
mflo $1
xori $4, $1, 12
TAG638:
lbu $4, 0($4)
beq $4, $4, TAG639
lui $3, 12
div $4, $4
TAG639:
bgtz $3, TAG640
srl $3, $3, 13
mult $3, $3
divu $3, $3
TAG640:
lui $2, 0
beq $2, $2, TAG641
lui $1, 9
mtlo $1
TAG641:
bne $1, $1, TAG642
nor $4, $1, $1
bne $1, $4, TAG642
lui $2, 5
TAG642:
lui $4, 9
divu $4, $2
mflo $2
lb $1, 0($2)
TAG643:
mfhi $1
mthi $1
mfhi $4
beq $4, $1, TAG644
TAG644:
subu $1, $4, $4
mflo $4
sllv $4, $4, $4
mfhi $3
TAG645:
slti $3, $3, 0
sb $3, 0($3)
lui $2, 10
mtlo $2
TAG646:
bne $2, $2, TAG647
srav $2, $2, $2
lui $2, 6
mfhi $3
TAG647:
beq $3, $3, TAG648
sll $0, $0, 0
mult $2, $2
mfhi $3
TAG648:
sll $0, $0, 0
bgez $3, TAG649
mtlo $1
div $1, $1
TAG649:
andi $3, $1, 4
lbu $3, 0($3)
sra $3, $1, 14
bne $3, $3, TAG650
TAG650:
mflo $4
lh $3, 0($3)
mflo $4
mtlo $3
TAG651:
sub $4, $4, $4
bgez $4, TAG652
andi $2, $4, 12
sub $2, $4, $4
TAG652:
lui $1, 15
sll $0, $0, 0
bgez $1, TAG653
sll $0, $0, 0
TAG653:
mthi $3
multu $3, $3
bne $3, $3, TAG654
sh $3, 0($3)
TAG654:
sb $3, 0($3)
sh $3, 0($3)
mflo $1
multu $1, $1
TAG655:
mthi $1
mfhi $3
mfhi $4
beq $1, $3, TAG656
TAG656:
or $2, $4, $4
beq $4, $2, TAG657
mflo $3
xori $1, $4, 8
TAG657:
lbu $1, 0($1)
lbu $2, 0($1)
sw $2, 0($2)
bgtz $1, TAG658
TAG658:
subu $4, $2, $2
lb $1, 0($4)
blez $2, TAG659
lw $3, 0($4)
TAG659:
srl $1, $3, 5
lui $4, 12
mfhi $2
sll $0, $0, 0
TAG660:
bne $2, $2, TAG661
mtlo $2
xor $1, $2, $2
lui $2, 9
TAG661:
bgez $2, TAG662
mfhi $3
lhu $1, 0($2)
mthi $1
TAG662:
xor $3, $1, $1
lui $1, 11
bne $1, $3, TAG663
xor $1, $1, $3
TAG663:
slti $2, $1, 0
mfhi $2
div $1, $1
bne $1, $1, TAG664
TAG664:
lb $2, 0($2)
multu $2, $2
srav $2, $2, $2
srav $4, $2, $2
TAG665:
sw $4, 0($4)
mflo $4
blez $4, TAG666
mtlo $4
TAG666:
mtlo $4
mfhi $2
beq $2, $2, TAG667
sllv $2, $2, $4
TAG667:
mthi $2
mtlo $2
blez $2, TAG668
nor $2, $2, $2
TAG668:
lui $4, 8
sllv $4, $2, $4
mflo $3
sw $4, 1($2)
TAG669:
bne $3, $3, TAG670
lh $3, 0($3)
sh $3, 1($3)
multu $3, $3
TAG670:
sw $3, 1($3)
lhu $1, 1($3)
beq $3, $1, TAG671
mflo $1
TAG671:
bgez $1, TAG672
lui $3, 12
bgtz $3, TAG672
sw $3, 0($3)
TAG672:
multu $3, $3
div $3, $3
addiu $3, $3, 0
mtlo $3
TAG673:
sll $0, $0, 0
mtlo $4
beq $4, $3, TAG674
lb $4, 1($4)
TAG674:
blez $4, TAG675
lhu $1, 1($4)
bne $4, $1, TAG675
addi $1, $1, 13
TAG675:
bgtz $1, TAG676
mflo $3
bgtz $1, TAG676
sw $1, 0($1)
TAG676:
lui $2, 0
sb $3, 0($2)
srl $4, $3, 13
lw $2, 1($3)
TAG677:
sb $2, 1($2)
mfhi $2
sb $2, 0($2)
sw $2, 0($2)
TAG678:
bne $2, $2, TAG679
mtlo $2
nor $4, $2, $2
bne $4, $4, TAG679
TAG679:
sllv $2, $4, $4
bgtz $2, TAG680
sw $2, 1($4)
bgtz $2, TAG680
TAG680:
mtlo $2
addiu $1, $2, 8
sll $0, $0, 0
sll $0, $0, 0
TAG681:
beq $4, $4, TAG682
srlv $3, $4, $4
mtlo $4
mult $4, $3
TAG682:
mtlo $3
mult $3, $3
subu $2, $3, $3
lui $3, 3
TAG683:
sra $1, $3, 8
bltz $3, TAG684
sltiu $4, $3, 6
sll $0, $0, 0
TAG684:
sltu $3, $4, $4
sh $4, 0($4)
xori $2, $3, 10
sh $4, 0($3)
TAG685:
lh $2, 0($2)
subu $2, $2, $2
mult $2, $2
lui $2, 1
TAG686:
mthi $2
lui $4, 15
sll $0, $0, 0
addiu $2, $4, 3
TAG687:
blez $2, TAG688
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG688:
sll $1, $3, 4
mthi $3
blez $1, TAG689
mfhi $2
TAG689:
lbu $1, 0($2)
bne $1, $2, TAG690
mfhi $3
mult $3, $2
TAG690:
mflo $1
lhu $1, 0($1)
bgtz $1, TAG691
and $1, $1, $1
TAG691:
beq $1, $1, TAG692
sllv $3, $1, $1
sb $3, 0($3)
lh $2, 0($1)
TAG692:
or $2, $2, $2
multu $2, $2
sltiu $3, $2, 7
bgez $2, TAG693
TAG693:
sb $3, 0($3)
sb $3, 0($3)
mult $3, $3
mthi $3
TAG694:
mflo $4
or $3, $4, $3
mult $3, $4
lui $3, 3
TAG695:
bltz $3, TAG696
mfhi $1
bltz $3, TAG696
sltu $2, $1, $3
TAG696:
beq $2, $2, TAG697
mthi $2
mflo $1
sb $1, 0($1)
TAG697:
mflo $3
lui $1, 5
lb $4, 0($3)
lui $3, 4
TAG698:
mult $3, $3
mflo $2
bltz $3, TAG699
sll $0, $0, 0
TAG699:
mflo $3
bgtz $2, TAG700
andi $2, $2, 13
sll $3, $3, 13
TAG700:
bltz $3, TAG701
lbu $1, 0($3)
addi $1, $3, 6
lbu $2, 0($3)
TAG701:
lb $4, 0($2)
lui $2, 6
lui $3, 10
subu $2, $2, $2
TAG702:
lhu $4, 0($2)
bne $4, $2, TAG703
mflo $4
sb $2, 0($4)
TAG703:
lui $2, 8
mfhi $1
bltz $1, TAG704
divu $1, $1
TAG704:
nor $4, $1, $1
sllv $2, $1, $1
sll $0, $0, 0
bne $2, $4, TAG705
TAG705:
andi $3, $2, 14
bgtz $3, TAG706
sll $0, $0, 0
subu $1, $3, $3
TAG706:
mult $1, $1
srlv $2, $1, $1
lbu $4, 0($1)
xori $3, $1, 15
TAG707:
lbu $4, 0($3)
lb $2, 0($3)
slti $3, $3, 11
lhu $4, 0($3)
TAG708:
sra $1, $4, 3
lui $1, 1
addu $1, $1, $4
srav $4, $1, $1
TAG709:
mtlo $4
mtlo $4
mfhi $3
mflo $4
TAG710:
addiu $3, $4, 1
bgtz $3, TAG711
andi $2, $4, 13
sllv $2, $3, $2
TAG711:
blez $2, TAG712
sll $1, $2, 6
xori $1, $2, 3
divu $2, $1
TAG712:
mflo $4
bne $4, $4, TAG713
sltiu $2, $1, 15
lh $4, 0($1)
TAG713:
multu $4, $4
divu $4, $4
srl $2, $4, 3
lb $2, 0($2)
TAG714:
lb $2, 0($2)
blez $2, TAG715
mfhi $2
mfhi $2
TAG715:
sra $4, $2, 4
bgez $2, TAG716
or $4, $4, $4
mflo $1
TAG716:
bne $1, $1, TAG717
mfhi $1
mtlo $1
mtlo $1
TAG717:
mflo $1
multu $1, $1
bgtz $1, TAG718
lui $4, 10
TAG718:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG719:
mflo $1
mtlo $4
mult $1, $1
lh $3, 0($1)
TAG720:
andi $3, $3, 1
lui $1, 13
div $3, $1
multu $3, $3
TAG721:
beq $1, $1, TAG722
mflo $3
bgtz $3, TAG722
lhu $1, 0($3)
TAG722:
sll $2, $1, 6
div $1, $2
subu $1, $2, $1
divu $1, $2
TAG723:
mfhi $4
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
TAG724:
sll $0, $0, 0
slti $4, $4, 5
mthi $2
blez $4, TAG725
TAG725:
andi $4, $4, 11
beq $4, $4, TAG726
addi $4, $4, 1
mtlo $4
TAG726:
lui $4, 9
mthi $4
bne $4, $4, TAG727
subu $4, $4, $4
TAG727:
srav $1, $4, $4
add $3, $1, $4
lui $4, 3
mfhi $1
TAG728:
mthi $1
mfhi $2
sll $0, $0, 0
lui $1, 13
TAG729:
subu $4, $1, $1
addu $4, $1, $4
bgtz $1, TAG730
div $4, $1
TAG730:
lui $3, 3
sll $0, $0, 0
andi $2, $4, 13
addiu $1, $4, 13
TAG731:
mfhi $1
bne $1, $1, TAG732
sw $1, 0($1)
sw $1, 0($1)
TAG732:
mfhi $2
sh $1, 0($1)
lhu $3, 0($1)
slti $3, $3, 8
TAG733:
lb $1, 0($3)
beq $3, $1, TAG734
sltiu $3, $1, 1
multu $3, $3
TAG734:
sll $1, $3, 0
srav $1, $3, $3
slt $4, $1, $1
mtlo $1
TAG735:
mult $4, $4
sw $4, 0($4)
bltz $4, TAG736
multu $4, $4
TAG736:
sh $4, 0($4)
mult $4, $4
sb $4, 0($4)
bgez $4, TAG737
TAG737:
sll $1, $4, 0
srlv $4, $1, $4
sra $4, $4, 7
srl $4, $4, 10
TAG738:
ori $2, $4, 3
mthi $2
sb $2, 0($2)
mtlo $2
TAG739:
mult $2, $2
lbu $2, 0($2)
mfhi $2
lw $1, 0($2)
TAG740:
addiu $4, $1, 7
lui $3, 8
addiu $4, $3, 0
mflo $3
TAG741:
div $3, $3
mthi $3
sb $3, 0($3)
mfhi $1
TAG742:
lui $2, 2
slti $2, $1, 7
sh $2, 0($2)
bgtz $2, TAG743
TAG743:
mtlo $2
lui $3, 11
and $2, $2, $3
mthi $3
TAG744:
mflo $4
slti $4, $2, 8
subu $4, $2, $4
mult $4, $4
TAG745:
sw $4, 1($4)
div $4, $4
mflo $3
lb $1, 0($3)
TAG746:
bgez $1, TAG747
srav $2, $1, $1
sw $2, 1($2)
divu $1, $1
TAG747:
mfhi $3
lh $3, 1($2)
lh $3, 1($3)
lui $4, 10
TAG748:
mult $4, $4
sll $0, $0, 0
subu $1, $4, $4
xori $1, $1, 1
TAG749:
mtlo $1
addiu $4, $1, 11
subu $2, $1, $4
beq $2, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop