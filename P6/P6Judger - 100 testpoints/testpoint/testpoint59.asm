ori $1, $0, 8
ori $2, $0, 14
ori $3, $0, 11
ori $4, $0, 10
sw $2, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $1, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $1, 92($0)
sw $2, 96($0)
sw $1, 100($0)
sw $3, 104($0)
sw $3, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $3, 124($0)
ori $3, $2, 14
sltiu $4, $3, 3
addu $2, $2, $2
lui $4, 6
TAG1:
blez $4, TAG2
lui $4, 7
addu $2, $4, $4
subu $3, $2, $2
TAG2:
mthi $3
lhu $1, 0($3)
mult $1, $3
multu $3, $1
TAG3:
mfhi $1
lui $4, 8
multu $4, $1
mtlo $1
TAG4:
sll $0, $0, 0
sll $0, $0, 0
and $2, $2, $2
bne $4, $2, TAG5
TAG5:
mfhi $1
blez $1, TAG6
lui $3, 13
mthi $3
TAG6:
bgez $3, TAG7
sra $1, $3, 13
lbu $2, 0($3)
sw $1, 0($2)
TAG7:
blez $2, TAG8
subu $2, $2, $2
sll $4, $2, 5
addi $2, $2, 9
TAG8:
lui $2, 14
xori $2, $2, 1
beq $2, $2, TAG9
andi $4, $2, 6
TAG9:
mtlo $4
lh $3, 0($4)
sh $3, 0($3)
mflo $1
TAG10:
mthi $1
mthi $1
bne $1, $1, TAG11
mult $1, $1
TAG11:
xori $4, $1, 0
bne $4, $1, TAG12
mfhi $3
mult $1, $1
TAG12:
mflo $2
sw $2, 0($3)
lhu $3, 0($3)
or $4, $3, $3
TAG13:
lbu $4, 0($4)
bgez $4, TAG14
lbu $1, 0($4)
mflo $2
TAG14:
mult $2, $2
bgez $2, TAG15
srl $3, $2, 9
div $3, $2
TAG15:
sw $3, 0($3)
lui $2, 7
srav $3, $2, $2
blez $2, TAG16
TAG16:
sll $0, $0, 0
sll $0, $0, 0
andi $3, $2, 14
mflo $3
TAG17:
slt $2, $3, $3
mthi $2
lhu $3, 0($2)
sll $4, $2, 7
TAG18:
mtlo $4
beq $4, $4, TAG19
lb $4, 0($4)
div $4, $4
TAG19:
mtlo $4
srlv $3, $4, $4
sllv $4, $4, $3
sb $3, 0($4)
TAG20:
sw $4, 0($4)
lh $3, 0($4)
lui $2, 7
or $4, $4, $2
TAG21:
mfhi $1
sra $2, $1, 15
mflo $4
lhu $1, 0($1)
TAG22:
bgez $1, TAG23
mflo $1
mfhi $3
mflo $3
TAG23:
sltiu $3, $3, 4
bltz $3, TAG24
lui $2, 12
addiu $4, $2, 10
TAG24:
bgez $4, TAG25
slti $4, $4, 7
addu $3, $4, $4
mthi $4
TAG25:
multu $3, $3
lb $1, 0($3)
sw $1, 0($1)
mfhi $4
TAG26:
lw $3, 0($4)
sub $3, $3, $3
mflo $3
beq $3, $3, TAG27
TAG27:
mult $3, $3
mfhi $4
bgtz $4, TAG28
mthi $4
TAG28:
lui $4, 5
mult $4, $4
mfhi $4
nor $2, $4, $4
TAG29:
lui $4, 13
mflo $4
srl $4, $4, 5
bgez $4, TAG30
TAG30:
lhu $2, 0($4)
lui $2, 12
div $2, $2
mtlo $4
TAG31:
lui $1, 3
bne $1, $1, TAG32
sll $0, $0, 0
mtlo $3
TAG32:
slti $2, $3, 0
subu $1, $2, $3
lbu $3, 0($2)
lbu $3, 1($1)
TAG33:
lbu $1, 0($3)
mthi $1
bne $1, $1, TAG34
lui $1, 2
TAG34:
sll $0, $0, 0
slti $1, $1, 7
xor $1, $1, $1
lw $1, 0($1)
TAG35:
bne $1, $1, TAG36
slt $1, $1, $1
lui $1, 5
mult $1, $1
TAG36:
sll $0, $0, 0
lui $2, 11
bne $2, $2, TAG37
mflo $1
TAG37:
beq $1, $1, TAG38
andi $1, $1, 7
and $4, $1, $1
lui $1, 0
TAG38:
mflo $3
beq $3, $1, TAG39
xori $4, $1, 12
srl $4, $3, 5
TAG39:
mfhi $3
ori $1, $3, 6
mthi $1
sb $3, 0($3)
TAG40:
lbu $3, 0($1)
bne $1, $1, TAG41
lb $2, 0($3)
and $3, $2, $2
TAG41:
mtlo $3
bne $3, $3, TAG42
lui $2, 7
multu $2, $2
TAG42:
lui $2, 5
mflo $4
add $3, $4, $4
mflo $3
TAG43:
and $1, $3, $3
mflo $2
bne $1, $3, TAG44
addi $3, $2, 11
TAG44:
div $3, $3
sltiu $4, $3, 12
sltiu $4, $3, 11
beq $4, $4, TAG45
TAG45:
lui $3, 4
mthi $4
sll $0, $0, 0
blez $4, TAG46
TAG46:
slti $2, $4, 4
mflo $2
lui $3, 6
sll $0, $0, 0
TAG47:
multu $3, $3
mfhi $4
bgez $3, TAG48
sltu $3, $4, $3
TAG48:
mflo $3
mflo $1
lui $1, 10
lui $3, 8
TAG49:
blez $3, TAG50
sll $0, $0, 0
andi $3, $3, 4
addiu $3, $3, 2
TAG50:
bne $3, $3, TAG51
lhu $1, 0($3)
bne $1, $3, TAG51
mthi $1
TAG51:
mthi $1
sllv $4, $1, $1
mfhi $4
multu $4, $1
TAG52:
lui $1, 10
bne $4, $4, TAG53
mthi $4
beq $1, $4, TAG53
TAG53:
lui $2, 6
lui $4, 5
addu $2, $1, $4
beq $4, $1, TAG54
TAG54:
sll $0, $0, 0
beq $2, $2, TAG55
mtlo $2
div $2, $2
TAG55:
bne $2, $2, TAG56
srl $2, $2, 10
lui $1, 6
sra $4, $1, 9
TAG56:
sh $4, -768($4)
bne $4, $4, TAG57
sb $4, -768($4)
bgtz $4, TAG57
TAG57:
ori $3, $4, 4
sb $3, -772($3)
mfhi $3
mflo $1
TAG58:
sll $3, $1, 3
addiu $4, $1, 2
sll $0, $0, 0
bgtz $3, TAG59
TAG59:
slt $3, $3, $3
bne $3, $3, TAG60
slti $4, $3, 5
beq $4, $3, TAG60
TAG60:
mflo $3
mflo $3
sll $0, $0, 0
divu $3, $3
TAG61:
bgez $3, TAG62
mthi $3
beq $3, $3, TAG62
sh $3, 0($3)
TAG62:
mfhi $4
mthi $4
and $1, $4, $3
mtlo $1
TAG63:
bne $1, $1, TAG64
mflo $3
addiu $1, $3, 11
mflo $4
TAG64:
xor $4, $4, $4
bgez $4, TAG65
mtlo $4
ori $3, $4, 12
TAG65:
sll $0, $0, 0
lhu $2, 0($4)
sll $0, $0, 0
srl $3, $4, 12
TAG66:
mult $3, $3
sltiu $3, $3, 9
divu $3, $3
addu $1, $3, $3
TAG67:
addu $4, $1, $1
multu $4, $1
sw $4, 0($4)
bgez $4, TAG68
TAG68:
mthi $4
lh $1, 0($4)
or $4, $4, $1
srav $1, $1, $1
TAG69:
addiu $4, $1, 4
bgez $4, TAG70
sll $3, $4, 5
srav $2, $4, $4
TAG70:
sll $0, $0, 0
beq $2, $2, TAG71
addiu $4, $2, 6
sh $4, 0($4)
TAG71:
div $4, $4
mflo $4
lbu $1, 0($4)
sltiu $1, $1, 3
TAG72:
lb $3, 0($1)
lui $2, 4
multu $2, $1
multu $1, $2
TAG73:
multu $2, $2
slt $4, $2, $2
div $4, $2
mfhi $2
TAG74:
lui $4, 9
bne $4, $4, TAG75
mult $2, $4
lw $3, 0($2)
TAG75:
sh $3, -772($3)
bgez $3, TAG76
mthi $3
bne $3, $3, TAG76
TAG76:
lui $1, 12
divu $1, $3
bne $1, $3, TAG77
mthi $1
TAG77:
beq $1, $1, TAG78
mfhi $2
sh $1, 0($1)
sh $2, 0($1)
TAG78:
beq $2, $2, TAG79
sll $0, $0, 0
beq $2, $2, TAG79
lw $2, 0($2)
TAG79:
mthi $2
beq $2, $2, TAG80
sll $0, $0, 0
lui $2, 12
TAG80:
mthi $2
lui $3, 5
sll $0, $0, 0
divu $3, $2
TAG81:
mfhi $2
bne $2, $2, TAG82
sltu $4, $2, $2
mult $2, $2
TAG82:
addiu $2, $4, 7
multu $2, $4
mthi $2
mfhi $1
TAG83:
mult $1, $1
divu $1, $1
multu $1, $1
lb $2, 0($1)
TAG84:
slt $2, $2, $2
lb $4, 0($2)
mthi $2
lbu $2, 0($4)
TAG85:
mfhi $2
lui $3, 9
or $3, $2, $3
mult $3, $2
TAG86:
sll $0, $0, 0
bne $3, $3, TAG87
slti $2, $3, 1
slt $4, $3, $3
TAG87:
mult $4, $4
sw $4, 0($4)
mtlo $4
mflo $2
TAG88:
mflo $4
sll $1, $4, 5
sw $4, 0($1)
bltz $2, TAG89
TAG89:
slti $1, $1, 2
lb $2, 0($1)
mfhi $2
bltz $1, TAG90
TAG90:
sh $2, 0($2)
srl $3, $2, 11
subu $4, $2, $3
lui $4, 9
TAG91:
sltiu $1, $4, 13
lui $3, 0
and $3, $1, $1
sh $1, 0($3)
TAG92:
sw $3, 0($3)
mtlo $3
lui $4, 7
sllv $2, $4, $3
TAG93:
srl $1, $2, 14
mtlo $2
sll $0, $0, 0
mthi $1
TAG94:
nor $2, $1, $1
xori $3, $2, 8
sw $2, 21($3)
sh $3, 29($2)
TAG95:
mtlo $3
lb $3, 21($3)
div $3, $3
srav $1, $3, $3
TAG96:
bne $1, $1, TAG97
sra $1, $1, 7
mflo $2
mtlo $1
TAG97:
lui $4, 15
lui $4, 7
srl $1, $2, 13
bne $4, $4, TAG98
TAG98:
mflo $2
xori $2, $1, 11
mfhi $2
nor $1, $1, $2
TAG99:
xor $2, $1, $1
sra $3, $2, 12
lui $3, 9
sw $1, 1($1)
TAG100:
sll $0, $0, 0
blez $3, TAG101
mult $3, $3
beq $3, $3, TAG101
TAG101:
mflo $2
mflo $3
mult $2, $2
mtlo $2
TAG102:
bgtz $3, TAG103
mthi $3
mthi $3
mult $3, $3
TAG103:
mtlo $3
mthi $3
addi $3, $3, 15
divu $3, $3
TAG104:
addu $2, $3, $3
multu $3, $3
lui $2, 3
bltz $2, TAG105
TAG105:
sll $0, $0, 0
mthi $2
xori $1, $2, 11
mthi $2
TAG106:
multu $1, $1
blez $1, TAG107
lui $1, 9
beq $1, $1, TAG107
TAG107:
multu $1, $1
mtlo $1
divu $1, $1
beq $1, $1, TAG108
TAG108:
divu $1, $1
bgez $1, TAG109
addu $3, $1, $1
multu $3, $3
TAG109:
bgez $3, TAG110
sll $0, $0, 0
sltu $2, $3, $3
mtlo $2
TAG110:
mtlo $2
div $2, $2
beq $2, $2, TAG111
sll $0, $0, 0
TAG111:
blez $2, TAG112
subu $1, $2, $2
sll $0, $0, 0
lui $4, 7
TAG112:
multu $4, $4
mthi $4
sll $0, $0, 0
mthi $4
TAG113:
lbu $1, 0($1)
mult $1, $1
mthi $1
lw $2, -255($1)
TAG114:
and $3, $2, $2
lui $4, 14
sll $0, $0, 0
mult $4, $2
TAG115:
mtlo $4
lui $2, 5
sll $0, $0, 0
mthi $4
TAG116:
lui $1, 9
beq $2, $2, TAG117
lui $1, 6
bgez $1, TAG117
TAG117:
addu $4, $1, $1
bne $4, $4, TAG118
lui $1, 2
sll $0, $0, 0
TAG118:
sll $1, $1, 9
lui $2, 1
sll $0, $0, 0
lui $3, 8
TAG119:
beq $3, $3, TAG120
sll $0, $0, 0
srav $2, $4, $3
lui $3, 6
TAG120:
sll $0, $0, 0
beq $3, $3, TAG121
mtlo $3
mflo $2
TAG121:
mult $2, $2
sllv $2, $2, $2
sll $0, $0, 0
mult $2, $2
TAG122:
mflo $3
mfhi $1
addiu $4, $1, 8
bltz $1, TAG123
TAG123:
ori $4, $4, 10
blez $4, TAG124
mtlo $4
slti $1, $4, 7
TAG124:
multu $1, $1
sb $1, 0($1)
slti $3, $1, 6
addiu $1, $3, 4
TAG125:
mflo $4
lui $1, 3
subu $1, $1, $4
mult $4, $1
TAG126:
bltz $1, TAG127
mult $1, $1
addiu $3, $1, 10
sll $0, $0, 0
TAG127:
bne $3, $3, TAG128
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG128:
bltz $3, TAG129
mflo $2
sll $0, $0, 0
bgez $2, TAG129
TAG129:
sh $2, 0($2)
sh $2, 0($2)
lhu $2, 0($2)
bltz $2, TAG130
TAG130:
mtlo $2
andi $2, $2, 13
mflo $1
bltz $2, TAG131
TAG131:
lh $1, 0($1)
mult $1, $1
mfhi $2
lh $3, 0($2)
TAG132:
lh $4, 0($3)
lw $4, 0($3)
lui $2, 8
lui $3, 4
TAG133:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
addu $4, $2, $3
TAG134:
sll $0, $0, 0
beq $4, $4, TAG135
mthi $4
multu $4, $4
TAG135:
bltz $4, TAG136
sll $0, $0, 0
blez $4, TAG136
lui $4, 4
TAG136:
beq $4, $4, TAG137
mtlo $4
mthi $4
bgtz $4, TAG137
TAG137:
mflo $1
sll $0, $0, 0
div $1, $4
or $2, $4, $4
TAG138:
bltz $2, TAG139
lui $3, 1
mflo $4
bgtz $2, TAG139
TAG139:
addu $4, $4, $4
srl $2, $4, 7
lbu $4, 0($4)
subu $4, $4, $4
TAG140:
bgtz $4, TAG141
mthi $4
mfhi $1
lb $2, 0($4)
TAG141:
lbu $3, 0($2)
mthi $3
lh $2, 0($3)
lui $1, 5
TAG142:
sll $0, $0, 0
addu $3, $1, $1
blez $4, TAG143
slti $1, $3, 15
TAG143:
lw $4, 0($1)
mfhi $2
lui $2, 6
xor $3, $2, $4
TAG144:
mfhi $2
lui $1, 1
mflo $4
mfhi $2
TAG145:
lh $1, 0($2)
mfhi $3
sllv $2, $2, $2
beq $3, $2, TAG146
TAG146:
lui $1, 11
mthi $1
srav $3, $2, $2
sh $1, 0($2)
TAG147:
subu $1, $3, $3
lui $4, 14
sll $4, $1, 1
sw $1, 0($4)
TAG148:
bgtz $4, TAG149
sb $4, 0($4)
mtlo $4
lbu $4, 0($4)
TAG149:
sb $4, 0($4)
mflo $3
sra $1, $4, 1
sb $3, 0($3)
TAG150:
lui $4, 9
sra $2, $1, 2
bltz $2, TAG151
divu $1, $4
TAG151:
lh $4, 0($2)
mthi $4
multu $2, $2
xori $3, $4, 5
TAG152:
bgez $3, TAG153
mfhi $4
bne $4, $3, TAG153
lw $1, 0($4)
TAG153:
and $4, $1, $1
beq $1, $1, TAG154
mult $4, $1
mtlo $4
TAG154:
mult $4, $4
lb $4, 0($4)
mfhi $3
multu $4, $4
TAG155:
mfhi $1
mtlo $1
mult $1, $3
lui $4, 3
TAG156:
bne $4, $4, TAG157
mflo $1
lui $4, 1
sll $1, $4, 13
TAG157:
sll $0, $0, 0
nor $4, $1, $1
mflo $1
sh $4, 0($1)
TAG158:
lb $1, 0($1)
sllv $4, $1, $1
mflo $3
sltiu $4, $4, 7
TAG159:
sw $4, 0($4)
bne $4, $4, TAG160
srl $1, $4, 6
mthi $1
TAG160:
lui $4, 1
or $4, $1, $4
sll $0, $0, 0
lui $2, 4
TAG161:
mfhi $4
bgtz $2, TAG162
addiu $2, $2, 8
divu $4, $2
TAG162:
lui $3, 6
lui $3, 13
mthi $2
divu $2, $3
TAG163:
sll $0, $0, 0
sll $2, $3, 8
sllv $4, $2, $2
nor $4, $2, $2
TAG164:
bltz $4, TAG165
mfhi $3
beq $4, $3, TAG165
nor $4, $4, $4
TAG165:
mflo $2
ori $2, $4, 2
sll $0, $0, 0
sll $0, $0, 0
TAG166:
lui $3, 5
multu $3, $3
subu $3, $2, $3
mfhi $3
TAG167:
mtlo $3
sb $3, 0($3)
lui $3, 15
nor $3, $3, $3
TAG168:
bgtz $3, TAG169
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG169:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG170:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG171:
mthi $2
beq $2, $2, TAG172
sll $0, $0, 0
subu $2, $3, $3
TAG172:
beq $2, $2, TAG173
sll $0, $0, 0
bgtz $2, TAG173
sltu $1, $2, $2
TAG173:
sll $4, $1, 1
beq $1, $4, TAG174
multu $4, $4
sllv $2, $1, $1
TAG174:
bgtz $2, TAG175
lui $3, 0
bgez $3, TAG175
mult $2, $3
TAG175:
mthi $3
mtlo $3
xori $4, $3, 15
sltiu $1, $4, 9
TAG176:
sw $1, 0($1)
bltz $1, TAG177
sh $1, 0($1)
lui $4, 4
TAG177:
addiu $2, $4, 1
lui $3, 0
bne $4, $4, TAG178
sll $0, $0, 0
TAG178:
mult $3, $3
lhu $1, 0($3)
lui $4, 14
mtlo $4
TAG179:
sltu $2, $4, $4
bgez $2, TAG180
sll $0, $0, 0
multu $4, $4
TAG180:
bgez $1, TAG181
sb $1, 0($1)
blez $1, TAG181
lb $3, 0($1)
TAG181:
mtlo $3
lui $4, 0
bgez $4, TAG182
mthi $3
TAG182:
bgez $4, TAG183
mfhi $1
mtlo $1
lui $1, 9
TAG183:
multu $1, $1
bgtz $1, TAG184
sb $1, 0($1)
bne $1, $1, TAG184
TAG184:
sb $1, 0($1)
lw $4, 0($1)
lui $4, 9
mfhi $4
TAG185:
mult $4, $4
srav $2, $4, $4
mfhi $4
lui $3, 13
TAG186:
mfhi $2
xori $1, $2, 2
lui $2, 3
subu $4, $2, $2
TAG187:
lui $1, 13
mthi $4
div $1, $1
blez $1, TAG188
TAG188:
mflo $1
lbu $4, 0($1)
multu $1, $4
sb $4, 0($1)
TAG189:
sw $4, 0($4)
sb $4, 0($4)
mfhi $1
bgez $4, TAG190
TAG190:
mthi $1
mflo $3
mfhi $2
lui $2, 8
TAG191:
sll $0, $0, 0
xor $1, $2, $2
sltiu $2, $1, 0
lbu $1, 0($2)
TAG192:
blez $1, TAG193
mtlo $1
bne $1, $1, TAG193
srav $4, $1, $1
TAG193:
lw $3, 0($4)
mthi $3
lw $3, 0($3)
sh $3, 0($3)
TAG194:
mflo $2
bne $2, $2, TAG195
mult $3, $3
mflo $3
TAG195:
bgez $3, TAG196
xori $2, $3, 8
lui $2, 13
mthi $2
TAG196:
lbu $2, 0($2)
lui $1, 9
xori $3, $1, 13
andi $2, $1, 11
TAG197:
mult $2, $2
mthi $2
lhu $1, 0($2)
bne $1, $1, TAG198
TAG198:
sltu $2, $1, $1
sb $2, 0($1)
bgtz $2, TAG199
mtlo $2
TAG199:
mfhi $4
lbu $1, 0($4)
addu $2, $2, $2
multu $4, $4
TAG200:
mflo $4
xori $2, $4, 10
lhu $4, 0($2)
mfhi $3
TAG201:
mfhi $1
mtlo $3
bne $3, $3, TAG202
multu $1, $3
TAG202:
sllv $3, $1, $1
multu $3, $3
sw $1, 0($1)
bne $1, $3, TAG203
TAG203:
lui $1, 5
bltz $1, TAG204
lui $1, 4
blez $3, TAG204
TAG204:
andi $3, $1, 0
sltiu $2, $1, 9
sltu $4, $2, $3
blez $3, TAG205
TAG205:
sh $4, 0($4)
lui $2, 6
bgez $2, TAG206
lb $1, 0($4)
TAG206:
xor $2, $1, $1
lui $3, 2
addu $3, $1, $2
bne $3, $1, TAG207
TAG207:
multu $3, $3
addi $3, $3, 6
srlv $3, $3, $3
lui $4, 15
TAG208:
beq $4, $4, TAG209
mthi $4
mflo $3
subu $1, $4, $4
TAG209:
add $4, $1, $1
mflo $4
sb $4, 0($4)
multu $1, $1
TAG210:
mfhi $4
mfhi $2
bltz $2, TAG211
lui $4, 1
TAG211:
sll $0, $0, 0
blez $4, TAG212
div $4, $4
mthi $4
TAG212:
srlv $1, $4, $4
sll $0, $0, 0
xor $3, $4, $4
sll $0, $0, 0
TAG213:
bne $3, $3, TAG214
or $1, $3, $3
sw $3, 0($3)
bgez $1, TAG214
TAG214:
mfhi $2
mflo $4
bgez $2, TAG215
addi $4, $1, 3
TAG215:
div $4, $4
blez $4, TAG216
sb $4, 0($4)
bgez $4, TAG216
TAG216:
multu $4, $4
sb $4, 0($4)
sb $4, 0($4)
sb $4, 0($4)
TAG217:
div $4, $4
sb $4, 0($4)
bne $4, $4, TAG218
subu $3, $4, $4
TAG218:
blez $3, TAG219
mult $3, $3
div $3, $3
div $3, $3
TAG219:
lui $2, 4
slti $4, $2, 11
srlv $4, $3, $3
mflo $2
TAG220:
addi $1, $2, 5
sw $1, 0($2)
sltu $1, $1, $1
mfhi $2
TAG221:
sh $2, 0($2)
sltiu $3, $2, 11
lui $1, 10
sltiu $4, $2, 14
TAG222:
sra $3, $4, 6
lb $1, 0($4)
sb $4, 0($4)
slt $2, $4, $1
TAG223:
bgtz $2, TAG224
srlv $1, $2, $2
mflo $2
mfhi $4
TAG224:
mult $4, $4
beq $4, $4, TAG225
mfhi $1
mfhi $2
TAG225:
mthi $2
mtlo $2
beq $2, $2, TAG226
multu $2, $2
TAG226:
beq $2, $2, TAG227
lui $3, 4
lh $2, 0($2)
mfhi $1
TAG227:
bne $1, $1, TAG228
lbu $3, 0($1)
multu $1, $3
sltiu $2, $1, 14
TAG228:
mult $2, $2
mflo $2
mthi $2
bne $2, $2, TAG229
TAG229:
ori $3, $2, 0
sb $2, 0($2)
lui $4, 15
bne $2, $3, TAG230
TAG230:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $3, TAG231
addu $1, $4, $4
TAG231:
sll $0, $0, 0
nor $2, $1, $1
sll $0, $0, 0
bne $1, $1, TAG232
TAG232:
mthi $1
mfhi $4
lui $4, 10
xori $4, $1, 8
TAG233:
bltz $4, TAG234
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG234:
lbu $2, 0($2)
blez $2, TAG235
mthi $2
srav $3, $2, $2
TAG235:
blez $3, TAG236
and $4, $3, $3
lui $4, 7
mthi $3
TAG236:
lui $1, 5
sll $0, $0, 0
subu $3, $1, $2
lb $4, 0($2)
TAG237:
srl $2, $4, 5
andi $3, $2, 6
mthi $4
sw $2, 0($3)
TAG238:
bltz $3, TAG239
mtlo $3
sb $3, 0($3)
addi $2, $3, 8
TAG239:
lui $1, 3
mfhi $1
lb $4, 0($1)
ori $3, $1, 0
TAG240:
bgtz $3, TAG241
or $2, $3, $3
lhu $2, 0($2)
nor $1, $2, $2
TAG241:
xor $3, $1, $1
add $1, $3, $3
subu $2, $1, $3
addiu $1, $3, 13
TAG242:
mtlo $1
beq $1, $1, TAG243
mult $1, $1
multu $1, $1
TAG243:
multu $1, $1
blez $1, TAG244
sb $1, 0($1)
mflo $2
TAG244:
sll $0, $0, 0
mtlo $2
mflo $1
xor $3, $2, $1
TAG245:
beq $3, $3, TAG246
lui $2, 11
bgtz $3, TAG246
mtlo $2
TAG246:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
ori $2, $2, 11
TAG247:
mfhi $3
mfhi $3
sub $3, $2, $3
mult $3, $3
TAG248:
blez $3, TAG249
xor $1, $3, $3
addi $3, $1, 10
mtlo $3
TAG249:
bne $3, $3, TAG250
lhu $4, 0($3)
srl $2, $3, 2
xor $3, $4, $3
TAG250:
beq $3, $3, TAG251
lb $3, 0($3)
divu $3, $3
sw $3, 0($3)
TAG251:
lb $2, 0($3)
lui $1, 8
sll $0, $0, 0
mflo $1
TAG252:
div $1, $1
lb $4, 0($1)
mult $1, $4
lhu $1, 0($1)
TAG253:
addiu $4, $1, 10
mfhi $2
multu $2, $4
mflo $1
TAG254:
andi $3, $1, 2
lui $2, 8
bltz $1, TAG255
mtlo $3
TAG255:
xor $1, $2, $2
mflo $3
mult $2, $2
blez $3, TAG256
TAG256:
sb $3, 0($3)
lui $4, 15
lui $1, 13
lui $4, 2
TAG257:
bne $4, $4, TAG258
slti $4, $4, 10
mult $4, $4
multu $4, $4
TAG258:
sb $4, 0($4)
and $3, $4, $4
lui $4, 3
sll $0, $0, 0
TAG259:
sll $3, $4, 11
div $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG260:
beq $2, $2, TAG261
sltiu $1, $2, 7
lui $2, 14
lb $1, 0($1)
TAG261:
mfhi $4
sh $1, 0($1)
bne $1, $1, TAG262
sh $4, 0($1)
TAG262:
mflo $3
sh $4, 0($4)
slti $1, $4, 6
mfhi $2
TAG263:
mthi $2
blez $2, TAG264
mult $2, $2
bne $2, $2, TAG264
TAG264:
mthi $2
mfhi $1
xor $3, $2, $1
sh $2, 0($1)
TAG265:
sh $3, 0($3)
mflo $3
mthi $3
subu $3, $3, $3
TAG266:
lui $1, 10
bltz $1, TAG267
lui $3, 0
lui $3, 9
TAG267:
bne $3, $3, TAG268
sll $0, $0, 0
sll $2, $3, 2
mthi $3
TAG268:
beq $2, $2, TAG269
mthi $2
sw $2, 0($2)
mtlo $2
TAG269:
mtlo $2
mtlo $2
mthi $2
beq $2, $2, TAG270
TAG270:
sll $0, $0, 0
div $2, $2
lui $2, 14
lui $4, 1
TAG271:
mult $4, $4
sll $0, $0, 0
mthi $4
bgtz $4, TAG272
TAG272:
srlv $2, $4, $4
beq $4, $4, TAG273
lui $3, 0
mfhi $1
TAG273:
xor $4, $1, $1
mult $1, $1
beq $1, $1, TAG274
sll $0, $0, 0
TAG274:
sw $4, 0($4)
mfhi $4
nor $1, $4, $4
lui $3, 1
TAG275:
sll $0, $0, 0
lhu $1, 101($1)
lhu $3, 0($1)
bne $1, $1, TAG276
TAG276:
sltu $3, $3, $3
mult $3, $3
sub $2, $3, $3
sh $2, 0($2)
TAG277:
bne $2, $2, TAG278
nor $2, $2, $2
beq $2, $2, TAG278
mtlo $2
TAG278:
bne $2, $2, TAG279
or $3, $2, $2
lw $3, 1($3)
mflo $2
TAG279:
lui $2, 5
mflo $2
multu $2, $2
slt $2, $2, $2
TAG280:
addi $2, $2, 4
sltu $2, $2, $2
mtlo $2
sb $2, 0($2)
TAG281:
lui $4, 13
lui $4, 3
mtlo $4
divu $4, $4
TAG282:
subu $3, $4, $4
sb $3, 0($3)
lw $1, 0($3)
slti $2, $3, 6
TAG283:
bgtz $2, TAG284
mfhi $1
mtlo $2
add $1, $2, $2
TAG284:
lui $4, 3
lui $4, 6
sll $0, $0, 0
beq $1, $4, TAG285
TAG285:
multu $4, $4
sra $2, $4, 7
sll $1, $4, 1
blez $4, TAG286
TAG286:
xor $2, $1, $1
lui $4, 6
srl $1, $1, 2
mflo $1
TAG287:
mflo $2
blez $2, TAG288
addu $2, $2, $2
addi $2, $2, 0
TAG288:
slti $2, $2, 1
xori $4, $2, 7
addu $2, $2, $2
div $2, $2
TAG289:
lbu $2, 0($2)
lui $2, 13
lui $1, 8
and $2, $2, $2
TAG290:
mflo $3
sltiu $4, $2, 14
mflo $2
multu $3, $4
TAG291:
sra $3, $2, 9
bgez $3, TAG292
mthi $2
sw $2, 0($2)
TAG292:
addu $1, $3, $3
mflo $3
mflo $3
srl $1, $1, 6
TAG293:
srl $4, $1, 1
bltz $1, TAG294
sll $2, $1, 15
mtlo $1
TAG294:
sub $3, $2, $2
xori $2, $3, 13
mfhi $3
beq $3, $2, TAG295
TAG295:
sb $3, 0($3)
mfhi $3
mtlo $3
divu $3, $3
TAG296:
mthi $3
beq $3, $3, TAG297
lui $3, 3
bne $3, $3, TAG297
TAG297:
slti $3, $3, 12
and $3, $3, $3
bne $3, $3, TAG298
sw $3, 0($3)
TAG298:
mthi $3
subu $4, $3, $3
mfhi $4
bgtz $3, TAG299
TAG299:
sh $4, 0($4)
lbu $1, 0($4)
mfhi $1
subu $1, $1, $1
TAG300:
xori $1, $1, 15
beq $1, $1, TAG301
addu $2, $1, $1
sw $1, 0($1)
TAG301:
bgez $2, TAG302
addiu $2, $2, 15
andi $2, $2, 5
multu $2, $2
TAG302:
divu $2, $2
mthi $2
lb $3, 0($2)
sb $3, 0($2)
TAG303:
sw $3, 0($3)
sw $3, 0($3)
lui $4, 8
slt $2, $3, $3
TAG304:
sh $2, 0($2)
sub $1, $2, $2
sb $2, 0($1)
mflo $3
TAG305:
andi $3, $3, 5
sb $3, 0($3)
div $3, $3
addiu $3, $3, 3
TAG306:
mthi $3
bgez $3, TAG307
mult $3, $3
lui $2, 0
TAG307:
sh $2, 0($2)
mult $2, $2
lui $1, 6
mtlo $1
TAG308:
mtlo $1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG309:
addu $4, $1, $1
addu $2, $4, $4
sll $0, $0, 0
sltu $3, $1, $1
TAG310:
slt $4, $3, $3
mtlo $4
sltiu $4, $3, 8
lui $1, 3
TAG311:
multu $1, $1
sllv $2, $1, $1
or $3, $1, $2
sll $0, $0, 0
TAG312:
divu $3, $3
bgez $3, TAG313
mthi $3
mtlo $3
TAG313:
mflo $3
sb $3, 0($3)
sb $3, 0($3)
lui $1, 1
TAG314:
srav $2, $1, $1
ori $2, $2, 9
bne $2, $1, TAG315
ori $3, $2, 11
TAG315:
divu $3, $3
addu $2, $3, $3
beq $3, $2, TAG316
mthi $2
TAG316:
sltiu $2, $2, 7
bne $2, $2, TAG317
sw $2, 0($2)
mtlo $2
TAG317:
sh $2, 0($2)
sh $2, 0($2)
sll $2, $2, 6
multu $2, $2
TAG318:
mflo $4
mtlo $4
srlv $4, $2, $2
sh $2, 0($4)
TAG319:
mthi $4
bne $4, $4, TAG320
addu $4, $4, $4
xori $1, $4, 5
TAG320:
addu $2, $1, $1
lhu $2, 0($2)
lbu $4, 0($1)
sb $4, 0($1)
TAG321:
nor $2, $4, $4
multu $4, $2
mthi $4
lui $1, 11
TAG322:
lui $2, 1
slti $3, $2, 11
bne $2, $2, TAG323
lui $1, 15
TAG323:
multu $1, $1
divu $1, $1
multu $1, $1
sll $0, $0, 0
TAG324:
nor $3, $4, $4
lw $3, 0($4)
lui $2, 2
subu $1, $2, $2
TAG325:
bne $1, $1, TAG326
mtlo $1
lui $3, 3
slti $1, $3, 14
TAG326:
bne $1, $1, TAG327
sh $1, 0($1)
lh $2, 0($1)
sb $1, 0($2)
TAG327:
mtlo $2
lb $1, 0($2)
lui $2, 9
bgtz $2, TAG328
TAG328:
sll $0, $0, 0
addu $4, $2, $2
sll $0, $0, 0
lui $1, 12
TAG329:
xor $2, $1, $1
mtlo $1
lhu $1, 0($2)
mult $1, $1
TAG330:
sh $1, 0($1)
sh $1, 0($1)
sh $1, 0($1)
mtlo $1
TAG331:
lui $4, 13
lui $3, 12
beq $4, $3, TAG332
sh $3, 0($1)
TAG332:
bgez $3, TAG333
mthi $3
mflo $2
lui $4, 11
TAG333:
sll $0, $0, 0
bltz $4, TAG334
mflo $1
sub $4, $4, $2
TAG334:
or $3, $4, $4
mfhi $1
mfhi $3
sll $0, $0, 0
TAG335:
srl $1, $3, 13
addu $1, $3, $1
beq $3, $1, TAG336
multu $1, $3
TAG336:
mult $1, $1
bne $1, $1, TAG337
mflo $1
mfhi $1
TAG337:
sll $0, $0, 0
sb $1, -144($1)
srav $1, $4, $1
mflo $4
TAG338:
div $4, $4
sll $3, $4, 4
mfhi $1
mflo $1
TAG339:
lbu $4, 0($1)
beq $4, $1, TAG340
divu $1, $1
lui $1, 14
TAG340:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG341
multu $2, $2
TAG341:
sw $2, 0($2)
mfhi $3
beq $3, $3, TAG342
lh $3, 0($2)
TAG342:
multu $3, $3
srav $1, $3, $3
sra $3, $1, 9
mtlo $3
TAG343:
lh $2, 0($3)
sw $2, 0($3)
ori $4, $2, 15
beq $3, $4, TAG344
TAG344:
div $4, $4
lui $4, 8
mfhi $1
beq $4, $4, TAG345
TAG345:
mfhi $1
nor $4, $1, $1
andi $1, $4, 12
sw $4, 1($4)
TAG346:
divu $1, $1
ori $3, $1, 11
beq $3, $3, TAG347
lbu $4, 0($3)
TAG347:
beq $4, $4, TAG348
sw $4, 0($4)
mthi $4
sw $4, 0($4)
TAG348:
bltz $4, TAG349
sh $4, 0($4)
mtlo $4
sw $4, 0($4)
TAG349:
mthi $4
bgtz $4, TAG350
and $2, $4, $4
multu $4, $2
TAG350:
andi $1, $2, 8
addi $4, $1, 13
mtlo $1
addiu $2, $4, 10
TAG351:
lui $1, 3
blez $2, TAG352
ori $4, $1, 2
sll $0, $0, 0
TAG352:
mthi $4
lui $4, 11
beq $4, $4, TAG353
lui $1, 10
TAG353:
sll $0, $0, 0
srav $4, $1, $1
sll $3, $2, 0
sb $4, 0($3)
TAG354:
lb $3, 0($3)
mflo $3
lw $4, 0($3)
nor $1, $3, $3
TAG355:
mfhi $1
lui $1, 14
divu $1, $1
bgtz $1, TAG356
TAG356:
div $1, $1
lui $1, 5
lui $2, 6
bltz $1, TAG357
TAG357:
sll $0, $0, 0
beq $2, $2, TAG358
divu $2, $2
mult $2, $2
TAG358:
bne $2, $2, TAG359
addu $4, $2, $2
mflo $3
mfhi $1
TAG359:
mfhi $4
lh $4, 0($4)
slti $1, $4, 12
lbu $3, 0($1)
TAG360:
ori $4, $3, 13
mfhi $2
mult $4, $2
lui $4, 15
TAG361:
bne $4, $4, TAG362
mult $4, $4
sra $3, $4, 5
mflo $2
TAG362:
lui $1, 1
mflo $2
mtlo $1
lui $4, 5
TAG363:
mthi $4
mthi $4
bne $4, $4, TAG364
sltiu $4, $4, 4
TAG364:
sltu $3, $4, $4
sh $3, 0($4)
multu $4, $4
mflo $2
TAG365:
sw $2, 0($2)
lui $3, 13
mtlo $2
multu $3, $2
TAG366:
lui $1, 15
div $3, $1
mfhi $2
mthi $3
TAG367:
bltz $2, TAG368
sll $0, $0, 0
lui $2, 13
subu $2, $2, $2
TAG368:
bne $2, $2, TAG369
lw $2, 0($2)
mfhi $2
mflo $3
TAG369:
slti $1, $3, 15
lh $4, 0($3)
lh $4, 0($4)
mfhi $1
TAG370:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
divu $2, $2
TAG371:
mtlo $3
mflo $1
mult $1, $1
beq $3, $1, TAG372
TAG372:
mthi $1
bne $1, $1, TAG373
sh $1, 0($1)
mflo $2
TAG373:
sw $2, 0($2)
mult $2, $2
bgez $2, TAG374
lui $2, 8
TAG374:
sll $0, $0, 0
divu $2, $2
mflo $1
slti $1, $2, 11
TAG375:
bne $1, $1, TAG376
multu $1, $1
lui $3, 5
mtlo $3
TAG376:
lui $4, 5
or $1, $3, $3
addiu $1, $3, 12
mthi $1
TAG377:
mfhi $4
bne $4, $1, TAG378
sll $0, $0, 0
sll $0, $0, 0
TAG378:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG379
sll $0, $0, 0
TAG379:
lui $4, 9
mult $4, $1
divu $4, $1
sll $0, $0, 0
TAG380:
beq $3, $3, TAG381
lui $2, 14
mfhi $3
divu $3, $3
TAG381:
sll $0, $0, 0
lui $1, 6
mflo $3
divu $3, $1
TAG382:
multu $3, $3
lb $3, 0($3)
blez $3, TAG383
addu $3, $3, $3
TAG383:
sllv $3, $3, $3
sw $3, 0($3)
mflo $4
and $1, $4, $4
TAG384:
bne $1, $1, TAG385
lb $3, 0($1)
bne $3, $3, TAG385
lb $3, 0($1)
TAG385:
lb $3, 0($3)
mult $3, $3
sw $3, 0($3)
beq $3, $3, TAG386
TAG386:
mthi $3
bgtz $3, TAG387
mult $3, $3
addu $1, $3, $3
TAG387:
xori $4, $1, 14
sh $4, 0($1)
sltiu $1, $1, 13
mthi $1
TAG388:
xori $4, $1, 15
bltz $1, TAG389
mult $1, $4
mthi $4
TAG389:
lui $1, 13
lh $3, 0($4)
sh $4, 0($4)
mflo $1
TAG390:
sb $1, 0($1)
sltu $3, $1, $1
multu $3, $3
sll $3, $3, 10
TAG391:
lui $3, 14
and $2, $3, $3
sll $0, $0, 0
or $3, $3, $2
TAG392:
beq $3, $3, TAG393
mtlo $3
mult $3, $3
beq $3, $3, TAG393
TAG393:
mfhi $2
beq $3, $2, TAG394
xori $2, $3, 14
bgez $3, TAG394
TAG394:
addu $1, $2, $2
div $2, $2
bne $1, $1, TAG395
nor $4, $1, $2
TAG395:
multu $4, $4
sll $0, $0, 0
xor $3, $1, $4
mfhi $2
TAG396:
div $2, $2
mthi $2
mtlo $2
subu $4, $2, $2
TAG397:
mtlo $4
multu $4, $4
lbu $2, 0($4)
lb $3, 0($4)
TAG398:
xor $4, $3, $3
lui $4, 13
beq $4, $3, TAG399
slt $1, $4, $4
TAG399:
sb $1, 0($1)
xor $4, $1, $1
mthi $4
mthi $4
TAG400:
bltz $4, TAG401
multu $4, $4
mult $4, $4
srl $2, $4, 2
TAG401:
mult $2, $2
sw $2, 0($2)
lbu $1, 0($2)
bne $1, $2, TAG402
TAG402:
andi $1, $1, 13
lb $1, 0($1)
lui $3, 8
lui $4, 4
TAG403:
lui $1, 12
sltiu $2, $4, 14
beq $4, $1, TAG404
srl $1, $2, 10
TAG404:
sh $1, 0($1)
sltu $3, $1, $1
xori $4, $3, 2
sh $4, 0($1)
TAG405:
srl $2, $4, 2
srl $4, $2, 6
sltu $4, $4, $4
sh $2, 0($4)
TAG406:
mthi $4
sw $4, 0($4)
mult $4, $4
nor $3, $4, $4
TAG407:
lui $3, 2
multu $3, $3
sll $0, $0, 0
nor $1, $3, $3
TAG408:
xori $3, $1, 9
mflo $4
srav $1, $4, $3
mtlo $4
TAG409:
mthi $1
sltu $3, $1, $1
sw $3, 0($3)
mult $1, $1
TAG410:
multu $3, $3
lh $2, 0($3)
sb $3, 0($2)
blez $2, TAG411
TAG411:
mflo $3
mtlo $2
sh $3, 0($2)
mflo $2
TAG412:
sw $2, 0($2)
lui $2, 7
blez $2, TAG413
mfhi $2
TAG413:
mthi $2
sb $2, 0($2)
bgez $2, TAG414
lui $2, 11
TAG414:
lui $4, 13
mthi $2
sll $0, $0, 0
bne $4, $4, TAG415
TAG415:
sll $0, $0, 0
bltz $3, TAG416
mtlo $4
mtlo $4
TAG416:
lb $2, 0($3)
lui $2, 9
sll $0, $0, 0
mthi $2
TAG417:
nor $1, $1, $1
sw $1, 1($1)
mtlo $1
sh $1, 1($1)
TAG418:
mfhi $4
addu $1, $4, $1
sll $0, $0, 0
lui $2, 9
TAG419:
multu $2, $2
sltiu $3, $2, 9
sh $3, 0($3)
srav $2, $2, $3
TAG420:
mult $2, $2
srav $3, $2, $2
bgez $3, TAG421
addu $2, $2, $2
TAG421:
bne $2, $2, TAG422
lui $2, 15
srav $2, $2, $2
multu $2, $2
TAG422:
blez $2, TAG423
lui $1, 14
beq $1, $1, TAG423
sll $0, $0, 0
TAG423:
lui $2, 13
beq $1, $1, TAG424
sll $0, $0, 0
blez $2, TAG424
TAG424:
lui $2, 7
andi $2, $2, 3
beq $2, $2, TAG425
multu $2, $2
TAG425:
lhu $4, 0($2)
sh $2, 0($2)
mfhi $1
mfhi $3
TAG426:
sra $2, $3, 1
mthi $3
lhu $1, 0($2)
mult $2, $1
TAG427:
lui $1, 2
bne $1, $1, TAG428
sll $0, $0, 0
xor $1, $1, $1
TAG428:
ori $4, $1, 12
sb $4, 0($4)
addiu $4, $1, 1
lui $1, 5
TAG429:
lui $4, 4
mflo $2
sh $1, 0($2)
beq $4, $4, TAG430
TAG430:
sll $2, $2, 7
sw $2, 0($2)
lw $2, 0($2)
slti $4, $2, 7
TAG431:
mfhi $1
bgez $4, TAG432
mtlo $4
divu $4, $4
TAG432:
or $1, $1, $1
lhu $3, 0($1)
beq $1, $1, TAG433
lbu $2, 0($1)
TAG433:
bne $2, $2, TAG434
sra $3, $2, 10
srav $1, $3, $2
lbu $2, 0($3)
TAG434:
sh $2, 0($2)
mflo $4
mthi $4
sll $1, $2, 12
TAG435:
slti $4, $1, 15
mfhi $3
and $1, $4, $4
lb $2, 0($3)
TAG436:
bltz $2, TAG437
mtlo $2
beq $2, $2, TAG437
lui $2, 8
TAG437:
bgtz $2, TAG438
mtlo $2
bne $2, $2, TAG438
slti $1, $2, 3
TAG438:
lui $2, 8
nor $2, $1, $2
divu $1, $2
sll $0, $0, 0
TAG439:
mfhi $4
xor $1, $2, $4
sll $0, $0, 0
mthi $4
TAG440:
beq $1, $1, TAG441
sll $0, $0, 0
mult $1, $4
sw $4, 0($1)
TAG441:
lb $3, 0($4)
bgez $4, TAG442
lui $2, 4
slt $4, $4, $2
TAG442:
mthi $4
lbu $2, 0($4)
sb $2, 0($4)
ori $3, $4, 2
TAG443:
bne $3, $3, TAG444
sb $3, 0($3)
sb $3, 0($3)
lb $1, 0($3)
TAG444:
mtlo $1
mflo $4
bltz $4, TAG445
or $1, $1, $4
TAG445:
blez $1, TAG446
lui $4, 7
mtlo $4
lui $3, 7
TAG446:
sll $0, $0, 0
bne $3, $3, TAG447
multu $3, $3
sll $0, $0, 0
TAG447:
bne $3, $3, TAG448
xori $1, $3, 14
mfhi $4
mfhi $4
TAG448:
slti $4, $4, 10
srav $3, $4, $4
srlv $4, $4, $4
sllv $3, $4, $3
TAG449:
beq $3, $3, TAG450
sltiu $4, $3, 8
lui $2, 14
mfhi $3
TAG450:
bgtz $3, TAG451
lb $3, 0($3)
slti $2, $3, 1
sll $2, $3, 11
TAG451:
mtlo $2
sw $2, 0($2)
mtlo $2
bgtz $2, TAG452
TAG452:
lui $1, 7
slti $4, $2, 4
mthi $1
sll $0, $0, 0
TAG453:
lui $3, 12
beq $3, $1, TAG454
mthi $3
beq $1, $1, TAG454
TAG454:
addiu $3, $3, 0
xori $3, $3, 4
mflo $3
sllv $3, $3, $3
TAG455:
mfhi $3
slti $3, $3, 4
mfhi $4
andi $4, $3, 13
TAG456:
beq $4, $4, TAG457
lw $3, 0($4)
mfhi $4
mflo $3
TAG457:
lui $2, 13
bne $3, $2, TAG458
sltu $2, $2, $2
beq $2, $3, TAG458
TAG458:
lhu $2, 0($2)
sb $2, 0($2)
bne $2, $2, TAG459
mult $2, $2
TAG459:
mthi $2
lh $3, 0($2)
multu $2, $2
mthi $3
TAG460:
mthi $3
lb $3, 0($3)
lui $4, 0
mflo $3
TAG461:
bne $3, $3, TAG462
mthi $3
bgtz $3, TAG462
lui $4, 9
TAG462:
multu $4, $4
addu $1, $4, $4
slt $3, $4, $4
bltz $4, TAG463
TAG463:
mflo $4
sltu $3, $4, $4
multu $3, $3
lbu $2, 0($3)
TAG464:
bltz $2, TAG465
mflo $4
mthi $2
mfhi $4
TAG465:
andi $2, $4, 11
sra $1, $2, 12
sw $4, 0($4)
sw $1, 0($2)
TAG466:
mult $1, $1
sh $1, 0($1)
srav $2, $1, $1
blez $1, TAG467
TAG467:
lh $3, 0($2)
multu $3, $3
sh $3, 0($3)
mtlo $2
TAG468:
mult $3, $3
bltz $3, TAG469
sw $3, 0($3)
mtlo $3
TAG469:
lui $1, 8
blez $1, TAG470
mult $3, $3
sb $3, 0($3)
TAG470:
lui $1, 6
bne $1, $1, TAG471
mflo $2
beq $2, $1, TAG471
TAG471:
mthi $2
beq $2, $2, TAG472
lw $1, 0($2)
mfhi $3
TAG472:
sb $3, 0($3)
sw $3, 0($3)
mult $3, $3
multu $3, $3
TAG473:
lui $2, 0
mfhi $1
lui $1, 8
sll $0, $0, 0
TAG474:
lui $1, 2
ori $2, $1, 15
div $2, $2
bne $2, $1, TAG475
TAG475:
sll $0, $0, 0
andi $1, $2, 8
sll $0, $0, 0
lw $1, 0($3)
TAG476:
mthi $1
lbu $4, 0($1)
sltiu $3, $1, 7
bgtz $3, TAG477
TAG477:
lui $3, 0
lui $2, 5
lui $4, 4
multu $2, $3
TAG478:
sltu $2, $4, $4
bgtz $2, TAG479
mult $2, $4
blez $2, TAG479
TAG479:
mfhi $1
mflo $4
beq $4, $1, TAG480
lw $3, 0($1)
TAG480:
sllv $4, $3, $3
mfhi $1
mthi $1
lui $3, 1
TAG481:
sll $0, $0, 0
xor $1, $3, $3
beq $3, $3, TAG482
sll $0, $0, 0
TAG482:
sh $4, 0($4)
addiu $4, $4, 1
mthi $4
lui $3, 7
TAG483:
bgez $3, TAG484
lui $1, 13
bgez $3, TAG484
mflo $1
TAG484:
sll $0, $0, 0
sllv $4, $1, $1
bgez $4, TAG485
mtlo $4
TAG485:
beq $4, $4, TAG486
mflo $3
sh $4, 0($3)
sh $3, 0($3)
TAG486:
sll $4, $3, 10
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG487
TAG487:
nor $1, $4, $4
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
TAG488:
slti $4, $1, 2
lui $4, 3
addu $1, $1, $1
beq $4, $1, TAG489
TAG489:
sll $0, $0, 0
mflo $2
lui $3, 3
sll $0, $0, 0
TAG490:
and $1, $3, $3
or $2, $3, $3
srav $3, $1, $1
sll $0, $0, 0
TAG491:
addu $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
div $3, $3
TAG492:
blez $4, TAG493
lui $4, 4
mtlo $4
andi $2, $4, 1
TAG493:
xor $1, $2, $2
mthi $1
mflo $1
sll $0, $0, 0
TAG494:
sll $0, $0, 0
ori $1, $1, 2
mfhi $1
lbu $1, 0($1)
TAG495:
sra $2, $1, 11
or $1, $1, $2
mfhi $2
mult $2, $2
TAG496:
lui $3, 1
ori $3, $2, 4
addiu $2, $2, 1
mflo $2
TAG497:
lw $1, 0($2)
multu $2, $1
sll $2, $2, 14
blez $2, TAG498
TAG498:
mtlo $2
beq $2, $2, TAG499
mtlo $2
mtlo $2
TAG499:
bltz $2, TAG500
mfhi $4
lb $3, 0($4)
mtlo $2
TAG500:
lw $3, 0($3)
mfhi $4
sw $3, 0($3)
multu $3, $3
TAG501:
lui $4, 4
bne $4, $4, TAG502
sll $0, $0, 0
multu $4, $4
TAG502:
subu $2, $4, $4
beq $2, $2, TAG503
divu $2, $4
beq $4, $4, TAG503
TAG503:
lb $1, 0($2)
sb $1, 0($1)
beq $2, $2, TAG504
sb $1, 0($2)
TAG504:
bltz $1, TAG505
lh $2, 0($1)
blez $1, TAG505
sh $1, 0($1)
TAG505:
mthi $2
lui $1, 1
mfhi $3
lui $4, 7
TAG506:
mflo $3
lui $2, 14
sll $0, $0, 0
mtlo $4
TAG507:
sll $0, $0, 0
addiu $3, $4, 7
lui $1, 15
slti $1, $1, 3
TAG508:
addi $1, $1, 2
lui $2, 2
lui $2, 14
sll $0, $0, 0
TAG509:
lbu $1, 0($1)
mtlo $1
mtlo $1
lui $2, 4
TAG510:
mfhi $4
sll $2, $4, 9
bgez $2, TAG511
mfhi $1
TAG511:
lui $2, 5
mtlo $2
slti $1, $2, 2
sra $3, $1, 6
TAG512:
mtlo $3
slti $3, $3, 8
addu $1, $3, $3
lui $4, 7
TAG513:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
bne $4, $4, TAG514
TAG514:
sll $0, $0, 0
bne $4, $4, TAG515
sll $0, $0, 0
mthi $4
TAG515:
mflo $1
bgez $1, TAG516
mflo $1
lui $1, 9
TAG516:
multu $1, $1
sb $1, 0($1)
lb $4, 0($1)
sw $1, 0($1)
TAG517:
lui $2, 8
sll $2, $4, 11
mult $2, $2
bltz $2, TAG518
TAG518:
sh $2, 0($2)
bne $2, $2, TAG519
mtlo $2
lb $3, 0($2)
TAG519:
beq $3, $3, TAG520
lui $2, 4
lhu $4, 0($2)
lui $4, 12
TAG520:
mfhi $1
beq $4, $4, TAG521
sh $1, 0($4)
bltz $1, TAG521
TAG521:
mtlo $1
mtlo $1
sllv $2, $1, $1
mflo $4
TAG522:
bgez $4, TAG523
lbu $1, 0($4)
lw $4, 0($1)
mult $1, $4
TAG523:
mfhi $4
sub $2, $4, $4
mult $4, $4
lh $3, 0($4)
TAG524:
bgez $3, TAG525
lui $2, 13
sb $3, 0($3)
mflo $3
TAG525:
lui $1, 0
srl $4, $1, 12
lui $2, 13
sb $3, 0($1)
TAG526:
andi $3, $2, 8
sll $0, $0, 0
lh $4, 0($3)
srlv $3, $2, $2
TAG527:
bgez $3, TAG528
sltiu $1, $3, 13
lui $2, 4
add $2, $3, $2
TAG528:
sltu $3, $2, $2
or $1, $3, $2
mflo $2
mult $2, $2
TAG529:
mflo $3
mtlo $2
bltz $3, TAG530
addi $1, $3, 3
TAG530:
mthi $1
subu $3, $1, $1
mfhi $1
bltz $1, TAG531
TAG531:
lui $3, 7
beq $3, $3, TAG532
lui $4, 6
mflo $1
TAG532:
sb $1, 0($1)
bltz $1, TAG533
mflo $4
multu $4, $4
TAG533:
slt $4, $4, $4
mult $4, $4
mtlo $4
bltz $4, TAG534
TAG534:
multu $4, $4
lui $3, 7
mthi $3
mtlo $3
TAG535:
or $1, $3, $3
sll $0, $0, 0
mfhi $4
beq $4, $4, TAG536
TAG536:
lui $3, 8
sll $0, $0, 0
mfhi $4
xori $3, $4, 14
TAG537:
beq $3, $3, TAG538
mtlo $3
srav $1, $3, $3
bgtz $3, TAG538
TAG538:
srav $4, $1, $1
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
TAG539:
lhu $4, 0($2)
lui $1, 12
sllv $1, $4, $4
sltiu $3, $2, 12
TAG540:
addiu $4, $3, 1
lui $4, 0
mfhi $4
lui $2, 7
TAG541:
sll $0, $0, 0
mthi $1
or $4, $1, $1
mthi $1
TAG542:
addiu $1, $4, 9
mthi $1
nor $4, $4, $4
sb $4, 1($4)
TAG543:
mtlo $4
sb $4, 1($4)
and $4, $4, $4
addiu $1, $4, 6
TAG544:
mthi $1
mfhi $4
multu $4, $1
addiu $1, $1, 3
TAG545:
subu $2, $1, $1
and $4, $2, $1
beq $1, $4, TAG546
sh $4, 0($1)
TAG546:
lhu $1, 0($4)
bgtz $4, TAG547
lui $1, 8
sll $0, $0, 0
TAG547:
sll $0, $0, 0
sb $1, 0($3)
bne $1, $3, TAG548
div $1, $3
TAG548:
bgez $3, TAG549
mthi $3
srlv $3, $3, $3
lui $1, 10
TAG549:
lui $3, 14
lui $3, 8
bne $3, $3, TAG550
sll $0, $0, 0
TAG550:
beq $3, $3, TAG551
sltiu $2, $3, 7
lui $3, 3
lui $1, 14
TAG551:
mfhi $4
mfhi $2
lui $1, 0
blez $1, TAG552
TAG552:
sh $1, 0($1)
sll $1, $1, 7
sh $1, 0($1)
ori $1, $1, 8
TAG553:
srlv $3, $1, $1
beq $1, $1, TAG554
mult $1, $3
mthi $1
TAG554:
lh $1, 0($3)
mult $3, $1
mthi $1
sw $1, 0($1)
TAG555:
lui $1, 10
lui $3, 13
bgez $1, TAG556
mult $3, $3
TAG556:
mult $3, $3
lui $3, 10
bne $3, $3, TAG557
mtlo $3
TAG557:
and $3, $3, $3
lui $3, 3
srlv $3, $3, $3
andi $3, $3, 6
TAG558:
sltu $1, $3, $3
mflo $4
sllv $3, $3, $4
multu $4, $3
TAG559:
bgez $3, TAG560
addiu $2, $3, 10
lb $1, 0($3)
lui $3, 10
TAG560:
sub $3, $3, $3
lui $1, 4
lui $4, 2
bne $4, $3, TAG561
TAG561:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG562:
mfhi $3
addiu $1, $2, 4
subu $4, $1, $3
sll $0, $0, 0
TAG563:
mfhi $3
sll $0, $0, 0
mthi $4
srav $2, $4, $3
TAG564:
sll $0, $0, 0
lui $2, 3
sll $0, $0, 0
beq $2, $2, TAG565
TAG565:
sll $0, $0, 0
mflo $1
mult $1, $2
lh $4, 0($1)
TAG566:
blez $4, TAG567
sw $4, 0($4)
bgtz $4, TAG567
lui $3, 4
TAG567:
sra $2, $3, 2
sra $4, $3, 14
lui $3, 14
lui $3, 6
TAG568:
sltu $3, $3, $3
bne $3, $3, TAG569
mflo $1
sltiu $3, $3, 10
TAG569:
blez $3, TAG570
lui $1, 13
blez $1, TAG570
div $1, $3
TAG570:
bgez $1, TAG571
sll $0, $0, 0
divu $1, $1
sltiu $4, $1, 6
TAG571:
sh $4, 0($4)
mult $4, $4
lw $1, 0($4)
srav $4, $1, $1
TAG572:
bgez $4, TAG573
slt $1, $4, $4
bltz $4, TAG573
sltu $2, $4, $4
TAG573:
bltz $2, TAG574
lb $2, 0($2)
sll $3, $2, 1
bltz $3, TAG574
TAG574:
and $2, $3, $3
beq $3, $2, TAG575
mfhi $4
mflo $4
TAG575:
mthi $4
sh $4, 0($4)
lui $3, 8
sll $0, $0, 0
TAG576:
lbu $2, 0($2)
mflo $1
srl $1, $1, 6
nor $3, $1, $2
TAG577:
lui $4, 5
sh $3, 1($3)
lui $3, 14
xori $2, $4, 12
TAG578:
sll $4, $2, 3
sll $0, $0, 0
beq $4, $2, TAG579
sll $0, $0, 0
TAG579:
lui $1, 0
lui $4, 7
beq $1, $1, TAG580
slti $4, $4, 2
TAG580:
lw $4, 0($4)
mtlo $4
mthi $4
bne $4, $4, TAG581
TAG581:
mtlo $4
lui $4, 6
slti $4, $4, 13
sw $4, 0($4)
TAG582:
bne $4, $4, TAG583
lui $1, 14
bgtz $1, TAG583
multu $4, $4
TAG583:
bgez $1, TAG584
subu $4, $1, $1
sh $1, 0($1)
beq $1, $1, TAG584
TAG584:
mfhi $2
sh $4, 0($2)
mthi $4
beq $2, $4, TAG585
TAG585:
mfhi $3
lui $3, 10
mtlo $2
bltz $3, TAG586
TAG586:
lui $4, 12
sll $0, $0, 0
blez $4, TAG587
mflo $4
TAG587:
lh $1, 0($4)
lui $1, 13
mflo $4
ori $3, $1, 14
TAG588:
mfhi $2
mfhi $4
mthi $2
mult $2, $4
TAG589:
mfhi $2
lui $3, 8
bne $2, $4, TAG590
sll $0, $0, 0
TAG590:
sb $4, 0($4)
sb $4, 0($4)
multu $4, $4
bltz $4, TAG591
TAG591:
lui $1, 10
mtlo $1
sllv $4, $1, $4
mtlo $1
TAG592:
beq $4, $4, TAG593
lui $3, 12
bne $3, $3, TAG593
lui $4, 3
TAG593:
lui $4, 14
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG594:
addiu $1, $1, 4
srav $4, $1, $1
ori $2, $1, 13
bne $2, $1, TAG595
TAG595:
sll $0, $0, 0
sra $2, $2, 11
sh $2, -320($2)
blez $2, TAG596
TAG596:
mthi $2
mthi $2
beq $2, $2, TAG597
mthi $2
TAG597:
sb $2, -320($2)
bgtz $2, TAG598
lui $4, 4
sb $2, 0($2)
TAG598:
lui $1, 1
beq $4, $4, TAG599
and $3, $1, $4
div $1, $4
TAG599:
mtlo $3
multu $3, $3
lui $3, 9
bgez $3, TAG600
TAG600:
sll $0, $0, 0
lhu $3, -320($2)
bne $3, $3, TAG601
mflo $3
TAG601:
sh $3, 0($3)
sw $3, 0($3)
lui $2, 14
bgez $2, TAG602
TAG602:
mthi $2
mtlo $2
lui $3, 5
multu $2, $2
TAG603:
xori $4, $3, 1
beq $3, $3, TAG604
xor $4, $3, $3
div $4, $3
TAG604:
mult $4, $4
bne $4, $4, TAG605
lbu $3, 0($4)
lhu $4, 0($4)
TAG605:
lui $1, 2
mfhi $1
mtlo $4
multu $4, $4
TAG606:
mflo $1
sub $3, $1, $1
addiu $3, $3, 3
mthi $1
TAG607:
beq $3, $3, TAG608
mflo $2
divu $2, $2
sh $2, 0($2)
TAG608:
lhu $4, 0($2)
lhu $3, 0($4)
mthi $3
mtlo $4
TAG609:
multu $3, $3
beq $3, $3, TAG610
mtlo $3
bltz $3, TAG610
TAG610:
srlv $3, $3, $3
sw $3, 0($3)
or $2, $3, $3
sb $2, 0($3)
TAG611:
multu $2, $2
bne $2, $2, TAG612
lb $4, 0($2)
lui $2, 7
TAG612:
lui $1, 3
sra $3, $1, 10
multu $3, $3
lhu $3, -192($3)
TAG613:
sh $3, 0($3)
lh $2, 0($3)
sw $3, 0($2)
mult $3, $2
TAG614:
blez $2, TAG615
lw $1, 0($2)
addi $1, $1, 9
lbu $4, 0($1)
TAG615:
lui $2, 14
blez $2, TAG616
divu $2, $2
srlv $4, $4, $4
TAG616:
srlv $2, $4, $4
slt $1, $2, $4
lui $4, 7
beq $4, $2, TAG617
TAG617:
addu $2, $4, $4
sra $4, $2, 14
sb $4, 0($4)
multu $4, $4
TAG618:
mtlo $4
nor $2, $4, $4
mtlo $4
sw $2, 57($2)
TAG619:
sh $2, 57($2)
sll $1, $2, 3
bgtz $2, TAG620
mtlo $1
TAG620:
divu $1, $1
bgez $1, TAG621
sb $1, 456($1)
and $4, $1, $1
TAG621:
mthi $4
divu $4, $4
bne $4, $4, TAG622
sw $4, 456($4)
TAG622:
beq $4, $4, TAG623
mfhi $4
addiu $4, $4, 0
lbu $4, 0($4)
TAG623:
sub $4, $4, $4
mfhi $4
lui $2, 0
beq $4, $4, TAG624
TAG624:
mflo $1
bne $1, $2, TAG625
mult $1, $2
bgez $1, TAG625
TAG625:
subu $4, $1, $1
lui $1, 5
sll $0, $0, 0
addiu $3, $1, 0
TAG626:
multu $3, $3
subu $1, $3, $3
lb $3, 0($1)
mthi $3
TAG627:
lhu $3, 0($3)
multu $3, $3
div $3, $3
divu $3, $3
TAG628:
bltz $3, TAG629
or $2, $3, $3
lui $4, 6
lui $2, 0
TAG629:
mult $2, $2
mthi $2
bgez $2, TAG630
lui $4, 1
TAG630:
lui $1, 11
beq $4, $4, TAG631
sll $0, $0, 0
bne $1, $4, TAG631
TAG631:
mfhi $2
or $4, $1, $1
addi $4, $2, 0
srl $1, $1, 15
TAG632:
addiu $2, $1, 0
bgez $2, TAG633
div $2, $1
beq $1, $1, TAG633
TAG633:
mthi $2
divu $2, $2
bltz $2, TAG634
mflo $4
TAG634:
srl $2, $4, 0
sb $2, 0($4)
mtlo $4
beq $4, $4, TAG635
TAG635:
lui $3, 8
sllv $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG636:
multu $4, $4
slt $2, $4, $4
sw $2, 0($2)
sra $4, $2, 12
TAG637:
mfhi $2
mtlo $2
multu $2, $2
sltu $3, $4, $4
TAG638:
sra $1, $3, 3
sw $3, 0($3)
slti $1, $1, 2
lb $4, 0($1)
TAG639:
subu $3, $4, $4
bltz $4, TAG640
multu $4, $3
subu $2, $4, $4
TAG640:
or $4, $2, $2
beq $4, $4, TAG641
multu $4, $4
bne $2, $2, TAG641
TAG641:
mflo $3
slti $3, $4, 12
bltz $4, TAG642
nor $2, $3, $3
TAG642:
bltz $2, TAG643
lhu $3, 2($2)
xor $2, $2, $2
lui $1, 8
TAG643:
div $1, $1
lui $4, 5
sltiu $2, $4, 15
subu $3, $2, $4
TAG644:
div $3, $3
divu $3, $3
mfhi $1
sll $0, $0, 0
TAG645:
blez $1, TAG646
slt $1, $1, $1
srlv $2, $1, $1
blez $2, TAG646
TAG646:
lui $1, 4
mflo $2
sb $1, 0($2)
xor $2, $2, $2
TAG647:
lbu $4, 0($2)
mult $4, $4
lui $2, 15
bltz $2, TAG648
TAG648:
multu $2, $2
ori $4, $2, 11
mflo $3
sll $0, $0, 0
TAG649:
beq $4, $4, TAG650
sltu $3, $4, $4
bne $3, $3, TAG650
srl $1, $4, 7
TAG650:
mflo $1
mflo $1
beq $1, $1, TAG651
mult $1, $1
TAG651:
bne $1, $1, TAG652
mflo $1
addiu $1, $1, 15
srl $4, $1, 14
TAG652:
multu $4, $4
sltu $1, $4, $4
mtlo $4
addi $2, $1, 2
TAG653:
blez $2, TAG654
lh $1, 0($2)
sra $4, $2, 2
sra $3, $2, 13
TAG654:
mflo $2
mflo $4
mult $3, $4
lui $4, 11
TAG655:
mtlo $4
sltiu $3, $4, 12
mthi $3
bgtz $4, TAG656
TAG656:
mult $3, $3
mflo $1
bltz $3, TAG657
sw $1, 0($3)
TAG657:
multu $1, $1
multu $1, $1
mtlo $1
multu $1, $1
TAG658:
nor $4, $1, $1
multu $1, $4
bne $4, $4, TAG659
sltu $4, $4, $4
TAG659:
sb $4, 0($4)
multu $4, $4
mthi $4
bne $4, $4, TAG660
TAG660:
mult $4, $4
lui $1, 4
sll $0, $0, 0
srlv $1, $1, $1
TAG661:
mfhi $2
mfhi $1
xor $2, $1, $1
beq $1, $2, TAG662
TAG662:
mthi $2
bgez $2, TAG663
lw $3, 0($2)
lhu $3, 0($2)
TAG663:
mult $3, $3
sh $3, 0($3)
beq $3, $3, TAG664
addiu $4, $3, 2
TAG664:
lh $1, 0($4)
sw $4, 0($1)
mfhi $2
sltiu $1, $2, 0
TAG665:
sb $1, 0($1)
mtlo $1
bgtz $1, TAG666
lhu $2, 0($1)
TAG666:
mthi $2
bltz $2, TAG667
lui $2, 10
bne $2, $2, TAG667
TAG667:
mflo $2
lui $1, 11
lui $4, 10
bne $4, $2, TAG668
TAG668:
subu $3, $4, $4
beq $4, $3, TAG669
mfhi $2
lui $1, 5
TAG669:
sra $4, $1, 13
lb $2, 0($4)
beq $1, $4, TAG670
mflo $1
TAG670:
mfhi $1
slt $2, $1, $1
andi $1, $1, 4
blez $1, TAG671
TAG671:
srl $3, $1, 9
lui $3, 5
mfhi $2
addu $2, $3, $3
TAG672:
mtlo $2
divu $2, $2
subu $1, $2, $2
bltz $2, TAG673
TAG673:
mtlo $1
bne $1, $1, TAG674
sll $1, $1, 14
beq $1, $1, TAG674
TAG674:
sw $1, 0($1)
sw $1, 0($1)
sh $1, 0($1)
sw $1, 0($1)
TAG675:
srl $1, $1, 13
lbu $1, 0($1)
srl $1, $1, 2
or $2, $1, $1
TAG676:
bgtz $2, TAG677
mflo $1
mtlo $2
sb $1, 0($1)
TAG677:
bgez $1, TAG678
sw $1, 0($1)
bgtz $1, TAG678
sltiu $3, $1, 14
TAG678:
sll $0, $0, 0
addu $3, $4, $4
srl $2, $3, 5
sw $3, 0($3)
TAG679:
addiu $1, $2, 15
mflo $2
srlv $2, $2, $1
mult $1, $2
TAG680:
beq $2, $2, TAG681
lui $2, 11
mflo $3
sh $2, 0($2)
TAG681:
mtlo $3
lh $2, 0($3)
sb $2, 0($3)
divu $2, $2
TAG682:
bne $2, $2, TAG683
sb $2, 0($2)
lui $1, 8
lui $1, 11
TAG683:
beq $1, $1, TAG684
sll $0, $0, 0
lui $4, 5
bltz $1, TAG684
TAG684:
subu $3, $4, $4
mflo $4
mtlo $4
bne $3, $4, TAG685
TAG685:
nor $1, $4, $4
mfhi $2
sw $2, 2($1)
sllv $3, $1, $4
TAG686:
mtlo $3
multu $3, $3
xori $3, $3, 9
divu $3, $3
TAG687:
bne $3, $3, TAG688
lbu $1, 11($3)
bne $1, $1, TAG688
subu $2, $1, $3
TAG688:
sra $2, $2, 13
and $3, $2, $2
lb $1, 0($2)
lui $4, 8
TAG689:
sll $0, $0, 0
bgez $4, TAG690
lui $4, 11
bltz $4, TAG690
TAG690:
mtlo $4
mfhi $1
mfhi $4
bne $1, $4, TAG691
TAG691:
sb $4, 0($4)
lh $4, 0($4)
or $2, $4, $4
bne $4, $4, TAG692
TAG692:
mfhi $2
sh $2, 0($2)
bltz $2, TAG693
andi $4, $2, 0
TAG693:
sh $4, 0($4)
sw $4, 0($4)
blez $4, TAG694
mult $4, $4
TAG694:
multu $4, $4
mult $4, $4
mthi $4
xori $2, $4, 15
TAG695:
sb $2, 0($2)
slti $4, $2, 6
sltiu $4, $2, 9
lbu $1, 0($4)
TAG696:
bgtz $1, TAG697
lw $1, 0($1)
mtlo $1
lui $2, 14
TAG697:
subu $4, $2, $2
multu $2, $4
multu $2, $2
subu $2, $2, $2
TAG698:
bne $2, $2, TAG699
multu $2, $2
lui $1, 8
bne $2, $2, TAG699
TAG699:
lui $2, 4
sll $0, $0, 0
mult $2, $1
mflo $4
TAG700:
lhu $3, 0($4)
lui $3, 9
mfhi $2
sll $0, $0, 0
TAG701:
bne $2, $2, TAG702
addu $2, $2, $2
mflo $2
mflo $1
TAG702:
mtlo $1
beq $1, $1, TAG703
sb $1, 0($1)
add $2, $1, $1
TAG703:
mflo $4
lbu $1, 0($4)
bne $1, $1, TAG704
sh $2, 0($1)
TAG704:
beq $1, $1, TAG705
sh $1, 0($1)
lui $1, 4
lui $4, 14
TAG705:
bne $4, $4, TAG706
lui $1, 3
subu $1, $4, $1
or $2, $1, $4
TAG706:
addiu $3, $2, 7
mthi $3
sll $2, $3, 1
div $2, $2
TAG707:
mthi $2
bgez $2, TAG708
divu $2, $2
div $2, $2
TAG708:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $3, 9
mflo $2
TAG709:
lui $1, 11
beq $1, $1, TAG710
sb $1, 0($2)
mflo $4
TAG710:
sw $4, 0($4)
addiu $1, $4, 1
blez $1, TAG711
sb $4, 0($1)
TAG711:
divu $1, $1
mfhi $1
lui $2, 2
lui $1, 1
TAG712:
sra $3, $1, 6
mfhi $3
addiu $1, $3, 8
mthi $1
TAG713:
beq $1, $1, TAG714
lb $2, 0($1)
bne $1, $2, TAG714
divu $2, $2
TAG714:
sb $2, 0($2)
bltz $2, TAG715
sll $2, $2, 4
bltz $2, TAG715
TAG715:
sb $2, 0($2)
mthi $2
sll $2, $2, 14
mthi $2
TAG716:
lhu $2, 0($2)
sh $2, 0($2)
mtlo $2
sw $2, 0($2)
TAG717:
xor $1, $2, $2
sllv $3, $2, $1
bne $2, $3, TAG718
lw $2, 0($3)
TAG718:
mfhi $4
mtlo $2
multu $4, $4
bne $4, $2, TAG719
TAG719:
lui $1, 7
bne $4, $1, TAG720
nor $3, $4, $1
lw $4, 0($3)
TAG720:
nor $3, $4, $4
sb $4, 1($3)
sh $3, 1($3)
bne $4, $3, TAG721
TAG721:
slti $2, $3, 0
lb $4, 1($3)
bne $2, $3, TAG722
sb $3, 0($2)
TAG722:
div $4, $4
sltiu $1, $4, 7
lb $1, 1($4)
andi $4, $1, 5
TAG723:
andi $1, $4, 13
div $1, $4
mflo $1
mthi $4
TAG724:
mtlo $1
srl $3, $1, 8
bltz $1, TAG725
multu $3, $1
TAG725:
xori $3, $3, 12
mthi $3
multu $3, $3
lui $3, 12
TAG726:
mflo $1
beq $3, $3, TAG727
div $1, $3
bne $1, $3, TAG727
TAG727:
sll $0, $0, 0
bne $1, $3, TAG728
mtlo $1
lui $4, 13
TAG728:
multu $4, $4
mfhi $4
sh $4, 0($4)
sub $2, $4, $4
TAG729:
mtlo $2
lbu $2, 0($2)
multu $2, $2
mfhi $1
TAG730:
sh $1, 0($1)
srl $3, $1, 15
beq $3, $3, TAG731
multu $3, $3
TAG731:
lui $4, 1
mult $4, $3
beq $4, $4, TAG732
sub $3, $3, $3
TAG732:
slti $3, $3, 9
sra $4, $3, 10
bne $4, $4, TAG733
srl $2, $3, 2
TAG733:
bgtz $2, TAG734
sra $4, $2, 11
mthi $4
mthi $4
TAG734:
lui $3, 5
sub $4, $4, $4
mthi $4
mtlo $3
TAG735:
bne $4, $4, TAG736
lhu $2, 0($4)
addu $2, $4, $2
mflo $2
TAG736:
sll $0, $0, 0
bne $4, $2, TAG737
mult $4, $4
addi $4, $4, 4
TAG737:
lui $2, 4
divu $4, $2
sub $2, $4, $4
sb $4, 0($2)
TAG738:
beq $2, $2, TAG739
mult $2, $2
sll $3, $2, 5
lw $4, 0($2)
TAG739:
slt $1, $4, $4
xori $3, $4, 1
blez $3, TAG740
lui $2, 12
TAG740:
sll $0, $0, 0
div $2, $2
multu $2, $2
lui $2, 10
TAG741:
blez $2, TAG742
sll $0, $0, 0
mflo $4
and $2, $4, $2
TAG742:
sh $2, 0($2)
xori $3, $2, 15
lb $1, 0($3)
lbu $4, 0($2)
TAG743:
lhu $4, 0($4)
mtlo $4
blez $4, TAG744
mthi $4
TAG744:
beq $4, $4, TAG745
xori $3, $4, 1
sw $3, 0($3)
mtlo $3
TAG745:
addiu $2, $3, 7
xor $2, $2, $3
or $1, $2, $3
lb $1, 0($2)
TAG746:
lui $2, 2
subu $4, $2, $2
lui $3, 13
sw $3, 0($1)
TAG747:
bne $3, $3, TAG748
lui $4, 9
div $3, $4
srav $4, $4, $4
TAG748:
xori $1, $4, 7
sll $0, $0, 0
mflo $4
lui $3, 8
TAG749:
beq $3, $3, TAG750
sll $0, $0, 0
mfhi $3
lui $4, 4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop