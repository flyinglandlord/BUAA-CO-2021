ori $1, $0, 13
ori $2, $0, 14
ori $3, $0, 0
ori $4, $0, 3
sw $4, 0($0)
sw $1, 4($0)
sw $3, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $3, 112($0)
sw $4, 116($0)
sw $2, 120($0)
sw $1, 124($0)
multu $2, $2
sllv $2, $2, $2
sll $0, $0, 0
nor $4, $2, $2
TAG1:
sll $0, $0, 0
and $1, $4, $3
srl $3, $4, 14
sltu $3, $3, $4
TAG2:
beq $3, $3, TAG3
lui $1, 12
slti $2, $1, 6
bgez $3, TAG3
TAG3:
mflo $1
blez $2, TAG4
mfhi $3
lui $4, 13
TAG4:
subu $4, $4, $4
mtlo $4
mflo $3
lb $1, 0($3)
TAG5:
bne $1, $1, TAG6
lui $4, 5
nor $4, $1, $1
mflo $3
TAG6:
slti $3, $3, 10
srav $4, $3, $3
lbu $1, 0($3)
bgez $3, TAG7
TAG7:
mfhi $4
mtlo $4
sb $1, 0($1)
mthi $1
TAG8:
blez $4, TAG9
sb $4, 0($4)
bgtz $4, TAG9
sltu $2, $4, $4
TAG9:
mult $2, $2
bgez $2, TAG10
sll $0, $0, 0
slt $2, $2, $2
TAG10:
srav $4, $2, $2
div $2, $4
mthi $4
divu $2, $2
TAG11:
lui $1, 10
bne $1, $4, TAG12
sltu $2, $4, $1
bltz $4, TAG12
TAG12:
lui $4, 1
ori $3, $2, 1
sb $2, 0($3)
bltz $2, TAG13
TAG13:
sb $3, 0($3)
beq $3, $3, TAG14
lb $2, 0($3)
mtlo $3
TAG14:
sb $2, 0($2)
slti $1, $2, 14
lui $2, 11
sb $2, 0($1)
TAG15:
subu $3, $2, $2
bne $3, $3, TAG16
mult $3, $2
lui $1, 12
TAG16:
beq $1, $1, TAG17
or $4, $1, $1
mfhi $2
lw $4, 0($2)
TAG17:
divu $4, $4
bgtz $4, TAG18
mthi $4
beq $4, $4, TAG18
TAG18:
mthi $4
nor $2, $4, $4
slti $2, $4, 14
subu $4, $2, $4
TAG19:
bgtz $4, TAG20
srl $3, $4, 13
sll $0, $0, 0
lui $4, 0
TAG20:
lui $2, 13
mflo $3
bltz $2, TAG21
sll $0, $0, 0
TAG21:
mthi $3
mthi $3
bgtz $3, TAG22
lui $1, 1
TAG22:
srlv $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
sra $4, $3, 7
TAG23:
sll $0, $0, 0
lw $1, -512($4)
sw $1, 0($1)
sllv $1, $4, $1
TAG24:
and $3, $1, $1
div $1, $1
mtlo $1
mthi $3
TAG25:
mflo $2
mthi $3
srlv $1, $2, $2
lhu $3, -512($3)
TAG26:
sb $3, 0($3)
sw $3, 0($3)
bne $3, $3, TAG27
sltiu $1, $3, 12
TAG27:
divu $1, $1
sb $1, 0($1)
bne $1, $1, TAG28
mflo $4
TAG28:
lbu $3, 0($4)
mult $3, $3
mult $3, $4
div $4, $3
TAG29:
bltz $3, TAG30
lbu $4, 0($3)
lbu $1, 0($3)
xori $1, $1, 0
TAG30:
mflo $3
or $4, $3, $1
addu $2, $4, $4
sb $2, 0($4)
TAG31:
mfhi $3
mtlo $2
subu $3, $2, $2
mflo $3
TAG32:
bgez $3, TAG33
mflo $2
mflo $4
bltz $2, TAG33
TAG33:
sb $4, 0($4)
bltz $4, TAG34
sb $4, 0($4)
multu $4, $4
TAG34:
mfhi $1
bgtz $1, TAG35
and $1, $4, $1
sb $4, 0($4)
TAG35:
bltz $1, TAG36
sll $2, $1, 7
xor $2, $2, $1
sltiu $3, $2, 2
TAG36:
mfhi $3
slt $3, $3, $3
lh $3, 0($3)
mtlo $3
TAG37:
sw $3, -256($3)
lui $4, 13
mfhi $1
sll $0, $0, 0
TAG38:
sh $3, -256($3)
bne $3, $3, TAG39
divu $3, $3
lui $3, 7
TAG39:
mthi $3
beq $3, $3, TAG40
sll $0, $0, 0
sh $3, 0($3)
TAG40:
lui $1, 15
mthi $1
mflo $4
sll $3, $1, 8
TAG41:
bgez $3, TAG42
lui $2, 7
beq $3, $3, TAG42
mflo $4
TAG42:
or $3, $4, $4
mfhi $3
and $2, $4, $3
bgtz $2, TAG43
TAG43:
sh $2, 0($2)
mflo $1
sb $2, 0($1)
sltu $1, $2, $2
TAG44:
addi $3, $1, 8
lui $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG45:
slti $3, $3, 7
sra $4, $3, 15
mfhi $2
nor $1, $2, $2
TAG46:
bne $1, $1, TAG47
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG47:
mtlo $2
xori $2, $2, 11
beq $2, $2, TAG48
lui $4, 3
TAG48:
multu $4, $4
andi $4, $4, 1
mfhi $4
divu $4, $4
TAG49:
multu $4, $4
or $1, $4, $4
srlv $2, $4, $4
srlv $3, $1, $1
TAG50:
mtlo $3
bgtz $3, TAG51
lui $4, 12
div $4, $4
TAG51:
bgez $4, TAG52
sll $0, $0, 0
sh $4, 0($4)
div $4, $4
TAG52:
bne $4, $4, TAG53
sll $0, $0, 0
sll $0, $0, 0
addi $3, $2, 13
TAG53:
lui $2, 7
beq $2, $2, TAG54
mfhi $4
sh $2, 0($2)
TAG54:
sh $4, 0($4)
ori $2, $4, 8
mfhi $3
lhu $3, 0($2)
TAG55:
lhu $1, 0($3)
sw $3, 0($3)
lui $1, 9
addu $1, $3, $1
TAG56:
addu $2, $1, $1
andi $4, $2, 14
sll $0, $0, 0
lui $4, 5
TAG57:
xor $3, $4, $4
mfhi $4
bgtz $3, TAG58
multu $3, $3
TAG58:
addu $1, $4, $4
lui $3, 5
srlv $4, $4, $3
xor $2, $4, $4
TAG59:
mtlo $2
sw $2, 0($2)
lui $3, 13
mthi $2
TAG60:
sll $0, $0, 0
addiu $1, $3, 13
beq $1, $3, TAG61
ori $1, $1, 3
TAG61:
subu $3, $1, $1
mthi $3
lui $4, 5
lui $1, 7
TAG62:
ori $3, $1, 11
mfhi $4
mfhi $2
sll $0, $0, 0
TAG63:
mflo $1
mult $3, $1
mtlo $1
multu $3, $1
TAG64:
sltiu $3, $1, 13
bne $3, $3, TAG65
sb $3, 0($3)
mfhi $2
TAG65:
mult $2, $2
and $2, $2, $2
slti $4, $2, 7
blez $2, TAG66
TAG66:
lb $3, 0($4)
bgtz $3, TAG67
mtlo $3
sra $2, $4, 9
TAG67:
lui $4, 15
sw $4, 0($2)
mthi $2
sll $0, $0, 0
TAG68:
ori $4, $2, 10
mtlo $2
blez $2, TAG69
addu $4, $4, $2
TAG69:
bne $4, $4, TAG70
mfhi $2
lh $4, 0($4)
bltz $4, TAG70
TAG70:
srav $2, $4, $4
mflo $1
mthi $4
mthi $4
TAG71:
bgez $1, TAG72
sb $1, 0($1)
divu $1, $1
sb $1, 0($1)
TAG72:
sb $1, 0($1)
beq $1, $1, TAG73
mtlo $1
lh $1, 0($1)
TAG73:
blez $1, TAG74
mtlo $1
divu $1, $1
sb $1, 0($1)
TAG74:
mflo $1
lui $4, 2
lhu $1, 0($1)
mult $1, $1
TAG75:
nor $1, $1, $1
mthi $1
lbu $4, 1($1)
sllv $3, $1, $4
TAG76:
mtlo $3
bne $3, $3, TAG77
and $4, $3, $3
addiu $4, $3, 8
TAG77:
lb $3, 0($4)
bgez $3, TAG78
lhu $3, 0($3)
div $4, $4
TAG78:
bgtz $3, TAG79
mthi $3
bgez $3, TAG79
lui $4, 12
TAG79:
nor $4, $4, $4
beq $4, $4, TAG80
mfhi $4
lh $2, 0($4)
TAG80:
mfhi $2
mthi $2
bgez $2, TAG81
subu $2, $2, $2
TAG81:
or $4, $2, $2
mtlo $2
mult $4, $4
sb $4, 0($2)
TAG82:
multu $4, $4
addiu $3, $4, 5
lhu $1, 0($4)
mtlo $3
TAG83:
mtlo $1
beq $1, $1, TAG84
sllv $4, $1, $1
slt $2, $1, $1
TAG84:
lui $1, 7
mtlo $1
beq $2, $1, TAG85
sll $0, $0, 0
TAG85:
lui $2, 15
subu $4, $2, $2
sll $0, $0, 0
beq $4, $2, TAG86
TAG86:
mfhi $3
lui $1, 2
subu $2, $1, $1
bltz $3, TAG87
TAG87:
lbu $1, 0($2)
lui $1, 0
lbu $2, 0($1)
mflo $1
TAG88:
blez $1, TAG89
mthi $1
mfhi $2
mflo $3
TAG89:
mtlo $3
sll $2, $3, 12
addiu $4, $2, 9
ori $2, $3, 5
TAG90:
mthi $2
lui $3, 1
mthi $3
sll $0, $0, 0
TAG91:
mfhi $3
lui $3, 6
divu $3, $3
multu $3, $3
TAG92:
mult $3, $3
multu $3, $3
mflo $3
lui $2, 10
TAG93:
bgez $2, TAG94
mtlo $2
srlv $3, $2, $2
addiu $3, $3, 8
TAG94:
srlv $1, $3, $3
lw $2, 0($1)
lui $4, 7
sra $4, $2, 9
TAG95:
lui $1, 2
lui $4, 14
beq $4, $1, TAG96
mfhi $3
TAG96:
mult $3, $3
lui $2, 6
andi $3, $2, 2
sh $3, 0($3)
TAG97:
lui $1, 4
sltiu $4, $1, 7
sb $3, 0($3)
lhu $1, 0($3)
TAG98:
sb $1, 0($1)
bgez $1, TAG99
lh $1, 0($1)
addi $4, $1, 6
TAG99:
lw $2, 0($4)
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG100:
sll $0, $0, 0
lui $1, 10
blez $1, TAG101
subu $2, $2, $1
TAG101:
mthi $2
blez $2, TAG102
mfhi $2
lui $4, 11
TAG102:
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG103
sra $4, $4, 14
TAG103:
andi $4, $4, 1
mfhi $1
mult $4, $4
lw $1, 0($4)
TAG104:
sll $0, $0, 0
mthi $1
lui $2, 14
sll $0, $0, 0
TAG105:
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG106:
mthi $4
nor $2, $4, $4
mtlo $4
slt $2, $4, $2
TAG107:
xori $3, $2, 12
lw $4, 0($3)
div $2, $3
sltiu $1, $4, 10
TAG108:
mflo $2
mflo $2
mtlo $2
lbu $4, 0($1)
TAG109:
lhu $1, 0($4)
lui $2, 8
sw $1, 0($4)
sll $4, $2, 11
TAG110:
sll $0, $0, 0
mthi $1
bgtz $4, TAG111
or $3, $4, $4
TAG111:
beq $3, $3, TAG112
sll $0, $0, 0
mfhi $2
mfhi $4
TAG112:
xori $2, $4, 13
mtlo $2
bne $4, $4, TAG113
or $4, $2, $2
TAG113:
mthi $4
sll $4, $4, 13
lui $4, 1
blez $4, TAG114
TAG114:
mtlo $4
or $2, $4, $4
multu $4, $4
lui $1, 0
TAG115:
slt $4, $1, $1
bltz $4, TAG116
lui $4, 12
mfhi $3
TAG116:
mult $3, $3
sll $3, $3, 14
mthi $3
lui $1, 14
TAG117:
bgtz $1, TAG118
or $2, $1, $1
mtlo $2
lui $2, 7
TAG118:
sll $0, $0, 0
addiu $2, $2, 6
lui $1, 7
mflo $2
TAG119:
mthi $2
bgtz $2, TAG120
lb $4, 0($2)
lui $2, 12
TAG120:
sltu $2, $2, $2
bgez $2, TAG121
lw $2, 0($2)
addi $3, $2, 7
TAG121:
sll $0, $0, 0
mthi $4
or $4, $3, $4
lui $3, 4
TAG122:
divu $3, $3
divu $3, $3
bltz $3, TAG123
slti $1, $3, 14
TAG123:
xori $1, $1, 9
sra $3, $1, 0
bne $1, $3, TAG124
mflo $3
TAG124:
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG125:
mtlo $3
srav $2, $3, $3
mflo $4
bne $2, $2, TAG126
TAG126:
mtlo $4
lb $1, 0($4)
multu $1, $1
sub $4, $1, $1
TAG127:
mthi $4
multu $4, $4
bltz $4, TAG128
addu $4, $4, $4
TAG128:
mtlo $4
lhu $2, 0($4)
mtlo $4
mult $2, $2
TAG129:
beq $2, $2, TAG130
sh $2, 0($2)
slti $3, $2, 6
sra $2, $2, 5
TAG130:
blez $2, TAG131
lh $1, 0($2)
mtlo $1
slti $1, $1, 13
TAG131:
sltu $4, $1, $1
beq $4, $4, TAG132
lw $2, 0($1)
sw $2, 0($1)
TAG132:
mflo $1
sw $1, 0($2)
blez $1, TAG133
lb $4, 0($2)
TAG133:
beq $4, $4, TAG134
lb $3, 0($4)
bne $4, $4, TAG134
xor $1, $3, $4
TAG134:
sw $1, 0($1)
nor $1, $1, $1
addu $2, $1, $1
sh $1, 2($2)
TAG135:
beq $2, $2, TAG136
mtlo $2
sll $3, $2, 4
lui $2, 8
TAG136:
bne $2, $2, TAG137
lw $1, 2($2)
lw $2, 2($2)
sll $0, $0, 0
TAG137:
xor $4, $2, $2
bltz $4, TAG138
sll $0, $0, 0
sra $4, $4, 2
TAG138:
multu $4, $4
sltiu $3, $4, 8
sb $4, 0($3)
mult $3, $4
TAG139:
mfhi $3
lh $4, 0($3)
bgez $3, TAG140
sb $4, -255($4)
TAG140:
sll $0, $0, 0
sb $2, -255($4)
mtlo $4
mtlo $2
TAG141:
beq $2, $2, TAG142
lui $1, 4
subu $2, $1, $2
multu $2, $1
TAG142:
bgtz $2, TAG143
sll $0, $0, 0
lh $4, 0($3)
mult $3, $4
TAG143:
div $4, $4
beq $4, $4, TAG144
andi $4, $4, 15
mflo $4
TAG144:
bgtz $4, TAG145
subu $3, $4, $4
blez $4, TAG145
sh $3, 0($4)
TAG145:
beq $3, $3, TAG146
mfhi $3
beq $3, $3, TAG146
mthi $3
TAG146:
beq $3, $3, TAG147
sw $3, 0($3)
bne $3, $3, TAG147
lui $1, 11
TAG147:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
andi $2, $1, 12
TAG148:
mtlo $2
addiu $1, $2, 14
mtlo $2
lh $3, 0($2)
TAG149:
mthi $3
lbu $2, 0($3)
lhu $1, 0($3)
sltu $3, $2, $1
TAG150:
lui $3, 14
xori $4, $3, 4
mfhi $3
mult $3, $3
TAG151:
lui $3, 12
beq $3, $3, TAG152
sll $0, $0, 0
lui $3, 15
TAG152:
bltz $3, TAG153
mflo $2
bne $2, $3, TAG153
lui $4, 8
TAG153:
nor $2, $4, $4
multu $4, $2
sll $0, $0, 0
mult $4, $4
TAG154:
sll $0, $0, 0
sll $0, $0, 0
sll $3, $3, 1
srav $2, $2, $3
TAG155:
ori $4, $2, 5
blez $2, TAG156
mflo $4
addiu $2, $2, 7
TAG156:
bltz $2, TAG157
sll $0, $0, 0
srl $2, $3, 0
sb $3, 0($3)
TAG157:
subu $3, $2, $2
mtlo $2
div $2, $2
mult $3, $3
TAG158:
bne $3, $3, TAG159
sb $3, 0($3)
bne $3, $3, TAG159
mflo $1
TAG159:
multu $1, $1
multu $1, $1
mfhi $4
and $3, $4, $4
TAG160:
mfhi $2
mflo $3
blez $3, TAG161
lui $3, 7
TAG161:
mtlo $3
sll $0, $0, 0
bne $3, $3, TAG162
mthi $3
TAG162:
mtlo $3
sra $2, $3, 7
sll $0, $0, 0
lhu $1, -3584($2)
TAG163:
mflo $2
lhu $3, 0($1)
lw $3, 0($3)
addi $1, $3, 5
TAG164:
mflo $2
bltz $2, TAG165
subu $2, $2, $2
lh $1, 0($2)
TAG165:
lui $2, 2
sb $1, 0($1)
lw $1, 0($1)
sub $4, $2, $1
TAG166:
mthi $4
sra $3, $4, 0
mfhi $2
blez $4, TAG167
TAG167:
sllv $4, $2, $2
sll $0, $0, 0
srl $3, $4, 6
bgtz $3, TAG168
TAG168:
sw $3, -2048($3)
lb $1, -2048($3)
nor $4, $3, $3
mthi $4
TAG169:
lui $2, 10
mflo $4
sll $0, $0, 0
mtlo $4
TAG170:
divu $4, $4
beq $4, $4, TAG171
lui $3, 4
andi $1, $3, 14
TAG171:
sw $1, 0($1)
mtlo $1
beq $1, $1, TAG172
lbu $3, 0($1)
TAG172:
sw $3, 0($3)
mthi $3
lui $1, 2
xor $3, $1, $3
TAG173:
mult $3, $3
blez $3, TAG174
divu $3, $3
div $3, $3
TAG174:
addiu $4, $3, 12
blez $3, TAG175
sll $0, $0, 0
sll $0, $0, 0
TAG175:
mtlo $3
mflo $1
mthi $3
sll $0, $0, 0
TAG176:
mflo $1
mult $3, $3
mflo $3
lw $4, 0($3)
TAG177:
sb $4, 0($4)
mflo $3
beq $4, $3, TAG178
mfhi $2
TAG178:
mtlo $2
lui $2, 8
div $2, $2
bgez $2, TAG179
TAG179:
slt $1, $2, $2
mflo $3
mult $2, $3
mthi $1
TAG180:
mult $3, $3
divu $3, $3
multu $3, $3
bne $3, $3, TAG181
TAG181:
mtlo $3
addiu $2, $3, 10
addiu $1, $2, 9
beq $2, $3, TAG182
TAG182:
sh $1, 0($1)
sh $1, 0($1)
sh $1, 0($1)
srav $1, $1, $1
TAG183:
beq $1, $1, TAG184
andi $1, $1, 1
mtlo $1
lui $2, 2
TAG184:
mflo $1
addiu $3, $2, 14
sb $1, 0($1)
sb $2, 0($1)
TAG185:
bne $3, $3, TAG186
mult $3, $3
sb $3, 0($3)
sb $3, 0($3)
TAG186:
ori $1, $3, 3
slti $4, $3, 6
mult $4, $4
mthi $3
TAG187:
mult $4, $4
srlv $1, $4, $4
multu $1, $1
mfhi $4
TAG188:
mthi $4
multu $4, $4
addiu $3, $4, 6
bne $3, $4, TAG189
TAG189:
multu $3, $3
bgtz $3, TAG190
lbu $3, 0($3)
lbu $3, 0($3)
TAG190:
beq $3, $3, TAG191
srl $2, $3, 3
mtlo $3
srav $2, $3, $3
TAG191:
sll $4, $2, 10
mult $4, $2
sh $4, 0($2)
sh $4, 0($2)
TAG192:
add $3, $4, $4
bne $4, $4, TAG193
multu $4, $4
lui $4, 15
TAG193:
mtlo $4
multu $4, $4
sltu $2, $4, $4
bne $4, $4, TAG194
TAG194:
lw $2, 0($2)
lb $2, 0($2)
mthi $2
mflo $4
TAG195:
addu $4, $4, $4
sh $4, 0($4)
lbu $4, 0($4)
mfhi $2
TAG196:
lui $4, 6
lw $1, 0($2)
mtlo $1
sll $0, $0, 0
TAG197:
multu $1, $1
lui $4, 13
addi $3, $1, 11
lbu $2, 0($1)
TAG198:
mult $2, $2
mult $2, $2
mfhi $1
sllv $1, $1, $1
TAG199:
sb $1, 0($1)
srl $3, $1, 3
mtlo $3
slti $4, $1, 14
TAG200:
mfhi $3
sllv $1, $4, $3
sb $3, 0($1)
mflo $4
TAG201:
xori $3, $4, 3
andi $2, $3, 2
beq $4, $2, TAG202
lui $3, 3
TAG202:
sll $0, $0, 0
beq $3, $3, TAG203
mtlo $3
addu $2, $3, $3
TAG203:
and $4, $2, $2
subu $2, $2, $2
sltiu $2, $2, 1
lhu $3, 0($4)
TAG204:
mtlo $3
srl $4, $3, 13
srl $4, $4, 2
ori $2, $3, 5
TAG205:
mfhi $4
mflo $4
sh $4, 0($4)
bltz $4, TAG206
TAG206:
slt $4, $4, $4
beq $4, $4, TAG207
mflo $3
lw $1, 0($4)
TAG207:
addiu $1, $1, 5
sh $1, 0($1)
lh $1, 0($1)
bltz $1, TAG208
TAG208:
lui $1, 2
sll $0, $0, 0
mthi $1
beq $1, $1, TAG209
TAG209:
mthi $1
mtlo $1
sll $0, $0, 0
lw $4, 0($3)
TAG210:
srl $3, $4, 11
lbu $1, 0($4)
lui $1, 1
mult $1, $3
TAG211:
sll $0, $0, 0
mflo $3
multu $3, $3
sll $0, $0, 0
TAG212:
mflo $3
mtlo $3
sltiu $2, $3, 15
multu $2, $3
TAG213:
sll $1, $2, 10
addiu $2, $1, 7
xori $4, $2, 3
sh $2, -1031($2)
TAG214:
divu $4, $4
lui $1, 10
lb $1, -1028($4)
bne $1, $4, TAG215
TAG215:
divu $1, $1
sltu $4, $1, $1
bltz $1, TAG216
lb $4, 0($1)
TAG216:
lui $2, 14
lw $3, 0($4)
multu $4, $2
bne $2, $3, TAG217
TAG217:
slt $2, $3, $3
sw $3, 0($2)
bltz $3, TAG218
sh $3, 0($2)
TAG218:
lui $1, 12
addiu $1, $2, 6
xor $3, $2, $2
beq $2, $2, TAG219
TAG219:
sh $3, 0($3)
xori $1, $3, 2
xor $4, $1, $3
mthi $1
TAG220:
mfhi $3
ori $3, $3, 10
div $3, $3
divu $4, $3
TAG221:
lui $2, 6
lb $2, 0($3)
addiu $4, $3, 10
nor $3, $2, $2
TAG222:
slti $2, $3, 13
sllv $3, $3, $2
mfhi $3
sh $2, 0($3)
TAG223:
slti $2, $3, 6
bne $3, $3, TAG224
mtlo $3
slti $1, $2, 11
TAG224:
sb $1, 0($1)
div $1, $1
lbu $2, 0($1)
mfhi $1
TAG225:
mthi $1
lbu $1, 0($1)
beq $1, $1, TAG226
lui $3, 7
TAG226:
ori $3, $3, 14
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
TAG227:
mtlo $3
ori $1, $3, 1
bne $1, $3, TAG228
sll $0, $0, 0
TAG228:
bgez $1, TAG229
lui $1, 14
sll $4, $1, 14
mthi $4
TAG229:
mult $4, $4
div $4, $4
lui $3, 0
blez $3, TAG230
TAG230:
sub $3, $3, $3
mtlo $3
lhu $2, 0($3)
sltu $2, $2, $2
TAG231:
mult $2, $2
mflo $1
mult $1, $2
addu $3, $2, $1
TAG232:
nor $1, $3, $3
beq $3, $3, TAG233
sh $3, 1($1)
sltiu $3, $3, 15
TAG233:
mtlo $3
andi $1, $3, 5
srav $2, $3, $3
lh $2, 0($2)
TAG234:
sllv $2, $2, $2
multu $2, $2
bltz $2, TAG235
sb $2, 0($2)
TAG235:
mflo $4
mfhi $4
bne $2, $4, TAG236
lbu $4, 0($4)
TAG236:
sb $4, 0($4)
sltiu $3, $4, 14
beq $3, $4, TAG237
lui $1, 15
TAG237:
mthi $1
mthi $1
sll $0, $0, 0
lui $2, 6
TAG238:
lui $3, 13
mult $3, $3
beq $3, $3, TAG239
lui $4, 6
TAG239:
sll $0, $0, 0
addu $3, $4, $4
lui $1, 6
lui $4, 1
TAG240:
div $4, $4
and $3, $4, $4
lui $1, 10
mtlo $3
TAG241:
mfhi $3
addiu $3, $1, 7
sll $0, $0, 0
sll $0, $0, 0
TAG242:
bne $2, $2, TAG243
mfhi $2
and $3, $2, $2
mflo $4
TAG243:
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG244
TAG244:
mult $3, $3
lhu $2, 0($3)
mflo $3
bne $3, $3, TAG245
TAG245:
sb $3, 0($3)
bne $3, $3, TAG246
nor $4, $3, $3
bne $4, $4, TAG246
TAG246:
lui $1, 15
mult $4, $1
sll $0, $0, 0
divu $4, $1
TAG247:
sll $0, $0, 0
mfhi $1
slt $4, $1, $1
divu $4, $1
TAG248:
lhu $4, 0($4)
mflo $2
lui $2, 7
sltiu $2, $4, 6
TAG249:
lui $4, 13
sb $2, 0($2)
bgez $4, TAG250
sb $2, 0($2)
TAG250:
nor $3, $4, $4
bltz $3, TAG251
addiu $3, $4, 3
beq $3, $4, TAG251
TAG251:
mtlo $3
beq $3, $3, TAG252
lui $2, 15
mflo $1
TAG252:
div $1, $1
mthi $1
beq $1, $1, TAG253
mthi $1
TAG253:
mfhi $1
div $1, $1
sll $0, $0, 0
divu $1, $1
TAG254:
mfhi $1
sw $1, 0($1)
bgtz $1, TAG255
mfhi $1
TAG255:
mthi $1
sub $4, $1, $1
slti $4, $1, 9
sb $4, 0($4)
TAG256:
bgez $4, TAG257
mtlo $4
mtlo $4
multu $4, $4
TAG257:
mthi $4
mtlo $4
bne $4, $4, TAG258
mfhi $2
TAG258:
slt $4, $2, $2
bgtz $4, TAG259
mtlo $4
andi $4, $2, 6
TAG259:
lh $1, 0($4)
sltu $2, $4, $4
sll $2, $4, 11
mthi $2
TAG260:
mtlo $2
mult $2, $2
mult $2, $2
nor $4, $2, $2
TAG261:
sltu $2, $4, $4
lw $2, 0($2)
multu $4, $2
multu $2, $4
TAG262:
bgtz $2, TAG263
sh $2, -256($2)
divu $2, $2
beq $2, $2, TAG263
TAG263:
ori $1, $2, 7
mult $1, $1
mfhi $4
bne $2, $1, TAG264
TAG264:
lui $4, 10
lui $4, 12
sll $0, $0, 0
mfhi $1
TAG265:
mthi $1
blez $1, TAG266
sw $1, 0($1)
bgtz $1, TAG266
TAG266:
slti $4, $1, 15
mthi $4
mthi $4
sh $1, 0($1)
TAG267:
lb $4, 0($4)
multu $4, $4
xor $4, $4, $4
lb $3, 0($4)
TAG268:
mflo $2
bltz $2, TAG269
andi $3, $3, 7
addi $2, $2, 4
TAG269:
bgtz $2, TAG270
sb $2, 0($2)
addiu $2, $2, 5
lb $3, 0($2)
TAG270:
bne $3, $3, TAG271
mthi $3
lb $4, 0($3)
addi $1, $4, 4
TAG271:
ori $3, $1, 10
mflo $3
mflo $4
srl $3, $1, 1
TAG272:
mflo $2
xori $3, $3, 2
sw $3, 0($3)
addi $1, $3, 11
TAG273:
div $1, $1
lbu $4, 0($1)
mfhi $4
bltz $4, TAG274
TAG274:
mthi $4
mfhi $2
lw $4, 0($2)
lui $3, 13
TAG275:
bgez $3, TAG276
addiu $1, $3, 6
lh $3, 0($3)
mthi $3
TAG276:
mult $3, $3
bgez $3, TAG277
sll $0, $0, 0
bne $3, $3, TAG277
TAG277:
lui $1, 4
bne $3, $3, TAG278
divu $1, $1
sra $2, $3, 4
TAG278:
div $2, $2
bne $2, $2, TAG279
sll $0, $0, 0
lui $4, 6
TAG279:
beq $4, $4, TAG280
lui $3, 14
addiu $1, $3, 5
bltz $1, TAG280
TAG280:
sll $0, $0, 0
beq $1, $1, TAG281
andi $1, $1, 1
lui $4, 12
TAG281:
sll $0, $0, 0
mthi $4
mfhi $1
slti $2, $4, 15
TAG282:
lui $2, 0
lui $4, 6
mtlo $2
lui $1, 7
TAG283:
bgtz $1, TAG284
slt $3, $1, $1
lui $1, 2
sra $1, $1, 9
TAG284:
addu $4, $1, $1
mthi $1
sllv $4, $4, $4
beq $1, $4, TAG285
TAG285:
sll $0, $0, 0
sll $0, $0, 0
subu $1, $1, $1
mthi $1
TAG286:
mtlo $1
mtlo $1
sllv $3, $1, $1
sltiu $4, $3, 2
TAG287:
multu $4, $4
sb $4, 0($4)
sra $1, $4, 3
sltu $4, $1, $4
TAG288:
sb $4, 0($4)
lb $3, 0($4)
lb $4, 0($4)
sll $4, $4, 4
TAG289:
div $4, $4
lw $2, 0($4)
addu $3, $4, $2
divu $4, $2
TAG290:
bgez $3, TAG291
multu $3, $3
mthi $3
xor $3, $3, $3
TAG291:
lui $2, 14
bne $2, $2, TAG292
and $4, $3, $3
mfhi $1
TAG292:
mtlo $1
multu $1, $1
mult $1, $1
bgez $1, TAG293
TAG293:
mfhi $1
and $3, $1, $1
sh $1, 0($1)
slti $2, $1, 7
TAG294:
beq $2, $2, TAG295
or $3, $2, $2
div $3, $3
lui $3, 8
TAG295:
xori $3, $3, 13
sw $3, 0($3)
div $3, $3
slti $3, $3, 3
TAG296:
blez $3, TAG297
lui $4, 15
bgez $3, TAG297
or $4, $4, $4
TAG297:
lui $4, 5
srav $1, $4, $4
sll $0, $0, 0
blez $1, TAG298
TAG298:
lui $1, 1
andi $1, $1, 9
sub $2, $1, $1
xor $1, $1, $2
TAG299:
mult $1, $1
lw $3, 0($1)
bgez $1, TAG300
sw $3, 0($1)
TAG300:
mult $3, $3
xori $1, $3, 9
bgez $3, TAG301
lhu $1, 0($3)
TAG301:
beq $1, $1, TAG302
mfhi $1
beq $1, $1, TAG302
and $2, $1, $1
TAG302:
sll $2, $2, 9
sll $1, $2, 13
srlv $3, $1, $2
bltz $3, TAG303
TAG303:
lh $1, 0($3)
addi $2, $1, 6
lui $3, 2
lui $2, 8
TAG304:
sll $0, $0, 0
addu $1, $2, $2
lui $4, 2
ori $2, $1, 0
TAG305:
beq $2, $2, TAG306
mtlo $2
srl $1, $2, 6
bgez $1, TAG306
TAG306:
mtlo $1
mthi $1
sll $0, $0, 0
mfhi $1
TAG307:
srl $2, $1, 9
xori $1, $1, 14
slti $4, $2, 14
mtlo $1
TAG308:
lui $1, 8
lbu $1, 0($4)
bgtz $4, TAG309
sllv $2, $4, $1
TAG309:
mflo $4
lbu $4, 0($2)
bgtz $4, TAG310
or $2, $4, $4
TAG310:
srl $2, $2, 13
mfhi $2
bgtz $2, TAG311
mtlo $2
TAG311:
bgtz $2, TAG312
sll $0, $0, 0
bgtz $2, TAG312
mflo $2
TAG312:
mfhi $2
sll $0, $0, 0
sltu $1, $2, $2
multu $2, $1
TAG313:
mtlo $1
lw $2, 0($1)
sub $2, $1, $1
and $4, $1, $1
TAG314:
mult $4, $4
sw $4, 0($4)
nor $1, $4, $4
sra $1, $4, 9
TAG315:
lui $4, 4
sltiu $3, $4, 13
mult $1, $3
mflo $2
TAG316:
beq $2, $2, TAG317
mflo $2
bgtz $2, TAG317
mflo $2
TAG317:
bne $2, $2, TAG318
mthi $2
add $1, $2, $2
bne $1, $2, TAG318
TAG318:
subu $2, $1, $1
mflo $3
xori $2, $1, 8
lui $3, 4
TAG319:
sll $0, $0, 0
divu $3, $3
beq $3, $3, TAG320
addiu $1, $3, 13
TAG320:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG321:
sll $0, $0, 0
beq $1, $1, TAG322
mtlo $1
xor $2, $1, $1
TAG322:
mflo $1
bne $2, $1, TAG323
mthi $1
srlv $4, $2, $2
TAG323:
mflo $2
xori $3, $4, 12
beq $3, $2, TAG324
srlv $2, $2, $4
TAG324:
bgez $2, TAG325
mtlo $2
lui $2, 11
sltu $2, $2, $2
TAG325:
bgez $2, TAG326
mthi $2
div $2, $2
bne $2, $2, TAG326
TAG326:
mult $2, $2
mult $2, $2
sllv $2, $2, $2
div $2, $2
TAG327:
bgez $2, TAG328
mtlo $2
bltz $2, TAG328
mtlo $2
TAG328:
mtlo $2
mthi $2
mfhi $4
mflo $1
TAG329:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $2, TAG330
mflo $4
TAG330:
bgez $4, TAG331
multu $4, $4
xor $2, $4, $4
lui $1, 0
TAG331:
mfhi $2
mthi $1
mthi $1
sll $0, $0, 0
TAG332:
multu $3, $3
bltz $3, TAG333
mtlo $3
beq $3, $3, TAG333
TAG333:
mtlo $3
sra $4, $3, 2
mtlo $3
mthi $3
TAG334:
sll $0, $0, 0
bne $4, $4, TAG335
mthi $4
or $4, $4, $4
TAG335:
sltiu $2, $4, 0
mtlo $4
or $2, $4, $2
sll $0, $0, 0
TAG336:
mtlo $1
sb $1, 0($1)
bne $1, $1, TAG337
mflo $4
TAG337:
lui $1, 15
bgez $1, TAG338
sll $0, $0, 0
multu $1, $3
TAG338:
bltz $3, TAG339
mthi $3
blez $3, TAG339
lui $3, 8
TAG339:
sll $0, $0, 0
sll $0, $0, 0
sw $4, 0($4)
bne $4, $4, TAG340
TAG340:
mfhi $1
bne $1, $1, TAG341
div $1, $1
divu $1, $1
TAG341:
lui $1, 6
lui $3, 4
addu $2, $3, $3
blez $1, TAG342
TAG342:
lui $3, 1
div $2, $2
bgtz $3, TAG343
divu $2, $3
TAG343:
slt $4, $3, $3
mfhi $3
lui $3, 2
xor $3, $3, $3
TAG344:
lbu $3, 0($3)
sw $3, 0($3)
mflo $1
lui $2, 8
TAG345:
mflo $4
subu $4, $2, $2
sll $0, $0, 0
lb $1, 0($4)
TAG346:
lb $2, 0($1)
addi $2, $2, 6
mtlo $2
mult $2, $1
TAG347:
andi $4, $2, 12
bltz $2, TAG348
mult $2, $4
mult $2, $4
TAG348:
sw $4, 0($4)
mtlo $4
sw $4, 0($4)
andi $1, $4, 12
TAG349:
subu $3, $1, $1
bgtz $3, TAG350
lh $2, 0($1)
div $3, $2
TAG350:
sw $2, 0($2)
bgez $2, TAG351
ori $4, $2, 15
srl $3, $4, 2
TAG351:
addu $4, $3, $3
sh $4, 0($4)
mtlo $4
ori $2, $3, 11
TAG352:
mtlo $2
bne $2, $2, TAG353
andi $1, $2, 8
mtlo $1
TAG353:
sw $1, 0($1)
lhu $3, 0($1)
sb $3, 0($1)
lui $4, 11
TAG354:
addu $3, $4, $4
sll $0, $0, 0
multu $3, $4
sll $0, $0, 0
TAG355:
div $1, $1
xor $2, $1, $1
sw $2, 0($2)
xori $1, $2, 8
TAG356:
lui $4, 9
beq $1, $1, TAG357
lui $1, 8
lbu $3, 0($1)
TAG357:
sll $0, $0, 0
sll $0, $0, 0
slt $2, $3, $3
slt $4, $4, $3
TAG358:
bgtz $4, TAG359
mfhi $1
bltz $4, TAG359
mthi $4
TAG359:
sh $1, 0($1)
sh $1, 0($1)
sb $1, 0($1)
addi $2, $1, 12
TAG360:
mtlo $2
mthi $2
subu $4, $2, $2
sh $4, 0($2)
TAG361:
addiu $1, $4, 3
sw $1, 0($4)
bgtz $4, TAG362
or $1, $1, $1
TAG362:
bltz $1, TAG363
mthi $1
mtlo $1
srl $1, $1, 2
TAG363:
bgez $1, TAG364
sltiu $3, $1, 10
mfhi $1
mtlo $3
TAG364:
lui $2, 9
addi $1, $1, 8
sll $0, $0, 0
blez $1, TAG365
TAG365:
mtlo $1
addiu $2, $1, 6
mthi $2
mfhi $2
TAG366:
srlv $4, $2, $2
beq $2, $2, TAG367
sltiu $1, $4, 11
xor $3, $1, $2
TAG367:
sb $3, 0($3)
multu $3, $3
bltz $3, TAG368
lb $4, 0($3)
TAG368:
sb $4, 0($4)
mtlo $4
sb $4, 0($4)
lui $1, 6
TAG369:
sltu $1, $1, $1
lui $4, 14
slt $1, $1, $1
sub $1, $1, $1
TAG370:
mfhi $1
sllv $2, $1, $1
multu $1, $2
multu $1, $1
TAG371:
nor $4, $2, $2
lui $3, 10
lw $1, 1($4)
sltiu $1, $1, 10
TAG372:
lui $4, 0
sb $1, 0($4)
bltz $1, TAG373
addiu $1, $1, 10
TAG373:
sll $4, $1, 10
sh $4, -10240($4)
sw $1, -10240($4)
mfhi $4
TAG374:
addu $2, $4, $4
sh $4, 0($2)
bgtz $2, TAG375
mult $2, $4
TAG375:
addiu $3, $2, 8
div $3, $3
beq $3, $2, TAG376
nor $3, $2, $2
TAG376:
mfhi $2
mflo $2
sltiu $1, $2, 13
lui $3, 2
TAG377:
slt $1, $3, $3
mtlo $1
mtlo $1
addu $1, $3, $1
TAG378:
div $1, $1
sll $0, $0, 0
xor $4, $1, $1
sltiu $3, $1, 14
TAG379:
bne $3, $3, TAG380
sub $3, $3, $3
xori $2, $3, 0
lui $2, 11
TAG380:
bgez $2, TAG381
mthi $2
sh $2, 0($2)
lb $2, 0($2)
TAG381:
sltu $2, $2, $2
beq $2, $2, TAG382
add $2, $2, $2
sw $2, 0($2)
TAG382:
multu $2, $2
addi $4, $2, 11
srlv $4, $4, $4
multu $4, $4
TAG383:
xor $1, $4, $4
lui $1, 11
mtlo $1
sll $0, $0, 0
TAG384:
bgez $2, TAG385
sb $2, 0($2)
mfhi $1
lui $3, 10
TAG385:
lh $1, 0($3)
blez $3, TAG386
sb $1, 0($3)
bgtz $3, TAG386
TAG386:
mflo $4
mult $4, $1
blez $1, TAG387
lb $3, 0($1)
TAG387:
mtlo $3
mflo $2
mthi $3
sh $3, 0($3)
TAG388:
sll $2, $2, 12
mthi $2
bgez $2, TAG389
mfhi $3
TAG389:
lui $1, 1
sll $0, $0, 0
lui $4, 14
sll $0, $0, 0
TAG390:
sll $0, $0, 0
beq $4, $4, TAG391
mflo $4
bgtz $4, TAG391
TAG391:
mflo $3
beq $3, $4, TAG392
mfhi $3
blez $4, TAG392
TAG392:
mfhi $3
mflo $1
mult $3, $3
bne $1, $3, TAG393
TAG393:
mflo $3
lb $4, 0($1)
lhu $3, 0($4)
bne $3, $3, TAG394
TAG394:
multu $3, $3
mult $3, $3
mtlo $3
srav $2, $3, $3
TAG395:
beq $2, $2, TAG396
lui $2, 8
lui $4, 12
subu $2, $2, $2
TAG396:
bne $2, $2, TAG397
xor $1, $2, $2
multu $2, $2
sltiu $3, $1, 6
TAG397:
mflo $2
xori $4, $3, 11
bgez $2, TAG398
lui $4, 7
TAG398:
bgtz $4, TAG399
sll $0, $0, 0
sub $4, $4, $4
lhu $1, 0($4)
TAG399:
xori $2, $1, 1
addu $2, $1, $1
lbu $3, 0($2)
bne $1, $3, TAG400
TAG400:
sh $3, 0($3)
bne $3, $3, TAG401
mflo $1
multu $3, $1
TAG401:
bgtz $1, TAG402
mtlo $1
sh $1, 0($1)
bne $1, $1, TAG402
TAG402:
mflo $4
nor $4, $4, $1
lui $3, 7
lb $4, 0($1)
TAG403:
sw $4, 0($4)
lb $2, 0($4)
blez $4, TAG404
or $2, $2, $4
TAG404:
sllv $1, $2, $2
mthi $1
mtlo $2
beq $2, $1, TAG405
TAG405:
mthi $1
lhu $2, 0($1)
mfhi $2
bltz $2, TAG406
TAG406:
srl $2, $2, 11
srav $4, $2, $2
multu $2, $2
sh $2, 0($2)
TAG407:
ori $1, $4, 8
bne $1, $4, TAG408
srav $2, $4, $1
lui $1, 5
TAG408:
mthi $1
bgtz $1, TAG409
addu $4, $1, $1
xor $3, $4, $4
TAG409:
sll $0, $0, 0
mfhi $1
mtlo $4
div $4, $4
TAG410:
lui $4, 1
bltz $1, TAG411
sltiu $2, $4, 12
mflo $3
TAG411:
lui $2, 7
addu $4, $2, $3
sll $0, $0, 0
beq $4, $1, TAG412
TAG412:
mflo $2
bgez $2, TAG413
addu $2, $2, $2
sw $2, 0($2)
TAG413:
addu $4, $2, $2
bgtz $4, TAG414
srl $2, $4, 13
lui $1, 11
TAG414:
sb $1, 0($1)
lui $3, 5
lui $1, 9
mtlo $1
TAG415:
sltiu $4, $1, 3
beq $4, $1, TAG416
mtlo $1
bgez $1, TAG416
TAG416:
ori $3, $4, 8
lh $4, 0($3)
mfhi $1
bne $1, $1, TAG417
TAG417:
sub $4, $1, $1
ori $1, $1, 6
beq $4, $1, TAG418
mfhi $2
TAG418:
ori $4, $2, 4
sw $2, 0($4)
divu $2, $4
mtlo $2
TAG419:
sll $1, $4, 4
bgez $1, TAG420
mflo $4
slt $3, $4, $4
TAG420:
sh $3, 0($3)
nor $1, $3, $3
srl $1, $3, 4
nor $4, $1, $3
TAG421:
srl $4, $4, 14
sll $0, $0, 0
mflo $2
bgtz $2, TAG422
TAG422:
lui $3, 5
mfhi $2
and $2, $3, $2
sltiu $1, $2, 0
TAG423:
lui $1, 2
lui $4, 4
sll $0, $0, 0
lui $4, 5
TAG424:
mtlo $4
subu $3, $4, $4
mflo $4
mtlo $4
TAG425:
bgez $4, TAG426
mthi $4
blez $4, TAG426
sb $4, 0($4)
TAG426:
xori $2, $4, 11
slti $4, $2, 2
nor $3, $4, $2
sll $0, $0, 0
TAG427:
sll $0, $0, 0
sltiu $1, $4, 10
mthi $4
bne $3, $4, TAG428
TAG428:
lbu $1, 0($1)
blez $1, TAG429
lui $3, 12
lui $3, 6
TAG429:
blez $3, TAG430
ori $4, $3, 10
srlv $3, $3, $4
sll $0, $0, 0
TAG430:
add $4, $1, $1
mthi $1
mflo $4
div $4, $4
TAG431:
div $4, $4
mfhi $1
lui $4, 4
sll $0, $0, 0
TAG432:
xori $1, $4, 3
multu $1, $1
sll $0, $0, 0
beq $4, $4, TAG433
TAG433:
sll $0, $0, 0
mtlo $4
mflo $2
sll $0, $0, 0
TAG434:
multu $2, $2
sll $0, $0, 0
mtlo $2
mflo $4
TAG435:
addu $4, $4, $4
sll $0, $0, 0
lui $4, 12
mthi $4
TAG436:
bgez $4, TAG437
mtlo $4
mflo $3
bltz $4, TAG437
TAG437:
or $2, $3, $3
lui $2, 8
mtlo $2
sw $2, -768($3)
TAG438:
sll $0, $0, 0
div $2, $2
mtlo $2
beq $2, $2, TAG439
TAG439:
subu $3, $2, $2
sllv $4, $2, $2
nor $2, $4, $2
lui $4, 4
TAG440:
mflo $4
div $4, $4
blez $4, TAG441
mflo $2
TAG441:
sb $2, 0($2)
slti $3, $2, 7
sra $2, $2, 0
sb $2, 0($2)
TAG442:
lui $4, 4
sll $0, $0, 0
lbu $2, 0($2)
mflo $3
TAG443:
sll $1, $3, 4
bne $3, $1, TAG444
sltu $4, $3, $3
sh $4, 0($3)
TAG444:
lui $2, 15
bgtz $4, TAG445
mthi $2
sll $0, $0, 0
TAG445:
bgtz $2, TAG446
sll $0, $0, 0
beq $2, $2, TAG446
lhu $4, 0($2)
TAG446:
addiu $3, $4, 12
mfhi $3
bne $3, $3, TAG447
mthi $4
TAG447:
lui $4, 1
bltz $3, TAG448
xor $3, $3, $3
lb $4, 0($3)
TAG448:
sll $1, $4, 8
addu $2, $4, $1
lui $3, 15
lui $2, 6
TAG449:
mflo $2
bgtz $2, TAG450
multu $2, $2
srl $4, $2, 15
TAG450:
multu $4, $4
sw $4, 0($4)
mfhi $4
add $2, $4, $4
TAG451:
mfhi $3
mflo $3
sh $3, 0($3)
multu $3, $3
TAG452:
mult $3, $3
lui $1, 14
andi $3, $3, 6
beq $1, $3, TAG453
TAG453:
mthi $3
sw $3, 0($3)
lui $1, 4
divu $3, $1
TAG454:
lui $4, 13
beq $4, $4, TAG455
mfhi $1
lui $1, 4
TAG455:
mult $1, $1
mflo $1
mfhi $3
bne $1, $1, TAG456
TAG456:
add $2, $3, $3
mfhi $2
mthi $2
sltiu $4, $2, 7
TAG457:
lui $3, 4
mfhi $2
bne $4, $4, TAG458
sltu $2, $4, $3
TAG458:
lb $2, 0($2)
bgez $2, TAG459
lbu $4, 0($2)
lui $3, 14
TAG459:
mfhi $2
bgez $2, TAG460
lhu $3, 0($2)
lh $2, 0($3)
TAG460:
sw $2, 0($2)
addiu $1, $2, 13
sb $1, 0($1)
multu $1, $1
TAG461:
sltiu $2, $1, 10
mthi $1
mflo $3
or $1, $3, $3
TAG462:
slti $2, $1, 14
bgez $2, TAG463
slt $2, $2, $1
xori $4, $1, 7
TAG463:
mthi $4
multu $4, $4
bltz $4, TAG464
lw $1, 0($4)
TAG464:
lbu $1, 0($1)
beq $1, $1, TAG465
mfhi $3
bgez $1, TAG465
TAG465:
lw $2, 0($3)
sb $2, 0($2)
bgez $3, TAG466
mflo $3
TAG466:
beq $3, $3, TAG467
lui $3, 2
lhu $2, 0($3)
lui $3, 15
TAG467:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG468:
blez $1, TAG469
mflo $2
andi $4, $2, 6
xor $2, $2, $2
TAG469:
lb $1, 0($2)
mfhi $3
sh $2, 0($1)
mflo $4
TAG470:
blez $4, TAG471
mult $4, $4
mflo $1
mflo $4
TAG471:
mult $4, $4
slti $3, $4, 5
mult $3, $4
sh $4, 0($4)
TAG472:
lb $4, 0($3)
mult $4, $3
lui $3, 11
mflo $2
TAG473:
beq $2, $2, TAG474
mtlo $2
beq $2, $2, TAG474
lui $2, 7
TAG474:
xori $2, $2, 5
lui $1, 6
mflo $3
lb $4, 0($2)
TAG475:
sw $4, 0($4)
lui $2, 8
div $4, $2
sltu $1, $4, $4
TAG476:
lui $2, 5
mfhi $4
addi $3, $1, 9
mfhi $4
TAG477:
nor $3, $4, $4
mfhi $1
lw $1, 0($1)
multu $4, $1
TAG478:
lui $3, 0
mthi $1
mtlo $1
mfhi $4
TAG479:
sw $4, 0($4)
mflo $4
ori $4, $4, 2
beq $4, $4, TAG480
TAG480:
sh $4, 0($4)
addu $3, $4, $4
xori $3, $4, 5
bne $3, $3, TAG481
TAG481:
div $3, $3
slt $1, $3, $3
bltz $3, TAG482
sh $3, 0($1)
TAG482:
blez $1, TAG483
srl $2, $1, 14
blez $2, TAG483
mflo $3
TAG483:
lui $2, 0
sh $2, 0($2)
lui $2, 13
mthi $2
TAG484:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
srl $4, $3, 14
TAG485:
mthi $4
sw $4, 0($4)
lh $2, 0($4)
mtlo $2
TAG486:
lhu $1, 0($2)
sb $1, 0($1)
multu $2, $1
blez $2, TAG487
TAG487:
and $1, $1, $1
mtlo $1
mtlo $1
bgez $1, TAG488
TAG488:
sltu $3, $1, $1
sw $1, 0($1)
sh $3, 0($1)
bne $1, $1, TAG489
TAG489:
mthi $3
mult $3, $3
lw $2, 0($3)
sh $3, 0($2)
TAG490:
bgez $2, TAG491
mfhi $1
sb $1, 0($1)
lui $1, 9
TAG491:
beq $1, $1, TAG492
lw $4, 0($1)
srlv $4, $1, $1
mtlo $4
TAG492:
mult $4, $4
lb $4, 0($4)
sb $4, 0($4)
mtlo $4
TAG493:
lui $4, 0
sh $4, 0($4)
sh $4, 0($4)
lb $1, 0($4)
TAG494:
mflo $4
nor $2, $4, $4
lhu $3, 0($1)
bne $2, $3, TAG495
TAG495:
addiu $3, $3, 9
srav $2, $3, $3
mtlo $3
lh $1, 0($3)
TAG496:
sw $1, 0($1)
mtlo $1
sra $2, $1, 14
bne $2, $2, TAG497
TAG497:
sb $2, 0($2)
bne $2, $2, TAG498
mthi $2
lui $4, 3
TAG498:
beq $4, $4, TAG499
mfhi $3
mfhi $4
lui $4, 1
TAG499:
mfhi $3
sb $3, 0($3)
lui $1, 7
srl $4, $3, 15
TAG500:
multu $4, $4
multu $4, $4
sw $4, 0($4)
bltz $4, TAG501
TAG501:
multu $4, $4
beq $4, $4, TAG502
mult $4, $4
lhu $3, 0($4)
TAG502:
addi $1, $3, 14
nor $4, $1, $1
xori $1, $1, 2
lui $4, 0
TAG503:
mtlo $4
mfhi $1
lui $3, 13
lui $4, 12
TAG504:
mult $4, $4
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
TAG505:
mtlo $2
lui $2, 5
lui $2, 9
sll $1, $2, 10
TAG506:
sll $0, $0, 0
sll $0, $0, 0
sllv $3, $2, $1
mtlo $3
TAG507:
andi $4, $3, 0
bne $3, $3, TAG508
multu $4, $3
beq $4, $3, TAG508
TAG508:
lhu $1, 0($4)
slti $3, $4, 5
beq $3, $4, TAG509
sltiu $1, $3, 5
TAG509:
mfhi $4
lui $2, 13
srav $1, $2, $4
bgtz $1, TAG510
TAG510:
mtlo $1
beq $1, $1, TAG511
mflo $4
ori $4, $4, 7
TAG511:
lui $4, 7
sltiu $2, $4, 12
sb $4, 0($2)
mfhi $4
TAG512:
sb $4, 0($4)
sllv $1, $4, $4
bne $1, $4, TAG513
lhu $2, 0($4)
TAG513:
sra $2, $2, 11
andi $4, $2, 2
lui $3, 11
mult $4, $2
TAG514:
mflo $3
sra $3, $3, 8
mfhi $4
sra $1, $3, 2
TAG515:
mtlo $1
sh $1, 0($1)
sw $1, 0($1)
mflo $2
TAG516:
sub $3, $2, $2
bgez $2, TAG517
lui $2, 12
lui $1, 0
TAG517:
lw $4, 0($1)
mfhi $3
lui $2, 10
beq $3, $1, TAG518
TAG518:
mult $2, $2
sll $0, $0, 0
srl $3, $2, 4
bne $2, $3, TAG519
TAG519:
sltiu $4, $3, 6
sll $0, $0, 0
mtlo $3
lui $2, 14
TAG520:
lui $4, 14
addiu $2, $4, 9
bltz $2, TAG521
lui $2, 13
TAG521:
mthi $2
bgtz $2, TAG522
sll $0, $0, 0
mult $2, $2
TAG522:
divu $2, $2
mthi $2
sll $0, $0, 0
lui $4, 15
TAG523:
subu $2, $4, $4
div $4, $4
sll $0, $0, 0
sh $4, 0($2)
TAG524:
mflo $4
andi $1, $2, 5
ori $2, $2, 4
sll $4, $4, 8
TAG525:
sw $4, -256($4)
blez $4, TAG526
mult $4, $4
subu $1, $4, $4
TAG526:
bgez $1, TAG527
lbu $1, 0($1)
mthi $1
mflo $3
TAG527:
mthi $3
sllv $3, $3, $3
sll $0, $0, 0
divu $3, $3
TAG528:
divu $3, $3
sll $0, $0, 0
mfhi $1
andi $4, $1, 2
TAG529:
bltz $4, TAG530
mtlo $4
lui $2, 3
beq $2, $2, TAG530
TAG530:
sll $0, $0, 0
lui $1, 1
beq $1, $2, TAG531
multu $1, $1
TAG531:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
addu $1, $1, $2
TAG532:
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG533
TAG533:
sll $0, $0, 0
bltz $1, TAG534
lui $2, 7
lui $4, 4
TAG534:
divu $4, $4
mtlo $4
sra $4, $4, 4
lh $1, -16384($4)
TAG535:
sll $0, $0, 0
divu $4, $4
andi $1, $4, 14
lui $1, 11
TAG536:
bgez $1, TAG537
sll $0, $0, 0
sh $1, 0($3)
srl $4, $3, 10
TAG537:
mthi $4
sllv $4, $4, $4
lui $2, 1
addiu $3, $2, 11
TAG538:
bne $3, $3, TAG539
sll $0, $0, 0
sll $0, $0, 0
andi $4, $3, 10
TAG539:
mfhi $2
bne $4, $4, TAG540
sltiu $4, $4, 5
bgtz $2, TAG540
TAG540:
sw $4, 0($4)
mtlo $4
bgtz $4, TAG541
sra $4, $4, 9
TAG541:
bltz $4, TAG542
multu $4, $4
mfhi $4
multu $4, $4
TAG542:
sll $4, $4, 9
mfhi $3
ori $4, $4, 9
and $2, $4, $4
TAG543:
bgez $2, TAG544
sb $2, 0($2)
bne $2, $2, TAG544
mthi $2
TAG544:
sltiu $2, $2, 3
sb $2, 0($2)
mtlo $2
blez $2, TAG545
TAG545:
sll $4, $2, 0
bgez $2, TAG546
mtlo $2
mult $2, $2
TAG546:
mflo $3
multu $3, $4
sh $4, 0($3)
bgez $4, TAG547
TAG547:
mfhi $1
bgtz $1, TAG548
add $1, $1, $1
mfhi $3
TAG548:
beq $3, $3, TAG549
mfhi $3
lw $1, 0($3)
add $4, $3, $3
TAG549:
ori $1, $4, 12
divu $4, $1
addiu $1, $4, 11
subu $1, $1, $4
TAG550:
sra $3, $1, 13
addiu $2, $3, 11
bltz $3, TAG551
lui $2, 13
TAG551:
mthi $2
sll $0, $0, 0
xor $2, $2, $4
subu $1, $2, $2
TAG552:
xori $3, $1, 3
bne $1, $3, TAG553
sh $3, 0($1)
bne $1, $1, TAG553
TAG553:
lbu $1, 0($3)
sb $3, 0($3)
addiu $3, $1, 0
bne $1, $3, TAG554
TAG554:
sw $3, 0($3)
addu $4, $3, $3
sh $3, 0($4)
sh $4, 0($3)
TAG555:
mult $4, $4
mthi $4
mtlo $4
mfhi $1
TAG556:
mtlo $1
multu $1, $1
lui $4, 5
mthi $4
TAG557:
sllv $2, $4, $4
lui $2, 8
xor $4, $4, $2
mthi $4
TAG558:
bltz $4, TAG559
sll $0, $0, 0
subu $2, $1, $4
addu $3, $1, $4
TAG559:
beq $3, $3, TAG560
mthi $3
sh $3, 0($3)
lui $4, 6
TAG560:
sll $0, $0, 0
srav $3, $4, $4
bgez $3, TAG561
srl $1, $4, 13
TAG561:
bltz $1, TAG562
divu $1, $1
sw $1, 0($1)
mflo $3
TAG562:
lui $1, 4
addiu $2, $3, 11
lui $4, 1
lb $3, 0($3)
TAG563:
sw $3, 0($3)
sra $4, $3, 0
srav $4, $3, $3
mflo $2
TAG564:
bltz $2, TAG565
lui $2, 4
subu $4, $2, $2
mfhi $4
TAG565:
mtlo $4
beq $4, $4, TAG566
mult $4, $4
lhu $2, 0($4)
TAG566:
addiu $1, $2, 4
addiu $4, $2, 9
mthi $4
mthi $2
TAG567:
bgtz $4, TAG568
sltiu $2, $4, 11
sltiu $4, $2, 5
mtlo $4
TAG568:
divu $4, $4
lui $2, 4
bltz $4, TAG569
and $3, $2, $4
TAG569:
bgtz $3, TAG570
multu $3, $3
lw $4, 0($3)
divu $4, $4
TAG570:
bltz $4, TAG571
mtlo $4
divu $4, $4
bne $4, $4, TAG571
TAG571:
mthi $4
sll $1, $4, 5
beq $4, $1, TAG572
mthi $4
TAG572:
mtlo $1
slti $2, $1, 12
sll $0, $0, 0
lw $4, 0($2)
TAG573:
blez $4, TAG574
mult $4, $4
bne $4, $4, TAG574
mult $4, $4
TAG574:
multu $4, $4
mthi $4
sb $4, 0($4)
beq $4, $4, TAG575
TAG575:
sw $4, 0($4)
lui $1, 2
mult $1, $1
blez $4, TAG576
TAG576:
addiu $2, $1, 4
mthi $1
mthi $2
beq $1, $2, TAG577
TAG577:
sll $3, $2, 12
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG578:
bne $1, $1, TAG579
srav $2, $1, $1
addu $4, $2, $2
sll $0, $0, 0
TAG579:
div $2, $2
mflo $2
lui $2, 14
sll $0, $0, 0
TAG580:
lui $1, 1
srlv $2, $4, $4
mtlo $1
lui $4, 8
TAG581:
mflo $3
bgtz $4, TAG582
lui $1, 6
div $1, $4
TAG582:
xor $1, $1, $1
lb $3, 0($1)
mtlo $3
addiu $2, $1, 0
TAG583:
mtlo $2
lh $2, 0($2)
blez $2, TAG584
slt $3, $2, $2
TAG584:
bltz $3, TAG585
sltiu $4, $3, 11
sw $4, 0($3)
ori $3, $3, 5
TAG585:
beq $3, $3, TAG586
sb $3, 0($3)
mult $3, $3
mthi $3
TAG586:
and $4, $3, $3
sb $3, 0($3)
addiu $4, $4, 1
mult $4, $3
TAG587:
sb $4, 0($4)
mtlo $4
sll $2, $4, 8
beq $2, $2, TAG588
TAG588:
multu $2, $2
sw $2, -1536($2)
multu $2, $2
mflo $4
TAG589:
divu $4, $4
mfhi $1
bne $1, $1, TAG590
sub $2, $1, $1
TAG590:
sb $2, 0($2)
lui $3, 10
bltz $2, TAG591
sll $0, $0, 0
TAG591:
sh $2, 0($2)
slt $4, $2, $2
sra $1, $2, 10
beq $2, $2, TAG592
TAG592:
multu $1, $1
mtlo $1
lh $2, 0($1)
addiu $3, $2, 4
TAG593:
sb $3, 0($3)
sltu $1, $3, $3
mult $1, $3
addu $4, $3, $3
TAG594:
div $4, $4
nor $3, $4, $4
mthi $4
bltz $4, TAG595
TAG595:
sll $2, $3, 8
ori $3, $2, 10
mfhi $1
bltz $2, TAG596
TAG596:
mthi $1
mtlo $1
sw $1, 0($1)
and $1, $1, $1
TAG597:
mtlo $1
bgez $1, TAG598
div $1, $1
sra $1, $1, 14
TAG598:
lui $2, 6
lui $2, 7
lui $2, 9
mflo $4
TAG599:
mflo $1
slti $2, $4, 4
mflo $1
sb $4, 0($2)
TAG600:
sb $1, 0($1)
bgtz $1, TAG601
sb $1, 0($1)
mthi $1
TAG601:
sb $1, 0($1)
mflo $4
addiu $2, $1, 4
div $1, $1
TAG602:
bltz $2, TAG603
slt $2, $2, $2
mtlo $2
mthi $2
TAG603:
lh $2, 0($2)
mthi $2
sb $2, -256($2)
lui $1, 12
TAG604:
mult $1, $1
sll $0, $0, 0
lui $1, 14
bgez $1, TAG605
TAG605:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
TAG606:
divu $3, $3
mfhi $4
blez $3, TAG607
mthi $3
TAG607:
subu $3, $4, $4
lbu $4, 0($3)
lhu $1, 0($3)
sb $4, 0($3)
TAG608:
lui $3, 8
sw $3, -256($1)
lui $3, 6
lui $2, 12
TAG609:
addiu $3, $2, 8
lui $1, 9
sra $3, $1, 12
mfhi $2
TAG610:
blez $2, TAG611
addu $3, $2, $2
sh $3, 0($2)
div $3, $2
TAG611:
mflo $4
sltu $4, $3, $4
mtlo $4
lui $2, 8
TAG612:
mflo $3
blez $2, TAG613
mfhi $2
bgtz $2, TAG613
TAG613:
multu $2, $2
div $2, $2
divu $2, $2
lui $1, 0
TAG614:
beq $1, $1, TAG615
lui $4, 13
andi $3, $1, 7
mult $1, $3
TAG615:
bgez $3, TAG616
lh $4, 0($3)
lui $2, 9
lhu $2, 0($2)
TAG616:
sh $2, 2294($2)
sw $2, 2294($2)
bne $2, $2, TAG617
sw $2, 2294($2)
TAG617:
addu $3, $2, $2
mfhi $3
mtlo $3
mthi $2
TAG618:
mtlo $3
bltz $3, TAG619
mult $3, $3
sb $3, 0($3)
TAG619:
andi $4, $3, 1
lui $2, 2
sll $0, $0, 0
slt $4, $2, $2
TAG620:
lui $3, 14
blez $4, TAG621
multu $4, $4
sw $3, 0($3)
TAG621:
lui $3, 6
addiu $2, $3, 14
mfhi $4
bgtz $4, TAG622
TAG622:
lui $2, 8
bgez $4, TAG623
sll $1, $2, 1
mflo $3
TAG623:
blez $3, TAG624
sll $0, $0, 0
blez $3, TAG624
divu $3, $3
TAG624:
lui $4, 1
bgtz $3, TAG625
divu $4, $4
bne $4, $3, TAG625
TAG625:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $1, TAG626
srlv $1, $4, $4
TAG626:
bne $1, $1, TAG627
xori $3, $1, 3
bne $3, $3, TAG627
div $1, $3
TAG627:
sll $0, $0, 0
div $2, $2
mthi $2
mthi $2
TAG628:
bgtz $2, TAG629
mthi $2
mfhi $3
mfhi $3
TAG629:
bgez $3, TAG630
ori $1, $3, 3
lui $2, 9
div $2, $3
TAG630:
lui $1, 1
bgtz $2, TAG631
mfhi $2
lui $2, 6
TAG631:
mtlo $2
beq $2, $2, TAG632
divu $2, $2
multu $2, $2
TAG632:
sll $0, $0, 0
mthi $2
lui $3, 6
beq $2, $3, TAG633
TAG633:
mult $3, $3
divu $3, $3
mthi $3
lui $4, 0
TAG634:
beq $4, $4, TAG635
lui $3, 2
ori $2, $4, 14
bne $4, $2, TAG635
TAG635:
div $2, $2
sll $0, $0, 0
lui $4, 5
lui $4, 1
TAG636:
lui $4, 8
bltz $4, TAG637
sll $0, $0, 0
multu $4, $4
TAG637:
sll $0, $0, 0
addiu $2, $2, 15
mtlo $2
sltiu $3, $2, 6
TAG638:
lui $1, 12
subu $3, $3, $1
sll $0, $0, 0
lui $4, 1
TAG639:
sll $0, $0, 0
bgez $4, TAG640
lui $3, 3
lui $1, 7
TAG640:
mthi $1
bltz $1, TAG641
mflo $3
mflo $4
TAG641:
mtlo $4
lui $2, 2
multu $4, $4
lui $4, 3
TAG642:
multu $4, $4
lui $2, 2
lui $2, 11
lui $4, 13
TAG643:
bltz $4, TAG644
div $4, $4
xori $1, $4, 12
bgez $1, TAG644
TAG644:
srlv $3, $1, $1
andi $1, $1, 5
lhu $3, 0($1)
bne $3, $3, TAG645
TAG645:
mflo $3
bne $3, $3, TAG646
lbu $2, 0($3)
div $2, $3
TAG646:
mflo $3
mtlo $3
ori $3, $3, 11
sh $3, -255($3)
TAG647:
and $4, $3, $3
mthi $4
mflo $4
div $4, $3
TAG648:
mtlo $4
mthi $4
bltz $4, TAG649
mtlo $4
TAG649:
sltiu $2, $4, 5
mult $2, $2
slt $1, $2, $2
sb $1, 0($1)
TAG650:
sw $1, 0($1)
mfhi $1
multu $1, $1
lb $2, 0($1)
TAG651:
multu $2, $2
lui $3, 11
slti $2, $2, 5
blez $3, TAG652
TAG652:
sb $2, 0($2)
andi $4, $2, 2
lui $4, 0
lb $1, 0($2)
TAG653:
mtlo $1
bgtz $1, TAG654
mtlo $1
xor $1, $1, $1
TAG654:
lb $1, 0($1)
addiu $1, $1, 8
bgtz $1, TAG655
sb $1, 0($1)
TAG655:
sb $1, 0($1)
beq $1, $1, TAG656
lb $2, 0($1)
lbu $2, 0($2)
TAG656:
blez $2, TAG657
divu $2, $2
sltiu $4, $2, 5
bgez $2, TAG657
TAG657:
multu $4, $4
multu $4, $4
add $1, $4, $4
sh $4, 0($1)
TAG658:
sltiu $3, $1, 1
multu $1, $1
sb $1, 0($3)
beq $3, $3, TAG659
TAG659:
divu $3, $3
xori $2, $3, 7
mflo $3
mfhi $3
TAG660:
multu $3, $3
bne $3, $3, TAG661
sltiu $4, $3, 4
lui $3, 1
TAG661:
bltz $3, TAG662
multu $3, $3
bne $3, $3, TAG662
multu $3, $3
TAG662:
srl $2, $3, 5
nor $1, $3, $3
beq $2, $2, TAG663
mfhi $3
TAG663:
lui $4, 5
lui $3, 10
lui $4, 13
sll $0, $0, 0
TAG664:
lui $3, 2
bltz $2, TAG665
lui $1, 5
bne $1, $2, TAG665
TAG665:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
addu $1, $1, $1
TAG666:
beq $1, $1, TAG667
divu $1, $1
lui $3, 12
mtlo $3
TAG667:
mtlo $3
multu $3, $3
sll $0, $0, 0
bne $3, $3, TAG668
TAG668:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG669
TAG669:
lui $4, 7
bgtz $3, TAG670
mult $4, $3
bgtz $3, TAG670
TAG670:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG671
TAG671:
div $4, $4
bgez $4, TAG672
sltu $1, $4, $4
mtlo $4
TAG672:
mfhi $1
slti $4, $1, 4
xori $3, $1, 9
mflo $3
TAG673:
mtlo $3
mthi $3
mtlo $3
beq $3, $3, TAG674
TAG674:
mflo $2
lbu $4, 0($2)
lui $1, 14
beq $2, $3, TAG675
TAG675:
mthi $1
andi $1, $1, 15
lui $1, 15
subu $1, $1, $1
TAG676:
subu $3, $1, $1
bne $1, $1, TAG677
and $1, $3, $1
sw $3, 0($3)
TAG677:
or $1, $1, $1
blez $1, TAG678
lui $2, 13
sll $3, $1, 9
TAG678:
mtlo $3
mflo $2
multu $2, $3
sh $2, 0($2)
TAG679:
mfhi $2
mtlo $2
sb $2, 0($2)
add $1, $2, $2
TAG680:
lh $4, 0($1)
sh $1, 0($1)
mtlo $1
sw $4, 0($1)
TAG681:
andi $3, $4, 8
mflo $1
mthi $1
sh $4, 0($3)
TAG682:
mtlo $1
sltiu $3, $1, 10
beq $1, $1, TAG683
mthi $1
TAG683:
sb $3, 0($3)
mflo $1
mflo $1
sllv $4, $1, $1
TAG684:
mthi $4
beq $4, $4, TAG685
nor $2, $4, $4
sw $2, 0($2)
TAG685:
bgtz $2, TAG686
sw $2, 1($2)
lbu $3, 1($2)
sh $3, 1($2)
TAG686:
mtlo $3
mtlo $3
bgtz $3, TAG687
xori $4, $3, 15
TAG687:
sb $4, -240($4)
bltz $4, TAG688
div $4, $4
and $3, $4, $4
TAG688:
bgez $3, TAG689
mflo $4
mthi $4
andi $2, $3, 0
TAG689:
mflo $1
bne $2, $2, TAG690
addu $4, $1, $1
addiu $2, $2, 2
TAG690:
beq $2, $2, TAG691
mtlo $2
sltiu $2, $2, 9
div $2, $2
TAG691:
mflo $1
bgez $2, TAG692
multu $2, $1
mthi $2
TAG692:
lb $2, 0($1)
blez $2, TAG693
lhu $1, 0($2)
bgez $1, TAG693
TAG693:
xor $4, $1, $1
mtlo $1
add $3, $4, $1
bne $4, $3, TAG694
TAG694:
lui $4, 11
bltz $4, TAG695
lh $4, -240($3)
lui $2, 10
TAG695:
multu $2, $2
sll $0, $0, 0
div $2, $2
div $2, $2
TAG696:
bgtz $2, TAG697
mthi $2
bgez $2, TAG697
ori $3, $2, 0
TAG697:
addu $3, $3, $3
beq $3, $3, TAG698
sw $3, -480($3)
lbu $3, 0($3)
TAG698:
beq $3, $3, TAG699
div $3, $3
mtlo $3
mthi $3
TAG699:
sh $3, -480($3)
sra $1, $3, 11
blez $1, TAG700
multu $3, $1
TAG700:
srav $4, $1, $1
sb $1, 0($4)
mflo $1
lh $3, 0($1)
TAG701:
lui $2, 10
blez $2, TAG702
sw $3, -256($3)
lw $3, -256($3)
TAG702:
bltz $3, TAG703
sb $3, -256($3)
div $3, $3
beq $3, $3, TAG703
TAG703:
slt $2, $3, $3
sb $2, 0($2)
and $1, $3, $3
bne $3, $2, TAG704
TAG704:
sh $1, -256($1)
xor $4, $1, $1
sh $1, 0($4)
mthi $1
TAG705:
bne $4, $4, TAG706
mflo $1
sllv $2, $4, $4
mfhi $4
TAG706:
mfhi $3
mflo $3
lbu $3, -256($4)
lh $4, 0($3)
TAG707:
div $4, $4
lui $4, 10
lui $1, 1
mfhi $2
TAG708:
bne $2, $2, TAG709
srav $4, $2, $2
lb $2, 0($4)
and $3, $2, $4
TAG709:
sh $3, 0($3)
or $3, $3, $3
ori $3, $3, 0
lui $3, 13
TAG710:
andi $1, $3, 5
mtlo $3
mtlo $1
mthi $1
TAG711:
blez $1, TAG712
multu $1, $1
srl $3, $1, 1
sub $4, $1, $1
TAG712:
multu $4, $4
bne $4, $4, TAG713
mfhi $4
xori $4, $4, 9
TAG713:
multu $4, $4
sra $4, $4, 6
mflo $1
mthi $1
TAG714:
srav $1, $1, $1
sb $1, 0($1)
mtlo $1
bltz $1, TAG715
TAG715:
mthi $1
lbu $4, 0($1)
sub $1, $1, $4
slti $3, $1, 2
TAG716:
lui $1, 1
lb $4, 0($3)
sb $1, 0($3)
mult $3, $4
TAG717:
sw $4, 0($4)
mfhi $2
bgtz $4, TAG718
sb $2, 0($2)
TAG718:
sb $2, 0($2)
slt $4, $2, $2
bne $2, $4, TAG719
lh $1, 0($4)
TAG719:
blez $1, TAG720
mtlo $1
sra $2, $1, 10
subu $3, $1, $1
TAG720:
subu $4, $3, $3
add $2, $4, $4
nor $4, $4, $4
mthi $2
TAG721:
bgez $4, TAG722
xori $1, $4, 15
sw $4, 1($4)
mtlo $1
TAG722:
mtlo $1
mfhi $1
ori $3, $1, 10
bne $1, $3, TAG723
TAG723:
mthi $3
lui $3, 5
sll $0, $0, 0
sra $4, $3, 9
TAG724:
sw $4, -640($4)
slti $4, $4, 15
mult $4, $4
sub $1, $4, $4
TAG725:
mflo $4
and $2, $1, $1
lb $1, 0($2)
mfhi $2
TAG726:
bgtz $2, TAG727
sh $2, 0($2)
sub $2, $2, $2
beq $2, $2, TAG727
TAG727:
sw $2, 0($2)
lhu $2, 0($2)
slti $1, $2, 7
addiu $4, $1, 6
TAG728:
mfhi $1
mtlo $4
addu $4, $4, $1
div $4, $4
TAG729:
mthi $4
mfhi $1
mthi $1
mflo $2
TAG730:
blez $2, TAG731
lbu $3, 0($2)
sw $2, 0($3)
bne $3, $3, TAG731
TAG731:
lb $4, 0($3)
sb $3, 0($3)
sw $3, 0($3)
addi $3, $3, 12
TAG732:
addu $4, $3, $3
divu $3, $4
mflo $3
lw $1, 0($3)
TAG733:
mult $1, $1
sra $2, $1, 15
mult $1, $2
addiu $2, $2, 12
TAG734:
mtlo $2
andi $1, $2, 12
mflo $2
mtlo $1
TAG735:
sltiu $3, $2, 14
blez $2, TAG736
mflo $3
addiu $1, $2, 5
TAG736:
mthi $1
lbu $2, 0($1)
multu $1, $2
lui $1, 15
TAG737:
sll $0, $0, 0
div $1, $1
div $1, $1
bne $1, $1, TAG738
TAG738:
divu $1, $1
mfhi $3
bgez $3, TAG739
sh $3, 0($3)
TAG739:
sltu $3, $3, $3
mflo $2
mtlo $2
andi $1, $3, 2
TAG740:
sb $1, 0($1)
mult $1, $1
mtlo $1
lui $1, 15
TAG741:
subu $4, $1, $1
sh $4, 0($4)
bne $1, $1, TAG742
sll $0, $0, 0
TAG742:
mthi $4
lui $4, 11
sll $0, $0, 0
bgtz $4, TAG743
TAG743:
nor $2, $4, $4
xori $2, $4, 12
blez $4, TAG744
sll $0, $0, 0
TAG744:
ori $2, $2, 0
multu $2, $2
nor $4, $2, $2
mtlo $2
TAG745:
andi $4, $4, 0
mfhi $1
sb $4, 0($1)
mthi $1
TAG746:
mthi $1
mthi $1
sb $1, 0($1)
lb $4, 0($1)
TAG747:
multu $4, $4
beq $4, $4, TAG748
srlv $3, $4, $4
sh $3, 0($4)
TAG748:
multu $3, $3
bgez $3, TAG749
xori $3, $3, 6
divu $3, $3
TAG749:
beq $3, $3, TAG750
sh $3, 0($3)
bltz $3, TAG750
lui $2, 6
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop