ori $1, $0, 7
ori $2, $0, 14
ori $3, $0, 1
ori $4, $0, 6
sw $3, 0($0)
sw $1, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $3, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $2, 96($0)
sw $1, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $4, 124($0)
nor $1, $2, $2
sllv $3, $2, $2
lhu $4, 15($1)
beq $2, $1, TAG1
TAG1:
mtlo $4
mtlo $4
div $4, $4
mfhi $3
TAG2:
beq $3, $3, TAG3
mult $3, $3
divu $3, $3
sb $3, 0($3)
TAG3:
mtlo $3
sh $3, 0($3)
addi $3, $3, 10
mfhi $4
TAG4:
multu $4, $4
mflo $2
sllv $4, $2, $4
sh $4, 0($4)
TAG5:
sb $4, 0($4)
bgez $4, TAG6
mult $4, $4
bltz $4, TAG6
TAG6:
multu $4, $4
xori $2, $4, 2
mthi $2
bgtz $2, TAG7
TAG7:
lui $2, 10
sll $0, $0, 0
div $2, $2
mult $2, $2
TAG8:
sll $0, $0, 0
lbu $2, 0($3)
lhu $3, 0($2)
lw $4, 0($3)
TAG9:
mflo $3
lb $1, 0($4)
mfhi $4
mtlo $1
TAG10:
sw $4, 0($4)
lui $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG11:
xor $2, $1, $1
sll $0, $0, 0
lb $4, 0($3)
sra $4, $3, 7
TAG12:
mflo $1
blez $4, TAG13
sh $4, 0($4)
bgez $4, TAG13
TAG13:
sh $1, 0($1)
multu $1, $1
multu $1, $1
addiu $3, $1, 8
TAG14:
sllv $1, $3, $3
lhu $1, -2048($1)
bgtz $1, TAG15
mflo $1
TAG15:
xor $2, $1, $1
mult $2, $2
lh $4, 0($1)
mthi $4
TAG16:
bgtz $4, TAG17
srl $4, $4, 13
sh $4, 0($4)
sb $4, 0($4)
TAG17:
ori $1, $4, 0
mthi $4
slt $4, $4, $4
bne $4, $4, TAG18
TAG18:
sb $4, 0($4)
srav $4, $4, $4
mfhi $1
lui $4, 3
TAG19:
mult $4, $4
addu $3, $4, $4
mflo $3
multu $4, $3
TAG20:
lui $4, 15
slt $3, $4, $4
sll $0, $0, 0
blez $1, TAG21
TAG21:
sra $1, $1, 5
lb $4, 0($1)
lhu $1, 0($1)
addu $4, $1, $1
TAG22:
lbu $2, 0($4)
sub $3, $2, $4
mtlo $2
mflo $1
TAG23:
sb $1, 0($1)
sh $1, 0($1)
sw $1, 0($1)
mfhi $4
TAG24:
lui $4, 6
sll $3, $4, 13
sll $0, $0, 0
mflo $4
TAG25:
lw $4, 0($4)
blez $4, TAG26
xor $3, $4, $4
mfhi $2
TAG26:
addu $2, $2, $2
sw $2, 0($2)
mtlo $2
srlv $4, $2, $2
TAG27:
mflo $3
bgtz $3, TAG28
nor $2, $3, $4
bgtz $2, TAG28
TAG28:
and $1, $2, $2
bne $1, $1, TAG29
mfhi $3
srlv $4, $1, $2
TAG29:
sb $4, 0($4)
mtlo $4
or $3, $4, $4
mthi $3
TAG30:
div $3, $3
subu $2, $3, $3
lbu $2, 0($3)
mthi $2
TAG31:
lui $3, 13
andi $1, $3, 1
mthi $3
bne $2, $3, TAG32
TAG32:
multu $1, $1
multu $1, $1
sw $1, 0($1)
slti $2, $1, 15
TAG33:
sll $1, $2, 8
bne $2, $2, TAG34
divu $2, $2
mult $2, $1
TAG34:
subu $4, $1, $1
lui $2, 11
lw $1, -256($1)
lhu $4, 0($4)
TAG35:
bgtz $4, TAG36
srav $2, $4, $4
bne $2, $4, TAG36
mfhi $3
TAG36:
slti $1, $3, 12
lui $4, 5
lui $3, 10
mflo $2
TAG37:
sb $2, -256($2)
mult $2, $2
bne $2, $2, TAG38
sra $2, $2, 4
TAG38:
and $1, $2, $2
bne $1, $2, TAG39
lhu $3, 0($2)
beq $3, $1, TAG39
TAG39:
addu $2, $3, $3
lui $1, 1
sh $3, 0($2)
div $1, $3
TAG40:
srl $3, $1, 2
ori $4, $1, 11
div $1, $4
xori $4, $3, 3
TAG41:
beq $4, $4, TAG42
srl $3, $4, 14
mflo $1
lui $1, 0
TAG42:
bltz $1, TAG43
sltiu $4, $1, 6
blez $1, TAG43
mthi $4
TAG43:
bne $4, $4, TAG44
lw $4, 0($4)
mthi $4
lui $2, 1
TAG44:
sll $0, $0, 0
mfhi $4
mult $4, $4
lui $1, 9
TAG45:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
addiu $4, $2, 15
TAG46:
lui $3, 6
sll $0, $0, 0
lui $4, 12
div $1, $4
TAG47:
mfhi $4
srl $1, $4, 8
beq $4, $1, TAG48
lw $4, -2304($1)
TAG48:
addu $4, $4, $4
sltiu $1, $4, 14
bgez $4, TAG49
lbu $1, 0($1)
TAG49:
mflo $1
sw $1, 0($1)
mflo $3
bltz $1, TAG50
TAG50:
sw $3, 0($3)
sb $3, 0($3)
beq $3, $3, TAG51
mult $3, $3
TAG51:
mflo $3
lui $4, 5
mtlo $3
multu $3, $3
TAG52:
beq $4, $4, TAG53
sll $0, $0, 0
sltu $4, $4, $4
bne $4, $4, TAG53
TAG53:
sll $0, $0, 0
lui $4, 2
mfhi $3
mthi $4
TAG54:
bltz $3, TAG55
add $4, $3, $3
bltz $3, TAG55
sb $3, 0($4)
TAG55:
bgtz $4, TAG56
mtlo $4
ori $1, $4, 15
bgtz $1, TAG56
TAG56:
lui $3, 14
subu $1, $1, $1
mtlo $1
addu $2, $1, $1
TAG57:
bgtz $2, TAG58
lbu $4, 0($2)
mflo $1
nor $1, $1, $2
TAG58:
xori $2, $1, 2
div $1, $2
mflo $3
mtlo $2
TAG59:
sh $3, 0($3)
mthi $3
andi $1, $3, 11
mthi $3
TAG60:
lui $3, 8
lui $4, 4
blez $1, TAG61
mtlo $1
TAG61:
beq $4, $4, TAG62
sll $4, $4, 0
lui $1, 6
xor $3, $1, $4
TAG62:
multu $3, $3
bne $3, $3, TAG63
srav $4, $3, $3
bgez $3, TAG63
TAG63:
multu $4, $4
sll $0, $0, 0
addiu $2, $4, 6
bne $2, $4, TAG64
TAG64:
sll $0, $0, 0
beq $2, $4, TAG65
sltiu $1, $4, 2
sra $4, $4, 3
TAG65:
lui $2, 4
sll $0, $0, 0
xori $4, $2, 6
div $3, $4
TAG66:
sll $0, $0, 0
sra $4, $1, 1
mthi $4
beq $1, $4, TAG67
TAG67:
mflo $1
mflo $4
blez $4, TAG68
sb $4, 0($4)
TAG68:
bgtz $4, TAG69
lui $4, 3
sll $3, $4, 12
ori $3, $4, 8
TAG69:
bne $3, $3, TAG70
mfhi $4
mtlo $4
sll $0, $0, 0
TAG70:
lui $1, 3
sll $0, $0, 0
multu $4, $1
multu $1, $4
TAG71:
addiu $3, $3, 6
sll $0, $0, 0
mthi $3
lui $3, 3
TAG72:
addu $3, $3, $3
addiu $4, $3, 7
subu $3, $3, $3
addiu $4, $3, 4
TAG73:
nor $1, $4, $4
mfhi $4
lui $2, 0
beq $2, $2, TAG74
TAG74:
sb $2, 0($2)
lui $2, 15
beq $2, $2, TAG75
sll $0, $0, 0
TAG75:
mthi $4
xor $1, $4, $4
sltiu $2, $1, 5
srl $3, $2, 11
TAG76:
lb $2, 0($3)
lui $1, 4
addu $2, $1, $3
srlv $4, $2, $2
TAG77:
srlv $2, $4, $4
sll $0, $0, 0
beq $2, $2, TAG78
mfhi $4
TAG78:
and $4, $4, $4
divu $4, $4
slti $4, $4, 11
addiu $3, $4, 4
TAG79:
mtlo $3
bne $3, $3, TAG80
lb $3, 0($3)
srav $1, $3, $3
TAG80:
bne $1, $1, TAG81
add $3, $1, $1
mthi $3
sh $3, 0($3)
TAG81:
bgtz $3, TAG82
lui $3, 0
beq $3, $3, TAG82
sub $3, $3, $3
TAG82:
mtlo $3
sw $3, 0($3)
nor $1, $3, $3
lh $1, 0($3)
TAG83:
mult $1, $1
bne $1, $1, TAG84
mult $1, $1
slt $1, $1, $1
TAG84:
sw $1, 0($1)
sh $1, 0($1)
addi $1, $1, 6
beq $1, $1, TAG85
TAG85:
srlv $2, $1, $1
multu $1, $2
lui $4, 4
bne $1, $1, TAG86
TAG86:
addiu $3, $4, 6
mtlo $4
mfhi $2
lui $1, 11
TAG87:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 2
mflo $4
TAG88:
mfhi $4
mult $4, $4
bne $4, $4, TAG89
mthi $4
TAG89:
mfhi $2
sh $2, 0($2)
blez $2, TAG90
srl $3, $2, 14
TAG90:
mthi $3
andi $2, $3, 6
bgtz $3, TAG91
multu $2, $2
TAG91:
multu $2, $2
xori $3, $2, 0
bgez $3, TAG92
mtlo $3
TAG92:
beq $3, $3, TAG93
sw $3, 0($3)
multu $3, $3
lui $4, 9
TAG93:
lui $4, 15
multu $4, $4
srl $1, $4, 14
divu $4, $4
TAG94:
mtlo $1
addiu $2, $1, 7
lbu $4, 0($2)
beq $2, $4, TAG95
TAG95:
sltiu $1, $4, 14
lui $4, 6
slti $4, $1, 2
sb $4, 0($4)
TAG96:
lui $3, 0
bgez $3, TAG97
addu $4, $4, $4
mtlo $4
TAG97:
mflo $2
lbu $3, 0($2)
mfhi $4
xor $2, $4, $2
TAG98:
divu $2, $2
mtlo $2
lh $3, 0($2)
mthi $2
TAG99:
div $3, $3
beq $3, $3, TAG100
lhu $3, 0($3)
lh $3, 0($3)
TAG100:
bgtz $3, TAG101
sb $3, 0($3)
lui $2, 14
bltz $3, TAG101
TAG101:
sll $0, $0, 0
addu $2, $2, $2
mfhi $4
bgtz $2, TAG102
TAG102:
mtlo $4
blez $4, TAG103
ori $4, $4, 0
lui $3, 7
TAG103:
mfhi $4
mfhi $2
subu $3, $4, $2
xori $1, $4, 14
TAG104:
sb $1, 0($1)
sh $1, 0($1)
bltz $1, TAG105
nor $4, $1, $1
TAG105:
mfhi $3
mtlo $3
mthi $4
bgez $4, TAG106
TAG106:
mult $3, $3
sb $3, 0($3)
sh $3, 0($3)
andi $4, $3, 15
TAG107:
beq $4, $4, TAG108
sllv $4, $4, $4
bne $4, $4, TAG108
sllv $2, $4, $4
TAG108:
sw $2, 0($2)
lui $3, 7
sll $0, $0, 0
bgez $3, TAG109
TAG109:
srlv $2, $3, $3
sll $0, $0, 0
multu $2, $1
beq $3, $2, TAG110
TAG110:
mfhi $2
div $2, $1
lb $3, 0($1)
mtlo $1
TAG111:
sb $3, 0($3)
xori $1, $3, 5
mfhi $3
beq $1, $3, TAG112
TAG112:
mult $3, $3
beq $3, $3, TAG113
lui $3, 1
divu $3, $3
TAG113:
mfhi $3
mult $3, $3
bne $3, $3, TAG114
mthi $3
TAG114:
mfhi $4
sw $4, 0($4)
bne $4, $3, TAG115
slti $2, $3, 9
TAG115:
div $2, $2
lui $4, 11
ori $1, $4, 13
mtlo $4
TAG116:
addiu $3, $1, 13
mthi $1
mtlo $1
beq $1, $3, TAG117
TAG117:
lui $4, 10
blez $3, TAG118
sltu $2, $4, $3
divu $4, $4
TAG118:
lbu $3, 0($2)
mthi $2
mult $2, $3
mfhi $4
TAG119:
multu $4, $4
sw $4, 0($4)
mtlo $4
lbu $3, 0($4)
TAG120:
blez $3, TAG121
addiu $4, $3, 12
mfhi $2
mtlo $3
TAG121:
lui $4, 6
mtlo $2
mthi $4
bne $4, $2, TAG122
TAG122:
addiu $4, $4, 1
mfhi $2
divu $4, $2
bgtz $4, TAG123
TAG123:
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG124
mult $2, $2
TAG124:
sll $0, $0, 0
mfhi $3
sh $2, 0($3)
mtlo $3
TAG125:
lui $1, 2
srlv $4, $3, $3
or $4, $4, $1
beq $1, $1, TAG126
TAG126:
xor $1, $4, $4
and $2, $1, $4
lui $1, 8
blez $1, TAG127
TAG127:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG128
mthi $1
TAG128:
lui $3, 5
lui $3, 10
beq $3, $3, TAG129
srlv $2, $3, $1
TAG129:
mthi $2
addiu $1, $2, 0
mfhi $3
sll $0, $0, 0
TAG130:
mflo $3
slt $1, $2, $2
srl $1, $3, 11
mult $1, $3
TAG131:
mflo $3
blez $1, TAG132
mult $1, $3
beq $3, $3, TAG132
TAG132:
mtlo $3
sltu $2, $3, $3
sltu $3, $2, $2
bne $2, $3, TAG133
TAG133:
lbu $1, 0($3)
mfhi $4
mult $4, $4
mtlo $4
TAG134:
bgez $4, TAG135
mthi $4
mthi $4
mthi $4
TAG135:
andi $2, $4, 15
sh $4, 0($2)
beq $2, $4, TAG136
mfhi $1
TAG136:
bltz $1, TAG137
mult $1, $1
sub $4, $1, $1
mflo $1
TAG137:
beq $1, $1, TAG138
mflo $2
blez $1, TAG138
lui $2, 5
TAG138:
sll $1, $2, 6
mfhi $1
mflo $3
bne $3, $2, TAG139
TAG139:
lui $1, 2
bne $3, $3, TAG140
mthi $3
mflo $4
TAG140:
lui $4, 8
beq $4, $4, TAG141
sll $0, $0, 0
mflo $1
TAG141:
nor $4, $1, $1
nor $1, $1, $4
lui $3, 0
lui $2, 2
TAG142:
mflo $4
lb $2, 0($4)
mfhi $3
subu $1, $3, $2
TAG143:
mflo $4
lui $2, 7
or $3, $4, $1
multu $2, $1
TAG144:
srl $4, $3, 13
lui $4, 5
lui $1, 7
bgez $1, TAG145
TAG145:
sll $0, $0, 0
div $2, $1
mtlo $2
bgez $1, TAG146
TAG146:
mfhi $4
sll $0, $0, 0
mthi $3
bltz $3, TAG147
TAG147:
mult $3, $3
mthi $3
bgtz $3, TAG148
lui $3, 13
TAG148:
and $1, $3, $3
mfhi $4
slt $1, $3, $4
lbu $1, 0($1)
TAG149:
mtlo $1
lw $3, 0($1)
slti $3, $3, 7
bltz $3, TAG150
TAG150:
div $3, $3
mfhi $4
multu $3, $3
mult $4, $3
TAG151:
lui $4, 13
beq $4, $4, TAG152
lui $1, 8
sh $4, 0($4)
TAG152:
mfhi $2
lui $2, 8
lui $3, 1
beq $3, $2, TAG153
TAG153:
mthi $3
mult $3, $3
addiu $3, $3, 10
sll $0, $0, 0
TAG154:
mfhi $4
mfhi $2
srl $4, $2, 2
xori $2, $2, 0
TAG155:
subu $1, $2, $2
lbu $4, 0($2)
sw $4, 0($4)
mtlo $4
TAG156:
lui $4, 10
bgtz $4, TAG157
divu $4, $4
sra $3, $4, 8
TAG157:
mult $3, $3
multu $3, $3
lui $3, 6
bne $3, $3, TAG158
TAG158:
divu $3, $3
beq $3, $3, TAG159
sll $0, $0, 0
mflo $3
TAG159:
mflo $1
addu $3, $1, $3
beq $1, $3, TAG160
sltu $1, $3, $3
TAG160:
multu $1, $1
mtlo $1
mtlo $1
multu $1, $1
TAG161:
mflo $2
sb $1, 0($1)
sw $2, 0($1)
beq $1, $2, TAG162
TAG162:
lw $1, 0($2)
beq $1, $1, TAG163
sb $1, 0($2)
lb $2, 0($1)
TAG163:
lb $3, 0($2)
slti $2, $2, 11
beq $2, $3, TAG164
div $2, $2
TAG164:
srl $2, $2, 11
mthi $2
bne $2, $2, TAG165
mflo $2
TAG165:
and $4, $2, $2
mtlo $4
div $2, $2
lbu $1, 0($2)
TAG166:
bgtz $1, TAG167
mtlo $1
blez $1, TAG167
lui $2, 1
TAG167:
sll $0, $0, 0
blez $2, TAG168
mflo $4
beq $4, $2, TAG168
TAG168:
sllv $2, $4, $4
multu $4, $2
lbu $2, 0($2)
lw $3, 0($2)
TAG169:
mult $3, $3
beq $3, $3, TAG170
lui $4, 13
beq $4, $3, TAG170
TAG170:
srl $3, $4, 15
mthi $4
bgtz $4, TAG171
xori $1, $3, 9
TAG171:
sra $2, $1, 1
sb $1, 0($2)
sb $2, 0($1)
lb $1, 0($2)
TAG172:
lui $2, 8
sra $2, $1, 4
lui $4, 13
lui $1, 5
TAG173:
or $4, $1, $1
mflo $1
mthi $4
sw $4, 0($1)
TAG174:
lui $4, 10
mfhi $4
sra $1, $4, 2
bltz $1, TAG175
TAG175:
sll $0, $0, 0
addu $2, $1, $1
slti $4, $1, 6
mult $2, $4
TAG176:
multu $4, $4
mfhi $3
ori $2, $4, 11
mult $4, $4
TAG177:
slt $4, $2, $2
and $1, $4, $2
bne $1, $4, TAG178
mthi $4
TAG178:
beq $1, $1, TAG179
lui $2, 4
bltz $2, TAG179
or $3, $2, $1
TAG179:
bgtz $3, TAG180
sb $3, 0($3)
srl $1, $3, 11
bltz $1, TAG180
TAG180:
sh $1, 0($1)
mthi $1
mtlo $1
lui $2, 3
TAG181:
beq $2, $2, TAG182
lui $3, 12
lb $4, 0($3)
bgez $2, TAG182
TAG182:
mfhi $1
slt $3, $4, $1
sb $1, 0($4)
bgez $1, TAG183
TAG183:
multu $3, $3
mult $3, $3
mflo $2
sh $3, 0($3)
TAG184:
srl $1, $2, 11
mult $1, $1
lui $4, 4
sw $1, 0($1)
TAG185:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG186
lui $4, 8
TAG186:
mflo $1
mfhi $4
bne $4, $4, TAG187
lbu $4, 0($4)
TAG187:
lw $1, 0($4)
mthi $4
mthi $1
mflo $2
TAG188:
lui $4, 13
beq $4, $4, TAG189
sll $0, $0, 0
multu $2, $4
TAG189:
lui $2, 8
lui $3, 14
sltu $4, $2, $4
bgez $3, TAG190
TAG190:
multu $4, $4
mtlo $4
sllv $4, $4, $4
sh $4, 0($4)
TAG191:
lui $4, 6
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG192:
mflo $4
sb $4, 0($4)
addu $4, $2, $2
sll $0, $0, 0
TAG193:
or $3, $4, $4
mthi $3
bgtz $3, TAG194
and $4, $4, $3
TAG194:
sll $0, $0, 0
subu $2, $4, $4
bgez $2, TAG195
multu $2, $2
TAG195:
slti $1, $2, 7
mfhi $3
or $1, $2, $2
lb $2, 0($2)
TAG196:
multu $2, $2
mfhi $1
mtlo $1
mfhi $1
TAG197:
mflo $1
mtlo $1
ori $1, $1, 6
lb $4, 0($1)
TAG198:
lui $1, 2
mflo $3
mtlo $1
bne $4, $1, TAG199
TAG199:
sltu $3, $3, $3
mult $3, $3
bne $3, $3, TAG200
lui $1, 12
TAG200:
sll $0, $0, 0
mult $1, $1
bltz $1, TAG201
or $3, $1, $1
TAG201:
beq $3, $3, TAG202
xor $2, $3, $3
lbu $4, 0($2)
lb $3, 0($3)
TAG202:
mflo $4
bne $4, $4, TAG203
mthi $4
multu $3, $4
TAG203:
lw $3, 0($4)
lui $1, 10
mfhi $2
beq $2, $2, TAG204
TAG204:
lh $4, 0($2)
divu $2, $4
sb $2, 0($2)
mult $4, $2
TAG205:
lui $1, 0
mthi $1
mthi $4
or $3, $4, $4
TAG206:
bne $3, $3, TAG207
ori $3, $3, 6
sw $3, -262($3)
mfhi $2
TAG207:
srlv $4, $2, $2
lb $1, -256($4)
slti $4, $1, 1
lbu $4, 0($4)
TAG208:
sh $4, 0($4)
bne $4, $4, TAG209
divu $4, $4
addiu $4, $4, 11
TAG209:
blez $4, TAG210
lbu $4, 0($4)
sh $4, 0($4)
addiu $3, $4, 14
TAG210:
lui $3, 8
divu $3, $3
addu $1, $3, $3
div $1, $3
TAG211:
mflo $2
blez $1, TAG212
lui $4, 10
bne $1, $1, TAG212
TAG212:
sll $0, $0, 0
lui $1, 4
bgtz $1, TAG213
sll $0, $0, 0
TAG213:
bne $3, $3, TAG214
mflo $1
bne $3, $1, TAG214
lbu $2, 0($1)
TAG214:
lhu $4, 0($2)
mult $4, $2
sh $4, 0($2)
beq $4, $4, TAG215
TAG215:
mfhi $3
mult $4, $4
xori $1, $3, 2
mflo $3
TAG216:
beq $3, $3, TAG217
sltiu $1, $3, 14
mtlo $3
mthi $1
TAG217:
sb $1, 0($1)
mthi $1
mthi $1
beq $1, $1, TAG218
TAG218:
sb $1, 0($1)
lui $3, 10
mflo $3
lui $4, 8
TAG219:
lui $2, 1
mtlo $2
andi $1, $4, 4
mtlo $2
TAG220:
mtlo $1
lhu $3, 0($1)
nor $2, $1, $3
sltu $4, $3, $2
TAG221:
bgez $4, TAG222
sra $2, $4, 10
or $1, $4, $2
lb $2, 0($2)
TAG222:
multu $2, $2
lui $2, 8
divu $2, $2
lui $4, 2
TAG223:
sll $4, $4, 5
lui $1, 3
addiu $2, $4, 4
mfhi $2
TAG224:
mfhi $1
bne $2, $2, TAG225
srav $4, $2, $1
ori $4, $1, 3
TAG225:
lui $2, 7
bgez $4, TAG226
mtlo $2
lui $2, 3
TAG226:
multu $2, $2
slti $3, $2, 2
nor $1, $2, $3
bne $3, $3, TAG227
TAG227:
srav $3, $1, $1
bne $1, $3, TAG228
lui $1, 2
lui $3, 12
TAG228:
sb $3, 1($3)
sw $3, 1($3)
sh $3, 1($3)
divu $3, $3
TAG229:
sll $0, $0, 0
divu $3, $3
sltu $2, $4, $3
mthi $4
TAG230:
bne $2, $2, TAG231
mflo $1
lui $1, 3
bne $1, $1, TAG231
TAG231:
sll $0, $0, 0
mfhi $4
lui $4, 4
sll $0, $0, 0
TAG232:
mthi $4
sra $3, $4, 11
mthi $4
mtlo $4
TAG233:
addiu $1, $3, 7
xori $2, $1, 15
sb $3, -135($1)
beq $2, $1, TAG234
TAG234:
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
sltiu $3, $2, 1
TAG235:
bltz $3, TAG236
xor $1, $3, $3
ori $3, $3, 7
beq $1, $1, TAG236
TAG236:
lui $4, 2
sb $4, 0($3)
srlv $2, $4, $4
beq $2, $3, TAG237
TAG237:
addiu $1, $2, 6
bgez $2, TAG238
mfhi $2
sw $2, 0($1)
TAG238:
nor $4, $2, $2
beq $4, $2, TAG239
addiu $4, $4, 1
sll $0, $0, 0
TAG239:
mfhi $1
lui $1, 3
sll $0, $0, 0
sll $0, $0, 0
TAG240:
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG241:
mflo $4
blez $4, TAG242
lui $3, 14
multu $4, $4
TAG242:
divu $3, $3
sll $0, $0, 0
div $4, $3
bne $4, $4, TAG243
TAG243:
lbu $4, 0($4)
divu $4, $4
mfhi $4
srlv $4, $4, $4
TAG244:
lui $1, 11
sh $1, 0($4)
xor $2, $1, $4
bgtz $2, TAG245
TAG245:
lui $1, 7
mtlo $1
sll $0, $0, 0
addiu $1, $2, 5
TAG246:
divu $1, $1
div $1, $1
xori $3, $1, 11
mflo $1
TAG247:
lui $3, 8
lui $4, 12
beq $3, $3, TAG248
sll $0, $0, 0
TAG248:
sll $0, $0, 0
mult $2, $2
beq $2, $2, TAG249
lui $2, 13
TAG249:
bne $2, $2, TAG250
addu $3, $2, $2
lui $1, 8
sll $0, $0, 0
TAG250:
addiu $2, $1, 12
srl $2, $2, 15
mflo $3
beq $1, $2, TAG251
TAG251:
and $2, $3, $3
bltz $3, TAG252
mtlo $3
sltiu $3, $2, 15
TAG252:
divu $3, $3
lb $2, 0($3)
bne $2, $2, TAG253
lhu $3, 0($2)
TAG253:
mtlo $3
slti $4, $3, 15
beq $4, $4, TAG254
lbu $4, 0($3)
TAG254:
and $4, $4, $4
xori $3, $4, 11
mthi $3
mfhi $4
TAG255:
sb $4, 0($4)
lbu $4, 0($4)
mfhi $2
mtlo $2
TAG256:
lui $1, 7
blez $1, TAG257
lui $2, 14
bltz $2, TAG257
TAG257:
mflo $3
mtlo $2
divu $2, $3
sll $0, $0, 0
TAG258:
blez $3, TAG259
andi $3, $3, 11
lbu $3, 0($3)
div $3, $3
TAG259:
mfhi $2
srl $4, $3, 4
mfhi $2
andi $4, $4, 3
TAG260:
blez $4, TAG261
sub $1, $4, $4
sb $1, 0($4)
addiu $2, $4, 10
TAG261:
sub $3, $2, $2
nor $1, $2, $3
andi $3, $3, 6
mthi $3
TAG262:
sw $3, 0($3)
multu $3, $3
lui $4, 10
mfhi $3
TAG263:
mthi $3
sh $3, 0($3)
sw $3, 0($3)
mthi $3
TAG264:
addiu $3, $3, 7
mfhi $3
mfhi $1
slti $2, $1, 13
TAG265:
blez $2, TAG266
lui $4, 8
xori $4, $2, 3
blez $2, TAG266
TAG266:
lui $3, 6
lui $3, 4
bne $3, $3, TAG267
mult $3, $3
TAG267:
sll $0, $0, 0
divu $3, $3
mtlo $3
div $3, $3
TAG268:
sllv $4, $3, $3
div $4, $4
sll $0, $0, 0
mfhi $2
TAG269:
multu $2, $2
mfhi $2
lui $4, 14
sltiu $3, $4, 11
TAG270:
lui $2, 12
xor $4, $3, $2
and $4, $3, $2
bne $3, $2, TAG271
TAG271:
ori $2, $4, 8
mflo $2
bne $4, $4, TAG272
lhu $1, 0($2)
TAG272:
addi $2, $1, 13
mfhi $4
addu $3, $2, $2
sb $4, 0($2)
TAG273:
mfhi $3
lhu $3, 0($3)
lw $1, 0($3)
sb $3, 0($3)
TAG274:
bne $1, $1, TAG275
lui $1, 5
sll $0, $0, 0
multu $1, $1
TAG275:
multu $4, $4
mtlo $4
andi $2, $4, 10
sltiu $3, $2, 13
TAG276:
lui $1, 6
bgtz $3, TAG277
sll $0, $0, 0
slt $2, $1, $3
TAG277:
sll $2, $2, 9
lui $2, 13
sltu $3, $2, $2
mthi $2
TAG278:
mflo $1
lb $1, 0($1)
andi $2, $1, 11
srav $4, $2, $2
TAG279:
sltu $3, $4, $4
mtlo $3
lui $4, 10
lb $1, 0($3)
TAG280:
mtlo $1
beq $1, $1, TAG281
mthi $1
divu $1, $1
TAG281:
blez $1, TAG282
sltu $4, $1, $1
beq $1, $1, TAG282
mflo $3
TAG282:
mthi $3
mflo $1
lui $1, 15
beq $1, $3, TAG283
TAG283:
srl $2, $1, 9
lui $3, 5
sltiu $2, $2, 11
beq $1, $2, TAG284
TAG284:
multu $2, $2
multu $2, $2
addi $2, $2, 1
multu $2, $2
TAG285:
mflo $3
lui $3, 11
mthi $3
bne $2, $3, TAG286
TAG286:
div $3, $3
divu $3, $3
srav $1, $3, $3
addu $2, $1, $3
TAG287:
nor $1, $2, $2
divu $1, $1
mthi $2
mult $2, $2
TAG288:
lui $4, 5
bgtz $4, TAG289
addiu $1, $4, 3
bne $1, $1, TAG289
TAG289:
mfhi $3
xori $3, $1, 6
andi $2, $3, 8
mflo $3
TAG290:
mthi $3
mfhi $3
sb $3, 0($3)
mtlo $3
TAG291:
bgez $3, TAG292
mtlo $3
sb $3, 0($3)
bgez $3, TAG292
TAG292:
mult $3, $3
beq $3, $3, TAG293
lbu $4, 0($3)
add $4, $4, $4
TAG293:
blez $4, TAG294
nor $3, $4, $4
mfhi $1
beq $3, $3, TAG294
TAG294:
ori $1, $1, 0
sll $0, $0, 0
bltz $1, TAG295
mflo $4
TAG295:
xori $3, $4, 14
lui $3, 10
mtlo $4
sll $0, $0, 0
TAG296:
sll $0, $0, 0
bgtz $3, TAG297
sll $0, $0, 0
mtlo $3
TAG297:
sll $0, $0, 0
sll $0, $0, 0
sh $3, 0($4)
ori $1, $4, 12
TAG298:
div $1, $1
mflo $3
xori $2, $1, 5
div $1, $1
TAG299:
lbu $3, 0($2)
lui $4, 12
lui $4, 9
sllv $4, $3, $3
TAG300:
sll $0, $0, 0
divu $4, $4
div $4, $4
mtlo $4
TAG301:
sra $4, $4, 4
sll $0, $0, 0
addiu $3, $4, 9
mfhi $1
TAG302:
addu $1, $1, $1
sh $1, 0($1)
lh $2, 0($1)
add $4, $2, $1
TAG303:
bltz $4, TAG304
lbu $2, 0($4)
mult $2, $4
mfhi $1
TAG304:
mthi $1
sw $1, 0($1)
addi $4, $1, 11
beq $4, $1, TAG305
TAG305:
lbu $2, 0($4)
mtlo $4
divu $4, $4
and $4, $4, $4
TAG306:
mflo $2
beq $2, $2, TAG307
and $2, $4, $2
slt $2, $2, $2
TAG307:
lb $2, 0($2)
bgez $2, TAG308
nor $2, $2, $2
or $2, $2, $2
TAG308:
sll $4, $2, 11
ori $3, $4, 12
beq $3, $2, TAG309
sh $4, 1($2)
TAG309:
bgtz $3, TAG310
lh $3, 2036($3)
mfhi $1
lui $2, 9
TAG310:
beq $2, $2, TAG311
sll $0, $0, 0
divu $2, $3
lhu $3, 0($2)
TAG311:
lui $3, 1
mtlo $3
beq $3, $3, TAG312
divu $3, $3
TAG312:
xori $4, $3, 12
lui $2, 3
div $2, $4
sll $0, $0, 0
TAG313:
nor $1, $2, $2
bltz $2, TAG314
xori $4, $2, 9
lui $3, 6
TAG314:
srlv $3, $3, $3
bgtz $3, TAG315
addu $2, $3, $3
bgtz $3, TAG315
TAG315:
lui $2, 3
beq $2, $2, TAG316
lui $2, 3
sw $2, 0($2)
TAG316:
sll $0, $0, 0
mthi $2
lui $3, 15
sll $0, $0, 0
TAG317:
sll $0, $0, 0
lui $3, 10
lui $2, 15
addiu $2, $2, 15
TAG318:
mflo $3
sll $0, $0, 0
divu $2, $2
mult $3, $3
TAG319:
lui $3, 3
mfhi $3
mult $3, $3
mult $3, $3
TAG320:
mflo $1
andi $3, $3, 12
bgez $3, TAG321
sh $3, 0($3)
TAG321:
sw $3, 0($3)
mult $3, $3
sh $3, 0($3)
mflo $2
TAG322:
mflo $4
lui $1, 11
sw $1, 0($4)
mflo $1
TAG323:
mflo $1
lw $3, 0($1)
sll $0, $0, 0
multu $3, $3
TAG324:
mtlo $3
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
TAG325:
mflo $3
mthi $3
mthi $3
bne $3, $3, TAG326
TAG326:
andi $3, $3, 15
lui $2, 9
bgtz $3, TAG327
xori $1, $2, 2
TAG327:
bne $1, $1, TAG328
sll $0, $0, 0
sll $1, $1, 7
ori $2, $1, 8
TAG328:
addu $3, $2, $2
sll $0, $0, 0
sltu $2, $3, $2
sb $2, 0($2)
TAG329:
bne $2, $2, TAG330
mflo $3
beq $3, $3, TAG330
mfhi $4
TAG330:
addu $3, $4, $4
addu $2, $4, $4
lui $4, 11
blez $4, TAG331
TAG331:
slti $4, $4, 15
mflo $2
blez $4, TAG332
lui $1, 5
TAG332:
mtlo $1
mfhi $2
mfhi $3
mflo $3
TAG333:
andi $1, $3, 5
lui $3, 1
mthi $3
sll $0, $0, 0
TAG334:
sw $1, 0($1)
bgez $1, TAG335
lui $4, 13
mthi $1
TAG335:
mthi $4
mthi $4
sll $2, $4, 0
subu $2, $2, $4
TAG336:
mflo $3
mfhi $2
bltz $2, TAG337
mtlo $2
TAG337:
lui $2, 12
addu $4, $2, $2
multu $2, $2
sll $0, $0, 0
TAG338:
sltiu $3, $4, 13
srlv $4, $3, $4
blez $4, TAG339
lui $3, 3
TAG339:
sll $0, $0, 0
bltz $3, TAG340
mthi $3
lui $4, 10
TAG340:
nor $1, $4, $4
beq $1, $1, TAG341
mthi $1
div $4, $4
TAG341:
mtlo $1
sltu $3, $1, $1
mult $3, $1
bne $3, $1, TAG342
TAG342:
mtlo $3
slti $1, $3, 11
bltz $3, TAG343
slt $2, $1, $1
TAG343:
sb $2, 0($2)
sh $2, 0($2)
lh $4, 0($2)
sb $4, 0($4)
TAG344:
ori $2, $4, 1
multu $4, $2
sllv $3, $2, $4
bltz $4, TAG345
TAG345:
multu $3, $3
beq $3, $3, TAG346
lui $1, 10
sw $1, 0($3)
TAG346:
bltz $1, TAG347
multu $1, $1
bgtz $1, TAG347
mflo $2
TAG347:
slti $4, $2, 14
mtlo $2
ori $2, $4, 3
bgtz $2, TAG348
TAG348:
div $2, $2
lb $4, 0($2)
mfhi $4
bltz $4, TAG349
TAG349:
mthi $4
mtlo $4
sw $4, 0($4)
mfhi $1
TAG350:
mfhi $4
sra $2, $1, 7
mflo $1
bgez $4, TAG351
TAG351:
mult $1, $1
mult $1, $1
bne $1, $1, TAG352
lui $4, 5
TAG352:
srl $1, $4, 8
mflo $3
lui $3, 4
mthi $4
TAG353:
xori $3, $3, 4
or $3, $3, $3
xor $3, $3, $3
lui $3, 5
TAG354:
mthi $3
lui $1, 9
bgtz $3, TAG355
sll $0, $0, 0
TAG355:
lui $1, 15
addiu $3, $1, 10
add $4, $2, $3
bne $2, $1, TAG356
TAG356:
sll $0, $0, 0
bgez $4, TAG357
sltiu $4, $4, 15
mfhi $2
TAG357:
mthi $2
mult $2, $2
multu $2, $2
mult $2, $2
TAG358:
multu $2, $2
blez $2, TAG359
mflo $1
and $2, $2, $2
TAG359:
multu $2, $2
lh $1, 0($2)
sub $3, $1, $2
ori $3, $2, 6
TAG360:
lui $4, 13
sltiu $2, $4, 0
nor $1, $2, $4
lhu $4, 0($3)
TAG361:
bltz $4, TAG362
sh $4, 0($4)
bgtz $4, TAG362
lui $1, 8
TAG362:
divu $1, $1
sltu $4, $1, $1
sll $0, $0, 0
multu $1, $4
TAG363:
mflo $2
lui $3, 10
xori $3, $2, 14
addiu $4, $2, 9
TAG364:
addiu $3, $4, 14
bgez $3, TAG365
lb $3, 0($4)
beq $3, $4, TAG365
TAG365:
sb $3, 0($3)
and $1, $3, $3
sb $1, 0($1)
sb $3, 0($3)
TAG366:
mtlo $1
lb $4, 0($1)
beq $1, $1, TAG367
addu $1, $4, $1
TAG367:
sb $1, 0($1)
bltz $1, TAG368
mflo $2
sh $2, 0($1)
TAG368:
sll $4, $2, 9
srlv $3, $2, $2
multu $2, $2
blez $4, TAG369
TAG369:
multu $3, $3
lui $1, 5
sh $3, 0($3)
bne $3, $1, TAG370
TAG370:
sll $0, $0, 0
mflo $4
divu $1, $1
bne $4, $4, TAG371
TAG371:
xori $2, $4, 8
slti $4, $4, 12
divu $4, $4
slti $2, $4, 6
TAG372:
lbu $2, 0($2)
lui $2, 13
subu $3, $2, $2
or $1, $2, $2
TAG373:
sll $0, $0, 0
sra $4, $1, 1
mtlo $4
bgtz $4, TAG374
TAG374:
sltiu $3, $4, 6
lw $1, 0($3)
lui $1, 14
multu $1, $3
TAG375:
slti $3, $1, 13
mtlo $1
xori $4, $3, 3
mthi $3
TAG376:
lui $2, 5
sll $0, $0, 0
bne $2, $4, TAG377
mflo $2
TAG377:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $2
beq $2, $2, TAG378
TAG378:
ori $3, $2, 4
sll $0, $0, 0
subu $4, $2, $2
lui $3, 2
TAG379:
div $3, $3
bgez $3, TAG380
mfhi $2
lui $2, 0
TAG380:
bltz $2, TAG381
addiu $3, $2, 3
and $1, $3, $2
multu $3, $3
TAG381:
lui $2, 7
addi $3, $1, 8
mtlo $3
multu $2, $3
TAG382:
addiu $3, $3, 12
lhu $3, 0($3)
blez $3, TAG383
sb $3, 0($3)
TAG383:
lui $1, 8
mult $1, $3
mflo $1
ori $4, $1, 10
TAG384:
bgez $4, TAG385
sll $0, $0, 0
sw $4, 0($3)
lb $2, 0($4)
TAG385:
sll $0, $0, 0
sltiu $3, $3, 15
beq $2, $3, TAG386
mthi $2
TAG386:
mthi $3
lui $1, 1
beq $3, $3, TAG387
mflo $4
TAG387:
lui $2, 6
and $2, $2, $2
mtlo $4
mult $2, $2
TAG388:
sll $0, $0, 0
mflo $2
mtlo $2
sh $2, 0($2)
TAG389:
beq $2, $2, TAG390
xori $4, $2, 13
multu $2, $2
mthi $4
TAG390:
beq $4, $4, TAG391
div $4, $4
mflo $2
lhu $2, 0($2)
TAG391:
mfhi $2
sll $2, $2, 13
nor $3, $2, $2
lui $4, 4
TAG392:
lui $4, 9
mflo $2
bgtz $2, TAG393
sll $0, $0, 0
TAG393:
lb $4, 0($2)
or $4, $2, $2
bltz $4, TAG394
sb $4, 0($4)
TAG394:
mfhi $4
bgez $4, TAG395
mfhi $2
bgtz $4, TAG395
TAG395:
sb $2, 0($2)
sw $2, 0($2)
lhu $2, 0($2)
sh $2, 0($2)
TAG396:
sb $2, 0($2)
lui $3, 2
nor $3, $3, $2
lh $4, 0($2)
TAG397:
ori $2, $4, 8
sh $4, 0($4)
addiu $2, $4, 10
mtlo $2
TAG398:
div $2, $2
addiu $3, $2, 4
slt $2, $3, $3
addiu $1, $3, 14
TAG399:
bgtz $1, TAG400
lui $4, 0
bgez $1, TAG400
div $4, $1
TAG400:
subu $2, $4, $4
addi $2, $2, 10
sllv $4, $4, $4
blez $4, TAG401
TAG401:
lhu $2, 0($4)
mult $4, $4
mult $2, $4
beq $4, $2, TAG402
TAG402:
sltiu $4, $2, 13
bltz $2, TAG403
sltiu $2, $4, 14
lui $1, 12
TAG403:
sll $3, $1, 2
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG404:
multu $4, $4
mthi $4
nor $3, $4, $4
sra $4, $3, 4
TAG405:
sb $4, 1($4)
lh $4, 1($4)
sh $4, -255($4)
multu $4, $4
TAG406:
mthi $4
lb $4, -255($4)
lbu $3, 1($4)
sllv $3, $4, $4
TAG407:
div $3, $3
sll $0, $0, 0
div $4, $4
blez $3, TAG408
TAG408:
lui $3, 10
lui $2, 7
lb $1, 1($4)
lui $4, 14
TAG409:
mflo $2
lui $2, 1
bne $2, $2, TAG410
mfhi $1
TAG410:
mult $1, $1
mtlo $1
mthi $1
bne $1, $1, TAG411
TAG411:
and $3, $1, $1
blez $3, TAG412
lb $4, 0($3)
addu $1, $3, $3
TAG412:
sll $2, $1, 15
mthi $1
multu $1, $1
mult $2, $1
TAG413:
bltz $2, TAG414
sllv $4, $2, $2
multu $4, $4
blez $4, TAG414
TAG414:
lui $2, 0
beq $2, $2, TAG415
sh $2, 0($4)
lhu $4, 0($4)
TAG415:
mtlo $4
sb $4, 0($4)
multu $4, $4
mult $4, $4
TAG416:
lh $3, 0($4)
addu $3, $4, $4
bne $3, $3, TAG417
mflo $3
TAG417:
sra $4, $3, 6
mtlo $4
multu $4, $4
mtlo $3
TAG418:
andi $3, $4, 10
sb $4, 0($4)
mult $4, $3
sh $3, 0($3)
TAG419:
slti $1, $3, 14
mtlo $1
lui $1, 15
beq $1, $3, TAG420
TAG420:
sll $0, $0, 0
mfhi $1
bgtz $4, TAG421
mfhi $3
TAG421:
mult $3, $3
beq $3, $3, TAG422
mthi $3
bltz $3, TAG422
TAG422:
sw $3, 0($3)
mthi $3
sb $3, 0($3)
lw $2, 0($3)
TAG423:
sh $2, 0($2)
srlv $2, $2, $2
xori $4, $2, 8
bltz $4, TAG424
TAG424:
sh $4, 0($4)
divu $4, $4
bne $4, $4, TAG425
mflo $4
TAG425:
lb $2, 0($4)
and $3, $2, $2
lhu $3, 0($3)
bltz $2, TAG426
TAG426:
lui $4, 9
sll $0, $0, 0
sub $3, $3, $3
sltiu $2, $3, 2
TAG427:
sb $2, 0($2)
mflo $1
lb $4, 0($1)
bgtz $4, TAG428
TAG428:
mthi $4
bne $4, $4, TAG429
sb $4, 0($4)
sb $4, 0($4)
TAG429:
beq $4, $4, TAG430
lui $4, 1
lw $4, 0($4)
lb $1, 0($4)
TAG430:
or $2, $1, $1
lui $1, 2
divu $1, $2
nor $4, $1, $1
TAG431:
sra $4, $4, 6
xori $2, $4, 7
mfhi $2
mtlo $2
TAG432:
multu $2, $2
bgtz $2, TAG433
lui $4, 4
sll $0, $0, 0
TAG433:
bgtz $4, TAG434
div $4, $4
mtlo $4
mflo $4
TAG434:
sll $0, $0, 0
mult $4, $4
mthi $4
lui $4, 13
TAG435:
blez $4, TAG436
slt $1, $4, $4
multu $4, $4
bgtz $1, TAG436
TAG436:
mfhi $1
andi $3, $1, 8
lw $1, -169($1)
lhu $3, -256($1)
TAG437:
multu $3, $3
lui $3, 0
beq $3, $3, TAG438
mthi $3
TAG438:
beq $3, $3, TAG439
xor $2, $3, $3
sb $2, 0($2)
div $2, $2
TAG439:
beq $2, $2, TAG440
mult $2, $2
bgtz $2, TAG440
sub $1, $2, $2
TAG440:
div $1, $1
mfhi $4
sllv $2, $1, $1
bne $4, $1, TAG441
TAG441:
sh $2, -256($2)
lui $3, 13
mthi $2
div $2, $2
TAG442:
blez $3, TAG443
lui $3, 11
beq $3, $3, TAG443
mtlo $3
TAG443:
ori $3, $3, 1
sll $0, $0, 0
addiu $3, $1, 8
sh $3, -256($1)
TAG444:
bne $3, $3, TAG445
mfhi $2
mthi $3
xor $2, $2, $3
TAG445:
xori $2, $2, 8
bltz $2, TAG446
lhu $2, -256($2)
divu $2, $2
TAG446:
andi $4, $2, 8
blez $4, TAG447
lw $1, -264($2)
addiu $3, $4, 9
TAG447:
addiu $3, $3, 10
andi $4, $3, 12
xori $1, $3, 5
beq $3, $1, TAG448
TAG448:
lb $3, 0($1)
mult $3, $3
mult $1, $1
mfhi $4
TAG449:
slti $4, $4, 5
lbu $1, 0($4)
multu $4, $1
lbu $4, 0($1)
TAG450:
lbu $2, 0($4)
bltz $2, TAG451
nor $2, $2, $4
div $4, $2
TAG451:
sh $2, 2($2)
sltu $1, $2, $2
mult $1, $1
bne $1, $1, TAG452
TAG452:
multu $1, $1
blez $1, TAG453
sw $1, 0($1)
sw $1, 0($1)
TAG453:
subu $2, $1, $1
sw $2, 0($2)
srav $3, $2, $2
lb $3, 0($1)
TAG454:
mult $3, $3
ori $3, $3, 0
bltz $3, TAG455
or $2, $3, $3
TAG455:
bgtz $2, TAG456
sb $2, 0($2)
sra $3, $2, 15
or $1, $3, $2
TAG456:
mult $1, $1
beq $1, $1, TAG457
sltiu $4, $1, 5
bne $1, $1, TAG457
TAG457:
lui $4, 6
mthi $4
multu $4, $4
srlv $4, $4, $4
TAG458:
bne $4, $4, TAG459
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG459:
mflo $2
andi $4, $4, 14
mtlo $4
mfhi $3
TAG460:
lbu $4, 0($3)
sltu $4, $3, $3
bgtz $4, TAG461
mthi $3
TAG461:
mfhi $3
bgtz $4, TAG462
and $1, $3, $3
lbu $4, 0($4)
TAG462:
sw $4, 0($4)
blez $4, TAG463
lbu $1, 0($4)
srav $2, $4, $1
TAG463:
blez $2, TAG464
divu $2, $2
andi $1, $2, 15
lh $4, 0($1)
TAG464:
beq $4, $4, TAG465
mthi $4
mfhi $1
bltz $4, TAG465
TAG465:
lui $4, 2
mflo $1
sll $3, $1, 7
blez $4, TAG466
TAG466:
mult $3, $3
beq $3, $3, TAG467
sltu $4, $3, $3
sw $4, 0($3)
TAG467:
lui $4, 7
bgtz $4, TAG468
sll $0, $0, 0
mtlo $4
TAG468:
sll $0, $0, 0
sllv $1, $4, $4
beq $1, $1, TAG469
srl $1, $4, 4
TAG469:
mflo $2
sltu $2, $1, $1
lhu $2, 0($2)
mfhi $3
TAG470:
bne $3, $3, TAG471
sh $3, 0($3)
andi $1, $3, 12
sb $3, 0($1)
TAG471:
bgtz $1, TAG472
lui $3, 11
mtlo $1
lui $3, 0
TAG472:
lui $2, 6
bne $2, $2, TAG473
mfhi $2
bltz $3, TAG473
TAG473:
mthi $2
bne $2, $2, TAG474
mtlo $2
lb $2, 0($2)
TAG474:
lhu $1, 0($2)
sll $3, $2, 6
sh $2, 0($2)
mthi $3
TAG475:
beq $3, $3, TAG476
mult $3, $3
lui $3, 7
ori $2, $3, 15
TAG476:
sb $2, 0($2)
mfhi $3
bne $3, $2, TAG477
mfhi $3
TAG477:
mflo $2
addiu $3, $2, 10
lui $3, 11
bltz $2, TAG478
TAG478:
ori $2, $3, 6
sll $0, $0, 0
sra $1, $2, 8
bgtz $2, TAG479
TAG479:
mfhi $4
blez $1, TAG480
sllv $3, $4, $4
bgez $1, TAG480
TAG480:
mtlo $3
beq $3, $3, TAG481
mflo $1
sltiu $2, $3, 5
TAG481:
bltz $2, TAG482
ori $4, $2, 15
sll $0, $0, 0
bgtz $4, TAG482
TAG482:
multu $4, $4
mtlo $4
mult $4, $4
mtlo $4
TAG483:
bltz $4, TAG484
mthi $4
subu $2, $4, $4
nor $2, $2, $2
TAG484:
bltz $2, TAG485
mtlo $2
mthi $2
sll $2, $2, 7
TAG485:
bne $2, $2, TAG486
sh $2, 1($2)
mult $2, $2
mtlo $2
TAG486:
sra $3, $2, 14
lh $3, 1($2)
mfhi $2
beq $2, $2, TAG487
TAG487:
lw $4, 0($2)
mfhi $3
mflo $3
lbu $3, 0($2)
TAG488:
multu $3, $3
sb $3, -255($3)
xori $3, $3, 8
and $2, $3, $3
TAG489:
mtlo $2
bgtz $2, TAG490
mthi $2
subu $2, $2, $2
TAG490:
mult $2, $2
bne $2, $2, TAG491
mthi $2
lui $2, 12
TAG491:
mfhi $4
div $2, $2
mflo $2
bne $2, $2, TAG492
TAG492:
sllv $3, $2, $2
and $4, $2, $3
mfhi $2
sltu $4, $4, $2
TAG493:
sll $1, $4, 9
sllv $2, $4, $1
blez $4, TAG494
sb $2, 0($4)
TAG494:
lh $3, 0($2)
addu $1, $2, $2
bne $3, $3, TAG495
mult $1, $1
TAG495:
andi $4, $1, 1
sra $2, $1, 2
bltz $4, TAG496
and $2, $1, $1
TAG496:
and $3, $2, $2
mtlo $2
mtlo $3
bne $3, $3, TAG497
TAG497:
mtlo $3
xori $4, $3, 14
mtlo $3
srlv $2, $4, $4
TAG498:
bltz $2, TAG499
lw $2, 0($2)
mfhi $2
bne $2, $2, TAG499
TAG499:
mfhi $3
blez $3, TAG500
sw $2, 0($3)
beq $2, $3, TAG500
TAG500:
mfhi $2
blez $2, TAG501
sw $3, 0($3)
lui $2, 10
TAG501:
mthi $2
lbu $3, 0($2)
mfhi $3
lui $2, 10
TAG502:
bltz $2, TAG503
sll $0, $0, 0
addiu $4, $2, 14
sll $0, $0, 0
TAG503:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
sll $4, $1, 7
TAG504:
lui $1, 8
mtlo $1
lb $1, 0($4)
lw $2, 0($4)
TAG505:
srav $4, $2, $2
mult $2, $4
srav $4, $2, $4
lh $4, 0($2)
TAG506:
slt $4, $4, $4
mfhi $1
sb $4, 0($4)
srl $1, $4, 5
TAG507:
beq $1, $1, TAG508
sllv $2, $1, $1
lui $4, 2
beq $2, $1, TAG508
TAG508:
mflo $3
sh $3, 0($3)
sh $3, 0($3)
mtlo $4
TAG509:
lh $2, 0($3)
mthi $2
bgtz $2, TAG510
mtlo $2
TAG510:
mflo $4
lui $1, 7
lh $2, 0($4)
lui $3, 8
TAG511:
mflo $1
mflo $1
sll $0, $0, 0
divu $1, $3
TAG512:
mflo $2
lui $1, 3
blez $3, TAG513
sra $3, $1, 13
TAG513:
lui $2, 6
lw $3, 0($3)
sllv $1, $3, $3
lui $3, 10
TAG514:
mtlo $3
sll $0, $0, 0
mthi $3
blez $3, TAG515
TAG515:
div $3, $3
bne $3, $3, TAG516
mthi $3
div $3, $3
TAG516:
ori $4, $3, 14
sll $0, $0, 0
lui $2, 0
mtlo $3
TAG517:
multu $2, $2
lui $2, 15
srl $3, $2, 9
sll $0, $0, 0
TAG518:
mthi $1
mflo $3
mthi $1
bne $1, $1, TAG519
TAG519:
lb $3, 0($3)
multu $3, $3
sub $1, $3, $3
subu $1, $1, $3
TAG520:
subu $2, $1, $1
slt $1, $1, $1
srl $2, $1, 11
sra $2, $2, 12
TAG521:
mult $2, $2
mflo $2
sb $2, 0($2)
multu $2, $2
TAG522:
xor $3, $2, $2
lhu $4, 0($2)
lhu $3, 0($2)
lui $4, 7
TAG523:
blez $4, TAG524
multu $4, $4
multu $4, $4
mfhi $1
TAG524:
addu $3, $1, $1
bgtz $3, TAG525
lbu $4, 0($1)
div $1, $4
TAG525:
lbu $1, 0($4)
mfhi $2
slt $2, $2, $1
beq $2, $2, TAG526
TAG526:
lh $4, 0($2)
blez $2, TAG527
andi $4, $4, 10
bne $4, $4, TAG527
TAG527:
mthi $4
beq $4, $4, TAG528
lui $4, 13
mthi $4
TAG528:
mflo $3
andi $3, $3, 7
srav $3, $4, $3
andi $4, $4, 8
TAG529:
lui $4, 10
sll $0, $0, 0
sll $0, $0, 0
lui $4, 10
TAG530:
beq $4, $4, TAG531
sll $4, $4, 15
lui $4, 12
xor $3, $4, $4
TAG531:
mflo $4
sw $3, 0($4)
sll $0, $0, 0
nor $2, $4, $3
TAG532:
bltz $2, TAG533
sll $2, $2, 3
lw $2, 0($2)
sh $2, 0($2)
TAG533:
bne $2, $2, TAG534
addiu $2, $2, 12
mtlo $2
mfhi $1
TAG534:
multu $1, $1
mtlo $1
srl $1, $1, 14
lw $4, 0($1)
TAG535:
subu $4, $4, $4
addi $2, $4, 1
bne $4, $4, TAG536
srav $2, $2, $4
TAG536:
srl $2, $2, 15
mtlo $2
blez $2, TAG537
sh $2, 0($2)
TAG537:
bgez $2, TAG538
mflo $2
or $2, $2, $2
mthi $2
TAG538:
mult $2, $2
lh $4, 0($2)
mult $2, $2
and $2, $2, $2
TAG539:
lhu $3, 0($2)
lui $4, 14
mult $3, $3
bgtz $3, TAG540
TAG540:
sll $0, $0, 0
div $4, $4
lui $4, 5
bltz $4, TAG541
TAG541:
sllv $3, $4, $4
divu $4, $3
multu $4, $4
srlv $4, $3, $4
TAG542:
andi $3, $4, 3
multu $3, $4
bne $3, $4, TAG543
nor $2, $3, $4
TAG543:
lui $3, 15
sll $0, $0, 0
bne $2, $2, TAG544
sll $0, $0, 0
TAG544:
beq $2, $2, TAG545
srl $2, $2, 15
mtlo $2
lui $4, 4
TAG545:
mthi $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG546:
lw $4, 0($1)
sra $4, $4, 9
mthi $1
mfhi $2
TAG547:
lui $2, 2
addiu $2, $2, 14
subu $2, $2, $2
addi $3, $2, 6
TAG548:
ori $3, $3, 1
mflo $2
addiu $1, $3, 13
beq $3, $2, TAG549
TAG549:
mult $1, $1
mtlo $1
mflo $4
bgez $4, TAG550
TAG550:
sltiu $2, $4, 0
mflo $1
bltz $4, TAG551
lb $3, 0($4)
TAG551:
bne $3, $3, TAG552
lbu $2, 0($3)
div $3, $3
bgtz $3, TAG552
TAG552:
addu $3, $2, $2
mfhi $1
bgez $2, TAG553
mfhi $3
TAG553:
bgtz $3, TAG554
lui $1, 6
multu $3, $3
multu $3, $1
TAG554:
mthi $1
mthi $1
div $1, $1
bgtz $1, TAG555
TAG555:
mtlo $1
mfhi $2
mfhi $2
addu $1, $1, $2
TAG556:
lui $2, 11
mthi $1
mtlo $1
sll $0, $0, 0
TAG557:
lui $2, 11
mfhi $1
sll $0, $0, 0
blez $2, TAG558
TAG558:
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
addu $3, $1, $1
TAG559:
sll $0, $0, 0
blez $1, TAG560
sll $0, $0, 0
lui $2, 5
TAG560:
sltiu $2, $2, 9
lb $4, 0($2)
beq $2, $2, TAG561
mtlo $4
TAG561:
bltz $4, TAG562
sb $4, 0($4)
bltz $4, TAG562
lbu $2, 0($4)
TAG562:
mflo $4
addu $2, $2, $2
mult $2, $2
sw $4, 0($2)
TAG563:
andi $1, $2, 2
lui $1, 8
addi $2, $2, 1
or $3, $1, $2
TAG564:
sltiu $2, $3, 6
mfhi $4
multu $4, $2
sll $0, $0, 0
TAG565:
sb $4, 0($4)
mflo $4
mult $4, $4
multu $4, $4
TAG566:
bltz $4, TAG567
sh $4, 0($4)
bne $4, $4, TAG567
add $2, $4, $4
TAG567:
beq $2, $2, TAG568
lh $1, 0($2)
mfhi $2
lh $2, 0($2)
TAG568:
beq $2, $2, TAG569
addi $1, $2, 7
lui $3, 10
mtlo $1
TAG569:
addiu $2, $3, 10
divu $2, $2
mthi $3
mtlo $2
TAG570:
mflo $1
multu $1, $1
bgtz $2, TAG571
lui $4, 8
TAG571:
bgtz $4, TAG572
sltiu $1, $4, 1
xor $2, $4, $4
addiu $1, $1, 7
TAG572:
sh $1, 0($1)
mult $1, $1
beq $1, $1, TAG573
and $3, $1, $1
TAG573:
mflo $3
slti $4, $3, 9
beq $3, $4, TAG574
xori $1, $3, 10
TAG574:
lui $4, 15
mult $1, $4
divu $4, $4
mtlo $1
TAG575:
and $1, $4, $4
lui $1, 9
mfhi $3
lui $2, 8
TAG576:
srav $4, $2, $2
mult $4, $4
multu $2, $4
sll $0, $0, 0
TAG577:
addiu $2, $4, 12
mtlo $4
bgez $4, TAG578
sll $0, $0, 0
TAG578:
mult $2, $2
srl $2, $2, 14
mthi $2
mfhi $4
TAG579:
srl $1, $4, 1
mult $4, $1
beq $4, $4, TAG580
mtlo $1
TAG580:
lui $4, 10
bltz $4, TAG581
lui $1, 2
bltz $4, TAG581
TAG581:
sll $0, $0, 0
blez $1, TAG582
mult $1, $1
mflo $4
TAG582:
add $4, $4, $4
sb $4, 0($4)
lui $1, 12
bne $1, $1, TAG583
TAG583:
mfhi $1
lui $4, 1
bgtz $1, TAG584
slt $1, $1, $1
TAG584:
bgez $1, TAG585
nor $1, $1, $1
beq $1, $1, TAG585
sh $1, 0($1)
TAG585:
sltu $4, $1, $1
mflo $1
sb $1, 0($1)
mtlo $1
TAG586:
lui $3, 13
sll $0, $0, 0
mthi $4
sw $1, 0($1)
TAG587:
lui $4, 15
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG588
TAG588:
mult $4, $4
lui $4, 10
sllv $4, $4, $4
mfhi $4
TAG589:
sh $4, -225($4)
lw $4, -225($4)
beq $4, $4, TAG590
mflo $2
TAG590:
lui $2, 12
mflo $1
mfhi $3
andi $4, $1, 8
TAG591:
lui $1, 3
beq $1, $4, TAG592
mtlo $1
addu $1, $1, $4
TAG592:
subu $3, $1, $1
addiu $4, $3, 1
xori $4, $4, 12
mult $4, $1
TAG593:
mfhi $1
div $1, $4
multu $4, $1
lb $1, 0($1)
TAG594:
mflo $2
sw $1, 31($1)
mflo $2
sb $2, 31($1)
TAG595:
sra $3, $2, 4
beq $2, $2, TAG596
lui $3, 7
bne $2, $3, TAG596
TAG596:
mtlo $3
sll $0, $0, 0
lui $3, 8
sll $0, $0, 0
TAG597:
mthi $3
lui $1, 12
sll $0, $0, 0
ori $1, $1, 15
TAG598:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG599:
lui $3, 7
addu $3, $3, $1
multu $3, $3
mfhi $2
TAG600:
div $2, $2
sll $3, $2, 14
xor $3, $3, $3
srl $4, $2, 1
TAG601:
mthi $4
lui $2, 12
bne $4, $2, TAG602
sll $0, $0, 0
TAG602:
sll $0, $0, 0
ori $3, $2, 1
sll $0, $0, 0
beq $3, $3, TAG603
TAG603:
mfhi $3
mtlo $3
lui $4, 8
lw $2, -180($3)
TAG604:
or $4, $2, $2
subu $3, $4, $2
beq $3, $2, TAG605
mfhi $3
TAG605:
sll $2, $3, 15
multu $2, $2
div $3, $3
div $3, $3
TAG606:
mtlo $2
bgtz $2, TAG607
divu $2, $2
div $2, $2
TAG607:
nor $2, $2, $2
xor $1, $2, $2
mtlo $2
mflo $4
TAG608:
bgez $4, TAG609
div $4, $4
mult $4, $4
bgtz $4, TAG609
TAG609:
sll $0, $0, 0
sltiu $2, $1, 12
sw $2, 0($1)
divu $2, $4
TAG610:
lui $2, 9
or $1, $2, $2
slt $4, $2, $1
bne $2, $2, TAG611
TAG611:
lui $1, 3
srlv $1, $4, $4
mthi $1
sltu $3, $1, $1
TAG612:
xori $1, $3, 13
multu $3, $1
mthi $3
addiu $4, $3, 5
TAG613:
sllv $4, $4, $4
bltz $4, TAG614
mthi $4
mflo $3
TAG614:
sllv $2, $3, $3
multu $3, $2
andi $3, $2, 13
mfhi $2
TAG615:
nor $1, $2, $2
nor $3, $2, $1
or $2, $2, $1
lui $4, 9
TAG616:
mthi $4
div $4, $4
sll $0, $0, 0
mult $2, $4
TAG617:
sll $0, $0, 0
sll $2, $1, 1
lui $1, 12
mthi $1
TAG618:
srav $4, $1, $1
mult $4, $1
sll $2, $1, 2
beq $2, $2, TAG619
TAG619:
sltiu $2, $2, 13
mfhi $4
mflo $2
addiu $4, $2, 4
TAG620:
mflo $2
bgez $2, TAG621
srav $2, $4, $4
srl $2, $4, 15
TAG621:
addiu $3, $2, 2
bltz $3, TAG622
divu $3, $3
mflo $2
TAG622:
bne $2, $2, TAG623
srl $3, $2, 13
mult $2, $2
mthi $3
TAG623:
beq $3, $3, TAG624
mthi $3
mfhi $1
lhu $2, 0($3)
TAG624:
mtlo $2
mfhi $1
mult $1, $2
bltz $1, TAG625
TAG625:
lh $1, 0($1)
beq $1, $1, TAG626
xori $2, $1, 5
bgez $2, TAG626
TAG626:
lui $2, 6
sll $0, $0, 0
subu $1, $2, $2
blez $2, TAG627
TAG627:
mult $1, $1
lui $1, 10
sll $0, $0, 0
xori $3, $1, 14
TAG628:
bgtz $3, TAG629
sll $0, $0, 0
mult $3, $3
sw $3, 0($3)
TAG629:
sll $0, $0, 0
addu $4, $3, $3
lui $1, 15
mfhi $4
TAG630:
lui $2, 0
multu $2, $4
lhu $3, 0($2)
sb $4, 0($3)
TAG631:
beq $3, $3, TAG632
sb $3, 0($3)
srl $1, $3, 5
sw $3, 0($3)
TAG632:
ori $4, $1, 5
addiu $3, $4, 2
multu $1, $1
mflo $1
TAG633:
mtlo $1
lui $4, 7
beq $4, $1, TAG634
sll $0, $0, 0
TAG634:
lui $3, 11
mult $2, $2
blez $3, TAG635
lui $3, 5
TAG635:
sra $1, $3, 15
ori $4, $1, 2
sll $0, $0, 0
slt $4, $1, $1
TAG636:
multu $4, $4
multu $4, $4
lui $1, 6
sb $1, 0($4)
TAG637:
beq $1, $1, TAG638
slt $2, $1, $1
div $2, $1
mult $2, $1
TAG638:
addiu $3, $2, 8
blez $2, TAG639
lb $3, 0($2)
lui $2, 14
TAG639:
lui $3, 3
mult $3, $2
mthi $3
sh $2, 0($2)
TAG640:
sll $0, $0, 0
mthi $3
mult $3, $3
divu $3, $3
TAG641:
lui $2, 0
mflo $1
mult $2, $1
beq $2, $1, TAG642
TAG642:
sra $2, $1, 13
sllv $1, $2, $2
mtlo $1
lb $2, 0($2)
TAG643:
lb $3, 0($2)
and $2, $3, $2
sll $1, $2, 5
and $2, $1, $1
TAG644:
beq $2, $2, TAG645
sra $2, $2, 1
mfhi $4
lui $3, 13
TAG645:
mtlo $3
lh $1, 0($3)
sllv $1, $1, $3
mult $3, $1
TAG646:
ori $4, $1, 11
nor $3, $4, $1
lui $2, 0
beq $4, $4, TAG647
TAG647:
mtlo $2
mflo $4
mflo $1
mult $2, $4
TAG648:
bne $1, $1, TAG649
lh $2, 0($1)
lbu $1, 0($1)
bne $1, $1, TAG649
TAG649:
lui $2, 8
mult $2, $1
bltz $2, TAG650
sh $2, 0($1)
TAG650:
lui $4, 12
sll $0, $0, 0
addiu $2, $3, 3
mflo $3
TAG651:
bne $3, $3, TAG652
mthi $3
bne $3, $3, TAG652
lui $2, 6
TAG652:
and $1, $2, $2
divu $2, $2
mfhi $4
mthi $2
TAG653:
bgtz $4, TAG654
mfhi $4
lui $2, 12
bne $4, $2, TAG654
TAG654:
sltu $3, $2, $2
or $1, $3, $3
lui $4, 8
addiu $2, $1, 3
TAG655:
lui $2, 3
xor $2, $2, $2
mthi $2
mult $2, $2
TAG656:
andi $4, $2, 6
addiu $1, $4, 7
mfhi $3
mflo $3
TAG657:
mflo $3
lui $2, 7
sll $0, $0, 0
mtlo $2
TAG658:
sh $4, 0($4)
multu $4, $4
bgez $4, TAG659
mtlo $4
TAG659:
addi $2, $4, 3
lui $1, 2
bgtz $1, TAG660
sll $0, $0, 0
TAG660:
lhu $1, 0($3)
addiu $2, $1, 1
lui $2, 10
ori $1, $2, 2
TAG661:
lui $3, 4
divu $1, $3
srl $2, $3, 15
addiu $3, $2, 9
TAG662:
sb $3, 0($3)
lui $2, 0
mfhi $2
srav $2, $2, $2
TAG663:
blez $2, TAG664
xori $1, $2, 6
xor $1, $1, $2
divu $1, $1
TAG664:
sllv $3, $1, $1
and $2, $3, $1
beq $1, $1, TAG665
mfhi $4
TAG665:
sltu $4, $4, $4
lb $3, 0($4)
lui $4, 8
sll $0, $0, 0
TAG666:
addu $1, $4, $4
bltz $1, TAG667
mtlo $1
xori $4, $4, 2
TAG667:
mult $4, $4
multu $4, $4
mfhi $3
mtlo $3
TAG668:
mfhi $3
mthi $3
sb $3, 0($3)
bgtz $3, TAG669
TAG669:
nor $3, $3, $3
subu $3, $3, $3
multu $3, $3
bltz $3, TAG670
TAG670:
mfhi $4
sh $3, 0($3)
multu $3, $3
lw $4, 0($3)
TAG671:
blez $4, TAG672
lh $1, 0($4)
blez $4, TAG672
mthi $1
TAG672:
mthi $1
mflo $2
bne $2, $2, TAG673
mult $1, $2
TAG673:
sb $2, 0($2)
sb $2, 0($2)
sh $2, 0($2)
lbu $3, 0($2)
TAG674:
mfhi $4
lui $1, 5
mfhi $4
bne $1, $4, TAG675
TAG675:
lh $1, 0($4)
mflo $4
mfhi $1
andi $1, $1, 9
TAG676:
bgtz $1, TAG677
mtlo $1
blez $1, TAG677
mult $1, $1
TAG677:
lh $4, 0($1)
lui $1, 10
andi $1, $1, 12
or $2, $1, $1
TAG678:
bne $2, $2, TAG679
srav $1, $2, $2
bltz $2, TAG679
lui $2, 14
TAG679:
srav $3, $2, $2
beq $2, $2, TAG680
sll $0, $0, 0
mfhi $4
TAG680:
mthi $4
sra $2, $4, 11
mfhi $2
sh $4, 0($4)
TAG681:
xori $4, $2, 6
lhu $3, 0($2)
lui $1, 10
mfhi $2
TAG682:
sh $2, 0($2)
addi $1, $2, 11
xori $3, $1, 7
bne $1, $2, TAG683
TAG683:
lw $2, 0($3)
mtlo $3
mult $3, $2
beq $3, $3, TAG684
TAG684:
mfhi $2
andi $1, $2, 12
sh $1, 0($1)
lh $2, 0($1)
TAG685:
bne $2, $2, TAG686
mflo $1
lui $1, 3
sh $1, 0($2)
TAG686:
mthi $1
bne $1, $1, TAG687
mfhi $1
lui $1, 2
TAG687:
mfhi $2
sll $0, $0, 0
lui $4, 0
sltiu $2, $1, 6
TAG688:
bgtz $2, TAG689
sll $1, $2, 3
bgez $1, TAG689
sra $3, $1, 14
TAG689:
addiu $3, $3, 4
mtlo $3
lui $1, 9
mult $3, $3
TAG690:
sra $1, $1, 8
sllv $1, $1, $1
bgez $1, TAG691
mfhi $2
TAG691:
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG692
lhu $1, 0($2)
TAG692:
lhu $2, 0($1)
addiu $4, $2, 9
lui $2, 5
addu $3, $2, $2
TAG693:
mult $3, $3
mflo $4
bgtz $3, TAG694
sll $0, $0, 0
TAG694:
lhu $3, 0($4)
lui $1, 8
bltz $4, TAG695
lh $2, 0($3)
TAG695:
lbu $3, 0($2)
addiu $1, $2, 6
and $2, $2, $1
sltiu $1, $3, 3
TAG696:
srav $3, $1, $1
mflo $4
mfhi $2
xor $2, $3, $4
TAG697:
mflo $2
mult $2, $2
mthi $2
beq $2, $2, TAG698
TAG698:
lui $3, 14
sb $2, 0($2)
sll $0, $0, 0
mult $3, $3
TAG699:
sll $3, $3, 6
bgez $3, TAG700
subu $1, $3, $3
mtlo $3
TAG700:
add $4, $1, $1
and $4, $4, $1
beq $4, $4, TAG701
mtlo $4
TAG701:
slt $3, $4, $4
mult $4, $4
lui $3, 10
bltz $3, TAG702
TAG702:
sll $0, $0, 0
divu $3, $3
lui $2, 3
mfhi $3
TAG703:
lw $2, 0($3)
mtlo $2
multu $3, $3
srl $1, $3, 5
TAG704:
sb $1, 0($1)
mult $1, $1
lui $3, 7
div $3, $3
TAG705:
xori $2, $3, 11
mfhi $1
mflo $3
mfhi $4
TAG706:
mfhi $3
mthi $3
sltu $4, $4, $4
bne $3, $4, TAG707
TAG707:
mfhi $1
lui $3, 14
lui $2, 14
bgtz $1, TAG708
TAG708:
lui $2, 13
sll $0, $0, 0
lui $1, 5
mtlo $2
TAG709:
div $1, $1
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG710
TAG710:
sll $0, $0, 0
sll $1, $1, 8
mflo $1
mflo $3
TAG711:
blez $3, TAG712
multu $3, $3
mtlo $3
bne $3, $3, TAG712
TAG712:
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
bltz $3, TAG713
TAG713:
addi $4, $4, 4
lw $4, 0($4)
srl $4, $4, 8
xori $4, $4, 9
TAG714:
andi $4, $4, 15
bgtz $4, TAG715
mthi $4
bgez $4, TAG715
TAG715:
sb $4, 0($4)
bgtz $4, TAG716
sb $4, 0($4)
mfhi $2
TAG716:
bne $2, $2, TAG717
addiu $2, $2, 5
mthi $2
bgtz $2, TAG717
TAG717:
nor $1, $2, $2
bltz $2, TAG718
sll $0, $0, 0
sll $0, $0, 0
TAG718:
mult $4, $4
ori $3, $4, 3
lui $2, 1
bgez $2, TAG719
TAG719:
or $1, $2, $2
mflo $4
bne $1, $4, TAG720
mthi $1
TAG720:
mtlo $4
bgez $4, TAG721
divu $4, $4
sllv $2, $4, $4
TAG721:
beq $2, $2, TAG722
mult $2, $2
lui $3, 1
beq $3, $3, TAG722
TAG722:
mfhi $2
div $3, $2
sb $2, 0($3)
bne $2, $2, TAG723
TAG723:
mfhi $1
xori $4, $1, 5
multu $1, $1
sll $2, $2, 6
TAG724:
lui $4, 5
mtlo $2
sw $4, 0($2)
blez $4, TAG725
TAG725:
sllv $4, $4, $4
lui $2, 12
lui $1, 12
bltz $1, TAG726
TAG726:
lui $4, 7
bgez $1, TAG727
lui $3, 11
div $1, $3
TAG727:
blez $3, TAG728
mult $3, $3
nor $3, $3, $3
sllv $1, $3, $3
TAG728:
beq $1, $1, TAG729
or $2, $1, $1
sub $2, $2, $2
sw $2, 0($2)
TAG729:
srlv $3, $2, $2
sll $0, $0, 0
bne $3, $2, TAG730
nor $2, $2, $2
TAG730:
slti $2, $2, 14
lui $4, 10
mtlo $2
subu $4, $2, $4
TAG731:
slti $2, $4, 5
sra $4, $4, 8
mthi $4
andi $2, $4, 5
TAG732:
sb $2, 0($2)
add $2, $2, $2
mthi $2
sw $2, 0($2)
TAG733:
srl $1, $2, 13
bne $2, $2, TAG734
sb $2, 0($2)
lh $4, 0($2)
TAG734:
bgez $4, TAG735
sub $2, $4, $4
mfhi $2
lw $4, 0($4)
TAG735:
lui $1, 10
xori $2, $1, 10
lui $1, 8
mult $2, $1
TAG736:
bne $1, $1, TAG737
srl $2, $1, 10
mthi $2
mult $2, $1
TAG737:
nor $1, $2, $2
lui $1, 1
bne $1, $1, TAG738
xor $2, $2, $1
TAG738:
mfhi $2
mflo $1
addiu $2, $2, 9
slt $2, $2, $2
TAG739:
add $1, $2, $2
bne $2, $2, TAG740
mtlo $2
blez $1, TAG740
TAG740:
sll $3, $1, 8
lui $2, 0
sb $1, 0($1)
mthi $2
TAG741:
mtlo $2
beq $2, $2, TAG742
sllv $3, $2, $2
addiu $1, $3, 1
TAG742:
beq $1, $1, TAG743
slt $1, $1, $1
beq $1, $1, TAG743
sb $1, 0($1)
TAG743:
lui $3, 12
mfhi $3
mfhi $1
sub $3, $1, $1
TAG744:
sll $4, $3, 13
mflo $2
srlv $3, $3, $4
sll $3, $3, 3
TAG745:
mult $3, $3
mthi $3
mflo $1
sw $3, 0($1)
TAG746:
subu $3, $1, $1
lui $2, 8
mthi $2
lbu $2, 0($1)
TAG747:
srl $2, $2, 5
multu $2, $2
bgtz $2, TAG748
mfhi $1
TAG748:
lui $2, 6
sll $0, $0, 0
sh $4, 0($1)
mfhi $3
TAG749:
srl $1, $3, 9
lb $2, 0($1)
mthi $2
blez $1, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop