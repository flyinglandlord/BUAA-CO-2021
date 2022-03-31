ori $1, $0, 3
ori $2, $0, 2
ori $3, $0, 4
ori $4, $0, 0
sw $2, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $2, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $3, 124($0)
mfhi $4
lbu $4, 0($2)
lh $1, 0($2)
lbu $4, 0($2)
TAG1:
mthi $4
mthi $4
slt $1, $4, $4
blez $4, TAG2
TAG2:
mflo $2
mfhi $4
sltu $4, $4, $4
ori $2, $4, 3
TAG3:
mthi $2
sb $2, 0($2)
lui $4, 5
bne $4, $2, TAG4
TAG4:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
mult $4, $3
TAG5:
bgez $4, TAG6
mfhi $2
lh $2, 0($4)
mfhi $3
TAG6:
mfhi $4
addu $1, $4, $3
sll $1, $4, 4
mult $1, $3
TAG7:
bgtz $1, TAG8
xori $2, $1, 8
bltz $2, TAG8
mfhi $4
TAG8:
mthi $4
and $3, $4, $4
lhu $4, 0($3)
beq $4, $3, TAG9
TAG9:
sh $4, 0($4)
lbu $3, 0($4)
lh $2, 0($4)
divu $4, $4
TAG10:
srl $2, $2, 9
mult $2, $2
multu $2, $2
sw $2, 0($2)
TAG11:
lui $4, 3
bgtz $4, TAG12
multu $2, $4
mtlo $4
TAG12:
sll $0, $0, 0
mfhi $2
lw $1, 0($2)
bne $2, $2, TAG13
TAG13:
mult $1, $1
mflo $1
lbu $1, 0($1)
bne $1, $1, TAG14
TAG14:
lbu $3, 0($1)
lui $2, 13
bne $1, $3, TAG15
mult $1, $1
TAG15:
addiu $3, $2, 15
sll $0, $0, 0
mtlo $3
bgtz $3, TAG16
TAG16:
slt $4, $3, $3
sll $0, $0, 0
bltz $4, TAG17
mfhi $1
TAG17:
sb $1, 0($1)
add $1, $1, $1
beq $1, $1, TAG18
mfhi $2
TAG18:
mfhi $1
addu $2, $2, $2
beq $2, $2, TAG19
mtlo $1
TAG19:
bne $2, $2, TAG20
lui $3, 8
mfhi $3
lb $1, 0($2)
TAG20:
lbu $3, 0($1)
mthi $3
add $2, $1, $1
xor $4, $2, $1
TAG21:
sllv $2, $4, $4
beq $2, $4, TAG22
lhu $3, 0($4)
mult $4, $3
TAG22:
mflo $2
lui $4, 15
lw $1, 0($3)
addi $4, $1, 10
TAG23:
sltu $4, $4, $4
mthi $4
multu $4, $4
beq $4, $4, TAG24
TAG24:
sh $4, 0($4)
lhu $2, 0($4)
sb $4, 0($4)
sllv $2, $2, $4
TAG25:
slti $2, $2, 4
bgtz $2, TAG26
sll $1, $2, 11
sh $2, 0($2)
TAG26:
sll $2, $1, 8
mthi $1
sllv $3, $1, $1
lui $2, 8
TAG27:
mtlo $2
blez $2, TAG28
sll $0, $0, 0
sh $2, -2048($1)
TAG28:
mtlo $1
divu $1, $1
mfhi $3
mthi $3
TAG29:
beq $3, $3, TAG30
and $2, $3, $3
bltz $3, TAG30
lhu $1, 0($2)
TAG30:
sh $1, -2048($1)
bltz $1, TAG31
mtlo $1
andi $2, $1, 5
TAG31:
sltiu $4, $2, 2
sb $2, 0($4)
slti $1, $2, 10
bgtz $1, TAG32
TAG32:
mfhi $1
mult $1, $1
multu $1, $1
beq $1, $1, TAG33
TAG33:
mflo $4
mfhi $2
bne $2, $1, TAG34
sllv $4, $4, $1
TAG34:
sw $4, 0($4)
mthi $4
bne $4, $4, TAG35
mult $4, $4
TAG35:
sw $4, 0($4)
srav $1, $4, $4
beq $1, $1, TAG36
lb $4, 0($1)
TAG36:
add $2, $4, $4
mtlo $4
mflo $3
blez $3, TAG37
TAG37:
sb $3, 0($3)
slti $1, $3, 11
bltz $3, TAG38
mtlo $1
TAG38:
mtlo $1
lui $1, 0
sh $1, 0($1)
multu $1, $1
TAG39:
bgez $1, TAG40
mult $1, $1
mtlo $1
sra $3, $1, 2
TAG40:
sh $3, 0($3)
mflo $3
mult $3, $3
bltz $3, TAG41
TAG41:
mult $3, $3
beq $3, $3, TAG42
multu $3, $3
lui $1, 1
TAG42:
lb $2, 0($1)
mtlo $1
mthi $2
srav $1, $1, $2
TAG43:
mult $1, $1
sw $1, 0($1)
lui $1, 11
mult $1, $1
TAG44:
bne $1, $1, TAG45
ori $4, $1, 11
sll $0, $0, 0
mthi $1
TAG45:
beq $4, $4, TAG46
mult $4, $4
slt $3, $4, $4
sltiu $4, $3, 5
TAG46:
lui $2, 12
mtlo $2
nor $4, $4, $2
lui $3, 14
TAG47:
sll $0, $0, 0
bgtz $3, TAG48
xori $4, $3, 9
lui $4, 7
TAG48:
slt $4, $4, $4
mfhi $1
beq $1, $4, TAG49
mtlo $4
TAG49:
beq $1, $1, TAG50
lb $4, 0($1)
lb $2, 0($4)
xori $2, $1, 2
TAG50:
srav $3, $2, $2
lui $3, 4
addiu $1, $2, 1
bne $3, $3, TAG51
TAG51:
mfhi $4
beq $4, $1, TAG52
div $1, $1
sb $1, 0($4)
TAG52:
beq $4, $4, TAG53
mflo $4
lw $3, 0($4)
sltu $3, $4, $3
TAG53:
mflo $3
lui $1, 13
and $1, $3, $3
and $4, $1, $3
TAG54:
sb $4, 0($4)
lb $2, 0($4)
and $2, $4, $2
mtlo $2
TAG55:
mthi $2
sb $2, 0($2)
sb $2, 0($2)
mfhi $2
TAG56:
lui $1, 6
bne $1, $1, TAG57
addiu $4, $2, 2
ori $3, $1, 4
TAG57:
mthi $3
sll $0, $0, 0
lui $2, 8
sll $0, $0, 0
TAG58:
sll $0, $0, 0
div $1, $3
multu $3, $3
subu $2, $1, $3
TAG59:
sll $0, $0, 0
lui $3, 7
slti $1, $3, 9
mtlo $3
TAG60:
bgez $1, TAG61
mtlo $1
sra $1, $1, 12
mflo $3
TAG61:
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG62
lui $4, 7
TAG62:
bne $4, $4, TAG63
sll $0, $0, 0
sll $1, $4, 3
lui $1, 15
TAG63:
bgez $1, TAG64
mthi $1
sw $1, 0($1)
lw $1, 0($1)
TAG64:
mflo $2
subu $3, $1, $1
lui $3, 13
nor $2, $1, $1
TAG65:
mflo $2
addi $3, $2, 15
lw $3, 0($2)
mfhi $2
TAG66:
mthi $2
addiu $2, $2, 12
bgtz $2, TAG67
lui $3, 11
TAG67:
xori $2, $3, 0
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG68
TAG68:
sll $0, $0, 0
and $4, $3, $3
mfhi $1
sll $0, $0, 0
TAG69:
mfhi $2
bne $2, $2, TAG70
srav $3, $2, $2
multu $2, $3
TAG70:
lui $2, 0
sll $0, $0, 0
sll $0, $0, 0
sra $1, $3, 5
TAG71:
mflo $2
sll $3, $2, 14
mtlo $1
lbu $1, 0($3)
TAG72:
bgtz $1, TAG73
mfhi $2
mfhi $2
slt $1, $2, $1
TAG73:
multu $1, $1
bne $1, $1, TAG74
lb $2, 0($1)
mflo $3
TAG74:
bgtz $3, TAG75
lui $3, 3
mthi $3
lui $2, 5
TAG75:
div $2, $2
sll $0, $0, 0
mtlo $2
mfhi $3
TAG76:
lui $4, 7
sll $4, $3, 10
addu $2, $3, $4
multu $2, $2
TAG77:
beq $2, $2, TAG78
sll $2, $2, 4
lui $2, 6
blez $2, TAG78
TAG78:
multu $2, $2
sw $2, 0($2)
mtlo $2
mult $2, $2
TAG79:
beq $2, $2, TAG80
lb $3, 0($2)
sub $4, $2, $3
beq $2, $3, TAG80
TAG80:
sub $1, $4, $4
bne $1, $4, TAG81
multu $4, $4
bne $1, $1, TAG81
TAG81:
lhu $4, 0($1)
multu $1, $1
mthi $4
andi $2, $4, 0
TAG82:
lhu $3, 0($2)
sw $3, 0($2)
sw $3, 0($2)
slti $3, $3, 12
TAG83:
bgez $3, TAG84
sb $3, 0($3)
lh $3, 0($3)
lb $3, 0($3)
TAG84:
sb $3, 0($3)
mfhi $1
bgez $3, TAG85
lui $3, 11
TAG85:
addiu $1, $3, 14
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG86:
slti $1, $2, 15
lui $1, 15
bne $1, $1, TAG87
mtlo $1
TAG87:
sll $0, $0, 0
subu $3, $1, $1
sra $4, $3, 9
sltu $2, $3, $1
TAG88:
and $4, $2, $2
andi $2, $2, 8
lui $2, 0
mfhi $3
TAG89:
mflo $1
mflo $1
mtlo $1
sra $3, $1, 5
TAG90:
beq $3, $3, TAG91
sw $3, -30720($3)
divu $3, $3
bne $3, $3, TAG91
TAG91:
mflo $1
xor $2, $3, $1
xor $2, $2, $3
bne $2, $2, TAG92
TAG92:
sll $0, $0, 0
mflo $3
lbu $2, 0($4)
bne $2, $4, TAG93
TAG93:
lui $2, 10
mthi $2
bltz $2, TAG94
sll $0, $0, 0
TAG94:
divu $1, $1
mflo $2
xori $4, $1, 15
sltiu $1, $1, 11
TAG95:
and $3, $1, $1
sra $1, $1, 4
sw $3, 0($1)
mflo $3
TAG96:
multu $3, $3
mtlo $3
sltiu $2, $3, 8
bne $3, $3, TAG97
TAG97:
divu $2, $2
sb $2, 0($2)
sra $4, $2, 2
addi $4, $4, 9
TAG98:
bne $4, $4, TAG99
divu $4, $4
mflo $2
mthi $2
TAG99:
sltu $2, $2, $2
lbu $3, 0($2)
mult $2, $2
mult $2, $2
TAG100:
multu $3, $3
lui $3, 13
divu $3, $3
bltz $3, TAG101
TAG101:
sll $0, $0, 0
ori $3, $3, 0
subu $1, $1, $3
bgez $1, TAG102
TAG102:
lui $4, 11
bgez $1, TAG103
lui $4, 14
sll $0, $0, 0
TAG103:
sll $0, $0, 0
bne $1, $1, TAG104
sll $0, $0, 0
sll $0, $0, 0
TAG104:
bgtz $1, TAG105
lui $3, 10
lui $1, 13
sll $0, $0, 0
TAG105:
addu $1, $4, $4
sll $0, $0, 0
sll $2, $1, 3
sll $0, $0, 0
TAG106:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 0
mfhi $4
TAG107:
srav $3, $4, $4
mult $3, $3
sub $3, $3, $4
mflo $4
TAG108:
bne $4, $4, TAG109
subu $3, $4, $4
slt $2, $4, $4
lw $1, 0($2)
TAG109:
mtlo $1
lui $1, 13
lui $1, 10
addiu $3, $1, 1
TAG110:
bgtz $3, TAG111
mflo $1
mtlo $1
mthi $3
TAG111:
sh $1, -256($1)
bgtz $1, TAG112
addu $4, $1, $1
lui $1, 11
TAG112:
bgtz $1, TAG113
sb $1, -256($1)
beq $1, $1, TAG113
and $2, $1, $1
TAG113:
bgez $2, TAG114
lb $2, 0($2)
ori $2, $2, 0
sh $2, 0($2)
TAG114:
blez $2, TAG115
lbu $2, 0($2)
blez $2, TAG115
lui $1, 9
TAG115:
bgez $1, TAG116
andi $4, $1, 7
mult $1, $1
and $3, $1, $4
TAG116:
sll $0, $0, 0
sll $0, $0, 0
bgez $1, TAG117
lui $2, 14
TAG117:
srl $3, $2, 10
mfhi $3
beq $2, $2, TAG118
mthi $2
TAG118:
bgtz $3, TAG119
addiu $3, $3, 11
bltz $3, TAG119
slt $2, $3, $3
TAG119:
mflo $2
mthi $2
beq $2, $2, TAG120
mtlo $2
TAG120:
sh $2, -256($2)
lh $1, -256($2)
mtlo $1
bne $1, $1, TAG121
TAG121:
multu $1, $1
bgtz $1, TAG122
mflo $1
mthi $1
TAG122:
xor $2, $1, $1
mflo $3
sll $0, $0, 0
mult $1, $2
TAG123:
bgtz $2, TAG124
mfhi $3
mtlo $2
mult $3, $2
TAG124:
mflo $1
mfhi $2
mtlo $2
sub $2, $2, $2
TAG125:
multu $2, $2
lh $2, 0($2)
addiu $4, $2, 11
srav $1, $4, $2
TAG126:
div $1, $1
subu $1, $1, $1
mtlo $1
mult $1, $1
TAG127:
mult $1, $1
mfhi $4
sw $1, 0($4)
mtlo $4
TAG128:
bltz $4, TAG129
mthi $4
sb $4, 0($4)
bgtz $4, TAG129
TAG129:
mult $4, $4
xori $2, $4, 12
multu $2, $4
xor $2, $4, $4
TAG130:
addiu $2, $2, 4
blez $2, TAG131
subu $3, $2, $2
mtlo $3
TAG131:
lui $1, 12
sw $1, 0($3)
xori $2, $3, 7
mfhi $2
TAG132:
lbu $4, 0($2)
mtlo $4
lui $1, 11
sll $0, $0, 0
TAG133:
bltz $1, TAG134
sll $0, $0, 0
beq $2, $2, TAG134
lui $4, 12
TAG134:
lui $3, 6
sll $0, $0, 0
bgtz $3, TAG135
sll $4, $4, 6
TAG135:
lui $1, 3
sll $0, $0, 0
srl $3, $4, 8
bltz $4, TAG136
TAG136:
mtlo $3
sll $0, $0, 0
mflo $2
beq $3, $3, TAG137
TAG137:
addiu $1, $2, 2
blez $2, TAG138
mthi $2
sll $0, $0, 0
TAG138:
subu $3, $2, $2
sh $3, 0($3)
sw $2, 0($3)
sll $0, $0, 0
TAG139:
lb $4, 0($3)
mfhi $3
mfhi $3
lui $3, 15
TAG140:
sll $0, $0, 0
sll $0, $0, 0
srl $1, $4, 3
multu $1, $1
TAG141:
mfhi $3
mult $3, $1
lui $2, 13
lh $3, 0($3)
TAG142:
lw $4, 0($3)
multu $3, $4
sb $3, 0($3)
lw $2, 0($3)
TAG143:
lui $3, 2
sll $0, $0, 0
lui $3, 0
mtlo $3
TAG144:
bne $3, $3, TAG145
lui $3, 13
mfhi $1
sub $2, $3, $1
TAG145:
mtlo $2
lui $2, 6
lui $1, 11
andi $3, $1, 7
TAG146:
slti $4, $3, 1
addiu $3, $3, 9
mthi $3
sb $3, 0($3)
TAG147:
sb $3, 0($3)
lui $1, 12
mfhi $3
mtlo $1
TAG148:
mult $3, $3
divu $3, $3
srlv $2, $3, $3
divu $2, $3
TAG149:
xori $3, $2, 5
sll $1, $3, 15
bne $2, $3, TAG150
multu $1, $1
TAG150:
mthi $1
lui $1, 9
lui $2, 10
ori $3, $1, 3
TAG151:
multu $3, $3
bgez $3, TAG152
multu $3, $3
lw $4, 0($3)
TAG152:
divu $4, $4
srl $1, $4, 1
addiu $2, $4, 3
and $2, $1, $1
TAG153:
bne $2, $2, TAG154
sb $2, 0($2)
sll $3, $2, 15
lb $1, 0($3)
TAG154:
sw $1, 0($1)
sw $1, 0($1)
slt $1, $1, $1
or $1, $1, $1
TAG155:
bgez $1, TAG156
mflo $2
bgez $1, TAG156
subu $1, $2, $1
TAG156:
beq $1, $1, TAG157
mflo $2
mthi $2
divu $2, $2
TAG157:
lui $4, 11
bgtz $4, TAG158
lui $1, 11
bgtz $2, TAG158
TAG158:
mtlo $1
beq $1, $1, TAG159
ori $2, $1, 9
lhu $4, 0($1)
TAG159:
blez $4, TAG160
multu $4, $4
lui $1, 15
sll $0, $0, 0
TAG160:
lui $3, 12
lui $3, 6
addu $4, $3, $3
mfhi $1
TAG161:
mtlo $1
lui $2, 14
sll $0, $0, 0
sb $1, 0($1)
TAG162:
divu $2, $2
subu $4, $2, $2
divu $2, $2
bgez $2, TAG163
TAG163:
sllv $4, $4, $4
lui $2, 4
lui $3, 10
bgez $3, TAG164
TAG164:
addiu $2, $3, 14
subu $4, $2, $2
mflo $2
lui $2, 10
TAG165:
sll $0, $0, 0
blez $2, TAG166
lui $1, 0
mthi $1
TAG166:
multu $1, $1
mtlo $1
bne $1, $1, TAG167
sh $1, 0($1)
TAG167:
lbu $1, 0($1)
lui $3, 0
bltz $1, TAG168
sh $3, 0($1)
TAG168:
bgtz $3, TAG169
slt $3, $3, $3
mflo $4
bltz $3, TAG169
TAG169:
sltu $3, $4, $4
addi $1, $3, 13
lui $1, 12
xor $4, $3, $1
TAG170:
sll $0, $0, 0
blez $3, TAG171
lw $4, 0($3)
sltiu $3, $3, 5
TAG171:
srl $4, $3, 9
lb $4, 0($3)
mthi $4
sw $4, 0($4)
TAG172:
mfhi $2
mult $4, $4
lw $4, 0($4)
lui $1, 15
TAG173:
srl $3, $1, 1
lui $3, 3
multu $1, $3
lui $3, 6
TAG174:
bne $3, $3, TAG175
sll $0, $0, 0
multu $4, $4
lui $4, 0
TAG175:
sw $4, 0($4)
lh $4, 0($4)
beq $4, $4, TAG176
mfhi $1
TAG176:
lbu $3, 0($1)
sllv $3, $3, $3
addu $1, $3, $3
mfhi $1
TAG177:
mflo $3
lui $3, 10
mthi $1
sll $0, $0, 0
TAG178:
sw $4, 0($4)
mthi $4
addu $4, $4, $4
bne $4, $4, TAG179
TAG179:
lui $2, 15
mult $4, $4
mtlo $4
nor $3, $4, $2
TAG180:
sll $0, $0, 0
srav $3, $3, $3
and $4, $3, $3
bne $3, $3, TAG181
TAG181:
mthi $4
sw $4, 1($4)
mthi $4
addu $1, $4, $4
TAG182:
sb $1, 2($1)
mthi $1
beq $1, $1, TAG183
lui $1, 3
TAG183:
lui $1, 0
sw $1, 0($1)
mflo $4
multu $1, $4
TAG184:
mfhi $3
lhu $2, 0($4)
sb $4, 0($4)
sllv $3, $2, $2
TAG185:
and $3, $3, $3
bne $3, $3, TAG186
addiu $3, $3, 7
mtlo $3
TAG186:
nor $2, $3, $3
slt $3, $3, $3
mult $3, $3
lb $2, 8($2)
TAG187:
lw $3, 0($2)
bltz $3, TAG188
mfhi $3
ori $1, $2, 3
TAG188:
mflo $4
mtlo $4
multu $1, $4
srlv $3, $4, $1
TAG189:
bne $3, $3, TAG190
sltu $1, $3, $3
mult $3, $1
mult $1, $1
TAG190:
multu $1, $1
lhu $1, 0($1)
sh $1, 0($1)
and $3, $1, $1
TAG191:
sh $3, 0($3)
bne $3, $3, TAG192
sb $3, 0($3)
mfhi $4
TAG192:
sw $4, 0($4)
mflo $3
lbu $3, 0($3)
addi $4, $3, 14
TAG193:
lhu $4, 0($4)
sb $4, 0($4)
bgtz $4, TAG194
subu $2, $4, $4
TAG194:
lh $4, 0($2)
lui $3, 9
mtlo $4
lui $3, 7
TAG195:
mtlo $3
mtlo $3
nor $1, $3, $3
mflo $2
TAG196:
lui $3, 10
blez $3, TAG197
sll $0, $0, 0
beq $3, $3, TAG197
TAG197:
multu $3, $3
mult $3, $3
lui $4, 10
bne $3, $3, TAG198
TAG198:
mthi $4
sll $3, $4, 10
sll $0, $0, 0
bgtz $3, TAG199
TAG199:
multu $1, $1
sll $0, $0, 0
mflo $2
mthi $1
TAG200:
sll $0, $0, 0
bne $2, $2, TAG201
andi $3, $2, 13
mtlo $3
TAG201:
bgez $3, TAG202
srlv $3, $3, $3
lb $2, 0($3)
sh $3, 0($3)
TAG202:
blez $2, TAG203
mflo $1
lui $1, 15
sll $0, $0, 0
TAG203:
mthi $1
ori $4, $1, 1
subu $3, $1, $1
srl $1, $1, 9
TAG204:
ori $2, $1, 13
div $1, $2
beq $1, $2, TAG205
mflo $3
TAG205:
mfhi $2
mthi $2
lui $2, 7
sltiu $1, $2, 15
TAG206:
lui $4, 9
divu $4, $4
srlv $2, $1, $4
mult $2, $1
TAG207:
mfhi $3
sb $2, 0($2)
mthi $3
subu $3, $2, $3
TAG208:
mtlo $3
bgtz $3, TAG209
lb $1, 0($3)
mflo $2
TAG209:
srav $1, $2, $2
addiu $3, $1, 6
mthi $2
mtlo $1
TAG210:
srav $3, $3, $3
mult $3, $3
mthi $3
lui $3, 6
TAG211:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
mfhi $1
TAG212:
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $1, 15
mtlo $1
TAG213:
lui $1, 15
mfhi $3
mflo $2
beq $2, $2, TAG214
TAG214:
lui $2, 15
blez $2, TAG215
divu $2, $2
sll $0, $0, 0
TAG215:
srav $1, $2, $2
bgez $1, TAG216
mflo $3
andi $2, $3, 8
TAG216:
ori $1, $2, 2
blez $2, TAG217
mtlo $1
mflo $1
TAG217:
bltz $1, TAG218
sll $0, $0, 0
multu $1, $1
and $4, $1, $1
TAG218:
mtlo $4
bgtz $4, TAG219
div $4, $4
sw $4, 0($4)
TAG219:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
mflo $3
TAG220:
or $4, $3, $3
lbu $3, 0($4)
mflo $4
sb $4, 0($4)
TAG221:
blez $4, TAG222
multu $4, $4
mflo $3
mfhi $3
TAG222:
multu $3, $3
mthi $3
sllv $2, $3, $3
beq $3, $3, TAG223
TAG223:
mtlo $2
sub $1, $2, $2
sllv $3, $2, $2
mfhi $4
TAG224:
mthi $4
lui $4, 0
bgtz $4, TAG225
multu $4, $4
TAG225:
lui $2, 10
sll $0, $0, 0
bne $2, $2, TAG226
lui $4, 1
TAG226:
beq $4, $4, TAG227
mthi $4
lbu $2, 0($4)
beq $2, $4, TAG227
TAG227:
sll $0, $0, 0
mtlo $2
mult $2, $2
mtlo $2
TAG228:
mflo $3
sll $0, $0, 0
lui $3, 15
sll $0, $0, 0
TAG229:
addiu $1, $2, 13
lui $2, 15
lui $3, 13
sll $0, $0, 0
TAG230:
bne $3, $3, TAG231
addiu $1, $3, 6
mtlo $3
sltiu $2, $3, 3
TAG231:
mthi $2
beq $2, $2, TAG232
sh $2, 0($2)
beq $2, $2, TAG232
TAG232:
lui $2, 3
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
TAG233:
mtlo $1
bne $1, $1, TAG234
nor $1, $1, $1
subu $3, $1, $1
TAG234:
mult $3, $3
bgez $3, TAG235
mfhi $4
lui $3, 2
TAG235:
bgtz $3, TAG236
lb $2, 0($3)
lbu $3, 0($2)
beq $2, $3, TAG236
TAG236:
sub $2, $3, $3
srav $1, $2, $3
multu $2, $1
xori $1, $3, 12
TAG237:
mfhi $3
srav $2, $1, $1
lb $3, 0($2)
lui $4, 14
TAG238:
sll $0, $0, 0
lui $1, 0
sh $1, 0($1)
addu $3, $4, $1
TAG239:
sll $0, $0, 0
mflo $2
divu $3, $3
mthi $2
TAG240:
sh $2, 0($2)
mthi $2
subu $3, $2, $2
beq $2, $2, TAG241
TAG241:
mtlo $3
lh $1, 0($3)
lui $3, 14
mtlo $3
TAG242:
multu $3, $3
bltz $3, TAG243
addiu $4, $3, 4
beq $4, $4, TAG243
TAG243:
div $4, $4
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG244:
bgez $2, TAG245
sra $1, $2, 1
sb $1, 0($2)
bne $1, $1, TAG245
TAG245:
sub $3, $1, $1
mthi $3
beq $3, $3, TAG246
mfhi $1
TAG246:
multu $1, $1
addu $3, $1, $1
beq $3, $3, TAG247
mflo $4
TAG247:
lui $1, 13
srl $3, $4, 6
divu $3, $1
lw $3, 0($3)
TAG248:
mthi $3
xor $1, $3, $3
lui $4, 8
addi $1, $1, 12
TAG249:
lh $2, 0($1)
mthi $1
divu $1, $2
lui $3, 0
TAG250:
lui $4, 12
lui $2, 5
sll $0, $0, 0
multu $4, $2
TAG251:
multu $3, $3
lb $1, 0($3)
sh $3, 0($3)
beq $3, $1, TAG252
TAG252:
sh $1, 0($1)
lui $4, 2
beq $4, $1, TAG253
slt $1, $4, $4
TAG253:
beq $1, $1, TAG254
mthi $1
lw $2, 0($1)
beq $1, $2, TAG254
TAG254:
sll $0, $0, 0
mult $2, $2
lui $2, 11
sll $0, $0, 0
TAG255:
mthi $1
addiu $3, $1, 14
add $1, $1, $1
divu $3, $3
TAG256:
blez $1, TAG257
multu $1, $1
sra $4, $1, 5
div $4, $4
TAG257:
blez $4, TAG258
addu $3, $4, $4
xor $4, $3, $3
mthi $4
TAG258:
bgez $4, TAG259
sh $4, 0($4)
sb $4, 0($4)
and $4, $4, $4
TAG259:
mult $4, $4
bltz $4, TAG260
mtlo $4
bne $4, $4, TAG260
TAG260:
lhu $1, 0($4)
sra $3, $4, 13
mfhi $3
sh $3, 0($3)
TAG261:
sltiu $3, $3, 0
bne $3, $3, TAG262
mult $3, $3
beq $3, $3, TAG262
TAG262:
sh $3, 0($3)
beq $3, $3, TAG263
lui $3, 3
multu $3, $3
TAG263:
blez $3, TAG264
sll $0, $0, 0
bgez $4, TAG264
sll $0, $0, 0
TAG264:
slti $4, $4, 2
mtlo $4
lui $1, 6
lbu $1, 0($4)
TAG265:
bgtz $1, TAG266
mult $1, $1
mthi $1
bgez $1, TAG266
TAG266:
lui $2, 2
mult $1, $1
beq $2, $2, TAG267
srlv $1, $1, $2
TAG267:
sllv $2, $1, $1
mtlo $1
sw $1, 0($2)
lbu $4, 0($1)
TAG268:
bne $4, $4, TAG269
lb $1, 0($4)
mtlo $4
mthi $4
TAG269:
lb $4, 0($1)
bgez $1, TAG270
mthi $4
bltz $1, TAG270
TAG270:
srl $4, $4, 4
sltu $1, $4, $4
mtlo $4
mult $1, $4
TAG271:
mult $1, $1
slt $4, $1, $1
mult $1, $1
lh $1, 0($1)
TAG272:
mthi $1
mfhi $1
sb $1, 0($1)
mult $1, $1
TAG273:
sub $3, $1, $1
mfhi $3
srlv $1, $3, $1
mtlo $1
TAG274:
sllv $4, $1, $1
sh $4, 0($4)
lw $1, 0($1)
lh $4, 0($4)
TAG275:
lw $4, 0($4)
sllv $1, $4, $4
lui $1, 9
addi $3, $4, 10
TAG276:
beq $3, $3, TAG277
lb $3, 0($3)
sb $3, 0($3)
lui $2, 6
TAG277:
bgtz $2, TAG278
mtlo $2
srl $4, $2, 8
sh $4, 0($2)
TAG278:
slti $4, $4, 13
lui $1, 0
mthi $1
beq $1, $1, TAG279
TAG279:
mfhi $4
slti $3, $4, 1
bgtz $3, TAG280
mtlo $4
TAG280:
mflo $1
bltz $1, TAG281
lb $4, 0($3)
mflo $3
TAG281:
lh $3, 0($3)
and $3, $3, $3
addi $1, $3, 7
lb $4, 0($3)
TAG282:
sh $4, 0($4)
bgez $4, TAG283
ori $2, $4, 5
sw $4, 0($2)
TAG283:
addu $3, $2, $2
sh $3, 0($3)
bne $2, $2, TAG284
mult $3, $2
TAG284:
and $2, $3, $3
mfhi $1
beq $1, $1, TAG285
mtlo $1
TAG285:
lui $2, 9
or $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG286:
lui $4, 10
multu $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG287:
sll $0, $0, 0
bne $2, $2, TAG288
sll $0, $0, 0
sll $0, $0, 0
TAG288:
sll $0, $0, 0
lui $2, 10
sll $0, $0, 0
bne $2, $2, TAG289
TAG289:
lui $1, 4
srav $4, $2, $1
lui $2, 2
beq $4, $4, TAG290
TAG290:
sltiu $2, $2, 4
slti $1, $2, 2
bgtz $1, TAG291
addu $1, $2, $1
TAG291:
subu $3, $1, $1
bne $3, $3, TAG292
mthi $1
sh $1, 0($1)
TAG292:
bgtz $3, TAG293
srlv $1, $3, $3
sb $3, 0($3)
mfhi $3
TAG293:
bne $3, $3, TAG294
lh $2, 0($3)
lui $2, 13
mfhi $3
TAG294:
lhu $1, 0($3)
sltiu $3, $1, 13
srl $1, $1, 6
mfhi $4
TAG295:
lui $1, 3
slt $3, $1, $4
lui $4, 4
mfhi $4
TAG296:
mfhi $2
mfhi $4
bgez $4, TAG297
lh $3, 0($4)
TAG297:
srl $4, $3, 11
bltz $4, TAG298
mult $3, $4
mthi $4
TAG298:
lbu $3, 0($4)
multu $4, $4
lb $4, 0($4)
subu $2, $4, $3
TAG299:
mthi $2
blez $2, TAG300
lui $1, 4
lui $1, 3
TAG300:
lui $3, 3
mfhi $4
lui $3, 6
sll $0, $0, 0
TAG301:
lui $2, 2
bgez $2, TAG302
lui $1, 1
multu $3, $2
TAG302:
beq $1, $1, TAG303
sll $3, $1, 12
mflo $2
bne $3, $3, TAG303
TAG303:
sll $0, $0, 0
mtlo $3
mtlo $3
bltz $2, TAG304
TAG304:
nor $3, $3, $3
mult $3, $3
beq $3, $3, TAG305
mtlo $3
TAG305:
mtlo $3
sll $0, $0, 0
sltu $1, $3, $3
xori $3, $1, 13
TAG306:
blez $3, TAG307
lb $3, 0($3)
beq $3, $3, TAG307
mflo $1
TAG307:
mflo $2
ori $3, $2, 11
sll $0, $0, 0
mfhi $2
TAG308:
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG309:
sll $0, $0, 0
addiu $1, $1, 5
blez $1, TAG310
lui $1, 12
TAG310:
lui $4, 10
srav $1, $4, $4
divu $4, $1
sltu $2, $1, $1
TAG311:
sw $2, 0($2)
mflo $4
multu $2, $2
andi $2, $4, 10
TAG312:
mthi $2
lw $1, 0($2)
sllv $3, $2, $2
srav $2, $3, $1
TAG313:
lui $1, 15
lui $4, 11
mthi $1
sra $3, $2, 2
TAG314:
lui $1, 3
mthi $1
bgtz $1, TAG315
multu $1, $3
TAG315:
bgez $1, TAG316
lui $4, 9
blez $4, TAG316
mfhi $2
TAG316:
mtlo $2
blez $2, TAG317
sh $2, 0($2)
mfhi $3
TAG317:
mflo $2
bgtz $3, TAG318
mfhi $4
lb $1, 0($2)
TAG318:
lui $3, 11
mflo $2
mthi $1
bgez $2, TAG319
TAG319:
xor $1, $2, $2
mthi $2
andi $3, $2, 13
lw $2, 0($2)
TAG320:
mflo $3
mtlo $2
lhu $2, 0($3)
bne $3, $2, TAG321
TAG321:
sh $2, 0($2)
sh $2, 0($2)
add $3, $2, $2
lb $1, 0($3)
TAG322:
lb $4, 0($1)
sub $1, $1, $1
sw $1, 0($1)
mtlo $1
TAG323:
mult $1, $1
bgez $1, TAG324
sh $1, 0($1)
div $1, $1
TAG324:
bltz $1, TAG325
sllv $1, $1, $1
bgez $1, TAG325
mult $1, $1
TAG325:
beq $1, $1, TAG326
mflo $4
lw $4, 0($4)
mthi $4
TAG326:
addi $1, $4, 15
beq $1, $4, TAG327
mtlo $1
mult $1, $4
TAG327:
beq $1, $1, TAG328
mtlo $1
mflo $2
bgez $1, TAG328
TAG328:
lh $1, 0($2)
mflo $1
mthi $2
bne $1, $1, TAG329
TAG329:
sb $1, 0($1)
or $3, $1, $1
blez $3, TAG330
sb $1, 0($1)
TAG330:
sb $3, 0($3)
addu $2, $3, $3
lh $3, 0($2)
srlv $1, $3, $3
TAG331:
beq $1, $1, TAG332
mult $1, $1
div $1, $1
bltz $1, TAG332
TAG332:
lhu $1, 0($1)
bgtz $1, TAG333
and $1, $1, $1
bgtz $1, TAG333
TAG333:
sw $1, 0($1)
sltiu $2, $1, 10
lui $2, 6
sll $0, $0, 0
TAG334:
sh $4, 0($4)
bne $4, $4, TAG335
slti $1, $4, 12
divu $4, $1
TAG335:
mfhi $3
bgez $1, TAG336
mflo $3
multu $3, $1
TAG336:
sltiu $1, $3, 5
mult $1, $1
mthi $3
mthi $1
TAG337:
bgtz $1, TAG338
mtlo $1
sltiu $1, $1, 0
lui $2, 8
TAG338:
lui $4, 8
mtlo $4
sll $0, $0, 0
lui $3, 9
TAG339:
sll $0, $0, 0
lui $4, 12
srlv $3, $2, $2
addiu $1, $2, 1
TAG340:
sll $0, $0, 0
bne $1, $1, TAG341
lui $1, 8
mthi $1
TAG341:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $1, $3, TAG342
TAG342:
lui $4, 4
sll $0, $0, 0
blez $4, TAG343
mthi $4
TAG343:
sll $0, $0, 0
andi $1, $3, 13
mult $3, $3
sll $0, $0, 0
TAG344:
lui $2, 0
bne $1, $1, TAG345
mult $1, $1
mflo $4
TAG345:
addiu $2, $4, 13
bltz $4, TAG346
mtlo $4
and $2, $4, $2
TAG346:
mult $2, $2
bgtz $2, TAG347
mfhi $4
beq $2, $2, TAG347
TAG347:
lui $2, 7
sb $4, 0($4)
divu $2, $2
beq $4, $4, TAG348
TAG348:
mthi $2
sll $0, $0, 0
lui $4, 15
sltu $1, $2, $4
TAG349:
mfhi $2
sb $1, 0($1)
blez $2, TAG350
lui $1, 7
TAG350:
and $4, $1, $1
mtlo $1
andi $1, $1, 7
blez $1, TAG351
TAG351:
mtlo $1
lui $3, 1
mult $3, $1
lui $4, 1
TAG352:
bgtz $4, TAG353
mflo $2
addu $3, $4, $4
bne $2, $2, TAG353
TAG353:
sll $0, $0, 0
mflo $3
lui $4, 12
bgez $3, TAG354
TAG354:
sll $0, $0, 0
mfhi $1
bne $4, $1, TAG355
lw $1, 0($1)
TAG355:
sb $1, -256($1)
lui $4, 7
sll $0, $0, 0
mflo $1
TAG356:
sb $1, 0($1)
blez $1, TAG357
slti $4, $1, 14
beq $4, $4, TAG357
TAG357:
sb $4, 0($4)
lb $3, 0($4)
lb $3, 0($4)
srlv $3, $4, $4
TAG358:
lh $1, 0($3)
lh $1, -256($1)
subu $1, $1, $3
multu $1, $1
TAG359:
mfhi $1
lui $2, 12
lhu $2, 0($1)
mtlo $2
TAG360:
lui $2, 6
divu $2, $2
bne $2, $2, TAG361
multu $2, $2
TAG361:
xori $4, $2, 0
mthi $2
blez $4, TAG362
mtlo $2
TAG362:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG363:
mflo $2
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG364:
sll $0, $0, 0
slt $3, $2, $2
mfhi $4
sll $2, $3, 11
TAG365:
lui $1, 15
beq $2, $1, TAG366
mtlo $1
sll $0, $0, 0
TAG366:
beq $1, $1, TAG367
mflo $1
ori $1, $1, 5
addi $1, $1, 9
TAG367:
blez $1, TAG368
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG368:
mthi $3
bgtz $3, TAG369
sb $3, 0($3)
sh $3, 0($3)
TAG369:
mflo $2
bgtz $3, TAG370
mtlo $3
addu $1, $3, $2
TAG370:
beq $1, $1, TAG371
sll $4, $1, 2
lui $2, 11
lui $3, 0
TAG371:
multu $3, $3
bgtz $3, TAG372
lhu $3, 0($3)
mtlo $3
TAG372:
mtlo $3
mfhi $3
sltiu $4, $3, 5
lhu $2, 0($3)
TAG373:
sltu $3, $2, $2
blez $2, TAG374
mfhi $1
mthi $2
TAG374:
lui $1, 3
lui $1, 10
mult $1, $1
mtlo $1
TAG375:
blez $1, TAG376
sll $0, $0, 0
mfhi $4
divu $4, $4
TAG376:
addu $3, $4, $4
div $4, $4
mthi $4
lui $4, 9
TAG377:
lui $1, 9
divu $1, $4
lui $2, 7
beq $4, $1, TAG378
TAG378:
sll $0, $0, 0
mfhi $4
mfhi $1
beq $2, $1, TAG379
TAG379:
sb $1, 0($1)
lui $3, 10
sll $0, $0, 0
bne $1, $1, TAG380
TAG380:
sllv $1, $1, $1
mtlo $1
beq $1, $1, TAG381
multu $1, $1
TAG381:
mfhi $4
lh $3, 0($4)
mthi $4
multu $3, $3
TAG382:
bgez $3, TAG383
lh $4, 0($3)
addi $4, $4, 8
sh $4, 0($4)
TAG383:
lui $3, 5
sw $3, 0($4)
mtlo $4
mult $3, $3
TAG384:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
beq $4, $3, TAG385
TAG385:
xori $3, $4, 3
sb $4, 0($3)
lbu $3, 0($3)
bne $3, $3, TAG386
TAG386:
multu $3, $3
srl $1, $3, 13
mthi $1
lhu $1, 0($1)
TAG387:
sh $1, 0($1)
multu $1, $1
sb $1, 0($1)
mfhi $3
TAG388:
addi $1, $3, 6
sb $1, 0($3)
bne $1, $1, TAG389
mflo $3
TAG389:
lui $3, 14
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG390:
sll $0, $0, 0
sll $0, $0, 0
div $4, $3
multu $3, $4
TAG391:
sh $4, 0($4)
bne $4, $4, TAG392
lui $1, 3
multu $1, $4
TAG392:
bgez $1, TAG393
mflo $2
lb $1, 0($1)
sw $1, 0($1)
TAG393:
xori $3, $1, 3
srav $4, $3, $1
bltz $1, TAG394
sll $0, $0, 0
TAG394:
bgtz $4, TAG395
mthi $4
mthi $4
lui $1, 6
TAG395:
ori $2, $1, 10
lui $4, 9
mfhi $2
bne $1, $1, TAG396
TAG396:
mtlo $2
mthi $2
bne $2, $2, TAG397
subu $1, $2, $2
TAG397:
mflo $1
bltz $1, TAG398
mfhi $4
sll $0, $0, 0
TAG398:
lui $3, 5
sll $0, $0, 0
mfhi $1
beq $3, $1, TAG399
TAG399:
lui $2, 9
mflo $3
divu $1, $2
bltz $3, TAG400
TAG400:
sll $0, $0, 0
bgtz $3, TAG401
lui $2, 11
mfhi $4
TAG401:
mfhi $2
addu $2, $4, $2
mult $2, $4
sll $0, $0, 0
TAG402:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
lui $2, 13
TAG403:
multu $2, $2
mfhi $2
lw $4, -169($2)
lui $3, 10
TAG404:
mfhi $2
bltz $3, TAG405
sll $4, $3, 9
mtlo $3
TAG405:
sll $0, $0, 0
lui $1, 13
mfhi $3
lui $1, 15
TAG406:
sll $0, $0, 0
beq $1, $1, TAG407
sll $0, $0, 0
lui $2, 13
TAG407:
blez $2, TAG408
addiu $2, $2, 15
mtlo $2
bltz $2, TAG408
TAG408:
mthi $2
blez $2, TAG409
sb $2, -184($2)
subu $4, $2, $2
TAG409:
multu $4, $4
sw $4, 0($4)
beq $4, $4, TAG410
or $2, $4, $4
TAG410:
beq $2, $2, TAG411
mflo $2
lui $1, 1
lui $3, 14
TAG411:
bltz $3, TAG412
sra $1, $3, 0
sb $3, -169($1)
beq $1, $3, TAG412
TAG412:
mfhi $1
mtlo $1
andi $3, $1, 9
blez $1, TAG413
TAG413:
or $1, $3, $3
bgtz $3, TAG414
mfhi $3
blez $1, TAG414
TAG414:
multu $3, $3
bne $3, $3, TAG415
lui $1, 7
xori $1, $1, 7
TAG415:
sll $0, $0, 0
bgtz $2, TAG416
sltu $2, $2, $2
mtlo $1
TAG416:
sb $2, 0($2)
lhu $2, 0($2)
mtlo $2
bne $2, $2, TAG417
TAG417:
mflo $4
bgez $2, TAG418
sh $2, 0($4)
lhu $2, 0($4)
TAG418:
slti $1, $2, 10
mfhi $1
mthi $2
bltz $1, TAG419
TAG419:
sw $1, 0($1)
sb $1, 0($1)
mthi $1
multu $1, $1
TAG420:
lui $1, 15
subu $2, $1, $1
beq $2, $1, TAG421
mult $2, $2
TAG421:
multu $2, $2
mthi $2
multu $2, $2
lui $4, 3
TAG422:
sltiu $3, $4, 3
lui $3, 9
sltiu $4, $4, 14
xor $3, $4, $4
TAG423:
beq $3, $3, TAG424
mflo $2
mthi $3
divu $3, $2
TAG424:
mult $2, $2
xor $2, $2, $2
sltu $3, $2, $2
sra $4, $2, 15
TAG425:
lui $1, 12
lui $2, 6
mflo $3
sll $3, $1, 3
TAG426:
mthi $3
andi $3, $3, 10
lui $1, 11
multu $1, $3
TAG427:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $2, TAG428
mtlo $1
TAG428:
sll $0, $0, 0
mfhi $4
slti $1, $3, 2
xori $4, $4, 12
TAG429:
lui $3, 9
mfhi $4
mtlo $4
mfhi $3
TAG430:
mflo $2
mthi $2
bne $3, $2, TAG431
sra $1, $2, 5
TAG431:
lui $4, 9
divu $4, $4
mfhi $2
lw $2, 0($1)
TAG432:
lui $3, 3
lui $2, 2
bne $2, $2, TAG433
divu $3, $3
TAG433:
mthi $2
mfhi $4
mtlo $4
mfhi $2
TAG434:
blez $2, TAG435
mtlo $2
multu $2, $2
beq $2, $2, TAG435
TAG435:
lui $4, 3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG436:
sltiu $1, $2, 9
lui $3, 6
mtlo $3
lbu $2, 0($1)
TAG437:
mthi $2
bne $2, $2, TAG438
or $3, $2, $2
lw $4, 0($3)
TAG438:
lhu $2, 0($4)
addu $4, $2, $2
bgtz $4, TAG439
mult $4, $4
TAG439:
lhu $3, 0($4)
slt $4, $4, $3
mthi $3
subu $3, $4, $3
TAG440:
beq $3, $3, TAG441
xor $3, $3, $3
mflo $3
mtlo $3
TAG441:
blez $3, TAG442
mfhi $4
beq $3, $4, TAG442
sltiu $3, $3, 11
TAG442:
bne $3, $3, TAG443
srl $1, $3, 14
bgez $1, TAG443
lui $2, 9
TAG443:
lui $4, 12
lui $4, 3
divu $2, $4
mflo $2
TAG444:
mflo $2
div $2, $2
addiu $4, $2, 12
nor $3, $2, $2
TAG445:
sll $0, $0, 0
mthi $3
sltu $2, $3, $3
lui $4, 4
TAG446:
divu $4, $4
bgtz $4, TAG447
lui $4, 5
mfhi $4
TAG447:
lui $2, 3
mtlo $2
bne $4, $4, TAG448
divu $4, $2
TAG448:
div $2, $2
bne $2, $2, TAG449
mflo $3
bne $3, $2, TAG449
TAG449:
mfhi $4
lbu $3, 0($3)
mfhi $1
addi $2, $4, 3
TAG450:
sb $2, 0($2)
multu $2, $2
divu $2, $2
mflo $3
TAG451:
sb $3, 0($3)
mult $3, $3
bgez $3, TAG452
srl $3, $3, 6
TAG452:
bgez $3, TAG453
sh $3, 0($3)
sh $3, 0($3)
xori $1, $3, 6
TAG453:
subu $4, $1, $1
lui $2, 15
sra $3, $2, 6
mflo $2
TAG454:
div $2, $2
lb $3, 0($2)
and $1, $2, $2
bltz $3, TAG455
TAG455:
mfhi $4
mthi $4
addu $1, $1, $1
mthi $4
TAG456:
lui $2, 3
sb $2, 0($1)
srav $4, $1, $2
mtlo $4
TAG457:
div $4, $4
multu $4, $4
mtlo $4
srav $4, $4, $4
TAG458:
mthi $4
beq $4, $4, TAG459
mult $4, $4
mthi $4
TAG459:
mtlo $4
add $2, $4, $4
blez $4, TAG460
mult $4, $2
TAG460:
lhu $4, 0($2)
lh $1, 0($2)
mfhi $3
bltz $1, TAG461
TAG461:
sb $3, 0($3)
bne $3, $3, TAG462
lui $3, 3
sll $4, $3, 0
TAG462:
lui $4, 13
mfhi $1
lui $2, 6
mfhi $2
TAG463:
multu $2, $2
sh $2, 0($2)
lh $4, 0($2)
mfhi $2
TAG464:
blez $2, TAG465
mfhi $1
mflo $3
lui $3, 1
TAG465:
srl $1, $3, 13
mthi $1
bne $1, $1, TAG466
multu $3, $3
TAG466:
lui $1, 9
slt $1, $1, $1
mtlo $1
bne $1, $1, TAG467
TAG467:
lui $3, 6
mtlo $3
add $4, $1, $1
lui $4, 8
TAG468:
sll $0, $0, 0
multu $4, $4
addu $3, $4, $4
srav $3, $1, $4
TAG469:
blez $3, TAG470
lw $2, 0($3)
lbu $3, 0($2)
mthi $3
TAG470:
mthi $3
multu $3, $3
mflo $4
lbu $3, 0($3)
TAG471:
sllv $1, $3, $3
lui $3, 4
mtlo $1
slti $2, $3, 7
TAG472:
lb $2, 0($2)
andi $4, $2, 15
mtlo $4
lui $2, 13
TAG473:
lui $2, 4
addiu $1, $2, 10
bltz $2, TAG474
and $1, $2, $2
TAG474:
beq $1, $1, TAG475
sll $0, $0, 0
lh $3, 0($1)
mult $3, $1
TAG475:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
sh $3, 0($4)
TAG476:
lw $4, 0($4)
bltz $4, TAG477
mthi $4
mfhi $4
TAG477:
divu $4, $4
bgez $4, TAG478
mfhi $4
mflo $3
TAG478:
xori $3, $3, 7
sll $4, $3, 0
lui $4, 5
mfhi $3
TAG479:
blez $3, TAG480
mfhi $1
mthi $1
mflo $3
TAG480:
sh $3, 0($3)
sh $3, 0($3)
addiu $3, $3, 2
lui $3, 5
TAG481:
sltiu $4, $3, 9
beq $4, $3, TAG482
lui $2, 12
bgez $3, TAG482
TAG482:
mfhi $2
lui $4, 12
bgez $2, TAG483
mult $2, $2
TAG483:
mfhi $1
mfhi $4
multu $1, $1
lui $3, 11
TAG484:
mfhi $4
mtlo $3
beq $4, $3, TAG485
mthi $3
TAG485:
mflo $4
sll $0, $0, 0
mthi $4
addiu $4, $4, 2
TAG486:
sltu $4, $4, $4
lw $3, 0($4)
beq $3, $3, TAG487
sb $4, 0($4)
TAG487:
mflo $3
beq $3, $3, TAG488
addiu $2, $3, 9
lui $1, 11
TAG488:
beq $1, $1, TAG489
mthi $1
blez $1, TAG489
mfhi $1
TAG489:
mult $1, $1
mult $1, $1
lui $2, 0
beq $1, $1, TAG490
TAG490:
lh $2, 0($2)
mfhi $4
mult $4, $2
lb $4, 0($2)
TAG491:
mtlo $4
mult $4, $4
lui $2, 11
sll $0, $0, 0
TAG492:
multu $4, $4
sb $4, 0($4)
sb $4, 0($4)
mthi $4
TAG493:
sh $4, 0($4)
mfhi $2
lui $2, 4
lui $1, 0
TAG494:
bne $1, $1, TAG495
mthi $1
lhu $3, 0($1)
sb $1, 0($3)
TAG495:
mfhi $3
mflo $1
beq $1, $1, TAG496
sub $2, $3, $3
TAG496:
lui $3, 11
lui $4, 11
or $3, $4, $2
mult $3, $2
TAG497:
bltz $3, TAG498
mfhi $4
sll $0, $0, 0
mult $3, $2
TAG498:
mthi $2
bgez $2, TAG499
slt $4, $2, $2
mfhi $3
TAG499:
mult $3, $3
sll $0, $0, 0
bltz $3, TAG500
sll $0, $0, 0
TAG500:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
sltu $3, $3, $3
TAG501:
bne $3, $3, TAG502
lui $2, 2
sb $2, 0($3)
mult $2, $3
TAG502:
mtlo $2
and $4, $2, $2
lui $3, 0
lbu $4, 0($3)
TAG503:
lh $2, 0($4)
slt $3, $4, $2
sub $2, $2, $4
sb $2, 0($2)
TAG504:
sh $2, 0($2)
mult $2, $2
multu $2, $2
subu $3, $2, $2
TAG505:
blez $3, TAG506
lui $4, 4
lh $3, 0($3)
mflo $3
TAG506:
lb $2, 0($3)
mthi $3
sh $3, 0($3)
beq $3, $3, TAG507
TAG507:
mflo $2
bgtz $2, TAG508
lhu $3, 0($2)
blez $2, TAG508
TAG508:
mflo $1
mult $1, $3
lbu $3, 0($1)
multu $3, $1
TAG509:
beq $3, $3, TAG510
sltu $2, $3, $3
mult $2, $3
blez $2, TAG510
TAG510:
mthi $2
sw $2, 0($2)
bne $2, $2, TAG511
mult $2, $2
TAG511:
lb $3, 0($2)
blez $2, TAG512
mfhi $2
sh $2, 0($2)
TAG512:
bgez $2, TAG513
lui $2, 11
lh $1, 0($2)
addu $4, $2, $1
TAG513:
mfhi $2
lbu $1, 0($2)
lui $2, 10
bgtz $4, TAG514
TAG514:
sll $0, $0, 0
bgtz $2, TAG515
xori $4, $2, 9
mtlo $2
TAG515:
srlv $2, $4, $4
beq $2, $4, TAG516
lui $3, 13
sll $0, $0, 0
TAG516:
lb $4, 0($1)
beq $1, $1, TAG517
sltiu $2, $4, 11
lui $2, 14
TAG517:
multu $2, $2
bgtz $2, TAG518
mult $2, $2
nor $4, $2, $2
TAG518:
xori $1, $4, 2
subu $4, $4, $1
lui $4, 11
bltz $1, TAG519
TAG519:
mtlo $4
bne $4, $4, TAG520
mflo $2
bgez $2, TAG520
TAG520:
div $2, $2
addu $3, $2, $2
mtlo $3
sll $0, $0, 0
TAG521:
mfhi $3
mtlo $3
blez $3, TAG522
addi $2, $3, 9
TAG522:
addiu $3, $2, 9
mfhi $2
mthi $2
bne $3, $2, TAG523
TAG523:
sh $2, 0($2)
mult $2, $2
mflo $3
ori $2, $3, 7
TAG524:
lb $1, 0($2)
beq $1, $2, TAG525
mthi $1
lw $1, 0($1)
TAG525:
multu $1, $1
beq $1, $1, TAG526
sb $1, 0($1)
mflo $1
TAG526:
mfhi $4
srl $1, $1, 7
multu $4, $1
mfhi $2
TAG527:
bne $2, $2, TAG528
mthi $2
bne $2, $2, TAG528
sh $2, 0($2)
TAG528:
mflo $2
bgtz $2, TAG529
lhu $3, 0($2)
andi $1, $2, 10
TAG529:
bltz $1, TAG530
mult $1, $1
lw $2, 0($1)
mult $2, $1
TAG530:
slti $2, $2, 3
mthi $2
lbu $2, 0($2)
beq $2, $2, TAG531
TAG531:
mult $2, $2
sb $2, 0($2)
addiu $3, $2, 13
mfhi $2
TAG532:
mflo $4
slti $4, $2, 3
lui $2, 14
lui $3, 7
TAG533:
or $1, $3, $3
blez $1, TAG534
slt $2, $1, $1
addu $4, $2, $1
TAG534:
mflo $3
bltz $4, TAG535
mult $3, $4
sltu $3, $4, $3
TAG535:
multu $3, $3
sltu $1, $3, $3
mtlo $3
sra $3, $3, 5
TAG536:
beq $3, $3, TAG537
sb $3, 0($3)
mtlo $3
bne $3, $3, TAG537
TAG537:
mflo $1
sll $1, $3, 14
bne $3, $1, TAG538
addi $3, $1, 12
TAG538:
multu $3, $3
mfhi $1
lui $2, 4
lui $1, 4
TAG539:
sll $0, $0, 0
bne $3, $3, TAG540
andi $3, $1, 5
mtlo $3
TAG540:
beq $3, $3, TAG541
lui $3, 0
bne $3, $3, TAG541
lhu $3, 0($3)
TAG541:
lb $1, 0($3)
lui $4, 9
addu $2, $4, $4
lui $3, 1
TAG542:
ori $2, $3, 12
mfhi $4
subu $1, $3, $2
lui $4, 5
TAG543:
mthi $4
sll $0, $0, 0
multu $4, $4
addiu $3, $3, 7
TAG544:
addu $2, $3, $3
blez $2, TAG545
srlv $2, $2, $2
beq $2, $3, TAG545
TAG545:
sw $2, 0($2)
bgtz $2, TAG546
mthi $2
lw $3, 0($2)
TAG546:
beq $3, $3, TAG547
xori $1, $3, 4
sb $1, 0($3)
lw $1, 0($1)
TAG547:
lui $3, 1
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG548:
divu $3, $3
mflo $4
lui $1, 5
xori $3, $4, 7
TAG549:
bne $3, $3, TAG550
sllv $4, $3, $3
multu $4, $4
mthi $3
TAG550:
sll $0, $0, 0
mflo $3
sra $2, $4, 8
lui $3, 12
TAG551:
beq $3, $3, TAG552
sll $0, $0, 0
lui $3, 1
mthi $3
TAG552:
multu $3, $3
addiu $2, $3, 4
bne $3, $3, TAG553
sll $0, $0, 0
TAG553:
slti $3, $2, 2
mtlo $2
srlv $1, $2, $3
sll $0, $0, 0
TAG554:
beq $2, $2, TAG555
mthi $2
mfhi $1
sh $2, 0($2)
TAG555:
sll $0, $0, 0
lui $3, 1
sll $0, $0, 0
mfhi $3
TAG556:
beq $3, $3, TAG557
srav $3, $3, $3
multu $3, $3
ori $4, $3, 12
TAG557:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
lh $3, -384($4)
TAG558:
sh $3, 0($3)
andi $2, $3, 9
bgez $3, TAG559
sw $2, 0($3)
TAG559:
sll $2, $2, 13
sw $2, 0($2)
sw $2, 0($2)
or $1, $2, $2
TAG560:
mult $1, $1
beq $1, $1, TAG561
addi $3, $1, 11
lui $3, 5
TAG561:
sra $1, $3, 1
or $3, $3, $1
srl $1, $3, 0
sb $3, 0($3)
TAG562:
mflo $3
sb $3, 0($3)
sw $3, 0($3)
multu $1, $1
TAG563:
lui $4, 13
subu $3, $3, $3
mfhi $4
sllv $1, $3, $3
TAG564:
mfhi $4
andi $3, $4, 13
lui $3, 9
lui $4, 2
TAG565:
mfhi $3
bne $4, $4, TAG566
mfhi $1
lui $4, 7
TAG566:
lui $3, 0
beq $4, $3, TAG567
lui $4, 1
lui $1, 11
TAG567:
mthi $1
divu $1, $1
sll $0, $0, 0
mthi $4
TAG568:
sll $0, $0, 0
bne $4, $4, TAG569
sra $2, $4, 11
mthi $4
TAG569:
divu $2, $2
srl $1, $2, 4
addiu $2, $1, 11
addu $2, $1, $2
TAG570:
bltz $2, TAG571
sb $2, 0($2)
bne $2, $2, TAG571
mflo $2
TAG571:
mult $2, $2
mult $2, $2
addu $3, $2, $2
bne $2, $3, TAG572
TAG572:
mtlo $3
mthi $3
beq $3, $3, TAG573
addiu $1, $3, 10
TAG573:
mult $1, $1
mtlo $1
addu $1, $1, $1
sltu $2, $1, $1
TAG574:
bltz $2, TAG575
sw $2, 0($2)
mtlo $2
addiu $3, $2, 15
TAG575:
mthi $3
beq $3, $3, TAG576
addiu $2, $3, 6
mfhi $3
TAG576:
beq $3, $3, TAG577
lbu $4, 0($3)
nor $1, $3, $3
multu $4, $1
TAG577:
andi $3, $1, 9
lui $1, 10
beq $3, $1, TAG578
nor $4, $3, $1
TAG578:
mflo $3
bgez $4, TAG579
mfhi $1
sll $0, $0, 0
TAG579:
bne $1, $1, TAG580
lbu $1, 0($1)
lbu $2, 0($1)
mfhi $4
TAG580:
addiu $1, $4, 10
bltz $4, TAG581
lui $4, 13
slt $3, $1, $4
TAG581:
mult $3, $3
lbu $2, 0($3)
lui $2, 11
mult $3, $2
TAG582:
slti $4, $2, 2
mfhi $3
mflo $3
ori $2, $3, 0
TAG583:
multu $2, $2
bne $2, $2, TAG584
sll $0, $0, 0
slti $1, $4, 3
TAG584:
lui $2, 6
bne $1, $1, TAG585
mult $2, $2
multu $1, $2
TAG585:
sll $4, $2, 3
sra $2, $2, 3
multu $4, $2
mflo $3
TAG586:
bne $3, $3, TAG587
xor $3, $3, $3
sh $3, 0($3)
mtlo $3
TAG587:
slti $1, $3, 11
lbu $2, 0($1)
mfhi $1
bgez $1, TAG588
TAG588:
lbu $3, 0($1)
lhu $3, 0($1)
lhu $1, 0($1)
mthi $1
TAG589:
lhu $1, 0($1)
lui $1, 11
or $4, $1, $1
sra $4, $1, 15
TAG590:
mthi $4
blez $4, TAG591
mthi $4
mflo $1
TAG591:
mthi $1
bne $1, $1, TAG592
sra $1, $1, 3
mfhi $4
TAG592:
beq $4, $4, TAG593
lb $3, 0($4)
mtlo $4
bne $3, $3, TAG593
TAG593:
lw $3, 0($3)
multu $3, $3
bne $3, $3, TAG594
lhu $1, 0($3)
TAG594:
nor $1, $1, $1
mult $1, $1
lb $3, 1($1)
sb $1, 1($1)
TAG595:
nor $3, $3, $3
mthi $3
lh $2, 1($3)
addiu $1, $2, 10
TAG596:
beq $1, $1, TAG597
div $1, $1
ori $1, $1, 4
addiu $4, $1, 10
TAG597:
multu $4, $4
slti $2, $4, 5
lui $1, 9
blez $2, TAG598
TAG598:
multu $1, $1
sll $3, $1, 13
sll $0, $0, 0
mfhi $2
TAG599:
div $2, $2
div $2, $2
xor $2, $2, $2
lhu $1, 0($2)
TAG600:
lui $2, 12
beq $2, $1, TAG601
sll $1, $2, 14
mthi $2
TAG601:
mfhi $2
mtlo $2
bltz $1, TAG602
and $2, $2, $1
TAG602:
mtlo $2
blez $2, TAG603
mtlo $2
mthi $2
TAG603:
mtlo $2
sub $3, $2, $2
bgtz $3, TAG604
mthi $3
TAG604:
sb $3, 0($3)
sltu $3, $3, $3
mfhi $3
blez $3, TAG605
TAG605:
lui $3, 6
div $3, $3
srav $1, $3, $3
bgtz $3, TAG606
TAG606:
sll $0, $0, 0
mthi $1
mthi $2
lhu $4, 0($2)
TAG607:
bne $4, $4, TAG608
lui $1, 4
lui $3, 2
div $1, $1
TAG608:
mflo $4
divu $3, $3
sll $0, $0, 0
bltz $3, TAG609
TAG609:
lb $2, 0($4)
lb $2, 0($4)
lui $4, 10
lbu $3, 0($2)
TAG610:
lb $3, 0($3)
multu $3, $3
blez $3, TAG611
slti $4, $3, 2
TAG611:
addiu $1, $4, 14
mflo $3
xori $4, $3, 7
multu $3, $1
TAG612:
sb $4, 0($4)
slti $2, $4, 10
addu $4, $2, $2
sb $2, 0($2)
TAG613:
multu $4, $4
mtlo $4
bne $4, $4, TAG614
mflo $3
TAG614:
mfhi $3
lhu $3, 0($3)
mflo $4
xori $2, $4, 10
TAG615:
mfhi $3
lh $4, 0($3)
beq $3, $3, TAG616
lh $4, -256($4)
TAG616:
div $4, $4
bgtz $4, TAG617
mflo $1
blez $1, TAG617
TAG617:
lui $4, 10
multu $1, $1
lui $1, 3
mflo $1
TAG618:
bltz $1, TAG619
nor $2, $1, $1
lbu $3, 0($1)
mtlo $1
TAG619:
lb $1, 0($3)
blez $1, TAG620
ori $4, $3, 15
lbu $4, 0($4)
TAG620:
bne $4, $4, TAG621
mtlo $4
subu $1, $4, $4
lui $4, 2
TAG621:
lui $4, 0
sw $4, 0($4)
bne $4, $4, TAG622
and $2, $4, $4
TAG622:
mflo $1
bne $1, $2, TAG623
mfhi $3
bne $3, $3, TAG623
TAG623:
lui $3, 11
bgtz $3, TAG624
mflo $2
bltz $3, TAG624
TAG624:
divu $2, $2
lui $4, 7
subu $1, $2, $2
lbu $2, 0($2)
TAG625:
bne $2, $2, TAG626
mflo $2
lbu $4, 0($2)
sb $2, 0($2)
TAG626:
bgtz $4, TAG627
lh $3, 0($4)
multu $4, $3
lui $4, 9
TAG627:
divu $4, $4
srav $1, $4, $4
sll $0, $0, 0
div $2, $1
TAG628:
subu $2, $2, $2
bne $2, $2, TAG629
sb $2, 0($2)
lb $1, 0($2)
TAG629:
lui $2, 12
bgtz $2, TAG630
lui $3, 15
sb $3, 0($3)
TAG630:
lui $2, 7
sra $3, $3, 15
mtlo $3
lh $3, 0($3)
TAG631:
lbu $3, 0($3)
multu $3, $3
lui $3, 3
mthi $3
TAG632:
mult $3, $3
lui $3, 8
sll $0, $0, 0
lui $3, 7
TAG633:
mfhi $1
sll $0, $0, 0
bltz $3, TAG634
divu $1, $1
TAG634:
andi $2, $3, 3
bltz $2, TAG635
lui $4, 2
mflo $2
TAG635:
lui $4, 12
lui $1, 7
sll $0, $0, 0
sb $1, 0($2)
TAG636:
and $2, $1, $1
sll $0, $0, 0
mfhi $2
lui $2, 14
TAG637:
mtlo $2
sll $0, $0, 0
bltz $2, TAG638
sll $0, $0, 0
TAG638:
bgez $2, TAG639
lui $2, 8
sb $2, 0($2)
lui $2, 9
TAG639:
nor $2, $2, $2
mflo $1
sll $0, $0, 0
mtlo $1
TAG640:
sll $0, $0, 0
subu $2, $1, $1
mthi $2
mflo $4
TAG641:
mtlo $4
sllv $4, $4, $4
sll $0, $0, 0
lui $1, 10
TAG642:
lui $4, 12
mtlo $1
mtlo $4
bgez $1, TAG643
TAG643:
lui $1, 4
lui $3, 11
srl $2, $4, 13
addu $4, $1, $1
TAG644:
sll $0, $0, 0
lui $3, 4
lui $2, 9
and $1, $3, $3
TAG645:
ori $2, $1, 1
lui $2, 10
srl $3, $1, 3
divu $1, $3
TAG646:
mthi $3
sra $1, $3, 12
bltz $1, TAG647
mflo $2
TAG647:
lui $2, 10
sll $0, $0, 0
bne $2, $2, TAG648
sll $0, $0, 0
TAG648:
bgez $2, TAG649
sll $0, $0, 0
beq $2, $3, TAG649
lhu $1, 0($2)
TAG649:
addu $4, $1, $1
div $4, $4
beq $1, $1, TAG650
mflo $2
TAG650:
beq $2, $2, TAG651
sb $2, 0($2)
blez $2, TAG651
andi $4, $2, 13
TAG651:
ori $2, $4, 5
sw $4, 0($4)
sb $2, 0($2)
divu $4, $4
TAG652:
lb $2, 0($2)
or $4, $2, $2
srav $2, $2, $2
multu $2, $2
TAG653:
blez $2, TAG654
sh $2, 0($2)
mflo $3
sll $1, $2, 12
TAG654:
lb $3, 0($1)
sll $2, $1, 4
multu $2, $3
and $2, $2, $1
TAG655:
or $2, $2, $2
bgez $2, TAG656
mtlo $2
div $2, $2
TAG656:
slt $3, $2, $2
sw $2, 0($3)
sllv $2, $3, $3
bne $2, $2, TAG657
TAG657:
mthi $2
mflo $1
mthi $2
bne $2, $1, TAG658
TAG658:
lui $2, 0
mflo $4
ori $2, $2, 3
multu $2, $4
TAG659:
sra $4, $2, 11
bltz $2, TAG660
slt $2, $2, $2
and $2, $2, $2
TAG660:
nor $1, $2, $2
sh $2, 1($1)
mthi $1
mflo $4
TAG661:
lui $4, 3
mflo $3
sll $0, $0, 0
blez $4, TAG662
TAG662:
mtlo $3
lbu $4, 0($3)
sb $4, 0($3)
lb $4, 0($3)
TAG663:
lhu $1, 0($4)
sltiu $2, $4, 8
multu $1, $4
bgez $2, TAG664
TAG664:
sb $2, 0($2)
subu $3, $2, $2
lui $3, 11
mflo $3
TAG665:
lbu $3, 0($3)
sra $4, $3, 10
subu $2, $4, $3
xori $4, $3, 0
TAG666:
bgtz $4, TAG667
addi $3, $4, 5
lb $3, 0($3)
mtlo $3
TAG667:
mfhi $3
mfhi $2
blez $3, TAG668
mthi $3
TAG668:
bgez $2, TAG669
mult $2, $2
ori $4, $2, 14
srl $1, $4, 4
TAG669:
lb $4, 0($1)
mthi $1
lhu $3, 0($1)
lw $4, -256($3)
TAG670:
mfhi $1
bltz $4, TAG671
lui $2, 10
sh $4, -256($4)
TAG671:
lui $1, 4
mult $2, $2
sll $0, $0, 0
ori $4, $1, 6
TAG672:
mflo $4
sw $4, 0($4)
lbu $3, 0($4)
multu $4, $4
TAG673:
add $1, $3, $3
lui $3, 12
lw $1, 0($1)
sltiu $2, $1, 13
TAG674:
sll $2, $2, 11
xor $1, $2, $2
mthi $1
sh $2, 0($1)
TAG675:
beq $1, $1, TAG676
slti $1, $1, 13
mfhi $4
lh $1, 0($4)
TAG676:
lui $3, 5
bne $3, $1, TAG677
sllv $2, $1, $3
sw $2, 0($1)
TAG677:
andi $1, $2, 7
sb $1, 0($2)
blez $1, TAG678
sb $1, 0($2)
TAG678:
lb $3, 0($1)
mtlo $1
lui $2, 8
mtlo $2
TAG679:
mflo $4
lui $1, 10
multu $2, $2
mflo $3
TAG680:
lui $1, 13
mflo $3
lui $3, 3
slti $4, $3, 8
TAG681:
lh $4, 0($4)
bgez $4, TAG682
addiu $1, $4, 10
sltiu $1, $4, 10
TAG682:
multu $1, $1
mult $1, $1
mflo $4
lui $1, 2
TAG683:
mfhi $2
sll $0, $0, 0
lui $1, 3
nor $3, $2, $1
TAG684:
mflo $2
lui $1, 11
mthi $2
addu $4, $2, $3
TAG685:
div $4, $4
addu $3, $4, $4
bgez $3, TAG686
mthi $3
TAG686:
ori $3, $3, 15
sll $0, $0, 0
slt $2, $3, $3
mtlo $3
TAG687:
addiu $3, $2, 7
lbu $2, 0($3)
lui $1, 6
beq $3, $3, TAG688
TAG688:
srlv $3, $1, $1
or $2, $3, $3
mult $3, $2
sll $0, $0, 0
TAG689:
addu $3, $2, $2
mthi $2
sll $0, $0, 0
mflo $3
TAG690:
mtlo $3
mult $3, $3
bgtz $3, TAG691
srlv $4, $3, $3
TAG691:
blez $4, TAG692
srav $1, $4, $4
lh $4, 0($1)
sh $4, 0($4)
TAG692:
lui $1, 2
multu $4, $1
nor $3, $1, $1
mfhi $3
TAG693:
srav $3, $3, $3
sw $3, 0($3)
beq $3, $3, TAG694
sh $3, 0($3)
TAG694:
lui $1, 4
add $1, $3, $3
xori $2, $1, 1
bgtz $1, TAG695
TAG695:
addiu $3, $2, 14
mthi $2
blez $3, TAG696
andi $1, $3, 6
TAG696:
mtlo $1
xor $3, $1, $1
beq $3, $3, TAG697
mthi $1
TAG697:
multu $3, $3
multu $3, $3
blez $3, TAG698
mult $3, $3
TAG698:
sltiu $4, $3, 14
lbu $2, 0($4)
mult $2, $3
slti $1, $3, 5
TAG699:
lui $2, 4
bgez $2, TAG700
divu $1, $2
lui $1, 1
TAG700:
lui $2, 13
bgtz $1, TAG701
mult $1, $1
multu $1, $1
TAG701:
mflo $2
lui $3, 2
mult $2, $2
bltz $3, TAG702
TAG702:
lui $1, 11
lui $4, 13
beq $4, $3, TAG703
addiu $2, $1, 11
TAG703:
mfhi $2
mfhi $4
mthi $2
lw $2, 0($2)
TAG704:
mfhi $1
bne $2, $1, TAG705
lui $2, 9
lui $1, 15
TAG705:
multu $1, $1
sllv $2, $1, $1
bne $2, $2, TAG706
lui $4, 7
TAG706:
slti $2, $4, 11
sra $2, $4, 5
or $3, $4, $2
beq $2, $2, TAG707
TAG707:
multu $3, $3
beq $3, $3, TAG708
sltiu $2, $3, 8
mtlo $3
TAG708:
mfhi $2
blez $2, TAG709
mflo $4
lw $4, 0($2)
TAG709:
multu $4, $4
or $3, $4, $4
bltz $4, TAG710
addi $2, $4, 11
TAG710:
divu $2, $2
sll $4, $2, 0
mfhi $1
lui $1, 12
TAG711:
beq $1, $1, TAG712
sll $0, $0, 0
bne $1, $1, TAG712
lb $2, 0($1)
TAG712:
lb $3, 0($2)
sub $3, $2, $3
bne $3, $3, TAG713
lb $3, 0($2)
TAG713:
mult $3, $3
mflo $4
mfhi $3
mflo $2
TAG714:
lui $3, 10
beq $3, $3, TAG715
mthi $2
bne $2, $2, TAG715
TAG715:
mthi $3
lui $3, 3
mflo $2
bne $2, $2, TAG716
TAG716:
lw $2, 0($2)
mflo $1
mtlo $2
beq $2, $2, TAG717
TAG717:
mtlo $1
sh $1, 0($1)
mult $1, $1
or $3, $1, $1
TAG718:
mtlo $3
lui $3, 3
subu $2, $3, $3
mtlo $2
TAG719:
mtlo $2
bgtz $2, TAG720
lui $1, 7
sll $2, $2, 5
TAG720:
beq $2, $2, TAG721
ori $2, $2, 5
bne $2, $2, TAG721
sllv $1, $2, $2
TAG721:
xori $3, $1, 9
sll $0, $0, 0
addu $3, $2, $3
mtlo $3
TAG722:
mfhi $1
mtlo $1
sltu $3, $1, $1
lui $1, 12
TAG723:
sll $0, $0, 0
mtlo $1
mthi $1
sll $0, $0, 0
TAG724:
lui $3, 4
divu $3, $1
slt $4, $3, $3
mfhi $2
TAG725:
mfhi $4
beq $4, $2, TAG726
mthi $2
sb $2, 0($2)
TAG726:
sll $0, $0, 0
mfhi $2
mfhi $3
mtlo $2
TAG727:
mtlo $3
lui $4, 5
bgtz $4, TAG728
lui $3, 13
TAG728:
beq $3, $3, TAG729
mtlo $3
addu $1, $3, $3
mflo $4
TAG729:
mtlo $4
mflo $3
mtlo $4
addiu $2, $3, 6
TAG730:
div $2, $2
bgez $2, TAG731
sll $0, $0, 0
bne $2, $2, TAG731
TAG731:
sllv $3, $2, $2
lui $2, 1
sll $0, $0, 0
lui $3, 4
TAG732:
sll $0, $0, 0
sll $0, $0, 0
nor $4, $3, $2
bltz $3, TAG733
TAG733:
lui $4, 4
mfhi $2
beq $2, $2, TAG734
sllv $3, $2, $4
TAG734:
blez $3, TAG735
lhu $4, 0($3)
mflo $2
lui $3, 2
TAG735:
multu $3, $3
lui $2, 2
sll $1, $3, 14
mtlo $3
TAG736:
and $1, $1, $1
mfhi $4
srl $4, $1, 8
mtlo $4
TAG737:
lhu $3, 0($4)
xori $2, $4, 5
lbu $2, 0($2)
addi $2, $3, 6
TAG738:
divu $2, $2
div $2, $2
lui $3, 8
mtlo $2
TAG739:
beq $3, $3, TAG740
sllv $1, $3, $3
lbu $4, 0($1)
mult $1, $1
TAG740:
sll $2, $4, 9
sb $2, 0($2)
slti $3, $2, 4
lui $3, 1
TAG741:
mtlo $3
mfhi $3
mult $3, $3
mult $3, $3
TAG742:
bgez $3, TAG743
mult $3, $3
bltz $3, TAG743
sb $3, 0($3)
TAG743:
sllv $3, $3, $3
add $3, $3, $3
mtlo $3
lhu $3, 0($3)
TAG744:
mflo $1
multu $1, $3
lh $3, 0($1)
lh $4, 0($3)
TAG745:
lb $3, 0($4)
sh $3, 0($3)
nor $1, $4, $4
sb $3, 0($3)
TAG746:
xor $3, $1, $1
lui $4, 3
lui $1, 11
sltu $1, $3, $4
TAG747:
bne $1, $1, TAG748
sb $1, 0($1)
mtlo $1
bne $1, $1, TAG748
TAG748:
subu $3, $1, $1
lui $1, 15
blez $3, TAG749
multu $1, $3
TAG749:
sll $0, $0, 0
mult $1, $1
mthi $1
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop