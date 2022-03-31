ori $1, $0, 3
ori $2, $0, 5
ori $3, $0, 6
ori $4, $0, 2
sw $2, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $1, 48($0)
sw $4, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $3, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $4, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $3, 124($0)
bgtz $2, TAG1
addiu $2, $2, 6
bgtz $2, TAG1
lui $2, 14
TAG1:
bne $2, $2, TAG2
mult $2, $2
mflo $3
bgez $3, TAG2
TAG2:
div $3, $3
lui $4, 3
lui $1, 1
lui $3, 12
TAG3:
sll $0, $0, 0
mfhi $2
mflo $2
lui $3, 5
TAG4:
mthi $3
mtlo $3
slti $1, $3, 13
mfhi $3
TAG5:
mthi $3
mflo $1
lui $4, 15
and $1, $3, $1
TAG6:
sll $0, $0, 0
blez $1, TAG7
sra $1, $1, 7
beq $1, $1, TAG7
TAG7:
mtlo $1
xori $3, $1, 13
blez $3, TAG8
lui $2, 7
TAG8:
mfhi $3
lui $1, 13
bne $2, $1, TAG9
sltu $4, $3, $3
TAG9:
srav $3, $4, $4
sw $3, 0($4)
beq $3, $3, TAG10
lw $4, 0($4)
TAG10:
addi $1, $4, 15
sltiu $1, $4, 3
bne $1, $1, TAG11
srav $4, $1, $1
TAG11:
xori $2, $4, 12
ori $3, $2, 14
lw $1, 0($2)
mflo $3
TAG12:
sll $0, $0, 0
lui $4, 0
sll $4, $2, 7
divu $4, $3
TAG13:
blez $4, TAG14
andi $1, $4, 11
mthi $1
bne $1, $4, TAG14
TAG14:
lui $4, 13
mflo $1
sh $1, 0($1)
lhu $1, 0($1)
TAG15:
lui $1, 9
blez $1, TAG16
subu $3, $1, $1
beq $1, $1, TAG16
TAG16:
mflo $3
beq $3, $3, TAG17
lh $3, 0($3)
sh $3, 0($3)
TAG17:
lw $1, 0($3)
mflo $4
bne $4, $3, TAG18
lhu $1, 0($1)
TAG18:
mtlo $1
lui $3, 4
lh $2, 0($1)
sll $0, $0, 0
TAG19:
lbu $3, 0($4)
multu $3, $4
multu $4, $3
sw $3, 0($4)
TAG20:
sh $3, 0($3)
mfhi $2
bne $3, $3, TAG21
ori $3, $2, 15
TAG21:
lbu $4, 0($3)
bgtz $3, TAG22
lhu $3, 0($4)
mflo $3
TAG22:
add $2, $3, $3
lhu $3, 0($3)
lbu $1, 0($2)
addiu $2, $3, 11
TAG23:
mfhi $3
lui $2, 7
mult $2, $2
mtlo $3
TAG24:
bltz $2, TAG25
div $2, $2
multu $2, $2
sll $2, $2, 1
TAG25:
bne $2, $2, TAG26
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG26:
multu $1, $1
mfhi $3
sll $4, $1, 2
sb $3, 0($1)
TAG27:
beq $4, $4, TAG28
multu $4, $4
addiu $3, $4, 7
divu $3, $3
TAG28:
mthi $3
ori $3, $3, 14
mthi $3
and $4, $3, $3
TAG29:
slti $3, $4, 5
bgez $4, TAG30
lui $1, 11
sw $4, 0($4)
TAG30:
bne $1, $1, TAG31
div $1, $1
sll $0, $0, 0
mflo $1
TAG31:
srav $4, $1, $1
ori $3, $1, 9
div $3, $3
divu $3, $3
TAG32:
lbu $2, 0($3)
beq $2, $3, TAG33
mult $3, $2
mthi $2
TAG33:
beq $2, $2, TAG34
lui $2, 14
bltz $2, TAG34
lb $3, 0($2)
TAG34:
slt $4, $3, $3
mfhi $3
mfhi $2
sh $4, 0($4)
TAG35:
mthi $2
xor $4, $2, $2
beq $2, $4, TAG36
mfhi $4
TAG36:
bltz $4, TAG37
mflo $2
mtlo $2
bne $2, $2, TAG37
TAG37:
lbu $4, 0($2)
andi $3, $4, 7
mult $2, $2
sh $2, 0($2)
TAG38:
bne $3, $3, TAG39
lui $3, 1
mflo $4
lb $2, 0($4)
TAG39:
multu $2, $2
mult $2, $2
mflo $1
sltu $3, $2, $1
TAG40:
lw $1, 0($3)
bne $1, $1, TAG41
lw $3, 0($3)
mult $3, $1
TAG41:
bltz $3, TAG42
lui $2, 12
slti $4, $3, 1
sltiu $2, $4, 12
TAG42:
or $4, $2, $2
sb $4, 0($4)
beq $4, $4, TAG43
mthi $4
TAG43:
sltiu $4, $4, 8
mthi $4
lbu $3, 0($4)
beq $3, $4, TAG44
TAG44:
mthi $3
lb $4, 0($3)
bgez $3, TAG45
mflo $4
TAG45:
lw $1, 0($4)
bltz $4, TAG46
lb $2, -256($1)
div $2, $1
TAG46:
lui $4, 4
srav $2, $2, $4
lui $2, 6
divu $2, $2
TAG47:
lui $1, 6
sll $0, $0, 0
sll $0, $0, 0
lui $2, 3
TAG48:
xor $2, $2, $2
sw $2, 0($2)
multu $2, $2
addiu $3, $2, 9
TAG49:
mtlo $3
mthi $3
mflo $1
addiu $2, $1, 6
TAG50:
xori $1, $2, 7
slt $1, $1, $1
bne $1, $1, TAG51
sh $2, 0($1)
TAG51:
mult $1, $1
mult $1, $1
bltz $1, TAG52
xor $3, $1, $1
TAG52:
mflo $1
lui $3, 10
mfhi $3
addiu $1, $3, 1
TAG53:
div $1, $1
sb $1, 0($1)
beq $1, $1, TAG54
lbu $2, 0($1)
TAG54:
mthi $2
bne $2, $2, TAG55
mtlo $2
sb $2, 0($2)
TAG55:
addiu $4, $2, 6
bne $2, $4, TAG56
addiu $1, $2, 6
mfhi $3
TAG56:
mthi $3
bgez $3, TAG57
mflo $2
srlv $3, $2, $3
TAG57:
sh $3, 0($3)
srl $4, $3, 5
lui $1, 4
mfhi $1
TAG58:
lhu $2, 0($1)
sll $1, $1, 9
bne $1, $1, TAG59
mfhi $2
TAG59:
multu $2, $2
sw $2, 0($2)
blez $2, TAG60
sltiu $1, $2, 1
TAG60:
sb $1, 0($1)
mflo $2
bltz $2, TAG61
sw $2, 0($2)
TAG61:
sb $2, 0($2)
sw $2, 0($2)
bgez $2, TAG62
lbu $3, 0($2)
TAG62:
lui $3, 6
bne $3, $3, TAG63
multu $3, $3
bgez $3, TAG63
TAG63:
sll $1, $3, 10
div $1, $1
sll $0, $0, 0
addiu $2, $1, 2
TAG64:
mtlo $2
bgtz $2, TAG65
subu $3, $2, $2
multu $2, $2
TAG65:
bltz $3, TAG66
multu $3, $3
sb $3, 0($3)
mthi $3
TAG66:
mfhi $2
beq $2, $2, TAG67
mtlo $3
mthi $3
TAG67:
mult $2, $2
lh $2, 0($2)
lui $4, 9
mfhi $3
TAG68:
mthi $3
bne $3, $3, TAG69
lui $3, 14
mult $3, $3
TAG69:
bne $3, $3, TAG70
lui $4, 10
andi $1, $4, 11
lui $3, 15
TAG70:
bltz $3, TAG71
lui $4, 8
lui $4, 8
mthi $4
TAG71:
mtlo $4
bgtz $4, TAG72
mfhi $3
blez $3, TAG72
TAG72:
lui $2, 8
mflo $1
mfhi $1
multu $3, $2
TAG73:
mtlo $1
addu $2, $1, $1
mflo $2
nor $4, $2, $2
TAG74:
mthi $4
andi $2, $4, 7
divu $4, $4
multu $4, $2
TAG75:
lui $1, 9
sll $0, $0, 0
lui $2, 0
lui $3, 13
TAG76:
bgtz $3, TAG77
mtlo $3
sh $3, 0($3)
mflo $1
TAG77:
srlv $3, $1, $1
bgez $3, TAG78
sltiu $4, $3, 7
mthi $3
TAG78:
bne $4, $4, TAG79
lui $4, 10
bltz $4, TAG79
mtlo $4
TAG79:
blez $4, TAG80
mflo $3
divu $4, $4
sll $0, $0, 0
TAG80:
slti $3, $3, 9
sb $3, 0($3)
addi $4, $3, 10
multu $3, $3
TAG81:
lui $3, 14
lhu $4, 0($4)
mthi $3
mfhi $1
TAG82:
mult $1, $1
divu $1, $1
mthi $1
beq $1, $1, TAG83
TAG83:
sll $0, $0, 0
lui $2, 14
xori $3, $3, 5
slt $3, $2, $3
TAG84:
bgtz $3, TAG85
subu $1, $3, $3
ori $3, $3, 3
mthi $3
TAG85:
mthi $3
mflo $4
div $4, $4
multu $3, $4
TAG86:
mthi $4
lui $2, 8
bne $4, $2, TAG87
sll $0, $0, 0
TAG87:
subu $2, $2, $2
bltz $2, TAG88
sltu $3, $2, $2
lui $1, 6
TAG88:
bne $1, $1, TAG89
sll $0, $0, 0
slt $1, $2, $2
andi $1, $1, 10
TAG89:
mfhi $2
sh $1, 0($1)
multu $1, $1
lb $1, 0($2)
TAG90:
multu $1, $1
srav $1, $1, $1
nor $1, $1, $1
nor $1, $1, $1
TAG91:
lhu $4, 0($1)
multu $1, $1
mfhi $2
lbu $1, 0($4)
TAG92:
lbu $2, 0($1)
bne $2, $1, TAG93
sb $1, 0($2)
sll $2, $1, 3
TAG93:
sb $2, 0($2)
slt $4, $2, $2
lui $1, 10
xori $3, $4, 15
TAG94:
mult $3, $3
sb $3, 0($3)
lui $2, 15
lb $1, 0($3)
TAG95:
mult $1, $1
bne $1, $1, TAG96
mult $1, $1
sb $1, 0($1)
TAG96:
lui $3, 1
sll $0, $0, 0
addu $4, $1, $1
mflo $3
TAG97:
bgez $3, TAG98
lh $2, -225($3)
addi $2, $3, 6
mult $3, $2
TAG98:
lb $1, 0($2)
addu $2, $1, $1
mfhi $1
bltz $1, TAG99
TAG99:
mfhi $2
mflo $2
lh $4, 0($1)
sra $1, $2, 8
TAG100:
lui $3, 8
slt $2, $3, $1
lh $2, 0($2)
mthi $3
TAG101:
multu $2, $2
sb $2, 0($2)
mfhi $4
lui $3, 5
TAG102:
mtlo $3
sll $0, $0, 0
beq $3, $3, TAG103
sll $0, $0, 0
TAG103:
multu $4, $4
lui $2, 1
mfhi $3
lhu $2, 0($3)
TAG104:
lh $2, 0($2)
mult $2, $2
lui $4, 8
bne $4, $2, TAG105
TAG105:
sll $0, $0, 0
lui $2, 12
blez $2, TAG106
mtlo $2
TAG106:
bgez $2, TAG107
sll $0, $0, 0
sw $2, 0($2)
beq $2, $2, TAG107
TAG107:
lui $3, 3
lui $3, 1
mtlo $3
beq $3, $3, TAG108
TAG108:
lui $1, 0
multu $1, $3
mfhi $1
blez $1, TAG109
TAG109:
slti $4, $1, 13
sb $4, 0($4)
divu $4, $4
bgez $4, TAG110
TAG110:
lb $2, 0($4)
subu $3, $4, $4
sll $4, $4, 4
beq $2, $4, TAG111
TAG111:
lui $4, 15
addu $2, $4, $4
mfhi $3
sll $0, $0, 0
TAG112:
sll $0, $0, 0
slt $1, $4, $4
lui $4, 3
andi $2, $4, 3
TAG113:
mfhi $1
mult $2, $1
bne $2, $2, TAG114
lui $2, 11
TAG114:
sll $0, $0, 0
mflo $1
mflo $1
beq $1, $4, TAG115
TAG115:
lh $2, 0($1)
sh $2, -256($2)
sb $2, -256($2)
mthi $2
TAG116:
beq $2, $2, TAG117
mfhi $4
lui $1, 7
mthi $1
TAG117:
lbu $2, 0($1)
sltu $2, $2, $1
ori $2, $2, 12
beq $2, $2, TAG118
TAG118:
lui $4, 5
xor $4, $2, $4
sll $0, $0, 0
div $4, $4
TAG119:
mult $4, $4
sll $0, $0, 0
divu $4, $4
bgez $4, TAG120
TAG120:
multu $1, $1
sra $4, $1, 12
beq $4, $4, TAG121
multu $1, $1
TAG121:
blez $4, TAG122
mtlo $4
beq $4, $4, TAG122
mflo $2
TAG122:
mfhi $2
mflo $4
lui $3, 15
sra $2, $4, 1
TAG123:
sltiu $4, $2, 10
bgez $4, TAG124
addu $2, $4, $2
mfhi $3
TAG124:
multu $3, $3
multu $3, $3
lui $2, 1
sltu $2, $2, $2
TAG125:
bne $2, $2, TAG126
mflo $2
lb $4, 0($2)
multu $2, $2
TAG126:
bne $4, $4, TAG127
multu $4, $4
lui $2, 4
bgez $2, TAG127
TAG127:
lui $3, 12
sll $0, $0, 0
bne $3, $3, TAG128
slt $4, $2, $3
TAG128:
mult $4, $4
lb $4, 0($4)
lbu $1, 0($4)
lui $3, 15
TAG129:
mtlo $3
bltz $3, TAG130
mflo $2
mfhi $4
TAG130:
lui $2, 11
lui $3, 0
bgtz $2, TAG131
mflo $3
TAG131:
sll $0, $0, 0
addiu $1, $3, 11
lui $3, 2
bgtz $1, TAG132
TAG132:
divu $3, $3
addiu $2, $3, 4
beq $2, $3, TAG133
sll $0, $0, 0
TAG133:
beq $2, $2, TAG134
lui $3, 3
beq $3, $2, TAG134
lbu $2, 0($2)
TAG134:
bltz $2, TAG135
sltu $1, $2, $2
mthi $1
lh $4, 0($1)
TAG135:
divu $4, $4
or $1, $4, $4
lui $4, 4
beq $1, $4, TAG136
TAG136:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $3, TAG137
sll $0, $0, 0
TAG137:
sra $1, $3, 11
mfhi $2
bgez $2, TAG138
lh $2, 0($2)
TAG138:
mfhi $1
bne $2, $1, TAG139
multu $2, $1
lui $1, 10
TAG139:
mfhi $2
slt $1, $2, $2
multu $1, $1
mult $2, $2
TAG140:
mflo $4
slt $2, $4, $4
beq $1, $4, TAG141
lui $3, 12
TAG141:
mult $3, $3
sltu $1, $3, $3
mflo $4
div $1, $3
TAG142:
mthi $4
mult $4, $4
sra $1, $4, 4
mthi $4
TAG143:
mfhi $1
mthi $1
sw $1, 0($1)
lui $4, 1
TAG144:
sll $0, $0, 0
addu $1, $4, $4
mflo $1
div $1, $3
TAG145:
mflo $3
lbu $4, 0($1)
blez $3, TAG146
mtlo $3
TAG146:
mtlo $4
mfhi $3
mthi $4
lh $1, 0($3)
TAG147:
lb $1, 0($1)
bne $1, $1, TAG148
sw $1, 0($1)
mfhi $4
TAG148:
mult $4, $4
mfhi $1
lh $1, 0($1)
mtlo $4
TAG149:
bltz $1, TAG150
lui $1, 6
sll $0, $0, 0
lh $2, 0($2)
TAG150:
mult $2, $2
addi $3, $2, 5
beq $3, $2, TAG151
lb $3, 0($3)
TAG151:
mthi $3
bgez $3, TAG152
multu $3, $3
mfhi $2
TAG152:
lbu $4, 0($2)
lui $3, 10
bne $3, $2, TAG153
mtlo $2
TAG153:
ori $1, $3, 6
sllv $3, $3, $3
sllv $1, $3, $1
bltz $1, TAG154
TAG154:
mtlo $1
and $3, $1, $1
slti $2, $3, 4
slt $1, $1, $1
TAG155:
mult $1, $1
beq $1, $1, TAG156
xori $2, $1, 3
multu $2, $1
TAG156:
sb $2, 0($2)
blez $2, TAG157
lui $4, 7
div $2, $2
TAG157:
ori $4, $4, 4
mfhi $2
multu $2, $4
bgez $4, TAG158
TAG158:
mtlo $2
mfhi $3
mult $2, $3
lhu $3, 0($2)
TAG159:
mflo $4
sh $4, 0($3)
mfhi $3
sh $3, 0($4)
TAG160:
xori $3, $3, 15
bgtz $3, TAG161
nor $2, $3, $3
mthi $3
TAG161:
subu $4, $2, $2
bne $4, $2, TAG162
slti $4, $2, 15
bltz $2, TAG162
TAG162:
mflo $1
lh $1, 0($1)
multu $1, $4
bgtz $1, TAG163
TAG163:
lb $4, 0($1)
lbu $1, 0($1)
lb $1, 0($1)
mult $1, $1
TAG164:
slt $3, $1, $1
beq $3, $3, TAG165
addiu $3, $1, 13
mfhi $4
TAG165:
mult $4, $4
bne $4, $4, TAG166
sh $4, 0($4)
lui $2, 7
TAG166:
lui $3, 8
lui $2, 15
mthi $2
lui $3, 1
TAG167:
mflo $3
subu $4, $3, $3
multu $3, $3
mtlo $3
TAG168:
blez $4, TAG169
sb $4, 0($4)
mtlo $4
lw $3, 0($4)
TAG169:
sra $1, $3, 9
mult $3, $1
beq $1, $3, TAG170
mtlo $3
TAG170:
sb $1, 0($1)
lhu $3, 0($1)
sra $3, $1, 3
slt $1, $1, $3
TAG171:
lui $2, 12
xori $2, $1, 15
bne $2, $1, TAG172
sra $4, $2, 11
TAG172:
mtlo $4
lhu $4, 0($4)
mult $4, $4
mfhi $3
TAG173:
blez $3, TAG174
mfhi $1
blez $1, TAG174
mflo $1
TAG174:
lh $3, 0($1)
or $2, $3, $1
addiu $2, $2, 10
addiu $1, $1, 10
TAG175:
mthi $1
addiu $4, $1, 7
sra $3, $4, 8
bne $4, $1, TAG176
TAG176:
sub $3, $3, $3
sw $3, 0($3)
mult $3, $3
bne $3, $3, TAG177
TAG177:
sh $3, 0($3)
lui $3, 2
sll $0, $0, 0
mult $3, $3
TAG178:
subu $4, $3, $3
xor $1, $4, $4
lui $2, 9
sll $0, $0, 0
TAG179:
blez $2, TAG180
mult $2, $2
beq $2, $2, TAG180
mult $2, $2
TAG180:
bgtz $2, TAG181
multu $2, $2
bne $2, $2, TAG181
slti $3, $2, 0
TAG181:
srav $3, $3, $3
mfhi $2
sll $0, $0, 0
beq $3, $3, TAG182
TAG182:
xori $3, $2, 13
divu $2, $2
sb $2, 0($3)
mthi $2
TAG183:
lhu $1, 0($3)
divu $3, $3
multu $3, $1
lui $1, 1
TAG184:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
lui $3, 14
TAG185:
srav $3, $3, $3
bne $3, $3, TAG186
mtlo $3
bgtz $3, TAG186
TAG186:
mthi $3
mtlo $3
srav $3, $3, $3
sll $0, $0, 0
TAG187:
ori $3, $3, 5
lui $2, 1
bne $3, $3, TAG188
mflo $3
TAG188:
bne $3, $3, TAG189
mfhi $4
addu $4, $3, $3
bgtz $4, TAG189
TAG189:
mult $4, $4
bgez $4, TAG190
multu $4, $4
sltu $1, $4, $4
TAG190:
bltz $1, TAG191
mthi $1
mfhi $3
div $1, $1
TAG191:
blez $3, TAG192
slti $2, $3, 15
bgtz $2, TAG192
andi $1, $3, 10
TAG192:
mfhi $4
mult $1, $1
blez $1, TAG193
andi $1, $1, 0
TAG193:
beq $1, $1, TAG194
mfhi $1
bltz $1, TAG194
srlv $1, $1, $1
TAG194:
sb $1, 0($1)
mthi $1
lhu $4, 0($1)
mult $4, $1
TAG195:
mult $4, $4
mfhi $2
srl $3, $2, 10
multu $2, $4
TAG196:
lhu $2, 0($3)
multu $2, $3
bgez $2, TAG197
lb $2, 0($2)
TAG197:
multu $2, $2
slti $4, $2, 4
blez $4, TAG198
addiu $1, $4, 11
TAG198:
blez $1, TAG199
addiu $3, $1, 1
lui $3, 1
lui $4, 11
TAG199:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG200
div $4, $4
TAG200:
mflo $3
mthi $3
and $3, $3, $4
blez $4, TAG201
TAG201:
mult $3, $3
multu $3, $3
srl $1, $3, 6
mflo $1
TAG202:
blez $1, TAG203
mfhi $1
mflo $2
lbu $3, 0($1)
TAG203:
mfhi $3
mfhi $3
srlv $2, $3, $3
mult $3, $3
TAG204:
sb $2, 0($2)
beq $2, $2, TAG205
sb $2, 0($2)
mult $2, $2
TAG205:
mthi $2
subu $3, $2, $2
mult $2, $3
mtlo $2
TAG206:
bgtz $3, TAG207
srav $1, $3, $3
sb $3, 0($1)
xori $2, $1, 4
TAG207:
sh $2, 0($2)
lui $2, 4
addu $4, $2, $2
blez $4, TAG208
TAG208:
mfhi $1
mtlo $1
sll $0, $0, 0
lui $2, 10
TAG209:
sll $0, $0, 0
bgtz $2, TAG210
mthi $2
mthi $2
TAG210:
mflo $4
mflo $4
bne $2, $2, TAG211
multu $2, $4
TAG211:
lui $4, 9
bltz $4, TAG212
sltiu $2, $4, 3
sh $4, 0($2)
TAG212:
bgez $2, TAG213
lui $2, 3
slt $1, $2, $2
mfhi $2
TAG213:
lui $3, 7
bgez $2, TAG214
lui $1, 1
mthi $1
TAG214:
mthi $1
mfhi $2
mthi $2
nor $3, $1, $2
TAG215:
mflo $3
sw $3, 0($3)
bltz $3, TAG216
multu $3, $3
TAG216:
lbu $2, 0($3)
mfhi $3
blez $3, TAG217
sll $1, $3, 5
TAG217:
bgtz $1, TAG218
srlv $3, $1, $1
mfhi $4
srlv $4, $3, $4
TAG218:
bgez $4, TAG219
sh $4, 0($4)
lh $1, 0($4)
lui $1, 0
TAG219:
multu $1, $1
mthi $1
lhu $4, 0($1)
bgtz $1, TAG220
TAG220:
addu $2, $4, $4
lbu $3, 0($4)
mfhi $3
beq $3, $4, TAG221
TAG221:
srl $1, $3, 2
sw $1, 0($1)
lui $1, 12
lui $2, 10
TAG222:
mthi $2
lui $2, 3
beq $2, $2, TAG223
mflo $4
TAG223:
mult $4, $4
bne $4, $4, TAG224
slt $4, $4, $4
multu $4, $4
TAG224:
lui $1, 9
bgez $4, TAG225
lui $3, 12
divu $4, $1
TAG225:
lui $3, 10
mflo $1
sh $3, 0($1)
and $4, $1, $3
TAG226:
andi $2, $4, 1
mtlo $4
sra $4, $4, 15
mtlo $4
TAG227:
mthi $4
lui $3, 15
lui $4, 0
lui $3, 0
TAG228:
sll $4, $3, 9
sw $3, 0($3)
sh $4, 0($4)
mfhi $1
TAG229:
multu $1, $1
mthi $1
srl $1, $1, 12
lbu $1, 0($1)
TAG230:
mult $1, $1
mthi $1
mtlo $1
beq $1, $1, TAG231
TAG231:
lhu $2, 0($1)
mflo $2
srav $4, $1, $2
lbu $4, 0($1)
TAG232:
bne $4, $4, TAG233
mflo $4
mfhi $1
sw $4, 0($4)
TAG233:
sb $1, 0($1)
mthi $1
sw $1, 0($1)
bgtz $1, TAG234
TAG234:
mfhi $1
bgtz $1, TAG235
mfhi $1
mtlo $1
TAG235:
bgtz $1, TAG236
sb $1, 0($1)
slti $2, $1, 4
sb $1, 0($2)
TAG236:
mthi $2
lui $1, 6
sb $1, 0($2)
mflo $2
TAG237:
multu $2, $2
sw $2, 0($2)
sw $2, 0($2)
beq $2, $2, TAG238
TAG238:
mflo $1
mult $1, $2
lbu $2, 0($2)
lh $1, 0($2)
TAG239:
multu $1, $1
subu $2, $1, $1
mfhi $3
multu $1, $2
TAG240:
slt $2, $3, $3
addiu $2, $2, 5
subu $3, $3, $2
mflo $3
TAG241:
bgez $3, TAG242
mfhi $3
mflo $1
mfhi $3
TAG242:
sra $2, $3, 3
bne $2, $2, TAG243
lw $1, 0($2)
lui $4, 9
TAG243:
multu $4, $4
mflo $2
lui $4, 9
mthi $4
TAG244:
sll $0, $0, 0
nor $1, $4, $4
lui $2, 2
slti $2, $4, 1
TAG245:
mthi $2
mflo $2
sw $2, 0($2)
or $1, $2, $2
TAG246:
multu $1, $1
multu $1, $1
lbu $3, 0($1)
mthi $3
TAG247:
bltz $3, TAG248
sb $3, 0($3)
lui $4, 15
lbu $4, 0($3)
TAG248:
xori $4, $4, 12
lui $4, 9
addiu $3, $4, 4
sll $1, $4, 4
TAG249:
lui $4, 8
mtlo $1
lui $2, 13
bltz $1, TAG250
TAG250:
sll $0, $0, 0
bltz $2, TAG251
mtlo $2
sra $1, $3, 0
TAG251:
mtlo $1
bgez $1, TAG252
mtlo $1
bgtz $1, TAG252
TAG252:
nor $4, $1, $1
mfhi $3
addu $3, $1, $3
and $2, $4, $4
TAG253:
srlv $2, $2, $2
sb $2, 0($2)
lbu $2, 0($2)
slt $4, $2, $2
TAG254:
lb $3, 0($4)
slt $3, $3, $3
mfhi $2
bne $3, $2, TAG255
TAG255:
andi $4, $2, 9
xori $2, $4, 14
lhu $3, 0($2)
mflo $1
TAG256:
mult $1, $1
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG257:
sll $0, $0, 0
subu $1, $3, $3
lui $2, 11
bne $2, $1, TAG258
TAG258:
slt $4, $2, $2
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG259:
mthi $3
mfhi $2
sltu $4, $2, $3
lui $1, 8
TAG260:
multu $1, $1
slti $4, $1, 12
lbu $4, 0($4)
mflo $2
TAG261:
mflo $4
nor $3, $4, $2
bltz $3, TAG262
and $3, $3, $4
TAG262:
sllv $4, $3, $3
xori $4, $4, 13
sltiu $2, $4, 6
lb $3, 0($4)
TAG263:
sra $2, $3, 14
sb $2, 0($3)
nor $3, $2, $3
bne $3, $3, TAG264
TAG264:
mtlo $3
lui $1, 3
addu $2, $1, $1
or $4, $3, $1
TAG265:
lui $1, 12
srl $2, $4, 7
beq $2, $1, TAG266
divu $4, $4
TAG266:
mtlo $2
bgtz $2, TAG267
divu $2, $2
divu $2, $2
TAG267:
mthi $2
or $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG268:
addiu $1, $4, 5
beq $4, $4, TAG269
sll $0, $0, 0
lhu $3, 0($1)
TAG269:
mflo $1
mfhi $4
divu $4, $4
beq $3, $4, TAG270
TAG270:
multu $4, $4
divu $4, $4
beq $4, $4, TAG271
subu $3, $4, $4
TAG271:
multu $3, $3
blez $3, TAG272
xor $1, $3, $3
blez $1, TAG272
TAG272:
mflo $1
sra $1, $1, 1
mflo $2
and $1, $1, $2
TAG273:
andi $3, $1, 6
add $2, $3, $1
lui $4, 4
nor $1, $2, $4
TAG274:
sll $0, $0, 0
bgtz $1, TAG275
mult $1, $1
sllv $3, $3, $3
TAG275:
mult $3, $3
bltz $3, TAG276
sb $3, 0($3)
multu $3, $3
TAG276:
sw $3, 0($3)
lui $2, 14
multu $2, $3
mflo $2
TAG277:
lui $2, 12
bne $2, $2, TAG278
mult $2, $2
bgtz $2, TAG278
TAG278:
sll $0, $0, 0
beq $2, $2, TAG279
mult $2, $2
sw $2, 0($2)
TAG279:
mflo $1
addu $2, $3, $3
slti $4, $3, 1
sb $3, 0($1)
TAG280:
bgtz $4, TAG281
lbu $1, 0($4)
blez $1, TAG281
div $1, $1
TAG281:
bgez $1, TAG282
mthi $1
bne $1, $1, TAG282
lh $4, 0($1)
TAG282:
mflo $3
mflo $4
lhu $3, 0($3)
bgez $4, TAG283
TAG283:
mult $3, $3
add $3, $3, $3
lb $2, 0($3)
mtlo $3
TAG284:
lb $1, 0($2)
multu $2, $1
beq $2, $2, TAG285
lui $1, 3
TAG285:
sltiu $4, $1, 12
bne $1, $4, TAG286
sll $0, $0, 0
lh $3, 0($2)
TAG286:
mult $3, $3
sllv $3, $3, $3
lw $2, 0($3)
mfhi $2
TAG287:
beq $2, $2, TAG288
lb $1, 0($2)
lui $2, 11
sb $2, 0($2)
TAG288:
nor $2, $2, $2
sllv $2, $2, $2
sll $0, $0, 0
sra $1, $2, 9
TAG289:
addiu $3, $1, 11
srlv $4, $1, $3
sll $0, $0, 0
lui $1, 4
TAG290:
bne $1, $1, TAG291
multu $1, $1
xori $2, $1, 12
andi $4, $2, 5
TAG291:
bne $4, $4, TAG292
sw $4, 0($4)
mflo $2
sw $4, 0($2)
TAG292:
mfhi $3
blez $3, TAG293
multu $2, $3
beq $2, $2, TAG293
TAG293:
multu $3, $3
lui $2, 2
div $3, $3
mflo $4
TAG294:
lbu $4, 0($4)
mfhi $2
lbu $4, 0($2)
sh $4, 0($4)
TAG295:
mult $4, $4
bgez $4, TAG296
addu $4, $4, $4
mthi $4
TAG296:
lui $2, 15
bgtz $4, TAG297
lui $3, 13
mflo $3
TAG297:
bne $3, $3, TAG298
sll $0, $0, 0
blez $3, TAG298
sll $0, $0, 0
TAG298:
mflo $4
lui $3, 6
sll $0, $0, 0
mult $2, $3
TAG299:
sll $0, $0, 0
beq $2, $2, TAG300
divu $2, $2
mfhi $2
TAG300:
lui $2, 6
mflo $1
andi $2, $2, 15
mthi $2
TAG301:
lw $1, 0($2)
lw $1, 0($2)
lw $1, 0($1)
lbu $1, 0($1)
TAG302:
addu $4, $1, $1
sltiu $3, $1, 11
blez $1, TAG303
mflo $4
TAG303:
addu $3, $4, $4
bne $3, $4, TAG304
mtlo $4
mflo $3
TAG304:
bne $3, $3, TAG305
mfhi $1
slt $2, $3, $3
mult $3, $1
TAG305:
lb $4, 0($2)
sltu $2, $2, $4
mflo $3
sw $2, 0($4)
TAG306:
ori $1, $3, 13
sw $1, 0($3)
mflo $4
blez $4, TAG307
TAG307:
sw $4, 0($4)
bgez $4, TAG308
lui $3, 4
sw $4, 0($3)
TAG308:
sll $0, $0, 0
bne $3, $3, TAG309
srl $4, $3, 15
addiu $3, $3, 8
TAG309:
mflo $3
andi $2, $3, 1
lw $2, 0($2)
mflo $4
TAG310:
lw $2, 0($4)
sltu $2, $4, $4
multu $2, $2
or $4, $4, $4
TAG311:
bltz $4, TAG312
lw $2, 0($4)
mfhi $1
mult $1, $1
TAG312:
mflo $2
mthi $1
xor $2, $1, $1
bgez $2, TAG313
TAG313:
lw $1, 0($2)
lui $2, 6
bgtz $1, TAG314
div $1, $2
TAG314:
divu $2, $2
ori $4, $2, 4
blez $2, TAG315
sll $0, $0, 0
TAG315:
mthi $1
mfhi $1
mfhi $4
mtlo $1
TAG316:
mthi $4
sllv $3, $4, $4
xori $2, $4, 8
lui $3, 6
TAG317:
mflo $1
bne $1, $3, TAG318
mflo $3
and $1, $3, $3
TAG318:
sltu $1, $1, $1
andi $3, $1, 2
sw $1, 0($3)
lhu $4, 0($1)
TAG319:
sw $4, 0($4)
mthi $4
lh $1, 0($4)
mflo $2
TAG320:
lui $2, 1
bgez $2, TAG321
sll $0, $0, 0
sltiu $3, $2, 7
TAG321:
mtlo $3
lbu $4, 0($3)
mfhi $1
sb $4, 0($1)
TAG322:
sw $1, 0($1)
or $1, $1, $1
mthi $1
bne $1, $1, TAG323
TAG323:
mult $1, $1
bgez $1, TAG324
srlv $4, $1, $1
mtlo $4
TAG324:
lui $2, 12
beq $2, $2, TAG325
multu $2, $4
bne $2, $2, TAG325
TAG325:
sll $0, $0, 0
div $2, $2
div $2, $2
mult $2, $2
TAG326:
and $1, $2, $2
mfhi $2
bgtz $2, TAG327
sllv $2, $2, $1
TAG327:
bne $2, $2, TAG328
addiu $4, $2, 10
or $2, $2, $2
mfhi $4
TAG328:
sb $4, -144($4)
andi $2, $4, 8
sltu $1, $4, $4
lhu $3, -144($4)
TAG329:
mult $3, $3
sw $3, -144($3)
mtlo $3
lbu $4, -144($3)
TAG330:
and $4, $4, $4
lui $3, 1
and $2, $4, $3
lui $1, 15
TAG331:
sll $0, $0, 0
sllv $2, $1, $1
divu $1, $1
andi $2, $1, 15
TAG332:
mflo $2
addu $2, $2, $2
mthi $2
lui $4, 12
TAG333:
sltu $2, $4, $4
mtlo $2
srlv $4, $4, $2
mult $4, $4
TAG334:
and $3, $4, $4
mfhi $3
bgtz $3, TAG335
sll $0, $0, 0
TAG335:
lui $1, 12
lui $2, 0
mflo $1
lw $1, 0($1)
TAG336:
mfhi $1
sll $1, $1, 12
mthi $1
mthi $1
TAG337:
andi $3, $1, 11
lui $1, 3
addiu $1, $1, 9
slti $2, $1, 6
TAG338:
sb $2, 0($2)
mflo $2
bltz $2, TAG339
mult $2, $2
TAG339:
sh $2, 0($2)
bgtz $2, TAG340
lui $1, 3
mult $1, $2
TAG340:
sll $0, $0, 0
mfhi $2
xori $3, $2, 2
lhu $3, 0($3)
TAG341:
mult $3, $3
lhu $3, 0($3)
blez $3, TAG342
sh $3, 0($3)
TAG342:
beq $3, $3, TAG343
lui $4, 2
bne $4, $4, TAG343
subu $1, $4, $4
TAG343:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG344:
lui $2, 12
mfhi $3
srlv $3, $3, $2
mtlo $2
TAG345:
sll $0, $0, 0
lui $1, 2
bne $1, $1, TAG346
mtlo $1
TAG346:
mfhi $1
addiu $4, $1, 15
mfhi $1
sll $0, $0, 0
TAG347:
mflo $1
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG348
TAG348:
sll $0, $0, 0
bne $1, $1, TAG349
lui $2, 0
bgtz $1, TAG349
TAG349:
lui $1, 12
bgez $1, TAG350
sllv $3, $1, $1
xor $2, $3, $2
TAG350:
lhu $2, 0($2)
beq $2, $2, TAG351
add $3, $2, $2
mthi $2
TAG351:
sb $3, 0($3)
lui $1, 11
sll $0, $0, 0
mtlo $1
TAG352:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $1, TAG353
sltiu $4, $1, 1
TAG353:
lui $4, 0
mfhi $2
lhu $3, 0($4)
beq $3, $4, TAG354
TAG354:
srlv $4, $3, $3
lui $3, 7
mflo $1
bltz $4, TAG355
TAG355:
andi $4, $1, 14
blez $4, TAG356
slti $1, $4, 11
mthi $1
TAG356:
mtlo $1
mfhi $1
srlv $1, $1, $1
lui $2, 15
TAG357:
srlv $4, $2, $2
bne $4, $2, TAG358
andi $2, $4, 7
lui $1, 12
TAG358:
sll $0, $0, 0
blez $1, TAG359
sll $0, $0, 0
beq $1, $4, TAG359
TAG359:
mfhi $2
and $1, $2, $2
lui $3, 14
mflo $3
TAG360:
lui $3, 8
sll $0, $0, 0
mtlo $3
mtlo $2
TAG361:
subu $1, $2, $2
mfhi $3
mfhi $4
bgtz $4, TAG362
TAG362:
div $4, $4
mfhi $4
mfhi $4
beq $4, $4, TAG363
TAG363:
mthi $4
mult $4, $4
mfhi $2
blez $4, TAG364
TAG364:
mtlo $2
lbu $4, 0($2)
sra $2, $2, 12
mult $2, $4
TAG365:
sra $2, $2, 1
subu $3, $2, $2
mthi $2
xor $2, $2, $3
TAG366:
lh $1, 0($2)
slt $3, $2, $2
beq $2, $2, TAG367
lw $1, 0($2)
TAG367:
xor $3, $1, $1
lw $3, 0($3)
lui $4, 8
mthi $4
TAG368:
sll $0, $0, 0
andi $3, $4, 6
mflo $3
mflo $4
TAG369:
bne $4, $4, TAG370
slti $1, $4, 7
sltu $2, $4, $4
mflo $1
TAG370:
lw $2, 0($1)
mthi $2
sw $2, 0($1)
lui $4, 6
TAG371:
mflo $2
mthi $2
multu $4, $4
sll $0, $0, 0
TAG372:
sb $2, 0($2)
sltiu $4, $2, 8
mthi $2
mflo $2
TAG373:
sra $1, $2, 7
srl $2, $1, 15
lui $1, 4
mflo $4
TAG374:
slt $2, $4, $4
srav $2, $2, $2
beq $2, $4, TAG375
lh $1, 0($4)
TAG375:
lbu $4, 0($1)
lui $3, 5
sh $4, 0($4)
lui $1, 12
TAG376:
bltz $1, TAG377
slti $2, $1, 2
sll $0, $0, 0
and $1, $2, $1
TAG377:
mfhi $3
lw $4, 0($3)
mflo $3
bne $3, $4, TAG378
TAG378:
sub $4, $3, $3
lui $1, 15
bgez $3, TAG379
mtlo $1
TAG379:
blez $1, TAG380
and $1, $1, $1
beq $1, $1, TAG380
mthi $1
TAG380:
sll $0, $0, 0
mflo $2
beq $1, $4, TAG381
mtlo $4
TAG381:
sll $0, $0, 0
mflo $2
lh $2, 0($2)
lbu $3, 0($2)
TAG382:
addu $1, $3, $3
mtlo $1
slti $2, $1, 15
lhu $2, 0($3)
TAG383:
srav $2, $2, $2
xori $1, $2, 5
srlv $1, $2, $1
srl $4, $2, 0
TAG384:
beq $4, $4, TAG385
mtlo $4
mult $4, $4
andi $2, $4, 15
TAG385:
mflo $1
add $1, $2, $1
bltz $1, TAG386
mult $2, $2
TAG386:
bne $1, $1, TAG387
multu $1, $1
lw $3, 0($1)
mthi $1
TAG387:
bne $3, $3, TAG388
mtlo $3
addi $1, $3, 12
sltu $1, $1, $3
TAG388:
lui $3, 11
mult $3, $1
mtlo $3
mtlo $1
TAG389:
sll $0, $0, 0
addu $4, $3, $3
bltz $4, TAG390
sll $0, $0, 0
TAG390:
subu $1, $4, $4
srl $4, $4, 11
beq $4, $4, TAG391
lh $4, -704($4)
TAG391:
bgez $4, TAG392
ori $1, $4, 8
beq $1, $4, TAG392
sb $4, 0($4)
TAG392:
beq $1, $1, TAG393
lui $1, 1
sw $1, 0($1)
mfhi $1
TAG393:
mfhi $1
mult $1, $1
multu $1, $1
xori $2, $1, 13
TAG394:
mthi $2
sb $2, 0($2)
ori $1, $2, 2
xor $2, $2, $1
TAG395:
divu $2, $2
lbu $2, 0($2)
sub $1, $2, $2
add $3, $1, $2
TAG396:
lui $4, 6
sh $4, 0($3)
sll $0, $0, 0
srlv $2, $4, $4
TAG397:
sll $0, $0, 0
beq $2, $2, TAG398
mthi $2
lhu $1, 0($2)
TAG398:
lbu $2, 0($1)
addi $3, $1, 9
mflo $2
xori $2, $2, 15
TAG399:
mthi $2
lb $4, 0($2)
mflo $2
mflo $2
TAG400:
bgez $2, TAG401
mult $2, $2
lw $4, 0($2)
bgtz $2, TAG401
TAG401:
mtlo $4
addu $3, $4, $4
lui $2, 3
lh $1, 0($4)
TAG402:
sll $1, $1, 6
mtlo $1
and $4, $1, $1
blez $1, TAG403
TAG403:
multu $4, $4
mfhi $4
or $3, $4, $4
sw $4, 0($4)
TAG404:
mthi $3
nor $4, $3, $3
blez $3, TAG405
divu $4, $4
TAG405:
beq $4, $4, TAG406
lhu $3, 1($4)
bne $3, $3, TAG406
mfhi $1
TAG406:
mthi $1
blez $1, TAG407
mfhi $3
sllv $3, $1, $3
TAG407:
bne $3, $3, TAG408
mult $3, $3
beq $3, $3, TAG408
multu $3, $3
TAG408:
blez $3, TAG409
addiu $3, $3, 3
sh $3, 0($3)
sw $3, 0($3)
TAG409:
sltu $3, $3, $3
beq $3, $3, TAG410
mfhi $3
div $3, $3
TAG410:
mult $3, $3
bne $3, $3, TAG411
lui $4, 0
mult $3, $4
TAG411:
mthi $4
mthi $4
mflo $1
mthi $1
TAG412:
beq $1, $1, TAG413
add $1, $1, $1
bltz $1, TAG413
or $4, $1, $1
TAG413:
lw $1, 0($4)
or $4, $1, $4
lui $3, 2
mfhi $4
TAG414:
lw $1, 0($4)
mfhi $4
lbu $3, 0($4)
sb $1, 0($4)
TAG415:
lhu $3, 0($3)
sll $4, $3, 10
lui $1, 0
lw $4, 0($4)
TAG416:
mflo $3
mtlo $3
mthi $4
blez $4, TAG417
TAG417:
sh $3, 0($3)
nor $4, $3, $3
mtlo $4
sw $4, 0($3)
TAG418:
mthi $4
sw $4, 1($4)
lui $1, 1
sll $0, $0, 0
TAG419:
multu $1, $1
mfhi $3
or $1, $3, $1
bne $3, $1, TAG420
TAG420:
lui $2, 8
div $2, $1
bgtz $2, TAG421
srl $2, $1, 7
TAG421:
lui $3, 12
lh $1, -512($2)
mflo $4
subu $3, $2, $3
TAG422:
div $3, $3
bgez $3, TAG423
lui $3, 9
sll $0, $0, 0
TAG423:
or $4, $3, $3
srav $4, $4, $3
srl $2, $3, 0
sll $0, $0, 0
TAG424:
lui $4, 14
and $4, $4, $4
div $4, $4
mtlo $4
TAG425:
sll $0, $0, 0
bgez $4, TAG426
divu $4, $4
bltz $4, TAG426
TAG426:
xori $1, $4, 14
mflo $1
mtlo $1
div $4, $1
TAG427:
xor $1, $1, $1
lh $3, 0($1)
addiu $3, $3, 7
beq $1, $3, TAG428
TAG428:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
TAG429:
mult $1, $1
bne $1, $1, TAG430
sllv $3, $1, $1
sll $0, $0, 0
TAG430:
lui $4, 1
multu $4, $4
mtlo $4
sll $0, $0, 0
TAG431:
sll $0, $0, 0
sll $0, $0, 0
mult $4, $2
lui $3, 13
TAG432:
sll $0, $0, 0
ori $2, $3, 1
sll $0, $0, 0
sll $0, $0, 0
TAG433:
addiu $2, $2, 3
mthi $2
bne $2, $2, TAG434
sll $0, $0, 0
TAG434:
mult $2, $2
multu $2, $2
sll $0, $0, 0
beq $2, $2, TAG435
TAG435:
mthi $2
slti $2, $2, 6
mthi $2
sw $2, 0($2)
TAG436:
bgtz $2, TAG437
sltiu $3, $2, 11
mfhi $2
bltz $2, TAG437
TAG437:
lui $2, 8
mfhi $4
xor $4, $4, $4
mtlo $2
TAG438:
sh $4, 0($4)
xori $2, $4, 6
mfhi $3
lhu $3, 0($2)
TAG439:
sw $3, 0($3)
mflo $3
xor $1, $3, $3
div $3, $3
TAG440:
blez $1, TAG441
mtlo $1
lh $4, 0($1)
srav $2, $4, $1
TAG441:
bne $2, $2, TAG442
lh $1, 0($2)
sh $2, 0($1)
addu $3, $2, $2
TAG442:
lui $3, 1
bgez $3, TAG443
mthi $3
divu $3, $3
TAG443:
sll $0, $0, 0
mflo $3
sh $3, 0($3)
lui $3, 1
TAG444:
beq $3, $3, TAG445
sll $0, $0, 0
lw $4, 0($3)
mthi $3
TAG445:
sra $1, $4, 10
mtlo $1
lbu $1, 0($4)
sltiu $1, $1, 13
TAG446:
bltz $1, TAG447
multu $1, $1
bltz $1, TAG447
div $1, $1
TAG447:
beq $1, $1, TAG448
mfhi $3
lui $3, 10
bgtz $3, TAG448
TAG448:
lw $2, 0($3)
nor $4, $2, $2
mflo $3
mult $2, $4
TAG449:
beq $3, $3, TAG450
multu $3, $3
blez $3, TAG450
div $3, $3
TAG450:
slti $1, $3, 15
srav $1, $1, $1
sb $1, 0($3)
sra $3, $3, 5
TAG451:
bltz $3, TAG452
mflo $3
slti $4, $3, 10
mflo $4
TAG452:
sb $4, 0($4)
beq $4, $4, TAG453
sllv $1, $4, $4
bgez $4, TAG453
TAG453:
sllv $2, $1, $1
blez $2, TAG454
sllv $3, $2, $1
blez $2, TAG454
TAG454:
mflo $3
mthi $3
divu $3, $3
sb $3, 0($3)
TAG455:
lui $2, 10
beq $2, $3, TAG456
srlv $4, $2, $3
mflo $3
TAG456:
lbu $3, 0($3)
blez $3, TAG457
lui $4, 9
sb $3, 0($3)
TAG457:
lui $3, 5
mflo $1
addiu $1, $3, 6
lui $1, 15
TAG458:
sllv $3, $1, $1
multu $1, $1
or $4, $3, $3
sltiu $3, $1, 5
TAG459:
mult $3, $3
sw $3, 0($3)
or $1, $3, $3
mtlo $3
TAG460:
beq $1, $1, TAG461
addi $3, $1, 13
mtlo $3
blez $3, TAG461
TAG461:
lbu $4, 0($3)
mtlo $4
multu $4, $4
mfhi $3
TAG462:
srlv $3, $3, $3
mflo $2
beq $2, $3, TAG463
div $3, $2
TAG463:
nor $4, $2, $2
sh $2, 170($4)
slti $1, $4, 5
bne $2, $2, TAG464
TAG464:
mthi $1
beq $1, $1, TAG465
sra $4, $1, 0
xori $2, $4, 12
TAG465:
sll $0, $0, 0
lb $1, 0($4)
beq $1, $1, TAG466
andi $2, $1, 1
TAG466:
xor $3, $2, $2
xor $2, $2, $2
beq $2, $2, TAG467
mult $3, $2
TAG467:
lbu $2, 0($2)
sh $2, -169($2)
lbu $3, -169($2)
mult $2, $2
TAG468:
subu $4, $3, $3
bne $4, $4, TAG469
lui $4, 6
multu $3, $4
TAG469:
mthi $4
srlv $4, $4, $4
andi $3, $4, 3
lui $2, 9
TAG470:
mult $2, $2
mthi $2
mthi $2
multu $2, $2
TAG471:
mfhi $4
lbu $4, 0($4)
sll $0, $0, 0
beq $4, $4, TAG472
TAG472:
sw $4, 0($4)
lui $4, 6
lui $4, 4
mfhi $4
TAG473:
lui $4, 14
sll $0, $0, 0
nor $2, $4, $4
sll $0, $0, 0
TAG474:
bgtz $2, TAG475
lui $4, 2
lui $3, 9
lui $3, 4
TAG475:
sll $0, $0, 0
lui $1, 0
bne $1, $1, TAG476
sll $0, $0, 0
TAG476:
lw $2, 0($1)
mthi $2
mult $1, $1
lui $1, 7
TAG477:
sll $0, $0, 0
sll $0, $0, 0
sllv $4, $1, $1
sll $0, $0, 0
TAG478:
mthi $4
nor $1, $4, $4
lui $2, 4
sll $0, $0, 0
TAG479:
mfhi $4
addu $3, $2, $2
mflo $2
ori $2, $2, 0
TAG480:
mtlo $2
slt $1, $2, $2
bgtz $1, TAG481
mult $1, $2
TAG481:
or $3, $1, $1
bgtz $1, TAG482
xor $2, $3, $3
mult $1, $1
TAG482:
sh $2, 0($2)
sltu $3, $2, $2
mfhi $2
lw $3, 0($2)
TAG483:
mthi $3
multu $3, $3
mfhi $3
sh $3, 0($3)
TAG484:
mthi $3
slti $1, $3, 6
sw $3, 0($3)
sb $3, 0($1)
TAG485:
lui $1, 2
lui $1, 4
sll $0, $0, 0
nor $3, $1, $1
TAG486:
bne $3, $3, TAG487
or $1, $3, $3
mflo $2
sll $2, $3, 1
TAG487:
sltiu $3, $2, 3
addiu $2, $2, 13
mtlo $2
mult $2, $2
TAG488:
sllv $2, $2, $2
divu $2, $2
sll $0, $0, 0
srav $3, $2, $2
TAG489:
mflo $3
srav $1, $3, $3
xori $1, $1, 7
beq $3, $3, TAG490
TAG490:
lui $4, 9
mtlo $1
slti $2, $4, 1
mult $4, $2
TAG491:
blez $2, TAG492
mult $2, $2
bgez $2, TAG492
sh $2, 0($2)
TAG492:
mflo $3
and $1, $3, $3
or $2, $3, $2
multu $1, $1
TAG493:
mflo $1
sb $1, 0($1)
sh $2, 0($2)
slti $1, $2, 6
TAG494:
mflo $3
multu $1, $1
mflo $4
sltiu $3, $1, 14
TAG495:
mtlo $3
mthi $3
mult $3, $3
srav $2, $3, $3
TAG496:
addi $3, $2, 3
lb $1, 0($3)
lbu $2, 0($3)
mflo $1
TAG497:
bltz $1, TAG498
sb $1, 0($1)
multu $1, $1
mfhi $3
TAG498:
sll $4, $3, 0
beq $4, $3, TAG499
multu $4, $3
mtlo $3
TAG499:
lw $1, 0($4)
lbu $4, 0($4)
mtlo $4
bgez $4, TAG500
TAG500:
or $4, $4, $4
lui $3, 5
beq $3, $4, TAG501
add $4, $4, $4
TAG501:
nor $2, $4, $4
mthi $2
mfhi $1
multu $1, $1
TAG502:
addu $2, $1, $1
sra $3, $1, 14
srlv $4, $3, $2
sb $3, 1($1)
TAG503:
nor $3, $4, $4
xori $1, $3, 1
mult $3, $3
bgez $1, TAG504
TAG504:
sll $0, $0, 0
mflo $2
mfhi $3
mflo $4
TAG505:
lbu $4, 0($4)
sltiu $4, $4, 3
lh $1, 0($4)
beq $4, $4, TAG506
TAG506:
lui $4, 8
div $1, $1
mthi $4
div $1, $4
TAG507:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG508:
mflo $1
multu $1, $1
xori $1, $1, 0
mthi $1
TAG509:
sll $0, $0, 0
bgtz $3, TAG510
multu $1, $1
mtlo $3
TAG510:
mthi $3
mfhi $4
bne $4, $3, TAG511
lhu $1, 0($3)
TAG511:
mthi $1
addiu $3, $1, 4
lb $3, -515($3)
bne $1, $1, TAG512
TAG512:
sll $0, $0, 0
mtlo $3
bgtz $3, TAG513
srav $1, $3, $3
TAG513:
xor $2, $1, $1
mflo $1
blez $1, TAG514
multu $1, $2
TAG514:
slti $2, $1, 5
beq $2, $2, TAG515
lui $3, 15
lb $3, 0($3)
TAG515:
lui $3, 6
subu $4, $3, $3
bgtz $3, TAG516
nor $2, $3, $4
TAG516:
sll $0, $0, 0
srl $3, $2, 14
bgtz $3, TAG517
mfhi $3
TAG517:
sw $3, 0($3)
mflo $3
lw $4, 0($3)
sw $3, 0($3)
TAG518:
mflo $1
mfhi $4
beq $4, $4, TAG519
multu $1, $1
TAG519:
lh $1, 0($4)
srav $3, $4, $4
mtlo $3
mtlo $1
TAG520:
lbu $1, 0($3)
multu $3, $1
mfhi $4
bne $1, $4, TAG521
TAG521:
multu $4, $4
sra $2, $4, 3
lhu $2, 0($4)
beq $2, $2, TAG522
TAG522:
mflo $3
sb $3, 0($3)
sh $3, 0($2)
addiu $3, $2, 11
TAG523:
beq $3, $3, TAG524
div $3, $3
lui $3, 12
xor $2, $3, $3
TAG524:
xor $4, $2, $2
lui $2, 15
lui $1, 4
sll $0, $0, 0
TAG525:
bgtz $4, TAG526
sw $4, 0($4)
sb $4, 0($4)
multu $4, $4
TAG526:
bgez $4, TAG527
lui $3, 11
bgtz $4, TAG527
mtlo $3
TAG527:
multu $3, $3
sllv $2, $3, $3
lui $4, 0
beq $4, $2, TAG528
TAG528:
lui $4, 12
andi $2, $4, 3
multu $2, $2
lui $2, 6
TAG529:
beq $2, $2, TAG530
lui $2, 0
bne $2, $2, TAG530
lui $3, 12
TAG530:
sll $0, $0, 0
bgtz $3, TAG531
sll $3, $3, 5
sh $3, 0($3)
TAG531:
div $3, $3
beq $3, $3, TAG532
div $3, $3
addi $3, $3, 9
TAG532:
sll $0, $0, 0
sll $2, $3, 14
bgez $3, TAG533
mult $2, $2
TAG533:
ori $2, $2, 11
srl $2, $2, 7
lb $2, 0($2)
bne $2, $2, TAG534
TAG534:
multu $2, $2
or $1, $2, $2
mthi $2
bne $1, $1, TAG535
TAG535:
mtlo $1
sltu $3, $1, $1
lui $2, 14
bgez $3, TAG536
TAG536:
divu $2, $2
mflo $4
sllv $4, $2, $2
slt $4, $2, $4
TAG537:
lui $2, 3
bgez $2, TAG538
multu $4, $2
lh $2, 0($4)
TAG538:
mtlo $2
sll $0, $0, 0
lui $2, 0
lui $4, 2
TAG539:
or $3, $4, $4
lui $3, 3
lui $2, 13
mult $3, $3
TAG540:
beq $2, $2, TAG541
mflo $1
mfhi $4
mfhi $1
TAG541:
ori $1, $1, 0
lui $4, 4
bgtz $4, TAG542
multu $4, $4
TAG542:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG543:
mflo $1
andi $2, $1, 13
multu $1, $1
sub $1, $1, $2
TAG544:
lui $3, 13
slti $1, $1, 5
sb $1, 0($1)
bgtz $1, TAG545
TAG545:
addiu $2, $1, 3
mthi $1
sb $1, 0($1)
slti $4, $2, 13
TAG546:
mthi $4
srav $2, $4, $4
andi $3, $4, 8
addiu $2, $2, 14
TAG547:
mthi $2
lui $4, 5
mfhi $3
lh $2, 0($3)
TAG548:
mfhi $3
slti $2, $3, 13
lui $3, 14
bgez $3, TAG549
TAG549:
mult $3, $3
beq $3, $3, TAG550
addiu $3, $3, 1
mthi $3
TAG550:
and $2, $3, $3
sll $0, $0, 0
multu $3, $2
sll $0, $0, 0
TAG551:
bne $2, $2, TAG552
mflo $4
sll $0, $0, 0
addu $4, $4, $2
TAG552:
blez $4, TAG553
addiu $4, $4, 8
bne $4, $4, TAG553
sll $0, $0, 0
TAG553:
lui $2, 4
lui $1, 3
slt $4, $2, $2
mfhi $4
TAG554:
beq $4, $4, TAG555
sra $4, $4, 8
lh $4, 0($4)
divu $4, $4
TAG555:
blez $4, TAG556
sw $4, 0($4)
lui $1, 5
bltz $1, TAG556
TAG556:
lui $1, 15
sltiu $1, $1, 5
blez $1, TAG557
andi $3, $1, 6
TAG557:
bne $3, $3, TAG558
sltu $4, $3, $3
mflo $4
sll $0, $0, 0
TAG558:
multu $4, $4
bltz $4, TAG559
subu $2, $4, $4
sw $2, 0($2)
TAG559:
bne $2, $2, TAG560
sltiu $3, $2, 3
bltz $2, TAG560
lh $2, 0($2)
TAG560:
bgtz $2, TAG561
lb $1, 0($2)
bgtz $1, TAG561
srlv $2, $1, $2
TAG561:
lh $4, 0($2)
sub $3, $2, $4
blez $2, TAG562
mflo $4
TAG562:
sll $0, $0, 0
bltz $1, TAG563
lui $1, 6
beq $1, $1, TAG563
TAG563:
multu $1, $1
multu $1, $1
mfhi $2
lui $4, 0
TAG564:
sb $4, 0($4)
sll $3, $4, 8
sb $4, 0($3)
mflo $4
TAG565:
sw $4, 0($4)
sub $3, $4, $4
mthi $3
lh $1, 0($3)
TAG566:
mfhi $1
sh $1, 0($1)
sh $1, 0($1)
multu $1, $1
TAG567:
bne $1, $1, TAG568
mfhi $2
blez $2, TAG568
mtlo $1
TAG568:
sb $2, 0($2)
sw $2, 0($2)
sb $2, 0($2)
ori $2, $2, 7
TAG569:
lui $2, 6
mtlo $2
lui $1, 1
bgtz $1, TAG570
TAG570:
mflo $3
addu $4, $3, $1
xori $3, $1, 3
bne $3, $4, TAG571
TAG571:
addiu $1, $3, 0
lui $1, 7
mthi $1
div $1, $3
TAG572:
lui $3, 0
bne $3, $3, TAG573
sll $0, $0, 0
mtlo $1
TAG573:
sh $3, 0($3)
lhu $2, 0($3)
srl $4, $3, 1
bne $2, $3, TAG574
TAG574:
mflo $2
bgtz $4, TAG575
sll $2, $4, 8
mult $2, $2
TAG575:
sh $2, 0($2)
add $1, $2, $2
multu $2, $2
mtlo $2
TAG576:
srl $2, $1, 3
mtlo $2
bne $2, $1, TAG577
lw $3, 0($2)
TAG577:
addiu $2, $3, 6
mtlo $2
mtlo $2
beq $3, $3, TAG578
TAG578:
addu $2, $2, $2
subu $2, $2, $2
mfhi $3
mflo $3
TAG579:
srav $3, $3, $3
lw $3, 0($3)
sw $3, 0($3)
and $3, $3, $3
TAG580:
multu $3, $3
ori $1, $3, 14
sltiu $1, $1, 12
srav $2, $1, $3
TAG581:
beq $2, $2, TAG582
multu $2, $2
sra $3, $2, 8
srl $4, $3, 3
TAG582:
bne $4, $4, TAG583
multu $4, $4
lhu $1, 0($4)
lh $4, 0($4)
TAG583:
mflo $1
mult $1, $4
mult $4, $4
addi $4, $1, 10
TAG584:
mthi $4
mtlo $4
bgtz $4, TAG585
lui $3, 8
TAG585:
sll $0, $0, 0
beq $3, $3, TAG586
mfhi $2
xor $2, $3, $2
TAG586:
mthi $2
addu $2, $2, $2
sll $4, $2, 9
mflo $1
TAG587:
addiu $4, $1, 7
lui $4, 15
mfhi $2
lui $1, 7
TAG588:
lui $2, 5
multu $2, $1
bltz $1, TAG589
lui $4, 12
TAG589:
sll $0, $0, 0
sra $3, $4, 14
srl $1, $4, 14
lui $3, 0
TAG590:
and $1, $3, $3
srlv $4, $1, $3
sb $1, 0($4)
multu $4, $4
TAG591:
bne $4, $4, TAG592
lhu $3, 0($4)
blez $3, TAG592
and $1, $4, $3
TAG592:
lui $2, 3
addu $3, $1, $2
subu $1, $2, $3
sra $1, $3, 8
TAG593:
sll $0, $0, 0
sh $1, -768($1)
sb $1, -768($1)
lui $2, 11
TAG594:
bne $2, $2, TAG595
divu $2, $2
bgtz $2, TAG595
sll $0, $0, 0
TAG595:
lb $4, 0($4)
bgez $4, TAG596
mflo $4
xori $2, $4, 12
TAG596:
divu $2, $2
lui $4, 1
mfhi $2
lui $3, 15
TAG597:
lui $2, 15
mfhi $1
addu $4, $3, $1
sll $0, $0, 0
TAG598:
addu $2, $2, $2
lui $3, 14
sll $0, $0, 0
addu $3, $2, $2
TAG599:
sll $0, $0, 0
multu $3, $3
lui $3, 8
beq $3, $3, TAG600
TAG600:
sll $0, $0, 0
blez $3, TAG601
sll $0, $0, 0
sltu $1, $3, $3
TAG601:
bne $1, $1, TAG602
srl $4, $1, 0
sub $3, $4, $4
mfhi $2
TAG602:
lui $2, 12
lui $2, 5
divu $2, $2
and $4, $2, $2
TAG603:
beq $4, $4, TAG604
mfhi $4
bgtz $4, TAG604
addu $4, $4, $4
TAG604:
lui $3, 3
lui $1, 5
mfhi $2
sh $4, 0($2)
TAG605:
bltz $2, TAG606
lbu $2, 0($2)
mtlo $2
slt $1, $2, $2
TAG606:
sltiu $2, $1, 1
sb $1, 0($2)
mfhi $4
lhu $3, 0($4)
TAG607:
multu $3, $3
sb $3, 0($3)
bgtz $3, TAG608
lb $4, 0($3)
TAG608:
sh $4, 0($4)
slti $2, $4, 3
lui $2, 3
sll $0, $0, 0
TAG609:
subu $3, $2, $2
mult $3, $3
or $1, $3, $3
beq $2, $2, TAG610
TAG610:
lui $4, 7
and $1, $4, $4
bgez $1, TAG611
sll $0, $0, 0
TAG611:
subu $2, $1, $1
lui $4, 7
sll $0, $0, 0
bne $2, $1, TAG612
TAG612:
srl $3, $4, 1
div $4, $4
sll $0, $0, 0
bne $3, $4, TAG613
TAG613:
mult $3, $3
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG614:
sll $0, $0, 0
bne $4, $4, TAG615
mflo $2
addiu $4, $4, 11
TAG615:
beq $4, $4, TAG616
lui $3, 1
sb $3, 0($4)
mflo $1
TAG616:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG617
multu $2, $1
TAG617:
bne $2, $2, TAG618
sltiu $1, $2, 0
div $1, $2
bltz $1, TAG618
TAG618:
mflo $4
mtlo $4
sh $1, 0($1)
add $1, $1, $1
TAG619:
bne $1, $1, TAG620
sh $1, 0($1)
nor $4, $1, $1
subu $2, $4, $4
TAG620:
mflo $1
lhu $3, 0($2)
mthi $1
addu $4, $1, $3
TAG621:
mfhi $1
sra $2, $1, 2
mfhi $4
mult $1, $4
TAG622:
sb $4, 0($4)
mult $4, $4
lui $1, 14
sll $0, $0, 0
TAG623:
lui $3, 3
bne $3, $3, TAG624
sll $0, $0, 0
mthi $3
TAG624:
addu $3, $3, $3
bne $3, $3, TAG625
mflo $2
sllv $2, $2, $2
TAG625:
lw $3, 0($2)
xor $1, $2, $2
bne $3, $2, TAG626
ori $3, $1, 2
TAG626:
srlv $4, $3, $3
mthi $4
mtlo $4
bne $4, $3, TAG627
TAG627:
lui $2, 11
addiu $4, $2, 9
lui $4, 0
xor $2, $4, $4
TAG628:
bne $2, $2, TAG629
lui $2, 13
bgtz $2, TAG629
xori $3, $2, 6
TAG629:
sll $0, $0, 0
slt $2, $3, $3
bne $2, $3, TAG630
mthi $3
TAG630:
beq $2, $2, TAG631
add $1, $2, $2
lui $1, 4
beq $1, $1, TAG631
TAG631:
mfhi $3
lb $4, 0($1)
mfhi $1
and $3, $1, $1
TAG632:
beq $3, $3, TAG633
sll $0, $0, 0
sh $3, 0($3)
ori $2, $3, 7
TAG633:
xori $2, $2, 6
ori $2, $2, 9
mtlo $2
mtlo $2
TAG634:
bne $2, $2, TAG635
lui $4, 10
bgtz $4, TAG635
divu $2, $4
TAG635:
mflo $1
sll $0, $0, 0
lui $1, 12
sb $1, 0($2)
TAG636:
sll $0, $0, 0
srlv $3, $1, $1
mfhi $3
mflo $3
TAG637:
multu $3, $3
mult $3, $3
bne $3, $3, TAG638
lhu $3, 0($3)
TAG638:
srlv $4, $3, $3
sb $3, 0($4)
andi $4, $4, 4
lw $3, 0($3)
TAG639:
mult $3, $3
or $1, $3, $3
srlv $4, $1, $3
lui $2, 8
TAG640:
sll $0, $0, 0
multu $2, $2
multu $2, $2
mtlo $2
TAG641:
divu $2, $2
mtlo $2
beq $2, $2, TAG642
mult $2, $2
TAG642:
blez $2, TAG643
sll $0, $0, 0
sltiu $3, $2, 7
mflo $4
TAG643:
add $1, $4, $4
sb $4, 0($4)
mfhi $3
lb $4, 0($4)
TAG644:
beq $4, $4, TAG645
nor $4, $4, $4
lui $3, 7
mthi $4
TAG645:
bne $3, $3, TAG646
sh $3, 0($3)
srl $1, $3, 6
lui $3, 12
TAG646:
mfhi $2
bltz $2, TAG647
lui $2, 1
lui $4, 5
TAG647:
bgtz $4, TAG648
sll $0, $0, 0
lbu $3, 0($4)
bgtz $4, TAG648
TAG648:
lui $1, 12
mfhi $3
lui $1, 1
srlv $2, $3, $3
TAG649:
mfhi $2
sb $2, 0($2)
mfhi $3
lw $4, 0($2)
TAG650:
beq $4, $4, TAG651
lb $3, 0($4)
sw $4, 0($3)
mflo $1
TAG651:
bne $1, $1, TAG652
addu $1, $1, $1
sll $0, $0, 0
srav $3, $1, $1
TAG652:
and $2, $3, $3
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG653:
lui $4, 13
mthi $4
bltz $4, TAG654
addiu $4, $4, 14
TAG654:
mtlo $4
mthi $4
addiu $4, $4, 14
sll $0, $0, 0
TAG655:
divu $4, $4
mthi $4
addu $4, $4, $4
sllv $4, $4, $4
TAG656:
bgez $4, TAG657
sll $0, $0, 0
divu $4, $4
bgtz $4, TAG657
TAG657:
slti $2, $4, 3
srlv $4, $2, $4
lui $3, 7
bne $4, $2, TAG658
TAG658:
sll $0, $0, 0
mtlo $3
bltz $1, TAG659
mthi $1
TAG659:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $1, 0
TAG660:
beq $1, $1, TAG661
lui $3, 0
sra $1, $1, 10
mthi $1
TAG661:
lh $2, 0($1)
subu $1, $1, $1
bgtz $1, TAG662
lhu $4, 0($2)
TAG662:
mult $4, $4
sllv $3, $4, $4
ori $3, $4, 4
bgtz $3, TAG663
TAG663:
andi $1, $3, 8
lui $3, 12
mult $3, $3
mtlo $3
TAG664:
sll $3, $3, 11
srl $2, $3, 1
mfhi $1
xori $2, $2, 9
TAG665:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
mflo $1
TAG666:
lui $2, 5
mthi $1
bne $1, $2, TAG667
sll $0, $0, 0
TAG667:
lui $1, 14
sll $0, $0, 0
bltz $3, TAG668
mfhi $1
TAG668:
sll $0, $0, 0
mfhi $1
subu $4, $1, $1
mult $4, $4
TAG669:
addiu $2, $4, 14
mult $2, $4
sra $3, $4, 15
sw $3, 0($3)
TAG670:
addi $1, $3, 2
slt $2, $3, $1
divu $3, $1
bgez $1, TAG671
TAG671:
sb $2, 0($2)
andi $3, $2, 14
mtlo $2
sb $2, 0($3)
TAG672:
addu $1, $3, $3
multu $1, $3
sh $3, 0($1)
ori $2, $3, 2
TAG673:
lui $4, 5
sll $0, $0, 0
lhu $4, 0($2)
or $2, $4, $4
TAG674:
lw $3, 0($2)
add $3, $2, $2
mtlo $3
mflo $4
TAG675:
addi $2, $4, 15
multu $4, $4
multu $4, $2
mtlo $2
TAG676:
sb $2, 0($2)
lui $1, 4
sll $0, $0, 0
sb $2, 0($2)
TAG677:
nor $4, $1, $1
and $4, $4, $1
bltz $4, TAG678
mfhi $3
TAG678:
lhu $1, 0($3)
mtlo $3
mflo $1
add $4, $3, $1
TAG679:
addi $1, $4, 3
sll $1, $4, 7
mflo $3
bgez $1, TAG680
TAG680:
lui $1, 11
lbu $4, 0($3)
srl $3, $4, 1
mflo $4
TAG681:
nor $2, $4, $4
bgtz $4, TAG682
lb $2, 0($4)
bgtz $2, TAG682
TAG682:
lbu $4, 0($2)
bne $2, $4, TAG683
xori $1, $2, 2
srl $1, $1, 15
TAG683:
lbu $1, 0($1)
mtlo $1
sw $1, 0($1)
mtlo $1
TAG684:
srlv $4, $1, $1
bltz $4, TAG685
ori $1, $4, 2
lhu $2, 0($1)
TAG685:
lui $2, 6
bgez $2, TAG686
sll $0, $0, 0
add $2, $2, $1
TAG686:
mtlo $2
mfhi $2
mfhi $1
bltz $2, TAG687
TAG687:
mtlo $1
mult $1, $1
bne $1, $1, TAG688
lbu $3, 0($1)
TAG688:
multu $3, $3
bgez $3, TAG689
mthi $3
slti $3, $3, 13
TAG689:
mult $3, $3
lui $1, 9
mthi $1
multu $1, $1
TAG690:
beq $1, $1, TAG691
mtlo $1
sra $4, $1, 15
div $4, $4
TAG691:
or $4, $4, $4
sh $4, 0($4)
sllv $1, $4, $4
mult $4, $4
TAG692:
sh $1, 0($1)
lui $2, 15
mfhi $1
sll $0, $0, 0
TAG693:
srav $2, $1, $1
xor $2, $2, $1
bltz $2, TAG694
and $2, $2, $2
TAG694:
bgez $2, TAG695
mthi $2
mult $2, $2
bgtz $2, TAG695
TAG695:
sltu $2, $2, $2
sh $2, 0($2)
lui $4, 4
xori $1, $2, 12
TAG696:
lui $4, 11
blez $1, TAG697
mfhi $4
blez $4, TAG697
TAG697:
sb $4, 0($4)
sb $4, 0($4)
sh $4, 0($4)
or $1, $4, $4
TAG698:
mfhi $4
lui $1, 13
bgtz $4, TAG699
sll $0, $0, 0
TAG699:
bgez $4, TAG700
mfhi $4
lbu $2, 0($4)
sb $4, 0($4)
TAG700:
andi $3, $2, 14
mult $3, $2
or $4, $2, $3
mtlo $3
TAG701:
beq $4, $4, TAG702
mtlo $4
mult $4, $4
lb $2, 0($4)
TAG702:
andi $3, $2, 8
sw $3, 0($2)
beq $3, $3, TAG703
mflo $4
TAG703:
lh $4, 0($4)
or $4, $4, $4
blez $4, TAG704
mflo $4
TAG704:
mtlo $4
mfhi $2
mflo $3
mtlo $3
TAG705:
beq $3, $3, TAG706
lui $1, 6
beq $1, $3, TAG706
mthi $3
TAG706:
bne $1, $1, TAG707
divu $1, $1
subu $1, $1, $1
multu $1, $1
TAG707:
nor $1, $1, $1
lh $1, 1($1)
srav $1, $1, $1
mult $1, $1
TAG708:
mtlo $1
sh $1, 0($1)
mtlo $1
slti $2, $1, 8
TAG709:
blez $2, TAG710
sb $2, 0($2)
mtlo $2
divu $2, $2
TAG710:
mflo $1
mflo $4
beq $2, $4, TAG711
sb $1, 0($2)
TAG711:
mthi $4
lui $3, 13
addu $3, $4, $4
lui $4, 4
TAG712:
bgez $4, TAG713
lui $1, 14
lbu $3, 0($4)
lh $1, 0($4)
TAG713:
bne $1, $1, TAG714
sll $0, $0, 0
sra $2, $1, 7
lui $2, 14
TAG714:
divu $2, $2
subu $4, $2, $2
bgtz $4, TAG715
mtlo $4
TAG715:
mfhi $1
lui $4, 11
mfhi $4
mfhi $3
TAG716:
mflo $2
sh $2, 0($2)
srav $4, $2, $3
bgtz $4, TAG717
TAG717:
lui $4, 4
lui $3, 12
div $4, $4
bltz $4, TAG718
TAG718:
xori $3, $3, 6
bne $3, $3, TAG719
sra $4, $3, 0
div $4, $3
TAG719:
sltiu $3, $4, 4
sltu $4, $3, $3
addi $4, $3, 6
addiu $4, $4, 3
TAG720:
lui $1, 0
lb $1, 0($4)
lui $4, 1
mthi $1
TAG721:
mfhi $3
multu $4, $4
divu $3, $4
lui $3, 0
TAG722:
lui $2, 11
mflo $2
mult $3, $3
bgtz $2, TAG723
TAG723:
sh $2, 0($2)
beq $2, $2, TAG724
xor $4, $2, $2
beq $2, $2, TAG724
TAG724:
sra $1, $4, 2
bne $4, $4, TAG725
addiu $2, $4, 15
mult $4, $2
TAG725:
mthi $2
beq $2, $2, TAG726
mtlo $2
lui $2, 10
TAG726:
bne $2, $2, TAG727
subu $3, $2, $2
addiu $4, $2, 2
sllv $2, $4, $2
TAG727:
lui $2, 2
addu $1, $2, $2
sll $0, $0, 0
beq $2, $2, TAG728
TAG728:
sll $0, $0, 0
slt $4, $1, $1
sll $0, $0, 0
sh $4, 0($4)
TAG729:
lui $1, 0
lui $1, 13
sll $0, $0, 0
beq $1, $2, TAG730
TAG730:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG731
mtlo $4
TAG731:
bne $4, $4, TAG732
mflo $2
sh $4, 0($4)
lui $3, 9
TAG732:
lui $4, 10
sll $1, $4, 3
divu $3, $1
sltu $4, $3, $3
TAG733:
bne $4, $4, TAG734
add $1, $4, $4
blez $4, TAG734
addi $1, $4, 4
TAG734:
srav $1, $1, $1
bgtz $1, TAG735
lb $1, 0($1)
mtlo $1
TAG735:
mult $1, $1
sb $1, 0($1)
multu $1, $1
bgtz $1, TAG736
TAG736:
sh $1, 0($1)
sltiu $1, $1, 14
lbu $2, 0($1)
sw $2, 0($2)
TAG737:
addiu $1, $2, 12
mtlo $2
subu $3, $2, $1
beq $2, $2, TAG738
TAG738:
lui $4, 15
mtlo $3
lui $2, 14
lui $3, 11
TAG739:
mtlo $3
sll $0, $0, 0
beq $2, $3, TAG740
lui $2, 9
TAG740:
subu $2, $2, $2
sw $2, 0($2)
mthi $2
lui $2, 15
TAG741:
mfhi $3
bgtz $2, TAG742
mflo $4
div $4, $2
TAG742:
addiu $3, $4, 5
bne $4, $4, TAG743
divu $3, $3
mtlo $3
TAG743:
lui $2, 0
mthi $2
mult $3, $2
mthi $2
TAG744:
bne $2, $2, TAG745
mflo $3
sh $2, 0($2)
bgez $3, TAG745
TAG745:
mfhi $2
lui $4, 9
mthi $3
mthi $2
TAG746:
ori $3, $4, 13
mtlo $3
sltiu $4, $3, 11
bgtz $4, TAG747
TAG747:
mtlo $4
mthi $4
lbu $3, 0($4)
mult $4, $3
TAG748:
srlv $1, $3, $3
mult $1, $3
mfhi $4
bltz $3, TAG749
TAG749:
lh $3, 0($4)
bltz $3, TAG750
mult $4, $4
bgez $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop