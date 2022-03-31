ori $1, $0, 0
ori $2, $0, 7
ori $3, $0, 12
ori $4, $0, 3
sw $2, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $3, 48($0)
sw $1, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $1, 72($0)
sw $4, 76($0)
sw $1, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $3, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $4, 124($0)
divu $2, $2
mult $2, $2
mtlo $2
lb $4, 0($2)
TAG1:
lbu $3, 0($4)
blez $4, TAG2
mfhi $1
lb $1, 0($4)
TAG2:
addi $3, $1, 15
beq $3, $1, TAG3
mult $1, $1
xor $2, $1, $1
TAG3:
mtlo $2
bgtz $2, TAG4
lui $1, 2
sll $0, $0, 0
TAG4:
bne $2, $2, TAG5
mthi $2
mult $2, $2
bgez $2, TAG5
TAG5:
sb $2, 0($2)
mflo $2
lb $2, 0($2)
blez $2, TAG6
TAG6:
mflo $4
multu $2, $2
mult $2, $4
lh $4, 0($2)
TAG7:
mfhi $2
mflo $4
addi $4, $4, 12
bgtz $4, TAG8
TAG8:
mtlo $4
lhu $1, 0($4)
slti $3, $1, 6
sw $4, 0($1)
TAG9:
bltz $3, TAG10
mflo $2
andi $1, $2, 2
sll $1, $1, 11
TAG10:
bgez $1, TAG11
srav $1, $1, $1
sllv $2, $1, $1
lh $2, 0($1)
TAG11:
sll $4, $2, 7
lui $4, 9
and $4, $4, $2
mtlo $4
TAG12:
mflo $1
lbu $2, 0($1)
sh $2, 0($4)
lw $1, 0($2)
TAG13:
mult $1, $1
ori $4, $1, 0
sh $1, 0($1)
beq $4, $1, TAG14
TAG14:
mtlo $4
lui $2, 0
add $3, $2, $2
mthi $3
TAG15:
mtlo $3
add $1, $3, $3
mfhi $4
beq $1, $1, TAG16
TAG16:
sra $2, $4, 7
ori $2, $4, 2
subu $1, $2, $2
beq $2, $2, TAG17
TAG17:
mult $1, $1
mtlo $1
beq $1, $1, TAG18
mthi $1
TAG18:
sb $1, 0($1)
multu $1, $1
mflo $2
slt $2, $1, $2
TAG19:
multu $2, $2
bne $2, $2, TAG20
nor $1, $2, $2
lui $3, 1
TAG20:
multu $3, $3
sll $0, $0, 0
sltiu $3, $4, 12
bltz $4, TAG21
TAG21:
mtlo $3
addiu $2, $3, 2
sb $2, 0($3)
subu $4, $3, $2
TAG22:
bne $4, $4, TAG23
divu $4, $4
mflo $3
and $3, $3, $3
TAG23:
div $3, $3
mfhi $3
blez $3, TAG24
sb $3, 0($3)
TAG24:
mult $3, $3
lui $4, 14
slti $1, $3, 14
bltz $4, TAG25
TAG25:
mflo $3
lw $2, 0($3)
blez $3, TAG26
mtlo $3
TAG26:
sll $0, $0, 0
mult $1, $1
mfhi $4
divu $1, $2
TAG27:
mtlo $4
beq $4, $4, TAG28
sub $1, $4, $4
div $1, $1
TAG28:
mfhi $1
bne $1, $1, TAG29
sll $4, $1, 9
mtlo $4
TAG29:
xori $4, $4, 1
multu $4, $4
lw $2, -513($4)
bne $4, $4, TAG30
TAG30:
sh $2, -768($2)
sb $2, -768($2)
addiu $4, $2, 11
blez $4, TAG31
TAG31:
mtlo $4
lb $3, -779($4)
xor $1, $3, $3
mtlo $3
TAG32:
lw $1, 0($1)
mthi $1
beq $1, $1, TAG33
lui $4, 4
TAG33:
sll $0, $0, 0
mtlo $4
mult $4, $4
sll $0, $0, 0
TAG34:
sll $0, $0, 0
sltiu $3, $4, 1
bgez $3, TAG35
mult $3, $4
TAG35:
addiu $1, $3, 13
lbu $2, 0($1)
lui $1, 11
addu $4, $1, $3
TAG36:
sll $0, $0, 0
mult $4, $4
sltiu $4, $4, 2
mtlo $4
TAG37:
bltz $4, TAG38
mflo $4
bgez $4, TAG38
lui $4, 0
TAG38:
mfhi $1
divu $1, $1
slti $2, $1, 14
bgtz $2, TAG39
TAG39:
subu $1, $2, $2
multu $1, $1
mthi $1
sw $1, 0($1)
TAG40:
subu $4, $1, $1
and $1, $1, $1
mflo $4
bgez $1, TAG41
TAG41:
lbu $1, 0($4)
mflo $2
beq $2, $2, TAG42
ori $3, $4, 9
TAG42:
sltiu $1, $3, 10
lbu $1, 0($3)
and $3, $1, $1
mflo $4
TAG43:
mfhi $2
bgez $4, TAG44
lb $2, 0($4)
lw $1, 0($2)
TAG44:
lbu $4, 0($1)
mult $1, $4
addi $4, $4, 4
lui $3, 3
TAG45:
slt $1, $3, $3
addi $1, $1, 13
sltu $1, $1, $3
sll $0, $0, 0
TAG46:
blez $1, TAG47
mflo $4
lbu $4, 0($4)
bgez $1, TAG47
TAG47:
multu $4, $4
multu $4, $4
lb $4, 0($4)
mthi $4
TAG48:
mult $4, $4
sh $4, 0($4)
bne $4, $4, TAG49
sh $4, 0($4)
TAG49:
lui $4, 11
mtlo $4
srlv $1, $4, $4
slti $3, $4, 14
TAG50:
ori $1, $3, 0
mult $3, $1
bgez $3, TAG51
multu $3, $1
TAG51:
sll $3, $1, 3
mfhi $2
sh $1, 0($3)
multu $3, $3
TAG52:
mult $2, $2
mthi $2
bne $2, $2, TAG53
multu $2, $2
TAG53:
lui $1, 8
sltu $3, $2, $1
mtlo $1
lui $2, 3
TAG54:
sll $0, $0, 0
bgez $2, TAG55
srl $3, $2, 13
sb $3, 0($2)
TAG55:
mtlo $3
div $3, $3
lbu $1, 0($3)
bgez $1, TAG56
TAG56:
lb $3, 0($1)
bgtz $3, TAG57
mflo $3
addu $3, $3, $3
TAG57:
lb $4, 0($3)
mflo $3
mtlo $3
mtlo $3
TAG58:
mtlo $3
beq $3, $3, TAG59
sra $4, $3, 3
mult $4, $4
TAG59:
xor $2, $4, $4
sh $4, 0($4)
mfhi $4
lb $4, 0($4)
TAG60:
mflo $2
lui $3, 4
mthi $4
beq $4, $4, TAG61
TAG61:
xori $1, $3, 5
sll $0, $0, 0
andi $4, $3, 10
lui $3, 15
TAG62:
div $3, $3
sll $0, $0, 0
sltu $4, $4, $3
mfhi $3
TAG63:
lw $1, 0($3)
lh $3, 0($1)
lw $4, 0($3)
multu $3, $4
TAG64:
mult $4, $4
mtlo $4
srlv $3, $4, $4
lui $1, 7
TAG65:
mflo $2
lui $4, 5
mflo $1
lh $4, 0($1)
TAG66:
mflo $3
bne $4, $4, TAG67
mult $4, $4
sub $4, $3, $4
TAG67:
sh $4, 0($4)
bgez $4, TAG68
mtlo $4
mfhi $3
TAG68:
lb $4, 0($3)
beq $4, $4, TAG69
lui $3, 1
bltz $4, TAG69
TAG69:
mtlo $3
mfhi $1
mfhi $4
sh $4, 0($1)
TAG70:
slt $1, $4, $4
sh $4, 0($4)
bgez $4, TAG71
mthi $1
TAG71:
beq $1, $1, TAG72
addi $2, $1, 2
sltiu $4, $2, 6
mthi $4
TAG72:
sw $4, 0($4)
blez $4, TAG73
sh $4, 0($4)
mfhi $4
TAG73:
lui $3, 5
lui $3, 0
mflo $1
mflo $2
TAG74:
addiu $3, $2, 10
and $1, $3, $2
lui $4, 7
blez $4, TAG75
TAG75:
nor $1, $4, $4
sll $0, $0, 0
mtlo $2
sra $2, $2, 13
TAG76:
lui $3, 2
mthi $3
srav $1, $2, $3
mtlo $3
TAG77:
mthi $1
sw $1, 0($1)
bne $1, $1, TAG78
mthi $1
TAG78:
mtlo $1
bgtz $1, TAG79
mflo $3
lui $3, 7
TAG79:
sh $3, 0($3)
mfhi $1
addiu $1, $1, 8
mtlo $3
TAG80:
blez $1, TAG81
multu $1, $1
lui $3, 2
andi $4, $1, 4
TAG81:
sw $4, 0($4)
mthi $4
beq $4, $4, TAG82
mfhi $1
TAG82:
lbu $4, 0($1)
andi $2, $4, 14
or $4, $4, $4
bne $1, $4, TAG83
TAG83:
mult $4, $4
blez $4, TAG84
mult $4, $4
xor $2, $4, $4
TAG84:
mfhi $2
beq $2, $2, TAG85
mult $2, $2
beq $2, $2, TAG85
TAG85:
mult $2, $2
lui $2, 5
mtlo $2
andi $4, $2, 3
TAG86:
lb $2, 0($4)
mflo $4
srl $1, $4, 9
lb $2, 0($2)
TAG87:
sh $2, 0($2)
addu $2, $2, $2
bgtz $2, TAG88
mthi $2
TAG88:
mfhi $1
mflo $3
lh $1, 0($1)
mult $3, $1
TAG89:
lb $3, 0($1)
lui $1, 4
sh $1, 0($3)
lui $2, 4
TAG90:
srl $4, $2, 5
addiu $2, $4, 10
lui $3, 3
lui $2, 6
TAG91:
mtlo $2
sll $0, $0, 0
addu $2, $3, $2
srav $3, $3, $3
TAG92:
mtlo $3
sll $0, $0, 0
sllv $2, $3, $3
beq $3, $1, TAG93
TAG93:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 12
lui $4, 14
TAG94:
bne $4, $4, TAG95
mthi $4
bne $4, $4, TAG95
sll $0, $0, 0
TAG95:
sll $0, $0, 0
bne $4, $4, TAG96
sll $0, $0, 0
beq $4, $4, TAG96
TAG96:
addiu $2, $4, 5
sll $0, $0, 0
sll $0, $0, 0
xori $4, $4, 11
TAG97:
mtlo $4
srav $4, $4, $4
lui $4, 7
mflo $1
TAG98:
mult $1, $1
srl $1, $1, 0
beq $1, $1, TAG99
lui $4, 10
TAG99:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
beq $4, $2, TAG100
TAG100:
sll $0, $0, 0
nor $4, $3, $4
lui $2, 3
mfhi $1
TAG101:
sltiu $3, $1, 13
xori $3, $3, 7
addiu $2, $3, 5
lui $2, 14
TAG102:
sll $0, $0, 0
sra $2, $2, 12
lui $2, 14
sll $0, $0, 0
TAG103:
lui $4, 6
beq $2, $2, TAG104
lui $2, 5
mflo $2
TAG104:
lui $1, 14
sll $0, $0, 0
slti $3, $2, 6
mflo $1
TAG105:
divu $1, $1
bne $1, $1, TAG106
lui $1, 6
lui $4, 15
TAG106:
lui $1, 12
sll $0, $0, 0
or $3, $4, $4
sll $0, $0, 0
TAG107:
sll $0, $0, 0
mflo $4
lui $3, 2
sll $4, $4, 10
TAG108:
andi $4, $4, 8
multu $4, $4
addi $3, $4, 7
lui $1, 9
TAG109:
mthi $1
divu $1, $1
addu $4, $1, $1
sll $0, $0, 0
TAG110:
srav $1, $1, $1
bne $1, $1, TAG111
srl $2, $1, 4
divu $1, $2
TAG111:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG112
sll $0, $0, 0
TAG112:
bne $2, $2, TAG113
sll $0, $0, 0
multu $2, $2
sll $0, $0, 0
TAG113:
mult $3, $3
bgez $3, TAG114
sb $3, 0($3)
xor $1, $3, $3
TAG114:
sll $0, $0, 0
bgtz $1, TAG115
lui $4, 8
sll $3, $1, 7
TAG115:
mfhi $1
mflo $4
subu $4, $4, $1
lbu $4, 0($1)
TAG116:
sh $4, 0($4)
mtlo $4
nor $1, $4, $4
subu $4, $1, $4
TAG117:
multu $4, $4
lui $2, 0
divu $2, $4
sw $2, 0($2)
TAG118:
bne $2, $2, TAG119
lbu $4, 0($2)
sltu $4, $2, $4
mfhi $2
TAG119:
mtlo $2
lui $3, 7
bne $2, $3, TAG120
sll $0, $0, 0
TAG120:
bgez $4, TAG121
sh $4, 0($4)
bltz $4, TAG121
addiu $3, $4, 1
TAG121:
beq $3, $3, TAG122
mtlo $3
mult $3, $3
mfhi $2
TAG122:
srlv $4, $2, $2
mthi $2
lh $1, 0($4)
blez $1, TAG123
TAG123:
mfhi $1
mfhi $1
lbu $2, 0($1)
blez $1, TAG124
TAG124:
mthi $2
blez $2, TAG125
lui $1, 5
bgtz $2, TAG125
TAG125:
mthi $1
divu $1, $1
mfhi $4
bgez $1, TAG126
TAG126:
sll $3, $4, 5
mult $4, $3
mult $4, $4
mtlo $4
TAG127:
lbu $2, 0($3)
sw $3, 0($2)
mult $2, $2
multu $3, $3
TAG128:
lui $4, 7
bgtz $4, TAG129
mfhi $1
mfhi $4
TAG129:
mult $4, $4
mtlo $4
subu $2, $4, $4
slti $2, $4, 3
TAG130:
mflo $2
slt $2, $2, $2
slti $3, $2, 8
sb $2, 0($3)
TAG131:
mthi $3
multu $3, $3
mflo $4
bne $4, $4, TAG132
TAG132:
sb $4, 0($4)
sltu $4, $4, $4
lui $3, 0
slt $2, $3, $3
TAG133:
lhu $2, 0($2)
mfhi $1
sh $2, 0($1)
mtlo $1
TAG134:
bne $1, $1, TAG135
multu $1, $1
lhu $2, 0($1)
multu $1, $2
TAG135:
sll $0, $0, 0
lw $2, -256($2)
mthi $2
mtlo $2
TAG136:
sra $2, $2, 4
lui $2, 1
mflo $4
addu $2, $2, $2
TAG137:
sll $0, $0, 0
sw $1, 0($1)
sb $1, 0($1)
mtlo $2
TAG138:
sw $1, 0($1)
bne $1, $1, TAG139
multu $1, $1
blez $1, TAG139
TAG139:
sllv $1, $1, $1
mfhi $4
mtlo $1
lui $1, 10
TAG140:
or $4, $1, $1
mthi $1
multu $4, $4
sll $0, $0, 0
TAG141:
srav $4, $4, $4
mthi $4
divu $4, $4
bltz $4, TAG142
TAG142:
lui $2, 10
bne $2, $4, TAG143
mfhi $2
addu $1, $4, $2
TAG143:
sll $0, $0, 0
mthi $1
divu $1, $1
addu $2, $1, $1
TAG144:
xori $2, $2, 0
sll $0, $0, 0
xor $2, $2, $2
mthi $2
TAG145:
bne $2, $2, TAG146
sllv $4, $2, $2
mfhi $3
lhu $3, 0($4)
TAG146:
lui $3, 8
sll $0, $0, 0
mtlo $3
mtlo $3
TAG147:
sll $0, $0, 0
blez $2, TAG148
sh $3, 0($2)
beq $2, $2, TAG148
TAG148:
sw $2, 0($2)
sltu $1, $2, $2
sb $2, 0($1)
mthi $1
TAG149:
sltu $1, $1, $1
lui $1, 5
sll $0, $0, 0
mfhi $2
TAG150:
blez $2, TAG151
mtlo $2
bgez $2, TAG151
sb $2, 0($2)
TAG151:
lui $4, 12
sltiu $4, $4, 6
slt $3, $4, $2
xori $3, $3, 11
TAG152:
mfhi $1
mflo $1
multu $1, $3
slti $4, $1, 0
TAG153:
sb $4, 0($4)
mthi $4
mthi $4
srl $4, $4, 0
TAG154:
addi $2, $4, 7
lbu $4, 0($4)
multu $2, $4
bltz $4, TAG155
TAG155:
addiu $4, $4, 13
lui $3, 7
mflo $3
bgtz $3, TAG156
TAG156:
sh $3, 0($3)
multu $3, $3
lui $2, 6
lui $2, 15
TAG157:
mfhi $4
mfhi $2
mfhi $3
sltiu $1, $2, 1
TAG158:
lui $1, 1
mtlo $1
and $1, $1, $1
lui $4, 13
TAG159:
mflo $4
lui $4, 12
sll $0, $0, 0
bgez $4, TAG160
TAG160:
sltiu $2, $4, 0
sll $0, $0, 0
mfhi $2
blez $2, TAG161
TAG161:
lh $3, 0($2)
sra $4, $2, 8
sw $3, 0($3)
sw $3, 0($2)
TAG162:
sra $3, $4, 10
bne $3, $4, TAG163
sh $4, 0($3)
beq $3, $4, TAG163
TAG163:
sw $3, 0($3)
sh $3, 0($3)
blez $3, TAG164
lui $1, 10
TAG164:
bne $1, $1, TAG165
sll $0, $0, 0
mflo $2
mtlo $1
TAG165:
mfhi $2
lui $1, 3
lw $3, 0($2)
mult $1, $1
TAG166:
sw $3, 0($3)
sb $3, 0($3)
sltiu $2, $3, 14
sb $3, 0($3)
TAG167:
mthi $2
mflo $3
lui $1, 7
mthi $2
TAG168:
sltiu $4, $1, 11
bgtz $1, TAG169
andi $4, $1, 3
mfhi $3
TAG169:
xor $1, $3, $3
mflo $2
sb $3, 0($1)
bne $3, $2, TAG170
TAG170:
multu $2, $2
lui $3, 3
mult $2, $3
srlv $3, $2, $2
TAG171:
lh $1, 0($3)
multu $1, $1
blez $3, TAG172
lui $1, 12
TAG172:
lui $3, 8
div $3, $1
addiu $4, $3, 12
sll $0, $0, 0
TAG173:
mthi $4
mfhi $2
nor $3, $2, $4
beq $4, $3, TAG174
TAG174:
sll $0, $0, 0
sra $4, $2, 4
mthi $2
lui $3, 2
TAG175:
sll $0, $0, 0
multu $3, $1
sll $0, $0, 0
mthi $2
TAG176:
bgtz $2, TAG177
mthi $2
addi $2, $2, 4
mflo $1
TAG177:
bgtz $1, TAG178
mflo $3
mtlo $1
beq $1, $1, TAG178
TAG178:
addi $1, $3, 1
bne $3, $1, TAG179
slti $2, $1, 13
lhu $3, 0($1)
TAG179:
and $4, $3, $3
sh $3, 0($4)
sw $4, 0($4)
bgtz $4, TAG180
TAG180:
sra $2, $4, 14
blez $2, TAG181
addiu $4, $2, 3
slt $3, $4, $4
TAG181:
lh $3, 0($3)
mflo $1
and $3, $3, $3
mfhi $2
TAG182:
lui $2, 15
lui $3, 6
bne $2, $2, TAG183
mtlo $2
TAG183:
beq $3, $3, TAG184
mfhi $2
sh $2, 0($3)
bgtz $3, TAG184
TAG184:
slti $3, $2, 14
beq $2, $2, TAG185
mflo $4
srl $4, $3, 9
TAG185:
mtlo $4
sll $4, $4, 6
beq $4, $4, TAG186
sll $0, $0, 0
TAG186:
lui $3, 13
lui $4, 7
ori $2, $4, 7
addiu $4, $4, 13
TAG187:
mthi $4
lui $2, 6
sll $0, $0, 0
lui $2, 13
TAG188:
sltiu $2, $2, 5
lui $4, 0
slti $3, $2, 3
mult $4, $3
TAG189:
mflo $4
bne $4, $4, TAG190
sb $3, 0($3)
lbu $2, 0($3)
TAG190:
beq $2, $2, TAG191
divu $2, $2
beq $2, $2, TAG191
div $2, $2
TAG191:
addiu $1, $2, 2
mtlo $2
blez $1, TAG192
lb $1, 0($1)
TAG192:
beq $1, $1, TAG193
lui $4, 5
lui $2, 9
addiu $1, $4, 12
TAG193:
mult $1, $1
sllv $4, $1, $1
bltz $4, TAG194
mfhi $4
TAG194:
andi $4, $4, 9
lui $2, 10
beq $4, $2, TAG195
lui $1, 2
TAG195:
mtlo $1
mfhi $2
lui $2, 10
sll $0, $0, 0
TAG196:
div $2, $2
mtlo $2
divu $2, $2
mthi $2
TAG197:
sll $0, $0, 0
divu $2, $2
mthi $2
nor $2, $2, $2
TAG198:
addu $1, $2, $2
mflo $2
ori $3, $1, 5
lbu $2, 0($2)
TAG199:
srav $3, $2, $2
lui $3, 15
lui $3, 15
sllv $2, $2, $3
TAG200:
lb $2, 0($2)
mflo $4
multu $2, $2
mfhi $1
TAG201:
mthi $1
addiu $2, $1, 0
lh $3, 0($1)
lui $2, 4
TAG202:
lui $1, 1
sll $0, $0, 0
mflo $2
mtlo $1
TAG203:
lb $2, 0($2)
lb $1, 0($2)
ori $2, $2, 14
divu $2, $1
TAG204:
mfhi $2
beq $2, $2, TAG205
sh $2, 0($2)
multu $2, $2
TAG205:
mult $2, $2
bne $2, $2, TAG206
mtlo $2
lui $3, 11
TAG206:
sltu $3, $3, $3
mflo $4
bne $4, $4, TAG207
mthi $4
TAG207:
mthi $4
mfhi $2
sll $4, $2, 3
bne $4, $4, TAG208
TAG208:
mthi $4
slti $2, $4, 14
mfhi $4
lui $4, 8
TAG209:
sll $0, $0, 0
div $4, $4
ori $3, $4, 9
mtlo $3
TAG210:
mfhi $2
lui $3, 8
mthi $3
mult $3, $3
TAG211:
multu $3, $3
beq $3, $3, TAG212
mtlo $3
lui $1, 1
TAG212:
mtlo $1
ori $3, $1, 10
lui $1, 14
sb $1, 0($3)
TAG213:
mtlo $1
nor $4, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG214:
mtlo $4
mthi $4
lui $4, 1
bne $4, $4, TAG215
TAG215:
sll $0, $0, 0
lui $4, 15
mthi $4
mflo $4
TAG216:
lui $4, 7
addiu $4, $4, 14
lui $4, 12
bltz $4, TAG217
TAG217:
mtlo $4
lui $4, 0
lw $3, 0($4)
sltiu $4, $3, 2
TAG218:
mtlo $4
mflo $3
mult $3, $3
sra $4, $3, 3
TAG219:
addiu $1, $4, 7
sltu $3, $1, $4
sub $4, $1, $4
multu $3, $1
TAG220:
bne $4, $4, TAG221
lui $2, 1
sll $0, $0, 0
lb $1, 0($4)
TAG221:
sb $1, 0($1)
divu $1, $1
addiu $1, $1, 5
sb $1, 0($1)
TAG222:
bgtz $1, TAG223
mfhi $4
xor $3, $4, $1
add $2, $1, $3
TAG223:
sll $0, $0, 0
multu $4, $4
div $4, $2
and $4, $2, $2
TAG224:
mthi $4
beq $4, $4, TAG225
sra $1, $4, 15
mfhi $2
TAG225:
divu $2, $2
sll $0, $0, 0
lui $2, 14
slt $2, $2, $2
TAG226:
addi $2, $2, 2
div $2, $2
lui $3, 2
sb $3, 0($2)
TAG227:
mthi $3
mflo $2
sltiu $2, $2, 6
beq $3, $2, TAG228
TAG228:
sra $1, $2, 2
beq $2, $1, TAG229
multu $1, $1
mult $1, $1
TAG229:
addi $4, $1, 3
sh $4, 0($1)
sltiu $4, $4, 10
sb $4, 0($4)
TAG230:
beq $4, $4, TAG231
lb $1, 0($4)
bgtz $4, TAG231
lw $1, 0($4)
TAG231:
bne $1, $1, TAG232
sltiu $3, $1, 4
mult $3, $3
mfhi $4
TAG232:
sw $4, 0($4)
lui $4, 9
mtlo $4
addu $1, $4, $4
TAG233:
slti $1, $1, 6
bgez $1, TAG234
addu $1, $1, $1
bgtz $1, TAG234
TAG234:
slti $3, $1, 3
blez $1, TAG235
sllv $3, $3, $1
mfhi $4
TAG235:
mfhi $1
or $3, $4, $4
beq $4, $4, TAG236
slt $1, $4, $3
TAG236:
lb $1, 0($1)
mthi $1
andi $4, $1, 3
lb $2, 0($1)
TAG237:
bgez $2, TAG238
addu $2, $2, $2
addiu $3, $2, 9
lb $4, 0($3)
TAG238:
mthi $4
lui $1, 7
mfhi $2
mtlo $1
TAG239:
blez $2, TAG240
mflo $3
mflo $3
bgtz $2, TAG240
TAG240:
div $3, $3
mtlo $3
mult $3, $3
mtlo $3
TAG241:
sll $0, $0, 0
mfhi $4
bltz $3, TAG242
sll $0, $0, 0
TAG242:
bltz $4, TAG243
lui $2, 2
sra $2, $2, 15
blez $2, TAG243
TAG243:
subu $1, $2, $2
mult $1, $1
xor $4, $1, $1
subu $2, $4, $2
TAG244:
lui $4, 14
bgez $2, TAG245
nor $4, $4, $2
mfhi $3
TAG245:
mthi $3
bne $3, $3, TAG246
ori $3, $3, 7
sll $3, $3, 4
TAG246:
lui $3, 10
multu $3, $3
mult $3, $3
slti $1, $3, 4
TAG247:
lh $4, 0($1)
sh $1, 0($4)
multu $4, $4
xori $1, $1, 15
TAG248:
sltiu $1, $1, 5
multu $1, $1
mflo $2
mtlo $2
TAG249:
mult $2, $2
mfhi $3
sltu $4, $2, $3
lui $1, 1
TAG250:
div $1, $1
lui $4, 7
sll $3, $1, 4
bne $4, $4, TAG251
TAG251:
slti $2, $3, 1
andi $3, $2, 2
beq $3, $2, TAG252
sltiu $3, $3, 15
TAG252:
divu $3, $3
srlv $4, $3, $3
blez $3, TAG253
sllv $3, $4, $3
TAG253:
sb $3, 0($3)
mfhi $2
lui $2, 12
srlv $2, $2, $2
TAG254:
slti $2, $2, 6
sh $2, 0($2)
mfhi $4
addi $2, $4, 8
TAG255:
sltu $3, $2, $2
mfhi $2
bne $3, $2, TAG256
mflo $4
TAG256:
bne $4, $4, TAG257
mflo $1
slti $1, $4, 9
mfhi $4
TAG257:
bgtz $4, TAG258
mult $4, $4
sltu $1, $4, $4
mult $1, $4
TAG258:
blez $1, TAG259
lw $1, 0($1)
blez $1, TAG259
sw $1, 0($1)
TAG259:
bgez $1, TAG260
sub $3, $1, $1
multu $3, $1
bgtz $3, TAG260
TAG260:
sllv $3, $3, $3
mfhi $4
mfhi $3
mfhi $4
TAG261:
lh $2, 0($4)
lhu $3, 0($2)
mthi $3
sw $2, 0($2)
TAG262:
beq $3, $3, TAG263
lh $4, 0($3)
sw $4, 0($3)
div $3, $3
TAG263:
beq $4, $4, TAG264
lui $2, 3
mfhi $1
lui $1, 1
TAG264:
blez $1, TAG265
mult $1, $1
lui $1, 13
lw $1, 0($1)
TAG265:
ori $3, $1, 8
bgez $1, TAG266
mult $3, $1
blez $3, TAG266
TAG266:
lbu $1, 0($3)
lui $3, 10
divu $3, $3
sll $0, $0, 0
TAG267:
bne $3, $3, TAG268
mtlo $3
sll $0, $0, 0
mthi $3
TAG268:
mtlo $3
lui $3, 14
mflo $1
or $4, $3, $3
TAG269:
sll $0, $0, 0
bgtz $4, TAG270
sll $0, $0, 0
lh $4, 0($4)
TAG270:
sll $0, $0, 0
mult $4, $4
lui $1, 1
mtlo $4
TAG271:
mtlo $1
mult $1, $1
bltz $1, TAG272
sll $0, $0, 0
TAG272:
mthi $1
addiu $4, $1, 7
mfhi $3
andi $3, $4, 9
TAG273:
lui $2, 2
srl $4, $2, 2
multu $2, $4
sll $0, $0, 0
TAG274:
addu $4, $1, $1
mflo $1
addiu $2, $1, 11
beq $1, $2, TAG275
TAG275:
mthi $2
lui $3, 10
srl $4, $3, 14
lbu $2, 0($2)
TAG276:
ori $4, $2, 11
sh $2, 0($2)
mflo $2
mult $2, $2
TAG277:
bltz $2, TAG278
andi $4, $2, 15
subu $1, $4, $2
beq $2, $1, TAG278
TAG278:
and $3, $1, $1
lhu $3, 0($3)
ori $3, $1, 7
sw $3, 0($1)
TAG279:
lb $4, 0($3)
sb $4, 0($4)
addiu $3, $4, 7
sh $3, 0($3)
TAG280:
mthi $3
sb $3, 0($3)
sh $3, 0($3)
lhu $2, 0($3)
TAG281:
mfhi $4
sb $2, 0($4)
mult $2, $4
mult $4, $4
TAG282:
bne $4, $4, TAG283
lhu $1, 0($4)
addiu $1, $4, 10
and $4, $1, $1
TAG283:
beq $4, $4, TAG284
mthi $4
multu $4, $4
mflo $2
TAG284:
beq $2, $2, TAG285
sb $2, 0($2)
mult $2, $2
addiu $2, $2, 3
TAG285:
div $2, $2
bne $2, $2, TAG286
mfhi $2
add $1, $2, $2
TAG286:
sh $1, 0($1)
sb $1, 0($1)
mthi $1
multu $1, $1
TAG287:
mflo $4
mult $1, $1
bltz $1, TAG288
mfhi $2
TAG288:
slti $3, $2, 9
sllv $2, $3, $3
sb $2, 0($2)
beq $2, $3, TAG289
TAG289:
sh $2, 0($2)
ori $2, $2, 6
sh $2, 0($2)
sh $2, 0($2)
TAG290:
blez $2, TAG291
mtlo $2
mflo $4
beq $4, $4, TAG291
TAG291:
mthi $4
mflo $3
mult $3, $4
mfhi $2
TAG292:
mult $2, $2
mult $2, $2
mult $2, $2
mthi $2
TAG293:
lui $3, 5
mthi $3
mult $3, $2
addu $1, $2, $2
TAG294:
sw $1, 0($1)
andi $3, $1, 9
bne $3, $3, TAG295
subu $4, $3, $1
TAG295:
lui $1, 11
div $4, $1
mtlo $1
sll $0, $0, 0
TAG296:
lh $2, 0($4)
mult $4, $2
sltiu $3, $4, 1
blez $2, TAG297
TAG297:
mthi $3
mflo $3
mfhi $3
mthi $3
TAG298:
divu $3, $3
subu $2, $3, $3
nor $1, $3, $2
lui $3, 12
TAG299:
divu $3, $3
sll $0, $0, 0
blez $1, TAG300
sltu $3, $1, $1
TAG300:
sh $3, 0($3)
addu $4, $3, $3
lhu $4, 0($3)
mult $4, $4
TAG301:
and $3, $4, $4
lui $4, 5
sltiu $3, $4, 13
beq $4, $4, TAG302
TAG302:
sllv $4, $3, $3
sw $4, 0($4)
multu $4, $4
bgtz $4, TAG303
TAG303:
lui $4, 14
addiu $2, $4, 14
bne $2, $4, TAG304
mthi $4
TAG304:
sll $0, $0, 0
lui $3, 2
srl $4, $1, 3
lbu $3, 2($1)
TAG305:
nor $1, $3, $3
lui $4, 0
mtlo $1
mflo $2
TAG306:
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
srl $3, $2, 3
TAG307:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG308:
and $1, $2, $2
addiu $3, $1, 15
lui $1, 3
mult $2, $1
TAG309:
mtlo $1
beq $1, $1, TAG310
sll $0, $0, 0
lui $4, 5
TAG310:
bne $4, $4, TAG311
mfhi $2
addiu $4, $2, 1
mult $2, $4
TAG311:
lbu $3, 0($4)
sb $4, 0($4)
xor $3, $3, $4
sb $3, 0($4)
TAG312:
mtlo $3
div $3, $3
addu $3, $3, $3
lh $2, 0($3)
TAG313:
mtlo $2
mult $2, $2
lw $3, 0($2)
bltz $2, TAG314
TAG314:
lui $3, 10
andi $1, $3, 5
xor $3, $1, $3
mfhi $4
TAG315:
mult $4, $4
mfhi $1
lui $3, 10
mfhi $2
TAG316:
mtlo $2
lui $3, 6
bne $2, $3, TAG317
lh $4, 0($2)
TAG317:
mtlo $4
blez $4, TAG318
mult $4, $4
lui $1, 1
TAG318:
bne $1, $1, TAG319
mult $1, $1
bne $1, $1, TAG319
addiu $3, $1, 2
TAG319:
lui $4, 9
mult $4, $4
sll $0, $0, 0
mflo $1
TAG320:
sh $1, 0($1)
lui $4, 1
mthi $4
bne $4, $4, TAG321
TAG321:
mult $4, $4
lui $1, 9
mult $4, $4
mtlo $1
TAG322:
lui $4, 13
sll $0, $0, 0
mult $4, $4
sltu $4, $1, $1
TAG323:
mflo $2
multu $2, $2
multu $2, $4
lui $1, 1
TAG324:
srlv $4, $1, $1
sll $0, $0, 0
bgez $1, TAG325
sll $0, $0, 0
TAG325:
ori $4, $4, 6
sll $0, $0, 0
bltz $4, TAG326
or $2, $4, $4
TAG326:
sll $0, $0, 0
sltiu $3, $2, 9
sll $0, $0, 0
bltz $2, TAG327
TAG327:
mflo $4
lbu $4, 0($4)
mfhi $4
lui $3, 7
TAG328:
mflo $2
addi $4, $2, 10
bne $4, $4, TAG329
mflo $2
TAG329:
beq $2, $2, TAG330
srlv $4, $2, $2
lb $4, 0($4)
addu $4, $4, $2
TAG330:
lui $1, 4
addi $2, $4, 13
mflo $3
beq $4, $3, TAG331
TAG331:
lui $2, 5
sll $0, $0, 0
mflo $2
lui $2, 11
TAG332:
sll $0, $0, 0
slti $2, $2, 7
sb $2, 0($2)
mthi $2
TAG333:
sh $2, 0($2)
srl $4, $2, 13
andi $3, $2, 14
mtlo $2
TAG334:
mfhi $1
mthi $3
sw $3, 0($3)
blez $3, TAG335
TAG335:
or $1, $1, $1
mfhi $1
lw $4, 0($1)
add $1, $1, $1
TAG336:
mult $1, $1
lb $2, 0($1)
sh $2, 0($2)
sh $1, 0($1)
TAG337:
mult $2, $2
mtlo $2
mflo $1
sll $3, $2, 3
TAG338:
beq $3, $3, TAG339
lui $3, 2
sltiu $4, $3, 5
sh $4, 0($4)
TAG339:
srav $3, $4, $4
mult $4, $4
lui $4, 15
mthi $3
TAG340:
div $4, $4
xor $2, $4, $4
sll $1, $2, 12
bgez $1, TAG341
TAG341:
addu $4, $1, $1
lh $4, 0($1)
sb $4, 0($4)
slti $1, $4, 6
TAG342:
mflo $4
sb $4, 0($1)
blez $1, TAG343
subu $1, $4, $4
TAG343:
bltz $1, TAG344
lui $1, 10
mflo $4
lui $1, 0
TAG344:
addu $3, $1, $1
lui $1, 15
mfhi $1
andi $3, $1, 7
TAG345:
sh $3, 0($3)
lh $2, 0($3)
multu $2, $2
ori $1, $2, 10
TAG346:
divu $1, $1
addu $1, $1, $1
bne $1, $1, TAG347
lui $2, 1
TAG347:
bgtz $2, TAG348
sll $0, $0, 0
mfhi $3
xori $1, $2, 12
TAG348:
mfhi $4
bne $4, $4, TAG349
ori $2, $1, 5
div $4, $1
TAG349:
and $4, $2, $2
bgez $4, TAG350
lui $1, 6
addiu $1, $4, 13
TAG350:
sll $0, $0, 0
bne $1, $1, TAG351
div $1, $1
sll $0, $0, 0
TAG351:
blez $1, TAG352
mflo $3
mult $3, $1
mflo $1
TAG352:
blez $1, TAG353
slti $1, $1, 7
sub $2, $1, $1
sh $2, 0($1)
TAG353:
sub $2, $2, $2
mflo $2
sll $4, $2, 14
addiu $3, $2, 4
TAG354:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
bne $3, $2, TAG355
TAG355:
mflo $1
sll $0, $0, 0
sll $0, $0, 0
bne $2, $3, TAG356
TAG356:
sll $0, $0, 0
beq $2, $2, TAG357
mflo $2
lui $1, 14
TAG357:
lui $2, 4
sll $0, $0, 0
bne $1, $1, TAG358
mthi $2
TAG358:
beq $2, $2, TAG359
srlv $4, $2, $2
div $2, $4
andi $1, $4, 7
TAG359:
bgtz $1, TAG360
xor $4, $1, $1
mflo $2
ori $2, $1, 4
TAG360:
bltz $2, TAG361
mflo $3
mult $3, $2
mthi $3
TAG361:
lui $3, 10
addu $2, $3, $3
sll $0, $0, 0
srav $3, $3, $3
TAG362:
blez $3, TAG363
mfhi $4
sltu $4, $3, $3
div $4, $3
TAG363:
mthi $4
slti $1, $4, 9
div $1, $1
lhu $3, 0($4)
TAG364:
bne $3, $3, TAG365
mthi $3
mtlo $3
bne $3, $3, TAG365
TAG365:
lb $4, 0($3)
mtlo $4
nor $4, $4, $3
mult $3, $3
TAG366:
mflo $2
srl $4, $4, 10
sb $2, 0($2)
bne $4, $4, TAG367
TAG367:
mflo $1
bne $4, $4, TAG368
sll $3, $1, 0
mfhi $1
TAG368:
lui $4, 13
lbu $4, 0($1)
mfhi $3
beq $3, $4, TAG369
TAG369:
sh $3, 0($3)
bltz $3, TAG370
mtlo $3
andi $4, $3, 7
TAG370:
mult $4, $4
multu $4, $4
sltiu $3, $4, 11
bne $4, $3, TAG371
TAG371:
sb $3, 0($3)
blez $3, TAG372
mthi $3
or $3, $3, $3
TAG372:
ori $4, $3, 4
sltu $3, $4, $3
mtlo $3
multu $3, $4
TAG373:
lui $2, 11
lb $1, 0($3)
lui $1, 13
subu $4, $2, $1
TAG374:
mflo $4
mtlo $4
addiu $4, $4, 9
addiu $4, $4, 6
TAG375:
blez $4, TAG376
mtlo $4
mult $4, $4
addiu $1, $4, 2
TAG376:
sb $1, 0($1)
lui $3, 8
mthi $1
sltu $4, $1, $1
TAG377:
or $4, $4, $4
lhu $2, 0($4)
mfhi $2
mtlo $2
TAG378:
mthi $2
lbu $1, 0($2)
sb $1, 0($1)
lui $1, 3
TAG379:
bgtz $1, TAG380
mthi $1
bltz $1, TAG380
lui $3, 9
TAG380:
blez $3, TAG381
mflo $2
sll $0, $0, 0
sltu $3, $3, $3
TAG381:
addu $4, $3, $3
sh $3, 0($3)
bltz $3, TAG382
mtlo $3
TAG382:
mfhi $3
beq $4, $3, TAG383
slt $3, $4, $3
lui $3, 12
TAG383:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 8
bne $4, $2, TAG384
TAG384:
lui $2, 4
divu $4, $2
mtlo $4
sra $4, $2, 14
TAG385:
mtlo $4
sb $4, 0($4)
andi $3, $4, 13
sw $3, 0($4)
TAG386:
mtlo $3
mtlo $3
lw $1, 0($3)
addi $3, $3, 14
TAG387:
bne $3, $3, TAG388
mthi $3
sb $3, 0($3)
sh $3, 0($3)
TAG388:
srlv $4, $3, $3
xori $2, $4, 10
multu $3, $3
srl $3, $2, 13
TAG389:
bne $3, $3, TAG390
mult $3, $3
mflo $3
lui $2, 1
TAG390:
mthi $2
subu $2, $2, $2
sra $4, $2, 11
lui $4, 3
TAG391:
ori $3, $4, 12
mthi $4
subu $3, $3, $4
slti $2, $4, 12
TAG392:
nor $3, $2, $2
mfhi $2
sll $0, $0, 0
andi $1, $2, 9
TAG393:
beq $1, $1, TAG394
sb $1, 0($1)
bgtz $1, TAG394
mtlo $1
TAG394:
mfhi $3
lui $2, 15
sltiu $3, $2, 13
mult $1, $1
TAG395:
mult $3, $3
beq $3, $3, TAG396
mflo $2
sb $2, 0($3)
TAG396:
multu $2, $2
bltz $2, TAG397
mtlo $2
multu $2, $2
TAG397:
mflo $3
multu $2, $2
xor $4, $3, $3
beq $4, $3, TAG398
TAG398:
lb $2, 0($4)
bgez $2, TAG399
ori $1, $2, 15
multu $1, $2
TAG399:
mflo $3
bgtz $3, TAG400
mfhi $2
lb $4, 0($3)
TAG400:
sh $4, 0($4)
multu $4, $4
lui $1, 7
divu $1, $1
TAG401:
addu $1, $1, $1
lui $1, 15
srlv $3, $1, $1
mfhi $2
TAG402:
mult $2, $2
lhu $4, 0($2)
mfhi $3
lb $1, 0($3)
TAG403:
mfhi $3
slti $2, $1, 6
sb $2, 0($3)
bne $1, $2, TAG404
TAG404:
andi $3, $2, 10
mthi $3
sb $3, 0($2)
slt $3, $3, $3
TAG405:
mult $3, $3
sra $3, $3, 2
mfhi $1
lui $1, 1
TAG406:
mtlo $1
sll $0, $0, 0
div $2, $2
addiu $3, $1, 13
TAG407:
sll $0, $0, 0
bne $2, $3, TAG408
mult $3, $3
mthi $3
TAG408:
mflo $4
sb $2, 0($2)
andi $2, $2, 9
lui $4, 15
TAG409:
mtlo $4
bgez $4, TAG410
sll $0, $0, 0
xor $1, $4, $1
TAG410:
multu $1, $1
slti $3, $1, 4
lui $4, 8
addu $1, $1, $1
TAG411:
blez $1, TAG412
mfhi $1
subu $4, $1, $1
mflo $1
TAG412:
multu $1, $1
bltz $1, TAG413
mfhi $1
lhu $4, 0($1)
TAG413:
sb $4, -257($4)
multu $4, $4
xori $1, $4, 14
lh $3, -257($4)
TAG414:
mfhi $3
sb $3, 0($3)
mthi $3
subu $1, $3, $3
TAG415:
addiu $4, $1, 8
bne $4, $4, TAG416
lui $4, 15
blez $1, TAG416
TAG416:
srav $2, $4, $4
mflo $1
sll $0, $0, 0
bne $4, $1, TAG417
TAG417:
divu $1, $1
mflo $2
divu $2, $2
beq $2, $2, TAG418
TAG418:
lbu $2, 0($2)
beq $2, $2, TAG419
mthi $2
beq $2, $2, TAG419
TAG419:
sll $3, $2, 1
srav $2, $2, $3
bgtz $3, TAG420
lh $2, 0($2)
TAG420:
mfhi $3
mfhi $2
sb $2, 0($2)
mflo $3
TAG421:
lui $1, 2
mfhi $1
mtlo $3
sb $3, 0($1)
TAG422:
bgtz $1, TAG423
lui $1, 6
sh $1, 0($1)
lbu $4, 0($1)
TAG423:
beq $4, $4, TAG424
sltu $3, $4, $4
lui $1, 12
lb $1, 0($3)
TAG424:
ori $4, $1, 11
bgtz $1, TAG425
sll $0, $0, 0
sltu $3, $4, $4
TAG425:
srl $3, $3, 11
multu $3, $3
addiu $3, $3, 6
mfhi $3
TAG426:
mult $3, $3
bne $3, $3, TAG427
sub $1, $3, $3
or $2, $3, $3
TAG427:
mthi $2
lb $2, 0($2)
mtlo $2
subu $2, $2, $2
TAG428:
lui $2, 1
mult $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG429:
addu $4, $2, $2
mthi $2
multu $2, $4
sll $0, $0, 0
TAG430:
lui $3, 1
bne $3, $1, TAG431
mflo $2
mthi $1
TAG431:
lui $1, 7
mflo $4
mfhi $2
lh $2, 0($2)
TAG432:
sw $2, 0($2)
lh $2, 0($2)
sw $2, 0($2)
bltz $2, TAG433
TAG433:
mtlo $2
mflo $3
lb $1, 0($2)
beq $1, $3, TAG434
TAG434:
lbu $2, 0($1)
mult $1, $1
lhu $4, 0($1)
lb $2, 0($4)
TAG435:
lb $2, 0($2)
mult $2, $2
sb $2, 0($2)
mtlo $2
TAG436:
mthi $2
slti $1, $2, 7
lbu $2, 0($1)
add $4, $2, $1
TAG437:
div $4, $4
lui $4, 10
sll $0, $0, 0
srl $4, $2, 9
TAG438:
subu $2, $4, $4
sw $4, 0($4)
sub $4, $4, $4
sltiu $2, $4, 3
TAG439:
srl $3, $2, 12
mthi $3
sra $1, $2, 2
lui $4, 0
TAG440:
lh $3, 0($4)
sh $4, 0($3)
mflo $1
nor $3, $3, $4
TAG441:
multu $3, $3
bne $3, $3, TAG442
divu $3, $3
sb $3, 1($3)
TAG442:
sb $3, 1($3)
bne $3, $3, TAG443
mult $3, $3
lui $1, 11
TAG443:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
lui $4, 8
TAG444:
lui $2, 5
sll $0, $0, 0
sll $0, $0, 0
divu $2, $4
TAG445:
bne $2, $2, TAG446
lui $1, 4
mult $2, $2
lui $1, 9
TAG446:
lui $4, 1
bgez $1, TAG447
subu $3, $4, $4
mtlo $1
TAG447:
bne $3, $3, TAG448
multu $3, $3
nor $2, $3, $3
sll $3, $2, 1
TAG448:
mflo $2
and $1, $2, $2
bne $2, $3, TAG449
mtlo $1
TAG449:
lui $2, 5
beq $2, $2, TAG450
sb $2, 0($1)
lb $3, 0($1)
TAG450:
lui $4, 7
addu $4, $3, $4
mtlo $4
mult $3, $3
TAG451:
mflo $1
mfhi $2
bne $4, $1, TAG452
mthi $1
TAG452:
mflo $4
lbu $1, 0($2)
sb $2, 0($2)
mthi $4
TAG453:
blez $1, TAG454
mflo $1
bltz $1, TAG454
lui $2, 6
TAG454:
mtlo $2
blez $2, TAG455
sb $2, 0($2)
mtlo $2
TAG455:
mtlo $2
sltiu $4, $2, 4
beq $2, $4, TAG456
srl $3, $2, 8
TAG456:
lui $1, 5
sltu $1, $1, $3
lh $3, 0($1)
mfhi $4
TAG457:
srlv $3, $4, $4
lui $4, 2
lui $4, 2
lui $1, 10
TAG458:
or $4, $1, $1
xori $3, $4, 12
addu $1, $1, $1
mult $1, $4
TAG459:
xori $1, $1, 1
mult $1, $1
mtlo $1
xor $1, $1, $1
TAG460:
sllv $1, $1, $1
multu $1, $1
lw $2, 0($1)
mtlo $1
TAG461:
beq $2, $2, TAG462
sw $2, 0($2)
lbu $3, 0($2)
sh $2, 0($2)
TAG462:
addiu $1, $3, 8
divu $3, $1
multu $1, $3
multu $3, $1
TAG463:
nor $1, $1, $1
mthi $1
multu $1, $1
mfhi $4
TAG464:
bltz $4, TAG465
multu $4, $4
mflo $4
mflo $3
TAG465:
sll $0, $0, 0
mult $3, $3
multu $3, $3
beq $3, $3, TAG466
TAG466:
sltiu $1, $3, 5
mflo $4
mtlo $4
lui $2, 15
TAG467:
slt $4, $2, $2
sub $4, $4, $4
srlv $4, $4, $2
mflo $4
TAG468:
bne $4, $4, TAG469
divu $4, $4
mfhi $4
multu $4, $4
TAG469:
lhu $3, 0($4)
bgtz $3, TAG470
mfhi $2
and $2, $4, $2
TAG470:
lui $2, 1
sll $0, $0, 0
bne $2, $2, TAG471
subu $3, $4, $2
TAG471:
or $3, $3, $3
divu $3, $3
mfhi $2
lui $2, 5
TAG472:
bne $2, $2, TAG473
sltiu $1, $2, 13
xori $1, $1, 4
bne $2, $1, TAG473
TAG473:
mfhi $1
bltz $1, TAG474
addi $1, $1, 10
lui $2, 10
TAG474:
mfhi $3
sllv $4, $3, $2
beq $2, $4, TAG475
mthi $4
TAG475:
sra $3, $4, 7
mfhi $1
mtlo $3
mfhi $1
TAG476:
mfhi $1
bne $1, $1, TAG477
slt $1, $1, $1
beq $1, $1, TAG477
TAG477:
addu $3, $1, $1
mthi $1
lw $4, 0($1)
lui $4, 11
TAG478:
addiu $3, $4, 6
divu $4, $3
sll $0, $0, 0
bltz $3, TAG479
TAG479:
sll $0, $0, 0
mflo $3
lhu $4, 0($3)
mtlo $3
TAG480:
mfhi $2
mult $4, $4
addu $2, $2, $4
lh $2, 0($4)
TAG481:
bne $2, $2, TAG482
lui $2, 3
srl $1, $2, 2
sll $0, $0, 0
TAG482:
bltz $1, TAG483
mtlo $1
lui $4, 0
sll $0, $0, 0
TAG483:
and $2, $4, $4
lui $2, 3
sh $2, 0($4)
mtlo $2
TAG484:
sll $0, $0, 0
bne $2, $4, TAG485
addiu $4, $2, 5
mfhi $4
TAG485:
mult $4, $4
beq $4, $4, TAG486
div $4, $4
lh $2, 0($4)
TAG486:
sll $0, $0, 0
divu $2, $2
lui $3, 8
sll $0, $0, 0
TAG487:
mult $3, $3
sll $0, $0, 0
slt $4, $3, $3
sh $3, 0($4)
TAG488:
sltiu $2, $4, 6
mtlo $2
mflo $1
blez $4, TAG489
TAG489:
addiu $4, $1, 13
mfhi $1
bgtz $4, TAG490
mtlo $1
TAG490:
lui $1, 6
mthi $1
mtlo $1
mflo $4
TAG491:
addu $2, $4, $4
sll $0, $0, 0
bgtz $2, TAG492
lui $2, 2
TAG492:
sll $0, $0, 0
sll $3, $1, 4
sll $0, $0, 0
bgtz $1, TAG493
TAG493:
sll $4, $3, 6
div $3, $4
addiu $1, $3, 15
bltz $4, TAG494
TAG494:
sll $0, $0, 0
sll $2, $1, 8
mtlo $2
mthi $2
TAG495:
xor $1, $2, $2
lw $2, 0($1)
sra $3, $1, 2
lui $4, 12
TAG496:
sll $0, $0, 0
mtlo $4
mfhi $1
divu $4, $1
TAG497:
subu $3, $1, $1
mfhi $1
sltiu $1, $1, 1
andi $1, $1, 6
TAG498:
mthi $1
sb $1, 0($1)
mtlo $1
bgez $1, TAG499
TAG499:
mult $1, $1
bne $1, $1, TAG500
lh $4, 0($1)
lui $2, 2
TAG500:
sll $0, $0, 0
mflo $3
divu $2, $2
sh $3, 0($3)
TAG501:
mult $3, $3
bne $3, $3, TAG502
lhu $2, 0($3)
lui $4, 13
TAG502:
mthi $4
lui $3, 3
bltz $4, TAG503
sll $0, $0, 0
TAG503:
addu $4, $3, $3
andi $2, $3, 3
bne $3, $2, TAG504
sll $0, $0, 0
TAG504:
beq $2, $2, TAG505
sra $1, $2, 6
addu $3, $1, $2
divu $3, $1
TAG505:
sll $2, $3, 14
bltz $2, TAG506
sltu $2, $2, $2
lw $1, 0($2)
TAG506:
multu $1, $1
sh $1, 0($1)
lhu $1, 0($1)
mthi $1
TAG507:
bltz $1, TAG508
sh $1, 0($1)
sb $1, 0($1)
mthi $1
TAG508:
lw $1, 0($1)
bne $1, $1, TAG509
lhu $4, 0($1)
lui $3, 13
TAG509:
divu $3, $3
sll $0, $0, 0
bltz $1, TAG510
lui $2, 12
TAG510:
bgez $2, TAG511
ori $2, $2, 2
bne $2, $2, TAG511
sllv $1, $2, $2
TAG511:
mult $1, $1
sb $1, 0($1)
sw $1, 0($1)
mtlo $1
TAG512:
bgez $1, TAG513
nor $2, $1, $1
lui $4, 13
sb $2, 0($1)
TAG513:
sh $4, 0($4)
sra $2, $4, 15
sb $4, 0($2)
mult $2, $4
TAG514:
mult $2, $2
lhu $2, 0($2)
sll $2, $2, 3
mtlo $2
TAG515:
bgtz $2, TAG516
lh $2, 0($2)
bgez $2, TAG516
lhu $3, 0($2)
TAG516:
bne $3, $3, TAG517
lui $1, 8
beq $1, $3, TAG517
sltiu $1, $1, 14
TAG517:
lhu $4, 0($1)
mthi $4
mtlo $1
nor $2, $4, $1
TAG518:
bltz $2, TAG519
mflo $3
lb $1, 0($3)
lh $1, 0($1)
TAG519:
lh $2, 0($1)
addiu $4, $2, 12
lhu $3, 0($2)
srlv $2, $1, $4
TAG520:
multu $2, $2
lb $3, 0($2)
mtlo $3
srl $3, $3, 4
TAG521:
sw $3, 0($3)
sh $3, 0($3)
sb $3, 0($3)
mflo $3
TAG522:
mfhi $3
mtlo $3
sw $3, 0($3)
mthi $3
TAG523:
lb $1, 0($3)
lui $2, 9
bltz $3, TAG524
or $3, $3, $3
TAG524:
lui $4, 5
lui $3, 5
mflo $2
lui $3, 8
TAG525:
bne $3, $3, TAG526
and $3, $3, $3
mthi $3
sll $3, $3, 13
TAG526:
beq $3, $3, TAG527
slt $4, $3, $3
lw $2, 0($3)
mthi $2
TAG527:
bgez $2, TAG528
mult $2, $2
mtlo $2
div $2, $2
TAG528:
srav $2, $2, $2
bne $2, $2, TAG529
mfhi $2
bgez $2, TAG529
TAG529:
lui $2, 4
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG530:
mfhi $3
lui $2, 1
sra $2, $4, 14
lbu $4, 0($4)
TAG531:
mthi $4
beq $4, $4, TAG532
slt $4, $4, $4
andi $4, $4, 6
TAG532:
mthi $4
bne $4, $4, TAG533
lui $1, 14
sll $0, $0, 0
TAG533:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
mult $1, $4
TAG534:
lui $3, 12
lb $2, 0($4)
mtlo $2
xori $2, $4, 15
TAG535:
blez $2, TAG536
lbu $2, 0($2)
beq $2, $2, TAG536
lbu $4, 0($2)
TAG536:
sh $4, 0($4)
sh $4, 0($4)
lui $2, 9
bne $4, $4, TAG537
TAG537:
srl $1, $2, 10
beq $1, $1, TAG538
sll $0, $0, 0
mfhi $1
TAG538:
mflo $3
srav $4, $3, $1
srav $1, $4, $4
mfhi $1
TAG539:
mflo $4
srav $2, $1, $1
bgtz $4, TAG540
xori $3, $4, 5
TAG540:
bne $3, $3, TAG541
sllv $4, $3, $3
beq $3, $4, TAG541
sra $1, $3, 0
TAG541:
addiu $3, $1, 5
blez $1, TAG542
sll $2, $1, 14
bltz $1, TAG542
TAG542:
sra $2, $2, 14
addu $4, $2, $2
bne $2, $2, TAG543
lh $1, 0($4)
TAG543:
lui $4, 5
lui $4, 4
slt $3, $4, $4
sll $0, $0, 0
TAG544:
sb $3, 0($3)
bne $3, $3, TAG545
sw $3, 0($3)
beq $3, $3, TAG545
TAG545:
lui $1, 10
bgez $3, TAG546
mtlo $3
beq $1, $1, TAG546
TAG546:
ori $3, $1, 10
lui $1, 2
mult $1, $1
sll $0, $0, 0
TAG547:
subu $4, $1, $1
mfhi $2
mult $2, $4
mflo $2
TAG548:
bgtz $2, TAG549
mflo $1
bne $2, $2, TAG549
mtlo $1
TAG549:
beq $1, $1, TAG550
and $3, $1, $1
lui $1, 0
mtlo $3
TAG550:
lui $2, 2
divu $2, $2
sll $0, $0, 0
andi $3, $1, 15
TAG551:
beq $3, $3, TAG552
lhu $2, 0($3)
bltz $2, TAG552
sub $1, $3, $2
TAG552:
multu $1, $1
nor $4, $1, $1
lui $2, 10
mthi $2
TAG553:
lui $4, 2
sll $0, $0, 0
mflo $3
blez $4, TAG554
TAG554:
mult $3, $3
sltiu $2, $3, 7
mtlo $3
sb $3, 0($2)
TAG555:
mfhi $2
bgez $2, TAG556
lb $1, 0($2)
addi $4, $2, 12
TAG556:
lui $4, 1
lui $1, 4
lui $1, 9
mthi $1
TAG557:
sltu $4, $1, $1
or $3, $4, $1
sll $0, $0, 0
nor $2, $4, $4
TAG558:
mult $2, $2
lw $2, 1($2)
mthi $2
sb $2, 0($2)
TAG559:
mflo $3
mflo $3
lui $1, 0
lhu $4, 0($1)
TAG560:
blez $4, TAG561
mult $4, $4
blez $4, TAG561
mult $4, $4
TAG561:
xor $2, $4, $4
and $3, $4, $4
bltz $3, TAG562
xori $3, $3, 0
TAG562:
mthi $3
bltz $3, TAG563
mult $3, $3
sw $3, 0($3)
TAG563:
mthi $3
and $2, $3, $3
mflo $4
sh $2, 0($2)
TAG564:
bgtz $4, TAG565
sll $1, $4, 3
sltiu $4, $1, 10
lbu $1, 0($4)
TAG565:
mthi $1
bgtz $1, TAG566
srlv $3, $1, $1
mtlo $3
TAG566:
lui $3, 2
beq $3, $3, TAG567
sll $0, $0, 0
mthi $3
TAG567:
lui $2, 4
slt $1, $3, $2
sll $0, $0, 0
addiu $2, $3, 6
TAG568:
andi $2, $2, 2
sh $2, 0($2)
multu $2, $2
lui $2, 14
TAG569:
nor $1, $2, $2
sll $0, $0, 0
blez $2, TAG570
slti $2, $2, 4
TAG570:
mfhi $2
subu $4, $2, $2
mfhi $4
sh $4, 0($4)
TAG571:
blez $4, TAG572
sw $4, 0($4)
bltz $4, TAG572
sltiu $4, $4, 11
TAG572:
lb $1, 0($4)
bltz $1, TAG573
sb $1, 0($4)
lui $3, 3
TAG573:
mult $3, $3
sll $0, $0, 0
mthi $3
and $4, $3, $3
TAG574:
bne $4, $4, TAG575
mflo $2
mult $4, $4
sh $2, 0($2)
TAG575:
mflo $4
mfhi $3
lui $3, 15
sltu $4, $2, $2
TAG576:
beq $4, $4, TAG577
mfhi $4
bne $4, $4, TAG577
srav $3, $4, $4
TAG577:
and $2, $3, $3
lui $3, 4
bltz $2, TAG578
sll $0, $0, 0
TAG578:
mtlo $3
sll $0, $0, 0
mtlo $4
mflo $4
TAG579:
lbu $4, 0($4)
mflo $4
divu $4, $4
andi $2, $4, 0
TAG580:
blez $2, TAG581
addiu $3, $2, 3
mtlo $2
lw $1, 0($2)
TAG581:
mflo $3
multu $3, $1
lui $4, 15
mfhi $2
TAG582:
lui $4, 13
lui $3, 2
and $1, $2, $3
slt $1, $1, $1
TAG583:
bgez $1, TAG584
mult $1, $1
mtlo $1
mtlo $1
TAG584:
mtlo $1
sub $4, $1, $1
addu $2, $1, $4
lui $2, 3
TAG585:
mtlo $2
lui $3, 9
sra $4, $2, 4
sll $0, $0, 0
TAG586:
bgez $2, TAG587
addiu $1, $2, 2
beq $1, $1, TAG587
mfhi $4
TAG587:
mult $4, $4
mthi $4
beq $4, $4, TAG588
mflo $4
TAG588:
lui $3, 12
lui $3, 2
blez $3, TAG589
div $3, $3
TAG589:
sltiu $4, $3, 7
mflo $2
mfhi $4
bgtz $2, TAG590
TAG590:
mthi $4
beq $4, $4, TAG591
slti $4, $4, 11
andi $3, $4, 11
TAG591:
sll $0, $0, 0
multu $3, $3
lui $3, 2
srlv $2, $3, $3
TAG592:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG593
TAG593:
addiu $1, $3, 12
beq $1, $1, TAG594
lui $4, 4
andi $4, $1, 7
TAG594:
sllv $4, $4, $4
mult $4, $4
lui $3, 0
beq $4, $3, TAG595
TAG595:
mthi $3
or $3, $3, $3
mthi $3
lui $1, 0
TAG596:
mfhi $2
bltz $2, TAG597
lh $1, 0($1)
mult $1, $1
TAG597:
lhu $4, 0($1)
subu $4, $4, $4
bne $1, $4, TAG598
mfhi $3
TAG598:
sh $3, 0($3)
lh $3, 0($3)
mult $3, $3
sw $3, 0($3)
TAG599:
mthi $3
nor $1, $3, $3
lui $4, 10
addiu $2, $3, 13
TAG600:
mtlo $2
sb $2, 0($2)
mtlo $2
bgez $2, TAG601
TAG601:
lui $3, 8
lui $1, 15
mthi $3
beq $2, $3, TAG602
TAG602:
sll $0, $0, 0
sltu $1, $1, $1
bgez $1, TAG603
multu $1, $1
TAG603:
multu $1, $1
lui $1, 10
mfhi $3
xori $3, $3, 11
TAG604:
sll $2, $3, 11
sltu $2, $3, $2
bgez $2, TAG605
mthi $2
TAG605:
bgez $2, TAG606
sb $2, 0($2)
xor $1, $2, $2
mfhi $4
TAG606:
div $4, $4
lui $4, 10
sll $0, $0, 0
lb $4, 0($2)
TAG607:
bne $4, $4, TAG608
mtlo $4
lui $4, 4
srav $3, $4, $4
TAG608:
multu $3, $3
srav $2, $3, $3
sll $0, $0, 0
mtlo $1
TAG609:
div $1, $1
lui $2, 11
sll $0, $0, 0
mult $4, $1
TAG610:
addiu $1, $4, 6
mflo $3
lhu $3, 0($3)
slt $4, $3, $1
TAG611:
ori $4, $4, 5
lb $3, 0($4)
lui $2, 0
sll $1, $4, 15
TAG612:
mfhi $2
blez $1, TAG613
div $2, $1
lui $2, 3
TAG613:
mthi $2
sll $3, $2, 10
sltu $4, $2, $3
mthi $2
TAG614:
and $4, $4, $4
beq $4, $4, TAG615
lb $1, 0($4)
addu $4, $4, $1
TAG615:
mtlo $4
mfhi $1
sll $0, $0, 0
lb $4, 0($4)
TAG616:
mfhi $2
blez $2, TAG617
addiu $1, $4, 14
mthi $2
TAG617:
bgtz $1, TAG618
mthi $1
lui $2, 1
div $2, $2
TAG618:
subu $4, $2, $2
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG619
TAG619:
sltiu $3, $1, 5
mult $1, $1
bne $3, $3, TAG620
mthi $3
TAG620:
ori $3, $3, 9
mfhi $4
mflo $4
bne $4, $3, TAG621
TAG621:
sw $4, -225($4)
beq $4, $4, TAG622
lh $4, -225($4)
nor $2, $4, $4
TAG622:
div $2, $2
blez $2, TAG623
sll $0, $0, 0
lbu $2, 0($1)
TAG623:
beq $2, $2, TAG624
mfhi $3
beq $3, $3, TAG624
mult $2, $3
TAG624:
lui $4, 0
bltz $3, TAG625
lui $4, 14
mflo $4
TAG625:
multu $4, $4
div $4, $4
mthi $4
mflo $1
TAG626:
lbu $2, 0($1)
lb $2, 0($1)
lui $2, 1
lui $3, 1
TAG627:
sll $0, $0, 0
sll $0, $0, 0
sb $3, 0($1)
sll $0, $0, 0
TAG628:
andi $3, $1, 13
lbu $3, 0($3)
mult $1, $3
beq $1, $3, TAG629
TAG629:
mult $3, $3
multu $3, $3
lh $2, 0($3)
bgez $2, TAG630
TAG630:
sll $0, $0, 0
lw $1, -225($2)
bne $1, $2, TAG631
mfhi $3
TAG631:
xori $2, $3, 5
lui $4, 12
mflo $4
lui $1, 2
TAG632:
bltz $1, TAG633
mult $1, $1
subu $4, $1, $1
multu $1, $4
TAG633:
lb $2, 0($4)
beq $2, $2, TAG634
mtlo $4
lb $2, 0($2)
TAG634:
multu $2, $2
multu $2, $2
mfhi $1
lui $1, 4
TAG635:
srav $4, $1, $1
bltz $4, TAG636
or $1, $4, $1
nor $4, $1, $4
TAG636:
subu $2, $4, $4
bne $4, $4, TAG637
mult $4, $4
slti $4, $2, 10
TAG637:
addiu $4, $4, 7
slt $1, $4, $4
bltz $4, TAG638
mflo $4
TAG638:
sll $3, $4, 3
bltz $3, TAG639
mflo $3
nor $3, $3, $4
TAG639:
addu $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $4, 0
TAG640:
or $2, $2, $2
bgtz $2, TAG641
andi $2, $2, 11
lhu $3, 0($2)
TAG641:
lui $4, 1
slt $1, $3, $3
beq $4, $1, TAG642
nor $3, $1, $3
TAG642:
sll $0, $0, 0
mtlo $3
mult $3, $3
mfhi $4
TAG643:
mflo $3
mfhi $1
xor $2, $3, $4
sll $4, $3, 15
TAG644:
div $4, $4
mthi $4
blez $4, TAG645
lui $1, 12
TAG645:
bgez $1, TAG646
ori $2, $1, 2
bltz $1, TAG646
mtlo $1
TAG646:
mfhi $2
bltz $2, TAG647
subu $3, $2, $2
addiu $1, $2, 6
TAG647:
andi $1, $1, 5
lh $1, 0($1)
mult $1, $1
sb $1, 0($1)
TAG648:
bne $1, $1, TAG649
slt $3, $1, $1
srlv $2, $3, $3
sb $2, 0($1)
TAG649:
sra $4, $2, 3
mthi $2
beq $2, $2, TAG650
lui $3, 1
TAG650:
blez $3, TAG651
mtlo $3
sllv $2, $3, $3
beq $2, $3, TAG651
TAG651:
and $1, $2, $2
mflo $3
sll $0, $0, 0
mult $3, $1
TAG652:
xori $4, $3, 0
srl $3, $4, 10
sw $4, 0($3)
mflo $2
TAG653:
mult $2, $2
mfhi $3
mult $2, $3
beq $2, $3, TAG654
TAG654:
sltiu $2, $3, 2
mthi $3
addiu $4, $2, 14
sll $4, $3, 12
TAG655:
lui $2, 2
beq $2, $2, TAG656
slt $4, $4, $2
div $4, $4
TAG656:
sb $4, 0($4)
beq $4, $4, TAG657
sb $4, 0($4)
lhu $4, 0($4)
TAG657:
sb $4, 0($4)
mtlo $4
ori $4, $4, 9
and $4, $4, $4
TAG658:
andi $3, $4, 5
lbu $2, 0($4)
bgez $3, TAG659
lui $3, 4
TAG659:
sltiu $4, $3, 1
sll $2, $4, 10
bgtz $3, TAG660
sll $3, $4, 10
TAG660:
srav $2, $3, $3
lw $3, 0($2)
mfhi $2
blez $3, TAG661
TAG661:
mthi $2
sw $2, 0($2)
mtlo $2
blez $2, TAG662
TAG662:
sw $2, 0($2)
mfhi $4
nor $3, $4, $2
bltz $4, TAG663
TAG663:
sw $3, 1($3)
div $3, $3
slti $4, $3, 12
sra $3, $3, 15
TAG664:
xori $4, $3, 7
bgtz $4, TAG665
addiu $2, $3, 9
bgez $2, TAG665
TAG665:
mtlo $2
mthi $2
mthi $2
andi $4, $2, 11
TAG666:
mtlo $4
bne $4, $4, TAG667
lhu $2, 0($4)
mfhi $4
TAG667:
mtlo $4
beq $4, $4, TAG668
srlv $3, $4, $4
mtlo $4
TAG668:
bltz $3, TAG669
mthi $3
mflo $3
lbu $4, 0($3)
TAG669:
lb $1, 0($4)
lui $1, 14
sll $0, $0, 0
addu $1, $4, $1
TAG670:
bne $1, $1, TAG671
lui $2, 6
nor $3, $1, $2
sll $0, $0, 0
TAG671:
sllv $1, $1, $1
beq $1, $1, TAG672
lui $4, 5
mult $1, $1
TAG672:
multu $4, $4
mfhi $4
addu $1, $4, $4
sb $1, 0($4)
TAG673:
lui $4, 12
subu $1, $4, $4
mthi $1
mflo $4
TAG674:
sb $4, 0($4)
mfhi $2
mthi $4
mthi $2
TAG675:
sllv $3, $2, $2
sh $2, 0($3)
sltu $2, $2, $2
mthi $2
TAG676:
lui $4, 12
lui $4, 0
lbu $1, 0($4)
bgez $4, TAG677
TAG677:
mfhi $2
lw $2, 0($2)
mflo $2
subu $2, $2, $2
TAG678:
nor $4, $2, $2
lui $3, 6
mflo $3
bne $4, $4, TAG679
TAG679:
sltiu $3, $3, 5
subu $1, $3, $3
lui $4, 1
bgez $4, TAG680
TAG680:
lui $4, 10
bne $4, $4, TAG681
addiu $4, $4, 14
mfhi $4
TAG681:
sub $3, $4, $4
slt $2, $3, $3
lui $4, 15
beq $2, $2, TAG682
TAG682:
sll $0, $0, 0
addiu $3, $4, 4
subu $2, $4, $3
beq $4, $3, TAG683
TAG683:
sll $0, $0, 0
bltz $2, TAG684
andi $3, $2, 10
sb $3, 0($2)
TAG684:
bne $3, $3, TAG685
sh $3, 0($3)
sll $3, $3, 11
bne $3, $3, TAG685
TAG685:
sh $3, -16384($3)
srlv $2, $3, $3
lui $4, 1
ori $4, $2, 9
TAG686:
sb $4, -16393($4)
lui $4, 12
slti $2, $4, 3
mfhi $4
TAG687:
lui $3, 0
sh $4, 0($3)
mult $4, $3
sw $3, 0($3)
TAG688:
bne $3, $3, TAG689
sw $3, 0($3)
mtlo $3
lui $3, 10
TAG689:
lui $2, 2
mflo $4
lw $2, 0($4)
mthi $2
TAG690:
mthi $2
bltz $2, TAG691
mtlo $2
lui $3, 14
TAG691:
sll $0, $0, 0
multu $3, $1
mtlo $1
sll $0, $0, 0
TAG692:
addiu $1, $1, 0
multu $1, $1
lui $4, 0
lui $1, 9
TAG693:
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG694
TAG694:
sll $0, $0, 0
sll $0, $0, 0
andi $2, $4, 3
mult $2, $1
TAG695:
bltz $2, TAG696
multu $2, $2
lui $2, 7
bne $2, $2, TAG696
TAG696:
subu $4, $2, $2
mfhi $4
mfhi $1
sllv $4, $4, $4
TAG697:
multu $4, $4
mthi $4
mthi $4
lb $1, 0($4)
TAG698:
beq $1, $1, TAG699
mtlo $1
blez $1, TAG699
mtlo $1
TAG699:
bltz $1, TAG700
xori $2, $1, 13
and $4, $2, $2
mthi $2
TAG700:
sb $4, 0($4)
beq $4, $4, TAG701
mfhi $1
div $4, $4
TAG701:
lbu $1, 0($1)
mflo $2
sra $1, $2, 15
sltu $1, $2, $1
TAG702:
lui $3, 6
mult $3, $1
mfhi $2
mtlo $1
TAG703:
mtlo $2
lui $3, 11
lui $4, 3
mtlo $3
TAG704:
multu $4, $4
bgez $4, TAG705
sll $0, $0, 0
mflo $4
TAG705:
bgez $4, TAG706
sll $0, $0, 0
divu $4, $4
lui $2, 10
TAG706:
beq $2, $2, TAG707
mtlo $2
div $2, $2
mfhi $4
TAG707:
mflo $4
sh $4, 0($4)
srav $4, $4, $4
bne $4, $4, TAG708
TAG708:
lui $3, 0
beq $4, $4, TAG709
mfhi $4
lui $1, 2
TAG709:
sw $1, 0($1)
bgtz $1, TAG710
mtlo $1
mflo $3
TAG710:
multu $3, $3
bltz $3, TAG711
sh $3, 0($3)
lbu $3, 0($3)
TAG711:
lh $2, 0($3)
lui $1, 3
slti $2, $1, 5
bne $1, $2, TAG712
TAG712:
lui $1, 0
lbu $4, 0($1)
lui $4, 11
mtlo $4
TAG713:
mult $4, $4
sll $0, $0, 0
sltiu $3, $4, 14
lhu $4, 0($3)
TAG714:
sltu $4, $4, $4
lh $4, 0($4)
sb $4, 0($4)
lui $2, 15
TAG715:
andi $4, $2, 2
bne $4, $4, TAG716
lh $2, 0($4)
multu $2, $2
TAG716:
mthi $2
or $3, $2, $2
lui $2, 11
blez $2, TAG717
TAG717:
mthi $2
sll $0, $0, 0
mflo $3
lui $1, 10
TAG718:
mfhi $3
mflo $1
sllv $4, $1, $3
bgtz $4, TAG719
TAG719:
multu $4, $4
lui $2, 8
lh $1, 0($4)
mtlo $1
TAG720:
sll $3, $1, 12
bne $3, $3, TAG721
lw $3, 0($1)
beq $1, $1, TAG721
TAG721:
lbu $3, 0($3)
sltiu $3, $3, 0
sw $3, 0($3)
multu $3, $3
TAG722:
sb $3, 0($3)
multu $3, $3
mflo $2
bgtz $3, TAG723
TAG723:
or $3, $2, $2
lui $2, 12
mtlo $2
mthi $2
TAG724:
sllv $2, $2, $2
beq $2, $2, TAG725
sll $0, $0, 0
mtlo $2
TAG725:
lui $1, 11
bltz $1, TAG726
sll $0, $0, 0
mtlo $2
TAG726:
sll $0, $0, 0
lui $1, 12
srlv $3, $1, $1
bgez $3, TAG727
TAG727:
addiu $1, $3, 9
mthi $1
bne $3, $1, TAG728
sll $0, $0, 0
TAG728:
lui $4, 12
sll $0, $0, 0
blez $4, TAG729
lui $4, 1
TAG729:
mtlo $4
lui $3, 13
beq $4, $3, TAG730
sll $0, $0, 0
TAG730:
sll $0, $0, 0
div $4, $3
sll $0, $0, 0
multu $3, $3
TAG731:
lui $1, 1
divu $1, $3
srl $2, $3, 8
lui $1, 7
TAG732:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
mflo $4
TAG733:
mthi $4
beq $4, $4, TAG734
multu $4, $4
sh $4, 0($4)
TAG734:
mthi $4
beq $4, $4, TAG735
multu $4, $4
bltz $4, TAG735
TAG735:
sb $4, 0($4)
bne $4, $4, TAG736
slti $4, $4, 14
lui $4, 8
TAG736:
xori $3, $4, 4
div $3, $3
lui $4, 10
sll $0, $0, 0
TAG737:
srl $3, $4, 13
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG738
TAG738:
slt $2, $4, $4
multu $2, $2
xor $4, $2, $2
multu $2, $2
TAG739:
mtlo $4
mfhi $2
mfhi $4
beq $2, $2, TAG740
TAG740:
mthi $4
lb $4, 0($4)
sltu $2, $4, $4
lui $2, 6
TAG741:
mtlo $2
xori $1, $2, 1
sll $0, $0, 0
addiu $4, $2, 4
TAG742:
mthi $4
lui $1, 14
lui $1, 11
div $4, $1
TAG743:
beq $1, $1, TAG744
sltu $1, $1, $1
mflo $4
multu $1, $4
TAG744:
mflo $4
mult $4, $4
beq $4, $4, TAG745
lbu $2, 0($4)
TAG745:
mflo $4
mfhi $2
sh $2, 0($2)
bltz $4, TAG746
TAG746:
lui $3, 3
subu $3, $2, $3
lw $3, 0($2)
multu $3, $2
TAG747:
mflo $1
beq $3, $3, TAG748
sh $1, 0($3)
mtlo $3
TAG748:
mtlo $1
mult $1, $1
bne $1, $1, TAG749
mtlo $1
TAG749:
mthi $1
srav $2, $1, $1
mtlo $1
mflo $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop