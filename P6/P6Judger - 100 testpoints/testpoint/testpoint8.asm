ori $1, $0, 7
ori $2, $0, 14
ori $3, $0, 11
ori $4, $0, 1
sw $2, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $1, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $4, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $1, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $1, 124($0)
multu $2, $2
bltz $2, TAG1
and $2, $2, $2
mult $2, $2
TAG1:
lh $4, 0($2)
mult $2, $2
slti $4, $4, 4
sh $2, 0($2)
TAG2:
bgtz $4, TAG3
sb $4, 0($4)
bne $4, $4, TAG3
div $4, $4
TAG3:
blez $4, TAG4
divu $4, $4
lui $1, 7
mtlo $1
TAG4:
lui $4, 8
mflo $2
beq $2, $4, TAG5
ori $3, $1, 12
TAG5:
xori $1, $3, 2
multu $3, $1
bne $3, $3, TAG6
lui $2, 4
TAG6:
beq $2, $2, TAG7
srav $4, $2, $2
bne $4, $4, TAG7
lbu $3, 0($2)
TAG7:
lui $2, 3
subu $1, $3, $2
mthi $1
sll $0, $0, 0
TAG8:
nor $3, $4, $4
bne $4, $4, TAG9
sll $0, $0, 0
multu $3, $4
TAG9:
mtlo $2
blez $2, TAG10
sll $0, $0, 0
bne $4, $2, TAG10
TAG10:
mult $4, $4
mtlo $4
bne $4, $4, TAG11
sll $0, $0, 0
TAG11:
mult $4, $4
lui $4, 12
divu $4, $4
divu $4, $4
TAG12:
sra $2, $4, 2
addiu $3, $4, 1
bgez $3, TAG13
sll $0, $0, 0
TAG13:
bgez $3, TAG14
nor $2, $3, $3
sub $4, $3, $2
bne $2, $3, TAG14
TAG14:
mflo $4
and $2, $4, $4
beq $4, $2, TAG15
mtlo $4
TAG15:
beq $2, $2, TAG16
mflo $3
multu $3, $3
mtlo $2
TAG16:
addu $3, $3, $3
lui $2, 13
mtlo $3
mflo $2
TAG17:
lui $1, 5
sll $1, $1, 3
addiu $3, $1, 9
sll $2, $2, 10
TAG18:
lui $4, 11
sll $1, $4, 3
bgez $4, TAG19
lui $2, 12
TAG19:
sll $0, $0, 0
bgtz $2, TAG20
mflo $3
addi $3, $2, 0
TAG20:
sb $3, 0($3)
div $3, $3
bltz $3, TAG21
mflo $4
TAG21:
mtlo $4
beq $4, $4, TAG22
lui $3, 3
multu $4, $3
TAG22:
mtlo $3
sll $0, $0, 0
subu $3, $3, $3
lui $3, 12
TAG23:
bne $3, $3, TAG24
divu $3, $3
sltiu $1, $3, 14
sll $0, $0, 0
TAG24:
xor $1, $1, $1
mtlo $1
mfhi $3
mflo $2
TAG25:
beq $2, $2, TAG26
srl $1, $2, 12
lui $1, 12
slt $1, $1, $2
TAG26:
xori $1, $1, 0
slti $3, $1, 3
bgtz $3, TAG27
mtlo $1
TAG27:
blez $3, TAG28
lui $1, 9
lui $2, 11
sll $0, $0, 0
TAG28:
mthi $2
addu $4, $2, $2
bne $4, $4, TAG29
mfhi $1
TAG29:
sll $0, $0, 0
bgez $1, TAG30
sll $0, $0, 0
multu $1, $1
TAG30:
lui $4, 8
mflo $4
mult $1, $4
lui $1, 1
TAG31:
beq $1, $1, TAG32
mflo $4
bne $1, $1, TAG32
slti $3, $1, 9
TAG32:
mtlo $3
div $3, $3
lbu $3, 0($3)
sb $3, 0($3)
TAG33:
addiu $1, $3, 2
srav $3, $1, $3
srl $1, $3, 4
sltu $3, $3, $1
TAG34:
bgez $3, TAG35
mthi $3
sh $3, 0($3)
multu $3, $3
TAG35:
sh $3, 0($3)
lhu $3, 0($3)
and $3, $3, $3
mfhi $1
TAG36:
mult $1, $1
sllv $4, $1, $1
lui $4, 1
sll $0, $0, 0
TAG37:
srav $3, $4, $4
sll $0, $0, 0
multu $2, $3
lui $1, 11
TAG38:
sll $0, $0, 0
beq $1, $1, TAG39
addu $2, $1, $1
mtlo $1
TAG39:
sltu $4, $2, $2
mthi $4
subu $4, $4, $2
or $4, $4, $4
TAG40:
lui $4, 5
divu $4, $4
subu $2, $4, $4
mult $4, $4
TAG41:
bne $2, $2, TAG42
slt $4, $2, $2
mthi $2
multu $2, $2
TAG42:
multu $4, $4
beq $4, $4, TAG43
lui $4, 11
mtlo $4
TAG43:
lui $4, 15
sll $0, $0, 0
lui $4, 2
sll $0, $0, 0
TAG44:
bgez $4, TAG45
sll $0, $0, 0
lw $3, 0($4)
sb $3, 0($4)
TAG45:
mthi $3
slt $4, $3, $3
sll $0, $0, 0
mthi $4
TAG46:
mfhi $3
mtlo $4
xor $2, $3, $3
and $4, $4, $2
TAG47:
mflo $1
bgez $4, TAG48
multu $4, $4
lw $4, 0($4)
TAG48:
beq $4, $4, TAG49
sh $4, 0($4)
bgez $4, TAG49
srl $1, $4, 9
TAG49:
lui $2, 12
ori $4, $1, 5
sb $4, 0($4)
mtlo $2
TAG50:
lb $1, 0($4)
mtlo $1
lbu $4, 0($1)
bltz $4, TAG51
TAG51:
mflo $2
mult $4, $4
bgez $2, TAG52
srl $1, $4, 11
TAG52:
beq $1, $1, TAG53
lh $1, 0($1)
add $4, $1, $1
mtlo $1
TAG53:
mthi $4
bne $4, $4, TAG54
mtlo $4
andi $2, $4, 15
TAG54:
beq $2, $2, TAG55
mtlo $2
mthi $2
srlv $3, $2, $2
TAG55:
sllv $4, $3, $3
mflo $1
multu $3, $3
mtlo $4
TAG56:
divu $1, $1
mtlo $1
blez $1, TAG57
mfhi $4
TAG57:
addiu $2, $4, 5
lb $3, 0($2)
lui $4, 1
addu $2, $4, $4
TAG58:
bgtz $2, TAG59
sltu $3, $2, $2
div $3, $2
sll $2, $3, 10
TAG59:
mflo $2
addiu $1, $2, 0
or $3, $2, $2
bgez $3, TAG60
TAG60:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG61:
subu $1, $3, $3
bgez $1, TAG62
sll $0, $0, 0
lui $4, 6
TAG62:
mflo $1
subu $1, $4, $1
lui $1, 3
mflo $1
TAG63:
lui $4, 10
divu $4, $1
multu $1, $4
mflo $1
TAG64:
sh $1, 0($1)
bne $1, $1, TAG65
mtlo $1
mtlo $1
TAG65:
multu $1, $1
andi $4, $1, 7
mflo $4
mthi $4
TAG66:
addi $1, $4, 4
bne $4, $4, TAG67
sltiu $4, $4, 11
lbu $4, 0($1)
TAG67:
divu $4, $4
div $4, $4
lbu $4, 0($4)
lui $3, 5
TAG68:
mfhi $2
sll $0, $0, 0
slt $4, $2, $3
sll $0, $0, 0
TAG69:
mtlo $4
mthi $4
bltz $4, TAG70
sb $4, 0($4)
TAG70:
ori $3, $4, 12
blez $4, TAG71
lbu $3, 0($3)
lui $2, 12
TAG71:
sll $0, $0, 0
sb $2, 0($3)
bltz $2, TAG72
sll $0, $0, 0
TAG72:
lui $1, 6
blez $4, TAG73
srlv $1, $1, $4
multu $1, $1
TAG73:
addu $1, $1, $1
multu $1, $1
addiu $2, $1, 3
bltz $1, TAG74
TAG74:
mfhi $4
sll $0, $0, 0
subu $2, $2, $2
sw $2, 0($2)
TAG75:
lui $2, 12
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG76
TAG76:
addiu $2, $2, 6
slti $2, $2, 3
lhu $3, 0($2)
bgez $2, TAG77
TAG77:
addu $1, $3, $3
beq $1, $3, TAG78
sb $3, 0($3)
sh $3, 0($1)
TAG78:
lui $2, 9
lw $4, 0($1)
sw $2, 0($4)
srlv $1, $2, $1
TAG79:
mthi $1
bne $1, $1, TAG80
lui $2, 2
sra $3, $1, 8
TAG80:
mthi $3
beq $3, $3, TAG81
lui $1, 5
mfhi $3
TAG81:
mthi $3
mthi $3
addiu $1, $3, 10
mtlo $3
TAG82:
mtlo $1
or $1, $1, $1
div $1, $1
lui $3, 8
TAG83:
lui $1, 1
sltiu $4, $3, 2
mtlo $4
div $1, $1
TAG84:
lhu $2, 0($4)
lb $2, 0($4)
bne $2, $2, TAG85
lui $3, 3
TAG85:
sltu $3, $3, $3
multu $3, $3
lui $1, 1
lb $4, 0($3)
TAG86:
bne $4, $4, TAG87
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
TAG87:
lui $4, 4
mtlo $4
mult $4, $4
bltz $4, TAG88
TAG88:
sll $0, $0, 0
mflo $1
srl $4, $1, 3
blez $4, TAG89
TAG89:
sh $4, 0($4)
slti $1, $4, 9
mtlo $1
lb $2, 0($4)
TAG90:
mtlo $2
lbu $1, 0($2)
lui $3, 15
bltz $3, TAG91
TAG91:
mfhi $4
sb $4, 0($4)
lui $1, 12
mfhi $1
TAG92:
mfhi $4
mfhi $1
beq $1, $1, TAG93
mthi $1
TAG93:
mtlo $1
addu $3, $1, $1
mtlo $3
sb $1, 0($3)
TAG94:
mtlo $3
mfhi $3
mflo $3
slt $3, $3, $3
TAG95:
sh $3, 0($3)
blez $3, TAG96
sh $3, 0($3)
mtlo $3
TAG96:
mtlo $3
mthi $3
sltiu $1, $3, 6
blez $1, TAG97
TAG97:
lbu $3, 0($1)
multu $1, $3
beq $3, $3, TAG98
mfhi $2
TAG98:
ori $2, $2, 4
bgtz $2, TAG99
lui $2, 14
and $1, $2, $2
TAG99:
mtlo $1
bne $1, $1, TAG100
divu $1, $1
beq $1, $1, TAG100
TAG100:
lb $2, 0($1)
sra $4, $2, 8
beq $1, $2, TAG101
div $1, $1
TAG101:
addiu $4, $4, 13
bltz $4, TAG102
mtlo $4
mflo $4
TAG102:
bgez $4, TAG103
mthi $4
mthi $4
sw $4, 0($4)
TAG103:
mflo $3
sb $4, 0($4)
slti $3, $4, 9
addu $2, $3, $4
TAG104:
bgtz $2, TAG105
mtlo $2
div $2, $2
lui $3, 8
TAG105:
mtlo $3
and $2, $3, $3
lui $1, 5
lui $4, 4
TAG106:
mfhi $4
subu $3, $4, $4
multu $4, $4
bgez $3, TAG107
TAG107:
mfhi $1
mfhi $1
lui $1, 9
mtlo $1
TAG108:
subu $4, $1, $1
lb $2, 0($4)
sll $0, $0, 0
bne $2, $2, TAG109
TAG109:
mult $2, $2
mflo $2
subu $1, $2, $2
lbu $4, 0($2)
TAG110:
lw $3, 0($4)
sll $0, $0, 0
ori $1, $3, 11
div $4, $1
TAG111:
mflo $4
beq $1, $1, TAG112
mflo $1
srlv $2, $1, $1
TAG112:
mthi $2
addiu $3, $2, 6
bne $3, $2, TAG113
mthi $2
TAG113:
mfhi $4
srl $4, $3, 12
xor $1, $4, $4
lui $4, 15
TAG114:
xori $2, $4, 12
lui $3, 7
mtlo $2
sll $0, $0, 0
TAG115:
sll $0, $0, 0
xor $1, $3, $3
mthi $3
div $3, $3
TAG116:
srlv $3, $1, $1
sw $3, 0($1)
srl $1, $3, 10
lui $2, 10
TAG117:
mflo $2
divu $2, $2
mthi $2
bne $2, $2, TAG118
TAG118:
srlv $2, $2, $2
beq $2, $2, TAG119
mflo $4
divu $2, $4
TAG119:
and $4, $4, $4
lui $4, 0
addu $4, $4, $4
mflo $1
TAG120:
sb $1, 0($1)
ori $3, $1, 6
bltz $3, TAG121
lui $1, 8
TAG121:
div $1, $1
mfhi $3
bne $1, $1, TAG122
sll $0, $0, 0
TAG122:
lui $4, 5
lui $1, 0
lui $1, 13
lui $3, 9
TAG123:
lui $3, 11
mult $3, $3
mflo $3
lui $3, 4
TAG124:
beq $3, $3, TAG125
sll $0, $0, 0
ori $4, $3, 12
lui $1, 7
TAG125:
sll $0, $0, 0
ori $4, $1, 3
mult $4, $1
addiu $4, $4, 6
TAG126:
bgez $4, TAG127
sll $0, $0, 0
sb $4, 0($1)
bgtz $1, TAG127
TAG127:
sll $0, $0, 0
mthi $1
lui $4, 0
mtlo $4
TAG128:
mult $4, $4
mult $4, $4
lhu $3, 0($4)
slti $1, $3, 6
TAG129:
lui $3, 1
sh $1, 0($1)
mflo $1
sll $4, $1, 13
TAG130:
lui $3, 5
mtlo $4
sb $4, 0($4)
addiu $2, $4, 2
TAG131:
mthi $2
andi $2, $2, 5
lb $1, 0($2)
slti $2, $2, 10
TAG132:
sb $2, 0($2)
mflo $3
blez $3, TAG133
mult $2, $3
TAG133:
beq $3, $3, TAG134
lbu $3, 0($3)
lbu $2, 0($3)
blez $2, TAG134
TAG134:
lui $4, 6
sll $0, $0, 0
bgtz $4, TAG135
sra $1, $3, 10
TAG135:
or $1, $1, $1
or $4, $1, $1
ori $2, $1, 0
mfhi $1
TAG136:
multu $1, $1
mflo $1
mfhi $4
addu $2, $1, $1
TAG137:
slti $4, $2, 8
sb $4, 0($4)
andi $4, $4, 6
lui $2, 10
TAG138:
mthi $2
bne $2, $2, TAG139
sll $0, $0, 0
beq $2, $2, TAG139
TAG139:
multu $2, $2
addiu $2, $2, 3
lui $1, 5
bgtz $2, TAG140
TAG140:
mthi $1
lui $3, 1
beq $1, $3, TAG141
multu $1, $3
TAG141:
sll $0, $0, 0
bgez $3, TAG142
lh $3, 0($4)
mtlo $3
TAG142:
bne $3, $3, TAG143
mthi $3
mfhi $2
mfhi $1
TAG143:
xori $1, $1, 8
addiu $1, $1, 0
mflo $1
mtlo $1
TAG144:
bgez $1, TAG145
mthi $1
sb $1, 0($1)
bgez $1, TAG145
TAG145:
multu $1, $1
lui $1, 8
mult $1, $1
mult $1, $1
TAG146:
slt $3, $1, $1
mfhi $2
srl $4, $3, 10
srl $1, $1, 2
TAG147:
sll $0, $0, 0
lui $2, 14
multu $1, $1
sll $0, $0, 0
TAG148:
mtlo $1
srlv $4, $1, $1
beq $4, $4, TAG149
multu $4, $1
TAG149:
lui $2, 5
sll $0, $0, 0
addu $4, $2, $2
beq $2, $4, TAG150
TAG150:
sltiu $3, $4, 13
mthi $4
lui $4, 4
blez $4, TAG151
TAG151:
divu $4, $4
mflo $2
sb $2, 0($2)
lui $2, 14
TAG152:
lui $1, 3
lui $3, 9
mfhi $4
mthi $3
TAG153:
and $4, $4, $4
lh $3, 0($4)
or $3, $4, $4
lui $3, 9
TAG154:
sll $0, $0, 0
beq $3, $3, TAG155
sll $3, $3, 13
addiu $3, $3, 6
TAG155:
div $3, $3
mtlo $3
bne $3, $3, TAG156
lui $4, 13
TAG156:
sltiu $1, $4, 12
bltz $1, TAG157
sh $1, 0($1)
lh $3, 0($1)
TAG157:
sh $3, 0($3)
bltz $3, TAG158
mfhi $4
bgez $3, TAG158
TAG158:
mthi $4
mult $4, $4
bgtz $4, TAG159
sb $4, 0($4)
TAG159:
bltz $4, TAG160
srl $4, $4, 15
lhu $2, 0($4)
addu $3, $4, $4
TAG160:
mfhi $2
lui $3, 0
mfhi $1
mthi $1
TAG161:
mthi $1
lui $1, 2
sll $0, $0, 0
mflo $2
TAG162:
bltz $2, TAG163
mflo $4
mthi $2
mfhi $1
TAG163:
mtlo $1
sllv $1, $1, $1
mfhi $2
mtlo $2
TAG164:
mthi $2
sub $2, $2, $2
sw $2, 0($2)
lui $3, 11
TAG165:
mult $3, $3
multu $3, $3
multu $3, $3
subu $4, $3, $3
TAG166:
bltz $4, TAG167
mthi $4
lui $3, 6
mthi $3
TAG167:
lui $2, 9
mfhi $2
mflo $2
sltiu $1, $2, 15
TAG168:
sra $2, $1, 11
sh $2, 0($2)
xori $2, $2, 12
sb $1, 0($1)
TAG169:
divu $2, $2
mthi $2
mthi $2
mtlo $2
TAG170:
sh $2, 0($2)
sltiu $1, $2, 3
lb $1, 0($2)
subu $3, $2, $2
TAG171:
multu $3, $3
mthi $3
mflo $4
lbu $3, 0($3)
TAG172:
sh $3, 0($3)
bgez $3, TAG173
mflo $1
mflo $2
TAG173:
bne $2, $2, TAG174
andi $1, $2, 2
beq $1, $2, TAG174
mflo $3
TAG174:
multu $3, $3
lui $2, 11
srav $3, $3, $2
bltz $3, TAG175
TAG175:
lb $1, 0($3)
bne $3, $1, TAG176
sll $4, $3, 9
lui $1, 5
TAG176:
mult $1, $1
mflo $1
lh $1, 0($1)
bltz $1, TAG177
TAG177:
lui $1, 3
bltz $1, TAG178
mult $1, $1
sll $0, $0, 0
TAG178:
lhu $2, 0($3)
sra $3, $2, 12
sb $3, 0($3)
mfhi $2
TAG179:
mflo $1
bgez $1, TAG180
sb $1, 0($2)
sll $3, $2, 5
TAG180:
addi $3, $3, 11
sb $3, 0($3)
divu $3, $3
srav $2, $3, $3
TAG181:
blez $2, TAG182
lhu $3, 0($2)
bgez $2, TAG182
lui $4, 15
TAG182:
bltz $4, TAG183
multu $4, $4
bgtz $4, TAG183
mult $4, $4
TAG183:
lw $2, 0($4)
addiu $3, $4, 3
lb $2, 0($2)
sub $2, $4, $4
TAG184:
lhu $3, 0($2)
mult $3, $3
mult $2, $3
bgtz $2, TAG185
TAG185:
lw $3, 0($3)
andi $2, $3, 10
mtlo $3
lb $1, 0($2)
TAG186:
lui $4, 8
mflo $4
lbu $4, 0($1)
lui $3, 4
TAG187:
bne $3, $3, TAG188
mtlo $3
slt $2, $3, $3
blez $2, TAG188
TAG188:
mtlo $2
beq $2, $2, TAG189
mtlo $2
lh $2, 0($2)
TAG189:
mfhi $2
beq $2, $2, TAG190
sh $2, 0($2)
addiu $1, $2, 12
TAG190:
bgez $1, TAG191
mfhi $2
mtlo $2
bgtz $1, TAG191
TAG191:
sb $2, 0($2)
bne $2, $2, TAG192
multu $2, $2
subu $3, $2, $2
TAG192:
sh $3, 0($3)
mtlo $3
or $1, $3, $3
mthi $3
TAG193:
multu $1, $1
bgez $1, TAG194
sb $1, 0($1)
mult $1, $1
TAG194:
lh $1, 0($1)
beq $1, $1, TAG195
lui $3, 9
lw $4, 0($1)
TAG195:
add $1, $4, $4
bltz $4, TAG196
ori $2, $1, 14
subu $3, $2, $1
TAG196:
sltiu $1, $3, 2
bne $3, $1, TAG197
sll $1, $1, 10
bgtz $1, TAG197
TAG197:
sub $2, $1, $1
lui $1, 7
sltiu $3, $1, 14
mflo $4
TAG198:
mult $4, $4
mult $4, $4
lui $4, 5
sll $0, $0, 0
TAG199:
beq $4, $4, TAG200
div $4, $4
slt $2, $4, $4
bltz $2, TAG200
TAG200:
xor $3, $2, $2
mtlo $2
lh $4, 0($2)
slt $3, $2, $2
TAG201:
addi $3, $3, 13
mflo $1
mtlo $1
lui $2, 12
TAG202:
sll $0, $0, 0
addiu $3, $3, 7
sb $3, 0($3)
mflo $1
TAG203:
bne $1, $1, TAG204
lui $4, 15
lui $3, 13
divu $1, $3
TAG204:
addiu $3, $3, 9
mult $3, $3
sll $0, $0, 0
srlv $2, $3, $3
TAG205:
addiu $2, $2, 14
mtlo $2
lw $4, -1678($2)
mthi $2
TAG206:
lui $4, 10
sra $4, $4, 7
srl $2, $4, 3
xori $2, $2, 6
TAG207:
or $4, $2, $2
multu $2, $4
mtlo $2
mfhi $2
TAG208:
sb $2, 0($2)
blez $2, TAG209
mtlo $2
mflo $1
TAG209:
lb $2, 0($1)
beq $1, $1, TAG210
lui $3, 5
xor $2, $2, $3
TAG210:
multu $2, $2
or $2, $2, $2
bne $2, $2, TAG211
sh $2, 0($2)
TAG211:
mfhi $2
srlv $3, $2, $2
subu $3, $2, $2
sw $2, 0($2)
TAG212:
bltz $3, TAG213
mtlo $3
xor $2, $3, $3
bltz $2, TAG213
TAG213:
and $2, $2, $2
sb $2, 0($2)
lui $4, 1
mfhi $3
TAG214:
xori $1, $3, 15
mtlo $3
mtlo $1
div $1, $1
TAG215:
beq $1, $1, TAG216
lb $4, 0($1)
beq $4, $4, TAG216
addu $2, $4, $1
TAG216:
mflo $4
mtlo $4
sb $2, 0($4)
beq $4, $2, TAG217
TAG217:
lbu $3, 0($4)
sb $4, 0($4)
lui $1, 11
mfhi $2
TAG218:
mthi $2
lhu $1, 0($2)
lui $4, 9
mult $1, $2
TAG219:
blez $4, TAG220
lui $1, 12
mult $4, $4
mtlo $1
TAG220:
or $3, $1, $1
sll $0, $0, 0
andi $4, $1, 7
divu $3, $3
TAG221:
sb $4, 0($4)
blez $4, TAG222
slt $2, $4, $4
sb $2, 0($2)
TAG222:
mult $2, $2
mfhi $4
bne $4, $4, TAG223
lbu $1, 0($2)
TAG223:
mthi $1
lb $3, 0($1)
sra $3, $3, 4
lui $1, 13
TAG224:
mtlo $1
sll $0, $0, 0
addiu $4, $1, 7
blez $3, TAG225
TAG225:
mthi $4
subu $1, $4, $4
lhu $2, 0($1)
lbu $2, -256($2)
TAG226:
mthi $2
sw $2, 0($2)
multu $2, $2
lbu $4, 0($2)
TAG227:
xor $1, $4, $4
lui $4, 4
blez $1, TAG228
srav $2, $1, $4
TAG228:
mtlo $2
bgtz $2, TAG229
lbu $2, 0($2)
mthi $2
TAG229:
lb $1, 0($2)
mfhi $2
lui $3, 0
bgtz $3, TAG230
TAG230:
lhu $1, 0($3)
bltz $1, TAG231
mflo $1
add $1, $1, $3
TAG231:
blez $1, TAG232
mult $1, $1
or $4, $1, $1
mthi $1
TAG232:
bgtz $4, TAG233
divu $4, $4
sb $4, 0($4)
lbu $3, 0($4)
TAG233:
sw $3, 0($3)
lui $2, 10
sll $0, $0, 0
bltz $3, TAG234
TAG234:
mult $2, $2
mflo $1
sltu $4, $1, $2
lb $1, 0($4)
TAG235:
mfhi $1
lbu $1, 0($1)
sh $1, 0($1)
bltz $1, TAG236
TAG236:
sra $2, $1, 11
nor $4, $1, $1
bgez $2, TAG237
addiu $1, $1, 3
TAG237:
mflo $3
lb $1, 0($1)
beq $1, $1, TAG238
lbu $4, 0($1)
TAG238:
mult $4, $4
lb $3, 0($4)
bne $4, $4, TAG239
srl $4, $3, 7
TAG239:
lh $4, 0($4)
sll $3, $4, 4
lw $3, 0($4)
beq $3, $3, TAG240
TAG240:
mtlo $3
bgez $3, TAG241
sb $3, 0($3)
sw $3, 0($3)
TAG241:
lhu $3, 0($3)
mult $3, $3
lui $4, 13
multu $3, $3
TAG242:
mthi $4
sltu $4, $4, $4
ori $1, $4, 11
lui $1, 13
TAG243:
beq $1, $1, TAG244
slti $3, $1, 5
mfhi $1
bgtz $3, TAG244
TAG244:
mult $1, $1
divu $1, $1
bne $1, $1, TAG245
sll $0, $0, 0
TAG245:
mthi $4
mflo $4
addiu $4, $4, 14
bgtz $4, TAG246
TAG246:
lui $4, 11
beq $4, $4, TAG247
mtlo $4
mflo $3
TAG247:
mflo $2
mult $3, $3
mfhi $1
beq $2, $1, TAG248
TAG248:
sw $1, 0($1)
mtlo $1
beq $1, $1, TAG249
mthi $1
TAG249:
sltiu $4, $1, 14
slti $2, $1, 2
sb $4, 0($4)
mtlo $4
TAG250:
beq $2, $2, TAG251
div $2, $2
bgez $2, TAG251
mflo $3
TAG251:
lb $1, 0($3)
mult $1, $1
bne $1, $1, TAG252
addu $1, $1, $1
TAG252:
sltiu $2, $1, 14
slti $1, $1, 13
lb $1, 0($2)
divu $1, $2
TAG253:
subu $4, $1, $1
mfhi $2
beq $1, $1, TAG254
lui $3, 14
TAG254:
mfhi $3
or $3, $3, $3
sb $3, 0($3)
sw $3, 0($3)
TAG255:
lw $3, 0($3)
sh $3, 0($3)
slti $3, $3, 13
lui $4, 3
TAG256:
ori $2, $4, 8
mflo $3
sll $0, $0, 0
div $2, $2
TAG257:
beq $1, $1, TAG258
lb $2, 0($1)
lw $4, 0($1)
mthi $4
TAG258:
mflo $3
mfhi $1
sra $2, $3, 12
xori $3, $4, 13
TAG259:
bne $3, $3, TAG260
sll $0, $0, 0
divu $3, $3
lui $4, 12
TAG260:
srl $3, $4, 10
mtlo $4
mflo $1
bne $4, $4, TAG261
TAG261:
mthi $1
mthi $1
mthi $1
sltu $4, $1, $1
TAG262:
slti $3, $4, 7
mflo $1
sll $0, $0, 0
bne $1, $2, TAG263
TAG263:
sllv $2, $2, $2
bne $2, $2, TAG264
sll $4, $2, 4
lw $2, 0($4)
TAG264:
srlv $3, $2, $2
lw $4, 0($2)
beq $2, $3, TAG265
lui $4, 13
TAG265:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG266:
sll $0, $0, 0
mflo $3
bltz $3, TAG267
slti $3, $3, 1
TAG267:
ori $3, $3, 13
bgtz $3, TAG268
sb $3, 0($3)
bgtz $3, TAG268
TAG268:
lui $1, 9
sll $0, $0, 0
lb $4, 0($3)
bne $3, $4, TAG269
TAG269:
mtlo $4
lui $1, 7
lui $1, 11
mthi $1
TAG270:
mtlo $1
beq $1, $1, TAG271
nor $2, $1, $1
lb $2, 0($1)
TAG271:
mtlo $2
addu $1, $2, $2
sll $0, $0, 0
bgez $2, TAG272
TAG272:
mult $1, $1
mflo $2
divu $1, $1
mult $2, $1
TAG273:
subu $3, $2, $2
mflo $3
mthi $3
bltz $2, TAG274
TAG274:
mtlo $3
sll $0, $0, 0
lui $3, 5
multu $3, $3
TAG275:
bgtz $3, TAG276
sll $0, $0, 0
mult $4, $4
lb $3, 0($4)
TAG276:
bgtz $3, TAG277
mthi $3
lui $2, 5
multu $3, $2
TAG277:
lui $2, 3
blez $2, TAG278
mflo $1
mflo $1
TAG278:
xori $3, $1, 10
lui $4, 8
div $3, $4
ori $1, $1, 2
TAG279:
beq $1, $1, TAG280
lh $1, 0($1)
bgtz $1, TAG280
lbu $2, 0($1)
TAG280:
addiu $2, $2, 13
beq $2, $2, TAG281
sllv $4, $2, $2
srl $2, $4, 7
TAG281:
mflo $3
lui $1, 12
sll $0, $0, 0
sllv $4, $2, $3
TAG282:
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
mthi $4
TAG283:
sll $0, $0, 0
lui $2, 7
sll $0, $0, 0
blez $2, TAG284
TAG284:
mthi $2
mfhi $1
srlv $4, $2, $2
or $2, $4, $4
TAG285:
sll $3, $2, 13
mflo $1
sltiu $3, $1, 1
mfhi $4
TAG286:
andi $3, $4, 8
multu $4, $4
sll $0, $0, 0
sllv $1, $3, $1
TAG287:
lb $3, 0($1)
lui $3, 9
mfhi $2
bltz $1, TAG288
TAG288:
lbu $4, 0($2)
bgtz $4, TAG289
mthi $4
xori $4, $2, 7
TAG289:
sh $4, 0($4)
xor $4, $4, $4
mtlo $4
lh $4, 0($4)
TAG290:
sll $3, $4, 12
blez $3, TAG291
mthi $3
sb $4, 0($3)
TAG291:
lbu $1, 0($3)
srav $1, $3, $3
bgtz $1, TAG292
lui $3, 5
TAG292:
mult $3, $3
ori $2, $3, 14
sll $0, $0, 0
beq $2, $2, TAG293
TAG293:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG294:
sll $0, $0, 0
lui $3, 0
lui $2, 0
lw $4, 0($1)
TAG295:
andi $3, $4, 12
add $4, $3, $4
mthi $3
bne $4, $3, TAG296
TAG296:
multu $4, $4
lui $2, 5
lui $1, 6
multu $1, $1
TAG297:
lui $1, 2
lui $3, 14
sll $0, $0, 0
sltiu $1, $1, 4
TAG298:
sb $1, 0($1)
lh $1, 0($1)
lui $1, 7
sll $0, $0, 0
TAG299:
sll $4, $2, 12
bgtz $2, TAG300
mtlo $4
lui $1, 15
TAG300:
bne $1, $1, TAG301
subu $3, $1, $1
sw $1, 0($3)
bne $1, $3, TAG301
TAG301:
slt $2, $3, $3
lw $1, 0($2)
xor $3, $3, $2
bltz $3, TAG302
TAG302:
addu $2, $3, $3
sra $3, $2, 1
lui $3, 3
mthi $3
TAG303:
beq $3, $3, TAG304
divu $3, $3
mthi $3
sb $3, 0($3)
TAG304:
sll $0, $0, 0
bgtz $3, TAG305
mtlo $3
multu $3, $3
TAG305:
andi $1, $3, 5
mtlo $1
lui $2, 1
mtlo $2
TAG306:
beq $2, $2, TAG307
sll $0, $0, 0
lui $1, 9
bne $4, $4, TAG307
TAG307:
lbu $1, 0($1)
mfhi $1
mfhi $1
mthi $1
TAG308:
addu $1, $1, $1
mflo $2
and $3, $1, $1
beq $3, $1, TAG309
TAG309:
mtlo $3
slt $2, $3, $3
and $1, $3, $3
lui $3, 6
TAG310:
sra $2, $3, 0
multu $3, $2
sll $0, $0, 0
beq $2, $2, TAG311
TAG311:
lui $3, 6
bltz $2, TAG312
sll $0, $0, 0
bgez $3, TAG312
TAG312:
lui $2, 2
lui $1, 12
beq $3, $2, TAG313
lui $3, 10
TAG313:
slti $2, $3, 1
sll $0, $0, 0
srlv $4, $2, $3
sub $3, $4, $2
TAG314:
xor $2, $3, $3
addi $3, $2, 5
lui $4, 11
bne $3, $3, TAG315
TAG315:
mult $4, $4
sll $0, $0, 0
beq $4, $4, TAG316
lui $3, 3
TAG316:
xori $3, $3, 10
sltiu $2, $3, 11
lui $2, 9
srl $3, $2, 6
TAG317:
andi $2, $3, 9
slti $3, $3, 13
sll $1, $3, 1
bne $3, $1, TAG318
TAG318:
mtlo $1
mthi $1
mflo $4
lhu $2, 0($1)
TAG319:
sltiu $4, $2, 15
mthi $4
lui $4, 5
mtlo $4
TAG320:
sll $0, $0, 0
mthi $4
andi $3, $4, 15
slt $3, $3, $3
TAG321:
slti $3, $3, 7
mult $3, $3
bgez $3, TAG322
mthi $3
TAG322:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
lui $1, 13
TAG323:
bgtz $1, TAG324
mult $1, $1
slt $4, $1, $1
srlv $2, $4, $4
TAG324:
beq $2, $2, TAG325
subu $3, $2, $2
blez $3, TAG325
mflo $4
TAG325:
mfhi $3
mflo $1
mult $1, $1
mthi $1
TAG326:
lhu $3, 0($1)
subu $1, $3, $3
sllv $4, $1, $3
bne $4, $1, TAG327
TAG327:
mthi $4
ori $3, $4, 6
subu $3, $4, $4
mtlo $3
TAG328:
beq $3, $3, TAG329
mthi $3
sh $3, 0($3)
andi $1, $3, 14
TAG329:
lhu $1, 0($1)
sltiu $4, $1, 15
addiu $4, $1, 3
srl $4, $1, 3
TAG330:
bgtz $4, TAG331
addiu $2, $4, 7
mfhi $1
lui $3, 11
TAG331:
sw $3, 0($3)
srlv $4, $3, $3
beq $4, $3, TAG332
subu $1, $3, $3
TAG332:
sub $2, $1, $1
multu $2, $2
andi $4, $2, 15
lh $3, 0($2)
TAG333:
lb $2, 0($3)
lui $1, 5
bne $3, $3, TAG334
multu $2, $1
TAG334:
divu $1, $1
sll $0, $0, 0
mtlo $1
div $1, $1
TAG335:
sltu $1, $1, $1
bne $1, $1, TAG336
mflo $2
beq $1, $1, TAG336
TAG336:
sllv $2, $2, $2
multu $2, $2
multu $2, $2
beq $2, $2, TAG337
TAG337:
or $4, $2, $2
lui $1, 8
sll $0, $0, 0
bltz $1, TAG338
TAG338:
sltu $3, $4, $4
lui $3, 6
sb $3, 0($4)
bne $3, $3, TAG339
TAG339:
sll $0, $0, 0
sltu $1, $3, $3
sll $0, $0, 0
lui $3, 1
TAG340:
sll $0, $0, 0
lui $2, 12
bne $3, $2, TAG341
ori $1, $2, 8
TAG341:
addu $1, $1, $1
beq $1, $1, TAG342
srl $2, $1, 6
divu $2, $1
TAG342:
mfhi $3
mult $2, $3
mtlo $3
mtlo $3
TAG343:
andi $1, $3, 5
lbu $1, 0($3)
blez $1, TAG344
ori $2, $3, 0
TAG344:
lui $4, 12
lui $1, 14
sll $0, $0, 0
sb $2, 0($2)
TAG345:
mult $1, $1
bgtz $1, TAG346
mthi $1
beq $1, $1, TAG346
TAG346:
mthi $1
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG347:
lui $3, 5
addiu $4, $3, 0
sll $0, $0, 0
mult $4, $3
TAG348:
lui $2, 12
or $3, $4, $4
mult $3, $4
nor $3, $4, $3
TAG349:
divu $3, $3
lui $3, 1
multu $3, $3
lui $4, 5
TAG350:
sll $0, $0, 0
mthi $4
div $4, $4
div $4, $4
TAG351:
lui $4, 8
sll $0, $0, 0
srl $1, $1, 13
mfhi $1
TAG352:
subu $4, $1, $1
sll $1, $4, 9
lui $2, 14
lw $3, 0($1)
TAG353:
bgtz $3, TAG354
lui $3, 1
bltz $3, TAG354
mtlo $3
TAG354:
slti $4, $3, 4
blez $3, TAG355
mtlo $3
sub $2, $3, $4
TAG355:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG356:
multu $1, $1
bgez $1, TAG357
lui $3, 13
beq $3, $3, TAG357
TAG357:
srl $4, $3, 6
bgtz $3, TAG358
mthi $3
subu $1, $3, $4
TAG358:
sh $1, 0($1)
mult $1, $1
beq $1, $1, TAG359
addi $3, $1, 15
TAG359:
bltz $3, TAG360
mfhi $1
addiu $2, $3, 13
mtlo $1
TAG360:
mthi $2
sb $2, 0($2)
mthi $2
sb $2, 0($2)
TAG361:
bltz $2, TAG362
mtlo $2
sw $2, 0($2)
beq $2, $2, TAG362
TAG362:
lui $3, 8
blez $2, TAG363
mflo $4
lh $1, 0($2)
TAG363:
multu $1, $1
div $1, $1
blez $1, TAG364
mfhi $3
TAG364:
lui $4, 10
lui $4, 11
lui $4, 12
mfhi $1
TAG365:
mthi $1
sh $1, 0($1)
sltu $3, $1, $1
add $4, $3, $1
TAG366:
sb $4, 0($4)
lui $4, 6
mfhi $4
mult $4, $4
TAG367:
sh $4, 0($4)
bne $4, $4, TAG368
lh $4, 0($4)
ori $1, $4, 11
TAG368:
bne $1, $1, TAG369
mthi $1
multu $1, $1
lbu $4, 0($1)
TAG369:
lui $3, 5
addiu $4, $3, 0
sll $0, $0, 0
bne $4, $4, TAG370
TAG370:
ori $1, $4, 14
subu $4, $4, $1
lui $3, 6
mflo $3
TAG371:
mthi $3
mtlo $3
sb $3, 0($3)
lui $3, 9
TAG372:
sll $0, $0, 0
mflo $2
blez $3, TAG373
lui $3, 3
TAG373:
mtlo $3
multu $3, $3
addiu $3, $3, 9
bltz $3, TAG374
TAG374:
sll $0, $0, 0
bne $3, $3, TAG375
sll $0, $0, 0
sll $0, $0, 0
TAG375:
addiu $3, $3, 11
lui $4, 6
bne $3, $4, TAG376
sll $0, $0, 0
TAG376:
multu $2, $2
mthi $2
and $2, $2, $2
bgez $2, TAG377
TAG377:
mthi $2
lui $2, 12
sll $0, $0, 0
addu $2, $2, $2
TAG378:
bgtz $2, TAG379
mfhi $3
sw $2, 0($3)
mthi $3
TAG379:
mult $3, $3
slti $4, $3, 6
bltz $4, TAG380
lbu $4, 0($3)
TAG380:
mflo $2
addiu $4, $2, 12
lui $4, 0
lui $1, 2
TAG381:
sll $0, $0, 0
lbu $1, 0($4)
mtlo $1
bgtz $1, TAG382
TAG382:
lh $3, 0($1)
mult $1, $1
sb $3, 0($3)
srav $3, $3, $3
TAG383:
bltz $3, TAG384
nor $4, $3, $3
mflo $1
nor $2, $1, $4
TAG384:
xor $4, $2, $2
addu $2, $2, $4
lbu $3, 0($4)
sb $3, 0($4)
TAG385:
lbu $1, 0($3)
sh $1, 0($3)
bltz $3, TAG386
mthi $3
TAG386:
nor $4, $1, $1
beq $4, $1, TAG387
mthi $1
addu $1, $4, $1
TAG387:
mtlo $1
bne $1, $1, TAG388
mflo $3
mtlo $1
TAG388:
sra $2, $3, 15
bne $2, $3, TAG389
mflo $2
mtlo $3
TAG389:
mfhi $2
sw $2, 0($2)
lui $2, 6
mult $2, $2
TAG390:
bgtz $2, TAG391
multu $2, $2
andi $2, $2, 11
blez $2, TAG391
TAG391:
or $2, $2, $2
mthi $2
subu $4, $2, $2
lui $2, 5
TAG392:
sll $0, $0, 0
sll $0, $0, 0
nor $2, $2, $2
sll $0, $0, 0
TAG393:
multu $2, $2
mflo $2
mfhi $1
mult $2, $1
TAG394:
sll $0, $0, 0
bgtz $4, TAG395
lui $2, 4
beq $2, $2, TAG395
TAG395:
lui $2, 5
sll $0, $0, 0
mfhi $1
sb $1, 100($1)
TAG396:
div $1, $1
lbu $2, 100($1)
bgez $1, TAG397
sb $2, 100($1)
TAG397:
sh $2, -156($2)
div $2, $2
bne $2, $2, TAG398
mfhi $2
TAG398:
sb $2, 0($2)
mtlo $2
mflo $3
sll $4, $2, 8
TAG399:
lbu $1, 0($4)
lbu $2, 0($4)
nor $4, $1, $4
multu $1, $2
TAG400:
sra $2, $4, 8
sw $4, 1($2)
lh $2, 1($4)
divu $2, $2
TAG401:
slt $3, $2, $2
lbu $1, 1($2)
sh $3, 1($2)
bltz $1, TAG402
TAG402:
nor $4, $1, $1
and $2, $4, $1
bne $4, $4, TAG403
mtlo $2
TAG403:
sub $2, $2, $2
bgtz $2, TAG404
lui $3, 4
multu $3, $2
TAG404:
sll $0, $0, 0
blez $3, TAG405
nor $4, $3, $3
mflo $3
TAG405:
beq $3, $3, TAG406
ori $4, $3, 3
lui $1, 4
lh $3, 0($3)
TAG406:
bne $3, $3, TAG407
sb $3, 0($3)
sw $3, 0($3)
mflo $1
TAG407:
bgez $1, TAG408
lhu $2, 0($1)
mflo $1
lui $1, 15
TAG408:
slti $4, $1, 13
bgtz $4, TAG409
mult $1, $1
sltu $3, $1, $4
TAG409:
lw $4, 0($3)
bgtz $4, TAG410
sub $2, $3, $3
lbu $2, 0($2)
TAG410:
lui $3, 14
sltiu $1, $3, 11
bltz $1, TAG411
mflo $1
TAG411:
lui $2, 14
sw $1, 0($1)
lh $3, 0($1)
sh $2, 0($3)
TAG412:
mtlo $3
addi $3, $3, 9
lui $1, 7
mthi $3
TAG413:
lui $2, 0
bne $2, $2, TAG414
mfhi $4
addu $1, $1, $1
TAG414:
beq $1, $1, TAG415
mult $1, $1
srl $2, $1, 9
sb $2, 0($1)
TAG415:
lui $1, 1
mtlo $2
bne $2, $2, TAG416
mtlo $1
TAG416:
srl $4, $1, 8
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG417
TAG417:
mflo $2
mfhi $4
bne $4, $1, TAG418
slt $1, $1, $4
TAG418:
mfhi $1
mflo $3
mflo $4
sll $0, $0, 0
TAG419:
mtlo $4
addu $4, $4, $4
lui $2, 13
lui $2, 14
TAG420:
mthi $2
sll $0, $0, 0
bgtz $2, TAG421
lui $1, 13
TAG421:
lui $1, 2
sll $0, $0, 0
addiu $3, $4, 14
mfhi $2
TAG422:
sll $0, $0, 0
xor $4, $2, $2
mtlo $4
mtlo $3
TAG423:
bne $4, $4, TAG424
mfhi $3
sltiu $2, $3, 6
div $4, $3
TAG424:
bne $2, $2, TAG425
andi $3, $2, 13
sh $2, 0($3)
lbu $1, 0($2)
TAG425:
sh $1, 0($1)
sw $1, 0($1)
lbu $4, 0($1)
sw $4, 0($1)
TAG426:
mflo $3
lui $3, 8
mtlo $4
beq $3, $3, TAG427
TAG427:
lui $2, 11
blez $2, TAG428
mflo $3
mthi $2
TAG428:
beq $3, $3, TAG429
lui $3, 13
mthi $3
mflo $1
TAG429:
beq $1, $1, TAG430
multu $1, $1
sw $1, 0($1)
sw $1, 0($1)
TAG430:
bltz $1, TAG431
sll $3, $1, 8
nor $4, $1, $1
lui $2, 13
TAG431:
bgez $2, TAG432
mfhi $4
lui $1, 15
beq $2, $1, TAG432
TAG432:
add $4, $1, $1
lui $4, 8
addi $1, $1, 12
sll $0, $0, 0
TAG433:
lui $1, 8
mflo $1
slti $2, $1, 11
sb $1, 0($1)
TAG434:
sb $2, 0($2)
sb $2, 0($2)
mthi $2
lui $1, 5
TAG435:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG436
mflo $2
TAG436:
bne $2, $2, TAG437
sltu $1, $2, $2
bltz $1, TAG437
mthi $2
TAG437:
andi $2, $1, 9
add $4, $1, $1
sh $1, 0($4)
mfhi $1
TAG438:
mfhi $3
bne $3, $3, TAG439
lui $4, 3
mthi $3
TAG439:
xor $1, $4, $4
sra $2, $4, 7
mthi $4
add $1, $1, $2
TAG440:
multu $1, $1
andi $4, $1, 2
bne $4, $4, TAG441
mthi $4
TAG441:
bgez $4, TAG442
subu $3, $4, $4
mult $3, $3
bne $4, $3, TAG442
TAG442:
lbu $4, 0($3)
subu $2, $4, $3
mtlo $3
mtlo $2
TAG443:
sb $2, 0($2)
beq $2, $2, TAG444
sh $2, 0($2)
andi $1, $2, 5
TAG444:
sll $0, $0, 0
sltiu $1, $3, 14
blez $3, TAG445
ori $3, $3, 9
TAG445:
bgez $3, TAG446
lbu $3, 0($3)
sub $1, $3, $3
lui $1, 2
TAG446:
lui $4, 4
bne $4, $1, TAG447
lbu $4, 0($1)
mflo $4
TAG447:
beq $4, $4, TAG448
lbu $2, 0($4)
bne $2, $2, TAG448
lui $4, 7
TAG448:
lhu $2, 0($4)
mflo $3
lui $2, 8
mtlo $2
TAG449:
sll $0, $0, 0
xor $3, $2, $2
srl $4, $2, 2
subu $4, $4, $4
TAG450:
andi $3, $4, 10
sltu $3, $4, $4
srav $3, $4, $4
andi $4, $3, 10
TAG451:
lui $3, 8
lui $1, 7
lui $2, 9
add $1, $4, $3
TAG452:
lui $4, 1
beq $1, $1, TAG453
mthi $1
ori $2, $4, 0
TAG453:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
beq $2, $3, TAG454
TAG454:
lui $3, 3
mfhi $1
bne $1, $3, TAG455
lui $4, 9
TAG455:
mfhi $4
mthi $4
sra $3, $4, 12
lh $3, 0($3)
TAG456:
mtlo $3
bgtz $3, TAG457
lui $1, 7
ori $3, $3, 10
TAG457:
mtlo $3
mtlo $3
mtlo $3
multu $3, $3
TAG458:
lui $1, 9
bgez $3, TAG459
mthi $1
and $1, $1, $3
TAG459:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
TAG460:
bltz $3, TAG461
subu $2, $3, $3
beq $3, $3, TAG461
mfhi $1
TAG461:
bne $1, $1, TAG462
mfhi $3
bne $3, $3, TAG462
sll $0, $0, 0
TAG462:
lui $2, 6
addu $4, $2, $2
mflo $2
lbu $2, 0($2)
TAG463:
beq $2, $2, TAG464
subu $1, $2, $2
srl $3, $2, 12
sh $2, 0($2)
TAG464:
lui $2, 13
mtlo $3
sll $0, $0, 0
lui $2, 2
TAG465:
bltz $2, TAG466
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG466:
bne $3, $3, TAG467
sll $0, $0, 0
mthi $3
lui $3, 8
TAG467:
lui $2, 1
div $2, $2
mflo $3
sll $0, $0, 0
TAG468:
mtlo $3
mtlo $3
slti $3, $3, 2
blez $3, TAG469
TAG469:
srl $4, $3, 9
slt $1, $3, $4
bne $1, $1, TAG470
div $1, $3
TAG470:
bgez $1, TAG471
mult $1, $1
lui $3, 10
multu $1, $3
TAG471:
mfhi $3
blez $3, TAG472
sb $3, 0($3)
sb $3, 0($3)
TAG472:
beq $3, $3, TAG473
and $1, $3, $3
divu $3, $3
lui $2, 7
TAG473:
sll $0, $0, 0
beq $2, $2, TAG474
lui $3, 6
lb $4, 0($4)
TAG474:
slti $1, $4, 9
bgez $1, TAG475
lbu $3, 0($1)
sh $4, 0($3)
TAG475:
mult $3, $3
sb $3, 0($3)
mfhi $2
lui $1, 8
TAG476:
bgtz $1, TAG477
nor $4, $1, $1
bltz $4, TAG477
lui $3, 12
TAG477:
beq $3, $3, TAG478
srav $4, $3, $3
mthi $4
mult $3, $3
TAG478:
multu $4, $4
mtlo $4
mflo $2
beq $2, $4, TAG479
TAG479:
sltiu $4, $2, 5
lh $4, 0($2)
lhu $4, 0($4)
bgez $2, TAG480
TAG480:
mtlo $4
sw $4, 0($4)
bgez $4, TAG481
multu $4, $4
TAG481:
sw $4, 0($4)
bgez $4, TAG482
lui $4, 6
beq $4, $4, TAG482
TAG482:
subu $4, $4, $4
lui $1, 0
mtlo $4
bne $4, $4, TAG483
TAG483:
multu $1, $1
bne $1, $1, TAG484
addiu $4, $1, 12
bgez $4, TAG484
TAG484:
mflo $3
sllv $2, $3, $4
mult $2, $3
lui $1, 13
TAG485:
beq $1, $1, TAG486
mthi $1
mtlo $1
lh $4, 0($1)
TAG486:
lbu $2, 0($4)
divu $2, $4
sw $2, 0($2)
mfhi $1
TAG487:
bgez $1, TAG488
mthi $1
andi $3, $1, 13
lbu $3, 0($1)
TAG488:
mtlo $3
mfhi $1
sw $3, 0($3)
mflo $2
TAG489:
lui $3, 5
lui $4, 12
srl $2, $3, 4
bne $4, $2, TAG490
TAG490:
andi $2, $2, 13
lh $2, 0($2)
lui $4, 10
mthi $2
TAG491:
mtlo $4
bne $4, $4, TAG492
div $4, $4
addu $4, $4, $4
TAG492:
lui $1, 11
bne $4, $1, TAG493
divu $4, $4
mfhi $3
TAG493:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
mfhi $2
TAG494:
ori $4, $2, 12
bne $4, $4, TAG495
mtlo $2
mthi $2
TAG495:
lhu $3, 0($4)
mflo $4
mthi $4
blez $4, TAG496
TAG496:
mflo $3
sw $4, 0($3)
mfhi $2
bltz $2, TAG497
TAG497:
mult $2, $2
bltz $2, TAG498
mthi $2
or $1, $2, $2
TAG498:
lbu $1, 0($1)
mult $1, $1
addiu $3, $1, 15
addiu $1, $3, 11
TAG499:
srl $2, $1, 6
mtlo $2
mfhi $1
bgtz $1, TAG500
TAG500:
multu $1, $1
lhu $1, 0($1)
mfhi $1
mfhi $4
TAG501:
mfhi $4
multu $4, $4
mtlo $4
mthi $4
TAG502:
mtlo $4
mtlo $4
sltiu $3, $4, 0
blez $4, TAG503
TAG503:
subu $1, $3, $3
lui $3, 1
lh $2, 0($1)
beq $3, $2, TAG504
TAG504:
lui $2, 13
bne $2, $2, TAG505
mtlo $2
sll $0, $0, 0
TAG505:
sll $0, $0, 0
blez $3, TAG506
and $3, $3, $3
sll $0, $0, 0
TAG506:
mfhi $3
beq $3, $3, TAG507
multu $3, $3
mflo $1
TAG507:
mtlo $1
multu $1, $1
mult $1, $1
add $4, $1, $1
TAG508:
mflo $1
lui $2, 9
lhu $1, 0($1)
mflo $3
TAG509:
sh $3, 0($3)
blez $3, TAG510
mult $3, $3
bgez $3, TAG510
TAG510:
lui $3, 10
addiu $3, $3, 4
lui $4, 1
bgtz $3, TAG511
TAG511:
mfhi $4
mtlo $4
sll $1, $4, 2
xori $1, $1, 7
TAG512:
mtlo $1
mthi $1
beq $1, $1, TAG513
mfhi $1
TAG513:
nor $4, $1, $1
sb $4, 8($4)
lui $1, 6
mtlo $1
TAG514:
bgtz $1, TAG515
mthi $1
addiu $3, $1, 6
mult $3, $1
TAG515:
bne $3, $3, TAG516
sltu $3, $3, $3
mflo $2
beq $3, $2, TAG516
TAG516:
mtlo $2
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG517
TAG517:
andi $1, $2, 1
sll $0, $0, 0
mflo $4
andi $4, $4, 4
TAG518:
sb $4, 0($4)
mfhi $1
nor $1, $4, $1
blez $1, TAG519
TAG519:
mthi $1
bne $1, $1, TAG520
div $1, $1
mtlo $1
TAG520:
sll $0, $0, 0
multu $1, $1
divu $1, $1
lui $4, 4
TAG521:
sll $0, $0, 0
bgez $4, TAG522
sll $0, $0, 0
lw $3, 0($4)
TAG522:
sb $3, 0($3)
mthi $3
lb $3, 0($3)
or $2, $3, $3
TAG523:
sh $2, 0($2)
lhu $1, 0($2)
andi $3, $1, 14
mthi $2
TAG524:
lb $1, 0($3)
xori $1, $3, 0
bne $1, $1, TAG525
multu $3, $1
TAG525:
multu $1, $1
lui $1, 9
mthi $1
bgtz $1, TAG526
TAG526:
nor $4, $1, $1
sll $0, $0, 0
bltz $4, TAG527
srlv $4, $4, $1
TAG527:
addiu $2, $4, 14
addiu $4, $2, 5
sll $0, $0, 0
blez $3, TAG528
TAG528:
lui $4, 3
sll $0, $0, 0
bltz $4, TAG529
lui $1, 6
TAG529:
divu $1, $1
sll $0, $0, 0
lui $3, 9
mfhi $2
TAG530:
multu $2, $2
mult $2, $2
mflo $2
lui $3, 1
TAG531:
mthi $3
sll $0, $0, 0
beq $2, $2, TAG532
subu $3, $2, $2
TAG532:
lui $3, 8
mflo $4
multu $3, $3
mult $3, $4
TAG533:
blez $4, TAG534
lui $2, 7
sltiu $4, $2, 7
sll $2, $4, 13
TAG534:
mthi $2
bgtz $2, TAG535
lui $4, 6
sh $2, 0($4)
TAG535:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG536
sra $4, $4, 8
TAG536:
sb $4, -1536($4)
mfhi $3
divu $3, $4
xori $2, $4, 11
TAG537:
mtlo $2
mflo $1
multu $1, $1
div $2, $2
TAG538:
bgez $1, TAG539
sh $1, -1547($1)
lui $1, 1
sll $1, $1, 11
TAG539:
sll $1, $1, 2
mfhi $4
mthi $4
mfhi $2
TAG540:
multu $2, $2
mtlo $2
mfhi $4
sh $2, 0($2)
TAG541:
bne $4, $4, TAG542
mfhi $3
lui $2, 13
lb $1, 0($4)
TAG542:
sb $1, 0($1)
lhu $1, 0($1)
beq $1, $1, TAG543
sra $1, $1, 3
TAG543:
lui $3, 2
slt $1, $1, $1
nor $2, $3, $1
srlv $4, $1, $2
TAG544:
mflo $2
sh $4, 0($2)
lui $1, 13
multu $4, $4
TAG545:
sll $0, $0, 0
xori $2, $1, 10
nor $2, $1, $2
blez $2, TAG546
TAG546:
lui $2, 1
divu $2, $2
sll $0, $0, 0
xori $4, $2, 3
TAG547:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG548
divu $4, $4
TAG548:
sll $0, $0, 0
ori $2, $4, 12
bne $4, $2, TAG549
addiu $4, $4, 0
TAG549:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG550
TAG550:
srl $3, $4, 15
sll $4, $3, 15
bgtz $4, TAG551
mfhi $3
TAG551:
bltz $3, TAG552
multu $3, $3
andi $2, $3, 2
mflo $3
TAG552:
addiu $3, $3, 8
mflo $3
multu $3, $3
lui $4, 1
TAG553:
divu $4, $4
sll $0, $0, 0
divu $4, $4
srav $4, $4, $4
TAG554:
sll $0, $0, 0
beq $3, $4, TAG555
mtlo $3
mthi $4
TAG555:
addu $3, $3, $3
sw $3, 0($3)
sh $3, 0($3)
mtlo $3
TAG556:
lb $2, 0($3)
mfhi $2
sll $0, $0, 0
blez $3, TAG557
TAG557:
mflo $3
mflo $1
sltiu $1, $1, 9
lui $4, 6
TAG558:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG559
mthi $4
TAG559:
mthi $4
divu $4, $4
lui $2, 0
sh $2, 0($2)
TAG560:
sub $2, $2, $2
bltz $2, TAG561
sll $3, $2, 14
sll $1, $2, 15
TAG561:
bgez $1, TAG562
lui $2, 7
lb $4, 0($2)
mult $2, $2
TAG562:
slt $1, $4, $4
blez $1, TAG563
mult $4, $1
lhu $2, 0($4)
TAG563:
bltz $2, TAG564
mtlo $2
addu $4, $2, $2
bgtz $4, TAG564
TAG564:
lui $2, 9
mfhi $4
xor $3, $4, $4
bgtz $2, TAG565
TAG565:
lui $3, 15
ori $1, $3, 0
bltz $1, TAG566
sll $0, $0, 0
TAG566:
divu $2, $2
lui $3, 1
lui $4, 12
lui $1, 2
TAG567:
lui $2, 10
bgtz $2, TAG568
sll $0, $0, 0
divu $1, $1
TAG568:
bne $1, $1, TAG569
mflo $3
div $1, $3
lb $3, 0($3)
TAG569:
mthi $3
beq $3, $3, TAG570
sw $3, 0($3)
add $3, $3, $3
TAG570:
lbu $4, 0($3)
lui $4, 6
slti $2, $4, 5
divu $4, $4
TAG571:
mtlo $2
bgez $2, TAG572
srav $3, $2, $2
bne $2, $3, TAG572
TAG572:
mult $3, $3
beq $3, $3, TAG573
multu $3, $3
bne $3, $3, TAG573
TAG573:
lui $3, 5
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG574
TAG574:
mthi $3
sll $0, $0, 0
and $3, $3, $3
bgez $3, TAG575
TAG575:
sll $0, $0, 0
lui $1, 4
sll $0, $0, 0
mult $3, $1
TAG576:
blez $1, TAG577
sll $0, $0, 0
lui $1, 13
mult $1, $1
TAG577:
sll $3, $1, 5
bgtz $1, TAG578
sll $0, $0, 0
mtlo $3
TAG578:
beq $3, $3, TAG579
lui $1, 14
bgez $1, TAG579
andi $4, $3, 0
TAG579:
mtlo $4
bne $4, $4, TAG580
xor $3, $4, $4
sll $0, $0, 0
TAG580:
mthi $2
sw $2, 0($2)
mult $2, $2
blez $2, TAG581
TAG581:
slt $1, $2, $2
lw $2, 0($2)
lhu $1, 0($2)
bgtz $2, TAG582
TAG582:
add $3, $1, $1
sb $1, 0($1)
mult $3, $3
sw $1, 0($1)
TAG583:
mtlo $3
sltiu $4, $3, 0
mtlo $3
sltiu $2, $4, 4
TAG584:
slt $1, $2, $2
mult $2, $1
mult $2, $2
mult $1, $1
TAG585:
mtlo $1
mfhi $2
subu $3, $2, $2
mfhi $3
TAG586:
sb $3, 0($3)
slti $4, $3, 5
mult $4, $4
mtlo $3
TAG587:
bne $4, $4, TAG588
subu $1, $4, $4
bltz $1, TAG588
sb $4, 0($1)
TAG588:
bgez $1, TAG589
ori $4, $1, 7
bne $1, $4, TAG589
divu $1, $1
TAG589:
mthi $4
lui $3, 3
lb $3, 0($4)
bne $4, $3, TAG590
TAG590:
srl $2, $3, 1
mflo $2
mflo $1
lbu $3, 0($3)
TAG591:
lbu $3, 0($3)
sltu $1, $3, $3
bltz $3, TAG592
multu $3, $3
TAG592:
andi $3, $1, 13
mtlo $3
mflo $2
mtlo $2
TAG593:
mtlo $2
lw $1, 0($2)
beq $1, $2, TAG594
srlv $1, $2, $2
TAG594:
bne $1, $1, TAG595
multu $1, $1
addiu $1, $1, 7
sra $1, $1, 4
TAG595:
lb $1, 0($1)
lbu $2, 0($1)
sw $2, 0($2)
slti $4, $1, 1
TAG596:
sra $3, $4, 4
slt $4, $4, $3
bltz $4, TAG597
addi $3, $3, 14
TAG597:
lui $2, 5
bne $3, $3, TAG598
lui $4, 0
slti $1, $4, 13
TAG598:
lui $3, 1
beq $1, $3, TAG599
mtlo $3
lui $2, 10
TAG599:
sll $0, $0, 0
addiu $3, $2, 12
subu $1, $2, $2
bne $1, $1, TAG600
TAG600:
addiu $1, $1, 8
bltz $1, TAG601
sb $1, 0($1)
lui $2, 9
TAG601:
mtlo $2
mflo $1
mflo $4
sltiu $3, $1, 0
TAG602:
mtlo $3
lui $2, 2
mtlo $3
sb $2, 0($3)
TAG603:
mfhi $2
lui $1, 8
and $1, $2, $2
bne $2, $2, TAG604
TAG604:
multu $1, $1
lw $3, 0($1)
mthi $3
sh $3, 0($1)
TAG605:
bne $3, $3, TAG606
lui $1, 8
beq $1, $1, TAG606
andi $4, $3, 15
TAG606:
beq $4, $4, TAG607
lui $3, 9
bne $4, $3, TAG607
xor $3, $4, $3
TAG607:
addiu $3, $3, 14
sll $0, $0, 0
lui $3, 11
lui $2, 8
TAG608:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $1
mult $1, $1
TAG609:
multu $1, $1
sll $0, $0, 0
xor $4, $1, $1
andi $2, $4, 0
TAG610:
addi $4, $2, 6
mflo $2
mfhi $3
lui $3, 1
TAG611:
bgez $3, TAG612
mult $3, $3
mtlo $3
lui $4, 14
TAG612:
sllv $2, $4, $4
mflo $3
mfhi $2
sb $3, 0($3)
TAG613:
blez $2, TAG614
srav $4, $2, $2
bne $4, $2, TAG614
div $4, $2
TAG614:
blez $4, TAG615
nor $1, $4, $4
bgtz $4, TAG615
lui $3, 13
TAG615:
mult $3, $3
bne $3, $3, TAG616
and $1, $3, $3
slt $1, $3, $1
TAG616:
addiu $3, $1, 13
mflo $4
sh $3, 0($4)
lui $4, 2
TAG617:
sll $0, $0, 0
sll $0, $0, 0
sub $3, $3, $1
bltz $4, TAG618
TAG618:
lb $3, 0($3)
bne $3, $3, TAG619
addiu $4, $3, 10
bne $3, $4, TAG619
TAG619:
addiu $4, $4, 0
sh $4, 0($4)
mfhi $4
mtlo $4
TAG620:
sb $4, 0($4)
sh $4, 0($4)
lui $3, 9
sltu $4, $3, $4
TAG621:
bne $4, $4, TAG622
lb $1, 0($4)
mfhi $4
mtlo $1
TAG622:
lui $4, 1
bgez $4, TAG623
lui $1, 10
div $4, $4
TAG623:
bgtz $1, TAG624
xor $2, $1, $1
sw $2, 0($2)
bgez $2, TAG624
TAG624:
multu $2, $2
lui $3, 12
sll $0, $0, 0
srl $3, $3, 15
TAG625:
bgtz $3, TAG626
multu $3, $3
div $3, $3
lui $1, 9
TAG626:
bne $1, $1, TAG627
sll $0, $0, 0
lui $4, 8
subu $1, $4, $1
TAG627:
mtlo $1
mtlo $1
sll $0, $0, 0
addu $1, $1, $1
TAG628:
xori $3, $1, 5
mthi $1
blez $3, TAG629
sll $0, $0, 0
TAG629:
mflo $1
divu $1, $3
lui $1, 8
mfhi $3
TAG630:
mflo $3
blez $3, TAG631
mflo $3
beq $3, $3, TAG631
TAG631:
sltiu $1, $3, 10
sllv $3, $3, $3
beq $1, $1, TAG632
mult $3, $3
TAG632:
bgez $3, TAG633
lhu $2, 0($3)
addi $2, $2, 4
lw $1, 0($3)
TAG633:
mflo $4
mfhi $3
lb $4, 0($4)
beq $1, $3, TAG634
TAG634:
lui $1, 6
sb $1, 0($4)
srl $3, $1, 1
sll $0, $0, 0
TAG635:
sll $0, $0, 0
bltz $3, TAG636
lui $2, 6
mflo $2
TAG636:
bne $2, $2, TAG637
sb $2, 0($2)
sw $2, 0($2)
mfhi $3
TAG637:
mult $3, $3
lui $2, 7
bne $2, $3, TAG638
multu $2, $2
TAG638:
sll $0, $0, 0
beq $2, $2, TAG639
mfhi $1
lui $3, 8
TAG639:
blez $3, TAG640
mult $3, $3
mtlo $3
addiu $1, $3, 13
TAG640:
beq $1, $1, TAG641
lb $3, 0($1)
mult $3, $1
addi $3, $1, 4
TAG641:
lw $4, 0($3)
lui $4, 14
sll $0, $0, 0
mthi $3
TAG642:
lw $1, 0($3)
bgtz $1, TAG643
lb $2, 0($1)
lbu $2, 0($1)
TAG643:
bgez $2, TAG644
multu $2, $2
beq $2, $2, TAG644
andi $4, $2, 4
TAG644:
bne $4, $4, TAG645
srl $2, $4, 5
mtlo $2
lui $2, 3
TAG645:
bgez $2, TAG646
sll $0, $0, 0
mflo $3
sb $3, 0($3)
TAG646:
ori $1, $3, 13
subu $1, $3, $3
nor $2, $1, $1
bgez $1, TAG647
TAG647:
mfhi $1
lw $2, 0($1)
sw $2, 0($2)
lb $1, 0($1)
TAG648:
mthi $1
mflo $1
sb $1, -28672($1)
multu $1, $1
TAG649:
beq $1, $1, TAG650
mthi $1
divu $1, $1
mflo $2
TAG650:
srlv $4, $2, $2
lui $4, 12
sll $0, $0, 0
mtlo $4
TAG651:
beq $4, $4, TAG652
mflo $3
lui $1, 6
beq $3, $3, TAG652
TAG652:
srl $1, $1, 1
lb $1, -14336($1)
mtlo $1
addi $1, $1, 12
TAG653:
mfhi $4
mthi $1
lui $2, 11
bne $2, $4, TAG654
TAG654:
or $2, $2, $2
mult $2, $2
srl $1, $2, 8
div $1, $1
TAG655:
blez $1, TAG656
addiu $2, $1, 0
mflo $2
sltu $2, $2, $2
TAG656:
mult $2, $2
multu $2, $2
mult $2, $2
lb $3, 0($2)
TAG657:
lb $2, 0($3)
sw $2, 0($3)
lh $3, 0($2)
sb $2, 0($3)
TAG658:
lui $2, 12
mthi $2
lui $4, 2
sw $3, 0($3)
TAG659:
lui $3, 9
lui $4, 6
lui $1, 3
beq $4, $3, TAG660
TAG660:
lui $4, 14
multu $1, $4
mthi $4
sllv $3, $4, $4
TAG661:
beq $3, $3, TAG662
lui $3, 6
mthi $3
mthi $3
TAG662:
srlv $3, $3, $3
mfhi $1
beq $3, $1, TAG663
mthi $3
TAG663:
bne $1, $1, TAG664
mfhi $3
mtlo $3
multu $1, $1
TAG664:
lui $2, 2
xor $3, $2, $3
xor $2, $2, $3
bgez $3, TAG665
TAG665:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG666
sll $0, $0, 0
TAG666:
mtlo $3
subu $2, $3, $3
sll $0, $0, 0
multu $3, $2
TAG667:
bgtz $2, TAG668
add $3, $2, $2
mflo $2
addu $4, $3, $2
TAG668:
and $3, $4, $4
sb $4, 0($3)
blez $4, TAG669
sll $4, $4, 7
TAG669:
mfhi $4
mflo $3
mfhi $2
sh $4, 0($3)
TAG670:
mfhi $1
or $2, $1, $2
bltz $2, TAG671
slt $2, $2, $2
TAG671:
mflo $3
bne $3, $3, TAG672
lb $3, 0($2)
multu $3, $3
TAG672:
lbu $2, 0($3)
lbu $1, 0($2)
beq $3, $2, TAG673
slti $4, $3, 9
TAG673:
lbu $4, 0($4)
srl $3, $4, 3
mthi $4
lui $1, 3
TAG674:
srav $4, $1, $1
mtlo $1
divu $1, $1
sltu $3, $4, $4
TAG675:
srl $2, $3, 11
sh $2, 0($2)
mthi $2
mthi $3
TAG676:
mtlo $2
sh $2, 0($2)
lui $1, 9
bltz $1, TAG677
TAG677:
mfhi $4
sll $3, $4, 3
lui $2, 15
mtlo $1
TAG678:
mtlo $2
or $3, $2, $2
lui $1, 5
bgtz $2, TAG679
TAG679:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
mfhi $2
TAG680:
bne $2, $2, TAG681
sub $1, $2, $2
lh $4, 0($1)
lh $2, 0($2)
TAG681:
addi $4, $2, 5
divu $4, $4
mult $4, $4
lui $1, 6
TAG682:
sll $0, $0, 0
or $1, $1, $1
addiu $1, $1, 13
lui $3, 4
TAG683:
divu $3, $3
lui $3, 8
mfhi $3
lui $2, 13
TAG684:
mfhi $3
mfhi $2
subu $2, $2, $2
mtlo $2
TAG685:
xori $1, $2, 11
mthi $1
mfhi $4
div $2, $4
TAG686:
bne $4, $4, TAG687
xori $2, $4, 1
beq $2, $2, TAG687
and $3, $2, $4
TAG687:
bgez $3, TAG688
mthi $3
xori $1, $3, 1
bne $3, $1, TAG688
TAG688:
slt $4, $1, $1
mult $1, $4
mtlo $1
lb $1, 0($1)
TAG689:
sub $4, $1, $1
mthi $1
mthi $1
bltz $4, TAG690
TAG690:
sw $4, 0($4)
srlv $3, $4, $4
blez $4, TAG691
multu $3, $4
TAG691:
bgtz $3, TAG692
sb $3, 0($3)
bne $3, $3, TAG692
mfhi $4
TAG692:
sb $4, 0($4)
subu $4, $4, $4
mfhi $4
multu $4, $4
TAG693:
lui $2, 0
xori $2, $2, 10
mult $2, $2
nor $1, $4, $2
TAG694:
div $1, $1
mthi $1
bgtz $1, TAG695
lui $2, 14
TAG695:
bgtz $2, TAG696
mflo $3
bgtz $3, TAG696
divu $2, $2
TAG696:
addu $1, $3, $3
mfhi $1
bne $1, $1, TAG697
lw $4, 11($1)
TAG697:
mfhi $3
xor $4, $4, $4
blez $4, TAG698
mult $3, $3
TAG698:
mfhi $1
sh $1, 0($4)
mfhi $1
lui $2, 11
TAG699:
divu $2, $2
divu $2, $2
sll $0, $0, 0
lb $1, 0($4)
TAG700:
multu $1, $1
multu $1, $1
sub $3, $1, $1
lui $2, 4
TAG701:
mflo $1
bgez $1, TAG702
mfhi $3
sh $1, 0($2)
TAG702:
lbu $1, 0($3)
multu $3, $3
sb $3, 0($3)
blez $1, TAG703
TAG703:
multu $1, $1
beq $1, $1, TAG704
lw $4, 0($1)
divu $4, $4
TAG704:
mfhi $3
bne $3, $3, TAG705
lui $1, 11
sh $4, 0($3)
TAG705:
sll $0, $0, 0
beq $3, $1, TAG706
sll $0, $0, 0
lb $2, 0($3)
TAG706:
multu $2, $2
mult $2, $2
mult $2, $2
sra $2, $2, 14
TAG707:
bne $2, $2, TAG708
sltiu $2, $2, 0
bltz $2, TAG708
mfhi $3
TAG708:
lui $4, 11
sra $3, $3, 2
lui $3, 4
bgtz $3, TAG709
TAG709:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG710:
or $4, $2, $2
sllv $2, $4, $2
sll $0, $0, 0
mtlo $4
TAG711:
beq $2, $2, TAG712
sll $0, $0, 0
beq $2, $2, TAG712
sb $2, 0($2)
TAG712:
multu $2, $2
sll $0, $0, 0
lb $4, 0($4)
sw $2, 0($4)
TAG713:
bgez $4, TAG714
subu $4, $4, $4
mtlo $4
mthi $4
TAG714:
sb $4, 0($4)
mthi $4
beq $4, $4, TAG715
lw $3, 0($4)
TAG715:
mthi $3
lw $2, 0($3)
andi $3, $2, 4
mtlo $3
TAG716:
sb $3, 0($3)
lui $2, 15
multu $2, $3
beq $2, $2, TAG717
TAG717:
sltiu $4, $2, 9
bne $2, $2, TAG718
lui $1, 8
srav $1, $2, $4
TAG718:
sll $0, $0, 0
mthi $1
mfhi $3
div $1, $3
TAG719:
mtlo $3
mtlo $3
mtlo $3
mthi $3
TAG720:
sll $0, $0, 0
sllv $1, $3, $3
lui $2, 14
multu $3, $2
TAG721:
mflo $4
lui $3, 10
bgez $4, TAG722
sll $0, $0, 0
TAG722:
sll $0, $0, 0
slt $2, $3, $3
mtlo $2
divu $2, $3
TAG723:
sll $3, $2, 11
mult $2, $3
xori $4, $2, 11
sb $2, 0($4)
TAG724:
mtlo $4
lui $4, 14
mfhi $2
mult $2, $2
TAG725:
lui $4, 15
ori $2, $4, 11
lui $2, 5
sll $0, $0, 0
TAG726:
and $1, $4, $4
multu $1, $4
beq $4, $4, TAG727
mflo $3
TAG727:
mult $3, $3
mthi $3
lbu $4, 0($3)
mthi $4
TAG728:
lbu $3, 0($4)
lui $3, 12
bgez $3, TAG729
sll $0, $0, 0
TAG729:
blez $3, TAG730
divu $3, $3
multu $3, $3
blez $3, TAG730
TAG730:
mfhi $4
bltz $4, TAG731
andi $2, $3, 15
mtlo $2
TAG731:
subu $2, $2, $2
mthi $2
mthi $2
lui $1, 11
TAG732:
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $1, 8
sltiu $2, $1, 8
TAG733:
mfhi $3
addiu $4, $3, 6
mfhi $2
lui $3, 13
TAG734:
bne $3, $3, TAG735
lui $3, 0
bgtz $3, TAG735
multu $3, $3
TAG735:
blez $3, TAG736
mflo $3
mtlo $3
mfhi $2
TAG736:
mtlo $2
lui $2, 12
blez $2, TAG737
sll $0, $0, 0
TAG737:
lui $4, 9
multu $4, $4
sll $0, $0, 0
blez $2, TAG738
TAG738:
sll $0, $0, 0
mtlo $1
bgez $1, TAG739
multu $1, $1
TAG739:
bgez $1, TAG740
xori $4, $1, 15
bgez $1, TAG740
mtlo $4
TAG740:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $2, TAG741
sll $0, $0, 0
TAG741:
subu $4, $2, $2
mult $4, $4
multu $2, $4
mflo $2
TAG742:
sw $2, 0($2)
lui $1, 14
bne $1, $2, TAG743
divu $2, $1
TAG743:
lui $4, 9
blez $4, TAG744
sll $3, $4, 2
divu $4, $1
TAG744:
lui $3, 9
srlv $3, $3, $3
addiu $4, $3, 8
sll $0, $0, 0
TAG745:
or $2, $4, $4
sll $0, $0, 0
addiu $1, $3, 13
mtlo $1
TAG746:
sll $0, $0, 0
lui $2, 14
bgez $1, TAG747
sll $0, $0, 0
TAG747:
sllv $1, $4, $4
div $1, $4
beq $4, $4, TAG748
sll $4, $4, 9
TAG748:
mthi $4
mthi $4
sll $0, $0, 0
mtlo $4
TAG749:
lui $1, 3
lui $2, 7
sll $0, $0, 0
bne $1, $1, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop