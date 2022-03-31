ori $1, $0, 8
ori $2, $0, 9
ori $3, $0, 4
ori $4, $0, 7
sw $1, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $3, 120($0)
sw $1, 124($0)
mtlo $2
addiu $1, $2, 12
sb $1, 0($1)
srl $3, $2, 15
TAG1:
mflo $1
sb $3, 0($1)
lh $1, 0($3)
mtlo $1
TAG2:
mtlo $1
lui $3, 1
mult $3, $3
lui $3, 14
TAG3:
slt $3, $3, $3
and $1, $3, $3
sw $3, 0($1)
mflo $4
TAG4:
blez $4, TAG5
multu $4, $4
sb $4, 0($4)
addi $2, $4, 11
TAG5:
lui $1, 9
bne $2, $1, TAG6
or $4, $2, $2
beq $2, $2, TAG6
TAG6:
lui $4, 13
nor $1, $4, $4
beq $1, $4, TAG7
srlv $3, $1, $4
TAG7:
sll $0, $0, 0
div $3, $4
andi $3, $4, 15
sll $0, $0, 0
TAG8:
sltiu $2, $4, 15
bne $4, $4, TAG9
sltiu $1, $4, 6
mtlo $2
TAG9:
sb $1, 0($1)
lui $1, 10
srl $3, $1, 6
lui $2, 7
TAG10:
addiu $2, $2, 10
ori $1, $2, 3
sll $0, $0, 0
andi $2, $3, 2
TAG11:
mflo $1
lui $3, 10
addu $4, $3, $1
sll $0, $0, 0
TAG12:
mult $4, $4
sll $0, $0, 0
mflo $3
bne $3, $3, TAG13
TAG13:
mthi $3
mflo $4
mult $3, $4
lw $2, 0($3)
TAG14:
lui $4, 13
mult $4, $4
mult $2, $4
bgez $4, TAG15
TAG15:
mflo $3
mult $3, $4
bne $4, $3, TAG16
lui $2, 11
TAG16:
sll $0, $0, 0
mfhi $3
srl $2, $3, 6
sw $2, 0($2)
TAG17:
mult $2, $2
lui $2, 5
mflo $2
sh $2, 0($2)
TAG18:
beq $2, $2, TAG19
lbu $4, 0($2)
bne $4, $2, TAG19
lui $1, 11
TAG19:
beq $1, $1, TAG20
lui $2, 4
mflo $4
blez $1, TAG20
TAG20:
sltiu $1, $4, 3
multu $4, $4
or $1, $1, $1
sll $2, $4, 11
TAG21:
mflo $3
bgtz $2, TAG22
mfhi $2
slt $2, $2, $3
TAG22:
mthi $2
mult $2, $2
addu $1, $2, $2
lui $3, 8
TAG23:
mflo $2
xor $4, $2, $2
nor $4, $2, $3
bne $4, $2, TAG24
TAG24:
and $3, $4, $4
slt $4, $4, $3
mthi $3
mflo $3
TAG25:
mthi $3
lui $1, 10
subu $4, $3, $1
subu $2, $3, $1
TAG26:
bgtz $2, TAG27
xori $4, $2, 3
lui $2, 0
sll $0, $0, 0
TAG27:
sll $0, $0, 0
lui $2, 15
mfhi $4
blez $2, TAG28
TAG28:
lui $3, 13
sra $3, $3, 12
srl $4, $3, 6
bgtz $3, TAG29
TAG29:
lbu $3, 0($4)
lui $3, 2
lui $3, 8
xori $3, $4, 8
TAG30:
subu $3, $3, $3
sltu $2, $3, $3
bne $2, $3, TAG31
and $2, $3, $2
TAG31:
bne $2, $2, TAG32
addiu $1, $2, 7
mtlo $2
mtlo $2
TAG32:
lui $4, 10
lui $1, 15
divu $1, $4
mult $4, $1
TAG33:
blez $1, TAG34
divu $1, $1
bne $1, $1, TAG34
lui $1, 15
TAG34:
xor $3, $1, $1
sra $2, $3, 10
lui $1, 4
lui $3, 13
TAG35:
lui $3, 6
sll $0, $0, 0
bne $3, $3, TAG36
div $1, $3
TAG36:
mult $1, $1
bgez $1, TAG37
lui $2, 7
lui $1, 4
TAG37:
mtlo $1
lui $4, 2
divu $1, $1
divu $4, $4
TAG38:
multu $4, $4
lui $3, 9
mult $3, $3
mtlo $4
TAG39:
div $3, $3
mflo $1
ori $3, $3, 5
mflo $4
TAG40:
mtlo $4
beq $4, $4, TAG41
sb $4, 0($4)
mfhi $2
TAG41:
sll $0, $0, 0
nor $2, $2, $2
lui $1, 6
andi $1, $1, 8
TAG42:
mflo $4
lw $3, 0($1)
mthi $1
bltz $1, TAG43
TAG43:
sltu $1, $3, $3
bne $1, $1, TAG44
sh $3, 0($1)
lhu $4, -256($3)
TAG44:
sltiu $3, $4, 1
bltz $3, TAG45
mfhi $1
beq $3, $3, TAG45
TAG45:
slti $1, $1, 0
mfhi $3
lh $2, 0($1)
mflo $2
TAG46:
bltz $2, TAG47
lb $4, 0($2)
beq $4, $4, TAG47
ori $4, $2, 4
TAG47:
bltz $4, TAG48
mtlo $4
lui $4, 14
xori $3, $4, 12
TAG48:
mult $3, $3
bltz $3, TAG49
mtlo $3
sllv $3, $3, $3
TAG49:
xor $3, $3, $3
add $4, $3, $3
or $4, $3, $3
lb $2, 0($3)
TAG50:
lui $3, 9
mfhi $3
mflo $2
div $3, $2
TAG51:
div $2, $2
bgtz $2, TAG52
mthi $2
sh $2, 0($2)
TAG52:
srl $2, $2, 1
bne $2, $2, TAG53
lui $3, 8
sll $0, $0, 0
TAG53:
sll $3, $2, 4
andi $2, $2, 9
beq $2, $3, TAG54
mfhi $4
TAG54:
srl $2, $4, 5
lw $1, -28672($2)
xor $3, $1, $1
lui $2, 7
TAG55:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG56:
bne $3, $3, TAG57
lui $1, 4
mflo $1
mthi $3
TAG57:
multu $1, $1
mthi $1
lui $4, 2
sll $0, $0, 0
TAG58:
addiu $3, $4, 14
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG59
TAG59:
xori $3, $4, 2
mfhi $2
mtlo $4
bgez $2, TAG60
TAG60:
div $2, $2
mthi $2
xor $2, $2, $2
subu $4, $2, $2
TAG61:
blez $4, TAG62
andi $4, $4, 13
bgtz $4, TAG62
lui $4, 1
TAG62:
lw $3, 0($4)
sw $3, -256($3)
sb $4, 0($4)
sw $4, -256($3)
TAG63:
beq $3, $3, TAG64
multu $3, $3
blez $3, TAG64
srlv $2, $3, $3
TAG64:
lw $4, 0($2)
lb $3, 0($2)
beq $2, $4, TAG65
mult $3, $2
TAG65:
bltz $3, TAG66
lw $2, 0($3)
mult $3, $3
lhu $4, 0($2)
TAG66:
bne $4, $4, TAG67
srlv $2, $4, $4
lui $2, 11
div $2, $2
TAG67:
div $2, $2
mult $2, $2
lui $3, 9
bne $2, $2, TAG68
TAG68:
sll $0, $0, 0
sra $2, $3, 9
sw $3, 0($4)
div $3, $2
TAG69:
mtlo $2
lui $1, 15
beq $2, $1, TAG70
lui $3, 0
TAG70:
bne $3, $3, TAG71
mflo $3
multu $3, $3
sra $1, $3, 12
TAG71:
sw $1, 0($1)
lh $3, 0($1)
sb $3, 0($1)
beq $3, $1, TAG72
TAG72:
sra $1, $3, 13
sh $1, 0($1)
lb $2, 0($3)
add $1, $2, $2
TAG73:
bltz $1, TAG74
lh $3, 0($1)
bgtz $1, TAG74
lh $3, 0($3)
TAG74:
blez $3, TAG75
xor $2, $3, $3
lui $1, 13
bgez $1, TAG75
TAG75:
lui $3, 5
andi $2, $3, 5
sub $2, $1, $1
addiu $4, $1, 5
TAG76:
lb $1, 0($4)
sll $2, $1, 11
mtlo $1
mthi $2
TAG77:
lw $2, 0($2)
sb $2, 0($2)
sltiu $1, $2, 0
multu $2, $2
TAG78:
mtlo $1
mfhi $4
mtlo $1
srl $4, $4, 9
TAG79:
sb $4, 0($4)
multu $4, $4
lb $1, 0($4)
lw $1, 0($1)
TAG80:
slt $3, $1, $1
bgez $3, TAG81
lb $1, 0($3)
sw $1, 0($3)
TAG81:
lw $3, 0($1)
addu $1, $3, $3
lui $3, 10
multu $3, $1
TAG82:
multu $3, $3
lui $1, 15
sltiu $4, $3, 12
ori $2, $3, 11
TAG83:
bltz $2, TAG84
divu $2, $2
sll $3, $2, 12
mflo $4
TAG84:
lui $4, 6
divu $4, $4
divu $4, $4
bne $4, $4, TAG85
TAG85:
mthi $4
sll $0, $0, 0
lui $2, 4
beq $4, $4, TAG86
TAG86:
sllv $1, $2, $2
mflo $1
lui $3, 12
bltz $1, TAG87
TAG87:
sll $0, $0, 0
sltu $4, $3, $3
sra $2, $4, 3
mfhi $3
TAG88:
bgtz $3, TAG89
sll $0, $0, 0
bne $3, $3, TAG89
divu $3, $3
TAG89:
mtlo $3
mfhi $1
addiu $4, $1, 12
sll $0, $0, 0
TAG90:
blez $4, TAG91
sllv $1, $4, $4
mult $1, $1
mflo $4
TAG91:
sll $0, $0, 0
mthi $4
and $2, $4, $4
addiu $1, $4, 13
TAG92:
mtlo $1
sll $0, $0, 0
mult $1, $1
mthi $1
TAG93:
addiu $4, $1, 1
sll $0, $0, 0
mtlo $1
bltz $4, TAG94
TAG94:
sll $0, $0, 0
bgtz $4, TAG95
mult $4, $4
sll $0, $0, 0
TAG95:
mtlo $2
subu $3, $2, $2
subu $3, $2, $2
multu $3, $3
TAG96:
sh $3, 0($3)
and $4, $3, $3
mfhi $4
mthi $4
TAG97:
sltiu $3, $4, 6
lui $1, 8
bgez $4, TAG98
mflo $3
TAG98:
nor $1, $3, $3
lb $1, 1($1)
sra $4, $1, 12
lui $1, 11
TAG99:
sll $0, $0, 0
bne $1, $1, TAG100
lui $1, 13
lui $2, 3
TAG100:
sra $3, $2, 9
bgez $2, TAG101
mfhi $2
slt $3, $2, $3
TAG101:
sltu $3, $3, $3
lui $3, 12
mtlo $3
mfhi $3
TAG102:
lui $3, 12
sll $0, $0, 0
sra $3, $3, 15
div $3, $3
TAG103:
bgtz $3, TAG104
mult $3, $3
lui $1, 4
slti $4, $3, 2
TAG104:
multu $4, $4
sw $4, 0($4)
lh $4, 0($4)
beq $4, $4, TAG105
TAG105:
lb $1, 0($4)
beq $4, $1, TAG106
mthi $1
or $4, $4, $4
TAG106:
bgtz $4, TAG107
sh $4, 0($4)
mtlo $4
sra $3, $4, 2
TAG107:
mult $3, $3
beq $3, $3, TAG108
slt $1, $3, $3
slti $3, $3, 0
TAG108:
bgtz $3, TAG109
mult $3, $3
lb $3, 0($3)
lh $1, 0($3)
TAG109:
sh $1, 0($1)
mthi $1
sra $3, $1, 7
mult $1, $3
TAG110:
mult $3, $3
lui $4, 9
mthi $4
bgtz $4, TAG111
TAG111:
div $4, $4
and $4, $4, $4
beq $4, $4, TAG112
sll $0, $0, 0
TAG112:
mflo $3
srlv $1, $3, $3
addiu $3, $3, 15
sltiu $3, $1, 9
TAG113:
xori $3, $3, 4
lui $1, 12
nor $3, $3, $3
sh $3, 6($3)
TAG114:
lui $4, 0
srlv $3, $4, $3
mfhi $4
sb $4, 0($3)
TAG115:
mflo $3
lbu $4, 0($4)
mthi $4
andi $4, $3, 1
TAG116:
lui $1, 10
sb $4, 0($4)
or $3, $1, $4
bne $4, $3, TAG117
TAG117:
slt $4, $3, $3
mflo $2
xori $2, $3, 7
lui $3, 2
TAG118:
or $3, $3, $3
nor $3, $3, $3
mfhi $1
beq $3, $3, TAG119
TAG119:
multu $1, $1
sb $1, 0($1)
sltu $3, $1, $1
beq $1, $3, TAG120
TAG120:
mthi $3
mfhi $1
bne $1, $1, TAG121
lui $2, 1
TAG121:
sll $0, $0, 0
lui $3, 13
bgtz $3, TAG122
sltiu $2, $3, 1
TAG122:
mtlo $2
mtlo $2
sh $2, 0($2)
sra $2, $2, 4
TAG123:
multu $2, $2
mfhi $2
nor $4, $2, $2
xori $1, $4, 8
TAG124:
bgtz $1, TAG125
srlv $2, $1, $1
sw $2, 9($1)
mthi $2
TAG125:
bgez $2, TAG126
subu $4, $2, $2
blez $2, TAG126
mthi $2
TAG126:
lhu $4, 0($4)
subu $4, $4, $4
lui $4, 15
bltz $4, TAG127
TAG127:
sll $0, $0, 0
mthi $4
mthi $4
sll $0, $0, 0
TAG128:
bne $4, $4, TAG129
lui $2, 13
lui $3, 4
sll $0, $0, 0
TAG129:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
sllv $3, $1, $1
TAG130:
divu $3, $3
bne $3, $3, TAG131
mthi $3
mfhi $1
TAG131:
andi $3, $1, 9
blez $1, TAG132
mult $1, $3
beq $1, $1, TAG132
TAG132:
addi $1, $3, 2
divu $3, $1
bne $3, $1, TAG133
multu $1, $3
TAG133:
bne $1, $1, TAG134
sra $4, $1, 8
andi $1, $4, 5
lh $3, 0($1)
TAG134:
blez $3, TAG135
lw $1, -511($3)
lui $1, 3
bne $1, $1, TAG135
TAG135:
sll $0, $0, 0
and $3, $1, $3
bgez $3, TAG136
ori $3, $1, 4
TAG136:
beq $3, $3, TAG137
srlv $3, $3, $3
mthi $3
srlv $4, $3, $3
TAG137:
mfhi $4
blez $4, TAG138
sb $4, 0($4)
andi $3, $4, 4
TAG138:
sb $3, -12288($3)
addiu $2, $3, 9
beq $2, $3, TAG139
addu $3, $3, $3
TAG139:
divu $3, $3
mthi $3
lhu $4, -24576($3)
lb $4, -256($4)
TAG140:
mtlo $4
lb $3, 0($4)
multu $3, $3
lbu $1, 0($3)
TAG141:
sll $3, $1, 8
srlv $2, $1, $1
multu $2, $2
lui $2, 7
TAG142:
mthi $2
andi $1, $2, 8
ori $3, $1, 11
mtlo $3
TAG143:
sb $3, 0($3)
lui $2, 5
mtlo $2
bgez $2, TAG144
TAG144:
lui $4, 1
or $1, $2, $2
div $1, $4
mtlo $2
TAG145:
srlv $3, $1, $1
mfhi $2
bgez $3, TAG146
sh $1, 0($2)
TAG146:
mult $2, $2
bne $2, $2, TAG147
mfhi $4
beq $4, $2, TAG147
TAG147:
mflo $2
lbu $2, 0($4)
mtlo $2
mfhi $4
TAG148:
sw $4, 0($4)
mfhi $2
beq $2, $2, TAG149
sll $1, $4, 7
TAG149:
bltz $1, TAG150
sltiu $3, $1, 1
lb $4, 0($3)
srav $4, $3, $4
TAG150:
mult $4, $4
sra $1, $4, 9
mfhi $1
addu $4, $4, $4
TAG151:
multu $4, $4
slti $4, $4, 5
sb $4, 0($4)
sltiu $2, $4, 10
TAG152:
sb $2, 0($2)
andi $4, $2, 5
lbu $4, 0($2)
lui $2, 9
TAG153:
lui $4, 12
sll $0, $0, 0
mthi $4
xori $3, $4, 7
TAG154:
beq $3, $3, TAG155
div $3, $3
mult $3, $3
addu $3, $3, $3
TAG155:
srlv $3, $3, $3
sll $1, $3, 10
mthi $3
mfhi $4
TAG156:
sll $0, $0, 0
sllv $1, $3, $3
bne $1, $3, TAG157
divu $4, $3
TAG157:
lui $4, 0
sw $4, 0($4)
nor $1, $4, $4
mtlo $1
TAG158:
sw $1, 1($1)
bne $1, $1, TAG159
addiu $4, $1, 9
bne $1, $1, TAG159
TAG159:
andi $1, $4, 0
sh $4, 0($1)
sra $1, $1, 7
mfhi $2
TAG160:
bne $2, $2, TAG161
mtlo $2
bne $2, $2, TAG161
mult $2, $2
TAG161:
addi $2, $2, 10
sh $2, 0($2)
lui $4, 3
mtlo $2
TAG162:
mthi $4
ori $4, $4, 5
mfhi $3
mflo $4
TAG163:
lhu $1, 0($4)
div $1, $4
sltu $4, $4, $4
lh $3, 0($4)
TAG164:
srlv $4, $3, $3
lb $2, 0($3)
bne $4, $2, TAG165
lui $2, 11
TAG165:
addu $3, $2, $2
sll $0, $0, 0
mtlo $3
bne $2, $3, TAG166
TAG166:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
ori $2, $3, 7
TAG167:
mfhi $1
mfhi $3
lui $4, 13
blez $2, TAG168
TAG168:
lui $1, 14
div $1, $1
bne $4, $4, TAG169
sra $3, $1, 11
TAG169:
beq $3, $3, TAG170
mflo $1
lui $1, 13
mfhi $4
TAG170:
lui $1, 7
slti $4, $1, 7
bne $4, $4, TAG171
addiu $1, $4, 9
TAG171:
lbu $1, 0($1)
xori $2, $1, 4
mult $1, $2
lui $2, 0
TAG172:
mult $2, $2
bgtz $2, TAG173
sb $2, 0($2)
beq $2, $2, TAG173
TAG173:
lui $3, 13
mflo $1
sll $0, $0, 0
mfhi $2
TAG174:
lh $2, 0($2)
bne $2, $2, TAG175
mthi $2
lh $4, 0($2)
TAG175:
bne $4, $4, TAG176
mfhi $2
lui $2, 7
addi $3, $4, 6
TAG176:
beq $3, $3, TAG177
xor $3, $3, $3
lbu $1, 0($3)
beq $3, $3, TAG177
TAG177:
multu $1, $1
sltu $2, $1, $1
mflo $3
mthi $1
TAG178:
mtlo $3
xor $2, $3, $3
addiu $1, $2, 8
lbu $3, 0($2)
TAG179:
sll $4, $3, 0
lbu $2, 0($4)
lui $2, 4
mult $2, $4
TAG180:
mthi $2
mtlo $2
mthi $2
lui $1, 4
TAG181:
subu $1, $1, $1
bne $1, $1, TAG182
mult $1, $1
bne $1, $1, TAG182
TAG182:
sra $4, $1, 11
mthi $4
lw $2, 0($4)
lw $3, 0($4)
TAG183:
andi $2, $3, 9
blez $3, TAG184
lui $3, 3
sw $3, 0($3)
TAG184:
addu $3, $3, $3
mtlo $3
slti $4, $3, 11
mtlo $3
TAG185:
mtlo $4
lui $1, 12
lb $3, 0($4)
lhu $4, 0($3)
TAG186:
bgez $4, TAG187
mult $4, $4
sb $4, 0($4)
lbu $2, 0($4)
TAG187:
mfhi $2
or $4, $2, $2
nor $2, $2, $2
multu $4, $2
TAG188:
divu $2, $2
and $3, $2, $2
subu $4, $2, $3
addu $3, $3, $2
TAG189:
bgez $3, TAG190
mfhi $2
lh $3, 0($2)
srlv $1, $3, $3
TAG190:
sw $1, 0($1)
beq $1, $1, TAG191
lui $4, 0
lui $2, 14
TAG191:
lui $3, 13
sh $2, 0($2)
beq $3, $3, TAG192
sw $2, 0($2)
TAG192:
bne $3, $3, TAG193
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG193:
div $3, $3
mthi $3
addiu $2, $3, 0
bne $2, $3, TAG194
TAG194:
lui $2, 7
mtlo $2
lui $2, 5
mflo $3
TAG195:
sll $0, $0, 0
beq $3, $3, TAG196
sll $0, $0, 0
slt $4, $3, $3
TAG196:
mult $4, $4
beq $4, $4, TAG197
mthi $4
mfhi $4
TAG197:
mflo $4
slt $4, $4, $4
lb $1, 0($4)
lhu $1, 0($4)
TAG198:
lbu $1, 0($1)
mflo $4
lbu $1, 0($4)
mult $1, $1
TAG199:
srl $2, $1, 6
blez $1, TAG200
mult $1, $2
add $2, $1, $1
TAG200:
mult $2, $2
bne $2, $2, TAG201
sh $2, 0($2)
add $1, $2, $2
TAG201:
lw $3, 0($1)
beq $1, $3, TAG202
multu $1, $3
bgtz $1, TAG202
TAG202:
addi $2, $3, 10
mthi $3
lhu $2, 0($2)
beq $2, $3, TAG203
TAG203:
slti $3, $2, 0
mthi $2
mfhi $4
addu $2, $3, $2
TAG204:
multu $2, $2
sll $1, $2, 14
sb $1, 0($2)
sll $0, $0, 0
TAG205:
mult $3, $3
srlv $1, $3, $3
add $1, $1, $3
sh $1, 0($3)
TAG206:
mthi $1
sll $1, $1, 9
bgtz $1, TAG207
lw $4, 0($1)
TAG207:
mflo $2
lui $4, 12
bgez $4, TAG208
lui $1, 3
TAG208:
multu $1, $1
divu $1, $1
sll $0, $0, 0
mthi $4
TAG209:
lui $4, 6
beq $4, $4, TAG210
divu $4, $4
divu $4, $4
TAG210:
bne $4, $4, TAG211
sll $0, $0, 0
beq $4, $4, TAG211
lui $2, 2
TAG211:
bne $2, $2, TAG212
andi $2, $2, 12
mthi $2
srl $1, $2, 5
TAG212:
lui $4, 1
sll $0, $0, 0
bne $2, $2, TAG213
sll $0, $0, 0
TAG213:
lbu $2, 0($2)
lui $4, 5
lui $3, 9
lui $4, 7
TAG214:
blez $4, TAG215
div $4, $4
ori $3, $4, 0
addiu $1, $4, 12
TAG215:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG216:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 2
bltz $3, TAG217
TAG217:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG218:
mflo $3
srl $1, $3, 15
lb $1, 0($1)
mfhi $3
TAG219:
ori $1, $3, 0
bne $1, $3, TAG220
addu $4, $3, $3
lh $2, 0($4)
TAG220:
lbu $2, 0($2)
lui $2, 4
mthi $2
sll $0, $0, 0
TAG221:
mthi $4
addu $2, $4, $4
mtlo $2
sb $4, 0($2)
TAG222:
sh $2, 0($2)
lbu $4, 0($2)
mult $4, $2
mflo $1
TAG223:
lh $1, 0($1)
lhu $2, 0($1)
sub $4, $2, $1
multu $2, $2
TAG224:
blez $4, TAG225
addiu $4, $4, 8
lui $3, 1
srlv $2, $4, $4
TAG225:
sltiu $1, $2, 11
sll $1, $2, 4
mtlo $2
mfhi $1
TAG226:
multu $1, $1
multu $1, $1
mtlo $1
bltz $1, TAG227
TAG227:
multu $1, $1
mtlo $1
mult $1, $1
mult $1, $1
TAG228:
mtlo $1
mtlo $1
bgtz $1, TAG229
sub $4, $1, $1
TAG229:
mthi $4
mfhi $3
bgez $4, TAG230
sra $3, $3, 10
TAG230:
andi $2, $3, 1
lh $3, 0($3)
lhu $2, 0($2)
srlv $2, $3, $2
TAG231:
mthi $2
bgez $2, TAG232
lhu $1, 0($2)
mfhi $2
TAG232:
sb $2, 0($2)
xori $1, $2, 8
beq $1, $1, TAG233
lhu $2, 0($1)
TAG233:
lui $4, 3
lui $4, 15
sb $4, 0($2)
mflo $3
TAG234:
xori $1, $3, 6
lui $3, 14
bltz $3, TAG235
sll $0, $0, 0
TAG235:
mtlo $4
sll $0, $0, 0
xori $3, $4, 7
lui $1, 4
TAG236:
bltz $1, TAG237
lui $4, 3
sll $0, $0, 0
divu $1, $4
TAG237:
subu $2, $4, $4
addiu $3, $4, 3
divu $2, $3
and $3, $4, $4
TAG238:
or $3, $3, $3
sll $2, $3, 11
mfhi $4
mflo $4
TAG239:
bltz $4, TAG240
sh $4, 0($4)
bgez $4, TAG240
multu $4, $4
TAG240:
lw $1, 0($4)
mtlo $4
lui $2, 1
mflo $2
TAG241:
andi $3, $2, 1
mthi $2
mfhi $2
bne $2, $3, TAG242
TAG242:
mflo $4
andi $2, $2, 3
lui $1, 3
sllv $2, $2, $2
TAG243:
sb $2, 0($2)
lhu $2, 0($2)
sh $2, 0($2)
beq $2, $2, TAG244
TAG244:
lui $2, 14
sll $0, $0, 0
mfhi $2
beq $2, $2, TAG245
TAG245:
mthi $2
bne $2, $2, TAG246
addiu $3, $2, 2
multu $3, $2
TAG246:
mflo $1
sh $1, 0($3)
lh $2, 0($1)
srl $1, $3, 11
TAG247:
lui $2, 3
addi $2, $1, 8
xori $4, $2, 8
lui $1, 14
TAG248:
lui $4, 2
mthi $1
bltz $1, TAG249
sll $0, $0, 0
TAG249:
mtlo $4
subu $1, $4, $4
and $4, $4, $1
multu $4, $4
TAG250:
bltz $4, TAG251
lh $4, 0($4)
srl $2, $4, 0
sw $4, 0($4)
TAG251:
bne $2, $2, TAG252
mthi $2
lui $2, 12
mflo $2
TAG252:
lui $3, 0
bgez $2, TAG253
lui $4, 4
bne $4, $3, TAG253
TAG253:
mtlo $4
sll $0, $0, 0
lui $2, 3
mtlo $1
TAG254:
mtlo $2
ori $1, $2, 9
beq $1, $2, TAG255
mthi $2
TAG255:
beq $1, $1, TAG256
mfhi $4
mfhi $1
lui $3, 6
TAG256:
beq $3, $3, TAG257
sh $3, 0($3)
beq $3, $3, TAG257
mfhi $1
TAG257:
lui $2, 11
xori $1, $2, 8
multu $1, $2
bne $2, $1, TAG258
TAG258:
sll $0, $0, 0
mflo $4
mthi $1
slt $3, $1, $4
TAG259:
mtlo $3
blez $3, TAG260
mflo $1
lbu $4, 0($1)
TAG260:
mfhi $1
sb $1, 0($4)
sll $0, $0, 0
sll $0, $0, 0
TAG261:
sll $0, $0, 0
sltu $3, $1, $1
lw $4, 0($3)
bne $4, $1, TAG262
TAG262:
and $2, $4, $4
ori $4, $2, 5
sh $4, 0($2)
mflo $3
TAG263:
lb $4, 0($3)
lui $2, 4
blez $2, TAG264
multu $3, $4
TAG264:
lui $3, 15
srlv $4, $3, $2
lui $2, 13
slti $2, $2, 8
TAG265:
lb $4, 0($2)
lui $3, 14
sll $0, $0, 0
mthi $3
TAG266:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
slti $3, $1, 6
TAG267:
lb $2, 0($3)
mthi $3
multu $3, $2
lhu $1, 0($3)
TAG268:
mtlo $1
lbu $1, 0($1)
bne $1, $1, TAG269
divu $1, $1
TAG269:
div $1, $1
mtlo $1
mfhi $2
beq $1, $2, TAG270
TAG270:
lui $2, 10
or $2, $2, $2
mflo $4
lui $2, 11
TAG271:
blez $2, TAG272
lui $2, 13
sll $0, $0, 0
lw $3, 0($3)
TAG272:
divu $3, $3
beq $3, $3, TAG273
subu $2, $3, $3
sb $3, 0($3)
TAG273:
sb $2, 0($2)
lb $1, 0($2)
lb $3, 0($1)
beq $2, $2, TAG274
TAG274:
add $3, $3, $3
addiu $1, $3, 8
sb $3, 0($3)
ori $3, $3, 4
TAG275:
lui $4, 5
srlv $1, $4, $3
sw $4, 0($3)
mfhi $4
TAG276:
lui $4, 10
sll $0, $0, 0
beq $4, $4, TAG277
sltu $1, $4, $4
TAG277:
addu $1, $1, $1
lui $1, 5
div $1, $1
sll $0, $0, 0
TAG278:
mthi $1
andi $1, $1, 14
slti $2, $1, 2
mult $1, $1
TAG279:
sll $2, $2, 7
lui $1, 2
mthi $2
mfhi $3
TAG280:
srav $2, $3, $3
lui $3, 2
bltz $2, TAG281
mtlo $3
TAG281:
addiu $2, $3, 11
sll $0, $0, 0
bgez $2, TAG282
sll $0, $0, 0
TAG282:
sra $2, $4, 2
sll $0, $0, 0
srlv $4, $2, $4
mtlo $4
TAG283:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG284
sll $0, $0, 0
TAG284:
sll $0, $0, 0
multu $4, $3
bgtz $4, TAG285
mthi $4
TAG285:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
beq $2, $3, TAG286
TAG286:
mfhi $3
mthi $2
addu $3, $3, $3
nor $4, $3, $3
TAG287:
sll $0, $0, 0
mtlo $4
mthi $4
mtlo $1
TAG288:
multu $1, $1
mflo $4
mthi $4
div $4, $1
TAG289:
srav $2, $4, $4
mult $4, $4
sllv $1, $2, $2
bne $2, $1, TAG290
TAG290:
mult $1, $1
xor $2, $1, $1
mthi $2
lui $4, 13
TAG291:
bne $4, $4, TAG292
mflo $2
srav $3, $4, $2
mfhi $2
TAG292:
sh $2, 0($2)
lb $2, 0($2)
blez $2, TAG293
mtlo $2
TAG293:
beq $2, $2, TAG294
mtlo $2
mfhi $3
beq $3, $3, TAG294
TAG294:
sltiu $2, $3, 8
bltz $3, TAG295
sub $1, $2, $2
subu $1, $3, $3
TAG295:
lw $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG296
multu $1, $1
TAG296:
sltiu $2, $1, 12
mtlo $2
sh $2, 0($1)
mult $1, $2
TAG297:
andi $1, $2, 14
lb $3, 0($1)
beq $2, $2, TAG298
multu $2, $1
TAG298:
lui $3, 12
divu $3, $3
beq $3, $3, TAG299
mflo $1
TAG299:
srav $2, $1, $1
lui $4, 4
beq $2, $4, TAG300
or $3, $4, $2
TAG300:
lui $3, 5
beq $3, $3, TAG301
lui $2, 13
sh $3, 0($3)
TAG301:
sll $0, $0, 0
xori $2, $2, 2
lui $1, 3
ori $4, $2, 10
TAG302:
bne $4, $4, TAG303
mthi $4
lui $4, 14
mfhi $3
TAG303:
and $3, $3, $3
mult $3, $3
mfhi $4
bgtz $3, TAG304
TAG304:
divu $4, $4
beq $4, $4, TAG305
lw $2, -169($4)
lbu $4, 0($2)
TAG305:
sll $0, $0, 0
bgez $4, TAG306
lui $3, 4
beq $3, $4, TAG306
TAG306:
andi $2, $3, 6
bgtz $2, TAG307
subu $1, $2, $3
bltz $3, TAG307
TAG307:
multu $1, $1
mfhi $3
sll $0, $0, 0
sltu $3, $1, $4
TAG308:
mtlo $3
addu $2, $3, $3
slt $3, $3, $2
sh $2, 0($3)
TAG309:
lui $3, 3
bne $3, $3, TAG310
mtlo $3
divu $3, $3
TAG310:
bgez $3, TAG311
sll $0, $0, 0
lui $4, 5
addiu $3, $2, 0
TAG311:
blez $3, TAG312
mflo $1
blez $3, TAG312
addu $1, $1, $1
TAG312:
bne $1, $1, TAG313
mflo $3
mthi $3
bgez $3, TAG313
TAG313:
mtlo $3
mflo $1
sb $1, 0($1)
lbu $2, 0($1)
TAG314:
lui $1, 13
lui $3, 11
mfhi $3
mfhi $1
TAG315:
mfhi $2
sb $2, 0($2)
lui $4, 6
mflo $2
TAG316:
mult $2, $2
sb $2, 0($2)
lbu $1, 0($2)
lbu $4, 0($1)
TAG317:
ori $3, $4, 8
beq $4, $3, TAG318
mfhi $4
lh $3, 0($4)
TAG318:
multu $3, $3
mflo $1
lhu $3, -256($3)
blez $3, TAG319
TAG319:
addu $4, $3, $3
multu $3, $4
srav $2, $4, $4
mtlo $2
TAG320:
sw $2, -512($2)
multu $2, $2
sw $2, -512($2)
divu $2, $2
TAG321:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 0
mflo $3
TAG322:
srl $1, $3, 4
lui $2, 10
lb $4, 0($1)
lui $2, 15
TAG323:
lui $4, 3
nor $4, $4, $2
bgez $4, TAG324
addu $3, $4, $2
TAG324:
blez $3, TAG325
slti $1, $3, 8
mtlo $3
lb $2, 0($3)
TAG325:
addu $1, $2, $2
sll $0, $0, 0
andi $3, $2, 14
lui $4, 3
TAG326:
mflo $1
sll $0, $0, 0
blez $1, TAG327
slti $3, $3, 11
TAG327:
sll $4, $3, 7
srl $2, $3, 7
subu $4, $3, $4
multu $2, $2
TAG328:
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
andi $2, $4, 8
TAG329:
lui $1, 12
lui $4, 8
multu $1, $2
bltz $4, TAG330
TAG330:
mult $4, $4
sll $0, $0, 0
ori $4, $4, 7
bne $4, $4, TAG331
TAG331:
sll $0, $0, 0
divu $1, $1
bne $4, $4, TAG332
divu $4, $1
TAG332:
lui $1, 8
sll $0, $0, 0
lui $3, 7
andi $2, $1, 9
TAG333:
sltu $3, $2, $2
lui $4, 13
subu $2, $2, $2
sb $4, 0($3)
TAG334:
sb $2, 0($2)
sltu $4, $2, $2
sltu $1, $4, $2
xori $3, $4, 3
TAG335:
bne $3, $3, TAG336
sll $3, $3, 5
srav $3, $3, $3
bne $3, $3, TAG336
TAG336:
sllv $4, $3, $3
lui $4, 13
mthi $4
lui $4, 6
TAG337:
multu $4, $4
mthi $4
beq $4, $4, TAG338
mflo $3
TAG338:
mtlo $3
mthi $3
and $4, $3, $3
lui $3, 3
TAG339:
xori $1, $3, 15
bgez $3, TAG340
sll $0, $0, 0
mflo $3
TAG340:
sll $0, $0, 0
sll $0, $0, 0
mult $4, $4
subu $1, $4, $3
TAG341:
bgez $1, TAG342
sllv $3, $1, $1
lui $2, 5
mflo $4
TAG342:
lui $4, 2
blez $4, TAG343
sll $0, $0, 0
mflo $2
TAG343:
sh $2, 0($2)
lui $2, 11
sll $0, $0, 0
lui $4, 0
TAG344:
sb $4, 0($4)
sb $4, 0($4)
sw $4, 0($4)
mtlo $4
TAG345:
bne $4, $4, TAG346
mfhi $1
addi $2, $4, 7
mflo $2
TAG346:
lw $2, 0($2)
lbu $1, 0($2)
mflo $1
sh $1, 0($2)
TAG347:
sh $1, 0($1)
mult $1, $1
sh $1, 0($1)
bne $1, $1, TAG348
TAG348:
and $1, $1, $1
lw $3, 0($1)
addiu $1, $1, 6
lui $2, 9
TAG349:
divu $2, $2
subu $1, $2, $2
sll $0, $0, 0
sb $1, 0($1)
TAG350:
andi $3, $2, 14
sll $0, $0, 0
lui $4, 8
bne $3, $4, TAG351
TAG351:
sll $0, $0, 0
bne $4, $4, TAG352
sh $3, 0($3)
mflo $3
TAG352:
bgtz $3, TAG353
lui $4, 11
mtlo $4
divu $3, $4
TAG353:
sltiu $2, $4, 12
multu $4, $2
sll $1, $4, 10
slti $2, $1, 4
TAG354:
sh $2, 0($2)
sra $2, $2, 14
lh $2, 0($2)
mthi $2
TAG355:
sw $2, 0($2)
lui $2, 15
sltu $1, $2, $2
mult $2, $1
TAG356:
bne $1, $1, TAG357
multu $1, $1
lb $1, 0($1)
lui $2, 14
TAG357:
lui $2, 4
andi $3, $2, 14
mflo $4
mflo $1
TAG358:
or $4, $1, $1
mult $1, $1
beq $1, $4, TAG359
sb $4, 0($1)
TAG359:
bgez $4, TAG360
mflo $3
mthi $4
mflo $4
TAG360:
mflo $3
lh $3, 0($3)
lhu $4, 0($3)
mult $4, $3
TAG361:
beq $4, $4, TAG362
mtlo $4
lw $4, 0($4)
multu $4, $4
TAG362:
lui $4, 13
divu $4, $4
lui $4, 14
bne $4, $4, TAG363
TAG363:
divu $4, $4
blez $4, TAG364
mflo $3
lui $2, 3
TAG364:
sll $0, $0, 0
srlv $2, $4, $2
blez $2, TAG365
sll $0, $0, 0
TAG365:
sll $0, $0, 0
andi $3, $2, 15
bgtz $2, TAG366
mthi $2
TAG366:
mult $3, $3
sb $3, 0($3)
mtlo $3
mtlo $3
TAG367:
xori $3, $3, 12
sltu $2, $3, $3
lui $3, 8
bgtz $3, TAG368
TAG368:
sll $0, $0, 0
sll $0, $0, 0
lbu $2, 0($2)
sll $0, $0, 0
TAG369:
lui $1, 9
beq $1, $1, TAG370
sh $1, 0($2)
sh $2, 0($2)
TAG370:
lui $4, 14
blez $4, TAG371
mult $4, $1
mflo $3
TAG371:
sw $3, 0($3)
mthi $3
sb $3, 0($3)
bne $3, $3, TAG372
TAG372:
and $3, $3, $3
lw $2, 0($3)
ori $4, $2, 12
bgez $3, TAG373
TAG373:
slti $1, $4, 5
slti $1, $1, 6
sb $4, 0($1)
bne $4, $1, TAG374
TAG374:
mthi $1
sltu $1, $1, $1
mtlo $1
bgez $1, TAG375
TAG375:
sw $1, 0($1)
mflo $4
sw $1, 0($4)
sub $4, $1, $1
TAG376:
sra $3, $4, 10
sh $3, 0($4)
slti $2, $3, 15
mtlo $4
TAG377:
sllv $4, $2, $2
mfhi $1
lb $3, 0($1)
bne $2, $4, TAG378
TAG378:
sra $3, $3, 9
sb $3, 0($3)
lh $2, 0($3)
sra $1, $2, 0
TAG379:
lb $3, 0($1)
sra $2, $3, 13
bne $1, $3, TAG380
xor $3, $3, $2
TAG380:
mfhi $3
lb $1, 0($3)
bltz $3, TAG381
nor $1, $1, $3
TAG381:
andi $1, $1, 6
subu $3, $1, $1
beq $1, $1, TAG382
lui $2, 2
TAG382:
addiu $2, $2, 3
mthi $2
bne $2, $2, TAG383
sltu $4, $2, $2
TAG383:
lui $3, 7
mflo $4
bgtz $3, TAG384
sll $0, $0, 0
TAG384:
multu $4, $4
sltiu $1, $4, 4
lui $1, 10
mflo $2
TAG385:
lui $3, 14
mtlo $3
lui $1, 2
mflo $3
TAG386:
mthi $3
sll $0, $0, 0
srl $3, $4, 4
sw $4, 0($3)
TAG387:
bne $3, $3, TAG388
multu $3, $3
blez $3, TAG388
lb $1, 0($3)
TAG388:
lui $1, 0
mtlo $1
sub $4, $1, $1
beq $1, $1, TAG389
TAG389:
mflo $4
bne $4, $4, TAG390
slt $1, $4, $4
addiu $1, $1, 11
TAG390:
lbu $3, 0($1)
sltiu $4, $3, 15
sb $1, 0($4)
mult $3, $3
TAG391:
mthi $4
addiu $4, $4, 6
mult $4, $4
or $3, $4, $4
TAG392:
mflo $1
divu $1, $3
div $1, $3
multu $3, $3
TAG393:
sll $1, $1, 12
lui $1, 13
bltz $1, TAG394
mult $1, $1
TAG394:
mflo $4
lui $3, 0
and $2, $4, $3
mfhi $3
TAG395:
bne $3, $3, TAG396
lw $4, -169($3)
ori $2, $4, 6
lh $4, -2816($4)
TAG396:
bgtz $4, TAG397
mfhi $3
mthi $3
multu $4, $3
TAG397:
div $3, $3
mthi $3
bne $3, $3, TAG398
lhu $3, -169($3)
TAG398:
blez $3, TAG399
sb $3, -2816($3)
mtlo $3
mthi $3
TAG399:
bltz $3, TAG400
sb $3, -2816($3)
subu $2, $3, $3
lui $2, 10
TAG400:
mflo $4
nor $4, $4, $2
sll $0, $0, 0
beq $4, $2, TAG401
TAG401:
sllv $4, $4, $4
and $4, $4, $4
lui $4, 12
sll $0, $0, 0
TAG402:
bne $3, $3, TAG403
mflo $2
sh $3, -2816($2)
mfhi $2
TAG403:
subu $3, $2, $2
mflo $4
ori $4, $4, 1
lh $4, -2817($4)
TAG404:
addu $4, $4, $4
sra $4, $4, 15
bne $4, $4, TAG405
sub $2, $4, $4
TAG405:
addiu $3, $2, 5
xori $1, $3, 7
sb $3, 0($1)
mthi $3
TAG406:
sh $1, 0($1)
mult $1, $1
xor $2, $1, $1
mflo $3
TAG407:
mflo $3
lhu $4, 0($3)
andi $4, $3, 13
sll $3, $3, 12
TAG408:
sltiu $1, $3, 14
or $4, $3, $1
lui $2, 15
addiu $3, $4, 0
TAG409:
mflo $2
beq $3, $2, TAG410
multu $2, $3
bgez $2, TAG410
TAG410:
lhu $3, 0($2)
lhu $1, 0($2)
srlv $1, $1, $1
lui $4, 4
TAG411:
mtlo $4
div $4, $4
bne $4, $4, TAG412
sltu $3, $4, $4
TAG412:
lui $3, 0
beq $3, $3, TAG413
lui $1, 14
srl $1, $1, 8
TAG413:
divu $1, $1
mflo $3
beq $3, $3, TAG414
lui $3, 1
TAG414:
sll $0, $0, 0
bltz $3, TAG415
nor $1, $2, $3
mult $1, $2
TAG415:
mthi $1
multu $1, $1
mtlo $1
divu $1, $1
TAG416:
bgez $1, TAG417
mthi $1
div $1, $1
sll $0, $0, 0
TAG417:
lui $3, 7
bgez $3, TAG418
mfhi $1
mflo $1
TAG418:
beq $1, $1, TAG419
lhu $2, 0($1)
mfhi $4
mflo $3
TAG419:
mflo $4
divu $3, $4
blez $3, TAG420
mflo $4
TAG420:
sra $4, $4, 10
lui $1, 8
bgtz $4, TAG421
addiu $4, $4, 1
TAG421:
sllv $3, $4, $4
divu $4, $3
bgez $3, TAG422
divu $3, $4
TAG422:
sll $0, $0, 0
slti $2, $1, 0
blez $3, TAG423
sll $0, $0, 0
TAG423:
mthi $3
lw $2, -898($3)
bgez $3, TAG424
sll $0, $0, 0
TAG424:
sll $0, $0, 0
bne $2, $2, TAG425
sll $0, $0, 0
mflo $4
TAG425:
addu $1, $4, $4
div $4, $4
or $3, $4, $4
lui $1, 5
TAG426:
bne $1, $1, TAG427
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG427:
divu $2, $2
andi $1, $2, 7
mtlo $1
mfhi $1
TAG428:
nor $4, $1, $1
bne $4, $1, TAG429
multu $4, $1
blez $4, TAG429
TAG429:
sb $4, 1($4)
sb $4, 1($4)
mtlo $4
bgtz $4, TAG430
TAG430:
andi $4, $4, 8
xori $3, $4, 7
bltz $3, TAG431
addu $4, $4, $4
TAG431:
mtlo $4
bne $4, $4, TAG432
sw $4, 0($4)
blez $4, TAG432
TAG432:
multu $4, $4
mfhi $1
lw $3, 0($4)
mtlo $3
TAG433:
sw $3, 0($3)
andi $3, $3, 15
nor $1, $3, $3
sllv $3, $1, $3
TAG434:
sb $3, 1($3)
sltu $2, $3, $3
sb $2, 1($3)
lhu $1, 1($3)
TAG435:
sll $0, $0, 0
beq $2, $2, TAG436
lui $2, 10
beq $2, $2, TAG436
TAG436:
div $2, $2
sll $0, $0, 0
sltu $4, $2, $2
mthi $4
TAG437:
sll $1, $4, 6
lui $4, 15
div $1, $4
lbu $1, 0($1)
TAG438:
lhu $2, 0($1)
lui $3, 5
bgez $2, TAG439
sltiu $1, $2, 15
TAG439:
sub $1, $1, $1
sw $1, 0($1)
mthi $1
sh $1, 0($1)
TAG440:
mfhi $3
sb $1, 0($3)
mtlo $1
sub $1, $1, $1
TAG441:
mflo $2
sh $1, 0($2)
slt $2, $1, $1
lui $1, 2
TAG442:
sltiu $1, $1, 0
mthi $1
mfhi $2
mflo $3
TAG443:
sb $3, 0($3)
bltz $3, TAG444
mfhi $2
nor $4, $2, $3
TAG444:
sh $4, 1($4)
mfhi $2
mfhi $2
mtlo $2
TAG445:
mult $2, $2
lui $1, 14
bgtz $2, TAG446
divu $2, $1
TAG446:
bltz $1, TAG447
mthi $1
beq $1, $1, TAG447
multu $1, $1
TAG447:
sll $0, $0, 0
div $3, $1
lh $1, 0($3)
beq $1, $1, TAG448
TAG448:
lui $3, 12
sra $1, $3, 2
slt $3, $1, $1
subu $3, $3, $1
TAG449:
bne $3, $3, TAG450
xor $4, $3, $3
beq $3, $3, TAG450
lui $4, 15
TAG450:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
mflo $2
TAG451:
bgez $2, TAG452
mthi $2
ori $4, $2, 6
sltiu $2, $4, 8
TAG452:
mtlo $2
mflo $2
mfhi $4
mtlo $2
TAG453:
mthi $4
mfhi $2
lui $1, 11
srav $1, $1, $2
TAG454:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
subu $3, $1, $1
TAG455:
lhu $1, 0($3)
multu $3, $3
bne $1, $3, TAG456
or $1, $1, $1
TAG456:
div $1, $1
lui $2, 2
mflo $1
bne $2, $2, TAG457
TAG457:
mthi $1
addiu $3, $1, 7
mtlo $1
mtlo $3
TAG458:
lui $1, 14
sllv $3, $1, $1
slti $4, $3, 12
sll $0, $0, 0
TAG459:
mflo $1
xori $1, $1, 4
mthi $4
mflo $1
TAG460:
lui $1, 1
sll $0, $0, 0
mflo $3
multu $1, $1
TAG461:
lui $3, 12
lui $2, 10
sll $0, $0, 0
mflo $1
TAG462:
xori $4, $1, 9
mtlo $4
blez $4, TAG463
lui $4, 7
TAG463:
beq $4, $4, TAG464
mthi $4
srl $3, $4, 1
lui $2, 9
TAG464:
mtlo $2
lui $3, 9
mfhi $2
lui $3, 1
TAG465:
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
mult $3, $3
TAG466:
sll $0, $0, 0
sll $0, $0, 0
sltu $1, $3, $3
sltu $2, $3, $1
TAG467:
lui $3, 5
mult $2, $2
multu $2, $2
mflo $2
TAG468:
lui $2, 15
mtlo $2
bltz $2, TAG469
lui $4, 0
TAG469:
and $3, $4, $4
multu $3, $4
mthi $4
lh $2, 0($4)
TAG470:
sw $2, 1($2)
lui $2, 10
mflo $2
sb $2, 0($2)
TAG471:
mtlo $2
multu $2, $2
bgtz $2, TAG472
mtlo $2
TAG472:
beq $2, $2, TAG473
mflo $2
div $2, $2
srav $2, $2, $2
TAG473:
mtlo $2
lbu $1, 0($2)
bgez $2, TAG474
lui $2, 4
TAG474:
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG475
sll $0, $0, 0
TAG475:
bgtz $2, TAG476
sll $4, $2, 5
lb $4, 0($2)
andi $4, $2, 6
TAG476:
blez $4, TAG477
multu $4, $4
sll $0, $0, 0
lui $2, 10
TAG477:
mtlo $2
addu $2, $2, $2
sll $0, $0, 0
lui $3, 9
TAG478:
mtlo $3
beq $3, $3, TAG479
sll $0, $0, 0
lui $4, 11
TAG479:
nor $1, $4, $4
bltz $1, TAG480
addiu $1, $4, 11
bgez $1, TAG480
TAG480:
mthi $1
mflo $2
multu $2, $2
sll $0, $0, 0
TAG481:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
bgez $1, TAG482
TAG482:
mult $1, $1
lbu $2, 0($1)
mflo $2
multu $1, $2
TAG483:
sb $2, 0($2)
sw $2, 0($2)
multu $2, $2
mtlo $2
TAG484:
lui $3, 10
mthi $3
lui $2, 8
sll $0, $0, 0
TAG485:
multu $4, $4
mflo $2
mult $2, $4
addu $1, $2, $4
TAG486:
sll $0, $0, 0
sll $0, $0, 0
sltu $1, $1, $1
mult $1, $1
TAG487:
mtlo $1
mflo $3
bne $3, $3, TAG488
mfhi $2
TAG488:
bne $2, $2, TAG489
mfhi $4
mfhi $3
lhu $4, 0($4)
TAG489:
bne $4, $4, TAG490
xor $4, $4, $4
lui $2, 9
sll $0, $0, 0
TAG490:
blez $2, TAG491
divu $2, $2
xori $2, $2, 15
beq $2, $2, TAG491
TAG491:
mflo $4
sb $4, 0($4)
beq $4, $4, TAG492
subu $3, $4, $4
TAG492:
mthi $3
lui $3, 3
ori $1, $3, 11
ori $4, $3, 5
TAG493:
subu $1, $4, $4
mtlo $4
blez $1, TAG494
multu $1, $1
TAG494:
lui $2, 11
addu $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG495:
addiu $4, $2, 2
mfhi $1
bltz $2, TAG496
lui $3, 0
TAG496:
multu $3, $3
addi $1, $3, 10
lui $3, 7
subu $2, $3, $1
TAG497:
bgez $2, TAG498
ori $2, $2, 13
multu $2, $2
bgez $2, TAG498
TAG498:
sll $0, $0, 0
lui $1, 4
lui $4, 9
lui $2, 9
TAG499:
bne $2, $2, TAG500
div $2, $2
mtlo $2
div $2, $2
TAG500:
xor $1, $2, $2
srlv $4, $2, $2
sh $1, 0($1)
divu $4, $2
TAG501:
mthi $4
blez $4, TAG502
mthi $4
nor $3, $4, $4
TAG502:
lui $3, 11
beq $3, $3, TAG503
mfhi $1
addiu $3, $3, 5
TAG503:
sll $0, $0, 0
mflo $3
lbu $1, 0($3)
lb $2, 0($3)
TAG504:
bltz $2, TAG505
lh $3, 0($2)
mfhi $4
sh $4, 0($3)
TAG505:
sll $0, $0, 0
bne $4, $4, TAG506
lui $1, 5
subu $3, $1, $4
TAG506:
bgez $3, TAG507
mflo $3
sb $3, 0($3)
sb $3, 0($3)
TAG507:
ori $3, $3, 14
bgtz $3, TAG508
xor $2, $3, $3
mtlo $2
TAG508:
sll $4, $2, 8
multu $4, $2
sw $4, 0($2)
bgez $4, TAG509
TAG509:
lhu $3, 0($4)
lbu $4, 0($3)
lw $3, 0($4)
sb $3, 0($3)
TAG510:
lui $1, 1
ori $3, $3, 6
mult $3, $1
and $1, $3, $1
TAG511:
beq $1, $1, TAG512
lui $1, 9
mult $1, $1
xori $3, $1, 6
TAG512:
divu $3, $3
ori $3, $3, 15
multu $3, $3
bne $3, $3, TAG513
TAG513:
addiu $2, $3, 14
srav $4, $3, $2
ori $3, $3, 13
lbu $3, 0($3)
TAG514:
and $4, $3, $3
sub $3, $3, $4
bne $4, $3, TAG515
multu $3, $3
TAG515:
mthi $3
subu $1, $3, $3
mtlo $1
sra $3, $3, 9
TAG516:
mflo $4
nor $1, $4, $4
mflo $4
mfhi $3
TAG517:
beq $3, $3, TAG518
mtlo $3
subu $1, $3, $3
lw $4, 0($3)
TAG518:
mfhi $2
sub $2, $2, $4
bgtz $2, TAG519
sh $2, 0($2)
TAG519:
bne $2, $2, TAG520
sh $2, 0($2)
mthi $2
multu $2, $2
TAG520:
lui $4, 8
mtlo $2
div $2, $4
bne $2, $2, TAG521
TAG521:
sll $0, $0, 0
multu $4, $1
sllv $4, $4, $4
bgtz $1, TAG522
TAG522:
mtlo $4
sll $0, $0, 0
mthi $4
lui $4, 11
TAG523:
bgez $4, TAG524
sll $0, $0, 0
sw $2, 0($2)
lw $1, 0($2)
TAG524:
bgtz $1, TAG525
lw $4, 1($1)
mthi $1
mflo $3
TAG525:
sll $0, $0, 0
ori $2, $3, 3
lui $2, 1
mfhi $4
TAG526:
mflo $1
addiu $1, $4, 6
or $4, $4, $4
addu $1, $4, $4
TAG527:
sw $1, 2($1)
mfhi $2
mtlo $1
lui $3, 7
TAG528:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
mthi $3
TAG529:
bgtz $4, TAG530
lh $3, 1($4)
bne $4, $4, TAG530
lui $4, 1
TAG530:
sll $0, $0, 0
sll $2, $4, 15
mflo $2
ori $1, $4, 2
TAG531:
bgtz $1, TAG532
mult $1, $1
mthi $1
beq $1, $1, TAG532
TAG532:
addiu $1, $1, 13
lui $2, 7
subu $2, $2, $2
mthi $2
TAG533:
lui $3, 0
lui $3, 3
sll $0, $0, 0
mult $2, $3
TAG534:
sll $0, $0, 0
bgtz $3, TAG535
mfhi $1
mflo $2
TAG535:
mtlo $2
mthi $2
srav $4, $2, $2
or $4, $2, $4
TAG536:
mtlo $4
lw $2, 0($4)
mflo $4
multu $4, $4
TAG537:
mflo $4
xor $1, $4, $4
bne $1, $4, TAG538
lui $4, 2
TAG538:
lui $3, 6
mthi $4
sll $0, $0, 0
multu $4, $3
TAG539:
sll $0, $0, 0
lui $2, 6
divu $2, $3
andi $1, $3, 11
TAG540:
andi $4, $1, 3
addu $1, $4, $1
mthi $1
beq $1, $1, TAG541
TAG541:
mfhi $2
or $2, $1, $2
mfhi $3
mtlo $1
TAG542:
lui $2, 5
mult $3, $2
ori $3, $2, 9
sll $0, $0, 0
TAG543:
beq $1, $1, TAG544
multu $1, $1
bgtz $1, TAG544
mflo $2
TAG544:
blez $2, TAG545
sllv $1, $2, $2
addu $3, $1, $1
nor $2, $2, $3
TAG545:
mtlo $2
addiu $1, $2, 6
bgez $2, TAG546
lui $1, 6
TAG546:
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG547:
blez $3, TAG548
div $3, $3
beq $3, $3, TAG548
mflo $2
TAG548:
sb $2, 0($2)
bgez $2, TAG549
lbu $2, 0($2)
ori $2, $2, 12
TAG549:
mult $2, $2
lui $3, 10
or $4, $3, $2
mfhi $2
TAG550:
lb $4, 0($2)
mfhi $2
divu $2, $4
mult $4, $2
TAG551:
sb $2, 0($2)
lui $2, 11
mfhi $2
bne $2, $2, TAG552
TAG552:
mfhi $1
bgez $2, TAG553
mflo $2
subu $1, $1, $1
TAG553:
bgez $1, TAG554
mtlo $1
bne $1, $1, TAG554
mflo $4
TAG554:
sll $2, $4, 7
sh $4, 2($4)
sltu $4, $4, $4
lh $3, 256($2)
TAG555:
slti $3, $3, 3
mult $3, $3
bltz $3, TAG556
sltu $4, $3, $3
TAG556:
mfhi $2
lui $3, 0
beq $2, $3, TAG557
sh $3, 0($2)
TAG557:
mtlo $3
sltu $1, $3, $3
nor $2, $1, $1
beq $1, $3, TAG558
TAG558:
mthi $2
lhu $3, 1($2)
lui $1, 12
srlv $4, $3, $3
TAG559:
lh $4, 0($4)
bne $4, $4, TAG560
xori $3, $4, 9
bgtz $4, TAG560
TAG560:
addu $1, $3, $3
nor $4, $3, $3
addu $3, $4, $3
bne $4, $3, TAG561
TAG561:
multu $3, $3
srav $3, $3, $3
srl $3, $3, 14
sll $0, $0, 0
TAG562:
mfhi $1
subu $3, $3, $3
xori $1, $3, 4
multu $1, $3
TAG563:
sh $1, 0($1)
subu $4, $1, $1
lhu $1, 0($4)
blez $1, TAG564
TAG564:
lh $2, 0($1)
sw $1, 0($2)
bne $1, $2, TAG565
lui $4, 9
TAG565:
lui $4, 13
sll $0, $0, 0
mfhi $4
mthi $4
TAG566:
sra $1, $4, 2
sllv $2, $4, $1
blez $2, TAG567
mtlo $2
TAG567:
mult $2, $2
bltz $2, TAG568
srl $1, $2, 0
lui $2, 2
TAG568:
lui $4, 2
mthi $4
bne $4, $2, TAG569
mfhi $3
TAG569:
sll $0, $0, 0
andi $1, $3, 4
mfhi $2
beq $2, $2, TAG570
TAG570:
div $2, $2
mult $2, $2
slt $3, $2, $2
bgtz $3, TAG571
TAG571:
mult $3, $3
sltiu $2, $3, 15
bgez $2, TAG572
multu $2, $3
TAG572:
bgez $2, TAG573
mult $2, $2
div $2, $2
nor $2, $2, $2
TAG573:
mthi $2
beq $2, $2, TAG574
lui $2, 8
bne $2, $2, TAG574
TAG574:
and $1, $2, $2
divu $2, $1
mflo $2
beq $1, $1, TAG575
TAG575:
addu $1, $2, $2
beq $2, $2, TAG576
addu $3, $2, $2
lui $4, 4
TAG576:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
bgez $4, TAG577
TAG577:
subu $2, $4, $4
lui $2, 6
bne $2, $2, TAG578
sltu $4, $2, $4
TAG578:
lui $4, 10
sll $0, $0, 0
mtlo $4
xori $1, $4, 2
TAG579:
bne $1, $1, TAG580
sll $0, $0, 0
mult $1, $1
slti $4, $1, 3
TAG580:
sb $4, 0($4)
bgez $4, TAG581
lbu $3, 0($4)
blez $3, TAG581
TAG581:
lui $3, 3
srav $4, $3, $3
blez $3, TAG582
sll $0, $0, 0
TAG582:
lui $2, 7
mfhi $2
mult $2, $2
lbu $1, 0($2)
TAG583:
sb $1, 0($1)
mflo $1
sh $1, -10000($1)
beq $1, $1, TAG584
TAG584:
sw $1, -10000($1)
divu $1, $1
and $2, $1, $1
xor $3, $2, $1
TAG585:
lb $4, 0($3)
mthi $3
lui $2, 0
mflo $4
TAG586:
sltu $2, $4, $4
sltiu $4, $2, 13
bgez $2, TAG587
lui $3, 6
TAG587:
sll $0, $0, 0
lhu $4, -10000($1)
lb $4, -10000($1)
mtlo $1
TAG588:
sh $4, 0($4)
div $4, $4
mult $4, $4
sltiu $2, $4, 4
TAG589:
multu $2, $2
mtlo $2
srl $2, $2, 10
mthi $2
TAG590:
multu $2, $2
or $1, $2, $2
blez $1, TAG591
or $4, $2, $1
TAG591:
srav $3, $4, $4
mfhi $3
mult $4, $4
mfhi $1
TAG592:
bne $1, $1, TAG593
multu $1, $1
mthi $1
bgtz $1, TAG593
TAG593:
mfhi $3
lh $1, 0($3)
multu $1, $1
mfhi $4
TAG594:
lui $2, 3
mtlo $4
sub $4, $2, $4
sll $0, $0, 0
TAG595:
subu $4, $4, $4
mtlo $4
lui $4, 14
beq $4, $4, TAG596
TAG596:
sll $0, $0, 0
sll $0, $0, 0
subu $1, $4, $4
sll $0, $0, 0
TAG597:
sll $0, $0, 0
sll $0, $0, 0
slti $2, $2, 9
bltz $4, TAG598
TAG598:
multu $2, $2
mult $2, $2
mflo $2
sh $2, 0($2)
TAG599:
sb $2, 0($2)
multu $2, $2
mfhi $1
sw $2, 0($2)
TAG600:
bne $1, $1, TAG601
mtlo $1
bne $1, $1, TAG601
lui $2, 11
TAG601:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 12
sll $0, $0, 0
TAG602:
mtlo $2
andi $1, $2, 15
bltz $1, TAG603
sw $1, 0($1)
TAG603:
lw $1, 0($1)
bltz $1, TAG604
sb $1, 0($1)
nor $3, $1, $1
TAG604:
divu $3, $3
mthi $3
lh $2, 1($3)
mflo $3
TAG605:
bne $3, $3, TAG606
lbu $1, 0($3)
lh $2, 0($1)
srav $3, $3, $1
TAG606:
blez $3, TAG607
srl $2, $3, 3
mflo $4
bgez $2, TAG607
TAG607:
sb $4, 0($4)
mtlo $4
beq $4, $4, TAG608
mthi $4
TAG608:
sb $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
mfhi $2
TAG609:
mflo $3
mult $2, $2
lui $2, 6
beq $3, $3, TAG610
TAG610:
lui $1, 3
beq $1, $2, TAG611
mflo $3
beq $2, $2, TAG611
TAG611:
mfhi $4
sb $3, 0($3)
nor $2, $4, $3
mflo $2
TAG612:
lui $4, 7
lbu $2, 0($2)
mflo $1
slti $3, $2, 8
TAG613:
slti $4, $3, 0
lui $3, 8
multu $3, $4
multu $3, $3
TAG614:
mult $3, $3
sll $0, $0, 0
lbu $4, 0($4)
multu $4, $4
TAG615:
lhu $3, 0($4)
mult $3, $4
lhu $4, -256($3)
mfhi $1
TAG616:
bne $1, $1, TAG617
srl $4, $1, 8
lw $4, 0($1)
beq $4, $4, TAG617
TAG617:
sb $4, -256($4)
lui $1, 15
bne $1, $1, TAG618
sh $1, -256($4)
TAG618:
sll $0, $0, 0
addu $4, $1, $1
xori $4, $1, 0
addu $1, $1, $4
TAG619:
mfhi $3
addu $1, $1, $3
sll $0, $0, 0
ori $2, $1, 5
TAG620:
slt $2, $2, $2
beq $2, $2, TAG621
mtlo $2
bne $2, $2, TAG621
TAG621:
lui $3, 0
multu $3, $2
xori $3, $3, 3
sb $2, 0($3)
TAG622:
srlv $3, $3, $3
beq $3, $3, TAG623
mfhi $1
mflo $2
TAG623:
sllv $1, $2, $2
bne $2, $1, TAG624
sb $2, 0($1)
beq $2, $1, TAG624
TAG624:
lw $1, 0($1)
lui $3, 9
and $3, $3, $1
subu $3, $1, $3
TAG625:
lh $1, 0($3)
sllv $2, $3, $3
sra $2, $2, 12
lui $2, 4
TAG626:
lui $4, 9
ori $3, $4, 5
mtlo $2
sll $0, $0, 0
TAG627:
subu $4, $3, $3
nor $4, $4, $4
slti $1, $4, 3
sb $1, 0($1)
TAG628:
sb $1, 0($1)
lbu $2, 0($1)
mfhi $3
blez $3, TAG629
TAG629:
mfhi $3
multu $3, $3
mflo $2
mtlo $3
TAG630:
bgez $2, TAG631
mthi $2
sw $2, 0($2)
bltz $2, TAG631
TAG631:
slti $4, $2, 11
mthi $4
bne $4, $2, TAG632
addu $4, $2, $4
TAG632:
mtlo $4
mtlo $4
mthi $4
ori $3, $4, 6
TAG633:
addiu $1, $3, 3
lui $3, 10
bgez $3, TAG634
sllv $2, $3, $1
TAG634:
bgez $2, TAG635
sll $0, $0, 0
mthi $2
mthi $2
TAG635:
sll $0, $0, 0
divu $2, $2
mult $2, $2
sll $3, $2, 15
TAG636:
sub $4, $3, $3
mtlo $3
mflo $3
andi $1, $3, 7
TAG637:
mtlo $1
lb $2, 0($1)
mthi $2
multu $2, $2
TAG638:
ori $4, $2, 8
blez $4, TAG639
mult $4, $2
ori $1, $2, 1
TAG639:
lui $3, 8
slti $3, $3, 4
sb $1, 0($1)
mfhi $1
TAG640:
lui $2, 10
sh $1, 0($1)
sra $4, $1, 6
lb $1, 0($1)
TAG641:
bltz $1, TAG642
lui $1, 1
mthi $1
div $1, $1
TAG642:
sll $0, $0, 0
beq $1, $2, TAG643
sllv $3, $2, $2
bgez $1, TAG643
TAG643:
sll $0, $0, 0
andi $1, $3, 15
bltz $3, TAG644
mtlo $1
TAG644:
beq $1, $1, TAG645
mfhi $3
beq $1, $3, TAG645
lhu $2, 0($3)
TAG645:
mtlo $2
mflo $1
mfhi $3
lui $2, 10
TAG646:
sll $0, $0, 0
bgtz $2, TAG647
subu $3, $2, $2
mflo $2
TAG647:
mthi $2
sll $0, $0, 0
lui $2, 10
mfhi $4
TAG648:
sll $0, $0, 0
mtlo $4
and $1, $1, $1
mtlo $1
TAG649:
sll $0, $0, 0
divu $1, $4
bgtz $1, TAG650
sll $0, $0, 0
TAG650:
bgez $4, TAG651
mfhi $1
slt $1, $4, $1
multu $4, $1
TAG651:
mthi $1
mtlo $1
sll $3, $1, 7
mflo $1
TAG652:
lui $3, 3
mflo $4
mthi $1
slti $2, $4, 15
TAG653:
beq $2, $2, TAG654
mflo $1
bne $2, $2, TAG654
ori $2, $2, 13
TAG654:
mflo $2
beq $2, $2, TAG655
mtlo $2
lui $3, 11
TAG655:
sll $0, $0, 0
divu $3, $3
addiu $1, $1, 12
divu $1, $3
TAG656:
bne $1, $1, TAG657
lui $1, 5
sll $0, $0, 0
bgtz $1, TAG657
TAG657:
lui $4, 8
mtlo $1
slt $3, $1, $1
sw $1, 0($3)
TAG658:
lb $2, 0($3)
lw $3, 0($3)
lui $4, 1
bne $4, $2, TAG659
TAG659:
lui $2, 15
mthi $4
lui $1, 13
lui $3, 10
TAG660:
lui $2, 8
divu $2, $2
lui $1, 0
sll $0, $0, 0
TAG661:
sb $1, 0($1)
bltz $1, TAG662
lui $3, 2
sw $1, 0($1)
TAG662:
sll $0, $0, 0
and $2, $3, $3
sll $0, $0, 0
srlv $3, $3, $2
TAG663:
divu $3, $3
beq $3, $3, TAG664
mfhi $1
mflo $3
TAG664:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG665
TAG665:
sll $0, $0, 0
mflo $1
beq $1, $4, TAG666
sra $1, $1, 2
TAG666:
bgtz $1, TAG667
multu $1, $1
and $2, $1, $1
lui $1, 11
TAG667:
mthi $1
lui $4, 3
sll $0, $0, 0
lui $4, 4
TAG668:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG669
sll $0, $0, 0
TAG669:
beq $4, $4, TAG670
sll $0, $0, 0
bgtz $4, TAG670
srav $1, $3, $3
TAG670:
sll $1, $1, 15
or $4, $1, $1
subu $3, $1, $1
mtlo $1
TAG671:
lui $1, 4
addi $3, $3, 14
sltu $4, $1, $3
mtlo $1
TAG672:
sb $4, 0($4)
lb $2, 0($4)
mthi $4
lbu $4, 0($4)
TAG673:
sb $4, 0($4)
bgtz $4, TAG674
sb $4, 0($4)
lui $2, 14
TAG674:
mfhi $2
bgez $2, TAG675
sh $2, 0($2)
sltu $2, $2, $2
TAG675:
sh $2, 0($2)
bgtz $2, TAG676
srlv $3, $2, $2
sw $3, 0($3)
TAG676:
bgez $3, TAG677
slt $1, $3, $3
mfhi $4
beq $3, $4, TAG677
TAG677:
lhu $4, 0($4)
mflo $1
sll $0, $0, 0
bltz $4, TAG678
TAG678:
mult $1, $1
mult $1, $1
sllv $1, $1, $1
addu $1, $1, $1
TAG679:
sra $2, $1, 9
div $1, $1
bltz $1, TAG680
lui $1, 10
TAG680:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
bne $1, $3, TAG681
TAG681:
mthi $3
ori $2, $3, 12
addu $2, $3, $3
srav $4, $3, $3
TAG682:
sw $4, 0($4)
mflo $2
mult $4, $2
mflo $1
TAG683:
sllv $2, $1, $1
srav $1, $2, $2
lui $3, 3
mtlo $3
TAG684:
multu $3, $3
lui $1, 10
mult $1, $3
ori $3, $3, 12
TAG685:
mflo $1
lui $4, 8
sll $0, $0, 0
sllv $1, $2, $2
TAG686:
sub $3, $1, $1
mfhi $4
bne $4, $3, TAG687
sh $3, 0($4)
TAG687:
sh $4, 0($4)
lui $1, 8
or $4, $1, $1
bltz $4, TAG688
TAG688:
mflo $4
lb $2, 0($4)
bgez $2, TAG689
lui $3, 7
TAG689:
sll $0, $0, 0
sltiu $1, $3, 0
beq $3, $1, TAG690
mfhi $4
TAG690:
bne $4, $4, TAG691
sh $4, 0($4)
mthi $4
sltiu $2, $4, 13
TAG691:
mtlo $2
lui $3, 11
beq $3, $2, TAG692
sll $0, $0, 0
TAG692:
blez $3, TAG693
subu $3, $3, $3
mthi $3
beq $3, $3, TAG693
TAG693:
mthi $3
lui $4, 3
mfhi $2
lhu $4, 0($3)
TAG694:
lh $1, 0($4)
sh $4, 0($1)
sh $1, 0($4)
mthi $1
TAG695:
multu $1, $1
lui $4, 7
add $4, $1, $4
srl $4, $4, 0
TAG696:
sll $0, $0, 0
sw $4, 0($2)
mult $4, $2
lui $4, 1
TAG697:
sll $0, $0, 0
xori $1, $4, 1
mthi $1
sltiu $3, $1, 13
TAG698:
bne $3, $3, TAG699
sllv $4, $3, $3
multu $3, $4
multu $4, $3
TAG699:
multu $4, $4
lb $2, 0($4)
multu $2, $4
mflo $3
TAG700:
blez $3, TAG701
xori $2, $3, 9
mflo $4
div $4, $2
TAG701:
multu $4, $4
mfhi $1
and $2, $1, $1
lui $1, 6
TAG702:
mfhi $1
addu $4, $1, $1
sb $1, 0($4)
srav $1, $1, $1
TAG703:
mult $1, $1
addi $2, $1, 6
bne $2, $2, TAG704
ori $2, $2, 2
TAG704:
slti $2, $2, 8
beq $2, $2, TAG705
mtlo $2
mthi $2
TAG705:
lbu $4, 0($2)
sra $1, $2, 12
srl $2, $4, 12
multu $2, $1
TAG706:
bgez $2, TAG707
multu $2, $2
mtlo $2
blez $2, TAG707
TAG707:
lb $1, 0($2)
and $2, $2, $2
lh $1, 0($1)
blez $1, TAG708
TAG708:
lui $3, 15
mthi $3
bgez $3, TAG709
mflo $2
TAG709:
lbu $2, 0($2)
lbu $4, 0($2)
mfhi $2
lui $2, 13
TAG710:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG711
sll $0, $0, 0
TAG711:
lbu $3, 0($1)
mthi $3
mult $3, $1
mult $1, $3
TAG712:
mfhi $2
beq $2, $2, TAG713
lui $1, 0
sw $1, 0($2)
TAG713:
bne $1, $1, TAG714
multu $1, $1
blez $1, TAG714
multu $1, $1
TAG714:
mflo $1
xor $2, $1, $1
nor $2, $2, $2
sra $3, $2, 2
TAG715:
sh $3, 1($3)
lui $3, 1
bgtz $3, TAG716
sll $0, $0, 0
TAG716:
srlv $1, $3, $3
lui $4, 3
mfhi $2
mfhi $4
TAG717:
multu $4, $4
sb $4, 0($4)
mult $4, $4
blez $4, TAG718
TAG718:
and $3, $4, $4
andi $1, $4, 3
mtlo $4
multu $4, $1
TAG719:
beq $1, $1, TAG720
mflo $1
sh $1, 0($1)
sw $1, 0($1)
TAG720:
lh $3, 0($1)
mtlo $1
lbu $3, 0($1)
mtlo $3
TAG721:
mthi $3
beq $3, $3, TAG722
lui $3, 13
sw $3, 0($3)
TAG722:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG723
mtlo $3
TAG723:
mflo $2
sll $0, $0, 0
lui $4, 13
sll $0, $0, 0
TAG724:
xori $4, $4, 11
subu $2, $4, $4
sll $0, $0, 0
mfhi $3
TAG725:
sh $3, 0($3)
xor $1, $3, $3
bltz $3, TAG726
mult $3, $3
TAG726:
bltz $1, TAG727
and $4, $1, $1
sb $4, 0($4)
sw $1, 0($4)
TAG727:
bgtz $4, TAG728
lw $1, 0($4)
lui $4, 13
lh $4, 0($1)
TAG728:
bltz $4, TAG729
sltiu $2, $4, 15
bgez $4, TAG729
subu $4, $4, $2
TAG729:
lui $4, 11
sll $0, $0, 0
srav $1, $4, $4
sll $0, $0, 0
TAG730:
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG731
TAG731:
lui $1, 6
nor $3, $1, $3
lui $4, 13
beq $3, $3, TAG732
TAG732:
mtlo $4
andi $2, $4, 11
sb $4, 0($2)
mfhi $2
TAG733:
addiu $2, $2, 11
bne $2, $2, TAG734
nor $4, $2, $2
multu $4, $4
TAG734:
mthi $4
mfhi $1
mult $1, $4
addiu $2, $4, 11
TAG735:
sll $0, $0, 0
addiu $4, $3, 12
mult $2, $2
and $2, $3, $2
TAG736:
blez $2, TAG737
sll $0, $0, 0
bgtz $2, TAG737
lb $3, 0($2)
TAG737:
sll $0, $0, 0
mflo $4
srl $3, $4, 5
sltiu $3, $4, 3
TAG738:
multu $3, $3
mthi $3
mult $3, $3
lui $4, 12
TAG739:
lui $1, 14
bne $4, $4, TAG740
mflo $2
mthi $2
TAG740:
srl $2, $2, 14
blez $2, TAG741
ori $1, $2, 6
subu $2, $2, $1
TAG741:
multu $2, $2
mthi $2
sltu $1, $2, $2
lw $2, 0($2)
TAG742:
sh $2, 0($2)
mfhi $4
mthi $2
lui $4, 5
TAG743:
bne $4, $4, TAG744
sll $0, $0, 0
sll $0, $0, 0
srav $1, $4, $4
TAG744:
beq $1, $1, TAG745
lui $2, 12
mfhi $2
mthi $2
TAG745:
sll $0, $0, 0
lui $2, 12
addu $3, $2, $2
subu $3, $3, $2
TAG746:
bne $3, $3, TAG747
sll $0, $0, 0
sll $0, $0, 0
sltiu $4, $4, 15
TAG747:
lw $2, 0($4)
lhu $3, 0($2)
beq $4, $3, TAG748
addiu $4, $3, 15
TAG748:
or $1, $4, $4
xor $4, $4, $1
bgtz $1, TAG749
mflo $2
TAG749:
mult $2, $2
bne $2, $2, TAG750
mthi $2
xor $1, $2, $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop