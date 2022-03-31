ori $1, $0, 9
ori $2, $0, 9
ori $3, $0, 6
ori $4, $0, 8
sw $1, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $3, 44($0)
sw $1, 48($0)
sw $2, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $2, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $3, 124($0)
mult $2, $2
lui $4, 10
addiu $4, $2, 0
sb $2, 0($2)
TAG1:
mult $4, $4
mult $4, $4
mfhi $3
mult $4, $4
TAG2:
mfhi $2
mflo $3
divu $2, $3
bne $2, $3, TAG3
TAG3:
mflo $4
sra $3, $4, 9
mflo $4
addu $4, $4, $4
TAG4:
mfhi $2
blez $4, TAG5
lui $3, 11
mtlo $4
TAG5:
lui $1, 7
sll $0, $0, 0
lui $2, 15
mthi $2
TAG6:
lui $2, 12
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG7:
bgtz $2, TAG8
srav $3, $2, $2
mfhi $1
add $3, $2, $1
TAG8:
mtlo $3
lui $3, 6
lui $3, 13
sll $0, $0, 0
TAG9:
beq $4, $4, TAG10
sra $1, $4, 2
mflo $2
addi $3, $1, 15
TAG10:
div $3, $3
sltiu $2, $3, 7
slt $2, $2, $2
bgez $2, TAG11
TAG11:
sb $2, 0($2)
lhu $1, 0($2)
mfhi $3
bgtz $3, TAG12
TAG12:
sh $3, 0($3)
sb $3, 0($3)
blez $3, TAG13
add $4, $3, $3
TAG13:
sh $4, 0($4)
sw $4, 0($4)
mfhi $2
mfhi $1
TAG14:
sh $1, 0($1)
lui $2, 1
sll $0, $0, 0
beq $2, $2, TAG15
TAG15:
lui $2, 12
mflo $4
blez $2, TAG16
slt $3, $2, $2
TAG16:
sh $3, 0($3)
sll $4, $3, 8
addi $3, $3, 15
lbu $3, 0($3)
TAG17:
bne $3, $3, TAG18
sb $3, 0($3)
slt $4, $3, $3
mthi $4
TAG18:
addiu $2, $4, 1
nor $1, $4, $4
bne $4, $4, TAG19
lui $4, 15
TAG19:
divu $4, $4
sll $0, $0, 0
beq $4, $4, TAG20
sh $4, 1($1)
TAG20:
mtlo $1
sb $1, 1($1)
divu $1, $1
lh $4, 1($1)
TAG21:
mflo $1
bgez $4, TAG22
lh $2, -255($4)
bne $4, $1, TAG22
TAG22:
slt $1, $2, $2
bgtz $2, TAG23
sh $2, 0($1)
bltz $2, TAG23
TAG23:
add $3, $1, $1
sw $3, 0($3)
mthi $1
sh $3, 0($1)
TAG24:
lui $4, 1
sw $3, 0($3)
sll $0, $0, 0
addu $4, $2, $4
TAG25:
sll $0, $0, 0
blez $3, TAG26
lui $1, 11
div $3, $1
TAG26:
bgez $1, TAG27
mthi $1
lb $1, 0($1)
sb $1, 0($1)
TAG27:
sltu $1, $1, $1
sh $1, 0($1)
mflo $3
sltu $3, $3, $1
TAG28:
andi $2, $3, 11
mult $2, $2
beq $3, $3, TAG29
multu $3, $2
TAG29:
beq $2, $2, TAG30
mtlo $2
andi $4, $2, 5
beq $2, $2, TAG30
TAG30:
andi $3, $4, 6
sh $4, 0($3)
mtlo $3
sltu $1, $4, $4
TAG31:
mult $1, $1
lui $1, 4
addu $4, $1, $1
mtlo $4
TAG32:
lui $1, 13
blez $1, TAG33
mflo $1
beq $1, $1, TAG33
TAG33:
sll $0, $0, 0
mfhi $4
sb $4, 0($4)
sb $4, 0($4)
TAG34:
mthi $4
lhu $1, 0($4)
lui $4, 11
lhu $2, 0($1)
TAG35:
sll $3, $2, 8
mfhi $3
andi $3, $3, 15
sh $3, 0($3)
TAG36:
lui $3, 11
div $3, $3
subu $2, $3, $3
mfhi $2
TAG37:
lui $3, 1
mtlo $2
sll $0, $0, 0
lui $1, 13
TAG38:
mflo $4
mfhi $1
lbu $2, 0($4)
bltz $4, TAG39
TAG39:
lui $3, 7
lb $1, 0($2)
bgtz $1, TAG40
lui $2, 15
TAG40:
lui $3, 8
and $3, $3, $3
sll $0, $0, 0
bgtz $3, TAG41
TAG41:
lh $4, 0($1)
sw $1, 0($1)
srl $1, $4, 3
bltz $1, TAG42
TAG42:
multu $1, $1
bltz $1, TAG43
mflo $4
multu $1, $4
TAG43:
bgez $4, TAG44
slt $1, $4, $4
subu $1, $4, $4
sb $1, 0($1)
TAG44:
blez $1, TAG45
mthi $1
div $1, $1
sll $1, $1, 7
TAG45:
beq $1, $1, TAG46
mthi $1
lh $2, 0($1)
blez $1, TAG46
TAG46:
mfhi $3
addu $1, $2, $2
bne $2, $2, TAG47
mtlo $2
TAG47:
mult $1, $1
mtlo $1
nor $3, $1, $1
subu $2, $3, $3
TAG48:
mflo $1
multu $1, $2
sllv $4, $1, $1
beq $1, $4, TAG49
TAG49:
divu $4, $4
nor $1, $4, $4
mfhi $4
mthi $1
TAG50:
lui $1, 14
mflo $1
mthi $4
mult $1, $4
TAG51:
bltz $1, TAG52
sb $1, 0($1)
mfhi $2
mfhi $4
TAG52:
sh $4, 0($4)
subu $3, $4, $4
sh $4, 0($3)
mthi $4
TAG53:
mfhi $1
sra $4, $1, 9
bne $1, $1, TAG54
srl $4, $4, 5
TAG54:
bgez $4, TAG55
lh $3, 0($4)
lhu $4, 0($3)
mult $3, $4
TAG55:
addi $4, $4, 9
srl $1, $4, 10
lb $2, 0($4)
bne $4, $1, TAG56
TAG56:
sb $2, 0($2)
mtlo $2
div $2, $2
lb $3, 0($2)
TAG57:
lbu $1, 0($3)
bgtz $3, TAG58
mthi $1
srav $2, $3, $3
TAG58:
mfhi $4
sb $4, 0($2)
beq $2, $4, TAG59
addu $4, $4, $2
TAG59:
mtlo $4
bgez $4, TAG60
lb $2, 0($4)
lui $4, 1
TAG60:
bne $4, $4, TAG61
sb $4, 0($4)
beq $4, $4, TAG61
lbu $4, 0($4)
TAG61:
lui $4, 0
lui $2, 11
blez $4, TAG62
sll $4, $4, 10
TAG62:
slt $1, $4, $4
lui $4, 7
beq $4, $4, TAG63
lui $2, 9
TAG63:
blez $2, TAG64
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG64:
lbu $3, 0($2)
bne $2, $3, TAG65
divu $3, $3
mfhi $2
TAG65:
bgtz $2, TAG66
lui $4, 11
lui $1, 2
lw $2, 0($2)
TAG66:
mflo $4
bgez $4, TAG67
mtlo $2
divu $4, $4
TAG67:
bltz $4, TAG68
divu $4, $4
bgtz $4, TAG68
lb $2, 0($4)
TAG68:
add $2, $2, $2
mflo $2
div $2, $2
bgez $2, TAG69
TAG69:
mtlo $2
addiu $4, $2, 0
mfhi $4
add $2, $4, $4
TAG70:
bne $2, $2, TAG71
mthi $2
bgtz $2, TAG71
mult $2, $2
TAG71:
addi $1, $2, 4
mtlo $1
and $1, $2, $2
multu $1, $2
TAG72:
mthi $1
lh $1, 0($1)
srl $2, $1, 13
xor $2, $1, $1
TAG73:
mflo $2
bltz $2, TAG74
mfhi $2
sw $2, 0($2)
TAG74:
xor $1, $2, $2
beq $1, $1, TAG75
xori $3, $1, 0
ori $4, $3, 14
TAG75:
lbu $2, 0($4)
mult $4, $4
bne $4, $4, TAG76
multu $2, $4
TAG76:
lhu $2, 0($2)
mtlo $2
lui $3, 5
mtlo $2
TAG77:
srl $2, $3, 1
div $3, $2
div $3, $3
addiu $2, $2, 11
TAG78:
sll $0, $0, 0
lui $4, 11
beq $4, $4, TAG79
mthi $2
TAG79:
sra $4, $4, 11
beq $4, $4, TAG80
sw $4, -352($4)
mthi $4
TAG80:
mflo $3
multu $3, $4
bgez $3, TAG81
lbu $2, -352($4)
TAG81:
bgtz $2, TAG82
sb $2, 0($2)
bne $2, $2, TAG82
mtlo $2
TAG82:
lui $1, 9
blez $2, TAG83
mtlo $1
sll $0, $0, 0
TAG83:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG84
sll $0, $0, 0
TAG84:
sll $0, $0, 0
bltz $3, TAG85
sll $0, $0, 0
andi $1, $1, 10
TAG85:
lui $1, 2
sll $0, $0, 0
mflo $1
and $2, $1, $1
TAG86:
mthi $2
beq $2, $2, TAG87
mult $2, $2
mult $2, $2
TAG87:
mthi $2
mult $2, $2
lui $3, 12
bgez $2, TAG88
TAG88:
mtlo $3
lui $3, 10
div $3, $3
divu $3, $3
TAG89:
mtlo $3
sll $0, $0, 0
lui $3, 15
addu $3, $3, $3
TAG90:
lui $3, 2
bgez $3, TAG91
srl $1, $3, 15
div $1, $3
TAG91:
mthi $1
bgez $1, TAG92
lb $2, 0($1)
lhu $1, 0($1)
TAG92:
bgtz $1, TAG93
mflo $4
mtlo $1
lui $2, 11
TAG93:
mtlo $2
slt $1, $2, $2
sh $1, 0($2)
bltz $1, TAG94
TAG94:
multu $1, $1
mthi $1
bne $1, $1, TAG95
addi $3, $1, 6
TAG95:
bltz $3, TAG96
mult $3, $3
bgtz $3, TAG96
lui $1, 5
TAG96:
mthi $1
subu $1, $1, $1
multu $1, $1
bne $1, $1, TAG97
TAG97:
mfhi $2
mtlo $2
blez $2, TAG98
lhu $1, 0($1)
TAG98:
lui $1, 13
beq $1, $1, TAG99
srav $2, $1, $1
lh $3, 0($2)
TAG99:
mfhi $2
sh $2, 0($3)
sll $1, $3, 0
lbu $4, 0($3)
TAG100:
sh $4, 0($4)
lui $2, 11
bgez $2, TAG101
mfhi $4
TAG101:
mflo $2
lui $4, 14
andi $4, $4, 10
sw $2, 0($4)
TAG102:
lw $4, 0($4)
mfhi $2
mflo $4
mfhi $4
TAG103:
sb $4, 0($4)
lhu $1, 0($4)
mthi $4
sw $4, 0($4)
TAG104:
mtlo $1
sw $1, 0($1)
bne $1, $1, TAG105
sh $1, 0($1)
TAG105:
sltiu $3, $1, 12
multu $3, $1
srav $1, $3, $1
sb $1, 0($1)
TAG106:
multu $1, $1
div $1, $1
bgez $1, TAG107
lb $3, 0($1)
TAG107:
blez $3, TAG108
sra $4, $3, 12
sb $3, 0($3)
sb $4, 0($3)
TAG108:
sh $4, 0($4)
bne $4, $4, TAG109
sub $3, $4, $4
blez $3, TAG109
TAG109:
mult $3, $3
mthi $3
bne $3, $3, TAG110
slt $3, $3, $3
TAG110:
mflo $1
mult $3, $3
beq $3, $3, TAG111
lb $2, 0($1)
TAG111:
addiu $4, $2, 15
beq $2, $2, TAG112
lui $3, 9
bne $3, $2, TAG112
TAG112:
mflo $4
bgez $4, TAG113
mtlo $4
sb $3, 0($4)
TAG113:
lhu $2, 0($4)
sw $4, 0($2)
beq $4, $4, TAG114
multu $4, $2
TAG114:
mtlo $2
srav $4, $2, $2
bne $2, $4, TAG115
sw $4, 0($2)
TAG115:
mthi $4
slti $1, $4, 8
srl $2, $1, 3
sb $1, 0($2)
TAG116:
lb $2, 0($2)
beq $2, $2, TAG117
sb $2, 0($2)
lui $1, 14
TAG117:
mfhi $3
subu $4, $3, $1
nor $2, $3, $3
mflo $4
TAG118:
lui $1, 7
multu $1, $4
slt $2, $1, $1
sll $0, $0, 0
TAG119:
sb $4, 0($4)
beq $4, $4, TAG120
mflo $1
beq $1, $1, TAG120
TAG120:
mtlo $1
sb $1, 0($1)
mfhi $4
blez $4, TAG121
TAG121:
lb $4, 0($4)
bne $4, $4, TAG122
sltiu $1, $4, 8
bgez $4, TAG122
TAG122:
lb $2, 0($1)
sltiu $1, $2, 4
addu $2, $1, $1
sb $1, 0($2)
TAG123:
sltu $4, $2, $2
blez $2, TAG124
sh $2, 0($2)
sltu $2, $2, $4
TAG124:
lbu $1, 0($2)
lui $2, 4
addi $4, $1, 8
lui $4, 3
TAG125:
mflo $2
bgez $2, TAG126
multu $2, $2
beq $4, $2, TAG126
TAG126:
lui $1, 8
bgez $1, TAG127
addiu $4, $1, 7
divu $2, $2
TAG127:
mfhi $4
mtlo $4
blez $4, TAG128
and $2, $4, $4
TAG128:
lh $4, 0($2)
subu $4, $4, $4
mfhi $1
sb $2, 0($4)
TAG129:
bgtz $1, TAG130
srl $3, $1, 9
sh $3, 0($3)
xor $4, $3, $1
TAG130:
mult $4, $4
mthi $4
multu $4, $4
mflo $2
TAG131:
bgez $2, TAG132
subu $1, $2, $2
lbu $2, 0($2)
sb $2, 0($2)
TAG132:
srlv $3, $2, $2
sltu $4, $3, $3
lui $3, 7
sh $3, 0($2)
TAG133:
addu $3, $3, $3
mthi $3
beq $3, $3, TAG134
sll $0, $0, 0
TAG134:
sll $0, $0, 0
bgez $1, TAG135
slti $1, $1, 12
mfhi $3
TAG135:
bgez $3, TAG136
div $3, $3
bne $3, $3, TAG136
mfhi $2
TAG136:
and $3, $2, $2
mflo $3
bne $2, $3, TAG137
mfhi $1
TAG137:
bne $1, $1, TAG138
mthi $1
lw $1, 0($1)
sll $0, $0, 0
TAG138:
andi $4, $4, 1
mtlo $4
multu $4, $4
mfhi $1
TAG139:
sh $1, 0($1)
mtlo $1
beq $1, $1, TAG140
lbu $4, 0($1)
TAG140:
lw $2, 0($4)
lb $2, 0($4)
lui $3, 4
bne $4, $4, TAG141
TAG141:
lui $3, 0
lui $4, 2
mult $4, $3
lui $3, 15
TAG142:
addiu $1, $3, 11
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
TAG143:
sra $2, $4, 4
bne $2, $2, TAG144
sw $4, -8192($2)
bgez $2, TAG144
TAG144:
sltiu $2, $2, 11
bne $2, $2, TAG145
mthi $2
addu $2, $2, $2
TAG145:
multu $2, $2
bne $2, $2, TAG146
mthi $2
lui $3, 6
TAG146:
mthi $3
mthi $3
bne $3, $3, TAG147
divu $3, $3
TAG147:
andi $4, $3, 0
mfhi $1
sltiu $3, $4, 6
lbu $2, 0($3)
TAG148:
blez $2, TAG149
lbu $4, 0($2)
sb $4, 0($4)
sw $2, 0($4)
TAG149:
mthi $4
addiu $4, $4, 4
bne $4, $4, TAG150
or $2, $4, $4
TAG150:
mtlo $2
beq $2, $2, TAG151
multu $2, $2
bltz $2, TAG151
TAG151:
lw $4, 0($2)
lui $3, 1
bne $3, $3, TAG152
mfhi $4
TAG152:
lui $1, 10
multu $4, $4
lw $1, 0($4)
sll $0, $0, 0
TAG153:
bgez $1, TAG154
sll $0, $0, 0
slti $2, $2, 7
beq $2, $2, TAG154
TAG154:
lui $4, 1
bgtz $4, TAG155
multu $2, $2
slt $1, $4, $2
TAG155:
sltu $1, $1, $1
bne $1, $1, TAG156
sll $2, $1, 13
lb $1, 0($2)
TAG156:
srlv $4, $1, $1
bltz $1, TAG157
mfhi $3
bne $4, $4, TAG157
TAG157:
lui $2, 2
sh $3, 0($3)
mult $3, $2
bltz $3, TAG158
TAG158:
lui $3, 12
slti $4, $3, 3
blez $4, TAG159
sll $0, $0, 0
TAG159:
sll $2, $4, 10
mfhi $3
nor $1, $4, $2
lui $3, 6
TAG160:
xori $1, $3, 5
sll $0, $0, 0
mult $1, $1
sll $0, $0, 0
TAG161:
lui $2, 12
addu $1, $2, $2
addu $1, $2, $2
bltz $2, TAG162
TAG162:
mflo $3
slt $4, $3, $3
bgtz $1, TAG163
lhu $1, 0($4)
TAG163:
beq $1, $1, TAG164
lb $1, 0($1)
sh $1, 0($1)
beq $1, $1, TAG164
TAG164:
sltu $3, $1, $1
multu $1, $1
sllv $2, $1, $1
mflo $3
TAG165:
bgtz $3, TAG166
sll $4, $3, 7
bgez $3, TAG166
lw $3, 0($4)
TAG166:
bgtz $3, TAG167
sll $0, $0, 0
mthi $3
lhu $4, 0($3)
TAG167:
and $2, $4, $4
blez $2, TAG168
addu $3, $4, $4
lui $4, 10
TAG168:
bne $4, $4, TAG169
lui $3, 14
xori $2, $4, 15
mfhi $3
TAG169:
addi $4, $3, 10
sh $4, 0($4)
beq $3, $3, TAG170
mult $4, $3
TAG170:
mult $4, $4
bgez $4, TAG171
mflo $2
multu $2, $4
TAG171:
slt $3, $2, $2
lui $2, 4
sllv $4, $2, $2
mthi $2
TAG172:
nor $4, $4, $4
blez $4, TAG173
mfhi $3
multu $3, $4
TAG173:
mthi $3
subu $3, $3, $3
beq $3, $3, TAG174
mfhi $4
TAG174:
subu $3, $4, $4
lhu $2, 0($3)
multu $3, $3
sb $4, 0($3)
TAG175:
lw $4, 0($2)
mfhi $4
bltz $4, TAG176
sb $4, 0($2)
TAG176:
bne $4, $4, TAG177
mflo $3
bgtz $3, TAG177
mtlo $3
TAG177:
beq $3, $3, TAG178
lb $3, 0($3)
mflo $2
lui $4, 5
TAG178:
xor $1, $4, $4
mtlo $1
sw $4, 0($4)
lhu $1, 0($4)
TAG179:
add $3, $1, $1
mthi $3
lui $2, 5
nor $2, $1, $3
TAG180:
slti $3, $2, 1
sw $2, 1($2)
bne $3, $3, TAG181
mthi $2
TAG181:
mflo $4
bne $4, $4, TAG182
ori $3, $3, 10
mthi $4
TAG182:
mthi $3
sra $3, $3, 0
sb $3, 0($3)
sb $3, 0($3)
TAG183:
mfhi $4
blez $3, TAG184
sb $4, 0($3)
beq $3, $3, TAG184
TAG184:
mflo $1
mflo $2
mult $4, $1
lh $4, 0($2)
TAG185:
bne $4, $4, TAG186
xor $3, $4, $4
mfhi $1
addiu $3, $1, 3
TAG186:
slt $3, $3, $3
lw $2, 0($3)
sw $3, 0($3)
sllv $1, $2, $2
TAG187:
sll $1, $1, 12
mflo $4
lui $1, 5
mult $1, $1
TAG188:
bne $1, $1, TAG189
andi $3, $1, 4
mfhi $4
lui $1, 5
TAG189:
xor $4, $1, $1
mthi $1
beq $4, $4, TAG190
multu $4, $4
TAG190:
lh $1, 0($4)
multu $1, $1
beq $4, $4, TAG191
mfhi $1
TAG191:
blez $1, TAG192
addi $1, $1, 5
mult $1, $1
lh $3, 0($1)
TAG192:
sra $3, $3, 9
lw $2, 0($3)
mtlo $3
mult $3, $3
TAG193:
mflo $1
mthi $1
mthi $2
mult $2, $1
TAG194:
mtlo $1
multu $1, $1
bgez $1, TAG195
sh $1, 0($1)
TAG195:
lh $3, 0($1)
bne $1, $1, TAG196
sw $3, 0($1)
bgtz $1, TAG196
TAG196:
mtlo $3
xor $4, $3, $3
mthi $3
addu $4, $4, $4
TAG197:
bgez $4, TAG198
sw $4, 0($4)
bne $4, $4, TAG198
lw $3, 0($4)
TAG198:
sh $3, 0($3)
mult $3, $3
sb $3, 0($3)
mthi $3
TAG199:
mfhi $4
mult $3, $4
lui $2, 12
lw $3, 0($3)
TAG200:
lui $1, 7
mthi $1
sll $0, $0, 0
beq $3, $3, TAG201
TAG201:
mfhi $4
mthi $4
mtlo $3
mthi $3
TAG202:
bgtz $4, TAG203
ori $3, $4, 11
lui $3, 4
sh $3, 0($3)
TAG203:
ori $4, $3, 13
mthi $3
multu $3, $4
mthi $3
TAG204:
bne $4, $4, TAG205
sll $0, $0, 0
mfhi $3
bltz $3, TAG205
TAG205:
divu $3, $3
slt $3, $3, $3
sb $3, 0($3)
mthi $3
TAG206:
mflo $2
lui $4, 3
sb $4, 0($2)
multu $2, $4
TAG207:
xori $3, $4, 14
sll $2, $4, 3
lui $4, 11
nor $2, $4, $4
TAG208:
div $2, $2
mflo $4
lui $4, 4
mtlo $4
TAG209:
bgez $4, TAG210
slt $1, $4, $4
mfhi $3
beq $4, $3, TAG210
TAG210:
mfhi $3
bne $3, $3, TAG211
mthi $3
mflo $1
TAG211:
or $1, $1, $1
bne $1, $1, TAG212
sll $0, $0, 0
mtlo $1
TAG212:
lui $2, 3
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG213:
sll $0, $0, 0
sll $0, $0, 0
sllv $3, $2, $3
addiu $2, $2, 11
TAG214:
sltiu $2, $2, 15
mthi $2
bne $2, $2, TAG215
sll $2, $2, 0
TAG215:
andi $3, $2, 14
sw $3, 0($2)
bgtz $3, TAG216
lhu $4, 0($2)
TAG216:
mthi $4
mfhi $2
sub $2, $2, $2
lui $4, 2
TAG217:
blez $4, TAG218
mthi $4
mult $4, $4
sll $0, $0, 0
TAG218:
mflo $3
sh $3, 0($3)
mfhi $2
sw $3, 0($3)
TAG219:
bgez $2, TAG220
sw $2, 0($2)
lb $1, 0($2)
lb $1, 0($2)
TAG220:
addu $3, $1, $1
sll $0, $0, 0
div $1, $1
lui $2, 11
TAG221:
slt $1, $2, $2
mfhi $2
mtlo $2
beq $2, $2, TAG222
TAG222:
mfhi $2
xori $2, $2, 9
sra $4, $2, 0
sra $1, $4, 4
TAG223:
mfhi $4
bgtz $1, TAG224
nor $4, $4, $1
multu $4, $1
TAG224:
mfhi $1
andi $4, $1, 14
nor $1, $1, $1
slt $1, $1, $4
TAG225:
mfhi $1
srl $3, $1, 15
sb $1, 0($3)
mult $1, $3
TAG226:
mflo $2
lui $1, 1
mfhi $3
addu $3, $3, $3
TAG227:
andi $1, $3, 9
mtlo $1
mtlo $1
sb $3, 0($3)
TAG228:
or $2, $1, $1
blez $1, TAG229
andi $2, $1, 13
lui $2, 9
TAG229:
lbu $3, 0($2)
lui $2, 0
andi $3, $2, 10
mfhi $3
TAG230:
sh $3, 0($3)
blez $3, TAG231
mthi $3
xori $4, $3, 13
TAG231:
add $2, $4, $4
sh $4, 0($4)
lui $3, 9
lui $3, 0
TAG232:
bne $3, $3, TAG233
lw $2, 0($3)
beq $2, $2, TAG233
lh $3, 0($3)
TAG233:
sb $3, 0($3)
multu $3, $3
mfhi $4
multu $4, $4
TAG234:
ori $1, $4, 10
bne $4, $4, TAG235
sw $1, 0($4)
lh $3, 0($4)
TAG235:
bgez $3, TAG236
lbu $4, 0($3)
lbu $2, 0($3)
bne $2, $4, TAG236
TAG236:
lbu $4, 0($2)
mult $4, $4
sllv $1, $4, $4
lw $3, 0($2)
TAG237:
lh $3, 0($3)
sh $3, -2826($3)
mult $3, $3
divu $3, $3
TAG238:
xor $4, $3, $3
beq $3, $4, TAG239
addiu $4, $3, 13
mfhi $3
TAG239:
andi $2, $3, 15
bne $2, $3, TAG240
slti $3, $3, 3
ori $4, $2, 15
TAG240:
multu $4, $4
mthi $4
andi $4, $4, 9
lui $4, 14
TAG241:
bgtz $4, TAG242
addiu $2, $4, 9
mthi $4
lui $1, 2
TAG242:
addu $4, $1, $1
srlv $3, $1, $4
sw $1, -10240($1)
sb $4, -10240($3)
TAG243:
lui $2, 4
div $2, $3
div $2, $3
mfhi $1
TAG244:
sltu $2, $1, $1
and $4, $2, $2
multu $1, $2
sb $2, -6144($1)
TAG245:
multu $4, $4
sb $4, 0($4)
mthi $4
bne $4, $4, TAG246
TAG246:
mtlo $4
beq $4, $4, TAG247
sh $4, 0($4)
mfhi $2
TAG247:
lhu $1, 0($2)
mtlo $1
multu $1, $2
mult $2, $2
TAG248:
bltz $1, TAG249
sh $1, 0($1)
mflo $2
xor $4, $1, $2
TAG249:
mthi $4
mtlo $4
lui $1, 2
bne $1, $4, TAG250
TAG250:
div $1, $1
blez $1, TAG251
multu $1, $1
ori $1, $1, 15
TAG251:
mflo $3
mult $1, $3
sltiu $2, $1, 13
and $4, $2, $2
TAG252:
lui $2, 12
lhu $2, 0($4)
multu $2, $2
bltz $4, TAG253
TAG253:
lui $4, 0
mflo $1
mthi $1
lui $2, 11
TAG254:
mflo $1
add $2, $1, $2
mthi $1
ori $1, $2, 3
TAG255:
sll $0, $0, 0
sltu $3, $1, $1
mfhi $4
mult $1, $1
TAG256:
xor $2, $4, $4
sltu $1, $4, $4
lui $1, 15
mtlo $1
TAG257:
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
TAG258:
and $2, $3, $3
bne $2, $2, TAG259
mult $2, $2
lbu $4, 0($2)
TAG259:
bgtz $4, TAG260
multu $4, $4
addiu $1, $4, 15
bgtz $4, TAG260
TAG260:
mfhi $2
sra $2, $1, 0
lui $4, 11
lui $4, 3
TAG261:
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG262
TAG262:
sll $0, $0, 0
ori $1, $3, 7
bne $4, $3, TAG263
srl $1, $3, 10
TAG263:
sh $1, -320($1)
srl $2, $1, 9
divu $2, $1
mult $2, $2
TAG264:
andi $1, $2, 1
sh $1, 0($1)
mult $1, $1
sw $2, 0($2)
TAG265:
beq $1, $1, TAG266
mult $1, $1
bgtz $1, TAG266
mtlo $1
TAG266:
mfhi $4
multu $4, $1
lhu $2, 0($1)
lui $2, 10
TAG267:
lui $4, 7
bgez $4, TAG268
xori $3, $2, 11
mflo $4
TAG268:
beq $4, $4, TAG269
lui $2, 6
lui $3, 0
divu $4, $3
TAG269:
slt $4, $3, $3
multu $3, $4
lui $4, 14
sltiu $1, $3, 10
TAG270:
slt $2, $1, $1
lui $4, 15
srav $3, $1, $1
bne $3, $2, TAG271
TAG271:
sh $3, 0($3)
srl $4, $3, 15
lb $2, 0($3)
lui $3, 4
TAG272:
lui $4, 9
beq $4, $4, TAG273
mult $3, $4
mthi $4
TAG273:
sll $0, $0, 0
bltz $4, TAG274
addu $3, $4, $4
mfhi $2
TAG274:
mtlo $2
div $2, $2
mult $2, $2
lui $1, 2
TAG275:
mfhi $3
sub $3, $1, $3
sll $0, $0, 0
xor $3, $3, $1
TAG276:
beq $3, $3, TAG277
mfhi $4
or $1, $4, $3
mthi $4
TAG277:
addiu $4, $1, 9
blez $4, TAG278
subu $2, $4, $4
sll $0, $0, 0
TAG278:
bgtz $2, TAG279
sw $2, 0($2)
multu $2, $2
addu $1, $2, $2
TAG279:
mult $1, $1
mflo $2
sra $4, $1, 5
lui $3, 13
TAG280:
mfhi $4
mthi $3
blez $3, TAG281
mfhi $1
TAG281:
bgtz $1, TAG282
lui $3, 4
addu $4, $1, $3
div $3, $4
TAG282:
sh $4, 0($4)
and $2, $4, $4
sb $2, 0($4)
beq $2, $4, TAG283
TAG283:
lui $4, 8
bne $4, $4, TAG284
addu $1, $2, $2
mfhi $3
TAG284:
beq $3, $3, TAG285
mfhi $3
mflo $2
mthi $2
TAG285:
mult $2, $2
andi $4, $2, 4
bltz $2, TAG286
srav $2, $4, $4
TAG286:
lui $3, 3
sll $0, $0, 0
lui $3, 10
sllv $4, $2, $2
TAG287:
mtlo $4
bgtz $4, TAG288
lui $3, 9
sll $4, $4, 14
TAG288:
mfhi $1
sw $4, 0($1)
sra $2, $1, 3
srlv $3, $4, $2
TAG289:
lhu $2, 0($3)
lb $3, 0($2)
add $3, $3, $2
bgtz $3, TAG290
TAG290:
lbu $1, 0($3)
bne $1, $3, TAG291
lhu $2, 0($1)
lw $4, 0($2)
TAG291:
sll $2, $4, 0
lh $3, 0($4)
lhu $2, 0($3)
mthi $4
TAG292:
mflo $3
subu $1, $3, $2
lui $2, 10
sb $2, 0($3)
TAG293:
srlv $4, $2, $2
addiu $1, $4, 0
slti $1, $2, 8
sra $4, $1, 4
TAG294:
mfhi $2
lui $3, 5
lui $2, 5
lbu $4, 0($4)
TAG295:
mthi $4
mthi $4
multu $4, $4
mtlo $4
TAG296:
lui $2, 1
addu $1, $2, $4
multu $1, $2
beq $2, $1, TAG297
TAG297:
sll $0, $0, 0
blez $1, TAG298
sltu $1, $1, $1
blez $1, TAG298
TAG298:
mflo $1
mtlo $1
beq $1, $1, TAG299
lui $1, 2
TAG299:
sllv $3, $1, $1
mthi $3
sll $0, $0, 0
multu $3, $1
TAG300:
mtlo $3
bne $3, $3, TAG301
mthi $3
beq $3, $3, TAG301
TAG301:
sll $0, $0, 0
lui $1, 8
lui $2, 2
bltz $1, TAG302
TAG302:
nor $1, $2, $2
bne $2, $2, TAG303
xor $4, $1, $2
blez $2, TAG303
TAG303:
lui $4, 0
bgtz $4, TAG304
sltu $3, $4, $4
lui $4, 12
TAG304:
sll $0, $0, 0
bne $4, $4, TAG305
sll $0, $0, 0
mfhi $3
TAG305:
blez $3, TAG306
xor $4, $3, $3
ori $2, $4, 9
sra $3, $3, 5
TAG306:
addu $2, $3, $3
lbu $2, -8192($2)
sltiu $1, $3, 3
sb $2, 0($2)
TAG307:
or $2, $1, $1
sltu $3, $2, $2
subu $2, $2, $3
lui $1, 8
TAG308:
div $1, $1
lui $4, 13
sll $0, $0, 0
divu $2, $4
TAG309:
srl $2, $2, 1
addiu $3, $2, 7
bne $2, $2, TAG310
mult $3, $2
TAG310:
mthi $3
lui $1, 1
div $3, $1
subu $4, $1, $1
TAG311:
lui $4, 7
sllv $3, $4, $4
mflo $1
lh $1, 0($1)
TAG312:
mthi $1
sltiu $4, $1, 3
divu $1, $4
lbu $2, 0($4)
TAG313:
lb $4, 0($2)
sltu $1, $2, $2
mflo $2
mflo $2
TAG314:
addiu $3, $2, 3
lbu $4, 0($2)
bltz $4, TAG315
div $2, $3
TAG315:
lh $1, 0($4)
sra $4, $4, 12
mtlo $4
sllv $1, $4, $4
TAG316:
lb $1, 0($1)
slti $4, $1, 10
beq $4, $1, TAG317
mthi $1
TAG317:
blez $4, TAG318
lb $1, 0($4)
sb $1, 0($4)
slt $1, $1, $4
TAG318:
mtlo $1
mthi $1
lbu $4, 0($1)
lbu $1, 0($4)
TAG319:
mfhi $2
addiu $3, $2, 10
bgtz $1, TAG320
mthi $1
TAG320:
divu $3, $3
blez $3, TAG321
mtlo $3
srav $2, $3, $3
TAG321:
multu $2, $2
bne $2, $2, TAG322
mflo $2
lui $3, 3
TAG322:
mflo $4
lui $4, 1
div $3, $3
bgtz $4, TAG323
TAG323:
sll $0, $0, 0
mfhi $4
addu $3, $4, $4
bltz $1, TAG324
TAG324:
mthi $3
mfhi $4
mult $4, $3
mtlo $4
TAG325:
andi $4, $4, 7
lui $1, 0
beq $1, $4, TAG326
xor $1, $4, $1
TAG326:
lui $2, 10
sll $0, $0, 0
sll $3, $1, 6
ori $2, $3, 6
TAG327:
beq $2, $2, TAG328
mthi $2
lhu $4, 0($2)
lui $2, 1
TAG328:
bne $2, $2, TAG329
lui $1, 9
srav $2, $2, $2
lui $4, 10
TAG329:
beq $4, $4, TAG330
sll $0, $0, 0
div $2, $4
lb $4, 0($4)
TAG330:
sll $0, $0, 0
lui $2, 3
slti $2, $4, 7
lui $1, 0
TAG331:
sll $2, $1, 5
mfhi $1
beq $1, $2, TAG332
lui $2, 15
TAG332:
addiu $2, $2, 9
srlv $1, $2, $2
mtlo $2
bne $2, $1, TAG333
TAG333:
srav $1, $1, $1
lbu $1, -1920($1)
add $3, $1, $1
and $1, $3, $1
TAG334:
multu $1, $1
sh $1, 0($1)
beq $1, $1, TAG335
ori $3, $1, 14
TAG335:
bne $3, $3, TAG336
lui $1, 0
ori $2, $1, 13
multu $3, $2
TAG336:
sra $3, $2, 8
blez $2, TAG337
sb $3, 0($2)
addu $3, $3, $3
TAG337:
bltz $3, TAG338
multu $3, $3
mfhi $2
lb $3, 0($2)
TAG338:
sll $3, $3, 2
mflo $4
beq $4, $3, TAG339
mthi $3
TAG339:
lh $1, 0($4)
nor $2, $4, $1
lb $4, 1($2)
bgez $2, TAG340
TAG340:
sw $4, 0($4)
multu $4, $4
mtlo $4
nor $3, $4, $4
TAG341:
srl $2, $3, 2
multu $3, $3
bgez $3, TAG342
nor $4, $3, $2
TAG342:
beq $4, $4, TAG343
lbu $2, 0($4)
bne $4, $2, TAG343
divu $2, $4
TAG343:
lui $3, 15
mtlo $3
sll $0, $0, 0
bltz $1, TAG344
TAG344:
addi $1, $1, 5
ori $1, $1, 0
addu $4, $1, $1
and $3, $1, $4
TAG345:
mflo $2
mflo $1
sll $0, $0, 0
bgtz $2, TAG346
TAG346:
lhu $3, 0($3)
mflo $1
lhu $1, 0($3)
lui $1, 10
TAG347:
subu $4, $1, $1
lui $1, 7
ori $2, $1, 8
divu $2, $2
TAG348:
lui $1, 8
mflo $3
bgez $2, TAG349
and $3, $3, $1
TAG349:
lh $1, 0($3)
subu $3, $1, $1
lui $4, 5
mult $3, $3
TAG350:
addiu $1, $4, 14
div $1, $1
bltz $1, TAG351
srl $4, $4, 10
TAG351:
sltiu $1, $4, 9
bgez $1, TAG352
mflo $1
slti $4, $1, 6
TAG352:
div $4, $4
beq $4, $4, TAG353
sll $1, $4, 13
lui $1, 10
TAG353:
sltiu $2, $1, 0
mult $2, $1
sw $2, 0($2)
sll $4, $1, 5
TAG354:
bgtz $4, TAG355
addu $1, $4, $4
slt $3, $4, $4
sh $4, 0($1)
TAG355:
bgez $3, TAG356
lui $2, 2
mflo $3
or $1, $3, $3
TAG356:
mfhi $3
lh $1, 0($3)
lw $1, 0($3)
mtlo $3
TAG357:
sw $1, 0($1)
srav $3, $1, $1
multu $1, $1
addi $2, $3, 12
TAG358:
mthi $2
mfhi $1
beq $2, $1, TAG359
lui $4, 5
TAG359:
mfhi $4
sra $4, $4, 6
bgtz $4, TAG360
mtlo $4
TAG360:
mult $4, $4
or $4, $4, $4
bgtz $4, TAG361
sra $3, $4, 10
TAG361:
multu $3, $3
lhu $3, 0($3)
sw $3, 0($3)
addiu $1, $3, 1
TAG362:
beq $1, $1, TAG363
lui $1, 14
mfhi $4
bgtz $1, TAG363
TAG363:
nor $3, $4, $4
lbu $4, 1($3)
sll $2, $4, 11
mtlo $3
TAG364:
mflo $4
beq $2, $4, TAG365
srl $3, $4, 11
sll $0, $0, 0
TAG365:
divu $4, $4
sh $4, 1($4)
andi $1, $4, 11
mfhi $1
TAG366:
sw $1, 0($1)
mtlo $1
sltu $3, $1, $1
bgez $3, TAG367
TAG367:
addiu $3, $3, 11
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
TAG368:
andi $1, $4, 14
sh $1, 0($1)
lhu $3, 0($1)
mult $3, $1
TAG369:
lhu $2, 0($3)
addiu $3, $2, 10
mtlo $2
bltz $3, TAG370
TAG370:
lhu $1, 0($3)
sh $3, -2826($1)
mtlo $1
subu $3, $3, $3
TAG371:
multu $3, $3
bne $3, $3, TAG372
sra $2, $3, 10
beq $2, $3, TAG372
TAG372:
mflo $3
bne $2, $2, TAG373
sh $2, 0($3)
mthi $2
TAG373:
sw $3, 0($3)
bne $3, $3, TAG374
lb $4, 0($3)
sh $3, 0($4)
TAG374:
or $1, $4, $4
slti $3, $4, 4
mtlo $1
beq $3, $3, TAG375
TAG375:
sb $3, 0($3)
andi $2, $3, 8
sb $3, 0($2)
mthi $2
TAG376:
bgez $2, TAG377
sw $2, 0($2)
divu $2, $2
ori $1, $2, 11
TAG377:
lbu $2, 0($1)
bgtz $2, TAG378
sllv $1, $2, $1
mflo $4
TAG378:
multu $4, $4
mthi $4
lui $1, 7
mflo $1
TAG379:
mflo $3
mflo $2
lui $4, 15
sb $3, 0($2)
TAG380:
sll $0, $0, 0
mflo $2
lui $2, 11
sll $0, $0, 0
TAG381:
ori $1, $2, 10
div $2, $2
mfhi $2
bne $2, $1, TAG382
TAG382:
sb $2, 0($2)
bgez $2, TAG383
mult $2, $2
mthi $2
TAG383:
sw $2, 0($2)
multu $2, $2
multu $2, $2
mfhi $2
TAG384:
mfhi $2
multu $2, $2
lui $4, 13
div $4, $4
TAG385:
mthi $4
lui $1, 7
sra $2, $4, 13
mflo $4
TAG386:
beq $4, $4, TAG387
multu $4, $4
or $4, $4, $4
addu $3, $4, $4
TAG387:
beq $3, $3, TAG388
lbu $2, 0($3)
mthi $3
divu $3, $3
TAG388:
addu $2, $2, $2
mflo $1
xor $1, $2, $1
lbu $1, 0($2)
TAG389:
xori $3, $1, 13
sw $1, 0($1)
lb $4, 0($3)
lbu $1, 0($3)
TAG390:
lui $1, 10
divu $1, $1
mfhi $3
lw $1, 0($3)
TAG391:
mthi $1
addi $1, $1, 12
beq $1, $1, TAG392
sh $1, 0($1)
TAG392:
lui $1, 1
sllv $1, $1, $1
mflo $2
bltz $1, TAG393
TAG393:
sb $2, 0($2)
xor $3, $2, $2
bltz $3, TAG394
sh $2, 0($3)
TAG394:
mthi $3
lui $2, 12
sll $0, $0, 0
div $2, $2
TAG395:
mflo $1
mfhi $3
bltz $1, TAG396
mthi $2
TAG396:
mtlo $3
addiu $2, $3, 1
bgez $3, TAG397
sw $3, 0($3)
TAG397:
mthi $2
div $2, $2
mult $2, $2
xori $1, $2, 14
TAG398:
mthi $1
mult $1, $1
beq $1, $1, TAG399
lbu $4, 0($1)
TAG399:
sh $4, 0($4)
mult $4, $4
multu $4, $4
lh $1, 0($4)
TAG400:
lui $3, 12
srl $1, $1, 10
lhu $4, 0($1)
bne $1, $3, TAG401
TAG401:
mthi $4
lh $4, 0($4)
multu $4, $4
mfhi $1
TAG402:
mfhi $1
multu $1, $1
lui $2, 11
beq $2, $1, TAG403
TAG403:
mtlo $2
sll $0, $0, 0
divu $2, $2
mult $2, $2
TAG404:
andi $4, $2, 15
sb $4, 0($4)
mfhi $3
lb $3, 0($3)
TAG405:
lui $1, 11
mthi $1
multu $3, $1
mthi $3
TAG406:
mfhi $2
srl $1, $1, 10
sw $1, 0($2)
sh $1, -704($1)
TAG407:
mfhi $2
beq $1, $1, TAG408
lui $4, 9
beq $1, $4, TAG408
TAG408:
div $4, $4
blez $4, TAG409
mfhi $1
lui $3, 10
TAG409:
mthi $3
sll $0, $0, 0
bgez $3, TAG410
addu $1, $4, $3
TAG410:
lui $1, 8
beq $1, $1, TAG411
lui $2, 1
and $4, $2, $1
TAG411:
mflo $1
sll $0, $0, 0
subu $3, $1, $1
mflo $2
TAG412:
bne $2, $2, TAG413
mflo $2
mflo $2
sb $2, 0($2)
TAG413:
sb $2, 0($2)
bltz $2, TAG414
mthi $2
lui $2, 8
TAG414:
mfhi $2
mflo $1
bltz $2, TAG415
xori $3, $2, 6
TAG415:
lui $1, 1
addu $3, $1, $1
lui $1, 3
and $4, $1, $3
TAG416:
divu $4, $4
lui $4, 1
mtlo $4
mthi $4
TAG417:
sll $0, $0, 0
sll $0, $0, 0
div $3, $4
lui $3, 3
TAG418:
mflo $1
div $3, $3
or $1, $3, $3
sll $0, $0, 0
TAG419:
mtlo $1
bgez $1, TAG420
sll $0, $0, 0
lb $1, 0($1)
TAG420:
bgtz $1, TAG421
mthi $1
mtlo $1
lui $2, 8
TAG421:
mfhi $4
sll $0, $0, 0
sb $4, 0($2)
mtlo $4
TAG422:
mflo $1
bgtz $1, TAG423
sll $0, $0, 0
lui $2, 3
TAG423:
mtlo $2
bgtz $2, TAG424
slti $4, $2, 4
srav $2, $2, $4
TAG424:
lui $2, 0
sb $2, 0($2)
srlv $3, $2, $2
lbu $1, 0($2)
TAG425:
beq $1, $1, TAG426
mult $1, $1
slt $2, $1, $1
lui $4, 14
TAG426:
and $3, $4, $4
mflo $2
or $4, $2, $4
lui $3, 13
TAG427:
bne $3, $3, TAG428
mtlo $3
sll $0, $0, 0
mtlo $3
TAG428:
lui $2, 6
sb $1, 0($1)
div $2, $2
mfhi $1
TAG429:
add $4, $1, $1
xori $4, $1, 1
lui $4, 14
lui $1, 6
TAG430:
lui $1, 1
sll $0, $0, 0
mtlo $4
lui $1, 5
TAG431:
lui $3, 6
mthi $3
sll $0, $0, 0
mthi $1
TAG432:
bgez $3, TAG433
mflo $2
bne $3, $2, TAG433
addiu $3, $2, 10
TAG433:
and $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
andi $4, $1, 9
TAG434:
andi $4, $4, 11
beq $4, $4, TAG435
mtlo $4
bne $4, $4, TAG435
TAG435:
addi $3, $4, 3
mfhi $3
mthi $3
sll $0, $0, 0
TAG436:
mfhi $1
divu $1, $1
beq $1, $1, TAG437
mtlo $4
TAG437:
addu $1, $1, $1
sll $0, $0, 0
mtlo $1
multu $1, $1
TAG438:
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
blez $1, TAG439
TAG439:
srav $3, $1, $1
mtlo $3
lui $1, 13
lui $3, 11
TAG440:
bgez $3, TAG441
addiu $2, $3, 4
mtlo $3
sw $2, 0($2)
TAG441:
mult $2, $2
sll $0, $0, 0
mthi $2
multu $2, $2
TAG442:
bgtz $1, TAG443
lui $4, 4
mtlo $1
xori $3, $1, 0
TAG443:
mtlo $3
sll $0, $0, 0
lui $1, 12
sll $0, $0, 0
TAG444:
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG445
lui $2, 14
TAG445:
mthi $2
xori $3, $2, 2
mthi $2
and $1, $3, $2
TAG446:
mtlo $1
mtlo $1
or $1, $1, $1
bgtz $1, TAG447
TAG447:
sll $0, $0, 0
slt $4, $1, $1
addu $2, $3, $3
lui $2, 3
TAG448:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
TAG449:
addiu $3, $1, 2
sll $0, $0, 0
divu $1, $1
mflo $3
TAG450:
mthi $3
beq $3, $3, TAG451
lui $2, 4
lui $2, 10
TAG451:
sll $0, $0, 0
lui $2, 14
nor $3, $2, $2
sll $2, $2, 4
TAG452:
sll $0, $0, 0
lui $1, 4
multu $1, $2
subu $4, $1, $1
TAG453:
or $3, $4, $4
and $4, $4, $4
sb $3, 0($4)
srlv $1, $3, $3
TAG454:
xori $1, $1, 13
multu $1, $1
beq $1, $1, TAG455
lui $2, 14
TAG455:
sll $0, $0, 0
lui $4, 2
beq $4, $2, TAG456
srav $3, $2, $2
TAG456:
andi $3, $3, 2
bne $3, $3, TAG457
lw $4, 0($3)
lbu $3, 0($3)
TAG457:
bltz $3, TAG458
multu $3, $3
multu $3, $3
and $4, $3, $3
TAG458:
mtlo $4
mthi $4
bne $4, $4, TAG459
mfhi $2
TAG459:
mfhi $3
slti $2, $3, 9
addiu $4, $2, 1
bltz $3, TAG460
TAG460:
mult $4, $4
sb $4, 0($4)
multu $4, $4
lbu $3, 0($4)
TAG461:
or $1, $3, $3
beq $1, $1, TAG462
lui $3, 10
mthi $3
TAG462:
bne $3, $3, TAG463
sll $0, $0, 0
bne $3, $2, TAG463
multu $3, $2
TAG463:
lbu $1, 0($2)
lui $2, 7
bgtz $1, TAG464
addu $4, $2, $1
TAG464:
mfhi $2
sub $3, $4, $2
lui $3, 10
bne $3, $4, TAG465
TAG465:
sll $0, $0, 0
slti $1, $3, 15
srav $3, $1, $3
mflo $4
TAG466:
lui $2, 7
sll $0, $0, 0
sll $0, $0, 0
divu $4, $2
TAG467:
subu $1, $2, $2
beq $1, $2, TAG468
lui $4, 5
and $3, $1, $1
TAG468:
lui $4, 15
sltu $1, $3, $3
lb $3, 0($1)
mflo $4
TAG469:
mflo $4
lbu $2, 0($4)
lui $3, 3
beq $4, $3, TAG470
TAG470:
mult $3, $3
bgez $3, TAG471
srlv $2, $3, $3
sltu $2, $2, $2
TAG471:
subu $2, $2, $2
sub $3, $2, $2
sltu $2, $2, $2
mult $2, $2
TAG472:
mflo $2
bgez $2, TAG473
lui $1, 11
sw $2, 0($1)
TAG473:
mtlo $1
addiu $1, $1, 5
sll $0, $0, 0
bltz $1, TAG474
TAG474:
lui $1, 7
mthi $1
srl $1, $1, 15
or $3, $1, $1
TAG475:
mfhi $1
ori $4, $3, 8
sh $3, 0($4)
blez $3, TAG476
TAG476:
lhu $3, 0($4)
mthi $3
bgtz $3, TAG477
mult $4, $4
TAG477:
mthi $3
or $3, $3, $3
lui $2, 4
sll $0, $0, 0
TAG478:
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG479:
divu $3, $3
bne $3, $3, TAG480
lh $3, 0($3)
beq $3, $3, TAG480
TAG480:
divu $3, $3
addu $4, $3, $3
andi $4, $3, 10
srl $3, $4, 14
TAG481:
mthi $3
lui $2, 3
lui $3, 15
sll $0, $0, 0
TAG482:
sll $0, $0, 0
lui $4, 0
xor $1, $4, $3
bgtz $4, TAG483
TAG483:
multu $1, $1
lui $3, 10
mflo $2
mult $1, $2
TAG484:
bne $2, $2, TAG485
sll $3, $2, 14
mult $3, $3
sb $3, 0($3)
TAG485:
add $3, $3, $3
mult $3, $3
mult $3, $3
mthi $3
TAG486:
xori $4, $3, 8
addiu $3, $4, 6
mfhi $2
bne $4, $3, TAG487
TAG487:
and $3, $2, $2
lui $4, 10
lbu $4, 0($3)
nor $1, $2, $4
TAG488:
mthi $1
bgtz $1, TAG489
srl $1, $1, 4
bgtz $1, TAG489
TAG489:
lui $3, 0
lui $2, 13
mtlo $2
bne $3, $3, TAG490
TAG490:
lui $1, 10
sll $0, $0, 0
mfhi $2
mthi $4
TAG491:
sb $2, 1($2)
mult $2, $2
lh $1, 1($2)
mthi $1
TAG492:
mflo $1
and $2, $1, $1
and $2, $2, $1
mfhi $1
TAG493:
mtlo $1
mfhi $4
bgtz $1, TAG494
subu $1, $1, $1
TAG494:
bgez $1, TAG495
lh $2, 0($1)
lui $3, 0
xori $1, $3, 12
TAG495:
mfhi $4
lh $3, -255($4)
xor $2, $3, $3
andi $3, $3, 2
TAG496:
sltiu $4, $3, 7
andi $4, $3, 9
lbu $2, 0($3)
mflo $4
TAG497:
beq $4, $4, TAG498
multu $4, $4
divu $4, $4
mfhi $1
TAG498:
lui $2, 2
bgtz $1, TAG499
sll $0, $0, 0
addiu $3, $2, 12
TAG499:
sra $1, $3, 7
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
TAG500:
mflo $1
mult $1, $1
mfhi $1
mfhi $1
TAG501:
div $1, $1
andi $4, $1, 11
addiu $3, $4, 1
mult $3, $4
TAG502:
lui $4, 6
lui $1, 2
bgtz $4, TAG503
sll $0, $0, 0
TAG503:
div $1, $1
sll $0, $0, 0
beq $1, $1, TAG504
mflo $3
TAG504:
and $1, $3, $3
lbu $2, 0($3)
sw $2, 0($2)
sltu $1, $3, $3
TAG505:
lui $1, 1
div $1, $1
bne $1, $1, TAG506
lui $1, 0
TAG506:
lui $3, 14
mflo $3
lbu $3, 0($1)
srl $1, $3, 11
TAG507:
beq $1, $1, TAG508
xor $2, $1, $1
mfhi $2
beq $2, $2, TAG508
TAG508:
mtlo $2
bne $2, $2, TAG509
ori $3, $2, 8
mtlo $2
TAG509:
sw $3, 0($3)
lb $3, 0($3)
lw $3, 0($3)
mfhi $1
TAG510:
mfhi $1
blez $1, TAG511
lui $1, 14
sw $1, 0($1)
TAG511:
sll $0, $0, 0
beq $1, $1, TAG512
mtlo $1
srlv $2, $1, $1
TAG512:
sllv $1, $2, $2
multu $1, $1
sh $2, 0($2)
andi $2, $1, 11
TAG513:
lui $2, 9
sll $0, $0, 0
mtlo $2
bgtz $2, TAG514
TAG514:
mthi $2
divu $2, $2
srav $2, $2, $2
lui $4, 14
TAG515:
slti $3, $4, 15
lui $2, 1
sll $0, $0, 0
beq $3, $2, TAG516
TAG516:
sll $0, $0, 0
lui $2, 15
bne $2, $2, TAG517
srav $2, $2, $2
TAG517:
sll $0, $0, 0
bgez $2, TAG518
sll $0, $0, 0
divu $2, $2
TAG518:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
mfhi $2
TAG519:
sltu $2, $2, $2
lw $4, 0($2)
sw $4, 0($4)
mflo $3
TAG520:
mthi $3
divu $3, $3
lui $2, 13
sll $0, $0, 0
TAG521:
sll $0, $0, 0
bne $2, $2, TAG522
lui $4, 1
mflo $3
TAG522:
sltiu $1, $3, 2
lui $1, 14
bgtz $3, TAG523
mfhi $2
TAG523:
lui $2, 10
lui $4, 11
addiu $4, $2, 11
mtlo $2
TAG524:
mflo $2
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG525:
bgez $4, TAG526
xori $3, $4, 3
lui $2, 15
sw $4, 0($4)
TAG526:
sll $0, $0, 0
addu $1, $2, $3
lui $4, 12
mtlo $4
TAG527:
lui $4, 14
addiu $2, $4, 5
mult $2, $4
bgtz $4, TAG528
TAG528:
divu $2, $2
mtlo $2
subu $4, $2, $2
mflo $3
TAG529:
bgtz $3, TAG530
sll $0, $0, 0
bltz $3, TAG530
addiu $2, $3, 0
TAG530:
bltz $2, TAG531
nor $1, $2, $2
lui $2, 8
blez $1, TAG531
TAG531:
srlv $2, $2, $2
bne $2, $2, TAG532
mtlo $2
sllv $2, $2, $2
TAG532:
slti $1, $2, 7
mflo $4
xori $4, $1, 14
bltz $4, TAG533
TAG533:
sh $4, 0($4)
srlv $2, $4, $4
blez $2, TAG534
mflo $2
TAG534:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 10
beq $1, $2, TAG535
TAG535:
sll $0, $0, 0
multu $1, $1
srav $4, $1, $1
subu $1, $4, $1
TAG536:
sh $1, 0($1)
bne $1, $1, TAG537
sw $1, 0($1)
subu $3, $1, $1
TAG537:
sh $3, 0($3)
addu $2, $3, $3
lh $1, 0($3)
multu $3, $3
TAG538:
mflo $4
lhu $4, 0($4)
mthi $4
beq $4, $4, TAG539
TAG539:
mfhi $4
mfhi $3
mthi $4
mflo $4
TAG540:
sb $4, 0($4)
bgtz $4, TAG541
lui $1, 10
sra $3, $1, 15
TAG541:
div $3, $3
multu $3, $3
slt $4, $3, $3
lui $4, 3
TAG542:
lui $4, 9
sll $0, $0, 0
addiu $1, $1, 3
srl $2, $1, 13
TAG543:
sllv $2, $2, $2
lui $3, 8
blez $2, TAG544
lui $1, 10
TAG544:
srlv $1, $1, $1
lui $1, 3
lui $2, 7
sll $0, $0, 0
TAG545:
sll $0, $0, 0
mthi $1
srlv $2, $1, $1
sllv $4, $2, $1
TAG546:
slti $4, $4, 10
blez $4, TAG547
andi $4, $4, 15
sllv $1, $4, $4
TAG547:
mtlo $1
mtlo $1
addiu $1, $1, 14
divu $1, $1
TAG548:
mfhi $2
mtlo $1
bne $2, $2, TAG549
mthi $2
TAG549:
srav $2, $2, $2
multu $2, $2
multu $2, $2
mthi $2
TAG550:
bne $2, $2, TAG551
lui $2, 9
mtlo $2
mfhi $4
TAG551:
bne $4, $4, TAG552
multu $4, $4
mult $4, $4
mflo $4
TAG552:
mtlo $4
sh $4, 0($4)
multu $4, $4
mflo $3
TAG553:
mfhi $2
sh $3, 0($3)
xori $2, $2, 2
lhu $1, 0($2)
TAG554:
lw $1, 0($1)
bne $1, $1, TAG555
mfhi $1
lb $4, 0($1)
TAG555:
mtlo $4
lw $2, 0($4)
sb $2, 0($2)
sh $4, 0($4)
TAG556:
mtlo $2
lui $1, 4
mult $2, $2
sll $0, $0, 0
TAG557:
sw $2, 0($2)
mthi $2
mtlo $2
mflo $2
TAG558:
lui $2, 14
multu $2, $2
lui $3, 3
nor $3, $3, $2
TAG559:
sll $0, $0, 0
mtlo $3
slti $1, $3, 14
multu $1, $3
TAG560:
or $4, $1, $1
lui $1, 7
mtlo $1
lui $4, 4
TAG561:
bltz $4, TAG562
mfhi $4
mtlo $4
mult $4, $4
TAG562:
add $2, $4, $4
mflo $4
beq $4, $2, TAG563
lui $3, 1
TAG563:
mult $3, $3
bltz $3, TAG564
divu $3, $3
bltz $3, TAG564
TAG564:
mflo $2
mflo $2
bne $2, $2, TAG565
slti $4, $2, 14
TAG565:
slti $1, $4, 15
mthi $4
lb $1, 0($4)
mult $1, $1
TAG566:
bne $1, $1, TAG567
mthi $1
addiu $2, $1, 9
lui $4, 5
TAG567:
lui $4, 1
mflo $3
ori $2, $4, 14
subu $1, $2, $2
TAG568:
srlv $4, $1, $1
bgtz $4, TAG569
sllv $2, $4, $1
bltz $1, TAG569
TAG569:
nor $4, $2, $2
multu $2, $4
multu $2, $2
lb $1, 0($2)
TAG570:
lui $4, 5
xori $2, $4, 14
mtlo $2
bne $2, $1, TAG571
TAG571:
mfhi $2
lbu $1, 0($2)
add $1, $2, $1
lui $1, 15
TAG572:
mthi $1
lui $2, 0
beq $1, $1, TAG573
slti $2, $1, 12
TAG573:
lui $1, 15
and $1, $1, $1
bgez $2, TAG574
mtlo $2
TAG574:
bne $1, $1, TAG575
sll $0, $0, 0
bne $1, $1, TAG575
sll $0, $0, 0
TAG575:
beq $1, $1, TAG576
div $1, $1
and $2, $1, $1
lw $2, 0($1)
TAG576:
slt $4, $2, $2
sh $4, 0($2)
sltiu $4, $2, 7
lui $2, 12
TAG577:
mfhi $2
multu $2, $2
bgtz $2, TAG578
slti $1, $2, 8
TAG578:
lui $2, 5
beq $1, $1, TAG579
sb $2, 0($1)
mult $2, $1
TAG579:
sll $0, $0, 0
and $4, $2, $2
mtlo $2
bgtz $4, TAG580
TAG580:
multu $4, $4
xor $3, $4, $4
lui $3, 14
subu $4, $4, $3
TAG581:
mtlo $4
slti $3, $4, 10
bltz $3, TAG582
sra $2, $4, 5
TAG582:
blez $2, TAG583
andi $3, $2, 14
srav $3, $3, $2
lbu $3, 0($2)
TAG583:
bne $3, $3, TAG584
mtlo $3
or $1, $3, $3
lui $1, 3
TAG584:
mfhi $4
mthi $1
bne $1, $4, TAG585
mflo $2
TAG585:
sub $1, $2, $2
bgtz $1, TAG586
lw $1, 0($1)
sb $2, 0($2)
TAG586:
lh $2, 0($1)
nor $3, $1, $1
sw $3, 1($3)
addu $4, $3, $3
TAG587:
bne $4, $4, TAG588
div $4, $4
mtlo $4
blez $4, TAG588
TAG588:
lui $1, 3
mthi $1
bne $4, $1, TAG589
mflo $1
TAG589:
bne $1, $1, TAG590
subu $1, $1, $1
lui $2, 5
beq $2, $1, TAG590
TAG590:
mtlo $2
lui $1, 14
sltu $2, $1, $2
lui $1, 2
TAG591:
bgtz $1, TAG592
addiu $1, $1, 13
sh $1, 0($1)
lbu $3, 0($1)
TAG592:
subu $2, $3, $3
or $3, $3, $3
mfhi $1
mthi $3
TAG593:
andi $4, $1, 2
bgez $4, TAG594
sub $2, $1, $4
add $1, $2, $1
TAG594:
div $1, $1
bgez $1, TAG595
nor $3, $1, $1
lb $4, 0($3)
TAG595:
sw $4, 0($4)
lui $1, 6
mflo $1
divu $4, $1
TAG596:
sb $1, 0($1)
mthi $1
andi $4, $1, 12
lbu $2, 0($1)
TAG597:
lbu $3, 0($2)
lui $1, 7
mflo $1
sh $3, 0($1)
TAG598:
multu $1, $1
mtlo $1
mflo $3
sh $3, 0($3)
TAG599:
beq $3, $3, TAG600
addiu $1, $3, 8
beq $3, $1, TAG600
lui $4, 13
TAG600:
mfhi $4
mflo $2
beq $2, $4, TAG601
lui $3, 0
TAG601:
sw $3, 0($3)
beq $3, $3, TAG602
sb $3, 0($3)
lhu $1, 0($3)
TAG602:
sh $1, 0($1)
mfhi $2
beq $1, $1, TAG603
addiu $1, $1, 9
TAG603:
and $2, $1, $1
bne $1, $2, TAG604
lui $4, 0
sb $2, 0($1)
TAG604:
srl $1, $4, 10
multu $1, $4
multu $4, $1
lui $1, 3
TAG605:
mflo $3
lbu $1, 0($3)
sltiu $1, $1, 10
mfhi $4
TAG606:
mfhi $4
mtlo $4
mult $4, $4
add $4, $4, $4
TAG607:
multu $4, $4
mthi $4
lui $2, 7
mthi $2
TAG608:
mfhi $2
sltu $2, $2, $2
lui $1, 15
mthi $1
TAG609:
lui $4, 0
beq $1, $4, TAG610
lw $1, 0($4)
addi $1, $1, 14
TAG610:
srl $4, $1, 8
srl $4, $4, 6
sh $1, 0($1)
lui $2, 10
TAG611:
mthi $2
sll $1, $2, 6
sll $0, $0, 0
lui $1, 7
TAG612:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG613
TAG613:
lui $3, 13
mult $4, $3
sll $0, $0, 0
sll $0, $0, 0
TAG614:
mthi $1
bne $1, $1, TAG615
divu $1, $1
mthi $1
TAG615:
sll $0, $0, 0
mflo $3
mflo $3
lui $3, 0
TAG616:
sh $3, 0($3)
lui $3, 1
mult $3, $3
beq $3, $3, TAG617
TAG617:
sllv $2, $3, $3
divu $3, $2
mfhi $4
lui $1, 6
TAG618:
lui $1, 8
mult $1, $1
mfhi $4
mflo $3
TAG619:
sra $4, $3, 9
blez $4, TAG620
sb $3, 0($3)
srl $1, $3, 5
TAG620:
srav $4, $1, $1
lui $2, 9
subu $2, $2, $4
sll $0, $0, 0
TAG621:
sllv $4, $4, $4
andi $4, $4, 13
multu $4, $4
mthi $4
TAG622:
addi $2, $4, 7
mfhi $4
mult $4, $4
mult $4, $2
TAG623:
mthi $4
mthi $4
bgtz $4, TAG624
mthi $4
TAG624:
blez $4, TAG625
lui $1, 13
sub $4, $1, $1
bltz $1, TAG625
TAG625:
multu $4, $4
mfhi $1
bltz $1, TAG626
sw $1, 0($1)
TAG626:
mult $1, $1
multu $1, $1
multu $1, $1
mflo $4
TAG627:
blez $4, TAG628
mtlo $4
mthi $4
mfhi $3
TAG628:
mthi $3
bgez $3, TAG629
srav $1, $3, $3
mult $1, $3
TAG629:
beq $1, $1, TAG630
sra $1, $1, 9
lb $3, 0($1)
mflo $4
TAG630:
lui $1, 2
xor $2, $1, $4
blez $1, TAG631
ori $2, $1, 3
TAG631:
subu $2, $2, $2
lui $3, 1
bltz $2, TAG632
mfhi $4
TAG632:
lbu $1, 0($4)
srl $3, $4, 14
multu $1, $3
bltz $3, TAG633
TAG633:
lui $1, 7
mtlo $1
sll $0, $0, 0
div $3, $1
TAG634:
mult $1, $1
blez $1, TAG635
xori $3, $1, 6
sll $0, $0, 0
TAG635:
mfhi $3
bgez $3, TAG636
sltu $1, $3, $3
lhu $4, 0($3)
TAG636:
mtlo $4
sb $4, 0($4)
multu $4, $4
bltz $4, TAG637
TAG637:
addi $1, $4, 15
divu $1, $1
bgtz $4, TAG638
mfhi $2
TAG638:
mflo $3
mflo $4
multu $4, $4
mflo $2
TAG639:
sll $3, $2, 9
bltz $3, TAG640
mtlo $3
mtlo $2
TAG640:
bne $3, $3, TAG641
mfhi $2
lui $4, 13
bgtz $3, TAG641
TAG641:
sra $1, $4, 6
bgez $1, TAG642
multu $1, $1
bgez $1, TAG642
TAG642:
mtlo $1
bgez $1, TAG643
subu $3, $1, $1
sh $3, 0($3)
TAG643:
sh $3, 0($3)
mult $3, $3
mthi $3
lhu $2, 0($3)
TAG644:
bne $2, $2, TAG645
or $3, $2, $2
mthi $3
sh $2, 0($2)
TAG645:
mflo $4
blez $3, TAG646
sltiu $2, $3, 3
lui $1, 7
TAG646:
sb $1, -13312($1)
mthi $1
lui $1, 9
blez $1, TAG647
TAG647:
sll $0, $0, 0
beq $1, $1, TAG648
mflo $3
mult $3, $1
TAG648:
sllv $4, $3, $3
lhu $2, 0($4)
addiu $4, $4, 15
mfhi $2
TAG649:
sll $0, $0, 0
bgez $3, TAG650
multu $2, $3
sra $4, $2, 9
TAG650:
lui $1, 5
addiu $4, $4, 11
mfhi $4
lhu $2, 0($4)
TAG651:
sltiu $3, $2, 15
beq $2, $2, TAG652
lbu $3, 0($3)
nor $2, $3, $3
TAG652:
subu $4, $2, $2
bgez $2, TAG653
mult $4, $4
sb $4, 0($2)
TAG653:
mthi $4
bne $4, $4, TAG654
or $1, $4, $4
mflo $3
TAG654:
srav $4, $3, $3
multu $3, $4
sb $4, 0($3)
addi $1, $3, 11
TAG655:
lui $3, 6
sb $3, 0($1)
andi $4, $1, 7
lui $4, 5
TAG656:
sll $0, $0, 0
mult $4, $2
lui $1, 9
sll $0, $0, 0
TAG657:
addu $2, $1, $1
sll $1, $1, 0
sll $0, $0, 0
andi $2, $1, 4
TAG658:
subu $1, $2, $2
sllv $1, $1, $2
lh $2, 0($1)
mult $1, $2
TAG659:
mflo $2
mthi $2
slti $2, $2, 5
div $2, $2
TAG660:
mthi $2
mflo $4
lbu $2, 0($2)
mthi $4
TAG661:
add $4, $2, $2
mtlo $4
mult $2, $4
lui $4, 4
TAG662:
mflo $3
mflo $4
sh $4, 0($4)
multu $4, $4
TAG663:
bne $4, $4, TAG664
sllv $3, $4, $4
sub $4, $3, $3
lbu $1, 0($3)
TAG664:
bgtz $1, TAG665
srl $1, $1, 14
mtlo $1
lh $3, 0($1)
TAG665:
mtlo $3
sb $3, 0($3)
mthi $3
mflo $2
TAG666:
bgtz $2, TAG667
mult $2, $2
mthi $2
or $2, $2, $2
TAG667:
slti $3, $2, 9
bgez $2, TAG668
mtlo $3
blez $3, TAG668
TAG668:
addiu $2, $3, 9
bltz $2, TAG669
addu $2, $3, $2
nor $4, $3, $2
TAG669:
lui $3, 2
addiu $1, $3, 11
or $4, $3, $3
blez $3, TAG670
TAG670:
sll $1, $4, 0
bltz $1, TAG671
divu $4, $1
sll $0, $0, 0
TAG671:
mult $4, $4
andi $2, $4, 3
sll $0, $0, 0
mthi $2
TAG672:
lw $4, 0($2)
sw $2, 0($2)
mthi $2
mflo $1
TAG673:
mtlo $1
mflo $2
lb $4, 0($2)
xori $1, $4, 11
TAG674:
xor $2, $1, $1
divu $1, $1
srl $1, $2, 5
mflo $2
TAG675:
mflo $2
lb $4, 0($2)
sb $2, 0($2)
mfhi $1
TAG676:
mult $1, $1
multu $1, $1
addiu $2, $1, 9
bne $2, $1, TAG677
TAG677:
lb $2, 0($2)
lui $2, 7
bne $2, $2, TAG678
slti $2, $2, 12
TAG678:
mthi $2
mfhi $1
mthi $2
xor $2, $2, $2
TAG679:
andi $2, $2, 14
bltz $2, TAG680
lb $4, 0($2)
mthi $2
TAG680:
bgez $4, TAG681
lh $2, 0($4)
sb $2, 0($4)
beq $2, $2, TAG681
TAG681:
mthi $2
mtlo $2
sh $2, -256($2)
mfhi $2
TAG682:
mthi $2
nor $1, $2, $2
lui $1, 11
mthi $1
TAG683:
mflo $1
lh $4, -256($1)
mult $4, $4
lh $1, -256($1)
TAG684:
sll $1, $1, 0
bltz $1, TAG685
mult $1, $1
bne $1, $1, TAG685
TAG685:
mthi $1
multu $1, $1
bgez $1, TAG686
mtlo $1
TAG686:
sll $0, $0, 0
bne $1, $1, TAG687
sll $4, $4, 11
sb $4, -256($1)
TAG687:
mflo $1
mtlo $4
lbu $2, -256($1)
lui $2, 15
TAG688:
blez $2, TAG689
sra $2, $2, 12
slti $2, $2, 0
mtlo $2
TAG689:
bgtz $2, TAG690
lhu $3, 0($2)
lui $3, 12
bne $3, $2, TAG690
TAG690:
mthi $3
sllv $2, $3, $3
mthi $3
bltz $2, TAG691
TAG691:
lui $3, 4
sll $0, $0, 0
mflo $1
andi $3, $1, 6
TAG692:
lui $3, 12
sll $0, $0, 0
lui $4, 9
mfhi $2
TAG693:
addiu $3, $2, 12
mtlo $2
mult $2, $2
mflo $2
TAG694:
sllv $1, $2, $2
sll $2, $2, 3
mfhi $4
mtlo $2
TAG695:
sll $0, $0, 0
mfhi $2
mthi $2
bgez $2, TAG696
TAG696:
slt $3, $2, $2
lui $1, 1
sll $4, $3, 8
lh $1, 0($3)
TAG697:
sb $1, -256($1)
blez $1, TAG698
nor $4, $1, $1
lh $1, -256($1)
TAG698:
addu $3, $1, $1
slt $2, $1, $1
blez $1, TAG699
mthi $1
TAG699:
bne $2, $2, TAG700
addu $2, $2, $2
mflo $1
sh $2, 0($2)
TAG700:
sb $1, 0($1)
lb $1, 0($1)
mult $1, $1
slti $1, $1, 5
TAG701:
bltz $1, TAG702
div $1, $1
lui $2, 9
sra $3, $1, 5
TAG702:
lw $3, 0($3)
mtlo $3
bgtz $3, TAG703
or $1, $3, $3
TAG703:
multu $1, $1
mtlo $1
mflo $1
srl $3, $1, 14
TAG704:
lh $4, 0($3)
mflo $1
lui $1, 4
mfhi $3
TAG705:
mfhi $1
lhu $4, 0($3)
mtlo $4
sb $3, 0($3)
TAG706:
lw $4, 0($4)
sw $4, 0($4)
lui $4, 2
mflo $3
TAG707:
sub $2, $3, $3
mflo $2
lui $2, 8
mthi $2
TAG708:
subu $4, $2, $2
nor $2, $4, $2
mult $4, $4
blez $4, TAG709
TAG709:
sll $0, $0, 0
bne $4, $4, TAG710
sub $3, $4, $4
mflo $4
TAG710:
mtlo $4
sh $4, 0($4)
mult $4, $4
mthi $4
TAG711:
bne $4, $4, TAG712
and $2, $4, $4
sh $4, 0($2)
lui $4, 12
TAG712:
mfhi $4
addi $4, $4, 0
lhu $4, 0($4)
lbu $2, 0($4)
TAG713:
lui $4, 9
mflo $3
addiu $1, $3, 3
bgtz $2, TAG714
TAG714:
lui $3, 14
srlv $4, $3, $1
div $1, $1
sll $0, $0, 0
TAG715:
bgez $4, TAG716
lui $2, 15
bne $2, $4, TAG716
mtlo $2
TAG716:
sll $0, $0, 0
lui $1, 14
mtlo $1
bne $2, $2, TAG717
TAG717:
mflo $1
mfhi $4
sll $0, $0, 0
lui $1, 12
TAG718:
xori $1, $1, 5
sll $2, $1, 4
divu $1, $2
mflo $3
TAG719:
sw $3, 0($3)
bne $3, $3, TAG720
lb $4, 0($3)
xor $2, $4, $3
TAG720:
mfhi $2
sll $0, $0, 0
addu $1, $1, $2
beq $1, $1, TAG721
TAG721:
xori $1, $1, 12
sll $0, $0, 0
slti $3, $2, 10
sltu $2, $2, $1
TAG722:
mtlo $2
sb $2, 0($2)
bgez $2, TAG723
xori $2, $2, 12
TAG723:
slti $1, $2, 3
bgez $1, TAG724
mthi $1
mult $2, $2
TAG724:
mflo $4
mflo $4
mtlo $4
sll $2, $4, 15
TAG725:
sll $0, $0, 0
sb $2, 0($3)
lh $3, 0($3)
lui $1, 5
TAG726:
lui $4, 9
beq $4, $4, TAG727
sltu $3, $4, $4
and $1, $3, $4
TAG727:
sll $4, $1, 0
subu $1, $1, $4
mthi $1
subu $4, $4, $4
TAG728:
sh $4, 0($4)
bgtz $4, TAG729
multu $4, $4
xor $1, $4, $4
TAG729:
mthi $1
or $2, $1, $1
mfhi $1
sub $2, $1, $1
TAG730:
lw $3, 0($2)
lbu $1, 0($3)
lb $1, 0($2)
lb $2, 0($1)
TAG731:
sw $2, 0($2)
sh $2, 0($2)
sh $2, 0($2)
lw $4, 0($2)
TAG732:
srlv $3, $4, $4
sh $3, 0($3)
lb $2, 0($4)
lui $3, 12
TAG733:
addu $2, $3, $3
mtlo $2
sll $0, $0, 0
andi $3, $3, 5
TAG734:
lui $3, 3
multu $3, $3
mtlo $3
sll $0, $0, 0
TAG735:
bltz $3, TAG736
sltu $3, $3, $3
andi $1, $3, 10
lbu $2, 0($1)
TAG736:
sltiu $3, $2, 7
sh $2, 0($2)
mflo $4
sb $4, 0($3)
TAG737:
mfhi $2
lbu $4, 0($2)
xori $1, $4, 12
sltiu $4, $2, 11
TAG738:
sra $4, $4, 9
slt $1, $4, $4
sll $4, $4, 1
mflo $4
TAG739:
beq $4, $4, TAG740
srl $3, $4, 10
sb $3, 0($3)
sh $3, 0($3)
TAG740:
sh $3, -192($3)
lui $2, 9
lui $1, 9
slt $4, $3, $2
TAG741:
addu $4, $4, $4
lb $1, 0($4)
mult $4, $4
lhu $2, 0($4)
TAG742:
lui $1, 12
lui $4, 1
bne $4, $2, TAG743
addu $2, $1, $2
TAG743:
blez $2, TAG744
andi $4, $2, 6
sll $0, $0, 0
sltiu $2, $2, 10
TAG744:
sw $2, 0($2)
multu $2, $2
lui $1, 5
lui $1, 14
TAG745:
mflo $4
blez $1, TAG746
mflo $1
blez $1, TAG746
TAG746:
srl $2, $1, 5
lb $1, 0($2)
bgtz $1, TAG747
sltiu $4, $1, 9
TAG747:
multu $4, $4
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
TAG748:
beq $4, $4, TAG749
mthi $4
lbu $1, 0($4)
mult $1, $1
TAG749:
mflo $3
bgtz $3, TAG750
mtlo $1
sb $1, 0($1)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop