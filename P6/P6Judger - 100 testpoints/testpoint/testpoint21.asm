ori $1, $0, 10
ori $2, $0, 9
ori $3, $0, 6
ori $4, $0, 11
sw $3, 0($0)
sw $3, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $4, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $2, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $4, 120($0)
sw $4, 124($0)
sll $1, $2, 12
mflo $3
divu $3, $1
ori $2, $2, 1
TAG1:
lui $2, 13
mthi $2
mtlo $2
bgtz $2, TAG2
TAG2:
mfhi $1
sll $0, $0, 0
multu $1, $1
div $2, $1
TAG3:
multu $1, $1
mthi $1
beq $1, $1, TAG4
sll $0, $0, 0
TAG4:
sll $0, $0, 0
multu $1, $3
sltiu $1, $3, 3
or $2, $3, $1
TAG5:
mfhi $3
lb $2, 0($2)
bltz $3, TAG6
sh $2, 0($2)
TAG6:
addu $2, $2, $2
mthi $2
mflo $4
mfhi $2
TAG7:
slt $3, $2, $2
add $3, $3, $2
lui $2, 13
beq $2, $3, TAG8
TAG8:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG9
mtlo $2
TAG9:
sb $1, 0($1)
div $1, $1
bltz $1, TAG10
lui $3, 13
TAG10:
multu $3, $3
mfhi $3
beq $3, $3, TAG11
sb $3, -169($3)
TAG11:
div $3, $3
sb $3, -169($3)
lui $4, 13
addiu $2, $3, 13
TAG12:
subu $3, $2, $2
blez $2, TAG13
sw $2, -182($2)
mtlo $3
TAG13:
mfhi $4
multu $4, $3
mfhi $2
mfhi $2
TAG14:
sra $4, $2, 5
sb $4, 0($4)
bne $4, $2, TAG15
multu $4, $4
TAG15:
bltz $4, TAG16
srl $3, $4, 10
mflo $1
lui $3, 4
TAG16:
sll $0, $0, 0
mthi $3
srl $3, $3, 14
sb $3, 0($3)
TAG17:
mult $3, $3
lhu $3, 0($3)
sltiu $3, $3, 2
multu $3, $3
TAG18:
beq $3, $3, TAG19
addiu $4, $3, 14
lui $3, 13
divu $4, $3
TAG19:
lui $3, 2
mflo $4
mthi $4
sll $0, $0, 0
TAG20:
bne $4, $4, TAG21
lui $4, 12
lui $3, 15
lui $2, 0
TAG21:
ori $2, $2, 15
mthi $2
beq $2, $2, TAG22
mflo $1
TAG22:
lh $1, 0($1)
lbu $4, 0($1)
mfhi $1
mtlo $1
TAG23:
blez $1, TAG24
slti $3, $1, 0
mthi $1
lui $2, 7
TAG24:
bltz $2, TAG25
mfhi $3
sll $0, $0, 0
sllv $3, $2, $3
TAG25:
sll $0, $0, 0
lui $4, 12
sll $0, $0, 0
mfhi $3
TAG26:
bltz $3, TAG27
addu $1, $3, $3
ori $1, $3, 11
lb $4, 0($1)
TAG27:
srl $1, $4, 9
mfhi $3
sb $4, 0($3)
sw $4, 0($1)
TAG28:
or $1, $3, $3
sb $3, 0($1)
mthi $1
mtlo $3
TAG29:
mthi $1
mflo $4
beq $4, $1, TAG30
sb $4, 0($1)
TAG30:
mthi $4
andi $2, $4, 13
beq $4, $4, TAG31
sb $2, 0($4)
TAG31:
bgtz $2, TAG32
lb $3, 0($2)
sw $3, 0($2)
add $2, $2, $3
TAG32:
bgez $2, TAG33
mfhi $2
mthi $2
lui $4, 10
TAG33:
lbu $2, 0($4)
beq $2, $2, TAG34
lb $4, 0($2)
mthi $4
TAG34:
ori $2, $4, 15
lhu $1, 0($4)
mtlo $1
sllv $3, $1, $1
TAG35:
sb $3, 0($3)
lui $2, 3
mflo $1
lh $1, 0($3)
TAG36:
mfhi $3
mfhi $2
beq $1, $1, TAG37
sb $2, 0($3)
TAG37:
sb $2, 0($2)
sb $2, 0($2)
sb $2, 0($2)
xori $2, $2, 12
TAG38:
lb $4, 0($2)
divu $2, $2
divu $2, $2
lui $3, 8
TAG39:
beq $3, $3, TAG40
mflo $3
lui $2, 15
lui $2, 0
TAG40:
multu $2, $2
mthi $2
lbu $1, 0($2)
beq $1, $1, TAG41
TAG41:
multu $1, $1
beq $1, $1, TAG42
and $3, $1, $1
sltu $2, $3, $1
TAG42:
beq $2, $2, TAG43
lb $3, 0($2)
sub $2, $2, $2
nor $4, $2, $3
TAG43:
mtlo $4
sb $4, 0($4)
slti $1, $4, 14
beq $4, $4, TAG44
TAG44:
sltu $3, $1, $1
mflo $1
mthi $3
mult $1, $1
TAG45:
lui $1, 12
bgez $1, TAG46
sra $2, $1, 1
xori $2, $1, 15
TAG46:
sll $0, $0, 0
slti $1, $2, 5
sll $0, $0, 0
mthi $1
TAG47:
srlv $2, $3, $3
subu $1, $3, $2
subu $1, $3, $3
bltz $2, TAG48
TAG48:
mflo $1
sw $1, 0($1)
lw $4, 0($1)
lui $4, 11
TAG49:
sll $0, $0, 0
blez $4, TAG50
mflo $4
mflo $1
TAG50:
slti $2, $1, 13
mtlo $2
mthi $1
div $1, $2
TAG51:
bltz $2, TAG52
lb $1, 0($2)
mflo $2
mult $2, $2
TAG52:
mfhi $3
lh $4, 0($3)
beq $4, $3, TAG53
sw $3, 0($3)
TAG53:
mthi $4
lui $3, 2
lui $2, 4
lui $4, 3
TAG54:
sll $0, $0, 0
bne $4, $4, TAG55
mthi $4
mflo $2
TAG55:
lui $2, 6
bgez $2, TAG56
mthi $2
xor $2, $2, $2
TAG56:
mthi $2
mtlo $2
bltz $2, TAG57
sll $0, $0, 0
TAG57:
bne $2, $2, TAG58
sll $0, $0, 0
lui $2, 10
sll $0, $0, 0
TAG58:
sra $3, $2, 3
slti $2, $3, 13
sll $0, $0, 0
lui $3, 10
TAG59:
mthi $3
srav $4, $3, $3
lui $3, 3
sll $0, $0, 0
TAG60:
sll $0, $0, 0
bltz $3, TAG61
sltiu $1, $1, 5
lui $2, 13
TAG61:
sll $0, $0, 0
mflo $3
sltiu $3, $2, 6
mthi $2
TAG62:
bne $3, $3, TAG63
lui $1, 1
addu $1, $1, $1
sll $0, $0, 0
TAG63:
sw $3, 0($3)
beq $3, $3, TAG64
or $3, $3, $3
lb $4, 0($3)
TAG64:
beq $4, $4, TAG65
mthi $4
lui $3, 4
nor $3, $4, $4
TAG65:
mfhi $4
mult $3, $4
mtlo $4
multu $3, $4
TAG66:
bne $4, $4, TAG67
lui $2, 2
mfhi $4
and $1, $4, $4
TAG67:
multu $1, $1
mflo $3
beq $3, $3, TAG68
mult $1, $1
TAG68:
sh $3, 0($3)
multu $3, $3
beq $3, $3, TAG69
lui $3, 0
TAG69:
lb $3, 0($3)
mthi $3
sw $3, 0($3)
addi $3, $3, 11
TAG70:
mfhi $1
beq $3, $1, TAG71
mflo $1
div $1, $3
TAG71:
sll $2, $1, 4
andi $4, $1, 7
lui $2, 2
multu $2, $1
TAG72:
mtlo $2
sll $0, $0, 0
lui $2, 7
sll $0, $0, 0
TAG73:
lui $1, 3
lui $2, 5
div $2, $2
mflo $4
TAG74:
div $4, $4
sll $1, $4, 5
mult $4, $4
bgtz $1, TAG75
TAG75:
multu $1, $1
lhu $4, 0($1)
beq $4, $4, TAG76
divu $4, $4
TAG76:
xori $4, $4, 12
sb $4, 0($4)
sb $4, 0($4)
mfhi $4
TAG77:
lui $2, 7
mult $2, $4
sltu $4, $4, $4
sll $0, $0, 0
TAG78:
nor $3, $4, $4
mfhi $3
lui $1, 15
sw $3, 0($3)
TAG79:
bne $1, $1, TAG80
sll $0, $0, 0
bne $1, $1, TAG80
div $1, $1
TAG80:
sll $0, $0, 0
mflo $1
sb $1, 0($1)
beq $1, $1, TAG81
TAG81:
mfhi $1
mult $1, $1
sltiu $4, $1, 8
mflo $2
TAG82:
mthi $2
srav $1, $2, $2
sllv $1, $1, $2
sub $1, $1, $2
TAG83:
lui $3, 10
beq $1, $1, TAG84
sll $0, $0, 0
add $3, $1, $3
TAG84:
beq $3, $3, TAG85
lui $3, 12
mflo $2
bgez $2, TAG85
TAG85:
sra $2, $2, 7
beq $2, $2, TAG86
sllv $2, $2, $2
lui $2, 5
TAG86:
sll $4, $2, 10
lui $1, 5
divu $1, $1
lh $2, 0($4)
TAG87:
mflo $3
srav $4, $2, $3
nor $1, $4, $2
mflo $4
TAG88:
mfhi $3
bgtz $4, TAG89
mfhi $2
lui $4, 2
TAG89:
bgtz $4, TAG90
addiu $1, $4, 9
multu $1, $4
beq $4, $1, TAG90
TAG90:
mthi $1
bne $1, $1, TAG91
xori $3, $1, 10
multu $3, $3
TAG91:
mthi $3
sltiu $2, $3, 8
sb $3, 0($2)
subu $4, $3, $2
TAG92:
and $4, $4, $4
mfhi $1
sltiu $4, $4, 6
mfhi $3
TAG93:
lui $2, 10
sh $3, 0($3)
beq $2, $2, TAG94
lui $3, 1
TAG94:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 9
beq $4, $4, TAG95
TAG95:
sll $0, $0, 0
andi $2, $4, 10
sltu $3, $2, $2
addi $4, $2, 9
TAG96:
lui $3, 14
mfhi $1
bne $1, $4, TAG97
lui $2, 4
TAG97:
multu $2, $2
bltz $2, TAG98
mult $2, $2
mthi $2
TAG98:
lui $4, 4
srav $3, $4, $4
sll $2, $2, 5
blez $4, TAG99
TAG99:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
mflo $4
TAG100:
sw $4, 0($4)
beq $4, $4, TAG101
mfhi $1
slt $2, $4, $4
TAG101:
lui $4, 12
blez $2, TAG102
ori $2, $4, 9
blez $4, TAG102
TAG102:
and $3, $2, $2
mtlo $2
and $2, $2, $3
subu $3, $3, $2
TAG103:
sra $4, $3, 5
lui $3, 5
slti $2, $3, 2
sh $3, 0($4)
TAG104:
bgtz $2, TAG105
sll $1, $2, 15
mflo $1
bne $2, $2, TAG105
TAG105:
sltiu $3, $1, 4
mflo $2
lui $4, 9
mtlo $4
TAG106:
bne $4, $4, TAG107
multu $4, $4
sll $0, $0, 0
bgtz $4, TAG107
TAG107:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG108
mthi $4
TAG108:
mtlo $4
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
TAG109:
sw $3, 0($3)
bne $3, $3, TAG110
mthi $3
blez $3, TAG110
TAG110:
lui $1, 7
andi $1, $1, 1
multu $1, $3
lui $3, 13
TAG111:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG112
mflo $3
TAG112:
mthi $3
bne $3, $3, TAG113
mthi $3
bltz $3, TAG113
TAG113:
lui $4, 15
subu $1, $4, $4
bgez $1, TAG114
sll $0, $0, 0
TAG114:
sub $2, $1, $1
lbu $4, 0($1)
multu $2, $1
beq $1, $2, TAG115
TAG115:
lbu $3, 0($4)
sra $3, $3, 6
sb $3, 0($3)
sll $3, $3, 9
TAG116:
addi $1, $3, 0
lui $1, 14
sll $0, $0, 0
blez $1, TAG117
TAG117:
mult $4, $4
lui $4, 2
addiu $1, $4, 9
sll $0, $0, 0
TAG118:
mfhi $2
mtlo $4
mthi $4
subu $3, $2, $4
TAG119:
addu $3, $3, $3
mtlo $3
mult $3, $3
mtlo $3
TAG120:
mfhi $3
beq $3, $3, TAG121
lb $4, 0($3)
bgtz $3, TAG121
TAG121:
multu $4, $4
sh $4, 0($4)
nor $3, $4, $4
lui $4, 2
TAG122:
lui $2, 9
lui $1, 1
addiu $3, $2, 14
addiu $4, $2, 14
TAG123:
sltu $4, $4, $4
mflo $4
sw $4, -256($4)
mflo $4
TAG124:
or $3, $4, $4
beq $3, $3, TAG125
multu $4, $3
addi $4, $4, 0
TAG125:
mflo $2
mtlo $2
subu $1, $4, $4
bltz $4, TAG126
TAG126:
sb $1, 0($1)
lhu $4, 0($1)
beq $1, $1, TAG127
subu $4, $4, $4
TAG127:
sw $4, 0($4)
srl $1, $4, 3
multu $1, $1
bgez $4, TAG128
TAG128:
lui $2, 11
mult $1, $1
mfhi $3
beq $2, $2, TAG129
TAG129:
lui $1, 9
divu $1, $1
lbu $4, 0($3)
lui $2, 14
TAG130:
sll $0, $0, 0
bne $2, $2, TAG131
lui $1, 7
lui $3, 6
TAG131:
multu $3, $3
sll $0, $0, 0
bne $2, $2, TAG132
nor $3, $2, $2
TAG132:
sll $0, $0, 0
mtlo $3
mthi $3
subu $4, $3, $3
TAG133:
sub $4, $4, $4
sh $4, 0($4)
sltiu $1, $4, 8
multu $1, $4
TAG134:
mtlo $1
bltz $1, TAG135
multu $1, $1
bltz $1, TAG135
TAG135:
mthi $1
divu $1, $1
mfhi $3
addu $4, $1, $1
TAG136:
sllv $4, $4, $4
bltz $4, TAG137
lbu $4, 0($4)
mflo $2
TAG137:
sltiu $2, $2, 4
mtlo $2
bltz $2, TAG138
mthi $2
TAG138:
lui $3, 2
bltz $3, TAG139
mflo $1
srl $2, $3, 6
TAG139:
sb $2, -2048($2)
lui $4, 9
sll $0, $0, 0
mtlo $1
TAG140:
xori $4, $1, 9
addiu $1, $1, 10
bne $4, $1, TAG141
sh $4, 0($4)
TAG141:
mult $1, $1
mthi $1
mtlo $1
mthi $1
TAG142:
sb $1, 0($1)
multu $1, $1
lui $1, 4
subu $4, $1, $1
TAG143:
xor $4, $4, $4
lui $2, 3
or $2, $4, $4
lui $2, 12
TAG144:
sll $0, $0, 0
sll $0, $0, 0
slti $1, $2, 8
mtlo $1
TAG145:
sb $1, 0($1)
bgez $1, TAG146
sh $1, 0($1)
mtlo $1
TAG146:
sw $1, 0($1)
bgez $1, TAG147
sllv $1, $1, $1
bltz $1, TAG147
TAG147:
lui $2, 2
sb $2, 0($1)
sll $0, $0, 0
lui $3, 1
TAG148:
blez $3, TAG149
sll $0, $0, 0
lbu $2, 0($4)
multu $2, $4
TAG149:
bne $2, $2, TAG150
xor $4, $2, $2
add $4, $2, $4
lhu $1, 0($4)
TAG150:
sb $1, 0($1)
sh $1, 0($1)
blez $1, TAG151
mult $1, $1
TAG151:
bgez $1, TAG152
sw $1, 0($1)
bltz $1, TAG152
divu $1, $1
TAG152:
sh $1, 0($1)
bgtz $1, TAG153
mult $1, $1
sb $1, 0($1)
TAG153:
beq $1, $1, TAG154
slti $4, $1, 9
mfhi $4
mtlo $1
TAG154:
blez $4, TAG155
mult $4, $4
lb $4, 0($4)
mtlo $4
TAG155:
mtlo $4
bgtz $4, TAG156
sltiu $1, $4, 9
lui $4, 3
TAG156:
andi $1, $4, 1
bgez $4, TAG157
sh $4, 0($1)
ori $4, $1, 2
TAG157:
sll $0, $0, 0
sll $0, $0, 0
lbu $2, 0($1)
lw $4, 0($1)
TAG158:
sllv $1, $4, $4
bgtz $1, TAG159
lui $3, 4
div $1, $3
TAG159:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
mfhi $3
TAG160:
bltz $3, TAG161
mflo $1
mthi $3
addi $1, $1, 5
TAG161:
mtlo $1
blez $1, TAG162
lb $2, 0($1)
mthi $2
TAG162:
srav $1, $2, $2
mthi $2
mthi $1
lbu $3, 0($2)
TAG163:
bltz $3, TAG164
mflo $1
mfhi $4
beq $1, $1, TAG164
TAG164:
lw $3, 0($4)
sltiu $4, $4, 8
srlv $2, $3, $3
sb $2, 0($4)
TAG165:
sub $1, $2, $2
bne $1, $2, TAG166
lb $1, 0($1)
lui $2, 0
TAG166:
mthi $2
add $2, $2, $2
multu $2, $2
sb $2, 0($2)
TAG167:
lhu $2, 0($2)
mfhi $1
sra $2, $2, 8
multu $1, $2
TAG168:
srlv $3, $2, $2
mtlo $3
bltz $2, TAG169
mtlo $3
TAG169:
sb $3, 0($3)
mtlo $3
mflo $1
sll $1, $1, 12
TAG170:
multu $1, $1
lh $3, 0($1)
mult $1, $1
bgtz $1, TAG171
TAG171:
mthi $3
blez $3, TAG172
mtlo $3
addu $1, $3, $3
TAG172:
sh $1, 0($1)
lhu $2, 0($1)
nor $1, $2, $2
blez $1, TAG173
TAG173:
mtlo $1
sltu $4, $1, $1
lw $4, 0($4)
nor $1, $1, $4
TAG174:
lui $4, 8
bgtz $1, TAG175
addi $4, $1, 5
beq $4, $4, TAG175
TAG175:
div $4, $4
blez $4, TAG176
multu $4, $4
blez $4, TAG176
TAG176:
sb $4, 0($4)
subu $2, $4, $4
lui $1, 1
lbu $4, 0($4)
TAG177:
divu $4, $4
bgtz $4, TAG178
andi $4, $4, 11
sh $4, 0($4)
TAG178:
mthi $4
ori $2, $4, 15
mflo $1
lui $2, 1
TAG179:
lui $1, 8
subu $2, $1, $2
mflo $3
blez $3, TAG180
TAG180:
mfhi $2
bgtz $3, TAG181
lb $1, 0($2)
mtlo $2
TAG181:
bgez $1, TAG182
sra $3, $1, 12
lw $3, 0($3)
addi $4, $3, 14
TAG182:
lui $3, 13
mfhi $3
mflo $3
mflo $2
TAG183:
multu $2, $2
bgtz $2, TAG184
subu $3, $2, $2
bne $3, $2, TAG184
TAG184:
mult $3, $3
beq $3, $3, TAG185
multu $3, $3
ori $1, $3, 14
TAG185:
lui $4, 7
mfhi $1
mtlo $1
mthi $1
TAG186:
sltiu $4, $1, 10
lw $2, 0($1)
mtlo $2
lhu $2, 0($1)
TAG187:
mult $2, $2
mflo $3
mthi $2
sw $2, 0($3)
TAG188:
multu $3, $3
and $3, $3, $3
mult $3, $3
mtlo $3
TAG189:
mfhi $3
bltz $3, TAG190
sub $2, $3, $3
addu $2, $3, $3
TAG190:
lh $2, 0($2)
lhu $2, 0($2)
addiu $1, $2, 13
multu $2, $2
TAG191:
addu $1, $1, $1
xori $3, $1, 11
sra $3, $1, 7
sltu $1, $3, $1
TAG192:
mtlo $1
multu $1, $1
bne $1, $1, TAG193
subu $3, $1, $1
TAG193:
lui $4, 13
sll $0, $0, 0
mfhi $1
bne $3, $4, TAG194
TAG194:
sh $1, 0($1)
blez $1, TAG195
addi $4, $1, 7
sb $1, 0($1)
TAG195:
or $1, $4, $4
bgez $1, TAG196
sra $2, $4, 3
mtlo $1
TAG196:
lw $2, 0($2)
sb $2, 0($2)
mfhi $4
mthi $4
TAG197:
lui $1, 14
srl $1, $1, 6
bltz $1, TAG198
lui $2, 4
TAG198:
divu $2, $2
subu $1, $2, $2
bne $1, $1, TAG199
sltiu $3, $2, 13
TAG199:
sll $4, $3, 2
beq $3, $3, TAG200
sh $3, 0($3)
xor $4, $3, $4
TAG200:
addi $4, $4, 7
mult $4, $4
mtlo $4
mfhi $4
TAG201:
mflo $2
mflo $2
blez $4, TAG202
multu $2, $4
TAG202:
lb $2, 0($2)
beq $2, $2, TAG203
mtlo $2
mult $2, $2
TAG203:
mthi $2
mult $2, $2
bgtz $2, TAG204
mult $2, $2
TAG204:
lui $3, 11
slti $3, $2, 2
addiu $2, $3, 6
mtlo $2
TAG205:
xori $4, $2, 11
xori $4, $2, 9
srlv $2, $4, $4
lbu $3, 0($4)
TAG206:
add $2, $3, $3
sw $3, 0($2)
bltz $3, TAG207
lb $3, 0($2)
TAG207:
sw $3, 0($3)
multu $3, $3
lui $1, 0
sra $4, $1, 7
TAG208:
blez $4, TAG209
mflo $1
bltz $4, TAG209
lhu $1, 0($4)
TAG209:
bne $1, $1, TAG210
lui $4, 2
mflo $3
mflo $1
TAG210:
sw $1, 0($1)
beq $1, $1, TAG211
multu $1, $1
sh $1, 0($1)
TAG211:
sw $1, 0($1)
lui $2, 14
sll $0, $0, 0
blez $2, TAG212
TAG212:
mfhi $1
bne $2, $1, TAG213
sltu $4, $1, $2
sh $4, 0($4)
TAG213:
div $4, $4
mflo $2
bne $4, $2, TAG214
mfhi $4
TAG214:
mtlo $4
multu $4, $4
blez $4, TAG215
mflo $2
TAG215:
lui $4, 10
sll $0, $0, 0
lui $1, 4
lui $1, 14
TAG216:
sllv $2, $1, $1
mtlo $2
lui $1, 4
sra $3, $1, 15
TAG217:
mtlo $3
mfhi $3
slt $1, $3, $3
lbu $4, 0($3)
TAG218:
sh $4, 0($4)
lui $3, 1
mtlo $3
sll $0, $0, 0
TAG219:
mfhi $2
multu $2, $2
mthi $3
bne $3, $2, TAG220
TAG220:
mult $2, $2
bne $2, $2, TAG221
lbu $2, 0($2)
xori $4, $2, 4
TAG221:
mthi $4
mult $4, $4
lui $2, 15
sb $4, 0($4)
TAG222:
mflo $1
multu $1, $1
slt $2, $2, $2
mflo $4
TAG223:
sltiu $4, $4, 14
multu $4, $4
lui $4, 11
mfhi $3
TAG224:
beq $3, $3, TAG225
lhu $4, 0($3)
mult $3, $4
blez $4, TAG225
TAG225:
mtlo $4
sll $2, $4, 9
ori $3, $2, 3
beq $4, $3, TAG226
TAG226:
sb $3, 0($3)
bltz $3, TAG227
mthi $3
sb $3, 0($3)
TAG227:
lb $2, 0($3)
bltz $2, TAG228
addiu $4, $3, 11
sb $4, 0($2)
TAG228:
bne $4, $4, TAG229
mfhi $4
xor $2, $4, $4
lui $4, 12
TAG229:
mtlo $4
sll $0, $0, 0
xor $3, $4, $4
mult $3, $2
TAG230:
lui $1, 7
bgez $3, TAG231
sll $0, $0, 0
divu $1, $3
TAG231:
and $1, $1, $1
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
TAG232:
addiu $2, $2, 7
mflo $3
sb $2, 0($2)
sltiu $1, $2, 2
TAG233:
blez $1, TAG234
lui $3, 6
beq $3, $3, TAG234
lw $1, 0($3)
TAG234:
ori $3, $1, 12
slt $2, $3, $1
beq $3, $1, TAG235
lh $4, 0($2)
TAG235:
lui $3, 9
sll $0, $0, 0
lb $1, 0($4)
lui $3, 4
TAG236:
mthi $3
xor $2, $3, $3
bgez $3, TAG237
mfhi $3
TAG237:
bgez $3, TAG238
sra $1, $3, 5
blez $3, TAG238
addu $2, $1, $3
TAG238:
sb $2, 0($2)
mfhi $1
mthi $2
sb $2, 0($2)
TAG239:
addiu $1, $1, 3
bne $1, $1, TAG240
mtlo $1
and $1, $1, $1
TAG240:
sll $0, $0, 0
blez $2, TAG241
sh $2, 0($2)
sb $1, 0($1)
TAG241:
bgez $2, TAG242
lhu $4, 0($2)
lbu $1, 0($4)
mtlo $2
TAG242:
bltz $1, TAG243
lui $4, 4
mfhi $1
lui $2, 9
TAG243:
lui $4, 8
mflo $4
or $1, $4, $2
sltiu $4, $1, 13
TAG244:
lh $4, 0($4)
sh $4, 0($4)
mfhi $3
bgez $4, TAG245
TAG245:
lui $4, 9
sll $0, $0, 0
mthi $3
bne $4, $3, TAG246
TAG246:
mfhi $4
sll $0, $0, 0
beq $1, $4, TAG247
lui $2, 3
TAG247:
subu $2, $2, $2
ori $1, $2, 10
lui $3, 5
and $2, $2, $3
TAG248:
mult $2, $2
sh $2, 0($2)
bne $2, $2, TAG249
sh $2, 0($2)
TAG249:
mfhi $4
nor $3, $2, $4
lbu $4, 1($3)
sw $4, 1($3)
TAG250:
mult $4, $4
bgtz $4, TAG251
mthi $4
multu $4, $4
TAG251:
lui $1, 9
sra $1, $1, 5
sh $4, 0($4)
sh $4, -18432($1)
TAG252:
mult $1, $1
mflo $1
mflo $1
multu $1, $1
TAG253:
nor $2, $1, $1
slti $1, $1, 7
mflo $4
mfhi $3
TAG254:
andi $1, $3, 2
sll $0, $0, 0
lui $2, 2
mult $3, $2
TAG255:
mfhi $1
bne $2, $2, TAG256
sll $0, $0, 0
sll $0, $0, 0
TAG256:
addiu $1, $1, 3
divu $1, $1
div $1, $1
mfhi $2
TAG257:
lh $1, 0($2)
mfhi $2
lui $2, 10
mthi $1
TAG258:
xori $1, $2, 14
beq $1, $1, TAG259
sll $0, $0, 0
bne $2, $3, TAG259
TAG259:
sll $0, $0, 0
sll $1, $3, 5
lui $4, 4
multu $3, $4
TAG260:
sll $0, $0, 0
mthi $4
mthi $4
bltz $4, TAG261
TAG261:
sll $0, $0, 0
ori $3, $2, 4
lui $2, 7
andi $2, $2, 4
TAG262:
multu $2, $2
multu $2, $2
lh $2, 0($2)
srlv $4, $2, $2
TAG263:
lb $1, 0($4)
sh $1, 0($1)
lui $4, 4
sll $0, $0, 0
TAG264:
mflo $3
bgez $3, TAG265
lh $2, 0($3)
beq $2, $3, TAG265
TAG265:
mthi $2
srlv $2, $2, $2
lui $3, 3
lui $1, 2
TAG266:
divu $1, $1
lui $2, 14
mfhi $1
lui $1, 10
TAG267:
slti $3, $1, 3
addiu $2, $1, 10
beq $3, $1, TAG268
sb $1, 0($3)
TAG268:
beq $2, $2, TAG269
divu $2, $2
sltiu $1, $2, 6
bgtz $1, TAG269
TAG269:
mthi $1
div $1, $1
srlv $4, $1, $1
bgez $4, TAG270
TAG270:
sll $0, $0, 0
blez $4, TAG271
sll $0, $0, 0
bltz $4, TAG271
TAG271:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
slti $4, $4, 9
TAG272:
lui $3, 14
lhu $4, 0($4)
mthi $4
lhu $2, 0($4)
TAG273:
sw $2, 0($2)
mthi $2
srlv $3, $2, $2
addi $3, $2, 15
TAG274:
beq $3, $3, TAG275
mfhi $4
lh $4, 0($3)
lui $2, 2
TAG275:
lui $3, 9
mult $2, $3
mthi $2
sll $0, $0, 0
TAG276:
lui $4, 2
subu $3, $3, $4
mthi $3
and $1, $4, $3
TAG277:
sll $0, $0, 0
bne $1, $1, TAG278
mtlo $1
sll $0, $0, 0
TAG278:
lui $3, 13
mtlo $3
xor $1, $3, $1
sll $0, $0, 0
TAG279:
mflo $2
mfhi $3
nor $2, $3, $3
addiu $3, $2, 1
TAG280:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG281
sll $0, $0, 0
TAG281:
lui $2, 1
lui $2, 15
sll $0, $0, 0
sll $0, $0, 0
TAG282:
mflo $2
sll $0, $0, 0
sltu $3, $2, $2
lui $4, 2
TAG283:
sltiu $1, $4, 6
bgtz $4, TAG284
sb $1, 0($1)
srl $3, $1, 5
TAG284:
beq $3, $3, TAG285
sw $3, 0($3)
beq $3, $3, TAG285
mtlo $3
TAG285:
sll $2, $3, 2
sw $3, 0($2)
lw $4, 0($2)
sra $3, $4, 3
TAG286:
mthi $3
sh $3, 0($3)
lw $1, 0($3)
mfhi $4
TAG287:
blez $4, TAG288
lb $4, 0($4)
beq $4, $4, TAG288
sw $4, 0($4)
TAG288:
beq $4, $4, TAG289
sh $4, 0($4)
blez $4, TAG289
mthi $4
TAG289:
bne $4, $4, TAG290
lhu $3, 0($4)
lui $1, 1
bgtz $4, TAG290
TAG290:
mthi $1
lui $4, 2
lui $4, 8
blez $4, TAG291
TAG291:
xor $4, $4, $4
sb $4, 0($4)
bltz $4, TAG292
lh $4, 0($4)
TAG292:
lui $4, 3
mthi $4
bgtz $4, TAG293
sll $0, $0, 0
TAG293:
mthi $4
div $4, $4
multu $4, $4
beq $4, $4, TAG294
TAG294:
mthi $4
nor $4, $4, $4
mflo $4
andi $3, $4, 3
TAG295:
mthi $3
mtlo $3
mtlo $3
subu $2, $3, $3
TAG296:
mult $2, $2
beq $2, $2, TAG297
sb $2, 0($2)
lui $2, 10
TAG297:
mult $2, $2
sw $2, 0($2)
add $1, $2, $2
mflo $1
TAG298:
sw $1, 0($1)
sra $1, $1, 6
sh $1, 0($1)
mtlo $1
TAG299:
lw $1, 0($1)
blez $1, TAG300
lui $2, 8
lui $1, 14
TAG300:
mult $1, $1
blez $1, TAG301
mult $1, $1
lui $1, 11
TAG301:
mfhi $3
sw $1, 0($3)
andi $3, $1, 15
mfhi $3
TAG302:
addi $1, $3, 2
blez $3, TAG303
mthi $3
sra $2, $3, 9
TAG303:
mtlo $2
sllv $2, $2, $2
xori $3, $2, 8
bgez $2, TAG304
TAG304:
ori $3, $3, 5
mult $3, $3
beq $3, $3, TAG305
sltiu $1, $3, 6
TAG305:
multu $1, $1
and $2, $1, $1
beq $1, $2, TAG306
mult $1, $1
TAG306:
bne $2, $2, TAG307
mflo $1
sw $1, 0($1)
lui $1, 4
TAG307:
beq $1, $1, TAG308
sll $0, $0, 0
lw $3, 0($1)
lui $1, 15
TAG308:
sll $0, $0, 0
sll $4, $1, 5
bne $4, $1, TAG309
sllv $4, $4, $1
TAG309:
sll $2, $4, 11
sll $0, $0, 0
beq $3, $2, TAG310
sll $0, $0, 0
TAG310:
beq $2, $2, TAG311
slt $4, $2, $2
divu $2, $4
lbu $3, 0($4)
TAG311:
mflo $3
mflo $3
nor $1, $3, $3
sh $3, 0($3)
TAG312:
mult $1, $1
sh $1, 1($1)
bne $1, $1, TAG313
slti $4, $1, 10
TAG313:
sb $4, 0($4)
mult $4, $4
sltu $3, $4, $4
mtlo $3
TAG314:
mult $3, $3
bne $3, $3, TAG315
sllv $1, $3, $3
blez $3, TAG315
TAG315:
sh $1, 0($1)
bgez $1, TAG316
sltu $4, $1, $1
bne $4, $1, TAG316
TAG316:
lui $2, 12
lui $3, 13
sll $0, $0, 0
multu $4, $4
TAG317:
bgez $2, TAG318
mfhi $1
mflo $2
multu $2, $2
TAG318:
bne $2, $2, TAG319
sll $0, $0, 0
sll $0, $0, 0
bne $2, $1, TAG319
TAG319:
mult $1, $1
lb $2, 0($1)
lui $1, 0
mult $1, $2
TAG320:
bgtz $1, TAG321
mtlo $1
mfhi $1
lui $1, 5
TAG321:
blez $1, TAG322
div $1, $1
mfhi $4
xor $3, $4, $4
TAG322:
mfhi $1
bne $3, $1, TAG323
and $4, $1, $3
slti $2, $4, 0
TAG323:
bltz $2, TAG324
lui $4, 4
sll $2, $2, 12
mult $2, $2
TAG324:
sltiu $4, $2, 12
mult $4, $2
beq $2, $2, TAG325
ori $3, $4, 9
TAG325:
sb $3, 0($3)
lb $3, 0($3)
subu $1, $3, $3
lw $1, 0($1)
TAG326:
srav $4, $1, $1
sltiu $3, $1, 0
sw $1, 0($1)
blez $4, TAG327
TAG327:
lb $3, 0($3)
or $1, $3, $3
andi $4, $3, 10
beq $4, $1, TAG328
TAG328:
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG329
TAG329:
lui $1, 3
addiu $4, $1, 10
beq $4, $4, TAG330
or $2, $4, $4
TAG330:
sll $0, $0, 0
bgtz $1, TAG331
sll $0, $0, 0
lhu $2, 0($1)
TAG331:
sll $0, $0, 0
sll $0, $0, 0
sh $3, 0($3)
sll $0, $0, 0
TAG332:
addu $1, $3, $3
bltz $3, TAG333
sw $3, 0($1)
mfhi $1
TAG333:
mfhi $4
srl $1, $4, 9
bne $4, $4, TAG334
mthi $4
TAG334:
blez $1, TAG335
sw $1, 0($1)
lhu $2, 0($1)
bne $1, $2, TAG335
TAG335:
multu $2, $2
mflo $4
sll $0, $0, 0
bgez $4, TAG336
TAG336:
mthi $4
addu $2, $4, $4
addiu $1, $4, 10
slti $2, $1, 13
TAG337:
lui $3, 12
and $4, $3, $2
div $2, $3
srav $2, $2, $2
TAG338:
lb $2, 0($2)
mfhi $2
bne $2, $2, TAG339
mthi $2
TAG339:
lui $4, 3
bgtz $2, TAG340
lui $3, 8
multu $2, $4
TAG340:
and $4, $3, $3
mtlo $3
srlv $2, $3, $3
div $4, $2
TAG341:
ori $2, $2, 12
mtlo $2
sll $0, $0, 0
subu $3, $2, $2
TAG342:
mthi $3
bne $3, $3, TAG343
lui $2, 9
sll $3, $2, 4
TAG343:
mtlo $3
slti $1, $3, 3
sh $3, 0($1)
mtlo $1
TAG344:
lui $4, 10
lui $3, 14
beq $4, $3, TAG345
srlv $4, $1, $3
TAG345:
mult $4, $4
bgez $4, TAG346
lh $1, 0($4)
beq $4, $1, TAG346
TAG346:
multu $1, $1
bne $1, $1, TAG347
addi $4, $1, 10
and $1, $1, $1
TAG347:
mtlo $1
nor $3, $1, $1
sh $1, 0($1)
mflo $4
TAG348:
lhu $3, 0($4)
srl $4, $3, 7
blez $4, TAG349
multu $4, $4
TAG349:
sw $4, 0($4)
sb $4, 0($4)
mfhi $2
sh $4, 0($2)
TAG350:
sh $2, 0($2)
bgez $2, TAG351
lui $2, 5
sh $2, 0($2)
TAG351:
bgtz $2, TAG352
mult $2, $2
or $3, $2, $2
sb $2, 0($3)
TAG352:
bgez $3, TAG353
mtlo $3
lw $1, 0($3)
mthi $1
TAG353:
sltiu $4, $1, 14
sra $4, $4, 15
sra $1, $1, 9
beq $1, $1, TAG354
TAG354:
lui $2, 12
bne $2, $2, TAG355
subu $4, $2, $1
lui $3, 4
TAG355:
lui $4, 8
blez $3, TAG356
sll $0, $0, 0
nor $4, $4, $4
TAG356:
lui $3, 2
ori $4, $4, 10
bltz $4, TAG357
mtlo $4
TAG357:
sll $0, $0, 0
sll $0, $0, 0
srlv $1, $4, $2
lui $1, 4
TAG358:
lui $2, 12
beq $1, $2, TAG359
mflo $1
addu $4, $1, $2
TAG359:
lui $3, 6
mthi $3
sllv $2, $4, $4
lui $2, 4
TAG360:
multu $2, $2
sll $0, $0, 0
mflo $3
addiu $3, $2, 6
TAG361:
nor $3, $3, $3
addiu $4, $3, 3
mtlo $3
sll $0, $0, 0
TAG362:
mthi $4
bltz $4, TAG363
sll $2, $4, 3
sh $4, 0($2)
TAG363:
mtlo $2
mult $2, $2
bne $2, $2, TAG364
srl $3, $2, 9
TAG364:
srl $2, $3, 1
div $2, $2
or $2, $2, $2
mfhi $3
TAG365:
mthi $3
xori $3, $3, 5
divu $3, $3
srlv $3, $3, $3
TAG366:
nor $3, $3, $3
bgtz $3, TAG367
mult $3, $3
sll $2, $3, 11
TAG367:
subu $4, $2, $2
andi $3, $2, 5
mthi $3
mfhi $2
TAG368:
mfhi $3
bgtz $3, TAG369
mthi $2
mflo $4
TAG369:
beq $4, $4, TAG370
sll $1, $4, 12
sll $4, $4, 5
bne $4, $4, TAG370
TAG370:
div $4, $4
div $4, $4
mtlo $4
andi $1, $4, 7
TAG371:
sltu $3, $1, $1
mflo $4
lb $1, 0($1)
bltz $1, TAG372
TAG372:
lh $4, 0($1)
lb $2, 0($4)
sb $1, 0($1)
lw $4, 0($1)
TAG373:
srlv $3, $4, $4
lb $4, 0($3)
bgez $4, TAG374
mflo $3
TAG374:
mflo $1
lbu $1, 0($3)
srlv $1, $1, $1
bltz $1, TAG375
TAG375:
lui $4, 3
blez $4, TAG376
lui $3, 13
srlv $4, $1, $1
TAG376:
xor $4, $4, $4
srlv $1, $4, $4
mtlo $4
lbu $3, 0($4)
TAG377:
multu $3, $3
beq $3, $3, TAG378
mult $3, $3
mult $3, $3
TAG378:
bne $3, $3, TAG379
lbu $3, 0($3)
sh $3, 0($3)
lui $1, 10
TAG379:
mfhi $2
sll $0, $0, 0
bgtz $1, TAG380
mfhi $4
TAG380:
sb $4, 0($4)
mult $4, $4
sra $4, $4, 4
beq $4, $4, TAG381
TAG381:
sw $4, 0($4)
andi $1, $4, 5
mflo $3
xor $2, $3, $3
TAG382:
lui $1, 5
blez $2, TAG383
sll $0, $0, 0
bltz $1, TAG383
TAG383:
xori $4, $1, 9
mult $4, $4
div $4, $4
mthi $4
TAG384:
sllv $2, $4, $4
or $4, $4, $4
sll $0, $0, 0
nor $1, $4, $2
TAG385:
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG386
mult $1, $1
TAG386:
beq $1, $1, TAG387
sll $0, $0, 0
blez $1, TAG387
lbu $3, 0($3)
TAG387:
multu $3, $3
beq $3, $3, TAG388
lui $4, 0
bne $3, $4, TAG388
TAG388:
lui $3, 10
mfhi $4
divu $4, $3
lui $1, 15
TAG389:
xor $4, $1, $1
multu $1, $4
mflo $2
beq $4, $2, TAG390
TAG390:
sll $4, $2, 12
blez $4, TAG391
mthi $4
addiu $2, $4, 6
TAG391:
subu $2, $2, $2
bne $2, $2, TAG392
or $2, $2, $2
lui $2, 1
TAG392:
bgtz $2, TAG393
sll $0, $0, 0
mthi $2
lui $1, 3
TAG393:
div $1, $1
subu $4, $1, $1
bne $4, $4, TAG394
addi $2, $4, 0
TAG394:
multu $2, $2
mfhi $3
bgtz $3, TAG395
multu $2, $3
TAG395:
lb $2, 0($3)
sw $3, 0($2)
mfhi $1
lbu $1, 0($3)
TAG396:
mtlo $1
lui $1, 14
xor $3, $1, $1
bgtz $1, TAG397
TAG397:
multu $3, $3
slt $4, $3, $3
sh $3, 0($3)
lbu $4, 0($3)
TAG398:
mtlo $4
bltz $4, TAG399
mfhi $1
mthi $4
TAG399:
mtlo $1
bne $1, $1, TAG400
nor $4, $1, $1
mtlo $1
TAG400:
sb $4, 1($4)
srl $4, $4, 14
mflo $1
lui $4, 5
TAG401:
sll $0, $0, 0
slti $3, $4, 3
mtlo $3
sll $0, $0, 0
TAG402:
sh $2, 0($2)
andi $1, $2, 6
srav $3, $2, $1
mfhi $1
TAG403:
blez $1, TAG404
srav $4, $1, $1
addu $3, $1, $1
andi $1, $3, 9
TAG404:
mtlo $1
mflo $3
beq $3, $3, TAG405
lw $1, 0($1)
TAG405:
blez $1, TAG406
addiu $1, $1, 14
mtlo $1
bgez $1, TAG406
TAG406:
lbu $4, 0($1)
sw $4, 0($4)
multu $1, $4
mthi $4
TAG407:
lui $2, 10
bgtz $4, TAG408
mtlo $4
bgtz $4, TAG408
TAG408:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 10
addu $3, $2, $4
TAG409:
sll $0, $0, 0
sll $4, $3, 2
addiu $2, $4, 14
sll $0, $0, 0
TAG410:
or $1, $2, $2
xori $4, $1, 13
bgez $1, TAG411
sll $0, $0, 0
TAG411:
mthi $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG412:
blez $1, TAG413
nor $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG413:
nor $2, $1, $1
blez $2, TAG414
sll $0, $0, 0
mtlo $2
TAG414:
nor $1, $2, $2
mfhi $4
mtlo $2
sll $0, $0, 0
TAG415:
mthi $3
mfhi $4
addu $2, $3, $3
xori $3, $4, 10
TAG416:
bne $3, $3, TAG417
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG417:
blez $3, TAG418
mult $3, $3
lui $1, 6
mtlo $3
TAG418:
sll $0, $0, 0
mtlo $1
mthi $1
mtlo $1
TAG419:
sll $0, $0, 0
beq $1, $1, TAG420
nor $2, $1, $1
mthi $2
TAG420:
mthi $2
sll $0, $0, 0
lui $3, 4
bne $3, $3, TAG421
TAG421:
sll $0, $0, 0
mthi $3
srav $1, $3, $3
sll $0, $0, 0
TAG422:
sll $0, $0, 0
mult $1, $1
div $1, $1
bgtz $1, TAG423
TAG423:
srl $3, $1, 7
sh $3, -2048($3)
sll $0, $0, 0
mult $3, $1
TAG424:
mult $3, $3
srav $4, $3, $3
divu $3, $3
lh $3, -2048($3)
TAG425:
ori $4, $3, 11
mtlo $4
sw $3, -2059($4)
and $1, $3, $3
TAG426:
andi $1, $1, 7
lui $1, 2
sll $0, $0, 0
mult $1, $1
TAG427:
mthi $1
bne $1, $1, TAG428
mult $1, $1
sll $0, $0, 0
TAG428:
multu $3, $3
lui $3, 15
mtlo $3
sll $0, $0, 0
TAG429:
sll $0, $0, 0
multu $3, $3
bltz $3, TAG430
slt $3, $3, $3
TAG430:
xori $3, $3, 11
mflo $3
multu $3, $3
add $2, $3, $3
TAG431:
xori $1, $2, 0
multu $1, $1
sra $1, $2, 14
mflo $1
TAG432:
lui $3, 13
lui $4, 9
bne $4, $3, TAG433
mthi $1
TAG433:
mflo $1
mthi $4
addu $4, $1, $1
sh $4, 0($1)
TAG434:
lui $2, 2
lui $3, 8
sll $0, $0, 0
nor $3, $4, $3
TAG435:
mflo $2
beq $2, $2, TAG436
sll $0, $0, 0
bgtz $2, TAG436
TAG436:
multu $2, $2
bne $2, $2, TAG437
slti $1, $2, 12
sb $1, 0($2)
TAG437:
mfhi $1
sll $1, $1, 3
multu $1, $1
lui $1, 5
TAG438:
sll $0, $0, 0
mfhi $1
lui $1, 11
andi $3, $1, 6
TAG439:
mult $3, $3
mfhi $2
mthi $2
slti $3, $2, 10
TAG440:
sb $3, 0($3)
ori $4, $3, 14
divu $4, $4
lui $3, 11
TAG441:
bgez $3, TAG442
sll $0, $0, 0
slti $3, $3, 6
mflo $4
TAG442:
lb $4, 0($4)
srlv $2, $4, $4
multu $2, $2
sltiu $3, $2, 9
TAG443:
slt $2, $3, $3
lui $1, 6
sll $0, $0, 0
srlv $3, $2, $3
TAG444:
sb $3, 0($3)
bne $3, $3, TAG445
srlv $4, $3, $3
bgez $4, TAG445
TAG445:
mthi $4
lw $4, 0($4)
mfhi $3
bne $4, $4, TAG446
TAG446:
sltu $2, $3, $3
sb $3, 0($2)
blez $2, TAG447
sh $2, 0($3)
TAG447:
bgez $2, TAG448
sh $2, 0($2)
mflo $4
andi $2, $4, 3
TAG448:
srav $4, $2, $2
sw $4, 0($2)
mult $2, $2
mtlo $4
TAG449:
lui $4, 7
sll $2, $4, 13
sll $0, $0, 0
lui $2, 11
TAG450:
sra $4, $2, 1
sra $2, $4, 2
mfhi $1
sll $3, $2, 10
TAG451:
divu $3, $3
multu $3, $3
sll $0, $0, 0
bne $3, $2, TAG452
TAG452:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG453:
beq $2, $2, TAG454
xor $2, $2, $2
addu $2, $2, $2
sw $2, 0($2)
TAG454:
subu $1, $2, $2
mflo $1
mthi $1
mtlo $1
TAG455:
sra $1, $1, 3
srlv $3, $1, $1
sw $1, 0($1)
mflo $4
TAG456:
lb $2, 0($4)
sb $2, 0($2)
nor $2, $2, $4
lhu $3, 2($2)
TAG457:
bgez $3, TAG458
lui $1, 1
lui $3, 10
lui $3, 0
TAG458:
blez $3, TAG459
lui $4, 11
lhu $1, 0($4)
bgtz $3, TAG459
TAG459:
addu $3, $1, $1
bltz $1, TAG460
sll $0, $0, 0
divu $1, $1
TAG460:
mfhi $3
mult $3, $3
mflo $4
beq $4, $3, TAG461
TAG461:
sb $4, 0($4)
bgtz $4, TAG462
sb $4, 0($4)
lui $4, 1
TAG462:
lui $2, 11
mthi $4
mfhi $4
multu $4, $2
TAG463:
srlv $2, $4, $4
mfhi $1
bltz $2, TAG464
mthi $1
TAG464:
bgez $1, TAG465
srl $3, $1, 1
lui $1, 14
srl $2, $3, 11
TAG465:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 0
sw $2, 0($1)
TAG466:
lui $3, 0
bgez $1, TAG467
sh $3, 0($1)
mfhi $4
TAG467:
slti $2, $4, 11
mfhi $2
or $2, $2, $2
div $2, $2
TAG468:
divu $2, $2
lui $4, 4
addiu $3, $2, 15
mflo $2
TAG469:
mflo $1
sltiu $3, $2, 2
lb $3, 0($2)
lbu $3, 0($1)
TAG470:
addu $3, $3, $3
mthi $3
lui $1, 4
srl $1, $3, 3
TAG471:
ori $2, $1, 5
multu $2, $1
bgtz $1, TAG472
mfhi $4
TAG472:
mult $4, $4
xor $4, $4, $4
mtlo $4
sltu $1, $4, $4
TAG473:
sh $1, 0($1)
lui $2, 2
sh $2, 0($1)
divu $2, $2
TAG474:
mfhi $1
mflo $1
bgtz $1, TAG475
sll $0, $0, 0
TAG475:
div $1, $1
sb $1, 0($1)
mtlo $1
mflo $3
TAG476:
sb $3, 0($3)
bltz $3, TAG477
mfhi $2
bgez $2, TAG477
TAG477:
lui $3, 0
mtlo $3
mtlo $2
lh $1, 0($3)
TAG478:
mtlo $1
sb $1, -256($1)
lui $2, 6
blez $1, TAG479
TAG479:
mfhi $1
mfhi $4
mult $4, $2
mtlo $2
TAG480:
mfhi $2
bgtz $4, TAG481
mthi $2
bne $4, $4, TAG481
TAG481:
mtlo $2
lui $3, 13
bgez $3, TAG482
mflo $3
TAG482:
mtlo $3
srlv $1, $3, $3
sub $2, $1, $3
mult $3, $3
TAG483:
add $2, $2, $2
sw $2, 0($2)
xor $1, $2, $2
bgtz $1, TAG484
TAG484:
mfhi $3
lhu $3, 0($1)
or $1, $1, $3
lui $4, 14
TAG485:
sll $0, $0, 0
mult $3, $4
sll $0, $0, 0
mfhi $2
TAG486:
mthi $2
sll $2, $2, 14
lui $3, 11
bgez $3, TAG487
TAG487:
xor $4, $3, $3
lui $1, 7
bne $4, $1, TAG488
multu $3, $4
TAG488:
mult $1, $1
mtlo $1
sll $0, $0, 0
bgtz $1, TAG489
TAG489:
srav $1, $1, $1
bne $1, $1, TAG490
slt $1, $1, $1
lui $3, 5
TAG490:
sll $0, $0, 0
xori $3, $3, 15
multu $3, $3
sll $0, $0, 0
TAG491:
sll $0, $0, 0
multu $3, $3
mfhi $1
sll $0, $0, 0
TAG492:
and $2, $1, $1
sb $1, 0($1)
mthi $1
sb $2, 0($1)
TAG493:
mult $2, $2
bgtz $2, TAG494
sb $2, 0($2)
sb $2, 0($2)
TAG494:
sb $2, 0($2)
sllv $3, $2, $2
bgez $3, TAG495
sll $2, $2, 5
TAG495:
mfhi $1
and $1, $1, $2
lui $2, 8
lui $3, 4
TAG496:
bltz $3, TAG497
mtlo $3
beq $3, $3, TAG497
lui $4, 15
TAG497:
lui $4, 3
mtlo $4
mult $4, $4
xori $1, $4, 15
TAG498:
mflo $2
divu $2, $1
sltiu $1, $2, 3
sltiu $1, $2, 8
TAG499:
sb $1, 0($1)
mflo $4
subu $2, $1, $4
divu $4, $2
TAG500:
divu $2, $2
sb $2, 0($2)
lui $1, 2
mfhi $1
TAG501:
lui $2, 9
bgtz $1, TAG502
sll $0, $0, 0
sll $0, $0, 0
TAG502:
lui $4, 1
mthi $4
mthi $4
lui $4, 15
TAG503:
mtlo $4
bgez $4, TAG504
addu $3, $4, $4
bne $4, $4, TAG504
TAG504:
lui $2, 7
mflo $4
mfhi $1
mfhi $3
TAG505:
lui $1, 2
and $3, $1, $3
sw $3, 0($3)
beq $3, $3, TAG506
TAG506:
lb $3, 0($3)
mflo $4
blez $4, TAG507
mflo $1
TAG507:
sll $0, $0, 0
divu $1, $1
lui $2, 6
beq $2, $2, TAG508
TAG508:
sll $0, $0, 0
addu $1, $2, $4
div $2, $1
sll $0, $0, 0
TAG509:
sll $0, $0, 0
lui $3, 3
multu $3, $3
slt $2, $2, $2
TAG510:
mflo $3
subu $3, $3, $3
sb $3, 0($3)
lui $2, 13
TAG511:
blez $2, TAG512
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG512:
sltu $4, $3, $3
mfhi $4
lbu $1, 0($3)
mult $4, $3
TAG513:
mflo $2
bltz $2, TAG514
lbu $4, 0($2)
multu $1, $1
TAG514:
multu $4, $4
beq $4, $4, TAG515
lui $3, 10
addu $1, $3, $4
TAG515:
mult $1, $1
mflo $2
sra $4, $1, 8
lui $2, 12
TAG516:
sll $0, $0, 0
mfhi $2
mult $4, $2
bgez $4, TAG517
TAG517:
andi $2, $2, 8
ori $1, $2, 5
divu $1, $1
addu $4, $2, $1
TAG518:
sb $4, 0($4)
lui $1, 0
xor $1, $1, $1
srav $2, $1, $1
TAG519:
bne $2, $2, TAG520
mtlo $2
beq $2, $2, TAG520
sltiu $1, $2, 5
TAG520:
beq $1, $1, TAG521
sb $1, 0($1)
lw $3, 0($1)
mflo $2
TAG521:
lui $4, 0
xor $1, $4, $4
srav $3, $4, $2
bgez $1, TAG522
TAG522:
lui $1, 3
lui $4, 11
blez $4, TAG523
lui $1, 1
TAG523:
bne $1, $1, TAG524
sll $0, $0, 0
slt $1, $1, $1
sltiu $3, $1, 13
TAG524:
mflo $2
mflo $3
mtlo $3
bne $2, $3, TAG525
TAG525:
srav $3, $3, $3
blez $3, TAG526
mtlo $3
div $3, $3
TAG526:
bgez $3, TAG527
mflo $1
blez $3, TAG527
sw $3, 0($3)
TAG527:
bgtz $1, TAG528
sw $1, 0($1)
mfhi $3
mfhi $4
TAG528:
mfhi $2
bgtz $2, TAG529
mflo $3
mtlo $2
TAG529:
mthi $3
lh $3, 0($3)
mtlo $3
sh $3, 0($3)
TAG530:
mfhi $3
mult $3, $3
mfhi $2
mtlo $3
TAG531:
mfhi $2
sh $2, 0($2)
lui $1, 0
lbu $3, 0($1)
TAG532:
mult $3, $3
lb $3, 0($3)
addu $3, $3, $3
sltiu $3, $3, 12
TAG533:
sb $3, 0($3)
subu $4, $3, $3
mflo $1
lb $2, 0($4)
TAG534:
and $2, $2, $2
lh $4, 0($2)
mthi $2
and $1, $4, $4
TAG535:
bne $1, $1, TAG536
lui $3, 6
mfhi $1
bne $3, $3, TAG536
TAG536:
sltu $2, $1, $1
srl $4, $1, 6
bne $1, $1, TAG537
mult $1, $1
TAG537:
mtlo $4
multu $4, $4
sw $4, 0($4)
mtlo $4
TAG538:
beq $4, $4, TAG539
sra $1, $4, 14
mfhi $1
mtlo $1
TAG539:
lui $4, 5
addiu $3, $4, 3
sra $1, $3, 9
blez $1, TAG540
TAG540:
lui $3, 5
xori $1, $3, 12
addu $1, $3, $1
mthi $1
TAG541:
lui $4, 10
slti $1, $1, 12
lhu $2, 0($1)
mult $4, $1
TAG542:
beq $2, $2, TAG543
sb $2, 0($2)
mtlo $2
addiu $2, $2, 13
TAG543:
lhu $1, 0($2)
bgtz $2, TAG544
mthi $2
beq $2, $1, TAG544
TAG544:
sh $1, 0($1)
mthi $1
mfhi $3
srl $3, $3, 10
TAG545:
mtlo $3
mthi $3
blez $3, TAG546
andi $2, $3, 0
TAG546:
nor $2, $2, $2
xori $4, $2, 5
lui $3, 13
lb $3, 1($2)
TAG547:
mult $3, $3
mthi $3
bgtz $3, TAG548
multu $3, $3
TAG548:
mflo $3
mult $3, $3
addiu $3, $3, 7
slti $4, $3, 8
TAG549:
lb $4, 0($4)
srl $3, $4, 15
multu $4, $4
bgez $4, TAG550
TAG550:
mflo $2
mfhi $3
multu $2, $3
multu $2, $3
TAG551:
blez $3, TAG552
addiu $2, $3, 4
sb $3, 0($3)
or $4, $2, $3
TAG552:
mflo $3
beq $3, $3, TAG553
lhu $2, 0($4)
beq $3, $4, TAG553
TAG553:
mult $2, $2
mthi $2
bne $2, $2, TAG554
andi $3, $2, 4
TAG554:
multu $3, $3
bgtz $3, TAG555
or $4, $3, $3
sh $3, 0($3)
TAG555:
addi $1, $4, 8
mflo $4
multu $1, $4
sub $1, $4, $4
TAG556:
mtlo $1
mflo $1
mult $1, $1
lui $1, 11
TAG557:
lui $2, 10
sllv $4, $2, $1
addiu $2, $2, 11
bgez $2, TAG558
TAG558:
lui $4, 15
sll $0, $0, 0
lui $1, 0
lui $1, 15
TAG559:
beq $1, $1, TAG560
addiu $2, $1, 15
lhu $1, 0($2)
sh $1, 0($1)
TAG560:
mtlo $1
bgez $1, TAG561
sll $0, $0, 0
sw $1, 0($1)
TAG561:
sh $3, 0($3)
bgez $3, TAG562
lhu $2, 0($3)
bne $2, $3, TAG562
TAG562:
mfhi $3
mtlo $3
and $1, $2, $2
multu $3, $2
TAG563:
lb $3, 0($1)
mult $3, $3
beq $3, $1, TAG564
addi $2, $3, 15
TAG564:
sb $2, 0($2)
mflo $3
sh $3, 0($3)
sb $3, 0($2)
TAG565:
addi $4, $3, 1
lh $2, 0($3)
lb $4, 0($3)
mthi $2
TAG566:
bgtz $4, TAG567
sw $4, 0($4)
mtlo $4
lh $2, 0($4)
TAG567:
mtlo $2
sltiu $2, $2, 0
bne $2, $2, TAG568
lui $1, 1
TAG568:
lui $3, 1
bgtz $3, TAG569
sll $0, $0, 0
sw $1, 0($3)
TAG569:
lui $3, 15
bgtz $3, TAG570
srav $4, $3, $3
sltiu $3, $4, 0
TAG570:
sll $0, $0, 0
xori $3, $3, 8
multu $3, $3
sll $0, $0, 0
TAG571:
srlv $1, $2, $2
sw $2, 0($2)
lbu $3, 0($1)
mfhi $3
TAG572:
xori $1, $3, 2
lw $4, -225($3)
sll $1, $1, 4
and $1, $1, $4
TAG573:
mthi $1
lh $3, 0($1)
nor $2, $1, $1
mthi $3
TAG574:
ori $2, $2, 8
mthi $2
multu $2, $2
mtlo $2
TAG575:
addiu $2, $2, 6
sb $2, 0($2)
mult $2, $2
slti $4, $2, 1
TAG576:
bgtz $4, TAG577
and $2, $4, $4
bgez $2, TAG577
mthi $4
TAG577:
lh $1, 0($2)
sub $1, $2, $2
mult $1, $1
mfhi $1
TAG578:
bltz $1, TAG579
sw $1, 0($1)
lbu $4, 0($1)
sub $2, $1, $4
TAG579:
mtlo $2
bgtz $2, TAG580
mtlo $2
sra $2, $2, 1
TAG580:
mult $2, $2
lh $1, 0($2)
mtlo $1
mult $1, $1
TAG581:
mult $1, $1
mthi $1
mult $1, $1
addi $3, $1, 13
TAG582:
sb $3, 0($3)
bne $3, $3, TAG583
lbu $3, 0($3)
mtlo $3
TAG583:
bne $3, $3, TAG584
mflo $3
bgtz $3, TAG584
lb $4, 0($3)
TAG584:
lui $4, 12
mult $4, $4
mflo $1
sll $0, $0, 0
TAG585:
bne $1, $1, TAG586
mthi $1
mtlo $1
multu $1, $1
TAG586:
sh $1, 0($1)
sh $1, 0($1)
srl $1, $1, 15
sh $1, 0($1)
TAG587:
sh $1, 0($1)
mult $1, $1
lui $4, 7
lui $1, 1
TAG588:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
sltiu $4, $1, 11
TAG589:
lb $3, 0($4)
mthi $3
lh $1, 0($3)
addu $1, $3, $4
TAG590:
mthi $1
multu $1, $1
mfhi $4
and $3, $1, $1
TAG591:
sll $4, $3, 10
addi $1, $3, 15
blez $4, TAG592
andi $3, $4, 11
TAG592:
mtlo $3
lui $3, 6
bne $3, $3, TAG593
lui $3, 10
TAG593:
sllv $3, $3, $3
divu $3, $3
bne $3, $3, TAG594
mthi $3
TAG594:
sll $0, $0, 0
mthi $3
sltiu $2, $3, 2
sll $0, $0, 0
TAG595:
mult $2, $2
mthi $2
mthi $2
lui $2, 4
TAG596:
lui $1, 8
lui $2, 4
sll $0, $0, 0
beq $3, $2, TAG597
TAG597:
sra $4, $3, 13
slt $4, $3, $4
mtlo $3
bne $4, $4, TAG598
TAG598:
mult $4, $4
bgez $4, TAG599
multu $4, $4
bgtz $4, TAG599
TAG599:
xori $4, $4, 4
multu $4, $4
mtlo $4
sb $4, 0($4)
TAG600:
bne $4, $4, TAG601
sltu $3, $4, $4
sra $3, $3, 13
lui $4, 4
TAG601:
lui $1, 4
srlv $3, $4, $1
mflo $1
beq $1, $4, TAG602
TAG602:
mthi $1
bgez $1, TAG603
mthi $1
lh $3, 0($1)
TAG603:
lui $3, 12
mthi $3
mflo $3
bltz $3, TAG604
TAG604:
lhu $2, 0($3)
mfhi $3
bgez $2, TAG605
mthi $3
TAG605:
or $2, $3, $3
xor $4, $2, $3
srl $2, $4, 15
mthi $2
TAG606:
bltz $2, TAG607
lui $3, 9
sll $0, $0, 0
mtlo $3
TAG607:
sra $2, $3, 11
andi $2, $2, 4
bne $2, $2, TAG608
mflo $3
TAG608:
sll $0, $0, 0
mtlo $3
mthi $3
srav $2, $3, $3
TAG609:
mthi $2
ori $4, $2, 13
mfhi $3
sll $0, $0, 0
TAG610:
div $2, $2
sll $0, $0, 0
bne $2, $4, TAG611
ori $3, $4, 14
TAG611:
mtlo $3
div $3, $3
addu $1, $3, $3
sltiu $4, $1, 9
TAG612:
sw $4, 0($4)
multu $4, $4
beq $4, $4, TAG613
mtlo $4
TAG613:
mflo $1
bgez $4, TAG614
lw $4, 0($4)
sh $1, 0($4)
TAG614:
addu $1, $4, $4
lb $2, 0($1)
mtlo $4
lb $3, 0($4)
TAG615:
lbu $4, 0($3)
blez $3, TAG616
sb $4, 0($4)
lui $4, 7
TAG616:
lui $3, 12
lui $1, 8
mthi $4
sll $0, $0, 0
TAG617:
bltz $1, TAG618
sll $0, $0, 0
sll $0, $0, 0
slt $4, $1, $1
TAG618:
mtlo $4
sw $4, 0($4)
bgez $4, TAG619
sll $4, $4, 4
TAG619:
mult $4, $4
mthi $4
bgez $4, TAG620
mtlo $4
TAG620:
mtlo $4
mfhi $1
lw $3, 0($1)
sltiu $1, $1, 5
TAG621:
blez $1, TAG622
lbu $3, 0($1)
addu $3, $3, $3
multu $3, $3
TAG622:
and $2, $3, $3
bltz $2, TAG623
lhu $3, 0($2)
bltz $3, TAG623
TAG623:
sra $4, $3, 13
xori $1, $3, 10
lui $3, 5
sb $3, 0($1)
TAG624:
mtlo $3
mflo $4
bgtz $4, TAG625
addu $2, $4, $3
TAG625:
mthi $2
sll $0, $0, 0
xor $2, $3, $2
mflo $1
TAG626:
lui $2, 15
or $1, $2, $1
mflo $3
mult $1, $2
TAG627:
div $3, $3
and $3, $3, $3
mtlo $3
sll $0, $0, 0
TAG628:
blez $3, TAG629
lui $2, 4
blez $2, TAG629
sll $0, $0, 0
TAG629:
lui $4, 1
beq $2, $4, TAG630
lui $2, 11
mthi $2
TAG630:
sll $0, $0, 0
blez $2, TAG631
mfhi $4
divu $1, $2
TAG631:
nor $4, $4, $4
mtlo $4
divu $4, $4
mfhi $3
TAG632:
xori $3, $3, 9
lui $4, 3
sb $3, 0($3)
sra $4, $4, 12
TAG633:
mflo $1
beq $1, $1, TAG634
mflo $3
blez $3, TAG634
TAG634:
subu $4, $3, $3
blez $3, TAG635
sb $4, 0($4)
mtlo $3
TAG635:
lui $4, 5
multu $4, $4
sll $0, $0, 0
lbu $2, 0($3)
TAG636:
mult $2, $2
multu $2, $2
mthi $2
mfhi $2
TAG637:
sh $2, 0($2)
mult $2, $2
lui $3, 4
mult $2, $3
TAG638:
mflo $4
lui $1, 6
bne $4, $3, TAG639
mtlo $1
TAG639:
bgez $1, TAG640
mfhi $2
mthi $2
mfhi $3
TAG640:
sltu $4, $3, $3
and $1, $3, $3
addi $2, $4, 7
sll $0, $0, 0
TAG641:
mult $2, $2
bgtz $2, TAG642
nor $2, $2, $2
lui $3, 9
TAG642:
bltz $3, TAG643
div $3, $3
srav $1, $3, $3
mflo $3
TAG643:
sb $3, 0($3)
lb $4, 0($3)
sb $3, 0($3)
bltz $4, TAG644
TAG644:
lui $1, 1
srl $3, $4, 14
lui $2, 2
sb $2, 0($4)
TAG645:
sll $0, $0, 0
mtlo $2
subu $3, $2, $2
sll $0, $0, 0
TAG646:
mfhi $4
srav $4, $4, $4
mthi $4
blez $4, TAG647
TAG647:
multu $4, $4
ori $4, $4, 10
addiu $1, $4, 8
mflo $1
TAG648:
mult $1, $1
lw $1, 0($1)
lh $1, 0($1)
subu $3, $1, $1
TAG649:
mflo $4
mtlo $4
mflo $3
sll $1, $4, 6
TAG650:
beq $1, $1, TAG651
mthi $1
sb $1, 0($1)
div $1, $1
TAG651:
lhu $3, 0($1)
sltu $2, $3, $1
mfhi $3
lui $2, 3
TAG652:
sll $0, $0, 0
mthi $1
mtlo $2
xor $1, $2, $1
TAG653:
multu $1, $1
sll $0, $0, 0
srlv $3, $4, $4
blez $4, TAG654
TAG654:
mflo $3
lui $3, 2
beq $3, $3, TAG655
mfhi $1
TAG655:
and $1, $1, $1
mthi $1
mthi $1
sb $1, 0($1)
TAG656:
sb $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
subu $4, $1, $1
TAG657:
lbu $2, 0($4)
multu $4, $4
lui $3, 3
multu $4, $2
TAG658:
beq $3, $3, TAG659
lui $2, 6
mfhi $1
mflo $1
TAG659:
lui $4, 7
mthi $1
mtlo $1
mthi $4
TAG660:
divu $4, $4
beq $4, $4, TAG661
mflo $4
mflo $1
TAG661:
lbu $2, 0($1)
lb $2, 0($1)
lb $1, 0($2)
bltz $1, TAG662
TAG662:
lui $3, 0
addu $2, $1, $1
lw $4, 0($3)
lh $2, 0($2)
TAG663:
lui $2, 0
beq $2, $2, TAG664
lw $1, 0($2)
bne $1, $1, TAG664
TAG664:
mult $1, $1
lb $2, 0($1)
sh $2, 0($1)
sb $2, 0($1)
TAG665:
srl $4, $2, 11
lbu $4, 0($2)
ori $2, $4, 2
sltu $1, $4, $2
TAG666:
div $1, $1
lui $4, 1
lui $3, 1
bltz $1, TAG667
TAG667:
addiu $1, $3, 11
ori $1, $1, 8
beq $1, $1, TAG668
sll $0, $0, 0
TAG668:
multu $1, $1
beq $1, $1, TAG669
srl $3, $1, 7
sra $4, $1, 8
TAG669:
lui $4, 9
mthi $4
lui $2, 0
divu $2, $4
TAG670:
mult $2, $2
bltz $2, TAG671
multu $2, $2
sh $2, 0($2)
TAG671:
lui $3, 0
mtlo $3
xor $4, $3, $3
beq $3, $3, TAG672
TAG672:
lui $2, 3
xori $1, $2, 15
sltu $4, $1, $4
bne $4, $4, TAG673
TAG673:
mfhi $3
mthi $3
nor $3, $4, $4
bgtz $4, TAG674
TAG674:
mfhi $1
sw $3, 0($1)
beq $1, $3, TAG675
lui $3, 15
TAG675:
bne $3, $3, TAG676
srlv $4, $3, $3
mfhi $1
sll $0, $0, 0
TAG676:
bne $2, $2, TAG677
sll $0, $0, 0
mtlo $2
mthi $2
TAG677:
bne $2, $2, TAG678
div $2, $2
bne $2, $2, TAG678
lui $1, 14
TAG678:
divu $1, $1
mthi $1
beq $1, $1, TAG679
lui $4, 11
TAG679:
lui $4, 2
beq $4, $4, TAG680
mflo $2
bgez $4, TAG680
TAG680:
sb $2, 0($2)
bne $2, $2, TAG681
mtlo $2
bgtz $2, TAG681
TAG681:
srlv $3, $2, $2
sb $2, 0($3)
mfhi $4
beq $4, $2, TAG682
TAG682:
sll $0, $0, 0
sll $2, $4, 13
bgez $4, TAG683
sll $0, $0, 0
TAG683:
blez $1, TAG684
multu $1, $1
sll $0, $0, 0
mfhi $1
TAG684:
div $1, $1
beq $1, $1, TAG685
lui $3, 10
andi $4, $3, 15
TAG685:
lui $4, 1
sll $0, $0, 0
beq $4, $4, TAG686
sll $0, $0, 0
TAG686:
srl $4, $2, 4
lui $3, 11
beq $2, $3, TAG687
sll $0, $0, 0
TAG687:
bgez $3, TAG688
nor $4, $3, $3
lb $1, 0($3)
lui $1, 10
TAG688:
bne $1, $1, TAG689
lui $1, 14
subu $3, $1, $1
bltz $1, TAG689
TAG689:
mfhi $4
bgez $4, TAG690
mflo $1
bne $3, $3, TAG690
TAG690:
div $1, $1
lui $1, 2
mthi $1
mflo $1
TAG691:
bne $1, $1, TAG692
mflo $1
mfhi $4
lui $2, 8
TAG692:
mthi $2
beq $2, $2, TAG693
lui $4, 9
mfhi $1
TAG693:
beq $1, $1, TAG694
lui $3, 2
multu $3, $1
multu $1, $1
TAG694:
ori $4, $3, 7
bltz $4, TAG695
mult $3, $3
sll $0, $0, 0
TAG695:
blez $4, TAG696
sll $0, $0, 0
mtlo $1
beq $4, $4, TAG696
TAG696:
ori $2, $1, 4
lbu $1, 0($1)
xori $3, $1, 11
mflo $3
TAG697:
bgtz $3, TAG698
lbu $2, 0($3)
bne $2, $3, TAG698
multu $3, $3
TAG698:
mtlo $2
sb $2, 0($2)
bne $2, $2, TAG699
sb $2, 0($2)
TAG699:
lui $3, 10
bgtz $3, TAG700
mfhi $4
bgez $2, TAG700
TAG700:
nor $4, $4, $4
mfhi $1
mflo $2
bne $1, $4, TAG701
TAG701:
mthi $2
blez $2, TAG702
or $3, $2, $2
beq $2, $3, TAG702
TAG702:
slt $1, $3, $3
lb $4, 0($3)
beq $1, $4, TAG703
div $4, $3
TAG703:
subu $2, $4, $4
mthi $4
multu $4, $2
lui $3, 11
TAG704:
bne $3, $3, TAG705
mfhi $2
divu $2, $3
divu $2, $3
TAG705:
sb $2, 0($2)
ori $1, $2, 4
subu $2, $2, $2
sw $2, 0($2)
TAG706:
sw $2, 0($2)
bltz $2, TAG707
sw $2, 0($2)
beq $2, $2, TAG707
TAG707:
xor $2, $2, $2
bne $2, $2, TAG708
sb $2, 0($2)
mthi $2
TAG708:
mult $2, $2
mthi $2
beq $2, $2, TAG709
xor $1, $2, $2
TAG709:
lui $1, 4
multu $1, $1
andi $1, $1, 6
bltz $1, TAG710
TAG710:
lui $1, 5
bgtz $1, TAG711
sll $0, $0, 0
mflo $1
TAG711:
mfhi $1
lui $4, 7
sra $4, $1, 15
sw $4, 0($1)
TAG712:
sh $4, 0($4)
beq $4, $4, TAG713
and $3, $4, $4
sltiu $3, $4, 14
TAG713:
mtlo $3
add $1, $3, $3
mflo $1
mfhi $3
TAG714:
srl $1, $3, 11
sra $3, $3, 4
lui $4, 11
bne $3, $1, TAG715
TAG715:
mfhi $1
and $1, $1, $4
bne $1, $1, TAG716
mult $1, $1
TAG716:
mthi $1
lui $4, 7
beq $4, $1, TAG717
sll $0, $0, 0
TAG717:
bgtz $3, TAG718
mfhi $2
div $3, $3
bgtz $2, TAG718
TAG718:
sltu $2, $2, $2
lb $2, 0($2)
lui $3, 4
sw $2, 0($2)
TAG719:
multu $3, $3
bgez $3, TAG720
sll $0, $0, 0
lui $1, 8
TAG720:
sb $1, 0($1)
sub $1, $1, $1
lui $3, 7
lui $2, 5
TAG721:
xori $4, $2, 0
mthi $2
lui $1, 11
andi $4, $4, 2
TAG722:
sw $4, 0($4)
bltz $4, TAG723
sll $4, $4, 5
sh $4, 0($4)
TAG723:
beq $4, $4, TAG724
lui $4, 5
addiu $1, $4, 5
mtlo $4
TAG724:
sll $4, $1, 8
addu $1, $4, $1
div $1, $1
lui $3, 12
TAG725:
mflo $2
mflo $4
mfhi $4
bgtz $2, TAG726
TAG726:
lui $2, 3
sra $1, $4, 13
multu $2, $2
mult $4, $1
TAG727:
beq $1, $1, TAG728
slt $1, $1, $1
bgtz $1, TAG728
mtlo $1
TAG728:
mthi $1
multu $1, $1
lui $1, 12
mflo $1
TAG729:
mthi $1
mflo $4
lbu $4, 0($1)
multu $4, $4
TAG730:
mfhi $1
lw $1, 0($1)
xori $1, $4, 3
srlv $2, $4, $1
TAG731:
addiu $1, $2, 10
mthi $2
addu $2, $2, $1
mthi $2
TAG732:
mthi $2
sh $2, 0($2)
addiu $3, $2, 12
lui $2, 13
TAG733:
sll $0, $0, 0
lbu $3, 0($1)
mflo $2
mtlo $1
TAG734:
mthi $2
ori $3, $2, 3
addi $2, $2, 1
lb $4, 0($2)
TAG735:
bgez $4, TAG736
sub $4, $4, $4
ori $4, $4, 4
sh $4, 0($4)
TAG736:
bne $4, $4, TAG737
srav $4, $4, $4
beq $4, $4, TAG737
mfhi $2
TAG737:
mtlo $2
lui $3, 5
beq $3, $3, TAG738
mflo $4
TAG738:
sh $4, 0($4)
xori $1, $4, 15
lbu $4, 0($4)
sub $2, $4, $4
TAG739:
mtlo $2
mtlo $2
sltiu $1, $2, 3
sw $2, 0($2)
TAG740:
div $1, $1
lb $2, 0($1)
mtlo $1
srl $2, $1, 1
TAG741:
nor $2, $2, $2
sltu $1, $2, $2
mflo $4
mthi $1
TAG742:
mtlo $4
sb $4, 0($4)
beq $4, $4, TAG743
lui $4, 1
TAG743:
bltz $4, TAG744
slti $2, $4, 2
bne $2, $4, TAG744
mtlo $4
TAG744:
mult $2, $2
bne $2, $2, TAG745
sw $2, 0($2)
lw $2, 0($2)
TAG745:
addiu $4, $2, 15
lui $2, 12
divu $2, $2
sll $0, $0, 0
TAG746:
mfhi $1
beq $2, $1, TAG747
lbu $1, 0($1)
blez $1, TAG747
TAG747:
mtlo $1
mfhi $3
bne $1, $3, TAG748
mult $1, $1
TAG748:
bne $3, $3, TAG749
lhu $1, 0($3)
mult $1, $3
sra $1, $3, 12
TAG749:
multu $1, $1
subu $2, $1, $1
blez $2, TAG750
slt $1, $2, $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop