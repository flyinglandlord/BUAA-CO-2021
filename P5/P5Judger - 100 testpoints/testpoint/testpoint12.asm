ori $1, $0, 2
ori $2, $0, 4
ori $3, $0, 7
ori $4, $0, 8
sw $3, 0($0)
sw $2, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $1, 20($0)
sw $3, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $3, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $2, 120($0)
sw $2, 124($0)
lui $3, 9
addiu $4, $2, 10
lui $2, 7
bne $2, $2, TAG1
TAG1:
addiu $4, $2, 14
mult $2, $2
sll $0, $0, 0
srav $2, $4, $2
TAG2:
mfhi $2
sll $1, $2, 14
multu $2, $1
mthi $2
TAG3:
mfhi $2
sll $0, $0, 0
sb $1, 0($2)
div $3, $1
TAG4:
sll $0, $0, 0
mflo $1
srlv $3, $3, $3
lb $2, 0($1)
TAG5:
bne $2, $2, TAG6
addiu $2, $2, 13
mflo $1
mthi $1
TAG6:
mflo $2
mfhi $3
mfhi $1
beq $3, $1, TAG7
TAG7:
sw $1, 0($1)
lw $2, 0($1)
sb $1, 0($1)
mfhi $4
TAG8:
mult $4, $4
sh $4, 0($4)
lb $1, 0($4)
mfhi $2
TAG9:
mthi $2
lb $3, 0($2)
beq $2, $3, TAG10
mflo $3
TAG10:
sb $3, 0($3)
multu $3, $3
blez $3, TAG11
sb $3, 0($3)
TAG11:
lui $1, 15
bltz $1, TAG12
mult $1, $3
bne $1, $3, TAG12
TAG12:
srlv $3, $1, $1
xori $2, $3, 3
xor $2, $3, $2
mtlo $2
TAG13:
sb $2, 0($2)
srav $4, $2, $2
bne $2, $4, TAG14
mfhi $2
TAG14:
lui $4, 0
sw $2, 0($2)
mfhi $4
mflo $3
TAG15:
mfhi $1
lui $4, 13
sll $0, $0, 0
mflo $4
TAG16:
mult $4, $4
lbu $3, 0($4)
lui $2, 1
mult $2, $2
TAG17:
bne $2, $2, TAG18
mtlo $2
multu $2, $2
mult $2, $2
TAG18:
sll $0, $0, 0
mflo $3
sllv $4, $2, $2
lui $3, 6
TAG19:
mflo $4
lbu $1, 0($4)
lui $3, 15
mfhi $3
TAG20:
lbu $2, 0($3)
mult $3, $3
lbu $3, 0($3)
lui $2, 7
TAG21:
mfhi $2
lbu $1, 0($2)
mult $2, $1
beq $2, $1, TAG22
TAG22:
lui $1, 7
sll $0, $0, 0
bne $1, $1, TAG23
sll $0, $0, 0
TAG23:
sll $0, $0, 0
mflo $4
srl $4, $3, 0
multu $3, $4
TAG24:
mflo $2
sw $2, 0($2)
andi $3, $4, 1
bgez $4, TAG25
TAG25:
sh $3, 0($3)
sh $3, 0($3)
blez $3, TAG26
multu $3, $3
TAG26:
beq $3, $3, TAG27
slt $4, $3, $3
lui $4, 5
divu $4, $4
TAG27:
mtlo $4
and $2, $4, $4
mthi $2
multu $4, $2
TAG28:
addi $4, $2, 10
lui $2, 14
bne $2, $4, TAG29
sll $0, $0, 0
TAG29:
bltz $1, TAG30
mult $1, $1
multu $1, $1
bne $1, $1, TAG30
TAG30:
mtlo $1
sll $0, $0, 0
blez $1, TAG31
lui $4, 0
TAG31:
mtlo $4
beq $4, $4, TAG32
mfhi $1
beq $4, $1, TAG32
TAG32:
addiu $3, $1, 14
sllv $2, $3, $3
nor $1, $3, $1
beq $2, $3, TAG33
TAG33:
srlv $2, $1, $1
lhu $2, 64($2)
mult $2, $2
sra $2, $2, 6
TAG34:
addi $1, $2, 10
or $1, $2, $2
sw $2, 0($2)
mtlo $2
TAG35:
andi $4, $1, 4
mfhi $4
lbu $3, 0($1)
lui $2, 2
TAG36:
bne $2, $2, TAG37
sll $0, $0, 0
mthi $2
blez $2, TAG37
TAG37:
sll $3, $2, 6
multu $3, $3
or $1, $3, $3
sll $0, $0, 0
TAG38:
sll $0, $0, 0
beq $1, $3, TAG39
mfhi $2
or $1, $1, $3
TAG39:
xori $3, $1, 15
beq $1, $3, TAG40
lui $2, 14
blez $1, TAG40
TAG40:
lui $1, 11
bgtz $2, TAG41
lui $4, 4
and $3, $2, $1
TAG41:
beq $3, $3, TAG42
mflo $2
mflo $3
sh $2, 0($2)
TAG42:
div $3, $3
lui $4, 5
sll $4, $3, 8
addu $4, $4, $4
TAG43:
beq $4, $4, TAG44
mflo $4
beq $4, $4, TAG44
mthi $4
TAG44:
lb $1, 0($4)
lb $1, 0($4)
xor $2, $1, $4
sb $1, 0($1)
TAG45:
lui $3, 10
sllv $3, $3, $3
lui $3, 2
srav $4, $3, $3
TAG46:
sll $0, $0, 0
bltz $4, TAG47
sll $0, $0, 0
mflo $4
TAG47:
srlv $4, $4, $4
mult $4, $4
mfhi $2
lui $4, 12
TAG48:
bltz $4, TAG49
lui $4, 12
sll $0, $0, 0
xor $2, $4, $3
TAG49:
lui $4, 9
mult $4, $2
mflo $3
mtlo $2
TAG50:
lhu $4, 0($3)
lui $3, 2
div $3, $3
mfhi $3
TAG51:
mtlo $3
lui $3, 3
sra $1, $3, 8
lui $1, 5
TAG52:
slti $2, $1, 14
lhu $2, 0($2)
lui $2, 2
sll $0, $0, 0
TAG53:
sll $0, $0, 0
lhu $3, 0($4)
bne $3, $3, TAG54
mtlo $3
TAG54:
lhu $2, 0($3)
bgtz $2, TAG55
mtlo $2
mfhi $2
TAG55:
mtlo $2
beq $2, $2, TAG56
mflo $2
lbu $3, 0($2)
TAG56:
lui $3, 3
sll $0, $0, 0
mfhi $2
multu $1, $1
TAG57:
mtlo $2
mfhi $3
lb $4, 0($2)
andi $2, $3, 8
TAG58:
mfhi $3
addiu $1, $3, 7
srlv $2, $3, $3
srlv $1, $2, $1
TAG59:
sb $1, 0($1)
lh $2, 0($1)
mult $2, $1
sw $1, 0($1)
TAG60:
addiu $3, $2, 10
sb $3, 0($3)
lui $2, 4
sltu $2, $2, $2
TAG61:
mthi $2
mthi $2
mult $2, $2
bgtz $2, TAG62
TAG62:
mult $2, $2
bne $2, $2, TAG63
lhu $1, 0($2)
sh $2, 0($2)
TAG63:
sw $1, 0($1)
mthi $1
mthi $1
bgtz $1, TAG64
TAG64:
sw $1, 0($1)
lui $4, 9
lui $3, 1
divu $4, $3
TAG65:
multu $3, $3
div $3, $3
bgez $3, TAG66
lui $1, 4
TAG66:
mflo $2
mfhi $3
bgez $2, TAG67
mtlo $1
TAG67:
sb $3, 0($3)
bne $3, $3, TAG68
sb $3, 0($3)
bgez $3, TAG68
TAG68:
sw $3, 0($3)
mflo $4
lui $4, 0
and $4, $4, $3
TAG69:
mflo $2
sltiu $3, $4, 0
sll $0, $0, 0
blez $2, TAG70
TAG70:
multu $2, $2
bne $2, $2, TAG71
srlv $4, $2, $2
blez $2, TAG71
TAG71:
multu $4, $4
sll $0, $0, 0
lui $1, 0
beq $1, $1, TAG72
TAG72:
mthi $1
sw $1, 0($1)
subu $2, $1, $1
mthi $2
TAG73:
sh $2, 0($2)
addiu $4, $2, 6
sh $2, 0($4)
srlv $3, $2, $2
TAG74:
multu $3, $3
lb $1, 0($3)
sb $1, 0($3)
multu $3, $3
TAG75:
lui $4, 7
lui $1, 11
lui $2, 11
bne $1, $1, TAG76
TAG76:
lui $2, 11
lui $2, 14
srl $3, $2, 15
lui $3, 9
TAG77:
nor $1, $3, $3
mthi $1
bne $3, $3, TAG78
sll $0, $0, 0
TAG78:
mfhi $4
slt $1, $4, $4
add $2, $1, $4
blez $2, TAG79
TAG79:
addu $4, $2, $2
mthi $4
slti $4, $4, 14
lui $4, 8
TAG80:
sll $0, $0, 0
or $3, $4, $4
sll $0, $0, 0
div $3, $3
TAG81:
mfhi $2
addiu $2, $3, 4
bgtz $2, TAG82
mflo $2
TAG82:
lb $3, 0($2)
lh $1, 0($3)
mfhi $2
mflo $3
TAG83:
bne $3, $3, TAG84
mult $3, $3
lui $3, 8
bltz $3, TAG84
TAG84:
sltiu $2, $3, 8
sll $0, $0, 0
xor $2, $2, $3
bne $3, $2, TAG85
TAG85:
sltiu $3, $2, 5
sb $3, 0($3)
bgez $2, TAG86
sub $4, $3, $3
TAG86:
bgtz $4, TAG87
lb $2, 0($4)
mfhi $2
mult $2, $2
TAG87:
sb $2, 0($2)
mfhi $1
sltiu $1, $2, 14
sra $1, $1, 3
TAG88:
mflo $2
bgez $2, TAG89
mult $2, $1
sra $3, $1, 14
TAG89:
sltu $4, $3, $3
sh $3, 0($3)
multu $3, $3
mtlo $4
TAG90:
bgtz $4, TAG91
lh $3, 0($4)
lui $1, 14
blez $3, TAG91
TAG91:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
lh $1, 0($2)
TAG92:
bne $1, $1, TAG93
mfhi $3
mthi $1
mflo $2
TAG93:
lui $1, 3
lhu $1, 0($2)
bne $1, $1, TAG94
lh $3, 0($2)
TAG94:
sll $1, $3, 6
srl $3, $1, 6
sh $1, 0($3)
bne $1, $1, TAG95
TAG95:
mthi $3
bgez $3, TAG96
mtlo $3
srlv $1, $3, $3
TAG96:
mflo $3
bgtz $3, TAG97
mflo $4
addiu $4, $1, 8
TAG97:
lhu $4, 0($4)
lb $3, 0($4)
bltz $4, TAG98
mult $3, $3
TAG98:
bgez $3, TAG99
sw $3, 0($3)
xori $4, $3, 0
sllv $4, $4, $4
TAG99:
mthi $4
lb $1, 0($4)
lbu $2, 0($1)
mfhi $2
TAG100:
bltz $2, TAG101
mtlo $2
divu $2, $2
sra $4, $2, 12
TAG101:
bne $4, $4, TAG102
mult $4, $4
lbu $1, 0($4)
bgez $1, TAG102
TAG102:
mfhi $2
sw $1, 0($1)
lw $4, 0($1)
lui $2, 0
TAG103:
lui $1, 7
bltz $2, TAG104
divu $2, $1
bne $1, $2, TAG104
TAG104:
div $1, $1
beq $1, $1, TAG105
mtlo $1
beq $1, $1, TAG105
TAG105:
sltu $4, $1, $1
bne $1, $1, TAG106
mult $1, $4
mthi $1
TAG106:
blez $4, TAG107
sb $4, 0($4)
sb $4, 0($4)
nor $4, $4, $4
TAG107:
beq $4, $4, TAG108
mthi $4
div $4, $4
slt $3, $4, $4
TAG108:
xori $2, $3, 10
mfhi $4
subu $1, $2, $3
bgtz $4, TAG109
TAG109:
sh $1, 6($1)
bltz $1, TAG110
sw $1, 6($1)
lhu $2, 0($1)
TAG110:
mfhi $1
lui $2, 13
addu $3, $2, $2
lui $2, 4
TAG111:
mthi $2
mtlo $2
beq $2, $2, TAG112
mflo $4
TAG112:
beq $4, $4, TAG113
mfhi $4
add $2, $4, $4
mthi $4
TAG113:
bne $2, $2, TAG114
srlv $4, $2, $2
and $1, $4, $4
subu $4, $2, $1
TAG114:
mtlo $4
mult $4, $4
sb $4, 0($4)
beq $4, $4, TAG115
TAG115:
lhu $1, 0($4)
mthi $1
bne $1, $1, TAG116
sll $0, $0, 0
TAG116:
mthi $1
ori $1, $1, 10
srl $3, $1, 14
sb $1, 0($3)
TAG117:
mflo $1
srl $1, $3, 10
mflo $2
beq $3, $3, TAG118
TAG118:
mflo $4
lui $3, 13
bgez $3, TAG119
ori $3, $3, 6
TAG119:
sll $0, $0, 0
divu $3, $3
subu $1, $3, $3
bgtz $3, TAG120
TAG120:
sw $1, 0($1)
addi $1, $1, 12
lui $3, 11
beq $1, $1, TAG121
TAG121:
lui $2, 7
sll $0, $0, 0
lui $4, 8
srav $1, $4, $2
TAG122:
bgez $1, TAG123
lui $1, 3
addu $2, $1, $1
lhu $1, 0($1)
TAG123:
bltz $1, TAG124
slt $1, $1, $1
lw $1, 0($1)
bgez $1, TAG124
TAG124:
mthi $1
and $2, $1, $1
lui $1, 8
sltu $1, $1, $1
TAG125:
or $4, $1, $1
mflo $3
mflo $4
lui $1, 4
TAG126:
sll $0, $0, 0
andi $2, $2, 10
lw $3, 0($2)
blez $2, TAG127
TAG127:
mflo $2
lui $4, 7
lui $3, 10
blez $3, TAG128
TAG128:
div $3, $3
mtlo $3
sll $0, $0, 0
srl $1, $3, 14
TAG129:
addiu $2, $1, 15
sll $1, $2, 13
mflo $1
lb $1, 0($2)
TAG130:
slti $4, $1, 5
ori $2, $1, 8
addiu $4, $1, 13
mflo $1
TAG131:
sll $0, $0, 0
and $3, $1, $1
sll $0, $0, 0
mthi $3
TAG132:
mflo $4
mtlo $3
divu $3, $4
sra $4, $4, 4
TAG133:
addu $1, $4, $4
ori $1, $4, 6
slt $1, $1, $1
sll $0, $0, 0
TAG134:
mtlo $2
sb $2, 0($2)
bltz $2, TAG135
mtlo $2
TAG135:
sh $2, 0($2)
bltz $2, TAG136
mfhi $1
mtlo $1
TAG136:
add $2, $1, $1
mult $1, $1
mfhi $1
lui $3, 9
TAG137:
lui $2, 1
mfhi $2
lh $4, 0($2)
bltz $4, TAG138
TAG138:
sh $4, 0($4)
addi $2, $4, 9
bgez $2, TAG139
slt $1, $2, $4
TAG139:
sb $1, 0($1)
sll $1, $1, 12
or $1, $1, $1
mult $1, $1
TAG140:
multu $1, $1
bne $1, $1, TAG141
sllv $2, $1, $1
sllv $1, $1, $2
TAG141:
lui $4, 2
sll $0, $0, 0
bltz $3, TAG142
lb $2, 0($1)
TAG142:
bne $2, $2, TAG143
slti $3, $2, 14
sb $3, 0($3)
multu $2, $2
TAG143:
bgtz $3, TAG144
lb $3, 0($3)
mfhi $4
sltu $3, $3, $4
TAG144:
bltz $3, TAG145
sb $3, 0($3)
mfhi $2
beq $3, $2, TAG145
TAG145:
multu $2, $2
lui $4, 1
bne $4, $2, TAG146
add $1, $2, $4
TAG146:
mflo $2
sh $2, 0($2)
bltz $2, TAG147
lui $1, 15
TAG147:
sll $0, $0, 0
xor $2, $1, $1
mfhi $2
ori $4, $1, 13
TAG148:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG149:
lb $2, 0($2)
sw $2, 0($2)
lui $4, 1
sh $4, 0($2)
TAG150:
subu $3, $4, $4
addiu $2, $4, 8
blez $3, TAG151
div $4, $4
TAG151:
addiu $3, $2, 8
bne $3, $3, TAG152
srav $4, $3, $2
mfhi $2
TAG152:
lhu $1, 0($2)
mult $2, $2
lui $4, 15
beq $1, $1, TAG153
TAG153:
mfhi $1
mult $1, $1
addiu $3, $1, 7
mthi $4
TAG154:
sb $3, 0($3)
lbu $4, 0($3)
lui $2, 10
lui $1, 9
TAG155:
mflo $3
sra $2, $1, 14
sll $0, $0, 0
sb $3, 0($4)
TAG156:
lbu $3, 0($4)
mflo $3
slti $4, $3, 7
mtlo $3
TAG157:
sb $4, 0($4)
slt $3, $4, $4
lbu $2, 0($3)
sw $2, 0($2)
TAG158:
mtlo $2
blez $2, TAG159
multu $2, $2
mtlo $2
TAG159:
sb $2, 0($2)
add $4, $2, $2
subu $3, $2, $4
bne $4, $3, TAG160
TAG160:
lbu $3, 0($3)
sltiu $4, $3, 9
mult $3, $3
beq $3, $3, TAG161
TAG161:
subu $3, $4, $4
lui $4, 15
xori $1, $3, 9
mtlo $1
TAG162:
divu $1, $1
mflo $2
divu $2, $2
divu $2, $2
TAG163:
slti $4, $2, 15
addu $4, $4, $2
andi $3, $4, 5
mthi $4
TAG164:
sb $3, 0($3)
lui $2, 6
addiu $3, $3, 5
sll $0, $0, 0
TAG165:
lui $1, 3
mtlo $1
bltz $1, TAG166
sll $0, $0, 0
TAG166:
slt $2, $1, $1
addu $4, $1, $2
sltu $1, $4, $1
lbu $1, 0($1)
TAG167:
blez $1, TAG168
lui $1, 3
ori $4, $1, 13
lui $3, 11
TAG168:
bltz $3, TAG169
andi $1, $3, 3
div $3, $3
mtlo $1
TAG169:
mthi $1
mflo $1
lb $2, 0($1)
sb $1, 0($1)
TAG170:
bne $2, $2, TAG171
sub $1, $2, $2
srav $1, $1, $1
bne $2, $1, TAG171
TAG171:
lui $2, 10
mfhi $1
srav $2, $1, $1
mthi $1
TAG172:
lh $2, 0($2)
mflo $2
beq $2, $2, TAG173
xor $1, $2, $2
TAG173:
lb $3, 0($1)
xor $4, $1, $3
mflo $2
beq $2, $1, TAG174
TAG174:
lui $3, 3
srav $1, $3, $2
sll $0, $0, 0
mflo $3
TAG175:
lbu $4, 0($3)
lb $1, 0($4)
sb $1, 0($1)
mthi $1
TAG176:
lui $4, 13
lui $3, 1
beq $4, $4, TAG177
sll $0, $0, 0
TAG177:
multu $3, $3
subu $1, $3, $3
lui $1, 0
mult $3, $1
TAG178:
mfhi $4
sh $1, 0($4)
sra $4, $1, 13
bgez $1, TAG179
TAG179:
mthi $4
slti $1, $4, 7
sra $3, $1, 10
mflo $3
TAG180:
addiu $1, $3, 13
lui $3, 14
sll $0, $0, 0
mfhi $1
TAG181:
mult $1, $1
bgtz $1, TAG182
mult $1, $1
ori $3, $1, 1
TAG182:
lbu $1, 0($3)
beq $3, $1, TAG183
mtlo $3
slt $3, $1, $1
TAG183:
bgtz $3, TAG184
mfhi $2
mthi $3
sb $3, 0($3)
TAG184:
lui $2, 9
srlv $3, $2, $2
srl $1, $2, 9
lui $1, 2
TAG185:
srav $1, $1, $1
div $1, $1
bgez $1, TAG186
sll $1, $1, 14
TAG186:
xor $2, $1, $1
mfhi $2
sw $1, 0($2)
addu $2, $2, $2
TAG187:
lb $1, 0($2)
sltu $3, $1, $2
sh $3, 0($2)
sltiu $3, $2, 8
TAG188:
bgtz $3, TAG189
lui $1, 0
lh $4, 0($1)
lui $3, 6
TAG189:
blez $3, TAG190
multu $3, $3
lbu $2, 0($3)
lw $1, 0($2)
TAG190:
sll $0, $0, 0
bne $1, $1, TAG191
sll $0, $0, 0
lui $1, 2
TAG191:
bne $1, $1, TAG192
mtlo $1
mfhi $3
mfhi $1
TAG192:
andi $2, $1, 6
sw $1, 0($1)
sb $2, 0($1)
sltiu $3, $2, 11
TAG193:
bltz $3, TAG194
mthi $3
sb $3, 0($3)
mfhi $1
TAG194:
blez $1, TAG195
sltiu $4, $1, 4
mfhi $4
bgez $4, TAG195
TAG195:
mthi $4
mult $4, $4
beq $4, $4, TAG196
lui $2, 9
TAG196:
lui $4, 10
sltu $4, $2, $2
mflo $1
mtlo $1
TAG197:
mfhi $1
lw $2, 0($1)
multu $1, $1
slti $3, $2, 2
TAG198:
lui $1, 6
xor $3, $1, $3
andi $4, $3, 15
mthi $3
TAG199:
mthi $4
lbu $1, 0($4)
lhu $3, 0($4)
bgez $1, TAG200
TAG200:
sll $0, $0, 0
sra $2, $2, 7
mfhi $4
srav $3, $4, $2
TAG201:
beq $3, $3, TAG202
mfhi $2
srav $4, $2, $2
sltiu $3, $2, 12
TAG202:
mfhi $3
mtlo $3
mflo $1
sw $1, 0($3)
TAG203:
multu $1, $1
sb $1, 0($1)
bne $1, $1, TAG204
sb $1, 0($1)
TAG204:
srl $1, $1, 15
bgez $1, TAG205
mfhi $2
beq $2, $1, TAG205
TAG205:
slti $4, $2, 9
div $4, $4
or $4, $4, $4
sb $4, 0($4)
TAG206:
mthi $4
lui $3, 0
mthi $4
sb $3, 0($4)
TAG207:
bltz $3, TAG208
mflo $3
mthi $3
addiu $3, $3, 0
TAG208:
mfhi $3
lbu $3, 0($3)
blez $3, TAG209
mfhi $4
TAG209:
addu $2, $4, $4
sb $4, 0($4)
sb $4, 0($4)
nor $2, $4, $2
TAG210:
xor $2, $2, $2
lbu $2, 0($2)
lb $4, 0($2)
bne $2, $2, TAG211
TAG211:
mflo $2
blez $4, TAG212
lbu $4, 0($2)
blez $2, TAG212
TAG212:
mthi $4
blez $4, TAG213
lui $1, 14
lb $2, 0($4)
TAG213:
mthi $2
xor $4, $2, $2
and $4, $4, $2
and $2, $4, $2
TAG214:
sb $2, 0($2)
ori $2, $2, 9
mthi $2
lui $3, 5
TAG215:
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG216:
sltiu $2, $3, 1
mthi $2
lui $1, 6
sll $0, $0, 0
TAG217:
sll $0, $0, 0
blez $1, TAG218
mtlo $1
sll $1, $1, 8
TAG218:
lui $4, 3
sll $0, $0, 0
mtlo $1
mflo $1
TAG219:
bne $1, $1, TAG220
and $3, $1, $1
subu $4, $3, $3
bne $4, $4, TAG220
TAG220:
sb $4, 0($4)
bgtz $4, TAG221
lui $2, 8
bgez $2, TAG221
TAG221:
mtlo $2
div $2, $2
lui $4, 15
mtlo $4
TAG222:
addu $4, $4, $4
sll $0, $0, 0
lui $3, 12
sltu $1, $4, $3
TAG223:
beq $1, $1, TAG224
multu $1, $1
slti $2, $1, 12
slt $4, $1, $1
TAG224:
sra $1, $4, 4
beq $4, $4, TAG225
sll $0, $0, 0
lb $4, 0($1)
TAG225:
lui $4, 4
lui $3, 7
mtlo $4
mthi $4
TAG226:
div $3, $3
bgtz $3, TAG227
srl $3, $3, 8
sb $3, 0($3)
TAG227:
sw $3, -1792($3)
lui $3, 9
xor $1, $3, $3
beq $3, $1, TAG228
TAG228:
multu $1, $1
mthi $1
mflo $2
bltz $2, TAG229
TAG229:
mult $2, $2
sltiu $3, $2, 14
lui $2, 4
sb $3, 0($3)
TAG230:
mflo $4
lui $3, 9
mtlo $2
mfhi $4
TAG231:
srlv $2, $4, $4
srlv $2, $4, $2
subu $4, $2, $2
sltu $4, $2, $4
TAG232:
mtlo $4
mfhi $3
lhu $4, 0($4)
nor $1, $4, $4
TAG233:
mflo $1
mthi $1
bgez $1, TAG234
multu $1, $1
TAG234:
nor $4, $1, $1
mthi $1
mult $1, $1
sh $4, 1($4)
TAG235:
mfhi $2
bgez $2, TAG236
mthi $2
sh $2, 0($4)
TAG236:
mult $2, $2
beq $2, $2, TAG237
sh $2, 0($2)
mthi $2
TAG237:
lbu $1, 0($2)
sh $2, 0($1)
bgez $1, TAG238
addi $2, $1, 13
TAG238:
div $2, $2
blez $2, TAG239
mflo $2
multu $2, $2
TAG239:
addiu $3, $2, 10
div $3, $2
mtlo $2
bgtz $3, TAG240
TAG240:
slti $3, $3, 3
lui $1, 6
sllv $1, $1, $3
bgtz $1, TAG241
TAG241:
mthi $1
mthi $1
sll $0, $0, 0
lui $3, 3
TAG242:
srlv $3, $3, $3
sll $0, $0, 0
mult $3, $3
sltiu $1, $3, 8
TAG243:
lui $1, 9
mtlo $1
sll $0, $0, 0
mult $1, $1
TAG244:
beq $4, $4, TAG245
addiu $2, $4, 10
lhu $1, 0($2)
sra $1, $2, 0
TAG245:
sll $0, $0, 0
sra $3, $1, 9
bne $3, $3, TAG246
lb $3, -1152($3)
TAG246:
mult $3, $3
srl $1, $3, 9
sb $1, 0($1)
mtlo $1
TAG247:
sra $3, $1, 1
mfhi $1
sb $1, 0($1)
sb $3, 0($1)
TAG248:
sh $1, 0($1)
bltz $1, TAG249
lw $4, 0($1)
bgtz $1, TAG249
TAG249:
andi $4, $4, 6
lbu $2, 0($4)
mult $2, $4
addu $4, $4, $4
TAG250:
mtlo $4
mfhi $1
xori $1, $1, 12
mult $4, $1
TAG251:
bgez $1, TAG252
mflo $1
lui $1, 10
sh $1, 0($1)
TAG252:
lui $1, 4
beq $1, $1, TAG253
mult $1, $1
sh $1, 0($1)
TAG253:
sll $0, $0, 0
srl $2, $1, 3
beq $2, $1, TAG254
sll $0, $0, 0
TAG254:
srl $4, $2, 3
sll $0, $0, 0
lui $3, 12
xori $4, $4, 3
TAG255:
sll $0, $0, 0
lui $3, 7
bgez $4, TAG256
mtlo $4
TAG256:
xor $2, $3, $3
sll $0, $0, 0
multu $4, $3
sllv $4, $4, $4
TAG257:
beq $4, $4, TAG258
sltiu $1, $4, 13
mthi $1
bne $4, $4, TAG258
TAG258:
sh $1, 0($1)
andi $4, $1, 4
mthi $1
beq $1, $1, TAG259
TAG259:
mult $4, $4
sb $4, 0($4)
mult $4, $4
srl $1, $4, 6
TAG260:
mflo $1
beq $1, $1, TAG261
multu $1, $1
mflo $4
TAG261:
mfhi $3
bne $4, $3, TAG262
srlv $2, $3, $4
slti $4, $2, 0
TAG262:
bgtz $4, TAG263
mthi $4
sltu $4, $4, $4
mflo $4
TAG263:
sw $4, 0($4)
slti $1, $4, 11
lb $4, 0($1)
sh $4, 0($4)
TAG264:
lw $3, 0($4)
sh $4, 0($4)
lui $4, 9
addiu $4, $3, 3
TAG265:
mfhi $3
sltiu $1, $4, 15
lui $4, 0
mult $1, $3
TAG266:
mtlo $4
sh $4, 0($4)
mult $4, $4
blez $4, TAG267
TAG267:
lbu $1, 0($4)
sll $2, $4, 1
sltiu $4, $4, 13
divu $1, $4
TAG268:
bne $4, $4, TAG269
mflo $4
multu $4, $4
lhu $3, 0($4)
TAG269:
lui $3, 10
srav $1, $3, $3
sll $2, $1, 14
mflo $4
TAG270:
mthi $4
multu $4, $4
slt $4, $4, $4
lw $3, 0($4)
TAG271:
mfhi $3
mtlo $3
slt $3, $3, $3
andi $2, $3, 0
TAG272:
lb $3, 0($2)
mfhi $2
sb $3, 0($2)
lui $3, 10
TAG273:
bgtz $3, TAG274
sll $0, $0, 0
sra $4, $3, 14
lb $4, 0($3)
TAG274:
bgez $4, TAG275
multu $4, $4
multu $4, $4
bne $4, $4, TAG275
TAG275:
srlv $4, $4, $4
mult $4, $4
sw $4, 0($4)
sh $4, 0($4)
TAG276:
addiu $2, $4, 14
lui $2, 5
mthi $2
beq $4, $2, TAG277
TAG277:
mflo $1
sh $1, 0($1)
srl $1, $1, 11
sh $2, 0($1)
TAG278:
bgtz $1, TAG279
multu $1, $1
lui $2, 2
srl $3, $2, 5
TAG279:
sra $4, $3, 10
srl $1, $3, 7
bne $3, $4, TAG280
mflo $4
TAG280:
lhu $4, 0($4)
mflo $4
addiu $4, $4, 2
subu $3, $4, $4
TAG281:
mthi $3
bgez $3, TAG282
multu $3, $3
lw $1, 0($3)
TAG282:
lui $1, 0
mflo $2
beq $1, $1, TAG283
lbu $2, 0($1)
TAG283:
and $1, $2, $2
lui $2, 7
lbu $3, 0($1)
lb $1, 0($3)
TAG284:
lh $1, 0($1)
beq $1, $1, TAG285
lui $2, 8
srl $4, $1, 5
TAG285:
lui $3, 13
sll $0, $0, 0
beq $4, $4, TAG286
lui $3, 1
TAG286:
beq $3, $3, TAG287
addiu $2, $3, 0
lw $4, 0($3)
nor $2, $4, $3
TAG287:
nor $2, $2, $2
divu $2, $2
mult $2, $2
beq $2, $2, TAG288
TAG288:
mfhi $4
sll $0, $0, 0
srlv $2, $4, $4
bgtz $2, TAG289
TAG289:
sub $1, $2, $2
lui $3, 1
lui $2, 5
lbu $2, 0($1)
TAG290:
mthi $2
blez $2, TAG291
mthi $2
sb $2, 0($2)
TAG291:
bne $2, $2, TAG292
xori $4, $2, 7
blez $4, TAG292
multu $2, $4
TAG292:
beq $4, $4, TAG293
xori $2, $4, 11
sh $4, 0($2)
lbu $4, 0($2)
TAG293:
lbu $1, 0($4)
mthi $4
sb $4, 0($4)
lui $2, 8
TAG294:
sll $0, $0, 0
mflo $1
sltiu $2, $1, 14
bgez $2, TAG295
TAG295:
mthi $2
lui $1, 10
sll $0, $0, 0
lui $4, 12
TAG296:
sltu $2, $4, $4
sltiu $2, $4, 2
mflo $1
lw $2, 0($1)
TAG297:
andi $3, $2, 13
sh $3, 0($3)
sltu $4, $2, $2
mthi $2
TAG298:
nor $4, $4, $4
lb $4, 1($4)
mflo $3
blez $4, TAG299
TAG299:
lui $3, 8
mflo $2
sll $1, $2, 0
srlv $3, $1, $3
TAG300:
addi $4, $3, 10
ori $4, $4, 1
sb $4, 0($3)
lb $4, 0($4)
TAG301:
srlv $3, $4, $4
multu $3, $4
sb $3, 0($3)
bgez $4, TAG302
TAG302:
sllv $3, $3, $3
bgez $3, TAG303
mfhi $1
srav $3, $3, $3
TAG303:
sh $3, 0($3)
mfhi $3
lui $1, 13
lui $1, 4
TAG304:
div $1, $1
mthi $1
mflo $3
subu $2, $3, $3
TAG305:
xori $3, $2, 7
addu $1, $3, $2
divu $3, $3
lw $4, 0($2)
TAG306:
lui $2, 14
lui $1, 1
mflo $4
bne $4, $1, TAG307
TAG307:
mthi $4
mflo $4
mthi $4
div $4, $4
TAG308:
lb $3, 0($4)
beq $3, $4, TAG309
subu $2, $3, $4
beq $2, $2, TAG309
TAG309:
sb $2, 1($2)
sw $2, 1($2)
beq $2, $2, TAG310
srl $3, $2, 15
TAG310:
beq $3, $3, TAG311
div $3, $3
lui $1, 13
lui $2, 6
TAG311:
mthi $2
lui $1, 11
sll $0, $0, 0
bne $2, $2, TAG312
TAG312:
sll $0, $0, 0
slt $2, $1, $1
mthi $2
sw $4, 0($2)
TAG313:
mthi $2
sll $4, $2, 14
mthi $4
lhu $3, 0($4)
TAG314:
mtlo $3
mtlo $3
multu $3, $3
multu $3, $3
TAG315:
srlv $4, $3, $3
blez $3, TAG316
sllv $3, $4, $4
lui $4, 8
TAG316:
addu $2, $4, $4
bne $4, $4, TAG317
mfhi $3
sltu $3, $2, $3
TAG317:
sb $3, 0($3)
bgez $3, TAG318
lh $1, 0($3)
multu $3, $3
TAG318:
bne $1, $1, TAG319
sw $1, 0($1)
bne $1, $1, TAG319
mtlo $1
TAG319:
sb $1, 0($1)
lhu $1, 0($1)
multu $1, $1
lui $1, 4
TAG320:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
bltz $1, TAG321
TAG321:
sb $3, 0($3)
multu $3, $3
mtlo $3
lui $2, 11
TAG322:
mfhi $3
mtlo $3
bgtz $3, TAG323
sra $2, $3, 2
TAG323:
mflo $2
mfhi $2
mtlo $2
lb $3, 0($2)
TAG324:
multu $3, $3
sltu $1, $3, $3
sltu $2, $1, $3
or $2, $3, $1
TAG325:
bgtz $2, TAG326
lui $3, 9
blez $2, TAG326
add $2, $2, $2
TAG326:
bltz $2, TAG327
mflo $3
multu $2, $3
addi $1, $2, 13
TAG327:
blez $1, TAG328
mfhi $3
lbu $4, 0($3)
lh $2, 0($3)
TAG328:
mflo $3
xori $2, $2, 7
xori $2, $2, 15
mult $2, $3
TAG329:
mflo $1
addu $3, $2, $2
mult $2, $1
div $2, $2
TAG330:
addiu $4, $3, 10
lh $4, 0($3)
multu $3, $3
lui $4, 10
TAG331:
bne $4, $4, TAG332
mtlo $4
srlv $1, $4, $4
lui $4, 8
TAG332:
lui $1, 0
multu $1, $4
beq $4, $1, TAG333
sll $0, $0, 0
TAG333:
sra $2, $1, 6
srl $1, $1, 12
beq $2, $2, TAG334
lb $2, 0($1)
TAG334:
sllv $4, $2, $2
sltiu $1, $4, 3
mult $4, $2
lw $2, 0($4)
TAG335:
bne $2, $2, TAG336
multu $2, $2
mtlo $2
lui $3, 11
TAG336:
sll $0, $0, 0
mult $3, $1
sra $1, $1, 15
mult $3, $1
TAG337:
andi $4, $1, 7
subu $1, $4, $4
mflo $2
sw $4, 0($2)
TAG338:
beq $2, $2, TAG339
xor $2, $2, $2
mfhi $2
ori $3, $2, 5
TAG339:
mfhi $2
addu $1, $3, $2
sll $0, $0, 0
bltz $2, TAG340
TAG340:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
addiu $3, $3, 10
TAG341:
mfhi $2
mfhi $3
addu $3, $2, $3
sltu $1, $2, $3
TAG342:
beq $1, $1, TAG343
sw $1, 0($1)
mthi $1
mtlo $1
TAG343:
mfhi $4
sw $1, 0($4)
bgez $4, TAG344
mult $1, $4
TAG344:
mflo $3
sltu $3, $3, $3
bgtz $3, TAG345
lbu $2, 0($3)
TAG345:
mult $2, $2
lw $3, 0($2)
addu $3, $3, $2
mtlo $3
TAG346:
lui $4, 5
bne $4, $3, TAG347
mtlo $3
lh $1, 0($3)
TAG347:
mflo $3
mtlo $3
mthi $3
bltz $1, TAG348
TAG348:
mthi $3
mflo $4
sll $1, $3, 13
lui $4, 4
TAG349:
sltu $4, $4, $4
bgtz $4, TAG350
addiu $2, $4, 2
mflo $4
TAG350:
sltiu $2, $4, 9
beq $2, $4, TAG351
divu $4, $2
multu $4, $4
TAG351:
subu $3, $2, $2
bne $3, $2, TAG352
addiu $1, $2, 6
sw $2, 0($1)
TAG352:
sltu $2, $1, $1
bne $1, $2, TAG353
mfhi $4
mtlo $2
TAG353:
bltz $4, TAG354
addi $4, $4, 15
lui $1, 8
mflo $2
TAG354:
mtlo $2
mult $2, $2
mflo $2
multu $2, $2
TAG355:
mthi $2
bltz $2, TAG356
mfhi $1
mfhi $2
TAG356:
sw $2, 0($2)
lw $3, 0($2)
bltz $3, TAG357
mthi $3
TAG357:
slt $4, $3, $3
bne $3, $4, TAG358
or $4, $4, $3
lh $2, 0($3)
TAG358:
multu $2, $2
andi $3, $2, 5
bgez $3, TAG359
addi $3, $2, 12
TAG359:
sb $3, 0($3)
andi $2, $3, 13
nor $1, $2, $2
ori $3, $2, 10
TAG360:
div $3, $3
sh $3, 0($3)
slti $4, $3, 1
mult $4, $4
TAG361:
lui $1, 11
div $4, $1
sh $4, 0($4)
multu $1, $1
TAG362:
bgtz $1, TAG363
mult $1, $1
beq $1, $1, TAG363
lbu $4, 0($1)
TAG363:
multu $4, $4
lhu $3, 0($4)
bne $3, $4, TAG364
sb $4, 0($4)
TAG364:
sra $3, $3, 14
beq $3, $3, TAG365
srav $3, $3, $3
lui $3, 4
TAG365:
multu $3, $3
mult $3, $3
srav $1, $3, $3
lh $4, 0($1)
TAG366:
beq $4, $4, TAG367
lui $2, 3
mthi $2
bne $4, $2, TAG367
TAG367:
lui $2, 14
beq $2, $2, TAG368
mfhi $4
multu $2, $4
TAG368:
bgez $4, TAG369
srav $3, $4, $4
lh $2, 0($4)
mfhi $1
TAG369:
slt $1, $1, $1
mflo $2
bgez $2, TAG370
mfhi $2
TAG370:
lui $4, 5
sll $0, $0, 0
lui $4, 7
mfhi $2
TAG371:
sb $2, 0($2)
multu $2, $2
multu $2, $2
beq $2, $2, TAG372
TAG372:
mtlo $2
srl $2, $2, 6
multu $2, $2
bgez $2, TAG373
TAG373:
nor $3, $2, $2
bgez $2, TAG374
lui $1, 3
mfhi $2
TAG374:
mtlo $2
lw $4, 0($2)
sw $4, 0($4)
blez $4, TAG375
TAG375:
srl $3, $4, 15
srl $3, $3, 0
mflo $3
sb $3, 0($3)
TAG376:
add $3, $3, $3
bne $3, $3, TAG377
mfhi $2
bne $3, $3, TAG377
TAG377:
mthi $2
srl $2, $2, 13
lbu $3, 0($2)
sw $3, 0($2)
TAG378:
blez $3, TAG379
sb $3, 0($3)
srav $2, $3, $3
mflo $3
TAG379:
mthi $3
mult $3, $3
sllv $2, $3, $3
multu $2, $2
TAG380:
mfhi $2
bgtz $2, TAG381
mfhi $2
sllv $2, $2, $2
TAG381:
sw $2, 0($2)
mult $2, $2
andi $4, $2, 9
lhu $4, 0($4)
TAG382:
sltiu $2, $4, 2
mthi $2
mfhi $2
blez $4, TAG383
TAG383:
mtlo $2
lui $1, 2
lbu $3, 0($2)
lui $3, 0
TAG384:
addiu $1, $3, 15
multu $1, $3
addu $4, $1, $3
lui $3, 0
TAG385:
mflo $1
mflo $4
bgez $3, TAG386
srl $1, $3, 5
TAG386:
lui $4, 9
mfhi $4
mthi $4
lui $2, 7
TAG387:
lui $1, 6
slti $1, $2, 14
subu $1, $2, $2
bgez $1, TAG388
TAG388:
lui $2, 10
lui $4, 13
bne $1, $2, TAG389
lui $1, 1
TAG389:
bne $1, $1, TAG390
mfhi $3
sll $0, $0, 0
mfhi $4
TAG390:
sw $4, 0($4)
mflo $1
sll $1, $1, 15
bltz $1, TAG391
TAG391:
sra $3, $1, 14
multu $1, $1
sw $1, 0($1)
lb $4, 0($1)
TAG392:
beq $4, $4, TAG393
or $2, $4, $4
and $4, $4, $2
bgtz $4, TAG393
TAG393:
andi $3, $4, 10
lhu $2, 0($4)
multu $2, $2
sh $2, 0($4)
TAG394:
lbu $4, 0($2)
srl $1, $2, 11
lui $4, 7
addu $4, $4, $1
TAG395:
subu $1, $4, $4
sra $2, $4, 0
slt $3, $1, $2
bgez $1, TAG396
TAG396:
ori $1, $3, 0
or $1, $1, $3
mthi $3
bne $1, $1, TAG397
TAG397:
lui $4, 14
beq $1, $4, TAG398
sll $1, $1, 7
beq $1, $4, TAG398
TAG398:
mflo $2
multu $2, $1
multu $2, $1
addu $1, $2, $2
TAG399:
xor $2, $1, $1
lui $2, 1
blez $2, TAG400
sll $0, $0, 0
TAG400:
lui $1, 2
mtlo $2
mthi $1
multu $2, $2
TAG401:
bne $1, $1, TAG402
nor $3, $1, $1
mfhi $3
mult $3, $3
TAG402:
mfhi $1
lui $2, 7
beq $3, $2, TAG403
sll $0, $0, 0
TAG403:
mtlo $2
sll $0, $0, 0
bne $2, $2, TAG404
mthi $2
TAG404:
mult $2, $2
multu $2, $2
sll $0, $0, 0
mfhi $3
TAG405:
sll $3, $3, 4
bne $3, $3, TAG406
lh $2, -784($3)
multu $3, $3
TAG406:
sw $2, 0($2)
lui $1, 6
mthi $2
mtlo $1
TAG407:
sll $0, $0, 0
beq $1, $1, TAG408
srl $2, $4, 11
sll $3, $1, 0
TAG408:
mflo $1
lui $1, 9
lui $1, 12
sll $0, $0, 0
TAG409:
sw $3, -784($3)
mfhi $3
beq $3, $3, TAG410
srav $2, $3, $3
TAG410:
lui $4, 11
mflo $4
mfhi $1
lui $3, 13
TAG411:
beq $3, $3, TAG412
mtlo $3
divu $3, $3
srav $1, $3, $3
TAG412:
srlv $1, $1, $1
sb $1, 0($1)
mfhi $2
lb $1, 0($1)
TAG413:
beq $1, $1, TAG414
add $2, $1, $1
sb $1, 0($1)
beq $2, $1, TAG414
TAG414:
subu $2, $2, $2
mult $2, $2
bne $2, $2, TAG415
lui $1, 13
TAG415:
mtlo $1
sll $0, $0, 0
mflo $4
lui $2, 13
TAG416:
sltu $1, $2, $2
mfhi $2
bne $2, $2, TAG417
lb $1, 0($2)
TAG417:
srl $1, $1, 2
sh $1, 0($1)
and $1, $1, $1
subu $1, $1, $1
TAG418:
lui $4, 7
lui $1, 13
and $4, $1, $4
sll $0, $0, 0
TAG419:
or $3, $4, $4
bltz $3, TAG420
lui $1, 2
blez $1, TAG420
TAG420:
mfhi $2
srav $1, $1, $1
sll $0, $0, 0
andi $1, $1, 2
TAG421:
bne $1, $1, TAG422
sltiu $4, $1, 11
sll $3, $1, 4
mfhi $1
TAG422:
mtlo $1
bgez $1, TAG423
subu $3, $1, $1
mthi $3
TAG423:
slti $2, $3, 14
sb $2, 0($2)
lui $1, 0
mtlo $3
TAG424:
mflo $4
and $2, $4, $4
mult $4, $2
mtlo $2
TAG425:
mtlo $2
sllv $4, $2, $2
lui $3, 3
blez $2, TAG426
TAG426:
multu $3, $3
bgez $3, TAG427
sra $1, $3, 10
mult $1, $3
TAG427:
sll $0, $0, 0
bne $1, $1, TAG428
sra $2, $2, 2
bltz $2, TAG428
TAG428:
srl $3, $2, 7
or $2, $2, $3
sw $2, 0($2)
mult $2, $2
TAG429:
srl $3, $2, 13
sra $1, $3, 6
mflo $4
lui $1, 13
TAG430:
addiu $2, $1, 10
mthi $1
mflo $1
bne $1, $2, TAG431
TAG431:
mflo $4
slt $1, $1, $4
lbu $3, 0($1)
lb $1, 0($4)
TAG432:
bltz $1, TAG433
lw $3, 0($1)
sh $1, 0($3)
or $4, $3, $3
TAG433:
mtlo $4
lhu $2, 0($4)
bne $2, $2, TAG434
lbu $1, 0($4)
TAG434:
lhu $1, 0($1)
mfhi $4
lui $4, 6
mtlo $4
TAG435:
sltiu $3, $4, 3
sltiu $3, $4, 8
ori $4, $3, 14
mthi $4
TAG436:
mflo $1
blez $1, TAG437
addu $1, $4, $1
lui $3, 2
TAG437:
xori $3, $3, 14
divu $3, $3
multu $3, $3
sll $0, $0, 0
TAG438:
addu $3, $3, $3
div $3, $3
mthi $3
sll $0, $0, 0
TAG439:
lhu $4, 0($2)
srav $4, $4, $4
lbu $3, 0($4)
xor $1, $4, $2
TAG440:
bne $1, $1, TAG441
lui $4, 7
sb $4, 0($1)
mfhi $3
TAG441:
addiu $2, $3, 9
divu $2, $3
srlv $3, $2, $2
beq $2, $3, TAG442
TAG442:
lui $2, 5
lui $1, 4
mthi $1
multu $1, $2
TAG443:
sll $0, $0, 0
divu $4, $1
sll $0, $0, 0
mtlo $4
TAG444:
xor $2, $4, $4
mflo $3
sll $0, $0, 0
lw $4, 0($2)
TAG445:
lui $3, 8
mflo $4
sll $0, $0, 0
lui $4, 10
TAG446:
sltu $1, $4, $4
sll $0, $0, 0
lui $4, 13
lb $2, 0($1)
TAG447:
sw $2, 0($2)
sb $2, 0($2)
sltiu $1, $2, 14
sb $1, 0($2)
TAG448:
sra $3, $1, 3
mtlo $3
bgtz $3, TAG449
mflo $1
TAG449:
sh $1, 0($1)
beq $1, $1, TAG450
mtlo $1
beq $1, $1, TAG450
TAG450:
slt $2, $1, $1
bgez $1, TAG451
andi $2, $1, 11
srl $2, $1, 7
TAG451:
lui $4, 5
beq $2, $4, TAG452
sll $0, $0, 0
bne $2, $2, TAG452
TAG452:
srav $1, $4, $4
mult $4, $1
bne $4, $4, TAG453
srlv $4, $4, $1
TAG453:
sll $0, $0, 0
lui $3, 15
blez $4, TAG454
mfhi $1
TAG454:
addiu $3, $1, 13
mtlo $1
addu $4, $3, $3
sltu $1, $4, $4
TAG455:
multu $1, $1
beq $1, $1, TAG456
and $1, $1, $1
mfhi $2
TAG456:
sh $2, 0($2)
mthi $2
mtlo $2
mthi $2
TAG457:
srl $1, $2, 7
beq $1, $1, TAG458
lui $1, 4
andi $3, $1, 10
TAG458:
lh $2, 0($3)
lui $3, 0
mfhi $4
sb $2, 0($2)
TAG459:
multu $4, $4
lhu $3, 0($4)
blez $3, TAG460
sra $2, $3, 5
TAG460:
lui $2, 14
bgez $2, TAG461
lui $1, 4
mtlo $2
TAG461:
beq $1, $1, TAG462
mflo $3
lui $2, 2
bne $3, $2, TAG462
TAG462:
slti $3, $2, 0
lui $3, 14
lui $4, 12
sll $0, $0, 0
TAG463:
xor $4, $1, $1
sll $0, $0, 0
slti $3, $4, 3
mthi $3
TAG464:
mflo $3
beq $3, $3, TAG465
andi $3, $3, 3
div $3, $3
TAG465:
mfhi $4
mfhi $1
mtlo $3
sll $1, $1, 11
TAG466:
srl $3, $1, 5
xori $3, $3, 11
mthi $3
div $3, $3
TAG467:
mthi $3
mult $3, $3
sb $3, 0($3)
lb $4, 0($3)
TAG468:
mfhi $1
sb $1, 0($4)
xori $3, $4, 7
mflo $4
TAG469:
mfhi $3
blez $3, TAG470
slt $1, $4, $3
mflo $3
TAG470:
multu $3, $3
srlv $1, $3, $3
andi $2, $3, 12
mfhi $1
TAG471:
mflo $3
mfhi $4
or $3, $4, $1
bne $3, $1, TAG472
TAG472:
lui $2, 5
beq $3, $2, TAG473
lui $1, 10
bgtz $3, TAG473
TAG473:
srl $2, $1, 12
lui $2, 8
bgez $1, TAG474
sll $0, $0, 0
TAG474:
bne $2, $2, TAG475
lui $3, 13
sll $0, $0, 0
beq $3, $3, TAG475
TAG475:
mfhi $2
lui $1, 4
bne $1, $3, TAG476
divu $1, $3
TAG476:
mtlo $1
sll $0, $0, 0
lui $1, 12
xor $3, $1, $1
TAG477:
sb $3, 0($3)
mtlo $3
blez $3, TAG478
sb $3, 0($3)
TAG478:
andi $3, $3, 13
mflo $4
sh $3, 0($3)
mthi $3
TAG479:
mfhi $4
lui $3, 2
mtlo $4
mfhi $2
TAG480:
sh $2, 0($2)
multu $2, $2
mfhi $2
blez $2, TAG481
TAG481:
lui $1, 2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG482:
sll $0, $0, 0
sll $0, $0, 0
lhu $3, 0($4)
srav $1, $4, $3
TAG483:
mflo $4
mult $1, $4
addiu $2, $1, 1
bltz $4, TAG484
TAG484:
mflo $3
lui $3, 6
mult $3, $3
bltz $3, TAG485
TAG485:
mflo $1
blez $1, TAG486
lui $4, 8
div $1, $1
TAG486:
mtlo $4
mult $4, $4
mult $4, $4
sll $0, $0, 0
TAG487:
xori $4, $4, 7
xori $1, $4, 0
sll $0, $0, 0
beq $4, $4, TAG488
TAG488:
sll $0, $0, 0
divu $1, $1
lui $2, 8
div $1, $2
TAG489:
bgez $2, TAG490
mult $2, $2
sw $2, 0($2)
srav $3, $2, $2
TAG490:
sll $0, $0, 0
blez $3, TAG491
mfhi $4
and $3, $3, $4
TAG491:
bne $3, $3, TAG492
sw $3, 0($3)
bne $3, $3, TAG492
lbu $2, 0($3)
TAG492:
mflo $4
and $2, $2, $4
sltu $3, $2, $2
bne $2, $3, TAG493
TAG493:
lb $4, 0($3)
bne $3, $4, TAG494
mflo $3
beq $3, $3, TAG494
TAG494:
lbu $1, 0($3)
bltz $1, TAG495
addi $4, $3, 14
bgtz $4, TAG495
TAG495:
mtlo $4
mflo $3
sh $3, 0($3)
lui $2, 3
TAG496:
div $2, $2
sll $0, $0, 0
multu $2, $2
multu $2, $2
TAG497:
mthi $2
bgez $2, TAG498
sll $0, $0, 0
lbu $3, 0($2)
TAG498:
sh $3, 0($3)
lui $2, 0
lb $3, 0($3)
lhu $3, 0($3)
TAG499:
mtlo $3
bgtz $3, TAG500
sh $3, 0($3)
sh $3, 0($3)
TAG500:
bne $3, $3, TAG501
mtlo $3
mfhi $2
lh $3, 0($3)
TAG501:
sh $3, 0($3)
mthi $3
mflo $2
lui $1, 12
TAG502:
sll $0, $0, 0
sltu $3, $1, $1
lui $1, 12
sh $1, 0($3)
TAG503:
multu $1, $1
sll $0, $0, 0
mfhi $1
bltz $3, TAG504
TAG504:
mfhi $1
addiu $4, $1, 10
sw $4, -144($1)
lb $3, -144($1)
TAG505:
lui $4, 14
sll $0, $0, 0
sltu $2, $2, $2
xori $1, $3, 12
TAG506:
sh $1, 106($1)
addiu $3, $1, 7
blez $3, TAG507
sw $3, 106($1)
TAG507:
bne $3, $3, TAG508
slti $4, $3, 8
mfhi $3
beq $4, $3, TAG508
TAG508:
addiu $1, $3, 4
lui $4, 6
bgez $3, TAG509
mflo $4
TAG509:
mult $4, $4
mflo $1
sh $4, 0($1)
mflo $4
TAG510:
beq $4, $4, TAG511
mfhi $4
div $4, $4
sh $4, 0($4)
TAG511:
blez $4, TAG512
or $1, $4, $4
lui $3, 12
mfhi $3
TAG512:
bne $3, $3, TAG513
mfhi $2
lhu $4, 0($2)
lui $4, 11
TAG513:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG514:
sw $2, 0($2)
mthi $2
lui $3, 5
mtlo $2
TAG515:
srav $2, $3, $3
lui $4, 11
mult $2, $4
divu $4, $2
TAG516:
srav $2, $4, $4
sll $0, $0, 0
srl $4, $2, 7
mfhi $1
TAG517:
mflo $3
mfhi $1
xor $2, $3, $1
sll $0, $0, 0
TAG518:
beq $3, $3, TAG519
lui $4, 7
mflo $3
lb $1, 0($3)
TAG519:
mflo $4
mtlo $4
lbu $4, 0($4)
mthi $1
TAG520:
srlv $3, $4, $4
mult $4, $3
mult $3, $4
sw $3, 0($4)
TAG521:
mflo $1
mtlo $1
mthi $1
lh $3, 0($3)
TAG522:
sh $3, 0($3)
sw $3, 0($3)
mfhi $4
lui $4, 5
TAG523:
beq $4, $4, TAG524
div $4, $4
bgez $4, TAG524
mfhi $4
TAG524:
mtlo $4
mthi $4
sll $0, $0, 0
beq $4, $4, TAG525
TAG525:
lui $4, 12
mtlo $4
multu $4, $4
sll $0, $0, 0
TAG526:
mtlo $4
bltz $4, TAG527
mflo $4
xori $2, $4, 5
TAG527:
div $2, $2
mtlo $2
mfhi $1
divu $1, $2
TAG528:
mtlo $1
bgez $1, TAG529
mult $1, $1
sub $2, $1, $1
TAG529:
sll $0, $0, 0
sltiu $4, $2, 15
or $3, $2, $4
mflo $2
TAG530:
beq $2, $2, TAG531
lb $3, 0($2)
sh $2, 0($3)
divu $2, $2
TAG531:
multu $3, $3
lui $3, 2
bgez $3, TAG532
andi $4, $3, 7
TAG532:
lw $3, 0($4)
srl $2, $4, 2
blez $3, TAG533
mtlo $2
TAG533:
bgez $2, TAG534
sh $2, 0($2)
mflo $2
mult $2, $2
TAG534:
multu $2, $2
lh $3, 0($2)
sh $2, 0($2)
multu $2, $2
TAG535:
mtlo $3
lhu $2, 0($3)
lb $4, 0($2)
bne $2, $3, TAG536
TAG536:
lui $2, 9
bne $4, $4, TAG537
mflo $1
lui $4, 2
TAG537:
beq $4, $4, TAG538
sll $0, $0, 0
sh $4, 0($4)
sh $4, 0($4)
TAG538:
sll $0, $0, 0
lui $1, 10
mtlo $1
mthi $1
TAG539:
mtlo $1
sll $0, $0, 0
divu $1, $1
mfhi $4
TAG540:
addi $4, $4, 5
sb $4, 0($4)
sb $4, 0($4)
andi $2, $4, 9
TAG541:
lb $4, 0($2)
mthi $2
srlv $1, $2, $4
sb $4, 0($1)
TAG542:
sb $1, 0($1)
lb $4, 0($1)
beq $1, $4, TAG543
mult $4, $1
TAG543:
bgtz $4, TAG544
mfhi $2
mtlo $2
slti $3, $2, 15
TAG544:
bgtz $3, TAG545
mtlo $3
mtlo $3
mfhi $4
TAG545:
mult $4, $4
lhu $4, 0($4)
and $3, $4, $4
lui $2, 12
TAG546:
sll $0, $0, 0
lui $1, 10
mthi $1
mflo $4
TAG547:
bgtz $4, TAG548
lui $3, 14
lui $2, 12
bltz $3, TAG548
TAG548:
mthi $2
bne $2, $2, TAG549
mthi $2
lui $4, 13
TAG549:
multu $4, $4
divu $4, $4
sllv $1, $4, $4
mult $4, $1
TAG550:
lui $3, 5
or $1, $3, $1
bne $1, $1, TAG551
nor $1, $1, $3
TAG551:
beq $1, $1, TAG552
sltiu $2, $1, 10
sb $2, 0($2)
mfhi $1
TAG552:
beq $1, $1, TAG553
div $1, $1
lui $4, 14
bne $4, $1, TAG553
TAG553:
sll $0, $0, 0
xori $1, $1, 11
sll $4, $1, 9
mthi $4
TAG554:
mtlo $4
multu $4, $4
mflo $3
lui $4, 14
TAG555:
sltu $3, $4, $4
sb $3, 0($3)
mtlo $4
sltu $2, $3, $4
TAG556:
slti $4, $2, 3
bne $2, $4, TAG557
div $2, $2
sb $4, 0($2)
TAG557:
bne $4, $4, TAG558
lui $3, 12
multu $4, $4
blez $3, TAG558
TAG558:
andi $4, $3, 6
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG559
TAG559:
lui $4, 7
sltu $2, $4, $3
mflo $4
lb $2, 0($4)
TAG560:
sb $2, 0($2)
bgtz $2, TAG561
sb $2, 0($2)
andi $2, $2, 11
TAG561:
beq $2, $2, TAG562
mthi $2
lh $4, 0($2)
lui $2, 15
TAG562:
ori $2, $2, 6
sb $2, 0($2)
lb $1, 0($2)
or $2, $2, $1
TAG563:
lbu $2, 0($2)
lb $2, 0($2)
lui $3, 0
nor $1, $2, $2
TAG564:
blez $1, TAG565
mthi $1
blez $1, TAG565
multu $1, $1
TAG565:
ori $4, $1, 2
sw $1, 6($4)
mult $4, $1
subu $2, $4, $1
TAG566:
sb $2, 0($2)
mfhi $2
lh $4, 0($2)
lui $4, 9
TAG567:
mfhi $2
sll $0, $0, 0
sra $1, $2, 5
mult $2, $1
TAG568:
beq $1, $1, TAG569
addi $1, $1, 0
mthi $1
lui $2, 1
TAG569:
add $1, $2, $2
mflo $2
mfhi $2
mthi $2
TAG570:
multu $2, $2
ori $2, $2, 10
mtlo $2
multu $2, $2
TAG571:
slt $1, $2, $2
bltz $1, TAG572
srl $2, $2, 5
lui $1, 14
TAG572:
mult $1, $1
bne $1, $1, TAG573
div $1, $1
sll $0, $0, 0
TAG573:
lui $3, 6
sll $0, $0, 0
slti $3, $4, 7
beq $3, $4, TAG574
TAG574:
mtlo $3
sll $2, $3, 14
beq $3, $2, TAG575
lui $2, 2
TAG575:
mtlo $2
blez $2, TAG576
mfhi $3
sltiu $3, $3, 14
TAG576:
lui $3, 7
bgtz $3, TAG577
lui $2, 9
mthi $3
TAG577:
sltu $2, $2, $2
or $1, $2, $2
bgez $2, TAG578
mfhi $1
TAG578:
bgez $1, TAG579
sb $1, 0($1)
slt $1, $1, $1
xori $2, $1, 12
TAG579:
mult $2, $2
mfhi $1
sw $1, 0($1)
lui $2, 12
TAG580:
blez $2, TAG581
lui $3, 11
and $4, $3, $2
sll $0, $0, 0
TAG581:
mfhi $1
bne $1, $4, TAG582
mtlo $1
lw $1, 0($1)
TAG582:
sw $1, 0($1)
lui $1, 13
sll $0, $0, 0
addiu $3, $4, 8
TAG583:
multu $3, $3
divu $3, $3
mfhi $4
lb $3, 0($4)
TAG584:
blez $3, TAG585
lbu $1, 0($3)
bgtz $1, TAG585
lui $2, 5
TAG585:
mthi $2
sll $0, $0, 0
mtlo $1
multu $2, $1
TAG586:
multu $1, $1
sb $1, 0($1)
xor $1, $1, $1
bltz $1, TAG587
TAG587:
sw $1, 0($1)
lui $4, 3
lui $3, 11
slt $2, $1, $4
TAG588:
bne $2, $2, TAG589
sll $4, $2, 6
bgtz $4, TAG589
lui $2, 12
TAG589:
sll $0, $0, 0
mfhi $2
mfhi $3
multu $3, $2
TAG590:
mfhi $4
sw $4, 0($3)
bgez $4, TAG591
ori $1, $3, 3
TAG591:
andi $1, $1, 10
subu $1, $1, $1
mflo $1
bne $1, $1, TAG592
TAG592:
sb $1, 0($1)
lh $4, 0($1)
sw $1, 0($1)
addiu $2, $4, 6
TAG593:
mfhi $3
bne $2, $3, TAG594
multu $2, $2
mtlo $3
TAG594:
lui $1, 10
lb $2, 0($3)
xor $3, $3, $3
sb $1, 0($2)
TAG595:
subu $2, $3, $3
bltz $3, TAG596
mthi $2
mult $2, $2
TAG596:
xor $4, $2, $2
addu $3, $2, $2
srav $4, $2, $3
lui $2, 14
TAG597:
bgez $2, TAG598
sll $0, $0, 0
beq $2, $2, TAG598
mflo $3
TAG598:
mult $3, $3
bltz $3, TAG599
sb $3, 0($3)
bne $3, $3, TAG599
TAG599:
mfhi $1
blez $3, TAG600
sw $3, 0($1)
lh $4, 0($1)
TAG600:
srav $2, $4, $4
bltz $2, TAG601
mfhi $3
mthi $4
TAG601:
mthi $3
blez $3, TAG602
sra $1, $3, 1
addu $1, $1, $3
TAG602:
sh $1, 0($1)
sub $3, $1, $1
mthi $3
bne $3, $1, TAG603
TAG603:
mthi $3
mtlo $3
srl $1, $3, 4
lui $4, 1
TAG604:
bgtz $4, TAG605
mult $4, $4
lui $2, 11
sw $2, 0($4)
TAG605:
mult $2, $2
mthi $2
sw $2, 0($2)
multu $2, $2
TAG606:
blez $2, TAG607
sw $2, 0($2)
sllv $1, $2, $2
sra $2, $1, 8
TAG607:
blez $2, TAG608
sh $2, 0($2)
mfhi $2
addu $4, $2, $2
TAG608:
bgtz $4, TAG609
mult $4, $4
mtlo $4
div $4, $4
TAG609:
mult $4, $4
mtlo $4
lui $2, 12
lui $3, 2
TAG610:
sll $0, $0, 0
beq $3, $3, TAG611
div $3, $3
beq $3, $3, TAG611
TAG611:
mflo $1
mtlo $3
lb $4, 0($1)
bgez $4, TAG612
TAG612:
mthi $4
sw $4, 0($4)
mult $4, $4
mflo $3
TAG613:
multu $3, $3
mflo $3
sw $3, 0($3)
srlv $1, $3, $3
TAG614:
bne $1, $1, TAG615
mfhi $3
mtlo $1
multu $3, $1
TAG615:
lh $4, 0($3)
beq $4, $3, TAG616
mflo $1
lw $1, 0($3)
TAG616:
sll $4, $1, 11
lui $2, 2
beq $2, $4, TAG617
sll $0, $0, 0
TAG617:
mult $2, $2
mult $2, $2
mult $2, $2
divu $2, $2
TAG618:
mtlo $2
sll $0, $0, 0
sltiu $3, $2, 1
xori $4, $3, 15
TAG619:
lb $1, 0($4)
mthi $4
multu $4, $4
bgtz $4, TAG620
TAG620:
mflo $3
multu $1, $1
slti $1, $1, 4
sb $3, 0($1)
TAG621:
sb $1, 0($1)
mflo $3
mult $3, $3
mflo $2
TAG622:
lui $2, 12
sll $0, $0, 0
lui $3, 1
mfhi $3
TAG623:
mflo $1
mfhi $4
mult $4, $4
mult $1, $1
TAG624:
mtlo $4
multu $4, $4
srl $3, $4, 3
and $1, $3, $3
TAG625:
mult $1, $1
mult $1, $1
lui $1, 10
beq $1, $1, TAG626
TAG626:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG627
sll $0, $0, 0
TAG627:
sll $0, $0, 0
divu $2, $2
lui $1, 14
sll $0, $0, 0
TAG628:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
bne $1, $1, TAG629
TAG629:
sll $0, $0, 0
bgtz $1, TAG630
mfhi $4
bne $1, $1, TAG630
TAG630:
sll $0, $0, 0
lui $2, 4
andi $1, $2, 8
mult $1, $2
TAG631:
multu $1, $1
sb $1, 0($1)
multu $1, $1
mthi $1
TAG632:
mtlo $1
srlv $3, $1, $1
sw $1, 0($1)
mflo $1
TAG633:
mfhi $4
blez $1, TAG634
addu $3, $1, $1
beq $3, $1, TAG634
TAG634:
ori $3, $3, 8
beq $3, $3, TAG635
lw $2, 0($3)
sh $3, 0($2)
TAG635:
mthi $2
lb $4, 0($2)
sltu $1, $2, $4
addiu $4, $2, 6
TAG636:
multu $4, $4
beq $4, $4, TAG637
lui $1, 10
bltz $1, TAG637
TAG637:
mult $1, $1
mfhi $4
lb $2, 0($4)
bgez $2, TAG638
TAG638:
mult $2, $2
bne $2, $2, TAG639
lbu $2, 0($2)
div $2, $2
TAG639:
mfhi $1
lui $3, 14
sll $2, $2, 1
lh $1, 0($2)
TAG640:
lbu $4, 0($1)
bgez $4, TAG641
sb $4, 0($1)
lb $4, 0($1)
TAG641:
lbu $3, 0($4)
addu $4, $4, $3
srl $4, $3, 9
lui $1, 1
TAG642:
sll $0, $0, 0
lui $1, 12
andi $4, $1, 13
lui $3, 8
TAG643:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
TAG644:
beq $2, $2, TAG645
mtlo $2
div $2, $2
bgez $2, TAG645
TAG645:
or $4, $2, $2
lui $4, 8
sll $0, $0, 0
div $4, $3
TAG646:
divu $3, $3
lui $1, 8
lui $2, 12
andi $1, $3, 1
TAG647:
mflo $3
sll $4, $3, 15
sllv $4, $1, $3
sw $4, 0($4)
TAG648:
sra $4, $4, 2
sb $4, 0($4)
or $3, $4, $4
srlv $3, $4, $4
TAG649:
addiu $3, $3, 10
beq $3, $3, TAG650
sh $3, 0($3)
blez $3, TAG650
TAG650:
and $2, $3, $3
div $2, $3
bne $2, $2, TAG651
nor $1, $2, $2
TAG651:
sw $1, 11($1)
lbu $1, 11($1)
subu $3, $1, $1
divu $1, $1
TAG652:
srl $1, $3, 7
bgtz $3, TAG653
mtlo $1
beq $1, $3, TAG653
TAG653:
and $1, $1, $1
and $3, $1, $1
addi $1, $3, 14
lui $1, 7
TAG654:
and $3, $1, $1
srl $3, $1, 2
sll $0, $0, 0
bne $3, $1, TAG655
TAG655:
slt $3, $3, $3
mult $3, $3
lhu $2, 0($3)
lb $1, 0($3)
TAG656:
or $1, $1, $1
mtlo $1
srlv $4, $1, $1
mthi $4
TAG657:
beq $4, $4, TAG658
lui $3, 4
srlv $3, $4, $3
sll $4, $3, 8
TAG658:
mflo $3
sb $3, -2047($4)
lui $2, 14
mflo $3
TAG659:
blez $3, TAG660
lw $1, 11($3)
lui $2, 13
mflo $1
TAG660:
lui $3, 5
lui $1, 13
blez $1, TAG661
addu $3, $1, $1
TAG661:
beq $3, $3, TAG662
divu $3, $3
div $3, $3
mthi $3
TAG662:
lui $3, 15
sll $0, $0, 0
slti $2, $4, 9
bltz $4, TAG663
TAG663:
lbu $4, 0($2)
mthi $2
multu $2, $2
divu $4, $4
TAG664:
mflo $3
lb $3, 0($3)
lui $2, 3
lui $2, 14
TAG665:
beq $2, $2, TAG666
lui $4, 15
lw $1, 0($4)
sw $1, 0($4)
TAG666:
multu $1, $1
lui $3, 0
lui $4, 8
mthi $4
TAG667:
bgtz $4, TAG668
mthi $4
andi $2, $4, 6
lui $1, 6
TAG668:
div $1, $1
mtlo $1
mult $1, $1
sll $0, $0, 0
TAG669:
mflo $2
mthi $2
lui $1, 7
bltz $2, TAG670
TAG670:
mfhi $3
lui $3, 3
srl $4, $3, 1
bltz $3, TAG671
TAG671:
divu $4, $4
mthi $4
sll $0, $0, 0
mthi $4
TAG672:
sll $0, $0, 0
xori $1, $3, 10
lui $2, 9
addiu $1, $3, 15
TAG673:
beq $1, $1, TAG674
sll $0, $0, 0
lui $3, 13
mfhi $1
TAG674:
mfhi $1
mflo $2
sll $0, $0, 0
blez $4, TAG675
TAG675:
mflo $1
bne $1, $4, TAG676
sll $0, $0, 0
nor $3, $1, $1
TAG676:
mflo $2
mflo $1
mult $3, $2
bltz $3, TAG677
TAG677:
lui $2, 1
sltiu $3, $1, 13
beq $1, $1, TAG678
andi $4, $2, 12
TAG678:
mtlo $4
multu $4, $4
slti $1, $4, 12
mult $1, $1
TAG679:
lui $1, 10
sltiu $3, $1, 11
beq $3, $1, TAG680
lui $2, 3
TAG680:
bltz $2, TAG681
mthi $2
mtlo $2
mtlo $2
TAG681:
sll $0, $0, 0
mthi $2
mthi $2
addiu $1, $2, 14
TAG682:
beq $1, $1, TAG683
lui $1, 12
mtlo $1
beq $1, $1, TAG683
TAG683:
lui $2, 0
mtlo $2
sll $0, $0, 0
mfhi $2
TAG684:
beq $2, $2, TAG685
sll $0, $0, 0
mfhi $2
sllv $2, $2, $2
TAG685:
bne $2, $2, TAG686
sll $0, $0, 0
addiu $3, $2, 9
mthi $4
TAG686:
bgtz $3, TAG687
lui $2, 4
subu $4, $2, $2
mthi $3
TAG687:
mflo $4
sw $4, 0($4)
lw $4, 0($4)
mult $4, $4
TAG688:
mfhi $1
addu $1, $4, $4
lw $2, 0($4)
subu $4, $1, $1
TAG689:
lw $3, 0($4)
mthi $3
slti $4, $3, 1
slti $3, $4, 13
TAG690:
bne $3, $3, TAG691
mthi $3
divu $3, $3
lui $3, 8
TAG691:
mtlo $3
mthi $3
sll $0, $0, 0
lui $2, 5
TAG692:
slti $1, $2, 15
lbu $2, 0($1)
mflo $2
mtlo $1
TAG693:
bne $2, $2, TAG694
lui $3, 12
beq $3, $2, TAG694
sll $0, $0, 0
TAG694:
beq $3, $3, TAG695
sll $0, $0, 0
div $3, $3
slt $4, $3, $3
TAG695:
bne $4, $4, TAG696
sb $4, 0($4)
beq $4, $4, TAG696
mult $4, $4
TAG696:
lui $2, 4
sll $0, $0, 0
mflo $2
srlv $2, $2, $4
TAG697:
bgez $2, TAG698
lui $4, 0
sh $2, 0($2)
sh $4, 0($4)
TAG698:
blez $4, TAG699
mult $4, $4
bgtz $4, TAG699
addi $1, $4, 5
TAG699:
sllv $3, $1, $1
lbu $1, 0($3)
mflo $3
bltz $1, TAG700
TAG700:
sll $4, $3, 13
lui $4, 7
sltu $4, $4, $4
bgtz $4, TAG701
TAG701:
sb $4, 0($4)
mthi $4
lui $3, 13
addu $4, $3, $4
TAG702:
addiu $2, $4, 4
mfhi $3
xor $4, $3, $2
lh $4, 0($3)
TAG703:
mfhi $4
lui $1, 9
beq $4, $1, TAG704
lui $1, 6
TAG704:
mult $1, $1
sll $0, $0, 0
addu $2, $1, $1
andi $3, $2, 3
TAG705:
lbu $3, 0($3)
mult $3, $3
slt $4, $3, $3
bgez $3, TAG706
TAG706:
mthi $4
slti $3, $4, 8
lui $4, 6
sll $0, $0, 0
TAG707:
addiu $4, $1, 13
blez $4, TAG708
lui $1, 11
mtlo $1
TAG708:
slti $2, $1, 12
sw $2, 0($2)
mthi $1
sb $2, 0($2)
TAG709:
sw $2, 0($2)
sllv $4, $2, $2
mfhi $4
sll $0, $0, 0
TAG710:
mfhi $3
bne $3, $3, TAG711
mfhi $2
slt $4, $3, $2
TAG711:
bltz $4, TAG712
mult $4, $4
sb $4, 0($4)
lw $4, 0($4)
TAG712:
slt $1, $4, $4
mtlo $1
bltz $4, TAG713
lb $2, 0($1)
TAG713:
multu $2, $2
sh $2, 0($2)
mflo $3
sh $3, 0($2)
TAG714:
lui $1, 1
mthi $3
sw $3, 0($3)
lw $1, 0($3)
TAG715:
lui $1, 2
mfhi $3
sra $1, $1, 3
mflo $4
TAG716:
lui $2, 9
addiu $3, $4, 8
lbu $3, 0($3)
bne $3, $2, TAG717
TAG717:
mflo $3
mthi $3
multu $3, $3
lh $1, 0($3)
TAG718:
srlv $4, $1, $1
beq $4, $4, TAG719
mtlo $1
sub $1, $4, $1
TAG719:
sb $1, 0($1)
addu $2, $1, $1
lui $3, 0
multu $3, $3
TAG720:
bne $3, $3, TAG721
mfhi $4
bne $3, $3, TAG721
srl $1, $3, 7
TAG721:
mult $1, $1
mtlo $1
lui $1, 1
blez $1, TAG722
TAG722:
lui $1, 6
lui $2, 15
sll $0, $0, 0
mflo $2
TAG723:
multu $2, $2
mult $2, $2
mflo $2
lui $3, 1
TAG724:
divu $3, $3
sll $2, $3, 15
andi $4, $2, 3
mtlo $2
TAG725:
lb $4, 0($4)
lw $4, 0($4)
bltz $4, TAG726
mult $4, $4
TAG726:
mtlo $4
sw $4, 0($4)
lb $1, 0($4)
lb $2, 0($4)
TAG727:
sra $3, $2, 10
subu $1, $2, $2
or $4, $2, $2
mult $4, $4
TAG728:
andi $2, $4, 12
lui $4, 7
blez $4, TAG729
sb $4, 0($2)
TAG729:
sll $0, $0, 0
multu $4, $4
bgtz $2, TAG730
mthi $2
TAG730:
blez $2, TAG731
sb $2, 0($2)
bne $2, $2, TAG731
mthi $2
TAG731:
mtlo $2
mfhi $3
lh $3, 0($3)
lh $4, 0($2)
TAG732:
bltz $4, TAG733
multu $4, $4
lhu $3, 0($4)
mflo $4
TAG733:
mult $4, $4
mflo $1
mult $1, $4
beq $1, $1, TAG734
TAG734:
subu $4, $1, $1
sb $4, 0($4)
lui $1, 6
sll $0, $0, 0
TAG735:
mthi $4
mthi $4
bne $4, $4, TAG736
srav $2, $4, $4
TAG736:
multu $2, $2
sb $2, 0($2)
lbu $3, 0($2)
bne $2, $3, TAG737
TAG737:
lui $1, 8
mfhi $2
beq $3, $3, TAG738
mtlo $1
TAG738:
lbu $3, 0($2)
multu $2, $3
mfhi $4
lui $2, 4
TAG739:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG740:
sh $3, 0($3)
mult $3, $3
mflo $4
sb $4, 0($4)
TAG741:
bgtz $4, TAG742
multu $4, $4
xor $3, $4, $4
lhu $1, 0($4)
TAG742:
andi $2, $1, 10
mult $1, $1
beq $1, $2, TAG743
lui $2, 7
TAG743:
addiu $3, $2, 3
mtlo $2
xor $2, $3, $3
bne $2, $2, TAG744
TAG744:
lb $2, 0($2)
mult $2, $2
mfhi $4
mthi $2
TAG745:
lui $2, 10
sltiu $1, $4, 3
addu $3, $4, $1
nor $4, $1, $3
TAG746:
addu $4, $4, $4
srav $2, $4, $4
addiu $3, $2, 15
beq $4, $4, TAG747
TAG747:
sh $3, 0($3)
subu $1, $3, $3
lui $3, 12
sll $0, $0, 0
TAG748:
beq $3, $3, TAG749
sll $0, $0, 0
sra $3, $3, 14
bltz $3, TAG749
TAG749:
divu $3, $3
sll $0, $0, 0
mflo $1
mflo $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop