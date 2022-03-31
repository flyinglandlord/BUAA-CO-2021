ori $1, $0, 15
ori $2, $0, 2
ori $3, $0, 6
ori $4, $0, 6
sw $3, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $2, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $2, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $4, 120($0)
sw $4, 124($0)
mtlo $2
addu $1, $2, $2
mult $2, $1
sw $1, 0($1)
TAG1:
lui $3, 13
beq $1, $3, TAG2
subu $1, $3, $1
lui $2, 1
TAG2:
beq $2, $2, TAG3
sll $0, $0, 0
lw $1, 0($2)
bgez $1, TAG3
TAG3:
lui $3, 3
sll $0, $0, 0
srl $4, $1, 6
sll $0, $0, 0
TAG4:
sll $0, $0, 0
lw $1, -13311($4)
bne $2, $1, TAG5
addiu $3, $2, 11
TAG5:
mtlo $3
blez $3, TAG6
mfhi $4
sh $3, 0($4)
TAG6:
mthi $4
mthi $4
nor $1, $4, $4
sll $3, $1, 9
TAG7:
divu $3, $3
xor $1, $3, $3
lbu $2, 512($3)
blez $2, TAG8
TAG8:
andi $4, $2, 13
blez $2, TAG9
lbu $4, 0($2)
mflo $4
TAG9:
mflo $3
sb $3, 0($3)
lbu $3, 0($3)
andi $2, $3, 4
TAG10:
slt $3, $2, $2
lui $2, 11
mfhi $1
sll $0, $0, 0
TAG11:
mfhi $1
sltu $3, $1, $1
bltz $1, TAG12
sw $3, 0($1)
TAG12:
or $2, $3, $3
mflo $4
bgez $2, TAG13
mflo $2
TAG13:
beq $2, $2, TAG14
lui $3, 12
srlv $4, $3, $3
mfhi $3
TAG14:
mfhi $2
beq $3, $2, TAG15
mthi $2
bne $2, $3, TAG15
TAG15:
lui $4, 2
lbu $1, 0($2)
sll $0, $0, 0
sh $2, 0($1)
TAG16:
addiu $2, $1, 14
lhu $3, 0($2)
sb $1, 0($2)
sb $1, 0($2)
TAG17:
sw $3, 0($3)
bne $3, $3, TAG18
sltiu $2, $3, 8
bne $3, $3, TAG18
TAG18:
sb $2, 0($2)
bne $2, $2, TAG19
mtlo $2
mult $2, $2
TAG19:
mflo $1
lb $2, 0($1)
srav $4, $2, $2
bgez $1, TAG20
TAG20:
mfhi $4
lui $1, 10
and $3, $4, $4
lui $3, 8
TAG21:
mtlo $3
mflo $4
blez $3, TAG22
div $3, $4
TAG22:
sll $0, $0, 0
multu $4, $2
bltz $4, TAG23
lbu $2, 0($2)
TAG23:
bgez $2, TAG24
lbu $3, 0($2)
subu $1, $2, $2
multu $1, $3
TAG24:
sll $0, $0, 0
addiu $4, $4, 4
div $4, $4
sltu $3, $4, $4
TAG25:
slt $2, $3, $3
lbu $3, 0($2)
mflo $2
lb $1, 0($2)
TAG26:
xor $4, $1, $1
mfhi $1
lbu $4, 0($1)
mfhi $4
TAG27:
sh $4, 0($4)
mthi $4
sb $4, 0($4)
sh $4, 0($4)
TAG28:
xor $3, $4, $4
slti $1, $4, 12
mult $3, $3
bltz $1, TAG29
TAG29:
mflo $1
mfhi $3
mtlo $1
lui $4, 8
TAG30:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
multu $3, $4
TAG31:
sh $3, 0($3)
mflo $4
addiu $2, $3, 1
mthi $2
TAG32:
bne $2, $2, TAG33
slti $3, $2, 11
xori $1, $2, 7
bgtz $2, TAG33
TAG33:
lh $4, 0($1)
lh $3, 0($4)
divu $1, $1
mtlo $4
TAG34:
addu $2, $3, $3
multu $2, $2
slti $4, $2, 13
mult $4, $3
TAG35:
div $4, $4
bgez $4, TAG36
lbu $4, 0($4)
lbu $1, 0($4)
TAG36:
sh $1, 0($1)
addiu $4, $1, 0
bgez $4, TAG37
mflo $1
TAG37:
mfhi $1
sra $4, $1, 9
sra $2, $1, 4
multu $2, $2
TAG38:
bgez $2, TAG39
lw $1, 0($2)
mult $1, $1
sb $2, 0($2)
TAG39:
lbu $3, 0($1)
lbu $4, 0($1)
mfhi $2
mflo $1
TAG40:
mthi $1
ori $4, $1, 11
lbu $4, 0($4)
lbu $1, 0($1)
TAG41:
slt $2, $1, $1
sw $1, 0($2)
bltz $1, TAG42
mthi $1
TAG42:
subu $1, $2, $2
sb $2, 0($1)
lui $1, 0
mfhi $2
TAG43:
mtlo $2
mflo $4
mtlo $4
multu $2, $2
TAG44:
srav $4, $4, $4
addiu $4, $4, 2
sb $4, 0($4)
sh $4, 0($4)
TAG45:
beq $4, $4, TAG46
mfhi $3
mthi $4
bgez $3, TAG46
TAG46:
multu $3, $3
ori $1, $3, 8
or $3, $3, $1
lui $3, 0
TAG47:
beq $3, $3, TAG48
mult $3, $3
sra $3, $3, 13
mfhi $4
TAG48:
or $4, $4, $4
bgez $4, TAG49
sll $3, $4, 13
mthi $4
TAG49:
mfhi $4
mfhi $1
srav $2, $3, $1
lw $1, -16384($2)
TAG50:
andi $4, $1, 13
slti $3, $4, 8
sll $2, $3, 0
div $4, $1
TAG51:
sltiu $2, $2, 10
sb $2, 0($2)
mthi $2
lbu $4, 0($2)
TAG52:
bne $4, $4, TAG53
mflo $2
mthi $2
sll $1, $2, 3
TAG53:
sh $1, 0($1)
mthi $1
xor $2, $1, $1
srl $3, $1, 2
TAG54:
or $3, $3, $3
mult $3, $3
lbu $3, 0($3)
multu $3, $3
TAG55:
mult $3, $3
mtlo $3
add $3, $3, $3
lh $3, 0($3)
TAG56:
mflo $1
slti $3, $1, 7
divu $3, $3
blez $1, TAG57
TAG57:
div $3, $3
and $2, $3, $3
mtlo $2
lb $1, 0($2)
TAG58:
lhu $2, 0($1)
mthi $1
bne $2, $1, TAG59
nor $2, $1, $1
TAG59:
andi $1, $2, 10
beq $1, $2, TAG60
mtlo $1
lui $3, 2
TAG60:
mtlo $3
bne $3, $3, TAG61
sllv $2, $3, $3
bne $2, $3, TAG61
TAG61:
mfhi $3
bgez $2, TAG62
mtlo $2
sll $4, $3, 9
TAG62:
lbu $2, 0($4)
mthi $4
bgez $2, TAG63
lbu $2, 0($4)
TAG63:
andi $4, $2, 5
beq $4, $2, TAG64
sltiu $2, $2, 5
lui $1, 13
TAG64:
lui $4, 5
divu $1, $1
bne $1, $4, TAG65
sll $0, $0, 0
TAG65:
mtlo $4
divu $4, $4
bne $4, $4, TAG66
div $4, $4
TAG66:
lui $1, 15
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG67:
bne $2, $2, TAG68
div $2, $2
bgtz $2, TAG68
lbu $2, 0($2)
TAG68:
sb $2, 0($2)
sh $2, 0($2)
bgtz $2, TAG69
multu $2, $2
TAG69:
sb $2, 0($2)
bne $2, $2, TAG70
lb $4, 0($2)
lb $1, 0($2)
TAG70:
bltz $1, TAG71
mthi $1
multu $1, $1
addiu $1, $1, 14
TAG71:
bne $1, $1, TAG72
mult $1, $1
mflo $2
sll $1, $1, 5
TAG72:
mfhi $2
divu $1, $1
beq $2, $1, TAG73
mfhi $4
TAG73:
lui $3, 7
lhu $1, 0($4)
mflo $4
addiu $1, $1, 13
TAG74:
mthi $1
and $3, $1, $1
addiu $2, $1, 0
lui $4, 7
TAG75:
beq $4, $4, TAG76
sll $0, $0, 0
addu $3, $4, $3
sb $3, 0($4)
TAG76:
bltz $3, TAG77
lui $3, 4
mtlo $3
sll $0, $0, 0
TAG77:
bne $4, $4, TAG78
srl $4, $4, 13
sb $4, 0($4)
bne $4, $4, TAG78
TAG78:
mtlo $4
sllv $2, $4, $4
subu $4, $4, $2
beq $4, $4, TAG79
TAG79:
sll $0, $0, 0
mtlo $4
mfhi $3
mfhi $1
TAG80:
mult $1, $1
mflo $3
bgtz $1, TAG81
mfhi $3
TAG81:
mthi $3
mult $3, $3
sra $4, $3, 6
mtlo $3
TAG82:
beq $4, $4, TAG83
lui $2, 0
lb $3, 0($2)
mult $2, $2
TAG83:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG84:
sub $2, $2, $2
mflo $3
sltiu $4, $2, 0
beq $2, $2, TAG85
TAG85:
mult $4, $4
sh $4, 0($4)
lui $3, 14
lui $1, 2
TAG86:
bltz $1, TAG87
sll $0, $0, 0
mult $4, $1
bgez $4, TAG87
TAG87:
lbu $3, 0($4)
sltu $2, $3, $3
mfhi $4
bltz $3, TAG88
TAG88:
mult $4, $4
lui $3, 15
lh $4, 0($4)
sll $2, $3, 11
TAG89:
blez $2, TAG90
srl $3, $2, 11
sll $0, $0, 0
divu $3, $2
TAG90:
srl $2, $2, 9
bgtz $2, TAG91
lui $1, 7
blez $2, TAG91
TAG91:
lui $2, 14
lui $3, 2
mtlo $2
sltiu $1, $3, 5
TAG92:
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG93
lui $4, 0
TAG93:
sb $4, 0($4)
mthi $4
sw $4, 0($4)
andi $2, $4, 8
TAG94:
bne $2, $2, TAG95
xori $2, $2, 12
blez $2, TAG95
lui $1, 10
TAG95:
sltu $3, $1, $1
lui $1, 8
lui $3, 10
addu $2, $3, $3
TAG96:
sltiu $1, $2, 7
sll $0, $0, 0
beq $1, $2, TAG97
srlv $2, $2, $2
TAG97:
beq $2, $2, TAG98
lui $3, 8
sra $4, $3, 0
addi $1, $3, 6
TAG98:
mtlo $1
mflo $4
mthi $4
slti $1, $1, 8
TAG99:
mflo $4
lh $4, 0($4)
lbu $2, 0($1)
lui $3, 10
TAG100:
addu $1, $3, $3
srav $3, $3, $3
mfhi $1
and $3, $1, $1
TAG101:
sll $4, $3, 7
multu $3, $4
mfhi $4
mthi $3
TAG102:
lb $1, 0($4)
bgez $1, TAG103
sh $4, 0($4)
lhu $3, 0($1)
TAG103:
lhu $4, 0($3)
beq $4, $3, TAG104
sb $4, 0($3)
lui $2, 11
TAG104:
beq $2, $2, TAG105
lw $2, 0($2)
sltu $2, $2, $2
mthi $2
TAG105:
nor $4, $2, $2
sltu $1, $2, $2
multu $4, $1
lb $4, 0($2)
TAG106:
bgez $4, TAG107
mfhi $2
mfhi $2
mthi $2
TAG107:
mult $2, $2
lh $2, 0($2)
mfhi $3
blez $2, TAG108
TAG108:
mflo $4
multu $4, $4
sw $3, 0($3)
bne $3, $4, TAG109
TAG109:
sw $4, 0($4)
mflo $1
lhu $2, 0($1)
mtlo $1
TAG110:
sw $2, 0($2)
multu $2, $2
lbu $4, 0($2)
bne $4, $4, TAG111
TAG111:
lw $2, 0($4)
sb $4, 0($2)
multu $2, $4
bltz $2, TAG112
TAG112:
mfhi $1
or $3, $1, $1
beq $1, $2, TAG113
lui $4, 9
TAG113:
bgtz $4, TAG114
mult $4, $4
lui $2, 11
div $2, $2
TAG114:
sllv $2, $2, $2
sltiu $1, $2, 3
bgtz $2, TAG115
lw $4, 0($2)
TAG115:
or $4, $4, $4
sh $4, 0($4)
srav $4, $4, $4
ori $3, $4, 8
TAG116:
lui $1, 7
div $3, $1
slt $2, $3, $3
bgez $3, TAG117
TAG117:
add $1, $2, $2
srl $4, $2, 5
multu $2, $2
bgtz $1, TAG118
TAG118:
mtlo $4
beq $4, $4, TAG119
sw $4, 0($4)
lhu $3, 0($4)
TAG119:
xor $3, $3, $3
lb $4, 0($3)
mtlo $3
lh $1, 0($4)
TAG120:
srav $3, $1, $1
sh $3, 0($3)
bne $1, $1, TAG121
mult $3, $1
TAG121:
xori $1, $3, 6
multu $3, $1
andi $4, $1, 14
mult $1, $4
TAG122:
slti $3, $4, 4
lui $1, 7
mthi $1
mthi $1
TAG123:
lui $4, 12
beq $1, $1, TAG124
mtlo $4
beq $4, $1, TAG124
TAG124:
and $2, $4, $4
div $4, $2
lui $1, 11
sll $0, $0, 0
TAG125:
mult $1, $1
andi $4, $1, 3
bltz $1, TAG126
slti $4, $1, 0
TAG126:
andi $1, $4, 15
mult $1, $1
lhu $3, 0($4)
multu $4, $1
TAG127:
sw $3, 0($3)
beq $3, $3, TAG128
sb $3, 0($3)
ori $1, $3, 12
TAG128:
lhu $3, 0($1)
lbu $1, 0($1)
sh $1, 0($3)
mflo $1
TAG129:
bgtz $1, TAG130
mfhi $3
addu $3, $3, $3
mult $3, $3
TAG130:
mthi $3
sra $2, $3, 11
bne $2, $3, TAG131
ori $4, $2, 6
TAG131:
lui $4, 12
mult $4, $4
sll $0, $0, 0
bltz $1, TAG132
TAG132:
lbu $3, 0($1)
bne $1, $3, TAG133
sb $1, 0($3)
bgez $1, TAG133
TAG133:
mult $3, $3
ori $3, $3, 10
lhu $2, 0($3)
mfhi $2
TAG134:
lw $3, 0($2)
lhu $4, 0($3)
bgtz $4, TAG135
mflo $3
TAG135:
bgtz $3, TAG136
xori $4, $3, 14
lb $1, 0($3)
lb $1, 0($4)
TAG136:
sb $1, 0($1)
lui $1, 10
nor $3, $1, $1
bgtz $1, TAG137
TAG137:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG138
TAG138:
srl $1, $1, 13
sltiu $3, $1, 15
lw $2, 0($1)
multu $3, $1
TAG139:
mfhi $4
mflo $1
sw $1, 0($1)
bne $2, $1, TAG140
TAG140:
mthi $1
sub $1, $1, $1
bgez $1, TAG141
sll $2, $1, 9
TAG141:
bne $2, $2, TAG142
mflo $2
mfhi $4
lui $4, 11
TAG142:
bgtz $4, TAG143
mflo $4
lh $2, 0($4)
bgtz $2, TAG143
TAG143:
mtlo $2
bne $2, $2, TAG144
mflo $4
sh $4, 0($2)
TAG144:
lb $1, 0($4)
sb $4, 0($1)
mthi $4
mfhi $2
TAG145:
andi $2, $2, 15
mfhi $1
mult $2, $2
mtlo $2
TAG146:
bgez $1, TAG147
lui $1, 4
beq $1, $1, TAG147
and $3, $1, $1
TAG147:
xori $2, $3, 7
sllv $1, $2, $2
bne $3, $2, TAG148
divu $2, $2
TAG148:
bltz $1, TAG149
sh $1, -384($1)
mfhi $3
lui $1, 5
TAG149:
beq $1, $1, TAG150
mfhi $1
mtlo $1
lb $1, 0($1)
TAG150:
sh $1, 0($1)
sltiu $4, $1, 11
bne $4, $1, TAG151
lb $2, 0($4)
TAG151:
bgez $2, TAG152
sh $2, 0($2)
bgtz $2, TAG152
addi $1, $2, 2
TAG152:
lbu $2, 0($1)
mult $2, $2
multu $1, $2
lb $1, 0($1)
TAG153:
lhu $3, 0($1)
addu $1, $3, $3
mtlo $1
lw $4, 0($3)
TAG154:
mtlo $4
mthi $4
mflo $1
lui $4, 15
TAG155:
sll $0, $0, 0
lw $1, 0($3)
mtlo $1
bne $3, $3, TAG156
TAG156:
lui $3, 14
sll $0, $0, 0
beq $3, $1, TAG157
sll $2, $1, 0
TAG157:
lbu $1, 0($2)
bgez $1, TAG158
sw $2, 0($2)
sw $1, 0($1)
TAG158:
sb $1, 0($1)
bltz $1, TAG159
addi $2, $1, 0
sltu $1, $2, $2
TAG159:
sb $1, 0($1)
multu $1, $1
lui $1, 6
sll $0, $0, 0
TAG160:
bgez $2, TAG161
lw $2, 0($2)
andi $3, $2, 3
and $4, $2, $2
TAG161:
srlv $2, $4, $4
mflo $3
sll $0, $0, 0
blez $4, TAG162
TAG162:
sw $3, 0($3)
beq $3, $3, TAG163
lui $2, 8
lhu $4, 0($2)
TAG163:
lui $4, 10
mflo $4
mtlo $4
mfhi $2
TAG164:
mult $2, $2
mult $2, $2
addi $2, $2, 5
lui $4, 11
TAG165:
sll $0, $0, 0
sll $0, $0, 0
ori $1, $4, 7
sll $0, $0, 0
TAG166:
divu $1, $1
sll $0, $0, 0
beq $1, $1, TAG167
sll $0, $0, 0
TAG167:
srav $3, $1, $1
mfhi $3
mflo $3
lui $1, 15
TAG168:
sll $2, $1, 9
beq $2, $2, TAG169
sll $0, $0, 0
lw $3, 0($2)
TAG169:
lui $4, 10
sltu $2, $3, $3
sll $0, $0, 0
mfhi $4
TAG170:
mfhi $1
sb $1, 0($4)
lw $2, 0($1)
sb $2, 0($2)
TAG171:
beq $2, $2, TAG172
sll $4, $2, 0
mtlo $2
multu $2, $4
TAG172:
bne $4, $4, TAG173
lui $3, 11
xori $3, $3, 8
sll $0, $0, 0
TAG173:
sll $0, $0, 0
mthi $3
multu $3, $3
ori $4, $3, 13
TAG174:
nor $3, $4, $4
blez $3, TAG175
mfhi $1
beq $3, $1, TAG175
TAG175:
mthi $1
lb $4, 0($1)
lui $4, 10
multu $4, $4
TAG176:
beq $4, $4, TAG177
multu $4, $4
lui $2, 5
lhu $3, 0($2)
TAG177:
sra $2, $3, 9
bgtz $3, TAG178
lui $3, 7
mthi $3
TAG178:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
or $3, $3, $3
TAG179:
divu $3, $3
and $4, $3, $3
mthi $4
nor $1, $3, $4
TAG180:
sll $0, $0, 0
bne $1, $1, TAG181
sll $0, $0, 0
sll $0, $0, 0
TAG181:
sb $2, 1409($2)
ori $1, $2, 14
srlv $4, $1, $2
bne $2, $1, TAG182
TAG182:
div $4, $4
mult $4, $4
bgez $4, TAG183
mflo $3
TAG183:
lui $2, 5
sltu $2, $3, $2
mthi $2
mtlo $2
TAG184:
mtlo $2
divu $2, $2
sltiu $2, $2, 3
lbu $2, 0($2)
TAG185:
mult $2, $2
bne $2, $2, TAG186
multu $2, $2
lui $1, 14
TAG186:
mtlo $1
mfhi $1
mult $1, $1
mtlo $1
TAG187:
srl $4, $1, 5
bne $4, $1, TAG188
sll $3, $1, 5
blez $1, TAG188
TAG188:
mtlo $3
ori $1, $3, 0
bgez $3, TAG189
mflo $3
TAG189:
srav $3, $3, $3
mthi $3
mthi $3
mfhi $3
TAG190:
sltiu $3, $3, 6
mtlo $3
lb $2, 0($3)
lbu $3, 0($3)
TAG191:
mflo $3
mtlo $3
mflo $4
sltiu $2, $3, 14
TAG192:
lui $2, 9
lui $4, 5
mtlo $4
bgez $2, TAG193
TAG193:
sll $0, $0, 0
addu $2, $4, $4
bltz $2, TAG194
sll $0, $0, 0
TAG194:
sll $0, $0, 0
bgtz $3, TAG195
mfhi $2
lbu $3, 0($2)
TAG195:
bne $3, $3, TAG196
multu $3, $3
mthi $3
lui $4, 1
TAG196:
mflo $4
mthi $4
sb $4, 0($4)
mtlo $4
TAG197:
bne $4, $4, TAG198
mthi $4
blez $4, TAG198
lui $2, 7
TAG198:
multu $2, $2
subu $4, $2, $2
div $2, $2
mflo $1
TAG199:
sb $1, 0($1)
divu $1, $1
bgtz $1, TAG200
sltiu $1, $1, 12
TAG200:
addiu $3, $1, 5
lui $4, 5
sb $4, 0($3)
bgez $4, TAG201
TAG201:
sll $0, $0, 0
bgtz $4, TAG202
mthi $4
mfhi $1
TAG202:
lbu $2, 0($1)
sb $2, 0($2)
srlv $2, $1, $1
blez $1, TAG203
TAG203:
mult $2, $2
mtlo $2
lui $4, 8
addiu $1, $2, 13
TAG204:
lui $2, 3
mult $1, $1
mtlo $2
lui $4, 0
TAG205:
mtlo $4
bgez $4, TAG206
and $2, $4, $4
mult $2, $2
TAG206:
mflo $2
beq $2, $2, TAG207
sltiu $4, $2, 12
div $2, $4
TAG207:
div $4, $4
beq $4, $4, TAG208
and $1, $4, $4
and $4, $4, $4
TAG208:
mfhi $1
add $2, $1, $4
bne $4, $4, TAG209
sllv $4, $4, $1
TAG209:
addiu $3, $4, 5
nor $3, $4, $4
mflo $1
mflo $2
TAG210:
beq $2, $2, TAG211
mflo $1
sltiu $1, $1, 13
sll $1, $1, 11
TAG211:
sb $1, 0($1)
sb $1, 0($1)
mult $1, $1
multu $1, $1
TAG212:
sltiu $4, $1, 1
lb $2, 0($4)
mtlo $1
lui $2, 6
TAG213:
sllv $1, $2, $2
and $2, $1, $1
mthi $2
sll $0, $0, 0
TAG214:
beq $2, $2, TAG215
sll $0, $0, 0
mtlo $2
beq $3, $3, TAG215
TAG215:
sll $0, $0, 0
lw $3, 2($3)
mthi $3
lui $4, 14
TAG216:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG217:
sw $3, -383($3)
lui $1, 10
blez $3, TAG218
sb $3, -383($3)
TAG218:
addiu $2, $1, 2
mult $1, $1
lui $3, 10
bgez $2, TAG219
TAG219:
addu $4, $3, $3
mfhi $3
divu $4, $3
sw $4, 0($3)
TAG220:
srl $1, $3, 13
beq $1, $3, TAG221
sll $1, $1, 7
addi $3, $1, 8
TAG221:
bltz $3, TAG222
lbu $3, 0($3)
sh $3, 0($3)
bgez $3, TAG222
TAG222:
srlv $3, $3, $3
bne $3, $3, TAG223
sh $3, 0($3)
mult $3, $3
TAG223:
addi $3, $3, 9
beq $3, $3, TAG224
divu $3, $3
mthi $3
TAG224:
ori $2, $3, 10
mtlo $3
bgez $2, TAG225
lui $3, 11
TAG225:
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG226
sll $0, $0, 0
TAG226:
lui $1, 2
mfhi $3
mflo $4
lb $2, 0($2)
TAG227:
sb $2, 0($2)
sltu $2, $2, $2
srav $3, $2, $2
lhu $1, 0($3)
TAG228:
sh $1, 0($1)
lw $4, 0($1)
beq $1, $1, TAG229
slti $1, $4, 5
TAG229:
bltz $1, TAG230
mthi $1
andi $2, $1, 3
slti $1, $2, 14
TAG230:
lbu $1, 0($1)
mthi $1
bgtz $1, TAG231
srlv $3, $1, $1
TAG231:
beq $3, $3, TAG232
lui $4, 4
blez $4, TAG232
lui $1, 7
TAG232:
bltz $1, TAG233
sb $1, 0($1)
mflo $2
bltz $2, TAG233
TAG233:
mult $2, $2
mult $2, $2
mthi $2
lui $1, 9
TAG234:
bgtz $1, TAG235
sll $0, $0, 0
blez $3, TAG235
mtlo $3
TAG235:
sh $3, 0($3)
mthi $3
mult $3, $3
sw $3, 0($3)
TAG236:
mthi $3
slti $2, $3, 14
lbu $1, 0($2)
subu $1, $2, $1
TAG237:
bgez $1, TAG238
srlv $3, $1, $1
bne $1, $3, TAG238
lbu $1, 0($1)
TAG238:
mflo $3
sb $3, 0($3)
mflo $3
mflo $3
TAG239:
bgtz $3, TAG240
ori $1, $3, 14
mtlo $3
bltz $1, TAG240
TAG240:
srav $3, $1, $1
sltiu $1, $1, 5
mtlo $3
lui $1, 10
TAG241:
lui $4, 13
mult $4, $1
blez $1, TAG242
mult $1, $1
TAG242:
sra $1, $4, 5
lb $4, -26624($1)
mthi $4
bltz $1, TAG243
TAG243:
sra $2, $4, 14
lui $1, 12
multu $2, $2
mult $2, $4
TAG244:
mflo $4
lhu $2, 0($4)
subu $3, $4, $2
mflo $3
TAG245:
lw $1, 0($3)
xor $3, $1, $1
bne $3, $1, TAG246
sh $3, 0($3)
TAG246:
andi $4, $3, 14
beq $4, $4, TAG247
sb $4, 0($4)
lbu $1, 0($4)
TAG247:
sltiu $4, $1, 2
mult $1, $1
divu $4, $4
sw $1, 0($1)
TAG248:
mflo $4
lui $3, 3
bne $3, $3, TAG249
sb $4, 0($4)
TAG249:
lui $3, 13
addu $2, $3, $3
mflo $2
blez $3, TAG250
TAG250:
mthi $2
sltiu $1, $2, 0
sb $2, 0($2)
bgtz $1, TAG251
TAG251:
addu $4, $1, $1
lbu $4, 0($1)
mult $4, $4
sltiu $2, $4, 14
TAG252:
lui $1, 11
mtlo $1
or $3, $2, $1
mfhi $3
TAG253:
bne $3, $3, TAG254
subu $2, $3, $3
mult $3, $2
lui $4, 13
TAG254:
addiu $1, $4, 3
mfhi $4
sb $4, 0($4)
mflo $4
TAG255:
lbu $3, 0($4)
beq $3, $3, TAG256
slti $3, $4, 13
lui $3, 2
TAG256:
sb $3, 0($3)
multu $3, $3
mult $3, $3
sb $3, 0($3)
TAG257:
mflo $2
bgtz $2, TAG258
sb $3, 0($3)
sra $2, $3, 0
TAG258:
mult $2, $2
mthi $2
lbu $1, 0($2)
ori $3, $1, 11
TAG259:
mtlo $3
slti $4, $3, 9
lhu $3, 0($4)
sw $4, -256($3)
TAG260:
bgtz $3, TAG261
andi $3, $3, 8
bgtz $3, TAG261
mflo $2
TAG261:
blez $2, TAG262
addiu $2, $2, 5
sh $2, 0($2)
lhu $3, 0($2)
TAG262:
lb $4, 0($3)
lb $1, 0($3)
addiu $2, $1, 1
bgez $1, TAG263
TAG263:
sb $2, 0($2)
mthi $2
sb $2, 0($2)
bne $2, $2, TAG264
TAG264:
mthi $2
div $2, $2
mtlo $2
sra $4, $2, 7
TAG265:
mult $4, $4
andi $2, $4, 0
mtlo $2
beq $4, $2, TAG266
TAG266:
sh $2, 0($2)
mult $2, $2
lw $4, 0($2)
subu $2, $4, $2
TAG267:
lui $4, 9
mthi $2
sh $2, 0($2)
sra $4, $2, 8
TAG268:
lh $3, 0($4)
sltu $1, $4, $4
mtlo $1
mfhi $2
TAG269:
mfhi $2
mult $2, $2
sw $2, 0($2)
blez $2, TAG270
TAG270:
mfhi $2
lhu $1, 0($2)
lb $3, 0($2)
sltiu $1, $1, 14
TAG271:
multu $1, $1
lb $4, 0($1)
bltz $4, TAG272
mfhi $2
TAG272:
sltiu $4, $2, 3
srlv $2, $4, $2
sb $4, 0($2)
sllv $4, $4, $2
TAG273:
lui $3, 0
lui $1, 15
lbu $3, 0($3)
lbu $4, 0($4)
TAG274:
lhu $1, 0($4)
mult $1, $4
bne $1, $1, TAG275
mult $4, $4
TAG275:
div $1, $1
lui $1, 13
blez $1, TAG276
xor $2, $1, $1
TAG276:
slt $3, $2, $2
beq $2, $2, TAG277
andi $1, $3, 9
srl $4, $3, 12
TAG277:
mtlo $4
bne $4, $4, TAG278
mult $4, $4
beq $4, $4, TAG278
TAG278:
lh $2, 0($4)
mult $4, $4
sra $2, $4, 15
mfhi $3
TAG279:
lui $3, 0
addu $3, $3, $3
mthi $3
lhu $1, 0($3)
TAG280:
mfhi $1
lw $4, 0($1)
blez $1, TAG281
mthi $1
TAG281:
sll $0, $0, 0
bgtz $3, TAG282
sh $3, -256($4)
mthi $4
TAG282:
mfhi $2
lui $1, 0
divu $3, $2
mfhi $1
TAG283:
blez $1, TAG284
xori $1, $1, 9
mtlo $1
beq $1, $1, TAG284
TAG284:
slt $2, $1, $1
multu $2, $2
sltu $2, $2, $1
mthi $1
TAG285:
mfhi $4
lb $2, 0($2)
mfhi $2
sb $4, 0($2)
TAG286:
slti $3, $2, 14
bne $2, $3, TAG287
sb $2, 0($3)
bne $2, $2, TAG287
TAG287:
mflo $3
mflo $4
srl $1, $3, 1
mflo $1
TAG288:
multu $1, $1
mult $1, $1
ori $4, $1, 0
bgez $1, TAG289
TAG289:
lui $2, 11
sh $4, 0($4)
sll $0, $0, 0
sh $2, 0($3)
TAG290:
multu $3, $3
xor $4, $3, $3
lb $1, 0($3)
mtlo $1
TAG291:
mthi $1
mtlo $1
sltiu $1, $1, 11
lbu $4, 0($1)
TAG292:
bne $4, $4, TAG293
sub $1, $4, $4
sltiu $1, $1, 5
divu $1, $1
TAG293:
addu $3, $1, $1
subu $3, $1, $1
mfhi $3
mflo $3
TAG294:
sb $3, 0($3)
sb $3, 0($3)
bgtz $3, TAG295
srav $2, $3, $3
TAG295:
lb $3, 0($2)
mflo $1
lw $2, 0($2)
lui $1, 1
TAG296:
div $1, $1
mtlo $1
mtlo $1
mult $1, $1
TAG297:
sll $0, $0, 0
multu $2, $2
sh $2, -256($2)
sll $0, $0, 0
TAG298:
multu $2, $2
subu $4, $2, $2
bne $4, $4, TAG299
lbu $4, -256($2)
TAG299:
bgez $4, TAG300
mtlo $4
sra $2, $4, 11
bgtz $4, TAG300
TAG300:
sll $0, $0, 0
mthi $3
lui $4, 3
bne $2, $3, TAG301
TAG301:
sll $0, $0, 0
multu $4, $4
lui $2, 12
bne $2, $4, TAG302
TAG302:
sll $0, $0, 0
sra $2, $2, 6
lui $4, 8
lb $4, -12288($2)
TAG303:
lui $4, 12
sll $0, $0, 0
bgez $4, TAG304
mflo $4
TAG304:
bne $4, $4, TAG305
mfhi $1
lui $1, 2
mthi $1
TAG305:
lui $2, 4
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG306:
mflo $2
mflo $2
sll $0, $0, 0
mtlo $2
TAG307:
bgez $3, TAG308
mtlo $3
bgtz $3, TAG308
multu $3, $3
TAG308:
mthi $3
and $3, $3, $3
or $3, $3, $3
andi $2, $3, 7
TAG309:
mtlo $2
mflo $2
addu $3, $2, $2
bne $2, $3, TAG310
TAG310:
multu $3, $3
beq $3, $3, TAG311
multu $3, $3
mfhi $1
TAG311:
sll $2, $1, 9
mthi $2
mtlo $2
divu $2, $1
TAG312:
beq $2, $2, TAG313
sll $0, $0, 0
lw $2, 0($2)
mfhi $2
TAG313:
lui $1, 15
subu $1, $2, $2
xor $2, $1, $1
lui $3, 6
TAG314:
nor $4, $3, $3
lui $2, 3
lui $3, 1
sll $0, $0, 0
TAG315:
sltu $3, $3, $3
bltz $3, TAG316
sll $2, $3, 15
mfhi $3
TAG316:
addi $1, $3, 12
sb $3, 0($1)
and $2, $3, $1
mtlo $3
TAG317:
mthi $2
mthi $2
bgez $2, TAG318
xor $4, $2, $2
TAG318:
add $4, $4, $4
sub $3, $4, $4
sb $3, 0($3)
sw $3, 0($3)
TAG319:
mult $3, $3
lui $1, 12
mthi $3
bltz $1, TAG320
TAG320:
sll $0, $0, 0
mfhi $1
mflo $3
lh $3, 0($1)
TAG321:
srlv $2, $3, $3
multu $2, $2
lui $3, 14
mtlo $2
TAG322:
mthi $3
divu $3, $3
bgez $3, TAG323
sll $0, $0, 0
TAG323:
lui $1, 6
lui $3, 11
mtlo $1
mflo $2
TAG324:
mtlo $2
xor $1, $2, $2
bne $2, $1, TAG325
divu $1, $2
TAG325:
blez $1, TAG326
mflo $1
div $1, $1
lui $1, 3
TAG326:
bgez $1, TAG327
mult $1, $1
mtlo $1
blez $1, TAG327
TAG327:
sb $1, 0($1)
mult $1, $1
lui $4, 0
lui $2, 1
TAG328:
sll $0, $0, 0
bne $2, $2, TAG329
sltiu $1, $3, 2
mtlo $3
TAG329:
lui $2, 14
sll $0, $0, 0
lb $1, 0($1)
srl $3, $2, 5
TAG330:
addu $2, $3, $3
srlv $1, $3, $3
mthi $1
sb $3, -28672($1)
TAG331:
mthi $1
bgtz $1, TAG332
lbu $2, -28672($1)
sllv $4, $1, $2
TAG332:
mult $4, $4
bne $4, $4, TAG333
mflo $1
xori $2, $4, 13
TAG333:
sltiu $2, $2, 11
multu $2, $2
bltz $2, TAG334
mfhi $3
TAG334:
bne $3, $3, TAG335
sh $3, 0($3)
mflo $3
beq $3, $3, TAG335
TAG335:
lbu $2, 0($3)
multu $3, $3
mthi $2
lhu $4, 0($3)
TAG336:
lh $4, 0($4)
mult $4, $4
lw $3, 0($4)
lbu $1, 0($4)
TAG337:
lui $4, 12
bgez $1, TAG338
sll $0, $0, 0
lui $2, 15
TAG338:
mthi $2
bltz $2, TAG339
lbu $1, 0($2)
bne $1, $1, TAG339
TAG339:
mfhi $3
mthi $3
sb $1, 0($3)
mfhi $1
TAG340:
blez $1, TAG341
mtlo $1
lw $1, 0($1)
bne $1, $1, TAG341
TAG341:
multu $1, $1
mflo $3
sw $1, 0($1)
xor $3, $1, $3
TAG342:
mflo $3
sub $4, $3, $3
bgez $3, TAG343
lbu $1, 0($4)
TAG343:
lui $4, 14
lui $2, 0
mfhi $4
mthi $1
TAG344:
xori $2, $4, 11
xor $4, $4, $4
lui $3, 15
mthi $4
TAG345:
bltz $3, TAG346
multu $3, $3
multu $3, $3
bne $3, $3, TAG346
TAG346:
sll $0, $0, 0
lb $1, 0($2)
divu $1, $3
beq $3, $2, TAG347
TAG347:
lui $4, 0
bne $1, $4, TAG348
mflo $1
mtlo $4
TAG348:
sw $1, 0($1)
mthi $1
sll $3, $1, 9
mult $1, $3
TAG349:
xor $4, $3, $3
lb $3, 0($4)
mtlo $3
lui $4, 15
TAG350:
slt $4, $4, $4
mfhi $4
sll $4, $4, 13
mfhi $1
TAG351:
lui $1, 4
srlv $2, $1, $1
slti $4, $1, 7
sll $0, $0, 0
TAG352:
mflo $2
mthi $1
sll $3, $2, 13
bgez $1, TAG353
TAG353:
mflo $2
addiu $3, $3, 8
bgtz $2, TAG354
addiu $2, $3, 6
TAG354:
sb $2, 0($2)
lui $1, 0
beq $2, $1, TAG355
mthi $1
TAG355:
mflo $3
sh $3, 0($1)
or $4, $3, $3
mtlo $1
TAG356:
lh $1, 0($4)
mtlo $1
mthi $4
mfhi $2
TAG357:
lui $3, 15
sll $0, $0, 0
bgtz $2, TAG358
andi $4, $2, 3
TAG358:
lui $1, 5
multu $4, $4
mflo $1
sw $1, 0($1)
TAG359:
beq $1, $1, TAG360
mflo $1
multu $1, $1
beq $1, $1, TAG360
TAG360:
sub $2, $1, $1
lui $1, 1
beq $1, $1, TAG361
lw $3, 0($2)
TAG361:
bltz $3, TAG362
slti $3, $3, 11
sb $3, 0($3)
addiu $4, $3, 10
TAG362:
lb $4, 0($4)
lui $3, 11
mflo $4
mtlo $3
TAG363:
lb $2, 0($4)
lhu $2, 0($4)
sb $2, -256($2)
lui $3, 7
TAG364:
mthi $3
div $3, $3
sll $0, $0, 0
addu $1, $3, $3
TAG365:
sll $0, $0, 0
beq $1, $3, TAG366
sll $0, $0, 0
bltz $1, TAG366
TAG366:
mult $4, $4
bgtz $4, TAG367
mflo $3
sw $3, 0($3)
TAG367:
multu $3, $3
mfhi $1
mflo $3
bgtz $1, TAG368
TAG368:
lhu $4, 0($3)
mult $3, $4
mfhi $1
addiu $3, $3, 14
TAG369:
divu $3, $3
sh $3, 0($3)
lh $3, 0($3)
subu $4, $3, $3
TAG370:
bne $4, $4, TAG371
addi $1, $4, 7
lui $2, 8
mult $2, $1
TAG371:
bgez $2, TAG372
sll $0, $0, 0
mtlo $2
bgtz $2, TAG372
TAG372:
mflo $4
multu $2, $2
mtlo $2
blez $4, TAG373
TAG373:
divu $4, $4
lui $2, 6
multu $2, $4
beq $4, $2, TAG374
TAG374:
lui $3, 0
mult $3, $3
xori $2, $3, 14
multu $2, $2
TAG375:
sh $2, 0($2)
lb $3, 0($2)
srlv $3, $2, $2
lbu $4, 0($3)
TAG376:
lui $4, 14
sll $0, $0, 0
mflo $4
sh $4, -196($4)
TAG377:
bgez $4, TAG378
mflo $2
lb $3, 0($4)
multu $4, $4
TAG378:
mtlo $3
srlv $2, $3, $3
sra $3, $3, 5
multu $2, $2
TAG379:
mflo $3
bne $3, $3, TAG380
xori $1, $3, 12
beq $3, $3, TAG380
TAG380:
lh $3, 0($1)
lh $3, 0($3)
lui $4, 14
mfhi $1
TAG381:
bne $1, $1, TAG382
mult $1, $1
sh $1, 0($1)
lui $4, 5
TAG382:
bltz $4, TAG383
srlv $3, $4, $4
mflo $1
lui $2, 5
TAG383:
mthi $2
mfhi $3
mfhi $3
lui $3, 9
TAG384:
lui $4, 13
blez $3, TAG385
lui $4, 14
mflo $1
TAG385:
srl $2, $1, 3
mfhi $3
bgtz $2, TAG386
subu $2, $2, $3
TAG386:
sll $0, $0, 0
bgez $2, TAG387
or $1, $2, $2
sllv $3, $1, $2
TAG387:
srav $1, $3, $3
bne $1, $1, TAG388
sllv $3, $1, $1
srlv $2, $3, $1
TAG388:
mtlo $2
andi $3, $2, 14
bne $2, $2, TAG389
addu $1, $3, $3
TAG389:
bltz $1, TAG390
mtlo $1
bne $1, $1, TAG390
sb $1, 0($1)
TAG390:
slt $3, $1, $1
multu $1, $1
mflo $3
mtlo $3
TAG391:
sb $3, 0($3)
mtlo $3
bgez $3, TAG392
sw $3, 0($3)
TAG392:
beq $3, $3, TAG393
mult $3, $3
mthi $3
mult $3, $3
TAG393:
sb $3, 0($3)
xori $1, $3, 5
lbu $2, 0($3)
mflo $1
TAG394:
lh $1, 0($1)
mflo $4
sw $4, 0($1)
mtlo $1
TAG395:
bne $4, $4, TAG396
lui $1, 4
div $4, $1
sll $0, $0, 0
TAG396:
sb $3, 0($3)
bgtz $3, TAG397
multu $3, $3
mflo $1
TAG397:
lhu $1, 0($1)
bgez $1, TAG398
mfhi $2
bne $1, $1, TAG398
TAG398:
lui $1, 4
mtlo $2
sll $0, $0, 0
subu $4, $1, $2
TAG399:
mtlo $4
sll $0, $0, 0
mult $4, $4
bne $4, $4, TAG400
TAG400:
lui $3, 8
bne $3, $4, TAG401
ori $1, $3, 3
slti $3, $1, 9
TAG401:
slt $3, $3, $3
srlv $4, $3, $3
addiu $2, $3, 2
lui $2, 10
TAG402:
multu $2, $2
mthi $2
div $2, $2
sll $0, $0, 0
TAG403:
sll $0, $0, 0
sltiu $4, $2, 4
sll $0, $0, 0
lui $3, 4
TAG404:
mflo $3
mult $3, $3
srl $3, $3, 9
lh $3, 0($3)
TAG405:
sb $3, 0($3)
mthi $3
sll $4, $3, 1
nor $2, $3, $4
TAG406:
lui $1, 11
lui $4, 0
mfhi $4
mthi $2
TAG407:
bne $4, $4, TAG408
lui $2, 1
lb $4, 0($4)
bne $4, $4, TAG408
TAG408:
multu $4, $4
sb $4, 0($4)
mfhi $4
beq $4, $4, TAG409
TAG409:
ori $3, $4, 8
sh $4, 0($4)
lui $2, 3
mflo $1
TAG410:
bltz $1, TAG411
sb $1, 0($1)
mtlo $1
mthi $1
TAG411:
lui $4, 3
mthi $4
mfhi $2
sll $0, $0, 0
TAG412:
div $4, $4
lui $4, 3
lui $2, 4
sra $2, $4, 1
TAG413:
mult $2, $2
bgtz $2, TAG414
slti $1, $2, 4
sb $2, 0($1)
TAG414:
sb $1, 0($1)
mflo $3
xori $4, $3, 9
sll $0, $0, 0
TAG415:
mfhi $1
bgtz $1, TAG416
divu $4, $1
add $1, $1, $1
TAG416:
lui $3, 5
subu $2, $3, $1
sll $0, $0, 0
sh $3, 0($1)
TAG417:
sh $1, 0($1)
subu $3, $1, $1
bne $1, $3, TAG418
sw $1, 0($3)
TAG418:
sh $3, 0($3)
beq $3, $3, TAG419
or $2, $3, $3
add $3, $2, $2
TAG419:
mtlo $3
srav $3, $3, $3
sb $3, 0($3)
mult $3, $3
TAG420:
sw $3, 0($3)
mult $3, $3
mflo $4
bgez $4, TAG421
TAG421:
mult $4, $4
nor $1, $4, $4
lui $3, 8
lui $1, 7
TAG422:
lui $4, 10
and $2, $4, $4
mflo $1
bne $2, $4, TAG423
TAG423:
add $2, $1, $1
mflo $3
addi $1, $2, 7
srav $4, $3, $1
TAG424:
mtlo $4
lui $1, 12
multu $4, $1
srl $1, $1, 8
TAG425:
sh $1, -3072($1)
divu $1, $1
sh $1, -3072($1)
lui $2, 0
TAG426:
sb $2, 0($2)
mflo $2
subu $1, $2, $2
sllv $3, $2, $2
TAG427:
bgtz $3, TAG428
lbu $1, 0($3)
lhu $4, 0($3)
lw $3, 0($3)
TAG428:
lhu $1, 0($3)
mfhi $2
multu $2, $2
lui $4, 12
TAG429:
mtlo $4
lui $1, 0
beq $1, $4, TAG430
lui $2, 11
TAG430:
mthi $2
andi $4, $2, 6
bltz $2, TAG431
sll $0, $0, 0
TAG431:
multu $4, $4
sb $4, 0($4)
blez $4, TAG432
sra $1, $4, 1
TAG432:
bne $1, $1, TAG433
sb $1, 0($1)
srl $3, $1, 9
sh $3, 0($3)
TAG433:
lui $1, 4
lui $1, 14
mfhi $4
div $4, $1
TAG434:
sll $4, $4, 0
mfhi $1
mult $4, $4
sb $4, 0($4)
TAG435:
bltz $1, TAG436
lbu $2, 0($1)
ori $3, $1, 13
bne $3, $2, TAG436
TAG436:
mflo $4
mflo $3
slti $3, $4, 12
divu $4, $3
TAG437:
bne $3, $3, TAG438
or $4, $3, $3
sb $4, 0($4)
beq $4, $3, TAG438
TAG438:
xori $1, $4, 4
mtlo $4
divu $1, $4
sb $4, 0($1)
TAG439:
addiu $4, $1, 15
mthi $1
multu $4, $1
bltz $4, TAG440
TAG440:
div $4, $4
beq $4, $4, TAG441
lui $2, 15
sw $2, 0($4)
TAG441:
sll $0, $0, 0
slti $2, $2, 13
slti $4, $2, 10
mflo $4
TAG442:
slti $4, $4, 1
bgez $4, TAG443
mtlo $4
lui $2, 2
TAG443:
lui $2, 8
mfhi $4
bne $2, $4, TAG444
mult $2, $4
TAG444:
mfhi $2
mult $2, $2
lui $3, 13
lui $2, 1
TAG445:
bgtz $2, TAG446
lui $4, 13
div $2, $2
blez $2, TAG446
TAG446:
mult $4, $4
sll $0, $0, 0
mtlo $4
bltz $2, TAG447
TAG447:
sll $0, $0, 0
div $2, $2
sltu $1, $2, $2
sll $1, $1, 0
TAG448:
nor $3, $1, $1
ori $2, $1, 7
mflo $4
lui $4, 2
TAG449:
mfhi $4
mtlo $4
lui $1, 11
lh $4, 0($4)
TAG450:
beq $4, $4, TAG451
ori $1, $4, 13
bltz $4, TAG451
mflo $2
TAG451:
mult $2, $2
lb $4, 0($2)
blez $4, TAG452
sb $4, 0($4)
TAG452:
bne $4, $4, TAG453
mtlo $4
xor $1, $4, $4
beq $1, $1, TAG453
TAG453:
mthi $1
beq $1, $1, TAG454
lui $2, 11
sh $1, 0($2)
TAG454:
lui $3, 11
bne $2, $2, TAG455
sll $0, $0, 0
mtlo $2
TAG455:
mthi $4
addiu $2, $4, 10
bgez $4, TAG456
divu $4, $2
TAG456:
bgez $2, TAG457
mfhi $2
lb $1, 0($2)
mtlo $2
TAG457:
beq $1, $1, TAG458
lw $3, 0($1)
bltz $1, TAG458
mthi $1
TAG458:
subu $3, $3, $3
mflo $4
mthi $3
sb $3, 0($3)
TAG459:
multu $4, $4
mult $4, $4
subu $1, $4, $4
slt $2, $4, $4
TAG460:
bltz $2, TAG461
sh $2, 0($2)
blez $2, TAG461
lh $3, 0($2)
TAG461:
lui $1, 8
sra $1, $3, 1
mtlo $1
mtlo $1
TAG462:
mthi $1
mthi $1
mthi $1
sllv $4, $1, $1
TAG463:
mult $4, $4
mtlo $4
srlv $1, $4, $4
mult $4, $1
TAG464:
bgez $1, TAG465
mtlo $1
sra $3, $1, 2
lui $4, 3
TAG465:
srlv $4, $4, $4
lui $1, 1
mtlo $4
bgez $1, TAG466
TAG466:
xori $2, $1, 0
slt $3, $1, $1
sll $0, $0, 0
sltiu $4, $2, 0
TAG467:
blez $4, TAG468
mtlo $4
andi $2, $4, 14
bne $4, $4, TAG468
TAG468:
mflo $3
addu $1, $2, $3
lhu $1, 0($3)
lui $1, 5
TAG469:
sll $0, $0, 0
mthi $1
slti $4, $1, 3
mflo $1
TAG470:
mfhi $3
beq $1, $1, TAG471
lui $2, 6
lhu $3, 0($2)
TAG471:
beq $3, $3, TAG472
mflo $3
beq $3, $3, TAG472
sltiu $2, $3, 12
TAG472:
sra $2, $2, 3
lui $1, 0
lui $3, 10
mthi $2
TAG473:
sll $0, $0, 0
mflo $2
lui $3, 1
mflo $1
TAG474:
mfhi $3
sh $3, 0($1)
mult $3, $1
lui $1, 8
TAG475:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
bne $4, $1, TAG476
TAG476:
sh $4, 0($4)
lui $2, 12
bgez $2, TAG477
slti $1, $4, 7
TAG477:
sb $1, 0($1)
bne $1, $1, TAG478
sltiu $2, $1, 7
lb $1, 0($2)
TAG478:
mfhi $4
lbu $2, 0($4)
lui $4, 12
mtlo $2
TAG479:
sll $0, $0, 0
sll $0, $0, 0
mult $1, $4
sll $0, $0, 0
TAG480:
lui $2, 9
beq $1, $2, TAG481
mfhi $2
bne $2, $2, TAG481
TAG481:
sh $2, 0($2)
sw $2, 0($2)
mult $2, $2
mtlo $2
TAG482:
lw $3, 0($2)
beq $3, $2, TAG483
mtlo $2
divu $2, $3
TAG483:
addiu $1, $3, 3
bltz $3, TAG484
lw $1, 0($3)
beq $1, $1, TAG484
TAG484:
ori $2, $1, 0
sltiu $1, $1, 0
mtlo $2
lw $2, 0($2)
TAG485:
mtlo $2
lui $4, 15
sll $0, $0, 0
ori $1, $2, 15
TAG486:
mfhi $4
xori $3, $1, 6
lb $4, 0($4)
sb $1, 0($1)
TAG487:
srlv $2, $4, $4
slti $4, $4, 14
bgtz $4, TAG488
lb $2, 0($2)
TAG488:
blez $2, TAG489
lui $1, 8
multu $2, $1
mtlo $2
TAG489:
bgez $1, TAG490
lui $4, 11
lb $1, 0($1)
mfhi $3
TAG490:
ori $2, $3, 3
sb $3, 0($3)
mult $3, $3
addu $1, $2, $3
TAG491:
lui $4, 1
bgtz $4, TAG492
multu $4, $4
div $1, $1
TAG492:
mflo $1
mtlo $1
subu $3, $1, $4
lui $4, 12
TAG493:
sll $0, $0, 0
sra $2, $4, 3
sll $0, $0, 0
or $1, $4, $2
TAG494:
and $4, $1, $1
mtlo $4
div $4, $4
ori $1, $1, 2
TAG495:
beq $1, $1, TAG496
mthi $1
lui $3, 6
xor $2, $3, $1
TAG496:
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG497
mult $2, $2
TAG497:
sll $0, $0, 0
mthi $2
beq $4, $4, TAG498
div $2, $4
TAG498:
slt $3, $4, $4
beq $3, $3, TAG499
sub $2, $3, $3
lui $2, 6
TAG499:
addiu $3, $2, 12
mthi $3
mult $3, $3
lui $1, 4
TAG500:
sllv $2, $1, $1
mult $2, $2
subu $2, $2, $2
nor $3, $1, $1
TAG501:
bgtz $3, TAG502
mtlo $3
sll $0, $0, 0
or $1, $3, $2
TAG502:
mfhi $3
bne $3, $3, TAG503
addiu $1, $1, 11
bne $1, $1, TAG503
TAG503:
mtlo $1
mfhi $3
bgtz $3, TAG504
mthi $1
TAG504:
mflo $4
bgtz $3, TAG505
sllv $2, $3, $3
lhu $3, 0($4)
TAG505:
sb $3, 0($3)
slt $3, $3, $3
mthi $3
bne $3, $3, TAG506
TAG506:
sw $3, 0($3)
sb $3, 0($3)
mthi $3
mfhi $4
TAG507:
lui $1, 3
mthi $1
addi $1, $4, 3
lui $1, 10
TAG508:
srl $2, $1, 13
sll $0, $0, 0
multu $4, $4
subu $3, $2, $2
TAG509:
bltz $3, TAG510
mult $3, $3
mfhi $1
lui $3, 14
TAG510:
sll $0, $0, 0
or $4, $3, $3
xori $1, $4, 9
sll $0, $0, 0
TAG511:
mtlo $1
andi $4, $1, 2
slti $2, $1, 12
beq $2, $4, TAG512
TAG512:
mthi $2
sra $3, $2, 1
mtlo $3
blez $2, TAG513
TAG513:
lui $1, 5
lui $2, 4
beq $1, $3, TAG514
mflo $3
TAG514:
sllv $4, $3, $3
lui $1, 4
mthi $4
blez $4, TAG515
TAG515:
sll $0, $0, 0
bltz $1, TAG516
sll $0, $0, 0
ori $1, $1, 4
TAG516:
mfhi $3
srlv $3, $1, $1
addiu $4, $3, 10
lbu $1, -16394($4)
TAG517:
addiu $3, $1, 0
lui $1, 0
blez $1, TAG518
mfhi $4
TAG518:
bgtz $4, TAG519
srlv $1, $4, $4
bgez $4, TAG519
and $2, $1, $1
TAG519:
lui $1, 13
sw $2, 0($2)
bgtz $1, TAG520
sll $0, $0, 0
TAG520:
ori $1, $3, 13
subu $1, $3, $1
sltu $4, $1, $1
lw $2, 0($4)
TAG521:
ori $3, $2, 8
andi $3, $2, 3
addi $3, $3, 10
lui $3, 10
TAG522:
beq $3, $3, TAG523
nor $3, $3, $3
divu $3, $3
mflo $1
TAG523:
mflo $4
ori $1, $1, 8
mult $1, $4
divu $1, $1
TAG524:
lui $1, 4
lui $2, 11
multu $1, $2
addu $3, $1, $1
TAG525:
lui $1, 4
xor $1, $3, $3
lw $4, 0($1)
mult $1, $1
TAG526:
bne $4, $4, TAG527
mfhi $4
sb $4, 0($4)
lhu $2, 0($4)
TAG527:
addiu $1, $2, 11
sltiu $1, $1, 14
sw $1, 0($2)
mthi $1
TAG528:
sb $1, 0($1)
xori $2, $1, 6
slt $3, $1, $1
srl $2, $2, 11
TAG529:
sh $2, 0($2)
bne $2, $2, TAG530
lui $1, 13
mflo $3
TAG530:
blez $3, TAG531
andi $2, $3, 10
sh $2, 0($2)
add $1, $3, $2
TAG531:
andi $4, $1, 5
bne $4, $4, TAG532
mfhi $4
sb $1, 0($4)
TAG532:
lb $3, 0($4)
mflo $1
blez $1, TAG533
mflo $1
TAG533:
mult $1, $1
mfhi $4
addiu $4, $4, 5
xori $4, $4, 12
TAG534:
lb $3, 0($4)
nor $4, $4, $3
sllv $3, $4, $3
andi $4, $4, 15
TAG535:
bne $4, $4, TAG536
multu $4, $4
mtlo $4
mult $4, $4
TAG536:
srl $4, $4, 10
lb $3, 0($4)
sh $4, 0($3)
xori $2, $4, 10
TAG537:
andi $4, $2, 1
and $3, $2, $4
lh $4, 0($2)
andi $2, $4, 12
TAG538:
lw $3, 0($2)
bne $3, $2, TAG539
lb $3, 0($2)
lui $1, 15
TAG539:
div $1, $1
xori $2, $1, 3
bne $1, $2, TAG540
multu $2, $1
TAG540:
xor $1, $2, $2
sh $1, 0($1)
sll $0, $0, 0
lui $2, 6
TAG541:
mult $2, $2
lui $4, 1
mfhi $3
mflo $3
TAG542:
xori $4, $3, 6
mfhi $1
lui $4, 13
xori $1, $4, 1
TAG543:
sll $0, $0, 0
and $3, $1, $1
mult $3, $1
beq $1, $1, TAG544
TAG544:
ori $3, $3, 0
sll $0, $0, 0
andi $2, $3, 3
sb $3, 0($2)
TAG545:
sb $2, 0($2)
blez $2, TAG546
div $2, $2
sb $2, 0($2)
TAG546:
srl $4, $2, 14
mult $4, $4
blez $2, TAG547
sb $2, 0($2)
TAG547:
bgtz $4, TAG548
mthi $4
mtlo $4
lw $2, 0($4)
TAG548:
sllv $2, $2, $2
lui $4, 5
lui $4, 5
sll $0, $0, 0
TAG549:
beq $4, $4, TAG550
sll $0, $0, 0
nor $1, $4, $4
slt $2, $4, $1
TAG550:
mfhi $3
mflo $1
or $4, $2, $1
beq $3, $2, TAG551
TAG551:
divu $4, $4
slti $1, $4, 14
ori $4, $1, 14
div $4, $4
TAG552:
addu $3, $4, $4
bne $4, $4, TAG553
mfhi $1
lui $1, 4
TAG553:
divu $1, $1
blez $1, TAG554
addiu $4, $1, 9
sll $0, $0, 0
TAG554:
sll $0, $0, 0
lui $2, 9
sll $0, $0, 0
subu $4, $4, $4
TAG555:
xori $3, $4, 9
mflo $1
mthi $1
sltu $3, $4, $1
TAG556:
bne $3, $3, TAG557
sb $3, 0($3)
subu $1, $3, $3
bltz $3, TAG557
TAG557:
sw $1, 0($1)
lui $4, 2
multu $1, $4
lui $1, 13
TAG558:
sll $0, $0, 0
bltz $1, TAG559
lui $2, 6
lui $3, 10
TAG559:
multu $3, $3
sll $0, $0, 0
lui $4, 14
srl $1, $3, 3
TAG560:
slti $4, $1, 4
bltz $1, TAG561
addiu $1, $1, 9
srl $4, $1, 0
TAG561:
bne $4, $4, TAG562
multu $4, $4
mflo $3
bgez $3, TAG562
TAG562:
lui $2, 13
sltiu $3, $3, 7
beq $3, $2, TAG563
sh $2, 0($3)
TAG563:
blez $3, TAG564
sh $3, 0($3)
lhu $2, 0($3)
sw $2, 0($3)
TAG564:
mflo $2
bgez $2, TAG565
sll $0, $0, 0
divu $4, $2
TAG565:
subu $2, $4, $4
sra $2, $4, 11
xori $2, $4, 0
lui $4, 3
TAG566:
mult $4, $4
div $4, $4
mthi $4
bgez $4, TAG567
TAG567:
sll $4, $4, 7
mfhi $1
bgtz $1, TAG568
sll $0, $0, 0
TAG568:
mflo $2
bgez $2, TAG569
mflo $3
sh $3, 0($3)
TAG569:
mtlo $3
sb $3, 0($3)
mtlo $3
bgez $3, TAG570
TAG570:
lb $2, 0($3)
mfhi $3
mflo $4
mfhi $2
TAG571:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG572
TAG572:
mtlo $3
bne $3, $3, TAG573
sll $0, $0, 0
sll $0, $0, 0
TAG573:
divu $2, $2
sltiu $1, $2, 2
bgtz $2, TAG574
sll $0, $0, 0
TAG574:
mfhi $1
mult $1, $1
lui $2, 13
bgtz $4, TAG575
TAG575:
mflo $2
add $4, $2, $2
mfhi $4
ori $3, $2, 13
TAG576:
mflo $1
bgtz $3, TAG577
lui $3, 1
mflo $2
TAG577:
lui $3, 2
lui $4, 9
mflo $3
ori $3, $3, 4
TAG578:
bne $3, $3, TAG579
nor $4, $3, $3
srlv $3, $3, $4
sh $4, 0($3)
TAG579:
mtlo $3
lh $1, 0($3)
srav $4, $1, $1
mflo $3
TAG580:
beq $3, $3, TAG581
sub $3, $3, $3
divu $3, $3
sll $3, $3, 8
TAG581:
lh $2, 0($3)
mult $3, $3
sb $2, 5($2)
lui $1, 8
TAG582:
mthi $1
addu $3, $1, $1
mthi $3
beq $1, $1, TAG583
TAG583:
sll $0, $0, 0
mtlo $3
sltiu $1, $3, 13
blez $3, TAG584
TAG584:
xori $4, $1, 0
mfhi $1
blez $1, TAG585
lui $1, 15
TAG585:
addu $2, $1, $1
mtlo $2
sll $3, $1, 6
bne $1, $1, TAG586
TAG586:
addiu $2, $3, 2
slti $1, $2, 9
addu $2, $2, $3
mult $3, $2
TAG587:
mflo $2
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG588:
addu $4, $1, $1
bgtz $1, TAG589
sll $0, $0, 0
multu $1, $1
TAG589:
bgtz $4, TAG590
sll $0, $0, 0
divu $4, $4
sb $4, 0($4)
TAG590:
mfhi $3
mflo $3
multu $3, $3
slt $2, $3, $4
TAG591:
lbu $1, 0($2)
mfhi $2
mthi $2
lui $1, 0
TAG592:
lui $3, 4
mtlo $1
lh $3, 0($1)
mfhi $2
TAG593:
sll $0, $0, 0
lui $3, 3
subu $4, $4, $2
subu $1, $2, $4
TAG594:
mtlo $1
sll $0, $0, 0
div $1, $1
mthi $1
TAG595:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
blez $2, TAG596
TAG596:
div $2, $2
lui $2, 4
sll $0, $0, 0
addiu $2, $2, 6
TAG597:
or $4, $2, $2
sll $3, $2, 1
beq $3, $2, TAG598
sll $0, $0, 0
TAG598:
mthi $3
lui $2, 10
mtlo $3
sltu $4, $2, $3
TAG599:
mthi $4
lui $4, 8
lui $1, 4
sll $0, $0, 0
TAG600:
bne $3, $3, TAG601
mthi $3
andi $2, $3, 15
sll $0, $0, 0
TAG601:
bne $2, $2, TAG602
sltiu $2, $2, 14
beq $2, $2, TAG602
srl $4, $2, 1
TAG602:
srl $2, $4, 3
mthi $2
lhu $4, 0($2)
lui $3, 13
TAG603:
lui $4, 10
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG604:
mthi $1
bne $1, $1, TAG605
sllv $4, $1, $1
subu $4, $1, $1
TAG605:
sh $4, 0($4)
beq $4, $4, TAG606
lui $3, 1
bne $4, $3, TAG606
TAG606:
mflo $4
lui $3, 2
addu $2, $3, $4
bltz $4, TAG607
TAG607:
lui $4, 5
mthi $4
mfhi $1
addiu $3, $4, 1
TAG608:
blez $3, TAG609
lui $1, 8
beq $3, $1, TAG609
mtlo $3
TAG609:
addiu $3, $1, 2
sll $0, $0, 0
bne $1, $3, TAG610
xor $1, $1, $1
TAG610:
mult $1, $1
bgez $1, TAG611
ori $4, $1, 10
mfhi $1
TAG611:
lh $4, 0($1)
bltz $1, TAG612
xor $3, $1, $4
beq $1, $1, TAG612
TAG612:
mthi $3
sh $3, 0($3)
multu $3, $3
beq $3, $3, TAG613
TAG613:
lw $3, 0($3)
mthi $3
lui $4, 0
beq $3, $4, TAG614
TAG614:
multu $4, $4
lui $3, 11
andi $4, $3, 1
mflo $3
TAG615:
mfhi $4
lui $2, 5
multu $2, $4
mult $2, $3
TAG616:
multu $2, $2
bne $2, $2, TAG617
div $2, $2
sll $0, $0, 0
TAG617:
lw $4, 0($4)
mfhi $3
mfhi $1
bgtz $1, TAG618
TAG618:
mtlo $1
multu $1, $1
multu $1, $1
lh $3, 0($1)
TAG619:
addiu $2, $3, 8
beq $3, $3, TAG620
lw $3, 0($3)
lui $4, 12
TAG620:
sb $4, 0($4)
mult $4, $4
lhu $3, 0($4)
lui $1, 7
TAG621:
mflo $2
mthi $1
lui $2, 10
mtlo $1
TAG622:
bltz $2, TAG623
sll $0, $0, 0
beq $2, $2, TAG623
mfhi $4
TAG623:
mtlo $4
mfhi $4
beq $4, $4, TAG624
mtlo $4
TAG624:
sll $0, $0, 0
beq $1, $4, TAG625
sll $0, $0, 0
beq $4, $1, TAG625
TAG625:
sll $0, $0, 0
mflo $4
blez $3, TAG626
sra $3, $1, 1
TAG626:
sll $0, $0, 0
or $1, $3, $3
multu $1, $3
bltz $3, TAG627
TAG627:
mtlo $1
sll $0, $0, 0
sltiu $4, $3, 0
sh $3, 0($4)
TAG628:
lui $4, 6
sll $0, $0, 0
div $4, $1
mflo $1
TAG629:
bltz $1, TAG630
srlv $1, $1, $1
beq $1, $1, TAG630
sh $1, 0($1)
TAG630:
multu $1, $1
lui $4, 6
sb $4, 0($1)
sll $2, $1, 10
TAG631:
bne $2, $2, TAG632
lb $2, 0($2)
mult $2, $2
sb $2, 0($2)
TAG632:
sw $2, 0($2)
sllv $4, $2, $2
lw $2, 0($4)
beq $2, $4, TAG633
TAG633:
mult $2, $2
srlv $2, $2, $2
mtlo $2
mfhi $2
TAG634:
lb $2, 0($2)
sltu $3, $2, $2
sw $2, 0($2)
beq $2, $2, TAG635
TAG635:
mflo $2
sh $2, 0($3)
mfhi $2
sra $2, $2, 10
TAG636:
bne $2, $2, TAG637
mfhi $4
addiu $3, $4, 8
lui $3, 0
TAG637:
srav $2, $3, $3
lhu $3, 0($3)
lw $3, 0($2)
mthi $3
TAG638:
multu $3, $3
lh $4, 0($3)
lw $2, 0($3)
andi $1, $4, 10
TAG639:
sb $1, 0($1)
addiu $2, $1, 3
multu $2, $2
mfhi $3
TAG640:
beq $3, $3, TAG641
mult $3, $3
beq $3, $3, TAG641
addu $4, $3, $3
TAG641:
lui $4, 15
mflo $4
bgtz $4, TAG642
lui $1, 12
TAG642:
lui $1, 15
mtlo $1
mthi $1
sll $0, $0, 0
TAG643:
slti $4, $1, 8
xor $1, $4, $1
sll $0, $0, 0
sltiu $1, $1, 1
TAG644:
addiu $3, $1, 13
subu $1, $1, $3
mflo $1
beq $1, $1, TAG645
TAG645:
mflo $2
sll $0, $0, 0
bltz $4, TAG646
mtlo $2
TAG646:
bgtz $4, TAG647
addiu $3, $4, 12
mthi $3
ori $4, $3, 1
TAG647:
andi $2, $4, 5
lui $4, 11
bltz $2, TAG648
mtlo $4
TAG648:
sll $0, $0, 0
beq $4, $4, TAG649
divu $4, $4
sh $4, 0($4)
TAG649:
multu $4, $4
lui $3, 0
divu $3, $4
blez $4, TAG650
TAG650:
mult $3, $3
mtlo $3
sltiu $3, $3, 2
sltiu $1, $3, 10
TAG651:
lb $4, 0($1)
beq $1, $1, TAG652
sb $1, 0($1)
mflo $3
TAG652:
sra $2, $3, 7
or $1, $3, $3
multu $1, $2
bne $1, $3, TAG653
TAG653:
mflo $1
bltz $1, TAG654
addi $1, $1, 5
sltiu $1, $1, 8
TAG654:
sb $1, 0($1)
slt $1, $1, $1
beq $1, $1, TAG655
mult $1, $1
TAG655:
mfhi $4
mult $1, $1
lui $1, 15
and $3, $1, $4
TAG656:
mult $3, $3
lbu $4, 0($3)
lb $1, 0($3)
beq $1, $1, TAG657
TAG657:
lhu $2, 0($1)
mfhi $4
sw $4, -256($2)
lui $3, 14
TAG658:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
addu $1, $4, $4
TAG659:
lb $4, 0($1)
lui $4, 4
bgez $4, TAG660
mthi $4
TAG660:
lui $3, 7
lui $1, 13
mfhi $3
mflo $2
TAG661:
lui $3, 2
lui $3, 15
sll $0, $0, 0
sllv $2, $4, $2
TAG662:
mult $2, $2
addu $3, $2, $2
multu $2, $3
blez $2, TAG663
TAG663:
lui $2, 4
addu $2, $3, $2
sll $0, $0, 0
bne $3, $3, TAG664
TAG664:
lui $3, 12
bgez $2, TAG665
mthi $2
bne $3, $3, TAG665
TAG665:
divu $3, $3
mfhi $3
mthi $3
lui $1, 8
TAG666:
addiu $4, $1, 2
sra $3, $1, 4
mthi $1
div $1, $1
TAG667:
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG668
sll $0, $0, 0
TAG668:
addiu $4, $1, 0
addiu $3, $4, 10
bne $1, $3, TAG669
mflo $4
TAG669:
sra $4, $4, 6
lui $2, 10
beq $4, $4, TAG670
sll $0, $0, 0
TAG670:
subu $1, $1, $1
sh $1, 0($1)
ori $1, $1, 9
divu $1, $1
TAG671:
subu $3, $1, $1
sb $1, 0($1)
addiu $3, $3, 7
lbu $2, 0($1)
TAG672:
multu $2, $2
xor $2, $2, $2
beq $2, $2, TAG673
mfhi $3
TAG673:
bgtz $3, TAG674
lui $2, 10
mult $3, $3
beq $2, $3, TAG674
TAG674:
sll $0, $0, 0
mfhi $2
sltiu $4, $2, 12
xori $1, $2, 7
TAG675:
srl $2, $1, 5
bltz $1, TAG676
mtlo $1
sw $1, 0($2)
TAG676:
multu $2, $2
sll $3, $2, 13
slti $2, $2, 1
and $2, $2, $2
TAG677:
bltz $2, TAG678
lbu $2, 0($2)
bne $2, $2, TAG678
lhu $3, 0($2)
TAG678:
blez $3, TAG679
multu $3, $3
andi $1, $3, 1
bltz $3, TAG679
TAG679:
lb $3, 0($1)
lui $1, 5
divu $1, $1
slti $2, $1, 4
TAG680:
mfhi $3
mfhi $1
addi $3, $2, 11
multu $3, $2
TAG681:
bne $3, $3, TAG682
srlv $3, $3, $3
bgtz $3, TAG682
lui $3, 4
TAG682:
sll $0, $0, 0
blez $3, TAG683
sll $0, $0, 0
xor $2, $4, $4
TAG683:
mult $2, $2
sw $2, 0($2)
beq $2, $2, TAG684
multu $2, $2
TAG684:
sltiu $4, $2, 12
nor $3, $4, $2
mflo $2
mtlo $3
TAG685:
mthi $2
sb $2, 0($2)
lb $1, 0($2)
andi $4, $2, 12
TAG686:
beq $4, $4, TAG687
lhu $4, 0($4)
lui $3, 6
mflo $2
TAG687:
multu $2, $2
sh $2, 0($2)
mthi $2
ori $2, $2, 1
TAG688:
mflo $2
bltz $2, TAG689
mthi $2
mflo $3
TAG689:
lw $2, 0($3)
slti $3, $2, 9
sb $3, 0($3)
lbu $1, 0($3)
TAG690:
beq $1, $1, TAG691
divu $1, $1
mflo $2
sb $2, 0($2)
TAG691:
multu $2, $2
blez $2, TAG692
mtlo $2
lui $4, 0
TAG692:
sllv $2, $4, $4
sh $4, 0($2)
sh $4, 0($2)
ori $2, $4, 8
TAG693:
addu $3, $2, $2
sltu $1, $2, $2
blez $2, TAG694
mult $1, $1
TAG694:
mult $1, $1
multu $1, $1
mult $1, $1
bgtz $1, TAG695
TAG695:
addiu $3, $1, 0
lbu $2, 0($3)
mthi $1
multu $2, $1
TAG696:
sw $2, 0($2)
bgtz $2, TAG697
mfhi $1
blez $2, TAG697
TAG697:
lhu $3, 0($1)
bne $1, $1, TAG698
multu $1, $3
mthi $1
TAG698:
addu $1, $3, $3
sltiu $2, $1, 3
lui $1, 5
mfhi $3
TAG699:
mtlo $3
bne $3, $3, TAG700
mtlo $3
lui $4, 11
TAG700:
sll $0, $0, 0
mthi $4
lui $1, 1
bgtz $4, TAG701
TAG701:
addiu $2, $1, 7
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG702:
bne $1, $1, TAG703
addiu $4, $1, 12
sll $0, $0, 0
blez $1, TAG703
TAG703:
mtlo $4
mult $4, $4
addiu $2, $4, 10
bltz $2, TAG704
TAG704:
lui $3, 6
srav $3, $3, $2
bltz $3, TAG705
mfhi $3
TAG705:
addiu $3, $3, 15
lhu $3, 0($3)
sw $3, 0($3)
div $3, $3
TAG706:
multu $3, $3
addu $4, $3, $3
bgez $4, TAG707
andi $1, $3, 15
TAG707:
mthi $1
mflo $1
sb $1, -256($1)
sb $1, -256($1)
TAG708:
sra $1, $1, 9
ori $3, $1, 8
lbu $2, 0($3)
lui $2, 5
TAG709:
mflo $4
multu $4, $4
div $2, $2
multu $2, $4
TAG710:
multu $4, $4
sw $4, -256($4)
sw $4, -256($4)
sll $4, $4, 8
TAG711:
divu $4, $4
div $4, $4
sll $0, $0, 0
mtlo $4
TAG712:
beq $4, $4, TAG713
sll $0, $0, 0
bltz $4, TAG713
lbu $4, 0($4)
TAG713:
sll $0, $0, 0
mthi $4
mtlo $4
sll $0, $0, 0
TAG714:
mtlo $4
divu $4, $4
beq $4, $4, TAG715
multu $4, $4
TAG715:
sll $0, $0, 0
mthi $4
mtlo $4
bgtz $4, TAG716
TAG716:
mfhi $3
addu $1, $3, $4
mfhi $4
beq $4, $4, TAG717
TAG717:
sra $3, $4, 11
ori $2, $4, 3
sll $0, $0, 0
lb $2, 0($3)
TAG718:
slti $1, $2, 12
mtlo $1
div $1, $2
sb $1, 0($2)
TAG719:
ori $2, $1, 12
bgez $2, TAG720
lui $4, 11
mfhi $4
TAG720:
mtlo $4
sll $0, $0, 0
mflo $2
sltiu $3, $4, 10
TAG721:
mthi $3
multu $3, $3
mult $3, $3
lui $3, 3
TAG722:
blez $3, TAG723
nor $1, $3, $3
lui $2, 13
multu $2, $3
TAG723:
addiu $2, $2, 12
mtlo $2
mfhi $3
xori $4, $2, 0
TAG724:
div $4, $4
sltiu $4, $4, 5
mfhi $3
sb $4, 0($4)
TAG725:
multu $3, $3
multu $3, $3
ori $3, $3, 0
srlv $1, $3, $3
TAG726:
lui $1, 4
blez $1, TAG727
div $1, $1
sll $0, $0, 0
TAG727:
mtlo $1
sll $0, $0, 0
divu $1, $1
subu $2, $1, $1
TAG728:
bne $2, $2, TAG729
multu $2, $2
xor $1, $2, $2
srl $2, $2, 8
TAG729:
sb $2, 0($2)
bgez $2, TAG730
lui $1, 10
mtlo $2
TAG730:
div $1, $1
beq $1, $1, TAG731
and $4, $1, $1
divu $1, $4
TAG731:
mult $4, $4
sll $0, $0, 0
multu $4, $2
lui $2, 12
TAG732:
addiu $2, $2, 3
mtlo $2
sll $0, $0, 0
lui $2, 10
TAG733:
subu $2, $2, $2
lui $1, 8
bgez $2, TAG734
div $2, $1
TAG734:
mfhi $3
bne $3, $3, TAG735
multu $3, $3
bltz $3, TAG735
TAG735:
mtlo $3
mthi $3
mthi $3
bgez $3, TAG736
TAG736:
lui $3, 2
mthi $3
mtlo $3
nor $3, $3, $3
TAG737:
div $3, $3
bne $3, $3, TAG738
srav $3, $3, $3
sh $3, 1($3)
TAG738:
div $3, $3
lui $4, 11
sllv $4, $3, $4
divu $4, $4
TAG739:
multu $4, $4
blez $4, TAG740
multu $4, $4
sw $4, 0($4)
TAG740:
mthi $4
lui $1, 5
bltz $4, TAG741
ori $3, $4, 10
TAG741:
mtlo $3
bne $3, $3, TAG742
div $3, $3
div $3, $3
TAG742:
sll $1, $3, 15
slt $2, $1, $1
ori $1, $1, 13
mfhi $4
TAG743:
sb $4, 0($4)
mult $4, $4
addi $3, $4, 3
ori $1, $3, 1
TAG744:
mtlo $1
mult $1, $1
lui $4, 1
mtlo $4
TAG745:
beq $4, $4, TAG746
sll $0, $0, 0
mflo $3
mthi $4
TAG746:
xori $2, $3, 13
addiu $2, $2, 11
lui $2, 2
addiu $4, $2, 8
TAG747:
mthi $4
beq $4, $4, TAG748
andi $4, $4, 13
lui $4, 14
TAG748:
mthi $4
slt $2, $4, $4
lui $3, 7
xori $3, $4, 0
TAG749:
bne $3, $3, TAG750
sllv $2, $3, $3
bne $3, $3, TAG750
lhu $1, 0($3)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop