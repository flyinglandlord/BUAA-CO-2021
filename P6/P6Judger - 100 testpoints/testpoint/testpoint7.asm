ori $1, $0, 1
ori $2, $0, 6
ori $3, $0, 8
ori $4, $0, 5
sw $2, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $4, 32($0)
sw $4, 36($0)
sw $4, 40($0)
sw $3, 44($0)
sw $3, 48($0)
sw $1, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $3, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $4, 124($0)
mthi $2
subu $1, $2, $2
mtlo $1
sb $1, 0($2)
TAG1:
multu $1, $1
bne $1, $1, TAG2
multu $1, $1
sb $1, 0($1)
TAG2:
xor $4, $1, $1
sw $1, 0($1)
bne $1, $1, TAG3
srlv $2, $4, $4
TAG3:
lui $4, 6
sw $2, 0($2)
bgez $4, TAG4
lui $4, 1
TAG4:
bgtz $4, TAG5
div $4, $4
divu $4, $4
lui $1, 4
TAG5:
slt $1, $1, $1
mthi $1
mult $1, $1
multu $1, $1
TAG6:
mtlo $1
xori $1, $1, 0
subu $4, $1, $1
bne $1, $1, TAG7
TAG7:
mflo $1
lui $4, 3
addiu $2, $4, 13
mflo $2
TAG8:
bgtz $2, TAG9
mflo $4
lw $3, 0($4)
bltz $2, TAG9
TAG9:
sll $4, $3, 3
mthi $4
lui $2, 1
sh $3, 0($3)
TAG10:
addiu $2, $2, 1
lui $2, 8
lui $3, 4
sll $0, $0, 0
TAG11:
bne $3, $3, TAG12
lui $2, 6
lui $1, 0
lui $4, 13
TAG12:
multu $4, $4
sll $0, $0, 0
bne $2, $2, TAG13
sltiu $1, $4, 3
TAG13:
add $1, $1, $1
mflo $1
multu $1, $1
sb $1, 0($1)
TAG14:
mthi $1
andi $3, $1, 7
mtlo $1
bltz $1, TAG15
TAG15:
lui $2, 2
bltz $2, TAG16
sll $0, $0, 0
bgez $3, TAG16
TAG16:
mult $2, $2
bne $2, $2, TAG17
sllv $4, $2, $2
bltz $4, TAG17
TAG17:
sll $0, $0, 0
mtlo $4
bgez $4, TAG18
lui $1, 8
TAG18:
mfhi $1
lui $1, 3
mflo $1
beq $1, $1, TAG19
TAG19:
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
bltz $4, TAG20
TAG20:
srav $4, $4, $4
addu $2, $4, $4
nor $2, $4, $2
bgtz $2, TAG21
TAG21:
lui $4, 6
mtlo $2
mflo $2
bgtz $2, TAG22
TAG22:
mfhi $1
sllv $4, $1, $1
bgtz $2, TAG23
multu $1, $4
TAG23:
bgez $4, TAG24
multu $4, $4
mthi $4
sb $4, 0($4)
TAG24:
bne $4, $4, TAG25
lbu $4, 0($4)
lw $4, 0($4)
sb $4, 0($4)
TAG25:
multu $4, $4
sb $4, 0($4)
lb $1, 0($4)
mthi $4
TAG26:
lbu $1, 0($1)
multu $1, $1
mfhi $2
sw $1, 0($2)
TAG27:
mult $2, $2
mfhi $4
slt $4, $2, $4
slti $1, $4, 7
TAG28:
andi $2, $1, 1
sb $1, 0($2)
sll $3, $1, 12
andi $2, $2, 13
TAG29:
lb $3, 0($2)
lb $1, 0($3)
xor $3, $2, $2
lui $1, 15
TAG30:
lui $4, 0
mfhi $3
lui $1, 2
mflo $3
TAG31:
lh $1, 0($3)
bltz $1, TAG32
lui $2, 14
sllv $1, $1, $2
TAG32:
mfhi $1
beq $1, $1, TAG33
slti $3, $1, 1
lbu $4, 0($1)
TAG33:
bne $4, $4, TAG34
srlv $4, $4, $4
blez $4, TAG34
sh $4, 0($4)
TAG34:
bgtz $4, TAG35
sw $4, 0($4)
lh $2, 0($4)
sh $2, 0($2)
TAG35:
lbu $1, 0($2)
sltiu $3, $1, 9
blez $3, TAG36
srlv $4, $2, $1
TAG36:
bne $4, $4, TAG37
mthi $4
sltu $2, $4, $4
lb $3, 0($4)
TAG37:
subu $3, $3, $3
bltz $3, TAG38
andi $2, $3, 3
mult $3, $3
TAG38:
mthi $2
sub $2, $2, $2
mfhi $2
lui $3, 3
TAG39:
addu $3, $3, $3
multu $3, $3
mfhi $2
beq $2, $2, TAG40
TAG40:
srl $2, $2, 15
slt $1, $2, $2
lw $3, 0($1)
mthi $2
TAG41:
mfhi $3
mflo $3
sw $3, 0($3)
lui $1, 1
TAG42:
lui $4, 8
mtlo $1
sll $0, $0, 0
mflo $4
TAG43:
mflo $2
lui $1, 13
srlv $2, $1, $1
lui $4, 3
TAG44:
sll $0, $0, 0
slt $1, $1, $4
bne $1, $1, TAG45
mtlo $1
TAG45:
mflo $2
mfhi $1
addiu $1, $1, 15
mult $1, $1
TAG46:
div $1, $1
bltz $1, TAG47
mthi $1
mtlo $1
TAG47:
mult $1, $1
lui $1, 1
blez $1, TAG48
sll $0, $0, 0
TAG48:
sll $0, $0, 0
blez $3, TAG49
lh $1, 0($3)
lui $3, 9
TAG49:
multu $3, $3
srl $4, $3, 7
mthi $4
mfhi $2
TAG50:
srlv $2, $2, $2
mthi $2
lh $2, 0($2)
sw $2, 0($2)
TAG51:
mfhi $3
or $4, $2, $2
sra $1, $4, 11
sh $3, 0($3)
TAG52:
addi $3, $1, 12
sw $1, 0($3)
sb $1, 0($1)
subu $4, $1, $1
TAG53:
sra $3, $4, 8
lb $2, 0($4)
lui $4, 0
blez $4, TAG54
TAG54:
slt $3, $4, $4
blez $3, TAG55
mult $4, $4
lui $3, 8
TAG55:
mthi $3
beq $3, $3, TAG56
multu $3, $3
lb $1, 0($3)
TAG56:
sll $3, $1, 7
slt $4, $1, $3
multu $3, $1
add $1, $3, $4
TAG57:
beq $1, $1, TAG58
sb $1, 0($1)
and $4, $1, $1
lw $1, 0($1)
TAG58:
bne $1, $1, TAG59
mtlo $1
lhu $3, 0($1)
sw $3, 0($1)
TAG59:
mtlo $3
lui $3, 5
blez $3, TAG60
lui $4, 6
TAG60:
sll $0, $0, 0
mfhi $3
bne $3, $3, TAG61
mthi $3
TAG61:
mfhi $3
andi $3, $3, 0
lw $3, 0($3)
nor $4, $3, $3
TAG62:
multu $4, $4
beq $4, $4, TAG63
srl $4, $4, 11
mflo $3
TAG63:
add $2, $3, $3
sltiu $3, $3, 12
srl $1, $3, 4
nor $2, $3, $3
TAG64:
blez $2, TAG65
mfhi $1
div $1, $2
mfhi $1
TAG65:
sllv $3, $1, $1
slt $3, $1, $3
lui $3, 7
multu $3, $1
TAG66:
sll $0, $0, 0
bgtz $4, TAG67
andi $2, $4, 7
andi $2, $2, 2
TAG67:
sb $2, 0($2)
lb $1, 0($2)
beq $1, $2, TAG68
mthi $2
TAG68:
mthi $1
mult $1, $1
div $1, $1
sll $4, $1, 12
TAG69:
bltz $4, TAG70
sltu $2, $4, $4
mflo $3
multu $2, $2
TAG70:
nor $1, $3, $3
sra $2, $1, 12
lbu $4, 0($3)
lui $3, 9
TAG71:
mult $3, $3
sll $0, $0, 0
beq $3, $3, TAG72
sll $0, $0, 0
TAG72:
sll $0, $0, 0
slt $1, $4, $4
beq $1, $3, TAG73
sll $0, $0, 0
TAG73:
mfhi $2
sll $0, $0, 0
addu $3, $2, $3
div $2, $3
TAG74:
div $3, $3
srlv $2, $3, $3
sltiu $3, $3, 11
sb $3, 0($3)
TAG75:
bgez $3, TAG76
lbu $2, 0($3)
lui $2, 4
sw $2, 0($3)
TAG76:
beq $2, $2, TAG77
multu $2, $2
mflo $4
sw $2, 0($2)
TAG77:
bltz $4, TAG78
sb $4, 0($4)
mthi $4
multu $4, $4
TAG78:
beq $4, $4, TAG79
sb $4, 0($4)
mflo $4
lui $3, 14
TAG79:
beq $3, $3, TAG80
lui $2, 6
mtlo $2
lb $4, 0($2)
TAG80:
sb $4, 0($4)
multu $4, $4
sw $4, 0($4)
sb $4, 0($4)
TAG81:
mult $4, $4
lw $3, 0($4)
sb $3, 0($4)
blez $4, TAG82
TAG82:
multu $3, $3
lb $3, 0($3)
bgtz $3, TAG83
multu $3, $3
TAG83:
mult $3, $3
mflo $4
sh $3, 0($3)
multu $3, $3
TAG84:
mflo $2
sh $4, 0($4)
beq $4, $4, TAG85
lui $2, 13
TAG85:
sltu $4, $2, $2
multu $2, $4
addu $4, $4, $2
divu $4, $4
TAG86:
sll $0, $0, 0
addu $1, $4, $4
div $4, $4
lui $1, 3
TAG87:
sll $0, $0, 0
mtlo $1
divu $4, $4
sll $0, $0, 0
TAG88:
sll $0, $0, 0
bgez $3, TAG89
mflo $4
addiu $2, $4, 7
TAG89:
sll $0, $0, 0
slti $2, $1, 13
lui $4, 13
ori $1, $4, 6
TAG90:
mult $1, $1
sll $0, $0, 0
xori $4, $1, 7
beq $1, $1, TAG91
TAG91:
mthi $4
bne $4, $4, TAG92
sll $0, $0, 0
addiu $4, $4, 5
TAG92:
mfhi $3
sll $0, $0, 0
bltz $4, TAG93
sll $0, $0, 0
TAG93:
sll $0, $0, 0
lui $4, 6
mflo $3
bne $1, $3, TAG94
TAG94:
mfhi $2
sll $0, $0, 0
mthi $2
blez $3, TAG95
TAG95:
lui $2, 9
bltz $2, TAG96
divu $2, $2
blez $2, TAG96
TAG96:
srl $3, $2, 0
multu $3, $2
mfhi $1
bne $2, $1, TAG97
TAG97:
multu $1, $1
addiu $4, $1, 7
xori $4, $1, 7
or $2, $1, $1
TAG98:
sb $2, 0($2)
bne $2, $2, TAG99
mthi $2
bne $2, $2, TAG99
TAG99:
div $2, $2
bne $2, $2, TAG100
lbu $4, 0($2)
sb $2, 0($4)
TAG100:
bne $4, $4, TAG101
divu $4, $4
mflo $4
lb $2, 0($4)
TAG101:
or $2, $2, $2
mtlo $2
sw $2, 0($2)
mfhi $4
TAG102:
lb $2, 0($4)
mult $4, $2
mfhi $1
sh $4, 0($4)
TAG103:
lbu $4, 0($1)
mult $1, $4
and $1, $4, $1
lbu $3, 0($1)
TAG104:
lw $3, 0($3)
addiu $1, $3, 13
mfhi $1
lhu $4, 0($3)
TAG105:
sltiu $4, $4, 2
mult $4, $4
lbu $3, 0($4)
mfhi $4
TAG106:
beq $4, $4, TAG107
sltu $2, $4, $4
bltz $4, TAG107
multu $4, $4
TAG107:
sub $1, $2, $2
sb $1, 0($1)
sub $3, $1, $1
bne $1, $3, TAG108
TAG108:
xor $3, $3, $3
mthi $3
sb $3, 0($3)
beq $3, $3, TAG109
TAG109:
multu $3, $3
sll $4, $3, 3
mfhi $1
lui $3, 10
TAG110:
beq $3, $3, TAG111
slt $3, $3, $3
lhu $2, 0($3)
sllv $3, $2, $3
TAG111:
lh $2, 0($3)
sb $3, 0($2)
bne $2, $3, TAG112
lui $2, 10
TAG112:
mfhi $4
mtlo $4
lbu $1, 0($4)
sub $3, $2, $1
TAG113:
sll $0, $0, 0
lui $1, 13
multu $1, $3
lui $3, 5
TAG114:
beq $3, $3, TAG115
sll $0, $0, 0
lui $4, 4
lui $4, 9
TAG115:
bgez $4, TAG116
multu $4, $4
mthi $4
srav $3, $4, $4
TAG116:
srlv $1, $3, $3
srlv $2, $1, $1
mflo $4
lui $3, 5
TAG117:
mthi $3
lui $3, 4
multu $3, $3
sll $0, $0, 0
TAG118:
sll $0, $0, 0
mfhi $4
nor $2, $4, $4
div $2, $3
TAG119:
sll $0, $0, 0
mflo $1
div $1, $2
mthi $1
TAG120:
subu $3, $1, $1
or $2, $1, $3
bltz $3, TAG121
lbu $4, 0($3)
TAG121:
bltz $4, TAG122
lui $1, 8
sb $1, 0($4)
lui $2, 15
TAG122:
mtlo $2
mflo $1
sll $0, $0, 0
srav $3, $2, $4
TAG123:
sll $0, $0, 0
mflo $1
divu $3, $3
addu $1, $3, $3
TAG124:
sll $0, $0, 0
bgez $1, TAG125
mthi $1
mult $1, $1
TAG125:
mthi $1
mthi $1
mfhi $1
mfhi $1
TAG126:
multu $1, $1
mflo $1
lui $3, 1
lui $3, 13
TAG127:
beq $3, $3, TAG128
lui $4, 4
sltiu $2, $3, 3
sllv $4, $4, $2
TAG128:
xori $4, $4, 7
sll $2, $4, 0
sltiu $2, $4, 14
lw $3, 0($2)
TAG129:
beq $3, $3, TAG130
sw $3, 0($3)
sltiu $4, $3, 15
lui $4, 1
TAG130:
mtlo $4
mthi $4
addiu $3, $4, 15
sllv $4, $3, $4
TAG131:
mtlo $4
slti $1, $4, 7
ori $1, $1, 3
sb $1, 0($1)
TAG132:
lbu $4, 0($1)
divu $4, $4
lui $4, 9
sltiu $4, $1, 3
TAG133:
lw $3, 0($4)
mult $3, $4
andi $2, $4, 6
or $4, $3, $2
TAG134:
bgez $4, TAG135
sll $0, $0, 0
lbu $4, 0($4)
mthi $4
TAG135:
beq $4, $4, TAG136
sll $0, $0, 0
lb $4, 0($4)
bne $4, $4, TAG136
TAG136:
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
addu $1, $4, $2
TAG137:
lui $2, 10
srav $1, $1, $1
mthi $1
lui $2, 2
TAG138:
sll $0, $0, 0
andi $3, $2, 2
bgez $2, TAG139
sll $0, $0, 0
TAG139:
bltz $3, TAG140
sra $3, $3, 8
sll $1, $3, 11
lw $4, 0($1)
TAG140:
blez $4, TAG141
div $4, $4
bgez $4, TAG141
mult $4, $4
TAG141:
bne $4, $4, TAG142
and $1, $4, $4
mult $1, $1
slt $1, $4, $4
TAG142:
lbu $4, 0($1)
lhu $2, 0($4)
sll $2, $4, 9
xori $3, $2, 7
TAG143:
divu $3, $3
sllv $4, $3, $3
sra $1, $3, 7
lb $3, 0($3)
TAG144:
div $3, $3
sb $3, 0($3)
srl $1, $3, 15
sltiu $1, $3, 0
TAG145:
mult $1, $1
lh $4, 0($1)
mthi $1
bgtz $1, TAG146
TAG146:
mthi $4
bne $4, $4, TAG147
addu $1, $4, $4
mult $4, $4
TAG147:
multu $1, $1
lui $4, 5
multu $4, $4
sub $4, $4, $1
TAG148:
blez $4, TAG149
div $4, $4
multu $4, $4
bgez $4, TAG149
TAG149:
sll $0, $0, 0
mfhi $4
subu $2, $2, $4
div $2, $4
TAG150:
beq $2, $2, TAG151
lui $3, 10
beq $3, $3, TAG151
lui $4, 14
TAG151:
lui $1, 4
bne $1, $1, TAG152
multu $4, $1
andi $3, $4, 7
TAG152:
bne $3, $3, TAG153
ori $4, $3, 10
mflo $4
bgtz $3, TAG153
TAG153:
lui $2, 4
mfhi $2
mthi $2
blez $2, TAG154
TAG154:
mflo $3
beq $2, $2, TAG155
mflo $4
bltz $3, TAG155
TAG155:
sll $0, $0, 0
sh $2, 0($2)
mult $4, $2
bltz $2, TAG156
TAG156:
mflo $1
multu $1, $1
mfhi $4
lui $4, 8
TAG157:
lui $4, 7
beq $4, $4, TAG158
lui $1, 9
subu $1, $4, $4
TAG158:
mthi $1
sll $0, $0, 0
mult $4, $1
multu $4, $4
TAG159:
mthi $4
lui $4, 0
mthi $4
mthi $4
TAG160:
or $2, $4, $4
mult $4, $2
lui $2, 3
beq $2, $2, TAG161
TAG161:
sll $0, $0, 0
bne $2, $2, TAG162
mtlo $2
lui $1, 9
TAG162:
mfhi $1
mflo $2
sll $0, $0, 0
bne $1, $1, TAG163
TAG163:
sltiu $2, $2, 4
mfhi $1
multu $2, $1
mthi $1
TAG164:
bne $1, $1, TAG165
sw $1, 0($1)
mflo $4
sub $3, $4, $1
TAG165:
mtlo $3
beq $3, $3, TAG166
sll $4, $3, 5
divu $3, $4
TAG166:
lui $2, 7
mfhi $3
div $4, $2
slt $2, $3, $4
TAG167:
mtlo $2
sb $2, 0($2)
multu $2, $2
multu $2, $2
TAG168:
addu $1, $2, $2
sllv $1, $2, $1
mflo $1
lh $2, 0($2)
TAG169:
beq $2, $2, TAG170
lhu $4, 0($2)
mflo $2
lbu $1, 0($4)
TAG170:
or $3, $1, $1
lw $1, 0($1)
srlv $1, $1, $3
xor $4, $1, $1
TAG171:
mflo $1
mfhi $4
lui $2, 14
sh $1, 0($1)
TAG172:
bltz $2, TAG173
divu $2, $2
sll $0, $0, 0
bgtz $2, TAG173
TAG173:
addiu $4, $2, 8
beq $2, $2, TAG174
mtlo $2
mflo $1
TAG174:
lh $3, 0($1)
blez $3, TAG175
mult $1, $3
lui $1, 11
TAG175:
lui $4, 6
bltz $1, TAG176
ori $1, $4, 6
lui $3, 10
TAG176:
mfhi $1
lui $4, 5
mthi $4
bltz $4, TAG177
TAG177:
divu $4, $4
mthi $4
blez $4, TAG178
ori $1, $4, 5
TAG178:
addiu $3, $1, 12
lui $2, 13
sll $0, $0, 0
lui $1, 7
TAG179:
beq $1, $1, TAG180
sllv $3, $1, $1
lh $2, 0($1)
sb $2, 0($3)
TAG180:
beq $2, $2, TAG181
sll $0, $0, 0
sub $3, $2, $2
lw $2, 0($2)
TAG181:
mthi $2
mtlo $2
sll $0, $0, 0
beq $2, $2, TAG182
TAG182:
subu $4, $2, $2
sra $1, $4, 2
lui $2, 3
mfhi $2
TAG183:
sra $1, $2, 7
addu $1, $1, $2
or $1, $1, $1
mfhi $4
TAG184:
mfhi $1
mfhi $4
mtlo $4
mtlo $1
TAG185:
slti $1, $4, 0
bgez $1, TAG186
lb $1, 0($1)
srav $2, $4, $1
TAG186:
bltz $2, TAG187
srl $1, $2, 10
lui $3, 14
bltz $1, TAG187
TAG187:
mfhi $1
lui $3, 11
sll $0, $0, 0
mult $3, $3
TAG188:
bgtz $3, TAG189
sll $0, $0, 0
div $3, $3
div $3, $3
TAG189:
sll $0, $0, 0
blez $3, TAG190
lui $3, 6
sll $0, $0, 0
TAG190:
srlv $1, $4, $4
sll $0, $0, 0
bgez $4, TAG191
slti $3, $1, 9
TAG191:
sub $4, $3, $3
lbu $2, 0($4)
mflo $2
lhu $2, 0($2)
TAG192:
sh $2, 0($2)
lh $2, 0($2)
lb $4, 0($2)
mthi $4
TAG193:
lhu $1, 0($4)
lui $4, 13
addu $3, $4, $1
lui $1, 8
TAG194:
lui $2, 2
mthi $1
mthi $1
addiu $2, $1, 9
TAG195:
bltz $2, TAG196
mfhi $1
div $2, $2
slt $3, $2, $1
TAG196:
bltz $3, TAG197
mult $3, $3
mult $3, $3
srl $2, $3, 6
TAG197:
srlv $4, $2, $2
bne $2, $4, TAG198
sltu $3, $4, $2
sll $3, $3, 8
TAG198:
mult $3, $3
lui $2, 9
sltu $3, $2, $2
srlv $4, $3, $3
TAG199:
lui $3, 9
multu $4, $4
beq $4, $3, TAG200
mflo $1
TAG200:
bne $1, $1, TAG201
mfhi $3
mult $1, $1
beq $3, $3, TAG201
TAG201:
sllv $4, $3, $3
xor $3, $3, $4
beq $3, $3, TAG202
sw $3, 0($3)
TAG202:
mfhi $2
lui $3, 14
sub $1, $3, $2
mthi $2
TAG203:
mflo $1
multu $1, $1
lb $4, 0($1)
lui $4, 7
TAG204:
lui $4, 8
mthi $4
bgtz $4, TAG205
srlv $3, $4, $4
TAG205:
addu $4, $3, $3
lui $3, 1
sll $0, $0, 0
mtlo $4
TAG206:
bgtz $3, TAG207
sll $0, $0, 0
mthi $3
beq $3, $3, TAG207
TAG207:
mflo $3
xor $3, $3, $3
sll $2, $3, 1
nor $2, $3, $3
TAG208:
multu $2, $2
subu $3, $2, $2
lui $4, 13
lui $2, 13
TAG209:
mtlo $2
bne $2, $2, TAG210
divu $2, $2
lui $4, 12
TAG210:
bgez $4, TAG211
mflo $2
sra $4, $2, 13
lbu $2, 0($4)
TAG211:
divu $2, $2
slti $4, $2, 12
bgtz $4, TAG212
mthi $2
TAG212:
lbu $2, 0($4)
mfhi $3
bne $3, $3, TAG213
mthi $2
TAG213:
bne $3, $3, TAG214
mflo $4
bne $3, $3, TAG214
slti $4, $4, 2
TAG214:
sltiu $3, $4, 5
sb $3, 0($4)
mtlo $3
sb $4, 0($3)
TAG215:
lui $4, 7
blez $3, TAG216
mtlo $4
lui $3, 0
TAG216:
lhu $3, 0($3)
blez $3, TAG217
lw $4, -256($3)
sw $3, -256($4)
TAG217:
bltz $4, TAG218
mtlo $4
sb $4, -256($4)
bne $4, $4, TAG218
TAG218:
addiu $2, $4, 14
bltz $4, TAG219
lw $2, -256($4)
multu $2, $4
TAG219:
beq $2, $2, TAG220
andi $1, $2, 5
bne $2, $2, TAG220
andi $1, $1, 4
TAG220:
nor $3, $1, $1
multu $3, $1
mtlo $3
addu $1, $3, $1
TAG221:
mult $1, $1
nor $3, $1, $1
mflo $1
lui $4, 9
TAG222:
divu $4, $4
sltu $2, $4, $4
sll $0, $0, 0
lui $4, 7
TAG223:
bne $4, $4, TAG224
lui $2, 14
sltiu $4, $4, 3
mult $2, $4
TAG224:
or $3, $4, $4
bltz $4, TAG225
lui $2, 13
or $2, $3, $2
TAG225:
lui $3, 1
bne $2, $3, TAG226
slt $2, $2, $2
slti $4, $3, 15
TAG226:
bne $4, $4, TAG227
lh $2, 0($4)
sb $4, 0($4)
sh $2, 0($4)
TAG227:
multu $2, $2
lui $4, 13
sh $4, -256($2)
slt $2, $2, $4
TAG228:
lb $2, 0($2)
mtlo $2
bltz $2, TAG229
lb $1, 0($2)
TAG229:
mult $1, $1
sw $1, 0($1)
lb $4, 0($1)
xori $3, $4, 11
TAG230:
lb $3, 0($3)
mthi $3
sh $3, 0($3)
beq $3, $3, TAG231
TAG231:
lb $1, 0($3)
lui $1, 8
mthi $3
lui $3, 14
TAG232:
sltiu $3, $3, 10
lui $2, 7
srl $1, $2, 15
lui $3, 1
TAG233:
blez $3, TAG234
mfhi $4
mthi $3
mult $4, $4
TAG234:
sltiu $4, $4, 7
slt $4, $4, $4
lui $3, 4
mult $4, $4
TAG235:
sll $0, $0, 0
div $3, $3
slti $4, $3, 3
div $4, $3
TAG236:
bltz $4, TAG237
mthi $4
lhu $4, 0($4)
bltz $4, TAG237
TAG237:
sll $3, $4, 0
bne $3, $4, TAG238
or $4, $4, $4
sh $4, 0($3)
TAG238:
lui $1, 2
sll $0, $0, 0
mthi $4
mthi $1
TAG239:
srl $4, $1, 1
bltz $1, TAG240
lui $3, 10
sll $0, $0, 0
TAG240:
lui $3, 15
mfhi $4
bgtz $3, TAG241
divu $3, $3
TAG241:
mtlo $4
lui $2, 9
subu $2, $4, $4
multu $2, $2
TAG242:
multu $2, $2
multu $2, $2
lh $1, 0($2)
bgtz $1, TAG243
TAG243:
mfhi $1
sb $1, 0($1)
lui $4, 2
multu $1, $4
TAG244:
sll $0, $0, 0
sltiu $1, $2, 13
slti $2, $2, 14
mthi $2
TAG245:
mfhi $1
multu $1, $2
blez $1, TAG246
multu $2, $2
TAG246:
lui $2, 9
ori $3, $1, 13
lui $1, 7
lui $4, 3
TAG247:
multu $4, $4
sra $3, $4, 4
or $2, $3, $4
sra $2, $3, 1
TAG248:
mfhi $2
sb $2, 0($2)
beq $2, $2, TAG249
sb $2, 0($2)
TAG249:
mthi $2
multu $2, $2
mfhi $2
sb $2, 0($2)
TAG250:
add $1, $2, $2
multu $1, $1
andi $1, $1, 7
mthi $1
TAG251:
nor $3, $1, $1
lui $2, 12
bne $2, $1, TAG252
srl $3, $3, 9
TAG252:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $3, 14
multu $2, $2
TAG253:
mflo $1
bne $2, $2, TAG254
mflo $2
sll $0, $0, 0
TAG254:
sll $0, $0, 0
bgez $4, TAG255
divu $4, $4
bltz $4, TAG255
TAG255:
xor $2, $4, $4
mfhi $3
mthi $2
mfhi $2
TAG256:
mult $2, $2
sll $2, $2, 7
lui $1, 12
bgez $1, TAG257
TAG257:
mthi $1
bne $1, $1, TAG258
mtlo $1
sll $0, $0, 0
TAG258:
mflo $4
xori $3, $4, 10
mthi $4
ori $3, $2, 5
TAG259:
mfhi $1
bgez $3, TAG260
lbu $1, 0($3)
sh $1, 0($1)
TAG260:
mtlo $1
slt $4, $1, $1
lw $3, 0($4)
bne $3, $1, TAG261
TAG261:
lw $4, 0($3)
mtlo $3
mult $4, $3
mult $3, $4
TAG262:
srl $1, $4, 7
beq $1, $1, TAG263
lb $4, 0($1)
mult $4, $4
TAG263:
mtlo $4
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
TAG264:
lh $4, 0($1)
lw $3, 0($1)
ori $1, $3, 9
bne $4, $3, TAG265
TAG265:
nor $3, $1, $1
mtlo $3
multu $1, $1
mtlo $3
TAG266:
ori $4, $3, 3
lh $1, 10($3)
xori $1, $4, 10
bne $1, $1, TAG267
TAG267:
sra $2, $1, 4
mtlo $2
lui $1, 6
lb $2, 1($2)
TAG268:
bne $2, $2, TAG269
mflo $3
sw $3, 0($2)
mflo $1
TAG269:
sll $0, $0, 0
beq $1, $1, TAG270
addiu $3, $1, 8
lui $2, 5
TAG270:
mflo $2
andi $1, $2, 3
addiu $3, $1, 9
mfhi $2
TAG271:
sll $3, $2, 7
bne $3, $3, TAG272
lbu $4, 0($3)
beq $4, $4, TAG272
TAG272:
sh $4, -255($4)
addiu $1, $4, 13
multu $1, $1
lh $2, -268($1)
TAG273:
bltz $2, TAG274
mflo $3
sll $0, $0, 0
mtlo $3
TAG274:
subu $3, $3, $3
bgtz $3, TAG275
sll $3, $3, 6
lhu $3, 0($3)
TAG275:
and $3, $3, $3
mflo $4
mthi $4
lhu $1, -255($3)
TAG276:
sllv $3, $1, $1
subu $2, $1, $3
mthi $2
mthi $2
TAG277:
srav $3, $2, $2
mult $3, $2
lui $1, 7
bne $3, $2, TAG278
TAG278:
subu $4, $1, $1
mult $4, $4
blez $1, TAG279
sltiu $3, $1, 3
TAG279:
slti $2, $3, 3
sub $4, $2, $3
subu $3, $4, $2
lui $4, 10
TAG280:
sll $0, $0, 0
blez $4, TAG281
mtlo $4
sll $0, $0, 0
TAG281:
srav $1, $4, $4
bgez $1, TAG282
slti $4, $1, 0
sh $4, 0($1)
TAG282:
lui $1, 9
lw $3, 0($4)
mfhi $3
sll $0, $0, 0
TAG283:
multu $3, $3
bltz $3, TAG284
lhu $3, 0($3)
sb $3, -255($3)
TAG284:
lui $4, 9
sltiu $4, $4, 14
bne $4, $4, TAG285
mfhi $4
TAG285:
xori $2, $4, 15
mtlo $4
mflo $1
bltz $1, TAG286
TAG286:
mfhi $2
sw $1, 0($2)
bgtz $2, TAG287
lw $4, 0($1)
TAG287:
lui $3, 14
ori $2, $3, 4
mfhi $4
bne $3, $2, TAG288
TAG288:
lui $3, 8
lw $3, 0($4)
bgtz $4, TAG289
sltiu $2, $3, 6
TAG289:
lui $3, 13
lb $4, 0($2)
sb $4, 0($4)
mflo $1
TAG290:
mtlo $1
ori $3, $1, 8
mult $3, $3
lui $3, 5
TAG291:
bgez $3, TAG292
ori $4, $3, 7
lui $4, 15
mthi $4
TAG292:
mfhi $3
srav $3, $4, $4
lui $1, 6
lui $4, 14
TAG293:
lui $1, 14
mflo $1
srl $1, $4, 5
sll $0, $0, 0
TAG294:
mthi $1
bne $1, $1, TAG295
mtlo $1
mtlo $1
TAG295:
lui $1, 7
sll $0, $0, 0
beq $1, $1, TAG296
mult $1, $1
TAG296:
divu $1, $1
bltz $1, TAG297
mfhi $1
andi $1, $1, 15
TAG297:
lui $3, 8
beq $3, $3, TAG298
lui $2, 10
lui $1, 1
TAG298:
mtlo $1
mult $1, $1
bgtz $1, TAG299
lui $3, 14
TAG299:
sll $0, $0, 0
mult $1, $3
mfhi $1
beq $1, $3, TAG300
TAG300:
mfhi $3
blez $1, TAG301
mtlo $3
bgtz $3, TAG301
TAG301:
mfhi $2
sra $1, $3, 12
bgtz $3, TAG302
lw $1, 0($2)
TAG302:
mflo $2
mfhi $4
sh $1, 0($1)
multu $4, $2
TAG303:
multu $4, $4
lw $2, 0($4)
beq $2, $2, TAG304
lhu $4, 0($2)
TAG304:
beq $4, $4, TAG305
xori $1, $4, 15
bne $4, $4, TAG305
lui $3, 10
TAG305:
sub $1, $3, $3
multu $1, $3
sll $3, $1, 13
lb $1, 0($3)
TAG306:
sra $2, $1, 9
sb $2, 0($1)
sltiu $3, $2, 4
sb $2, 0($3)
TAG307:
blez $3, TAG308
sb $3, 0($3)
mult $3, $3
sb $3, 0($3)
TAG308:
div $3, $3
lui $1, 4
sll $0, $0, 0
div $3, $3
TAG309:
mult $1, $1
mfhi $2
lw $3, 0($2)
divu $3, $2
TAG310:
lbu $2, 0($3)
mult $3, $3
bne $2, $3, TAG311
sra $3, $2, 5
TAG311:
bltz $3, TAG312
lb $4, 0($3)
sll $2, $4, 13
mflo $1
TAG312:
mfhi $2
lb $4, 0($2)
mthi $1
bgez $4, TAG313
TAG313:
nor $1, $4, $4
sh $4, 1($1)
lui $1, 11
blez $1, TAG314
TAG314:
sll $0, $0, 0
addiu $4, $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG315:
mtlo $4
sll $0, $0, 0
addu $4, $4, $4
multu $4, $4
TAG316:
lui $3, 5
sll $0, $0, 0
addu $3, $3, $3
mfhi $3
TAG317:
bltz $3, TAG318
mult $3, $3
lui $1, 13
sra $4, $3, 5
TAG318:
bgtz $4, TAG319
addiu $3, $4, 15
mfhi $4
bgez $3, TAG319
TAG319:
sb $4, 0($4)
bltz $4, TAG320
lbu $3, 0($4)
mthi $4
TAG320:
sb $3, 0($3)
lui $4, 3
mtlo $4
addiu $4, $3, 0
TAG321:
sra $3, $4, 15
multu $4, $3
mfhi $4
lb $1, 0($3)
TAG322:
lui $4, 12
bgtz $1, TAG323
lbu $1, 0($1)
mult $1, $1
TAG323:
lui $3, 10
sw $1, 0($1)
bgez $3, TAG324
mfhi $4
TAG324:
and $1, $4, $4
bne $4, $4, TAG325
sltu $2, $1, $1
sb $1, 0($4)
TAG325:
multu $2, $2
andi $1, $2, 14
slti $1, $2, 14
addiu $4, $2, 14
TAG326:
sllv $1, $4, $4
bne $4, $1, TAG327
mtlo $4
sb $4, 0($4)
TAG327:
bltz $1, TAG328
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
TAG328:
addu $1, $2, $2
sll $0, $0, 0
mfhi $3
multu $3, $3
TAG329:
mult $3, $3
mult $3, $3
sb $3, 0($3)
lbu $4, 0($3)
TAG330:
multu $4, $4
blez $4, TAG331
lui $1, 1
nor $3, $1, $4
TAG331:
sra $1, $3, 0
or $4, $3, $1
bne $1, $1, TAG332
multu $4, $1
TAG332:
bltz $4, TAG333
lw $1, 0($4)
sub $3, $4, $1
srl $2, $4, 8
TAG333:
bne $2, $2, TAG334
sw $2, 0($2)
lui $4, 0
xor $2, $4, $2
TAG334:
mfhi $2
lhu $3, 0($2)
lui $1, 13
mflo $4
TAG335:
sw $4, 0($4)
mult $4, $4
mflo $1
srl $3, $1, 6
TAG336:
mtlo $3
mthi $3
bgez $3, TAG337
sw $3, 0($3)
TAG337:
bgez $3, TAG338
lui $4, 8
mthi $3
multu $4, $4
TAG338:
lui $4, 12
div $4, $4
slt $4, $4, $4
bltz $4, TAG339
TAG339:
sh $4, 0($4)
andi $4, $4, 6
bne $4, $4, TAG340
slt $4, $4, $4
TAG340:
beq $4, $4, TAG341
lui $2, 9
lb $1, 0($4)
sb $2, 0($1)
TAG341:
bltz $1, TAG342
mfhi $2
lb $3, 0($2)
sw $2, 0($3)
TAG342:
sb $3, 0($3)
sh $3, 0($3)
mtlo $3
bltz $3, TAG343
TAG343:
lui $4, 13
andi $4, $3, 14
mtlo $4
multu $4, $3
TAG344:
andi $4, $4, 12
mthi $4
xor $2, $4, $4
blez $4, TAG345
TAG345:
mflo $4
sllv $4, $4, $2
sb $2, 0($4)
sb $4, 0($2)
TAG346:
lui $2, 8
sh $4, 0($4)
mtlo $4
mtlo $4
TAG347:
bne $2, $2, TAG348
sll $0, $0, 0
xori $4, $2, 0
sll $0, $0, 0
TAG348:
mtlo $4
sll $0, $0, 0
mfhi $4
lhu $2, 0($1)
TAG349:
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
srav $4, $1, $1
TAG350:
srav $4, $4, $4
mflo $3
divu $4, $4
mfhi $2
TAG351:
blez $2, TAG352
mtlo $2
mfhi $2
mthi $2
TAG352:
mult $2, $2
mtlo $2
lui $2, 11
beq $2, $2, TAG353
TAG353:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
mflo $2
TAG354:
bne $2, $2, TAG355
sh $2, 0($2)
bgtz $2, TAG355
mfhi $2
TAG355:
sll $0, $0, 0
bne $2, $2, TAG356
mthi $2
mfhi $1
TAG356:
bgtz $1, TAG357
sra $1, $1, 14
lh $4, 0($1)
lh $2, 0($4)
TAG357:
beq $2, $2, TAG358
addu $3, $2, $2
lhu $2, 0($3)
mflo $2
TAG358:
mult $2, $2
multu $2, $2
bgez $2, TAG359
mflo $3
TAG359:
sh $3, 0($3)
slt $2, $3, $3
lui $4, 4
nor $3, $2, $3
TAG360:
lui $2, 9
slt $1, $2, $2
mfhi $4
addu $2, $1, $4
TAG361:
lui $1, 14
div $1, $2
srlv $3, $1, $1
mthi $2
TAG362:
multu $3, $3
div $3, $3
andi $3, $3, 5
sltiu $3, $3, 2
TAG363:
mthi $3
mthi $3
sra $3, $3, 12
addi $4, $3, 1
TAG364:
mult $4, $4
subu $2, $4, $4
bltz $2, TAG365
mult $2, $2
TAG365:
lw $1, 0($2)
mult $1, $1
multu $2, $2
mflo $3
TAG366:
subu $1, $3, $3
lw $4, 0($3)
addiu $2, $1, 3
addu $2, $1, $1
TAG367:
lbu $2, 0($2)
mflo $3
mtlo $2
addi $3, $2, 8
TAG368:
addiu $4, $3, 14
sll $1, $4, 4
mtlo $4
lui $3, 6
TAG369:
bne $3, $3, TAG370
mthi $3
multu $3, $3
bne $3, $3, TAG370
TAG370:
and $4, $3, $3
sll $0, $0, 0
blez $4, TAG371
lui $1, 14
TAG371:
div $1, $1
mfhi $1
sb $1, 0($1)
bltz $1, TAG372
TAG372:
lh $1, 0($1)
mflo $2
sra $4, $1, 5
mthi $2
TAG373:
bgtz $4, TAG374
mfhi $4
lbu $3, 0($4)
srlv $1, $3, $4
TAG374:
lb $2, 0($1)
lbu $4, 0($2)
mult $4, $2
sub $2, $4, $2
TAG375:
addiu $3, $2, 7
sw $3, 0($2)
beq $2, $2, TAG376
xor $2, $3, $2
TAG376:
sb $2, 0($2)
nor $3, $2, $2
or $4, $2, $2
lhu $4, 8($3)
TAG377:
bne $4, $4, TAG378
mtlo $4
sra $1, $4, 7
bltz $1, TAG378
TAG378:
mtlo $1
mfhi $3
lui $3, 4
mtlo $3
TAG379:
lui $4, 2
srlv $3, $3, $4
div $4, $3
mtlo $3
TAG380:
sra $1, $3, 9
bgtz $3, TAG381
sll $0, $0, 0
xor $1, $3, $3
TAG381:
bne $1, $1, TAG382
sll $3, $1, 1
lui $4, 4
beq $1, $3, TAG382
TAG382:
sll $0, $0, 0
srl $3, $2, 12
sll $0, $0, 0
divu $3, $2
TAG383:
srav $2, $3, $3
mfhi $1
sw $3, 0($2)
beq $2, $2, TAG384
TAG384:
and $4, $1, $1
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG385:
bgtz $2, TAG386
nor $1, $2, $2
mfhi $3
mfhi $3
TAG386:
beq $3, $3, TAG387
nor $3, $3, $3
lb $4, 0($3)
lui $1, 3
TAG387:
divu $1, $1
bne $1, $1, TAG388
mfhi $1
and $2, $1, $1
TAG388:
mtlo $2
sltiu $3, $2, 6
beq $3, $2, TAG389
mult $2, $2
TAG389:
bgez $3, TAG390
lb $1, 0($3)
mtlo $3
lbu $2, 0($3)
TAG390:
lh $2, 0($2)
bne $2, $2, TAG391
mult $2, $2
mflo $1
TAG391:
mult $1, $1
lw $3, 0($1)
ori $4, $1, 7
lui $3, 8
TAG392:
bne $3, $3, TAG393
multu $3, $3
sll $0, $0, 0
addiu $4, $1, 5
TAG393:
bgez $4, TAG394
mtlo $4
mflo $3
lb $2, 0($4)
TAG394:
sllv $3, $2, $2
lui $2, 14
multu $2, $2
sll $0, $0, 0
TAG395:
sll $0, $0, 0
lhu $2, 0($3)
lbu $1, 0($3)
nor $1, $1, $1
TAG396:
mflo $2
srav $4, $2, $1
lb $1, 1($1)
bgez $1, TAG397
TAG397:
addu $3, $1, $1
sw $3, 0($1)
lui $3, 6
mthi $1
TAG398:
bltz $3, TAG399
mtlo $3
mult $3, $3
sll $0, $0, 0
TAG399:
slt $3, $4, $4
mfhi $4
ori $3, $4, 9
sltiu $4, $4, 0
TAG400:
mtlo $4
bgez $4, TAG401
multu $4, $4
blez $4, TAG401
TAG401:
lui $1, 13
divu $1, $1
slti $3, $1, 1
sw $4, 0($3)
TAG402:
mflo $1
lui $4, 7
sb $4, 0($3)
sb $3, 0($1)
TAG403:
mtlo $4
xori $2, $4, 6
sll $0, $0, 0
subu $4, $2, $2
TAG404:
sw $4, 0($4)
bgtz $4, TAG405
mthi $4
multu $4, $4
TAG405:
mfhi $2
bne $2, $2, TAG406
mtlo $2
lhu $1, 0($4)
TAG406:
sh $1, 0($1)
lui $4, 11
bgez $1, TAG407
mthi $1
TAG407:
sll $0, $0, 0
xor $3, $4, $4
sra $3, $4, 15
lbu $2, 0($3)
TAG408:
mult $2, $2
bgtz $2, TAG409
lh $1, 0($2)
beq $2, $2, TAG409
TAG409:
addu $2, $1, $1
sll $3, $1, 12
mtlo $3
lui $1, 15
TAG410:
beq $1, $1, TAG411
mflo $1
lui $3, 11
xori $3, $3, 0
TAG411:
mflo $3
multu $3, $3
mfhi $1
beq $3, $1, TAG412
TAG412:
lui $4, 1
multu $1, $1
sll $0, $0, 0
beq $1, $4, TAG413
TAG413:
sll $0, $0, 0
beq $4, $1, TAG414
lhu $2, 0($1)
beq $4, $2, TAG414
TAG414:
mflo $1
lui $2, 14
bgez $1, TAG415
sll $0, $0, 0
TAG415:
lui $1, 8
mflo $3
bne $3, $1, TAG416
mult $3, $3
TAG416:
bltz $3, TAG417
mflo $3
beq $3, $3, TAG417
mthi $3
TAG417:
mflo $2
xor $1, $2, $3
slti $2, $1, 12
lui $1, 13
TAG418:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG419:
sll $2, $1, 5
sll $0, $0, 0
mtlo $1
multu $1, $1
TAG420:
sll $0, $0, 0
bne $4, $4, TAG421
mtlo $2
andi $3, $2, 2
TAG421:
bltz $3, TAG422
lh $3, 0($3)
mfhi $1
mflo $2
TAG422:
ori $3, $2, 5
lui $2, 12
sll $0, $0, 0
mfhi $3
TAG423:
slti $1, $3, 10
ori $4, $3, 13
bne $4, $4, TAG424
lhu $2, -169($3)
TAG424:
lhu $4, 0($2)
beq $4, $4, TAG425
mflo $1
mtlo $4
TAG425:
andi $2, $1, 5
mthi $2
bgez $2, TAG426
addu $1, $1, $1
TAG426:
blez $1, TAG427
sltiu $2, $1, 14
bltz $1, TAG427
sll $0, $0, 0
TAG427:
blez $2, TAG428
sltu $1, $2, $2
mthi $2
mflo $3
TAG428:
lui $1, 3
div $3, $3
subu $4, $3, $3
sll $0, $0, 0
TAG429:
mfhi $2
lh $1, 0($2)
mtlo $2
sb $1, 0($2)
TAG430:
bltz $1, TAG431
mfhi $1
mtlo $1
lbu $2, 0($1)
TAG431:
sb $2, 0($2)
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
TAG432:
addiu $4, $2, 13
mthi $4
lui $4, 0
mflo $4
TAG433:
bgtz $4, TAG434
mfhi $1
mthi $4
sllv $3, $4, $4
TAG434:
bne $3, $3, TAG435
mflo $3
andi $2, $3, 1
lui $1, 14
TAG435:
sra $2, $1, 7
bltz $1, TAG436
sll $0, $0, 0
bne $1, $1, TAG436
TAG436:
subu $4, $1, $1
beq $4, $4, TAG437
div $1, $1
mult $1, $4
TAG437:
sltiu $2, $4, 0
multu $2, $2
mflo $2
lui $2, 2
TAG438:
addiu $3, $2, 7
lui $1, 10
bgtz $2, TAG439
mtlo $2
TAG439:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
multu $1, $1
TAG440:
multu $4, $4
lui $2, 6
blez $4, TAG441
lui $2, 2
TAG441:
subu $2, $2, $2
bgez $2, TAG442
lh $4, 0($2)
bne $2, $4, TAG442
TAG442:
lui $2, 3
nor $1, $2, $4
sll $0, $0, 0
xor $1, $2, $1
TAG443:
mtlo $1
xori $3, $1, 14
lui $3, 7
sll $0, $0, 0
TAG444:
sll $0, $0, 0
lhu $3, 1($1)
lui $4, 0
lw $2, 1($1)
TAG445:
sll $1, $2, 12
sh $2, 0($2)
srav $3, $2, $1
bne $2, $2, TAG446
TAG446:
sh $3, 0($3)
lui $3, 0
mtlo $3
beq $3, $3, TAG447
TAG447:
mflo $4
lui $4, 2
srlv $3, $4, $4
lui $1, 2
TAG448:
bne $1, $1, TAG449
mthi $1
beq $1, $1, TAG449
sll $0, $0, 0
TAG449:
mtlo $3
mflo $1
lui $2, 4
divu $3, $3
TAG450:
sll $0, $0, 0
xori $4, $4, 3
sll $0, $0, 0
sll $0, $0, 0
TAG451:
sll $0, $0, 0
sllv $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG452:
sltu $4, $4, $4
multu $4, $4
lb $1, 0($4)
addu $4, $4, $4
TAG453:
sw $4, 0($4)
lbu $1, 0($4)
mult $1, $1
bgez $1, TAG454
TAG454:
addiu $3, $1, 6
lui $4, 2
mfhi $1
mthi $3
TAG455:
sw $1, 0($1)
bltz $1, TAG456
sh $1, 0($1)
multu $1, $1
TAG456:
sw $1, 0($1)
sub $3, $1, $1
bgez $3, TAG457
lhu $1, 0($1)
TAG457:
lui $3, 0
multu $3, $3
bne $3, $1, TAG458
slti $4, $3, 5
TAG458:
mthi $4
mult $4, $4
subu $3, $4, $4
beq $3, $4, TAG459
TAG459:
srav $4, $3, $3
mtlo $3
multu $3, $3
bgez $3, TAG460
TAG460:
mult $4, $4
mflo $3
mflo $2
addu $3, $2, $4
TAG461:
lui $2, 6
lbu $1, 0($3)
sw $3, 0($1)
lui $2, 1
TAG462:
bgtz $2, TAG463
sll $0, $0, 0
multu $2, $2
bltz $2, TAG463
TAG463:
mflo $1
beq $1, $2, TAG464
sll $3, $2, 7
multu $2, $1
TAG464:
addiu $4, $3, 10
sll $0, $0, 0
bgez $4, TAG465
mtlo $4
TAG465:
beq $4, $4, TAG466
mtlo $4
sw $4, 0($4)
sb $4, 0($4)
TAG466:
addiu $3, $4, 5
sll $0, $0, 0
xor $2, $3, $4
div $4, $2
TAG467:
mthi $2
srl $2, $2, 15
sh $2, 0($2)
mult $2, $2
TAG468:
blez $2, TAG469
lui $3, 3
lb $3, 0($3)
lb $4, 0($3)
TAG469:
addu $3, $4, $4
subu $3, $3, $4
lui $3, 5
subu $3, $3, $3
TAG470:
nor $3, $3, $3
bltz $3, TAG471
multu $3, $3
addu $4, $3, $3
TAG471:
mflo $1
beq $1, $1, TAG472
lb $3, 0($1)
div $3, $1
TAG472:
beq $3, $3, TAG473
sltiu $4, $3, 0
sub $1, $3, $4
lui $2, 12
TAG473:
bltz $2, TAG474
mtlo $2
sw $2, 0($2)
lui $2, 12
TAG474:
srlv $1, $2, $2
srl $4, $1, 14
sll $0, $0, 0
mthi $4
TAG475:
blez $3, TAG476
mflo $1
addu $2, $3, $3
lh $4, 0($3)
TAG476:
mfhi $1
addu $1, $1, $1
lui $4, 6
sh $1, 0($1)
TAG477:
mtlo $4
xori $2, $4, 6
sll $0, $0, 0
bltz $4, TAG478
TAG478:
mthi $2
lui $3, 10
multu $2, $3
mflo $2
TAG479:
sll $0, $0, 0
div $4, $4
addiu $3, $4, 12
beq $3, $2, TAG480
TAG480:
nor $4, $3, $3
sll $0, $0, 0
mfhi $4
lhu $2, 0($4)
TAG481:
mtlo $2
bltz $2, TAG482
multu $2, $2
sh $2, 0($2)
TAG482:
multu $2, $2
bne $2, $2, TAG483
lui $3, 10
bne $3, $2, TAG483
TAG483:
div $3, $3
beq $3, $3, TAG484
div $3, $3
mflo $4
TAG484:
sw $4, 0($4)
sll $1, $4, 4
lbu $3, 0($4)
and $2, $3, $1
TAG485:
bgtz $2, TAG486
sltu $3, $2, $2
srlv $1, $2, $2
sra $1, $1, 4
TAG486:
blez $1, TAG487
lui $2, 13
mfhi $2
srav $4, $2, $2
TAG487:
lui $3, 13
sll $0, $0, 0
bne $3, $4, TAG488
lui $1, 14
TAG488:
mfhi $3
sll $0, $0, 0
sw $3, 0($3)
mult $1, $3
TAG489:
multu $3, $3
blez $3, TAG490
ori $1, $3, 6
addu $2, $1, $1
TAG490:
or $3, $2, $2
ori $3, $3, 0
sll $0, $0, 0
sltiu $1, $3, 0
TAG491:
mult $1, $1
mthi $1
lui $1, 10
sll $0, $0, 0
TAG492:
lui $3, 4
bne $3, $1, TAG493
mfhi $1
bne $3, $1, TAG493
TAG493:
multu $1, $1
ori $2, $1, 0
sra $4, $2, 2
beq $4, $4, TAG494
TAG494:
ori $3, $4, 2
bltz $3, TAG495
mult $4, $4
mult $3, $4
TAG495:
subu $3, $3, $3
beq $3, $3, TAG496
lh $3, 0($3)
sw $3, 0($3)
TAG496:
multu $3, $3
slti $1, $3, 13
lb $3, 0($1)
nor $4, $3, $3
TAG497:
mthi $4
mult $4, $4
srl $3, $4, 15
multu $3, $4
TAG498:
sll $0, $0, 0
multu $3, $3
mfhi $2
xori $3, $2, 3
TAG499:
ori $4, $3, 1
sb $4, 0($4)
lui $4, 10
mflo $2
TAG500:
bgez $2, TAG501
sll $0, $0, 0
mflo $1
mflo $2
TAG501:
sll $0, $0, 0
addu $4, $2, $2
mtlo $2
multu $4, $4
TAG502:
lui $3, 0
addiu $4, $3, 8
andi $1, $4, 9
mthi $1
TAG503:
mfhi $4
mthi $4
blez $4, TAG504
mtlo $4
TAG504:
bgez $4, TAG505
subu $3, $4, $4
andi $4, $4, 12
bgez $4, TAG505
TAG505:
div $4, $4
addu $4, $4, $4
mthi $4
lhu $4, 0($4)
TAG506:
beq $4, $4, TAG507
lbu $4, 0($4)
srav $4, $4, $4
addu $4, $4, $4
TAG507:
sh $4, 0($4)
multu $4, $4
slti $4, $4, 9
bne $4, $4, TAG508
TAG508:
divu $4, $4
bltz $4, TAG509
sb $4, 0($4)
mult $4, $4
TAG509:
ori $1, $4, 3
lb $1, 0($1)
and $1, $1, $1
sub $3, $1, $1
TAG510:
lui $2, 6
subu $3, $2, $2
lui $3, 2
sltu $3, $3, $3
TAG511:
lhu $2, 0($3)
beq $3, $3, TAG512
sllv $1, $2, $2
nor $1, $1, $3
TAG512:
sb $1, -256($1)
sb $1, -256($1)
mflo $2
multu $2, $2
TAG513:
mflo $2
lui $1, 10
bgez $2, TAG514
mtlo $2
TAG514:
sll $0, $0, 0
lb $4, 0($3)
sll $0, $0, 0
lb $4, 0($4)
TAG515:
lui $4, 9
bgez $4, TAG516
subu $1, $4, $4
divu $4, $1
TAG516:
bltz $1, TAG517
mthi $1
mflo $1
bgez $1, TAG517
TAG517:
divu $1, $1
lui $2, 4
beq $2, $1, TAG518
srl $2, $1, 2
TAG518:
lui $1, 15
multu $2, $2
sh $1, 0($2)
addiu $1, $1, 15
TAG519:
sll $0, $0, 0
lui $4, 1
mult $4, $1
mfhi $1
TAG520:
lbu $2, 0($1)
bne $2, $2, TAG521
mflo $2
sll $0, $0, 0
TAG521:
bne $2, $2, TAG522
sra $2, $2, 14
blez $2, TAG522
slt $1, $2, $2
TAG522:
lhu $2, 0($1)
mthi $1
blez $1, TAG523
mtlo $1
TAG523:
mult $2, $2
mthi $2
mflo $1
beq $1, $2, TAG524
TAG524:
mthi $1
lui $4, 8
bne $1, $4, TAG525
mflo $4
TAG525:
lui $4, 7
lui $2, 12
bltz $4, TAG526
mfhi $4
TAG526:
sh $4, 0($4)
addiu $4, $4, 0
beq $4, $4, TAG527
lui $3, 7
TAG527:
sll $2, $3, 5
lui $4, 10
sll $0, $0, 0
lui $1, 11
TAG528:
sll $0, $0, 0
bne $1, $1, TAG529
sll $0, $0, 0
lui $4, 8
TAG529:
or $1, $4, $4
mtlo $1
or $3, $1, $1
multu $3, $3
TAG530:
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
bltz $3, TAG531
TAG531:
mtlo $3
bne $3, $3, TAG532
mfhi $2
mtlo $3
TAG532:
lui $2, 3
andi $2, $2, 15
mtlo $2
slti $1, $2, 12
TAG533:
beq $1, $1, TAG534
sb $1, 0($1)
sb $1, 0($1)
sw $1, 0($1)
TAG534:
bne $1, $1, TAG535
sb $1, 0($1)
lb $4, 0($1)
bgtz $4, TAG535
TAG535:
lbu $2, 0($4)
lbu $1, 0($2)
bne $4, $1, TAG536
sb $2, 0($4)
TAG536:
mtlo $1
multu $1, $1
andi $1, $1, 10
addi $4, $1, 6
TAG537:
lui $1, 6
beq $1, $1, TAG538
srl $1, $1, 1
mflo $2
TAG538:
lui $3, 8
beq $2, $3, TAG539
sb $2, 0($2)
mult $3, $3
TAG539:
sllv $2, $3, $3
sltiu $1, $2, 7
sltiu $2, $2, 10
mthi $2
TAG540:
slti $4, $2, 10
addi $3, $2, 6
lbu $1, 0($4)
sb $4, 0($3)
TAG541:
mtlo $1
bltz $1, TAG542
and $3, $1, $1
sb $1, 0($1)
TAG542:
lbu $2, 0($3)
mflo $2
andi $2, $2, 14
mtlo $2
TAG543:
mfhi $4
sw $4, 0($4)
sb $2, 0($4)
add $3, $4, $4
TAG544:
add $2, $3, $3
mtlo $2
mult $2, $2
bne $2, $2, TAG545
TAG545:
mthi $2
bgez $2, TAG546
mflo $3
lb $4, 0($3)
TAG546:
lui $1, 4
lbu $2, 0($4)
sll $0, $0, 0
multu $2, $2
TAG547:
lui $1, 8
bgtz $2, TAG548
lbu $3, 0($2)
xor $4, $3, $1
TAG548:
mthi $4
lui $1, 12
bne $4, $4, TAG549
mthi $1
TAG549:
mthi $1
andi $4, $1, 2
beq $4, $1, TAG550
sltu $2, $4, $4
TAG550:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
xori $2, $2, 5
TAG551:
lui $1, 3
bne $1, $2, TAG552
mtlo $1
mfhi $2
TAG552:
lui $2, 2
mflo $4
bne $2, $2, TAG553
slt $1, $2, $2
TAG553:
sw $1, 0($1)
mtlo $1
sh $1, 0($1)
lhu $1, 0($1)
TAG554:
sllv $4, $1, $1
mult $4, $4
mult $4, $1
beq $1, $1, TAG555
TAG555:
sltu $1, $4, $4
sll $3, $1, 7
bne $3, $4, TAG556
sw $4, 0($4)
TAG556:
mflo $4
lui $1, 2
sw $1, 0($3)
bltz $3, TAG557
TAG557:
mthi $1
srl $2, $1, 8
srl $3, $1, 0
div $3, $2
TAG558:
addu $1, $3, $3
bne $1, $3, TAG559
divu $1, $3
bne $3, $3, TAG559
TAG559:
lui $1, 11
srlv $1, $1, $1
xori $4, $1, 3
lui $4, 5
TAG560:
sll $0, $0, 0
bgtz $2, TAG561
sllv $1, $2, $4
sh $2, 0($2)
TAG561:
sra $3, $1, 7
nor $1, $1, $1
mflo $3
mthi $3
TAG562:
lui $3, 7
lui $2, 15
lui $3, 8
mtlo $3
TAG563:
bne $3, $3, TAG564
sltiu $4, $3, 15
mflo $2
bne $2, $3, TAG564
TAG564:
addiu $1, $2, 12
sll $0, $0, 0
and $1, $2, $2
multu $2, $2
TAG565:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
sra $2, $1, 12
TAG566:
sh $2, 0($2)
srl $3, $2, 0
bgez $2, TAG567
slti $2, $3, 2
TAG567:
mfhi $1
slt $2, $2, $2
sltiu $3, $2, 14
blez $3, TAG568
TAG568:
or $4, $3, $3
div $4, $3
slti $4, $3, 15
lui $2, 3
TAG569:
addiu $4, $2, 10
sra $2, $4, 6
ori $2, $2, 4
mflo $1
TAG570:
bgtz $1, TAG571
mfhi $4
mflo $4
mfhi $2
TAG571:
xori $2, $2, 8
addu $2, $2, $2
lui $1, 11
mfhi $2
TAG572:
sll $2, $2, 9
beq $2, $2, TAG573
mtlo $2
sra $2, $2, 7
TAG573:
lbu $1, 0($2)
multu $1, $1
addu $1, $1, $1
sb $1, 0($1)
TAG574:
bltz $1, TAG575
lbu $2, 0($1)
add $4, $1, $1
xori $2, $2, 14
TAG575:
mtlo $2
mflo $3
mtlo $2
divu $3, $3
TAG576:
sh $3, 0($3)
mflo $4
xori $1, $3, 11
subu $4, $4, $1
TAG577:
sh $4, 4($4)
sb $4, 4($4)
blez $4, TAG578
mult $4, $4
TAG578:
lui $4, 7
lui $2, 5
mthi $4
srav $1, $4, $4
TAG579:
bne $1, $1, TAG580
sll $0, $0, 0
sra $4, $4, 9
lui $2, 0
TAG580:
sh $2, 0($2)
sra $4, $2, 7
lui $1, 8
mtlo $4
TAG581:
mfhi $3
mthi $3
multu $1, $1
sll $0, $0, 0
TAG582:
blez $4, TAG583
mfhi $4
divu $4, $4
lhu $1, 0($4)
TAG583:
sll $0, $0, 0
div $1, $1
or $4, $1, $1
blez $4, TAG584
TAG584:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG585:
mflo $4
sltiu $1, $4, 4
lui $3, 7
mtlo $3
TAG586:
sll $0, $0, 0
lui $1, 6
bgtz $3, TAG587
mthi $3
TAG587:
sltu $1, $1, $1
bgez $1, TAG588
multu $1, $1
mthi $1
TAG588:
mflo $2
mult $2, $1
lh $1, 0($2)
bgtz $1, TAG589
TAG589:
multu $1, $1
lbu $1, 0($1)
bgtz $1, TAG590
sh $1, 0($1)
TAG590:
sllv $3, $1, $1
lui $1, 6
multu $3, $3
bne $3, $1, TAG591
TAG591:
lui $2, 6
sll $0, $0, 0
mtlo $2
sltiu $3, $2, 9
TAG592:
beq $3, $3, TAG593
lb $4, 0($3)
sub $2, $3, $4
mtlo $3
TAG593:
sra $3, $2, 13
lw $2, 0($3)
slt $2, $2, $3
srlv $1, $2, $3
TAG594:
add $3, $1, $1
bgtz $1, TAG595
lhu $1, 0($3)
lb $3, 0($1)
TAG595:
sub $3, $3, $3
slti $4, $3, 10
addi $1, $3, 12
or $4, $3, $1
TAG596:
mult $4, $4
or $3, $4, $4
mtlo $3
addiu $4, $4, 7
TAG597:
lb $1, 0($4)
mult $4, $4
beq $1, $1, TAG598
mthi $1
TAG598:
lw $4, 0($1)
bgtz $1, TAG599
mult $1, $4
lui $4, 1
TAG599:
lui $1, 14
xor $3, $4, $4
mult $3, $4
multu $3, $3
TAG600:
lui $2, 8
sll $3, $2, 14
sra $1, $3, 10
multu $3, $1
TAG601:
lui $1, 0
beq $1, $1, TAG602
lh $1, 0($1)
lw $2, 0($1)
TAG602:
lui $3, 6
mtlo $2
addiu $2, $2, 10
lui $2, 8
TAG603:
beq $2, $2, TAG604
mthi $2
sw $2, 0($2)
mfhi $1
TAG604:
mfhi $3
mtlo $1
nor $4, $3, $3
mthi $1
TAG605:
mthi $4
sltu $3, $4, $4
beq $4, $3, TAG606
sll $0, $0, 0
TAG606:
mtlo $4
nor $1, $4, $4
sll $0, $0, 0
bgtz $1, TAG607
TAG607:
mthi $1
mfhi $4
xor $4, $4, $4
slti $1, $4, 2
TAG608:
blez $1, TAG609
lb $2, 0($1)
divu $2, $1
div $2, $1
TAG609:
sw $2, 0($2)
beq $2, $2, TAG610
mtlo $2
mtlo $2
TAG610:
or $2, $2, $2
mflo $3
mfhi $4
sh $3, 0($4)
TAG611:
mult $4, $4
lhu $2, 0($4)
multu $2, $2
bltz $4, TAG612
TAG612:
lui $4, 1
lui $3, 4
bgez $4, TAG613
mfhi $4
TAG613:
lui $3, 4
mtlo $4
slt $2, $3, $4
lbu $1, 0($2)
TAG614:
sb $1, 0($1)
multu $1, $1
sll $2, $1, 10
mult $2, $1
TAG615:
multu $2, $2
mult $2, $2
multu $2, $2
lh $3, 0($2)
TAG616:
bltz $3, TAG617
mflo $1
mflo $3
addu $2, $3, $3
TAG617:
lb $4, 0($2)
lui $1, 9
xor $2, $2, $4
lw $1, 0($2)
TAG618:
lb $4, 0($1)
mfhi $1
andi $1, $1, 10
sw $1, 0($1)
TAG619:
mfhi $2
mtlo $1
bne $1, $1, TAG620
sb $1, 0($2)
TAG620:
mthi $2
bne $2, $2, TAG621
lh $2, 0($2)
lui $4, 10
TAG621:
beq $4, $4, TAG622
mult $4, $4
lw $4, 0($4)
add $2, $4, $4
TAG622:
sb $2, 0($2)
nor $3, $2, $2
mtlo $3
mult $2, $2
TAG623:
sll $0, $0, 0
beq $3, $4, TAG624
mfhi $1
divu $3, $3
TAG624:
sltiu $4, $1, 11
divu $4, $4
mflo $2
blez $2, TAG625
TAG625:
mthi $2
sb $2, 0($2)
beq $2, $2, TAG626
sb $2, 0($2)
TAG626:
lui $1, 7
mtlo $2
divu $2, $1
xor $4, $2, $2
TAG627:
lhu $1, 0($4)
lb $1, -256($1)
nor $2, $1, $1
mfhi $1
TAG628:
sllv $3, $1, $1
lui $1, 8
ori $3, $3, 11
multu $3, $3
TAG629:
srl $2, $3, 3
lui $3, 0
lui $1, 13
lui $3, 11
TAG630:
mthi $3
sll $0, $0, 0
and $3, $3, $3
slti $3, $3, 6
TAG631:
mtlo $3
addiu $3, $3, 4
sw $3, 0($3)
divu $3, $3
TAG632:
bgtz $3, TAG633
mult $3, $3
blez $3, TAG633
sllv $4, $3, $3
TAG633:
mthi $4
sb $4, 0($4)
lui $2, 9
bne $4, $4, TAG634
TAG634:
srl $3, $2, 10
sh $2, -576($3)
srl $4, $2, 10
lui $3, 13
TAG635:
sll $0, $0, 0
mflo $1
lw $4, -576($4)
lui $2, 4
TAG636:
sll $0, $0, 0
beq $3, $2, TAG637
srav $1, $2, $2
multu $3, $2
TAG637:
sra $1, $1, 1
div $1, $1
bgtz $1, TAG638
divu $1, $1
TAG638:
slti $3, $1, 9
mfhi $3
lb $4, 0($3)
blez $3, TAG639
TAG639:
mthi $4
mthi $4
sllv $4, $4, $4
lui $3, 4
TAG640:
mflo $2
lb $4, 0($2)
bgtz $3, TAG641
nor $4, $2, $3
TAG641:
multu $4, $4
sll $0, $0, 0
bgtz $4, TAG642
sll $0, $0, 0
TAG642:
srl $3, $3, 13
lb $3, 0($3)
addu $4, $3, $3
sb $3, 0($3)
TAG643:
mflo $4
sll $0, $0, 0
sltiu $3, $4, 6
and $4, $4, $4
TAG644:
sll $0, $0, 0
mtlo $4
divu $4, $4
srlv $3, $4, $4
TAG645:
mult $3, $3
sllv $1, $3, $3
mflo $1
bgez $1, TAG646
TAG646:
multu $1, $1
mtlo $1
lui $1, 1
bgtz $1, TAG647
TAG647:
sll $0, $0, 0
beq $3, $3, TAG648
sll $0, $0, 0
beq $1, $3, TAG648
TAG648:
mfhi $2
sll $0, $0, 0
mflo $3
sll $3, $3, 1
TAG649:
mflo $4
sw $3, 0($4)
sb $3, 0($4)
subu $2, $3, $4
TAG650:
bgez $2, TAG651
sb $2, 0($2)
sh $2, 0($2)
div $2, $2
TAG651:
bne $2, $2, TAG652
lui $1, 4
bne $2, $2, TAG652
sh $2, 0($2)
TAG652:
sll $0, $0, 0
mflo $1
srlv $3, $1, $1
mult $1, $1
TAG653:
beq $3, $3, TAG654
srlv $1, $3, $3
lui $2, 15
blez $1, TAG654
TAG654:
nor $4, $2, $2
lh $1, 1($4)
subu $2, $4, $1
srav $2, $4, $4
TAG655:
bne $2, $2, TAG656
lw $3, 1($2)
beq $3, $2, TAG656
sh $3, 0($3)
TAG656:
mflo $1
mtlo $1
lui $2, 2
or $2, $3, $1
TAG657:
and $1, $2, $2
lh $4, 0($1)
lui $3, 5
mflo $1
TAG658:
mult $1, $1
mult $1, $1
lh $2, 0($1)
mflo $2
TAG659:
lui $1, 1
nor $1, $2, $2
lhu $1, 0($2)
mthi $2
TAG660:
and $1, $1, $1
lw $1, 0($1)
sltiu $3, $1, 7
mthi $3
TAG661:
div $3, $3
lb $3, 0($3)
sw $3, 0($3)
lui $2, 12
TAG662:
lui $3, 6
mflo $2
mflo $4
divu $2, $4
TAG663:
lui $2, 2
multu $2, $2
or $3, $2, $4
mfhi $4
TAG664:
mfhi $4
mflo $4
mthi $4
multu $4, $4
TAG665:
bne $4, $4, TAG666
xori $3, $4, 7
sb $4, 0($3)
div $3, $3
TAG666:
lbu $4, 0($3)
sltiu $2, $3, 13
addi $4, $4, 1
mthi $3
TAG667:
blez $4, TAG668
sb $4, 0($4)
divu $4, $4
beq $4, $4, TAG668
TAG668:
mfhi $3
multu $3, $3
mfhi $3
mult $3, $4
TAG669:
mthi $3
add $2, $3, $3
lhu $1, 0($3)
or $2, $1, $3
TAG670:
sll $0, $0, 0
blez $2, TAG671
mflo $4
beq $4, $4, TAG671
TAG671:
add $4, $4, $4
lui $2, 1
multu $4, $4
sb $4, 0($4)
TAG672:
mflo $3
lui $2, 6
beq $2, $2, TAG673
mult $3, $2
TAG673:
sll $0, $0, 0
mfhi $3
addu $3, $2, $3
xori $1, $3, 15
TAG674:
bne $1, $1, TAG675
sll $0, $0, 0
divu $1, $1
sll $2, $1, 12
TAG675:
mult $2, $2
mfhi $2
mult $2, $2
div $2, $2
TAG676:
sll $0, $0, 0
mult $2, $3
bgez $3, TAG677
mflo $1
TAG677:
bgtz $1, TAG678
mflo $4
sb $4, 0($4)
lui $1, 8
TAG678:
srl $1, $1, 13
sltu $2, $1, $1
mtlo $1
mflo $1
TAG679:
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG680
mult $1, $1
TAG680:
div $1, $1
subu $2, $1, $1
andi $2, $2, 3
ori $4, $1, 5
TAG681:
sll $0, $0, 0
bne $4, $3, TAG682
andi $3, $4, 0
lui $3, 2
TAG682:
mult $3, $3
slt $1, $3, $3
srl $3, $1, 10
bne $3, $3, TAG683
TAG683:
mflo $1
multu $1, $1
multu $3, $3
sb $1, 0($3)
TAG684:
beq $1, $1, TAG685
lbu $2, 0($1)
ori $1, $2, 9
beq $1, $1, TAG685
TAG685:
mtlo $1
mtlo $1
mfhi $3
mfhi $1
TAG686:
lh $2, 0($1)
sw $1, -256($2)
bgez $2, TAG687
lw $3, -256($2)
TAG687:
mfhi $4
slti $2, $4, 13
lui $4, 11
sb $4, 0($2)
TAG688:
multu $4, $4
mtlo $4
bltz $4, TAG689
lui $1, 13
TAG689:
mfhi $1
beq $1, $1, TAG690
lb $2, 0($1)
beq $1, $2, TAG690
TAG690:
mfhi $1
lb $3, 0($1)
and $1, $3, $3
sra $4, $1, 15
TAG691:
sw $4, 0($4)
lui $4, 12
bgez $4, TAG692
mthi $4
TAG692:
mthi $4
sll $0, $0, 0
mtlo $4
bgez $4, TAG693
TAG693:
mthi $4
sll $0, $0, 0
sw $4, 0($3)
mfhi $4
TAG694:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
xor $1, $4, $4
TAG695:
sllv $1, $1, $1
bgtz $1, TAG696
sra $3, $1, 4
lw $2, 0($3)
TAG696:
srlv $3, $2, $2
bltz $2, TAG697
nor $1, $2, $2
sll $0, $0, 0
TAG697:
sltiu $4, $1, 11
addu $2, $1, $4
mtlo $2
srav $3, $2, $4
TAG698:
mtlo $3
sra $4, $3, 6
sw $4, 12289($4)
sll $0, $0, 0
TAG699:
bne $4, $4, TAG700
mflo $2
sltu $2, $4, $4
beq $2, $2, TAG700
TAG700:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG701:
mult $1, $1
lui $2, 7
lui $4, 6
mult $2, $4
TAG702:
bltz $4, TAG703
or $2, $4, $4
mult $2, $2
bne $4, $2, TAG703
TAG703:
mthi $2
mtlo $2
mthi $2
mtlo $2
TAG704:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
mfhi $3
TAG705:
bltz $3, TAG706
sll $0, $0, 0
bgez $3, TAG706
mfhi $4
TAG706:
andi $3, $4, 15
lb $4, 0($3)
sw $4, 1($4)
lhu $4, 0($3)
TAG707:
sltiu $2, $4, 1
bgtz $2, TAG708
sb $2, 0($2)
sll $0, $0, 0
TAG708:
sltiu $1, $1, 0
addu $3, $1, $1
lui $2, 4
lui $1, 13
TAG709:
sltiu $1, $1, 10
add $2, $1, $1
sub $3, $1, $1
mthi $1
TAG710:
mflo $3
bne $3, $3, TAG711
subu $1, $3, $3
sll $0, $0, 0
TAG711:
lbu $4, 0($1)
sb $4, 0($4)
lw $3, 0($1)
addu $1, $1, $1
TAG712:
mult $1, $1
bne $1, $1, TAG713
mult $1, $1
lhu $2, 0($1)
TAG713:
sll $0, $0, 0
multu $1, $1
beq $1, $1, TAG714
subu $2, $2, $1
TAG714:
mthi $2
sll $0, $0, 0
bne $3, $2, TAG715
multu $3, $3
TAG715:
sw $3, 256($3)
slti $2, $3, 9
beq $2, $3, TAG716
sb $2, 0($2)
TAG716:
bltz $2, TAG717
mflo $2
sll $0, $0, 0
mthi $2
TAG717:
mthi $2
srlv $1, $2, $2
srlv $2, $1, $1
beq $2, $2, TAG718
TAG718:
multu $2, $2
sll $0, $0, 0
beq $2, $2, TAG719
subu $1, $2, $2
TAG719:
sb $1, 0($1)
addi $4, $1, 15
bne $1, $1, TAG720
add $1, $1, $1
TAG720:
beq $1, $1, TAG721
addi $3, $1, 5
mflo $4
addi $2, $4, 5
TAG721:
blez $2, TAG722
mflo $3
sll $4, $2, 11
subu $2, $2, $2
TAG722:
sh $2, 0($2)
slti $2, $2, 10
addiu $1, $2, 7
bltz $2, TAG723
TAG723:
addu $1, $1, $1
mtlo $1
lui $3, 10
divu $1, $3
TAG724:
sll $0, $0, 0
subu $3, $3, $3
srlv $1, $3, $3
lui $1, 3
TAG725:
subu $1, $1, $1
lui $2, 1
beq $2, $2, TAG726
addu $3, $1, $1
TAG726:
andi $2, $3, 4
beq $2, $3, TAG727
mthi $3
lb $1, 0($2)
TAG727:
mtlo $1
lui $2, 3
sll $0, $0, 0
bgtz $2, TAG728
TAG728:
mflo $2
beq $2, $2, TAG729
lw $1, 0($2)
multu $2, $1
TAG729:
addiu $1, $1, 10
mthi $1
mflo $2
mflo $2
TAG730:
bltz $2, TAG731
mthi $2
sll $4, $2, 1
mult $4, $2
TAG731:
mfhi $2
sh $4, 0($4)
lb $2, 0($4)
mthi $2
TAG732:
addiu $3, $2, 13
addiu $4, $3, 1
lui $4, 2
xori $2, $4, 8
TAG733:
mfhi $3
sll $0, $0, 0
mthi $2
or $1, $3, $3
TAG734:
bltz $1, TAG735
add $1, $1, $1
bgez $1, TAG735
multu $1, $1
TAG735:
lui $4, 13
lb $2, 0($1)
mthi $2
mult $4, $1
TAG736:
mthi $2
beq $2, $2, TAG737
lui $2, 5
lui $2, 3
TAG737:
mtlo $2
xori $2, $2, 12
sll $0, $0, 0
sll $0, $0, 0
TAG738:
sll $0, $0, 0
mfhi $2
mtlo $2
sb $2, 0($2)
TAG739:
mthi $2
mult $2, $2
lui $2, 9
mflo $3
TAG740:
bgez $3, TAG741
xor $1, $3, $3
sw $1, 0($3)
mtlo $1
TAG741:
mtlo $1
multu $1, $1
lui $1, 12
sll $2, $1, 13
TAG742:
mfhi $4
lui $3, 8
mflo $2
lhu $2, 0($2)
TAG743:
lh $3, 0($2)
mult $3, $3
sllv $2, $3, $2
bgtz $2, TAG744
TAG744:
add $2, $2, $2
mflo $4
bne $2, $2, TAG745
lh $1, 0($4)
TAG745:
blez $1, TAG746
addiu $4, $1, 2
sltu $3, $1, $1
bne $4, $3, TAG746
TAG746:
lhu $4, 0($3)
mthi $3
mult $4, $3
bne $3, $4, TAG747
TAG747:
mthi $4
srav $2, $4, $4
mthi $4
mthi $4
TAG748:
lbu $3, 0($2)
addu $1, $2, $2
mtlo $2
bgtz $1, TAG749
TAG749:
sb $1, 0($1)
nor $4, $1, $1
lb $3, 1($4)
sw $3, 1($4)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop