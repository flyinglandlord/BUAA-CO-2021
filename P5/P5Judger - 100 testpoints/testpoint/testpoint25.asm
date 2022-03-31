ori $1, $0, 15
ori $2, $0, 10
ori $3, $0, 9
ori $4, $0, 6
sw $4, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $1, 12($0)
sw $4, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $3, 124($0)
beq $2, $2, TAG1
mfhi $3
lhu $2, 0($2)
sh $2, 0($3)
TAG1:
multu $2, $2
sh $2, 0($2)
mflo $1
mflo $3
TAG2:
bgtz $3, TAG3
andi $2, $3, 12
mflo $3
subu $2, $3, $3
TAG3:
slti $2, $2, 8
lbu $4, 0($2)
sllv $4, $4, $4
sw $2, 0($4)
TAG4:
multu $4, $4
and $4, $4, $4
or $2, $4, $4
andi $3, $2, 9
TAG5:
mflo $3
lhu $2, 0($3)
mtlo $3
slti $4, $2, 2
TAG6:
bgez $4, TAG7
or $2, $4, $4
addi $1, $2, 5
lui $3, 10
TAG7:
bltz $3, TAG8
lui $1, 8
mtlo $3
and $2, $1, $1
TAG8:
sll $0, $0, 0
beq $2, $2, TAG9
mfhi $2
lui $2, 0
TAG9:
sll $3, $2, 12
mthi $2
bne $2, $2, TAG10
sw $3, 0($3)
TAG10:
mthi $3
bne $3, $3, TAG11
and $2, $3, $3
lui $1, 7
TAG11:
mflo $2
mtlo $1
subu $2, $1, $1
lh $1, 0($2)
TAG12:
and $2, $1, $1
bgez $1, TAG13
addu $3, $2, $2
addiu $1, $3, 14
TAG13:
bgtz $1, TAG14
lhu $2, 0($1)
mtlo $1
mflo $1
TAG14:
sw $1, 0($1)
lui $4, 15
addu $1, $1, $4
sll $0, $0, 0
TAG15:
mfhi $2
mfhi $3
srlv $4, $3, $3
mfhi $4
TAG16:
sltiu $2, $4, 6
lw $3, 0($4)
multu $3, $3
sub $2, $4, $3
TAG17:
sw $2, 0($2)
bne $2, $2, TAG18
sltu $3, $2, $2
multu $2, $2
TAG18:
lhu $1, 0($3)
blez $1, TAG19
mtlo $3
bgez $1, TAG19
TAG19:
lh $2, 0($1)
sllv $1, $1, $1
mult $1, $1
addiu $3, $2, 14
TAG20:
mflo $2
srl $3, $2, 12
mfhi $4
mfhi $2
TAG21:
mthi $2
bne $2, $2, TAG22
mult $2, $2
mflo $1
TAG22:
lui $3, 9
mtlo $1
or $2, $1, $3
srl $3, $3, 15
TAG23:
beq $3, $3, TAG24
addiu $4, $3, 12
sb $4, 0($3)
lh $2, 0($3)
TAG24:
lui $3, 12
sll $0, $0, 0
bne $2, $1, TAG25
sllv $1, $2, $1
TAG25:
multu $1, $1
mflo $1
sh $1, 0($1)
beq $1, $1, TAG26
TAG26:
sh $1, 0($1)
slt $1, $1, $1
sh $1, 0($1)
subu $2, $1, $1
TAG27:
lui $1, 8
slti $2, $1, 15
lh $1, 0($2)
sltiu $3, $2, 15
TAG28:
subu $3, $3, $3
lb $3, 0($3)
lui $3, 2
mthi $3
TAG29:
lui $2, 12
xor $1, $3, $3
subu $2, $3, $3
bgez $1, TAG30
TAG30:
mfhi $4
xor $1, $2, $4
mflo $2
sll $0, $0, 0
TAG31:
bgez $2, TAG32
mflo $4
sll $1, $4, 12
lb $1, 0($1)
TAG32:
mtlo $1
srav $2, $1, $1
and $4, $2, $1
bne $1, $1, TAG33
TAG33:
mflo $1
lui $3, 13
srlv $3, $4, $3
mtlo $4
TAG34:
mfhi $4
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG35:
sll $0, $0, 0
lui $2, 8
sll $0, $0, 0
lui $2, 8
TAG36:
bltz $2, TAG37
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG37:
mthi $2
lui $4, 15
beq $2, $2, TAG38
lui $3, 3
TAG38:
mfhi $1
lui $4, 5
mthi $4
mtlo $1
TAG39:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sllv $3, $1, $1
TAG40:
beq $3, $3, TAG41
mfhi $2
lbu $2, 0($3)
sltiu $2, $2, 4
TAG41:
mult $2, $2
sll $4, $2, 15
mfhi $3
sll $0, $0, 0
TAG42:
sb $3, 0($3)
blez $3, TAG43
mflo $1
andi $2, $1, 0
TAG43:
mult $2, $2
sb $2, 0($2)
mthi $2
lw $3, 0($2)
TAG44:
addi $3, $3, 10
bltz $3, TAG45
mtlo $3
sh $3, 0($3)
TAG45:
lhu $3, 0($3)
sra $3, $3, 15
lui $3, 11
lui $3, 0
TAG46:
lui $1, 7
mtlo $3
mflo $1
lui $1, 10
TAG47:
addu $1, $1, $1
sltiu $2, $1, 15
sll $1, $2, 6
sw $1, 0($1)
TAG48:
sh $1, 0($1)
lhu $1, 0($1)
mfhi $4
lw $1, 0($1)
TAG49:
mthi $1
multu $1, $1
lui $2, 6
div $1, $2
TAG50:
bgtz $2, TAG51
mflo $1
div $1, $2
sb $1, 0($2)
TAG51:
bne $1, $1, TAG52
sh $1, 0($1)
ori $1, $1, 4
blez $1, TAG52
TAG52:
sll $3, $1, 7
beq $3, $1, TAG53
sb $1, 0($1)
lui $1, 6
TAG53:
sllv $2, $1, $1
sltiu $1, $1, 10
andi $4, $1, 10
srl $3, $1, 11
TAG54:
bgtz $3, TAG55
slt $3, $3, $3
bne $3, $3, TAG55
sltiu $2, $3, 6
TAG55:
sltu $2, $2, $2
srl $1, $2, 14
lbu $1, 0($2)
sw $2, 0($2)
TAG56:
ori $1, $1, 1
sb $1, 0($1)
lui $2, 14
bne $1, $2, TAG57
TAG57:
multu $2, $2
sll $0, $0, 0
lui $1, 8
sll $0, $0, 0
TAG58:
beq $1, $1, TAG59
mfhi $1
mflo $1
mfhi $2
TAG59:
divu $2, $2
lui $3, 10
mflo $1
slti $4, $1, 6
TAG60:
beq $4, $4, TAG61
mthi $4
divu $4, $4
andi $3, $4, 10
TAG61:
bgez $3, TAG62
div $3, $3
lw $1, 0($3)
xor $3, $1, $1
TAG62:
mthi $3
sll $0, $0, 0
subu $4, $3, $3
bgez $4, TAG63
TAG63:
lw $2, 0($4)
mthi $2
and $2, $4, $4
lh $2, 0($4)
TAG64:
bne $2, $2, TAG65
lui $2, 1
addiu $2, $2, 5
addu $4, $2, $2
TAG65:
lui $3, 2
sltiu $3, $3, 8
mfhi $3
lui $4, 11
TAG66:
mfhi $3
multu $3, $4
lui $2, 12
sltu $3, $3, $3
TAG67:
sll $1, $3, 6
mult $3, $1
xori $1, $3, 4
bltz $1, TAG68
TAG68:
lui $2, 3
sltiu $4, $1, 6
addiu $1, $4, 14
sltiu $1, $1, 3
TAG69:
sllv $2, $1, $1
mflo $3
bltz $1, TAG70
srav $1, $1, $1
TAG70:
mult $1, $1
xor $2, $1, $1
mfhi $1
multu $1, $1
TAG71:
sllv $4, $1, $1
ori $4, $4, 6
mult $1, $1
addu $1, $1, $4
TAG72:
sll $1, $1, 4
lui $3, 6
mtlo $1
beq $1, $1, TAG73
TAG73:
sll $0, $0, 0
bgtz $2, TAG74
lui $1, 11
slti $4, $2, 7
TAG74:
mfhi $4
beq $4, $4, TAG75
lui $1, 12
lb $4, 0($1)
TAG75:
lh $1, 0($4)
srlv $3, $4, $1
lw $1, 0($3)
mtlo $1
TAG76:
lui $3, 7
sb $3, -256($1)
mtlo $3
slti $4, $1, 8
TAG77:
bltz $4, TAG78
mtlo $4
sb $4, 0($4)
sh $4, 0($4)
TAG78:
mfhi $3
slt $3, $4, $3
lw $4, 0($3)
slt $4, $3, $3
TAG79:
mflo $1
mtlo $1
lh $3, 0($1)
mfhi $4
TAG80:
beq $4, $4, TAG81
lh $1, 0($4)
sw $4, 0($4)
beq $1, $1, TAG81
TAG81:
srlv $4, $1, $1
bgtz $4, TAG82
mflo $2
or $3, $4, $2
TAG82:
addiu $2, $3, 13
bgez $3, TAG83
lui $2, 4
beq $2, $2, TAG83
TAG83:
sll $1, $2, 5
mflo $4
beq $4, $2, TAG84
sll $0, $0, 0
TAG84:
bgtz $4, TAG85
lw $3, 0($4)
bltz $3, TAG85
ori $4, $3, 5
TAG85:
sltiu $1, $4, 15
bne $4, $4, TAG86
sra $1, $4, 3
lbu $2, 0($4)
TAG86:
lb $2, 0($2)
lbu $4, 0($2)
lui $1, 13
beq $2, $1, TAG87
TAG87:
lui $1, 13
sll $0, $0, 0
mtlo $1
and $2, $1, $1
TAG88:
mthi $2
bgez $2, TAG89
sll $0, $0, 0
bgez $2, TAG89
TAG89:
addiu $1, $4, 8
mthi $4
mfhi $1
sh $1, 0($1)
TAG90:
bne $1, $1, TAG91
lui $1, 10
lui $4, 12
blez $1, TAG91
TAG91:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG92:
lui $4, 15
sll $0, $0, 0
subu $2, $4, $4
beq $4, $2, TAG93
TAG93:
lhu $1, 0($2)
mflo $4
ori $3, $1, 4
mflo $2
TAG94:
blez $2, TAG95
addiu $3, $2, 10
sll $0, $0, 0
multu $2, $2
TAG95:
bltz $2, TAG96
divu $2, $2
lui $3, 2
mflo $4
TAG96:
sb $4, 0($4)
sllv $4, $4, $4
lui $2, 11
beq $2, $4, TAG97
TAG97:
lui $3, 0
lui $3, 4
mtlo $2
mflo $3
TAG98:
mtlo $3
srl $4, $3, 2
bltz $4, TAG99
sll $0, $0, 0
TAG99:
sub $1, $1, $1
blez $1, TAG100
xori $1, $1, 12
lui $4, 5
TAG100:
mflo $2
lui $1, 6
mult $4, $4
div $2, $1
TAG101:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG102
TAG102:
mtlo $4
lui $4, 9
bltz $4, TAG103
lui $3, 6
TAG103:
and $4, $3, $3
blez $4, TAG104
multu $4, $3
sll $0, $0, 0
TAG104:
sll $0, $0, 0
xori $2, $2, 13
sll $0, $0, 0
mult $2, $2
TAG105:
bgtz $2, TAG106
sll $0, $0, 0
bne $4, $4, TAG106
sb $2, 0($4)
TAG106:
andi $3, $4, 13
lui $4, 6
blez $4, TAG107
multu $4, $3
TAG107:
lui $2, 3
lui $3, 5
sll $0, $0, 0
bne $4, $3, TAG108
TAG108:
mthi $3
sll $0, $0, 0
slt $1, $3, $3
sll $0, $0, 0
TAG109:
sb $1, 0($1)
mtlo $1
mthi $1
bgtz $1, TAG110
TAG110:
mult $1, $1
add $2, $1, $1
lw $1, 0($1)
and $2, $1, $1
TAG111:
blez $2, TAG112
xor $2, $2, $2
lui $4, 9
mfhi $3
TAG112:
bne $3, $3, TAG113
mflo $1
sh $3, 0($1)
beq $1, $1, TAG113
TAG113:
srav $3, $1, $1
beq $3, $3, TAG114
xori $2, $3, 7
lui $4, 9
TAG114:
srav $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
bne $1, $4, TAG115
TAG115:
mtlo $1
beq $1, $1, TAG116
lb $3, 0($1)
bgtz $3, TAG116
TAG116:
or $2, $3, $3
sltiu $2, $2, 7
multu $2, $2
beq $2, $2, TAG117
TAG117:
lui $4, 4
mflo $3
lui $1, 0
bgtz $3, TAG118
TAG118:
mtlo $1
blez $1, TAG119
addi $4, $1, 1
bgtz $1, TAG119
TAG119:
mthi $4
lbu $2, 0($4)
lb $2, 0($2)
bne $2, $2, TAG120
TAG120:
lui $2, 15
mtlo $2
bgez $2, TAG121
mtlo $2
TAG121:
bne $2, $2, TAG122
sll $0, $0, 0
multu $2, $2
andi $4, $2, 4
TAG122:
bltz $4, TAG123
lui $4, 5
sll $0, $0, 0
mflo $3
TAG123:
lui $3, 1
or $4, $3, $3
lui $3, 6
sltiu $3, $3, 2
TAG124:
addiu $3, $3, 10
lui $1, 11
div $3, $3
sll $0, $0, 0
TAG125:
sll $0, $0, 0
bne $1, $4, TAG126
mflo $3
blez $3, TAG126
TAG126:
lui $3, 14
bgtz $3, TAG127
lui $1, 2
sw $3, 0($1)
TAG127:
lui $2, 9
andi $4, $1, 7
sb $1, 0($4)
beq $4, $1, TAG128
TAG128:
mfhi $2
bgtz $4, TAG129
mflo $2
mflo $1
TAG129:
mtlo $1
xor $1, $1, $1
multu $1, $1
nor $2, $1, $1
TAG130:
multu $2, $2
divu $2, $2
mfhi $2
lb $3, 0($2)
TAG131:
srav $2, $3, $3
bgez $3, TAG132
sllv $1, $2, $2
lui $1, 3
TAG132:
lui $3, 1
multu $1, $1
bgez $3, TAG133
lb $3, 0($1)
TAG133:
mfhi $4
beq $3, $4, TAG134
sb $3, 0($3)
sll $4, $3, 9
TAG134:
mult $4, $4
mult $4, $4
bgez $4, TAG135
nor $1, $4, $4
TAG135:
mfhi $2
ori $3, $2, 13
ori $1, $3, 8
bltz $1, TAG136
TAG136:
lb $2, 0($1)
sltu $2, $1, $2
multu $2, $2
bne $2, $2, TAG137
TAG137:
subu $1, $2, $2
bltz $1, TAG138
mthi $1
mthi $2
TAG138:
sllv $4, $1, $1
bne $1, $4, TAG139
mult $4, $4
multu $1, $4
TAG139:
or $3, $4, $4
mfhi $4
mult $4, $3
lbu $4, 0($3)
TAG140:
sb $4, 0($4)
lui $1, 1
sll $4, $4, 0
bltz $4, TAG141
TAG141:
srl $3, $4, 6
bltz $4, TAG142
sb $3, 0($4)
sb $4, 0($4)
TAG142:
beq $3, $3, TAG143
addu $1, $3, $3
mflo $4
bgtz $1, TAG143
TAG143:
sltu $3, $4, $4
mthi $4
beq $3, $4, TAG144
lw $3, 0($4)
TAG144:
lw $3, 0($3)
multu $3, $3
lui $2, 6
mtlo $3
TAG145:
mflo $2
multu $2, $2
mtlo $2
add $1, $2, $2
TAG146:
mthi $1
mtlo $1
slti $4, $1, 9
mtlo $1
TAG147:
xor $2, $4, $4
xori $3, $2, 4
mflo $4
mult $3, $3
TAG148:
bltz $4, TAG149
mtlo $4
beq $4, $4, TAG149
mult $4, $4
TAG149:
mthi $4
sh $4, 0($4)
bne $4, $4, TAG150
lui $2, 6
TAG150:
bgtz $2, TAG151
mfhi $3
bne $3, $3, TAG151
multu $3, $2
TAG151:
sltu $2, $3, $3
mthi $2
lui $2, 10
bne $3, $2, TAG152
TAG152:
lui $2, 5
sll $0, $0, 0
lui $1, 5
div $1, $2
TAG153:
mthi $1
lui $2, 6
lui $2, 2
bltz $2, TAG154
TAG154:
slti $4, $2, 0
srl $3, $4, 15
mflo $2
mtlo $3
TAG155:
addiu $2, $2, 5
blez $2, TAG156
lui $1, 0
bgtz $2, TAG156
TAG156:
mult $1, $1
addu $2, $1, $1
mfhi $3
lw $4, 0($3)
TAG157:
bne $4, $4, TAG158
sw $4, 0($4)
bltz $4, TAG158
lui $4, 13
TAG158:
div $4, $4
sll $0, $0, 0
lui $4, 9
or $4, $4, $4
TAG159:
sll $0, $0, 0
nor $3, $4, $4
sll $0, $0, 0
and $2, $4, $4
TAG160:
subu $2, $2, $2
slti $2, $2, 8
beq $2, $2, TAG161
lb $4, 0($2)
TAG161:
mtlo $4
srav $4, $4, $4
lui $3, 10
xori $3, $4, 6
TAG162:
sb $3, 0($3)
sh $3, 0($3)
mthi $3
bgez $3, TAG163
TAG163:
subu $1, $3, $3
mult $1, $1
lui $1, 1
blez $1, TAG164
TAG164:
sll $0, $0, 0
sll $0, $0, 0
sh $1, 0($3)
mflo $3
TAG165:
srav $3, $3, $3
blez $3, TAG166
sw $3, 0($3)
sra $2, $3, 13
TAG166:
xor $1, $2, $2
slt $1, $2, $1
lui $2, 15
bltz $1, TAG167
TAG167:
sll $0, $0, 0
beq $2, $2, TAG168
mthi $2
bgez $2, TAG168
TAG168:
sll $0, $0, 0
beq $2, $2, TAG169
mthi $2
mflo $4
TAG169:
or $4, $4, $4
lui $1, 1
mfhi $1
mfhi $2
TAG170:
srav $3, $2, $2
mthi $3
lui $4, 7
sra $4, $2, 2
TAG171:
lui $1, 10
addu $2, $1, $4
beq $4, $1, TAG172
sll $0, $0, 0
TAG172:
mflo $3
lui $2, 6
bgtz $1, TAG173
mflo $1
TAG173:
sllv $2, $1, $1
mflo $1
mthi $1
lhu $3, 0($1)
TAG174:
lui $3, 7
div $3, $3
mthi $3
sll $0, $0, 0
TAG175:
mtlo $1
addiu $2, $1, 8
lui $4, 1
mtlo $1
TAG176:
ori $3, $4, 0
sll $0, $0, 0
bgez $4, TAG177
mthi $3
TAG177:
lui $2, 8
mflo $2
sb $2, 0($2)
mult $2, $2
TAG178:
mflo $3
mflo $1
bltz $1, TAG179
multu $3, $3
TAG179:
mflo $2
bltz $2, TAG180
lw $1, 0($1)
lui $1, 12
TAG180:
sltu $3, $1, $1
and $1, $3, $3
nor $4, $1, $1
sllv $3, $3, $1
TAG181:
bgez $3, TAG182
multu $3, $3
addi $2, $3, 4
lbu $2, 0($2)
TAG182:
bgez $2, TAG183
sw $2, 0($2)
lui $2, 15
mult $2, $2
TAG183:
sh $2, 0($2)
lb $2, 0($2)
mfhi $2
and $3, $2, $2
TAG184:
lbu $1, 0($3)
beq $3, $3, TAG185
lui $3, 1
blez $3, TAG185
TAG185:
lui $4, 11
xori $2, $4, 5
slti $3, $3, 5
mtlo $4
TAG186:
mflo $1
sh $1, 0($3)
lui $4, 6
lui $1, 12
TAG187:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
bne $1, $1, TAG188
TAG188:
sll $0, $0, 0
sh $1, 0($3)
bgez $1, TAG189
mult $1, $3
TAG189:
beq $3, $3, TAG190
lui $4, 2
mthi $4
andi $1, $4, 10
TAG190:
lui $3, 2
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG191:
sb $4, 0($4)
multu $4, $4
xori $2, $4, 2
sltiu $1, $2, 8
TAG192:
mthi $1
srav $4, $1, $1
slt $4, $1, $4
multu $4, $4
TAG193:
addu $1, $4, $4
sb $4, 0($1)
beq $1, $4, TAG194
mtlo $1
TAG194:
srlv $2, $1, $1
mfhi $4
sltu $4, $2, $2
bgez $4, TAG195
TAG195:
mult $4, $4
addiu $4, $4, 10
lui $2, 3
bgez $4, TAG196
TAG196:
mtlo $2
beq $2, $2, TAG197
sll $0, $0, 0
lui $4, 0
TAG197:
sh $4, 0($4)
mult $4, $4
blez $4, TAG198
mtlo $4
TAG198:
mtlo $4
bgez $4, TAG199
sh $4, 0($4)
mfhi $4
TAG199:
mult $4, $4
addu $1, $4, $4
or $2, $4, $1
bne $4, $1, TAG200
TAG200:
nor $4, $2, $2
beq $2, $2, TAG201
srl $4, $2, 10
multu $4, $4
TAG201:
mfhi $1
sb $1, 0($4)
beq $4, $1, TAG202
mthi $4
TAG202:
multu $1, $1
sltiu $4, $1, 11
mthi $4
mult $4, $4
TAG203:
lui $2, 12
or $4, $4, $2
lui $3, 14
mflo $3
TAG204:
xori $4, $3, 0
multu $3, $4
sb $4, 0($3)
beq $3, $3, TAG205
TAG205:
lui $3, 3
bltz $3, TAG206
mthi $4
lui $1, 7
TAG206:
bne $1, $1, TAG207
xor $4, $1, $1
mult $1, $1
lui $2, 12
TAG207:
srlv $4, $2, $2
subu $2, $4, $2
sll $3, $2, 6
mthi $2
TAG208:
lui $1, 15
mtlo $1
bgez $1, TAG209
or $3, $3, $3
TAG209:
lw $3, 0($3)
mult $3, $3
divu $3, $3
beq $3, $3, TAG210
TAG210:
mfhi $2
lui $3, 15
bne $3, $2, TAG211
mfhi $1
TAG211:
lui $4, 0
bgez $4, TAG212
multu $1, $4
mtlo $1
TAG212:
sll $3, $4, 2
addi $3, $4, 1
mthi $4
srl $2, $3, 1
TAG213:
mthi $2
sw $2, 0($2)
sb $2, 0($2)
mflo $1
TAG214:
slti $4, $1, 11
mtlo $1
xori $4, $4, 6
lui $3, 15
TAG215:
mtlo $3
mult $3, $3
lui $3, 4
lui $3, 5
TAG216:
sll $0, $0, 0
sra $1, $2, 2
multu $2, $1
mtlo $1
TAG217:
bgez $1, TAG218
lh $1, 0($1)
bne $1, $1, TAG218
lui $4, 2
TAG218:
addiu $2, $4, 0
mfhi $3
bne $4, $3, TAG219
mtlo $2
TAG219:
sra $2, $3, 13
sw $2, 0($3)
mtlo $3
sll $2, $3, 15
TAG220:
lui $3, 1
lhu $1, 0($2)
sll $0, $0, 0
lbu $4, 0($2)
TAG221:
mtlo $4
sh $4, 0($4)
blez $4, TAG222
lui $3, 13
TAG222:
sll $0, $0, 0
sw $4, 0($4)
lui $4, 14
bgez $3, TAG223
TAG223:
srlv $3, $4, $4
sll $0, $0, 0
bltz $3, TAG224
lui $2, 10
TAG224:
ori $4, $2, 6
bgtz $4, TAG225
div $4, $2
mthi $4
TAG225:
addu $1, $4, $4
mfhi $2
div $4, $4
sll $0, $0, 0
TAG226:
lui $1, 8
or $4, $1, $1
div $4, $1
lui $4, 12
TAG227:
mult $4, $4
blez $4, TAG228
sll $0, $0, 0
mult $4, $4
TAG228:
bne $4, $4, TAG229
mflo $1
xori $2, $4, 2
sll $0, $0, 0
TAG229:
lui $2, 9
sll $0, $0, 0
srav $1, $2, $3
mfhi $1
TAG230:
ori $4, $1, 1
lui $1, 2
sll $0, $0, 0
srl $3, $1, 11
TAG231:
bgez $3, TAG232
mthi $3
mflo $2
bgtz $2, TAG232
TAG232:
mflo $3
xor $3, $2, $3
beq $3, $2, TAG233
lui $2, 0
TAG233:
mthi $2
sw $2, 0($2)
lhu $3, 0($2)
bne $2, $3, TAG234
TAG234:
sw $3, 0($3)
lh $1, 0($3)
lh $4, 0($3)
lhu $4, 0($4)
TAG235:
bgez $4, TAG236
lui $1, 8
sw $1, 0($1)
lui $1, 4
TAG236:
sll $0, $0, 0
mtlo $1
lui $3, 6
mflo $1
TAG237:
bltz $1, TAG238
addiu $4, $1, 5
lui $4, 8
mtlo $4
TAG238:
sll $0, $0, 0
divu $4, $4
lui $1, 3
slti $1, $4, 1
TAG239:
or $2, $1, $1
bltz $1, TAG240
multu $1, $1
mthi $1
TAG240:
mfhi $3
mflo $4
mthi $3
bgtz $3, TAG241
TAG241:
multu $4, $4
mult $4, $4
beq $4, $4, TAG242
mthi $4
TAG242:
mflo $1
sra $2, $4, 12
mult $2, $1
mfhi $1
TAG243:
mthi $1
lbu $3, 0($1)
sh $1, 0($3)
mthi $3
TAG244:
bgtz $3, TAG245
sh $3, 0($3)
mthi $3
mult $3, $3
TAG245:
lui $2, 5
mflo $4
sh $2, 0($3)
mtlo $3
TAG246:
add $1, $4, $4
bgtz $1, TAG247
nor $1, $1, $1
lui $1, 0
TAG247:
lui $1, 13
sltiu $4, $1, 0
sll $0, $0, 0
mult $4, $1
TAG248:
sll $3, $4, 13
beq $3, $4, TAG249
lbu $4, 0($4)
mflo $2
TAG249:
mfhi $1
mtlo $2
lui $2, 10
mtlo $2
TAG250:
mtlo $2
addiu $2, $2, 15
slti $3, $2, 13
add $3, $3, $3
TAG251:
bgez $3, TAG252
mflo $4
mthi $3
sltiu $1, $4, 9
TAG252:
bltz $1, TAG253
lui $3, 3
sltu $1, $3, $1
beq $3, $3, TAG253
TAG253:
sltiu $4, $1, 2
lbu $2, 0($4)
mtlo $2
mtlo $2
TAG254:
bltz $2, TAG255
lb $1, 0($2)
lui $1, 6
sll $0, $0, 0
TAG255:
nor $4, $2, $2
lw $3, 1($4)
sb $4, 1($4)
bne $3, $3, TAG256
TAG256:
lui $1, 5
sh $1, 0($3)
multu $3, $3
sw $3, 0($3)
TAG257:
bltz $1, TAG258
mfhi $4
beq $1, $1, TAG258
mfhi $4
TAG258:
mfhi $4
mfhi $1
mfhi $3
sh $1, 0($4)
TAG259:
mflo $3
lw $4, 0($3)
sll $3, $3, 12
mflo $2
TAG260:
mflo $1
mfhi $2
add $4, $2, $1
lui $1, 12
TAG261:
beq $1, $1, TAG262
mtlo $1
sb $1, 0($1)
lui $3, 14
TAG262:
sltu $3, $3, $3
mult $3, $3
lhu $4, 0($3)
lw $2, 0($3)
TAG263:
bltz $2, TAG264
xori $2, $2, 0
bne $2, $2, TAG264
mtlo $2
TAG264:
srlv $4, $2, $2
beq $2, $2, TAG265
lb $1, 0($4)
bne $1, $4, TAG265
TAG265:
mflo $3
lb $4, 0($3)
mthi $4
nor $2, $1, $4
TAG266:
mfhi $1
sw $2, 0($1)
lbu $3, 0($1)
mflo $1
TAG267:
beq $1, $1, TAG268
sb $1, 0($1)
ori $3, $1, 14
sltu $2, $1, $1
TAG268:
bgez $2, TAG269
lbu $3, 1($2)
bne $3, $3, TAG269
sb $2, 1($2)
TAG269:
multu $3, $3
mflo $1
mthi $1
lbu $4, 0($1)
TAG270:
srav $1, $4, $4
mult $4, $1
mtlo $4
mthi $1
TAG271:
srl $3, $1, 13
lui $3, 2
multu $3, $3
sll $0, $0, 0
TAG272:
srl $2, $1, 8
mtlo $1
lui $4, 11
mfhi $1
TAG273:
mthi $1
bgez $1, TAG274
mfhi $1
lui $2, 8
TAG274:
addiu $1, $2, 10
mtlo $2
sb $1, 0($1)
mthi $1
TAG275:
div $1, $1
div $1, $1
mthi $1
lbu $3, 0($1)
TAG276:
lui $3, 13
srl $1, $3, 6
sll $0, $0, 0
lui $2, 10
TAG277:
beq $2, $2, TAG278
sll $0, $0, 0
blez $3, TAG278
mtlo $3
TAG278:
mtlo $3
sll $0, $0, 0
subu $1, $2, $3
sll $0, $0, 0
TAG279:
divu $1, $1
divu $1, $1
bgez $1, TAG280
slt $2, $1, $1
TAG280:
addi $2, $2, 13
div $2, $2
bne $2, $2, TAG281
sb $2, 0($2)
TAG281:
lui $2, 10
bne $2, $2, TAG282
mfhi $3
bne $2, $3, TAG282
TAG282:
srav $4, $3, $3
sb $4, 0($3)
lb $1, 0($3)
lui $2, 9
TAG283:
mfhi $1
sll $0, $0, 0
mtlo $1
mthi $2
TAG284:
blez $1, TAG285
sll $4, $1, 14
mthi $4
addi $3, $1, 4
TAG285:
lui $3, 6
bne $3, $3, TAG286
mtlo $3
mfhi $4
TAG286:
andi $1, $4, 14
bne $4, $1, TAG287
sw $1, 0($1)
bne $1, $1, TAG287
TAG287:
mtlo $1
addu $4, $1, $1
lb $2, 0($1)
mult $2, $4
TAG288:
srlv $2, $2, $2
beq $2, $2, TAG289
lhu $2, 0($2)
mthi $2
TAG289:
lhu $1, 0($2)
lbu $4, 0($1)
mflo $3
sw $3, 0($3)
TAG290:
or $2, $3, $3
blez $2, TAG291
mfhi $1
nor $3, $2, $1
TAG291:
mflo $1
lh $3, 0($3)
sh $1, 0($3)
lui $4, 15
TAG292:
bne $4, $4, TAG293
mult $4, $4
mtlo $4
mflo $1
TAG293:
sll $0, $0, 0
mfhi $4
mthi $4
lui $3, 7
TAG294:
blez $3, TAG295
or $1, $3, $3
mtlo $3
xori $2, $3, 14
TAG295:
lui $2, 15
blez $2, TAG296
slti $2, $2, 9
bltz $2, TAG296
TAG296:
sw $2, 0($2)
blez $2, TAG297
mthi $2
lui $2, 8
TAG297:
lhu $2, 0($2)
mfhi $3
lui $3, 6
mult $3, $2
TAG298:
addiu $4, $3, 12
lui $1, 0
mtlo $4
addu $3, $4, $3
TAG299:
divu $3, $3
bgez $3, TAG300
ori $3, $3, 1
div $3, $3
TAG300:
mult $3, $3
mthi $3
lui $3, 12
lui $2, 1
TAG301:
lui $2, 1
sll $0, $0, 0
ori $2, $2, 11
or $1, $2, $2
TAG302:
sll $0, $0, 0
bgtz $1, TAG303
lui $4, 1
sb $1, 0($1)
TAG303:
sll $0, $0, 0
lui $1, 12
sll $0, $0, 0
multu $1, $1
TAG304:
beq $1, $1, TAG305
lui $4, 15
beq $4, $1, TAG305
multu $1, $4
TAG305:
lui $3, 1
bgez $3, TAG306
srlv $3, $3, $4
div $3, $4
TAG306:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
lui $3, 3
TAG307:
bgez $3, TAG308
addiu $1, $3, 4
xori $3, $3, 12
add $2, $3, $1
TAG308:
bne $2, $2, TAG309
mthi $2
mflo $4
mfhi $4
TAG309:
lui $2, 15
divu $2, $4
sll $0, $0, 0
bgez $3, TAG310
TAG310:
slti $2, $3, 12
mthi $2
srl $1, $3, 12
lb $2, 0($2)
TAG311:
sw $2, 0($2)
andi $4, $2, 11
mfhi $3
beq $4, $4, TAG312
TAG312:
lui $1, 5
bne $1, $1, TAG313
srlv $1, $1, $1
sll $0, $0, 0
TAG313:
sh $2, 0($2)
mtlo $2
sw $2, 0($2)
lui $4, 1
TAG314:
beq $4, $4, TAG315
mthi $4
mult $4, $4
lui $1, 0
TAG315:
bne $1, $1, TAG316
ori $4, $1, 5
or $2, $1, $4
multu $4, $1
TAG316:
bltz $2, TAG317
sll $0, $0, 0
bne $2, $2, TAG317
multu $2, $2
TAG317:
addu $4, $2, $2
bgtz $2, TAG318
sltiu $1, $4, 1
lui $4, 5
TAG318:
sll $0, $0, 0
mult $1, $4
beq $4, $4, TAG319
mtlo $1
TAG319:
lw $4, 0($1)
sb $1, 0($4)
lui $1, 5
lw $1, 0($4)
TAG320:
lb $2, 0($1)
sh $2, 0($1)
mfhi $1
beq $1, $1, TAG321
TAG321:
mtlo $1
mflo $4
addu $4, $4, $4
mfhi $1
TAG322:
lw $3, 0($1)
lui $2, 0
mfhi $2
srav $2, $2, $1
TAG323:
lh $3, 0($2)
xori $4, $2, 6
addi $1, $2, 14
mult $1, $3
TAG324:
sll $3, $1, 9
bltz $3, TAG325
mflo $4
mflo $3
TAG325:
mfhi $2
sll $1, $3, 11
bne $2, $3, TAG326
subu $4, $3, $3
TAG326:
lb $4, 0($4)
lui $3, 7
mflo $2
lui $2, 3
TAG327:
sltiu $4, $2, 7
beq $2, $4, TAG328
mfhi $4
blez $4, TAG328
TAG328:
sh $4, 0($4)
lui $1, 4
lh $1, 0($4)
sw $1, 0($4)
TAG329:
lh $1, 0($1)
bltz $1, TAG330
andi $1, $1, 3
mfhi $2
TAG330:
srlv $1, $2, $2
bne $2, $2, TAG331
addiu $1, $2, 10
mtlo $1
TAG331:
mthi $1
sh $1, 0($1)
multu $1, $1
bne $1, $1, TAG332
TAG332:
slt $4, $1, $1
mult $1, $1
sw $4, 0($4)
ori $1, $4, 6
TAG333:
bne $1, $1, TAG334
lui $1, 9
srl $2, $1, 0
multu $1, $2
TAG334:
srl $4, $2, 8
div $2, $2
beq $2, $2, TAG335
lui $2, 11
TAG335:
xor $1, $2, $2
mflo $3
sll $0, $0, 0
div $1, $3
TAG336:
mthi $3
lui $4, 12
mtlo $3
bgez $4, TAG337
TAG337:
slti $2, $4, 11
lui $4, 7
lui $4, 8
bgez $4, TAG338
TAG338:
sll $0, $0, 0
subu $3, $3, $3
bltz $3, TAG339
lui $2, 4
TAG339:
mflo $1
mflo $4
bltz $4, TAG340
mtlo $4
TAG340:
divu $4, $4
lui $4, 0
lui $2, 2
lui $1, 1
TAG341:
sll $0, $0, 0
mthi $2
mflo $2
lui $3, 14
TAG342:
subu $3, $3, $3
sll $2, $3, 7
lui $4, 9
mthi $4
TAG343:
bltz $4, TAG344
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG344:
bltz $2, TAG345
mflo $4
multu $4, $2
lui $3, 4
TAG345:
blez $3, TAG346
sll $0, $0, 0
lui $4, 2
lui $3, 3
TAG346:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
xori $4, $3, 2
TAG347:
mflo $3
lbu $3, 0($3)
bne $3, $3, TAG348
mthi $3
TAG348:
lhu $3, 0($3)
bne $3, $3, TAG349
lb $1, 0($3)
bgtz $3, TAG349
TAG349:
sh $1, 0($1)
lui $3, 0
bne $1, $1, TAG350
lui $4, 7
TAG350:
beq $4, $4, TAG351
sllv $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG351
TAG351:
mthi $4
bgez $4, TAG352
sll $0, $0, 0
lb $1, 0($4)
TAG352:
bgtz $1, TAG353
sb $1, 0($1)
mult $1, $1
beq $1, $1, TAG353
TAG353:
mthi $1
bne $1, $1, TAG354
mult $1, $1
addiu $2, $1, 2
TAG354:
mult $2, $2
mtlo $2
bgtz $2, TAG355
lb $1, 0($2)
TAG355:
sh $1, 0($1)
lb $3, 0($1)
mthi $1
lui $4, 10
TAG356:
sll $3, $4, 13
beq $4, $3, TAG357
sll $0, $0, 0
bltz $4, TAG357
TAG357:
sll $0, $0, 0
bgez $4, TAG358
lui $2, 14
bne $3, $3, TAG358
TAG358:
mthi $2
sll $0, $0, 0
mflo $2
srl $4, $2, 10
TAG359:
lh $2, 0($4)
sllv $3, $2, $2
mflo $3
divu $3, $3
TAG360:
mult $3, $3
blez $3, TAG361
ori $2, $3, 0
lh $1, 0($2)
TAG361:
mtlo $1
mflo $4
lui $4, 2
beq $4, $1, TAG362
TAG362:
mult $4, $4
bne $4, $4, TAG363
or $2, $4, $4
bne $2, $4, TAG363
TAG363:
lui $2, 15
bltz $2, TAG364
sll $0, $0, 0
mthi $2
TAG364:
bgez $2, TAG365
nor $1, $2, $2
bgtz $1, TAG365
sub $3, $2, $2
TAG365:
mthi $3
sh $3, 0($3)
mthi $3
mthi $3
TAG366:
divu $3, $3
sh $3, 0($3)
addu $1, $3, $3
bgez $1, TAG367
TAG367:
lbu $1, 0($1)
blez $1, TAG368
mthi $1
lbu $2, 0($1)
TAG368:
andi $2, $2, 5
sw $2, 0($2)
srlv $2, $2, $2
sw $2, 0($2)
TAG369:
mflo $4
mtlo $4
beq $2, $2, TAG370
srl $4, $4, 9
TAG370:
lb $1, 0($4)
bne $1, $4, TAG371
mtlo $1
sub $2, $1, $1
TAG371:
lui $4, 4
addu $4, $2, $2
andi $1, $2, 14
mult $4, $4
TAG372:
multu $1, $1
beq $1, $1, TAG373
andi $4, $1, 14
mflo $3
TAG373:
mtlo $3
lhu $3, 0($3)
blez $3, TAG374
mult $3, $3
TAG374:
sw $3, 0($3)
sh $3, 0($3)
mult $3, $3
sltu $2, $3, $3
TAG375:
mthi $2
bgez $2, TAG376
mult $2, $2
beq $2, $2, TAG376
TAG376:
lhu $3, 0($2)
lui $3, 7
divu $3, $3
sll $0, $0, 0
TAG377:
sll $0, $0, 0
bltz $3, TAG378
sll $0, $0, 0
bgtz $3, TAG378
TAG378:
mflo $2
bltz $3, TAG379
mtlo $2
bltz $3, TAG379
TAG379:
sllv $2, $2, $2
div $2, $2
bne $2, $2, TAG380
mflo $4
TAG380:
subu $2, $4, $4
mflo $2
mflo $3
mflo $2
TAG381:
bgtz $2, TAG382
xori $3, $2, 7
and $3, $3, $2
multu $3, $3
TAG382:
blez $3, TAG383
sh $3, 0($3)
multu $3, $3
lui $3, 15
TAG383:
nor $2, $3, $3
mfhi $1
mflo $4
sb $1, 0($4)
TAG384:
beq $4, $4, TAG385
multu $4, $4
sb $4, 0($4)
bgez $4, TAG385
TAG385:
sh $4, 0($4)
lui $2, 10
nor $2, $2, $2
subu $3, $4, $4
TAG386:
mthi $3
bltz $3, TAG387
mthi $3
lh $2, 0($3)
TAG387:
bne $2, $2, TAG388
mflo $2
sw $2, -1296($2)
multu $2, $2
TAG388:
sll $0, $0, 0
mthi $2
multu $2, $4
mfhi $4
TAG389:
multu $4, $4
sw $4, 0($4)
lbu $2, 0($4)
multu $4, $4
TAG390:
lhu $3, 0($2)
lh $1, 0($2)
addiu $4, $1, 14
addu $2, $1, $4
TAG391:
lhu $4, 0($2)
lhu $2, 0($2)
slti $4, $2, 0
sh $2, 0($2)
TAG392:
lui $4, 11
mfhi $1
blez $4, TAG393
mtlo $4
TAG393:
multu $1, $1
bne $1, $1, TAG394
mfhi $1
lbu $4, 0($1)
TAG394:
blez $4, TAG395
sltu $2, $4, $4
mthi $2
lui $4, 5
TAG395:
mtlo $4
sw $4, 0($4)
andi $3, $4, 2
lui $3, 7
TAG396:
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG397
xor $3, $3, $1
TAG397:
divu $3, $3
bgtz $3, TAG398
lui $1, 8
lui $4, 10
TAG398:
sh $4, 0($4)
bgez $4, TAG399
sh $4, 0($4)
bne $4, $4, TAG399
TAG399:
add $1, $4, $4
xori $3, $1, 7
bgtz $3, TAG400
lh $2, 0($4)
TAG400:
lhu $1, 0($2)
bgez $1, TAG401
mtlo $1
mfhi $1
TAG401:
lh $1, 0($1)
sw $1, 0($1)
mult $1, $1
mtlo $1
TAG402:
mfhi $2
lui $3, 8
addiu $2, $1, 5
xor $3, $3, $3
TAG403:
mfhi $2
srlv $2, $2, $3
and $4, $2, $3
addi $2, $3, 4
TAG404:
slt $2, $2, $2
lhu $3, 0($2)
multu $3, $3
bne $2, $2, TAG405
TAG405:
and $2, $3, $3
lw $3, 0($3)
mflo $2
blez $3, TAG406
TAG406:
sw $2, 0($2)
mflo $2
multu $2, $2
lui $4, 14
TAG407:
bne $4, $4, TAG408
addu $4, $4, $4
mfhi $4
bgez $4, TAG408
TAG408:
multu $4, $4
lb $4, 0($4)
blez $4, TAG409
mult $4, $4
TAG409:
bgez $4, TAG410
mult $4, $4
lui $3, 1
mfhi $1
TAG410:
bgtz $1, TAG411
mthi $1
multu $1, $1
lb $1, 0($1)
TAG411:
sb $1, 0($1)
mtlo $1
srl $3, $1, 2
addiu $3, $3, 13
TAG412:
bgtz $3, TAG413
lbu $2, 0($3)
mtlo $3
sb $2, 0($3)
TAG413:
div $2, $2
mthi $2
bgtz $2, TAG414
ori $3, $2, 13
TAG414:
sltu $4, $3, $3
add $3, $4, $3
subu $4, $3, $3
mfhi $1
TAG415:
sb $1, 0($1)
multu $1, $1
mult $1, $1
ori $2, $1, 9
TAG416:
beq $2, $2, TAG417
slt $3, $2, $2
slti $2, $3, 6
blez $3, TAG417
TAG417:
lui $4, 3
bne $4, $2, TAG418
sll $0, $0, 0
mfhi $1
TAG418:
bltz $1, TAG419
lbu $1, 0($1)
bne $1, $1, TAG419
sb $1, 0($1)
TAG419:
xor $3, $1, $1
mthi $1
bgez $1, TAG420
mthi $1
TAG420:
lw $3, 0($3)
multu $3, $3
bltz $3, TAG421
mflo $2
TAG421:
beq $2, $2, TAG422
lb $3, 0($2)
multu $2, $2
lw $2, 0($3)
TAG422:
multu $2, $2
beq $2, $2, TAG423
lui $2, 10
blez $2, TAG423
TAG423:
lui $1, 0
subu $4, $2, $2
sb $2, 0($1)
sll $0, $0, 0
TAG424:
slti $1, $3, 2
mthi $3
mtlo $3
sra $4, $3, 6
TAG425:
lui $4, 9
sll $4, $4, 14
mflo $2
mfhi $1
TAG426:
blez $1, TAG427
srav $3, $1, $1
bltz $3, TAG427
lh $1, 0($3)
TAG427:
sra $4, $1, 5
mflo $2
bltz $2, TAG428
mtlo $1
TAG428:
lbu $3, 0($2)
lui $4, 7
mfhi $4
slti $3, $2, 6
TAG429:
nor $3, $3, $3
mfhi $1
lui $3, 14
subu $3, $1, $1
TAG430:
lh $1, 0($3)
beq $1, $1, TAG431
mflo $2
mflo $1
TAG431:
mfhi $3
lui $4, 12
subu $1, $1, $3
beq $4, $1, TAG432
TAG432:
ori $4, $1, 1
multu $4, $1
lb $2, 0($4)
bgtz $2, TAG433
TAG433:
mtlo $2
mthi $2
addiu $4, $2, 10
div $4, $4
TAG434:
div $4, $4
subu $2, $4, $4
mthi $2
sw $2, 0($2)
TAG435:
mtlo $2
lw $1, 0($2)
bgtz $1, TAG436
sw $1, 0($2)
TAG436:
mult $1, $1
mfhi $4
bne $4, $1, TAG437
mult $4, $1
TAG437:
bgez $4, TAG438
addi $2, $4, 13
bgez $4, TAG438
sb $2, 0($2)
TAG438:
addiu $3, $2, 0
mfhi $1
sll $4, $1, 8
mult $1, $2
TAG439:
sh $4, 0($4)
and $2, $4, $4
mflo $3
beq $4, $4, TAG440
TAG440:
slt $4, $3, $3
sh $3, 0($4)
sh $4, 0($3)
mult $3, $3
TAG441:
lui $2, 1
bgtz $2, TAG442
lui $3, 14
srlv $1, $2, $4
TAG442:
sh $1, 0($1)
mult $1, $1
bne $1, $1, TAG443
mult $1, $1
TAG443:
mfhi $4
mtlo $4
lb $3, 0($1)
lui $4, 7
TAG444:
sll $0, $0, 0
mtlo $4
xori $1, $4, 2
lui $4, 8
TAG445:
bgez $4, TAG446
addu $2, $4, $4
sltiu $4, $4, 14
mfhi $2
TAG446:
srl $1, $2, 15
divu $2, $2
bgez $2, TAG447
mflo $3
TAG447:
mthi $3
beq $3, $3, TAG448
multu $3, $3
multu $3, $3
TAG448:
bne $3, $3, TAG449
lbu $1, 0($3)
lui $4, 14
divu $4, $4
TAG449:
srlv $1, $4, $4
subu $3, $1, $4
beq $4, $1, TAG450
mflo $3
TAG450:
lui $3, 12
beq $3, $3, TAG451
sll $0, $0, 0
beq $3, $3, TAG451
TAG451:
div $3, $3
mult $3, $3
sll $1, $3, 0
mfhi $3
TAG452:
srlv $1, $3, $3
sb $1, 0($1)
mtlo $1
mfhi $1
TAG453:
mfhi $3
lui $1, 10
bne $1, $1, TAG454
lhu $4, -144($3)
TAG454:
bne $4, $4, TAG455
nor $2, $4, $4
lhu $4, 0($4)
mthi $4
TAG455:
multu $4, $4
lui $2, 4
bltz $4, TAG456
sll $0, $0, 0
TAG456:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG457
TAG457:
subu $3, $2, $2
mflo $3
addu $1, $3, $3
srl $1, $2, 15
TAG458:
mtlo $1
bne $1, $1, TAG459
slti $1, $1, 12
subu $2, $1, $1
TAG459:
bgez $2, TAG460
multu $2, $2
mult $2, $2
sb $2, 0($2)
TAG460:
andi $1, $2, 8
mtlo $2
lb $4, 0($1)
sw $2, 0($1)
TAG461:
sh $4, 0($4)
bgtz $4, TAG462
xori $3, $4, 15
div $3, $3
TAG462:
mflo $3
mthi $3
lbu $4, 0($3)
addu $1, $3, $4
TAG463:
sb $1, 0($1)
bne $1, $1, TAG464
sltu $3, $1, $1
slt $4, $1, $3
TAG464:
blez $4, TAG465
srl $3, $4, 8
bgtz $3, TAG465
mthi $3
TAG465:
sw $3, 0($3)
bgez $3, TAG466
sh $3, 0($3)
slt $1, $3, $3
TAG466:
div $1, $1
bgez $1, TAG467
addiu $3, $1, 2
srav $3, $1, $1
TAG467:
divu $3, $3
beq $3, $3, TAG468
mult $3, $3
slt $1, $3, $3
TAG468:
lui $4, 0
bgez $1, TAG469
sh $1, 0($4)
srav $4, $4, $1
TAG469:
sh $4, 0($4)
sllv $4, $4, $4
mflo $4
lbu $2, 0($4)
TAG470:
mthi $2
mfhi $4
lb $2, 0($2)
mtlo $2
TAG471:
beq $2, $2, TAG472
sb $2, 0($2)
xor $1, $2, $2
srl $4, $1, 12
TAG472:
sb $4, 0($4)
beq $4, $4, TAG473
lui $4, 1
sltu $3, $4, $4
TAG473:
div $3, $3
beq $3, $3, TAG474
mthi $3
mfhi $4
TAG474:
mult $4, $4
mtlo $4
beq $4, $4, TAG475
multu $4, $4
TAG475:
mflo $3
bne $4, $3, TAG476
sll $0, $0, 0
sh $4, 0($3)
TAG476:
multu $3, $3
lw $1, 0($3)
lbu $4, 0($1)
lbu $2, 0($3)
TAG477:
bne $2, $2, TAG478
mflo $3
sb $2, 0($2)
bgez $2, TAG478
TAG478:
sw $3, 0($3)
mthi $3
sb $3, 0($3)
lui $3, 3
TAG479:
bgtz $3, TAG480
mult $3, $3
mthi $3
mtlo $3
TAG480:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
beq $3, $2, TAG481
TAG481:
sw $2, 0($2)
mfhi $3
mtlo $2
xor $1, $3, $3
TAG482:
sll $1, $1, 5
bne $1, $1, TAG483
lui $4, 8
lui $1, 15
TAG483:
lui $1, 8
mflo $2
mthi $2
multu $1, $2
TAG484:
mult $2, $2
lui $3, 5
subu $1, $3, $3
sll $0, $0, 0
TAG485:
mtlo $4
srl $3, $4, 5
mult $3, $3
mfhi $3
TAG486:
sltiu $2, $3, 12
lh $3, 0($3)
lb $4, 0($2)
lui $4, 9
TAG487:
lui $4, 15
mflo $2
lui $1, 2
mtlo $4
TAG488:
nor $4, $1, $1
mflo $4
subu $1, $4, $4
lui $4, 4
TAG489:
bgtz $4, TAG490
mtlo $4
sw $4, 0($4)
lw $3, 0($4)
TAG490:
mthi $3
mult $3, $3
lb $4, 0($3)
mflo $4
TAG491:
mthi $4
mult $4, $4
mflo $2
mflo $2
TAG492:
sw $2, 0($2)
mflo $1
sw $1, 0($2)
andi $4, $1, 0
TAG493:
sh $4, 0($4)
bgtz $4, TAG494
lbu $1, 0($4)
mult $1, $1
TAG494:
multu $1, $1
lw $1, 0($1)
mfhi $2
mtlo $1
TAG495:
blez $2, TAG496
lui $2, 11
lui $3, 4
lhu $4, 0($2)
TAG496:
bne $4, $4, TAG497
sh $4, 0($4)
mult $4, $4
mfhi $3
TAG497:
slti $4, $3, 7
mflo $1
sub $1, $4, $1
sb $1, 0($3)
TAG498:
sb $1, 0($1)
bne $1, $1, TAG499
addiu $2, $1, 0
xor $4, $2, $2
TAG499:
mthi $4
srav $3, $4, $4
multu $4, $4
bne $4, $4, TAG500
TAG500:
sw $3, 0($3)
and $1, $3, $3
sub $4, $1, $1
multu $3, $4
TAG501:
multu $4, $4
lui $1, 12
sltiu $4, $1, 11
sh $1, 0($4)
TAG502:
sh $4, 0($4)
lui $3, 9
lui $4, 13
mflo $2
TAG503:
sh $2, 0($2)
bgtz $2, TAG504
mthi $2
mtlo $2
TAG504:
blez $2, TAG505
lb $1, 0($2)
blez $2, TAG505
nor $2, $1, $2
TAG505:
mtlo $2
beq $2, $2, TAG506
mthi $2
ori $3, $2, 7
TAG506:
mfhi $3
mtlo $3
beq $3, $3, TAG507
mult $3, $3
TAG507:
mfhi $4
mflo $3
mthi $3
addi $1, $3, 9
TAG508:
sra $1, $1, 11
beq $1, $1, TAG509
lb $4, 0($1)
mfhi $2
TAG509:
sb $2, 0($2)
blez $2, TAG510
addi $2, $2, 3
lui $1, 3
TAG510:
mflo $3
srl $4, $1, 1
lui $4, 7
lui $3, 13
TAG511:
mtlo $3
lui $2, 11
beq $3, $3, TAG512
mthi $2
TAG512:
div $2, $2
sra $2, $2, 12
bgez $2, TAG513
mult $2, $2
TAG513:
mflo $4
or $4, $2, $2
sb $4, -176($2)
mflo $4
TAG514:
bltz $4, TAG515
sh $4, -30976($4)
multu $4, $4
subu $4, $4, $4
TAG515:
slti $1, $4, 7
mflo $2
bltz $2, TAG516
sb $1, 0($4)
TAG516:
mult $2, $2
lui $1, 11
subu $1, $2, $2
mtlo $1
TAG517:
lh $1, 0($1)
sb $1, -30977($1)
mthi $1
lhu $1, -30977($1)
TAG518:
sw $1, -30977($1)
addiu $4, $1, 1
bgtz $4, TAG519
lb $4, -30978($4)
TAG519:
xori $3, $4, 7
bne $4, $4, TAG520
andi $2, $3, 2
mfhi $1
TAG520:
multu $1, $1
mthi $1
bgez $1, TAG521
mthi $1
TAG521:
mult $1, $1
blez $1, TAG522
xor $4, $1, $1
addu $2, $1, $4
TAG522:
mtlo $2
nor $1, $2, $2
and $2, $1, $1
mtlo $1
TAG523:
blez $2, TAG524
ori $2, $2, 4
mtlo $2
mtlo $2
TAG524:
beq $2, $2, TAG525
addiu $4, $2, 9
bgtz $4, TAG525
div $4, $2
TAG525:
beq $4, $4, TAG526
sw $4, 30969($4)
mflo $1
xori $2, $1, 9
TAG526:
sll $0, $0, 0
addu $2, $2, $2
beq $2, $2, TAG527
divu $2, $2
TAG527:
mthi $2
sll $0, $0, 0
blez $2, TAG528
div $2, $2
TAG528:
lui $2, 1
mflo $3
sll $0, $0, 0
bgtz $2, TAG529
TAG529:
sb $3, 0($3)
mfhi $4
bgez $3, TAG530
andi $2, $3, 3
TAG530:
bne $2, $2, TAG531
addiu $1, $2, 5
multu $1, $2
lui $3, 10
TAG531:
sll $0, $0, 0
mfhi $1
sh $3, 0($1)
lui $2, 15
TAG532:
nor $1, $2, $2
bne $1, $2, TAG533
lui $3, 10
beq $1, $2, TAG533
TAG533:
lui $4, 13
mflo $4
mflo $4
mfhi $3
TAG534:
bgez $3, TAG535
mult $3, $3
and $2, $3, $3
bltz $3, TAG535
TAG535:
mthi $2
sll $3, $2, 4
xori $1, $3, 8
div $2, $2
TAG536:
mult $1, $1
sll $0, $0, 0
bgtz $1, TAG537
mthi $1
TAG537:
divu $1, $1
beq $1, $1, TAG538
mfhi $2
lui $4, 1
TAG538:
mtlo $4
sb $4, 0($4)
lbu $3, 0($4)
bltz $3, TAG539
TAG539:
mflo $3
lh $2, 0($3)
lb $3, 0($3)
slt $2, $3, $3
TAG540:
lui $4, 4
mult $4, $2
lhu $3, 0($2)
bltz $3, TAG541
TAG541:
lh $1, 0($3)
sltiu $1, $3, 11
bgtz $1, TAG542
lbu $2, 0($1)
TAG542:
mfhi $4
bne $4, $4, TAG543
mfhi $1
lh $4, 0($1)
TAG543:
sh $4, 0($4)
lhu $2, 0($4)
multu $4, $4
lui $2, 8
TAG544:
bgtz $2, TAG545
mthi $2
div $2, $2
sb $2, 0($2)
TAG545:
sll $0, $0, 0
bgez $2, TAG546
mthi $2
bgez $2, TAG546
TAG546:
srl $1, $2, 10
mfhi $4
divu $2, $2
sll $0, $0, 0
TAG547:
mtlo $4
ori $3, $4, 8
nor $1, $4, $4
lui $1, 10
TAG548:
bltz $1, TAG549
sll $0, $0, 0
bgez $1, TAG549
mult $1, $1
TAG549:
mtlo $1
mthi $1
and $2, $1, $1
lui $4, 15
TAG550:
and $3, $4, $4
mfhi $2
lui $2, 3
nor $1, $3, $4
TAG551:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG552:
mthi $3
mtlo $3
bgtz $3, TAG553
mthi $3
TAG553:
div $3, $3
lui $3, 2
multu $3, $3
sll $0, $0, 0
TAG554:
or $3, $4, $4
and $2, $4, $3
bgez $2, TAG555
div $4, $2
TAG555:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
lui $1, 10
TAG556:
sll $0, $0, 0
bgtz $1, TAG557
mfhi $1
divu $1, $1
TAG557:
sw $1, 0($1)
ori $2, $1, 6
sw $1, 0($1)
lbu $3, 0($2)
TAG558:
beq $3, $3, TAG559
sll $1, $3, 6
mult $1, $3
lh $1, 0($3)
TAG559:
or $2, $1, $1
ori $4, $2, 4
mult $2, $1
lw $3, -384($2)
TAG560:
blez $3, TAG561
mflo $1
lbu $4, 0($3)
lui $2, 10
TAG561:
mtlo $2
andi $4, $2, 4
mult $4, $2
addiu $3, $2, 5
TAG562:
blez $3, TAG563
mthi $3
ori $1, $3, 3
and $1, $1, $3
TAG563:
beq $1, $1, TAG564
lui $3, 12
bgtz $1, TAG564
add $1, $3, $1
TAG564:
sltu $4, $1, $1
beq $4, $1, TAG565
mfhi $2
lh $1, 0($4)
TAG565:
bgez $1, TAG566
lui $4, 12
bgez $4, TAG566
mflo $3
TAG566:
bne $3, $3, TAG567
addu $2, $3, $3
sll $1, $3, 11
sll $0, $0, 0
TAG567:
blez $1, TAG568
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG568:
mtlo $2
sll $0, $0, 0
mfhi $3
sltu $2, $4, $4
TAG569:
andi $3, $2, 5
sw $3, 0($3)
bne $3, $3, TAG570
multu $2, $3
TAG570:
mtlo $3
srav $3, $3, $3
lhu $3, 0($3)
bgtz $3, TAG571
TAG571:
mflo $4
mthi $3
lw $1, 0($3)
blez $4, TAG572
TAG572:
lh $2, 0($1)
mflo $2
lh $1, 0($2)
blez $2, TAG573
TAG573:
sh $1, 0($1)
bne $1, $1, TAG574
multu $1, $1
xori $1, $1, 7
TAG574:
xori $4, $1, 2
blez $1, TAG575
lui $1, 8
multu $4, $1
TAG575:
mfhi $4
sll $0, $0, 0
multu $4, $4
multu $4, $4
TAG576:
sh $4, 0($4)
lui $4, 1
xor $4, $4, $4
srl $4, $4, 11
TAG577:
multu $4, $4
lhu $2, 0($4)
multu $2, $4
sb $2, 0($4)
TAG578:
and $2, $2, $2
nor $4, $2, $2
and $1, $2, $2
mult $1, $1
TAG579:
mtlo $1
nor $1, $1, $1
sw $1, 1($1)
xori $1, $1, 13
TAG580:
xori $1, $1, 0
lui $2, 7
slti $2, $1, 3
bltz $2, TAG581
TAG581:
srav $1, $2, $2
bltz $2, TAG582
mtlo $1
addiu $1, $2, 8
TAG582:
andi $1, $1, 7
div $1, $1
div $1, $1
xor $4, $1, $1
TAG583:
lui $4, 4
lui $4, 7
lui $1, 10
sll $0, $0, 0
TAG584:
lbu $4, 0($2)
bne $2, $2, TAG585
mfhi $4
bgez $2, TAG585
TAG585:
sw $4, 0($4)
mfhi $4
lui $2, 13
slti $2, $4, 1
TAG586:
mflo $2
lui $4, 1
lui $4, 6
srlv $2, $4, $2
TAG587:
mflo $2
lbu $1, 0($2)
divu $2, $2
lui $3, 11
TAG588:
beq $3, $3, TAG589
mtlo $3
bltz $3, TAG589
lui $3, 7
TAG589:
sll $0, $0, 0
or $1, $3, $3
sll $0, $0, 0
lui $1, 1
TAG590:
addu $2, $1, $1
xori $4, $2, 0
srl $2, $1, 5
sw $1, -2048($2)
TAG591:
mthi $2
lui $2, 1
mtlo $2
divu $2, $2
TAG592:
sll $0, $0, 0
srav $3, $2, $4
bne $4, $2, TAG593
addu $2, $4, $2
TAG593:
andi $3, $2, 4
sll $0, $0, 0
mfhi $1
lui $3, 12
TAG594:
addu $2, $3, $3
sll $0, $0, 0
mult $3, $2
mflo $3
TAG595:
lui $3, 14
ori $4, $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG596:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
lhu $4, -288($1)
TAG597:
bgez $4, TAG598
multu $4, $4
multu $4, $4
lh $3, 0($4)
TAG598:
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
TAG599:
sllv $3, $3, $3
or $1, $3, $3
lui $3, 8
bne $1, $3, TAG600
TAG600:
sll $0, $0, 0
nor $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG601:
mthi $2
sll $0, $0, 0
sll $1, $3, 1
sll $0, $0, 0
TAG602:
mfhi $1
bne $1, $1, TAG603
sra $4, $1, 6
sb $1, -24576($4)
TAG603:
lui $1, 1
beq $1, $1, TAG604
xori $2, $4, 14
lw $3, 0($4)
TAG604:
lui $3, 0
bne $3, $3, TAG605
mthi $3
sllv $2, $3, $3
TAG605:
bltz $2, TAG606
sb $2, 0($2)
lui $3, 8
sll $0, $0, 0
TAG606:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $3, $1, TAG607
TAG607:
mflo $4
bne $1, $4, TAG608
mult $1, $4
slti $4, $1, 3
TAG608:
bgez $4, TAG609
mflo $1
lb $4, 0($1)
lui $2, 1
TAG609:
lw $4, 0($2)
add $3, $2, $2
bne $3, $2, TAG610
sw $2, 0($2)
TAG610:
sh $3, 0($3)
lui $1, 5
multu $3, $3
mthi $1
TAG611:
sll $0, $0, 0
blez $3, TAG612
sra $3, $1, 11
sllv $3, $1, $3
TAG612:
lui $3, 5
lui $3, 3
lui $3, 10
sll $0, $0, 0
TAG613:
addiu $4, $3, 4
beq $4, $3, TAG614
mtlo $3
ori $4, $4, 7
TAG614:
lui $3, 7
mthi $4
mflo $1
div $1, $3
TAG615:
nor $1, $1, $1
beq $1, $1, TAG616
sll $0, $0, 0
mflo $4
TAG616:
and $3, $4, $4
sll $0, $0, 0
ori $2, $3, 14
mflo $4
TAG617:
divu $4, $4
sb $4, 0($4)
mtlo $4
mflo $2
TAG618:
sb $2, 0($2)
div $2, $2
divu $2, $2
bltz $2, TAG619
TAG619:
ori $3, $2, 9
mfhi $1
lb $4, 0($2)
lui $3, 4
TAG620:
beq $3, $3, TAG621
divu $3, $3
or $4, $3, $3
lui $3, 11
TAG621:
beq $3, $3, TAG622
mult $3, $3
bgez $3, TAG622
sb $3, 0($3)
TAG622:
addu $4, $3, $3
lui $3, 10
mflo $1
sllv $2, $4, $4
TAG623:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG624
TAG624:
sll $0, $0, 0
bgtz $2, TAG625
mthi $2
lui $1, 3
TAG625:
lh $4, 0($1)
lh $2, -256($4)
lbu $2, -256($4)
bgez $2, TAG626
TAG626:
nor $3, $2, $2
bgez $3, TAG627
andi $2, $2, 13
mult $2, $2
TAG627:
mult $2, $2
addi $3, $2, 0
mflo $4
ori $3, $4, 11
TAG628:
divu $3, $3
lbu $3, 0($3)
srlv $2, $3, $3
bgtz $3, TAG629
TAG629:
lui $3, 6
beq $2, $3, TAG630
multu $3, $2
mthi $2
TAG630:
sll $0, $0, 0
sll $0, $0, 0
add $4, $1, $1
bgtz $3, TAG631
TAG631:
lui $4, 7
bne $4, $4, TAG632
lui $1, 7
sll $0, $0, 0
TAG632:
mthi $1
beq $1, $1, TAG633
div $1, $1
mtlo $1
TAG633:
div $1, $1
bgtz $1, TAG634
sll $0, $0, 0
lw $3, 0($1)
TAG634:
multu $3, $3
mtlo $3
lui $4, 2
sll $0, $0, 0
TAG635:
sll $0, $0, 0
lui $4, 5
beq $4, $4, TAG636
sll $0, $0, 0
TAG636:
sra $1, $4, 3
bne $4, $1, TAG637
lui $3, 4
mflo $4
TAG637:
beq $4, $4, TAG638
mflo $1
lui $2, 11
lbu $1, 0($4)
TAG638:
beq $1, $1, TAG639
sll $0, $0, 0
multu $1, $1
sra $1, $1, 6
TAG639:
bne $1, $1, TAG640
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
TAG640:
bne $4, $4, TAG641
mult $4, $4
addu $2, $4, $4
subu $1, $2, $4
TAG641:
sll $0, $0, 0
mult $3, $3
bne $3, $3, TAG642
multu $3, $1
TAG642:
lui $2, 4
sll $0, $0, 0
xori $4, $2, 13
blez $3, TAG643
TAG643:
srl $4, $4, 12
mthi $4
bne $4, $4, TAG644
multu $4, $4
TAG644:
lui $3, 1
slti $2, $3, 15
sra $1, $4, 12
lhu $3, 0($4)
TAG645:
bne $3, $3, TAG646
lhu $1, 0($3)
lui $2, 9
mthi $3
TAG646:
sll $0, $0, 0
lui $1, 0
lhu $2, 0($1)
sllv $1, $2, $1
TAG647:
sw $1, -256($1)
lbu $1, -256($1)
blez $1, TAG648
mfhi $4
TAG648:
bgez $4, TAG649
xor $2, $4, $4
sltu $1, $4, $2
sb $4, 0($1)
TAG649:
addi $4, $1, 12
subu $1, $1, $1
sb $4, 0($1)
lhu $2, 0($1)
TAG650:
srl $4, $2, 8
sltiu $4, $4, 10
sb $4, 0($4)
bltz $2, TAG651
TAG651:
mthi $4
sb $4, 0($4)
div $4, $4
divu $4, $4
TAG652:
addu $4, $4, $4
bne $4, $4, TAG653
lui $4, 10
bne $4, $4, TAG653
TAG653:
mthi $4
mthi $4
lui $4, 7
sll $0, $0, 0
TAG654:
lui $2, 10
mflo $2
sra $3, $4, 14
beq $4, $3, TAG655
TAG655:
mflo $4
sb $4, 0($4)
sb $3, 0($3)
beq $3, $4, TAG656
TAG656:
lb $2, 0($4)
mtlo $4
xor $3, $2, $4
mfhi $3
TAG657:
sll $0, $0, 0
mthi $3
mtlo $3
bgtz $3, TAG658
TAG658:
mflo $2
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG659:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG660
sll $0, $0, 0
TAG660:
mtlo $3
lui $3, 9
beq $3, $3, TAG661
sll $0, $0, 0
TAG661:
mtlo $3
bne $3, $3, TAG662
sll $1, $3, 2
mtlo $3
TAG662:
lui $1, 0
lui $3, 8
bne $1, $1, TAG663
lhu $2, 0($1)
TAG663:
or $2, $2, $2
mfhi $3
mtlo $2
sh $2, -268($2)
TAG664:
mflo $4
mtlo $3
div $4, $4
xor $2, $3, $3
TAG665:
bne $2, $2, TAG666
mthi $2
addi $2, $2, 3
lbu $2, 0($2)
TAG666:
sw $2, 0($2)
mflo $4
sb $4, 0($4)
beq $4, $4, TAG667
TAG667:
mthi $4
divu $4, $4
sb $4, 0($4)
addu $1, $4, $4
TAG668:
divu $1, $1
mtlo $1
div $1, $1
srlv $4, $1, $1
TAG669:
mfhi $3
lui $2, 15
sb $2, 0($4)
beq $3, $4, TAG670
TAG670:
lui $3, 13
sll $0, $0, 0
mtlo $4
srav $2, $3, $2
TAG671:
bne $2, $2, TAG672
sra $1, $2, 11
lui $1, 0
lui $2, 5
TAG672:
mtlo $2
xor $3, $2, $2
lw $2, 0($3)
sw $2, -256($2)
TAG673:
multu $2, $2
nor $3, $2, $2
mfhi $4
sb $4, -256($2)
TAG674:
lui $3, 8
bltz $3, TAG675
subu $4, $3, $3
beq $4, $4, TAG675
TAG675:
sh $4, 0($4)
srlv $4, $4, $4
mflo $4
mflo $3
TAG676:
beq $3, $3, TAG677
sll $0, $0, 0
lhu $4, 0($3)
bgtz $4, TAG677
TAG677:
or $2, $4, $4
mtlo $2
srl $2, $2, 7
mthi $2
TAG678:
nor $3, $2, $2
sra $4, $3, 15
beq $3, $4, TAG679
mflo $2
TAG679:
beq $2, $2, TAG680
sra $3, $2, 11
blez $3, TAG680
xori $3, $3, 8
TAG680:
mflo $1
bgez $1, TAG681
mthi $1
lui $3, 2
TAG681:
mthi $3
lui $1, 7
sra $4, $3, 1
lb $4, 0($4)
TAG682:
mfhi $4
div $4, $4
xor $4, $4, $4
lui $4, 1
TAG683:
sll $0, $0, 0
xor $3, $4, $4
blez $3, TAG684
mthi $3
TAG684:
mtlo $3
mult $3, $3
sb $3, 0($3)
beq $3, $3, TAG685
TAG685:
lui $4, 8
sll $0, $0, 0
sll $2, $4, 14
lh $2, 0($3)
TAG686:
lbu $4, 0($2)
sw $4, 0($4)
lb $4, 0($2)
beq $2, $2, TAG687
TAG687:
mthi $4
bgez $4, TAG688
xori $3, $4, 6
sub $1, $3, $3
TAG688:
srl $3, $1, 3
sltu $3, $3, $3
srl $2, $1, 14
mtlo $2
TAG689:
sb $2, 0($2)
addiu $2, $2, 7
multu $2, $2
bgtz $2, TAG690
TAG690:
lui $4, 3
bne $4, $4, TAG691
sb $4, 0($2)
beq $4, $2, TAG691
TAG691:
sll $0, $0, 0
subu $1, $4, $4
sub $3, $4, $1
sll $0, $0, 0
TAG692:
sltiu $3, $1, 4
bgtz $1, TAG693
sb $3, 0($3)
sb $1, 0($1)
TAG693:
multu $3, $3
bne $3, $3, TAG694
subu $1, $3, $3
bgtz $3, TAG694
TAG694:
multu $1, $1
addiu $1, $1, 4
lui $3, 4
bne $1, $1, TAG695
TAG695:
addu $4, $3, $3
beq $3, $3, TAG696
mtlo $3
sb $4, 0($3)
TAG696:
multu $4, $4
mflo $3
mtlo $3
sll $0, $0, 0
TAG697:
addu $3, $3, $3
addiu $2, $3, 7
lui $3, 9
blez $3, TAG698
TAG698:
sll $0, $0, 0
mult $3, $3
multu $3, $3
sll $0, $0, 0
TAG699:
bne $1, $1, TAG700
sb $1, 0($1)
sltiu $3, $1, 9
slti $3, $1, 13
TAG700:
nor $2, $3, $3
srl $2, $2, 4
sll $0, $0, 0
bne $2, $2, TAG701
TAG701:
subu $1, $2, $2
sll $0, $0, 0
mthi $3
lui $1, 0
TAG702:
sllv $4, $1, $1
mult $1, $1
sb $1, 0($1)
mfhi $3
TAG703:
sb $3, 0($3)
mtlo $3
beq $3, $3, TAG704
mthi $3
TAG704:
lui $3, 9
sll $0, $0, 0
mflo $2
lhu $1, 0($2)
TAG705:
mthi $1
nor $1, $1, $1
lui $4, 13
multu $4, $1
TAG706:
mtlo $4
sllv $4, $4, $4
mthi $4
sll $0, $0, 0
TAG707:
subu $4, $4, $4
bgtz $4, TAG708
mthi $4
mult $4, $4
TAG708:
bne $4, $4, TAG709
lh $3, 0($4)
bgtz $3, TAG709
mthi $3
TAG709:
divu $3, $3
mtlo $3
sb $3, -256($3)
slti $4, $3, 6
TAG710:
mult $4, $4
mflo $2
lui $4, 13
sltu $1, $4, $4
TAG711:
beq $1, $1, TAG712
sw $1, 0($1)
lb $2, 0($1)
mfhi $2
TAG712:
multu $2, $2
lb $2, 0($2)
slt $2, $2, $2
beq $2, $2, TAG713
TAG713:
lui $3, 8
bne $3, $2, TAG714
addi $1, $2, 1
mfhi $1
TAG714:
bne $1, $1, TAG715
sll $3, $1, 7
mfhi $3
lbu $2, 0($3)
TAG715:
subu $2, $2, $2
ori $4, $2, 4
sub $1, $4, $2
beq $2, $1, TAG716
TAG716:
lui $2, 8
lw $1, 0($1)
addu $3, $1, $1
mthi $1
TAG717:
lui $2, 6
multu $2, $3
sll $0, $0, 0
beq $2, $3, TAG718
TAG718:
sll $0, $0, 0
mflo $1
xor $1, $2, $2
mfhi $2
TAG719:
multu $2, $2
mult $2, $2
or $1, $2, $2
ori $2, $2, 9
TAG720:
mflo $2
lhu $4, -5184($2)
multu $2, $2
ori $2, $4, 6
TAG721:
mult $2, $2
bltz $2, TAG722
divu $2, $2
lui $2, 6
TAG722:
addu $1, $2, $2
mtlo $2
sll $0, $0, 0
bltz $1, TAG723
TAG723:
mfhi $3
sll $2, $3, 13
bgtz $2, TAG724
lui $4, 3
TAG724:
sll $0, $0, 0
sb $3, 0($3)
beq $4, $4, TAG725
sh $4, 0($3)
TAG725:
nor $4, $3, $3
mthi $4
mtlo $3
lui $3, 4
TAG726:
blez $3, TAG727
xor $3, $3, $3
sub $3, $3, $3
mflo $1
TAG727:
lui $3, 13
mfhi $2
bne $2, $3, TAG728
addu $3, $2, $3
TAG728:
bltz $3, TAG729
slti $4, $3, 12
mult $3, $4
multu $3, $4
TAG729:
bltz $4, TAG730
mflo $4
mtlo $4
ori $4, $4, 6
TAG730:
beq $4, $4, TAG731
mflo $3
mthi $4
bgtz $3, TAG731
TAG731:
sra $1, $3, 4
or $1, $3, $3
slti $4, $1, 7
bltz $4, TAG732
TAG732:
lui $4, 7
blez $4, TAG733
sll $0, $0, 0
sll $0, $0, 0
TAG733:
mtlo $4
bgez $4, TAG734
mthi $4
beq $4, $4, TAG734
TAG734:
lui $4, 15
mtlo $4
mtlo $4
beq $4, $4, TAG735
TAG735:
mthi $4
mthi $4
multu $4, $4
addiu $2, $4, 11
TAG736:
sll $0, $0, 0
addiu $2, $2, 11
addiu $2, $2, 7
mthi $2
TAG737:
multu $2, $2
mfhi $1
mflo $3
ori $3, $1, 1
TAG738:
blez $3, TAG739
lui $1, 9
multu $1, $3
addu $1, $1, $3
TAG739:
mtlo $1
or $3, $1, $1
lui $2, 4
blez $1, TAG740
TAG740:
divu $2, $2
multu $2, $2
mtlo $2
sll $3, $2, 13
TAG741:
mtlo $3
subu $2, $3, $3
sll $0, $0, 0
sw $2, 0($2)
TAG742:
bne $2, $2, TAG743
lui $4, 6
subu $4, $2, $4
sll $0, $0, 0
TAG743:
blez $3, TAG744
mtlo $3
mthi $3
beq $3, $3, TAG744
TAG744:
sltiu $2, $3, 7
mtlo $3
mfhi $1
lui $3, 7
TAG745:
mfhi $4
slti $3, $4, 12
mthi $4
mfhi $3
TAG746:
multu $3, $3
lui $2, 15
bgez $2, TAG747
addiu $2, $2, 8
TAG747:
mflo $4
mult $4, $4
lb $1, -256($4)
blez $4, TAG748
TAG748:
xori $1, $1, 7
slt $2, $1, $1
sb $1, 0($1)
mthi $2
TAG749:
sb $2, 0($2)
mult $2, $2
sw $2, 0($2)
lhu $1, 0($2)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop