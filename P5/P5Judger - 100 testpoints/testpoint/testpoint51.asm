ori $1, $0, 0
ori $2, $0, 13
ori $3, $0, 6
ori $4, $0, 14
sw $2, 0($0)
sw $4, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $2, 44($0)
sw $1, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $2, 124($0)
divu $2, $2
lui $1, 6
lb $2, 0($2)
bne $1, $2, TAG1
TAG1:
lh $1, 0($2)
sltu $2, $2, $1
srl $1, $2, 1
mult $2, $2
TAG2:
slt $2, $1, $1
lh $4, 0($2)
mtlo $2
mfhi $1
TAG3:
beq $1, $1, TAG4
mflo $2
slti $1, $1, 13
sh $2, 0($1)
TAG4:
multu $1, $1
lui $3, 7
mtlo $1
bltz $3, TAG5
TAG5:
mthi $3
or $1, $3, $3
mfhi $4
sltiu $1, $1, 3
TAG6:
sb $1, 0($1)
bgez $1, TAG7
lui $1, 12
lw $1, 0($1)
TAG7:
sll $0, $0, 0
lui $1, 10
subu $4, $1, $1
bgtz $1, TAG8
TAG8:
sh $4, 0($4)
bne $4, $4, TAG9
lui $3, 15
sll $0, $0, 0
TAG9:
mtlo $3
beq $3, $3, TAG10
sll $0, $0, 0
mfhi $2
TAG10:
mflo $4
lw $2, 0($2)
srlv $4, $2, $2
bgtz $2, TAG11
TAG11:
lui $1, 5
xor $2, $4, $1
mtlo $2
nor $3, $1, $1
TAG12:
sll $0, $0, 0
mfhi $1
bltz $1, TAG13
multu $1, $3
TAG13:
addu $2, $1, $1
lui $1, 2
mfhi $2
mthi $2
TAG14:
sll $0, $0, 0
bne $2, $2, TAG15
sll $0, $0, 0
bgtz $2, TAG15
TAG15:
sll $0, $0, 0
addiu $1, $2, 8
mthi $1
bgez $1, TAG16
TAG16:
srav $4, $1, $1
bgez $4, TAG17
lui $4, 0
xori $4, $1, 11
TAG17:
multu $4, $4
blez $4, TAG18
sw $4, 0($4)
sh $4, 0($4)
TAG18:
mtlo $4
lui $1, 7
sb $4, 0($4)
mtlo $4
TAG19:
sll $0, $0, 0
blez $1, TAG20
divu $1, $1
nor $3, $3, $1
TAG20:
mtlo $3
multu $3, $3
mthi $3
xor $4, $3, $3
TAG21:
beq $4, $4, TAG22
add $1, $4, $4
div $4, $4
lbu $3, 0($4)
TAG22:
andi $4, $3, 10
sltiu $1, $4, 13
mtlo $1
sb $1, 0($1)
TAG23:
srav $1, $1, $1
blez $1, TAG24
addu $2, $1, $1
mthi $1
TAG24:
blez $2, TAG25
mtlo $2
bne $2, $2, TAG25
lh $2, 0($2)
TAG25:
blez $2, TAG26
lui $4, 2
mtlo $4
mfhi $1
TAG26:
lui $4, 10
beq $4, $1, TAG27
sh $4, 0($1)
blez $1, TAG27
TAG27:
div $4, $4
nor $2, $4, $4
divu $4, $4
sll $0, $0, 0
TAG28:
sh $1, 0($1)
multu $1, $1
addiu $3, $1, 3
slti $4, $3, 7
TAG29:
mflo $4
blez $4, TAG30
sh $4, 0($4)
ori $4, $4, 3
TAG30:
lh $1, 0($4)
mtlo $1
lui $1, 1
bltz $1, TAG31
TAG31:
sll $0, $0, 0
bltz $1, TAG32
mthi $1
mflo $1
TAG32:
mult $1, $1
mtlo $1
slt $2, $1, $1
mthi $2
TAG33:
mthi $2
beq $2, $2, TAG34
lui $1, 0
lui $2, 5
TAG34:
xor $1, $2, $2
mflo $3
sw $2, 0($2)
sb $1, 0($3)
TAG35:
bne $3, $3, TAG36
sb $3, 0($3)
add $2, $3, $3
multu $2, $2
TAG36:
sra $3, $2, 15
blez $3, TAG37
and $1, $2, $3
sra $2, $3, 13
TAG37:
mult $2, $2
sb $2, 0($2)
blez $2, TAG38
mthi $2
TAG38:
lh $1, 0($2)
lui $2, 15
mfhi $1
mflo $4
TAG39:
lui $3, 10
nor $3, $3, $3
bne $3, $4, TAG40
sltu $3, $4, $3
TAG40:
div $3, $3
beq $3, $3, TAG41
sb $3, 0($3)
lb $2, 0($3)
TAG41:
mfhi $4
blez $4, TAG42
mthi $2
beq $2, $2, TAG42
TAG42:
lbu $1, 0($4)
sra $1, $4, 11
mtlo $1
mtlo $4
TAG43:
lh $3, 0($1)
bltz $3, TAG44
mthi $1
sw $3, -256($3)
TAG44:
beq $3, $3, TAG45
lui $4, 15
sub $1, $3, $4
srlv $3, $4, $1
TAG45:
sll $0, $0, 0
mthi $3
sw $3, -256($3)
beq $3, $3, TAG46
TAG46:
multu $3, $3
sw $3, -256($3)
bne $3, $3, TAG47
mthi $3
TAG47:
div $3, $3
mthi $3
bne $3, $3, TAG48
mfhi $3
TAG48:
div $3, $3
bne $3, $3, TAG49
sw $3, -256($3)
mtlo $3
TAG49:
sw $3, -256($3)
bne $3, $3, TAG50
lui $3, 3
sll $0, $0, 0
TAG50:
mthi $2
sll $0, $0, 0
mthi $2
lui $2, 7
TAG51:
bgez $2, TAG52
sll $0, $0, 0
addiu $1, $2, 3
addiu $1, $1, 13
TAG52:
sw $1, 0($1)
addiu $2, $1, 3
lw $1, 0($1)
beq $1, $1, TAG53
TAG53:
lui $2, 14
mult $1, $2
lh $4, 0($1)
bgez $1, TAG54
TAG54:
addu $4, $4, $4
multu $4, $4
mult $4, $4
add $2, $4, $4
TAG55:
sltu $3, $2, $2
sllv $3, $2, $2
lhu $3, 0($2)
bltz $3, TAG56
TAG56:
sb $3, 0($3)
mult $3, $3
lui $1, 5
lui $3, 4
TAG57:
sll $4, $3, 15
lui $4, 0
sh $4, 0($4)
mtlo $4
TAG58:
lui $4, 15
srl $4, $4, 9
lui $4, 10
mflo $1
TAG59:
bltz $1, TAG60
and $3, $1, $1
lw $1, 0($1)
bne $1, $1, TAG60
TAG60:
mflo $1
beq $1, $1, TAG61
sb $1, 0($1)
divu $1, $1
TAG61:
lh $4, 0($1)
multu $4, $4
sw $1, 0($1)
lbu $1, 0($4)
TAG62:
mthi $1
addi $4, $1, 13
and $4, $4, $1
bgez $4, TAG63
TAG63:
srl $4, $4, 1
mflo $3
multu $3, $4
mult $4, $4
TAG64:
blez $3, TAG65
add $2, $3, $3
bgtz $2, TAG65
multu $3, $3
TAG65:
mult $2, $2
lui $2, 10
sll $0, $0, 0
sll $0, $0, 0
TAG66:
lui $2, 0
mtlo $2
beq $2, $2, TAG67
sb $2, 0($2)
TAG67:
lb $4, 0($2)
lui $3, 3
sll $0, $0, 0
mfhi $1
TAG68:
bne $1, $1, TAG69
mthi $1
lbu $2, 0($1)
blez $2, TAG69
TAG69:
srav $2, $2, $2
lw $2, 0($2)
bgez $2, TAG70
lui $2, 0
TAG70:
mult $2, $2
lui $1, 9
bgez $1, TAG71
mtlo $2
TAG71:
bgtz $1, TAG72
addiu $4, $1, 14
sw $1, 0($1)
sll $3, $1, 6
TAG72:
srl $4, $3, 15
lhu $4, 0($4)
sll $3, $4, 2
xor $1, $3, $3
TAG73:
blez $1, TAG74
lui $3, 15
sb $3, 0($3)
sra $1, $1, 8
TAG74:
sh $1, 0($1)
bgtz $1, TAG75
sb $1, 0($1)
mtlo $1
TAG75:
xor $2, $1, $1
lui $4, 8
mflo $1
bgtz $1, TAG76
TAG76:
mflo $1
sltiu $1, $1, 11
mfhi $3
lbu $4, 0($1)
TAG77:
multu $4, $4
mult $4, $4
mfhi $4
blez $4, TAG78
TAG78:
mtlo $4
sra $3, $4, 11
lhu $3, 0($4)
sb $3, 0($4)
TAG79:
bne $3, $3, TAG80
and $1, $3, $3
lui $3, 6
srl $3, $3, 2
TAG80:
sll $2, $3, 4
mult $3, $2
sltu $1, $2, $3
divu $2, $2
TAG81:
sltu $3, $1, $1
slti $4, $1, 11
mult $1, $1
sltu $4, $3, $3
TAG82:
mtlo $4
beq $4, $4, TAG83
sb $4, 0($4)
andi $1, $4, 14
TAG83:
lui $4, 6
mult $4, $1
mthi $4
lui $1, 8
TAG84:
bne $1, $1, TAG85
lui $4, 12
lui $3, 5
mult $1, $1
TAG85:
mthi $3
lui $1, 13
bgtz $1, TAG86
andi $4, $3, 7
TAG86:
mflo $1
sw $1, 0($1)
lw $3, 0($4)
bne $3, $1, TAG87
TAG87:
or $2, $3, $3
mtlo $3
bgtz $3, TAG88
lui $4, 7
TAG88:
divu $4, $4
mult $4, $4
mfhi $2
div $4, $4
TAG89:
addiu $1, $2, 4
mtlo $2
sb $2, 0($2)
subu $2, $2, $2
TAG90:
sb $2, 0($2)
sb $2, 0($2)
lb $1, 0($2)
ori $4, $2, 5
TAG91:
bltz $4, TAG92
slt $1, $4, $4
mfhi $1
mtlo $1
TAG92:
mfhi $4
sb $4, 0($4)
lb $3, 0($1)
sll $4, $3, 3
TAG93:
lui $4, 0
srlv $3, $4, $4
bne $4, $4, TAG94
xori $4, $3, 0
TAG94:
mflo $2
or $3, $4, $2
lui $4, 14
mflo $3
TAG95:
bgtz $3, TAG96
sw $3, 0($3)
bgtz $3, TAG96
sra $2, $3, 9
TAG96:
lb $2, 0($2)
mfhi $4
bne $2, $2, TAG97
sltiu $4, $4, 9
TAG97:
beq $4, $4, TAG98
lb $4, 0($4)
sh $4, 0($4)
andi $1, $4, 8
TAG98:
addi $3, $1, 2
lh $1, 0($1)
mult $1, $1
sb $3, 0($1)
TAG99:
mtlo $1
ori $1, $1, 8
nor $2, $1, $1
bne $1, $1, TAG100
TAG100:
srav $2, $2, $2
sb $2, 1($2)
mtlo $2
lui $3, 10
TAG101:
mtlo $3
bne $3, $3, TAG102
lui $1, 10
bgez $3, TAG102
TAG102:
multu $1, $1
bgez $1, TAG103
sll $0, $0, 0
lui $4, 6
TAG103:
bltz $4, TAG104
nor $2, $4, $4
lui $3, 0
sll $1, $4, 9
TAG104:
slt $4, $1, $1
ori $1, $1, 4
div $1, $1
mult $4, $1
TAG105:
xori $2, $1, 3
srav $3, $2, $2
mthi $3
sh $2, 0($3)
TAG106:
lui $3, 2
mtlo $3
sll $0, $0, 0
mthi $3
TAG107:
sw $4, 0($4)
addiu $2, $4, 12
slt $1, $2, $4
beq $4, $4, TAG108
TAG108:
xori $3, $1, 8
slt $2, $1, $1
mult $1, $2
lui $2, 1
TAG109:
bne $2, $2, TAG110
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
TAG110:
bgtz $4, TAG111
sb $4, 0($4)
bltz $4, TAG111
addu $4, $4, $4
TAG111:
mflo $4
sltu $4, $4, $4
mtlo $4
multu $4, $4
TAG112:
mthi $4
mtlo $4
lui $4, 9
addu $2, $4, $4
TAG113:
mthi $2
beq $2, $2, TAG114
lui $2, 10
sub $2, $2, $2
TAG114:
div $2, $2
beq $2, $2, TAG115
mflo $2
sh $2, 0($2)
TAG115:
mfhi $4
nor $1, $4, $4
lhu $1, 0($4)
bne $1, $1, TAG116
TAG116:
mult $1, $1
mthi $1
lb $1, 0($1)
blez $1, TAG117
TAG117:
mult $1, $1
nor $1, $1, $1
mtlo $1
lhu $3, 1($1)
TAG118:
mflo $1
sh $3, 0($3)
lui $4, 1
mult $4, $4
TAG119:
divu $4, $4
mult $4, $4
xori $1, $4, 4
mthi $1
TAG120:
sll $0, $0, 0
ori $4, $1, 1
lui $4, 10
slt $1, $3, $1
TAG121:
div $1, $1
bne $1, $1, TAG122
xori $2, $1, 4
mtlo $2
TAG122:
mthi $2
bne $2, $2, TAG123
addiu $4, $2, 2
sra $1, $2, 9
TAG123:
mthi $1
beq $1, $1, TAG124
mflo $3
subu $2, $3, $3
TAG124:
subu $3, $2, $2
mthi $3
addu $1, $2, $2
lui $3, 13
TAG125:
divu $3, $3
sllv $1, $3, $3
bne $3, $3, TAG126
mult $1, $3
TAG126:
mflo $4
sltiu $1, $1, 14
srav $1, $4, $1
addi $2, $1, 1
TAG127:
lbu $1, 0($2)
lbu $2, 0($1)
srlv $1, $1, $2
bne $2, $1, TAG128
TAG128:
lui $3, 1
sw $3, 0($1)
mfhi $2
beq $1, $3, TAG129
TAG129:
sh $2, -169($2)
mthi $2
bne $2, $2, TAG130
lui $2, 8
TAG130:
bltz $2, TAG131
sll $0, $0, 0
xor $4, $4, $2
nor $1, $4, $2
TAG131:
mthi $1
beq $1, $1, TAG132
mtlo $1
srlv $4, $1, $1
TAG132:
mfhi $1
beq $4, $4, TAG133
sll $0, $0, 0
sllv $1, $1, $4
TAG133:
bgtz $1, TAG134
slti $3, $1, 4
bltz $1, TAG134
lui $2, 14
TAG134:
subu $3, $2, $2
mfhi $3
lui $2, 12
bgez $3, TAG135
TAG135:
or $3, $2, $2
sll $0, $0, 0
addiu $3, $3, 13
mtlo $3
TAG136:
bne $3, $3, TAG137
sll $0, $0, 0
lui $3, 4
bgtz $3, TAG137
TAG137:
lui $3, 14
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG138:
div $3, $3
lui $1, 5
sll $0, $0, 0
mtlo $3
TAG139:
mfhi $4
divu $4, $3
srlv $3, $4, $4
nor $2, $3, $4
TAG140:
sll $0, $0, 0
nor $4, $2, $2
mflo $1
lw $3, 1($2)
TAG141:
mthi $3
addu $2, $3, $3
sll $0, $0, 0
bgtz $4, TAG142
TAG142:
lui $3, 3
lb $4, 0($4)
divu $4, $3
nor $1, $4, $4
TAG143:
lhu $4, 0($1)
div $4, $1
mthi $1
mfhi $4
TAG144:
lbu $4, 0($4)
mfhi $2
mtlo $4
multu $4, $4
TAG145:
sb $2, 0($2)
mthi $2
mtlo $2
sh $2, 0($2)
TAG146:
mtlo $2
sh $2, 0($2)
slti $3, $2, 7
sll $2, $2, 2
TAG147:
mtlo $2
or $4, $2, $2
lhu $1, -344($2)
mtlo $1
TAG148:
multu $1, $1
lw $1, -169($1)
sll $0, $0, 0
bgtz $1, TAG149
TAG149:
sll $0, $0, 0
beq $1, $1, TAG150
lui $4, 8
sltu $4, $2, $1
TAG150:
nor $4, $4, $4
slti $1, $4, 13
sb $4, 0($1)
lui $2, 1
TAG151:
mult $2, $2
sll $0, $0, 0
addiu $2, $2, 0
lui $4, 12
TAG152:
mthi $4
mtlo $4
mfhi $4
mfhi $3
TAG153:
sllv $4, $3, $3
multu $4, $4
sll $0, $0, 0
mfhi $3
TAG154:
srlv $2, $3, $3
sra $2, $3, 3
mthi $2
lui $1, 0
TAG155:
andi $1, $1, 15
multu $1, $1
lb $1, 0($1)
sb $1, 87($1)
TAG156:
sltiu $1, $1, 1
bgtz $1, TAG157
addu $3, $1, $1
xor $2, $1, $1
TAG157:
addu $2, $2, $2
mult $2, $2
sltiu $4, $2, 10
mthi $2
TAG158:
div $4, $4
mflo $4
lb $1, 0($4)
slti $1, $1, 8
TAG159:
slti $4, $1, 2
srlv $3, $1, $4
sh $1, 0($3)
beq $4, $1, TAG160
TAG160:
sb $3, 0($3)
addu $3, $3, $3
blez $3, TAG161
mtlo $3
TAG161:
mult $3, $3
bltz $3, TAG162
addu $2, $3, $3
mthi $2
TAG162:
mthi $2
beq $2, $2, TAG163
lb $4, 0($2)
sh $4, 0($2)
TAG163:
sub $2, $4, $4
mflo $4
subu $3, $2, $4
bgtz $4, TAG164
TAG164:
lui $3, 15
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
TAG165:
lui $3, 4
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG166:
sh $4, 0($4)
addi $4, $4, 4
mflo $1
mflo $3
TAG167:
beq $3, $3, TAG168
lui $2, 10
multu $3, $3
bgtz $3, TAG168
TAG168:
nor $2, $2, $2
beq $2, $2, TAG169
mflo $4
srav $1, $4, $4
TAG169:
sh $1, 0($1)
lui $1, 12
beq $1, $1, TAG170
sll $0, $0, 0
TAG170:
div $1, $1
mtlo $1
mtlo $1
addu $4, $1, $1
TAG171:
sll $0, $0, 0
nor $4, $4, $3
sw $3, 0($3)
mult $3, $3
TAG172:
lui $2, 4
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
TAG173:
subu $3, $3, $3
mflo $1
sw $3, 0($1)
bne $1, $3, TAG174
TAG174:
subu $4, $1, $1
beq $4, $4, TAG175
srl $4, $1, 2
lui $2, 11
TAG175:
bgtz $2, TAG176
multu $2, $2
sh $2, 0($2)
sw $2, 0($2)
TAG176:
mtlo $2
mfhi $4
lui $4, 0
mflo $3
TAG177:
divu $3, $3
mflo $2
beq $3, $2, TAG178
mtlo $2
TAG178:
sb $2, 0($2)
mfhi $3
sb $3, 0($2)
lui $4, 2
TAG179:
bgtz $4, TAG180
sll $0, $0, 0
sllv $1, $1, $4
lhu $1, 0($1)
TAG180:
beq $1, $1, TAG181
ori $1, $1, 2
lh $2, 0($1)
multu $2, $1
TAG181:
beq $2, $2, TAG182
sb $2, 0($2)
sb $2, 0($2)
beq $2, $2, TAG182
TAG182:
mtlo $2
mtlo $2
mult $2, $2
lui $4, 12
TAG183:
divu $4, $4
mflo $3
mfhi $2
bgez $4, TAG184
TAG184:
lbu $2, 0($2)
bltz $2, TAG185
slti $1, $2, 8
multu $2, $2
TAG185:
divu $1, $1
multu $1, $1
sb $1, 0($1)
mthi $1
TAG186:
mfhi $4
mthi $1
xor $3, $1, $4
lui $3, 4
TAG187:
sll $0, $0, 0
beq $3, $2, TAG188
mflo $1
mtlo $2
TAG188:
sb $1, 0($1)
lb $4, 0($1)
lb $4, 0($1)
multu $1, $4
TAG189:
mflo $4
sb $4, 0($4)
mtlo $4
div $4, $4
TAG190:
slti $1, $4, 8
beq $1, $4, TAG191
lui $3, 11
slt $3, $4, $3
TAG191:
sll $0, $0, 0
beq $4, $4, TAG192
lui $4, 9
beq $4, $4, TAG192
TAG192:
ori $3, $4, 5
sll $0, $0, 0
bne $4, $4, TAG193
sltu $1, $3, $3
TAG193:
lui $3, 3
sh $3, 0($1)
bne $3, $3, TAG194
sltiu $1, $1, 0
TAG194:
lui $2, 6
lui $3, 9
blez $1, TAG195
subu $2, $2, $1
TAG195:
lui $4, 10
bgtz $4, TAG196
lui $1, 0
mtlo $1
TAG196:
lui $2, 3
bgtz $2, TAG197
andi $1, $1, 14
sw $1, 0($1)
TAG197:
lui $4, 9
multu $1, $1
lbu $1, 0($1)
lui $1, 8
TAG198:
bne $1, $1, TAG199
div $1, $1
divu $1, $1
mult $1, $1
TAG199:
lui $2, 7
sll $0, $0, 0
blez $2, TAG200
mtlo $2
TAG200:
andi $2, $2, 1
mult $2, $2
and $2, $2, $2
addu $3, $2, $2
TAG201:
bgez $3, TAG202
mthi $3
srav $2, $3, $3
lui $4, 8
TAG202:
mthi $4
divu $4, $4
lui $1, 3
srl $3, $4, 9
TAG203:
mflo $3
lbu $3, 0($3)
addiu $1, $3, 0
bgtz $3, TAG204
TAG204:
mfhi $3
mult $3, $1
lui $1, 13
mthi $3
TAG205:
ori $3, $1, 7
bltz $1, TAG206
sll $0, $0, 0
bgez $1, TAG206
TAG206:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
sll $0, $0, 0
TAG207:
srlv $4, $3, $3
mfhi $4
sll $0, $0, 0
subu $4, $2, $4
TAG208:
sll $0, $0, 0
ori $1, $4, 0
sll $0, $0, 0
blez $3, TAG209
TAG209:
mflo $4
addu $4, $3, $4
bgez $4, TAG210
sll $0, $0, 0
TAG210:
sb $2, 0($2)
mtlo $2
bltz $2, TAG211
mtlo $2
TAG211:
bne $2, $2, TAG212
lw $2, 0($2)
sb $2, 0($2)
mfhi $3
TAG212:
div $3, $3
sll $0, $0, 0
blez $3, TAG213
sll $0, $0, 0
TAG213:
sll $0, $0, 0
sll $4, $1, 14
mfhi $1
sll $0, $0, 0
TAG214:
divu $3, $3
slt $3, $3, $3
bgtz $3, TAG215
sb $3, 0($3)
TAG215:
addiu $3, $3, 4
bgez $3, TAG216
mtlo $3
sub $3, $3, $3
TAG216:
mflo $2
sh $3, 0($2)
bne $2, $2, TAG217
addiu $3, $2, 0
TAG217:
bgez $3, TAG218
lw $2, 0($3)
lui $3, 8
div $2, $3
TAG218:
sb $3, 0($3)
bgez $3, TAG219
lw $3, 0($3)
addiu $4, $3, 14
TAG219:
lui $4, 11
lui $1, 2
lui $3, 14
sll $0, $0, 0
TAG220:
ori $3, $3, 10
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG221:
beq $2, $2, TAG222
lui $4, 2
addi $1, $2, 5
add $3, $1, $1
TAG222:
sltiu $1, $3, 15
xori $2, $1, 13
mflo $2
sllv $2, $2, $3
TAG223:
sll $3, $2, 14
mthi $2
mult $3, $3
addiu $4, $2, 4
TAG224:
sw $4, -4100($4)
lui $4, 13
mflo $3
mult $3, $3
TAG225:
mthi $3
multu $3, $3
multu $3, $3
mfhi $3
TAG226:
lb $2, 0($3)
sb $2, 0($3)
lui $1, 15
mthi $3
TAG227:
and $1, $1, $1
nor $3, $1, $1
mult $1, $3
mfhi $2
TAG228:
addu $2, $2, $2
mthi $2
sltiu $4, $2, 6
mthi $4
TAG229:
mthi $4
or $2, $4, $4
lw $3, 0($2)
mtlo $4
TAG230:
mtlo $3
lui $4, 6
addiu $1, $4, 14
mult $1, $4
TAG231:
mfhi $1
mthi $1
mflo $3
bgez $1, TAG232
TAG232:
sll $0, $0, 0
blez $3, TAG233
subu $2, $3, $3
sw $3, 0($2)
TAG233:
mthi $2
mflo $2
sll $0, $0, 0
mthi $2
TAG234:
beq $4, $4, TAG235
div $4, $4
lui $4, 4
mfhi $4
TAG235:
subu $1, $4, $4
lui $4, 6
sll $1, $4, 6
beq $4, $1, TAG236
TAG236:
sll $0, $0, 0
xori $1, $1, 15
mult $1, $1
mtlo $1
TAG237:
mfhi $4
srl $2, $4, 11
subu $2, $1, $2
bne $2, $2, TAG238
TAG238:
sltu $4, $2, $2
blez $4, TAG239
mflo $2
lui $3, 10
TAG239:
lui $2, 0
bgtz $3, TAG240
lui $3, 5
addiu $3, $3, 5
TAG240:
lui $3, 2
bne $3, $3, TAG241
mult $3, $3
sll $0, $0, 0
TAG241:
mfhi $4
mtlo $4
lui $4, 0
lh $1, 0($4)
TAG242:
bgez $1, TAG243
sb $1, 0($1)
addi $4, $1, 10
beq $4, $4, TAG243
TAG243:
ori $1, $4, 3
nor $1, $4, $1
mfhi $2
multu $1, $2
TAG244:
lui $4, 4
lbu $3, 0($2)
lui $3, 12
sll $0, $0, 0
TAG245:
beq $3, $3, TAG246
mthi $3
divu $3, $3
addi $4, $3, 9
TAG246:
srav $2, $4, $4
srl $4, $2, 7
mthi $2
lui $3, 2
TAG247:
mtlo $3
divu $3, $3
bne $3, $3, TAG248
divu $3, $3
TAG248:
lui $4, 6
mtlo $3
mtlo $3
lui $3, 14
TAG249:
sll $0, $0, 0
srlv $2, $3, $3
beq $3, $3, TAG250
lui $3, 12
TAG250:
nor $1, $3, $3
mfhi $4
mthi $1
blez $4, TAG251
TAG251:
mflo $3
sb $4, 0($4)
add $2, $4, $4
sll $0, $0, 0
TAG252:
lb $1, 0($2)
mflo $3
lui $2, 13
mflo $2
TAG253:
bne $2, $2, TAG254
mfhi $2
sll $0, $0, 0
mfhi $4
TAG254:
bgez $4, TAG255
multu $4, $4
and $3, $4, $4
sll $0, $0, 0
TAG255:
mult $4, $4
sll $0, $0, 0
xori $2, $4, 10
sll $4, $2, 3
TAG256:
mfhi $4
sw $4, -144($4)
mflo $2
bgez $2, TAG257
TAG257:
mfhi $4
bgtz $2, TAG258
mult $4, $4
slti $1, $2, 3
TAG258:
sll $4, $1, 7
xori $2, $4, 1
lhu $4, 0($1)
ori $3, $4, 10
TAG259:
xor $1, $3, $3
mflo $2
subu $2, $1, $1
mtlo $2
TAG260:
blez $2, TAG261
mtlo $2
lui $3, 6
divu $2, $3
TAG261:
addiu $2, $3, 8
sllv $1, $3, $3
lh $1, -154($3)
lui $4, 15
TAG262:
divu $4, $4
mthi $4
bne $4, $4, TAG263
mfhi $3
TAG263:
mthi $3
sll $0, $0, 0
blez $3, TAG264
xori $1, $2, 10
TAG264:
sltu $1, $1, $1
mthi $1
xor $2, $1, $1
lui $3, 10
TAG265:
slti $4, $3, 10
mtlo $3
mtlo $3
div $3, $3
TAG266:
multu $4, $4
bgtz $4, TAG267
addiu $1, $4, 5
mflo $3
TAG267:
sh $3, 0($3)
beq $3, $3, TAG268
srlv $3, $3, $3
addi $2, $3, 14
TAG268:
mtlo $2
mfhi $4
sw $2, 0($2)
bltz $4, TAG269
TAG269:
mtlo $4
multu $4, $4
mtlo $4
sltu $3, $4, $4
TAG270:
mflo $3
bne $3, $3, TAG271
sh $3, 0($3)
mfhi $4
TAG271:
srav $1, $4, $4
lui $1, 0
multu $4, $1
beq $1, $1, TAG272
TAG272:
sh $1, 0($1)
bne $1, $1, TAG273
sltiu $3, $1, 8
multu $1, $1
TAG273:
divu $3, $3
mflo $3
sb $3, 0($3)
ori $4, $3, 1
TAG274:
mthi $4
mfhi $1
mfhi $3
subu $1, $3, $4
TAG275:
mflo $2
bgtz $2, TAG276
ori $1, $2, 13
mfhi $2
TAG276:
mflo $2
sb $2, 0($2)
beq $2, $2, TAG277
sb $2, 0($2)
TAG277:
sb $2, 0($2)
sllv $2, $2, $2
mtlo $2
lui $2, 2
TAG278:
bltz $2, TAG279
sll $0, $0, 0
srav $3, $2, $1
ori $3, $1, 14
TAG279:
mfhi $3
lb $4, 0($3)
sll $4, $3, 6
lui $3, 0
TAG280:
mfhi $1
lbu $1, 0($1)
blez $1, TAG281
or $3, $1, $3
TAG281:
andi $3, $3, 13
xor $3, $3, $3
mult $3, $3
lui $1, 9
TAG282:
blez $1, TAG283
sll $0, $0, 0
subu $3, $1, $1
lui $1, 3
TAG283:
blez $1, TAG284
lui $2, 3
sll $0, $0, 0
blez $1, TAG284
TAG284:
addu $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG285:
mflo $3
mult $2, $3
sll $0, $0, 0
addu $3, $2, $3
TAG286:
beq $3, $3, TAG287
lui $2, 13
bne $2, $2, TAG287
mflo $1
TAG287:
mflo $1
mult $1, $1
ori $2, $1, 7
andi $2, $1, 13
TAG288:
mflo $2
sra $2, $2, 4
bgez $2, TAG289
multu $2, $2
TAG289:
bne $2, $2, TAG290
addiu $3, $2, 8
srav $1, $3, $2
bgez $2, TAG290
TAG290:
sltu $4, $1, $1
bgez $4, TAG291
mult $4, $1
beq $4, $4, TAG291
TAG291:
mult $4, $4
lui $1, 8
mtlo $4
mfhi $1
TAG292:
mthi $1
mtlo $1
mult $1, $1
add $4, $1, $1
TAG293:
mtlo $4
lui $3, 11
mtlo $3
lb $4, 0($4)
TAG294:
lw $2, 0($4)
divu $2, $2
xor $1, $2, $4
sb $2, -256($2)
TAG295:
lui $4, 11
mflo $3
mfhi $2
sb $3, 0($3)
TAG296:
bne $2, $2, TAG297
sub $1, $2, $2
addiu $3, $1, 11
blez $2, TAG297
TAG297:
mult $3, $3
mflo $2
lb $2, 0($2)
srlv $2, $2, $3
TAG298:
sw $2, 0($2)
xor $3, $2, $2
mult $2, $3
multu $2, $2
TAG299:
mult $3, $3
sltiu $2, $3, 12
beq $3, $3, TAG300
lui $2, 5
TAG300:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG301:
mult $2, $2
sll $0, $0, 0
divu $2, $2
sllv $3, $2, $2
TAG302:
sll $0, $0, 0
sra $3, $1, 13
bgez $3, TAG303
lbu $3, 0($1)
TAG303:
sra $3, $3, 12
lui $3, 7
addu $4, $3, $3
mflo $3
TAG304:
slt $3, $3, $3
beq $3, $3, TAG305
mflo $1
blez $1, TAG305
TAG305:
srav $1, $1, $1
sw $1, 0($1)
sll $4, $1, 2
lbu $1, 0($4)
TAG306:
bgtz $1, TAG307
sra $1, $1, 14
mult $1, $1
xor $2, $1, $1
TAG307:
bgez $2, TAG308
sw $2, 0($2)
blez $2, TAG308
lui $1, 0
TAG308:
sh $1, 0($1)
add $4, $1, $1
sltiu $2, $1, 13
srlv $1, $2, $1
TAG309:
lbu $1, 0($1)
andi $1, $1, 3
mfhi $2
lui $4, 8
TAG310:
mfhi $3
mult $3, $4
sll $0, $0, 0
blez $4, TAG311
TAG311:
sllv $2, $1, $1
multu $2, $2
mfhi $4
sll $1, $4, 11
TAG312:
bgtz $1, TAG313
lui $4, 0
srl $1, $4, 8
lui $1, 6
TAG313:
subu $3, $1, $1
mflo $1
multu $1, $3
mult $1, $1
TAG314:
bgez $1, TAG315
lh $2, 0($1)
subu $3, $1, $2
ori $1, $1, 4
TAG315:
beq $1, $1, TAG316
mflo $4
sltiu $4, $1, 11
lb $2, 0($4)
TAG316:
mthi $2
sub $2, $2, $2
beq $2, $2, TAG317
xor $2, $2, $2
TAG317:
mtlo $2
or $3, $2, $2
mflo $1
multu $3, $1
TAG318:
add $2, $1, $1
sh $1, 0($1)
mult $1, $1
mult $1, $2
TAG319:
mthi $2
bne $2, $2, TAG320
mtlo $2
sw $2, 0($2)
TAG320:
mflo $4
sll $2, $2, 3
mtlo $4
bgez $2, TAG321
TAG321:
multu $2, $2
mflo $1
beq $1, $2, TAG322
mtlo $1
TAG322:
mtlo $1
sw $1, 0($1)
ori $1, $1, 5
sb $1, 0($1)
TAG323:
lui $3, 7
lb $2, 0($1)
divu $3, $1
bgtz $3, TAG324
TAG324:
mult $2, $2
addiu $4, $2, 8
mthi $4
lb $2, 0($4)
TAG325:
multu $2, $2
mthi $2
srl $2, $2, 7
beq $2, $2, TAG326
TAG326:
mfhi $3
beq $2, $3, TAG327
lui $4, 12
sllv $1, $2, $3
TAG327:
slti $3, $1, 13
sltiu $2, $3, 1
mtlo $2
lbu $3, 0($3)
TAG328:
sb $3, 0($3)
srlv $1, $3, $3
lbu $1, 0($1)
and $1, $3, $1
TAG329:
mfhi $1
sltu $1, $1, $1
mfhi $1
bne $1, $1, TAG330
TAG330:
mtlo $1
lui $4, 13
bltz $4, TAG331
addiu $2, $1, 12
TAG331:
lui $3, 15
addu $3, $3, $2
xor $3, $3, $3
mult $3, $3
TAG332:
lui $1, 6
mthi $3
lb $2, 0($3)
lhu $4, 0($3)
TAG333:
mult $4, $4
bne $4, $4, TAG334
subu $2, $4, $4
mtlo $4
TAG334:
sb $2, 0($2)
sw $2, 0($2)
sw $2, 0($2)
bgez $2, TAG335
TAG335:
sll $2, $2, 15
lw $3, 0($2)
mult $2, $3
mthi $2
TAG336:
mthi $3
addiu $2, $3, 1
addi $4, $3, 5
lui $2, 11
TAG337:
bgtz $2, TAG338
multu $2, $2
mflo $3
xori $3, $3, 10
TAG338:
andi $4, $3, 7
lui $1, 0
mflo $2
mflo $1
TAG339:
beq $1, $1, TAG340
mtlo $1
mult $1, $1
mult $1, $1
TAG340:
and $3, $1, $1
multu $3, $1
lui $4, 12
mult $4, $4
TAG341:
div $4, $4
addiu $4, $4, 3
bgtz $4, TAG342
srl $3, $4, 5
TAG342:
sll $0, $0, 0
sb $3, -24576($3)
beq $3, $3, TAG343
sb $3, -24576($3)
TAG343:
lui $2, 2
mfhi $1
srav $4, $2, $1
multu $4, $3
TAG344:
sll $0, $0, 0
mthi $4
mthi $4
multu $4, $4
TAG345:
mfhi $4
div $4, $4
bltz $4, TAG346
nor $1, $4, $4
TAG346:
sh $1, 5($1)
and $2, $1, $1
blez $1, TAG347
mult $1, $2
TAG347:
lui $4, 2
xori $4, $4, 3
bgez $4, TAG348
addu $4, $2, $4
TAG348:
mfhi $1
slti $4, $4, 14
sltu $4, $1, $4
lw $2, 0($4)
TAG349:
sll $0, $0, 0
srlv $3, $2, $2
mfhi $3
mtlo $3
TAG350:
lbu $3, 0($3)
sllv $1, $3, $3
andi $1, $1, 12
beq $3, $3, TAG351
TAG351:
mtlo $1
lui $4, 13
divu $1, $4
mthi $1
TAG352:
mflo $3
subu $1, $4, $3
sltiu $3, $1, 1
sll $0, $0, 0
TAG353:
mthi $3
blez $3, TAG354
ori $3, $3, 10
sllv $2, $3, $3
TAG354:
lui $1, 9
beq $2, $1, TAG355
sltu $3, $2, $1
xor $3, $2, $2
TAG355:
lui $4, 1
beq $3, $3, TAG356
mthi $4
mfhi $4
TAG356:
srl $4, $4, 10
sll $1, $4, 7
lbu $1, 0($4)
mflo $1
TAG357:
lui $2, 8
lui $4, 0
slti $1, $2, 10
bne $1, $4, TAG358
TAG358:
sll $2, $1, 12
or $1, $2, $1
bltz $2, TAG359
sh $1, 0($2)
TAG359:
bne $1, $1, TAG360
mthi $1
xor $3, $1, $1
multu $3, $3
TAG360:
mflo $3
mthi $3
sh $3, 0($3)
bltz $3, TAG361
TAG361:
lbu $1, 0($3)
mult $1, $3
mfhi $4
bne $1, $3, TAG362
TAG362:
mtlo $4
mthi $4
sh $4, 0($4)
srlv $1, $4, $4
TAG363:
lui $1, 0
sltiu $4, $1, 7
mflo $1
mult $1, $1
TAG364:
andi $2, $1, 8
bne $1, $2, TAG365
xor $2, $2, $2
addi $1, $2, 9
TAG365:
lbu $1, 0($1)
lui $4, 11
bgez $1, TAG366
srlv $1, $4, $1
TAG366:
mflo $1
lui $3, 9
lb $1, 0($1)
mfhi $4
TAG367:
mflo $3
mult $3, $3
addu $1, $4, $3
mtlo $1
TAG368:
multu $1, $1
lui $1, 8
sll $0, $0, 0
bltz $1, TAG369
TAG369:
div $1, $1
addiu $3, $1, 10
div $3, $3
addiu $3, $3, 11
TAG370:
beq $3, $3, TAG371
mfhi $2
mult $3, $3
mfhi $1
TAG371:
slti $3, $1, 5
bgez $3, TAG372
srlv $1, $3, $3
bltz $3, TAG372
TAG372:
sw $1, 0($1)
lhu $4, 0($1)
beq $1, $4, TAG373
mult $4, $4
TAG373:
srav $2, $4, $4
sb $4, 0($4)
mthi $2
lbu $3, 0($4)
TAG374:
slti $1, $3, 8
mult $1, $1
lui $2, 3
sb $3, 0($1)
TAG375:
bne $2, $2, TAG376
sll $0, $0, 0
divu $2, $2
mfhi $1
TAG376:
multu $1, $1
lui $1, 3
beq $1, $1, TAG377
lui $3, 15
TAG377:
sll $0, $0, 0
sltu $3, $3, $2
lui $4, 0
ori $3, $3, 12
TAG378:
mult $3, $3
sb $3, 0($3)
lh $2, 0($3)
bgez $2, TAG379
TAG379:
ori $3, $2, 1
bltz $2, TAG380
lb $1, 0($2)
divu $3, $1
TAG380:
div $1, $1
sh $1, 0($1)
sw $1, 0($1)
mthi $1
TAG381:
lui $1, 2
sll $0, $0, 0
bne $1, $2, TAG382
sll $0, $0, 0
TAG382:
sw $2, 0($2)
sb $2, 0($2)
bne $2, $2, TAG383
sh $2, 0($2)
TAG383:
lui $4, 1
beq $4, $4, TAG384
mtlo $2
addi $2, $2, 1
TAG384:
mfhi $3
beq $3, $3, TAG385
mfhi $2
bltz $2, TAG385
TAG385:
lui $4, 0
mfhi $2
lui $2, 1
lhu $3, 0($4)
TAG386:
bgez $3, TAG387
mtlo $3
div $3, $3
bne $3, $3, TAG387
TAG387:
mflo $3
lhu $1, 0($3)
mthi $3
lh $1, 0($3)
TAG388:
lh $3, 0($1)
bne $3, $3, TAG389
mult $3, $3
bgez $1, TAG389
TAG389:
addi $4, $3, 1
mtlo $3
mthi $4
and $4, $4, $4
TAG390:
bgtz $4, TAG391
mthi $4
mthi $4
lh $4, 0($4)
TAG391:
bltz $4, TAG392
lbu $3, 0($4)
slt $4, $4, $4
mflo $1
TAG392:
bgez $1, TAG393
lui $4, 9
bgez $4, TAG393
lui $4, 1
TAG393:
mtlo $4
blez $4, TAG394
subu $2, $4, $4
bne $2, $2, TAG394
TAG394:
lui $3, 3
mult $3, $2
lui $2, 14
mfhi $1
TAG395:
sub $1, $1, $1
sltiu $3, $1, 0
mfhi $1
mflo $4
TAG396:
mtlo $4
lw $1, 0($4)
multu $1, $1
beq $4, $4, TAG397
TAG397:
sw $1, 0($1)
lhu $2, 0($1)
lui $3, 0
mtlo $2
TAG398:
lui $4, 10
beq $3, $3, TAG399
mflo $4
sra $3, $4, 9
TAG399:
sw $3, 0($3)
multu $3, $3
sb $3, 0($3)
multu $3, $3
TAG400:
mthi $3
sltiu $1, $3, 7
mult $3, $3
mflo $3
TAG401:
lw $4, 0($3)
mthi $4
mtlo $3
add $3, $3, $4
TAG402:
bgez $3, TAG403
lui $3, 4
beq $3, $3, TAG403
div $3, $3
TAG403:
sllv $1, $3, $3
beq $1, $3, TAG404
addiu $4, $1, 10
div $1, $4
TAG404:
bgez $4, TAG405
lui $2, 13
lui $3, 0
bltz $3, TAG405
TAG405:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
lui $2, 0
TAG406:
mtlo $2
lh $1, 0($2)
mthi $2
bgtz $2, TAG407
TAG407:
xor $1, $1, $1
ori $4, $1, 8
mflo $4
lbu $2, 0($4)
TAG408:
mtlo $2
slt $1, $2, $2
bne $1, $2, TAG409
mflo $2
TAG409:
bgez $2, TAG410
mthi $2
mtlo $2
multu $2, $2
TAG410:
lh $2, 0($2)
multu $2, $2
bltz $2, TAG411
lui $2, 12
TAG411:
sll $0, $0, 0
blez $2, TAG412
lui $2, 5
mflo $3
TAG412:
lw $4, 0($3)
mult $4, $3
andi $3, $3, 9
mfhi $2
TAG413:
lhu $1, 0($2)
multu $1, $2
sh $1, 0($1)
or $4, $1, $2
TAG414:
lui $4, 3
divu $4, $4
sll $0, $0, 0
srl $3, $4, 6
TAG415:
div $3, $3
mfhi $4
mthi $4
lb $1, -3072($3)
TAG416:
mthi $1
mfhi $1
beq $1, $1, TAG417
multu $1, $1
TAG417:
addiu $2, $1, 9
sw $1, 0($1)
lb $3, 0($1)
addu $1, $1, $1
TAG418:
sll $3, $1, 4
or $3, $1, $3
sh $1, 0($3)
beq $3, $3, TAG419
TAG419:
ori $4, $3, 6
mflo $1
beq $3, $3, TAG420
divu $3, $4
TAG420:
mult $1, $1
lh $1, 0($1)
mult $1, $1
mtlo $1
TAG421:
mthi $1
bgez $1, TAG422
mflo $3
lw $2, 0($3)
TAG422:
beq $2, $2, TAG423
mthi $2
lui $4, 14
mthi $4
TAG423:
addiu $4, $4, 14
bgez $4, TAG424
mthi $4
and $4, $4, $4
TAG424:
mflo $4
sb $4, 0($4)
lh $4, 0($4)
mthi $4
TAG425:
bltz $4, TAG426
mtlo $4
mthi $4
ori $2, $4, 4
TAG426:
sltiu $1, $2, 8
multu $1, $2
mult $2, $1
lb $3, 0($1)
TAG427:
bltz $3, TAG428
slt $2, $3, $3
lui $1, 6
lw $1, 0($2)
TAG428:
lui $4, 5
mfhi $2
lh $2, 0($2)
sb $1, 0($2)
TAG429:
multu $2, $2
lui $1, 1
slti $2, $1, 7
multu $2, $2
TAG430:
sltiu $4, $2, 10
sllv $1, $2, $4
beq $2, $4, TAG431
srlv $3, $2, $1
TAG431:
lui $1, 12
mthi $3
sb $1, 0($3)
lui $2, 4
TAG432:
sra $1, $2, 14
lui $4, 6
bne $4, $2, TAG433
mflo $1
TAG433:
lh $2, 0($1)
blez $2, TAG434
lui $3, 7
mthi $2
TAG434:
sll $0, $0, 0
or $1, $3, $3
lui $1, 6
mflo $2
TAG435:
mflo $3
lb $3, 0($2)
mflo $4
lui $1, 7
TAG436:
lui $1, 7
sll $0, $0, 0
sll $0, $0, 0
sltu $2, $1, $1
TAG437:
sb $2, 0($2)
blez $2, TAG438
slt $3, $2, $2
mflo $2
TAG438:
mflo $3
lbu $4, 0($3)
sub $1, $4, $2
mult $4, $3
TAG439:
sllv $2, $1, $1
multu $1, $2
mfhi $4
lui $1, 15
TAG440:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
mult $4, $4
TAG441:
lbu $2, 0($4)
mult $2, $4
bltz $2, TAG442
sw $4, 0($4)
TAG442:
andi $1, $2, 15
bltz $1, TAG443
lui $4, 6
xori $1, $2, 2
TAG443:
sb $1, 0($1)
mtlo $1
blez $1, TAG444
lhu $4, 0($1)
TAG444:
sh $4, 0($4)
mtlo $4
lhu $1, 0($4)
lui $2, 1
TAG445:
lui $3, 10
lui $2, 12
mtlo $3
lui $4, 1
TAG446:
mflo $4
bne $4, $4, TAG447
srl $4, $4, 15
andi $4, $4, 8
TAG447:
sb $4, 0($4)
bgtz $4, TAG448
xor $4, $4, $4
mult $4, $4
TAG448:
bne $4, $4, TAG449
lui $2, 3
lui $3, 15
mthi $3
TAG449:
lui $2, 9
lui $3, 1
mtlo $2
sll $0, $0, 0
TAG450:
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG451
subu $1, $3, $3
TAG451:
sra $2, $1, 8
lhu $4, 0($1)
mflo $1
sb $2, 0($2)
TAG452:
sll $0, $0, 0
addiu $1, $1, 8
lui $1, 12
addiu $1, $1, 7
TAG453:
beq $1, $1, TAG454
slt $2, $1, $1
and $3, $1, $1
mthi $1
TAG454:
sll $0, $0, 0
mtlo $2
bgez $3, TAG455
mthi $3
TAG455:
mfhi $2
sll $0, $0, 0
slti $3, $2, 13
lui $2, 8
TAG456:
lui $2, 15
multu $2, $2
addiu $4, $2, 11
sll $0, $0, 0
TAG457:
sltiu $2, $4, 8
andi $4, $2, 13
beq $4, $2, TAG458
lb $3, 0($4)
TAG458:
ori $3, $3, 7
lui $1, 7
lui $2, 11
bltz $1, TAG459
TAG459:
lui $2, 2
bne $2, $2, TAG460
ori $1, $2, 15
bgtz $2, TAG460
TAG460:
sra $2, $1, 14
divu $2, $1
addiu $1, $2, 4
mflo $1
TAG461:
bltz $1, TAG462
addu $1, $1, $1
sb $1, 0($1)
mtlo $1
TAG462:
andi $1, $1, 2
nor $3, $1, $1
mtlo $1
beq $1, $3, TAG463
TAG463:
sw $3, 1($3)
beq $3, $3, TAG464
divu $3, $3
lui $2, 8
TAG464:
sb $2, 0($2)
sb $2, 0($2)
sllv $2, $2, $2
div $2, $2
TAG465:
slti $4, $2, 7
mflo $4
mtlo $4
mtlo $4
TAG466:
mthi $4
lbu $2, 0($4)
sltu $2, $2, $4
mtlo $2
TAG467:
sw $2, 0($2)
mfhi $3
mfhi $4
and $3, $4, $3
TAG468:
lbu $1, 0($3)
beq $1, $1, TAG469
slti $3, $3, 12
mtlo $3
TAG469:
lui $4, 5
sb $4, 0($3)
mflo $4
divu $4, $3
TAG470:
sltu $2, $4, $4
bne $4, $2, TAG471
slti $3, $2, 10
sltiu $4, $2, 10
TAG471:
subu $3, $4, $4
lb $2, 0($4)
mtlo $3
mult $3, $2
TAG472:
lui $2, 4
mflo $2
srl $2, $2, 3
mflo $1
TAG473:
lhu $1, 0($1)
sllv $1, $1, $1
mtlo $1
mtlo $1
TAG474:
mtlo $1
mflo $2
lui $1, 15
sll $0, $0, 0
TAG475:
addiu $4, $1, 14
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG476:
mult $3, $3
sll $2, $3, 8
mult $2, $2
mflo $4
TAG477:
lhu $1, 0($4)
nor $3, $1, $1
beq $3, $4, TAG478
lh $2, 0($4)
TAG478:
add $2, $2, $2
lui $4, 7
mfhi $2
mult $4, $2
TAG479:
mult $2, $2
mthi $2
mflo $2
slt $2, $2, $2
TAG480:
mflo $2
sb $2, 0($2)
lbu $1, 0($2)
sb $2, 0($2)
TAG481:
mflo $2
lh $1, 0($1)
slt $2, $1, $1
bne $2, $1, TAG482
TAG482:
xor $4, $2, $2
lui $1, 2
mflo $3
nor $1, $1, $1
TAG483:
mthi $1
addu $2, $1, $1
mtlo $1
sll $0, $0, 0
TAG484:
ori $4, $1, 7
bne $1, $4, TAG485
sra $3, $4, 1
sll $0, $0, 0
TAG485:
sll $0, $0, 0
andi $3, $3, 13
mflo $4
mfhi $2
TAG486:
sll $0, $0, 0
slti $1, $2, 10
lui $2, 4
mtlo $2
TAG487:
mtlo $2
mflo $4
lui $1, 4
addu $3, $1, $2
TAG488:
addu $2, $3, $3
sllv $1, $3, $2
sll $0, $0, 0
sll $0, $0, 0
TAG489:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
sll $4, $3, 10
TAG490:
andi $3, $4, 7
mflo $2
bgtz $2, TAG491
xor $1, $4, $4
TAG491:
lui $3, 14
sll $0, $0, 0
bltz $1, TAG492
divu $3, $3
TAG492:
sll $0, $0, 0
lui $1, 0
bltz $1, TAG493
mtlo $1
TAG493:
sh $1, 0($1)
mthi $1
mthi $1
and $4, $1, $1
TAG494:
lui $3, 4
mult $3, $3
beq $4, $4, TAG495
multu $3, $4
TAG495:
blez $3, TAG496
mtlo $3
beq $3, $3, TAG496
sll $0, $0, 0
TAG496:
mflo $3
xor $3, $3, $3
xor $2, $3, $3
sb $3, 0($3)
TAG497:
bne $2, $2, TAG498
mtlo $2
bne $2, $2, TAG498
addu $2, $2, $2
TAG498:
mthi $2
beq $2, $2, TAG499
lui $2, 14
mult $2, $2
TAG499:
bgez $2, TAG500
mtlo $2
sb $2, 0($2)
lui $3, 1
TAG500:
sll $1, $3, 13
sb $3, 0($1)
andi $2, $3, 12
sllv $3, $3, $1
TAG501:
sw $3, 0($3)
bgtz $3, TAG502
mult $3, $3
bne $3, $3, TAG502
TAG502:
sb $3, 0($3)
lui $1, 10
multu $3, $3
beq $1, $1, TAG503
TAG503:
multu $1, $1
blez $1, TAG504
mult $1, $1
slti $4, $1, 10
TAG504:
sh $4, 0($4)
mtlo $4
addu $3, $4, $4
bltz $3, TAG505
TAG505:
mfhi $2
addu $2, $2, $2
sw $3, 0($3)
slt $2, $2, $3
TAG506:
mthi $2
lb $1, 0($2)
lhu $2, 0($2)
lh $2, 0($2)
TAG507:
mthi $2
sh $2, 0($2)
lui $1, 7
divu $1, $1
TAG508:
mfhi $2
sll $0, $0, 0
mtlo $2
mtlo $2
TAG509:
lw $2, 0($2)
sub $4, $2, $2
beq $2, $4, TAG510
lhu $1, 0($4)
TAG510:
sb $1, 0($1)
srlv $3, $1, $1
bne $3, $3, TAG511
mtlo $3
TAG511:
bne $3, $3, TAG512
mult $3, $3
lw $1, 0($3)
multu $1, $1
TAG512:
sw $1, 0($1)
and $3, $1, $1
subu $3, $3, $1
bltz $1, TAG513
TAG513:
multu $3, $3
xor $2, $3, $3
sh $2, 0($3)
bne $3, $3, TAG514
TAG514:
mthi $2
blez $2, TAG515
mthi $2
lui $3, 9
TAG515:
sltu $4, $3, $3
mult $3, $3
mfhi $2
mtlo $2
TAG516:
lui $4, 9
mthi $2
andi $3, $4, 8
mtlo $4
TAG517:
sw $3, 0($3)
mflo $4
lui $1, 2
xor $3, $4, $4
TAG518:
lhu $1, 0($3)
sltu $2, $1, $3
lh $1, 0($3)
lw $1, 0($1)
TAG519:
mtlo $1
mult $1, $1
or $2, $1, $1
sllv $2, $1, $1
TAG520:
slt $1, $2, $2
lb $4, 0($1)
blez $4, TAG521
multu $2, $4
TAG521:
mfhi $1
sh $4, 0($1)
srlv $4, $4, $1
lui $4, 4
TAG522:
sll $0, $0, 0
lui $2, 8
mult $4, $4
sra $3, $2, 7
TAG523:
div $3, $3
beq $3, $3, TAG524
div $3, $3
mtlo $3
TAG524:
sb $3, -4096($3)
beq $3, $3, TAG525
mtlo $3
lw $2, 0($3)
TAG525:
addu $1, $2, $2
blez $1, TAG526
mtlo $1
mflo $1
TAG526:
beq $1, $1, TAG527
divu $1, $1
mthi $1
or $3, $1, $1
TAG527:
mflo $4
bne $4, $3, TAG528
sllv $1, $3, $3
ori $1, $3, 5
TAG528:
mult $1, $1
lbu $4, -4096($1)
bgtz $4, TAG529
mflo $1
TAG529:
bne $1, $1, TAG530
mfhi $1
mtlo $1
mthi $1
TAG530:
mult $1, $1
mthi $1
lb $3, 0($1)
multu $3, $1
TAG531:
lui $1, 5
mtlo $3
multu $3, $3
beq $3, $1, TAG532
TAG532:
srlv $1, $1, $1
beq $1, $1, TAG533
mflo $3
sw $1, 0($3)
TAG533:
beq $3, $3, TAG534
lw $2, 0($3)
mtlo $2
srlv $2, $3, $2
TAG534:
mult $2, $2
addi $3, $2, 5
beq $2, $3, TAG535
slti $2, $2, 10
TAG535:
lui $2, 0
sb $2, 0($2)
bne $2, $2, TAG536
sw $2, 0($2)
TAG536:
mult $2, $2
mfhi $4
bne $2, $4, TAG537
addi $2, $2, 6
TAG537:
mtlo $2
xori $4, $2, 12
bgtz $2, TAG538
lh $1, 0($2)
TAG538:
lui $4, 0
bltz $4, TAG539
sltu $2, $4, $1
lui $1, 14
TAG539:
mfhi $4
xori $2, $1, 13
mfhi $4
lui $4, 6
TAG540:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG541
TAG541:
mtlo $1
lui $1, 5
sll $0, $0, 0
mtlo $1
TAG542:
bgtz $2, TAG543
mfhi $3
xor $4, $3, $3
lui $2, 14
TAG543:
sll $0, $0, 0
lui $4, 14
lui $1, 5
slti $2, $2, 13
TAG544:
addiu $3, $2, 13
div $3, $3
beq $2, $3, TAG545
multu $2, $2
TAG545:
mtlo $3
lbu $2, 0($3)
mult $3, $2
lbu $1, 0($3)
TAG546:
mflo $4
lui $2, 15
mfhi $4
lui $1, 11
TAG547:
lui $2, 11
bgtz $1, TAG548
xori $1, $2, 3
sw $1, 0($2)
TAG548:
bltz $1, TAG549
sll $0, $0, 0
mthi $1
mthi $1
TAG549:
sll $0, $0, 0
xori $3, $1, 1
mfhi $1
sll $0, $0, 0
TAG550:
mtlo $3
sll $0, $0, 0
bgez $2, TAG551
sll $0, $0, 0
TAG551:
lui $4, 10
mfhi $3
xor $4, $3, $3
bne $4, $3, TAG552
TAG552:
mtlo $4
mthi $4
mflo $4
mult $4, $4
TAG553:
lb $1, 0($4)
lw $1, 0($4)
sll $4, $4, 7
mflo $4
TAG554:
addu $2, $4, $4
lh $4, 0($2)
nor $3, $2, $2
mflo $2
TAG555:
mtlo $2
sh $2, 0($2)
xori $4, $2, 3
divu $4, $4
TAG556:
sb $4, 0($4)
multu $4, $4
mthi $4
mult $4, $4
TAG557:
mthi $4
sb $4, 0($4)
srl $2, $4, 2
mthi $4
TAG558:
add $4, $2, $2
mfhi $3
lui $1, 14
mtlo $2
TAG559:
sll $0, $0, 0
blez $1, TAG560
sltiu $4, $1, 13
mfhi $4
TAG560:
mthi $4
addu $1, $4, $4
bltz $4, TAG561
sb $1, 0($1)
TAG561:
bne $1, $1, TAG562
lui $3, 5
sll $0, $0, 0
bgtz $1, TAG562
TAG562:
slt $1, $3, $3
lui $3, 8
mthi $3
mfhi $2
TAG563:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
sub $3, $3, $1
TAG564:
mtlo $3
blez $3, TAG565
sll $0, $0, 0
mtlo $1
TAG565:
sltu $3, $1, $1
lbu $4, 0($1)
xori $2, $1, 9
mfhi $1
TAG566:
beq $1, $1, TAG567
lui $2, 0
sra $1, $1, 4
beq $1, $1, TAG567
TAG567:
addiu $2, $1, 7
lui $4, 12
lui $4, 12
bne $4, $4, TAG568
TAG568:
mtlo $4
sll $0, $0, 0
lh $2, 0($1)
lui $1, 3
TAG569:
sll $0, $0, 0
sw $1, 0($3)
or $1, $1, $3
lui $3, 1
TAG570:
mtlo $3
divu $3, $3
sll $0, $0, 0
bne $3, $3, TAG571
TAG571:
addu $2, $2, $2
beq $2, $2, TAG572
ori $3, $2, 6
mfhi $4
TAG572:
andi $3, $4, 14
lui $4, 1
mfhi $3
addiu $2, $4, 5
TAG573:
mthi $2
sll $0, $0, 0
bne $2, $2, TAG574
mflo $3
TAG574:
addu $3, $3, $3
slti $1, $3, 4
lui $3, 9
beq $3, $3, TAG575
TAG575:
mthi $3
mflo $2
beq $2, $2, TAG576
addu $2, $3, $2
TAG576:
lui $4, 14
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG577:
mthi $3
bne $3, $3, TAG578
lui $1, 4
mflo $1
TAG578:
blez $1, TAG579
sltiu $1, $1, 6
sub $1, $1, $1
mfhi $2
TAG579:
bgtz $2, TAG580
sll $0, $0, 0
mtlo $2
mflo $4
TAG580:
mtlo $4
mtlo $4
mtlo $4
div $4, $4
TAG581:
div $4, $4
sll $0, $0, 0
addu $3, $4, $4
sll $0, $0, 0
TAG582:
mflo $3
lb $2, 0($3)
srlv $2, $3, $3
mflo $2
TAG583:
sb $2, 0($2)
bltz $2, TAG584
mtlo $2
mtlo $2
TAG584:
lbu $4, 0($2)
beq $2, $2, TAG585
lb $1, 0($2)
mfhi $3
TAG585:
mtlo $3
addiu $1, $3, 4
lb $3, 0($1)
bgtz $3, TAG586
TAG586:
sb $3, 0($3)
lui $1, 7
mthi $3
mfhi $2
TAG587:
nor $3, $2, $2
or $1, $3, $3
lui $1, 3
lui $1, 6
TAG588:
sll $0, $0, 0
multu $2, $2
bne $2, $1, TAG589
mthi $1
TAG589:
srl $1, $2, 6
lbu $3, 0($2)
lbu $2, 0($2)
sb $2, 0($2)
TAG590:
mthi $2
mthi $2
mthi $2
bgez $2, TAG591
TAG591:
sra $1, $2, 6
srav $1, $2, $1
lui $4, 2
lbu $3, 0($1)
TAG592:
xori $1, $3, 14
blez $3, TAG593
lui $3, 1
mthi $1
TAG593:
sra $1, $3, 8
ori $3, $3, 9
divu $3, $1
lbu $4, -256($1)
TAG594:
lb $4, 0($4)
lhu $1, 0($4)
bgez $1, TAG595
addu $1, $1, $4
TAG595:
sh $1, -256($1)
sw $1, -256($1)
mtlo $1
mflo $1
TAG596:
sll $0, $0, 0
bgez $2, TAG597
mtlo $1
bgtz $1, TAG597
TAG597:
subu $3, $2, $2
sltiu $3, $3, 7
mflo $1
addu $4, $3, $2
TAG598:
beq $4, $4, TAG599
sh $4, 0($4)
mtlo $4
multu $4, $4
TAG599:
bgtz $4, TAG600
lh $4, 0($4)
bgtz $4, TAG600
lbu $3, 0($4)
TAG600:
mtlo $3
sb $3, 0($3)
mflo $1
bne $3, $3, TAG601
TAG601:
mult $1, $1
sb $1, 0($1)
beq $1, $1, TAG602
sllv $1, $1, $1
TAG602:
blez $1, TAG603
mflo $1
addiu $2, $1, 2
mfhi $4
TAG603:
lui $2, 10
lui $2, 10
andi $4, $2, 6
divu $2, $2
TAG604:
mthi $4
mthi $4
mfhi $2
lui $3, 7
TAG605:
sll $0, $0, 0
bltz $3, TAG606
sll $0, $0, 0
mthi $3
TAG606:
ori $2, $3, 11
bltz $3, TAG607
mflo $4
lb $2, 0($4)
TAG607:
divu $2, $2
xori $3, $2, 15
bne $3, $2, TAG608
divu $2, $3
TAG608:
sh $3, 0($3)
sb $3, 0($3)
bltz $3, TAG609
slti $2, $3, 10
TAG609:
mflo $1
sw $2, 0($2)
mflo $3
xori $3, $2, 4
TAG610:
sll $2, $3, 15
mtlo $2
subu $4, $3, $3
multu $4, $3
TAG611:
beq $4, $4, TAG612
lb $3, 0($4)
bgtz $4, TAG612
sb $3, 0($3)
TAG612:
bne $3, $3, TAG613
mflo $3
lw $2, 0($3)
slti $1, $2, 13
TAG613:
lb $1, 0($1)
sllv $4, $1, $1
andi $2, $1, 0
bgtz $1, TAG614
TAG614:
lh $2, 0($2)
bgtz $2, TAG615
multu $2, $2
blez $2, TAG615
TAG615:
sb $2, 0($2)
sh $2, 0($2)
lui $4, 4
mfhi $3
TAG616:
lw $1, 0($3)
sb $1, 0($3)
lui $1, 11
sltu $2, $1, $1
TAG617:
mtlo $2
sll $3, $2, 1
bne $3, $3, TAG618
sll $2, $3, 2
TAG618:
blez $2, TAG619
mfhi $3
mtlo $3
bne $2, $2, TAG619
TAG619:
and $4, $3, $3
mult $4, $4
beq $3, $4, TAG620
mult $3, $3
TAG620:
sllv $3, $4, $4
beq $3, $4, TAG621
mfhi $4
beq $4, $4, TAG621
TAG621:
multu $4, $4
mflo $2
lui $4, 13
bltz $4, TAG622
TAG622:
multu $4, $4
divu $4, $4
mthi $4
blez $4, TAG623
TAG623:
xor $3, $4, $4
mflo $4
bgez $4, TAG624
lbu $2, 0($4)
TAG624:
sh $2, 0($2)
multu $2, $2
mflo $3
sh $3, 0($2)
TAG625:
sw $3, 0($3)
mtlo $3
lhu $2, 0($3)
multu $3, $2
TAG626:
lbu $1, 0($2)
mthi $2
mtlo $1
mfhi $3
TAG627:
lb $3, 0($3)
lhu $3, 0($3)
mfhi $2
addu $2, $3, $3
TAG628:
addiu $4, $2, 1
addu $1, $2, $2
bltz $1, TAG629
srlv $4, $2, $1
TAG629:
mult $4, $4
bgez $4, TAG630
mflo $3
bne $4, $3, TAG630
TAG630:
mflo $4
sb $3, 0($4)
nor $1, $3, $3
mtlo $4
TAG631:
blez $1, TAG632
sb $1, 1($1)
lhu $1, 0($1)
mfhi $2
TAG632:
bgez $2, TAG633
mflo $4
lui $1, 9
sw $2, 0($1)
TAG633:
sb $1, 1($1)
mult $1, $1
lbu $1, 1($1)
blez $1, TAG634
TAG634:
xori $1, $1, 12
lhu $4, -243($1)
beq $1, $1, TAG635
div $1, $1
TAG635:
multu $4, $4
div $4, $4
mflo $3
subu $4, $4, $4
TAG636:
sh $4, 0($4)
mtlo $4
multu $4, $4
mfhi $2
TAG637:
xor $4, $2, $2
lhu $3, 0($2)
mtlo $3
lbu $3, 0($3)
TAG638:
bne $3, $3, TAG639
lui $3, 5
mfhi $1
sll $0, $0, 0
TAG639:
sll $0, $0, 0
slt $3, $3, $3
ori $2, $3, 8
multu $3, $3
TAG640:
srl $2, $2, 6
bne $2, $2, TAG641
sub $2, $2, $2
mtlo $2
TAG641:
beq $2, $2, TAG642
mflo $1
mflo $1
beq $1, $1, TAG642
TAG642:
mtlo $1
sltiu $3, $1, 10
or $3, $3, $1
lbu $1, 0($3)
TAG643:
xor $2, $1, $1
mthi $2
sb $1, 0($1)
multu $2, $1
TAG644:
lui $1, 2
bgtz $2, TAG645
sh $1, 0($2)
multu $1, $2
TAG645:
sra $2, $1, 8
sltiu $1, $2, 1
mult $1, $1
sh $1, 0($1)
TAG646:
multu $1, $1
lb $2, 0($1)
addi $4, $2, 4
mfhi $4
TAG647:
lui $1, 1
srav $2, $4, $1
lui $1, 10
multu $4, $2
TAG648:
multu $1, $1
bgtz $1, TAG649
sll $0, $0, 0
bltz $1, TAG649
TAG649:
mflo $2
bltz $2, TAG650
lh $4, 0($2)
mthi $2
TAG650:
lw $1, 0($4)
lhu $3, 0($4)
bgtz $4, TAG651
mult $3, $3
TAG651:
mtlo $3
beq $3, $3, TAG652
sltiu $4, $3, 7
blez $4, TAG652
TAG652:
mthi $4
sb $4, 0($4)
bne $4, $4, TAG653
xor $4, $4, $4
TAG653:
mthi $4
lh $3, 0($4)
mtlo $4
lh $4, 0($4)
TAG654:
bne $4, $4, TAG655
lui $2, 14
beq $4, $4, TAG655
mthi $4
TAG655:
lui $2, 14
mthi $2
sll $0, $0, 0
mtlo $2
TAG656:
lui $2, 10
div $2, $2
sllv $3, $2, $2
bgez $2, TAG657
TAG657:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG658
srl $2, $1, 10
TAG658:
andi $3, $2, 6
sll $4, $2, 1
beq $3, $4, TAG659
xori $1, $2, 1
TAG659:
sb $1, 0($1)
slt $2, $1, $1
sb $2, 0($1)
multu $1, $2
TAG660:
sh $2, 0($2)
lui $3, 0
lhu $3, 0($3)
addiu $2, $3, 13
TAG661:
mtlo $2
bne $2, $2, TAG662
sb $2, 0($2)
mtlo $2
TAG662:
mthi $2
mthi $2
bgtz $2, TAG663
sb $2, 0($2)
TAG663:
srl $3, $2, 13
sb $2, 0($2)
sb $3, 0($2)
mult $3, $3
TAG664:
mult $3, $3
sltu $2, $3, $3
bltz $3, TAG665
and $1, $2, $2
TAG665:
beq $1, $1, TAG666
mult $1, $1
andi $1, $1, 7
bltz $1, TAG666
TAG666:
sll $1, $1, 6
sh $1, 0($1)
mflo $2
mfhi $4
TAG667:
multu $4, $4
lui $4, 15
divu $4, $4
bltz $4, TAG668
TAG668:
srav $2, $4, $4
mfhi $3
sll $0, $0, 0
bgtz $2, TAG669
TAG669:
addi $1, $3, 15
bgez $1, TAG670
addu $2, $3, $3
sw $2, 0($3)
TAG670:
sll $1, $2, 5
bgtz $2, TAG671
lhu $4, 0($1)
bgez $1, TAG671
TAG671:
mflo $4
xor $2, $4, $4
divu $2, $4
lui $1, 11
TAG672:
xori $3, $1, 0
div $3, $3
subu $1, $3, $1
mfhi $4
TAG673:
beq $4, $4, TAG674
lui $3, 0
srav $3, $3, $4
mthi $3
TAG674:
bgez $3, TAG675
lui $3, 7
lb $3, 0($3)
mthi $3
TAG675:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
mthi $3
TAG676:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG677:
beq $4, $4, TAG678
mthi $4
addu $2, $4, $4
lbu $1, 0($2)
TAG678:
mfhi $4
mult $1, $4
srl $2, $1, 5
mfhi $3
TAG679:
srlv $3, $3, $3
sllv $1, $3, $3
multu $3, $1
ori $1, $3, 6
TAG680:
or $1, $1, $1
lui $3, 1
divu $1, $1
mthi $3
TAG681:
mtlo $3
lui $1, 15
bltz $3, TAG682
mflo $2
TAG682:
sll $0, $0, 0
srl $1, $2, 11
lhu $3, 0($4)
mfhi $3
TAG683:
lui $1, 15
mult $3, $1
lui $3, 4
addiu $3, $1, 8
TAG684:
sll $0, $0, 0
bne $3, $3, TAG685
sll $0, $0, 0
mtlo $3
TAG685:
bne $3, $3, TAG686
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG686
TAG686:
nor $4, $3, $3
sll $2, $4, 8
divu $2, $2
blez $4, TAG687
TAG687:
sra $3, $2, 3
sll $0, $0, 0
ori $3, $3, 10
mflo $2
TAG688:
and $3, $2, $2
lbu $3, 0($3)
mtlo $2
ori $4, $3, 0
TAG689:
bne $4, $4, TAG690
mthi $4
mfhi $1
bne $1, $1, TAG690
TAG690:
lui $3, 15
sll $0, $0, 0
bne $1, $1, TAG691
srav $4, $3, $3
TAG691:
mfhi $3
bne $3, $3, TAG692
srl $3, $4, 11
mthi $4
TAG692:
nor $3, $3, $3
lhu $4, 481($3)
mthi $3
sw $3, 481($3)
TAG693:
mtlo $4
lui $2, 15
mult $4, $4
mflo $4
TAG694:
lw $2, 0($4)
lbu $4, 0($4)
mthi $4
sb $2, 0($4)
TAG695:
xor $1, $4, $4
subu $3, $4, $4
srlv $2, $4, $1
beq $4, $3, TAG696
TAG696:
nor $4, $2, $2
bgez $4, TAG697
lui $1, 12
lbu $4, 32($4)
TAG697:
beq $4, $4, TAG698
ori $3, $4, 10
lh $2, 0($3)
mult $3, $3
TAG698:
sb $2, 0($2)
mthi $2
lbu $1, 0($2)
mult $1, $1
TAG699:
mfhi $1
bne $1, $1, TAG700
sh $1, 0($1)
sb $1, 0($1)
TAG700:
lh $4, 0($1)
subu $4, $1, $1
mflo $3
multu $4, $1
TAG701:
xori $1, $3, 1
slti $1, $3, 7
slti $1, $3, 0
bgtz $1, TAG702
TAG702:
lbu $1, 0($1)
mfhi $1
sw $1, 0($1)
addi $4, $1, 10
TAG703:
sh $4, 0($4)
sh $4, 0($4)
bgtz $4, TAG704
addiu $2, $4, 11
TAG704:
divu $2, $2
lui $3, 3
bne $3, $2, TAG705
lui $4, 0
TAG705:
sh $4, 0($4)
sw $4, 0($4)
mthi $4
bltz $4, TAG706
TAG706:
mthi $4
beq $4, $4, TAG707
mtlo $4
bgez $4, TAG707
TAG707:
srav $3, $4, $4
lb $3, 0($3)
mthi $4
lb $1, 0($3)
TAG708:
bne $1, $1, TAG709
mflo $3
beq $3, $3, TAG709
mult $3, $3
TAG709:
mthi $3
mfhi $3
mtlo $3
subu $2, $3, $3
TAG710:
multu $2, $2
xori $3, $2, 7
sh $2, 0($2)
bgtz $2, TAG711
TAG711:
div $3, $3
sb $3, 0($3)
xor $3, $3, $3
sh $3, 0($3)
TAG712:
xori $2, $3, 6
sra $3, $2, 11
multu $3, $2
beq $2, $2, TAG713
TAG713:
mflo $3
lui $1, 12
lbu $3, 0($3)
srl $4, $3, 5
TAG714:
beq $4, $4, TAG715
srlv $2, $4, $4
mtlo $4
lw $2, 0($2)
TAG715:
lui $2, 11
bne $2, $2, TAG716
sll $0, $0, 0
sll $0, $0, 0
TAG716:
bltz $2, TAG717
sll $0, $0, 0
mthi $2
beq $2, $2, TAG717
TAG717:
lui $1, 15
xori $2, $2, 1
mfhi $1
sll $0, $0, 0
TAG718:
sll $0, $0, 0
sltu $4, $2, $2
or $3, $4, $2
subu $1, $2, $3
TAG719:
lb $1, 0($1)
lui $1, 8
beq $1, $1, TAG720
lui $4, 8
TAG720:
addiu $4, $4, 7
divu $4, $4
sltiu $4, $4, 0
beq $4, $4, TAG721
TAG721:
multu $4, $4
mflo $2
addu $3, $4, $4
sb $2, 0($2)
TAG722:
lui $2, 1
sw $3, 0($3)
add $3, $3, $3
sh $3, 0($3)
TAG723:
xor $2, $3, $3
slti $2, $2, 15
lui $1, 10
mthi $3
TAG724:
xor $3, $1, $1
lui $3, 1
sll $0, $0, 0
mfhi $2
TAG725:
sw $2, 0($2)
lbu $3, 0($2)
xori $4, $2, 15
srlv $4, $2, $2
TAG726:
sw $4, 0($4)
mflo $3
beq $4, $3, TAG727
mtlo $4
TAG727:
mult $3, $3
lui $1, 5
bgez $1, TAG728
sb $1, 0($3)
TAG728:
mthi $1
beq $1, $1, TAG729
lui $1, 2
mflo $4
TAG729:
bgez $4, TAG730
mfhi $2
bgez $2, TAG730
lw $2, 0($4)
TAG730:
div $2, $2
or $3, $2, $2
bgtz $3, TAG731
mfhi $1
TAG731:
blez $1, TAG732
xor $2, $1, $1
addi $4, $1, 9
lw $1, 0($4)
TAG732:
srav $3, $1, $1
sb $1, 0($1)
sb $3, 0($3)
mflo $1
TAG733:
slti $2, $1, 5
mflo $2
lbu $1, 0($2)
lb $2, 0($1)
TAG734:
bne $2, $2, TAG735
mthi $2
mthi $2
mult $2, $2
TAG735:
mfhi $2
ori $1, $2, 11
blez $1, TAG736
or $1, $1, $2
TAG736:
blez $1, TAG737
lui $2, 11
mfhi $2
bne $2, $2, TAG737
TAG737:
sh $2, 0($2)
lhu $1, 0($2)
sw $2, 0($1)
lb $4, 0($2)
TAG738:
lhu $2, 0($4)
lw $2, 0($2)
sub $4, $4, $2
sh $2, 0($2)
TAG739:
bne $4, $4, TAG740
sb $4, 0($4)
sb $4, 0($4)
sll $4, $4, 7
TAG740:
sll $3, $4, 9
lui $1, 13
blez $3, TAG741
lb $1, 0($3)
TAG741:
mult $1, $1
mflo $1
lhu $3, 0($1)
mthi $3
TAG742:
sh $3, 0($3)
lui $1, 13
slt $4, $1, $1
lbu $2, 0($4)
TAG743:
beq $2, $2, TAG744
lb $4, 0($2)
bgtz $2, TAG744
lhu $2, 0($4)
TAG744:
mfhi $4
subu $2, $2, $2
nor $3, $4, $4
mflo $3
TAG745:
bne $3, $3, TAG746
mult $3, $3
mfhi $1
slt $3, $3, $1
TAG746:
bgez $3, TAG747
sra $4, $3, 4
sw $4, 0($4)
mult $3, $3
TAG747:
lui $3, 10
ori $1, $3, 6
sh $4, 0($4)
bltz $1, TAG748
TAG748:
divu $1, $1
beq $1, $1, TAG749
sll $0, $0, 0
div $1, $1
TAG749:
lui $4, 4
mfhi $4
multu $4, $4
beq $4, $4, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop