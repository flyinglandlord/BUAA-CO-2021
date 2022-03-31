ori $1, $0, 1
ori $2, $0, 9
ori $3, $0, 9
ori $4, $0, 4
sw $3, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $1, 100($0)
sw $4, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $4, 124($0)
sb $2, 0($2)
mthi $2
bgtz $2, TAG1
lb $4, 0($2)
TAG1:
multu $4, $4
beq $4, $4, TAG2
mfhi $2
bgez $2, TAG2
TAG2:
lh $4, 0($2)
sb $2, 0($4)
sll $1, $4, 13
bne $1, $1, TAG3
TAG3:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG4
srav $2, $1, $1
TAG4:
lui $1, 15
mfhi $3
lui $3, 6
multu $3, $1
TAG5:
lui $1, 8
sll $2, $3, 15
lui $4, 9
bne $1, $4, TAG6
TAG6:
lui $4, 6
sra $3, $4, 0
sll $0, $0, 0
lui $1, 3
TAG7:
blez $1, TAG8
sll $2, $1, 6
nor $1, $2, $1
mthi $1
TAG8:
addu $3, $1, $1
mult $1, $3
bgtz $3, TAG9
sll $0, $0, 0
TAG9:
sll $0, $0, 0
bltz $4, TAG10
mthi $4
divu $4, $4
TAG10:
mfhi $3
addiu $3, $4, 9
mtlo $3
sll $0, $0, 0
TAG11:
mflo $3
bne $3, $3, TAG12
mtlo $3
bgez $3, TAG12
TAG12:
mflo $3
mfhi $4
lui $2, 2
lui $2, 0
TAG13:
slt $3, $2, $2
srl $3, $3, 1
multu $3, $3
sw $3, 0($3)
TAG14:
lui $4, 4
multu $3, $3
lbu $1, 0($3)
bltz $4, TAG15
TAG15:
sw $1, 0($1)
bltz $1, TAG16
slti $4, $1, 9
bne $4, $4, TAG16
TAG16:
srav $3, $4, $4
bne $4, $4, TAG17
sb $4, 0($3)
multu $3, $3
TAG17:
lh $2, 0($3)
lb $3, 0($2)
mthi $2
mfhi $4
TAG18:
bltz $4, TAG19
lui $4, 3
bne $4, $4, TAG19
sll $0, $0, 0
TAG19:
sll $0, $0, 0
mflo $4
lui $1, 9
addu $1, $4, $2
TAG20:
lui $3, 6
bne $3, $1, TAG21
addiu $2, $3, 4
bgez $3, TAG21
TAG21:
sll $0, $0, 0
bne $2, $2, TAG22
mtlo $2
bne $2, $2, TAG22
TAG22:
mfhi $1
lbu $1, 0($1)
mfhi $2
lh $2, 0($1)
TAG23:
addu $3, $2, $2
bgtz $3, TAG24
lbu $1, 0($2)
blez $2, TAG24
TAG24:
andi $4, $1, 1
lui $4, 5
sll $0, $0, 0
xori $3, $4, 3
TAG25:
mtlo $3
sll $0, $0, 0
lui $3, 13
divu $3, $3
TAG26:
mthi $3
lui $1, 3
beq $1, $1, TAG27
mtlo $1
TAG27:
lui $2, 6
srl $2, $2, 15
beq $2, $1, TAG28
srav $1, $1, $2
TAG28:
div $1, $1
mthi $1
mthi $1
lui $4, 0
TAG29:
slti $4, $4, 9
sllv $4, $4, $4
bne $4, $4, TAG30
lhu $2, 0($4)
TAG30:
mfhi $2
mfhi $1
and $1, $2, $1
mtlo $2
TAG31:
sb $1, 0($1)
beq $1, $1, TAG32
sw $1, 0($1)
lb $4, 0($1)
TAG32:
sltu $3, $4, $4
lui $3, 1
bgtz $3, TAG33
lb $2, 0($4)
TAG33:
mfhi $2
addiu $1, $2, 6
lui $1, 9
div $1, $1
TAG34:
bltz $1, TAG35
sll $0, $0, 0
blez $1, TAG35
mtlo $1
TAG35:
mflo $2
lui $2, 6
bgez $1, TAG36
sra $4, $2, 10
TAG36:
sh $4, -384($4)
lui $4, 5
divu $4, $4
sll $0, $0, 0
TAG37:
blez $4, TAG38
sll $0, $0, 0
bgez $4, TAG38
sll $0, $0, 0
TAG38:
bne $2, $2, TAG39
sll $0, $0, 0
mflo $3
bne $4, $4, TAG39
TAG39:
mtlo $3
div $3, $3
lbu $3, 0($3)
sb $3, 0($3)
TAG40:
bgez $3, TAG41
lbu $3, 0($3)
sh $3, 0($3)
mult $3, $3
TAG41:
mtlo $3
mfhi $4
bgez $4, TAG42
addiu $2, $3, 13
TAG42:
lui $2, 8
sltiu $4, $2, 7
bgtz $4, TAG43
mflo $4
TAG43:
andi $2, $4, 5
mtlo $2
mfhi $4
bgez $2, TAG44
TAG44:
mthi $4
srl $4, $4, 6
or $3, $4, $4
addi $4, $4, 3
TAG45:
mthi $4
sb $4, 0($4)
blez $4, TAG46
lui $1, 0
TAG46:
sh $1, 0($1)
mflo $3
bgtz $1, TAG47
multu $3, $1
TAG47:
mthi $3
srlv $1, $3, $3
mtlo $3
addi $3, $1, 8
TAG48:
bne $3, $3, TAG49
lui $3, 13
xori $4, $3, 4
sll $0, $0, 0
TAG49:
addu $3, $4, $4
sll $0, $0, 0
mflo $3
subu $3, $4, $4
TAG50:
mult $3, $3
mult $3, $3
mfhi $1
slt $2, $1, $3
TAG51:
mult $2, $2
beq $2, $2, TAG52
sb $2, 0($2)
divu $2, $2
TAG52:
lh $1, 0($2)
lui $2, 3
mthi $2
sll $0, $0, 0
TAG53:
mthi $4
nor $3, $4, $4
addiu $2, $3, 3
lui $3, 7
TAG54:
sll $0, $0, 0
sll $0, $0, 0
sll $1, $3, 2
mthi $3
TAG55:
sltiu $1, $1, 8
mflo $2
bne $1, $1, TAG56
addu $4, $1, $2
TAG56:
bltz $4, TAG57
lbu $4, 0($4)
bne $4, $4, TAG57
addi $3, $4, 12
TAG57:
sh $3, 0($3)
lh $1, 0($3)
mthi $3
bne $3, $3, TAG58
TAG58:
mtlo $1
sllv $4, $1, $1
beq $4, $1, TAG59
mthi $4
TAG59:
sll $0, $0, 0
lh $3, 0($2)
lui $2, 10
ori $2, $4, 3
TAG60:
sll $0, $0, 0
bltz $2, TAG61
sh $3, 0($3)
mult $2, $2
TAG61:
subu $3, $3, $3
mult $3, $3
srlv $4, $3, $3
lh $1, 0($4)
TAG62:
lui $2, 14
mthi $2
sb $2, 0($1)
mthi $2
TAG63:
mfhi $1
xori $1, $2, 8
addiu $1, $1, 8
sll $0, $0, 0
TAG64:
andi $4, $1, 5
lui $1, 5
sll $0, $0, 0
sll $0, $0, 0
TAG65:
lui $3, 6
slti $1, $3, 0
lbu $4, 0($1)
multu $1, $1
TAG66:
mthi $4
sh $4, 0($4)
mtlo $4
multu $4, $4
TAG67:
subu $1, $4, $4
lui $3, 6
blez $1, TAG68
andi $1, $4, 14
TAG68:
mflo $1
or $4, $1, $1
blez $1, TAG69
subu $1, $4, $1
TAG69:
bgtz $1, TAG70
mult $1, $1
bltz $1, TAG70
sub $1, $1, $1
TAG70:
sub $2, $1, $1
multu $1, $2
lb $2, 0($1)
sb $2, 0($2)
TAG71:
lui $1, 5
multu $2, $2
mthi $2
divu $1, $1
TAG72:
mfhi $2
lui $4, 14
sll $0, $0, 0
add $1, $2, $4
TAG73:
mtlo $1
sltu $4, $1, $1
bltz $1, TAG74
addu $4, $1, $1
TAG74:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG75
TAG75:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
TAG76:
lw $4, 0($2)
bgez $2, TAG77
addu $1, $4, $4
mtlo $2
TAG77:
mfhi $1
lui $2, 13
mfhi $4
mfhi $2
TAG78:
bgez $2, TAG79
mtlo $2
multu $2, $2
sra $4, $2, 0
TAG79:
mult $4, $4
blez $4, TAG80
lw $4, 0($4)
srlv $2, $4, $4
TAG80:
mthi $2
mthi $2
mfhi $2
bgez $2, TAG81
TAG81:
slt $4, $2, $2
multu $2, $4
sh $4, 0($2)
mthi $4
TAG82:
lui $3, 13
multu $3, $4
mtlo $4
lui $2, 15
TAG83:
mfhi $1
sll $4, $1, 4
beq $1, $2, TAG84
lui $4, 12
TAG84:
lui $4, 3
blez $4, TAG85
mfhi $4
mthi $4
TAG85:
bne $4, $4, TAG86
or $2, $4, $4
lui $3, 10
sltu $2, $4, $4
TAG86:
sw $2, 0($2)
mthi $2
lui $1, 0
multu $1, $1
TAG87:
sltu $3, $1, $1
mtlo $1
xori $4, $1, 4
mthi $1
TAG88:
mthi $4
multu $4, $4
div $4, $4
bne $4, $4, TAG89
TAG89:
subu $4, $4, $4
bne $4, $4, TAG90
addu $4, $4, $4
blez $4, TAG90
TAG90:
multu $4, $4
beq $4, $4, TAG91
sw $4, 0($4)
lui $2, 12
TAG91:
beq $2, $2, TAG92
mfhi $2
beq $2, $2, TAG92
mult $2, $2
TAG92:
ori $2, $2, 1
mfhi $1
bgez $1, TAG93
mfhi $3
TAG93:
subu $2, $3, $3
bltz $3, TAG94
mult $3, $3
mfhi $2
TAG94:
bgez $2, TAG95
ori $1, $2, 15
beq $1, $2, TAG95
and $3, $2, $1
TAG95:
addu $4, $3, $3
mfhi $4
mtlo $4
xor $4, $4, $4
TAG96:
mthi $4
lh $2, 0($4)
mtlo $2
sw $4, 0($2)
TAG97:
sb $2, 0($2)
mthi $2
sub $4, $2, $2
lui $1, 3
TAG98:
mthi $1
or $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG99:
beq $4, $4, TAG100
sw $4, 0($4)
bltz $4, TAG100
xori $3, $4, 0
TAG100:
blez $3, TAG101
mthi $3
bgtz $3, TAG101
lui $3, 7
TAG101:
sh $3, 0($3)
addiu $4, $3, 5
mthi $3
bgez $4, TAG102
TAG102:
sll $3, $4, 6
mflo $4
bne $4, $4, TAG103
add $3, $4, $4
TAG103:
mtlo $3
bgtz $3, TAG104
lui $2, 6
mfhi $4
TAG104:
mult $4, $4
beq $4, $4, TAG105
sb $4, 0($4)
beq $4, $4, TAG105
TAG105:
mflo $1
sw $1, 0($4)
sw $4, 0($4)
multu $1, $4
TAG106:
mthi $1
lbu $4, 0($1)
lbu $3, 0($1)
mtlo $3
TAG107:
bne $3, $3, TAG108
mthi $3
slti $2, $3, 5
mfhi $4
TAG108:
mfhi $4
mult $4, $4
lui $2, 9
blez $4, TAG109
TAG109:
sll $0, $0, 0
mthi $3
and $4, $3, $2
beq $2, $3, TAG110
TAG110:
lui $4, 9
nor $4, $4, $4
beq $4, $4, TAG111
mthi $4
TAG111:
sll $0, $0, 0
and $1, $4, $4
blez $4, TAG112
mthi $1
TAG112:
sllv $3, $1, $1
lui $4, 4
mfhi $1
bltz $1, TAG113
TAG113:
sll $0, $0, 0
srlv $4, $1, $1
sll $0, $0, 0
subu $1, $1, $1
TAG114:
mtlo $1
sw $1, 0($1)
sw $1, 0($1)
beq $1, $1, TAG115
TAG115:
lui $1, 10
multu $1, $1
mthi $1
mtlo $1
TAG116:
bgtz $1, TAG117
mtlo $1
or $4, $1, $1
sb $1, 0($1)
TAG117:
mflo $3
lb $1, 0($4)
mthi $1
beq $1, $1, TAG118
TAG118:
mthi $1
bne $1, $1, TAG119
mthi $1
sh $1, 0($1)
TAG119:
beq $1, $1, TAG120
mfhi $3
and $3, $3, $3
mflo $2
TAG120:
mthi $2
ori $2, $2, 12
bgez $2, TAG121
sll $0, $0, 0
TAG121:
mthi $2
lui $2, 15
bltz $2, TAG122
divu $2, $2
TAG122:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
lui $4, 13
TAG123:
bgez $4, TAG124
mult $4, $4
bltz $4, TAG124
mfhi $1
TAG124:
mult $1, $1
bne $1, $1, TAG125
mult $1, $1
lb $3, 0($1)
TAG125:
lhu $4, 0($3)
xor $2, $3, $3
multu $4, $4
multu $4, $4
TAG126:
lui $2, 6
mfhi $4
mflo $1
lui $2, 5
TAG127:
lui $1, 9
sltiu $1, $1, 9
ori $2, $1, 3
lhu $1, 0($1)
TAG128:
mfhi $1
and $1, $1, $1
mtlo $1
multu $1, $1
TAG129:
mfhi $1
lh $4, 0($1)
slt $3, $1, $1
lui $2, 3
TAG130:
lui $1, 15
ori $3, $2, 8
sllv $2, $3, $3
multu $1, $2
TAG131:
addu $1, $2, $2
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG132:
lui $3, 6
andi $3, $3, 13
or $4, $2, $3
mthi $3
TAG133:
mfhi $4
mtlo $4
sh $4, 0($4)
mfhi $2
TAG134:
lui $2, 9
xor $1, $2, $2
div $2, $2
sll $0, $0, 0
TAG135:
beq $1, $1, TAG136
lui $4, 1
lb $2, 0($4)
lh $2, 0($2)
TAG136:
xori $1, $2, 10
sll $0, $0, 0
lui $1, 11
lui $3, 11
TAG137:
xor $2, $3, $3
mfhi $3
sb $3, 0($3)
lbu $4, 0($3)
TAG138:
addu $2, $4, $4
mult $4, $2
mthi $4
sw $2, 0($2)
TAG139:
multu $2, $2
lui $2, 0
sh $2, 0($2)
bltz $2, TAG140
TAG140:
or $4, $2, $2
bltz $4, TAG141
and $2, $4, $2
subu $4, $4, $2
TAG141:
and $4, $4, $4
multu $4, $4
mfhi $2
addi $4, $4, 6
TAG142:
andi $4, $4, 5
beq $4, $4, TAG143
srlv $1, $4, $4
addiu $2, $1, 0
TAG143:
lbu $3, 0($2)
lui $4, 3
ori $2, $2, 4
bgez $3, TAG144
TAG144:
sll $4, $2, 12
bne $4, $2, TAG145
multu $2, $4
bne $4, $2, TAG145
TAG145:
subu $2, $4, $4
lw $2, -16384($4)
srl $4, $2, 7
mtlo $2
TAG146:
bgtz $4, TAG147
lui $3, 5
sb $3, 0($4)
mtlo $4
TAG147:
bne $3, $3, TAG148
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG148
TAG148:
sll $0, $0, 0
xor $3, $3, $3
mthi $3
lui $4, 14
TAG149:
beq $4, $4, TAG150
multu $4, $4
mflo $2
beq $4, $4, TAG150
TAG150:
multu $2, $2
lui $4, 0
mtlo $4
addi $3, $2, 0
TAG151:
mult $3, $3
mflo $1
addiu $1, $3, 4
mfhi $3
TAG152:
sltu $4, $3, $3
beq $4, $3, TAG153
mtlo $4
mflo $4
TAG153:
mtlo $4
mthi $4
mflo $4
addu $2, $4, $4
TAG154:
addi $2, $2, 0
bne $2, $2, TAG155
mthi $2
bgez $2, TAG155
TAG155:
mtlo $2
mflo $3
lhu $3, 0($3)
mthi $3
TAG156:
lbu $1, 0($3)
mult $1, $1
lui $1, 10
bltz $3, TAG157
TAG157:
sll $0, $0, 0
mtlo $1
multu $1, $1
beq $1, $1, TAG158
TAG158:
mfhi $2
addiu $1, $1, 8
sb $1, 0($2)
bne $1, $1, TAG159
TAG159:
sll $0, $0, 0
sllv $4, $1, $1
sll $0, $0, 0
div $3, $4
TAG160:
addu $2, $3, $3
slti $3, $3, 7
and $2, $3, $3
and $4, $3, $3
TAG161:
ori $3, $4, 14
sra $2, $3, 11
lui $3, 0
lui $3, 12
TAG162:
divu $3, $3
lui $1, 9
div $1, $3
div $1, $3
TAG163:
sll $0, $0, 0
lui $1, 0
mflo $1
lui $2, 3
TAG164:
andi $1, $2, 14
slti $3, $2, 14
lui $2, 12
sll $0, $0, 0
TAG165:
mult $2, $2
blez $2, TAG166
sll $0, $0, 0
subu $3, $3, $3
TAG166:
xor $4, $3, $3
lhu $1, 0($3)
lhu $2, 0($3)
blez $4, TAG167
TAG167:
mthi $2
slt $3, $2, $2
beq $3, $2, TAG168
mult $2, $2
TAG168:
beq $3, $3, TAG169
lui $2, 12
bne $2, $2, TAG169
lui $2, 11
TAG169:
lui $1, 3
bltz $2, TAG170
srl $2, $2, 7
lui $3, 9
TAG170:
addiu $2, $3, 3
div $3, $2
bgez $2, TAG171
multu $2, $3
TAG171:
subu $3, $2, $2
mtlo $3
mthi $2
mfhi $4
TAG172:
mult $4, $4
bgez $4, TAG173
sltiu $2, $4, 7
nor $1, $4, $4
TAG173:
sll $0, $0, 0
bgtz $1, TAG174
mflo $4
beq $4, $3, TAG174
TAG174:
andi $4, $4, 13
blez $4, TAG175
mult $4, $4
lui $3, 0
TAG175:
andi $3, $3, 11
mult $3, $3
mthi $3
xori $3, $3, 8
TAG176:
sb $3, 0($3)
mfhi $3
mult $3, $3
mflo $3
TAG177:
andi $4, $3, 7
mtlo $3
lui $2, 15
mthi $3
TAG178:
div $2, $2
sll $0, $0, 0
multu $2, $2
sll $0, $0, 0
TAG179:
andi $1, $2, 6
mfhi $3
mthi $3
lui $3, 15
TAG180:
ori $1, $3, 12
mthi $3
sll $0, $0, 0
lui $1, 4
TAG181:
sll $0, $0, 0
multu $1, $1
lui $1, 9
mflo $2
TAG182:
mthi $2
sw $2, 0($2)
bgtz $2, TAG183
multu $2, $2
TAG183:
mthi $2
lhu $4, 0($2)
lui $1, 5
mflo $1
TAG184:
lhu $4, 0($1)
xor $4, $4, $4
mfhi $4
blez $4, TAG185
TAG185:
lui $4, 11
bne $4, $4, TAG186
mfhi $3
mtlo $4
TAG186:
multu $3, $3
bne $3, $3, TAG187
mthi $3
multu $3, $3
TAG187:
lui $1, 1
lui $1, 9
sll $0, $0, 0
lui $2, 15
TAG188:
lui $3, 10
bne $3, $3, TAG189
multu $2, $3
sll $0, $0, 0
TAG189:
sll $0, $0, 0
mflo $1
bne $3, $1, TAG190
sltiu $1, $1, 5
TAG190:
bgtz $1, TAG191
lbu $4, 0($1)
mthi $1
sub $3, $1, $4
TAG191:
sll $0, $0, 0
mflo $1
mthi $3
srlv $4, $1, $3
TAG192:
mult $4, $4
addiu $3, $4, 13
sra $1, $4, 5
sw $1, 0($4)
TAG193:
add $2, $1, $1
mtlo $2
lui $4, 10
sll $0, $0, 0
TAG194:
lui $4, 2
bgtz $4, TAG195
sll $0, $0, 0
xori $3, $4, 15
TAG195:
srlv $1, $3, $3
addiu $1, $3, 2
lui $4, 14
div $4, $1
TAG196:
lui $4, 13
mfhi $2
sll $0, $0, 0
bgtz $2, TAG197
TAG197:
nor $1, $3, $3
bne $1, $3, TAG198
sll $2, $3, 8
bltz $1, TAG198
TAG198:
mfhi $1
andi $4, $1, 6
srlv $2, $2, $4
mtlo $2
TAG199:
mfhi $1
sh $2, 0($1)
blez $1, TAG200
or $1, $1, $2
TAG200:
mtlo $1
xori $4, $1, 8
mthi $1
mthi $4
TAG201:
lui $1, 7
mtlo $1
lui $3, 9
mfhi $4
TAG202:
beq $4, $4, TAG203
div $4, $4
subu $3, $4, $4
mthi $3
TAG203:
mfhi $4
mflo $4
bne $4, $4, TAG204
addu $4, $3, $4
TAG204:
mtlo $4
multu $4, $4
ori $1, $4, 0
lui $3, 6
TAG205:
beq $3, $3, TAG206
sll $0, $0, 0
mtlo $3
lui $4, 8
TAG206:
mfhi $1
sltiu $3, $1, 9
lbu $4, 0($3)
mult $4, $4
TAG207:
mflo $3
mfhi $1
multu $1, $4
beq $1, $3, TAG208
TAG208:
multu $1, $1
multu $1, $1
mthi $1
srlv $1, $1, $1
TAG209:
lui $2, 1
bne $1, $1, TAG210
lui $3, 7
lui $2, 10
TAG210:
div $2, $2
lui $3, 14
mthi $3
mfhi $2
TAG211:
sll $0, $0, 0
lui $4, 8
mthi $4
mfhi $3
TAG212:
lui $1, 10
sllv $4, $1, $1
srl $1, $4, 5
mthi $4
TAG213:
bne $1, $1, TAG214
mthi $1
sh $1, -20480($1)
mtlo $1
TAG214:
mfhi $2
mflo $4
bne $4, $2, TAG215
sb $2, -20480($1)
TAG215:
sw $4, -20480($4)
sh $4, -20480($4)
srav $2, $4, $4
bgtz $2, TAG216
TAG216:
divu $2, $2
andi $2, $2, 0
sll $4, $2, 8
bgez $2, TAG217
TAG217:
mtlo $4
sw $4, 0($4)
mtlo $4
nor $1, $4, $4
TAG218:
mult $1, $1
nor $2, $1, $1
mflo $4
divu $4, $4
TAG219:
xor $3, $4, $4
mfhi $4
beq $4, $4, TAG220
lhu $4, 0($4)
TAG220:
mfhi $2
sb $4, 0($2)
lui $2, 2
mult $2, $4
TAG221:
beq $2, $2, TAG222
sllv $1, $2, $2
mtlo $1
lh $1, 0($2)
TAG222:
addu $4, $1, $1
lui $2, 14
bne $2, $2, TAG223
ori $1, $4, 12
TAG223:
bgez $1, TAG224
divu $1, $1
mthi $1
lui $1, 5
TAG224:
mflo $1
slt $2, $1, $1
lui $2, 2
mtlo $2
TAG225:
beq $2, $2, TAG226
mfhi $1
lw $4, 0($1)
div $2, $4
TAG226:
bne $4, $4, TAG227
sll $0, $0, 0
sll $0, $0, 0
lh $2, 0($1)
TAG227:
lb $2, 0($2)
beq $2, $2, TAG228
lui $1, 0
lui $4, 3
TAG228:
mflo $4
srav $3, $4, $4
bne $4, $3, TAG229
mthi $4
TAG229:
sll $0, $0, 0
mult $3, $3
mult $3, $3
nor $3, $3, $3
TAG230:
sll $0, $0, 0
blez $3, TAG231
xori $1, $3, 8
ori $4, $1, 8
TAG231:
sll $0, $0, 0
mfhi $1
bne $4, $4, TAG232
mthi $4
TAG232:
bgtz $1, TAG233
lui $4, 11
lui $1, 10
lui $3, 3
TAG233:
divu $3, $3
mfhi $1
sb $3, 0($1)
bltz $3, TAG234
TAG234:
lh $2, 0($1)
subu $3, $1, $1
mflo $3
bgtz $1, TAG235
TAG235:
mflo $3
lbu $1, 0($3)
ori $4, $1, 3
beq $3, $3, TAG236
TAG236:
lbu $1, 0($4)
subu $3, $4, $4
xori $4, $3, 2
subu $2, $3, $1
TAG237:
slt $1, $2, $2
ori $1, $2, 1
lui $4, 1
mthi $2
TAG238:
bgtz $4, TAG239
sll $0, $0, 0
lui $1, 12
blez $1, TAG239
TAG239:
addu $2, $1, $1
lbu $2, 0($2)
bgtz $2, TAG240
lui $3, 13
TAG240:
sll $0, $0, 0
mflo $4
lb $4, 0($4)
mflo $3
TAG241:
subu $2, $3, $3
lui $1, 8
mfhi $1
mult $1, $2
TAG242:
mult $1, $1
addi $2, $1, 4
bne $2, $1, TAG243
xor $2, $1, $1
TAG243:
mult $2, $2
bne $2, $2, TAG244
mthi $2
add $2, $2, $2
TAG244:
xori $1, $2, 2
xor $2, $1, $2
sra $2, $2, 6
mthi $2
TAG245:
mflo $1
mtlo $2
bne $2, $1, TAG246
sra $1, $1, 7
TAG246:
bgez $1, TAG247
sw $1, 0($1)
sb $1, 0($1)
mfhi $4
TAG247:
lui $2, 3
sllv $4, $2, $4
lui $3, 15
sll $0, $0, 0
TAG248:
mthi $3
mthi $3
bne $3, $3, TAG249
mthi $3
TAG249:
mult $3, $3
sll $0, $0, 0
lui $3, 12
sll $0, $0, 0
TAG250:
bne $3, $3, TAG251
lui $4, 1
addiu $4, $4, 12
mtlo $4
TAG251:
mflo $4
lui $2, 7
multu $4, $4
divu $4, $4
TAG252:
lui $4, 15
beq $2, $2, TAG253
mfhi $4
lui $3, 1
TAG253:
lui $2, 6
lui $4, 0
subu $2, $3, $2
sltiu $1, $2, 15
TAG254:
sra $1, $1, 4
mthi $1
mult $1, $1
add $3, $1, $1
TAG255:
bne $3, $3, TAG256
multu $3, $3
lhu $4, 0($3)
bne $4, $3, TAG256
TAG256:
mfhi $1
addiu $1, $1, 6
blez $1, TAG257
mtlo $1
TAG257:
slti $4, $1, 10
mult $1, $1
slt $2, $1, $1
lb $3, 0($2)
TAG258:
andi $1, $3, 8
mthi $3
lh $3, 0($1)
mthi $1
TAG259:
lui $1, 7
lw $3, 0($3)
sw $3, 0($3)
bne $1, $1, TAG260
TAG260:
nor $1, $3, $3
mflo $1
beq $3, $1, TAG261
mult $1, $1
TAG261:
divu $1, $1
beq $1, $1, TAG262
lb $2, 0($1)
bgtz $2, TAG262
TAG262:
mfhi $1
sb $1, 0($2)
lui $2, 0
multu $2, $2
TAG263:
mthi $2
bltz $2, TAG264
mflo $3
lh $1, 0($2)
TAG264:
multu $1, $1
lui $4, 4
sltu $3, $1, $1
sra $3, $3, 5
TAG265:
lhu $3, 0($3)
mult $3, $3
sw $3, 0($3)
sub $1, $3, $3
TAG266:
sub $3, $1, $1
lui $4, 10
blez $1, TAG267
xor $1, $4, $4
TAG267:
lhu $1, 0($1)
sub $1, $1, $1
bne $1, $1, TAG268
mflo $1
TAG268:
lb $3, 0($1)
mult $3, $1
sw $1, 0($1)
lui $3, 4
TAG269:
lui $4, 13
beq $3, $3, TAG270
sll $0, $0, 0
lui $4, 8
TAG270:
mtlo $4
beq $4, $4, TAG271
divu $4, $4
mfhi $2
TAG271:
multu $2, $2
lui $3, 8
lhu $4, 0($2)
multu $2, $3
TAG272:
mtlo $4
mult $4, $4
mflo $3
multu $3, $4
TAG273:
mtlo $3
blez $3, TAG274
mtlo $3
and $3, $3, $3
TAG274:
mfhi $3
xor $1, $3, $3
mtlo $1
lui $3, 9
TAG275:
mult $3, $3
slti $2, $3, 8
mthi $3
addiu $1, $3, 9
TAG276:
sll $0, $0, 0
mtlo $1
mtlo $1
slti $2, $1, 2
TAG277:
lui $1, 12
andi $3, $1, 9
sw $1, 0($2)
lh $2, 0($3)
TAG278:
and $1, $2, $2
lui $3, 0
bltz $1, TAG279
mult $1, $3
TAG279:
lbu $1, 0($3)
mult $3, $3
mult $3, $3
slti $3, $1, 15
TAG280:
lui $1, 13
sll $0, $0, 0
bne $2, $1, TAG281
lui $3, 1
TAG281:
beq $3, $3, TAG282
lui $2, 10
mtlo $3
lhu $2, 0($3)
TAG282:
sll $2, $2, 5
mult $2, $2
beq $2, $2, TAG283
slti $4, $2, 0
TAG283:
multu $4, $4
nor $1, $4, $4
blez $1, TAG284
andi $4, $4, 13
TAG284:
sub $1, $4, $4
sra $3, $4, 14
lui $2, 3
mfhi $1
TAG285:
lb $2, 0($1)
bltz $2, TAG286
or $1, $2, $2
lui $2, 2
TAG286:
lui $2, 8
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG287:
lh $2, 0($1)
lui $3, 4
sb $1, 0($1)
slt $1, $2, $3
TAG288:
beq $1, $1, TAG289
multu $1, $1
div $1, $1
mtlo $1
TAG289:
bgez $1, TAG290
slti $3, $1, 14
sltu $2, $3, $3
sub $2, $2, $2
TAG290:
mult $2, $2
bne $2, $2, TAG291
sllv $2, $2, $2
sh $2, 0($2)
TAG291:
sw $2, 0($2)
lui $2, 14
div $2, $2
div $2, $2
TAG292:
sra $1, $2, 11
mflo $1
lui $3, 15
mfhi $4
TAG293:
and $1, $4, $4
mthi $4
addu $1, $4, $1
multu $1, $4
TAG294:
bne $1, $1, TAG295
lui $4, 14
lui $2, 8
bne $4, $1, TAG295
TAG295:
mtlo $2
sll $0, $0, 0
lui $3, 1
slti $1, $2, 7
TAG296:
mfhi $2
sh $2, 0($1)
multu $1, $1
beq $2, $2, TAG297
TAG297:
mflo $3
bgtz $3, TAG298
lh $4, 0($3)
lui $2, 5
TAG298:
beq $2, $2, TAG299
sll $0, $0, 0
mfhi $3
div $2, $3
TAG299:
sw $3, 0($3)
mtlo $3
multu $3, $3
sb $3, 0($3)
TAG300:
sw $3, 0($3)
slti $1, $3, 9
sb $3, 0($1)
bne $1, $1, TAG301
TAG301:
sb $1, 0($1)
mthi $1
beq $1, $1, TAG302
slt $4, $1, $1
TAG302:
beq $4, $4, TAG303
sh $4, 0($4)
sra $3, $4, 4
ori $1, $3, 10
TAG303:
mult $1, $1
and $2, $1, $1
mthi $1
and $3, $2, $1
TAG304:
sb $3, 0($3)
bgez $3, TAG305
sb $3, 0($3)
mtlo $3
TAG305:
lui $2, 14
sb $2, 0($3)
mtlo $3
bltz $3, TAG306
TAG306:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG307:
blez $3, TAG308
mflo $3
sltu $3, $3, $3
beq $3, $3, TAG308
TAG308:
sb $3, 0($3)
mtlo $3
mult $3, $3
beq $3, $3, TAG309
TAG309:
sw $3, 0($3)
bne $3, $3, TAG310
mfhi $4
bne $4, $4, TAG310
TAG310:
lhu $1, 0($4)
xori $1, $4, 4
sw $4, 0($1)
xor $2, $1, $1
TAG311:
lb $4, 0($2)
lh $3, 0($2)
beq $2, $2, TAG312
mthi $4
TAG312:
bne $3, $3, TAG313
andi $2, $3, 8
beq $3, $3, TAG313
sb $3, 0($3)
TAG313:
lui $3, 6
subu $1, $2, $2
bne $3, $2, TAG314
multu $1, $1
TAG314:
lbu $1, 0($1)
mthi $1
addiu $1, $1, 8
mthi $1
TAG315:
sll $3, $1, 10
blez $1, TAG316
lb $2, 0($1)
bgtz $2, TAG316
TAG316:
lhu $1, 0($2)
slti $3, $2, 1
beq $1, $3, TAG317
mthi $3
TAG317:
sra $2, $3, 14
beq $2, $3, TAG318
lui $1, 7
xori $1, $1, 15
TAG318:
lui $3, 10
bgez $1, TAG319
sll $0, $0, 0
bgez $1, TAG319
TAG319:
sra $1, $2, 11
lui $2, 8
bne $2, $2, TAG320
mtlo $1
TAG320:
mult $2, $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG321:
sll $0, $0, 0
bltz $3, TAG322
mult $3, $3
beq $3, $3, TAG322
TAG322:
srav $2, $3, $3
mfhi $3
beq $3, $3, TAG323
mult $3, $2
TAG323:
andi $2, $3, 3
lui $3, 9
sll $0, $0, 0
bgtz $2, TAG324
TAG324:
subu $1, $3, $3
mthi $3
bgez $1, TAG325
sll $0, $0, 0
TAG325:
lui $1, 8
sll $0, $0, 0
sltiu $3, $1, 2
mtlo $3
TAG326:
lb $3, 0($3)
beq $3, $3, TAG327
mfhi $2
bne $3, $2, TAG327
TAG327:
multu $2, $2
beq $2, $2, TAG328
sll $0, $0, 0
lbu $3, 0($2)
TAG328:
mflo $1
srav $3, $1, $1
bne $3, $3, TAG329
lbu $1, 0($1)
TAG329:
lui $1, 3
mthi $1
subu $2, $1, $1
mflo $2
TAG330:
mflo $1
mtlo $2
lbu $1, 0($1)
mult $1, $1
TAG331:
lui $2, 4
bltz $1, TAG332
mfhi $1
lb $4, 0($1)
TAG332:
addi $2, $4, 8
and $1, $2, $2
beq $4, $4, TAG333
lh $3, 0($2)
TAG333:
blez $3, TAG334
sll $1, $3, 3
lw $2, 0($1)
sll $2, $1, 14
TAG334:
mfhi $2
sh $2, 0($2)
ori $4, $2, 7
addiu $3, $2, 1
TAG335:
mthi $3
beq $3, $3, TAG336
lbu $2, 0($3)
addiu $1, $3, 8
TAG336:
mfhi $3
beq $3, $1, TAG337
sb $1, 0($1)
mtlo $3
TAG337:
divu $3, $3
mtlo $3
beq $3, $3, TAG338
sb $3, 0($3)
TAG338:
mult $3, $3
mult $3, $3
lbu $1, 0($3)
div $3, $1
TAG339:
mtlo $1
ori $4, $1, 7
bltz $1, TAG340
lui $4, 13
TAG340:
mthi $4
lui $3, 5
sll $0, $0, 0
mfhi $2
TAG341:
srav $4, $2, $2
sllv $3, $4, $4
mflo $4
div $4, $2
TAG342:
divu $4, $4
bne $4, $4, TAG343
lb $1, 0($4)
divu $4, $4
TAG343:
blez $1, TAG344
slt $4, $1, $1
lui $3, 6
bgtz $4, TAG344
TAG344:
div $3, $3
and $1, $3, $3
lui $3, 13
xor $2, $1, $1
TAG345:
mthi $2
beq $2, $2, TAG346
mult $2, $2
lh $2, 0($2)
TAG346:
and $1, $2, $2
sh $2, 0($2)
sb $2, 0($2)
beq $1, $1, TAG347
TAG347:
addi $2, $1, 10
div $2, $2
lui $3, 6
mthi $1
TAG348:
xori $1, $3, 12
sll $0, $0, 0
andi $2, $1, 3
bgez $1, TAG349
TAG349:
or $2, $2, $2
sh $2, 0($2)
lui $4, 7
mfhi $4
TAG350:
mfhi $3
lui $3, 0
mfhi $2
bgtz $3, TAG351
TAG351:
mult $2, $2
nor $4, $2, $2
beq $2, $4, TAG352
lh $1, 0($2)
TAG352:
mflo $2
lui $2, 9
mfhi $3
sll $0, $0, 0
TAG353:
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
lh $1, 0($1)
TAG354:
lui $3, 10
mthi $3
mult $1, $3
bltz $1, TAG355
TAG355:
sll $0, $0, 0
bne $3, $3, TAG356
multu $3, $3
bne $3, $3, TAG356
TAG356:
mfhi $1
sll $0, $0, 0
blez $1, TAG357
addiu $3, $3, 4
TAG357:
subu $2, $3, $3
multu $2, $2
mult $2, $3
mtlo $2
TAG358:
mult $2, $2
lui $4, 0
bne $2, $2, TAG359
xori $3, $4, 0
TAG359:
lui $3, 15
slti $4, $3, 10
divu $4, $3
sb $3, 0($4)
TAG360:
mtlo $4
lw $4, 0($4)
multu $4, $4
xori $3, $4, 9
TAG361:
lui $3, 9
slti $3, $3, 0
mtlo $3
lui $4, 4
TAG362:
lui $1, 11
sll $0, $0, 0
sltu $3, $4, $1
mthi $4
TAG363:
lui $2, 9
mtlo $3
mtlo $2
subu $3, $2, $3
TAG364:
div $3, $3
sll $0, $0, 0
mflo $4
lui $4, 5
TAG365:
div $4, $4
addu $1, $4, $4
mflo $4
sb $1, 0($4)
TAG366:
lb $4, 0($4)
lbu $1, 0($4)
mtlo $1
mthi $4
TAG367:
lui $2, 14
lb $3, 0($1)
bltz $1, TAG368
lui $3, 10
TAG368:
div $3, $3
mtlo $3
bgez $3, TAG369
sll $0, $0, 0
TAG369:
lui $1, 15
mthi $1
beq $3, $1, TAG370
mthi $1
TAG370:
mflo $3
mtlo $3
lui $2, 0
mflo $1
TAG371:
blez $1, TAG372
lui $4, 13
sll $0, $0, 0
mthi $4
TAG372:
or $2, $3, $3
mfhi $1
and $4, $2, $3
sra $3, $1, 11
TAG373:
lui $4, 1
mfhi $1
lui $4, 13
beq $3, $4, TAG374
TAG374:
mflo $2
or $2, $4, $2
lui $1, 13
or $2, $1, $2
TAG375:
xor $4, $2, $2
lui $4, 7
mfhi $1
lui $2, 6
TAG376:
bgtz $2, TAG377
sll $0, $0, 0
mthi $2
andi $2, $1, 2
TAG377:
sll $0, $0, 0
bne $2, $2, TAG378
mthi $2
sll $0, $0, 0
TAG378:
mtlo $2
sll $0, $0, 0
lui $4, 6
sllv $4, $2, $4
TAG379:
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG380:
mthi $1
ori $2, $1, 14
sra $2, $1, 10
bne $2, $2, TAG381
TAG381:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
lui $3, 15
TAG382:
mthi $3
lui $1, 12
beq $1, $3, TAG383
mfhi $2
TAG383:
slt $3, $2, $2
lui $4, 14
lui $2, 14
mthi $2
TAG384:
sll $0, $0, 0
sll $4, $3, 12
mfhi $3
mult $2, $4
TAG385:
mult $3, $3
blez $3, TAG386
sll $0, $0, 0
sll $0, $0, 0
TAG386:
slti $1, $4, 2
bltz $1, TAG387
sh $4, 0($4)
multu $1, $1
TAG387:
bne $1, $1, TAG388
mfhi $2
bgtz $1, TAG388
sb $1, 0($1)
TAG388:
bgez $2, TAG389
lui $1, 10
mthi $2
srlv $1, $2, $2
TAG389:
div $1, $1
bgtz $1, TAG390
mthi $1
bgez $1, TAG390
TAG390:
sll $0, $0, 0
ori $4, $1, 7
sll $0, $0, 0
mflo $1
TAG391:
div $1, $1
lui $2, 8
mfhi $2
mthi $1
TAG392:
lh $1, 0($2)
bgtz $1, TAG393
lui $3, 10
lb $4, 0($3)
TAG393:
bne $4, $4, TAG394
sll $2, $4, 6
mflo $2
lui $2, 12
TAG394:
multu $2, $2
bgez $2, TAG395
sll $0, $0, 0
lw $2, 0($2)
TAG395:
mult $2, $2
mfhi $1
mfhi $3
beq $1, $1, TAG396
TAG396:
mthi $3
lh $3, -144($3)
beq $3, $3, TAG397
lhu $3, -256($3)
TAG397:
mthi $3
ori $2, $3, 8
sllv $2, $2, $3
sh $3, -264($2)
TAG398:
mflo $4
sb $2, 0($4)
lui $2, 13
slti $2, $4, 9
TAG399:
addiu $3, $2, 12
bgez $3, TAG400
multu $3, $3
bgtz $3, TAG400
TAG400:
multu $3, $3
mflo $3
mfhi $1
bne $3, $3, TAG401
TAG401:
sh $1, 0($1)
bgez $1, TAG402
mthi $1
bgtz $1, TAG402
TAG402:
multu $1, $1
bgez $1, TAG403
multu $1, $1
srl $1, $1, 8
TAG403:
sw $1, 0($1)
mult $1, $1
srl $3, $1, 11
bgtz $3, TAG404
TAG404:
mthi $3
mthi $3
ori $2, $3, 6
bgez $2, TAG405
TAG405:
xor $4, $2, $2
sh $2, 0($4)
mfhi $2
slti $3, $4, 11
TAG406:
subu $4, $3, $3
sltiu $1, $4, 8
mthi $4
sb $3, 0($4)
TAG407:
multu $1, $1
div $1, $1
lui $4, 1
mtlo $1
TAG408:
sll $0, $0, 0
lui $4, 3
sra $2, $2, 4
bne $4, $2, TAG409
TAG409:
multu $2, $2
sb $2, 0($2)
sw $2, 0($2)
bgtz $2, TAG410
TAG410:
mthi $2
beq $2, $2, TAG411
lw $2, 0($2)
lui $1, 15
TAG411:
mult $1, $1
div $1, $1
bgtz $1, TAG412
lb $4, 0($1)
TAG412:
sh $4, 0($4)
xor $2, $4, $4
bltz $2, TAG413
srlv $1, $2, $2
TAG413:
mthi $1
sltu $1, $1, $1
mthi $1
lb $2, 0($1)
TAG414:
lui $2, 4
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG415:
lui $4, 12
sll $0, $0, 0
lui $3, 13
multu $2, $3
TAG416:
srav $1, $3, $3
bne $1, $3, TAG417
slt $3, $3, $1
and $2, $1, $1
TAG417:
bgtz $2, TAG418
lui $2, 14
mflo $4
multu $4, $2
TAG418:
bne $4, $4, TAG419
sll $0, $0, 0
or $1, $1, $1
ori $4, $1, 2
TAG419:
bltz $4, TAG420
lui $4, 6
bgtz $4, TAG420
mflo $3
TAG420:
sb $3, 0($3)
mult $3, $3
multu $3, $3
sw $3, 0($3)
TAG421:
mtlo $3
bltz $3, TAG422
lui $2, 8
multu $3, $2
TAG422:
mult $2, $2
sll $0, $0, 0
bne $2, $2, TAG423
sll $0, $0, 0
TAG423:
mthi $2
divu $2, $2
div $2, $2
div $2, $2
TAG424:
beq $2, $2, TAG425
sll $0, $0, 0
lui $3, 8
mtlo $2
TAG425:
bltz $3, TAG426
lui $2, 2
mult $3, $2
sll $0, $0, 0
TAG426:
mfhi $1
mfhi $4
add $2, $1, $2
mtlo $2
TAG427:
mflo $3
mtlo $3
addiu $1, $3, 15
sll $0, $0, 0
TAG428:
mflo $1
srav $1, $2, $2
andi $3, $1, 14
divu $2, $1
TAG429:
mult $3, $3
subu $3, $3, $3
add $2, $3, $3
lui $3, 8
TAG430:
sll $0, $0, 0
slt $3, $3, $3
addiu $1, $3, 4
blez $3, TAG431
TAG431:
lui $3, 0
multu $3, $3
multu $1, $3
lui $3, 1
TAG432:
beq $3, $3, TAG433
sll $0, $0, 0
beq $3, $3, TAG433
mthi $3
TAG433:
subu $1, $3, $3
div $1, $3
mtlo $3
sll $0, $0, 0
TAG434:
sh $1, 0($1)
mult $1, $1
andi $2, $1, 1
nor $4, $1, $1
TAG435:
sll $0, $0, 0
sltiu $3, $4, 7
sw $3, 0($2)
sw $4, 0($2)
TAG436:
bne $3, $3, TAG437
lui $1, 4
lui $2, 11
lui $1, 2
TAG437:
sll $0, $0, 0
sltiu $1, $1, 12
mflo $1
mflo $3
TAG438:
ori $2, $3, 13
mult $2, $2
lui $2, 14
mfhi $1
TAG439:
add $1, $1, $1
sb $1, 0($1)
lui $2, 0
mfhi $3
TAG440:
sra $3, $3, 6
sh $3, 0($3)
mtlo $3
mflo $1
TAG441:
lh $2, 0($1)
lhu $4, 0($1)
multu $2, $4
blez $1, TAG442
TAG442:
ori $3, $4, 1
beq $3, $4, TAG443
mfhi $2
sb $4, 0($4)
TAG443:
mult $2, $2
mfhi $3
or $3, $3, $2
mfhi $2
TAG444:
mult $2, $2
bgtz $2, TAG445
lui $4, 15
multu $4, $2
TAG445:
mult $4, $4
bltz $4, TAG446
mtlo $4
bgtz $4, TAG446
TAG446:
ori $2, $4, 1
mthi $2
mult $4, $2
beq $4, $4, TAG447
TAG447:
srav $4, $2, $2
srlv $1, $4, $4
mtlo $1
slti $2, $2, 15
TAG448:
lui $1, 10
sll $0, $0, 0
lui $4, 9
subu $4, $2, $1
TAG449:
nor $1, $4, $4
bgtz $1, TAG450
divu $1, $4
lui $1, 12
TAG450:
blez $1, TAG451
mfhi $3
mfhi $1
subu $4, $1, $1
TAG451:
blez $4, TAG452
sltiu $1, $4, 12
lui $2, 0
sb $1, 0($4)
TAG452:
bne $2, $2, TAG453
multu $2, $2
lh $1, 0($2)
bne $1, $1, TAG453
TAG453:
mult $1, $1
sb $1, 0($1)
sra $2, $1, 6
bgtz $2, TAG454
TAG454:
lhu $1, 0($2)
sltiu $1, $2, 6
lbu $1, 0($1)
srl $4, $1, 4
TAG455:
lui $2, 4
mflo $4
mfhi $4
ori $3, $4, 1
TAG456:
lui $3, 10
mthi $3
mfhi $4
sll $0, $0, 0
TAG457:
mult $4, $4
mfhi $4
bltz $4, TAG458
mflo $2
TAG458:
lh $4, 0($2)
bne $2, $2, TAG459
addu $1, $4, $2
sh $2, 0($2)
TAG459:
multu $1, $1
mult $1, $1
and $3, $1, $1
bgtz $3, TAG460
TAG460:
mthi $3
mflo $2
multu $3, $3
blez $3, TAG461
TAG461:
lui $3, 12
beq $2, $3, TAG462
addu $2, $3, $3
sll $0, $0, 0
TAG462:
xor $1, $1, $1
lui $2, 1
sb $2, 0($1)
sh $2, 0($1)
TAG463:
addu $4, $2, $2
lui $2, 0
lui $3, 3
sll $0, $0, 0
TAG464:
bne $1, $1, TAG465
sub $1, $1, $1
mtlo $1
bgtz $1, TAG465
TAG465:
slt $2, $1, $1
lw $4, 0($1)
lbu $1, 0($2)
bgtz $1, TAG466
TAG466:
sw $1, 0($1)
addu $1, $1, $1
bgtz $1, TAG467
lui $1, 3
TAG467:
mthi $1
addu $1, $1, $1
beq $1, $1, TAG468
multu $1, $1
TAG468:
mthi $1
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
TAG469:
bne $1, $1, TAG470
sll $0, $0, 0
bgez $1, TAG470
sll $0, $0, 0
TAG470:
bgez $4, TAG471
mflo $4
sllv $1, $4, $4
mtlo $4
TAG471:
bgez $1, TAG472
sw $1, 0($1)
bne $1, $1, TAG472
mflo $2
TAG472:
mthi $2
lhu $4, 0($2)
mfhi $4
mfhi $4
TAG473:
lb $3, 0($4)
sub $2, $3, $3
mthi $3
mflo $3
TAG474:
bgtz $3, TAG475
multu $3, $3
ori $2, $3, 1
or $3, $3, $2
TAG475:
mthi $3
bne $3, $3, TAG476
lb $1, 0($3)
bne $3, $3, TAG476
TAG476:
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
srlv $3, $1, $1
TAG477:
slti $3, $3, 11
lui $4, 8
mult $3, $3
mult $3, $3
TAG478:
bltz $4, TAG479
mflo $4
srl $4, $4, 9
mflo $1
TAG479:
mfhi $3
ori $3, $1, 8
lui $2, 6
addu $1, $1, $3
TAG480:
or $3, $1, $1
mtlo $1
addu $1, $1, $1
sw $1, 0($1)
TAG481:
mthi $1
mflo $1
srav $3, $1, $1
mflo $3
TAG482:
srl $2, $3, 0
div $2, $2
bne $2, $3, TAG483
mult $2, $2
TAG483:
mthi $2
lui $4, 8
lb $4, 0($2)
subu $4, $4, $2
TAG484:
sra $3, $4, 9
mfhi $2
mthi $2
multu $3, $4
TAG485:
sb $2, 0($2)
multu $2, $2
mthi $2
mfhi $1
TAG486:
or $2, $1, $1
sll $3, $2, 5
divu $3, $1
lui $3, 14
TAG487:
mthi $3
div $3, $3
subu $1, $3, $3
sltu $4, $1, $1
TAG488:
lui $1, 4
ori $2, $4, 6
bgtz $2, TAG489
sb $2, 0($2)
TAG489:
bltz $2, TAG490
mtlo $2
mthi $2
addiu $3, $2, 14
TAG490:
bne $3, $3, TAG491
subu $3, $3, $3
mtlo $3
mflo $2
TAG491:
mtlo $2
bgtz $2, TAG492
srl $2, $2, 5
lui $1, 12
TAG492:
subu $1, $1, $1
nor $1, $1, $1
subu $3, $1, $1
mflo $4
TAG493:
multu $4, $4
beq $4, $4, TAG494
lb $1, 0($4)
mfhi $4
TAG494:
sllv $3, $4, $4
lui $1, 3
sll $0, $0, 0
multu $3, $2
TAG495:
bgtz $2, TAG496
lui $1, 8
sh $1, 0($2)
addiu $2, $1, 6
TAG496:
divu $2, $2
lui $4, 13
bltz $4, TAG497
mflo $2
TAG497:
slti $4, $2, 15
lb $3, 0($4)
lui $4, 14
sll $0, $0, 0
TAG498:
blez $4, TAG499
sll $0, $0, 0
or $4, $4, $4
sll $0, $0, 0
TAG499:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
divu $3, $1
TAG500:
xor $1, $3, $3
lw $1, 0($1)
mult $3, $1
sub $1, $1, $3
TAG501:
lui $1, 15
sll $0, $0, 0
mflo $1
beq $1, $1, TAG502
TAG502:
addiu $2, $1, 8
sltu $4, $2, $2
lui $3, 3
mtlo $1
TAG503:
addiu $3, $3, 4
sll $0, $0, 0
mthi $3
blez $3, TAG504
TAG504:
lui $4, 6
xor $1, $4, $4
nor $4, $4, $3
sll $0, $0, 0
TAG505:
mfhi $2
sll $0, $0, 0
xori $4, $4, 9
mtlo $4
TAG506:
srav $2, $4, $4
beq $2, $4, TAG507
mthi $2
sll $0, $0, 0
TAG507:
bne $2, $2, TAG508
mfhi $3
mfhi $1
sb $3, 2($2)
TAG508:
sb $1, 2($1)
bne $1, $1, TAG509
mthi $1
beq $1, $1, TAG509
TAG509:
andi $1, $1, 4
sh $1, 0($1)
sb $1, 0($1)
or $3, $1, $1
TAG510:
sb $3, 0($3)
bgez $3, TAG511
mthi $3
mthi $3
TAG511:
multu $3, $3
divu $3, $3
mthi $3
mflo $2
TAG512:
sltiu $2, $2, 1
mflo $2
sb $2, 0($2)
sltiu $2, $2, 3
TAG513:
mflo $4
nor $2, $2, $4
xori $2, $2, 9
sb $2, 9($2)
TAG514:
sltiu $2, $2, 1
sb $2, 0($2)
srlv $1, $2, $2
mthi $2
TAG515:
bgtz $1, TAG516
mthi $1
mthi $1
sw $1, 0($1)
TAG516:
bne $1, $1, TAG517
sh $1, 0($1)
mtlo $1
bgtz $1, TAG517
TAG517:
mthi $1
lhu $4, 0($1)
bne $1, $4, TAG518
multu $4, $1
TAG518:
bne $4, $4, TAG519
mfhi $3
bne $4, $4, TAG519
lui $2, 6
TAG519:
lui $4, 12
bne $4, $2, TAG520
sll $0, $0, 0
mfhi $1
TAG520:
sb $1, 0($1)
ori $1, $1, 4
mthi $1
blez $1, TAG521
TAG521:
subu $1, $1, $1
lhu $4, 0($1)
sh $4, 0($4)
lui $3, 5
TAG522:
sll $0, $0, 0
mfhi $4
addiu $1, $4, 8
sb $4, 0($4)
TAG523:
bne $1, $1, TAG524
lhu $4, 0($1)
sb $4, 0($1)
lbu $4, 0($4)
TAG524:
mfhi $2
or $4, $4, $4
beq $4, $4, TAG525
lbu $3, 0($4)
TAG525:
lui $3, 0
mult $3, $3
mfhi $1
blez $3, TAG526
TAG526:
lw $2, 0($1)
lui $3, 0
sb $2, 0($3)
bgtz $3, TAG527
TAG527:
mult $3, $3
sltu $2, $3, $3
sh $3, 0($2)
sh $2, 0($2)
TAG528:
mtlo $2
bltz $2, TAG529
sll $4, $2, 11
sh $2, 0($2)
TAG529:
mult $4, $4
xori $3, $4, 10
multu $3, $4
ori $3, $3, 4
TAG530:
lui $4, 14
lb $4, 0($3)
sb $3, 0($4)
div $4, $4
TAG531:
lhu $1, 0($4)
sltiu $4, $1, 2
slti $2, $1, 14
multu $2, $2
TAG532:
sh $2, 0($2)
lui $2, 1
xor $3, $2, $2
multu $3, $3
TAG533:
bgtz $3, TAG534
lui $3, 2
sll $0, $0, 0
bgez $3, TAG534
TAG534:
ori $2, $3, 14
sll $0, $0, 0
mthi $2
mtlo $3
TAG535:
multu $2, $2
addiu $2, $2, 1
subu $1, $2, $2
slti $3, $2, 12
TAG536:
srlv $3, $3, $3
lhu $4, 0($3)
slti $1, $4, 4
nor $2, $3, $1
TAG537:
lui $2, 12
addiu $3, $2, 1
ori $4, $2, 15
sll $0, $0, 0
TAG538:
addu $2, $2, $2
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG539:
beq $4, $4, TAG540
sll $0, $0, 0
mfhi $3
multu $3, $4
TAG540:
xori $4, $3, 12
divu $4, $4
mfhi $4
blez $3, TAG541
TAG541:
lui $1, 13
bltz $4, TAG542
slti $3, $4, 9
addu $4, $4, $1
TAG542:
bgtz $4, TAG543
lui $1, 1
addi $4, $1, 12
divu $1, $1
TAG543:
sltiu $3, $4, 1
multu $3, $3
bgtz $3, TAG544
sra $3, $4, 12
TAG544:
bgtz $3, TAG545
mult $3, $3
lw $3, 0($3)
lhu $1, 0($3)
TAG545:
mflo $3
mfhi $4
mthi $1
mfhi $3
TAG546:
addu $1, $3, $3
sll $0, $0, 0
mfhi $2
srav $1, $2, $3
TAG547:
bltz $1, TAG548
nor $4, $1, $1
div $1, $4
beq $4, $1, TAG548
TAG548:
mtlo $4
sll $0, $0, 0
srl $4, $4, 0
srlv $3, $4, $4
TAG549:
mthi $3
sb $3, 0($3)
sb $3, 0($3)
lui $2, 10
TAG550:
sll $0, $0, 0
bltz $1, TAG551
mthi $1
sll $0, $0, 0
TAG551:
beq $3, $3, TAG552
mthi $3
bltz $3, TAG552
mthi $3
TAG552:
mflo $4
mfhi $2
lui $1, 8
sb $2, 0($2)
TAG553:
lui $1, 2
sllv $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG554:
lb $4, 0($3)
sltu $2, $4, $4
addu $1, $3, $2
sb $4, 0($1)
TAG555:
xori $1, $1, 12
andi $2, $1, 0
lui $1, 10
bltz $1, TAG556
TAG556:
sll $0, $0, 0
bne $1, $1, TAG557
or $2, $1, $1
sll $0, $0, 0
TAG557:
sll $1, $2, 15
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG558:
sll $0, $0, 0
lui $2, 12
div $2, $4
mfhi $4
TAG559:
lui $4, 12
addu $2, $4, $4
div $4, $4
mfhi $1
TAG560:
lui $1, 6
sll $0, $0, 0
bne $1, $1, TAG561
sll $0, $0, 0
TAG561:
lui $4, 13
mfhi $1
lui $3, 13
mtlo $4
TAG562:
divu $3, $3
bgez $3, TAG563
sll $3, $3, 14
ori $4, $3, 1
TAG563:
bne $4, $4, TAG564
lui $4, 12
bne $4, $4, TAG564
sll $0, $0, 0
TAG564:
sll $0, $0, 0
bne $4, $4, TAG565
lui $4, 1
lui $3, 9
TAG565:
sll $0, $0, 0
lui $4, 10
mthi $4
and $2, $3, $4
TAG566:
sltiu $3, $2, 10
sltu $2, $3, $3
lui $2, 2
sll $0, $0, 0
TAG567:
sll $0, $0, 0
bgtz $4, TAG568
sll $0, $0, 0
sb $3, 0($3)
TAG568:
mfhi $2
ori $3, $2, 0
bgez $3, TAG569
mflo $1
TAG569:
addiu $1, $1, 6
lb $1, 0($1)
lb $2, 0($1)
addu $3, $1, $1
TAG570:
sb $3, 0($3)
slt $4, $3, $3
sb $3, 0($3)
and $4, $3, $4
TAG571:
mfhi $2
mfhi $2
sll $0, $0, 0
multu $2, $2
TAG572:
mthi $2
slti $3, $2, 1
lui $4, 14
bgtz $3, TAG573
TAG573:
lui $4, 11
sllv $3, $4, $4
mthi $4
mthi $4
TAG574:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
subu $1, $3, $3
TAG575:
mflo $1
beq $1, $1, TAG576
divu $1, $1
sltiu $2, $1, 4
TAG576:
mflo $1
mtlo $2
sll $0, $0, 0
slti $3, $1, 6
TAG577:
sb $3, 0($3)
mflo $4
divu $3, $3
divu $3, $3
TAG578:
bne $4, $4, TAG579
mfhi $4
srav $3, $4, $4
blez $4, TAG579
TAG579:
andi $3, $3, 2
mthi $3
lh $2, 0($3)
bltz $2, TAG580
TAG580:
multu $2, $2
lui $4, 14
mtlo $4
addu $4, $2, $2
TAG581:
subu $3, $4, $4
lui $4, 13
lui $1, 4
sra $4, $1, 14
TAG582:
sb $4, 0($4)
mflo $2
divu $2, $4
blez $2, TAG583
TAG583:
mult $2, $2
sll $0, $0, 0
divu $2, $2
bne $2, $2, TAG584
TAG584:
andi $3, $2, 13
blez $3, TAG585
mtlo $3
ori $3, $2, 7
TAG585:
bgez $3, TAG586
lui $1, 15
bne $3, $1, TAG586
mtlo $1
TAG586:
sra $2, $1, 12
multu $1, $2
mfhi $3
lui $1, 12
TAG587:
sll $0, $0, 0
bne $1, $1, TAG588
nor $1, $1, $1
beq $1, $1, TAG588
TAG588:
srlv $2, $1, $1
sll $0, $0, 0
lui $4, 8
mflo $4
TAG589:
divu $4, $4
sll $0, $0, 0
beq $4, $1, TAG590
sll $0, $0, 0
TAG590:
lui $4, 11
slti $4, $4, 6
nor $3, $4, $1
mfhi $4
TAG591:
sltu $1, $4, $4
sub $3, $4, $4
bne $4, $1, TAG592
lui $1, 0
TAG592:
sub $2, $1, $1
multu $2, $2
srlv $3, $1, $2
sw $2, 0($1)
TAG593:
bgtz $3, TAG594
lw $4, 0($3)
sltu $2, $4, $4
mult $3, $4
TAG594:
mflo $4
bne $2, $2, TAG595
sll $1, $2, 13
lh $2, 0($4)
TAG595:
and $3, $2, $2
mfhi $2
sll $2, $2, 0
blez $2, TAG596
TAG596:
lui $1, 0
bne $1, $1, TAG597
mflo $1
ori $3, $1, 1
TAG597:
beq $3, $3, TAG598
lui $2, 6
bgez $3, TAG598
mthi $3
TAG598:
mfhi $2
lui $2, 4
sll $0, $0, 0
mflo $3
TAG599:
mult $3, $3
mult $3, $3
lw $4, 0($3)
lui $2, 2
TAG600:
mthi $2
srl $3, $2, 10
multu $3, $2
beq $2, $3, TAG601
TAG601:
mtlo $3
sw $3, 0($3)
div $3, $3
subu $4, $3, $3
TAG602:
mtlo $4
mtlo $4
lhu $1, 0($4)
bgtz $4, TAG603
TAG603:
sw $1, 0($1)
blez $1, TAG604
mflo $3
sb $3, 0($3)
TAG604:
bne $3, $3, TAG605
addi $2, $3, 2
bne $3, $2, TAG605
lhu $4, 0($2)
TAG605:
blez $4, TAG606
slti $3, $4, 2
beq $3, $3, TAG606
sb $4, 0($4)
TAG606:
mult $3, $3
sra $4, $3, 9
mult $3, $4
blez $4, TAG607
TAG607:
sb $4, 0($4)
srav $3, $4, $4
sb $4, 0($3)
xori $3, $3, 6
TAG608:
srl $3, $3, 3
sub $1, $3, $3
multu $3, $1
srav $4, $3, $1
TAG609:
mflo $3
beq $3, $3, TAG610
mult $4, $4
lw $4, 0($3)
TAG610:
beq $4, $4, TAG611
sw $4, 0($4)
sll $4, $4, 10
mflo $2
TAG611:
lhu $1, 0($2)
mthi $1
sh $1, 0($2)
blez $1, TAG612
TAG612:
lui $2, 10
mfhi $2
lbu $4, 0($2)
bne $2, $2, TAG613
TAG613:
lh $4, 0($4)
lh $3, 0($4)
mflo $3
sll $1, $4, 2
TAG614:
bne $1, $1, TAG615
subu $4, $1, $1
mthi $1
mfhi $1
TAG615:
lh $3, 0($1)
lb $3, 0($1)
mthi $3
sb $3, 0($3)
TAG616:
sb $3, 0($3)
slti $2, $3, 5
lb $3, 0($3)
mflo $4
TAG617:
add $4, $4, $4
sllv $4, $4, $4
bne $4, $4, TAG618
lui $4, 3
TAG618:
sra $2, $4, 0
sll $0, $0, 0
mthi $4
divu $4, $2
TAG619:
and $2, $2, $2
andi $3, $2, 12
lui $1, 4
divu $1, $2
TAG620:
sll $0, $0, 0
beq $1, $1, TAG621
sll $0, $0, 0
lui $2, 7
TAG621:
lui $2, 5
mthi $2
xori $1, $2, 10
mthi $2
TAG622:
sll $0, $0, 0
mthi $3
sw $1, 0($3)
slt $3, $1, $3
TAG623:
bgez $3, TAG624
sllv $2, $3, $3
lhu $2, 0($3)
sub $3, $3, $2
TAG624:
addiu $3, $3, 14
bne $3, $3, TAG625
sh $3, 0($3)
mfhi $2
TAG625:
lh $3, 0($2)
bgtz $3, TAG626
lhu $2, 0($3)
sll $2, $3, 3
TAG626:
bne $2, $2, TAG627
sw $2, 0($2)
bltz $2, TAG627
lui $4, 4
TAG627:
beq $4, $4, TAG628
mtlo $4
sra $2, $4, 0
bgez $4, TAG628
TAG628:
mthi $2
srav $1, $2, $2
lw $3, 0($1)
sb $2, 0($2)
TAG629:
mult $3, $3
ori $4, $3, 9
sw $3, 0($3)
lui $1, 10
TAG630:
mfhi $3
or $2, $1, $1
lbu $2, 0($3)
andi $1, $3, 3
TAG631:
bgez $1, TAG632
ori $4, $1, 8
or $3, $4, $1
bne $1, $3, TAG632
TAG632:
sh $3, 0($3)
sh $3, 0($3)
multu $3, $3
lui $3, 1
TAG633:
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
lui $1, 5
TAG634:
sltu $2, $1, $1
mult $1, $2
addi $2, $2, 15
bne $2, $2, TAG635
TAG635:
div $2, $2
sb $2, 0($2)
lui $3, 11
sra $2, $2, 14
TAG636:
srav $2, $2, $2
beq $2, $2, TAG637
mtlo $2
sub $1, $2, $2
TAG637:
mult $1, $1
div $1, $1
divu $1, $1
blez $1, TAG638
TAG638:
sll $0, $0, 0
sll $0, $0, 0
or $4, $1, $1
addu $2, $4, $1
TAG639:
lui $3, 7
bgtz $3, TAG640
div $2, $2
mtlo $2
TAG640:
mthi $3
lui $4, 2
sll $2, $4, 11
mflo $1
TAG641:
sllv $4, $1, $1
addiu $1, $4, 6
div $4, $1
div $1, $1
TAG642:
subu $1, $1, $1
sh $1, 0($1)
slt $1, $1, $1
srav $3, $1, $1
TAG643:
addi $3, $3, 7
bgtz $3, TAG644
addu $3, $3, $3
sh $3, 0($3)
TAG644:
nor $4, $3, $3
lui $4, 9
lhu $4, 0($3)
addiu $4, $4, 3
TAG645:
mtlo $4
lui $3, 14
sll $0, $0, 0
sltu $4, $4, $2
TAG646:
bne $4, $4, TAG647
sb $4, 0($4)
divu $4, $4
lb $4, 0($4)
TAG647:
bne $4, $4, TAG648
slt $1, $4, $4
mthi $1
mthi $1
TAG648:
bne $1, $1, TAG649
mflo $2
mflo $4
mtlo $4
TAG649:
sb $4, 0($4)
beq $4, $4, TAG650
lui $1, 10
ori $1, $1, 0
TAG650:
lui $4, 15
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
TAG651:
mult $3, $3
lui $1, 0
sll $0, $0, 0
bne $4, $1, TAG652
TAG652:
sll $0, $0, 0
sll $0, $0, 0
srl $4, $4, 4
blez $4, TAG653
TAG653:
or $1, $4, $4
mult $1, $4
sll $0, $0, 0
sll $0, $0, 0
TAG654:
bltz $4, TAG655
sra $3, $4, 7
bne $4, $4, TAG655
mult $3, $4
TAG655:
lui $4, 1
lw $3, -480($3)
mflo $1
beq $3, $4, TAG656
TAG656:
mthi $1
andi $3, $1, 6
lb $3, 0($3)
srav $1, $3, $3
TAG657:
lui $4, 0
sltu $1, $1, $1
add $4, $1, $1
lhu $1, 0($4)
TAG658:
ori $2, $1, 10
xor $3, $1, $2
xor $1, $1, $2
div $3, $2
TAG659:
mthi $1
lhu $2, 0($1)
blez $1, TAG660
lhu $4, 0($1)
TAG660:
lw $2, 0($4)
mflo $2
xori $4, $4, 5
mult $2, $2
TAG661:
lui $1, 15
mfhi $2
beq $4, $2, TAG662
multu $4, $2
TAG662:
lw $3, 0($2)
lui $3, 13
lh $2, 0($2)
blez $3, TAG663
TAG663:
ori $4, $2, 15
beq $2, $2, TAG664
lb $1, -271($4)
multu $2, $2
TAG664:
mflo $1
bne $1, $1, TAG665
nor $1, $1, $1
sw $1, 1($1)
TAG665:
divu $1, $1
mult $1, $1
xori $2, $1, 14
bgez $1, TAG666
TAG666:
ori $1, $2, 6
mthi $1
mflo $4
bgtz $1, TAG667
TAG667:
lb $2, 0($4)
sltu $4, $2, $2
and $1, $4, $2
mtlo $4
TAG668:
mthi $1
bgez $1, TAG669
mflo $4
bne $4, $4, TAG669
TAG669:
mult $4, $4
addiu $4, $4, 15
mtlo $4
sb $4, 0($4)
TAG670:
lb $4, 0($4)
sb $4, 0($4)
lui $4, 6
sll $0, $0, 0
TAG671:
sll $0, $0, 0
addiu $3, $4, 3
bltz $4, TAG672
lui $2, 15
TAG672:
mult $2, $2
srlv $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG673:
mfhi $4
sll $0, $0, 0
subu $4, $4, $1
multu $4, $4
TAG674:
lui $1, 6
beq $4, $4, TAG675
multu $4, $1
sh $4, 0($1)
TAG675:
sll $0, $0, 0
bltz $1, TAG676
sll $0, $0, 0
div $1, $1
TAG676:
lui $3, 3
mult $1, $1
sll $0, $0, 0
lui $1, 11
TAG677:
beq $1, $1, TAG678
multu $1, $1
addiu $1, $1, 4
div $1, $1
TAG678:
mflo $4
slti $4, $1, 3
divu $4, $1
xori $3, $4, 1
TAG679:
mult $3, $3
multu $3, $3
lbu $4, 0($3)
bgtz $3, TAG680
TAG680:
sll $0, $0, 0
bne $2, $2, TAG681
lh $1, -255($4)
beq $4, $1, TAG681
TAG681:
sll $0, $0, 0
mthi $1
lhu $2, 1($1)
mfhi $3
TAG682:
bltz $3, TAG683
lb $1, 1($3)
lui $3, 0
sb $1, 0($1)
TAG683:
subu $3, $3, $3
mtlo $3
beq $3, $3, TAG684
mthi $3
TAG684:
beq $3, $3, TAG685
mult $3, $3
lb $2, 0($3)
lhu $3, 0($2)
TAG685:
lui $3, 2
lui $3, 8
div $3, $3
sltu $2, $3, $3
TAG686:
bgtz $2, TAG687
lui $1, 8
mfhi $3
mfhi $4
TAG687:
bne $4, $4, TAG688
sh $4, 0($4)
or $1, $4, $4
beq $4, $1, TAG688
TAG688:
lui $3, 15
sll $0, $0, 0
bne $2, $1, TAG689
xor $4, $3, $2
TAG689:
sll $0, $0, 0
sltiu $2, $4, 12
mult $2, $2
bltz $4, TAG690
TAG690:
subu $2, $2, $2
slti $3, $2, 8
mtlo $3
mult $2, $3
TAG691:
div $3, $3
mfhi $4
sb $3, 0($4)
sll $1, $3, 14
TAG692:
sh $1, -16384($1)
bltz $1, TAG693
addiu $2, $1, 12
lhu $1, -16396($2)
TAG693:
sll $0, $0, 0
sb $1, 0($3)
srl $3, $1, 14
bne $3, $3, TAG694
TAG694:
mthi $3
mfhi $2
lui $4, 3
lui $3, 1
TAG695:
sll $0, $0, 0
mult $3, $3
mtlo $3
mflo $3
TAG696:
sll $0, $0, 0
or $2, $4, $4
lui $3, 8
sll $0, $0, 0
TAG697:
xori $3, $3, 6
mthi $3
mthi $3
blez $3, TAG698
TAG698:
sra $1, $3, 2
addiu $3, $1, 3
slti $2, $3, 14
lhu $2, 0($2)
TAG699:
xori $2, $2, 5
addu $4, $2, $2
srlv $4, $4, $2
addiu $2, $4, 11
TAG700:
sra $1, $2, 12
sb $1, 0($2)
divu $2, $2
addu $4, $1, $2
TAG701:
div $4, $4
bne $4, $4, TAG702
addiu $3, $4, 0
srlv $1, $4, $4
TAG702:
blez $1, TAG703
lui $1, 9
sw $1, 0($1)
bltz $1, TAG703
TAG703:
div $1, $1
multu $1, $1
srl $2, $1, 12
mtlo $2
TAG704:
srl $1, $2, 1
sll $1, $2, 8
bgtz $1, TAG705
addu $3, $1, $1
TAG705:
divu $3, $3
mtlo $3
bne $3, $3, TAG706
sll $0, $0, 0
TAG706:
beq $2, $2, TAG707
lhu $2, -144($2)
bgez $2, TAG707
sub $4, $2, $2
TAG707:
bgez $4, TAG708
divu $4, $4
multu $4, $4
mtlo $4
TAG708:
div $4, $4
bne $4, $4, TAG709
nor $3, $4, $4
beq $3, $3, TAG709
TAG709:
div $3, $3
sllv $2, $3, $3
mthi $2
lhu $2, 12($3)
TAG710:
sb $2, 0($2)
lui $2, 15
sll $0, $0, 0
mtlo $1
TAG711:
sll $0, $0, 0
bne $1, $2, TAG712
lui $1, 14
sh $1, 0($2)
TAG712:
mult $1, $1
bne $1, $1, TAG713
mfhi $3
mflo $3
TAG713:
mfhi $4
mflo $3
sb $4, 0($3)
lui $2, 5
TAG714:
mthi $2
divu $2, $2
beq $2, $2, TAG715
mthi $2
TAG715:
subu $3, $2, $2
lw $2, 0($3)
mtlo $2
divu $2, $2
TAG716:
sll $0, $0, 0
lui $4, 5
mfhi $1
mfhi $3
TAG717:
mfhi $4
bgtz $4, TAG718
lb $4, 0($4)
mtlo $4
TAG718:
lui $3, 14
blez $3, TAG719
sra $3, $4, 5
lui $3, 5
TAG719:
sll $0, $0, 0
lb $1, 60($4)
slti $2, $3, 8
mthi $1
TAG720:
addiu $3, $2, 9
sb $2, 0($3)
multu $3, $2
lui $2, 13
TAG721:
slt $1, $2, $2
sll $0, $0, 0
srl $3, $1, 14
slti $2, $3, 9
TAG722:
slti $2, $2, 7
mult $2, $2
sb $2, 0($2)
addu $4, $2, $2
TAG723:
mtlo $4
lui $1, 13
beq $1, $4, TAG724
mflo $4
TAG724:
bgtz $4, TAG725
lhu $4, 0($4)
divu $4, $4
sw $4, 0($4)
TAG725:
multu $4, $4
beq $4, $4, TAG726
mfhi $1
sra $1, $4, 2
TAG726:
lui $4, 0
srl $4, $4, 14
slti $1, $4, 9
mflo $3
TAG727:
mtlo $3
sll $0, $0, 0
xor $4, $1, $3
sll $0, $0, 0
TAG728:
blez $4, TAG729
lui $4, 2
beq $4, $4, TAG729
lb $2, 0($4)
TAG729:
slt $4, $2, $2
lbu $3, 0($2)
bgez $3, TAG730
sltu $4, $2, $3
TAG730:
mult $4, $4
sw $4, 0($4)
lui $2, 15
or $2, $4, $4
TAG731:
blez $2, TAG732
andi $1, $2, 10
mtlo $2
mthi $2
TAG732:
lui $2, 10
lw $3, 0($1)
mthi $3
lui $4, 8
TAG733:
addiu $2, $4, 2
xori $4, $4, 13
lui $1, 3
mflo $4
TAG734:
lui $3, 7
mult $3, $4
multu $3, $4
mtlo $3
TAG735:
subu $3, $3, $3
sw $3, 0($3)
beq $3, $3, TAG736
mthi $3
TAG736:
mflo $2
bgez $2, TAG737
sb $2, 0($3)
bne $2, $2, TAG737
TAG737:
mult $2, $2
div $2, $2
srav $1, $2, $2
sll $0, $0, 0
TAG738:
beq $1, $1, TAG739
sll $0, $0, 0
mflo $4
mfhi $2
TAG739:
or $2, $2, $2
bne $2, $2, TAG740
mflo $4
mtlo $2
TAG740:
sltiu $2, $4, 8
sltiu $1, $2, 3
subu $2, $1, $1
and $2, $4, $2
TAG741:
lui $3, 1
sll $4, $2, 7
multu $3, $2
mflo $4
TAG742:
mult $4, $4
mult $4, $4
bne $4, $4, TAG743
nor $2, $4, $4
TAG743:
mthi $2
mfhi $3
srl $2, $2, 2
lui $1, 4
TAG744:
sll $0, $0, 0
mfhi $1
lui $2, 6
lbu $4, 1($3)
TAG745:
multu $4, $4
addi $2, $4, 6
multu $2, $4
sllv $3, $4, $2
TAG746:
bltz $3, TAG747
sllv $4, $3, $3
mult $4, $4
and $4, $3, $4
TAG747:
multu $4, $4
mflo $3
slt $2, $4, $3
bne $4, $4, TAG748
TAG748:
mult $2, $2
lui $1, 12
bgtz $1, TAG749
sll $0, $0, 0
TAG749:
blez $3, TAG750
xori $2, $3, 10
mflo $3
ori $1, $3, 1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop