ori $1, $0, 13
ori $2, $0, 6
ori $3, $0, 4
ori $4, $0, 3
sw $2, 0($0)
sw $3, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $2, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $3, 104($0)
sw $3, 108($0)
sw $4, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $4, 124($0)
srlv $1, $2, $2
sra $3, $2, 15
lui $3, 2
mflo $1
TAG1:
sub $3, $1, $1
mult $3, $1
beq $1, $3, TAG2
sh $1, 0($1)
TAG2:
mflo $3
sw $3, 0($3)
mtlo $3
lui $1, 7
TAG3:
div $1, $1
sll $0, $0, 0
lh $1, 0($3)
addi $2, $1, 11
TAG4:
addiu $2, $2, 6
lui $4, 10
bne $4, $4, TAG5
lui $3, 4
TAG5:
addiu $1, $3, 10
sll $0, $0, 0
mtlo $1
mtlo $3
TAG6:
mult $1, $1
sll $0, $0, 0
sb $1, 0($2)
bne $1, $2, TAG7
TAG7:
subu $1, $2, $2
bgez $2, TAG8
multu $2, $1
sh $2, 0($1)
TAG8:
bgtz $1, TAG9
sllv $2, $1, $1
addiu $2, $2, 7
ori $3, $2, 3
TAG9:
bne $3, $3, TAG10
mfhi $1
addiu $3, $3, 9
bltz $3, TAG10
TAG10:
mthi $3
lui $1, 1
mflo $1
bltz $3, TAG11
TAG11:
mult $1, $1
mflo $4
lui $1, 8
lui $4, 5
TAG12:
lui $2, 1
and $3, $2, $2
lui $2, 9
mtlo $3
TAG13:
bgtz $2, TAG14
sll $0, $0, 0
sltiu $3, $2, 2
lui $4, 5
TAG14:
mult $4, $4
bgtz $4, TAG15
sll $0, $0, 0
sh $4, 0($4)
TAG15:
mflo $3
slti $1, $4, 10
lw $1, 0($3)
multu $1, $1
TAG16:
beq $1, $1, TAG17
mult $1, $1
lw $3, 0($1)
lui $1, 7
TAG17:
lui $1, 6
bgtz $1, TAG18
lui $1, 14
bgez $1, TAG18
TAG18:
mflo $3
lui $2, 9
lh $1, 0($3)
mfhi $1
TAG19:
beq $1, $1, TAG20
mfhi $2
slti $2, $1, 0
bltz $1, TAG20
TAG20:
sub $4, $2, $2
lui $3, 14
lui $1, 4
lb $1, 0($2)
TAG21:
sh $1, 0($1)
bltz $1, TAG22
mult $1, $1
bgtz $1, TAG22
TAG22:
lui $1, 15
lui $3, 11
beq $3, $3, TAG23
mthi $3
TAG23:
bgtz $3, TAG24
sll $0, $0, 0
slti $4, $3, 3
lui $4, 7
TAG24:
sub $4, $4, $4
sh $4, 0($4)
mfhi $3
mtlo $3
TAG25:
bltz $3, TAG26
sltiu $1, $3, 4
lh $3, 0($1)
lbu $1, 0($1)
TAG26:
sb $1, 0($1)
mult $1, $1
sh $1, 0($1)
mflo $3
TAG27:
lui $3, 6
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG28:
beq $3, $3, TAG29
sll $2, $3, 7
and $1, $3, $3
sra $4, $2, 6
TAG29:
bne $4, $4, TAG30
mult $4, $4
lbu $1, 0($4)
srav $3, $4, $4
TAG30:
multu $3, $3
sb $3, 0($3)
sw $3, 0($3)
mfhi $2
TAG31:
mflo $3
mflo $2
srlv $4, $2, $2
bgtz $4, TAG32
TAG32:
sra $3, $4, 5
mult $3, $4
sltiu $2, $3, 1
lbu $4, 0($4)
TAG33:
bgtz $4, TAG34
mflo $2
mthi $2
and $2, $4, $2
TAG34:
sh $2, 0($2)
sw $2, 0($2)
add $4, $2, $2
bltz $4, TAG35
TAG35:
mthi $4
bltz $4, TAG36
mult $4, $4
and $4, $4, $4
TAG36:
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
bne $1, $4, TAG37
TAG37:
sll $0, $0, 0
sll $0, $0, 0
xori $2, $1, 15
sll $0, $0, 0
TAG38:
mfhi $3
mfhi $2
bltz $3, TAG39
lw $4, 0($2)
TAG39:
blez $4, TAG40
lbu $4, 0($4)
sra $3, $4, 11
bgez $4, TAG40
TAG40:
mult $3, $3
mfhi $2
lhu $2, 0($3)
bne $3, $2, TAG41
TAG41:
lw $4, 0($2)
lui $2, 0
sw $2, 0($2)
bne $2, $2, TAG42
TAG42:
multu $2, $2
blez $2, TAG43
mult $2, $2
mthi $2
TAG43:
bltz $2, TAG44
lui $4, 9
srav $4, $2, $4
bgtz $4, TAG44
TAG44:
lui $3, 3
addiu $3, $3, 7
sll $0, $0, 0
sw $4, 0($4)
TAG45:
sll $0, $0, 0
bltz $4, TAG46
ori $1, $4, 8
addu $2, $1, $4
TAG46:
mflo $4
lui $1, 13
mthi $1
multu $4, $4
TAG47:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG48:
ori $3, $1, 6
sll $0, $0, 0
beq $2, $1, TAG49
srl $4, $1, 10
TAG49:
ori $4, $4, 8
mult $4, $4
bltz $4, TAG50
sltu $1, $4, $4
TAG50:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG51:
ori $3, $2, 14
mflo $1
lui $1, 6
lui $2, 11
TAG52:
sll $0, $0, 0
sll $0, $0, 0
sll $4, $2, 5
mthi $2
TAG53:
addiu $3, $4, 12
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG54:
mtlo $4
sll $0, $0, 0
mthi $4
multu $4, $4
TAG55:
div $4, $4
slti $2, $4, 8
div $2, $4
lui $4, 10
TAG56:
mfhi $2
sll $0, $0, 0
mthi $4
add $2, $2, $4
TAG57:
andi $3, $2, 3
and $4, $2, $3
bgtz $4, TAG58
lui $2, 13
TAG58:
blez $2, TAG59
sll $0, $0, 0
blez $2, TAG59
sll $0, $0, 0
TAG59:
or $4, $2, $2
beq $2, $2, TAG60
sltu $1, $4, $2
mflo $2
TAG60:
div $2, $2
mult $2, $2
bgez $2, TAG61
lui $3, 6
TAG61:
bne $3, $3, TAG62
sll $0, $0, 0
mtlo $3
mfhi $4
TAG62:
xor $1, $4, $4
andi $3, $4, 15
mult $1, $1
xori $4, $1, 6
TAG63:
lbu $1, 0($4)
lui $3, 0
lui $1, 12
lui $4, 14
TAG64:
sltiu $1, $4, 9
subu $2, $4, $4
sll $0, $0, 0
mflo $4
TAG65:
multu $4, $4
lw $1, 0($4)
multu $4, $1
or $4, $4, $4
TAG66:
mfhi $1
mthi $4
mult $1, $1
slti $1, $4, 2
TAG67:
addiu $2, $1, 9
lb $2, 0($1)
bne $1, $2, TAG68
lui $4, 13
TAG68:
mthi $4
bne $4, $4, TAG69
mult $4, $4
lui $2, 12
TAG69:
mthi $2
sll $0, $0, 0
mflo $2
sw $2, 0($2)
TAG70:
sllv $2, $2, $2
sh $2, 0($2)
mult $2, $2
lui $4, 11
TAG71:
mflo $2
beq $4, $4, TAG72
mflo $1
sb $2, 0($4)
TAG72:
mthi $1
multu $1, $1
beq $1, $1, TAG73
add $1, $1, $1
TAG73:
lw $1, 0($1)
xor $2, $1, $1
lui $3, 1
mfhi $4
TAG74:
mthi $4
srlv $3, $4, $4
ori $4, $3, 10
mtlo $4
TAG75:
mflo $2
lh $2, 0($2)
mflo $4
lw $3, 0($2)
TAG76:
addiu $2, $3, 10
bgez $2, TAG77
div $2, $2
addiu $1, $2, 15
TAG77:
xor $4, $1, $1
andi $3, $1, 8
mult $3, $4
mult $3, $1
TAG78:
lhu $1, 0($3)
lui $2, 6
mthi $1
srlv $4, $3, $1
TAG79:
lui $4, 8
sll $0, $0, 0
lui $4, 2
lui $1, 12
TAG80:
sll $0, $0, 0
srlv $3, $1, $1
divu $3, $3
bgez $3, TAG81
TAG81:
mthi $3
lui $3, 4
beq $3, $3, TAG82
mfhi $4
TAG82:
beq $4, $4, TAG83
mfhi $1
sll $1, $1, 12
mtlo $4
TAG83:
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $1, 6
TAG84:
lui $1, 7
divu $1, $1
mult $1, $1
lui $2, 9
TAG85:
lui $1, 5
sll $0, $0, 0
srl $2, $2, 3
mthi $2
TAG86:
mtlo $2
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG87:
sll $0, $0, 0
mfhi $1
sltiu $1, $3, 12
beq $1, $1, TAG88
TAG88:
mtlo $1
beq $1, $1, TAG89
multu $1, $1
lui $4, 4
TAG89:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
mflo $1
TAG90:
lui $4, 12
sb $1, 0($1)
xor $1, $4, $1
mult $1, $1
TAG91:
sltu $4, $1, $1
sll $0, $0, 0
or $1, $4, $1
sll $0, $0, 0
TAG92:
sll $0, $0, 0
mthi $1
srl $4, $1, 12
slti $4, $4, 4
TAG93:
lui $3, 6
sll $0, $0, 0
lui $1, 11
sll $0, $0, 0
TAG94:
srl $1, $1, 11
srl $3, $1, 5
sll $4, $1, 13
andi $2, $3, 0
TAG95:
mtlo $2
sltu $3, $2, $2
lbu $4, 0($3)
addu $1, $3, $3
TAG96:
sllv $2, $1, $1
lui $2, 0
sub $4, $1, $2
srav $3, $4, $2
TAG97:
mfhi $2
sllv $3, $3, $3
bgez $3, TAG98
multu $2, $3
TAG98:
sh $3, 0($3)
lb $1, 0($3)
sll $4, $3, 9
addi $3, $4, 4
TAG99:
bltz $3, TAG100
mfhi $1
lui $2, 8
divu $2, $2
TAG100:
sll $0, $0, 0
bne $2, $2, TAG101
mfhi $1
mfhi $1
TAG101:
addu $4, $1, $1
multu $1, $4
mthi $4
bgtz $4, TAG102
TAG102:
mult $4, $4
sh $4, 0($4)
lh $4, 0($4)
mult $4, $4
TAG103:
nor $3, $4, $4
lui $4, 5
div $3, $3
addu $4, $4, $3
TAG104:
blez $4, TAG105
mult $4, $4
subu $2, $4, $4
beq $2, $4, TAG105
TAG105:
lui $1, 6
slt $2, $1, $2
lui $4, 12
bgez $4, TAG106
TAG106:
mflo $4
bne $4, $4, TAG107
ori $4, $4, 9
sllv $4, $4, $4
TAG107:
mflo $1
mult $4, $4
sll $0, $0, 0
sra $4, $4, 11
TAG108:
multu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG109:
ori $1, $1, 9
bltz $1, TAG110
mflo $1
sltiu $3, $1, 10
TAG110:
mthi $3
xori $4, $3, 2
sh $3, 0($3)
lb $4, 0($4)
TAG111:
ori $4, $4, 8
mthi $4
lui $2, 5
xori $1, $4, 11
TAG112:
lui $2, 1
lui $3, 4
srl $1, $2, 4
beq $2, $3, TAG113
TAG113:
lui $3, 5
lui $4, 7
sll $3, $3, 6
bne $4, $1, TAG114
TAG114:
sll $0, $0, 0
lui $1, 7
lui $4, 11
sra $1, $3, 15
TAG115:
bne $1, $1, TAG116
mflo $2
lui $4, 6
lui $3, 13
TAG116:
mtlo $3
sra $3, $3, 11
lh $2, -416($3)
lui $3, 5
TAG117:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG118
TAG118:
lui $2, 11
mthi $3
bgez $3, TAG119
lui $3, 2
TAG119:
sltiu $4, $3, 5
addiu $3, $3, 9
mflo $1
slti $4, $3, 13
TAG120:
bgez $4, TAG121
mult $4, $4
lui $3, 3
lui $4, 9
TAG121:
ori $4, $4, 1
lui $1, 9
andi $2, $4, 6
bgtz $2, TAG122
TAG122:
mthi $2
sh $2, 0($2)
mflo $1
mfhi $3
TAG123:
mult $3, $3
blez $3, TAG124
lui $2, 5
bltz $3, TAG124
TAG124:
mflo $1
subu $2, $2, $2
beq $2, $2, TAG125
sw $2, 0($2)
TAG125:
beq $2, $2, TAG126
mthi $2
beq $2, $2, TAG126
mfhi $2
TAG126:
srl $3, $2, 1
lh $1, 0($2)
sh $1, 0($3)
mfhi $2
TAG127:
sh $2, 0($2)
multu $2, $2
multu $2, $2
bltz $2, TAG128
TAG128:
sw $2, 0($2)
bltz $2, TAG129
sw $2, 0($2)
multu $2, $2
TAG129:
multu $2, $2
mthi $2
lui $4, 4
lui $3, 12
TAG130:
sll $0, $0, 0
mtlo $3
srlv $1, $3, $3
blez $3, TAG131
TAG131:
sll $0, $0, 0
slti $3, $4, 4
bne $1, $4, TAG132
lh $4, 0($3)
TAG132:
sb $4, 0($4)
bgtz $4, TAG133
lw $3, 0($4)
multu $3, $3
TAG133:
xor $2, $3, $3
lh $1, 0($3)
mthi $1
addi $3, $3, 5
TAG134:
sb $3, 0($3)
ori $1, $3, 12
sltiu $4, $1, 14
lbu $1, 0($1)
TAG135:
bne $1, $1, TAG136
addi $4, $1, 1
bne $1, $1, TAG136
or $1, $1, $4
TAG136:
lui $4, 9
lbu $2, 0($1)
bne $1, $2, TAG137
lui $4, 1
TAG137:
mthi $4
lui $4, 8
mflo $1
lui $1, 6
TAG138:
sll $0, $0, 0
sll $0, $0, 0
or $2, $1, $1
sll $0, $0, 0
TAG139:
lui $1, 3
mtlo $2
mult $2, $2
sll $0, $0, 0
TAG140:
bne $1, $1, TAG141
or $4, $1, $1
srav $2, $4, $4
lui $3, 4
TAG141:
andi $2, $3, 2
divu $2, $3
lb $4, 0($2)
mtlo $4
TAG142:
sw $4, 0($4)
mtlo $4
mflo $4
mthi $4
TAG143:
mflo $4
multu $4, $4
multu $4, $4
sh $4, 0($4)
TAG144:
mult $4, $4
multu $4, $4
beq $4, $4, TAG145
sb $4, 0($4)
TAG145:
mflo $1
lhu $4, 0($4)
lw $2, 0($4)
addu $4, $2, $4
TAG146:
mult $4, $4
srav $3, $4, $4
sh $3, 0($4)
mult $3, $4
TAG147:
beq $3, $3, TAG148
mfhi $4
lw $1, 0($3)
lui $3, 0
TAG148:
beq $3, $3, TAG149
slt $2, $3, $3
mfhi $2
sb $2, 0($2)
TAG149:
mtlo $2
lbu $1, 0($2)
lui $1, 5
mult $2, $1
TAG150:
mfhi $2
mult $2, $2
lui $2, 15
blez $2, TAG151
TAG151:
sll $0, $0, 0
bne $2, $2, TAG152
lui $3, 1
xori $4, $2, 10
TAG152:
bne $4, $4, TAG153
sll $1, $4, 7
mfhi $1
multu $4, $1
TAG153:
addiu $3, $1, 12
sllv $3, $3, $1
lbu $2, 0($1)
blez $1, TAG154
TAG154:
mtlo $2
mthi $2
mfhi $4
mtlo $2
TAG155:
lbu $3, 0($4)
sh $4, 0($3)
mthi $3
multu $3, $4
TAG156:
sb $3, 0($3)
mult $3, $3
bne $3, $3, TAG157
subu $2, $3, $3
TAG157:
multu $2, $2
mthi $2
bne $2, $2, TAG158
lui $3, 14
TAG158:
nor $3, $3, $3
mthi $3
srl $1, $3, 7
sll $0, $0, 0
TAG159:
lui $2, 15
sll $0, $0, 0
lui $1, 11
bgez $2, TAG160
TAG160:
mult $1, $1
bgtz $1, TAG161
xori $2, $1, 6
divu $1, $1
TAG161:
sll $0, $0, 0
beq $2, $2, TAG162
mflo $3
bltz $2, TAG162
TAG162:
sw $3, 0($3)
mfhi $1
bgtz $3, TAG163
mult $1, $3
TAG163:
bltz $1, TAG164
mfhi $3
sll $2, $1, 15
multu $1, $2
TAG164:
addiu $3, $2, 13
addu $1, $2, $2
addiu $4, $1, 7
slt $3, $3, $3
TAG165:
mtlo $3
or $3, $3, $3
nor $4, $3, $3
mtlo $3
TAG166:
bne $4, $4, TAG167
ori $3, $4, 9
srav $2, $4, $3
lui $2, 10
TAG167:
sll $0, $0, 0
multu $2, $2
mflo $3
lh $1, 0($3)
TAG168:
andi $4, $1, 12
lw $4, 0($1)
mthi $4
bgtz $4, TAG169
TAG169:
mthi $4
sh $4, 0($4)
bltz $4, TAG170
sw $4, 0($4)
TAG170:
bne $4, $4, TAG171
mtlo $4
ori $2, $4, 5
addu $1, $2, $4
TAG171:
blez $1, TAG172
srlv $1, $1, $1
mthi $1
mult $1, $1
TAG172:
lb $3, 0($1)
mult $3, $3
lui $1, 7
sll $0, $0, 0
TAG173:
addiu $2, $2, 7
lui $2, 4
mflo $4
lui $4, 4
TAG174:
mfhi $3
mflo $1
lbu $3, 0($1)
bne $3, $1, TAG175
TAG175:
sra $4, $3, 13
mult $3, $3
sh $4, 0($4)
lw $1, 0($3)
TAG176:
beq $1, $1, TAG177
lui $2, 2
mflo $3
mflo $3
TAG177:
lbu $2, 0($3)
bne $2, $3, TAG178
mult $2, $2
beq $2, $2, TAG178
TAG178:
slt $3, $2, $2
mtlo $2
mfhi $3
sltu $4, $3, $3
TAG179:
bgtz $4, TAG180
multu $4, $4
lui $1, 8
mult $4, $1
TAG180:
mflo $1
mtlo $1
mflo $4
multu $1, $1
TAG181:
lh $1, 0($4)
sh $4, 0($1)
mflo $3
lhu $4, 0($4)
TAG182:
mfhi $1
lui $2, 15
multu $4, $1
mthi $2
TAG183:
slt $4, $2, $2
xor $2, $4, $2
bltz $2, TAG184
mfhi $4
TAG184:
sll $0, $0, 0
bltz $4, TAG185
multu $3, $4
lui $1, 11
TAG185:
andi $1, $1, 1
lui $3, 8
bgtz $3, TAG186
sb $1, 0($1)
TAG186:
lui $4, 3
bltz $4, TAG187
mflo $3
sll $0, $0, 0
TAG187:
lb $2, 0($3)
sll $4, $2, 8
beq $3, $4, TAG188
slt $1, $3, $3
TAG188:
blez $1, TAG189
mflo $1
mtlo $1
mult $1, $1
TAG189:
bgtz $1, TAG190
srav $3, $1, $1
beq $3, $3, TAG190
sh $3, 0($1)
TAG190:
bne $3, $3, TAG191
srlv $1, $3, $3
bltz $3, TAG191
sltiu $3, $1, 2
TAG191:
sb $3, 0($3)
div $3, $3
bgez $3, TAG192
lb $2, 0($3)
TAG192:
multu $2, $2
mtlo $2
sra $1, $2, 14
lui $3, 14
TAG193:
mfhi $3
lui $2, 14
bgez $2, TAG194
lui $4, 4
TAG194:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG195:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
slt $2, $4, $4
TAG196:
multu $2, $2
blez $2, TAG197
lui $4, 7
xori $2, $2, 12
TAG197:
mfhi $4
andi $3, $2, 12
mflo $3
bne $3, $3, TAG198
TAG198:
lui $1, 0
bgtz $1, TAG199
sh $3, 0($1)
mtlo $1
TAG199:
mflo $2
multu $2, $2
lui $2, 5
mthi $2
TAG200:
divu $2, $2
mflo $4
bne $4, $2, TAG201
sll $0, $0, 0
TAG201:
bgtz $4, TAG202
subu $4, $4, $4
lbu $4, 0($4)
lui $4, 9
TAG202:
mtlo $4
lhu $2, 0($4)
lui $4, 1
sw $4, 0($2)
TAG203:
mfhi $2
mflo $3
bne $2, $4, TAG204
lui $1, 8
TAG204:
mult $1, $1
mtlo $1
lui $1, 15
mthi $1
TAG205:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG206
TAG206:
mflo $4
mfhi $2
mult $4, $1
divu $1, $1
TAG207:
mult $2, $2
sll $0, $0, 0
xor $2, $2, $2
sra $1, $2, 2
TAG208:
beq $1, $1, TAG209
sb $1, 0($1)
sh $1, 0($1)
mflo $2
TAG209:
lui $3, 1
nor $4, $2, $3
srl $1, $2, 14
mtlo $1
TAG210:
mult $1, $1
lh $2, 0($1)
slt $2, $2, $2
mflo $1
TAG211:
add $4, $1, $1
beq $1, $1, TAG212
slt $1, $4, $4
addu $2, $1, $4
TAG212:
lw $2, 0($2)
sll $0, $0, 0
divu $2, $2
mtlo $2
TAG213:
mflo $4
mthi $4
bltz $4, TAG214
mflo $1
TAG214:
sll $0, $0, 0
andi $1, $1, 8
multu $1, $1
blez $1, TAG215
TAG215:
lui $2, 3
lw $4, 0($1)
sll $2, $1, 11
lhu $2, 0($2)
TAG216:
and $1, $2, $2
bgez $2, TAG217
nor $1, $1, $2
addu $3, $1, $2
TAG217:
div $3, $3
blez $3, TAG218
mtlo $3
sll $0, $0, 0
TAG218:
bne $1, $1, TAG219
lui $4, 5
mthi $1
sll $0, $0, 0
TAG219:
mthi $4
mflo $4
bltz $4, TAG220
sll $0, $0, 0
TAG220:
sw $2, 0($2)
mfhi $1
sh $2, 0($2)
bne $1, $2, TAG221
TAG221:
lui $2, 0
mtlo $2
slt $2, $2, $2
srav $4, $2, $1
TAG222:
lbu $2, 0($4)
lh $3, 0($4)
lui $1, 3
mfhi $4
TAG223:
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG224:
sll $0, $0, 0
bne $1, $1, TAG225
mthi $1
slt $2, $1, $1
TAG225:
bne $2, $2, TAG226
lui $2, 9
multu $2, $2
addiu $4, $2, 11
TAG226:
bltz $4, TAG227
sll $0, $0, 0
mthi $4
mthi $4
TAG227:
sll $0, $0, 0
mtlo $4
lui $2, 7
mflo $2
TAG228:
mfhi $4
and $1, $4, $4
lui $3, 14
mtlo $2
TAG229:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG230:
mfhi $2
divu $2, $3
blez $3, TAG231
divu $2, $3
TAG231:
blez $2, TAG232
sh $2, 0($2)
lui $3, 11
bgez $2, TAG232
TAG232:
srl $3, $3, 1
bltz $3, TAG233
lui $4, 4
sra $1, $3, 5
TAG233:
bltz $1, TAG234
multu $1, $1
bgtz $1, TAG234
sh $1, -14336($1)
TAG234:
mult $1, $1
lui $4, 5
mflo $4
div $4, $4
TAG235:
sll $0, $0, 0
sra $3, $4, 10
bne $3, $4, TAG236
multu $3, $3
TAG236:
sll $0, $0, 0
mfhi $4
lb $1, 0($4)
mult $3, $3
TAG237:
bne $1, $1, TAG238
lw $2, 0($1)
mthi $1
mflo $2
TAG238:
bgez $2, TAG239
mflo $1
lui $1, 0
bltz $1, TAG239
TAG239:
div $1, $1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG240:
sll $0, $0, 0
bne $2, $2, TAG241
mult $2, $2
mult $2, $2
TAG241:
andi $2, $2, 13
sub $4, $2, $2
lui $1, 0
beq $2, $4, TAG242
TAG242:
lui $2, 2
multu $1, $1
lui $2, 11
addiu $2, $2, 15
TAG243:
mthi $2
multu $2, $2
mtlo $2
mtlo $2
TAG244:
multu $2, $2
lui $2, 15
sll $0, $0, 0
lui $2, 13
TAG245:
sll $0, $0, 0
bltz $3, TAG246
sll $0, $0, 0
sll $0, $0, 0
TAG246:
andi $4, $3, 14
multu $4, $4
mthi $3
mult $3, $4
TAG247:
mtlo $4
beq $4, $4, TAG248
mult $4, $4
beq $4, $4, TAG248
TAG248:
mtlo $4
mult $4, $4
beq $4, $4, TAG249
sw $4, 0($4)
TAG249:
lh $3, 0($4)
nor $2, $3, $3
slt $1, $2, $2
beq $2, $2, TAG250
TAG250:
mflo $1
bltz $1, TAG251
mthi $1
multu $1, $1
TAG251:
sb $1, 0($1)
mflo $1
mult $1, $1
bgez $1, TAG252
TAG252:
addi $3, $1, 13
beq $1, $3, TAG253
mflo $1
bgtz $1, TAG253
TAG253:
mult $1, $1
blez $1, TAG254
lb $1, 0($1)
addi $4, $1, 6
TAG254:
xor $1, $4, $4
mtlo $4
xori $4, $1, 13
slt $3, $4, $4
TAG255:
or $1, $3, $3
xori $1, $1, 15
beq $1, $1, TAG256
sll $1, $1, 14
TAG256:
sra $1, $1, 11
mflo $4
srl $3, $1, 15
addiu $4, $1, 12
TAG257:
sll $0, $0, 0
lui $4, 7
bne $4, $4, TAG258
sll $0, $0, 0
TAG258:
sll $0, $0, 0
div $4, $4
bltz $4, TAG259
mtlo $4
TAG259:
mflo $3
lui $1, 12
bne $4, $1, TAG260
lui $1, 14
TAG260:
blez $1, TAG261
mflo $3
sll $0, $0, 0
mfhi $4
TAG261:
multu $4, $4
beq $4, $4, TAG262
mflo $2
bgtz $2, TAG262
TAG262:
mfhi $1
multu $2, $1
lb $1, 0($2)
mfhi $2
TAG263:
mtlo $2
lb $3, 0($2)
mult $2, $3
srl $3, $2, 13
TAG264:
lui $1, 8
bgez $3, TAG265
lui $2, 10
lui $2, 0
TAG265:
bne $2, $2, TAG266
sll $0, $0, 0
multu $4, $4
bgtz $4, TAG266
TAG266:
mult $4, $4
bne $4, $4, TAG267
lbu $2, 0($4)
add $4, $2, $4
TAG267:
lui $1, 3
mfhi $2
sw $2, 0($4)
bne $2, $1, TAG268
TAG268:
multu $2, $2
mtlo $2
xor $1, $2, $2
beq $2, $1, TAG269
TAG269:
mthi $1
mflo $3
sb $1, 0($1)
addi $4, $1, 7
TAG270:
lbu $2, 0($4)
sllv $1, $2, $2
sh $4, 0($1)
subu $1, $2, $1
TAG271:
sw $1, 0($1)
mthi $1
mtlo $1
lui $1, 13
TAG272:
mflo $2
lui $1, 0
beq $2, $2, TAG273
mflo $2
TAG273:
addiu $3, $2, 8
mthi $3
mflo $4
bltz $4, TAG274
TAG274:
lh $3, 0($4)
blez $4, TAG275
sb $4, 0($4)
mthi $4
TAG275:
lui $4, 0
mult $3, $3
bne $3, $4, TAG276
lui $3, 9
TAG276:
mflo $3
bltz $3, TAG277
lw $1, 0($3)
beq $3, $3, TAG277
TAG277:
mfhi $1
lb $3, 0($1)
slt $2, $1, $1
mfhi $4
TAG278:
multu $4, $4
mfhi $4
lb $3, 0($4)
sw $3, 0($4)
TAG279:
xor $1, $3, $3
mflo $3
mult $3, $3
lh $3, 0($1)
TAG280:
bltz $3, TAG281
addu $3, $3, $3
lui $4, 8
beq $3, $4, TAG281
TAG281:
mtlo $4
mfhi $3
mtlo $4
sh $3, 0($3)
TAG282:
srlv $2, $3, $3
lbu $2, 0($3)
mfhi $3
lui $4, 8
TAG283:
mflo $4
bgez $4, TAG284
subu $1, $4, $4
nor $4, $1, $4
TAG284:
sll $0, $0, 0
slti $2, $1, 13
sllv $4, $2, $1
lbu $3, 0($4)
TAG285:
or $4, $3, $3
mfhi $2
multu $4, $3
lh $4, 0($2)
TAG286:
bgez $4, TAG287
mflo $2
or $1, $4, $2
div $4, $1
TAG287:
addi $1, $1, 4
mtlo $1
sw $1, 0($1)
sll $4, $1, 10
TAG288:
mthi $4
mfhi $1
mthi $4
mflo $2
TAG289:
addu $4, $2, $2
srl $3, $4, 1
mtlo $3
mthi $2
TAG290:
mtlo $3
bltz $3, TAG291
subu $4, $3, $3
bgtz $4, TAG291
TAG291:
mthi $4
beq $4, $4, TAG292
lui $3, 0
lbu $3, 0($4)
TAG292:
bne $3, $3, TAG293
lw $3, 0($3)
mfhi $2
xor $4, $3, $3
TAG293:
mult $4, $4
sb $4, 0($4)
slt $4, $4, $4
sh $4, 0($4)
TAG294:
beq $4, $4, TAG295
mult $4, $4
mfhi $3
bgez $4, TAG295
TAG295:
lh $2, 0($3)
mfhi $3
blez $2, TAG296
lui $1, 11
TAG296:
subu $4, $1, $1
mult $4, $4
bne $1, $1, TAG297
lui $3, 3
TAG297:
sll $0, $0, 0
lui $1, 0
mfhi $2
sll $0, $0, 0
TAG298:
mflo $4
sh $2, 0($4)
xor $1, $4, $2
multu $1, $1
TAG299:
bgez $1, TAG300
lui $2, 3
sll $3, $1, 9
bgez $2, TAG300
TAG300:
lui $4, 7
mtlo $3
lui $1, 5
bne $1, $3, TAG301
TAG301:
addiu $2, $1, 0
blez $2, TAG302
sllv $1, $1, $2
sll $0, $0, 0
TAG302:
mfhi $4
lui $2, 14
mflo $3
mtlo $3
TAG303:
blez $3, TAG304
multu $3, $3
lui $3, 12
sll $0, $0, 0
TAG304:
sll $0, $0, 0
mflo $3
lhu $4, 0($3)
slti $3, $3, 10
TAG305:
blez $3, TAG306
mtlo $3
lui $3, 6
divu $3, $3
TAG306:
mthi $3
nor $2, $3, $3
srl $2, $2, 9
blez $2, TAG307
TAG307:
multu $2, $2
mtlo $2
mult $2, $2
mfhi $4
TAG308:
xor $3, $4, $4
lh $4, -16380($4)
lui $1, 9
sb $1, 0($4)
TAG309:
mflo $2
bgtz $2, TAG310
mthi $2
sra $3, $1, 8
TAG310:
mthi $3
sll $2, $3, 14
lui $3, 15
sll $0, $0, 0
TAG311:
beq $3, $3, TAG312
xor $4, $3, $3
lui $4, 7
lb $4, 0($4)
TAG312:
sw $4, 0($4)
lh $3, 0($4)
sb $4, 0($3)
sh $3, 0($4)
TAG313:
mfhi $1
subu $1, $1, $3
lui $4, 11
sb $4, 0($3)
TAG314:
multu $4, $4
mfhi $2
srl $3, $4, 4
lui $2, 2
TAG315:
mult $2, $2
sll $0, $0, 0
multu $2, $2
mfhi $2
TAG316:
xori $1, $2, 11
beq $1, $1, TAG317
srav $3, $1, $1
mflo $1
TAG317:
lbu $3, 0($1)
lui $4, 13
subu $1, $1, $4
sll $0, $0, 0
TAG318:
bltz $2, TAG319
srav $3, $2, $2
mthi $3
lw $2, 0($3)
TAG319:
lui $2, 10
bgez $2, TAG320
lui $4, 14
mthi $4
TAG320:
lui $1, 10
beq $1, $1, TAG321
sll $0, $0, 0
lui $2, 12
TAG321:
bltz $2, TAG322
srl $3, $2, 9
lui $2, 5
and $4, $2, $2
TAG322:
sll $0, $0, 0
sra $4, $4, 15
lb $2, 0($4)
lh $3, 0($4)
TAG323:
addi $1, $3, 3
multu $1, $3
mtlo $3
divu $1, $1
TAG324:
sb $1, 0($1)
mthi $1
sra $3, $1, 9
sltiu $3, $3, 4
TAG325:
bgez $3, TAG326
addiu $1, $3, 0
lh $4, 0($3)
bgtz $1, TAG326
TAG326:
mflo $2
mfhi $4
lb $1, 0($2)
mult $4, $4
TAG327:
slti $4, $1, 11
mthi $4
nor $1, $1, $1
mthi $1
TAG328:
divu $1, $1
mult $1, $1
bltz $1, TAG329
mtlo $1
TAG329:
lui $1, 10
sll $0, $0, 0
mtlo $1
addiu $3, $1, 10
TAG330:
xori $4, $3, 1
beq $4, $3, TAG331
mflo $3
slti $1, $3, 1
TAG331:
mult $1, $1
bgez $1, TAG332
lhu $3, 0($1)
mult $1, $3
TAG332:
mthi $3
multu $3, $3
lui $1, 9
xori $2, $3, 10
TAG333:
bltz $2, TAG334
mthi $2
bne $2, $2, TAG334
mult $2, $2
TAG334:
mthi $2
mfhi $4
mtlo $4
mfhi $2
TAG335:
div $2, $2
bgez $2, TAG336
ori $3, $2, 7
and $3, $2, $3
TAG336:
mthi $3
bgez $3, TAG337
mult $3, $3
blez $3, TAG337
TAG337:
mthi $3
addiu $3, $3, 9
mfhi $2
mfhi $3
TAG338:
divu $3, $3
sb $3, 0($3)
lb $2, 0($3)
lui $1, 9
TAG339:
sll $0, $0, 0
beq $1, $1, TAG340
sltiu $3, $1, 1
bgtz $3, TAG340
TAG340:
lui $1, 4
blez $3, TAG341
xori $4, $3, 8
mtlo $3
TAG341:
addiu $2, $4, 7
mfhi $2
sltiu $3, $4, 15
and $3, $2, $2
TAG342:
bltz $3, TAG343
lui $2, 9
mfhi $3
divu $2, $2
TAG343:
mtlo $3
beq $3, $3, TAG344
lui $2, 4
ori $3, $2, 4
TAG344:
sh $3, 0($3)
lh $2, 0($3)
and $1, $2, $3
multu $3, $1
TAG345:
sra $1, $1, 1
beq $1, $1, TAG346
lui $1, 6
divu $1, $1
TAG346:
beq $1, $1, TAG347
sll $3, $1, 5
beq $1, $1, TAG347
slt $1, $3, $1
TAG347:
sll $0, $0, 0
sll $0, $0, 0
xor $4, $1, $2
mfhi $1
TAG348:
addiu $4, $1, 2
div $1, $4
xori $1, $1, 6
lui $4, 6
TAG349:
lui $3, 0
mthi $3
div $3, $4
sll $0, $0, 0
TAG350:
mult $3, $3
mfhi $2
srl $2, $3, 11
mfhi $2
TAG351:
lui $3, 1
bltz $2, TAG352
lb $2, 0($2)
mfhi $1
TAG352:
lhu $1, 0($1)
and $1, $1, $1
lhu $3, 0($1)
mfhi $2
TAG353:
add $3, $2, $2
multu $3, $3
multu $3, $2
bltz $2, TAG354
TAG354:
mfhi $3
lbu $3, 0($3)
lui $3, 4
slti $4, $3, 7
TAG355:
bgtz $4, TAG356
mult $4, $4
bltz $4, TAG356
mtlo $4
TAG356:
mfhi $4
bne $4, $4, TAG357
sltu $2, $4, $4
ori $3, $4, 4
TAG357:
sw $3, 0($3)
ori $3, $3, 5
mtlo $3
or $4, $3, $3
TAG358:
ori $4, $4, 13
lui $4, 6
bgez $4, TAG359
xori $2, $4, 8
TAG359:
sll $0, $0, 0
addiu $4, $2, 15
andi $2, $2, 7
mthi $2
TAG360:
mfhi $2
ori $2, $2, 14
bne $2, $2, TAG361
sh $2, 0($2)
TAG361:
sb $2, 0($2)
sltu $3, $2, $2
sb $3, 0($3)
multu $2, $3
TAG362:
mflo $4
mult $4, $4
lui $3, 6
beq $4, $4, TAG363
TAG363:
mfhi $1
mfhi $4
sltiu $3, $3, 12
lui $4, 8
TAG364:
blez $4, TAG365
sll $0, $0, 0
sra $2, $4, 3
srlv $4, $2, $3
TAG365:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
mfhi $4
TAG366:
addiu $4, $4, 4
bgez $4, TAG367
mthi $4
beq $4, $4, TAG367
TAG367:
nor $2, $4, $4
bgtz $2, TAG368
slti $2, $4, 6
bltz $2, TAG368
TAG368:
srl $4, $2, 10
mtlo $2
mfhi $4
beq $4, $2, TAG369
TAG369:
sll $0, $0, 0
div $4, $4
mflo $4
mult $4, $4
TAG370:
mult $4, $4
addu $1, $4, $4
nor $1, $1, $4
sb $1, 4($1)
TAG371:
sltiu $2, $1, 11
bne $1, $2, TAG372
sllv $4, $1, $2
mflo $4
TAG372:
mflo $3
lb $4, 0($3)
lbu $3, 0($3)
ori $4, $4, 11
TAG373:
xori $1, $4, 9
sb $4, 0($4)
srlv $1, $4, $1
andi $3, $1, 1
TAG374:
mtlo $3
sb $3, 0($3)
lbu $2, 0($3)
lh $1, 0($2)
TAG375:
multu $1, $1
beq $1, $1, TAG376
or $4, $1, $1
beq $4, $4, TAG376
TAG376:
mfhi $1
addu $2, $1, $4
lb $2, 0($2)
addi $4, $4, 0
TAG377:
sltiu $1, $4, 4
lui $4, 3
blez $1, TAG378
mtlo $4
TAG378:
subu $4, $4, $4
sb $4, 0($4)
addu $3, $4, $4
srav $1, $4, $4
TAG379:
lui $3, 11
and $4, $1, $1
beq $4, $1, TAG380
sll $0, $0, 0
TAG380:
bltz $4, TAG381
mult $4, $4
bne $4, $4, TAG381
lui $1, 6
TAG381:
bgez $1, TAG382
addu $3, $1, $1
slti $2, $3, 14
bne $1, $2, TAG382
TAG382:
mult $2, $2
sll $3, $2, 14
sllv $3, $2, $2
lbu $2, 0($3)
TAG383:
lw $2, 0($2)
sra $4, $2, 12
bne $4, $4, TAG384
addiu $1, $2, 14
TAG384:
beq $1, $1, TAG385
sll $0, $0, 0
lui $4, 12
mthi $1
TAG385:
subu $4, $4, $4
bgtz $4, TAG386
mflo $2
lhu $2, 0($2)
TAG386:
sll $3, $2, 3
slt $1, $2, $3
mflo $4
beq $1, $3, TAG387
TAG387:
andi $2, $4, 8
lh $4, 0($2)
lui $2, 5
lui $4, 8
TAG388:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
lb $1, 0($3)
TAG389:
mthi $1
bne $1, $1, TAG390
mult $1, $1
bltz $1, TAG390
TAG390:
sh $1, 0($1)
mthi $1
or $2, $1, $1
bne $2, $2, TAG391
TAG391:
lhu $2, 0($2)
bltz $2, TAG392
andi $3, $2, 5
sw $3, 0($2)
TAG392:
bgtz $3, TAG393
lui $1, 15
sll $0, $0, 0
sll $4, $3, 4
TAG393:
lui $3, 8
addi $1, $4, 13
lui $3, 6
addi $2, $4, 0
TAG394:
mthi $2
addi $1, $2, 13
srl $1, $2, 15
mult $2, $2
TAG395:
bne $1, $1, TAG396
lui $3, 3
mflo $4
mflo $4
TAG396:
beq $4, $4, TAG397
lui $1, 9
bgez $4, TAG397
mthi $1
TAG397:
sll $0, $0, 0
sll $0, $0, 0
sltiu $1, $1, 10
sb $1, 0($1)
TAG398:
srl $1, $1, 5
mflo $4
mtlo $1
beq $4, $4, TAG399
TAG399:
sw $4, 0($4)
lw $2, 0($4)
sw $2, 0($2)
mflo $4
TAG400:
lb $1, 0($4)
mult $4, $4
blez $4, TAG401
mtlo $1
TAG401:
beq $1, $1, TAG402
ori $3, $1, 0
blez $1, TAG402
multu $3, $3
TAG402:
lui $1, 10
sll $0, $0, 0
mult $4, $4
lui $4, 8
TAG403:
bgtz $4, TAG404
slt $1, $4, $4
bltz $1, TAG404
mtlo $1
TAG404:
bltz $1, TAG405
addu $4, $1, $1
mflo $4
mfhi $4
TAG405:
multu $4, $4
lb $4, 0($4)
lui $4, 4
sltiu $1, $4, 12
TAG406:
lhu $2, 0($1)
bltz $1, TAG407
sub $1, $1, $1
beq $2, $1, TAG407
TAG407:
mflo $1
beq $1, $1, TAG408
addiu $3, $1, 0
sb $3, 0($1)
TAG408:
sh $3, 0($3)
mult $3, $3
mfhi $3
lui $1, 14
TAG409:
srav $3, $1, $1
lui $2, 14
lui $2, 2
bne $2, $2, TAG410
TAG410:
srl $2, $2, 8
sltu $3, $2, $2
lui $4, 5
beq $4, $4, TAG411
TAG411:
divu $4, $4
sll $0, $0, 0
nor $3, $4, $4
bne $3, $3, TAG412
TAG412:
sll $0, $0, 0
blez $3, TAG413
mult $3, $3
lui $3, 5
TAG413:
mfhi $1
mult $1, $3
srav $4, $3, $3
and $4, $4, $4
TAG414:
subu $2, $4, $4
or $4, $4, $4
beq $4, $4, TAG415
srav $1, $4, $2
TAG415:
mtlo $1
mtlo $1
lb $2, 1($1)
sw $1, 1($1)
TAG416:
mtlo $2
bne $2, $2, TAG417
sh $2, 0($2)
beq $2, $2, TAG417
TAG417:
lbu $3, 0($2)
srlv $3, $2, $2
lh $4, 0($2)
lh $4, 0($3)
TAG418:
lui $2, 9
beq $2, $2, TAG419
or $2, $2, $2
lui $1, 1
TAG419:
bgtz $1, TAG420
lhu $2, 1($1)
lui $3, 2
mthi $3
TAG420:
sll $0, $0, 0
subu $4, $3, $3
multu $4, $4
lui $3, 1
TAG421:
sll $0, $0, 0
lui $1, 6
bgtz $1, TAG422
sll $0, $0, 0
TAG422:
mfhi $1
lui $4, 12
beq $2, $1, TAG423
mtlo $2
TAG423:
sll $0, $0, 0
mult $4, $2
mthi $4
mult $2, $2
TAG424:
mtlo $2
mflo $2
mflo $3
mult $2, $2
TAG425:
mtlo $3
bne $3, $3, TAG426
mult $3, $3
blez $3, TAG426
TAG426:
lui $3, 7
multu $3, $3
lui $3, 2
mtlo $3
TAG427:
sll $0, $0, 0
bgez $4, TAG428
addiu $2, $3, 9
lui $4, 9
TAG428:
beq $4, $4, TAG429
sll $1, $4, 3
mflo $4
mflo $2
TAG429:
divu $2, $2
blez $2, TAG430
mtlo $2
sll $0, $0, 0
TAG430:
mult $3, $3
beq $3, $3, TAG431
sll $0, $0, 0
srav $2, $4, $4
TAG431:
sll $0, $0, 0
lui $1, 13
mflo $4
sltu $4, $3, $4
TAG432:
lh $4, 0($4)
bne $4, $4, TAG433
mfhi $1
andi $3, $1, 15
TAG433:
beq $3, $3, TAG434
sb $3, 0($3)
sllv $4, $3, $3
beq $3, $4, TAG434
TAG434:
mfhi $2
sb $4, 0($2)
mult $2, $4
bgez $2, TAG435
TAG435:
mtlo $2
andi $1, $2, 13
bgez $2, TAG436
lh $3, 0($1)
TAG436:
beq $3, $3, TAG437
andi $4, $3, 4
andi $3, $4, 5
bne $4, $3, TAG437
TAG437:
lui $4, 12
addi $1, $3, 10
lui $2, 9
addu $2, $1, $2
TAG438:
xori $2, $2, 3
mtlo $2
blez $2, TAG439
divu $2, $2
TAG439:
sll $0, $0, 0
lui $3, 10
bne $3, $3, TAG440
sll $0, $0, 0
TAG440:
beq $3, $3, TAG441
lui $4, 0
addiu $4, $3, 10
blez $4, TAG441
TAG441:
mult $4, $4
srav $3, $4, $4
lui $3, 0
lui $3, 1
TAG442:
beq $3, $3, TAG443
sll $0, $0, 0
srlv $4, $4, $4
mfhi $3
TAG443:
divu $3, $3
bne $3, $3, TAG444
slti $2, $3, 10
sll $0, $0, 0
TAG444:
sll $4, $2, 7
nor $4, $2, $2
mtlo $4
lhu $2, 1($4)
TAG445:
mtlo $2
bne $2, $2, TAG446
subu $3, $2, $2
lui $2, 13
TAG446:
mfhi $1
lui $2, 11
addu $2, $2, $1
sh $2, 0($1)
TAG447:
lui $2, 0
sub $3, $2, $2
mfhi $1
multu $2, $2
TAG448:
lh $1, 0($1)
sll $1, $1, 13
bgez $1, TAG449
xori $3, $1, 14
TAG449:
sltiu $3, $3, 12
sll $4, $3, 5
bltz $4, TAG450
andi $3, $3, 15
TAG450:
multu $3, $3
mthi $3
bgez $3, TAG451
lbu $4, 0($3)
TAG451:
multu $4, $4
bgtz $4, TAG452
srlv $1, $4, $4
mflo $2
TAG452:
sw $2, 0($2)
lui $4, 5
mflo $3
mflo $2
TAG453:
beq $2, $2, TAG454
mfhi $1
sll $2, $2, 13
mthi $1
TAG454:
blez $2, TAG455
addu $4, $2, $2
lui $2, 9
mflo $4
TAG455:
lui $2, 1
bgtz $4, TAG456
sh $2, 0($4)
sll $0, $0, 0
TAG456:
beq $2, $2, TAG457
subu $1, $2, $2
bgtz $1, TAG457
mflo $4
TAG457:
multu $4, $4
sub $1, $4, $4
mflo $1
mflo $3
TAG458:
bgtz $3, TAG459
lui $4, 9
subu $3, $4, $3
sll $0, $0, 0
TAG459:
sll $0, $0, 0
lui $1, 1
sll $0, $0, 0
nor $1, $2, $3
TAG460:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG461
sllv $1, $2, $1
TAG461:
lh $1, 0($1)
bgez $1, TAG462
mfhi $1
subu $3, $1, $1
TAG462:
bltz $3, TAG463
mflo $3
lw $2, 0($3)
mfhi $4
TAG463:
mtlo $4
mfhi $2
sb $4, 0($2)
sub $3, $2, $2
TAG464:
sltiu $1, $3, 8
lw $3, 0($3)
sw $3, 0($3)
mfhi $3
TAG465:
sllv $3, $3, $3
bgez $3, TAG466
mflo $1
beq $3, $3, TAG466
TAG466:
srl $2, $1, 6
andi $1, $1, 11
beq $2, $1, TAG467
mult $2, $1
TAG467:
lui $1, 9
sll $0, $0, 0
xor $3, $4, $4
lui $1, 15
TAG468:
sltu $2, $1, $1
lhu $3, 0($2)
lhu $4, 0($2)
bne $2, $3, TAG469
TAG469:
sra $2, $4, 7
lui $4, 12
sb $2, 0($2)
mtlo $2
TAG470:
mult $4, $4
mthi $4
srlv $3, $4, $4
mfhi $1
TAG471:
sll $0, $0, 0
addiu $3, $1, 8
sltiu $4, $3, 13
ori $2, $3, 12
TAG472:
lui $4, 7
slt $1, $2, $2
sub $1, $4, $1
sll $0, $0, 0
TAG473:
lui $2, 11
sltu $1, $2, $1
mthi $1
addi $4, $1, 14
TAG474:
addu $3, $4, $4
mtlo $4
ori $4, $3, 7
sb $3, 0($4)
TAG475:
bgtz $4, TAG476
andi $2, $4, 0
mflo $1
sb $4, 0($4)
TAG476:
mthi $1
lbu $2, 0($1)
sb $2, 0($2)
sw $1, 0($1)
TAG477:
multu $2, $2
lb $4, 0($2)
lw $1, 0($2)
multu $2, $1
TAG478:
sw $1, 0($1)
sra $1, $1, 5
mult $1, $1
bltz $1, TAG479
TAG479:
sltu $2, $1, $1
mfhi $1
bgtz $1, TAG480
mflo $2
TAG480:
mfhi $4
lbu $3, 0($2)
sb $4, 0($3)
ori $2, $4, 7
TAG481:
bne $2, $2, TAG482
lui $3, 14
mfhi $4
bgez $2, TAG482
TAG482:
lbu $2, 0($4)
bgez $2, TAG483
mthi $2
lhu $2, 0($2)
TAG483:
bne $2, $2, TAG484
lui $2, 10
bgez $2, TAG484
lui $4, 5
TAG484:
or $3, $4, $4
lui $3, 6
mfhi $4
bgez $3, TAG485
TAG485:
mflo $2
bne $2, $4, TAG486
sra $1, $2, 10
slt $4, $2, $4
TAG486:
mthi $4
mthi $4
beq $4, $4, TAG487
mfhi $4
TAG487:
beq $4, $4, TAG488
sb $4, 0($4)
bne $4, $4, TAG488
mtlo $4
TAG488:
bgez $4, TAG489
mflo $4
bltz $4, TAG489
sb $4, 0($4)
TAG489:
mflo $4
bne $4, $4, TAG490
mtlo $4
beq $4, $4, TAG490
TAG490:
lui $2, 6
beq $4, $2, TAG491
sll $0, $0, 0
sw $4, 0($4)
TAG491:
beq $2, $2, TAG492
sltiu $4, $2, 2
sw $4, 0($2)
srl $1, $4, 11
TAG492:
bgtz $1, TAG493
slti $2, $1, 8
lui $4, 2
multu $1, $4
TAG493:
sltiu $3, $4, 9
mtlo $3
beq $3, $3, TAG494
sw $3, 0($3)
TAG494:
mtlo $3
sb $3, 0($3)
lw $3, 0($3)
bltz $3, TAG495
TAG495:
xor $1, $3, $3
mflo $2
mtlo $1
beq $2, $2, TAG496
TAG496:
sll $4, $2, 10
bne $4, $2, TAG497
lb $3, 0($4)
mtlo $4
TAG497:
sltiu $1, $3, 4
blez $3, TAG498
mflo $1
mfhi $2
TAG498:
sw $2, 0($2)
lui $3, 0
mfhi $4
mtlo $4
TAG499:
multu $4, $4
mflo $4
sh $4, 0($4)
srl $4, $4, 4
TAG500:
lhu $1, 0($4)
mthi $4
mult $1, $1
sh $1, 0($1)
TAG501:
sb $1, 0($1)
mfhi $2
sll $2, $2, 5
sltu $1, $1, $2
TAG502:
lui $4, 7
mult $4, $1
sll $1, $4, 13
mflo $3
TAG503:
mtlo $3
bgez $3, TAG504
mfhi $4
lui $3, 4
TAG504:
or $3, $3, $3
lui $4, 12
bltz $4, TAG505
sub $4, $4, $3
TAG505:
addu $3, $4, $4
mfhi $4
sw $3, 0($4)
mthi $4
TAG506:
multu $4, $4
blez $4, TAG507
mthi $4
blez $4, TAG507
TAG507:
lh $4, 0($4)
lw $2, 0($4)
bne $4, $4, TAG508
or $1, $4, $4
TAG508:
mfhi $1
bne $1, $1, TAG509
lh $3, 0($1)
sb $1, 0($3)
TAG509:
ori $1, $3, 8
lbu $1, 0($3)
bne $1, $1, TAG510
multu $1, $1
TAG510:
srlv $4, $1, $1
mtlo $4
mthi $4
andi $3, $4, 2
TAG511:
blez $3, TAG512
sb $3, 0($3)
lui $4, 14
lh $2, 0($4)
TAG512:
lui $4, 7
xori $2, $4, 0
xor $4, $4, $4
mtlo $4
TAG513:
beq $4, $4, TAG514
addi $1, $4, 12
sb $1, 0($4)
lbu $3, 0($1)
TAG514:
or $1, $3, $3
lhu $4, 0($3)
sh $3, 0($4)
multu $3, $4
TAG515:
sw $4, 0($4)
mult $4, $4
mthi $4
lw $4, 0($4)
TAG516:
lhu $2, 0($4)
bgez $4, TAG517
sb $4, 0($2)
slt $1, $2, $2
TAG517:
mfhi $4
sb $1, 0($1)
andi $2, $1, 13
srl $1, $1, 10
TAG518:
addiu $3, $1, 4
lui $4, 0
addiu $2, $4, 0
lui $4, 11
TAG519:
sra $3, $4, 3
sltiu $3, $4, 7
lhu $3, 0($3)
sb $3, 0($3)
TAG520:
mflo $1
mflo $2
mult $2, $2
sb $3, 0($3)
TAG521:
lui $1, 14
bne $1, $1, TAG522
mflo $2
subu $2, $2, $2
TAG522:
xori $1, $2, 1
bne $1, $1, TAG523
slti $3, $2, 13
multu $3, $3
TAG523:
lb $1, 0($3)
sb $3, 0($3)
bltz $1, TAG524
subu $2, $3, $3
TAG524:
mfhi $2
lbu $1, 0($2)
mflo $2
sll $3, $2, 0
TAG525:
lbu $2, 0($3)
lbu $4, 0($3)
lui $1, 8
sllv $3, $1, $2
TAG526:
xor $3, $3, $3
and $4, $3, $3
sra $4, $3, 0
sb $4, 0($4)
TAG527:
lhu $3, 0($4)
mflo $1
mflo $1
addu $4, $1, $4
TAG528:
lui $2, 11
lui $3, 9
divu $4, $4
addiu $1, $2, 15
TAG529:
multu $1, $1
mthi $1
bgez $1, TAG530
sll $0, $0, 0
TAG530:
divu $4, $4
mtlo $4
lb $1, 0($4)
lbu $4, 0($1)
TAG531:
mtlo $4
lui $3, 3
mthi $3
ori $2, $3, 11
TAG532:
addu $1, $2, $2
nor $4, $1, $1
slt $2, $2, $2
lui $3, 13
TAG533:
mflo $1
sll $0, $0, 0
sll $0, $0, 0
lui $3, 13
TAG534:
lui $3, 14
mtlo $3
sltu $4, $3, $3
sllv $1, $3, $4
TAG535:
mflo $2
blez $2, TAG536
ori $4, $2, 1
ori $2, $1, 8
TAG536:
lui $1, 12
bgez $2, TAG537
sll $0, $0, 0
bgez $1, TAG537
TAG537:
sll $0, $0, 0
mtlo $4
mfhi $1
sll $0, $0, 0
TAG538:
mfhi $2
divu $1, $1
mtlo $1
sll $0, $0, 0
TAG539:
mflo $4
bne $4, $1, TAG540
multu $4, $4
mflo $2
TAG540:
lbu $2, 0($2)
mult $2, $2
lui $4, 12
mthi $2
TAG541:
mult $4, $4
blez $4, TAG542
nor $2, $4, $4
bgtz $2, TAG542
TAG542:
sll $0, $0, 0
bltz $2, TAG543
sll $0, $0, 0
lw $2, 0($2)
TAG543:
mfhi $2
srl $3, $2, 8
mult $2, $2
sb $3, -144($2)
TAG544:
lui $1, 10
srl $2, $1, 14
sll $0, $0, 0
sw $1, 0($2)
TAG545:
sll $0, $0, 0
and $4, $1, $1
sll $0, $0, 0
andi $1, $4, 7
TAG546:
srlv $1, $1, $1
sb $1, 0($1)
mfhi $4
mtlo $4
TAG547:
lui $4, 6
multu $4, $4
sll $0, $0, 0
bgtz $2, TAG548
TAG548:
lui $4, 8
lh $1, 0($2)
mtlo $4
lhu $1, 0($1)
TAG549:
sh $1, -256($1)
sb $1, -256($1)
lui $2, 2
bgez $1, TAG550
TAG550:
subu $2, $2, $2
beq $2, $2, TAG551
andi $4, $2, 4
sb $2, 0($4)
TAG551:
bgez $4, TAG552
lb $1, 0($4)
lbu $4, 0($1)
mfhi $3
TAG552:
bne $3, $3, TAG553
sltiu $4, $3, 15
mfhi $1
lui $4, 9
TAG553:
lui $2, 3
sll $0, $0, 0
srlv $3, $4, $2
lui $3, 2
TAG554:
or $4, $3, $3
sll $0, $0, 0
mflo $4
lui $3, 15
TAG555:
lui $2, 8
mtlo $2
lui $4, 2
beq $4, $2, TAG556
TAG556:
multu $4, $4
mtlo $4
lui $1, 0
lui $4, 10
TAG557:
sll $0, $0, 0
mthi $4
xor $4, $4, $4
lui $1, 10
TAG558:
lui $2, 0
xor $3, $2, $1
lui $3, 7
mflo $3
TAG559:
sll $0, $0, 0
bne $3, $3, TAG560
mfhi $1
sll $0, $0, 0
TAG560:
subu $3, $1, $1
bltz $1, TAG561
mult $3, $3
sra $1, $1, 3
TAG561:
divu $1, $1
lui $2, 0
multu $1, $2
lui $4, 3
TAG562:
andi $1, $4, 11
beq $4, $4, TAG563
lui $4, 8
sw $4, 0($4)
TAG563:
lui $1, 15
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG564:
bgez $2, TAG565
sw $2, 0($2)
bltz $2, TAG565
mthi $2
TAG565:
sll $4, $2, 8
andi $1, $4, 5
mthi $4
ori $2, $4, 11
TAG566:
mflo $2
bne $2, $2, TAG567
mtlo $2
sll $0, $0, 0
TAG567:
mult $2, $2
multu $2, $2
beq $2, $2, TAG568
mtlo $2
TAG568:
sll $0, $0, 0
lui $2, 8
mtlo $2
mfhi $2
TAG569:
div $2, $2
bne $2, $2, TAG570
div $2, $2
lbu $2, 0($2)
TAG570:
beq $2, $2, TAG571
sltiu $1, $2, 1
bne $2, $2, TAG571
lh $3, 0($2)
TAG571:
mult $3, $3
lui $2, 6
or $1, $3, $3
xor $3, $1, $1
TAG572:
slt $1, $3, $3
mflo $3
lbu $4, 0($1)
lui $4, 13
TAG573:
mflo $2
mthi $4
mfhi $4
addu $3, $4, $2
TAG574:
sll $0, $0, 0
mflo $2
mfhi $4
bne $2, $4, TAG575
TAG575:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
xor $3, $4, $4
TAG576:
bgez $3, TAG577
add $1, $3, $3
bgez $1, TAG577
xori $2, $1, 14
TAG577:
lbu $1, 0($2)
add $3, $1, $2
mfhi $3
lui $1, 11
TAG578:
mflo $4
sll $0, $0, 0
bltz $4, TAG579
mtlo $1
TAG579:
andi $2, $4, 2
mtlo $4
sw $4, 0($4)
lw $4, 0($2)
TAG580:
ori $3, $4, 7
beq $4, $3, TAG581
mthi $3
sb $4, 0($3)
TAG581:
lbu $1, 0($3)
sw $3, 0($1)
lui $1, 11
mtlo $3
TAG582:
mfhi $2
bne $1, $2, TAG583
sll $0, $0, 0
multu $1, $2
TAG583:
lui $4, 4
beq $4, $4, TAG584
lui $3, 7
mtlo $4
TAG584:
mthi $3
addiu $2, $3, 5
mflo $2
bne $2, $3, TAG585
TAG585:
lb $4, 0($2)
lbu $2, 0($2)
bgtz $2, TAG586
multu $4, $2
TAG586:
sh $2, 0($2)
lui $2, 5
mfhi $4
bgtz $4, TAG587
TAG587:
lhu $1, 0($4)
bltz $4, TAG588
mflo $1
or $4, $4, $4
TAG588:
bgez $4, TAG589
sltiu $1, $4, 13
div $1, $1
sh $4, 0($4)
TAG589:
mthi $1
mult $1, $1
bne $1, $1, TAG590
mult $1, $1
TAG590:
lui $2, 8
bne $2, $1, TAG591
slt $2, $1, $2
blez $2, TAG591
TAG591:
sb $2, 0($2)
lui $2, 14
sll $0, $0, 0
slti $2, $2, 4
TAG592:
lui $2, 0
mthi $2
lw $1, 0($2)
bltz $2, TAG593
TAG593:
or $1, $1, $1
srl $1, $1, 12
bltz $1, TAG594
mtlo $1
TAG594:
lw $1, 0($1)
mtlo $1
lbu $4, -256($1)
lui $1, 8
TAG595:
mult $1, $1
beq $1, $1, TAG596
mthi $1
mfhi $2
TAG596:
lw $3, 0($2)
lui $1, 15
sll $0, $0, 0
multu $2, $3
TAG597:
sltu $4, $1, $1
multu $4, $1
and $4, $1, $1
mfhi $1
TAG598:
sllv $4, $1, $1
or $4, $1, $4
srl $4, $4, 12
beq $4, $4, TAG599
TAG599:
mflo $3
lui $1, 0
sra $3, $4, 10
or $3, $3, $3
TAG600:
andi $3, $3, 13
mthi $3
lui $2, 3
lw $4, 0($3)
TAG601:
subu $1, $4, $4
bltz $1, TAG602
mfhi $2
mflo $2
TAG602:
bgez $2, TAG603
mfhi $2
sw $2, 0($2)
bne $2, $2, TAG603
TAG603:
xor $3, $2, $2
xori $1, $2, 12
lui $2, 4
mthi $2
TAG604:
blez $2, TAG605
lui $1, 9
bne $1, $2, TAG605
addiu $1, $2, 2
TAG605:
sll $0, $0, 0
div $1, $1
blez $1, TAG606
sll $0, $0, 0
TAG606:
mult $1, $1
srav $4, $1, $1
mtlo $4
slti $1, $4, 10
TAG607:
beq $1, $1, TAG608
addiu $3, $1, 12
mthi $1
mult $1, $1
TAG608:
sw $3, 0($3)
mthi $3
mfhi $2
lui $2, 9
TAG609:
sltiu $3, $2, 15
lui $2, 9
bgez $2, TAG610
mthi $2
TAG610:
addiu $2, $2, 7
sll $0, $0, 0
addiu $2, $2, 13
sll $0, $0, 0
TAG611:
mflo $1
mult $1, $1
sll $0, $0, 0
mfhi $3
TAG612:
bne $3, $3, TAG613
xor $3, $3, $3
sb $3, 0($3)
mtlo $3
TAG613:
mthi $3
sw $3, 0($3)
nor $2, $3, $3
mult $2, $3
TAG614:
bltz $2, TAG615
sh $2, 1($2)
mfhi $4
lui $4, 15
TAG615:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG616
subu $3, $1, $4
TAG616:
nor $4, $3, $3
sllv $4, $3, $3
sw $4, 0($4)
mfhi $4
TAG617:
sub $4, $4, $4
sh $4, 0($4)
srav $4, $4, $4
multu $4, $4
TAG618:
beq $4, $4, TAG619
add $2, $4, $4
lui $3, 0
bne $3, $4, TAG619
TAG619:
subu $3, $3, $3
and $4, $3, $3
blez $3, TAG620
xori $2, $3, 10
TAG620:
addu $3, $2, $2
lb $1, 0($2)
srl $4, $3, 15
mfhi $3
TAG621:
bgez $3, TAG622
lui $4, 14
lw $1, 0($3)
lb $2, 0($4)
TAG622:
beq $2, $2, TAG623
sb $2, 0($2)
sw $2, 0($2)
sltu $4, $2, $2
TAG623:
mtlo $4
multu $4, $4
mflo $4
multu $4, $4
TAG624:
bltz $4, TAG625
mult $4, $4
mult $4, $4
beq $4, $4, TAG625
TAG625:
lui $2, 1
sll $0, $0, 0
srav $4, $4, $4
mflo $3
TAG626:
lb $2, 0($3)
lh $4, 0($2)
mflo $4
mflo $4
TAG627:
sh $4, 0($4)
lui $1, 0
blez $1, TAG628
ori $2, $4, 10
TAG628:
mflo $2
slti $1, $2, 1
slt $3, $1, $1
sb $2, 0($3)
TAG629:
multu $3, $3
mflo $1
bltz $3, TAG630
andi $3, $1, 13
TAG630:
mult $3, $3
sw $3, 0($3)
bgtz $3, TAG631
lui $3, 8
TAG631:
mflo $3
bne $3, $3, TAG632
mtlo $3
sh $3, 0($3)
TAG632:
addiu $3, $3, 8
mflo $3
bne $3, $3, TAG633
mflo $2
TAG633:
srl $4, $2, 8
sw $2, 0($2)
mflo $1
mult $2, $4
TAG634:
sb $1, 0($1)
bltz $1, TAG635
mflo $2
multu $2, $1
TAG635:
addu $1, $2, $2
sh $2, 0($1)
sll $4, $1, 11
lui $4, 4
TAG636:
and $2, $4, $4
subu $2, $2, $2
multu $4, $2
lui $2, 4
TAG637:
xori $3, $2, 14
sll $0, $0, 0
blez $3, TAG638
mult $2, $2
TAG638:
addu $4, $3, $3
slti $3, $4, 11
sb $3, 0($3)
lui $1, 12
TAG639:
bne $1, $1, TAG640
lui $2, 9
sll $0, $0, 0
lui $3, 10
TAG640:
bne $3, $3, TAG641
mfhi $3
ori $1, $3, 6
mflo $2
TAG641:
lui $4, 10
lui $4, 10
mult $2, $4
mflo $2
TAG642:
mtlo $2
nor $3, $2, $2
mfhi $2
sw $2, 1($3)
TAG643:
srl $3, $2, 9
lui $1, 13
mthi $3
lui $1, 7
TAG644:
sll $0, $0, 0
xor $2, $2, $1
lui $3, 9
sll $0, $0, 0
TAG645:
addiu $4, $3, 5
div $4, $4
div $4, $4
bne $3, $3, TAG646
TAG646:
subu $1, $4, $4
multu $1, $1
slti $3, $4, 1
xor $3, $4, $3
TAG647:
beq $3, $3, TAG648
div $3, $3
sb $3, 0($3)
bgtz $3, TAG648
TAG648:
mflo $4
sll $0, $0, 0
xor $3, $3, $3
sh $3, 0($3)
TAG649:
bne $3, $3, TAG650
multu $3, $3
xori $2, $3, 3
xori $4, $2, 8
TAG650:
mfhi $1
mult $1, $1
subu $2, $4, $4
mtlo $4
TAG651:
bltz $2, TAG652
sw $2, 0($2)
sra $3, $2, 11
blez $2, TAG652
TAG652:
mflo $4
lb $1, 0($4)
bne $4, $1, TAG653
multu $3, $1
TAG653:
mflo $3
lui $1, 6
lui $3, 1
slti $4, $3, 12
TAG654:
sllv $2, $4, $4
bne $2, $2, TAG655
sh $4, 0($2)
lui $2, 7
TAG655:
addiu $4, $2, 3
sll $0, $0, 0
beq $2, $4, TAG656
sll $0, $0, 0
TAG656:
nor $4, $4, $4
sll $0, $0, 0
lui $1, 1
lui $1, 2
TAG657:
beq $1, $1, TAG658
andi $4, $1, 5
mflo $4
beq $4, $4, TAG658
TAG658:
mthi $4
mtlo $4
lui $2, 4
lb $4, 0($4)
TAG659:
sltiu $3, $4, 2
sra $4, $3, 14
mfhi $3
mthi $4
TAG660:
bltz $3, TAG661
mthi $3
mfhi $2
xori $1, $2, 6
TAG661:
sh $1, 0($1)
xori $3, $1, 0
xori $1, $1, 12
subu $1, $1, $1
TAG662:
mtlo $1
lb $2, 0($1)
lb $3, 0($1)
beq $1, $1, TAG663
TAG663:
lui $2, 5
blez $2, TAG664
slt $4, $2, $3
subu $1, $4, $2
TAG664:
srlv $3, $1, $1
addiu $4, $3, 2
mflo $3
multu $3, $4
TAG665:
mfhi $2
mtlo $3
lui $2, 9
sh $3, 0($3)
TAG666:
or $4, $2, $2
or $2, $2, $4
sll $0, $0, 0
sll $2, $4, 9
TAG667:
lui $1, 10
bgez $1, TAG668
mfhi $1
lui $4, 2
TAG668:
sra $3, $4, 12
sw $4, -144($3)
lui $2, 2
sltu $1, $4, $4
TAG669:
blez $1, TAG670
or $3, $1, $1
mflo $2
subu $4, $1, $2
TAG670:
sll $0, $0, 0
mflo $3
bltz $3, TAG671
mflo $2
TAG671:
multu $2, $2
lhu $1, 0($2)
bgez $2, TAG672
lui $4, 1
TAG672:
sll $0, $0, 0
bne $4, $4, TAG673
mfhi $1
multu $1, $1
TAG673:
lhu $2, 0($1)
bgez $2, TAG674
sw $1, 0($2)
multu $2, $2
TAG674:
blez $2, TAG675
mfhi $4
bltz $4, TAG675
mtlo $4
TAG675:
lb $4, 0($4)
lui $4, 1
bgtz $4, TAG676
divu $4, $4
TAG676:
bne $4, $4, TAG677
mtlo $4
multu $4, $4
sll $0, $0, 0
TAG677:
bne $3, $3, TAG678
lhu $1, 0($3)
mtlo $1
beq $3, $1, TAG678
TAG678:
addi $2, $1, 0
sh $1, 0($1)
srl $2, $1, 13
blez $2, TAG679
TAG679:
multu $2, $2
sb $2, 0($2)
lui $4, 10
andi $4, $4, 0
TAG680:
xor $2, $4, $4
beq $4, $2, TAG681
mthi $4
bltz $2, TAG681
TAG681:
mfhi $3
mthi $2
mtlo $3
sw $3, 0($2)
TAG682:
mfhi $3
ori $1, $3, 1
mtlo $3
sub $3, $3, $3
TAG683:
sll $3, $3, 14
and $2, $3, $3
lhu $3, 0($3)
lui $4, 14
TAG684:
beq $4, $4, TAG685
sll $4, $4, 3
bgtz $4, TAG685
lui $4, 7
TAG685:
sll $0, $0, 0
lbu $3, 0($1)
bltz $4, TAG686
xori $3, $3, 10
TAG686:
mfhi $3
mflo $1
bgez $3, TAG687
mthi $3
TAG687:
sh $1, 0($1)
and $4, $1, $1
mthi $1
mfhi $3
TAG688:
mult $3, $3
bgez $3, TAG689
lb $4, 0($3)
mflo $3
TAG689:
and $1, $3, $3
srav $1, $3, $1
blez $1, TAG690
mtlo $1
TAG690:
lui $4, 8
sll $0, $0, 0
beq $4, $1, TAG691
mflo $2
TAG691:
mflo $3
bne $3, $3, TAG692
mflo $3
lh $3, 0($3)
TAG692:
slt $3, $3, $3
bne $3, $3, TAG693
lhu $3, 0($3)
mthi $3
TAG693:
mthi $3
mtlo $3
mfhi $2
mthi $3
TAG694:
mtlo $2
mfhi $3
multu $3, $2
srlv $1, $2, $2
TAG695:
bgtz $1, TAG696
sb $1, 0($1)
lui $1, 5
div $1, $1
TAG696:
divu $1, $1
subu $3, $1, $1
mfhi $4
beq $3, $4, TAG697
TAG697:
multu $4, $4
lb $1, 0($4)
sb $1, 0($4)
lui $1, 15
TAG698:
mthi $1
mult $1, $1
mfhi $1
subu $3, $1, $1
TAG699:
bne $3, $3, TAG700
srlv $4, $3, $3
mthi $4
slti $4, $3, 2
TAG700:
sb $4, 0($4)
mult $4, $4
srl $2, $4, 10
srl $1, $4, 0
TAG701:
mflo $2
addiu $2, $1, 15
lui $2, 8
multu $2, $1
TAG702:
xori $4, $2, 7
mult $4, $4
bltz $2, TAG703
mthi $4
TAG703:
mflo $2
beq $4, $2, TAG704
xor $2, $2, $4
sll $0, $0, 0
TAG704:
beq $2, $2, TAG705
sll $0, $0, 0
bltz $4, TAG705
mult $2, $2
TAG705:
mult $4, $4
mflo $4
srl $3, $4, 13
mflo $1
TAG706:
bgtz $1, TAG707
ori $1, $1, 5
mthi $1
lui $2, 0
TAG707:
mult $2, $2
sll $0, $0, 0
mtlo $2
multu $2, $2
TAG708:
addu $4, $2, $2
subu $1, $2, $2
bgez $2, TAG709
sll $0, $0, 0
TAG709:
lw $1, 0($1)
lui $3, 2
div $1, $3
sw $3, -256($1)
TAG710:
mtlo $3
div $3, $3
bgtz $3, TAG711
sll $0, $0, 0
TAG711:
bne $3, $3, TAG712
lui $1, 11
mthi $1
lui $4, 4
TAG712:
mthi $4
andi $3, $4, 10
lhu $2, 0($3)
bne $3, $4, TAG713
TAG713:
multu $2, $2
sw $2, 0($2)
mult $2, $2
lui $4, 9
TAG714:
div $4, $4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG715:
beq $2, $2, TAG716
srl $4, $2, 9
mfhi $1
lui $3, 13
TAG716:
lui $1, 5
lui $2, 1
or $1, $1, $2
sltiu $2, $1, 6
TAG717:
or $3, $2, $2
lh $4, 0($3)
lh $3, 0($4)
mflo $2
TAG718:
mflo $2
sll $0, $0, 0
xori $3, $2, 0
mfhi $3
TAG719:
bgez $3, TAG720
lui $3, 11
bgtz $3, TAG720
ori $2, $3, 2
TAG720:
divu $2, $2
mtlo $2
bne $2, $2, TAG721
mult $2, $2
TAG721:
bne $2, $2, TAG722
subu $4, $2, $2
andi $1, $4, 6
bne $1, $1, TAG722
TAG722:
mthi $1
slti $1, $1, 15
mtlo $1
mthi $1
TAG723:
lui $3, 1
slt $2, $1, $1
lui $3, 9
mthi $3
TAG724:
sra $1, $3, 3
lui $2, 9
lui $1, 7
mtlo $1
TAG725:
beq $1, $1, TAG726
sll $0, $0, 0
mtlo $1
lui $3, 9
TAG726:
bgtz $3, TAG727
sll $0, $0, 0
slti $1, $3, 1
and $3, $3, $1
TAG727:
sll $0, $0, 0
lui $3, 1
bgtz $3, TAG728
xor $2, $3, $3
TAG728:
sll $3, $2, 3
mult $3, $3
sltu $2, $3, $2
mtlo $2
TAG729:
lhu $1, 0($2)
mfhi $3
sh $3, 0($1)
mult $3, $2
TAG730:
bne $3, $3, TAG731
sb $3, 0($3)
multu $3, $3
mfhi $4
TAG731:
bne $4, $4, TAG732
sw $4, 0($4)
blez $4, TAG732
andi $4, $4, 1
TAG732:
ori $3, $4, 6
bgtz $4, TAG733
mflo $4
lui $3, 9
TAG733:
mult $3, $3
lui $3, 5
bltz $3, TAG734
mthi $3
TAG734:
mfhi $1
mult $1, $3
addu $4, $3, $1
mthi $4
TAG735:
lui $4, 13
bgez $4, TAG736
mtlo $4
mfhi $2
TAG736:
mflo $2
divu $2, $2
beq $2, $2, TAG737
sll $0, $0, 0
TAG737:
mflo $1
mflo $4
sll $0, $0, 0
beq $4, $1, TAG738
TAG738:
lb $1, 0($4)
sb $1, 0($1)
sllv $4, $1, $4
xor $2, $4, $4
TAG739:
bgez $2, TAG740
mtlo $2
div $2, $2
mthi $2
TAG740:
mtlo $2
and $3, $2, $2
blez $3, TAG741
lbu $3, 0($2)
TAG741:
mfhi $3
mthi $3
sll $1, $3, 9
bgez $1, TAG742
TAG742:
ori $1, $1, 6
srlv $1, $1, $1
xori $3, $1, 15
beq $1, $1, TAG743
TAG743:
mtlo $3
sb $3, 0($3)
lui $4, 8
lb $2, 0($3)
TAG744:
ori $1, $2, 8
sllv $1, $1, $2
subu $2, $2, $1
sll $0, $0, 0
TAG745:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
mflo $2
TAG746:
sll $3, $2, 6
bgtz $3, TAG747
sll $0, $0, 0
sltiu $3, $3, 14
TAG747:
lui $2, 7
sll $4, $2, 5
divu $2, $3
mthi $4
TAG748:
mflo $4
bne $4, $4, TAG749
srav $3, $4, $4
sll $0, $0, 0
TAG749:
lui $1, 8
mthi $4
mtlo $1
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop