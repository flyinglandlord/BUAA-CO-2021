ori $1, $0, 8
ori $2, $0, 2
ori $3, $0, 12
ori $4, $0, 2
sw $3, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $1, 12($0)
sw $2, 16($0)
sw $2, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $1, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $1, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $3, 112($0)
sw $3, 116($0)
sw $3, 120($0)
sw $2, 124($0)
xor $2, $2, $2
mult $2, $2
bgtz $2, TAG1
sw $2, 0($2)
TAG1:
mtlo $2
andi $3, $2, 0
mflo $1
bltz $1, TAG2
TAG2:
addiu $4, $1, 15
mthi $4
lui $3, 14
srlv $4, $1, $3
TAG3:
srlv $1, $4, $4
mthi $4
mthi $4
sh $4, 0($4)
TAG4:
sra $3, $1, 15
sh $1, 0($3)
lui $4, 14
bltz $4, TAG5
TAG5:
lui $1, 7
srav $2, $4, $4
subu $4, $1, $1
or $4, $4, $4
TAG6:
bgtz $4, TAG7
lui $1, 0
subu $1, $4, $4
mtlo $4
TAG7:
srlv $4, $1, $1
lh $1, 0($1)
lui $4, 8
multu $1, $1
TAG8:
mthi $4
ori $1, $4, 9
bltz $1, TAG9
mthi $4
TAG9:
bne $1, $1, TAG10
mtlo $1
div $1, $1
slti $1, $1, 3
TAG10:
lui $2, 13
beq $1, $1, TAG11
lb $1, 0($1)
beq $1, $1, TAG11
TAG11:
sb $1, 0($1)
mtlo $1
and $1, $1, $1
bne $1, $1, TAG12
TAG12:
srl $1, $1, 8
mfhi $2
beq $2, $2, TAG13
addi $4, $1, 8
TAG13:
addu $3, $4, $4
lui $4, 5
ori $2, $4, 8
bne $4, $4, TAG14
TAG14:
lui $4, 12
sll $0, $0, 0
div $2, $2
sltiu $4, $4, 2
TAG15:
bne $4, $4, TAG16
sw $4, 0($4)
mthi $4
mfhi $2
TAG16:
srlv $1, $2, $2
sb $2, 0($1)
sll $4, $1, 2
mult $1, $2
TAG17:
bgez $4, TAG18
multu $4, $4
divu $4, $4
blez $4, TAG18
TAG18:
xor $3, $4, $4
lui $4, 3
sll $1, $4, 5
mthi $4
TAG19:
ori $1, $1, 11
lui $2, 14
bne $1, $1, TAG20
lui $1, 5
TAG20:
lui $4, 0
sll $0, $0, 0
sll $0, $0, 0
sltu $4, $3, $1
TAG21:
mthi $4
bne $4, $4, TAG22
multu $4, $4
mflo $2
TAG22:
beq $2, $2, TAG23
sb $2, 0($2)
sw $2, 0($2)
mflo $2
TAG23:
mtlo $2
mtlo $2
sb $2, 0($2)
lui $1, 13
TAG24:
sll $1, $1, 13
sll $0, $0, 0
mflo $2
lui $3, 0
TAG25:
mthi $3
lb $1, 0($3)
sra $4, $1, 4
sw $1, 0($3)
TAG26:
sra $3, $4, 9
lhu $2, 0($4)
beq $3, $4, TAG27
sll $1, $3, 13
TAG27:
bne $1, $1, TAG28
mult $1, $1
lui $2, 13
lui $2, 15
TAG28:
bgtz $2, TAG29
mthi $2
sw $2, 0($2)
sltiu $1, $2, 11
TAG29:
lui $2, 0
mthi $2
lw $4, 0($2)
blez $1, TAG30
TAG30:
sh $4, 0($4)
beq $4, $4, TAG31
mthi $4
add $2, $4, $4
TAG31:
mthi $2
multu $2, $2
lw $1, 0($2)
lbu $2, 0($2)
TAG32:
mflo $2
mfhi $2
sllv $1, $2, $2
sw $1, 0($2)
TAG33:
lbu $1, 0($1)
lbu $3, 0($1)
subu $1, $3, $3
lw $4, 0($1)
TAG34:
addi $3, $4, 9
mthi $3
lui $3, 12
sb $4, 0($4)
TAG35:
mflo $4
multu $4, $4
sw $3, 0($4)
sll $0, $0, 0
TAG36:
mtlo $1
lui $1, 9
bne $1, $1, TAG37
divu $1, $1
TAG37:
mtlo $1
sll $0, $0, 0
lui $1, 2
bne $1, $1, TAG38
TAG38:
mflo $3
mthi $1
mthi $3
mflo $3
TAG39:
bne $3, $3, TAG40
mthi $3
andi $2, $3, 13
mtlo $2
TAG40:
bne $2, $2, TAG41
mflo $3
and $3, $2, $2
sb $3, 0($3)
TAG41:
lui $2, 0
bgez $2, TAG42
mthi $2
xor $4, $2, $2
TAG42:
lhu $3, 0($4)
sh $4, 0($4)
multu $4, $3
bltz $4, TAG43
TAG43:
sw $3, 0($3)
srav $1, $3, $3
mult $1, $3
xori $3, $3, 12
TAG44:
srlv $2, $3, $3
mthi $3
and $1, $2, $3
lui $3, 10
TAG45:
srlv $1, $3, $3
subu $2, $3, $3
lui $2, 11
bgtz $2, TAG46
TAG46:
sll $0, $0, 0
mthi $2
xori $2, $2, 7
lui $4, 9
TAG47:
addu $3, $4, $4
lui $1, 1
bne $4, $3, TAG48
ori $3, $3, 10
TAG48:
mtlo $3
lui $3, 6
nor $4, $3, $3
div $4, $3
TAG49:
sll $0, $0, 0
mult $4, $4
bgtz $3, TAG50
xori $4, $4, 11
TAG50:
div $4, $4
lui $2, 0
lui $1, 3
sll $0, $0, 0
TAG51:
sw $2, 0($2)
bne $2, $2, TAG52
mult $2, $2
lui $4, 1
TAG52:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG53:
andi $3, $4, 5
andi $3, $3, 6
mthi $3
mthi $3
TAG54:
multu $3, $3
lui $2, 8
bgez $2, TAG55
mflo $4
TAG55:
bltz $4, TAG56
multu $4, $4
mflo $2
sw $4, 0($4)
TAG56:
bne $2, $2, TAG57
lui $4, 12
mflo $2
srav $1, $2, $2
TAG57:
lb $4, 0($1)
bgez $1, TAG58
lh $4, 0($1)
lbu $3, 0($4)
TAG58:
lw $1, 0($3)
sllv $3, $3, $1
xor $2, $3, $3
mtlo $3
TAG59:
lui $4, 10
lui $4, 7
div $4, $4
sw $4, 0($2)
TAG60:
div $4, $4
mfhi $3
mflo $2
sll $0, $0, 0
TAG61:
bgtz $3, TAG62
add $4, $3, $3
xori $2, $3, 5
sltu $4, $3, $2
TAG62:
srl $4, $4, 13
andi $1, $4, 4
sltiu $4, $4, 14
bne $4, $4, TAG63
TAG63:
lbu $2, 0($4)
lui $2, 9
srl $3, $2, 12
beq $2, $2, TAG64
TAG64:
lui $1, 1
lui $3, 3
mthi $3
beq $1, $3, TAG65
TAG65:
mflo $2
xori $3, $3, 0
sllv $1, $3, $3
sb $3, 0($2)
TAG66:
bgtz $1, TAG67
lui $4, 13
mflo $4
mfhi $1
TAG67:
bne $1, $1, TAG68
sll $0, $0, 0
mfhi $3
blez $3, TAG68
TAG68:
sll $0, $0, 0
mtlo $3
sltu $4, $3, $3
sll $0, $0, 0
TAG69:
sb $4, 0($4)
sltiu $1, $4, 1
bgtz $1, TAG70
sb $1, 0($1)
TAG70:
srl $4, $1, 3
sb $1, 0($1)
mfhi $2
divu $2, $2
TAG71:
sll $0, $0, 0
mthi $4
mtlo $2
lb $1, 0($4)
TAG72:
mfhi $4
beq $1, $4, TAG73
mtlo $4
xor $1, $1, $4
TAG73:
sltu $3, $1, $1
sllv $2, $1, $1
srlv $3, $3, $3
mthi $2
TAG74:
mthi $3
mtlo $3
andi $2, $3, 15
mthi $3
TAG75:
sub $4, $2, $2
lui $1, 7
addiu $4, $1, 7
lui $4, 2
TAG76:
mfhi $1
beq $4, $4, TAG77
sll $0, $0, 0
sh $3, 0($4)
TAG77:
and $3, $3, $3
sb $3, 0($3)
sllv $2, $3, $3
mfhi $1
TAG78:
mflo $2
bne $1, $1, TAG79
sub $3, $2, $2
blez $2, TAG79
TAG79:
mult $3, $3
mthi $3
blez $3, TAG80
lh $4, 0($3)
TAG80:
mflo $4
lh $1, 0($4)
mthi $4
beq $1, $4, TAG81
TAG81:
divu $1, $1
ori $1, $1, 11
bne $1, $1, TAG82
lui $1, 2
TAG82:
mthi $1
srl $2, $1, 8
lui $2, 13
mthi $1
TAG83:
mtlo $2
bgtz $2, TAG84
divu $2, $2
sb $2, 0($2)
TAG84:
mflo $4
addu $1, $4, $2
sb $1, 0($4)
lbu $4, 0($4)
TAG85:
beq $4, $4, TAG86
lb $3, 0($4)
sltu $2, $4, $3
bgtz $4, TAG86
TAG86:
addu $4, $2, $2
sra $3, $4, 15
addiu $4, $3, 7
bltz $4, TAG87
TAG87:
lui $3, 9
mtlo $3
ori $3, $3, 12
andi $3, $3, 9
TAG88:
mfhi $1
lui $3, 3
sll $0, $0, 0
xori $3, $3, 11
TAG89:
srl $2, $3, 7
blez $2, TAG90
slti $3, $3, 2
bgez $2, TAG90
TAG90:
sh $3, 0($3)
sw $3, 0($3)
mtlo $3
bne $3, $3, TAG91
TAG91:
addu $2, $3, $3
lb $3, 0($2)
addi $3, $3, 6
lbu $3, 0($2)
TAG92:
sw $3, 0($3)
mfhi $3
mtlo $3
lui $4, 0
TAG93:
lui $4, 6
blez $4, TAG94
sll $0, $0, 0
mfhi $4
TAG94:
beq $4, $4, TAG95
lui $3, 13
mflo $2
lui $1, 2
TAG95:
mthi $1
addiu $4, $1, 5
mult $1, $4
lui $3, 11
TAG96:
bgez $3, TAG97
sll $0, $0, 0
bltz $3, TAG97
lui $4, 1
TAG97:
lui $4, 8
slti $1, $4, 4
bgtz $1, TAG98
sb $1, 0($1)
TAG98:
xori $1, $1, 10
lui $1, 2
mfhi $1
multu $1, $1
TAG99:
beq $1, $1, TAG100
mtlo $1
sb $1, 0($1)
lui $1, 6
TAG100:
sb $1, 0($1)
beq $1, $1, TAG101
lb $2, 0($1)
lui $2, 9
TAG101:
mthi $2
lb $3, 0($2)
mflo $1
bne $1, $3, TAG102
TAG102:
lhu $2, 0($1)
mthi $2
mthi $1
sh $2, 0($1)
TAG103:
bne $2, $2, TAG104
and $1, $2, $2
mthi $2
lui $2, 13
TAG104:
sll $0, $0, 0
addu $3, $2, $2
sll $0, $0, 0
blez $2, TAG105
TAG105:
sll $2, $2, 4
mthi $2
srl $4, $2, 3
xori $2, $4, 5
TAG106:
sll $0, $0, 0
ori $2, $2, 6
mthi $2
sll $0, $0, 0
TAG107:
and $4, $3, $3
lui $2, 6
lui $1, 6
bgez $4, TAG108
TAG108:
mtlo $1
mflo $2
sll $0, $0, 0
mflo $2
TAG109:
sll $0, $0, 0
addiu $1, $2, 8
mfhi $1
lui $3, 14
TAG110:
mflo $4
divu $4, $3
div $4, $3
mthi $3
TAG111:
xor $2, $4, $4
bgtz $2, TAG112
mfhi $3
mult $4, $4
TAG112:
bgez $3, TAG113
sll $0, $0, 0
bne $3, $3, TAG113
sb $3, 0($3)
TAG113:
mtlo $3
sll $0, $0, 0
mfhi $3
sll $0, $0, 0
TAG114:
beq $4, $4, TAG115
div $4, $4
mult $4, $4
beq $4, $4, TAG115
TAG115:
mult $4, $4
bltz $4, TAG116
lui $4, 14
mtlo $4
TAG116:
bgtz $4, TAG117
mthi $4
bne $4, $4, TAG117
mfhi $3
TAG117:
sll $1, $3, 15
sll $0, $0, 0
bne $1, $1, TAG118
nor $4, $1, $3
TAG118:
sll $0, $0, 0
multu $4, $2
addi $1, $2, 4
sll $0, $0, 0
TAG119:
mult $1, $1
bne $1, $1, TAG120
nor $3, $1, $1
mthi $3
TAG120:
xori $2, $3, 13
lui $3, 10
sra $4, $3, 7
blez $3, TAG121
TAG121:
or $3, $4, $4
sh $3, -5120($3)
mtlo $3
mthi $3
TAG122:
lui $1, 1
divu $3, $1
multu $3, $3
ori $3, $3, 10
TAG123:
lui $3, 14
sll $0, $0, 0
bne $3, $1, TAG124
sll $0, $0, 0
TAG124:
mfhi $1
bgez $3, TAG125
mthi $3
mtlo $3
TAG125:
mfhi $2
mflo $2
sra $3, $1, 0
mtlo $2
TAG126:
blez $3, TAG127
mtlo $3
mtlo $3
lbu $1, 0($3)
TAG127:
addiu $1, $1, 14
lh $4, 0($1)
lui $1, 11
mtlo $1
TAG128:
bgtz $1, TAG129
slti $1, $1, 1
bne $1, $1, TAG129
mflo $1
TAG129:
mtlo $1
add $2, $1, $1
mflo $2
lw $1, 0($1)
TAG130:
sll $0, $0, 0
lhu $4, -5120($1)
multu $1, $1
mflo $3
TAG131:
sll $0, $0, 0
bgez $2, TAG132
sll $0, $0, 0
lui $2, 10
TAG132:
lui $3, 4
mtlo $2
sltu $3, $3, $3
sw $2, 0($3)
TAG133:
mult $3, $3
sb $3, 0($3)
sb $3, 0($3)
sh $3, 0($3)
TAG134:
mflo $1
multu $3, $3
mfhi $2
lui $1, 7
TAG135:
sll $4, $1, 14
mflo $3
mthi $3
slt $2, $1, $3
TAG136:
sh $2, 0($2)
slti $2, $2, 3
blez $2, TAG137
mtlo $2
TAG137:
mflo $4
lui $1, 8
mfhi $4
beq $4, $2, TAG138
TAG138:
mflo $1
bltz $1, TAG139
mult $4, $4
slt $3, $4, $4
TAG139:
mflo $4
mthi $4
bne $3, $3, TAG140
addu $2, $4, $3
TAG140:
multu $2, $2
addi $2, $2, 5
mtlo $2
lbu $3, 0($2)
TAG141:
lw $2, 0($3)
lui $1, 2
multu $1, $2
sll $0, $0, 0
TAG142:
divu $1, $1
mflo $3
lui $4, 15
lui $1, 13
TAG143:
mthi $1
sll $0, $0, 0
mfhi $4
mfhi $1
TAG144:
sltiu $1, $1, 4
mfhi $4
mflo $3
beq $3, $1, TAG145
TAG145:
divu $3, $3
mult $3, $3
or $3, $3, $3
blez $3, TAG146
TAG146:
lui $2, 11
sb $2, 0($3)
or $2, $2, $3
mult $2, $3
TAG147:
xori $3, $2, 0
lui $2, 15
sll $0, $0, 0
beq $2, $2, TAG148
TAG148:
ori $1, $3, 2
addiu $3, $1, 4
addiu $3, $1, 0
subu $1, $3, $3
TAG149:
lhu $1, 0($1)
lh $3, 0($1)
mflo $3
multu $3, $1
TAG150:
subu $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG151
TAG151:
multu $2, $2
bne $2, $2, TAG152
mtlo $2
blez $2, TAG152
TAG152:
mult $2, $2
sll $3, $2, 14
sllv $1, $2, $2
lui $3, 9
TAG153:
bne $3, $3, TAG154
divu $3, $3
sll $0, $0, 0
slti $3, $3, 8
TAG154:
sll $4, $3, 0
sub $4, $4, $4
sltu $2, $4, $4
lui $4, 7
TAG155:
lui $3, 5
mflo $1
mtlo $4
sra $3, $3, 1
TAG156:
sll $0, $0, 0
mfhi $3
multu $3, $3
lh $3, 0($3)
TAG157:
lh $2, 0($3)
beq $3, $3, TAG158
lui $2, 0
beq $2, $3, TAG158
TAG158:
add $4, $2, $2
mult $2, $2
sh $2, 0($2)
xori $1, $2, 10
TAG159:
sh $1, 0($1)
sh $1, 0($1)
mfhi $4
sb $1, 0($4)
TAG160:
lui $1, 9
lui $3, 5
srl $4, $3, 4
beq $1, $4, TAG161
TAG161:
sll $0, $0, 0
bne $4, $4, TAG162
mthi $4
bgtz $4, TAG162
TAG162:
mfhi $1
bne $1, $1, TAG163
andi $4, $4, 13
bne $4, $4, TAG163
TAG163:
mthi $4
mtlo $4
lh $1, 0($4)
bne $4, $1, TAG164
TAG164:
lh $2, 0($1)
multu $2, $2
sh $1, 0($1)
lui $2, 9
TAG165:
lui $1, 14
slti $4, $1, 11
mflo $2
sw $4, 0($2)
TAG166:
divu $2, $2
lw $3, 0($2)
mult $3, $3
slti $3, $2, 14
TAG167:
sh $3, 0($3)
sllv $1, $3, $3
blez $1, TAG168
srav $1, $3, $3
TAG168:
lui $1, 8
mthi $1
slti $1, $1, 15
mflo $4
TAG169:
multu $4, $4
lhu $1, 0($4)
lbu $2, 0($4)
mthi $1
TAG170:
lb $4, 0($2)
lbu $4, 0($2)
mthi $4
mthi $4
TAG171:
ori $2, $4, 2
lui $4, 4
bltz $4, TAG172
mfhi $1
TAG172:
sw $1, 0($1)
lui $3, 3
sll $0, $0, 0
sltiu $4, $1, 6
TAG173:
mfhi $3
sw $4, 0($3)
mfhi $3
mult $3, $3
TAG174:
bne $3, $3, TAG175
lb $2, 0($3)
bgtz $2, TAG175
srl $2, $2, 13
TAG175:
bne $2, $2, TAG176
lui $4, 3
beq $2, $4, TAG176
mtlo $2
TAG176:
sltiu $3, $4, 11
sll $0, $0, 0
mtlo $3
bgtz $4, TAG177
TAG177:
mfhi $2
lhu $1, 0($2)
lb $2, 0($1)
lui $1, 9
TAG178:
mult $1, $1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG179:
bne $1, $1, TAG180
ori $4, $1, 3
nor $3, $4, $4
bne $3, $4, TAG180
TAG180:
mtlo $3
bne $3, $3, TAG181
sll $0, $0, 0
slt $4, $1, $1
TAG181:
mflo $3
mfhi $3
sra $3, $4, 0
bne $3, $4, TAG182
TAG182:
sb $3, 0($3)
bgez $3, TAG183
andi $1, $3, 8
sh $1, 0($3)
TAG183:
and $2, $1, $1
sll $2, $2, 2
mfhi $3
ori $1, $3, 7
TAG184:
slti $2, $1, 4
addu $2, $1, $2
sll $0, $0, 0
lui $1, 1
TAG185:
sll $0, $0, 0
mfhi $1
div $3, $1
bltz $1, TAG186
TAG186:
sra $4, $1, 8
sll $0, $0, 0
div $1, $4
lh $2, -2304($4)
TAG187:
bltz $2, TAG188
sw $2, 0($2)
sw $2, 0($2)
multu $2, $2
TAG188:
addiu $3, $2, 7
beq $2, $3, TAG189
lui $3, 9
lui $4, 10
TAG189:
mult $4, $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG190:
mthi $1
addiu $3, $1, 1
sll $0, $0, 0
sll $0, $0, 0
TAG191:
mult $1, $1
xori $2, $1, 1
sll $0, $0, 0
lui $4, 9
TAG192:
divu $4, $4
div $4, $4
beq $4, $4, TAG193
sll $0, $0, 0
TAG193:
sll $0, $0, 0
addiu $4, $3, 15
lui $3, 10
sll $0, $0, 0
TAG194:
divu $3, $3
bne $3, $3, TAG195
mtlo $3
mthi $3
TAG195:
sll $0, $0, 0
beq $3, $3, TAG196
mthi $3
bltz $3, TAG196
TAG196:
mflo $4
andi $2, $3, 6
beq $4, $4, TAG197
mthi $2
TAG197:
sltiu $4, $2, 2
mfhi $2
sb $2, 0($4)
mflo $4
TAG198:
bltz $4, TAG199
sll $0, $0, 0
mtlo $4
lui $4, 7
TAG199:
mflo $2
sltu $2, $4, $2
addiu $1, $4, 14
sb $2, 0($2)
TAG200:
sll $0, $0, 0
srlv $2, $1, $1
mthi $2
beq $1, $2, TAG201
TAG201:
addiu $2, $2, 2
mtlo $2
beq $2, $2, TAG202
lh $4, 0($2)
TAG202:
bgtz $4, TAG203
addiu $4, $4, 8
bgtz $4, TAG203
lh $1, 0($4)
TAG203:
subu $2, $1, $1
sw $1, 0($2)
sub $2, $1, $2
slt $1, $1, $1
TAG204:
blez $1, TAG205
lbu $2, 0($1)
lui $4, 3
sltiu $1, $1, 15
TAG205:
multu $1, $1
slti $1, $1, 5
lbu $2, 0($1)
bgtz $2, TAG206
TAG206:
lbu $2, 0($2)
bgtz $2, TAG207
lui $4, 8
lui $2, 2
TAG207:
sltiu $2, $2, 13
addiu $1, $2, 1
sb $2, 0($2)
bgez $2, TAG208
TAG208:
div $1, $1
srlv $4, $1, $1
lh $3, 0($4)
mtlo $1
TAG209:
sll $0, $0, 0
lbu $3, 0($2)
bltz $3, TAG210
sllv $3, $3, $3
TAG210:
mtlo $3
mflo $4
lb $1, 0($3)
or $4, $1, $3
TAG211:
or $3, $4, $4
bne $3, $4, TAG212
nor $3, $4, $4
lui $3, 5
TAG212:
addu $3, $3, $3
bgtz $3, TAG213
divu $3, $3
or $2, $3, $3
TAG213:
and $2, $2, $2
mtlo $2
sltiu $4, $2, 12
bgtz $2, TAG214
TAG214:
multu $4, $4
bltz $4, TAG215
divu $4, $4
mtlo $4
TAG215:
mult $4, $4
mfhi $4
mtlo $4
mflo $4
TAG216:
mflo $4
ori $1, $4, 9
lh $4, 0($4)
sb $4, 0($1)
TAG217:
bltz $4, TAG218
sll $4, $4, 13
lui $3, 12
slti $4, $4, 7
TAG218:
beq $4, $4, TAG219
sh $4, 0($4)
mtlo $4
lui $4, 14
TAG219:
blez $4, TAG220
mult $4, $4
lui $4, 12
mfhi $1
TAG220:
beq $1, $1, TAG221
div $1, $1
and $3, $1, $1
mtlo $3
TAG221:
sll $0, $0, 0
beq $3, $3, TAG222
sll $0, $0, 0
mtlo $3
TAG222:
mfhi $3
mult $3, $3
bgez $3, TAG223
mfhi $1
TAG223:
sb $1, 0($1)
beq $1, $1, TAG224
mflo $3
multu $1, $1
TAG224:
mtlo $3
sb $3, 0($3)
lbu $2, 0($3)
sh $3, 0($3)
TAG225:
sb $2, 0($2)
bgez $2, TAG226
sltu $4, $2, $2
lui $1, 9
TAG226:
lbu $2, 0($1)
mtlo $1
bgtz $2, TAG227
sw $2, 0($1)
TAG227:
mflo $3
sb $3, 0($3)
bgez $3, TAG228
sllv $3, $2, $2
TAG228:
slti $4, $3, 12
sb $4, 0($4)
lb $1, 0($4)
lb $4, 0($1)
TAG229:
mthi $4
andi $4, $4, 7
mult $4, $4
sb $4, 0($4)
TAG230:
addu $4, $4, $4
mthi $4
divu $4, $4
blez $4, TAG231
TAG231:
sh $4, 0($4)
or $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG232
TAG232:
mult $4, $4
addiu $3, $4, 8
mflo $4
nor $1, $4, $3
TAG233:
sb $1, 15($1)
mtlo $1
lw $3, 15($1)
lui $4, 3
TAG234:
subu $4, $4, $4
mult $4, $4
sltiu $1, $4, 4
mtlo $4
TAG235:
lbu $1, 0($1)
srl $1, $1, 12
mthi $1
multu $1, $1
TAG236:
mtlo $1
addu $4, $1, $1
bne $1, $1, TAG237
mult $4, $1
TAG237:
mult $4, $4
mtlo $4
lui $1, 12
sll $0, $0, 0
TAG238:
sll $0, $0, 0
sltu $1, $1, $1
mflo $4
mthi $1
TAG239:
sh $4, 0($4)
lui $1, 8
mflo $2
bne $2, $1, TAG240
TAG240:
lb $2, 0($2)
mtlo $2
addi $4, $2, 11
bne $2, $2, TAG241
TAG241:
mtlo $4
bgez $4, TAG242
srl $2, $4, 8
beq $2, $4, TAG242
TAG242:
mtlo $2
bne $2, $2, TAG243
slt $4, $2, $2
xori $3, $4, 3
TAG243:
beq $3, $3, TAG244
lui $1, 7
div $3, $3
xor $2, $3, $1
TAG244:
sh $2, 0($2)
lbu $2, 0($2)
addiu $4, $2, 10
lui $1, 10
TAG245:
sllv $2, $1, $1
beq $1, $2, TAG246
mfhi $4
lui $3, 4
TAG246:
mult $3, $3
srav $4, $3, $3
mfhi $1
sltu $4, $3, $3
TAG247:
sw $4, 0($4)
mult $4, $4
lui $2, 4
bgez $4, TAG248
TAG248:
sll $0, $0, 0
lhu $4, 0($4)
sb $4, 0($4)
mult $4, $4
TAG249:
multu $4, $4
beq $4, $4, TAG250
mthi $4
lui $4, 8
TAG250:
mthi $4
addu $4, $4, $4
sltiu $4, $4, 6
sltiu $1, $4, 12
TAG251:
lbu $1, 0($1)
mflo $3
bne $1, $3, TAG252
mtlo $3
TAG252:
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
sltiu $4, $4, 14
TAG253:
sb $4, 0($4)
bgtz $4, TAG254
sb $4, 0($4)
addu $3, $4, $4
TAG254:
mfhi $2
lui $4, 8
sll $0, $0, 0
bgtz $3, TAG255
TAG255:
lui $3, 11
sh $3, 0($2)
mflo $2
srlv $1, $3, $2
TAG256:
sll $0, $0, 0
mfhi $1
bltz $1, TAG257
lh $2, 0($1)
TAG257:
bgez $2, TAG258
mflo $1
beq $2, $1, TAG258
mthi $2
TAG258:
xor $2, $1, $1
andi $4, $1, 14
sllv $1, $1, $2
lh $3, 0($1)
TAG259:
bgtz $3, TAG260
slti $4, $3, 5
bne $4, $3, TAG260
multu $4, $3
TAG260:
beq $4, $4, TAG261
sb $4, 0($4)
bgez $4, TAG261
sb $4, 0($4)
TAG261:
xori $3, $4, 1
mfhi $3
sh $4, 0($3)
multu $4, $3
TAG262:
bgtz $3, TAG263
lbu $4, 0($3)
mthi $3
multu $3, $4
TAG263:
mtlo $4
lui $4, 5
sll $0, $0, 0
beq $1, $4, TAG264
TAG264:
mflo $4
mthi $1
blez $4, TAG265
mfhi $4
TAG265:
mflo $4
andi $3, $4, 9
mthi $3
lb $1, 0($3)
TAG266:
add $1, $1, $1
sh $1, 0($1)
multu $1, $1
sh $1, 0($1)
TAG267:
multu $1, $1
srav $1, $1, $1
mult $1, $1
lui $4, 11
TAG268:
subu $1, $4, $4
bne $4, $4, TAG269
xori $3, $1, 1
add $1, $1, $4
TAG269:
mflo $4
mult $4, $1
bgtz $1, TAG270
sll $0, $0, 0
TAG270:
sw $4, 0($4)
beq $4, $4, TAG271
mfhi $4
slti $1, $4, 15
TAG271:
sll $0, $0, 0
addu $1, $1, $1
sll $0, $0, 0
mtlo $1
TAG272:
lui $3, 6
mthi $1
lui $3, 4
bgtz $1, TAG273
TAG273:
lui $3, 14
addiu $3, $3, 2
divu $3, $3
mtlo $3
TAG274:
beq $3, $3, TAG275
mfhi $2
addi $2, $2, 6
lhu $3, 0($2)
TAG275:
bgtz $3, TAG276
slt $2, $3, $3
beq $3, $2, TAG276
lui $4, 3
TAG276:
lw $4, 0($4)
slti $1, $4, 1
srl $1, $4, 8
mult $1, $4
TAG277:
blez $1, TAG278
sll $1, $1, 10
sll $2, $1, 5
bne $2, $1, TAG278
TAG278:
lw $3, 0($2)
sb $2, 0($3)
multu $3, $2
mfhi $4
TAG279:
slti $3, $4, 2
beq $3, $4, TAG280
multu $4, $3
mtlo $3
TAG280:
sb $3, 0($3)
lbu $4, 0($3)
mtlo $3
mfhi $1
TAG281:
sh $1, 0($1)
lui $2, 9
or $2, $1, $1
multu $2, $2
TAG282:
mthi $2
multu $2, $2
beq $2, $2, TAG283
srlv $4, $2, $2
TAG283:
mtlo $4
lui $1, 11
sll $0, $0, 0
lhu $3, 0($4)
TAG284:
mflo $1
lb $4, 0($1)
slt $2, $3, $1
mfhi $2
TAG285:
mtlo $2
sh $2, 0($2)
beq $2, $2, TAG286
xor $1, $2, $2
TAG286:
bne $1, $1, TAG287
lw $1, 0($1)
bgez $1, TAG287
mult $1, $1
TAG287:
sw $1, 0($1)
mthi $1
lui $3, 5
sltiu $2, $1, 11
TAG288:
mfhi $1
mult $2, $1
nor $2, $1, $1
div $2, $2
TAG289:
bne $2, $2, TAG290
sh $2, 1($2)
blez $2, TAG290
sllv $1, $2, $2
TAG290:
xori $2, $1, 3
sll $0, $0, 0
lui $3, 4
beq $1, $1, TAG291
TAG291:
or $3, $3, $3
bne $3, $3, TAG292
divu $3, $3
nor $4, $3, $3
TAG292:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
mflo $2
TAG293:
sb $2, 0($2)
multu $2, $2
mult $2, $2
mthi $2
TAG294:
ori $3, $2, 9
mtlo $3
sb $3, 0($3)
blez $3, TAG295
TAG295:
mfhi $4
beq $4, $3, TAG296
addiu $3, $3, 13
lui $1, 2
TAG296:
mflo $3
lui $4, 1
lb $2, 0($3)
divu $1, $4
TAG297:
lb $1, 0($2)
mtlo $2
sb $2, 0($2)
lb $2, 0($1)
TAG298:
mtlo $2
div $2, $2
lbu $4, 0($2)
xor $4, $4, $2
TAG299:
sb $4, 0($4)
multu $4, $4
beq $4, $4, TAG300
lb $1, 0($4)
TAG300:
lui $2, 1
lui $4, 7
sll $0, $0, 0
mtlo $4
TAG301:
divu $4, $4
sltiu $3, $4, 6
mflo $2
bgtz $4, TAG302
TAG302:
lui $2, 9
mtlo $2
multu $2, $2
sltu $3, $2, $2
TAG303:
lhu $2, 0($3)
lb $2, 0($3)
bne $3, $3, TAG304
sw $3, 0($3)
TAG304:
bne $2, $2, TAG305
mfhi $1
addiu $4, $1, 0
srl $1, $1, 2
TAG305:
sh $1, 0($1)
lui $2, 9
multu $2, $2
bne $1, $2, TAG306
TAG306:
subu $1, $2, $2
bne $1, $1, TAG307
sll $0, $0, 0
blez $1, TAG307
TAG307:
mtlo $2
bne $2, $2, TAG308
sll $0, $0, 0
lui $1, 9
TAG308:
bgtz $1, TAG309
mtlo $1
bltz $1, TAG309
mthi $1
TAG309:
sltiu $1, $1, 1
mthi $1
srlv $2, $1, $1
beq $1, $1, TAG310
TAG310:
mfhi $1
sltu $3, $1, $2
lui $1, 0
blez $2, TAG311
TAG311:
mtlo $1
mflo $2
bgtz $1, TAG312
lui $2, 5
TAG312:
xori $4, $2, 2
bgez $4, TAG313
mtlo $4
lui $2, 0
TAG313:
mfhi $3
sb $3, 0($3)
blez $2, TAG314
divu $3, $2
TAG314:
sh $3, 0($3)
bgez $3, TAG315
mthi $3
mult $3, $3
TAG315:
sll $1, $3, 8
lb $4, 0($1)
ori $2, $4, 9
bgez $3, TAG316
TAG316:
multu $2, $2
lui $3, 1
bgtz $2, TAG317
mfhi $2
TAG317:
sh $2, 0($2)
lui $1, 1
bgez $2, TAG318
mfhi $1
TAG318:
beq $1, $1, TAG319
sb $1, 0($1)
beq $1, $1, TAG319
mflo $4
TAG319:
sra $4, $4, 2
lhu $4, 0($4)
mthi $4
sra $1, $4, 9
TAG320:
mult $1, $1
multu $1, $1
lui $1, 5
bgtz $1, TAG321
TAG321:
sll $0, $0, 0
divu $1, $1
mflo $1
lbu $1, 0($1)
TAG322:
mflo $3
lui $1, 9
bgtz $1, TAG323
lui $4, 3
TAG323:
sll $0, $0, 0
xor $2, $4, $4
bgtz $4, TAG324
multu $4, $4
TAG324:
mflo $4
bne $2, $4, TAG325
addu $4, $4, $4
mult $4, $2
TAG325:
bltz $4, TAG326
lbu $2, 0($4)
multu $4, $2
sh $4, 0($2)
TAG326:
mtlo $2
lui $3, 15
mfhi $1
slt $1, $3, $1
TAG327:
bgtz $1, TAG328
or $4, $1, $1
mflo $3
bgez $4, TAG328
TAG328:
multu $3, $3
bne $3, $3, TAG329
xori $4, $3, 2
mfhi $1
TAG329:
xor $1, $1, $1
multu $1, $1
lui $3, 5
mthi $3
TAG330:
mfhi $2
mthi $3
bgtz $2, TAG331
addu $4, $3, $3
TAG331:
bgtz $4, TAG332
sltu $2, $4, $4
mtlo $2
bgez $2, TAG332
TAG332:
mfhi $4
mfhi $1
mult $4, $1
multu $2, $2
TAG333:
mfhi $2
lui $3, 14
mtlo $1
mthi $1
TAG334:
bgtz $3, TAG335
sll $0, $0, 0
beq $4, $4, TAG335
addiu $2, $4, 9
TAG335:
lui $2, 14
addu $2, $2, $2
beq $2, $2, TAG336
ori $4, $2, 7
TAG336:
beq $4, $4, TAG337
mflo $4
lui $3, 1
lui $4, 1
TAG337:
mfhi $4
beq $4, $4, TAG338
mtlo $4
subu $2, $4, $4
TAG338:
mflo $2
lui $3, 9
mfhi $1
sll $0, $0, 0
TAG339:
sll $0, $0, 0
srl $1, $4, 15
lh $1, 0($1)
sltiu $2, $1, 2
TAG340:
sra $3, $2, 2
bgtz $2, TAG341
lui $2, 14
and $1, $3, $3
TAG341:
ori $2, $1, 8
lb $2, 0($1)
sb $2, 0($2)
multu $2, $2
TAG342:
xor $2, $2, $2
sh $2, 0($2)
ori $2, $2, 1
divu $2, $2
TAG343:
xori $3, $2, 8
beq $2, $2, TAG344
srl $3, $3, 4
mflo $3
TAG344:
lui $3, 0
andi $3, $3, 4
beq $3, $3, TAG345
mflo $2
TAG345:
bne $2, $2, TAG346
lb $3, 0($2)
beq $3, $2, TAG346
ori $1, $2, 5
TAG346:
bne $1, $1, TAG347
lui $2, 11
mflo $4
lb $1, 0($4)
TAG347:
multu $1, $1
bgez $1, TAG348
sub $3, $1, $1
mfhi $1
TAG348:
multu $1, $1
lhu $2, 0($1)
mthi $2
beq $2, $1, TAG349
TAG349:
lui $3, 9
and $4, $3, $2
mfhi $3
sh $4, 0($4)
TAG350:
mthi $3
sltu $1, $3, $3
bne $1, $1, TAG351
mtlo $3
TAG351:
bne $1, $1, TAG352
slti $4, $1, 14
beq $1, $4, TAG352
lui $3, 14
TAG352:
addu $1, $3, $3
divu $3, $1
sll $4, $3, 14
addiu $3, $3, 5
TAG353:
mthi $3
sllv $4, $3, $3
sltu $4, $3, $3
sll $2, $4, 6
TAG354:
sb $2, 0($2)
mfhi $3
blez $3, TAG355
lbu $2, 0($2)
TAG355:
addiu $1, $2, 7
div $1, $1
bgtz $2, TAG356
andi $2, $1, 8
TAG356:
srlv $2, $2, $2
lui $1, 8
lui $4, 0
sw $1, 0($2)
TAG357:
mult $4, $4
bltz $4, TAG358
addiu $3, $4, 12
and $3, $3, $4
TAG358:
mult $3, $3
lbu $2, 0($3)
bne $3, $3, TAG359
mult $3, $3
TAG359:
sh $2, 0($2)
mult $2, $2
mthi $2
mthi $2
TAG360:
mflo $3
xori $3, $2, 3
sb $3, 0($3)
sh $2, 0($2)
TAG361:
lui $4, 0
mthi $3
mtlo $4
lui $2, 9
TAG362:
subu $4, $2, $2
lb $3, 0($4)
beq $3, $4, TAG363
sll $0, $0, 0
TAG363:
mflo $4
add $2, $3, $3
lw $1, 0($2)
sll $0, $0, 0
TAG364:
multu $4, $4
lbu $2, 0($4)
mtlo $2
sb $4, 0($2)
TAG365:
mfhi $4
beq $2, $2, TAG366
subu $2, $2, $2
mthi $4
TAG366:
subu $4, $2, $2
or $3, $2, $4
beq $3, $4, TAG367
lhu $1, 0($2)
TAG367:
bgtz $1, TAG368
sltiu $1, $1, 8
bne $1, $1, TAG368
mfhi $1
TAG368:
ori $3, $1, 10
beq $1, $1, TAG369
addi $4, $1, 8
sub $4, $3, $1
TAG369:
lhu $1, 0($4)
beq $4, $1, TAG370
divu $1, $1
sh $1, 0($4)
TAG370:
mthi $1
lhu $2, -2306($1)
beq $2, $2, TAG371
addiu $2, $1, 3
TAG371:
mtlo $2
sb $2, -2309($2)
bltz $2, TAG372
lbu $1, -2309($2)
TAG372:
lui $1, 3
mtlo $1
bgez $1, TAG373
mtlo $1
TAG373:
addiu $3, $1, 8
bne $1, $3, TAG374
mtlo $1
lui $2, 10
TAG374:
bltz $2, TAG375
mfhi $4
lw $2, -2309($2)
sll $0, $0, 0
TAG375:
sll $0, $0, 0
sltiu $4, $1, 0
ori $4, $4, 5
mtlo $1
TAG376:
div $4, $4
mthi $4
lui $1, 8
lui $1, 12
TAG377:
mult $1, $1
mthi $1
bltz $1, TAG378
lui $4, 10
TAG378:
divu $4, $4
sll $1, $4, 15
xori $3, $1, 2
subu $3, $4, $1
TAG379:
lui $4, 15
sra $1, $3, 12
mtlo $4
div $1, $4
TAG380:
sll $0, $0, 0
lb $3, -160($1)
bne $3, $1, TAG381
multu $1, $3
TAG381:
beq $3, $3, TAG382
sb $3, 0($3)
lh $3, 0($3)
divu $3, $3
TAG382:
div $3, $3
lbu $2, 0($3)
lb $2, 0($3)
beq $3, $3, TAG383
TAG383:
xor $3, $2, $2
lui $3, 1
sll $0, $0, 0
slti $4, $3, 6
TAG384:
lui $1, 11
bltz $4, TAG385
mthi $1
mflo $3
TAG385:
lui $3, 14
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG386:
mthi $4
bgtz $4, TAG387
mfhi $1
mtlo $4
TAG387:
sw $1, 0($1)
multu $1, $1
sb $1, 0($1)
mult $1, $1
TAG388:
sll $3, $1, 4
bgez $1, TAG389
sltiu $4, $3, 6
lui $2, 15
TAG389:
div $2, $2
mult $2, $2
andi $3, $2, 12
beq $3, $3, TAG390
TAG390:
mult $3, $3
mflo $4
bne $4, $3, TAG391
lui $2, 9
TAG391:
addiu $2, $2, 11
addiu $3, $2, 4
multu $2, $3
sll $0, $0, 0
TAG392:
blez $2, TAG393
multu $2, $2
sra $2, $2, 11
lhu $1, -288($2)
TAG393:
addi $2, $1, 6
lh $2, 0($2)
mult $1, $1
lbu $2, 0($2)
TAG394:
sb $2, 0($2)
sw $2, 0($2)
sh $2, 0($2)
bgez $2, TAG395
TAG395:
slt $2, $2, $2
lbu $1, 0($2)
sb $1, 0($2)
or $4, $2, $1
TAG396:
lui $1, 8
bltz $4, TAG397
mtlo $1
mthi $1
TAG397:
addiu $4, $1, 2
sll $0, $0, 0
sll $0, $0, 0
lui $2, 2
TAG398:
mthi $2
lui $2, 12
bne $2, $2, TAG399
addiu $3, $2, 6
TAG399:
bgtz $3, TAG400
mfhi $3
sb $3, 0($3)
mfhi $4
TAG400:
mult $4, $4
bgez $4, TAG401
addu $2, $4, $4
bne $4, $2, TAG401
TAG401:
multu $2, $2
sll $0, $0, 0
sltu $2, $2, $2
sh $2, 0($2)
TAG402:
lbu $4, 0($2)
mthi $4
beq $2, $4, TAG403
lui $2, 2
TAG403:
addu $1, $2, $2
beq $1, $2, TAG404
mtlo $2
divu $2, $1
TAG404:
mflo $2
mult $1, $1
xor $2, $1, $2
srl $3, $2, 11
TAG405:
sb $3, 0($3)
mflo $2
bltz $2, TAG406
sb $2, 0($2)
TAG406:
sh $2, 0($2)
lhu $2, 0($2)
mthi $2
mult $2, $2
TAG407:
mthi $2
mult $2, $2
mflo $4
lui $2, 11
TAG408:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
bne $2, $2, TAG409
TAG409:
sll $0, $0, 0
sw $2, 0($4)
bltz $2, TAG410
addu $2, $2, $2
TAG410:
sra $2, $2, 11
mfhi $2
blez $2, TAG411
mtlo $2
TAG411:
lui $1, 1
beq $2, $1, TAG412
mflo $1
lb $4, 0($2)
TAG412:
bne $4, $4, TAG413
mult $4, $4
sra $2, $4, 0
mult $2, $2
TAG413:
sra $2, $2, 14
sllv $3, $2, $2
mfhi $2
beq $3, $2, TAG414
TAG414:
sh $2, 0($2)
sll $4, $2, 14
mthi $2
sw $4, 0($2)
TAG415:
mult $4, $4
lui $4, 7
bgez $4, TAG416
lui $3, 5
TAG416:
sll $0, $0, 0
lui $4, 9
lui $1, 10
sll $0, $0, 0
TAG417:
bgtz $3, TAG418
mult $3, $3
sw $3, 0($3)
bgez $3, TAG418
TAG418:
slt $3, $3, $3
andi $1, $3, 6
lui $4, 9
lui $2, 3
TAG419:
mfhi $2
andi $3, $2, 15
sra $4, $2, 14
mthi $2
TAG420:
sb $4, 0($4)
lb $3, 0($4)
mtlo $4
lh $2, 0($3)
TAG421:
mthi $2
multu $2, $2
mthi $2
lb $4, 0($2)
TAG422:
mthi $4
bne $4, $4, TAG423
sw $4, 0($4)
mfhi $4
TAG423:
mtlo $4
andi $4, $4, 6
bgez $4, TAG424
lui $3, 3
TAG424:
sll $0, $0, 0
bne $3, $3, TAG425
addu $3, $3, $3
div $3, $3
TAG425:
blez $3, TAG426
divu $3, $3
beq $3, $3, TAG426
ori $1, $3, 7
TAG426:
sll $0, $0, 0
bgez $1, TAG427
and $3, $1, $1
divu $3, $1
TAG427:
sll $0, $0, 0
lui $1, 6
beq $3, $3, TAG428
sltu $1, $1, $1
TAG428:
mult $1, $1
mult $1, $1
lui $2, 15
sll $0, $0, 0
TAG429:
sltiu $4, $3, 14
mthi $4
mflo $2
lui $1, 11
TAG430:
divu $1, $1
bne $1, $1, TAG431
mtlo $1
bne $1, $1, TAG431
TAG431:
mthi $1
andi $1, $1, 6
sub $3, $1, $1
lb $2, 0($1)
TAG432:
mult $2, $2
beq $2, $2, TAG433
sllv $3, $2, $2
ori $1, $3, 1
TAG433:
sb $1, 0($1)
bltz $1, TAG434
addi $2, $1, 9
or $3, $1, $1
TAG434:
lbu $3, 0($3)
blez $3, TAG435
mfhi $3
lui $4, 8
TAG435:
mtlo $4
multu $4, $4
bgtz $4, TAG436
mtlo $4
TAG436:
sb $4, 0($4)
lui $4, 3
blez $4, TAG437
div $4, $4
TAG437:
beq $4, $4, TAG438
mthi $4
lui $1, 0
mfhi $2
TAG438:
or $3, $2, $2
lui $4, 4
and $4, $2, $4
mflo $4
TAG439:
lbu $3, 0($4)
sub $3, $3, $3
slt $4, $4, $3
mfhi $4
TAG440:
mfhi $3
sll $0, $0, 0
bgez $3, TAG441
mthi $3
TAG441:
sllv $1, $3, $3
mfhi $2
andi $3, $2, 3
sll $0, $0, 0
TAG442:
sw $3, 0($3)
sb $3, 0($3)
mfhi $4
beq $4, $3, TAG443
TAG443:
andi $2, $4, 9
nor $4, $4, $2
sll $0, $0, 0
sll $0, $0, 0
TAG444:
bgtz $3, TAG445
mtlo $3
beq $3, $3, TAG445
mfhi $1
TAG445:
srav $2, $1, $1
mtlo $1
sll $0, $0, 0
addiu $2, $1, 8
TAG446:
srlv $2, $2, $2
sh $2, -768($2)
lb $3, -768($2)
srl $1, $3, 3
TAG447:
sltiu $2, $1, 3
mtlo $1
bltz $1, TAG448
lb $1, 0($2)
TAG448:
mflo $1
add $4, $1, $1
sltiu $1, $1, 3
sb $1, 0($1)
TAG449:
lb $4, 0($1)
multu $1, $4
beq $1, $1, TAG450
mthi $1
TAG450:
blez $4, TAG451
mthi $4
lbu $3, 0($4)
sllv $4, $4, $3
TAG451:
mflo $4
beq $4, $4, TAG452
sltiu $4, $4, 8
lui $3, 4
TAG452:
mfhi $4
beq $4, $4, TAG453
ori $3, $4, 0
lw $4, 0($4)
TAG453:
lui $3, 14
mflo $4
lui $3, 1
sllv $2, $3, $3
TAG454:
sll $0, $0, 0
mfhi $3
blez $3, TAG455
mfhi $1
TAG455:
lui $2, 14
div $1, $2
mflo $2
srl $4, $1, 10
TAG456:
xori $2, $4, 1
beq $2, $2, TAG457
sb $2, 0($2)
mthi $2
TAG457:
beq $2, $2, TAG458
mthi $2
sh $2, 0($2)
lhu $1, 0($2)
TAG458:
sb $1, 0($1)
sltiu $3, $1, 9
mfhi $2
mthi $2
TAG459:
mflo $3
mtlo $3
sb $3, 0($3)
divu $3, $2
TAG460:
lui $3, 5
mfhi $3
lui $4, 11
mthi $3
TAG461:
lui $3, 10
mflo $2
bgez $4, TAG462
xor $2, $2, $3
TAG462:
lui $1, 12
sll $0, $0, 0
slt $2, $2, $2
bltz $2, TAG463
TAG463:
slt $4, $2, $2
beq $4, $2, TAG464
sw $2, 0($2)
mflo $2
TAG464:
srlv $4, $2, $2
addi $1, $2, 9
sll $4, $1, 3
bne $1, $1, TAG465
TAG465:
mflo $1
mfhi $2
mflo $2
mtlo $1
TAG466:
beq $2, $2, TAG467
sh $2, 0($2)
lh $2, 0($2)
multu $2, $2
TAG467:
slti $2, $2, 2
lui $3, 4
divu $2, $2
xori $1, $3, 14
TAG468:
mfhi $4
nor $4, $1, $1
and $2, $1, $4
lui $1, 1
TAG469:
sll $0, $0, 0
srl $3, $1, 11
multu $3, $3
beq $3, $3, TAG470
TAG470:
sltu $3, $3, $3
blez $3, TAG471
lui $4, 15
sllv $3, $3, $3
TAG471:
mthi $3
and $2, $3, $3
bgtz $3, TAG472
addu $1, $3, $3
TAG472:
nor $1, $1, $1
sltiu $3, $1, 11
mflo $4
mflo $2
TAG473:
bltz $2, TAG474
nor $4, $2, $2
sb $4, -1024($2)
nor $4, $4, $4
TAG474:
mthi $4
mfhi $3
srl $1, $4, 10
or $1, $3, $1
TAG475:
bne $1, $1, TAG476
mfhi $4
lh $2, -1024($4)
multu $2, $1
TAG476:
slt $4, $2, $2
beq $4, $4, TAG477
lhu $4, 0($4)
sb $4, 0($2)
TAG477:
sw $4, -255($4)
xor $1, $4, $4
lui $1, 9
bgtz $4, TAG478
TAG478:
mthi $1
lui $2, 11
blez $1, TAG479
sll $0, $0, 0
TAG479:
lui $3, 0
beq $3, $3, TAG480
sll $0, $0, 0
beq $2, $2, TAG480
TAG480:
mflo $4
mtlo $3
blez $3, TAG481
mult $4, $3
TAG481:
mtlo $4
bltz $4, TAG482
lui $1, 10
mtlo $1
TAG482:
mthi $1
lui $2, 9
mtlo $2
div $2, $2
TAG483:
addu $3, $2, $2
sll $0, $0, 0
mtlo $4
mflo $2
TAG484:
lui $4, 14
blez $2, TAG485
ori $1, $4, 14
bgez $2, TAG485
TAG485:
lui $2, 5
mthi $1
mtlo $2
bne $2, $1, TAG486
TAG486:
sll $0, $0, 0
bltz $2, TAG487
lui $1, 15
divu $2, $1
TAG487:
slti $3, $1, 12
sll $0, $0, 0
sll $0, $0, 0
beq $1, $2, TAG488
TAG488:
lui $2, 15
bne $2, $2, TAG489
sll $0, $0, 0
mthi $2
TAG489:
blez $2, TAG490
sll $0, $0, 0
mult $2, $2
bne $2, $2, TAG490
TAG490:
mfhi $2
bgtz $2, TAG491
sra $3, $2, 9
sb $2, 0($2)
TAG491:
sw $3, 0($3)
lui $2, 5
lui $3, 1
xori $4, $3, 10
TAG492:
bgtz $4, TAG493
divu $4, $4
lui $4, 10
andi $3, $4, 10
TAG493:
div $3, $3
and $1, $3, $3
lui $3, 7
sll $0, $0, 0
TAG494:
beq $3, $3, TAG495
mtlo $3
bgtz $3, TAG495
lb $3, 0($3)
TAG495:
lui $4, 8
mfhi $4
mfhi $1
bne $1, $4, TAG496
TAG496:
sb $1, 0($1)
bne $1, $1, TAG497
mthi $1
mthi $1
TAG497:
sh $1, 0($1)
bne $1, $1, TAG498
mfhi $1
xori $1, $1, 6
TAG498:
lhu $2, 0($1)
sb $2, 0($2)
sh $1, 0($2)
sh $2, 0($2)
TAG499:
beq $2, $2, TAG500
mult $2, $2
lui $3, 6
lbu $4, 0($3)
TAG500:
subu $3, $4, $4
andi $4, $4, 15
sra $4, $4, 14
mtlo $4
TAG501:
bgtz $4, TAG502
lui $2, 7
bgtz $4, TAG502
mult $4, $2
TAG502:
lui $4, 14
sll $0, $0, 0
div $4, $4
sh $2, 0($3)
TAG503:
srav $2, $3, $3
beq $3, $3, TAG504
mthi $3
divu $2, $3
TAG504:
lw $4, 0($2)
mthi $2
mflo $3
mthi $3
TAG505:
lui $1, 5
mtlo $1
lbu $2, 0($3)
mthi $1
TAG506:
mtlo $2
mtlo $2
sh $2, 0($2)
lhu $2, 0($2)
TAG507:
sll $3, $2, 13
lui $1, 6
lbu $1, 0($2)
lui $2, 14
TAG508:
mflo $2
lui $2, 7
sll $0, $0, 0
addiu $4, $2, 14
TAG509:
mthi $4
addiu $1, $4, 3
bgtz $4, TAG510
sll $0, $0, 0
TAG510:
lhu $2, 0($3)
mult $2, $2
and $4, $2, $2
multu $4, $2
TAG511:
multu $4, $4
multu $4, $4
mfhi $2
lhu $1, 0($4)
TAG512:
mflo $2
addu $3, $1, $2
sh $3, 0($3)
mfhi $3
TAG513:
srl $4, $3, 5
ori $3, $3, 15
sb $4, 0($3)
mult $4, $4
TAG514:
bne $3, $3, TAG515
sltu $3, $3, $3
lw $4, 0($3)
bgtz $3, TAG515
TAG515:
srav $1, $4, $4
mfhi $1
srlv $4, $1, $1
ori $3, $4, 4
TAG516:
andi $3, $3, 12
lui $2, 6
bgtz $3, TAG517
andi $1, $3, 1
TAG517:
mult $1, $1
multu $1, $1
lui $2, 13
sllv $4, $2, $1
TAG518:
mtlo $4
mthi $4
beq $4, $4, TAG519
mtlo $4
TAG519:
andi $2, $4, 14
mfhi $1
mtlo $1
addiu $2, $1, 8
TAG520:
xori $1, $2, 3
mult $2, $1
mtlo $1
mfhi $1
TAG521:
divu $1, $1
mfhi $1
sw $1, 0($1)
sb $1, 0($1)
TAG522:
mtlo $1
mflo $2
bgez $1, TAG523
srl $2, $1, 1
TAG523:
sb $2, 0($2)
multu $2, $2
multu $2, $2
mtlo $2
TAG524:
beq $2, $2, TAG525
srl $2, $2, 0
beq $2, $2, TAG525
srl $3, $2, 9
TAG525:
blez $3, TAG526
sh $3, 0($3)
beq $3, $3, TAG526
lui $2, 13
TAG526:
bgez $2, TAG527
multu $2, $2
sh $2, 0($2)
bne $2, $2, TAG527
TAG527:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 8
TAG528:
addiu $1, $4, 3
mfhi $3
sll $0, $0, 0
lui $1, 10
TAG529:
and $2, $1, $1
bne $2, $2, TAG530
sll $0, $0, 0
mtlo $2
TAG530:
lui $3, 7
beq $3, $3, TAG531
divu $3, $3
mflo $1
TAG531:
mfhi $4
xori $1, $1, 14
multu $4, $1
lui $2, 7
TAG532:
blez $2, TAG533
mflo $2
lh $1, 0($2)
sb $1, 0($1)
TAG533:
mfhi $1
srl $3, $1, 14
xor $4, $3, $1
bltz $1, TAG534
TAG534:
lbu $2, 0($4)
addi $2, $4, 2
lh $3, 0($2)
mult $2, $3
TAG535:
lui $4, 12
xor $4, $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG536:
bgez $4, TAG537
mfhi $1
bgtz $4, TAG537
sll $4, $1, 13
TAG537:
bltz $4, TAG538
mfhi $4
or $3, $4, $4
lbu $2, 0($4)
TAG538:
sltu $2, $2, $2
multu $2, $2
slt $2, $2, $2
bltz $2, TAG539
TAG539:
mflo $1
mtlo $2
andi $3, $1, 4
srav $2, $3, $1
TAG540:
beq $2, $2, TAG541
addiu $4, $2, 9
xori $3, $2, 0
nor $2, $3, $2
TAG541:
mfhi $2
mult $2, $2
andi $2, $2, 9
lbu $4, 0($2)
TAG542:
addu $3, $4, $4
srlv $4, $4, $4
mtlo $3
sb $4, 0($4)
TAG543:
slt $3, $4, $4
sw $4, 0($4)
srav $1, $4, $4
and $3, $1, $1
TAG544:
multu $3, $3
lhu $3, 0($3)
mtlo $3
lui $4, 6
TAG545:
mflo $2
mtlo $2
bne $4, $2, TAG546
srav $2, $2, $4
TAG546:
blez $2, TAG547
sll $2, $2, 11
lui $3, 13
sw $3, 0($2)
TAG547:
mult $3, $3
bne $3, $3, TAG548
lh $4, 0($3)
mflo $1
TAG548:
lh $2, 0($1)
srl $3, $2, 11
bltz $3, TAG549
mtlo $2
TAG549:
sra $4, $3, 14
slt $2, $4, $4
srl $4, $2, 0
addu $3, $4, $2
TAG550:
bne $3, $3, TAG551
mult $3, $3
bne $3, $3, TAG551
mflo $1
TAG551:
mthi $1
sb $1, 0($1)
lui $3, 11
mfhi $1
TAG552:
lui $3, 1
srl $4, $3, 6
addu $2, $3, $3
mflo $1
TAG553:
mtlo $1
blez $1, TAG554
sw $1, 0($1)
lui $2, 0
TAG554:
andi $3, $2, 15
lui $2, 13
beq $2, $2, TAG555
sll $0, $0, 0
TAG555:
mflo $3
bgez $3, TAG556
mthi $3
sb $3, 0($3)
TAG556:
beq $3, $3, TAG557
mtlo $3
bltz $3, TAG557
mthi $3
TAG557:
mfhi $4
bgtz $4, TAG558
sw $3, 0($4)
sh $3, 0($4)
TAG558:
mfhi $2
bgez $4, TAG559
slt $2, $4, $2
divu $2, $2
TAG559:
srav $4, $2, $2
lb $2, 0($4)
mfhi $1
lui $3, 0
TAG560:
subu $2, $3, $3
sw $3, 0($2)
blez $2, TAG561
multu $3, $3
TAG561:
lui $3, 14
mflo $4
xori $3, $3, 4
subu $4, $3, $3
TAG562:
addiu $2, $4, 9
xori $4, $2, 11
mthi $4
subu $4, $4, $4
TAG563:
multu $4, $4
mtlo $4
sb $4, 0($4)
mfhi $3
TAG564:
lui $1, 2
blez $1, TAG565
lui $3, 1
mthi $1
TAG565:
addu $1, $3, $3
mult $1, $1
mult $1, $3
sll $0, $0, 0
TAG566:
sb $2, 0($2)
multu $2, $2
bgez $2, TAG567
ori $2, $2, 0
TAG567:
blez $2, TAG568
lb $1, 0($2)
div $2, $1
mtlo $2
TAG568:
lb $4, 0($1)
lb $3, 0($4)
lbu $3, 0($3)
divu $3, $4
TAG569:
mflo $3
mfhi $1
mult $1, $3
bne $1, $1, TAG570
TAG570:
sltu $4, $1, $1
or $3, $4, $1
multu $3, $4
mult $4, $4
TAG571:
mtlo $3
bgez $3, TAG572
sltiu $3, $3, 7
divu $3, $3
TAG572:
bgez $3, TAG573
and $1, $3, $3
xor $2, $3, $3
div $2, $2
TAG573:
bgtz $2, TAG574
multu $2, $2
multu $2, $2
mtlo $2
TAG574:
mtlo $2
addiu $1, $2, 11
lh $1, 0($1)
bne $1, $1, TAG575
TAG575:
divu $1, $1
bltz $1, TAG576
lui $4, 3
mflo $2
TAG576:
sb $2, 0($2)
sb $2, 0($2)
bne $2, $2, TAG577
sb $2, 0($2)
TAG577:
lbu $1, 0($2)
bltz $2, TAG578
addiu $4, $1, 5
beq $2, $2, TAG578
TAG578:
sb $4, 0($4)
mfhi $2
multu $2, $2
lw $2, 0($2)
TAG579:
sw $2, -256($2)
or $2, $2, $2
lui $1, 15
mfhi $2
TAG580:
lbu $2, 0($2)
mult $2, $2
mthi $2
mthi $2
TAG581:
mtlo $2
lui $1, 14
mtlo $1
mfhi $1
TAG582:
andi $4, $1, 8
bgtz $4, TAG583
sw $1, 0($4)
sll $2, $1, 8
TAG583:
mflo $3
subu $3, $3, $3
lb $3, 0($2)
mflo $1
TAG584:
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
xor $1, $1, $1
TAG585:
srl $1, $1, 10
multu $1, $1
or $2, $1, $1
bgtz $1, TAG586
TAG586:
srl $4, $2, 6
sra $4, $2, 9
mtlo $4
srav $2, $2, $4
TAG587:
sb $2, 0($2)
lui $2, 11
sll $0, $0, 0
mthi $2
TAG588:
sll $0, $0, 0
multu $2, $2
xor $2, $2, $2
multu $2, $2
TAG589:
bne $2, $2, TAG590
lbu $1, 0($2)
xor $3, $2, $2
lui $3, 4
TAG590:
sll $0, $0, 0
divu $1, $3
sll $0, $0, 0
sll $0, $0, 0
TAG591:
beq $2, $2, TAG592
mflo $2
sw $2, 0($2)
mflo $3
TAG592:
sll $0, $0, 0
sll $0, $0, 0
sll $4, $2, 13
sra $2, $3, 0
TAG593:
lui $1, 13
mflo $4
slt $1, $1, $2
bgtz $1, TAG594
TAG594:
lui $1, 8
sll $0, $0, 0
lui $4, 5
andi $2, $1, 7
TAG595:
xori $4, $2, 8
mult $4, $4
bltz $2, TAG596
mflo $4
TAG596:
mtlo $4
sb $4, 0($4)
mfhi $3
srav $4, $3, $4
TAG597:
bgez $4, TAG598
lh $3, 0($4)
slti $2, $4, 6
sltu $1, $2, $4
TAG598:
mfhi $4
bgez $1, TAG599
mfhi $4
lui $2, 12
TAG599:
sb $2, 0($2)
sw $2, 0($2)
lui $2, 9
sll $0, $0, 0
TAG600:
mfhi $4
blez $4, TAG601
xor $3, $4, $4
beq $3, $4, TAG601
TAG601:
mflo $1
addiu $3, $3, 13
andi $1, $3, 4
mfhi $1
TAG602:
bgez $1, TAG603
lui $1, 6
lui $3, 10
bne $3, $1, TAG603
TAG603:
lbu $3, 0($3)
mult $3, $3
bne $3, $3, TAG604
sh $3, 0($3)
TAG604:
sub $3, $3, $3
lw $2, 0($3)
sb $3, 0($3)
bne $2, $3, TAG605
TAG605:
sb $2, 0($2)
bltz $2, TAG606
multu $2, $2
mult $2, $2
TAG606:
mflo $4
mthi $4
lui $4, 3
lui $2, 10
TAG607:
lui $3, 10
sll $0, $0, 0
addiu $2, $3, 2
mthi $2
TAG608:
multu $2, $2
blez $2, TAG609
lui $1, 7
mfhi $2
TAG609:
bltz $2, TAG610
sllv $3, $2, $2
divu $2, $3
mtlo $2
TAG610:
mthi $3
lui $3, 13
sll $0, $0, 0
bgez $3, TAG611
TAG611:
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG612:
sll $0, $0, 0
mflo $1
mult $4, $4
mthi $4
TAG613:
sra $3, $1, 9
bltz $3, TAG614
lui $3, 6
mflo $3
TAG614:
lui $1, 15
sll $1, $3, 2
lui $3, 12
mult $1, $1
TAG615:
mfhi $1
mtlo $3
bne $1, $3, TAG616
addi $3, $1, 12
TAG616:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG617
TAG617:
mult $1, $1
beq $1, $1, TAG618
lh $1, 0($1)
lb $2, 0($1)
TAG618:
mthi $2
mtlo $2
blez $2, TAG619
mflo $2
TAG619:
multu $2, $2
mthi $2
bne $2, $2, TAG620
srav $2, $2, $2
TAG620:
sll $0, $0, 0
and $1, $2, $2
mflo $2
lb $1, 0($2)
TAG621:
andi $4, $1, 1
bgtz $4, TAG622
and $1, $4, $4
sb $4, 0($1)
TAG622:
lw $4, 0($1)
sb $1, 0($4)
slti $4, $1, 7
lui $1, 0
TAG623:
multu $1, $1
sub $2, $1, $1
addiu $3, $2, 5
mfhi $2
TAG624:
bgez $2, TAG625
add $4, $2, $2
mflo $4
mult $2, $2
TAG625:
bgtz $4, TAG626
sll $2, $4, 9
bne $4, $2, TAG626
lui $4, 5
TAG626:
mtlo $4
bne $4, $4, TAG627
sll $0, $0, 0
sll $0, $0, 0
TAG627:
mflo $2
lui $4, 6
andi $4, $4, 6
mflo $1
TAG628:
multu $1, $1
mthi $1
beq $1, $1, TAG629
multu $1, $1
TAG629:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG630
sll $0, $0, 0
TAG630:
mthi $1
beq $1, $1, TAG631
mtlo $1
blez $1, TAG631
TAG631:
lui $3, 2
beq $3, $3, TAG632
mfhi $4
multu $4, $4
TAG632:
mthi $4
mfhi $2
mfhi $3
subu $1, $3, $4
TAG633:
mflo $3
bgtz $3, TAG634
sll $0, $0, 0
divu $3, $3
TAG634:
mflo $2
sll $4, $2, 8
multu $3, $4
mfhi $2
TAG635:
sb $2, -6400($2)
mtlo $2
sll $4, $2, 5
lui $4, 9
TAG636:
sll $3, $4, 0
sll $0, $0, 0
mflo $1
mtlo $1
TAG637:
and $4, $1, $1
lui $1, 15
srav $2, $1, $1
mfhi $2
TAG638:
lui $1, 5
div $2, $1
mflo $4
bltz $1, TAG639
TAG639:
mfhi $4
bgez $4, TAG640
multu $4, $4
sw $4, 0($4)
TAG640:
mtlo $4
lhu $4, -6400($4)
sra $1, $4, 13
mtlo $4
TAG641:
slti $4, $1, 15
andi $2, $1, 14
bne $2, $2, TAG642
sb $1, 0($4)
TAG642:
bgtz $2, TAG643
mult $2, $2
srav $3, $2, $2
sh $3, 0($3)
TAG643:
sb $3, 0($3)
lbu $3, 0($3)
xor $2, $3, $3
mflo $2
TAG644:
sw $2, 0($2)
bgtz $2, TAG645
lui $3, 8
sltu $4, $2, $2
TAG645:
sb $4, 0($4)
srl $1, $4, 13
multu $1, $1
lui $3, 5
TAG646:
subu $4, $3, $3
subu $4, $4, $3
sll $0, $0, 0
bltz $4, TAG647
TAG647:
subu $3, $3, $3
slt $1, $3, $3
lui $2, 13
mult $3, $2
TAG648:
sllv $4, $2, $2
sll $0, $0, 0
mfhi $3
beq $2, $4, TAG649
TAG649:
lui $3, 7
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG650
TAG650:
div $3, $3
lui $4, 8
sll $0, $0, 0
mflo $3
TAG651:
bne $3, $3, TAG652
mfhi $2
sllv $4, $2, $2
multu $3, $2
TAG652:
lb $3, 0($4)
slti $3, $3, 4
beq $4, $4, TAG653
srl $4, $3, 12
TAG653:
mflo $3
lbu $2, 0($4)
lui $2, 1
mtlo $2
TAG654:
sll $0, $0, 0
slt $4, $2, $2
mult $4, $4
mthi $2
TAG655:
addi $3, $4, 3
srlv $2, $3, $3
mflo $3
sllv $2, $3, $4
TAG656:
bgez $2, TAG657
mflo $2
addu $1, $2, $2
mthi $1
TAG657:
bne $1, $1, TAG658
srl $4, $1, 8
subu $1, $1, $1
lui $1, 1
TAG658:
lui $1, 15
sll $0, $0, 0
mtlo $1
mthi $1
TAG659:
lui $2, 7
mfhi $4
xori $3, $4, 8
bne $2, $3, TAG660
TAG660:
sll $0, $0, 0
beq $3, $3, TAG661
divu $3, $3
lw $4, 0($3)
TAG661:
lui $4, 9
bgez $4, TAG662
sll $0, $0, 0
lui $1, 8
TAG662:
sll $0, $0, 0
sll $0, $0, 0
ori $2, $1, 4
sll $0, $0, 0
TAG663:
div $1, $1
lui $3, 9
sll $0, $0, 0
mtlo $3
TAG664:
xori $2, $1, 7
beq $2, $2, TAG665
lui $3, 15
beq $2, $1, TAG665
TAG665:
mflo $1
bne $1, $1, TAG666
lui $2, 3
lui $4, 12
TAG666:
lui $3, 6
sll $0, $0, 0
sltu $2, $4, $3
subu $4, $4, $4
TAG667:
bgez $4, TAG668
mflo $1
mflo $2
blez $1, TAG668
TAG668:
xori $3, $2, 8
lh $1, 0($3)
sltu $3, $3, $1
slt $2, $3, $1
TAG669:
srl $3, $2, 0
addiu $1, $3, 4
bgez $1, TAG670
lui $1, 12
TAG670:
mtlo $1
beq $1, $1, TAG671
srl $2, $1, 8
mfhi $3
TAG671:
sltu $3, $3, $3
lbu $2, 0($3)
beq $3, $3, TAG672
sh $2, 0($2)
TAG672:
beq $2, $2, TAG673
mult $2, $2
divu $2, $2
div $2, $2
TAG673:
multu $2, $2
lui $3, 11
div $2, $3
lb $1, 0($2)
TAG674:
lui $4, 1
addu $1, $4, $1
beq $1, $4, TAG675
srav $3, $1, $4
TAG675:
sltiu $3, $3, 0
bltz $3, TAG676
mflo $2
srav $3, $3, $3
TAG676:
bltz $3, TAG677
sh $3, 0($3)
lui $2, 13
multu $3, $3
TAG677:
subu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
xori $2, $3, 12
TAG678:
mthi $2
beq $2, $2, TAG679
sb $2, 0($2)
sb $2, 0($2)
TAG679:
addu $1, $2, $2
sh $2, 0($2)
mflo $1
lbu $1, 0($2)
TAG680:
lb $3, 0($1)
div $1, $3
lui $1, 1
beq $1, $3, TAG681
TAG681:
lui $2, 12
div $2, $1
mflo $1
lui $2, 11
TAG682:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 3
slti $4, $2, 13
TAG683:
sllv $3, $4, $4
sw $4, 0($3)
lbu $1, 0($3)
lui $2, 13
TAG684:
bne $2, $2, TAG685
lui $4, 7
div $2, $2
div $2, $2
TAG685:
blez $4, TAG686
sll $0, $0, 0
bltz $4, TAG686
srlv $2, $4, $4
TAG686:
sll $0, $0, 0
bne $2, $2, TAG687
lui $4, 15
lui $1, 1
TAG687:
div $1, $1
lui $1, 12
bgez $1, TAG688
sra $3, $1, 12
TAG688:
mtlo $3
lbu $1, -192($3)
lui $3, 13
sll $2, $1, 13
TAG689:
sh $2, 0($2)
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
TAG690:
mthi $2
addiu $1, $2, 14
bne $1, $2, TAG691
mthi $1
TAG691:
andi $3, $1, 6
bltz $3, TAG692
mtlo $3
addiu $1, $3, 3
TAG692:
mfhi $4
mthi $4
divu $4, $1
blez $4, TAG693
TAG693:
mflo $3
srl $2, $3, 15
bltz $2, TAG694
mfhi $4
TAG694:
mflo $1
andi $4, $1, 10
sh $1, 0($4)
sh $1, 0($4)
TAG695:
blez $4, TAG696
mfhi $4
lui $2, 9
mthi $2
TAG696:
lw $2, 0($2)
addu $4, $2, $2
lbu $2, 0($2)
srlv $3, $2, $2
TAG697:
lui $2, 15
lui $2, 11
mfhi $4
sll $0, $0, 0
TAG698:
lbu $3, 0($4)
sh $4, 0($3)
srl $1, $3, 14
mflo $2
TAG699:
mtlo $2
sb $2, 0($2)
xori $1, $2, 0
beq $1, $1, TAG700
TAG700:
xori $1, $1, 14
lui $3, 11
sll $0, $0, 0
lbu $1, 0($1)
TAG701:
beq $1, $1, TAG702
addu $4, $1, $1
mthi $1
bgtz $4, TAG702
TAG702:
div $4, $4
lhu $4, 0($4)
mult $4, $4
sra $2, $4, 10
TAG703:
lbu $1, 0($2)
sw $2, 0($2)
bgez $1, TAG704
sllv $3, $1, $1
TAG704:
bltz $3, TAG705
or $3, $3, $3
mfhi $3
multu $3, $3
TAG705:
mfhi $4
bltz $3, TAG706
lui $2, 14
sb $3, 0($4)
TAG706:
sll $0, $0, 0
lui $3, 3
sra $3, $3, 10
lb $3, -192($3)
TAG707:
lui $4, 14
srlv $4, $4, $3
sll $0, $0, 0
beq $4, $3, TAG708
TAG708:
mthi $3
mflo $3
mfhi $2
and $1, $3, $3
TAG709:
nor $3, $1, $1
mflo $4
mthi $4
bgtz $3, TAG710
TAG710:
xori $3, $4, 9
mthi $3
mflo $1
mtlo $3
TAG711:
bltz $1, TAG712
sh $1, 0($1)
multu $1, $1
nor $1, $1, $1
TAG712:
or $4, $1, $1
sll $4, $4, 0
mtlo $4
srav $3, $4, $1
TAG713:
divu $3, $3
mtlo $3
bgtz $3, TAG714
mtlo $3
TAG714:
srav $2, $3, $3
bgez $2, TAG715
mflo $2
sh $2, 1($3)
TAG715:
sll $0, $0, 0
andi $3, $2, 8
srl $4, $3, 4
lb $4, 0($4)
TAG716:
sb $4, 1($4)
beq $4, $4, TAG717
div $4, $4
bgez $4, TAG717
TAG717:
mfhi $3
div $3, $4
mthi $4
andi $2, $3, 1
TAG718:
beq $2, $2, TAG719
multu $2, $2
sll $3, $2, 7
srlv $4, $3, $2
TAG719:
lui $1, 8
beq $4, $1, TAG720
mthi $1
bne $1, $4, TAG720
TAG720:
lui $2, 1
srl $3, $1, 13
bgtz $1, TAG721
subu $2, $3, $1
TAG721:
subu $3, $2, $2
sll $0, $0, 0
blez $2, TAG722
divu $2, $2
TAG722:
sll $1, $3, 10
bgtz $3, TAG723
sw $3, 0($1)
mthi $1
TAG723:
blez $1, TAG724
lui $1, 2
beq $1, $1, TAG724
mult $1, $1
TAG724:
andi $1, $1, 6
lw $1, 0($1)
bne $1, $1, TAG725
mthi $1
TAG725:
lb $2, 0($1)
mfhi $1
lbu $3, 0($1)
lui $1, 15
TAG726:
bltz $1, TAG727
sll $0, $0, 0
lui $4, 13
mflo $4
TAG727:
sllv $4, $4, $4
lb $2, 0($4)
mfhi $2
sh $4, 0($4)
TAG728:
mult $2, $2
sh $2, 0($2)
addiu $1, $2, 9
srav $2, $2, $2
TAG729:
beq $2, $2, TAG730
mthi $2
sw $2, 0($2)
sh $2, 0($2)
TAG730:
sll $3, $2, 10
lw $4, 0($2)
lui $1, 12
sll $0, $0, 0
TAG731:
bltz $4, TAG732
mtlo $4
beq $4, $4, TAG732
mult $4, $4
TAG732:
beq $4, $4, TAG733
mtlo $4
blez $4, TAG733
lbu $4, 0($4)
TAG733:
sll $0, $0, 0
mult $4, $4
lui $2, 7
sll $0, $0, 0
TAG734:
sll $0, $0, 0
ori $4, $2, 7
bgez $4, TAG735
divu $4, $2
TAG735:
mfhi $1
mflo $4
subu $3, $4, $4
slti $2, $4, 2
TAG736:
bgtz $2, TAG737
mtlo $2
lui $3, 8
lbu $1, 0($3)
TAG737:
addiu $1, $1, 7
lbu $3, 0($1)
bgtz $1, TAG738
addu $4, $1, $3
TAG738:
lhu $4, 0($4)
multu $4, $4
mult $4, $4
or $2, $4, $4
TAG739:
lui $2, 2
slti $1, $2, 5
xor $3, $2, $2
mtlo $2
TAG740:
mtlo $3
bgez $3, TAG741
sh $3, 0($3)
subu $1, $3, $3
TAG741:
mflo $3
lui $1, 10
divu $1, $1
blez $3, TAG742
TAG742:
mflo $3
mfhi $4
lui $3, 10
lui $1, 13
TAG743:
beq $1, $1, TAG744
mult $1, $1
sb $1, 0($1)
addiu $1, $1, 6
TAG744:
and $4, $1, $1
lui $3, 3
srav $4, $3, $4
mult $4, $4
TAG745:
slti $4, $4, 15
srlv $4, $4, $4
srl $4, $4, 3
mthi $4
TAG746:
lh $2, 0($4)
mthi $2
beq $4, $2, TAG747
sh $2, 0($4)
TAG747:
sw $2, 0($2)
beq $2, $2, TAG748
ori $1, $2, 7
addiu $1, $1, 0
TAG748:
beq $1, $1, TAG749
divu $1, $1
lbu $2, 0($1)
mtlo $2
TAG749:
lui $3, 2
bgtz $2, TAG750
mult $2, $2
bltz $3, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop