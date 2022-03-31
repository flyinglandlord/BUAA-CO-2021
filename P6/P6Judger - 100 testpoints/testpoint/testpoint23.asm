ori $1, $0, 5
ori $2, $0, 9
ori $3, $0, 7
ori $4, $0, 2
sw $3, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $2, 20($0)
sw $2, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $1, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $1, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $2, 124($0)
lui $2, 4
mfhi $4
sll $0, $0, 0
mtlo $2
TAG1:
lui $3, 6
slti $2, $2, 10
multu $2, $2
andi $4, $2, 4
TAG2:
mflo $3
srav $1, $3, $3
sltiu $2, $4, 6
lb $1, 0($2)
TAG3:
lui $4, 12
srav $2, $4, $1
mtlo $1
bgez $1, TAG4
TAG4:
addiu $4, $2, 11
lui $2, 12
mthi $4
bgtz $2, TAG5
TAG5:
sllv $3, $2, $2
mfhi $2
sll $0, $0, 0
beq $3, $2, TAG6
TAG6:
mfhi $4
addu $3, $2, $4
mthi $4
bgez $4, TAG7
TAG7:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 12
mult $3, $3
TAG8:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
slt $2, $1, $3
TAG9:
mtlo $2
mthi $2
sb $2, 0($2)
mtlo $2
TAG10:
sb $2, 0($2)
addu $3, $2, $2
slti $1, $2, 0
sll $4, $1, 15
TAG11:
mflo $4
lbu $4, 0($4)
bne $4, $4, TAG12
lui $4, 12
TAG12:
div $4, $4
mfhi $4
lbu $2, 0($4)
mtlo $4
TAG13:
lbu $4, 0($2)
ori $3, $4, 7
lui $2, 8
sll $0, $0, 0
TAG14:
div $3, $3
mtlo $3
mult $3, $3
mtlo $3
TAG15:
or $3, $3, $3
addu $4, $3, $3
blez $3, TAG16
mtlo $3
TAG16:
lui $2, 5
mfhi $2
lui $4, 15
beq $4, $4, TAG17
TAG17:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG18
sll $0, $0, 0
TAG18:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG19:
mflo $3
divu $3, $4
bgez $3, TAG20
mfhi $3
TAG20:
lbu $4, 0($3)
and $1, $3, $3
or $1, $3, $4
slti $2, $1, 4
TAG21:
lhu $3, 0($2)
bgez $2, TAG22
and $1, $3, $2
mthi $1
TAG22:
srl $3, $1, 13
sllv $4, $3, $3
lui $3, 2
sll $0, $0, 0
TAG23:
lui $4, 11
mfhi $4
bne $3, $3, TAG24
xor $2, $4, $3
TAG24:
sll $0, $0, 0
subu $1, $2, $2
multu $2, $2
sb $2, 0($1)
TAG25:
blez $1, TAG26
lui $1, 15
slti $2, $1, 5
mfhi $2
TAG26:
mfhi $3
mthi $3
sw $2, 0($3)
bne $3, $3, TAG27
TAG27:
subu $4, $3, $3
mflo $1
slt $4, $3, $1
div $4, $3
TAG28:
multu $4, $4
lb $3, 0($4)
lbu $1, 0($4)
div $4, $1
TAG29:
andi $3, $1, 7
mfhi $4
mfhi $2
beq $2, $1, TAG30
TAG30:
mult $2, $2
mtlo $2
lui $2, 11
bltz $2, TAG31
TAG31:
mtlo $2
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG32:
beq $3, $3, TAG33
mult $3, $3
slti $1, $3, 9
mtlo $3
TAG33:
bltz $1, TAG34
mult $1, $1
srl $3, $1, 9
sh $1, 0($3)
TAG34:
sw $3, 0($3)
mult $3, $3
lw $3, 0($3)
sb $3, 0($3)
TAG35:
srav $2, $3, $3
mfhi $1
bgez $3, TAG36
xor $3, $1, $2
TAG36:
beq $3, $3, TAG37
slti $1, $3, 14
lui $3, 15
slt $1, $1, $3
TAG37:
sb $1, 0($1)
or $1, $1, $1
lbu $3, 0($1)
mult $3, $3
TAG38:
divu $3, $3
lbu $4, 0($3)
xor $4, $3, $3
or $3, $4, $3
TAG39:
sll $2, $3, 9
beq $3, $3, TAG40
sllv $4, $2, $3
lui $3, 5
TAG40:
beq $3, $3, TAG41
mult $3, $3
mfhi $1
bgtz $1, TAG41
TAG41:
mfhi $4
blez $1, TAG42
sb $1, 0($4)
sw $1, 0($4)
TAG42:
sw $4, 0($4)
bne $4, $4, TAG43
subu $2, $4, $4
beq $4, $4, TAG43
TAG43:
multu $2, $2
slti $4, $2, 15
lh $2, 0($2)
and $1, $2, $2
TAG44:
mflo $1
lui $1, 8
sll $0, $0, 0
lui $3, 0
TAG45:
mfhi $1
sltiu $2, $3, 6
lui $3, 2
bne $2, $1, TAG46
TAG46:
sll $0, $0, 0
mult $2, $3
mfhi $2
slti $3, $2, 2
TAG47:
blez $3, TAG48
mult $3, $3
mflo $3
lui $1, 10
TAG48:
mtlo $1
addu $3, $1, $1
beq $1, $3, TAG49
andi $1, $3, 5
TAG49:
beq $1, $1, TAG50
multu $1, $1
xori $3, $1, 8
addiu $4, $3, 0
TAG50:
bltz $4, TAG51
mtlo $4
multu $4, $4
sllv $4, $4, $4
TAG51:
mtlo $4
bgtz $4, TAG52
sh $4, 0($4)
lbu $2, 0($4)
TAG52:
mtlo $2
multu $2, $2
beq $2, $2, TAG53
lui $1, 8
TAG53:
mflo $3
mflo $2
andi $2, $2, 0
mult $3, $2
TAG54:
lui $1, 0
mult $1, $1
mthi $1
addi $1, $2, 0
TAG55:
beq $1, $1, TAG56
lui $2, 7
mult $2, $2
mfhi $4
TAG56:
slti $1, $4, 11
beq $1, $1, TAG57
srl $2, $4, 4
bgtz $4, TAG57
TAG57:
mflo $1
mult $2, $1
lui $3, 2
sra $1, $3, 12
TAG58:
beq $1, $1, TAG59
addu $3, $1, $1
mflo $2
subu $4, $2, $1
TAG59:
sh $4, 0($4)
and $4, $4, $4
beq $4, $4, TAG60
addiu $2, $4, 11
TAG60:
mthi $2
div $2, $2
lui $2, 7
mfhi $2
TAG61:
subu $1, $2, $2
bltz $2, TAG62
srav $3, $1, $1
sltiu $3, $1, 15
TAG62:
beq $3, $3, TAG63
lbu $3, 0($3)
div $3, $3
mtlo $3
TAG63:
bne $3, $3, TAG64
lui $1, 13
lui $1, 6
sll $0, $0, 0
TAG64:
bne $1, $1, TAG65
sll $0, $0, 0
mtlo $1
bltz $1, TAG65
TAG65:
sll $0, $0, 0
mtlo $3
sw $1, 0($3)
sll $1, $3, 13
TAG66:
multu $1, $1
multu $1, $1
lui $3, 13
beq $3, $1, TAG67
TAG67:
nor $4, $3, $3
subu $3, $4, $4
mfhi $3
mult $3, $3
TAG68:
multu $3, $3
srlv $3, $3, $3
lw $2, 0($3)
bne $3, $3, TAG69
TAG69:
srl $2, $2, 0
mfhi $2
sb $2, 0($2)
bne $2, $2, TAG70
TAG70:
lui $1, 15
multu $1, $1
xori $2, $1, 13
sll $0, $0, 0
TAG71:
lui $4, 3
sll $0, $0, 0
mflo $2
xori $4, $2, 13
TAG72:
srlv $4, $4, $4
lui $1, 9
mfhi $2
mthi $4
TAG73:
mtlo $2
sltu $4, $2, $2
mflo $3
bne $3, $3, TAG74
TAG74:
and $3, $3, $3
sra $3, $3, 6
addu $1, $3, $3
mtlo $3
TAG75:
andi $1, $1, 9
mthi $1
lw $4, 0($1)
bltz $4, TAG76
TAG76:
mthi $4
lui $1, 15
or $2, $4, $4
andi $3, $2, 0
TAG77:
srl $3, $3, 2
bne $3, $3, TAG78
mult $3, $3
mtlo $3
TAG78:
mfhi $3
sub $3, $3, $3
lui $3, 15
div $3, $3
TAG79:
mfhi $3
mflo $1
mthi $3
mtlo $1
TAG80:
mfhi $2
multu $1, $2
xori $4, $2, 4
lui $2, 4
TAG81:
divu $2, $2
beq $2, $2, TAG82
sll $0, $0, 0
lui $4, 3
TAG82:
xor $4, $4, $4
sh $4, 0($4)
sh $4, 0($4)
lhu $4, 0($4)
TAG83:
bgtz $4, TAG84
mfhi $2
mfhi $1
blez $1, TAG84
TAG84:
multu $1, $1
bne $1, $1, TAG85
multu $1, $1
mult $1, $1
TAG85:
sub $3, $1, $1
sh $3, 0($3)
bne $1, $3, TAG86
mflo $1
TAG86:
mult $1, $1
lui $1, 1
beq $1, $1, TAG87
multu $1, $1
TAG87:
bne $1, $1, TAG88
mthi $1
lui $4, 0
mflo $1
TAG88:
sltiu $3, $1, 3
lui $3, 7
addi $4, $1, 4
mfhi $1
TAG89:
bne $1, $1, TAG90
slti $1, $1, 0
srav $1, $1, $1
srav $4, $1, $1
TAG90:
mtlo $4
addu $4, $4, $4
nor $4, $4, $4
sw $4, 1($4)
TAG91:
sll $0, $0, 0
mfhi $4
subu $3, $4, $4
bgtz $3, TAG92
TAG92:
sra $4, $3, 12
mthi $3
bne $4, $3, TAG93
mflo $4
TAG93:
multu $4, $4
srlv $2, $4, $4
lb $3, 0($4)
srav $4, $4, $3
TAG94:
mflo $4
nor $1, $4, $4
mthi $4
mtlo $4
TAG95:
sw $1, 1($1)
lui $2, 15
lbu $2, 1($1)
beq $2, $1, TAG96
TAG96:
addiu $2, $2, 4
bgez $2, TAG97
mfhi $4
mflo $3
TAG97:
beq $3, $3, TAG98
lhu $1, 1($3)
beq $1, $3, TAG98
lui $2, 3
TAG98:
mflo $1
lw $2, 0($1)
bne $2, $2, TAG99
multu $2, $2
TAG99:
divu $2, $2
bltz $2, TAG100
divu $2, $2
beq $2, $2, TAG100
TAG100:
mflo $2
sb $2, 0($2)
mthi $2
lui $4, 15
TAG101:
mtlo $4
lui $3, 13
addiu $1, $3, 13
lui $3, 2
TAG102:
sll $0, $0, 0
slt $4, $4, $4
sb $4, 0($4)
mflo $2
TAG103:
mfhi $4
sb $4, 0($4)
mult $2, $4
mflo $2
TAG104:
sll $0, $0, 0
divu $2, $2
bgtz $2, TAG105
mult $2, $2
TAG105:
addiu $3, $2, 11
ori $1, $2, 13
mtlo $3
lui $2, 11
TAG106:
mthi $2
addu $4, $2, $2
mtlo $4
sll $2, $4, 3
TAG107:
sll $0, $0, 0
lui $4, 6
lui $1, 11
mfhi $3
TAG108:
addiu $2, $3, 5
bltz $3, TAG109
mtlo $2
bgez $2, TAG109
TAG109:
sll $0, $0, 0
slt $1, $4, $2
bgtz $4, TAG110
mtlo $2
TAG110:
sra $4, $1, 12
bgtz $4, TAG111
mflo $1
bltz $4, TAG111
TAG111:
andi $4, $1, 12
ori $4, $1, 14
addiu $4, $4, 10
ori $4, $1, 13
TAG112:
mfhi $3
addiu $2, $3, 7
sll $0, $0, 0
lui $3, 14
TAG113:
div $3, $3
mfhi $3
mtlo $3
mult $3, $3
TAG114:
mflo $1
bgtz $1, TAG115
mflo $4
bgez $1, TAG115
TAG115:
mtlo $4
mthi $4
blez $4, TAG116
lb $2, 0($4)
TAG116:
add $2, $2, $2
slti $1, $2, 0
multu $1, $1
mult $1, $1
TAG117:
lui $4, 12
sra $3, $1, 11
bgez $3, TAG118
andi $1, $1, 10
TAG118:
mult $1, $1
bltz $1, TAG119
mflo $1
addiu $3, $1, 3
TAG119:
sb $3, 0($3)
sb $3, 0($3)
sb $3, 0($3)
mfhi $1
TAG120:
xori $2, $1, 14
bne $1, $1, TAG121
mflo $3
mflo $2
TAG121:
mflo $2
mtlo $2
add $2, $2, $2
lui $1, 1
TAG122:
sllv $1, $1, $1
mthi $1
beq $1, $1, TAG123
sll $0, $0, 0
TAG123:
mult $2, $2
mtlo $2
mfhi $2
lui $4, 10
TAG124:
sll $0, $0, 0
sll $4, $4, 6
bne $4, $4, TAG125
divu $4, $4
TAG125:
mthi $4
sll $0, $0, 0
addu $3, $4, $4
lui $4, 8
TAG126:
srl $1, $4, 0
slti $1, $1, 14
sb $1, 0($1)
lui $1, 4
TAG127:
mflo $4
slt $4, $1, $1
mflo $1
bltz $1, TAG128
TAG128:
mflo $2
mthi $2
mthi $1
sll $2, $1, 6
TAG129:
mthi $2
mtlo $2
lw $1, 0($2)
mfhi $1
TAG130:
addiu $4, $1, 5
mflo $2
subu $4, $2, $4
divu $1, $4
TAG131:
sw $4, 5($4)
mfhi $3
bgez $4, TAG132
mfhi $1
TAG132:
addu $3, $1, $1
multu $3, $3
mfhi $1
blez $1, TAG133
TAG133:
mthi $1
bne $1, $1, TAG134
mult $1, $1
lui $3, 3
TAG134:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $1, 15
lui $2, 1
TAG135:
mtlo $2
mflo $4
divu $2, $4
lui $1, 4
TAG136:
mflo $3
bne $1, $1, TAG137
mfhi $3
mthi $1
TAG137:
lh $3, 0($3)
ori $3, $3, 14
andi $2, $3, 6
sb $2, 1($3)
TAG138:
mfhi $4
bne $4, $4, TAG139
sra $2, $4, 10
lbu $2, -256($2)
TAG139:
beq $2, $2, TAG140
sh $2, 0($2)
mthi $2
mult $2, $2
TAG140:
sra $1, $2, 8
addiu $4, $2, 14
xori $4, $2, 0
srav $4, $4, $1
TAG141:
beq $4, $4, TAG142
nor $2, $4, $4
lui $3, 7
sra $2, $4, 2
TAG142:
divu $2, $2
bltz $2, TAG143
lui $4, 7
mult $4, $4
TAG143:
mflo $3
bgez $4, TAG144
lui $4, 15
bne $4, $4, TAG144
TAG144:
mflo $3
addu $4, $3, $4
lui $4, 5
lbu $3, 0($3)
TAG145:
mult $3, $3
lui $1, 10
blez $3, TAG146
sll $0, $0, 0
TAG146:
blez $3, TAG147
subu $1, $3, $3
mfhi $4
mthi $4
TAG147:
lhu $4, 0($4)
bne $4, $4, TAG148
mflo $2
blez $4, TAG148
TAG148:
sll $0, $0, 0
mthi $2
bgtz $3, TAG149
srl $1, $3, 6
TAG149:
lbu $4, 0($1)
sb $4, 0($1)
lhu $4, -255($4)
sb $1, 0($1)
TAG150:
sll $0, $0, 0
lui $1, 3
blez $3, TAG151
multu $1, $1
TAG151:
mult $1, $1
bne $1, $1, TAG152
mtlo $1
sll $0, $0, 0
TAG152:
divu $1, $1
beq $1, $1, TAG153
lui $3, 13
mfhi $4
TAG153:
beq $4, $4, TAG154
mflo $1
mult $1, $1
andi $1, $1, 1
TAG154:
andi $1, $1, 11
slti $4, $1, 3
divu $1, $4
addu $4, $4, $1
TAG155:
divu $4, $4
sh $4, 0($4)
andi $4, $4, 1
mthi $4
TAG156:
lui $2, 10
mtlo $2
sll $0, $0, 0
divu $2, $2
TAG157:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG158:
div $3, $3
lui $3, 4
sll $0, $0, 0
xori $3, $3, 9
TAG159:
mthi $3
sll $0, $0, 0
bltz $3, TAG160
sll $0, $0, 0
TAG160:
bgtz $3, TAG161
addu $2, $3, $3
lbu $1, 0($2)
sh $3, 0($2)
TAG161:
divu $1, $1
beq $1, $1, TAG162
mtlo $1
lw $4, 0($1)
TAG162:
lbu $1, 0($4)
beq $1, $4, TAG163
nor $1, $4, $1
lui $3, 12
TAG163:
mthi $3
mtlo $3
multu $3, $3
mthi $3
TAG164:
mtlo $3
mflo $4
sll $0, $0, 0
srlv $3, $4, $3
TAG165:
beq $3, $3, TAG166
sll $0, $0, 0
beq $2, $3, TAG166
nor $1, $2, $3
TAG166:
mult $1, $1
lui $3, 8
sll $0, $0, 0
srl $2, $1, 10
TAG167:
sra $2, $2, 11
nor $3, $2, $2
mflo $1
sb $2, 2048($3)
TAG168:
addiu $3, $1, 12
divu $1, $1
mthi $1
bltz $3, TAG169
TAG169:
mtlo $3
bgez $3, TAG170
lb $2, 0($3)
mtlo $2
TAG170:
lw $1, 0($2)
mfhi $4
blez $1, TAG171
andi $2, $1, 6
TAG171:
mult $2, $2
mult $2, $2
mfhi $1
divu $1, $2
TAG172:
mult $1, $1
mtlo $1
sll $3, $1, 10
bgez $1, TAG173
TAG173:
mtlo $3
mthi $3
sb $3, 0($3)
beq $3, $3, TAG174
TAG174:
mthi $3
sub $3, $3, $3
addiu $4, $3, 4
sw $3, 0($3)
TAG175:
sw $4, 0($4)
sw $4, 0($4)
mthi $4
slt $4, $4, $4
TAG176:
ori $2, $4, 6
sh $4, 0($4)
lhu $4, 0($2)
and $4, $2, $4
TAG177:
multu $4, $4
lb $1, 0($4)
lhu $3, 0($1)
sb $3, 0($1)
TAG178:
beq $3, $3, TAG179
mthi $3
mtlo $3
lw $4, 0($3)
TAG179:
bltz $4, TAG180
mflo $4
srav $4, $4, $4
sh $4, 0($4)
TAG180:
lh $2, 0($4)
mtlo $2
mtlo $4
lui $3, 14
TAG181:
addu $1, $3, $3
sll $0, $0, 0
sltiu $2, $1, 11
mthi $4
TAG182:
lui $4, 0
sh $2, 0($4)
slti $2, $2, 2
subu $4, $2, $4
TAG183:
sb $4, 0($4)
mthi $4
mult $4, $4
mtlo $4
TAG184:
slt $2, $4, $4
mthi $4
mtlo $4
beq $2, $2, TAG185
TAG185:
lh $3, 0($2)
beq $3, $2, TAG186
sh $3, -256($3)
sw $2, -256($3)
TAG186:
lui $4, 12
mfhi $2
mult $2, $4
mtlo $2
TAG187:
mthi $2
addu $1, $2, $2
mfhi $4
sb $4, 0($2)
TAG188:
mthi $4
bgez $4, TAG189
lb $3, 0($4)
srlv $2, $4, $4
TAG189:
lbu $3, 0($2)
subu $3, $2, $3
bgez $3, TAG190
sb $3, 0($3)
TAG190:
beq $3, $3, TAG191
mthi $3
sh $3, 0($3)
div $3, $3
TAG191:
bltz $3, TAG192
multu $3, $3
bne $3, $3, TAG192
mthi $3
TAG192:
mthi $3
lh $3, 0($3)
lui $1, 8
srl $2, $1, 11
TAG193:
lui $1, 6
sll $0, $0, 0
div $1, $2
bne $1, $1, TAG194
TAG194:
mfhi $3
mult $3, $3
mtlo $3
sll $0, $0, 0
TAG195:
multu $3, $3
lui $4, 12
bne $3, $3, TAG196
addu $3, $3, $3
TAG196:
lh $2, 0($3)
sw $2, -256($2)
lhu $3, 0($3)
sw $3, -256($3)
TAG197:
nor $3, $3, $3
slt $3, $3, $3
sub $4, $3, $3
lui $3, 6
TAG198:
mtlo $3
mflo $2
sll $0, $0, 0
bgtz $3, TAG199
TAG199:
addu $3, $1, $1
sll $0, $0, 0
slt $4, $3, $3
lb $2, 0($4)
TAG200:
mtlo $2
sb $2, 0($2)
sltu $4, $2, $2
xor $3, $4, $4
TAG201:
sb $3, 0($3)
bne $3, $3, TAG202
or $1, $3, $3
sh $3, 0($1)
TAG202:
lui $1, 3
lui $2, 12
addu $2, $1, $2
sll $0, $0, 0
TAG203:
subu $1, $2, $2
ori $2, $1, 5
mfhi $3
lui $4, 14
TAG204:
slt $4, $4, $4
sh $4, 0($4)
sh $4, 0($4)
sra $4, $4, 14
TAG205:
bgez $4, TAG206
mflo $4
sw $4, 0($4)
lb $1, 0($4)
TAG206:
lbu $4, 0($1)
slti $4, $4, 3
sb $4, 0($4)
addu $2, $1, $4
TAG207:
mfhi $4
sw $4, 0($4)
srav $2, $4, $4
bgez $2, TAG208
TAG208:
lb $2, 0($2)
multu $2, $2
mult $2, $2
mult $2, $2
TAG209:
multu $2, $2
add $4, $2, $2
lui $3, 0
mfhi $2
TAG210:
bltz $2, TAG211
mult $2, $2
andi $2, $2, 9
sw $2, 0($2)
TAG211:
addi $3, $2, 6
addiu $2, $3, 11
sb $3, 0($2)
sb $2, 0($2)
TAG212:
mult $2, $2
lui $2, 0
mflo $2
mthi $2
TAG213:
mflo $3
bltz $2, TAG214
mfhi $2
beq $3, $2, TAG214
TAG214:
mult $2, $2
sb $2, -289($2)
lw $2, -289($2)
sb $2, 0($2)
TAG215:
lb $1, 0($2)
srav $2, $1, $1
sh $1, 0($2)
sll $1, $1, 8
TAG216:
sll $0, $0, 0
lb $3, -8448($1)
mult $1, $1
sltiu $1, $1, 0
TAG217:
lui $4, 13
mfhi $3
lui $4, 10
lui $1, 5
TAG218:
lui $2, 3
mthi $2
bne $1, $1, TAG219
sll $0, $0, 0
TAG219:
mfhi $3
bgez $3, TAG220
xor $2, $3, $2
xori $2, $2, 6
TAG220:
lbu $2, 0($2)
bne $2, $2, TAG221
sb $2, 0($2)
bltz $2, TAG221
TAG221:
lbu $2, 0($2)
sb $2, 0($2)
mult $2, $2
lbu $2, 0($2)
TAG222:
div $2, $2
sltu $4, $2, $2
ori $4, $2, 15
lui $4, 2
TAG223:
bgez $4, TAG224
divu $4, $4
sll $4, $4, 6
div $4, $4
TAG224:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $4
lui $3, 5
TAG225:
sll $0, $0, 0
multu $4, $3
sll $0, $0, 0
sll $0, $0, 0
TAG226:
sltiu $2, $4, 13
and $2, $2, $4
srlv $3, $2, $2
beq $4, $2, TAG227
TAG227:
multu $3, $3
bltz $3, TAG228
mult $3, $3
mult $3, $3
TAG228:
bltz $3, TAG229
subu $4, $3, $3
add $2, $4, $4
mflo $4
TAG229:
mfhi $2
addu $4, $2, $2
mtlo $4
bne $4, $4, TAG230
TAG230:
lui $2, 10
lhu $4, 0($4)
xori $3, $2, 10
lb $2, 0($4)
TAG231:
sll $1, $2, 12
mult $2, $2
sll $0, $0, 0
lb $3, 0($4)
TAG232:
lb $3, 0($3)
beq $3, $3, TAG233
lb $3, 0($3)
ori $3, $3, 15
TAG233:
mult $3, $3
bne $3, $3, TAG234
sltiu $1, $3, 11
mfhi $1
TAG234:
bltz $1, TAG235
srlv $4, $1, $1
mult $1, $4
bltz $4, TAG235
TAG235:
multu $4, $4
addu $2, $4, $4
multu $4, $2
addu $3, $2, $4
TAG236:
bltz $3, TAG237
lui $3, 11
mflo $2
slt $2, $2, $3
TAG237:
multu $2, $2
beq $2, $2, TAG238
mfhi $2
div $2, $2
TAG238:
slt $3, $2, $2
sltu $3, $3, $3
mthi $3
mult $3, $3
TAG239:
lh $4, 0($3)
addi $1, $3, 0
mult $3, $3
beq $4, $3, TAG240
TAG240:
mflo $3
sh $3, 0($1)
lui $3, 0
srl $3, $3, 4
TAG241:
xori $4, $3, 13
lui $4, 4
lui $3, 2
sll $0, $0, 0
TAG242:
srav $2, $4, $4
mthi $2
addiu $4, $4, 12
sll $0, $0, 0
TAG243:
sll $0, $0, 0
blez $4, TAG244
lui $3, 3
sll $2, $1, 10
TAG244:
mflo $3
bgtz $2, TAG245
multu $2, $2
mtlo $2
TAG245:
srav $3, $3, $3
beq $3, $3, TAG246
mflo $1
lui $3, 13
TAG246:
addu $4, $3, $3
sw $3, 0($4)
mfhi $4
lb $4, 0($4)
TAG247:
addu $3, $4, $4
add $2, $4, $3
mtlo $2
mflo $4
TAG248:
sb $4, 0($4)
addu $2, $4, $4
mthi $4
mtlo $2
TAG249:
beq $2, $2, TAG250
slti $2, $2, 11
bne $2, $2, TAG250
lui $4, 3
TAG250:
sw $4, 0($4)
lui $1, 0
sh $4, 0($1)
lh $2, 0($4)
TAG251:
bne $2, $2, TAG252
sw $2, 0($2)
beq $2, $2, TAG252
addu $1, $2, $2
TAG252:
lui $4, 1
multu $4, $1
lui $1, 8
mthi $1
TAG253:
beq $1, $1, TAG254
srl $1, $1, 2
srav $1, $1, $1
sw $1, 0($1)
TAG254:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
multu $3, $3
TAG255:
xori $2, $3, 0
andi $1, $3, 1
sw $2, 0($1)
mthi $1
TAG256:
sh $1, 0($1)
andi $1, $1, 11
srl $3, $1, 10
mult $3, $3
TAG257:
mthi $3
lui $2, 15
beq $2, $2, TAG258
multu $2, $3
TAG258:
mtlo $2
srlv $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG259:
addiu $1, $1, 9
sltiu $4, $1, 2
sll $0, $0, 0
mthi $2
TAG260:
ori $1, $2, 0
srav $2, $2, $2
lui $4, 12
sll $0, $0, 0
TAG261:
blez $3, TAG262
lui $2, 7
beq $2, $3, TAG262
lui $4, 1
TAG262:
sll $0, $0, 0
beq $1, $4, TAG263
sll $0, $0, 0
sll $0, $0, 0
TAG263:
slti $2, $1, 9
mult $1, $2
mtlo $1
srav $2, $1, $1
TAG264:
beq $2, $2, TAG265
sll $0, $0, 0
mthi $1
bne $1, $1, TAG265
TAG265:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
mfhi $4
TAG266:
and $2, $4, $4
lb $1, 0($2)
mtlo $1
lui $1, 4
TAG267:
mthi $1
subu $4, $1, $1
addu $4, $4, $4
mthi $4
TAG268:
mflo $1
lui $1, 5
addu $1, $1, $4
bltz $1, TAG269
TAG269:
addiu $4, $1, 3
mtlo $1
mtlo $1
blez $1, TAG270
TAG270:
mflo $3
lui $2, 0
mflo $4
subu $1, $3, $2
TAG271:
bgtz $1, TAG272
sll $0, $0, 0
nor $1, $1, $1
sb $1, 0($1)
TAG272:
slti $2, $1, 14
addiu $1, $1, 9
mtlo $2
mflo $2
TAG273:
lw $2, 0($2)
mflo $3
mfhi $2
mfhi $2
TAG274:
bltz $2, TAG275
lhu $1, 0($2)
lui $3, 10
beq $2, $3, TAG275
TAG275:
sll $0, $0, 0
bltz $3, TAG276
lui $3, 12
lui $1, 3
TAG276:
bgez $1, TAG277
lui $3, 4
sw $3, 0($1)
addi $1, $1, 2
TAG277:
ori $1, $1, 6
sll $0, $0, 0
sll $0, $0, 0
lhu $2, 0($2)
TAG278:
addi $4, $2, 9
lui $3, 8
lb $2, 0($4)
beq $2, $2, TAG279
TAG279:
mfhi $3
sub $1, $3, $2
beq $3, $3, TAG280
mtlo $1
TAG280:
mthi $1
sw $1, 0($1)
sb $1, 0($1)
multu $1, $1
TAG281:
multu $1, $1
mtlo $1
sb $1, 0($1)
mtlo $1
TAG282:
sub $2, $1, $1
mult $1, $2
lui $3, 13
mthi $3
TAG283:
addiu $4, $3, 9
mfhi $2
sll $0, $0, 0
mthi $4
TAG284:
multu $2, $2
mfhi $2
mthi $2
bgtz $2, TAG285
TAG285:
lui $4, 3
sll $0, $0, 0
mult $2, $2
sll $2, $2, 3
TAG286:
sb $2, -1352($2)
divu $2, $2
nor $3, $2, $2
lui $4, 4
TAG287:
sll $0, $0, 0
bne $3, $4, TAG288
sll $0, $0, 0
mthi $4
TAG288:
sh $3, 1353($3)
lhu $2, 1353($3)
lhu $2, 1353($3)
sll $0, $0, 0
TAG289:
addu $4, $2, $2
addiu $4, $4, 0
addu $1, $4, $4
lui $2, 12
TAG290:
srav $4, $2, $2
mult $2, $4
sll $0, $0, 0
lui $3, 12
TAG291:
lui $2, 12
srav $4, $2, $2
lui $4, 4
sll $1, $3, 13
TAG292:
bltz $1, TAG293
mflo $3
mflo $3
sb $3, 0($3)
TAG293:
mflo $2
srlv $2, $3, $3
lui $1, 1
mflo $1
TAG294:
sh $1, 0($1)
lui $2, 2
mfhi $2
div $2, $2
TAG295:
bgez $2, TAG296
lui $1, 12
mfhi $2
blez $1, TAG296
TAG296:
ori $3, $2, 5
lb $2, -149($3)
lui $4, 11
sltiu $1, $3, 10
TAG297:
blez $1, TAG298
multu $1, $1
lw $4, 0($1)
mthi $1
TAG298:
divu $4, $4
bne $4, $4, TAG299
mflo $1
slt $1, $4, $1
TAG299:
slti $2, $1, 12
bgez $2, TAG300
mflo $2
beq $2, $1, TAG300
TAG300:
sb $2, 0($2)
div $2, $2
mtlo $2
lb $1, 0($2)
TAG301:
lb $1, 0($1)
bltz $1, TAG302
mfhi $4
lui $4, 7
TAG302:
sll $0, $0, 0
mfhi $2
mflo $1
blez $2, TAG303
TAG303:
lui $3, 15
mflo $1
bgtz $1, TAG304
mfhi $3
TAG304:
andi $3, $3, 6
mtlo $3
lui $1, 10
bltz $3, TAG305
TAG305:
mflo $4
nor $1, $1, $4
bgez $1, TAG306
lui $4, 3
TAG306:
sll $0, $0, 0
mtlo $4
mfhi $3
xori $2, $4, 4
TAG307:
bgez $2, TAG308
sll $4, $2, 4
sltiu $3, $4, 0
div $2, $4
TAG308:
sltu $1, $3, $3
mult $1, $1
bgez $1, TAG309
addiu $3, $3, 8
TAG309:
lui $4, 3
mthi $4
bltz $3, TAG310
sltu $3, $3, $3
TAG310:
mthi $3
sh $3, 0($3)
sll $4, $3, 14
sll $1, $3, 5
TAG311:
mtlo $1
mtlo $1
mthi $1
sb $1, 0($1)
TAG312:
mult $1, $1
sb $1, 0($1)
sub $2, $1, $1
mfhi $1
TAG313:
mthi $1
addiu $2, $1, 14
bne $1, $1, TAG314
mflo $4
TAG314:
sb $4, 0($4)
srlv $4, $4, $4
mfhi $2
mtlo $2
TAG315:
lw $1, 0($2)
blez $2, TAG316
mfhi $3
addiu $4, $1, 6
TAG316:
bltz $4, TAG317
mthi $4
mfhi $1
bne $1, $1, TAG317
TAG317:
addu $4, $1, $1
bne $4, $4, TAG318
lui $4, 15
sll $0, $0, 0
TAG318:
lui $2, 2
mthi $4
bne $4, $4, TAG319
sll $0, $0, 0
TAG319:
sll $0, $0, 0
mfhi $4
lui $2, 4
mult $4, $4
TAG320:
lui $3, 2
bltz $3, TAG321
multu $2, $2
div $3, $3
TAG321:
bne $3, $3, TAG322
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG322:
mflo $2
lb $4, 0($4)
lui $1, 12
sllv $1, $1, $2
TAG323:
bne $1, $1, TAG324
sll $0, $0, 0
mult $1, $1
addiu $1, $1, 13
TAG324:
sll $0, $0, 0
srl $3, $1, 14
sll $0, $0, 0
sll $0, $0, 0
TAG325:
divu $3, $3
mtlo $3
blez $3, TAG326
mflo $1
TAG326:
sllv $4, $1, $1
nor $1, $4, $4
sw $1, 97($1)
multu $1, $4
TAG327:
mtlo $1
divu $1, $1
bgez $1, TAG328
mfhi $3
TAG328:
mult $3, $3
multu $3, $3
blez $3, TAG329
sb $3, 0($3)
TAG329:
sub $1, $3, $3
addi $3, $3, 14
mthi $3
lui $4, 1
TAG330:
sll $0, $0, 0
slt $4, $4, $4
slt $1, $4, $4
bne $4, $4, TAG331
TAG331:
ori $4, $1, 10
mfhi $2
sra $1, $4, 3
sh $1, 0($2)
TAG332:
sllv $2, $1, $1
lbu $4, 0($1)
sh $4, 0($2)
sltiu $3, $4, 14
TAG333:
or $3, $3, $3
sw $3, 0($3)
lhu $4, 0($3)
sb $4, 0($3)
TAG334:
addi $1, $4, 14
sh $1, 0($1)
mtlo $4
lui $3, 12
TAG335:
addiu $4, $3, 2
multu $4, $4
sll $1, $3, 4
sll $0, $0, 0
TAG336:
divu $1, $1
sll $0, $0, 0
mthi $2
div $1, $2
TAG337:
mfhi $3
lb $3, 0($2)
sub $3, $2, $3
mfhi $3
TAG338:
beq $3, $3, TAG339
sltu $3, $3, $3
mflo $3
mfhi $2
TAG339:
bgez $2, TAG340
divu $2, $2
mthi $2
lh $2, 0($2)
TAG340:
or $3, $2, $2
blez $3, TAG341
lui $3, 4
mflo $2
TAG341:
lb $3, 0($2)
srav $4, $2, $2
lui $2, 10
mfhi $4
TAG342:
srav $3, $4, $4
bne $3, $3, TAG343
lui $1, 1
mult $4, $1
TAG343:
ori $2, $1, 3
bgtz $1, TAG344
mtlo $1
sltu $1, $2, $1
TAG344:
mthi $1
lui $1, 5
sll $0, $0, 0
lui $2, 5
TAG345:
lui $2, 8
mflo $1
ori $3, $2, 2
bne $3, $2, TAG346
TAG346:
mthi $3
addiu $4, $3, 1
or $2, $4, $3
mfhi $2
TAG347:
mfhi $3
sll $0, $0, 0
mfhi $4
beq $3, $4, TAG348
TAG348:
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
divu $4, $4
TAG349:
bgez $2, TAG350
sll $0, $0, 0
sltiu $1, $2, 13
sub $1, $2, $2
TAG350:
sll $0, $0, 0
blez $1, TAG351
mfhi $1
mthi $1
TAG351:
bltz $1, TAG352
lui $1, 5
bgez $1, TAG352
mflo $1
TAG352:
lb $3, 0($1)
lui $3, 2
mflo $4
beq $4, $4, TAG353
TAG353:
or $4, $4, $4
mtlo $4
lbu $4, 0($4)
bne $4, $4, TAG354
TAG354:
mthi $4
mult $4, $4
multu $4, $4
bne $4, $4, TAG355
TAG355:
or $1, $4, $4
multu $4, $1
mflo $4
bgez $1, TAG356
TAG356:
srlv $4, $4, $4
mthi $4
lui $4, 8
lui $4, 11
TAG357:
sltu $3, $4, $4
div $3, $4
lui $3, 12
bltz $4, TAG358
TAG358:
srlv $2, $3, $3
nor $1, $3, $3
sll $0, $0, 0
bgtz $3, TAG359
TAG359:
sll $0, $0, 0
slt $4, $3, $3
andi $2, $3, 0
lui $4, 14
TAG360:
mfhi $3
bne $4, $4, TAG361
nor $4, $3, $3
mult $3, $4
TAG361:
bgez $4, TAG362
div $4, $4
addiu $1, $4, 15
lui $1, 0
TAG362:
lh $3, 0($1)
lui $2, 1
sll $0, $0, 0
bgez $3, TAG363
TAG363:
div $2, $2
blez $2, TAG364
sll $0, $0, 0
div $2, $2
TAG364:
sll $0, $0, 0
sh $2, 1($4)
lui $4, 7
multu $4, $4
TAG365:
divu $4, $4
sll $0, $0, 0
lui $1, 1
mflo $4
TAG366:
bne $4, $4, TAG367
mflo $4
subu $3, $4, $4
sllv $3, $4, $4
TAG367:
lhu $4, 0($3)
bltz $4, TAG368
sw $3, 0($4)
beq $4, $4, TAG368
TAG368:
mtlo $4
mtlo $4
lb $1, 0($4)
mflo $4
TAG369:
bne $4, $4, TAG370
mthi $4
multu $4, $4
lw $4, 0($4)
TAG370:
sh $4, 0($4)
xor $2, $4, $4
sh $4, 0($4)
lui $4, 15
TAG371:
sll $0, $0, 0
div $4, $4
slti $2, $4, 6
sb $4, 0($2)
TAG372:
sb $2, 0($2)
lw $3, 0($2)
blez $3, TAG373
multu $3, $2
TAG373:
lui $1, 7
bltz $1, TAG374
mfhi $1
sll $0, $0, 0
TAG374:
sltiu $1, $1, 12
mflo $3
mflo $4
bgez $1, TAG375
TAG375:
multu $4, $4
mthi $4
multu $4, $4
mfhi $3
TAG376:
lui $1, 8
mult $3, $3
bne $1, $3, TAG377
multu $1, $3
TAG377:
xori $3, $1, 7
and $4, $1, $1
addiu $3, $3, 15
bgez $3, TAG378
TAG378:
nor $1, $3, $3
mthi $1
sll $0, $0, 0
bgtz $1, TAG379
TAG379:
lui $1, 15
slti $2, $1, 1
lui $4, 12
lui $2, 11
TAG380:
blez $2, TAG381
mult $2, $2
sltiu $3, $2, 10
multu $2, $3
TAG381:
mult $3, $3
mtlo $3
sra $2, $3, 13
sh $2, 0($2)
TAG382:
mthi $2
mthi $2
or $4, $2, $2
lui $3, 2
TAG383:
lui $3, 10
bne $3, $3, TAG384
sll $0, $0, 0
ori $4, $3, 15
TAG384:
sll $1, $4, 1
sll $0, $0, 0
sll $0, $0, 0
div $4, $1
TAG385:
beq $1, $1, TAG386
andi $1, $1, 9
mult $1, $1
mult $1, $1
TAG386:
ori $2, $1, 10
lui $3, 6
divu $3, $3
sltiu $3, $2, 10
TAG387:
mthi $3
lui $3, 6
subu $2, $3, $3
beq $3, $3, TAG388
TAG388:
subu $2, $2, $2
mfhi $3
multu $2, $2
mfhi $3
TAG389:
lhu $3, 0($3)
sh $3, 0($3)
mfhi $3
beq $3, $3, TAG390
TAG390:
sll $4, $3, 11
mfhi $4
bltz $4, TAG391
mthi $4
TAG391:
slti $3, $4, 1
lbu $3, 0($3)
lui $3, 6
mtlo $3
TAG392:
sll $0, $0, 0
sh $4, 0($4)
lui $1, 1
nor $4, $4, $3
TAG393:
and $2, $4, $4
lui $2, 10
bne $4, $2, TAG394
sll $0, $0, 0
TAG394:
bne $2, $2, TAG395
andi $1, $2, 11
lui $2, 4
multu $2, $1
TAG395:
sll $0, $0, 0
mflo $4
mfhi $2
sub $3, $4, $4
TAG396:
srav $2, $3, $3
lui $2, 7
mtlo $3
sll $0, $0, 0
TAG397:
subu $4, $2, $2
mtlo $2
mthi $2
srlv $3, $4, $4
TAG398:
mflo $3
mflo $2
blez $3, TAG399
sll $0, $0, 0
TAG399:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG400:
bne $4, $4, TAG401
mfhi $2
slt $4, $4, $2
multu $2, $4
TAG401:
lui $3, 5
sll $0, $0, 0
blez $3, TAG402
sll $0, $0, 0
TAG402:
blez $4, TAG403
lb $2, 0($4)
lbu $1, 0($2)
lw $1, 0($1)
TAG403:
bne $1, $1, TAG404
srav $1, $1, $1
lui $4, 9
lui $3, 3
TAG404:
sll $0, $0, 0
lui $4, 3
lui $2, 10
divu $3, $3
TAG405:
mtlo $2
lui $2, 11
lui $1, 7
lui $4, 5
TAG406:
divu $4, $4
bne $4, $4, TAG407
div $4, $4
mthi $4
TAG407:
bne $4, $4, TAG408
div $4, $4
sll $0, $0, 0
beq $4, $4, TAG408
TAG408:
or $4, $3, $3
sll $0, $0, 0
beq $4, $4, TAG409
mtlo $3
TAG409:
slti $1, $4, 9
mult $1, $1
div $4, $4
addu $4, $4, $1
TAG410:
blez $4, TAG411
divu $4, $4
sll $0, $0, 0
mtlo $4
TAG411:
multu $4, $4
sll $0, $0, 0
andi $1, $4, 6
mflo $3
TAG412:
lbu $3, 0($3)
srlv $2, $3, $3
sw $2, 0($3)
mult $3, $2
TAG413:
bgez $2, TAG414
lui $3, 10
xor $2, $3, $2
or $1, $2, $2
TAG414:
bne $1, $1, TAG415
xor $3, $1, $1
beq $3, $3, TAG415
mthi $1
TAG415:
lui $4, 12
mult $4, $4
xori $4, $4, 12
mult $3, $3
TAG416:
beq $4, $4, TAG417
lui $1, 15
sb $4, 0($4)
mthi $1
TAG417:
mult $1, $1
beq $1, $1, TAG418
lui $2, 3
sllv $3, $1, $1
TAG418:
lui $4, 2
beq $3, $3, TAG419
lbu $4, 0($3)
lhu $4, 0($4)
TAG419:
lui $3, 12
xor $1, $4, $4
sh $1, 0($1)
bgez $1, TAG420
TAG420:
mthi $1
beq $1, $1, TAG421
sb $1, 0($1)
beq $1, $1, TAG421
TAG421:
lui $1, 15
xor $4, $1, $1
mtlo $4
lui $2, 9
TAG422:
mthi $2
bltz $2, TAG423
or $3, $2, $2
lui $4, 7
TAG423:
mtlo $4
mult $4, $4
bne $4, $4, TAG424
mflo $2
TAG424:
mfhi $3
sb $2, 0($2)
mthi $2
multu $2, $3
TAG425:
bne $3, $3, TAG426
mfhi $1
mtlo $1
mfhi $4
TAG426:
mflo $2
lui $1, 11
lui $1, 11
lw $2, 0($4)
TAG427:
sb $2, 0($2)
beq $2, $2, TAG428
lw $2, 0($2)
sw $2, 0($2)
TAG428:
mthi $2
beq $2, $2, TAG429
mtlo $2
xori $4, $2, 2
TAG429:
mult $4, $4
mult $4, $4
mult $4, $4
mtlo $4
TAG430:
sub $4, $4, $4
bltz $4, TAG431
lui $2, 2
sh $2, 0($4)
TAG431:
ori $1, $2, 1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG432:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG433
nor $3, $1, $1
TAG433:
bgez $3, TAG434
sll $0, $0, 0
lui $3, 14
multu $3, $4
TAG434:
sll $0, $0, 0
lui $2, 13
mflo $1
sub $1, $3, $1
TAG435:
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG436
TAG436:
sll $0, $0, 0
mtlo $1
mthi $1
sll $0, $0, 0
TAG437:
lui $2, 9
addiu $3, $1, 0
lui $2, 1
sll $0, $0, 0
TAG438:
srl $2, $2, 9
lui $4, 9
bltz $2, TAG439
lui $1, 12
TAG439:
multu $1, $1
mult $1, $1
sll $0, $0, 0
bgez $1, TAG440
TAG440:
mflo $4
sll $0, $0, 0
add $1, $4, $1
mflo $4
TAG441:
blez $4, TAG442
mflo $2
sltiu $4, $4, 15
bgez $4, TAG442
TAG442:
sw $4, 0($4)
bgtz $4, TAG443
mfhi $1
lui $1, 11
TAG443:
sll $0, $0, 0
bltz $1, TAG444
sltu $2, $3, $1
beq $1, $1, TAG444
TAG444:
sw $2, 0($2)
multu $2, $2
mtlo $2
mflo $1
TAG445:
lui $2, 1
mflo $3
or $2, $2, $3
lhu $4, 0($3)
TAG446:
sra $4, $4, 14
lui $2, 9
mtlo $4
sh $2, 0($4)
TAG447:
beq $2, $2, TAG448
divu $2, $2
div $2, $2
multu $2, $2
TAG448:
multu $2, $2
xori $3, $2, 14
mflo $1
srav $3, $1, $2
TAG449:
lb $3, 0($3)
mult $3, $3
mult $3, $3
srl $4, $3, 15
TAG450:
sb $4, 0($4)
lui $1, 5
mult $1, $4
mthi $4
TAG451:
beq $1, $1, TAG452
ori $2, $1, 15
lui $2, 4
lh $2, 0($2)
TAG452:
bne $2, $2, TAG453
ori $1, $2, 5
lui $1, 5
sll $0, $0, 0
TAG453:
mtlo $2
sll $0, $0, 0
mtlo $1
beq $2, $1, TAG454
TAG454:
mult $1, $1
sll $0, $0, 0
beq $1, $1, TAG455
subu $4, $1, $1
TAG455:
mthi $4
mtlo $4
sllv $1, $4, $4
xori $1, $1, 4
TAG456:
sb $1, 0($1)
lhu $4, 0($1)
mult $4, $4
mflo $3
TAG457:
mflo $3
bne $3, $3, TAG458
mtlo $3
div $3, $3
TAG458:
div $3, $3
srlv $2, $3, $3
srlv $4, $2, $2
mflo $2
TAG459:
lb $4, 0($2)
mflo $1
mflo $2
addu $3, $4, $4
TAG460:
lhu $3, 0($3)
bltz $3, TAG461
lui $4, 14
mfhi $2
TAG461:
beq $2, $2, TAG462
mthi $2
sw $2, 0($2)
bne $2, $2, TAG462
TAG462:
lui $3, 1
mthi $3
lui $1, 1
lui $1, 5
TAG463:
mthi $1
blez $1, TAG464
lui $1, 7
sll $0, $0, 0
TAG464:
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG465:
addu $2, $3, $3
divu $2, $3
ori $3, $2, 10
mfhi $1
TAG466:
sw $1, 0($1)
multu $1, $1
bgez $1, TAG467
lb $2, 0($1)
TAG467:
lbu $1, 0($2)
srl $1, $2, 14
xor $2, $1, $2
lw $1, 0($2)
TAG468:
mflo $2
mthi $2
bne $2, $1, TAG469
xor $1, $2, $2
TAG469:
lui $2, 1
lui $2, 4
sll $0, $0, 0
mtlo $2
TAG470:
mtlo $2
mfhi $1
bne $1, $2, TAG471
lh $4, 0($1)
TAG471:
sh $4, 0($4)
lh $1, 0($4)
lui $3, 11
sub $1, $4, $1
TAG472:
lb $2, 0($1)
mult $1, $1
sb $1, 0($2)
sw $2, 0($2)
TAG473:
sw $2, 0($2)
blez $2, TAG474
lui $4, 1
bgez $2, TAG474
TAG474:
nor $4, $4, $4
multu $4, $4
or $3, $4, $4
mflo $2
TAG475:
lui $1, 9
bgtz $1, TAG476
sll $0, $0, 0
mtlo $1
TAG476:
sll $0, $0, 0
slt $2, $3, $3
addiu $4, $3, 9
mtlo $3
TAG477:
bgez $4, TAG478
mtlo $4
sll $0, $0, 0
mfhi $1
TAG478:
sll $0, $0, 0
lui $1, 7
sra $1, $1, 12
lh $3, 0($1)
TAG479:
sll $3, $3, 7
div $3, $3
subu $3, $3, $3
sh $3, 0($3)
TAG480:
mfhi $2
sw $3, 0($3)
sh $2, 0($3)
sb $3, 0($3)
TAG481:
andi $3, $2, 4
mtlo $2
bltz $3, TAG482
lw $2, 0($3)
TAG482:
xor $3, $2, $2
lui $2, 3
mflo $2
sb $3, 0($2)
TAG483:
xor $4, $2, $2
addiu $3, $2, 15
addiu $3, $2, 10
bgez $3, TAG484
TAG484:
ori $3, $3, 9
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
TAG485:
mtlo $3
bne $3, $3, TAG486
sb $3, 0($3)
sb $3, 0($3)
TAG486:
lbu $1, 0($3)
mfhi $2
ori $2, $3, 5
bgtz $2, TAG487
TAG487:
mfhi $4
sb $4, 0($4)
mfhi $4
sw $4, 0($4)
TAG488:
bne $4, $4, TAG489
lui $2, 7
mflo $2
sb $4, 0($2)
TAG489:
mtlo $2
mfhi $1
bne $2, $2, TAG490
mtlo $1
TAG490:
multu $1, $1
lui $1, 11
sllv $1, $1, $1
blez $1, TAG491
TAG491:
sltiu $1, $1, 12
lui $4, 7
multu $4, $4
mfhi $4
TAG492:
lb $2, 0($4)
sb $4, 0($4)
bgtz $2, TAG493
mthi $4
TAG493:
bltz $2, TAG494
mthi $2
sllv $1, $2, $2
lui $4, 5
TAG494:
sll $0, $0, 0
andi $2, $4, 6
sll $0, $0, 0
beq $2, $1, TAG495
TAG495:
sb $1, 0($1)
mtlo $1
lbu $4, 0($1)
beq $1, $1, TAG496
TAG496:
mtlo $4
sub $3, $4, $4
lh $4, 0($4)
multu $4, $3
TAG497:
lbu $1, 0($4)
lhu $3, 0($1)
lui $3, 8
beq $1, $4, TAG498
TAG498:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
ori $1, $1, 0
TAG499:
mthi $1
mthi $1
lui $2, 4
ori $3, $2, 5
TAG500:
lui $3, 2
bne $3, $3, TAG501
mfhi $4
multu $4, $4
TAG501:
lb $4, 0($4)
srlv $1, $4, $4
lbu $4, 0($1)
mthi $4
TAG502:
lui $2, 3
lui $1, 3
or $4, $2, $4
sll $0, $0, 0
TAG503:
lui $4, 14
sll $0, $0, 0
bne $4, $4, TAG504
sll $0, $0, 0
TAG504:
sll $0, $0, 0
mtlo $2
bne $2, $2, TAG505
div $2, $2
TAG505:
bne $2, $2, TAG506
nor $2, $2, $2
sll $0, $0, 0
slti $2, $2, 6
TAG506:
lui $1, 7
addiu $1, $1, 9
sll $0, $0, 0
mtlo $1
TAG507:
bgez $4, TAG508
sll $0, $0, 0
mflo $2
ori $3, $2, 4
TAG508:
sll $0, $0, 0
bltz $3, TAG509
sll $0, $0, 0
beq $3, $3, TAG509
TAG509:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG510
TAG510:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
beq $3, $3, TAG511
TAG511:
mtlo $3
sra $1, $3, 2
blez $3, TAG512
subu $4, $3, $3
TAG512:
sh $4, 0($4)
sh $4, 0($4)
bgez $4, TAG513
mtlo $4
TAG513:
xori $3, $4, 12
or $3, $4, $3
mflo $4
sh $4, 0($3)
TAG514:
blez $4, TAG515
lui $1, 2
mflo $1
bne $1, $1, TAG515
TAG515:
sll $0, $0, 0
mflo $1
lhu $2, 0($3)
mthi $2
TAG516:
mflo $2
bne $2, $2, TAG517
mthi $2
sll $3, $2, 15
TAG517:
mult $3, $3
mtlo $3
or $1, $3, $3
mthi $3
TAG518:
sb $1, 0($1)
mfhi $1
beq $1, $1, TAG519
and $1, $1, $1
TAG519:
blez $1, TAG520
lui $2, 12
bne $1, $1, TAG520
mthi $1
TAG520:
divu $2, $2
mthi $2
mfhi $1
mfhi $1
TAG521:
bgez $1, TAG522
lui $2, 10
blez $1, TAG522
addiu $3, $1, 8
TAG522:
lbu $4, 0($3)
mthi $4
lui $1, 7
multu $3, $3
TAG523:
lui $1, 10
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG524
TAG524:
sll $0, $0, 0
sll $0, $0, 0
add $1, $4, $1
sll $0, $0, 0
TAG525:
lhu $4, 0($4)
mflo $4
slti $3, $4, 3
andi $4, $4, 15
TAG526:
mflo $1
mfhi $4
mflo $4
mtlo $4
TAG527:
beq $4, $4, TAG528
sh $4, 0($4)
bgez $4, TAG528
sb $4, 0($4)
TAG528:
bne $4, $4, TAG529
lui $2, 13
or $2, $2, $4
mfhi $1
TAG529:
bgez $1, TAG530
and $3, $1, $1
multu $1, $3
mthi $1
TAG530:
srl $2, $3, 6
blez $3, TAG531
mthi $2
lw $3, 0($2)
TAG531:
bne $3, $3, TAG532
lui $3, 11
slt $2, $3, $3
mult $3, $3
TAG532:
mfhi $3
lbu $2, 0($3)
mtlo $3
mfhi $2
TAG533:
sltu $4, $2, $2
multu $4, $4
mthi $4
addiu $4, $2, 0
TAG534:
addiu $3, $4, 1
bne $3, $3, TAG535
mtlo $3
divu $3, $3
TAG535:
sb $3, 0($3)
lhu $4, 0($3)
lui $2, 7
sll $0, $0, 0
TAG536:
addiu $3, $2, 11
sll $0, $0, 0
addu $3, $3, $2
sll $0, $0, 0
TAG537:
sll $0, $0, 0
srav $4, $3, $3
bltz $3, TAG538
addiu $4, $3, 6
TAG538:
lui $4, 3
sll $4, $4, 2
sll $0, $0, 0
slti $2, $4, 0
TAG539:
bgtz $2, TAG540
andi $4, $2, 2
bne $4, $2, TAG540
and $4, $4, $4
TAG540:
mfhi $4
srlv $2, $4, $4
slt $1, $4, $4
and $2, $4, $4
TAG541:
lb $4, 0($2)
bgtz $2, TAG542
slti $4, $2, 0
sb $4, 0($4)
TAG542:
sw $4, 0($4)
lui $4, 15
sll $0, $0, 0
blez $4, TAG543
TAG543:
mtlo $4
sll $0, $0, 0
lui $1, 11
lui $4, 1
TAG544:
sll $0, $0, 0
lui $2, 13
beq $4, $2, TAG545
sll $0, $0, 0
TAG545:
bgtz $4, TAG546
mthi $4
beq $4, $4, TAG546
mflo $4
TAG546:
sll $0, $0, 0
bgtz $4, TAG547
addiu $4, $4, 4
lui $1, 3
TAG547:
sll $0, $0, 0
blez $1, TAG548
sll $0, $0, 0
mflo $3
TAG548:
mflo $4
mthi $3
lui $1, 13
srav $2, $3, $1
TAG549:
beq $2, $2, TAG550
mtlo $2
mthi $2
div $2, $2
TAG550:
mfhi $4
bne $4, $4, TAG551
sll $0, $0, 0
sll $0, $0, 0
TAG551:
sll $0, $0, 0
mthi $4
bne $4, $4, TAG552
mthi $4
TAG552:
bgtz $4, TAG553
srlv $3, $4, $4
bgtz $3, TAG553
sh $4, 0($4)
TAG553:
multu $3, $3
bne $3, $3, TAG554
sll $2, $3, 11
lui $1, 5
TAG554:
lui $2, 2
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG555:
beq $2, $2, TAG556
lui $3, 9
beq $2, $3, TAG556
lb $1, 0($3)
TAG556:
mtlo $1
sll $0, $0, 0
sltiu $2, $2, 3
lui $3, 12
TAG557:
lui $3, 14
beq $3, $3, TAG558
sll $0, $0, 0
bne $1, $3, TAG558
TAG558:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
bne $1, $3, TAG559
TAG559:
div $3, $3
beq $3, $3, TAG560
div $3, $3
lui $4, 1
TAG560:
mthi $4
bgtz $4, TAG561
xori $4, $4, 2
sw $4, 0($4)
TAG561:
lui $3, 14
lui $1, 12
bne $3, $4, TAG562
sll $0, $0, 0
TAG562:
mfhi $4
addu $1, $1, $4
lui $4, 15
bgez $1, TAG563
TAG563:
lui $4, 4
bltz $4, TAG564
sltu $2, $4, $4
mflo $4
TAG564:
mtlo $4
mflo $4
sb $4, 0($4)
beq $4, $4, TAG565
TAG565:
mfhi $2
mtlo $2
bgtz $4, TAG566
lui $3, 6
TAG566:
srlv $1, $3, $3
divu $1, $1
beq $3, $3, TAG567
sll $0, $0, 0
TAG567:
subu $1, $1, $1
bgez $1, TAG568
lui $3, 5
lhu $3, 0($1)
TAG568:
div $3, $3
mult $3, $3
lui $4, 4
mthi $4
TAG569:
subu $1, $4, $4
lh $3, 0($1)
mthi $4
sra $3, $4, 7
TAG570:
sll $0, $0, 0
addi $3, $1, 3
mtlo $3
sb $3, 0($3)
TAG571:
sll $1, $3, 4
sb $1, 0($3)
mtlo $3
srl $3, $3, 11
TAG572:
add $4, $3, $3
lui $3, 7
mfhi $2
ori $3, $3, 7
TAG573:
multu $3, $3
mfhi $3
or $3, $3, $3
multu $3, $3
TAG574:
lui $3, 6
sll $0, $0, 0
blez $3, TAG575
mthi $3
TAG575:
div $3, $3
bgtz $3, TAG576
lui $4, 10
ori $4, $3, 1
TAG576:
sll $0, $0, 0
mfhi $3
lw $2, 0($3)
lui $3, 4
TAG577:
sll $1, $3, 2
bne $1, $3, TAG578
mult $3, $3
beq $3, $1, TAG578
TAG578:
sltiu $1, $1, 12
slti $3, $1, 0
sh $1, 0($3)
sb $1, 0($1)
TAG579:
sltiu $3, $3, 0
lui $3, 5
sll $0, $0, 0
bgtz $3, TAG580
TAG580:
lui $1, 6
lui $3, 9
sll $0, $0, 0
mflo $2
TAG581:
lui $4, 5
lui $1, 10
mtlo $2
srav $2, $2, $4
TAG582:
mtlo $2
addu $4, $2, $2
beq $2, $2, TAG583
mult $2, $2
TAG583:
lui $1, 0
bltz $1, TAG584
xor $2, $4, $4
bgtz $1, TAG584
TAG584:
mtlo $2
lui $4, 15
sll $0, $0, 0
addi $1, $2, 3
TAG585:
subu $4, $1, $1
beq $4, $1, TAG586
lb $2, 0($1)
sll $2, $4, 6
TAG586:
sltu $1, $2, $2
xori $4, $1, 5
mtlo $4
lui $3, 7
TAG587:
sltu $3, $3, $3
beq $3, $3, TAG588
mtlo $3
lh $2, 0($3)
TAG588:
mthi $2
sltiu $1, $2, 14
bne $1, $2, TAG589
mflo $3
TAG589:
sh $3, 0($3)
addiu $4, $3, 15
lb $1, 0($3)
lh $3, 0($3)
TAG590:
bgtz $3, TAG591
ori $2, $3, 6
lbu $4, 0($3)
mthi $3
TAG591:
multu $4, $4
bgtz $4, TAG592
srav $4, $4, $4
sb $4, 0($4)
TAG592:
mflo $1
beq $1, $1, TAG593
multu $4, $1
mult $4, $1
TAG593:
sw $1, 0($1)
multu $1, $1
sh $1, 0($1)
lui $3, 3
TAG594:
sll $0, $0, 0
lui $4, 11
sll $0, $0, 0
xor $2, $4, $4
TAG595:
mtlo $2
lui $4, 14
sllv $4, $4, $2
divu $4, $4
TAG596:
multu $4, $4
mult $4, $4
sra $3, $4, 15
lw $1, 0($3)
TAG597:
addu $2, $1, $1
andi $2, $1, 6
sb $2, 0($1)
bne $1, $1, TAG598
TAG598:
sh $2, 0($2)
lhu $2, 0($2)
lhu $3, 0($2)
bgez $2, TAG599
TAG599:
lui $4, 12
mfhi $3
mflo $4
mtlo $3
TAG600:
lhu $3, 0($4)
sub $2, $4, $4
mtlo $3
lb $2, 0($2)
TAG601:
xori $4, $2, 15
sra $3, $4, 5
mfhi $4
mflo $4
TAG602:
mult $4, $4
lui $3, 1
mult $4, $4
mthi $4
TAG603:
beq $3, $3, TAG604
slt $2, $3, $3
lh $2, 0($2)
mthi $3
TAG604:
slti $1, $2, 6
sb $2, 0($2)
mtlo $2
lui $4, 10
TAG605:
mtlo $4
mflo $1
lui $4, 11
sll $0, $0, 0
TAG606:
mthi $1
xori $3, $1, 5
beq $1, $3, TAG607
addu $1, $1, $3
TAG607:
mthi $1
sll $0, $0, 0
xor $1, $1, $3
sll $0, $0, 0
TAG608:
sll $0, $0, 0
beq $1, $1, TAG609
mthi $1
bne $1, $1, TAG609
TAG609:
lui $3, 14
mtlo $3
srav $1, $1, $3
bgtz $1, TAG610
TAG610:
sll $3, $1, 12
srl $4, $3, 12
blez $1, TAG611
srlv $2, $4, $1
TAG611:
mtlo $2
lui $2, 6
sll $0, $0, 0
bgtz $2, TAG612
TAG612:
lui $2, 10
andi $3, $2, 0
bne $3, $3, TAG613
lui $3, 14
TAG613:
blez $3, TAG614
mfhi $1
lui $3, 13
sll $0, $0, 0
TAG614:
sltiu $3, $3, 1
lui $3, 4
multu $3, $3
addiu $3, $3, 13
TAG615:
sll $0, $0, 0
bltz $3, TAG616
mtlo $3
bltz $3, TAG616
TAG616:
mfhi $1
mfhi $2
blez $2, TAG617
addiu $2, $1, 14
TAG617:
sb $2, 0($2)
div $2, $2
sll $2, $2, 15
bne $2, $2, TAG618
TAG618:
sll $0, $0, 0
slti $2, $3, 8
sll $0, $0, 0
mthi $2
TAG619:
sll $0, $0, 0
ori $2, $3, 11
addiu $4, $1, 8
beq $4, $2, TAG620
TAG620:
sb $4, 0($4)
sw $4, 0($4)
beq $4, $4, TAG621
lhu $2, 0($4)
TAG621:
sh $2, 0($2)
mthi $2
nor $4, $2, $2
lui $2, 1
TAG622:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
lui $3, 9
TAG623:
mtlo $3
or $3, $3, $3
mtlo $3
mtlo $3
TAG624:
mtlo $3
lui $1, 11
blez $3, TAG625
or $2, $3, $1
TAG625:
bne $2, $2, TAG626
mthi $2
bltz $2, TAG626
mthi $2
TAG626:
andi $2, $2, 5
bne $2, $2, TAG627
lh $3, 0($2)
mult $3, $2
TAG627:
sh $3, 0($3)
ori $1, $3, 3
mult $1, $1
lb $2, 0($1)
TAG628:
mthi $2
mtlo $2
mult $2, $2
beq $2, $2, TAG629
TAG629:
sw $2, 0($2)
mtlo $2
lb $2, 0($2)
lbu $4, 0($2)
TAG630:
multu $4, $4
mflo $2
xor $2, $4, $4
mtlo $2
TAG631:
mflo $1
lhu $2, 0($2)
mfhi $4
srlv $4, $2, $1
TAG632:
sub $4, $4, $4
bne $4, $4, TAG633
srl $1, $4, 12
srl $3, $4, 4
TAG633:
sub $4, $3, $3
bne $4, $3, TAG634
srav $3, $3, $4
beq $3, $4, TAG634
TAG634:
mfhi $2
beq $3, $2, TAG635
lui $4, 14
lui $2, 11
TAG635:
and $4, $2, $2
multu $4, $4
slti $4, $2, 15
blez $2, TAG636
TAG636:
mfhi $1
bgez $4, TAG637
mult $1, $4
bne $4, $1, TAG637
TAG637:
lui $3, 14
sll $0, $0, 0
beq $4, $1, TAG638
lui $2, 2
TAG638:
blez $2, TAG639
mthi $2
sll $0, $0, 0
bne $2, $2, TAG639
TAG639:
sll $0, $0, 0
slt $1, $2, $3
sll $0, $0, 0
lb $2, 0($1)
TAG640:
mtlo $2
sw $2, 0($2)
slt $1, $2, $2
beq $2, $2, TAG641
TAG641:
mfhi $4
blez $4, TAG642
nor $3, $4, $4
mflo $4
TAG642:
lw $2, 0($4)
addu $2, $4, $4
addu $2, $2, $4
addi $3, $4, 9
TAG643:
sllv $2, $3, $3
lui $4, 8
lui $2, 7
andi $2, $3, 5
TAG644:
beq $2, $2, TAG645
mfhi $4
beq $2, $2, TAG645
mthi $2
TAG645:
bgez $4, TAG646
sltu $4, $4, $4
srlv $4, $4, $4
divu $4, $4
TAG646:
srl $1, $4, 9
mflo $4
bne $1, $4, TAG647
or $2, $1, $1
TAG647:
sh $2, 0($2)
addiu $2, $2, 1
lui $2, 5
bne $2, $2, TAG648
TAG648:
and $3, $2, $2
bltz $2, TAG649
slt $4, $3, $2
subu $2, $3, $2
TAG649:
sh $2, 0($2)
sb $2, 0($2)
blez $2, TAG650
sw $2, 0($2)
TAG650:
bgez $2, TAG651
mfhi $3
sh $3, 0($3)
sb $2, 0($2)
TAG651:
sll $0, $0, 0
mult $3, $3
mflo $2
multu $3, $2
TAG652:
bltz $2, TAG653
mfhi $1
bgtz $2, TAG653
lui $2, 7
TAG653:
multu $2, $2
slti $1, $2, 7
blez $1, TAG654
sb $2, 0($1)
TAG654:
beq $1, $1, TAG655
sb $1, 0($1)
sltu $3, $1, $1
mfhi $1
TAG655:
mthi $1
blez $1, TAG656
multu $1, $1
bgtz $1, TAG656
TAG656:
mthi $1
sw $1, 0($1)
blez $1, TAG657
lhu $4, 0($1)
TAG657:
subu $2, $4, $4
mult $4, $4
lui $1, 15
subu $4, $2, $1
TAG658:
sll $0, $0, 0
or $2, $4, $4
srlv $1, $2, $4
blez $1, TAG659
TAG659:
multu $1, $1
sll $0, $0, 0
div $4, $4
mfhi $3
TAG660:
multu $3, $3
bne $3, $3, TAG661
mult $3, $3
lui $3, 15
TAG661:
mtlo $3
bne $3, $3, TAG662
mfhi $1
mflo $4
TAG662:
bne $4, $4, TAG663
mfhi $2
sb $2, 0($2)
bne $2, $2, TAG663
TAG663:
mtlo $2
blez $2, TAG664
sb $2, 0($2)
mfhi $3
TAG664:
ori $1, $3, 7
beq $3, $3, TAG665
sll $0, $0, 0
and $2, $3, $4
TAG665:
bgtz $2, TAG666
mult $2, $2
mthi $2
sltiu $2, $2, 9
TAG666:
sb $2, 0($2)
divu $2, $2
or $3, $2, $2
bne $3, $3, TAG667
TAG667:
sb $3, 0($3)
multu $3, $3
mtlo $3
or $3, $3, $3
TAG668:
beq $3, $3, TAG669
mfhi $1
mfhi $3
sh $3, 0($3)
TAG669:
mthi $3
subu $4, $3, $3
sll $2, $3, 2
mthi $4
TAG670:
xori $2, $2, 8
xori $3, $2, 13
lui $3, 11
mtlo $3
TAG671:
mtlo $3
sll $2, $3, 14
mflo $1
mult $1, $2
TAG672:
beq $1, $1, TAG673
lui $3, 15
lhu $2, 0($3)
lui $2, 9
TAG673:
sll $0, $0, 0
bgtz $2, TAG674
slti $4, $2, 9
bltz $4, TAG674
TAG674:
lb $2, 0($4)
lbu $2, 0($4)
bne $4, $4, TAG675
mult $4, $2
TAG675:
lbu $2, 0($2)
sb $2, 0($2)
mflo $2
bne $2, $2, TAG676
TAG676:
mthi $2
lbu $3, 0($2)
mfhi $3
mflo $3
TAG677:
mtlo $3
bne $3, $3, TAG678
srav $3, $3, $3
multu $3, $3
TAG678:
mfhi $2
lui $4, 8
srl $1, $4, 12
lui $2, 8
TAG679:
lui $2, 8
mult $2, $2
sltiu $4, $2, 2
bltz $4, TAG680
TAG680:
and $2, $4, $4
beq $4, $2, TAG681
lui $3, 3
sb $4, 0($3)
TAG681:
div $3, $3
mflo $2
sll $0, $0, 0
sra $1, $2, 2
TAG682:
mult $1, $1
lui $1, 8
bne $1, $1, TAG683
and $2, $1, $1
TAG683:
beq $2, $2, TAG684
sll $0, $0, 0
sh $2, 0($2)
lhu $4, 0($2)
TAG684:
bne $4, $4, TAG685
xori $4, $4, 2
blez $4, TAG685
lhu $3, 0($4)
TAG685:
lw $3, 0($3)
mflo $4
mflo $3
bgez $3, TAG686
TAG686:
mult $3, $3
mult $3, $3
multu $3, $3
lui $4, 6
TAG687:
mtlo $4
mflo $2
sllv $3, $4, $2
mflo $3
TAG688:
mtlo $3
mflo $3
bne $3, $3, TAG689
lui $1, 7
TAG689:
lui $4, 6
srlv $1, $4, $1
blez $1, TAG690
mtlo $1
TAG690:
xor $3, $1, $1
sll $0, $0, 0
or $1, $3, $3
beq $3, $3, TAG691
TAG691:
sub $4, $1, $1
lui $1, 1
bltz $4, TAG692
mfhi $2
TAG692:
srav $3, $2, $2
sra $2, $2, 6
sh $3, 0($2)
srlv $2, $2, $2
TAG693:
srl $3, $2, 3
mfhi $1
mthi $3
mtlo $3
TAG694:
bgez $1, TAG695
lw $1, 0($1)
mfhi $4
xor $1, $4, $1
TAG695:
sh $1, 0($1)
mthi $1
xor $3, $1, $1
sra $3, $1, 8
TAG696:
andi $3, $3, 14
mflo $2
sltiu $1, $3, 9
sltiu $4, $3, 3
TAG697:
lui $1, 14
mthi $4
addu $4, $1, $1
beq $4, $4, TAG698
TAG698:
mtlo $4
beq $4, $4, TAG699
lui $3, 2
mfhi $2
TAG699:
or $2, $2, $2
sw $2, 0($2)
beq $2, $2, TAG700
lw $3, 0($2)
TAG700:
slti $1, $3, 2
lui $3, 2
beq $1, $3, TAG701
sll $0, $0, 0
TAG701:
xori $3, $1, 3
mthi $3
mflo $4
lui $4, 12
TAG702:
multu $4, $4
lui $2, 6
sll $0, $0, 0
mult $4, $2
TAG703:
divu $2, $2
multu $2, $2
sll $0, $0, 0
mflo $1
TAG704:
lui $3, 6
lui $2, 6
or $2, $1, $1
lw $3, 0($2)
TAG705:
mthi $3
mult $3, $3
bne $3, $3, TAG706
multu $3, $3
TAG706:
mtlo $3
sub $2, $3, $3
sh $3, 0($3)
mthi $3
TAG707:
beq $2, $2, TAG708
addi $4, $2, 4
beq $4, $4, TAG708
lui $1, 13
TAG708:
mflo $4
and $4, $1, $4
beq $4, $4, TAG709
mtlo $4
TAG709:
lh $2, 0($4)
sllv $3, $4, $4
xori $1, $3, 15
sw $1, 0($2)
TAG710:
bne $1, $1, TAG711
addiu $2, $1, 5
sw $1, 0($2)
slt $3, $1, $1
TAG711:
sll $2, $3, 8
sh $3, 0($2)
mtlo $3
mfhi $1
TAG712:
mfhi $1
sh $1, 0($1)
lui $4, 10
sw $1, 0($1)
TAG713:
xor $2, $4, $4
mflo $2
lui $2, 7
multu $2, $4
TAG714:
mthi $2
mtlo $2
mtlo $2
mtlo $2
TAG715:
addiu $2, $2, 2
sll $0, $0, 0
sltiu $1, $2, 10
lui $4, 9
TAG716:
mult $4, $4
mthi $4
srav $1, $4, $4
mult $1, $1
TAG717:
lui $2, 12
sll $0, $0, 0
mfhi $3
mflo $3
TAG718:
bgtz $3, TAG719
mfhi $4
beq $3, $3, TAG719
multu $4, $3
TAG719:
sb $4, 0($4)
bltz $4, TAG720
mult $4, $4
blez $4, TAG720
TAG720:
nor $1, $4, $4
lui $1, 4
mtlo $1
addu $1, $1, $1
TAG721:
beq $1, $1, TAG722
addiu $3, $1, 2
mtlo $3
sll $1, $3, 4
TAG722:
bne $1, $1, TAG723
srlv $2, $1, $1
multu $2, $1
lui $3, 1
TAG723:
lui $1, 14
bgez $3, TAG724
srav $2, $1, $3
lui $2, 9
TAG724:
mult $2, $2
lui $1, 3
beq $1, $1, TAG725
srl $1, $2, 2
TAG725:
mtlo $1
lui $4, 3
multu $4, $4
mfhi $3
TAG726:
mthi $3
lbu $4, 0($3)
sllv $2, $4, $4
lh $3, 0($2)
TAG727:
mfhi $2
mult $3, $3
lui $3, 10
addiu $2, $2, 4
TAG728:
and $3, $2, $2
lb $3, 0($2)
sb $2, 0($2)
addiu $4, $2, 12
TAG729:
mflo $1
mthi $1
mtlo $4
div $4, $4
TAG730:
lw $2, 0($1)
beq $1, $2, TAG731
mult $1, $2
mfhi $2
TAG731:
lhu $1, 0($2)
multu $1, $2
bltz $1, TAG732
nor $3, $2, $1
TAG732:
mtlo $3
lhu $4, 1($3)
multu $4, $3
mthi $3
TAG733:
mult $4, $4
xori $1, $4, 15
lui $1, 12
xori $1, $1, 6
TAG734:
sll $0, $0, 0
sll $0, $0, 0
div $1, $3
blez $3, TAG735
TAG735:
mfhi $2
mthi $2
bne $2, $2, TAG736
mflo $4
TAG736:
mthi $4
beq $4, $4, TAG737
mfhi $1
mtlo $1
TAG737:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG738
TAG738:
div $1, $1
lui $4, 7
mfhi $4
or $1, $1, $4
TAG739:
xor $4, $1, $1
sll $1, $1, 10
ori $2, $1, 1
slti $4, $2, 8
TAG740:
multu $4, $4
lb $2, 0($4)
mthi $2
blez $4, TAG741
TAG741:
multu $2, $2
sh $2, 0($2)
mtlo $2
nor $1, $2, $2
TAG742:
sll $0, $0, 0
bne $1, $4, TAG743
addiu $2, $4, 10
mthi $1
TAG743:
mflo $1
lb $1, 0($1)
mult $1, $1
lbu $4, 0($2)
TAG744:
bgtz $4, TAG745
sb $4, 0($4)
lui $3, 13
mult $3, $3
TAG745:
multu $3, $3
nor $2, $3, $3
mfhi $1
lui $2, 1
TAG746:
bgtz $2, TAG747
xori $3, $2, 9
mthi $2
bgez $3, TAG747
TAG747:
sll $0, $0, 0
blez $3, TAG748
lh $1, 0($4)
bgez $1, TAG748
TAG748:
xori $2, $1, 0
lh $4, 0($1)
and $3, $2, $1
multu $4, $3
TAG749:
addu $2, $3, $3
add $4, $3, $3
mflo $2
lui $4, 4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop