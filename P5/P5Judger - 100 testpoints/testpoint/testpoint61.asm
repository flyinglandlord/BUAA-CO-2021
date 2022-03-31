ori $1, $0, 0
ori $2, $0, 15
ori $3, $0, 10
ori $4, $0, 0
sw $3, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $3, 24($0)
sw $2, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $4, 112($0)
sw $2, 116($0)
sw $1, 120($0)
sw $3, 124($0)
mtlo $2
mfhi $2
sub $3, $2, $2
mtlo $3
TAG1:
mthi $3
multu $3, $3
ori $1, $3, 2
sll $3, $1, 3
TAG2:
bne $3, $3, TAG3
mthi $3
mfhi $4
sllv $3, $3, $4
TAG3:
sll $0, $0, 0
bgtz $3, TAG4
sllv $4, $3, $1
beq $4, $1, TAG4
TAG4:
sll $4, $4, 1
div $4, $4
mfhi $3
sw $4, 0($3)
TAG5:
sltu $3, $3, $3
mfhi $3
sw $3, 0($3)
lh $4, 0($3)
TAG6:
addiu $3, $4, 2
mfhi $2
lui $4, 8
beq $4, $2, TAG7
TAG7:
sll $0, $0, 0
bgez $2, TAG8
mtlo $4
slt $2, $2, $4
TAG8:
addu $3, $2, $2
mfhi $1
sh $1, 0($1)
mtlo $1
TAG9:
lhu $2, 0($1)
beq $1, $1, TAG10
lui $1, 3
beq $1, $2, TAG10
TAG10:
sll $0, $0, 0
mult $1, $1
sll $0, $0, 0
blez $3, TAG11
TAG11:
mthi $3
bgez $3, TAG12
mult $3, $3
sll $4, $3, 2
TAG12:
mthi $4
beq $4, $4, TAG13
sll $0, $0, 0
bltz $4, TAG13
TAG13:
mult $4, $4
bltz $4, TAG14
mtlo $4
bgtz $4, TAG14
TAG14:
and $3, $4, $4
mflo $2
sll $0, $0, 0
ori $1, $4, 8
TAG15:
blez $1, TAG16
mtlo $1
addu $1, $1, $1
mfhi $3
TAG16:
addiu $3, $3, 11
sb $3, 0($3)
lui $4, 13
bltz $3, TAG17
TAG17:
multu $4, $4
lui $2, 3
beq $2, $2, TAG18
mult $4, $4
TAG18:
bgtz $2, TAG19
mflo $3
srlv $1, $3, $3
mtlo $3
TAG19:
mfhi $2
blez $2, TAG20
mflo $4
sltu $4, $2, $2
TAG20:
sw $4, 0($4)
addu $2, $4, $4
lui $1, 11
sub $1, $2, $2
TAG21:
lhu $1, 0($1)
multu $1, $1
lui $3, 15
beq $1, $3, TAG22
TAG22:
xori $1, $3, 2
lui $3, 7
bgez $1, TAG23
mthi $3
TAG23:
mthi $3
beq $3, $3, TAG24
addu $1, $3, $3
srl $4, $3, 0
TAG24:
sra $4, $4, 8
beq $4, $4, TAG25
lb $4, 0($4)
mthi $4
TAG25:
mfhi $3
mtlo $4
lw $1, 0($4)
mult $4, $3
TAG26:
blez $1, TAG27
slti $1, $1, 8
mfhi $3
slti $2, $1, 0
TAG27:
lui $1, 4
mult $2, $2
multu $1, $2
mtlo $1
TAG28:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG29
TAG29:
mthi $4
blez $4, TAG30
srl $4, $4, 0
lhu $2, 0($4)
TAG30:
mult $2, $2
mfhi $3
bne $3, $2, TAG31
nor $1, $3, $2
TAG31:
bgtz $1, TAG32
subu $2, $1, $1
mflo $4
mult $1, $1
TAG32:
addi $3, $4, 12
beq $3, $3, TAG33
lh $4, 0($4)
bltz $4, TAG33
TAG33:
xor $3, $4, $4
bgez $4, TAG34
sb $3, 0($3)
mtlo $4
TAG34:
srl $1, $3, 7
mult $3, $3
bltz $3, TAG35
mtlo $1
TAG35:
mthi $1
slti $3, $1, 5
bltz $1, TAG36
sh $3, 0($1)
TAG36:
lb $1, 0($3)
bne $3, $3, TAG37
mthi $1
srav $3, $1, $1
TAG37:
mfhi $1
lui $1, 2
sw $1, 0($3)
sll $0, $0, 0
TAG38:
beq $4, $4, TAG39
mflo $3
sltu $2, $3, $3
beq $2, $3, TAG39
TAG39:
mflo $2
sh $2, 0($2)
slt $4, $2, $2
mthi $2
TAG40:
beq $4, $4, TAG41
sra $1, $4, 2
lbu $4, 0($4)
mflo $2
TAG41:
lbu $2, 0($2)
srav $3, $2, $2
bgez $2, TAG42
sh $2, 0($3)
TAG42:
sh $3, 0($3)
lb $3, 0($3)
beq $3, $3, TAG43
multu $3, $3
TAG43:
mthi $3
mflo $4
bgez $4, TAG44
mtlo $4
TAG44:
bgez $4, TAG45
lhu $3, 0($4)
sh $4, 0($3)
xor $1, $3, $3
TAG45:
lui $4, 3
sll $0, $0, 0
lhu $3, 0($1)
mfhi $1
TAG46:
blez $1, TAG47
lb $2, 0($1)
divu $2, $1
subu $1, $1, $2
TAG47:
beq $1, $1, TAG48
mfhi $3
and $4, $3, $1
slt $3, $3, $1
TAG48:
addu $4, $3, $3
bne $4, $4, TAG49
sltiu $2, $4, 15
mtlo $4
TAG49:
sb $2, 0($2)
lui $1, 9
or $2, $2, $2
lui $4, 2
TAG50:
bne $4, $4, TAG51
addu $1, $4, $4
slti $1, $4, 1
mthi $1
TAG51:
nor $3, $1, $1
bgtz $3, TAG52
mthi $3
beq $1, $1, TAG52
TAG52:
sll $0, $0, 0
div $3, $3
addiu $4, $3, 2
and $1, $4, $3
TAG53:
beq $1, $1, TAG54
lui $2, 6
addi $1, $2, 0
mflo $2
TAG54:
mtlo $2
blez $2, TAG55
mfhi $1
ori $3, $1, 0
TAG55:
addiu $2, $3, 4
mthi $2
mtlo $2
blez $2, TAG56
TAG56:
mflo $2
sw $2, 0($2)
slt $3, $2, $2
mtlo $2
TAG57:
sh $3, 0($3)
sllv $3, $3, $3
srav $3, $3, $3
beq $3, $3, TAG58
TAG58:
add $2, $3, $3
mflo $3
sh $2, 0($2)
lui $4, 15
TAG59:
multu $4, $4
sll $0, $0, 0
bgez $4, TAG60
sll $0, $0, 0
TAG60:
mtlo $4
beq $4, $4, TAG61
sll $0, $0, 0
sb $4, 0($4)
TAG61:
subu $2, $4, $4
sb $2, 0($2)
sll $0, $0, 0
lui $3, 4
TAG62:
sll $0, $0, 0
beq $3, $3, TAG63
and $3, $3, $3
mflo $4
TAG63:
mtlo $4
mthi $4
mflo $4
bgez $4, TAG64
TAG64:
multu $4, $4
mult $4, $4
bgez $4, TAG65
mtlo $4
TAG65:
sll $0, $0, 0
mthi $2
blez $4, TAG66
andi $1, $2, 2
TAG66:
lui $2, 8
bgez $2, TAG67
sll $0, $0, 0
addi $1, $2, 11
TAG67:
lbu $2, 0($1)
ori $4, $1, 13
mfhi $4
multu $2, $4
TAG68:
mfhi $3
mthi $3
mfhi $3
mult $3, $3
TAG69:
mthi $3
bgtz $3, TAG70
lui $3, 14
lui $2, 13
TAG70:
blez $2, TAG71
mult $2, $2
beq $2, $2, TAG71
lui $2, 3
TAG71:
mthi $2
lui $4, 15
subu $1, $4, $4
mthi $4
TAG72:
bne $1, $1, TAG73
mtlo $1
blez $1, TAG73
xori $4, $1, 10
TAG73:
mfhi $2
bgez $4, TAG74
lui $2, 15
mfhi $3
TAG74:
sll $0, $0, 0
beq $3, $3, TAG75
sll $0, $0, 0
sltiu $3, $3, 0
TAG75:
mtlo $3
addiu $1, $3, 2
bgtz $1, TAG76
mtlo $3
TAG76:
div $1, $1
bne $1, $1, TAG77
lui $4, 7
divu $4, $4
TAG77:
mfhi $3
multu $4, $3
sll $0, $0, 0
lhu $3, 0($3)
TAG78:
bne $3, $3, TAG79
sw $3, 0($3)
sh $3, 0($3)
mfhi $2
TAG79:
lui $3, 4
bltz $3, TAG80
mfhi $3
addiu $4, $3, 8
TAG80:
addu $4, $4, $4
lui $1, 8
slt $1, $4, $1
mthi $1
TAG81:
mtlo $1
lb $4, 0($1)
beq $4, $1, TAG82
sh $1, 0($4)
TAG82:
multu $4, $4
sb $4, 0($4)
mthi $4
lw $1, 0($4)
TAG83:
sw $1, 0($1)
beq $1, $1, TAG84
multu $1, $1
lui $4, 0
TAG84:
mflo $3
mtlo $3
mtlo $3
sb $3, 0($3)
TAG85:
mult $3, $3
bne $3, $3, TAG86
mult $3, $3
mthi $3
TAG86:
sb $3, 0($3)
sw $3, 0($3)
lui $1, 12
sll $0, $0, 0
TAG87:
mfhi $2
mthi $1
multu $2, $2
lui $2, 7
TAG88:
bgtz $2, TAG89
lui $3, 14
mthi $2
bne $2, $3, TAG89
TAG89:
xori $1, $3, 12
srlv $1, $1, $3
divu $3, $1
sra $4, $1, 7
TAG90:
mthi $4
andi $3, $4, 2
mtlo $4
sub $3, $4, $3
TAG91:
divu $3, $3
sb $3, -7168($3)
subu $3, $3, $3
sh $3, 0($3)
TAG92:
add $4, $3, $3
mfhi $2
sb $2, 0($2)
sw $2, 0($2)
TAG93:
bne $2, $2, TAG94
mult $2, $2
beq $2, $2, TAG94
lui $3, 8
TAG94:
bne $3, $3, TAG95
mult $3, $3
srl $2, $3, 2
mfhi $2
TAG95:
mtlo $2
blez $2, TAG96
mthi $2
mflo $1
TAG96:
mthi $1
sw $1, 0($1)
srlv $2, $1, $1
mflo $4
TAG97:
subu $2, $4, $4
beq $2, $4, TAG98
sw $2, 0($2)
lb $4, 0($4)
TAG98:
div $4, $4
lhu $2, 0($4)
mfhi $3
mult $3, $2
TAG99:
mthi $3
lh $1, 0($3)
nor $3, $1, $3
nor $1, $1, $3
TAG100:
lui $2, 6
lui $4, 11
lhu $1, 0($1)
sb $4, 0($1)
TAG101:
lui $1, 7
bne $1, $1, TAG102
sll $0, $0, 0
multu $2, $2
TAG102:
bne $2, $2, TAG103
lui $1, 15
sll $0, $0, 0
mflo $3
TAG103:
blez $3, TAG104
xor $2, $3, $3
nor $4, $2, $3
beq $3, $3, TAG104
TAG104:
sll $0, $0, 0
lui $4, 6
lui $3, 4
mfhi $3
TAG105:
bne $3, $3, TAG106
slti $2, $3, 13
sb $3, 0($2)
mult $3, $2
TAG106:
mflo $2
mthi $2
bgtz $2, TAG107
mthi $2
TAG107:
srlv $2, $2, $2
bne $2, $2, TAG108
mult $2, $2
lbu $3, 0($2)
TAG108:
sll $1, $3, 13
sll $1, $1, 14
mult $1, $1
addu $4, $3, $3
TAG109:
mflo $2
lh $1, 0($2)
mflo $4
add $1, $4, $2
TAG110:
mfhi $3
lui $1, 4
sll $0, $0, 0
mthi $3
TAG111:
ori $3, $1, 0
sll $0, $0, 0
mflo $1
sll $0, $0, 0
TAG112:
beq $1, $1, TAG113
multu $1, $1
lw $2, 0($1)
lbu $1, 0($1)
TAG113:
mflo $4
lui $4, 9
beq $1, $1, TAG114
mthi $4
TAG114:
lui $2, 10
mflo $1
mfhi $3
sll $0, $0, 0
TAG115:
multu $3, $3
sll $0, $0, 0
div $3, $3
sll $3, $3, 12
TAG116:
mflo $4
blez $3, TAG117
sb $3, 0($4)
beq $3, $3, TAG117
TAG117:
mult $4, $4
mthi $4
beq $4, $4, TAG118
sll $4, $4, 2
TAG118:
addiu $3, $4, 0
bne $3, $4, TAG119
sh $3, 0($3)
lh $2, 0($4)
TAG119:
mult $2, $2
bne $2, $2, TAG120
mflo $1
mthi $2
TAG120:
bgez $1, TAG121
mfhi $3
mthi $3
lh $2, 0($3)
TAG121:
beq $2, $2, TAG122
sw $2, 0($2)
sub $3, $2, $2
mtlo $2
TAG122:
sllv $4, $3, $3
mflo $4
sltiu $1, $4, 1
lbu $3, 0($4)
TAG123:
bgez $3, TAG124
addu $4, $3, $3
lui $1, 1
lui $4, 14
TAG124:
xori $4, $4, 13
sb $4, 0($4)
xor $1, $4, $4
sw $4, 0($1)
TAG125:
mult $1, $1
mfhi $1
lui $1, 11
mthi $1
TAG126:
addiu $2, $1, 6
mthi $1
bltz $2, TAG127
mflo $2
TAG127:
lhu $4, 0($2)
sllv $2, $2, $2
mthi $2
bne $2, $2, TAG128
TAG128:
mfhi $1
mthi $2
bgtz $2, TAG129
lb $4, 0($2)
TAG129:
mflo $4
srav $4, $4, $4
bgez $4, TAG130
mthi $4
TAG130:
bltz $4, TAG131
slt $4, $4, $4
bne $4, $4, TAG131
mult $4, $4
TAG131:
beq $4, $4, TAG132
mtlo $4
mtlo $4
addiu $2, $4, 2
TAG132:
mtlo $2
andi $1, $2, 13
mtlo $2
lhu $3, 0($2)
TAG133:
mtlo $3
lb $3, 0($3)
lb $3, 0($3)
lb $2, 0($3)
TAG134:
beq $2, $2, TAG135
nor $1, $2, $2
and $2, $2, $1
mflo $4
TAG135:
bgtz $4, TAG136
srlv $3, $4, $4
bgez $4, TAG136
and $1, $4, $4
TAG136:
mthi $1
mflo $1
sltu $2, $1, $1
mfhi $4
TAG137:
andi $2, $4, 4
lui $1, 12
bne $2, $4, TAG138
mfhi $3
TAG138:
bgez $3, TAG139
mthi $3
slti $4, $3, 10
mfhi $1
TAG139:
sll $0, $0, 0
mfhi $3
mtlo $1
blez $1, TAG140
TAG140:
and $3, $3, $3
lui $4, 13
mflo $4
multu $3, $4
TAG141:
div $4, $4
mflo $3
sb $4, 0($3)
mthi $3
TAG142:
div $3, $3
mflo $2
mfhi $4
bne $4, $2, TAG143
TAG143:
multu $4, $4
lui $3, 7
sw $4, 0($4)
lui $1, 1
TAG144:
sll $0, $0, 0
nor $4, $1, $1
lui $4, 7
sll $0, $0, 0
TAG145:
bne $4, $4, TAG146
addiu $4, $4, 6
lui $4, 0
mfhi $1
TAG146:
lui $1, 13
or $4, $1, $1
srlv $2, $1, $4
sll $0, $0, 0
TAG147:
sll $0, $0, 0
bgtz $2, TAG148
mtlo $2
sllv $4, $2, $2
TAG148:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
slt $2, $4, $4
TAG149:
lui $3, 10
mtlo $3
beq $3, $3, TAG150
mflo $3
TAG150:
mtlo $3
and $4, $3, $3
sltu $2, $3, $4
multu $2, $2
TAG151:
sh $2, 0($2)
mflo $1
mthi $1
sll $1, $2, 3
TAG152:
sltiu $2, $1, 10
bgtz $1, TAG153
mtlo $2
slti $2, $1, 15
TAG153:
bltz $2, TAG154
mtlo $2
lbu $4, 0($2)
srav $3, $2, $4
TAG154:
mthi $3
blez $3, TAG155
mfhi $1
bne $3, $1, TAG155
TAG155:
lui $2, 13
mthi $1
mtlo $1
beq $1, $1, TAG156
TAG156:
xori $1, $2, 7
lui $1, 7
sll $0, $0, 0
addiu $2, $1, 12
TAG157:
beq $2, $2, TAG158
div $2, $2
subu $1, $2, $2
multu $2, $1
TAG158:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 15
ori $3, $4, 8
TAG159:
multu $3, $3
sll $0, $0, 0
lui $1, 3
lui $3, 0
TAG160:
sub $1, $3, $3
multu $3, $1
sb $1, 0($1)
mtlo $1
TAG161:
sh $1, 0($1)
multu $1, $1
bltz $1, TAG162
lui $2, 11
TAG162:
sll $0, $0, 0
lui $2, 4
lui $4, 6
mult $2, $2
TAG163:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
divu $4, $4
TAG164:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
bltz $2, TAG165
TAG165:
mflo $4
sll $0, $0, 0
bgtz $4, TAG166
lui $4, 2
TAG166:
bne $4, $4, TAG167
mult $4, $4
bne $4, $4, TAG167
lui $4, 7
TAG167:
xori $4, $4, 7
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG168:
bltz $1, TAG169
sb $1, 0($1)
multu $1, $1
lbu $3, 0($1)
TAG169:
mflo $1
multu $3, $3
sh $1, 0($3)
mflo $2
TAG170:
sh $2, 0($2)
mtlo $2
slti $1, $2, 3
beq $2, $2, TAG171
TAG171:
andi $1, $1, 6
srl $2, $1, 6
subu $3, $1, $2
lh $2, 0($2)
TAG172:
mthi $2
multu $2, $2
lw $3, 0($2)
srlv $3, $2, $2
TAG173:
beq $3, $3, TAG174
lui $4, 14
mflo $4
bgtz $3, TAG174
TAG174:
multu $4, $4
sll $0, $0, 0
mtlo $4
srlv $3, $4, $4
TAG175:
divu $3, $3
multu $3, $3
divu $3, $3
mtlo $3
TAG176:
bne $3, $3, TAG177
divu $3, $3
beq $3, $3, TAG177
multu $3, $3
TAG177:
sll $0, $0, 0
bgez $3, TAG178
mflo $1
lw $4, 0($3)
TAG178:
mflo $1
lui $4, 4
bltz $4, TAG179
divu $1, $4
TAG179:
mtlo $4
or $1, $4, $4
sll $0, $0, 0
sll $3, $4, 4
TAG180:
mthi $3
sll $0, $0, 0
lui $1, 14
mtlo $3
TAG181:
sltiu $1, $1, 8
sll $2, $1, 12
multu $1, $1
bne $2, $1, TAG182
TAG182:
andi $4, $2, 9
sra $1, $2, 4
addu $2, $4, $4
sra $1, $2, 5
TAG183:
mflo $2
lui $2, 2
mthi $1
bltz $2, TAG184
TAG184:
sll $0, $0, 0
sll $4, $2, 7
multu $2, $4
mtlo $4
TAG185:
and $2, $4, $4
div $4, $4
sllv $2, $4, $4
beq $2, $4, TAG186
TAG186:
addiu $2, $2, 6
andi $3, $2, 10
bgtz $2, TAG187
mflo $4
TAG187:
lui $4, 8
bne $4, $4, TAG188
sll $0, $0, 0
sll $0, $0, 0
TAG188:
slti $3, $4, 1
mult $3, $4
sw $4, 0($3)
srlv $1, $4, $3
TAG189:
multu $1, $1
lui $1, 13
sll $0, $0, 0
mthi $1
TAG190:
bltz $1, TAG191
sltu $4, $1, $1
mult $1, $4
div $1, $1
TAG191:
lhu $2, 0($4)
lui $2, 2
lui $2, 1
multu $2, $2
TAG192:
mfhi $3
sll $0, $0, 0
multu $1, $1
srlv $2, $2, $3
TAG193:
bgez $2, TAG194
mflo $1
lui $4, 10
bgez $2, TAG194
TAG194:
addu $2, $4, $4
beq $4, $2, TAG195
multu $4, $2
beq $2, $2, TAG195
TAG195:
sra $1, $2, 12
lui $1, 2
sll $0, $0, 0
lui $4, 14
TAG196:
mthi $4
sra $1, $4, 7
bgtz $1, TAG197
mthi $4
TAG197:
divu $1, $1
mtlo $1
lui $3, 15
lui $2, 5
TAG198:
subu $1, $2, $2
bgtz $2, TAG199
mult $2, $2
lh $4, 0($1)
TAG199:
mthi $4
lui $1, 7
ori $1, $4, 0
bltz $1, TAG200
TAG200:
mthi $1
multu $1, $1
sra $3, $1, 13
divu $3, $1
TAG201:
bgtz $3, TAG202
slt $3, $3, $3
sw $3, 0($3)
slt $3, $3, $3
TAG202:
lb $3, 0($3)
lb $4, 0($3)
bgtz $4, TAG203
lui $2, 11
TAG203:
mflo $1
mtlo $1
mfhi $4
sh $4, 0($4)
TAG204:
mtlo $4
mflo $1
nor $4, $4, $1
beq $4, $1, TAG205
TAG205:
mtlo $4
srlv $2, $4, $4
lhu $4, 113($4)
blez $4, TAG206
TAG206:
sll $2, $4, 0
sb $2, 0($2)
bgtz $2, TAG207
lw $2, 0($4)
TAG207:
lui $1, 8
mflo $4
srav $2, $2, $2
sll $0, $0, 0
TAG208:
mtlo $2
sra $4, $2, 14
sll $0, $0, 0
sb $4, 0($4)
TAG209:
mult $4, $4
lui $4, 15
srl $1, $4, 11
mfhi $4
TAG210:
mfhi $2
subu $1, $2, $4
sh $2, 0($2)
lui $2, 14
TAG211:
lui $4, 4
lui $3, 10
bgez $4, TAG212
mthi $2
TAG212:
sll $0, $0, 0
multu $2, $2
divu $3, $3
mtlo $2
TAG213:
lui $2, 4
div $2, $2
mfhi $3
sub $2, $2, $3
TAG214:
multu $2, $2
lui $1, 0
lb $1, 0($1)
mflo $2
TAG215:
xori $3, $2, 14
mfhi $2
bne $3, $2, TAG216
mthi $2
TAG216:
sll $2, $2, 1
sb $2, 0($2)
mflo $1
sh $1, 0($2)
TAG217:
mfhi $4
lui $2, 15
bgtz $1, TAG218
lw $3, 0($4)
TAG218:
beq $3, $3, TAG219
sll $3, $3, 10
or $2, $3, $3
mthi $2
TAG219:
andi $2, $2, 2
bltz $2, TAG220
srl $4, $2, 11
sllv $2, $2, $4
TAG220:
lui $4, 6
bne $2, $2, TAG221
multu $4, $2
bgtz $4, TAG221
TAG221:
sll $0, $0, 0
lui $1, 0
bgtz $4, TAG222
lui $1, 1
TAG222:
mflo $3
mtlo $1
sll $3, $1, 8
sltiu $2, $3, 2
TAG223:
multu $2, $2
bgez $2, TAG224
lui $1, 7
mflo $2
TAG224:
and $3, $2, $2
lui $3, 9
mflo $2
bne $2, $2, TAG225
TAG225:
lui $3, 10
mflo $4
lui $1, 14
sll $0, $0, 0
TAG226:
beq $4, $4, TAG227
multu $4, $4
or $4, $4, $4
bltz $4, TAG227
TAG227:
lui $1, 13
andi $3, $1, 3
lh $2, 0($3)
bne $4, $2, TAG228
TAG228:
lui $3, 13
beq $2, $2, TAG229
lui $4, 12
xori $3, $3, 11
TAG229:
sra $2, $3, 2
multu $2, $3
mtlo $2
mthi $2
TAG230:
bne $2, $2, TAG231
sltiu $2, $2, 0
beq $2, $2, TAG231
mthi $2
TAG231:
sb $2, 0($2)
sw $2, 0($2)
mfhi $3
subu $4, $3, $2
TAG232:
sh $4, 0($4)
mfhi $2
mthi $4
sltiu $1, $4, 1
TAG233:
sra $1, $1, 2
multu $1, $1
sb $1, 0($1)
sltiu $1, $1, 11
TAG234:
srlv $1, $1, $1
mult $1, $1
lh $4, 0($1)
mult $1, $1
TAG235:
mthi $4
multu $4, $4
sb $4, 0($4)
lh $3, 0($4)
TAG236:
lbu $2, 0($3)
lw $2, 0($2)
lui $1, 10
mthi $1
TAG237:
andi $3, $1, 1
ori $2, $3, 9
mflo $1
lui $4, 14
TAG238:
divu $4, $4
beq $4, $4, TAG239
sll $0, $0, 0
mtlo $1
TAG239:
mtlo $1
lb $4, 0($1)
multu $4, $4
lui $2, 3
TAG240:
div $2, $2
sll $0, $0, 0
bne $2, $2, TAG241
mult $2, $2
TAG241:
lui $4, 3
slti $1, $4, 11
div $1, $2
mult $1, $4
TAG242:
or $1, $1, $1
lhu $3, 0($1)
mthi $1
beq $1, $3, TAG243
TAG243:
multu $3, $3
bgtz $3, TAG244
mfhi $2
bgez $2, TAG244
TAG244:
mtlo $2
lui $2, 15
bgez $2, TAG245
lui $1, 4
TAG245:
bne $1, $1, TAG246
or $4, $1, $1
mflo $2
mfhi $3
TAG246:
mtlo $3
mult $3, $3
xor $4, $3, $3
mflo $1
TAG247:
sltiu $1, $1, 8
mthi $1
mtlo $1
lb $2, 0($1)
TAG248:
xori $2, $2, 2
bgtz $2, TAG249
srav $1, $2, $2
lhu $4, 0($2)
TAG249:
multu $4, $4
mtlo $4
sh $4, 0($4)
lui $3, 3
TAG250:
mult $3, $3
sra $4, $3, 6
ori $4, $4, 4
lui $4, 9
TAG251:
div $4, $4
mult $4, $4
div $4, $4
sll $0, $0, 0
TAG252:
bgtz $4, TAG253
mflo $3
mfhi $1
mfhi $3
TAG253:
lui $4, 15
mfhi $3
mult $4, $3
srl $1, $3, 5
TAG254:
mult $1, $1
add $1, $1, $1
mult $1, $1
mthi $1
TAG255:
multu $1, $1
lui $1, 8
nor $2, $1, $1
sltiu $4, $2, 9
TAG256:
lw $2, 0($4)
bne $4, $2, TAG257
sh $2, 0($2)
add $2, $2, $2
TAG257:
sb $2, 0($2)
lbu $4, 0($2)
sh $2, 0($2)
beq $4, $2, TAG258
TAG258:
sh $4, 0($4)
bgtz $4, TAG259
lui $3, 4
lui $1, 6
TAG259:
beq $1, $1, TAG260
lui $4, 14
bgez $4, TAG260
sb $4, 0($4)
TAG260:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG261:
slt $1, $3, $3
lb $2, -196($3)
sllv $3, $2, $1
lw $3, 0($3)
TAG262:
blez $3, TAG263
slti $4, $3, 0
lui $1, 8
bgez $4, TAG263
TAG263:
mthi $1
sb $1, 0($1)
addiu $1, $1, 4
blez $1, TAG264
TAG264:
mfhi $2
mfhi $3
sltiu $2, $3, 4
addiu $3, $2, 1
TAG265:
lui $4, 10
sltu $3, $4, $4
multu $3, $3
sh $3, 0($3)
TAG266:
lbu $2, 0($3)
mfhi $3
sw $3, 0($3)
lui $4, 12
TAG267:
bne $4, $4, TAG268
sll $1, $4, 5
slt $2, $4, $1
mflo $1
TAG268:
slti $4, $1, 13
slt $3, $1, $1
lui $1, 0
addi $2, $1, 15
TAG269:
lui $2, 9
lui $3, 5
bgtz $3, TAG270
sll $0, $0, 0
TAG270:
div $3, $3
mflo $3
sb $3, 0($3)
beq $3, $3, TAG271
TAG271:
lbu $3, 0($3)
blez $3, TAG272
srlv $2, $3, $3
sh $3, 0($2)
TAG272:
mfhi $4
beq $2, $4, TAG273
sll $1, $4, 1
multu $2, $1
TAG273:
sh $1, 0($1)
slti $3, $1, 10
mthi $3
slti $1, $1, 1
TAG274:
srl $2, $1, 4
lui $4, 11
mflo $4
mflo $1
TAG275:
lbu $2, 0($1)
lui $3, 10
mflo $2
or $2, $2, $3
TAG276:
sll $0, $0, 0
addiu $2, $2, 5
bltz $2, TAG277
addu $4, $2, $2
TAG277:
beq $4, $4, TAG278
mult $4, $4
bgez $4, TAG278
div $4, $4
TAG278:
mfhi $2
bne $2, $2, TAG279
mflo $2
beq $2, $2, TAG279
TAG279:
mtlo $2
or $2, $2, $2
blez $2, TAG280
lui $3, 2
TAG280:
sll $0, $0, 0
bgez $3, TAG281
nor $3, $3, $3
add $4, $3, $3
TAG281:
bltz $4, TAG282
lui $2, 3
multu $2, $4
slti $2, $2, 4
TAG282:
mtlo $2
blez $2, TAG283
slt $4, $2, $2
multu $4, $4
TAG283:
addiu $4, $4, 11
lui $2, 8
beq $4, $2, TAG284
lui $2, 1
TAG284:
addiu $4, $2, 1
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
TAG285:
sll $0, $0, 0
mfhi $4
mult $4, $1
multu $1, $4
TAG286:
mthi $4
mtlo $4
div $4, $4
mflo $3
TAG287:
lb $2, 0($3)
sh $2, 0($2)
sra $2, $3, 12
lui $2, 4
TAG288:
ori $2, $2, 6
bne $2, $2, TAG289
lui $1, 6
mflo $4
TAG289:
mult $4, $4
lui $2, 1
mtlo $4
mtlo $4
TAG290:
bgtz $2, TAG291
xori $4, $2, 8
bltz $4, TAG291
lhu $2, 0($2)
TAG291:
sll $0, $0, 0
mflo $2
sb $2, 0($2)
sb $2, 0($2)
TAG292:
bgez $2, TAG293
lbu $3, 0($2)
blez $2, TAG293
lh $2, 0($3)
TAG293:
mtlo $2
divu $2, $2
lbu $3, 0($2)
mflo $4
TAG294:
multu $4, $4
div $4, $4
lui $4, 11
sll $0, $0, 0
TAG295:
sltu $4, $3, $3
lbu $1, 0($4)
or $1, $4, $3
divu $4, $3
TAG296:
ori $1, $1, 4
beq $1, $1, TAG297
mflo $1
multu $1, $1
TAG297:
addiu $3, $1, 0
bne $1, $1, TAG298
srlv $3, $3, $1
mflo $2
TAG298:
lw $3, 0($2)
mtlo $3
mult $3, $2
lhu $4, 0($2)
TAG299:
sll $0, $0, 0
mtlo $4
blez $4, TAG300
mflo $1
TAG300:
bne $1, $1, TAG301
sllv $4, $1, $1
mflo $2
lbu $2, -256($1)
TAG301:
bgtz $2, TAG302
mult $2, $2
bgez $2, TAG302
sb $2, 0($2)
TAG302:
srlv $1, $2, $2
bgez $1, TAG303
sh $2, 0($2)
bgtz $1, TAG303
TAG303:
mtlo $1
multu $1, $1
sb $1, 0($1)
mtlo $1
TAG304:
bne $1, $1, TAG305
multu $1, $1
bne $1, $1, TAG305
sb $1, 0($1)
TAG305:
mult $1, $1
lh $3, 0($1)
lui $1, 3
sra $1, $1, 11
TAG306:
mfhi $4
bne $1, $4, TAG307
sw $1, 0($1)
sltu $3, $1, $4
TAG307:
mtlo $3
mthi $3
lbu $4, 0($3)
lui $2, 13
TAG308:
bgez $2, TAG309
mult $2, $2
mult $2, $2
lui $3, 2
TAG309:
mthi $3
ori $2, $3, 14
blez $3, TAG310
multu $3, $2
TAG310:
lbu $3, 0($2)
lh $2, 0($3)
lw $3, 0($3)
blez $3, TAG311
TAG311:
mthi $3
mult $3, $3
mflo $4
slti $2, $4, 7
TAG312:
mtlo $2
mtlo $2
bgtz $2, TAG313
sb $2, 0($2)
TAG313:
lui $4, 1
or $1, $2, $4
addiu $4, $4, 5
mthi $1
TAG314:
mflo $2
xor $3, $2, $4
mtlo $2
and $1, $4, $4
TAG315:
andi $1, $1, 4
divu $1, $1
lui $1, 14
xor $2, $1, $1
TAG316:
lb $4, 0($2)
lui $2, 1
addu $3, $4, $2
bne $3, $4, TAG317
TAG317:
mfhi $1
bgtz $1, TAG318
mtlo $1
lui $2, 14
TAG318:
bne $2, $2, TAG319
mtlo $2
div $2, $2
sltu $4, $2, $2
TAG319:
sra $2, $4, 6
xor $2, $4, $4
andi $4, $4, 9
lui $4, 8
TAG320:
bne $4, $4, TAG321
addu $2, $4, $4
lui $2, 10
lui $1, 11
TAG321:
sll $0, $0, 0
lui $1, 10
mthi $1
mtlo $1
TAG322:
mflo $1
mfhi $2
sll $0, $0, 0
blez $1, TAG323
TAG323:
divu $2, $2
multu $2, $2
div $2, $2
slt $3, $2, $2
TAG324:
lui $1, 2
div $1, $1
mtlo $1
bne $3, $3, TAG325
TAG325:
mtlo $1
sll $0, $0, 0
mthi $1
xori $2, $1, 5
TAG326:
lui $2, 15
mfhi $4
mflo $2
sll $0, $0, 0
TAG327:
mfhi $3
divu $1, $3
bne $1, $1, TAG328
sll $0, $0, 0
TAG328:
bne $3, $3, TAG329
sll $0, $0, 0
sll $0, $0, 0
and $1, $3, $3
TAG329:
sll $0, $0, 0
mtlo $1
mtlo $1
addiu $4, $1, 1
TAG330:
bgez $4, TAG331
slti $2, $4, 13
lui $3, 11
sh $2, 0($2)
TAG331:
subu $3, $3, $3
lui $4, 13
lb $1, 0($3)
bltz $4, TAG332
TAG332:
mflo $4
sll $0, $0, 0
mthi $4
mfhi $3
TAG333:
mthi $3
andi $4, $3, 3
mflo $2
sh $4, 0($4)
TAG334:
sll $0, $0, 0
xor $1, $2, $2
sll $0, $0, 0
lui $4, 5
TAG335:
addu $4, $4, $4
mult $4, $4
bgez $4, TAG336
sll $0, $0, 0
TAG336:
sll $0, $0, 0
bltz $2, TAG337
mthi $2
mflo $4
TAG337:
bne $4, $4, TAG338
lbu $4, 0($4)
bne $4, $4, TAG338
sra $3, $4, 10
TAG338:
lbu $3, 0($3)
sw $3, 0($3)
beq $3, $3, TAG339
multu $3, $3
TAG339:
mult $3, $3
mtlo $3
lui $4, 8
addu $1, $3, $4
TAG340:
andi $2, $1, 9
sb $2, 0($2)
multu $1, $2
mthi $2
TAG341:
blez $2, TAG342
sllv $3, $2, $2
beq $2, $2, TAG342
lui $4, 5
TAG342:
multu $4, $4
addiu $1, $4, 7
blez $1, TAG343
sll $0, $0, 0
TAG343:
mflo $3
sltiu $1, $4, 3
srav $2, $1, $4
lui $3, 5
TAG344:
lui $1, 4
bne $3, $3, TAG345
sll $0, $0, 0
divu $1, $3
TAG345:
lui $2, 14
bltz $2, TAG346
lui $4, 12
bgtz $2, TAG346
TAG346:
addiu $3, $4, 6
srl $2, $4, 6
bne $2, $2, TAG347
subu $4, $3, $2
TAG347:
srl $3, $4, 8
div $4, $3
mflo $1
sltiu $1, $3, 0
TAG348:
mflo $3
mfhi $4
sh $1, 0($4)
multu $1, $1
TAG349:
sra $3, $4, 1
mfhi $1
bgtz $1, TAG350
subu $3, $3, $3
TAG350:
xori $1, $3, 11
subu $3, $1, $3
lbu $4, 0($3)
lb $3, 0($3)
TAG351:
bltz $3, TAG352
mtlo $3
sll $3, $3, 10
mult $3, $3
TAG352:
sra $4, $3, 15
or $4, $4, $3
multu $4, $3
mflo $1
TAG353:
blez $1, TAG354
lb $1, 0($1)
blez $1, TAG354
sltiu $2, $1, 8
TAG354:
sll $0, $0, 0
addiu $2, $3, 6
lui $1, 1
sh $1, 0($2)
TAG355:
mthi $1
beq $1, $1, TAG356
lui $3, 13
mthi $3
TAG356:
lui $3, 9
mult $3, $3
slt $4, $3, $3
sw $3, 0($4)
TAG357:
lui $2, 8
bltz $4, TAG358
slti $2, $4, 1
mthi $2
TAG358:
bne $2, $2, TAG359
slt $2, $2, $2
lui $1, 13
mthi $2
TAG359:
mflo $2
lui $4, 7
sll $0, $0, 0
lh $3, 0($2)
TAG360:
mtlo $3
beq $3, $3, TAG361
lbu $4, 0($3)
mtlo $4
TAG361:
mfhi $3
bgez $4, TAG362
lhu $3, 0($4)
srlv $1, $3, $3
TAG362:
addiu $4, $1, 12
bne $1, $1, TAG363
mflo $3
srl $3, $3, 6
TAG363:
mtlo $3
sb $3, 0($3)
bne $3, $3, TAG364
slti $3, $3, 14
TAG364:
lbu $1, 0($3)
multu $1, $1
lui $2, 7
mflo $1
TAG365:
multu $1, $1
xor $4, $1, $1
sltiu $3, $4, 5
mult $3, $1
TAG366:
bgez $3, TAG367
div $3, $3
mflo $2
bgtz $2, TAG367
TAG367:
ori $4, $2, 4
sll $0, $0, 0
sltu $1, $2, $4
addu $1, $1, $1
TAG368:
div $1, $1
blez $1, TAG369
lui $4, 15
beq $4, $4, TAG369
TAG369:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG370
sll $0, $0, 0
TAG370:
beq $4, $4, TAG371
mfhi $1
mtlo $4
lui $1, 3
TAG371:
bgez $1, TAG372
mtlo $1
mfhi $3
multu $3, $3
TAG372:
lb $4, 0($3)
lui $1, 3
blez $3, TAG373
lw $3, 0($4)
TAG373:
divu $3, $3
lui $1, 9
sll $0, $0, 0
xori $1, $2, 15
TAG374:
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
multu $1, $1
TAG375:
sll $0, $0, 0
bne $3, $3, TAG376
subu $4, $3, $3
bltz $4, TAG376
TAG376:
multu $4, $4
bne $4, $4, TAG377
mfhi $3
mtlo $4
TAG377:
lui $1, 12
sll $0, $0, 0
xori $2, $3, 4
sll $0, $0, 0
TAG378:
lw $4, 0($3)
sll $1, $3, 13
lbu $1, 0($1)
mthi $1
TAG379:
beq $1, $1, TAG380
sll $1, $1, 9
mtlo $1
mfhi $3
TAG380:
bgtz $3, TAG381
mtlo $3
and $4, $3, $3
bltz $3, TAG381
TAG381:
nor $3, $4, $4
xor $1, $3, $3
bltz $4, TAG382
lw $4, 1($3)
TAG382:
beq $4, $4, TAG383
mfhi $4
sllv $4, $4, $4
lui $3, 6
TAG383:
bne $3, $3, TAG384
ori $3, $3, 11
multu $3, $3
mfhi $1
TAG384:
sh $1, 2($1)
mfhi $3
addu $1, $1, $1
lh $3, 2($3)
TAG385:
mthi $3
blez $3, TAG386
mtlo $3
mtlo $3
TAG386:
beq $3, $3, TAG387
sw $3, 2($3)
mflo $1
mthi $1
TAG387:
mtlo $1
beq $1, $1, TAG388
mtlo $1
andi $3, $1, 10
TAG388:
sltiu $2, $3, 10
lh $2, 2($3)
bltz $2, TAG389
sll $1, $2, 12
TAG389:
bne $1, $1, TAG390
lb $4, 8192($1)
multu $1, $4
mfhi $2
TAG390:
mthi $2
bgtz $2, TAG391
multu $2, $2
lui $1, 7
TAG391:
slti $1, $1, 12
lui $1, 0
lui $1, 9
bne $1, $1, TAG392
TAG392:
lui $1, 3
sll $0, $0, 0
beq $1, $1, TAG393
mflo $3
TAG393:
addiu $1, $3, 10
beq $1, $1, TAG394
sll $0, $0, 0
mflo $2
TAG394:
multu $2, $2
addiu $2, $2, 14
divu $2, $2
bne $2, $2, TAG395
TAG395:
sh $2, 8180($2)
lw $3, 8180($2)
mtlo $3
sb $3, 8180($3)
TAG396:
sll $0, $0, 0
divu $2, $2
bgtz $3, TAG397
divu $2, $3
TAG397:
sh $2, 8180($2)
bne $2, $2, TAG398
mtlo $2
beq $2, $2, TAG398
TAG398:
mfhi $1
lbu $4, 0($1)
blez $1, TAG399
lhu $3, 0($4)
TAG399:
srl $4, $3, 0
sb $4, 0($3)
bgez $3, TAG400
mflo $2
TAG400:
div $2, $2
mflo $2
bgez $2, TAG401
mfhi $2
TAG401:
bgez $2, TAG402
sw $2, 0($2)
mfhi $4
sra $3, $4, 13
TAG402:
div $3, $3
mflo $1
bltz $3, TAG403
lui $3, 9
TAG403:
sll $0, $0, 0
blez $3, TAG404
slti $1, $3, 14
sllv $1, $3, $3
TAG404:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG405:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG406:
divu $1, $1
divu $1, $1
blez $1, TAG407
sll $0, $0, 0
TAG407:
sll $0, $0, 0
div $3, $1
sltu $3, $1, $1
lb $3, 0($3)
TAG408:
lh $1, 0($3)
mthi $3
beq $1, $3, TAG409
subu $2, $1, $1
TAG409:
xori $1, $2, 13
mtlo $1
mtlo $2
bgez $1, TAG410
TAG410:
mthi $1
addiu $2, $1, 2
sb $1, 0($2)
mtlo $2
TAG411:
mtlo $2
mfhi $1
mtlo $1
lbu $4, 0($1)
TAG412:
mfhi $1
mflo $2
multu $1, $1
bltz $4, TAG413
TAG413:
mthi $2
mflo $4
mfhi $4
mtlo $4
TAG414:
bne $4, $4, TAG415
xori $1, $4, 1
lbu $2, 0($4)
lh $1, 0($2)
TAG415:
mfhi $3
mthi $1
mfhi $1
lui $3, 15
TAG416:
bgez $3, TAG417
mflo $1
bne $1, $3, TAG417
mflo $3
TAG417:
bne $3, $3, TAG418
addu $2, $3, $3
bne $3, $2, TAG418
multu $3, $3
TAG418:
bgtz $2, TAG419
sll $0, $0, 0
andi $3, $2, 5
beq $3, $2, TAG419
TAG419:
mfhi $3
sh $3, -225($3)
mfhi $1
multu $3, $3
TAG420:
mfhi $2
srav $3, $2, $2
mult $1, $3
mtlo $1
TAG421:
ori $3, $3, 15
lb $2, 0($3)
multu $3, $3
bne $3, $2, TAG422
TAG422:
mult $2, $2
lb $3, 0($2)
beq $2, $3, TAG423
lbu $3, 0($2)
TAG423:
mult $3, $3
multu $3, $3
and $1, $3, $3
sltiu $1, $3, 3
TAG424:
mtlo $1
lui $1, 10
or $2, $1, $1
mfhi $4
TAG425:
lui $4, 0
mtlo $4
lui $4, 7
divu $4, $4
TAG426:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG427:
mflo $2
sra $2, $2, 15
nor $4, $2, $1
mult $1, $4
TAG428:
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
TAG429:
sll $0, $0, 0
andi $4, $4, 10
blez $4, TAG430
ori $3, $4, 0
TAG430:
bgez $3, TAG431
sh $3, 0($3)
bgtz $3, TAG431
sh $3, 0($3)
TAG431:
sw $3, 0($3)
beq $3, $3, TAG432
multu $3, $3
divu $3, $3
TAG432:
or $1, $3, $3
mult $3, $3
lui $3, 6
mfhi $2
TAG433:
lhu $4, 0($2)
andi $4, $4, 11
bltz $4, TAG434
mult $4, $4
TAG434:
bgez $4, TAG435
lw $2, 0($4)
sra $4, $2, 14
beq $4, $4, TAG435
TAG435:
sub $3, $4, $4
bgez $4, TAG436
lhu $3, 0($4)
divu $4, $4
TAG436:
mthi $3
mfhi $4
bne $3, $3, TAG437
mflo $1
TAG437:
mflo $1
sb $1, 0($1)
lh $4, 0($1)
xori $1, $1, 6
TAG438:
srlv $1, $1, $1
addi $1, $1, 0
sb $1, 0($1)
mflo $3
TAG439:
bltz $3, TAG440
mthi $3
lb $4, 0($3)
lui $2, 13
TAG440:
srav $1, $2, $2
multu $1, $1
sll $0, $0, 0
mfhi $1
TAG441:
beq $1, $1, TAG442
sb $1, -169($1)
mflo $2
mtlo $2
TAG442:
mtlo $2
div $2, $2
xor $3, $2, $2
lui $3, 11
TAG443:
divu $3, $3
bgtz $3, TAG444
mthi $3
slt $4, $3, $3
TAG444:
lb $1, 0($4)
lui $4, 6
sll $0, $0, 0
bne $4, $1, TAG445
TAG445:
nor $3, $2, $2
beq $2, $3, TAG446
sll $0, $0, 0
srlv $3, $2, $2
TAG446:
blez $3, TAG447
sll $0, $0, 0
mult $3, $1
mfhi $3
TAG447:
lui $1, 4
sltiu $1, $3, 10
sh $1, 1($3)
lb $4, 0($1)
TAG448:
mflo $4
srl $1, $4, 13
mfhi $2
lui $1, 2
TAG449:
xori $4, $1, 4
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG450:
lui $3, 15
mflo $1
sll $0, $0, 0
andi $3, $3, 0
TAG451:
multu $3, $3
sb $3, 0($3)
srav $1, $3, $3
beq $3, $3, TAG452
TAG452:
lbu $2, 0($1)
mtlo $2
mult $2, $1
blez $2, TAG453
TAG453:
lui $2, 10
mtlo $2
sll $0, $0, 0
lui $2, 12
TAG454:
mfhi $2
bne $2, $2, TAG455
mtlo $2
blez $2, TAG455
TAG455:
mflo $3
lui $3, 4
mflo $4
lui $2, 14
TAG456:
addu $4, $2, $2
lui $1, 7
lui $1, 4
sll $0, $0, 0
TAG457:
sll $0, $0, 0
mfhi $1
bne $1, $3, TAG458
mflo $1
TAG458:
bltz $1, TAG459
addiu $4, $1, 5
lh $4, 0($1)
nor $1, $1, $1
TAG459:
sll $0, $0, 0
bltz $1, TAG460
mthi $1
blez $1, TAG460
TAG460:
mfhi $1
mtlo $2
mfhi $1
lui $3, 13
TAG461:
bne $3, $3, TAG462
multu $3, $3
mthi $3
beq $3, $3, TAG462
TAG462:
mthi $3
lui $3, 7
andi $3, $3, 3
beq $3, $3, TAG463
TAG463:
sra $2, $3, 12
addi $2, $2, 2
bne $3, $3, TAG464
lh $3, 0($2)
TAG464:
mtlo $3
mtlo $3
sb $3, 0($3)
bgtz $3, TAG465
TAG465:
lui $3, 7
beq $3, $3, TAG466
sll $0, $0, 0
mflo $3
TAG466:
subu $2, $3, $3
mfhi $3
bgtz $3, TAG467
addu $2, $2, $3
TAG467:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG468
TAG468:
divu $2, $2
subu $4, $2, $2
mfhi $4
sll $0, $0, 0
TAG469:
sh $4, 0($4)
blez $4, TAG470
mtlo $4
sb $4, 0($4)
TAG470:
lui $4, 9
lui $3, 13
mflo $2
mthi $4
TAG471:
multu $2, $2
lb $2, 0($2)
lb $4, 0($2)
sllv $4, $2, $2
TAG472:
beq $4, $4, TAG473
mtlo $4
bltz $4, TAG473
xori $3, $4, 3
TAG473:
mthi $3
bne $3, $3, TAG474
mflo $3
mflo $2
TAG474:
mtlo $2
lhu $3, 0($2)
mflo $2
add $1, $3, $3
TAG475:
beq $1, $1, TAG476
mthi $1
bgtz $1, TAG476
xori $2, $1, 7
TAG476:
and $4, $2, $2
add $1, $4, $4
sb $1, 0($1)
mfhi $3
TAG477:
lui $1, 15
mtlo $1
mtlo $1
mflo $1
TAG478:
sll $0, $0, 0
and $3, $4, $4
mult $4, $3
sra $1, $3, 2
TAG479:
beq $1, $1, TAG480
multu $1, $1
div $1, $1
beq $1, $1, TAG480
TAG480:
srlv $3, $1, $1
srl $3, $1, 1
bne $1, $3, TAG481
addiu $1, $3, 1
TAG481:
lui $3, 13
sll $0, $0, 0
mtlo $3
beq $3, $1, TAG482
TAG482:
mult $3, $3
beq $3, $3, TAG483
mtlo $3
lhu $1, 0($3)
TAG483:
sb $1, 0($1)
sb $1, 0($1)
lui $4, 0
beq $1, $4, TAG484
TAG484:
lui $4, 13
blez $4, TAG485
div $4, $4
mfhi $1
TAG485:
mfhi $3
mtlo $3
or $2, $3, $3
lui $4, 1
TAG486:
lui $1, 4
bne $4, $1, TAG487
xor $4, $1, $4
lw $1, 0($4)
TAG487:
nor $1, $1, $1
sll $0, $0, 0
bltz $1, TAG488
mthi $1
TAG488:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
blez $1, TAG489
TAG489:
lw $2, 0($3)
sw $2, -256($2)
mfhi $2
divu $3, $2
TAG490:
beq $2, $2, TAG491
sll $0, $0, 0
mult $2, $3
sh $2, 0($3)
TAG491:
bne $3, $3, TAG492
lui $4, 13
mult $3, $3
lui $2, 10
TAG492:
slti $1, $2, 11
mthi $1
sll $0, $0, 0
sll $4, $1, 0
TAG493:
mflo $3
sll $1, $4, 13
nor $3, $4, $1
bltz $4, TAG494
TAG494:
srl $2, $3, 10
mfhi $2
sh $2, 1($3)
mfhi $1
TAG495:
sltiu $1, $1, 10
lbu $1, 0($1)
bne $1, $1, TAG496
mthi $1
TAG496:
sb $1, 0($1)
sb $1, 0($1)
lbu $4, 0($1)
bltz $4, TAG497
TAG497:
sll $4, $4, 8
mtlo $4
subu $1, $4, $4
sh $4, 0($4)
TAG498:
mtlo $1
mflo $1
addi $4, $1, 8
lui $4, 15
TAG499:
ori $2, $4, 9
div $4, $2
bgez $2, TAG500
srav $1, $2, $2
TAG500:
mflo $1
lui $4, 8
mflo $2
mtlo $1
TAG501:
bne $2, $2, TAG502
mfhi $3
bgez $2, TAG502
slti $1, $2, 15
TAG502:
mflo $1
sw $1, 0($1)
beq $1, $1, TAG503
or $4, $1, $1
TAG503:
lui $1, 13
mfhi $1
sll $0, $0, 0
lui $1, 0
TAG504:
ori $1, $1, 12
addu $4, $1, $1
bltz $1, TAG505
sllv $3, $4, $4
TAG505:
blez $3, TAG506
srl $2, $3, 2
sltiu $3, $2, 3
mtlo $3
TAG506:
sub $3, $3, $3
xori $4, $3, 12
blez $3, TAG507
mfhi $3
TAG507:
bltz $3, TAG508
xor $4, $3, $3
lb $1, 0($4)
beq $3, $4, TAG508
TAG508:
lui $1, 14
blez $1, TAG509
mfhi $3
bne $1, $3, TAG509
TAG509:
subu $1, $3, $3
bgez $1, TAG510
lui $4, 4
lui $4, 15
TAG510:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG511:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
divu $3, $3
TAG512:
lui $2, 8
sll $0, $0, 0
mflo $1
bne $2, $2, TAG513
TAG513:
mfhi $4
lui $4, 8
sll $0, $0, 0
addiu $4, $4, 3
TAG514:
beq $4, $4, TAG515
mfhi $2
mtlo $4
lui $2, 15
TAG515:
xor $1, $2, $2
multu $1, $1
lui $1, 12
sll $0, $0, 0
TAG516:
sll $0, $0, 0
addu $2, $1, $1
lui $3, 15
sll $0, $0, 0
TAG517:
srlv $3, $3, $3
sll $0, $0, 0
ori $1, $3, 11
div $3, $3
TAG518:
bne $1, $1, TAG519
addiu $4, $1, 12
blez $4, TAG519
sll $0, $0, 0
TAG519:
blez $4, TAG520
slti $3, $4, 9
sw $4, 0($3)
bgtz $4, TAG520
TAG520:
lw $1, 0($3)
mtlo $1
sw $1, 0($3)
addu $1, $3, $3
TAG521:
mtlo $1
mtlo $1
sh $1, 0($1)
blez $1, TAG522
TAG522:
multu $1, $1
mtlo $1
lui $4, 0
lhu $4, 0($4)
TAG523:
lh $4, 0($4)
mtlo $4
beq $4, $4, TAG524
sb $4, 0($4)
TAG524:
bne $4, $4, TAG525
xori $3, $4, 11
lh $1, 0($4)
bgez $3, TAG525
TAG525:
sub $4, $1, $1
srlv $4, $1, $1
subu $3, $4, $4
mtlo $1
TAG526:
multu $3, $3
sh $3, 0($3)
add $3, $3, $3
sh $3, 0($3)
TAG527:
lui $2, 14
bne $2, $2, TAG528
mtlo $2
blez $2, TAG528
TAG528:
xori $1, $2, 13
mult $2, $1
sll $0, $0, 0
beq $2, $2, TAG529
TAG529:
mfhi $4
blez $1, TAG530
slt $2, $4, $1
multu $2, $4
TAG530:
mthi $2
bne $2, $2, TAG531
sltiu $4, $2, 15
lb $4, 0($4)
TAG531:
multu $4, $4
sw $4, 0($4)
sh $4, 0($4)
sh $4, 0($4)
TAG532:
ori $3, $4, 1
mtlo $4
bne $4, $3, TAG533
mthi $4
TAG533:
lb $3, 0($3)
bgtz $3, TAG534
lb $2, 0($3)
mfhi $3
TAG534:
xori $2, $3, 10
sllv $2, $3, $2
lbu $2, 0($3)
sll $2, $2, 13
TAG535:
sb $2, 0($2)
addu $1, $2, $2
xor $4, $2, $2
beq $2, $4, TAG536
TAG536:
srl $2, $4, 8
multu $4, $4
mthi $4
beq $4, $2, TAG537
TAG537:
mfhi $1
bltz $2, TAG538
lui $4, 15
bne $2, $1, TAG538
TAG538:
mfhi $4
lui $1, 5
multu $1, $4
multu $1, $4
TAG539:
lui $4, 6
ori $1, $4, 1
sll $0, $0, 0
divu $1, $4
TAG540:
mthi $4
slt $1, $4, $4
addiu $3, $4, 15
lui $3, 6
TAG541:
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
lui $3, 8
TAG542:
div $3, $3
bne $3, $3, TAG543
slt $3, $3, $3
blez $3, TAG543
TAG543:
sltu $3, $3, $3
mthi $3
multu $3, $3
lui $3, 1
TAG544:
mtlo $3
subu $4, $3, $3
srav $3, $4, $3
srl $4, $4, 1
TAG545:
bne $4, $4, TAG546
mfhi $1
bgtz $4, TAG546
sw $4, 0($1)
TAG546:
mfhi $2
lui $4, 13
beq $1, $2, TAG547
sra $1, $1, 11
TAG547:
multu $1, $1
lh $4, 0($1)
lui $2, 6
or $2, $2, $4
TAG548:
bne $2, $2, TAG549
sra $4, $2, 13
bgtz $4, TAG549
sll $0, $0, 0
TAG549:
beq $4, $4, TAG550
sh $4, 0($4)
sw $4, 0($4)
lui $1, 10
TAG550:
multu $1, $1
mult $1, $1
bne $1, $1, TAG551
lui $4, 0
TAG551:
sh $4, 0($4)
lui $1, 13
sw $1, 0($4)
mfhi $4
TAG552:
mult $4, $4
sltiu $1, $4, 5
mult $4, $1
mflo $2
TAG553:
beq $2, $2, TAG554
sw $2, 0($2)
lb $1, 0($2)
mfhi $3
TAG554:
bgtz $3, TAG555
addiu $1, $3, 6
divu $1, $1
lb $1, 0($3)
TAG555:
bgtz $1, TAG556
addiu $1, $1, 4
mfhi $3
bgez $1, TAG556
TAG556:
sw $3, 0($3)
bne $3, $3, TAG557
mult $3, $3
sw $3, 0($3)
TAG557:
bne $3, $3, TAG558
lui $3, 12
sll $0, $0, 0
div $3, $3
TAG558:
beq $1, $1, TAG559
lw $3, 0($1)
lui $4, 12
mtlo $3
TAG559:
bgez $4, TAG560
mult $4, $4
mtlo $4
lhu $4, 0($4)
TAG560:
lh $1, 0($4)
bltz $1, TAG561
multu $4, $1
mult $4, $1
TAG561:
mfhi $2
lbu $1, 0($2)
blez $1, TAG562
sub $4, $1, $1
TAG562:
mflo $4
mflo $1
mult $1, $4
mflo $4
TAG563:
mtlo $4
mtlo $4
sh $4, 0($4)
lhu $4, 0($4)
TAG564:
mult $4, $4
blez $4, TAG565
mult $4, $4
add $1, $4, $4
TAG565:
sw $1, 0($1)
bne $1, $1, TAG566
ori $1, $1, 8
and $4, $1, $1
TAG566:
or $2, $4, $4
lbu $2, 0($2)
bne $2, $2, TAG567
mthi $4
TAG567:
lui $1, 13
bltz $1, TAG568
lui $3, 10
sll $0, $0, 0
TAG568:
bgtz $3, TAG569
srlv $1, $3, $3
sra $1, $3, 4
blez $3, TAG569
TAG569:
lui $3, 15
beq $3, $1, TAG570
lui $3, 3
mflo $2
TAG570:
sw $2, 0($2)
bgtz $2, TAG571
lui $1, 0
lh $2, 0($2)
TAG571:
sll $1, $2, 6
sltu $2, $2, $2
add $2, $2, $2
mflo $1
TAG572:
lhu $1, 0($1)
lui $4, 12
mtlo $1
blez $1, TAG573
TAG573:
slti $3, $4, 9
sltu $4, $3, $4
lui $4, 5
mtlo $4
TAG574:
lui $1, 0
mthi $1
sra $2, $4, 14
bltz $2, TAG575
TAG575:
mtlo $2
mult $2, $2
slt $1, $2, $2
mult $2, $1
TAG576:
sltu $4, $1, $1
sh $1, 0($1)
beq $1, $4, TAG577
lui $2, 4
TAG577:
sll $0, $0, 0
sll $0, $0, 0
subu $3, $2, $2
div $2, $2
TAG578:
lw $3, 0($3)
bgez $3, TAG579
sra $4, $3, 9
sh $4, 0($3)
TAG579:
lb $2, 0($4)
beq $2, $4, TAG580
mflo $1
lh $1, 0($4)
TAG580:
lui $1, 7
lui $2, 9
nor $4, $2, $1
sll $0, $0, 0
TAG581:
multu $3, $3
bne $3, $3, TAG582
lui $2, 11
lui $3, 10
TAG582:
bne $3, $3, TAG583
xori $2, $3, 7
nor $3, $3, $3
srav $1, $2, $3
TAG583:
lhu $1, 0($1)
lui $2, 9
beq $1, $2, TAG584
mthi $2
TAG584:
sltu $3, $2, $2
lui $4, 5
lui $2, 11
sllv $4, $2, $2
TAG585:
bne $4, $4, TAG586
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG586
TAG586:
subu $2, $4, $4
multu $4, $2
sltiu $2, $2, 6
mfhi $4
TAG587:
bne $4, $4, TAG588
sb $4, 0($4)
multu $4, $4
lh $3, 0($4)
TAG588:
sw $3, 0($3)
lh $3, 0($3)
lhu $2, 0($3)
mflo $3
TAG589:
sb $3, 0($3)
lhu $4, 0($3)
lui $3, 12
xori $1, $3, 14
TAG590:
mfhi $3
sb $3, 0($3)
mflo $3
sb $3, 0($3)
TAG591:
mult $3, $3
blez $3, TAG592
lui $2, 15
bne $2, $3, TAG592
TAG592:
sll $0, $0, 0
mflo $3
beq $3, $3, TAG593
mult $3, $3
TAG593:
lw $3, 0($3)
lb $1, 0($3)
mfhi $1
bne $3, $1, TAG594
TAG594:
mflo $3
mtlo $3
lbu $1, 0($3)
bne $3, $1, TAG595
TAG595:
lhu $3, 0($1)
lw $3, 0($1)
sh $3, 0($1)
mflo $4
TAG596:
multu $4, $4
beq $4, $4, TAG597
mthi $4
mthi $4
TAG597:
beq $4, $4, TAG598
xori $3, $4, 2
lh $3, 0($3)
lhu $3, 0($3)
TAG598:
bne $3, $3, TAG599
mtlo $3
bne $3, $3, TAG599
mfhi $2
TAG599:
mthi $2
mflo $2
bgtz $2, TAG600
sb $2, 0($2)
TAG600:
lhu $4, 0($2)
lui $4, 10
lh $3, 0($2)
lui $2, 3
TAG601:
sll $0, $0, 0
addiu $2, $2, 9
mtlo $2
beq $2, $2, TAG602
TAG602:
slti $3, $2, 12
bgez $2, TAG603
or $2, $3, $2
lh $3, 0($2)
TAG603:
sh $3, 0($3)
mthi $3
mult $3, $3
bltz $3, TAG604
TAG604:
or $2, $3, $3
mult $3, $3
bltz $3, TAG605
lw $4, 0($3)
TAG605:
mflo $1
sltiu $2, $1, 9
ori $3, $1, 13
mtlo $4
TAG606:
bgez $3, TAG607
mtlo $3
srav $4, $3, $3
lb $3, 0($4)
TAG607:
slt $1, $3, $3
mflo $3
lb $3, 0($3)
sh $3, 0($3)
TAG608:
multu $3, $3
sw $3, 0($3)
mthi $3
nor $4, $3, $3
TAG609:
div $4, $4
sw $4, 1($4)
lui $2, 8
multu $4, $2
TAG610:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $4, 15
TAG611:
sb $4, 0($4)
sh $4, 0($4)
mtlo $4
lui $3, 7
TAG612:
mult $3, $3
bne $3, $3, TAG613
lui $4, 11
beq $3, $4, TAG613
TAG613:
mflo $4
mtlo $4
ori $4, $4, 9
mfhi $1
TAG614:
lb $4, 0($1)
add $2, $4, $4
mtlo $2
lbu $4, 0($1)
TAG615:
multu $4, $4
blez $4, TAG616
nor $3, $4, $4
lui $1, 4
TAG616:
sb $1, 0($1)
lbu $2, 0($1)
mtlo $2
lbu $1, 0($2)
TAG617:
lb $1, 0($1)
mthi $1
bgez $1, TAG618
sb $1, 0($1)
TAG618:
lb $2, 0($1)
mflo $4
mflo $4
addiu $3, $4, 10
TAG619:
blez $3, TAG620
divu $3, $3
mfhi $4
sb $3, 0($3)
TAG620:
bne $4, $4, TAG621
subu $1, $4, $4
mult $4, $1
lb $2, 0($1)
TAG621:
srav $2, $2, $2
mflo $3
lb $1, 1($2)
lhu $4, 1($2)
TAG622:
bltz $4, TAG623
addiu $2, $4, 2
xori $1, $4, 14
multu $1, $4
TAG623:
divu $1, $1
srl $1, $1, 13
divu $1, $1
srl $3, $1, 13
TAG624:
blez $3, TAG625
mflo $2
slti $1, $2, 2
mflo $3
TAG625:
mtlo $3
lh $3, 0($3)
sw $3, 1($3)
bne $3, $3, TAG626
TAG626:
mtlo $3
sltiu $4, $3, 3
lui $1, 0
sllv $1, $1, $1
TAG627:
bne $1, $1, TAG628
mflo $2
lhu $3, 1($2)
mfhi $4
TAG628:
bltz $4, TAG629
lhu $3, 0($4)
mtlo $4
slt $2, $4, $4
TAG629:
mtlo $2
sll $3, $2, 9
bne $2, $2, TAG630
mult $2, $3
TAG630:
lb $3, 0($3)
div $3, $3
mfhi $1
xor $2, $3, $3
TAG631:
mthi $2
sw $2, 0($2)
beq $2, $2, TAG632
xori $4, $2, 1
TAG632:
lb $3, 0($4)
xori $2, $4, 6
bgtz $2, TAG633
lbu $2, 0($3)
TAG633:
nor $4, $2, $2
multu $2, $2
multu $2, $4
slti $4, $4, 5
TAG634:
subu $4, $4, $4
slt $4, $4, $4
lw $3, 0($4)
sh $3, 0($3)
TAG635:
mtlo $3
mult $3, $3
lui $1, 4
lui $1, 9
TAG636:
div $1, $1
mflo $4
mthi $1
sll $0, $0, 0
TAG637:
lui $3, 13
mflo $4
mflo $2
slti $4, $3, 12
TAG638:
lui $2, 1
lui $3, 10
mthi $3
andi $4, $4, 2
TAG639:
mthi $4
bgez $4, TAG640
lb $1, 0($4)
sllv $3, $4, $4
TAG640:
bltz $3, TAG641
mtlo $3
sll $0, $0, 0
srl $2, $3, 5
TAG641:
mfhi $2
mtlo $2
multu $2, $2
mfhi $3
TAG642:
bne $3, $3, TAG643
mthi $3
multu $3, $3
lb $1, 0($3)
TAG643:
mult $1, $1
multu $1, $1
mult $1, $1
srl $4, $1, 0
TAG644:
mfhi $1
sll $3, $1, 6
mflo $4
sw $4, 0($1)
TAG645:
slt $4, $4, $4
bne $4, $4, TAG646
multu $4, $4
sh $4, 0($4)
TAG646:
mult $4, $4
beq $4, $4, TAG647
addi $2, $4, 15
mtlo $4
TAG647:
sb $2, 0($2)
lbu $1, 0($2)
lbu $2, 0($2)
or $2, $1, $1
TAG648:
lb $1, 0($2)
lui $2, 12
lui $2, 4
beq $2, $2, TAG649
TAG649:
lui $2, 2
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
TAG650:
addu $4, $2, $2
srav $4, $2, $4
lui $4, 1
addiu $1, $4, 2
TAG651:
ori $2, $1, 1
mtlo $2
sll $0, $0, 0
multu $2, $1
TAG652:
nor $2, $2, $2
blez $2, TAG653
mtlo $2
bne $2, $2, TAG653
TAG653:
lui $2, 3
sll $0, $0, 0
mthi $2
bne $2, $2, TAG654
TAG654:
mthi $2
sll $0, $0, 0
bne $4, $2, TAG655
sll $2, $4, 4
TAG655:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG656:
subu $3, $4, $4
lui $2, 12
mflo $4
blez $2, TAG657
TAG657:
sra $1, $4, 0
div $1, $1
divu $1, $4
sll $0, $0, 0
TAG658:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
mflo $3
TAG659:
xori $3, $3, 15
sra $3, $3, 12
beq $3, $3, TAG660
lui $1, 3
TAG660:
lui $4, 7
lui $4, 4
lui $1, 0
sll $0, $0, 0
TAG661:
mfhi $4
sb $4, 0($4)
lh $2, 0($4)
mfhi $2
TAG662:
mflo $1
sltiu $4, $1, 7
blez $1, TAG663
mult $4, $2
TAG663:
slti $4, $4, 13
xori $1, $4, 7
addiu $1, $4, 7
subu $1, $1, $4
TAG664:
beq $1, $1, TAG665
nor $2, $1, $1
mflo $3
mflo $1
TAG665:
sb $1, 0($1)
lbu $2, 0($1)
sltiu $2, $1, 9
mflo $1
TAG666:
bltz $1, TAG667
lh $1, 0($1)
xor $4, $1, $1
bgtz $4, TAG667
TAG667:
multu $4, $4
blez $4, TAG668
lhu $4, 0($4)
sll $1, $4, 9
TAG668:
mflo $4
srl $2, $4, 0
lbu $4, 0($1)
addi $1, $4, 1
TAG669:
beq $1, $1, TAG670
sb $1, 0($1)
mfhi $3
slti $1, $1, 12
TAG670:
lbu $4, 0($1)
or $2, $4, $1
sb $1, 0($1)
mflo $2
TAG671:
mfhi $2
multu $2, $2
mthi $2
sub $4, $2, $2
TAG672:
bltz $4, TAG673
srav $3, $4, $4
sltiu $1, $3, 3
lbu $4, 0($3)
TAG673:
beq $4, $4, TAG674
mflo $4
sb $4, 0($4)
bgez $4, TAG674
TAG674:
mthi $4
lbu $4, 0($4)
blez $4, TAG675
or $4, $4, $4
TAG675:
multu $4, $4
multu $4, $4
sw $4, 0($4)
mfhi $3
TAG676:
bltz $3, TAG677
lui $2, 5
srl $1, $2, 12
lui $2, 12
TAG677:
ori $4, $2, 0
lui $2, 3
mthi $2
bne $2, $2, TAG678
TAG678:
mthi $2
sll $0, $0, 0
lw $2, 0($1)
add $2, $2, $2
TAG679:
addi $1, $2, 14
mflo $2
bne $1, $2, TAG680
sll $4, $2, 12
TAG680:
lbu $3, 0($4)
bgtz $4, TAG681
xor $4, $3, $4
bne $4, $4, TAG681
TAG681:
lui $4, 4
sll $0, $0, 0
srl $3, $4, 13
sb $4, 0($3)
TAG682:
addu $4, $3, $3
lbu $4, 0($3)
sllv $1, $4, $3
lh $3, 0($4)
TAG683:
mtlo $3
addi $3, $3, 12
slt $2, $3, $3
div $3, $3
TAG684:
ori $1, $2, 12
mthi $1
sw $1, 0($2)
mtlo $1
TAG685:
sh $1, 0($1)
ori $1, $1, 3
lb $4, 0($1)
sb $1, 0($1)
TAG686:
sllv $4, $4, $4
sll $0, $0, 0
lui $4, 4
sltu $1, $4, $4
TAG687:
nor $4, $1, $1
blez $1, TAG688
subu $2, $4, $4
ori $3, $4, 13
TAG688:
sllv $1, $3, $3
nor $1, $3, $1
mflo $3
lui $3, 7
TAG689:
div $3, $3
mfhi $2
mult $2, $3
and $3, $2, $3
TAG690:
addiu $3, $3, 6
beq $3, $3, TAG691
lui $2, 9
divu $2, $3
TAG691:
addiu $3, $2, 10
lui $1, 13
mtlo $1
bgez $3, TAG692
TAG692:
lui $3, 9
mult $3, $1
mult $1, $3
mthi $3
TAG693:
ori $3, $3, 4
sll $0, $0, 0
sltu $2, $3, $3
mflo $4
TAG694:
blez $4, TAG695
lui $1, 13
bne $1, $4, TAG695
lb $1, 0($4)
TAG695:
ori $3, $1, 0
mtlo $1
sll $0, $0, 0
blez $1, TAG696
TAG696:
mfhi $4
sll $0, $0, 0
bne $4, $1, TAG697
mfhi $2
TAG697:
divu $2, $2
addiu $3, $2, 3
sltu $2, $3, $2
bgtz $2, TAG698
TAG698:
sb $2, 0($2)
mtlo $2
bgez $2, TAG699
mtlo $2
TAG699:
mult $2, $2
mfhi $4
mflo $3
lui $1, 15
TAG700:
sll $0, $0, 0
blez $1, TAG701
andi $4, $1, 4
bltz $4, TAG701
TAG701:
sb $4, 0($4)
bltz $4, TAG702
andi $2, $4, 5
sw $4, 0($2)
TAG702:
lh $3, 0($2)
lui $2, 15
addu $4, $2, $2
lui $4, 5
TAG703:
mtlo $4
addiu $4, $4, 14
divu $4, $4
bltz $4, TAG704
TAG704:
sll $0, $0, 0
subu $2, $4, $4
lui $2, 14
sll $0, $0, 0
TAG705:
mfhi $2
mflo $2
and $1, $2, $2
bgez $1, TAG706
TAG706:
div $1, $1
ori $2, $1, 9
mfhi $2
sb $2, 0($1)
TAG707:
sw $2, 0($2)
lh $1, 0($2)
xori $3, $1, 7
lui $1, 3
TAG708:
bne $1, $1, TAG709
lui $1, 3
lui $2, 15
divu $1, $1
TAG709:
addu $4, $2, $2
bne $2, $2, TAG710
sll $0, $0, 0
mflo $2
TAG710:
sb $2, 0($2)
beq $2, $2, TAG711
mthi $2
srl $1, $2, 11
TAG711:
lui $2, 12
mfhi $3
sllv $3, $2, $2
slt $2, $1, $2
TAG712:
divu $2, $2
lui $3, 5
lb $4, 0($2)
multu $2, $2
TAG713:
beq $4, $4, TAG714
mfhi $3
lui $3, 3
lui $2, 15
TAG714:
lb $4, 0($2)
lui $2, 12
sra $2, $4, 7
mtlo $2
TAG715:
mtlo $2
beq $2, $2, TAG716
lb $4, 0($2)
mfhi $1
TAG716:
addu $1, $1, $1
sra $1, $1, 5
blez $1, TAG717
sw $1, -12288($1)
TAG717:
mthi $1
lui $2, 3
beq $2, $2, TAG718
mfhi $4
TAG718:
lui $2, 14
mflo $4
bgez $4, TAG719
multu $4, $2
TAG719:
beq $4, $4, TAG720
or $3, $4, $4
mtlo $4
bne $4, $4, TAG720
TAG720:
mfhi $3
sh $3, 0($3)
bne $3, $3, TAG721
mfhi $1
TAG721:
addu $4, $1, $1
or $4, $1, $4
sb $1, 0($4)
lui $3, 5
TAG722:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG723:
mthi $4
bgtz $4, TAG724
mult $4, $4
multu $4, $4
TAG724:
blez $4, TAG725
mthi $4
sw $4, 0($4)
lui $4, 7
TAG725:
mthi $4
lui $2, 15
addu $2, $4, $2
bne $2, $2, TAG726
TAG726:
xori $3, $2, 8
mfhi $4
bltz $3, TAG727
mtlo $4
TAG727:
sb $4, 0($4)
beq $4, $4, TAG728
sh $4, 0($4)
lui $3, 6
TAG728:
bne $3, $3, TAG729
sll $0, $0, 0
lui $4, 15
bltz $2, TAG729
TAG729:
div $4, $4
bltz $4, TAG730
sll $0, $0, 0
mtlo $2
TAG730:
sll $0, $0, 0
addu $3, $2, $2
bne $3, $3, TAG731
xor $2, $1, $3
TAG731:
slti $3, $2, 11
sra $1, $3, 12
lui $1, 3
sll $0, $0, 0
TAG732:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG733
TAG733:
sllv $2, $4, $4
sll $0, $0, 0
mult $2, $2
mthi $4
TAG734:
addu $3, $2, $2
bne $2, $3, TAG735
mthi $2
nor $3, $3, $2
TAG735:
mult $3, $3
divu $3, $3
blez $3, TAG736
sll $0, $0, 0
TAG736:
blez $2, TAG737
sll $0, $0, 0
beq $1, $2, TAG737
mtlo $1
TAG737:
mtlo $1
addu $2, $1, $1
bne $2, $1, TAG738
addu $4, $1, $1
TAG738:
lui $1, 12
multu $4, $1
lui $3, 3
lui $1, 8
TAG739:
mthi $1
bltz $1, TAG740
sll $0, $0, 0
ori $2, $1, 3
TAG740:
sltiu $3, $2, 12
sra $2, $2, 10
mult $3, $3
bne $3, $3, TAG741
TAG741:
sb $2, -512($2)
lhu $2, -512($2)
sw $2, 0($2)
sltiu $3, $2, 7
TAG742:
beq $3, $3, TAG743
mfhi $3
lhu $1, 0($3)
mult $3, $3
TAG743:
nor $1, $1, $1
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG744:
bgez $1, TAG745
sll $0, $0, 0
mflo $4
multu $1, $4
TAG745:
sll $0, $0, 0
beq $4, $4, TAG746
sll $0, $0, 0
bltz $4, TAG746
TAG746:
lui $2, 8
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG747:
sll $0, $0, 0
addu $1, $2, $2
lui $3, 6
mtlo $1
TAG748:
andi $4, $3, 1
mflo $4
sllv $2, $4, $3
sll $3, $4, 11
TAG749:
divu $3, $3
xori $1, $3, 8
sll $0, $0, 0
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop