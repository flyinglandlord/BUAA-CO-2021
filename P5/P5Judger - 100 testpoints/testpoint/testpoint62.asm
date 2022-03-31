ori $1, $0, 2
ori $2, $0, 3
ori $3, $0, 7
ori $4, $0, 0
sw $4, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $2, 124($0)
subu $1, $2, $2
mult $2, $2
lui $4, 3
lb $2, 0($2)
TAG1:
andi $4, $2, 13
bgtz $4, TAG2
lui $1, 9
multu $4, $4
TAG2:
beq $1, $1, TAG3
mtlo $1
lw $3, 0($1)
multu $3, $1
TAG3:
lb $1, 0($3)
xor $4, $1, $3
srl $2, $3, 13
beq $3, $1, TAG4
TAG4:
mult $2, $2
lh $2, 0($2)
lui $1, 6
sll $0, $0, 0
TAG5:
mflo $2
bne $1, $1, TAG6
mflo $4
mfhi $4
TAG6:
bgez $4, TAG7
subu $1, $4, $4
lh $4, 0($4)
mfhi $4
TAG7:
bgez $4, TAG8
sb $4, 0($4)
addiu $1, $4, 14
bne $1, $1, TAG8
TAG8:
sra $3, $1, 7
or $3, $1, $3
multu $1, $3
bgez $3, TAG9
TAG9:
lbu $2, 0($3)
xor $1, $3, $3
beq $3, $2, TAG10
lh $2, 0($2)
TAG10:
sb $2, 0($2)
sub $1, $2, $2
lhu $2, 0($1)
mtlo $2
TAG11:
mult $2, $2
bne $2, $2, TAG12
mtlo $2
bne $2, $2, TAG12
TAG12:
addi $2, $2, 3
bgez $2, TAG13
slti $2, $2, 15
lhu $4, 0($2)
TAG13:
and $1, $4, $4
sub $1, $1, $1
sb $1, 0($1)
beq $1, $1, TAG14
TAG14:
mthi $1
sll $3, $1, 12
lw $1, 0($3)
sw $3, 0($3)
TAG15:
mtlo $1
mult $1, $1
ori $1, $1, 6
bgtz $1, TAG16
TAG16:
slti $2, $1, 0
blez $1, TAG17
lui $1, 0
bgez $1, TAG17
TAG17:
sub $4, $1, $1
mfhi $4
ori $1, $1, 10
addiu $4, $1, 10
TAG18:
mfhi $1
srl $2, $1, 12
sra $1, $4, 10
lui $4, 11
TAG19:
andi $1, $4, 2
sw $4, 0($1)
div $1, $4
mult $4, $1
TAG20:
multu $1, $1
mflo $3
srl $2, $1, 1
mtlo $3
TAG21:
bne $2, $2, TAG22
lui $2, 9
subu $1, $2, $2
sra $2, $2, 5
TAG22:
lui $1, 8
mtlo $1
slti $4, $2, 10
mtlo $1
TAG23:
sw $4, 0($4)
sub $2, $4, $4
lbu $1, 0($2)
lh $1, 0($1)
TAG24:
bne $1, $1, TAG25
ori $1, $1, 12
blez $1, TAG25
addiu $2, $1, 11
TAG25:
sltiu $1, $2, 5
slt $1, $2, $1
mtlo $2
mult $2, $1
TAG26:
addi $1, $1, 9
mthi $1
mtlo $1
blez $1, TAG27
TAG27:
lb $2, 0($1)
lui $4, 8
nor $1, $1, $4
mtlo $1
TAG28:
div $1, $1
mfhi $4
bne $4, $1, TAG29
mtlo $1
TAG29:
lui $2, 2
blez $2, TAG30
multu $2, $2
bne $2, $4, TAG30
TAG30:
mfhi $1
sb $2, 0($1)
sll $0, $0, 0
sllv $3, $1, $1
TAG31:
mthi $3
sh $3, 0($3)
mflo $4
beq $3, $3, TAG32
TAG32:
lui $4, 5
sll $0, $0, 0
bgtz $4, TAG33
lui $2, 1
TAG33:
or $4, $2, $2
multu $4, $4
blez $4, TAG34
mflo $2
TAG34:
sh $2, 0($2)
lbu $4, 0($2)
mflo $4
sub $3, $4, $4
TAG35:
andi $2, $3, 14
sltu $3, $2, $2
ori $4, $2, 1
lhu $2, 0($3)
TAG36:
lui $1, 9
mult $2, $2
multu $1, $1
sb $2, 0($2)
TAG37:
bne $1, $1, TAG38
mfhi $1
bltz $1, TAG38
div $1, $1
TAG38:
mthi $1
bgtz $1, TAG39
mult $1, $1
mtlo $1
TAG39:
addiu $3, $1, 6
lui $4, 1
sltu $3, $4, $4
sb $1, 0($3)
TAG40:
multu $3, $3
mfhi $3
mfhi $3
bltz $3, TAG41
TAG41:
mflo $2
lui $2, 2
multu $2, $3
bgez $2, TAG42
TAG42:
mtlo $2
mfhi $2
multu $2, $2
mtlo $2
TAG43:
lh $4, 0($2)
mflo $3
mfhi $3
mflo $4
TAG44:
mflo $3
lbu $2, 0($4)
bne $3, $2, TAG45
mflo $2
TAG45:
sltiu $3, $2, 12
sll $3, $3, 11
mfhi $3
lhu $2, 0($3)
TAG46:
mult $2, $2
sb $2, 0($2)
xori $3, $2, 9
sra $2, $3, 9
TAG47:
ori $2, $2, 3
lb $4, 0($2)
lui $3, 7
beq $3, $3, TAG48
TAG48:
lui $1, 9
sllv $4, $3, $3
beq $1, $1, TAG49
lui $2, 9
TAG49:
lui $1, 0
addu $3, $2, $1
mflo $1
beq $1, $1, TAG50
TAG50:
mflo $4
bne $1, $1, TAG51
mfhi $2
bgtz $2, TAG51
TAG51:
sh $2, 0($2)
lui $4, 12
subu $4, $2, $2
lui $2, 0
TAG52:
lui $3, 2
sb $2, 0($2)
mflo $3
beq $2, $2, TAG53
TAG53:
div $3, $3
lui $2, 4
bne $2, $3, TAG54
lw $4, -6561($3)
TAG54:
addi $4, $4, 3
mthi $4
lbu $1, 0($4)
bne $4, $4, TAG55
TAG55:
lw $4, 0($1)
xori $4, $4, 2
or $2, $4, $1
lh $4, 0($4)
TAG56:
lui $1, 15
blez $4, TAG57
addiu $4, $4, 9
lh $1, 0($4)
TAG57:
lui $2, 5
sll $0, $0, 0
mthi $2
addiu $3, $1, 5
TAG58:
sll $0, $0, 0
lui $4, 3
sll $0, $0, 0
bne $3, $3, TAG59
TAG59:
subu $3, $4, $4
bgez $3, TAG60
or $1, $4, $3
srl $2, $1, 1
TAG60:
sllv $3, $2, $2
beq $2, $3, TAG61
mthi $2
lui $2, 0
TAG61:
beq $2, $2, TAG62
mflo $2
slti $2, $2, 14
add $3, $2, $2
TAG62:
mfhi $4
div $3, $3
sltiu $3, $3, 3
mthi $3
TAG63:
bltz $3, TAG64
mthi $3
srav $3, $3, $3
andi $3, $3, 5
TAG64:
lui $3, 14
mflo $3
mthi $3
beq $3, $3, TAG65
TAG65:
lb $2, 0($3)
mfhi $4
mfhi $4
mfhi $3
TAG66:
sltiu $2, $3, 10
bltz $2, TAG67
mtlo $3
blez $3, TAG67
TAG67:
sb $2, 0($2)
sltiu $4, $2, 0
lbu $4, 0($2)
sb $4, 0($4)
TAG68:
mfhi $4
sb $4, 0($4)
mfhi $2
sll $3, $4, 5
TAG69:
lui $3, 10
blez $3, TAG70
sll $0, $0, 0
sll $0, $0, 0
TAG70:
bne $3, $3, TAG71
sll $0, $0, 0
sll $0, $0, 0
slti $3, $3, 9
TAG71:
blez $3, TAG72
lw $3, 0($3)
bne $3, $3, TAG72
lb $4, 0($3)
TAG72:
mult $4, $4
sb $4, 0($4)
sb $4, 0($4)
lui $4, 12
TAG73:
bgez $4, TAG74
lui $1, 4
sb $1, 0($1)
mthi $4
TAG74:
blez $1, TAG75
mflo $1
sll $1, $1, 14
addiu $1, $1, 3
TAG75:
xor $4, $1, $1
beq $4, $4, TAG76
divu $4, $1
mfhi $1
TAG76:
mtlo $1
mthi $1
mthi $1
blez $1, TAG77
TAG77:
div $1, $1
lui $3, 13
beq $3, $3, TAG78
mthi $1
TAG78:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
beq $3, $3, TAG79
TAG79:
sltu $1, $1, $1
mtlo $1
lb $2, 0($1)
beq $1, $1, TAG80
TAG80:
mtlo $2
mult $2, $2
mult $2, $2
mult $2, $2
TAG81:
mtlo $2
mflo $1
bne $2, $2, TAG82
sll $3, $1, 5
TAG82:
multu $3, $3
lui $3, 6
beq $3, $3, TAG83
lui $1, 3
TAG83:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
bltz $3, TAG84
TAG84:
lui $4, 14
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
TAG85:
bgez $2, TAG86
slt $3, $2, $2
sw $2, 0($2)
bltz $2, TAG86
TAG86:
sb $3, 0($3)
sw $3, 0($3)
sh $3, 0($3)
bne $3, $3, TAG87
TAG87:
mflo $1
lhu $1, 0($1)
beq $1, $1, TAG88
xori $2, $1, 15
TAG88:
lbu $2, 0($2)
mult $2, $2
srl $1, $2, 6
blez $2, TAG89
TAG89:
lui $3, 13
lui $4, 6
sll $0, $0, 0
mthi $3
TAG90:
bgtz $1, TAG91
lb $2, 0($1)
bne $1, $2, TAG91
lbu $1, 0($2)
TAG91:
slt $4, $1, $1
xori $3, $1, 3
lw $3, 0($1)
lh $2, 0($4)
TAG92:
lui $3, 4
mult $3, $3
sra $2, $3, 14
sra $3, $2, 12
TAG93:
beq $3, $3, TAG94
mtlo $3
mthi $3
mfhi $3
TAG94:
sw $3, 0($3)
xor $2, $3, $3
sllv $1, $2, $2
sb $2, 0($2)
TAG95:
mthi $1
mtlo $1
mfhi $4
srl $3, $4, 0
TAG96:
sh $3, 0($3)
bne $3, $3, TAG97
sb $3, 0($3)
beq $3, $3, TAG97
TAG97:
sw $3, 0($3)
xor $1, $3, $3
mult $3, $1
beq $1, $3, TAG98
TAG98:
add $1, $1, $1
sw $1, 0($1)
addi $3, $1, 5
lui $2, 1
TAG99:
addu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
mult $3, $2
TAG100:
subu $1, $4, $4
lb $2, 0($1)
mflo $1
mtlo $4
TAG101:
lw $1, 0($1)
mfhi $3
beq $1, $1, TAG102
lbu $4, 0($1)
TAG102:
mtlo $4
mult $4, $4
bne $4, $4, TAG103
mfhi $2
TAG103:
beq $2, $2, TAG104
mfhi $3
bgtz $2, TAG104
lui $3, 1
TAG104:
mfhi $2
mtlo $2
mtlo $2
mflo $1
TAG105:
sh $1, 0($1)
slti $4, $1, 2
mflo $2
bne $4, $4, TAG106
TAG106:
sltiu $3, $2, 9
nor $2, $3, $2
sb $2, 0($3)
srl $4, $2, 4
TAG107:
sll $0, $0, 0
beq $4, $4, TAG108
mtlo $4
lui $3, 11
TAG108:
mflo $4
sllv $2, $3, $3
lui $3, 1
mfhi $4
TAG109:
lhu $3, 0($4)
mfhi $3
beq $3, $3, TAG110
nor $4, $4, $4
TAG110:
mfhi $4
lui $4, 1
and $1, $4, $4
bgez $4, TAG111
TAG111:
mthi $1
or $3, $1, $1
sll $0, $0, 0
blez $1, TAG112
TAG112:
lui $3, 2
lui $3, 11
sll $0, $0, 0
sll $3, $3, 10
TAG113:
bltz $3, TAG114
mflo $2
mthi $3
lui $2, 3
TAG114:
sltiu $3, $2, 9
blez $3, TAG115
sh $3, 0($3)
or $1, $2, $2
TAG115:
mthi $1
nor $3, $1, $1
sll $0, $0, 0
beq $1, $3, TAG116
TAG116:
mflo $4
sltu $1, $4, $4
bne $4, $3, TAG117
slti $2, $1, 13
TAG117:
lbu $1, 0($2)
subu $4, $2, $1
lbu $2, 0($2)
or $1, $2, $2
TAG118:
sh $1, 0($1)
mtlo $1
bltz $1, TAG119
lb $3, 0($1)
TAG119:
bltz $3, TAG120
mtlo $3
sra $3, $3, 9
beq $3, $3, TAG120
TAG120:
sw $3, 0($3)
bltz $3, TAG121
sltiu $3, $3, 10
sb $3, 0($3)
TAG121:
and $1, $3, $3
mflo $1
beq $1, $3, TAG122
mfhi $3
TAG122:
blez $3, TAG123
mthi $3
mthi $3
subu $2, $3, $3
TAG123:
lhu $1, 0($2)
lhu $3, 0($2)
subu $2, $1, $2
bltz $1, TAG124
TAG124:
sh $2, -256($2)
lui $4, 1
sh $4, -256($2)
div $2, $4
TAG125:
sll $0, $0, 0
slt $4, $4, $1
bgez $4, TAG126
mfhi $1
TAG126:
addu $1, $1, $1
lui $1, 13
sltiu $2, $1, 15
lui $4, 4
TAG127:
lui $1, 5
sll $0, $0, 0
mfhi $3
mthi $4
TAG128:
ori $4, $3, 4
addiu $2, $3, 11
and $4, $4, $2
bgtz $4, TAG129
TAG129:
lui $2, 12
lhu $2, -256($4)
mflo $1
mflo $4
TAG130:
sltiu $4, $4, 0
srl $2, $4, 2
lui $2, 13
sb $2, 0($4)
TAG131:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG132:
lui $2, 6
bne $1, $1, TAG133
sll $0, $0, 0
bgtz $2, TAG133
TAG133:
sll $0, $0, 0
multu $2, $2
mtlo $1
lui $2, 6
TAG134:
blez $2, TAG135
addiu $1, $2, 6
or $2, $1, $1
bgtz $1, TAG135
TAG135:
sll $4, $2, 7
sll $0, $0, 0
blez $2, TAG136
mtlo $2
TAG136:
ori $1, $4, 15
bgtz $4, TAG137
mflo $1
lw $3, 0($4)
TAG137:
div $3, $3
blez $3, TAG138
mtlo $3
addiu $3, $3, 14
TAG138:
beq $3, $3, TAG139
divu $3, $3
lui $1, 13
mfhi $4
TAG139:
bne $4, $4, TAG140
addu $1, $4, $4
lui $2, 12
mult $4, $1
TAG140:
lui $4, 2
div $4, $4
sll $0, $0, 0
mthi $4
TAG141:
sllv $1, $4, $4
lui $1, 12
mflo $3
srav $4, $4, $1
TAG142:
lui $1, 0
bgez $1, TAG143
mfhi $1
bne $1, $1, TAG143
TAG143:
lui $1, 5
lui $4, 11
blez $1, TAG144
sll $0, $0, 0
TAG144:
divu $4, $4
bltz $4, TAG145
mthi $4
beq $4, $4, TAG145
TAG145:
divu $4, $4
lui $4, 1
sll $0, $0, 0
sll $4, $4, 8
TAG146:
mfhi $3
bne $3, $3, TAG147
mthi $3
mthi $4
TAG147:
blez $3, TAG148
lui $4, 14
sb $3, 0($3)
mtlo $3
TAG148:
mthi $4
lui $3, 15
mtlo $3
addu $1, $4, $3
TAG149:
sll $0, $0, 0
and $3, $1, $2
sll $0, $0, 0
divu $1, $3
TAG150:
lui $2, 10
bne $3, $2, TAG151
sll $0, $0, 0
lui $4, 4
TAG151:
bgtz $4, TAG152
sll $0, $0, 0
sw $4, 0($3)
xor $1, $3, $3
TAG152:
multu $1, $1
bne $1, $1, TAG153
div $1, $1
slti $1, $1, 13
TAG153:
sh $1, 0($1)
xori $3, $1, 2
lui $2, 8
sh $1, 0($1)
TAG154:
mfhi $4
lui $1, 5
bne $4, $1, TAG155
mflo $3
TAG155:
sb $3, 0($3)
mtlo $3
and $2, $3, $3
mtlo $2
TAG156:
lb $3, 0($2)
mthi $2
bltz $2, TAG157
lui $1, 9
TAG157:
bgez $1, TAG158
subu $2, $1, $1
div $2, $1
and $1, $1, $2
TAG158:
mtlo $1
subu $3, $1, $1
beq $3, $1, TAG159
srl $3, $1, 11
TAG159:
multu $3, $3
div $3, $3
bgez $3, TAG160
sh $3, -288($3)
TAG160:
mflo $3
mtlo $3
lb $1, 0($3)
bne $1, $3, TAG161
TAG161:
mflo $1
srav $4, $1, $1
xori $3, $1, 14
mult $4, $4
TAG162:
div $3, $3
sb $3, 0($3)
beq $3, $3, TAG163
addiu $1, $3, 9
TAG163:
lui $3, 3
mflo $4
mflo $2
lb $1, 0($4)
TAG164:
lbu $3, 0($1)
subu $1, $1, $3
srlv $3, $3, $1
mflo $1
TAG165:
bltz $1, TAG166
addu $4, $1, $1
lui $1, 1
sll $0, $0, 0
TAG166:
sllv $3, $1, $1
mtlo $1
mfhi $1
sb $3, 0($1)
TAG167:
bne $1, $1, TAG168
xori $1, $1, 13
mflo $2
mtlo $2
TAG168:
xori $4, $2, 3
bgez $4, TAG169
mthi $2
sltiu $4, $2, 15
TAG169:
divu $4, $4
bgtz $4, TAG170
sll $0, $0, 0
divu $4, $4
TAG170:
ori $1, $4, 8
lui $2, 5
lui $1, 4
addiu $2, $1, 12
TAG171:
mfhi $4
srlv $3, $2, $2
div $3, $2
sw $3, 0($4)
TAG172:
beq $3, $3, TAG173
sb $3, 0($3)
mult $3, $3
bgtz $3, TAG173
TAG173:
mfhi $4
multu $4, $4
mtlo $3
lb $4, 0($4)
TAG174:
divu $4, $4
mfhi $4
mfhi $3
lui $1, 15
TAG175:
sll $0, $0, 0
sll $4, $1, 9
sltiu $3, $1, 12
sll $0, $0, 0
TAG176:
add $1, $3, $3
mthi $3
sb $3, 0($1)
bgtz $3, TAG177
TAG177:
multu $1, $1
lui $1, 2
sltu $3, $1, $1
mthi $1
TAG178:
mfhi $2
sll $0, $0, 0
mflo $2
mult $2, $2
TAG179:
mtlo $2
mflo $3
multu $2, $2
sb $3, 0($3)
TAG180:
andi $2, $3, 3
lhu $3, 0($3)
lui $2, 12
bgtz $3, TAG181
TAG181:
addu $1, $2, $2
mtlo $2
blez $1, TAG182
mtlo $1
TAG182:
srav $1, $1, $1
mtlo $1
or $2, $1, $1
lui $1, 6
TAG183:
mflo $4
srlv $3, $4, $1
bne $1, $1, TAG184
andi $3, $3, 15
TAG184:
and $4, $3, $3
lui $1, 2
subu $1, $4, $4
bgez $1, TAG185
TAG185:
mthi $1
lui $4, 13
bne $4, $1, TAG186
sw $4, 0($1)
TAG186:
lui $3, 7
bltz $4, TAG187
sltu $4, $3, $3
mult $4, $4
TAG187:
sw $4, 0($4)
beq $4, $4, TAG188
srlv $2, $4, $4
srav $4, $4, $2
TAG188:
lhu $2, 0($4)
bne $2, $4, TAG189
multu $2, $4
mult $4, $2
TAG189:
bne $2, $2, TAG190
sb $2, 0($2)
lui $2, 9
divu $2, $2
TAG190:
bltz $2, TAG191
slti $1, $2, 1
lw $4, 0($1)
bltz $1, TAG191
TAG191:
lhu $3, 0($4)
sltu $4, $4, $4
mflo $3
add $4, $4, $4
TAG192:
lui $3, 6
lui $3, 10
slt $4, $4, $3
lb $4, 0($4)
TAG193:
mtlo $4
mfhi $1
mtlo $4
lui $1, 6
TAG194:
bne $1, $1, TAG195
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG195
TAG195:
addu $1, $1, $1
xor $1, $1, $1
srav $3, $1, $1
lui $3, 6
TAG196:
mult $3, $3
blez $3, TAG197
lui $4, 1
lui $1, 1
TAG197:
mfhi $4
mflo $2
multu $4, $4
sll $0, $0, 0
TAG198:
lui $3, 10
sll $0, $0, 0
mfhi $2
multu $1, $2
TAG199:
lui $1, 7
lhu $2, 0($2)
lui $2, 7
mtlo $1
TAG200:
or $1, $2, $2
mfhi $1
xor $2, $1, $1
lbu $2, 0($1)
TAG201:
lb $1, 0($2)
lui $4, 11
mult $1, $2
mfhi $4
TAG202:
bgtz $4, TAG203
lw $1, 0($4)
mult $1, $1
mthi $4
TAG203:
mtlo $1
xor $1, $1, $1
sb $1, 0($1)
mthi $1
TAG204:
lhu $3, 0($1)
lbu $1, 0($1)
lui $4, 2
mult $1, $1
TAG205:
mflo $4
lui $1, 15
lui $1, 1
mthi $1
TAG206:
sll $0, $0, 0
bltz $1, TAG207
mflo $2
mtlo $1
TAG207:
mtlo $2
beq $2, $2, TAG208
sb $2, 0($2)
lui $4, 14
TAG208:
srl $3, $4, 11
lbu $3, 0($3)
andi $4, $4, 9
sll $2, $4, 8
TAG209:
andi $1, $2, 8
nor $2, $1, $1
sw $2, 1($2)
lui $1, 9
TAG210:
bgez $1, TAG211
sll $0, $0, 0
mtlo $4
nor $1, $1, $1
TAG211:
srl $1, $1, 8
subu $4, $1, $1
div $4, $1
mtlo $1
TAG212:
sllv $4, $4, $4
lb $3, 0($4)
mult $3, $3
mflo $2
TAG213:
slti $1, $2, 13
lbu $4, 0($1)
sb $2, 0($1)
mult $1, $4
TAG214:
lui $4, 9
sll $0, $0, 0
bgez $4, TAG215
mfhi $3
TAG215:
mfhi $4
multu $3, $4
sll $2, $4, 6
mfhi $2
TAG216:
beq $2, $2, TAG217
andi $3, $2, 15
divu $2, $3
slt $3, $3, $2
TAG217:
beq $3, $3, TAG218
mfhi $4
beq $3, $4, TAG218
lh $2, 0($3)
TAG218:
multu $2, $2
mtlo $2
mthi $2
mthi $2
TAG219:
sh $2, 0($2)
mflo $3
blez $2, TAG220
addu $1, $3, $2
TAG220:
mflo $4
srl $1, $1, 3
addiu $4, $4, 6
bgez $4, TAG221
TAG221:
sh $4, 0($4)
mflo $2
lh $4, 0($4)
lb $3, 0($4)
TAG222:
blez $3, TAG223
srlv $3, $3, $3
srl $2, $3, 8
subu $4, $3, $2
TAG223:
mfhi $2
sh $4, 0($2)
lui $4, 11
divu $4, $4
TAG224:
bne $4, $4, TAG225
lui $4, 9
addu $1, $4, $4
mult $4, $4
TAG225:
xor $4, $1, $1
beq $4, $1, TAG226
mfhi $2
lw $3, 0($4)
TAG226:
blez $3, TAG227
divu $3, $3
blez $3, TAG227
sltiu $1, $3, 15
TAG227:
mthi $1
sra $1, $1, 3
sll $0, $0, 0
blez $1, TAG228
TAG228:
mflo $2
sll $0, $0, 0
lb $2, 0($2)
blez $2, TAG229
TAG229:
lui $4, 0
sub $4, $4, $2
slti $2, $4, 2
nor $4, $2, $2
TAG230:
sw $4, 2($4)
bgez $4, TAG231
divu $4, $4
sh $4, 2($4)
TAG231:
bgez $4, TAG232
mult $4, $4
sh $4, 2($4)
mflo $4
TAG232:
lui $3, 15
sll $0, $0, 0
bne $1, $4, TAG233
sltu $3, $4, $3
TAG233:
div $3, $3
bne $3, $3, TAG234
addu $4, $3, $3
sll $3, $3, 12
TAG234:
mflo $1
beq $3, $1, TAG235
ori $1, $1, 13
lb $1, 0($1)
TAG235:
lbu $2, 0($1)
divu $2, $2
mfhi $3
sw $1, -254($2)
TAG236:
lui $1, 13
slt $3, $3, $1
multu $1, $3
sll $4, $1, 6
TAG237:
mfhi $3
mult $4, $3
ori $4, $4, 9
div $4, $4
TAG238:
blez $4, TAG239
andi $3, $4, 9
blez $4, TAG239
sb $3, 0($3)
TAG239:
slti $2, $3, 11
divu $3, $3
div $2, $2
bltz $2, TAG240
TAG240:
addiu $2, $2, 0
sb $2, 0($2)
divu $2, $2
blez $2, TAG241
TAG241:
mfhi $4
divu $4, $2
lui $2, 7
bne $2, $4, TAG242
TAG242:
mthi $2
lui $4, 15
lui $1, 3
multu $1, $1
TAG243:
bgez $1, TAG244
sll $0, $0, 0
sra $4, $3, 11
mfhi $3
TAG244:
lui $3, 14
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
TAG245:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
mthi $1
TAG246:
subu $4, $4, $4
lui $1, 8
mthi $1
sb $4, 0($4)
TAG247:
bne $1, $1, TAG248
sll $0, $0, 0
mthi $4
bne $1, $4, TAG248
TAG248:
mult $4, $4
sllv $1, $4, $4
mfhi $1
mult $4, $1
TAG249:
bgtz $1, TAG250
lui $3, 5
mult $1, $1
bne $1, $3, TAG250
TAG250:
sll $0, $0, 0
bgez $2, TAG251
mfhi $2
bne $2, $2, TAG251
TAG251:
mtlo $2
mfhi $1
lbu $2, 0($1)
lui $1, 15
TAG252:
multu $1, $1
beq $1, $1, TAG253
nor $1, $1, $1
lhu $2, 0($1)
TAG253:
mthi $2
lhu $4, 0($2)
sub $4, $2, $2
srl $3, $4, 15
TAG254:
addi $1, $3, 9
sw $3, 0($3)
bgtz $3, TAG255
sra $3, $1, 2
TAG255:
mflo $3
mflo $3
mfhi $4
sra $4, $3, 4
TAG256:
multu $4, $4
sub $4, $4, $4
bgez $4, TAG257
sltu $1, $4, $4
TAG257:
sh $1, 0($1)
addu $2, $1, $1
lb $1, 0($1)
bne $2, $2, TAG258
TAG258:
sltiu $1, $1, 9
sb $1, 0($1)
lui $2, 6
sb $1, 0($1)
TAG259:
beq $2, $2, TAG260
and $2, $2, $2
lbu $3, 0($2)
lui $4, 7
TAG260:
lb $1, 0($4)
slti $4, $1, 13
ori $2, $1, 11
addu $2, $4, $4
TAG261:
lui $3, 13
multu $3, $3
srlv $2, $3, $2
sra $3, $2, 15
TAG262:
bgez $3, TAG263
sh $3, 0($3)
lb $3, 0($3)
lui $2, 10
TAG263:
mfhi $1
andi $1, $1, 10
divu $1, $2
mult $1, $1
TAG264:
andi $2, $1, 1
lh $4, 0($2)
mfhi $4
lui $3, 9
TAG265:
multu $3, $3
addu $4, $3, $3
blez $4, TAG266
xori $2, $3, 2
TAG266:
sll $0, $0, 0
bgtz $2, TAG267
mfhi $2
blez $2, TAG267
TAG267:
addu $1, $2, $2
bgez $1, TAG268
subu $4, $2, $1
or $2, $1, $4
TAG268:
sll $1, $2, 15
mflo $3
mult $3, $2
divu $2, $2
TAG269:
mtlo $3
lui $4, 3
srl $1, $3, 3
lui $4, 9
TAG270:
mtlo $4
bgez $4, TAG271
srav $1, $4, $4
lb $4, 0($4)
TAG271:
divu $4, $4
sll $0, $0, 0
bgez $4, TAG272
slt $4, $4, $4
TAG272:
ori $3, $4, 0
andi $1, $4, 14
slti $3, $4, 13
mthi $3
TAG273:
mtlo $3
lbu $1, 0($3)
sllv $4, $3, $1
divu $1, $1
TAG274:
sh $4, 0($4)
xor $3, $4, $4
or $2, $3, $4
addiu $2, $2, 1
TAG275:
bne $2, $2, TAG276
sb $2, 0($2)
blez $2, TAG276
lui $1, 12
TAG276:
slti $1, $1, 1
beq $1, $1, TAG277
xori $3, $1, 2
beq $3, $3, TAG277
TAG277:
lb $2, 0($3)
and $4, $3, $3
div $2, $4
mtlo $2
TAG278:
mflo $2
sh $2, 0($2)
srl $3, $4, 9
mult $3, $4
TAG279:
sb $3, 0($3)
bgez $3, TAG280
mfhi $1
sb $1, 0($3)
TAG280:
bgez $1, TAG281
lui $1, 6
sll $4, $1, 6
div $4, $4
TAG281:
beq $4, $4, TAG282
lui $4, 14
bltz $4, TAG282
ori $1, $4, 11
TAG282:
mthi $1
blez $1, TAG283
andi $4, $1, 15
and $4, $1, $1
TAG283:
bltz $4, TAG284
sll $0, $0, 0
bltz $4, TAG284
xori $4, $4, 13
TAG284:
bne $4, $4, TAG285
sll $0, $0, 0
bne $4, $4, TAG285
mfhi $2
TAG285:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
lui $1, 0
TAG286:
mthi $1
multu $1, $1
lui $3, 9
bltz $1, TAG287
TAG287:
lui $3, 4
sll $0, $0, 0
sltiu $1, $3, 7
sll $0, $0, 0
TAG288:
multu $1, $1
mthi $1
srlv $3, $1, $1
mult $1, $3
TAG289:
mtlo $3
sh $3, 0($3)
lh $4, 0($3)
xori $2, $3, 9
TAG290:
lb $4, 0($2)
mflo $2
multu $2, $2
sb $4, 0($4)
TAG291:
lbu $3, 0($2)
lui $3, 11
multu $3, $3
lui $2, 8
TAG292:
beq $2, $2, TAG293
multu $2, $2
mfhi $3
beq $2, $3, TAG293
TAG293:
or $2, $3, $3
xori $3, $3, 13
mtlo $3
mult $3, $3
TAG294:
bgtz $3, TAG295
mthi $3
lhu $4, 0($3)
addiu $2, $3, 7
TAG295:
bltz $2, TAG296
mfhi $4
bne $4, $2, TAG296
mfhi $2
TAG296:
sltiu $1, $2, 3
divu $2, $2
mult $2, $1
sll $0, $0, 0
TAG297:
blez $1, TAG298
mflo $2
srlv $1, $2, $1
lh $1, 0($1)
TAG298:
mfhi $2
mtlo $2
mthi $1
lbu $2, 0($2)
TAG299:
mflo $4
bgez $2, TAG300
mult $2, $4
beq $4, $4, TAG300
TAG300:
mult $4, $4
addu $4, $4, $4
ori $2, $4, 13
srlv $4, $4, $2
TAG301:
bltz $4, TAG302
lui $4, 1
blez $4, TAG302
mthi $4
TAG302:
mtlo $4
mflo $2
sll $0, $0, 0
addiu $3, $2, 6
TAG303:
divu $3, $3
mult $3, $3
sltiu $3, $3, 2
mthi $3
TAG304:
mtlo $3
mtlo $3
lui $2, 0
lui $4, 11
TAG305:
div $4, $4
sll $0, $0, 0
mtlo $2
mflo $4
TAG306:
lui $4, 6
blez $4, TAG307
mfhi $4
bgez $4, TAG307
TAG307:
mfhi $1
mfhi $4
mthi $4
mflo $1
TAG308:
lhu $2, 0($1)
sb $1, 0($1)
xori $1, $2, 15
lb $3, 0($1)
TAG309:
mfhi $2
divu $2, $3
lbu $1, 0($3)
mfhi $1
TAG310:
mtlo $1
mthi $1
bltz $1, TAG311
lui $1, 11
TAG311:
mfhi $1
ori $4, $1, 7
mult $1, $1
sb $1, 0($4)
TAG312:
multu $4, $4
lui $4, 10
mthi $4
mflo $2
TAG313:
mflo $1
div $1, $1
sb $2, 0($1)
mfhi $4
TAG314:
blez $4, TAG315
mult $4, $4
mflo $2
bgtz $4, TAG315
TAG315:
subu $3, $2, $2
srlv $2, $2, $2
lui $1, 1
beq $3, $3, TAG316
TAG316:
mfhi $3
lbu $4, 0($3)
lui $2, 1
bgtz $4, TAG317
TAG317:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
lbu $3, 0($3)
TAG318:
sw $3, 0($3)
mflo $2
mthi $2
sw $3, 0($3)
TAG319:
mtlo $2
subu $3, $2, $2
bne $2, $2, TAG320
mtlo $3
TAG320:
mtlo $3
beq $3, $3, TAG321
mthi $3
mtlo $3
TAG321:
multu $3, $3
lui $1, 5
sltu $3, $3, $1
beq $1, $3, TAG322
TAG322:
mult $3, $3
mthi $3
sb $3, 0($3)
beq $3, $3, TAG323
TAG323:
slti $2, $3, 15
lbu $2, 0($3)
lui $1, 8
beq $1, $3, TAG324
TAG324:
div $1, $1
sll $0, $0, 0
blez $4, TAG325
lbu $1, 0($4)
TAG325:
lw $3, 0($1)
mflo $4
multu $3, $1
xor $3, $3, $3
TAG326:
addi $2, $3, 15
sb $3, 0($2)
mfhi $3
multu $3, $2
TAG327:
mthi $3
xori $4, $3, 11
slt $4, $3, $4
subu $3, $4, $4
TAG328:
bgtz $3, TAG329
sb $3, 0($3)
mthi $3
sltu $2, $3, $3
TAG329:
mthi $2
srlv $1, $2, $2
mfhi $1
lui $3, 1
TAG330:
lui $3, 15
lui $1, 4
lui $3, 9
sll $0, $0, 0
TAG331:
sll $0, $0, 0
beq $3, $3, TAG332
addu $2, $3, $3
lhu $1, 0($2)
TAG332:
lui $2, 4
multu $2, $2
sll $0, $0, 0
lui $3, 9
TAG333:
bne $3, $3, TAG334
sll $0, $0, 0
beq $3, $3, TAG334
lui $1, 4
TAG334:
bne $1, $1, TAG335
lui $4, 12
mflo $4
bltz $4, TAG335
TAG335:
sw $4, 0($4)
bne $4, $4, TAG336
multu $4, $4
sw $4, 0($4)
TAG336:
bgez $4, TAG337
lb $2, 0($4)
mult $2, $2
bne $4, $2, TAG337
TAG337:
lb $1, 0($2)
beq $1, $1, TAG338
lhu $4, 0($2)
bne $1, $4, TAG338
TAG338:
mflo $3
mtlo $4
mfhi $3
sw $3, 0($3)
TAG339:
mfhi $4
mfhi $2
mult $4, $3
lui $4, 3
TAG340:
addu $4, $4, $4
sll $0, $0, 0
bgtz $4, TAG341
subu $4, $4, $4
TAG341:
lui $2, 8
sb $4, 0($4)
sll $0, $0, 0
bgtz $2, TAG342
TAG342:
mult $2, $2
srav $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG343:
mflo $1
multu $1, $2
mflo $3
nor $1, $1, $1
TAG344:
srlv $1, $1, $1
beq $1, $1, TAG345
mtlo $1
sw $1, 0($1)
TAG345:
mflo $3
andi $4, $3, 10
multu $1, $4
bne $1, $3, TAG346
TAG346:
mthi $4
lui $2, 7
lui $4, 15
addiu $1, $2, 1
TAG347:
bgtz $1, TAG348
lui $4, 6
mfhi $2
andi $3, $4, 15
TAG348:
bgtz $3, TAG349
sb $3, 0($3)
lh $2, 0($3)
mflo $2
TAG349:
mtlo $2
mtlo $2
bne $2, $2, TAG350
mthi $2
TAG350:
mthi $2
or $3, $2, $2
sll $0, $0, 0
lui $1, 6
TAG351:
sll $0, $0, 0
bne $1, $1, TAG352
lui $2, 1
div $2, $1
TAG352:
sll $0, $0, 0
bgtz $3, TAG353
lui $4, 4
addu $3, $4, $2
TAG353:
srlv $1, $3, $3
slt $4, $1, $1
blez $4, TAG354
lui $2, 14
TAG354:
sltiu $1, $2, 5
multu $2, $2
lui $3, 13
srav $1, $3, $2
TAG355:
divu $1, $1
beq $1, $1, TAG356
sll $0, $0, 0
sltiu $4, $1, 7
TAG356:
mflo $2
nor $4, $2, $4
beq $2, $4, TAG357
lui $3, 0
TAG357:
bgtz $3, TAG358
lui $4, 4
beq $3, $4, TAG358
addu $4, $4, $3
TAG358:
mfhi $1
slti $4, $1, 4
addiu $1, $4, 12
mfhi $1
TAG359:
subu $1, $1, $1
xori $4, $1, 13
mult $1, $1
addiu $3, $1, 15
TAG360:
lui $4, 8
bne $4, $3, TAG361
addiu $1, $4, 11
beq $4, $1, TAG361
TAG361:
sll $2, $1, 9
sll $0, $0, 0
beq $2, $1, TAG362
sll $0, $0, 0
TAG362:
sll $0, $0, 0
bgtz $2, TAG363
mflo $3
xor $2, $3, $2
TAG363:
beq $2, $2, TAG364
lui $3, 15
andi $4, $3, 13
bne $2, $3, TAG364
TAG364:
div $4, $4
mfhi $4
sb $4, 0($4)
bgez $4, TAG365
TAG365:
mtlo $4
mthi $4
lui $4, 6
mfhi $4
TAG366:
bne $4, $4, TAG367
multu $4, $4
sra $2, $4, 3
multu $2, $2
TAG367:
mthi $2
sh $2, 0($2)
multu $2, $2
mflo $2
TAG368:
multu $2, $2
lui $1, 0
sw $1, 0($1)
mflo $4
TAG369:
mult $4, $4
multu $4, $4
mthi $4
mtlo $4
TAG370:
sh $4, 0($4)
bne $4, $4, TAG371
lbu $2, 0($4)
beq $4, $2, TAG371
TAG371:
multu $2, $2
srl $3, $2, 10
multu $3, $3
mtlo $2
TAG372:
lb $3, 0($3)
sb $3, 0($3)
multu $3, $3
lbu $2, 0($3)
TAG373:
multu $2, $2
bgez $2, TAG374
sra $1, $2, 11
sb $1, 0($1)
TAG374:
sb $1, 0($1)
mtlo $1
sltiu $3, $1, 2
lui $4, 14
TAG375:
sll $0, $0, 0
multu $4, $4
sb $1, 0($1)
beq $1, $1, TAG376
TAG376:
mthi $1
mthi $1
sll $1, $1, 13
mfhi $1
TAG377:
mfhi $3
xori $3, $1, 6
mfhi $3
lbu $2, 0($3)
TAG378:
lui $4, 8
mult $4, $2
multu $2, $2
bltz $2, TAG379
TAG379:
lui $4, 9
sll $2, $4, 15
xori $4, $2, 2
lui $4, 10
TAG380:
mult $4, $4
mthi $4
mflo $1
lb $1, 0($1)
TAG381:
mtlo $1
mfhi $3
xori $2, $3, 2
sll $0, $0, 0
TAG382:
lui $1, 9
lui $1, 9
mfhi $1
div $1, $1
TAG383:
div $1, $1
mfhi $2
lw $3, 0($2)
bltz $2, TAG384
TAG384:
lui $3, 6
sll $0, $0, 0
mflo $2
mtlo $3
TAG385:
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
divu $1, $1
TAG386:
andi $1, $1, 10
beq $1, $1, TAG387
lui $2, 7
mflo $3
TAG387:
mfhi $3
lh $3, 0($3)
slt $4, $3, $3
beq $3, $3, TAG388
TAG388:
add $3, $4, $4
sh $3, 0($4)
blez $4, TAG389
mfhi $3
TAG389:
mult $3, $3
sltiu $4, $3, 2
lb $3, 0($3)
sw $4, 0($3)
TAG390:
mflo $1
mtlo $3
sw $3, 0($1)
mthi $1
TAG391:
beq $1, $1, TAG392
mthi $1
lui $3, 9
bgez $1, TAG392
TAG392:
lui $2, 3
mfhi $2
mthi $2
mthi $2
TAG393:
lb $3, 0($2)
andi $1, $2, 5
mtlo $1
bne $3, $3, TAG394
TAG394:
lui $1, 13
divu $1, $1
addu $4, $1, $1
mthi $1
TAG395:
div $4, $4
bne $4, $4, TAG396
lui $4, 0
bne $4, $4, TAG396
TAG396:
lw $4, 0($4)
blez $4, TAG397
lui $3, 11
mflo $4
TAG397:
bne $4, $4, TAG398
mthi $4
addiu $4, $4, 5
lui $4, 14
TAG398:
beq $4, $4, TAG399
mtlo $4
mtlo $4
sllv $1, $4, $4
TAG399:
mthi $1
sll $0, $0, 0
mult $1, $1
xor $4, $1, $1
TAG400:
multu $4, $4
bgez $4, TAG401
sb $4, 0($4)
lui $4, 11
TAG401:
mflo $3
xori $2, $4, 15
bne $3, $4, TAG402
mult $4, $3
TAG402:
sb $2, 0($2)
bltz $2, TAG403
mflo $2
lui $2, 2
TAG403:
sllv $4, $2, $2
sll $2, $2, 15
blez $4, TAG404
xori $1, $2, 8
TAG404:
mthi $1
blez $1, TAG405
sb $1, 0($1)
lui $2, 5
TAG405:
mfhi $1
bgez $1, TAG406
sh $1, 0($1)
lui $3, 8
TAG406:
bltz $3, TAG407
mthi $3
sb $3, 0($3)
mflo $4
TAG407:
lhu $4, 0($4)
mult $4, $4
lui $3, 15
sll $2, $4, 2
TAG408:
lui $3, 6
mtlo $2
div $2, $3
mult $3, $3
TAG409:
subu $2, $3, $3
bgtz $2, TAG410
srl $3, $2, 11
mthi $3
TAG410:
bgtz $3, TAG411
mtlo $3
sh $3, 0($3)
lui $4, 7
TAG411:
mfhi $4
mthi $4
bne $4, $4, TAG412
mult $4, $4
TAG412:
mtlo $4
sub $4, $4, $4
mtlo $4
lui $4, 2
TAG413:
sll $0, $0, 0
sb $4, 0($1)
lb $3, 0($1)
bgtz $1, TAG414
TAG414:
mult $3, $3
lb $4, 0($3)
beq $4, $4, TAG415
lui $2, 8
TAG415:
lui $3, 13
sll $0, $0, 0
xor $1, $3, $2
lui $3, 3
TAG416:
bne $3, $3, TAG417
mflo $4
mult $4, $4
srlv $4, $4, $3
TAG417:
bltz $4, TAG418
sh $4, 0($4)
lui $2, 5
sltiu $2, $4, 7
TAG418:
beq $2, $2, TAG419
sb $2, 0($2)
lui $1, 12
nor $1, $1, $1
TAG419:
multu $1, $1
mflo $4
mthi $4
mult $4, $4
TAG420:
sb $4, 0($4)
mthi $4
slti $2, $4, 5
subu $2, $2, $2
TAG421:
sw $2, 0($2)
addi $3, $2, 11
sllv $4, $3, $3
slti $1, $3, 9
TAG422:
mfhi $3
blez $1, TAG423
addiu $4, $1, 11
bgtz $3, TAG423
TAG423:
mflo $3
lh $3, 0($3)
addiu $2, $3, 12
sll $1, $3, 5
TAG424:
blez $1, TAG425
lb $3, 0($1)
or $2, $3, $3
mflo $3
TAG425:
mflo $4
bgez $4, TAG426
subu $4, $3, $3
divu $3, $4
TAG426:
mflo $3
mflo $4
sb $4, 0($3)
blez $3, TAG427
TAG427:
lui $3, 8
lui $4, 9
bne $4, $3, TAG428
sltu $1, $3, $3
TAG428:
add $4, $1, $1
mtlo $4
ori $1, $1, 15
beq $4, $1, TAG429
TAG429:
lb $2, 0($1)
ori $1, $2, 7
lb $1, 0($1)
addu $1, $1, $1
TAG430:
addu $2, $1, $1
mfhi $4
mflo $4
and $2, $4, $1
TAG431:
mfhi $1
bltz $2, TAG432
lb $4, 0($2)
beq $2, $2, TAG432
TAG432:
lw $3, 0($4)
lhu $3, 0($4)
ori $2, $3, 7
addu $2, $2, $4
TAG433:
mtlo $2
ori $1, $2, 9
mult $2, $1
sll $2, $1, 12
TAG434:
and $4, $2, $2
mflo $1
lui $3, 14
addiu $2, $2, 14
TAG435:
div $2, $2
sll $0, $0, 0
ori $3, $2, 10
slti $1, $3, 1
TAG436:
multu $1, $1
ori $1, $1, 4
div $1, $1
mflo $3
TAG437:
lb $1, 0($3)
mtlo $1
addi $2, $1, 1
lui $2, 1
TAG438:
beq $2, $2, TAG439
mfhi $2
multu $2, $2
div $2, $2
TAG439:
mflo $4
lb $3, 0($4)
bgtz $3, TAG440
lb $4, 0($4)
TAG440:
mult $4, $4
mflo $3
bne $4, $4, TAG441
lui $4, 0
TAG441:
lw $4, 0($4)
lh $1, 0($4)
mfhi $4
nor $4, $1, $4
TAG442:
mtlo $4
lui $4, 4
slti $2, $4, 13
mtlo $4
TAG443:
multu $2, $2
lui $4, 7
lui $3, 5
mfhi $3
TAG444:
lui $3, 7
mfhi $1
mfhi $2
sw $3, 0($1)
TAG445:
mtlo $2
multu $2, $2
addu $4, $2, $2
addu $3, $4, $4
TAG446:
sw $3, 0($3)
mfhi $4
lh $4, 0($4)
or $1, $3, $4
TAG447:
mthi $1
lui $4, 3
mult $1, $1
mfhi $3
TAG448:
lw $3, 0($3)
mfhi $4
bne $3, $3, TAG449
lbu $4, 0($4)
TAG449:
beq $4, $4, TAG450
lui $4, 11
or $3, $4, $4
sb $3, 0($3)
TAG450:
beq $3, $3, TAG451
sb $3, 0($3)
lb $2, 0($3)
bne $2, $2, TAG451
TAG451:
lh $2, 0($2)
lui $4, 10
mtlo $2
mtlo $2
TAG452:
blez $4, TAG453
xor $3, $4, $4
mthi $3
andi $2, $3, 5
TAG453:
mthi $2
bne $2, $2, TAG454
mtlo $2
lw $2, 0($2)
TAG454:
bgtz $2, TAG455
sw $2, 0($2)
beq $2, $2, TAG455
andi $4, $2, 7
TAG455:
beq $4, $4, TAG456
sllv $2, $4, $4
lhu $4, 0($2)
lui $3, 0
TAG456:
slti $3, $3, 6
multu $3, $3
bgtz $3, TAG457
sllv $2, $3, $3
TAG457:
mtlo $2
mult $2, $2
mfhi $2
bne $2, $2, TAG458
TAG458:
mult $2, $2
xori $1, $2, 0
sb $2, 0($2)
mtlo $1
TAG459:
mtlo $1
bgtz $1, TAG460
lhu $2, 0($1)
lh $3, 0($1)
TAG460:
lui $3, 12
sra $4, $3, 7
lui $1, 5
sll $0, $0, 0
TAG461:
sb $4, -6144($4)
xori $4, $4, 2
mthi $4
lhu $4, -6146($4)
TAG462:
beq $4, $4, TAG463
mflo $3
addi $4, $4, 15
lhu $4, 0($4)
TAG463:
mtlo $4
bgtz $4, TAG464
lw $3, 0($4)
sh $4, 0($4)
TAG464:
lui $3, 14
sll $0, $0, 0
nor $2, $4, $3
sh $4, 0($4)
TAG465:
or $4, $2, $2
lui $1, 8
or $4, $4, $1
mfhi $1
TAG466:
multu $1, $1
lui $3, 10
mthi $1
mfhi $2
TAG467:
bgez $2, TAG468
lw $1, -6146($2)
srl $1, $2, 2
mflo $2
TAG468:
sh $2, -6146($2)
mfhi $1
lhu $4, -6146($2)
bgtz $2, TAG469
TAG469:
slt $1, $4, $4
mtlo $1
mfhi $4
addi $2, $1, 15
TAG470:
mthi $2
beq $2, $2, TAG471
subu $4, $2, $2
mflo $3
TAG471:
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG472
nor $1, $3, $3
TAG472:
multu $1, $1
bne $1, $1, TAG473
sll $0, $0, 0
sra $1, $1, 11
TAG473:
mflo $3
lui $2, 5
sll $0, $0, 0
lui $3, 11
TAG474:
bltz $3, TAG475
sltu $2, $3, $3
mthi $3
beq $3, $2, TAG475
TAG475:
mflo $2
mfhi $2
mult $2, $2
blez $2, TAG476
TAG476:
addiu $2, $2, 11
lui $4, 12
div $4, $2
lui $1, 4
TAG477:
div $1, $1
mthi $1
bgez $1, TAG478
mflo $4
TAG478:
mthi $4
sb $4, 0($4)
lbu $1, 0($4)
lbu $3, 0($1)
TAG479:
bgtz $3, TAG480
lb $1, 0($3)
lb $3, 0($3)
mthi $1
TAG480:
bgez $3, TAG481
mthi $3
blez $3, TAG481
div $3, $3
TAG481:
bgez $3, TAG482
mfhi $4
mthi $4
add $1, $4, $4
TAG482:
lui $4, 3
divu $1, $4
subu $3, $4, $1
beq $4, $4, TAG483
TAG483:
multu $3, $3
sll $0, $0, 0
lui $3, 12
bltz $3, TAG484
TAG484:
lui $4, 8
xori $3, $4, 13
mthi $3
sll $0, $0, 0
TAG485:
lui $1, 3
blez $3, TAG486
mult $3, $3
mfhi $4
TAG486:
addiu $1, $4, 6
mtlo $4
lb $3, 0($4)
mfhi $3
TAG487:
mthi $3
div $3, $3
mfhi $4
lui $3, 11
TAG488:
sll $0, $0, 0
blez $2, TAG489
slt $3, $3, $3
mult $3, $3
TAG489:
nor $1, $3, $3
blez $1, TAG490
sll $3, $3, 9
divu $3, $1
TAG490:
sra $3, $3, 10
add $1, $3, $3
mthi $1
sra $3, $3, 2
TAG491:
bne $3, $3, TAG492
mfhi $1
lui $2, 8
sll $0, $0, 0
TAG492:
multu $4, $4
bltz $4, TAG493
mtlo $4
bne $4, $4, TAG493
TAG493:
addu $3, $4, $4
lui $1, 7
lhu $1, 0($3)
lui $4, 0
TAG494:
sb $4, 0($4)
lui $1, 1
bgtz $1, TAG495
slt $3, $4, $1
TAG495:
mult $3, $3
mfhi $1
addiu $2, $3, 12
lui $1, 13
TAG496:
mflo $3
mthi $1
sra $1, $3, 6
mfhi $1
TAG497:
mflo $3
addiu $3, $3, 9
sll $0, $0, 0
addu $4, $1, $1
TAG498:
sltu $4, $4, $4
sh $4, 0($4)
sllv $1, $4, $4
srl $3, $4, 11
TAG499:
mflo $3
sltu $3, $3, $3
bgez $3, TAG500
lw $3, 0($3)
TAG500:
bltz $3, TAG501
subu $3, $3, $3
lui $3, 0
sb $3, 0($3)
TAG501:
lui $3, 1
srl $3, $3, 5
lui $4, 5
mfhi $4
TAG502:
lui $1, 6
lui $1, 8
srl $1, $1, 5
andi $2, $1, 4
TAG503:
bgtz $2, TAG504
mthi $2
mult $2, $2
srl $1, $2, 6
TAG504:
lhu $2, 0($1)
bne $2, $2, TAG505
mult $2, $2
bne $1, $1, TAG505
TAG505:
lw $4, 0($2)
lh $3, 0($2)
mflo $4
sh $4, 0($3)
TAG506:
lui $2, 5
beq $2, $2, TAG507
mthi $2
bgtz $4, TAG507
TAG507:
mflo $3
sll $0, $0, 0
mfhi $4
mthi $3
TAG508:
bgez $4, TAG509
mtlo $4
mthi $4
mfhi $4
TAG509:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 15
xor $4, $4, $4
TAG510:
nor $1, $4, $4
bne $1, $1, TAG511
xori $4, $1, 4
lui $1, 14
TAG511:
lui $4, 6
addu $4, $1, $1
bne $4, $1, TAG512
lui $4, 8
TAG512:
sll $0, $0, 0
beq $4, $4, TAG513
mflo $1
lui $4, 6
TAG513:
mfhi $3
xor $4, $4, $4
blez $4, TAG514
sltiu $2, $4, 5
TAG514:
multu $2, $2
bgez $2, TAG515
addu $4, $2, $2
srlv $2, $4, $2
TAG515:
mthi $2
mflo $2
lui $3, 12
or $3, $2, $2
TAG516:
bgtz $3, TAG517
lb $1, 0($3)
mflo $2
lui $4, 5
TAG517:
nor $4, $4, $4
multu $4, $4
xori $3, $4, 7
div $3, $3
TAG518:
beq $3, $3, TAG519
sll $4, $3, 12
beq $4, $3, TAG519
slt $2, $4, $3
TAG519:
lui $2, 11
xor $1, $2, $2
sh $1, 0($1)
bltz $1, TAG520
TAG520:
sb $1, 0($1)
lhu $2, 0($1)
lh $4, 0($2)
subu $2, $4, $2
TAG521:
bne $2, $2, TAG522
mfhi $4
blez $4, TAG522
slt $1, $4, $4
TAG522:
sll $3, $1, 9
lui $4, 15
beq $3, $4, TAG523
sh $3, 0($1)
TAG523:
bgez $4, TAG524
lui $1, 12
or $1, $1, $4
mtlo $1
TAG524:
srav $2, $1, $1
lui $4, 14
lui $2, 3
mult $2, $2
TAG525:
divu $2, $2
mult $2, $2
addu $4, $2, $2
mthi $2
TAG526:
mthi $4
bltz $4, TAG527
addiu $3, $4, 10
sll $0, $0, 0
TAG527:
sll $0, $0, 0
or $3, $3, $3
bne $1, $3, TAG528
mthi $1
TAG528:
divu $3, $3
sll $0, $0, 0
srav $3, $3, $3
beq $3, $3, TAG529
TAG529:
multu $3, $3
lhu $2, -384($3)
xori $1, $2, 4
divu $1, $3
TAG530:
addiu $3, $1, 14
lb $2, 0($1)
mtlo $2
mthi $2
TAG531:
bgtz $2, TAG532
multu $2, $2
lhu $4, 0($2)
lui $4, 6
TAG532:
sra $4, $4, 2
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG533
TAG533:
addu $2, $1, $1
bne $1, $1, TAG534
slt $2, $2, $2
mfhi $3
TAG534:
mflo $3
bne $3, $3, TAG535
lui $1, 5
lhu $3, 0($3)
TAG535:
mflo $4
beq $4, $3, TAG536
mthi $4
mflo $3
TAG536:
srlv $1, $3, $3
andi $2, $3, 4
bne $3, $2, TAG537
sw $1, 0($1)
TAG537:
beq $2, $2, TAG538
lui $1, 14
lb $4, 0($1)
xori $1, $4, 2
TAG538:
and $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
lh $2, 0($4)
TAG539:
beq $2, $2, TAG540
lw $1, 0($2)
lb $3, 0($1)
andi $2, $3, 7
TAG540:
sll $1, $2, 0
mflo $2
mfhi $1
slt $2, $2, $1
TAG541:
mult $2, $2
sw $2, 0($2)
bgez $2, TAG542
srlv $2, $2, $2
TAG542:
multu $2, $2
lb $2, 0($2)
mult $2, $2
lbu $1, 0($2)
TAG543:
sll $3, $1, 4
sb $3, 0($3)
lui $1, 6
or $4, $1, $1
TAG544:
addu $3, $4, $4
mtlo $3
mthi $3
slti $3, $3, 6
TAG545:
lui $2, 10
bltz $3, TAG546
mflo $1
sll $0, $0, 0
TAG546:
mtlo $1
lui $1, 14
sll $0, $0, 0
sltu $2, $1, $1
TAG547:
sltiu $2, $2, 11
bltz $2, TAG548
srl $3, $2, 3
mtlo $3
TAG548:
sb $3, 0($3)
mthi $3
lui $2, 0
beq $2, $3, TAG549
TAG549:
multu $2, $2
bne $2, $2, TAG550
lh $4, 0($2)
bne $4, $4, TAG550
TAG550:
lui $3, 15
mtlo $4
addu $3, $3, $4
sw $3, 0($4)
TAG551:
sll $0, $0, 0
mult $3, $3
srlv $2, $3, $3
bgtz $3, TAG552
TAG552:
sra $2, $2, 5
mthi $2
beq $2, $2, TAG553
lh $4, -960($2)
TAG553:
lw $2, 0($4)
lui $1, 9
mfhi $3
multu $3, $4
TAG554:
sll $0, $0, 0
sll $4, $3, 0
sh $1, -960($4)
mflo $1
TAG555:
lhu $2, 0($1)
mtlo $2
add $2, $1, $1
bne $2, $2, TAG556
TAG556:
sll $4, $2, 12
lw $3, 0($2)
beq $3, $3, TAG557
mthi $2
TAG557:
lui $2, 11
div $2, $3
beq $3, $3, TAG558
divu $3, $3
TAG558:
mtlo $2
multu $2, $2
sll $0, $0, 0
lui $2, 7
TAG559:
bltz $2, TAG560
mthi $2
mtlo $2
sll $0, $0, 0
TAG560:
mfhi $2
sll $0, $0, 0
beq $2, $4, TAG561
mfhi $1
TAG561:
sll $0, $0, 0
or $2, $1, $1
mfhi $2
bgtz $2, TAG562
TAG562:
sltu $1, $2, $2
bltz $2, TAG563
lw $4, 0($1)
sll $0, $0, 0
TAG563:
sltiu $1, $4, 8
mtlo $1
sh $1, 0($1)
mult $4, $1
TAG564:
nor $1, $1, $1
mfhi $2
lui $4, 12
lh $4, 1($1)
TAG565:
nor $1, $4, $4
sra $4, $1, 1
lw $1, 1($4)
bne $4, $1, TAG566
TAG566:
sll $0, $0, 0
addiu $4, $1, 2
sll $0, $0, 0
mflo $3
TAG567:
lui $2, 7
sll $0, $0, 0
mfhi $4
mfhi $3
TAG568:
lhu $4, 0($3)
lui $4, 0
addiu $1, $3, 7
lui $1, 7
TAG569:
bltz $1, TAG570
lui $3, 13
bltz $1, TAG570
mfhi $3
TAG570:
srav $1, $3, $3
sw $1, 0($1)
sltu $2, $1, $1
lw $4, 0($2)
TAG571:
blez $4, TAG572
addu $1, $4, $4
lui $4, 9
lw $3, 0($1)
TAG572:
bgez $3, TAG573
addu $4, $3, $3
mflo $1
lui $1, 4
TAG573:
lui $1, 4
mtlo $1
sll $0, $0, 0
mtlo $1
TAG574:
sh $3, 0($3)
mtlo $3
srlv $2, $3, $3
blez $3, TAG575
TAG575:
mthi $2
mult $2, $2
add $1, $2, $2
mult $2, $2
TAG576:
sw $1, 0($1)
bltz $1, TAG577
sh $1, 0($1)
lb $4, 0($1)
TAG577:
bne $4, $4, TAG578
mtlo $4
multu $4, $4
slti $1, $4, 2
TAG578:
sllv $4, $1, $1
sltu $3, $1, $1
slti $3, $3, 14
mthi $1
TAG579:
mflo $3
sh $3, 0($3)
addu $2, $3, $3
sltu $4, $3, $3
TAG580:
lb $1, 0($4)
mtlo $4
lhu $2, 0($4)
lui $3, 6
TAG581:
mfhi $2
sll $0, $0, 0
lui $1, 9
sltu $1, $2, $2
TAG582:
sub $2, $1, $1
mfhi $1
blez $1, TAG583
mflo $2
TAG583:
mflo $1
lui $4, 1
nor $2, $2, $2
mult $1, $4
TAG584:
sll $0, $0, 0
addiu $3, $3, 11
slt $2, $3, $3
and $1, $3, $2
TAG585:
multu $1, $1
lw $4, 0($1)
bgez $1, TAG586
sw $4, 0($4)
TAG586:
lh $4, 0($4)
lui $4, 5
bgez $4, TAG587
sll $0, $0, 0
TAG587:
sll $0, $0, 0
mult $4, $4
mthi $4
lui $3, 14
TAG588:
mtlo $3
bne $3, $3, TAG589
lui $1, 9
multu $1, $1
TAG589:
mflo $1
add $2, $1, $1
lhu $1, 0($1)
mflo $3
TAG590:
sltiu $1, $3, 13
mthi $3
sb $3, 0($1)
beq $1, $3, TAG591
TAG591:
slti $2, $1, 6
lbu $3, 0($2)
bgtz $1, TAG592
mthi $3
TAG592:
lh $1, 0($3)
sb $1, 0($3)
mult $1, $1
mflo $3
TAG593:
bltz $3, TAG594
sh $3, 0($3)
blez $3, TAG594
lb $4, 0($3)
TAG594:
mult $4, $4
beq $4, $4, TAG595
nor $1, $4, $4
lui $4, 15
TAG595:
lui $4, 9
bne $4, $4, TAG596
mthi $4
lui $1, 14
TAG596:
lui $3, 14
sll $0, $0, 0
div $1, $1
beq $1, $4, TAG597
TAG597:
addiu $1, $4, 5
bgtz $1, TAG598
multu $1, $4
lw $2, 0($4)
TAG598:
bgez $2, TAG599
subu $1, $2, $2
sltu $1, $1, $1
lui $4, 2
TAG599:
addiu $4, $4, 10
sll $0, $0, 0
beq $4, $4, TAG600
sltiu $3, $4, 11
TAG600:
lui $3, 1
mthi $3
blez $3, TAG601
lui $1, 11
TAG601:
sll $0, $0, 0
lui $3, 7
div $1, $3
divu $3, $3
TAG602:
div $3, $3
mfhi $3
mflo $2
addi $4, $3, 8
TAG603:
lh $2, 0($4)
lui $2, 11
sll $0, $0, 0
sllv $2, $4, $2
TAG604:
xor $3, $2, $2
lb $4, 0($2)
beq $2, $4, TAG605
xor $3, $2, $2
TAG605:
bgtz $3, TAG606
lui $4, 8
mult $4, $4
sll $0, $0, 0
TAG606:
sllv $1, $4, $4
ori $2, $1, 14
addiu $1, $1, 13
srlv $1, $1, $4
TAG607:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $1, TAG608
divu $2, $2
TAG608:
srl $4, $2, 8
sll $0, $0, 0
beq $2, $2, TAG609
sll $0, $0, 0
TAG609:
addiu $2, $4, 10
beq $4, $4, TAG610
srav $2, $4, $2
nor $4, $4, $4
TAG610:
bne $4, $4, TAG611
srav $2, $4, $4
mfhi $3
sltiu $3, $2, 4
TAG611:
sltu $3, $3, $3
lui $1, 15
sh $3, 0($3)
multu $3, $3
TAG612:
xori $1, $1, 7
mfhi $1
beq $1, $1, TAG613
addu $3, $1, $1
TAG613:
srlv $3, $3, $3
lui $1, 7
mtlo $3
sll $0, $0, 0
TAG614:
div $1, $1
mthi $1
divu $1, $1
addiu $1, $1, 11
TAG615:
mflo $4
mult $4, $1
mtlo $4
bltz $1, TAG616
TAG616:
mfhi $3
sw $4, 0($3)
mtlo $4
bgez $3, TAG617
TAG617:
mtlo $3
bne $3, $3, TAG618
lb $2, 0($3)
blez $2, TAG618
TAG618:
mult $2, $2
addu $3, $2, $2
sh $3, 0($3)
lui $2, 3
TAG619:
addu $1, $2, $2
xor $2, $2, $1
sltiu $4, $2, 9
sb $1, 0($4)
TAG620:
lb $3, 0($4)
bne $3, $3, TAG621
sh $4, 0($4)
mthi $3
TAG621:
lui $1, 0
sh $1, 0($3)
lbu $3, 0($1)
mtlo $3
TAG622:
mtlo $3
sw $3, 0($3)
lb $2, 0($3)
lw $1, 0($2)
TAG623:
lw $1, 0($1)
lb $3, 0($1)
bltz $3, TAG624
mthi $1
TAG624:
multu $3, $3
bgtz $3, TAG625
sw $3, 0($3)
lui $2, 6
TAG625:
bgtz $2, TAG626
mfhi $2
lh $1, 0($2)
sh $2, 0($2)
TAG626:
mthi $1
mthi $1
mflo $2
mflo $2
TAG627:
andi $4, $2, 6
addiu $1, $2, 13
lui $4, 1
mflo $1
TAG628:
bne $1, $1, TAG629
add $2, $1, $1
bltz $1, TAG629
lhu $4, 0($1)
TAG629:
bne $4, $4, TAG630
mfhi $1
sllv $2, $4, $1
mult $2, $1
TAG630:
blez $2, TAG631
sllv $3, $2, $2
bgtz $3, TAG631
sw $3, 0($3)
TAG631:
mtlo $3
sw $3, 0($3)
mult $3, $3
lui $2, 13
TAG632:
subu $3, $2, $2
sll $0, $0, 0
multu $3, $3
bgez $2, TAG633
TAG633:
sb $3, 0($3)
lui $2, 15
lui $3, 0
multu $2, $3
TAG634:
mfhi $1
lui $1, 7
mfhi $4
nor $2, $1, $1
TAG635:
mult $2, $2
multu $2, $2
sll $0, $0, 0
lui $2, 12
TAG636:
mflo $2
lui $4, 10
addu $1, $4, $2
lui $1, 9
TAG637:
sll $2, $1, 2
div $1, $1
mfhi $1
mthi $1
TAG638:
sw $1, 0($1)
and $2, $1, $1
mtlo $2
beq $1, $1, TAG639
TAG639:
sw $2, 0($2)
add $1, $2, $2
lui $1, 10
beq $1, $1, TAG640
TAG640:
mthi $1
bgez $1, TAG641
sll $0, $0, 0
subu $3, $1, $1
TAG641:
mult $3, $3
bne $3, $3, TAG642
mfhi $3
lui $1, 4
TAG642:
mthi $1
bne $1, $1, TAG643
mflo $4
div $4, $1
TAG643:
mfhi $2
srl $4, $4, 14
lw $4, 0($4)
srav $2, $2, $2
TAG644:
multu $2, $2
lh $1, 0($2)
lw $4, 0($2)
bne $2, $4, TAG645
TAG645:
mflo $2
multu $2, $4
mthi $2
lui $4, 7
TAG646:
sll $0, $0, 0
lui $1, 5
lui $1, 12
multu $1, $1
TAG647:
sll $0, $0, 0
multu $1, $3
mult $3, $3
sh $3, 0($3)
TAG648:
bgtz $3, TAG649
mflo $2
bgez $3, TAG649
sltiu $2, $3, 9
TAG649:
bne $2, $2, TAG650
mfhi $2
mfhi $2
andi $1, $2, 4
TAG650:
andi $2, $1, 0
addiu $4, $2, 1
srav $2, $4, $4
lui $4, 5
TAG651:
sll $0, $0, 0
multu $4, $4
mtlo $4
blez $4, TAG652
TAG652:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
multu $3, $3
TAG653:
sw $3, 0($3)
bgez $3, TAG654
sb $3, 0($3)
lhu $3, 0($3)
TAG654:
mult $3, $3
lui $3, 4
multu $3, $3
sll $0, $0, 0
TAG655:
mtlo $1
sltu $4, $1, $1
lui $2, 7
srav $2, $2, $1
TAG656:
sll $0, $0, 0
bgtz $1, TAG657
lui $2, 14
lui $2, 9
TAG657:
div $2, $2
sll $0, $0, 0
or $2, $2, $2
sll $0, $0, 0
TAG658:
or $3, $1, $1
add $1, $3, $1
bgez $1, TAG659
mflo $3
TAG659:
lui $1, 7
mflo $3
bne $3, $3, TAG660
mult $3, $1
TAG660:
lbu $1, 0($3)
addiu $4, $3, 2
bltz $4, TAG661
srlv $2, $1, $1
TAG661:
bgtz $2, TAG662
multu $2, $2
sh $2, 0($2)
lb $4, 0($2)
TAG662:
bgtz $4, TAG663
mtlo $4
mthi $4
sw $4, 0($4)
TAG663:
lui $1, 2
and $2, $4, $4
mtlo $4
multu $2, $2
TAG664:
sw $2, 0($2)
beq $2, $2, TAG665
sw $2, 0($2)
mthi $2
TAG665:
srav $1, $2, $2
multu $1, $1
xori $4, $2, 7
mtlo $4
TAG666:
bne $4, $4, TAG667
mtlo $4
sb $4, 0($4)
mfhi $1
TAG667:
lbu $3, 0($1)
lh $4, 0($1)
mfhi $3
mult $3, $4
TAG668:
and $4, $3, $3
addi $4, $4, 8
or $3, $4, $4
sb $3, 0($4)
TAG669:
mflo $1
mtlo $3
mthi $3
bne $3, $1, TAG670
TAG670:
mult $1, $1
lui $1, 3
beq $1, $1, TAG671
sltiu $3, $1, 12
TAG671:
beq $3, $3, TAG672
xori $3, $3, 13
sw $3, 0($3)
mthi $3
TAG672:
sllv $1, $3, $3
bgez $3, TAG673
sll $0, $0, 0
bltz $1, TAG673
TAG673:
or $1, $2, $2
mfhi $1
lui $2, 12
mfhi $4
TAG674:
mult $4, $4
multu $4, $4
mult $4, $4
lui $2, 7
TAG675:
xor $1, $2, $2
mthi $1
sll $0, $0, 0
nor $1, $2, $3
TAG676:
sll $0, $0, 0
addiu $1, $2, 12
sll $0, $0, 0
sb $2, 0($3)
TAG677:
divu $3, $3
beq $3, $3, TAG678
sb $3, 0($3)
lui $4, 14
TAG678:
mfhi $2
bltz $4, TAG679
mthi $4
mtlo $4
TAG679:
multu $2, $2
bgtz $2, TAG680
lhu $4, 0($2)
mfhi $2
TAG680:
mflo $2
lw $3, 0($2)
mflo $4
mult $2, $2
TAG681:
mflo $3
lbu $2, 0($3)
lui $3, 8
srav $1, $3, $3
TAG682:
sll $0, $0, 0
bltz $1, TAG683
sll $0, $0, 0
bltz $1, TAG683
TAG683:
andi $1, $1, 9
sw $1, 0($1)
mthi $1
bgtz $1, TAG684
TAG684:
lui $1, 5
bltz $1, TAG685
sll $0, $0, 0
mfhi $4
TAG685:
mflo $2
andi $3, $2, 9
lw $3, 0($4)
sb $4, 0($4)
TAG686:
mult $3, $3
sw $3, 0($3)
mfhi $2
mult $2, $2
TAG687:
lui $4, 3
sll $0, $0, 0
multu $2, $4
bgez $4, TAG688
TAG688:
mthi $4
mthi $4
multu $4, $4
div $4, $4
TAG689:
addu $3, $4, $4
nor $1, $4, $4
addu $2, $1, $1
bne $1, $4, TAG690
TAG690:
sll $0, $0, 0
bltz $2, TAG691
subu $2, $2, $2
lui $1, 6
TAG691:
sll $0, $0, 0
mfhi $2
bgtz $2, TAG692
lui $2, 5
TAG692:
srlv $3, $2, $2
and $3, $3, $3
divu $2, $2
bgez $2, TAG693
TAG693:
sll $0, $0, 0
mult $3, $4
sll $0, $0, 0
mult $4, $3
TAG694:
mtlo $4
divu $4, $4
mfhi $4
mthi $4
TAG695:
lui $2, 9
sltu $2, $2, $4
mfhi $1
lh $4, 0($2)
TAG696:
or $2, $4, $4
multu $4, $4
multu $2, $2
mflo $1
TAG697:
addiu $2, $1, 7
srl $3, $1, 13
mthi $3
mthi $1
TAG698:
lui $2, 8
lui $2, 14
beq $3, $2, TAG699
mtlo $2
TAG699:
mtlo $2
mfhi $4
andi $3, $4, 15
bne $2, $2, TAG700
TAG700:
lw $2, 0($3)
mfhi $1
mtlo $2
bne $1, $1, TAG701
TAG701:
ori $3, $1, 2
slt $1, $3, $3
bne $1, $1, TAG702
subu $3, $3, $3
TAG702:
addi $4, $3, 2
blez $4, TAG703
mthi $3
divu $3, $4
TAG703:
ori $1, $4, 8
sllv $1, $4, $1
div $1, $1
or $1, $4, $1
TAG704:
lui $4, 3
mthi $1
srl $1, $1, 15
srlv $3, $1, $1
TAG705:
lh $3, 0($3)
sll $2, $3, 5
mflo $2
xori $1, $2, 7
TAG706:
lbu $2, 0($1)
mflo $1
sll $2, $1, 0
mfhi $1
TAG707:
and $3, $1, $1
lui $2, 5
addiu $4, $1, 0
lh $2, -2050($4)
TAG708:
subu $3, $2, $2
bltz $2, TAG709
mthi $3
bne $2, $2, TAG709
TAG709:
subu $1, $3, $3
addi $3, $1, 0
sh $1, 0($3)
lui $4, 4
TAG710:
mult $4, $4
lui $4, 6
subu $3, $4, $4
div $4, $4
TAG711:
sh $3, 0($3)
multu $3, $3
srlv $1, $3, $3
lui $3, 12
TAG712:
mfhi $3
blez $3, TAG713
mtlo $3
bne $3, $3, TAG713
TAG713:
mfhi $1
mtlo $3
srav $3, $3, $3
bne $3, $3, TAG714
TAG714:
lhu $3, 0($3)
sllv $4, $3, $3
mflo $1
lb $4, 0($4)
TAG715:
sw $4, 0($4)
xor $4, $4, $4
multu $4, $4
bne $4, $4, TAG716
TAG716:
lui $3, 1
lui $1, 8
mthi $1
ori $1, $4, 3
TAG717:
multu $1, $1
bne $1, $1, TAG718
xori $2, $1, 9
mtlo $1
TAG718:
bne $2, $2, TAG719
mtlo $2
or $2, $2, $2
beq $2, $2, TAG719
TAG719:
sb $2, 0($2)
bgtz $2, TAG720
mflo $3
lbu $4, 0($3)
TAG720:
sb $4, 0($4)
lui $3, 1
sltiu $2, $4, 0
sll $0, $0, 0
TAG721:
srl $4, $2, 15
mthi $2
beq $2, $4, TAG722
lui $4, 11
TAG722:
lui $4, 0
sb $4, 0($4)
slti $2, $4, 12
addu $4, $2, $4
TAG723:
lb $1, 0($4)
mflo $1
bgtz $1, TAG724
lhu $3, 0($1)
TAG724:
subu $3, $3, $3
and $2, $3, $3
bne $2, $3, TAG725
mult $3, $3
TAG725:
mthi $2
srl $3, $2, 14
lui $2, 10
sll $0, $0, 0
TAG726:
addu $4, $4, $4
beq $4, $4, TAG727
lui $1, 14
and $4, $4, $4
TAG727:
lhu $3, 0($4)
lui $4, 9
addu $3, $4, $4
sll $0, $0, 0
TAG728:
bne $3, $3, TAG729
divu $3, $3
mtlo $3
mthi $3
TAG729:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
TAG730:
mflo $1
mtlo $1
mtlo $1
mfhi $4
TAG731:
bne $4, $4, TAG732
sh $4, 0($4)
mult $4, $4
beq $4, $4, TAG732
TAG732:
mthi $4
lui $1, 7
or $1, $1, $1
and $2, $1, $4
TAG733:
beq $2, $2, TAG734
addi $2, $2, 3
lbu $1, 0($2)
lw $4, 0($2)
TAG734:
bne $4, $4, TAG735
srlv $1, $4, $4
addiu $2, $1, 12
bgez $2, TAG735
TAG735:
srav $2, $2, $2
sra $1, $2, 2
mthi $2
lw $4, 0($2)
TAG736:
addiu $2, $4, 14
lhu $3, 0($4)
lui $2, 11
lui $2, 11
TAG737:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 6
blez $2, TAG738
TAG738:
nor $2, $2, $2
nor $3, $2, $2
mflo $3
lui $2, 0
TAG739:
lb $4, 0($2)
lhu $1, 0($4)
bgez $4, TAG740
addi $3, $2, 6
TAG740:
sltu $1, $3, $3
addiu $4, $3, 6
srav $4, $4, $1
xor $3, $1, $1
TAG741:
bne $3, $3, TAG742
addiu $2, $3, 14
mfhi $1
sh $1, 0($2)
TAG742:
slti $1, $1, 15
lui $1, 13
bltz $1, TAG743
sll $0, $0, 0
TAG743:
sll $0, $0, 0
bltz $1, TAG744
div $1, $1
lui $2, 6
TAG744:
mtlo $2
mflo $1
lui $2, 5
sll $0, $0, 0
TAG745:
srav $4, $4, $4
sh $4, 0($4)
bgtz $4, TAG746
mult $4, $4
TAG746:
bne $4, $4, TAG747
srlv $1, $4, $4
bne $4, $1, TAG747
sh $4, 0($4)
TAG747:
blez $1, TAG748
sb $1, 0($1)
addiu $1, $1, 2
div $1, $1
TAG748:
lbu $3, 0($1)
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
TAG749:
sll $0, $0, 0
and $3, $3, $3
bgez $3, TAG750
addiu $2, $3, 1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop