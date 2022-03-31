ori $1, $0, 6
ori $2, $0, 12
ori $3, $0, 2
ori $4, $0, 14
sw $4, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $2, 40($0)
sw $3, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $4, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $3, 84($0)
sw $3, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $1, 124($0)
lhu $1, 0($2)
sll $3, $1, 6
mult $3, $1
div $2, $3
TAG1:
sb $3, -768($3)
lbu $2, -768($3)
sll $3, $2, 9
mfhi $4
TAG2:
and $3, $4, $4
or $2, $4, $3
blez $4, TAG3
lui $2, 2
TAG3:
lui $1, 3
mtlo $1
nor $4, $2, $1
slt $4, $1, $1
TAG4:
lui $4, 1
blez $4, TAG5
xori $2, $4, 9
srl $1, $2, 12
TAG5:
sh $1, 0($1)
srlv $2, $1, $1
sltiu $3, $1, 10
mflo $2
TAG6:
sll $0, $0, 0
blez $2, TAG7
addu $4, $2, $2
sll $0, $0, 0
TAG7:
bne $4, $4, TAG8
sll $0, $0, 0
addu $4, $2, $2
bltz $2, TAG8
TAG8:
sll $0, $0, 0
mthi $4
sra $2, $4, 4
mthi $2
TAG9:
sll $0, $0, 0
mflo $2
sra $1, $2, 10
lui $3, 5
TAG10:
sll $0, $0, 0
sltiu $2, $2, 13
sltu $2, $3, $3
lui $2, 6
TAG11:
bltz $2, TAG12
ori $4, $2, 3
mflo $2
slt $4, $4, $2
TAG12:
lui $1, 5
sh $4, 0($4)
mult $4, $1
sra $2, $4, 12
TAG13:
multu $2, $2
sw $2, 0($2)
sb $2, 0($2)
lui $2, 5
TAG14:
lui $3, 13
srl $4, $2, 4
sll $4, $3, 14
beq $2, $4, TAG15
TAG15:
mthi $4
ori $3, $4, 2
sll $0, $0, 0
xori $4, $4, 7
TAG16:
mult $4, $4
bne $4, $4, TAG17
srlv $3, $4, $4
mtlo $3
TAG17:
mflo $2
mflo $4
lui $2, 7
sll $0, $0, 0
TAG18:
sll $0, $0, 0
or $3, $3, $3
bltz $4, TAG19
sll $0, $0, 0
TAG19:
sltu $1, $3, $3
bne $3, $1, TAG20
sll $0, $0, 0
mtlo $3
TAG20:
sw $1, 0($1)
mult $1, $1
and $1, $1, $1
sw $1, 0($1)
TAG21:
subu $1, $1, $1
xori $4, $1, 10
bgtz $1, TAG22
xori $1, $1, 15
TAG22:
divu $1, $1
lui $2, 11
srl $4, $1, 5
sll $0, $0, 0
TAG23:
beq $4, $4, TAG24
mfhi $3
beq $4, $3, TAG24
mthi $4
TAG24:
or $3, $3, $3
sltiu $1, $3, 2
lhu $3, 0($3)
bgtz $1, TAG25
TAG25:
lui $4, 10
ori $1, $4, 2
xori $2, $4, 2
sllv $4, $3, $2
TAG26:
sb $4, 0($4)
mtlo $4
mult $4, $4
sw $4, 0($4)
TAG27:
mfhi $2
mtlo $2
mflo $4
mflo $1
TAG28:
multu $1, $1
or $4, $1, $1
mthi $1
mfhi $3
TAG29:
beq $3, $3, TAG30
multu $3, $3
mtlo $3
sra $3, $3, 0
TAG30:
mfhi $1
mtlo $1
sb $3, 0($3)
lbu $4, 0($1)
TAG31:
lb $2, 0($4)
mult $2, $2
sw $2, 0($2)
sw $4, 0($2)
TAG32:
blez $2, TAG33
mtlo $2
lh $4, 0($2)
bgez $4, TAG33
TAG33:
sb $4, 0($4)
lui $3, 6
bltz $3, TAG34
srl $1, $4, 5
TAG34:
lbu $3, 0($1)
lh $1, 0($3)
bgtz $1, TAG35
xori $2, $1, 3
TAG35:
lb $4, 0($2)
sll $3, $4, 15
mfhi $1
sh $4, 0($4)
TAG36:
mfhi $2
mult $2, $1
bne $2, $1, TAG37
mfhi $2
TAG37:
multu $2, $2
multu $2, $2
lui $3, 15
sll $0, $0, 0
TAG38:
sub $3, $1, $1
lw $4, 0($1)
bne $3, $1, TAG39
mthi $4
TAG39:
lui $2, 1
mflo $2
bgtz $2, TAG40
mfhi $4
TAG40:
lui $2, 13
mult $4, $4
mthi $2
beq $2, $4, TAG41
TAG41:
mthi $2
sll $3, $2, 14
sll $0, $0, 0
mthi $2
TAG42:
lui $2, 10
subu $3, $3, $3
beq $3, $2, TAG43
multu $3, $2
TAG43:
sb $3, 0($3)
mtlo $3
lui $4, 7
mfhi $3
TAG44:
sll $4, $3, 15
mult $4, $3
sltu $4, $4, $3
lh $4, 0($4)
TAG45:
mthi $4
sb $4, 0($4)
sb $4, 0($4)
addi $3, $4, 12
TAG46:
lhu $3, 0($3)
xori $1, $3, 1
lb $4, 0($1)
beq $3, $3, TAG47
TAG47:
addu $3, $4, $4
bltz $3, TAG48
lui $1, 1
beq $1, $4, TAG48
TAG48:
mthi $1
sltu $3, $1, $1
bgtz $1, TAG49
xor $3, $3, $3
TAG49:
mult $3, $3
slt $1, $3, $3
add $3, $1, $1
mfhi $3
TAG50:
lui $3, 3
mflo $1
lb $3, 0($1)
sw $3, 0($1)
TAG51:
sll $4, $3, 3
and $2, $3, $4
nor $3, $3, $4
lhu $3, 1($3)
TAG52:
lw $2, 0($3)
sra $4, $3, 13
sllv $3, $2, $3
srl $2, $2, 5
TAG53:
sll $1, $2, 4
lui $3, 12
lui $2, 11
srav $1, $2, $2
TAG54:
bltz $1, TAG55
mfhi $1
mthi $1
lui $2, 0
TAG55:
slti $1, $2, 3
bgez $2, TAG56
lh $3, 0($2)
mflo $2
TAG56:
mult $2, $2
bne $2, $2, TAG57
lui $2, 3
lui $2, 2
TAG57:
mflo $3
lui $1, 3
sll $0, $0, 0
sll $4, $4, 8
TAG58:
lhu $3, 0($4)
mtlo $4
bne $4, $4, TAG59
andi $1, $4, 8
TAG59:
srl $4, $1, 10
sltu $2, $1, $4
lw $1, 0($4)
subu $3, $1, $2
TAG60:
lh $4, 0($3)
mult $3, $4
mthi $3
mflo $4
TAG61:
mtlo $4
mfhi $4
mfhi $4
beq $4, $4, TAG62
TAG62:
sw $4, 0($4)
bne $4, $4, TAG63
mfhi $1
lhu $1, 0($4)
TAG63:
lhu $2, 0($1)
sw $1, 0($1)
beq $2, $2, TAG64
mthi $2
TAG64:
bgtz $2, TAG65
mfhi $1
xori $2, $2, 10
ori $4, $2, 6
TAG65:
lh $2, 0($4)
mthi $2
lb $1, 0($2)
sh $2, 0($4)
TAG66:
ori $3, $1, 6
addu $4, $1, $3
bltz $1, TAG67
mflo $1
TAG67:
mthi $1
nor $2, $1, $1
mflo $3
mthi $1
TAG68:
bne $3, $3, TAG69
ori $4, $3, 12
multu $4, $3
lui $2, 6
TAG69:
sll $0, $0, 0
lui $4, 0
mfhi $3
bltz $3, TAG70
TAG70:
sb $3, 0($3)
lui $1, 13
mflo $1
multu $1, $1
TAG71:
xor $2, $1, $1
mult $1, $1
lui $1, 8
multu $2, $2
TAG72:
mtlo $1
sll $0, $0, 0
lui $1, 2
mthi $1
TAG73:
sll $0, $0, 0
slt $2, $4, $1
sltu $3, $4, $1
lb $2, 0($2)
TAG74:
mflo $3
lw $2, 0($2)
bltz $2, TAG75
divu $2, $3
TAG75:
lh $2, 0($2)
sltiu $4, $2, 8
mfhi $3
lh $3, 0($2)
TAG76:
and $4, $3, $3
sw $3, 0($4)
sllv $1, $4, $3
sltiu $1, $4, 15
TAG77:
ori $1, $1, 4
bgez $1, TAG78
multu $1, $1
sb $1, 0($1)
TAG78:
mtlo $1
sb $1, 0($1)
sb $1, 0($1)
slt $4, $1, $1
TAG79:
mfhi $4
bne $4, $4, TAG80
lui $1, 11
blez $4, TAG80
TAG80:
mfhi $2
sll $0, $0, 0
beq $4, $4, TAG81
andi $4, $1, 1
TAG81:
mflo $2
mthi $4
lbu $3, 0($2)
lbu $2, 0($4)
TAG82:
andi $3, $2, 7
bne $3, $3, TAG83
sll $4, $2, 9
mfhi $1
TAG83:
mthi $1
bne $1, $1, TAG84
mult $1, $1
mthi $1
TAG84:
mflo $4
addi $1, $1, 0
sllv $1, $1, $1
bgez $1, TAG85
TAG85:
sltu $2, $1, $1
mflo $2
multu $2, $2
mfhi $2
TAG86:
mult $2, $2
mtlo $2
lb $4, 0($2)
bgez $2, TAG87
TAG87:
lui $2, 14
lui $4, 4
mfhi $1
sb $2, 0($1)
TAG88:
lhu $3, 0($1)
mthi $1
sll $1, $1, 11
srav $4, $1, $1
TAG89:
lb $2, 0($4)
multu $4, $4
bne $2, $4, TAG90
mult $2, $4
TAG90:
multu $2, $2
blez $2, TAG91
andi $2, $2, 14
mtlo $2
TAG91:
mult $2, $2
bltz $2, TAG92
mfhi $4
lui $2, 5
TAG92:
lui $1, 1
mflo $1
lh $2, 0($1)
lbu $1, 0($1)
TAG93:
blez $1, TAG94
mfhi $4
bltz $4, TAG94
lui $2, 12
TAG94:
beq $2, $2, TAG95
mflo $3
divu $3, $2
mult $2, $2
TAG95:
sb $3, 0($3)
sh $3, 0($3)
sw $3, 0($3)
multu $3, $3
TAG96:
sra $3, $3, 0
lw $4, 0($3)
subu $4, $4, $3
mthi $3
TAG97:
lbu $2, 0($4)
slt $4, $4, $2
mfhi $4
mult $4, $2
TAG98:
lui $4, 10
sll $0, $0, 0
and $4, $4, $4
sll $0, $0, 0
TAG99:
mfhi $4
bne $4, $4, TAG100
slti $1, $4, 2
multu $4, $4
TAG100:
mthi $1
lui $1, 6
beq $1, $1, TAG101
sll $0, $0, 0
TAG101:
and $1, $1, $1
sll $0, $0, 0
mtlo $1
xori $2, $1, 13
TAG102:
sll $0, $0, 0
bne $1, $2, TAG103
nor $4, $1, $1
sh $4, 0($4)
TAG103:
slt $3, $4, $4
bgez $4, TAG104
sll $0, $0, 0
divu $3, $4
TAG104:
lbu $1, 0($3)
bne $3, $1, TAG105
andi $1, $1, 2
bne $1, $1, TAG105
TAG105:
lbu $3, 0($1)
beq $1, $1, TAG106
multu $1, $1
and $2, $3, $1
TAG106:
mfhi $1
xor $4, $1, $2
sll $0, $0, 0
sll $0, $0, 0
TAG107:
mtlo $3
bgez $3, TAG108
sb $3, 0($3)
lui $1, 7
TAG108:
mtlo $1
beq $1, $1, TAG109
addu $2, $1, $1
lui $2, 9
TAG109:
sh $2, 0($2)
sh $2, 0($2)
mfhi $4
mfhi $3
TAG110:
or $1, $3, $3
sw $3, 0($1)
lui $4, 3
mtlo $3
TAG111:
mthi $4
beq $4, $4, TAG112
sll $0, $0, 0
lw $1, 0($4)
TAG112:
beq $1, $1, TAG113
addu $2, $1, $1
mthi $1
mflo $2
TAG113:
mfhi $3
mult $2, $3
srl $4, $2, 13
sll $0, $0, 0
TAG114:
lui $2, 0
mflo $3
bne $3, $3, TAG115
lui $3, 6
TAG115:
bgtz $3, TAG116
sltu $3, $3, $3
multu $3, $3
subu $2, $3, $3
TAG116:
lbu $2, 0($2)
lh $3, 0($2)
sub $4, $2, $2
bltz $3, TAG117
TAG117:
lw $2, 0($4)
lhu $1, 0($2)
lui $1, 8
mflo $3
TAG118:
bne $3, $3, TAG119
sb $3, 0($3)
lhu $1, 0($3)
lb $3, 0($3)
TAG119:
bgez $3, TAG120
lbu $3, 0($3)
bltz $3, TAG120
srl $2, $3, 15
TAG120:
bne $2, $2, TAG121
mthi $2
multu $2, $2
lw $4, 0($2)
TAG121:
mflo $2
mflo $3
mfhi $3
mfhi $1
TAG122:
mthi $1
mflo $4
mthi $1
lbu $2, 0($1)
TAG123:
mult $2, $2
mtlo $2
sh $2, 0($2)
sltiu $1, $2, 15
TAG124:
div $1, $1
mflo $3
mult $1, $3
mflo $2
TAG125:
sb $2, 0($2)
lui $4, 3
mflo $1
sb $4, 0($1)
TAG126:
lui $4, 3
mthi $4
multu $1, $4
sra $4, $4, 6
TAG127:
sll $0, $0, 0
lui $2, 15
bne $2, $2, TAG128
mult $2, $4
TAG128:
sll $0, $0, 0
mflo $2
bne $2, $2, TAG129
addiu $4, $2, 2
TAG129:
mthi $4
subu $1, $4, $4
mthi $4
bne $4, $1, TAG130
TAG130:
lui $4, 9
multu $4, $1
lui $3, 14
bne $3, $1, TAG131
TAG131:
multu $3, $3
bne $3, $3, TAG132
addiu $4, $3, 3
mult $4, $3
TAG132:
bne $4, $4, TAG133
mfhi $4
mfhi $3
xori $2, $3, 7
TAG133:
sw $2, -195($2)
bgtz $2, TAG134
multu $2, $2
beq $2, $2, TAG134
TAG134:
lui $2, 15
mfhi $2
ori $2, $2, 3
mthi $2
TAG135:
mthi $2
lui $4, 15
sb $4, 0($2)
mthi $4
TAG136:
sll $0, $0, 0
lui $2, 5
mfhi $4
andi $3, $4, 13
TAG137:
xori $1, $3, 1
addu $4, $3, $3
bltz $3, TAG138
sw $4, 0($4)
TAG138:
mult $4, $4
multu $4, $4
lh $3, 0($4)
beq $4, $3, TAG139
TAG139:
lb $3, 0($3)
and $1, $3, $3
sh $3, 0($3)
beq $3, $3, TAG140
TAG140:
or $1, $1, $1
lbu $2, 0($1)
mfhi $2
lui $4, 7
TAG141:
sll $0, $0, 0
beq $4, $2, TAG142
sub $3, $4, $2
subu $1, $4, $2
TAG142:
lui $1, 3
mfhi $1
sub $4, $1, $1
blez $1, TAG143
TAG143:
sb $4, 0($4)
mfhi $4
mtlo $4
mthi $4
TAG144:
bltz $4, TAG145
sw $4, 0($4)
sb $4, 0($4)
lb $2, 0($4)
TAG145:
sra $3, $2, 15
mfhi $3
and $3, $3, $3
beq $2, $3, TAG146
TAG146:
lui $3, 7
mult $3, $3
addu $4, $3, $3
bltz $3, TAG147
TAG147:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
lui $2, 14
TAG148:
bltz $2, TAG149
sll $0, $0, 0
sll $0, $0, 0
sll $3, $2, 5
TAG149:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
bne $3, $3, TAG150
TAG150:
mfhi $1
mfhi $4
div $1, $3
mfhi $4
TAG151:
xori $1, $4, 13
mflo $3
addiu $2, $1, 0
mtlo $1
TAG152:
mult $2, $2
beq $2, $2, TAG153
mtlo $2
sw $2, 0($2)
TAG153:
divu $2, $2
addiu $4, $2, 1
lui $3, 15
subu $2, $2, $4
TAG154:
mtlo $2
mult $2, $2
multu $2, $2
srl $3, $2, 13
TAG155:
bltz $3, TAG156
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG156:
sll $0, $0, 0
bgez $2, TAG157
lui $3, 7
mfhi $1
TAG157:
andi $3, $1, 2
mthi $3
sh $3, 0($3)
blez $1, TAG158
TAG158:
lui $4, 9
beq $4, $4, TAG159
lui $4, 11
bne $4, $4, TAG159
TAG159:
mfhi $4
lui $1, 3
bne $1, $4, TAG160
divu $4, $1
TAG160:
andi $3, $1, 0
slti $2, $1, 15
sw $2, 0($2)
mfhi $1
TAG161:
div $1, $1
mfhi $3
lhu $1, 0($1)
sw $3, 0($1)
TAG162:
bne $1, $1, TAG163
subu $4, $1, $1
mfhi $2
lh $4, 0($4)
TAG163:
mfhi $1
lh $3, 0($1)
and $4, $4, $3
lh $1, 0($4)
TAG164:
lhu $2, 0($1)
multu $1, $2
mtlo $2
beq $2, $2, TAG165
TAG165:
sra $3, $2, 2
mthi $3
ori $4, $2, 8
mfhi $2
TAG166:
lbu $1, 0($2)
slti $3, $2, 12
beq $3, $3, TAG167
lh $2, 0($2)
TAG167:
sb $2, 0($2)
mtlo $2
slti $3, $2, 13
lui $4, 14
TAG168:
beq $4, $4, TAG169
div $4, $4
srl $1, $4, 3
sb $4, 0($4)
TAG169:
lw $4, 0($1)
slti $1, $4, 7
bgtz $1, TAG170
lb $2, 0($1)
TAG170:
mfhi $4
slt $1, $4, $4
mfhi $3
sub $4, $2, $2
TAG171:
lhu $3, 0($4)
mthi $4
mtlo $4
sra $3, $3, 1
TAG172:
bne $3, $3, TAG173
srl $2, $3, 8
sltu $2, $2, $2
lui $4, 13
TAG173:
nor $4, $4, $4
sltiu $1, $4, 10
lh $3, 0($1)
addi $2, $1, 5
TAG174:
lui $1, 9
sb $1, 0($2)
mflo $1
mult $2, $1
TAG175:
blez $1, TAG176
lui $2, 5
andi $2, $1, 12
mthi $1
TAG176:
divu $2, $2
mflo $2
sb $2, 0($2)
mfhi $2
TAG177:
mult $2, $2
mult $2, $2
bgez $2, TAG178
sh $2, 0($2)
TAG178:
mthi $2
sw $2, 0($2)
lw $3, 0($2)
sra $1, $3, 3
TAG179:
bgtz $1, TAG180
mflo $3
lh $3, 0($3)
bne $3, $1, TAG180
TAG180:
mflo $2
sltu $3, $3, $2
sll $1, $3, 13
lui $1, 11
TAG181:
multu $1, $1
mfhi $2
div $2, $2
blez $1, TAG182
TAG182:
nor $4, $2, $2
srl $3, $2, 6
sh $3, 122($4)
mfhi $4
TAG183:
bne $4, $4, TAG184
mthi $4
bgtz $4, TAG184
sltiu $2, $4, 1
TAG184:
bltz $2, TAG185
mflo $2
srl $4, $2, 11
mthi $4
TAG185:
mult $4, $4
lui $1, 15
mflo $2
mult $4, $4
TAG186:
mflo $4
mflo $4
xori $2, $4, 6
sb $2, 0($2)
TAG187:
slti $2, $2, 4
mthi $2
bltz $2, TAG188
slti $4, $2, 13
TAG188:
mflo $1
bne $4, $4, TAG189
mfhi $3
bne $3, $3, TAG189
TAG189:
mthi $3
lw $3, 0($3)
mthi $3
and $3, $3, $3
TAG190:
beq $3, $3, TAG191
lui $4, 5
lbu $1, 0($4)
div $3, $3
TAG191:
sb $1, 0($1)
blez $1, TAG192
sw $1, 0($1)
lbu $2, 0($1)
TAG192:
lw $1, 0($2)
lb $4, 0($2)
mult $2, $2
and $3, $2, $4
TAG193:
srl $1, $3, 9
mfhi $2
addi $3, $3, 8
sllv $1, $3, $3
TAG194:
sb $1, -2048($1)
mthi $1
sltu $2, $1, $1
mfhi $4
TAG195:
mtlo $4
mflo $3
mthi $4
beq $3, $4, TAG196
TAG196:
sh $3, -2048($3)
mtlo $3
sh $3, -2048($3)
mtlo $3
TAG197:
mthi $3
divu $3, $3
bne $3, $3, TAG198
mfhi $2
TAG198:
lui $3, 0
sllv $4, $3, $2
mtlo $2
mflo $2
TAG199:
lh $3, 0($2)
bltz $3, TAG200
mthi $3
lui $3, 6
TAG200:
bltz $3, TAG201
sll $0, $0, 0
sll $0, $0, 0
lui $4, 5
TAG201:
bne $4, $4, TAG202
subu $1, $4, $4
beq $1, $1, TAG202
sllv $4, $4, $4
TAG202:
mflo $2
addiu $1, $2, 7
mfhi $2
lh $3, -2048($2)
TAG203:
multu $3, $3
mthi $3
mtlo $3
bltz $3, TAG204
TAG204:
srl $2, $3, 6
lw $4, 0($2)
beq $2, $2, TAG205
mtlo $4
TAG205:
mthi $4
mthi $4
addiu $3, $4, 15
mflo $2
TAG206:
and $1, $2, $2
div $2, $1
srlv $4, $2, $1
mflo $4
TAG207:
xori $4, $4, 5
sw $4, 0($4)
lw $3, 0($4)
bltz $4, TAG208
TAG208:
lui $1, 14
lbu $4, 0($3)
divu $3, $1
multu $1, $4
TAG209:
slti $1, $4, 1
bltz $1, TAG210
mtlo $4
lhu $4, 0($4)
TAG210:
sw $4, 0($4)
bltz $4, TAG211
lui $4, 1
beq $4, $4, TAG211
TAG211:
mflo $2
sh $4, 0($2)
blez $2, TAG212
mult $2, $4
TAG212:
lui $2, 3
beq $2, $2, TAG213
mfhi $1
mflo $1
TAG213:
lbu $3, 0($1)
bne $3, $3, TAG214
mthi $3
mult $1, $1
TAG214:
sh $3, 0($3)
lui $2, 9
mult $3, $3
bne $2, $2, TAG215
TAG215:
slti $4, $2, 13
andi $1, $4, 14
slti $4, $2, 13
mflo $3
TAG216:
lhu $4, 0($3)
sb $4, 0($4)
sw $3, 0($4)
mtlo $3
TAG217:
sh $4, 0($4)
sltu $4, $4, $4
sw $4, 0($4)
sw $4, 0($4)
TAG218:
bne $4, $4, TAG219
mflo $4
xori $4, $4, 3
blez $4, TAG219
TAG219:
sb $4, 0($4)
bltz $4, TAG220
mflo $3
sra $3, $4, 12
TAG220:
lui $4, 11
mthi $3
beq $4, $3, TAG221
mthi $4
TAG221:
sll $0, $0, 0
nor $3, $4, $4
sll $0, $0, 0
mtlo $4
TAG222:
lb $2, 0($1)
and $4, $2, $1
mflo $1
sll $0, $0, 0
TAG223:
mthi $1
xori $3, $1, 10
sll $0, $0, 0
mtlo $3
TAG224:
sll $0, $0, 0
lui $2, 9
xori $4, $2, 9
bne $3, $4, TAG225
TAG225:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG226:
sltu $4, $3, $3
addu $3, $3, $3
beq $4, $3, TAG227
mthi $3
TAG227:
divu $3, $3
sltiu $3, $3, 3
lui $3, 9
srav $4, $3, $3
TAG228:
blez $4, TAG229
multu $4, $4
div $4, $4
mtlo $4
TAG229:
mfhi $3
sll $1, $4, 14
bne $4, $1, TAG230
lui $2, 7
TAG230:
beq $2, $2, TAG231
addu $3, $2, $2
beq $3, $3, TAG231
mult $3, $3
TAG231:
slti $2, $3, 7
beq $3, $2, TAG232
addiu $1, $3, 15
bltz $2, TAG232
TAG232:
sll $0, $0, 0
nor $4, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG233:
beq $4, $4, TAG234
ori $4, $4, 14
mtlo $4
bltz $4, TAG234
TAG234:
slti $2, $4, 14
sll $0, $0, 0
mtlo $2
slti $1, $4, 2
TAG235:
lbu $1, 0($1)
mult $1, $1
multu $1, $1
or $2, $1, $1
TAG236:
bne $2, $2, TAG237
lb $2, 0($2)
lw $1, 0($2)
lui $4, 2
TAG237:
bne $4, $4, TAG238
srlv $1, $4, $4
bne $1, $1, TAG238
mthi $4
TAG238:
lui $4, 10
mult $4, $1
sll $0, $0, 0
srlv $2, $4, $3
TAG239:
lui $1, 11
mtlo $1
div $1, $1
mfhi $2
TAG240:
mthi $2
multu $2, $2
add $3, $2, $2
lhu $3, 0($2)
TAG241:
sw $3, 0($3)
lh $3, 0($3)
bgez $3, TAG242
mthi $3
TAG242:
mfhi $4
bne $4, $4, TAG243
lhu $3, 0($4)
lui $4, 12
TAG243:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG244
or $4, $4, $4
TAG244:
bne $4, $4, TAG245
subu $3, $4, $4
mtlo $3
sll $0, $0, 0
TAG245:
ori $1, $3, 7
multu $3, $1
lui $3, 13
sltu $4, $1, $3
TAG246:
ori $2, $4, 9
mthi $4
beq $4, $2, TAG247
sltu $4, $4, $4
TAG247:
mtlo $4
beq $4, $4, TAG248
mtlo $4
mflo $4
TAG248:
lui $3, 6
mflo $2
div $3, $3
mflo $4
TAG249:
addu $2, $4, $4
bltz $4, TAG250
sllv $4, $4, $4
lui $1, 13
TAG250:
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG251
lui $2, 2
TAG251:
mtlo $2
beq $2, $2, TAG252
sltiu $2, $2, 1
lw $4, 0($2)
TAG252:
lui $1, 13
beq $1, $4, TAG253
sh $1, 0($4)
div $4, $4
TAG253:
or $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG254
TAG254:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
lbu $2, 0($4)
TAG255:
mtlo $2
bne $2, $2, TAG256
srl $2, $2, 4
lui $1, 9
TAG256:
slti $1, $1, 10
srl $3, $1, 9
blez $1, TAG257
lui $4, 4
TAG257:
beq $4, $4, TAG258
div $4, $4
mthi $4
srl $4, $4, 4
TAG258:
nor $4, $4, $4
mfhi $2
mflo $3
div $4, $4
TAG259:
sllv $4, $3, $3
sll $2, $3, 6
mfhi $4
lui $3, 11
TAG260:
mflo $3
sltiu $2, $3, 12
sb $2, 0($3)
lui $4, 6
TAG261:
subu $1, $4, $4
mfhi $3
addiu $1, $3, 12
lui $2, 2
TAG262:
slti $2, $2, 2
sh $2, 0($2)
mthi $2
mflo $3
TAG263:
beq $3, $3, TAG264
srl $1, $3, 6
mflo $1
mflo $3
TAG264:
mfhi $3
bne $3, $3, TAG265
sllv $3, $3, $3
sw $3, 0($3)
TAG265:
addi $2, $3, 3
lbu $2, 0($3)
ori $1, $2, 15
lbu $2, 0($2)
TAG266:
bgtz $2, TAG267
multu $2, $2
bne $2, $2, TAG267
lhu $1, 0($2)
TAG267:
mult $1, $1
bltz $1, TAG268
slti $4, $1, 10
bgez $4, TAG268
TAG268:
multu $4, $4
mtlo $4
sb $4, 0($4)
lb $3, 0($4)
TAG269:
mfhi $2
mflo $3
multu $3, $3
bltz $3, TAG270
TAG270:
sra $1, $3, 4
sb $3, 0($3)
nor $3, $1, $3
lw $2, 2($3)
TAG271:
sra $4, $2, 5
beq $4, $2, TAG272
srl $4, $4, 6
mtlo $4
TAG272:
lh $3, 0($4)
mult $3, $4
lui $2, 8
or $3, $2, $3
TAG273:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
beq $2, $3, TAG274
TAG274:
lui $2, 7
mult $3, $2
lui $1, 5
bgtz $2, TAG275
TAG275:
xor $4, $1, $1
lb $1, 0($4)
sra $3, $1, 9
mult $4, $1
TAG276:
bltz $3, TAG277
sllv $2, $3, $3
srlv $2, $3, $3
lui $3, 6
TAG277:
div $3, $3
sll $0, $0, 0
xori $3, $3, 6
beq $3, $3, TAG278
TAG278:
sll $3, $3, 14
subu $4, $3, $3
lw $4, 0($4)
lui $3, 12
TAG279:
sra $2, $3, 11
mtlo $2
lui $1, 2
beq $2, $2, TAG280
TAG280:
mfhi $3
andi $3, $3, 9
mthi $3
bne $3, $3, TAG281
TAG281:
srlv $4, $3, $3
lui $2, 5
divu $4, $2
lbu $2, 0($3)
TAG282:
sb $2, 0($2)
mult $2, $2
xor $1, $2, $2
sb $1, 0($1)
TAG283:
mtlo $1
mfhi $2
sb $1, 0($1)
lui $3, 6
TAG284:
sll $0, $0, 0
bne $1, $3, TAG285
multu $3, $1
mtlo $3
TAG285:
multu $1, $1
lw $1, 0($1)
beq $1, $1, TAG286
lb $1, -256($1)
TAG286:
srav $3, $1, $1
lui $2, 11
sh $2, 0($1)
mthi $2
TAG287:
sltiu $4, $2, 3
mult $4, $4
beq $4, $4, TAG288
sll $2, $4, 10
TAG288:
addiu $2, $2, 8
mult $2, $2
bgtz $2, TAG289
sh $2, 0($2)
TAG289:
or $3, $2, $2
sh $2, 0($3)
mthi $2
srl $2, $3, 8
TAG290:
sh $2, 0($2)
blez $2, TAG291
lh $2, 0($2)
beq $2, $2, TAG291
TAG291:
addi $4, $2, 1
lui $1, 7
sb $4, 0($4)
bgez $2, TAG292
TAG292:
mfhi $3
beq $3, $1, TAG293
mthi $1
beq $1, $1, TAG293
TAG293:
lui $1, 13
lhu $1, 0($3)
lbu $2, 0($1)
mult $1, $2
TAG294:
xor $1, $2, $2
mflo $1
addu $1, $2, $1
lw $1, 0($1)
TAG295:
sltu $2, $1, $1
lw $2, 0($2)
sb $2, 0($1)
mflo $1
TAG296:
bgtz $1, TAG297
sw $1, 0($1)
div $1, $1
mthi $1
TAG297:
mthi $1
bgez $1, TAG298
div $1, $1
sh $1, 0($1)
TAG298:
srl $1, $1, 10
lh $4, 0($1)
sh $1, -256($4)
sub $2, $1, $1
TAG299:
mult $2, $2
mflo $2
mtlo $2
bltz $2, TAG300
TAG300:
slti $1, $2, 13
sll $3, $1, 4
bgtz $3, TAG301
sb $3, 0($1)
TAG301:
mflo $1
lw $1, 0($1)
mult $1, $3
mthi $1
TAG302:
sltiu $4, $1, 5
lui $4, 12
blez $4, TAG303
divu $1, $4
TAG303:
mult $4, $4
mflo $1
lui $2, 0
mflo $3
TAG304:
sw $3, 0($3)
blez $3, TAG305
lb $3, 0($3)
lui $4, 15
TAG305:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG306
sll $0, $0, 0
TAG306:
sll $0, $0, 0
srl $3, $4, 3
mthi $3
blez $4, TAG307
TAG307:
lui $4, 7
lui $4, 3
div $4, $4
mult $4, $4
TAG308:
bgez $4, TAG309
lui $1, 8
lui $4, 13
bgtz $4, TAG309
TAG309:
or $3, $4, $4
lui $3, 3
or $2, $4, $3
divu $4, $2
TAG310:
nor $2, $2, $2
mthi $2
and $1, $2, $2
srav $1, $2, $2
TAG311:
addu $4, $1, $1
mult $4, $1
mflo $1
bltz $4, TAG312
TAG312:
mtlo $1
lui $1, 6
bne $1, $1, TAG313
sll $0, $0, 0
TAG313:
srlv $4, $1, $1
bltz $1, TAG314
mfhi $4
mthi $4
TAG314:
bgez $4, TAG315
addu $1, $4, $4
mthi $1
lbu $4, 0($1)
TAG315:
lhu $3, 0($4)
mflo $2
slt $3, $2, $3
mfhi $4
TAG316:
mtlo $4
beq $4, $4, TAG317
mfhi $1
srav $4, $4, $1
TAG317:
lh $1, 0($4)
ori $2, $4, 9
lui $1, 5
sll $0, $0, 0
TAG318:
sltiu $1, $1, 12
mflo $1
mthi $1
mflo $2
TAG319:
multu $2, $2
lui $4, 8
bgtz $4, TAG320
lui $1, 12
TAG320:
mtlo $1
sll $0, $0, 0
lui $2, 5
sll $0, $0, 0
TAG321:
mflo $2
sll $0, $0, 0
beq $2, $2, TAG322
divu $2, $2
TAG322:
sll $0, $0, 0
bgtz $2, TAG323
div $2, $2
beq $2, $2, TAG323
TAG323:
xori $3, $2, 0
addiu $1, $3, 4
mtlo $3
sll $0, $0, 0
TAG324:
srlv $2, $2, $2
sll $4, $2, 1
sll $0, $0, 0
blez $2, TAG325
TAG325:
mthi $4
bgtz $4, TAG326
sll $0, $0, 0
mflo $3
TAG326:
bgtz $3, TAG327
mtlo $3
addu $3, $3, $3
mtlo $3
TAG327:
mthi $3
sll $0, $0, 0
lui $1, 15
lui $3, 5
TAG328:
bne $3, $3, TAG329
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG329:
sll $0, $0, 0
addu $4, $4, $4
sll $0, $0, 0
mtlo $4
TAG330:
mtlo $4
bne $4, $4, TAG331
srl $1, $4, 8
lui $4, 5
TAG331:
lui $3, 3
multu $3, $3
lui $3, 13
nor $3, $3, $3
TAG332:
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
srav $2, $3, $3
TAG333:
beq $2, $2, TAG334
mflo $4
sb $4, 0($2)
or $1, $4, $4
TAG334:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
sll $3, $1, 13
TAG335:
bltz $3, TAG336
divu $3, $3
sll $0, $0, 0
bne $3, $3, TAG336
TAG336:
xor $1, $3, $3
lb $3, 0($1)
slti $2, $1, 11
sb $2, 0($3)
TAG337:
sb $2, 0($2)
lui $3, 15
beq $3, $3, TAG338
mflo $2
TAG338:
xori $3, $2, 8
sb $3, 0($2)
bgtz $2, TAG339
sb $2, 0($2)
TAG339:
mtlo $3
divu $3, $3
mthi $3
sb $3, 0($3)
TAG340:
bne $3, $3, TAG341
sb $3, 0($3)
mthi $3
slti $1, $3, 14
TAG341:
xor $4, $1, $1
mfhi $4
bne $1, $4, TAG342
lui $1, 6
TAG342:
mtlo $1
mult $1, $1
mflo $4
mfhi $2
TAG343:
lui $2, 12
bne $2, $2, TAG344
xor $3, $2, $2
mtlo $2
TAG344:
sllv $2, $3, $3
lui $1, 15
mult $2, $2
mfhi $3
TAG345:
mthi $3
sltiu $1, $3, 14
lui $4, 15
bne $4, $3, TAG346
TAG346:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
slt $2, $2, $4
TAG347:
divu $2, $2
beq $2, $2, TAG348
sltu $3, $2, $2
lui $2, 6
TAG348:
sb $2, 0($2)
mthi $2
beq $2, $2, TAG349
sb $2, 0($2)
TAG349:
sb $2, 0($2)
lui $3, 8
mfhi $1
sll $0, $0, 0
TAG350:
mflo $2
mult $1, $2
bgez $2, TAG351
sb $2, 0($1)
TAG351:
mflo $2
sltu $1, $2, $2
lui $3, 10
xor $1, $2, $1
TAG352:
lui $3, 15
lbu $4, 0($1)
bne $4, $3, TAG353
div $3, $1
TAG353:
nor $3, $4, $4
subu $1, $4, $3
blez $1, TAG354
lui $3, 3
TAG354:
mfhi $1
mfhi $4
bne $4, $1, TAG355
mfhi $1
TAG355:
sw $1, 0($1)
bgtz $1, TAG356
sb $1, 0($1)
mult $1, $1
TAG356:
multu $1, $1
bgtz $1, TAG357
mult $1, $1
bne $1, $1, TAG357
TAG357:
sltiu $2, $1, 5
sw $2, 0($1)
lui $2, 7
blez $2, TAG358
TAG358:
mtlo $2
beq $2, $2, TAG359
sll $0, $0, 0
sw $2, 0($2)
TAG359:
srlv $2, $2, $2
ori $4, $2, 13
divu $2, $2
sll $0, $0, 0
TAG360:
subu $1, $3, $3
nor $2, $1, $1
beq $3, $2, TAG361
sb $2, 1($2)
TAG361:
mflo $2
lui $1, 13
xor $3, $2, $1
sll $3, $1, 10
TAG362:
bgez $3, TAG363
or $3, $3, $3
beq $3, $3, TAG363
mtlo $3
TAG363:
mflo $2
lbu $2, 0($2)
blez $2, TAG364
mflo $3
TAG364:
addu $2, $3, $3
blez $2, TAG365
divu $3, $2
sh $3, 0($2)
TAG365:
div $2, $2
lh $2, 0($2)
blez $2, TAG366
lb $2, 0($2)
TAG366:
lb $1, 0($2)
mflo $4
bgez $4, TAG367
mtlo $2
TAG367:
bgtz $4, TAG368
sb $4, 0($4)
beq $4, $4, TAG368
lui $2, 7
TAG368:
lhu $1, 0($2)
mtlo $2
mflo $2
sb $2, 0($2)
TAG369:
lui $3, 14
bltz $3, TAG370
mfhi $1
bgtz $1, TAG370
TAG370:
mfhi $1
sltiu $2, $1, 12
lui $1, 8
lui $1, 15
TAG371:
sll $0, $0, 0
addu $4, $4, $1
sll $0, $0, 0
sll $0, $0, 0
TAG372:
sll $0, $0, 0
bgez $4, TAG373
lui $1, 13
bgez $4, TAG373
TAG373:
mtlo $1
mflo $4
bltz $1, TAG374
subu $3, $1, $4
TAG374:
bne $3, $3, TAG375
sw $3, 0($3)
lui $3, 3
mtlo $3
TAG375:
lui $2, 10
sll $0, $0, 0
div $3, $3
beq $3, $2, TAG376
TAG376:
sll $0, $0, 0
mthi $3
xori $4, $3, 0
mult $4, $3
TAG377:
mfhi $3
sra $2, $3, 11
mflo $4
lhu $3, 0($4)
TAG378:
subu $2, $3, $3
mflo $2
mtlo $3
lui $4, 8
TAG379:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $4, TAG380
slti $2, $2, 6
TAG380:
subu $2, $2, $2
multu $2, $2
blez $2, TAG381
lui $2, 1
TAG381:
sllv $4, $2, $2
mtlo $2
mthi $2
sll $0, $0, 0
TAG382:
andi $4, $1, 10
bgtz $1, TAG383
andi $2, $1, 14
lui $4, 8
TAG383:
lbu $1, 0($4)
mfhi $3
sw $4, 0($1)
srl $3, $1, 9
TAG384:
andi $1, $3, 6
lui $1, 12
lui $4, 7
mult $4, $1
TAG385:
and $3, $4, $4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG386:
sll $0, $0, 0
div $4, $4
div $1, $4
bne $1, $1, TAG387
TAG387:
mthi $4
mfhi $1
sll $0, $0, 0
lui $4, 14
TAG388:
sll $0, $0, 0
mtlo $4
xori $2, $4, 12
mflo $4
TAG389:
lui $2, 0
mult $4, $2
lhu $4, 0($2)
addi $4, $4, 0
TAG390:
lw $1, 0($4)
sb $1, 0($1)
ori $1, $1, 5
beq $1, $1, TAG391
TAG391:
mfhi $2
mthi $2
sb $1, 0($1)
lui $4, 12
TAG392:
beq $4, $4, TAG393
mflo $4
div $4, $4
addu $1, $4, $4
TAG393:
div $1, $1
lui $3, 14
srl $3, $1, 3
divu $3, $1
TAG394:
blez $3, TAG395
multu $3, $3
bgtz $3, TAG395
mthi $3
TAG395:
bltz $3, TAG396
mult $3, $3
mthi $3
bltz $3, TAG396
TAG396:
mflo $4
multu $4, $4
mtlo $4
addu $2, $4, $4
TAG397:
mflo $3
srav $2, $2, $2
sltiu $1, $2, 4
lw $3, 0($3)
TAG398:
beq $3, $3, TAG399
sltu $3, $3, $3
lhu $4, 0($3)
lbu $1, 0($3)
TAG399:
nor $2, $1, $1
sb $1, 0($1)
mflo $2
mfhi $2
TAG400:
mflo $1
lui $4, 14
mthi $4
sw $2, 0($2)
TAG401:
blez $4, TAG402
srlv $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG402:
srav $4, $3, $3
bltz $4, TAG403
sw $4, 0($3)
mthi $3
TAG403:
mflo $2
addiu $1, $2, 11
multu $4, $4
lui $3, 4
TAG404:
mfhi $2
multu $2, $2
sll $0, $0, 0
mfhi $1
TAG405:
sra $2, $1, 4
bne $1, $1, TAG406
lui $2, 7
mfhi $1
TAG406:
bne $1, $1, TAG407
srl $3, $1, 15
lh $1, 0($1)
mflo $2
TAG407:
mult $2, $2
lbu $3, 0($2)
bne $2, $2, TAG408
srl $1, $3, 6
TAG408:
bgtz $1, TAG409
multu $1, $1
lb $1, 0($1)
mfhi $2
TAG409:
sllv $1, $2, $2
beq $1, $1, TAG410
mflo $4
lui $1, 4
TAG410:
lui $1, 2
lui $3, 4
sll $0, $0, 0
mult $1, $1
TAG411:
beq $3, $3, TAG412
andi $4, $3, 9
bne $3, $4, TAG412
lui $2, 8
TAG412:
lbu $4, 0($2)
mtlo $4
nor $1, $2, $2
nor $1, $1, $2
TAG413:
sh $1, 0($1)
xor $3, $1, $1
mfhi $1
mthi $3
TAG414:
srav $3, $1, $1
mthi $3
sra $3, $1, 12
multu $1, $3
TAG415:
lui $1, 9
sb $1, 0($3)
bgtz $1, TAG416
lui $1, 4
TAG416:
sll $0, $0, 0
sh $2, 0($2)
mflo $2
bne $2, $2, TAG417
TAG417:
lui $4, 13
sw $2, 0($2)
sll $0, $0, 0
bltz $4, TAG418
TAG418:
xori $3, $2, 1
subu $4, $3, $3
ori $3, $3, 11
sra $2, $3, 9
TAG419:
lui $2, 15
mthi $2
blez $2, TAG420
sll $0, $0, 0
TAG420:
addiu $4, $2, 7
mflo $2
lui $3, 4
addiu $1, $4, 12
TAG421:
mflo $3
addiu $2, $1, 4
sll $0, $0, 0
mthi $2
TAG422:
sll $0, $0, 0
srlv $4, $1, $1
div $4, $4
slt $3, $4, $1
TAG423:
multu $3, $3
sb $3, 0($3)
slt $4, $3, $3
lbu $3, 0($3)
TAG424:
mfhi $3
bne $3, $3, TAG425
sw $3, 0($3)
blez $3, TAG425
TAG425:
sw $3, 0($3)
lw $4, 0($3)
mult $4, $3
lw $2, 0($4)
TAG426:
mthi $2
sh $2, 0($2)
mtlo $2
mtlo $2
TAG427:
add $1, $2, $2
mfhi $1
mult $2, $1
addu $1, $1, $1
TAG428:
multu $1, $1
multu $1, $1
lhu $4, 0($1)
sll $2, $4, 9
TAG429:
mfhi $3
sb $3, 0($3)
addi $3, $3, 7
bltz $3, TAG430
TAG430:
mtlo $3
lui $1, 14
lui $1, 9
bne $3, $1, TAG431
TAG431:
sll $0, $0, 0
div $1, $1
divu $1, $1
beq $1, $1, TAG432
TAG432:
sll $3, $1, 10
mult $1, $3
sll $0, $0, 0
mflo $3
TAG433:
lui $2, 15
mthi $3
lui $4, 14
bgtz $4, TAG434
TAG434:
mthi $4
mflo $2
lui $1, 0
lui $1, 15
TAG435:
mult $1, $1
bne $1, $1, TAG436
subu $1, $1, $1
sw $1, 0($1)
TAG436:
mtlo $1
lui $2, 14
slti $2, $2, 11
mthi $1
TAG437:
mtlo $2
sltu $1, $2, $2
mult $2, $1
slt $1, $1, $1
TAG438:
xori $4, $1, 14
srl $4, $4, 1
bne $4, $1, TAG439
subu $2, $1, $4
TAG439:
addu $1, $2, $2
xor $3, $1, $2
and $3, $1, $2
lh $3, 16($3)
TAG440:
addu $2, $3, $3
lw $1, 0($2)
mthi $3
mult $2, $3
TAG441:
sltiu $1, $1, 9
div $1, $1
mthi $1
blez $1, TAG442
TAG442:
subu $2, $1, $1
lui $3, 4
mtlo $1
ori $3, $2, 2
TAG443:
divu $3, $3
div $3, $3
xori $4, $3, 9
sb $4, 0($4)
TAG444:
addu $2, $4, $4
lui $4, 9
blez $4, TAG445
lui $3, 7
TAG445:
addiu $4, $3, 8
blez $3, TAG446
sll $0, $0, 0
div $4, $3
TAG446:
sll $0, $0, 0
bgtz $4, TAG447
mult $4, $4
sll $2, $4, 10
TAG447:
bltz $2, TAG448
sh $2, 0($2)
xor $2, $2, $2
and $4, $2, $2
TAG448:
bne $4, $4, TAG449
mtlo $4
bltz $4, TAG449
lhu $3, 0($4)
TAG449:
slt $1, $3, $3
sra $1, $1, 15
bne $1, $1, TAG450
lui $1, 0
TAG450:
lui $1, 12
sll $0, $0, 0
mflo $3
lui $4, 14
TAG451:
sltu $1, $4, $4
mthi $1
beq $4, $4, TAG452
nor $1, $1, $1
TAG452:
multu $1, $1
bne $1, $1, TAG453
xor $2, $1, $1
mthi $2
TAG453:
blez $2, TAG454
mfhi $2
sllv $3, $2, $2
lui $3, 8
TAG454:
srav $4, $3, $3
bgez $3, TAG455
mthi $3
srl $3, $3, 0
TAG455:
bne $3, $3, TAG456
multu $3, $3
subu $4, $3, $3
lh $2, 0($3)
TAG456:
sh $2, 0($2)
lbu $3, 0($2)
lw $4, 0($3)
lhu $2, 0($4)
TAG457:
lh $4, 0($2)
bltz $2, TAG458
sb $2, 0($2)
lw $3, 0($4)
TAG458:
lbu $1, 0($3)
lui $3, 13
mflo $4
mflo $3
TAG459:
mtlo $3
sh $3, 0($3)
mflo $3
multu $3, $3
TAG460:
lui $1, 6
lbu $1, 0($3)
sw $3, 0($1)
lui $3, 9
TAG461:
sltu $2, $3, $3
divu $3, $3
lui $3, 2
mtlo $3
TAG462:
addu $1, $3, $3
sll $2, $1, 2
addiu $2, $1, 14
beq $2, $1, TAG463
TAG463:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG464:
blez $4, TAG465
mflo $3
bltz $3, TAG465
and $1, $3, $4
TAG465:
lw $1, 0($1)
mflo $2
bgez $1, TAG466
mult $2, $2
TAG466:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG467
TAG467:
mflo $4
mtlo $3
sll $0, $0, 0
bgtz $3, TAG468
TAG468:
sllv $1, $4, $4
bne $4, $4, TAG469
or $2, $1, $1
mthi $4
TAG469:
mfhi $4
lui $4, 1
multu $4, $2
xor $3, $4, $4
TAG470:
srl $1, $3, 12
mult $1, $3
lbu $3, 0($3)
sb $1, 0($1)
TAG471:
beq $3, $3, TAG472
lui $4, 3
mfhi $2
mflo $3
TAG472:
blez $3, TAG473
subu $2, $3, $3
bltz $3, TAG473
mfhi $3
TAG473:
mtlo $3
mflo $2
bne $3, $3, TAG474
sw $3, 0($3)
TAG474:
bgtz $2, TAG475
sltiu $1, $2, 9
lb $2, 0($1)
sb $2, 0($1)
TAG475:
lhu $2, 0($2)
mtlo $2
bne $2, $2, TAG476
sb $2, 0($2)
TAG476:
slt $3, $2, $2
lui $4, 10
lhu $1, 0($3)
lh $2, 0($1)
TAG477:
lw $4, 0($2)
bne $2, $2, TAG478
sw $4, 0($4)
lh $3, 0($2)
TAG478:
addi $1, $3, 11
slti $3, $1, 15
mtlo $3
lb $4, 0($3)
TAG479:
lui $3, 13
mthi $4
blez $4, TAG480
mthi $4
TAG480:
lui $1, 5
or $4, $1, $3
beq $1, $1, TAG481
sll $0, $0, 0
TAG481:
mflo $3
lui $2, 5
sb $3, 0($3)
sb $3, 0($3)
TAG482:
divu $2, $2
lui $3, 12
beq $3, $3, TAG483
mthi $2
TAG483:
bgez $3, TAG484
sll $0, $0, 0
mflo $3
mult $3, $3
TAG484:
mfhi $1
subu $3, $1, $3
nor $2, $3, $1
sll $0, $0, 0
TAG485:
lui $2, 11
mfhi $3
and $2, $2, $2
xor $1, $2, $2
TAG486:
lb $4, 0($1)
mthi $4
lui $1, 12
bltz $1, TAG487
TAG487:
mtlo $1
lui $1, 5
sll $0, $0, 0
bgez $1, TAG488
TAG488:
mflo $4
div $4, $4
mtlo $4
divu $4, $4
TAG489:
mtlo $4
addu $4, $4, $4
sra $4, $4, 8
lui $1, 6
TAG490:
sll $0, $0, 0
subu $3, $1, $1
sll $0, $0, 0
mtlo $1
TAG491:
mflo $2
srav $2, $3, $2
bltz $3, TAG492
sll $1, $2, 13
TAG492:
mthi $1
bgez $1, TAG493
sltu $2, $1, $1
sh $1, 0($1)
TAG493:
sb $2, 0($2)
sw $2, 0($2)
bne $2, $2, TAG494
multu $2, $2
TAG494:
sllv $2, $2, $2
xor $1, $2, $2
multu $1, $2
sltiu $4, $2, 4
TAG495:
bne $4, $4, TAG496
mtlo $4
bgez $4, TAG496
sll $3, $4, 2
TAG496:
mfhi $2
lui $1, 2
beq $1, $2, TAG497
multu $3, $2
TAG497:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
bgtz $1, TAG498
TAG498:
mtlo $4
mthi $4
mfhi $1
bltz $4, TAG499
TAG499:
sb $1, 0($1)
mflo $2
lui $1, 2
beq $1, $2, TAG500
TAG500:
slti $4, $1, 2
lui $2, 5
bne $2, $4, TAG501
mthi $1
TAG501:
bne $2, $2, TAG502
sll $0, $0, 0
lui $1, 11
lui $1, 11
TAG502:
div $1, $1
sll $0, $0, 0
addu $1, $1, $4
sll $1, $1, 10
TAG503:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $2, 9
bgtz $2, TAG504
TAG504:
mflo $2
lui $1, 13
addu $3, $2, $2
mflo $3
TAG505:
lui $3, 14
ori $1, $3, 8
bltz $1, TAG506
mult $1, $1
TAG506:
lui $1, 9
mtlo $1
divu $1, $1
lui $1, 6
TAG507:
lui $3, 9
addu $1, $1, $1
sll $0, $0, 0
beq $3, $3, TAG508
TAG508:
sll $0, $0, 0
mthi $3
mtlo $3
lui $2, 5
TAG509:
xor $3, $2, $2
div $2, $2
mtlo $2
blez $2, TAG510
TAG510:
mthi $3
beq $3, $3, TAG511
srl $1, $3, 3
bgtz $3, TAG511
TAG511:
mtlo $1
sllv $4, $1, $1
lbu $1, 0($4)
sb $1, 0($1)
TAG512:
mthi $1
mtlo $1
bgez $1, TAG513
add $3, $1, $1
TAG513:
srav $2, $3, $3
bne $3, $3, TAG514
lhu $3, 0($3)
bne $2, $3, TAG514
TAG514:
lui $2, 1
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG515:
mfhi $2
beq $2, $2, TAG516
xori $1, $2, 3
sb $2, 0($2)
TAG516:
bgtz $1, TAG517
lb $3, 0($1)
beq $3, $3, TAG517
mtlo $1
TAG517:
sb $3, 0($3)
beq $3, $3, TAG518
mfhi $4
lhu $4, 0($3)
TAG518:
mthi $4
sh $4, 0($4)
ori $3, $4, 13
mfhi $1
TAG519:
multu $1, $1
mfhi $1
multu $1, $1
lhu $1, 0($1)
TAG520:
srl $1, $1, 8
sw $1, 0($1)
srav $3, $1, $1
mult $1, $1
TAG521:
mfhi $2
lhu $4, 0($3)
mfhi $2
nor $1, $4, $4
TAG522:
addu $4, $1, $1
lw $4, 1($1)
blez $4, TAG523
nor $3, $4, $1
TAG523:
lh $2, 0($3)
mflo $2
mflo $3
mult $3, $2
TAG524:
mtlo $3
mult $3, $3
bgez $3, TAG525
sh $3, 0($3)
TAG525:
sh $3, 0($3)
bgtz $3, TAG526
lb $2, 0($3)
sw $2, 0($3)
TAG526:
mult $2, $2
bltz $2, TAG527
slt $3, $2, $2
multu $3, $3
TAG527:
lhu $2, 0($3)
mfhi $4
subu $1, $2, $4
multu $1, $2
TAG528:
sw $1, 0($1)
mflo $3
mfhi $1
mult $3, $1
TAG529:
lw $3, 0($1)
sw $3, 0($1)
and $3, $3, $1
bltz $3, TAG530
TAG530:
sra $2, $3, 12
mult $2, $2
bltz $3, TAG531
sltu $4, $2, $2
TAG531:
bgez $4, TAG532
mthi $4
lw $3, 0($4)
mthi $3
TAG532:
lui $2, 6
sll $1, $3, 6
sw $3, 0($1)
bgtz $3, TAG533
TAG533:
lb $3, 0($1)
blez $3, TAG534
mult $3, $3
mthi $3
TAG534:
beq $3, $3, TAG535
and $1, $3, $3
mflo $1
mfhi $3
TAG535:
mult $3, $3
bne $3, $3, TAG536
xori $2, $3, 11
lw $3, 0($3)
TAG536:
lw $3, 0($3)
mult $3, $3
lb $1, 0($3)
bne $1, $3, TAG537
TAG537:
addiu $4, $1, 9
multu $1, $4
beq $1, $4, TAG538
lui $2, 5
TAG538:
bgez $2, TAG539
mflo $1
lui $1, 1
mthi $1
TAG539:
mthi $1
beq $1, $1, TAG540
lw $1, 0($1)
mult $1, $1
TAG540:
sw $1, 0($1)
mult $1, $1
bne $1, $1, TAG541
lui $3, 15
TAG541:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $2
mfhi $4
TAG542:
lui $4, 7
bgez $4, TAG543
subu $2, $4, $4
mthi $4
TAG543:
bgtz $2, TAG544
lh $2, 0($2)
bgtz $2, TAG544
sh $2, 0($2)
TAG544:
lb $1, 0($2)
mflo $3
mfhi $2
divu $2, $2
TAG545:
sb $2, 0($2)
bltz $2, TAG546
mtlo $2
addu $2, $2, $2
TAG546:
mtlo $2
lb $2, -150($2)
mthi $2
add $1, $2, $2
TAG547:
blez $1, TAG548
lbu $3, 0($1)
mtlo $1
lui $3, 8
TAG548:
bgez $3, TAG549
multu $3, $3
srlv $2, $3, $3
xori $4, $3, 7
TAG549:
lui $4, 7
lui $4, 9
lui $4, 7
sll $0, $0, 0
TAG550:
addu $3, $4, $4
srlv $3, $4, $4
blez $3, TAG551
sll $0, $0, 0
TAG551:
sll $0, $0, 0
mflo $2
sra $2, $3, 7
mflo $1
TAG552:
blez $1, TAG553
sllv $4, $1, $1
sh $1, 0($1)
beq $1, $1, TAG553
TAG553:
slt $1, $4, $4
addi $1, $1, 0
mfhi $2
mult $1, $1
TAG554:
mult $2, $2
lui $3, 10
mtlo $2
lhu $2, 0($2)
TAG555:
slti $4, $2, 3
mult $2, $2
mthi $2
sb $2, 0($4)
TAG556:
lui $3, 9
mfhi $1
sb $3, 0($1)
or $3, $3, $4
TAG557:
mtlo $3
sll $0, $0, 0
beq $3, $3, TAG558
subu $4, $3, $3
TAG558:
mult $4, $4
multu $4, $4
mfhi $4
sh $4, 0($4)
TAG559:
beq $4, $4, TAG560
sltu $4, $4, $4
divu $4, $4
andi $2, $4, 14
TAG560:
sh $2, 0($2)
bne $2, $2, TAG561
multu $2, $2
lui $3, 7
TAG561:
sltiu $1, $3, 10
sll $0, $0, 0
bne $1, $1, TAG562
sw $1, 0($1)
TAG562:
mtlo $1
lui $4, 1
lui $3, 14
bltz $4, TAG563
TAG563:
lui $2, 5
mfhi $1
srl $4, $3, 10
divu $1, $3
TAG564:
sll $0, $0, 0
bne $1, $1, TAG565
lhu $1, -896($4)
sw $1, -896($4)
TAG565:
bgez $1, TAG566
mthi $1
beq $1, $1, TAG566
lui $4, 12
TAG566:
andi $4, $4, 6
sltu $1, $4, $4
multu $4, $4
multu $4, $4
TAG567:
sh $1, 0($1)
multu $1, $1
lw $1, 0($1)
beq $1, $1, TAG568
TAG568:
multu $1, $1
mtlo $1
mtlo $1
nor $1, $1, $1
TAG569:
bne $1, $1, TAG570
lui $3, 15
div $3, $1
srlv $2, $3, $1
TAG570:
lui $2, 3
slt $2, $2, $2
lui $2, 7
bgtz $2, TAG571
TAG571:
lui $3, 3
sll $0, $0, 0
beq $1, $1, TAG572
addiu $2, $1, 14
TAG572:
sb $2, 0($2)
sb $2, 0($2)
addu $1, $2, $2
mflo $2
TAG573:
divu $2, $2
div $2, $2
blez $2, TAG574
sll $0, $0, 0
TAG574:
slt $2, $1, $1
mtlo $2
sh $1, 0($1)
bne $1, $2, TAG575
TAG575:
lui $3, 0
sra $2, $3, 2
mtlo $2
mult $2, $3
TAG576:
beq $2, $2, TAG577
sltiu $1, $2, 1
sltiu $3, $2, 10
sra $1, $3, 11
TAG577:
sll $2, $1, 4
sltiu $3, $1, 4
bltz $2, TAG578
mthi $1
TAG578:
srlv $4, $3, $3
mult $3, $3
addiu $4, $3, 4
mflo $3
TAG579:
lbu $4, 0($3)
andi $3, $4, 2
lui $3, 5
lbu $4, 0($4)
TAG580:
bne $4, $4, TAG581
addi $3, $4, 5
beq $3, $3, TAG581
lb $2, 0($4)
TAG581:
addiu $1, $2, 3
lbu $3, 0($1)
mfhi $2
bltz $3, TAG582
TAG582:
lui $2, 4
lui $4, 14
sll $0, $0, 0
lui $4, 6
TAG583:
lui $1, 0
mflo $4
lui $4, 3
sra $4, $4, 12
TAG584:
ori $4, $4, 11
addiu $3, $4, 8
bne $4, $3, TAG585
lui $1, 15
TAG585:
srl $3, $1, 13
xori $1, $3, 13
mflo $2
andi $2, $1, 5
TAG586:
beq $2, $2, TAG587
mfhi $2
lb $2, 0($2)
bne $2, $2, TAG587
TAG587:
mthi $2
lui $2, 5
sll $0, $0, 0
mfhi $3
TAG588:
mthi $3
mfhi $1
mult $3, $3
multu $3, $1
TAG589:
mult $1, $1
sll $3, $1, 9
beq $1, $3, TAG590
subu $4, $1, $3
TAG590:
sllv $2, $4, $4
lui $1, 13
mfhi $4
mflo $3
TAG591:
multu $3, $3
mflo $1
lbu $1, 0($1)
beq $1, $1, TAG592
TAG592:
srl $1, $1, 10
sw $1, 0($1)
lui $4, 5
lui $2, 0
TAG593:
sb $2, 0($2)
lw $3, 0($2)
sllv $4, $3, $3
sh $3, 0($3)
TAG594:
addiu $3, $4, 5
subu $2, $4, $3
sw $4, 5($2)
bgtz $2, TAG595
TAG595:
sll $0, $0, 0
bgez $2, TAG596
div $2, $2
sw $4, 0($4)
TAG596:
bne $4, $4, TAG597
lbu $3, 0($4)
slti $3, $4, 0
lhu $3, 0($4)
TAG597:
mult $3, $3
mflo $3
addi $1, $3, 11
multu $1, $3
TAG598:
lb $2, 0($1)
slti $4, $2, 13
blez $4, TAG599
lui $3, 8
TAG599:
bgez $3, TAG600
div $3, $3
mflo $3
sh $3, 0($3)
TAG600:
mthi $3
bne $3, $3, TAG601
mfhi $2
xori $3, $3, 8
TAG601:
mthi $3
lui $1, 13
addiu $4, $1, 12
sll $0, $0, 0
TAG602:
addiu $4, $1, 13
mtlo $4
mtlo $4
mthi $1
TAG603:
sll $0, $0, 0
blez $3, TAG604
lui $4, 7
mflo $1
TAG604:
subu $3, $1, $1
slti $3, $1, 6
sw $3, 0($3)
mult $3, $1
TAG605:
addu $2, $3, $3
srlv $4, $3, $3
lw $1, 0($4)
mflo $3
TAG606:
sllv $3, $3, $3
lui $3, 14
mtlo $3
nor $1, $3, $3
TAG607:
lui $4, 14
bne $1, $4, TAG608
sll $0, $0, 0
bgez $4, TAG608
TAG608:
mthi $3
sll $3, $3, 5
lui $2, 7
blez $3, TAG609
TAG609:
multu $2, $2
beq $2, $2, TAG610
mflo $1
sw $2, 0($2)
TAG610:
lbu $2, 0($1)
subu $1, $2, $1
lbu $4, 0($1)
sh $4, 0($2)
TAG611:
mthi $4
multu $4, $4
sltu $2, $4, $4
mflo $1
TAG612:
sb $1, 0($1)
bgez $1, TAG613
sll $4, $1, 8
lui $3, 13
TAG613:
sll $0, $0, 0
mthi $3
xor $1, $3, $3
bne $1, $3, TAG614
TAG614:
mfhi $1
lui $2, 6
mthi $2
sll $0, $0, 0
TAG615:
mflo $4
lui $3, 12
mtlo $3
lui $4, 7
TAG616:
sll $0, $0, 0
beq $4, $4, TAG617
lui $3, 7
mflo $1
TAG617:
mfhi $3
lui $4, 13
mfhi $3
beq $3, $3, TAG618
TAG618:
sll $3, $3, 15
sh $3, 0($3)
lhu $4, 0($3)
beq $3, $3, TAG619
TAG619:
and $2, $4, $4
sb $4, 0($4)
mfhi $2
addiu $2, $2, 15
TAG620:
mult $2, $2
divu $2, $2
beq $2, $2, TAG621
mflo $2
TAG621:
sltiu $1, $2, 0
sh $2, 0($1)
lui $3, 6
bgtz $1, TAG622
TAG622:
lui $4, 10
addu $1, $4, $4
lui $1, 12
ori $3, $3, 9
TAG623:
lui $1, 8
lui $4, 1
and $1, $1, $1
sll $0, $0, 0
TAG624:
sll $0, $0, 0
and $1, $3, $3
sll $4, $3, 13
sltu $4, $1, $3
TAG625:
mult $4, $4
lui $2, 15
mfhi $1
bgtz $2, TAG626
TAG626:
multu $1, $1
mflo $2
mfhi $2
lh $1, 0($2)
TAG627:
blez $1, TAG628
srl $3, $1, 11
mtlo $3
sw $3, 0($3)
TAG628:
blez $3, TAG629
lui $4, 11
bne $4, $3, TAG629
sw $3, 0($3)
TAG629:
mfhi $4
blez $4, TAG630
multu $4, $4
sw $4, 0($4)
TAG630:
bltz $4, TAG631
srav $4, $4, $4
sltu $2, $4, $4
sltu $3, $2, $2
TAG631:
sh $3, 0($3)
xor $3, $3, $3
sh $3, 0($3)
mflo $3
TAG632:
lw $4, 0($3)
bgez $3, TAG633
sh $4, 0($4)
bgez $3, TAG633
TAG633:
multu $4, $4
sb $4, 0($4)
mtlo $4
blez $4, TAG634
TAG634:
mthi $4
beq $4, $4, TAG635
sw $4, 0($4)
mflo $3
TAG635:
bgez $3, TAG636
lhu $4, 0($3)
lui $2, 13
sw $3, 0($3)
TAG636:
bltz $2, TAG637
sw $2, 0($2)
addu $2, $2, $2
mfhi $1
TAG637:
lh $3, 0($1)
sh $3, 0($1)
mflo $2
mfhi $2
TAG638:
bne $2, $2, TAG639
mtlo $2
mflo $2
slti $1, $2, 12
TAG639:
ori $3, $1, 12
bgez $1, TAG640
and $1, $3, $1
mfhi $1
TAG640:
sb $1, 0($1)
blez $1, TAG641
sb $1, 0($1)
sb $1, 0($1)
TAG641:
bne $1, $1, TAG642
subu $1, $1, $1
bne $1, $1, TAG642
lbu $2, 0($1)
TAG642:
multu $2, $2
and $1, $2, $2
mtlo $1
sltu $1, $2, $2
TAG643:
addiu $1, $1, 13
lui $2, 8
bgez $2, TAG644
mtlo $2
TAG644:
lui $1, 15
ori $4, $1, 4
beq $2, $1, TAG645
sll $0, $0, 0
TAG645:
mfhi $1
lui $3, 3
mult $4, $1
multu $4, $1
TAG646:
mflo $1
mtlo $1
srlv $1, $3, $1
mult $1, $1
TAG647:
addiu $3, $1, 12
sll $0, $0, 0
div $3, $3
bgtz $3, TAG648
TAG648:
div $3, $3
lui $2, 7
subu $2, $3, $3
sll $0, $0, 0
TAG649:
beq $2, $2, TAG650
lui $2, 3
beq $2, $2, TAG650
add $3, $2, $2
TAG650:
sll $0, $0, 0
bltz $3, TAG651
mflo $2
sb $1, 0($2)
TAG651:
beq $2, $2, TAG652
divu $2, $2
sb $2, 0($2)
addiu $3, $2, 15
TAG652:
mfhi $1
sllv $4, $1, $3
bgtz $1, TAG653
addiu $4, $3, 0
TAG653:
sll $0, $0, 0
sltiu $1, $4, 5
lui $4, 6
sltiu $1, $4, 0
TAG654:
srav $1, $1, $1
mtlo $1
lui $4, 6
multu $1, $1
TAG655:
lui $1, 2
bne $4, $1, TAG656
sltiu $1, $1, 9
lb $2, 0($1)
TAG656:
mult $2, $2
mult $2, $2
bgez $2, TAG657
mtlo $2
TAG657:
mult $2, $2
slti $2, $2, 13
mthi $2
beq $2, $2, TAG658
TAG658:
lb $3, 0($2)
beq $2, $2, TAG659
mtlo $3
addiu $2, $2, 2
TAG659:
srav $1, $2, $2
mflo $1
sb $1, 0($2)
blez $1, TAG660
TAG660:
xori $1, $1, 2
mfhi $2
or $3, $1, $2
bltz $3, TAG661
TAG661:
lbu $4, 0($3)
lui $4, 8
mflo $3
sh $3, 0($3)
TAG662:
bne $3, $3, TAG663
multu $3, $3
andi $3, $3, 6
beq $3, $3, TAG663
TAG663:
sb $3, 0($3)
mfhi $4
lui $2, 9
lui $1, 8
TAG664:
bgez $1, TAG665
sllv $3, $1, $1
bgez $1, TAG665
mfhi $3
TAG665:
lui $4, 4
sll $0, $0, 0
lui $4, 8
mflo $3
TAG666:
mtlo $3
multu $3, $3
bgez $3, TAG667
mthi $3
TAG667:
mflo $4
mfhi $3
lui $2, 11
lw $2, 0($3)
TAG668:
mtlo $2
sb $2, 0($2)
mflo $2
sw $2, 0($2)
TAG669:
bne $2, $2, TAG670
slt $1, $2, $2
mflo $4
mult $1, $1
TAG670:
beq $4, $4, TAG671
lhu $3, 0($4)
bne $4, $3, TAG671
addu $3, $3, $4
TAG671:
sb $3, 0($3)
sh $3, 0($3)
slti $4, $3, 2
lb $2, 0($4)
TAG672:
lh $4, 0($2)
xori $2, $2, 3
bgez $2, TAG673
mthi $4
TAG673:
lui $2, 9
div $2, $2
bltz $2, TAG674
lui $3, 5
TAG674:
bltz $3, TAG675
sll $0, $0, 0
lui $1, 1
addiu $3, $3, 10
TAG675:
mflo $4
mtlo $3
addiu $1, $3, 11
mtlo $4
TAG676:
slt $4, $1, $1
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG677:
sltu $4, $2, $2
lui $4, 13
sll $0, $0, 0
mflo $1
TAG678:
and $3, $1, $1
sb $3, 0($3)
mtlo $3
mfhi $1
TAG679:
mflo $1
mtlo $1
nor $4, $1, $1
mfhi $4
TAG680:
mult $4, $4
mflo $3
and $2, $3, $3
lui $3, 7
TAG681:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $3, TAG682
multu $3, $3
TAG682:
ori $1, $2, 11
beq $1, $1, TAG683
mfhi $2
mult $1, $2
TAG683:
mtlo $2
xori $3, $2, 12
mtlo $2
addu $4, $2, $3
TAG684:
and $3, $4, $4
beq $3, $4, TAG685
mtlo $4
lbu $4, 0($4)
TAG685:
subu $4, $4, $4
mfhi $2
mtlo $2
slti $1, $4, 5
TAG686:
lui $3, 7
sll $0, $0, 0
mfhi $1
bgez $1, TAG687
TAG687:
mflo $1
multu $1, $1
multu $1, $1
mult $1, $1
TAG688:
blez $1, TAG689
mfhi $2
sltiu $2, $1, 2
mtlo $2
TAG689:
multu $2, $2
lui $4, 10
bgez $2, TAG690
andi $3, $4, 5
TAG690:
bgez $3, TAG691
mfhi $4
sra $2, $3, 11
lhu $2, 0($2)
TAG691:
sh $2, 0($2)
beq $2, $2, TAG692
mtlo $2
beq $2, $2, TAG692
TAG692:
lui $1, 1
mult $2, $2
sltiu $4, $1, 5
mflo $2
TAG693:
mult $2, $2
multu $2, $2
mthi $2
lb $4, 0($2)
TAG694:
lui $1, 5
mfhi $2
lui $1, 7
lb $4, 0($4)
TAG695:
mthi $4
sw $4, 0($4)
lui $3, 15
sll $3, $3, 6
TAG696:
beq $3, $3, TAG697
mthi $3
sw $3, 0($3)
sb $3, 0($3)
TAG697:
sll $0, $0, 0
srlv $3, $3, $3
nor $2, $3, $3
mfhi $3
TAG698:
subu $3, $3, $3
sub $3, $3, $3
lbu $2, 0($3)
bne $3, $3, TAG699
TAG699:
lui $3, 11
bne $3, $2, TAG700
div $2, $3
bne $3, $2, TAG700
TAG700:
div $3, $3
mthi $3
mfhi $4
bgtz $3, TAG701
TAG701:
lui $1, 5
andi $3, $4, 15
sll $0, $0, 0
blez $3, TAG702
TAG702:
lui $4, 11
mtlo $4
sw $3, 0($3)
xori $2, $3, 4
TAG703:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG704:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
lui $4, 2
TAG705:
mfhi $4
mthi $4
div $4, $4
sll $0, $0, 0
TAG706:
sll $0, $0, 0
div $4, $2
mtlo $4
mflo $1
TAG707:
addu $4, $1, $1
beq $4, $1, TAG708
lui $4, 3
mfhi $2
TAG708:
mfhi $1
lw $4, 0($1)
mflo $4
lui $2, 10
TAG709:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG710
sll $0, $0, 0
TAG710:
mthi $2
lui $1, 3
mtlo $2
bne $1, $2, TAG711
TAG711:
xor $3, $1, $1
srav $3, $1, $3
bne $1, $1, TAG712
lui $2, 7
TAG712:
mtlo $2
lui $3, 5
mfhi $3
addu $1, $2, $3
TAG713:
bltz $1, TAG714
sltiu $1, $1, 14
bgez $1, TAG714
ori $1, $1, 0
TAG714:
mtlo $1
sw $1, 0($1)
lui $4, 4
mflo $2
TAG715:
lh $3, 0($2)
mflo $2
and $2, $2, $2
mfhi $1
TAG716:
bgtz $1, TAG717
div $1, $1
andi $3, $1, 3
sra $1, $3, 11
TAG717:
bltz $1, TAG718
or $1, $1, $1
lui $1, 3
multu $1, $1
TAG718:
srl $3, $1, 7
addiu $4, $3, 15
mfhi $3
mflo $1
TAG719:
bltz $1, TAG720
mflo $1
add $3, $1, $1
bgtz $3, TAG720
TAG720:
lui $1, 9
multu $3, $3
bgtz $3, TAG721
mult $3, $3
TAG721:
mflo $1
srav $1, $1, $1
lw $4, 0($1)
lh $4, 0($1)
TAG722:
srav $1, $4, $4
bne $4, $4, TAG723
multu $1, $1
bltz $4, TAG723
TAG723:
mult $1, $1
slti $4, $1, 4
lh $3, 0($1)
lui $3, 11
TAG724:
sll $0, $0, 0
mtlo $1
lui $4, 9
addu $1, $1, $3
TAG725:
mult $1, $1
sll $0, $0, 0
addu $1, $2, $1
mtlo $1
TAG726:
lui $4, 2
srl $1, $1, 3
beq $4, $1, TAG727
sll $0, $0, 0
TAG727:
andi $2, $1, 6
bltz $2, TAG728
mfhi $1
lb $3, 0($1)
TAG728:
mult $3, $3
multu $3, $3
mult $3, $3
sltiu $4, $3, 11
TAG729:
lb $1, 0($4)
lbu $4, 0($1)
sll $4, $4, 1
mflo $2
TAG730:
beq $2, $2, TAG731
lw $2, 0($2)
lhu $3, 0($2)
lui $4, 0
TAG731:
sub $2, $4, $4
mult $2, $2
or $1, $4, $4
lui $2, 13
TAG732:
mthi $2
lui $2, 9
mthi $2
mthi $2
TAG733:
addiu $4, $2, 4
sll $0, $0, 0
sb $4, 0($1)
sw $2, 0($1)
TAG734:
beq $1, $1, TAG735
lb $4, 0($1)
lui $4, 8
xor $4, $1, $4
TAG735:
sltu $4, $4, $4
slt $1, $4, $4
bltz $4, TAG736
lui $2, 11
TAG736:
andi $2, $2, 10
lw $4, 0($2)
mfhi $3
addi $1, $2, 2
TAG737:
mfhi $2
mthi $2
div $2, $2
ori $4, $2, 0
TAG738:
slt $4, $4, $4
mflo $3
mthi $3
lh $2, 0($4)
TAG739:
lbu $1, 0($2)
bne $2, $2, TAG740
lui $2, 3
beq $1, $1, TAG740
TAG740:
addiu $2, $2, 9
mtlo $2
sra $2, $2, 0
lui $2, 6
TAG741:
lui $2, 8
nor $2, $2, $2
lui $3, 2
sll $0, $0, 0
TAG742:
bgez $3, TAG743
andi $2, $3, 1
div $2, $2
sll $2, $3, 13
TAG743:
sh $2, 0($2)
mthi $2
beq $2, $2, TAG744
multu $2, $2
TAG744:
bgez $2, TAG745
sh $2, 0($2)
beq $2, $2, TAG745
sw $2, 0($2)
TAG745:
mflo $2
bgez $2, TAG746
lui $3, 13
bltz $3, TAG746
TAG746:
addiu $1, $3, 7
sll $0, $0, 0
mult $1, $3
multu $3, $3
TAG747:
sltu $1, $1, $1
bne $1, $1, TAG748
mfhi $4
lui $4, 13
TAG748:
mult $4, $4
div $4, $4
lui $4, 5
addu $1, $4, $4
TAG749:
divu $1, $1
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop