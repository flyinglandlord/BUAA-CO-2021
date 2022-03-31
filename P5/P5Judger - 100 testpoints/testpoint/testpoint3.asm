ori $1, $0, 9
ori $2, $0, 14
ori $3, $0, 6
ori $4, $0, 5
sw $4, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $3, 12($0)
sw $2, 16($0)
sw $2, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $4, 32($0)
sw $1, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $1, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $1, 124($0)
sh $2, 0($2)
div $2, $2
lui $1, 7
mthi $2
TAG1:
mfhi $3
mthi $1
divu $1, $3
subu $4, $1, $3
TAG2:
mflo $2
lui $3, 6
sll $0, $0, 0
divu $3, $2
TAG3:
bne $1, $1, TAG4
xor $4, $1, $1
bltz $1, TAG4
lbu $4, 0($4)
TAG4:
mult $4, $4
slt $2, $4, $4
lui $4, 15
sll $0, $0, 0
TAG5:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
mfhi $1
TAG6:
mthi $1
mthi $1
mflo $4
beq $4, $1, TAG7
TAG7:
lui $1, 3
beq $4, $4, TAG8
and $2, $4, $4
bne $4, $2, TAG8
TAG8:
sb $2, 0($2)
bne $2, $2, TAG9
mthi $2
blez $2, TAG9
TAG9:
mflo $2
mthi $2
beq $2, $2, TAG10
subu $3, $2, $2
TAG10:
mfhi $3
div $3, $3
lui $3, 0
multu $3, $3
TAG11:
sb $3, 0($3)
mflo $1
mflo $4
mthi $4
TAG12:
blez $4, TAG13
lw $1, 0($4)
mtlo $4
subu $2, $4, $4
TAG13:
lui $3, 7
mflo $3
sltu $3, $3, $3
sh $2, 0($3)
TAG14:
sb $3, 0($3)
mthi $3
bne $3, $3, TAG15
multu $3, $3
TAG15:
mthi $3
mult $3, $3
beq $3, $3, TAG16
mfhi $2
TAG16:
bgtz $2, TAG17
sll $2, $2, 13
sw $2, 0($2)
bgez $2, TAG17
TAG17:
lui $3, 4
sll $1, $3, 13
sll $3, $1, 15
lui $1, 15
TAG18:
sll $0, $0, 0
srav $2, $1, $1
mthi $1
slt $3, $2, $1
TAG19:
mflo $1
addiu $4, $3, 4
lui $2, 14
lui $4, 3
TAG20:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
and $3, $1, $1
TAG21:
sh $3, 0($3)
and $1, $3, $3
srav $1, $3, $3
addiu $4, $1, 6
TAG22:
srav $1, $4, $4
srlv $2, $1, $1
sh $4, 0($4)
mflo $2
TAG23:
mflo $1
div $1, $1
multu $2, $2
sll $0, $0, 0
TAG24:
beq $1, $1, TAG25
sll $0, $0, 0
bgez $1, TAG25
addiu $1, $1, 10
TAG25:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $1
lui $4, 11
TAG26:
bne $4, $4, TAG27
div $4, $4
beq $4, $4, TAG27
sll $0, $0, 0
TAG27:
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
TAG28:
bne $1, $1, TAG29
mflo $4
mtlo $4
multu $4, $1
TAG29:
lui $2, 6
bne $4, $2, TAG30
sb $4, 0($4)
srlv $4, $2, $4
TAG30:
srlv $1, $4, $4
mthi $1
bne $1, $4, TAG31
addiu $4, $4, 3
TAG31:
lui $1, 4
sll $0, $0, 0
mflo $2
mult $2, $2
TAG32:
mfhi $3
mthi $2
mflo $3
bne $3, $3, TAG33
TAG33:
xor $4, $3, $3
sltu $3, $4, $4
sw $4, 0($4)
multu $4, $4
TAG34:
bgez $3, TAG35
lui $2, 12
lui $1, 3
sltiu $1, $3, 5
TAG35:
mult $1, $1
sll $0, $0, 0
multu $1, $1
lui $3, 0
TAG36:
mult $3, $3
lbu $4, 0($3)
srl $1, $3, 7
mtlo $4
TAG37:
sra $3, $1, 6
mfhi $2
bltz $3, TAG38
mfhi $2
TAG38:
bgtz $2, TAG39
sb $2, 0($2)
lui $2, 1
lui $2, 10
TAG39:
sll $0, $0, 0
multu $3, $3
lb $3, 0($3)
mult $3, $3
TAG40:
mtlo $3
mtlo $3
mult $3, $3
lh $3, 0($3)
TAG41:
sh $3, 0($3)
lui $4, 11
multu $3, $3
subu $4, $3, $4
TAG42:
sll $2, $4, 11
mflo $3
lui $4, 4
ori $4, $4, 13
TAG43:
lui $2, 12
sll $0, $0, 0
beq $4, $2, TAG44
mtlo $2
TAG44:
mtlo $2
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG45:
mfhi $2
lui $4, 14
lui $2, 13
mfhi $4
TAG46:
slti $2, $4, 15
mthi $4
bgez $2, TAG47
sltiu $2, $4, 1
TAG47:
mthi $2
sb $2, 0($2)
beq $2, $2, TAG48
lui $4, 1
TAG48:
beq $4, $4, TAG49
mthi $4
lui $4, 8
mtlo $4
TAG49:
sll $0, $0, 0
div $4, $4
ori $3, $4, 7
bltz $4, TAG50
TAG50:
sltiu $1, $3, 9
sll $0, $0, 0
addi $2, $1, 3
divu $1, $3
TAG51:
lbu $4, 0($2)
bgez $4, TAG52
lui $4, 13
nor $1, $4, $2
TAG52:
multu $1, $1
blez $1, TAG53
sh $1, 0($1)
lui $3, 2
TAG53:
blez $3, TAG54
lui $3, 5
sll $0, $0, 0
bne $3, $3, TAG54
TAG54:
divu $3, $3
lui $4, 4
lui $1, 5
subu $1, $4, $1
TAG55:
sll $0, $0, 0
bltz $4, TAG56
sll $0, $0, 0
mthi $4
TAG56:
bgtz $4, TAG57
mtlo $4
mflo $4
sltiu $2, $4, 5
TAG57:
xori $4, $2, 3
mult $2, $4
sltiu $4, $2, 6
sb $4, 0($4)
TAG58:
nor $2, $4, $4
mtlo $4
lh $2, 2($2)
mflo $1
TAG59:
lb $4, 0($1)
sb $4, 0($1)
beq $4, $4, TAG60
mflo $1
TAG60:
mflo $3
sb $3, 0($3)
lui $3, 1
bgez $3, TAG61
TAG61:
sll $0, $0, 0
slt $4, $3, $3
blez $4, TAG62
sltu $4, $3, $3
TAG62:
lui $2, 13
beq $2, $2, TAG63
mult $4, $4
bne $2, $4, TAG63
TAG63:
sll $0, $0, 0
sub $3, $2, $4
sll $0, $0, 0
mfhi $4
TAG64:
mflo $4
lw $3, 0($4)
bltz $3, TAG65
andi $4, $4, 11
TAG65:
bne $4, $4, TAG66
lh $3, 0($4)
mthi $4
sub $2, $3, $4
TAG66:
sll $0, $0, 0
bgez $2, TAG67
sh $2, -256($3)
sb $3, 0($2)
TAG67:
mthi $3
mtlo $3
bgtz $3, TAG68
addiu $1, $3, 10
TAG68:
lui $1, 10
lui $2, 7
addiu $4, $1, 3
lui $4, 2
TAG69:
srl $2, $4, 1
beq $2, $2, TAG70
sll $0, $0, 0
lui $1, 9
TAG70:
srl $1, $1, 1
blez $1, TAG71
lui $3, 0
srlv $1, $1, $3
TAG71:
lui $2, 4
mtlo $2
mthi $2
div $2, $2
TAG72:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG73
TAG73:
lui $1, 5
multu $1, $1
srl $4, $1, 1
mfhi $2
TAG74:
slti $2, $2, 5
mfhi $1
sub $1, $2, $2
bne $1, $1, TAG75
TAG75:
sw $1, 0($1)
addu $4, $1, $1
sll $2, $1, 0
bgtz $2, TAG76
TAG76:
addi $3, $2, 14
bne $3, $3, TAG77
mult $3, $3
sh $3, 0($3)
TAG77:
lhu $1, 0($3)
sh $3, 0($1)
lh $4, 0($3)
lhu $3, 0($1)
TAG78:
mthi $3
mflo $4
addu $3, $3, $3
blez $4, TAG79
TAG79:
lui $3, 13
sra $3, $3, 0
mtlo $3
bne $3, $3, TAG80
TAG80:
mult $3, $3
or $4, $3, $3
lui $1, 15
beq $1, $1, TAG81
TAG81:
lui $3, 4
blez $3, TAG82
sll $0, $0, 0
lui $3, 7
TAG82:
mult $3, $3
div $3, $3
sll $0, $0, 0
mult $3, $2
TAG83:
blez $2, TAG84
lw $4, 0($2)
div $4, $4
srav $1, $2, $4
TAG84:
mflo $2
subu $3, $1, $1
sb $2, 0($3)
sll $0, $0, 0
TAG85:
add $1, $3, $3
mflo $3
beq $3, $3, TAG86
sltiu $4, $3, 1
TAG86:
subu $3, $4, $4
div $4, $4
sltu $2, $3, $3
lbu $2, 0($4)
TAG87:
sb $2, 0($2)
slti $1, $2, 14
multu $1, $1
beq $2, $1, TAG88
TAG88:
mfhi $4
multu $1, $4
lui $4, 10
mfhi $4
TAG89:
sll $3, $4, 0
mfhi $1
addiu $1, $3, 12
beq $3, $1, TAG90
TAG90:
div $1, $1
mthi $1
mthi $1
bltz $1, TAG91
TAG91:
sb $1, 0($1)
bne $1, $1, TAG92
addiu $1, $1, 12
lbu $2, 0($1)
TAG92:
mult $2, $2
lbu $4, 0($2)
sb $4, 0($2)
mflo $3
TAG93:
sb $3, 0($3)
mflo $1
sb $3, 0($1)
sb $1, 0($3)
TAG94:
lb $4, 0($1)
mfhi $3
sb $4, 0($4)
blez $1, TAG95
TAG95:
lhu $1, 0($3)
multu $3, $3
lh $3, 0($3)
sltiu $4, $1, 7
TAG96:
multu $4, $4
beq $4, $4, TAG97
sb $4, 0($4)
mfhi $4
TAG97:
sb $4, 0($4)
bgez $4, TAG98
sra $1, $4, 3
bne $1, $1, TAG98
TAG98:
mthi $1
mthi $1
lw $3, 0($1)
bgtz $1, TAG99
TAG99:
slti $1, $3, 3
andi $3, $3, 3
lbu $1, 0($3)
addi $1, $1, 7
TAG100:
lui $3, 0
mflo $2
addu $3, $1, $2
sllv $2, $3, $1
TAG101:
lui $2, 12
mthi $2
bgez $2, TAG102
slt $4, $2, $2
TAG102:
lbu $2, 0($4)
mflo $3
lui $2, 4
bne $3, $3, TAG103
TAG103:
mfhi $4
addiu $1, $4, 0
sll $0, $0, 0
sll $0, $0, 0
TAG104:
lui $2, 2
lui $3, 9
sll $0, $0, 0
mflo $1
TAG105:
sll $2, $1, 15
sll $0, $0, 0
sll $0, $0, 0
sltiu $3, $1, 11
TAG106:
beq $3, $3, TAG107
mflo $2
mtlo $2
mflo $2
TAG107:
bne $2, $2, TAG108
lb $3, 0($2)
srlv $2, $3, $2
sb $2, 0($3)
TAG108:
lw $1, 0($2)
mfhi $1
sll $0, $0, 0
lw $3, 0($2)
TAG109:
multu $3, $3
xori $3, $3, 15
srlv $2, $3, $3
mfhi $2
TAG110:
beq $2, $2, TAG111
addiu $4, $2, 12
xori $4, $4, 0
mthi $4
TAG111:
srl $2, $4, 14
sll $3, $4, 14
mtlo $3
lhu $3, 0($2)
TAG112:
mtlo $3
bgtz $3, TAG113
lh $2, 0($3)
mfhi $1
TAG113:
mflo $4
multu $4, $4
mtlo $1
bgez $4, TAG114
TAG114:
mfhi $2
mthi $4
bltz $2, TAG115
lbu $1, 0($4)
TAG115:
sh $1, 0($1)
lw $1, 0($1)
beq $1, $1, TAG116
sh $1, 0($1)
TAG116:
mflo $2
sub $3, $2, $2
bltz $3, TAG117
mflo $3
TAG117:
mflo $2
mfhi $2
lui $3, 2
mfhi $4
TAG118:
mthi $4
bne $4, $4, TAG119
srlv $3, $4, $4
xor $4, $3, $4
TAG119:
mtlo $4
mtlo $4
blez $4, TAG120
slti $1, $4, 7
TAG120:
andi $1, $1, 1
sb $1, 0($1)
subu $4, $1, $1
div $1, $1
TAG121:
sh $4, 0($4)
mthi $4
sb $4, 0($4)
bgtz $4, TAG122
TAG122:
multu $4, $4
lui $1, 14
sltiu $2, $1, 5
beq $1, $4, TAG123
TAG123:
mflo $2
xori $1, $2, 15
multu $2, $2
lh $4, 0($2)
TAG124:
mthi $4
sb $4, 0($4)
srl $3, $4, 13
lui $1, 12
TAG125:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
TAG126:
bne $3, $3, TAG127
lui $1, 15
lui $4, 1
sb $1, 0($3)
TAG127:
sll $0, $0, 0
mflo $2
bgez $2, TAG128
mflo $2
TAG128:
srlv $4, $2, $2
mtlo $4
bgtz $2, TAG129
lbu $1, 0($4)
TAG129:
mtlo $1
multu $1, $1
addi $1, $1, 5
div $1, $1
TAG130:
sb $1, 0($1)
lbu $4, 0($1)
sb $1, 0($4)
addiu $2, $4, 11
TAG131:
lui $2, 3
addu $1, $2, $2
sra $2, $2, 1
divu $2, $1
TAG132:
sll $0, $0, 0
addiu $2, $2, 8
slt $4, $2, $2
mtlo $2
TAG133:
mthi $4
bne $4, $4, TAG134
lui $4, 13
xori $3, $4, 13
TAG134:
beq $3, $3, TAG135
lui $2, 5
beq $2, $2, TAG135
lhu $2, 0($3)
TAG135:
lui $4, 0
lui $3, 12
nor $3, $3, $2
sll $0, $0, 0
TAG136:
sll $0, $0, 0
sllv $2, $2, $2
multu $2, $2
divu $2, $2
TAG137:
mult $2, $2
sll $0, $0, 0
slti $3, $2, 14
sra $4, $3, 12
TAG138:
lui $4, 8
xori $1, $4, 13
sll $0, $0, 0
addiu $2, $4, 6
TAG139:
mfhi $2
bne $2, $2, TAG140
lb $1, 0($2)
beq $1, $2, TAG140
TAG140:
subu $4, $1, $1
mthi $1
bne $1, $4, TAG141
mult $4, $4
TAG141:
mflo $2
sltu $2, $2, $2
multu $2, $2
bne $2, $4, TAG142
TAG142:
sh $2, 0($2)
mtlo $2
lbu $1, 0($2)
sh $2, 0($2)
TAG143:
mthi $1
multu $1, $1
sltu $2, $1, $1
beq $1, $1, TAG144
TAG144:
lui $1, 0
sh $2, 0($2)
sllv $2, $1, $1
mflo $3
TAG145:
blez $3, TAG146
and $3, $3, $3
mfhi $3
mfhi $4
TAG146:
bgtz $4, TAG147
sll $1, $4, 1
srlv $2, $4, $1
sllv $4, $1, $2
TAG147:
lw $1, 0($4)
srl $1, $4, 12
sb $4, 0($4)
srl $2, $4, 9
TAG148:
srav $3, $2, $2
sb $3, 0($3)
multu $2, $2
lui $3, 13
TAG149:
sll $0, $0, 0
sll $0, $0, 0
sltu $2, $3, $3
sll $0, $0, 0
TAG150:
lui $3, 8
sll $0, $0, 0
mthi $1
mfhi $2
TAG151:
sw $2, 0($2)
bne $2, $2, TAG152
multu $2, $2
mult $2, $2
TAG152:
bgtz $2, TAG153
srav $3, $2, $2
sb $3, 0($2)
mthi $2
TAG153:
mfhi $3
beq $3, $3, TAG154
lui $2, 6
and $3, $3, $2
TAG154:
lui $4, 13
sll $0, $0, 0
sltu $2, $3, $3
lh $4, 0($3)
TAG155:
sb $4, 0($4)
sh $4, 0($4)
sh $4, 0($4)
lui $2, 11
TAG156:
sll $0, $0, 0
lb $3, 0($4)
slti $2, $3, 10
bne $2, $3, TAG157
TAG157:
lb $1, 0($2)
beq $1, $1, TAG158
mtlo $1
srlv $1, $1, $2
TAG158:
mfhi $2
lui $1, 3
lui $2, 15
sll $0, $0, 0
TAG159:
lui $3, 4
bgtz $1, TAG160
sltiu $1, $3, 6
lui $4, 15
TAG160:
sw $4, 0($4)
sllv $1, $4, $4
sll $1, $4, 1
multu $4, $1
TAG161:
lh $4, 0($1)
mflo $2
beq $4, $4, TAG162
lw $4, 0($1)
TAG162:
lb $1, 0($4)
mtlo $1
beq $4, $1, TAG163
multu $1, $1
TAG163:
multu $1, $1
lui $3, 9
bne $1, $1, TAG164
mult $1, $3
TAG164:
bltz $3, TAG165
srlv $2, $3, $3
mtlo $2
mult $3, $3
TAG165:
lui $4, 12
ori $2, $2, 2
bne $2, $2, TAG166
mthi $4
TAG166:
beq $2, $2, TAG167
lui $3, 11
beq $2, $3, TAG167
slti $2, $3, 5
TAG167:
addu $2, $2, $2
mult $2, $2
sll $0, $0, 0
mthi $2
TAG168:
beq $4, $4, TAG169
mthi $4
mfhi $1
bltz $1, TAG169
TAG169:
mtlo $1
multu $1, $1
sra $2, $1, 4
mthi $2
TAG170:
mthi $2
bltz $2, TAG171
nor $3, $2, $2
mfhi $4
TAG171:
bgtz $4, TAG172
lh $4, 0($4)
mfhi $1
multu $4, $1
TAG172:
bgtz $1, TAG173
sw $1, 0($1)
and $2, $1, $1
lb $3, 0($1)
TAG173:
mfhi $1
bltz $1, TAG174
andi $3, $1, 4
sb $3, 0($3)
TAG174:
slt $4, $3, $3
multu $4, $4
sb $4, 0($4)
bne $4, $4, TAG175
TAG175:
mfhi $1
sh $4, 0($4)
multu $4, $1
sw $4, 0($1)
TAG176:
addiu $3, $1, 12
sw $3, 0($3)
multu $1, $1
sll $4, $1, 15
TAG177:
andi $3, $4, 9
beq $4, $4, TAG178
mtlo $3
bne $3, $3, TAG178
TAG178:
sll $1, $3, 1
bgez $3, TAG179
sb $3, 0($1)
bne $1, $1, TAG179
TAG179:
addu $2, $1, $1
lui $1, 8
multu $2, $2
blez $1, TAG180
TAG180:
sll $0, $0, 0
multu $1, $1
mflo $4
bne $4, $4, TAG181
TAG181:
lui $1, 15
sh $4, 0($4)
blez $1, TAG182
lui $1, 7
TAG182:
lui $3, 11
addu $2, $1, $1
lui $4, 7
mthi $4
TAG183:
lui $1, 4
mflo $3
beq $4, $1, TAG184
mfhi $2
TAG184:
multu $2, $2
and $2, $2, $2
divu $2, $2
mflo $4
TAG185:
lbu $1, 0($4)
sw $4, 0($1)
mfhi $3
mult $3, $3
TAG186:
mflo $2
bgtz $3, TAG187
lui $1, 10
lw $4, 0($3)
TAG187:
slti $3, $4, 9
mthi $3
bne $3, $4, TAG188
mtlo $3
TAG188:
lui $4, 11
mflo $1
lui $2, 2
sll $0, $0, 0
TAG189:
lb $4, 0($1)
lui $1, 3
addu $1, $4, $1
andi $1, $1, 13
TAG190:
lhu $3, 0($1)
mtlo $1
lh $1, 0($1)
sb $1, 0($1)
TAG191:
mfhi $3
mult $1, $1
mtlo $1
mfhi $2
TAG192:
sb $2, 0($2)
bltz $2, TAG193
addi $4, $2, 10
beq $2, $4, TAG193
TAG193:
sb $4, 0($4)
addiu $2, $4, 15
beq $2, $2, TAG194
lui $2, 7
TAG194:
bne $2, $2, TAG195
sll $0, $0, 0
mfhi $4
nor $2, $2, $2
TAG195:
lui $4, 6
mult $4, $4
lui $4, 6
mthi $4
TAG196:
mfhi $2
lui $1, 4
mthi $2
srlv $3, $1, $4
TAG197:
mflo $4
multu $3, $4
addiu $1, $3, 0
lui $4, 10
TAG198:
bgez $4, TAG199
lui $1, 7
mult $4, $4
mfhi $4
TAG199:
sll $0, $0, 0
slti $3, $4, 12
bltz $4, TAG200
lui $4, 1
TAG200:
sra $4, $4, 10
sw $4, 0($4)
slti $4, $4, 5
mult $4, $4
TAG201:
slti $1, $4, 10
sb $4, 0($4)
sb $1, 0($4)
multu $1, $4
TAG202:
mfhi $3
mfhi $2
sw $3, 0($2)
mfhi $2
TAG203:
srav $3, $2, $2
lb $4, 0($2)
addi $1, $2, 15
sb $3, 0($3)
TAG204:
multu $1, $1
mult $1, $1
bltz $1, TAG205
sb $1, 0($1)
TAG205:
bne $1, $1, TAG206
sllv $3, $1, $1
ori $2, $1, 4
beq $1, $2, TAG206
TAG206:
lb $2, 0($2)
ori $3, $2, 9
subu $4, $3, $2
sra $4, $2, 8
TAG207:
sh $4, 0($4)
blez $4, TAG208
lhu $4, 0($4)
blez $4, TAG208
TAG208:
lui $1, 4
bne $1, $1, TAG209
div $4, $1
multu $1, $1
TAG209:
bltz $1, TAG210
sll $0, $0, 0
bne $1, $1, TAG210
addu $3, $1, $1
TAG210:
lui $4, 12
mthi $3
bgtz $3, TAG211
sll $0, $0, 0
TAG211:
div $4, $4
or $4, $4, $4
sll $0, $0, 0
mthi $4
TAG212:
nor $2, $4, $4
mflo $2
lb $1, 0($2)
lui $1, 1
TAG213:
mthi $1
sll $0, $0, 0
slt $1, $1, $3
mtlo $1
TAG214:
div $1, $1
mult $1, $1
slt $4, $1, $1
mtlo $1
TAG215:
or $1, $4, $4
blez $1, TAG216
sw $1, 0($1)
lui $3, 4
TAG216:
mthi $3
blez $3, TAG217
mtlo $3
sll $0, $0, 0
TAG217:
bgtz $2, TAG218
and $1, $2, $2
bgtz $1, TAG218
sw $1, 0($1)
TAG218:
bgez $1, TAG219
lbu $2, 0($1)
bne $2, $2, TAG219
sllv $4, $1, $2
TAG219:
sltiu $3, $4, 12
lh $3, 0($4)
lb $2, 0($3)
lh $3, 0($3)
TAG220:
sltu $3, $3, $3
bne $3, $3, TAG221
mtlo $3
lui $4, 6
TAG221:
mflo $4
lw $2, 0($4)
sb $4, 0($2)
sb $4, 0($4)
TAG222:
lhu $2, 0($2)
beq $2, $2, TAG223
lui $3, 3
bgez $2, TAG223
TAG223:
sll $0, $0, 0
mtlo $3
lb $4, 0($2)
mflo $3
TAG224:
or $1, $3, $3
blez $1, TAG225
lui $1, 6
sll $3, $1, 12
TAG225:
sll $0, $0, 0
beq $2, $3, TAG226
andi $1, $2, 4
mthi $2
TAG226:
mthi $1
lb $2, 0($1)
addiu $3, $2, 0
mthi $2
TAG227:
lui $3, 9
sll $0, $0, 0
sll $0, $0, 0
divu $3, $3
TAG228:
sltu $2, $4, $4
lui $1, 6
multu $1, $2
mtlo $1
TAG229:
multu $1, $1
blez $1, TAG230
mflo $4
mult $1, $4
TAG230:
mtlo $4
blez $4, TAG231
mflo $4
sll $4, $4, 5
TAG231:
sb $4, 0($4)
beq $4, $4, TAG232
lh $2, 0($4)
lhu $3, 0($4)
TAG232:
sll $0, $0, 0
divu $2, $3
lui $2, 15
slt $2, $2, $3
TAG233:
xori $3, $2, 4
multu $2, $2
mthi $2
addu $4, $2, $3
TAG234:
mfhi $2
lui $4, 6
mult $4, $2
xori $2, $4, 2
TAG235:
lui $4, 0
blez $4, TAG236
sll $4, $4, 13
bltz $4, TAG236
TAG236:
sb $4, 0($4)
and $4, $4, $4
lui $2, 1
sw $4, 0($4)
TAG237:
mtlo $2
bne $2, $2, TAG238
sll $0, $0, 0
lui $2, 0
TAG238:
mthi $2
beq $2, $2, TAG239
sb $2, 0($2)
sb $2, 0($2)
TAG239:
mult $2, $2
multu $2, $2
ori $1, $2, 10
mthi $1
TAG240:
bne $1, $1, TAG241
addu $1, $1, $1
bne $1, $1, TAG241
and $1, $1, $1
TAG241:
lbu $3, 0($1)
lbu $1, 0($3)
lw $3, 0($1)
mthi $3
TAG242:
sub $3, $3, $3
sltiu $4, $3, 14
lbu $3, 0($4)
bne $4, $3, TAG243
TAG243:
lh $2, 0($3)
sb $3, 0($3)
lbu $3, 0($3)
sh $3, 0($3)
TAG244:
sw $3, 0($3)
srlv $2, $3, $3
andi $1, $2, 2
bne $3, $3, TAG245
TAG245:
lui $3, 4
sll $0, $0, 0
bgez $3, TAG246
subu $1, $3, $1
TAG246:
lui $4, 9
sra $3, $1, 8
bne $4, $1, TAG247
sll $0, $0, 0
TAG247:
sll $0, $0, 0
ori $4, $4, 10
blez $4, TAG248
mfhi $3
TAG248:
mflo $1
xori $2, $3, 5
bgtz $1, TAG249
multu $2, $2
TAG249:
sb $2, 0($2)
bgez $2, TAG250
lui $2, 11
nor $4, $2, $2
TAG250:
sll $0, $0, 0
sll $0, $0, 0
addu $1, $4, $4
subu $3, $4, $4
TAG251:
srlv $2, $3, $3
mflo $3
mfhi $1
beq $3, $1, TAG252
TAG252:
lw $4, 0($1)
lui $1, 3
slt $2, $4, $1
slti $4, $2, 1
TAG253:
bgez $4, TAG254
mflo $3
beq $3, $3, TAG254
lui $4, 14
TAG254:
bgtz $4, TAG255
lhu $4, 0($4)
bgez $4, TAG255
sw $4, 0($4)
TAG255:
lui $3, 14
mult $3, $4
blez $3, TAG256
sll $0, $0, 0
TAG256:
mfhi $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG257:
bgez $2, TAG258
ori $1, $2, 8
slti $1, $1, 13
bgez $1, TAG258
TAG258:
mtlo $1
beq $1, $1, TAG259
lb $4, 0($1)
srav $1, $1, $1
TAG259:
sb $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG260
sll $1, $1, 11
TAG260:
mflo $2
bgtz $1, TAG261
sb $1, 0($2)
lui $2, 11
TAG261:
lb $2, 0($2)
mflo $4
mtlo $2
mult $4, $2
TAG262:
srlv $1, $4, $4
addu $2, $4, $1
mflo $1
srlv $1, $1, $1
TAG263:
multu $1, $1
xori $2, $1, 15
bltz $1, TAG264
sllv $1, $1, $1
TAG264:
mfhi $3
sh $1, 0($1)
lui $4, 14
blez $1, TAG265
TAG265:
sll $0, $0, 0
bgtz $3, TAG266
mtlo $4
bltz $3, TAG266
TAG266:
srlv $4, $3, $3
and $4, $3, $3
mtlo $4
sb $4, 0($3)
TAG267:
addiu $4, $4, 6
lb $3, 0($4)
multu $3, $3
sh $4, 0($3)
TAG268:
bne $3, $3, TAG269
addiu $2, $3, 10
lui $3, 10
mtlo $3
TAG269:
sltiu $1, $3, 0
lui $2, 13
bgtz $1, TAG270
mtlo $3
TAG270:
mthi $2
sll $0, $0, 0
sltiu $3, $2, 14
slt $2, $3, $3
TAG271:
lui $1, 15
and $1, $2, $2
sb $1, 0($1)
addiu $1, $2, 12
TAG272:
beq $1, $1, TAG273
lbu $1, 0($1)
sltiu $3, $1, 2
addu $2, $1, $3
TAG273:
lb $2, 0($2)
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG274:
bgtz $1, TAG275
lh $2, 0($1)
xor $4, $2, $1
addi $4, $1, 15
TAG275:
sltu $3, $4, $4
lh $4, 0($3)
addu $2, $4, $4
bltz $3, TAG276
TAG276:
lh $2, 0($2)
and $2, $2, $2
sh $2, 0($2)
sw $2, 0($2)
TAG277:
mflo $2
lui $1, 9
sll $0, $0, 0
sltu $4, $1, $3
TAG278:
bne $4, $4, TAG279
multu $4, $4
bgtz $4, TAG279
xori $3, $4, 13
TAG279:
bgez $3, TAG280
xori $2, $3, 12
sra $4, $3, 1
multu $3, $3
TAG280:
bgez $4, TAG281
mult $4, $4
mflo $2
mflo $1
TAG281:
bgez $1, TAG282
addu $3, $1, $1
sh $3, 0($1)
lui $3, 5
TAG282:
srlv $1, $3, $3
mthi $3
sll $0, $0, 0
mfhi $2
TAG283:
bne $2, $2, TAG284
mthi $2
mthi $2
mtlo $2
TAG284:
sll $0, $0, 0
subu $2, $2, $2
mflo $2
sll $0, $0, 0
TAG285:
mfhi $4
lui $2, 7
mfhi $4
addiu $4, $4, 9
TAG286:
sll $0, $0, 0
lui $4, 14
sll $0, $0, 0
mflo $3
TAG287:
divu $3, $3
beq $3, $3, TAG288
mthi $3
bne $3, $3, TAG288
TAG288:
sll $0, $0, 0
mthi $3
mflo $1
srav $3, $1, $1
TAG289:
xor $3, $3, $3
sllv $3, $3, $3
mthi $3
lb $4, 0($3)
TAG290:
sw $4, 0($4)
bgtz $4, TAG291
mtlo $4
ori $4, $4, 8
TAG291:
sltu $1, $4, $4
beq $1, $1, TAG292
sb $1, 0($1)
lb $2, 0($1)
TAG292:
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG293:
mult $4, $4
blez $4, TAG294
andi $3, $4, 10
sb $4, 0($4)
TAG294:
bgtz $3, TAG295
lb $2, 0($3)
mthi $3
sltu $1, $2, $2
TAG295:
addi $2, $1, 3
xori $2, $1, 13
blez $2, TAG296
mthi $1
TAG296:
lbu $1, 0($2)
subu $4, $2, $1
mthi $2
lh $1, 0($1)
TAG297:
mflo $2
multu $2, $2
mthi $1
lb $1, 0($2)
TAG298:
mtlo $1
beq $1, $1, TAG299
lw $1, 0($1)
bltz $1, TAG299
TAG299:
mflo $3
sh $1, 0($1)
mfhi $2
mflo $4
TAG300:
sra $2, $4, 0
mthi $2
bltz $2, TAG301
sh $2, 0($2)
TAG301:
bltz $2, TAG302
lui $1, 13
mthi $1
multu $1, $1
TAG302:
beq $1, $1, TAG303
subu $4, $1, $1
xor $2, $1, $4
srlv $3, $1, $2
TAG303:
ori $4, $3, 15
addiu $1, $4, 1
lbu $4, 0($4)
mthi $4
TAG304:
lui $1, 11
mfhi $3
xor $3, $1, $1
lui $3, 15
TAG305:
mtlo $3
div $3, $3
lui $4, 0
lui $2, 3
TAG306:
sll $0, $0, 0
beq $2, $2, TAG307
mtlo $2
lhu $2, 0($2)
TAG307:
lui $2, 14
sll $0, $0, 0
mfhi $3
bgtz $3, TAG308
TAG308:
mfhi $2
srlv $1, $2, $2
mult $3, $2
lw $2, 0($3)
TAG309:
mtlo $2
mult $2, $2
mtlo $2
bgtz $2, TAG310
TAG310:
mtlo $2
sh $2, 0($2)
ori $3, $2, 13
lhu $2, 0($2)
TAG311:
mtlo $2
bgtz $2, TAG312
mtlo $2
mthi $2
TAG312:
bgtz $2, TAG313
mfhi $4
mthi $4
addi $3, $4, 5
TAG313:
bne $3, $3, TAG314
xor $4, $3, $3
lui $2, 3
bgtz $3, TAG314
TAG314:
mflo $1
sll $0, $0, 0
lui $3, 10
lui $3, 5
TAG315:
beq $3, $3, TAG316
slti $3, $3, 3
lui $1, 6
mfhi $2
TAG316:
beq $2, $2, TAG317
mtlo $2
mult $2, $2
lui $3, 10
TAG317:
ori $3, $3, 7
bne $3, $3, TAG318
lui $1, 6
multu $3, $1
TAG318:
beq $1, $1, TAG319
slti $3, $1, 0
blez $3, TAG319
mtlo $1
TAG319:
addi $3, $3, 8
blez $3, TAG320
lw $2, 0($3)
mtlo $3
TAG320:
lui $4, 10
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG321:
lui $1, 10
beq $2, $1, TAG322
andi $3, $1, 14
sh $2, 0($2)
TAG322:
lw $1, 0($3)
multu $1, $1
lhu $3, 0($3)
blez $3, TAG323
TAG323:
mult $3, $3
beq $3, $3, TAG324
mfhi $3
sw $3, 0($3)
TAG324:
bne $3, $3, TAG325
mult $3, $3
lui $2, 1
slti $4, $2, 13
TAG325:
mflo $1
mfhi $3
beq $3, $4, TAG326
slti $2, $4, 13
TAG326:
sb $2, 0($2)
lui $3, 3
multu $3, $2
sb $2, 0($2)
TAG327:
sll $0, $0, 0
bgtz $3, TAG328
sll $0, $0, 0
bne $3, $3, TAG328
TAG328:
srl $2, $3, 12
sll $0, $0, 0
mfhi $4
sh $1, 0($4)
TAG329:
beq $4, $4, TAG330
mfhi $4
sh $4, 0($4)
sh $4, 0($4)
TAG330:
mult $4, $4
lui $1, 14
mthi $1
mthi $4
TAG331:
mthi $1
srav $3, $1, $1
bne $3, $3, TAG332
mthi $1
TAG332:
sll $0, $0, 0
lui $1, 12
sll $0, $0, 0
addiu $1, $1, 5
TAG333:
div $1, $1
mflo $2
sll $0, $0, 0
div $2, $2
TAG334:
beq $2, $2, TAG335
sb $2, 0($2)
mfhi $1
bltz $2, TAG335
TAG335:
sltiu $1, $1, 12
srav $1, $1, $1
lui $3, 9
bne $1, $1, TAG336
TAG336:
mflo $4
mfhi $4
bne $4, $4, TAG337
mtlo $3
TAG337:
beq $4, $4, TAG338
mult $4, $4
sra $3, $4, 8
mtlo $3
TAG338:
mthi $3
bltz $3, TAG339
sra $2, $3, 10
mfhi $4
TAG339:
sll $0, $0, 0
srl $3, $4, 9
sllv $2, $4, $4
sw $4, -1152($3)
TAG340:
subu $2, $2, $2
mtlo $2
bltz $2, TAG341
lui $2, 12
TAG341:
sll $0, $0, 0
lui $4, 14
blez $2, TAG342
multu $4, $4
TAG342:
bgtz $4, TAG343
sll $0, $0, 0
mtlo $4
lhu $1, 0($4)
TAG343:
srlv $1, $1, $1
multu $1, $1
bltz $1, TAG344
mflo $4
TAG344:
addi $2, $4, 6
mtlo $2
srlv $2, $4, $2
addi $1, $2, 11
TAG345:
lbu $4, 0($1)
xori $2, $1, 2
mfhi $4
lb $2, 0($4)
TAG346:
multu $2, $2
mfhi $1
lui $3, 15
bgez $1, TAG347
TAG347:
sll $0, $0, 0
sltu $3, $3, $3
mflo $2
sb $2, 0($3)
TAG348:
lui $2, 12
sll $0, $0, 0
sll $2, $2, 12
bne $2, $2, TAG349
TAG349:
mfhi $4
mtlo $2
mthi $2
mtlo $4
TAG350:
beq $4, $4, TAG351
mflo $2
mtlo $2
mtlo $2
TAG351:
subu $2, $2, $2
bgtz $2, TAG352
srl $1, $2, 12
multu $1, $2
TAG352:
mflo $4
lui $1, 11
mthi $4
mfhi $2
TAG353:
mthi $2
bne $2, $2, TAG354
lui $2, 5
andi $2, $2, 8
TAG354:
sw $2, 0($2)
srlv $2, $2, $2
mfhi $2
lui $4, 8
TAG355:
mfhi $3
bne $4, $3, TAG356
mflo $1
mtlo $1
TAG356:
mtlo $1
mtlo $1
lhu $1, 0($1)
mthi $1
TAG357:
mthi $1
multu $1, $1
multu $1, $1
add $4, $1, $1
TAG358:
sltu $2, $4, $4
mfhi $4
lb $2, 0($2)
sb $2, 0($2)
TAG359:
bgez $2, TAG360
lbu $2, 0($2)
mflo $1
xori $1, $1, 9
TAG360:
lw $1, 0($1)
mfhi $2
mfhi $4
sh $2, 0($2)
TAG361:
multu $4, $4
ori $4, $4, 13
lbu $2, 0($4)
sb $2, 0($2)
TAG362:
mflo $3
lb $4, 0($2)
mthi $4
bne $2, $3, TAG363
TAG363:
sw $4, 0($4)
beq $4, $4, TAG364
mult $4, $4
mthi $4
TAG364:
srl $3, $4, 12
sw $4, 0($3)
bne $4, $4, TAG365
mult $3, $3
TAG365:
mult $3, $3
mflo $1
lui $2, 10
lui $2, 15
TAG366:
mthi $2
lui $1, 14
sll $0, $0, 0
subu $1, $2, $2
TAG367:
mult $1, $1
add $3, $1, $1
lui $1, 14
mult $1, $1
TAG368:
sll $0, $0, 0
mthi $1
bgez $1, TAG369
div $1, $1
TAG369:
mfhi $1
multu $1, $1
bne $1, $1, TAG370
sb $1, 0($1)
TAG370:
multu $1, $1
bgez $1, TAG371
mfhi $1
bne $1, $1, TAG371
TAG371:
lui $4, 1
bne $1, $1, TAG372
sw $1, 0($1)
bltz $1, TAG372
TAG372:
mtlo $4
andi $2, $4, 5
divu $2, $4
mflo $1
TAG373:
sw $1, 0($1)
lui $1, 12
mthi $1
slti $1, $1, 2
TAG374:
beq $1, $1, TAG375
addi $4, $1, 12
beq $4, $4, TAG375
lhu $2, 0($4)
TAG375:
mult $2, $2
beq $2, $2, TAG376
addu $4, $2, $2
div $4, $2
TAG376:
mflo $3
bne $4, $4, TAG377
lui $3, 8
xor $4, $3, $3
TAG377:
mflo $2
subu $2, $4, $4
beq $2, $4, TAG378
lui $2, 11
TAG378:
bgtz $2, TAG379
mthi $2
lw $1, 0($2)
bgez $1, TAG379
TAG379:
lui $4, 1
mflo $2
blez $4, TAG380
mtlo $2
TAG380:
sw $2, 0($2)
add $2, $2, $2
sw $2, 0($2)
mfhi $4
TAG381:
mthi $4
bgtz $4, TAG382
sll $0, $0, 0
mfhi $3
TAG382:
bgez $3, TAG383
lui $1, 14
mtlo $1
sw $1, 0($1)
TAG383:
sll $0, $0, 0
mthi $1
sltu $3, $1, $3
multu $1, $3
TAG384:
multu $3, $3
sltiu $1, $3, 0
multu $3, $1
mfhi $4
TAG385:
mtlo $4
bgtz $4, TAG386
addu $1, $4, $4
lhu $4, 0($4)
TAG386:
lui $1, 3
blez $1, TAG387
mtlo $4
sh $4, 0($4)
TAG387:
bgtz $1, TAG388
mfhi $2
div $2, $2
div $2, $1
TAG388:
mthi $2
lhu $2, 0($2)
sh $2, 0($2)
multu $2, $2
TAG389:
bltz $2, TAG390
lb $3, 0($2)
and $2, $2, $2
multu $2, $3
TAG390:
mtlo $2
mtlo $2
lw $4, 0($2)
mflo $4
TAG391:
lh $1, 0($4)
mthi $1
mthi $4
mtlo $4
TAG392:
blez $1, TAG393
lb $3, 0($1)
lh $1, 0($3)
bgtz $1, TAG393
TAG393:
multu $1, $1
mtlo $1
lh $1, 0($1)
mfhi $2
TAG394:
blez $2, TAG395
mflo $2
sb $2, 0($2)
blez $2, TAG395
TAG395:
mthi $2
lui $2, 5
sll $0, $0, 0
multu $2, $2
TAG396:
or $3, $3, $3
multu $3, $3
mfhi $4
mtlo $3
TAG397:
sh $4, 0($4)
mflo $2
sll $4, $4, 7
sb $4, 0($2)
TAG398:
lui $3, 4
sltu $2, $3, $4
sb $2, 0($2)
sb $4, 0($2)
TAG399:
bltz $2, TAG400
lbu $3, 0($2)
beq $3, $3, TAG400
mult $2, $3
TAG400:
sb $3, 0($3)
lb $4, 0($3)
lh $1, 0($4)
lh $2, 0($3)
TAG401:
sw $2, 0($2)
lb $1, 0($2)
sltiu $1, $1, 10
addu $2, $1, $2
TAG402:
beq $2, $2, TAG403
and $2, $2, $2
xor $4, $2, $2
lui $4, 10
TAG403:
sltiu $2, $4, 15
ori $2, $4, 13
lb $4, 0($2)
sb $4, 0($2)
TAG404:
multu $4, $4
srl $2, $4, 15
mthi $4
addi $3, $4, 6
TAG405:
mfhi $3
sllv $4, $3, $3
lui $2, 11
bltz $3, TAG406
TAG406:
mthi $2
andi $3, $2, 0
subu $1, $3, $2
beq $3, $3, TAG407
TAG407:
srl $4, $1, 10
sll $0, $0, 0
xori $2, $1, 8
sll $0, $0, 0
TAG408:
bltz $2, TAG409
mfhi $1
mflo $3
multu $1, $2
TAG409:
lui $3, 13
sll $0, $0, 0
srav $4, $3, $3
sll $0, $0, 0
TAG410:
mtlo $4
addu $4, $4, $4
andi $4, $4, 9
mtlo $4
TAG411:
mtlo $4
sltiu $3, $4, 13
subu $3, $3, $3
mthi $3
TAG412:
sb $3, 0($3)
lui $1, 12
bltz $1, TAG413
sb $1, 0($3)
TAG413:
beq $1, $1, TAG414
slt $2, $1, $1
mtlo $2
sw $2, 0($1)
TAG414:
and $1, $2, $2
mult $1, $1
multu $1, $2
mult $1, $1
TAG415:
multu $1, $1
mult $1, $1
mflo $3
mtlo $1
TAG416:
addu $2, $3, $3
sltu $1, $3, $2
bne $2, $2, TAG417
lui $2, 10
TAG417:
sll $0, $0, 0
xor $3, $2, $2
divu $2, $2
sll $0, $0, 0
TAG418:
lui $1, 11
sh $1, 0($3)
sb $1, 0($3)
sll $0, $0, 0
TAG419:
mtlo $1
sllv $3, $1, $1
beq $1, $3, TAG420
lui $1, 11
TAG420:
multu $1, $1
lui $1, 7
mtlo $1
beq $1, $1, TAG421
TAG421:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 7
divu $4, $1
TAG422:
mflo $4
lui $3, 6
beq $4, $3, TAG423
sll $0, $0, 0
TAG423:
sll $0, $0, 0
srl $3, $2, 4
sltiu $1, $3, 10
multu $3, $3
TAG424:
mtlo $1
slti $3, $1, 2
bltz $1, TAG425
slti $3, $3, 4
TAG425:
mthi $3
mfhi $3
div $3, $3
mtlo $3
TAG426:
slti $2, $3, 12
lui $2, 8
divu $2, $3
bltz $2, TAG427
TAG427:
slt $1, $2, $2
mflo $4
mult $4, $1
srl $3, $4, 10
TAG428:
sh $3, -512($3)
srav $3, $3, $3
slt $2, $3, $3
srl $4, $2, 7
TAG429:
mult $4, $4
mult $4, $4
beq $4, $4, TAG430
lui $4, 12
TAG430:
sra $1, $4, 0
mthi $1
mflo $3
sb $3, 0($3)
TAG431:
beq $3, $3, TAG432
xori $3, $3, 12
bgtz $3, TAG432
sh $3, 0($3)
TAG432:
lh $3, 0($3)
mflo $4
bgtz $3, TAG433
lb $1, 0($3)
TAG433:
lhu $3, 0($1)
bne $3, $1, TAG434
sh $3, 0($3)
sh $1, 0($3)
TAG434:
lhu $1, 0($3)
mtlo $3
lui $2, 0
lui $4, 15
TAG435:
bltz $4, TAG436
sll $0, $0, 0
mtlo $4
beq $4, $4, TAG436
TAG436:
sll $0, $0, 0
srlv $3, $4, $4
mtlo $3
sll $0, $0, 0
TAG437:
srav $1, $1, $1
lui $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG438:
lui $2, 4
lui $2, 8
bltz $3, TAG439
mflo $1
TAG439:
bne $1, $1, TAG440
mthi $1
bgtz $1, TAG440
xor $4, $1, $1
TAG440:
lbu $3, 0($4)
blez $4, TAG441
srav $3, $4, $4
lui $1, 1
TAG441:
bltz $1, TAG442
sll $0, $0, 0
addiu $4, $1, 12
bltz $1, TAG442
TAG442:
mthi $4
bgez $4, TAG443
mult $4, $4
mtlo $4
TAG443:
bgez $4, TAG444
mfhi $4
bne $4, $4, TAG444
xori $1, $4, 11
TAG444:
multu $1, $1
sll $0, $0, 0
bne $1, $1, TAG445
mfhi $4
TAG445:
sll $1, $4, 9
lui $4, 8
div $4, $4
blez $4, TAG446
TAG446:
mtlo $4
sll $0, $0, 0
srl $2, $4, 6
srl $1, $4, 1
TAG447:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
bltz $1, TAG448
TAG448:
mult $1, $1
lui $2, 6
sh $1, 0($1)
mfhi $2
TAG449:
mtlo $2
lui $2, 8
sll $0, $0, 0
subu $1, $2, $2
TAG450:
mtlo $1
lhu $4, 0($1)
bne $4, $4, TAG451
lui $3, 11
TAG451:
mtlo $3
mthi $3
slt $2, $3, $3
sll $0, $0, 0
TAG452:
mult $2, $2
sw $2, 0($2)
mult $2, $2
multu $2, $2
TAG453:
mfhi $1
and $1, $1, $1
multu $1, $2
lh $3, 0($2)
TAG454:
lw $1, 0($3)
lui $3, 12
beq $1, $3, TAG455
sll $0, $0, 0
TAG455:
mult $3, $3
mflo $1
multu $1, $3
mflo $1
TAG456:
andi $3, $1, 8
mult $1, $1
mflo $1
blez $3, TAG457
TAG457:
multu $1, $1
lw $1, 0($1)
blez $1, TAG458
mult $1, $1
TAG458:
mthi $1
blez $1, TAG459
multu $1, $1
mtlo $1
TAG459:
sw $1, 0($1)
multu $1, $1
multu $1, $1
lui $1, 2
TAG460:
sll $0, $0, 0
bgez $1, TAG461
mult $4, $4
addiu $4, $1, 13
TAG461:
lh $1, 0($4)
mult $1, $1
mthi $4
xori $3, $4, 15
TAG462:
beq $3, $3, TAG463
mtlo $3
bltz $3, TAG463
mthi $3
TAG463:
lb $1, 0($3)
div $1, $1
mflo $3
mfhi $3
TAG464:
bne $3, $3, TAG465
mthi $3
lb $3, 0($3)
sw $3, 0($3)
TAG465:
blez $3, TAG466
ori $4, $3, 13
mthi $4
mfhi $4
TAG466:
lui $1, 8
addu $2, $1, $4
nor $4, $1, $1
mtlo $1
TAG467:
mthi $4
mtlo $4
bgtz $4, TAG468
sll $0, $0, 0
TAG468:
sltu $4, $3, $3
sra $1, $3, 15
mtlo $4
mthi $3
TAG469:
blez $1, TAG470
lb $2, 0($1)
lui $1, 9
mflo $4
TAG470:
sra $2, $4, 11
multu $4, $2
mflo $3
lui $1, 5
TAG471:
mfhi $4
mfhi $1
lui $4, 4
srav $3, $4, $4
TAG472:
mfhi $4
mtlo $4
sll $0, $0, 0
div $4, $3
TAG473:
mthi $4
lw $4, 0($4)
bne $4, $4, TAG474
mtlo $4
TAG474:
sh $4, 0($4)
bltz $4, TAG475
and $1, $4, $4
sll $1, $4, 9
TAG475:
beq $1, $1, TAG476
sb $1, 0($1)
mthi $1
bgez $1, TAG476
TAG476:
lhu $1, 0($1)
bltz $1, TAG477
mfhi $3
lw $1, 0($3)
TAG477:
multu $1, $1
lui $1, 5
beq $1, $1, TAG478
slti $3, $1, 13
TAG478:
blez $3, TAG479
mult $3, $3
bne $3, $3, TAG479
sb $3, 0($3)
TAG479:
lui $4, 7
sll $0, $0, 0
bgtz $4, TAG480
sltu $1, $4, $3
TAG480:
ori $3, $1, 6
blez $1, TAG481
addiu $4, $1, 3
mthi $3
TAG481:
mult $4, $4
lui $4, 5
sll $0, $0, 0
bltz $3, TAG482
TAG482:
mthi $3
nor $4, $3, $3
lw $3, 7($4)
lui $2, 6
TAG483:
or $2, $2, $2
nor $1, $2, $2
bne $1, $2, TAG484
lui $3, 6
TAG484:
lui $4, 15
bgtz $4, TAG485
sll $0, $0, 0
lui $1, 5
TAG485:
bltz $1, TAG486
mtlo $1
sw $1, 0($1)
divu $1, $1
TAG486:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
bltz $1, TAG487
TAG487:
div $1, $1
div $1, $1
mfhi $4
mfhi $2
TAG488:
beq $2, $2, TAG489
nor $2, $2, $2
mflo $4
lui $1, 11
TAG489:
slti $2, $1, 9
mflo $2
mflo $3
mfhi $1
TAG490:
bne $1, $1, TAG491
sh $1, 0($1)
bgtz $1, TAG491
mthi $1
TAG491:
sll $4, $1, 0
lui $1, 13
mthi $1
mflo $2
TAG492:
beq $2, $2, TAG493
slt $2, $2, $2
bne $2, $2, TAG493
lhu $1, 0($2)
TAG493:
mtlo $1
lui $4, 2
sll $0, $0, 0
lh $2, 0($2)
TAG494:
sltiu $4, $2, 12
bne $2, $2, TAG495
sb $4, 0($4)
bgtz $2, TAG495
TAG495:
mthi $4
mflo $4
bne $4, $4, TAG496
slti $3, $4, 12
TAG496:
lbu $3, 0($3)
mtlo $3
mult $3, $3
lui $1, 8
TAG497:
sll $0, $0, 0
lh $1, 0($3)
sltu $4, $1, $1
srl $1, $1, 8
TAG498:
mflo $4
lui $2, 15
sltiu $1, $4, 8
sb $1, 0($1)
TAG499:
mthi $1
mflo $2
lbu $3, 0($1)
sll $1, $3, 7
TAG500:
bne $1, $1, TAG501
sb $1, 0($1)
lui $2, 3
divu $1, $1
TAG501:
ori $2, $2, 3
addiu $2, $2, 14
sll $0, $0, 0
multu $2, $2
TAG502:
or $1, $2, $2
lui $1, 4
sll $0, $0, 0
bgez $1, TAG503
TAG503:
lui $3, 8
addiu $2, $3, 3
sll $0, $0, 0
bltz $1, TAG504
TAG504:
mthi $2
addiu $1, $2, 6
mfhi $2
mthi $2
TAG505:
subu $4, $2, $2
sh $4, 0($4)
sll $0, $0, 0
lh $2, 0($4)
TAG506:
mthi $2
mtlo $2
bgtz $2, TAG507
lui $1, 11
TAG507:
bgtz $1, TAG508
lui $4, 2
lui $1, 14
lbu $3, 0($4)
TAG508:
sll $0, $0, 0
bltz $3, TAG509
lui $2, 11
sll $0, $0, 0
TAG509:
sllv $3, $1, $1
mflo $2
blez $1, TAG510
mfhi $1
TAG510:
mflo $1
lh $4, 0($1)
lbu $3, 0($1)
sub $3, $4, $1
TAG511:
bne $3, $3, TAG512
multu $3, $3
bgtz $3, TAG512
mult $3, $3
TAG512:
sltiu $4, $3, 6
mult $4, $3
sra $4, $4, 6
lw $1, 0($4)
TAG513:
lui $2, 13
lbu $3, 0($1)
bne $2, $2, TAG514
ori $3, $1, 0
TAG514:
multu $3, $3
sh $3, 0($3)
bne $3, $3, TAG515
lb $3, 0($3)
TAG515:
lh $4, 0($3)
sb $4, 0($4)
lui $2, 4
blez $4, TAG516
TAG516:
divu $2, $2
mtlo $2
lui $3, 3
addu $2, $3, $2
TAG517:
srlv $4, $2, $2
beq $4, $2, TAG518
addiu $4, $2, 5
sw $4, 0($2)
TAG518:
sll $1, $4, 7
mthi $1
nor $3, $4, $1
sll $0, $0, 0
TAG519:
sll $0, $0, 0
div $3, $1
sll $0, $0, 0
bltz $1, TAG520
TAG520:
divu $1, $1
mult $1, $1
mflo $3
or $1, $3, $3
TAG521:
multu $1, $1
beq $1, $1, TAG522
ori $3, $1, 11
lb $1, 0($3)
TAG522:
beq $1, $1, TAG523
sll $0, $0, 0
divu $4, $4
mthi $4
TAG523:
beq $4, $4, TAG524
mflo $4
addi $2, $4, 13
multu $4, $4
TAG524:
srav $3, $2, $2
bgtz $3, TAG525
mflo $4
lb $4, 0($3)
TAG525:
divu $4, $4
slt $3, $4, $4
mfhi $4
bltz $4, TAG526
TAG526:
andi $4, $4, 6
mthi $4
beq $4, $4, TAG527
mult $4, $4
TAG527:
lh $2, 0($4)
mflo $1
lb $2, 0($1)
lw $4, 0($1)
TAG528:
bgez $4, TAG529
mfhi $1
beq $1, $4, TAG529
lui $2, 10
TAG529:
sh $2, 0($2)
mthi $2
bgtz $2, TAG530
sltu $3, $2, $2
TAG530:
mfhi $4
nor $2, $3, $4
sw $2, 1($2)
bltz $4, TAG531
TAG531:
lui $4, 15
mfhi $2
andi $2, $2, 12
mult $2, $4
TAG532:
bgez $2, TAG533
mthi $2
lui $3, 2
bltz $2, TAG533
TAG533:
mthi $3
mflo $4
sh $4, 0($3)
mult $3, $3
TAG534:
lh $2, 0($4)
mflo $4
lw $2, 0($4)
lui $2, 2
TAG535:
beq $2, $2, TAG536
xor $1, $2, $2
lh $1, 0($2)
lhu $1, 0($1)
TAG536:
mtlo $1
mult $1, $1
bne $1, $1, TAG537
or $3, $1, $1
TAG537:
xor $3, $3, $3
mflo $4
mtlo $4
bne $3, $3, TAG538
TAG538:
multu $4, $4
sub $2, $4, $4
lw $4, 0($4)
sltu $4, $2, $2
TAG539:
beq $4, $4, TAG540
lui $4, 12
mthi $4
lbu $1, 0($4)
TAG540:
sltiu $1, $1, 7
sb $1, 0($1)
multu $1, $1
mtlo $1
TAG541:
div $1, $1
sb $1, 0($1)
addu $2, $1, $1
srav $4, $1, $2
TAG542:
bne $4, $4, TAG543
sllv $1, $4, $4
mtlo $4
mtlo $4
TAG543:
and $4, $1, $1
sra $1, $1, 5
mthi $4
lui $1, 10
TAG544:
sra $3, $1, 14
bltz $3, TAG545
sh $1, 0($3)
beq $1, $3, TAG545
TAG545:
mthi $3
lhu $3, 0($3)
blez $3, TAG546
lb $2, 0($3)
TAG546:
sb $2, 0($2)
sw $2, 0($2)
mflo $2
beq $2, $2, TAG547
TAG547:
multu $2, $2
subu $3, $2, $2
bne $2, $2, TAG548
addu $1, $2, $2
TAG548:
mthi $1
srlv $4, $1, $1
beq $4, $1, TAG549
mflo $3
TAG549:
mfhi $1
sh $3, 0($1)
srl $1, $3, 0
xori $2, $3, 5
TAG550:
lui $1, 8
mtlo $1
sll $0, $0, 0
xori $2, $2, 11
TAG551:
lui $2, 3
lui $1, 1
ori $2, $2, 2
lui $1, 15
TAG552:
sll $0, $0, 0
divu $1, $1
addiu $1, $2, 6
mflo $4
TAG553:
beq $4, $4, TAG554
ori $3, $4, 9
lui $3, 15
addu $1, $3, $3
TAG554:
divu $1, $1
sll $0, $0, 0
mult $1, $1
mthi $1
TAG555:
sb $4, 0($4)
mthi $4
xori $2, $4, 2
bgez $2, TAG556
TAG556:
srl $1, $2, 2
bne $2, $1, TAG557
lui $4, 1
beq $1, $4, TAG557
TAG557:
mthi $4
sll $0, $0, 0
bgez $4, TAG558
slti $2, $4, 14
TAG558:
blez $2, TAG559
lb $2, 0($2)
lui $2, 2
mtlo $2
TAG559:
mthi $2
nor $2, $2, $2
mtlo $2
mult $2, $2
TAG560:
lui $3, 6
divu $3, $3
mthi $2
mthi $2
TAG561:
mthi $3
bltz $3, TAG562
sll $0, $0, 0
sll $0, $0, 0
TAG562:
bne $2, $2, TAG563
xori $3, $2, 1
srav $4, $2, $3
sra $4, $3, 2
TAG563:
lui $1, 15
ori $1, $4, 11
bgtz $1, TAG564
lui $3, 12
TAG564:
sll $0, $0, 0
bne $3, $3, TAG565
mfhi $2
xor $1, $3, $3
TAG565:
lbu $4, 0($1)
and $3, $1, $1
lbu $2, 0($1)
bltz $1, TAG566
TAG566:
lui $4, 6
bgez $2, TAG567
lui $3, 11
blez $2, TAG567
TAG567:
addu $4, $3, $3
beq $4, $4, TAG568
slt $2, $4, $4
bltz $4, TAG568
TAG568:
srl $4, $2, 13
lui $3, 11
mult $4, $2
bgez $4, TAG569
TAG569:
multu $3, $3
mtlo $3
divu $3, $3
bltz $3, TAG570
TAG570:
sll $0, $0, 0
lui $3, 12
sll $0, $0, 0
mflo $3
TAG571:
xori $2, $3, 12
mflo $2
mtlo $2
andi $1, $2, 15
TAG572:
sll $2, $1, 9
sltiu $4, $1, 2
divu $4, $2
lbu $2, 0($4)
TAG573:
mthi $2
bne $2, $2, TAG574
sb $2, 0($2)
lui $1, 9
TAG574:
addiu $1, $1, 5
mtlo $1
multu $1, $1
lui $1, 11
TAG575:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG576
and $3, $1, $4
TAG576:
mfhi $4
mtlo $3
mtlo $4
blez $4, TAG577
TAG577:
srav $4, $4, $4
lh $3, 0($4)
or $4, $4, $4
xor $2, $4, $4
TAG578:
sw $2, 0($2)
bltz $2, TAG579
mult $2, $2
or $1, $2, $2
TAG579:
lui $2, 9
mfhi $3
lui $4, 14
lui $2, 10
TAG580:
beq $2, $2, TAG581
sll $0, $0, 0
sltiu $3, $2, 11
multu $3, $2
TAG581:
mtlo $3
multu $3, $3
mthi $3
lui $1, 8
TAG582:
nor $2, $1, $1
srl $3, $2, 13
mult $1, $2
sll $0, $0, 0
TAG583:
lui $4, 11
divu $4, $4
sll $0, $0, 0
mflo $3
TAG584:
xori $2, $3, 4
mthi $2
mthi $2
sb $3, 0($2)
TAG585:
addu $3, $2, $2
lb $2, 0($2)
beq $2, $2, TAG586
sb $2, 0($2)
TAG586:
bne $2, $2, TAG587
lbu $3, 0($2)
nor $3, $2, $2
andi $1, $3, 1
TAG587:
sub $3, $1, $1
mfhi $3
lui $1, 0
beq $3, $1, TAG588
TAG588:
slt $2, $1, $1
lh $3, 0($1)
add $1, $1, $2
bgtz $1, TAG589
TAG589:
lui $4, 4
bne $4, $4, TAG590
slti $2, $1, 13
lui $3, 0
TAG590:
bne $3, $3, TAG591
lh $4, 0($3)
sh $4, 0($3)
sltiu $3, $4, 13
TAG591:
addiu $2, $3, 7
lb $4, 0($2)
sub $1, $2, $3
lw $3, 0($4)
TAG592:
mult $3, $3
bgtz $3, TAG593
multu $3, $3
slt $3, $3, $3
TAG593:
mult $3, $3
sh $3, -256($3)
mflo $3
multu $3, $3
TAG594:
sll $0, $0, 0
addu $1, $2, $3
sll $0, $0, 0
beq $1, $1, TAG595
TAG595:
subu $3, $1, $1
srav $4, $1, $3
beq $3, $3, TAG596
mult $4, $4
TAG596:
sll $0, $0, 0
beq $4, $4, TAG597
sb $4, 0($2)
sh $2, 0($2)
TAG597:
bgez $2, TAG598
lb $1, 0($2)
sb $1, 0($1)
sh $2, 0($2)
TAG598:
lui $1, 0
lh $3, 0($1)
mthi $1
lhu $2, 0($1)
TAG599:
sw $2, -256($2)
sltiu $2, $2, 15
lui $3, 4
mtlo $2
TAG600:
lui $2, 12
addu $1, $2, $3
xor $3, $1, $1
mflo $4
TAG601:
mthi $4
sw $4, 0($4)
and $2, $4, $4
beq $2, $4, TAG602
TAG602:
lhu $3, 0($2)
sll $2, $3, 12
bne $2, $2, TAG603
sh $3, 0($2)
TAG603:
blez $2, TAG604
mfhi $3
addu $4, $2, $3
or $1, $2, $2
TAG604:
sll $0, $0, 0
sub $3, $1, $2
lui $3, 14
mflo $1
TAG605:
beq $1, $1, TAG606
mflo $2
lui $4, 8
beq $4, $4, TAG606
TAG606:
sltiu $2, $4, 4
beq $2, $4, TAG607
sra $3, $4, 12
beq $2, $4, TAG607
TAG607:
andi $3, $3, 8
slti $1, $3, 8
sllv $2, $3, $1
mflo $3
TAG608:
add $4, $3, $3
mflo $1
addi $2, $4, 10
bgtz $1, TAG609
TAG609:
mthi $2
lui $3, 4
mthi $3
mfhi $3
TAG610:
divu $3, $3
blez $3, TAG611
mfhi $4
beq $4, $4, TAG611
TAG611:
lw $1, 0($4)
bgez $1, TAG612
mflo $2
bne $4, $4, TAG612
TAG612:
lbu $4, 0($2)
srl $3, $4, 1
bne $3, $3, TAG613
lw $4, 0($3)
TAG613:
lui $1, 13
bltz $1, TAG614
addu $1, $1, $1
sll $0, $0, 0
TAG614:
mflo $2
ori $2, $3, 13
lbu $3, 0($2)
lui $4, 11
TAG615:
mflo $3
sltiu $4, $4, 13
lui $3, 5
srl $3, $3, 9
TAG616:
sb $3, -640($3)
mflo $4
bltz $3, TAG617
divu $3, $4
TAG617:
lbu $2, 0($4)
beq $2, $2, TAG618
mtlo $2
mthi $4
TAG618:
multu $2, $2
lui $2, 9
beq $2, $2, TAG619
ori $4, $2, 5
TAG619:
mtlo $4
sll $0, $0, 0
lui $3, 4
divu $4, $4
TAG620:
sll $0, $0, 0
mflo $1
mthi $1
bgtz $3, TAG621
TAG621:
sb $1, 0($1)
addu $2, $1, $1
divu $1, $1
mthi $1
TAG622:
bne $2, $2, TAG623
sh $2, 0($2)
mthi $2
subu $1, $2, $2
TAG623:
beq $1, $1, TAG624
multu $1, $1
lhu $2, 0($1)
sw $1, 0($1)
TAG624:
srl $3, $2, 7
bne $2, $2, TAG625
slti $3, $3, 6
sb $3, 0($3)
TAG625:
slti $1, $3, 10
ori $1, $3, 3
lb $3, 0($1)
mthi $3
TAG626:
mfhi $3
bgez $3, TAG627
mthi $3
mthi $3
TAG627:
mthi $3
lb $3, 0($3)
mthi $3
srav $4, $3, $3
TAG628:
sll $0, $0, 0
slt $3, $4, $1
sll $4, $4, 11
div $1, $4
TAG629:
mthi $4
mfhi $1
sll $0, $0, 0
bgez $1, TAG630
TAG630:
mfhi $1
mflo $4
div $1, $1
sll $0, $0, 0
TAG631:
bne $4, $4, TAG632
mfhi $2
xori $1, $2, 9
xori $2, $1, 0
TAG632:
addiu $4, $2, 2
bgtz $2, TAG633
sb $2, 0($2)
srl $4, $2, 12
TAG633:
multu $4, $4
mflo $3
bgtz $4, TAG634
and $3, $4, $4
TAG634:
multu $3, $3
mflo $1
beq $3, $1, TAG635
mtlo $3
TAG635:
addiu $1, $1, 5
mflo $1
sltu $4, $1, $1
or $4, $1, $1
TAG636:
multu $4, $4
mfhi $1
ori $4, $4, 3
mtlo $4
TAG637:
mthi $4
mflo $3
lui $2, 12
beq $2, $3, TAG638
TAG638:
sll $0, $0, 0
mthi $2
blez $2, TAG639
lui $1, 14
TAG639:
sll $0, $0, 0
bne $1, $1, TAG640
sllv $3, $2, $2
bgez $2, TAG640
TAG640:
xori $1, $3, 15
multu $1, $1
lui $3, 3
sll $0, $0, 0
TAG641:
lui $1, 1
and $3, $1, $1
mtlo $3
sll $0, $0, 0
TAG642:
sllv $1, $1, $1
blez $1, TAG643
sll $0, $0, 0
addiu $1, $1, 0
TAG643:
addu $4, $1, $1
lui $3, 13
mfhi $3
divu $4, $3
TAG644:
lui $3, 9
beq $3, $3, TAG645
mtlo $3
add $4, $3, $3
TAG645:
addiu $4, $4, 0
nor $2, $4, $4
sll $0, $0, 0
bgtz $4, TAG646
TAG646:
mtlo $4
beq $4, $4, TAG647
mflo $2
mfhi $3
TAG647:
or $2, $3, $3
lui $2, 11
sll $0, $0, 0
sll $0, $0, 0
TAG648:
lui $1, 6
mflo $2
sll $0, $0, 0
mtlo $1
TAG649:
sll $0, $0, 0
div $3, $3
mtlo $3
mflo $4
TAG650:
mult $4, $4
bgez $4, TAG651
mtlo $4
beq $4, $4, TAG651
TAG651:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sra $2, $4, 8
TAG652:
sh $2, -2304($2)
or $2, $2, $2
mfhi $2
mfhi $1
TAG653:
mult $1, $1
bgtz $1, TAG654
ori $2, $1, 7
lui $2, 7
TAG654:
multu $2, $2
multu $2, $2
bgtz $2, TAG655
sb $2, 0($2)
TAG655:
bne $2, $2, TAG656
sb $2, 0($2)
divu $2, $2
bne $2, $2, TAG656
TAG656:
mflo $1
div $1, $2
mtlo $1
sb $1, 0($1)
TAG657:
lui $3, 6
mflo $1
mthi $1
sllv $1, $3, $1
TAG658:
slt $4, $1, $1
multu $4, $1
bgtz $4, TAG659
sltiu $2, $4, 14
TAG659:
xori $3, $2, 10
andi $3, $2, 1
blez $3, TAG660
mtlo $3
TAG660:
divu $3, $3
mtlo $3
lbu $1, 0($3)
sltu $4, $3, $3
TAG661:
lui $3, 5
sll $0, $0, 0
mflo $2
mflo $1
TAG662:
lui $2, 6
sb $1, 0($1)
mflo $3
srl $3, $2, 1
TAG663:
multu $3, $3
mfhi $1
sll $0, $0, 0
srlv $2, $3, $3
TAG664:
blez $2, TAG665
sll $0, $0, 0
bne $2, $1, TAG665
mult $1, $1
TAG665:
mtlo $1
lbu $3, 0($1)
lb $3, 0($1)
divu $3, $3
TAG666:
lbu $2, 0($3)
slti $2, $3, 11
lui $3, 14
blez $2, TAG667
TAG667:
subu $3, $3, $3
bne $3, $3, TAG668
mfhi $3
sw $3, 0($3)
TAG668:
bne $3, $3, TAG669
nor $1, $3, $3
sw $1, 1($1)
beq $3, $1, TAG669
TAG669:
lui $3, 14
sll $0, $0, 0
sw $4, 0($4)
blez $1, TAG670
TAG670:
lui $4, 6
mtlo $4
mfhi $4
bne $4, $4, TAG671
TAG671:
lui $1, 8
mult $1, $4
addu $1, $4, $4
bne $1, $1, TAG672
TAG672:
lui $3, 13
xori $3, $3, 9
bne $1, $3, TAG673
lb $1, 0($1)
TAG673:
lw $3, 0($1)
lui $3, 1
addiu $3, $1, 7
mflo $3
TAG674:
lbu $1, 0($3)
mfhi $1
sb $1, 0($1)
slti $2, $1, 2
TAG675:
lb $1, 0($2)
bgtz $2, TAG676
addiu $2, $1, 6
mtlo $2
TAG676:
bne $2, $2, TAG677
and $4, $2, $2
bgtz $2, TAG677
srlv $2, $4, $4
TAG677:
lui $1, 6
sll $0, $0, 0
subu $3, $1, $2
mtlo $3
TAG678:
or $2, $3, $3
sll $0, $0, 0
mflo $1
div $2, $2
TAG679:
lui $2, 5
multu $1, $2
or $2, $1, $2
lui $4, 14
TAG680:
mfhi $1
beq $4, $4, TAG681
srl $3, $4, 6
slti $3, $1, 10
TAG681:
lui $1, 4
sll $0, $0, 0
mflo $1
sh $1, 0($1)
TAG682:
xori $4, $1, 8
divu $4, $4
sra $2, $4, 12
lbu $3, 0($1)
TAG683:
sh $3, 0($3)
sw $3, 0($3)
beq $3, $3, TAG684
addu $1, $3, $3
TAG684:
lbu $2, 0($1)
bne $2, $2, TAG685
mthi $1
beq $1, $2, TAG685
TAG685:
lui $1, 11
sw $1, 0($2)
sllv $4, $2, $2
multu $1, $2
TAG686:
addiu $4, $4, 5
blez $4, TAG687
mfhi $3
lb $3, 0($3)
TAG687:
and $4, $3, $3
or $1, $3, $3
addiu $3, $3, 12
mflo $1
TAG688:
bgez $1, TAG689
slti $2, $1, 7
slt $4, $2, $2
bgtz $1, TAG689
TAG689:
addu $4, $4, $4
lhu $4, 0($4)
mtlo $4
mflo $3
TAG690:
beq $3, $3, TAG691
lb $2, 0($3)
sh $2, 0($3)
mthi $2
TAG691:
sw $2, 0($2)
sb $2, 0($2)
lui $3, 12
multu $3, $3
TAG692:
sllv $1, $3, $3
bne $1, $3, TAG693
addu $2, $3, $3
bne $2, $1, TAG693
TAG693:
slti $3, $2, 6
sll $0, $0, 0
nor $4, $3, $3
subu $2, $3, $4
TAG694:
addu $3, $2, $2
lui $3, 2
lui $3, 15
addiu $3, $3, 9
TAG695:
sll $0, $0, 0
bgez $3, TAG696
divu $3, $3
sw $3, 0($3)
TAG696:
sll $0, $0, 0
mfhi $2
bne $2, $2, TAG697
andi $1, $3, 11
TAG697:
lbu $4, 0($1)
div $4, $1
mflo $4
srav $4, $4, $4
TAG698:
add $3, $4, $4
xor $2, $4, $4
mflo $2
sltiu $4, $2, 8
TAG699:
multu $4, $4
sb $4, 0($4)
mtlo $4
nor $3, $4, $4
TAG700:
mthi $3
sh $3, 2($3)
beq $3, $3, TAG701
sw $3, 2($3)
TAG701:
sll $0, $0, 0
sltu $2, $3, $1
srav $3, $1, $1
beq $3, $1, TAG702
TAG702:
sltiu $1, $3, 4
lui $1, 0
lui $3, 8
multu $1, $1
TAG703:
mult $3, $3
sll $0, $0, 0
bne $3, $3, TAG704
sll $0, $0, 0
TAG704:
mfhi $1
lh $3, 0($1)
addiu $1, $1, 15
lb $4, 0($3)
TAG705:
sw $4, 0($4)
beq $4, $4, TAG706
lui $3, 11
sltu $3, $3, $4
TAG706:
sll $0, $0, 0
bne $3, $3, TAG707
lui $2, 14
srlv $4, $2, $3
TAG707:
mthi $4
bgtz $4, TAG708
mflo $2
sb $2, 0($2)
TAG708:
lui $4, 11
mfhi $4
beq $4, $2, TAG709
mthi $2
TAG709:
bne $4, $4, TAG710
mthi $4
div $4, $4
mfhi $2
TAG710:
mfhi $2
mthi $2
mflo $1
mult $1, $2
TAG711:
lbu $3, 0($1)
sb $1, -255($3)
sb $1, 0($1)
bne $1, $3, TAG712
TAG712:
mflo $1
lui $4, 11
mfhi $3
bltz $3, TAG713
TAG713:
slti $2, $3, 1
sltu $1, $2, $2
lui $1, 10
mtlo $3
TAG714:
sll $0, $0, 0
sw $3, 0($3)
mthi $3
beq $1, $3, TAG715
TAG715:
lui $1, 9
sll $0, $0, 0
mflo $2
ori $4, $3, 2
TAG716:
mfhi $2
sb $2, 0($4)
lbu $3, 0($4)
bltz $2, TAG717
TAG717:
subu $1, $3, $3
beq $3, $1, TAG718
sh $1, 0($1)
multu $3, $3
TAG718:
beq $1, $1, TAG719
lh $4, 0($1)
mtlo $1
lbu $1, 0($1)
TAG719:
bne $1, $1, TAG720
mflo $2
mfhi $1
lb $3, 0($1)
TAG720:
mtlo $3
mflo $3
lh $2, 0($3)
bgez $2, TAG721
TAG721:
sb $2, 0($2)
sb $2, 0($2)
or $1, $2, $2
lw $1, 0($2)
TAG722:
beq $1, $1, TAG723
lui $3, 15
mflo $4
add $3, $4, $3
TAG723:
mflo $3
sllv $4, $3, $3
mtlo $4
srav $3, $3, $4
TAG724:
srl $1, $3, 12
mthi $1
lui $4, 3
beq $1, $4, TAG725
TAG725:
multu $4, $4
divu $4, $4
addu $3, $4, $4
sll $0, $0, 0
TAG726:
multu $4, $4
lui $2, 5
bgtz $2, TAG727
mflo $1
TAG727:
bltz $1, TAG728
mtlo $1
and $1, $1, $1
sb $1, 0($1)
TAG728:
lui $4, 10
sll $0, $0, 0
div $3, $3
lw $2, 0($1)
TAG729:
lb $3, 0($2)
lui $2, 11
addiu $1, $2, 5
mflo $1
TAG730:
mfhi $2
beq $2, $1, TAG731
sll $4, $1, 6
lbu $3, 0($1)
TAG731:
multu $3, $3
bgez $3, TAG732
lui $1, 0
sll $1, $1, 4
TAG732:
lh $4, 0($1)
mult $1, $4
sh $1, 0($1)
mtlo $1
TAG733:
lbu $2, 0($4)
blez $2, TAG734
sw $4, 0($4)
bne $2, $2, TAG734
TAG734:
mfhi $4
slt $3, $2, $4
slti $4, $4, 10
beq $4, $3, TAG735
TAG735:
srl $1, $4, 2
beq $4, $1, TAG736
multu $1, $4
mthi $1
TAG736:
lbu $3, 0($1)
sh $1, 0($3)
sub $2, $3, $3
srlv $4, $1, $1
TAG737:
multu $4, $4
mtlo $4
bltz $4, TAG738
lui $4, 10
TAG738:
mtlo $4
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG739:
ori $3, $4, 8
multu $4, $3
blez $3, TAG740
slt $2, $4, $3
TAG740:
mthi $2
mflo $2
sllv $3, $2, $2
addu $1, $2, $3
TAG741:
mthi $1
bltz $1, TAG742
sll $0, $0, 0
sll $0, $0, 0
TAG742:
lui $4, 9
sll $0, $0, 0
bgtz $3, TAG743
sll $0, $0, 0
TAG743:
sra $4, $2, 9
sll $0, $0, 0
srlv $2, $2, $2
sll $0, $0, 0
TAG744:
mflo $1
bne $2, $1, TAG745
mflo $4
sll $0, $0, 0
TAG745:
beq $4, $4, TAG746
mflo $4
beq $4, $4, TAG746
sb $4, 0($4)
TAG746:
beq $4, $4, TAG747
lui $2, 15
lb $1, 0($4)
div $1, $2
TAG747:
slti $4, $1, 0
mflo $4
mthi $1
subu $2, $4, $4
TAG748:
beq $2, $2, TAG749
lb $2, 0($2)
mtlo $2
lui $2, 4
TAG749:
sh $2, 0($2)
bne $2, $2, TAG750
slt $4, $2, $2
sh $4, 0($4)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop