ori $1, $0, 3
ori $2, $0, 0
ori $3, $0, 5
ori $4, $0, 1
sw $4, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $3, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $4, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $3, 124($0)
multu $2, $2
multu $2, $2
mtlo $2
beq $2, $2, TAG1
TAG1:
mfhi $2
lui $3, 8
bne $2, $2, TAG2
sw $2, 0($2)
TAG2:
mtlo $3
and $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG3:
sll $0, $0, 0
lui $1, 9
sll $0, $0, 0
bne $1, $2, TAG4
TAG4:
sll $0, $0, 0
mfhi $4
div $1, $1
bne $4, $1, TAG5
TAG5:
mult $4, $4
sh $4, 0($4)
sh $4, 0($4)
lui $2, 15
TAG6:
xori $1, $2, 4
div $1, $1
mtlo $2
mthi $2
TAG7:
div $1, $1
divu $1, $1
blez $1, TAG8
mult $1, $1
TAG8:
slti $2, $1, 7
blez $2, TAG9
div $1, $1
mthi $2
TAG9:
lbu $3, 0($2)
mfhi $2
beq $2, $3, TAG10
xor $4, $3, $2
TAG10:
sltu $1, $4, $4
mthi $1
sh $4, 0($1)
srl $3, $1, 6
TAG11:
bne $3, $3, TAG12
lb $3, 0($3)
blez $3, TAG12
sb $3, 0($3)
TAG12:
srav $2, $3, $3
sw $2, 0($3)
sb $2, 0($2)
mult $2, $3
TAG13:
sw $2, 0($2)
srl $1, $2, 15
slti $4, $2, 15
lui $4, 8
TAG14:
xor $4, $4, $4
mfhi $1
lbu $3, 0($4)
mflo $4
TAG15:
lhu $3, 0($4)
sw $3, 0($4)
mult $3, $4
srav $2, $3, $4
TAG16:
mfhi $4
mtlo $4
xor $2, $4, $4
addi $3, $4, 2
TAG17:
sllv $1, $3, $3
blez $1, TAG18
multu $3, $3
sb $1, 0($1)
TAG18:
mthi $1
sb $1, 0($1)
mtlo $1
beq $1, $1, TAG19
TAG19:
lui $2, 7
mflo $4
divu $2, $1
addiu $1, $2, 0
TAG20:
subu $2, $1, $1
beq $1, $2, TAG21
mthi $1
addiu $2, $1, 6
TAG21:
sltu $2, $2, $2
bne $2, $2, TAG22
lui $1, 14
xor $1, $2, $2
TAG22:
blez $1, TAG23
mflo $3
beq $1, $1, TAG23
mflo $1
TAG23:
subu $4, $1, $1
bgez $1, TAG24
mtlo $1
mtlo $4
TAG24:
slti $4, $4, 14
multu $4, $4
mflo $4
addu $1, $4, $4
TAG25:
lui $2, 6
sllv $3, $1, $1
sra $3, $2, 9
lh $3, 0($1)
TAG26:
bltz $3, TAG27
sh $3, 0($3)
sh $3, 0($3)
mthi $3
TAG27:
mfhi $2
beq $3, $3, TAG28
multu $2, $3
lh $3, 0($2)
TAG28:
mflo $4
sb $3, 0($3)
mfhi $4
mtlo $4
TAG29:
beq $4, $4, TAG30
or $3, $4, $4
bne $3, $3, TAG30
lui $3, 8
TAG30:
beq $3, $3, TAG31
andi $2, $3, 2
lh $1, 0($2)
mthi $1
TAG31:
multu $1, $1
bltz $1, TAG32
andi $1, $1, 9
mult $1, $1
TAG32:
sh $1, 0($1)
beq $1, $1, TAG33
lbu $2, 0($1)
lui $4, 10
TAG33:
lui $3, 10
sll $0, $0, 0
beq $3, $3, TAG34
sll $0, $0, 0
TAG34:
sll $0, $0, 0
lui $1, 3
xor $4, $2, $3
mflo $2
TAG35:
xori $1, $2, 12
lui $4, 13
lui $1, 9
bgtz $1, TAG36
TAG36:
sltu $1, $1, $1
beq $1, $1, TAG37
sltiu $1, $1, 12
divu $1, $1
TAG37:
lbu $2, 0($1)
bgtz $1, TAG38
mult $2, $1
lui $2, 11
TAG38:
mtlo $2
mflo $2
ori $2, $2, 3
mfhi $1
TAG39:
sb $1, 0($1)
mult $1, $1
mtlo $1
sb $1, 0($1)
TAG40:
sw $1, 0($1)
mflo $1
bgtz $1, TAG41
sltiu $1, $1, 10
TAG41:
sll $4, $1, 4
mflo $2
mflo $3
sltu $4, $2, $3
TAG42:
multu $4, $4
sw $4, 0($4)
sll $2, $4, 15
ori $1, $2, 1
TAG43:
mtlo $1
addu $3, $1, $1
lui $2, 6
mult $1, $2
TAG44:
mthi $2
bltz $2, TAG45
multu $2, $2
blez $2, TAG45
TAG45:
sll $0, $0, 0
mfhi $1
sra $1, $2, 12
sll $0, $0, 0
TAG46:
mult $4, $4
multu $4, $4
sltiu $1, $4, 11
multu $4, $4
TAG47:
lui $3, 10
divu $1, $3
divu $1, $1
beq $1, $3, TAG48
TAG48:
addiu $3, $3, 15
subu $1, $3, $3
sll $2, $1, 0
slti $2, $2, 3
TAG49:
mult $2, $2
blez $2, TAG50
mfhi $1
mfhi $4
TAG50:
lui $2, 11
subu $3, $4, $2
sll $0, $0, 0
lui $4, 11
TAG51:
xori $3, $4, 2
or $4, $4, $3
or $1, $3, $4
sll $0, $0, 0
TAG52:
sll $0, $0, 0
lui $4, 0
lw $1, 0($4)
lb $4, 0($1)
TAG53:
mfhi $1
lbu $1, 0($4)
lbu $2, 0($1)
nor $1, $1, $1
TAG54:
bne $1, $1, TAG55
sltiu $3, $1, 14
bne $1, $1, TAG55
lhu $3, 1($1)
TAG55:
sh $3, 0($3)
subu $3, $3, $3
lui $1, 9
mflo $3
TAG56:
sb $3, 0($3)
divu $3, $3
lui $1, 0
srl $3, $3, 14
TAG57:
mthi $3
sub $3, $3, $3
sb $3, 0($3)
mtlo $3
TAG58:
mtlo $3
mtlo $3
blez $3, TAG59
mthi $3
TAG59:
beq $3, $3, TAG60
srlv $1, $3, $3
lui $2, 10
lh $1, 0($2)
TAG60:
beq $1, $1, TAG61
lui $1, 2
div $1, $1
mult $1, $1
TAG61:
and $1, $1, $1
mflo $2
bgez $1, TAG62
mtlo $1
TAG62:
mtlo $2
mflo $4
bgez $2, TAG63
sw $2, 0($4)
TAG63:
lbu $1, 0($4)
mflo $4
bgtz $4, TAG64
mtlo $1
TAG64:
beq $4, $4, TAG65
sltu $4, $4, $4
multu $4, $4
lb $1, 0($4)
TAG65:
bne $1, $1, TAG66
lh $3, 0($1)
srl $3, $1, 3
bltz $3, TAG66
TAG66:
mthi $3
beq $3, $3, TAG67
sb $3, 0($3)
sw $3, 0($3)
TAG67:
mfhi $3
mult $3, $3
sub $3, $3, $3
mfhi $3
TAG68:
multu $3, $3
srl $4, $3, 6
lui $3, 8
bne $4, $4, TAG69
TAG69:
subu $4, $3, $3
srav $2, $4, $4
blez $4, TAG70
sb $2, 0($2)
TAG70:
sw $2, 0($2)
xor $2, $2, $2
lb $4, 0($2)
mflo $2
TAG71:
lui $2, 5
mfhi $1
lw $2, 0($1)
multu $2, $2
TAG72:
mthi $2
xori $1, $2, 1
mfhi $2
mtlo $1
TAG73:
mtlo $2
lui $2, 14
sll $0, $0, 0
beq $2, $2, TAG74
TAG74:
srav $1, $2, $2
sll $0, $0, 0
and $4, $1, $3
sll $0, $0, 0
TAG75:
mult $4, $4
mthi $4
div $4, $4
bne $4, $4, TAG76
TAG76:
slti $4, $4, 3
lui $1, 5
mult $1, $4
sub $2, $4, $4
TAG77:
multu $2, $2
lui $3, 0
mflo $3
sw $2, 0($2)
TAG78:
beq $3, $3, TAG79
sra $1, $3, 9
bne $3, $3, TAG79
lhu $4, 0($1)
TAG79:
mtlo $4
ori $4, $4, 8
lui $2, 0
bgez $4, TAG80
TAG80:
mtlo $2
lui $4, 9
mflo $2
sll $0, $0, 0
TAG81:
lui $4, 12
mflo $4
lb $2, 0($4)
lhu $4, 0($4)
TAG82:
addu $2, $4, $4
mfhi $2
mfhi $1
addi $3, $2, 2
TAG83:
multu $3, $3
lhu $2, 0($3)
mflo $1
slt $1, $3, $2
TAG84:
mult $1, $1
lw $4, 0($1)
lh $2, 0($4)
add $1, $4, $1
TAG85:
sw $1, 0($1)
bgez $1, TAG86
mult $1, $1
bne $1, $1, TAG86
TAG86:
lui $2, 11
lui $4, 2
nor $1, $2, $2
multu $1, $4
TAG87:
blez $1, TAG88
sll $0, $0, 0
lui $2, 7
bgtz $3, TAG88
TAG88:
sll $0, $0, 0
lui $2, 9
sll $0, $0, 0
lui $3, 4
TAG89:
sll $0, $0, 0
sll $0, $0, 0
or $1, $3, $1
xori $3, $3, 3
TAG90:
mflo $4
mfhi $3
lui $3, 4
div $3, $3
TAG91:
mfhi $3
sw $3, 0($3)
mflo $1
srl $2, $1, 5
TAG92:
sll $1, $2, 11
sw $1, 0($2)
lui $2, 1
bne $2, $2, TAG93
TAG93:
sll $0, $0, 0
bne $4, $4, TAG94
sll $0, $0, 0
multu $2, $4
TAG94:
div $4, $4
xori $4, $4, 2
beq $4, $4, TAG95
sll $0, $0, 0
TAG95:
sll $0, $0, 0
slti $4, $2, 8
sw $4, 0($4)
sh $2, 0($4)
TAG96:
sllv $2, $4, $4
xori $1, $4, 12
bne $4, $1, TAG97
ori $1, $2, 8
TAG97:
bne $1, $1, TAG98
addu $3, $1, $1
nor $4, $1, $1
multu $1, $1
TAG98:
bgtz $4, TAG99
sh $4, 9($4)
lbu $4, 9($4)
sh $4, -247($4)
TAG99:
sra $3, $4, 11
lui $4, 7
xori $2, $3, 1
xori $1, $2, 8
TAG100:
addiu $3, $1, 1
blez $3, TAG101
sb $1, 0($1)
slti $2, $1, 13
TAG101:
lui $4, 13
div $4, $4
addu $1, $2, $4
sb $1, 0($2)
TAG102:
mtlo $1
mthi $1
multu $1, $1
sltiu $3, $1, 4
TAG103:
sltu $2, $3, $3
multu $3, $2
sllv $1, $2, $2
srav $1, $1, $1
TAG104:
mult $1, $1
lh $3, 0($1)
lui $1, 6
mtlo $1
TAG105:
bltz $1, TAG106
sll $0, $0, 0
lui $2, 2
div $1, $1
TAG106:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $1, TAG107
sll $0, $0, 0
TAG107:
bne $4, $4, TAG108
mult $4, $4
mfhi $1
mfhi $1
TAG108:
sll $0, $0, 0
mult $2, $2
mfhi $1
bltz $2, TAG109
TAG109:
mthi $1
sra $1, $1, 11
mflo $2
bgtz $1, TAG110
TAG110:
sllv $4, $2, $2
nor $2, $4, $2
sw $4, 0($4)
sltu $3, $4, $2
TAG111:
addu $2, $3, $3
lui $3, 2
beq $2, $3, TAG112
sh $3, 0($2)
TAG112:
and $3, $3, $3
mflo $4
mtlo $3
mfhi $3
TAG113:
beq $3, $3, TAG114
lb $2, 0($3)
lui $3, 10
divu $2, $3
TAG114:
beq $3, $3, TAG115
or $1, $3, $3
mflo $4
bgtz $1, TAG115
TAG115:
sw $4, 0($4)
lb $1, 0($4)
sw $4, 0($1)
lh $2, 0($1)
TAG116:
mfhi $4
multu $4, $2
xori $1, $4, 14
sh $1, 0($1)
TAG117:
div $1, $1
mtlo $1
xori $4, $1, 6
beq $4, $1, TAG118
TAG118:
mthi $4
mtlo $4
bne $4, $4, TAG119
slti $2, $4, 14
TAG119:
lb $4, 0($2)
sb $4, 0($2)
mult $2, $4
xor $2, $4, $4
TAG120:
bne $2, $2, TAG121
xor $4, $2, $2
mult $2, $4
sb $2, 0($4)
TAG121:
lui $3, 8
div $4, $3
bne $3, $3, TAG122
mtlo $3
TAG122:
andi $4, $3, 0
div $3, $3
multu $4, $3
multu $3, $4
TAG123:
lb $3, 0($4)
sw $4, 0($3)
multu $3, $4
lhu $1, 0($3)
TAG124:
beq $1, $1, TAG125
mfhi $2
lb $2, 0($1)
sh $1, 0($2)
TAG125:
xor $2, $2, $2
blez $2, TAG126
lui $1, 0
bltz $1, TAG126
TAG126:
mfhi $2
subu $4, $1, $1
nor $3, $4, $4
lhu $1, 1($3)
TAG127:
mult $1, $1
sh $1, 0($1)
addiu $3, $1, 12
lui $2, 5
TAG128:
lui $1, 15
bne $2, $2, TAG129
srl $1, $2, 2
srlv $2, $1, $1
TAG129:
bgez $2, TAG130
mfhi $3
sub $2, $3, $2
srav $4, $2, $2
TAG130:
andi $1, $4, 15
andi $1, $1, 2
addi $3, $4, 3
lw $4, 0($4)
TAG131:
sll $2, $4, 15
mult $4, $4
lui $3, 1
sh $2, 0($4)
TAG132:
lui $3, 5
mthi $3
beq $3, $3, TAG133
mtlo $3
TAG133:
lui $2, 4
bgtz $3, TAG134
sll $0, $0, 0
mfhi $2
TAG134:
mfhi $2
sll $0, $0, 0
srl $1, $2, 11
mthi $1
TAG135:
bgtz $1, TAG136
mult $1, $1
xor $1, $1, $1
sh $1, 0($1)
TAG136:
slti $1, $1, 13
lui $4, 7
bne $4, $1, TAG137
subu $1, $4, $1
TAG137:
div $1, $1
xori $4, $1, 9
bltz $4, TAG138
mfhi $1
TAG138:
mfhi $2
lhu $2, 0($2)
sw $1, 0($2)
mult $2, $2
TAG139:
xori $1, $2, 15
sll $1, $2, 11
bne $2, $1, TAG140
ori $1, $1, 12
TAG140:
div $1, $1
sltu $4, $1, $1
mtlo $4
xori $4, $4, 2
TAG141:
lhu $4, 0($4)
lhu $1, 0($4)
bltz $4, TAG142
lw $4, 0($4)
TAG142:
sllv $3, $4, $4
srlv $3, $3, $4
multu $3, $3
slti $4, $4, 9
TAG143:
mthi $4
mthi $4
lui $4, 15
mthi $4
TAG144:
bne $4, $4, TAG145
addu $1, $4, $4
mflo $2
lui $4, 4
TAG145:
mtlo $4
lui $4, 4
bltz $4, TAG146
mflo $2
TAG146:
mfhi $2
bgtz $2, TAG147
slti $1, $2, 8
lb $3, 0($2)
TAG147:
bltz $3, TAG148
xor $2, $3, $3
mflo $3
bne $2, $3, TAG148
TAG148:
div $3, $3
lui $4, 6
sll $4, $4, 11
beq $4, $3, TAG149
TAG149:
sll $0, $0, 0
mfhi $3
mthi $4
mfhi $2
TAG150:
bgez $2, TAG151
sll $0, $0, 0
mflo $1
mtlo $2
TAG151:
beq $1, $1, TAG152
lbu $2, 0($1)
beq $1, $1, TAG152
mflo $2
TAG152:
mfhi $2
mfhi $4
divu $4, $2
lui $3, 11
TAG153:
sll $0, $0, 0
bltz $3, TAG154
sll $0, $0, 0
sltu $2, $4, $4
TAG154:
mflo $4
div $4, $4
lui $4, 3
mthi $4
TAG155:
sll $0, $0, 0
lui $1, 4
mtlo $4
multu $4, $1
TAG156:
divu $1, $1
mtlo $1
mtlo $1
slti $2, $1, 4
TAG157:
beq $2, $2, TAG158
lh $1, 0($2)
mthi $1
blez $2, TAG158
TAG158:
multu $1, $1
bgtz $1, TAG159
mthi $1
mthi $1
TAG159:
lbu $3, 0($1)
sw $3, 0($3)
multu $3, $3
xor $2, $3, $1
TAG160:
sb $2, 0($2)
lui $1, 4
mflo $2
sll $1, $2, 6
TAG161:
mfhi $3
lui $3, 5
lui $3, 3
mflo $3
TAG162:
mfhi $4
mtlo $3
beq $4, $3, TAG163
lui $1, 12
TAG163:
beq $1, $1, TAG164
mthi $1
mtlo $1
addi $3, $1, 15
TAG164:
mflo $4
mthi $4
mflo $2
bltz $3, TAG165
TAG165:
lb $2, 0($2)
beq $2, $2, TAG166
nor $2, $2, $2
sh $2, 0($2)
TAG166:
sb $2, 1($2)
sh $2, 1($2)
sra $3, $2, 7
multu $2, $2
TAG167:
mfhi $3
lbu $1, 2($3)
sw $3, 2($3)
bltz $1, TAG168
TAG168:
lui $3, 13
divu $1, $3
bltz $1, TAG169
mfhi $2
TAG169:
sll $0, $0, 0
lh $4, -255($2)
bgtz $4, TAG170
sb $1, 2($4)
TAG170:
beq $4, $4, TAG171
mtlo $4
mflo $1
slt $4, $1, $1
TAG171:
addiu $4, $4, 12
lh $3, 0($4)
srav $2, $4, $4
lui $4, 13
TAG172:
bgtz $4, TAG173
lui $2, 15
beq $4, $4, TAG173
lh $1, 0($4)
TAG173:
blez $1, TAG174
addiu $1, $1, 11
bne $1, $1, TAG174
srl $1, $1, 15
TAG174:
lh $4, 0($1)
mult $1, $1
sll $4, $1, 11
lb $1, 0($4)
TAG175:
bltz $1, TAG176
sll $2, $1, 3
mtlo $1
sw $2, 0($1)
TAG176:
lui $2, 4
sra $2, $2, 15
sh $2, 0($2)
div $2, $2
TAG177:
lh $4, 0($2)
mult $2, $2
mult $2, $4
blez $2, TAG178
TAG178:
sll $1, $4, 1
sltiu $4, $4, 0
sw $1, 0($1)
sltiu $4, $1, 11
TAG179:
bne $4, $4, TAG180
mtlo $4
addiu $3, $4, 10
beq $3, $4, TAG180
TAG180:
lui $3, 12
mthi $3
mtlo $3
addiu $4, $3, 4
TAG181:
mult $4, $4
subu $4, $4, $4
bgtz $4, TAG182
mflo $3
TAG182:
ori $2, $3, 15
bgez $3, TAG183
sll $0, $0, 0
beq $3, $2, TAG183
TAG183:
mtlo $1
lui $2, 6
sll $0, $0, 0
sll $0, $0, 0
TAG184:
lui $1, 3
mtlo $1
srlv $2, $1, $1
mthi $2
TAG185:
sll $0, $0, 0
div $2, $2
lui $1, 7
mfhi $4
TAG186:
multu $4, $4
bne $4, $4, TAG187
multu $4, $4
bgtz $4, TAG187
TAG187:
sw $4, 0($4)
sllv $1, $4, $4
sh $1, 0($4)
mfhi $3
TAG188:
sllv $4, $3, $3
sw $4, 0($3)
srav $2, $4, $3
lb $1, 0($2)
TAG189:
blez $1, TAG190
mtlo $1
sltiu $4, $1, 6
mthi $1
TAG190:
mfhi $1
mflo $4
bgez $4, TAG191
lhu $3, 0($4)
TAG191:
lw $2, 0($3)
lui $3, 5
mult $2, $2
bgtz $3, TAG192
TAG192:
addu $1, $3, $3
mtlo $3
sll $0, $0, 0
blez $1, TAG193
TAG193:
lui $1, 5
xor $3, $1, $1
beq $1, $3, TAG194
sh $1, 0($3)
TAG194:
sw $3, 0($3)
bne $3, $3, TAG195
multu $3, $3
andi $3, $3, 14
TAG195:
lw $3, 0($3)
lb $3, 0($3)
lhu $1, 0($3)
lui $3, 14
TAG196:
divu $3, $3
beq $3, $3, TAG197
lui $1, 0
mfhi $2
TAG197:
sh $2, 0($2)
lui $4, 7
lui $1, 0
sb $1, 0($2)
TAG198:
multu $1, $1
mtlo $1
bltz $1, TAG199
addu $1, $1, $1
TAG199:
blez $1, TAG200
xor $2, $1, $1
ori $1, $2, 2
sllv $1, $2, $2
TAG200:
beq $1, $1, TAG201
sh $1, 0($1)
bne $1, $1, TAG201
mfhi $3
TAG201:
mfhi $3
lhu $1, 0($3)
mult $1, $1
mult $1, $3
TAG202:
lui $2, 10
ori $1, $1, 12
lw $1, 0($1)
beq $1, $1, TAG203
TAG203:
multu $1, $1
lui $3, 6
mult $1, $3
lui $1, 9
TAG204:
sll $0, $0, 0
bgez $1, TAG205
sll $0, $0, 0
sllv $4, $1, $1
TAG205:
mtlo $4
mfhi $2
bgtz $4, TAG206
lui $1, 6
TAG206:
sll $0, $0, 0
multu $1, $1
mflo $3
mult $3, $1
TAG207:
mthi $3
sh $3, 0($3)
addiu $1, $3, 6
sh $1, 0($3)
TAG208:
addiu $1, $1, 2
lhu $1, 0($1)
divu $1, $1
srav $1, $1, $1
TAG209:
lui $1, 5
mtlo $1
sll $0, $0, 0
addu $1, $1, $2
TAG210:
divu $1, $1
slti $1, $1, 3
sra $3, $1, 1
blez $3, TAG211
TAG211:
subu $1, $3, $3
lui $1, 15
sllv $1, $1, $1
mfhi $2
TAG212:
mflo $2
multu $2, $2
lb $3, 0($2)
bne $3, $2, TAG213
TAG213:
mthi $3
mflo $3
mflo $1
lbu $2, 0($3)
TAG214:
slti $4, $2, 2
lbu $4, 0($4)
nor $4, $4, $4
mflo $2
TAG215:
lui $3, 9
bne $3, $3, TAG216
lui $4, 2
bltz $3, TAG216
TAG216:
or $4, $4, $4
bgtz $4, TAG217
sll $0, $0, 0
mthi $2
TAG217:
ori $3, $2, 15
srlv $2, $2, $2
slti $2, $2, 12
ori $4, $2, 13
TAG218:
sb $4, 0($4)
mfhi $1
bgtz $4, TAG219
multu $1, $1
TAG219:
bne $1, $1, TAG220
lui $3, 14
mfhi $2
lui $1, 7
TAG220:
lui $2, 8
mult $2, $1
mflo $3
mflo $4
TAG221:
lhu $2, 0($4)
and $2, $2, $2
mtlo $4
beq $2, $2, TAG222
TAG222:
mfhi $2
bltz $2, TAG223
sw $2, 0($2)
lh $3, 0($2)
TAG223:
sw $3, 0($3)
sltu $2, $3, $3
blez $3, TAG224
lui $4, 11
TAG224:
beq $4, $4, TAG225
sll $0, $0, 0
lhu $4, 0($4)
sb $4, 0($4)
TAG225:
bltz $4, TAG226
lui $3, 13
addiu $4, $3, 14
sll $0, $0, 0
TAG226:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG227:
bgez $4, TAG228
mult $4, $4
sb $4, 0($4)
ori $3, $4, 14
TAG228:
mthi $3
bne $3, $3, TAG229
mflo $3
blez $3, TAG229
TAG229:
lui $1, 2
xori $3, $1, 6
mult $1, $1
mult $1, $3
TAG230:
div $3, $3
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
TAG231:
and $2, $3, $3
slt $1, $3, $3
beq $3, $2, TAG232
sra $4, $1, 13
TAG232:
mflo $1
subu $2, $4, $1
mthi $4
lhu $3, 1($2)
TAG233:
andi $3, $3, 11
divu $3, $3
multu $3, $3
lb $2, 0($3)
TAG234:
lui $4, 8
mflo $1
lui $2, 9
sll $0, $0, 0
TAG235:
slt $4, $2, $2
bne $4, $4, TAG236
mtlo $4
mthi $2
TAG236:
sltu $1, $4, $4
mult $1, $4
mfhi $4
beq $4, $1, TAG237
TAG237:
srav $2, $4, $4
sb $2, 0($4)
andi $1, $4, 11
mtlo $2
TAG238:
subu $3, $1, $1
beq $3, $3, TAG239
lui $3, 7
mthi $3
TAG239:
blez $3, TAG240
multu $3, $3
bne $3, $3, TAG240
sll $0, $0, 0
TAG240:
lui $3, 11
lui $1, 1
divu $3, $3
sll $0, $0, 0
TAG241:
nor $3, $1, $1
mtlo $3
sllv $4, $1, $1
sll $0, $0, 0
TAG242:
mfhi $2
multu $2, $2
bgtz $2, TAG243
divu $2, $4
TAG243:
bgez $2, TAG244
sh $2, 0($2)
lui $3, 4
sra $2, $3, 10
TAG244:
sb $2, 0($2)
bgez $2, TAG245
slti $3, $2, 6
lui $3, 3
TAG245:
sltu $1, $3, $3
bne $1, $3, TAG246
lui $1, 5
lui $3, 12
TAG246:
sltu $4, $3, $3
subu $3, $4, $4
bgtz $3, TAG247
sra $3, $3, 14
TAG247:
sh $3, 0($3)
mult $3, $3
xor $1, $3, $3
bne $1, $1, TAG248
TAG248:
sb $1, 0($1)
slti $3, $1, 3
bgtz $1, TAG249
sll $4, $3, 1
TAG249:
mfhi $2
subu $1, $4, $2
xori $3, $2, 6
mflo $2
TAG250:
multu $2, $2
xori $2, $2, 11
beq $2, $2, TAG251
mtlo $2
TAG251:
slt $1, $2, $2
beq $1, $1, TAG252
slti $3, $2, 0
add $3, $1, $1
TAG252:
lui $1, 4
bne $1, $1, TAG253
divu $1, $1
mthi $3
TAG253:
mflo $4
mtlo $4
bne $1, $1, TAG254
lui $3, 1
TAG254:
srlv $1, $3, $3
bne $1, $1, TAG255
div $3, $3
bgez $1, TAG255
TAG255:
addiu $2, $1, 11
divu $1, $2
sll $0, $0, 0
sll $0, $0, 0
TAG256:
blez $4, TAG257
lb $3, 0($4)
sb $4, 0($4)
srlv $2, $3, $4
TAG257:
mflo $4
multu $4, $2
beq $4, $2, TAG258
lui $4, 14
TAG258:
mfhi $1
lui $1, 7
bne $1, $1, TAG259
div $4, $4
TAG259:
sll $0, $0, 0
xori $1, $3, 8
bne $1, $3, TAG260
srlv $2, $1, $1
TAG260:
bne $2, $2, TAG261
mflo $2
sb $2, 0($2)
mfhi $4
TAG261:
lui $2, 1
mthi $2
mfhi $3
xori $3, $3, 5
TAG262:
sll $0, $0, 0
and $2, $2, $3
sll $0, $0, 0
sll $0, $0, 0
TAG263:
mtlo $1
bne $1, $1, TAG264
mtlo $1
beq $1, $1, TAG264
TAG264:
sra $4, $1, 7
lui $4, 1
lui $2, 14
mtlo $4
TAG265:
and $4, $2, $2
subu $3, $4, $4
sltu $2, $3, $4
lui $3, 4
TAG266:
lui $3, 14
lui $4, 13
bltz $3, TAG267
and $3, $3, $4
TAG267:
lui $3, 13
divu $3, $3
mthi $3
bne $3, $3, TAG268
TAG268:
mtlo $3
mfhi $4
sllv $4, $4, $4
sll $0, $0, 0
TAG269:
mthi $4
multu $4, $4
bgez $4, TAG270
subu $1, $4, $4
TAG270:
beq $1, $1, TAG271
lbu $3, 0($1)
subu $2, $3, $3
lui $1, 6
TAG271:
lui $4, 9
addiu $4, $4, 2
lui $3, 2
and $2, $4, $4
TAG272:
bltz $2, TAG273
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG273:
sll $0, $0, 0
bne $2, $2, TAG274
mtlo $2
lui $2, 12
TAG274:
mflo $3
sltiu $3, $2, 11
div $3, $2
bgtz $3, TAG275
TAG275:
multu $3, $3
or $4, $3, $3
sb $4, 0($3)
bne $4, $4, TAG276
TAG276:
mtlo $4
addi $2, $4, 2
sb $4, 0($2)
bltz $2, TAG277
TAG277:
sh $2, 0($2)
lh $4, 0($2)
bne $4, $4, TAG278
subu $3, $2, $4
TAG278:
srav $1, $3, $3
mflo $1
subu $3, $1, $3
bne $3, $3, TAG279
TAG279:
andi $4, $3, 9
mfhi $2
multu $2, $4
mfhi $3
TAG280:
lui $4, 3
mtlo $3
lhu $4, 0($3)
sw $4, -256($4)
TAG281:
mflo $3
multu $3, $3
mtlo $4
bne $4, $3, TAG282
TAG282:
addiu $1, $3, 10
ori $4, $3, 5
multu $3, $3
sb $4, 0($3)
TAG283:
bgez $4, TAG284
mthi $4
sb $4, 0($4)
mfhi $1
TAG284:
lui $4, 13
sllv $1, $4, $1
subu $3, $1, $4
sll $0, $0, 0
TAG285:
mthi $3
sra $2, $3, 5
bgtz $3, TAG286
mtlo $2
TAG286:
srlv $4, $2, $2
mthi $2
bne $4, $2, TAG287
sll $0, $0, 0
TAG287:
div $2, $2
mflo $4
mult $4, $2
sb $2, 0($4)
TAG288:
div $4, $4
beq $4, $4, TAG289
sb $4, 0($4)
mfhi $1
TAG289:
mthi $1
sll $0, $0, 0
bne $1, $1, TAG290
lui $4, 14
TAG290:
div $4, $4
divu $4, $4
blez $4, TAG291
divu $4, $4
TAG291:
lui $3, 5
sllv $3, $3, $4
srav $4, $3, $4
sll $0, $0, 0
TAG292:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG293
TAG293:
mtlo $3
div $3, $3
subu $2, $3, $3
mtlo $3
TAG294:
mfhi $3
subu $1, $3, $3
mthi $2
sw $2, 0($3)
TAG295:
sh $1, 0($1)
mfhi $4
beq $4, $1, TAG296
mthi $4
TAG296:
blez $4, TAG297
mfhi $1
bne $4, $4, TAG297
sra $3, $4, 14
TAG297:
slti $3, $3, 13
and $2, $3, $3
mtlo $2
mthi $3
TAG298:
div $2, $2
lb $1, 0($2)
sb $2, 0($2)
slt $2, $1, $1
TAG299:
xori $2, $2, 1
div $2, $2
mflo $4
bltz $4, TAG300
TAG300:
lui $4, 11
sll $2, $4, 1
mtlo $4
beq $4, $2, TAG301
TAG301:
mfhi $2
addu $2, $2, $2
mthi $2
bltz $2, TAG302
TAG302:
subu $3, $2, $2
blez $3, TAG303
andi $3, $2, 12
bne $2, $2, TAG303
TAG303:
multu $3, $3
slti $3, $3, 0
sh $3, 0($3)
srl $1, $3, 9
TAG304:
addiu $1, $1, 6
mthi $1
div $1, $1
nor $4, $1, $1
TAG305:
multu $4, $4
lw $4, 7($4)
lui $2, 15
sh $4, 0($4)
TAG306:
sra $4, $2, 6
mthi $4
mtlo $2
sll $0, $0, 0
TAG307:
lh $1, 0($3)
mfhi $3
xori $4, $3, 13
nor $3, $1, $3
TAG308:
bltz $3, TAG309
mtlo $3
mtlo $3
add $2, $3, $3
TAG309:
mfhi $2
sll $2, $2, 8
mflo $4
sll $0, $0, 0
TAG310:
sll $0, $0, 0
div $4, $4
mthi $3
addu $4, $3, $3
TAG311:
andi $4, $4, 7
sh $4, 0($4)
mthi $4
sll $1, $4, 3
TAG312:
bne $1, $1, TAG313
sw $1, 0($1)
bne $1, $1, TAG313
mfhi $4
TAG313:
nor $3, $4, $4
mthi $4
sllv $3, $3, $3
sll $0, $0, 0
TAG314:
sll $0, $0, 0
sra $1, $1, 12
slt $2, $3, $1
lb $3, 0($2)
TAG315:
beq $3, $3, TAG316
sb $3, 0($3)
lbu $3, 0($3)
bne $3, $3, TAG316
TAG316:
sh $3, 0($3)
mult $3, $3
lh $4, 0($3)
lw $4, 0($3)
TAG317:
sw $4, 0($4)
lbu $4, 0($4)
mtlo $4
bne $4, $4, TAG318
TAG318:
lui $3, 11
mult $4, $3
sll $0, $0, 0
xori $3, $4, 10
TAG319:
xor $4, $3, $3
lui $2, 5
mflo $4
sra $3, $2, 12
TAG320:
bgez $3, TAG321
mfhi $2
divu $2, $3
mfhi $3
TAG321:
addiu $4, $3, 12
addiu $4, $3, 2
lhu $3, 0($4)
sh $3, 0($4)
TAG322:
sh $3, 0($3)
sll $3, $3, 8
sltu $4, $3, $3
sw $3, 0($3)
TAG323:
blez $4, TAG324
lui $2, 14
divu $4, $4
sltu $4, $4, $4
TAG324:
sb $4, 0($4)
mfhi $2
bltz $4, TAG325
srav $3, $2, $4
TAG325:
lui $1, 10
mtlo $3
sltiu $1, $3, 8
beq $1, $1, TAG326
TAG326:
or $3, $1, $1
div $3, $3
lui $1, 13
mflo $3
TAG327:
multu $3, $3
bgtz $3, TAG328
lui $4, 3
sra $1, $4, 1
TAG328:
ori $4, $1, 13
mflo $4
mthi $4
mfhi $2
TAG329:
addiu $3, $2, 15
beq $2, $3, TAG330
mflo $1
bne $1, $3, TAG330
TAG330:
sb $1, 0($1)
mfhi $3
sb $1, 0($3)
nor $4, $1, $3
TAG331:
lui $1, 10
sll $0, $0, 0
mfhi $2
lbu $4, 0($2)
TAG332:
blez $4, TAG333
sb $4, 0($4)
bgez $4, TAG333
lui $4, 10
TAG333:
sll $0, $0, 0
sra $4, $4, 2
mtlo $1
sll $0, $0, 0
TAG334:
div $4, $4
mfhi $2
sll $0, $0, 0
sltu $3, $2, $4
TAG335:
mult $3, $3
beq $3, $3, TAG336
sb $3, 0($3)
bgtz $3, TAG336
TAG336:
lui $4, 2
blez $4, TAG337
mflo $4
mfhi $2
TAG337:
mtlo $2
andi $2, $2, 15
mfhi $3
lhu $3, 0($3)
TAG338:
sll $0, $0, 0
lui $3, 10
lui $2, 13
lui $1, 13
TAG339:
bgtz $1, TAG340
mflo $1
multu $1, $1
bgtz $1, TAG340
TAG340:
and $4, $1, $1
mtlo $4
bne $4, $1, TAG341
mflo $1
TAG341:
sh $1, 0($1)
bne $1, $1, TAG342
sw $1, 0($1)
lb $2, 0($1)
TAG342:
sra $3, $2, 9
mtlo $2
sh $3, 0($3)
bne $3, $3, TAG343
TAG343:
mthi $3
sb $3, 0($3)
sh $3, 0($3)
sltiu $4, $3, 9
TAG344:
sb $4, 0($4)
mult $4, $4
sb $4, 0($4)
bne $4, $4, TAG345
TAG345:
multu $4, $4
mthi $4
bne $4, $4, TAG346
mflo $3
TAG346:
or $3, $3, $3
lbu $2, 0($3)
bltz $2, TAG347
sllv $2, $3, $3
TAG347:
bne $2, $2, TAG348
sltu $3, $2, $2
lb $4, 0($2)
sw $3, 0($4)
TAG348:
sb $4, 0($4)
lb $2, 0($4)
bne $2, $2, TAG349
mflo $4
TAG349:
srl $4, $4, 15
mfhi $4
sb $4, 0($4)
lui $4, 1
TAG350:
div $4, $4
srlv $4, $4, $4
sll $0, $0, 0
mflo $4
TAG351:
lbu $2, 0($4)
slt $2, $4, $4
lui $4, 6
sll $0, $0, 0
TAG352:
srav $2, $4, $4
beq $2, $4, TAG353
xor $4, $4, $2
mtlo $4
TAG353:
beq $4, $4, TAG354
mfhi $2
sw $4, 0($4)
mflo $1
TAG354:
slt $1, $1, $1
mthi $1
lui $3, 12
sltiu $2, $1, 1
TAG355:
multu $2, $2
lui $3, 5
mthi $3
mflo $3
TAG356:
lui $4, 7
sltiu $4, $3, 14
bgtz $3, TAG357
lbu $2, 0($3)
TAG357:
addiu $1, $2, 2
multu $1, $2
lb $4, 0($2)
mflo $2
TAG358:
srl $3, $2, 11
lui $1, 14
srav $1, $1, $2
mtlo $2
TAG359:
sll $0, $0, 0
beq $1, $1, TAG360
mult $1, $1
sw $1, 0($1)
TAG360:
div $1, $1
mflo $1
mthi $1
addiu $2, $1, 3
TAG361:
divu $2, $2
divu $2, $2
mflo $3
lbu $3, 0($3)
TAG362:
bne $3, $3, TAG363
divu $3, $3
xor $3, $3, $3
bne $3, $3, TAG363
TAG363:
mtlo $3
nor $4, $3, $3
sh $3, 1($4)
lui $2, 4
TAG364:
beq $2, $2, TAG365
sll $0, $0, 0
sw $2, 0($2)
blez $2, TAG365
TAG365:
mflo $2
xor $3, $2, $2
sltu $4, $2, $2
mflo $1
TAG366:
mult $1, $1
ori $2, $1, 12
sh $2, 0($1)
mthi $2
TAG367:
lb $3, 0($2)
bgez $3, TAG368
lui $3, 5
lbu $4, 0($2)
TAG368:
mthi $4
sh $4, 0($4)
slti $4, $4, 11
mtlo $4
TAG369:
blez $4, TAG370
sb $4, 0($4)
lbu $3, 0($4)
bgez $3, TAG370
TAG370:
sb $3, 0($3)
div $3, $3
bne $3, $3, TAG371
srav $1, $3, $3
TAG371:
lui $3, 10
lui $2, 15
lui $2, 9
bgtz $2, TAG372
TAG372:
lui $1, 8
mtlo $1
multu $2, $1
lui $3, 3
TAG373:
multu $3, $3
div $3, $3
sll $0, $0, 0
bne $3, $1, TAG374
TAG374:
mult $1, $1
sll $0, $0, 0
addiu $3, $1, 11
lbu $4, 0($4)
TAG375:
slt $1, $4, $4
multu $1, $4
sb $1, 0($4)
sb $4, 0($4)
TAG376:
mtlo $1
sh $1, 0($1)
mflo $4
mtlo $4
TAG377:
mtlo $4
mflo $2
beq $4, $4, TAG378
mult $2, $2
TAG378:
lui $4, 13
mflo $2
lui $4, 4
mflo $3
TAG379:
mfhi $2
addu $2, $3, $2
mflo $1
lui $3, 1
TAG380:
addiu $2, $3, 15
sll $0, $0, 0
or $3, $2, $2
mtlo $2
TAG381:
mflo $1
bne $3, $1, TAG382
sllv $2, $1, $3
bltz $2, TAG382
TAG382:
sllv $3, $2, $2
bgez $3, TAG383
xori $3, $3, 10
srav $2, $2, $2
TAG383:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $3, 0
TAG384:
mflo $3
lui $3, 7
mtlo $3
blez $3, TAG385
TAG385:
sll $0, $0, 0
beq $2, $3, TAG386
mtlo $2
sll $0, $0, 0
TAG386:
srlv $4, $1, $1
beq $1, $4, TAG387
mtlo $4
mtlo $4
TAG387:
bltz $4, TAG388
ori $3, $4, 4
lbu $3, 0($4)
mtlo $3
TAG388:
sra $1, $3, 6
beq $3, $1, TAG389
mflo $4
sltu $2, $1, $1
TAG389:
sll $0, $0, 0
bne $2, $2, TAG390
sll $0, $0, 0
beq $2, $2, TAG390
TAG390:
multu $2, $2
lui $4, 10
beq $4, $4, TAG391
sll $0, $0, 0
TAG391:
ori $2, $4, 8
lui $4, 9
mfhi $2
bltz $4, TAG392
TAG392:
sll $0, $0, 0
bne $2, $2, TAG393
mthi $2
mtlo $2
TAG393:
multu $2, $2
srl $3, $2, 11
lui $2, 8
mfhi $1
TAG394:
bne $1, $1, TAG395
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG395:
mthi $1
mflo $2
addu $1, $1, $1
sll $0, $0, 0
TAG396:
sll $1, $4, 7
blez $4, TAG397
mthi $4
ori $4, $1, 13
TAG397:
mthi $4
mtlo $4
bgez $4, TAG398
mflo $1
TAG398:
ori $3, $1, 1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG399:
mthi $3
lui $1, 0
lui $2, 7
sll $0, $0, 0
TAG400:
mfhi $2
srlv $3, $3, $2
mflo $4
beq $3, $2, TAG401
TAG401:
lui $4, 13
bne $4, $4, TAG402
mfhi $4
beq $4, $4, TAG402
TAG402:
sll $0, $0, 0
srlv $4, $2, $2
mthi $4
bne $2, $4, TAG403
TAG403:
mfhi $2
mfhi $1
slti $4, $2, 12
bne $4, $1, TAG404
TAG404:
mthi $4
mult $4, $4
lui $4, 13
mflo $3
TAG405:
lbu $3, 0($3)
bne $3, $3, TAG406
sw $3, 0($3)
multu $3, $3
TAG406:
sw $3, 0($3)
lbu $4, 0($3)
mfhi $4
sw $3, 0($4)
TAG407:
mult $4, $4
xori $3, $4, 11
xor $2, $4, $4
blez $3, TAG408
TAG408:
lw $2, 0($2)
mult $2, $2
mthi $2
mtlo $2
TAG409:
lui $4, 6
bne $2, $4, TAG410
multu $2, $2
lbu $2, 0($4)
TAG410:
mtlo $2
bltz $2, TAG411
mtlo $2
addi $4, $2, 1
TAG411:
lui $4, 5
srl $1, $4, 9
mtlo $4
divu $1, $4
TAG412:
lui $2, 14
lui $4, 4
divu $4, $4
mtlo $1
TAG413:
multu $4, $4
subu $4, $4, $4
sw $4, 0($4)
lhu $2, 0($4)
TAG414:
sh $2, 0($2)
mfhi $2
lh $2, 0($2)
lb $4, 0($2)
TAG415:
lb $2, 0($4)
mflo $4
bgtz $4, TAG416
mfhi $3
TAG416:
mfhi $4
mthi $4
lui $1, 6
mfhi $2
TAG417:
sh $2, 0($2)
mflo $4
mtlo $4
lb $4, 0($4)
TAG418:
beq $4, $4, TAG419
sw $4, 0($4)
sb $4, 0($4)
bltz $4, TAG419
TAG419:
mthi $4
lb $3, 0($4)
bltz $3, TAG420
sh $4, 0($4)
TAG420:
sh $3, 0($3)
mflo $1
bgtz $1, TAG421
nor $1, $3, $3
TAG421:
lui $2, 4
subu $1, $1, $1
beq $1, $1, TAG422
lb $2, 0($1)
TAG422:
ori $4, $2, 9
subu $2, $2, $4
mfhi $2
mtlo $2
TAG423:
beq $2, $2, TAG424
mflo $4
sh $2, 0($4)
mflo $2
TAG424:
sw $2, 0($2)
mthi $2
sw $2, 0($2)
bne $2, $2, TAG425
TAG425:
sub $3, $2, $2
lw $3, 0($2)
mtlo $3
xori $4, $2, 4
TAG426:
lui $4, 15
lui $4, 13
slt $2, $4, $4
mthi $2
TAG427:
lb $2, 0($2)
bgtz $2, TAG428
mult $2, $2
lui $2, 10
TAG428:
mult $2, $2
lui $3, 7
lui $4, 1
sll $0, $0, 0
TAG429:
bne $4, $4, TAG430
multu $4, $4
mflo $4
xori $2, $4, 1
TAG430:
sb $2, 0($2)
multu $2, $2
lui $3, 15
mfhi $3
TAG431:
bgez $3, TAG432
multu $3, $3
blez $3, TAG432
xori $2, $3, 15
TAG432:
sb $2, 0($2)
sltiu $1, $2, 0
srav $4, $1, $2
lb $3, 0($1)
TAG433:
sb $3, 0($3)
xor $2, $3, $3
lui $1, 10
mfhi $2
TAG434:
mflo $2
and $2, $2, $2
sw $2, 0($2)
sllv $2, $2, $2
TAG435:
lui $3, 1
xor $2, $3, $2
or $3, $2, $2
mtlo $2
TAG436:
mult $3, $3
slt $1, $3, $3
addi $3, $1, 5
bne $3, $1, TAG437
TAG437:
mflo $2
beq $3, $2, TAG438
mtlo $3
blez $2, TAG438
TAG438:
mthi $2
mult $2, $2
beq $2, $2, TAG439
mthi $2
TAG439:
lbu $1, 0($2)
sb $1, 0($1)
sltu $2, $1, $1
mult $2, $2
TAG440:
lh $4, 0($2)
bgtz $4, TAG441
srl $3, $4, 14
multu $3, $2
TAG441:
sw $3, 0($3)
xori $2, $3, 7
bne $2, $2, TAG442
mtlo $2
TAG442:
bltz $2, TAG443
lui $2, 4
lui $3, 8
sra $2, $3, 2
TAG443:
mtlo $2
bgez $2, TAG444
srav $3, $2, $2
mflo $2
TAG444:
bltz $2, TAG445
mthi $2
slti $1, $2, 15
lw $4, 0($1)
TAG445:
mtlo $4
beq $4, $4, TAG446
mfhi $2
lb $1, 0($2)
TAG446:
lui $1, 6
mfhi $3
bgez $3, TAG447
sll $0, $0, 0
TAG447:
blez $2, TAG448
multu $2, $2
lui $3, 15
divu $3, $2
TAG448:
div $3, $3
bne $3, $3, TAG449
mfhi $4
lbu $1, 0($4)
TAG449:
mult $1, $1
bltz $1, TAG450
mflo $2
addu $1, $2, $2
TAG450:
lw $2, 0($1)
lui $1, 5
sll $3, $1, 11
or $1, $1, $1
TAG451:
mtlo $1
bgtz $1, TAG452
addu $4, $1, $1
lui $2, 13
TAG452:
lui $3, 12
addu $4, $3, $2
sllv $3, $3, $3
lui $3, 15
TAG453:
srlv $3, $3, $3
lui $4, 7
multu $3, $3
lui $1, 13
TAG454:
blez $1, TAG455
mfhi $4
lui $3, 15
bne $4, $4, TAG455
TAG455:
sll $0, $0, 0
sltiu $2, $3, 1
multu $2, $3
sltu $4, $2, $3
TAG456:
sb $4, 0($4)
nor $2, $4, $4
sb $4, 0($4)
sllv $1, $4, $2
TAG457:
lui $3, 8
sll $0, $0, 0
mtlo $1
divu $4, $3
TAG458:
bgtz $4, TAG459
subu $3, $4, $4
srl $2, $3, 1
mtlo $3
TAG459:
sw $2, 2($2)
bgtz $2, TAG460
mult $2, $2
sllv $1, $2, $2
TAG460:
xori $1, $1, 4
sll $0, $0, 0
bne $1, $1, TAG461
mflo $4
TAG461:
bgez $4, TAG462
sra $2, $4, 10
sw $4, 0($4)
lui $2, 2
TAG462:
mthi $2
sh $2, 0($2)
mtlo $2
mult $2, $2
TAG463:
bne $2, $2, TAG464
sw $2, 0($2)
lh $1, 0($2)
sw $1, 0($1)
TAG464:
nor $3, $1, $1
lbu $2, 0($1)
and $3, $2, $1
mflo $2
TAG465:
lui $3, 9
addiu $3, $2, 15
lbu $4, 0($3)
sw $3, 0($2)
TAG466:
bne $4, $4, TAG467
srav $3, $4, $4
srav $2, $3, $4
lui $3, 4
TAG467:
mthi $3
srav $4, $3, $3
beq $3, $3, TAG468
nor $2, $3, $4
TAG468:
mtlo $2
bgtz $2, TAG469
addiu $4, $2, 1
mthi $4
TAG469:
sll $2, $4, 14
mfhi $2
bne $2, $2, TAG470
addiu $3, $2, 4
TAG470:
bne $3, $3, TAG471
mtlo $3
mthi $3
sll $0, $0, 0
TAG471:
mfhi $1
lui $3, 9
sltu $4, $3, $1
lbu $2, 0($4)
TAG472:
lw $2, 0($2)
srav $1, $2, $2
ori $2, $2, 11
mthi $1
TAG473:
mthi $2
bne $2, $2, TAG474
lui $1, 8
bgez $2, TAG474
TAG474:
sll $0, $0, 0
lui $4, 12
bgez $1, TAG475
sltiu $3, $1, 6
TAG475:
bne $3, $3, TAG476
lh $1, 0($3)
mthi $1
lui $3, 9
TAG476:
multu $3, $3
bne $3, $3, TAG477
sll $0, $0, 0
bgtz $1, TAG477
TAG477:
mfhi $4
mult $1, $1
sb $4, 0($4)
or $4, $1, $1
TAG478:
mtlo $4
srl $2, $4, 12
sltu $3, $4, $2
beq $4, $3, TAG479
TAG479:
and $4, $3, $3
beq $3, $4, TAG480
sw $3, 0($3)
and $3, $3, $3
TAG480:
mfhi $4
mfhi $2
mfhi $2
sw $2, 0($2)
TAG481:
multu $2, $2
sll $2, $2, 15
mthi $2
mtlo $2
TAG482:
lb $3, 0($2)
mflo $2
subu $1, $2, $2
mfhi $3
TAG483:
multu $3, $3
blez $3, TAG484
sw $3, 0($3)
mfhi $4
TAG484:
beq $4, $4, TAG485
sub $1, $4, $4
slt $4, $1, $4
sh $1, 0($1)
TAG485:
bgtz $4, TAG486
lui $3, 1
lui $2, 15
bgez $4, TAG486
TAG486:
subu $4, $2, $2
mult $4, $4
mflo $2
multu $4, $2
TAG487:
mthi $2
lui $3, 13
mflo $2
mflo $3
TAG488:
bgtz $3, TAG489
sltiu $2, $3, 1
lbu $2, 0($2)
mult $2, $2
TAG489:
sllv $3, $2, $2
bne $3, $3, TAG490
sb $3, 0($2)
lb $2, 0($3)
TAG490:
bgtz $2, TAG491
mtlo $2
bltz $2, TAG491
sllv $1, $2, $2
TAG491:
lhu $1, 0($1)
lbu $1, 0($1)
multu $1, $1
or $2, $1, $1
TAG492:
lui $1, 0
bne $2, $1, TAG493
mflo $4
mfhi $1
TAG493:
beq $1, $1, TAG494
addiu $1, $1, 0
srlv $4, $1, $1
bgez $1, TAG494
TAG494:
mult $4, $4
mflo $3
mfhi $1
xori $2, $3, 4
TAG495:
mflo $4
multu $4, $4
bne $4, $4, TAG496
multu $4, $4
TAG496:
lbu $3, 0($4)
sllv $4, $4, $4
sw $3, 0($4)
beq $4, $3, TAG497
TAG497:
mfhi $1
sra $2, $4, 2
multu $2, $4
lui $2, 5
TAG498:
sltu $3, $2, $2
mtlo $2
lui $2, 12
sll $0, $0, 0
TAG499:
sll $0, $0, 0
beq $4, $4, TAG500
sh $2, 0($4)
sh $2, 0($4)
TAG500:
beq $4, $4, TAG501
mflo $3
blez $3, TAG501
lui $1, 10
TAG501:
mtlo $1
sltu $4, $1, $1
mfhi $4
lui $2, 13
TAG502:
div $2, $2
mthi $2
bltz $2, TAG503
mthi $2
TAG503:
div $2, $2
sll $1, $2, 3
beq $1, $2, TAG504
sll $0, $0, 0
TAG504:
slti $3, $2, 1
sll $0, $0, 0
mfhi $4
mflo $2
TAG505:
bne $2, $2, TAG506
mtlo $2
mfhi $2
bgtz $2, TAG506
TAG506:
addu $1, $2, $2
sll $1, $1, 12
beq $1, $1, TAG507
sb $1, 0($1)
TAG507:
multu $1, $1
mfhi $1
multu $1, $1
mthi $1
TAG508:
sb $1, 0($1)
bgez $1, TAG509
multu $1, $1
lw $1, 0($1)
TAG509:
lbu $2, 0($1)
mult $2, $1
sub $3, $1, $1
xori $2, $1, 14
TAG510:
mflo $3
or $2, $2, $3
sll $2, $2, 12
mfhi $1
TAG511:
lbu $3, 0($1)
mflo $1
mult $3, $1
lw $3, 0($1)
TAG512:
mult $3, $3
bgtz $3, TAG513
lbu $1, 0($3)
lui $2, 15
TAG513:
mtlo $2
sll $0, $0, 0
div $2, $2
mflo $4
TAG514:
addiu $4, $4, 13
subu $4, $4, $4
sltiu $1, $4, 6
sb $4, 0($1)
TAG515:
lbu $1, 0($1)
beq $1, $1, TAG516
lhu $3, 0($1)
mflo $4
TAG516:
lui $1, 6
lui $4, 2
bne $4, $4, TAG517
andi $2, $4, 14
TAG517:
bgez $2, TAG518
sw $2, 0($2)
mthi $2
xori $1, $2, 12
TAG518:
lui $2, 12
bgez $1, TAG519
lui $3, 7
lui $2, 0
TAG519:
div $2, $2
mthi $2
sll $0, $0, 0
mfhi $3
TAG520:
beq $3, $3, TAG521
srl $3, $3, 12
divu $3, $3
lb $1, 0($3)
TAG521:
sll $0, $0, 0
lui $1, 9
lui $3, 11
sltiu $2, $3, 5
TAG522:
sub $1, $2, $2
bgtz $2, TAG523
mtlo $1
mfhi $4
TAG523:
mfhi $3
lui $2, 3
sll $0, $0, 0
mthi $2
TAG524:
sll $0, $0, 0
lui $4, 1
mthi $4
beq $2, $4, TAG525
TAG525:
sll $0, $0, 0
nor $2, $4, $4
mfhi $4
mult $2, $4
TAG526:
bltz $4, TAG527
mtlo $4
lui $3, 15
sll $0, $0, 0
TAG527:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
div $3, $3
TAG528:
mfhi $1
divu $4, $4
mtlo $1
mflo $3
TAG529:
sh $3, 0($3)
mflo $1
lui $1, 5
lui $4, 0
TAG530:
bne $4, $4, TAG531
lbu $3, 0($4)
sb $3, 0($3)
sh $3, 0($3)
TAG531:
mthi $3
beq $3, $3, TAG532
ori $3, $3, 5
mflo $3
TAG532:
beq $3, $3, TAG533
multu $3, $3
addu $3, $3, $3
bne $3, $3, TAG533
TAG533:
multu $3, $3
mult $3, $3
sb $3, 0($3)
slti $4, $3, 3
TAG534:
mult $4, $4
srlv $3, $4, $4
bne $3, $3, TAG535
addiu $3, $4, 9
TAG535:
slti $4, $3, 0
mtlo $4
subu $4, $4, $3
mthi $3
TAG536:
blez $4, TAG537
sw $4, 9($4)
addu $1, $4, $4
sra $2, $4, 15
TAG537:
sltu $3, $2, $2
blez $3, TAG538
sll $2, $3, 11
mult $2, $2
TAG538:
blez $2, TAG539
mtlo $2
bne $2, $2, TAG539
addiu $4, $2, 4
TAG539:
sh $4, 9($4)
ori $1, $4, 1
divu $4, $4
bgez $4, TAG540
TAG540:
addiu $4, $1, 15
and $1, $1, $4
srlv $3, $4, $1
bne $4, $1, TAG541
TAG541:
sh $3, 0($3)
lbu $3, 0($3)
bltz $3, TAG542
multu $3, $3
TAG542:
ori $4, $3, 6
lui $1, 10
xori $3, $3, 10
lui $4, 2
TAG543:
bgtz $4, TAG544
sll $0, $0, 0
blez $4, TAG544
sh $4, 0($4)
TAG544:
beq $4, $4, TAG545
subu $3, $4, $4
slt $1, $4, $3
mflo $2
TAG545:
multu $2, $2
mult $2, $2
sh $2, 0($2)
lbu $1, 0($2)
TAG546:
multu $1, $1
mtlo $1
bgtz $1, TAG547
srav $3, $1, $1
TAG547:
mfhi $3
mult $3, $3
sh $3, 0($3)
lui $1, 7
TAG548:
lui $4, 4
mflo $1
sll $0, $0, 0
lui $2, 11
TAG549:
bgez $2, TAG550
mfhi $2
mfhi $2
or $2, $2, $2
TAG550:
multu $2, $2
mult $2, $2
mult $2, $2
bne $2, $2, TAG551
TAG551:
andi $4, $2, 0
lhu $1, 0($2)
lui $1, 6
mtlo $1
TAG552:
sll $0, $0, 0
mult $2, $1
sll $0, $0, 0
mult $2, $2
TAG553:
add $3, $3, $3
srav $1, $3, $3
sw $3, 0($1)
sb $3, 0($3)
TAG554:
mflo $2
sltu $4, $1, $2
sltiu $1, $2, 4
bgez $4, TAG555
TAG555:
addu $4, $1, $1
lbu $4, 0($1)
subu $4, $1, $1
sllv $3, $4, $4
TAG556:
sw $3, 0($3)
mthi $3
srav $2, $3, $3
mthi $2
TAG557:
beq $2, $2, TAG558
mflo $1
slt $4, $2, $2
bltz $4, TAG558
TAG558:
sw $4, 0($4)
bgtz $4, TAG559
mult $4, $4
bgtz $4, TAG559
TAG559:
addi $4, $4, 3
div $4, $4
mtlo $4
nor $1, $4, $4
TAG560:
mflo $1
mthi $1
slt $4, $1, $1
sra $3, $1, 8
TAG561:
or $2, $3, $3
subu $1, $2, $2
sh $1, 0($1)
addiu $2, $3, 13
TAG562:
sll $4, $2, 2
lbu $4, 0($2)
lui $2, 12
lui $1, 7
TAG563:
lui $4, 1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG564:
nor $1, $3, $3
ori $2, $1, 1
bgez $1, TAG565
mflo $2
TAG565:
srl $1, $2, 7
lbu $1, 0($2)
mfhi $1
mthi $1
TAG566:
xori $4, $1, 8
mflo $3
div $3, $1
blez $1, TAG567
TAG567:
lb $2, 0($3)
multu $2, $2
and $3, $3, $2
sb $2, 0($3)
TAG568:
mfhi $4
slt $1, $4, $4
bgez $1, TAG569
lui $1, 5
TAG569:
mflo $2
bltz $2, TAG570
lw $3, 0($2)
lui $3, 9
TAG570:
ori $3, $3, 5
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG571:
lui $3, 4
sll $0, $0, 0
sll $1, $3, 7
ori $1, $1, 9
TAG572:
sll $3, $1, 13
mthi $1
mtlo $1
mtlo $1
TAG573:
srav $4, $3, $3
beq $3, $4, TAG574
lui $4, 1
mflo $4
TAG574:
bne $4, $4, TAG575
multu $4, $4
bgez $4, TAG575
sll $0, $0, 0
TAG575:
bne $4, $4, TAG576
mfhi $4
sb $4, 0($4)
lb $4, 0($4)
TAG576:
lui $1, 6
srav $3, $4, $4
mflo $4
sll $1, $4, 12
TAG577:
lb $3, 0($1)
mthi $1
sh $3, 0($1)
bgtz $1, TAG578
TAG578:
sltu $3, $3, $3
lui $4, 10
sltu $2, $4, $3
beq $3, $3, TAG579
TAG579:
sltu $4, $2, $2
mfhi $2
mfhi $1
mtlo $2
TAG580:
lb $1, 0($1)
beq $1, $1, TAG581
mult $1, $1
bne $1, $1, TAG581
TAG581:
sw $1, 0($1)
xor $1, $1, $1
bltz $1, TAG582
multu $1, $1
TAG582:
sb $1, 0($1)
lui $1, 1
div $1, $1
mtlo $1
TAG583:
beq $1, $1, TAG584
sll $0, $0, 0
mtlo $1
lh $1, 0($3)
TAG584:
sll $3, $1, 4
srav $3, $3, $1
andi $3, $1, 13
lhu $2, 0($3)
TAG585:
ori $2, $2, 1
srl $4, $2, 6
multu $4, $2
mtlo $2
TAG586:
bltz $4, TAG587
mult $4, $4
mflo $1
lbu $4, 0($1)
TAG587:
mult $4, $4
and $4, $4, $4
mflo $2
lui $1, 15
TAG588:
srlv $1, $1, $1
mthi $1
lui $2, 7
mfhi $2
TAG589:
mfhi $4
div $4, $2
mtlo $4
bne $4, $2, TAG590
TAG590:
sll $0, $0, 0
lui $1, 11
bne $4, $1, TAG591
sll $0, $0, 0
TAG591:
mfhi $1
sll $0, $0, 0
lh $4, 0($1)
sll $2, $4, 14
TAG592:
multu $2, $2
mult $2, $2
mtlo $2
lui $1, 5
TAG593:
beq $1, $1, TAG594
sll $0, $0, 0
xori $2, $1, 2
mfhi $2
TAG594:
lui $4, 13
bltz $2, TAG595
sll $0, $0, 0
lhu $2, 0($2)
TAG595:
mtlo $2
beq $2, $2, TAG596
mfhi $3
lhu $3, 0($3)
TAG596:
mfhi $3
blez $3, TAG597
mfhi $4
mflo $4
TAG597:
mthi $4
subu $4, $4, $4
lbu $1, 0($4)
addu $2, $1, $4
TAG598:
mflo $3
sh $2, 0($3)
mtlo $3
mthi $3
TAG599:
mult $3, $3
mthi $3
lui $1, 8
mult $1, $3
TAG600:
mtlo $1
lui $4, 8
mflo $3
bgtz $4, TAG601
TAG601:
sll $0, $0, 0
lui $1, 2
bne $3, $1, TAG602
ori $1, $3, 13
TAG602:
sll $0, $0, 0
sb $1, 0($2)
lui $4, 3
mflo $2
TAG603:
subu $1, $2, $2
bgez $2, TAG604
divu $2, $2
xori $3, $2, 6
TAG604:
mflo $2
mthi $3
lui $4, 14
mtlo $4
TAG605:
mthi $4
mthi $4
divu $4, $4
lui $4, 15
TAG606:
lui $3, 9
mtlo $3
sll $0, $0, 0
blez $3, TAG607
TAG607:
sll $0, $0, 0
subu $4, $3, $3
mthi $3
bgtz $4, TAG608
TAG608:
sb $4, 0($4)
multu $4, $4
ori $3, $4, 10
multu $3, $3
TAG609:
lui $1, 4
lui $4, 8
bgtz $1, TAG610
sh $1, 0($3)
TAG610:
bltz $4, TAG611
mflo $4
sb $4, 0($4)
sltiu $1, $4, 2
TAG611:
sra $3, $1, 7
mult $1, $1
bne $1, $3, TAG612
mtlo $1
TAG612:
mthi $3
lui $2, 4
mtlo $2
mthi $3
TAG613:
beq $2, $2, TAG614
div $2, $2
sb $2, 0($2)
mfhi $3
TAG614:
multu $3, $3
mult $3, $3
mfhi $2
multu $3, $2
TAG615:
sltiu $2, $2, 9
multu $2, $2
sra $3, $2, 6
bne $2, $3, TAG616
TAG616:
sw $3, 0($3)
lui $3, 1
bltz $3, TAG617
div $3, $3
TAG617:
bltz $3, TAG618
mfhi $1
bne $3, $3, TAG618
ori $2, $3, 12
TAG618:
lui $3, 10
bgez $2, TAG619
divu $3, $3
mthi $3
TAG619:
bgtz $3, TAG620
and $3, $3, $3
bne $3, $3, TAG620
mflo $2
TAG620:
ori $1, $2, 11
mtlo $1
subu $2, $2, $1
lb $1, 3($2)
TAG621:
blez $1, TAG622
mfhi $3
div $3, $1
subu $1, $1, $1
TAG622:
mult $1, $1
addi $2, $1, 14
mfhi $3
mflo $1
TAG623:
ori $3, $1, 2
mthi $1
sllv $1, $1, $1
multu $1, $1
TAG624:
mtlo $1
bgez $1, TAG625
sltu $2, $1, $1
addiu $3, $1, 2
TAG625:
div $3, $3
addiu $4, $3, 8
mfhi $2
multu $2, $2
TAG626:
lui $2, 12
lui $1, 8
or $4, $2, $2
mthi $2
TAG627:
lui $2, 15
sll $0, $0, 0
bne $4, $4, TAG628
srlv $4, $4, $2
TAG628:
bgez $4, TAG629
mfhi $2
lui $4, 12
slti $2, $4, 13
TAG629:
mthi $2
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG630:
beq $2, $2, TAG631
sll $0, $0, 0
mfhi $1
addu $4, $2, $2
TAG631:
blez $4, TAG632
lui $4, 5
sll $0, $0, 0
xori $3, $4, 3
TAG632:
mfhi $2
mthi $3
slt $2, $3, $2
sll $0, $0, 0
TAG633:
sll $2, $2, 7
mthi $2
mflo $4
lbu $1, 0($4)
TAG634:
beq $1, $1, TAG635
sw $1, 0($1)
sb $1, 0($1)
lbu $1, 0($1)
TAG635:
mfhi $1
mtlo $1
sb $1, 0($1)
lui $3, 15
TAG636:
lui $1, 7
and $2, $3, $1
mtlo $1
divu $1, $2
TAG637:
bgtz $2, TAG638
lui $3, 12
mfhi $2
sb $3, 0($3)
TAG638:
lui $3, 4
srav $4, $2, $3
nor $1, $4, $2
sll $0, $0, 0
TAG639:
srl $1, $1, 15
div $1, $1
nor $2, $1, $1
sll $0, $0, 0
TAG640:
and $1, $2, $2
sra $4, $1, 3
div $1, $1
sll $0, $0, 0
TAG641:
mflo $2
bne $4, $2, TAG642
mflo $4
div $4, $4
TAG642:
bne $4, $4, TAG643
div $4, $4
lui $4, 8
beq $4, $4, TAG643
TAG643:
lui $1, 13
bltz $1, TAG644
lui $4, 10
mflo $4
TAG644:
bgez $4, TAG645
lb $3, 0($4)
multu $3, $4
lbu $3, 0($3)
TAG645:
sw $3, 0($3)
add $2, $3, $3
mtlo $3
bltz $2, TAG646
TAG646:
lui $1, 8
sub $2, $2, $2
subu $1, $2, $2
mthi $1
TAG647:
sh $1, 0($1)
mthi $1
sb $1, 0($1)
mult $1, $1
TAG648:
mult $1, $1
mthi $1
multu $1, $1
mthi $1
TAG649:
lui $2, 14
lui $4, 11
bne $1, $4, TAG650
srav $3, $2, $4
TAG650:
divu $3, $3
addiu $2, $3, 0
sra $1, $3, 0
bgez $2, TAG651
TAG651:
mflo $4
and $4, $4, $4
bne $1, $4, TAG652
mfhi $1
TAG652:
mthi $1
lhu $4, 0($1)
lui $4, 0
srlv $2, $4, $4
TAG653:
sb $2, 0($2)
bltz $2, TAG654
sw $2, 0($2)
lw $3, 0($2)
TAG654:
mfhi $1
sw $1, 0($1)
mthi $3
lbu $2, 0($1)
TAG655:
lui $3, 15
bne $2, $3, TAG656
mthi $3
lhu $1, 0($2)
TAG656:
bne $1, $1, TAG657
lw $2, 0($1)
sh $1, 0($1)
mfhi $4
TAG657:
sltu $2, $4, $4
addu $3, $4, $4
addiu $3, $4, 7
bgez $3, TAG658
TAG658:
sll $0, $0, 0
subu $3, $3, $3
addi $1, $3, 2
sltiu $4, $3, 15
TAG659:
lbu $3, 0($4)
mult $3, $4
addiu $2, $4, 6
addiu $1, $2, 4
TAG660:
srav $1, $1, $1
mthi $1
or $2, $1, $1
blez $1, TAG661
TAG661:
lui $3, 3
mthi $3
mflo $4
bne $2, $3, TAG662
TAG662:
mtlo $4
mfhi $4
bne $4, $4, TAG663
multu $4, $4
TAG663:
and $4, $4, $4
lui $2, 12
and $4, $4, $4
sll $0, $0, 0
TAG664:
mtlo $4
sll $0, $0, 0
divu $4, $4
slti $1, $4, 4
TAG665:
blez $1, TAG666
xori $2, $1, 12
lw $1, 0($2)
beq $2, $1, TAG666
TAG666:
mthi $1
sb $1, 0($1)
addi $3, $1, 4
bltz $3, TAG667
TAG667:
divu $3, $3
blez $3, TAG668
sll $1, $3, 1
lh $3, 0($3)
TAG668:
lui $2, 9
lui $4, 2
bgez $4, TAG669
xori $1, $3, 8
TAG669:
bne $1, $1, TAG670
divu $1, $1
mthi $1
bltz $1, TAG670
TAG670:
multu $1, $1
divu $1, $1
beq $1, $1, TAG671
lui $1, 11
TAG671:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
subu $1, $1, $1
TAG672:
xori $3, $1, 10
beq $3, $1, TAG673
mtlo $3
div $3, $3
TAG673:
sb $3, 0($3)
beq $3, $3, TAG674
srlv $1, $3, $3
bltz $3, TAG674
TAG674:
multu $1, $1
lb $1, 0($1)
lui $3, 2
bne $1, $3, TAG675
TAG675:
mflo $4
nor $3, $4, $4
sb $3, 0($4)
mfhi $2
TAG676:
lbu $1, 0($2)
blez $1, TAG677
lui $3, 14
mult $3, $3
TAG677:
mflo $3
sw $3, 0($3)
lb $4, 0($3)
mthi $3
TAG678:
beq $4, $4, TAG679
sh $4, 0($4)
slti $2, $4, 6
srav $4, $2, $2
TAG679:
or $4, $4, $4
bltz $4, TAG680
mflo $4
blez $4, TAG680
TAG680:
lw $1, 0($4)
beq $4, $4, TAG681
mtlo $1
sh $1, 0($1)
TAG681:
bltz $1, TAG682
multu $1, $1
mult $1, $1
mthi $1
TAG682:
blez $1, TAG683
sw $1, 0($1)
srl $3, $1, 15
mult $3, $1
TAG683:
mflo $2
beq $3, $3, TAG684
sw $2, 0($2)
beq $2, $2, TAG684
TAG684:
lhu $3, 0($2)
beq $2, $3, TAG685
multu $2, $2
div $3, $3
TAG685:
mthi $3
lb $3, 0($3)
mthi $3
bne $3, $3, TAG686
TAG686:
mtlo $3
lui $3, 14
ori $1, $3, 10
mfhi $1
TAG687:
mflo $1
beq $1, $1, TAG688
sb $1, 0($1)
lui $2, 8
TAG688:
bgez $2, TAG689
mult $2, $2
bne $2, $2, TAG689
sltu $4, $2, $2
TAG689:
sh $4, 0($4)
slt $1, $4, $4
sb $1, 0($1)
beq $1, $1, TAG690
TAG690:
sb $1, 0($1)
and $3, $1, $1
multu $3, $1
bgtz $3, TAG691
TAG691:
multu $3, $3
srav $4, $3, $3
lbu $3, 0($3)
bne $3, $3, TAG692
TAG692:
addi $2, $3, 6
multu $2, $3
lb $1, 0($2)
mfhi $4
TAG693:
sllv $2, $4, $4
ori $1, $4, 8
divu $1, $1
andi $4, $4, 13
TAG694:
srlv $3, $4, $4
bltz $4, TAG695
mflo $1
div $3, $1
TAG695:
bne $1, $1, TAG696
lb $1, 0($1)
lui $1, 7
sll $0, $0, 0
TAG696:
sll $0, $0, 0
bgtz $1, TAG697
sll $0, $0, 0
bgtz $1, TAG697
TAG697:
mult $1, $1
bltz $1, TAG698
slti $2, $1, 0
sll $0, $0, 0
TAG698:
bltz $4, TAG699
lbu $2, 0($4)
mtlo $4
mtlo $4
TAG699:
mthi $2
mult $2, $2
lb $1, 0($2)
lhu $2, 0($2)
TAG700:
mflo $3
lui $4, 4
or $4, $3, $2
mflo $4
TAG701:
mthi $4
beq $4, $4, TAG702
ori $2, $4, 11
sltu $3, $2, $2
TAG702:
bltz $3, TAG703
or $4, $3, $3
lui $4, 12
sltiu $2, $3, 7
TAG703:
bne $2, $2, TAG704
mtlo $2
ori $2, $2, 13
sb $2, 0($2)
TAG704:
bltz $2, TAG705
mtlo $2
mult $2, $2
lui $2, 2
TAG705:
div $2, $2
mtlo $2
addiu $1, $2, 13
subu $2, $1, $1
TAG706:
mthi $2
multu $2, $2
ori $4, $2, 0
mflo $1
TAG707:
lui $1, 13
mtlo $1
mflo $1
sll $0, $0, 0
TAG708:
lb $1, 0($3)
bltz $3, TAG709
and $1, $1, $3
sltiu $3, $1, 15
TAG709:
sllv $2, $3, $3
srav $2, $3, $2
andi $4, $3, 10
nor $4, $2, $4
TAG710:
sllv $4, $4, $4
and $3, $4, $4
bgtz $4, TAG711
lui $2, 14
TAG711:
mflo $1
mtlo $2
sll $0, $0, 0
beq $2, $2, TAG712
TAG712:
mflo $2
beq $2, $2, TAG713
sll $0, $0, 0
sra $2, $2, 4
TAG713:
bltz $2, TAG714
mflo $4
lui $2, 14
bltz $4, TAG714
TAG714:
lui $2, 9
mthi $2
lui $2, 7
lui $4, 1
TAG715:
andi $2, $4, 5
mthi $2
srav $3, $4, $2
mult $2, $2
TAG716:
srlv $3, $3, $3
mtlo $3
mfhi $3
beq $3, $3, TAG717
TAG717:
lui $2, 8
mtlo $3
bltz $2, TAG718
sll $0, $0, 0
TAG718:
sll $0, $0, 0
sra $4, $1, 12
bgtz $2, TAG719
mfhi $3
TAG719:
sh $3, 0($3)
lui $2, 10
mflo $4
mult $4, $3
TAG720:
sub $4, $4, $4
mtlo $4
beq $4, $4, TAG721
mult $4, $4
TAG721:
sw $4, 0($4)
beq $4, $4, TAG722
mult $4, $4
bltz $4, TAG722
TAG722:
mflo $4
mflo $3
lbu $1, 0($4)
slt $4, $3, $3
TAG723:
mfhi $4
beq $4, $4, TAG724
sltiu $1, $4, 14
srlv $2, $4, $4
TAG724:
lui $2, 7
mflo $4
bltz $2, TAG725
srl $4, $2, 1
TAG725:
bne $4, $4, TAG726
subu $2, $4, $4
slt $1, $4, $2
lui $4, 7
TAG726:
and $4, $4, $4
bne $4, $4, TAG727
multu $4, $4
lui $4, 10
TAG727:
sll $4, $4, 4
srl $1, $4, 15
multu $4, $4
or $3, $1, $1
TAG728:
sw $3, -320($3)
beq $3, $3, TAG729
srl $2, $3, 12
bgez $2, TAG729
TAG729:
sh $2, 0($2)
sh $2, 0($2)
sw $2, 0($2)
mthi $2
TAG730:
mfhi $4
mflo $4
bgtz $4, TAG731
lb $2, 0($4)
TAG731:
srav $1, $2, $2
bne $2, $1, TAG732
ori $4, $2, 11
beq $4, $2, TAG732
TAG732:
lui $2, 7
sll $0, $0, 0
beq $4, $3, TAG733
sll $0, $0, 0
TAG733:
bne $2, $2, TAG734
mtlo $2
mthi $2
beq $2, $2, TAG734
TAG734:
addiu $1, $2, 0
mult $2, $2
mthi $1
sll $0, $0, 0
TAG735:
mflo $3
subu $4, $3, $3
addiu $4, $3, 3
srav $1, $1, $4
TAG736:
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG737:
multu $4, $4
mthi $4
mfhi $3
bgez $4, TAG738
TAG738:
sb $3, 0($3)
sb $3, 0($3)
andi $3, $3, 8
srl $2, $3, 9
TAG739:
bltz $2, TAG740
sh $2, 0($2)
sllv $4, $2, $2
beq $4, $2, TAG740
TAG740:
subu $1, $4, $4
sw $1, 0($4)
multu $4, $1
lhu $2, 0($4)
TAG741:
mflo $1
blez $1, TAG742
mflo $4
bne $1, $4, TAG742
TAG742:
nor $3, $4, $4
sh $4, 0($4)
mtlo $3
divu $4, $3
TAG743:
sh $3, 1($3)
bltz $3, TAG744
sra $3, $3, 4
beq $3, $3, TAG744
TAG744:
sll $0, $0, 0
lhu $2, 0($4)
mfhi $2
sw $3, 0($2)
TAG745:
multu $2, $2
bgez $2, TAG746
mthi $2
lhu $1, 0($2)
TAG746:
lbu $4, 0($1)
bgez $4, TAG747
mflo $2
lhu $1, 0($4)
TAG747:
lui $1, 13
mflo $3
lui $2, 4
lui $2, 13
TAG748:
mthi $2
xor $1, $2, $2
addiu $1, $1, 2
mtlo $2
TAG749:
slti $1, $1, 6
sb $1, 0($1)
mtlo $1
mtlo $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop