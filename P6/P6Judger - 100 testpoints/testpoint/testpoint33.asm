ori $1, $0, 0
ori $2, $0, 15
ori $3, $0, 9
ori $4, $0, 4
sw $1, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $3, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $1, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $2, 124($0)
lbu $1, 0($2)
mfhi $1
mfhi $4
mflo $4
TAG1:
lui $3, 4
sll $0, $0, 0
mtlo $4
xori $2, $4, 6
TAG2:
subu $2, $2, $2
mfhi $4
ori $4, $2, 15
slt $3, $4, $4
TAG3:
multu $3, $3
mthi $3
srl $1, $3, 5
bne $3, $1, TAG4
TAG4:
lui $1, 2
sll $0, $0, 0
bne $1, $1, TAG5
sll $0, $0, 0
TAG5:
bne $1, $1, TAG6
sll $0, $0, 0
bgez $1, TAG6
sll $0, $0, 0
TAG6:
beq $1, $1, TAG7
mthi $1
bgez $1, TAG7
sh $1, 0($1)
TAG7:
slti $3, $1, 2
srav $2, $3, $1
bne $2, $1, TAG8
mfhi $2
TAG8:
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG9
ori $4, $2, 8
TAG9:
beq $4, $4, TAG10
slti $1, $4, 5
mtlo $4
nor $4, $1, $4
TAG10:
xor $1, $4, $4
blez $1, TAG11
mflo $1
lhu $1, 0($1)
TAG11:
mult $1, $1
mfhi $4
lui $3, 14
blez $4, TAG12
TAG12:
lui $4, 5
mtlo $3
bne $3, $3, TAG13
sll $0, $0, 0
TAG13:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG14
xori $2, $4, 11
TAG14:
bgtz $2, TAG15
mthi $2
bne $2, $2, TAG15
xor $4, $2, $2
TAG15:
multu $4, $4
xor $2, $4, $4
bne $2, $2, TAG16
mthi $4
TAG16:
bgez $2, TAG17
sh $2, 0($2)
addu $1, $2, $2
mflo $1
TAG17:
bne $1, $1, TAG18
mthi $1
beq $1, $1, TAG18
mfhi $2
TAG18:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG19
TAG19:
sll $0, $0, 0
sll $0, $0, 0
or $3, $1, $1
sll $0, $0, 0
TAG20:
mtlo $3
addiu $2, $3, 4
mtlo $2
xori $1, $2, 7
TAG21:
sll $0, $0, 0
divu $3, $3
lui $4, 11
ori $3, $4, 4
TAG22:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $3, 0
TAG23:
mfhi $4
mthi $4
lbu $4, 0($3)
mtlo $4
TAG24:
mult $4, $4
lhu $4, 0($4)
sw $4, 0($4)
lui $2, 11
TAG25:
blez $2, TAG26
mfhi $1
sll $0, $0, 0
mtlo $3
TAG26:
subu $2, $3, $3
bgez $2, TAG27
mtlo $3
bgtz $3, TAG27
TAG27:
mult $2, $2
lhu $2, 0($2)
mtlo $2
mtlo $2
TAG28:
mfhi $2
lhu $3, 0($2)
sub $4, $3, $2
mthi $2
TAG29:
sb $4, 0($4)
sltiu $3, $4, 14
mfhi $4
addiu $2, $3, 8
TAG30:
sb $2, 0($2)
addu $4, $2, $2
sltiu $4, $2, 6
sb $2, 0($4)
TAG31:
bltz $4, TAG32
xor $3, $4, $4
lui $2, 5
addiu $4, $2, 10
TAG32:
mthi $4
mflo $3
nor $3, $3, $4
ori $2, $3, 15
TAG33:
beq $2, $2, TAG34
lui $1, 13
sh $1, 0($1)
sra $3, $2, 13
TAG34:
mfhi $3
mthi $3
andi $1, $3, 14
mfhi $2
TAG35:
mtlo $2
mflo $2
slti $2, $2, 11
lb $3, 0($2)
TAG36:
xori $2, $3, 1
mult $3, $3
sh $2, 0($2)
lh $2, 0($2)
TAG37:
sra $3, $2, 6
lhu $4, 0($3)
sb $2, 0($4)
mflo $4
TAG38:
blez $4, TAG39
lui $4, 1
sll $0, $0, 0
mtlo $2
TAG39:
mthi $2
addiu $3, $2, 14
mfhi $2
lbu $3, 0($2)
TAG40:
mthi $3
beq $3, $3, TAG41
mfhi $2
mtlo $3
TAG41:
lh $3, 0($2)
divu $2, $3
mult $2, $2
lw $1, 0($2)
TAG42:
div $1, $1
mthi $1
lhu $3, -2056($1)
mfhi $3
TAG43:
sll $0, $0, 0
bltz $3, TAG44
divu $3, $3
lui $2, 4
TAG44:
mflo $1
and $3, $2, $1
srlv $3, $1, $2
srav $3, $3, $1
TAG45:
addiu $1, $3, 12
sh $1, 0($1)
bgez $3, TAG46
mthi $1
TAG46:
sh $1, 0($1)
mult $1, $1
lw $4, 0($1)
mthi $4
TAG47:
lb $2, 0($4)
beq $4, $4, TAG48
mfhi $3
nor $1, $3, $2
TAG48:
mult $1, $1
bgtz $1, TAG49
sh $1, 0($1)
lui $2, 7
TAG49:
lui $1, 1
mthi $1
lui $2, 10
divu $2, $2
TAG50:
bltz $2, TAG51
andi $3, $2, 5
mult $2, $2
bne $3, $2, TAG51
TAG51:
andi $2, $3, 1
slti $1, $2, 6
mflo $3
bgtz $1, TAG52
TAG52:
add $2, $3, $3
sllv $4, $3, $3
lw $4, 0($3)
mtlo $2
TAG53:
lui $3, 6
xori $1, $3, 14
sb $4, 0($4)
srlv $2, $3, $4
TAG54:
bne $2, $2, TAG55
mflo $2
lui $1, 9
mtlo $2
TAG55:
and $4, $1, $1
mtlo $1
sll $0, $0, 0
lui $3, 6
TAG56:
mfhi $2
sll $0, $0, 0
sll $4, $2, 9
div $2, $3
TAG57:
div $4, $4
mthi $4
srl $1, $4, 4
bne $1, $1, TAG58
TAG58:
subu $2, $1, $1
lui $1, 3
mfhi $2
mflo $1
TAG59:
subu $3, $1, $1
ori $4, $3, 4
sb $3, 0($3)
lbu $2, 0($4)
TAG60:
lui $3, 1
xori $3, $2, 3
divu $3, $2
mtlo $3
TAG61:
mflo $4
and $2, $4, $4
bgez $4, TAG62
addiu $3, $2, 7
TAG62:
mtlo $3
sltiu $3, $3, 5
blez $3, TAG63
mthi $3
TAG63:
mult $3, $3
lhu $3, 0($3)
slti $2, $3, 14
addu $2, $3, $2
TAG64:
mtlo $2
and $3, $2, $2
sb $3, 0($2)
mfhi $3
TAG65:
mthi $3
add $3, $3, $3
lui $2, 5
mtlo $2
TAG66:
beq $2, $2, TAG67
div $2, $2
bgtz $2, TAG67
lui $1, 0
TAG67:
sb $1, 0($1)
divu $1, $1
mflo $2
mfhi $1
TAG68:
bgtz $1, TAG69
slt $4, $1, $1
mfhi $3
mfhi $4
TAG69:
bne $4, $4, TAG70
addi $4, $4, 15
lbu $1, 0($4)
mult $4, $4
TAG70:
sltu $1, $1, $1
bne $1, $1, TAG71
sb $1, 0($1)
multu $1, $1
TAG71:
addiu $3, $1, 12
lui $3, 0
multu $1, $3
mfhi $2
TAG72:
lw $2, 0($2)
lui $1, 13
lui $4, 3
beq $4, $1, TAG73
TAG73:
mfhi $2
lhu $3, 0($2)
lui $3, 12
andi $4, $3, 1
TAG74:
bltz $4, TAG75
lui $1, 14
bgtz $1, TAG75
mthi $1
TAG75:
slti $4, $1, 4
multu $4, $1
mflo $3
mthi $4
TAG76:
bgtz $3, TAG77
sb $3, 0($3)
beq $3, $3, TAG77
mtlo $3
TAG77:
beq $3, $3, TAG78
lui $4, 14
multu $4, $4
multu $4, $3
TAG78:
sll $0, $0, 0
mthi $4
bne $4, $4, TAG79
sll $0, $0, 0
TAG79:
addi $1, $2, 6
srlv $1, $1, $1
lw $3, 0($1)
lh $2, -256($3)
TAG80:
sw $2, -256($2)
lui $4, 10
ori $3, $2, 2
bgez $4, TAG81
TAG81:
nor $4, $3, $3
sb $3, 259($4)
beq $4, $4, TAG82
sb $4, 259($4)
TAG82:
lui $1, 6
sll $3, $4, 13
addiu $3, $1, 3
bltz $3, TAG83
TAG83:
lui $1, 1
div $1, $1
bne $1, $3, TAG84
mthi $3
TAG84:
blez $1, TAG85
addu $1, $1, $1
lui $4, 0
beq $1, $4, TAG85
TAG85:
lui $2, 12
lui $4, 12
addiu $3, $4, 9
divu $2, $2
TAG86:
lui $2, 5
mult $2, $3
mfhi $4
beq $2, $2, TAG87
TAG87:
mult $4, $4
bgtz $4, TAG88
sb $4, 0($4)
lbu $3, 0($4)
TAG88:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
andi $3, $1, 15
TAG89:
beq $3, $3, TAG90
andi $3, $3, 5
bne $3, $3, TAG90
mtlo $3
TAG90:
mult $3, $3
sltiu $3, $3, 5
bgez $3, TAG91
lbu $1, 0($3)
TAG91:
sb $1, 0($1)
bne $1, $1, TAG92
lbu $1, 0($1)
mult $1, $1
TAG92:
mfhi $3
sll $2, $1, 10
lbu $3, 0($3)
bne $1, $3, TAG93
TAG93:
subu $3, $3, $3
lui $3, 0
mthi $3
sb $3, 0($3)
TAG94:
lui $2, 5
mult $2, $3
mtlo $2
subu $3, $3, $2
TAG95:
bgez $3, TAG96
xori $3, $3, 12
blez $3, TAG96
multu $3, $3
TAG96:
blez $3, TAG97
mthi $3
divu $3, $3
bgez $3, TAG97
TAG97:
subu $4, $3, $3
sll $0, $0, 0
or $1, $3, $3
beq $3, $1, TAG98
TAG98:
xori $2, $1, 3
sll $0, $0, 0
mtlo $4
bne $2, $1, TAG99
TAG99:
sw $4, 0($4)
srav $4, $4, $4
lui $2, 2
sll $0, $0, 0
TAG100:
slt $1, $2, $2
mult $2, $2
mfhi $3
addiu $2, $3, 8
TAG101:
lui $1, 13
ori $4, $2, 14
mfhi $1
lui $3, 4
TAG102:
mthi $3
div $3, $3
blez $3, TAG103
sll $0, $0, 0
TAG103:
blez $3, TAG104
srl $2, $3, 10
srav $3, $2, $3
sh $2, -256($3)
TAG104:
sltu $1, $3, $3
blez $1, TAG105
lw $3, -256($3)
sb $1, 0($1)
TAG105:
andi $1, $3, 1
subu $1, $1, $1
sw $1, -256($3)
beq $1, $1, TAG106
TAG106:
lb $3, 0($1)
mflo $2
multu $2, $3
mflo $3
TAG107:
srlv $3, $3, $3
bgtz $3, TAG108
lui $4, 11
lh $1, 0($3)
TAG108:
mult $1, $1
blez $1, TAG109
lui $2, 1
sh $2, 0($1)
TAG109:
div $2, $2
slt $4, $2, $2
sb $2, 0($4)
beq $4, $2, TAG110
TAG110:
mthi $4
mfhi $4
mflo $1
sb $4, 0($1)
TAG111:
mfhi $1
mult $1, $1
bne $1, $1, TAG112
srl $2, $1, 3
TAG112:
and $2, $2, $2
mtlo $2
xor $1, $2, $2
sub $2, $1, $2
TAG113:
lui $3, 3
addu $1, $3, $2
sll $0, $0, 0
srlv $4, $3, $3
TAG114:
beq $4, $4, TAG115
mfhi $2
and $2, $4, $2
sb $2, 0($2)
TAG115:
mthi $2
mult $2, $2
sub $3, $2, $2
blez $2, TAG116
TAG116:
mthi $3
mfhi $3
bgtz $3, TAG117
mult $3, $3
TAG117:
mflo $2
mfhi $4
lui $4, 3
srl $1, $2, 4
TAG118:
mflo $4
mfhi $2
lw $2, 0($1)
mflo $1
TAG119:
sh $1, 0($1)
lui $3, 10
bltz $1, TAG120
sll $0, $0, 0
TAG120:
mult $1, $1
multu $1, $1
slt $4, $1, $1
srav $2, $1, $4
TAG121:
bgez $2, TAG122
sh $2, 0($2)
mtlo $2
beq $2, $2, TAG122
TAG122:
sb $2, 0($2)
lui $1, 10
bgtz $2, TAG123
sw $1, 0($2)
TAG123:
mtlo $1
blez $1, TAG124
sll $0, $0, 0
sll $0, $0, 0
TAG124:
addu $4, $1, $1
bgtz $1, TAG125
sll $0, $0, 0
sb $3, 0($4)
TAG125:
sltiu $3, $3, 4
mfhi $4
mtlo $3
mult $3, $4
TAG126:
blez $4, TAG127
lui $1, 9
mflo $4
mfhi $3
TAG127:
sw $3, 0($3)
addiu $1, $3, 11
mtlo $3
mult $1, $1
TAG128:
lui $1, 9
bltz $1, TAG129
mtlo $1
bgtz $1, TAG129
TAG129:
subu $4, $1, $1
mthi $4
addu $2, $1, $4
bltz $4, TAG130
TAG130:
sll $0, $0, 0
blez $2, TAG131
mtlo $2
mult $2, $2
TAG131:
sll $0, $0, 0
and $1, $2, $1
mflo $1
xor $3, $2, $1
TAG132:
sll $0, $0, 0
xor $3, $3, $3
lui $3, 4
divu $3, $3
TAG133:
bgtz $3, TAG134
sll $0, $0, 0
bgtz $3, TAG134
mfhi $3
TAG134:
sra $3, $3, 10
sh $3, -256($3)
bne $3, $3, TAG135
lui $2, 3
TAG135:
ori $1, $2, 3
bltz $2, TAG136
mflo $1
sll $0, $0, 0
TAG136:
lbu $2, 0($1)
bltz $1, TAG137
nor $1, $2, $1
slti $4, $1, 14
TAG137:
beq $4, $4, TAG138
addu $1, $4, $4
lui $4, 14
sltiu $3, $4, 3
TAG138:
sll $0, $0, 0
sb $4, 0($4)
div $4, $4
lbu $1, 0($4)
TAG139:
mthi $1
lui $3, 6
mflo $2
and $4, $1, $3
TAG140:
beq $4, $4, TAG141
mflo $1
lui $3, 11
sw $3, 0($1)
TAG141:
bgez $3, TAG142
lui $2, 1
mflo $2
mtlo $2
TAG142:
beq $2, $2, TAG143
srlv $3, $2, $2
lui $1, 1
sw $2, 0($2)
TAG143:
beq $1, $1, TAG144
addiu $2, $1, 9
lhu $3, 0($1)
beq $1, $3, TAG144
TAG144:
mtlo $3
or $2, $3, $3
mflo $3
mtlo $2
TAG145:
mthi $3
sll $0, $0, 0
srav $3, $2, $3
lui $2, 6
TAG146:
lui $2, 4
lui $4, 12
mthi $2
lui $4, 7
TAG147:
lui $2, 7
lui $1, 9
mflo $4
sll $0, $0, 0
TAG148:
lui $3, 7
mfhi $1
lui $3, 0
bne $3, $1, TAG149
TAG149:
lbu $3, 0($3)
sb $3, 0($3)
sb $3, 0($3)
mthi $3
TAG150:
multu $3, $3
bgtz $3, TAG151
lui $4, 10
sll $0, $0, 0
TAG151:
addu $4, $1, $1
multu $4, $4
mtlo $1
lui $2, 15
TAG152:
mfhi $1
mflo $2
andi $4, $2, 6
mflo $3
TAG153:
sll $0, $0, 0
mfhi $3
mtlo $3
sh $3, 0($3)
TAG154:
mflo $4
xor $1, $4, $3
sb $3, 0($3)
bne $1, $3, TAG155
TAG155:
mfhi $3
mthi $3
lui $2, 8
sw $1, 0($3)
TAG156:
lui $3, 6
mtlo $3
sll $0, $0, 0
subu $2, $3, $3
TAG157:
beq $2, $2, TAG158
mthi $2
sb $2, 0($2)
lui $2, 13
TAG158:
lhu $1, 0($2)
sh $2, -256($1)
sw $1, -256($1)
beq $1, $2, TAG159
TAG159:
sll $0, $0, 0
lhu $2, -256($1)
bne $1, $2, TAG160
sw $2, -256($1)
TAG160:
sll $0, $0, 0
beq $2, $3, TAG161
mflo $2
mtlo $3
TAG161:
sll $0, $0, 0
divu $2, $2
srl $2, $2, 12
mtlo $2
TAG162:
lb $3, 0($2)
xori $1, $3, 9
lbu $2, 0($1)
lb $2, 0($2)
TAG163:
sb $2, 0($2)
div $2, $2
mthi $2
andi $3, $2, 14
TAG164:
multu $3, $3
beq $3, $3, TAG165
lui $1, 10
bgez $3, TAG165
TAG165:
xori $2, $1, 6
sra $3, $1, 13
mthi $2
beq $2, $3, TAG166
TAG166:
lh $3, 0($3)
beq $3, $3, TAG167
sh $3, 0($3)
mtlo $3
TAG167:
addu $2, $3, $3
sltu $4, $3, $2
mtlo $2
mflo $1
TAG168:
addiu $1, $1, 3
sb $1, 0($1)
lui $1, 8
sll $0, $0, 0
TAG169:
sll $0, $0, 0
bne $1, $1, TAG170
div $1, $1
bne $1, $1, TAG170
TAG170:
sll $0, $0, 0
bltz $1, TAG171
addiu $3, $1, 11
lui $3, 5
TAG171:
srl $2, $3, 11
bne $3, $3, TAG172
sll $0, $0, 0
sll $0, $0, 0
TAG172:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 0
divu $4, $2
TAG173:
mtlo $4
beq $4, $4, TAG174
mfhi $2
lb $1, 0($4)
TAG174:
lui $3, 10
mult $1, $1
lui $3, 14
sll $0, $0, 0
TAG175:
lui $3, 10
andi $4, $3, 11
mfhi $1
lh $2, 0($4)
TAG176:
lui $2, 5
lui $3, 10
xori $1, $2, 13
div $3, $2
TAG177:
mult $1, $1
sll $0, $0, 0
sllv $1, $2, $1
sll $0, $0, 0
TAG178:
lui $3, 1
sll $0, $0, 0
sll $0, $0, 0
lui $1, 11
TAG179:
sll $0, $0, 0
bgtz $1, TAG180
mtlo $2
lw $2, 0($1)
TAG180:
bne $2, $2, TAG181
multu $2, $2
mflo $2
slti $3, $2, 6
TAG181:
andi $4, $3, 10
mflo $2
bltz $3, TAG182
mtlo $3
TAG182:
sub $1, $2, $2
mfhi $3
mtlo $1
sb $1, 0($3)
TAG183:
sb $3, 0($3)
beq $3, $3, TAG184
mthi $3
mult $3, $3
TAG184:
sb $3, 0($3)
mfhi $4
lui $3, 15
mtlo $4
TAG185:
ori $4, $3, 15
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG186:
or $3, $4, $4
beq $4, $3, TAG187
sll $0, $0, 0
bne $4, $3, TAG187
TAG187:
mthi $3
mfhi $3
mthi $3
slti $3, $3, 12
TAG188:
mult $3, $3
mflo $3
lui $2, 8
mult $3, $3
TAG189:
sll $0, $0, 0
mtlo $4
bgtz $2, TAG190
lui $3, 6
TAG190:
lui $1, 5
beq $3, $3, TAG191
mtlo $3
srlv $2, $3, $1
TAG191:
bgez $2, TAG192
mfhi $3
sh $3, 0($3)
xori $4, $2, 1
TAG192:
sll $0, $0, 0
mfhi $2
mflo $1
bgez $1, TAG193
TAG193:
mfhi $1
lh $2, 0($1)
mthi $1
lui $3, 4
TAG194:
xori $4, $3, 6
bltz $3, TAG195
sll $0, $0, 0
lui $4, 11
TAG195:
div $4, $4
beq $4, $4, TAG196
lui $2, 12
lhu $2, 0($4)
TAG196:
mult $2, $2
slti $3, $2, 5
srav $1, $2, $3
bne $2, $2, TAG197
TAG197:
lui $4, 2
mthi $1
sll $0, $0, 0
lui $1, 5
TAG198:
lui $3, 5
sll $0, $0, 0
addu $1, $1, $1
srl $4, $1, 13
TAG199:
mfhi $3
slti $1, $4, 15
sb $3, 0($1)
div $1, $3
TAG200:
sh $1, 0($1)
beq $1, $1, TAG201
sra $1, $1, 0
xor $1, $1, $1
TAG201:
sltu $4, $1, $1
xori $3, $1, 1
multu $1, $1
multu $4, $4
TAG202:
lbu $2, 0($3)
bgez $2, TAG203
lui $1, 5
bne $3, $3, TAG203
TAG203:
mtlo $1
bgtz $1, TAG204
mtlo $1
sh $1, 0($1)
TAG204:
mfhi $2
lui $3, 4
mult $2, $2
sll $0, $0, 0
TAG205:
addu $1, $3, $3
mflo $3
srl $3, $3, 9
mflo $2
TAG206:
lhu $3, 0($2)
lhu $2, 0($2)
beq $3, $2, TAG207
mult $2, $3
TAG207:
lb $4, 0($2)
sra $4, $2, 11
lui $2, 11
lui $1, 1
TAG208:
addiu $2, $1, 3
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG209:
lui $2, 8
div $2, $2
sll $0, $0, 0
ori $2, $2, 6
TAG210:
sll $0, $0, 0
lui $3, 13
bgez $3, TAG211
div $3, $3
TAG211:
addu $1, $3, $3
beq $1, $3, TAG212
slti $2, $3, 5
bgtz $1, TAG212
TAG212:
lb $3, 0($2)
lui $1, 0
lui $2, 11
blez $2, TAG213
TAG213:
lui $2, 4
subu $3, $2, $2
mthi $2
sll $0, $0, 0
TAG214:
lb $4, 0($3)
beq $3, $4, TAG215
lui $4, 10
mflo $1
TAG215:
sb $1, 0($1)
mflo $1
bgtz $1, TAG216
sb $1, 0($1)
TAG216:
sb $1, 0($1)
sb $1, 0($1)
lbu $4, 0($1)
lb $1, 0($1)
TAG217:
lui $1, 8
sltu $2, $1, $1
sll $0, $0, 0
addu $1, $2, $2
TAG218:
mtlo $1
mflo $3
bne $1, $3, TAG219
sw $3, 0($1)
TAG219:
beq $3, $3, TAG220
lui $4, 8
beq $3, $4, TAG220
sh $4, 0($4)
TAG220:
mfhi $1
sll $0, $0, 0
mflo $2
multu $2, $4
TAG221:
lui $4, 15
sra $2, $2, 12
bgtz $4, TAG222
addiu $2, $2, 13
TAG222:
multu $2, $2
slti $3, $2, 14
div $3, $3
sra $3, $2, 13
TAG223:
bne $3, $3, TAG224
mfhi $2
mflo $1
sb $1, 0($1)
TAG224:
mflo $4
lb $1, 0($4)
bne $1, $1, TAG225
sb $1, 0($1)
TAG225:
lui $4, 11
lui $4, 14
mflo $1
bne $1, $1, TAG226
TAG226:
sb $1, 0($1)
lui $2, 8
multu $1, $1
lb $4, 0($1)
TAG227:
blez $4, TAG228
lui $2, 11
srlv $4, $4, $2
bgtz $4, TAG228
TAG228:
lui $1, 7
sltiu $1, $4, 14
bgtz $1, TAG229
mtlo $1
TAG229:
lb $3, 0($1)
beq $3, $3, TAG230
xori $3, $1, 14
mflo $1
TAG230:
mfhi $1
bne $1, $1, TAG231
slt $1, $1, $1
sltiu $3, $1, 12
TAG231:
mult $3, $3
srl $3, $3, 7
sw $3, 0($3)
addu $1, $3, $3
TAG232:
beq $1, $1, TAG233
mthi $1
subu $3, $1, $1
lh $3, 0($1)
TAG233:
xori $4, $3, 10
lbu $1, 0($3)
lw $1, 0($1)
multu $3, $1
TAG234:
lh $3, 0($1)
sub $3, $1, $3
bne $3, $3, TAG235
lh $1, 0($3)
TAG235:
mthi $1
andi $4, $1, 15
mtlo $1
sb $1, 0($1)
TAG236:
sw $4, 0($4)
mflo $1
sltu $3, $4, $4
sh $4, 0($3)
TAG237:
bltz $3, TAG238
sb $3, 0($3)
xori $4, $3, 3
mthi $4
TAG238:
lui $4, 0
beq $4, $4, TAG239
addiu $2, $4, 10
bgtz $4, TAG239
TAG239:
lhu $3, 0($2)
addiu $2, $2, 8
ori $2, $2, 11
mthi $2
TAG240:
mfhi $1
sb $1, 0($1)
bgez $2, TAG241
addiu $2, $2, 11
TAG241:
srlv $4, $2, $2
lui $4, 12
mflo $3
srav $1, $4, $4
TAG242:
ori $3, $1, 1
lui $3, 9
sra $1, $3, 6
bgez $3, TAG243
TAG243:
sll $0, $0, 0
lui $1, 9
div $1, $1
srlv $3, $1, $1
TAG244:
mtlo $3
beq $3, $3, TAG245
nor $3, $3, $3
lw $1, 0($3)
TAG245:
sll $0, $0, 0
lui $3, 2
mflo $3
lui $3, 0
TAG246:
lbu $4, 0($3)
beq $3, $3, TAG247
lui $2, 14
beq $2, $2, TAG247
TAG247:
mtlo $2
beq $2, $2, TAG248
mfhi $2
lui $3, 3
TAG248:
beq $3, $3, TAG249
sll $2, $3, 6
mthi $2
or $1, $2, $3
TAG249:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
TAG250:
lh $2, 0($4)
multu $4, $2
lw $2, 0($2)
mfhi $3
TAG251:
bne $3, $3, TAG252
addiu $1, $3, 7
lb $4, 0($3)
bne $4, $4, TAG252
TAG252:
mthi $4
lui $1, 0
sb $1, 0($1)
sll $3, $1, 10
TAG253:
addi $1, $3, 4
lh $1, 0($3)
sra $1, $1, 7
slti $1, $3, 9
TAG254:
bltz $1, TAG255
nor $4, $1, $1
sw $4, 2($4)
sw $4, 2($4)
TAG255:
andi $4, $4, 4
divu $4, $4
lui $4, 9
mflo $3
TAG256:
div $3, $3
lbu $1, 0($3)
lui $2, 4
mtlo $2
TAG257:
sll $0, $0, 0
mflo $1
mfhi $4
bgez $1, TAG258
TAG258:
mult $4, $4
andi $3, $4, 10
slti $4, $3, 10
lui $2, 1
TAG259:
beq $2, $2, TAG260
mult $2, $2
mfhi $3
sw $2, 0($2)
TAG260:
multu $3, $3
lb $4, 0($3)
addiu $2, $4, 8
bne $3, $4, TAG261
TAG261:
lui $1, 4
srav $2, $1, $1
mfhi $3
sll $0, $0, 0
TAG262:
sw $3, 0($3)
mult $3, $3
sw $3, 0($3)
beq $3, $3, TAG263
TAG263:
ori $4, $3, 12
bltz $3, TAG264
sltiu $4, $3, 3
mtlo $4
TAG264:
lbu $1, 0($4)
beq $4, $1, TAG265
divu $4, $4
lui $3, 8
TAG265:
mflo $3
divu $3, $3
lbu $2, 0($3)
lui $4, 3
TAG266:
bne $4, $4, TAG267
mfhi $3
divu $4, $4
sll $0, $0, 0
TAG267:
sw $3, 0($3)
mthi $3
bgtz $3, TAG268
sb $3, 0($3)
TAG268:
mflo $1
lui $4, 1
mtlo $1
mflo $3
TAG269:
andi $3, $3, 0
andi $3, $3, 1
bgez $3, TAG270
and $1, $3, $3
TAG270:
mflo $1
lui $2, 7
srl $1, $1, 14
div $2, $2
TAG271:
lui $3, 11
mflo $4
mfhi $3
mthi $1
TAG272:
lui $4, 1
slti $3, $3, 8
sb $4, 0($3)
blez $3, TAG273
TAG273:
lui $4, 10
beq $3, $3, TAG274
slti $2, $4, 12
divu $3, $2
TAG274:
sh $2, 0($2)
lui $4, 2
bne $4, $4, TAG275
addiu $3, $4, 2
TAG275:
bltz $3, TAG276
mflo $4
mfhi $2
mflo $4
TAG276:
lui $3, 14
beq $4, $3, TAG277
divu $4, $4
divu $3, $3
TAG277:
bne $3, $3, TAG278
mtlo $3
lui $2, 11
sll $0, $0, 0
TAG278:
lui $2, 2
addiu $4, $2, 1
divu $4, $4
sll $0, $0, 0
TAG279:
bne $2, $2, TAG280
lui $1, 5
ori $3, $2, 7
sll $0, $0, 0
TAG280:
sll $0, $0, 0
mthi $2
bgtz $2, TAG281
div $3, $3
TAG281:
mflo $4
sll $0, $0, 0
mthi $4
lui $4, 0
TAG282:
lui $1, 10
sltu $3, $4, $4
sll $0, $0, 0
multu $4, $1
TAG283:
lh $4, 0($3)
sw $3, 0($4)
lui $3, 1
mfhi $2
TAG284:
addu $3, $2, $2
bne $2, $2, TAG285
sh $3, 0($3)
lui $4, 10
TAG285:
mfhi $1
mfhi $1
lui $3, 7
xori $2, $4, 1
TAG286:
andi $3, $2, 10
subu $1, $3, $2
srlv $2, $1, $2
or $4, $2, $2
TAG287:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
lui $1, 9
TAG288:
and $3, $1, $1
srl $1, $3, 0
bgez $1, TAG289
sll $0, $0, 0
TAG289:
sll $0, $0, 0
bne $2, $2, TAG290
or $4, $2, $2
mfhi $3
TAG290:
bne $3, $3, TAG291
sll $4, $3, 13
lhu $3, 0($4)
mfhi $3
TAG291:
bne $3, $3, TAG292
multu $3, $3
mtlo $3
sh $3, 0($3)
TAG292:
sll $4, $3, 3
multu $3, $3
bne $3, $3, TAG293
addu $3, $4, $3
TAG293:
ori $2, $3, 11
mult $3, $3
lbu $4, 0($3)
lbu $4, 0($3)
TAG294:
bltz $4, TAG295
sb $4, 0($4)
mtlo $4
mflo $2
TAG295:
nor $1, $2, $2
sh $1, 0($2)
sltiu $4, $2, 12
or $4, $2, $2
TAG296:
lui $1, 6
bne $1, $1, TAG297
sll $0, $0, 0
sll $0, $0, 0
TAG297:
multu $2, $2
mflo $3
addu $4, $2, $2
sb $3, 0($3)
TAG298:
beq $4, $4, TAG299
mthi $4
lb $3, 0($4)
bltz $4, TAG299
TAG299:
mfhi $2
srlv $3, $2, $2
sltu $3, $3, $3
multu $3, $3
TAG300:
srl $1, $3, 7
beq $1, $1, TAG301
sw $3, 0($3)
srl $2, $1, 0
TAG301:
beq $2, $2, TAG302
sw $2, 0($2)
sh $2, 0($2)
lb $3, 0($2)
TAG302:
sw $3, 0($3)
mflo $3
slti $2, $3, 4
lui $1, 4
TAG303:
sll $0, $0, 0
bne $1, $1, TAG304
sll $0, $0, 0
mthi $1
TAG304:
bltz $1, TAG305
divu $1, $1
bltz $1, TAG305
mflo $1
TAG305:
sb $1, 0($1)
mthi $1
bgez $1, TAG306
lui $3, 13
TAG306:
beq $3, $3, TAG307
mfhi $4
mult $4, $3
sb $3, 0($4)
TAG307:
lbu $4, 0($4)
bne $4, $4, TAG308
divu $4, $4
mflo $4
TAG308:
sb $4, 0($4)
bgez $4, TAG309
lbu $4, 0($4)
bgtz $4, TAG309
TAG309:
ori $1, $4, 15
lui $4, 13
mtlo $1
addiu $3, $1, 4
TAG310:
lb $4, 0($3)
lw $2, 0($4)
lb $4, 0($3)
multu $2, $4
TAG311:
multu $4, $4
mult $4, $4
sh $4, 0($4)
mfhi $2
TAG312:
andi $3, $2, 8
bne $3, $3, TAG313
lbu $4, 0($3)
mtlo $3
TAG313:
lhu $2, 0($4)
multu $4, $2
lw $2, 0($2)
bne $2, $2, TAG314
TAG314:
mfhi $2
bne $2, $2, TAG315
slt $1, $2, $2
ori $1, $1, 9
TAG315:
mthi $1
andi $1, $1, 6
bne $1, $1, TAG316
lui $4, 14
TAG316:
lui $2, 8
sltu $1, $2, $4
or $3, $4, $4
lui $1, 12
TAG317:
lui $3, 5
lui $3, 8
lui $4, 14
sll $0, $0, 0
TAG318:
mflo $4
sw $4, 0($4)
bne $4, $4, TAG319
addiu $2, $4, 11
TAG319:
mthi $2
mflo $2
lb $3, 0($2)
sw $3, 0($3)
TAG320:
lw $1, 0($3)
sra $4, $3, 6
bne $3, $1, TAG321
lbu $4, 0($1)
TAG321:
mfhi $1
xor $2, $1, $4
beq $4, $1, TAG322
subu $4, $4, $2
TAG322:
bne $4, $4, TAG323
slti $2, $4, 6
lui $4, 9
sll $0, $0, 0
TAG323:
mflo $1
ori $2, $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG324:
multu $4, $4
lui $3, 10
sra $2, $4, 15
sllv $2, $3, $2
TAG325:
bgez $2, TAG326
lb $1, 0($2)
beq $1, $1, TAG326
lbu $2, 0($2)
TAG326:
bne $2, $2, TAG327
xor $1, $2, $2
beq $2, $2, TAG327
sb $2, 0($1)
TAG327:
lui $4, 14
lui $3, 8
mfhi $2
mult $4, $3
TAG328:
mflo $4
addiu $4, $4, 3
lui $3, 15
lui $2, 15
TAG329:
mfhi $3
sll $4, $3, 5
mflo $4
sltu $2, $3, $4
TAG330:
bne $2, $2, TAG331
ori $1, $2, 5
lui $2, 9
mflo $4
TAG331:
bltz $4, TAG332
xori $4, $4, 8
mflo $2
multu $4, $2
TAG332:
mflo $2
lui $1, 4
mtlo $2
lui $2, 3
TAG333:
sll $0, $0, 0
lbu $2, 0($3)
xor $4, $3, $2
lb $4, 0($2)
TAG334:
sltiu $2, $4, 8
addu $2, $2, $2
blez $4, TAG335
mthi $2
TAG335:
lhu $1, 0($2)
sb $1, 0($2)
lbu $1, 0($1)
beq $1, $1, TAG336
TAG336:
sltu $4, $1, $1
bne $4, $4, TAG337
mfhi $2
slti $3, $1, 7
TAG337:
div $3, $3
addu $1, $3, $3
mthi $3
sb $1, 0($3)
TAG338:
sh $1, 0($1)
srav $3, $1, $1
lui $3, 15
mtlo $3
TAG339:
lui $1, 9
sll $0, $0, 0
bltz $1, TAG340
mfhi $4
TAG340:
mfhi $3
sb $3, 0($3)
mult $4, $4
mflo $2
TAG341:
sllv $3, $2, $2
mflo $3
lbu $3, 0($3)
mtlo $3
TAG342:
lui $2, 11
mfhi $1
lui $2, 7
mflo $3
TAG343:
bne $3, $3, TAG344
sb $3, 0($3)
mfhi $3
mtlo $3
TAG344:
nor $1, $3, $3
mflo $2
bltz $2, TAG345
sw $1, 0($2)
TAG345:
beq $2, $2, TAG346
lh $1, 0($2)
blez $1, TAG346
lw $2, 0($2)
TAG346:
lh $4, 0($2)
sltu $4, $4, $2
nor $2, $4, $4
bne $4, $2, TAG347
TAG347:
mthi $2
sh $2, 1($2)
ori $4, $2, 12
bgtz $2, TAG348
TAG348:
nor $4, $4, $4
nor $3, $4, $4
multu $4, $3
lui $1, 11
TAG349:
beq $1, $1, TAG350
sltiu $4, $1, 15
lbu $1, 0($1)
sb $1, 0($1)
TAG350:
lui $4, 7
sll $0, $0, 0
or $1, $4, $1
beq $1, $1, TAG351
TAG351:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG352
sll $0, $0, 0
TAG352:
mult $1, $1
beq $1, $1, TAG353
mflo $3
srlv $3, $1, $1
TAG353:
mthi $3
bne $3, $3, TAG354
sw $3, 0($3)
sh $3, 0($3)
TAG354:
bltz $3, TAG355
mthi $3
bne $3, $3, TAG355
sw $3, 0($3)
TAG355:
mthi $3
lui $3, 12
beq $3, $3, TAG356
sltu $3, $3, $3
TAG356:
lui $1, 3
slti $3, $3, 12
xor $1, $3, $3
and $3, $1, $3
TAG357:
lb $3, 0($3)
sw $3, 0($3)
sh $3, 0($3)
addu $2, $3, $3
TAG358:
bne $2, $2, TAG359
sb $2, 0($2)
xor $1, $2, $2
sra $4, $1, 10
TAG359:
mtlo $4
lui $2, 11
beq $4, $2, TAG360
lui $1, 2
TAG360:
div $1, $1
beq $1, $1, TAG361
srl $1, $1, 5
mult $1, $1
TAG361:
andi $2, $1, 15
bgtz $2, TAG362
mthi $2
bgtz $1, TAG362
TAG362:
andi $2, $2, 8
sb $2, 0($2)
bgez $2, TAG363
lui $4, 2
TAG363:
mthi $4
divu $4, $4
sll $0, $0, 0
mthi $4
TAG364:
mthi $4
mult $4, $4
blez $4, TAG365
mtlo $4
TAG365:
addiu $4, $4, 12
srlv $2, $4, $4
sh $2, 0($2)
subu $4, $4, $4
TAG366:
beq $4, $4, TAG367
srav $1, $4, $4
beq $4, $4, TAG367
mfhi $4
TAG367:
lui $2, 15
lbu $3, 0($4)
lbu $3, 0($4)
mfhi $4
TAG368:
sw $4, 0($4)
multu $4, $4
bgtz $4, TAG369
srl $3, $4, 10
TAG369:
mtlo $3
sllv $4, $3, $3
bgtz $3, TAG370
lhu $3, 0($4)
TAG370:
mflo $3
mfhi $3
lui $1, 6
lhu $1, 0($3)
TAG371:
mthi $1
mflo $4
multu $1, $4
mtlo $1
TAG372:
mthi $4
sw $4, 0($4)
lbu $3, 0($4)
blez $3, TAG373
TAG373:
mfhi $1
mflo $4
mult $1, $4
multu $4, $3
TAG374:
blez $4, TAG375
mfhi $2
add $3, $4, $4
mult $2, $4
TAG375:
mthi $3
sll $3, $3, 4
lui $1, 13
mtlo $3
TAG376:
beq $1, $1, TAG377
div $1, $1
mflo $4
lui $2, 4
TAG377:
bne $2, $2, TAG378
mfhi $3
sb $3, 0($2)
bgez $3, TAG378
TAG378:
mflo $3
mthi $3
mfhi $4
lbu $3, 0($3)
TAG379:
multu $3, $3
mult $3, $3
mflo $4
addu $4, $4, $4
TAG380:
addu $2, $4, $4
sltiu $2, $4, 15
mfhi $3
mtlo $3
TAG381:
mthi $3
mtlo $3
beq $3, $3, TAG382
xor $1, $3, $3
TAG382:
xori $1, $1, 15
mflo $1
lui $3, 11
bltz $1, TAG383
TAG383:
sll $0, $0, 0
bne $3, $3, TAG384
sll $0, $0, 0
xori $3, $3, 13
TAG384:
sll $0, $0, 0
mthi $3
or $1, $3, $3
mthi $1
TAG385:
multu $1, $1
lui $4, 8
sll $0, $0, 0
bgez $1, TAG386
TAG386:
mtlo $4
multu $4, $4
subu $2, $4, $4
mthi $2
TAG387:
mfhi $2
lui $1, 7
addiu $1, $1, 11
mthi $1
TAG388:
mflo $3
lb $3, 0($3)
beq $1, $3, TAG389
xor $3, $3, $3
TAG389:
xor $2, $3, $3
multu $3, $3
addu $3, $2, $2
sb $2, 0($3)
TAG390:
sw $3, 0($3)
bne $3, $3, TAG391
lhu $3, 0($3)
mult $3, $3
TAG391:
bgtz $3, TAG392
mthi $3
lw $1, 0($3)
mthi $1
TAG392:
sh $1, 0($1)
mfhi $3
lb $3, 0($3)
lui $2, 9
TAG393:
sll $0, $0, 0
addiu $4, $2, 2
bne $4, $4, TAG394
lui $3, 7
TAG394:
sll $0, $0, 0
ori $2, $3, 15
bne $3, $3, TAG395
lui $4, 1
TAG395:
multu $4, $4
sra $3, $4, 11
addu $1, $4, $4
divu $1, $4
TAG396:
divu $1, $1
beq $1, $1, TAG397
sll $0, $0, 0
or $2, $1, $1
TAG397:
sllv $2, $2, $2
sll $0, $0, 0
addiu $4, $2, 0
srlv $4, $2, $2
TAG398:
mfhi $1
bne $1, $1, TAG399
lui $2, 14
sll $0, $0, 0
TAG399:
lui $2, 14
ori $1, $2, 5
beq $1, $2, TAG400
mtlo $2
TAG400:
mflo $3
lui $2, 0
addu $3, $3, $3
sll $0, $0, 0
TAG401:
mthi $3
lui $1, 8
bgez $3, TAG402
mtlo $3
TAG402:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
bgtz $1, TAG403
TAG403:
lui $2, 6
div $1, $1
lui $2, 3
bgez $2, TAG404
TAG404:
slti $1, $2, 13
mfhi $4
sb $1, 0($1)
mult $1, $4
TAG405:
sra $2, $4, 10
mult $2, $4
mflo $4
or $3, $2, $4
TAG406:
bgtz $3, TAG407
mthi $3
xor $2, $3, $3
lw $1, 0($2)
TAG407:
mtlo $1
mtlo $1
sb $1, 0($1)
addu $1, $1, $1
TAG408:
beq $1, $1, TAG409
add $4, $1, $1
nor $4, $1, $1
srlv $1, $4, $4
TAG409:
lui $2, 14
slti $3, $1, 10
mtlo $3
mtlo $3
TAG410:
sb $3, 0($3)
mfhi $3
lui $3, 15
mult $3, $3
TAG411:
sll $0, $0, 0
sllv $4, $3, $3
addu $3, $4, $3
ori $2, $3, 15
TAG412:
bne $2, $2, TAG413
sll $0, $0, 0
lui $4, 6
addiu $1, $2, 11
TAG413:
bne $1, $1, TAG414
sll $0, $0, 0
bne $1, $1, TAG414
sll $0, $0, 0
TAG414:
multu $2, $2
mflo $2
sllv $4, $2, $2
sll $0, $0, 0
TAG415:
mthi $4
mflo $2
bgtz $4, TAG416
lui $1, 12
TAG416:
sll $0, $0, 0
bne $3, $1, TAG417
srlv $2, $1, $3
mflo $2
TAG417:
mthi $2
addu $3, $2, $2
mflo $4
sll $0, $0, 0
TAG418:
xori $2, $3, 4
bne $2, $3, TAG419
sll $0, $0, 0
mflo $3
TAG419:
sltu $4, $3, $3
mthi $4
mult $4, $4
mfhi $3
TAG420:
lw $1, 0($3)
sltiu $3, $3, 9
ori $4, $3, 5
bgez $3, TAG421
TAG421:
addiu $1, $4, 3
sw $1, 0($1)
mfhi $3
divu $3, $4
TAG422:
lw $2, 0($3)
mthi $3
subu $4, $3, $2
bgez $2, TAG423
TAG423:
lui $1, 11
subu $1, $1, $1
multu $1, $4
mflo $1
TAG424:
slt $1, $1, $1
sh $1, 0($1)
bgez $1, TAG425
mthi $1
TAG425:
mfhi $1
srav $2, $1, $1
multu $2, $1
nor $3, $1, $2
TAG426:
mflo $3
multu $3, $3
add $1, $3, $3
addiu $4, $1, 10
TAG427:
mtlo $4
addiu $2, $4, 13
mfhi $1
addiu $1, $1, 5
TAG428:
mthi $1
subu $1, $1, $1
mtlo $1
bltz $1, TAG429
TAG429:
lui $2, 13
bgtz $2, TAG430
mthi $2
add $3, $2, $2
TAG430:
sltiu $3, $3, 9
mthi $3
lui $4, 10
lbu $1, 0($3)
TAG431:
beq $1, $1, TAG432
mfhi $1
subu $4, $1, $1
lw $2, 0($1)
TAG432:
mtlo $2
beq $2, $2, TAG433
mtlo $2
andi $2, $2, 13
TAG433:
lui $4, 6
addiu $4, $2, 13
mflo $3
bltz $3, TAG434
TAG434:
and $1, $3, $3
blez $3, TAG435
sra $2, $3, 15
mult $1, $1
TAG435:
bne $2, $2, TAG436
addu $4, $2, $2
mflo $1
beq $1, $2, TAG436
TAG436:
sh $1, 0($1)
sw $1, 0($1)
sh $1, 0($1)
mtlo $1
TAG437:
blez $1, TAG438
ori $4, $1, 13
lb $1, 0($4)
addi $3, $4, 15
TAG438:
bne $3, $3, TAG439
lui $4, 10
bltz $3, TAG439
sll $0, $0, 0
TAG439:
lui $4, 0
bltz $4, TAG440
add $4, $4, $4
bne $4, $4, TAG440
TAG440:
mtlo $4
lh $2, 0($4)
lui $1, 5
add $4, $2, $2
TAG441:
lbu $2, 0($4)
multu $4, $2
sw $2, 0($2)
bne $2, $2, TAG442
TAG442:
sw $2, 0($2)
multu $2, $2
lui $2, 1
sll $0, $0, 0
TAG443:
sltiu $3, $2, 4
lui $2, 7
mthi $3
slti $2, $2, 15
TAG444:
mflo $4
beq $4, $2, TAG445
sra $3, $2, 14
mtlo $3
TAG445:
bgez $3, TAG446
lui $1, 9
mtlo $1
slti $3, $1, 4
TAG446:
mthi $3
xor $4, $3, $3
sb $4, 0($4)
nor $3, $3, $4
TAG447:
sll $0, $0, 0
lb $3, 1($3)
lb $3, 0($3)
lui $2, 6
TAG448:
beq $2, $2, TAG449
mfhi $3
bne $2, $3, TAG449
mfhi $1
TAG449:
addiu $4, $1, 2
mflo $4
lui $4, 5
sll $0, $0, 0
TAG450:
sh $3, 0($3)
lui $1, 0
beq $1, $1, TAG451
lb $1, 0($3)
TAG451:
slti $3, $1, 0
mthi $1
mfhi $1
mult $3, $1
TAG452:
xor $1, $1, $1
lui $1, 14
sll $0, $0, 0
bne $1, $1, TAG453
TAG453:
mflo $3
sra $4, $1, 11
nor $4, $3, $1
div $1, $4
TAG454:
lui $4, 0
multu $4, $4
sw $4, 0($4)
lh $2, 0($4)
TAG455:
beq $2, $2, TAG456
mult $2, $2
mflo $2
bgtz $2, TAG456
TAG456:
subu $1, $2, $2
lui $2, 6
mflo $3
addi $3, $1, 1
TAG457:
slti $3, $3, 14
mthi $3
mthi $3
bne $3, $3, TAG458
TAG458:
sb $3, 0($3)
ori $1, $3, 12
mflo $3
mult $1, $3
TAG459:
lui $3, 6
slt $3, $3, $3
lui $3, 2
div $3, $3
TAG460:
divu $3, $3
bltz $3, TAG461
lui $2, 3
sll $0, $0, 0
TAG461:
lui $2, 7
divu $2, $2
subu $4, $2, $2
lui $3, 5
TAG462:
sll $0, $0, 0
divu $3, $3
div $3, $3
mflo $3
TAG463:
lui $2, 5
blez $2, TAG464
lui $1, 3
lb $1, 0($3)
TAG464:
lbu $4, 0($1)
mthi $4
addu $4, $4, $4
lb $4, 0($1)
TAG465:
lbu $3, 0($4)
mfhi $3
bne $4, $4, TAG466
mflo $2
TAG466:
srav $4, $2, $2
div $4, $2
mthi $4
lui $2, 5
TAG467:
sll $0, $0, 0
lui $3, 15
mflo $2
srav $2, $3, $2
TAG468:
beq $2, $2, TAG469
lui $1, 1
srlv $3, $2, $2
divu $1, $3
TAG469:
mfhi $2
sh $2, 0($2)
mtlo $3
mflo $3
TAG470:
sll $0, $0, 0
addiu $2, $1, 0
bltz $3, TAG471
sltiu $4, $1, 7
TAG471:
lui $3, 7
or $2, $4, $3
mthi $3
lui $4, 14
TAG472:
lui $3, 4
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG473:
sll $0, $0, 0
andi $2, $4, 11
divu $2, $4
bne $4, $2, TAG474
TAG474:
multu $2, $2
srav $4, $2, $2
lui $1, 15
sll $0, $0, 0
TAG475:
bne $1, $1, TAG476
slt $1, $1, $1
sll $2, $1, 9
bgez $1, TAG476
TAG476:
sh $2, 0($2)
lbu $3, 0($2)
lui $3, 8
sll $3, $3, 9
TAG477:
divu $3, $3
blez $3, TAG478
sll $0, $0, 0
slt $1, $4, $4
TAG478:
sh $1, 0($1)
mthi $1
sb $1, 0($1)
lbu $4, 0($1)
TAG479:
sh $4, 0($4)
bne $4, $4, TAG480
mtlo $4
srav $4, $4, $4
TAG480:
sra $2, $4, 8
bne $4, $2, TAG481
multu $2, $2
bne $4, $2, TAG481
TAG481:
lui $2, 3
beq $2, $2, TAG482
divu $2, $2
sltiu $3, $2, 10
TAG482:
sll $0, $0, 0
lui $1, 15
andi $2, $4, 9
mult $1, $3
TAG483:
sra $1, $2, 8
lhu $4, 0($2)
sw $2, 0($4)
bne $4, $4, TAG484
TAG484:
sb $4, 0($4)
multu $4, $4
xor $1, $4, $4
srlv $2, $1, $1
TAG485:
mflo $1
mthi $1
mtlo $2
blez $2, TAG486
TAG486:
lbu $1, 0($1)
lhu $1, 0($1)
mtlo $1
mthi $1
TAG487:
mthi $1
mult $1, $1
sh $1, 0($1)
mtlo $1
TAG488:
mult $1, $1
lui $3, 9
blez $1, TAG489
sb $3, 0($1)
TAG489:
sltiu $3, $3, 12
mtlo $3
sh $3, 0($3)
lw $4, 0($3)
TAG490:
beq $4, $4, TAG491
mtlo $4
lui $2, 2
nor $4, $4, $2
TAG491:
sra $4, $4, 8
lw $1, 0($4)
multu $4, $1
lui $3, 1
TAG492:
mfhi $1
sll $0, $0, 0
mthi $3
multu $1, $3
TAG493:
sltiu $4, $1, 15
lbu $1, 0($1)
multu $1, $1
mult $1, $1
TAG494:
bgez $1, TAG495
sb $1, 0($1)
lhu $2, 0($1)
bgez $2, TAG495
TAG495:
mtlo $2
and $1, $2, $2
multu $1, $2
addu $1, $2, $1
TAG496:
bltz $1, TAG497
mthi $1
mflo $4
mfhi $3
TAG497:
beq $3, $3, TAG498
mflo $4
lui $4, 11
mtlo $4
TAG498:
mfhi $4
srl $1, $4, 7
sh $4, 0($1)
mult $4, $4
TAG499:
lui $1, 6
sll $0, $0, 0
blez $1, TAG500
mtlo $1
TAG500:
mthi $1
lui $2, 11
beq $1, $2, TAG501
sll $0, $0, 0
TAG501:
sll $0, $0, 0
bne $1, $4, TAG502
slti $3, $1, 14
bgez $4, TAG502
TAG502:
lbu $4, 0($3)
blez $3, TAG503
mthi $3
bne $3, $3, TAG503
TAG503:
sh $4, 0($4)
multu $4, $4
bne $4, $4, TAG504
mflo $1
TAG504:
beq $1, $1, TAG505
srl $2, $1, 5
subu $4, $2, $2
mfhi $2
TAG505:
slt $1, $2, $2
lh $1, 0($1)
mthi $2
lw $3, 0($2)
TAG506:
mthi $3
mtlo $3
bgtz $3, TAG507
mthi $3
TAG507:
bne $3, $3, TAG508
xor $1, $3, $3
mfhi $4
lw $1, 0($4)
TAG508:
multu $1, $1
mflo $4
lui $3, 6
bne $4, $3, TAG509
TAG509:
divu $3, $3
sll $0, $0, 0
xori $1, $3, 0
lui $3, 1
TAG510:
bltz $3, TAG511
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG511
TAG511:
sll $0, $0, 0
lui $3, 4
sll $0, $0, 0
sll $1, $4, 13
TAG512:
sh $1, 0($1)
mult $1, $1
lb $2, 0($1)
mfhi $4
TAG513:
blez $4, TAG514
lui $4, 6
beq $4, $4, TAG514
and $1, $4, $4
TAG514:
beq $1, $1, TAG515
sltiu $1, $1, 4
beq $1, $1, TAG515
mfhi $2
TAG515:
mult $2, $2
mult $2, $2
mflo $2
blez $2, TAG516
TAG516:
lb $4, 0($2)
mult $4, $2
mult $2, $2
mflo $4
TAG517:
mfhi $3
mthi $4
mthi $3
add $1, $4, $4
TAG518:
lui $3, 13
ori $1, $1, 11
mtlo $1
sll $0, $0, 0
TAG519:
divu $1, $1
beq $1, $1, TAG520
sb $1, 0($1)
mult $1, $1
TAG520:
lui $1, 8
mflo $2
bgtz $2, TAG521
divu $2, $1
TAG521:
lui $3, 8
bne $2, $3, TAG522
mfhi $2
mfhi $3
TAG522:
bltz $3, TAG523
mflo $3
srl $4, $3, 11
lui $3, 2
TAG523:
sll $0, $0, 0
mflo $1
mtlo $3
mflo $3
TAG524:
lui $4, 10
divu $3, $4
mfhi $1
lui $2, 5
TAG525:
sll $0, $0, 0
addiu $2, $2, 2
divu $2, $2
bgez $2, TAG526
TAG526:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG527
TAG527:
mflo $1
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
TAG528:
mfhi $1
multu $1, $1
mthi $1
andi $1, $1, 2
TAG529:
mfhi $1
lui $3, 0
lw $4, 0($3)
sw $4, 0($1)
TAG530:
mfhi $2
sh $4, 0($4)
lb $3, 0($4)
lh $1, 0($4)
TAG531:
lhu $2, 0($1)
lb $2, 0($2)
srl $3, $2, 15
subu $4, $1, $3
TAG532:
sb $4, 0($4)
mult $4, $4
beq $4, $4, TAG533
sb $4, 0($4)
TAG533:
bgtz $4, TAG534
mult $4, $4
mult $4, $4
sb $4, 0($4)
TAG534:
lb $4, 0($4)
mtlo $4
mfhi $2
mflo $1
TAG535:
lhu $1, 0($1)
lui $4, 4
sll $0, $0, 0
lui $3, 12
TAG536:
bltz $3, TAG537
sll $0, $0, 0
lui $4, 0
blez $4, TAG537
TAG537:
lui $2, 14
sll $0, $0, 0
mtlo $2
lui $1, 13
TAG538:
mflo $3
beq $3, $1, TAG539
sll $0, $0, 0
mflo $1
TAG539:
sll $0, $0, 0
sltiu $1, $1, 3
mfhi $2
lh $2, 0($1)
TAG540:
blez $2, TAG541
xori $1, $2, 12
or $3, $2, $2
addi $4, $1, 0
TAG541:
srl $2, $4, 4
blez $2, TAG542
sb $4, 0($2)
bne $2, $4, TAG542
TAG542:
sllv $4, $2, $2
nor $2, $4, $2
xori $1, $2, 9
sra $2, $1, 13
TAG543:
lui $4, 12
beq $2, $4, TAG544
lui $4, 12
lui $1, 6
TAG544:
beq $1, $1, TAG545
sltu $3, $1, $1
slti $1, $1, 8
sub $3, $1, $1
TAG545:
addiu $3, $3, 6
lhu $1, 0($3)
lbu $1, 0($3)
bgez $3, TAG546
TAG546:
lb $1, 0($1)
beq $1, $1, TAG547
lw $4, 0($1)
mthi $1
TAG547:
lw $1, 0($4)
multu $1, $4
beq $4, $1, TAG548
mflo $2
TAG548:
beq $2, $2, TAG549
addu $4, $2, $2
mtlo $4
lbu $4, 0($2)
TAG549:
sltu $4, $4, $4
bltz $4, TAG550
lui $4, 2
mfhi $2
TAG550:
lui $3, 7
lui $2, 7
sll $0, $0, 0
mult $2, $2
TAG551:
lui $3, 5
lui $1, 15
sll $0, $0, 0
and $2, $3, $3
TAG552:
lui $4, 14
sll $0, $0, 0
addu $1, $2, $2
lui $1, 1
TAG553:
lui $4, 8
mthi $1
lui $1, 10
div $1, $1
TAG554:
lui $4, 9
div $4, $1
addiu $1, $4, 14
addu $3, $1, $1
TAG555:
sll $0, $0, 0
lui $1, 3
multu $1, $1
blez $4, TAG556
TAG556:
sll $0, $0, 0
mfhi $3
or $4, $2, $1
div $4, $2
TAG557:
mflo $4
sltu $4, $4, $4
mult $4, $4
bne $4, $4, TAG558
TAG558:
multu $4, $4
lui $3, 10
srl $2, $3, 3
addiu $2, $2, 5
TAG559:
mflo $2
multu $2, $2
xor $1, $2, $2
lui $3, 1
TAG560:
sll $2, $3, 7
bne $3, $3, TAG561
sll $0, $0, 0
bltz $4, TAG561
TAG561:
sw $4, 0($4)
lui $3, 0
mthi $3
lb $1, 0($4)
TAG562:
mult $1, $1
lui $1, 15
mfhi $1
lui $3, 10
TAG563:
sll $0, $0, 0
sltu $2, $3, $3
slti $4, $2, 7
sra $2, $4, 9
TAG564:
or $2, $2, $2
lbu $1, 0($2)
mfhi $3
mtlo $3
TAG565:
bgez $3, TAG566
mtlo $3
sw $3, 0($3)
bgez $3, TAG566
TAG566:
mfhi $3
bne $3, $3, TAG567
lui $3, 4
beq $3, $3, TAG567
TAG567:
mfhi $1
mult $1, $3
sll $0, $0, 0
slt $1, $4, $3
TAG568:
blez $1, TAG569
lui $2, 7
mthi $2
xor $3, $1, $1
TAG569:
mult $3, $3
lui $4, 8
sll $2, $4, 9
slt $2, $3, $4
TAG570:
divu $2, $2
lui $4, 10
div $2, $4
lbu $1, 0($2)
TAG571:
mfhi $3
blez $3, TAG572
lb $1, 0($3)
lui $4, 14
TAG572:
bgez $4, TAG573
sll $0, $0, 0
lw $4, 0($4)
mflo $1
TAG573:
bltz $1, TAG574
mthi $1
mult $1, $1
lui $4, 5
TAG574:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG575:
mult $2, $2
lb $1, 0($2)
sb $2, 0($2)
sltu $4, $1, $1
TAG576:
bgez $4, TAG577
xor $1, $4, $4
srlv $3, $1, $1
bgez $4, TAG577
TAG577:
and $3, $3, $3
mfhi $4
sh $3, 0($4)
mflo $2
TAG578:
slti $2, $2, 11
mfhi $2
lui $4, 6
sw $2, 0($2)
TAG579:
lui $1, 12
sll $0, $0, 0
lui $2, 8
lui $1, 8
TAG580:
xori $2, $1, 4
mfhi $2
sltiu $4, $1, 0
mult $1, $1
TAG581:
bgtz $4, TAG582
mthi $4
mthi $4
beq $4, $4, TAG582
TAG582:
xori $3, $4, 5
beq $4, $4, TAG583
andi $1, $3, 14
lhu $2, 0($1)
TAG583:
mthi $2
blez $2, TAG584
mult $2, $2
sw $2, 0($2)
TAG584:
bgtz $2, TAG585
mtlo $2
mtlo $2
mult $2, $2
TAG585:
addi $2, $2, 1
lb $3, 0($2)
lui $4, 8
addiu $4, $2, 11
TAG586:
mfhi $4
bne $4, $4, TAG587
mtlo $4
bgtz $4, TAG587
TAG587:
sb $4, 0($4)
mflo $1
lui $1, 12
mflo $4
TAG588:
mthi $4
beq $4, $4, TAG589
and $2, $4, $4
mtlo $4
TAG589:
bgez $2, TAG590
mult $2, $2
lw $4, 0($2)
mthi $4
TAG590:
mfhi $2
lui $1, 9
lw $2, 0($2)
bne $4, $1, TAG591
TAG591:
slti $1, $2, 14
bltz $2, TAG592
mflo $3
bltz $1, TAG592
TAG592:
multu $3, $3
srav $2, $3, $3
lhu $3, 0($2)
mflo $2
TAG593:
sb $2, 0($2)
mult $2, $2
andi $3, $2, 9
multu $2, $2
TAG594:
bltz $3, TAG595
lui $1, 13
multu $1, $1
bgtz $1, TAG595
TAG595:
sll $4, $1, 12
bltz $1, TAG596
mflo $3
lui $4, 1
TAG596:
beq $4, $4, TAG597
sll $0, $0, 0
srav $1, $1, $1
and $1, $1, $4
TAG597:
sll $0, $0, 0
bne $1, $1, TAG598
divu $1, $1
xor $3, $1, $1
TAG598:
bgtz $3, TAG599
mflo $2
mult $2, $3
sub $1, $3, $3
TAG599:
lbu $1, 0($1)
and $1, $1, $1
beq $1, $1, TAG600
mfhi $3
TAG600:
mtlo $3
mtlo $3
mfhi $1
bne $3, $1, TAG601
TAG601:
sh $1, 0($1)
mflo $3
mult $3, $3
bne $1, $1, TAG602
TAG602:
mult $3, $3
mflo $3
sh $3, 0($3)
addu $3, $3, $3
TAG603:
addi $3, $3, 4
sh $3, 0($3)
div $3, $3
addiu $1, $3, 3
TAG604:
mflo $2
lui $1, 15
lb $2, 0($2)
sll $0, $0, 0
TAG605:
srav $2, $2, $2
mthi $2
mult $2, $2
mult $2, $2
TAG606:
sb $2, 0($2)
mult $2, $2
bgez $2, TAG607
mult $2, $2
TAG607:
mflo $3
sra $3, $3, 15
sb $3, 0($3)
ori $2, $3, 8
TAG608:
sw $2, 0($2)
sllv $1, $2, $2
mtlo $2
multu $2, $1
TAG609:
bne $1, $1, TAG610
lui $1, 4
mult $1, $1
bgtz $1, TAG610
TAG610:
mfhi $3
xor $3, $3, $3
lbu $3, 0($3)
multu $3, $1
TAG611:
bltz $3, TAG612
mthi $3
mult $3, $3
subu $4, $3, $3
TAG612:
lhu $3, 0($4)
sw $4, 0($3)
lui $2, 9
sltiu $2, $4, 12
TAG613:
sltiu $1, $2, 2
div $2, $1
mthi $1
beq $2, $1, TAG614
TAG614:
lui $1, 5
lui $3, 13
blez $1, TAG615
div $1, $1
TAG615:
or $1, $3, $3
lui $1, 1
sll $0, $0, 0
sll $1, $3, 9
TAG616:
lui $1, 12
lui $2, 11
beq $1, $2, TAG617
mtlo $1
TAG617:
sra $1, $2, 10
bgez $1, TAG618
mthi $1
divu $1, $1
TAG618:
ori $4, $1, 11
mfhi $3
sh $4, -715($4)
mtlo $4
TAG619:
lui $4, 8
lui $2, 7
sra $3, $4, 9
lui $1, 13
TAG620:
mthi $1
blez $1, TAG621
div $1, $1
mult $1, $1
TAG621:
srlv $3, $1, $1
beq $1, $3, TAG622
sll $0, $0, 0
sh $3, 0($2)
TAG622:
mflo $4
lh $2, 0($4)
lui $2, 2
bltz $2, TAG623
TAG623:
sltiu $2, $2, 15
mfhi $4
mtlo $4
beq $2, $4, TAG624
TAG624:
sltiu $4, $4, 2
beq $4, $4, TAG625
mfhi $1
sra $2, $1, 12
TAG625:
bne $2, $2, TAG626
lui $4, 1
mthi $2
mfhi $2
TAG626:
lui $4, 4
lui $4, 6
beq $4, $4, TAG627
lui $3, 12
TAG627:
beq $3, $3, TAG628
mfhi $1
beq $1, $1, TAG628
addu $4, $1, $3
TAG628:
mthi $4
mfhi $4
bne $4, $4, TAG629
div $4, $4
TAG629:
sll $0, $0, 0
mflo $3
bne $3, $4, TAG630
lui $4, 5
TAG630:
mthi $4
mfhi $4
beq $4, $4, TAG631
mtlo $4
TAG631:
sll $0, $0, 0
mthi $4
sllv $4, $4, $4
bne $4, $4, TAG632
TAG632:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG633
mthi $1
TAG633:
lui $2, 10
lhu $4, 0($1)
divu $2, $2
sll $0, $0, 0
TAG634:
lui $4, 2
bne $4, $4, TAG635
mflo $2
mtlo $4
TAG635:
mthi $2
mfhi $2
lbu $4, 0($2)
sra $1, $2, 4
TAG636:
bltz $1, TAG637
mfhi $1
sb $1, 0($1)
addiu $4, $1, 15
TAG637:
bgez $4, TAG638
mflo $2
lui $3, 12
sw $2, 0($3)
TAG638:
mflo $4
mtlo $4
sll $0, $0, 0
multu $3, $3
TAG639:
mult $1, $1
lui $1, 11
sll $0, $0, 0
beq $1, $1, TAG640
TAG640:
or $1, $2, $2
blez $2, TAG641
lui $2, 14
or $3, $1, $1
TAG641:
addiu $4, $3, 9
bne $4, $4, TAG642
slti $1, $4, 8
sll $0, $0, 0
TAG642:
lui $2, 10
div $2, $2
sltu $4, $2, $2
lui $2, 12
TAG643:
slt $3, $2, $2
sh $2, 0($3)
lb $4, 0($3)
xori $4, $4, 6
TAG644:
mtlo $4
lb $2, 0($4)
mfhi $4
lh $1, 0($4)
TAG645:
ori $1, $1, 15
mfhi $1
nor $3, $1, $1
sll $3, $3, 3
TAG646:
div $3, $3
ori $1, $3, 12
sh $3, 8($3)
mult $3, $1
TAG647:
nor $4, $1, $1
lb $3, 0($4)
mflo $1
mfhi $3
TAG648:
sh $3, 0($3)
sh $3, 0($3)
lui $3, 7
lui $1, 6
TAG649:
addu $4, $1, $1
sllv $1, $4, $4
lui $2, 8
divu $1, $4
TAG650:
blez $2, TAG651
sll $0, $0, 0
mult $2, $2
mfhi $3
TAG651:
multu $3, $3
sll $3, $3, 9
bne $3, $3, TAG652
and $4, $3, $3
TAG652:
addiu $1, $4, 10
slti $4, $4, 15
beq $4, $1, TAG653
mult $4, $4
TAG653:
multu $4, $4
mflo $2
srlv $2, $2, $2
sh $2, 0($2)
TAG654:
mult $2, $2
lb $2, 0($2)
lui $4, 5
mthi $4
TAG655:
sll $0, $0, 0
subu $1, $1, $4
bne $4, $1, TAG656
sllv $2, $1, $4
TAG656:
beq $2, $2, TAG657
sll $0, $0, 0
mtlo $4
lbu $3, 0($4)
TAG657:
blez $3, TAG658
sll $0, $0, 0
mult $3, $3
bne $3, $3, TAG658
TAG658:
mthi $3
addiu $1, $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG659:
addu $1, $4, $4
sll $0, $0, 0
bgtz $1, TAG660
sll $0, $0, 0
TAG660:
mtlo $1
lui $1, 4
subu $4, $1, $1
sll $0, $0, 0
TAG661:
lui $2, 0
lui $3, 9
div $3, $3
xor $4, $3, $3
TAG662:
mfhi $4
lhu $4, 0($4)
mfhi $3
xori $4, $4, 11
TAG663:
mflo $3
srl $2, $4, 13
beq $2, $3, TAG664
and $3, $2, $2
TAG664:
lui $4, 12
lui $1, 9
mfhi $2
sll $0, $0, 0
TAG665:
sh $2, 0($2)
beq $2, $2, TAG666
sh $2, 0($2)
mult $2, $2
TAG666:
lui $1, 4
lb $1, 0($2)
multu $1, $2
sw $1, 0($2)
TAG667:
multu $1, $1
bgez $1, TAG668
sll $3, $1, 1
sw $1, 0($3)
TAG668:
mthi $3
lui $2, 14
sh $3, 0($3)
ori $2, $2, 8
TAG669:
mthi $2
sll $0, $0, 0
xori $3, $2, 4
mthi $3
TAG670:
addiu $1, $3, 6
mfhi $4
bne $1, $4, TAG671
mtlo $4
TAG671:
mtlo $4
mflo $3
mtlo $3
lui $2, 11
TAG672:
srl $2, $2, 13
mtlo $2
bne $2, $2, TAG673
lbu $2, 0($2)
TAG673:
blez $2, TAG674
lui $3, 15
mthi $3
mthi $3
TAG674:
multu $3, $3
lui $4, 5
slt $3, $3, $4
sltiu $1, $4, 7
TAG675:
lui $2, 6
xori $2, $1, 0
lui $1, 2
multu $2, $2
TAG676:
slt $2, $1, $1
sw $1, 0($2)
bne $2, $2, TAG677
mfhi $2
TAG677:
mthi $2
beq $2, $2, TAG678
subu $2, $2, $2
add $1, $2, $2
TAG678:
mtlo $1
andi $1, $1, 3
sltiu $3, $1, 11
mthi $1
TAG679:
sb $3, 0($3)
mtlo $3
mthi $3
bgtz $3, TAG680
TAG680:
mflo $3
lb $2, 0($3)
bne $3, $3, TAG681
mult $3, $3
TAG681:
bne $2, $2, TAG682
sb $2, 0($2)
div $2, $2
lb $2, 0($2)
TAG682:
div $2, $2
beq $2, $2, TAG683
xori $3, $2, 4
div $3, $3
TAG683:
bne $3, $3, TAG684
lui $4, 8
addiu $2, $4, 10
mflo $3
TAG684:
mflo $2
lb $1, 0($2)
ori $4, $2, 9
sb $1, 0($3)
TAG685:
mtlo $4
lui $4, 11
mfhi $1
multu $4, $1
TAG686:
mult $1, $1
bgez $1, TAG687
mtlo $1
mult $1, $1
TAG687:
multu $1, $1
beq $1, $1, TAG688
sb $1, 0($1)
bgez $1, TAG688
TAG688:
xori $1, $1, 8
lb $3, 0($1)
bne $1, $1, TAG689
srl $1, $1, 8
TAG689:
add $2, $1, $1
mfhi $3
mflo $3
lui $4, 2
TAG690:
sll $0, $0, 0
andi $1, $4, 11
sll $0, $0, 0
sb $1, 0($1)
TAG691:
mtlo $4
xor $1, $4, $4
lh $1, 0($1)
bgtz $1, TAG692
TAG692:
div $1, $1
ori $3, $1, 1
lui $1, 11
lui $1, 8
TAG693:
beq $1, $1, TAG694
lui $2, 14
mult $2, $1
mtlo $2
TAG694:
mflo $3
sb $2, 0($3)
blez $3, TAG695
slti $1, $2, 3
TAG695:
sb $1, 0($1)
sw $1, 0($1)
mflo $2
blez $2, TAG696
TAG696:
mult $2, $2
beq $2, $2, TAG697
multu $2, $2
lui $2, 14
TAG697:
bltz $2, TAG698
mflo $3
sb $2, 0($3)
mflo $1
TAG698:
sb $1, 0($1)
bne $1, $1, TAG699
lui $1, 4
slt $4, $1, $1
TAG699:
multu $4, $4
lui $1, 14
blez $1, TAG700
lui $4, 8
TAG700:
bgez $4, TAG701
lui $1, 13
sub $3, $1, $1
or $3, $1, $1
TAG701:
sb $3, 0($3)
beq $3, $3, TAG702
sll $4, $3, 13
sh $3, 0($4)
TAG702:
mthi $4
mthi $4
lhu $1, -8192($4)
lui $4, 0
TAG703:
mtlo $4
mult $4, $4
lui $2, 15
sllv $1, $4, $2
TAG704:
mtlo $1
sb $1, 0($1)
mult $1, $1
beq $1, $1, TAG705
TAG705:
subu $4, $1, $1
sw $4, 0($1)
sb $1, 0($1)
sb $1, 0($1)
TAG706:
srav $3, $4, $4
sub $3, $4, $3
lui $1, 5
sltiu $1, $3, 5
TAG707:
sltu $4, $1, $1
mfhi $4
lui $3, 3
sll $1, $4, 9
TAG708:
multu $1, $1
bgtz $1, TAG709
sh $1, 0($1)
mthi $1
TAG709:
sh $1, 0($1)
bne $1, $1, TAG710
multu $1, $1
mthi $1
TAG710:
sh $1, 0($1)
bne $1, $1, TAG711
ori $1, $1, 5
blez $1, TAG711
TAG711:
sb $1, 0($1)
mtlo $1
mult $1, $1
mfhi $1
TAG712:
mult $1, $1
mult $1, $1
lui $2, 5
mult $2, $2
TAG713:
lui $2, 11
lui $4, 9
lui $4, 8
mfhi $1
TAG714:
beq $1, $1, TAG715
mult $1, $1
mflo $2
lh $2, 0($1)
TAG715:
bgez $2, TAG716
sltu $2, $2, $2
beq $2, $2, TAG716
mtlo $2
TAG716:
bgtz $2, TAG717
mthi $2
and $2, $2, $2
mtlo $2
TAG717:
mfhi $3
lui $3, 6
or $1, $3, $2
multu $2, $3
TAG718:
nor $1, $1, $1
mthi $1
divu $1, $1
sll $0, $0, 0
TAG719:
lbu $3, 0($2)
multu $2, $3
mult $2, $2
mult $2, $3
TAG720:
mflo $3
mthi $3
sh $3, 0($3)
sb $3, 0($3)
TAG721:
bltz $3, TAG722
sb $3, 0($3)
mflo $4
multu $4, $4
TAG722:
mfhi $4
beq $4, $4, TAG723
mtlo $4
xor $4, $4, $4
TAG723:
mtlo $4
bne $4, $4, TAG724
sll $2, $4, 8
mult $4, $4
TAG724:
mflo $1
xor $2, $1, $1
lui $1, 9
lui $1, 0
TAG725:
bne $1, $1, TAG726
mtlo $1
lui $3, 7
beq $1, $1, TAG726
TAG726:
andi $4, $3, 12
mfhi $2
sw $4, 0($2)
sb $4, 0($4)
TAG727:
multu $2, $2
sb $2, 0($2)
mthi $2
mthi $2
TAG728:
lhu $2, 0($2)
mtlo $2
and $4, $2, $2
sltiu $1, $2, 4
TAG729:
and $2, $1, $1
beq $1, $1, TAG730
sb $2, 0($2)
sb $1, 0($1)
TAG730:
xori $3, $2, 0
blez $3, TAG731
mult $3, $3
lbu $2, 0($2)
TAG731:
and $4, $2, $2
bne $4, $4, TAG732
addu $4, $4, $4
lbu $4, 0($4)
TAG732:
mfhi $2
bltz $2, TAG733
sub $1, $2, $4
bne $1, $1, TAG733
TAG733:
addi $2, $1, 0
mtlo $2
slti $3, $2, 7
ori $3, $1, 7
TAG734:
lui $1, 3
blez $1, TAG735
mtlo $3
mflo $4
TAG735:
bne $4, $4, TAG736
lb $3, 0($4)
beq $3, $4, TAG736
srl $3, $3, 6
TAG736:
lui $2, 7
beq $2, $3, TAG737
sll $0, $0, 0
bltz $4, TAG737
TAG737:
lbu $3, 0($4)
lui $3, 6
divu $4, $3
multu $3, $3
TAG738:
lui $1, 4
sll $0, $0, 0
mtlo $3
divu $1, $3
TAG739:
bne $3, $3, TAG740
sllv $3, $3, $3
sltiu $3, $3, 8
mult $3, $3
TAG740:
or $1, $3, $3
sh $3, 0($1)
lbu $1, 0($1)
bgez $1, TAG741
TAG741:
lui $4, 14
bgez $1, TAG742
divu $1, $4
lui $1, 8
TAG742:
sw $1, 0($1)
sllv $3, $1, $1
sllv $4, $1, $1
bgtz $1, TAG743
TAG743:
srav $3, $4, $4
blez $3, TAG744
sh $3, 0($3)
bltz $3, TAG744
TAG744:
lbu $1, 0($3)
sw $3, 0($1)
bne $3, $1, TAG745
sh $1, 0($1)
TAG745:
sltiu $4, $1, 8
xori $4, $1, 13
lui $3, 4
addu $2, $3, $4
TAG746:
div $2, $2
lui $2, 4
mtlo $2
bne $2, $2, TAG747
TAG747:
addu $1, $2, $2
sll $0, $0, 0
sllv $3, $2, $1
div $1, $2
TAG748:
lui $3, 2
slt $4, $3, $3
ori $2, $3, 12
blez $4, TAG749
TAG749:
sll $0, $0, 0
mult $1, $1
mtlo $1
mthi $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop