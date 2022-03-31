ori $1, $0, 1
ori $2, $0, 6
ori $3, $0, 0
ori $4, $0, 3
sw $3, 0($0)
sw $3, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $2, 16($0)
sw $2, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $2, 52($0)
sw $4, 56($0)
sw $1, 60($0)
sw $4, 64($0)
sw $1, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $1, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $4, 124($0)
andi $1, $2, 14
lui $3, 12
mflo $1
blez $1, TAG1
TAG1:
multu $1, $1
lhu $2, 0($1)
bne $1, $1, TAG2
lui $1, 13
TAG2:
bne $1, $1, TAG3
mthi $1
mtlo $1
mflo $3
TAG3:
mtlo $3
mthi $3
sll $0, $0, 0
bgtz $4, TAG4
TAG4:
lui $4, 12
sll $0, $0, 0
bne $1, $4, TAG5
lui $2, 9
TAG5:
bgez $2, TAG6
lui $3, 8
lui $1, 11
beq $1, $1, TAG6
TAG6:
sll $0, $0, 0
mfhi $3
lui $2, 10
lui $2, 12
TAG7:
mflo $4
bgez $2, TAG8
mtlo $2
xori $3, $4, 3
TAG8:
lui $1, 10
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG9:
mthi $3
beq $3, $3, TAG10
lui $1, 9
lhu $4, 0($1)
TAG10:
mflo $2
ori $4, $4, 2
mfhi $2
sll $0, $0, 0
TAG11:
sll $0, $0, 0
bltz $3, TAG12
subu $1, $3, $3
beq $3, $1, TAG12
TAG12:
sh $1, 0($1)
multu $1, $1
beq $1, $1, TAG13
lh $4, 0($1)
TAG13:
mtlo $4
lbu $1, 0($4)
bne $1, $4, TAG14
mflo $2
TAG14:
mfhi $1
lb $3, 0($2)
mtlo $1
mflo $3
TAG15:
lh $2, 0($3)
bgez $3, TAG16
sb $2, 0($3)
sb $3, 0($3)
TAG16:
or $1, $2, $2
lw $1, 0($2)
beq $1, $1, TAG17
lui $3, 15
TAG17:
mflo $4
add $3, $4, $3
mflo $3
sllv $4, $3, $3
TAG18:
mtlo $4
srav $3, $4, $4
srl $1, $3, 12
mthi $1
TAG19:
lui $4, 3
beq $4, $1, TAG20
multu $4, $1
multu $1, $1
TAG20:
addu $3, $4, $4
sll $0, $0, 0
multu $4, $4
lui $2, 5
TAG21:
bgtz $2, TAG22
mflo $1
bltz $1, TAG22
mtlo $2
TAG22:
and $1, $1, $1
sb $1, 0($1)
lui $4, 10
sll $0, $0, 0
TAG23:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
lui $2, 11
TAG24:
addiu $1, $2, 5
mflo $1
mfhi $2
beq $1, $1, TAG25
TAG25:
sll $4, $2, 6
lhu $3, 0($2)
multu $3, $2
bgez $2, TAG26
TAG26:
lui $1, 0
sll $1, $1, 4
lh $4, 0($3)
mult $1, $1
TAG27:
sh $4, 0($4)
mtlo $4
lbu $2, 0($4)
blez $2, TAG28
TAG28:
sw $2, 0($2)
bne $2, $2, TAG29
mfhi $4
slt $3, $2, $4
TAG29:
slti $4, $3, 10
beq $4, $3, TAG30
srl $1, $4, 2
beq $1, $3, TAG30
TAG30:
multu $1, $1
mthi $1
lbu $3, 0($1)
sh $1, 0($3)
TAG31:
sub $2, $3, $3
srlv $4, $3, $3
multu $4, $2
mtlo $4
TAG32:
bltz $4, TAG33
lui $4, 10
mtlo $4
mult $4, $4
TAG33:
sll $0, $0, 0
sll $0, $0, 0
ori $3, $4, 8
multu $4, $4
TAG34:
blez $3, TAG35
slt $2, $3, $3
mthi $3
mflo $2
TAG35:
sllv $3, $2, $2
add $1, $2, $3
mthi $2
bltz $3, TAG36
TAG36:
lw $1, 0($1)
sh $1, 0($1)
lui $4, 9
lbu $3, 0($1)
TAG37:
bgtz $3, TAG38
lbu $2, 0($3)
sra $4, $3, 9
sh $4, 0($4)
TAG38:
srlv $2, $4, $4
sh $4, 0($2)
mflo $1
bne $1, $2, TAG39
TAG39:
mflo $4
lb $4, 0($1)
beq $1, $4, TAG40
mflo $4
TAG40:
beq $4, $4, TAG41
sb $4, 0($4)
beq $4, $4, TAG41
lui $2, 15
TAG41:
lb $1, 0($2)
mult $1, $1
slti $4, $2, 0
mflo $4
TAG42:
mthi $4
subu $2, $4, $4
beq $4, $4, TAG43
lb $2, 0($2)
TAG43:
mtlo $2
lui $2, 4
sll $0, $0, 0
bne $2, $2, TAG44
TAG44:
slt $4, $2, $2
sh $4, 0($4)
sltiu $1, $2, 9
lh $2, 0($1)
TAG45:
mfhi $4
mult $4, $2
multu $4, $2
bgez $4, TAG46
TAG46:
mfhi $2
addiu $4, $4, 1
xor $2, $4, $4
div $4, $4
TAG47:
mthi $2
multu $2, $2
mult $2, $2
mthi $2
TAG48:
or $4, $2, $2
mtlo $2
multu $4, $2
or $3, $2, $2
TAG49:
sh $3, 0($3)
mtlo $3
lui $1, 7
mthi $1
TAG50:
lui $2, 15
lui $4, 13
xori $1, $2, 2
sll $2, $1, 7
TAG51:
sll $0, $0, 0
sll $0, $0, 0
srl $4, $2, 11
lui $3, 6
TAG52:
lui $3, 10
xor $3, $3, $3
mfhi $2
beq $3, $3, TAG53
TAG53:
sra $4, $2, 7
or $4, $2, $2
mfhi $1
bgtz $4, TAG54
TAG54:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG55
TAG55:
sll $0, $0, 0
lui $4, 11
sll $0, $0, 0
mult $1, $1
TAG56:
srl $4, $3, 6
beq $3, $3, TAG57
slti $4, $3, 8
bgtz $4, TAG57
TAG57:
divu $4, $4
slt $3, $4, $4
mfhi $1
mult $4, $1
TAG58:
lui $1, 4
mtlo $1
divu $1, $1
sll $0, $0, 0
TAG59:
bgtz $1, TAG60
lui $4, 4
ori $4, $4, 4
beq $4, $4, TAG60
TAG60:
mflo $1
mfhi $3
sll $0, $0, 0
mtlo $3
TAG61:
addu $1, $3, $3
mthi $1
lui $1, 6
bltz $1, TAG62
TAG62:
mthi $1
beq $1, $1, TAG63
mthi $1
sw $1, 0($1)
TAG63:
beq $1, $1, TAG64
addiu $3, $1, 8
mthi $1
lui $4, 11
TAG64:
and $2, $4, $4
mtlo $4
sll $0, $0, 0
mflo $1
TAG65:
sll $0, $0, 0
bltz $1, TAG66
ori $1, $1, 0
lui $1, 2
TAG66:
mfhi $3
mfhi $4
mtlo $4
sll $0, $0, 0
TAG67:
mflo $3
mult $4, $3
divu $3, $3
beq $4, $4, TAG68
TAG68:
mthi $3
sll $0, $0, 0
srlv $4, $2, $2
mult $4, $2
TAG69:
mflo $3
sll $0, $0, 0
beq $3, $3, TAG70
divu $3, $4
TAG70:
sb $3, 0($3)
subu $1, $3, $3
sw $3, 0($1)
lhu $4, 0($3)
TAG71:
sllv $2, $4, $4
mthi $4
mflo $2
beq $2, $2, TAG72
TAG72:
sb $2, 0($2)
beq $2, $2, TAG73
lhu $4, 0($2)
sb $2, 0($4)
TAG73:
srav $4, $4, $4
mtlo $4
bgez $4, TAG74
mflo $4
TAG74:
lui $4, 2
sll $0, $0, 0
and $1, $4, $4
bne $4, $1, TAG75
TAG75:
slti $4, $1, 14
beq $4, $4, TAG76
sll $0, $0, 0
lui $4, 2
TAG76:
sh $4, 0($4)
lbu $3, 0($4)
multu $4, $3
bne $4, $4, TAG77
TAG77:
mult $3, $3
bgez $3, TAG78
multu $3, $3
mtlo $3
TAG78:
mult $3, $3
mtlo $3
slti $2, $3, 6
xor $4, $3, $3
TAG79:
sh $4, 0($4)
beq $4, $4, TAG80
mflo $4
div $4, $4
TAG80:
addu $1, $4, $4
mflo $1
mult $4, $1
bne $1, $1, TAG81
TAG81:
sw $1, 0($1)
bltz $1, TAG82
srl $2, $1, 6
sltu $4, $1, $2
TAG82:
sh $4, 0($4)
beq $4, $4, TAG83
lh $4, 0($4)
mthi $4
TAG83:
lh $3, 0($4)
sub $1, $3, $3
sltu $1, $4, $3
sw $3, 0($1)
TAG84:
sw $1, 0($1)
mult $1, $1
lui $3, 13
mthi $3
TAG85:
bgez $3, TAG86
mthi $3
sb $3, 0($3)
sltiu $4, $3, 14
TAG86:
bne $4, $4, TAG87
mflo $4
bgez $4, TAG87
multu $4, $4
TAG87:
andi $1, $4, 0
lbu $3, 0($1)
sb $3, 0($3)
bgtz $3, TAG88
TAG88:
mult $3, $3
lbu $4, 0($3)
sw $3, 0($3)
sllv $1, $4, $4
TAG89:
multu $1, $1
lui $1, 8
mfhi $3
mthi $3
TAG90:
lh $2, 0($3)
bne $3, $2, TAG91
lb $2, 0($2)
slti $1, $3, 15
TAG91:
andi $3, $1, 9
mfhi $4
bgez $3, TAG92
mthi $4
TAG92:
nor $2, $4, $4
bgtz $2, TAG93
lbu $2, 0($4)
bgez $2, TAG93
TAG93:
lw $2, 0($2)
sltiu $3, $2, 12
lb $1, 0($3)
lb $4, 0($3)
TAG94:
srlv $4, $4, $4
beq $4, $4, TAG95
or $2, $4, $4
sh $4, 0($4)
TAG95:
sh $2, 0($2)
lui $4, 5
bgtz $4, TAG96
mtlo $4
TAG96:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG97
srav $1, $4, $4
TAG97:
mfhi $4
mult $4, $4
mthi $1
sll $0, $0, 0
TAG98:
lhu $4, 0($4)
lh $3, 0($4)
bne $4, $4, TAG99
sllv $4, $3, $4
TAG99:
mtlo $4
lui $3, 11
addu $3, $4, $3
mthi $4
TAG100:
sll $0, $0, 0
blez $3, TAG101
sll $0, $0, 0
sll $0, $0, 0
TAG101:
mfhi $3
bne $1, $3, TAG102
mflo $4
sh $3, 0($1)
TAG102:
addu $4, $4, $4
mfhi $2
nor $4, $4, $4
beq $4, $4, TAG103
TAG103:
multu $4, $4
sltu $1, $4, $4
sllv $2, $4, $1
lhu $1, 1($2)
TAG104:
mtlo $1
bltz $1, TAG105
mthi $1
sra $2, $1, 7
TAG105:
mtlo $2
bne $2, $2, TAG106
srav $4, $2, $2
mthi $2
TAG106:
sw $4, 0($4)
mult $4, $4
bltz $4, TAG107
multu $4, $4
TAG107:
multu $4, $4
addi $3, $4, 3
addu $1, $3, $4
lui $1, 13
TAG108:
mthi $1
srlv $3, $1, $1
divu $3, $1
srlv $3, $3, $3
TAG109:
mfhi $2
sll $0, $0, 0
mthi $2
sra $1, $3, 2
TAG110:
mult $1, $1
sll $0, $0, 0
lui $3, 11
bltz $3, TAG111
TAG111:
mfhi $3
addiu $4, $3, 3
srl $4, $4, 4
div $3, $3
TAG112:
mthi $4
or $1, $4, $4
lui $1, 8
sll $0, $0, 0
TAG113:
sb $3, 0($3)
mthi $3
mflo $4
div $4, $3
TAG114:
subu $2, $4, $4
mthi $4
sw $4, 0($2)
beq $4, $4, TAG115
TAG115:
andi $4, $2, 0
mflo $3
mflo $2
addiu $3, $3, 4
TAG116:
mflo $4
xor $2, $3, $3
addi $1, $2, 2
bgez $1, TAG117
TAG117:
lhu $3, 0($1)
mult $3, $1
addiu $3, $1, 14
divu $3, $1
TAG118:
sll $2, $3, 10
bne $3, $2, TAG119
sll $3, $2, 8
beq $2, $3, TAG119
TAG119:
mfhi $4
bgtz $4, TAG120
sh $3, 0($4)
sll $0, $0, 0
TAG120:
subu $4, $1, $1
lui $1, 11
bne $1, $1, TAG121
sll $0, $0, 0
TAG121:
divu $1, $1
mthi $1
sll $0, $0, 0
divu $1, $3
TAG122:
multu $3, $3
or $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG123:
mult $3, $3
srl $2, $3, 3
addiu $4, $2, 7
lui $4, 14
TAG124:
sll $0, $0, 0
mtlo $4
mfhi $3
subu $4, $3, $4
TAG125:
bgtz $4, TAG126
sra $4, $4, 12
mtlo $4
srav $3, $4, $4
TAG126:
sll $0, $0, 0
beq $2, $3, TAG127
sll $0, $0, 0
mfhi $4
TAG127:
lui $2, 8
mflo $3
divu $4, $2
mfhi $2
TAG128:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 0
bne $1, $1, TAG129
TAG129:
srl $2, $1, 6
blez $1, TAG130
lui $1, 5
mtlo $1
TAG130:
or $4, $1, $1
lui $2, 1
div $1, $4
mfhi $1
TAG131:
sra $2, $1, 15
mfhi $2
subu $4, $2, $2
mflo $3
TAG132:
lui $1, 10
sb $1, 0($3)
lui $1, 2
srl $1, $1, 7
TAG133:
sll $0, $0, 0
lh $4, -1024($1)
lui $4, 7
sll $0, $0, 0
TAG134:
sll $4, $4, 6
sll $2, $4, 5
bgez $4, TAG135
mflo $3
TAG135:
srl $1, $3, 8
sllv $3, $3, $3
lui $4, 1
addiu $3, $3, 7
TAG136:
lui $1, 3
mflo $1
mfhi $3
bne $3, $1, TAG137
TAG137:
mult $3, $3
sh $3, 0($3)
lhu $2, 0($3)
mthi $3
TAG138:
bgez $2, TAG139
xori $1, $2, 15
slti $2, $1, 12
sltiu $1, $1, 0
TAG139:
lui $4, 14
lui $2, 5
slt $4, $4, $4
lb $2, 0($4)
TAG140:
mtlo $2
beq $2, $2, TAG141
lui $4, 10
lui $4, 9
TAG141:
div $4, $4
beq $4, $4, TAG142
div $4, $4
divu $4, $4
TAG142:
mtlo $4
mfhi $4
sra $3, $4, 0
mtlo $4
TAG143:
mthi $3
slt $2, $3, $3
bne $3, $3, TAG144
slti $1, $2, 8
TAG144:
lui $4, 2
mtlo $4
mflo $4
mthi $4
TAG145:
blez $4, TAG146
lui $2, 6
mthi $4
sll $0, $0, 0
TAG146:
mfhi $4
mtlo $4
bgez $4, TAG147
sll $0, $0, 0
TAG147:
mtlo $2
sll $0, $0, 0
addu $3, $2, $2
divu $2, $3
TAG148:
sllv $4, $3, $3
mfhi $2
mfhi $1
bne $1, $1, TAG149
TAG149:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG150
slti $1, $3, 6
TAG150:
mult $1, $1
mflo $3
lui $1, 2
mfhi $3
TAG151:
sh $3, 0($3)
lui $3, 14
blez $3, TAG152
sll $0, $0, 0
TAG152:
bgtz $3, TAG153
slt $3, $3, $3
mflo $2
lb $3, 0($3)
TAG153:
mflo $1
srlv $2, $3, $1
or $2, $3, $2
bltz $2, TAG154
TAG154:
mflo $3
mthi $3
mflo $3
bne $3, $3, TAG155
TAG155:
mthi $3
bne $3, $3, TAG156
multu $3, $3
ori $2, $3, 14
TAG156:
mflo $2
lb $3, 0($2)
mult $2, $3
xori $1, $3, 11
TAG157:
mthi $1
sb $1, 0($1)
mthi $1
divu $1, $1
TAG158:
multu $1, $1
bltz $1, TAG159
mfhi $1
sub $1, $1, $1
TAG159:
srlv $2, $1, $1
lh $2, 0($2)
lui $1, 15
add $3, $2, $1
TAG160:
sll $0, $0, 0
beq $3, $3, TAG161
divu $3, $3
subu $3, $3, $3
TAG161:
bgez $3, TAG162
mthi $3
mtlo $3
sw $3, 0($3)
TAG162:
beq $3, $3, TAG163
mfhi $2
mflo $1
div $2, $3
TAG163:
div $1, $1
slti $4, $1, 8
mfhi $3
lui $4, 11
TAG164:
or $1, $4, $4
sll $0, $0, 0
srlv $2, $4, $4
sll $0, $0, 0
TAG165:
addiu $2, $2, 8
lui $4, 10
sll $0, $0, 0
lui $4, 2
TAG166:
lui $2, 14
multu $2, $4
sll $3, $2, 6
bne $2, $3, TAG167
TAG167:
sll $0, $0, 0
lui $2, 9
bne $2, $4, TAG168
subu $1, $2, $2
TAG168:
mfhi $1
sh $1, 0($1)
sb $1, 0($1)
andi $3, $1, 14
TAG169:
multu $3, $3
mfhi $3
mult $3, $3
mult $3, $3
TAG170:
lui $1, 6
sll $0, $0, 0
bne $3, $1, TAG171
divu $3, $1
TAG171:
bltz $1, TAG172
srlv $1, $1, $1
lui $1, 11
multu $1, $1
TAG172:
xor $3, $1, $1
multu $1, $1
mtlo $3
mtlo $3
TAG173:
sh $3, 0($3)
subu $1, $3, $3
sh $3, 0($3)
bne $1, $1, TAG174
TAG174:
mtlo $1
lui $3, 15
mfhi $1
mult $1, $1
TAG175:
lbu $4, 0($1)
lui $1, 10
bne $1, $1, TAG176
srav $2, $1, $1
TAG176:
sll $0, $0, 0
bgtz $2, TAG177
div $2, $2
mthi $2
TAG177:
sll $0, $0, 0
srlv $4, $2, $2
beq $4, $2, TAG178
lui $3, 3
TAG178:
sll $0, $0, 0
bne $3, $3, TAG179
mfhi $1
mtlo $3
TAG179:
lui $3, 5
and $1, $1, $3
mflo $3
slt $2, $3, $1
TAG180:
mthi $2
mult $2, $2
mflo $4
mthi $4
TAG181:
lui $4, 12
div $4, $4
sll $0, $0, 0
multu $4, $4
TAG182:
subu $2, $4, $4
addi $3, $2, 11
lui $3, 0
beq $3, $3, TAG183
TAG183:
mtlo $3
slt $2, $3, $3
lb $3, 0($3)
beq $3, $3, TAG184
TAG184:
mult $3, $3
srav $3, $3, $3
addiu $2, $3, 10
lw $2, 0($3)
TAG185:
bne $2, $2, TAG186
lbu $1, 0($2)
lui $3, 14
slti $4, $3, 15
TAG186:
srlv $3, $4, $4
beq $4, $4, TAG187
andi $4, $3, 3
mtlo $4
TAG187:
bne $4, $4, TAG188
mtlo $4
ori $1, $4, 8
sb $1, 0($4)
TAG188:
lui $4, 3
lui $1, 6
addiu $4, $1, 10
andi $1, $1, 1
TAG189:
mflo $2
mtlo $1
subu $2, $1, $1
addiu $3, $2, 7
TAG190:
slt $1, $3, $3
mflo $4
add $4, $4, $1
ori $4, $4, 8
TAG191:
mfhi $3
beq $3, $3, TAG192
or $2, $4, $4
lhu $2, 0($4)
TAG192:
subu $4, $2, $2
sb $2, 0($4)
lbu $2, 0($2)
mult $2, $4
TAG193:
sll $1, $2, 5
sh $1, 0($2)
add $1, $1, $1
srav $4, $1, $1
TAG194:
bgez $4, TAG195
sb $4, 0($4)
div $4, $4
slti $1, $4, 6
TAG195:
srl $1, $1, 6
bgtz $1, TAG196
sb $1, 0($1)
lui $3, 12
TAG196:
mfhi $1
slti $3, $3, 5
bgez $3, TAG197
lhu $2, 0($3)
TAG197:
mflo $4
mthi $4
lhu $4, 0($4)
beq $2, $2, TAG198
TAG198:
mthi $4
sh $4, 0($4)
xor $3, $4, $4
mtlo $4
TAG199:
beq $3, $3, TAG200
lui $1, 9
mfhi $1
mflo $3
TAG200:
mult $3, $3
lbu $4, 0($3)
bne $3, $3, TAG201
lhu $1, 0($4)
TAG201:
lui $4, 10
sll $0, $0, 0
beq $1, $1, TAG202
sltu $2, $4, $4
TAG202:
bltz $2, TAG203
sb $2, 0($2)
addi $3, $2, 14
blez $2, TAG203
TAG203:
sh $3, 0($3)
mtlo $3
multu $3, $3
sh $3, 0($3)
TAG204:
multu $3, $3
mthi $3
sh $3, 0($3)
bgtz $3, TAG205
TAG205:
divu $3, $3
mtlo $3
sltiu $4, $3, 15
lui $3, 11
TAG206:
mflo $1
sll $0, $0, 0
bltz $1, TAG207
sra $3, $3, 3
TAG207:
srlv $3, $3, $3
bne $3, $3, TAG208
sll $0, $0, 0
lui $3, 15
TAG208:
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG209
TAG209:
sltiu $1, $3, 2
ori $4, $1, 2
sllv $2, $1, $1
sll $0, $0, 0
TAG210:
lw $4, 0($1)
mthi $4
lh $1, 0($1)
mtlo $4
TAG211:
multu $1, $1
mflo $1
sw $1, 0($1)
and $2, $1, $1
TAG212:
mult $2, $2
addiu $2, $2, 3
mtlo $2
srl $3, $2, 12
TAG213:
mthi $3
blez $3, TAG214
multu $3, $3
mult $3, $3
TAG214:
mtlo $3
bgez $3, TAG215
mtlo $3
xor $2, $3, $3
TAG215:
sllv $4, $2, $2
ori $2, $2, 15
sllv $1, $2, $4
bltz $2, TAG216
TAG216:
divu $1, $1
mtlo $1
divu $1, $1
beq $1, $1, TAG217
TAG217:
lui $4, 2
mtlo $4
lui $4, 3
srav $2, $4, $4
TAG218:
div $2, $2
sll $0, $0, 0
mthi $3
bgez $2, TAG219
TAG219:
lui $2, 14
mtlo $3
bltz $3, TAG220
divu $2, $2
TAG220:
sll $0, $0, 0
mtlo $2
and $1, $2, $2
lui $3, 10
TAG221:
mfhi $4
sll $0, $0, 0
sll $1, $4, 0
sll $0, $0, 0
TAG222:
ori $1, $1, 0
addiu $4, $1, 1
lui $1, 5
lui $4, 8
TAG223:
divu $4, $4
multu $4, $4
mthi $4
mflo $4
TAG224:
bgtz $4, TAG225
xor $2, $4, $4
bne $4, $2, TAG225
mtlo $2
TAG225:
blez $2, TAG226
lh $1, 0($2)
beq $1, $1, TAG226
sra $4, $1, 14
TAG226:
beq $4, $4, TAG227
lh $1, 0($4)
mthi $4
div $1, $1
TAG227:
blez $1, TAG228
mult $1, $1
bne $1, $1, TAG228
addu $4, $1, $1
TAG228:
lbu $3, 0($4)
sub $4, $3, $3
sltiu $3, $4, 14
lb $1, 0($3)
TAG229:
bgtz $1, TAG230
slt $2, $1, $1
srav $1, $2, $1
beq $1, $1, TAG230
TAG230:
multu $1, $1
bne $1, $1, TAG231
mtlo $1
lh $4, 0($1)
TAG231:
srlv $4, $4, $4
addiu $3, $4, 11
srav $1, $4, $4
lh $3, 0($1)
TAG232:
lb $1, 0($3)
mtlo $3
lh $4, 0($1)
addi $3, $4, 1
TAG233:
addiu $1, $3, 2
or $1, $1, $3
sra $3, $3, 11
or $2, $1, $1
TAG234:
sb $2, 0($2)
beq $2, $2, TAG235
mfhi $4
mflo $2
TAG235:
slt $3, $2, $2
blez $3, TAG236
sb $3, 0($3)
mfhi $1
TAG236:
lb $4, 0($1)
mfhi $3
mthi $1
mtlo $3
TAG237:
sltiu $1, $3, 15
lbu $2, 0($1)
sb $2, 0($3)
addi $2, $2, 6
TAG238:
div $2, $2
sh $2, 0($2)
div $2, $2
mult $2, $2
TAG239:
mfhi $2
sw $2, 0($2)
or $3, $2, $2
mult $2, $3
TAG240:
addiu $2, $3, 11
divu $2, $2
srav $2, $3, $2
sll $3, $3, 8
TAG241:
lbu $4, 0($3)
sltiu $2, $4, 4
mtlo $4
sltiu $2, $4, 4
TAG242:
mfhi $4
lbu $3, 0($4)
lui $4, 10
sra $4, $4, 15
TAG243:
mthi $4
mtlo $4
lw $3, 0($4)
mflo $2
TAG244:
bne $2, $2, TAG245
lh $2, 0($2)
sh $2, 0($2)
mtlo $2
TAG245:
ori $4, $2, 9
lui $2, 15
subu $1, $2, $2
sll $0, $0, 0
TAG246:
multu $1, $1
beq $1, $1, TAG247
mtlo $1
addi $2, $1, 5
TAG247:
beq $2, $2, TAG248
sllv $2, $2, $2
blez $2, TAG248
lui $2, 2
TAG248:
lui $3, 2
blez $2, TAG249
sllv $3, $3, $3
lui $1, 11
TAG249:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
sllv $1, $1, $1
TAG250:
sll $0, $0, 0
bne $1, $1, TAG251
sll $0, $0, 0
bne $1, $1, TAG251
TAG251:
addiu $2, $1, 5
mfhi $1
bne $1, $2, TAG252
lbu $3, 0($1)
TAG252:
bgtz $3, TAG253
and $3, $3, $3
multu $3, $3
mult $3, $3
TAG253:
sb $3, 0($3)
sb $3, 0($3)
bne $3, $3, TAG254
sb $3, 0($3)
TAG254:
mult $3, $3
srl $4, $3, 5
beq $3, $4, TAG255
mtlo $4
TAG255:
bgez $4, TAG256
lui $4, 14
bltz $4, TAG256
div $4, $4
TAG256:
mthi $4
lui $1, 3
lui $3, 0
mflo $3
TAG257:
ori $3, $3, 13
bltz $3, TAG258
xori $1, $3, 1
sb $3, 0($3)
TAG258:
mtlo $1
lhu $4, 0($1)
sw $4, 0($1)
bne $1, $4, TAG259
TAG259:
mfhi $4
mtlo $4
sll $0, $0, 0
nor $3, $4, $4
TAG260:
mflo $1
mfhi $4
beq $1, $4, TAG261
lui $4, 14
TAG261:
beq $4, $4, TAG262
sra $2, $4, 1
addi $2, $2, 13
divu $2, $2
TAG262:
and $1, $2, $2
lui $3, 8
mult $2, $3
sll $0, $0, 0
TAG263:
mult $2, $2
lui $3, 3
subu $2, $3, $2
sltiu $3, $2, 12
TAG264:
mfhi $4
bne $3, $4, TAG265
divu $4, $4
mult $4, $4
TAG265:
lbu $2, 0($4)
mflo $1
bgtz $2, TAG266
mult $1, $2
TAG266:
sb $1, 0($1)
bne $1, $1, TAG267
sltiu $3, $1, 11
bgez $3, TAG267
TAG267:
multu $3, $3
nor $1, $3, $3
mfhi $3
divu $1, $1
TAG268:
sh $3, 0($3)
add $1, $3, $3
ori $2, $3, 11
xori $3, $1, 14
TAG269:
lui $4, 12
srl $2, $4, 1
sll $0, $0, 0
lui $2, 4
TAG270:
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG271
mthi $1
TAG271:
bgtz $1, TAG272
lui $3, 9
bne $3, $1, TAG272
srlv $3, $3, $1
TAG272:
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG273
mfhi $2
TAG273:
mflo $4
lh $3, 0($2)
nor $1, $4, $3
lb $4, 0($4)
TAG274:
lbu $2, 0($4)
blez $4, TAG275
sw $2, 0($2)
mult $4, $2
TAG275:
mult $2, $2
sub $4, $2, $2
lhu $1, 0($2)
lh $2, 0($4)
TAG276:
bgtz $2, TAG277
addu $2, $2, $2
bgez $2, TAG277
srav $4, $2, $2
TAG277:
mult $4, $4
mult $4, $4
lw $2, 0($4)
subu $1, $4, $4
TAG278:
lui $3, 8
mtlo $1
bgtz $3, TAG279
sh $1, 0($1)
TAG279:
mtlo $3
addiu $2, $3, 7
bne $3, $2, TAG280
lui $1, 15
TAG280:
mfhi $3
nor $1, $1, $3
multu $1, $1
mtlo $1
TAG281:
mtlo $1
beq $1, $1, TAG282
mthi $1
bgez $1, TAG282
TAG282:
lui $2, 14
sll $0, $0, 0
bltz $2, TAG283
mult $2, $2
TAG283:
bne $2, $2, TAG284
mfhi $1
sra $2, $2, 3
sll $0, $0, 0
TAG284:
slti $4, $4, 10
blez $4, TAG285
lui $1, 1
lui $4, 10
TAG285:
mtlo $4
sll $0, $0, 0
sllv $4, $4, $3
sll $0, $0, 0
TAG286:
addiu $4, $4, 12
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG287:
lui $1, 13
beq $1, $1, TAG288
sll $0, $0, 0
mflo $4
TAG288:
sll $0, $0, 0
mfhi $3
mtlo $4
bne $4, $3, TAG289
TAG289:
sh $3, -196($3)
div $3, $3
lhu $1, -196($3)
mflo $2
TAG290:
sb $2, 0($2)
sb $2, 0($2)
div $2, $2
sb $2, 0($2)
TAG291:
beq $2, $2, TAG292
sb $2, 0($2)
addi $2, $2, 7
mtlo $2
TAG292:
beq $2, $2, TAG293
lui $3, 13
lw $4, 0($2)
lbu $2, 0($4)
TAG293:
mthi $2
mthi $2
lui $1, 0
multu $2, $1
TAG294:
nor $2, $1, $1
sb $2, 0($1)
mthi $2
multu $2, $2
TAG295:
sll $0, $0, 0
beq $3, $2, TAG296
lui $4, 9
beq $3, $4, TAG296
TAG296:
lui $2, 11
mtlo $2
mtlo $4
sll $3, $4, 1
TAG297:
beq $3, $3, TAG298
mult $3, $3
blez $3, TAG298
mflo $1
TAG298:
xor $3, $1, $1
beq $3, $3, TAG299
sra $2, $3, 4
slt $1, $2, $3
TAG299:
lui $2, 1
lui $2, 12
sw $2, 0($1)
sra $1, $2, 3
TAG300:
beq $1, $1, TAG301
lui $4, 4
ori $3, $4, 1
multu $1, $4
TAG301:
mflo $2
mtlo $2
slt $3, $3, $3
bne $3, $2, TAG302
TAG302:
mflo $3
nor $2, $3, $3
xor $2, $3, $2
lui $2, 7
TAG303:
xori $3, $2, 1
subu $4, $3, $2
or $1, $3, $2
bltz $4, TAG304
TAG304:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
mthi $1
TAG305:
addiu $4, $1, 9
divu $4, $1
mtlo $1
lui $2, 12
TAG306:
bne $2, $2, TAG307
multu $2, $2
bgtz $2, TAG307
addu $4, $2, $2
TAG307:
bgez $4, TAG308
mthi $4
divu $4, $4
beq $4, $4, TAG308
TAG308:
sll $0, $0, 0
blez $4, TAG309
sll $0, $0, 0
sll $0, $0, 0
TAG309:
lui $1, 4
multu $1, $1
subu $3, $1, $1
mtlo $1
TAG310:
sh $3, 0($3)
sra $4, $3, 4
xori $2, $3, 9
sllv $4, $4, $4
TAG311:
beq $4, $4, TAG312
sw $4, 0($4)
add $1, $4, $4
lb $4, 0($4)
TAG312:
mtlo $4
and $3, $4, $4
lb $3, 0($4)
mult $4, $4
TAG313:
mfhi $4
xor $3, $3, $4
beq $3, $4, TAG314
slt $3, $3, $3
TAG314:
sub $3, $3, $3
lui $1, 7
mtlo $3
mthi $3
TAG315:
bgez $1, TAG316
mthi $1
multu $1, $1
beq $1, $1, TAG316
TAG316:
lui $4, 1
mflo $3
lh $1, 0($3)
and $2, $4, $3
TAG317:
xor $4, $2, $2
blez $4, TAG318
mtlo $2
bgez $4, TAG318
TAG318:
sllv $1, $4, $4
srl $3, $1, 12
lui $1, 8
mthi $1
TAG319:
sll $0, $0, 0
bgtz $1, TAG320
mult $1, $2
srl $4, $1, 13
TAG320:
slt $1, $4, $4
multu $4, $1
bgez $1, TAG321
sb $4, 0($1)
TAG321:
mflo $1
sb $1, 0($1)
nor $2, $1, $1
lhu $1, 0($1)
TAG322:
sh $1, 0($1)
lui $1, 0
nor $4, $1, $1
sh $4, 1($4)
TAG323:
sll $0, $0, 0
srl $3, $4, 13
sll $4, $3, 13
blez $3, TAG324
TAG324:
mtlo $4
lbu $3, 8192($4)
mtlo $3
bne $4, $3, TAG325
TAG325:
sll $0, $0, 0
slti $1, $1, 1
lb $2, -255($3)
xor $1, $3, $1
TAG326:
sll $0, $0, 0
bltz $1, TAG327
lui $2, 5
divu $1, $1
TAG327:
multu $2, $2
bne $2, $2, TAG328
sll $0, $0, 0
sll $0, $0, 0
TAG328:
sh $3, -255($3)
sltu $3, $3, $3
blez $3, TAG329
sltiu $4, $3, 9
TAG329:
bgtz $4, TAG330
xori $4, $4, 10
bgtz $4, TAG330
lui $4, 7
TAG330:
srlv $1, $4, $4
lui $2, 5
lui $3, 9
sh $2, 0($1)
TAG331:
or $2, $3, $3
mult $3, $2
bgez $3, TAG332
sll $0, $0, 0
TAG332:
mtlo $4
sb $4, 0($4)
addu $2, $4, $4
mflo $3
TAG333:
bne $3, $3, TAG334
addu $2, $3, $3
lui $4, 0
lb $4, 0($3)
TAG334:
mthi $4
bgtz $4, TAG335
lb $4, 0($4)
lhu $1, 0($4)
TAG335:
sub $4, $1, $1
sll $3, $4, 6
mthi $4
lb $4, 0($3)
TAG336:
beq $4, $4, TAG337
mflo $1
bne $1, $4, TAG337
lui $3, 11
TAG337:
lui $2, 15
lhu $1, 0($3)
slt $3, $2, $3
blez $2, TAG338
TAG338:
lh $3, 0($3)
blez $3, TAG339
multu $3, $3
beq $3, $3, TAG339
TAG339:
lbu $3, 0($3)
lh $2, 0($3)
addu $3, $3, $3
mtlo $2
TAG340:
mult $3, $3
lbu $4, 0($3)
sb $3, 0($4)
lui $2, 5
TAG341:
mult $2, $2
subu $1, $2, $2
xori $4, $2, 4
mflo $2
TAG342:
mtlo $2
addiu $4, $2, 7
div $2, $4
sb $4, 0($2)
TAG343:
sltiu $4, $4, 9
sb $4, 0($4)
lui $3, 10
sb $4, 0($4)
TAG344:
mfhi $2
mflo $3
sub $4, $2, $3
bne $4, $3, TAG345
TAG345:
lw $3, 0($4)
mflo $2
mult $2, $2
lh $2, 0($2)
TAG346:
slt $1, $2, $2
lui $2, 8
srav $2, $2, $1
lui $4, 15
TAG347:
multu $4, $4
xor $3, $4, $4
mtlo $3
mtlo $4
TAG348:
mthi $3
bne $3, $3, TAG349
nor $4, $3, $3
xori $1, $3, 9
TAG349:
sb $1, 0($1)
blez $1, TAG350
lui $3, 11
addiu $1, $1, 7
TAG350:
blez $1, TAG351
lui $3, 13
lw $1, 0($1)
beq $1, $3, TAG351
TAG351:
lhu $3, 0($1)
sb $1, 0($3)
lh $2, 0($1)
mflo $1
TAG352:
mthi $1
bgtz $1, TAG353
multu $1, $1
addi $1, $1, 2
TAG353:
sll $0, $0, 0
xori $3, $1, 9
srlv $1, $1, $3
mflo $4
TAG354:
lb $3, 0($4)
sub $1, $4, $4
mtlo $1
lw $4, 0($1)
TAG355:
xori $2, $4, 5
mfhi $2
mult $4, $2
bgtz $2, TAG356
TAG356:
sltu $1, $2, $2
andi $3, $1, 1
mfhi $4
sub $4, $3, $3
TAG357:
sb $4, 0($4)
mtlo $4
mtlo $4
blez $4, TAG358
TAG358:
mtlo $4
lui $4, 7
blez $4, TAG359
mfhi $1
TAG359:
mflo $3
mtlo $3
slti $4, $3, 1
sb $3, 0($4)
TAG360:
bne $4, $4, TAG361
lui $4, 5
slt $4, $4, $4
and $3, $4, $4
TAG361:
or $3, $3, $3
sltu $1, $3, $3
blez $1, TAG362
mthi $3
TAG362:
srl $4, $1, 11
mthi $4
or $1, $4, $1
srl $1, $1, 8
TAG363:
lui $2, 12
addi $4, $1, 0
bne $4, $2, TAG364
addi $1, $4, 2
TAG364:
lui $1, 6
sll $0, $0, 0
mfhi $2
bltz $1, TAG365
TAG365:
sltiu $3, $2, 13
divu $2, $3
bltz $3, TAG366
sra $3, $2, 15
TAG366:
sb $3, 0($3)
mthi $3
lui $3, 1
sll $0, $0, 0
TAG367:
beq $1, $1, TAG368
lui $4, 11
beq $4, $1, TAG368
mtlo $1
TAG368:
sll $0, $0, 0
lw $1, 0($2)
ori $4, $2, 5
bltz $4, TAG369
TAG369:
nor $3, $4, $4
lb $3, 6($3)
bgez $4, TAG370
mfhi $3
TAG370:
andi $3, $3, 6
mtlo $3
mult $3, $3
beq $3, $3, TAG371
TAG371:
lbu $4, 0($3)
lui $3, 5
mult $4, $4
blez $3, TAG372
TAG372:
mult $3, $3
beq $3, $3, TAG373
sll $0, $0, 0
mult $3, $3
TAG373:
beq $3, $3, TAG374
sll $0, $0, 0
lbu $3, 0($3)
beq $3, $3, TAG374
TAG374:
mfhi $2
bne $2, $2, TAG375
lui $1, 5
sll $0, $0, 0
TAG375:
sll $0, $0, 0
divu $1, $1
mthi $1
beq $1, $1, TAG376
TAG376:
or $2, $1, $1
sll $0, $0, 0
srav $2, $1, $2
lui $1, 13
TAG377:
mtlo $1
mtlo $1
mflo $2
mflo $4
TAG378:
bgez $4, TAG379
lui $4, 1
lh $4, 0($4)
mfhi $1
TAG379:
subu $2, $1, $1
bne $1, $2, TAG380
sll $0, $0, 0
mthi $1
TAG380:
lw $4, 0($2)
bgtz $2, TAG381
sb $2, 0($4)
blez $2, TAG381
TAG381:
lui $4, 5
addu $1, $4, $4
beq $1, $4, TAG382
mthi $1
TAG382:
multu $1, $1
beq $1, $1, TAG383
addiu $4, $1, 3
sw $4, 0($4)
TAG383:
mflo $1
bne $1, $4, TAG384
mult $1, $1
lw $3, 0($4)
TAG384:
mflo $4
bgez $3, TAG385
lw $4, 0($4)
lui $2, 4
TAG385:
bgez $2, TAG386
addi $1, $2, 1
mtlo $2
mflo $3
TAG386:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
sllv $3, $3, $3
TAG387:
mfhi $2
mult $3, $3
multu $3, $2
beq $3, $3, TAG388
TAG388:
addiu $2, $2, 9
blez $2, TAG389
sh $2, 0($2)
lhu $1, 0($2)
TAG389:
mtlo $1
bltz $1, TAG390
lui $1, 10
mthi $1
TAG390:
sll $0, $0, 0
lui $1, 13
mflo $2
lui $4, 5
TAG391:
bne $4, $4, TAG392
lui $3, 5
sll $0, $0, 0
mfhi $2
TAG392:
lui $3, 0
bgtz $2, TAG393
lui $4, 9
sw $4, 0($3)
TAG393:
sll $0, $0, 0
sra $4, $4, 13
sw $4, 0($4)
lw $4, 0($4)
TAG394:
mflo $1
bgez $1, TAG395
addu $3, $1, $4
lui $1, 2
TAG395:
mtlo $1
ori $3, $1, 4
sra $4, $1, 6
sh $1, 0($1)
TAG396:
addu $3, $4, $4
sw $3, 0($4)
bgtz $3, TAG397
mflo $1
TAG397:
lui $1, 10
mthi $1
mthi $1
sll $0, $0, 0
TAG398:
andi $4, $2, 15
srl $1, $4, 3
lui $4, 6
xor $2, $2, $4
TAG399:
sllv $4, $2, $2
sll $0, $0, 0
bgtz $2, TAG400
lui $4, 4
TAG400:
mthi $4
sll $0, $0, 0
slt $2, $1, $1
lhu $2, 0($2)
TAG401:
bltz $2, TAG402
mflo $3
mfhi $1
srl $4, $3, 0
TAG402:
lui $4, 4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG403:
addu $2, $1, $1
mthi $1
divu $2, $1
sll $0, $0, 0
TAG404:
sll $0, $0, 0
bne $2, $2, TAG405
sll $0, $0, 0
sll $0, $0, 0
TAG405:
bgez $3, TAG406
multu $3, $3
sh $3, 0($3)
sllv $2, $3, $3
TAG406:
sra $2, $2, 10
bne $2, $2, TAG407
mtlo $2
nor $4, $2, $2
TAG407:
blez $4, TAG408
lbu $1, 513($4)
beq $4, $1, TAG408
addiu $2, $1, 9
TAG408:
mfhi $3
lui $2, 12
bltz $2, TAG409
divu $2, $2
TAG409:
bne $2, $2, TAG410
mtlo $2
sll $0, $0, 0
mfhi $1
TAG410:
ori $4, $1, 1
beq $4, $1, TAG411
srav $2, $1, $1
andi $4, $2, 14
TAG411:
lb $2, 0($4)
bgez $4, TAG412
mthi $2
mfhi $4
TAG412:
add $3, $4, $4
lh $2, 0($3)
sw $2, 0($4)
mthi $4
TAG413:
lhu $1, 0($2)
bgtz $1, TAG414
srl $1, $1, 5
sh $1, 0($1)
TAG414:
mflo $2
mflo $2
bgez $2, TAG415
addu $1, $2, $2
TAG415:
mthi $1
bne $1, $1, TAG416
sll $0, $0, 0
lui $4, 4
TAG416:
beq $4, $4, TAG417
lui $1, 5
lhu $3, 0($4)
lui $2, 12
TAG417:
lui $4, 13
divu $4, $2
slti $3, $2, 4
lui $1, 12
TAG418:
sll $0, $0, 0
bne $1, $1, TAG419
mtlo $1
mfhi $4
TAG419:
and $4, $4, $4
sll $0, $0, 0
lui $3, 4
beq $3, $3, TAG420
TAG420:
divu $3, $3
bne $3, $3, TAG421
sll $0, $0, 0
mthi $3
TAG421:
divu $3, $3
blez $3, TAG422
sll $0, $0, 0
mflo $4
TAG422:
lui $2, 10
and $1, $2, $4
mtlo $1
bne $2, $4, TAG423
TAG423:
and $1, $1, $1
mflo $4
bltz $1, TAG424
sra $1, $1, 8
TAG424:
lhu $4, 0($1)
lw $4, 0($1)
xori $1, $4, 1
divu $4, $1
TAG425:
bgez $1, TAG426
lb $2, 0($1)
mtlo $1
lui $4, 12
TAG426:
mthi $4
mflo $3
multu $3, $3
bgtz $3, TAG427
TAG427:
sltiu $4, $3, 7
ori $4, $3, 13
mflo $1
lbu $4, 0($4)
TAG428:
bltz $4, TAG429
mult $4, $4
bgez $4, TAG429
lui $3, 7
TAG429:
lui $2, 9
mfhi $4
bgez $2, TAG430
lui $2, 9
TAG430:
sltu $2, $2, $2
lui $3, 4
mtlo $2
mthi $2
TAG431:
mtlo $3
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG432:
lbu $4, 0($2)
lbu $3, 0($4)
lui $3, 14
lui $4, 8
TAG433:
mflo $4
sll $0, $0, 0
andi $3, $4, 10
mthi $4
TAG434:
mult $3, $3
or $2, $3, $3
lui $1, 11
lb $2, 0($2)
TAG435:
lui $3, 3
mfhi $2
mthi $2
lui $1, 12
TAG436:
bltz $1, TAG437
sll $0, $0, 0
bgtz $4, TAG437
sll $0, $0, 0
TAG437:
mfhi $1
sb $4, 0($1)
sltu $2, $1, $1
lb $3, 0($2)
TAG438:
sb $3, 0($3)
multu $3, $3
lbu $1, 0($3)
lb $3, 0($3)
TAG439:
mtlo $3
mthi $3
sw $3, 0($3)
mult $3, $3
TAG440:
slti $2, $3, 15
lhu $4, 0($3)
mfhi $2
lw $1, 0($2)
TAG441:
lui $2, 4
srlv $4, $2, $1
nor $1, $4, $4
sllv $4, $1, $1
TAG442:
and $3, $4, $4
srl $4, $3, 5
bltz $3, TAG443
sll $0, $0, 0
TAG443:
sll $0, $0, 0
div $1, $4
bne $4, $4, TAG444
mult $4, $4
TAG444:
bne $1, $1, TAG445
mfhi $1
sll $0, $0, 0
mthi $1
TAG445:
sll $0, $0, 0
bltz $2, TAG446
sll $0, $0, 0
bgtz $2, TAG446
TAG446:
mthi $2
lui $2, 0
mtlo $2
lw $2, 0($2)
TAG447:
bgtz $2, TAG448
add $3, $2, $2
sb $2, 0($2)
blez $2, TAG448
TAG448:
lui $3, 9
mult $3, $3
lui $1, 2
lui $4, 14
TAG449:
lui $2, 8
beq $4, $2, TAG450
div $2, $2
sll $0, $0, 0
TAG450:
subu $2, $2, $2
sw $2, 0($2)
multu $2, $2
mfhi $1
TAG451:
sb $1, 0($1)
xor $1, $1, $1
sh $1, 0($1)
srlv $2, $1, $1
TAG452:
lbu $1, 0($2)
subu $3, $1, $2
andi $1, $2, 6
mtlo $1
TAG453:
lui $4, 8
mtlo $4
mflo $4
lui $4, 8
TAG454:
mfhi $3
divu $3, $4
sll $0, $0, 0
lui $2, 9
TAG455:
mflo $3
addi $2, $3, 8
blez $2, TAG456
lui $2, 9
TAG456:
lui $4, 4
divu $4, $4
sll $0, $0, 0
addu $3, $4, $4
TAG457:
lui $2, 10
sll $0, $0, 0
slti $3, $3, 0
lw $1, 0($3)
TAG458:
sw $1, 0($1)
mthi $1
sub $3, $1, $1
beq $1, $3, TAG459
TAG459:
sw $3, 0($3)
bgtz $3, TAG460
mtlo $3
addi $3, $3, 9
TAG460:
ori $2, $3, 5
mflo $2
bltz $2, TAG461
mthi $2
TAG461:
bgez $2, TAG462
lb $3, 0($2)
and $3, $3, $2
or $2, $3, $3
TAG462:
lb $3, 0($2)
mthi $3
xori $3, $3, 0
mtlo $3
TAG463:
lbu $1, 0($3)
mflo $2
sltiu $3, $2, 3
slt $1, $3, $1
TAG464:
sltiu $3, $1, 8
sltiu $1, $3, 0
bgez $3, TAG465
multu $1, $1
TAG465:
nor $2, $1, $1
multu $1, $2
lbu $3, 0($1)
divu $1, $2
TAG466:
beq $3, $3, TAG467
sltiu $2, $3, 9
divu $2, $2
srlv $3, $3, $3
TAG467:
mtlo $3
lui $4, 11
sb $4, 0($3)
mflo $3
TAG468:
mthi $3
mfhi $2
mtlo $2
xor $2, $2, $2
TAG469:
mflo $4
mfhi $3
lw $1, 0($2)
mfhi $4
TAG470:
lui $2, 5
div $4, $2
mflo $1
bne $1, $2, TAG471
TAG471:
srlv $2, $1, $1
slt $4, $1, $2
mtlo $2
mtlo $4
TAG472:
lui $4, 2
divu $4, $4
sltiu $3, $4, 7
bne $4, $4, TAG473
TAG473:
lui $4, 0
sh $4, 0($4)
slt $4, $4, $3
lui $4, 9
TAG474:
lui $4, 0
multu $4, $4
mtlo $4
xori $1, $4, 1
TAG475:
div $1, $1
divu $1, $1
bltz $1, TAG476
multu $1, $1
TAG476:
beq $1, $1, TAG477
addiu $1, $1, 6
blez $1, TAG477
lui $4, 12
TAG477:
beq $4, $4, TAG478
mfhi $1
mthi $1
mtlo $1
TAG478:
mult $1, $1
bgtz $1, TAG479
lb $4, 0($1)
bne $1, $1, TAG479
TAG479:
mult $4, $4
slt $2, $4, $4
beq $2, $2, TAG480
ori $1, $4, 10
TAG480:
mthi $1
mtlo $1
mfhi $3
bltz $1, TAG481
TAG481:
lh $3, 0($3)
sll $1, $3, 2
lh $3, -2826($3)
mtlo $1
TAG482:
multu $3, $3
mtlo $3
sllv $4, $3, $3
bne $4, $3, TAG483
TAG483:
mult $4, $4
lui $4, 7
sll $0, $0, 0
lui $1, 6
TAG484:
lui $3, 10
bgtz $1, TAG485
mtlo $3
lw $1, 0($1)
TAG485:
mflo $4
sll $0, $0, 0
bne $1, $1, TAG486
sll $0, $0, 0
TAG486:
sll $0, $0, 0
bltz $4, TAG487
mtlo $4
slti $3, $4, 12
TAG487:
slt $1, $3, $3
slti $3, $1, 2
lbu $3, 0($3)
mthi $1
TAG488:
add $3, $3, $3
multu $3, $3
sw $3, 0($3)
mthi $3
TAG489:
bne $3, $3, TAG490
sltiu $1, $3, 4
lui $1, 14
bltz $1, TAG490
TAG490:
mflo $3
lui $3, 2
bltz $3, TAG491
and $1, $1, $3
TAG491:
mfhi $4
lui $4, 14
sra $1, $4, 2
lui $4, 14
TAG492:
bltz $4, TAG493
srav $4, $4, $4
and $1, $4, $4
beq $4, $4, TAG493
TAG493:
sll $0, $0, 0
subu $1, $1, $1
lui $3, 5
mfhi $1
TAG494:
blez $1, TAG495
sb $1, 0($1)
lh $4, 0($1)
add $4, $1, $4
TAG495:
mthi $4
bne $4, $4, TAG496
lui $2, 14
mult $4, $2
TAG496:
sllv $1, $2, $2
mthi $1
srlv $3, $1, $2
bne $1, $3, TAG497
TAG497:
sll $0, $0, 0
divu $2, $2
lui $1, 12
ori $1, $1, 9
TAG498:
bne $1, $1, TAG499
mflo $1
mflo $2
addu $4, $1, $2
TAG499:
sh $4, 0($4)
or $2, $4, $4
lbu $4, 0($2)
xor $4, $4, $4
TAG500:
lui $1, 8
bne $1, $1, TAG501
sllv $3, $1, $4
sll $0, $0, 0
TAG501:
bne $2, $2, TAG502
xori $1, $2, 15
lb $4, 0($2)
div $1, $1
TAG502:
lui $4, 11
bltz $4, TAG503
subu $1, $4, $4
mfhi $2
TAG503:
lb $3, 0($2)
addiu $4, $2, 2
subu $2, $3, $2
mthi $2
TAG504:
sllv $4, $2, $2
mtlo $2
multu $4, $4
lui $2, 0
TAG505:
sb $2, 0($2)
lb $3, 0($2)
mthi $2
blez $2, TAG506
TAG506:
mtlo $3
lui $3, 12
bltz $3, TAG507
addiu $3, $3, 5
TAG507:
sll $0, $0, 0
mflo $3
mtlo $3
lb $3, 0($3)
TAG508:
lui $1, 14
sll $0, $0, 0
add $4, $3, $2
bne $4, $1, TAG509
TAG509:
srl $4, $4, 5
mthi $4
srl $1, $4, 1
lhu $4, 0($4)
TAG510:
sb $4, 0($4)
lui $2, 7
mflo $1
mflo $3
TAG511:
addiu $4, $3, 12
slti $2, $4, 7
lhu $3, 0($4)
slt $4, $4, $2
TAG512:
mult $4, $4
mfhi $3
sb $3, 0($4)
mtlo $3
TAG513:
lui $2, 0
multu $2, $2
mult $3, $2
slti $4, $3, 7
TAG514:
divu $4, $4
sb $4, 0($4)
blez $4, TAG515
or $3, $4, $4
TAG515:
sb $3, 0($3)
bne $3, $3, TAG516
srl $1, $3, 8
addu $2, $1, $3
TAG516:
mthi $2
bltz $2, TAG517
sb $2, 0($2)
bgez $2, TAG517
TAG517:
mfhi $3
mfhi $1
andi $4, $1, 13
ori $1, $1, 11
TAG518:
lui $3, 14
mthi $3
mfhi $3
sll $0, $0, 0
TAG519:
lui $1, 10
mthi $1
sltiu $2, $1, 0
mflo $2
TAG520:
beq $2, $2, TAG521
mflo $3
mult $2, $3
lhu $2, 0($3)
TAG521:
sb $2, 0($2)
addiu $3, $2, 0
srav $2, $3, $2
mflo $1
TAG522:
divu $1, $1
beq $1, $1, TAG523
lui $4, 12
srl $3, $1, 14
TAG523:
beq $3, $3, TAG524
mtlo $3
lui $1, 4
lui $4, 12
TAG524:
addiu $3, $4, 5
sll $0, $0, 0
bltz $3, TAG525
multu $4, $3
TAG525:
sll $0, $0, 0
lui $4, 14
addu $2, $4, $4
sltiu $3, $4, 5
TAG526:
multu $3, $3
lui $1, 15
blez $1, TAG527
multu $3, $1
TAG527:
mflo $3
div $3, $1
mflo $2
mfhi $4
TAG528:
mthi $4
lui $4, 15
lui $4, 0
lui $2, 11
TAG529:
nor $1, $2, $2
sll $0, $0, 0
bgtz $1, TAG530
ori $4, $1, 4
TAG530:
sll $0, $0, 0
mthi $3
mtlo $3
mfhi $4
TAG531:
sh $4, 0($4)
beq $4, $4, TAG532
lui $1, 9
or $4, $4, $4
TAG532:
blez $4, TAG533
mtlo $4
bgtz $4, TAG533
or $4, $4, $4
TAG533:
sra $3, $4, 3
lui $3, 4
addiu $3, $3, 13
beq $3, $3, TAG534
TAG534:
div $3, $3
sra $2, $3, 12
subu $1, $3, $2
bgez $2, TAG535
TAG535:
mfhi $3
beq $3, $1, TAG536
slt $1, $3, $3
sw $3, 0($1)
TAG536:
ori $1, $1, 2
bgez $1, TAG537
sh $1, 0($1)
bne $1, $1, TAG537
TAG537:
lui $4, 9
lui $2, 1
srlv $1, $4, $1
lui $3, 4
TAG538:
lui $2, 14
bne $3, $3, TAG539
mflo $2
mfhi $2
TAG539:
lui $4, 9
lui $2, 12
mthi $2
sll $4, $2, 7
TAG540:
bltz $4, TAG541
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG541:
xor $1, $4, $4
lui $3, 12
bgtz $4, TAG542
lh $2, 0($1)
TAG542:
sh $2, 0($2)
lhu $3, 0($2)
slt $4, $2, $2
bne $3, $4, TAG543
TAG543:
lw $1, 0($4)
lh $4, 0($4)
sll $4, $4, 12
sub $2, $1, $4
TAG544:
sll $0, $0, 0
slt $1, $4, $4
bgtz $4, TAG545
sll $0, $0, 0
TAG545:
lui $4, 10
sll $0, $0, 0
bltz $3, TAG546
sll $4, $3, 0
TAG546:
multu $4, $4
bne $4, $4, TAG547
xori $1, $4, 10
sh $4, 0($4)
TAG547:
sh $1, 0($1)
lui $3, 6
beq $1, $1, TAG548
and $3, $1, $1
TAG548:
mfhi $4
sb $3, 0($4)
sb $3, 0($4)
mthi $4
TAG549:
slt $1, $4, $4
sllv $2, $1, $1
mthi $2
srav $4, $4, $1
TAG550:
sh $4, 0($4)
sb $4, 0($4)
beq $4, $4, TAG551
mflo $4
TAG551:
sll $1, $4, 2
mflo $3
sub $1, $4, $3
slt $1, $4, $1
TAG552:
mflo $4
sw $4, 0($4)
sra $4, $1, 11
mthi $4
TAG553:
sub $1, $4, $4
mfhi $3
lhu $3, 0($1)
lhu $3, 0($4)
TAG554:
slt $2, $3, $3
bne $2, $2, TAG555
sw $2, 0($3)
lb $2, 0($2)
TAG555:
multu $2, $2
and $3, $2, $2
srlv $4, $3, $3
mthi $4
TAG556:
addi $1, $4, 7
divu $4, $1
mfhi $3
lb $4, 0($1)
TAG557:
lbu $1, 0($4)
lhu $3, 0($4)
lui $2, 8
beq $1, $3, TAG558
TAG558:
slti $2, $2, 0
blez $2, TAG559
lui $4, 15
beq $4, $2, TAG559
TAG559:
andi $2, $4, 5
mflo $2
bltz $4, TAG560
sw $2, 0($2)
TAG560:
lb $3, 0($2)
addi $4, $3, 0
lhu $1, 0($3)
multu $4, $2
TAG561:
lui $4, 11
sw $4, 0($1)
sll $0, $0, 0
mthi $1
TAG562:
addu $2, $4, $4
slti $3, $4, 11
bgez $4, TAG563
mthi $3
TAG563:
nor $3, $3, $3
bltz $3, TAG564
sb $3, 1($3)
div $3, $3
TAG564:
sll $0, $0, 0
mflo $3
sb $3, 0($3)
bgtz $3, TAG565
TAG565:
sh $3, 0($3)
bne $3, $3, TAG566
lui $3, 15
mtlo $3
TAG566:
lui $2, 0
beq $3, $2, TAG567
mflo $2
slti $2, $3, 13
TAG567:
lui $2, 2
beq $2, $2, TAG568
lui $3, 6
sw $2, 0($3)
TAG568:
beq $3, $3, TAG569
div $3, $3
lui $4, 3
sh $3, 0($4)
TAG569:
div $4, $4
mfhi $2
blez $4, TAG570
div $2, $4
TAG570:
and $4, $2, $2
blez $2, TAG571
mthi $4
mflo $4
TAG571:
mflo $1
xori $3, $4, 9
mflo $2
lui $3, 9
TAG572:
bgez $3, TAG573
mflo $4
nor $3, $4, $4
slti $3, $3, 3
TAG573:
mfhi $1
sll $4, $3, 1
sb $4, 0($1)
sll $0, $0, 0
TAG574:
sll $0, $0, 0
bne $4, $4, TAG575
sll $0, $0, 0
mfhi $2
TAG575:
beq $2, $2, TAG576
slt $2, $2, $2
blez $2, TAG576
mtlo $2
TAG576:
beq $2, $2, TAG577
mtlo $2
mult $2, $2
lui $4, 9
TAG577:
sll $0, $0, 0
bltz $4, TAG578
sll $0, $0, 0
divu $4, $4
TAG578:
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
lb $1, 0($1)
TAG579:
mfhi $1
sh $1, 0($1)
lui $2, 12
bne $1, $1, TAG580
TAG580:
mfhi $4
lb $4, 0($4)
lb $1, 0($4)
multu $1, $1
TAG581:
bgtz $1, TAG582
mfhi $2
beq $2, $1, TAG582
mthi $2
TAG582:
mtlo $2
beq $2, $2, TAG583
srl $1, $2, 7
divu $2, $2
TAG583:
lhu $1, 0($1)
lui $2, 1
multu $1, $1
mtlo $1
TAG584:
sll $0, $0, 0
nor $4, $2, $2
mfhi $3
lb $4, 0($3)
TAG585:
sllv $4, $4, $4
slti $3, $4, 4
beq $4, $4, TAG586
add $4, $4, $4
TAG586:
sw $4, 0($4)
mthi $4
bltz $4, TAG587
lhu $1, 0($4)
TAG587:
lui $3, 4
sh $1, 0($1)
lhu $3, 0($1)
srlv $3, $3, $1
TAG588:
and $3, $3, $3
bltz $3, TAG589
sh $3, 0($3)
mtlo $3
TAG589:
sll $1, $3, 9
mfhi $2
sw $2, 0($3)
mfhi $2
TAG590:
lhu $4, 0($2)
bltz $2, TAG591
slt $2, $4, $2
beq $4, $4, TAG591
TAG591:
lw $1, 0($2)
sub $3, $1, $1
andi $4, $2, 12
mfhi $4
TAG592:
mflo $3
bltz $3, TAG593
mtlo $4
subu $3, $4, $3
TAG593:
sra $1, $3, 13
lbu $3, 0($3)
lui $1, 4
mult $3, $3
TAG594:
bne $1, $1, TAG595
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG595:
bne $2, $2, TAG596
mtlo $2
add $3, $2, $2
mtlo $2
TAG596:
sh $3, 0($3)
bltz $3, TAG597
sb $3, 0($3)
mtlo $3
TAG597:
ori $2, $3, 10
lh $1, 0($2)
sra $2, $1, 9
bne $3, $1, TAG598
TAG598:
slti $2, $2, 5
lui $1, 5
srlv $3, $1, $2
bne $2, $3, TAG599
TAG599:
andi $2, $3, 5
sh $2, 0($2)
addu $3, $3, $2
sll $4, $3, 12
TAG600:
bgtz $4, TAG601
mtlo $4
mthi $4
lbu $4, 0($4)
TAG601:
bltz $4, TAG602
lui $2, 0
mfhi $1
multu $1, $2
TAG602:
ori $4, $1, 1
lbu $2, 0($4)
lw $1, 0($2)
mult $1, $1
TAG603:
sltiu $2, $1, 10
lbu $4, 0($2)
lui $4, 4
sll $0, $0, 0
TAG604:
lbu $1, 0($2)
sb $2, 0($2)
bgtz $2, TAG605
mflo $3
TAG605:
bne $3, $3, TAG606
mult $3, $3
bgez $3, TAG606
xori $2, $3, 6
TAG606:
div $2, $2
mflo $2
lbu $2, 0($2)
lui $3, 4
TAG607:
beq $3, $3, TAG608
sll $0, $0, 0
mthi $1
mthi $1
TAG608:
lui $4, 2
mfhi $2
lui $3, 5
sw $4, 0($2)
TAG609:
mthi $3
lui $1, 14
lui $3, 7
mthi $3
TAG610:
lui $4, 4
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
TAG611:
mfhi $2
bne $4, $2, TAG612
mthi $4
mtlo $2
TAG612:
sltiu $3, $2, 12
srav $2, $3, $3
sb $2, 0($3)
lui $3, 8
TAG613:
addu $4, $3, $3
blez $3, TAG614
sltu $4, $3, $4
sb $3, 0($4)
TAG614:
lui $1, 8
blez $4, TAG615
multu $1, $1
sll $0, $0, 0
TAG615:
sll $2, $2, 5
mthi $2
mtlo $2
mthi $2
TAG616:
lhu $2, 0($2)
mflo $1
mthi $2
sb $2, 0($1)
TAG617:
lui $2, 6
lui $4, 15
blez $2, TAG618
mflo $3
TAG618:
mfhi $1
lui $3, 9
mthi $3
mfhi $4
TAG619:
lui $3, 3
div $4, $3
sll $0, $0, 0
srlv $1, $4, $3
TAG620:
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG621
sll $0, $0, 0
TAG621:
mflo $3
mfhi $3
bgez $3, TAG622
addiu $3, $1, 15
TAG622:
mult $3, $3
mtlo $3
andi $2, $3, 8
mtlo $3
TAG623:
sll $2, $2, 10
sra $1, $2, 11
mtlo $2
lui $1, 8
TAG624:
srav $3, $1, $1
lui $4, 5
slt $3, $4, $1
bne $4, $1, TAG625
TAG625:
divu $3, $3
mfhi $3
lui $1, 14
lbu $2, 0($3)
TAG626:
multu $2, $2
mflo $3
bgtz $3, TAG627
multu $2, $3
TAG627:
sll $3, $3, 6
ori $4, $3, 11
blez $4, TAG628
mult $3, $3
TAG628:
lb $2, 0($4)
mult $4, $2
mflo $2
bne $2, $2, TAG629
TAG629:
multu $2, $2
lw $2, 0($2)
sll $0, $0, 0
mthi $2
TAG630:
slti $2, $1, 11
blez $2, TAG631
lui $2, 13
lw $1, 0($1)
TAG631:
mflo $2
multu $1, $1
mflo $2
addi $2, $2, 4
TAG632:
sw $2, 0($2)
mtlo $2
blez $2, TAG633
srlv $4, $2, $2
TAG633:
mflo $1
lui $2, 10
beq $4, $1, TAG634
lb $3, 0($1)
TAG634:
or $1, $3, $3
lhu $4, 0($3)
sh $1, 0($1)
beq $1, $4, TAG635
TAG635:
div $4, $4
sb $4, 0($4)
lb $4, 0($4)
mult $4, $4
TAG636:
mtlo $4
subu $1, $4, $4
lw $4, 0($4)
beq $4, $1, TAG637
TAG637:
sh $4, 0($4)
addiu $4, $4, 2
bgez $4, TAG638
lh $3, 0($4)
TAG638:
mfhi $2
sb $3, 0($2)
lui $4, 6
mthi $3
TAG639:
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
bgez $4, TAG640
TAG640:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG641:
addu $2, $3, $3
lui $1, 1
mflo $1
bltz $3, TAG642
TAG642:
multu $1, $1
mtlo $1
sll $0, $0, 0
mthi $1
TAG643:
sll $0, $0, 0
lui $3, 2
sll $0, $0, 0
mfhi $2
TAG644:
nor $1, $2, $2
beq $1, $2, TAG645
multu $2, $1
sll $0, $0, 0
TAG645:
mthi $1
sll $0, $0, 0
div $1, $1
divu $1, $1
TAG646:
mthi $1
lui $4, 1
div $1, $4
mflo $3
TAG647:
ori $4, $3, 14
multu $3, $4
div $3, $3
lui $3, 10
TAG648:
bgez $3, TAG649
div $3, $3
srav $2, $3, $3
mflo $3
TAG649:
srav $1, $3, $3
sll $0, $0, 0
mtlo $1
slt $3, $1, $1
TAG650:
nor $3, $3, $3
xor $2, $3, $3
lui $2, 0
mfhi $2
TAG651:
mfhi $4
sh $2, 0($4)
sh $2, 0($2)
xor $4, $4, $4
TAG652:
sw $4, 0($4)
blez $4, TAG653
sh $4, 0($4)
bne $4, $4, TAG653
TAG653:
sll $1, $4, 7
sltu $3, $1, $4
bne $1, $4, TAG654
mflo $4
TAG654:
sll $0, $0, 0
mult $4, $4
divu $4, $4
bgez $4, TAG655
TAG655:
lui $4, 1
multu $4, $4
beq $4, $4, TAG656
sra $2, $4, 2
TAG656:
bne $2, $2, TAG657
sh $2, -16384($2)
sh $2, -16384($2)
srav $4, $2, $2
TAG657:
mfhi $1
lui $1, 9
subu $2, $1, $4
beq $2, $2, TAG658
TAG658:
mfhi $4
sltiu $3, $2, 1
mflo $4
mfhi $4
TAG659:
lui $1, 10
lbu $4, 0($4)
lb $1, 0($4)
beq $1, $4, TAG660
TAG660:
lui $2, 7
sll $0, $0, 0
lbu $1, 0($1)
and $1, $1, $2
TAG661:
srlv $2, $1, $1
lui $2, 11
multu $1, $2
beq $1, $2, TAG662
TAG662:
sll $0, $0, 0
sra $1, $2, 12
lb $2, -176($1)
mthi $2
TAG663:
mfhi $4
lui $2, 1
beq $4, $2, TAG664
lui $3, 14
TAG664:
bgtz $3, TAG665
sll $0, $0, 0
lhu $2, 0($3)
slti $4, $3, 9
TAG665:
beq $4, $4, TAG666
multu $4, $4
mfhi $4
lui $1, 1
TAG666:
multu $1, $1
subu $4, $1, $1
bgez $4, TAG667
addiu $2, $1, 15
TAG667:
sb $2, -191($2)
andi $1, $2, 1
div $2, $2
mflo $3
TAG668:
mthi $3
mflo $1
bne $3, $1, TAG669
multu $3, $1
TAG669:
mthi $1
mthi $1
mthi $1
bne $1, $1, TAG670
TAG670:
mfhi $4
mflo $2
mfhi $2
lbu $3, 0($4)
TAG671:
mflo $4
mult $3, $3
mfhi $4
lb $4, 0($4)
TAG672:
srl $4, $4, 0
addiu $3, $4, 6
bne $3, $4, TAG673
lw $1, 59($3)
TAG673:
sll $0, $0, 0
lui $3, 7
blez $3, TAG674
mtlo $3
TAG674:
multu $3, $3
slti $3, $3, 6
lui $1, 7
multu $3, $3
TAG675:
sll $0, $0, 0
lui $2, 9
mult $2, $1
slti $1, $2, 8
TAG676:
mult $1, $1
andi $3, $1, 15
andi $3, $1, 9
sh $3, 0($3)
TAG677:
mflo $3
blez $3, TAG678
mtlo $3
xori $3, $3, 7
TAG678:
subu $3, $3, $3
mthi $3
mflo $1
beq $3, $3, TAG679
TAG679:
nor $3, $1, $1
mult $3, $3
bgez $3, TAG680
andi $3, $1, 10
TAG680:
mtlo $3
lh $4, 0($3)
beq $4, $3, TAG681
sb $4, 0($3)
TAG681:
andi $2, $4, 2
lw $2, 0($2)
bne $2, $2, TAG682
mtlo $4
TAG682:
bltz $2, TAG683
mthi $2
srav $2, $2, $2
lbu $3, 0($2)
TAG683:
mflo $4
lbu $1, 0($4)
bgez $4, TAG684
mfhi $4
TAG684:
addi $4, $4, 13
subu $3, $4, $4
lui $3, 6
mflo $4
TAG685:
multu $4, $4
mult $4, $4
bgtz $4, TAG686
srav $4, $4, $4
TAG686:
lui $3, 5
mfhi $1
mult $4, $1
sb $3, 0($1)
TAG687:
beq $1, $1, TAG688
mfhi $2
bltz $1, TAG688
lb $2, 0($2)
TAG688:
mult $2, $2
mthi $2
mtlo $2
add $2, $2, $2
TAG689:
mtlo $2
mult $2, $2
lw $1, 0($2)
lhu $3, 0($2)
TAG690:
mfhi $4
mthi $4
beq $3, $4, TAG691
mthi $3
TAG691:
lbu $2, 0($4)
multu $2, $2
mtlo $2
sb $4, 0($4)
TAG692:
lui $4, 13
lhu $4, 0($2)
mtlo $4
bltz $4, TAG693
TAG693:
lui $1, 12
mult $1, $4
div $4, $1
bgez $4, TAG694
TAG694:
mflo $1
bne $1, $1, TAG695
mflo $2
sb $1, 0($2)
TAG695:
sw $2, 0($2)
xori $3, $2, 15
mult $2, $2
lui $4, 8
TAG696:
bltz $4, TAG697
sll $0, $0, 0
xor $1, $4, $4
mtlo $4
TAG697:
bne $1, $1, TAG698
multu $1, $1
lb $2, 0($1)
add $4, $2, $1
TAG698:
ori $4, $4, 14
divu $4, $4
sb $4, 0($4)
sh $4, 0($4)
TAG699:
divu $4, $4
sh $4, 0($4)
lhu $4, 0($4)
lui $4, 10
TAG700:
sll $0, $0, 0
lui $3, 13
mflo $2
sra $1, $4, 7
TAG701:
mthi $1
lb $2, -5120($1)
multu $2, $2
sb $2, -5120($1)
TAG702:
lui $1, 5
beq $1, $1, TAG703
andi $3, $1, 8
bne $2, $3, TAG703
TAG703:
mthi $3
beq $3, $3, TAG704
mult $3, $3
bgez $3, TAG704
TAG704:
lui $4, 2
blez $4, TAG705
mtlo $3
lhu $2, 0($3)
TAG705:
mthi $2
bgez $2, TAG706
mfhi $2
mfhi $4
TAG706:
blez $4, TAG707
lui $1, 14
mfhi $1
mflo $3
TAG707:
beq $3, $3, TAG708
mfhi $4
div $3, $4
bgtz $4, TAG708
TAG708:
lui $4, 14
beq $4, $4, TAG709
lui $2, 5
sw $4, 0($4)
TAG709:
sll $0, $0, 0
multu $2, $2
xor $4, $2, $2
srl $1, $2, 0
TAG710:
mfhi $3
xor $2, $3, $1
sb $2, 0($3)
lui $1, 15
TAG711:
blez $1, TAG712
sll $0, $0, 0
bgez $1, TAG712
addiu $2, $1, 11
TAG712:
bne $2, $2, TAG713
mult $2, $2
mtlo $2
bne $2, $2, TAG713
TAG713:
sll $0, $0, 0
mfhi $3
lw $2, -225($3)
sw $2, 0($2)
TAG714:
lw $4, 0($2)
sll $1, $2, 4
sh $1, 0($2)
lui $4, 15
TAG715:
xor $1, $4, $4
sll $1, $4, 10
lui $1, 2
divu $1, $4
TAG716:
bltz $1, TAG717
srlv $4, $1, $1
lui $4, 5
sll $0, $0, 0
TAG717:
sll $0, $0, 0
lui $4, 13
mtlo $4
mthi $1
TAG718:
multu $4, $4
lui $3, 11
slt $1, $3, $3
or $4, $4, $3
TAG719:
multu $4, $4
blez $4, TAG720
and $1, $4, $4
mflo $3
TAG720:
mthi $3
lb $4, 0($3)
andi $1, $3, 9
mflo $3
TAG721:
mflo $3
lw $2, 0($3)
ori $3, $3, 3
mflo $1
TAG722:
beq $1, $1, TAG723
or $1, $1, $1
mult $1, $1
bne $1, $1, TAG723
TAG723:
mthi $1
sh $1, 0($1)
slti $4, $1, 0
lb $2, 0($1)
TAG724:
bne $2, $2, TAG725
lbu $1, 0($2)
xor $2, $2, $2
multu $1, $1
TAG725:
mult $2, $2
sw $2, 0($2)
beq $2, $2, TAG726
sub $1, $2, $2
TAG726:
bne $1, $1, TAG727
mtlo $1
mthi $1
beq $1, $1, TAG727
TAG727:
mtlo $1
mfhi $4
bgtz $1, TAG728
mflo $3
TAG728:
lui $1, 13
sb $1, 0($3)
srlv $4, $3, $3
mthi $1
TAG729:
mflo $1
mthi $1
mult $4, $1
multu $1, $1
TAG730:
mult $1, $1
mfhi $4
add $1, $1, $1
bltz $4, TAG731
TAG731:
multu $1, $1
multu $1, $1
sllv $3, $1, $1
srlv $1, $1, $1
TAG732:
bgez $1, TAG733
nor $1, $1, $1
srav $1, $1, $1
lui $2, 1
TAG733:
mthi $2
bne $2, $2, TAG734
lui $1, 14
sh $2, 0($2)
TAG734:
ori $1, $1, 10
lui $2, 9
slti $4, $2, 2
mthi $4
TAG735:
lui $4, 15
multu $4, $4
lui $1, 7
sll $0, $0, 0
TAG736:
mfhi $1
div $1, $1
sb $1, -225($1)
bltz $1, TAG737
TAG737:
sw $1, -225($1)
xor $3, $1, $1
mthi $1
bltz $3, TAG738
TAG738:
sh $3, 0($3)
mfhi $4
mflo $1
mult $4, $3
TAG739:
lui $4, 2
mflo $4
addi $3, $4, 14
bne $4, $4, TAG740
TAG740:
sh $3, 0($3)
sb $3, 0($3)
divu $3, $3
sh $3, 0($3)
TAG741:
and $4, $3, $3
beq $4, $3, TAG742
div $4, $4
bne $4, $4, TAG742
TAG742:
mtlo $4
bne $4, $4, TAG743
srl $2, $4, 13
mfhi $1
TAG743:
mfhi $4
addi $1, $1, 4
lui $4, 8
addu $1, $1, $1
TAG744:
bgtz $1, TAG745
lh $2, 0($1)
subu $2, $1, $1
addiu $1, $1, 4
TAG745:
multu $1, $1
sb $1, 0($1)
mflo $2
mtlo $1
TAG746:
bne $2, $2, TAG747
mtlo $2
and $2, $2, $2
lui $4, 11
TAG747:
bgez $4, TAG748
divu $4, $4
beq $4, $4, TAG748
divu $4, $4
TAG748:
sll $0, $0, 0
lui $3, 3
bne $3, $4, TAG749
sra $3, $4, 8
TAG749:
multu $3, $3
beq $3, $3, TAG750
mtlo $3
mflo $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop