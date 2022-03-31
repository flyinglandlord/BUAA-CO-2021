ori $1, $0, 11
ori $2, $0, 5
ori $3, $0, 1
ori $4, $0, 9
sw $3, 0($0)
sw $2, 4($0)
sw $4, 8($0)
sw $1, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $4, 36($0)
sw $2, 40($0)
sw $3, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $1, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $3, 124($0)
lb $2, 0($2)
srl $2, $2, 14
xor $3, $2, $2
blez $2, TAG1
TAG1:
mfhi $4
lui $3, 2
mfhi $2
sll $0, $0, 0
TAG2:
andi $1, $2, 4
addi $1, $1, 3
bne $2, $1, TAG3
sb $2, 0($1)
TAG3:
mthi $1
multu $1, $1
bltz $1, TAG4
sb $1, 0($1)
TAG4:
sb $1, 0($1)
blez $1, TAG5
lui $4, 12
mtlo $1
TAG5:
sll $1, $4, 1
lui $4, 5
mthi $4
sll $0, $0, 0
TAG6:
mfhi $1
addiu $4, $1, 15
beq $1, $1, TAG7
sll $0, $0, 0
TAG7:
bne $1, $1, TAG8
lui $1, 11
sltiu $4, $1, 0
and $4, $1, $1
TAG8:
blez $4, TAG9
mtlo $4
mflo $4
mthi $4
TAG9:
multu $4, $4
mflo $1
lui $1, 0
and $2, $1, $1
TAG10:
mflo $2
mflo $3
sra $3, $2, 12
andi $4, $3, 12
TAG11:
sw $4, 0($4)
lui $4, 9
mtlo $4
sll $0, $0, 0
TAG12:
and $3, $4, $4
bne $4, $4, TAG13
mtlo $4
bgtz $4, TAG13
TAG13:
lui $2, 7
sll $0, $0, 0
bltz $2, TAG14
mthi $3
TAG14:
bltz $4, TAG15
lui $4, 12
subu $1, $4, $4
mtlo $1
TAG15:
lui $4, 2
bne $4, $1, TAG16
sb $4, 0($1)
bgtz $1, TAG16
TAG16:
sll $0, $0, 0
bne $4, $4, TAG17
mfhi $2
div $4, $4
TAG17:
addiu $4, $2, 0
slti $3, $4, 3
srav $2, $2, $4
lui $1, 8
TAG18:
srlv $2, $1, $1
blez $2, TAG19
mult $2, $1
sll $0, $0, 0
TAG19:
lui $1, 7
beq $3, $3, TAG20
mtlo $1
multu $3, $1
TAG20:
slti $4, $1, 7
mtlo $1
multu $4, $1
divu $1, $1
TAG21:
bgez $4, TAG22
sh $4, 0($4)
sltiu $1, $4, 4
mthi $4
TAG22:
div $1, $1
mult $1, $1
bne $1, $1, TAG23
sll $0, $0, 0
TAG23:
bltz $3, TAG24
sh $3, 0($3)
lui $3, 8
srav $2, $3, $3
TAG24:
srlv $4, $2, $2
mthi $2
lui $1, 4
mthi $4
TAG25:
sll $0, $0, 0
bgez $4, TAG26
mult $4, $4
lw $1, 0($4)
TAG26:
sltiu $1, $1, 9
mthi $1
lbu $3, 0($1)
bgtz $3, TAG27
TAG27:
mtlo $3
lbu $3, 0($3)
sw $3, 0($3)
xori $2, $3, 11
TAG28:
lui $4, 13
div $2, $2
sll $0, $0, 0
mthi $2
TAG29:
lui $2, 0
mflo $2
multu $4, $2
multu $2, $2
TAG30:
bgtz $2, TAG31
mult $2, $2
mthi $2
lw $2, 0($2)
TAG31:
multu $2, $2
subu $2, $2, $2
mthi $2
mtlo $2
TAG32:
mflo $4
bne $4, $4, TAG33
lui $4, 5
sb $2, 0($2)
TAG33:
bltz $4, TAG34
mflo $4
ori $2, $4, 2
lhu $3, 0($4)
TAG34:
sll $2, $3, 7
bgez $3, TAG35
mflo $2
div $2, $3
TAG35:
lui $1, 10
lui $2, 13
div $2, $2
nor $2, $2, $1
TAG36:
addu $1, $2, $2
lui $3, 4
sll $0, $0, 0
mthi $1
TAG37:
sll $0, $0, 0
lui $1, 14
mflo $2
bltz $1, TAG38
TAG38:
div $2, $2
sb $2, 0($2)
divu $2, $2
lb $3, 0($2)
TAG39:
addu $3, $3, $3
sb $3, 0($3)
bgtz $3, TAG40
mult $3, $3
TAG40:
mfhi $4
multu $3, $4
mthi $4
lhu $4, 0($3)
TAG41:
slt $1, $4, $4
mthi $4
sltu $4, $4, $4
and $1, $4, $4
TAG42:
lw $1, 0($1)
mflo $3
sll $0, $0, 0
xori $2, $1, 9
TAG43:
sll $0, $0, 0
bne $2, $2, TAG44
lui $2, 2
mult $2, $2
TAG44:
lui $3, 2
xor $4, $2, $3
div $4, $2
lui $2, 4
TAG45:
bne $2, $2, TAG46
lui $4, 7
bne $2, $4, TAG46
mtlo $4
TAG46:
addiu $4, $4, 6
and $3, $4, $4
beq $4, $4, TAG47
sll $0, $0, 0
TAG47:
subu $3, $3, $3
lui $2, 13
lhu $2, 0($3)
mflo $4
TAG48:
beq $4, $4, TAG49
multu $4, $4
sltiu $2, $4, 0
lui $1, 14
TAG49:
sll $0, $0, 0
mtlo $1
ori $3, $1, 12
sll $0, $0, 0
TAG50:
sll $0, $0, 0
mthi $4
divu $4, $3
bgtz $4, TAG51
TAG51:
sltiu $4, $4, 14
lb $1, 0($4)
beq $4, $1, TAG52
sb $4, 0($1)
TAG52:
sb $1, 0($1)
lbu $2, 0($1)
mfhi $4
sll $0, $0, 0
TAG53:
mtlo $4
bne $4, $4, TAG54
div $4, $4
sll $0, $0, 0
TAG54:
bne $1, $1, TAG55
or $1, $1, $1
sb $1, 0($1)
mfhi $4
TAG55:
mfhi $4
addu $2, $4, $4
lui $3, 10
lhu $2, 0($4)
TAG56:
sll $2, $2, 0
bltz $2, TAG57
lui $3, 0
lui $3, 3
TAG57:
mult $3, $3
sll $0, $0, 0
lui $2, 15
addiu $2, $3, 2
TAG58:
mthi $2
beq $2, $2, TAG59
sll $0, $0, 0
beq $2, $2, TAG59
TAG59:
srl $4, $2, 3
div $4, $2
lw $2, -24576($4)
srl $2, $4, 14
TAG60:
div $2, $2
sb $2, 0($2)
beq $2, $2, TAG61
lb $2, 0($2)
TAG61:
bgez $2, TAG62
sb $2, 0($2)
lbu $1, 0($2)
srl $4, $2, 3
TAG62:
beq $4, $4, TAG63
lw $3, -24576($4)
blez $4, TAG63
sb $3, 0($3)
TAG63:
blez $3, TAG64
srl $4, $3, 4
bltz $3, TAG64
mfhi $4
TAG64:
bgtz $4, TAG65
mfhi $4
srlv $4, $4, $4
lui $2, 5
TAG65:
multu $2, $2
mtlo $2
mthi $2
sltiu $4, $2, 8
TAG66:
mtlo $4
sub $1, $4, $4
lh $3, 0($4)
beq $3, $1, TAG67
TAG67:
ori $2, $3, 2
sb $2, -258($2)
lb $2, -258($2)
sb $3, 0($2)
TAG68:
sh $2, 0($2)
lhu $3, 0($2)
lui $4, 10
lui $3, 6
TAG69:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
divu $3, $3
TAG70:
addu $4, $4, $4
lui $2, 14
lui $4, 15
sll $0, $0, 0
TAG71:
lui $2, 10
mflo $3
bgez $3, TAG72
srlv $2, $3, $3
TAG72:
sll $2, $2, 1
mult $2, $2
lui $4, 2
lb $3, 0($2)
TAG73:
bne $3, $3, TAG74
addiu $1, $3, 4
bgez $3, TAG74
mthi $3
TAG74:
lhu $4, 0($1)
mult $4, $4
sll $4, $4, 7
ori $4, $4, 15
TAG75:
beq $4, $4, TAG76
mfhi $1
sra $3, $4, 5
mflo $2
TAG76:
xori $1, $2, 15
sb $1, 0($1)
blez $1, TAG77
mfhi $4
TAG77:
mult $4, $4
lb $3, 0($4)
multu $3, $3
bltz $4, TAG78
TAG78:
mtlo $3
lhu $3, 0($3)
bne $3, $3, TAG79
sh $3, 0($3)
TAG79:
mult $3, $3
div $3, $3
sh $3, 0($3)
or $4, $3, $3
TAG80:
mthi $4
lhu $2, 0($4)
bne $4, $4, TAG81
div $2, $4
TAG81:
lh $4, 0($2)
slt $2, $4, $2
lui $3, 7
mflo $1
TAG82:
mthi $1
divu $1, $1
beq $1, $1, TAG83
lui $1, 9
TAG83:
srlv $3, $1, $1
div $3, $3
sll $0, $0, 0
mtlo $3
TAG84:
sll $0, $0, 0
bgez $3, TAG85
lui $4, 12
multu $2, $2
TAG85:
slti $2, $4, 0
sll $0, $0, 0
sw $4, 0($2)
sra $2, $2, 3
TAG86:
xor $1, $2, $2
bltz $2, TAG87
srl $1, $1, 6
mthi $1
TAG87:
mthi $1
ori $1, $1, 9
bne $1, $1, TAG88
lb $3, 0($1)
TAG88:
lh $4, 0($3)
blez $3, TAG89
lhu $2, 0($3)
lb $1, 0($4)
TAG89:
sb $1, 0($1)
lbu $1, 0($1)
beq $1, $1, TAG90
lbu $1, 0($1)
TAG90:
div $1, $1
mthi $1
lui $1, 9
bltz $1, TAG91
TAG91:
xor $3, $1, $1
mthi $3
mflo $3
mflo $2
TAG92:
mthi $2
sb $2, 0($2)
beq $2, $2, TAG93
lui $1, 3
TAG93:
slti $3, $1, 4
multu $3, $3
sll $0, $0, 0
lbu $4, 0($2)
TAG94:
mfhi $1
sll $3, $4, 8
multu $1, $1
mflo $3
TAG95:
bne $3, $3, TAG96
sb $3, 0($3)
lui $2, 15
lui $4, 2
TAG96:
mfhi $2
bne $4, $4, TAG97
xor $4, $4, $2
bne $4, $4, TAG97
TAG97:
lui $2, 14
lui $3, 7
sll $0, $0, 0
srl $2, $2, 5
TAG98:
slti $4, $2, 12
bgez $2, TAG99
mtlo $4
beq $4, $4, TAG99
TAG99:
mult $4, $4
beq $4, $4, TAG100
mthi $4
mthi $4
TAG100:
blez $4, TAG101
mtlo $4
bgtz $4, TAG101
addiu $3, $4, 1
TAG101:
bltz $3, TAG102
mflo $1
sll $0, $0, 0
bne $3, $3, TAG102
TAG102:
div $3, $3
mthi $3
bgez $3, TAG103
mtlo $3
TAG103:
sll $0, $0, 0
mfhi $4
bltz $4, TAG104
lui $1, 8
TAG104:
lui $4, 10
addiu $2, $4, 7
addiu $3, $4, 13
sltiu $1, $4, 6
TAG105:
mfhi $1
slti $3, $1, 8
lui $1, 8
beq $3, $3, TAG106
TAG106:
sra $3, $1, 6
addiu $4, $1, 6
and $4, $3, $4
beq $3, $1, TAG107
TAG107:
lhu $2, 0($4)
lui $4, 6
beq $2, $4, TAG108
mtlo $4
TAG108:
and $4, $4, $4
mthi $4
mtlo $4
multu $4, $4
TAG109:
sll $0, $0, 0
sllv $4, $4, $4
sll $0, $0, 0
mtlo $4
TAG110:
mult $3, $3
lh $1, -8192($3)
mult $3, $3
blez $1, TAG111
TAG111:
sw $1, -256($1)
mfhi $1
lh $3, 0($1)
lui $4, 12
TAG112:
divu $4, $4
lui $3, 13
lui $4, 1
bne $4, $3, TAG113
TAG113:
mfhi $2
mult $2, $2
div $4, $4
multu $2, $2
TAG114:
lhu $3, 0($2)
sub $2, $3, $2
mthi $2
mtlo $2
TAG115:
bne $2, $2, TAG116
subu $4, $2, $2
lbu $2, 0($4)
multu $2, $2
TAG116:
mflo $2
mult $2, $2
lbu $2, 0($2)
bltz $2, TAG117
TAG117:
lbu $4, 0($2)
addu $2, $2, $4
lui $1, 12
bgez $2, TAG118
TAG118:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
lui $4, 9
TAG119:
mtlo $4
lui $4, 1
sll $0, $0, 0
sw $4, -256($3)
TAG120:
sb $3, -256($3)
beq $3, $3, TAG121
sll $4, $3, 0
sh $4, 0($4)
TAG121:
bgtz $4, TAG122
lbu $3, -256($4)
and $3, $4, $4
sll $2, $4, 10
TAG122:
lbu $2, 0($2)
andi $1, $2, 14
sw $2, 0($2)
slt $4, $1, $1
TAG123:
multu $4, $4
bgez $4, TAG124
mthi $4
beq $4, $4, TAG124
TAG124:
sb $4, 0($4)
mfhi $2
lui $3, 4
lui $4, 12
TAG125:
bgez $4, TAG126
div $4, $4
srav $3, $4, $4
srav $3, $4, $4
TAG126:
multu $3, $3
mflo $1
sll $0, $0, 0
slt $3, $1, $3
TAG127:
div $3, $3
bgez $3, TAG128
multu $3, $3
lui $4, 1
TAG128:
sll $0, $0, 0
or $2, $4, $4
mflo $3
sb $3, 0($3)
TAG129:
mflo $3
bgez $3, TAG130
xori $4, $3, 12
mthi $3
TAG130:
sb $4, 0($4)
mtlo $4
multu $4, $4
bgtz $4, TAG131
TAG131:
lui $1, 2
bne $4, $1, TAG132
div $4, $1
sw $1, 0($4)
TAG132:
bltz $1, TAG133
sll $2, $1, 1
mflo $1
mfhi $1
TAG133:
sltu $1, $1, $1
mthi $1
sll $1, $1, 0
mult $1, $1
TAG134:
sh $1, 0($1)
mflo $3
mtlo $3
bgtz $3, TAG135
TAG135:
mult $3, $3
ori $2, $3, 10
bne $3, $2, TAG136
lhu $4, 0($2)
TAG136:
bne $4, $4, TAG137
srlv $3, $4, $4
sll $1, $3, 3
lh $4, 0($3)
TAG137:
beq $4, $4, TAG138
mflo $4
sw $4, 0($4)
bgez $4, TAG138
TAG138:
mtlo $4
lb $3, 0($4)
bgtz $4, TAG139
srlv $2, $3, $3
TAG139:
mult $2, $2
blez $2, TAG140
mult $2, $2
sh $2, 0($2)
TAG140:
addiu $4, $2, 12
lhu $4, 0($2)
beq $4, $4, TAG141
mult $2, $4
TAG141:
mthi $4
mthi $4
bne $4, $4, TAG142
sh $4, 0($4)
TAG142:
bne $4, $4, TAG143
andi $2, $4, 1
lui $2, 12
bne $2, $2, TAG143
TAG143:
mtlo $2
andi $3, $2, 15
sw $3, 0($3)
multu $2, $3
TAG144:
sh $3, 0($3)
mtlo $3
sh $3, 0($3)
mult $3, $3
TAG145:
bne $3, $3, TAG146
mfhi $2
lui $2, 6
lui $1, 2
TAG146:
beq $1, $1, TAG147
sll $0, $0, 0
sh $1, 0($1)
mtlo $3
TAG147:
sra $4, $3, 6
sh $4, 0($3)
sll $2, $4, 1
addiu $4, $2, 10
TAG148:
mfhi $3
multu $4, $3
addi $4, $3, 2
blez $4, TAG149
TAG149:
mthi $4
bltz $4, TAG150
mfhi $3
mthi $4
TAG150:
div $3, $3
lui $4, 0
multu $4, $4
lui $3, 15
TAG151:
sll $0, $0, 0
mult $1, $1
multu $3, $1
mtlo $3
TAG152:
sll $0, $0, 0
mtlo $1
mtlo $1
mthi $1
TAG153:
sltiu $2, $1, 8
bltz $2, TAG154
div $2, $1
mthi $2
TAG154:
mult $2, $2
bltz $2, TAG155
xori $1, $2, 4
lui $2, 4
TAG155:
lui $1, 6
beq $2, $2, TAG156
mflo $4
lui $4, 5
TAG156:
sb $4, 0($4)
multu $4, $4
sw $4, 0($4)
lui $1, 11
TAG157:
sll $0, $0, 0
multu $2, $1
mflo $3
bne $3, $3, TAG158
TAG158:
mthi $3
mfhi $4
lb $2, 0($3)
lw $2, 0($2)
TAG159:
mflo $1
sw $2, 0($2)
lb $2, 0($1)
mfhi $1
TAG160:
lhu $2, 0($1)
lh $4, 0($1)
mflo $2
sll $3, $2, 4
TAG161:
sb $3, 0($3)
sra $1, $3, 6
nor $1, $1, $1
mflo $1
TAG162:
sh $1, 0($1)
mflo $1
mtlo $1
andi $2, $1, 12
TAG163:
mflo $1
sh $1, 0($1)
mtlo $1
nor $4, $1, $2
TAG164:
sh $4, 1($4)
bgtz $4, TAG165
lui $4, 8
srav $1, $4, $4
TAG165:
bne $1, $1, TAG166
mthi $1
bgtz $1, TAG166
mtlo $1
TAG166:
mtlo $1
mult $1, $1
blez $1, TAG167
and $1, $1, $1
TAG167:
mult $1, $1
mtlo $1
sll $0, $0, 0
mflo $2
TAG168:
sll $0, $0, 0
sllv $4, $2, $2
mtlo $2
ori $2, $4, 15
TAG169:
blez $2, TAG170
mtlo $2
bgez $2, TAG170
lui $4, 13
TAG170:
mtlo $4
mtlo $4
mult $4, $4
lui $4, 4
TAG171:
mtlo $4
bltz $4, TAG172
sll $0, $0, 0
sll $0, $0, 0
TAG172:
addu $3, $3, $3
bgez $3, TAG173
lhu $4, 0($3)
mtlo $3
TAG173:
mult $4, $4
xori $1, $4, 6
bne $4, $4, TAG174
sll $0, $0, 0
TAG174:
mthi $1
sll $0, $0, 0
beq $1, $1, TAG175
sll $1, $1, 14
TAG175:
slti $3, $1, 10
bltz $1, TAG176
addi $2, $3, 13
mtlo $2
TAG176:
sb $2, 0($2)
bgtz $2, TAG177
mfhi $3
mthi $2
TAG177:
bgez $3, TAG178
sll $0, $0, 0
div $3, $3
div $3, $3
TAG178:
mthi $3
mult $3, $3
bltz $3, TAG179
lui $2, 11
TAG179:
beq $2, $2, TAG180
sll $1, $2, 13
multu $2, $1
lb $2, 0($2)
TAG180:
sll $0, $0, 0
bne $2, $2, TAG181
sll $0, $0, 0
mthi $2
TAG181:
beq $1, $1, TAG182
mfhi $2
beq $1, $1, TAG182
lb $2, 0($1)
TAG182:
srlv $4, $2, $2
xor $1, $4, $4
bgez $4, TAG183
sltiu $4, $2, 6
TAG183:
addi $4, $4, 13
blez $4, TAG184
xori $1, $4, 12
bne $1, $1, TAG184
TAG184:
addu $1, $1, $1
mtlo $1
mthi $1
lhu $4, 0($1)
TAG185:
sh $4, 0($4)
mthi $4
bgtz $4, TAG186
lui $1, 9
TAG186:
blez $1, TAG187
sll $0, $0, 0
mflo $4
lui $1, 12
TAG187:
mflo $3
and $3, $3, $3
lui $3, 14
sll $0, $0, 0
TAG188:
mfhi $1
slti $4, $3, 4
beq $4, $1, TAG189
sra $1, $1, 5
TAG189:
multu $1, $1
blez $1, TAG190
mult $1, $1
subu $1, $1, $1
TAG190:
beq $1, $1, TAG191
lui $2, 7
div $2, $2
lui $1, 3
TAG191:
sltiu $3, $1, 10
beq $3, $3, TAG192
mflo $3
sll $2, $3, 3
TAG192:
blez $2, TAG193
sltu $4, $2, $2
mthi $4
bne $4, $2, TAG193
TAG193:
mult $4, $4
addu $3, $4, $4
bne $3, $3, TAG194
lh $2, 0($4)
TAG194:
multu $2, $2
sb $2, 0($2)
bne $2, $2, TAG195
mtlo $2
TAG195:
mult $2, $2
addi $2, $2, 10
mthi $2
bne $2, $2, TAG196
TAG196:
slt $4, $2, $2
sb $2, 0($4)
blez $4, TAG197
lb $1, 0($4)
TAG197:
mtlo $1
andi $3, $1, 0
bgtz $1, TAG198
sub $3, $3, $3
TAG198:
lh $1, 0($3)
mflo $2
sb $2, 0($2)
lh $2, 0($3)
TAG199:
bltz $2, TAG200
sltiu $2, $2, 3
mult $2, $2
slti $3, $2, 15
TAG200:
divu $3, $3
div $3, $3
sll $4, $3, 8
sb $4, -256($4)
TAG201:
mfhi $2
div $4, $4
sh $4, 0($2)
mthi $4
TAG202:
slt $3, $2, $2
slti $1, $3, 9
mflo $2
mflo $2
TAG203:
subu $4, $2, $2
divu $2, $2
lui $2, 15
mtlo $4
TAG204:
addiu $3, $2, 5
div $3, $3
bne $3, $3, TAG205
div $2, $3
TAG205:
bne $3, $3, TAG206
mflo $3
sh $3, 0($3)
bgez $3, TAG206
TAG206:
lui $1, 9
bgtz $3, TAG207
lw $1, 0($3)
mtlo $1
TAG207:
mthi $1
bltz $1, TAG208
sltiu $3, $1, 1
mthi $3
TAG208:
lb $4, 0($3)
slti $1, $4, 10
sb $1, 0($1)
sltiu $4, $3, 5
TAG209:
mflo $4
sb $4, 0($4)
mfhi $1
mfhi $1
TAG210:
divu $1, $1
sb $1, 0($1)
addiu $3, $1, 11
blez $3, TAG211
TAG211:
slti $3, $3, 5
subu $2, $3, $3
mtlo $3
lui $1, 0
TAG212:
mult $1, $1
or $3, $1, $1
mtlo $3
lui $2, 1
TAG213:
xor $4, $2, $2
bne $2, $4, TAG214
mfhi $4
mtlo $4
TAG214:
nor $4, $4, $4
blez $4, TAG215
sb $4, 1($4)
sh $4, 0($4)
TAG215:
mfhi $3
sb $4, 0($3)
mtlo $4
lui $4, 10
TAG216:
lui $2, 4
srl $1, $2, 8
div $2, $2
beq $1, $4, TAG217
TAG217:
lui $1, 15
sll $0, $0, 0
mult $1, $1
bgtz $1, TAG218
TAG218:
multu $1, $1
mthi $1
xori $4, $1, 10
bgtz $1, TAG219
TAG219:
multu $4, $4
addu $4, $4, $4
mtlo $4
bltz $4, TAG220
TAG220:
sll $0, $0, 0
bgtz $2, TAG221
mthi $4
mthi $4
TAG221:
mfhi $2
bne $2, $2, TAG222
divu $2, $2
subu $1, $2, $2
TAG222:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
divu $1, $1
TAG223:
bltz $4, TAG224
addiu $2, $4, 11
sll $0, $0, 0
lui $2, 7
TAG224:
mtlo $2
sll $0, $0, 0
mtlo $2
bne $2, $2, TAG225
TAG225:
mflo $1
bne $2, $1, TAG226
addiu $2, $1, 5
sll $0, $0, 0
TAG226:
mult $2, $2
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
TAG227:
lui $1, 7
beq $1, $1, TAG228
div $1, $1
beq $1, $1, TAG228
TAG228:
addu $4, $1, $1
mfhi $4
lbu $1, 0($4)
mfhi $1
TAG229:
bne $1, $1, TAG230
lui $3, 10
bgtz $1, TAG230
sltu $2, $3, $3
TAG230:
bltz $2, TAG231
srl $3, $2, 15
mfhi $3
lui $4, 5
TAG231:
sll $0, $0, 0
mtlo $4
mfhi $3
multu $4, $4
TAG232:
bne $3, $3, TAG233
addiu $2, $3, 4
div $2, $2
mthi $3
TAG233:
xori $3, $2, 7
mtlo $3
bgtz $3, TAG234
mfhi $3
TAG234:
bgtz $3, TAG235
sra $2, $3, 0
nor $2, $3, $3
bne $3, $2, TAG235
TAG235:
divu $2, $2
sb $2, 1($2)
lui $1, 15
sb $2, 1($2)
TAG236:
sll $0, $0, 0
mfhi $4
addu $4, $4, $1
xori $2, $4, 0
TAG237:
lui $3, 0
sb $2, 0($3)
mfhi $2
sll $4, $2, 5
TAG238:
addi $3, $4, 8
lhu $4, 0($3)
sw $3, -2313($4)
beq $4, $4, TAG239
TAG239:
mtlo $4
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
TAG240:
sll $0, $0, 0
lui $3, 8
lui $1, 4
blez $3, TAG241
TAG241:
mfhi $2
sll $4, $1, 8
bgez $2, TAG242
mfhi $1
TAG242:
lui $2, 4
mflo $3
and $2, $3, $1
lui $1, 13
TAG243:
mthi $1
divu $1, $1
addu $1, $1, $1
srl $1, $1, 9
TAG244:
multu $1, $1
lui $2, 2
lui $3, 2
bne $1, $1, TAG245
TAG245:
andi $2, $3, 5
lui $4, 4
sw $4, 0($2)
bne $3, $2, TAG246
TAG246:
srlv $2, $4, $4
lui $2, 12
mflo $2
mthi $4
TAG247:
mfhi $3
beq $2, $3, TAG248
addiu $1, $2, 11
sll $0, $0, 0
TAG248:
lui $4, 13
xor $3, $2, $2
mtlo $3
lui $2, 9
TAG249:
beq $2, $2, TAG250
lui $1, 11
xor $1, $2, $1
sb $1, 0($1)
TAG250:
bltz $1, TAG251
sll $0, $0, 0
lui $3, 1
sra $2, $4, 6
TAG251:
mfhi $4
sb $2, -13312($2)
blez $2, TAG252
andi $3, $2, 4
TAG252:
bgez $3, TAG253
sb $3, 0($3)
mtlo $3
bltz $3, TAG253
TAG253:
mfhi $1
mtlo $1
lb $3, 0($3)
bltz $3, TAG254
TAG254:
ori $1, $3, 10
bltz $3, TAG255
srlv $3, $1, $1
lui $3, 9
TAG255:
mthi $3
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG256:
mfhi $1
beq $1, $1, TAG257
mtlo $4
lbu $1, 0($4)
TAG257:
blez $1, TAG258
lui $3, 3
sll $0, $0, 0
mult $1, $3
TAG258:
sh $2, -13312($2)
lbu $2, -13312($2)
sltiu $4, $2, 7
andi $2, $4, 13
TAG259:
mfhi $3
bne $3, $2, TAG260
subu $4, $2, $2
sw $3, 0($2)
TAG260:
slti $3, $4, 2
lh $2, 0($4)
sb $2, 0($3)
bne $2, $4, TAG261
TAG261:
divu $2, $2
lbu $4, -13312($2)
divu $2, $2
mthi $4
TAG262:
bgez $4, TAG263
lui $1, 5
ori $2, $1, 11
bne $1, $2, TAG263
TAG263:
sll $4, $2, 5
sll $0, $0, 0
bgtz $2, TAG264
lui $2, 7
TAG264:
mult $2, $2
sll $0, $0, 0
bne $2, $2, TAG265
xori $4, $2, 9
TAG265:
mthi $4
bgtz $4, TAG266
sll $0, $0, 0
or $1, $4, $4
TAG266:
mtlo $1
addu $3, $1, $1
bne $3, $1, TAG267
sll $0, $0, 0
TAG267:
lui $4, 4
sll $0, $0, 0
mthi $2
subu $4, $4, $3
TAG268:
sll $3, $4, 14
div $4, $4
lui $2, 4
sllv $4, $3, $2
TAG269:
mfhi $1
bne $4, $4, TAG270
sltiu $1, $4, 13
xor $2, $4, $1
TAG270:
mult $2, $2
lui $3, 3
sll $0, $0, 0
mfhi $4
TAG271:
bne $4, $4, TAG272
mthi $4
beq $4, $4, TAG272
addiu $3, $4, 2
TAG272:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
beq $4, $3, TAG273
TAG273:
subu $3, $4, $4
mult $3, $3
sb $4, 0($3)
mult $4, $3
TAG274:
lh $3, 0($3)
lhu $2, 0($3)
mtlo $3
bne $3, $3, TAG275
TAG275:
addu $2, $2, $2
mfhi $1
lui $4, 5
lui $4, 10
TAG276:
mtlo $4
mflo $2
bltz $2, TAG277
mfhi $3
TAG277:
addiu $4, $3, 9
bltz $3, TAG278
mthi $4
srl $4, $3, 10
TAG278:
blez $4, TAG279
sh $4, 0($4)
mfhi $4
mflo $1
TAG279:
mult $1, $1
mtlo $1
mfhi $2
lui $2, 10
TAG280:
sll $0, $0, 0
blez $2, TAG281
divu $2, $2
xori $2, $2, 8
TAG281:
srl $2, $2, 6
div $2, $2
div $2, $2
lui $1, 0
TAG282:
mthi $1
lb $3, 0($1)
bgez $3, TAG283
lui $2, 12
TAG283:
addu $3, $2, $2
mfhi $1
divu $1, $2
subu $3, $1, $3
TAG284:
bgez $3, TAG285
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
TAG285:
addu $2, $1, $1
mfhi $2
mtlo $2
mflo $3
TAG286:
lui $2, 6
mthi $2
mult $3, $2
beq $2, $3, TAG287
TAG287:
mfhi $3
sll $0, $0, 0
mthi $2
mflo $4
TAG288:
lui $2, 8
multu $2, $4
mtlo $2
blez $4, TAG289
TAG289:
mflo $2
lui $1, 0
blez $1, TAG290
slti $1, $2, 5
TAG290:
sw $1, 0($1)
nor $3, $1, $1
lhu $4, 0($1)
lb $1, 1($3)
TAG291:
lw $2, 0($1)
lui $3, 4
subu $4, $2, $3
mthi $3
TAG292:
sll $0, $0, 0
or $1, $4, $4
or $4, $4, $1
div $4, $4
TAG293:
mtlo $4
mthi $4
div $4, $4
mthi $4
TAG294:
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG295
lui $3, 7
TAG295:
sll $0, $0, 0
lui $3, 15
sll $0, $0, 0
beq $3, $3, TAG296
TAG296:
nor $3, $3, $3
mtlo $3
addiu $1, $3, 3
sll $0, $0, 0
TAG297:
srav $1, $4, $4
ori $2, $4, 3
mtlo $1
lui $1, 8
TAG298:
beq $1, $1, TAG299
lui $2, 10
sb $2, 0($1)
sltiu $3, $1, 11
TAG299:
mthi $3
srlv $4, $3, $3
beq $4, $4, TAG300
ori $4, $4, 13
TAG300:
mthi $4
multu $4, $4
bgez $4, TAG301
mflo $3
TAG301:
mfhi $4
mthi $3
mfhi $2
and $1, $4, $3
TAG302:
mflo $1
mfhi $4
addiu $1, $1, 5
mtlo $1
TAG303:
blez $1, TAG304
multu $1, $1
beq $1, $1, TAG304
sll $0, $0, 0
TAG304:
beq $3, $3, TAG305
sll $0, $0, 0
divu $4, $3
mthi $3
TAG305:
sll $0, $0, 0
bltz $4, TAG306
multu $4, $4
addiu $1, $4, 4
TAG306:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
lui $4, 6
TAG307:
xori $3, $4, 2
div $4, $4
mtlo $4
sltu $1, $4, $3
TAG308:
divu $1, $1
lbu $3, 0($1)
and $3, $3, $1
mtlo $3
TAG309:
lui $4, 8
mtlo $3
sll $0, $0, 0
mflo $4
TAG310:
multu $4, $4
blez $4, TAG311
lui $2, 13
srl $2, $2, 13
TAG311:
mthi $2
lui $1, 15
sll $0, $0, 0
lui $1, 14
TAG312:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG313
div $1, $1
TAG313:
multu $1, $1
mthi $1
bne $1, $1, TAG314
sll $0, $0, 0
TAG314:
mflo $2
lui $4, 9
sltiu $3, $1, 0
lui $4, 5
TAG315:
addiu $3, $4, 2
srav $2, $3, $4
divu $4, $3
mthi $2
TAG316:
bgez $2, TAG317
sll $0, $0, 0
lw $3, 0($2)
mtlo $1
TAG317:
mfhi $1
bne $3, $1, TAG318
sll $4, $1, 14
srl $3, $1, 15
TAG318:
sh $3, 0($3)
mult $3, $3
multu $3, $3
nor $1, $3, $3
TAG319:
bltz $1, TAG320
mfhi $3
beq $1, $3, TAG320
sltiu $4, $1, 0
TAG320:
bgtz $4, TAG321
mflo $1
bgtz $4, TAG321
mflo $3
TAG321:
srlv $3, $3, $3
bne $3, $3, TAG322
lui $4, 13
sh $4, 0($3)
TAG322:
lui $1, 0
mflo $4
lui $4, 12
beq $4, $4, TAG323
TAG323:
mtlo $4
slti $2, $4, 4
sll $0, $0, 0
mtlo $4
TAG324:
mult $2, $2
blez $2, TAG325
lui $4, 14
lui $1, 12
TAG325:
srlv $3, $1, $1
mthi $1
bgtz $1, TAG326
lui $1, 4
TAG326:
lui $1, 15
blez $1, TAG327
mfhi $1
andi $4, $1, 4
TAG327:
sw $4, 0($4)
srl $4, $4, 13
mult $4, $4
bne $4, $4, TAG328
TAG328:
lui $2, 9
mult $2, $4
mult $2, $4
sh $2, 0($4)
TAG329:
mflo $1
beq $2, $2, TAG330
lui $4, 14
sh $4, 0($4)
TAG330:
bgez $4, TAG331
sll $0, $0, 0
lui $4, 9
bne $4, $4, TAG331
TAG331:
sltiu $1, $4, 10
bne $4, $4, TAG332
lui $3, 4
mflo $1
TAG332:
bltz $1, TAG333
lbu $2, 0($1)
lui $1, 10
mtlo $1
TAG333:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
ori $2, $1, 5
TAG334:
mfhi $4
sll $0, $0, 0
mflo $4
mtlo $4
TAG335:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG336:
mfhi $2
subu $2, $2, $2
srlv $2, $1, $1
sll $0, $0, 0
TAG337:
bne $3, $3, TAG338
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG338
TAG338:
mflo $2
bne $1, $2, TAG339
sb $2, 0($2)
bne $1, $1, TAG339
TAG339:
sub $2, $2, $2
bgtz $2, TAG340
xor $4, $2, $2
lui $3, 3
TAG340:
mfhi $4
beq $4, $3, TAG341
sb $3, 0($4)
mtlo $4
TAG341:
sra $3, $4, 10
mult $3, $4
bltz $4, TAG342
mtlo $4
TAG342:
or $3, $3, $3
lh $3, 0($3)
mthi $3
sw $3, 0($3)
TAG343:
sltu $1, $3, $3
mtlo $1
multu $3, $3
mflo $4
TAG344:
mult $4, $4
lui $4, 12
bne $4, $4, TAG345
mtlo $4
TAG345:
beq $4, $4, TAG346
sll $0, $0, 0
beq $4, $4, TAG346
sh $4, 0($4)
TAG346:
sllv $2, $4, $4
sll $0, $0, 0
mtlo $4
addiu $2, $4, 14
TAG347:
addu $4, $2, $2
sll $0, $0, 0
and $1, $4, $2
sra $3, $1, 8
TAG348:
slt $2, $3, $3
bne $3, $3, TAG349
multu $3, $2
sh $2, 0($2)
TAG349:
lh $2, 0($2)
addi $3, $2, 13
bgtz $2, TAG350
lui $1, 15
TAG350:
blez $1, TAG351
sll $0, $0, 0
mtlo $1
sltiu $1, $1, 11
TAG351:
lw $1, 0($1)
mfhi $1
mflo $1
or $3, $1, $1
TAG352:
mtlo $3
bne $3, $3, TAG353
sll $0, $0, 0
mtlo $3
TAG353:
mthi $2
addiu $1, $2, 3
mult $1, $2
mtlo $2
TAG354:
mtlo $1
sltiu $1, $1, 15
bltz $1, TAG355
lb $1, 0($1)
TAG355:
bgez $1, TAG356
lb $4, 0($1)
mtlo $4
multu $4, $1
TAG356:
blez $4, TAG357
multu $4, $4
addi $2, $4, 15
bltz $2, TAG357
TAG357:
mtlo $2
mtlo $2
slti $2, $2, 7
sltu $1, $2, $2
TAG358:
mfhi $2
bne $2, $2, TAG359
srav $4, $2, $2
sb $2, 0($2)
TAG359:
addiu $2, $4, 0
lw $4, 0($4)
lbu $2, 0($4)
sub $4, $4, $4
TAG360:
sltiu $2, $4, 1
mflo $1
lui $2, 14
sll $0, $0, 0
TAG361:
sll $3, $1, 2
bgtz $3, TAG362
sb $3, 0($1)
sw $1, 0($1)
TAG362:
lh $3, 0($3)
beq $3, $3, TAG363
lui $1, 2
bltz $1, TAG363
TAG363:
slti $4, $1, 3
beq $1, $4, TAG364
mtlo $4
mult $4, $4
TAG364:
mult $4, $4
sh $4, 0($4)
bgez $4, TAG365
mfhi $4
TAG365:
lb $4, 0($4)
beq $4, $4, TAG366
mtlo $4
lbu $2, 0($4)
TAG366:
srlv $2, $2, $2
sll $1, $2, 9
bgtz $2, TAG367
sll $3, $2, 2
TAG367:
mtlo $3
sll $0, $0, 0
bne $1, $3, TAG368
lui $3, 11
TAG368:
beq $3, $3, TAG369
sll $0, $0, 0
bgtz $3, TAG369
sra $2, $3, 11
TAG369:
bltz $2, TAG370
mtlo $2
div $2, $2
divu $2, $2
TAG370:
slt $2, $2, $2
bne $2, $2, TAG371
and $4, $2, $2
lui $1, 13
TAG371:
addu $4, $1, $1
mthi $1
bne $1, $4, TAG372
subu $4, $4, $1
TAG372:
bgez $4, TAG373
sll $0, $0, 0
mthi $4
bgez $4, TAG373
TAG373:
divu $4, $4
and $1, $4, $4
mfhi $3
bgtz $3, TAG374
TAG374:
lui $3, 14
slt $3, $3, $3
addi $2, $3, 1
mult $3, $2
TAG375:
multu $2, $2
lui $3, 0
bgez $2, TAG376
multu $2, $3
TAG376:
mtlo $3
mthi $3
srl $1, $3, 3
mult $1, $3
TAG377:
or $4, $1, $1
bltz $1, TAG378
lh $1, 0($4)
subu $4, $4, $1
TAG378:
slt $2, $4, $4
srav $2, $2, $2
sw $4, 0($4)
sll $4, $2, 3
TAG379:
mfhi $2
lb $2, 0($2)
bne $4, $2, TAG380
and $4, $2, $4
TAG380:
mflo $4
mthi $4
sb $4, 0($4)
beq $4, $4, TAG381
TAG381:
andi $3, $4, 11
mflo $3
mthi $3
lui $4, 8
TAG382:
mthi $4
mflo $4
lh $1, 0($4)
sh $1, 0($1)
TAG383:
mult $1, $1
lbu $4, 0($1)
lhu $3, 0($1)
mflo $2
TAG384:
nor $3, $2, $2
beq $2, $2, TAG385
mfhi $1
div $2, $1
TAG385:
xor $2, $1, $1
srl $2, $2, 6
mflo $1
multu $1, $1
TAG386:
mtlo $1
bgtz $1, TAG387
mthi $1
lb $3, 0($1)
TAG387:
lui $1, 14
addu $1, $1, $3
lui $4, 15
lui $1, 1
TAG388:
beq $1, $1, TAG389
xor $4, $1, $1
mthi $1
mfhi $3
TAG389:
lui $4, 14
mfhi $2
sll $0, $0, 0
lui $4, 14
TAG390:
divu $4, $4
mfhi $4
lui $1, 8
bltz $4, TAG391
TAG391:
sll $0, $0, 0
lw $4, 0($2)
sra $2, $1, 0
bgtz $4, TAG392
TAG392:
multu $2, $2
lui $1, 5
addiu $2, $2, 13
bne $2, $1, TAG393
TAG393:
mtlo $2
mflo $2
beq $2, $2, TAG394
nor $3, $2, $2
TAG394:
addiu $3, $3, 4
sll $0, $0, 0
addiu $3, $3, 1
lui $3, 5
TAG395:
mtlo $3
sll $0, $0, 0
xor $3, $4, $3
subu $3, $3, $3
TAG396:
beq $3, $3, TAG397
lui $4, 14
andi $4, $4, 4
mthi $4
TAG397:
mult $4, $4
sll $0, $0, 0
mthi $4
sllv $1, $4, $4
TAG398:
lui $1, 11
blez $1, TAG399
lui $4, 2
mflo $3
TAG399:
sub $3, $3, $3
lh $2, 0($3)
sh $2, 0($3)
bgtz $3, TAG400
TAG400:
mtlo $2
mflo $1
bgtz $1, TAG401
sltiu $3, $2, 1
TAG401:
sllv $1, $3, $3
bgez $3, TAG402
mflo $4
mtlo $1
TAG402:
bne $4, $4, TAG403
mtlo $4
mult $4, $4
sw $4, 0($4)
TAG403:
bltz $4, TAG404
and $2, $4, $4
bltz $2, TAG404
mthi $4
TAG404:
andi $2, $2, 14
mtlo $2
multu $2, $2
xor $1, $2, $2
TAG405:
lui $3, 3
mult $1, $1
sll $0, $0, 0
bltz $3, TAG406
TAG406:
addu $4, $3, $3
sllv $1, $4, $3
divu $3, $4
mfhi $4
TAG407:
addiu $1, $4, 7
srlv $2, $1, $4
lui $2, 3
sll $0, $0, 0
TAG408:
lui $2, 14
bltz $2, TAG409
sll $0, $0, 0
mtlo $1
TAG409:
sll $0, $0, 0
div $1, $1
bne $1, $1, TAG410
lui $4, 15
TAG410:
andi $4, $4, 3
sb $4, 0($4)
sltu $4, $4, $4
mult $4, $4
TAG411:
lui $2, 9
multu $4, $4
lhu $1, 0($4)
sll $0, $0, 0
TAG412:
beq $1, $1, TAG413
lui $4, 13
sb $4, 0($4)
nor $3, $1, $1
TAG413:
srav $4, $3, $3
mult $4, $4
addiu $1, $4, 4
bltz $3, TAG414
TAG414:
nor $4, $1, $1
sll $0, $0, 0
lui $4, 0
subu $1, $4, $4
TAG415:
ori $3, $1, 3
lhu $4, 0($1)
lui $2, 1
lui $1, 6
TAG416:
lui $2, 7
blez $1, TAG417
sll $2, $1, 1
beq $1, $1, TAG417
TAG417:
mthi $2
srl $4, $2, 4
bne $2, $2, TAG418
sll $0, $0, 0
TAG418:
mflo $2
mflo $3
mtlo $2
lhu $3, 0($2)
TAG419:
addiu $1, $3, 4
blez $1, TAG420
sllv $2, $3, $1
sw $2, 0($3)
TAG420:
mthi $2
multu $2, $2
mthi $2
srav $2, $2, $2
TAG421:
nor $1, $2, $2
mult $2, $1
lb $3, 1($1)
lhu $2, 0($3)
TAG422:
mthi $2
srlv $1, $2, $2
lui $4, 1
andi $4, $2, 10
TAG423:
mult $4, $4
mtlo $4
mfhi $2
lw $2, 0($2)
TAG424:
mult $2, $2
xor $3, $2, $2
bgtz $3, TAG425
mfhi $4
TAG425:
srl $3, $4, 12
mthi $4
mfhi $3
sw $3, 0($3)
TAG426:
bgez $3, TAG427
lhu $4, 0($3)
lbu $1, 0($4)
mult $1, $1
TAG427:
lb $4, 0($1)
mfhi $1
lh $3, 0($1)
lui $2, 6
TAG428:
addiu $1, $2, 11
mtlo $1
lui $2, 1
mflo $1
TAG429:
slt $4, $1, $1
mthi $1
lui $1, 2
sllv $4, $1, $1
TAG430:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
multu $4, $2
TAG431:
sll $0, $0, 0
bgez $3, TAG432
addu $2, $3, $2
sw $2, 0($2)
TAG432:
mflo $3
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
TAG433:
div $4, $4
addiu $3, $4, 1
addu $2, $3, $3
mtlo $3
TAG434:
sll $0, $0, 0
ori $1, $2, 8
subu $4, $1, $2
lui $2, 11
TAG435:
sll $0, $0, 0
lui $3, 4
mtlo $1
lui $4, 0
TAG436:
sw $4, 0($4)
lbu $2, 0($4)
sllv $2, $4, $4
lw $1, 0($2)
TAG437:
mflo $1
mflo $3
mfhi $3
multu $1, $3
TAG438:
srlv $2, $3, $3
mflo $2
lw $4, 0($2)
beq $4, $3, TAG439
TAG439:
sh $4, 0($4)
mfhi $2
blez $2, TAG440
andi $4, $2, 13
TAG440:
bne $4, $4, TAG441
srl $2, $4, 5
mult $2, $4
addiu $1, $4, 8
TAG441:
sltiu $1, $1, 11
mtlo $1
mtlo $1
bgez $1, TAG442
TAG442:
div $1, $1
addiu $3, $1, 14
mthi $1
bne $1, $1, TAG443
TAG443:
subu $3, $3, $3
and $1, $3, $3
bne $1, $1, TAG444
multu $3, $1
TAG444:
multu $1, $1
blez $1, TAG445
addiu $4, $1, 5
lui $4, 3
TAG445:
bgtz $4, TAG446
lui $2, 7
sb $4, 0($4)
div $4, $2
TAG446:
divu $2, $2
xori $4, $2, 3
lui $1, 1
mflo $2
TAG447:
multu $2, $2
mfhi $1
mtlo $1
sllv $3, $1, $2
TAG448:
lhu $4, 0($3)
andi $2, $4, 5
sll $1, $3, 12
slt $2, $1, $1
TAG449:
mflo $2
bltz $2, TAG450
mfhi $3
ori $4, $3, 1
TAG450:
mult $4, $4
lbu $2, 0($4)
bltz $2, TAG451
sw $4, 0($2)
TAG451:
sllv $4, $2, $2
multu $4, $4
multu $4, $2
lw $2, 0($2)
TAG452:
beq $2, $2, TAG453
multu $2, $2
lui $1, 7
lh $3, 0($2)
TAG453:
lw $2, 0($3)
multu $3, $3
subu $1, $3, $2
xori $2, $3, 10
TAG454:
mfhi $4
mult $2, $4
blez $2, TAG455
mthi $2
TAG455:
mult $4, $4
add $4, $4, $4
blez $4, TAG456
lw $1, 0($4)
TAG456:
subu $2, $1, $1
srav $4, $1, $1
beq $2, $1, TAG457
multu $1, $4
TAG457:
bltz $4, TAG458
mflo $4
beq $4, $4, TAG458
mflo $4
TAG458:
mthi $4
mthi $4
multu $4, $4
mfhi $3
TAG459:
addi $1, $3, 13
bgez $3, TAG460
lui $3, 4
beq $3, $3, TAG460
TAG460:
addiu $3, $3, 8
or $2, $3, $3
mtlo $3
mthi $3
TAG461:
lui $4, 1
sll $0, $0, 0
div $4, $2
blez $2, TAG462
TAG462:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
lui $1, 6
TAG463:
addu $2, $1, $1
addu $2, $1, $2
sllv $4, $2, $1
sll $0, $0, 0
TAG464:
srav $4, $4, $4
xori $2, $4, 13
xori $2, $2, 8
mflo $4
TAG465:
mthi $4
bne $4, $4, TAG466
sh $4, 0($4)
bne $4, $4, TAG466
TAG466:
mfhi $4
lui $1, 7
beq $1, $1, TAG467
sll $0, $0, 0
TAG467:
sll $0, $0, 0
lui $3, 11
subu $2, $3, $4
blez $1, TAG468
TAG468:
mflo $3
srl $4, $3, 7
mtlo $4
multu $4, $3
TAG469:
mflo $1
mthi $4
multu $1, $1
sh $1, 0($4)
TAG470:
mfhi $3
sb $1, 0($3)
blez $3, TAG471
sub $3, $1, $3
TAG471:
multu $3, $3
mult $3, $3
sltiu $4, $3, 13
andi $2, $3, 11
TAG472:
mthi $2
bne $2, $2, TAG473
lui $1, 15
sltu $2, $2, $2
TAG473:
sh $2, 0($2)
lbu $1, 0($2)
sw $2, 0($1)
multu $2, $1
TAG474:
mtlo $1
sllv $2, $1, $1
sh $1, 0($1)
bltz $2, TAG475
TAG475:
lui $2, 1
lui $3, 0
sll $0, $0, 0
lui $4, 2
TAG476:
divu $4, $4
sll $0, $0, 0
mthi $3
sub $1, $4, $3
TAG477:
beq $1, $1, TAG478
srav $2, $1, $1
mthi $2
mflo $2
TAG478:
mthi $2
blez $2, TAG479
addiu $4, $2, 3
sll $0, $0, 0
TAG479:
beq $4, $4, TAG480
mult $4, $4
bne $4, $4, TAG480
mfhi $4
TAG480:
multu $4, $4
addu $1, $4, $4
div $4, $4
bgtz $1, TAG481
TAG481:
sll $0, $0, 0
slt $3, $1, $1
lui $2, 15
bgez $2, TAG482
TAG482:
sll $0, $0, 0
bne $2, $2, TAG483
sll $0, $0, 0
mflo $1
TAG483:
lbu $4, 0($1)
lui $1, 3
sll $0, $0, 0
lui $2, 6
TAG484:
divu $2, $2
ori $2, $2, 10
addu $4, $2, $2
beq $2, $2, TAG485
TAG485:
sll $0, $0, 0
bgez $4, TAG486
mult $4, $4
multu $4, $2
TAG486:
multu $2, $2
bgtz $2, TAG487
sll $0, $0, 0
mfhi $2
TAG487:
lui $1, 6
bgtz $2, TAG488
lui $1, 4
blez $2, TAG488
TAG488:
srl $4, $1, 14
lbu $3, 0($4)
sb $3, 0($3)
sll $0, $0, 0
TAG489:
sltiu $2, $1, 12
lui $3, 6
sll $0, $0, 0
lui $1, 7
TAG490:
lui $3, 9
or $4, $3, $1
lui $3, 9
bne $3, $3, TAG491
TAG491:
multu $3, $3
beq $3, $3, TAG492
addu $1, $3, $3
div $3, $1
TAG492:
bltz $1, TAG493
sll $0, $0, 0
lui $4, 6
bne $4, $1, TAG493
TAG493:
divu $4, $4
addiu $3, $4, 2
blez $4, TAG494
ori $3, $3, 0
TAG494:
slti $1, $3, 14
mfhi $3
multu $3, $3
bne $1, $3, TAG495
TAG495:
lhu $4, 0($3)
mult $4, $4
lui $3, 7
beq $3, $3, TAG496
TAG496:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
mtlo $3
TAG497:
sll $0, $0, 0
sra $1, $3, 6
srlv $2, $1, $1
beq $1, $2, TAG498
TAG498:
mfhi $1
mtlo $2
beq $1, $2, TAG499
ori $1, $2, 6
TAG499:
bne $1, $1, TAG500
sw $1, -7174($1)
lb $3, -7174($1)
divu $1, $1
TAG500:
div $3, $3
bltz $3, TAG501
mflo $2
sb $2, 0($2)
TAG501:
mfhi $3
beq $3, $2, TAG502
mflo $1
mflo $2
TAG502:
beq $2, $2, TAG503
mthi $2
beq $2, $2, TAG503
lb $1, 0($2)
TAG503:
mflo $1
bgtz $1, TAG504
lbu $2, 0($1)
beq $1, $2, TAG504
TAG504:
lui $1, 8
mfhi $1
div $2, $1
sll $2, $1, 11
TAG505:
beq $2, $2, TAG506
xor $4, $2, $2
lh $3, 0($4)
xor $1, $3, $3
TAG506:
lb $3, 0($1)
mtlo $3
lui $4, 6
beq $4, $4, TAG507
TAG507:
mflo $4
lui $3, 7
sltiu $1, $4, 12
mfhi $2
TAG508:
mult $2, $2
lw $3, 0($2)
beq $3, $2, TAG509
addi $2, $2, 2
TAG509:
mfhi $3
sltu $4, $2, $3
mfhi $2
mfhi $1
TAG510:
sltu $3, $1, $1
mthi $3
sh $1, 0($1)
lhu $3, 0($1)
TAG511:
lui $4, 9
bne $4, $4, TAG512
sw $3, 0($3)
subu $2, $4, $3
TAG512:
lui $3, 0
bne $3, $3, TAG513
andi $1, $2, 11
sll $0, $0, 0
TAG513:
mflo $1
sw $1, 0($1)
and $1, $1, $1
mflo $3
TAG514:
lui $4, 6
sltiu $3, $3, 11
mflo $1
sll $0, $0, 0
TAG515:
sb $1, 0($1)
sb $1, 0($1)
sra $1, $1, 0
addi $1, $1, 6
TAG516:
mfhi $3
sll $4, $3, 15
beq $3, $1, TAG517
mtlo $1
TAG517:
srav $4, $4, $4
bgez $4, TAG518
lw $4, 0($4)
mfhi $1
TAG518:
mtlo $1
and $1, $1, $1
bne $1, $1, TAG519
lbu $3, 0($1)
TAG519:
sw $3, 0($3)
beq $3, $3, TAG520
sllv $4, $3, $3
sh $3, 0($4)
TAG520:
sh $4, 0($4)
lb $1, 0($4)
lui $2, 5
beq $2, $4, TAG521
TAG521:
lui $2, 9
xor $4, $2, $2
lui $1, 1
sll $0, $0, 0
TAG522:
beq $1, $1, TAG523
sll $0, $0, 0
bgez $4, TAG523
mtlo $4
TAG523:
lui $3, 14
divu $3, $3
lui $4, 1
slt $3, $4, $3
TAG524:
mflo $2
bgez $2, TAG525
lb $1, 0($3)
xori $1, $3, 12
TAG525:
addu $2, $1, $1
nor $1, $2, $1
mult $1, $1
addu $2, $1, $1
TAG526:
sllv $4, $2, $2
subu $3, $4, $4
beq $2, $4, TAG527
xor $4, $3, $2
TAG527:
multu $4, $4
mfhi $4
bgez $4, TAG528
mtlo $4
TAG528:
divu $4, $4
lui $1, 13
sw $4, 4($4)
bltz $4, TAG529
TAG529:
xori $1, $1, 6
mfhi $2
ori $1, $1, 4
mult $1, $1
TAG530:
lui $4, 14
or $1, $4, $1
lui $1, 8
beq $1, $4, TAG531
TAG531:
slt $3, $1, $1
xor $2, $1, $1
mflo $1
lh $1, 0($2)
TAG532:
sw $1, 4($1)
mflo $1
xor $2, $1, $1
addu $3, $1, $2
TAG533:
beq $3, $3, TAG534
mflo $1
lhu $2, 0($3)
bgez $2, TAG534
TAG534:
sb $2, 0($2)
bgez $2, TAG535
xori $2, $2, 2
sb $2, 0($2)
TAG535:
mthi $2
or $3, $2, $2
bgtz $2, TAG536
lhu $3, 0($2)
TAG536:
sll $0, $0, 0
div $4, $4
mfhi $1
beq $4, $1, TAG537
TAG537:
sll $2, $1, 5
srlv $4, $2, $1
sh $2, 0($2)
lbu $3, 0($4)
TAG538:
mtlo $3
add $3, $3, $3
sh $3, 0($3)
multu $3, $3
TAG539:
sllv $1, $3, $3
bgez $1, TAG540
mfhi $1
mflo $4
TAG540:
lui $1, 9
beq $1, $1, TAG541
sll $0, $0, 0
mfhi $2
TAG541:
lui $3, 12
lui $4, 10
nor $2, $2, $4
sll $0, $0, 0
TAG542:
sra $4, $2, 6
sh $2, 10241($4)
mthi $2
mthi $2
TAG543:
sb $4, 10241($4)
mtlo $4
addu $4, $4, $4
lui $1, 8
TAG544:
mult $1, $1
slti $3, $1, 5
sra $4, $1, 12
blez $3, TAG545
TAG545:
lui $4, 4
addu $3, $4, $4
mflo $4
lui $2, 10
TAG546:
beq $2, $2, TAG547
mfhi $4
sw $2, 0($2)
mthi $2
TAG547:
lw $4, 0($4)
sllv $4, $4, $4
mthi $4
mflo $2
TAG548:
lui $4, 5
mfhi $4
sltiu $1, $4, 6
bne $1, $4, TAG549
TAG549:
sb $1, 0($1)
beq $1, $1, TAG550
mflo $4
blez $1, TAG550
TAG550:
mtlo $4
or $1, $4, $4
lui $1, 1
div $1, $1
TAG551:
addiu $2, $1, 4
slti $4, $1, 2
sll $0, $0, 0
bgtz $1, TAG552
TAG552:
mthi $4
sb $4, 0($4)
sh $4, 0($4)
and $3, $4, $4
TAG553:
sb $3, 0($3)
nor $1, $3, $3
mthi $3
mult $3, $3
TAG554:
sllv $1, $1, $1
sll $0, $0, 0
bgtz $1, TAG555
sll $0, $0, 0
TAG555:
nor $3, $4, $4
mtlo $3
srlv $3, $4, $3
mult $3, $4
TAG556:
mfhi $2
xori $1, $3, 13
sb $2, 0($1)
addiu $1, $1, 5
TAG557:
mtlo $1
mfhi $3
bgtz $3, TAG558
lbu $3, 0($1)
TAG558:
or $1, $3, $3
bne $1, $3, TAG559
sw $3, 0($3)
beq $1, $3, TAG559
TAG559:
mflo $3
multu $1, $1
sllv $4, $3, $3
lh $1, 0($3)
TAG560:
lui $1, 5
lui $4, 13
mthi $1
multu $1, $1
TAG561:
mfhi $3
sra $3, $4, 3
lui $1, 11
lui $1, 7
TAG562:
sltu $1, $1, $1
slti $2, $1, 5
bgez $1, TAG563
sra $1, $1, 1
TAG563:
lui $2, 5
mflo $3
mult $1, $3
lui $1, 2
TAG564:
blez $1, TAG565
mflo $4
lb $1, 0($4)
sh $1, 0($1)
TAG565:
mtlo $1
lbu $4, 0($1)
lui $4, 1
srlv $3, $4, $4
TAG566:
sll $0, $0, 0
blez $3, TAG567
andi $4, $3, 2
mfhi $1
TAG567:
lui $2, 14
sh $1, 0($1)
subu $4, $2, $2
mthi $1
TAG568:
lui $2, 14
or $3, $2, $4
sltiu $1, $3, 9
mflo $4
TAG569:
xor $3, $4, $4
sb $3, 0($4)
xori $3, $3, 15
lui $2, 1
TAG570:
div $2, $2
lui $3, 15
divu $2, $2
mthi $2
TAG571:
bltz $3, TAG572
sll $4, $3, 6
bgtz $4, TAG572
srav $2, $4, $4
TAG572:
srav $4, $2, $2
sll $0, $0, 0
slti $1, $4, 5
beq $1, $2, TAG573
TAG573:
sll $2, $1, 14
sh $1, 0($2)
lui $3, 6
sll $1, $2, 5
TAG574:
lbu $1, 0($1)
nor $3, $1, $1
beq $3, $3, TAG575
srav $2, $1, $3
TAG575:
sb $2, 0($2)
sltu $4, $2, $2
mtlo $2
bgez $2, TAG576
TAG576:
mfhi $2
bgez $2, TAG577
mult $4, $4
beq $2, $2, TAG577
TAG577:
addiu $2, $2, 5
bgtz $2, TAG578
slti $1, $2, 9
mfhi $1
TAG578:
bltz $1, TAG579
xor $1, $1, $1
multu $1, $1
nor $4, $1, $1
TAG579:
mtlo $4
mthi $4
lui $1, 3
div $4, $1
TAG580:
bne $1, $1, TAG581
multu $1, $1
slti $1, $1, 9
sh $1, 0($1)
TAG581:
nor $4, $1, $1
lbu $2, 1($4)
sltiu $1, $1, 7
bltz $1, TAG582
TAG582:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG583:
mfhi $4
lb $4, 0($4)
sb $3, 0($4)
mfhi $3
TAG584:
mfhi $2
beq $2, $3, TAG585
srav $3, $2, $3
srav $4, $3, $2
TAG585:
mfhi $4
bne $4, $4, TAG586
mtlo $4
srl $4, $4, 9
TAG586:
mfhi $3
mtlo $3
mult $4, $3
lui $4, 12
TAG587:
sll $0, $0, 0
sltiu $1, $4, 13
addiu $4, $4, 8
mult $4, $4
TAG588:
bgez $4, TAG589
addu $3, $4, $4
mflo $2
ori $1, $4, 13
TAG589:
sll $1, $1, 14
lhu $1, 0($1)
sw $1, 0($1)
nor $1, $1, $1
TAG590:
sh $1, 1($1)
mthi $1
lui $2, 10
div $1, $2
TAG591:
sltiu $3, $2, 7
mthi $3
lui $2, 2
blez $2, TAG592
TAG592:
divu $2, $2
multu $2, $2
div $2, $2
slt $1, $2, $2
TAG593:
bgtz $1, TAG594
sltiu $1, $1, 11
xor $4, $1, $1
bgez $1, TAG594
TAG594:
sh $4, 0($4)
lui $3, 13
subu $1, $4, $3
sw $4, 0($4)
TAG595:
nor $4, $1, $1
beq $1, $1, TAG596
sll $0, $0, 0
bne $4, $1, TAG596
TAG596:
div $4, $4
and $3, $4, $4
sll $0, $0, 0
beq $3, $4, TAG597
TAG597:
sll $0, $0, 0
sltu $1, $4, $4
mtlo $1
mfhi $4
TAG598:
bne $4, $4, TAG599
mtlo $4
lhu $3, 0($4)
blez $4, TAG599
TAG599:
mflo $3
lui $4, 10
beq $3, $3, TAG600
lw $3, 0($3)
TAG600:
mthi $3
lui $2, 12
mfhi $3
bgtz $2, TAG601
TAG601:
mult $3, $3
slti $3, $3, 9
sb $3, 0($3)
srlv $1, $3, $3
TAG602:
bne $1, $1, TAG603
sb $1, 0($1)
srl $3, $1, 3
beq $3, $3, TAG603
TAG603:
add $1, $3, $3
sra $3, $1, 1
mfhi $4
bgtz $1, TAG604
TAG604:
and $1, $4, $4
mflo $4
multu $4, $4
srlv $4, $4, $4
TAG605:
sltiu $4, $4, 1
bgez $4, TAG606
andi $3, $4, 11
mflo $4
TAG606:
mthi $4
div $4, $4
subu $3, $4, $4
lui $1, 0
TAG607:
mthi $1
bltz $1, TAG608
sltu $1, $1, $1
sw $1, 0($1)
TAG608:
mult $1, $1
mflo $4
mtlo $1
sw $1, 0($4)
TAG609:
mult $4, $4
mfhi $4
sw $4, 0($4)
lw $3, 0($4)
TAG610:
multu $3, $3
lui $1, 4
lui $3, 9
sll $0, $0, 0
TAG611:
sll $0, $0, 0
beq $1, $1, TAG612
mthi $1
lhu $1, 0($1)
TAG612:
srav $2, $1, $1
sll $0, $0, 0
beq $1, $1, TAG613
mthi $2
TAG613:
or $1, $2, $2
sll $0, $0, 0
xori $4, $1, 10
mflo $3
TAG614:
lui $2, 4
lui $1, 11
blez $1, TAG615
sll $0, $0, 0
TAG615:
sll $0, $0, 0
bne $3, $3, TAG616
multu $3, $3
beq $3, $1, TAG616
TAG616:
lui $3, 11
bgtz $3, TAG617
mthi $3
srav $2, $3, $3
TAG617:
sll $0, $0, 0
and $2, $2, $2
beq $2, $2, TAG618
sll $0, $0, 0
TAG618:
bltz $2, TAG619
sll $0, $0, 0
mfhi $2
mult $2, $2
TAG619:
beq $2, $2, TAG620
srl $2, $2, 5
addu $4, $2, $2
bne $2, $2, TAG620
TAG620:
addu $4, $4, $4
addiu $4, $4, 1
mflo $4
lhu $4, 0($4)
TAG621:
bgtz $4, TAG622
mflo $4
beq $4, $4, TAG622
slt $2, $4, $4
TAG622:
lui $4, 1
mflo $3
bgez $3, TAG623
mflo $2
TAG623:
sb $2, 0($2)
lui $2, 8
bgez $2, TAG624
mfhi $1
TAG624:
bgez $1, TAG625
lbu $4, 0($1)
mfhi $1
lbu $2, 0($4)
TAG625:
mflo $1
sll $0, $0, 0
mthi $3
andi $4, $1, 11
TAG626:
beq $4, $4, TAG627
xor $2, $4, $4
mflo $3
bgez $4, TAG627
TAG627:
lui $1, 9
sltu $2, $3, $1
srav $4, $1, $3
xor $3, $3, $2
TAG628:
addiu $1, $3, 1
lh $4, 0($1)
mult $1, $4
lui $1, 15
TAG629:
sll $0, $0, 0
lui $3, 14
sll $0, $0, 0
multu $4, $4
TAG630:
mtlo $4
lhu $1, 0($4)
lw $2, 0($1)
xor $4, $4, $2
TAG631:
mult $4, $4
multu $4, $4
ori $1, $4, 15
lb $4, 0($4)
TAG632:
lhu $2, 0($4)
blez $2, TAG633
mult $2, $4
lui $1, 5
TAG633:
mthi $1
lui $2, 0
and $4, $2, $1
multu $2, $1
TAG634:
lhu $3, 0($4)
mult $4, $3
sb $3, 0($3)
srlv $2, $4, $3
TAG635:
mfhi $4
nor $2, $2, $4
or $3, $4, $2
lw $3, 1($3)
TAG636:
lui $1, 9
lui $2, 11
mthi $3
addiu $2, $1, 2
TAG637:
lui $4, 5
addu $1, $2, $4
bgez $2, TAG638
mthi $1
TAG638:
beq $1, $1, TAG639
sll $0, $0, 0
mult $1, $1
sb $1, 0($1)
TAG639:
mflo $4
bgez $4, TAG640
mult $4, $4
srl $2, $1, 4
TAG640:
sll $0, $0, 0
lui $2, 15
mfhi $4
sll $0, $0, 0
TAG641:
lb $4, 0($3)
lbu $4, 0($3)
mtlo $3
mfhi $1
TAG642:
beq $1, $1, TAG643
sw $1, 0($1)
divu $1, $1
bne $1, $1, TAG643
TAG643:
sb $1, 0($1)
add $2, $1, $1
sw $1, 0($2)
beq $2, $1, TAG644
TAG644:
sub $4, $2, $2
mthi $2
mflo $1
lui $3, 6
TAG645:
mthi $3
blez $3, TAG646
srav $2, $3, $3
mthi $3
TAG646:
bltz $2, TAG647
addiu $3, $2, 8
bltz $2, TAG647
addu $1, $3, $3
TAG647:
divu $1, $1
blez $1, TAG648
lui $3, 8
lui $4, 9
TAG648:
sll $0, $0, 0
bgez $4, TAG649
sltiu $4, $4, 3
lh $2, 0($4)
TAG649:
multu $2, $2
or $1, $2, $2
sll $0, $0, 0
beq $1, $2, TAG650
TAG650:
sllv $3, $1, $1
bltz $1, TAG651
mfhi $4
mfhi $4
TAG651:
divu $4, $4
sh $4, 0($4)
lh $2, 0($4)
bgtz $2, TAG652
TAG652:
lui $1, 6
lui $4, 2
subu $4, $4, $4
and $3, $4, $2
TAG653:
nor $4, $3, $3
mtlo $4
lw $2, 1($4)
sll $2, $4, 8
TAG654:
sll $0, $0, 0
sw $2, 0($3)
bne $3, $3, TAG655
lui $4, 7
TAG655:
mthi $4
bgez $4, TAG656
mthi $4
mtlo $4
TAG656:
srl $3, $4, 15
div $4, $3
slti $4, $4, 4
bne $3, $4, TAG657
TAG657:
mult $4, $4
slt $1, $4, $4
mthi $1
mfhi $3
TAG658:
bgez $3, TAG659
or $2, $3, $3
sw $3, 0($2)
divu $3, $2
TAG659:
lui $2, 12
lui $3, 3
multu $2, $2
slti $4, $2, 0
TAG660:
mthi $4
mthi $4
sw $4, 0($4)
bltz $4, TAG661
TAG661:
mult $4, $4
bltz $4, TAG662
sub $4, $4, $4
sh $4, 0($4)
TAG662:
nor $3, $4, $4
bne $3, $3, TAG663
nor $1, $4, $4
lh $4, 1($3)
TAG663:
bgez $4, TAG664
mfhi $1
lui $4, 3
mflo $2
TAG664:
addu $3, $2, $2
div $2, $3
or $2, $3, $2
subu $4, $2, $2
TAG665:
lui $1, 12
and $2, $1, $4
beq $2, $2, TAG666
sltu $1, $4, $2
TAG666:
lh $3, 0($1)
lb $2, 0($1)
mult $1, $1
xor $1, $1, $1
TAG667:
lui $3, 15
mtlo $3
sw $3, 0($1)
sll $0, $0, 0
TAG668:
lb $3, 0($1)
bltz $3, TAG669
mtlo $3
sh $1, 0($1)
TAG669:
lhu $4, 0($3)
lhu $2, 0($3)
sb $4, 0($3)
mfhi $1
TAG670:
mfhi $3
lui $3, 2
sltu $2, $3, $1
bgtz $1, TAG671
TAG671:
ori $4, $2, 10
lh $4, 0($4)
mfhi $3
sb $4, -2826($4)
TAG672:
mult $3, $3
multu $3, $3
mthi $3
sub $4, $3, $3
TAG673:
bltz $4, TAG674
mtlo $4
multu $4, $4
ori $2, $4, 10
TAG674:
bltz $2, TAG675
addiu $1, $2, 9
lui $3, 6
lui $2, 6
TAG675:
sll $0, $0, 0
srlv $2, $2, $2
bgez $2, TAG676
sra $4, $2, 12
TAG676:
mtlo $4
beq $4, $4, TAG677
slt $2, $4, $4
sub $4, $2, $2
TAG677:
andi $3, $4, 0
multu $4, $4
lh $3, 0($4)
lb $1, 0($3)
TAG678:
lui $2, 13
mtlo $1
bne $2, $1, TAG679
multu $1, $2
TAG679:
bne $2, $2, TAG680
sll $0, $0, 0
mfhi $1
addiu $3, $2, 9
TAG680:
mtlo $3
subu $2, $3, $3
bgez $2, TAG681
lui $3, 12
TAG681:
sltu $1, $3, $3
bltz $1, TAG682
lui $2, 12
slti $2, $2, 15
TAG682:
mflo $3
mfhi $3
mtlo $3
mfhi $4
TAG683:
multu $4, $4
bgez $4, TAG684
andi $3, $4, 8
lui $3, 15
TAG684:
xor $1, $3, $3
sw $1, 0($1)
sh $1, 0($3)
subu $3, $3, $3
TAG685:
sltu $3, $3, $3
lbu $1, 0($3)
mtlo $3
slt $2, $1, $3
TAG686:
mult $2, $2
lui $4, 14
lui $1, 5
lui $1, 2
TAG687:
subu $2, $1, $1
sll $0, $0, 0
blez $2, TAG688
lui $1, 13
TAG688:
xori $1, $1, 2
bne $1, $1, TAG689
divu $1, $1
sll $0, $0, 0
TAG689:
addu $2, $1, $1
sltu $1, $2, $2
mtlo $2
beq $1, $1, TAG690
TAG690:
sh $1, 0($1)
lw $2, 0($1)
lui $3, 2
bgtz $3, TAG691
TAG691:
xori $1, $3, 0
multu $1, $3
blez $3, TAG692
mtlo $3
TAG692:
beq $1, $1, TAG693
sltu $3, $1, $1
lui $2, 10
mflo $2
TAG693:
bne $2, $2, TAG694
lui $4, 13
sll $1, $2, 6
lb $1, 0($1)
TAG694:
mtlo $1
multu $1, $1
add $4, $1, $1
mult $1, $4
TAG695:
sra $2, $4, 9
mtlo $4
or $4, $2, $4
lui $3, 15
TAG696:
bne $3, $3, TAG697
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG697
TAG697:
mfhi $3
sltu $2, $3, $3
lui $2, 14
mthi $2
TAG698:
mfhi $2
lui $2, 11
blez $2, TAG699
mthi $2
TAG699:
sllv $2, $2, $2
blez $2, TAG700
sltu $1, $2, $2
sll $0, $0, 0
TAG700:
beq $1, $1, TAG701
sllv $3, $1, $1
lui $1, 9
mtlo $3
TAG701:
subu $3, $1, $1
lui $4, 14
and $3, $3, $3
lw $2, 0($1)
TAG702:
mflo $2
mfhi $4
mfhi $1
mtlo $4
TAG703:
bne $1, $1, TAG704
mflo $1
mthi $1
andi $3, $1, 14
TAG704:
mtlo $3
lw $1, 0($3)
sra $2, $3, 3
srlv $1, $2, $1
TAG705:
beq $1, $1, TAG706
slt $3, $1, $1
beq $3, $3, TAG706
sltiu $4, $1, 0
TAG706:
sll $0, $0, 0
mult $4, $4
mthi $4
lui $3, 13
TAG707:
bltz $3, TAG708
mthi $3
sll $0, $0, 0
mfhi $1
TAG708:
mfhi $1
lui $3, 2
lui $2, 6
sll $0, $0, 0
TAG709:
xor $1, $2, $2
sll $4, $2, 4
subu $4, $2, $4
sltiu $3, $4, 2
TAG710:
sb $3, 0($3)
mfhi $1
lbu $2, 0($3)
blez $2, TAG711
TAG711:
multu $2, $2
lw $3, 0($2)
or $2, $3, $3
subu $2, $3, $2
TAG712:
mtlo $2
lhu $2, 0($2)
andi $1, $2, 14
mtlo $2
TAG713:
lh $3, 0($1)
mfhi $1
mult $1, $3
mult $3, $3
TAG714:
beq $1, $1, TAG715
mtlo $1
sb $1, 0($1)
beq $1, $1, TAG715
TAG715:
srl $1, $1, 9
lhu $1, 0($1)
lh $4, 0($1)
mthi $1
TAG716:
bne $4, $4, TAG717
mult $4, $4
ori $2, $4, 8
beq $2, $4, TAG717
TAG717:
sw $2, 0($2)
lui $3, 14
addiu $3, $3, 15
lh $3, 0($2)
TAG718:
blez $3, TAG719
xori $1, $3, 3
bgez $1, TAG719
mthi $1
TAG719:
mflo $2
sb $1, 0($2)
srl $4, $1, 14
multu $2, $2
TAG720:
lui $4, 4
mfhi $1
mfhi $2
lui $3, 1
TAG721:
mult $3, $3
div $3, $3
sll $0, $0, 0
beq $2, $3, TAG722
TAG722:
nor $1, $2, $2
slt $2, $2, $1
mthi $2
mult $2, $2
TAG723:
beq $2, $2, TAG724
mult $2, $2
bne $2, $2, TAG724
sh $2, 0($2)
TAG724:
multu $2, $2
bgtz $2, TAG725
lbu $4, 0($2)
beq $2, $2, TAG725
TAG725:
sb $4, 0($4)
mflo $2
sw $2, 0($2)
lhu $2, 0($2)
TAG726:
mthi $2
bltz $2, TAG727
mthi $2
mtlo $2
TAG727:
sll $1, $2, 1
lui $2, 5
blez $2, TAG728
mflo $1
TAG728:
mflo $4
subu $4, $4, $4
sb $4, 0($4)
mult $4, $4
TAG729:
srl $4, $4, 12
mtlo $4
mthi $4
mfhi $4
TAG730:
mflo $1
addu $1, $4, $1
mthi $1
mtlo $1
TAG731:
srlv $2, $1, $1
and $2, $2, $1
xori $1, $1, 9
mthi $1
TAG732:
blez $1, TAG733
xor $1, $1, $1
lui $3, 12
lb $3, 0($1)
TAG733:
addiu $1, $3, 9
mflo $4
mthi $4
sb $4, 0($1)
TAG734:
beq $4, $4, TAG735
lhu $4, 0($4)
lbu $4, 0($4)
multu $4, $4
TAG735:
beq $4, $4, TAG736
xor $1, $4, $4
div $1, $4
mtlo $1
TAG736:
sltu $4, $1, $1
bne $4, $4, TAG737
lbu $3, 0($4)
lh $3, 0($1)
TAG737:
lb $2, 0($3)
mflo $1
andi $4, $2, 9
mthi $3
TAG738:
lui $3, 7
lui $1, 7
addiu $1, $1, 7
bgtz $3, TAG739
TAG739:
sll $3, $1, 2
sll $0, $0, 0
beq $1, $1, TAG740
sll $0, $0, 0
TAG740:
multu $3, $3
mthi $3
mtlo $3
srl $3, $3, 15
TAG741:
bne $3, $3, TAG742
lui $1, 12
beq $3, $1, TAG742
mtlo $1
TAG742:
nor $1, $1, $1
multu $1, $1
sll $0, $0, 0
srlv $2, $1, $1
TAG743:
slti $2, $2, 3
bne $2, $2, TAG744
sltiu $2, $2, 1
mfhi $4
TAG744:
sll $0, $0, 0
mtlo $4
mthi $4
bgez $4, TAG745
TAG745:
mfhi $2
sll $0, $0, 0
mtlo $4
sltu $2, $4, $2
TAG746:
mthi $2
lui $2, 5
bne $2, $2, TAG747
sll $0, $0, 0
TAG747:
sll $0, $0, 0
beq $2, $2, TAG748
andi $2, $2, 12
sb $2, 0($2)
TAG748:
addiu $4, $2, 2
multu $4, $4
mfhi $3
blez $2, TAG749
TAG749:
sltiu $1, $3, 14
beq $1, $1, TAG750
sw $3, 0($3)
lui $2, 5
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop