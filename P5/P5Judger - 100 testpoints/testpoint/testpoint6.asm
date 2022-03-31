ori $1, $0, 7
ori $2, $0, 0
ori $3, $0, 12
ori $4, $0, 9
sw $2, 0($0)
sw $1, 4($0)
sw $2, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $3, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $3, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $2, 124($0)
mtlo $2
lb $1, 0($2)
multu $2, $1
multu $2, $1
TAG1:
nor $2, $1, $1
mthi $1
nor $3, $2, $1
xori $3, $3, 13
TAG2:
mfhi $1
lui $3, 7
multu $3, $1
bgez $1, TAG3
TAG3:
mtlo $3
and $1, $3, $3
addiu $4, $3, 12
mflo $4
TAG4:
sllv $3, $4, $4
bltz $3, TAG5
sltiu $3, $3, 7
lui $4, 5
TAG5:
divu $4, $4
bne $4, $4, TAG6
sll $0, $0, 0
sll $0, $0, 0
TAG6:
sll $0, $0, 0
mflo $1
lb $1, 0($1)
sll $0, $0, 0
TAG7:
bltz $2, TAG8
lbu $3, 1($2)
lhu $3, 0($2)
lui $1, 14
TAG8:
addi $4, $1, 6
slti $3, $4, 7
sb $1, 0($4)
lh $2, 0($1)
TAG9:
lh $2, 0($2)
mthi $2
lb $1, 0($2)
addu $4, $2, $2
TAG10:
mflo $1
lb $4, 0($1)
sra $4, $4, 2
mult $4, $4
TAG11:
lh $2, 0($4)
lui $2, 4
divu $2, $2
mfhi $1
TAG12:
lh $2, 0($1)
slti $3, $1, 10
addu $4, $3, $1
andi $3, $3, 11
TAG13:
lui $4, 14
mthi $3
lui $4, 4
sll $0, $0, 0
TAG14:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG15
TAG15:
mfhi $1
mflo $4
or $3, $4, $1
slt $3, $4, $3
TAG16:
xori $2, $3, 5
sb $3, 0($3)
beq $3, $3, TAG17
lw $1, 0($2)
TAG17:
bne $1, $1, TAG18
sltiu $1, $1, 1
bne $1, $1, TAG18
mthi $1
TAG18:
mthi $1
lui $1, 5
multu $1, $1
bne $1, $1, TAG19
TAG19:
sll $0, $0, 0
bltz $1, TAG20
mtlo $1
sltiu $1, $1, 0
TAG20:
slti $1, $1, 5
nor $3, $1, $1
bne $1, $1, TAG21
divu $1, $3
TAG21:
mfhi $1
lui $4, 3
lui $1, 10
bltz $1, TAG22
TAG22:
mfhi $3
blez $3, TAG23
divu $3, $1
sll $0, $0, 0
TAG23:
mflo $1
subu $2, $3, $1
srl $1, $2, 3
bgtz $1, TAG24
TAG24:
sh $1, 0($1)
sll $4, $1, 8
mtlo $1
bne $1, $1, TAG25
TAG25:
mfhi $1
mfhi $4
blez $4, TAG26
lbu $4, 0($4)
TAG26:
lbu $1, 0($4)
mfhi $1
beq $1, $1, TAG27
sb $4, 0($1)
TAG27:
ori $1, $1, 7
divu $1, $1
mfhi $2
mflo $3
TAG28:
lb $2, 0($3)
bltz $2, TAG29
lui $4, 12
slti $1, $2, 14
TAG29:
div $1, $1
sb $1, 0($1)
and $2, $1, $1
blez $1, TAG30
TAG30:
mthi $2
lb $1, 0($2)
sb $1, 0($1)
div $1, $2
TAG31:
lui $4, 2
mthi $1
sb $4, 0($1)
mfhi $3
TAG32:
srav $1, $3, $3
sb $1, 0($3)
lui $1, 15
addiu $3, $1, 12
TAG33:
andi $3, $3, 13
mfhi $4
lui $2, 0
blez $3, TAG34
TAG34:
lui $2, 14
addiu $3, $2, 0
beq $2, $3, TAG35
divu $2, $2
TAG35:
sll $0, $0, 0
div $2, $2
mult $2, $2
addiu $4, $3, 3
TAG36:
mtlo $4
blez $4, TAG37
sltiu $3, $4, 8
sllv $2, $3, $3
TAG37:
mtlo $2
sra $2, $2, 8
sll $1, $2, 11
lb $3, 0($2)
TAG38:
lh $4, 0($3)
mflo $1
sb $3, 0($3)
lbu $2, 0($4)
TAG39:
mult $2, $2
bgtz $2, TAG40
lb $3, 0($2)
ori $3, $3, 14
TAG40:
lui $1, 0
blez $1, TAG41
multu $1, $1
div $3, $1
TAG41:
beq $1, $1, TAG42
mfhi $3
addu $2, $3, $3
lw $3, 0($3)
TAG42:
mthi $3
mflo $1
beq $1, $3, TAG43
sltu $3, $1, $3
TAG43:
lui $2, 1
mtlo $3
mthi $3
mthi $2
TAG44:
mflo $2
sh $2, 0($2)
lh $3, 0($2)
lui $3, 0
TAG45:
lw $3, 0($3)
lw $3, 0($3)
multu $3, $3
bne $3, $3, TAG46
TAG46:
lui $2, 13
xor $2, $3, $2
nor $4, $3, $2
mult $2, $4
TAG47:
mfhi $2
lui $2, 10
lui $1, 1
lui $2, 3
TAG48:
multu $2, $2
lui $4, 10
xori $3, $4, 9
mtlo $2
TAG49:
sll $0, $0, 0
multu $3, $2
slti $1, $3, 7
bne $3, $3, TAG50
TAG50:
sllv $3, $1, $1
mtlo $3
beq $3, $1, TAG51
sb $3, 0($3)
TAG51:
slti $4, $3, 7
mult $3, $3
lbu $1, 0($4)
sll $3, $3, 15
TAG52:
sra $3, $3, 14
bgtz $3, TAG53
mflo $1
sw $1, 0($3)
TAG53:
mtlo $1
mthi $1
sw $1, 0($1)
mflo $4
TAG54:
bgtz $4, TAG55
mflo $1
sh $4, 0($4)
lh $1, 0($1)
TAG55:
sh $1, 0($1)
mtlo $1
mthi $1
mthi $1
TAG56:
mfhi $3
lui $1, 3
mflo $1
blez $1, TAG57
TAG57:
mthi $1
mult $1, $1
sb $1, 0($1)
sb $1, 0($1)
TAG58:
lui $3, 14
sb $1, 0($1)
lui $4, 14
lui $4, 0
TAG59:
lui $1, 5
beq $4, $1, TAG60
mult $4, $4
blez $1, TAG60
TAG60:
subu $1, $1, $1
andi $3, $1, 9
beq $1, $3, TAG61
andi $3, $1, 3
TAG61:
lh $2, 0($3)
beq $3, $3, TAG62
srl $2, $3, 5
bgez $3, TAG62
TAG62:
mfhi $3
lui $4, 9
sll $0, $0, 0
srav $3, $2, $4
TAG63:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG64
TAG64:
divu $3, $3
divu $3, $3
sll $0, $0, 0
mflo $4
TAG65:
xori $4, $4, 3
sltu $2, $4, $4
srlv $3, $4, $4
srl $3, $3, 12
TAG66:
mfhi $4
sb $4, 0($3)
lui $2, 13
multu $4, $3
TAG67:
bgez $2, TAG68
sll $0, $0, 0
mult $4, $2
bgez $4, TAG68
TAG68:
lw $1, 0($4)
bgtz $1, TAG69
sw $1, 0($4)
mflo $1
TAG69:
blez $1, TAG70
mult $1, $1
bne $1, $1, TAG70
lbu $3, 0($1)
TAG70:
bgtz $3, TAG71
multu $3, $3
bgez $3, TAG71
sh $3, 0($3)
TAG71:
beq $3, $3, TAG72
lhu $3, 0($3)
subu $2, $3, $3
mfhi $2
TAG72:
mfhi $3
mult $3, $2
lui $1, 2
bne $1, $3, TAG73
TAG73:
mult $1, $1
srl $3, $1, 12
sll $0, $0, 0
lbu $4, 0($3)
TAG74:
bgez $4, TAG75
lui $2, 0
andi $3, $2, 10
sw $4, 0($3)
TAG75:
mflo $4
sll $4, $4, 6
blez $4, TAG76
and $3, $4, $4
TAG76:
andi $2, $3, 11
bgez $3, TAG77
mfhi $4
lui $1, 5
TAG77:
mfhi $4
bne $4, $1, TAG78
lui $3, 2
mfhi $2
TAG78:
mflo $3
sb $3, 0($3)
sllv $2, $2, $2
mthi $3
TAG79:
blez $2, TAG80
sub $3, $2, $2
beq $2, $2, TAG80
lui $4, 14
TAG80:
lbu $3, 0($4)
sw $4, 0($4)
mthi $4
lh $3, 0($4)
TAG81:
sltiu $3, $3, 7
mfhi $3
mult $3, $3
sra $4, $3, 7
TAG82:
bne $4, $4, TAG83
mtlo $4
lui $4, 5
multu $4, $4
TAG83:
mflo $3
sw $3, 0($3)
ori $3, $4, 4
sll $0, $0, 0
TAG84:
mthi $3
bltz $3, TAG85
mthi $3
sll $0, $0, 0
TAG85:
bne $3, $3, TAG86
mfhi $2
beq $3, $2, TAG86
mthi $3
TAG86:
beq $2, $2, TAG87
mfhi $1
sllv $4, $2, $1
mfhi $1
TAG87:
mtlo $1
mthi $1
multu $1, $1
mthi $1
TAG88:
sll $0, $0, 0
bne $1, $1, TAG89
sll $0, $0, 0
mfhi $3
TAG89:
sll $0, $0, 0
sltu $2, $3, $3
sll $0, $0, 0
bgtz $1, TAG90
TAG90:
addu $3, $1, $1
lui $3, 0
subu $3, $1, $3
sll $0, $0, 0
TAG91:
mult $4, $4
mflo $3
bltz $3, TAG92
sll $0, $0, 0
TAG92:
andi $3, $3, 0
mtlo $3
mflo $4
sh $3, 0($4)
TAG93:
slti $2, $4, 9
xor $4, $4, $2
sb $2, 0($2)
mfhi $4
TAG94:
beq $4, $4, TAG95
mflo $1
sll $4, $4, 2
multu $4, $1
TAG95:
mtlo $4
sb $4, 0($4)
lui $1, 11
slti $3, $4, 8
TAG96:
lui $1, 1
sll $2, $1, 5
multu $2, $3
multu $2, $3
TAG97:
sll $0, $0, 0
blez $2, TAG98
lui $3, 4
beq $2, $2, TAG98
TAG98:
mult $3, $3
div $3, $3
mthi $3
sll $0, $0, 0
TAG99:
beq $3, $3, TAG100
mtlo $3
mthi $3
bltz $3, TAG100
TAG100:
div $3, $3
sll $0, $0, 0
mult $3, $3
slt $1, $3, $2
TAG101:
bne $1, $1, TAG102
lui $1, 4
sll $0, $0, 0
beq $1, $1, TAG102
TAG102:
mult $2, $2
multu $2, $2
div $2, $2
lui $1, 15
TAG103:
lui $2, 0
addi $4, $2, 12
bne $4, $2, TAG104
divu $4, $1
TAG104:
or $2, $4, $4
bne $4, $4, TAG105
sllv $4, $4, $2
mflo $1
TAG105:
mfhi $2
sltiu $2, $1, 12
mthi $2
bltz $2, TAG106
TAG106:
mflo $2
lui $1, 5
mult $1, $2
mtlo $1
TAG107:
lui $4, 15
lui $4, 6
mflo $1
sll $0, $0, 0
TAG108:
mult $4, $4
mfhi $2
sll $0, $0, 0
sw $4, 0($2)
TAG109:
mflo $2
sll $0, $0, 0
blez $2, TAG110
lw $3, 0($2)
TAG110:
divu $3, $3
sb $3, -256($3)
mfhi $4
subu $4, $4, $3
TAG111:
sll $2, $4, 11
lui $3, 1
bgez $3, TAG112
multu $4, $2
TAG112:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 10
mtlo $2
TAG113:
beq $3, $3, TAG114
slti $1, $3, 15
div $3, $3
lui $4, 0
TAG114:
bgez $4, TAG115
mtlo $4
mflo $4
divu $4, $4
TAG115:
beq $4, $4, TAG116
lh $2, 256($4)
sh $4, 0($2)
addi $1, $4, 3
TAG116:
sra $1, $1, 9
multu $1, $1
bne $1, $1, TAG117
multu $1, $1
TAG117:
sw $1, 0($1)
lui $4, 11
bne $4, $4, TAG118
mfhi $1
TAG118:
mult $1, $1
subu $2, $1, $1
multu $2, $2
mflo $4
TAG119:
beq $4, $4, TAG120
multu $4, $4
srl $4, $4, 1
beq $4, $4, TAG120
TAG120:
mult $4, $4
lui $1, 13
sb $4, 0($4)
mfhi $4
TAG121:
lui $3, 13
bgez $3, TAG122
mthi $4
sub $3, $4, $4
TAG122:
mtlo $3
mthi $3
addiu $4, $3, 3
bne $4, $3, TAG123
TAG123:
andi $2, $4, 8
blez $4, TAG124
lui $1, 3
bne $2, $4, TAG124
TAG124:
mtlo $1
beq $1, $1, TAG125
mtlo $1
mtlo $1
TAG125:
lui $2, 2
mtlo $1
sll $0, $0, 0
div $2, $1
TAG126:
multu $2, $2
sll $0, $0, 0
bltz $2, TAG127
mfhi $4
TAG127:
bne $4, $4, TAG128
lui $3, 6
addiu $2, $3, 11
mflo $2
TAG128:
multu $2, $2
sh $2, 0($2)
mflo $1
xori $4, $2, 1
TAG129:
lui $3, 3
lui $3, 12
srlv $4, $4, $4
mtlo $3
TAG130:
lui $2, 3
mflo $2
lh $1, 0($4)
lbu $3, 0($4)
TAG131:
sh $3, 0($3)
lw $3, 0($3)
sh $3, 0($3)
bltz $3, TAG132
TAG132:
lbu $3, 0($3)
blez $3, TAG133
mfhi $3
div $3, $3
TAG133:
mflo $1
div $1, $1
mult $1, $3
sh $3, 0($3)
TAG134:
srl $2, $1, 6
bne $1, $2, TAG135
div $2, $1
mthi $1
TAG135:
bgtz $2, TAG136
ori $3, $2, 9
andi $4, $3, 11
addi $2, $2, 6
TAG136:
bgez $2, TAG137
sw $2, -12288($2)
lbu $3, 0($2)
slti $3, $2, 14
TAG137:
multu $3, $3
multu $3, $3
mflo $2
mfhi $3
TAG138:
mflo $3
multu $3, $3
srav $4, $3, $3
sll $0, $0, 0
TAG139:
bne $4, $4, TAG140
addu $1, $4, $4
mtlo $4
bltz $1, TAG140
TAG140:
sll $0, $0, 0
sll $0, $0, 0
slti $2, $1, 13
mtlo $3
TAG141:
bgtz $2, TAG142
multu $2, $2
lh $3, 0($2)
lhu $1, 0($2)
TAG142:
mthi $1
divu $1, $1
mfhi $4
blez $1, TAG143
TAG143:
slti $4, $4, 7
lui $4, 14
bne $4, $4, TAG144
srlv $4, $4, $4
TAG144:
srlv $3, $4, $4
ori $1, $3, 6
addu $3, $1, $1
slti $2, $4, 13
TAG145:
beq $2, $2, TAG146
mult $2, $2
sb $2, 0($2)
lbu $4, 0($2)
TAG146:
sll $0, $0, 0
lui $4, 10
andi $2, $4, 10
multu $4, $2
TAG147:
sb $2, 0($2)
bgez $2, TAG148
xori $3, $2, 7
sb $3, 0($2)
TAG148:
mult $3, $3
xor $4, $3, $3
sltiu $3, $4, 6
mflo $4
TAG149:
mflo $1
blez $1, TAG150
subu $4, $1, $4
subu $4, $4, $4
TAG150:
sltiu $4, $4, 4
lui $2, 1
blez $4, TAG151
mflo $4
TAG151:
sb $4, 0($4)
sll $1, $4, 1
lb $2, 0($4)
sb $2, 0($1)
TAG152:
srlv $2, $2, $2
sb $2, 0($2)
lw $1, 0($2)
sh $2, 0($2)
TAG153:
sll $0, $0, 0
lw $4, -12288($1)
sh $1, 0($4)
lh $1, 0($4)
TAG154:
mfhi $2
mthi $2
bne $2, $2, TAG155
lb $3, -12288($1)
TAG155:
bgez $3, TAG156
multu $3, $3
srlv $1, $3, $3
mflo $3
TAG156:
sra $4, $3, 15
or $4, $4, $3
xor $2, $3, $4
bne $3, $3, TAG157
TAG157:
lui $2, 12
mthi $2
sll $0, $0, 0
beq $2, $2, TAG158
TAG158:
addiu $3, $3, 15
lui $4, 9
mthi $3
sh $3, 0($3)
TAG159:
div $4, $4
sltiu $2, $4, 14
mflo $2
mtlo $4
TAG160:
divu $2, $2
bltz $2, TAG161
lb $4, 0($2)
bltz $2, TAG161
TAG161:
addiu $2, $4, 2
addu $4, $2, $2
divu $4, $4
bne $4, $4, TAG162
TAG162:
lhu $2, 0($4)
mfhi $1
bgez $2, TAG163
lui $4, 9
TAG163:
mflo $2
mtlo $2
beq $2, $2, TAG164
sll $0, $0, 0
TAG164:
mfhi $2
blez $2, TAG165
lui $3, 12
mfhi $2
TAG165:
sh $2, 0($2)
mtlo $2
lh $1, 0($2)
bgtz $1, TAG166
TAG166:
lui $3, 15
ori $2, $3, 12
mtlo $3
sll $0, $0, 0
TAG167:
multu $2, $2
mtlo $2
sll $0, $0, 0
bne $2, $2, TAG168
TAG168:
mult $2, $2
bne $2, $2, TAG169
mthi $2
mtlo $2
TAG169:
sll $0, $0, 0
mflo $4
lui $3, 1
lui $4, 8
TAG170:
lui $4, 2
beq $4, $4, TAG171
mfhi $3
lhu $2, 0($3)
TAG171:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 14
mult $4, $2
TAG172:
bne $4, $4, TAG173
mtlo $4
blez $4, TAG173
sll $0, $0, 0
TAG173:
bne $1, $1, TAG174
andi $3, $1, 15
sh $3, 0($1)
lui $4, 3
TAG174:
srav $2, $4, $4
bgez $2, TAG175
addu $1, $4, $2
mflo $4
TAG175:
sll $0, $0, 0
sll $1, $4, 13
srl $1, $4, 15
sltu $2, $1, $4
TAG176:
lui $2, 1
mfhi $3
divu $2, $3
sll $0, $0, 0
TAG177:
divu $3, $3
lh $4, -210($3)
mthi $4
lui $2, 10
TAG178:
mfhi $4
sll $0, $0, 0
mult $4, $2
lui $4, 15
TAG179:
beq $4, $4, TAG180
ori $2, $4, 3
mfhi $3
mflo $1
TAG180:
sh $1, 0($1)
sh $1, 0($1)
lbu $1, 0($1)
blez $1, TAG181
TAG181:
lui $4, 15
beq $1, $1, TAG182
sll $0, $0, 0
sw $4, 0($4)
TAG182:
sltu $2, $3, $3
mfhi $4
lbu $1, -210($3)
beq $2, $2, TAG183
TAG183:
mult $1, $1
multu $1, $1
lbu $4, 0($1)
lw $3, 0($1)
TAG184:
mfhi $2
mfhi $2
lui $4, 12
sltiu $1, $2, 12
TAG185:
subu $4, $1, $1
and $2, $4, $4
mthi $4
sb $1, 0($1)
TAG186:
sltu $4, $2, $2
mthi $4
bltz $2, TAG187
mflo $4
TAG187:
srl $1, $4, 14
bne $1, $1, TAG188
sw $4, 0($4)
lui $1, 1
TAG188:
sll $0, $0, 0
lui $2, 9
sra $1, $1, 3
addiu $3, $1, 13
TAG189:
mflo $3
and $3, $3, $3
mtlo $3
lb $3, 0($3)
TAG190:
bgtz $3, TAG191
addiu $3, $3, 7
divu $3, $3
lbu $1, 0($3)
TAG191:
lui $2, 9
beq $1, $2, TAG192
slti $4, $1, 3
mflo $3
TAG192:
bgez $3, TAG193
multu $3, $3
lui $2, 15
add $2, $3, $2
TAG193:
bltz $2, TAG194
mfhi $4
srlv $2, $2, $2
mult $2, $2
TAG194:
mtlo $2
lui $4, 8
lui $2, 10
xori $2, $2, 11
TAG195:
mult $2, $2
divu $2, $2
mtlo $2
mthi $2
TAG196:
mtlo $2
mtlo $2
multu $2, $2
mflo $1
TAG197:
mtlo $1
sll $0, $0, 0
bgez $1, TAG198
mtlo $2
TAG198:
mfhi $4
mult $2, $2
sw $2, 0($4)
mthi $4
TAG199:
mflo $4
lui $4, 3
mflo $3
bne $4, $4, TAG200
TAG200:
subu $3, $3, $3
multu $3, $3
srl $1, $3, 10
lw $1, 0($3)
TAG201:
mflo $2
addiu $4, $1, 2
bne $1, $4, TAG202
xori $1, $4, 2
TAG202:
bgtz $1, TAG203
nor $3, $1, $1
ori $3, $3, 5
lui $1, 5
TAG203:
ori $2, $1, 5
div $1, $1
mtlo $1
mult $1, $1
TAG204:
xor $1, $2, $2
bgtz $2, TAG205
sll $0, $0, 0
div $1, $4
TAG205:
bne $4, $4, TAG206
mthi $4
bne $4, $4, TAG206
mthi $4
TAG206:
lui $3, 13
bgtz $4, TAG207
addiu $1, $3, 4
srlv $4, $4, $4
TAG207:
beq $4, $4, TAG208
mfhi $4
sw $4, 0($4)
mfhi $2
TAG208:
blez $2, TAG209
mflo $1
lui $2, 1
lui $1, 4
TAG209:
sll $0, $0, 0
bne $1, $1, TAG210
multu $1, $1
mthi $1
TAG210:
sll $0, $0, 0
mthi $1
bgtz $3, TAG211
slti $1, $3, 12
TAG211:
lui $2, 7
beq $2, $1, TAG212
mult $1, $2
lui $2, 10
TAG212:
mtlo $2
or $1, $2, $2
mtlo $2
lui $4, 10
TAG213:
addiu $3, $4, 0
addiu $2, $4, 3
mthi $2
srav $3, $4, $3
TAG214:
sll $0, $0, 0
bgtz $3, TAG215
lui $4, 0
mult $3, $4
TAG215:
mflo $4
mthi $4
mthi $4
mflo $3
TAG216:
subu $3, $3, $3
bne $3, $3, TAG217
sll $3, $3, 8
lui $2, 14
TAG217:
mult $2, $2
bgez $2, TAG218
sll $0, $0, 0
blez $3, TAG218
TAG218:
mfhi $1
lui $3, 5
sw $3, -196($1)
sltiu $2, $3, 9
TAG219:
addi $1, $2, 14
mult $2, $2
bltz $1, TAG220
multu $2, $2
TAG220:
sltu $3, $1, $1
divu $1, $1
and $1, $1, $1
bltz $3, TAG221
TAG221:
lhu $2, 0($1)
bne $1, $1, TAG222
lb $1, 0($1)
srav $1, $1, $1
TAG222:
mthi $1
mthi $1
lb $2, 0($1)
mult $2, $1
TAG223:
lui $4, 6
lbu $4, 0($2)
bltz $2, TAG224
sub $4, $4, $4
TAG224:
mthi $4
blez $4, TAG225
mflo $1
lbu $4, 0($4)
TAG225:
lw $4, 0($4)
nor $2, $4, $4
lui $3, 7
mflo $4
TAG226:
lw $1, 0($4)
sb $1, 0($4)
bgtz $1, TAG227
and $2, $1, $1
TAG227:
addu $4, $2, $2
srlv $1, $2, $4
lui $3, 2
mtlo $3
TAG228:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 12
divu $2, $3
TAG229:
addiu $3, $3, 9
bne $3, $3, TAG230
addu $4, $3, $3
lui $4, 2
TAG230:
lui $4, 0
lhu $1, 0($4)
mult $4, $4
sltiu $1, $4, 11
TAG231:
sb $1, 0($1)
mfhi $4
or $2, $1, $1
mfhi $1
TAG232:
beq $1, $1, TAG233
lb $2, 0($1)
bne $1, $2, TAG233
slti $4, $2, 0
TAG233:
lui $4, 3
lui $3, 3
and $3, $4, $3
mflo $3
TAG234:
bgtz $3, TAG235
mult $3, $3
bne $3, $3, TAG235
lui $1, 1
TAG235:
sll $0, $0, 0
sllv $1, $1, $1
bltz $1, TAG236
mthi $1
TAG236:
lui $4, 4
sll $0, $0, 0
lui $2, 11
beq $1, $2, TAG237
TAG237:
mfhi $1
mtlo $2
mthi $1
or $2, $2, $2
TAG238:
lui $3, 5
sll $0, $0, 0
slti $3, $2, 13
mflo $4
TAG239:
mflo $4
lui $1, 0
sllv $1, $4, $4
sll $0, $0, 0
TAG240:
beq $2, $2, TAG241
addiu $2, $2, 15
bne $2, $2, TAG241
lui $4, 15
TAG241:
bne $4, $4, TAG242
mflo $3
addiu $1, $3, 6
sll $0, $0, 0
TAG242:
bgtz $1, TAG243
slt $1, $1, $1
sw $1, 0($1)
slt $2, $1, $1
TAG243:
mthi $2
mfhi $4
lui $1, 15
bne $2, $4, TAG244
TAG244:
mflo $1
beq $1, $1, TAG245
subu $4, $1, $1
lui $2, 4
TAG245:
sltu $4, $2, $2
lhu $3, 0($4)
multu $3, $2
mtlo $4
TAG246:
bne $3, $3, TAG247
srl $1, $3, 9
beq $1, $1, TAG247
slti $2, $3, 6
TAG247:
mfhi $2
xor $4, $2, $2
sub $4, $2, $2
multu $2, $4
TAG248:
bgtz $4, TAG249
mfhi $4
srav $2, $4, $4
andi $3, $2, 5
TAG249:
lbu $4, 0($3)
mthi $4
subu $3, $3, $3
sh $3, 0($4)
TAG250:
multu $3, $3
bne $3, $3, TAG251
addi $1, $3, 5
multu $3, $3
TAG251:
lbu $2, 0($1)
bltz $1, TAG252
sllv $3, $1, $1
bgez $2, TAG252
TAG252:
mtlo $3
multu $3, $3
bgez $3, TAG253
multu $3, $3
TAG253:
sll $0, $0, 0
sb $1, 0($1)
lui $4, 4
divu $3, $1
TAG254:
mfhi $3
mthi $4
mthi $4
lui $3, 3
TAG255:
ori $2, $3, 11
addiu $2, $3, 6
mfhi $4
lui $4, 4
TAG256:
div $4, $4
bgtz $4, TAG257
subu $4, $4, $4
mtlo $4
TAG257:
mfhi $1
lui $2, 15
mtlo $4
slt $2, $4, $1
TAG258:
lhu $1, 0($2)
bne $1, $1, TAG259
mflo $2
multu $2, $2
TAG259:
multu $2, $2
sllv $3, $2, $2
multu $2, $3
mflo $3
TAG260:
lw $3, 0($3)
beq $3, $3, TAG261
mfhi $3
sllv $2, $3, $3
TAG261:
bltz $2, TAG262
mtlo $2
sb $2, 0($2)
bltz $2, TAG262
TAG262:
mult $2, $2
lh $2, 0($2)
mflo $2
lh $1, 0($2)
TAG263:
lbu $1, 0($1)
lb $1, 0($1)
addu $1, $1, $1
addu $2, $1, $1
TAG264:
lhu $3, 0($2)
sb $2, 0($2)
mflo $4
sh $4, 0($3)
TAG265:
lhu $1, 0($4)
lui $1, 2
bgez $1, TAG266
sh $1, 0($4)
TAG266:
div $1, $1
div $1, $1
sll $0, $0, 0
bne $1, $1, TAG267
TAG267:
lui $4, 5
bgtz $4, TAG268
sll $0, $0, 0
mtlo $1
TAG268:
lui $1, 7
bltz $3, TAG269
mtlo $3
addu $2, $1, $1
TAG269:
multu $2, $2
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG270:
andi $3, $3, 5
mtlo $3
bgtz $3, TAG271
mtlo $3
TAG271:
lui $4, 12
ori $3, $4, 14
sllv $4, $4, $3
blez $4, TAG272
TAG272:
sw $4, 0($4)
addiu $2, $4, 14
lhu $4, 0($2)
sw $2, 0($4)
TAG273:
mfhi $2
xori $3, $4, 9
multu $2, $4
lb $4, 0($4)
TAG274:
sh $4, 0($4)
lb $3, 0($4)
bne $4, $4, TAG275
lui $3, 9
TAG275:
mfhi $2
mult $3, $2
mtlo $3
bgtz $3, TAG276
TAG276:
subu $1, $2, $2
mfhi $4
mult $4, $2
lh $1, 0($2)
TAG277:
divu $1, $1
mthi $1
addu $1, $1, $1
subu $2, $1, $1
TAG278:
addu $2, $2, $2
sw $2, 0($2)
bne $2, $2, TAG279
sw $2, 0($2)
TAG279:
mfhi $2
sb $2, 0($2)
addu $3, $2, $2
lui $1, 2
TAG280:
mthi $1
mfhi $2
sll $0, $0, 0
sltiu $3, $1, 15
TAG281:
sh $3, 0($3)
lui $2, 3
bne $3, $3, TAG282
lhu $3, 0($3)
TAG282:
mfhi $1
sllv $2, $1, $3
mult $3, $3
sll $0, $0, 0
TAG283:
mfhi $4
mfhi $1
sb $1, 0($4)
mtlo $2
TAG284:
beq $1, $1, TAG285
multu $1, $1
lui $1, 13
blez $1, TAG285
TAG285:
addiu $1, $1, 11
addiu $4, $1, 14
beq $4, $1, TAG286
mtlo $1
TAG286:
slti $3, $4, 14
mflo $2
lw $4, 0($3)
mfhi $4
TAG287:
lui $1, 13
bltz $1, TAG288
mflo $3
mflo $1
TAG288:
lb $4, 0($1)
mflo $4
xori $2, $1, 3
sb $1, 0($4)
TAG289:
andi $1, $2, 14
srav $2, $1, $2
mfhi $4
mult $2, $2
TAG290:
sw $4, 0($4)
mflo $3
bgtz $4, TAG291
sh $4, 0($4)
TAG291:
sra $1, $3, 5
lui $4, 1
sll $0, $0, 0
mflo $1
TAG292:
mult $1, $1
bne $1, $1, TAG293
mtlo $1
mflo $3
TAG293:
lw $1, 0($3)
lui $2, 11
addu $1, $3, $1
blez $1, TAG294
TAG294:
xor $4, $1, $1
lui $1, 10
lui $3, 10
lui $1, 10
TAG295:
blez $1, TAG296
andi $4, $1, 11
sll $0, $0, 0
sltiu $4, $4, 3
TAG296:
lbu $2, 0($4)
mtlo $2
lui $4, 7
mult $4, $4
TAG297:
beq $4, $4, TAG298
andi $1, $4, 10
mult $4, $1
bne $4, $1, TAG298
TAG298:
lb $4, 0($1)
lb $2, 0($1)
bltz $4, TAG299
lui $1, 15
TAG299:
sll $4, $1, 14
mult $1, $4
blez $1, TAG300
slti $1, $4, 0
TAG300:
mflo $1
nor $3, $1, $1
sh $1, 0($1)
lw $3, 0($1)
TAG301:
multu $3, $3
lui $2, 12
sll $0, $0, 0
beq $2, $2, TAG302
TAG302:
sll $0, $0, 0
sltu $2, $2, $2
mfhi $2
bgtz $3, TAG303
TAG303:
mflo $3
nor $3, $3, $3
mtlo $3
bgtz $3, TAG304
TAG304:
mflo $2
slti $3, $2, 0
bne $3, $3, TAG305
lh $4, 1($2)
TAG305:
sb $4, 0($4)
lh $1, 0($4)
bgtz $1, TAG306
multu $1, $4
TAG306:
mtlo $1
sw $1, 0($1)
sb $1, 0($1)
sltu $2, $1, $1
TAG307:
lui $3, 15
mfhi $3
sltu $4, $2, $2
mthi $3
TAG308:
mfhi $1
or $4, $4, $1
sb $4, 0($1)
beq $1, $1, TAG309
TAG309:
mult $4, $4
andi $3, $4, 6
mfhi $1
bgez $3, TAG310
TAG310:
mflo $3
ori $3, $3, 13
bne $3, $3, TAG311
lbu $4, 0($3)
TAG311:
lbu $3, 0($4)
sh $3, 0($4)
lui $1, 13
sub $4, $3, $3
TAG312:
bne $4, $4, TAG313
and $2, $4, $4
add $4, $4, $2
mthi $4
TAG313:
mthi $4
addi $2, $4, 3
nor $2, $4, $2
bgtz $4, TAG314
TAG314:
div $2, $2
lui $3, 11
div $3, $2
lui $4, 11
TAG315:
bltz $4, TAG316
mthi $4
lui $4, 3
sll $0, $0, 0
TAG316:
sllv $3, $4, $4
sll $0, $0, 0
lui $1, 7
mfhi $1
TAG317:
lui $1, 2
mfhi $4
sll $0, $0, 0
lui $3, 13
TAG318:
mtlo $3
sltu $2, $3, $3
bgtz $3, TAG319
sll $0, $0, 0
TAG319:
mtlo $3
mflo $4
andi $2, $4, 9
bne $4, $3, TAG320
TAG320:
lui $1, 11
mthi $2
bltz $1, TAG321
sh $1, 0($2)
TAG321:
bne $1, $1, TAG322
srl $4, $1, 5
slt $2, $1, $1
sll $0, $0, 0
TAG322:
bgez $2, TAG323
lui $2, 3
sllv $2, $2, $2
bgtz $2, TAG323
TAG323:
sll $3, $2, 10
lui $3, 8
sllv $3, $3, $3
mthi $2
TAG324:
blez $3, TAG325
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG325:
bne $4, $4, TAG326
sll $0, $0, 0
sltiu $2, $4, 15
addu $3, $4, $4
TAG326:
sltu $3, $3, $3
bne $3, $3, TAG327
sw $3, 0($3)
beq $3, $3, TAG327
TAG327:
mflo $2
mthi $2
sra $4, $2, 0
mflo $2
TAG328:
bne $2, $2, TAG329
sll $0, $0, 0
slt $1, $2, $2
mtlo $2
TAG329:
mult $1, $1
sllv $3, $1, $1
sllv $2, $3, $3
bne $3, $2, TAG330
TAG330:
mthi $2
sh $2, 0($2)
bne $2, $2, TAG331
lw $2, 0($2)
TAG331:
multu $2, $2
beq $2, $2, TAG332
or $3, $2, $2
lui $2, 2
TAG332:
slt $4, $2, $2
bne $4, $4, TAG333
lui $2, 12
multu $2, $2
TAG333:
bltz $2, TAG334
lui $2, 2
sll $0, $0, 0
beq $1, $1, TAG334
TAG334:
mthi $1
sb $1, 0($1)
lw $2, 0($1)
multu $2, $1
TAG335:
mfhi $2
sb $2, 0($2)
lh $1, 0($2)
blez $2, TAG336
TAG336:
mthi $1
sll $3, $1, 5
sw $1, 0($3)
bltz $1, TAG337
TAG337:
lb $2, 0($3)
bne $2, $2, TAG338
sh $2, 0($3)
sltiu $3, $2, 6
TAG338:
ori $3, $3, 11
sltu $4, $3, $3
mthi $3
mflo $4
TAG339:
bne $4, $4, TAG340
lui $1, 8
mflo $4
lui $2, 13
TAG340:
sra $4, $2, 12
mtlo $4
sh $2, -208($4)
andi $3, $4, 0
TAG341:
bgtz $3, TAG342
lh $1, 0($3)
lbu $2, 0($1)
mult $2, $3
TAG342:
mtlo $2
addi $4, $2, 10
blez $2, TAG343
xori $2, $2, 2
TAG343:
sltiu $3, $2, 13
bne $3, $2, TAG344
mult $2, $3
lhu $4, 0($2)
TAG344:
mult $4, $4
ori $2, $4, 3
mult $4, $2
bltz $2, TAG345
TAG345:
andi $4, $2, 9
beq $2, $2, TAG346
mthi $2
mfhi $4
TAG346:
or $1, $4, $4
slti $1, $4, 1
bltz $1, TAG347
lb $2, 0($4)
TAG347:
xori $4, $2, 0
srav $1, $2, $2
mthi $1
lh $2, 0($1)
TAG348:
lh $1, 0($2)
xor $1, $1, $1
lhu $2, 0($1)
blez $2, TAG349
TAG349:
lui $3, 14
beq $3, $3, TAG350
lhu $1, 0($2)
multu $3, $2
TAG350:
nor $1, $1, $1
srlv $4, $1, $1
addiu $3, $1, 7
bltz $1, TAG351
TAG351:
mthi $3
lbu $1, 0($3)
nor $1, $3, $3
blez $1, TAG352
TAG352:
xori $4, $1, 6
bne $1, $1, TAG353
sll $1, $4, 7
beq $1, $4, TAG353
TAG353:
multu $1, $1
sllv $3, $1, $1
sw $3, 128($1)
mflo $1
TAG354:
mthi $1
divu $1, $1
mfhi $2
bne $1, $1, TAG355
TAG355:
mflo $2
blez $2, TAG356
lui $4, 0
lbu $1, 0($2)
TAG356:
xori $4, $1, 11
sw $4, -244($4)
mfhi $4
nor $1, $1, $4
TAG357:
bgtz $1, TAG358
xori $3, $1, 12
sra $1, $1, 8
sw $3, 1($1)
TAG358:
mflo $3
lh $3, 1($1)
mtlo $3
addiu $3, $3, 6
TAG359:
addiu $1, $3, 15
divu $1, $3
beq $1, $3, TAG360
srlv $1, $1, $3
TAG360:
beq $1, $1, TAG361
lui $4, 7
or $1, $1, $4
mtlo $1
TAG361:
addu $4, $1, $1
multu $1, $4
addu $3, $1, $4
slti $1, $1, 1
TAG362:
lui $2, 0
sll $2, $1, 7
mthi $2
subu $3, $1, $1
TAG363:
multu $3, $3
blez $3, TAG364
lui $2, 4
lui $1, 13
TAG364:
mtlo $1
sb $1, 0($1)
lui $4, 14
sw $1, 0($1)
TAG365:
lui $1, 5
srlv $3, $1, $4
mtlo $1
bgez $1, TAG366
TAG366:
and $2, $3, $3
bne $3, $2, TAG367
srl $1, $2, 9
bne $2, $1, TAG367
TAG367:
mthi $1
bne $1, $1, TAG368
sh $1, -640($1)
div $1, $1
TAG368:
lui $3, 0
sw $1, 0($3)
lbu $1, 0($3)
mthi $1
TAG369:
addiu $1, $1, 0
beq $1, $1, TAG370
andi $1, $1, 5
sltiu $3, $1, 12
TAG370:
bgez $3, TAG371
sb $3, 0($3)
lui $1, 0
mthi $3
TAG371:
sub $2, $1, $1
bne $2, $1, TAG372
lb $2, 0($2)
sh $1, 0($1)
TAG372:
beq $2, $2, TAG373
lui $1, 6
mflo $4
beq $1, $4, TAG373
TAG373:
sll $0, $0, 0
mthi $3
nor $2, $4, $4
mult $3, $3
TAG374:
blez $2, TAG375
sll $2, $2, 10
mthi $2
mtlo $2
TAG375:
bgez $2, TAG376
mtlo $2
mfhi $4
mfhi $2
TAG376:
beq $2, $2, TAG377
multu $2, $2
and $2, $2, $2
divu $2, $2
TAG377:
bgez $2, TAG378
lui $3, 5
lui $1, 5
bgtz $3, TAG378
TAG378:
lui $2, 10
xor $2, $2, $2
bne $2, $2, TAG379
andi $1, $2, 3
TAG379:
lui $1, 15
bltz $1, TAG380
sra $2, $1, 0
mfhi $1
TAG380:
blez $1, TAG381
sw $1, 0($1)
sltu $4, $1, $1
lbu $4, 0($4)
TAG381:
multu $4, $4
bgtz $4, TAG382
lui $4, 15
sll $0, $0, 0
TAG382:
sra $4, $4, 6
addiu $3, $4, 15
mflo $1
slti $2, $3, 13
TAG383:
bgez $2, TAG384
sw $2, 0($2)
lw $1, 0($2)
sb $2, 0($2)
TAG384:
srav $1, $1, $1
sll $3, $1, 14
bgtz $1, TAG385
mult $1, $1
TAG385:
lui $2, 4
addu $3, $2, $3
bne $2, $3, TAG386
lui $2, 2
TAG386:
bgez $2, TAG387
mfhi $2
lw $2, 0($2)
lhu $2, 0($2)
TAG387:
add $3, $2, $2
mflo $3
srl $2, $2, 8
bgez $3, TAG388
TAG388:
sb $2, 0($2)
and $1, $2, $2
lui $3, 5
mflo $3
TAG389:
xor $3, $3, $3
sb $3, 0($3)
beq $3, $3, TAG390
ori $3, $3, 11
TAG390:
bne $3, $3, TAG391
mtlo $3
blez $3, TAG391
mtlo $3
TAG391:
bltz $3, TAG392
lui $3, 15
div $3, $3
sll $0, $0, 0
TAG392:
mtlo $3
mfhi $1
sh $3, 0($1)
srlv $3, $1, $1
TAG393:
lw $1, 0($3)
mflo $2
mult $2, $3
add $1, $1, $3
TAG394:
sra $1, $1, 1
mthi $1
mtlo $1
ori $4, $1, 9
TAG395:
lb $4, 0($4)
mtlo $4
mfhi $1
mfhi $4
TAG396:
lh $4, 0($4)
bltz $4, TAG397
lh $3, 0($4)
sltu $3, $4, $4
TAG397:
beq $3, $3, TAG398
lui $4, 5
sw $3, 0($3)
bne $4, $3, TAG398
TAG398:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 7
xori $4, $2, 11
TAG399:
sll $0, $0, 0
mtlo $4
div $4, $4
sh $3, 0($3)
TAG400:
mthi $3
beq $3, $3, TAG401
mtlo $3
lbu $1, 0($3)
TAG401:
mtlo $1
mtlo $1
srav $2, $1, $1
sltu $2, $1, $2
TAG402:
beq $2, $2, TAG403
lui $3, 1
mflo $2
srlv $3, $2, $3
TAG403:
mflo $2
mtlo $2
sw $3, 0($2)
mult $2, $3
TAG404:
mtlo $2
lui $4, 15
mfhi $1
mult $2, $1
TAG405:
bgtz $1, TAG406
mflo $1
mthi $1
andi $1, $1, 14
TAG406:
mult $1, $1
mfhi $1
mtlo $1
sw $1, 0($1)
TAG407:
sb $1, 0($1)
slt $4, $1, $1
bgtz $1, TAG408
multu $4, $4
TAG408:
mfhi $2
add $3, $4, $4
bltz $3, TAG409
lui $1, 10
TAG409:
lui $4, 2
multu $1, $4
sllv $3, $4, $4
sltiu $3, $3, 8
TAG410:
sltiu $2, $3, 6
multu $2, $2
mflo $4
lbu $2, 0($4)
TAG411:
mfhi $2
mfhi $2
blez $2, TAG412
xori $3, $2, 2
TAG412:
xori $3, $3, 14
mfhi $3
sh $3, 0($3)
bne $3, $3, TAG413
TAG413:
lui $3, 0
multu $3, $3
sh $3, 0($3)
mthi $3
TAG414:
mfhi $1
beq $3, $3, TAG415
mtlo $1
add $1, $1, $1
TAG415:
blez $1, TAG416
ori $4, $1, 3
sh $1, 0($1)
add $3, $4, $4
TAG416:
multu $3, $3
andi $1, $3, 6
mfhi $3
sltu $3, $3, $3
TAG417:
bgtz $3, TAG418
mthi $3
mult $3, $3
bgez $3, TAG418
TAG418:
mflo $2
xori $2, $3, 3
sb $2, 0($2)
mult $3, $3
TAG419:
mflo $3
lb $3, 0($2)
lui $1, 7
mfhi $1
TAG420:
beq $1, $1, TAG421
xor $4, $1, $1
lw $3, 0($1)
sw $4, 0($3)
TAG421:
sb $3, 0($3)
addiu $1, $3, 8
addu $1, $1, $1
divu $1, $3
TAG422:
blez $1, TAG423
addiu $3, $1, 14
mtlo $1
sra $1, $3, 11
TAG423:
multu $1, $1
mult $1, $1
ori $1, $1, 3
mfhi $4
TAG424:
mthi $4
sb $4, 0($4)
mult $4, $4
bgez $4, TAG425
TAG425:
lui $2, 9
blez $2, TAG426
divu $2, $2
or $4, $2, $4
TAG426:
sll $0, $0, 0
mtlo $4
mflo $2
srl $2, $2, 12
TAG427:
beq $2, $2, TAG428
andi $3, $2, 6
mflo $4
lui $3, 10
TAG428:
mfhi $4
mfhi $3
blez $3, TAG429
lhu $1, 0($3)
TAG429:
lui $4, 6
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG430:
sll $4, $3, 8
sw $3, 0($3)
lh $2, 0($4)
mthi $4
TAG431:
srl $1, $2, 11
lui $2, 3
multu $2, $2
beq $2, $2, TAG432
TAG432:
lui $4, 3
blez $2, TAG433
mfhi $3
beq $2, $3, TAG433
TAG433:
mfhi $3
mflo $1
mfhi $1
bgez $3, TAG434
TAG434:
andi $3, $1, 13
lbu $1, 0($1)
mtlo $1
bltz $1, TAG435
TAG435:
lui $4, 5
sltiu $1, $1, 0
mtlo $4
sw $1, 0($1)
TAG436:
lb $2, 0($1)
sh $1, 0($2)
srl $3, $1, 10
sll $1, $1, 15
TAG437:
multu $1, $1
mflo $4
slti $4, $1, 3
bltz $4, TAG438
TAG438:
div $4, $4
sltu $3, $4, $4
bgez $3, TAG439
or $2, $4, $4
TAG439:
bgez $2, TAG440
slti $3, $2, 14
sb $2, 0($3)
mfhi $4
TAG440:
sllv $3, $4, $4
mflo $4
sh $4, 0($3)
mthi $3
TAG441:
mfhi $3
lui $1, 7
mfhi $3
lui $2, 5
TAG442:
sll $0, $0, 0
bltz $2, TAG443
sra $2, $2, 4
slti $3, $2, 1
TAG443:
lui $4, 3
sh $4, 0($3)
mthi $4
srav $1, $3, $4
TAG444:
sllv $4, $1, $1
lw $1, 0($4)
lui $1, 10
bne $1, $1, TAG445
TAG445:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG446
TAG446:
lui $2, 9
sll $0, $0, 0
mflo $2
beq $2, $1, TAG447
TAG447:
lui $2, 9
xor $4, $2, $2
sll $2, $2, 7
multu $2, $2
TAG448:
sll $0, $0, 0
blez $2, TAG449
mult $2, $2
mtlo $1
TAG449:
mflo $2
mthi $2
sll $0, $0, 0
mtlo $1
TAG450:
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
and $2, $2, $2
TAG451:
sltu $1, $2, $2
mfhi $4
addiu $1, $2, 1
divu $1, $2
TAG452:
lui $3, 7
lui $3, 13
mtlo $1
mtlo $3
TAG453:
mtlo $3
mfhi $2
bne $2, $2, TAG454
sll $0, $0, 0
TAG454:
bne $2, $2, TAG455
lui $1, 14
mflo $3
ori $2, $2, 2
TAG455:
mfhi $1
div $2, $2
divu $1, $2
sltiu $2, $2, 7
TAG456:
srav $2, $2, $2
sb $2, 0($2)
andi $1, $2, 11
mflo $3
TAG457:
sh $3, 0($3)
lui $2, 1
lui $2, 6
slti $1, $2, 0
TAG458:
addiu $2, $1, 13
mfhi $1
bne $1, $1, TAG459
lui $3, 3
TAG459:
mflo $3
lui $1, 7
mtlo $3
sll $0, $0, 0
TAG460:
addiu $3, $4, 2
lui $2, 7
beq $3, $3, TAG461
addu $3, $2, $2
TAG461:
andi $4, $3, 14
sll $3, $3, 6
mtlo $3
lui $4, 10
TAG462:
addu $1, $4, $4
srav $1, $1, $1
bltz $1, TAG463
sll $0, $0, 0
TAG463:
sll $0, $0, 0
lui $2, 13
mult $1, $3
mflo $4
TAG464:
sw $4, 0($4)
sw $4, 0($4)
sw $4, 0($4)
slti $3, $4, 9
TAG465:
subu $4, $3, $3
mtlo $4
sh $3, 0($4)
bltz $3, TAG466
TAG466:
multu $4, $4
sw $4, 0($4)
mthi $4
mtlo $4
TAG467:
bgtz $4, TAG468
ori $1, $4, 0
bne $4, $4, TAG468
multu $4, $1
TAG468:
lh $1, 0($1)
mult $1, $1
sw $1, 0($1)
multu $1, $1
TAG469:
mfhi $2
lui $3, 13
and $4, $2, $3
bgtz $4, TAG470
TAG470:
mthi $4
mthi $4
lui $3, 5
beq $4, $4, TAG471
TAG471:
multu $3, $3
divu $3, $3
ori $3, $3, 14
bltz $3, TAG472
TAG472:
addu $3, $3, $3
mult $3, $3
div $3, $3
sll $0, $0, 0
TAG473:
bne $3, $3, TAG474
mflo $4
lui $2, 7
lui $4, 3
TAG474:
mthi $4
sltiu $3, $4, 15
beq $4, $3, TAG475
sh $3, 0($3)
TAG475:
multu $3, $3
sh $3, 0($3)
lui $1, 10
lui $4, 0
TAG476:
beq $4, $4, TAG477
sltiu $2, $4, 3
mflo $3
mthi $2
TAG477:
mult $3, $3
lui $1, 6
bne $3, $1, TAG478
subu $2, $1, $3
TAG478:
div $2, $2
bne $2, $2, TAG479
lui $4, 7
divu $4, $4
TAG479:
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
nor $3, $4, $4
TAG480:
or $3, $3, $3
sll $0, $0, 0
xor $1, $2, $3
addiu $4, $2, 3
TAG481:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG482
TAG482:
mtlo $4
lui $1, 8
lui $1, 5
mtlo $4
TAG483:
mtlo $1
mfhi $1
xor $1, $1, $1
lb $4, 0($1)
TAG484:
lui $2, 5
lui $1, 3
sll $0, $0, 0
mflo $2
TAG485:
divu $2, $2
srlv $3, $2, $2
sll $0, $0, 0
lui $4, 9
TAG486:
lui $3, 2
addiu $1, $4, 10
mfhi $2
sh $2, 0($2)
TAG487:
lbu $1, 0($2)
mtlo $2
mult $1, $2
mthi $2
TAG488:
bgtz $1, TAG489
sh $1, 0($1)
lw $2, 0($1)
mfhi $2
TAG489:
mtlo $2
blez $2, TAG490
multu $2, $2
sub $2, $2, $2
TAG490:
blez $2, TAG491
mflo $3
nor $3, $2, $2
sb $2, 0($3)
TAG491:
multu $3, $3
lhu $1, 0($3)
sw $3, 0($1)
bgez $3, TAG492
TAG492:
sra $4, $1, 0
sw $4, 0($1)
bne $1, $4, TAG493
mthi $4
TAG493:
mult $4, $4
bne $4, $4, TAG494
sh $4, 0($4)
addu $3, $4, $4
TAG494:
andi $4, $3, 15
addi $2, $3, 12
lui $3, 4
sw $3, 0($2)
TAG495:
addiu $2, $3, 4
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG496
TAG496:
sll $0, $0, 0
blez $2, TAG497
mflo $4
lhu $2, 0($1)
TAG497:
lh $3, 0($2)
bne $2, $3, TAG498
mfhi $3
mthi $2
TAG498:
addiu $4, $3, 14
lui $4, 4
mflo $4
bltz $4, TAG499
TAG499:
xori $3, $4, 15
mfhi $3
sh $3, 0($3)
srav $3, $3, $3
TAG500:
sh $3, 0($3)
sb $3, 0($3)
bgez $3, TAG501
mthi $3
TAG501:
mthi $3
lbu $2, 0($3)
mthi $2
mflo $2
TAG502:
lb $1, 0($2)
bne $2, $1, TAG503
lui $1, 7
sll $4, $1, 4
TAG503:
bgez $4, TAG504
mflo $2
xori $3, $2, 14
mtlo $2
TAG504:
blez $3, TAG505
addiu $4, $3, 2
srlv $3, $3, $3
slt $2, $4, $3
TAG505:
bgez $2, TAG506
lw $2, 0($2)
bltz $2, TAG506
mthi $2
TAG506:
bne $2, $2, TAG507
mult $2, $2
xor $3, $2, $2
ori $1, $2, 10
TAG507:
or $4, $1, $1
mflo $3
mtlo $4
mfhi $4
TAG508:
bgez $4, TAG509
slti $4, $4, 5
blez $4, TAG509
lh $4, 0($4)
TAG509:
andi $3, $4, 3
sb $4, 0($3)
mflo $3
lui $4, 3
TAG510:
bltz $4, TAG511
sll $3, $4, 9
sra $4, $3, 6
xori $4, $4, 10
TAG511:
sll $0, $0, 0
bne $4, $4, TAG512
sll $0, $0, 0
beq $4, $4, TAG512
TAG512:
lui $3, 9
beq $4, $4, TAG513
sll $0, $0, 0
beq $1, $1, TAG513
TAG513:
xor $2, $1, $1
mfhi $2
lui $3, 4
bgez $2, TAG514
TAG514:
sll $0, $0, 0
multu $3, $2
bltz $3, TAG515
mthi $3
TAG515:
lb $3, 0($2)
addiu $4, $2, 5
bne $2, $3, TAG516
sb $3, 0($2)
TAG516:
sb $4, 0($4)
bltz $4, TAG517
div $4, $4
bltz $4, TAG517
TAG517:
sb $4, 0($4)
mfhi $3
div $4, $4
lui $3, 0
TAG518:
sw $3, 0($3)
addi $3, $3, 1
div $3, $3
mfhi $2
TAG519:
mthi $2
addiu $2, $2, 8
sll $1, $2, 8
mthi $2
TAG520:
mfhi $2
sb $1, -2048($1)
sltiu $3, $2, 14
ori $4, $2, 11
TAG521:
xori $2, $4, 7
slt $1, $2, $2
sra $1, $2, 1
addu $3, $2, $1
TAG522:
addiu $2, $3, 6
sh $3, 0($3)
multu $2, $2
lui $2, 8
TAG523:
xor $4, $2, $2
sra $1, $2, 6
subu $3, $4, $1
mthi $2
TAG524:
bgtz $3, TAG525
xori $2, $3, 13
lui $1, 2
beq $1, $1, TAG525
TAG525:
divu $1, $1
sll $0, $0, 0
bgtz $4, TAG526
addu $4, $1, $4
TAG526:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG527
mflo $3
TAG527:
bne $3, $3, TAG528
addu $4, $3, $3
lui $2, 11
bne $2, $3, TAG528
TAG528:
srav $4, $2, $2
sll $0, $0, 0
and $2, $2, $2
mfhi $3
TAG529:
lui $1, 1
mthi $1
mtlo $3
add $2, $3, $3
TAG530:
ori $3, $2, 8
beq $3, $3, TAG531
lui $2, 8
mtlo $2
TAG531:
bgtz $2, TAG532
mtlo $2
beq $2, $2, TAG532
lui $3, 3
TAG532:
mfhi $3
lui $2, 11
sll $0, $0, 0
beq $4, $4, TAG533
TAG533:
mthi $4
bgez $4, TAG534
mfhi $2
mult $4, $2
TAG534:
addiu $2, $2, 9
beq $2, $2, TAG535
mult $2, $2
multu $2, $2
TAG535:
sll $0, $0, 0
mfhi $2
lb $3, 0($2)
bne $2, $2, TAG536
TAG536:
multu $3, $3
beq $3, $3, TAG537
xor $1, $3, $3
sh $3, 0($1)
TAG537:
bltz $1, TAG538
andi $3, $1, 5
sw $1, 0($1)
mthi $3
TAG538:
lbu $4, 0($3)
blez $4, TAG539
sra $4, $3, 4
divu $4, $3
TAG539:
andi $4, $4, 10
multu $4, $4
lhu $1, 0($4)
blez $1, TAG540
TAG540:
mult $1, $1
add $1, $1, $1
sh $1, 0($1)
sltu $3, $1, $1
TAG541:
sb $3, 0($3)
mfhi $1
bne $3, $3, TAG542
lui $4, 2
TAG542:
blez $4, TAG543
lui $4, 14
sll $0, $0, 0
lui $2, 6
TAG543:
bgez $2, TAG544
mfhi $3
sb $2, 0($2)
bgez $2, TAG544
TAG544:
addiu $2, $3, 15
sll $3, $2, 11
lw $1, -30720($3)
lui $2, 13
TAG545:
mflo $4
xor $3, $4, $4
lui $3, 4
bgez $4, TAG546
TAG546:
lui $2, 6
sll $0, $0, 0
blez $4, TAG547
sll $0, $0, 0
TAG547:
sll $4, $3, 7
lui $2, 10
xori $1, $2, 5
mflo $3
TAG548:
lhu $1, 0($3)
andi $4, $1, 14
lw $2, 0($1)
subu $3, $1, $2
TAG549:
addu $1, $3, $3
addiu $2, $1, 15
blez $3, TAG550
nor $3, $3, $1
TAG550:
andi $4, $3, 12
mult $3, $3
addiu $4, $3, 15
lhu $3, 0($4)
TAG551:
srlv $3, $3, $3
mfhi $1
mfhi $3
beq $3, $1, TAG552
TAG552:
multu $3, $3
mtlo $3
and $4, $3, $3
slti $3, $3, 4
TAG553:
nor $3, $3, $3
divu $3, $3
bne $3, $3, TAG554
sh $3, 2($3)
TAG554:
sh $3, 2($3)
bne $3, $3, TAG555
sw $3, 2($3)
bgtz $3, TAG555
TAG555:
mtlo $3
lhu $1, 2($3)
divu $3, $1
beq $3, $3, TAG556
TAG556:
mthi $1
sll $0, $0, 0
lui $1, 3
mthi $1
TAG557:
beq $1, $1, TAG558
mflo $1
sh $1, 0($1)
lui $4, 7
TAG558:
bltz $4, TAG559
lui $2, 11
bgtz $2, TAG559
sll $0, $0, 0
TAG559:
sll $0, $0, 0
sltiu $4, $2, 13
sh $4, 0($4)
lw $1, 0($4)
TAG560:
mthi $1
beq $1, $1, TAG561
mtlo $1
beq $1, $1, TAG561
TAG561:
mflo $4
lui $4, 1
bltz $4, TAG562
slti $1, $4, 14
TAG562:
lui $2, 3
mflo $3
addu $1, $2, $3
beq $1, $3, TAG563
TAG563:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $4, 9
TAG564:
bne $4, $4, TAG565
srav $2, $4, $4
lui $3, 2
sll $0, $0, 0
TAG565:
mthi $1
divu $1, $1
bgez $1, TAG566
mfhi $4
TAG566:
beq $4, $4, TAG567
sw $4, 0($4)
multu $4, $4
mflo $4
TAG567:
sltu $4, $4, $4
sh $4, 0($4)
ori $2, $4, 0
mflo $4
TAG568:
mflo $2
mfhi $1
lui $4, 13
mthi $2
TAG569:
mflo $4
lui $2, 2
bltz $4, TAG570
ori $2, $2, 0
TAG570:
divu $2, $2
mthi $2
bgtz $2, TAG571
sra $4, $2, 3
TAG571:
bgez $4, TAG572
addiu $4, $4, 13
lui $4, 10
blez $4, TAG572
TAG572:
div $4, $4
bgez $4, TAG573
lhu $3, -16397($4)
mult $4, $4
TAG573:
mflo $1
mflo $2
bne $2, $2, TAG574
sb $3, 0($1)
TAG574:
slti $4, $2, 12
lb $2, 0($2)
lui $1, 3
mthi $1
TAG575:
lui $4, 6
lui $1, 9
mult $1, $1
addu $1, $4, $4
TAG576:
sltiu $1, $1, 12
mtlo $1
sb $1, 0($1)
sb $1, 0($1)
TAG577:
lui $3, 3
sll $0, $0, 0
beq $3, $3, TAG578
mfhi $3
TAG578:
mthi $3
mthi $3
lui $2, 2
bgez $3, TAG579
TAG579:
sra $3, $2, 13
divu $2, $3
bgez $3, TAG580
lh $2, 0($3)
TAG580:
lui $2, 2
mthi $2
slt $1, $2, $2
sll $0, $0, 0
TAG581:
lui $4, 14
bltz $4, TAG582
sll $0, $0, 0
bgtz $1, TAG582
TAG582:
div $3, $3
sll $1, $3, 0
sh $3, 0($1)
mtlo $3
TAG583:
srav $1, $1, $1
slti $1, $1, 11
mthi $1
mtlo $1
TAG584:
bgtz $1, TAG585
addiu $1, $1, 0
bgez $1, TAG585
srl $3, $1, 2
TAG585:
mfhi $4
srl $2, $3, 11
sw $2, 0($3)
mflo $2
TAG586:
sb $2, 0($2)
lbu $4, 0($2)
lbu $1, 0($4)
ori $3, $2, 10
TAG587:
lui $4, 2
beq $3, $4, TAG588
sll $0, $0, 0
sll $3, $3, 11
TAG588:
blez $3, TAG589
mfhi $2
sll $2, $2, 2
beq $3, $2, TAG589
TAG589:
srlv $4, $2, $2
slt $4, $2, $4
bne $4, $4, TAG590
mtlo $4
TAG590:
blez $4, TAG591
mflo $1
bltz $1, TAG591
mtlo $1
TAG591:
mult $1, $1
mflo $1
blez $1, TAG592
sltu $2, $1, $1
TAG592:
sw $2, 0($2)
sw $2, 0($2)
sb $2, 0($2)
sltiu $4, $2, 14
TAG593:
subu $4, $4, $4
mflo $3
lh $4, 0($3)
bne $4, $4, TAG594
TAG594:
lw $2, 0($4)
mfhi $4
beq $4, $4, TAG595
lbu $3, 0($4)
TAG595:
bltz $3, TAG596
mthi $3
lh $4, 0($3)
and $4, $3, $4
TAG596:
addiu $2, $4, 0
sra $3, $2, 9
sllv $4, $2, $2
lui $3, 0
TAG597:
mult $3, $3
bgez $3, TAG598
mthi $3
mflo $3
TAG598:
xor $2, $3, $3
bne $2, $3, TAG599
lui $4, 6
lui $3, 0
TAG599:
lui $4, 5
sll $0, $0, 0
lui $1, 14
srlv $2, $4, $1
TAG600:
sll $0, $0, 0
subu $4, $2, $2
srav $3, $2, $2
srlv $4, $2, $2
TAG601:
sra $1, $4, 8
srlv $2, $4, $1
mflo $3
bgtz $4, TAG602
TAG602:
subu $2, $3, $3
mflo $2
and $3, $2, $3
beq $3, $2, TAG603
TAG603:
lbu $2, 0($3)
mthi $2
sltiu $1, $3, 8
addiu $4, $1, 12
TAG604:
mflo $2
lb $1, 0($4)
mtlo $4
sb $1, 0($2)
TAG605:
beq $1, $1, TAG606
slti $2, $1, 0
mtlo $2
ori $4, $2, 1
TAG606:
sllv $3, $4, $4
div $3, $4
multu $3, $4
bne $4, $4, TAG607
TAG607:
andi $2, $3, 15
sra $1, $2, 4
lui $3, 10
subu $4, $3, $3
TAG608:
multu $4, $4
bgtz $4, TAG609
lh $2, 0($4)
mthi $4
TAG609:
lui $4, 12
lui $3, 0
beq $4, $2, TAG610
sll $0, $0, 0
TAG610:
sltu $2, $3, $3
mfhi $1
mult $3, $3
mflo $3
TAG611:
bgtz $3, TAG612
sll $2, $3, 8
sub $2, $3, $2
lui $1, 15
TAG612:
div $1, $1
divu $1, $1
divu $1, $1
multu $1, $1
TAG613:
divu $1, $1
mtlo $1
or $2, $1, $1
multu $1, $1
TAG614:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG615:
addu $3, $4, $4
mfhi $1
mthi $1
mfhi $2
TAG616:
mflo $4
xori $1, $2, 10
lw $2, 0($4)
or $3, $4, $2
TAG617:
mtlo $3
lui $1, 8
sllv $3, $1, $1
xor $4, $1, $3
TAG618:
lbu $1, 0($4)
beq $4, $4, TAG619
mthi $1
add $3, $4, $4
TAG619:
divu $3, $3
sll $0, $0, 0
sltiu $3, $3, 8
sw $3, 0($3)
TAG620:
mfhi $1
lw $3, 0($1)
mtlo $3
beq $1, $1, TAG621
TAG621:
mult $3, $3
bgtz $3, TAG622
lbu $4, 0($3)
mflo $3
TAG622:
slt $3, $3, $3
sb $3, 0($3)
lui $1, 3
multu $3, $3
TAG623:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
and $2, $1, $4
TAG624:
mthi $2
srlv $3, $2, $2
multu $2, $3
multu $3, $3
TAG625:
lbu $1, 0($3)
multu $1, $3
lh $3, 0($3)
bgez $1, TAG626
TAG626:
multu $3, $3
multu $3, $3
lhu $4, 0($3)
mfhi $3
TAG627:
bgtz $3, TAG628
lui $3, 6
sll $0, $0, 0
beq $2, $3, TAG628
TAG628:
sb $2, 0($2)
bne $2, $2, TAG629
mtlo $2
lui $1, 3
TAG629:
bne $1, $1, TAG630
sll $0, $0, 0
lui $4, 15
mfhi $3
TAG630:
beq $3, $3, TAG631
multu $3, $3
sw $3, 0($3)
mult $3, $3
TAG631:
mfhi $3
mthi $3
nor $3, $3, $3
lui $3, 8
TAG632:
sll $0, $0, 0
srl $3, $1, 11
xori $2, $1, 14
bltz $1, TAG633
TAG633:
divu $2, $2
divu $2, $2
bltz $2, TAG634
mfhi $3
TAG634:
mult $3, $3
srlv $4, $3, $3
sb $3, 0($4)
bne $3, $4, TAG635
TAG635:
ori $3, $4, 12
lui $1, 5
bgtz $1, TAG636
addiu $2, $3, 5
TAG636:
sb $2, 0($2)
lui $1, 11
lui $2, 5
sll $0, $0, 0
TAG637:
mtlo $2
bgez $2, TAG638
lui $3, 1
lhu $4, 0($3)
TAG638:
or $4, $4, $4
mthi $4
mult $4, $4
lw $2, 0($4)
TAG639:
slti $3, $2, 3
lui $2, 5
slti $2, $2, 14
mflo $2
TAG640:
mult $2, $2
sb $2, 0($2)
lui $3, 9
lb $1, 0($2)
TAG641:
lhu $2, 0($1)
sra $2, $1, 1
and $2, $2, $2
mtlo $2
TAG642:
sh $2, 0($2)
bne $2, $2, TAG643
lui $1, 7
mtlo $2
TAG643:
multu $1, $1
xori $4, $1, 1
sll $0, $0, 0
slt $4, $1, $4
TAG644:
lui $1, 14
beq $4, $1, TAG645
mtlo $1
sb $1, 0($4)
TAG645:
sra $1, $1, 8
blez $1, TAG646
mflo $1
lui $3, 12
TAG646:
mflo $3
nor $4, $3, $3
sll $0, $0, 0
bne $3, $4, TAG647
TAG647:
lui $2, 12
mult $2, $4
mfhi $3
mflo $4
TAG648:
mfhi $1
mthi $1
mthi $1
sll $0, $0, 0
TAG649:
sb $1, 169($1)
sh $1, 169($1)
mflo $2
sllv $2, $1, $1
TAG650:
sll $0, $0, 0
slt $1, $2, $2
mfhi $2
mthi $3
TAG651:
sb $2, 169($2)
srlv $1, $2, $2
addiu $1, $2, 7
sltiu $2, $1, 0
TAG652:
multu $2, $2
beq $2, $2, TAG653
sh $2, 0($2)
beq $2, $2, TAG653
TAG653:
mtlo $2
beq $2, $2, TAG654
sllv $1, $2, $2
mtlo $2
TAG654:
add $1, $1, $1
sw $1, 0($1)
bgtz $1, TAG655
sh $1, 0($1)
TAG655:
srlv $1, $1, $1
sub $2, $1, $1
blez $2, TAG656
multu $2, $1
TAG656:
mtlo $2
lbu $1, 0($2)
sw $1, 0($1)
lh $4, 0($2)
TAG657:
sh $4, 0($4)
addi $3, $4, 15
mult $3, $4
lui $1, 10
TAG658:
mtlo $1
beq $1, $1, TAG659
lui $4, 14
lui $2, 6
TAG659:
srl $2, $2, 11
mfhi $1
beq $1, $2, TAG660
srl $3, $2, 11
TAG660:
bne $3, $3, TAG661
mthi $3
xor $1, $3, $3
xor $2, $3, $3
TAG661:
andi $2, $2, 4
sltiu $1, $2, 5
mfhi $1
addu $2, $1, $1
TAG662:
or $3, $2, $2
mfhi $3
lhu $3, 0($2)
multu $3, $3
TAG663:
xori $4, $3, 1
mult $3, $3
lbu $3, 0($4)
sh $4, 0($3)
TAG664:
bne $3, $3, TAG665
lui $3, 1
divu $3, $3
sll $0, $0, 0
TAG665:
mfhi $1
lui $4, 15
div $3, $4
ori $3, $4, 13
TAG666:
sra $2, $3, 5
div $3, $2
bltz $2, TAG667
lui $2, 0
TAG667:
mtlo $2
lui $3, 1
sll $0, $0, 0
xor $2, $3, $3
TAG668:
bgtz $2, TAG669
multu $2, $2
mflo $3
bgez $3, TAG669
TAG669:
mtlo $3
mult $3, $3
addi $3, $3, 8
bltz $3, TAG670
TAG670:
srl $4, $3, 5
srlv $2, $4, $3
mflo $3
bgez $3, TAG671
TAG671:
mthi $3
bne $3, $3, TAG672
multu $3, $3
beq $3, $3, TAG672
TAG672:
sb $3, 0($3)
mflo $1
sh $1, 0($1)
lui $4, 10
TAG673:
sll $0, $0, 0
xori $3, $4, 7
sll $0, $0, 0
addu $4, $4, $3
TAG674:
bne $4, $4, TAG675
mtlo $4
subu $2, $4, $4
mtlo $2
TAG675:
mult $2, $2
sltu $3, $2, $2
lhu $2, 0($3)
andi $1, $2, 6
TAG676:
beq $1, $1, TAG677
srlv $4, $1, $1
blez $1, TAG677
addi $3, $4, 5
TAG677:
bne $3, $3, TAG678
mult $3, $3
and $4, $3, $3
bne $4, $3, TAG678
TAG678:
andi $3, $4, 5
lui $4, 4
mfhi $1
mthi $4
TAG679:
lhu $4, 0($1)
xori $1, $1, 0
nor $4, $1, $1
bltz $4, TAG680
TAG680:
addu $2, $4, $4
sh $2, 1($4)
sllv $1, $4, $4
lbu $1, 1($4)
TAG681:
lui $1, 14
mflo $1
nor $3, $1, $1
mtlo $1
TAG682:
mtlo $3
sll $3, $3, 14
lui $1, 2
slt $2, $1, $3
TAG683:
beq $2, $2, TAG684
subu $4, $2, $2
mflo $4
mthi $2
TAG684:
lb $1, 0($4)
sra $3, $1, 2
mthi $1
beq $3, $1, TAG685
TAG685:
addu $3, $3, $3
mtlo $3
bgtz $3, TAG686
mult $3, $3
TAG686:
addu $2, $3, $3
lui $4, 6
mtlo $4
divu $3, $2
TAG687:
divu $4, $4
beq $4, $4, TAG688
div $4, $4
lb $3, 0($4)
TAG688:
lui $3, 15
mult $3, $3
mthi $3
lui $3, 15
TAG689:
blez $3, TAG690
slt $2, $3, $3
mthi $2
sll $0, $0, 0
TAG690:
mthi $3
blez $3, TAG691
sll $0, $0, 0
srav $2, $3, $3
TAG691:
bgez $2, TAG692
divu $2, $2
div $2, $2
beq $2, $2, TAG692
TAG692:
mtlo $2
mflo $2
mult $2, $2
srlv $4, $2, $2
TAG693:
mflo $1
bne $4, $4, TAG694
sll $0, $0, 0
bgez $1, TAG694
TAG694:
mfhi $3
sh $3, -225($3)
nor $1, $3, $3
bgtz $1, TAG695
TAG695:
multu $1, $1
nor $4, $1, $1
lb $1, 226($1)
lbu $3, 31($1)
TAG696:
bgez $3, TAG697
lhu $2, -225($3)
mflo $3
beq $3, $2, TAG697
TAG697:
mfhi $2
srl $2, $3, 5
lbu $1, 0($2)
mult $2, $2
TAG698:
sh $1, 0($1)
mthi $1
mtlo $1
lui $1, 12
TAG699:
mthi $1
divu $1, $1
ori $2, $1, 4
bne $1, $1, TAG700
TAG700:
mfhi $4
bltz $4, TAG701
srav $4, $4, $4
slt $3, $4, $4
TAG701:
mthi $3
mtlo $3
sh $3, 0($3)
multu $3, $3
TAG702:
beq $3, $3, TAG703
sh $3, 0($3)
mfhi $4
lh $4, 0($4)
TAG703:
xor $4, $4, $4
mflo $1
multu $4, $1
sltiu $1, $1, 10
TAG704:
lui $1, 8
beq $1, $1, TAG705
mfhi $3
lh $1, 0($1)
TAG705:
sll $0, $0, 0
sll $1, $1, 11
beq $1, $1, TAG706
lui $2, 0
TAG706:
lui $3, 15
subu $4, $3, $3
mtlo $4
multu $3, $2
TAG707:
lhu $2, 0($4)
mfhi $3
sw $4, 0($2)
multu $3, $3
TAG708:
blez $3, TAG709
multu $3, $3
addi $3, $3, 11
lui $4, 6
TAG709:
bgez $4, TAG710
mtlo $4
bne $4, $4, TAG710
mtlo $4
TAG710:
bne $4, $4, TAG711
mtlo $4
sw $4, 0($4)
slti $2, $4, 7
TAG711:
sltiu $4, $2, 15
bne $4, $2, TAG712
divu $4, $4
mthi $4
TAG712:
sb $4, 0($4)
lb $3, 0($4)
divu $4, $4
lbu $3, 0($4)
TAG713:
blez $3, TAG714
div $3, $3
mtlo $3
mflo $3
TAG714:
mtlo $3
blez $3, TAG715
mthi $3
bne $3, $3, TAG715
TAG715:
mthi $3
divu $3, $3
mthi $3
bltz $3, TAG716
TAG716:
lb $2, 0($3)
mthi $2
nor $4, $3, $2
sb $4, 0($3)
TAG717:
mult $4, $4
beq $4, $4, TAG718
multu $4, $4
beq $4, $4, TAG718
TAG718:
slt $3, $4, $4
mtlo $3
lui $1, 12
xor $4, $3, $3
TAG719:
xori $3, $4, 11
lui $4, 5
lbu $4, 0($3)
lui $1, 4
TAG720:
lui $1, 10
blez $1, TAG721
mtlo $1
srlv $2, $1, $1
TAG721:
nor $2, $2, $2
ori $1, $2, 2
lui $3, 11
divu $3, $2
TAG722:
sll $0, $0, 0
addu $2, $4, $3
lui $3, 15
sb $2, 0($4)
TAG723:
divu $3, $3
sra $3, $3, 5
sw $3, -30720($3)
and $1, $3, $3
TAG724:
sb $1, -30720($1)
bne $1, $1, TAG725
mtlo $1
sllv $3, $1, $1
TAG725:
bgez $3, TAG726
lbu $2, -30720($3)
mthi $3
lhu $1, 0($3)
TAG726:
blez $1, TAG727
lhu $2, -30720($1)
addu $4, $2, $1
sh $2, -30720($1)
TAG727:
lui $3, 8
bne $4, $3, TAG728
sll $0, $0, 0
mflo $1
TAG728:
divu $1, $1
blez $1, TAG729
mult $1, $1
xor $3, $1, $1
TAG729:
nor $3, $3, $3
srlv $1, $3, $3
blez $3, TAG730
mtlo $3
TAG730:
andi $1, $1, 4
bltz $1, TAG731
mtlo $1
lui $2, 5
TAG731:
mthi $2
lui $4, 5
sra $2, $4, 7
sw $4, -2560($2)
TAG732:
mfhi $2
lui $4, 13
andi $3, $4, 9
beq $2, $4, TAG733
TAG733:
lw $3, 0($3)
bgez $3, TAG734
slti $3, $3, 14
div $3, $3
TAG734:
mthi $3
bne $3, $3, TAG735
sllv $2, $3, $3
lui $4, 5
TAG735:
sll $0, $0, 0
bgtz $4, TAG736
multu $4, $4
mtlo $4
TAG736:
mflo $3
bltz $4, TAG737
mthi $4
srlv $4, $4, $4
TAG737:
bgez $4, TAG738
mthi $4
lui $1, 4
blez $1, TAG738
TAG738:
lui $1, 5
blez $1, TAG739
div $1, $1
mthi $1
TAG739:
sll $0, $0, 0
mfhi $3
srav $1, $4, $1
mult $4, $1
TAG740:
sll $0, $0, 0
lui $4, 10
xor $1, $4, $4
sw $1, 0($1)
TAG741:
sb $1, 0($1)
addi $1, $1, 13
sltiu $1, $1, 10
bltz $1, TAG742
TAG742:
mtlo $1
mthi $1
lbu $4, 0($1)
sh $1, 0($1)
TAG743:
bgez $4, TAG744
sw $4, 0($4)
lui $2, 4
lbu $2, 0($4)
TAG744:
lui $4, 10
mult $4, $2
sll $0, $0, 0
mult $4, $4
TAG745:
mflo $1
lw $2, 0($1)
mthi $4
mthi $4
TAG746:
mtlo $2
bne $2, $2, TAG747
sw $2, 0($2)
sb $2, 0($2)
TAG747:
mult $2, $2
mult $2, $2
mflo $3
lui $1, 13
TAG748:
bltz $1, TAG749
sll $0, $0, 0
mtlo $1
andi $3, $1, 5
TAG749:
addi $2, $3, 8
beq $2, $3, TAG750
mflo $1
sb $1, 0($3)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop