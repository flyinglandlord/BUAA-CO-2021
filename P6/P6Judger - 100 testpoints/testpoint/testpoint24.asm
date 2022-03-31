ori $1, $0, 1
ori $2, $0, 14
ori $3, $0, 7
ori $4, $0, 13
sw $1, 0($0)
sw $1, 4($0)
sw $3, 8($0)
sw $3, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $4, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $1, 44($0)
sw $1, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $1, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $3, 80($0)
sw $3, 84($0)
sw $4, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $4, 116($0)
sw $2, 120($0)
sw $3, 124($0)
lui $2, 0
lui $2, 12
mthi $2
sll $0, $0, 0
TAG1:
multu $4, $4
sb $4, 0($4)
lui $1, 12
or $1, $4, $4
TAG2:
slt $4, $1, $1
ori $4, $1, 3
blez $1, TAG3
lui $3, 0
TAG3:
beq $3, $3, TAG4
lui $2, 11
mflo $4
andi $1, $2, 2
TAG4:
beq $1, $1, TAG5
multu $1, $1
bltz $1, TAG5
mfhi $1
TAG5:
bgtz $1, TAG6
addu $1, $1, $1
lb $1, 0($1)
mult $1, $1
TAG6:
lh $3, 0($1)
lhu $4, 0($1)
lhu $2, 0($3)
bne $2, $4, TAG7
TAG7:
srav $3, $2, $2
sb $2, 0($3)
divu $2, $2
mult $2, $3
TAG8:
lui $3, 10
xori $2, $3, 4
mtlo $3
multu $2, $3
TAG9:
sll $0, $0, 0
lui $1, 12
lui $2, 15
mfhi $2
TAG10:
sh $2, 0($2)
mfhi $3
mthi $3
mtlo $2
TAG11:
mult $3, $3
slt $4, $3, $3
mflo $2
bgtz $3, TAG12
TAG12:
sll $0, $0, 0
mult $2, $2
ori $4, $2, 15
mflo $4
TAG13:
sll $0, $0, 0
bne $4, $4, TAG14
sll $0, $0, 0
sll $0, $0, 0
TAG14:
mfhi $1
multu $1, $1
sll $0, $0, 0
mthi $4
TAG15:
bne $1, $1, TAG16
lb $4, 0($1)
lui $1, 9
beq $1, $4, TAG16
TAG16:
sll $0, $0, 0
lb $3, -10000($2)
sb $1, 0($3)
divu $3, $1
TAG17:
divu $3, $3
sra $1, $3, 3
lb $3, 0($1)
beq $3, $3, TAG18
TAG18:
mtlo $3
mtlo $3
mult $3, $3
sb $3, 0($3)
TAG19:
sb $3, 0($3)
mfhi $4
bgez $4, TAG20
mtlo $4
TAG20:
bgtz $4, TAG21
and $4, $4, $4
lui $2, 10
bgez $4, TAG21
TAG21:
slt $4, $2, $2
sll $0, $0, 0
mult $2, $4
mflo $4
TAG22:
bne $4, $4, TAG23
mult $4, $4
mflo $2
lui $3, 4
TAG23:
mtlo $3
sll $0, $0, 0
addiu $2, $3, 9
mthi $3
TAG24:
lui $3, 5
bltz $2, TAG25
lui $4, 13
sll $0, $0, 0
TAG25:
mult $4, $4
mfhi $1
mtlo $1
blez $4, TAG26
TAG26:
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
andi $2, $1, 6
TAG27:
beq $2, $2, TAG28
addu $2, $2, $2
mfhi $1
mfhi $2
TAG28:
sll $4, $2, 2
lui $4, 12
mthi $4
lui $4, 0
TAG29:
mtlo $4
mthi $4
bgez $4, TAG30
or $2, $4, $4
TAG30:
beq $2, $2, TAG31
lw $3, 0($2)
lbu $2, 0($2)
mult $2, $2
TAG31:
blez $2, TAG32
slti $4, $2, 14
sw $4, 0($4)
sra $2, $4, 1
TAG32:
lw $3, 0($2)
div $2, $3
lui $1, 13
mtlo $1
TAG33:
addiu $3, $1, 0
srav $2, $1, $3
lui $3, 13
srlv $2, $1, $3
TAG34:
sll $0, $0, 0
beq $2, $2, TAG35
sll $0, $0, 0
beq $2, $2, TAG35
TAG35:
sll $0, $0, 0
lui $3, 2
bne $3, $2, TAG36
subu $1, $3, $2
TAG36:
bltz $1, TAG37
nor $2, $1, $1
mfhi $4
or $3, $2, $4
TAG37:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG38:
sll $0, $0, 0
addiu $4, $3, 11
addiu $2, $4, 3
sll $0, $0, 0
TAG39:
bne $1, $1, TAG40
mflo $3
sll $0, $0, 0
div $3, $3
TAG40:
bne $3, $3, TAG41
sll $0, $0, 0
srav $3, $3, $3
bne $3, $3, TAG41
TAG41:
mtlo $3
lui $4, 0
bltz $3, TAG42
mflo $1
TAG42:
divu $1, $1
mflo $3
sll $0, $0, 0
sb $3, 0($3)
TAG43:
lb $1, 0($3)
mthi $1
beq $3, $1, TAG44
addiu $2, $1, 13
TAG44:
addiu $4, $2, 13
divu $4, $4
blez $2, TAG45
mult $2, $2
TAG45:
bne $4, $4, TAG46
lb $4, 0($4)
beq $4, $4, TAG46
mtlo $4
TAG46:
lui $1, 3
bgez $4, TAG47
slt $2, $1, $1
lw $4, 0($1)
TAG47:
mflo $1
blez $4, TAG48
lui $3, 9
mthi $1
TAG48:
sll $0, $0, 0
or $1, $3, $3
multu $3, $3
beq $1, $1, TAG49
TAG49:
lui $4, 7
mult $1, $1
mthi $4
sllv $2, $1, $1
TAG50:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $3
bne $2, $2, TAG51
TAG51:
sll $0, $0, 0
multu $3, $3
slt $4, $1, $3
blez $1, TAG52
TAG52:
lh $2, 0($4)
lb $1, 0($4)
lui $4, 9
div $4, $1
TAG53:
sra $4, $4, 3
mult $4, $4
mthi $4
beq $4, $4, TAG54
TAG54:
mthi $4
lui $1, 6
andi $1, $4, 10
sb $4, 0($1)
TAG55:
bne $1, $1, TAG56
lui $2, 5
bltz $2, TAG56
sll $0, $0, 0
TAG56:
sll $0, $0, 0
beq $2, $2, TAG57
srav $1, $2, $2
multu $2, $1
TAG57:
sll $0, $0, 0
sll $0, $0, 0
sra $4, $1, 7
mtlo $4
TAG58:
mthi $4
bne $4, $4, TAG59
slti $3, $4, 9
mthi $4
TAG59:
sh $3, 0($3)
addiu $1, $3, 2
lui $1, 7
multu $3, $3
TAG60:
mtlo $1
ori $1, $1, 10
mfhi $2
mfhi $1
TAG61:
sh $1, 0($1)
sb $1, 0($1)
mtlo $1
mfhi $2
TAG62:
andi $2, $2, 5
subu $2, $2, $2
sltu $3, $2, $2
mthi $2
TAG63:
andi $2, $3, 8
bne $2, $2, TAG64
mfhi $3
sltu $3, $2, $3
TAG64:
lw $1, 0($3)
mult $1, $3
bgez $1, TAG65
sltiu $1, $3, 11
TAG65:
bne $1, $1, TAG66
divu $1, $1
sb $1, 0($1)
bgtz $1, TAG66
TAG66:
sb $1, 0($1)
mult $1, $1
lui $3, 11
sb $1, 0($1)
TAG67:
ori $2, $3, 6
mtlo $3
sll $1, $2, 3
lui $2, 10
TAG68:
mtlo $2
sll $0, $0, 0
multu $2, $2
srl $2, $2, 8
TAG69:
mthi $2
mthi $2
bne $2, $2, TAG70
sb $2, -2560($2)
TAG70:
mfhi $1
or $1, $1, $2
lui $3, 5
mfhi $3
TAG71:
mthi $3
div $3, $3
bne $3, $3, TAG72
lui $1, 4
TAG72:
sll $0, $0, 0
lw $1, -2560($4)
lui $2, 5
sll $0, $0, 0
TAG73:
lui $1, 3
sll $0, $0, 0
beq $3, $3, TAG74
lui $3, 8
TAG74:
nor $1, $3, $3
xor $4, $3, $1
divu $1, $4
mthi $3
TAG75:
addiu $3, $4, 10
mthi $4
sb $4, 0($3)
mfhi $1
TAG76:
lui $4, 6
lb $3, 1($1)
mtlo $3
lui $3, 12
TAG77:
sll $0, $0, 0
lui $3, 12
lui $4, 2
srl $2, $3, 3
TAG78:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG79
lui $1, 15
TAG79:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 7
sll $0, $0, 0
TAG80:
sltiu $1, $1, 4
sh $1, 0($1)
bne $1, $1, TAG81
mult $1, $1
TAG81:
sw $1, 0($1)
lui $2, 3
div $1, $2
sll $0, $0, 0
TAG82:
lui $3, 0
sw $1, 0($1)
bgez $3, TAG83
sb $3, 0($1)
TAG83:
mfhi $1
lw $2, 0($3)
sb $2, 0($1)
bgez $2, TAG84
TAG84:
mtlo $2
bne $2, $2, TAG85
mtlo $2
mfhi $3
TAG85:
xor $1, $3, $3
mfhi $3
bgez $3, TAG86
sub $4, $3, $1
TAG86:
mflo $4
lb $3, 0($4)
mthi $3
lh $2, 0($4)
TAG87:
addiu $2, $2, 14
mtlo $2
bltz $2, TAG88
divu $2, $2
TAG88:
srav $2, $2, $2
lbu $1, 0($2)
multu $2, $1
and $1, $2, $2
TAG89:
sh $1, 0($1)
bne $1, $1, TAG90
sh $1, 0($1)
bne $1, $1, TAG90
TAG90:
sh $1, 0($1)
or $4, $1, $1
sh $4, 0($1)
sb $1, 0($4)
TAG91:
addi $1, $4, 14
addiu $4, $1, 14
mfhi $1
bne $4, $4, TAG92
TAG92:
lui $3, 2
beq $3, $1, TAG93
sll $0, $0, 0
beq $1, $3, TAG93
TAG93:
lui $4, 0
lui $2, 2
multu $2, $4
lui $4, 13
TAG94:
beq $4, $4, TAG95
sll $0, $0, 0
ori $2, $4, 2
or $3, $2, $4
TAG95:
sltu $2, $3, $3
mtlo $3
multu $3, $2
lh $3, 0($2)
TAG96:
lui $4, 1
sltu $1, $4, $4
or $3, $4, $3
mfhi $4
TAG97:
mfhi $2
bne $2, $4, TAG98
mflo $4
bgez $4, TAG98
TAG98:
mfhi $3
bne $3, $4, TAG99
lui $2, 6
mtlo $4
TAG99:
sll $0, $0, 0
beq $3, $3, TAG100
lui $1, 5
lui $2, 0
TAG100:
sllv $1, $2, $2
lui $3, 1
sll $0, $0, 0
xori $2, $1, 4
TAG101:
mthi $2
xor $4, $2, $2
mfhi $1
mtlo $4
TAG102:
multu $1, $1
sll $3, $1, 13
mflo $4
ori $3, $3, 5
TAG103:
subu $1, $3, $3
addu $2, $3, $1
mthi $1
mult $1, $1
TAG104:
addu $2, $2, $2
sll $0, $0, 0
lui $2, 7
blez $2, TAG105
TAG105:
sll $0, $0, 0
mtlo $2
sra $2, $2, 11
sw $2, -224($2)
TAG106:
mthi $2
sh $2, -224($2)
xor $3, $2, $2
mthi $2
TAG107:
addi $1, $3, 13
mthi $1
multu $1, $1
slti $4, $1, 1
TAG108:
blez $4, TAG109
lui $4, 14
lui $2, 6
lui $4, 15
TAG109:
mthi $4
divu $4, $4
bgtz $4, TAG110
mult $4, $4
TAG110:
mtlo $4
bne $4, $4, TAG111
subu $3, $4, $4
mfhi $1
TAG111:
lui $3, 6
sll $1, $3, 15
sw $1, 0($1)
bgez $3, TAG112
TAG112:
sh $1, 0($1)
srl $1, $1, 13
bne $1, $1, TAG113
mult $1, $1
TAG113:
sllv $4, $1, $1
mflo $4
sh $1, 0($4)
sw $4, 0($4)
TAG114:
bltz $4, TAG115
lui $1, 10
sll $0, $0, 0
bne $4, $1, TAG115
TAG115:
mflo $2
sltiu $2, $1, 0
lh $2, 0($2)
lw $3, 0($2)
TAG116:
mult $3, $3
lui $4, 9
sw $3, 0($3)
subu $4, $4, $3
TAG117:
lui $1, 11
addu $1, $1, $1
mthi $1
blez $1, TAG118
TAG118:
sll $0, $0, 0
mtlo $1
mfhi $2
mtlo $2
TAG119:
sll $0, $0, 0
slti $4, $2, 3
mflo $3
blez $3, TAG120
TAG120:
sll $0, $0, 0
beq $3, $3, TAG121
lui $3, 0
mtlo $3
TAG121:
beq $3, $3, TAG122
mfhi $1
lui $2, 2
bgez $2, TAG122
TAG122:
slti $3, $2, 1
add $1, $3, $2
div $1, $1
sll $0, $0, 0
TAG123:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $1, TAG124
slti $2, $1, 13
TAG124:
bltz $2, TAG125
srav $3, $2, $2
subu $4, $3, $2
mthi $2
TAG125:
mthi $4
sllv $3, $4, $4
mfhi $1
bgtz $1, TAG126
TAG126:
sh $1, 0($1)
mult $1, $1
subu $3, $1, $1
sra $4, $3, 2
TAG127:
sub $1, $4, $4
beq $1, $1, TAG128
mfhi $4
sb $1, 0($4)
TAG128:
mflo $4
mthi $4
xori $4, $4, 3
mflo $3
TAG129:
lb $3, 0($3)
mult $3, $3
srl $3, $3, 4
mtlo $3
TAG130:
lbu $2, 0($3)
srav $3, $3, $3
addi $2, $2, 14
mfhi $3
TAG131:
andi $4, $3, 2
sb $4, 0($3)
subu $3, $3, $3
sw $3, 0($3)
TAG132:
lui $4, 0
bltz $4, TAG133
slt $3, $4, $3
sw $3, 0($3)
TAG133:
bgtz $3, TAG134
lh $1, 0($3)
bne $3, $1, TAG134
mthi $1
TAG134:
mthi $1
addiu $2, $1, 13
addi $1, $1, 6
blez $1, TAG135
TAG135:
sb $1, 0($1)
div $1, $1
blez $1, TAG136
mthi $1
TAG136:
sltiu $2, $1, 9
andi $1, $2, 6
srl $2, $1, 2
mtlo $2
TAG137:
multu $2, $2
nor $4, $2, $2
lui $4, 5
divu $4, $4
TAG138:
multu $4, $4
mfhi $2
sb $2, 0($2)
div $4, $2
TAG139:
xori $2, $2, 3
lui $4, 11
mfhi $4
beq $2, $4, TAG140
TAG140:
sb $4, 0($4)
sb $4, 0($4)
mfhi $3
bgtz $4, TAG141
TAG141:
mfhi $3
bgez $3, TAG142
mtlo $3
mfhi $2
TAG142:
bgtz $2, TAG143
lui $2, 14
sw $2, 0($2)
lh $4, 0($2)
TAG143:
mtlo $4
srlv $2, $4, $4
or $2, $2, $2
srav $3, $4, $2
TAG144:
sb $3, 0($3)
xor $2, $3, $3
bne $2, $3, TAG145
lui $1, 8
TAG145:
beq $1, $1, TAG146
mtlo $1
mfhi $3
sb $1, 0($3)
TAG146:
mflo $3
bltz $3, TAG147
sll $0, $0, 0
sll $0, $0, 0
TAG147:
sll $0, $0, 0
lb $2, 0($4)
divu $3, $2
xor $4, $4, $2
TAG148:
mthi $4
sh $4, 0($4)
xor $1, $4, $4
mtlo $4
TAG149:
or $4, $1, $1
lhu $3, 0($1)
mult $4, $3
bltz $4, TAG150
TAG150:
lhu $4, 0($3)
mfhi $4
beq $3, $3, TAG151
mfhi $4
TAG151:
mflo $3
lhu $1, 0($4)
mfhi $3
srav $4, $4, $3
TAG152:
multu $4, $4
multu $4, $4
mfhi $3
bne $4, $3, TAG153
TAG153:
multu $3, $3
lui $3, 9
sra $1, $3, 12
sll $0, $0, 0
TAG154:
multu $1, $1
blez $1, TAG155
lb $3, -144($1)
addiu $1, $1, 0
TAG155:
beq $1, $1, TAG156
ori $2, $1, 5
addu $1, $2, $2
mthi $1
TAG156:
bne $1, $1, TAG157
srl $4, $1, 9
multu $1, $4
lbu $1, -144($1)
TAG157:
sh $1, 0($1)
sh $1, 0($1)
srlv $3, $1, $1
addi $2, $1, 13
TAG158:
mult $2, $2
mfhi $1
mtlo $1
mtlo $2
TAG159:
mflo $4
beq $4, $4, TAG160
multu $4, $1
srl $4, $4, 4
TAG160:
slti $1, $4, 12
bltz $1, TAG161
lui $1, 0
slti $2, $4, 1
TAG161:
slti $2, $2, 13
mtlo $2
mflo $3
lb $2, 0($2)
TAG162:
mthi $2
mtlo $2
lh $1, 0($2)
blez $2, TAG163
TAG163:
mfhi $3
sra $2, $3, 2
mult $3, $1
subu $2, $1, $1
TAG164:
lhu $3, 0($2)
sb $3, 0($2)
mult $2, $2
bltz $2, TAG165
TAG165:
sh $3, 0($3)
lb $3, 0($3)
sltiu $3, $3, 1
div $3, $3
TAG166:
mtlo $3
lbu $3, 0($3)
lui $2, 7
mtlo $2
TAG167:
blez $2, TAG168
mtlo $2
sll $0, $0, 0
divu $2, $2
TAG168:
mthi $2
sll $0, $0, 0
sltiu $3, $2, 2
sltiu $1, $3, 14
TAG169:
addiu $3, $1, 0
mfhi $2
mthi $1
addiu $2, $3, 9
TAG170:
sltu $1, $2, $2
addiu $4, $2, 3
bltz $2, TAG171
slt $1, $1, $4
TAG171:
sb $1, 0($1)
andi $1, $1, 15
mtlo $1
bgtz $1, TAG172
TAG172:
lb $3, 0($1)
sb $1, 0($3)
addiu $1, $3, 8
bgtz $1, TAG173
TAG173:
srav $4, $1, $1
mtlo $1
srlv $2, $1, $1
sb $4, 0($1)
TAG174:
and $2, $2, $2
sw $2, 0($2)
lui $2, 10
mflo $3
TAG175:
mfhi $1
addu $2, $3, $1
lbu $3, 0($1)
multu $3, $2
TAG176:
xori $3, $3, 15
lui $2, 4
sb $3, 0($3)
sll $0, $0, 0
TAG177:
and $4, $2, $2
srlv $1, $2, $2
mflo $2
lb $2, 0($2)
TAG178:
ori $1, $2, 12
sb $1, 0($1)
ori $4, $1, 0
divu $1, $4
TAG179:
bgtz $4, TAG180
sh $4, 0($4)
mflo $1
bltz $4, TAG180
TAG180:
lui $2, 13
lui $2, 13
lui $1, 12
lui $2, 13
TAG181:
bne $2, $2, TAG182
andi $1, $2, 14
mult $1, $1
ori $1, $2, 13
TAG182:
bne $1, $1, TAG183
sll $0, $0, 0
div $1, $1
mthi $1
TAG183:
xor $1, $1, $1
bne $1, $1, TAG184
slti $1, $1, 13
sra $4, $1, 15
TAG184:
mthi $4
lui $3, 12
lb $2, 0($4)
lh $2, 0($4)
TAG185:
sb $2, 0($2)
sw $2, 0($2)
blez $2, TAG186
lui $4, 5
TAG186:
bltz $4, TAG187
mflo $2
mthi $2
beq $4, $4, TAG187
TAG187:
lui $4, 8
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG188:
mult $3, $3
sltiu $4, $3, 0
lui $2, 2
sll $0, $0, 0
TAG189:
lui $1, 3
mflo $1
blez $2, TAG190
lb $3, 0($1)
TAG190:
mult $3, $3
beq $3, $3, TAG191
sll $2, $3, 7
lui $1, 2
TAG191:
lui $4, 10
add $1, $1, $1
bne $4, $4, TAG192
mthi $4
TAG192:
mflo $1
mfhi $4
beq $1, $4, TAG193
mthi $4
TAG193:
mtlo $4
or $3, $4, $4
lui $2, 4
sll $0, $0, 0
TAG194:
mfhi $2
mult $2, $2
bgtz $2, TAG195
mthi $2
TAG195:
mfhi $3
ori $1, $3, 11
sll $0, $0, 0
bne $2, $2, TAG196
TAG196:
xor $1, $1, $1
mfhi $1
xor $4, $1, $1
bgtz $1, TAG197
TAG197:
sb $4, 0($4)
bgtz $4, TAG198
mult $4, $4
sra $1, $4, 13
TAG198:
multu $1, $1
lhu $4, 0($1)
multu $1, $4
mthi $1
TAG199:
lui $3, 7
lui $1, 13
andi $3, $4, 14
mult $4, $3
TAG200:
ori $2, $3, 15
nor $4, $3, $2
mflo $4
mult $3, $2
TAG201:
multu $4, $4
sb $4, 0($4)
mflo $4
xori $1, $4, 9
TAG202:
slti $2, $1, 4
lui $3, 7
mfhi $2
lbu $3, 0($2)
TAG203:
mult $3, $3
slti $4, $3, 3
mthi $3
addiu $3, $4, 1
TAG204:
div $3, $3
divu $3, $3
sb $3, 0($3)
multu $3, $3
TAG205:
lhu $4, 0($3)
sra $3, $3, 7
lui $3, 5
bne $3, $4, TAG206
TAG206:
srl $3, $3, 12
mult $3, $3
multu $3, $3
sw $3, 0($3)
TAG207:
lui $1, 13
lui $3, 13
bne $1, $3, TAG208
mflo $1
TAG208:
beq $1, $1, TAG209
lhu $1, 0($1)
bltz $1, TAG209
div $1, $1
TAG209:
mtlo $1
lw $4, 0($1)
or $1, $4, $1
lhu $3, 0($1)
TAG210:
blez $3, TAG211
mfhi $2
srl $3, $2, 9
bgtz $3, TAG211
TAG211:
multu $3, $3
mthi $3
blez $3, TAG212
lh $3, 0($3)
TAG212:
mfhi $3
mult $3, $3
lui $4, 14
lui $3, 0
TAG213:
addu $3, $3, $3
beq $3, $3, TAG214
mflo $4
bne $4, $3, TAG214
TAG214:
mfhi $3
mult $3, $4
mflo $4
lw $1, 0($4)
TAG215:
sllv $3, $1, $1
lhu $4, 0($1)
subu $4, $1, $3
lh $4, 0($4)
TAG216:
sltu $1, $4, $4
mfhi $4
add $3, $1, $1
sh $4, 0($3)
TAG217:
srl $1, $3, 12
srav $4, $1, $3
lui $1, 11
div $3, $1
TAG218:
div $1, $1
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG219:
lui $3, 1
lui $2, 10
sll $0, $0, 0
bne $2, $4, TAG220
TAG220:
addiu $3, $3, 0
sll $0, $0, 0
subu $2, $3, $3
mtlo $3
TAG221:
multu $2, $2
blez $2, TAG222
mflo $2
mflo $1
TAG222:
beq $1, $1, TAG223
mfhi $4
lhu $4, 0($4)
andi $1, $4, 5
TAG223:
and $1, $1, $1
beq $1, $1, TAG224
sll $0, $0, 0
mfhi $2
TAG224:
bltz $2, TAG225
mtlo $2
multu $2, $2
sw $2, 0($2)
TAG225:
blez $2, TAG226
mtlo $2
lw $2, 0($2)
mult $2, $2
TAG226:
addiu $3, $2, 2
bne $3, $2, TAG227
div $2, $3
sb $3, 0($3)
TAG227:
bltz $3, TAG228
mthi $3
ori $2, $3, 13
lbu $3, 0($3)
TAG228:
mult $3, $3
mfhi $4
mthi $3
srl $3, $4, 15
TAG229:
multu $3, $3
sw $3, 0($3)
bne $3, $3, TAG230
mfhi $2
TAG230:
lhu $3, 0($2)
mthi $2
mult $3, $2
mfhi $1
TAG231:
mfhi $3
mfhi $4
beq $1, $4, TAG232
sltu $1, $4, $1
TAG232:
sra $1, $1, 7
blez $1, TAG233
lui $3, 1
mtlo $1
TAG233:
mult $3, $3
blez $3, TAG234
sll $0, $0, 0
mthi $3
TAG234:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
srl $3, $2, 0
TAG235:
mthi $3
mult $3, $3
lh $1, 0($3)
add $2, $1, $1
TAG236:
mflo $3
sh $2, 0($2)
mfhi $4
lui $4, 1
TAG237:
sllv $1, $4, $4
sll $0, $0, 0
mult $4, $1
xori $4, $1, 5
TAG238:
andi $3, $4, 12
lui $1, 11
blez $1, TAG239
sra $2, $3, 1
TAG239:
bne $2, $2, TAG240
addiu $2, $2, 11
lb $2, 0($2)
mtlo $2
TAG240:
blez $2, TAG241
mult $2, $2
nor $4, $2, $2
mflo $3
TAG241:
beq $3, $3, TAG242
slti $1, $3, 11
nor $2, $3, $1
mfhi $4
TAG242:
lui $2, 10
mthi $4
div $2, $2
lui $2, 7
TAG243:
mtlo $2
bgtz $2, TAG244
mthi $2
mult $2, $2
TAG244:
bgez $2, TAG245
sll $0, $0, 0
mtlo $2
sltu $3, $2, $2
TAG245:
bne $3, $3, TAG246
addu $3, $3, $3
bltz $3, TAG246
sb $3, 0($3)
TAG246:
bne $3, $3, TAG247
lui $2, 1
lw $1, 0($3)
mfhi $1
TAG247:
bgez $1, TAG248
mtlo $1
mflo $4
ori $3, $1, 7
TAG248:
bgtz $3, TAG249
lui $4, 0
div $4, $4
divu $3, $4
TAG249:
slt $1, $4, $4
multu $4, $4
mflo $3
andi $4, $4, 5
TAG250:
lhu $4, 0($4)
lui $4, 7
sll $0, $0, 0
bne $4, $4, TAG251
TAG251:
mflo $3
blez $3, TAG252
sltu $3, $3, $3
mfhi $4
TAG252:
lui $1, 0
and $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG253:
slti $1, $4, 8
mtlo $4
bgez $1, TAG254
xori $1, $4, 9
TAG254:
sll $0, $0, 0
lui $2, 2
mfhi $1
mtlo $2
TAG255:
mthi $1
mflo $4
lui $3, 13
blez $4, TAG256
TAG256:
mfhi $2
lui $2, 2
divu $2, $3
addu $3, $3, $3
TAG257:
mflo $2
mflo $2
beq $3, $3, TAG258
lui $2, 15
TAG258:
sltu $3, $2, $2
lui $2, 3
lui $3, 3
sll $0, $0, 0
TAG259:
sra $4, $3, 5
lhu $2, -6144($4)
ori $3, $3, 3
subu $2, $3, $3
TAG260:
lb $4, 0($2)
sw $2, 0($4)
mflo $1
srav $2, $4, $4
TAG261:
sw $2, 0($2)
mfhi $3
lhu $1, 0($2)
sll $0, $0, 0
TAG262:
mtlo $1
mfhi $4
bgez $1, TAG263
lh $2, 0($1)
TAG263:
or $3, $2, $2
mthi $2
ori $2, $2, 12
bgtz $2, TAG264
TAG264:
mfhi $3
mult $3, $3
beq $2, $2, TAG265
xori $2, $3, 14
TAG265:
bne $2, $2, TAG266
sh $2, 0($2)
mflo $4
mflo $1
TAG266:
mult $1, $1
andi $4, $1, 8
bne $1, $1, TAG267
mflo $4
TAG267:
beq $4, $4, TAG268
lui $3, 4
bgtz $4, TAG268
multu $4, $3
TAG268:
sll $0, $0, 0
lhu $3, 0($1)
blez $3, TAG269
mflo $4
TAG269:
mult $4, $4
mfhi $4
lui $2, 0
bne $4, $4, TAG270
TAG270:
mthi $2
beq $2, $2, TAG271
lw $3, 0($2)
mfhi $3
TAG271:
mthi $3
sra $2, $3, 2
addiu $1, $2, 14
mthi $2
TAG272:
beq $1, $1, TAG273
srlv $2, $1, $1
mthi $2
lbu $2, 0($2)
TAG273:
lbu $3, 0($2)
bne $3, $2, TAG274
multu $3, $3
mtlo $2
TAG274:
lw $2, 0($3)
mtlo $3
lw $4, 0($3)
add $2, $3, $3
TAG275:
mthi $2
mflo $3
slti $4, $2, 3
addi $3, $2, 13
TAG276:
mtlo $3
lbu $4, 0($3)
bltz $3, TAG277
mthi $4
TAG277:
mthi $4
srlv $4, $4, $4
and $1, $4, $4
lhu $1, 0($4)
TAG278:
lb $4, 0($1)
mflo $3
andi $2, $3, 13
sw $3, 0($4)
TAG279:
srl $4, $2, 7
multu $4, $4
sh $4, 0($4)
multu $2, $4
TAG280:
multu $4, $4
sh $4, 0($4)
nor $4, $4, $4
mthi $4
TAG281:
div $4, $4
and $1, $4, $4
mfhi $1
lui $4, 9
TAG282:
slti $1, $4, 11
sll $0, $0, 0
subu $3, $1, $2
sw $1, 13($3)
TAG283:
divu $3, $3
divu $3, $3
mtlo $3
bltz $3, TAG284
TAG284:
sb $3, 13($3)
lbu $4, 13($3)
blez $3, TAG285
lw $2, 13($3)
TAG285:
beq $2, $2, TAG286
sh $2, -243($2)
lb $3, 0($2)
lb $2, 0($2)
TAG286:
nor $1, $2, $2
lh $4, 244($1)
xori $3, $2, 14
mfhi $4
TAG287:
mtlo $4
srl $4, $4, 6
subu $2, $4, $4
mult $4, $4
TAG288:
sb $2, 0($2)
add $1, $2, $2
mflo $1
mtlo $1
TAG289:
mtlo $1
mfhi $4
andi $1, $4, 4
sra $3, $1, 6
TAG290:
mflo $2
lbu $2, 0($3)
srlv $1, $2, $2
bltz $1, TAG291
TAG291:
mflo $1
bne $1, $1, TAG292
mtlo $1
sh $1, 0($1)
TAG292:
lui $4, 0
mfhi $3
mult $1, $4
mtlo $3
TAG293:
mtlo $3
sw $3, 0($3)
bgtz $3, TAG294
sb $3, 0($3)
TAG294:
lui $3, 3
sll $2, $3, 3
lui $1, 15
lui $4, 15
TAG295:
beq $4, $4, TAG296
mtlo $4
mult $4, $4
nor $4, $4, $4
TAG296:
divu $4, $4
multu $4, $4
srlv $2, $4, $4
beq $2, $4, TAG297
TAG297:
lui $3, 4
lui $4, 14
multu $3, $3
mthi $4
TAG298:
mfhi $2
mthi $2
mthi $4
sll $0, $0, 0
TAG299:
beq $2, $2, TAG300
sll $0, $0, 0
lui $4, 3
mtlo $2
TAG300:
sll $0, $0, 0
slt $1, $4, $4
bltz $1, TAG301
mthi $4
TAG301:
xor $4, $1, $1
srl $3, $4, 15
bne $4, $4, TAG302
lbu $3, 0($4)
TAG302:
bne $3, $3, TAG303
sw $3, 0($3)
or $4, $3, $3
sh $3, 0($4)
TAG303:
lh $3, 0($4)
lui $3, 13
lb $3, 0($4)
mflo $4
TAG304:
blez $4, TAG305
sb $4, 0($4)
multu $4, $4
mfhi $4
TAG305:
sh $4, 0($4)
srlv $2, $4, $4
mtlo $2
mtlo $2
TAG306:
lui $4, 2
divu $4, $4
bne $4, $4, TAG307
addu $1, $4, $2
TAG307:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
or $2, $1, $1
TAG308:
addu $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
sllv $4, $4, $2
TAG309:
sllv $1, $4, $4
sltiu $4, $4, 13
mfhi $2
bgtz $4, TAG310
TAG310:
lui $1, 3
mtlo $1
sb $2, 0($2)
lui $2, 1
TAG311:
mfhi $3
mflo $2
bgtz $2, TAG312
sll $0, $0, 0
TAG312:
sll $0, $0, 0
mthi $4
mflo $4
or $1, $4, $4
TAG313:
bgez $1, TAG314
sll $0, $0, 0
mthi $1
bne $1, $1, TAG314
TAG314:
divu $1, $1
sll $0, $0, 0
bne $4, $1, TAG315
nor $4, $4, $1
TAG315:
multu $4, $4
div $4, $4
sll $0, $0, 0
mfhi $2
TAG316:
sra $2, $2, 13
mthi $2
srlv $4, $2, $2
mfhi $3
TAG317:
bne $3, $3, TAG318
mthi $3
sw $3, 0($3)
bgtz $3, TAG318
TAG318:
xori $4, $3, 4
bgtz $3, TAG319
mult $3, $3
mtlo $4
TAG319:
blez $4, TAG320
sll $1, $4, 2
sh $1, 0($4)
mthi $1
TAG320:
bgez $1, TAG321
addiu $3, $1, 3
mthi $3
mtlo $3
TAG321:
lui $4, 11
lui $3, 6
addu $4, $3, $3
mtlo $3
TAG322:
mult $4, $4
bgtz $4, TAG323
mfhi $2
lb $3, 0($2)
TAG323:
mfhi $2
srlv $1, $3, $3
divu $3, $1
sh $3, -144($2)
TAG324:
sll $0, $0, 0
sw $1, -144($2)
mfhi $4
beq $4, $2, TAG325
TAG325:
sh $4, 0($4)
mtlo $4
bne $4, $4, TAG326
mflo $1
TAG326:
beq $1, $1, TAG327
lw $4, 0($1)
sw $4, 0($4)
mtlo $1
TAG327:
lui $4, 7
addiu $1, $4, 1
lui $3, 2
mfhi $2
TAG328:
lb $1, 0($2)
srl $3, $2, 10
lui $3, 9
mflo $4
TAG329:
sllv $2, $4, $4
bgtz $4, TAG330
mtlo $4
mfhi $4
TAG330:
sllv $2, $4, $4
beq $4, $4, TAG331
nor $2, $2, $2
multu $2, $2
TAG331:
multu $2, $2
sh $2, 1($2)
beq $2, $2, TAG332
multu $2, $2
TAG332:
srlv $3, $2, $2
beq $3, $3, TAG333
mtlo $3
blez $2, TAG333
TAG333:
lbu $1, 0($3)
lui $1, 13
sll $0, $0, 0
lui $2, 9
TAG334:
or $1, $2, $2
beq $2, $2, TAG335
sll $0, $0, 0
lh $4, 0($2)
TAG335:
lbu $2, 0($4)
mtlo $4
sh $2, 0($4)
sllv $3, $2, $4
TAG336:
mflo $3
bne $3, $3, TAG337
lw $4, 0($3)
sw $4, 0($3)
TAG337:
bgez $4, TAG338
mflo $2
mflo $1
bgtz $2, TAG338
TAG338:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $3
mfhi $1
TAG339:
mflo $3
mflo $3
mtlo $3
bgtz $3, TAG340
TAG340:
lui $3, 6
nor $4, $3, $3
mflo $3
lui $4, 12
TAG341:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
bgez $3, TAG342
TAG342:
ori $2, $3, 14
beq $3, $3, TAG343
sll $2, $3, 5
mthi $2
TAG343:
sll $0, $0, 0
bne $2, $2, TAG344
addiu $2, $2, 1
andi $2, $2, 14
TAG344:
blez $2, TAG345
lui $3, 10
mult $2, $3
mthi $3
TAG345:
sll $1, $3, 8
sll $2, $3, 10
addiu $1, $2, 7
bne $1, $1, TAG346
TAG346:
nor $3, $1, $1
addu $1, $3, $3
lui $3, 7
mthi $1
TAG347:
mtlo $3
beq $3, $3, TAG348
mthi $3
nor $1, $3, $3
TAG348:
srlv $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG349
TAG349:
xor $2, $1, $1
lui $1, 4
sh $1, 0($2)
sb $1, 0($2)
TAG350:
addiu $2, $1, 3
sltu $3, $2, $2
mfhi $3
blez $3, TAG351
TAG351:
lui $1, 5
sll $0, $0, 0
mult $3, $1
beq $1, $1, TAG352
TAG352:
mthi $1
mthi $1
bne $1, $1, TAG353
mthi $1
TAG353:
sll $0, $0, 0
lui $4, 14
div $4, $4
lui $2, 8
TAG354:
sll $0, $0, 0
addiu $3, $2, 10
sll $0, $0, 0
mflo $1
TAG355:
lui $2, 4
bgtz $1, TAG356
sll $0, $0, 0
andi $1, $1, 14
TAG356:
mult $1, $1
bltz $1, TAG357
sll $1, $1, 3
mflo $1
TAG357:
addiu $1, $1, 6
lbu $2, 0($1)
mflo $1
sb $1, 0($1)
TAG358:
bne $1, $1, TAG359
mthi $1
xori $4, $1, 15
sb $4, 0($1)
TAG359:
lhu $4, 0($4)
sltiu $2, $4, 13
sltu $4, $2, $4
srl $4, $4, 8
TAG360:
lhu $4, 0($4)
addu $4, $4, $4
mflo $1
subu $2, $4, $4
TAG361:
mfhi $3
bgtz $3, TAG362
mflo $4
nor $1, $4, $4
TAG362:
bgtz $1, TAG363
lb $2, 0($1)
xor $2, $2, $2
divu $1, $2
TAG363:
addu $1, $2, $2
slt $3, $2, $2
mflo $3
mtlo $3
TAG364:
mfhi $3
bne $3, $3, TAG365
lbu $4, 0($3)
lbu $2, 0($4)
TAG365:
sb $2, 0($2)
blez $2, TAG366
divu $2, $2
beq $2, $2, TAG366
TAG366:
mtlo $2
mthi $2
sb $2, 0($2)
mtlo $2
TAG367:
sb $2, 0($2)
bltz $2, TAG368
xori $1, $2, 2
divu $2, $2
TAG368:
lui $4, 11
beq $1, $4, TAG369
sll $4, $1, 0
beq $4, $4, TAG369
TAG369:
lui $4, 10
bgez $4, TAG370
mtlo $4
sh $4, 0($4)
TAG370:
sll $0, $0, 0
mfhi $2
bgtz $2, TAG371
mult $4, $2
TAG371:
lhu $4, 0($2)
lbu $1, -3584($4)
sh $1, 0($1)
sb $1, -3584($4)
TAG372:
sb $1, 0($1)
sub $1, $1, $1
mfhi $4
mult $1, $4
TAG373:
mthi $4
multu $4, $4
sw $4, 0($4)
mthi $4
TAG374:
addi $2, $4, 14
subu $2, $4, $2
bne $4, $2, TAG375
sb $4, 0($4)
TAG375:
slti $4, $2, 11
lui $3, 9
bne $2, $3, TAG376
lh $2, 14($2)
TAG376:
sh $2, 0($2)
mtlo $2
lhu $4, 0($2)
sh $4, 0($4)
TAG377:
xori $1, $4, 2
mfhi $4
lui $2, 1
mfhi $1
TAG378:
mtlo $1
slt $2, $1, $1
slt $3, $2, $2
mthi $1
TAG379:
bgtz $3, TAG380
mflo $3
srl $4, $3, 11
sw $3, 0($3)
TAG380:
mflo $3
multu $3, $4
lui $1, 0
ori $3, $1, 5
TAG381:
beq $3, $3, TAG382
mthi $3
srlv $4, $3, $3
blez $3, TAG382
TAG382:
sh $4, 0($4)
sb $4, 0($4)
lw $4, 0($4)
multu $4, $4
TAG383:
xori $2, $4, 11
addiu $2, $4, 5
addu $3, $4, $2
beq $2, $2, TAG384
TAG384:
sb $3, 0($3)
mfhi $4
sw $4, 0($4)
addiu $2, $3, 6
TAG385:
mult $2, $2
sb $2, 0($2)
lbu $4, 0($2)
lbu $4, 0($2)
TAG386:
multu $4, $4
mfhi $4
mthi $4
mflo $1
TAG387:
div $1, $1
sra $3, $1, 5
sll $4, $1, 0
div $3, $4
TAG388:
lb $3, 0($4)
subu $3, $4, $4
bgez $4, TAG389
add $4, $3, $4
TAG389:
beq $4, $4, TAG390
sllv $2, $4, $4
mtlo $4
sh $2, 0($4)
TAG390:
nor $2, $2, $2
bltz $2, TAG391
addu $3, $2, $2
sll $0, $0, 0
TAG391:
sll $0, $0, 0
lui $2, 13
xori $3, $2, 8
sll $0, $0, 0
TAG392:
mult $1, $1
sb $1, 0($1)
lbu $3, 0($1)
lb $2, 0($3)
TAG393:
bne $2, $2, TAG394
lb $1, 0($2)
sb $1, 0($2)
mfhi $4
TAG394:
mtlo $4
lhu $2, 0($4)
srl $3, $2, 13
sh $3, 0($2)
TAG395:
mtlo $3
beq $3, $3, TAG396
mtlo $3
lui $4, 15
TAG396:
sll $2, $4, 10
lui $2, 13
bne $2, $2, TAG397
slti $4, $2, 13
TAG397:
sh $4, 0($4)
mflo $4
sll $3, $4, 8
mthi $3
TAG398:
beq $3, $3, TAG399
lui $4, 0
lui $2, 3
mtlo $4
TAG399:
sll $0, $0, 0
or $3, $2, $2
addiu $2, $3, 14
bgez $2, TAG400
TAG400:
mflo $2
lui $1, 2
mfhi $4
srav $4, $4, $4
TAG401:
bgtz $4, TAG402
multu $4, $4
blez $4, TAG402
sltu $2, $4, $4
TAG402:
multu $2, $2
mfhi $3
sh $2, 0($3)
mult $2, $3
TAG403:
lui $4, 15
lui $2, 15
mtlo $4
mtlo $2
TAG404:
bne $2, $2, TAG405
slti $2, $2, 13
bgez $2, TAG405
lh $2, 0($2)
TAG405:
sb $2, 0($2)
lw $3, 0($2)
lui $2, 12
div $3, $2
TAG406:
bne $2, $2, TAG407
mtlo $2
bgtz $2, TAG407
sltu $3, $2, $2
TAG407:
lhu $2, 0($3)
sh $3, 0($2)
multu $2, $2
mtlo $3
TAG408:
sub $4, $2, $2
blez $4, TAG409
mult $4, $4
multu $4, $4
TAG409:
sw $4, 0($4)
addiu $1, $4, 4
sb $1, 0($4)
andi $1, $4, 2
TAG410:
mthi $1
lbu $4, 0($1)
mflo $2
mtlo $4
TAG411:
beq $2, $2, TAG412
mfhi $4
lh $4, 0($2)
lui $3, 9
TAG412:
sb $3, 0($3)
bgtz $3, TAG413
lui $1, 3
srl $4, $3, 15
TAG413:
beq $4, $4, TAG414
mthi $4
div $4, $4
mflo $3
TAG414:
lui $2, 15
mthi $3
bgtz $3, TAG415
sw $2, 0($3)
TAG415:
bne $2, $2, TAG416
slti $2, $2, 3
sb $2, 0($2)
mthi $2
TAG416:
beq $2, $2, TAG417
sw $2, 0($2)
mtlo $2
bgez $2, TAG417
TAG417:
sltu $3, $2, $2
lhu $2, 0($2)
bne $2, $2, TAG418
lw $3, 0($3)
TAG418:
lui $1, 2
mfhi $3
mfhi $4
bgtz $4, TAG419
TAG419:
mult $4, $4
beq $4, $4, TAG420
slti $3, $4, 0
addi $4, $3, 3
TAG420:
mtlo $4
bgtz $4, TAG421
lui $1, 13
lbu $3, 0($4)
TAG421:
mthi $3
lhu $3, 0($3)
lui $2, 15
lui $1, 7
TAG422:
slt $3, $1, $1
sh $3, 0($3)
slti $2, $3, 4
divu $2, $1
TAG423:
mfhi $2
subu $2, $2, $2
sllv $2, $2, $2
bgez $2, TAG424
TAG424:
sll $3, $2, 9
beq $2, $2, TAG425
srlv $1, $2, $3
xori $1, $1, 14
TAG425:
add $2, $1, $1
andi $4, $1, 1
sltiu $3, $2, 12
bne $1, $1, TAG426
TAG426:
sb $3, 0($3)
beq $3, $3, TAG427
addu $1, $3, $3
beq $3, $1, TAG427
TAG427:
mult $1, $1
sh $1, 0($1)
divu $1, $1
lbu $3, 0($1)
TAG428:
mtlo $3
lb $4, 0($3)
div $4, $4
lbu $4, 0($3)
TAG429:
sllv $4, $4, $4
lhu $2, 0($4)
bltz $2, TAG430
lui $2, 12
TAG430:
mthi $2
mflo $3
divu $3, $2
addu $2, $2, $2
TAG431:
mflo $3
sll $0, $0, 0
lui $3, 6
srav $3, $4, $3
TAG432:
addiu $4, $3, 1
lui $4, 7
lbu $4, 0($3)
mflo $2
TAG433:
mthi $2
beq $2, $2, TAG434
mflo $3
sw $3, 0($3)
TAG434:
lh $2, 0($3)
sb $3, -256($2)
sll $1, $2, 14
nor $2, $2, $2
TAG435:
mthi $2
mult $2, $2
bltz $2, TAG436
multu $2, $2
TAG436:
mtlo $2
lui $1, 6
mfhi $3
divu $3, $3
TAG437:
div $3, $3
subu $4, $3, $3
subu $1, $4, $4
bgtz $3, TAG438
TAG438:
mthi $1
addi $4, $1, 14
div $1, $4
sltu $1, $4, $4
TAG439:
mtlo $1
mtlo $1
mthi $1
sb $1, 0($1)
TAG440:
slt $3, $1, $1
lh $3, 0($3)
lui $2, 14
lui $1, 4
TAG441:
mfhi $3
sra $3, $3, 6
bne $1, $3, TAG442
mfhi $4
TAG442:
mtlo $4
sw $4, 0($4)
add $3, $4, $4
sb $4, 0($3)
TAG443:
mfhi $4
bne $4, $3, TAG444
mult $4, $4
lb $3, 0($3)
TAG444:
sw $3, 0($3)
mfhi $4
beq $3, $3, TAG445
ori $4, $4, 9
TAG445:
blez $4, TAG446
lui $1, 12
sra $3, $4, 8
multu $3, $3
TAG446:
ori $3, $3, 5
xor $2, $3, $3
lbu $4, 0($3)
mthi $4
TAG447:
blez $4, TAG448
multu $4, $4
mthi $4
ori $4, $4, 11
TAG448:
srl $2, $4, 15
sh $2, 0($2)
sb $2, 0($4)
lui $1, 2
TAG449:
bgez $1, TAG450
and $3, $1, $1
lui $2, 1
mthi $2
TAG450:
bne $2, $2, TAG451
sllv $3, $2, $2
bltz $3, TAG451
ori $3, $3, 15
TAG451:
sb $3, 0($3)
srlv $1, $3, $3
lui $4, 4
div $1, $3
TAG452:
sltiu $2, $4, 3
blez $4, TAG453
sra $2, $4, 2
beq $4, $2, TAG453
TAG453:
sll $0, $0, 0
sh $2, 0($1)
mthi $1
lhu $1, 0($1)
TAG454:
multu $1, $1
bgtz $1, TAG455
mthi $1
sll $4, $1, 12
TAG455:
subu $4, $4, $4
sltiu $3, $4, 6
multu $4, $4
lui $3, 15
TAG456:
divu $3, $3
addiu $4, $3, 6
addiu $1, $4, 12
mtlo $3
TAG457:
divu $1, $1
mtlo $1
beq $1, $1, TAG458
sll $0, $0, 0
TAG458:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG459:
mthi $2
blez $2, TAG460
sb $2, 0($2)
mthi $2
TAG460:
mfhi $4
mult $2, $2
mult $4, $2
mult $2, $2
TAG461:
add $4, $4, $4
mflo $4
mult $4, $4
lui $2, 15
TAG462:
beq $2, $2, TAG463
sll $0, $0, 0
mflo $2
addi $1, $2, 1
TAG463:
srav $4, $1, $1
multu $1, $4
bltz $4, TAG464
sll $0, $0, 0
TAG464:
ori $2, $4, 9
srav $2, $2, $4
mfhi $4
mthi $4
TAG465:
beq $4, $4, TAG466
lui $4, 11
lh $2, 0($4)
xor $1, $4, $4
TAG466:
lui $3, 13
sll $0, $0, 0
and $3, $1, $1
mflo $4
TAG467:
addiu $1, $4, 4
multu $4, $1
lui $2, 7
blez $1, TAG468
TAG468:
divu $2, $2
andi $2, $2, 13
bgtz $2, TAG469
mfhi $4
TAG469:
multu $4, $4
andi $1, $4, 10
sll $1, $1, 9
blez $1, TAG470
TAG470:
sw $1, 0($1)
mfhi $2
lhu $2, 0($2)
mult $1, $2
TAG471:
andi $2, $2, 2
blez $2, TAG472
sw $2, 0($2)
multu $2, $2
TAG472:
mthi $2
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
TAG473:
multu $2, $2
bgtz $2, TAG474
mtlo $2
bne $2, $2, TAG474
TAG474:
mthi $2
sltiu $4, $2, 1
sb $4, 0($4)
addi $1, $2, 13
TAG475:
lbu $2, 0($1)
or $4, $2, $1
sh $1, 0($2)
bne $2, $1, TAG476
TAG476:
sb $4, 0($4)
xori $3, $4, 0
bgtz $4, TAG477
and $1, $4, $3
TAG477:
bgtz $1, TAG478
sb $1, 0($1)
lbu $3, 0($1)
lui $2, 5
TAG478:
beq $2, $2, TAG479
lui $3, 4
lhu $4, 0($2)
mtlo $2
TAG479:
bgez $4, TAG480
div $4, $4
lw $3, 0($4)
sw $4, 0($3)
TAG480:
srlv $4, $3, $3
sll $0, $0, 0
or $1, $3, $3
mtlo $1
TAG481:
beq $1, $1, TAG482
lui $1, 0
srav $3, $1, $1
bgtz $3, TAG482
TAG482:
divu $3, $3
mult $3, $3
xori $1, $3, 9
bne $3, $3, TAG483
TAG483:
sll $0, $0, 0
mfhi $1
mflo $2
andi $1, $2, 5
TAG484:
bgtz $1, TAG485
mult $1, $1
mflo $2
nor $2, $1, $2
TAG485:
beq $2, $2, TAG486
sw $2, 1($2)
lui $1, 13
mfhi $3
TAG486:
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
mfhi $1
TAG487:
multu $1, $1
subu $1, $1, $1
multu $1, $1
sw $1, 0($1)
TAG488:
mult $1, $1
mthi $1
mthi $1
sltiu $2, $1, 8
TAG489:
lbu $4, 0($2)
addiu $4, $4, 0
blez $4, TAG490
lhu $3, 0($4)
TAG490:
mthi $3
mthi $3
slt $4, $3, $3
bne $3, $4, TAG491
TAG491:
mult $4, $4
mthi $4
bne $4, $4, TAG492
mflo $3
TAG492:
mthi $3
mult $3, $3
lhu $2, 0($3)
bne $3, $3, TAG493
TAG493:
lui $2, 3
addiu $4, $2, 7
xor $1, $4, $2
sll $0, $0, 0
TAG494:
bgez $1, TAG495
divu $1, $1
mflo $3
mfhi $3
TAG495:
multu $3, $3
blez $3, TAG496
srl $2, $3, 4
div $2, $2
TAG496:
mfhi $1
sw $2, 0($1)
bgtz $1, TAG497
mflo $2
TAG497:
sb $2, 0($2)
sb $2, 0($2)
subu $1, $2, $2
blez $1, TAG498
TAG498:
lb $4, 0($1)
bltz $4, TAG499
add $1, $1, $4
or $2, $1, $1
TAG499:
lui $2, 11
lui $3, 1
xor $3, $2, $2
subu $2, $2, $2
TAG500:
addi $3, $2, 8
lui $4, 6
beq $2, $4, TAG501
mflo $2
TAG501:
mfhi $4
bgtz $2, TAG502
sra $1, $2, 3
lui $4, 9
TAG502:
slt $2, $4, $4
subu $2, $2, $4
mfhi $1
bne $4, $4, TAG503
TAG503:
xor $4, $1, $1
lui $3, 7
mthi $4
blez $1, TAG504
TAG504:
sll $0, $0, 0
mflo $1
sb $1, 0($1)
mthi $3
TAG505:
blez $1, TAG506
mflo $2
div $1, $2
sw $1, 0($1)
TAG506:
mflo $4
beq $4, $4, TAG507
lui $4, 0
div $4, $4
TAG507:
sw $4, 0($4)
mult $4, $4
multu $4, $4
beq $4, $4, TAG508
TAG508:
multu $4, $4
multu $4, $4
add $4, $4, $4
sb $4, 0($4)
TAG509:
add $1, $4, $4
lui $4, 14
mfhi $3
xori $4, $4, 11
TAG510:
mthi $4
sll $0, $0, 0
lui $3, 8
beq $4, $4, TAG511
TAG511:
mtlo $3
bne $3, $3, TAG512
sll $0, $0, 0
div $3, $3
TAG512:
sra $4, $3, 0
srl $4, $3, 6
divu $3, $4
bne $4, $3, TAG513
TAG513:
slt $1, $4, $4
sb $1, -8192($4)
beq $1, $4, TAG514
sll $3, $4, 2
TAG514:
bltz $3, TAG515
subu $3, $3, $3
srl $4, $3, 8
sw $4, 0($3)
TAG515:
mthi $4
lw $2, 0($4)
subu $2, $2, $2
lui $2, 5
TAG516:
sll $0, $0, 0
bne $2, $4, TAG517
sw $2, 0($4)
sw $2, 0($4)
TAG517:
addu $1, $4, $4
lui $2, 14
mtlo $1
lbu $3, 0($4)
TAG518:
mult $3, $3
addu $1, $3, $3
lhu $4, 0($1)
lb $2, 0($3)
TAG519:
or $2, $2, $2
bne $2, $2, TAG520
lui $4, 15
nor $4, $2, $2
TAG520:
mtlo $4
beq $4, $4, TAG521
mfhi $3
sw $4, 0($3)
TAG521:
lui $2, 8
mthi $3
mtlo $3
sllv $1, $2, $3
TAG522:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
mthi $1
TAG523:
mthi $2
mthi $2
mtlo $2
lui $2, 1
TAG524:
multu $2, $2
div $2, $2
mflo $4
bne $2, $2, TAG525
TAG525:
mthi $4
nor $4, $4, $4
beq $4, $4, TAG526
lh $3, 2($4)
TAG526:
multu $3, $3
sllv $2, $3, $3
bne $3, $3, TAG527
mthi $3
TAG527:
or $1, $2, $2
beq $1, $2, TAG528
mfhi $2
bne $2, $2, TAG528
TAG528:
sltiu $2, $2, 6
sb $2, 0($2)
ori $3, $2, 13
lbu $2, 0($3)
TAG529:
beq $2, $2, TAG530
sb $2, 0($2)
mfhi $2
bne $2, $2, TAG530
TAG530:
mthi $2
mtlo $2
lui $3, 15
lui $1, 15
TAG531:
bgez $1, TAG532
mfhi $1
mflo $1
lui $2, 0
TAG532:
divu $2, $2
bne $2, $2, TAG533
lb $3, 0($2)
bgtz $2, TAG533
TAG533:
addiu $3, $3, 2
nor $4, $3, $3
mfhi $2
bgez $3, TAG534
TAG534:
lui $3, 11
sll $0, $0, 0
bne $2, $3, TAG535
lhu $3, 0($2)
TAG535:
mfhi $1
mtlo $1
lui $4, 12
sltu $2, $4, $4
TAG536:
sb $2, 0($2)
lui $2, 2
mthi $2
beq $2, $2, TAG537
TAG537:
lui $1, 2
sll $0, $0, 0
blez $2, TAG538
sll $0, $0, 0
TAG538:
mthi $1
mthi $1
mtlo $1
bne $1, $1, TAG539
TAG539:
sll $0, $0, 0
div $1, $1
sltu $3, $1, $1
mult $1, $3
TAG540:
lhu $2, 0($3)
sh $2, -256($2)
mtlo $2
bgez $2, TAG541
TAG541:
sb $2, -256($2)
lui $2, 8
sll $0, $0, 0
sll $0, $0, 0
TAG542:
divu $2, $2
sll $0, $0, 0
xor $1, $3, $3
lui $2, 10
TAG543:
sll $0, $0, 0
lui $4, 11
lui $1, 1
mtlo $1
TAG544:
sll $0, $0, 0
mthi $4
beq $1, $1, TAG545
multu $4, $4
TAG545:
mult $4, $4
bgez $4, TAG546
ori $4, $4, 0
mflo $1
TAG546:
mtlo $1
blez $1, TAG547
div $1, $1
subu $1, $1, $1
TAG547:
lb $1, 0($1)
and $1, $1, $1
sb $1, 0($1)
sltu $2, $1, $1
TAG548:
sllv $3, $2, $2
ori $3, $3, 3
addiu $3, $2, 8
divu $3, $3
TAG549:
sh $3, 0($3)
beq $3, $3, TAG550
lui $2, 10
sb $2, 0($3)
TAG550:
multu $2, $2
beq $2, $2, TAG551
lui $3, 8
bne $2, $3, TAG551
TAG551:
lui $3, 0
andi $3, $3, 12
lui $3, 2
srl $2, $3, 10
TAG552:
beq $2, $2, TAG553
addiu $4, $2, 13
lw $3, 0($4)
mflo $4
TAG553:
sltiu $3, $4, 8
ori $4, $4, 11
lui $3, 1
mthi $4
TAG554:
xori $4, $3, 7
mthi $4
mult $3, $3
multu $4, $3
TAG555:
blez $4, TAG556
lui $1, 4
sll $0, $0, 0
lui $3, 5
TAG556:
addiu $1, $3, 12
bne $1, $1, TAG557
sll $0, $0, 0
mflo $4
TAG557:
mtlo $4
sll $0, $0, 0
srlv $3, $4, $4
sll $0, $0, 0
TAG558:
sll $0, $0, 0
bgez $3, TAG559
srav $3, $3, $3
mthi $2
TAG559:
bgtz $3, TAG560
mfhi $4
beq $3, $3, TAG560
sb $4, 0($4)
TAG560:
srav $4, $4, $4
sw $4, 0($4)
mtlo $4
lhu $3, 0($4)
TAG561:
bltz $3, TAG562
multu $3, $3
lui $2, 3
sll $0, $0, 0
TAG562:
andi $1, $2, 9
sll $0, $0, 0
lui $2, 9
blez $2, TAG563
TAG563:
ori $4, $2, 14
bgtz $2, TAG564
sll $0, $0, 0
divu $4, $2
TAG564:
sll $0, $0, 0
addu $3, $2, $2
sll $0, $0, 0
beq $3, $3, TAG565
TAG565:
mflo $4
beq $4, $4, TAG566
mtlo $3
sll $3, $4, 2
TAG566:
mfhi $2
divu $2, $3
andi $4, $2, 11
beq $3, $4, TAG567
TAG567:
lh $3, 0($4)
sll $2, $4, 12
lh $1, 0($3)
andi $3, $4, 15
TAG568:
mult $3, $3
sw $3, 0($3)
multu $3, $3
sh $3, 0($3)
TAG569:
bne $3, $3, TAG570
sh $3, 0($3)
multu $3, $3
lb $1, 0($3)
TAG570:
lb $4, 0($1)
sh $1, 0($1)
addi $3, $4, 8
multu $4, $1
TAG571:
andi $4, $3, 0
sh $4, 0($3)
nor $4, $3, $3
lb $2, 0($3)
TAG572:
srlv $2, $2, $2
srl $4, $2, 4
lb $1, 0($4)
bne $2, $2, TAG573
TAG573:
mfhi $1
sltiu $4, $1, 1
beq $1, $4, TAG574
sltu $1, $1, $4
TAG574:
mflo $1
bgtz $1, TAG575
add $1, $1, $1
mult $1, $1
TAG575:
mfhi $4
beq $1, $1, TAG576
lb $4, 0($4)
beq $1, $4, TAG576
TAG576:
lb $1, 0($4)
lbu $4, 0($4)
lb $3, 0($4)
sw $3, 0($4)
TAG577:
mthi $3
mfhi $4
bltz $4, TAG578
slti $1, $3, 3
TAG578:
mthi $1
mfhi $4
lui $4, 12
mfhi $3
TAG579:
lui $1, 7
beq $3, $1, TAG580
lui $1, 4
lbu $4, 0($3)
TAG580:
sw $4, 0($4)
mfhi $1
lw $1, 0($4)
mfhi $2
TAG581:
sb $2, 0($2)
mtlo $2
mthi $2
addiu $2, $2, 10
TAG582:
addu $4, $2, $2
lui $1, 10
bne $4, $2, TAG583
sll $0, $0, 0
TAG583:
blez $1, TAG584
sll $0, $0, 0
bne $1, $1, TAG584
multu $1, $1
TAG584:
lui $1, 14
lui $2, 7
bne $1, $2, TAG585
mthi $1
TAG585:
lui $2, 10
bne $2, $2, TAG586
sll $0, $0, 0
lh $3, 0($4)
TAG586:
addiu $4, $3, 15
mthi $4
mthi $3
mfhi $1
TAG587:
mflo $2
mthi $2
slt $3, $2, $1
sb $3, 0($2)
TAG588:
blez $3, TAG589
mtlo $3
sw $3, 0($3)
mflo $3
TAG589:
sll $2, $3, 6
lh $1, 0($3)
bgez $1, TAG590
mfhi $3
TAG590:
mult $3, $3
mflo $4
mflo $2
addi $1, $4, 14
TAG591:
lh $2, 0($1)
mtlo $2
bltz $2, TAG592
mtlo $2
TAG592:
lui $1, 7
divu $1, $2
sll $0, $0, 0
bgez $2, TAG593
TAG593:
sll $0, $0, 0
mult $4, $1
mflo $2
bne $2, $4, TAG594
TAG594:
sw $2, 0($2)
andi $3, $2, 9
blez $2, TAG595
mtlo $3
TAG595:
bgez $3, TAG596
mult $3, $3
lhu $3, 0($3)
beq $3, $3, TAG596
TAG596:
ori $4, $3, 2
lh $1, 0($4)
lui $1, 15
sb $4, 0($4)
TAG597:
srl $3, $1, 0
mult $3, $3
sllv $2, $3, $1
sltu $1, $2, $1
TAG598:
lui $4, 0
multu $4, $1
mthi $4
mfhi $2
TAG599:
sll $4, $2, 10
mtlo $2
lui $3, 2
srav $2, $4, $2
TAG600:
srav $4, $2, $2
lui $2, 2
sra $3, $4, 12
mthi $2
TAG601:
lui $2, 7
mtlo $2
sll $0, $0, 0
multu $3, $3
TAG602:
nor $2, $2, $2
mtlo $2
mtlo $2
beq $2, $2, TAG603
TAG603:
sll $0, $0, 0
divu $2, $2
lui $2, 9
sll $0, $0, 0
TAG604:
bne $2, $2, TAG605
slti $4, $2, 12
andi $3, $4, 3
mflo $4
TAG605:
mtlo $4
mthi $4
sb $4, 0($4)
xori $3, $4, 0
TAG606:
bgtz $3, TAG607
lui $2, 14
bgez $2, TAG607
mfhi $3
TAG607:
mult $3, $3
slti $2, $3, 13
slti $1, $2, 8
bltz $2, TAG608
TAG608:
slti $2, $1, 7
mflo $4
bne $4, $4, TAG609
lui $4, 9
TAG609:
bne $4, $4, TAG610
xori $3, $4, 8
xori $2, $3, 7
multu $4, $3
TAG610:
sll $0, $0, 0
mflo $4
nor $4, $4, $2
bgtz $2, TAG611
TAG611:
sll $1, $4, 0
sll $0, $0, 0
mthi $1
lui $2, 13
TAG612:
srav $2, $2, $2
sll $0, $0, 0
lui $3, 4
slt $4, $2, $3
TAG613:
beq $4, $4, TAG614
multu $4, $4
lbu $2, 0($4)
beq $2, $2, TAG614
TAG614:
mfhi $4
mthi $4
addiu $2, $4, 0
srl $1, $4, 13
TAG615:
beq $1, $1, TAG616
multu $1, $1
beq $1, $1, TAG616
mflo $4
TAG616:
mfhi $2
mflo $2
beq $2, $4, TAG617
mtlo $2
TAG617:
lui $1, 13
sb $1, 0($2)
sll $0, $0, 0
sll $0, $0, 0
TAG618:
subu $1, $3, $3
bne $3, $1, TAG619
mult $3, $1
mthi $3
TAG619:
multu $1, $1
beq $1, $1, TAG620
mflo $3
lui $1, 9
TAG620:
mflo $1
mflo $4
lb $3, 0($4)
beq $1, $3, TAG621
TAG621:
lhu $4, 0($3)
sb $4, 0($3)
bltz $4, TAG622
lui $1, 8
TAG622:
bltz $1, TAG623
subu $4, $1, $1
mtlo $1
mtlo $4
TAG623:
mfhi $1
sltu $1, $4, $4
lui $4, 10
bne $4, $1, TAG624
TAG624:
mthi $4
lui $3, 9
addiu $4, $3, 11
xori $3, $4, 11
TAG625:
mtlo $3
mthi $3
bgtz $3, TAG626
divu $3, $3
TAG626:
mthi $3
mfhi $1
addu $3, $1, $3
mult $3, $3
TAG627:
sll $4, $3, 7
beq $3, $4, TAG628
sll $3, $3, 8
sll $0, $0, 0
TAG628:
subu $3, $4, $4
lhu $2, 0($3)
mflo $3
blez $2, TAG629
TAG629:
xor $2, $3, $3
lb $1, 0($3)
or $4, $3, $2
mfhi $3
TAG630:
srav $1, $3, $3
xori $4, $3, 10
mtlo $3
mult $3, $3
TAG631:
sll $0, $0, 0
mfhi $3
mflo $3
addiu $1, $1, 4
TAG632:
bne $1, $1, TAG633
mtlo $1
sllv $3, $1, $1
divu $3, $1
TAG633:
bne $3, $3, TAG634
addu $3, $3, $3
beq $3, $3, TAG634
mfhi $4
TAG634:
sh $4, 0($4)
srlv $1, $4, $4
xori $1, $4, 1
beq $4, $1, TAG635
TAG635:
lbu $1, 0($1)
sw $1, 0($1)
sw $1, 0($1)
mfhi $2
TAG636:
mult $2, $2
lhu $1, 0($2)
sb $1, 0($2)
mult $1, $2
TAG637:
bgez $1, TAG638
slti $4, $1, 6
sh $4, 0($4)
sh $4, 0($4)
TAG638:
div $4, $4
mult $4, $4
mtlo $4
div $4, $4
TAG639:
multu $4, $4
lb $1, 0($4)
sb $1, 0($4)
mthi $4
TAG640:
or $1, $1, $1
xori $4, $1, 8
or $2, $1, $4
srav $1, $1, $1
TAG641:
blez $1, TAG642
multu $1, $1
bgez $1, TAG642
mflo $3
TAG642:
sll $0, $0, 0
lui $4, 11
sllv $1, $3, $1
mflo $1
TAG643:
srlv $4, $1, $1
lhu $1, 0($1)
lui $4, 11
bne $1, $4, TAG644
TAG644:
addu $1, $4, $4
bne $4, $1, TAG645
sll $0, $0, 0
blez $1, TAG645
TAG645:
multu $1, $1
subu $4, $1, $1
addu $3, $1, $1
sll $0, $0, 0
TAG646:
mfhi $3
bltz $3, TAG647
mult $3, $3
bne $3, $3, TAG647
TAG647:
mthi $3
sb $3, -484($3)
sb $3, -484($3)
lbu $3, -484($3)
TAG648:
lui $1, 2
blez $1, TAG649
lbu $3, -228($3)
mtlo $3
TAG649:
sll $0, $0, 0
lui $1, 13
mflo $1
or $4, $3, $1
TAG650:
sw $4, -228($4)
lw $4, -228($4)
bne $4, $4, TAG651
mtlo $4
TAG651:
sw $4, -228($4)
lw $4, -228($4)
lhu $3, -228($4)
bne $3, $4, TAG652
TAG652:
sltu $2, $3, $3
mult $3, $3
nor $4, $3, $2
sw $2, 229($4)
TAG653:
andi $3, $4, 1
andi $2, $4, 3
sb $3, 0($3)
lui $2, 8
TAG654:
addiu $4, $2, 10
mflo $1
divu $4, $1
srl $2, $4, 13
TAG655:
andi $2, $2, 3
mflo $1
lui $2, 12
sll $0, $0, 0
TAG656:
mthi $2
mtlo $2
sll $0, $0, 0
mtlo $2
TAG657:
beq $2, $2, TAG658
sll $0, $0, 0
div $2, $2
lh $3, 0($1)
TAG658:
sb $3, 0($3)
bne $3, $3, TAG659
sb $3, 0($3)
xori $3, $3, 0
TAG659:
beq $3, $3, TAG660
sb $3, 0($3)
lb $2, 0($3)
beq $3, $2, TAG660
TAG660:
divu $2, $2
mfhi $1
sll $0, $0, 0
sw $4, 0($1)
TAG661:
beq $4, $4, TAG662
mflo $2
lhu $2, 0($4)
divu $2, $2
TAG662:
lbu $1, 0($2)
srlv $3, $1, $1
slt $2, $3, $3
add $1, $2, $2
TAG663:
mflo $1
sb $1, 0($1)
mflo $2
blez $2, TAG664
TAG664:
lui $2, 13
lui $1, 1
bltz $2, TAG665
mtlo $2
TAG665:
sll $0, $0, 0
lui $4, 10
sh $4, 0($3)
lui $4, 1
TAG666:
beq $4, $4, TAG667
sll $0, $0, 0
beq $4, $4, TAG667
sw $4, 0($4)
TAG667:
multu $4, $4
mthi $4
divu $4, $4
bgez $4, TAG668
TAG668:
nor $4, $4, $4
divu $4, $4
bne $4, $4, TAG669
mthi $4
TAG669:
bne $4, $4, TAG670
andi $1, $4, 3
ori $1, $1, 7
mflo $3
TAG670:
bgtz $3, TAG671
lui $2, 13
mflo $2
bgez $3, TAG671
TAG671:
sltu $3, $2, $2
subu $1, $3, $2
mfhi $2
mthi $2
TAG672:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
mtlo $1
TAG673:
sb $3, 0($3)
sb $3, 0($3)
mtlo $3
multu $3, $3
TAG674:
addiu $2, $3, 11
lui $3, 12
beq $3, $3, TAG675
mfhi $3
TAG675:
lui $2, 11
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG676:
mfhi $3
mflo $1
sh $3, 0($3)
srav $2, $3, $3
TAG677:
mult $2, $2
multu $2, $2
sll $1, $2, 9
lh $1, 0($2)
TAG678:
mtlo $1
mult $1, $1
multu $1, $1
bne $1, $1, TAG679
TAG679:
srav $2, $1, $1
and $3, $1, $1
bgtz $2, TAG680
andi $1, $1, 10
TAG680:
lui $2, 5
mtlo $2
bgtz $1, TAG681
ori $4, $1, 4
TAG681:
sw $4, 0($4)
beq $4, $4, TAG682
or $3, $4, $4
sw $3, 0($4)
TAG682:
bgtz $3, TAG683
lb $4, 0($3)
mflo $1
mtlo $1
TAG683:
lw $3, 0($1)
bne $3, $3, TAG684
mult $1, $1
lui $1, 1
TAG684:
mult $1, $1
subu $4, $1, $1
srlv $4, $1, $1
mtlo $1
TAG685:
bltz $4, TAG686
mthi $4
lui $1, 12
subu $1, $1, $4
TAG686:
lui $1, 0
sll $1, $1, 13
lui $4, 5
mtlo $1
TAG687:
lui $4, 3
bltz $4, TAG688
addu $2, $4, $4
and $4, $2, $4
TAG688:
srlv $4, $4, $4
sll $0, $0, 0
lui $2, 4
sll $0, $0, 0
TAG689:
sra $4, $3, 6
mthi $4
lui $4, 15
bne $4, $3, TAG690
TAG690:
sll $0, $0, 0
beq $4, $4, TAG691
sll $1, $4, 10
sh $4, 0($4)
TAG691:
bgtz $1, TAG692
sll $0, $0, 0
lui $2, 13
lh $1, 0($2)
TAG692:
blez $1, TAG693
mtlo $1
slt $4, $1, $1
subu $2, $4, $4
TAG693:
multu $2, $2
multu $2, $2
sub $3, $2, $2
slti $3, $2, 11
TAG694:
lui $2, 11
mfhi $4
lui $3, 0
multu $4, $4
TAG695:
sltu $4, $3, $3
multu $3, $4
lhu $1, 0($3)
addi $1, $4, 3
TAG696:
mfhi $1
bne $1, $1, TAG697
mthi $1
beq $1, $1, TAG697
TAG697:
sh $1, 0($1)
mflo $4
mult $4, $1
lui $2, 15
TAG698:
lui $2, 10
xori $1, $2, 7
lui $3, 1
subu $3, $1, $1
TAG699:
srl $1, $3, 0
bne $3, $1, TAG700
sw $1, 0($1)
lui $4, 10
TAG700:
addu $4, $4, $4
bgtz $4, TAG701
srlv $4, $4, $4
mthi $4
TAG701:
lui $2, 13
div $2, $2
bgez $4, TAG702
sll $0, $0, 0
TAG702:
beq $1, $1, TAG703
sub $3, $1, $1
xor $2, $3, $3
mflo $1
TAG703:
mult $1, $1
bltz $1, TAG704
addi $1, $1, 14
lhu $2, 0($1)
TAG704:
mult $2, $2
mflo $3
mtlo $2
sll $1, $2, 0
TAG705:
bltz $1, TAG706
lbu $3, -3854($1)
mtlo $3
bne $3, $3, TAG706
TAG706:
sw $3, 0($3)
lui $2, 15
sltu $3, $2, $3
multu $3, $3
TAG707:
bgez $3, TAG708
slti $1, $3, 4
srl $4, $3, 8
bgtz $1, TAG708
TAG708:
sra $2, $4, 15
bgez $4, TAG709
andi $4, $4, 12
mult $2, $4
TAG709:
mflo $4
sh $4, 0($4)
mfhi $2
sub $3, $2, $2
TAG710:
sra $2, $3, 7
mflo $3
beq $3, $3, TAG711
mtlo $3
TAG711:
sw $3, 0($3)
sw $3, 0($3)
mfhi $4
lh $4, 0($3)
TAG712:
mtlo $4
sh $4, 0($4)
bgtz $4, TAG713
multu $4, $4
TAG713:
mflo $3
bltz $3, TAG714
or $4, $4, $3
blez $4, TAG714
TAG714:
lui $2, 10
addiu $2, $2, 12
lui $1, 2
mflo $2
TAG715:
multu $2, $2
bne $2, $2, TAG716
srl $4, $2, 12
lui $2, 13
TAG716:
beq $2, $2, TAG717
mthi $2
mthi $2
lui $4, 4
TAG717:
lw $1, 0($4)
lui $1, 4
lui $3, 7
lui $1, 13
TAG718:
mthi $1
addu $1, $1, $1
beq $1, $1, TAG719
or $4, $1, $1
TAG719:
slt $3, $4, $4
mfhi $3
bgez $3, TAG720
sll $0, $0, 0
TAG720:
lui $2, 5
div $2, $3
blez $3, TAG721
lui $2, 10
TAG721:
lui $1, 5
mtlo $2
sll $0, $0, 0
lui $2, 6
TAG722:
bgez $2, TAG723
lui $2, 13
subu $3, $2, $2
lh $2, 0($2)
TAG723:
and $2, $2, $2
div $2, $2
sll $0, $0, 0
mult $2, $2
TAG724:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG725
sll $0, $0, 0
TAG725:
divu $1, $1
lui $1, 15
sll $0, $0, 0
mfhi $2
TAG726:
mfhi $3
sltiu $1, $2, 0
mfhi $4
addi $3, $4, 4
TAG727:
bgez $3, TAG728
lui $1, 11
bne $1, $3, TAG728
mtlo $1
TAG728:
mflo $3
bne $1, $3, TAG729
sb $3, 0($3)
sll $3, $3, 8
TAG729:
lb $3, 0($3)
mflo $4
mtlo $3
multu $3, $3
TAG730:
bne $4, $4, TAG731
lui $3, 2
mtlo $3
sll $0, $0, 0
TAG731:
mfhi $3
mflo $4
sll $0, $0, 0
lui $4, 10
TAG732:
sll $0, $0, 0
and $2, $4, $4
sll $4, $4, 12
divu $2, $4
TAG733:
sll $0, $0, 0
lui $1, 1
mthi $4
mthi $4
TAG734:
addiu $3, $1, 13
bgtz $3, TAG735
sll $0, $0, 0
bne $1, $3, TAG735
TAG735:
sll $1, $3, 7
bgtz $1, TAG736
subu $3, $3, $1
beq $3, $3, TAG736
TAG736:
mflo $4
beq $4, $4, TAG737
mtlo $4
bne $4, $3, TAG737
TAG737:
lui $4, 10
mtlo $4
xor $3, $4, $4
sll $0, $0, 0
TAG738:
bltz $3, TAG739
mflo $2
bne $3, $2, TAG739
mtlo $3
TAG739:
sllv $1, $2, $2
sll $0, $0, 0
and $2, $1, $2
lui $2, 10
TAG740:
mfhi $4
sll $0, $0, 0
sllv $1, $2, $2
mflo $2
TAG741:
srl $3, $2, 5
mthi $3
multu $2, $2
addu $4, $3, $2
TAG742:
mtlo $4
subu $2, $4, $4
sll $2, $4, 7
addi $4, $2, 7
TAG743:
bgez $4, TAG744
mflo $1
lw $4, 0($4)
sw $1, 0($1)
TAG744:
addu $2, $4, $4
mflo $2
multu $2, $2
sra $3, $2, 8
TAG745:
mult $3, $3
lui $2, 13
bne $3, $3, TAG746
xor $1, $3, $3
TAG746:
mflo $4
mtlo $4
slt $1, $1, $4
sltu $2, $1, $1
TAG747:
lb $4, 0($2)
mtlo $4
sh $4, 0($2)
sb $4, 0($4)
TAG748:
lw $1, 0($4)
bne $1, $1, TAG749
mflo $4
mtlo $4
TAG749:
mfhi $2
mtlo $4
lhu $3, 0($4)
lbu $1, 0($2)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop