ori $1, $0, 6
ori $2, $0, 10
ori $3, $0, 5
ori $4, $0, 0
sw $4, 0($0)
sw $2, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $1, 92($0)
sw $4, 96($0)
sw $1, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $3, 124($0)
lh $1, 0($2)
lbu $1, 0($1)
lh $2, 0($1)
sb $1, 0($1)
TAG1:
lui $3, 1
bne $2, $3, TAG2
mthi $3
bgtz $3, TAG2
TAG2:
sllv $3, $3, $3
bne $3, $3, TAG3
sll $0, $0, 0
blez $3, TAG3
TAG3:
lui $4, 10
andi $3, $4, 9
bgez $4, TAG4
lh $2, 0($3)
TAG4:
sb $2, 0($2)
mtlo $2
lhu $4, 0($2)
lhu $3, 0($2)
TAG5:
sw $3, 0($3)
sh $3, 0($3)
lui $3, 7
sll $0, $0, 0
TAG6:
blez $4, TAG7
lh $4, 0($4)
mflo $4
lb $4, 0($4)
TAG7:
lui $2, 12
mtlo $2
blez $2, TAG8
andi $3, $4, 6
TAG8:
sb $3, 0($3)
multu $3, $3
sltu $4, $3, $3
lhu $3, 0($4)
TAG9:
beq $3, $3, TAG10
lhu $4, 0($3)
bne $3, $4, TAG10
sub $3, $4, $3
TAG10:
and $2, $3, $3
lh $1, 0($3)
multu $2, $2
lb $4, 0($3)
TAG11:
or $1, $4, $4
sw $1, 0($4)
beq $1, $1, TAG12
lh $3, 0($4)
TAG12:
bne $3, $3, TAG13
or $3, $3, $3
multu $3, $3
or $1, $3, $3
TAG13:
slti $3, $1, 1
sb $1, 0($3)
xori $2, $1, 9
lui $3, 11
TAG14:
blez $3, TAG15
sll $3, $3, 1
mthi $3
sll $0, $0, 0
TAG15:
addiu $4, $3, 1
mfhi $3
mflo $2
sra $4, $4, 5
TAG16:
mfhi $2
sll $0, $0, 0
sll $1, $4, 7
sll $0, $0, 0
TAG17:
beq $2, $2, TAG18
mfhi $3
bne $3, $2, TAG18
sub $2, $2, $2
TAG18:
div $2, $2
sll $0, $0, 0
mthi $3
srav $1, $3, $2
TAG19:
nor $1, $1, $1
bne $1, $1, TAG20
addiu $1, $1, 8
mthi $1
TAG20:
addiu $4, $1, 13
bgtz $4, TAG21
mtlo $1
or $4, $1, $1
TAG21:
mfhi $1
mflo $3
sll $0, $0, 0
mflo $1
TAG22:
sll $0, $0, 0
mthi $1
lui $2, 12
sll $0, $0, 0
TAG23:
lui $1, 11
multu $1, $1
bne $1, $1, TAG24
sll $0, $0, 0
TAG24:
srlv $4, $1, $1
srlv $4, $1, $1
lui $2, 1
sll $0, $0, 0
TAG25:
nor $1, $2, $2
mult $2, $2
sll $0, $0, 0
lui $4, 8
TAG26:
mult $4, $4
lui $1, 2
slt $4, $4, $1
sll $0, $0, 0
TAG27:
lw $3, 0($4)
slt $3, $3, $4
lui $2, 11
beq $4, $3, TAG28
TAG28:
xor $3, $2, $2
lui $3, 2
andi $4, $3, 15
sltiu $3, $4, 9
TAG29:
addu $3, $3, $3
lh $1, 0($3)
sltu $4, $3, $1
bgez $1, TAG30
TAG30:
lw $2, 0($4)
sb $2, 0($4)
mult $2, $2
mult $4, $4
TAG31:
multu $2, $2
sra $4, $2, 5
mflo $4
lui $1, 8
TAG32:
divu $1, $1
divu $1, $1
multu $1, $1
mult $1, $1
TAG33:
bne $1, $1, TAG34
mtlo $1
addu $2, $1, $1
sltiu $3, $2, 9
TAG34:
lui $3, 6
mult $3, $3
multu $3, $3
bltz $3, TAG35
TAG35:
multu $3, $3
sll $0, $0, 0
mthi $4
mult $3, $3
TAG36:
sh $4, 0($4)
addiu $2, $4, 10
sh $4, 0($2)
lui $2, 8
TAG37:
lui $4, 6
blez $2, TAG38
sll $0, $0, 0
sll $0, $0, 0
TAG38:
sll $0, $0, 0
mfhi $3
bgez $1, TAG39
mthi $3
TAG39:
mfhi $4
bgtz $3, TAG40
mfhi $1
multu $3, $1
TAG40:
sllv $4, $1, $1
xori $1, $4, 0
beq $1, $1, TAG41
mtlo $1
TAG41:
sll $0, $0, 0
mflo $2
multu $2, $1
sll $4, $2, 13
TAG42:
lui $3, 7
multu $4, $3
mtlo $4
mult $4, $4
TAG43:
div $3, $3
bne $3, $3, TAG44
mflo $4
multu $3, $4
TAG44:
nor $4, $4, $4
div $4, $4
addiu $3, $4, 4
mthi $3
TAG45:
sh $3, 0($3)
sh $3, 0($3)
divu $3, $3
subu $3, $3, $3
TAG46:
mtlo $3
lui $4, 5
xor $4, $4, $4
lb $1, 0($3)
TAG47:
mult $1, $1
lw $4, 0($1)
sllv $1, $4, $1
beq $4, $1, TAG48
TAG48:
mult $1, $1
multu $1, $1
lui $3, 11
sll $0, $0, 0
TAG49:
mfhi $1
sll $0, $0, 0
mthi $1
multu $3, $1
TAG50:
lb $1, 0($1)
sh $1, 0($1)
sh $1, 0($1)
sltu $1, $1, $1
TAG51:
bne $1, $1, TAG52
sw $1, 0($1)
lui $3, 9
bne $1, $1, TAG52
TAG52:
sll $0, $0, 0
bne $3, $3, TAG53
lui $4, 3
sllv $4, $4, $2
TAG53:
sll $0, $0, 0
bne $4, $4, TAG54
div $4, $2
mfhi $3
TAG54:
beq $3, $3, TAG55
subu $4, $3, $3
lhu $3, 0($3)
mfhi $3
TAG55:
sll $0, $0, 0
mthi $3
slti $1, $3, 14
mult $3, $3
TAG56:
sh $1, 0($1)
mtlo $1
lui $1, 10
sll $0, $0, 0
TAG57:
div $1, $1
divu $1, $1
sll $0, $0, 0
addu $1, $1, $1
TAG58:
beq $1, $1, TAG59
sll $0, $0, 0
sb $1, 0($2)
lb $1, 0($1)
TAG59:
mtlo $1
mfhi $3
sll $0, $0, 0
sltiu $2, $1, 3
TAG60:
mfhi $2
mthi $2
srlv $3, $2, $2
srl $3, $2, 8
TAG61:
mtlo $3
mtlo $3
sb $3, 0($3)
lb $1, 0($3)
TAG62:
beq $1, $1, TAG63
lhu $4, 0($1)
beq $4, $4, TAG63
mthi $4
TAG63:
srl $2, $4, 2
sb $4, 0($2)
bltz $4, TAG64
sw $4, 0($2)
TAG64:
sb $2, 0($2)
beq $2, $2, TAG65
mtlo $2
lui $4, 15
TAG65:
bgez $4, TAG66
multu $4, $4
divu $4, $4
divu $4, $4
TAG66:
lui $1, 6
slti $1, $4, 0
mfhi $1
bgez $1, TAG67
TAG67:
multu $1, $1
ori $4, $1, 11
div $4, $4
sb $4, 0($4)
TAG68:
multu $4, $4
addiu $2, $4, 13
or $1, $2, $2
lw $2, 0($1)
TAG69:
lui $1, 14
divu $1, $1
lb $2, 0($2)
bltz $2, TAG70
TAG70:
addiu $2, $2, 10
beq $2, $2, TAG71
sh $2, 0($2)
add $4, $2, $2
TAG71:
div $4, $4
bgez $4, TAG72
sllv $4, $4, $4
bltz $4, TAG72
TAG72:
mfhi $3
lui $3, 2
lui $3, 0
lui $2, 0
TAG73:
bne $2, $2, TAG74
ori $1, $2, 3
mtlo $2
srlv $2, $2, $2
TAG74:
lhu $3, 0($2)
addi $2, $3, 14
sb $2, 0($2)
divu $3, $2
TAG75:
mthi $2
lbu $2, 0($2)
lhu $4, 0($2)
bne $2, $2, TAG76
TAG76:
sh $4, 0($4)
sh $4, 0($4)
lh $1, 0($4)
bltz $1, TAG77
TAG77:
lui $2, 6
multu $1, $2
bne $2, $1, TAG78
lui $2, 1
TAG78:
sll $0, $0, 0
mtlo $2
mfhi $3
sll $0, $0, 0
TAG79:
beq $3, $3, TAG80
srlv $1, $3, $3
sra $4, $3, 15
multu $1, $4
TAG80:
lb $2, 0($4)
mfhi $3
lhu $4, 0($4)
bgez $4, TAG81
TAG81:
div $4, $4
srl $2, $4, 1
divu $2, $4
lui $2, 2
TAG82:
beq $2, $2, TAG83
sltiu $1, $2, 7
mtlo $1
mult $1, $2
TAG83:
bgez $1, TAG84
addiu $2, $1, 2
lhu $4, 0($2)
bne $2, $2, TAG84
TAG84:
slti $1, $4, 4
bgez $4, TAG85
lb $2, 0($1)
multu $1, $4
TAG85:
mfhi $3
srav $2, $2, $2
blez $2, TAG86
lui $4, 1
TAG86:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
sllv $3, $2, $2
TAG87:
subu $4, $3, $3
mult $3, $3
sll $0, $0, 0
xor $4, $4, $3
TAG88:
lui $2, 11
multu $2, $4
mthi $4
mult $2, $4
TAG89:
lui $1, 6
multu $1, $1
srl $2, $1, 14
mtlo $1
TAG90:
mtlo $2
multu $2, $2
lui $2, 6
bltz $2, TAG91
TAG91:
mult $2, $2
lui $2, 0
beq $2, $2, TAG92
xori $2, $2, 2
TAG92:
multu $2, $2
div $2, $2
lui $2, 11
mtlo $2
TAG93:
srlv $2, $2, $2
addu $3, $2, $2
lui $1, 12
srav $3, $3, $3
TAG94:
sll $0, $0, 0
andi $4, $3, 4
beq $4, $4, TAG95
mflo $3
TAG95:
addiu $2, $3, 1
multu $2, $2
mfhi $3
mfhi $2
TAG96:
and $4, $2, $2
mthi $4
xor $2, $2, $2
lui $2, 12
TAG97:
bltz $2, TAG98
sll $0, $0, 0
subu $3, $2, $2
multu $1, $2
TAG98:
lb $4, 0($3)
mfhi $4
lui $4, 8
andi $3, $4, 4
TAG99:
lui $2, 9
lw $2, 0($3)
sw $3, 0($2)
mflo $4
TAG100:
sh $4, 0($4)
sb $4, 0($4)
mflo $1
lw $3, 0($4)
TAG101:
sh $3, 0($3)
bltz $3, TAG102
mfhi $1
sw $1, -144($1)
TAG102:
mtlo $1
or $1, $1, $1
bne $1, $1, TAG103
sw $1, -144($1)
TAG103:
lui $1, 11
sll $0, $0, 0
blez $1, TAG104
mthi $4
TAG104:
beq $4, $4, TAG105
mtlo $4
lh $3, 0($4)
sllv $4, $3, $4
TAG105:
sh $4, 0($4)
bgez $4, TAG106
sh $4, 0($4)
bgez $4, TAG106
TAG106:
mtlo $4
lui $2, 11
sll $0, $0, 0
mflo $4
TAG107:
lb $1, 0($4)
srl $2, $1, 5
xor $2, $1, $2
mtlo $1
TAG108:
lui $1, 6
sll $0, $0, 0
lui $3, 13
beq $3, $3, TAG109
TAG109:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
bltz $2, TAG110
TAG110:
lw $3, 0($2)
srav $2, $2, $2
mthi $2
bltz $2, TAG111
TAG111:
mthi $2
sw $2, 0($2)
srav $3, $2, $2
lbu $2, 0($2)
TAG112:
sub $4, $2, $2
sw $2, 0($2)
lb $2, 0($2)
lui $1, 0
TAG113:
sw $1, 0($1)
lw $1, 0($1)
sll $3, $1, 11
bne $3, $1, TAG114
TAG114:
xori $4, $3, 5
multu $4, $3
bltz $4, TAG115
mthi $4
TAG115:
lui $1, 10
sll $0, $0, 0
andi $1, $1, 10
nor $2, $1, $1
TAG116:
blez $2, TAG117
lb $4, 1($2)
mthi $4
mtlo $4
TAG117:
mtlo $4
lb $4, 0($4)
lhu $2, 0($4)
beq $2, $4, TAG118
TAG118:
mfhi $1
sw $2, 0($2)
addiu $4, $1, 0
blez $2, TAG119
TAG119:
sb $4, 0($4)
srl $3, $4, 7
sllv $2, $3, $4
mfhi $4
TAG120:
lui $2, 4
mthi $4
div $2, $4
lb $4, 0($4)
TAG121:
multu $4, $4
mflo $4
mfhi $1
lui $3, 9
TAG122:
bgtz $3, TAG123
sll $0, $0, 0
multu $3, $3
mfhi $3
TAG123:
sll $4, $3, 13
bgez $3, TAG124
sll $0, $0, 0
divu $3, $4
TAG124:
mfhi $4
mult $4, $4
srav $1, $4, $4
mfhi $1
TAG125:
bne $1, $1, TAG126
addiu $3, $1, 13
lhu $4, 0($1)
sb $4, 0($3)
TAG126:
slti $4, $4, 9
sltu $1, $4, $4
bgez $4, TAG127
multu $4, $4
TAG127:
bne $1, $1, TAG128
sh $1, 0($1)
mthi $1
sb $1, 0($1)
TAG128:
mflo $3
slti $3, $1, 15
mult $1, $3
xor $1, $3, $3
TAG129:
mfhi $1
mflo $4
lhu $3, 0($4)
bltz $4, TAG130
TAG130:
slti $4, $3, 9
addiu $4, $4, 7
bgez $3, TAG131
divu $3, $4
TAG131:
divu $4, $4
lbu $3, 0($4)
bltz $3, TAG132
divu $4, $3
TAG132:
sh $3, 0($3)
mthi $3
blez $3, TAG133
andi $1, $3, 8
TAG133:
sh $1, 0($1)
sb $1, 0($1)
xori $4, $1, 1
multu $4, $1
TAG134:
mthi $4
slti $3, $4, 7
ori $4, $3, 9
lui $3, 3
TAG135:
sll $0, $0, 0
lb $1, 0($4)
srlv $4, $4, $1
mtlo $4
TAG136:
blez $4, TAG137
div $4, $4
lui $3, 2
sb $3, 0($4)
TAG137:
slti $2, $3, 11
blez $2, TAG138
sra $1, $3, 3
mfhi $4
TAG138:
mflo $1
multu $4, $1
mfhi $2
mfhi $3
TAG139:
addi $2, $3, 2
lhu $3, 0($2)
sra $3, $3, 8
mult $3, $2
TAG140:
bltz $3, TAG141
mthi $3
mult $3, $3
bgez $3, TAG141
TAG141:
mtlo $3
add $3, $3, $3
mfhi $3
mflo $2
TAG142:
lui $2, 2
sll $0, $0, 0
addiu $2, $2, 13
sltu $3, $2, $2
TAG143:
sltiu $3, $3, 2
lb $1, 0($3)
mthi $1
mult $3, $1
TAG144:
mfhi $3
mthi $1
mflo $3
xori $4, $1, 11
TAG145:
mtlo $4
srlv $4, $4, $4
lui $4, 4
nor $3, $4, $4
TAG146:
mflo $3
mfhi $1
srav $1, $3, $3
xor $3, $1, $1
TAG147:
multu $3, $3
beq $3, $3, TAG148
multu $3, $3
sw $3, 0($3)
TAG148:
mfhi $4
sw $4, 0($3)
multu $3, $3
multu $4, $3
TAG149:
srav $1, $4, $4
sb $4, 0($4)
lb $3, 0($1)
sub $2, $4, $1
TAG150:
mflo $1
beq $2, $2, TAG151
lui $3, 9
bgtz $3, TAG151
TAG151:
ori $4, $3, 2
sll $0, $0, 0
sra $4, $3, 5
div $4, $3
TAG152:
mtlo $4
mflo $1
mflo $2
sw $4, -18432($2)
TAG153:
mtlo $2
bltz $2, TAG154
lui $3, 8
mult $3, $3
TAG154:
multu $3, $3
sll $0, $0, 0
sra $1, $3, 1
xor $3, $1, $3
TAG155:
mflo $4
sll $0, $0, 0
beq $3, $4, TAG156
mflo $2
TAG156:
sh $2, 0($2)
beq $2, $2, TAG157
sw $2, 0($2)
sh $2, 0($2)
TAG157:
sw $2, 0($2)
bne $2, $2, TAG158
mflo $4
and $4, $4, $4
TAG158:
multu $4, $4
sh $4, 0($4)
sw $4, 0($4)
srl $1, $4, 5
TAG159:
add $4, $1, $1
srlv $1, $1, $1
lbu $4, 0($4)
bne $4, $1, TAG160
TAG160:
srlv $3, $4, $4
mflo $2
lh $4, 0($2)
sh $2, 0($4)
TAG161:
bltz $4, TAG162
lui $4, 12
lui $4, 11
bne $4, $4, TAG162
TAG162:
mthi $4
lui $4, 12
blez $4, TAG163
mult $4, $4
TAG163:
lui $1, 1
subu $3, $1, $1
sll $0, $0, 0
lui $4, 12
TAG164:
or $2, $4, $4
sll $0, $0, 0
bgtz $2, TAG165
mfhi $3
TAG165:
beq $3, $3, TAG166
slt $1, $3, $3
bgtz $1, TAG166
sb $3, 0($1)
TAG166:
mfhi $1
lw $2, -144($1)
bne $2, $1, TAG167
sltu $4, $1, $1
TAG167:
mult $4, $4
lb $4, 0($4)
lb $1, 0($4)
lui $4, 6
TAG168:
div $4, $4
mflo $2
lui $4, 4
mflo $2
TAG169:
lbu $2, 0($2)
sw $2, 0($2)
mfhi $2
lui $3, 6
TAG170:
addu $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
srl $4, $1, 15
TAG171:
srlv $1, $4, $4
beq $4, $4, TAG172
lui $3, 4
lbu $4, 0($1)
TAG172:
lhu $3, 0($4)
subu $1, $3, $3
addiu $1, $4, 3
xori $3, $3, 7
TAG173:
mfhi $1
bltz $3, TAG174
sb $1, 0($3)
mfhi $2
TAG174:
addi $2, $2, 9
sb $2, 0($2)
mfhi $1
mthi $1
TAG175:
lw $1, 0($1)
beq $1, $1, TAG176
sh $1, 0($1)
sb $1, 0($1)
TAG176:
mflo $1
lui $4, 1
sra $3, $1, 10
lui $1, 0
TAG177:
mflo $3
srl $1, $3, 7
mfhi $1
bltz $1, TAG178
TAG178:
sll $1, $1, 8
lb $3, 0($1)
sb $1, 0($1)
mthi $1
TAG179:
andi $4, $3, 3
beq $4, $4, TAG180
mfhi $1
mflo $4
TAG180:
beq $4, $4, TAG181
mfhi $3
bgtz $3, TAG181
sh $3, 0($3)
TAG181:
mtlo $3
mthi $3
nor $1, $3, $3
sub $4, $1, $3
TAG182:
mflo $2
lw $3, 0($2)
blez $3, TAG183
mfhi $3
TAG183:
mfhi $4
multu $3, $3
lhu $2, 0($3)
addu $3, $2, $2
TAG184:
bgtz $3, TAG185
sb $3, 0($3)
mfhi $4
mult $3, $4
TAG185:
beq $4, $4, TAG186
mult $4, $4
mfhi $3
lui $2, 10
TAG186:
lui $4, 4
mthi $4
lui $3, 4
sll $0, $0, 0
TAG187:
divu $3, $3
subu $2, $3, $3
mflo $2
bltz $3, TAG188
TAG188:
multu $2, $2
mflo $1
srlv $3, $2, $2
nor $4, $1, $1
TAG189:
xor $2, $4, $4
addu $3, $4, $4
blez $4, TAG190
mult $2, $2
TAG190:
beq $3, $3, TAG191
mfhi $2
sw $3, 0($2)
sw $3, 0($3)
TAG191:
lh $1, 0($2)
lw $2, 0($1)
and $4, $2, $2
addi $1, $4, 11
TAG192:
lui $3, 9
sll $0, $0, 0
bne $1, $3, TAG193
lui $2, 0
TAG193:
bltz $2, TAG194
lbu $4, 0($2)
beq $4, $2, TAG194
lui $3, 15
TAG194:
xori $4, $3, 4
or $2, $3, $4
sll $0, $0, 0
mthi $3
TAG195:
beq $2, $2, TAG196
sll $0, $0, 0
mtlo $1
bgtz $1, TAG196
TAG196:
lui $2, 12
bne $2, $1, TAG197
or $3, $1, $2
sw $1, 0($1)
TAG197:
addu $3, $3, $3
mtlo $3
beq $3, $3, TAG198
mult $3, $3
TAG198:
lui $1, 14
sll $0, $0, 0
srl $3, $1, 12
slti $2, $3, 7
TAG199:
sw $2, 0($2)
lui $4, 15
srav $1, $2, $2
mfhi $3
TAG200:
addiu $4, $3, 0
sb $4, -576($3)
lui $1, 14
mfhi $1
TAG201:
sb $1, -576($1)
bgtz $1, TAG202
addu $3, $1, $1
beq $3, $3, TAG202
TAG202:
sw $3, -1152($3)
lw $1, -1152($3)
lui $4, 2
bgez $1, TAG203
TAG203:
sll $0, $0, 0
bltz $4, TAG204
mtlo $2
lui $1, 7
TAG204:
mthi $1
sltiu $3, $1, 14
mult $3, $1
multu $3, $1
TAG205:
mthi $3
lui $1, 8
sb $1, 0($3)
mult $1, $1
TAG206:
mtlo $1
lui $4, 5
subu $2, $4, $4
mflo $4
TAG207:
addiu $4, $4, 0
mtlo $4
mthi $4
lui $3, 9
TAG208:
andi $3, $3, 2
xori $4, $3, 1
mtlo $3
mthi $3
TAG209:
lb $4, 0($4)
div $4, $4
slt $1, $4, $4
bgtz $1, TAG210
TAG210:
lbu $4, 0($1)
mult $4, $4
mult $1, $1
mult $4, $1
TAG211:
lw $4, 0($4)
multu $4, $4
lb $4, -1024($4)
xor $2, $4, $4
TAG212:
sw $2, 0($2)
lw $3, 0($2)
mfhi $2
mult $2, $2
TAG213:
lh $2, 0($2)
bne $2, $2, TAG214
mfhi $2
sll $4, $2, 6
TAG214:
nor $2, $4, $4
sh $2, 0($4)
mthi $4
sb $4, 0($4)
TAG215:
bgez $2, TAG216
nor $4, $2, $2
bgtz $4, TAG216
mthi $4
TAG216:
mult $4, $4
mult $4, $4
lui $4, 3
sll $0, $0, 0
TAG217:
sll $0, $0, 0
mthi $4
mthi $4
bne $4, $4, TAG218
TAG218:
mthi $4
bltz $4, TAG219
or $1, $4, $4
mfhi $3
TAG219:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG220
sll $0, $0, 0
TAG220:
lui $2, 9
srl $4, $4, 12
lhu $1, 0($4)
sw $1, 0($4)
TAG221:
multu $1, $1
multu $1, $1
mflo $2
beq $1, $1, TAG222
TAG222:
srav $4, $2, $2
lbu $3, 0($4)
bgtz $3, TAG223
mthi $4
TAG223:
mthi $3
sb $3, 0($3)
mflo $4
lui $4, 15
TAG224:
bltz $4, TAG225
lui $3, 10
sll $0, $0, 0
multu $3, $3
TAG225:
lui $1, 4
beq $1, $1, TAG226
lui $1, 11
sltiu $4, $1, 13
TAG226:
bltz $4, TAG227
mtlo $4
sll $0, $0, 0
bne $4, $4, TAG227
TAG227:
multu $4, $4
sll $0, $0, 0
mthi $4
mfhi $4
TAG228:
nor $3, $4, $4
sll $0, $0, 0
mthi $4
srl $4, $3, 11
TAG229:
mfhi $1
multu $4, $4
bne $4, $4, TAG230
xori $4, $1, 0
TAG230:
divu $4, $4
lui $4, 8
beq $4, $4, TAG231
mthi $4
TAG231:
bltz $4, TAG232
div $4, $4
srav $2, $4, $4
sra $1, $4, 0
TAG232:
sltiu $2, $1, 2
mult $1, $1
mthi $1
mtlo $2
TAG233:
mthi $2
sh $2, 0($2)
slt $2, $2, $2
mflo $1
TAG234:
sw $1, 0($1)
mflo $3
bgtz $3, TAG235
sltu $1, $1, $1
TAG235:
multu $1, $1
multu $1, $1
bne $1, $1, TAG236
mflo $2
TAG236:
beq $2, $2, TAG237
addiu $2, $2, 5
beq $2, $2, TAG237
sltiu $2, $2, 9
TAG237:
mthi $2
lbu $4, 0($2)
mflo $1
mflo $2
TAG238:
mtlo $2
mthi $2
mflo $1
bgez $2, TAG239
TAG239:
and $4, $1, $1
beq $1, $1, TAG240
multu $4, $1
addu $2, $1, $1
TAG240:
addiu $4, $2, 0
xori $1, $4, 14
lb $4, 0($4)
bgtz $4, TAG241
TAG241:
sw $4, 0($4)
bne $4, $4, TAG242
sltu $2, $4, $4
mthi $4
TAG242:
bgez $2, TAG243
mult $2, $2
lui $4, 12
mflo $2
TAG243:
mthi $2
bgez $2, TAG244
sb $2, 0($2)
mult $2, $2
TAG244:
mtlo $2
sb $2, 0($2)
bne $2, $2, TAG245
multu $2, $2
TAG245:
mthi $2
bne $2, $2, TAG246
slt $2, $2, $2
lui $4, 12
TAG246:
bgez $4, TAG247
mthi $4
mthi $4
lb $4, 0($4)
TAG247:
lui $3, 10
lui $3, 0
lui $3, 4
sltiu $3, $4, 5
TAG248:
mult $3, $3
lhu $2, 0($3)
mtlo $3
mtlo $2
TAG249:
beq $2, $2, TAG250
lbu $2, 0($2)
lb $4, 0($2)
mflo $4
TAG250:
sll $0, $0, 0
addu $1, $4, $4
multu $4, $1
sll $0, $0, 0
TAG251:
lui $1, 10
beq $1, $1, TAG252
sll $1, $1, 7
blez $1, TAG252
TAG252:
nor $3, $1, $1
lui $3, 1
sll $0, $0, 0
sltiu $2, $3, 11
TAG253:
sh $2, 0($2)
mfhi $1
or $4, $2, $2
lbu $2, -288($1)
TAG254:
sra $4, $2, 12
mfhi $2
beq $4, $2, TAG255
sb $2, -288($2)
TAG255:
bgtz $2, TAG256
lh $4, -288($2)
andi $2, $4, 14
multu $2, $2
TAG256:
mtlo $2
sh $2, -288($2)
beq $2, $2, TAG257
multu $2, $2
TAG257:
addiu $2, $2, 7
bne $2, $2, TAG258
sh $2, -295($2)
multu $2, $2
TAG258:
multu $2, $2
bgtz $2, TAG259
mthi $2
andi $3, $2, 0
TAG259:
mult $3, $3
div $3, $3
bne $3, $3, TAG260
lui $3, 13
TAG260:
addiu $4, $3, 6
sll $0, $0, 0
srav $4, $4, $3
addu $3, $3, $4
TAG261:
mtlo $3
sltu $3, $3, $3
beq $3, $3, TAG262
mthi $3
TAG262:
lh $3, 0($3)
blez $3, TAG263
multu $3, $3
xor $1, $3, $3
TAG263:
multu $1, $1
beq $1, $1, TAG264
sh $1, 0($1)
lui $4, 6
TAG264:
bgez $4, TAG265
mfhi $3
mflo $3
mflo $1
TAG265:
lui $4, 14
mflo $1
sw $1, 0($1)
lh $1, 0($1)
TAG266:
blez $1, TAG267
sb $1, 0($1)
sh $1, 0($1)
sll $4, $1, 5
TAG267:
addu $2, $4, $4
bgez $4, TAG268
sll $0, $0, 0
lh $2, 0($4)
TAG268:
beq $2, $2, TAG269
addiu $3, $2, 6
bne $3, $3, TAG269
lw $2, 0($3)
TAG269:
lui $2, 8
sll $0, $0, 0
bgtz $2, TAG270
mtlo $2
TAG270:
lui $4, 15
sll $0, $0, 0
addu $4, $2, $2
lui $4, 5
TAG271:
mthi $4
andi $4, $4, 0
mflo $1
mfhi $3
TAG272:
sll $0, $0, 0
bgtz $3, TAG273
lui $3, 8
blez $3, TAG273
TAG273:
sll $0, $0, 0
mflo $3
mthi $3
mthi $4
TAG274:
div $3, $3
srlv $3, $3, $3
mtlo $3
beq $3, $3, TAG275
TAG275:
sll $0, $0, 0
bne $3, $3, TAG276
mtlo $2
addu $2, $3, $2
TAG276:
sll $0, $0, 0
blez $2, TAG277
slti $2, $3, 13
mthi $3
TAG277:
and $4, $2, $2
mult $4, $4
bgtz $4, TAG278
mfhi $3
TAG278:
lhu $3, 0($3)
blez $3, TAG279
mfhi $3
sw $3, 0($3)
TAG279:
lui $1, 8
bgtz $3, TAG280
mflo $4
lhu $4, 0($3)
TAG280:
lui $2, 10
mult $4, $2
add $2, $4, $2
sll $0, $0, 0
TAG281:
mult $4, $4
xor $2, $4, $4
lhu $4, 0($4)
xor $4, $4, $4
TAG282:
bgez $4, TAG283
srlv $4, $4, $4
sh $4, 0($4)
bgez $4, TAG283
TAG283:
addi $4, $4, 15
bne $4, $4, TAG284
sb $4, 0($4)
multu $4, $4
TAG284:
lbu $3, 0($4)
divu $3, $3
blez $3, TAG285
mult $4, $4
TAG285:
mflo $2
multu $2, $2
lbu $3, 0($3)
mtlo $3
TAG286:
mthi $3
div $3, $3
mthi $3
mflo $2
TAG287:
mtlo $2
srlv $2, $2, $2
mult $2, $2
bne $2, $2, TAG288
TAG288:
sw $2, 0($2)
sh $2, 0($2)
addi $2, $2, 9
mthi $2
TAG289:
blez $2, TAG290
lb $2, 0($2)
mthi $2
lbu $1, 0($2)
TAG290:
multu $1, $1
sllv $1, $1, $1
bne $1, $1, TAG291
andi $1, $1, 6
TAG291:
multu $1, $1
bgtz $1, TAG292
ori $1, $1, 0
bgez $1, TAG292
TAG292:
sh $1, 0($1)
beq $1, $1, TAG293
multu $1, $1
lui $2, 12
TAG293:
bne $2, $2, TAG294
addu $4, $2, $2
sb $2, 0($2)
bgtz $4, TAG294
TAG294:
sb $4, 0($4)
beq $4, $4, TAG295
lbu $3, 0($4)
andi $1, $3, 2
TAG295:
bne $1, $1, TAG296
nor $3, $1, $1
div $3, $3
lw $2, 0($1)
TAG296:
sb $2, 0($2)
lw $4, 0($2)
bgez $2, TAG297
mtlo $2
TAG297:
sltu $2, $4, $4
mthi $2
mflo $1
lh $2, 0($4)
TAG298:
mflo $2
sb $2, 0($2)
bgtz $2, TAG299
mult $2, $2
TAG299:
lui $3, 6
sll $0, $0, 0
addiu $2, $3, 13
srav $4, $2, $2
TAG300:
lui $4, 3
mtlo $4
lui $2, 2
divu $2, $4
TAG301:
sll $1, $2, 6
mult $2, $2
srl $2, $2, 6
sll $2, $1, 8
TAG302:
div $2, $2
sll $0, $0, 0
bgez $4, TAG303
sll $0, $0, 0
TAG303:
mthi $4
sll $0, $0, 0
addiu $3, $1, 0
addu $3, $3, $4
TAG304:
sll $0, $0, 0
srl $3, $1, 11
lbu $1, -4096($3)
bltz $3, TAG305
TAG305:
addi $3, $1, 7
mthi $1
srav $3, $1, $1
slti $4, $3, 6
TAG306:
lui $3, 4
or $1, $3, $3
divu $1, $4
mtlo $1
TAG307:
bgtz $1, TAG308
lui $1, 11
sb $1, 0($1)
bne $1, $1, TAG308
TAG308:
mult $1, $1
mfhi $4
div $4, $1
sllv $2, $1, $1
TAG309:
divu $2, $2
bgtz $2, TAG310
mfhi $3
andi $2, $2, 13
TAG310:
andi $2, $2, 14
mult $2, $2
mtlo $2
bltz $2, TAG311
TAG311:
multu $2, $2
andi $1, $2, 14
nor $3, $2, $2
mfhi $3
TAG312:
bne $3, $3, TAG313
multu $3, $3
mult $3, $3
srav $4, $3, $3
TAG313:
mfhi $3
sw $3, 0($3)
mthi $3
lhu $2, 0($3)
TAG314:
nor $3, $2, $2
xor $1, $3, $2
bgez $2, TAG315
mthi $2
TAG315:
multu $1, $1
mthi $1
mtlo $1
mtlo $1
TAG316:
mtlo $1
sw $1, 1($1)
lbu $2, 1($1)
mfhi $4
TAG317:
bltz $4, TAG318
lhu $1, 1($4)
lui $2, 0
divu $1, $4
TAG318:
subu $4, $2, $2
sw $2, 0($4)
andi $1, $2, 5
and $3, $1, $2
TAG319:
bltz $3, TAG320
sb $3, 0($3)
sb $3, 0($3)
lb $1, 0($3)
TAG320:
mthi $1
mtlo $1
lbu $1, 0($1)
bne $1, $1, TAG321
TAG321:
andi $1, $1, 6
bne $1, $1, TAG322
sh $1, 0($1)
lhu $1, 0($1)
TAG322:
bltz $1, TAG323
sra $2, $1, 6
srlv $3, $2, $2
lbu $3, 0($3)
TAG323:
sll $0, $0, 0
beq $3, $3, TAG324
sb $3, -255($3)
mthi $3
TAG324:
blez $3, TAG325
mthi $3
sltu $4, $3, $3
or $1, $3, $3
TAG325:
beq $1, $1, TAG326
mthi $1
srl $2, $1, 7
lui $1, 6
TAG326:
mthi $1
lhu $2, -255($1)
addu $4, $2, $2
lui $1, 4
TAG327:
addiu $1, $1, 1
bne $1, $1, TAG328
sll $0, $0, 0
mfhi $2
TAG328:
sra $4, $2, 12
andi $1, $2, 6
mflo $2
lb $1, 0($2)
TAG329:
mfhi $1
bne $1, $1, TAG330
mflo $4
mult $4, $4
TAG330:
lbu $4, 0($4)
mthi $4
lui $2, 5
lui $4, 12
TAG331:
sll $0, $0, 0
mfhi $1
mfhi $3
blez $4, TAG332
TAG332:
lui $3, 7
mflo $4
sll $0, $0, 0
blez $4, TAG333
TAG333:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG334
TAG334:
mflo $1
srav $4, $1, $4
bltz $4, TAG335
lw $2, 0($4)
TAG335:
srl $1, $2, 7
multu $2, $1
srav $4, $2, $2
srav $2, $4, $4
TAG336:
ori $4, $2, 12
beq $4, $4, TAG337
lb $3, 0($2)
add $2, $2, $3
TAG337:
sll $4, $2, 5
xor $1, $4, $2
subu $4, $2, $2
or $1, $4, $1
TAG338:
mtlo $1
nor $3, $1, $1
srlv $3, $3, $1
nor $2, $3, $1
TAG339:
sh $2, 0($2)
slt $1, $2, $2
lui $2, 11
mthi $2
TAG340:
mfhi $3
bne $3, $2, TAG341
sll $0, $0, 0
andi $3, $3, 12
TAG341:
bne $3, $3, TAG342
lui $3, 13
lui $2, 15
lui $3, 14
TAG342:
sll $1, $3, 4
addiu $3, $3, 1
lui $2, 1
sll $0, $0, 0
TAG343:
div $2, $2
divu $2, $2
bne $2, $2, TAG344
mthi $2
TAG344:
beq $2, $2, TAG345
mfhi $2
lui $4, 12
mtlo $2
TAG345:
ori $1, $4, 7
sltiu $3, $1, 1
sb $1, 0($4)
bgez $3, TAG346
TAG346:
sub $2, $3, $3
lbu $4, 0($2)
mtlo $3
multu $3, $2
TAG347:
beq $4, $4, TAG348
mult $4, $4
lui $3, 14
sh $3, 0($3)
TAG348:
sltu $4, $3, $3
addu $4, $3, $3
mult $3, $4
beq $3, $4, TAG349
TAG349:
sw $4, 0($4)
lui $4, 14
beq $4, $4, TAG350
divu $4, $4
TAG350:
blez $4, TAG351
divu $4, $4
or $2, $4, $4
mfhi $2
TAG351:
mthi $2
lui $2, 1
bltz $2, TAG352
divu $2, $2
TAG352:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
srlv $3, $2, $2
TAG353:
multu $3, $3
slti $2, $3, 10
bgtz $3, TAG354
multu $3, $2
TAG354:
lui $3, 6
xori $3, $3, 8
sll $0, $0, 0
sll $0, $0, 0
TAG355:
addu $2, $1, $1
lhu $1, 0($2)
mflo $4
bgez $2, TAG356
TAG356:
slti $3, $4, 12
lb $1, 0($4)
addi $1, $4, 0
mult $4, $4
TAG357:
mthi $1
sw $1, 0($1)
ori $3, $1, 12
and $1, $3, $3
TAG358:
mflo $4
blez $4, TAG359
lui $3, 8
divu $1, $3
TAG359:
multu $3, $3
sll $0, $0, 0
addiu $3, $3, 1
divu $3, $3
TAG360:
lui $3, 6
beq $3, $3, TAG361
div $3, $3
lui $1, 15
TAG361:
mflo $4
blez $4, TAG362
mflo $3
lbu $3, 0($3)
TAG362:
sw $3, 0($3)
sra $3, $3, 2
srlv $2, $3, $3
lhu $2, 0($2)
TAG363:
lui $2, 15
sll $0, $0, 0
lui $2, 3
mtlo $2
TAG364:
lui $4, 3
mflo $3
bne $4, $4, TAG365
mthi $3
TAG365:
xori $4, $3, 7
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG366
TAG366:
sw $1, 0($1)
lui $1, 6
xor $3, $1, $1
mtlo $1
TAG367:
slti $1, $3, 0
lui $1, 6
lui $3, 5
mtlo $3
TAG368:
lui $1, 13
addiu $1, $1, 4
mflo $3
blez $1, TAG369
TAG369:
sll $0, $0, 0
mfhi $1
mult $1, $1
multu $3, $1
TAG370:
ori $4, $1, 8
mflo $2
mtlo $4
beq $4, $2, TAG371
TAG371:
and $2, $2, $2
bne $2, $2, TAG372
lhu $4, 0($2)
mfhi $2
TAG372:
blez $2, TAG373
mfhi $3
beq $3, $3, TAG373
lui $1, 4
TAG373:
mfhi $2
beq $1, $1, TAG374
divu $1, $2
sll $2, $2, 11
TAG374:
mflo $3
lui $3, 9
bne $3, $2, TAG375
andi $4, $2, 10
TAG375:
sb $4, 0($4)
divu $4, $4
lhu $1, 0($4)
mthi $4
TAG376:
mfhi $4
bgtz $4, TAG377
ori $3, $4, 5
mthi $1
TAG377:
lbu $3, 0($3)
add $1, $3, $3
beq $1, $1, TAG378
multu $1, $3
TAG378:
mtlo $1
and $4, $1, $1
srav $3, $1, $1
sw $4, 0($1)
TAG379:
mflo $3
bgtz $3, TAG380
multu $3, $3
multu $3, $3
TAG380:
beq $3, $3, TAG381
multu $3, $3
mfhi $2
sb $3, 0($3)
TAG381:
lbu $3, 0($2)
multu $2, $3
sb $3, 0($2)
mflo $1
TAG382:
addi $3, $1, 3
lbu $1, 0($1)
mfhi $4
bne $4, $3, TAG383
TAG383:
lb $3, 0($4)
lui $1, 6
beq $4, $3, TAG384
lw $3, 0($4)
TAG384:
mtlo $3
bgez $3, TAG385
lw $4, 0($3)
lui $1, 6
TAG385:
bltz $1, TAG386
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
TAG386:
bltz $1, TAG387
sll $0, $0, 0
lui $2, 14
srl $3, $1, 4
TAG387:
mtlo $3
multu $3, $3
mflo $4
bne $3, $3, TAG388
TAG388:
sll $0, $0, 0
sll $4, $4, 11
multu $4, $4
sb $3, 0($4)
TAG389:
or $1, $4, $4
lbu $4, 0($1)
lui $2, 13
lui $3, 4
TAG390:
div $3, $3
lui $2, 13
sll $0, $0, 0
bltz $2, TAG391
TAG391:
and $3, $3, $3
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG392:
mtlo $2
divu $2, $2
sllv $1, $2, $2
mtlo $1
TAG393:
lui $2, 5
mflo $4
mfhi $1
mfhi $4
TAG394:
lbu $4, 0($4)
multu $4, $4
beq $4, $4, TAG395
ori $2, $4, 4
TAG395:
mfhi $2
multu $2, $2
sub $4, $2, $2
multu $2, $4
TAG396:
sb $4, 0($4)
sb $4, 0($4)
sh $4, 0($4)
srav $4, $4, $4
TAG397:
bgtz $4, TAG398
sw $4, 0($4)
sw $4, 0($4)
sll $3, $4, 1
TAG398:
mtlo $3
mflo $4
bne $3, $3, TAG399
lw $2, 0($4)
TAG399:
mthi $2
lui $2, 13
sll $0, $0, 0
div $3, $2
TAG400:
lui $1, 5
bltz $3, TAG401
mfhi $2
sh $3, 0($2)
TAG401:
mtlo $2
lbu $2, 0($2)
blez $2, TAG402
addu $1, $2, $2
TAG402:
mfhi $2
mflo $4
sll $4, $4, 2
bne $1, $4, TAG403
TAG403:
mflo $2
beq $2, $2, TAG404
lh $2, 0($2)
mtlo $2
TAG404:
add $4, $2, $2
sra $3, $4, 10
bgtz $3, TAG405
multu $4, $4
TAG405:
sltu $4, $3, $3
lw $4, 0($3)
ori $1, $4, 6
sb $4, 0($4)
TAG406:
lui $3, 6
bne $3, $1, TAG407
lui $4, 6
srlv $4, $1, $3
TAG407:
sll $0, $0, 0
sub $1, $4, $2
mfhi $3
bgtz $4, TAG408
TAG408:
mthi $3
mthi $3
lhu $2, 0($3)
mthi $2
TAG409:
sw $2, 0($2)
mthi $2
beq $2, $2, TAG410
lui $2, 5
TAG410:
addu $2, $2, $2
lui $4, 13
sll $0, $0, 0
beq $2, $4, TAG411
TAG411:
sra $2, $4, 15
andi $1, $2, 4
sll $0, $0, 0
xor $4, $1, $2
TAG412:
bgtz $4, TAG413
mflo $2
bgtz $4, TAG413
lui $1, 15
TAG413:
srl $2, $1, 11
bne $1, $1, TAG414
lb $3, 0($1)
beq $1, $1, TAG414
TAG414:
andi $2, $3, 7
ori $4, $2, 11
mthi $3
sb $4, 0($3)
TAG415:
mtlo $4
lui $2, 13
lui $1, 14
bne $2, $4, TAG416
TAG416:
sll $0, $0, 0
mflo $1
beq $1, $1, TAG417
mthi $1
TAG417:
bne $1, $1, TAG418
lui $2, 12
divu $1, $1
blez $1, TAG418
TAG418:
andi $3, $2, 6
sll $0, $0, 0
blez $2, TAG419
mult $3, $3
TAG419:
beq $3, $3, TAG420
sb $3, 0($3)
mthi $3
mtlo $3
TAG420:
lui $4, 7
sll $0, $0, 0
bne $2, $4, TAG421
sll $0, $0, 0
TAG421:
srav $2, $2, $2
divu $2, $2
mflo $3
lui $4, 6
TAG422:
mfhi $3
lh $3, 0($3)
div $3, $4
subu $2, $3, $4
TAG423:
mult $2, $2
blez $2, TAG424
sll $0, $0, 0
lui $4, 5
TAG424:
addiu $3, $4, 4
beq $3, $3, TAG425
mfhi $3
sb $3, 0($3)
TAG425:
lui $1, 14
addiu $2, $3, 15
sb $3, 0($3)
bne $3, $3, TAG426
TAG426:
lb $4, 0($2)
sra $4, $2, 7
andi $1, $4, 7
multu $4, $1
TAG427:
bne $1, $1, TAG428
multu $1, $1
sb $1, 0($1)
bgtz $1, TAG428
TAG428:
lui $2, 5
multu $2, $1
lui $3, 15
beq $3, $1, TAG429
TAG429:
or $1, $3, $3
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG430:
srav $1, $1, $1
lui $4, 6
bne $1, $1, TAG431
sll $2, $1, 6
TAG431:
mtlo $2
mtlo $2
bne $2, $2, TAG432
div $2, $2
TAG432:
bltz $2, TAG433
sll $0, $0, 0
srlv $2, $2, $2
lui $3, 10
TAG433:
mfhi $1
beq $1, $1, TAG434
mflo $3
div $3, $3
TAG434:
mthi $3
div $3, $3
sra $3, $3, 13
sh $3, 0($3)
TAG435:
sb $3, 0($3)
lui $2, 9
lh $3, 0($3)
multu $3, $3
TAG436:
lbu $4, 0($3)
lui $4, 13
beq $4, $4, TAG437
mflo $1
TAG437:
multu $1, $1
sh $1, 0($1)
mfhi $2
multu $1, $2
TAG438:
mthi $2
mult $2, $2
sh $2, 0($2)
lui $2, 3
TAG439:
beq $2, $2, TAG440
lui $2, 10
mtlo $2
mthi $2
TAG440:
sll $0, $0, 0
sll $0, $0, 0
srlv $2, $4, $2
divu $2, $4
TAG441:
lui $3, 9
xori $4, $2, 6
mthi $3
srl $1, $4, 7
TAG442:
xori $4, $1, 10
mflo $2
sh $4, -6656($1)
lb $2, -6656($1)
TAG443:
addu $2, $2, $2
bne $2, $2, TAG444
slti $3, $2, 1
sra $4, $2, 5
TAG444:
srl $2, $4, 13
lui $2, 4
bgez $2, TAG445
lui $4, 1
TAG445:
mfhi $3
mtlo $4
mfhi $3
xori $1, $3, 13
TAG446:
div $1, $1
div $1, $1
bgtz $1, TAG447
sll $0, $0, 0
TAG447:
mfhi $1
lui $4, 1
lui $2, 15
bltz $1, TAG448
TAG448:
and $2, $2, $2
mtlo $2
sll $0, $0, 0
subu $4, $2, $2
TAG449:
multu $4, $4
lui $4, 2
beq $4, $4, TAG450
ori $3, $4, 0
TAG450:
sll $0, $0, 0
mfhi $1
and $4, $4, $4
beq $4, $1, TAG451
TAG451:
sll $0, $0, 0
lui $1, 10
divu $4, $1
nor $1, $4, $1
TAG452:
bltz $1, TAG453
sll $0, $0, 0
lb $1, 0($1)
sw $1, 0($1)
TAG453:
bgtz $1, TAG454
lui $3, 13
bltz $3, TAG454
addu $2, $3, $1
TAG454:
sll $0, $0, 0
mthi $2
xor $4, $2, $2
bne $4, $2, TAG455
TAG455:
lb $3, 0($4)
mult $4, $4
sb $4, 0($3)
mult $3, $4
TAG456:
mtlo $3
beq $3, $3, TAG457
multu $3, $3
mtlo $3
TAG457:
blez $3, TAG458
mfhi $4
div $3, $3
andi $4, $4, 6
TAG458:
beq $4, $4, TAG459
lui $3, 2
slti $1, $3, 15
slti $4, $3, 7
TAG459:
multu $4, $4
sltu $1, $4, $4
lhu $2, 0($1)
divu $1, $2
TAG460:
sw $2, -6666($2)
beq $2, $2, TAG461
lui $4, 14
nor $2, $2, $2
TAG461:
or $3, $2, $2
bgtz $3, TAG462
mfhi $3
sb $2, 0($3)
TAG462:
lb $3, 0($3)
sh $3, 0($3)
slti $3, $3, 15
sb $3, 0($3)
TAG463:
bltz $3, TAG464
mthi $3
bltz $3, TAG464
mflo $4
TAG464:
mfhi $1
slti $2, $4, 6
div $4, $1
addu $1, $1, $1
TAG465:
sb $1, 0($1)
multu $1, $1
bltz $1, TAG466
xor $4, $1, $1
TAG466:
subu $1, $4, $4
slti $2, $1, 0
blez $2, TAG467
multu $1, $1
TAG467:
beq $2, $2, TAG468
lw $3, 0($2)
addi $4, $2, 10
add $3, $2, $2
TAG468:
mtlo $3
divu $3, $3
srlv $3, $3, $3
mtlo $3
TAG469:
mflo $4
mthi $3
mthi $4
sb $4, 0($3)
TAG470:
sra $4, $4, 1
lhu $4, 0($4)
bgtz $4, TAG471
lw $2, 0($4)
TAG471:
sllv $3, $2, $2
bgez $2, TAG472
mflo $4
mthi $3
TAG472:
mthi $4
addiu $2, $4, 15
lhu $4, 0($4)
beq $4, $4, TAG473
TAG473:
lhu $1, 0($4)
mflo $2
lw $1, 0($1)
mtlo $1
TAG474:
lui $2, 12
divu $1, $1
and $4, $2, $1
lui $2, 10
TAG475:
lui $4, 11
nor $4, $4, $2
sll $0, $0, 0
srav $1, $4, $4
TAG476:
lui $3, 2
blez $3, TAG477
mfhi $3
mult $3, $3
TAG477:
bltz $3, TAG478
lui $1, 4
lui $1, 7
mtlo $1
TAG478:
mfhi $2
lui $4, 13
bltz $2, TAG479
div $1, $4
TAG479:
multu $4, $4
mfhi $4
mthi $4
bltz $4, TAG480
TAG480:
lui $3, 14
srlv $2, $3, $3
sll $0, $0, 0
bgez $4, TAG481
TAG481:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG482
TAG482:
addiu $3, $3, 9
divu $3, $3
sll $0, $0, 0
mflo $2
TAG483:
lui $4, 10
mfhi $1
mflo $1
slti $4, $1, 4
TAG484:
lui $2, 9
beq $2, $2, TAG485
mtlo $4
sw $2, 0($4)
TAG485:
sltiu $2, $2, 2
lw $2, 0($2)
andi $2, $2, 12
mtlo $2
TAG486:
sb $2, 0($2)
mflo $2
mthi $2
beq $2, $2, TAG487
TAG487:
sb $2, 0($2)
lb $1, 0($2)
sb $1, 0($2)
sb $1, 0($2)
TAG488:
addu $4, $1, $1
mult $4, $1
bltz $1, TAG489
sllv $3, $1, $1
TAG489:
mflo $1
mtlo $1
lui $4, 2
nor $3, $1, $3
TAG490:
bgez $3, TAG491
and $3, $3, $3
lui $2, 11
sll $0, $0, 0
TAG491:
lui $2, 13
sll $0, $0, 0
blez $2, TAG492
ori $4, $2, 5
TAG492:
mult $4, $4
sll $0, $0, 0
div $4, $4
mfhi $1
TAG493:
sw $1, 0($1)
bltz $1, TAG494
addu $4, $1, $1
bgtz $1, TAG494
TAG494:
slti $3, $4, 7
lui $4, 0
mflo $2
mtlo $4
TAG495:
mtlo $2
bltz $2, TAG496
srav $3, $2, $2
beq $2, $3, TAG496
TAG496:
mtlo $3
mult $3, $3
lb $1, 0($3)
mflo $2
TAG497:
mfhi $2
mthi $2
mflo $1
lui $2, 9
TAG498:
sll $0, $0, 0
lw $2, 0($3)
and $1, $3, $2
lw $2, 0($3)
TAG499:
lh $3, 0($2)
blez $2, TAG500
or $1, $2, $3
beq $1, $2, TAG500
TAG500:
addu $2, $1, $1
lw $3, 0($2)
slti $3, $1, 8
sltu $1, $3, $1
TAG501:
bne $1, $1, TAG502
sltiu $4, $1, 1
sll $3, $1, 0
lb $4, 0($3)
TAG502:
bltz $4, TAG503
lh $1, 0($4)
mthi $1
sub $1, $1, $4
TAG503:
lui $1, 5
sll $0, $0, 0
sra $3, $4, 4
mflo $3
TAG504:
beq $3, $3, TAG505
addiu $1, $3, 11
lb $2, 0($3)
lui $1, 3
TAG505:
lui $3, 2
bne $1, $1, TAG506
mfhi $1
nor $2, $1, $1
TAG506:
sll $0, $0, 0
mult $2, $3
lui $3, 3
srav $4, $3, $3
TAG507:
lui $2, 1
sll $0, $0, 0
blez $4, TAG508
lui $1, 10
TAG508:
sll $0, $0, 0
lui $2, 15
sll $0, $0, 0
lui $3, 10
TAG509:
slti $1, $3, 10
lhu $4, 0($1)
div $1, $3
mfhi $1
TAG510:
sh $1, 0($1)
bne $1, $1, TAG511
multu $1, $1
slti $1, $1, 14
TAG511:
subu $2, $1, $1
bne $2, $1, TAG512
addiu $3, $2, 0
mtlo $2
TAG512:
beq $3, $3, TAG513
lui $1, 12
sw $1, 0($3)
nor $4, $1, $3
TAG513:
mult $4, $4
sb $4, 0($4)
subu $3, $4, $4
bltz $4, TAG514
TAG514:
mult $3, $3
mtlo $3
multu $3, $3
mthi $3
TAG515:
multu $3, $3
lb $2, 0($3)
lui $4, 14
xori $3, $4, 13
TAG516:
sll $0, $0, 0
addu $4, $3, $3
mfhi $3
bgtz $3, TAG517
TAG517:
lh $2, 0($3)
blez $2, TAG518
sb $2, 0($2)
beq $2, $3, TAG518
TAG518:
sub $2, $2, $2
bltz $2, TAG519
and $1, $2, $2
sb $2, 0($1)
TAG519:
mthi $1
sw $1, 0($1)
sb $1, 0($1)
slt $4, $1, $1
TAG520:
beq $4, $4, TAG521
mtlo $4
mfhi $2
beq $4, $4, TAG521
TAG521:
addi $2, $2, 1
mthi $2
div $2, $2
bne $2, $2, TAG522
TAG522:
lbu $4, 0($2)
nor $2, $2, $2
lhu $1, 2($2)
or $1, $2, $2
TAG523:
sb $1, 2($1)
ori $1, $1, 10
mthi $1
mflo $4
TAG524:
sb $4, 0($4)
lbu $3, 0($4)
beq $4, $3, TAG525
lui $1, 14
TAG525:
beq $1, $1, TAG526
sll $0, $0, 0
sb $1, 0($1)
mtlo $1
TAG526:
mflo $2
sll $0, $0, 0
beq $2, $1, TAG527
sb $4, 0($4)
TAG527:
mfhi $3
ori $3, $3, 13
mflo $2
lbu $3, 0($2)
TAG528:
mult $3, $3
xor $3, $3, $3
mult $3, $3
mthi $3
TAG529:
multu $3, $3
lui $4, 12
mflo $4
mtlo $4
TAG530:
beq $4, $4, TAG531
lbu $3, 0($4)
mflo $2
bltz $2, TAG531
TAG531:
sb $2, 0($2)
bltz $2, TAG532
lui $3, 15
divu $3, $3
TAG532:
lui $2, 2
sll $0, $0, 0
bgez $2, TAG533
sll $0, $0, 0
TAG533:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
nor $4, $3, $1
TAG534:
mtlo $4
mflo $1
sll $0, $0, 0
mfhi $1
TAG535:
slti $3, $1, 14
mthi $1
mtlo $1
lb $4, 0($3)
TAG536:
lui $3, 3
mfhi $2
blez $3, TAG537
lb $1, 0($2)
TAG537:
bltz $1, TAG538
lb $2, 2($1)
mthi $2
sltu $4, $1, $2
TAG538:
mflo $3
xori $2, $4, 11
bne $3, $3, TAG539
sb $3, 0($3)
TAG539:
sra $4, $2, 6
div $4, $2
lb $1, 0($4)
addu $1, $1, $2
TAG540:
srlv $4, $1, $1
mult $4, $4
mfhi $3
mult $3, $3
TAG541:
multu $3, $3
mfhi $4
srl $2, $4, 8
lui $3, 4
TAG542:
mfhi $2
multu $2, $2
sb $2, 0($2)
lh $2, 0($2)
TAG543:
sll $0, $0, 0
bltz $2, TAG544
mflo $2
mthi $2
TAG544:
lw $1, 0($2)
bgez $2, TAG545
subu $4, $1, $2
mflo $1
TAG545:
lui $1, 8
mtlo $1
bgtz $1, TAG546
divu $1, $1
TAG546:
mthi $1
div $1, $1
sll $0, $0, 0
blez $1, TAG547
TAG547:
mthi $1
mtlo $1
sll $0, $0, 0
subu $4, $1, $1
TAG548:
multu $4, $4
blez $4, TAG549
slti $2, $4, 13
bne $4, $2, TAG549
TAG549:
addu $3, $2, $2
lb $4, 0($2)
beq $4, $3, TAG550
multu $2, $3
TAG550:
bgtz $4, TAG551
xori $3, $4, 9
lui $2, 8
sh $3, 0($3)
TAG551:
lb $2, 0($2)
bne $2, $2, TAG552
lui $1, 12
lui $2, 0
TAG552:
mult $2, $2
blez $2, TAG553
srl $1, $2, 6
sw $1, 0($2)
TAG553:
mult $1, $1
multu $1, $1
mflo $3
mflo $2
TAG554:
andi $3, $2, 4
beq $3, $3, TAG555
lw $2, 0($3)
srl $4, $3, 14
TAG555:
mflo $3
mtlo $4
divu $4, $4
sh $3, 0($3)
TAG556:
lw $1, 0($3)
mult $1, $1
multu $3, $1
mfhi $3
TAG557:
mflo $3
bltz $3, TAG558
xor $4, $3, $3
lui $4, 9
TAG558:
bgtz $4, TAG559
mfhi $4
or $4, $4, $4
mult $4, $4
TAG559:
beq $4, $4, TAG560
addu $2, $4, $4
beq $2, $4, TAG560
mflo $1
TAG560:
mthi $1
bne $1, $1, TAG561
sb $1, 0($1)
mthi $1
TAG561:
mtlo $1
lui $4, 12
or $2, $4, $4
bne $1, $1, TAG562
TAG562:
lui $3, 9
sll $0, $0, 0
beq $3, $2, TAG563
lui $1, 7
TAG563:
srav $2, $1, $1
sra $3, $1, 13
sll $4, $3, 6
sll $0, $0, 0
TAG564:
sll $4, $4, 8
lui $3, 15
beq $3, $4, TAG565
sll $0, $0, 0
TAG565:
bgtz $3, TAG566
addiu $2, $3, 9
lw $4, 0($3)
lui $4, 2
TAG566:
sllv $1, $4, $4
sll $0, $0, 0
mtlo $4
lui $4, 13
TAG567:
andi $1, $4, 12
sll $0, $0, 0
ori $2, $4, 7
mthi $1
TAG568:
divu $2, $2
mflo $1
bgtz $2, TAG569
multu $2, $2
TAG569:
multu $1, $1
sb $1, 0($1)
sltiu $3, $1, 10
ori $2, $3, 6
TAG570:
lui $3, 14
or $1, $2, $2
mult $1, $1
mflo $2
TAG571:
subu $3, $2, $2
mflo $3
mfhi $3
sw $3, 0($3)
TAG572:
beq $3, $3, TAG573
lb $4, 0($3)
divu $3, $4
lui $4, 12
TAG573:
lh $1, 0($4)
or $3, $1, $4
mtlo $1
mflo $1
TAG574:
mfhi $2
subu $1, $2, $1
mtlo $1
sb $2, 0($2)
TAG575:
beq $1, $1, TAG576
mthi $1
bgez $1, TAG576
lb $4, 0($1)
TAG576:
or $3, $4, $4
bne $4, $4, TAG577
mfhi $1
mthi $1
TAG577:
mtlo $1
lb $3, 0($1)
bltz $1, TAG578
lhu $4, 0($3)
TAG578:
bgez $4, TAG579
srlv $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG579
TAG579:
srav $3, $4, $4
sra $2, $3, 11
sh $3, 0($4)
subu $1, $4, $2
TAG580:
mtlo $1
mthi $1
sb $1, 0($1)
lui $4, 5
TAG581:
sll $0, $0, 0
beq $4, $4, TAG582
lui $4, 8
lui $4, 6
TAG582:
lui $4, 15
or $4, $4, $4
mfhi $1
mult $4, $4
TAG583:
beq $1, $1, TAG584
mfhi $2
mfhi $2
sra $3, $1, 7
TAG584:
lhu $1, 0($3)
lui $1, 0
lui $2, 5
mflo $4
TAG585:
mfhi $1
sltiu $1, $1, 14
lhu $3, 0($1)
and $1, $1, $1
TAG586:
lh $4, 0($1)
lui $1, 6
mult $1, $1
lui $1, 9
TAG587:
sll $0, $0, 0
lui $4, 12
sll $0, $0, 0
div $1, $4
TAG588:
blez $4, TAG589
addu $2, $4, $4
beq $4, $4, TAG589
slti $3, $2, 2
TAG589:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
lw $1, 0($3)
TAG590:
sub $1, $1, $1
lui $2, 8
bgez $2, TAG591
subu $3, $1, $1
TAG591:
mthi $3
mthi $3
bltz $3, TAG592
mtlo $3
TAG592:
lui $3, 14
blez $3, TAG593
sll $0, $0, 0
sll $0, $0, 0
TAG593:
subu $1, $2, $2
sll $0, $0, 0
sw $1, 0($1)
sh $1, 0($1)
TAG594:
lbu $4, 0($1)
sw $1, 0($1)
add $1, $1, $4
mult $1, $4
TAG595:
mflo $1
mult $1, $1
slti $1, $1, 13
sllv $3, $1, $1
TAG596:
lhu $2, 0($3)
bgez $3, TAG597
mthi $3
sub $1, $3, $3
TAG597:
mflo $4
sb $4, 0($4)
bne $1, $4, TAG598
sltiu $2, $4, 10
TAG598:
lb $4, 0($2)
mfhi $1
lui $1, 10
lh $2, 0($4)
TAG599:
bgtz $2, TAG600
lh $1, 0($2)
lhu $1, 0($1)
srl $2, $2, 14
TAG600:
sub $2, $2, $2
lhu $1, 0($2)
lui $3, 11
mflo $4
TAG601:
bgtz $4, TAG602
sh $4, 0($4)
bgez $4, TAG602
sh $4, 0($4)
TAG602:
beq $4, $4, TAG603
ori $4, $4, 6
lui $1, 15
lui $1, 14
TAG603:
sw $1, 0($1)
slti $1, $1, 3
lb $2, 0($1)
mtlo $2
TAG604:
mflo $4
ori $4, $4, 8
lbu $2, 0($4)
andi $2, $2, 8
TAG605:
bgez $2, TAG606
mflo $4
lui $4, 6
bgtz $4, TAG606
TAG606:
lh $2, 0($4)
blez $2, TAG607
mult $4, $2
ori $2, $2, 0
TAG607:
sltiu $1, $2, 6
sltu $4, $2, $2
sh $4, 0($4)
lui $3, 0
TAG608:
sw $3, 0($3)
mfhi $4
xor $1, $4, $3
mflo $3
TAG609:
sh $3, 0($3)
srav $3, $3, $3
lui $3, 2
lui $4, 5
TAG610:
mtlo $4
bltz $4, TAG611
mtlo $4
beq $4, $4, TAG611
TAG611:
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG612
lui $2, 6
TAG612:
srlv $1, $2, $2
lui $4, 15
addu $4, $2, $4
blez $4, TAG613
TAG613:
div $4, $4
sll $0, $0, 0
blez $4, TAG614
srlv $2, $4, $4
TAG614:
sll $0, $0, 0
bgez $4, TAG615
lui $2, 13
lui $4, 15
TAG615:
lui $1, 14
sll $3, $4, 14
sll $0, $0, 0
beq $3, $4, TAG616
TAG616:
addu $2, $3, $3
sll $0, $0, 0
multu $2, $2
multu $3, $2
TAG617:
bne $2, $2, TAG618
or $2, $2, $2
bgez $2, TAG618
lui $2, 0
TAG618:
lui $4, 13
subu $1, $4, $4
sra $1, $4, 8
lui $1, 14
TAG619:
mthi $1
mtlo $1
beq $1, $1, TAG620
mtlo $1
TAG620:
mthi $1
mfhi $1
divu $1, $1
mthi $1
TAG621:
sll $0, $0, 0
beq $1, $1, TAG622
mtlo $1
bne $1, $1, TAG622
TAG622:
sll $1, $1, 10
bgtz $1, TAG623
sll $0, $0, 0
bne $1, $1, TAG623
TAG623:
addu $2, $1, $1
multu $2, $1
subu $4, $2, $2
lui $4, 3
TAG624:
bgtz $4, TAG625
subu $4, $4, $4
sll $1, $4, 15
mtlo $1
TAG625:
sll $0, $0, 0
sltiu $1, $2, 1
srlv $3, $1, $1
mflo $4
TAG626:
lui $3, 9
bgez $4, TAG627
mtlo $4
lui $2, 12
TAG627:
xor $1, $2, $2
sltu $1, $2, $2
lbu $4, 0($1)
bne $4, $1, TAG628
TAG628:
sb $4, 0($4)
lbu $4, 0($4)
addu $3, $4, $4
lui $2, 2
TAG629:
addu $2, $2, $2
mthi $2
multu $2, $2
slt $2, $2, $2
TAG630:
sb $2, 0($2)
multu $2, $2
sltiu $1, $2, 1
sb $1, 0($2)
TAG631:
mult $1, $1
sb $1, 0($1)
lb $3, 0($1)
blez $3, TAG632
TAG632:
sb $3, 0($3)
lbu $2, 0($3)
lbu $1, 0($3)
sra $2, $1, 9
TAG633:
lui $2, 1
mthi $2
subu $2, $2, $2
beq $2, $2, TAG634
TAG634:
sra $4, $2, 2
ori $4, $4, 11
subu $1, $2, $4
beq $1, $2, TAG635
TAG635:
mflo $3
div $1, $3
bltz $1, TAG636
lui $4, 9
TAG636:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG637:
sll $0, $0, 0
mflo $1
blez $4, TAG638
mthi $4
TAG638:
lui $3, 15
mtlo $3
bne $3, $1, TAG639
lui $1, 9
TAG639:
mfhi $3
lui $1, 15
addu $2, $3, $1
bgtz $3, TAG640
TAG640:
mthi $2
mthi $2
bltz $2, TAG641
mfhi $2
TAG641:
xori $3, $2, 0
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG642:
and $1, $2, $2
lui $1, 3
multu $2, $1
sll $0, $0, 0
TAG643:
addiu $4, $1, 4
sll $0, $0, 0
xor $3, $1, $4
andi $4, $1, 7
TAG644:
multu $4, $4
mtlo $4
mflo $1
and $1, $1, $1
TAG645:
add $1, $1, $1
slti $4, $1, 1
mtlo $1
sw $1, 0($1)
TAG646:
mult $4, $4
div $4, $4
beq $4, $4, TAG647
lui $3, 12
TAG647:
mfhi $3
mthi $3
mtlo $3
mthi $3
TAG648:
mtlo $3
lui $4, 3
sra $4, $3, 7
beq $4, $4, TAG649
TAG649:
lbu $1, 0($4)
bgez $1, TAG650
mflo $2
lui $1, 6
TAG650:
mtlo $1
lui $3, 6
srl $2, $3, 10
mtlo $2
TAG651:
xori $2, $2, 8
lhu $1, -392($2)
bltz $2, TAG652
mflo $2
TAG652:
bltz $2, TAG653
mtlo $2
addiu $3, $2, 12
sh $2, -396($3)
TAG653:
sll $0, $0, 0
bne $2, $2, TAG654
xor $3, $3, $3
addi $3, $3, 7
TAG654:
sll $3, $3, 14
srav $3, $3, $3
beq $3, $3, TAG655
mthi $3
TAG655:
nor $3, $3, $3
sll $0, $0, 0
bne $3, $3, TAG656
mflo $2
TAG656:
blez $2, TAG657
ori $4, $2, 13
lui $3, 5
mflo $2
TAG657:
lui $3, 10
bltz $3, TAG658
sll $0, $0, 0
addu $2, $2, $2
TAG658:
mtlo $2
mult $2, $2
divu $2, $2
sb $2, -768($2)
TAG659:
addu $4, $2, $2
mtlo $4
xor $1, $4, $4
subu $4, $1, $4
TAG660:
sll $0, $0, 0
addiu $4, $4, 1
xor $3, $4, $4
lui $2, 5
TAG661:
sll $0, $0, 0
mfhi $1
mfhi $2
lw $3, 0($2)
TAG662:
bltz $3, TAG663
div $3, $3
andi $3, $3, 6
srlv $4, $3, $3
TAG663:
lh $2, 0($4)
mfhi $4
divu $2, $2
addu $4, $4, $4
TAG664:
or $2, $4, $4
beq $2, $2, TAG665
addi $1, $4, 9
addi $1, $1, 6
TAG665:
mult $1, $1
sb $1, 0($1)
mthi $1
lbu $1, 0($1)
TAG666:
beq $1, $1, TAG667
lbu $1, 0($1)
slt $2, $1, $1
sub $4, $1, $1
TAG667:
mthi $4
lw $1, 0($4)
mfhi $4
mflo $4
TAG668:
sb $4, 0($4)
mflo $2
lbu $1, 0($2)
sb $2, 0($1)
TAG669:
srl $4, $1, 5
mtlo $1
bne $1, $1, TAG670
lhu $3, 0($4)
TAG670:
multu $3, $3
mtlo $3
mflo $1
lui $3, 8
TAG671:
mthi $3
mult $3, $3
lui $2, 9
sll $0, $0, 0
TAG672:
mfhi $3
mflo $3
mflo $2
bltz $3, TAG673
TAG673:
sll $3, $2, 0
beq $3, $2, TAG674
ori $3, $2, 10
sw $3, 0($3)
TAG674:
xor $4, $3, $3
mtlo $3
sltu $3, $3, $4
xori $3, $3, 15
TAG675:
addiu $2, $3, 10
bne $3, $2, TAG676
srav $1, $3, $2
div $1, $2
TAG676:
mflo $1
beq $1, $1, TAG677
srl $2, $1, 8
addi $1, $1, 1
TAG677:
lhu $3, 0($1)
mtlo $3
sltiu $3, $3, 2
sw $1, 0($3)
TAG678:
lui $3, 14
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG679:
mult $2, $2
sltu $3, $2, $2
xori $1, $3, 8
mult $2, $3
TAG680:
andi $4, $1, 6
sb $1, 0($1)
bgez $4, TAG681
sb $4, 0($4)
TAG681:
mfhi $2
mult $2, $2
lb $3, 0($2)
lbu $3, 0($4)
TAG682:
bltz $3, TAG683
sb $3, 0($3)
sllv $4, $3, $3
sb $4, 0($3)
TAG683:
multu $4, $4
lui $4, 1
sll $0, $0, 0
beq $4, $4, TAG684
TAG684:
sra $2, $4, 7
lbu $2, -512($2)
blez $4, TAG685
mflo $4
TAG685:
lhu $4, 0($4)
sllv $1, $4, $4
mult $4, $1
addi $1, $4, 9
TAG686:
lb $4, 0($1)
div $4, $1
sll $2, $4, 15
mtlo $2
TAG687:
sll $0, $0, 0
mtlo $2
addiu $3, $2, 7
bne $3, $3, TAG688
TAG688:
divu $3, $3
divu $3, $3
lui $3, 5
subu $4, $3, $3
TAG689:
addiu $4, $4, 11
addiu $2, $4, 12
addu $2, $2, $4
mthi $4
TAG690:
lb $4, 0($2)
mthi $4
mfhi $3
bne $4, $2, TAG691
TAG691:
nor $4, $3, $3
lui $1, 0
xor $1, $4, $4
bgez $1, TAG692
TAG692:
and $2, $1, $1
sw $1, 0($2)
beq $1, $2, TAG693
lui $4, 2
TAG693:
mflo $2
mthi $4
beq $2, $2, TAG694
div $2, $4
TAG694:
bgez $2, TAG695
sb $2, 0($2)
mfhi $2
sw $2, 0($2)
TAG695:
mthi $2
sltu $3, $2, $2
or $3, $2, $2
bgtz $2, TAG696
TAG696:
lbu $3, 0($3)
and $1, $3, $3
beq $3, $3, TAG697
lbu $4, 0($1)
TAG697:
nor $2, $4, $4
lui $4, 10
beq $4, $2, TAG698
srav $1, $4, $4
TAG698:
sll $0, $0, 0
lui $2, 2
lui $4, 9
bgez $1, TAG699
TAG699:
sll $0, $0, 0
nor $4, $4, $4
mthi $4
sll $0, $0, 0
TAG700:
sll $0, $0, 0
div $3, $3
multu $3, $3
lui $3, 13
TAG701:
bne $3, $3, TAG702
mfhi $3
mfhi $2
bne $3, $3, TAG702
TAG702:
mflo $4
srav $2, $2, $4
mtlo $2
lui $1, 2
TAG703:
div $1, $1
mthi $1
addiu $2, $1, 3
sll $0, $0, 0
TAG704:
bne $3, $3, TAG705
mfhi $3
subu $4, $3, $3
sltu $4, $3, $3
TAG705:
slt $1, $4, $4
mult $1, $4
sra $2, $1, 1
sb $2, 0($1)
TAG706:
bgez $2, TAG707
sltiu $1, $2, 14
lui $3, 15
mflo $3
TAG707:
mfhi $2
multu $3, $2
mflo $3
mult $3, $3
TAG708:
bgez $3, TAG709
sub $1, $3, $3
or $3, $3, $1
mthi $3
TAG709:
sb $3, 0($3)
sllv $2, $3, $3
sll $3, $2, 8
multu $3, $2
TAG710:
mflo $1
multu $3, $1
multu $1, $1
sll $3, $1, 11
TAG711:
bgtz $3, TAG712
lui $3, 7
sll $4, $3, 12
sll $0, $0, 0
TAG712:
lui $3, 3
beq $3, $3, TAG713
mthi $4
mflo $1
TAG713:
sh $1, 0($1)
lui $4, 4
sh $1, 0($1)
addi $2, $1, 6
TAG714:
bne $2, $2, TAG715
lhu $2, 0($2)
addu $1, $2, $2
mthi $2
TAG715:
xor $3, $1, $1
sw $1, 0($3)
ori $3, $1, 4
mtlo $3
TAG716:
lbu $2, 0($3)
divu $2, $3
mflo $1
mthi $1
TAG717:
lb $3, 0($1)
srl $2, $1, 13
lui $3, 8
mfhi $2
TAG718:
slti $3, $2, 3
sb $3, 0($2)
sb $3, 0($2)
div $2, $3
TAG719:
lb $3, 0($3)
mthi $3
lui $1, 14
mthi $1
TAG720:
xori $4, $1, 9
div $4, $4
mflo $4
beq $4, $1, TAG721
TAG721:
lbu $1, 0($4)
mflo $4
lb $4, 0($4)
sb $4, 0($4)
TAG722:
sb $4, 0($4)
mflo $3
lb $2, 0($3)
multu $3, $2
TAG723:
xor $3, $2, $2
sra $2, $2, 8
lbu $4, 0($2)
and $1, $3, $3
TAG724:
lui $1, 13
mtlo $1
sll $0, $0, 0
multu $1, $2
TAG725:
sltiu $4, $2, 4
addi $4, $2, 13
srlv $4, $2, $2
lui $3, 15
TAG726:
srl $2, $3, 8
lui $4, 3
bgez $4, TAG727
sll $0, $0, 0
TAG727:
mfhi $3
bne $4, $3, TAG728
mtlo $3
nor $4, $3, $3
TAG728:
beq $4, $4, TAG729
sll $0, $0, 0
slt $3, $2, $4
sw $3, 0($2)
TAG729:
sltiu $3, $3, 2
mflo $4
bgez $3, TAG730
srav $1, $3, $3
TAG730:
sw $1, 0($1)
lw $4, 0($1)
sw $4, 0($1)
lbu $3, 0($1)
TAG731:
mthi $3
lui $4, 1
multu $3, $3
mflo $4
TAG732:
sub $4, $4, $4
blez $4, TAG733
lh $1, 0($4)
mtlo $1
TAG733:
mfhi $4
mthi $4
addu $3, $4, $4
sb $1, 0($4)
TAG734:
lbu $1, 0($3)
mtlo $3
multu $1, $1
mfhi $2
TAG735:
lhu $2, 0($2)
mtlo $2
mfhi $1
sltiu $4, $1, 6
TAG736:
mtlo $4
lbu $3, 0($4)
mthi $4
lui $4, 5
TAG737:
lui $1, 5
lui $1, 2
beq $1, $1, TAG738
lui $2, 14
TAG738:
mtlo $2
mtlo $2
srl $2, $2, 6
bltz $2, TAG739
TAG739:
sb $2, -14336($2)
divu $2, $2
lw $3, -14336($2)
mfhi $3
TAG740:
srl $3, $3, 12
sllv $1, $3, $3
beq $1, $3, TAG741
mflo $2
TAG741:
lui $2, 13
mtlo $2
beq $2, $2, TAG742
mtlo $2
TAG742:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
sll $0, $0, 0
TAG743:
xori $3, $4, 5
addiu $4, $3, 6
sll $0, $0, 0
mthi $4
TAG744:
sll $0, $0, 0
mtlo $4
lui $4, 7
bne $4, $4, TAG745
TAG745:
mthi $4
beq $4, $4, TAG746
sll $0, $0, 0
sb $4, 0($4)
TAG746:
mtlo $1
lui $1, 0
srl $2, $1, 1
mtlo $1
TAG747:
mflo $3
lui $2, 15
addiu $1, $3, 2
beq $2, $2, TAG748
TAG748:
lui $3, 0
beq $1, $3, TAG749
lui $4, 8
beq $4, $4, TAG749
TAG749:
sll $0, $0, 0
div $4, $4
lui $1, 12
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop