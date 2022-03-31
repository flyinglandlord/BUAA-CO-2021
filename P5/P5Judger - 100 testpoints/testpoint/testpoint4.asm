ori $1, $0, 4
ori $2, $0, 9
ori $3, $0, 6
ori $4, $0, 4
sw $2, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $3, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $2, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $3, 124($0)
bne $2, $2, TAG1
sb $2, 0($2)
div $2, $2
mflo $4
TAG1:
mfhi $3
sh $4, 0($3)
mtlo $4
lui $1, 7
TAG2:
mthi $1
lui $2, 15
lui $4, 13
xori $1, $2, 2
TAG3:
sll $2, $1, 7
sll $0, $0, 0
sll $0, $0, 0
srl $4, $2, 11
TAG4:
lui $3, 6
lui $3, 10
xor $3, $3, $3
mfhi $2
TAG5:
beq $2, $2, TAG6
sra $4, $2, 7
or $4, $2, $2
mfhi $1
TAG6:
bgtz $1, TAG7
mthi $1
sh $1, 0($1)
sw $1, 0($1)
TAG7:
bgtz $1, TAG8
sll $0, $0, 0
lui $4, 11
lh $3, 0($4)
TAG8:
mult $3, $3
srl $4, $3, 6
beq $3, $3, TAG9
slti $4, $3, 8
TAG9:
bgtz $4, TAG10
divu $4, $4
slt $3, $4, $4
mfhi $1
TAG10:
div $1, $1
lui $1, 4
mtlo $1
divu $1, $1
TAG11:
sll $0, $0, 0
bgtz $1, TAG12
lui $4, 4
ori $4, $1, 4
TAG12:
beq $4, $4, TAG13
mflo $1
mfhi $3
lh $3, 0($4)
TAG13:
mtlo $3
addu $1, $3, $3
mthi $1
lui $1, 6
TAG14:
bltz $1, TAG15
mthi $1
beq $1, $1, TAG15
mthi $1
TAG15:
sll $0, $0, 0
beq $1, $1, TAG16
addiu $3, $1, 8
mthi $1
TAG16:
lui $4, 11
and $2, $4, $4
mtlo $3
sll $0, $0, 0
TAG17:
mflo $1
sll $0, $0, 0
bltz $1, TAG18
ori $1, $2, 0
TAG18:
lui $1, 2
mfhi $3
mfhi $4
mtlo $1
TAG19:
sll $0, $0, 0
mflo $3
mult $3, $4
divu $4, $3
TAG20:
beq $3, $3, TAG21
mthi $3
lw $2, 0($3)
srlv $4, $2, $2
TAG21:
mult $4, $4
mflo $3
sll $0, $0, 0
beq $3, $3, TAG22
TAG22:
multu $3, $3
sb $3, 0($3)
subu $1, $3, $3
sw $3, 0($1)
TAG23:
lhu $4, 0($1)
sllv $2, $1, $4
mthi $2
mflo $2
TAG24:
beq $2, $2, TAG25
sb $2, 0($2)
beq $2, $2, TAG25
lhu $4, 0($2)
TAG25:
sb $4, 0($4)
srav $4, $4, $4
mtlo $4
bgez $4, TAG26
TAG26:
mflo $4
lui $4, 2
sll $0, $0, 0
and $1, $4, $4
TAG27:
bne $1, $1, TAG28
slti $4, $1, 14
beq $4, $4, TAG28
sll $0, $0, 0
TAG28:
lui $4, 2
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
TAG29:
bne $3, $3, TAG30
mult $3, $3
bgez $3, TAG30
multu $3, $3
TAG30:
mtlo $3
mult $3, $3
mtlo $3
slti $2, $3, 6
TAG31:
xor $4, $2, $2
sb $2, 0($2)
beq $2, $4, TAG32
mflo $4
TAG32:
mult $4, $4
addu $1, $4, $4
mflo $1
mult $4, $1
TAG33:
bne $1, $1, TAG34
sw $1, 0($1)
bltz $1, TAG34
srl $2, $1, 6
TAG34:
sltu $4, $2, $2
sh $2, 0($2)
beq $2, $2, TAG35
lh $4, 0($2)
TAG35:
mthi $4
lh $3, 0($4)
sub $1, $3, $3
sltu $1, $4, $3
TAG36:
sw $1, 0($1)
sw $1, 0($1)
mult $1, $1
lui $3, 13
TAG37:
mthi $3
bgez $3, TAG38
mthi $3
sb $3, 0($3)
TAG38:
sltiu $4, $3, 14
bne $4, $4, TAG39
mflo $4
bgez $3, TAG39
TAG39:
multu $4, $4
andi $1, $4, 0
lbu $3, 0($1)
sb $3, 0($3)
TAG40:
bgtz $3, TAG41
mult $3, $3
lbu $4, 0($3)
sw $3, 0($3)
TAG41:
sllv $1, $4, $4
multu $1, $1
lui $1, 8
mfhi $3
TAG42:
mthi $3
lh $2, 0($3)
bne $3, $2, TAG43
lb $2, 0($2)
TAG43:
slti $1, $2, 15
andi $3, $1, 9
mfhi $4
bgez $4, TAG44
TAG44:
mthi $4
nor $2, $4, $4
bgtz $2, TAG45
lbu $2, 0($4)
TAG45:
bgez $2, TAG46
lw $2, 0($2)
sltiu $3, $2, 12
lh $1, 0($3)
TAG46:
lb $4, 0($1)
srlv $4, $4, $1
beq $4, $4, TAG47
or $2, $4, $4
TAG47:
sh $2, 0($2)
sh $2, 0($2)
lui $4, 5
bgtz $4, TAG48
TAG48:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG49
TAG49:
srav $1, $4, $4
mfhi $4
mult $4, $1
mthi $1
TAG50:
sb $4, 0($4)
lhu $4, 0($4)
lh $3, 0($4)
bne $4, $4, TAG51
TAG51:
sllv $4, $3, $3
mtlo $4
lui $3, 11
addu $3, $4, $3
TAG52:
mthi $3
sll $0, $0, 0
blez $3, TAG53
sll $0, $0, 0
TAG53:
lw $1, 0($2)
mfhi $3
bne $3, $3, TAG54
mflo $4
TAG54:
sh $4, 0($4)
addu $4, $4, $4
mfhi $2
nor $4, $4, $4
TAG55:
beq $4, $4, TAG56
multu $4, $4
sltu $1, $4, $4
sllv $2, $4, $1
TAG56:
sll $0, $0, 0
mtlo $1
bltz $1, TAG57
mthi $1
TAG57:
sra $2, $1, 7
mtlo $1
bne $2, $2, TAG58
srav $4, $1, $2
TAG58:
mthi $4
sw $4, 0($4)
mult $4, $4
bltz $4, TAG59
TAG59:
multu $4, $4
multu $4, $4
addi $3, $4, 3
addu $1, $3, $4
TAG60:
lui $1, 13
mthi $1
srlv $3, $1, $1
divu $3, $1
TAG61:
srlv $3, $3, $3
mfhi $2
sll $0, $0, 0
mthi $3
TAG62:
sra $1, $2, 2
mult $1, $1
lhu $4, 0($1)
lui $3, 11
TAG63:
bltz $3, TAG64
mfhi $3
addi $4, $3, 3
srl $4, $4, 4
TAG64:
mult $4, $4
mthi $4
or $1, $4, $4
lui $1, 8
TAG65:
sll $0, $0, 0
sb $1, 0($3)
mthi $1
mflo $4
TAG66:
mult $4, $4
subu $2, $4, $4
mthi $4
sw $4, 0($2)
TAG67:
beq $2, $2, TAG68
andi $4, $2, 0
mflo $3
mflo $2
TAG68:
addiu $3, $2, 4
mflo $4
xor $2, $4, $4
addi $1, $2, 2
TAG69:
bgez $1, TAG70
lhu $3, 0($1)
mult $3, $1
addi $3, $1, 14
TAG70:
multu $3, $3
sll $2, $3, 10
bne $3, $2, TAG71
sll $3, $2, 8
TAG71:
beq $3, $3, TAG72
mfhi $4
bgtz $4, TAG72
sh $3, 0($4)
TAG72:
lhu $1, 0($4)
subu $4, $4, $1
lui $1, 11
bne $4, $1, TAG73
TAG73:
sll $0, $0, 0
divu $1, $1
mthi $1
sll $0, $0, 0
TAG74:
multu $3, $3
multu $3, $3
or $3, $3, $3
lh $3, 0($3)
TAG75:
sw $3, 0($3)
mult $3, $3
srl $2, $3, 3
addiu $4, $2, 7
TAG76:
lui $4, 14
sll $0, $0, 0
mtlo $4
mfhi $3
TAG77:
sub $4, $3, $3
bgtz $4, TAG78
sra $4, $4, 12
mtlo $4
TAG78:
srav $3, $4, $4
lb $2, 0($3)
beq $2, $3, TAG79
sw $4, 0($3)
TAG79:
mfhi $4
lui $2, 8
mflo $3
divu $4, $2
TAG80:
mfhi $2
lw $1, 0($3)
sb $1, 0($2)
lui $1, 0
TAG81:
bne $1, $1, TAG82
srl $2, $1, 6
blez $1, TAG82
lui $1, 5
TAG82:
mtlo $1
or $4, $1, $1
lui $2, 1
div $1, $4
TAG83:
mfhi $1
sra $2, $1, 15
mfhi $2
subu $4, $2, $2
TAG84:
mflo $3
lui $1, 10
sll $0, $0, 0
lui $1, 2
TAG85:
srl $1, $1, 7
lb $2, -1024($1)
lh $4, 0($2)
lui $4, 7
TAG86:
sll $0, $0, 0
sll $4, $4, 6
sll $2, $4, 5
bgez $4, TAG87
TAG87:
mflo $3
srl $1, $2, 8
sllv $3, $1, $2
lui $4, 1
TAG88:
addiu $3, $4, 7
lui $1, 3
mflo $1
mfhi $3
TAG89:
bne $3, $3, TAG90
mult $3, $3
sh $3, 0($3)
lhu $2, 0($3)
TAG90:
mthi $2
bgez $2, TAG91
xori $1, $2, 15
slti $2, $1, 12
TAG91:
sltiu $1, $2, 0
lui $4, 14
lui $2, 5
slt $4, $2, $2
TAG92:
lb $2, 0($4)
mtlo $4
beq $2, $2, TAG93
lui $4, 10
TAG93:
lui $4, 9
div $4, $4
beq $4, $4, TAG94
div $4, $4
TAG94:
divu $4, $4
mtlo $4
mfhi $4
sra $3, $4, 0
TAG95:
mtlo $3
mthi $3
slt $2, $3, $3
bne $3, $3, TAG96
TAG96:
slti $1, $2, 8
lui $4, 2
mtlo $2
mflo $4
TAG97:
mthi $4
blez $4, TAG98
lui $2, 6
mthi $4
TAG98:
sll $0, $0, 0
mfhi $4
mtlo $2
bgez $2, TAG99
TAG99:
lbu $2, 0($4)
mtlo $2
sb $2, 0($2)
addu $3, $2, $4
TAG100:
multu $3, $3
sllv $4, $3, $3
mfhi $2
mfhi $1
TAG101:
bne $1, $1, TAG102
lw $3, 0($1)
sw $1, 0($3)
beq $1, $1, TAG102
TAG102:
slti $1, $3, 6
mult $1, $3
mflo $3
lui $1, 2
TAG103:
mfhi $3
sll $0, $0, 0
lui $3, 14
blez $3, TAG104
TAG104:
sll $0, $0, 0
bgtz $3, TAG105
slt $3, $3, $3
mflo $2
TAG105:
lb $3, 0($2)
mflo $1
srlv $2, $1, $3
or $2, $2, $1
TAG106:
bltz $2, TAG107
mflo $3
mthi $3
mflo $3
TAG107:
bne $3, $3, TAG108
mthi $3
bne $3, $3, TAG108
multu $3, $3
TAG108:
ori $2, $3, 14
mflo $2
lb $3, 0($2)
mult $3, $2
TAG109:
xori $1, $3, 11
mthi $3
sb $3, 0($1)
mthi $3
TAG110:
divu $1, $1
multu $1, $1
bltz $1, TAG111
mfhi $1
TAG111:
sub $1, $1, $1
srlv $2, $1, $1
lh $2, 0($2)
lui $1, 15
TAG112:
addu $3, $1, $1
sll $0, $0, 0
beq $1, $3, TAG113
divu $1, $3
TAG113:
subu $3, $3, $3
bgez $3, TAG114
mthi $3
mtlo $3
TAG114:
sw $3, 0($3)
beq $3, $3, TAG115
mfhi $2
mflo $1
TAG115:
div $1, $1
div $1, $1
slti $4, $1, 8
mfhi $3
TAG116:
lui $4, 11
or $1, $4, $4
sll $0, $0, 0
srlv $2, $3, $4
TAG117:
sh $2, 0($2)
addi $2, $2, 8
lui $4, 10
sw $2, 0($2)
TAG118:
lui $4, 2
lui $2, 14
multu $2, $2
sll $3, $2, 6
TAG119:
bne $3, $3, TAG120
sll $0, $0, 0
lui $2, 9
bne $2, $4, TAG120
TAG120:
subu $1, $2, $2
mfhi $1
sll $0, $0, 0
sb $2, -196($1)
TAG121:
andi $3, $1, 14
multu $3, $1
mfhi $3
div $3, $1
TAG122:
mult $3, $3
lui $1, 6
sll $0, $0, 0
bne $3, $1, TAG123
TAG123:
divu $1, $1
bltz $1, TAG124
srlv $1, $1, $1
lui $1, 11
TAG124:
multu $1, $1
xor $3, $1, $1
multu $1, $1
mtlo $3
TAG125:
mtlo $3
sh $3, 0($3)
subu $1, $3, $3
sh $3, 0($3)
TAG126:
bne $1, $1, TAG127
mtlo $1
lui $3, 15
mfhi $1
TAG127:
mult $1, $1
lbu $4, 0($1)
lui $1, 10
bne $1, $1, TAG128
TAG128:
srav $2, $1, $1
sll $0, $0, 0
bgtz $2, TAG129
div $2, $1
TAG129:
mthi $2
sll $0, $0, 0
srlv $4, $2, $2
beq $4, $2, TAG130
TAG130:
lui $3, 3
sll $0, $0, 0
bne $4, $4, TAG131
mfhi $1
TAG131:
mtlo $1
lui $3, 5
and $1, $1, $3
mflo $3
TAG132:
slt $2, $3, $3
mthi $3
div $2, $3
mflo $4
TAG133:
mthi $4
lui $4, 12
div $4, $4
sll $0, $0, 0
TAG134:
multu $4, $4
subu $2, $4, $4
addi $3, $2, 11
lui $3, 0
TAG135:
beq $3, $3, TAG136
mtlo $3
slt $2, $3, $3
lb $3, 0($3)
TAG136:
beq $3, $3, TAG137
mult $3, $3
srav $3, $3, $3
addiu $2, $3, 10
TAG137:
lw $2, 0($2)
bne $2, $2, TAG138
lbu $1, 0($2)
lui $3, 14
TAG138:
slti $4, $3, 15
srlv $3, $4, $4
beq $4, $3, TAG139
andi $4, $3, 3
TAG139:
mtlo $4
bne $4, $4, TAG140
mtlo $4
ori $1, $4, 8
TAG140:
sb $1, 0($1)
lui $4, 3
lui $1, 6
addiu $4, $1, 10
TAG141:
andi $1, $4, 1
mflo $2
mtlo $2
subu $2, $4, $2
TAG142:
addiu $3, $2, 7
slt $1, $2, $2
mflo $4
addu $4, $2, $1
TAG143:
ori $4, $4, 8
mfhi $3
beq $4, $4, TAG144
or $2, $4, $4
TAG144:
sll $0, $0, 0
subu $4, $2, $2
sll $0, $0, 0
lbu $2, 0($4)
TAG145:
mult $2, $2
sll $1, $2, 5
sh $1, 0($2)
add $1, $1, $1
TAG146:
srav $4, $1, $1
bgez $1, TAG147
sb $4, 0($4)
div $4, $1
TAG147:
slti $1, $4, 6
srl $1, $4, 6
bgtz $1, TAG148
sb $1, 0($1)
TAG148:
lui $3, 12
mfhi $1
slti $3, $1, 5
bgez $3, TAG149
TAG149:
lbu $2, 0($3)
mflo $4
mthi $2
lhu $4, 0($4)
TAG150:
beq $4, $4, TAG151
mthi $4
sh $4, 0($4)
xor $3, $4, $4
TAG151:
mtlo $3
beq $3, $3, TAG152
lui $1, 9
mfhi $1
TAG152:
mflo $3
div $3, $1
lbu $4, 0($3)
bne $3, $3, TAG153
TAG153:
lhu $1, 0($4)
lui $4, 10
sll $0, $0, 0
beq $1, $1, TAG154
TAG154:
sltu $2, $4, $4
bltz $2, TAG155
sb $2, 0($2)
addi $3, $2, 14
TAG155:
blez $3, TAG156
sh $3, 0($3)
mtlo $3
multu $3, $3
TAG156:
sh $3, 0($3)
multu $3, $3
mthi $3
sh $3, 0($3)
TAG157:
bgtz $3, TAG158
divu $3, $3
mtlo $3
sltiu $4, $3, 15
TAG158:
lui $3, 11
mflo $1
sb $1, 0($1)
bltz $1, TAG159
TAG159:
sra $3, $1, 3
srlv $3, $3, $1
bne $3, $1, TAG160
lb $2, 0($1)
TAG160:
lui $3, 15
mult $2, $2
sb $2, 0($2)
sb $3, 0($2)
TAG161:
bne $3, $3, TAG162
sltiu $1, $3, 2
ori $4, $1, 2
sllv $2, $1, $1
TAG162:
lb $1, 0($2)
lw $4, 0($2)
mthi $1
lh $1, 0($2)
TAG163:
mtlo $1
multu $1, $1
mflo $1
sw $1, 0($1)
TAG164:
and $2, $1, $1
mult $1, $2
addiu $2, $1, 3
mtlo $2
TAG165:
srl $3, $2, 12
mthi $2
blez $3, TAG166
divu $3, $2
TAG166:
mult $3, $3
mtlo $3
bgez $3, TAG167
mtlo $3
TAG167:
xor $2, $3, $3
sllv $4, $3, $2
ori $2, $4, 15
sllv $1, $3, $2
TAG168:
bltz $1, TAG169
multu $1, $1
mtlo $1
multu $1, $1
TAG169:
beq $1, $1, TAG170
lui $4, 2
mtlo $4
lui $4, 3
TAG170:
srav $2, $4, $4
div $4, $2
sll $0, $0, 0
mthi $2
TAG171:
bgez $3, TAG172
lui $2, 14
mtlo $3
bltz $3, TAG172
TAG172:
divu $2, $2
sll $0, $0, 0
mtlo $2
and $1, $2, $2
TAG173:
lui $3, 10
mfhi $4
lw $2, 0($4)
sll $1, $2, 0
TAG174:
lhu $1, 0($1)
ori $1, $1, 0
addiu $4, $1, 1
lui $1, 5
TAG175:
lui $4, 8
divu $4, $4
multu $4, $4
mthi $1
TAG176:
mflo $4
bgtz $4, TAG177
xor $2, $4, $4
bne $4, $4, TAG177
TAG177:
mtlo $2
blez $2, TAG178
lh $1, 0($2)
beq $1, $1, TAG178
TAG178:
sra $4, $1, 14
beq $4, $1, TAG179
lh $1, 0($1)
mthi $4
TAG179:
mult $1, $1
blez $1, TAG180
mult $1, $1
bne $1, $1, TAG180
TAG180:
addu $4, $1, $1
lbu $3, 0($4)
sub $4, $1, $3
sltiu $3, $4, 14
TAG181:
lb $1, 0($3)
bgtz $3, TAG182
slt $2, $3, $1
srav $1, $2, $1
TAG182:
beq $1, $1, TAG183
multu $1, $1
bne $1, $1, TAG183
mtlo $1
TAG183:
lh $4, 0($1)
srlv $4, $4, $1
addiu $3, $4, 11
srav $1, $4, $4
TAG184:
lh $3, 0($1)
lb $1, 0($3)
mtlo $1
lh $4, 0($1)
TAG185:
addi $3, $4, 1
addiu $1, $4, 2
or $1, $4, $1
sra $3, $1, 11
TAG186:
or $2, $3, $3
sw $3, 0($3)
beq $2, $2, TAG187
mfhi $4
TAG187:
mflo $2
slt $3, $2, $2
blez $2, TAG188
sb $3, 0($3)
TAG188:
mfhi $1
lw $4, 0($1)
mfhi $3
mthi $3
TAG189:
mtlo $3
sltiu $1, $3, 15
lbu $2, 0($1)
sb $2, 0($3)
TAG190:
addi $2, $2, 6
div $2, $2
sh $2, 0($2)
div $2, $2
TAG191:
mult $2, $2
mfhi $2
sw $2, 0($2)
or $3, $2, $2
TAG192:
mult $3, $3
addiu $2, $3, 11
divu $2, $2
srav $2, $3, $2
TAG193:
sll $3, $2, 8
lbu $4, 0($3)
sltiu $2, $4, 4
mtlo $3
TAG194:
sltiu $2, $2, 4
mfhi $4
lbu $3, 0($2)
lui $4, 10
TAG195:
sra $4, $4, 15
mthi $4
mtlo $4
lw $3, 0($4)
TAG196:
mflo $2
bne $3, $2, TAG197
lh $2, 0($2)
sh $3, 0($2)
TAG197:
mtlo $2
ori $4, $2, 9
lui $2, 15
subu $1, $2, $2
TAG198:
sw $1, 0($1)
multu $1, $1
beq $1, $1, TAG199
mtlo $1
TAG199:
addi $2, $1, 5
beq $2, $1, TAG200
sllv $2, $2, $2
blez $2, TAG200
TAG200:
lui $2, 2
lui $3, 2
blez $2, TAG201
sllv $3, $2, $3
TAG201:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG202:
sllv $1, $1, $1
sll $0, $0, 0
bne $1, $1, TAG203
sll $0, $0, 0
TAG203:
bne $1, $1, TAG204
addiu $2, $1, 5
mfhi $1
bne $1, $2, TAG204
TAG204:
lbu $3, 0($1)
bgtz $3, TAG205
and $3, $1, $3
multu $3, $1
TAG205:
mult $3, $3
sb $3, 0($3)
sb $3, 0($3)
bne $3, $3, TAG206
TAG206:
sb $3, 0($3)
mult $3, $3
srl $4, $3, 5
beq $3, $4, TAG207
TAG207:
mtlo $4
bgez $4, TAG208
lui $4, 14
bltz $4, TAG208
TAG208:
div $4, $4
mthi $4
lui $1, 3
lui $3, 0
TAG209:
mflo $3
ori $3, $3, 13
bltz $3, TAG210
xori $1, $3, 1
TAG210:
sb $1, 0($1)
mtlo $1
lhu $4, 0($1)
sw $4, 0($1)
TAG211:
bne $4, $4, TAG212
mfhi $4
mtlo $4
sll $0, $0, 0
TAG212:
nor $3, $4, $4
mflo $1
mfhi $4
beq $4, $3, TAG213
TAG213:
lui $4, 14
beq $4, $4, TAG214
sra $2, $4, 1
addi $2, $4, 13
TAG214:
divu $2, $2
and $1, $2, $2
lui $3, 8
mult $2, $3
TAG215:
sll $0, $0, 0
mult $2, $3
lui $3, 3
subu $2, $3, $2
TAG216:
sltiu $3, $2, 12
mfhi $4
bne $4, $2, TAG217
divu $3, $4
TAG217:
mult $4, $4
lhu $2, 0($4)
mflo $1
bgtz $2, TAG218
TAG218:
mult $1, $1
sh $1, -3136($1)
bne $1, $1, TAG219
sltiu $3, $1, 11
TAG219:
bgez $3, TAG220
multu $3, $3
nor $1, $3, $3
mfhi $3
TAG220:
multu $3, $3
sh $3, 0($3)
add $1, $3, $3
ori $2, $3, 11
TAG221:
xori $3, $2, 14
lui $4, 12
srl $2, $4, 1
sll $0, $0, 0
TAG222:
lui $2, 4
sw $2, 0($1)
lbu $1, 0($1)
bgtz $2, TAG223
TAG223:
mthi $1
bgtz $1, TAG224
lui $3, 9
bne $3, $1, TAG224
TAG224:
srlv $3, $3, $3
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG225
TAG225:
mfhi $2
mflo $4
lh $3, 0($2)
nor $1, $3, $3
TAG226:
sll $0, $0, 0
lbu $2, 1($1)
blez $2, TAG227
sw $1, 1($1)
TAG227:
mult $2, $2
mult $2, $2
sub $4, $2, $2
lhu $1, 0($2)
TAG228:
sll $0, $0, 0
bgtz $1, TAG229
addu $2, $2, $2
bgez $2, TAG229
TAG229:
srav $4, $2, $2
mult $4, $2
mult $4, $4
lw $2, 0($2)
TAG230:
subu $1, $2, $2
lui $3, 8
mtlo $3
bgtz $2, TAG231
TAG231:
sll $0, $0, 0
mtlo $3
addiu $2, $3, 7
bne $3, $2, TAG232
TAG232:
lui $1, 15
mfhi $3
nor $1, $1, $1
multu $1, $1
TAG233:
mtlo $1
mtlo $1
beq $1, $1, TAG234
mthi $1
TAG234:
bgez $1, TAG235
lui $2, 14
sll $0, $0, 0
bltz $2, TAG235
TAG235:
mult $2, $2
bne $2, $2, TAG236
mfhi $1
sra $2, $2, 3
TAG236:
sll $0, $0, 0
slti $4, $2, 10
blez $2, TAG237
lui $1, 1
TAG237:
lui $4, 10
mtlo $4
sll $0, $0, 0
sllv $4, $1, $1
TAG238:
sll $0, $0, 0
addiu $4, $4, 12
mtlo $4
sll $0, $0, 0
TAG239:
sll $0, $0, 0
lui $1, 13
beq $1, $1, TAG240
sll $0, $0, 0
TAG240:
mflo $4
sll $0, $0, 0
mfhi $3
mtlo $4
TAG241:
bne $3, $3, TAG242
sh $3, -196($3)
div $3, $3
lhu $1, -196($3)
TAG242:
mflo $2
sb $2, -196($1)
sb $1, -196($1)
div $1, $2
TAG243:
sb $2, 0($2)
beq $2, $2, TAG244
sb $2, 0($2)
addi $2, $2, 7
TAG244:
mtlo $2
beq $2, $2, TAG245
lui $3, 13
lw $4, 0($2)
TAG245:
sll $0, $0, 0
mthi $2
mthi $2
lui $1, 0
TAG246:
multu $1, $1
nor $2, $1, $1
sb $2, 0($1)
mthi $2
TAG247:
multu $2, $2
lb $3, 1($2)
beq $3, $2, TAG248
lui $4, 9
TAG248:
beq $4, $4, TAG249
lui $2, 11
mtlo $2
mtlo $4
TAG249:
sll $3, $2, 1
beq $2, $3, TAG250
mult $2, $2
blez $3, TAG250
TAG250:
mflo $1
xor $3, $3, $3
beq $1, $3, TAG251
sra $2, $3, 4
TAG251:
slt $1, $2, $2
lui $2, 1
lui $2, 12
sll $0, $0, 0
TAG252:
sra $1, $2, 3
beq $1, $1, TAG253
lui $4, 4
ori $3, $2, 1
TAG253:
multu $3, $3
mflo $2
mtlo $2
slt $3, $3, $3
TAG254:
bne $3, $3, TAG255
mflo $3
nor $2, $3, $3
xor $2, $3, $2
TAG255:
lui $2, 7
xori $3, $2, 1
subu $4, $2, $3
or $1, $3, $2
TAG256:
bltz $1, TAG257
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG257:
mthi $1
addiu $4, $1, 9
divu $4, $1
mtlo $1
TAG258:
lui $2, 12
bne $2, $4, TAG259
multu $4, $2
bgtz $2, TAG259
TAG259:
addu $4, $2, $2
bgez $2, TAG260
mthi $2
divu $4, $4
TAG260:
beq $4, $4, TAG261
sll $0, $0, 0
blez $4, TAG261
lw $3, 0($4)
TAG261:
sll $0, $0, 0
lui $1, 4
multu $3, $1
subu $3, $1, $1
TAG262:
mtlo $3
sh $3, 0($3)
sra $4, $3, 4
xori $2, $3, 9
TAG263:
sllv $4, $2, $2
beq $4, $4, TAG264
sw $2, -4608($4)
add $1, $2, $4
TAG264:
sll $0, $0, 0
mtlo $1
and $3, $1, $4
lb $3, -4608($4)
TAG265:
div $3, $3
mfhi $4
xor $3, $3, $4
beq $3, $4, TAG266
TAG266:
slt $3, $3, $3
sub $3, $3, $3
lui $1, 7
mtlo $3
TAG267:
mthi $1
bgez $1, TAG268
mthi $1
multu $1, $1
TAG268:
beq $1, $1, TAG269
lui $4, 1
mflo $3
lh $1, 0($3)
TAG269:
and $2, $1, $1
xor $4, $2, $1
blez $4, TAG270
mtlo $1
TAG270:
bgez $4, TAG271
sllv $1, $4, $4
srl $3, $1, 12
lui $1, 8
TAG271:
mthi $1
lh $2, 0($1)
bgtz $1, TAG272
mult $1, $2
TAG272:
srl $4, $2, 13
slt $1, $4, $2
multu $1, $2
bgez $2, TAG273
TAG273:
sb $1, 0($1)
mflo $1
sb $1, 0($1)
nor $2, $1, $1
TAG274:
sll $0, $0, 0
sh $2, 10($2)
lui $1, 0
nor $4, $1, $1
TAG275:
sh $4, 1($4)
lbu $4, 1($4)
srl $3, $4, 13
sll $4, $3, 13
TAG276:
blez $4, TAG277
mtlo $4
lbu $3, 0($4)
mtlo $3
TAG277:
bne $3, $3, TAG278
lb $1, 0($3)
slti $1, $1, 1
lb $2, 0($3)
TAG278:
xor $1, $2, $2
lhu $1, 0($1)
bltz $2, TAG279
lui $2, 5
TAG279:
divu $2, $2
multu $2, $2
bne $2, $2, TAG280
sll $0, $0, 0
TAG280:
sll $0, $0, 0
sh $2, 0($3)
sltu $3, $3, $2
blez $3, TAG281
TAG281:
sltiu $4, $3, 9
bgtz $4, TAG282
xori $4, $4, 10
bgtz $3, TAG282
TAG282:
lui $4, 7
srlv $1, $4, $4
lui $2, 5
lui $3, 9
TAG283:
sll $0, $0, 0
or $2, $3, $3
mult $3, $2
bgez $3, TAG284
TAG284:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
addu $2, $2, $4
TAG285:
mflo $3
bne $2, $2, TAG286
addu $2, $2, $2
lui $4, 0
TAG286:
lw $4, 0($4)
mthi $4
bgtz $4, TAG287
lh $4, 0($4)
TAG287:
lhu $1, 0($4)
sub $4, $4, $4
sll $3, $1, 6
mthi $3
TAG288:
lb $4, 0($3)
beq $4, $3, TAG289
mflo $1
bne $4, $3, TAG289
TAG289:
lui $3, 11
lui $2, 15
sll $0, $0, 0
slt $3, $3, $3
TAG290:
blez $3, TAG291
lh $3, 0($3)
blez $3, TAG291
divu $3, $3
TAG291:
beq $3, $3, TAG292
lbu $3, 0($3)
lh $2, 0($3)
addu $3, $3, $3
TAG292:
mtlo $3
mult $3, $3
lbu $4, 0($3)
sb $3, 0($4)
TAG293:
lui $2, 5
mult $2, $4
subu $1, $4, $2
xori $4, $4, 4
TAG294:
mflo $2
mtlo $4
addiu $4, $2, 7
mult $2, $2
TAG295:
sb $4, 0($4)
sltiu $4, $4, 9
sb $4, 0($4)
lui $3, 10
TAG296:
sll $0, $0, 0
mfhi $2
mflo $3
sub $4, $2, $3
TAG297:
bne $4, $4, TAG298
lw $3, 0($4)
mflo $2
mult $2, $2
TAG298:
lh $2, 0($2)
slt $1, $2, $2
lui $2, 8
srav $2, $2, $2
TAG299:
lui $4, 15
multu $2, $4
xor $3, $4, $4
mtlo $2
TAG300:
mtlo $3
mthi $3
bne $3, $3, TAG301
nor $4, $3, $3
TAG301:
xori $1, $4, 9
sh $1, 1($4)
blez $4, TAG302
lui $3, 11
TAG302:
addiu $1, $3, 7
blez $3, TAG303
lui $3, 13
sll $0, $0, 0
TAG303:
beq $1, $1, TAG304
sll $0, $0, 0
sb $1, 0($3)
lh $2, 0($1)
TAG304:
mflo $1
mthi $1
bgtz $2, TAG305
multu $1, $1
TAG305:
addi $1, $1, 2
sh $1, 0($1)
xori $3, $1, 9
srlv $1, $3, $1
TAG306:
mflo $4
lb $3, 0($4)
sub $1, $1, $4
mtlo $3
TAG307:
lh $4, 0($1)
xori $2, $4, 5
mfhi $2
mult $2, $1
TAG308:
bgtz $2, TAG309
sltu $1, $2, $2
andi $3, $1, 1
mfhi $4
TAG309:
sub $4, $4, $4
sb $4, 0($4)
mtlo $4
mtlo $4
TAG310:
blez $4, TAG311
mtlo $4
lui $4, 7
blez $4, TAG311
TAG311:
mfhi $1
mflo $3
mtlo $1
slti $4, $3, 1
TAG312:
sb $4, 0($4)
bne $4, $4, TAG313
lui $4, 5
slt $4, $4, $4
TAG313:
and $3, $4, $4
or $3, $4, $4
sltu $1, $4, $3
blez $1, TAG314
TAG314:
mthi $1
srl $4, $1, 11
mthi $4
or $1, $4, $1
TAG315:
srl $1, $1, 8
lui $2, 12
addi $4, $1, 0
bne $2, $2, TAG316
TAG316:
addi $1, $4, 2
lui $1, 6
sll $0, $0, 0
mfhi $2
TAG317:
bltz $2, TAG318
sltiu $3, $2, 13
divu $2, $3
bltz $3, TAG318
TAG318:
sra $3, $3, 15
sb $3, 0($3)
mthi $3
lui $3, 1
TAG319:
sll $0, $0, 0
beq $3, $3, TAG320
lui $4, 11
beq $3, $3, TAG320
TAG320:
mtlo $4
sll $0, $0, 0
lw $1, 0($2)
ori $4, $2, 5
TAG321:
bltz $4, TAG322
nor $3, $4, $4
lb $3, 6($3)
bgez $4, TAG322
TAG322:
mfhi $3
andi $3, $3, 6
mtlo $3
mult $3, $3
TAG323:
beq $3, $3, TAG324
lbu $4, 0($3)
lui $3, 5
div $4, $4
TAG324:
blez $3, TAG325
mult $3, $3
beq $3, $3, TAG325
sb $3, 0($3)
TAG325:
mult $3, $3
beq $3, $3, TAG326
sb $3, 0($3)
lbu $3, 0($3)
TAG326:
beq $3, $3, TAG327
mfhi $2
bne $2, $2, TAG327
lui $1, 5
TAG327:
sll $0, $0, 0
sll $0, $0, 0
divu $1, $1
mthi $1
TAG328:
beq $1, $1, TAG329
or $2, $1, $1
sw $1, 0($2)
srav $2, $1, $2
TAG329:
lui $1, 13
mtlo $2
mtlo $2
mflo $2
TAG330:
mflo $4
bgez $4, TAG331
lui $4, 1
lh $4, 0($4)
TAG331:
mfhi $1
subu $2, $4, $1
bne $1, $2, TAG332
sll $0, $0, 0
TAG332:
mthi $2
sll $0, $0, 0
bgtz $2, TAG333
sll $0, $0, 0
TAG333:
blez $4, TAG334
lui $4, 5
addu $1, $4, $4
beq $1, $4, TAG334
TAG334:
mthi $1
multu $1, $1
beq $1, $1, TAG335
addiu $4, $1, 3
TAG335:
sll $0, $0, 0
mflo $1
bne $1, $4, TAG336
mult $1, $1
TAG336:
lw $3, 0($1)
mflo $4
bgez $1, TAG337
lw $4, 0($1)
TAG337:
lui $2, 4
bgez $2, TAG338
addiu $1, $2, 1
mtlo $4
TAG338:
mflo $3
sw $1, 0($3)
mult $1, $3
sw $1, 0($3)
TAG339:
sllv $3, $3, $3
mfhi $2
mult $2, $3
multu $2, $3
TAG340:
beq $2, $2, TAG341
addi $2, $2, 9
blez $2, TAG341
sh $2, 0($2)
TAG341:
lbu $1, 0($2)
mtlo $2
bltz $1, TAG342
lui $1, 10
TAG342:
mthi $1
sll $0, $0, 0
lui $1, 13
mflo $2
TAG343:
lui $4, 5
bne $4, $4, TAG344
lui $3, 5
sll $0, $0, 0
TAG344:
mfhi $2
lui $3, 0
bgtz $2, TAG345
lui $4, 9
TAG345:
sll $0, $0, 0
sll $0, $0, 0
sra $4, $4, 13
sw $4, 0($4)
TAG346:
lw $4, 0($4)
mflo $1
bgez $4, TAG347
addu $3, $1, $4
TAG347:
lui $1, 2
mtlo $1
ori $3, $3, 4
sra $4, $1, 6
TAG348:
sh $4, -2048($4)
addu $3, $4, $4
sw $3, -2048($4)
bgtz $3, TAG349
TAG349:
mflo $1
lui $1, 10
mthi $3
mthi $1
TAG350:
sll $0, $0, 0
andi $4, $2, 15
srl $1, $4, 3
lui $4, 6
TAG351:
xor $2, $4, $4
sllv $4, $4, $2
sll $0, $0, 0
bgtz $4, TAG352
TAG352:
lui $4, 4
mthi $4
lb $1, -4096($3)
slt $2, $4, $1
TAG353:
lhu $2, 0($2)
bltz $2, TAG354
mflo $3
mfhi $1
TAG354:
srl $4, $1, 0
lui $4, 4
sll $0, $0, 0
mtlo $4
TAG355:
sll $0, $0, 0
addu $2, $1, $1
mthi $1
divu $2, $1
TAG356:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG357
sll $0, $0, 0
TAG357:
sll $0, $0, 0
bgez $3, TAG358
multu $2, $3
sh $2, 0($3)
TAG358:
sllv $2, $3, $3
sra $2, $3, 10
bne $2, $3, TAG359
mtlo $2
TAG359:
nor $4, $2, $2
blez $4, TAG360
lbu $1, 129($4)
beq $2, $1, TAG360
TAG360:
addiu $2, $1, 9
mfhi $3
lui $2, 12
bltz $2, TAG361
TAG361:
divu $2, $2
bne $2, $2, TAG362
mtlo $2
sll $0, $0, 0
TAG362:
mfhi $1
ori $4, $1, 1
beq $1, $1, TAG363
srav $2, $1, $1
TAG363:
andi $4, $2, 14
lb $2, 0($2)
bgez $2, TAG364
mthi $2
TAG364:
mfhi $4
add $3, $4, $2
lh $2, 0($2)
sw $3, -4096($2)
TAG365:
mthi $2
lhu $1, -4096($2)
bgtz $1, TAG366
srl $1, $1, 5
TAG366:
sh $1, 0($1)
mflo $2
mflo $2
bgez $2, TAG367
TAG367:
addu $1, $2, $2
mthi $2
bne $1, $2, TAG368
sll $0, $0, 0
TAG368:
lui $4, 4
beq $4, $1, TAG369
lui $1, 5
sll $0, $0, 0
TAG369:
lui $2, 12
lui $4, 13
divu $4, $4
slti $3, $4, 4
TAG370:
lui $1, 12
lhu $1, 0($3)
bne $3, $3, TAG371
mtlo $1
TAG371:
mfhi $4
and $4, $1, $4
lbu $3, 0($4)
lui $3, 4
TAG372:
beq $3, $3, TAG373
divu $3, $3
bne $3, $3, TAG373
sb $3, 0($3)
TAG373:
mthi $3
divu $3, $3
blez $3, TAG374
sll $0, $0, 0
TAG374:
mflo $4
lui $2, 10
and $1, $2, $3
mtlo $4
TAG375:
bne $1, $1, TAG376
and $1, $1, $1
mflo $4
bltz $1, TAG376
TAG376:
sra $1, $4, 8
lhu $4, 0($1)
lw $4, 0($1)
xori $1, $4, 1
TAG377:
divu $1, $1
bgez $1, TAG378
lb $2, 0($1)
mtlo $1
TAG378:
lui $4, 12
mthi $2
mflo $3
divu $4, $3
TAG379:
bgtz $3, TAG380
sltiu $4, $3, 7
ori $4, $3, 13
mflo $1
TAG380:
lbu $4, 0($1)
bltz $1, TAG381
mult $4, $1
bgez $1, TAG381
TAG381:
lui $3, 7
lui $2, 9
mfhi $4
bgez $3, TAG382
TAG382:
lui $2, 9
sltu $2, $2, $2
lui $3, 4
mtlo $2
TAG383:
mthi $3
mtlo $3
sll $0, $0, 0
mthi $2
TAG384:
sw $2, 0($2)
lbu $4, 0($2)
lbu $3, 0($4)
lui $3, 14
TAG385:
lui $4, 8
mflo $4
sll $0, $0, 0
andi $3, $4, 10
TAG386:
mthi $3
mult $3, $3
or $2, $3, $3
lui $1, 11
TAG387:
sll $0, $0, 0
lui $3, 3
mfhi $2
mthi $1
TAG388:
lui $1, 12
bltz $2, TAG389
sll $0, $0, 0
bgtz $2, TAG389
TAG389:
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
sltu $2, $1, $1
TAG390:
lb $3, 0($2)
sb $3, 0($3)
multu $3, $2
lbu $1, 0($2)
TAG391:
lb $3, 0($1)
mtlo $1
mthi $3
sw $1, 0($3)
TAG392:
mult $3, $3
slti $2, $3, 15
lhu $4, 0($3)
mfhi $2
TAG393:
lw $1, 0($2)
lui $2, 4
srlv $4, $2, $1
nor $1, $1, $1
TAG394:
sllv $4, $1, $1
and $3, $4, $1
srl $4, $4, 5
bltz $4, TAG395
TAG395:
sll $0, $0, 0
sll $0, $0, 0
div $1, $4
bne $4, $4, TAG396
TAG396:
mult $1, $1
bne $1, $1, TAG397
mfhi $1
lw $2, 0($1)
TAG397:
mthi $2
sh $2, 0($2)
bltz $2, TAG398
sb $2, 0($2)
TAG398:
bgtz $2, TAG399
mthi $2
lui $2, 0
mtlo $2
TAG399:
lw $2, 0($2)
bgtz $2, TAG400
add $3, $2, $2
sb $2, 0($2)
TAG400:
blez $3, TAG401
lui $3, 9
mult $3, $3
lui $1, 2
TAG401:
lui $4, 14
lui $2, 8
beq $4, $2, TAG402
mult $1, $1
TAG402:
sll $0, $0, 0
subu $2, $2, $2
sw $2, 0($2)
multu $2, $2
TAG403:
mfhi $1
sb $2, 0($1)
xor $1, $1, $2
sh $2, 0($2)
TAG404:
srlv $2, $1, $1
lbu $1, 0($2)
subu $3, $2, $1
andi $1, $1, 6
TAG405:
mtlo $1
lui $4, 8
mtlo $4
mflo $4
TAG406:
lui $4, 8
mfhi $3
divu $4, $4
sll $0, $0, 0
TAG407:
lui $2, 9
mflo $3
addiu $2, $2, 8
blez $2, TAG408
TAG408:
lui $2, 9
lui $4, 4
divu $4, $4
sll $0, $0, 0
TAG409:
addu $3, $4, $4
lui $2, 10
sll $0, $0, 0
slti $3, $2, 0
TAG410:
lw $1, 0($3)
sw $3, 0($1)
mthi $3
sub $3, $3, $3
TAG411:
beq $3, $3, TAG412
sw $3, 0($3)
bgtz $3, TAG412
mtlo $3
TAG412:
addi $3, $3, 9
ori $2, $3, 5
mflo $2
bltz $3, TAG413
TAG413:
mthi $2
bgez $2, TAG414
lb $3, 0($2)
and $3, $3, $2
TAG414:
or $2, $3, $3
lb $3, 0($3)
mthi $3
xori $3, $3, 0
TAG415:
mtlo $3
lbu $1, 0($3)
mflo $2
sltiu $3, $2, 3
TAG416:
slt $1, $3, $3
sltiu $3, $1, 8
sltiu $1, $3, 0
bgez $3, TAG417
TAG417:
multu $1, $1
nor $2, $1, $1
multu $1, $2
lbu $3, 0($1)
TAG418:
multu $3, $3
beq $3, $3, TAG419
sltiu $2, $3, 9
divu $2, $2
TAG419:
srlv $3, $2, $2
mtlo $2
lui $4, 11
sll $0, $0, 0
TAG420:
mflo $3
mthi $3
mfhi $2
mtlo $3
TAG421:
xor $2, $2, $2
mflo $4
mfhi $3
lbu $1, 0($4)
TAG422:
mfhi $4
lui $2, 5
div $2, $4
mflo $1
TAG423:
bne $1, $1, TAG424
srlv $2, $1, $1
slt $4, $1, $2
mtlo $2
TAG424:
mtlo $4
lui $4, 2
divu $4, $4
sltiu $3, $4, 7
TAG425:
bne $3, $3, TAG426
lui $4, 0
sh $4, 0($4)
slt $4, $4, $3
TAG426:
lui $4, 9
lui $4, 0
multu $4, $4
mtlo $4
TAG427:
xori $1, $4, 1
mult $4, $4
divu $1, $1
bltz $1, TAG428
TAG428:
multu $1, $1
beq $1, $1, TAG429
addiu $1, $1, 6
blez $1, TAG429
TAG429:
lui $4, 12
beq $1, $4, TAG430
mfhi $1
mthi $4
TAG430:
mtlo $1
mult $1, $1
bgtz $1, TAG431
lb $4, 0($1)
TAG431:
bne $4, $4, TAG432
mult $4, $4
slt $2, $4, $4
beq $2, $2, TAG432
TAG432:
ori $1, $2, 10
mthi $2
mtlo $1
mfhi $3
TAG433:
bltz $3, TAG434
lw $3, 0($3)
sll $1, $3, 2
lh $3, 0($3)
TAG434:
mtlo $3
multu $3, $3
mtlo $3
sllv $4, $3, $3
TAG435:
bne $4, $4, TAG436
mult $4, $4
lui $4, 7
sll $0, $0, 0
TAG436:
lui $1, 6
lui $3, 10
bgtz $1, TAG437
mtlo $4
TAG437:
sll $0, $0, 0
mflo $4
sll $0, $0, 0
bne $3, $3, TAG438
TAG438:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG439
mtlo $4
TAG439:
slti $3, $4, 12
slt $1, $4, $3
slti $3, $3, 2
lbu $3, 0($1)
TAG440:
mthi $3
add $3, $3, $3
multu $3, $3
sw $3, 0($3)
TAG441:
mthi $3
bne $3, $3, TAG442
sltiu $1, $3, 4
lui $1, 14
TAG442:
bltz $1, TAG443
mflo $3
lui $3, 2
bltz $3, TAG443
TAG443:
and $1, $3, $3
mfhi $4
lui $4, 14
sra $1, $1, 2
TAG444:
lui $4, 14
bltz $1, TAG445
srav $4, $4, $1
and $1, $4, $1
TAG445:
beq $1, $1, TAG446
lw $2, 0($1)
sub $1, $1, $1
lui $3, 5
TAG446:
mfhi $1
blez $3, TAG447
sll $0, $0, 0
sll $0, $0, 0
TAG447:
addu $4, $4, $4
mthi $4
bne $4, $4, TAG448
lui $2, 14
TAG448:
mult $2, $2
sllv $1, $2, $2
mthi $1
srlv $3, $1, $2
TAG449:
bne $3, $3, TAG450
sll $0, $0, 0
divu $2, $2
lui $1, 12
TAG450:
ori $1, $1, 9
bne $1, $1, TAG451
mflo $1
mflo $2
TAG451:
addu $4, $2, $2
sh $4, 0($4)
or $2, $4, $4
lbu $4, 0($4)
TAG452:
xor $4, $4, $4
lui $1, 8
bne $1, $4, TAG453
sllv $3, $4, $4
TAG453:
lh $2, 0($3)
bne $2, $3, TAG454
xori $1, $3, 15
lb $4, 0($3)
TAG454:
mult $4, $4
lui $4, 11
bltz $4, TAG455
subu $1, $4, $4
TAG455:
mfhi $2
lb $3, 0($2)
addiu $4, $3, 2
subu $2, $4, $4
TAG456:
mthi $2
sllv $4, $2, $2
mtlo $2
multu $4, $4
TAG457:
lui $2, 0
sb $2, 0($4)
lb $3, 0($2)
mthi $3
TAG458:
blez $3, TAG459
mtlo $3
lui $3, 12
bltz $3, TAG459
TAG459:
addiu $3, $3, 5
sb $3, 0($3)
mflo $3
mtlo $3
TAG460:
lb $3, 0($3)
lui $1, 14
lbu $2, 0($3)
add $4, $3, $3
TAG461:
bne $4, $4, TAG462
srl $4, $4, 5
mthi $4
srl $1, $4, 1
TAG462:
lhu $4, 0($1)
sb $1, 0($4)
lui $2, 7
mflo $1
TAG463:
mflo $3
addiu $4, $3, 12
slti $2, $1, 7
lhu $3, 0($3)
TAG464:
slt $4, $3, $3
mult $4, $4
mfhi $3
sb $3, 0($4)
TAG465:
mtlo $3
lui $2, 0
multu $2, $2
mult $3, $2
TAG466:
slti $4, $2, 7
multu $4, $2
sw $4, 0($2)
blez $4, TAG467
TAG467:
or $3, $4, $4
sb $3, 0($4)
bne $3, $4, TAG468
srl $1, $3, 8
TAG468:
addu $2, $1, $1
mthi $2
bltz $1, TAG469
sb $2, 0($1)
TAG469:
bgez $2, TAG470
mfhi $3
mfhi $1
andi $4, $1, 13
TAG470:
ori $1, $4, 11
lui $3, 14
mthi $4
mfhi $3
TAG471:
sb $3, 0($3)
lui $1, 10
mthi $1
sltiu $2, $1, 0
TAG472:
mflo $2
beq $2, $2, TAG473
mflo $3
mult $2, $2
TAG473:
lhu $2, 0($3)
sb $2, -256($2)
addiu $3, $2, 0
srav $2, $3, $3
TAG474:
mflo $1
multu $2, $1
beq $1, $1, TAG475
lui $4, 12
TAG475:
srl $3, $4, 14
beq $3, $3, TAG476
mtlo $4
lui $1, 4
TAG476:
lui $4, 12
addi $3, $1, 5
lhu $4, 0($1)
bltz $1, TAG477
TAG477:
multu $4, $4
sb $4, -256($4)
lui $4, 14
addu $2, $4, $4
TAG478:
sltiu $3, $2, 5
divu $2, $2
lui $1, 15
blez $2, TAG479
TAG479:
multu $1, $1
mflo $3
div $3, $1
mflo $2
TAG480:
mfhi $4
mthi $4
lui $4, 15
lui $4, 0
TAG481:
lui $2, 11
nor $1, $2, $4
sll $0, $0, 0
bgtz $4, TAG482
TAG482:
ori $4, $4, 4
lw $3, 0($4)
mthi $4
mtlo $4
TAG483:
mfhi $4
sh $3, 0($4)
beq $3, $3, TAG484
lui $1, 9
TAG484:
or $4, $1, $1
blez $4, TAG485
mtlo $1
bgtz $1, TAG485
TAG485:
or $4, $4, $4
sra $3, $4, 3
lui $3, 4
addiu $3, $3, 13
TAG486:
beq $3, $3, TAG487
div $3, $3
sra $2, $3, 12
subu $1, $3, $2
TAG487:
bgez $1, TAG488
mfhi $3
beq $3, $1, TAG488
slt $1, $3, $3
TAG488:
sll $0, $0, 0
ori $1, $1, 2
bgez $1, TAG489
sll $0, $0, 0
TAG489:
bne $1, $1, TAG490
lui $4, 9
lui $2, 1
srlv $1, $4, $1
TAG490:
lui $3, 4
lui $2, 14
bne $1, $1, TAG491
mflo $2
TAG491:
mfhi $2
lui $4, 9
lui $2, 12
mthi $2
TAG492:
sll $4, $2, 7
bltz $2, TAG493
sll $0, $0, 0
mtlo $2
TAG493:
sll $0, $0, 0
xor $1, $4, $4
lui $3, 12
bgtz $4, TAG494
TAG494:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
slt $4, $3, $3
TAG495:
bne $4, $4, TAG496
lw $1, 0($4)
lh $4, 0($4)
sll $4, $4, 12
TAG496:
subu $2, $4, $4
sll $0, $0, 0
slt $1, $4, $4
bgtz $4, TAG497
TAG497:
sw $1, 0($1)
lui $4, 10
sll $0, $0, 0
bltz $3, TAG498
TAG498:
sll $4, $3, 0
multu $3, $4
bne $4, $3, TAG499
xori $1, $3, 10
TAG499:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 6
beq $1, $1, TAG500
TAG500:
and $3, $3, $3
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG501:
mthi $4
slt $1, $4, $4
sllv $2, $1, $1
mthi $2
TAG502:
srav $4, $2, $2
sh $4, 0($2)
sb $2, 0($2)
beq $2, $2, TAG503
TAG503:
mflo $4
sll $1, $4, 2
mflo $3
sub $1, $4, $1
TAG504:
slt $1, $1, $1
mflo $4
sw $1, 0($1)
sra $4, $4, 11
TAG505:
mthi $4
sub $1, $4, $4
mfhi $3
lhu $3, 0($1)
TAG506:
lhu $3, 0($3)
slt $2, $3, $3
bne $2, $3, TAG507
sw $3, 0($2)
TAG507:
lb $2, 0($2)
multu $2, $2
and $3, $2, $2
srlv $4, $2, $2
TAG508:
mthi $4
addi $1, $4, 7
divu $4, $1
mfhi $3
TAG509:
lh $4, 0($3)
lbu $1, 0($3)
lhu $3, 0($1)
lui $2, 8
TAG510:
beq $2, $2, TAG511
slti $2, $2, 0
blez $2, TAG511
lui $4, 15
TAG511:
beq $4, $4, TAG512
andi $2, $4, 5
mflo $2
bltz $4, TAG512
TAG512:
sw $2, 0($2)
lb $3, 0($2)
addi $4, $3, 0
lhu $1, 0($3)
TAG513:
multu $1, $1
lui $4, 11
sw $4, 0($1)
sll $0, $0, 0
TAG514:
mthi $4
addu $2, $4, $4
slti $3, $4, 11
bgez $4, TAG515
TAG515:
mthi $3
nor $3, $3, $3
bltz $3, TAG516
sb $3, 1($3)
TAG516:
div $3, $3
lhu $1, 1($3)
mflo $3
sb $3, 0($3)
TAG517:
bgtz $3, TAG518
sb $3, 0($3)
bne $3, $3, TAG518
lui $3, 15
TAG518:
mtlo $3
lui $2, 0
beq $3, $2, TAG519
mflo $2
TAG519:
slti $2, $2, 13
lui $2, 2
beq $2, $2, TAG520
lui $3, 6
TAG520:
sll $0, $0, 0
beq $3, $3, TAG521
div $3, $3
lui $4, 3
TAG521:
sll $0, $0, 0
div $4, $4
mfhi $2
blez $4, TAG522
TAG522:
mult $2, $2
and $4, $2, $2
blez $2, TAG523
mthi $4
TAG523:
mflo $4
mflo $1
xori $3, $4, 9
mflo $2
TAG524:
lui $3, 9
bgez $2, TAG525
mflo $4
nor $3, $3, $4
TAG525:
slti $3, $3, 3
mfhi $1
sll $4, $3, 1
sb $1, 0($3)
TAG526:
sb $4, 0($4)
sw $4, 0($4)
bne $4, $4, TAG527
sb $4, 0($4)
TAG527:
mfhi $2
beq $2, $2, TAG528
slt $2, $4, $4
blez $2, TAG528
TAG528:
mtlo $2
beq $2, $2, TAG529
mtlo $2
mult $2, $2
TAG529:
lui $4, 9
sll $0, $0, 0
bltz $2, TAG530
sll $0, $0, 0
TAG530:
divu $4, $4
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
TAG531:
lb $1, 0($1)
mfhi $1
sh $1, 0($1)
lui $2, 12
TAG532:
bne $2, $2, TAG533
mfhi $4
lb $4, 0($4)
lb $1, 0($4)
TAG533:
multu $1, $1
bgtz $1, TAG534
mfhi $2
beq $2, $1, TAG534
TAG534:
mthi $2
mtlo $2
beq $2, $2, TAG535
srl $1, $2, 7
TAG535:
multu $1, $1
lhu $1, 0($1)
lui $2, 1
multu $1, $1
TAG536:
mtlo $2
sll $0, $0, 0
nor $4, $2, $2
mfhi $3
TAG537:
lb $4, 0($3)
sllv $4, $4, $3
slti $3, $4, 4
beq $4, $3, TAG538
TAG538:
addu $4, $3, $3
sb $4, 0($3)
mthi $4
bltz $3, TAG539
TAG539:
lhu $1, 0($4)
lui $3, 4
sh $1, 0($1)
lhu $3, 0($1)
TAG540:
srlv $3, $3, $3
and $3, $3, $3
bltz $3, TAG541
sh $3, 0($3)
TAG541:
mtlo $3
sll $1, $3, 9
mfhi $2
sw $2, 0($3)
TAG542:
mfhi $2
lhu $4, 0($2)
bltz $2, TAG543
slt $2, $4, $4
TAG543:
beq $2, $2, TAG544
lw $1, 0($2)
sub $3, $1, $1
andi $4, $2, 12
TAG544:
mfhi $4
mflo $3
bltz $3, TAG545
mtlo $4
TAG545:
subu $3, $3, $3
sra $1, $3, 13
lbu $3, 0($3)
lui $1, 4
TAG546:
div $1, $1
bne $1, $1, TAG547
mult $1, $1
sll $0, $0, 0
TAG547:
sb $2, 0($2)
bne $2, $2, TAG548
mtlo $2
add $3, $2, $2
TAG548:
mtlo $3
sh $3, 0($3)
bltz $3, TAG549
sb $3, 0($3)
TAG549:
mtlo $3
ori $2, $3, 10
lh $1, 0($2)
sra $2, $1, 9
TAG550:
bne $2, $2, TAG551
slti $2, $2, 5
lui $1, 5
srlv $3, $1, $2
TAG551:
bne $3, $3, TAG552
andi $2, $3, 5
sh $2, 0($2)
addu $3, $3, $2
TAG552:
sll $4, $3, 12
bgtz $3, TAG553
mtlo $4
mthi $3
TAG553:
sll $0, $0, 0
bltz $4, TAG554
lui $2, 0
mfhi $1
TAG554:
multu $1, $1
ori $4, $1, 1
lbu $2, 0($4)
lw $1, 0($2)
TAG555:
mult $1, $1
sltiu $2, $1, 10
lbu $4, 0($2)
lui $4, 4
TAG556:
sll $0, $0, 0
lbu $1, 0($2)
sll $0, $0, 0
bgtz $1, TAG557
TAG557:
mflo $3
bne $3, $1, TAG558
mult $3, $1
bgez $1, TAG558
TAG558:
xori $2, $3, 6
div $2, $2
mflo $2
lb $2, 0($2)
TAG559:
lui $3, 4
beq $2, $2, TAG560
lbu $1, 0($2)
mthi $1
TAG560:
mthi $1
lui $4, 2
mfhi $2
lui $3, 5
TAG561:
sll $0, $0, 0
mthi $3
lui $1, 14
lui $3, 7
TAG562:
mthi $3
lui $4, 4
sll $0, $0, 0
divu $3, $3
TAG563:
sll $0, $0, 0
mfhi $2
bne $2, $4, TAG564
mthi $2
TAG564:
mtlo $2
sltiu $3, $2, 12
srav $2, $3, $3
sb $2, 0($3)
TAG565:
lui $3, 8
addu $4, $3, $3
blez $2, TAG566
sltu $4, $3, $4
TAG566:
sb $4, 0($4)
lui $1, 8
blez $4, TAG567
multu $1, $1
TAG567:
sll $0, $0, 0
sll $2, $1, 5
mthi $2
mtlo $2
TAG568:
mthi $2
sll $0, $0, 0
mflo $1
mthi $2
TAG569:
sll $0, $0, 0
lui $2, 6
lui $4, 15
blez $2, TAG570
TAG570:
mflo $3
mfhi $1
lui $3, 9
mthi $1
TAG571:
mfhi $4
lui $3, 3
div $3, $3
sll $0, $0, 0
TAG572:
srlv $1, $3, $3
mtlo $3
sll $0, $0, 0
bne $3, $1, TAG573
TAG573:
sll $0, $0, 0
mflo $3
mfhi $3
bgez $3, TAG574
TAG574:
addiu $3, $3, 15
mult $3, $3
mtlo $3
andi $2, $3, 8
TAG575:
mtlo $2
sll $2, $2, 10
sra $1, $2, 11
mtlo $2
TAG576:
lui $1, 8
srav $3, $1, $1
lui $4, 5
slt $3, $3, $4
TAG577:
bne $3, $3, TAG578
multu $3, $3
mfhi $3
lui $1, 14
TAG578:
sll $0, $0, 0
divu $2, $2
mflo $3
bgtz $2, TAG579
TAG579:
divu $3, $3
sll $3, $3, 6
ori $4, $3, 11
blez $4, TAG580
TAG580:
mult $4, $4
lb $2, 0($4)
mult $4, $2
mflo $2
TAG581:
bne $2, $2, TAG582
multu $2, $2
lw $2, 0($2)
lhu $1, -256($2)
TAG582:
mthi $1
slti $2, $1, 11
blez $2, TAG583
lui $2, 13
TAG583:
sll $0, $0, 0
mflo $2
multu $2, $2
mflo $2
TAG584:
addi $2, $2, 4
sw $2, 0($2)
mtlo $2
blez $2, TAG585
TAG585:
srlv $4, $2, $2
mflo $1
lui $2, 10
beq $1, $2, TAG586
TAG586:
sll $0, $0, 0
or $1, $2, $3
lhu $4, 0($3)
sll $0, $0, 0
TAG587:
beq $4, $4, TAG588
div $4, $4
sb $4, 0($4)
lb $4, 0($4)
TAG588:
mult $4, $4
mtlo $4
subu $1, $4, $4
lhu $4, 0($4)
TAG589:
beq $4, $4, TAG590
sh $4, 0($4)
addiu $4, $4, 2
bgez $4, TAG590
TAG590:
lh $3, 0($4)
mfhi $2
sb $2, 0($3)
lui $4, 6
TAG591:
mthi $4
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
TAG592:
bgez $3, TAG593
sll $0, $0, 0
mtlo $3
sw $3, 0($3)
TAG593:
sll $0, $0, 0
addu $2, $3, $3
lui $1, 1
mflo $1
TAG594:
bltz $1, TAG595
multu $1, $1
mtlo $1
sh $1, 0($1)
TAG595:
mthi $1
sh $1, 0($1)
lui $3, 2
sll $0, $0, 0
TAG596:
mfhi $2
nor $1, $3, $2
beq $1, $1, TAG597
multu $2, $3
TAG597:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
div $1, $1
TAG598:
divu $1, $1
mthi $1
lui $4, 1
div $1, $4
TAG599:
mflo $3
ori $4, $3, 14
multu $3, $4
div $4, $4
TAG600:
lui $3, 10
bgez $3, TAG601
div $4, $3
srav $2, $3, $4
TAG601:
mflo $3
srav $1, $3, $2
sh $1, 0($1)
mtlo $2
TAG602:
slt $3, $1, $1
nor $3, $1, $1
xor $2, $3, $1
lui $2, 0
TAG603:
mfhi $2
mfhi $4
sh $4, 2($2)
sh $2, 2($4)
TAG604:
xor $4, $4, $4
sw $4, 0($4)
blez $4, TAG605
sh $4, 0($4)
TAG605:
bne $4, $4, TAG606
sll $1, $4, 7
sltu $3, $1, $4
bne $1, $4, TAG606
TAG606:
mflo $4
sh $3, 0($4)
mult $3, $3
divu $3, $4
TAG607:
bgez $4, TAG608
lui $4, 1
multu $4, $4
beq $4, $4, TAG608
TAG608:
sra $2, $4, 2
bne $4, $2, TAG609
sll $0, $0, 0
sh $2, 0($4)
TAG609:
srav $4, $2, $2
mfhi $1
lui $1, 9
subu $2, $1, $1
TAG610:
beq $2, $2, TAG611
mfhi $4
sltiu $3, $2, 1
mflo $4
TAG611:
mfhi $4
lui $1, 10
lhu $4, 0($4)
lb $1, 0($4)
TAG612:
beq $1, $1, TAG613
lui $2, 7
lbu $2, 0($2)
lhu $1, 0($1)
TAG613:
and $1, $1, $1
srlv $2, $1, $1
lui $2, 11
multu $2, $1
TAG614:
beq $2, $2, TAG615
sll $0, $0, 0
sra $1, $2, 12
lb $2, 0($1)
TAG615:
mthi $2
mfhi $4
lui $2, 1
beq $4, $2, TAG616
TAG616:
lui $3, 14
bgtz $2, TAG617
sll $0, $0, 0
lhu $2, 0($3)
TAG617:
slti $4, $2, 9
beq $4, $2, TAG618
multu $2, $4
mfhi $4
TAG618:
lui $1, 1
multu $1, $1
sub $4, $4, $4
bgez $4, TAG619
TAG619:
addi $2, $4, 15
sb $4, 0($4)
andi $1, $4, 1
mult $4, $4
TAG620:
mflo $3
mthi $1
mflo $1
bne $3, $3, TAG621
TAG621:
multu $1, $1
mthi $1
mthi $1
mthi $1
TAG622:
bne $1, $1, TAG623
mfhi $4
mflo $2
mfhi $2
TAG623:
lhu $3, 0($2)
mflo $4
mult $3, $4
mfhi $4
TAG624:
lb $4, 0($4)
srl $4, $4, 0
addiu $3, $4, 6
bne $3, $4, TAG625
TAG625:
lh $1, 0($3)
lhu $2, 0($3)
lui $3, 7
blez $1, TAG626
TAG626:
mtlo $3
multu $3, $3
slti $3, $3, 6
lui $1, 7
TAG627:
divu $1, $1
sll $0, $0, 0
lui $2, 9
mult $2, $1
TAG628:
slti $1, $2, 8
mult $2, $1
andi $3, $1, 15
andi $3, $1, 9
TAG629:
sh $3, 0($3)
mflo $3
blez $3, TAG630
mtlo $3
TAG630:
xori $3, $3, 7
subu $3, $3, $3
mthi $3
mflo $1
TAG631:
beq $1, $1, TAG632
nor $3, $1, $1
mult $3, $3
bgez $3, TAG632
TAG632:
andi $3, $3, 10
mtlo $3
lh $4, 0($3)
beq $3, $3, TAG633
TAG633:
sb $4, 0($4)
andi $2, $4, 2
lw $2, 0($2)
bne $2, $2, TAG634
TAG634:
mtlo $2
bltz $2, TAG635
mthi $2
srav $2, $2, $2
TAG635:
lbu $3, 0($2)
mflo $4
lbu $1, 0($3)
bgez $4, TAG636
TAG636:
mfhi $4
addi $4, $4, 13
sub $3, $1, $1
lui $3, 6
TAG637:
mflo $4
multu $4, $3
mult $3, $4
bgtz $3, TAG638
TAG638:
srav $4, $4, $4
lui $3, 5
mfhi $1
mult $4, $1
TAG639:
sb $1, 0($1)
beq $1, $1, TAG640
mfhi $2
bltz $1, TAG640
TAG640:
lb $2, 0($2)
mult $2, $2
mthi $2
mtlo $2
TAG641:
add $2, $2, $2
mtlo $2
mult $2, $2
lw $1, 0($2)
TAG642:
lhu $3, 0($1)
mfhi $4
mthi $1
beq $4, $1, TAG643
TAG643:
mthi $4
lbu $2, 0($4)
multu $2, $2
mtlo $2
TAG644:
sb $2, 0($2)
lui $4, 13
lhu $4, 0($2)
mtlo $4
TAG645:
bltz $4, TAG646
lui $1, 12
mult $1, $4
div $4, $1
TAG646:
bgez $1, TAG647
mflo $1
bne $1, $1, TAG647
mflo $2
TAG647:
sb $2, 0($2)
sw $2, 0($2)
xori $3, $2, 15
mult $2, $2
TAG648:
lui $4, 8
bltz $3, TAG649
sll $0, $0, 0
xor $1, $3, $3
TAG649:
mtlo $1
bne $1, $1, TAG650
multu $1, $1
lb $2, 0($1)
TAG650:
add $4, $2, $2
ori $4, $2, 14
divu $2, $4
sb $2, 0($2)
TAG651:
sh $4, 0($4)
divu $4, $4
sh $4, 0($4)
lhu $4, 0($4)
TAG652:
lui $4, 10
sll $0, $0, 0
lui $3, 13
mflo $2
TAG653:
sra $1, $2, 7
mthi $1
lb $2, 0($1)
multu $2, $2
TAG654:
sb $2, 0($2)
lui $1, 5
beq $1, $1, TAG655
andi $3, $1, 8
TAG655:
bne $3, $3, TAG656
mthi $3
beq $3, $3, TAG656
mult $3, $3
TAG656:
bgez $3, TAG657
lui $4, 2
blez $4, TAG657
mtlo $3
TAG657:
sll $0, $0, 0
mthi $2
bgez $2, TAG658
mfhi $2
TAG658:
mfhi $4
blez $4, TAG659
lui $1, 14
mfhi $1
TAG659:
mflo $3
beq $1, $1, TAG660
mfhi $4
div $4, $3
TAG660:
bgtz $4, TAG661
lui $4, 14
beq $4, $4, TAG661
lui $2, 5
TAG661:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
xor $4, $2, $2
TAG662:
srl $1, $4, 0
mfhi $3
xor $2, $3, $3
sh $1, 0($2)
TAG663:
lui $1, 15
blez $1, TAG664
sll $0, $0, 0
bgez $1, TAG664
TAG664:
addiu $2, $1, 11
bne $1, $1, TAG665
mult $2, $2
mtlo $1
TAG665:
bne $2, $2, TAG666
sll $0, $0, 0
mfhi $3
lw $2, -225($3)
TAG666:
sw $2, 0($2)
lw $4, 0($2)
sll $1, $2, 4
sh $1, 0($2)
TAG667:
lui $4, 15
xor $1, $4, $1
sll $1, $1, 10
lui $1, 2
TAG668:
divu $1, $1
bltz $1, TAG669
srlv $4, $1, $1
lui $4, 5
TAG669:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
mtlo $1
TAG670:
mthi $4
multu $4, $4
lui $3, 11
slt $1, $3, $3
TAG671:
or $4, $1, $1
multu $4, $4
blez $4, TAG672
and $1, $4, $4
TAG672:
mflo $3
mthi $1
lb $4, 0($1)
andi $1, $4, 9
TAG673:
mflo $3
mflo $3
lw $2, 0($3)
ori $3, $3, 3
TAG674:
mflo $1
beq $3, $3, TAG675
or $1, $3, $1
mult $1, $1
TAG675:
bne $1, $1, TAG676
mthi $1
sb $1, 0($1)
slti $4, $1, 0
TAG676:
lb $2, 0($4)
bne $2, $2, TAG677
lbu $1, 0($2)
xor $2, $4, $1
TAG677:
multu $2, $2
mult $2, $2
sw $2, 0($2)
beq $2, $2, TAG678
TAG678:
sub $1, $2, $2
bne $1, $2, TAG679
mtlo $1
mthi $1
TAG679:
beq $1, $1, TAG680
mtlo $1
mfhi $4
bgtz $1, TAG680
TAG680:
mflo $3
lui $1, 13
sb $1, 0($4)
srlv $4, $4, $1
TAG681:
mthi $4
mflo $1
mthi $1
mult $4, $1
TAG682:
multu $1, $1
mult $1, $1
mfhi $4
add $1, $1, $1
TAG683:
bltz $1, TAG684
multu $1, $1
multu $1, $1
sllv $3, $1, $1
TAG684:
srlv $1, $3, $3
bgez $3, TAG685
nor $1, $3, $1
srav $1, $3, $3
TAG685:
lui $2, 1
mthi $1
bne $1, $2, TAG686
lui $1, 14
TAG686:
sll $0, $0, 0
ori $1, $1, 10
lui $2, 9
slti $4, $2, 2
TAG687:
mthi $4
lui $4, 15
multu $4, $4
lui $1, 7
TAG688:
sll $0, $0, 0
mfhi $1
div $1, $1
sb $1, -225($1)
TAG689:
bltz $1, TAG690
sw $1, -225($1)
xor $3, $1, $1
mthi $1
TAG690:
bltz $3, TAG691
sh $3, 0($3)
mfhi $4
mflo $1
TAG691:
mult $1, $1
lui $4, 2
mflo $4
addiu $3, $4, 14
TAG692:
bne $3, $3, TAG693
sb $3, 0($3)
sb $3, 0($3)
divu $3, $3
TAG693:
sb $3, 0($3)
and $4, $3, $3
beq $4, $3, TAG694
div $4, $4
TAG694:
bne $4, $4, TAG695
mtlo $4
bne $4, $4, TAG695
srl $2, $4, 13
TAG695:
mfhi $1
mfhi $4
addi $1, $1, 4
lui $4, 8
TAG696:
addu $1, $4, $4
bgtz $4, TAG697
sll $0, $0, 0
subu $2, $2, $4
TAG697:
addiu $1, $2, 4
multu $1, $2
sb $1, 0($1)
mflo $2
TAG698:
mtlo $2
bne $2, $2, TAG699
mtlo $2
and $2, $2, $2
TAG699:
lui $4, 11
bgez $2, TAG700
divu $2, $4
beq $4, $2, TAG700
TAG700:
divu $4, $4
sll $0, $0, 0
lui $3, 3
bne $3, $4, TAG701
TAG701:
sra $3, $3, 8
multu $3, $3
beq $3, $3, TAG702
mtlo $3
TAG702:
mflo $2
sb $2, 0($2)
or $1, $3, $3
blez $1, TAG703
TAG703:
sb $1, 0($1)
lbu $1, 0($1)
lui $1, 8
lui $2, 14
TAG704:
multu $2, $2
bgez $2, TAG705
lui $2, 8
bne $2, $2, TAG705
TAG705:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
ori $3, $1, 13
TAG706:
lui $2, 13
sb $3, -205($3)
lui $2, 7
and $3, $2, $3
TAG707:
mtlo $3
addi $2, $3, 11
mult $2, $2
lui $3, 6
TAG708:
mtlo $3
lui $1, 14
sll $0, $0, 0
slti $4, $1, 15
TAG709:
mtlo $4
lbu $1, 0($4)
sltiu $4, $4, 7
addiu $4, $4, 12
TAG710:
subu $2, $4, $4
lui $2, 3
sll $0, $0, 0
div $2, $2
TAG711:
mflo $1
bgtz $4, TAG712
sb $4, 0($4)
beq $1, $1, TAG712
TAG712:
lb $1, 0($1)
bne $1, $1, TAG713
sh $1, 0($1)
bgtz $1, TAG713
TAG713:
mthi $1
mflo $4
lbu $4, 0($4)
mtlo $4
TAG714:
beq $4, $4, TAG715
mthi $4
mthi $4
lw $3, 0($4)
TAG715:
xor $4, $3, $3
bne $4, $3, TAG716
mtlo $4
mfhi $4
TAG716:
sltu $2, $4, $4
mflo $1
sb $4, 0($2)
mflo $2
TAG717:
bgtz $2, TAG718
ori $2, $2, 13
slti $2, $2, 10
bgez $2, TAG718
TAG718:
sh $2, 0($2)
mthi $2
bltz $2, TAG719
mtlo $2
TAG719:
lw $4, 0($2)
bltz $4, TAG720
mfhi $2
sltiu $4, $4, 10
TAG720:
mflo $2
sb $2, 0($2)
srl $4, $2, 0
mtlo $2
TAG721:
lui $4, 7
ori $2, $4, 15
bgez $4, TAG722
mthi $2
TAG722:
ori $4, $2, 6
sllv $4, $4, $2
bne $4, $2, TAG723
lui $1, 2
TAG723:
sll $0, $0, 0
mflo $3
lui $1, 12
mthi $1
TAG724:
mfhi $2
mfhi $1
multu $1, $1
mfhi $1
TAG725:
sw $1, -144($1)
lui $4, 8
sll $0, $0, 0
lhu $1, -144($1)
TAG726:
slt $2, $1, $1
mult $2, $2
lui $4, 3
bgez $2, TAG727
TAG727:
mfhi $2
xori $4, $2, 5
beq $4, $2, TAG728
mult $4, $4
TAG728:
lui $2, 6
div $2, $4
mfhi $2
subu $3, $2, $2
TAG729:
beq $3, $3, TAG730
slti $4, $3, 13
mthi $4
bne $3, $3, TAG730
TAG730:
sll $1, $4, 1
mfhi $4
mfhi $1
blez $1, TAG731
TAG731:
sb $1, 0($1)
bne $1, $1, TAG732
lbu $4, 0($1)
lb $3, 0($4)
TAG732:
lui $3, 15
mfhi $2
mthi $3
beq $3, $3, TAG733
TAG733:
mtlo $2
lbu $4, 0($2)
ori $2, $2, 15
blez $4, TAG734
TAG734:
sltu $2, $2, $2
lw $2, 0($2)
mthi $2
lb $2, -400($2)
TAG735:
lui $4, 9
lw $2, 112($2)
xor $3, $2, $2
mflo $4
TAG736:
mtlo $4
bgez $4, TAG737
lui $2, 2
multu $4, $4
TAG737:
mfhi $4
sw $4, -400($4)
mtlo $4
slti $2, $2, 3
TAG738:
mfhi $4
lui $3, 14
and $1, $3, $2
lhu $4, 0($1)
TAG739:
sll $0, $0, 0
lh $3, -400($4)
lw $1, -400($4)
sra $1, $1, 2
TAG740:
lh $1, 0($1)
lbu $2, 0($1)
bltz $2, TAG741
mtlo $1
TAG741:
lui $1, 0
sb $1, 0($2)
lui $1, 3
mtlo $1
TAG742:
blez $1, TAG743
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG743:
beq $4, $4, TAG744
lh $4, -400($4)
mfhi $1
divu $1, $4
TAG744:
bne $1, $1, TAG745
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG745:
xori $1, $1, 8
bne $1, $1, TAG746
mtlo $1
blez $1, TAG746
TAG746:
lui $4, 8
blez $1, TAG747
mfhi $3
blez $1, TAG747
TAG747:
sh $3, -400($3)
sw $3, -400($3)
srl $3, $3, 9
beq $3, $3, TAG748
TAG748:
lui $3, 15
mthi $3
sll $0, $0, 0
mtlo $3
TAG749:
sll $0, $0, 0
mflo $1
multu $3, $1
mtlo $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop