ori $1, $0, 1
ori $2, $0, 14
ori $3, $0, 2
ori $4, $0, 4
sw $1, 0($0)
sw $2, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $3, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $1, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $3, 120($0)
sw $2, 124($0)
lh $3, 0($2)
lui $2, 6
subu $3, $3, $2
addiu $4, $3, 6
TAG1:
subu $4, $4, $4
lui $1, 0
mtlo $4
lhu $2, 0($4)
TAG2:
lui $3, 11
subu $2, $2, $2
mult $2, $3
ori $3, $2, 4
TAG3:
lh $1, 0($3)
sll $3, $3, 11
lhu $2, -8192($3)
mflo $3
TAG4:
slti $4, $3, 9
lui $1, 13
lb $1, 0($4)
mfhi $2
TAG5:
sra $3, $2, 0
sh $2, 0($2)
bgtz $2, TAG6
nor $4, $2, $2
TAG6:
sll $0, $0, 0
lhu $4, 0($2)
mflo $2
ori $2, $2, 5
TAG7:
lb $1, 0($2)
bltz $2, TAG8
div $1, $2
sb $2, 0($2)
TAG8:
ori $4, $1, 13
sub $1, $1, $1
blez $1, TAG9
mthi $1
TAG9:
xori $1, $1, 7
mflo $3
beq $1, $1, TAG10
sll $2, $1, 12
TAG10:
sltu $2, $2, $2
sb $2, 0($2)
sllv $3, $2, $2
sltiu $1, $3, 15
TAG11:
mtlo $1
divu $1, $1
srl $2, $1, 2
beq $2, $1, TAG12
TAG12:
sub $2, $2, $2
beq $2, $2, TAG13
lui $1, 9
lhu $1, 0($2)
TAG13:
mthi $1
sll $0, $0, 0
beq $1, $1, TAG14
mflo $3
TAG14:
blez $3, TAG15
div $3, $3
xor $1, $3, $3
beq $3, $1, TAG15
TAG15:
srlv $1, $1, $1
mflo $4
bne $4, $1, TAG16
mthi $1
TAG16:
lbu $2, 0($4)
lh $4, 0($2)
ori $1, $4, 5
andi $1, $1, 9
TAG17:
mflo $2
divu $1, $1
lui $3, 9
sb $2, 0($2)
TAG18:
nor $4, $3, $3
mtlo $3
lui $4, 8
multu $4, $4
TAG19:
mfhi $1
divu $4, $4
sra $4, $1, 2
mthi $1
TAG20:
mtlo $4
lui $4, 7
sll $0, $0, 0
slti $4, $4, 10
TAG21:
xori $3, $4, 2
srl $2, $3, 15
lh $4, 0($3)
nor $2, $2, $4
TAG22:
addu $3, $2, $2
bltz $3, TAG23
srav $4, $2, $3
bne $2, $3, TAG23
TAG23:
divu $4, $4
lh $1, 1($4)
xor $1, $1, $4
subu $1, $1, $4
TAG24:
mflo $4
mflo $3
bltz $3, TAG25
sh $4, 256($1)
TAG25:
bne $3, $3, TAG26
lb $4, 0($3)
addu $2, $4, $3
lui $4, 8
TAG26:
sll $0, $0, 0
sltu $2, $4, $4
sra $1, $4, 3
sb $2, 0($2)
TAG27:
mflo $1
lui $4, 7
sb $1, 0($1)
sll $0, $0, 0
TAG28:
mtlo $4
mtlo $4
multu $4, $4
sll $0, $0, 0
TAG29:
bne $4, $4, TAG30
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG30
TAG30:
lui $4, 14
sltu $3, $4, $4
sllv $3, $3, $4
div $3, $4
TAG31:
blez $3, TAG32
lui $2, 5
bgtz $3, TAG32
mfhi $3
TAG32:
mfhi $2
sw $2, 0($2)
slti $1, $3, 1
mflo $3
TAG33:
mult $3, $3
mthi $3
sll $4, $3, 11
lui $2, 14
TAG34:
blez $2, TAG35
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG35:
or $4, $4, $4
xori $1, $4, 8
sh $4, 0($1)
mthi $4
TAG36:
sw $1, 0($1)
sb $1, 0($1)
bgtz $1, TAG37
lhu $3, 0($1)
TAG37:
bne $3, $3, TAG38
addiu $2, $3, 15
lb $2, 0($2)
div $2, $3
TAG38:
mtlo $2
blez $2, TAG39
mtlo $2
mfhi $4
TAG39:
bgez $4, TAG40
andi $4, $4, 1
mthi $4
mtlo $4
TAG40:
bgez $4, TAG41
mult $4, $4
and $3, $4, $4
beq $3, $3, TAG41
TAG41:
xor $2, $3, $3
lh $1, 0($2)
blez $2, TAG42
sb $3, 0($1)
TAG42:
sw $1, 0($1)
lui $1, 6
bltz $1, TAG43
lui $3, 12
TAG43:
srav $4, $3, $3
mtlo $4
mtlo $4
div $4, $3
TAG44:
bne $4, $4, TAG45
mthi $4
lui $1, 13
andi $3, $4, 2
TAG45:
andi $4, $3, 6
bne $4, $4, TAG46
mtlo $3
beq $3, $4, TAG46
TAG46:
mfhi $2
lui $1, 0
lui $3, 8
or $4, $1, $2
TAG47:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
div $3, $4
TAG48:
bne $3, $3, TAG49
divu $3, $3
beq $3, $3, TAG49
mfhi $4
TAG49:
bgez $4, TAG50
ori $2, $4, 7
srlv $1, $2, $2
sllv $4, $2, $4
TAG50:
lh $2, 0($4)
or $4, $2, $4
lui $2, 10
sll $0, $0, 0
TAG51:
sll $0, $0, 0
lh $3, 0($1)
mult $3, $1
ori $1, $3, 11
TAG52:
slti $4, $1, 2
lui $4, 5
divu $1, $4
lb $3, 0($1)
TAG53:
bgtz $3, TAG54
lhu $1, 0($3)
and $4, $1, $3
mthi $4
TAG54:
lui $1, 9
bne $4, $4, TAG55
mthi $4
subu $4, $1, $1
TAG55:
lui $1, 13
lui $1, 3
div $4, $1
lui $4, 12
TAG56:
sra $1, $4, 11
mfhi $4
bgtz $4, TAG57
mfhi $2
TAG57:
sb $2, 0($2)
bgez $2, TAG58
addi $4, $2, 5
mflo $4
TAG58:
bne $4, $4, TAG59
mflo $2
lb $2, 0($2)
mfhi $2
TAG59:
sw $2, 0($2)
lui $1, 6
mtlo $1
lui $4, 11
TAG60:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG61
div $4, $4
TAG61:
mthi $4
andi $3, $4, 7
mflo $2
addiu $3, $4, 5
TAG62:
mflo $2
bgez $2, TAG63
sllv $2, $2, $2
lui $3, 4
TAG63:
mfhi $4
beq $3, $3, TAG64
mult $3, $3
bne $3, $3, TAG64
TAG64:
sll $0, $0, 0
mthi $4
bgez $4, TAG65
lui $1, 11
TAG65:
sll $4, $1, 13
beq $4, $1, TAG66
sll $0, $0, 0
sltiu $3, $4, 8
TAG66:
bgez $3, TAG67
mult $3, $3
mtlo $3
multu $3, $3
TAG67:
sltiu $3, $3, 8
multu $3, $3
nor $1, $3, $3
lb $1, 0($3)
TAG68:
bne $1, $1, TAG69
lbu $2, 0($1)
srav $1, $2, $1
mthi $2
TAG69:
xor $2, $1, $1
mthi $2
mflo $4
lui $2, 1
TAG70:
addiu $1, $2, 6
sllv $3, $2, $1
mthi $2
lui $1, 2
TAG71:
mtlo $1
bgtz $1, TAG72
sll $0, $0, 0
mthi $4
TAG72:
ori $3, $4, 13
mtlo $3
mtlo $3
mfhi $3
TAG73:
lui $3, 11
div $3, $3
sll $0, $0, 0
lui $1, 7
TAG74:
bne $1, $1, TAG75
lui $2, 0
mthi $2
mtlo $1
TAG75:
multu $2, $2
blez $2, TAG76
lb $3, 0($2)
beq $2, $2, TAG76
TAG76:
mtlo $3
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
TAG77:
lui $4, 6
lui $3, 0
and $4, $3, $3
lb $2, 0($3)
TAG78:
bne $2, $2, TAG79
sw $2, 0($2)
lh $2, 0($2)
srlv $2, $2, $2
TAG79:
sllv $4, $2, $2
mult $4, $2
andi $2, $4, 10
mthi $4
TAG80:
sh $2, 0($2)
bne $2, $2, TAG81
mflo $3
blez $3, TAG81
TAG81:
lbu $4, 0($3)
mthi $4
sw $4, 0($4)
beq $3, $3, TAG82
TAG82:
sb $4, 0($4)
nor $2, $4, $4
bne $4, $2, TAG83
sb $2, 1($2)
TAG83:
sh $2, 1($2)
sltu $4, $2, $2
lui $1, 15
beq $4, $4, TAG84
TAG84:
lui $4, 9
srl $1, $4, 8
sb $1, -2304($1)
bne $4, $1, TAG85
TAG85:
mfhi $1
srav $2, $1, $1
blez $1, TAG86
lui $1, 9
TAG86:
addiu $3, $1, 15
addu $4, $1, $3
bne $3, $3, TAG87
sll $0, $0, 0
TAG87:
mfhi $4
mthi $4
sltiu $1, $4, 11
sw $4, 0($4)
TAG88:
lb $2, 0($1)
lui $3, 15
lhu $1, 0($2)
beq $1, $3, TAG89
TAG89:
sw $1, 0($1)
sw $1, 0($1)
mfhi $3
mtlo $1
TAG90:
sltu $1, $3, $3
sb $3, 0($1)
beq $1, $3, TAG91
lh $3, 0($3)
TAG91:
mflo $2
mtlo $2
mult $3, $2
mflo $3
TAG92:
lui $1, 7
bgez $3, TAG93
sll $0, $0, 0
lui $3, 1
TAG93:
mfhi $3
bltz $3, TAG94
mtlo $3
lbu $2, 0($3)
TAG94:
mflo $1
sh $2, 0($2)
bgez $2, TAG95
srlv $4, $2, $1
TAG95:
multu $4, $4
lhu $3, 0($4)
slt $3, $4, $4
mthi $3
TAG96:
andi $2, $3, 8
sw $2, 0($3)
addu $4, $2, $2
sll $2, $4, 6
TAG97:
lui $1, 8
subu $3, $1, $1
bltz $1, TAG98
lb $4, 0($2)
TAG98:
beq $4, $4, TAG99
subu $1, $4, $4
beq $1, $4, TAG99
lui $4, 2
TAG99:
srl $4, $4, 3
lui $1, 9
sll $0, $0, 0
sra $4, $4, 7
TAG100:
addiu $2, $4, 5
beq $2, $2, TAG101
addi $2, $4, 10
ori $4, $2, 10
TAG101:
sh $4, 0($4)
srlv $4, $4, $4
lui $2, 12
bgez $4, TAG102
TAG102:
mthi $2
sltu $4, $2, $2
lb $2, 0($4)
sw $4, 0($4)
TAG103:
lui $2, 2
andi $2, $2, 4
mthi $2
lbu $3, 0($2)
TAG104:
lh $3, 0($3)
beq $3, $3, TAG105
mtlo $3
mthi $3
TAG105:
nor $3, $3, $3
mfhi $4
mthi $4
lh $2, 0($4)
TAG106:
multu $2, $2
nor $1, $2, $2
sltiu $4, $1, 5
mtlo $2
TAG107:
bgtz $4, TAG108
xori $3, $4, 5
div $4, $3
lui $1, 12
TAG108:
mflo $1
bgtz $1, TAG109
mult $1, $1
beq $1, $1, TAG109
TAG109:
slti $1, $1, 4
mflo $3
lui $4, 2
bne $4, $1, TAG110
TAG110:
mtlo $4
mflo $1
beq $1, $4, TAG111
mtlo $1
TAG111:
mult $1, $1
beq $1, $1, TAG112
sll $0, $0, 0
sh $1, 0($2)
TAG112:
mflo $3
bgez $3, TAG113
sll $4, $3, 6
addu $2, $4, $2
TAG113:
bgtz $2, TAG114
mult $2, $2
add $4, $2, $2
sh $2, 0($4)
TAG114:
lh $1, 0($4)
lui $2, 14
multu $4, $4
sb $1, 0($4)
TAG115:
lui $2, 3
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG116
TAG116:
lui $4, 10
mflo $2
bltz $2, TAG117
div $2, $4
TAG117:
blez $2, TAG118
add $2, $2, $2
beq $2, $2, TAG118
xor $1, $2, $2
TAG118:
bgtz $1, TAG119
lui $3, 8
bgez $3, TAG119
sllv $1, $1, $1
TAG119:
lui $1, 12
mthi $1
sll $0, $0, 0
mflo $1
TAG120:
beq $1, $1, TAG121
multu $1, $1
lhu $4, 0($1)
sra $2, $1, 15
TAG121:
sh $2, 0($2)
bltz $2, TAG122
add $1, $2, $2
blez $2, TAG122
TAG122:
mthi $1
mult $1, $1
lw $4, 0($1)
subu $4, $1, $4
TAG123:
bgez $4, TAG124
mflo $2
lhu $3, 0($4)
sb $4, 0($2)
TAG124:
srlv $3, $3, $3
divu $3, $3
mtlo $3
div $3, $3
TAG125:
mtlo $3
bne $3, $3, TAG126
mfhi $3
bltz $3, TAG126
TAG126:
mflo $3
lui $4, 11
sltu $4, $4, $3
lb $2, 0($4)
TAG127:
lh $1, 0($2)
mfhi $2
sb $1, 0($2)
sll $4, $2, 5
TAG128:
lb $2, 0($4)
lui $1, 14
sb $4, 0($4)
lui $4, 9
TAG129:
mfhi $4
mthi $4
sb $4, 0($4)
mtlo $4
TAG130:
mthi $4
mtlo $4
beq $4, $4, TAG131
sw $4, 0($4)
TAG131:
sw $4, 0($4)
blez $4, TAG132
lui $2, 0
lh $1, 0($4)
TAG132:
sll $0, $0, 0
mthi $1
mfhi $1
sll $0, $0, 0
TAG133:
beq $2, $2, TAG134
lui $4, 13
lui $3, 1
mtlo $3
TAG134:
bgez $3, TAG135
lui $2, 3
sw $3, 0($3)
blez $2, TAG135
TAG135:
multu $2, $2
lui $2, 2
mtlo $2
sll $0, $0, 0
TAG136:
mfhi $3
blez $4, TAG137
sb $3, 0($3)
sll $0, $0, 0
TAG137:
slt $2, $3, $3
bgtz $3, TAG138
lhu $4, 0($2)
slti $3, $3, 11
TAG138:
lui $4, 10
sra $2, $3, 6
mthi $4
mthi $2
TAG139:
mult $2, $2
lw $1, 0($2)
slt $2, $2, $1
blez $2, TAG140
TAG140:
mflo $2
multu $2, $2
mult $2, $2
mtlo $2
TAG141:
beq $2, $2, TAG142
srl $3, $2, 2
bne $2, $3, TAG142
sh $2, 0($2)
TAG142:
sll $1, $3, 4
blez $3, TAG143
sh $1, 0($3)
sh $3, 0($1)
TAG143:
lui $3, 8
beq $3, $1, TAG144
sll $0, $0, 0
add $4, $1, $3
TAG144:
multu $4, $4
sll $0, $0, 0
mflo $1
sll $0, $0, 0
TAG145:
lui $1, 0
beq $1, $1, TAG146
lui $4, 12
sb $1, 0($4)
TAG146:
mflo $1
lui $3, 6
lui $2, 8
lui $4, 11
TAG147:
xori $1, $4, 10
beq $4, $4, TAG148
multu $4, $4
lui $4, 15
TAG148:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG149:
mult $3, $3
srl $3, $3, 8
lui $1, 2
mfhi $2
TAG150:
bne $2, $2, TAG151
xor $3, $2, $2
multu $2, $2
mthi $2
TAG151:
sltiu $1, $3, 12
sb $3, 0($1)
sb $3, 0($1)
multu $3, $3
TAG152:
sll $2, $1, 10
blez $1, TAG153
mfhi $4
beq $4, $1, TAG153
TAG153:
addi $2, $4, 4
lui $4, 11
sll $0, $0, 0
bgez $4, TAG154
TAG154:
lui $2, 2
bgez $4, TAG155
sll $0, $0, 0
sllv $3, $2, $2
TAG155:
multu $3, $3
lhu $3, 0($3)
blez $3, TAG156
mtlo $3
TAG156:
mtlo $3
sw $3, 0($3)
lui $1, 5
sw $3, 0($3)
TAG157:
xori $2, $1, 13
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG158:
lui $4, 4
sll $0, $0, 0
mfhi $4
sw $4, 0($4)
TAG159:
mult $4, $4
andi $1, $4, 4
bltz $1, TAG160
lui $2, 3
TAG160:
multu $2, $2
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
TAG161:
lui $1, 4
mflo $2
bgez $2, TAG162
mthi $2
TAG162:
blez $2, TAG163
mtlo $2
lui $2, 0
or $2, $2, $2
TAG163:
mfhi $1
sb $2, 0($1)
lui $4, 3
srav $3, $2, $4
TAG164:
beq $3, $3, TAG165
mult $3, $3
bne $3, $3, TAG165
sw $3, 0($3)
TAG165:
lh $3, 0($3)
bne $3, $3, TAG166
sub $4, $3, $3
mult $3, $3
TAG166:
mthi $4
srav $4, $4, $4
mtlo $4
sub $1, $4, $4
TAG167:
srlv $1, $1, $1
lui $1, 1
bgtz $1, TAG168
sll $0, $0, 0
TAG168:
mflo $4
xor $2, $1, $1
multu $2, $4
mflo $4
TAG169:
sw $4, 0($4)
lui $2, 1
mtlo $4
bgtz $4, TAG170
TAG170:
sll $0, $0, 0
divu $2, $2
blez $2, TAG171
mflo $4
TAG171:
mtlo $4
srlv $4, $4, $4
mult $4, $4
mfhi $3
TAG172:
or $3, $3, $3
lui $4, 11
mult $4, $3
bgtz $3, TAG173
TAG173:
sll $0, $0, 0
sll $0, $0, 0
sw $4, 0($3)
lui $2, 8
TAG174:
multu $2, $2
lui $1, 14
sll $0, $0, 0
subu $4, $1, $2
TAG175:
mtlo $4
bne $4, $4, TAG176
mfhi $2
sll $0, $0, 0
TAG176:
lui $3, 4
addu $3, $3, $2
srav $2, $2, $3
xor $1, $2, $3
TAG177:
multu $1, $1
mtlo $1
bgez $1, TAG178
lui $4, 3
TAG178:
mthi $4
sltu $4, $4, $4
multu $4, $4
mtlo $4
TAG179:
multu $4, $4
multu $4, $4
addu $1, $4, $4
mtlo $1
TAG180:
sw $1, 0($1)
mtlo $1
mtlo $1
mfhi $4
TAG181:
lb $1, 0($4)
sh $4, 0($1)
srlv $1, $4, $1
lhu $4, 0($1)
TAG182:
lui $1, 15
bgez $1, TAG183
sll $0, $0, 0
slti $4, $1, 4
TAG183:
sh $4, 0($4)
sra $3, $4, 8
mfhi $3
bgez $3, TAG184
TAG184:
sh $3, 0($3)
bgez $3, TAG185
lbu $3, 0($3)
ori $1, $3, 12
TAG185:
lui $4, 8
mult $4, $1
addiu $4, $4, 13
srav $4, $1, $4
TAG186:
sll $2, $4, 6
mfhi $1
nor $1, $2, $2
sll $4, $1, 2
TAG187:
sll $0, $0, 0
bgtz $1, TAG188
divu $1, $1
bne $4, $4, TAG188
TAG188:
sll $0, $0, 0
sw $1, 7681($1)
beq $1, $1, TAG189
srlv $2, $1, $1
TAG189:
xor $2, $2, $2
beq $2, $2, TAG190
addi $2, $2, 7
mflo $4
TAG190:
sll $0, $0, 0
mtlo $4
and $3, $4, $2
bltz $2, TAG191
TAG191:
sh $3, 0($3)
mfhi $4
lbu $1, 0($3)
lui $1, 9
TAG192:
sll $0, $0, 0
beq $1, $1, TAG193
sltu $3, $1, $1
lui $2, 1
TAG193:
mfhi $1
lui $3, 1
sltiu $2, $1, 15
multu $3, $1
TAG194:
sb $2, 0($2)
mthi $2
mflo $2
sb $2, 0($2)
TAG195:
lbu $3, 0($2)
sb $3, 0($3)
lui $3, 14
mtlo $3
TAG196:
mtlo $3
mthi $3
lui $1, 15
mthi $3
TAG197:
mfhi $2
blez $2, TAG198
sll $0, $0, 0
blez $3, TAG198
TAG198:
mflo $4
bne $4, $4, TAG199
mult $3, $3
blez $3, TAG199
TAG199:
lui $1, 10
nor $1, $4, $4
or $4, $1, $4
lh $4, 1($4)
TAG200:
mflo $4
blez $4, TAG201
sb $4, 0($4)
sh $4, 0($4)
TAG201:
mthi $4
mthi $4
lui $4, 5
bne $4, $4, TAG202
TAG202:
mthi $4
andi $3, $4, 13
sb $4, 0($3)
blez $4, TAG203
TAG203:
sltiu $1, $3, 4
andi $4, $1, 9
mult $1, $3
mtlo $1
TAG204:
lbu $2, 0($4)
mflo $2
lb $3, 0($2)
sra $3, $2, 4
TAG205:
sra $3, $3, 5
mtlo $3
mfhi $4
mflo $2
TAG206:
lhu $1, 0($2)
mfhi $3
sltiu $1, $3, 8
addiu $1, $3, 14
TAG207:
div $1, $1
multu $1, $1
mflo $2
srl $4, $2, 11
TAG208:
sltu $1, $4, $4
beq $4, $4, TAG209
lui $1, 3
bne $4, $1, TAG209
TAG209:
mtlo $1
mfhi $2
mflo $2
beq $2, $1, TAG210
TAG210:
sll $0, $0, 0
mthi $2
mtlo $2
bne $2, $2, TAG211
TAG211:
slt $3, $2, $2
lbu $4, 0($3)
lui $1, 1
addiu $1, $2, 0
TAG212:
lui $3, 10
slti $3, $1, 12
sh $3, 0($3)
mflo $3
TAG213:
or $1, $3, $3
mtlo $1
mthi $1
sll $0, $0, 0
TAG214:
sllv $4, $1, $1
bgtz $4, TAG215
multu $1, $4
lbu $4, 0($1)
TAG215:
subu $2, $4, $4
bgez $4, TAG216
mthi $2
sb $2, 0($4)
TAG216:
lhu $4, 0($2)
sll $4, $2, 4
blez $4, TAG217
lb $3, 0($4)
TAG217:
lh $2, 0($3)
sh $3, 0($3)
multu $2, $3
add $4, $2, $2
TAG218:
mfhi $3
subu $1, $4, $3
beq $4, $1, TAG219
mflo $1
TAG219:
bne $1, $1, TAG220
mtlo $1
lui $2, 6
mtlo $1
TAG220:
sll $0, $0, 0
andi $1, $2, 13
ori $1, $1, 10
bltz $1, TAG221
TAG221:
xor $4, $1, $1
mtlo $1
addu $1, $4, $1
ori $1, $1, 3
TAG222:
subu $2, $1, $1
mthi $1
lui $2, 14
sllv $2, $2, $1
TAG223:
ori $1, $2, 12
mtlo $2
mthi $1
mtlo $1
TAG224:
mthi $1
bgez $1, TAG225
sll $0, $0, 0
and $1, $1, $4
TAG225:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 5
mflo $2
TAG226:
beq $2, $2, TAG227
sll $0, $0, 0
lhu $1, 0($2)
sll $2, $1, 0
TAG227:
bne $2, $2, TAG228
andi $2, $2, 8
mult $2, $2
beq $2, $2, TAG228
TAG228:
mfhi $3
sh $3, 0($2)
divu $2, $2
blez $2, TAG229
TAG229:
sra $1, $3, 13
blez $3, TAG230
sh $3, 0($1)
sltiu $3, $1, 13
TAG230:
bne $3, $3, TAG231
lui $3, 6
srav $2, $3, $3
multu $3, $3
TAG231:
multu $2, $2
mflo $2
multu $2, $2
mflo $2
TAG232:
add $4, $2, $2
bgez $2, TAG233
mthi $4
mflo $1
TAG233:
lbu $2, 0($1)
mult $2, $2
bne $1, $2, TAG234
lui $3, 1
TAG234:
sll $0, $0, 0
lui $4, 6
sll $0, $0, 0
sh $1, 0($1)
TAG235:
multu $1, $1
lbu $3, 0($1)
mflo $4
mthi $4
TAG236:
bne $4, $4, TAG237
mthi $4
lhu $3, 0($4)
blez $4, TAG237
TAG237:
lui $1, 5
mult $3, $1
sll $0, $0, 0
addu $2, $3, $3
TAG238:
bne $2, $2, TAG239
mult $2, $2
bne $2, $2, TAG239
mtlo $2
TAG239:
lui $4, 15
srl $2, $4, 14
lui $1, 7
mtlo $4
TAG240:
divu $1, $1
beq $1, $1, TAG241
mthi $1
lui $2, 3
TAG241:
lui $4, 14
div $4, $2
bne $2, $2, TAG242
slt $1, $2, $2
TAG242:
mflo $4
addu $4, $4, $1
srl $2, $1, 10
xori $3, $4, 6
TAG243:
mtlo $3
div $3, $3
mflo $2
mult $3, $3
TAG244:
beq $2, $2, TAG245
lbu $2, 0($2)
divu $2, $2
bgtz $2, TAG245
TAG245:
mtlo $2
addu $2, $2, $2
sb $2, 0($2)
mflo $4
TAG246:
mtlo $4
bne $4, $4, TAG247
mfhi $2
sh $4, 0($4)
TAG247:
sh $2, 0($2)
lh $3, 0($2)
subu $3, $3, $3
and $2, $2, $3
TAG248:
lbu $2, 0($2)
lb $1, 0($2)
mthi $2
bgtz $2, TAG249
TAG249:
mflo $2
lui $3, 0
lw $4, 0($3)
bltz $3, TAG250
TAG250:
addu $4, $4, $4
sll $0, $0, 0
lui $4, 12
lui $1, 0
TAG251:
mtlo $1
mfhi $1
bltz $1, TAG252
lh $1, 0($1)
TAG252:
beq $1, $1, TAG253
lui $1, 8
mfhi $2
lui $2, 11
TAG253:
mflo $1
ori $4, $1, 14
lh $4, 0($2)
sh $1, 0($2)
TAG254:
mtlo $4
bne $4, $4, TAG255
lb $3, 0($4)
multu $3, $3
TAG255:
xor $2, $3, $3
sw $3, 0($2)
lb $1, 0($3)
bgtz $1, TAG256
TAG256:
mult $1, $1
sra $3, $1, 15
multu $3, $3
mthi $3
TAG257:
lb $1, 0($3)
mflo $3
mult $3, $1
lui $4, 3
TAG258:
div $4, $4
bgtz $4, TAG259
multu $4, $4
divu $4, $4
TAG259:
mtlo $4
mflo $2
sll $0, $0, 0
mult $2, $1
TAG260:
mthi $1
lui $1, 10
beq $1, $1, TAG261
mthi $1
TAG261:
divu $1, $1
or $2, $1, $1
xori $2, $2, 13
sll $0, $0, 0
TAG262:
mtlo $3
bgtz $3, TAG263
mfhi $1
lui $1, 15
TAG263:
bltz $1, TAG264
sll $0, $0, 0
beq $1, $1, TAG264
mthi $3
TAG264:
beq $3, $3, TAG265
sll $4, $3, 15
multu $3, $4
lb $1, 0($4)
TAG265:
addu $2, $1, $1
beq $1, $1, TAG266
mfhi $1
beq $1, $1, TAG266
TAG266:
mfhi $1
lui $3, 11
divu $1, $3
sll $0, $0, 0
TAG267:
beq $3, $3, TAG268
mflo $2
mult $2, $3
blez $2, TAG268
TAG268:
lui $3, 7
mthi $2
bne $2, $3, TAG269
sltiu $3, $2, 11
TAG269:
divu $3, $3
multu $3, $3
lui $3, 5
mthi $3
TAG270:
sll $0, $0, 0
lui $2, 9
ori $3, $3, 9
lui $3, 11
TAG271:
mult $3, $3
bltz $3, TAG272
sll $0, $0, 0
mtlo $3
TAG272:
mflo $3
multu $3, $3
srl $2, $3, 12
sll $0, $0, 0
TAG273:
bgtz $4, TAG274
lui $1, 6
mflo $1
xori $3, $1, 9
TAG274:
sltiu $4, $3, 8
bgtz $4, TAG275
lb $4, 0($3)
sh $4, 0($4)
TAG275:
sh $4, 0($4)
beq $4, $4, TAG276
lhu $2, 0($4)
sltiu $4, $2, 13
TAG276:
mult $4, $4
bgez $4, TAG277
multu $4, $4
mult $4, $4
TAG277:
add $2, $4, $4
mtlo $2
mtlo $4
bne $2, $4, TAG278
TAG278:
xori $2, $2, 7
lbu $1, 0($2)
srav $3, $2, $2
mtlo $2
TAG279:
mthi $3
bgtz $3, TAG280
addi $3, $3, 0
mult $3, $3
TAG280:
mflo $1
beq $1, $1, TAG281
sw $1, 0($1)
divu $1, $1
TAG281:
ori $4, $1, 12
lhu $4, 0($1)
sb $4, 0($4)
multu $4, $1
TAG282:
lbu $2, 0($4)
srlv $3, $2, $2
sll $1, $3, 6
slt $1, $4, $2
TAG283:
lh $3, 0($1)
mthi $3
beq $1, $3, TAG284
multu $3, $3
TAG284:
mflo $2
beq $2, $2, TAG285
mult $3, $2
ori $2, $3, 1
TAG285:
beq $2, $2, TAG286
lw $4, 0($2)
mult $4, $2
lw $2, 0($2)
TAG286:
sb $2, 0($2)
lbu $4, 0($2)
bltz $2, TAG287
mfhi $1
TAG287:
lw $4, 0($1)
sw $1, 0($1)
lui $4, 1
beq $1, $4, TAG288
TAG288:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
mflo $4
TAG289:
srlv $3, $4, $4
mflo $4
sb $4, 0($4)
xor $4, $4, $4
TAG290:
mflo $2
mflo $3
bne $2, $2, TAG291
srl $2, $3, 11
TAG291:
srlv $4, $2, $2
xori $1, $4, 15
lui $3, 6
lb $3, 0($4)
TAG292:
blez $3, TAG293
sb $3, 0($3)
divu $3, $3
div $3, $3
TAG293:
sb $3, 0($3)
srlv $1, $3, $3
mtlo $1
add $4, $3, $3
TAG294:
addi $1, $4, 0
sb $1, 0($4)
or $2, $1, $1
bgez $2, TAG295
TAG295:
mflo $1
sltiu $2, $2, 9
multu $2, $2
blez $2, TAG296
TAG296:
mflo $3
blez $3, TAG297
mult $3, $3
sltu $1, $2, $2
TAG297:
sh $1, 0($1)
mthi $1
bgez $1, TAG298
sh $1, 0($1)
TAG298:
beq $1, $1, TAG299
sb $1, 0($1)
bgtz $1, TAG299
andi $2, $1, 6
TAG299:
divu $2, $2
lui $1, 3
mtlo $1
lb $2, 0($2)
TAG300:
mflo $2
mthi $2
subu $3, $2, $2
lui $1, 8
TAG301:
bltz $1, TAG302
mult $1, $1
addiu $1, $1, 4
mfhi $3
TAG302:
srav $3, $3, $3
sw $3, 0($3)
bgtz $3, TAG303
ori $4, $3, 7
TAG303:
addiu $3, $4, 14
sb $4, 0($4)
lui $2, 12
mtlo $2
TAG304:
bne $2, $2, TAG305
sltu $3, $2, $2
mult $2, $2
lbu $3, 0($3)
TAG305:
beq $3, $3, TAG306
sh $3, 0($3)
mtlo $3
lw $4, 0($3)
TAG306:
mtlo $4
srl $1, $4, 0
lbu $3, 0($1)
divu $4, $4
TAG307:
sb $3, 0($3)
mtlo $3
div $3, $3
bgtz $3, TAG308
TAG308:
mthi $3
beq $3, $3, TAG309
divu $3, $3
beq $3, $3, TAG309
TAG309:
sb $3, 0($3)
lbu $4, 0($3)
or $3, $4, $3
addiu $1, $3, 0
TAG310:
sb $1, 0($1)
bne $1, $1, TAG311
mthi $1
mtlo $1
TAG311:
mult $1, $1
lui $4, 12
mflo $4
divu $1, $4
TAG312:
divu $4, $4
slt $2, $4, $4
bgez $4, TAG313
mtlo $2
TAG313:
bne $2, $2, TAG314
or $3, $2, $2
mtlo $3
add $3, $2, $2
TAG314:
bgez $3, TAG315
sw $3, 0($3)
lw $1, 0($3)
sw $3, 0($3)
TAG315:
mthi $1
mthi $1
xori $4, $1, 1
div $4, $1
TAG316:
bne $4, $4, TAG317
lui $4, 0
blez $4, TAG317
xor $4, $4, $4
TAG317:
addiu $3, $4, 12
mfhi $3
xori $3, $3, 7
mthi $3
TAG318:
srlv $4, $3, $3
sll $3, $4, 6
ori $2, $4, 15
mthi $3
TAG319:
sb $2, 0($2)
bltz $2, TAG320
mfhi $3
bne $3, $3, TAG320
TAG320:
sll $0, $0, 0
mthi $3
srlv $4, $2, $3
mtlo $3
TAG321:
srl $4, $4, 13
mthi $4
mtlo $4
mflo $4
TAG322:
lh $4, 0($4)
lh $1, 0($4)
lui $4, 6
bltz $4, TAG323
TAG323:
mflo $1
mthi $1
mult $1, $1
mfhi $1
TAG324:
srav $3, $1, $1
lb $3, 0($3)
multu $3, $3
bltz $1, TAG325
TAG325:
sb $3, 0($3)
beq $3, $3, TAG326
mfhi $1
bgez $3, TAG326
TAG326:
sltiu $1, $1, 10
mfhi $3
mflo $4
nor $1, $4, $4
TAG327:
sw $1, 1($1)
divu $1, $1
addu $3, $1, $1
mult $3, $1
TAG328:
sh $3, 2($3)
sra $1, $3, 8
sh $3, 1($1)
mthi $3
TAG329:
mtlo $1
addu $3, $1, $1
lhu $4, 1($1)
lh $1, 1($1)
TAG330:
slti $3, $1, 12
sb $1, 0($3)
lui $1, 2
beq $3, $1, TAG331
TAG331:
xori $3, $1, 11
lui $3, 5
mtlo $3
mtlo $3
TAG332:
blez $3, TAG333
mthi $3
mthi $3
lui $2, 12
TAG333:
srl $2, $2, 3
lui $3, 5
sll $0, $0, 0
subu $1, $2, $2
TAG334:
lhu $3, 0($1)
srlv $4, $3, $1
bgtz $1, TAG335
sll $0, $0, 0
TAG335:
mfhi $1
bltz $1, TAG336
sll $0, $0, 0
multu $1, $1
TAG336:
sll $0, $0, 0
nor $3, $1, $1
slti $1, $3, 2
bltz $3, TAG337
TAG337:
sll $4, $1, 5
bgtz $4, TAG338
mflo $1
xori $4, $1, 11
TAG338:
divu $4, $4
lhu $1, 0($4)
mfhi $2
lb $3, 0($1)
TAG339:
sll $1, $3, 13
sh $1, 16384($1)
sb $1, 2($3)
sb $3, 2($3)
TAG340:
sb $1, 16384($1)
lh $2, 16384($1)
bne $2, $1, TAG341
lb $4, 16384($2)
TAG341:
mthi $4
bne $4, $4, TAG342
mthi $4
sh $4, 0($4)
TAG342:
lui $3, 12
xori $2, $3, 2
divu $4, $2
lui $3, 13
TAG343:
sll $0, $0, 0
bltz $3, TAG344
mflo $3
multu $3, $3
TAG344:
subu $3, $3, $3
sll $1, $3, 5
srlv $3, $1, $3
sb $3, 0($3)
TAG345:
srav $2, $3, $3
bgtz $2, TAG346
mult $3, $3
sw $3, 0($2)
TAG346:
lui $4, 10
sll $0, $0, 0
beq $4, $2, TAG347
sll $0, $0, 0
TAG347:
sll $0, $0, 0
divu $4, $4
sltu $2, $4, $4
srl $2, $4, 4
TAG348:
lui $1, 6
blez $1, TAG349
sll $0, $0, 0
sltiu $2, $1, 13
TAG349:
bltz $2, TAG350
lb $4, 0($2)
sb $2, 0($4)
multu $4, $2
TAG350:
addu $1, $4, $4
multu $4, $4
mflo $4
xor $1, $1, $1
TAG351:
sra $1, $1, 7
bgtz $1, TAG352
andi $3, $1, 12
or $3, $1, $1
TAG352:
bgtz $3, TAG353
lui $3, 5
sll $0, $0, 0
bgtz $3, TAG353
TAG353:
addu $2, $3, $3
lui $1, 8
bne $1, $3, TAG354
srlv $2, $3, $1
TAG354:
lui $4, 13
mflo $2
mthi $2
mthi $4
TAG355:
lui $1, 10
sb $2, 0($2)
mthi $2
mfhi $1
TAG356:
sw $1, 0($1)
beq $1, $1, TAG357
sh $1, 0($1)
bgez $1, TAG357
TAG357:
mthi $1
sh $1, 0($1)
sh $1, 0($1)
sh $1, 0($1)
TAG358:
mflo $1
sltiu $3, $1, 12
multu $3, $1
bgez $1, TAG359
TAG359:
mtlo $3
lui $3, 1
bgez $3, TAG360
slti $2, $3, 12
TAG360:
beq $2, $2, TAG361
sh $2, 0($2)
sltiu $2, $2, 0
mflo $2
TAG361:
bltz $2, TAG362
mthi $2
mthi $2
xori $2, $2, 0
TAG362:
sw $2, 0($2)
lui $2, 13
beq $2, $2, TAG363
sll $0, $0, 0
TAG363:
and $2, $4, $4
sll $0, $0, 0
bltz $2, TAG364
divu $2, $4
TAG364:
mtlo $2
srl $1, $2, 7
mflo $1
bgez $2, TAG365
TAG365:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
sra $4, $3, 7
TAG366:
sh $4, -6656($4)
lui $4, 3
mthi $4
mfhi $3
TAG367:
lui $3, 10
lui $3, 14
sll $0, $0, 0
bne $1, $3, TAG368
TAG368:
divu $1, $1
mult $1, $1
subu $4, $1, $1
mflo $3
TAG369:
addiu $1, $3, 14
sw $3, 0($3)
mthi $3
lui $1, 13
TAG370:
lui $3, 6
mult $3, $1
slt $1, $3, $1
mult $3, $3
TAG371:
mtlo $1
sb $1, 0($1)
mthi $1
divu $1, $1
TAG372:
addiu $4, $1, 7
sb $1, 0($1)
mflo $3
mfhi $1
TAG373:
lui $2, 11
sll $0, $0, 0
lw $4, 0($1)
beq $2, $4, TAG374
TAG374:
lui $1, 3
lui $4, 8
addu $2, $1, $1
slti $4, $4, 15
TAG375:
bgez $4, TAG376
lh $4, 0($4)
mfhi $4
slti $3, $4, 7
TAG376:
divu $3, $3
lbu $4, 0($3)
blez $4, TAG377
addiu $1, $3, 15
TAG377:
bne $1, $1, TAG378
div $1, $1
mfhi $1
mfhi $2
TAG378:
lh $2, 0($2)
multu $2, $2
sllv $1, $2, $2
mfhi $2
TAG379:
bne $2, $2, TAG380
mtlo $2
sb $2, 0($2)
sllv $1, $2, $2
TAG380:
multu $1, $1
xori $4, $1, 1
mflo $2
bltz $2, TAG381
TAG381:
sll $3, $2, 15
lui $4, 10
beq $2, $2, TAG382
addiu $3, $3, 2
TAG382:
bltz $3, TAG383
mflo $4
bgtz $4, TAG383
or $3, $4, $3
TAG383:
mfhi $4
multu $4, $4
mult $4, $3
mthi $3
TAG384:
sw $4, 0($4)
mtlo $4
bltz $4, TAG385
mthi $4
TAG385:
mfhi $2
bne $4, $4, TAG386
multu $2, $2
sw $4, 0($2)
TAG386:
sh $2, 0($2)
mthi $2
and $1, $2, $2
lui $2, 6
TAG387:
sll $0, $0, 0
lui $2, 15
multu $2, $2
beq $2, $2, TAG388
TAG388:
ori $4, $2, 4
mult $2, $2
mtlo $4
blez $4, TAG389
TAG389:
addu $4, $4, $4
mtlo $4
mult $4, $4
sll $0, $0, 0
TAG390:
mfhi $2
lui $3, 13
lui $3, 7
sll $0, $0, 0
TAG391:
sll $0, $0, 0
mtlo $2
slti $2, $2, 14
lui $2, 15
TAG392:
mthi $2
mthi $2
bgtz $2, TAG393
sll $0, $0, 0
TAG393:
mtlo $1
slti $3, $1, 2
slt $2, $3, $1
blez $2, TAG394
TAG394:
multu $2, $2
lw $3, 0($2)
lui $3, 6
sll $0, $0, 0
TAG395:
div $3, $3
sll $4, $3, 9
srl $1, $3, 11
mult $1, $3
TAG396:
mthi $1
subu $2, $1, $1
xori $1, $1, 4
addu $1, $1, $1
TAG397:
mtlo $1
srlv $1, $1, $1
bltz $1, TAG398
mthi $1
TAG398:
mthi $1
divu $1, $1
mtlo $1
slti $2, $1, 5
TAG399:
bgtz $2, TAG400
addu $4, $2, $2
div $2, $4
lui $4, 7
TAG400:
bgez $4, TAG401
mthi $4
addi $3, $4, 4
bne $3, $4, TAG401
TAG401:
mfhi $2
divu $3, $2
bgtz $3, TAG402
sll $0, $0, 0
TAG402:
bltz $2, TAG403
mthi $2
bgtz $2, TAG403
mult $2, $2
TAG403:
multu $2, $2
subu $3, $2, $2
mfhi $2
bgez $2, TAG404
TAG404:
lh $3, 0($2)
mfhi $3
or $2, $3, $3
mtlo $2
TAG405:
slti $4, $2, 15
bne $4, $2, TAG406
mult $2, $4
lhu $1, 0($4)
TAG406:
addiu $1, $1, 4
mfhi $3
mult $1, $3
div $3, $1
TAG407:
lw $3, 0($3)
mthi $3
srav $3, $3, $3
mthi $3
TAG408:
lbu $1, 0($3)
mtlo $1
add $1, $1, $1
multu $1, $1
TAG409:
mflo $1
lui $1, 11
mfhi $2
divu $1, $1
TAG410:
xori $2, $2, 2
lb $1, 0($2)
mtlo $1
bne $2, $2, TAG411
TAG411:
lbu $2, 0($1)
beq $1, $1, TAG412
multu $1, $2
lbu $4, 0($1)
TAG412:
srav $2, $4, $4
and $2, $4, $4
mtlo $2
lb $2, 0($2)
TAG413:
slt $3, $2, $2
srlv $1, $2, $2
lbu $4, 0($3)
addi $1, $3, 3
TAG414:
mflo $3
mfhi $1
mthi $3
lui $1, 2
TAG415:
mfhi $2
blez $2, TAG416
divu $1, $2
mtlo $2
TAG416:
sll $3, $2, 7
ori $3, $3, 11
mfhi $2
mflo $2
TAG417:
addu $1, $2, $2
mthi $2
lui $4, 1
addu $4, $2, $1
TAG418:
lb $4, 0($4)
beq $4, $4, TAG419
multu $4, $4
div $4, $4
TAG419:
lui $2, 12
mflo $4
mfhi $1
mflo $1
TAG420:
bltz $1, TAG421
sb $1, 0($1)
bltz $1, TAG421
lui $1, 0
TAG421:
slt $4, $1, $1
lh $3, 0($4)
add $3, $4, $4
lh $1, 0($1)
TAG422:
srav $3, $1, $1
mflo $2
mfhi $3
mfhi $1
TAG423:
bgtz $1, TAG424
mthi $1
slt $2, $1, $1
lb $3, 0($1)
TAG424:
lh $1, 0($3)
srl $4, $3, 12
sh $4, 0($1)
sub $4, $4, $3
TAG425:
sb $4, 0($4)
mtlo $4
mtlo $4
srlv $3, $4, $4
TAG426:
mflo $1
ori $4, $3, 10
mtlo $4
lb $2, 0($4)
TAG427:
mtlo $2
lui $3, 7
sll $0, $0, 0
multu $3, $2
TAG428:
sra $2, $3, 14
bltz $2, TAG429
andi $4, $3, 12
sh $4, 0($4)
TAG429:
lui $1, 4
sllv $1, $4, $4
mthi $4
lh $1, 0($4)
TAG430:
addu $4, $1, $1
beq $1, $1, TAG431
mflo $4
mult $1, $1
TAG431:
bgez $4, TAG432
mflo $1
beq $1, $4, TAG432
mfhi $2
TAG432:
bne $2, $2, TAG433
sltu $4, $2, $2
beq $2, $4, TAG433
mflo $2
TAG433:
mult $2, $2
bne $2, $2, TAG434
lhu $1, 0($2)
xori $3, $1, 10
TAG434:
lui $3, 9
bgtz $3, TAG435
sll $0, $0, 0
blez $1, TAG435
TAG435:
mult $1, $1
sub $3, $1, $1
sh $1, 0($1)
mfhi $4
TAG436:
mfhi $2
sw $4, 0($4)
mfhi $3
mfhi $3
TAG437:
multu $3, $3
mtlo $3
lui $4, 4
nor $3, $4, $4
TAG438:
sll $0, $0, 0
nor $3, $3, $3
bltz $3, TAG439
xor $1, $3, $3
TAG439:
sltiu $1, $1, 5
mthi $1
lui $1, 3
bgtz $1, TAG440
TAG440:
sll $0, $0, 0
xori $2, $1, 12
bltz $2, TAG441
sll $0, $0, 0
TAG441:
sll $0, $0, 0
mflo $1
xori $2, $2, 15
bne $2, $2, TAG442
TAG442:
ori $1, $2, 4
mfhi $3
nor $2, $2, $3
mflo $1
TAG443:
lui $1, 1
mthi $1
mflo $1
or $2, $1, $1
TAG444:
mult $2, $2
lh $1, 0($2)
lui $2, 7
lui $2, 13
TAG445:
bltz $2, TAG446
divu $2, $2
lui $4, 12
lui $2, 13
TAG446:
xor $3, $2, $2
bne $3, $2, TAG447
lb $3, 0($3)
bne $2, $2, TAG447
TAG447:
multu $3, $3
mfhi $4
mtlo $4
beq $4, $3, TAG448
TAG448:
lui $3, 3
sltiu $2, $4, 7
multu $4, $3
and $3, $4, $3
TAG449:
mtlo $3
addi $4, $3, 11
sb $3, 0($4)
sw $4, 0($3)
TAG450:
bltz $4, TAG451
sb $4, 0($4)
mthi $4
mthi $4
TAG451:
addu $2, $4, $4
lui $2, 0
mfhi $3
mthi $2
TAG452:
mtlo $3
mtlo $3
lbu $4, 0($3)
mflo $3
TAG453:
bgtz $3, TAG454
subu $4, $3, $3
sb $3, 0($3)
lui $4, 13
TAG454:
lhu $4, 0($4)
lui $1, 12
lui $4, 6
beq $4, $4, TAG455
TAG455:
divu $4, $4
sltiu $1, $4, 3
multu $4, $4
sll $0, $0, 0
TAG456:
mfhi $2
mthi $2
sllv $4, $3, $3
bgez $2, TAG457
TAG457:
sh $4, -22528($4)
slti $4, $4, 11
lui $2, 5
lbu $4, 0($4)
TAG458:
lh $3, 0($4)
lw $1, -22528($3)
mflo $4
mflo $2
TAG459:
mthi $2
sh $2, 0($2)
lui $2, 9
bgez $2, TAG460
TAG460:
div $2, $2
sll $0, $0, 0
mthi $2
addu $2, $2, $2
TAG461:
srav $4, $2, $2
addu $4, $2, $4
blez $4, TAG462
div $4, $2
TAG462:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
blez $4, TAG463
TAG463:
sra $2, $4, 14
lb $4, -144($2)
mtlo $4
multu $2, $4
TAG464:
sw $4, 0($4)
sw $4, 0($4)
add $4, $4, $4
lhu $4, 0($4)
TAG465:
bgtz $4, TAG466
mtlo $4
mflo $4
subu $4, $4, $4
TAG466:
sh $4, 0($4)
subu $1, $4, $4
sll $2, $4, 15
lh $3, 0($4)
TAG467:
ori $3, $3, 15
sltiu $4, $3, 5
sb $3, 0($3)
lbu $1, 0($3)
TAG468:
lui $1, 8
lui $1, 3
subu $3, $1, $1
sll $0, $0, 0
TAG469:
multu $3, $3
slt $2, $3, $3
lhu $3, 0($3)
mfhi $1
TAG470:
lui $2, 8
mfhi $1
lui $3, 3
mfhi $1
TAG471:
bne $1, $1, TAG472
lui $2, 7
mthi $2
mthi $2
TAG472:
mfhi $4
divu $2, $2
sll $0, $0, 0
bne $4, $4, TAG473
TAG473:
sll $0, $0, 0
mflo $3
mult $4, $3
blez $4, TAG474
TAG474:
lui $4, 12
lui $4, 12
bne $4, $4, TAG475
xori $3, $4, 6
TAG475:
blez $3, TAG476
sll $0, $0, 0
blez $3, TAG476
mthi $3
TAG476:
mult $3, $3
mfhi $3
bgtz $3, TAG477
sw $3, -144($3)
TAG477:
sh $3, -144($3)
srl $1, $3, 13
mthi $3
lui $2, 9
TAG478:
mthi $2
bne $2, $2, TAG479
sll $0, $0, 0
addu $4, $2, $3
TAG479:
mtlo $4
addu $4, $4, $4
mflo $3
divu $3, $4
TAG480:
mthi $3
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
TAG481:
sll $0, $0, 0
lui $2, 0
sll $0, $0, 0
lui $1, 9
TAG482:
bgtz $1, TAG483
mflo $4
sll $1, $4, 13
beq $1, $4, TAG483
TAG483:
mtlo $1
sltu $2, $1, $1
mfhi $1
sb $2, 0($1)
TAG484:
blez $1, TAG485
xori $2, $1, 14
mthi $1
mthi $2
TAG485:
andi $2, $2, 7
bne $2, $2, TAG486
lui $2, 12
mtlo $2
TAG486:
bgtz $2, TAG487
divu $2, $2
lui $2, 5
add $1, $2, $2
TAG487:
mult $1, $1
sra $1, $1, 5
srl $3, $1, 9
bne $1, $3, TAG488
TAG488:
sw $3, 0($3)
blez $3, TAG489
mfhi $4
sw $4, 0($3)
TAG489:
mflo $2
lb $1, 0($4)
bltz $1, TAG490
mtlo $4
TAG490:
lb $2, 0($1)
slt $4, $2, $2
srlv $4, $4, $4
sb $4, 0($4)
TAG491:
mtlo $4
mfhi $1
sh $4, 0($4)
blez $1, TAG492
TAG492:
sra $3, $1, 1
addiu $4, $3, 3
mthi $1
mfhi $4
TAG493:
mfhi $1
add $4, $4, $1
multu $1, $4
bltz $4, TAG494
TAG494:
and $4, $4, $4
lb $3, 0($4)
bne $3, $4, TAG495
mult $3, $3
TAG495:
addi $1, $3, 1
sra $2, $3, 7
lui $1, 12
sll $0, $0, 0
TAG496:
addi $3, $3, 15
lui $2, 6
div $2, $3
subu $4, $3, $3
TAG497:
sb $4, 0($4)
mflo $1
ori $3, $1, 2
mflo $2
TAG498:
beq $2, $2, TAG499
mfhi $2
sllv $2, $2, $2
lui $4, 5
TAG499:
xori $1, $4, 15
mfhi $1
sltu $1, $1, $1
lui $3, 1
TAG500:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
mult $1, $1
TAG501:
mtlo $4
ori $1, $4, 0
mult $1, $1
addiu $2, $4, 6
TAG502:
addiu $2, $2, 4
srav $2, $2, $2
lui $3, 7
multu $2, $2
TAG503:
bgtz $3, TAG504
mflo $4
beq $3, $3, TAG504
xor $2, $3, $3
TAG504:
xori $1, $2, 13
srl $2, $2, 7
sb $2, 0($1)
addiu $2, $2, 8
TAG505:
bgtz $2, TAG506
lui $2, 7
sh $2, 0($2)
lui $3, 10
TAG506:
srl $1, $3, 8
mfhi $1
lui $3, 15
mflo $1
TAG507:
bgez $1, TAG508
sltu $1, $1, $1
mthi $1
mtlo $1
TAG508:
mult $1, $1
lh $3, 0($1)
srl $2, $1, 6
lhu $2, 0($3)
TAG509:
lhu $2, 0($2)
mtlo $2
mfhi $3
bgez $2, TAG510
TAG510:
lh $4, 0($3)
bne $4, $4, TAG511
lh $2, 0($4)
bltz $3, TAG511
TAG511:
lhu $4, 0($2)
bgez $4, TAG512
mult $4, $2
bltz $4, TAG512
TAG512:
mtlo $4
andi $1, $4, 2
lui $1, 11
sll $0, $0, 0
TAG513:
mflo $3
bne $3, $3, TAG514
sll $0, $0, 0
sltiu $2, $1, 13
TAG514:
mflo $4
sra $2, $2, 13
mthi $2
mthi $2
TAG515:
sltu $1, $2, $2
mtlo $2
lui $1, 4
beq $1, $1, TAG516
TAG516:
nor $3, $1, $1
blez $1, TAG517
mfhi $2
lh $1, 0($2)
TAG517:
beq $1, $1, TAG518
lui $4, 13
mthi $1
mflo $4
TAG518:
mthi $4
addiu $3, $4, 14
mtlo $3
sll $0, $0, 0
TAG519:
bltz $3, TAG520
sll $0, $0, 0
ori $3, $3, 8
beq $3, $3, TAG520
TAG520:
sll $0, $0, 0
bne $3, $3, TAG521
lui $3, 0
slti $3, $3, 9
TAG521:
blez $3, TAG522
subu $3, $3, $3
lui $1, 5
sll $0, $0, 0
TAG522:
bltz $1, TAG523
mflo $4
blez $1, TAG523
xor $3, $1, $1
TAG523:
lui $3, 11
srav $2, $3, $3
bne $3, $3, TAG524
lui $1, 10
TAG524:
subu $2, $1, $1
addu $1, $2, $2
mflo $4
mtlo $1
TAG525:
addiu $2, $4, 4
xori $4, $4, 10
mfhi $2
mfhi $1
TAG526:
blez $1, TAG527
addu $4, $1, $1
mthi $1
bne $4, $1, TAG527
TAG527:
lui $3, 13
sll $0, $0, 0
div $4, $4
divu $4, $4
TAG528:
mthi $4
mthi $4
sll $0, $0, 0
mult $4, $1
TAG529:
sltu $4, $1, $1
multu $1, $4
lui $2, 15
sll $0, $0, 0
TAG530:
sll $0, $0, 0
lui $4, 10
div $4, $2
xori $3, $4, 5
TAG531:
slt $2, $3, $3
lh $4, 0($2)
multu $3, $4
sw $3, 0($2)
TAG532:
beq $4, $4, TAG533
sw $4, 0($4)
sb $4, 0($4)
lw $1, 0($4)
TAG533:
mflo $3
lui $2, 7
mtlo $2
sll $0, $0, 0
TAG534:
mflo $4
addu $3, $1, $4
slti $3, $4, 0
bltz $3, TAG535
TAG535:
mtlo $3
beq $3, $3, TAG536
slti $3, $3, 15
sh $3, 0($3)
TAG536:
xori $1, $3, 15
lui $4, 11
beq $3, $3, TAG537
mflo $2
TAG537:
lui $3, 7
or $4, $2, $3
lb $2, 0($2)
lw $1, 0($2)
TAG538:
slti $4, $1, 0
sh $4, 0($4)
beq $1, $4, TAG539
xori $4, $4, 14
TAG539:
sb $4, 0($4)
andi $4, $4, 3
sllv $3, $4, $4
ori $2, $4, 11
TAG540:
mthi $2
beq $2, $2, TAG541
sb $2, 0($2)
mthi $2
TAG541:
sb $2, 0($2)
mtlo $2
lui $1, 8
sll $0, $0, 0
TAG542:
subu $1, $1, $1
bne $1, $1, TAG543
mflo $3
srlv $2, $1, $1
TAG543:
lb $3, 0($2)
bgez $2, TAG544
lui $2, 13
lb $1, 0($2)
TAG544:
bne $1, $1, TAG545
mtlo $1
bne $1, $1, TAG545
mthi $1
TAG545:
lui $4, 4
addiu $1, $1, 6
bne $1, $1, TAG546
sh $1, 0($1)
TAG546:
mthi $1
srl $3, $1, 8
lui $1, 10
div $1, $1
TAG547:
sll $0, $0, 0
mflo $2
mfhi $2
ori $4, $2, 12
TAG548:
mult $4, $4
sllv $1, $4, $4
multu $4, $4
blez $1, TAG549
TAG549:
lui $4, 6
mtlo $4
mflo $4
bne $4, $4, TAG550
TAG550:
mfhi $1
lui $4, 12
mthi $4
lbu $1, 0($1)
TAG551:
xori $2, $1, 13
lui $4, 11
mtlo $2
xori $4, $4, 4
TAG552:
mult $4, $4
beq $4, $4, TAG553
sll $0, $0, 0
andi $2, $4, 1
TAG553:
sb $2, 0($2)
ori $1, $2, 12
sll $4, $2, 0
mtlo $4
TAG554:
div $4, $4
addu $1, $4, $4
slt $3, $1, $4
mtlo $4
TAG555:
beq $3, $3, TAG556
mtlo $3
mtlo $3
andi $3, $3, 15
TAG556:
addi $4, $3, 10
lui $4, 12
lui $3, 13
lui $2, 7
TAG557:
bltz $2, TAG558
mtlo $2
lui $1, 2
beq $1, $1, TAG558
TAG558:
srlv $3, $1, $1
sll $0, $0, 0
lui $1, 10
lui $1, 12
TAG559:
addu $2, $1, $1
mfhi $4
multu $4, $2
mflo $1
TAG560:
bgez $1, TAG561
mult $1, $1
multu $1, $1
nor $4, $1, $1
TAG561:
sllv $2, $4, $4
bgez $2, TAG562
mtlo $4
andi $1, $4, 0
TAG562:
bne $1, $1, TAG563
lb $1, 0($1)
mfhi $1
lhu $4, 0($1)
TAG563:
mult $4, $4
mtlo $4
lw $1, 0($4)
beq $1, $1, TAG564
TAG564:
sb $1, 0($1)
lui $1, 9
addu $4, $1, $1
blez $4, TAG565
TAG565:
sll $0, $0, 0
subu $1, $4, $4
sll $0, $0, 0
bne $1, $4, TAG566
TAG566:
sb $2, 0($2)
sb $2, 0($2)
blez $2, TAG567
mult $2, $2
TAG567:
lw $1, 0($2)
bne $1, $2, TAG568
lhu $3, 0($1)
mfhi $4
TAG568:
multu $4, $4
mfhi $1
xori $2, $1, 4
lui $4, 0
TAG569:
mthi $4
bne $4, $4, TAG570
sllv $1, $4, $4
sw $1, 0($1)
TAG570:
bgtz $1, TAG571
multu $1, $1
addiu $3, $1, 2
mult $1, $3
TAG571:
bgez $3, TAG572
lbu $2, 0($3)
sh $3, 0($3)
beq $3, $2, TAG572
TAG572:
lhu $2, 0($2)
beq $2, $2, TAG573
lbu $2, 0($2)
bgez $2, TAG573
TAG573:
mthi $2
ori $4, $2, 0
lw $3, 0($4)
beq $4, $4, TAG574
TAG574:
or $1, $3, $3
sh $1, 0($3)
lb $1, 0($1)
addiu $3, $1, 12
TAG575:
sb $3, 0($3)
addu $1, $3, $3
bgez $3, TAG576
mflo $4
TAG576:
bltz $4, TAG577
mthi $4
lw $1, 0($4)
sh $1, 0($1)
TAG577:
multu $1, $1
lui $3, 6
mflo $3
slt $2, $3, $1
TAG578:
bne $2, $2, TAG579
lb $4, 0($2)
lh $1, 0($2)
bne $2, $4, TAG579
TAG579:
sh $1, 0($1)
lui $3, 3
sltiu $4, $3, 6
mflo $1
TAG580:
subu $4, $1, $1
bltz $1, TAG581
mtlo $4
bgtz $4, TAG581
TAG581:
lhu $2, 0($4)
sub $2, $2, $4
mthi $2
bgez $4, TAG582
TAG582:
mtlo $2
mflo $4
xor $2, $4, $4
sw $2, 0($4)
TAG583:
xor $4, $2, $2
blez $2, TAG584
mtlo $4
mtlo $4
TAG584:
multu $4, $4
bltz $4, TAG585
lbu $1, 0($4)
beq $1, $4, TAG585
TAG585:
srlv $4, $1, $1
lui $4, 0
mfhi $4
lhu $2, 0($4)
TAG586:
sb $2, 0($2)
sh $2, 0($2)
bgtz $2, TAG587
slti $4, $2, 0
TAG587:
bne $4, $4, TAG588
and $2, $4, $4
beq $4, $4, TAG588
lui $3, 6
TAG588:
sra $3, $3, 15
mflo $2
lui $3, 7
mthi $2
TAG589:
addiu $3, $3, 4
bgtz $3, TAG590
divu $3, $3
slti $2, $3, 0
TAG590:
lui $4, 14
lui $2, 0
bne $2, $4, TAG591
sll $0, $0, 0
TAG591:
bne $1, $1, TAG592
lui $2, 1
divu $2, $2
nor $1, $2, $2
TAG592:
sll $0, $0, 0
lui $3, 8
mfhi $2
bgtz $3, TAG593
TAG593:
lw $4, 0($2)
bltz $4, TAG594
mflo $2
mthi $2
TAG594:
bne $2, $2, TAG595
xori $2, $2, 3
subu $2, $2, $2
mthi $2
TAG595:
beq $2, $2, TAG596
lb $3, 0($2)
srlv $1, $3, $3
sll $1, $3, 5
TAG596:
mthi $1
addiu $4, $1, 11
lui $4, 6
bne $4, $4, TAG597
TAG597:
divu $4, $4
blez $4, TAG598
sll $0, $0, 0
bltz $1, TAG598
TAG598:
slti $3, $1, 9
mtlo $1
div $3, $3
lb $3, 0($3)
TAG599:
beq $3, $3, TAG600
sw $3, 0($3)
ori $3, $3, 0
mthi $3
TAG600:
beq $3, $3, TAG601
lhu $4, 0($3)
lw $4, 0($4)
beq $4, $3, TAG601
TAG601:
mthi $4
xori $1, $4, 3
sh $4, 0($4)
mtlo $1
TAG602:
div $1, $1
subu $1, $1, $1
sltiu $2, $1, 1
sb $1, 0($2)
TAG603:
sb $2, 0($2)
mthi $2
lui $2, 3
slt $2, $2, $2
TAG604:
mtlo $2
blez $2, TAG605
lui $3, 2
lui $3, 3
TAG605:
mtlo $3
lui $3, 4
srav $3, $3, $3
mtlo $3
TAG606:
mfhi $1
mtlo $3
multu $1, $1
bgez $1, TAG607
TAG607:
addiu $3, $1, 15
mtlo $3
sb $1, 0($1)
sllv $3, $3, $3
TAG608:
lui $2, 12
bne $3, $3, TAG609
xori $4, $2, 13
mtlo $4
TAG609:
mfhi $1
lb $3, 0($1)
bgez $3, TAG610
and $2, $4, $4
TAG610:
mflo $2
sll $0, $0, 0
bltz $2, TAG611
lui $1, 3
TAG611:
lui $4, 12
divu $4, $1
subu $2, $1, $4
mfhi $1
TAG612:
sb $1, 0($1)
beq $1, $1, TAG613
mult $1, $1
lb $2, 0($1)
TAG613:
mult $2, $2
multu $2, $2
srl $4, $2, 2
sll $0, $0, 0
TAG614:
lb $3, 0($1)
mtlo $1
bgez $1, TAG615
mthi $3
TAG615:
bgtz $3, TAG616
srlv $4, $3, $3
mfhi $4
slt $4, $4, $4
TAG616:
mfhi $4
lui $4, 8
lui $2, 2
sll $0, $0, 0
TAG617:
mthi $2
bgez $2, TAG618
mthi $2
slt $2, $2, $2
TAG618:
srl $3, $2, 4
addu $1, $3, $2
blez $2, TAG619
mthi $3
TAG619:
sll $2, $1, 10
beq $1, $2, TAG620
multu $1, $2
beq $1, $1, TAG620
TAG620:
mthi $2
subu $3, $2, $2
multu $2, $3
lhu $2, 0($3)
TAG621:
sll $0, $0, 0
addiu $1, $2, 8
bne $1, $1, TAG622
mult $1, $2
TAG622:
addiu $2, $1, 8
mflo $3
addu $2, $3, $1
bltz $3, TAG623
TAG623:
mtlo $2
bgez $2, TAG624
div $2, $2
mult $2, $2
TAG624:
bne $2, $2, TAG625
sll $0, $0, 0
lui $4, 0
bgtz $2, TAG625
TAG625:
lui $3, 10
andi $4, $3, 7
blez $4, TAG626
sltu $1, $4, $4
TAG626:
sb $1, 0($1)
mfhi $1
mult $1, $1
mtlo $1
TAG627:
mflo $2
or $4, $1, $2
sb $1, 0($4)
slt $4, $4, $2
TAG628:
slti $1, $4, 8
mfhi $2
blez $4, TAG629
sb $2, 0($4)
TAG629:
sh $2, 0($2)
mtlo $2
srl $4, $2, 3
mult $4, $4
TAG630:
lbu $3, 0($4)
beq $3, $3, TAG631
mtlo $4
mthi $3
TAG631:
mthi $3
addu $4, $3, $3
blez $4, TAG632
lui $1, 11
TAG632:
mtlo $1
lui $4, 2
mfhi $3
sll $0, $0, 0
TAG633:
xori $4, $4, 12
mflo $1
bne $4, $4, TAG634
sll $0, $0, 0
TAG634:
srav $1, $2, $2
sra $2, $1, 2
lui $1, 10
sll $0, $0, 0
TAG635:
mult $1, $1
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG636:
sll $0, $0, 0
multu $4, $4
bgez $4, TAG637
multu $4, $4
TAG637:
sll $0, $0, 0
bltz $4, TAG638
lui $1, 6
addu $3, $4, $1
TAG638:
divu $3, $3
sll $0, $0, 0
bgtz $3, TAG639
mflo $3
TAG639:
bltz $3, TAG640
slti $3, $3, 1
sb $3, 0($3)
sll $1, $3, 9
TAG640:
bgtz $1, TAG641
lui $1, 7
mtlo $1
ori $3, $1, 13
TAG641:
sll $0, $0, 0
bltz $3, TAG642
srl $3, $3, 15
srl $3, $2, 9
TAG642:
sh $3, 0($3)
bltz $3, TAG643
mthi $3
mfhi $3
TAG643:
blez $3, TAG644
mflo $4
lui $4, 9
beq $3, $4, TAG644
TAG644:
and $2, $4, $4
mfhi $3
lhu $3, 0($3)
lui $2, 15
TAG645:
mfhi $3
mtlo $3
sll $2, $2, 0
lui $2, 2
TAG646:
slti $4, $2, 6
sll $0, $0, 0
addu $4, $4, $4
srl $1, $1, 4
TAG647:
lui $3, 8
lhu $3, -28672($1)
mult $1, $3
addi $4, $3, 0
TAG648:
sra $1, $4, 6
beq $1, $4, TAG649
add $1, $4, $1
ori $3, $4, 15
TAG649:
sw $3, 0($3)
sh $3, 0($3)
lw $3, 0($3)
lui $1, 10
TAG650:
srav $2, $1, $1
sll $0, $0, 0
ori $2, $3, 4
mflo $1
TAG651:
srl $1, $1, 4
mfhi $2
sw $1, 0($1)
mflo $3
TAG652:
andi $2, $3, 1
lui $2, 8
lui $2, 9
bgez $3, TAG653
TAG653:
sll $0, $0, 0
ori $1, $4, 12
sw $4, 0($1)
sll $2, $2, 5
TAG654:
sll $0, $0, 0
lui $3, 11
sra $3, $3, 3
mthi $3
TAG655:
mflo $1
mult $1, $3
mtlo $1
xor $3, $1, $3
TAG656:
beq $3, $3, TAG657
lui $2, 13
addiu $4, $3, 6
div $2, $3
TAG657:
mthi $4
mult $4, $4
mfhi $2
mflo $1
TAG658:
bne $1, $1, TAG659
lhu $2, 0($1)
blez $2, TAG659
mtlo $2
TAG659:
lbu $3, 0($2)
lui $3, 6
sltu $2, $3, $3
mfhi $2
TAG660:
mult $2, $2
bne $2, $2, TAG661
mtlo $2
lui $2, 2
TAG661:
addu $4, $2, $2
mflo $2
lh $2, 0($2)
beq $2, $2, TAG662
TAG662:
ori $3, $2, 9
blez $2, TAG663
divu $2, $3
srl $4, $2, 12
TAG663:
mfhi $2
bne $4, $4, TAG664
lui $2, 3
lui $2, 8
TAG664:
ori $4, $2, 1
addu $4, $2, $4
slti $4, $4, 11
bne $2, $4, TAG665
TAG665:
or $2, $4, $4
lh $1, 0($2)
lw $2, 0($4)
lui $4, 6
TAG666:
mtlo $4
sll $0, $0, 0
lui $2, 4
mflo $3
TAG667:
multu $3, $3
sll $0, $0, 0
bltz $3, TAG668
srav $3, $3, $3
TAG668:
srav $3, $3, $3
sll $0, $0, 0
bne $3, $3, TAG669
sll $0, $0, 0
TAG669:
sll $0, $0, 0
lw $4, 0($1)
mflo $3
sh $4, 0($3)
TAG670:
lui $2, 8
mflo $2
sb $2, 0($3)
srl $1, $3, 14
TAG671:
mfhi $1
sw $1, 0($1)
or $4, $1, $1
lb $4, 0($4)
TAG672:
sw $4, 0($4)
lhu $4, 0($4)
sh $4, 0($4)
mthi $4
TAG673:
sll $3, $4, 15
sltu $4, $3, $4
or $3, $4, $4
sltiu $4, $4, 5
TAG674:
mult $4, $4
lb $3, 0($4)
and $2, $4, $4
lbu $2, 0($2)
TAG675:
mult $2, $2
mtlo $2
sw $2, 0($2)
mult $2, $2
TAG676:
lui $1, 13
subu $3, $2, $2
srlv $2, $1, $1
sll $0, $0, 0
TAG677:
mtlo $4
sb $4, 0($4)
bgtz $4, TAG678
srl $3, $4, 14
TAG678:
lui $3, 7
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG679:
srav $4, $3, $3
mult $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG680:
srlv $1, $1, $1
mult $1, $1
beq $1, $1, TAG681
divu $1, $1
TAG681:
sll $2, $1, 10
mfhi $1
mtlo $1
mult $2, $1
TAG682:
bne $1, $1, TAG683
srlv $4, $1, $1
subu $4, $1, $1
lhu $2, 0($1)
TAG683:
beq $2, $2, TAG684
addiu $3, $2, 0
sb $3, 0($2)
div $3, $3
TAG684:
div $3, $3
and $2, $3, $3
addu $1, $3, $2
blez $1, TAG685
TAG685:
divu $1, $1
divu $1, $1
sb $1, -512($1)
lbu $4, -512($1)
TAG686:
lb $2, 0($4)
lui $2, 12
mflo $4
or $3, $4, $4
TAG687:
bgtz $3, TAG688
lui $1, 6
sh $1, 0($1)
lui $3, 3
TAG688:
mfhi $2
mfhi $4
subu $1, $2, $4
addiu $3, $4, 6
TAG689:
mthi $3
div $3, $3
slti $1, $3, 4
mflo $2
TAG690:
mtlo $2
mult $2, $2
sb $2, 0($2)
bne $2, $2, TAG691
TAG691:
mtlo $2
lui $4, 12
multu $2, $2
lui $1, 3
TAG692:
lui $4, 1
lui $3, 6
beq $4, $3, TAG693
slt $3, $1, $4
TAG693:
addi $2, $3, 14
bltz $3, TAG694
mflo $3
mflo $1
TAG694:
mult $1, $1
lb $3, 0($1)
slti $4, $3, 3
mthi $3
TAG695:
beq $4, $4, TAG696
sra $2, $4, 2
lui $2, 1
lbu $1, 0($4)
TAG696:
blez $1, TAG697
sb $1, 0($1)
lb $3, 0($1)
sb $1, 0($1)
TAG697:
divu $3, $3
lui $3, 7
mflo $1
bgez $3, TAG698
TAG698:
lb $4, 0($1)
mflo $3
beq $1, $4, TAG699
mthi $3
TAG699:
lui $4, 1
mtlo $3
sb $3, 0($3)
andi $4, $3, 0
TAG700:
blez $4, TAG701
subu $1, $4, $4
mtlo $4
beq $1, $4, TAG701
TAG701:
srav $2, $1, $1
bgtz $1, TAG702
lb $2, 0($2)
sb $1, 0($1)
TAG702:
srl $2, $2, 6
sb $2, 0($2)
sllv $2, $2, $2
bltz $2, TAG703
TAG703:
or $4, $2, $2
slti $4, $4, 10
beq $4, $4, TAG704
subu $3, $2, $4
TAG704:
lui $3, 14
multu $3, $3
bgtz $3, TAG705
sll $0, $0, 0
TAG705:
mflo $4
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
TAG706:
mtlo $1
andi $1, $1, 3
bgtz $1, TAG707
slt $1, $1, $1
TAG707:
lb $4, 0($1)
sb $1, 0($1)
or $4, $4, $1
nor $1, $1, $1
TAG708:
mfhi $3
srl $3, $3, 7
ori $3, $3, 9
sb $1, 0($3)
TAG709:
divu $3, $3
sb $3, 0($3)
blez $3, TAG710
srl $4, $3, 15
TAG710:
bltz $4, TAG711
lui $3, 5
mthi $4
sh $4, 0($4)
TAG711:
mflo $2
xori $3, $3, 13
xori $2, $3, 5
mfhi $2
TAG712:
mflo $3
lui $2, 8
xor $3, $2, $2
slt $2, $3, $2
TAG713:
div $2, $2
nor $2, $2, $2
sh $2, 2($2)
mthi $2
TAG714:
sllv $4, $2, $2
lui $1, 13
divu $2, $2
blez $2, TAG715
TAG715:
sll $0, $0, 0
srav $1, $2, $1
mflo $4
sh $1, 2($1)
TAG716:
mtlo $4
beq $4, $4, TAG717
div $4, $4
div $4, $4
TAG717:
sb $4, 0($4)
lui $1, 11
divu $4, $4
bgtz $4, TAG718
TAG718:
multu $1, $1
lui $4, 14
sll $0, $0, 0
mult $1, $1
TAG719:
bgez $4, TAG720
mthi $4
beq $4, $4, TAG720
multu $4, $4
TAG720:
multu $4, $4
sltu $1, $4, $4
sra $4, $4, 11
bgez $4, TAG721
TAG721:
sll $0, $0, 0
sh $4, 2($2)
bgtz $4, TAG722
mtlo $2
TAG722:
lui $1, 0
mfhi $2
lw $1, 0($1)
ori $3, $1, 13
TAG723:
mflo $1
slti $1, $1, 7
lui $4, 2
sll $0, $0, 0
TAG724:
mfhi $1
mflo $3
subu $3, $1, $1
mthi $3
TAG725:
beq $3, $3, TAG726
lui $2, 12
srlv $3, $2, $3
nor $1, $2, $2
TAG726:
mthi $1
divu $1, $1
bne $1, $1, TAG727
div $1, $1
TAG727:
lui $4, 14
srav $4, $1, $1
div $1, $4
lb $2, -196($1)
TAG728:
mfhi $2
sb $2, 0($2)
sw $2, 0($2)
lui $1, 11
TAG729:
sll $0, $0, 0
mfhi $1
lui $4, 4
sw $4, 0($3)
TAG730:
blez $4, TAG731
divu $4, $4
sll $0, $0, 0
beq $4, $4, TAG731
TAG731:
sll $0, $0, 0
lui $4, 13
bne $4, $4, TAG732
xori $3, $4, 1
TAG732:
sll $0, $0, 0
mflo $4
beq $4, $4, TAG733
addu $2, $3, $4
TAG733:
xori $2, $2, 4
sll $2, $2, 8
beq $2, $2, TAG734
lui $4, 14
TAG734:
srlv $1, $4, $4
bgez $4, TAG735
mfhi $1
mflo $1
TAG735:
bne $1, $1, TAG736
lb $1, 0($1)
ori $3, $1, 9
lbu $2, 0($3)
TAG736:
beq $2, $2, TAG737
mfhi $4
bgtz $2, TAG737
lui $1, 0
TAG737:
mflo $3
sw $3, 0($1)
subu $3, $3, $3
multu $3, $1
TAG738:
or $2, $3, $3
mfhi $2
mult $2, $3
srl $4, $3, 12
TAG739:
lui $1, 3
bltz $1, TAG740
mtlo $4
bne $1, $1, TAG740
TAG740:
lui $3, 7
divu $1, $3
mfhi $4
addiu $2, $4, 8
TAG741:
lui $4, 4
nor $3, $4, $2
sll $0, $0, 0
nor $4, $3, $3
TAG742:
addu $2, $4, $4
mult $2, $2
multu $4, $2
mthi $4
TAG743:
sll $0, $0, 0
mflo $4
lui $3, 13
ori $3, $4, 6
TAG744:
lui $3, 14
mult $3, $3
sll $4, $3, 13
mfhi $3
TAG745:
andi $2, $3, 15
mflo $2
mflo $3
sh $2, 0($2)
TAG746:
sb $3, 0($3)
sw $3, 0($3)
multu $3, $3
lbu $2, 0($3)
TAG747:
sh $2, 0($2)
beq $2, $2, TAG748
mthi $2
lhu $2, 0($2)
TAG748:
mtlo $2
mthi $2
lui $3, 13
sll $0, $0, 0
TAG749:
sll $0, $0, 0
divu $3, $3
blez $3, TAG750
lui $2, 8
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop