ori $1, $0, 14
ori $2, $0, 3
ori $3, $0, 5
ori $4, $0, 11
sw $1, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $3, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $4, 116($0)
sw $2, 120($0)
sw $3, 124($0)
mfhi $1
xori $2, $1, 15
lui $4, 15
divu $2, $2
TAG1:
addiu $4, $4, 1
mtlo $4
or $4, $4, $4
multu $4, $4
TAG2:
mtlo $4
lui $1, 8
sll $0, $0, 0
sllv $3, $4, $4
TAG3:
mflo $3
mflo $3
and $1, $3, $3
multu $3, $3
TAG4:
bgtz $1, TAG5
sltu $1, $1, $1
lw $4, 0($1)
lui $3, 0
TAG5:
mthi $3
sll $1, $3, 14
mtlo $1
subu $1, $3, $1
TAG6:
mfhi $2
andi $1, $2, 10
multu $1, $1
xori $2, $2, 8
TAG7:
lui $2, 1
bgtz $2, TAG8
mtlo $2
lui $3, 0
TAG8:
div $3, $3
mflo $4
sll $0, $0, 0
mflo $1
TAG9:
addiu $1, $1, 2
bgez $1, TAG10
mtlo $1
mtlo $1
TAG10:
addu $2, $1, $1
sb $1, 0($1)
mflo $3
bgez $1, TAG11
TAG11:
sb $3, 0($3)
sb $3, 0($3)
sb $3, 0($3)
srl $2, $3, 3
TAG12:
bne $2, $2, TAG13
mflo $4
add $3, $2, $2
lui $2, 8
TAG13:
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG14:
bgez $2, TAG15
sll $0, $0, 0
lw $4, 0($2)
sra $4, $2, 7
TAG15:
bne $4, $4, TAG16
lui $4, 0
nor $2, $4, $4
beq $4, $4, TAG16
TAG16:
srl $4, $2, 1
sb $4, 1($2)
srlv $3, $4, $4
multu $3, $3
TAG17:
beq $3, $3, TAG18
sw $3, 0($3)
mfhi $2
blez $3, TAG18
TAG18:
lui $4, 13
mflo $1
beq $4, $1, TAG19
sb $1, 1($2)
TAG19:
sb $1, 0($1)
beq $1, $1, TAG20
lbu $1, 0($1)
sra $1, $1, 11
TAG20:
lb $3, 0($1)
lhu $1, 0($3)
mflo $1
mtlo $1
TAG21:
mflo $1
sra $3, $1, 11
and $3, $3, $1
srl $1, $1, 1
TAG22:
sh $1, 0($1)
mthi $1
lui $3, 8
divu $3, $3
TAG23:
sll $0, $0, 0
bne $3, $3, TAG24
sll $0, $0, 0
bne $3, $3, TAG24
TAG24:
div $3, $3
bne $3, $3, TAG25
sll $0, $0, 0
lw $2, 0($1)
TAG25:
mult $2, $2
mtlo $2
bgez $2, TAG26
lhu $2, 0($2)
TAG26:
mult $2, $2
sb $2, 0($2)
mthi $2
bne $2, $2, TAG27
TAG27:
mthi $2
mflo $4
sh $2, 0($4)
mflo $4
TAG28:
multu $4, $4
sh $4, 0($4)
mtlo $4
mult $4, $4
TAG29:
blez $4, TAG30
lui $4, 14
lh $4, 0($4)
mflo $2
TAG30:
mfhi $2
bltz $2, TAG31
multu $2, $2
beq $2, $2, TAG31
TAG31:
add $4, $2, $2
lw $2, 0($2)
lw $4, 0($4)
lbu $4, 0($4)
TAG32:
blez $4, TAG33
lui $1, 1
multu $4, $4
bne $1, $1, TAG33
TAG33:
sltiu $1, $1, 0
mflo $1
lhu $3, 0($1)
subu $4, $1, $1
TAG34:
bltz $4, TAG35
sb $4, 0($4)
sll $1, $4, 4
mtlo $1
TAG35:
sra $1, $1, 2
mflo $2
mthi $1
mthi $2
TAG36:
lhu $3, 0($2)
mthi $3
bne $3, $2, TAG37
mtlo $2
TAG37:
lhu $1, 0($3)
mthi $1
lui $2, 1
bne $2, $1, TAG38
TAG38:
sll $0, $0, 0
bgtz $2, TAG39
lui $1, 12
bltz $1, TAG39
TAG39:
sll $0, $0, 0
bne $1, $1, TAG40
mtlo $1
mthi $1
TAG40:
bltz $1, TAG41
sll $4, $1, 14
bne $4, $1, TAG41
sub $2, $4, $4
TAG41:
mult $2, $2
lhu $3, 0($2)
sltiu $2, $2, 14
sh $3, 0($3)
TAG42:
sb $2, 0($2)
sb $2, 0($2)
lbu $3, 0($2)
and $2, $2, $3
TAG43:
mthi $2
mult $2, $2
mult $2, $2
lui $4, 7
TAG44:
bne $4, $4, TAG45
slt $3, $4, $4
bgtz $4, TAG45
or $3, $3, $3
TAG45:
mfhi $1
bgez $3, TAG46
lh $2, 0($1)
mult $3, $2
TAG46:
mfhi $3
mfhi $2
addu $4, $3, $3
lui $3, 8
TAG47:
sll $0, $0, 0
addu $4, $3, $3
srav $1, $3, $4
sltu $1, $4, $1
TAG48:
lhu $2, 0($1)
mfhi $1
bgez $1, TAG49
mflo $1
TAG49:
lui $2, 12
div $2, $1
lb $2, 0($1)
lb $2, 0($2)
TAG50:
multu $2, $2
bltz $2, TAG51
divu $2, $2
lui $2, 15
TAG51:
multu $2, $2
nor $2, $2, $2
sll $0, $0, 0
andi $1, $2, 8
TAG52:
bne $1, $1, TAG53
mtlo $1
bgtz $1, TAG53
sh $1, 0($1)
TAG53:
beq $1, $1, TAG54
sh $1, 0($1)
bgtz $1, TAG54
sb $1, 0($1)
TAG54:
lui $4, 15
sw $1, 0($1)
mfhi $3
sll $0, $0, 0
TAG55:
andi $2, $1, 8
mult $1, $1
lui $3, 4
beq $1, $1, TAG56
TAG56:
lui $4, 0
mthi $3
lui $2, 1
beq $3, $2, TAG57
TAG57:
addiu $3, $2, 13
multu $3, $3
mtlo $3
sll $3, $3, 7
TAG58:
mthi $3
addiu $1, $3, 10
sll $0, $0, 0
bgtz $1, TAG59
TAG59:
andi $2, $1, 6
lui $3, 14
sh $1, 0($2)
mflo $2
TAG60:
bne $2, $2, TAG61
xori $2, $2, 2
sll $0, $0, 0
mtlo $2
TAG61:
divu $2, $2
mthi $2
blez $2, TAG62
lui $4, 3
TAG62:
bne $4, $4, TAG63
mult $4, $4
bne $4, $4, TAG63
mfhi $4
TAG63:
blez $4, TAG64
multu $4, $4
and $2, $4, $4
mtlo $4
TAG64:
sb $2, 0($2)
bne $2, $2, TAG65
lbu $4, 0($2)
srav $4, $4, $4
TAG65:
multu $4, $4
sh $4, 0($4)
lh $1, 0($4)
blez $1, TAG66
TAG66:
lui $4, 6
bltz $1, TAG67
sb $4, 0($1)
ori $2, $4, 11
TAG67:
sll $0, $0, 0
div $2, $2
lui $1, 6
sll $0, $0, 0
TAG68:
sll $0, $0, 0
mtlo $1
nor $3, $3, $3
mfhi $3
TAG69:
sll $4, $3, 5
mflo $1
bne $4, $3, TAG70
divu $1, $1
TAG70:
sltiu $4, $1, 5
bgez $1, TAG71
addi $4, $4, 9
bne $4, $4, TAG71
TAG71:
div $4, $4
divu $4, $4
sll $1, $4, 10
mflo $1
TAG72:
bne $1, $1, TAG73
mult $1, $1
mfhi $3
lw $2, 0($3)
TAG73:
div $2, $2
blez $2, TAG74
lui $1, 4
sll $0, $0, 0
TAG74:
sltiu $2, $1, 6
mtlo $1
bne $2, $2, TAG75
lui $1, 3
TAG75:
mtlo $1
sll $0, $0, 0
lui $3, 8
div $3, $1
TAG76:
mflo $2
divu $3, $3
divu $3, $2
andi $1, $2, 4
TAG77:
mfhi $4
bne $1, $4, TAG78
lhu $3, 0($1)
bgez $4, TAG78
TAG78:
sh $3, 0($3)
mfhi $2
xor $3, $2, $2
mfhi $3
TAG79:
srav $1, $3, $3
mult $3, $1
multu $3, $1
mfhi $4
TAG80:
mtlo $4
sh $4, 0($4)
andi $1, $4, 9
lui $1, 10
TAG81:
multu $1, $1
bgtz $1, TAG82
mtlo $1
div $1, $1
TAG82:
beq $1, $1, TAG83
sll $0, $0, 0
bgtz $1, TAG83
lw $4, 0($1)
TAG83:
andi $4, $4, 5
mfhi $3
srl $4, $4, 15
bgtz $4, TAG84
TAG84:
lui $3, 7
beq $3, $3, TAG85
multu $3, $4
mtlo $4
TAG85:
subu $4, $3, $3
lui $1, 9
or $3, $1, $1
multu $1, $1
TAG86:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG87
TAG87:
lbu $3, 0($2)
sw $3, 0($3)
bne $2, $2, TAG88
multu $3, $2
TAG88:
lui $2, 7
sll $0, $0, 0
mfhi $4
div $4, $2
TAG89:
lui $1, 9
mfhi $3
lui $4, 10
addiu $4, $4, 6
TAG90:
divu $4, $4
or $1, $4, $4
mflo $3
bne $4, $4, TAG91
TAG91:
lui $2, 1
mflo $2
bgez $2, TAG92
slti $1, $2, 11
TAG92:
sll $3, $1, 4
lb $1, 0($1)
bne $3, $1, TAG93
lbu $3, 0($1)
TAG93:
mtlo $3
bgez $3, TAG94
mfhi $3
div $3, $3
TAG94:
sllv $4, $3, $3
beq $4, $3, TAG95
lui $1, 1
mthi $4
TAG95:
mult $1, $1
div $1, $1
divu $1, $1
bgtz $1, TAG96
TAG96:
sll $0, $0, 0
bltz $1, TAG97
mult $1, $1
lui $3, 12
TAG97:
sll $0, $0, 0
multu $3, $3
mflo $3
lui $4, 2
TAG98:
sll $0, $0, 0
div $4, $4
bgez $4, TAG99
sll $0, $0, 0
TAG99:
and $2, $2, $2
mfhi $4
multu $2, $2
lui $2, 5
TAG100:
blez $2, TAG101
sll $0, $0, 0
mult $3, $2
sll $0, $0, 0
TAG101:
slti $1, $1, 0
multu $1, $1
bltz $1, TAG102
srlv $2, $1, $1
TAG102:
sra $2, $2, 6
sra $4, $2, 2
mfhi $3
lhu $1, 0($4)
TAG103:
sh $1, 0($1)
multu $1, $1
ori $1, $1, 3
slti $3, $1, 1
TAG104:
mflo $3
sw $3, 0($3)
bltz $3, TAG105
lui $2, 3
TAG105:
bne $2, $2, TAG106
xori $4, $2, 14
mult $2, $2
lui $2, 13
TAG106:
bgez $2, TAG107
xori $4, $2, 7
beq $2, $2, TAG107
lui $1, 11
TAG107:
lui $2, 2
bne $2, $2, TAG108
xori $3, $1, 3
bltz $2, TAG108
TAG108:
mult $3, $3
mthi $3
mthi $3
bne $3, $3, TAG109
TAG109:
mthi $3
lui $1, 0
sltiu $1, $3, 2
div $1, $1
TAG110:
bltz $1, TAG111
mult $1, $1
mthi $1
mtlo $1
TAG111:
lui $3, 3
sll $0, $0, 0
beq $1, $3, TAG112
mtlo $3
TAG112:
divu $3, $3
sltiu $2, $3, 11
lhu $2, 0($2)
mtlo $2
TAG113:
mthi $2
blez $2, TAG114
lbu $3, 0($2)
addi $4, $3, 15
TAG114:
lui $1, 11
sll $0, $0, 0
bgez $4, TAG115
div $1, $4
TAG115:
mtlo $1
sll $0, $0, 0
bgez $3, TAG116
mthi $3
TAG116:
bne $3, $3, TAG117
lhu $1, 0($3)
multu $3, $1
mfhi $4
TAG117:
sb $4, 0($4)
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
TAG118:
sll $0, $0, 0
addu $3, $4, $1
mflo $3
lw $1, 0($3)
TAG119:
mult $1, $1
sll $4, $1, 9
mtlo $4
lb $4, 0($4)
TAG120:
bne $4, $4, TAG121
add $1, $4, $4
sb $4, 0($4)
bne $1, $4, TAG121
TAG121:
sra $2, $1, 8
sub $4, $2, $1
mfhi $4
beq $1, $1, TAG122
TAG122:
mfhi $2
sw $2, 0($4)
lb $2, 0($4)
mflo $2
TAG123:
mult $2, $2
bgtz $2, TAG124
mtlo $2
mthi $2
TAG124:
mthi $2
bgez $2, TAG125
mult $2, $2
lw $4, 0($2)
TAG125:
sll $2, $4, 7
lui $4, 10
sw $4, 0($2)
bgez $4, TAG126
TAG126:
lui $3, 12
div $3, $3
blez $4, TAG127
xori $2, $3, 4
TAG127:
lui $2, 11
sllv $4, $2, $2
lui $4, 14
lui $1, 3
TAG128:
sltiu $3, $1, 6
sra $3, $3, 14
sll $0, $0, 0
sltiu $2, $3, 15
TAG129:
nor $2, $2, $2
lui $2, 5
sll $0, $0, 0
bgtz $2, TAG130
TAG130:
subu $3, $2, $2
beq $3, $3, TAG131
sll $0, $0, 0
or $2, $3, $3
TAG131:
sll $0, $0, 0
mfhi $3
beq $2, $2, TAG132
lui $3, 9
TAG132:
andi $4, $3, 15
sltiu $4, $4, 2
addu $3, $4, $4
or $2, $3, $3
TAG133:
lui $4, 4
beq $2, $4, TAG134
ori $3, $4, 7
lb $1, 0($2)
TAG134:
bltz $1, TAG135
mthi $1
srl $2, $1, 14
subu $1, $1, $1
TAG135:
bgtz $1, TAG136
mfhi $4
mthi $4
bne $1, $4, TAG136
TAG136:
lb $4, 0($4)
sw $4, 0($4)
mtlo $4
mtlo $4
TAG137:
bne $4, $4, TAG138
slt $2, $4, $4
slt $1, $2, $2
sll $2, $4, 2
TAG138:
sb $2, 0($2)
mtlo $2
bne $2, $2, TAG139
mflo $4
TAG139:
bne $4, $4, TAG140
mfhi $3
sll $2, $3, 6
lui $4, 0
TAG140:
mtlo $4
mtlo $4
sw $4, 0($4)
sra $2, $4, 13
TAG141:
lhu $1, 0($2)
beq $2, $1, TAG142
mfhi $3
sll $4, $2, 11
TAG142:
bgtz $4, TAG143
nor $3, $4, $4
mfhi $3
mult $3, $3
TAG143:
slt $1, $3, $3
addu $1, $3, $3
addiu $1, $1, 7
sh $3, 0($3)
TAG144:
beq $1, $1, TAG145
mtlo $1
andi $3, $1, 4
ori $2, $3, 3
TAG145:
mult $2, $2
sh $2, 0($2)
sh $2, 0($2)
sh $2, 0($2)
TAG146:
lui $2, 6
beq $2, $2, TAG147
sll $0, $0, 0
sll $4, $2, 13
TAG147:
or $1, $4, $4
multu $1, $1
sb $1, 0($1)
multu $4, $1
TAG148:
bltz $1, TAG149
sw $1, 0($1)
sb $1, 0($1)
lui $2, 1
TAG149:
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG150:
mthi $2
bltz $2, TAG151
lui $3, 11
sll $4, $3, 3
TAG151:
sltu $3, $4, $4
mflo $3
beq $3, $4, TAG152
lui $4, 6
TAG152:
mult $4, $4
sll $0, $0, 0
mflo $3
lui $4, 7
TAG153:
div $4, $4
lui $4, 8
bne $4, $4, TAG154
mflo $1
TAG154:
blez $1, TAG155
lui $1, 5
beq $1, $1, TAG155
subu $2, $1, $1
TAG155:
sll $3, $2, 3
bgez $2, TAG156
mtlo $2
beq $3, $2, TAG156
TAG156:
sh $3, 0($3)
lh $2, 0($3)
bne $2, $3, TAG157
lbu $2, 0($3)
TAG157:
bltz $2, TAG158
mtlo $2
mult $2, $2
lui $1, 0
TAG158:
mult $1, $1
bltz $1, TAG159
lui $1, 15
addu $3, $1, $1
TAG159:
and $1, $3, $3
bgtz $1, TAG160
mthi $3
or $1, $1, $3
TAG160:
lui $3, 13
mthi $3
lui $4, 7
bgtz $4, TAG161
TAG161:
sltiu $2, $4, 1
beq $4, $2, TAG162
multu $4, $2
mflo $1
TAG162:
sb $1, 0($1)
lbu $1, 0($1)
sb $1, 0($1)
blez $1, TAG163
TAG163:
mult $1, $1
xori $3, $1, 0
bne $3, $3, TAG164
sw $3, 0($3)
TAG164:
mfhi $4
or $1, $3, $4
lh $4, 0($3)
mthi $3
TAG165:
bgtz $4, TAG166
slt $3, $4, $4
mfhi $1
nor $2, $1, $1
TAG166:
multu $2, $2
sb $2, 1($2)
sb $2, 1($2)
mflo $2
TAG167:
bne $2, $2, TAG168
lui $2, 0
lbu $3, 0($2)
lbu $4, 0($2)
TAG168:
mthi $4
sb $4, -255($4)
blez $4, TAG169
div $4, $4
TAG169:
lui $2, 11
mflo $3
sll $0, $0, 0
lui $3, 15
TAG170:
mfhi $4
lw $1, 0($4)
mthi $4
sll $0, $0, 0
TAG171:
slt $1, $1, $1
bne $1, $1, TAG172
mflo $1
mthi $1
TAG172:
sb $1, 0($1)
divu $1, $1
slti $1, $1, 5
lb $1, 0($1)
TAG173:
sb $1, 0($1)
bltz $1, TAG174
lb $1, 0($1)
lui $2, 4
TAG174:
divu $2, $2
bgez $2, TAG175
slti $2, $2, 10
lui $4, 12
TAG175:
bgez $4, TAG176
lh $3, 0($4)
subu $3, $4, $4
bne $3, $3, TAG176
TAG176:
sra $1, $3, 0
bne $3, $1, TAG177
slt $4, $3, $1
sh $3, -511($3)
TAG177:
lui $1, 1
multu $4, $4
lui $2, 15
lui $3, 8
TAG178:
mult $3, $3
bne $3, $3, TAG179
sll $0, $0, 0
mult $3, $3
TAG179:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
mthi $1
TAG180:
lh $1, 0($4)
sb $4, 0($1)
sltu $2, $1, $4
lb $4, 0($1)
TAG181:
lbu $3, 0($4)
mflo $1
sb $1, 0($4)
divu $4, $4
TAG182:
multu $1, $1
mtlo $1
xor $4, $1, $1
sh $4, 0($1)
TAG183:
bne $4, $4, TAG184
mult $4, $4
bne $4, $4, TAG184
or $3, $4, $4
TAG184:
lb $2, 0($3)
bgtz $2, TAG185
mfhi $3
mthi $2
TAG185:
multu $3, $3
lh $2, 0($3)
mtlo $2
ori $3, $2, 4
TAG186:
mfhi $2
sllv $2, $2, $3
sllv $4, $2, $2
sltiu $1, $2, 5
TAG187:
lb $3, 0($1)
lw $1, 0($3)
sll $0, $0, 0
lbu $1, 0($3)
TAG188:
lhu $2, 0($1)
bltz $2, TAG189
mfhi $3
lui $1, 13
TAG189:
bgtz $1, TAG190
sll $3, $1, 4
mflo $4
sw $1, 0($4)
TAG190:
sll $2, $4, 13
bltz $2, TAG191
lw $1, 0($4)
mflo $1
TAG191:
sh $1, 0($1)
mfhi $2
mflo $2
lw $3, 0($2)
TAG192:
div $3, $3
mfhi $4
mfhi $3
xori $4, $3, 0
TAG193:
lui $1, 1
srlv $1, $1, $4
bgtz $1, TAG194
mflo $4
TAG194:
slti $1, $4, 11
lui $1, 6
bltz $1, TAG195
mtlo $4
TAG195:
mfhi $4
addu $4, $1, $4
slti $3, $4, 15
srl $4, $4, 1
TAG196:
sll $0, $0, 0
bne $4, $4, TAG197
mthi $4
addiu $1, $4, 6
TAG197:
bne $1, $1, TAG198
sll $0, $0, 0
sh $3, 0($3)
andi $2, $3, 3
TAG198:
sub $4, $2, $2
lh $1, 0($4)
sltu $2, $2, $1
beq $2, $1, TAG199
TAG199:
sh $2, 0($2)
sh $2, 0($2)
lui $4, 4
mfhi $4
TAG200:
multu $4, $4
srl $1, $4, 2
addiu $1, $1, 11
mult $4, $1
TAG201:
slti $2, $1, 7
sll $0, $0, 0
mthi $1
lui $4, 13
TAG202:
sll $0, $0, 0
multu $4, $4
mtlo $4
addiu $4, $4, 10
TAG203:
sll $4, $4, 14
beq $4, $4, TAG204
sll $0, $0, 0
bne $4, $4, TAG204
TAG204:
multu $3, $3
lui $1, 2
mtlo $1
mflo $1
TAG205:
sll $0, $0, 0
lhu $1, 0($2)
mthi $2
mult $1, $1
TAG206:
andi $1, $1, 10
lui $4, 8
blez $1, TAG207
addu $1, $1, $1
TAG207:
bltz $1, TAG208
lh $3, 0($1)
lui $4, 15
mfhi $3
TAG208:
mtlo $3
addi $1, $3, 6
mfhi $2
bgtz $3, TAG209
TAG209:
sb $2, 0($2)
ori $4, $2, 5
lui $4, 15
bne $2, $4, TAG210
TAG210:
div $4, $4
srl $2, $4, 13
bltz $4, TAG211
lb $1, 0($2)
TAG211:
mtlo $1
lui $4, 12
sll $0, $0, 0
bgez $1, TAG212
TAG212:
and $3, $1, $1
sb $3, 0($1)
addiu $1, $3, 5
sh $1, 0($1)
TAG213:
xori $4, $1, 15
multu $4, $4
beq $1, $4, TAG214
lb $3, 0($4)
TAG214:
bne $3, $3, TAG215
and $3, $3, $3
sw $3, 0($3)
sh $3, 0($3)
TAG215:
bgtz $3, TAG216
mult $3, $3
lh $2, 0($3)
lh $3, 0($2)
TAG216:
bgez $3, TAG217
mult $3, $3
lh $1, 0($3)
div $1, $3
TAG217:
bne $1, $1, TAG218
sw $1, 0($1)
div $1, $1
mflo $3
TAG218:
nor $2, $3, $3
beq $2, $3, TAG219
multu $3, $2
sb $2, 0($3)
TAG219:
mthi $2
mtlo $2
sb $2, 2($2)
lb $1, 2($2)
TAG220:
addu $2, $1, $1
div $1, $2
divu $1, $1
mtlo $2
TAG221:
lui $3, 9
sll $0, $0, 0
subu $4, $3, $3
bgtz $4, TAG222
TAG222:
mtlo $4
beq $4, $4, TAG223
multu $4, $4
lui $3, 11
TAG223:
beq $3, $3, TAG224
sllv $3, $3, $3
sw $3, 0($3)
bgtz $3, TAG224
TAG224:
addiu $3, $3, 15
mtlo $3
divu $3, $3
bgtz $3, TAG225
TAG225:
sll $0, $0, 0
mfhi $4
bltz $1, TAG226
sw $4, 2($1)
TAG226:
addu $1, $4, $4
multu $4, $1
lui $3, 15
addiu $2, $3, 12
TAG227:
mflo $1
lui $1, 2
lui $3, 2
sll $0, $0, 0
TAG228:
mthi $4
multu $4, $4
lui $4, 2
sll $0, $0, 0
TAG229:
sll $0, $0, 0
mfhi $4
sw $4, 0($4)
mtlo $4
TAG230:
sllv $2, $4, $4
mtlo $4
bgez $2, TAG231
sh $4, 0($4)
TAG231:
sll $4, $2, 13
sh $4, 0($2)
beq $4, $4, TAG232
slti $1, $2, 4
TAG232:
sra $4, $1, 4
sb $4, 0($1)
addiu $3, $1, 3
mflo $4
TAG233:
bgtz $4, TAG234
lw $3, 0($4)
mthi $4
multu $3, $3
TAG234:
and $3, $3, $3
bne $3, $3, TAG235
mflo $2
bgez $2, TAG235
TAG235:
and $4, $2, $2
sh $4, 0($4)
sw $2, 0($2)
sw $2, 0($4)
TAG236:
mthi $4
bltz $4, TAG237
mult $4, $4
mflo $3
TAG237:
mtlo $3
sltu $4, $3, $3
lui $2, 15
sll $0, $0, 0
TAG238:
beq $2, $2, TAG239
lui $3, 1
subu $1, $2, $3
mflo $4
TAG239:
beq $4, $4, TAG240
srl $2, $4, 14
lui $3, 15
lui $2, 4
TAG240:
bne $2, $2, TAG241
mfhi $4
lw $3, 0($2)
bltz $3, TAG241
TAG241:
mthi $3
beq $3, $3, TAG242
mfhi $4
sllv $1, $4, $4
TAG242:
div $1, $1
andi $3, $1, 7
beq $3, $1, TAG243
sb $1, 0($3)
TAG243:
lui $1, 2
sra $3, $3, 4
sh $3, 0($3)
blez $3, TAG244
TAG244:
andi $1, $3, 15
bltz $1, TAG245
lh $4, 0($3)
or $4, $4, $4
TAG245:
lui $4, 7
lui $3, 2
lui $3, 3
or $3, $4, $3
TAG246:
sll $0, $0, 0
lui $4, 5
lui $1, 14
mtlo $4
TAG247:
xori $2, $1, 2
blez $2, TAG248
sll $0, $0, 0
bltz $1, TAG248
TAG248:
mthi $2
subu $2, $2, $2
add $4, $2, $2
slt $3, $4, $2
TAG249:
lh $4, 0($3)
bne $3, $3, TAG250
mfhi $2
bne $2, $4, TAG250
TAG250:
and $2, $2, $2
div $2, $2
mfhi $2
mthi $2
TAG251:
multu $2, $2
andi $4, $2, 8
lui $1, 3
beq $4, $1, TAG252
TAG252:
addu $1, $1, $1
srl $1, $1, 8
srav $2, $1, $1
addiu $3, $2, 10
TAG253:
sll $0, $0, 0
blez $3, TAG254
srav $2, $3, $3
mthi $3
TAG254:
beq $2, $2, TAG255
sb $2, 0($2)
beq $2, $2, TAG255
mthi $2
TAG255:
addiu $4, $2, 8
mfhi $4
sb $2, -1546($4)
lui $1, 3
TAG256:
sll $0, $0, 0
lui $4, 15
sll $0, $0, 0
mthi $4
TAG257:
div $1, $1
mtlo $1
bgtz $1, TAG258
divu $1, $1
TAG258:
bltz $1, TAG259
sll $0, $0, 0
blez $1, TAG259
mtlo $1
TAG259:
lui $1, 13
sll $0, $0, 0
mthi $1
blez $1, TAG260
TAG260:
sll $0, $0, 0
mflo $3
subu $1, $1, $1
sb $1, 0($1)
TAG261:
mtlo $1
mflo $4
slti $4, $1, 4
mflo $1
TAG262:
xor $3, $1, $1
slti $4, $1, 14
subu $4, $1, $4
sub $2, $1, $1
TAG263:
addiu $4, $2, 15
beq $2, $4, TAG264
lui $2, 9
div $2, $2
TAG264:
mflo $4
slti $1, $4, 15
lbu $4, 0($4)
xor $3, $2, $1
TAG265:
subu $1, $3, $3
sll $0, $0, 0
xor $3, $1, $3
sll $0, $0, 0
TAG266:
lbu $1, 0($4)
lui $2, 12
mthi $2
sll $0, $0, 0
TAG267:
addu $3, $1, $1
bgez $3, TAG268
sb $3, 0($1)
bne $3, $1, TAG268
TAG268:
sll $2, $3, 7
lui $3, 0
multu $3, $2
lui $4, 8
TAG269:
andi $2, $4, 12
divu $4, $4
andi $3, $4, 4
bgez $2, TAG270
TAG270:
andi $3, $3, 12
lh $4, 0($3)
xori $2, $3, 11
beq $2, $4, TAG271
TAG271:
lui $3, 11
bltz $2, TAG272
or $4, $2, $2
lbu $3, 0($2)
TAG272:
lhu $4, 0($3)
lhu $4, 0($3)
lui $3, 10
sll $0, $0, 0
TAG273:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
mfhi $4
TAG274:
blez $4, TAG275
andi $2, $4, 10
bgez $4, TAG275
lw $1, 0($4)
TAG275:
mtlo $1
sb $1, 0($1)
ori $2, $1, 0
sltiu $2, $1, 5
TAG276:
bgez $2, TAG277
xori $3, $2, 9
lbu $1, 0($2)
lui $4, 11
TAG277:
mflo $2
mult $4, $4
sub $3, $4, $2
mult $3, $2
TAG278:
nor $2, $3, $3
xori $1, $3, 10
bgez $3, TAG279
lh $3, 1($2)
TAG279:
sll $0, $0, 0
mfhi $2
lui $1, 3
mflo $1
TAG280:
sh $1, 0($1)
lbu $2, 0($1)
mthi $2
sw $1, 0($2)
TAG281:
mflo $2
mfhi $3
sh $2, 0($2)
lh $2, 0($3)
TAG282:
bne $2, $2, TAG283
sltu $1, $2, $2
bltz $1, TAG283
mthi $2
TAG283:
lui $1, 3
lui $4, 2
lui $4, 7
sll $0, $0, 0
TAG284:
mfhi $4
or $4, $3, $4
mthi $3
and $3, $4, $3
TAG285:
lw $3, 0($3)
lui $4, 13
and $1, $3, $3
blez $3, TAG286
TAG286:
andi $4, $1, 9
addi $3, $1, 15
lb $3, 0($1)
subu $3, $4, $1
TAG287:
mult $3, $3
lui $2, 6
multu $3, $3
or $2, $2, $2
TAG288:
lui $4, 9
lui $3, 3
sllv $1, $3, $3
bgtz $4, TAG289
TAG289:
lui $2, 0
bne $2, $1, TAG290
mult $2, $2
lbu $3, 0($2)
TAG290:
sll $0, $0, 0
addiu $2, $3, 10
subu $2, $3, $3
srl $4, $3, 6
TAG291:
lui $2, 15
multu $4, $4
lui $4, 11
beq $4, $4, TAG292
TAG292:
lui $1, 12
mfhi $3
bgez $4, TAG293
lb $3, 0($3)
TAG293:
mflo $3
beq $3, $3, TAG294
xori $4, $3, 0
bltz $4, TAG294
TAG294:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
lui $2, 5
TAG295:
sll $0, $0, 0
mtlo $1
lui $2, 7
bne $1, $2, TAG296
TAG296:
mthi $2
mtlo $2
beq $2, $2, TAG297
sra $1, $2, 6
TAG297:
addu $3, $1, $1
lui $1, 1
bne $1, $1, TAG298
sll $0, $0, 0
TAG298:
lui $3, 6
mflo $1
sll $0, $0, 0
mult $1, $1
TAG299:
bltz $2, TAG300
srl $3, $2, 7
mflo $2
lb $4, 0($2)
TAG300:
lhu $1, 0($4)
sh $4, 0($1)
bne $4, $4, TAG301
addi $1, $4, 3
TAG301:
bne $1, $1, TAG302
ori $1, $1, 15
beq $1, $1, TAG302
lui $1, 10
TAG302:
lui $4, 6
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG303:
lui $1, 1
sb $2, 0($2)
lui $1, 5
mfhi $3
TAG304:
sb $3, 0($3)
lb $4, 0($3)
lb $1, 0($4)
div $4, $3
TAG305:
mflo $3
lui $2, 7
lbu $2, 0($1)
bne $3, $2, TAG306
TAG306:
div $2, $2
bgtz $2, TAG307
lui $1, 5
mthi $1
TAG307:
lui $2, 15
bne $1, $1, TAG308
or $4, $1, $2
sll $0, $0, 0
TAG308:
lui $1, 6
sltiu $1, $2, 12
sw $2, 0($1)
sll $0, $0, 0
TAG309:
mtlo $1
beq $1, $1, TAG310
lh $2, 0($1)
lw $1, 0($1)
TAG310:
lui $2, 5
mthi $2
lui $4, 1
bne $2, $1, TAG311
TAG311:
mult $4, $4
addiu $3, $4, 10
div $4, $4
blez $3, TAG312
TAG312:
mtlo $3
bne $3, $3, TAG313
lui $3, 14
divu $3, $3
TAG313:
xori $2, $3, 6
sll $0, $0, 0
andi $1, $3, 10
sll $0, $0, 0
TAG314:
bltz $1, TAG315
mflo $1
beq $1, $1, TAG315
sb $1, 0($1)
TAG315:
lui $1, 0
lui $4, 3
mfhi $1
lh $2, 0($1)
TAG316:
addiu $4, $2, 9
lui $2, 11
srlv $2, $4, $2
lb $4, -265($4)
TAG317:
mfhi $1
bltz $4, TAG318
mthi $4
lui $2, 15
TAG318:
sllv $1, $2, $2
mult $1, $1
div $1, $2
srl $3, $1, 4
TAG319:
mthi $3
ori $3, $3, 5
lui $4, 14
mfhi $1
TAG320:
mfhi $3
slti $3, $1, 11
mult $3, $3
nor $2, $3, $3
TAG321:
ori $4, $2, 4
mflo $2
lbu $4, 0($2)
xori $3, $2, 5
TAG322:
subu $1, $3, $3
bltz $1, TAG323
multu $1, $1
mflo $2
TAG323:
mfhi $2
lbu $2, 0($2)
lui $2, 4
bne $2, $2, TAG324
TAG324:
mthi $2
sll $0, $0, 0
mtlo $2
mtlo $2
TAG325:
lui $3, 3
mthi $2
blez $3, TAG326
lui $4, 7
TAG326:
sll $0, $0, 0
sll $0, $0, 0
srav $4, $4, $1
divu $4, $4
TAG327:
sll $0, $0, 0
mthi $4
bne $4, $4, TAG328
sll $0, $0, 0
TAG328:
andi $1, $4, 3
addi $1, $1, 10
div $4, $4
subu $4, $1, $4
TAG329:
bgez $4, TAG330
mtlo $4
sll $0, $0, 0
mfhi $2
TAG330:
bltz $2, TAG331
slt $3, $2, $2
mfhi $1
bgtz $3, TAG331
TAG331:
mtlo $1
bne $1, $1, TAG332
lui $2, 4
bltz $1, TAG332
TAG332:
or $3, $2, $2
lui $3, 15
lui $4, 6
lui $2, 2
TAG333:
beq $2, $2, TAG334
sll $0, $0, 0
lbu $3, 0($2)
sra $3, $3, 15
TAG334:
lui $2, 8
multu $3, $3
beq $3, $2, TAG335
sra $2, $3, 15
TAG335:
sb $2, 0($2)
bne $2, $2, TAG336
subu $4, $2, $2
mthi $2
TAG336:
multu $4, $4
beq $4, $4, TAG337
sb $4, 0($4)
slti $2, $4, 14
TAG337:
andi $3, $2, 7
divu $3, $2
sra $3, $2, 15
xori $4, $2, 2
TAG338:
subu $1, $4, $4
lw $4, 0($1)
mfhi $2
beq $4, $4, TAG339
TAG339:
mthi $2
blez $2, TAG340
mtlo $2
mtlo $2
TAG340:
lui $4, 2
bgez $2, TAG341
and $3, $2, $2
mtlo $3
TAG341:
lh $1, 0($3)
mthi $1
mflo $4
and $4, $3, $3
TAG342:
divu $4, $4
bgez $4, TAG343
andi $2, $4, 12
addi $3, $4, 3
TAG343:
sh $3, 0($3)
lui $3, 1
mtlo $3
sll $0, $0, 0
TAG344:
subu $1, $3, $3
mult $1, $3
mult $3, $1
slti $1, $1, 14
TAG345:
subu $3, $1, $1
lui $3, 10
subu $3, $3, $3
sb $3, 0($3)
TAG346:
nor $4, $3, $3
addu $1, $3, $4
mthi $1
bne $1, $3, TAG347
TAG347:
lui $1, 14
sll $0, $0, 0
lui $1, 11
addu $4, $1, $1
TAG348:
addu $4, $4, $4
divu $4, $4
mfhi $4
andi $3, $4, 5
TAG349:
slti $2, $3, 4
sub $3, $3, $3
bgez $3, TAG350
lui $4, 0
TAG350:
bne $4, $4, TAG351
mult $4, $4
lui $2, 10
blez $2, TAG351
TAG351:
xor $1, $2, $2
mtlo $2
sltiu $4, $2, 3
beq $1, $4, TAG352
TAG352:
lui $1, 10
mtlo $4
addu $3, $1, $4
mflo $2
TAG353:
sllv $2, $2, $2
multu $2, $2
multu $2, $2
bne $2, $2, TAG354
TAG354:
sllv $3, $2, $2
mflo $4
mflo $3
sh $4, 0($2)
TAG355:
ori $3, $3, 4
sh $3, 0($3)
mtlo $3
bgtz $3, TAG356
TAG356:
addiu $4, $3, 1
blez $4, TAG357
xori $3, $3, 13
bgtz $4, TAG357
TAG357:
lui $1, 6
sll $0, $0, 0
mult $1, $4
div $3, $3
TAG358:
bgez $4, TAG359
mflo $2
lw $2, 0($4)
sw $2, 0($2)
TAG359:
addu $1, $2, $2
sb $1, 0($2)
lb $4, 0($1)
mult $1, $2
TAG360:
lui $2, 3
mtlo $4
mtlo $2
beq $2, $4, TAG361
TAG361:
sll $3, $2, 9
bltz $3, TAG362
div $2, $2
mult $3, $3
TAG362:
sll $0, $0, 0
mthi $3
mthi $3
div $3, $3
TAG363:
mthi $3
bgez $3, TAG364
or $1, $3, $3
mflo $4
TAG364:
beq $4, $4, TAG365
lui $2, 13
lh $1, 0($4)
mthi $2
TAG365:
mtlo $1
bne $1, $1, TAG366
mtlo $1
mthi $1
TAG366:
beq $1, $1, TAG367
mflo $3
multu $1, $3
lui $3, 6
TAG367:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
multu $3, $3
TAG368:
sra $1, $4, 5
sb $1, 0($4)
lb $2, 0($4)
div $4, $4
TAG369:
mflo $3
sh $3, 0($2)
sb $3, 0($3)
mflo $4
TAG370:
mult $4, $4
beq $4, $4, TAG371
lui $1, 0
sltiu $1, $1, 4
TAG371:
add $4, $1, $1
slti $2, $1, 3
ori $3, $2, 10
multu $1, $1
TAG372:
mflo $4
bgez $3, TAG373
sra $4, $3, 4
lbu $3, 0($3)
TAG373:
sll $3, $3, 10
sh $3, -11264($3)
andi $2, $3, 2
lui $1, 6
TAG374:
sll $1, $1, 13
mtlo $1
srav $3, $1, $1
addu $3, $1, $1
TAG375:
mtlo $3
bne $3, $3, TAG376
lui $2, 12
beq $3, $2, TAG376
TAG376:
lui $1, 13
sll $0, $0, 0
andi $3, $2, 6
sll $0, $0, 0
TAG377:
ori $4, $3, 7
mthi $3
lhu $2, 0($3)
mflo $2
TAG378:
mult $2, $2
xor $3, $2, $2
sltiu $4, $2, 13
mfhi $4
TAG379:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG380
TAG380:
lui $2, 2
bne $4, $2, TAG381
subu $3, $4, $2
mflo $1
TAG381:
mthi $1
blez $1, TAG382
mfhi $4
sll $0, $0, 0
TAG382:
mfhi $1
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG383:
sra $3, $1, 15
bgez $3, TAG384
lui $4, 0
mflo $2
TAG384:
addiu $4, $2, 0
divu $4, $4
mflo $2
sra $4, $4, 1
TAG385:
bgtz $4, TAG386
lui $4, 6
lbu $1, 0($4)
sllv $4, $1, $1
TAG386:
lui $4, 12
mtlo $4
multu $4, $4
bne $4, $4, TAG387
TAG387:
sll $0, $0, 0
xori $3, $3, 4
bltz $3, TAG388
mthi $4
TAG388:
sh $3, 0($3)
addu $3, $3, $3
beq $3, $3, TAG389
sh $3, 0($3)
TAG389:
beq $3, $3, TAG390
lh $4, 0($3)
lbu $3, 0($3)
mult $3, $3
TAG390:
mult $3, $3
lh $1, 0($3)
subu $3, $1, $1
sra $4, $1, 2
TAG391:
sltu $2, $4, $4
sb $4, 0($4)
mtlo $2
mthi $2
TAG392:
lb $2, 0($2)
bltz $2, TAG393
lui $3, 6
subu $1, $2, $2
TAG393:
lh $3, 0($1)
mfhi $4
srav $2, $4, $3
add $1, $4, $2
TAG394:
lui $4, 9
mtlo $4
divu $4, $4
sb $4, 0($1)
TAG395:
bgtz $4, TAG396
lui $3, 10
lui $3, 9
mult $4, $3
TAG396:
ori $4, $3, 7
sllv $4, $3, $3
beq $4, $3, TAG397
lui $1, 5
TAG397:
xori $1, $1, 6
lui $4, 15
blez $4, TAG398
mthi $1
TAG398:
sll $0, $0, 0
slti $4, $4, 6
sb $4, 0($4)
mult $4, $4
TAG399:
lui $3, 7
ori $3, $3, 10
slti $1, $3, 6
sw $3, 0($1)
TAG400:
slti $2, $1, 4
bgez $1, TAG401
sw $2, 0($1)
lui $4, 4
TAG401:
multu $4, $4
beq $4, $4, TAG402
mult $4, $4
lw $4, 0($4)
TAG402:
mult $4, $4
blez $4, TAG403
mtlo $4
mtlo $4
TAG403:
mult $4, $4
lui $4, 3
addiu $4, $4, 10
addiu $4, $4, 1
TAG404:
bgez $4, TAG405
mult $4, $4
bne $4, $4, TAG405
sb $4, 0($4)
TAG405:
sra $2, $4, 11
sllv $2, $2, $2
mtlo $2
beq $2, $2, TAG406
TAG406:
multu $2, $2
mfhi $4
bltz $4, TAG407
ori $1, $2, 0
TAG407:
addu $1, $1, $1
divu $1, $1
mfhi $1
sb $1, 0($1)
TAG408:
mflo $2
mtlo $1
blez $1, TAG409
slti $2, $1, 12
TAG409:
mult $2, $2
sltiu $3, $2, 15
lui $1, 10
mfhi $4
TAG410:
mult $4, $4
addu $4, $4, $4
bne $4, $4, TAG411
lui $1, 8
TAG411:
mtlo $1
mthi $1
lui $3, 8
lui $3, 8
TAG412:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
multu $3, $4
TAG413:
lw $4, 0($4)
lui $2, 8
lbu $2, 0($4)
bgez $2, TAG414
TAG414:
mflo $1
sw $2, 0($1)
mtlo $2
sh $2, 0($1)
TAG415:
mthi $1
mflo $1
mtlo $1
sub $3, $1, $1
TAG416:
lw $2, 0($3)
bne $2, $2, TAG417
mult $3, $2
mfhi $1
TAG417:
mthi $1
mfhi $3
multu $1, $3
multu $1, $1
TAG418:
beq $3, $3, TAG419
slt $4, $3, $3
div $4, $4
lui $3, 7
TAG419:
xori $2, $3, 6
mtlo $2
mult $3, $2
mfhi $3
TAG420:
xori $4, $3, 8
sw $4, 0($3)
sb $3, 0($4)
sb $3, 0($4)
TAG421:
bgez $4, TAG422
lw $1, 0($4)
lb $4, 0($1)
div $1, $1
TAG422:
bgtz $4, TAG423
and $3, $4, $4
lui $2, 8
andi $1, $4, 10
TAG423:
lui $3, 14
bltz $3, TAG424
addiu $1, $1, 12
bgez $1, TAG424
TAG424:
mflo $2
bgez $1, TAG425
lui $3, 11
mflo $4
TAG425:
beq $4, $4, TAG426
lui $3, 9
bltz $4, TAG426
sh $3, 0($3)
TAG426:
ori $4, $3, 3
mfhi $3
addiu $1, $3, 3
mflo $1
TAG427:
sh $1, 0($1)
blez $1, TAG428
mfhi $3
multu $3, $3
TAG428:
sb $3, 0($3)
multu $3, $3
lui $3, 14
sll $0, $0, 0
TAG429:
xori $1, $3, 9
addiu $3, $3, 6
lui $1, 7
mtlo $1
TAG430:
mfhi $3
lui $2, 4
slt $1, $3, $2
mthi $2
TAG431:
bltz $1, TAG432
sltu $2, $1, $1
bgtz $2, TAG432
sw $1, 0($2)
TAG432:
lui $2, 4
mflo $4
div $2, $2
beq $2, $2, TAG433
TAG433:
sll $0, $0, 0
sll $0, $0, 0
xori $4, $4, 14
divu $4, $4
TAG434:
beq $4, $4, TAG435
lui $3, 7
bgez $3, TAG435
lw $3, 0($4)
TAG435:
sll $0, $0, 0
bltz $1, TAG436
lbu $3, 0($1)
mult $3, $1
TAG436:
xori $4, $3, 14
mult $4, $4
sltiu $1, $4, 12
multu $4, $1
TAG437:
bltz $1, TAG438
lbu $4, 0($1)
mtlo $4
mflo $4
TAG438:
addiu $4, $4, 3
div $4, $4
lw $2, 0($4)
multu $4, $4
TAG439:
bgtz $2, TAG440
div $2, $2
divu $2, $2
sra $4, $2, 11
TAG440:
lb $4, 0($4)
sra $2, $4, 4
sh $2, 0($4)
bgez $4, TAG441
TAG441:
slt $1, $2, $2
mtlo $1
sh $1, 0($2)
multu $1, $1
TAG442:
lui $4, 10
lh $3, 0($1)
bne $1, $4, TAG443
mtlo $3
TAG443:
sh $3, 0($3)
bltz $3, TAG444
sw $3, 0($3)
mult $3, $3
TAG444:
lb $1, 0($3)
lbu $4, 0($3)
add $1, $3, $3
slt $2, $4, $1
TAG445:
addi $3, $2, 3
mthi $2
mthi $3
mthi $2
TAG446:
lui $1, 9
beq $3, $1, TAG447
sll $2, $3, 3
beq $1, $3, TAG447
TAG447:
mthi $2
mthi $2
multu $2, $2
mfhi $1
TAG448:
mthi $1
sll $4, $1, 15
sltiu $2, $1, 14
sb $4, 0($2)
TAG449:
sll $2, $2, 6
mflo $1
srav $2, $2, $1
xori $1, $2, 7
TAG450:
divu $1, $1
addiu $1, $1, 3
mflo $1
blez $1, TAG451
TAG451:
sb $1, 0($1)
mthi $1
bgez $1, TAG452
lb $2, 0($1)
TAG452:
srl $1, $2, 8
mult $2, $1
mflo $1
beq $2, $1, TAG453
TAG453:
lw $3, 0($1)
lw $2, 0($1)
beq $1, $3, TAG454
addiu $1, $2, 10
TAG454:
mult $1, $1
lui $3, 10
bgtz $3, TAG455
sh $3, -266($1)
TAG455:
mflo $1
div $3, $3
sll $0, $0, 0
beq $1, $1, TAG456
TAG456:
mthi $1
lui $2, 5
multu $1, $2
lui $3, 0
TAG457:
mult $3, $3
nor $2, $3, $3
blez $2, TAG458
lui $1, 10
TAG458:
sll $0, $0, 0
mtlo $1
bltz $1, TAG459
mthi $2
TAG459:
lui $1, 5
sll $0, $0, 0
blez $1, TAG460
lui $2, 9
TAG460:
div $2, $2
sltu $3, $2, $2
sltiu $1, $2, 0
blez $3, TAG461
TAG461:
mflo $2
mflo $4
srlv $3, $1, $4
mtlo $3
TAG462:
xor $4, $3, $3
mult $3, $3
mflo $2
mult $2, $4
TAG463:
sltu $4, $2, $2
lui $2, 7
mtlo $2
beq $2, $2, TAG464
TAG464:
slt $4, $2, $2
sb $2, 0($4)
lui $1, 0
lhu $3, 0($4)
TAG465:
bgtz $3, TAG466
sllv $3, $3, $3
multu $3, $3
lui $3, 6
TAG466:
srl $3, $3, 14
blez $3, TAG467
mult $3, $3
bne $3, $3, TAG467
TAG467:
slt $2, $3, $3
lbu $2, 0($3)
mflo $4
beq $2, $3, TAG468
TAG468:
mthi $4
bltz $4, TAG469
lui $4, 7
sll $0, $0, 0
TAG469:
lui $3, 0
mflo $2
srlv $2, $3, $2
lh $1, 0($3)
TAG470:
mtlo $1
mthi $1
lui $4, 2
bgez $1, TAG471
TAG471:
xor $1, $4, $4
bne $4, $4, TAG472
mfhi $2
mfhi $4
TAG472:
lh $2, 0($4)
and $2, $4, $2
multu $4, $2
mult $2, $4
TAG473:
bgez $2, TAG474
lui $1, 8
add $1, $2, $1
bgtz $1, TAG474
TAG474:
divu $1, $1
sll $0, $0, 0
multu $1, $3
mfhi $1
TAG475:
sh $1, 0($1)
andi $1, $1, 1
lui $1, 2
sll $0, $0, 0
TAG476:
mflo $2
sll $0, $0, 0
sltu $1, $1, $1
sw $1, 0($1)
TAG477:
beq $1, $1, TAG478
mult $1, $1
beq $1, $1, TAG478
div $1, $1
TAG478:
bgez $1, TAG479
mflo $1
srav $3, $1, $1
addiu $2, $3, 3
TAG479:
lui $4, 2
nor $1, $2, $2
multu $4, $2
mtlo $4
TAG480:
blez $1, TAG481
lh $1, 1($1)
addu $4, $1, $1
or $1, $1, $1
TAG481:
and $2, $1, $1
sb $2, 0($2)
lui $4, 10
slt $4, $1, $1
TAG482:
xori $4, $4, 0
bne $4, $4, TAG483
nor $1, $4, $4
srav $4, $4, $4
TAG483:
sw $4, 0($4)
sh $4, 0($4)
mult $4, $4
bltz $4, TAG484
TAG484:
sltiu $4, $4, 9
andi $3, $4, 10
andi $4, $3, 9
multu $4, $4
TAG485:
bne $4, $4, TAG486
mtlo $4
multu $4, $4
beq $4, $4, TAG486
TAG486:
sb $4, 0($4)
srav $1, $4, $4
sh $1, 0($1)
bgtz $4, TAG487
TAG487:
mtlo $1
lui $2, 11
lui $4, 9
bne $2, $4, TAG488
TAG488:
mthi $4
slti $2, $4, 3
bgtz $4, TAG489
divu $4, $4
TAG489:
sll $1, $2, 0
lui $1, 8
nor $1, $2, $1
blez $2, TAG490
TAG490:
sll $0, $0, 0
beq $1, $1, TAG491
srlv $2, $1, $1
mflo $4
TAG491:
sll $0, $0, 0
xor $4, $4, $4
lhu $1, 0($4)
blez $4, TAG492
TAG492:
lui $2, 12
sll $0, $0, 0
mflo $3
bltz $2, TAG493
TAG493:
lui $3, 13
mflo $1
slt $2, $3, $3
lbu $1, 0($1)
TAG494:
lh $3, 0($1)
mflo $3
mult $3, $1
beq $3, $1, TAG495
TAG495:
lui $4, 9
bltz $4, TAG496
mfhi $1
sll $0, $0, 0
TAG496:
mult $1, $1
lui $4, 8
sll $0, $0, 0
beq $1, $4, TAG497
TAG497:
sll $0, $0, 0
bne $4, $4, TAG498
mfhi $1
sll $0, $0, 0
TAG498:
addi $2, $1, 3
lhu $2, 0($1)
andi $4, $1, 14
lui $2, 4
TAG499:
bne $2, $2, TAG500
srlv $2, $2, $2
sll $0, $0, 0
bne $2, $2, TAG500
TAG500:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
subu $1, $2, $2
TAG501:
mflo $1
andi $1, $1, 4
sb $1, 0($1)
bgez $1, TAG502
TAG502:
mult $1, $1
lw $4, 0($1)
mthi $4
mtlo $4
TAG503:
sh $4, 0($4)
srlv $1, $4, $4
lui $3, 8
bne $1, $4, TAG504
TAG504:
mthi $3
ori $2, $3, 10
mflo $3
multu $3, $3
TAG505:
lui $3, 7
sll $0, $0, 0
beq $3, $3, TAG506
mfhi $4
TAG506:
multu $4, $4
lui $3, 11
bne $3, $3, TAG507
lhu $1, 0($4)
TAG507:
bgez $1, TAG508
multu $1, $1
divu $1, $1
sh $1, 0($1)
TAG508:
sra $3, $1, 0
mflo $4
lhu $3, 0($4)
bltz $1, TAG509
TAG509:
mult $3, $3
beq $3, $3, TAG510
mfhi $4
lui $1, 6
TAG510:
beq $1, $1, TAG511
sb $1, 0($1)
sh $1, 0($1)
lhu $3, 0($1)
TAG511:
bgez $3, TAG512
lb $4, 0($3)
bltz $3, TAG512
sub $3, $4, $3
TAG512:
bgtz $3, TAG513
mfhi $4
ori $1, $3, 15
sltu $2, $1, $1
TAG513:
bgez $2, TAG514
mthi $2
addi $3, $2, 15
multu $2, $2
TAG514:
bgtz $3, TAG515
lbu $3, 0($3)
srl $1, $3, 10
mthi $3
TAG515:
lui $3, 2
mfhi $1
bgez $3, TAG516
multu $1, $1
TAG516:
lh $4, 0($1)
beq $4, $1, TAG517
lh $3, 0($1)
sll $1, $3, 14
TAG517:
sb $1, 0($1)
lui $1, 7
bltz $1, TAG518
multu $1, $1
TAG518:
sll $0, $0, 0
mtlo $1
div $1, $1
sll $0, $0, 0
TAG519:
sh $4, 0($4)
bne $4, $4, TAG520
sub $4, $4, $4
beq $4, $4, TAG520
TAG520:
srlv $3, $4, $4
and $4, $3, $3
blez $3, TAG521
lui $1, 6
TAG521:
mtlo $1
mflo $3
mflo $4
sll $0, $0, 0
TAG522:
beq $2, $2, TAG523
lui $2, 9
mfhi $3
mfhi $3
TAG523:
lui $4, 15
mult $4, $3
beq $3, $3, TAG524
slti $1, $3, 6
TAG524:
sw $1, 0($1)
lui $1, 5
bne $1, $1, TAG525
lui $3, 3
TAG525:
sll $0, $0, 0
sltu $3, $3, $3
nor $4, $3, $3
mtlo $4
TAG526:
mfhi $4
mthi $4
sb $4, 0($4)
bgtz $4, TAG527
TAG527:
mfhi $4
lui $2, 4
srav $4, $4, $4
bgez $2, TAG528
TAG528:
mflo $1
mfhi $3
sll $1, $4, 12
lhu $4, 0($1)
TAG529:
mflo $1
lui $1, 7
and $2, $1, $1
beq $1, $1, TAG530
TAG530:
srl $3, $2, 15
sltiu $3, $3, 2
xor $3, $3, $3
sltu $2, $2, $2
TAG531:
mfhi $4
bltz $4, TAG532
mthi $2
bne $4, $2, TAG532
TAG532:
mflo $3
mult $4, $4
div $4, $3
subu $2, $3, $4
TAG533:
sh $2, 91($2)
or $2, $2, $2
beq $2, $2, TAG534
lui $1, 1
TAG534:
mfhi $4
divu $4, $1
srav $2, $1, $4
sll $0, $0, 0
TAG535:
multu $2, $2
lui $4, 9
xori $2, $4, 4
beq $4, $2, TAG536
TAG536:
mflo $4
div $2, $2
sh $2, 0($4)
mthi $4
TAG537:
mtlo $4
lw $4, 0($4)
beq $4, $4, TAG538
xor $3, $4, $4
TAG538:
sh $3, 0($3)
xori $3, $3, 13
lb $2, 0($3)
multu $2, $2
TAG539:
sb $2, 0($2)
slt $3, $2, $2
mfhi $4
srl $3, $2, 12
TAG540:
mtlo $3
mthi $3
xori $1, $3, 6
sb $3, 0($3)
TAG541:
andi $2, $1, 5
bltz $2, TAG542
divu $1, $1
lui $1, 11
TAG542:
mthi $1
beq $1, $1, TAG543
sltu $1, $1, $1
lui $2, 15
TAG543:
lui $3, 12
mflo $3
bgtz $2, TAG544
multu $3, $3
TAG544:
bne $3, $3, TAG545
lbu $2, 0($3)
lui $1, 6
mthi $1
TAG545:
bgez $1, TAG546
sll $0, $0, 0
lui $3, 13
xor $1, $3, $3
TAG546:
blez $1, TAG547
mtlo $1
lui $3, 11
mflo $1
TAG547:
sll $0, $0, 0
nor $2, $1, $1
mfhi $2
srl $2, $2, 10
TAG548:
mflo $3
sll $0, $0, 0
mflo $4
addiu $4, $2, 8
TAG549:
div $4, $4
andi $2, $4, 7
mflo $1
lui $3, 9
TAG550:
and $2, $3, $3
lui $4, 9
bgez $3, TAG551
lui $3, 6
TAG551:
mult $3, $3
andi $4, $3, 4
sh $4, 0($4)
sw $3, 0($4)
TAG552:
xori $1, $4, 12
mult $1, $1
bltz $4, TAG553
andi $3, $4, 12
TAG553:
slt $1, $3, $3
mthi $1
mthi $3
sltiu $3, $1, 13
TAG554:
bgtz $3, TAG555
mtlo $3
lbu $2, 0($3)
bgez $2, TAG555
TAG555:
mflo $2
beq $2, $2, TAG556
lui $2, 3
lui $1, 15
TAG556:
mult $1, $1
blez $1, TAG557
subu $4, $1, $1
mfhi $3
TAG557:
mthi $3
bltz $3, TAG558
addu $4, $3, $3
xor $2, $3, $4
TAG558:
addiu $1, $2, 14
bne $2, $1, TAG559
lui $3, 11
lh $2, 0($3)
TAG559:
subu $1, $2, $2
mult $1, $2
sllv $4, $2, $1
lbu $2, 0($2)
TAG560:
bgtz $2, TAG561
mult $2, $2
lui $3, 4
multu $3, $2
TAG561:
slt $1, $3, $3
sll $0, $0, 0
sw $3, 0($1)
mfhi $3
TAG562:
lui $2, 0
multu $2, $3
lb $3, 0($3)
bltz $3, TAG563
TAG563:
sh $3, 0($3)
addiu $2, $3, 12
div $2, $2
lb $2, 0($2)
TAG564:
lbu $1, 0($2)
multu $1, $1
lbu $2, 0($2)
lui $2, 11
TAG565:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
lui $3, 13
TAG566:
subu $3, $3, $3
lhu $4, 0($3)
mfhi $2
mult $3, $4
TAG567:
lui $4, 8
beq $4, $2, TAG568
mflo $1
lui $3, 11
TAG568:
bne $3, $3, TAG569
sll $3, $3, 14
sll $0, $0, 0
sltu $3, $1, $3
TAG569:
sb $3, 0($3)
blez $3, TAG570
lbu $3, 0($3)
sb $3, 0($3)
TAG570:
mthi $3
slt $2, $3, $3
sllv $3, $2, $2
mthi $3
TAG571:
lw $1, 0($3)
sll $0, $0, 0
sll $0, $0, 0
lui $2, 13
TAG572:
sltu $1, $2, $2
mthi $1
lui $4, 1
mfhi $3
TAG573:
xor $2, $3, $3
mult $3, $2
bne $2, $3, TAG574
xor $1, $2, $3
TAG574:
beq $1, $1, TAG575
mtlo $1
mtlo $1
mthi $1
TAG575:
mult $1, $1
lui $1, 11
xor $3, $1, $1
blez $3, TAG576
TAG576:
multu $3, $3
slti $1, $3, 12
bne $3, $1, TAG577
lbu $2, 0($3)
TAG577:
nor $1, $2, $2
lui $2, 14
mthi $2
srl $2, $1, 6
TAG578:
sll $0, $0, 0
beq $2, $2, TAG579
mfhi $1
lbu $1, 0($1)
TAG579:
beq $1, $1, TAG580
mflo $2
bne $1, $1, TAG580
mfhi $1
TAG580:
div $1, $1
sltu $3, $1, $1
mflo $2
sltiu $4, $2, 13
TAG581:
bne $4, $4, TAG582
lbu $3, 0($4)
and $4, $3, $4
lbu $2, 0($4)
TAG582:
mflo $1
mflo $2
mthi $1
lb $3, 0($2)
TAG583:
blez $3, TAG584
sb $3, 0($3)
mthi $3
srlv $4, $3, $3
TAG584:
sltiu $1, $4, 13
addu $4, $1, $4
bne $4, $4, TAG585
subu $3, $4, $4
TAG585:
lui $1, 6
nor $3, $3, $3
mflo $4
sllv $2, $4, $3
TAG586:
sll $3, $2, 15
lui $4, 13
mthi $4
andi $1, $3, 9
TAG587:
multu $1, $1
srl $2, $1, 5
beq $2, $1, TAG588
slt $2, $2, $2
TAG588:
srav $1, $2, $2
lui $3, 11
beq $1, $3, TAG589
lh $2, 0($1)
TAG589:
sh $2, -256($2)
addiu $2, $2, 6
and $1, $2, $2
bgez $2, TAG590
TAG590:
or $2, $1, $1
mtlo $1
lbu $1, -262($1)
mfhi $1
TAG591:
bgtz $1, TAG592
mult $1, $1
mult $1, $1
bgez $1, TAG592
TAG592:
sb $1, 0($1)
sh $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG593
TAG593:
lui $3, 9
bne $3, $1, TAG594
mult $1, $3
ori $4, $1, 12
TAG594:
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
xori $4, $4, 5
TAG595:
srl $1, $4, 14
subu $1, $1, $1
mthi $4
bgtz $1, TAG596
TAG596:
lui $3, 7
sw $3, 0($1)
beq $1, $1, TAG597
lui $4, 0
TAG597:
sw $4, 0($4)
mfhi $4
sll $0, $0, 0
mthi $4
TAG598:
srav $2, $4, $4
sll $0, $0, 0
mfhi $2
mult $2, $4
TAG599:
mtlo $2
lui $4, 2
sll $0, $0, 0
andi $4, $4, 9
TAG600:
multu $4, $4
mflo $3
mthi $4
sw $4, 0($4)
TAG601:
sra $1, $3, 11
xor $1, $3, $3
mfhi $2
blez $2, TAG602
TAG602:
sb $2, 0($2)
mflo $2
mtlo $2
sw $2, 0($2)
TAG603:
sw $2, 0($2)
beq $2, $2, TAG604
addi $2, $2, 0
mthi $2
TAG604:
sh $2, 0($2)
addiu $1, $2, 0
lb $2, 0($2)
mtlo $2
TAG605:
multu $2, $2
subu $2, $2, $2
xori $4, $2, 4
lui $2, 7
TAG606:
bne $2, $2, TAG607
mthi $2
lui $1, 1
sltiu $1, $1, 2
TAG607:
mthi $1
addiu $2, $1, 9
sh $2, 0($1)
andi $2, $1, 3
TAG608:
mult $2, $2
lhu $3, 0($2)
multu $2, $3
lui $3, 6
TAG609:
addiu $4, $3, 13
divu $4, $4
blez $3, TAG610
mfhi $2
TAG610:
lbu $1, 0($2)
bne $1, $2, TAG611
multu $1, $2
slt $3, $1, $2
TAG611:
beq $3, $3, TAG612
sll $0, $0, 0
addiu $2, $3, 7
lui $4, 2
TAG612:
mflo $3
lw $1, 0($3)
beq $4, $3, TAG613
div $3, $1
TAG613:
bne $1, $1, TAG614
mult $1, $1
bne $1, $1, TAG614
mtlo $1
TAG614:
beq $1, $1, TAG615
mult $1, $1
sb $1, 0($1)
bgtz $1, TAG615
TAG615:
lb $1, 0($1)
bltz $1, TAG616
mult $1, $1
xori $2, $1, 15
TAG616:
nor $1, $2, $2
sb $1, 16($1)
mthi $1
ori $4, $1, 7
TAG617:
mtlo $4
sb $4, 9($4)
div $4, $4
lui $2, 8
TAG618:
sll $0, $0, 0
lui $3, 6
mtlo $3
mflo $3
TAG619:
multu $3, $3
div $3, $3
mfhi $2
mtlo $3
TAG620:
bgez $2, TAG621
lh $1, 0($2)
mtlo $1
lui $1, 12
TAG621:
sll $0, $0, 0
lh $2, 0($2)
mtlo $2
div $2, $2
TAG622:
blez $2, TAG623
lbu $1, -247($2)
addu $2, $1, $1
blez $2, TAG623
TAG623:
sll $0, $0, 0
srlv $3, $2, $2
mfhi $4
lw $1, 0($3)
TAG624:
srl $4, $1, 1
addu $2, $4, $4
div $1, $2
bne $4, $1, TAG625
TAG625:
sh $2, -246($2)
nor $1, $2, $2
mult $1, $1
lb $2, 247($1)
TAG626:
sb $2, 10($2)
srlv $4, $2, $2
mflo $4
lui $2, 14
TAG627:
subu $4, $2, $2
add $1, $4, $4
mflo $1
multu $1, $4
TAG628:
addiu $2, $1, 6
mthi $1
mult $1, $1
sll $0, $0, 0
TAG629:
mfhi $4
or $4, $3, $4
srl $3, $4, 10
lhu $2, 0($3)
TAG630:
sllv $3, $2, $2
lh $1, -246($2)
sll $2, $3, 8
mfhi $1
TAG631:
xori $4, $1, 12
lui $3, 4
bgtz $3, TAG632
mflo $4
TAG632:
bgtz $4, TAG633
mfhi $3
multu $3, $4
sll $0, $0, 0
TAG633:
subu $3, $2, $2
lw $2, 0($3)
nor $4, $2, $2
lui $4, 0
TAG634:
sw $4, 0($4)
lui $1, 9
srav $2, $4, $1
mflo $2
TAG635:
bgtz $2, TAG636
mult $2, $2
srav $2, $2, $2
lui $1, 8
TAG636:
subu $4, $1, $1
mthi $4
lui $2, 12
mthi $2
TAG637:
beq $2, $2, TAG638
mthi $2
mflo $1
mfhi $3
TAG638:
lui $4, 11
addi $1, $3, 13
lui $4, 9
mfhi $1
TAG639:
sll $0, $0, 0
srav $3, $1, $4
subu $2, $1, $3
sll $0, $0, 0
TAG640:
mthi $3
multu $3, $3
srl $1, $3, 3
multu $1, $1
TAG641:
lui $4, 2
bgez $1, TAG642
sll $0, $0, 0
lui $1, 15
TAG642:
lui $2, 1
mthi $1
blez $2, TAG643
lui $2, 11
TAG643:
divu $2, $2
addiu $2, $2, 0
sll $0, $0, 0
xor $2, $2, $3
TAG644:
sll $3, $2, 6
sll $0, $0, 0
mfhi $1
nor $1, $3, $1
TAG645:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
mflo $2
TAG646:
mflo $2
multu $2, $2
multu $2, $2
mfhi $4
TAG647:
mthi $4
sub $2, $4, $4
mtlo $4
add $2, $2, $4
TAG648:
bne $2, $2, TAG649
sh $2, 0($2)
beq $2, $2, TAG649
srl $3, $2, 9
TAG649:
blez $3, TAG650
lh $1, 0($3)
lui $1, 4
ori $2, $3, 3
TAG650:
bgtz $2, TAG651
sw $2, 0($2)
mfhi $3
blez $2, TAG651
TAG651:
sb $3, 0($3)
mtlo $3
sb $3, 0($3)
mtlo $3
TAG652:
sh $3, 0($3)
multu $3, $3
lbu $1, 0($3)
lhu $4, 0($1)
TAG653:
mflo $4
sw $4, 0($4)
bne $4, $4, TAG654
addi $1, $4, 1
TAG654:
srlv $3, $1, $1
mfhi $2
mflo $3
beq $3, $3, TAG655
TAG655:
mthi $3
mtlo $3
xori $1, $3, 14
bgez $3, TAG656
TAG656:
xor $1, $1, $1
beq $1, $1, TAG657
lb $3, 0($1)
bne $1, $1, TAG657
TAG657:
sb $3, 0($3)
lui $4, 13
lui $2, 5
lhu $4, 0($3)
TAG658:
srlv $2, $4, $4
bne $2, $4, TAG659
sb $4, 0($4)
beq $2, $2, TAG659
TAG659:
sub $1, $2, $2
nor $2, $1, $2
mfhi $2
bne $1, $1, TAG660
TAG660:
srlv $2, $2, $2
xori $2, $2, 11
lb $2, 0($2)
beq $2, $2, TAG661
TAG661:
sb $2, 0($2)
lui $2, 2
bgez $2, TAG662
sll $0, $0, 0
TAG662:
sll $0, $0, 0
sll $0, $0, 0
sh $2, 0($4)
bgez $2, TAG663
TAG663:
mfhi $3
sll $2, $3, 8
mtlo $2
mthi $3
TAG664:
mfhi $1
bne $1, $2, TAG665
mthi $1
bgez $1, TAG665
TAG665:
mthi $1
lui $3, 14
mfhi $2
lui $1, 7
TAG666:
lui $3, 3
sll $0, $0, 0
lui $2, 8
sra $4, $2, 15
TAG667:
sb $4, 0($4)
bgez $4, TAG668
nor $1, $4, $4
lh $4, 0($1)
TAG668:
addiu $1, $4, 4
mthi $4
divu $1, $1
mflo $1
TAG669:
blez $1, TAG670
lui $4, 14
mflo $2
lui $1, 13
TAG670:
sll $3, $1, 5
div $3, $3
bgtz $1, TAG671
mtlo $3
TAG671:
bgtz $3, TAG672
addiu $3, $3, 1
mfhi $2
mflo $3
TAG672:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $3, 12
TAG673:
mfhi $2
blez $2, TAG674
multu $3, $2
div $2, $3
TAG674:
sh $2, 0($2)
mfhi $2
bne $2, $2, TAG675
srl $2, $2, 13
TAG675:
lh $2, 0($2)
lb $3, 0($2)
lw $3, 0($2)
lb $1, 0($3)
TAG676:
sb $1, 0($1)
mult $1, $1
sb $1, 0($1)
lh $4, 0($1)
TAG677:
sw $4, 0($4)
multu $4, $4
lbu $1, 0($4)
lh $1, 0($1)
TAG678:
multu $1, $1
multu $1, $1
lh $2, 0($1)
lui $1, 3
TAG679:
sll $0, $0, 0
mfhi $3
or $4, $3, $2
lui $3, 7
TAG680:
lui $4, 13
lui $2, 12
bne $3, $4, TAG681
sll $0, $0, 0
TAG681:
mthi $2
slt $2, $2, $2
lui $2, 5
srlv $1, $2, $2
TAG682:
mflo $3
lui $2, 3
bgtz $2, TAG683
multu $3, $3
TAG683:
sll $0, $0, 0
sllv $3, $2, $4
div $3, $3
sll $0, $0, 0
TAG684:
lui $3, 10
sll $0, $0, 0
bgtz $3, TAG685
slti $2, $3, 2
TAG685:
xor $4, $2, $2
slti $1, $4, 6
addu $2, $4, $1
sb $1, 0($2)
TAG686:
bgtz $2, TAG687
multu $2, $2
sw $2, 0($2)
sw $2, 0($2)
TAG687:
lb $1, 0($2)
slt $4, $2, $1
lui $4, 11
sll $0, $0, 0
TAG688:
subu $2, $2, $2
mflo $3
sh $2, 0($2)
mflo $3
TAG689:
lui $1, 1
lui $3, 2
lui $1, 9
mthi $1
TAG690:
mthi $1
mfhi $4
mflo $2
mtlo $1
TAG691:
divu $2, $2
mtlo $2
sra $2, $2, 1
sb $2, 0($2)
TAG692:
lhu $2, 0($2)
lh $4, 0($2)
beq $4, $2, TAG693
sll $4, $2, 11
TAG693:
mthi $4
sw $4, 0($4)
mflo $1
sb $1, 0($4)
TAG694:
sb $1, 0($1)
srlv $3, $1, $1
mtlo $1
sb $1, 0($3)
TAG695:
lui $1, 12
mult $1, $1
bne $1, $1, TAG696
srl $3, $1, 2
TAG696:
sll $0, $0, 0
srl $4, $3, 11
sw $3, 0($4)
mfhi $4
TAG697:
mfhi $3
bne $4, $4, TAG698
mtlo $3
mfhi $1
TAG698:
sb $1, -144($1)
mthi $1
subu $4, $1, $1
bltz $1, TAG699
TAG699:
mflo $3
sw $3, -144($3)
lbu $2, 0($4)
beq $2, $2, TAG700
TAG700:
mflo $2
blez $2, TAG701
srlv $4, $2, $2
sb $4, -144($2)
TAG701:
sltiu $3, $4, 15
sub $1, $3, $4
mtlo $4
srlv $2, $1, $3
TAG702:
sh $2, 0($2)
lw $3, 0($2)
add $1, $2, $3
lui $4, 4
TAG703:
lui $2, 7
mflo $4
mthi $4
beq $2, $4, TAG704
TAG704:
lui $4, 3
srav $4, $4, $4
mfhi $1
sll $0, $0, 0
TAG705:
sw $3, 0($3)
lhu $3, 0($3)
sb $3, 0($3)
srl $2, $3, 0
TAG706:
mtlo $2
bgez $2, TAG707
mfhi $1
bgtz $1, TAG707
TAG707:
lh $3, 0($1)
blez $1, TAG708
srlv $2, $1, $3
sltiu $1, $2, 13
TAG708:
mult $1, $1
lui $4, 13
sll $0, $0, 0
sltiu $3, $1, 12
TAG709:
div $3, $3
bne $3, $3, TAG710
mtlo $3
bltz $3, TAG710
TAG710:
sb $3, 0($3)
bgez $3, TAG711
lbu $3, 0($3)
mthi $3
TAG711:
bne $3, $3, TAG712
sb $3, 0($3)
lui $4, 8
mflo $2
TAG712:
bne $2, $2, TAG713
lui $1, 0
srlv $2, $1, $2
lhu $4, 0($1)
TAG713:
bne $4, $4, TAG714
divu $4, $4
divu $4, $4
lui $4, 10
TAG714:
beq $4, $4, TAG715
sll $0, $0, 0
mtlo $4
div $4, $4
TAG715:
mtlo $4
slti $2, $4, 1
mult $2, $2
divu $2, $4
TAG716:
lb $1, 0($2)
lhu $1, 0($2)
blez $1, TAG717
or $4, $1, $1
TAG717:
blez $4, TAG718
sra $2, $4, 9
mfhi $4
bne $2, $2, TAG718
TAG718:
mfhi $3
sllv $2, $4, $3
sh $3, 0($3)
bne $3, $3, TAG719
TAG719:
lui $2, 9
addu $4, $2, $2
bne $2, $2, TAG720
divu $4, $2
TAG720:
bltz $4, TAG721
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG721
TAG721:
lui $1, 5
bne $1, $1, TAG722
subu $3, $1, $1
sll $0, $0, 0
TAG722:
mflo $1
lui $1, 1
lui $1, 4
bgez $1, TAG723
TAG723:
addu $1, $1, $1
mfhi $2
mthi $1
bgez $1, TAG724
TAG724:
mtlo $2
sw $2, 0($2)
sltiu $4, $2, 3
sb $4, 0($4)
TAG725:
mflo $1
multu $1, $4
sw $1, 0($1)
mtlo $4
TAG726:
mfhi $4
lui $1, 15
mtlo $1
div $1, $1
TAG727:
bne $1, $1, TAG728
mult $1, $1
lui $1, 14
bne $1, $1, TAG728
TAG728:
ori $3, $1, 10
bltz $1, TAG729
sltiu $3, $1, 8
beq $1, $3, TAG729
TAG729:
sltu $1, $3, $3
beq $1, $1, TAG730
mthi $3
mtlo $3
TAG730:
mthi $1
mult $1, $1
sb $1, 0($1)
sltiu $4, $1, 3
TAG731:
ori $3, $4, 1
sb $3, 0($4)
mtlo $3
sll $3, $3, 10
TAG732:
sb $3, -1024($3)
bne $3, $3, TAG733
mtlo $3
slti $2, $3, 2
TAG733:
sh $2, 0($2)
mult $2, $2
mult $2, $2
lhu $2, 0($2)
TAG734:
mtlo $2
mult $2, $2
lui $2, 4
mtlo $2
TAG735:
nor $4, $2, $2
div $2, $4
lui $4, 5
multu $4, $2
TAG736:
mthi $4
sra $2, $4, 2
mtlo $2
multu $4, $4
TAG737:
mfhi $2
div $2, $2
lui $4, 12
beq $2, $2, TAG738
TAG738:
lui $3, 2
bgtz $3, TAG739
sll $0, $0, 0
slti $2, $4, 5
TAG739:
mthi $2
bltz $2, TAG740
xor $4, $2, $2
lb $3, 0($2)
TAG740:
multu $3, $3
sw $3, 0($3)
multu $3, $3
add $1, $3, $3
TAG741:
lui $4, 13
or $3, $1, $4
sltu $2, $1, $4
mfhi $4
TAG742:
beq $4, $4, TAG743
mtlo $4
div $4, $4
mtlo $4
TAG743:
bltz $4, TAG744
mflo $4
mult $4, $4
mfhi $1
TAG744:
addi $4, $1, 0
mthi $4
lbu $4, 0($1)
mflo $4
TAG745:
addi $2, $4, 3
subu $2, $2, $2
bgez $4, TAG746
multu $2, $4
TAG746:
bne $2, $2, TAG747
multu $2, $2
sltiu $3, $2, 7
mfhi $2
TAG747:
lw $2, 0($2)
lhu $4, 0($2)
sw $2, 0($2)
lui $1, 6
TAG748:
bne $1, $1, TAG749
mfhi $4
multu $4, $4
lui $2, 14
TAG749:
srav $3, $2, $2
div $2, $3
srl $4, $3, 12
mthi $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop