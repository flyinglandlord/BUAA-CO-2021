ori $1, $0, 1
ori $2, $0, 8
ori $3, $0, 7
ori $4, $0, 5
sw $2, 0($0)
sw $1, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $1, 36($0)
sw $2, 40($0)
sw $3, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $1, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $4, 124($0)
bne $2, $2, TAG1
sw $2, 0($2)
srav $1, $2, $2
bltz $1, TAG1
TAG1:
lui $3, 2
multu $3, $1
sll $0, $0, 0
mtlo $1
TAG2:
mtlo $3
xor $1, $3, $3
sll $0, $0, 0
srlv $3, $1, $1
TAG3:
lhu $1, 0($3)
blez $1, TAG4
mtlo $3
andi $1, $3, 5
TAG4:
mflo $3
bgtz $3, TAG5
lhu $1, 0($1)
bne $3, $3, TAG5
TAG5:
and $1, $1, $1
mflo $2
lbu $2, 0($1)
addiu $1, $1, 10
TAG6:
beq $1, $1, TAG7
div $1, $1
sw $1, 0($1)
mflo $1
TAG7:
bne $1, $1, TAG8
lbu $1, 0($1)
multu $1, $1
slti $2, $1, 5
TAG8:
sb $2, 0($2)
multu $2, $2
lbu $3, 0($2)
mfhi $2
TAG9:
sw $2, 0($2)
bne $2, $2, TAG10
lui $2, 5
mfhi $3
TAG10:
bgez $3, TAG11
lui $4, 10
xori $2, $3, 12
mflo $3
TAG11:
multu $3, $3
bgez $3, TAG12
sb $3, 0($3)
mflo $1
TAG12:
bne $1, $1, TAG13
mflo $4
sb $1, 0($4)
sll $2, $1, 9
TAG13:
lbu $2, 0($2)
subu $2, $2, $2
lui $4, 0
mult $4, $2
TAG14:
lui $2, 4
addiu $2, $2, 2
beq $4, $2, TAG15
mtlo $2
TAG15:
lui $2, 3
lui $2, 10
lui $1, 12
sllv $2, $2, $1
TAG16:
divu $2, $2
slt $1, $2, $2
lui $4, 15
blez $1, TAG17
TAG17:
sll $0, $0, 0
lui $1, 4
mult $1, $4
mthi $1
TAG18:
sll $0, $0, 0
bne $3, $1, TAG19
lui $3, 13
bgez $1, TAG19
TAG19:
sll $1, $3, 2
mthi $1
lui $1, 7
bgtz $1, TAG20
TAG20:
sll $0, $0, 0
addu $4, $1, $1
sll $0, $0, 0
blez $1, TAG21
TAG21:
mtlo $1
blez $1, TAG22
mult $1, $1
mfhi $1
TAG22:
mtlo $1
sb $1, 0($1)
beq $1, $1, TAG23
sra $1, $1, 13
TAG23:
lhu $1, 0($1)
add $2, $1, $1
mtlo $1
mult $1, $1
TAG24:
addi $1, $2, 7
sh $1, 0($2)
mult $1, $2
lui $2, 13
TAG25:
addiu $4, $2, 0
bne $2, $4, TAG26
sll $0, $0, 0
beq $2, $2, TAG26
TAG26:
divu $2, $2
beq $2, $2, TAG27
mfhi $3
lui $1, 8
TAG27:
lui $2, 7
lui $4, 4
sll $0, $0, 0
bltz $1, TAG28
TAG28:
sll $0, $0, 0
mult $4, $4
beq $4, $4, TAG29
divu $4, $4
TAG29:
blez $4, TAG30
mult $4, $4
mtlo $4
mthi $4
TAG30:
mthi $4
subu $3, $4, $4
mtlo $4
mflo $1
TAG31:
addu $4, $1, $1
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG32:
srl $2, $3, 8
bne $2, $2, TAG33
subu $1, $3, $3
lb $3, 0($1)
TAG33:
sllv $2, $3, $3
bltz $2, TAG34
mfhi $4
mtlo $2
TAG34:
sll $1, $4, 15
sltu $2, $1, $4
and $3, $1, $2
nor $2, $4, $1
TAG35:
blez $2, TAG36
divu $2, $2
divu $2, $2
ori $2, $2, 13
TAG36:
sltiu $3, $2, 8
lui $2, 12
mfhi $3
mthi $3
TAG37:
xor $2, $3, $3
beq $2, $3, TAG38
xor $3, $3, $3
sh $3, 0($2)
TAG38:
srav $2, $3, $3
bne $3, $3, TAG39
subu $4, $2, $3
mtlo $3
TAG39:
srl $1, $4, 14
sltiu $2, $1, 10
sb $4, 0($2)
bgtz $2, TAG40
TAG40:
sb $2, 0($2)
sra $3, $2, 15
lbu $1, 0($2)
andi $3, $3, 15
TAG41:
addi $1, $3, 9
mfhi $1
mflo $2
mfhi $2
TAG42:
ori $1, $2, 9
beq $1, $2, TAG43
mfhi $4
sw $4, 0($2)
TAG43:
mult $4, $4
beq $4, $4, TAG44
mflo $3
srav $1, $3, $4
TAG44:
mtlo $1
sb $1, 0($1)
div $1, $1
sb $1, 0($1)
TAG45:
slt $1, $1, $1
bgez $1, TAG46
mthi $1
bne $1, $1, TAG46
TAG46:
mthi $1
xori $4, $1, 11
sh $1, 0($1)
addiu $3, $4, 10
TAG47:
bgtz $3, TAG48
sltiu $2, $3, 11
mtlo $2
mflo $1
TAG48:
mflo $4
bne $4, $1, TAG49
mthi $4
slt $1, $4, $1
TAG49:
lui $4, 9
beq $4, $4, TAG50
mthi $4
multu $4, $4
TAG50:
lui $2, 2
sltu $2, $2, $2
sll $0, $0, 0
multu $2, $1
TAG51:
bgtz $1, TAG52
mflo $1
mthi $1
sh $1, 0($1)
TAG52:
mfhi $3
andi $2, $1, 4
sllv $2, $3, $3
mult $1, $2
TAG53:
bgtz $2, TAG54
srl $2, $2, 12
bltz $2, TAG54
sb $2, 0($2)
TAG54:
sltiu $3, $2, 5
sltu $2, $2, $3
sb $2, 0($2)
bgez $3, TAG55
TAG55:
and $1, $2, $2
lb $2, 0($2)
bgtz $2, TAG56
and $3, $1, $1
TAG56:
mtlo $3
sll $2, $3, 10
lui $4, 1
mfhi $2
TAG57:
sltu $4, $2, $2
sub $3, $2, $4
sb $2, 0($4)
mtlo $2
TAG58:
multu $3, $3
slti $1, $3, 0
sw $3, 0($1)
sub $1, $1, $3
TAG59:
mthi $1
bgtz $1, TAG60
mtlo $1
multu $1, $1
TAG60:
mflo $2
mflo $1
sltiu $1, $1, 3
mfhi $2
TAG61:
sltiu $3, $2, 11
addi $3, $2, 0
add $4, $3, $3
sb $2, 0($3)
TAG62:
bltz $4, TAG63
srlv $3, $4, $4
lui $2, 7
lui $4, 14
TAG63:
sll $0, $0, 0
beq $4, $4, TAG64
sll $0, $0, 0
divu $4, $4
TAG64:
lui $3, 10
beq $4, $3, TAG65
sll $0, $0, 0
subu $1, $3, $4
TAG65:
div $1, $1
multu $1, $1
mult $1, $1
divu $1, $1
TAG66:
mfhi $2
lui $1, 0
bltz $1, TAG67
lui $3, 4
TAG67:
mfhi $1
sh $1, 0($1)
mflo $2
sw $3, 0($1)
TAG68:
mfhi $3
sb $3, 0($2)
sb $2, 0($2)
lb $1, 0($2)
TAG69:
subu $4, $1, $1
addiu $1, $1, 10
lui $4, 5
bgez $1, TAG70
TAG70:
lui $4, 6
beq $4, $4, TAG71
mult $4, $4
srav $4, $4, $4
TAG71:
bgtz $4, TAG72
lui $1, 11
mthi $1
lui $3, 8
TAG72:
sw $3, 0($3)
bgtz $3, TAG73
mtlo $3
blez $3, TAG73
TAG73:
mtlo $3
beq $3, $3, TAG74
sll $4, $3, 5
mtlo $3
TAG74:
bgez $4, TAG75
mflo $2
srl $3, $4, 0
bgtz $3, TAG75
TAG75:
addu $1, $3, $3
mfhi $2
sh $1, 0($3)
bgez $3, TAG76
TAG76:
slti $4, $2, 4
lbu $3, 0($2)
addu $3, $2, $3
mthi $4
TAG77:
div $3, $3
srlv $3, $3, $3
sb $3, 0($3)
div $3, $3
TAG78:
lb $4, 0($3)
sltiu $1, $3, 6
addu $3, $1, $4
div $1, $3
TAG79:
lhu $2, 0($3)
sb $3, 0($2)
mthi $2
lb $3, 0($2)
TAG80:
sh $3, 0($3)
bne $3, $3, TAG81
lui $2, 5
sh $2, 0($3)
TAG81:
mtlo $2
mflo $3
bne $3, $2, TAG82
lui $2, 7
TAG82:
mflo $1
mfhi $3
addiu $1, $1, 12
beq $2, $3, TAG83
TAG83:
sll $0, $0, 0
and $1, $1, $1
andi $4, $1, 7
mthi $4
TAG84:
slti $2, $4, 14
bne $4, $2, TAG85
sll $2, $4, 7
lb $1, 0($4)
TAG85:
addiu $4, $1, 8
addiu $3, $4, 4
bgtz $3, TAG86
lui $1, 2
TAG86:
sll $0, $0, 0
mfhi $1
mtlo $1
mthi $1
TAG87:
mflo $3
sw $1, 0($1)
mtlo $3
lui $1, 15
TAG88:
sll $0, $0, 0
slti $1, $1, 9
bgez $1, TAG89
multu $1, $1
TAG89:
sh $1, 0($1)
sltu $4, $1, $1
mflo $4
lb $3, 0($4)
TAG90:
mtlo $3
or $4, $3, $3
sb $4, 0($4)
mult $4, $3
TAG91:
bne $4, $4, TAG92
sllv $2, $4, $4
xori $1, $4, 11
sh $2, 0($2)
TAG92:
srav $1, $1, $1
mflo $3
mult $3, $3
lui $2, 7
TAG93:
slt $4, $2, $2
sll $0, $0, 0
mult $2, $4
lhu $4, 0($4)
TAG94:
lui $3, 6
subu $4, $3, $3
mflo $4
lui $4, 6
TAG95:
srlv $2, $4, $4
nor $1, $4, $4
slti $1, $1, 8
nor $4, $4, $2
TAG96:
mfhi $4
andi $3, $4, 15
mtlo $4
lui $2, 5
TAG97:
addu $4, $2, $2
xori $3, $2, 14
lui $4, 8
mthi $4
TAG98:
addu $3, $4, $4
bltz $4, TAG99
mthi $3
sll $0, $0, 0
TAG99:
lui $3, 1
lui $2, 10
lui $2, 11
mflo $1
TAG100:
mfhi $2
nor $1, $1, $2
sll $0, $0, 0
bne $1, $1, TAG101
TAG101:
lui $3, 14
mtlo $1
bne $3, $3, TAG102
sll $0, $0, 0
TAG102:
slt $1, $3, $3
sll $0, $0, 0
bgtz $3, TAG103
div $1, $3
TAG103:
bgtz $1, TAG104
lw $3, 0($1)
mult $3, $3
lui $3, 15
TAG104:
multu $3, $3
mtlo $3
bne $3, $3, TAG105
mthi $3
TAG105:
mtlo $3
bne $3, $3, TAG106
andi $2, $3, 9
andi $4, $3, 15
TAG106:
lhu $1, 0($4)
bgtz $1, TAG107
multu $1, $1
beq $1, $4, TAG107
TAG107:
or $4, $1, $1
multu $1, $4
subu $3, $1, $4
beq $3, $3, TAG108
TAG108:
sh $3, 0($3)
lui $1, 6
multu $3, $3
bne $3, $3, TAG109
TAG109:
mtlo $1
mtlo $1
sra $1, $1, 8
mfhi $4
TAG110:
beq $4, $4, TAG111
lui $3, 5
nor $1, $3, $3
mfhi $2
TAG111:
sh $2, 0($2)
bgtz $2, TAG112
sb $2, 0($2)
beq $2, $2, TAG112
TAG112:
lui $4, 10
srlv $1, $2, $2
lw $1, 0($2)
bne $1, $1, TAG113
TAG113:
mthi $1
bgez $1, TAG114
lui $4, 6
div $4, $4
TAG114:
slt $4, $4, $4
nor $4, $4, $4
lui $2, 13
blez $4, TAG115
TAG115:
mtlo $2
xori $4, $2, 0
mtlo $4
beq $4, $4, TAG116
TAG116:
lui $3, 2
bne $4, $4, TAG117
sll $0, $0, 0
srav $3, $4, $3
TAG117:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG118:
slti $4, $2, 13
mfhi $1
bgtz $2, TAG119
lui $3, 9
TAG119:
bne $3, $3, TAG120
mthi $3
sll $0, $0, 0
div $3, $3
TAG120:
mflo $3
blez $3, TAG121
sll $2, $3, 15
blez $2, TAG121
TAG121:
mtlo $2
sll $0, $0, 0
slt $3, $3, $2
addiu $2, $3, 3
TAG122:
lui $2, 10
mfhi $4
and $2, $2, $2
bltz $2, TAG123
TAG123:
div $2, $2
sll $0, $0, 0
div $4, $2
xori $2, $2, 8
TAG124:
sll $0, $0, 0
lui $1, 2
bne $1, $1, TAG125
mtlo $1
TAG125:
sll $0, $0, 0
lui $4, 11
mflo $2
sll $0, $0, 0
TAG126:
blez $1, TAG127
multu $1, $1
slti $3, $1, 0
mflo $4
TAG127:
mtlo $4
sw $4, 0($4)
bgtz $4, TAG128
mfhi $1
TAG128:
lui $4, 9
mult $4, $4
mfhi $2
ori $4, $2, 4
TAG129:
bgez $4, TAG130
sb $4, 0($4)
lui $1, 5
mult $4, $1
TAG130:
srav $2, $1, $1
addiu $4, $1, 5
bgtz $1, TAG131
lui $2, 7
TAG131:
addu $4, $2, $2
bltz $4, TAG132
srl $2, $4, 3
sll $0, $0, 0
TAG132:
sll $3, $4, 8
blez $4, TAG133
sll $0, $0, 0
subu $2, $3, $3
TAG133:
sh $2, 0($2)
sh $2, 0($2)
lbu $2, 0($2)
mtlo $2
TAG134:
lui $2, 11
mflo $1
multu $1, $2
addu $3, $2, $2
TAG135:
bne $3, $3, TAG136
sllv $1, $3, $3
bltz $3, TAG136
mfhi $3
TAG136:
blez $3, TAG137
sltu $4, $3, $3
beq $3, $3, TAG137
lb $3, 0($4)
TAG137:
multu $3, $3
lui $2, 10
bne $3, $3, TAG138
mtlo $3
TAG138:
mflo $4
sw $2, 0($4)
mthi $4
mtlo $4
TAG139:
multu $4, $4
lui $4, 12
lui $3, 5
bne $3, $4, TAG140
TAG140:
lui $3, 13
mtlo $3
divu $3, $3
lui $3, 6
TAG141:
sltiu $1, $3, 5
lui $1, 13
lui $3, 15
multu $3, $1
TAG142:
sll $0, $0, 0
bltz $3, TAG143
or $3, $3, $3
slti $1, $3, 11
TAG143:
mfhi $1
xori $1, $1, 2
mfhi $4
mflo $2
TAG144:
bltz $2, TAG145
mflo $3
multu $2, $2
sll $4, $2, 10
TAG145:
mflo $1
multu $4, $1
mtlo $1
sllv $4, $4, $1
TAG146:
lui $1, 3
div $4, $1
sltiu $3, $1, 12
mfhi $1
TAG147:
lui $3, 9
sll $0, $0, 0
mult $3, $1
lui $3, 0
TAG148:
lui $2, 10
lui $2, 1
bgtz $2, TAG149
sll $0, $0, 0
TAG149:
bltz $2, TAG150
mthi $2
mthi $2
sll $0, $0, 0
TAG150:
slti $3, $2, 5
mthi $3
bne $3, $3, TAG151
lui $3, 4
TAG151:
subu $1, $3, $3
lw $4, 0($1)
beq $1, $3, TAG152
mfhi $2
TAG152:
mtlo $2
sb $2, 0($2)
sra $2, $2, 1
andi $1, $2, 3
TAG153:
sb $1, 0($1)
srav $1, $1, $1
srl $1, $1, 13
lhu $3, 0($1)
TAG154:
lw $2, 0($3)
sb $3, 0($3)
lhu $4, 0($3)
lw $2, 0($4)
TAG155:
mthi $2
addu $1, $2, $2
xori $3, $1, 14
sll $0, $0, 0
TAG156:
mthi $3
div $3, $3
lui $4, 8
bne $3, $4, TAG157
TAG157:
sll $0, $0, 0
lui $2, 7
addu $1, $4, $2
bne $4, $1, TAG158
TAG158:
mflo $2
xori $2, $2, 3
lui $1, 6
bne $1, $2, TAG159
TAG159:
sra $1, $1, 11
mflo $1
nor $3, $1, $1
or $1, $1, $3
TAG160:
xor $1, $1, $1
mult $1, $1
mfhi $2
bgtz $1, TAG161
TAG161:
mfhi $1
sb $2, 0($2)
slti $1, $2, 12
beq $1, $1, TAG162
TAG162:
subu $2, $1, $1
xor $3, $1, $1
sw $1, 0($2)
addiu $1, $1, 10
TAG163:
lb $2, 0($1)
bne $1, $2, TAG164
sw $2, 0($2)
and $3, $1, $2
TAG164:
blez $3, TAG165
sh $3, 0($3)
divu $3, $3
addiu $1, $3, 14
TAG165:
sb $1, 0($1)
lui $1, 14
beq $1, $1, TAG166
addu $3, $1, $1
TAG166:
mthi $3
div $3, $3
lui $1, 3
mthi $3
TAG167:
subu $1, $1, $1
beq $1, $1, TAG168
sh $1, 0($1)
beq $1, $1, TAG168
TAG168:
lui $1, 15
bne $1, $1, TAG169
sra $4, $1, 4
bgtz $4, TAG169
TAG169:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG170:
mflo $2
beq $2, $2, TAG171
lui $3, 6
mthi $4
TAG171:
bne $3, $3, TAG172
sll $0, $0, 0
lui $4, 8
bne $4, $3, TAG172
TAG172:
mflo $4
bgez $4, TAG173
sll $0, $0, 0
mthi $4
TAG173:
nor $1, $4, $4
mflo $3
sll $0, $0, 0
div $3, $1
TAG174:
mflo $4
bltz $3, TAG175
lui $2, 0
multu $3, $4
TAG175:
mflo $4
xori $2, $2, 10
mfhi $1
bgez $2, TAG176
TAG176:
lui $3, 9
bgez $1, TAG177
lui $4, 8
sub $1, $1, $1
TAG177:
mthi $1
blez $1, TAG178
mult $1, $1
xori $1, $1, 7
TAG178:
sw $1, 0($1)
subu $1, $1, $1
mtlo $1
lui $4, 5
TAG179:
bgtz $4, TAG180
sll $0, $0, 0
mthi $4
lhu $1, 0($4)
TAG180:
lui $3, 0
bltz $1, TAG181
lb $4, 0($3)
lui $2, 9
TAG181:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
mflo $1
TAG182:
bltz $1, TAG183
subu $2, $1, $1
lui $4, 14
div $1, $1
TAG183:
nor $2, $4, $4
lui $2, 1
beq $2, $2, TAG184
slti $3, $2, 7
TAG184:
sll $1, $3, 13
sb $1, 0($1)
lb $4, 0($3)
nor $2, $1, $3
TAG185:
mthi $2
multu $2, $2
lh $2, 1($2)
sb $2, 0($2)
TAG186:
beq $2, $2, TAG187
mfhi $1
bltz $1, TAG187
mthi $1
TAG187:
sll $0, $0, 0
sb $1, 0($4)
multu $1, $4
sb $1, 0($4)
TAG188:
lui $4, 15
divu $4, $4
sra $1, $4, 2
sll $0, $0, 0
TAG189:
mfhi $3
bne $1, $3, TAG190
srl $4, $1, 1
bne $4, $3, TAG190
TAG190:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
bgez $2, TAG191
TAG191:
mflo $1
lui $2, 14
lbu $1, 0($1)
mtlo $1
TAG192:
lw $4, 0($1)
mtlo $4
sltiu $2, $1, 2
lui $3, 6
TAG193:
addu $1, $3, $3
addiu $1, $3, 15
mtlo $3
subu $3, $1, $1
TAG194:
lhu $2, 0($3)
lui $4, 7
lui $4, 3
nor $4, $4, $4
TAG195:
bltz $4, TAG196
mflo $2
divu $4, $2
mflo $1
TAG196:
sll $2, $1, 13
divu $2, $2
sll $0, $0, 0
slti $1, $2, 12
TAG197:
bne $1, $1, TAG198
lb $3, 0($1)
srav $4, $1, $1
sh $4, 0($4)
TAG198:
xor $1, $4, $4
lui $2, 4
sb $1, 0($1)
lh $2, 0($1)
TAG199:
mthi $2
slti $4, $2, 11
mult $2, $2
mtlo $2
TAG200:
lb $2, 0($4)
lui $1, 15
lui $1, 12
bne $2, $2, TAG201
TAG201:
subu $1, $1, $1
lui $4, 5
mtlo $1
bne $1, $1, TAG202
TAG202:
sltiu $1, $4, 3
mult $1, $4
bne $1, $4, TAG203
and $4, $4, $1
TAG203:
bgtz $4, TAG204
mult $4, $4
mfhi $2
mflo $1
TAG204:
lui $1, 1
mflo $2
bgtz $2, TAG205
mthi $1
TAG205:
bgtz $2, TAG206
mfhi $4
srlv $3, $4, $4
or $4, $3, $3
TAG206:
mfhi $1
sll $0, $0, 0
mflo $1
mult $4, $1
TAG207:
sh $1, 0($1)
sw $1, 0($1)
sub $2, $1, $1
srl $4, $1, 2
TAG208:
subu $4, $4, $4
mthi $4
sh $4, 0($4)
sh $4, 0($4)
TAG209:
lui $3, 6
sll $0, $0, 0
sll $0, $0, 0
slti $2, $4, 5
TAG210:
mflo $3
sb $3, 0($3)
mfhi $2
xori $2, $2, 13
TAG211:
multu $2, $2
bne $2, $2, TAG212
slti $4, $2, 12
mthi $4
TAG212:
sra $2, $4, 6
lui $3, 13
sh $2, 0($2)
bltz $2, TAG213
TAG213:
addiu $3, $3, 4
xor $2, $3, $3
lui $4, 1
mfhi $4
TAG214:
mflo $3
lhu $3, 0($4)
sltiu $3, $4, 15
beq $4, $4, TAG215
TAG215:
mthi $3
lb $3, 0($3)
mflo $3
lb $4, -169($3)
TAG216:
multu $4, $4
beq $4, $4, TAG217
xor $3, $4, $4
mtlo $4
TAG217:
bltz $3, TAG218
mtlo $3
sw $3, 0($3)
bne $3, $3, TAG218
TAG218:
sw $3, 0($3)
multu $3, $3
xor $4, $3, $3
lb $4, 0($4)
TAG219:
sw $4, 0($4)
bltz $4, TAG220
mflo $2
lui $3, 11
TAG220:
bgtz $3, TAG221
sll $0, $0, 0
sh $3, 0($3)
sltiu $3, $3, 10
TAG221:
mult $3, $3
mthi $3
divu $3, $3
beq $3, $3, TAG222
TAG222:
sll $0, $0, 0
blez $3, TAG223
slti $4, $3, 6
mtlo $4
TAG223:
lui $1, 8
sb $1, 0($4)
mtlo $4
beq $1, $4, TAG224
TAG224:
mfhi $3
beq $3, $1, TAG225
xor $1, $1, $1
bne $1, $3, TAG225
TAG225:
sllv $1, $1, $1
bgtz $1, TAG226
lh $2, 0($1)
bgez $2, TAG226
TAG226:
lui $2, 4
bgtz $2, TAG227
sll $0, $0, 0
bne $2, $2, TAG227
TAG227:
lui $1, 1
sltu $4, $1, $1
sll $0, $0, 0
bltz $4, TAG228
TAG228:
multu $3, $3
mfhi $2
lbu $2, 0($2)
sltiu $4, $3, 4
TAG229:
subu $4, $4, $4
mtlo $4
mthi $4
mfhi $4
TAG230:
sra $1, $4, 12
sh $1, 0($1)
mfhi $1
mult $4, $1
TAG231:
sw $1, 0($1)
mthi $1
mtlo $1
mtlo $1
TAG232:
lw $2, 0($1)
mflo $2
multu $2, $2
srl $4, $1, 14
TAG233:
sh $4, 0($4)
bne $4, $4, TAG234
lui $1, 12
slti $1, $4, 8
TAG234:
addiu $4, $1, 7
lb $1, 0($1)
mtlo $1
mtlo $1
TAG235:
mthi $1
lui $4, 1
multu $1, $1
lui $1, 14
TAG236:
mtlo $1
mtlo $1
mtlo $1
lui $2, 5
TAG237:
sra $2, $2, 10
sltu $3, $2, $2
mflo $3
lbu $3, -320($2)
TAG238:
lui $3, 6
bgez $3, TAG239
mfhi $2
mthi $2
TAG239:
bgtz $2, TAG240
mtlo $2
multu $2, $2
mfhi $2
TAG240:
lui $1, 9
addu $1, $2, $1
sll $0, $0, 0
srlv $2, $2, $2
TAG241:
lui $1, 0
sh $2, 0($2)
addu $1, $1, $1
addi $2, $2, 15
TAG242:
lui $4, 14
divu $4, $2
bne $2, $4, TAG243
addiu $3, $2, 8
TAG243:
mult $3, $3
mult $3, $3
sb $3, 0($3)
bgtz $3, TAG244
TAG244:
multu $3, $3
mthi $3
or $3, $3, $3
subu $3, $3, $3
TAG245:
lui $1, 15
addiu $4, $1, 0
mthi $3
mtlo $4
TAG246:
blez $4, TAG247
mult $4, $4
bltz $4, TAG247
sll $0, $0, 0
TAG247:
mflo $1
lui $3, 1
sw $1, 0($1)
mult $3, $1
TAG248:
lui $4, 11
mflo $2
lw $2, 0($2)
bne $2, $2, TAG249
TAG249:
ori $1, $2, 14
bltz $1, TAG250
lh $2, 0($1)
mthi $2
TAG250:
mult $2, $2
mflo $1
sllv $2, $2, $1
lbu $3, 0($2)
TAG251:
lbu $4, 0($3)
beq $3, $3, TAG252
mflo $1
mtlo $4
TAG252:
mflo $2
mflo $1
lui $3, 6
bne $2, $1, TAG253
TAG253:
mthi $3
beq $3, $3, TAG254
mflo $3
multu $3, $3
TAG254:
mflo $2
beq $3, $2, TAG255
addiu $3, $2, 12
mtlo $3
TAG255:
lhu $3, 0($3)
blez $3, TAG256
lui $4, 15
beq $4, $3, TAG256
TAG256:
sll $3, $4, 8
lui $3, 1
sll $0, $0, 0
bne $3, $4, TAG257
TAG257:
mult $4, $4
sll $0, $0, 0
lw $2, 0($2)
lui $2, 6
TAG258:
nor $1, $2, $2
mthi $1
mthi $1
addiu $1, $2, 6
TAG259:
nor $1, $1, $1
and $3, $1, $1
sll $0, $0, 0
mfhi $1
TAG260:
beq $1, $1, TAG261
mtlo $1
mflo $1
multu $1, $1
TAG261:
multu $1, $1
lui $2, 7
bltz $1, TAG262
sll $0, $0, 0
TAG262:
div $3, $3
sll $0, $0, 0
bne $3, $3, TAG263
xor $2, $3, $1
TAG263:
lbu $2, 0($2)
bltz $2, TAG264
sb $2, 0($2)
mult $2, $2
TAG264:
bne $2, $2, TAG265
lui $3, 9
and $3, $2, $3
bne $3, $3, TAG265
TAG265:
multu $3, $3
blez $3, TAG266
sb $3, 0($3)
bgez $3, TAG266
TAG266:
mfhi $4
lui $2, 3
mthi $2
mthi $4
TAG267:
sll $0, $0, 0
multu $1, $1
mflo $1
slti $2, $1, 9
TAG268:
bgez $2, TAG269
mthi $2
sb $2, 0($2)
mflo $4
TAG269:
mflo $1
lui $4, 0
sll $0, $0, 0
lui $2, 4
TAG270:
mthi $2
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG271:
mfhi $3
beq $3, $1, TAG272
andi $3, $1, 11
divu $3, $3
TAG272:
sb $3, 0($3)
mthi $3
mfhi $1
lb $1, 0($1)
TAG273:
lui $3, 11
blez $3, TAG274
mthi $3
lui $3, 0
TAG274:
lui $3, 2
bgez $3, TAG275
mfhi $2
lui $3, 7
TAG275:
multu $3, $3
lui $3, 4
and $4, $3, $3
ori $3, $3, 2
TAG276:
divu $3, $3
div $3, $3
nor $1, $3, $3
mfhi $4
TAG277:
bne $4, $4, TAG278
xor $3, $4, $4
bne $3, $3, TAG278
lbu $2, 0($4)
TAG278:
sw $2, 0($2)
xor $2, $2, $2
srl $2, $2, 13
bgtz $2, TAG279
TAG279:
mfhi $3
beq $2, $2, TAG280
mflo $4
mfhi $2
TAG280:
sw $2, 0($2)
bgtz $2, TAG281
mthi $2
mflo $1
TAG281:
multu $1, $1
mult $1, $1
bgez $1, TAG282
lui $1, 11
TAG282:
lui $2, 10
sll $0, $0, 0
lui $1, 8
beq $1, $1, TAG283
TAG283:
mfhi $3
lui $4, 7
srl $2, $3, 7
slt $3, $4, $2
TAG284:
mthi $3
mfhi $1
lb $1, 0($3)
lb $2, 0($3)
TAG285:
lw $1, 0($2)
mflo $2
divu $2, $2
sb $2, 0($2)
TAG286:
multu $2, $2
xori $4, $2, 10
multu $2, $2
sb $2, 0($2)
TAG287:
sb $4, 0($4)
beq $4, $4, TAG288
mflo $3
srl $3, $4, 11
TAG288:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
sltu $2, $3, $3
TAG289:
mthi $2
mfhi $1
lui $1, 1
mfhi $4
TAG290:
mflo $3
mflo $4
sb $4, 0($4)
sb $3, 0($3)
TAG291:
mthi $4
mfhi $1
beq $4, $4, TAG292
multu $4, $1
TAG292:
lui $4, 13
sllv $1, $1, $4
bgez $1, TAG293
mfhi $2
TAG293:
bltz $2, TAG294
mthi $2
beq $2, $2, TAG294
lb $3, 0($2)
TAG294:
blez $3, TAG295
multu $3, $3
lbu $2, 0($3)
multu $2, $2
TAG295:
multu $2, $2
andi $4, $2, 4
multu $4, $2
mtlo $2
TAG296:
bne $4, $4, TAG297
mthi $4
mfhi $4
bne $4, $4, TAG297
TAG297:
sltu $3, $4, $4
sw $3, 0($3)
mtlo $3
bltz $3, TAG298
TAG298:
slt $2, $3, $3
sh $3, 0($2)
xor $3, $3, $2
mthi $3
TAG299:
xor $1, $3, $3
mult $1, $1
subu $2, $1, $1
beq $2, $1, TAG300
TAG300:
lui $4, 2
mflo $1
mtlo $4
beq $1, $2, TAG301
TAG301:
mthi $1
sra $2, $1, 5
sh $2, 0($2)
mfhi $3
TAG302:
addiu $4, $3, 4
subu $4, $4, $4
srlv $4, $4, $4
sh $4, 0($4)
TAG303:
or $3, $4, $4
blez $3, TAG304
lui $2, 4
divu $3, $4
TAG304:
nor $1, $2, $2
mfhi $2
mfhi $3
mflo $2
TAG305:
lui $3, 11
sll $0, $0, 0
bne $2, $3, TAG306
sll $0, $0, 0
TAG306:
mthi $4
multu $4, $4
multu $4, $4
mtlo $4
TAG307:
mfhi $3
mfhi $1
mfhi $1
lui $4, 3
TAG308:
srl $1, $4, 7
lb $4, -1536($1)
lb $4, 0($4)
lb $2, 0($4)
TAG309:
sh $2, 0($2)
bgtz $2, TAG310
sub $1, $2, $2
mult $1, $1
TAG310:
mtlo $1
sh $1, 0($1)
lui $1, 5
sll $0, $0, 0
TAG311:
sll $0, $0, 0
bne $1, $1, TAG312
sll $0, $0, 0
lui $3, 15
TAG312:
and $4, $3, $3
sll $0, $0, 0
mfhi $2
srav $4, $4, $4
TAG313:
xor $2, $4, $4
sll $0, $0, 0
bne $4, $2, TAG314
sll $0, $0, 0
TAG314:
lui $2, 13
bgtz $2, TAG315
subu $2, $2, $2
mflo $2
TAG315:
mfhi $2
lui $4, 0
multu $2, $4
bgez $2, TAG316
TAG316:
mfhi $4
mult $4, $4
mthi $4
sltiu $3, $4, 8
TAG317:
and $2, $3, $3
divu $2, $3
slti $1, $2, 13
mflo $4
TAG318:
lbu $3, 0($4)
bne $4, $4, TAG319
srav $1, $4, $3
mfhi $2
TAG319:
mthi $2
mflo $3
mult $2, $3
mult $3, $2
TAG320:
sb $3, 0($3)
mthi $3
mfhi $4
lui $2, 14
TAG321:
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
bne $2, $2, TAG322
TAG322:
sb $4, 0($4)
lb $2, 0($4)
mult $2, $2
lbu $3, 0($4)
TAG323:
mthi $3
srl $4, $3, 11
andi $4, $4, 9
sw $4, 0($4)
TAG324:
bltz $4, TAG325
sh $4, 0($4)
lui $3, 15
sll $3, $3, 12
TAG325:
srl $4, $3, 5
bne $3, $4, TAG326
multu $4, $3
mflo $3
TAG326:
multu $3, $3
bne $3, $3, TAG327
mflo $3
and $4, $3, $3
TAG327:
mfhi $1
bne $1, $4, TAG328
mtlo $1
nor $4, $4, $1
TAG328:
lhu $3, 0($4)
mthi $4
mflo $1
sltu $2, $4, $3
TAG329:
lui $4, 5
lh $2, 0($2)
beq $2, $2, TAG330
lui $1, 9
TAG330:
sll $0, $0, 0
lui $2, 10
sltiu $3, $1, 3
andi $1, $3, 10
TAG331:
bne $1, $1, TAG332
lb $2, 0($1)
sll $1, $2, 12
lui $3, 12
TAG332:
beq $3, $3, TAG333
mthi $3
mflo $3
bne $3, $3, TAG333
TAG333:
mult $3, $3
bltz $3, TAG334
mflo $3
bgtz $3, TAG334
TAG334:
lhu $4, 0($3)
or $3, $3, $3
or $4, $4, $3
bne $3, $3, TAG335
TAG335:
sb $4, 0($4)
bltz $4, TAG336
lui $2, 10
srav $3, $4, $2
TAG336:
beq $3, $3, TAG337
lui $4, 12
mtlo $4
bne $3, $3, TAG337
TAG337:
mthi $4
and $3, $4, $4
mflo $4
sw $4, 0($4)
TAG338:
srlv $1, $4, $4
bgez $4, TAG339
sb $1, 0($1)
lui $3, 6
TAG339:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG340:
mthi $3
nor $2, $3, $3
sll $0, $0, 0
sub $4, $3, $1
TAG341:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
lui $3, 0
TAG342:
sltiu $1, $3, 5
bne $1, $1, TAG343
addu $2, $1, $3
subu $2, $2, $1
TAG343:
lbu $1, 0($2)
sh $1, 0($1)
bne $2, $1, TAG344
lui $1, 12
TAG344:
lui $1, 6
bgtz $1, TAG345
mthi $1
lui $4, 0
TAG345:
srlv $3, $4, $4
divu $3, $3
sll $2, $3, 12
ori $4, $2, 14
TAG346:
sll $0, $0, 0
blez $4, TAG347
sll $0, $0, 0
lui $4, 11
TAG347:
mflo $2
lbu $4, 0($2)
mult $2, $4
beq $2, $4, TAG348
TAG348:
xor $1, $4, $4
srav $2, $1, $4
multu $4, $1
lui $2, 7
TAG349:
bltz $2, TAG350
addu $3, $2, $2
sllv $2, $2, $3
and $3, $3, $2
TAG350:
bltz $3, TAG351
div $3, $3
mfhi $1
sll $0, $0, 0
TAG351:
nor $2, $1, $1
mfhi $2
add $4, $1, $2
mflo $4
TAG352:
mtlo $4
lui $2, 13
sll $0, $0, 0
sb $2, 0($4)
TAG353:
mfhi $3
mtlo $3
beq $3, $3, TAG354
mfhi $1
TAG354:
lh $1, 0($1)
lui $3, 13
sll $4, $1, 11
or $1, $1, $1
TAG355:
sll $4, $1, 1
lb $1, 0($4)
bne $4, $1, TAG356
lh $3, 0($4)
TAG356:
mflo $4
mfhi $1
sb $1, 0($4)
mthi $3
TAG357:
bne $1, $1, TAG358
sb $1, 0($1)
bltz $1, TAG358
sw $1, 0($1)
TAG358:
mult $1, $1
beq $1, $1, TAG359
sh $1, 0($1)
blez $1, TAG359
TAG359:
mfhi $1
lh $2, 0($1)
addiu $2, $1, 10
bltz $2, TAG360
TAG360:
lui $3, 9
sltu $4, $3, $3
sh $3, 0($2)
lui $1, 1
TAG361:
lui $4, 14
bltz $4, TAG362
sll $0, $0, 0
srl $1, $4, 14
TAG362:
mflo $2
blez $2, TAG363
mthi $1
lui $4, 10
TAG363:
mthi $4
mthi $4
addiu $2, $4, 2
sll $0, $0, 0
TAG364:
sll $0, $0, 0
bltz $2, TAG365
mflo $2
sll $2, $2, 12
TAG365:
lui $3, 4
mflo $4
beq $2, $4, TAG366
andi $1, $4, 7
TAG366:
mthi $1
bgez $1, TAG367
lbu $4, 0($1)
mflo $2
TAG367:
mfhi $4
mtlo $2
slt $2, $2, $2
sw $2, 0($4)
TAG368:
bne $2, $2, TAG369
lui $3, 8
sll $0, $0, 0
divu $3, $3
TAG369:
ori $1, $3, 9
beq $1, $3, TAG370
lui $2, 4
and $1, $3, $3
TAG370:
blez $1, TAG371
and $1, $1, $1
sll $0, $0, 0
blez $1, TAG371
TAG371:
lui $4, 6
multu $1, $1
sltu $2, $1, $4
xor $4, $1, $4
TAG372:
mthi $4
divu $4, $4
addiu $2, $4, 7
sll $0, $0, 0
TAG373:
sll $0, $0, 0
divu $3, $3
addu $4, $3, $3
blez $4, TAG374
TAG374:
sll $0, $0, 0
mflo $2
lui $2, 4
mthi $2
TAG375:
xor $1, $2, $2
mthi $1
mult $2, $2
bgtz $1, TAG376
TAG376:
lui $1, 14
sll $0, $0, 0
div $1, $1
beq $1, $1, TAG377
TAG377:
mfhi $3
bne $3, $3, TAG378
multu $3, $2
mflo $2
TAG378:
lui $3, 9
ori $2, $3, 2
bne $2, $2, TAG379
mtlo $2
TAG379:
sll $0, $0, 0
bltz $2, TAG380
sll $0, $0, 0
srav $3, $2, $2
TAG380:
lui $4, 6
xori $3, $3, 2
slt $3, $4, $3
blez $3, TAG381
TAG381:
mthi $3
lui $4, 14
mflo $1
andi $1, $3, 1
TAG382:
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
subu $3, $1, $1
TAG383:
blez $3, TAG384
lui $4, 1
mtlo $3
lb $2, 0($4)
TAG384:
subu $4, $2, $2
mfhi $2
bne $2, $4, TAG385
lui $3, 3
TAG385:
mtlo $3
or $3, $3, $3
mtlo $3
bltz $3, TAG386
TAG386:
mthi $3
slti $3, $3, 10
mtlo $3
blez $3, TAG387
TAG387:
lhu $4, 0($3)
lui $3, 13
sll $0, $0, 0
mflo $2
TAG388:
bgtz $2, TAG389
lb $2, 0($2)
xor $1, $2, $2
mfhi $3
TAG389:
bgtz $3, TAG390
mthi $3
srl $1, $3, 0
sb $1, 0($3)
TAG390:
lui $4, 15
mflo $1
beq $4, $4, TAG391
sw $4, 0($1)
TAG391:
sra $2, $1, 13
lhu $3, 0($2)
mflo $4
sw $3, 0($2)
TAG392:
mtlo $4
multu $4, $4
sllv $1, $4, $4
slti $1, $4, 6
TAG393:
mflo $1
lh $1, 0($1)
bne $1, $1, TAG394
xor $2, $1, $1
TAG394:
sh $2, 0($2)
sh $2, 0($2)
mflo $1
sh $2, 0($2)
TAG395:
bgez $1, TAG396
lui $1, 1
beq $1, $1, TAG396
lb $1, 0($1)
TAG396:
bne $1, $1, TAG397
sll $0, $0, 0
subu $1, $1, $1
mtlo $1
TAG397:
mflo $2
sh $2, 0($2)
lhu $4, 0($2)
mult $1, $1
TAG398:
addiu $4, $4, 12
bgez $4, TAG399
sh $4, 0($4)
mthi $4
TAG399:
beq $4, $4, TAG400
sltiu $4, $4, 7
lui $3, 6
addi $1, $4, 8
TAG400:
and $3, $1, $1
sw $1, 0($1)
mult $1, $1
mtlo $3
TAG401:
mflo $2
bne $2, $3, TAG402
lui $3, 15
sll $0, $0, 0
TAG402:
lui $2, 4
lui $3, 14
lui $4, 10
bgez $2, TAG403
TAG403:
mfhi $1
slti $2, $1, 14
mfhi $3
mult $3, $1
TAG404:
mthi $3
bne $3, $3, TAG405
sra $4, $3, 11
bltz $4, TAG405
TAG405:
mtlo $4
mfhi $3
sh $4, 0($3)
mflo $3
TAG406:
bltz $3, TAG407
sll $1, $3, 11
sw $1, 0($3)
bne $3, $1, TAG407
TAG407:
sltu $4, $1, $1
mult $1, $1
mult $4, $4
lhu $2, 0($1)
TAG408:
mtlo $2
mult $2, $2
mtlo $2
lui $2, 8
TAG409:
bltz $2, TAG410
mult $2, $2
mflo $4
xor $2, $2, $2
TAG410:
mflo $4
bltz $2, TAG411
lb $2, 0($2)
blez $2, TAG411
TAG411:
subu $2, $2, $2
multu $2, $2
bltz $2, TAG412
mfhi $2
TAG412:
sw $2, 0($2)
sb $2, 0($2)
lbu $2, 0($2)
beq $2, $2, TAG413
TAG413:
mult $2, $2
multu $2, $2
beq $2, $2, TAG414
mthi $2
TAG414:
slt $3, $2, $2
add $2, $3, $3
sllv $1, $3, $2
xori $4, $1, 7
TAG415:
lb $1, 0($4)
sw $1, 0($1)
subu $1, $4, $4
sltiu $2, $4, 11
TAG416:
sb $2, 0($2)
srl $2, $2, 0
lui $2, 5
mflo $2
TAG417:
bne $2, $2, TAG418
mtlo $2
sh $2, 0($2)
mflo $1
TAG418:
addi $2, $1, 13
beq $1, $1, TAG419
lui $4, 6
xor $2, $2, $2
TAG419:
lui $1, 14
bne $1, $1, TAG420
mfhi $1
lui $2, 9
TAG420:
addu $3, $2, $2
lui $3, 15
bne $2, $3, TAG421
sltu $3, $3, $2
TAG421:
sh $3, 0($3)
mthi $3
bne $3, $3, TAG422
sra $2, $3, 14
TAG422:
mult $2, $2
beq $2, $2, TAG423
mfhi $1
lui $3, 7
TAG423:
mtlo $3
mfhi $3
beq $3, $3, TAG424
lui $1, 2
TAG424:
mult $1, $1
sll $0, $0, 0
lui $2, 4
bgtz $1, TAG425
TAG425:
mtlo $2
divu $2, $2
sll $0, $0, 0
mtlo $2
TAG426:
mfhi $2
mtlo $2
mtlo $2
mflo $3
TAG427:
xor $1, $3, $3
lh $1, 0($3)
slt $3, $3, $1
mtlo $1
TAG428:
beq $3, $3, TAG429
sh $3, 0($3)
mult $3, $3
sh $3, 0($3)
TAG429:
mtlo $3
add $3, $3, $3
bgez $3, TAG430
mfhi $2
TAG430:
sb $2, 0($2)
lbu $1, 0($2)
lb $4, 0($2)
bne $4, $2, TAG431
TAG431:
xori $1, $4, 11
bne $4, $1, TAG432
andi $2, $4, 8
mthi $2
TAG432:
or $3, $2, $2
multu $2, $2
beq $3, $2, TAG433
addiu $3, $2, 8
TAG433:
addiu $4, $3, 8
lui $3, 3
mthi $3
divu $4, $3
TAG434:
lui $2, 4
sll $0, $0, 0
lui $4, 7
mflo $2
TAG435:
multu $2, $2
lui $4, 4
bltz $4, TAG436
srl $2, $2, 10
TAG436:
sllv $4, $2, $2
sh $4, 0($4)
xori $1, $4, 14
mthi $1
TAG437:
divu $1, $1
mtlo $1
bgtz $1, TAG438
lui $2, 14
TAG438:
srl $4, $2, 4
sll $0, $0, 0
sll $1, $2, 9
sll $0, $0, 0
TAG439:
beq $1, $1, TAG440
mult $1, $1
lhu $1, 0($1)
mult $1, $1
TAG440:
bltz $1, TAG441
mult $1, $1
mtlo $1
div $1, $1
TAG441:
lui $3, 5
mthi $1
sll $0, $0, 0
bgtz $3, TAG442
TAG442:
addiu $1, $2, 2
sll $0, $0, 0
lui $2, 10
sra $1, $2, 3
TAG443:
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
blez $1, TAG444
TAG444:
srlv $1, $1, $1
ori $4, $1, 11
addu $2, $1, $1
multu $2, $2
TAG445:
bltz $2, TAG446
srl $4, $2, 15
bgez $4, TAG446
lui $2, 5
TAG446:
sll $0, $0, 0
subu $3, $2, $3
mflo $1
or $1, $3, $2
TAG447:
xor $2, $1, $1
srlv $3, $2, $2
lui $1, 5
mflo $3
TAG448:
sll $0, $0, 0
divu $1, $1
mflo $3
multu $1, $1
TAG449:
beq $3, $3, TAG450
mfhi $4
mflo $4
mflo $1
TAG450:
ori $1, $1, 7
addu $4, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG451:
sll $0, $0, 0
bgtz $4, TAG452
sll $0, $0, 0
beq $2, $2, TAG452
TAG452:
lui $4, 0
mthi $4
bgtz $2, TAG453
multu $4, $2
TAG453:
bne $4, $4, TAG454
sb $4, 0($4)
mult $4, $4
beq $4, $4, TAG454
TAG454:
lui $3, 2
mflo $2
mthi $3
srlv $1, $2, $4
TAG455:
mtlo $1
mtlo $1
mthi $1
lui $1, 4
TAG456:
addiu $2, $1, 7
sll $0, $0, 0
sll $0, $0, 0
lui $4, 1
TAG457:
and $4, $4, $4
divu $4, $4
lui $1, 9
multu $4, $1
TAG458:
srlv $1, $1, $1
sra $3, $1, 12
beq $1, $3, TAG459
sllv $3, $1, $3
TAG459:
mflo $3
mult $3, $3
sw $3, 0($3)
sub $1, $3, $3
TAG460:
srav $4, $1, $1
nor $3, $1, $1
bgez $1, TAG461
lbu $1, 1($3)
TAG461:
addiu $1, $1, 7
lui $4, 13
slti $1, $4, 13
mthi $1
TAG462:
beq $1, $1, TAG463
addiu $1, $1, 8
mfhi $2
sw $1, 0($1)
TAG463:
subu $2, $2, $2
multu $2, $2
mflo $4
blez $4, TAG464
TAG464:
lui $1, 5
mthi $4
mflo $4
addu $3, $1, $4
TAG465:
mfhi $3
mfhi $2
lui $4, 9
beq $3, $4, TAG466
TAG466:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG467
mthi $4
TAG467:
addiu $4, $4, 7
lui $1, 14
multu $4, $4
mtlo $4
TAG468:
bne $1, $1, TAG469
subu $3, $1, $1
mflo $3
bgtz $1, TAG469
TAG469:
mthi $3
xor $3, $3, $3
andi $2, $3, 1
mthi $3
TAG470:
lhu $3, 0($2)
lui $1, 5
beq $1, $3, TAG471
sltiu $2, $1, 15
TAG471:
lw $1, 0($2)
addiu $3, $1, 15
or $1, $2, $2
sb $1, 0($3)
TAG472:
mult $1, $1
lui $1, 8
bne $1, $1, TAG473
div $1, $1
TAG473:
beq $1, $1, TAG474
addiu $2, $1, 14
bgtz $1, TAG474
slt $3, $2, $1
TAG474:
bgez $3, TAG475
lui $1, 11
mult $3, $1
blez $3, TAG475
TAG475:
mflo $3
lui $3, 4
mfhi $4
sltiu $4, $3, 8
TAG476:
bne $4, $4, TAG477
lui $4, 9
lui $3, 12
lui $4, 7
TAG477:
srav $1, $4, $4
mflo $3
bgtz $3, TAG478
srl $1, $4, 6
TAG478:
lui $3, 6
mtlo $1
div $3, $1
mtlo $1
TAG479:
beq $3, $3, TAG480
subu $4, $3, $3
lw $1, 0($3)
mtlo $3
TAG480:
mtlo $1
mtlo $1
beq $1, $1, TAG481
lui $1, 2
TAG481:
mthi $1
mflo $3
beq $3, $1, TAG482
mfhi $4
TAG482:
addu $3, $4, $4
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
TAG483:
div $1, $1
divu $1, $1
mtlo $1
sll $0, $0, 0
TAG484:
lui $3, 7
bne $3, $3, TAG485
andi $3, $3, 15
sltu $1, $1, $3
TAG485:
addi $3, $1, 15
sra $4, $1, 6
sh $4, 0($4)
mult $1, $3
TAG486:
mult $4, $4
bgez $4, TAG487
srav $2, $4, $4
mtlo $4
TAG487:
lbu $1, 0($2)
slti $4, $2, 4
mfhi $2
sltiu $3, $1, 1
TAG488:
sb $3, 0($3)
sb $3, 0($3)
slti $1, $3, 2
bne $1, $1, TAG489
TAG489:
multu $1, $1
sb $1, 0($1)
ori $4, $1, 0
divu $4, $4
TAG490:
lui $2, 1
mthi $2
mflo $2
mult $4, $2
TAG491:
sb $2, 0($2)
lui $3, 1
sll $0, $0, 0
lbu $1, 0($2)
TAG492:
mfhi $2
mtlo $2
div $1, $1
slti $1, $2, 1
TAG493:
lbu $2, 0($1)
nor $2, $1, $1
bgez $1, TAG494
sh $2, 2($2)
TAG494:
bgez $2, TAG495
lb $3, 2($2)
mfhi $4
blez $3, TAG495
TAG495:
mflo $3
lui $1, 8
mult $3, $4
mthi $4
TAG496:
beq $1, $1, TAG497
lui $2, 9
mfhi $3
slti $1, $2, 9
TAG497:
sll $0, $0, 0
multu $4, $1
slti $1, $1, 5
mthi $1
TAG498:
lh $2, 0($1)
mthi $1
lui $2, 0
lui $3, 13
TAG499:
mflo $1
mult $1, $1
sll $0, $0, 0
sh $3, 0($1)
TAG500:
lui $2, 2
lhu $3, 0($1)
bgez $2, TAG501
lw $3, 0($1)
TAG501:
mtlo $3
lui $4, 10
mult $4, $4
mflo $4
TAG502:
beq $4, $4, TAG503
mflo $2
mthi $2
subu $1, $4, $2
TAG503:
sh $1, 0($1)
beq $1, $1, TAG504
sw $1, 0($1)
lui $2, 14
TAG504:
multu $2, $2
lh $3, 0($2)
bltz $2, TAG505
lui $3, 14
TAG505:
mtlo $3
beq $3, $3, TAG506
multu $3, $3
xor $1, $3, $3
TAG506:
multu $1, $1
mthi $1
lui $2, 4
ori $1, $2, 0
TAG507:
sll $0, $0, 0
srl $1, $1, 7
mtlo $1
mfhi $1
TAG508:
xori $4, $1, 14
lui $4, 8
sw $4, 0($1)
andi $3, $4, 7
TAG509:
addi $2, $3, 6
mfhi $1
bgez $3, TAG510
addu $3, $2, $3
TAG510:
sh $3, 0($3)
beq $3, $3, TAG511
lui $1, 6
beq $3, $1, TAG511
TAG511:
lui $2, 3
mtlo $2
bne $1, $2, TAG512
divu $1, $2
TAG512:
mtlo $2
lui $4, 0
bne $2, $4, TAG513
multu $4, $4
TAG513:
and $4, $4, $4
bne $4, $4, TAG514
multu $4, $4
lui $4, 6
TAG514:
mult $4, $4
sll $0, $0, 0
slt $2, $4, $4
bne $2, $2, TAG515
TAG515:
lb $3, 0($2)
ori $3, $3, 13
lb $1, 0($3)
mthi $3
TAG516:
sh $1, 0($1)
bgez $1, TAG517
mtlo $1
mflo $1
TAG517:
lhu $2, 0($1)
bltz $2, TAG518
sw $1, 0($1)
mflo $2
TAG518:
nor $2, $2, $2
bne $2, $2, TAG519
lui $2, 7
sll $0, $0, 0
TAG519:
div $2, $2
bgez $2, TAG520
mflo $3
bne $3, $3, TAG520
TAG520:
sb $3, 0($3)
sltu $3, $3, $3
mflo $4
addi $3, $3, 13
TAG521:
addu $3, $3, $3
mflo $2
mtlo $3
addiu $1, $2, 2
TAG522:
lui $1, 14
and $1, $1, $1
lui $1, 1
bgtz $1, TAG523
TAG523:
sll $0, $0, 0
mthi $2
bgtz $1, TAG524
lui $1, 9
TAG524:
bgtz $1, TAG525
lui $3, 10
mflo $2
bgtz $2, TAG525
TAG525:
lui $3, 2
and $2, $3, $2
mfhi $1
subu $4, $3, $3
TAG526:
mfhi $4
mthi $4
xori $3, $4, 6
lbu $1, 0($3)
TAG527:
lw $3, 0($1)
ori $3, $3, 7
lh $4, 0($1)
bne $3, $1, TAG528
TAG528:
sll $0, $0, 0
mtlo $4
mflo $4
and $3, $4, $4
TAG529:
sw $3, -256($3)
slti $1, $3, 15
lui $1, 13
lw $2, -256($3)
TAG530:
sh $2, -256($2)
beq $2, $2, TAG531
mtlo $2
slti $4, $2, 14
TAG531:
sll $0, $0, 0
lui $1, 7
lui $2, 15
sllv $1, $2, $2
TAG532:
sll $0, $0, 0
divu $1, $1
beq $1, $1, TAG533
mflo $1
TAG533:
lui $1, 9
bne $1, $1, TAG534
mflo $3
mthi $3
TAG534:
nor $1, $3, $3
mtlo $3
bne $3, $3, TAG535
mflo $3
TAG535:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
bgez $3, TAG536
TAG536:
lui $1, 14
beq $1, $3, TAG537
lb $4, 0($3)
lui $3, 8
TAG537:
sll $4, $3, 4
mfhi $2
mflo $2
sll $2, $4, 13
TAG538:
mult $2, $2
mflo $1
mtlo $1
mtlo $1
TAG539:
mthi $1
bne $1, $1, TAG540
lui $3, 7
mfhi $1
TAG540:
beq $1, $1, TAG541
lui $4, 12
div $1, $4
lbu $1, 0($4)
TAG541:
sw $1, 0($1)
srlv $2, $1, $1
mthi $1
sb $1, 0($1)
TAG542:
bltz $2, TAG543
srl $4, $2, 8
mfhi $1
mflo $4
TAG543:
mult $4, $4
bne $4, $4, TAG544
sh $4, 0($4)
mflo $2
TAG544:
xori $4, $2, 1
multu $2, $2
mfhi $2
mult $2, $4
TAG545:
sltu $2, $2, $2
mult $2, $2
beq $2, $2, TAG546
mult $2, $2
TAG546:
sh $2, 0($2)
lb $4, 0($2)
blez $2, TAG547
sw $4, 0($2)
TAG547:
ori $2, $4, 8
divu $4, $2
blez $2, TAG548
srl $4, $4, 8
TAG548:
bne $4, $4, TAG549
multu $4, $4
mtlo $4
nor $4, $4, $4
TAG549:
lui $2, 3
multu $2, $4
subu $2, $2, $4
xor $4, $2, $4
TAG550:
sll $0, $0, 0
mfhi $1
addu $4, $1, $4
bne $4, $4, TAG551
TAG551:
mflo $4
lui $4, 8
mfhi $1
mtlo $4
TAG552:
and $3, $1, $1
bltz $1, TAG553
mfhi $2
addiu $4, $1, 2
TAG553:
mfhi $3
slt $1, $3, $4
addu $2, $3, $3
beq $3, $1, TAG554
TAG554:
sll $0, $0, 0
bne $3, $2, TAG555
mtlo $3
lui $3, 11
TAG555:
lui $2, 12
sll $0, $0, 0
beq $2, $2, TAG556
sll $0, $0, 0
TAG556:
mthi $4
addiu $3, $4, 15
blez $4, TAG557
addu $3, $4, $3
TAG557:
mflo $2
subu $4, $2, $2
addu $3, $3, $4
bne $4, $2, TAG558
TAG558:
mflo $4
mthi $3
sll $0, $0, 0
srl $3, $4, 7
TAG559:
mthi $3
beq $3, $3, TAG560
mflo $2
mfhi $3
TAG560:
mflo $2
lh $1, -1535($3)
bgtz $3, TAG561
mult $1, $3
TAG561:
lui $2, 7
mfhi $3
beq $2, $1, TAG562
sh $2, 0($3)
TAG562:
mult $3, $3
sb $3, 0($3)
blez $3, TAG563
lui $4, 0
TAG563:
sh $4, 0($4)
beq $4, $4, TAG564
multu $4, $4
beq $4, $4, TAG564
TAG564:
sw $4, 0($4)
mflo $2
multu $4, $4
sw $4, 0($4)
TAG565:
mult $2, $2
mult $2, $2
mthi $2
bltz $2, TAG566
TAG566:
or $1, $2, $2
sltiu $3, $2, 8
bne $3, $2, TAG567
mthi $3
TAG567:
mthi $3
sb $3, 0($3)
sllv $4, $3, $3
mthi $4
TAG568:
bltz $4, TAG569
mthi $4
mtlo $4
xor $2, $4, $4
TAG569:
mthi $2
lb $1, 0($2)
lw $1, 0($2)
beq $2, $2, TAG570
TAG570:
divu $1, $1
mfhi $2
mtlo $2
lhu $3, -256($1)
TAG571:
nor $2, $3, $3
or $4, $3, $3
bltz $4, TAG572
mtlo $4
TAG572:
divu $4, $4
addiu $3, $4, 12
mtlo $4
mfhi $1
TAG573:
mult $1, $1
lui $3, 15
mflo $3
mthi $3
TAG574:
bltz $3, TAG575
mult $3, $3
srl $1, $3, 10
beq $1, $3, TAG575
TAG575:
sw $1, 0($1)
andi $3, $1, 3
mthi $1
sll $4, $3, 13
TAG576:
lui $3, 5
beq $4, $4, TAG577
multu $4, $4
sw $3, 0($4)
TAG577:
mtlo $3
mfhi $4
beq $3, $4, TAG578
sll $0, $0, 0
TAG578:
sh $4, 0($4)
mfhi $2
lui $2, 2
bgtz $2, TAG579
TAG579:
mfhi $3
bgtz $3, TAG580
lh $2, 0($3)
addu $3, $2, $2
TAG580:
xori $3, $3, 9
mtlo $3
or $3, $3, $3
mthi $3
TAG581:
lui $4, 14
mfhi $1
mult $4, $4
mtlo $4
TAG582:
beq $1, $1, TAG583
mtlo $1
addiu $4, $1, 2
mfhi $2
TAG583:
lui $2, 13
slti $1, $2, 9
mflo $3
bne $3, $2, TAG584
TAG584:
lui $4, 9
div $4, $4
mtlo $4
srl $4, $4, 15
TAG585:
mthi $4
mtlo $4
lui $2, 1
mtlo $2
TAG586:
sll $0, $0, 0
mtlo $2
mfhi $1
sll $0, $0, 0
TAG587:
mult $3, $3
sra $2, $3, 15
mult $2, $2
bgez $2, TAG588
TAG588:
or $1, $2, $2
sb $1, 0($2)
mthi $1
lui $2, 12
TAG589:
xori $3, $2, 1
lui $1, 9
mtlo $2
bgez $3, TAG590
TAG590:
sll $0, $0, 0
sll $0, $0, 0
andi $2, $3, 11
bgtz $1, TAG591
TAG591:
mthi $2
bgtz $2, TAG592
multu $2, $2
mtlo $2
TAG592:
bne $2, $2, TAG593
mfhi $1
mfhi $2
beq $2, $1, TAG593
TAG593:
sh $2, 0($2)
bgtz $2, TAG594
lui $4, 15
blez $4, TAG594
TAG594:
sltiu $3, $4, 9
srlv $4, $3, $4
slt $3, $3, $4
lui $1, 12
TAG595:
beq $1, $1, TAG596
mthi $1
lui $4, 3
bne $4, $4, TAG596
TAG596:
sh $4, 0($4)
mflo $1
sub $2, $1, $4
sllv $2, $4, $4
TAG597:
sub $2, $2, $2
mtlo $2
bgtz $2, TAG598
addiu $3, $2, 14
TAG598:
addiu $4, $3, 4
lb $3, 0($3)
xori $1, $4, 9
bne $3, $1, TAG599
TAG599:
lb $1, 0($1)
multu $1, $1
mflo $1
mtlo $1
TAG600:
beq $1, $1, TAG601
multu $1, $1
ori $3, $1, 5
lb $2, 0($3)
TAG601:
mfhi $1
lui $1, 7
mtlo $1
mtlo $2
TAG602:
multu $1, $1
andi $2, $1, 8
sll $0, $0, 0
slti $4, $1, 7
TAG603:
lw $1, 0($4)
bne $4, $4, TAG604
mtlo $4
mtlo $4
TAG604:
lui $3, 11
mfhi $1
mflo $4
addiu $1, $1, 3
TAG605:
lui $2, 4
mtlo $1
lui $2, 7
slti $2, $1, 6
TAG606:
lui $3, 8
mtlo $3
multu $2, $2
sll $0, $0, 0
TAG607:
bne $3, $3, TAG608
lui $4, 13
beq $4, $4, TAG608
sll $0, $0, 0
TAG608:
bne $4, $4, TAG609
mflo $3
lui $2, 8
mflo $3
TAG609:
blez $3, TAG610
lw $3, 0($3)
lui $4, 2
lui $4, 5
TAG610:
beq $4, $4, TAG611
lui $3, 7
sh $4, 0($4)
bgtz $3, TAG611
TAG611:
mtlo $3
lui $1, 11
sll $0, $0, 0
mtlo $3
TAG612:
lui $4, 12
lui $4, 4
sll $0, $0, 0
bgtz $4, TAG613
TAG613:
slti $2, $4, 11
bgtz $4, TAG614
mtlo $2
divu $4, $4
TAG614:
addu $4, $2, $2
mult $4, $2
bltz $4, TAG615
multu $2, $4
TAG615:
bne $4, $4, TAG616
lhu $3, 0($4)
multu $3, $3
bgtz $3, TAG616
TAG616:
multu $3, $3
lui $3, 8
sll $0, $0, 0
mult $3, $2
TAG617:
mult $2, $2
multu $2, $2
lhu $1, 0($2)
lui $2, 0
TAG618:
sb $2, 0($2)
bgez $2, TAG619
xor $3, $2, $2
lh $1, 0($2)
TAG619:
lui $3, 5
lui $1, 10
subu $3, $1, $1
lui $3, 5
TAG620:
beq $3, $3, TAG621
subu $1, $3, $3
mfhi $1
ori $4, $1, 12
TAG621:
bgez $4, TAG622
ori $4, $4, 2
blez $4, TAG622
srlv $4, $4, $4
TAG622:
mthi $4
mfhi $1
slt $3, $4, $4
bgtz $4, TAG623
TAG623:
lhu $4, 0($3)
beq $3, $4, TAG624
multu $3, $3
lbu $1, 0($4)
TAG624:
bltz $1, TAG625
lh $2, 0($1)
mfhi $1
multu $2, $1
TAG625:
mult $1, $1
lui $1, 4
divu $1, $1
bgtz $1, TAG626
TAG626:
sll $2, $1, 13
sll $0, $0, 0
addiu $3, $2, 5
sll $0, $0, 0
TAG627:
mfhi $3
addiu $1, $4, 13
lui $1, 3
sll $0, $0, 0
TAG628:
sll $0, $0, 0
lui $4, 14
sll $0, $0, 0
addiu $4, $4, 4
TAG629:
sll $0, $0, 0
beq $4, $4, TAG630
mflo $2
lui $4, 12
TAG630:
srl $3, $4, 7
sll $0, $0, 0
sb $1, -7168($3)
mtlo $1
TAG631:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG632:
bgez $4, TAG633
sll $0, $0, 0
lhu $4, 0($4)
subu $2, $4, $4
TAG633:
sb $2, 0($2)
mthi $2
sb $2, 0($2)
lui $1, 1
TAG634:
multu $1, $1
lui $3, 5
beq $3, $3, TAG635
xori $1, $3, 1
TAG635:
sra $2, $1, 1
bne $2, $1, TAG636
lui $3, 6
sh $3, 0($3)
TAG636:
addu $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG637:
mthi $2
sll $0, $0, 0
sra $1, $2, 8
mthi $1
TAG638:
div $1, $1
multu $1, $1
lui $3, 15
mflo $1
TAG639:
lui $4, 6
divu $1, $4
sltu $3, $1, $1
xor $4, $4, $3
TAG640:
addu $1, $4, $4
bne $1, $4, TAG641
lui $2, 8
mfhi $3
TAG641:
bgtz $3, TAG642
sllv $2, $3, $3
mflo $1
multu $2, $1
TAG642:
lb $4, 0($1)
mthi $1
bne $4, $4, TAG643
mfhi $4
TAG643:
mthi $4
xori $2, $4, 3
lui $4, 0
blez $4, TAG644
TAG644:
lui $2, 7
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG645:
beq $2, $2, TAG646
and $1, $2, $2
div $2, $2
lui $3, 15
TAG646:
sra $1, $3, 11
addi $2, $1, 6
lhu $4, 0($3)
mfhi $4
TAG647:
mtlo $4
lui $2, 8
mult $4, $4
sll $0, $0, 0
TAG648:
sw $3, 0($3)
lh $3, 0($3)
sb $3, 0($3)
bltz $3, TAG649
TAG649:
mult $3, $3
multu $3, $3
sw $3, 0($3)
bne $3, $3, TAG650
TAG650:
multu $3, $3
sb $3, 0($3)
sb $3, 0($3)
bgtz $3, TAG651
TAG651:
mult $3, $3
bgtz $3, TAG652
srav $3, $3, $3
mtlo $3
TAG652:
mtlo $3
lbu $3, 0($3)
xori $2, $3, 5
lw $4, 0($3)
TAG653:
srl $3, $4, 0
bgtz $4, TAG654
mfhi $2
bne $4, $2, TAG654
TAG654:
multu $2, $2
beq $2, $2, TAG655
sra $1, $2, 11
mthi $1
TAG655:
sh $1, 0($1)
sb $1, 0($1)
mthi $1
lui $3, 0
TAG656:
bne $3, $3, TAG657
lh $3, 0($3)
mflo $3
mflo $3
TAG657:
xor $3, $3, $3
bne $3, $3, TAG658
lb $3, 0($3)
mtlo $3
TAG658:
bne $3, $3, TAG659
srlv $2, $3, $3
addi $1, $3, 8
beq $3, $1, TAG659
TAG659:
lw $4, 0($1)
bgtz $1, TAG660
mfhi $1
sub $1, $1, $4
TAG660:
sw $1, 0($1)
beq $1, $1, TAG661
srav $1, $1, $1
and $1, $1, $1
TAG661:
bne $1, $1, TAG662
xori $3, $1, 9
lui $3, 9
mfhi $4
TAG662:
blez $4, TAG663
lui $3, 9
srav $2, $3, $4
slti $1, $4, 1
TAG663:
add $1, $1, $1
bgtz $1, TAG664
xori $2, $1, 9
lbu $3, 0($1)
TAG664:
blez $3, TAG665
lhu $1, 0($3)
addu $1, $3, $3
sll $3, $1, 13
TAG665:
bgez $3, TAG666
mthi $3
lhu $3, 0($3)
sb $3, 0($3)
TAG666:
ori $1, $3, 14
nor $1, $1, $1
lw $1, 15($1)
mfhi $4
TAG667:
sltiu $4, $4, 1
sll $2, $4, 5
blez $4, TAG668
lui $3, 15
TAG668:
addiu $3, $3, 13
sll $0, $0, 0
bne $3, $3, TAG669
sll $0, $0, 0
TAG669:
lui $1, 0
srl $1, $3, 5
bne $3, $1, TAG670
divu $1, $1
TAG670:
lui $1, 9
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG671:
bltz $1, TAG672
lui $3, 9
bltz $1, TAG672
addiu $2, $1, 14
TAG672:
sll $0, $0, 0
bgez $2, TAG673
divu $2, $2
beq $2, $2, TAG673
TAG673:
xor $1, $2, $2
beq $1, $1, TAG674
addiu $1, $1, 14
mfhi $1
TAG674:
addu $3, $1, $1
multu $1, $1
srav $4, $1, $1
mflo $3
TAG675:
ori $3, $3, 6
div $3, $3
mflo $2
lb $3, 0($2)
TAG676:
andi $1, $3, 2
lb $3, 0($3)
lui $4, 7
srl $4, $4, 1
TAG677:
mthi $4
bltz $4, TAG678
lui $2, 4
mtlo $2
TAG678:
mflo $4
bgtz $2, TAG679
lui $2, 12
lb $1, 0($4)
TAG679:
blez $1, TAG680
lui $4, 6
bltz $1, TAG680
lhu $2, 0($4)
TAG680:
mflo $1
mtlo $2
addiu $4, $2, 11
beq $1, $4, TAG681
TAG681:
sll $0, $0, 0
beq $4, $4, TAG682
mfhi $1
lui $2, 7
TAG682:
bgtz $2, TAG683
sll $0, $0, 0
lui $1, 2
mthi $1
TAG683:
sll $0, $0, 0
beq $1, $1, TAG684
sra $3, $1, 2
bltz $1, TAG684
TAG684:
addu $4, $3, $3
sll $0, $0, 0
divu $4, $3
mthi $3
TAG685:
nor $4, $4, $4
bltz $4, TAG686
div $4, $4
mthi $4
TAG686:
ori $4, $4, 2
lui $2, 7
addiu $3, $2, 4
and $3, $3, $3
TAG687:
sll $0, $0, 0
bne $3, $3, TAG688
ori $4, $1, 4
lui $2, 1
TAG688:
nor $4, $2, $2
divu $2, $4
sra $2, $2, 7
mfhi $2
TAG689:
mthi $2
divu $2, $2
mult $2, $2
andi $2, $2, 10
TAG690:
lui $2, 13
mthi $2
mult $2, $2
blez $2, TAG691
TAG691:
sll $0, $0, 0
mtlo $2
divu $4, $4
mult $4, $4
TAG692:
or $4, $4, $4
bgtz $4, TAG693
lui $4, 9
sll $0, $0, 0
TAG693:
sll $0, $0, 0
lui $3, 5
divu $3, $3
sll $0, $0, 0
TAG694:
divu $3, $3
addiu $4, $3, 4
blez $3, TAG695
sll $0, $0, 0
TAG695:
sll $0, $0, 0
mthi $4
addu $4, $4, $4
subu $2, $4, $4
TAG696:
mult $2, $2
mthi $2
bgtz $2, TAG697
mult $2, $2
TAG697:
sw $2, 0($2)
ori $3, $2, 8
multu $2, $2
lhu $1, 0($3)
TAG698:
mtlo $1
sw $1, -2312($1)
bne $1, $1, TAG699
srl $1, $1, 13
TAG699:
slt $4, $1, $1
lh $4, 0($1)
ori $1, $4, 12
bgtz $4, TAG700
TAG700:
sll $0, $0, 0
bgtz $1, TAG701
mflo $2
addiu $4, $1, 3
TAG701:
sb $4, -2312($4)
andi $3, $4, 4
slt $1, $3, $4
mtlo $4
TAG702:
sb $1, 0($1)
bltz $1, TAG703
divu $1, $1
sll $2, $1, 4
TAG703:
mfhi $3
lb $4, 0($3)
sb $4, 0($3)
multu $2, $3
TAG704:
lbu $3, 0($4)
slti $1, $3, 13
sw $4, 0($3)
addiu $1, $4, 7
TAG705:
lbu $1, 0($1)
sh $1, 0($1)
lh $2, 0($1)
multu $1, $1
TAG706:
blez $2, TAG707
xor $4, $2, $2
lui $1, 15
slti $1, $1, 8
TAG707:
lb $2, 0($1)
addiu $4, $2, 14
addu $4, $2, $4
mtlo $2
TAG708:
multu $4, $4
beq $4, $4, TAG709
mflo $2
mthi $2
TAG709:
sh $2, -196($2)
lbu $3, -196($2)
mtlo $3
mthi $3
TAG710:
sw $3, -196($3)
sb $3, -196($3)
nor $1, $3, $3
lui $2, 5
TAG711:
lui $3, 1
and $4, $3, $3
mthi $2
lui $1, 2
TAG712:
sltu $2, $1, $1
sw $1, 0($2)
mtlo $2
nor $4, $1, $2
TAG713:
bne $4, $4, TAG714
mthi $4
mult $4, $4
mtlo $4
TAG714:
multu $4, $4
srl $3, $4, 3
mthi $4
beq $3, $4, TAG715
TAG715:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
nor $4, $3, $3
TAG716:
sltiu $3, $4, 7
lui $4, 9
sltiu $3, $4, 4
srl $4, $3, 10
TAG717:
bltz $4, TAG718
lb $3, 0($4)
mflo $3
sll $0, $0, 0
TAG718:
mtlo $2
lui $4, 10
mtlo $2
mfhi $4
TAG719:
div $4, $4
bgez $4, TAG720
mult $4, $4
sllv $1, $4, $4
TAG720:
nor $3, $1, $1
mflo $1
mult $1, $1
sll $0, $0, 0
TAG721:
mthi $1
nor $1, $1, $1
lui $4, 4
nor $3, $1, $1
TAG722:
bgez $3, TAG723
xor $3, $3, $3
blez $3, TAG723
lui $1, 6
TAG723:
lui $1, 14
lui $4, 4
mult $1, $1
bgtz $1, TAG724
TAG724:
sll $0, $0, 0
lui $3, 5
sll $0, $0, 0
srl $2, $4, 3
TAG725:
sll $0, $0, 0
sll $0, $0, 0
nor $1, $2, $2
sra $2, $1, 13
TAG726:
sw $2, 5($2)
beq $2, $2, TAG727
lw $4, 5($2)
sltiu $4, $2, 14
TAG727:
sb $4, 5($4)
lw $1, 5($4)
lui $2, 4
mthi $2
TAG728:
mflo $1
div $1, $2
sll $0, $0, 0
sb $1, 0($1)
TAG729:
lui $3, 12
lw $1, 0($1)
div $1, $1
mthi $1
TAG730:
lui $2, 10
sll $0, $0, 0
sll $0, $0, 0
beq $2, $3, TAG731
TAG731:
mtlo $3
bne $3, $3, TAG732
sll $0, $0, 0
sll $0, $0, 0
TAG732:
mult $3, $3
sll $0, $0, 0
lui $4, 5
sltu $3, $3, $3
TAG733:
bne $3, $3, TAG734
sw $3, 0($3)
mtlo $3
beq $3, $3, TAG734
TAG734:
mfhi $2
lui $3, 5
lb $4, -144($2)
mthi $3
TAG735:
sw $4, 0($4)
or $4, $4, $4
sltu $4, $4, $4
mflo $2
TAG736:
slti $3, $2, 14
lbu $2, 0($3)
sb $2, 0($2)
mtlo $2
TAG737:
lui $4, 4
bgez $4, TAG738
mthi $2
sh $4, 0($2)
TAG738:
mfhi $2
mfhi $1
lb $1, 0($2)
bne $2, $1, TAG739
TAG739:
mflo $1
lui $1, 3
beq $1, $1, TAG740
mthi $1
TAG740:
lui $4, 4
beq $1, $4, TAG741
sll $0, $0, 0
sll $0, $0, 0
TAG741:
multu $2, $2
bne $2, $2, TAG742
andi $3, $2, 14
lhu $2, 0($2)
TAG742:
mflo $1
lui $2, 3
srav $1, $2, $1
mult $2, $2
TAG743:
bne $1, $1, TAG744
sll $4, $1, 8
subu $1, $1, $4
bgtz $1, TAG744
TAG744:
lui $2, 10
bne $1, $2, TAG745
mfhi $4
mflo $4
TAG745:
beq $4, $4, TAG746
andi $1, $4, 1
srl $3, $1, 3
bne $3, $4, TAG746
TAG746:
lw $4, 0($3)
bgez $4, TAG747
mult $4, $4
bgtz $3, TAG747
TAG747:
lui $1, 10
sltiu $1, $4, 6
lui $2, 2
bgtz $4, TAG748
TAG748:
sll $1, $2, 12
mtlo $2
mult $1, $2
bne $2, $2, TAG749
TAG749:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
mflo $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop