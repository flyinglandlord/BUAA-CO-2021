ori $1, $0, 10
ori $2, $0, 13
ori $3, $0, 4
ori $4, $0, 13
sw $3, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $1, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $4, 120($0)
sw $1, 124($0)
slt $3, $2, $2
lb $1, 0($3)
or $3, $3, $1
beq $2, $3, TAG1
TAG1:
div $3, $3
mflo $3
multu $3, $3
bne $3, $3, TAG2
TAG2:
divu $3, $3
andi $4, $3, 13
mflo $1
bltz $4, TAG3
TAG3:
lui $1, 12
divu $1, $1
srlv $3, $1, $1
mflo $2
TAG4:
ori $4, $2, 3
divu $4, $2
sb $2, 0($2)
or $1, $2, $4
TAG5:
lui $4, 8
bgez $1, TAG6
mthi $1
mtlo $1
TAG6:
lui $3, 0
bgtz $4, TAG7
mthi $4
mflo $2
TAG7:
addu $1, $2, $2
srav $3, $2, $1
subu $4, $1, $2
lui $4, 4
TAG8:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
mult $4, $4
TAG9:
sw $3, 0($3)
beq $3, $3, TAG10
sb $3, 0($3)
sw $3, 0($3)
TAG10:
bne $3, $3, TAG11
mult $3, $3
bgez $3, TAG11
srl $4, $3, 10
TAG11:
mult $4, $4
lh $3, 0($4)
lw $1, 0($4)
mfhi $2
TAG12:
ori $3, $2, 12
bgez $3, TAG13
addiu $3, $2, 13
sb $2, 0($3)
TAG13:
mthi $3
lui $1, 12
xori $3, $3, 7
mthi $3
TAG14:
multu $3, $3
mtlo $3
slti $1, $3, 0
bgtz $1, TAG15
TAG15:
sub $4, $1, $1
sb $1, 0($1)
mflo $1
lb $4, 0($1)
TAG16:
sw $4, 0($4)
lui $1, 12
multu $1, $4
ori $2, $4, 13
TAG17:
mflo $3
lb $1, 0($2)
lb $4, 0($2)
mult $1, $1
TAG18:
sb $4, 0($4)
ori $3, $4, 10
mult $4, $3
beq $3, $4, TAG19
TAG19:
lhu $3, 0($3)
mult $3, $3
beq $3, $3, TAG20
lui $1, 14
TAG20:
bne $1, $1, TAG21
sllv $3, $1, $1
sll $0, $0, 0
beq $1, $1, TAG21
TAG21:
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
xori $2, $1, 15
TAG22:
mthi $2
mtlo $2
blez $2, TAG23
mult $2, $2
TAG23:
blez $2, TAG24
addiu $2, $2, 14
multu $2, $2
mfhi $3
TAG24:
lui $2, 7
sw $2, -196($3)
sh $3, -196($3)
mflo $2
TAG25:
sll $0, $0, 0
bgtz $2, TAG26
lui $4, 4
mthi $2
TAG26:
divu $4, $4
sll $0, $0, 0
or $2, $4, $4
lui $3, 14
TAG27:
mthi $3
lui $4, 15
blez $4, TAG28
slti $3, $4, 14
TAG28:
bne $3, $3, TAG29
addiu $1, $3, 4
mthi $1
sw $3, 0($1)
TAG29:
mflo $4
sb $1, 0($1)
lbu $4, 0($4)
lb $1, 0($4)
TAG30:
mtlo $1
blez $1, TAG31
lui $2, 14
lbu $3, 0($1)
TAG31:
bltz $3, TAG32
lh $3, 0($3)
divu $3, $3
sb $3, -196($3)
TAG32:
lui $4, 12
mtlo $4
addiu $2, $4, 13
sb $4, -196($3)
TAG33:
slt $4, $2, $2
sw $4, 0($4)
bgez $4, TAG34
mthi $2
TAG34:
xori $1, $4, 11
lui $2, 11
mthi $1
lb $1, 0($1)
TAG35:
sh $1, 0($1)
mfhi $1
lui $4, 2
bne $1, $4, TAG36
TAG36:
lui $2, 8
mflo $1
mfhi $4
divu $1, $2
TAG37:
slt $4, $4, $4
sb $4, 0($4)
lb $4, 0($4)
bgez $4, TAG38
TAG38:
mtlo $4
lh $4, 0($4)
lb $1, 0($4)
lui $2, 11
TAG39:
mtlo $2
divu $2, $2
div $2, $2
sll $1, $2, 11
TAG40:
bne $1, $1, TAG41
addu $1, $1, $1
multu $1, $1
beq $1, $1, TAG41
TAG41:
lui $1, 15
mflo $2
sll $0, $0, 0
mthi $1
TAG42:
ori $4, $2, 9
lb $4, 0($4)
mthi $4
bltz $2, TAG43
TAG43:
lui $3, 7
mult $3, $3
bne $3, $4, TAG44
mfhi $2
TAG44:
mthi $2
mtlo $2
beq $2, $2, TAG45
sra $2, $2, 3
TAG45:
beq $2, $2, TAG46
multu $2, $2
beq $2, $2, TAG46
sltu $3, $2, $2
TAG46:
sll $0, $0, 0
divu $4, $3
bne $4, $4, TAG47
xori $1, $3, 1
TAG47:
lui $3, 5
sll $0, $0, 0
sra $2, $3, 14
lui $4, 2
TAG48:
subu $2, $4, $4
blez $4, TAG49
sll $0, $0, 0
slti $3, $4, 10
TAG49:
beq $3, $3, TAG50
lui $3, 8
lui $3, 11
blez $3, TAG50
TAG50:
sll $0, $0, 0
bltz $3, TAG51
mult $3, $3
mtlo $3
TAG51:
sll $0, $0, 0
multu $3, $3
xor $1, $3, $3
mfhi $4
TAG52:
sltu $2, $4, $4
mfhi $4
mfhi $3
mfhi $3
TAG53:
lui $2, 12
bgez $3, TAG54
sw $2, 0($3)
lhu $2, 0($2)
TAG54:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
div $4, $4
TAG55:
mthi $4
mtlo $4
mfhi $3
sltiu $2, $4, 8
TAG56:
mtlo $2
lui $3, 10
lui $4, 7
sb $4, 0($2)
TAG57:
beq $4, $4, TAG58
div $4, $4
xor $2, $4, $4
lw $1, 0($4)
TAG58:
mthi $1
sllv $1, $1, $1
bgtz $1, TAG59
mtlo $1
TAG59:
sb $1, 0($1)
mult $1, $1
mfhi $3
sh $1, 0($3)
TAG60:
sltiu $4, $3, 1
add $3, $3, $3
mthi $3
mflo $2
TAG61:
blez $2, TAG62
sh $2, 0($2)
mflo $2
sh $2, 0($2)
TAG62:
lbu $2, 0($2)
xori $3, $2, 5
lw $4, 0($2)
mflo $4
TAG63:
lui $3, 8
divu $3, $3
sw $3, 0($4)
or $2, $3, $3
TAG64:
bgtz $2, TAG65
nor $2, $2, $2
mflo $3
andi $1, $3, 0
TAG65:
multu $1, $1
bltz $1, TAG66
srav $2, $1, $1
sra $1, $2, 5
TAG66:
lui $3, 7
mult $1, $1
mtlo $3
sll $0, $0, 0
TAG67:
sll $0, $0, 0
srav $1, $3, $3
bgtz $1, TAG68
lui $4, 1
TAG68:
sll $0, $0, 0
lhu $1, 0($2)
sll $0, $0, 0
mflo $3
TAG69:
mthi $3
mflo $1
multu $3, $3
mfhi $1
TAG70:
lui $2, 10
lbu $4, 0($1)
lui $2, 2
mfhi $4
TAG71:
lui $3, 12
sll $0, $0, 0
lui $1, 7
multu $2, $3
TAG72:
divu $1, $1
bgez $1, TAG73
mtlo $1
add $1, $1, $1
TAG73:
lui $3, 10
nor $4, $1, $1
addiu $3, $1, 7
mult $4, $3
TAG74:
div $3, $3
sll $0, $0, 0
lui $4, 3
mtlo $3
TAG75:
bne $4, $4, TAG76
mfhi $2
lw $1, 0($2)
mthi $2
TAG76:
mult $1, $1
sll $0, $0, 0
bgtz $1, TAG77
mtlo $1
TAG77:
sll $0, $0, 0
mthi $1
mtlo $1
lui $2, 5
TAG78:
multu $2, $2
lui $2, 2
sll $0, $0, 0
addiu $3, $2, 5
TAG79:
mthi $3
or $3, $3, $3
blez $3, TAG80
lui $3, 4
TAG80:
sll $0, $0, 0
srlv $4, $1, $3
bne $4, $1, TAG81
subu $3, $1, $3
TAG81:
bgtz $3, TAG82
sll $0, $0, 0
bne $3, $3, TAG82
slti $4, $3, 12
TAG82:
subu $2, $4, $4
srl $2, $4, 13
and $3, $2, $4
lui $4, 13
TAG83:
lui $4, 6
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG84:
lui $3, 3
lui $4, 5
sltiu $3, $3, 5
addi $2, $3, 4
TAG85:
lui $1, 13
beq $2, $1, TAG86
mthi $2
mflo $4
TAG86:
beq $4, $4, TAG87
andi $3, $4, 11
beq $3, $3, TAG87
div $4, $3
TAG87:
blez $3, TAG88
addu $4, $3, $3
slti $1, $4, 1
mfhi $1
TAG88:
slt $1, $1, $1
multu $1, $1
bgtz $1, TAG89
lui $4, 11
TAG89:
srlv $3, $4, $4
mflo $4
lui $4, 13
bne $4, $4, TAG90
TAG90:
srl $1, $4, 3
addu $1, $1, $4
lui $3, 6
beq $3, $1, TAG91
TAG91:
or $1, $3, $3
sra $2, $3, 6
nor $1, $1, $1
blez $1, TAG92
TAG92:
sll $0, $0, 0
blez $1, TAG93
sllv $1, $1, $1
mflo $3
TAG93:
sll $0, $0, 0
xor $2, $3, $3
bne $2, $2, TAG94
mfhi $1
TAG94:
mult $1, $1
ori $1, $1, 12
sw $1, 0($1)
divu $1, $1
TAG95:
lb $1, 0($1)
addu $4, $1, $1
mflo $4
xori $2, $1, 3
TAG96:
sb $2, 0($2)
slti $1, $2, 14
sra $3, $1, 4
sw $3, 0($1)
TAG97:
lhu $2, 0($3)
mfhi $3
mtlo $3
lh $3, 0($3)
TAG98:
lbu $4, 0($3)
bgez $3, TAG99
mtlo $4
lui $1, 14
TAG99:
mfhi $1
lui $3, 9
sll $0, $0, 0
xor $3, $1, $1
TAG100:
beq $3, $3, TAG101
sltiu $2, $3, 13
mult $2, $2
lw $2, 0($2)
TAG101:
bltz $2, TAG102
mult $2, $2
mtlo $2
lui $3, 14
TAG102:
lui $3, 0
beq $3, $3, TAG103
slti $3, $3, 0
sw $3, 0($3)
TAG103:
mflo $1
srav $2, $3, $1
sll $3, $3, 14
or $4, $2, $1
TAG104:
div $4, $4
blez $4, TAG105
sltu $1, $4, $4
bne $1, $4, TAG105
TAG105:
mfhi $2
mfhi $1
sb $1, 0($1)
mthi $1
TAG106:
bne $1, $1, TAG107
lh $4, 0($1)
lui $3, 7
blez $3, TAG107
TAG107:
sll $0, $0, 0
mfhi $4
lh $2, 0($4)
lui $2, 7
TAG108:
lui $3, 13
mfhi $1
lui $1, 5
sll $0, $0, 0
TAG109:
bne $2, $2, TAG110
mtlo $2
multu $2, $2
addu $4, $2, $2
TAG110:
lui $1, 5
sll $0, $0, 0
slt $3, $1, $4
sll $0, $0, 0
TAG111:
mthi $3
mthi $3
ori $2, $3, 6
lui $1, 12
TAG112:
blez $1, TAG113
sll $0, $0, 0
sltiu $1, $1, 4
mfhi $2
TAG113:
bne $2, $2, TAG114
sltu $3, $2, $2
bltz $2, TAG114
mfhi $3
TAG114:
mfhi $2
lbu $4, 0($2)
lui $1, 3
beq $3, $1, TAG115
TAG115:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG116:
multu $3, $3
mtlo $3
blez $3, TAG117
andi $4, $3, 3
TAG117:
sra $1, $4, 3
mfhi $2
mult $4, $1
lui $3, 1
TAG118:
mthi $3
mthi $3
beq $3, $3, TAG119
lui $3, 10
TAG119:
lui $3, 5
bne $3, $3, TAG120
sll $0, $0, 0
and $2, $1, $3
TAG120:
bgtz $2, TAG121
mflo $3
bne $2, $2, TAG121
lhu $1, 0($3)
TAG121:
mult $1, $1
slt $4, $1, $1
addi $1, $1, 2
mtlo $1
TAG122:
nor $1, $1, $1
lui $4, 4
addu $3, $1, $1
bgez $1, TAG123
TAG123:
addiu $3, $3, 15
lui $1, 13
sb $3, 0($3)
blez $3, TAG124
TAG124:
mflo $1
multu $1, $1
sb $1, 0($1)
divu $1, $1
TAG125:
mtlo $1
lui $1, 6
blez $1, TAG126
srlv $4, $1, $1
TAG126:
sll $0, $0, 0
blez $4, TAG127
sll $0, $0, 0
sll $0, $0, 0
TAG127:
sll $0, $0, 0
lui $2, 7
addiu $3, $1, 14
addu $3, $3, $3
TAG128:
divu $3, $3
sll $0, $0, 0
bne $3, $3, TAG129
or $2, $3, $3
TAG129:
mthi $2
lui $3, 1
mtlo $3
beq $2, $2, TAG130
TAG130:
slti $3, $3, 2
sb $3, 0($3)
subu $4, $3, $3
sh $3, 0($4)
TAG131:
lui $2, 11
lui $1, 7
sll $0, $0, 0
mthi $1
TAG132:
ori $4, $4, 14
lui $2, 1
sh $4, 0($4)
srav $2, $4, $2
TAG133:
lbu $2, 0($2)
divu $2, $2
addiu $2, $2, 6
sw $2, 0($2)
TAG134:
or $1, $2, $2
mthi $2
multu $1, $2
lui $4, 4
TAG135:
div $4, $4
sll $0, $0, 0
divu $4, $4
lui $1, 12
TAG136:
sll $0, $0, 0
sltiu $2, $1, 5
multu $2, $2
lui $1, 0
TAG137:
andi $3, $1, 15
mult $1, $3
lb $1, 0($3)
xori $4, $1, 10
TAG138:
srl $3, $4, 3
beq $4, $3, TAG139
subu $2, $4, $3
lbu $4, 0($2)
TAG139:
mult $4, $4
beq $4, $4, TAG140
lui $3, 8
sw $3, 0($3)
TAG140:
blez $3, TAG141
sll $0, $0, 0
ori $3, $3, 1
or $3, $2, $2
TAG141:
mfhi $3
lui $1, 8
lui $4, 13
sub $3, $3, $3
TAG142:
lui $4, 14
mfhi $2
beq $2, $4, TAG143
mult $4, $2
TAG143:
addiu $4, $2, 6
mult $2, $4
sh $4, 0($4)
mthi $4
TAG144:
beq $4, $4, TAG145
lui $2, 10
sll $3, $2, 13
lui $3, 13
TAG145:
sra $3, $3, 12
beq $3, $3, TAG146
lui $4, 8
srav $3, $4, $4
TAG146:
srlv $4, $3, $3
lb $2, 0($4)
and $3, $4, $3
bgtz $3, TAG147
TAG147:
lw $4, 0($3)
mflo $1
bgez $4, TAG148
multu $4, $1
TAG148:
addu $3, $1, $1
mtlo $3
lh $1, 0($1)
mtlo $1
TAG149:
sra $2, $1, 14
mfhi $2
multu $2, $2
mflo $2
TAG150:
mthi $2
srav $1, $2, $2
mthi $2
mflo $1
TAG151:
beq $1, $1, TAG152
sb $1, 0($1)
divu $1, $1
blez $1, TAG152
TAG152:
sltiu $2, $1, 3
mfhi $4
mtlo $2
sltiu $3, $1, 15
TAG153:
subu $2, $3, $3
mtlo $3
bgtz $3, TAG154
sb $3, 0($3)
TAG154:
mult $2, $2
sh $2, 0($2)
lw $1, 0($2)
mthi $2
TAG155:
lui $4, 7
and $4, $4, $4
slt $3, $4, $4
sll $0, $0, 0
TAG156:
bne $3, $3, TAG157
mtlo $3
sw $3, 0($3)
lhu $4, 0($3)
TAG157:
lui $2, 14
mfhi $1
sltiu $2, $1, 7
mfhi $2
TAG158:
mfhi $4
slt $1, $2, $2
mfhi $3
mtlo $4
TAG159:
lui $1, 4
mthi $3
mtlo $1
lb $2, 0($3)
TAG160:
mthi $2
bne $2, $2, TAG161
srl $2, $2, 8
lb $3, 0($2)
TAG161:
mthi $3
bgez $3, TAG162
multu $3, $3
bltz $3, TAG162
TAG162:
lui $3, 7
srlv $1, $3, $3
bne $1, $3, TAG163
div $1, $3
TAG163:
bne $1, $1, TAG164
sll $0, $0, 0
sll $0, $0, 0
lui $3, 11
TAG164:
sllv $4, $3, $3
divu $4, $4
mfhi $2
beq $4, $4, TAG165
TAG165:
sh $2, 0($2)
bgez $2, TAG166
lui $2, 14
div $2, $2
TAG166:
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
mfhi $3
TAG167:
slti $3, $3, 6
mthi $3
addiu $1, $3, 0
mfhi $1
TAG168:
sb $1, 0($1)
mflo $3
mfhi $3
mthi $3
TAG169:
lui $1, 10
mflo $1
divu $1, $1
lb $1, 0($3)
TAG170:
bne $1, $1, TAG171
ori $1, $1, 5
addiu $2, $1, 12
mult $1, $2
TAG171:
sltu $3, $2, $2
sh $3, 0($3)
mfhi $3
sb $3, 0($3)
TAG172:
bltz $3, TAG173
multu $3, $3
sw $3, 0($3)
lui $1, 9
TAG173:
srlv $2, $1, $1
sll $0, $0, 0
mthi $1
sltu $2, $2, $1
TAG174:
bne $2, $2, TAG175
mtlo $2
mtlo $2
multu $2, $2
TAG175:
sb $2, 0($2)
mflo $2
bgez $2, TAG176
andi $4, $2, 7
TAG176:
addu $2, $4, $4
lui $3, 5
lui $3, 12
sh $2, 0($4)
TAG177:
mflo $1
lb $3, 0($1)
lbu $2, 0($3)
or $4, $1, $3
TAG178:
mfhi $4
subu $3, $4, $4
sltu $3, $3, $4
beq $4, $4, TAG179
TAG179:
sllv $4, $3, $3
lhu $3, 0($4)
mult $3, $3
lb $2, 0($3)
TAG180:
sltiu $4, $2, 1
xor $2, $2, $2
mflo $1
lui $3, 1
TAG181:
addiu $1, $3, 8
mult $3, $3
bne $3, $3, TAG182
nor $4, $1, $3
TAG182:
sll $0, $0, 0
mflo $4
beq $4, $4, TAG183
mflo $3
TAG183:
sb $3, 0($3)
bgtz $3, TAG184
mult $3, $3
sh $3, 0($3)
TAG184:
mult $3, $3
sb $3, 0($3)
addiu $3, $3, 5
div $3, $3
TAG185:
mfhi $3
sw $3, 0($3)
bgtz $3, TAG186
addi $4, $3, 4
TAG186:
addiu $3, $4, 7
bltz $3, TAG187
lui $1, 13
blez $4, TAG187
TAG187:
mthi $1
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG188:
bne $1, $1, TAG189
mtlo $1
sll $0, $0, 0
mthi $1
TAG189:
beq $1, $1, TAG190
mtlo $1
srav $1, $1, $1
lh $1, 0($1)
TAG190:
addiu $3, $1, 12
srav $2, $3, $3
sll $0, $0, 0
slti $1, $3, 7
TAG191:
sh $1, 0($1)
lui $3, 5
addi $3, $1, 8
slti $4, $3, 13
TAG192:
slti $3, $4, 9
mfhi $2
mfhi $1
mtlo $3
TAG193:
sll $0, $0, 0
slti $3, $1, 11
lbu $1, 0($3)
mflo $1
TAG194:
lbu $4, 0($1)
mult $1, $4
bgez $1, TAG195
or $1, $1, $1
TAG195:
lui $4, 2
multu $4, $4
addiu $4, $1, 4
mthi $4
TAG196:
lui $2, 13
lui $4, 2
mthi $2
mfhi $2
TAG197:
bne $2, $2, TAG198
divu $2, $2
bgtz $2, TAG198
sll $0, $0, 0
TAG198:
sll $0, $0, 0
xor $4, $2, $2
lui $4, 2
bgtz $4, TAG199
TAG199:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG200:
addu $4, $1, $1
lbu $3, 0($1)
sub $1, $3, $1
blez $1, TAG201
TAG201:
lui $3, 1
blez $1, TAG202
mtlo $3
xor $2, $3, $3
TAG202:
sll $0, $0, 0
bgez $2, TAG203
divu $2, $2
lui $2, 8
TAG203:
srav $1, $2, $2
divu $2, $2
mfhi $2
multu $2, $2
TAG204:
bgtz $2, TAG205
sll $3, $2, 12
lui $3, 3
srlv $1, $3, $3
TAG205:
sll $0, $0, 0
mfhi $1
bgtz $1, TAG206
sh $1, 0($1)
TAG206:
lbu $1, 0($1)
beq $1, $1, TAG207
mfhi $3
bgtz $3, TAG207
TAG207:
multu $3, $3
multu $3, $3
srav $1, $3, $3
lui $1, 3
TAG208:
lui $1, 1
bne $1, $1, TAG209
slti $2, $1, 6
nor $3, $1, $1
TAG209:
sll $0, $0, 0
blez $3, TAG210
multu $3, $3
divu $3, $3
TAG210:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
lui $4, 14
TAG211:
div $4, $4
mfhi $2
lbu $1, 0($2)
lui $1, 4
TAG212:
sll $0, $0, 0
slti $4, $1, 2
div $1, $1
blez $1, TAG213
TAG213:
lui $1, 15
mtlo $1
beq $1, $1, TAG214
sw $1, 0($4)
TAG214:
sll $0, $0, 0
lui $3, 3
div $1, $1
sll $0, $0, 0
TAG215:
sllv $1, $3, $3
subu $2, $3, $3
blez $1, TAG216
lw $1, 0($2)
TAG216:
sll $0, $0, 0
mult $1, $1
bne $1, $1, TAG217
sll $4, $1, 7
TAG217:
mflo $1
lui $4, 14
bgez $4, TAG218
sll $0, $0, 0
TAG218:
mfhi $3
bgez $4, TAG219
sll $4, $4, 14
sll $4, $3, 8
TAG219:
xor $3, $4, $4
sllv $1, $4, $3
lui $1, 5
mthi $1
TAG220:
blez $1, TAG221
nor $4, $1, $1
bgez $4, TAG221
mfhi $1
TAG221:
blez $1, TAG222
sll $0, $0, 0
mtlo $1
lui $4, 4
TAG222:
beq $4, $4, TAG223
lui $2, 9
lhu $4, 0($4)
div $4, $2
TAG223:
sll $0, $0, 0
sll $4, $3, 1
mfhi $3
mthi $4
TAG224:
sll $0, $0, 0
mflo $4
mflo $4
sll $0, $0, 0
TAG225:
bne $1, $1, TAG226
sll $0, $0, 0
ori $3, $1, 13
mtlo $1
TAG226:
mthi $3
divu $3, $3
mthi $3
sll $0, $0, 0
TAG227:
sll $0, $0, 0
sltiu $2, $3, 13
mfhi $3
sll $0, $0, 0
TAG228:
bltz $2, TAG229
mflo $3
mtlo $2
ori $3, $2, 7
TAG229:
beq $3, $3, TAG230
lbu $2, 0($3)
div $3, $3
lui $4, 8
TAG230:
multu $4, $4
lui $3, 9
bgtz $3, TAG231
mfhi $2
TAG231:
mthi $2
mult $2, $2
xor $4, $2, $2
sb $4, 0($2)
TAG232:
addu $4, $4, $4
lui $1, 15
multu $4, $4
bgez $4, TAG233
TAG233:
mult $1, $1
mfhi $3
sll $0, $0, 0
lui $2, 11
TAG234:
bne $2, $2, TAG235
sll $0, $0, 0
addu $3, $2, $2
lui $3, 11
TAG235:
xori $4, $3, 7
lui $3, 1
beq $4, $3, TAG236
mult $3, $3
TAG236:
blez $3, TAG237
lui $2, 8
mthi $2
sll $0, $0, 0
TAG237:
mfhi $1
mfhi $2
subu $2, $1, $1
sh $1, 0($2)
TAG238:
bne $2, $2, TAG239
mfhi $4
mfhi $1
lhu $2, 0($2)
TAG239:
sh $2, 0($2)
addu $4, $2, $2
multu $2, $2
mfhi $2
TAG240:
sh $2, 0($2)
bne $2, $2, TAG241
lui $2, 12
blez $2, TAG241
TAG241:
mthi $2
sll $0, $0, 0
mtlo $1
sll $3, $2, 9
TAG242:
lui $4, 13
mtlo $3
beq $4, $3, TAG243
sll $0, $0, 0
TAG243:
sll $0, $0, 0
lui $1, 1
subu $4, $1, $1
lbu $2, 0($4)
TAG244:
and $1, $2, $2
bltz $1, TAG245
xor $1, $2, $1
sh $1, 0($1)
TAG245:
sra $2, $1, 6
lh $4, 0($2)
mflo $3
beq $1, $3, TAG246
TAG246:
sltu $1, $3, $3
mthi $1
lui $2, 5
xor $2, $3, $1
TAG247:
lui $2, 8
lui $2, 2
bne $2, $2, TAG248
srl $1, $2, 3
TAG248:
bne $1, $1, TAG249
mthi $1
beq $1, $1, TAG249
subu $1, $1, $1
TAG249:
bne $1, $1, TAG250
mtlo $1
lh $3, 0($1)
sll $4, $1, 7
TAG250:
mfhi $3
mfhi $4
mfhi $2
divu $2, $2
TAG251:
sltiu $1, $2, 3
mfhi $2
srav $2, $1, $2
bgez $2, TAG252
TAG252:
sb $2, 0($2)
mfhi $4
srav $3, $2, $2
addiu $2, $4, 8
TAG253:
andi $1, $2, 14
lbu $2, 0($1)
lui $1, 6
sll $0, $0, 0
TAG254:
bne $2, $2, TAG255
mflo $4
mthi $2
lui $3, 10
TAG255:
slti $4, $3, 14
lb $3, 0($4)
addiu $3, $4, 1
addiu $2, $3, 0
TAG256:
mthi $2
blez $2, TAG257
mthi $2
beq $2, $2, TAG257
TAG257:
subu $1, $2, $2
sll $3, $1, 1
div $1, $2
lbu $2, 0($2)
TAG258:
multu $2, $2
mthi $2
lhu $1, 0($2)
mult $1, $1
TAG259:
sll $2, $1, 1
multu $1, $2
mult $1, $2
blez $1, TAG260
TAG260:
xor $4, $2, $2
multu $4, $4
add $1, $4, $2
xor $2, $1, $1
TAG261:
multu $2, $2
mflo $3
sltiu $2, $2, 2
lui $1, 8
TAG262:
div $1, $1
bltz $1, TAG263
mflo $2
lui $4, 9
TAG263:
bgtz $4, TAG264
sll $0, $0, 0
mult $4, $4
andi $4, $4, 4
TAG264:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG265
lui $1, 13
TAG265:
mult $1, $1
beq $1, $1, TAG266
mult $1, $1
bgez $1, TAG266
TAG266:
mult $1, $1
sll $0, $0, 0
or $1, $1, $1
sll $0, $0, 0
TAG267:
sll $0, $0, 0
bne $1, $1, TAG268
addu $4, $1, $1
or $3, $4, $1
TAG268:
mthi $3
mflo $4
sll $0, $0, 0
beq $3, $4, TAG269
TAG269:
xori $3, $4, 9
mthi $3
andi $2, $4, 13
sb $2, 0($4)
TAG270:
bltz $2, TAG271
mfhi $3
srav $4, $3, $2
mfhi $3
TAG271:
mult $3, $3
mflo $4
addiu $4, $3, 3
xor $1, $4, $4
TAG272:
sltiu $1, $1, 5
bgtz $1, TAG273
lb $4, 0($1)
srav $3, $1, $4
TAG273:
addu $4, $3, $3
blez $4, TAG274
divu $3, $4
mfhi $1
TAG274:
bne $1, $1, TAG275
mthi $1
subu $3, $1, $1
bne $3, $3, TAG275
TAG275:
lb $4, 0($3)
mtlo $3
sw $3, 0($3)
add $3, $4, $4
TAG276:
sb $3, 0($3)
mfhi $1
sltiu $3, $3, 4
lui $2, 11
TAG277:
beq $2, $2, TAG278
lui $2, 9
lui $2, 7
mthi $2
TAG278:
mfhi $3
bltz $2, TAG279
sll $0, $0, 0
slti $3, $3, 5
TAG279:
sw $3, 0($3)
multu $3, $3
bltz $3, TAG280
mfhi $3
TAG280:
lb $4, 0($3)
xori $2, $3, 10
mfhi $4
mthi $2
TAG281:
andi $4, $4, 12
lw $2, 0($4)
mthi $4
slt $2, $4, $2
TAG282:
lw $1, 0($2)
bne $1, $2, TAG283
mult $2, $1
bne $2, $1, TAG283
TAG283:
addiu $3, $1, 3
mflo $3
lh $4, 0($1)
lh $1, 0($3)
TAG284:
sllv $2, $1, $1
lbu $1, 0($2)
mflo $3
or $3, $1, $3
TAG285:
multu $3, $3
sll $2, $3, 6
addiu $3, $2, 7
slti $4, $2, 15
TAG286:
bne $4, $4, TAG287
mfhi $3
lhu $1, 0($3)
lb $3, 0($4)
TAG287:
bgtz $3, TAG288
nor $2, $3, $3
mult $2, $3
sh $3, 0($3)
TAG288:
mflo $4
lui $2, 8
beq $4, $4, TAG289
sll $0, $0, 0
TAG289:
lui $1, 6
nor $1, $2, $1
beq $2, $2, TAG290
mtlo $2
TAG290:
subu $3, $1, $1
sh $1, 0($3)
srav $4, $3, $1
mthi $4
TAG291:
sh $4, 0($4)
slt $3, $4, $4
mthi $4
mult $3, $4
TAG292:
slti $2, $3, 1
lb $2, 0($2)
xori $3, $3, 4
lbu $4, 0($3)
TAG293:
bgtz $4, TAG294
sll $3, $4, 11
sh $4, 0($4)
sw $3, 0($4)
TAG294:
mtlo $3
mtlo $3
div $3, $3
lhu $1, -8192($3)
TAG295:
lbu $1, 0($1)
bgez $1, TAG296
addiu $4, $1, 12
bne $1, $1, TAG296
TAG296:
mtlo $4
subu $4, $4, $4
sub $1, $4, $4
slt $2, $4, $4
TAG297:
lui $3, 11
bne $3, $2, TAG298
lui $1, 13
sh $2, 0($2)
TAG298:
lui $2, 12
beq $1, $1, TAG299
slti $3, $1, 5
lhu $1, 0($1)
TAG299:
sll $0, $0, 0
mfhi $2
lui $4, 5
mthi $2
TAG300:
mthi $4
sll $0, $0, 0
lui $4, 0
nor $1, $4, $4
TAG301:
addiu $2, $1, 2
multu $2, $2
bne $1, $2, TAG302
mthi $2
TAG302:
sb $2, 0($2)
mtlo $2
mult $2, $2
multu $2, $2
TAG303:
mfhi $3
xori $3, $2, 9
srlv $1, $2, $3
nor $1, $3, $3
TAG304:
bgtz $1, TAG305
lbu $3, 9($1)
mfhi $4
mflo $2
TAG305:
lui $2, 12
sll $0, $0, 0
lui $2, 6
bgtz $2, TAG306
TAG306:
div $2, $2
lui $3, 14
slti $2, $3, 15
beq $2, $2, TAG307
TAG307:
lb $2, 0($2)
bgtz $2, TAG308
mflo $1
mult $1, $2
TAG308:
lbu $2, 0($1)
sltu $4, $1, $1
blez $1, TAG309
sb $2, 0($2)
TAG309:
mtlo $4
mflo $4
bgez $4, TAG310
sh $4, 0($4)
TAG310:
mtlo $4
mflo $2
bne $2, $2, TAG311
lui $1, 8
TAG311:
ori $1, $1, 2
lui $3, 4
beq $3, $3, TAG312
lui $2, 13
TAG312:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG313:
andi $4, $2, 8
bne $4, $4, TAG314
mfhi $4
addi $4, $4, 4
TAG314:
mtlo $4
mflo $1
blez $1, TAG315
xori $2, $4, 9
TAG315:
sb $2, 0($2)
beq $2, $2, TAG316
sltiu $3, $2, 14
lhu $4, 0($3)
TAG316:
mflo $2
bgez $2, TAG317
mfhi $1
bgez $2, TAG317
TAG317:
multu $1, $1
mfhi $2
mtlo $1
mfhi $2
TAG318:
mfhi $1
mflo $2
lh $3, 0($2)
sb $2, 0($2)
TAG319:
mflo $2
sw $2, 0($3)
lui $1, 14
blez $1, TAG320
TAG320:
mfhi $1
mthi $1
mfhi $4
slt $1, $4, $1
TAG321:
srav $4, $1, $1
bgez $4, TAG322
mflo $1
mthi $1
TAG322:
addiu $2, $1, 0
mflo $4
bne $2, $4, TAG323
lui $4, 7
TAG323:
sra $1, $4, 6
sll $0, $0, 0
sb $4, -7168($1)
sll $0, $0, 0
TAG324:
mtlo $1
lui $2, 9
xori $1, $2, 15
lui $4, 3
TAG325:
mthi $4
mtlo $4
lui $3, 6
sll $0, $0, 0
TAG326:
mthi $2
xori $4, $2, 11
sllv $2, $2, $2
blez $4, TAG327
TAG327:
sll $0, $0, 0
mult $1, $1
addu $4, $2, $2
sll $0, $0, 0
TAG328:
mult $4, $4
multu $4, $4
mflo $1
div $1, $4
TAG329:
mthi $1
lui $3, 5
bgtz $3, TAG330
sllv $4, $1, $3
TAG330:
sh $4, 0($4)
addu $2, $4, $4
lui $4, 4
lui $4, 13
TAG331:
sltu $3, $4, $4
lui $1, 9
bltz $3, TAG332
lui $1, 14
TAG332:
srlv $3, $1, $1
lui $4, 11
beq $3, $3, TAG333
mthi $1
TAG333:
sra $3, $4, 4
slt $4, $3, $4
mtlo $4
sra $2, $4, 1
TAG334:
lh $2, 0($2)
addu $1, $2, $2
bgez $2, TAG335
andi $4, $1, 3
TAG335:
mthi $4
mflo $4
bltz $4, TAG336
mflo $3
TAG336:
mtlo $3
div $3, $3
multu $3, $3
bne $3, $3, TAG337
TAG337:
sb $3, 0($3)
lui $4, 8
div $3, $4
sb $4, 0($3)
TAG338:
bne $4, $4, TAG339
mfhi $3
sll $0, $0, 0
mtlo $3
TAG339:
bgtz $2, TAG340
mtlo $2
mfhi $2
mflo $4
TAG340:
lb $4, 0($4)
mfhi $1
lui $3, 2
lui $1, 10
TAG341:
bne $1, $1, TAG342
srav $1, $1, $1
lui $3, 4
lui $1, 10
TAG342:
subu $4, $1, $1
mtlo $1
bltz $1, TAG343
slt $4, $4, $1
TAG343:
andi $3, $4, 14
multu $4, $3
lui $2, 1
lui $3, 11
TAG344:
mfhi $3
andi $3, $3, 3
beq $3, $3, TAG345
lbu $2, 0($3)
TAG345:
mult $2, $2
bne $2, $2, TAG346
andi $1, $2, 7
bgtz $2, TAG346
TAG346:
mflo $4
add $1, $1, $1
addu $2, $1, $1
mflo $1
TAG347:
mfhi $1
sw $1, 0($1)
bne $1, $1, TAG348
sub $1, $1, $1
TAG348:
lui $3, 0
beq $1, $1, TAG349
sb $3, 0($1)
beq $1, $1, TAG349
TAG349:
mult $3, $3
mfhi $1
lbu $3, 0($3)
mflo $4
TAG350:
lui $4, 13
mthi $4
bne $4, $4, TAG351
sll $0, $0, 0
TAG351:
sll $0, $0, 0
mtlo $4
mult $4, $4
lui $2, 7
TAG352:
srlv $1, $2, $2
sll $0, $0, 0
beq $2, $1, TAG353
sll $0, $0, 0
TAG353:
sw $3, 0($3)
mthi $3
mflo $3
lb $2, 0($3)
TAG354:
bgez $2, TAG355
mflo $4
bgez $2, TAG355
lh $2, 0($4)
TAG355:
lui $3, 11
mthi $2
mtlo $2
bltz $3, TAG356
TAG356:
mflo $3
beq $3, $3, TAG357
mfhi $1
bne $1, $3, TAG357
TAG357:
mult $1, $1
multu $1, $1
sb $1, 0($1)
mtlo $1
TAG358:
srl $2, $1, 2
sb $2, 0($1)
mult $1, $1
beq $2, $2, TAG359
TAG359:
lui $1, 5
mtlo $1
bgtz $1, TAG360
mtlo $2
TAG360:
sltiu $1, $1, 5
mult $1, $1
mult $1, $1
bne $1, $1, TAG361
TAG361:
mthi $1
mthi $1
multu $1, $1
bgez $1, TAG362
TAG362:
sub $3, $1, $1
lui $1, 12
lui $2, 13
lui $4, 7
TAG363:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
mthi $4
TAG364:
bne $4, $4, TAG365
lui $1, 10
lui $2, 0
mthi $4
TAG365:
lh $3, 0($2)
srlv $4, $2, $2
mult $4, $2
lui $4, 9
TAG366:
beq $4, $4, TAG367
sll $0, $0, 0
sll $3, $1, 1
beq $3, $3, TAG367
TAG367:
addi $4, $3, 9
subu $2, $4, $4
sh $2, 0($3)
bgtz $3, TAG368
TAG368:
mflo $2
sltu $3, $2, $2
mthi $2
bne $3, $2, TAG369
TAG369:
xori $2, $3, 3
sw $3, 0($3)
lui $3, 3
bgez $2, TAG370
TAG370:
multu $3, $3
mtlo $3
divu $3, $3
bgtz $3, TAG371
TAG371:
sllv $4, $3, $3
lui $1, 1
mthi $1
srlv $2, $3, $1
TAG372:
beq $2, $2, TAG373
divu $2, $2
blez $2, TAG373
sra $1, $2, 9
TAG373:
sllv $2, $1, $1
mflo $3
lbu $4, 0($3)
mfhi $1
TAG374:
lbu $4, 0($1)
lui $4, 15
mfhi $4
lbu $2, 0($4)
TAG375:
mtlo $2
lb $4, 0($2)
lw $3, 0($4)
mtlo $4
TAG376:
mult $3, $3
andi $4, $3, 12
beq $3, $3, TAG377
subu $3, $3, $4
TAG377:
multu $3, $3
sb $3, 0($3)
lh $1, 0($3)
blez $1, TAG378
TAG378:
lhu $1, 0($1)
bgez $1, TAG379
andi $1, $1, 3
sh $1, 0($1)
TAG379:
sb $1, 0($1)
mthi $1
blez $1, TAG380
lui $4, 10
TAG380:
mflo $3
mthi $4
xori $3, $4, 7
mtlo $3
TAG381:
and $4, $3, $3
blez $4, TAG382
mfhi $2
addu $4, $4, $3
TAG382:
mflo $1
mthi $4
or $4, $4, $1
srav $3, $4, $4
TAG383:
lw $2, 0($3)
mtlo $2
lui $1, 3
mtlo $2
TAG384:
div $1, $1
slti $4, $1, 12
blez $4, TAG385
multu $1, $4
TAG385:
lui $2, 11
addiu $2, $4, 4
lbu $1, 0($2)
sra $4, $1, 8
TAG386:
mtlo $4
lbu $3, 0($4)
mfhi $2
addi $1, $4, 9
TAG387:
lui $1, 5
div $1, $1
bltz $1, TAG388
sll $4, $1, 9
TAG388:
mfhi $2
mtlo $2
sb $2, 0($2)
mfhi $4
TAG389:
mtlo $4
mthi $4
sll $2, $4, 2
mfhi $1
TAG390:
mthi $1
slti $3, $1, 11
mfhi $1
mfhi $3
TAG391:
srlv $1, $3, $3
mthi $3
mult $3, $1
lbu $3, 0($1)
TAG392:
sb $3, 0($3)
lbu $2, 0($3)
mult $2, $3
lui $3, 7
TAG393:
slti $1, $3, 11
addiu $4, $3, 7
addiu $2, $1, 13
blez $3, TAG394
TAG394:
lui $2, 10
xori $3, $2, 5
mtlo $3
sll $0, $0, 0
TAG395:
bltz $3, TAG396
lui $3, 0
mflo $2
lui $4, 13
TAG396:
mfhi $2
sw $2, 0($2)
sb $4, 0($2)
sllv $3, $2, $4
TAG397:
multu $3, $3
mflo $1
sb $3, 0($1)
lui $4, 4
TAG398:
addiu $1, $4, 11
mfhi $3
sh $1, 0($3)
mflo $4
TAG399:
sltu $3, $4, $4
lui $2, 4
bgtz $2, TAG400
and $4, $4, $3
TAG400:
bgtz $4, TAG401
mtlo $4
xori $1, $4, 5
mtlo $4
TAG401:
srav $2, $1, $1
ori $4, $2, 1
lb $3, 0($4)
sb $4, 0($1)
TAG402:
sltiu $1, $3, 9
sb $1, 0($1)
mthi $1
lui $1, 15
TAG403:
sll $0, $0, 0
mfhi $4
lui $2, 7
lui $1, 2
TAG404:
mtlo $1
bne $1, $1, TAG405
lui $3, 14
bltz $3, TAG405
TAG405:
xori $3, $3, 11
mfhi $3
xor $2, $3, $3
mflo $3
TAG406:
sll $0, $0, 0
mthi $3
div $3, $3
slt $1, $3, $3
TAG407:
lh $1, 0($1)
bne $1, $1, TAG408
sb $1, -267($1)
xori $3, $1, 8
TAG408:
multu $3, $3
srlv $3, $3, $3
slti $2, $3, 3
bne $2, $3, TAG409
TAG409:
lui $4, 9
mflo $1
mtlo $2
bne $1, $4, TAG410
TAG410:
mtlo $1
bne $1, $1, TAG411
mflo $2
mthi $2
TAG411:
slti $4, $2, 13
bne $4, $4, TAG412
multu $2, $4
bne $2, $4, TAG412
TAG412:
mflo $3
sltiu $2, $3, 3
mult $3, $3
bltz $4, TAG413
TAG413:
divu $2, $2
div $2, $2
mfhi $4
mflo $1
TAG414:
multu $1, $1
mthi $1
lui $3, 11
lbu $1, 0($1)
TAG415:
lui $1, 9
beq $1, $1, TAG416
mflo $1
mflo $1
TAG416:
mtlo $1
bgtz $1, TAG417
divu $1, $1
blez $1, TAG417
TAG417:
lui $1, 1
srl $2, $1, 5
sll $0, $0, 0
mthi $3
TAG418:
sll $0, $0, 0
mult $2, $3
andi $3, $2, 15
sb $2, 0($3)
TAG419:
mthi $3
bgtz $3, TAG420
lui $4, 6
lh $3, 0($3)
TAG420:
beq $3, $3, TAG421
mtlo $3
bne $3, $3, TAG421
and $3, $3, $3
TAG421:
beq $3, $3, TAG422
xor $2, $3, $3
lhu $2, 0($2)
lui $1, 4
TAG422:
sll $4, $1, 10
mult $4, $4
srl $1, $1, 15
addu $1, $4, $1
TAG423:
divu $1, $1
mthi $1
bgez $1, TAG424
mtlo $1
TAG424:
bne $1, $1, TAG425
sll $0, $0, 0
mtlo $1
mtlo $1
TAG425:
divu $3, $3
mfhi $1
mflo $3
divu $3, $3
TAG426:
multu $3, $3
blez $3, TAG427
sb $3, 0($3)
mthi $3
TAG427:
mfhi $3
lbu $4, 0($3)
beq $4, $3, TAG428
mtlo $3
TAG428:
lui $1, 10
divu $4, $1
slt $1, $4, $4
multu $4, $1
TAG429:
lui $3, 5
beq $3, $1, TAG430
mthi $3
mthi $3
TAG430:
bne $3, $3, TAG431
lui $3, 11
beq $3, $3, TAG431
srlv $3, $3, $3
TAG431:
ori $2, $3, 13
andi $3, $2, 15
mthi $3
mflo $4
TAG432:
multu $4, $4
lui $3, 13
bgtz $3, TAG433
sh $3, 0($4)
TAG433:
sll $0, $0, 0
bgez $1, TAG434
add $2, $1, $1
andi $1, $1, 9
TAG434:
bgtz $1, TAG435
mtlo $1
add $3, $1, $1
mtlo $3
TAG435:
multu $3, $3
srlv $1, $3, $3
mthi $1
addu $4, $3, $1
TAG436:
beq $4, $4, TAG437
lhu $3, 0($4)
or $2, $4, $3
mult $2, $3
TAG437:
sh $2, 0($2)
mflo $2
sllv $3, $2, $2
mult $2, $2
TAG438:
bgez $3, TAG439
multu $3, $3
sw $3, 0($3)
bgtz $3, TAG439
TAG439:
or $3, $3, $3
ori $2, $3, 10
beq $3, $2, TAG440
mtlo $3
TAG440:
lui $1, 2
lui $1, 12
beq $1, $1, TAG441
div $1, $2
TAG441:
lui $3, 8
divu $3, $3
lui $1, 1
addiu $2, $3, 14
TAG442:
mfhi $4
beq $2, $2, TAG443
sll $0, $0, 0
sub $1, $4, $4
TAG443:
mflo $4
bne $1, $4, TAG444
mflo $4
bgez $4, TAG444
TAG444:
multu $4, $4
lui $4, 12
ori $1, $4, 15
xori $2, $4, 11
TAG445:
bne $2, $2, TAG446
mfhi $3
andi $2, $2, 1
mtlo $2
TAG446:
blez $2, TAG447
sltu $1, $2, $2
lui $4, 8
bgez $4, TAG447
TAG447:
slti $1, $4, 12
mfhi $3
srl $3, $1, 5
bgtz $3, TAG448
TAG448:
lui $4, 5
mult $4, $4
mfhi $3
srlv $2, $4, $3
TAG449:
multu $2, $2
sw $2, 0($2)
nor $1, $2, $2
sw $1, 0($2)
TAG450:
sb $1, 1($1)
sra $2, $1, 2
lbu $4, 1($1)
bne $4, $4, TAG451
TAG451:
mtlo $4
bltz $4, TAG452
multu $4, $4
lui $2, 3
TAG452:
beq $2, $2, TAG453
sll $0, $0, 0
blez $2, TAG453
sub $1, $3, $3
TAG453:
sll $0, $0, 0
mult $1, $3
sb $3, 0($3)
lui $3, 4
TAG454:
beq $3, $3, TAG455
addiu $1, $3, 4
lhu $4, 0($1)
lh $1, 0($3)
TAG455:
mthi $1
bgez $1, TAG456
srl $2, $1, 6
multu $1, $2
TAG456:
bne $2, $2, TAG457
mfhi $1
bgez $2, TAG457
sw $1, -4096($2)
TAG457:
lui $3, 7
bne $1, $3, TAG458
sll $0, $0, 0
sra $4, $1, 15
TAG458:
beq $4, $4, TAG459
subu $1, $4, $4
lui $4, 14
divu $1, $4
TAG459:
sltu $2, $4, $4
lw $2, -255($4)
sll $0, $0, 0
ori $1, $2, 0
TAG460:
addu $3, $1, $1
lui $4, 15
bne $1, $4, TAG461
mfhi $2
TAG461:
lui $4, 13
mfhi $4
lui $3, 5
addiu $1, $3, 15
TAG462:
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG463:
addu $2, $4, $4
lui $1, 13
lui $1, 6
mtlo $2
TAG464:
mthi $1
mthi $1
bgtz $1, TAG465
mthi $1
TAG465:
mfhi $3
bne $3, $3, TAG466
sll $0, $0, 0
sll $0, $0, 0
TAG466:
mthi $1
bgtz $1, TAG467
sll $0, $0, 0
mthi $1
TAG467:
lui $4, 3
bne $4, $4, TAG468
lui $3, 13
sll $0, $0, 0
TAG468:
lui $2, 0
mult $3, $3
slt $4, $2, $3
blez $4, TAG469
TAG469:
sllv $2, $4, $4
beq $2, $4, TAG470
mtlo $2
lb $4, 0($4)
TAG470:
lh $3, 0($4)
and $2, $3, $3
or $4, $2, $4
mflo $3
TAG471:
sh $3, 0($3)
divu $3, $3
lb $2, 0($3)
srl $2, $2, 11
TAG472:
multu $2, $2
mult $2, $2
mflo $2
sw $2, 0($2)
TAG473:
lui $2, 14
mflo $1
divu $1, $2
mfhi $1
TAG474:
lui $2, 14
sll $0, $0, 0
mult $1, $2
mfhi $4
TAG475:
bgtz $4, TAG476
mflo $2
multu $2, $2
ori $4, $2, 8
TAG476:
sh $4, 0($4)
sltiu $3, $4, 0
mflo $3
lbu $4, 0($3)
TAG477:
mult $4, $4
mtlo $4
sh $4, 0($4)
lui $3, 15
TAG478:
sll $0, $0, 0
lui $2, 1
sll $0, $0, 0
mfhi $1
TAG479:
bgez $1, TAG480
lui $2, 14
lh $4, 0($2)
bltz $4, TAG480
TAG480:
multu $4, $4
mtlo $4
mult $4, $4
multu $4, $4
TAG481:
sllv $3, $4, $4
lh $4, 0($4)
sh $4, 0($3)
srl $1, $4, 4
TAG482:
sh $1, 0($1)
mflo $2
lui $4, 9
lui $4, 7
TAG483:
sll $0, $0, 0
lui $3, 1
mtlo $2
mfhi $1
TAG484:
srav $2, $1, $1
sb $1, 0($1)
and $1, $1, $2
sw $1, 0($2)
TAG485:
bgtz $1, TAG486
lh $1, 0($1)
bne $1, $1, TAG486
mflo $4
TAG486:
mult $4, $4
sh $4, 0($4)
lbu $2, 0($4)
slti $1, $2, 7
TAG487:
slti $1, $1, 9
mfhi $4
div $1, $1
mflo $4
TAG488:
mtlo $4
srav $3, $4, $4
lb $3, 0($4)
srav $1, $3, $3
TAG489:
lbu $1, 0($1)
subu $2, $1, $1
xor $4, $1, $1
lui $4, 9
TAG490:
multu $4, $4
mthi $4
lui $2, 12
ori $2, $2, 11
TAG491:
mult $2, $2
slti $3, $2, 3
nor $4, $3, $2
sub $1, $3, $3
TAG492:
mtlo $1
lb $3, 0($1)
sw $3, 0($3)
lui $1, 1
TAG493:
lui $1, 6
bgtz $1, TAG494
subu $4, $1, $1
mthi $1
TAG494:
mfhi $1
sw $4, 0($4)
sh $1, 0($4)
lui $3, 2
TAG495:
bltz $3, TAG496
sll $0, $0, 0
beq $3, $3, TAG496
mfhi $1
TAG496:
lui $1, 7
lui $3, 1
lui $1, 14
mfhi $2
TAG497:
lui $2, 1
sll $0, $0, 0
bgez $2, TAG498
sll $0, $0, 0
TAG498:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
TAG499:
sll $0, $0, 0
andi $4, $1, 0
addu $4, $1, $4
beq $4, $4, TAG500
TAG500:
mfhi $1
sll $0, $0, 0
bne $4, $4, TAG501
sw $1, -144($1)
TAG501:
sw $1, -144($1)
bgtz $1, TAG502
srl $4, $1, 8
lui $4, 14
TAG502:
lbu $4, 0($4)
bne $4, $4, TAG503
lui $3, 11
div $4, $4
TAG503:
bgez $3, TAG504
xor $3, $3, $3
mflo $1
slti $2, $3, 1
TAG504:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
TAG505:
sh $4, -144($4)
xori $3, $4, 12
andi $1, $4, 3
bgez $1, TAG506
TAG506:
sll $2, $1, 2
multu $1, $2
bne $1, $2, TAG507
mtlo $2
TAG507:
lw $4, 0($2)
div $2, $4
nor $2, $2, $2
lh $3, 1($2)
TAG508:
mthi $3
bltz $3, TAG509
lui $4, 9
mflo $4
TAG509:
sh $4, 0($4)
mflo $3
lui $3, 5
slt $2, $3, $3
TAG510:
lui $2, 0
sb $2, 0($2)
beq $2, $2, TAG511
andi $1, $2, 15
TAG511:
beq $1, $1, TAG512
sllv $1, $1, $1
ori $1, $1, 15
blez $1, TAG512
TAG512:
lui $3, 8
lui $2, 14
sll $3, $1, 9
lh $3, 0($1)
TAG513:
bltz $3, TAG514
mfhi $3
blez $3, TAG514
mtlo $3
TAG514:
sltiu $3, $3, 15
sll $3, $3, 14
lui $3, 11
lui $1, 12
TAG515:
sll $0, $0, 0
lui $2, 3
multu $1, $2
slti $1, $2, 6
TAG516:
lui $4, 12
mflo $2
andi $4, $4, 6
lui $2, 5
TAG517:
sll $0, $0, 0
divu $2, $2
bltz $2, TAG518
lui $2, 0
TAG518:
and $4, $2, $2
mflo $2
mflo $1
sub $3, $2, $4
TAG519:
srl $2, $3, 10
multu $2, $2
bgez $2, TAG520
sb $2, 0($3)
TAG520:
mflo $1
lh $2, 0($2)
blez $2, TAG521
sltu $4, $2, $1
TAG521:
nor $4, $4, $4
lb $3, 1($4)
lui $2, 13
sb $2, 1($4)
TAG522:
bne $2, $2, TAG523
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG523:
sll $0, $0, 0
bltz $2, TAG524
mflo $4
bltz $2, TAG524
TAG524:
mfhi $1
bgez $4, TAG525
sh $1, 0($4)
beq $4, $4, TAG525
TAG525:
mflo $2
sh $1, 0($1)
sra $4, $2, 9
subu $4, $1, $2
TAG526:
lb $2, 0($4)
mfhi $3
beq $2, $3, TAG527
nor $2, $2, $4
TAG527:
slt $3, $2, $2
lbu $1, 0($3)
lui $4, 8
mthi $4
TAG528:
mtlo $4
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG529:
mult $4, $4
srav $1, $4, $4
mfhi $4
beq $1, $4, TAG530
TAG530:
lui $1, 7
bne $1, $4, TAG531
lui $4, 8
beq $4, $1, TAG531
TAG531:
mflo $2
xori $1, $4, 13
mflo $2
sll $0, $0, 0
TAG532:
mtlo $4
sra $3, $4, 14
mtlo $3
xor $2, $3, $4
TAG533:
mult $2, $2
mflo $3
lui $2, 3
div $2, $3
TAG534:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 8
sll $0, $0, 0
TAG535:
sll $0, $0, 0
mflo $3
lui $4, 14
sra $2, $3, 15
TAG536:
beq $2, $2, TAG537
mtlo $2
sltiu $1, $2, 12
slti $2, $1, 12
TAG537:
lw $2, 0($2)
bltz $2, TAG538
lui $4, 14
sll $0, $0, 0
TAG538:
mflo $3
lb $1, 0($3)
sll $4, $1, 8
mflo $4
TAG539:
sw $4, 0($4)
ori $4, $4, 9
lbu $2, 0($4)
lbu $1, 0($4)
TAG540:
mfhi $4
mult $1, $4
mthi $4
mfhi $1
TAG541:
sll $0, $0, 0
blez $1, TAG542
mult $1, $1
slt $3, $1, $1
TAG542:
mult $3, $3
bne $3, $3, TAG543
sltiu $1, $3, 7
bltz $1, TAG543
TAG543:
xor $4, $1, $1
bgtz $1, TAG544
mult $1, $4
mthi $4
TAG544:
bne $4, $4, TAG545
or $2, $4, $4
addi $3, $2, 0
mtlo $2
TAG545:
lw $4, 0($3)
bgez $4, TAG546
multu $4, $4
sw $3, 0($3)
TAG546:
lbu $1, 0($4)
andi $3, $1, 2
multu $1, $3
lw $4, 0($4)
TAG547:
beq $4, $4, TAG548
lui $1, 11
srl $3, $4, 8
mfhi $3
TAG548:
beq $3, $3, TAG549
sb $3, 0($3)
lui $4, 4
lui $2, 13
TAG549:
mtlo $2
mfhi $1
bne $1, $2, TAG550
srav $4, $2, $1
TAG550:
bgtz $4, TAG551
sub $2, $4, $4
lbu $3, 0($2)
mtlo $3
TAG551:
bgtz $3, TAG552
lui $4, 14
nor $2, $4, $4
div $3, $2
TAG552:
slt $4, $2, $2
addiu $1, $4, 10
div $4, $1
ori $2, $2, 0
TAG553:
lui $4, 10
mthi $2
sll $0, $0, 0
beq $2, $1, TAG554
TAG554:
lui $2, 11
mfhi $2
blez $1, TAG555
sll $0, $0, 0
TAG555:
mtlo $2
ori $4, $2, 0
sll $0, $0, 0
div $2, $2
TAG556:
mtlo $4
mthi $4
sll $0, $0, 0
mult $2, $4
TAG557:
addiu $4, $2, 12
sllv $4, $2, $4
sll $3, $4, 3
sll $0, $0, 0
TAG558:
mtlo $3
sll $0, $0, 0
bgez $3, TAG559
div $3, $3
TAG559:
bgez $3, TAG560
sll $0, $0, 0
mthi $3
mult $3, $3
TAG560:
sllv $4, $3, $3
mthi $4
beq $3, $4, TAG561
addiu $3, $4, 4
TAG561:
addiu $2, $3, 15
sll $0, $0, 0
bne $3, $2, TAG562
sll $0, $0, 0
TAG562:
multu $2, $2
mfhi $2
mflo $2
lui $2, 4
TAG563:
sll $0, $0, 0
slti $2, $2, 11
mult $2, $2
add $3, $2, $2
TAG564:
lui $3, 3
lui $3, 10
mtlo $3
lui $3, 3
TAG565:
mflo $1
slti $4, $3, 6
divu $1, $3
lui $2, 3
TAG566:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
ori $2, $3, 4
TAG567:
bgtz $2, TAG568
or $2, $2, $2
lui $1, 3
srlv $2, $1, $2
TAG568:
sll $0, $0, 0
slti $2, $2, 15
or $2, $2, $2
andi $2, $2, 3
TAG569:
lh $3, 0($2)
sltiu $3, $3, 8
lui $3, 0
mthi $2
TAG570:
mthi $3
lui $2, 7
mflo $3
bgtz $3, TAG571
TAG571:
sb $3, 0($3)
mflo $3
sll $1, $3, 7
lbu $4, 0($3)
TAG572:
mult $4, $4
lbu $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
TAG573:
mtlo $4
bgez $4, TAG574
mflo $3
lbu $1, 0($4)
TAG574:
mthi $1
blez $1, TAG575
mtlo $1
blez $1, TAG575
TAG575:
mflo $1
addiu $1, $1, 10
lhu $2, -394($1)
sra $3, $1, 3
TAG576:
addiu $3, $3, 14
beq $3, $3, TAG577
addu $3, $3, $3
lui $2, 1
TAG577:
lui $4, 9
mtlo $2
lw $4, 0($2)
addi $1, $2, 15
TAG578:
sll $4, $1, 4
mfhi $4
div $1, $4
lui $1, 8
TAG579:
subu $4, $1, $1
div $4, $1
sll $0, $0, 0
sllv $4, $4, $4
TAG580:
multu $4, $4
lui $4, 13
mult $4, $4
mfhi $2
TAG581:
mthi $2
bgtz $2, TAG582
srlv $2, $2, $2
lui $1, 10
TAG582:
mflo $2
multu $1, $2
multu $1, $1
bgez $2, TAG583
TAG583:
lb $3, 0($2)
lhu $1, 0($2)
mult $1, $2
lui $4, 0
TAG584:
multu $4, $4
multu $4, $4
mtlo $4
sh $4, 0($4)
TAG585:
lui $1, 6
lw $3, 0($4)
mfhi $4
multu $4, $1
TAG586:
sll $2, $4, 10
lhu $1, 0($2)
mthi $1
srl $2, $2, 3
TAG587:
lh $1, 0($2)
ori $3, $1, 15
bgtz $2, TAG588
addiu $1, $2, 5
TAG588:
sb $1, 0($1)
bne $1, $1, TAG589
mthi $1
sb $1, 0($1)
TAG589:
lb $2, 0($1)
andi $3, $1, 12
srlv $1, $3, $2
lhu $2, 0($1)
TAG590:
lbu $1, 0($2)
addi $3, $1, 0
mfhi $1
divu $1, $1
TAG591:
or $3, $1, $1
lui $2, 13
slti $2, $2, 4
addu $2, $3, $2
TAG592:
mfhi $1
xori $3, $2, 11
mfhi $2
bgez $1, TAG593
TAG593:
mtlo $2
multu $2, $2
ori $4, $2, 14
sw $2, 0($2)
TAG594:
sb $4, 0($4)
mult $4, $4
beq $4, $4, TAG595
lui $2, 15
TAG595:
mthi $2
div $2, $2
sll $0, $0, 0
mthi $2
TAG596:
multu $2, $2
lui $3, 15
sll $0, $0, 0
bne $2, $2, TAG597
TAG597:
sll $0, $0, 0
mfhi $4
bltz $4, TAG598
lui $3, 3
TAG598:
bne $3, $3, TAG599
mthi $3
bltz $3, TAG599
mthi $3
TAG599:
beq $3, $3, TAG600
sll $0, $0, 0
mthi $3
bgez $3, TAG600
TAG600:
lui $4, 1
mtlo $4
mflo $3
mfhi $1
TAG601:
beq $1, $1, TAG602
mthi $1
mtlo $1
divu $1, $1
TAG602:
multu $1, $1
lui $1, 0
blez $1, TAG603
subu $3, $1, $1
TAG603:
bne $3, $3, TAG604
lui $4, 0
bltz $3, TAG604
sb $3, 0($3)
TAG604:
or $3, $4, $4
lhu $1, 0($4)
mult $3, $1
bgez $1, TAG605
TAG605:
mfhi $4
sltiu $4, $1, 8
mthi $1
mthi $4
TAG606:
lb $3, 0($4)
addiu $3, $3, 6
div $3, $3
divu $3, $3
TAG607:
slti $1, $3, 14
lui $4, 6
addiu $4, $1, 7
bne $1, $4, TAG608
TAG608:
mfhi $3
mtlo $4
lui $4, 12
sll $0, $0, 0
TAG609:
sll $1, $3, 7
mult $1, $1
mflo $2
lui $2, 12
TAG610:
blez $2, TAG611
sll $0, $0, 0
mflo $1
bne $1, $1, TAG611
TAG611:
and $3, $1, $1
lw $2, 0($3)
lw $3, 0($1)
lh $1, 0($3)
TAG612:
add $4, $1, $1
sw $4, 0($4)
lhu $4, 0($1)
sb $4, 0($1)
TAG613:
addi $3, $4, 0
andi $1, $3, 9
blez $4, TAG614
slti $4, $3, 1
TAG614:
lb $1, 0($4)
addi $4, $1, 11
div $4, $4
sb $4, 0($4)
TAG615:
bne $4, $4, TAG616
slti $3, $4, 12
mflo $3
bltz $3, TAG616
TAG616:
mtlo $3
mfhi $4
lui $2, 7
addiu $3, $3, 2
TAG617:
bne $3, $3, TAG618
lui $1, 1
beq $3, $3, TAG618
sll $0, $0, 0
TAG618:
mtlo $1
beq $1, $1, TAG619
sll $0, $0, 0
sllv $1, $1, $1
TAG619:
mflo $2
multu $1, $1
sllv $2, $2, $1
mflo $2
TAG620:
sllv $2, $2, $2
lh $2, 0($2)
lui $1, 7
mult $2, $2
TAG621:
sll $0, $0, 0
beq $1, $1, TAG622
slti $4, $1, 8
blez $4, TAG622
TAG622:
mult $4, $4
lui $1, 1
mfhi $3
bgez $1, TAG623
TAG623:
andi $3, $3, 8
mtlo $3
lui $3, 1
sll $0, $0, 0
TAG624:
lui $3, 7
sll $0, $0, 0
srav $3, $3, $3
mflo $4
TAG625:
bltz $4, TAG626
sh $4, 0($4)
sllv $4, $4, $4
bne $4, $4, TAG626
TAG626:
mthi $4
sh $4, 0($4)
addiu $1, $4, 11
sb $4, 0($1)
TAG627:
bgez $1, TAG628
sb $1, 0($1)
lb $1, 0($1)
lui $2, 9
TAG628:
subu $4, $2, $2
mult $2, $4
xori $3, $4, 6
sltu $4, $4, $4
TAG629:
mfhi $1
bne $4, $4, TAG630
sb $1, 0($4)
mfhi $2
TAG630:
slti $1, $2, 1
bltz $1, TAG631
sll $4, $1, 11
sllv $2, $4, $2
TAG631:
beq $2, $2, TAG632
lhu $1, -2048($2)
lw $1, 0($1)
mfhi $1
TAG632:
mult $1, $1
lbu $2, 0($1)
lbu $1, 0($1)
slt $1, $1, $2
TAG633:
mfhi $4
lui $1, 10
beq $1, $1, TAG634
sltu $1, $1, $1
TAG634:
bltz $1, TAG635
multu $1, $1
mfhi $2
mflo $2
TAG635:
lbu $1, 0($2)
mult $2, $2
sb $2, 0($1)
lui $2, 10
TAG636:
sll $0, $0, 0
bltz $2, TAG637
or $1, $2, $2
sll $0, $0, 0
TAG637:
mflo $4
mthi $4
sh $4, 0($4)
mtlo $4
TAG638:
lb $2, 0($4)
mtlo $4
bne $2, $4, TAG639
lw $3, 0($2)
TAG639:
sb $3, 0($3)
mfhi $4
mflo $3
mthi $3
TAG640:
mflo $4
bgez $4, TAG641
slti $2, $3, 6
mtlo $4
TAG641:
mfhi $2
mfhi $4
bgtz $2, TAG642
xor $4, $2, $4
TAG642:
mult $4, $4
beq $4, $4, TAG643
sb $4, 0($4)
sllv $1, $4, $4
TAG643:
andi $3, $1, 12
lui $4, 12
mthi $4
mult $3, $4
TAG644:
bne $4, $4, TAG645
mthi $4
multu $4, $4
and $1, $4, $4
TAG645:
beq $1, $1, TAG646
slti $1, $1, 4
lui $4, 10
addu $1, $1, $1
TAG646:
mult $1, $1
mflo $3
lui $2, 13
sb $3, 0($3)
TAG647:
div $2, $2
beq $2, $2, TAG648
sll $0, $0, 0
bne $4, $4, TAG648
TAG648:
lui $2, 14
sll $0, $0, 0
beq $2, $4, TAG649
sll $0, $0, 0
TAG649:
lui $3, 12
mult $3, $2
sll $0, $0, 0
bgtz $3, TAG650
TAG650:
nor $1, $3, $3
addu $3, $1, $1
lui $1, 9
bgtz $3, TAG651
TAG651:
sll $0, $0, 0
mtlo $1
sll $1, $1, 0
sll $0, $0, 0
TAG652:
or $2, $1, $1
lui $2, 4
mtlo $1
bne $2, $1, TAG653
TAG653:
xori $3, $2, 3
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG654:
mtlo $3
sll $0, $0, 0
mflo $1
bgtz $3, TAG655
TAG655:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG656:
subu $4, $1, $1
lui $3, 7
subu $4, $3, $3
addiu $4, $1, 0
TAG657:
mthi $4
mfhi $2
lui $2, 14
bgtz $2, TAG658
TAG658:
sll $0, $0, 0
beq $2, $2, TAG659
mthi $2
lui $4, 12
TAG659:
mfhi $2
bgez $2, TAG660
mfhi $4
blez $2, TAG660
TAG660:
mflo $4
mthi $4
lui $3, 1
div $4, $3
TAG661:
lui $4, 9
sll $0, $0, 0
bne $4, $3, TAG662
div $3, $3
TAG662:
mthi $4
multu $4, $4
sll $0, $0, 0
bne $2, $4, TAG663
TAG663:
srlv $2, $2, $2
multu $2, $2
mfhi $2
slt $2, $2, $2
TAG664:
sltu $4, $2, $2
andi $4, $2, 13
andi $3, $4, 14
lhu $4, 0($4)
TAG665:
mtlo $4
mult $4, $4
mult $4, $4
mflo $4
TAG666:
sw $4, 0($4)
lh $2, 0($4)
lui $1, 5
lui $1, 5
TAG667:
srl $1, $1, 13
beq $1, $1, TAG668
mthi $1
lhu $4, 0($1)
TAG668:
mflo $2
sll $3, $4, 13
beq $3, $4, TAG669
sb $4, 0($2)
TAG669:
sub $4, $3, $3
sb $3, 0($4)
ori $1, $3, 7
lui $3, 14
TAG670:
sll $0, $0, 0
bne $3, $3, TAG671
mthi $3
bltz $3, TAG671
TAG671:
sll $0, $0, 0
lui $3, 2
mfhi $3
mfhi $2
TAG672:
mtlo $2
sll $0, $0, 0
beq $1, $2, TAG673
mthi $1
TAG673:
bltz $1, TAG674
mflo $1
mfhi $4
sll $0, $0, 0
TAG674:
srlv $4, $3, $3
beq $4, $4, TAG675
sll $0, $0, 0
addiu $1, $2, 2
TAG675:
and $2, $1, $1
mflo $2
subu $2, $2, $2
sll $0, $0, 0
TAG676:
beq $3, $3, TAG677
sll $0, $0, 0
div $3, $3
addu $2, $3, $3
TAG677:
sb $2, 0($2)
sh $2, 0($2)
bgtz $2, TAG678
sra $2, $2, 0
TAG678:
sub $4, $2, $2
lbu $3, 0($4)
beq $3, $2, TAG679
and $3, $3, $4
TAG679:
sh $3, 0($3)
mtlo $3
sh $3, 0($3)
andi $4, $3, 2
TAG680:
mthi $4
addiu $2, $4, 3
addu $3, $2, $2
bne $2, $2, TAG681
TAG681:
mfhi $3
mult $3, $3
mtlo $3
mthi $3
TAG682:
bgez $3, TAG683
or $3, $3, $3
srl $3, $3, 0
bne $3, $3, TAG683
TAG683:
lui $2, 3
lui $1, 15
addi $3, $3, 6
mtlo $3
TAG684:
srlv $2, $3, $3
srl $4, $2, 14
xori $1, $2, 10
beq $3, $3, TAG685
TAG685:
lbu $3, 0($1)
multu $1, $3
addi $1, $3, 2
sltiu $2, $1, 11
TAG686:
mflo $3
mthi $2
mtlo $3
sb $3, 0($2)
TAG687:
lui $4, 12
mthi $4
sllv $1, $3, $3
lbu $4, 0($1)
TAG688:
and $1, $4, $4
multu $4, $1
mfhi $3
lw $2, 0($4)
TAG689:
sra $2, $2, 2
multu $2, $2
srlv $2, $2, $2
mflo $2
TAG690:
slti $4, $2, 13
addiu $4, $2, 4
mult $4, $2
bltz $4, TAG691
TAG691:
lw $1, 0($4)
andi $3, $1, 5
divu $1, $4
bne $3, $4, TAG692
TAG692:
slti $1, $3, 15
bgez $1, TAG693
addiu $2, $3, 12
nor $2, $3, $3
TAG693:
sh $2, 0($2)
bne $2, $2, TAG694
addu $4, $2, $2
sw $2, 0($4)
TAG694:
lbu $2, 0($4)
lui $3, 1
mfhi $3
div $4, $4
TAG695:
mtlo $3
sllv $4, $3, $3
lui $4, 11
bltz $4, TAG696
TAG696:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG697:
beq $4, $4, TAG698
mflo $2
sra $2, $2, 0
lh $4, 0($2)
TAG698:
sll $0, $0, 0
slti $2, $4, 7
mflo $4
bgtz $4, TAG699
TAG699:
slti $2, $4, 4
div $2, $4
mtlo $2
bne $4, $2, TAG700
TAG700:
lui $2, 11
lui $3, 0
subu $4, $2, $3
divu $2, $2
TAG701:
lui $1, 1
addiu $4, $4, 6
srl $4, $4, 11
mthi $4
TAG702:
mfhi $3
lui $4, 12
mthi $4
lui $2, 9
TAG703:
mult $2, $2
mtlo $2
beq $2, $2, TAG704
mthi $2
TAG704:
sll $0, $0, 0
sra $3, $2, 9
lui $1, 13
andi $3, $1, 8
TAG705:
sltiu $2, $3, 12
sll $4, $3, 14
sb $2, 0($4)
srl $4, $4, 6
TAG706:
multu $4, $4
sw $4, 0($4)
beq $4, $4, TAG707
sub $3, $4, $4
TAG707:
lb $4, 0($3)
bgtz $3, TAG708
multu $4, $4
mflo $2
TAG708:
xor $3, $2, $2
bne $3, $2, TAG709
mflo $1
andi $2, $1, 5
TAG709:
mult $2, $2
add $3, $2, $2
bgez $2, TAG710
sltu $4, $3, $3
TAG710:
beq $4, $4, TAG711
lb $4, 0($4)
or $4, $4, $4
mtlo $4
TAG711:
multu $4, $4
lw $4, 0($4)
lui $3, 8
sll $2, $3, 0
TAG712:
blez $2, TAG713
srav $2, $2, $2
lui $4, 3
lui $3, 7
TAG713:
lui $4, 9
xori $4, $3, 10
multu $4, $3
beq $4, $4, TAG714
TAG714:
mult $4, $4
multu $4, $4
sltu $1, $4, $4
sll $0, $0, 0
TAG715:
srav $3, $1, $1
sllv $4, $1, $1
sw $3, 0($1)
mflo $4
TAG716:
mtlo $4
bltz $4, TAG717
sll $0, $0, 0
mthi $4
TAG717:
lh $3, 0($3)
lui $2, 5
sll $0, $0, 0
mflo $2
TAG718:
bgtz $2, TAG719
div $2, $2
beq $2, $2, TAG719
sb $2, 0($2)
TAG719:
mthi $2
bltz $2, TAG720
lui $2, 0
bgtz $2, TAG720
TAG720:
mult $2, $2
mtlo $2
xor $2, $2, $2
mthi $2
TAG721:
beq $2, $2, TAG722
sh $2, 0($2)
sra $4, $2, 3
blez $2, TAG722
TAG722:
multu $4, $4
div $4, $4
bltz $4, TAG723
mflo $2
TAG723:
lb $3, 0($2)
sw $2, 0($3)
and $4, $2, $2
mthi $2
TAG724:
sb $4, 0($4)
sb $4, 0($4)
blez $4, TAG725
mult $4, $4
TAG725:
div $4, $4
beq $4, $4, TAG726
sllv $1, $4, $4
bltz $4, TAG726
TAG726:
lui $2, 2
mthi $2
sh $2, 0($1)
mfhi $1
TAG727:
multu $1, $1
beq $1, $1, TAG728
div $1, $1
lui $4, 5
TAG728:
sb $4, 0($4)
mfhi $3
mtlo $4
div $4, $4
TAG729:
mflo $1
lui $1, 13
sll $0, $0, 0
lb $1, 0($4)
TAG730:
ori $4, $1, 9
lbu $4, 0($1)
div $4, $4
lbu $2, 0($4)
TAG731:
mflo $3
mthi $3
divu $3, $2
bltz $2, TAG732
TAG732:
addiu $4, $3, 11
addu $2, $3, $4
sh $3, 0($4)
sb $4, 0($3)
TAG733:
sb $2, 0($2)
sb $2, 0($2)
mult $2, $2
lb $1, 0($2)
TAG734:
mflo $4
beq $4, $1, TAG735
xori $3, $1, 13
lui $2, 2
TAG735:
sra $2, $2, 1
mfhi $3
sll $0, $0, 0
sra $2, $2, 8
TAG736:
blez $2, TAG737
lui $4, 11
sll $0, $0, 0
bgez $2, TAG737
TAG737:
xori $4, $4, 2
ori $3, $4, 7
andi $1, $4, 5
div $4, $3
TAG738:
bne $1, $1, TAG739
sll $2, $1, 3
mflo $2
addiu $3, $2, 14
TAG739:
mfhi $3
sll $0, $0, 0
beq $3, $3, TAG740
sll $0, $0, 0
TAG740:
or $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG741:
subu $1, $2, $2
div $1, $2
bltz $2, TAG742
lui $2, 10
TAG742:
subu $2, $2, $2
beq $2, $2, TAG743
sll $3, $2, 7
mthi $2
TAG743:
multu $3, $3
mthi $3
sw $3, 0($3)
bne $3, $3, TAG744
TAG744:
mfhi $3
lhu $3, 0($3)
sw $3, 0($3)
beq $3, $3, TAG745
TAG745:
lui $3, 8
sll $0, $0, 0
sll $0, $0, 0
lui $3, 4
TAG746:
lui $2, 9
bgez $2, TAG747
sltu $2, $3, $2
bgtz $2, TAG747
TAG747:
mtlo $2
sltiu $3, $2, 14
lbu $3, 0($2)
sll $2, $3, 8
TAG748:
sltu $3, $2, $2
or $2, $2, $3
bne $2, $3, TAG749
lb $4, 0($3)
TAG749:
mfhi $3
bgtz $4, TAG750
mthi $3
mult $4, $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop