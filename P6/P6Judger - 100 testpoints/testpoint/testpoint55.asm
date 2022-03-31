ori $1, $0, 15
ori $2, $0, 11
ori $3, $0, 15
ori $4, $0, 10
sw $1, 0($0)
sw $2, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $4, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $3, 124($0)
subu $1, $2, $2
multu $1, $1
beq $1, $1, TAG1
lui $1, 0
TAG1:
lui $2, 7
sll $0, $0, 0
multu $2, $1
slt $1, $1, $1
TAG2:
blez $1, TAG3
add $3, $1, $1
lhu $4, 0($3)
lhu $1, 0($3)
TAG3:
bgez $1, TAG4
lb $1, 0($1)
mtlo $1
addiu $4, $1, 10
TAG4:
lhu $2, 0($4)
sll $3, $2, 14
lui $1, 3
sh $4, 0($2)
TAG5:
sra $4, $1, 11
bne $4, $1, TAG6
addiu $4, $1, 15
lui $2, 4
TAG6:
mfhi $4
or $3, $2, $4
mflo $4
addiu $2, $2, 8
TAG7:
mtlo $2
bltz $2, TAG8
div $2, $2
sra $2, $2, 5
TAG8:
mflo $3
sb $3, 0($3)
sh $3, 0($2)
bne $3, $3, TAG9
TAG9:
lui $4, 12
mult $4, $4
lui $1, 11
slti $1, $4, 4
TAG10:
sw $1, 0($1)
sll $3, $1, 4
bltz $1, TAG11
mult $1, $3
TAG11:
mult $3, $3
addiu $2, $3, 2
mflo $3
mflo $1
TAG12:
mthi $1
beq $1, $1, TAG13
lb $3, 0($1)
sub $1, $3, $3
TAG13:
mult $1, $1
sllv $2, $1, $1
beq $2, $2, TAG14
mtlo $2
TAG14:
lhu $3, 0($2)
mtlo $2
lui $1, 0
sh $3, 0($2)
TAG15:
mflo $1
sh $1, 0($1)
nor $1, $1, $1
nor $4, $1, $1
TAG16:
sh $4, 0($4)
lui $2, 8
lui $3, 8
bne $4, $4, TAG17
TAG17:
mflo $2
beq $3, $2, TAG18
mfhi $1
beq $2, $1, TAG18
TAG18:
lw $4, 0($1)
lhu $3, 0($4)
lbu $3, 0($4)
lb $3, 0($3)
TAG19:
mult $3, $3
mthi $3
lh $4, 0($3)
sh $3, 0($4)
TAG20:
mult $4, $4
bgtz $4, TAG21
srav $2, $4, $4
addi $2, $4, 3
TAG21:
beq $2, $2, TAG22
lbu $4, 0($2)
subu $3, $2, $4
lh $3, 0($4)
TAG22:
mflo $1
mult $3, $3
mthi $1
bltz $1, TAG23
TAG23:
and $2, $1, $1
mult $1, $2
bltz $1, TAG24
multu $2, $1
TAG24:
lhu $1, 0($2)
srlv $4, $2, $1
mtlo $2
lw $4, 0($4)
TAG25:
mfhi $4
lhu $1, 0($4)
beq $4, $4, TAG26
addiu $1, $4, 9
TAG26:
lbu $4, 0($1)
bne $1, $1, TAG27
lb $4, 0($4)
lui $1, 14
TAG27:
blez $1, TAG28
xor $4, $1, $1
bgtz $4, TAG28
mult $4, $4
TAG28:
lhu $4, 0($4)
mthi $4
bgez $4, TAG29
mtlo $4
TAG29:
sb $4, 0($4)
mult $4, $4
beq $4, $4, TAG30
and $2, $4, $4
TAG30:
mfhi $1
bgtz $1, TAG31
sb $1, 0($2)
sll $2, $2, 9
TAG31:
bne $2, $2, TAG32
mtlo $2
lui $4, 1
divu $4, $4
TAG32:
bne $4, $4, TAG33
sll $0, $0, 0
mflo $4
sb $4, 0($4)
TAG33:
mfhi $4
mfhi $4
lw $3, 0($4)
blez $4, TAG34
TAG34:
addiu $4, $3, 7
blez $4, TAG35
andi $1, $3, 14
addu $2, $3, $1
TAG35:
lui $2, 4
ori $4, $2, 0
mfhi $3
lui $2, 14
TAG36:
mult $2, $2
subu $3, $2, $2
mfhi $4
lb $1, -196($4)
TAG37:
bgtz $1, TAG38
andi $1, $1, 7
sb $1, 0($1)
sb $1, 0($1)
TAG38:
multu $1, $1
mflo $4
sb $4, 0($4)
lui $2, 13
TAG39:
bltz $2, TAG40
subu $1, $2, $2
lui $4, 4
addu $4, $4, $4
TAG40:
sll $0, $0, 0
beq $4, $4, TAG41
addiu $2, $4, 0
mthi $4
TAG41:
srl $3, $2, 6
lui $4, 11
addiu $1, $3, 3
div $2, $4
TAG42:
mthi $1
sw $1, -8195($1)
mult $1, $1
lui $3, 9
TAG43:
sll $0, $0, 0
multu $3, $3
mult $3, $3
mfhi $3
TAG44:
lui $2, 3
slt $2, $3, $3
mthi $2
beq $2, $3, TAG45
TAG45:
lui $4, 1
srav $4, $4, $4
beq $2, $4, TAG46
lhu $4, 0($2)
TAG46:
bgtz $4, TAG47
lb $3, -8195($4)
mult $3, $4
mthi $3
TAG47:
lb $3, 0($3)
xori $2, $3, 13
and $3, $3, $3
div $3, $2
TAG48:
sh $3, 0($3)
mult $3, $3
beq $3, $3, TAG49
mtlo $3
TAG49:
beq $3, $3, TAG50
sltu $3, $3, $3
bne $3, $3, TAG50
lui $3, 3
TAG50:
mflo $1
mfhi $1
sw $3, 0($1)
bgez $1, TAG51
TAG51:
mult $1, $1
mflo $2
lui $3, 13
bltz $2, TAG52
TAG52:
mthi $3
mult $3, $3
beq $3, $3, TAG53
sll $0, $0, 0
TAG53:
sll $0, $0, 0
mthi $2
sh $2, 0($2)
bltz $3, TAG54
TAG54:
mtlo $2
lhu $4, 0($2)
mtlo $4
slti $2, $2, 13
TAG55:
sb $2, 0($2)
lui $4, 14
addiu $1, $4, 13
sll $0, $0, 0
TAG56:
beq $1, $1, TAG57
lui $1, 11
mflo $2
mflo $1
TAG57:
blez $1, TAG58
sll $0, $0, 0
lui $4, 9
div $1, $4
TAG58:
sll $0, $0, 0
lui $3, 3
div $3, $3
bltz $3, TAG59
TAG59:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
multu $3, $3
TAG60:
lui $3, 9
sll $0, $0, 0
lui $4, 13
sll $0, $0, 0
TAG61:
mult $4, $4
mfhi $3
bne $3, $4, TAG62
mtlo $4
TAG62:
sh $3, -169($3)
bne $3, $3, TAG63
lh $3, -169($3)
mthi $3
TAG63:
div $3, $3
divu $3, $3
lui $4, 9
mthi $3
TAG64:
mflo $2
bgtz $4, TAG65
nor $2, $4, $4
lui $1, 4
TAG65:
beq $1, $1, TAG66
addu $1, $1, $1
lw $3, 0($1)
bgtz $1, TAG66
TAG66:
sb $3, -169($3)
lh $2, -169($3)
sh $2, -169($3)
lui $1, 12
TAG67:
mfhi $4
srav $1, $1, $1
sltiu $2, $1, 9
bne $2, $2, TAG68
TAG68:
mflo $4
lui $2, 15
mtlo $2
lbu $4, 0($4)
TAG69:
sh $4, 0($4)
or $1, $4, $4
mthi $4
addu $3, $4, $1
TAG70:
bne $3, $3, TAG71
slti $1, $3, 7
bltz $1, TAG71
and $4, $1, $1
TAG71:
lui $1, 2
and $2, $1, $1
mtlo $1
bltz $1, TAG72
TAG72:
mflo $1
bne $1, $1, TAG73
multu $2, $1
multu $1, $1
TAG73:
mtlo $1
lui $1, 0
mult $1, $1
slti $2, $1, 9
TAG74:
sltiu $4, $2, 11
bgez $2, TAG75
sb $2, 0($4)
and $3, $4, $4
TAG75:
mflo $3
sra $3, $3, 4
mult $3, $3
multu $3, $3
TAG76:
lh $4, 0($3)
bltz $3, TAG77
mfhi $4
blez $3, TAG77
TAG77:
mult $4, $4
bltz $4, TAG78
lb $2, 0($4)
mtlo $4
TAG78:
mfhi $2
mthi $2
sh $2, 0($2)
lui $2, 15
TAG79:
div $2, $2
sll $0, $0, 0
srav $1, $2, $2
mflo $4
TAG80:
subu $4, $4, $4
mthi $4
lui $2, 8
and $3, $4, $4
TAG81:
srlv $4, $3, $3
blez $3, TAG82
sltiu $2, $3, 4
sb $2, 0($4)
TAG82:
lb $3, 0($2)
lb $4, 0($3)
lb $3, 0($2)
beq $3, $3, TAG83
TAG83:
mflo $4
sb $3, 0($4)
xori $4, $4, 6
lbu $3, 0($4)
TAG84:
slti $1, $3, 0
mtlo $1
sltiu $1, $1, 13
sb $3, 0($3)
TAG85:
mfhi $1
srl $2, $1, 1
mtlo $1
mult $2, $2
TAG86:
mfhi $4
sb $4, 0($4)
sltiu $3, $2, 7
lui $3, 6
TAG87:
sll $0, $0, 0
or $2, $3, $3
mflo $4
mfhi $4
TAG88:
lui $4, 9
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG89:
beq $4, $4, TAG90
lui $1, 11
sb $1, 0($1)
sh $1, 0($4)
TAG90:
addiu $1, $1, 12
slt $3, $1, $1
sll $0, $0, 0
bne $3, $3, TAG91
TAG91:
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $4, 3
sllv $3, $2, $2
TAG92:
srlv $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG93
TAG93:
xor $1, $1, $1
bne $1, $1, TAG94
mtlo $1
beq $1, $1, TAG94
TAG94:
and $1, $1, $1
sh $1, 0($1)
addiu $4, $1, 13
blez $1, TAG95
TAG95:
sb $4, 0($4)
lui $4, 11
sll $0, $0, 0
mtlo $4
TAG96:
bne $3, $3, TAG97
srlv $1, $3, $3
div $3, $1
ori $3, $1, 9
TAG97:
mthi $3
sll $0, $0, 0
andi $1, $3, 14
multu $3, $3
TAG98:
sw $1, 0($1)
lh $3, 0($1)
lui $3, 4
sll $0, $0, 0
TAG99:
divu $4, $4
subu $3, $4, $4
sh $4, 0($3)
blez $3, TAG100
TAG100:
lui $3, 12
slt $3, $3, $3
sh $3, 0($3)
slt $1, $3, $3
TAG101:
lw $1, 0($1)
lui $2, 3
lhu $3, 0($1)
bltz $3, TAG102
TAG102:
lb $3, 0($3)
mthi $3
mthi $3
mult $3, $3
TAG103:
mthi $3
slt $4, $3, $3
blez $3, TAG104
mtlo $4
TAG104:
blez $4, TAG105
lui $1, 2
sw $1, 0($4)
xor $2, $4, $1
TAG105:
mfhi $3
blez $3, TAG106
mfhi $1
mtlo $1
TAG106:
lh $2, 0($1)
mthi $1
mthi $1
mfhi $2
TAG107:
mthi $2
beq $2, $2, TAG108
lh $3, 0($2)
lui $1, 14
TAG108:
mflo $2
sb $1, 0($2)
sh $2, 0($2)
multu $1, $1
TAG109:
beq $2, $2, TAG110
mflo $1
bltz $1, TAG110
sw $1, 0($1)
TAG110:
slti $4, $1, 2
bltz $1, TAG111
lw $2, 0($1)
sub $1, $2, $1
TAG111:
sra $2, $1, 11
lbu $4, 0($1)
xor $3, $1, $4
addi $1, $3, 11
TAG112:
mthi $1
lui $2, 12
bgez $1, TAG113
multu $2, $2
TAG113:
addu $1, $2, $2
sltu $2, $1, $2
mthi $2
beq $2, $1, TAG114
TAG114:
andi $4, $2, 4
lui $4, 10
mthi $2
sra $1, $2, 1
TAG115:
sb $1, 0($1)
sra $3, $1, 6
mthi $1
lui $3, 10
TAG116:
div $3, $3
divu $3, $3
beq $3, $3, TAG117
lui $1, 5
TAG117:
sll $0, $0, 0
sll $0, $0, 0
lb $1, 0($2)
blez $2, TAG118
TAG118:
mfhi $3
bltz $1, TAG119
ori $3, $3, 0
sw $3, 0($3)
TAG119:
lui $2, 11
mflo $2
mfhi $3
mfhi $2
TAG120:
multu $2, $2
lbu $4, 0($2)
bltz $4, TAG121
lbu $1, 0($2)
TAG121:
addu $3, $1, $1
multu $1, $1
lb $4, 0($1)
andi $4, $1, 7
TAG122:
beq $4, $4, TAG123
sltiu $3, $4, 9
mthi $4
beq $4, $3, TAG123
TAG123:
mtlo $3
sb $3, 0($3)
bne $3, $3, TAG124
lb $4, 0($3)
TAG124:
divu $4, $4
ori $2, $4, 9
lui $4, 14
bne $2, $2, TAG125
TAG125:
or $3, $4, $4
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
TAG126:
bgtz $1, TAG127
mfhi $4
beq $1, $4, TAG127
lui $4, 7
TAG127:
multu $4, $4
mult $4, $4
srl $1, $4, 6
mthi $1
TAG128:
mfhi $3
blez $1, TAG129
sra $1, $3, 3
beq $3, $1, TAG129
TAG129:
mthi $1
mthi $1
ori $2, $1, 14
mfhi $4
TAG130:
xori $3, $4, 7
beq $3, $4, TAG131
mthi $3
mult $4, $3
TAG131:
lbu $1, 0($3)
beq $1, $1, TAG132
mult $1, $1
mflo $4
TAG132:
bgtz $4, TAG133
mfhi $1
addiu $3, $4, 0
mthi $1
TAG133:
mtlo $3
addi $1, $3, 1
mfhi $1
mult $1, $1
TAG134:
mthi $1
beq $1, $1, TAG135
slti $3, $1, 14
lui $4, 11
TAG135:
addi $3, $4, 11
lb $3, 0($3)
mflo $2
mflo $2
TAG136:
mtlo $2
srl $3, $2, 13
sw $2, 0($3)
mflo $4
TAG137:
mtlo $4
addiu $1, $4, 3
lui $2, 13
andi $1, $2, 9
TAG138:
mthi $1
lui $3, 9
sltiu $4, $3, 7
beq $4, $1, TAG139
TAG139:
nor $2, $4, $4
lui $3, 15
lh $1, 1($2)
sll $0, $0, 0
TAG140:
mult $1, $1
lbu $1, 0($1)
sb $1, 0($1)
mult $1, $1
TAG141:
bne $1, $1, TAG142
addi $3, $1, 2
bne $1, $3, TAG142
lui $1, 8
TAG142:
or $3, $1, $1
blez $3, TAG143
sll $0, $0, 0
lui $2, 5
TAG143:
bgtz $2, TAG144
sltiu $1, $2, 11
mtlo $1
mfhi $1
TAG144:
lui $2, 4
bgtz $2, TAG145
lui $4, 1
sub $1, $4, $4
TAG145:
bltz $1, TAG146
multu $1, $1
lui $3, 2
lui $2, 10
TAG146:
mtlo $2
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG147:
beq $2, $2, TAG148
mthi $2
bne $2, $2, TAG148
mtlo $2
TAG148:
beq $2, $2, TAG149
addu $3, $2, $2
bgtz $3, TAG149
sw $3, 0($2)
TAG149:
srlv $2, $3, $3
mthi $3
sll $0, $0, 0
div $3, $3
TAG150:
sll $0, $0, 0
mfhi $3
bltz $3, TAG151
mfhi $3
TAG151:
lui $2, 12
mflo $3
bgtz $2, TAG152
mthi $3
TAG152:
lb $2, 0($3)
lbu $3, 0($2)
mfhi $2
mult $3, $2
TAG153:
bne $2, $2, TAG154
lui $2, 14
mflo $2
bgtz $2, TAG154
TAG154:
addu $2, $2, $2
sb $2, 0($2)
mflo $4
sw $4, 0($2)
TAG155:
mult $4, $4
bltz $4, TAG156
mult $4, $4
sw $4, 0($4)
TAG156:
lhu $2, 0($4)
lhu $1, 0($2)
srl $4, $4, 11
lui $1, 12
TAG157:
lui $2, 4
mflo $3
mtlo $2
andi $1, $3, 12
TAG158:
andi $2, $1, 14
mtlo $1
sw $1, 0($1)
slt $4, $2, $1
TAG159:
sw $4, 0($4)
sb $4, 0($4)
and $3, $4, $4
slt $1, $4, $3
TAG160:
bne $1, $1, TAG161
multu $1, $1
mfhi $2
mfhi $4
TAG161:
sw $4, 0($4)
bgez $4, TAG162
sb $4, 0($4)
lb $4, 0($4)
TAG162:
sb $4, 0($4)
bltz $4, TAG163
mtlo $4
xori $3, $4, 9
TAG163:
lbu $4, 0($3)
sb $4, 0($3)
multu $4, $4
multu $4, $4
TAG164:
bgez $4, TAG165
lb $2, 0($4)
srav $3, $4, $4
lb $2, 0($4)
TAG165:
bne $2, $2, TAG166
lb $1, 0($2)
bgez $1, TAG166
mfhi $3
TAG166:
bltz $3, TAG167
andi $1, $3, 14
bne $3, $3, TAG167
lw $4, 0($1)
TAG167:
lh $3, 0($4)
mflo $4
lui $4, 0
lui $2, 4
TAG168:
lui $3, 10
bgtz $3, TAG169
xori $2, $3, 11
beq $3, $2, TAG169
TAG169:
mfhi $3
srav $4, $3, $2
mfhi $1
nor $2, $3, $2
TAG170:
lui $3, 7
sra $3, $3, 11
sll $4, $3, 10
bgez $3, TAG171
TAG171:
sll $0, $0, 0
mflo $3
sltiu $3, $3, 5
sb $4, 0($3)
TAG172:
mflo $3
subu $4, $3, $3
bne $3, $3, TAG173
sra $2, $4, 6
TAG173:
mult $2, $2
mult $2, $2
mult $2, $2
mult $2, $2
TAG174:
bltz $2, TAG175
add $3, $2, $2
lhu $3, 0($2)
mfhi $3
TAG175:
sh $3, 0($3)
mflo $2
mtlo $2
subu $1, $3, $2
TAG176:
beq $1, $1, TAG177
add $2, $1, $1
lui $4, 3
mthi $1
TAG177:
mthi $4
sllv $1, $4, $4
subu $4, $4, $4
mfhi $1
TAG178:
mtlo $1
xor $2, $1, $1
mflo $1
sw $1, 0($2)
TAG179:
bgtz $1, TAG180
multu $1, $1
mthi $1
addiu $2, $1, 7
TAG180:
xori $3, $2, 8
sb $3, 0($3)
mthi $2
mthi $3
TAG181:
addu $1, $3, $3
div $1, $1
sh $1, 0($1)
mflo $1
TAG182:
divu $1, $1
subu $4, $1, $1
beq $4, $1, TAG183
multu $4, $1
TAG183:
addi $2, $4, 3
multu $4, $2
mfhi $3
srl $3, $4, 11
TAG184:
mfhi $1
beq $3, $3, TAG185
mthi $3
bgtz $1, TAG185
TAG185:
mfhi $4
addi $4, $1, 13
mult $4, $1
mflo $1
TAG186:
beq $1, $1, TAG187
srl $3, $1, 13
beq $1, $1, TAG187
sh $3, 0($3)
TAG187:
mtlo $3
lui $4, 10
lui $1, 14
sll $0, $0, 0
TAG188:
sb $2, 0($2)
mflo $1
mthi $2
lui $3, 12
TAG189:
mfhi $3
mflo $4
addu $2, $4, $3
bgez $2, TAG190
TAG190:
xor $3, $2, $2
nor $3, $3, $3
sb $2, 0($2)
mflo $1
TAG191:
mflo $1
add $2, $1, $1
mflo $4
mthi $1
TAG192:
lhu $3, 0($4)
lui $4, 14
addiu $2, $4, 15
mfhi $2
TAG193:
sh $2, 0($2)
blez $2, TAG194
mtlo $2
bgez $2, TAG194
TAG194:
mult $2, $2
multu $2, $2
sub $3, $2, $2
mthi $2
TAG195:
srl $2, $3, 8
mtlo $3
xori $1, $2, 1
bgtz $2, TAG196
TAG196:
mfhi $3
mfhi $3
mtlo $3
sb $3, 0($1)
TAG197:
mthi $3
mflo $1
nor $2, $3, $1
bne $3, $1, TAG198
TAG198:
mthi $2
lhu $4, 1($2)
bltz $2, TAG199
srl $4, $4, 2
TAG199:
sll $3, $4, 1
mult $3, $4
sh $4, 0($4)
lbu $3, 0($3)
TAG200:
nor $2, $3, $3
addiu $2, $2, 11
bne $2, $2, TAG201
lui $2, 1
TAG201:
sll $0, $0, 0
blez $2, TAG202
sll $0, $0, 0
lb $2, 0($4)
TAG202:
mflo $2
lui $4, 13
lui $2, 12
sltiu $4, $2, 9
TAG203:
lui $2, 3
mflo $1
mthi $1
lw $4, 0($4)
TAG204:
addiu $2, $4, 13
sll $0, $0, 0
bne $4, $4, TAG205
mult $4, $4
TAG205:
sb $1, 0($1)
mthi $1
multu $1, $1
bgtz $1, TAG206
TAG206:
multu $1, $1
lui $4, 3
blez $4, TAG207
lbu $2, 0($1)
TAG207:
andi $2, $2, 15
bgez $2, TAG208
lbu $1, 0($2)
mult $2, $2
TAG208:
mult $1, $1
mflo $4
mtlo $4
addiu $2, $4, 1
TAG209:
sb $2, 0($2)
bne $2, $2, TAG210
mult $2, $2
mthi $2
TAG210:
lui $3, 7
lbu $4, 0($2)
sb $4, 0($2)
sllv $3, $2, $2
TAG211:
lb $1, 0($3)
lui $2, 12
or $1, $1, $3
lui $4, 15
TAG212:
mfhi $2
xori $3, $4, 13
subu $3, $4, $2
sll $0, $0, 0
TAG213:
lui $3, 8
slt $1, $3, $3
andi $4, $3, 2
beq $1, $3, TAG214
TAG214:
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG215:
ori $1, $2, 1
divu $1, $1
bgez $1, TAG216
xor $3, $2, $1
TAG216:
mult $3, $3
mflo $2
lui $2, 12
blez $3, TAG217
TAG217:
mflo $1
xori $3, $2, 5
beq $2, $1, TAG218
mfhi $2
TAG218:
bgez $2, TAG219
mfhi $4
bne $4, $2, TAG219
and $2, $2, $2
TAG219:
and $3, $2, $2
lhu $1, 0($2)
mthi $2
lui $1, 0
TAG220:
multu $1, $1
mult $1, $1
lui $3, 0
multu $1, $1
TAG221:
and $3, $3, $3
mthi $3
sh $3, 0($3)
mthi $3
TAG222:
mthi $3
mult $3, $3
srl $2, $3, 3
mthi $3
TAG223:
xori $3, $2, 10
blez $3, TAG224
lb $1, 0($2)
bgtz $2, TAG224
TAG224:
sb $1, 0($1)
lui $3, 3
ori $3, $1, 15
blez $1, TAG225
TAG225:
divu $3, $3
sb $3, 0($3)
mthi $3
sb $3, 0($3)
TAG226:
lui $4, 11
mflo $2
sb $3, 0($3)
mtlo $4
TAG227:
lui $4, 4
mthi $2
lui $4, 8
sll $0, $0, 0
TAG228:
mtlo $2
bltz $2, TAG229
or $1, $2, $2
sb $1, 0($2)
TAG229:
bgez $1, TAG230
lui $3, 1
lbu $1, 0($3)
mtlo $1
TAG230:
bne $1, $1, TAG231
lbu $3, 0($1)
blez $3, TAG231
sb $1, 0($1)
TAG231:
mthi $3
mthi $3
lui $1, 7
and $2, $3, $3
TAG232:
addiu $4, $2, 0
lui $2, 3
mult $2, $4
ori $4, $2, 15
TAG233:
mtlo $4
bne $4, $4, TAG234
mfhi $3
bne $3, $3, TAG234
TAG234:
lui $2, 15
and $4, $2, $3
beq $4, $4, TAG235
lui $1, 7
TAG235:
srlv $4, $1, $1
bgtz $1, TAG236
lui $2, 10
mthi $4
TAG236:
sll $0, $0, 0
bgtz $2, TAG237
multu $2, $2
bltz $2, TAG237
TAG237:
addu $4, $2, $2
sll $0, $0, 0
mtlo $2
or $4, $1, $2
TAG238:
bne $4, $4, TAG239
div $4, $4
bgez $4, TAG239
andi $1, $4, 4
TAG239:
lui $4, 3
sh $4, 0($1)
slti $3, $1, 15
beq $1, $1, TAG240
TAG240:
lui $3, 3
lui $1, 7
beq $3, $1, TAG241
lui $2, 11
TAG241:
sll $0, $0, 0
and $4, $2, $4
lui $1, 6
lui $1, 6
TAG242:
sll $0, $0, 0
subu $3, $1, $1
mult $3, $1
addiu $4, $1, 15
TAG243:
mthi $4
sll $0, $0, 0
divu $4, $4
ori $2, $4, 3
TAG244:
mthi $2
divu $2, $2
mtlo $2
ori $4, $2, 14
TAG245:
beq $4, $4, TAG246
sll $0, $0, 0
beq $4, $4, TAG246
div $4, $4
TAG246:
divu $4, $4
lui $2, 5
bltz $2, TAG247
slt $3, $4, $2
TAG247:
mflo $1
sh $1, 0($3)
lui $4, 9
blez $1, TAG248
TAG248:
lui $4, 14
divu $4, $4
div $4, $4
multu $4, $4
TAG249:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
xori $1, $4, 5
TAG250:
mflo $3
bne $1, $1, TAG251
mthi $1
lui $2, 9
TAG251:
bltz $2, TAG252
ori $2, $2, 8
ori $2, $2, 12
bne $2, $2, TAG252
TAG252:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 9
bgtz $2, TAG253
TAG253:
sll $0, $0, 0
subu $1, $4, $4
sll $4, $4, 8
bgtz $1, TAG254
TAG254:
div $4, $4
bltz $4, TAG255
mult $4, $4
sll $0, $0, 0
TAG255:
and $1, $1, $1
xor $3, $1, $1
bltz $1, TAG256
addiu $3, $1, 6
TAG256:
bgtz $3, TAG257
sh $3, 0($3)
blez $3, TAG257
lui $3, 8
TAG257:
div $3, $3
mthi $3
xori $1, $3, 14
sh $1, 0($3)
TAG258:
lui $1, 14
multu $1, $1
sll $0, $0, 0
and $2, $1, $1
TAG259:
multu $2, $2
beq $2, $2, TAG260
ori $1, $2, 7
sltiu $1, $1, 0
TAG260:
mfhi $3
sllv $1, $1, $3
srl $3, $3, 4
sll $0, $0, 0
TAG261:
slti $4, $3, 11
bne $4, $3, TAG262
addiu $4, $4, 13
mtlo $3
TAG262:
lui $4, 14
beq $4, $4, TAG263
divu $4, $4
nor $4, $4, $4
TAG263:
subu $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG264:
mfhi $1
or $1, $1, $3
sb $1, 0($1)
bne $1, $1, TAG265
TAG265:
divu $1, $1
subu $2, $1, $1
sltu $1, $1, $1
mfhi $3
TAG266:
mfhi $1
srl $1, $1, 12
mfhi $2
sh $3, 0($1)
TAG267:
ori $2, $2, 4
sh $2, 0($2)
sb $2, 0($2)
beq $2, $2, TAG268
TAG268:
mflo $3
bltz $2, TAG269
slti $3, $3, 11
bgez $2, TAG269
TAG269:
mthi $3
lbu $1, 0($3)
multu $3, $1
mfhi $4
TAG270:
mfhi $3
lhu $1, 0($3)
beq $4, $4, TAG271
ori $2, $1, 14
TAG271:
addiu $1, $2, 12
lui $2, 6
bgtz $1, TAG272
sll $0, $0, 0
TAG272:
lui $3, 14
addu $2, $3, $2
xori $1, $3, 1
mflo $4
TAG273:
sltiu $4, $4, 2
mfhi $2
lb $1, 0($4)
sltu $4, $2, $1
TAG274:
addi $1, $4, 11
mtlo $4
lbu $4, 0($1)
bgez $1, TAG275
TAG275:
mflo $1
bne $1, $1, TAG276
addu $4, $4, $4
srlv $3, $1, $4
TAG276:
mtlo $3
mthi $3
bltz $3, TAG277
lw $3, 0($3)
TAG277:
beq $3, $3, TAG278
sll $0, $0, 0
mtlo $3
beq $3, $3, TAG278
TAG278:
lui $4, 4
sll $0, $0, 0
bltz $4, TAG279
div $4, $3
TAG279:
srl $1, $1, 9
lb $2, 0($1)
bgez $1, TAG280
mflo $2
TAG280:
bltz $2, TAG281
lhu $1, 0($2)
xori $3, $2, 0
sw $1, 0($3)
TAG281:
addu $4, $3, $3
sltu $3, $3, $3
mthi $4
mult $3, $4
TAG282:
lui $3, 1
addiu $1, $3, 11
sll $0, $0, 0
sll $0, $0, 0
TAG283:
mthi $1
mfhi $4
mthi $4
bltz $1, TAG284
TAG284:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
nor $1, $4, $4
TAG285:
xori $3, $1, 8
lui $3, 9
sll $0, $0, 0
mtlo $3
TAG286:
bne $3, $3, TAG287
sll $0, $0, 0
bgez $2, TAG287
sra $3, $3, 10
TAG287:
mflo $4
mult $3, $4
bgtz $4, TAG288
sltiu $4, $3, 7
TAG288:
sb $4, 0($4)
sb $4, 0($4)
subu $1, $4, $4
bgez $4, TAG289
TAG289:
lh $3, 0($1)
beq $1, $1, TAG290
mthi $1
bgtz $1, TAG290
TAG290:
andi $3, $3, 0
multu $3, $3
mthi $3
xori $4, $3, 0
TAG291:
mthi $4
beq $4, $4, TAG292
slti $4, $4, 13
mult $4, $4
TAG292:
nor $1, $4, $4
sll $1, $1, 6
lui $4, 4
lui $3, 13
TAG293:
sll $0, $0, 0
mtlo $3
lui $2, 5
bltz $2, TAG294
TAG294:
sll $0, $0, 0
lui $2, 11
beq $2, $2, TAG295
srl $3, $2, 3
TAG295:
mflo $1
mthi $3
sll $0, $0, 0
blez $3, TAG296
TAG296:
lui $1, 4
mflo $3
mtlo $3
addiu $3, $1, 4
TAG297:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
bgez $3, TAG298
TAG298:
sll $0, $0, 0
subu $3, $3, $3
add $3, $3, $3
mtlo $3
TAG299:
multu $3, $3
lhu $4, 0($3)
bne $3, $4, TAG300
lb $4, 0($4)
TAG300:
sb $4, 0($4)
srlv $2, $4, $4
mfhi $1
bgtz $4, TAG301
TAG301:
ori $2, $1, 13
mthi $2
lui $2, 4
sltu $3, $2, $2
TAG302:
mult $3, $3
blez $3, TAG303
lui $4, 11
srl $1, $4, 8
TAG303:
lui $1, 0
bltz $1, TAG304
sra $2, $1, 4
mult $2, $1
TAG304:
sra $3, $2, 1
mfhi $1
lui $3, 11
lui $4, 1
TAG305:
lui $3, 3
mflo $4
lw $3, 0($4)
mult $3, $4
TAG306:
mthi $3
multu $3, $3
lbu $4, 0($3)
mthi $3
TAG307:
bgez $4, TAG308
lhu $4, 0($4)
nor $1, $4, $4
mtlo $4
TAG308:
sb $1, 0($1)
beq $1, $1, TAG309
mtlo $1
sltiu $1, $1, 4
TAG309:
sb $1, 0($1)
sh $1, 0($1)
lui $3, 9
mthi $1
TAG310:
sll $0, $0, 0
mthi $2
mthi $2
sll $0, $0, 0
TAG311:
lui $4, 13
addiu $2, $4, 10
bne $2, $3, TAG312
sll $0, $0, 0
TAG312:
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG313
mult $3, $3
TAG313:
bgtz $3, TAG314
sll $0, $0, 0
divu $3, $3
sb $3, 0($3)
TAG314:
lui $4, 9
mflo $1
lui $1, 9
xori $4, $4, 3
TAG315:
sll $0, $0, 0
mfhi $4
div $4, $4
lui $4, 0
TAG316:
srl $2, $4, 2
multu $4, $2
mthi $4
sb $4, 0($4)
TAG317:
mult $2, $2
mflo $1
lhu $2, 0($2)
srlv $1, $2, $1
TAG318:
mult $1, $1
lui $1, 12
multu $1, $1
bgez $1, TAG319
TAG319:
mflo $1
mfhi $2
sh $1, 0($1)
ori $2, $1, 8
TAG320:
multu $2, $2
srav $2, $2, $2
lui $1, 5
lui $4, 15
TAG321:
mfhi $3
lw $1, 0($3)
bltz $1, TAG322
lw $2, 0($1)
TAG322:
bgez $2, TAG323
sb $2, 0($2)
bgez $2, TAG323
div $2, $2
TAG323:
lui $3, 13
mflo $4
blez $2, TAG324
sll $0, $0, 0
TAG324:
lui $1, 10
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
TAG325:
lui $1, 15
beq $3, $3, TAG326
mthi $1
lui $1, 3
TAG326:
mult $1, $1
or $1, $1, $1
mtlo $1
bne $1, $1, TAG327
TAG327:
sll $0, $0, 0
subu $1, $3, $1
mthi $1
addiu $1, $1, 10
TAG328:
addiu $1, $1, 7
sll $3, $1, 1
blez $1, TAG329
mfhi $4
TAG329:
sll $0, $0, 0
mfhi $4
lui $2, 7
or $1, $4, $2
TAG330:
mult $1, $1
sll $0, $0, 0
addiu $1, $1, 7
sll $0, $0, 0
TAG331:
mtlo $1
xori $1, $1, 15
lui $4, 13
sll $0, $0, 0
TAG332:
multu $4, $4
bgez $4, TAG333
addu $1, $4, $4
mtlo $4
TAG333:
blez $1, TAG334
mflo $1
sra $4, $1, 1
mfhi $2
TAG334:
beq $2, $2, TAG335
mflo $3
blez $2, TAG335
sllv $2, $3, $2
TAG335:
subu $1, $2, $2
blez $1, TAG336
mfhi $3
div $1, $2
TAG336:
multu $3, $3
srl $3, $3, 12
lui $2, 6
sltiu $2, $3, 8
TAG337:
sra $3, $2, 10
sh $2, 0($3)
bgtz $3, TAG338
mflo $2
TAG338:
srav $3, $2, $2
lb $4, -28561($2)
mthi $3
lb $2, 0($3)
TAG339:
xori $3, $2, 4
bltz $3, TAG340
lui $4, 9
lui $2, 9
TAG340:
lui $2, 14
sll $0, $0, 0
nor $2, $2, $2
sll $0, $0, 0
TAG341:
multu $2, $2
bne $2, $2, TAG342
lui $3, 3
srlv $1, $3, $3
TAG342:
srav $1, $1, $1
mult $1, $1
bltz $1, TAG343
sll $0, $0, 0
TAG343:
bne $1, $1, TAG344
mfhi $2
mflo $4
divu $4, $2
TAG344:
lui $4, 13
sll $0, $0, 0
sllv $3, $2, $4
xori $2, $2, 6
TAG345:
andi $1, $2, 5
lui $1, 14
bgez $2, TAG346
lui $4, 0
TAG346:
andi $2, $4, 5
beq $2, $2, TAG347
mflo $3
divu $4, $3
TAG347:
bne $3, $3, TAG348
mtlo $3
mfhi $4
beq $3, $4, TAG348
TAG348:
mthi $4
mthi $4
addi $2, $4, 8
mflo $2
TAG349:
sltiu $2, $2, 12
multu $2, $2
lb $3, 0($2)
mflo $2
TAG350:
bne $2, $2, TAG351
ori $3, $2, 3
div $2, $2
mtlo $2
TAG351:
divu $3, $3
mfhi $1
mtlo $3
mfhi $2
TAG352:
mfhi $2
bgtz $2, TAG353
mflo $2
bgtz $2, TAG353
TAG353:
addu $2, $2, $2
mfhi $3
addu $4, $3, $2
mfhi $2
TAG354:
srlv $2, $2, $2
sb $2, 0($2)
sb $2, 0($2)
mfhi $4
TAG355:
mfhi $2
sh $4, 0($4)
addi $2, $2, 7
blez $4, TAG356
TAG356:
div $2, $2
lui $2, 8
sll $0, $0, 0
mthi $2
TAG357:
mtlo $2
lui $4, 6
bgez $2, TAG358
multu $2, $2
TAG358:
bne $4, $4, TAG359
lui $1, 14
beq $1, $4, TAG359
div $1, $1
TAG359:
bgtz $1, TAG360
sll $0, $0, 0
sllv $3, $1, $1
lui $3, 1
TAG360:
addi $1, $3, 15
lui $1, 7
sll $0, $0, 0
blez $4, TAG361
TAG361:
srl $1, $4, 10
mult $1, $4
beq $4, $1, TAG362
lui $3, 3
TAG362:
addiu $3, $3, 15
mfhi $3
addu $2, $3, $3
multu $2, $3
TAG363:
andi $3, $2, 2
lui $1, 5
mflo $3
mfhi $1
TAG364:
lbu $4, 0($1)
blez $4, TAG365
sb $4, 0($4)
lui $1, 7
TAG365:
mult $1, $1
mthi $1
lw $4, 0($1)
lui $3, 8
TAG366:
mult $3, $3
sll $0, $0, 0
mult $1, $1
mfhi $1
TAG367:
multu $1, $1
sll $4, $1, 12
bne $4, $4, TAG368
lw $1, 0($1)
TAG368:
mtlo $1
multu $1, $1
mtlo $1
multu $1, $1
TAG369:
xori $3, $1, 5
bne $1, $3, TAG370
mthi $1
lb $2, 0($1)
TAG370:
srlv $4, $2, $2
blez $2, TAG371
or $2, $2, $2
mthi $2
TAG371:
sra $4, $2, 3
mflo $4
sh $4, 0($2)
xor $3, $4, $2
TAG372:
bne $3, $3, TAG373
mtlo $3
addiu $4, $3, 7
sll $2, $4, 3
TAG373:
addiu $1, $2, 0
divu $1, $2
lui $3, 6
beq $3, $3, TAG374
TAG374:
divu $3, $3
sll $0, $0, 0
bne $3, $3, TAG375
sll $0, $0, 0
TAG375:
addu $4, $1, $1
lui $1, 0
blez $1, TAG376
lhu $4, 0($1)
TAG376:
mflo $3
bltz $4, TAG377
mfhi $3
lh $4, 0($4)
TAG377:
lb $3, 0($4)
ori $4, $3, 4
mtlo $4
sltu $2, $4, $4
TAG378:
lui $4, 15
lui $4, 11
sll $0, $0, 0
bgez $4, TAG379
TAG379:
ori $2, $4, 12
mtlo $2
bne $2, $2, TAG380
lui $1, 7
TAG380:
lui $2, 6
srl $1, $2, 9
sw $1, -768($1)
mthi $2
TAG381:
lui $1, 9
lui $2, 10
beq $1, $1, TAG382
mflo $1
TAG382:
multu $1, $1
sll $0, $0, 0
addu $2, $1, $1
bltz $2, TAG383
TAG383:
div $2, $2
mflo $2
lbu $2, 0($2)
lbu $2, 0($2)
TAG384:
lh $2, 0($2)
sb $2, -768($2)
mthi $2
lb $1, -768($2)
TAG385:
sw $1, 0($1)
lui $3, 7
xori $1, $1, 2
subu $4, $3, $1
TAG386:
bne $4, $4, TAG387
sll $0, $0, 0
addiu $4, $1, 10
div $4, $1
TAG387:
sh $4, 0($4)
sltu $3, $4, $4
lui $4, 12
mtlo $4
TAG388:
mtlo $4
sll $0, $0, 0
sltiu $4, $4, 7
srlv $1, $4, $4
TAG389:
bltz $1, TAG390
mthi $1
blez $1, TAG390
multu $1, $1
TAG390:
addi $2, $1, 11
sltiu $3, $2, 10
beq $2, $1, TAG391
lbu $1, 0($3)
TAG391:
or $4, $1, $1
ori $4, $1, 9
mult $4, $4
sra $4, $4, 3
TAG392:
srl $4, $4, 2
lbu $4, 0($4)
srl $3, $4, 1
slt $4, $4, $4
TAG393:
lui $1, 11
lui $1, 0
mtlo $1
beq $1, $1, TAG394
TAG394:
mult $1, $1
mthi $1
sh $1, 0($1)
mflo $4
TAG395:
sw $4, 0($4)
sw $4, 0($4)
beq $4, $4, TAG396
sh $4, 0($4)
TAG396:
lui $4, 11
slti $3, $4, 2
lui $4, 12
mflo $1
TAG397:
mthi $1
sh $1, 0($1)
blez $1, TAG398
sh $1, 0($1)
TAG398:
multu $1, $1
lui $3, 0
lui $1, 14
lbu $1, 0($3)
TAG399:
mfhi $2
lh $1, 0($2)
sll $3, $1, 9
beq $3, $1, TAG400
TAG400:
sh $3, 0($3)
sh $3, 0($3)
mult $3, $3
mfhi $4
TAG401:
lb $1, 0($4)
sra $3, $4, 5
addiu $2, $3, 0
sh $4, 0($3)
TAG402:
sltiu $4, $2, 5
lh $3, 0($2)
lb $2, 0($2)
lui $4, 13
TAG403:
mthi $4
sll $0, $0, 0
mult $4, $4
bne $4, $4, TAG404
TAG404:
mflo $4
sh $4, 0($4)
mflo $3
lb $1, 0($3)
TAG405:
sw $1, 0($1)
bgez $1, TAG406
andi $1, $1, 0
mult $1, $1
TAG406:
blez $1, TAG407
mtlo $1
bgtz $1, TAG407
sh $1, 0($1)
TAG407:
mtlo $1
lbu $2, 0($1)
srlv $1, $1, $1
multu $1, $2
TAG408:
srl $1, $1, 13
bltz $1, TAG409
multu $1, $1
bltz $1, TAG409
TAG409:
mult $1, $1
lui $2, 2
mtlo $1
multu $1, $1
TAG410:
beq $2, $2, TAG411
sll $0, $0, 0
bgtz $2, TAG411
div $2, $2
TAG411:
lui $3, 8
sll $0, $0, 0
addiu $3, $2, 13
sh $2, 0($1)
TAG412:
mflo $1
blez $3, TAG413
lh $2, 0($1)
divu $2, $3
TAG413:
addu $1, $2, $2
sltiu $3, $1, 11
sltu $1, $2, $1
bltz $3, TAG414
TAG414:
mult $1, $1
multu $1, $1
mfhi $1
lui $2, 15
TAG415:
beq $2, $2, TAG416
addu $3, $2, $2
bne $2, $2, TAG416
sw $2, 0($3)
TAG416:
sll $0, $0, 0
mflo $3
beq $3, $3, TAG417
xor $1, $3, $3
TAG417:
lui $1, 15
bgez $1, TAG418
mflo $3
bgtz $3, TAG418
TAG418:
mtlo $3
sw $3, 0($3)
multu $3, $3
addi $4, $3, 7
TAG419:
srav $2, $4, $4
mthi $4
sub $4, $4, $2
mfhi $3
TAG420:
sb $3, 0($3)
sb $3, 0($3)
mult $3, $3
mtlo $3
TAG421:
mult $3, $3
lbu $2, 0($3)
mult $3, $2
bgtz $2, TAG422
TAG422:
slti $4, $2, 13
sb $2, 0($2)
multu $2, $2
beq $2, $2, TAG423
TAG423:
sll $1, $4, 5
sb $1, 0($4)
and $1, $4, $1
sb $1, 0($4)
TAG424:
mthi $1
lui $4, 8
lui $2, 0
mthi $1
TAG425:
mtlo $2
lui $4, 9
mflo $2
lui $2, 11
TAG426:
sll $0, $0, 0
sw $1, 0($1)
multu $1, $1
mflo $3
TAG427:
lh $2, 0($3)
lh $3, 0($2)
sh $2, 0($2)
mfhi $3
TAG428:
lui $1, 3
bltz $1, TAG429
sll $0, $0, 0
sltiu $1, $1, 0
TAG429:
mtlo $1
blez $1, TAG430
mtlo $1
beq $1, $1, TAG430
TAG430:
sb $1, 0($1)
lui $4, 2
lui $1, 11
sll $0, $0, 0
TAG431:
sll $0, $0, 0
div $4, $4
lui $1, 10
multu $1, $1
TAG432:
srlv $3, $1, $1
lui $4, 15
mtlo $3
lui $2, 14
TAG433:
mthi $2
blez $2, TAG434
sll $0, $0, 0
sll $0, $0, 0
TAG434:
beq $2, $2, TAG435
srav $2, $2, $2
sra $1, $2, 8
sb $1, 0($1)
TAG435:
sll $0, $0, 0
sll $0, $0, 0
xor $3, $1, $3
mthi $1
TAG436:
beq $3, $3, TAG437
mfhi $3
mfhi $4
lui $4, 3
TAG437:
blez $4, TAG438
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG438:
sll $0, $0, 0
mtlo $3
mfhi $2
multu $4, $2
TAG439:
sll $0, $0, 0
bgtz $2, TAG440
slt $2, $2, $2
sh $2, 0($2)
TAG440:
sh $2, 0($2)
sllv $3, $2, $2
lui $3, 8
mthi $2
TAG441:
mflo $4
srav $2, $4, $4
mfhi $4
lui $2, 1
TAG442:
div $2, $2
bne $2, $2, TAG443
lui $4, 0
bgtz $2, TAG443
TAG443:
andi $2, $4, 5
mtlo $4
mfhi $3
subu $3, $3, $4
TAG444:
slt $4, $3, $3
sltu $4, $4, $4
mfhi $3
subu $4, $3, $4
TAG445:
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG446:
bne $4, $4, TAG447
divu $4, $4
bltz $4, TAG447
sll $0, $0, 0
TAG447:
div $4, $4
blez $4, TAG448
mflo $1
blez $4, TAG448
TAG448:
div $1, $1
divu $1, $1
addiu $4, $1, 0
beq $4, $1, TAG449
TAG449:
lui $4, 15
mflo $4
mflo $1
multu $4, $1
TAG450:
mfhi $3
sltu $1, $1, $1
bltz $3, TAG451
mthi $1
TAG451:
sb $1, 0($1)
sb $1, 0($1)
sw $1, 0($1)
sll $1, $1, 2
TAG452:
mtlo $1
sb $1, 0($1)
sw $1, 0($1)
mfhi $2
TAG453:
mflo $3
sb $3, 0($2)
multu $2, $3
blez $3, TAG454
TAG454:
lw $2, 0($3)
sllv $3, $3, $2
sh $2, 0($3)
mthi $2
TAG455:
lui $3, 0
lbu $4, 0($3)
mult $3, $3
sra $2, $3, 3
TAG456:
slti $1, $2, 0
beq $1, $1, TAG457
lui $3, 12
mflo $4
TAG457:
bne $4, $4, TAG458
mflo $1
xor $2, $4, $1
lui $2, 13
TAG458:
mthi $2
lui $4, 12
multu $2, $4
mfhi $4
TAG459:
lui $4, 11
sra $3, $4, 0
srl $2, $3, 13
sw $2, 0($2)
TAG460:
sllv $4, $2, $2
slti $3, $4, 10
lh $3, 0($3)
subu $4, $3, $3
TAG461:
mthi $4
mult $4, $4
sltu $1, $4, $4
sll $4, $1, 9
TAG462:
sh $4, 0($4)
mult $4, $4
lb $2, 0($4)
lb $3, 0($2)
TAG463:
mflo $4
mfhi $1
addiu $4, $1, 9
addi $3, $1, 15
TAG464:
mult $3, $3
sllv $2, $3, $3
beq $2, $3, TAG465
sll $0, $0, 0
TAG465:
bgtz $2, TAG466
slt $1, $2, $2
lhu $1, 0($1)
mtlo $1
TAG466:
lbu $4, 0($1)
multu $4, $1
beq $1, $4, TAG467
sh $4, 0($4)
TAG467:
sltiu $1, $4, 13
mult $4, $1
mflo $1
bgtz $4, TAG468
TAG468:
ori $1, $1, 1
sb $1, 0($1)
bltz $1, TAG469
sll $3, $1, 0
TAG469:
mfhi $1
addiu $2, $3, 11
mult $3, $1
mthi $3
TAG470:
sll $2, $2, 2
sb $2, 0($2)
bne $2, $2, TAG471
lui $3, 11
TAG471:
mtlo $3
blez $3, TAG472
sllv $1, $3, $3
srl $1, $1, 1
TAG472:
bltz $1, TAG473
mfhi $2
slti $4, $2, 10
beq $2, $4, TAG473
TAG473:
div $4, $4
mthi $4
mflo $2
mfhi $4
TAG474:
addu $2, $4, $4
sb $2, 0($4)
addiu $2, $2, 10
sw $2, 0($2)
TAG475:
andi $3, $2, 7
subu $4, $2, $3
sh $2, 0($3)
bne $3, $2, TAG476
TAG476:
mtlo $4
bltz $4, TAG477
andi $3, $4, 14
mfhi $2
TAG477:
lui $3, 0
mult $2, $2
bltz $3, TAG478
lb $1, 0($2)
TAG478:
bgtz $1, TAG479
mtlo $1
lui $1, 3
bne $1, $1, TAG479
TAG479:
addiu $3, $1, 6
or $4, $1, $3
lb $4, 0($4)
sll $2, $3, 15
TAG480:
div $2, $2
mflo $2
slti $2, $2, 2
bne $2, $2, TAG481
TAG481:
div $2, $2
mult $2, $2
bne $2, $2, TAG482
sb $2, 0($2)
TAG482:
mthi $2
bgtz $2, TAG483
mfhi $1
mfhi $1
TAG483:
mfhi $3
sb $3, 0($1)
bltz $1, TAG484
lui $3, 3
TAG484:
subu $4, $3, $3
mtlo $3
addiu $3, $3, 1
bne $3, $4, TAG485
TAG485:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG486
TAG486:
divu $3, $3
div $3, $3
mfhi $2
mflo $4
TAG487:
bltz $4, TAG488
lbu $3, 0($4)
and $2, $3, $4
lui $4, 9
TAG488:
lui $1, 2
addu $4, $1, $1
lui $2, 6
mfhi $4
TAG489:
sll $4, $4, 8
nor $4, $4, $4
lui $4, 1
blez $4, TAG490
TAG490:
mfhi $4
sra $1, $4, 14
mflo $2
sltiu $2, $4, 14
TAG491:
bgtz $2, TAG492
lbu $3, 0($2)
bne $2, $3, TAG492
lui $4, 6
TAG492:
lui $4, 9
div $4, $4
lui $1, 2
mflo $4
TAG493:
mthi $4
subu $3, $4, $4
mtlo $4
beq $4, $4, TAG494
TAG494:
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG495
sltiu $3, $3, 2
TAG495:
sb $3, 0($3)
blez $3, TAG496
subu $2, $3, $3
mult $2, $2
TAG496:
mult $2, $2
sltu $2, $2, $2
lui $3, 12
mthi $3
TAG497:
sll $3, $3, 6
sll $0, $0, 0
sll $0, $0, 0
lw $1, 0($2)
TAG498:
mfhi $4
lw $2, -256($1)
beq $1, $2, TAG499
sltu $3, $1, $1
TAG499:
addi $4, $3, 6
mfhi $4
mflo $2
subu $3, $4, $4
TAG500:
mthi $3
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
TAG501:
slt $4, $4, $4
sra $4, $4, 7
lbu $1, 0($4)
lui $4, 7
TAG502:
sll $0, $0, 0
sll $3, $4, 15
lui $3, 13
andi $3, $3, 14
TAG503:
mflo $3
bltz $3, TAG504
sb $3, 0($3)
bltz $3, TAG504
TAG504:
lui $1, 11
sw $1, 0($3)
lui $2, 15
mtlo $1
TAG505:
sll $0, $0, 0
bgtz $2, TAG506
sll $0, $0, 0
mfhi $1
TAG506:
mtlo $1
mthi $1
mthi $1
srav $3, $1, $1
TAG507:
bltz $3, TAG508
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG508:
sll $0, $0, 0
div $4, $4
srav $1, $1, $4
sll $0, $0, 0
TAG509:
sll $0, $0, 0
beq $1, $2, TAG510
sll $0, $0, 0
addu $2, $1, $1
TAG510:
bne $2, $2, TAG511
sll $0, $0, 0
sll $0, $0, 0
sll $2, $1, 11
TAG511:
mthi $2
beq $2, $2, TAG512
sll $0, $0, 0
bne $2, $2, TAG512
TAG512:
mult $2, $2
bne $2, $2, TAG513
divu $2, $2
sll $0, $0, 0
TAG513:
bgez $2, TAG514
mfhi $1
xori $4, $2, 10
bne $2, $1, TAG514
TAG514:
sll $0, $0, 0
addu $2, $4, $2
sll $0, $0, 0
mflo $3
TAG515:
multu $3, $3
mfhi $2
mflo $1
lbu $1, 0($2)
TAG516:
bgez $1, TAG517
sw $1, 0($1)
mtlo $1
sb $1, 0($1)
TAG517:
bltz $1, TAG518
mthi $1
lui $3, 9
beq $1, $3, TAG518
TAG518:
sll $0, $0, 0
mthi $3
lui $4, 14
addu $2, $3, $4
TAG519:
sll $0, $0, 0
mfhi $1
mthi $2
sll $0, $0, 0
TAG520:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG521
div $1, $1
TAG521:
mult $1, $1
mtlo $1
bltz $1, TAG522
and $3, $1, $1
TAG522:
xori $2, $3, 5
mtlo $3
sra $2, $2, 11
blez $2, TAG523
TAG523:
multu $2, $2
mthi $2
sh $2, -288($2)
bgtz $2, TAG524
TAG524:
sh $2, -288($2)
sra $2, $2, 15
mflo $1
mult $2, $2
TAG525:
mflo $3
srlv $1, $1, $1
sb $3, 0($3)
mtlo $3
TAG526:
beq $1, $1, TAG527
sll $0, $0, 0
bne $1, $1, TAG527
mflo $1
TAG527:
beq $1, $1, TAG528
sll $0, $0, 0
bltz $1, TAG528
sw $1, 0($1)
TAG528:
blez $1, TAG529
or $4, $1, $1
sltiu $3, $4, 10
sll $0, $0, 0
TAG529:
lb $3, 0($3)
lw $1, 0($3)
lui $3, 13
mthi $3
TAG530:
sltiu $1, $3, 7
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG531:
mtlo $2
sb $2, 0($2)
sub $1, $2, $2
lhu $4, 0($2)
TAG532:
srl $1, $4, 5
mthi $1
lhu $3, -256($4)
bne $4, $4, TAG533
TAG533:
divu $3, $3
sb $3, -256($3)
lui $2, 15
lw $2, -256($3)
TAG534:
nor $3, $2, $2
srl $4, $2, 2
bgtz $2, TAG535
mult $3, $2
TAG535:
nor $2, $4, $4
div $2, $4
lbu $4, 65($2)
lbu $1, 0($4)
TAG536:
lhu $4, 0($1)
beq $4, $1, TAG537
lhu $1, 0($1)
bne $1, $1, TAG537
TAG537:
sb $1, -256($1)
lui $4, 13
sll $0, $0, 0
div $1, $4
TAG538:
sh $2, 65($2)
lhu $3, 65($2)
blez $3, TAG539
mfhi $3
TAG539:
beq $3, $3, TAG540
mthi $3
lbu $3, 0($3)
xor $2, $3, $3
TAG540:
mthi $2
multu $2, $2
mult $2, $2
lui $1, 11
TAG541:
lui $1, 9
bne $1, $1, TAG542
sll $0, $0, 0
sll $0, $0, 0
TAG542:
bne $1, $1, TAG543
divu $1, $1
sll $0, $0, 0
blez $1, TAG543
TAG543:
ori $2, $3, 10
mfhi $4
mtlo $4
mthi $2
TAG544:
sb $4, 0($4)
lui $4, 11
sll $0, $0, 0
slt $1, $4, $4
TAG545:
srl $3, $1, 14
beq $1, $1, TAG546
xori $3, $3, 5
nor $4, $3, $3
TAG546:
bgtz $4, TAG547
mult $4, $4
addi $3, $4, 1
add $2, $3, $3
TAG547:
mtlo $2
mflo $3
sll $1, $3, 7
blez $2, TAG548
TAG548:
mflo $4
sll $0, $0, 0
lui $1, 8
lui $4, 11
TAG549:
lui $3, 1
mthi $3
slti $1, $3, 7
lui $1, 4
TAG550:
sll $0, $0, 0
lui $3, 12
mfhi $3
sll $0, $0, 0
TAG551:
subu $3, $2, $2
sra $4, $2, 3
lui $4, 2
sltu $4, $4, $2
TAG552:
beq $4, $4, TAG553
multu $4, $4
sw $4, 0($4)
blez $4, TAG553
TAG553:
mtlo $4
bne $4, $4, TAG554
mflo $4
sh $4, 0($4)
TAG554:
mult $4, $4
lhu $2, 0($4)
mfhi $2
sh $4, 0($2)
TAG555:
addiu $4, $2, 9
sra $4, $2, 4
beq $4, $4, TAG556
srl $4, $4, 8
TAG556:
mthi $4
add $1, $4, $4
mtlo $4
mfhi $2
TAG557:
sra $2, $2, 11
lui $1, 3
blez $2, TAG558
sltiu $2, $2, 13
TAG558:
sb $2, 0($2)
mult $2, $2
ori $4, $2, 15
mflo $2
TAG559:
lbu $2, 0($2)
mfhi $3
blez $3, TAG560
lb $4, 0($2)
TAG560:
sb $4, 0($4)
mthi $4
addiu $4, $4, 12
mflo $3
TAG561:
sb $3, 0($3)
bgtz $3, TAG562
mfhi $4
xori $3, $3, 7
TAG562:
bltz $3, TAG563
lui $3, 14
xori $4, $3, 11
mtlo $3
TAG563:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
sltu $4, $3, $4
TAG564:
lui $3, 4
bne $3, $3, TAG565
sll $0, $0, 0
addiu $1, $4, 11
TAG565:
mult $1, $1
lui $2, 10
addiu $4, $1, 6
bne $1, $1, TAG566
TAG566:
sltiu $3, $4, 9
mtlo $3
beq $4, $3, TAG567
mthi $4
TAG567:
lui $4, 15
bgtz $3, TAG568
mult $3, $3
mthi $3
TAG568:
blez $4, TAG569
sll $0, $0, 0
lui $4, 15
bgtz $4, TAG569
TAG569:
andi $3, $4, 14
addi $3, $3, 0
sub $4, $3, $3
bgez $4, TAG570
TAG570:
lui $3, 5
bne $3, $4, TAG571
mflo $3
addi $2, $3, 14
TAG571:
mthi $2
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG572:
mtlo $4
bne $4, $4, TAG573
lui $1, 13
sw $1, 0($4)
TAG573:
lui $4, 1
mthi $4
srl $1, $1, 6
mthi $4
TAG574:
sll $0, $0, 0
sh $1, -13312($1)
bne $4, $4, TAG575
mflo $3
TAG575:
lui $4, 8
sb $3, 0($3)
div $4, $4
sw $4, 0($3)
TAG576:
srl $1, $4, 2
divu $1, $4
mflo $1
divu $1, $4
TAG577:
beq $1, $1, TAG578
mthi $1
lui $4, 0
mflo $2
TAG578:
addiu $4, $2, 13
sll $0, $0, 0
bgtz $2, TAG579
mtlo $2
TAG579:
mtlo $4
mult $4, $4
div $4, $4
ori $2, $4, 9
TAG580:
sll $0, $0, 0
bgez $4, TAG581
srlv $4, $2, $2
sw $4, 0($4)
TAG581:
lh $2, 0($4)
lbu $3, 0($2)
mfhi $1
mtlo $2
TAG582:
mtlo $1
addiu $2, $1, 14
bne $1, $1, TAG583
mult $1, $1
TAG583:
sllv $1, $2, $2
beq $2, $2, TAG584
lui $2, 11
mult $2, $2
TAG584:
bne $2, $2, TAG585
addu $2, $2, $2
addu $3, $2, $2
andi $4, $2, 12
TAG585:
mflo $2
bltz $4, TAG586
subu $1, $4, $2
mfhi $3
TAG586:
lui $1, 3
beq $1, $1, TAG587
sll $0, $0, 0
or $2, $3, $3
TAG587:
mflo $1
blez $2, TAG588
andi $2, $2, 1
lb $4, 0($2)
TAG588:
lb $1, 0($4)
sh $1, 0($1)
mult $1, $4
sllv $4, $1, $1
TAG589:
mthi $4
lui $2, 9
lui $1, 2
mult $1, $1
TAG590:
sll $0, $0, 0
bgez $1, TAG591
mult $4, $4
multu $1, $1
TAG591:
addi $1, $4, 11
ori $3, $4, 14
sltiu $3, $3, 6
nor $4, $3, $3
TAG592:
blez $4, TAG593
nor $3, $4, $4
mflo $4
lui $2, 15
TAG593:
mfhi $4
beq $2, $4, TAG594
lui $1, 0
lh $4, 0($4)
TAG594:
sll $2, $4, 12
lbu $3, 0($4)
sh $3, 0($3)
addiu $4, $3, 3
TAG595:
mtlo $4
beq $4, $4, TAG596
mflo $2
addi $1, $2, 1
TAG596:
sb $1, 0($1)
mflo $2
sb $2, 0($2)
sb $2, 0($2)
TAG597:
bne $2, $2, TAG598
subu $3, $2, $2
bgtz $3, TAG598
mflo $2
TAG598:
mflo $1
mult $1, $1
beq $2, $2, TAG599
sb $2, 0($2)
TAG599:
multu $1, $1
beq $1, $1, TAG600
sb $1, 0($1)
mult $1, $1
TAG600:
lui $1, 14
beq $1, $1, TAG601
sltu $4, $1, $1
mult $4, $1
TAG601:
multu $4, $4
bne $4, $4, TAG602
mult $4, $4
mtlo $4
TAG602:
mfhi $3
addiu $1, $3, 13
mthi $1
bgez $3, TAG603
TAG603:
mflo $2
bne $1, $2, TAG604
lui $3, 6
mflo $3
TAG604:
xori $1, $3, 12
srav $3, $1, $1
beq $1, $1, TAG605
mflo $4
TAG605:
lui $4, 8
divu $4, $4
srlv $2, $4, $4
ori $4, $2, 9
TAG606:
divu $4, $4
bgez $4, TAG607
multu $4, $4
addi $1, $4, 15
TAG607:
bltz $1, TAG608
multu $1, $1
mfhi $2
mthi $1
TAG608:
addiu $1, $2, 15
beq $2, $1, TAG609
lui $2, 0
multu $2, $2
TAG609:
bgez $2, TAG610
lh $2, 0($2)
srlv $2, $2, $2
divu $2, $2
TAG610:
mthi $2
sll $4, $2, 11
lui $3, 1
blez $2, TAG611
TAG611:
lui $2, 4
sll $0, $0, 0
sltiu $2, $2, 11
mflo $3
TAG612:
mthi $3
lhu $3, 0($3)
lh $1, 0($3)
lb $4, 0($3)
TAG613:
mflo $3
bgez $4, TAG614
lui $3, 14
blez $3, TAG614
TAG614:
mflo $4
bne $4, $4, TAG615
nor $3, $3, $4
lui $2, 6
TAG615:
lui $4, 13
bne $2, $2, TAG616
sll $0, $0, 0
beq $4, $4, TAG616
TAG616:
lui $2, 12
sltiu $3, $4, 5
slt $4, $4, $2
sw $4, 0($4)
TAG617:
lbu $3, 0($4)
sw $3, 0($3)
lbu $1, 0($4)
mflo $2
TAG618:
mflo $1
lw $4, 0($2)
mflo $1
bne $1, $1, TAG619
TAG619:
sw $1, 0($1)
sub $3, $1, $1
sh $1, 0($3)
nor $3, $3, $3
TAG620:
sll $0, $0, 0
mthi $2
blez $3, TAG621
mtlo $3
TAG621:
slti $2, $2, 3
bne $2, $2, TAG622
lb $2, 0($2)
mfhi $2
TAG622:
beq $2, $2, TAG623
mflo $4
sltiu $4, $2, 11
lhu $4, 0($4)
TAG623:
bltz $4, TAG624
subu $4, $4, $4
lui $1, 13
lb $1, 0($1)
TAG624:
lui $2, 4
sll $0, $0, 0
bgtz $1, TAG625
lui $4, 6
TAG625:
srlv $4, $4, $4
sll $0, $0, 0
bgez $4, TAG626
lui $4, 6
TAG626:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG627
and $3, $4, $4
TAG627:
mthi $3
addiu $3, $3, 12
mtlo $3
mthi $3
TAG628:
mtlo $3
mfhi $2
mult $2, $3
sll $0, $0, 0
TAG629:
sll $0, $0, 0
sllv $4, $2, $2
mthi $4
addu $1, $1, $2
TAG630:
divu $1, $1
addiu $4, $1, 5
mfhi $3
lbu $1, 0($3)
TAG631:
lui $4, 12
sll $0, $0, 0
mthi $4
mthi $4
TAG632:
sll $0, $0, 0
mflo $1
div $4, $1
blez $1, TAG633
TAG633:
lui $2, 15
sll $0, $0, 0
mtlo $1
lui $4, 14
TAG634:
sll $0, $0, 0
sltu $3, $3, $4
bgtz $3, TAG635
mfhi $3
TAG635:
sw $3, 0($3)
sh $3, 0($3)
nor $4, $3, $3
ori $3, $3, 11
TAG636:
sb $3, 0($3)
sllv $2, $3, $3
lui $3, 3
lui $2, 8
TAG637:
bne $2, $2, TAG638
mfhi $2
addiu $1, $2, 12
blez $2, TAG638
TAG638:
mflo $2
lbu $4, 0($1)
and $4, $4, $4
sll $2, $1, 9
TAG639:
subu $3, $2, $2
sh $3, -6144($2)
bne $3, $3, TAG640
div $3, $2
TAG640:
lw $2, 0($3)
ori $2, $3, 3
multu $2, $3
mfhi $1
TAG641:
mtlo $1
multu $1, $1
srl $4, $1, 11
multu $4, $1
TAG642:
beq $4, $4, TAG643
sb $4, 0($4)
mfhi $2
srl $2, $2, 8
TAG643:
div $2, $2
lbu $4, 0($2)
srlv $1, $4, $4
lhu $4, 0($1)
TAG644:
lb $3, 0($4)
nor $4, $4, $3
mult $4, $3
mthi $4
TAG645:
bltz $4, TAG646
mflo $2
xor $3, $4, $2
slti $3, $2, 15
TAG646:
bltz $3, TAG647
mthi $3
multu $3, $3
mtlo $3
TAG647:
mthi $3
multu $3, $3
addi $1, $3, 3
multu $1, $3
TAG648:
addu $1, $1, $1
lui $3, 13
lbu $3, 0($1)
mfhi $3
TAG649:
bne $3, $3, TAG650
sb $3, 0($3)
lui $1, 8
sw $3, 0($3)
TAG650:
xori $3, $1, 8
beq $1, $3, TAG651
div $3, $1
srav $3, $1, $1
TAG651:
mtlo $3
sll $0, $0, 0
div $4, $4
bltz $4, TAG652
TAG652:
div $4, $4
divu $4, $4
mflo $1
lbu $4, 0($1)
TAG653:
mtlo $4
mthi $4
mflo $4
xor $1, $4, $4
TAG654:
mflo $3
mtlo $3
mflo $1
addi $4, $3, 0
TAG655:
mult $4, $4
lbu $2, 0($4)
lui $1, 11
ori $2, $2, 13
TAG656:
sll $2, $2, 5
lbu $2, -416($2)
beq $2, $2, TAG657
lui $2, 4
TAG657:
mfhi $3
sll $0, $0, 0
lhu $3, 0($3)
nor $1, $3, $2
TAG658:
beq $1, $1, TAG659
mthi $1
mflo $2
sb $1, 0($2)
TAG659:
mflo $1
mfhi $2
lhu $4, 0($1)
mflo $2
TAG660:
sb $2, 0($2)
sll $4, $2, 6
beq $2, $4, TAG661
mtlo $2
TAG661:
lb $1, 0($4)
mult $1, $1
beq $4, $1, TAG662
mflo $2
TAG662:
lui $1, 10
and $1, $2, $1
mult $1, $1
sra $3, $1, 0
TAG663:
bgtz $3, TAG664
mflo $3
beq $3, $3, TAG664
mtlo $3
TAG664:
sltu $4, $3, $3
beq $4, $4, TAG665
addiu $2, $4, 12
bltz $2, TAG665
TAG665:
lb $2, 0($2)
bgtz $2, TAG666
lui $3, 7
srlv $3, $2, $2
TAG666:
mthi $3
bne $3, $3, TAG667
addiu $3, $3, 4
lui $2, 13
TAG667:
sll $0, $0, 0
bgez $2, TAG668
mflo $3
mflo $3
TAG668:
slt $3, $3, $3
sh $3, 0($3)
lhu $2, 0($3)
slti $1, $2, 0
TAG669:
sltu $2, $1, $1
addi $1, $2, 3
ori $3, $1, 8
bltz $3, TAG670
TAG670:
xor $1, $3, $3
mtlo $3
sw $1, 0($1)
bltz $1, TAG671
TAG671:
mthi $1
lui $1, 4
sll $0, $0, 0
mfhi $2
TAG672:
bltz $2, TAG673
multu $2, $2
srlv $4, $2, $2
bne $2, $4, TAG673
TAG673:
sb $4, 0($4)
sltiu $1, $4, 8
beq $1, $4, TAG674
lw $3, 0($4)
TAG674:
mfhi $3
mtlo $3
nor $3, $3, $3
bne $3, $3, TAG675
TAG675:
div $3, $3
sra $2, $3, 15
div $2, $2
mflo $1
TAG676:
lb $1, 0($1)
multu $1, $1
mthi $1
bgtz $1, TAG677
TAG677:
sra $4, $1, 9
bne $1, $4, TAG678
lbu $4, 0($4)
lui $3, 10
TAG678:
mflo $1
sh $1, 0($1)
sll $0, $0, 0
addi $3, $1, 5
TAG679:
addu $1, $3, $3
sh $3, 0($1)
beq $1, $3, TAG680
lhu $4, 0($1)
TAG680:
mtlo $4
bgez $4, TAG681
mflo $2
multu $2, $4
TAG681:
lui $4, 11
sra $1, $4, 4
mthi $2
srlv $3, $4, $2
TAG682:
addiu $3, $3, 3
multu $3, $3
mthi $3
sb $3, -22531($3)
TAG683:
lui $1, 2
mtlo $1
sll $0, $0, 0
lui $1, 5
TAG684:
bne $1, $1, TAG685
mflo $2
blez $1, TAG685
mtlo $2
TAG685:
bltz $2, TAG686
mthi $2
bne $2, $2, TAG686
sll $0, $0, 0
TAG686:
multu $2, $2
bgtz $2, TAG687
lui $4, 15
sll $4, $4, 6
TAG687:
bltz $4, TAG688
mfhi $2
sll $0, $0, 0
srlv $2, $4, $4
TAG688:
or $4, $2, $2
sll $0, $0, 0
srlv $3, $4, $2
andi $3, $4, 5
TAG689:
mult $3, $3
bgez $3, TAG690
mthi $3
div $3, $3
TAG690:
beq $3, $3, TAG691
nor $1, $3, $3
bgez $1, TAG691
lui $4, 3
TAG691:
mfhi $2
beq $4, $2, TAG692
lhu $1, 0($2)
mfhi $4
TAG692:
bne $4, $4, TAG693
mfhi $4
mthi $4
sb $4, 0($4)
TAG693:
beq $4, $4, TAG694
lui $4, 11
sh $4, 0($4)
slt $3, $4, $4
TAG694:
slt $2, $3, $3
add $4, $2, $2
sltiu $2, $3, 8
srlv $3, $2, $2
TAG695:
sub $4, $3, $3
lui $1, 15
bgtz $4, TAG696
sltu $1, $4, $1
TAG696:
addiu $4, $1, 15
beq $4, $1, TAG697
srl $2, $4, 8
mthi $4
TAG697:
lh $4, 0($2)
bgez $2, TAG698
srl $2, $2, 14
mthi $2
TAG698:
sltiu $3, $2, 4
addu $1, $2, $3
sb $2, 0($1)
nor $2, $1, $3
TAG699:
addu $2, $2, $2
bne $2, $2, TAG700
mthi $2
sb $2, 4($2)
TAG700:
mthi $2
mult $2, $2
bne $2, $2, TAG701
mtlo $2
TAG701:
sltiu $4, $2, 14
mult $4, $4
divu $2, $2
multu $2, $4
TAG702:
xori $4, $4, 2
mtlo $4
lhu $2, 0($4)
lui $4, 7
TAG703:
sll $0, $0, 0
addiu $2, $4, 13
sll $0, $0, 0
mult $4, $4
TAG704:
addiu $2, $2, 13
bltz $2, TAG705
lui $3, 7
sll $0, $0, 0
TAG705:
beq $3, $3, TAG706
lui $1, 8
bgtz $3, TAG706
mult $1, $3
TAG706:
slti $3, $1, 6
bne $1, $1, TAG707
sll $0, $0, 0
addu $4, $1, $3
TAG707:
beq $4, $4, TAG708
mult $4, $4
addiu $2, $4, 10
lui $2, 5
TAG708:
bltz $2, TAG709
mtlo $2
sll $0, $0, 0
mfhi $2
TAG709:
srav $2, $2, $2
sllv $4, $2, $2
div $2, $2
mtlo $2
TAG710:
mthi $4
mfhi $1
addiu $1, $4, 5
nor $4, $1, $4
TAG711:
lui $4, 13
sll $0, $0, 0
subu $1, $4, $4
beq $4, $1, TAG712
TAG712:
mflo $2
lui $4, 1
lui $2, 14
sll $0, $0, 0
TAG713:
bltz $1, TAG714
multu $1, $1
lui $4, 8
lw $2, 0($1)
TAG714:
divu $2, $2
mthi $2
lui $4, 10
sb $2, -252($2)
TAG715:
bgtz $4, TAG716
mtlo $4
mthi $4
bne $4, $4, TAG716
TAG716:
lui $3, 14
mult $4, $3
xori $2, $3, 11
lui $2, 14
TAG717:
mthi $2
sll $0, $0, 0
mthi $2
xori $2, $2, 3
TAG718:
sll $0, $0, 0
srlv $2, $2, $2
mfhi $4
addu $2, $2, $2
TAG719:
xori $1, $2, 10
lui $2, 7
lui $2, 8
mthi $1
TAG720:
srlv $2, $2, $2
mthi $2
addiu $3, $2, 3
mfhi $2
TAG721:
mfhi $2
lui $3, 13
mtlo $3
sltu $2, $2, $3
TAG722:
lui $3, 0
bgtz $3, TAG723
lbu $2, 0($2)
mthi $2
TAG723:
bgtz $2, TAG724
mthi $2
mult $2, $2
slti $3, $2, 5
TAG724:
mflo $1
lui $3, 1
sw $1, 0($1)
mtlo $3
TAG725:
sll $0, $0, 0
addiu $4, $3, 15
div $3, $4
sll $0, $0, 0
TAG726:
mthi $4
mthi $4
lui $4, 3
bne $4, $4, TAG727
TAG727:
sll $0, $0, 0
lui $2, 7
lui $3, 2
sll $0, $0, 0
TAG728:
lui $3, 2
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG729
TAG729:
div $3, $3
subu $3, $3, $3
multu $3, $3
bgtz $3, TAG730
TAG730:
mthi $3
mult $3, $3
multu $3, $3
bltz $3, TAG731
TAG731:
lb $4, 0($3)
mtlo $3
sra $3, $4, 4
lbu $3, 0($3)
TAG732:
bltz $3, TAG733
mflo $1
bne $3, $1, TAG733
lui $1, 5
TAG733:
lui $1, 13
bltz $1, TAG734
mthi $1
div $1, $1
TAG734:
srlv $1, $1, $1
ori $2, $1, 5
divu $1, $1
divu $2, $1
TAG735:
addiu $3, $2, 6
sltiu $3, $2, 15
addu $1, $3, $3
sltiu $4, $1, 8
TAG736:
srl $4, $4, 11
mtlo $4
bgez $4, TAG737
sb $4, 0($4)
TAG737:
sub $1, $4, $4
sltu $2, $1, $1
mult $1, $1
sb $2, 0($4)
TAG738:
mthi $2
lbu $3, 0($2)
lui $1, 2
bgez $2, TAG739
TAG739:
mtlo $1
mthi $1
bne $1, $1, TAG740
sll $0, $0, 0
TAG740:
mfhi $4
bgtz $4, TAG741
sll $0, $0, 0
div $4, $4
TAG741:
sll $0, $0, 0
bne $4, $4, TAG742
mflo $2
addu $1, $4, $4
TAG742:
subu $3, $1, $1
xori $1, $1, 8
divu $1, $1
mthi $1
TAG743:
mflo $4
div $4, $4
beq $1, $1, TAG744
addiu $4, $1, 3
TAG744:
nor $2, $4, $4
mfhi $2
lbu $3, 0($2)
mthi $3
TAG745:
mthi $3
sb $3, 0($3)
bne $3, $3, TAG746
lh $2, 0($3)
TAG746:
beq $2, $2, TAG747
mfhi $1
bgtz $2, TAG747
lhu $4, 0($1)
TAG747:
sll $0, $0, 0
beq $4, $4, TAG748
sll $0, $0, 0
sh $4, 0($4)
TAG748:
sll $0, $0, 0
mthi $4
blez $4, TAG749
sll $0, $0, 0
TAG749:
sll $0, $0, 0
mult $4, $4
bltz $4, TAG750
lui $1, 5
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop