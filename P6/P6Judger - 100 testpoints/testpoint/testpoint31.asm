ori $1, $0, 11
ori $2, $0, 13
ori $3, $0, 1
ori $4, $0, 15
sw $3, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $4, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $2, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $4, 120($0)
sw $3, 124($0)
mflo $4
addiu $1, $2, 3
mflo $1
mfhi $4
TAG1:
lbu $3, 0($4)
subu $4, $4, $4
multu $3, $4
srl $3, $4, 3
TAG2:
lui $4, 4
mult $4, $3
multu $4, $4
sll $0, $0, 0
TAG3:
xor $4, $1, $1
blez $1, TAG4
mflo $1
mflo $1
TAG4:
mflo $1
andi $1, $1, 11
mtlo $1
bne $1, $1, TAG5
TAG5:
multu $1, $1
sw $1, 0($1)
bltz $1, TAG6
mflo $1
TAG6:
mult $1, $1
lui $4, 13
divu $4, $4
lhu $3, 0($1)
TAG7:
lbu $1, 0($3)
sh $3, 0($3)
sltu $4, $1, $3
bgez $3, TAG8
TAG8:
lui $2, 6
div $4, $2
bne $2, $2, TAG9
sll $0, $0, 0
TAG9:
andi $1, $2, 15
subu $1, $1, $2
sll $0, $0, 0
divu $1, $1
TAG10:
beq $1, $1, TAG11
sra $1, $1, 11
slti $2, $1, 2
sh $1, 0($1)
TAG11:
mtlo $2
multu $2, $2
xori $2, $2, 7
mfhi $2
TAG12:
mtlo $2
mtlo $2
nor $2, $2, $2
div $2, $2
TAG13:
sll $0, $0, 0
and $1, $2, $2
bne $1, $2, TAG14
mfhi $2
TAG14:
mult $2, $2
sb $2, 0($2)
lhu $1, 0($2)
bltz $2, TAG15
TAG15:
multu $1, $1
lbu $1, 0($1)
sub $4, $1, $1
bgtz $1, TAG16
TAG16:
lbu $3, 0($4)
lbu $2, 0($4)
ori $4, $2, 10
xor $1, $2, $4
TAG17:
sb $1, 0($1)
bgtz $1, TAG18
lui $2, 6
lb $3, 0($1)
TAG18:
sltu $2, $3, $3
addiu $4, $2, 2
mthi $2
multu $3, $3
TAG19:
or $1, $4, $4
mfhi $3
beq $4, $1, TAG20
addiu $3, $1, 0
TAG20:
lb $4, 0($3)
subu $1, $3, $4
mfhi $2
lhu $2, 0($3)
TAG21:
xor $1, $2, $2
sllv $4, $1, $2
mtlo $1
beq $2, $1, TAG22
TAG22:
mult $4, $4
lh $2, 0($4)
xori $4, $2, 14
lh $4, 0($2)
TAG23:
bne $4, $4, TAG24
lui $2, 15
div $4, $2
sh $2, 0($4)
TAG24:
multu $2, $2
bne $2, $2, TAG25
sll $0, $0, 0
xor $1, $2, $2
TAG25:
lhu $3, 0($1)
mthi $1
slt $3, $1, $1
add $3, $3, $3
TAG26:
sw $3, 0($3)
bne $3, $3, TAG27
or $2, $3, $3
sltiu $1, $3, 15
TAG27:
mtlo $1
srl $4, $1, 3
sw $4, 0($4)
bne $1, $1, TAG28
TAG28:
mult $4, $4
multu $4, $4
mtlo $4
lui $4, 9
TAG29:
lui $2, 2
sltiu $1, $4, 10
xori $1, $4, 15
addu $3, $1, $1
TAG30:
lui $2, 3
bne $3, $3, TAG31
lui $3, 11
sll $0, $0, 0
TAG31:
sll $0, $0, 0
blez $1, TAG32
srl $2, $3, 0
xor $2, $1, $3
TAG32:
bne $2, $2, TAG33
mfhi $2
slti $4, $2, 12
sh $4, 0($2)
TAG33:
lui $1, 15
divu $4, $4
sll $0, $0, 0
addu $4, $4, $1
TAG34:
sll $0, $0, 0
lui $1, 8
slt $4, $4, $4
mfhi $3
TAG35:
sh $3, 0($3)
sh $3, 0($3)
mflo $4
mult $3, $3
TAG36:
sb $4, 0($4)
mfhi $3
sb $3, 0($3)
lbu $1, 0($4)
TAG37:
slti $3, $1, 4
sb $3, 0($1)
mfhi $2
mtlo $3
TAG38:
sltiu $3, $2, 5
beq $3, $2, TAG39
addiu $4, $2, 12
bgtz $2, TAG39
TAG39:
lhu $2, 0($4)
bne $4, $4, TAG40
lb $4, 0($2)
lhu $3, 0($4)
TAG40:
multu $3, $3
multu $3, $3
sll $1, $3, 8
sltiu $4, $3, 7
TAG41:
sw $4, 0($4)
sll $4, $4, 5
beq $4, $4, TAG42
mult $4, $4
TAG42:
blez $4, TAG43
mult $4, $4
lb $2, 0($4)
lhu $1, 0($2)
TAG43:
multu $1, $1
beq $1, $1, TAG44
multu $1, $1
div $1, $1
TAG44:
addu $1, $1, $1
bne $1, $1, TAG45
mtlo $1
sll $0, $0, 0
TAG45:
div $1, $1
mflo $4
lui $4, 13
mtlo $4
TAG46:
mthi $4
bgtz $4, TAG47
sll $0, $0, 0
lb $3, 0($4)
TAG47:
ori $3, $3, 2
div $3, $3
mtlo $3
srl $3, $3, 14
TAG48:
sw $3, 0($3)
sh $3, 0($3)
lhu $1, 0($3)
mthi $3
TAG49:
mtlo $1
sltiu $4, $1, 1
lui $3, 15
bgtz $3, TAG50
TAG50:
mtlo $3
bgtz $3, TAG51
sll $0, $0, 0
lb $1, 0($3)
TAG51:
xor $2, $1, $1
lui $1, 7
sw $1, 0($2)
lui $4, 14
TAG52:
addu $4, $4, $4
mthi $4
multu $4, $4
mtlo $4
TAG53:
mtlo $4
sll $0, $0, 0
lui $4, 11
bltz $4, TAG54
TAG54:
sll $0, $0, 0
bltz $4, TAG55
and $4, $3, $4
ori $4, $4, 13
TAG55:
addu $4, $4, $4
sll $0, $0, 0
xor $4, $4, $4
beq $4, $4, TAG56
TAG56:
mflo $4
mflo $2
mthi $4
divu $4, $4
TAG57:
mfhi $4
srl $4, $2, 10
bne $4, $2, TAG58
srlv $1, $4, $4
TAG58:
blez $1, TAG59
div $1, $1
slt $2, $1, $1
sw $2, -1792($1)
TAG59:
mflo $2
mthi $2
sb $2, 0($2)
bne $2, $2, TAG60
TAG60:
mflo $2
beq $2, $2, TAG61
mfhi $3
beq $2, $2, TAG61
TAG61:
div $3, $3
mtlo $3
mflo $2
bne $2, $3, TAG62
TAG62:
mthi $2
mthi $2
bgtz $2, TAG63
subu $3, $2, $2
TAG63:
mthi $3
srav $2, $3, $3
lw $1, 0($3)
mtlo $3
TAG64:
sll $0, $0, 0
addi $4, $3, 0
bltz $3, TAG65
andi $4, $4, 4
TAG65:
lui $3, 0
sw $4, 0($3)
mult $3, $3
sh $4, 0($4)
TAG66:
slt $3, $3, $3
mult $3, $3
add $3, $3, $3
mtlo $3
TAG67:
beq $3, $3, TAG68
lui $4, 11
bgtz $3, TAG68
lui $4, 12
TAG68:
subu $1, $4, $4
divu $4, $4
xori $3, $4, 8
sll $0, $0, 0
TAG69:
lui $3, 0
mflo $3
mult $3, $3
srlv $2, $3, $3
TAG70:
mflo $4
sb $4, 0($4)
addiu $3, $4, 5
slti $3, $2, 2
TAG71:
xori $1, $3, 10
subu $4, $3, $1
lhu $4, 10($4)
mfhi $4
TAG72:
bne $4, $4, TAG73
andi $4, $4, 11
sb $4, 0($4)
mthi $4
TAG73:
lui $2, 4
mult $4, $4
beq $2, $4, TAG74
xor $4, $2, $2
TAG74:
mult $4, $4
blez $4, TAG75
mult $4, $4
div $4, $4
TAG75:
and $1, $4, $4
lw $2, 0($1)
lui $4, 3
andi $4, $4, 11
TAG76:
mflo $2
lui $2, 14
lui $3, 11
xori $3, $3, 7
TAG77:
div $3, $3
mfhi $2
sll $0, $0, 0
sh $2, 0($2)
TAG78:
multu $2, $2
lui $1, 8
bltz $1, TAG79
srav $2, $2, $1
TAG79:
mflo $1
mtlo $1
xor $1, $2, $2
subu $4, $1, $1
TAG80:
lui $1, 3
sltiu $3, $4, 7
addiu $3, $1, 1
bltz $1, TAG81
TAG81:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $3, 7
bgez $2, TAG82
TAG82:
lui $4, 1
mflo $4
bltz $2, TAG83
mtlo $2
TAG83:
sltiu $4, $4, 0
nor $4, $4, $4
bgez $4, TAG84
lui $2, 2
TAG84:
divu $2, $2
slt $2, $2, $2
mtlo $2
mflo $2
TAG85:
lh $4, 0($2)
lui $4, 0
multu $4, $2
multu $4, $2
TAG86:
bne $4, $4, TAG87
slt $4, $4, $4
mthi $4
add $2, $4, $4
TAG87:
xori $4, $2, 15
mthi $2
bgez $4, TAG88
lui $1, 13
TAG88:
divu $1, $1
mfhi $1
lui $2, 2
and $1, $1, $1
TAG89:
bgez $1, TAG90
sw $1, 0($1)
sb $1, 0($1)
sub $2, $1, $1
TAG90:
addiu $4, $2, 3
or $4, $2, $4
beq $2, $4, TAG91
mult $2, $4
TAG91:
sll $0, $0, 0
multu $4, $4
beq $4, $4, TAG92
sll $0, $0, 0
TAG92:
bgez $1, TAG93
lui $1, 14
blez $1, TAG93
lb $4, 0($1)
TAG93:
div $4, $4
sll $0, $0, 0
mflo $2
sb $4, 0($2)
TAG94:
sb $2, 0($2)
beq $2, $2, TAG95
addu $1, $2, $2
bne $1, $1, TAG95
TAG95:
sh $1, 0($1)
mthi $1
srav $4, $1, $1
srlv $2, $4, $4
TAG96:
multu $2, $2
bne $2, $2, TAG97
mtlo $2
beq $2, $2, TAG97
TAG97:
ori $4, $2, 10
blez $4, TAG98
mult $4, $2
bne $2, $2, TAG98
TAG98:
lui $3, 14
slt $4, $3, $3
blez $4, TAG99
addu $2, $3, $4
TAG99:
addiu $3, $2, 15
mfhi $1
mfhi $1
beq $1, $1, TAG100
TAG100:
ori $4, $1, 6
mfhi $2
lb $3, 0($4)
mfhi $2
TAG101:
mfhi $4
sltiu $3, $2, 14
mtlo $3
sw $4, 0($4)
TAG102:
lui $2, 4
mtlo $2
mflo $3
multu $3, $3
TAG103:
sltiu $3, $3, 8
mtlo $3
sb $3, 0($3)
beq $3, $3, TAG104
TAG104:
lhu $1, 0($3)
mfhi $3
slt $4, $1, $3
lui $4, 11
TAG105:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
lui $3, 15
TAG106:
lui $3, 2
sll $0, $0, 0
blez $3, TAG107
divu $3, $3
TAG107:
mfhi $3
mthi $3
ori $2, $3, 0
mfhi $2
TAG108:
mtlo $2
bgtz $2, TAG109
mfhi $3
beq $3, $2, TAG109
TAG109:
multu $3, $3
mfhi $4
bgtz $3, TAG110
sb $4, 0($3)
TAG110:
and $4, $4, $4
bne $4, $4, TAG111
multu $4, $4
or $1, $4, $4
TAG111:
lh $1, 0($1)
lhu $2, 0($1)
mthi $1
add $4, $2, $1
TAG112:
addiu $3, $4, 13
divu $4, $3
andi $1, $3, 11
mthi $3
TAG113:
blez $1, TAG114
mflo $2
mflo $3
mthi $1
TAG114:
lw $1, 0($3)
multu $1, $1
sub $4, $3, $3
beq $1, $1, TAG115
TAG115:
sw $4, 0($4)
beq $4, $4, TAG116
srl $4, $4, 5
addi $4, $4, 14
TAG116:
mult $4, $4
sh $4, 0($4)
bgtz $4, TAG117
mult $4, $4
TAG117:
lui $2, 13
lui $4, 1
divu $2, $4
bgez $2, TAG118
TAG118:
mflo $2
mtlo $4
blez $4, TAG119
mflo $4
TAG119:
addu $1, $4, $4
sll $0, $0, 0
multu $1, $4
multu $1, $1
TAG120:
bltz $1, TAG121
sll $0, $0, 0
lui $3, 0
and $1, $3, $3
TAG121:
srlv $2, $1, $1
xori $4, $2, 4
blez $2, TAG122
lui $4, 10
TAG122:
mflo $1
sw $4, 0($1)
mflo $4
sb $4, 0($4)
TAG123:
mtlo $4
lui $4, 1
bne $4, $4, TAG124
mtlo $4
TAG124:
bne $4, $4, TAG125
sll $0, $0, 0
xori $2, $4, 13
mfhi $4
TAG125:
srav $2, $4, $4
sh $2, 0($4)
mflo $3
andi $3, $2, 7
TAG126:
sw $3, 0($3)
sll $2, $3, 8
or $1, $2, $2
bgez $1, TAG127
TAG127:
mtlo $1
mtlo $1
bgtz $1, TAG128
multu $1, $1
TAG128:
mflo $3
sb $3, 0($3)
mfhi $1
sll $4, $1, 6
TAG129:
mfhi $1
sllv $3, $4, $4
lw $3, 0($4)
lb $3, 0($4)
TAG130:
blez $3, TAG131
mult $3, $3
divu $3, $3
beq $3, $3, TAG131
TAG131:
multu $3, $3
and $4, $3, $3
mflo $3
sll $2, $3, 14
TAG132:
lui $2, 4
mfhi $3
bne $3, $3, TAG133
sll $0, $0, 0
TAG133:
mult $3, $3
mfhi $1
lh $2, 0($1)
lui $2, 7
TAG134:
blez $2, TAG135
andi $3, $2, 1
mult $3, $3
lui $1, 3
TAG135:
mflo $4
srav $4, $4, $4
beq $1, $4, TAG136
sltu $2, $1, $4
TAG136:
lw $4, 0($2)
sb $4, 0($2)
mtlo $4
addi $1, $2, 10
TAG137:
mthi $1
bne $1, $1, TAG138
divu $1, $1
andi $2, $1, 13
TAG138:
bne $2, $2, TAG139
div $2, $2
bne $2, $2, TAG139
sb $2, 0($2)
TAG139:
sb $2, 0($2)
sh $2, 0($2)
div $2, $2
mthi $2
TAG140:
bgtz $2, TAG141
subu $1, $2, $2
sll $1, $2, 2
mthi $1
TAG141:
sh $1, 0($1)
lh $3, 0($1)
bltz $1, TAG142
lb $2, 0($1)
TAG142:
bgez $2, TAG143
lbu $1, 0($2)
lb $1, 0($1)
multu $1, $1
TAG143:
mfhi $3
lb $4, 0($3)
lbu $3, 0($3)
divu $4, $4
TAG144:
sh $3, 0($3)
srl $1, $3, 8
blez $3, TAG145
lhu $4, 0($1)
TAG145:
mult $4, $4
sll $3, $4, 1
mthi $4
sb $3, 0($3)
TAG146:
sb $3, 0($3)
mflo $4
lbu $3, 0($3)
multu $3, $3
TAG147:
lh $1, 0($3)
lui $3, 6
sll $0, $0, 0
mthi $1
TAG148:
multu $2, $2
xori $3, $2, 6
beq $3, $2, TAG149
mtlo $3
TAG149:
mfhi $3
sub $4, $3, $3
sw $3, 0($4)
bne $3, $4, TAG150
TAG150:
lui $3, 8
addi $3, $4, 2
lhu $1, 0($3)
xori $2, $3, 11
TAG151:
divu $2, $2
sb $2, 0($2)
lb $3, 0($2)
div $2, $3
TAG152:
subu $3, $3, $3
lui $4, 12
mthi $3
bltz $3, TAG153
TAG153:
addu $4, $4, $4
mfhi $2
beq $4, $4, TAG154
mfhi $2
TAG154:
lui $3, 1
mfhi $4
mthi $2
multu $4, $4
TAG155:
lhu $3, 0($4)
lui $2, 4
sb $2, 0($3)
mthi $2
TAG156:
divu $2, $2
beq $2, $2, TAG157
mtlo $2
lui $4, 1
TAG157:
bgez $4, TAG158
srl $3, $4, 2
divu $3, $4
add $1, $4, $4
TAG158:
mthi $1
mfhi $3
sb $1, 0($3)
mult $3, $3
TAG159:
bgtz $3, TAG160
addi $3, $3, 6
sllv $1, $3, $3
bne $3, $3, TAG160
TAG160:
mflo $3
bltz $1, TAG161
lbu $4, 0($3)
beq $1, $1, TAG161
TAG161:
slt $1, $4, $4
multu $1, $1
sll $3, $4, 9
mthi $3
TAG162:
mfhi $2
beq $2, $2, TAG163
sh $3, 0($2)
lui $3, 8
TAG163:
lh $2, 0($3)
beq $2, $2, TAG164
mtlo $3
slti $4, $2, 15
TAG164:
sh $4, 0($4)
lh $3, 0($4)
lui $3, 6
mtlo $3
TAG165:
subu $3, $3, $3
beq $3, $3, TAG166
sh $3, 0($3)
mtlo $3
TAG166:
sll $1, $3, 3
sub $2, $3, $1
sltiu $1, $1, 7
lui $1, 5
TAG167:
div $1, $1
lui $4, 7
lui $2, 3
mflo $3
TAG168:
bne $3, $3, TAG169
lb $2, 0($3)
mfhi $4
lb $1, 0($2)
TAG169:
bne $1, $1, TAG170
multu $1, $1
mfhi $2
or $2, $1, $2
TAG170:
lw $1, 0($2)
bne $1, $1, TAG171
lb $2, 0($1)
nor $1, $2, $2
TAG171:
lui $4, 3
ori $4, $4, 6
mfhi $2
ori $1, $2, 9
TAG172:
addu $3, $1, $1
sll $4, $3, 4
blez $4, TAG173
mthi $4
TAG173:
slti $2, $4, 9
lui $3, 1
beq $2, $2, TAG174
slt $2, $4, $4
TAG174:
lui $1, 9
mflo $3
bne $3, $2, TAG175
sb $2, 0($2)
TAG175:
mtlo $3
lh $2, 0($3)
beq $3, $2, TAG176
lhu $1, 0($2)
TAG176:
bgez $1, TAG177
multu $1, $1
sh $1, 0($1)
mtlo $1
TAG177:
mult $1, $1
lui $3, 3
mthi $3
addu $4, $3, $3
TAG178:
sll $0, $0, 0
slt $3, $4, $4
ori $3, $3, 11
divu $3, $3
TAG179:
lui $2, 4
div $3, $2
bgez $2, TAG180
mfhi $2
TAG180:
beq $2, $2, TAG181
mtlo $2
lh $1, 0($2)
lui $1, 0
TAG181:
bne $1, $1, TAG182
mthi $1
mfhi $1
multu $1, $1
TAG182:
beq $1, $1, TAG183
ori $1, $1, 8
div $1, $1
addiu $1, $1, 8
TAG183:
mtlo $1
lui $3, 15
lh $3, 0($1)
divu $1, $3
TAG184:
bgez $3, TAG185
or $3, $3, $3
lhu $2, 0($3)
beq $3, $3, TAG185
TAG185:
mthi $2
addiu $2, $2, 12
mflo $2
mult $2, $2
TAG186:
bltz $2, TAG187
multu $2, $2
lh $2, 0($2)
mult $2, $2
TAG187:
lb $1, 0($2)
slt $2, $2, $1
lbu $4, 0($1)
srav $3, $2, $1
TAG188:
nor $4, $3, $3
div $4, $4
mfhi $2
mflo $2
TAG189:
lui $3, 7
sll $0, $0, 0
sll $0, $0, 0
slt $2, $2, $3
TAG190:
mfhi $1
and $4, $1, $1
or $1, $4, $1
mfhi $2
TAG191:
or $4, $2, $2
lui $2, 5
sw $2, 0($4)
addu $3, $2, $2
TAG192:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
xori $3, $3, 4
TAG193:
sll $0, $0, 0
bne $3, $3, TAG194
divu $3, $3
mult $3, $3
TAG194:
lui $1, 3
mthi $3
sra $1, $3, 6
bne $1, $1, TAG195
TAG195:
sb $1, -10240($1)
mflo $2
bgtz $1, TAG196
sll $0, $0, 0
TAG196:
mfhi $2
lui $2, 10
sll $0, $0, 0
beq $2, $2, TAG197
TAG197:
mflo $1
mthi $4
mflo $4
sll $0, $0, 0
TAG198:
sll $0, $0, 0
mflo $1
lui $2, 13
divu $2, $2
TAG199:
multu $2, $2
mfhi $3
bgtz $3, TAG200
mult $2, $2
TAG200:
beq $3, $3, TAG201
addiu $4, $3, 5
lbu $2, 0($3)
sw $4, 0($4)
TAG201:
mtlo $2
addiu $1, $2, 13
sll $0, $0, 0
mthi $3
TAG202:
bgtz $3, TAG203
mflo $4
sh $3, 0($3)
bne $4, $3, TAG203
TAG203:
mthi $4
sll $0, $0, 0
mfhi $1
lui $1, 0
TAG204:
mthi $1
bgtz $1, TAG205
mthi $1
bgtz $1, TAG205
TAG205:
sw $1, 0($1)
subu $3, $1, $1
lhu $3, 0($1)
mult $1, $3
TAG206:
ori $2, $3, 13
mult $2, $2
bgtz $2, TAG207
srl $3, $2, 7
TAG207:
sllv $2, $3, $3
sh $2, 0($3)
lui $1, 7
blez $1, TAG208
TAG208:
sll $0, $0, 0
bne $3, $1, TAG209
sll $1, $3, 11
sw $1, 0($1)
TAG209:
mfhi $3
sw $3, 0($1)
mflo $1
srl $1, $3, 8
TAG210:
mflo $3
mtlo $3
mthi $1
beq $3, $3, TAG211
TAG211:
mfhi $3
ori $4, $3, 7
lui $2, 8
mthi $3
TAG212:
mfhi $4
lui $1, 8
mtlo $4
bgez $4, TAG213
TAG213:
lui $2, 1
div $2, $2
mtlo $2
mflo $4
TAG214:
lui $1, 14
bltz $4, TAG215
mfhi $2
mflo $3
TAG215:
sll $0, $0, 0
and $1, $3, $3
sltu $1, $1, $3
mthi $1
TAG216:
mfhi $4
bne $1, $1, TAG217
multu $1, $1
slt $1, $1, $4
TAG217:
addiu $2, $1, 15
mthi $2
lb $2, 0($2)
mthi $2
TAG218:
mfhi $3
lh $4, 0($2)
add $1, $2, $2
sh $2, 0($1)
TAG219:
multu $1, $1
lui $3, 9
beq $3, $1, TAG220
multu $1, $1
TAG220:
mflo $2
bgez $3, TAG221
mtlo $2
mthi $2
TAG221:
addiu $1, $2, 7
sw $1, 0($2)
sb $1, 0($1)
sb $1, 0($1)
TAG222:
bne $1, $1, TAG223
andi $4, $1, 4
div $4, $1
mfhi $3
TAG223:
mfhi $4
lbu $4, 0($3)
subu $1, $3, $3
lb $1, 0($4)
TAG224:
mflo $3
bltz $1, TAG225
sll $2, $3, 10
bgtz $2, TAG225
TAG225:
subu $4, $2, $2
sll $4, $4, 2
lb $1, 0($4)
lbu $1, 0($1)
TAG226:
mthi $1
lui $1, 10
mthi $1
srlv $1, $1, $1
TAG227:
bgez $1, TAG228
sll $0, $0, 0
sb $1, 0($1)
beq $1, $2, TAG228
TAG228:
mthi $2
sllv $2, $2, $2
mthi $2
bltz $2, TAG229
TAG229:
sw $2, 0($2)
bgez $2, TAG230
lui $3, 3
mtlo $2
TAG230:
sll $0, $0, 0
bgez $3, TAG231
sll $0, $0, 0
blez $4, TAG231
TAG231:
sw $4, 0($4)
srlv $3, $4, $4
lui $2, 12
sb $4, 0($4)
TAG232:
sllv $2, $2, $2
mflo $1
mthi $2
xor $1, $2, $2
TAG233:
blez $1, TAG234
mthi $1
lw $3, 0($1)
beq $3, $3, TAG234
TAG234:
add $3, $3, $3
mflo $4
lh $2, 0($3)
lui $3, 0
TAG235:
beq $3, $3, TAG236
mtlo $3
bne $3, $3, TAG236
lhu $3, 0($3)
TAG236:
mtlo $3
lw $3, 0($3)
lui $2, 13
sb $3, 0($3)
TAG237:
bne $2, $2, TAG238
srav $3, $2, $2
mflo $1
beq $1, $1, TAG238
TAG238:
lui $4, 13
bgtz $4, TAG239
sll $0, $0, 0
srlv $4, $1, $1
TAG239:
mult $4, $4
div $4, $4
sll $0, $0, 0
addu $3, $4, $4
TAG240:
mflo $3
mfhi $4
andi $2, $3, 1
bne $3, $3, TAG241
TAG241:
xor $2, $2, $2
lui $2, 5
beq $2, $2, TAG242
mthi $2
TAG242:
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
multu $2, $2
TAG243:
bne $3, $3, TAG244
multu $3, $3
mfhi $1
srav $4, $3, $3
TAG244:
mult $4, $4
lb $2, 0($4)
sh $2, 0($2)
ori $4, $2, 3
TAG245:
bltz $4, TAG246
mtlo $4
bne $4, $4, TAG246
lbu $2, 0($4)
TAG246:
sh $2, 0($2)
sb $2, 0($2)
lh $4, 0($2)
mthi $4
TAG247:
addiu $1, $4, 4
lui $1, 14
slt $3, $4, $1
sll $0, $0, 0
TAG248:
blez $2, TAG249
lui $2, 7
bne $2, $2, TAG249
sw $2, 0($2)
TAG249:
sra $2, $2, 2
slti $4, $2, 11
xori $4, $2, 10
nor $3, $4, $2
TAG250:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
lui $3, 8
TAG251:
lui $2, 5
blez $3, TAG252
sll $0, $0, 0
blez $2, TAG252
TAG252:
srav $2, $2, $2
mtlo $2
lui $4, 7
sll $0, $0, 0
TAG253:
beq $4, $4, TAG254
slti $4, $4, 0
lui $1, 15
bgtz $1, TAG254
TAG254:
mflo $1
multu $1, $1
lui $4, 6
srl $2, $1, 13
TAG255:
lui $1, 13
div $1, $2
lw $4, 0($2)
sll $0, $0, 0
TAG256:
div $4, $4
mult $4, $4
lui $2, 5
lui $4, 8
TAG257:
slti $4, $4, 15
nor $3, $4, $4
mult $4, $4
mtlo $4
TAG258:
sllv $2, $3, $3
mtlo $3
lui $1, 1
divu $2, $3
TAG259:
sll $0, $0, 0
mfhi $4
addu $2, $1, $4
divu $1, $2
TAG260:
div $2, $2
sll $0, $0, 0
mtlo $3
mfhi $2
TAG261:
addiu $2, $2, 13
beq $2, $2, TAG262
sll $3, $2, 12
lb $2, 0($2)
TAG262:
mflo $4
subu $2, $2, $2
mthi $4
mtlo $4
TAG263:
lw $3, 0($2)
andi $4, $3, 3
bgtz $3, TAG264
sw $4, 0($2)
TAG264:
beq $4, $4, TAG265
mthi $4
sra $1, $4, 4
or $4, $1, $4
TAG265:
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
TAG266:
lw $1, 0($2)
sb $1, 0($2)
mthi $1
addiu $2, $2, 13
TAG267:
sb $2, 0($2)
lui $3, 2
mflo $4
addiu $1, $2, 5
TAG268:
addiu $4, $1, 12
lbu $1, 0($1)
lh $4, 0($4)
lbu $3, 0($4)
TAG269:
beq $3, $3, TAG270
mfhi $2
xor $1, $3, $3
lui $1, 11
TAG270:
mfhi $4
sltu $3, $1, $1
lhu $3, 0($3)
lui $2, 13
TAG271:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG272
mult $2, $2
TAG272:
div $2, $2
lui $3, 15
bltz $3, TAG273
addu $4, $2, $2
TAG273:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 9
sltu $1, $3, $3
TAG274:
mult $1, $1
bgez $1, TAG275
multu $1, $1
mfhi $3
TAG275:
lui $4, 14
bltz $3, TAG276
lui $2, 2
mthi $2
TAG276:
srl $1, $2, 11
sw $1, 0($1)
xor $4, $1, $2
bgtz $1, TAG277
TAG277:
sll $0, $0, 0
bgtz $4, TAG278
mthi $4
div $4, $4
TAG278:
mtlo $4
div $4, $4
mult $4, $4
mthi $4
TAG279:
beq $4, $4, TAG280
srl $4, $4, 10
lw $4, 0($4)
sw $4, 0($4)
TAG280:
bgtz $4, TAG281
sb $4, 0($4)
nor $1, $4, $4
sb $1, 0($1)
TAG281:
sh $1, 0($1)
lui $1, 15
mfhi $2
sll $3, $1, 8
TAG282:
lui $4, 3
or $1, $4, $4
sra $4, $4, 15
xori $2, $4, 6
TAG283:
slt $4, $2, $2
lw $1, 0($4)
sb $1, 0($2)
andi $3, $2, 8
TAG284:
lui $4, 0
mthi $4
sub $2, $4, $3
subu $2, $2, $4
TAG285:
and $3, $2, $2
sb $2, 0($2)
nor $2, $3, $3
multu $2, $3
TAG286:
sll $1, $2, 12
beq $1, $1, TAG287
lui $3, 2
andi $1, $1, 10
TAG287:
mtlo $1
multu $1, $1
bne $1, $1, TAG288
lui $1, 12
TAG288:
mthi $1
xor $1, $1, $1
beq $1, $1, TAG289
lui $1, 14
TAG289:
bne $1, $1, TAG290
srlv $3, $1, $1
blez $1, TAG290
div $3, $3
TAG290:
mfhi $4
bgez $3, TAG291
mtlo $3
lui $4, 15
TAG291:
lhu $4, 0($4)
mthi $4
sllv $3, $4, $4
mthi $3
TAG292:
beq $3, $3, TAG293
lbu $1, 0($3)
blez $1, TAG293
div $1, $3
TAG293:
bgtz $1, TAG294
sw $1, 0($1)
sra $4, $1, 1
lb $2, 0($1)
TAG294:
blez $2, TAG295
lh $2, 0($2)
mthi $2
lui $3, 8
TAG295:
mult $3, $3
bgtz $3, TAG296
ori $3, $3, 10
sb $3, 0($3)
TAG296:
mthi $3
and $2, $3, $3
lh $4, 0($2)
bgtz $3, TAG297
TAG297:
mflo $1
lui $3, 9
srl $2, $1, 12
lui $1, 10
TAG298:
sll $0, $0, 0
mfhi $1
lui $1, 8
addu $2, $1, $1
TAG299:
blez $2, TAG300
xori $4, $2, 1
bne $2, $2, TAG300
lui $4, 9
TAG300:
mflo $2
slt $3, $2, $4
lui $3, 3
lui $3, 13
TAG301:
bne $3, $3, TAG302
sll $0, $0, 0
mthi $3
bgez $3, TAG302
TAG302:
subu $4, $3, $3
lui $4, 12
mflo $4
lui $2, 3
TAG303:
addiu $3, $2, 8
sll $0, $0, 0
mflo $4
srl $2, $3, 9
TAG304:
beq $2, $2, TAG305
lui $3, 9
divu $3, $2
mult $3, $2
TAG305:
mfhi $3
mthi $3
mflo $3
multu $3, $3
TAG306:
sra $3, $3, 0
sll $1, $3, 3
sb $1, 0($1)
mult $3, $3
TAG307:
lbu $1, 0($1)
or $1, $1, $1
bne $1, $1, TAG308
mtlo $1
TAG308:
lw $2, 0($1)
bltz $2, TAG309
srlv $1, $2, $2
sub $4, $1, $1
TAG309:
and $3, $4, $4
sw $4, 0($3)
sltu $3, $4, $3
or $2, $3, $4
TAG310:
multu $2, $2
slt $4, $2, $2
lui $4, 11
mthi $4
TAG311:
xori $4, $4, 3
sll $0, $0, 0
div $4, $4
bltz $4, TAG312
TAG312:
sll $0, $0, 0
mult $4, $3
or $4, $4, $3
xor $3, $3, $3
TAG313:
mtlo $3
bne $3, $3, TAG314
xori $4, $3, 7
multu $4, $3
TAG314:
bgtz $4, TAG315
mtlo $4
beq $4, $4, TAG315
sw $4, 0($4)
TAG315:
and $1, $4, $4
or $1, $1, $1
sb $4, 0($1)
mtlo $4
TAG316:
mult $1, $1
beq $1, $1, TAG317
srav $3, $1, $1
lw $3, 0($1)
TAG317:
bgtz $3, TAG318
sh $3, 0($3)
sb $3, 0($3)
lui $3, 10
TAG318:
bne $3, $3, TAG319
mult $3, $3
mult $3, $3
bne $3, $3, TAG319
TAG319:
sltu $1, $3, $3
sw $3, 0($1)
sb $1, 0($1)
mfhi $1
TAG320:
xor $1, $1, $1
beq $1, $1, TAG321
mfhi $1
sh $1, 0($1)
TAG321:
sh $1, 0($1)
andi $3, $1, 4
bne $3, $3, TAG322
sh $1, 0($3)
TAG322:
srl $4, $3, 14
bgtz $4, TAG323
slti $1, $4, 6
nor $4, $4, $3
TAG323:
slt $3, $4, $4
mflo $3
mult $3, $3
sb $3, 5($4)
TAG324:
mult $3, $3
blez $3, TAG325
mthi $3
sltiu $4, $3, 14
TAG325:
mtlo $4
lui $3, 5
mtlo $3
sra $2, $4, 8
TAG326:
divu $2, $2
sw $2, 1($2)
bne $2, $2, TAG327
and $1, $2, $2
TAG327:
div $1, $1
blez $1, TAG328
lui $4, 4
mfhi $2
TAG328:
lui $3, 7
mfhi $2
bgtz $3, TAG329
sb $2, 0($2)
TAG329:
mult $2, $2
lbu $1, 0($2)
mfhi $1
srav $4, $1, $1
TAG330:
mthi $4
srlv $2, $4, $4
lhu $1, 0($4)
sll $0, $0, 0
TAG331:
addiu $2, $1, 6
addiu $4, $2, 15
lui $4, 7
multu $4, $4
TAG332:
mfhi $3
bltz $3, TAG333
lui $1, 2
mtlo $3
TAG333:
mflo $1
blez $1, TAG334
mthi $1
sb $1, 0($1)
TAG334:
mflo $1
beq $1, $1, TAG335
div $1, $1
sb $1, 0($1)
TAG335:
mthi $1
sb $1, 0($1)
multu $1, $1
addiu $1, $1, 10
TAG336:
lb $2, 0($1)
sw $1, 0($2)
mfhi $1
mfhi $1
TAG337:
bne $1, $1, TAG338
mfhi $3
mult $1, $3
sw $1, 0($3)
TAG338:
mthi $3
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
TAG339:
mfhi $4
multu $3, $3
nor $4, $4, $3
multu $4, $4
TAG340:
slti $2, $4, 10
mult $2, $4
sll $0, $0, 0
multu $2, $4
TAG341:
addiu $4, $4, 5
blez $4, TAG342
mfhi $3
beq $4, $4, TAG342
TAG342:
mult $3, $3
multu $3, $3
bne $3, $3, TAG343
mfhi $3
TAG343:
sub $4, $3, $3
lw $3, 0($3)
mthi $4
lhu $4, 0($4)
TAG344:
lb $2, 0($4)
andi $3, $2, 13
sll $1, $2, 4
mtlo $1
TAG345:
xori $1, $1, 10
bne $1, $1, TAG346
sh $1, 0($1)
addiu $4, $1, 10
TAG346:
lui $1, 14
mflo $1
lw $2, 0($1)
sb $1, 0($1)
TAG347:
mthi $2
mflo $1
lbu $3, 0($2)
beq $2, $1, TAG348
TAG348:
addiu $3, $3, 9
lh $1, 0($3)
mtlo $3
addiu $4, $3, 1
TAG349:
bltz $4, TAG350
sll $4, $4, 11
bgez $4, TAG350
sll $0, $0, 0
TAG350:
sb $1, 0($1)
lh $2, 0($1)
mflo $1
lui $3, 11
TAG351:
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG352:
sll $0, $0, 0
addu $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG353:
sll $0, $0, 0
lh $2, 0($2)
mult $2, $2
andi $2, $2, 14
TAG354:
nor $2, $2, $2
bne $2, $2, TAG355
lh $2, 1($2)
xori $4, $2, 15
TAG355:
mfhi $3
blez $3, TAG356
lb $3, 0($4)
subu $3, $4, $4
TAG356:
bgtz $3, TAG357
lw $2, 0($3)
mult $2, $3
lbu $3, 0($3)
TAG357:
mtlo $3
beq $3, $3, TAG358
lhu $2, 0($3)
sltiu $2, $3, 6
TAG358:
mtlo $2
lui $2, 14
bgtz $2, TAG359
mtlo $2
TAG359:
mfhi $3
mtlo $3
beq $3, $3, TAG360
mfhi $2
TAG360:
bltz $2, TAG361
slti $3, $2, 1
multu $2, $3
lh $3, 0($2)
TAG361:
sll $4, $3, 9
lb $3, 0($3)
bne $4, $3, TAG362
ori $4, $3, 1
TAG362:
lui $3, 10
subu $2, $3, $4
subu $1, $3, $2
lui $4, 3
TAG363:
bltz $4, TAG364
div $4, $4
mfhi $4
mthi $4
TAG364:
mflo $4
srlv $4, $4, $4
mthi $4
sll $4, $4, 12
TAG365:
mflo $3
sw $4, 0($4)
bltz $4, TAG366
divu $3, $3
TAG366:
lb $1, 0($3)
ori $3, $3, 4
beq $3, $3, TAG367
sh $3, 0($1)
TAG367:
lui $4, 4
sll $0, $0, 0
sltiu $4, $3, 14
mtlo $4
TAG368:
lui $3, 10
sll $0, $0, 0
sltu $3, $1, $1
sb $1, 0($3)
TAG369:
srlv $2, $3, $3
bgez $2, TAG370
lb $4, 0($2)
mflo $1
TAG370:
srav $1, $1, $1
or $1, $1, $1
bgez $1, TAG371
mtlo $1
TAG371:
mtlo $1
mfhi $3
lhu $4, 0($1)
lhu $3, 0($1)
TAG372:
bne $3, $3, TAG373
mtlo $3
mfhi $3
mtlo $3
TAG373:
lui $4, 8
sll $0, $0, 0
lui $4, 11
lhu $1, 0($1)
TAG374:
sh $1, 0($1)
mult $1, $1
mtlo $1
sllv $2, $1, $1
TAG375:
sh $2, 0($2)
lbu $1, 0($2)
lbu $2, 0($1)
sw $1, 0($1)
TAG376:
sb $2, 0($2)
bne $2, $2, TAG377
lhu $2, 0($2)
mfhi $1
TAG377:
mult $1, $1
lui $3, 2
bgtz $1, TAG378
multu $1, $3
TAG378:
sll $0, $0, 0
lui $1, 8
sh $1, 0($2)
sll $0, $0, 0
TAG379:
bgtz $3, TAG380
sll $0, $0, 0
multu $2, $3
mflo $2
TAG380:
subu $2, $2, $2
mtlo $2
lui $4, 4
lw $1, 0($2)
TAG381:
multu $1, $1
sllv $1, $1, $1
mult $1, $1
sw $1, 0($1)
TAG382:
mtlo $1
bne $1, $1, TAG383
mtlo $1
mfhi $1
TAG383:
sltu $1, $1, $1
bne $1, $1, TAG384
addiu $3, $1, 7
multu $1, $1
TAG384:
lui $3, 6
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG385:
andi $2, $1, 13
lui $2, 2
nor $4, $2, $2
bne $2, $4, TAG386
TAG386:
sll $0, $0, 0
andi $1, $4, 12
lbu $2, 0($1)
bgtz $2, TAG387
TAG387:
div $2, $2
bne $2, $2, TAG388
mflo $2
or $4, $2, $2
TAG388:
mtlo $4
beq $4, $4, TAG389
and $1, $4, $4
lui $3, 8
TAG389:
mthi $3
addiu $2, $3, 14
srav $4, $2, $3
lui $2, 0
TAG390:
mthi $2
xor $4, $2, $2
sll $4, $2, 12
sh $4, 0($2)
TAG391:
mthi $4
multu $4, $4
mthi $4
mthi $4
TAG392:
lui $1, 0
lhu $3, 0($1)
addiu $3, $1, 5
sb $1, 0($3)
TAG393:
mult $3, $3
addiu $2, $3, 11
div $3, $2
sllv $2, $2, $2
TAG394:
mfhi $1
mthi $2
lbu $4, 0($1)
xori $3, $1, 6
TAG395:
mthi $3
lb $4, 0($3)
lui $1, 15
mtlo $3
TAG396:
mfhi $4
nor $3, $1, $1
bltz $3, TAG397
multu $3, $3
TAG397:
sll $0, $0, 0
sllv $4, $3, $3
slti $1, $3, 8
div $3, $3
TAG398:
mtlo $1
mult $1, $1
lui $1, 12
mthi $1
TAG399:
sll $3, $1, 7
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
TAG400:
bgez $2, TAG401
sll $0, $0, 0
sh $2, 0($2)
lhu $4, 0($2)
TAG401:
sll $4, $4, 3
mthi $4
mfhi $3
sh $3, 0($4)
TAG402:
blez $3, TAG403
nor $4, $3, $3
bne $4, $4, TAG403
add $3, $4, $3
TAG403:
lhu $4, 0($3)
beq $3, $4, TAG404
mfhi $4
sh $3, 0($4)
TAG404:
sllv $3, $4, $4
bgtz $4, TAG405
mflo $1
div $4, $1
TAG405:
lb $3, 0($1)
lui $3, 13
lui $4, 6
lui $4, 14
TAG406:
mtlo $4
divu $4, $4
mthi $4
bltz $4, TAG407
TAG407:
lui $4, 5
mflo $3
lui $4, 5
mflo $1
TAG408:
bgez $1, TAG409
sb $1, 0($1)
mtlo $1
lui $1, 14
TAG409:
mtlo $1
beq $1, $1, TAG410
lbu $3, 0($1)
lb $4, 0($3)
TAG410:
srl $2, $4, 3
mthi $2
addiu $4, $2, 9
bltz $4, TAG411
TAG411:
multu $4, $4
sll $0, $0, 0
lui $3, 13
lui $3, 6
TAG412:
addiu $1, $3, 12
mtlo $3
bne $3, $3, TAG413
sll $0, $0, 0
TAG413:
bne $1, $1, TAG414
lui $4, 14
or $2, $4, $1
sll $0, $0, 0
TAG414:
bne $2, $2, TAG415
mfhi $2
lb $3, 0($2)
lui $3, 13
TAG415:
sll $0, $0, 0
sll $0, $0, 0
srlv $2, $3, $1
mult $1, $1
TAG416:
sltiu $1, $2, 5
bgez $1, TAG417
sh $1, 0($1)
bgez $1, TAG417
TAG417:
mtlo $1
sll $3, $1, 4
multu $1, $1
srl $3, $3, 6
TAG418:
bgez $3, TAG419
lh $2, 0($3)
div $3, $3
mfhi $1
TAG419:
sh $1, 0($1)
lbu $4, 0($1)
lui $2, 7
sw $2, 0($1)
TAG420:
bne $2, $2, TAG421
sll $4, $2, 7
addiu $1, $2, 2
mtlo $1
TAG421:
sll $0, $0, 0
div $1, $1
mtlo $1
bltz $1, TAG422
TAG422:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
bgtz $4, TAG423
TAG423:
slt $3, $4, $4
lui $2, 14
mthi $2
slt $3, $4, $4
TAG424:
bne $3, $3, TAG425
lhu $4, 0($3)
lui $1, 5
mtlo $3
TAG425:
multu $1, $1
srlv $1, $1, $1
blez $1, TAG426
sll $0, $0, 0
TAG426:
slti $1, $1, 14
sb $1, 0($1)
sh $1, 0($1)
lh $1, 0($1)
TAG427:
sw $1, 0($1)
bgez $1, TAG428
lh $2, 0($1)
sh $2, 0($2)
TAG428:
mfhi $2
mtlo $2
sb $2, 0($2)
sb $2, 0($2)
TAG429:
lui $3, 3
bgtz $2, TAG430
lui $1, 10
divu $2, $2
TAG430:
srl $3, $1, 7
lw $2, -5120($3)
lh $1, 0($2)
subu $4, $1, $3
TAG431:
mult $4, $4
bltz $4, TAG432
sb $4, 5120($4)
bgtz $4, TAG432
TAG432:
sll $0, $0, 0
sb $4, 5120($4)
mtlo $4
lb $1, 5120($4)
TAG433:
sub $4, $1, $1
srl $4, $4, 3
or $2, $4, $4
mthi $2
TAG434:
sh $2, 0($2)
lh $3, 0($2)
mflo $4
multu $3, $2
TAG435:
beq $4, $4, TAG436
lw $2, 5120($4)
beq $4, $4, TAG436
lh $4, 0($4)
TAG436:
nor $1, $4, $4
mflo $4
beq $1, $4, TAG437
lui $2, 3
TAG437:
srlv $3, $2, $2
mult $2, $2
lui $3, 2
div $3, $2
TAG438:
addiu $4, $3, 7
mthi $3
addu $4, $3, $3
mtlo $4
TAG439:
ori $2, $4, 15
bltz $4, TAG440
subu $2, $4, $2
multu $2, $4
TAG440:
mult $2, $2
bne $2, $2, TAG441
lbu $1, 15($2)
mthi $1
TAG441:
xori $4, $1, 0
blez $4, TAG442
lw $1, 0($1)
lui $4, 13
TAG442:
sb $4, 0($4)
and $1, $4, $4
add $2, $4, $1
sb $2, 0($2)
TAG443:
mflo $1
sw $1, 0($2)
bltz $2, TAG444
lui $1, 4
TAG444:
sll $0, $0, 0
bne $4, $1, TAG445
lui $3, 12
lui $2, 3
TAG445:
multu $2, $2
lb $3, 0($2)
blez $3, TAG446
lbu $2, 0($2)
TAG446:
sh $2, -225($2)
mult $2, $2
lbu $2, -225($2)
addu $4, $2, $2
TAG447:
xori $3, $4, 12
lui $3, 9
bne $4, $4, TAG448
lhu $2, -450($4)
TAG448:
mfhi $3
mtlo $2
beq $2, $2, TAG449
lui $4, 14
TAG449:
mfhi $4
mthi $4
and $2, $4, $4
andi $2, $4, 1
TAG450:
lui $2, 6
ori $4, $2, 10
mflo $2
xori $3, $2, 6
TAG451:
bne $3, $3, TAG452
srl $3, $3, 6
mult $3, $3
addiu $2, $3, 4
TAG452:
lui $1, 1
srl $3, $2, 4
srlv $3, $1, $1
lui $4, 13
TAG453:
xori $3, $4, 11
lui $3, 3
bne $4, $4, TAG454
sll $0, $0, 0
TAG454:
beq $3, $3, TAG455
xori $2, $3, 12
mtlo $3
lui $2, 3
TAG455:
beq $2, $2, TAG456
lui $2, 6
bne $2, $2, TAG456
mflo $4
TAG456:
lui $3, 2
ori $4, $3, 7
mflo $4
mflo $4
TAG457:
xori $4, $4, 14
mthi $4
sb $4, 0($4)
nor $4, $4, $4
TAG458:
mfhi $1
sh $4, 8($4)
mflo $4
mtlo $4
TAG459:
lb $4, 0($4)
srl $2, $4, 11
bgtz $4, TAG460
sw $4, 0($2)
TAG460:
lb $3, 0($2)
srlv $2, $3, $2
lui $1, 2
bgez $3, TAG461
TAG461:
sll $0, $0, 0
bgtz $2, TAG462
mtlo $2
sltu $4, $1, $2
TAG462:
mult $4, $4
sb $4, 0($4)
mthi $4
divu $4, $4
TAG463:
lui $3, 4
sll $0, $0, 0
mthi $3
mflo $4
TAG464:
bne $4, $4, TAG465
lui $1, 14
ori $3, $4, 9
sltu $2, $4, $3
TAG465:
mthi $2
bgez $2, TAG466
xori $1, $2, 13
sw $1, 0($2)
TAG466:
sb $1, 0($1)
bltz $1, TAG467
slt $3, $1, $1
mthi $3
TAG467:
bgtz $3, TAG468
xori $2, $3, 15
bne $3, $3, TAG468
sh $3, 0($3)
TAG468:
mfhi $3
andi $2, $2, 5
mfhi $1
mthi $3
TAG469:
lui $2, 7
lui $3, 8
sll $0, $0, 0
sb $2, 0($1)
TAG470:
bgez $3, TAG471
subu $2, $3, $3
bltz $2, TAG471
lui $3, 14
TAG471:
lui $3, 9
bne $3, $3, TAG472
sll $0, $0, 0
sra $3, $3, 4
TAG472:
bltz $3, TAG473
div $3, $3
mflo $1
mfhi $3
TAG473:
srav $4, $3, $3
sra $1, $4, 15
addu $2, $3, $3
sllv $2, $3, $4
TAG474:
subu $1, $2, $2
bne $2, $1, TAG475
lhu $4, 0($1)
bne $2, $2, TAG475
TAG475:
sh $4, 0($4)
sw $4, 0($4)
nor $1, $4, $4
mfhi $2
TAG476:
mfhi $4
mfhi $4
lui $3, 15
mthi $3
TAG477:
multu $3, $3
beq $3, $3, TAG478
divu $3, $3
mtlo $3
TAG478:
sll $0, $0, 0
xor $3, $4, $3
mult $3, $3
lui $3, 9
TAG479:
lui $2, 8
bltz $2, TAG480
mfhi $1
mthi $2
TAG480:
mfhi $4
ori $2, $4, 10
lui $1, 6
mfhi $2
TAG481:
beq $2, $2, TAG482
divu $2, $2
sb $2, 0($2)
sb $2, 0($2)
TAG482:
mthi $2
beq $2, $2, TAG483
sll $0, $0, 0
mflo $4
TAG483:
ori $4, $4, 14
mtlo $4
mflo $1
mthi $4
TAG484:
bgtz $1, TAG485
divu $1, $1
beq $1, $1, TAG485
div $1, $1
TAG485:
mthi $1
sll $0, $0, 0
mthi $3
mthi $1
TAG486:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
bgtz $2, TAG487
TAG487:
sll $0, $0, 0
lui $2, 0
addu $4, $1, $4
lui $2, 1
TAG488:
sll $0, $0, 0
lui $3, 1
mfhi $2
lui $1, 9
TAG489:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
nor $3, $2, $2
TAG490:
subu $4, $3, $3
mtlo $4
mflo $1
srlv $2, $1, $1
TAG491:
bltz $2, TAG492
mflo $3
addiu $1, $2, 7
and $2, $2, $1
TAG492:
lh $4, 0($2)
slti $3, $2, 6
lb $2, 0($4)
sw $4, 0($2)
TAG493:
mult $2, $2
sub $2, $2, $2
bltz $2, TAG494
addi $2, $2, 4
TAG494:
mult $2, $2
sb $2, 0($2)
lui $3, 9
sll $0, $0, 0
TAG495:
bgez $3, TAG496
lui $4, 6
beq $3, $4, TAG496
mult $3, $4
TAG496:
sll $0, $0, 0
bgtz $4, TAG497
subu $3, $4, $4
mthi $4
TAG497:
beq $3, $3, TAG498
lui $3, 2
beq $3, $3, TAG498
lui $1, 2
TAG498:
lb $3, 0($1)
sll $2, $1, 15
mtlo $3
mtlo $1
TAG499:
addu $3, $2, $2
sll $0, $0, 0
bne $2, $2, TAG500
mtlo $3
TAG500:
addiu $4, $3, 6
sll $0, $0, 0
sltiu $1, $4, 8
sll $0, $0, 0
TAG501:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
divu $2, $2
TAG502:
slti $1, $2, 8
lw $1, 0($1)
blez $1, TAG503
lh $1, 0($1)
TAG503:
sb $1, 0($1)
sra $1, $1, 7
lui $3, 3
mtlo $1
TAG504:
multu $3, $3
sll $0, $0, 0
subu $2, $3, $3
sll $4, $2, 14
TAG505:
mflo $4
beq $4, $4, TAG506
sllv $2, $4, $4
sw $2, 0($4)
TAG506:
lb $4, 0($2)
sll $1, $4, 5
bgtz $4, TAG507
lui $3, 12
TAG507:
addiu $3, $3, 9
xor $4, $3, $3
mtlo $4
addiu $1, $3, 13
TAG508:
beq $1, $1, TAG509
mthi $1
mtlo $1
lui $2, 1
TAG509:
blez $2, TAG510
sw $2, 0($2)
bgez $2, TAG510
lw $2, 0($2)
TAG510:
mult $2, $2
beq $2, $2, TAG511
lhu $3, 0($2)
mflo $3
TAG511:
or $1, $3, $3
lui $2, 1
bne $2, $2, TAG512
sltiu $4, $1, 10
TAG512:
lbu $3, 0($4)
lbu $3, 0($4)
mtlo $3
mult $3, $3
TAG513:
mthi $3
lbu $1, 0($3)
mfhi $3
mult $1, $1
TAG514:
mthi $3
mthi $3
sll $3, $3, 11
mfhi $2
TAG515:
sra $4, $2, 12
mtlo $2
bne $2, $2, TAG516
mtlo $2
TAG516:
lhu $4, 0($4)
bgtz $4, TAG517
multu $4, $4
blez $4, TAG517
TAG517:
lui $2, 4
mthi $4
beq $2, $2, TAG518
add $1, $4, $4
TAG518:
xori $1, $1, 6
mult $1, $1
lh $4, 0($1)
srav $3, $1, $4
TAG519:
lui $2, 3
sh $2, 0($3)
multu $3, $3
sltu $1, $2, $2
TAG520:
sb $1, 0($1)
sb $1, 0($1)
mtlo $1
slti $3, $1, 8
TAG521:
lui $2, 9
bne $3, $2, TAG522
div $3, $3
subu $1, $2, $2
TAG522:
multu $1, $1
mflo $4
sh $1, 0($1)
srlv $4, $1, $1
TAG523:
lbu $4, 0($4)
sw $4, 0($4)
bgez $4, TAG524
mthi $4
TAG524:
sw $4, 0($4)
sltiu $3, $4, 8
beq $4, $3, TAG525
lui $1, 8
TAG525:
mthi $1
addu $2, $1, $1
lui $4, 14
mtlo $1
TAG526:
mfhi $2
sll $0, $0, 0
mthi $2
lui $4, 1
TAG527:
addiu $1, $4, 13
sll $0, $0, 0
divu $1, $1
lui $1, 15
TAG528:
sra $2, $1, 3
mtlo $2
beq $1, $2, TAG529
srl $1, $1, 9
TAG529:
multu $1, $1
div $1, $1
mfhi $1
mtlo $1
TAG530:
mflo $4
lhu $4, 0($1)
sltu $2, $4, $4
lbu $4, 0($4)
TAG531:
lw $1, 0($4)
sub $4, $1, $4
mflo $3
mthi $4
TAG532:
sh $3, 0($3)
beq $3, $3, TAG533
sh $3, 0($3)
sw $3, 0($3)
TAG533:
ori $1, $3, 14
mtlo $3
lhu $1, 0($1)
sltiu $1, $1, 9
TAG534:
mfhi $1
srav $2, $1, $1
sw $1, 0($2)
mflo $1
TAG535:
lb $1, 0($1)
mthi $1
mflo $4
lui $3, 4
TAG536:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
mfhi $2
TAG537:
mfhi $2
lui $4, 13
sll $0, $0, 0
sw $2, 0($2)
TAG538:
bgez $4, TAG539
divu $4, $4
lw $2, 0($4)
mult $4, $2
TAG539:
sb $2, 0($2)
beq $2, $2, TAG540
slti $3, $2, 5
beq $3, $2, TAG540
TAG540:
addu $4, $3, $3
lui $3, 9
mfhi $1
mtlo $3
TAG541:
mfhi $2
bne $2, $2, TAG542
mfhi $3
mthi $3
TAG542:
subu $1, $3, $3
lw $2, 0($1)
add $3, $3, $2
addiu $3, $3, 10
TAG543:
lui $4, 13
beq $4, $4, TAG544
mthi $3
lui $4, 7
TAG544:
or $1, $4, $4
bne $1, $4, TAG545
mult $1, $4
srav $1, $1, $1
TAG545:
sllv $1, $1, $1
sll $0, $0, 0
mult $1, $1
subu $3, $1, $1
TAG546:
mtlo $3
multu $3, $3
sw $3, 0($3)
sh $3, 0($3)
TAG547:
multu $3, $3
mfhi $2
lui $4, 6
sh $3, 0($2)
TAG548:
sll $0, $0, 0
addiu $2, $4, 13
bne $2, $4, TAG549
divu $2, $2
TAG549:
bgtz $2, TAG550
mthi $2
mthi $2
bltz $2, TAG550
TAG550:
mfhi $2
xor $4, $2, $2
lui $2, 4
div $4, $2
TAG551:
mult $2, $2
mtlo $2
bltz $2, TAG552
subu $2, $2, $2
TAG552:
multu $2, $2
ori $4, $2, 13
div $4, $4
xori $2, $4, 14
TAG553:
blez $2, TAG554
mtlo $2
div $2, $2
sb $2, 0($2)
TAG554:
lui $3, 9
lb $3, 0($2)
sb $3, 0($3)
bgez $3, TAG555
TAG555:
srl $2, $3, 0
mfhi $1
mtlo $3
lui $3, 15
TAG556:
mthi $3
slti $4, $3, 8
mthi $3
divu $3, $3
TAG557:
multu $4, $4
lui $2, 8
beq $2, $4, TAG558
mtlo $2
TAG558:
blez $2, TAG559
sll $0, $0, 0
mfhi $3
beq $2, $3, TAG559
TAG559:
mtlo $3
mthi $3
xori $3, $3, 8
mflo $4
TAG560:
multu $4, $4
lhu $1, 0($4)
lb $3, 0($4)
bgtz $4, TAG561
TAG561:
lui $1, 14
mfhi $4
mtlo $4
bne $3, $3, TAG562
TAG562:
multu $4, $4
mtlo $4
lui $4, 13
sll $0, $0, 0
TAG563:
sll $0, $0, 0
xor $4, $2, $2
bgez $4, TAG564
sb $2, 0($4)
TAG564:
sw $4, 0($4)
blez $4, TAG565
mthi $4
sb $4, 0($4)
TAG565:
sh $4, 0($4)
sltiu $3, $4, 12
mthi $4
lb $2, 0($3)
TAG566:
lbu $3, 0($2)
sltiu $4, $3, 9
lbu $1, 0($4)
or $3, $1, $2
TAG567:
mfhi $3
mfhi $3
addu $4, $3, $3
sh $3, 0($3)
TAG568:
lb $1, 0($4)
mflo $2
lhu $2, 0($4)
bne $2, $1, TAG569
TAG569:
mult $2, $2
lbu $2, 0($2)
bgtz $2, TAG570
mtlo $2
TAG570:
sw $2, 0($2)
mflo $2
mfhi $2
bne $2, $2, TAG571
TAG571:
sb $2, 0($2)
mflo $3
mfhi $3
bltz $2, TAG572
TAG572:
addiu $4, $3, 10
mult $4, $3
lui $1, 13
sb $1, 0($3)
TAG573:
lui $3, 2
beq $1, $1, TAG574
divu $3, $1
slt $4, $3, $1
TAG574:
divu $4, $4
srlv $4, $4, $4
beq $4, $4, TAG575
lui $1, 5
TAG575:
mfhi $3
bne $3, $3, TAG576
mtlo $1
mtlo $3
TAG576:
mflo $3
bne $3, $3, TAG577
sw $3, 0($3)
multu $3, $3
TAG577:
lb $3, 0($3)
sb $3, 0($3)
bgez $3, TAG578
lui $3, 1
TAG578:
xor $1, $3, $3
srl $1, $1, 12
slti $4, $1, 4
mult $1, $3
TAG579:
lbu $2, 0($4)
lw $3, 0($2)
bgtz $3, TAG580
mult $3, $2
TAG580:
or $4, $3, $3
lb $2, 0($3)
addiu $4, $3, 3
lui $3, 15
TAG581:
bne $3, $3, TAG582
mtlo $3
mthi $3
multu $3, $3
TAG582:
sll $0, $0, 0
mthi $3
mthi $3
mfhi $3
TAG583:
bgez $3, TAG584
lui $3, 3
sltiu $4, $3, 14
bltz $4, TAG584
TAG584:
or $4, $4, $4
bne $4, $4, TAG585
sb $4, 0($4)
bne $4, $4, TAG585
TAG585:
sb $4, 0($4)
and $1, $4, $4
div $4, $1
sb $4, 0($1)
TAG586:
subu $2, $1, $1
addu $3, $1, $2
bne $3, $1, TAG587
mtlo $3
TAG587:
bgtz $3, TAG588
lui $2, 5
beq $2, $2, TAG588
multu $3, $3
TAG588:
bltz $2, TAG589
nor $2, $2, $2
addiu $1, $2, 0
lui $3, 9
TAG589:
multu $3, $3
lui $2, 6
mthi $2
mtlo $3
TAG590:
sll $0, $0, 0
sll $3, $4, 8
beq $3, $4, TAG591
addiu $3, $4, 0
TAG591:
mtlo $3
sb $3, 0($3)
divu $3, $3
lb $1, 0($3)
TAG592:
srav $2, $1, $1
bne $1, $2, TAG593
ori $4, $1, 4
bne $1, $4, TAG593
TAG593:
multu $4, $4
mfhi $1
lui $1, 3
and $1, $1, $1
TAG594:
mflo $1
mfhi $3
lb $2, 0($3)
mfhi $2
TAG595:
and $2, $2, $2
lui $4, 5
lw $2, 0($2)
lui $3, 11
TAG596:
xor $3, $3, $3
lui $4, 5
bgtz $3, TAG597
mthi $3
TAG597:
bltz $4, TAG598
sll $0, $0, 0
srlv $4, $4, $4
bgez $4, TAG598
TAG598:
mflo $1
beq $1, $4, TAG599
lbu $4, 0($1)
mfhi $3
TAG599:
multu $3, $3
multu $3, $3
multu $3, $3
mfhi $4
TAG600:
sb $4, 0($4)
mtlo $4
multu $4, $4
mtlo $4
TAG601:
bgtz $4, TAG602
mfhi $4
bltz $4, TAG602
mtlo $4
TAG602:
lui $2, 13
lui $2, 8
beq $4, $2, TAG603
mflo $1
TAG603:
lw $3, 0($1)
sll $0, $0, 0
divu $1, $3
bltz $3, TAG604
TAG604:
andi $1, $3, 6
bgez $1, TAG605
divu $3, $3
mtlo $1
TAG605:
mflo $2
mtlo $1
mult $1, $2
sb $1, 0($2)
TAG606:
bgez $2, TAG607
mfhi $4
div $4, $4
mfhi $2
TAG607:
lui $1, 13
subu $2, $2, $2
sb $2, 0($2)
beq $2, $2, TAG608
TAG608:
sra $2, $2, 11
mflo $1
sw $2, 0($2)
andi $2, $1, 7
TAG609:
bgez $2, TAG610
lui $2, 13
mflo $2
mfhi $2
TAG610:
addu $3, $2, $2
lui $3, 11
subu $4, $3, $3
bgez $3, TAG611
TAG611:
lui $2, 4
sll $0, $0, 0
mthi $2
lhu $2, 0($4)
TAG612:
sw $2, 0($2)
sh $2, 0($2)
mtlo $2
mult $2, $2
TAG613:
lbu $2, 0($2)
mthi $2
nor $2, $2, $2
mthi $2
TAG614:
mflo $3
slt $2, $3, $3
mthi $3
mfhi $3
TAG615:
bgez $3, TAG616
lui $1, 0
mflo $4
mtlo $3
TAG616:
addiu $1, $4, 1
mfhi $1
sltu $3, $1, $4
srlv $3, $1, $4
TAG617:
lh $2, 0($3)
sltiu $4, $3, 2
mthi $2
multu $4, $4
TAG618:
addu $4, $4, $4
blez $4, TAG619
ori $1, $4, 4
lhu $2, 0($1)
TAG619:
sw $2, 0($2)
lui $3, 0
sra $1, $2, 8
lw $4, 0($3)
TAG620:
mthi $4
beq $4, $4, TAG621
slti $4, $4, 0
mthi $4
TAG621:
mthi $4
add $4, $4, $4
sb $4, 0($4)
xor $1, $4, $4
TAG622:
bgez $1, TAG623
and $4, $1, $1
xori $4, $1, 9
sub $4, $1, $4
TAG623:
xori $4, $4, 7
bgez $4, TAG624
srl $4, $4, 7
beq $4, $4, TAG624
TAG624:
addiu $1, $4, 6
bltz $4, TAG625
mthi $4
sh $4, 0($1)
TAG625:
lui $3, 9
blez $3, TAG626
mthi $3
lbu $3, 0($1)
TAG626:
sltiu $2, $3, 11
sw $3, 0($3)
sll $3, $3, 4
mthi $3
TAG627:
lui $2, 8
mflo $2
bgez $2, TAG628
xori $3, $3, 13
TAG628:
mflo $4
mult $4, $3
sllv $4, $3, $4
sh $4, 0($4)
TAG629:
srl $4, $4, 9
mfhi $4
ori $2, $4, 10
mthi $4
TAG630:
lui $1, 4
slti $3, $2, 1
bne $1, $3, TAG631
sb $1, 0($2)
TAG631:
srl $1, $3, 4
mflo $4
multu $4, $3
mthi $1
TAG632:
ori $2, $4, 14
lbu $1, 0($2)
multu $1, $1
lui $3, 10
TAG633:
mflo $1
bne $3, $3, TAG634
div $1, $3
mthi $1
TAG634:
slti $4, $1, 14
sltiu $3, $4, 6
srl $1, $1, 7
xori $2, $1, 12
TAG635:
sb $2, 0($2)
bne $2, $2, TAG636
mthi $2
bgez $2, TAG636
TAG636:
divu $2, $2
lui $4, 3
lh $4, 0($2)
divu $4, $2
TAG637:
beq $4, $4, TAG638
addu $3, $4, $4
mflo $4
mthi $3
TAG638:
beq $4, $4, TAG639
sltu $1, $4, $4
add $1, $4, $4
sltiu $3, $4, 0
TAG639:
sb $3, -6680($3)
lui $1, 2
lui $1, 15
bgez $1, TAG640
TAG640:
slt $4, $1, $1
beq $1, $4, TAG641
sw $1, 0($4)
sra $1, $1, 10
TAG641:
sll $1, $1, 5
slti $4, $1, 4
beq $4, $1, TAG642
xori $3, $4, 6
TAG642:
mtlo $3
divu $3, $3
slt $1, $3, $3
sh $1, 0($3)
TAG643:
mfhi $3
or $2, $1, $3
mthi $3
lui $2, 14
TAG644:
divu $2, $2
sltiu $1, $2, 12
lui $2, 11
sll $0, $0, 0
TAG645:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
sh $2, 0($1)
TAG646:
mflo $1
lbu $3, 0($1)
multu $1, $1
mtlo $3
TAG647:
bgez $3, TAG648
ori $3, $3, 12
bgtz $3, TAG648
sltu $2, $3, $3
TAG648:
lui $3, 5
sltiu $4, $3, 5
lui $1, 9
sll $0, $0, 0
TAG649:
mflo $3
mflo $1
bgtz $1, TAG650
sb $3, 0($1)
TAG650:
bltz $1, TAG651
slti $1, $1, 8
lb $1, 0($1)
lui $3, 2
TAG651:
sll $0, $0, 0
multu $3, $4
ori $4, $3, 14
xori $4, $3, 10
TAG652:
div $4, $4
div $4, $4
sll $0, $0, 0
lui $4, 8
TAG653:
mthi $4
mflo $2
addiu $1, $2, 5
sll $0, $0, 0
TAG654:
sll $0, $0, 0
mult $3, $3
lui $4, 6
lui $4, 4
TAG655:
bgtz $4, TAG656
sll $0, $0, 0
multu $4, $4
lb $2, 0($4)
TAG656:
sra $2, $2, 4
addi $1, $2, 1
srlv $3, $2, $2
beq $2, $3, TAG657
TAG657:
lb $2, 0($3)
sh $3, 0($3)
sb $3, 0($2)
mthi $2
TAG658:
multu $2, $2
add $2, $2, $2
bgez $2, TAG659
subu $1, $2, $2
TAG659:
addu $2, $1, $1
bgtz $1, TAG660
lui $1, 5
lw $4, 0($2)
TAG660:
slt $2, $4, $4
andi $1, $2, 1
sll $0, $0, 0
mthi $3
TAG661:
multu $3, $3
beq $3, $3, TAG662
lui $2, 10
lw $1, 0($2)
TAG662:
mtlo $1
sllv $2, $1, $1
subu $4, $1, $1
bgtz $2, TAG663
TAG663:
add $1, $4, $4
beq $4, $1, TAG664
mflo $2
mult $2, $2
TAG664:
beq $2, $2, TAG665
mult $2, $2
mflo $3
mult $2, $3
TAG665:
lui $3, 6
mthi $3
sll $0, $0, 0
mflo $4
TAG666:
bne $4, $4, TAG667
multu $4, $4
lh $3, 0($4)
bne $4, $4, TAG667
TAG667:
mthi $3
multu $3, $3
addu $2, $3, $3
sw $2, 0($3)
TAG668:
multu $2, $2
multu $2, $2
mflo $4
lh $1, 0($4)
TAG669:
bne $1, $1, TAG670
sh $1, 0($1)
multu $1, $1
bgtz $1, TAG670
TAG670:
lbu $4, 0($1)
bne $1, $1, TAG671
mthi $4
sw $1, 0($4)
TAG671:
bgez $4, TAG672
sltu $1, $4, $4
sw $4, 0($1)
mthi $1
TAG672:
sub $4, $1, $1
sw $4, 0($4)
mtlo $1
lui $2, 7
TAG673:
srlv $4, $2, $2
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
TAG674:
mfhi $1
bne $4, $1, TAG675
lui $4, 1
mtlo $4
TAG675:
mfhi $1
sllv $3, $4, $4
sll $0, $0, 0
divu $1, $4
TAG676:
subu $1, $3, $3
lui $3, 2
bgez $1, TAG677
div $3, $3
TAG677:
mtlo $3
sltiu $4, $3, 5
sb $4, 0($4)
and $1, $4, $3
TAG678:
addiu $2, $1, 0
lui $1, 6
divu $2, $1
bne $2, $1, TAG679
TAG679:
or $1, $1, $1
bgez $1, TAG680
sll $0, $0, 0
srav $1, $1, $1
TAG680:
bne $1, $1, TAG681
mthi $1
mthi $1
bltz $1, TAG681
TAG681:
multu $1, $1
srl $1, $1, 5
mfhi $3
lbu $1, -12288($1)
TAG682:
mult $1, $1
sb $1, 0($1)
sll $3, $1, 15
mthi $3
TAG683:
blez $3, TAG684
mfhi $4
srlv $4, $4, $4
mfhi $3
TAG684:
xori $2, $3, 14
lhu $4, 0($2)
slt $3, $3, $2
mthi $4
TAG685:
lbu $4, 0($3)
sw $4, 0($4)
lb $4, 0($3)
mtlo $4
TAG686:
blez $4, TAG687
mult $4, $4
bltz $4, TAG687
lui $4, 2
TAG687:
multu $4, $4
add $3, $4, $4
mfhi $4
beq $4, $4, TAG688
TAG688:
addiu $4, $4, 9
mfhi $3
div $4, $4
lui $2, 3
TAG689:
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG690
multu $2, $2
TAG690:
or $2, $2, $2
bltz $2, TAG691
mfhi $4
mfhi $1
TAG691:
sb $1, 0($1)
lb $1, 0($1)
bgtz $1, TAG692
sra $4, $1, 11
TAG692:
lhu $3, 0($4)
xor $1, $3, $4
nor $3, $1, $3
beq $4, $3, TAG693
TAG693:
addiu $2, $3, 0
sh $3, 1($2)
mtlo $2
lui $1, 7
TAG694:
bgez $1, TAG695
mthi $1
lui $2, 1
lui $4, 9
TAG695:
mflo $1
bgtz $1, TAG696
mfhi $4
blez $4, TAG696
TAG696:
xor $3, $4, $4
beq $4, $3, TAG697
lui $3, 13
sll $2, $3, 9
TAG697:
lui $4, 0
lh $1, 0($4)
mflo $1
lui $4, 9
TAG698:
lui $4, 1
div $4, $4
lui $1, 8
mfhi $3
TAG699:
bne $3, $3, TAG700
mthi $3
lhu $2, 0($3)
srl $3, $2, 0
TAG700:
mult $3, $3
bne $3, $3, TAG701
sll $0, $0, 0
div $3, $3
TAG701:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG702:
mult $1, $1
addiu $3, $1, 1
bgez $1, TAG703
lhu $2, 0($3)
TAG703:
lb $2, 0($2)
srlv $2, $2, $2
lb $3, 0($2)
beq $3, $2, TAG704
TAG704:
mflo $2
mthi $2
lui $3, 4
srl $3, $3, 8
TAG705:
bne $3, $3, TAG706
mthi $3
sb $3, -1024($3)
slt $2, $3, $3
TAG706:
lui $2, 4
sltiu $3, $2, 8
and $1, $2, $2
mflo $3
TAG707:
blez $3, TAG708
mthi $3
mflo $1
mflo $1
TAG708:
sltu $4, $1, $1
div $4, $1
lb $1, 0($1)
bltz $4, TAG709
TAG709:
addu $3, $1, $1
bgez $3, TAG710
lui $1, 10
sll $0, $0, 0
TAG710:
mtlo $4
multu $4, $4
xori $4, $4, 13
sb $4, 0($4)
TAG711:
lui $2, 0
lb $3, 0($4)
nor $1, $2, $4
bgtz $2, TAG712
TAG712:
sltiu $1, $1, 14
lb $3, 0($1)
lui $1, 4
lui $3, 5
TAG713:
bltz $3, TAG714
lui $2, 2
lui $3, 13
mflo $3
TAG714:
mflo $2
srlv $4, $3, $3
bgez $3, TAG715
sllv $1, $3, $4
TAG715:
srl $1, $1, 14
blez $1, TAG716
lui $3, 1
mfhi $1
TAG716:
bgez $1, TAG717
sra $1, $1, 14
mfhi $3
mfhi $2
TAG717:
bne $2, $2, TAG718
mthi $2
bne $2, $2, TAG718
slti $4, $2, 7
TAG718:
mthi $4
bgtz $4, TAG719
lui $4, 14
mthi $4
TAG719:
multu $4, $4
sltiu $3, $4, 11
bltz $3, TAG720
mthi $4
TAG720:
mult $3, $3
nor $4, $3, $3
bgez $3, TAG721
andi $2, $3, 1
TAG721:
multu $2, $2
mtlo $2
lui $3, 15
sllv $2, $3, $2
TAG722:
sll $0, $0, 0
slt $3, $1, $1
lui $4, 2
bgtz $3, TAG723
TAG723:
ori $2, $4, 8
bltz $2, TAG724
mfhi $4
mthi $4
TAG724:
sltu $3, $4, $4
srlv $4, $3, $3
andi $3, $4, 11
sh $3, 0($3)
TAG725:
multu $3, $3
addu $3, $3, $3
bltz $3, TAG726
andi $3, $3, 5
TAG726:
lui $1, 7
mtlo $1
mthi $3
sw $3, 0($3)
TAG727:
nor $1, $1, $1
mflo $1
mfhi $4
mflo $3
TAG728:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
mthi $3
TAG729:
beq $3, $3, TAG730
sll $0, $0, 0
lui $2, 5
divu $2, $4
TAG730:
srl $1, $2, 9
bne $1, $2, TAG731
addiu $3, $1, 13
lhu $2, 0($1)
TAG731:
lui $4, 0
mult $4, $2
mtlo $4
beq $4, $4, TAG732
TAG732:
lbu $2, 0($4)
xori $1, $4, 0
multu $1, $4
addi $4, $4, 6
TAG733:
sh $4, 0($4)
lb $2, 0($4)
srl $2, $4, 4
beq $2, $2, TAG734
TAG734:
mfhi $4
add $3, $4, $2
sltu $4, $4, $3
blez $4, TAG735
TAG735:
multu $4, $4
mult $4, $4
addi $2, $4, 10
bgez $4, TAG736
TAG736:
lui $1, 7
mflo $3
sw $3, 0($3)
sll $0, $0, 0
TAG737:
lw $1, 0($3)
bgez $1, TAG738
mflo $2
addu $2, $3, $3
TAG738:
ori $4, $2, 6
andi $4, $4, 10
div $2, $4
mtlo $4
TAG739:
mflo $3
lbu $3, 0($3)
lhu $1, 0($3)
multu $3, $1
TAG740:
mthi $1
mult $1, $1
mflo $1
bne $1, $1, TAG741
TAG741:
sra $2, $1, 5
mult $1, $1
bne $2, $2, TAG742
lh $3, 0($1)
TAG742:
multu $3, $3
lhu $2, 0($3)
blez $2, TAG743
lh $2, 0($2)
TAG743:
beq $2, $2, TAG744
slti $4, $2, 4
mflo $4
addiu $4, $4, 2
TAG744:
mfhi $4
mfhi $4
lui $4, 1
multu $4, $4
TAG745:
sltu $2, $4, $4
multu $4, $4
multu $2, $4
sll $0, $0, 0
TAG746:
or $1, $2, $2
bgtz $1, TAG747
lui $1, 14
mflo $3
TAG747:
bgtz $3, TAG748
lui $3, 10
bgez $3, TAG748
sll $0, $0, 0
TAG748:
sra $1, $3, 15
divu $1, $1
bne $3, $1, TAG749
addiu $1, $1, 10
TAG749:
sh $1, 0($1)
srl $3, $1, 14
divu $3, $1
mfhi $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop