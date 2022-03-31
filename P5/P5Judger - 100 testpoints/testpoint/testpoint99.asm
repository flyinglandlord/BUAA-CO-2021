ori $1, $0, 1
ori $2, $0, 6
ori $3, $0, 4
ori $4, $0, 4
sw $4, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $1, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $2, 52($0)
sw $2, 56($0)
sw $1, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $3, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $4, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $2, 124($0)
addiu $1, $2, 11
mflo $2
andi $2, $1, 1
mflo $3
TAG1:
mflo $3
ori $1, $3, 3
bgtz $3, TAG2
multu $3, $3
TAG2:
lbu $2, 0($1)
mthi $1
beq $2, $1, TAG3
mflo $4
TAG3:
mtlo $4
mflo $3
nor $4, $3, $4
mfhi $1
TAG4:
lb $3, 0($1)
mthi $3
ori $1, $3, 12
lhu $1, 0($1)
TAG5:
multu $1, $1
sb $1, 0($1)
divu $1, $1
sllv $3, $1, $1
TAG6:
ori $4, $3, 14
blez $4, TAG7
mthi $3
bne $3, $3, TAG7
TAG7:
divu $4, $4
multu $4, $4
bltz $4, TAG8
mthi $4
TAG8:
multu $4, $4
mthi $4
sb $4, 0($4)
lb $3, 0($4)
TAG9:
beq $3, $3, TAG10
multu $3, $3
sra $4, $3, 9
mfhi $3
TAG10:
slti $4, $3, 3
blez $4, TAG11
mfhi $2
mfhi $2
TAG11:
lui $4, 11
lui $1, 13
mtlo $4
mult $1, $2
TAG12:
subu $1, $1, $1
lhu $3, 0($1)
sll $1, $3, 15
bgez $1, TAG13
TAG13:
mtlo $1
mthi $1
mtlo $1
mfhi $1
TAG14:
lui $4, 10
mfhi $2
mult $1, $4
addiu $2, $2, 10
TAG15:
bltz $2, TAG16
mflo $1
mfhi $3
srlv $4, $1, $2
TAG16:
nor $1, $4, $4
add $2, $4, $4
mflo $1
lhu $2, 0($2)
TAG17:
xor $1, $2, $2
bne $1, $1, TAG18
lui $1, 4
sll $0, $0, 0
TAG18:
mthi $1
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG19:
sll $0, $0, 0
bgez $1, TAG20
sll $0, $0, 0
lhu $2, 0($1)
TAG20:
divu $2, $2
mtlo $2
sltu $3, $2, $2
lui $2, 11
TAG21:
divu $2, $2
mthi $2
beq $2, $2, TAG22
mfhi $4
TAG22:
sltiu $1, $4, 14
lb $2, 0($1)
bne $4, $2, TAG23
lui $1, 3
TAG23:
lui $4, 15
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG24:
mflo $4
sll $0, $0, 0
mthi $4
mthi $4
TAG25:
slti $1, $4, 8
subu $4, $1, $1
multu $4, $4
lh $2, 0($4)
TAG26:
slti $2, $2, 7
sw $2, 0($2)
bne $2, $2, TAG27
mfhi $1
TAG27:
slt $3, $1, $1
lb $2, 0($3)
sltiu $2, $2, 12
mthi $2
TAG28:
srl $1, $2, 3
mthi $1
blez $2, TAG29
lbu $3, 0($1)
TAG29:
multu $3, $3
or $2, $3, $3
bgtz $2, TAG30
mflo $4
TAG30:
and $2, $4, $4
blez $4, TAG31
sb $2, 0($2)
div $2, $4
TAG31:
sw $2, 0($2)
mthi $2
and $2, $2, $2
mfhi $2
TAG32:
bgtz $2, TAG33
mtlo $2
or $2, $2, $2
mtlo $2
TAG33:
multu $2, $2
bltz $2, TAG34
srav $3, $2, $2
beq $2, $3, TAG34
TAG34:
subu $1, $3, $3
lw $3, 0($3)
lui $1, 12
bgtz $3, TAG35
TAG35:
sll $0, $0, 0
mfhi $2
bne $2, $1, TAG36
sll $0, $0, 0
TAG36:
addiu $4, $2, 1
lbu $1, 0($4)
ori $1, $4, 0
mtlo $1
TAG37:
mfhi $1
mthi $1
blez $1, TAG38
sltiu $3, $1, 13
TAG38:
slt $1, $3, $3
lui $3, 1
lui $3, 6
sll $0, $0, 0
TAG39:
sll $0, $0, 0
bne $2, $2, TAG40
sltu $2, $3, $2
srav $4, $2, $2
TAG40:
mtlo $4
bne $4, $4, TAG41
lui $4, 1
srl $3, $4, 7
TAG41:
mtlo $3
lbu $3, -512($3)
bgtz $3, TAG42
multu $3, $3
TAG42:
mfhi $2
or $4, $2, $3
multu $2, $3
sh $3, 0($2)
TAG43:
sltiu $4, $4, 10
lui $1, 4
bgez $4, TAG44
srl $4, $4, 13
TAG44:
lui $3, 9
lui $2, 15
mfhi $4
mfhi $2
TAG45:
mflo $3
sb $3, 0($3)
mfhi $2
slt $1, $2, $3
TAG46:
beq $1, $1, TAG47
mtlo $1
multu $1, $1
lw $4, 0($1)
TAG47:
multu $4, $4
mflo $4
sltu $4, $4, $4
addi $1, $4, 2
TAG48:
mtlo $1
sh $1, 0($1)
slti $3, $1, 5
lui $1, 1
TAG49:
addiu $2, $1, 10
sll $0, $0, 0
mfhi $2
mthi $3
TAG50:
mtlo $2
lui $2, 9
bne $2, $2, TAG51
slti $2, $2, 11
TAG51:
mfhi $2
sb $2, 0($2)
srav $2, $2, $2
lh $1, 0($2)
TAG52:
srl $1, $1, 3
sb $1, 0($1)
sltu $2, $1, $1
bne $1, $2, TAG53
TAG53:
sltu $4, $2, $2
mthi $4
addi $2, $2, 7
mflo $2
TAG54:
bgtz $2, TAG55
lh $4, 0($2)
ori $1, $2, 3
lb $2, -256($4)
TAG55:
sb $2, 0($2)
lbu $4, 0($2)
sh $4, 0($4)
mthi $4
TAG56:
bne $4, $4, TAG57
slti $2, $4, 0
addi $2, $2, 6
sll $2, $4, 6
TAG57:
multu $2, $2
lui $3, 4
mthi $3
sllv $1, $3, $2
TAG58:
bgtz $1, TAG59
sltu $4, $1, $1
beq $4, $1, TAG59
lui $4, 13
TAG59:
bgez $4, TAG60
mfhi $4
mult $4, $4
lh $3, 0($4)
TAG60:
bgtz $3, TAG61
addu $3, $3, $3
mflo $4
sub $4, $3, $3
TAG61:
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $1, 11
beq $1, $4, TAG62
TAG62:
sll $0, $0, 0
bltz $3, TAG63
sll $0, $0, 0
sll $0, $0, 0
TAG63:
mflo $3
beq $3, $3, TAG64
lh $4, 0($3)
lb $2, 0($3)
TAG64:
lui $4, 5
beq $4, $2, TAG65
sll $0, $0, 0
sll $0, $0, 0
TAG65:
mthi $2
multu $2, $2
multu $2, $2
lw $3, 0($2)
TAG66:
div $3, $3
sltu $4, $3, $3
mthi $4
sra $2, $4, 6
TAG67:
add $2, $2, $2
mult $2, $2
mflo $2
lui $1, 13
TAG68:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $1, 12
TAG69:
beq $1, $1, TAG70
addu $2, $1, $1
sw $2, 0($2)
lui $4, 3
TAG70:
mfhi $4
mfhi $2
lui $1, 11
blez $1, TAG71
TAG71:
mflo $4
sb $1, 0($4)
sll $0, $0, 0
or $1, $4, $1
TAG72:
slti $3, $1, 0
srav $1, $1, $3
sh $1, 0($3)
sh $1, 0($3)
TAG73:
subu $4, $1, $1
bgtz $1, TAG74
mtlo $4
mfhi $1
TAG74:
addu $2, $1, $1
blez $1, TAG75
sll $0, $0, 0
lui $1, 2
TAG75:
beq $1, $1, TAG76
lui $4, 8
beq $4, $4, TAG76
multu $4, $4
TAG76:
nor $1, $4, $4
multu $1, $1
lui $4, 0
mflo $4
TAG77:
or $2, $4, $4
divu $4, $2
bne $2, $4, TAG78
nor $2, $4, $4
TAG78:
slt $3, $2, $2
blez $2, TAG79
lui $2, 0
lui $3, 0
TAG79:
blez $3, TAG80
lui $3, 10
slti $3, $3, 14
slt $1, $3, $3
TAG80:
mfhi $4
sub $2, $4, $4
nor $1, $4, $2
multu $2, $4
TAG81:
beq $1, $1, TAG82
addu $3, $1, $1
sub $1, $3, $3
srav $4, $3, $1
TAG82:
multu $4, $4
mfhi $1
beq $1, $1, TAG83
sll $2, $1, 0
TAG83:
bne $2, $2, TAG84
mflo $3
lbu $3, 0($2)
mtlo $2
TAG84:
sw $3, 0($3)
lhu $4, 0($3)
lui $3, 0
multu $3, $3
TAG85:
sb $3, 0($3)
sll $1, $3, 11
multu $1, $3
mflo $3
TAG86:
lb $4, 0($3)
add $3, $3, $3
mfhi $1
mtlo $4
TAG87:
mflo $1
lui $2, 5
blez $1, TAG88
lui $2, 3
TAG88:
sll $0, $0, 0
xori $2, $2, 12
sll $0, $0, 0
mthi $2
TAG89:
bne $2, $2, TAG90
addiu $3, $2, 6
divu $2, $2
lui $4, 5
TAG90:
xor $1, $4, $4
multu $4, $1
sll $0, $0, 0
slti $3, $1, 5
TAG91:
mfhi $4
lui $1, 12
sll $0, $0, 0
lbu $2, 0($3)
TAG92:
mflo $2
mult $2, $2
srl $4, $2, 13
bne $4, $4, TAG93
TAG93:
lh $1, 0($4)
mult $1, $1
lui $2, 13
lui $1, 14
TAG94:
beq $1, $1, TAG95
mflo $1
mflo $3
blez $1, TAG95
TAG95:
lb $2, 0($3)
beq $2, $2, TAG96
mfhi $2
lui $1, 1
TAG96:
lui $2, 4
mfhi $2
addiu $1, $2, 10
blez $1, TAG97
TAG97:
mtlo $1
mtlo $1
lui $3, 12
sll $0, $0, 0
TAG98:
sll $0, $0, 0
sll $0, $0, 0
lhu $4, 0($2)
beq $4, $2, TAG99
TAG99:
mflo $4
mtlo $4
div $4, $4
addu $3, $4, $4
TAG100:
mthi $3
multu $3, $3
mtlo $3
mflo $4
TAG101:
lbu $3, 0($4)
sw $4, 0($4)
mthi $4
beq $4, $3, TAG102
TAG102:
lui $2, 15
lui $3, 0
addiu $1, $3, 2
beq $3, $1, TAG103
TAG103:
slti $4, $1, 10
mflo $2
sb $4, 0($2)
addiu $3, $4, 15
TAG104:
lh $1, 0($3)
mtlo $1
sw $1, 0($1)
sw $3, 0($1)
TAG105:
subu $3, $1, $1
mult $1, $3
sb $3, 0($1)
mtlo $3
TAG106:
sh $3, 0($3)
sw $3, 0($3)
beq $3, $3, TAG107
mthi $3
TAG107:
mfhi $1
srav $2, $1, $1
sw $3, 0($3)
mfhi $1
TAG108:
mflo $3
lui $3, 1
sll $0, $0, 0
sll $0, $0, 0
TAG109:
mult $2, $2
srlv $4, $2, $2
slt $2, $2, $2
mthi $4
TAG110:
lui $3, 9
sw $2, 0($2)
ori $1, $2, 4
blez $1, TAG111
TAG111:
divu $1, $1
sb $1, 0($1)
div $1, $1
addiu $2, $1, 9
TAG112:
or $1, $2, $2
lbu $4, 0($1)
lui $2, 9
sb $4, 0($1)
TAG113:
addu $3, $2, $2
mtlo $2
sll $0, $0, 0
lui $4, 13
TAG114:
beq $4, $4, TAG115
lui $1, 6
mthi $1
bne $1, $1, TAG115
TAG115:
mult $1, $1
beq $1, $1, TAG116
lui $4, 10
lhu $1, 0($4)
TAG116:
mthi $1
mtlo $1
bltz $1, TAG117
mtlo $1
TAG117:
mfhi $3
lui $3, 9
sll $4, $3, 1
xori $2, $3, 4
TAG118:
mthi $2
mult $2, $2
mthi $2
sll $0, $0, 0
TAG119:
lui $2, 3
sllv $1, $2, $2
mflo $2
multu $1, $2
TAG120:
mflo $2
andi $2, $2, 15
mflo $1
lui $1, 11
TAG121:
beq $1, $1, TAG122
mtlo $1
mthi $1
lui $4, 3
TAG122:
lui $1, 1
beq $4, $4, TAG123
sll $0, $0, 0
mthi $3
TAG123:
mtlo $3
subu $4, $3, $3
sw $4, 0($4)
sll $0, $0, 0
TAG124:
mflo $4
lui $4, 3
mflo $4
lw $2, 0($2)
TAG125:
addu $4, $2, $2
mflo $1
lui $4, 4
sll $0, $0, 0
TAG126:
multu $4, $4
addu $2, $4, $4
mflo $4
sltu $4, $4, $2
TAG127:
srlv $2, $4, $4
mflo $1
blez $2, TAG128
sb $2, 0($4)
TAG128:
lh $2, 0($1)
mthi $1
lui $2, 1
xori $4, $1, 10
TAG129:
sh $4, 0($4)
lh $4, 0($4)
lui $4, 13
sll $3, $4, 13
TAG130:
sll $0, $0, 0
bltz $3, TAG131
lui $1, 7
lw $1, 0($3)
TAG131:
mfhi $4
sb $4, 0($4)
andi $2, $4, 5
sh $1, 0($2)
TAG132:
mult $2, $2
sw $2, 0($2)
lb $3, 0($2)
mfhi $4
TAG133:
sh $4, 0($4)
lui $3, 1
addu $2, $3, $3
multu $3, $4
TAG134:
sll $0, $0, 0
mflo $1
mult $2, $1
blez $1, TAG135
TAG135:
mtlo $1
sw $1, 0($1)
beq $1, $1, TAG136
sltu $4, $1, $1
TAG136:
sh $4, 0($4)
mtlo $4
beq $4, $4, TAG137
ori $4, $4, 9
TAG137:
bne $4, $4, TAG138
slt $1, $4, $4
sb $4, 0($4)
nor $4, $4, $4
TAG138:
mfhi $1
bgtz $4, TAG139
sltiu $4, $4, 1
bgez $4, TAG139
TAG139:
sh $4, 0($4)
mfhi $2
mtlo $2
sh $4, 0($4)
TAG140:
beq $2, $2, TAG141
mtlo $2
mult $2, $2
div $2, $2
TAG141:
lb $4, 0($2)
bne $2, $4, TAG142
srlv $4, $2, $2
sh $4, 0($4)
TAG142:
bgez $4, TAG143
sltu $1, $4, $4
lh $3, 0($1)
andi $2, $4, 0
TAG143:
lh $2, 0($2)
bne $2, $2, TAG144
add $1, $2, $2
mthi $2
TAG144:
lui $3, 8
sll $1, $3, 1
bltz $1, TAG145
sll $0, $0, 0
TAG145:
mfhi $3
bltz $1, TAG146
sll $0, $0, 0
multu $2, $3
TAG146:
sltiu $1, $2, 15
addu $3, $2, $1
bltz $3, TAG147
divu $1, $3
TAG147:
sb $3, 0($3)
mtlo $3
lui $4, 2
mtlo $4
TAG148:
mthi $4
sltiu $4, $4, 1
mflo $2
srav $4, $4, $4
TAG149:
sllv $1, $4, $4
add $1, $1, $1
subu $1, $1, $1
lw $3, 0($1)
TAG150:
mfhi $2
lw $1, -256($3)
multu $1, $2
mfhi $4
TAG151:
sh $4, 0($4)
lui $2, 14
sra $3, $2, 15
lui $4, 2
TAG152:
mtlo $4
beq $4, $4, TAG153
or $1, $4, $4
xori $3, $4, 0
TAG153:
sw $3, 0($3)
mtlo $3
mflo $1
bne $1, $1, TAG154
TAG154:
divu $1, $1
multu $1, $1
mthi $1
multu $1, $1
TAG155:
sltu $4, $1, $1
bltz $1, TAG156
mult $4, $4
sw $1, 0($4)
TAG156:
ori $3, $4, 4
beq $3, $4, TAG157
lui $2, 8
divu $3, $3
TAG157:
bltz $2, TAG158
sll $0, $0, 0
lui $3, 12
nor $4, $3, $2
TAG158:
sll $0, $0, 0
mthi $2
lui $2, 14
beq $2, $4, TAG159
TAG159:
sll $0, $0, 0
bgtz $2, TAG160
nor $4, $2, $2
lw $1, 0($2)
TAG160:
sltiu $1, $1, 1
sltiu $4, $1, 14
mflo $4
sltiu $2, $1, 12
TAG161:
lbu $2, 0($2)
mthi $2
beq $2, $2, TAG162
lui $2, 8
TAG162:
sll $0, $0, 0
bgtz $3, TAG163
addiu $1, $2, 12
bgtz $3, TAG163
TAG163:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $1, 7
TAG164:
beq $1, $1, TAG165
mthi $1
lui $3, 7
mtlo $3
TAG165:
mthi $3
sra $3, $3, 15
bltz $3, TAG166
lui $4, 12
TAG166:
sltiu $2, $4, 8
blez $2, TAG167
mult $4, $2
mflo $2
TAG167:
multu $2, $2
lui $1, 2
mfhi $4
mult $1, $4
TAG168:
bgez $4, TAG169
multu $4, $4
sw $4, 0($4)
lhu $4, 0($4)
TAG169:
slt $4, $4, $4
sb $4, 0($4)
multu $4, $4
bltz $4, TAG170
TAG170:
sb $4, 0($4)
mflo $2
sh $2, 0($2)
blez $4, TAG171
TAG171:
mfhi $1
bne $1, $1, TAG172
lbu $2, 0($1)
slti $1, $1, 5
TAG172:
sltu $1, $1, $1
mflo $3
lui $3, 0
lhu $4, 0($1)
TAG173:
bgtz $4, TAG174
mult $4, $4
bgtz $4, TAG174
sb $4, 0($4)
TAG174:
beq $4, $4, TAG175
slti $3, $4, 13
sh $4, 0($4)
lui $4, 1
TAG175:
sh $4, 0($4)
beq $4, $4, TAG176
lui $3, 5
beq $3, $3, TAG176
TAG176:
mult $3, $3
srl $4, $3, 0
lui $2, 12
sll $0, $0, 0
TAG177:
mult $3, $3
lui $3, 13
subu $2, $3, $3
mult $3, $3
TAG178:
lh $2, 0($2)
lh $1, 0($2)
subu $2, $1, $2
sh $2, 0($2)
TAG179:
lbu $1, 0($2)
mult $1, $2
multu $1, $1
mflo $1
TAG180:
lw $3, 0($1)
bgtz $1, TAG181
addi $1, $1, 10
mult $1, $1
TAG181:
bgtz $1, TAG182
sh $1, 0($1)
sw $1, 0($1)
multu $1, $1
TAG182:
bgtz $1, TAG183
subu $3, $1, $1
bgez $3, TAG183
mult $1, $1
TAG183:
bne $3, $3, TAG184
multu $3, $3
mfhi $4
beq $3, $4, TAG184
TAG184:
mthi $4
lui $3, 13
lui $3, 15
div $4, $3
TAG185:
bgez $3, TAG186
lui $2, 7
bgez $2, TAG186
add $3, $3, $2
TAG186:
lui $2, 6
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG187:
lw $3, 0($4)
sw $4, 0($3)
mflo $2
addi $3, $4, 2
TAG188:
sh $3, 0($3)
bne $3, $3, TAG189
mtlo $3
sh $3, 0($3)
TAG189:
mflo $2
mflo $4
subu $2, $3, $2
mflo $1
TAG190:
mfhi $1
mfhi $2
beq $2, $2, TAG191
sllv $4, $2, $2
TAG191:
andi $2, $4, 6
beq $4, $2, TAG192
sltiu $2, $4, 8
blez $4, TAG192
TAG192:
mtlo $2
lui $1, 12
div $1, $1
sb $2, 0($2)
TAG193:
bne $1, $1, TAG194
sll $0, $0, 0
mflo $1
lb $4, 0($1)
TAG194:
bgtz $4, TAG195
lb $4, 0($4)
div $4, $4
divu $4, $4
TAG195:
mfhi $2
mtlo $2
sw $4, 0($2)
bne $2, $4, TAG196
TAG196:
lh $4, 0($2)
and $1, $4, $4
sb $1, 0($4)
mfhi $1
TAG197:
add $4, $1, $1
bne $1, $4, TAG198
lui $4, 10
xor $2, $4, $1
TAG198:
addu $1, $2, $2
lui $3, 11
divu $3, $2
mfhi $4
TAG199:
addiu $1, $4, 14
sll $0, $0, 0
bne $1, $1, TAG200
mflo $2
TAG200:
lb $2, 0($2)
addu $4, $2, $2
sltiu $4, $2, 12
mfhi $4
TAG201:
bgez $4, TAG202
mthi $4
mfhi $2
sub $3, $4, $2
TAG202:
sll $0, $0, 0
bne $3, $3, TAG203
subu $3, $3, $3
bgtz $4, TAG203
TAG203:
sb $3, 0($3)
mflo $1
bne $1, $1, TAG204
mult $1, $3
TAG204:
subu $3, $1, $1
bne $1, $1, TAG205
lhu $4, 0($3)
bne $4, $4, TAG205
TAG205:
sltiu $4, $4, 8
lui $2, 11
bgez $4, TAG206
subu $1, $4, $4
TAG206:
bne $1, $1, TAG207
sh $1, 0($1)
mtlo $1
lui $2, 4
TAG207:
slt $2, $2, $2
sub $3, $2, $2
bne $2, $2, TAG208
mtlo $2
TAG208:
xori $3, $3, 7
mult $3, $3
mflo $1
mfhi $1
TAG209:
sb $1, 0($1)
bne $1, $1, TAG210
sltiu $3, $1, 5
lbu $2, 0($3)
TAG210:
lui $4, 3
sra $4, $4, 12
mtlo $4
beq $4, $4, TAG211
TAG211:
sw $4, 0($4)
andi $1, $4, 15
mtlo $4
mtlo $1
TAG212:
sh $1, 0($1)
mtlo $1
beq $1, $1, TAG213
sb $1, 0($1)
TAG213:
lui $3, 15
sltu $3, $3, $3
multu $3, $3
mflo $1
TAG214:
bltz $1, TAG215
sb $1, 0($1)
lui $4, 11
sw $1, 0($1)
TAG215:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
TAG216:
mfhi $2
sb $1, 0($2)
mfhi $2
sh $2, 0($2)
TAG217:
mtlo $2
mthi $2
mthi $2
mthi $2
TAG218:
sll $3, $2, 3
xori $4, $3, 11
sb $4, 0($3)
bltz $2, TAG219
TAG219:
sb $4, 0($4)
bne $4, $4, TAG220
addiu $1, $4, 8
sb $1, 0($1)
TAG220:
sb $1, 0($1)
srl $3, $1, 13
lw $3, 0($3)
sltu $2, $3, $1
TAG221:
bgez $2, TAG222
sb $2, 0($2)
addu $2, $2, $2
or $4, $2, $2
TAG222:
bne $4, $4, TAG223
sb $4, 0($4)
div $4, $4
mflo $3
TAG223:
blez $3, TAG224
mflo $2
slti $1, $3, 14
mthi $2
TAG224:
sllv $2, $1, $1
srl $2, $1, 0
lui $2, 5
lui $1, 0
TAG225:
lhu $3, 0($1)
sltiu $3, $3, 10
mult $3, $3
mfhi $4
TAG226:
sh $4, 0($4)
sw $4, 0($4)
mult $4, $4
srlv $1, $4, $4
TAG227:
lui $2, 9
sub $3, $2, $1
addiu $4, $3, 7
bne $3, $4, TAG228
TAG228:
addiu $1, $4, 3
blez $1, TAG229
mfhi $1
mflo $3
TAG229:
mtlo $3
mthi $3
or $2, $3, $3
addi $3, $2, 1
TAG230:
bne $3, $3, TAG231
sltiu $2, $3, 5
lbu $1, 0($2)
lbu $2, 0($3)
TAG231:
sw $2, 0($2)
mthi $2
add $4, $2, $2
sh $4, 0($2)
TAG232:
sh $4, 0($4)
bltz $4, TAG233
addiu $4, $4, 14
lui $4, 0
TAG233:
multu $4, $4
lh $3, 0($4)
lui $4, 2
bne $4, $4, TAG234
TAG234:
addiu $2, $4, 2
sll $0, $0, 0
sra $1, $2, 5
sll $0, $0, 0
TAG235:
bgtz $2, TAG236
sll $0, $0, 0
lui $1, 7
sra $4, $4, 0
TAG236:
sll $0, $0, 0
addu $1, $3, $3
mtlo $4
bne $4, $3, TAG237
TAG237:
andi $2, $1, 14
multu $2, $2
sw $2, 0($1)
mtlo $2
TAG238:
bne $2, $2, TAG239
lbu $1, 0($2)
sh $2, 0($1)
bne $1, $1, TAG239
TAG239:
mfhi $2
beq $2, $1, TAG240
mult $1, $1
mflo $2
TAG240:
or $3, $2, $2
sll $4, $2, 12
beq $3, $2, TAG241
lbu $1, 0($3)
TAG241:
mtlo $1
sh $1, 0($1)
addi $4, $1, 3
subu $1, $1, $1
TAG242:
mflo $3
mult $1, $3
mfhi $2
and $2, $2, $2
TAG243:
blez $2, TAG244
sll $1, $2, 1
lui $1, 9
lhu $3, 0($1)
TAG244:
bltz $3, TAG245
lui $1, 13
mult $3, $3
beq $3, $3, TAG245
TAG245:
mtlo $1
mflo $1
lui $4, 10
mult $1, $1
TAG246:
mthi $4
bltz $4, TAG247
mfhi $3
bgtz $4, TAG247
TAG247:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
sh $4, 0($2)
TAG248:
lui $2, 10
srav $4, $2, $2
bgtz $2, TAG249
mtlo $2
TAG249:
bgtz $4, TAG250
sll $0, $0, 0
mfhi $3
sh $4, 0($3)
TAG250:
sll $4, $3, 7
mtlo $3
beq $4, $4, TAG251
mflo $2
TAG251:
divu $2, $2
sll $0, $0, 0
mtlo $2
lui $4, 1
TAG252:
and $3, $4, $4
lui $3, 1
bne $4, $4, TAG253
ori $2, $3, 5
TAG253:
sltiu $4, $2, 1
mfhi $1
lb $2, 0($1)
mthi $2
TAG254:
multu $2, $2
mthi $2
mult $2, $2
beq $2, $2, TAG255
TAG255:
sltu $3, $2, $2
mtlo $3
lhu $4, 0($2)
mtlo $2
TAG256:
sh $4, 0($4)
addiu $3, $4, 6
bgez $4, TAG257
sll $4, $4, 8
TAG257:
xor $3, $4, $4
andi $2, $4, 6
bne $4, $2, TAG258
slt $1, $4, $2
TAG258:
bne $1, $1, TAG259
mult $1, $1
slt $1, $1, $1
srav $2, $1, $1
TAG259:
sw $2, 0($2)
beq $2, $2, TAG260
mthi $2
mtlo $2
TAG260:
lw $1, 0($2)
bgtz $1, TAG261
sra $2, $1, 15
mfhi $3
TAG261:
srl $1, $3, 12
sh $3, 0($1)
mtlo $3
sltu $1, $3, $3
TAG262:
mflo $1
sh $1, 0($1)
bne $1, $1, TAG263
lh $2, 0($1)
TAG263:
mfhi $1
bgtz $2, TAG264
multu $2, $1
sw $1, 0($1)
TAG264:
sh $1, 0($1)
sltiu $3, $1, 3
lui $4, 6
lbu $4, 0($3)
TAG265:
mthi $4
lui $4, 4
mfhi $2
lui $4, 7
TAG266:
sll $0, $0, 0
bne $4, $4, TAG267
sll $0, $0, 0
srl $4, $3, 7
TAG267:
sub $3, $4, $4
mthi $3
lw $1, 0($4)
mthi $4
TAG268:
bgez $1, TAG269
sh $1, 0($1)
slt $2, $1, $1
mfhi $3
TAG269:
multu $3, $3
mfhi $4
mthi $3
mflo $1
TAG270:
sb $1, 0($1)
bne $1, $1, TAG271
addu $3, $1, $1
mflo $2
TAG271:
mult $2, $2
multu $2, $2
bltz $2, TAG272
sh $2, 0($2)
TAG272:
lbu $4, 0($2)
bgtz $2, TAG273
subu $4, $2, $4
srl $3, $2, 0
TAG273:
sub $1, $3, $3
mult $1, $3
lhu $2, 0($3)
mthi $1
TAG274:
bne $2, $2, TAG275
srlv $3, $2, $2
blez $3, TAG275
mult $2, $3
TAG275:
srl $4, $3, 13
or $2, $4, $4
mfhi $3
mtlo $3
TAG276:
andi $1, $3, 11
sh $3, 0($3)
mflo $4
bne $4, $3, TAG277
TAG277:
multu $4, $4
mflo $1
lb $2, 0($1)
bne $2, $1, TAG278
TAG278:
srav $2, $2, $2
bgtz $2, TAG279
lb $3, 0($2)
lhu $4, 0($2)
TAG279:
mtlo $4
mult $4, $4
sltu $3, $4, $4
sh $3, 0($4)
TAG280:
xori $3, $3, 4
addu $4, $3, $3
sllv $1, $4, $3
lw $4, 0($4)
TAG281:
sll $0, $0, 0
beq $4, $2, TAG282
mfhi $4
or $1, $2, $2
TAG282:
sra $3, $1, 13
lhu $1, 0($1)
mtlo $1
lui $2, 15
TAG283:
mtlo $2
sll $0, $0, 0
beq $2, $2, TAG284
sll $0, $0, 0
TAG284:
div $2, $2
beq $2, $2, TAG285
sll $0, $0, 0
bltz $2, TAG285
TAG285:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
and $3, $2, $2
TAG286:
divu $3, $3
mfhi $1
xor $3, $3, $3
multu $3, $3
TAG287:
subu $4, $3, $3
mfhi $2
mfhi $4
lbu $4, 0($2)
TAG288:
mthi $4
lui $2, 6
sltiu $4, $4, 11
mult $4, $2
TAG289:
lui $1, 1
mflo $3
subu $3, $3, $4
mtlo $3
TAG290:
mthi $3
mfhi $4
bgez $4, TAG291
sll $0, $0, 0
TAG291:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
mfhi $4
TAG292:
sltiu $3, $4, 11
mflo $2
sb $3, 0($3)
srav $4, $3, $3
TAG293:
lb $2, 0($4)
sw $4, 0($2)
beq $4, $4, TAG294
lhu $4, 0($4)
TAG294:
mult $4, $4
bgtz $4, TAG295
mtlo $4
lui $2, 6
TAG295:
sll $0, $0, 0
lh $2, 0($4)
lui $2, 3
bltz $2, TAG296
TAG296:
sllv $1, $2, $2
mfhi $2
slt $3, $1, $1
mthi $3
TAG297:
ori $2, $3, 7
multu $3, $3
mtlo $2
mtlo $3
TAG298:
mflo $1
lb $2, 0($2)
lui $4, 15
lui $3, 15
TAG299:
slt $3, $3, $3
bne $3, $3, TAG300
mflo $1
sw $3, 0($3)
TAG300:
lui $1, 4
subu $1, $1, $1
bne $1, $1, TAG301
lh $3, 0($1)
TAG301:
srav $1, $3, $3
andi $1, $3, 5
xori $4, $3, 9
mthi $3
TAG302:
sb $4, 0($4)
lb $1, 0($4)
mthi $1
multu $1, $4
TAG303:
mult $1, $1
sb $1, 0($1)
multu $1, $1
srav $4, $1, $1
TAG304:
multu $4, $4
mult $4, $4
sb $4, 0($4)
sw $4, 0($4)
TAG305:
lhu $1, 0($4)
lhu $4, 0($4)
sh $4, 0($4)
mfhi $2
TAG306:
add $4, $2, $2
mfhi $3
mult $2, $3
beq $2, $3, TAG307
TAG307:
lw $4, 0($3)
lh $3, 0($3)
sw $3, 0($3)
mult $3, $3
TAG308:
bne $3, $3, TAG309
sh $3, 0($3)
addi $1, $3, 8
sw $3, 0($1)
TAG309:
lh $1, 0($1)
slt $1, $1, $1
bgez $1, TAG310
mflo $2
TAG310:
slt $2, $2, $2
sltu $2, $2, $2
srl $3, $2, 5
lui $4, 0
TAG311:
lw $1, 0($4)
lui $1, 9
beq $1, $4, TAG312
mthi $1
TAG312:
bgez $1, TAG313
mthi $1
divu $1, $1
lui $1, 14
TAG313:
sll $0, $0, 0
mflo $1
bne $2, $2, TAG314
xori $1, $1, 7
TAG314:
bltz $1, TAG315
mtlo $1
addiu $3, $1, 11
bgtz $3, TAG315
TAG315:
div $3, $3
mult $3, $3
sh $3, 0($3)
mflo $1
TAG316:
and $2, $1, $1
xori $1, $2, 11
sw $2, -335($1)
lw $4, -324($2)
TAG317:
xor $2, $4, $4
sw $2, 0($2)
lw $1, -324($4)
lb $1, -324($4)
TAG318:
mfhi $4
sh $1, 0($4)
sltiu $4, $4, 10
blez $4, TAG319
TAG319:
mult $4, $4
mult $4, $4
lb $3, 0($4)
lui $2, 4
TAG320:
sll $0, $0, 0
mthi $2
srlv $3, $2, $2
sll $0, $0, 0
TAG321:
slti $2, $1, 7
srav $2, $1, $2
multu $1, $2
blez $1, TAG322
TAG322:
lhu $1, 0($2)
multu $2, $2
mflo $1
mfhi $4
TAG323:
mult $4, $4
addu $3, $4, $4
sb $3, 0($4)
bltz $3, TAG324
TAG324:
mtlo $3
bgez $3, TAG325
mflo $1
sh $1, 0($3)
TAG325:
mflo $3
nor $3, $1, $1
sra $1, $1, 6
multu $3, $1
TAG326:
blez $1, TAG327
mflo $1
lw $3, 0($1)
div $1, $1
TAG327:
slt $4, $3, $3
multu $3, $4
div $4, $3
bltz $4, TAG328
TAG328:
lh $2, 0($4)
beq $2, $2, TAG329
lui $3, 10
multu $4, $4
TAG329:
beq $3, $3, TAG330
subu $4, $3, $3
andi $1, $4, 5
mult $1, $4
TAG330:
slt $3, $1, $1
sltiu $4, $3, 6
mfhi $3
slt $1, $1, $1
TAG331:
andi $3, $1, 1
slt $2, $1, $3
mfhi $4
lui $4, 3
TAG332:
beq $4, $4, TAG333
mflo $2
lui $1, 14
lh $2, 0($1)
TAG333:
bgez $2, TAG334
mfhi $1
sh $2, 0($2)
blez $1, TAG334
TAG334:
srl $2, $1, 11
bgtz $2, TAG335
mfhi $2
beq $1, $1, TAG335
TAG335:
sh $2, 0($2)
mflo $3
sh $3, 0($3)
mult $2, $2
TAG336:
slti $2, $3, 12
divu $2, $2
addu $2, $2, $3
bgez $2, TAG337
TAG337:
mtlo $2
bltz $2, TAG338
andi $1, $2, 10
bltz $2, TAG338
TAG338:
lhu $1, 0($1)
sltiu $3, $1, 3
sll $4, $3, 11
beq $4, $3, TAG339
TAG339:
andi $3, $4, 5
sra $1, $3, 10
multu $4, $3
div $1, $4
TAG340:
beq $1, $1, TAG341
mflo $3
mfhi $3
multu $1, $3
TAG341:
sltiu $2, $3, 10
bne $3, $2, TAG342
lui $4, 7
mthi $2
TAG342:
divu $4, $4
mflo $3
sltiu $4, $3, 4
mfhi $3
TAG343:
blez $3, TAG344
xori $1, $3, 15
lui $3, 2
sw $1, 0($3)
TAG344:
lbu $3, 0($3)
multu $3, $3
lui $1, 13
mthi $1
TAG345:
mtlo $1
beq $1, $1, TAG346
sll $0, $0, 0
mtlo $1
TAG346:
mult $1, $1
mflo $1
sb $1, 0($1)
mflo $4
TAG347:
sra $2, $4, 15
lui $1, 6
sw $4, 0($2)
sw $2, 0($2)
TAG348:
sll $0, $0, 0
bne $3, $3, TAG349
addu $3, $3, $3
beq $3, $3, TAG349
TAG349:
addi $4, $3, 4
sh $3, 0($4)
beq $3, $4, TAG350
lui $4, 1
TAG350:
sll $0, $0, 0
srl $3, $4, 10
mfhi $2
bgtz $2, TAG351
TAG351:
sb $2, -169($2)
srav $1, $2, $2
addiu $3, $1, 8
sh $2, 0($3)
TAG352:
lui $3, 11
divu $3, $3
mflo $2
mtlo $3
TAG353:
mult $2, $2
addu $4, $2, $2
sh $2, 0($4)
sh $4, 0($4)
TAG354:
multu $4, $4
mthi $4
sh $4, 0($4)
beq $4, $4, TAG355
TAG355:
srl $3, $4, 11
sw $3, 0($3)
sltiu $4, $4, 9
mthi $4
TAG356:
mtlo $4
blez $4, TAG357
mtlo $4
addu $4, $4, $4
TAG357:
mthi $4
addu $4, $4, $4
ori $2, $4, 14
sb $4, 0($2)
TAG358:
addu $4, $2, $2
slt $3, $2, $4
sw $3, 0($4)
mthi $4
TAG359:
mflo $2
sb $3, 0($2)
nor $2, $2, $3
mfhi $1
TAG360:
subu $3, $1, $1
multu $1, $1
lui $4, 2
ori $3, $4, 6
TAG361:
sll $0, $0, 0
sll $2, $3, 0
mflo $2
mult $2, $3
TAG362:
sllv $3, $2, $2
lui $2, 14
divu $2, $2
mfhi $1
TAG363:
sub $1, $1, $1
lbu $1, 0($1)
sllv $3, $1, $1
sw $1, 0($1)
TAG364:
bgtz $3, TAG365
sw $3, 0($3)
lw $4, 0($3)
lui $2, 3
TAG365:
sll $0, $0, 0
mtlo $2
srav $1, $2, $2
addiu $4, $2, 10
TAG366:
lui $3, 6
div $3, $4
subu $1, $3, $3
beq $3, $3, TAG367
TAG367:
mfhi $3
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
TAG368:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG369:
lbu $2, 0($1)
sll $3, $1, 1
sll $1, $1, 11
bne $1, $1, TAG370
TAG370:
subu $3, $1, $1
mult $3, $3
addiu $3, $1, 7
mtlo $3
TAG371:
slti $4, $3, 1
addu $1, $3, $3
mthi $1
mflo $2
TAG372:
sw $2, -2055($2)
srl $3, $2, 4
sllv $3, $3, $3
lui $1, 4
TAG373:
sll $0, $0, 0
mfhi $4
andi $4, $1, 8
srlv $2, $1, $4
TAG374:
lui $4, 11
beq $2, $4, TAG375
sll $0, $0, 0
mtlo $4
TAG375:
mthi $1
mfhi $3
div $3, $1
mflo $1
TAG376:
srlv $3, $1, $1
addu $2, $1, $3
mthi $2
lw $2, 0($3)
TAG377:
sh $2, -2055($2)
divu $2, $2
blez $2, TAG378
lw $3, -2055($2)
TAG378:
sll $0, $0, 0
lui $4, 13
lh $4, -2055($3)
mthi $4
TAG379:
andi $4, $4, 11
divu $4, $4
div $4, $4
bne $4, $4, TAG380
TAG380:
or $3, $4, $4
beq $3, $4, TAG381
divu $3, $3
addi $4, $4, 8
TAG381:
beq $4, $4, TAG382
lui $2, 7
lui $4, 15
mfhi $3
TAG382:
lui $1, 14
mflo $4
beq $4, $1, TAG383
div $3, $4
TAG383:
mflo $3
lui $4, 1
mfhi $4
sh $4, 0($4)
TAG384:
xor $3, $4, $4
bgez $3, TAG385
mthi $4
mfhi $1
TAG385:
sll $0, $0, 0
sll $0, $0, 0
lh $3, 0($4)
addiu $4, $1, 14
TAG386:
sltiu $2, $4, 1
sll $0, $0, 0
sh $3, 0($2)
sll $0, $0, 0
TAG387:
sh $2, 0($2)
multu $2, $2
mfhi $3
mfhi $1
TAG388:
add $1, $1, $1
multu $1, $1
mtlo $1
bne $1, $1, TAG389
TAG389:
lw $1, 0($1)
blez $1, TAG390
lbu $3, 0($1)
ori $1, $1, 2
TAG390:
addu $1, $1, $1
mthi $1
lui $2, 0
bne $1, $1, TAG391
TAG391:
srlv $2, $2, $2
bltz $2, TAG392
lui $2, 7
blez $2, TAG392
TAG392:
mthi $2
lui $4, 13
mthi $4
mult $4, $4
TAG393:
bgtz $4, TAG394
mtlo $4
bne $4, $4, TAG394
mthi $4
TAG394:
mflo $3
sll $0, $0, 0
xor $2, $3, $3
mtlo $2
TAG395:
lui $4, 5
sll $0, $0, 0
mthi $4
bgtz $4, TAG396
TAG396:
addiu $1, $2, 13
sra $2, $1, 3
subu $2, $1, $2
mflo $2
TAG397:
beq $2, $2, TAG398
lh $1, 0($2)
lbu $1, 0($1)
sw $1, 0($1)
TAG398:
nor $4, $1, $1
mfhi $3
sll $0, $0, 0
subu $2, $3, $1
TAG399:
sll $0, $0, 0
slti $2, $2, 15
bne $1, $2, TAG400
lui $2, 10
TAG400:
sll $0, $0, 0
sllv $4, $2, $2
beq $4, $4, TAG401
sll $0, $0, 0
TAG401:
beq $4, $4, TAG402
mult $4, $4
or $1, $4, $4
multu $4, $1
TAG402:
sb $1, 0($1)
lui $2, 1
sub $1, $2, $1
blez $1, TAG403
TAG403:
sll $0, $0, 0
and $4, $1, $1
addiu $4, $1, 4
sll $0, $0, 0
TAG404:
ori $2, $1, 5
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG405:
mtlo $2
bltz $2, TAG406
lui $1, 6
mult $1, $2
TAG406:
beq $1, $1, TAG407
sll $0, $0, 0
mtlo $1
div $1, $1
TAG407:
mfhi $1
beq $1, $1, TAG408
slti $4, $1, 15
addiu $4, $1, 6
TAG408:
mthi $4
lbu $3, 0($4)
slti $1, $4, 7
sb $3, 0($1)
TAG409:
div $1, $1
xori $3, $1, 6
multu $3, $3
mflo $1
TAG410:
bgez $1, TAG411
mthi $1
beq $1, $1, TAG411
lui $3, 13
TAG411:
mthi $3
multu $3, $3
mflo $1
lui $3, 0
TAG412:
bltz $3, TAG413
sltiu $3, $3, 7
mflo $1
sltiu $2, $3, 13
TAG413:
mfhi $3
div $2, $2
lbu $1, 0($3)
mfhi $2
TAG414:
lhu $3, 0($2)
mtlo $2
mult $2, $2
bgtz $2, TAG415
TAG415:
sb $3, 0($3)
sb $3, 0($3)
sh $3, 0($3)
bne $3, $3, TAG416
TAG416:
mflo $1
sh $3, 0($3)
ori $4, $1, 1
sllv $3, $3, $1
TAG417:
sw $3, 0($3)
subu $2, $3, $3
lbu $2, 0($3)
and $4, $2, $3
TAG418:
bgtz $4, TAG419
mflo $1
addiu $4, $4, 15
ori $3, $4, 2
TAG419:
lui $4, 7
mflo $1
mthi $1
sh $1, 0($1)
TAG420:
lui $1, 1
lui $1, 3
lui $1, 9
sll $0, $0, 0
TAG421:
mflo $3
bgtz $3, TAG422
sh $3, 0($3)
bne $3, $3, TAG422
TAG422:
lb $4, 0($3)
mtlo $4
mtlo $3
sll $2, $3, 1
TAG423:
mtlo $2
and $2, $2, $2
lh $4, 0($2)
lb $4, 0($2)
TAG424:
lb $1, 0($4)
mfhi $4
mflo $2
beq $4, $4, TAG425
TAG425:
sub $3, $2, $2
sb $2, 0($3)
mult $3, $2
bgtz $3, TAG426
TAG426:
multu $3, $3
mfhi $4
xori $4, $4, 5
sb $4, 0($4)
TAG427:
bgez $4, TAG428
mthi $4
mfhi $3
lw $4, 0($4)
TAG428:
sltiu $1, $4, 5
addiu $2, $1, 0
lhu $2, 0($1)
ori $3, $1, 5
TAG429:
ori $1, $3, 15
mfhi $3
mult $1, $1
sb $1, 0($1)
TAG430:
bne $3, $3, TAG431
sra $3, $3, 8
bltz $3, TAG431
lhu $3, 0($3)
TAG431:
mtlo $3
lui $3, 4
bne $3, $3, TAG432
mthi $3
TAG432:
blez $3, TAG433
sll $0, $0, 0
mfhi $1
bgez $3, TAG433
TAG433:
sltiu $1, $1, 13
divu $1, $1
mtlo $1
mflo $3
TAG434:
bne $3, $3, TAG435
lbu $4, 0($3)
mflo $4
sltiu $3, $4, 0
TAG435:
lb $3, 0($3)
lw $2, 0($3)
sra $1, $3, 1
beq $3, $3, TAG436
TAG436:
mthi $1
slt $1, $1, $1
srav $1, $1, $1
sw $1, 0($1)
TAG437:
multu $1, $1
lbu $3, 0($1)
lw $4, 0($1)
bne $1, $1, TAG438
TAG438:
lui $1, 9
mfhi $1
mfhi $4
lui $3, 3
TAG439:
bltz $3, TAG440
ori $2, $3, 2
mflo $3
srlv $2, $3, $2
TAG440:
andi $4, $2, 3
bltz $2, TAG441
multu $2, $2
addu $3, $4, $4
TAG441:
multu $3, $3
lui $1, 1
addi $1, $3, 13
multu $1, $1
TAG442:
lbu $1, 0($1)
sb $1, 0($1)
mult $1, $1
lhu $2, 0($1)
TAG443:
multu $2, $2
andi $3, $2, 7
sh $3, 0($2)
bne $3, $2, TAG444
TAG444:
srl $4, $3, 0
lh $1, 0($3)
beq $1, $1, TAG445
lh $3, 0($4)
TAG445:
addu $3, $3, $3
lui $2, 8
slt $1, $3, $3
mfhi $3
TAG446:
sw $3, 0($3)
multu $3, $3
lh $3, 0($3)
blez $3, TAG447
TAG447:
sb $3, 0($3)
srl $2, $3, 7
multu $3, $3
lui $4, 9
TAG448:
srl $4, $4, 13
addu $2, $4, $4
srlv $2, $2, $4
ori $4, $2, 6
TAG449:
sra $4, $4, 12
bgez $4, TAG450
sw $4, 0($4)
mthi $4
TAG450:
bgez $4, TAG451
addu $4, $4, $4
slt $3, $4, $4
lui $2, 12
TAG451:
sllv $4, $2, $2
mthi $4
bne $4, $4, TAG452
srl $1, $2, 3
TAG452:
beq $1, $1, TAG453
lui $1, 4
sll $2, $1, 4
bltz $2, TAG453
TAG453:
srav $3, $2, $2
bltz $3, TAG454
sra $3, $2, 15
multu $2, $3
TAG454:
mult $3, $3
sw $3, 0($3)
multu $3, $3
bgez $3, TAG455
TAG455:
sb $3, 0($3)
mtlo $3
sw $3, 0($3)
mult $3, $3
TAG456:
lh $4, 0($3)
lb $3, 0($4)
sb $4, 0($3)
lhu $3, 0($4)
TAG457:
sll $2, $3, 7
lh $2, 0($2)
lui $3, 0
multu $2, $3
TAG458:
mfhi $4
mfhi $2
mflo $1
slt $1, $4, $1
TAG459:
blez $1, TAG460
lh $4, 0($1)
srlv $3, $1, $4
lui $3, 13
TAG460:
lbu $3, 0($3)
multu $3, $3
sb $3, 0($3)
mult $3, $3
TAG461:
multu $3, $3
add $3, $3, $3
lb $2, 0($3)
beq $3, $3, TAG462
TAG462:
lui $3, 3
mfhi $1
mult $1, $1
lhu $4, 0($1)
TAG463:
mthi $4
mult $4, $4
lb $4, 0($4)
lb $4, 0($4)
TAG464:
bgez $4, TAG465
mfhi $1
div $4, $4
bgez $4, TAG465
TAG465:
sh $1, 0($1)
bne $1, $1, TAG466
mfhi $3
mtlo $1
TAG466:
bne $3, $3, TAG467
lh $1, 0($3)
bne $1, $3, TAG467
srl $2, $3, 8
TAG467:
mflo $2
mfhi $3
bgtz $2, TAG468
mflo $2
TAG468:
mult $2, $2
lui $1, 4
bne $1, $1, TAG469
div $1, $1
TAG469:
lui $2, 3
xori $4, $2, 12
sll $0, $0, 0
mflo $4
TAG470:
beq $4, $4, TAG471
sb $4, 0($4)
sb $4, 0($4)
lui $4, 12
TAG471:
lbu $4, 0($4)
sb $4, 0($4)
slti $2, $4, 4
bltz $2, TAG472
TAG472:
sb $2, 0($2)
beq $2, $2, TAG473
mflo $4
mthi $4
TAG473:
sll $3, $4, 4
mthi $3
lb $1, 0($4)
addiu $1, $3, 2
TAG474:
mthi $1
mthi $1
bltz $1, TAG475
lhu $2, 0($1)
TAG475:
mthi $2
blez $2, TAG476
lb $4, 0($2)
mult $2, $4
TAG476:
mtlo $4
lui $2, 15
xori $3, $2, 9
mult $4, $3
TAG477:
bgez $3, TAG478
mthi $3
sh $3, 0($3)
srl $2, $3, 5
TAG478:
mtlo $2
lui $2, 3
lui $4, 8
xor $3, $2, $2
TAG479:
mult $3, $3
lb $4, 0($3)
addiu $4, $3, 3
lui $3, 4
TAG480:
divu $3, $3
lui $3, 14
ori $1, $3, 9
mtlo $1
TAG481:
lui $3, 5
mfhi $1
lb $4, 0($1)
sllv $4, $3, $4
TAG482:
sllv $2, $4, $4
lui $4, 3
sll $0, $0, 0
beq $4, $2, TAG483
TAG483:
mflo $3
bgtz $4, TAG484
sll $0, $0, 0
mfhi $1
TAG484:
multu $1, $1
bne $1, $1, TAG485
mflo $4
bgez $1, TAG485
TAG485:
lh $2, 0($4)
mult $2, $2
bgtz $4, TAG486
mfhi $4
TAG486:
blez $4, TAG487
mtlo $4
bne $4, $4, TAG487
lhu $2, 0($4)
TAG487:
sll $0, $0, 0
lui $3, 0
beq $2, $2, TAG488
mfhi $3
TAG488:
beq $3, $3, TAG489
lui $2, 3
lbu $1, 0($3)
beq $2, $2, TAG489
TAG489:
mtlo $1
lui $2, 4
lui $1, 7
mthi $1
TAG490:
subu $2, $1, $1
addiu $1, $2, 5
sb $1, 0($1)
mtlo $1
TAG491:
lui $3, 7
lui $1, 9
sltu $2, $1, $1
mflo $3
TAG492:
sb $3, 0($3)
lbu $3, 0($3)
lbu $2, 0($3)
mult $3, $2
TAG493:
lui $1, 7
sll $0, $0, 0
lbu $3, 0($2)
ori $4, $2, 13
TAG494:
lb $3, 0($4)
multu $4, $4
sh $3, 0($3)
sb $4, 0($3)
TAG495:
blez $3, TAG496
lui $1, 0
sw $3, 0($1)
beq $3, $1, TAG496
TAG496:
mflo $1
mfhi $4
lw $1, 0($4)
mult $1, $1
TAG497:
lui $1, 11
multu $1, $1
xor $2, $1, $1
mfhi $3
TAG498:
lb $1, 0($3)
sb $3, 0($3)
lh $4, 0($1)
mthi $3
TAG499:
and $3, $4, $4
lb $2, 0($4)
bgez $4, TAG500
sll $3, $2, 10
TAG500:
sb $3, 0($3)
lh $2, 0($3)
lui $1, 2
sll $1, $2, 1
TAG501:
xor $2, $1, $1
lb $1, 0($1)
lb $2, 0($2)
mult $2, $1
TAG502:
sll $3, $2, 7
lui $2, 13
beq $2, $3, TAG503
multu $2, $3
TAG503:
addu $3, $2, $2
bltz $2, TAG504
mtlo $2
sll $0, $0, 0
TAG504:
mult $1, $1
beq $1, $1, TAG505
or $1, $1, $1
xor $4, $1, $1
TAG505:
beq $4, $4, TAG506
sb $4, 0($4)
blez $4, TAG506
lhu $1, 0($4)
TAG506:
sh $1, 0($1)
mthi $1
lui $2, 2
ori $1, $1, 9
TAG507:
slti $2, $1, 9
lui $1, 9
mthi $2
mfhi $2
TAG508:
and $1, $2, $2
beq $1, $1, TAG509
and $4, $2, $2
lui $4, 12
TAG509:
lh $4, 0($4)
blez $4, TAG510
lb $2, 0($4)
bgez $4, TAG510
TAG510:
srav $2, $2, $2
or $2, $2, $2
beq $2, $2, TAG511
lhu $2, 0($2)
TAG511:
xor $2, $2, $2
mult $2, $2
addu $3, $2, $2
mflo $4
TAG512:
sll $2, $4, 13
lw $1, 0($2)
blez $2, TAG513
lui $1, 10
TAG513:
mtlo $1
mult $1, $1
bgez $1, TAG514
ori $2, $1, 13
TAG514:
subu $2, $2, $2
mult $2, $2
lui $3, 8
addiu $3, $3, 9
TAG515:
andi $2, $3, 0
mflo $3
mtlo $3
blez $3, TAG516
TAG516:
sw $3, 0($3)
bne $3, $3, TAG517
srav $2, $3, $3
mult $3, $3
TAG517:
mult $2, $2
bltz $2, TAG518
sll $3, $2, 0
mflo $4
TAG518:
sb $4, 0($4)
lui $1, 2
divu $1, $1
blez $1, TAG519
TAG519:
mflo $1
multu $1, $1
mult $1, $1
div $1, $1
TAG520:
blez $1, TAG521
divu $1, $1
addu $3, $1, $1
ori $4, $3, 12
TAG521:
or $4, $4, $4
addu $3, $4, $4
divu $4, $4
div $4, $4
TAG522:
mthi $3
lui $4, 3
bne $4, $3, TAG523
lui $3, 10
TAG523:
divu $3, $3
lui $2, 12
bne $3, $2, TAG524
slti $4, $2, 0
TAG524:
mult $4, $4
add $2, $4, $4
beq $4, $2, TAG525
xor $4, $4, $4
TAG525:
slti $3, $4, 11
sllv $2, $3, $3
mtlo $4
bgez $4, TAG526
TAG526:
srlv $3, $2, $2
lh $4, 0($2)
bgez $4, TAG527
srav $1, $3, $3
TAG527:
beq $1, $1, TAG528
nor $3, $1, $1
or $3, $1, $1
mtlo $1
TAG528:
sh $3, 1($3)
mfhi $1
div $3, $3
xori $4, $1, 1
TAG529:
bne $4, $4, TAG530
sb $4, 0($4)
lb $2, 0($4)
lbu $1, 0($2)
TAG530:
lui $3, 10
lbu $1, 0($1)
mthi $1
lbu $3, 0($1)
TAG531:
mflo $2
lbu $3, 0($2)
xori $1, $2, 10
div $3, $3
TAG532:
beq $1, $1, TAG533
multu $1, $1
mfhi $3
srav $3, $3, $1
TAG533:
lui $2, 1
mflo $2
sllv $1, $2, $3
mthi $2
TAG534:
mfhi $4
nor $4, $4, $1
and $3, $4, $4
sw $3, 252($4)
TAG535:
mthi $3
slti $1, $3, 8
lb $2, 252($3)
sra $3, $2, 2
TAG536:
mfhi $4
mflo $2
mflo $4
lbu $1, 0($3)
TAG537:
nor $1, $1, $1
lui $1, 1
lui $1, 7
mflo $1
TAG538:
mtlo $1
blez $1, TAG539
mfhi $3
lui $2, 5
TAG539:
mult $2, $2
lui $2, 0
sltu $1, $2, $2
mult $1, $2
TAG540:
mtlo $1
bne $1, $1, TAG541
mult $1, $1
sh $1, 0($1)
TAG541:
beq $1, $1, TAG542
sh $1, 0($1)
beq $1, $1, TAG542
divu $1, $1
TAG542:
bne $1, $1, TAG543
ori $4, $1, 7
mflo $2
sb $4, 0($2)
TAG543:
lbu $4, 0($2)
bgez $4, TAG544
lui $3, 0
sw $3, 0($2)
TAG544:
sw $3, 0($3)
bne $3, $3, TAG545
sra $1, $3, 14
beq $1, $1, TAG545
TAG545:
mflo $1
sb $1, 0($1)
multu $1, $1
or $2, $1, $1
TAG546:
slt $2, $2, $2
lw $3, 0($2)
lbu $1, 0($3)
and $3, $2, $2
TAG547:
sb $3, 0($3)
srl $4, $3, 4
bne $3, $3, TAG548
mthi $3
TAG548:
sra $1, $4, 0
xori $3, $1, 11
mflo $4
sll $3, $3, 1
TAG549:
mfhi $4
addiu $2, $4, 14
bne $3, $4, TAG550
sllv $2, $2, $3
TAG550:
sll $0, $0, 0
bne $2, $1, TAG551
sll $0, $0, 0
mtlo $2
TAG551:
lw $2, 0($1)
lui $2, 6
mflo $3
ori $4, $2, 8
TAG552:
srav $1, $4, $4
sw $4, -1536($1)
mthi $4
lh $4, -1536($1)
TAG553:
bne $4, $4, TAG554
sh $4, 0($4)
beq $4, $4, TAG554
srl $2, $4, 7
TAG554:
mtlo $2
mflo $2
lui $4, 14
mthi $2
TAG555:
bgez $4, TAG556
lui $4, 4
lui $3, 0
blez $4, TAG556
TAG556:
mult $3, $3
beq $3, $3, TAG557
lui $2, 12
bne $3, $3, TAG557
TAG557:
mtlo $2
sll $0, $0, 0
blez $2, TAG558
sra $3, $2, 14
TAG558:
mthi $3
blez $3, TAG559
sb $3, 0($3)
addu $1, $3, $3
TAG559:
mfhi $2
mtlo $2
bltz $1, TAG560
lhu $2, 0($1)
TAG560:
mtlo $2
bne $2, $2, TAG561
lui $1, 11
sw $1, 0($2)
TAG561:
mthi $1
div $1, $1
mtlo $1
div $1, $1
TAG562:
mtlo $1
lui $1, 0
multu $1, $1
slti $2, $1, 3
TAG563:
addiu $2, $2, 5
divu $2, $2
sh $2, 0($2)
div $2, $2
TAG564:
sh $2, 0($2)
mthi $2
sh $2, 0($2)
bne $2, $2, TAG565
TAG565:
div $2, $2
lbu $2, 0($2)
mthi $2
mthi $2
TAG566:
lui $2, 1
sll $0, $0, 0
div $3, $3
addu $4, $2, $2
TAG567:
sll $0, $0, 0
addiu $3, $4, 15
xori $2, $4, 14
sll $0, $0, 0
TAG568:
sll $0, $0, 0
bne $3, $3, TAG569
mtlo $3
mflo $2
TAG569:
mtlo $2
sll $0, $0, 0
lui $1, 7
lui $4, 14
TAG570:
sll $0, $0, 0
bgez $4, TAG571
sra $2, $4, 6
divu $2, $2
TAG571:
blez $2, TAG572
mtlo $2
sh $2, -14336($2)
lui $4, 9
TAG572:
blez $4, TAG573
mflo $3
lui $3, 9
lui $4, 2
TAG573:
multu $4, $4
ori $4, $4, 9
mult $4, $4
addiu $3, $4, 9
TAG574:
srl $1, $3, 5
mthi $1
mtlo $1
sb $3, -4096($1)
TAG575:
slt $2, $1, $1
or $1, $2, $1
mflo $4
blez $2, TAG576
TAG576:
mfhi $3
sh $4, -4096($3)
sh $4, -4096($4)
mfhi $4
TAG577:
mthi $4
lw $1, -4096($4)
mthi $1
sll $0, $0, 0
TAG578:
beq $2, $2, TAG579
srlv $4, $2, $2
lui $3, 15
addi $4, $3, 5
TAG579:
bne $4, $4, TAG580
xor $4, $4, $4
lui $4, 2
and $2, $4, $4
TAG580:
lui $2, 1
lui $2, 12
sll $0, $0, 0
lui $2, 12
TAG581:
mthi $2
beq $2, $2, TAG582
mtlo $2
lui $4, 2
TAG582:
sll $0, $0, 0
multu $4, $4
srl $4, $4, 0
beq $4, $4, TAG583
TAG583:
mflo $2
sh $2, 0($2)
sll $0, $0, 0
mfhi $3
TAG584:
multu $3, $3
sh $3, 0($3)
divu $3, $3
blez $3, TAG585
TAG585:
slti $4, $3, 0
and $1, $3, $3
bne $4, $3, TAG586
mult $4, $4
TAG586:
mfhi $3
srl $2, $3, 7
blez $3, TAG587
lbu $2, 0($1)
TAG587:
mult $2, $2
multu $2, $2
bgez $2, TAG588
slt $3, $2, $2
TAG588:
bne $3, $3, TAG589
multu $3, $3
lui $1, 4
blez $3, TAG589
TAG589:
sll $0, $0, 0
sll $4, $3, 15
beq $1, $4, TAG590
mflo $2
TAG590:
mult $2, $2
multu $2, $2
beq $2, $2, TAG591
mfhi $2
TAG591:
beq $2, $2, TAG592
multu $2, $2
multu $2, $2
mtlo $2
TAG592:
mult $2, $2
sw $2, 0($2)
lui $1, 3
mflo $2
TAG593:
lui $3, 15
multu $3, $3
mflo $4
mfhi $3
TAG594:
mflo $3
lui $2, 12
mult $3, $3
sll $0, $0, 0
TAG595:
sra $2, $2, 5
xor $3, $2, $2
xori $1, $2, 13
mtlo $1
TAG596:
srlv $2, $1, $1
lui $4, 10
subu $3, $1, $1
lui $1, 7
TAG597:
bne $1, $1, TAG598
sll $0, $0, 0
sll $0, $0, 0
divu $1, $1
TAG598:
multu $4, $4
sll $0, $0, 0
or $1, $4, $4
xori $1, $4, 13
TAG599:
sltiu $4, $1, 10
beq $1, $1, TAG600
lw $4, 0($4)
addi $4, $4, 8
TAG600:
bne $4, $4, TAG601
mfhi $2
lb $1, 0($2)
mfhi $2
TAG601:
srlv $2, $2, $2
bgez $2, TAG602
lui $3, 6
lui $1, 14
TAG602:
mfhi $2
addu $3, $1, $2
mthi $2
bltz $1, TAG603
TAG603:
mfhi $2
lui $4, 7
lw $1, 0($3)
sh $1, 0($3)
TAG604:
mflo $2
beq $1, $2, TAG605
lhu $3, 0($2)
mthi $3
TAG605:
lh $1, 0($3)
sw $3, 0($3)
bltz $3, TAG606
mult $3, $1
TAG606:
lb $2, 0($1)
bne $2, $1, TAG607
multu $2, $2
mthi $1
TAG607:
mthi $2
lui $4, 13
bltz $4, TAG608
lui $2, 0
TAG608:
bgez $2, TAG609
mfhi $3
multu $2, $2
bne $2, $3, TAG609
TAG609:
sll $1, $3, 1
sw $1, 0($3)
bne $1, $3, TAG610
mfhi $3
TAG610:
mfhi $2
sw $2, 0($3)
bne $2, $2, TAG611
sb $2, 0($3)
TAG611:
mult $2, $2
lhu $3, 0($2)
mthi $2
mtlo $3
TAG612:
lb $3, 0($3)
sw $3, 0($3)
lui $1, 7
lbu $4, 0($3)
TAG613:
beq $4, $4, TAG614
mtlo $4
div $4, $4
addiu $1, $4, 0
TAG614:
bltz $1, TAG615
mflo $2
sllv $4, $2, $2
mult $4, $1
TAG615:
mthi $4
mflo $2
lb $2, 0($4)
mthi $2
TAG616:
mult $2, $2
lui $2, 7
lui $4, 0
srav $2, $4, $4
TAG617:
bne $2, $2, TAG618
xor $2, $2, $2
lui $4, 3
sll $0, $0, 0
TAG618:
sll $0, $0, 0
mtlo $4
mult $4, $4
bltz $4, TAG619
TAG619:
mfhi $2
subu $1, $4, $2
bne $4, $1, TAG620
addiu $1, $1, 9
TAG620:
beq $1, $1, TAG621
mtlo $1
sh $1, 0($1)
bgtz $1, TAG621
TAG621:
lui $2, 10
bgez $1, TAG622
sll $0, $0, 0
mflo $3
TAG622:
sltu $4, $3, $3
or $1, $4, $3
sw $4, 0($4)
addu $2, $3, $4
TAG623:
sh $2, 0($2)
ori $2, $2, 2
lui $1, 6
or $3, $2, $2
TAG624:
bgtz $3, TAG625
lbu $1, 0($3)
divu $1, $1
addi $4, $3, 10
TAG625:
sw $4, 0($4)
mflo $1
mfhi $2
lui $4, 1
TAG626:
sll $0, $0, 0
beq $4, $4, TAG627
mflo $4
srl $4, $4, 8
TAG627:
bne $4, $4, TAG628
sll $0, $0, 0
nor $3, $4, $2
lui $3, 2
TAG628:
lui $4, 11
mult $3, $4
sll $0, $0, 0
srav $2, $4, $3
TAG629:
bltz $2, TAG630
or $2, $2, $2
blez $2, TAG630
sll $0, $0, 0
TAG630:
sltiu $2, $2, 10
mfhi $4
mtlo $4
mflo $4
TAG631:
slt $1, $4, $4
lh $2, 0($1)
mfhi $3
xori $2, $2, 5
TAG632:
lui $4, 11
bgez $2, TAG633
andi $4, $4, 9
mflo $3
TAG633:
lui $2, 15
beq $2, $2, TAG634
divu $2, $2
bgez $3, TAG634
TAG634:
mfhi $2
lui $2, 14
xor $4, $2, $2
lui $3, 3
TAG635:
mfhi $1
mflo $4
andi $1, $3, 5
mflo $4
TAG636:
mfhi $2
sll $2, $4, 3
mult $2, $2
blez $2, TAG637
TAG637:
sh $2, 0($2)
sb $2, 0($2)
mfhi $1
lb $4, 0($1)
TAG638:
sltiu $2, $4, 7
sltiu $1, $4, 15
xori $2, $2, 0
mflo $3
TAG639:
xori $3, $3, 2
beq $3, $3, TAG640
lui $4, 7
slti $4, $3, 13
TAG640:
or $1, $4, $4
lui $3, 0
lui $4, 10
beq $4, $3, TAG641
TAG641:
multu $4, $4
beq $4, $4, TAG642
lui $4, 2
addu $3, $4, $4
TAG642:
sb $3, 0($3)
mflo $4
slt $1, $4, $4
subu $1, $1, $4
TAG643:
addu $2, $1, $1
add $2, $1, $1
lw $3, 0($2)
beq $3, $1, TAG644
TAG644:
sw $3, 0($3)
lbu $4, 0($3)
multu $3, $4
mflo $2
TAG645:
bltz $2, TAG646
mthi $2
lui $2, 12
srav $2, $2, $2
TAG646:
or $2, $2, $2
mflo $2
mflo $1
mflo $4
TAG647:
bne $4, $4, TAG648
slti $2, $4, 7
bne $2, $2, TAG648
lui $3, 14
TAG648:
mtlo $3
lui $3, 6
bltz $3, TAG649
subu $2, $3, $3
TAG649:
beq $2, $2, TAG650
and $3, $2, $2
lh $3, 0($2)
bne $2, $3, TAG650
TAG650:
mthi $3
add $2, $3, $3
bltz $3, TAG651
lui $3, 13
TAG651:
beq $3, $3, TAG652
sll $0, $0, 0
sh $2, 0($3)
and $1, $3, $2
TAG652:
mthi $1
beq $1, $1, TAG653
mtlo $1
nor $2, $1, $1
TAG653:
mtlo $2
mthi $2
mult $2, $2
sltu $3, $2, $2
TAG654:
blez $3, TAG655
sw $3, 0($3)
mflo $2
mflo $4
TAG655:
lw $3, 0($4)
mtlo $4
mfhi $3
srl $3, $3, 14
TAG656:
beq $3, $3, TAG657
mult $3, $3
slti $3, $3, 2
lhu $2, 0($3)
TAG657:
and $2, $2, $2
lui $4, 13
mthi $2
srav $2, $4, $2
TAG658:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
bne $2, $1, TAG659
TAG659:
and $3, $1, $1
beq $1, $1, TAG660
lb $4, 0($1)
lui $4, 5
TAG660:
lb $4, 0($4)
andi $4, $4, 2
sw $4, 0($4)
mflo $1
TAG661:
bgtz $1, TAG662
sll $0, $0, 0
blez $4, TAG662
xori $3, $1, 9
TAG662:
mflo $4
mflo $1
bgtz $4, TAG663
mult $4, $3
TAG663:
mtlo $1
subu $2, $1, $1
blez $2, TAG664
mfhi $2
TAG664:
mthi $2
mflo $3
mthi $2
mthi $2
TAG665:
blez $3, TAG666
mfhi $3
mfhi $1
mtlo $3
TAG666:
sltu $3, $1, $1
lui $2, 14
addiu $3, $3, 6
addiu $2, $3, 1
TAG667:
lb $4, 0($2)
sra $1, $4, 12
bne $2, $4, TAG668
mtlo $4
TAG668:
slt $4, $1, $1
mult $4, $4
mtlo $4
multu $1, $1
TAG669:
sltiu $4, $4, 14
div $4, $4
lui $4, 7
bne $4, $4, TAG670
TAG670:
divu $4, $4
sll $0, $0, 0
bltz $4, TAG671
lb $4, 0($3)
TAG671:
mfhi $4
bne $4, $4, TAG672
multu $4, $4
sb $4, 0($4)
TAG672:
beq $4, $4, TAG673
mflo $4
mthi $4
bgtz $4, TAG673
TAG673:
sb $4, 0($4)
beq $4, $4, TAG674
mult $4, $4
sub $2, $4, $4
TAG674:
addu $1, $2, $2
subu $4, $1, $1
sb $1, 0($2)
multu $4, $2
TAG675:
mthi $4
or $3, $4, $4
add $4, $3, $4
bgez $3, TAG676
TAG676:
mthi $4
blez $4, TAG677
lw $2, 0($4)
lw $3, 0($2)
TAG677:
bne $3, $3, TAG678
mthi $3
mult $3, $3
blez $3, TAG678
TAG678:
sb $3, 0($3)
addi $3, $3, 6
addiu $4, $3, 2
bgtz $3, TAG679
TAG679:
lhu $2, 0($4)
xori $2, $2, 5
div $2, $4
multu $2, $2
TAG680:
lui $2, 14
mfhi $2
srl $4, $2, 4
addu $3, $2, $2
TAG681:
lb $3, 0($3)
nor $3, $3, $3
bne $3, $3, TAG682
lui $1, 14
TAG682:
sll $0, $0, 0
mthi $1
andi $1, $1, 12
bne $1, $1, TAG683
TAG683:
mtlo $1
sh $1, 0($1)
mflo $3
multu $3, $1
TAG684:
lui $4, 11
sll $0, $0, 0
xori $4, $3, 11
sll $3, $3, 2
TAG685:
bgez $3, TAG686
lui $1, 13
bltz $1, TAG686
lhu $2, 0($1)
TAG686:
bltz $2, TAG687
sltu $4, $2, $2
sw $2, 0($4)
mtlo $2
TAG687:
lui $3, 12
lui $2, 5
beq $4, $2, TAG688
mult $2, $3
TAG688:
sltiu $4, $2, 6
sll $2, $2, 6
sll $0, $0, 0
subu $2, $2, $3
TAG689:
bne $2, $2, TAG690
mthi $2
blez $2, TAG690
sll $0, $0, 0
TAG690:
sll $0, $0, 0
sll $0, $0, 0
srav $3, $3, $3
addiu $4, $3, 0
TAG691:
sll $0, $0, 0
mthi $2
mflo $4
addiu $1, $2, 5
TAG692:
blez $1, TAG693
mfhi $2
sll $0, $0, 0
div $2, $1
TAG693:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG694:
bgez $3, TAG695
mtlo $3
sltiu $4, $3, 3
srlv $3, $4, $4
TAG695:
divu $3, $3
bltz $3, TAG696
sll $0, $0, 0
multu $1, $3
TAG696:
mthi $1
sltu $1, $1, $1
mult $1, $1
bne $1, $1, TAG697
TAG697:
sb $1, 0($1)
sb $1, 0($1)
sra $1, $1, 10
bgtz $1, TAG698
TAG698:
mtlo $1
mthi $1
bne $1, $1, TAG699
mtlo $1
TAG699:
addiu $4, $1, 3
lui $4, 2
mfhi $2
mflo $3
TAG700:
mfhi $4
beq $4, $4, TAG701
and $2, $3, $3
bne $2, $4, TAG701
TAG701:
lui $1, 0
sb $1, 0($2)
sb $1, 0($2)
lw $1, 0($2)
TAG702:
mflo $2
srl $1, $2, 9
beq $1, $1, TAG703
sra $1, $2, 15
TAG703:
lui $1, 5
mthi $1
mflo $2
srl $2, $1, 5
TAG704:
sll $0, $0, 0
sltu $3, $2, $2
sb $2, 0($3)
bgez $2, TAG705
TAG705:
lw $2, 0($3)
lui $4, 3
divu $2, $4
lh $4, 0($3)
TAG706:
mtlo $4
blez $4, TAG707
mflo $2
mflo $1
TAG707:
sll $0, $0, 0
lui $3, 7
lui $3, 14
sll $0, $0, 0
TAG708:
lui $2, 10
sll $0, $0, 0
divu $3, $2
sll $0, $0, 0
TAG709:
div $2, $2
sll $0, $0, 0
mfhi $2
mflo $4
TAG710:
lb $2, 0($4)
lb $4, 0($4)
lui $4, 0
bltz $4, TAG711
TAG711:
lh $4, 0($4)
bne $4, $4, TAG712
mtlo $4
srlv $1, $4, $4
TAG712:
mtlo $1
slti $4, $1, 8
multu $1, $1
or $4, $1, $1
TAG713:
add $2, $4, $4
sw $2, 0($2)
bgez $4, TAG714
lb $1, 0($4)
TAG714:
lw $4, 0($1)
lui $1, 6
lui $2, 9
sll $0, $0, 0
TAG715:
sra $3, $1, 12
beq $1, $1, TAG716
mthi $3
lui $4, 2
TAG716:
lui $1, 1
and $4, $4, $4
mflo $2
lui $2, 0
TAG717:
lui $2, 13
beq $2, $2, TAG718
mfhi $3
bne $3, $3, TAG718
TAG718:
sw $3, 0($3)
lh $3, 0($3)
lb $3, 0($3)
bne $3, $3, TAG719
TAG719:
lhu $4, 0($3)
lui $4, 2
blez $4, TAG720
sll $0, $0, 0
TAG720:
beq $3, $3, TAG721
ori $1, $3, 12
beq $1, $1, TAG721
mflo $4
TAG721:
bgez $4, TAG722
mfhi $2
lbu $3, 0($2)
sltu $3, $4, $4
TAG722:
mthi $3
sh $3, 0($3)
blez $3, TAG723
lh $2, 0($3)
TAG723:
andi $4, $2, 14
addiu $3, $2, 3
mfhi $2
beq $4, $2, TAG724
TAG724:
mthi $2
subu $4, $2, $2
div $2, $2
beq $4, $4, TAG725
TAG725:
lh $3, 0($4)
lui $4, 9
sltu $3, $3, $3
lui $4, 14
TAG726:
lui $4, 0
lb $1, 0($4)
addiu $3, $4, 5
multu $4, $4
TAG727:
lbu $1, 0($3)
lui $4, 12
mthi $1
blez $4, TAG728
TAG728:
addu $2, $4, $4
mult $2, $4
mult $2, $2
mfhi $3
TAG729:
beq $3, $3, TAG730
xor $2, $3, $3
mthi $3
mflo $3
TAG730:
sra $4, $3, 10
addiu $3, $3, 14
sb $4, -590($3)
lb $1, -590($3)
TAG731:
lhu $2, 0($1)
blez $1, TAG732
mflo $4
divu $4, $2
TAG732:
lui $4, 14
mthi $4
bne $4, $4, TAG733
mthi $4
TAG733:
sll $0, $0, 0
mfhi $4
sra $1, $4, 0
sll $0, $0, 0
TAG734:
mult $2, $2
lw $2, 0($2)
andi $4, $2, 3
beq $4, $2, TAG735
TAG735:
multu $4, $4
bgez $4, TAG736
mult $4, $4
lui $1, 7
TAG736:
divu $1, $1
sll $0, $0, 0
multu $1, $1
bne $1, $1, TAG737
TAG737:
lui $2, 6
bgez $2, TAG738
divu $2, $2
mtlo $1
TAG738:
ori $1, $2, 10
xori $1, $2, 4
sll $0, $0, 0
slti $3, $1, 7
TAG739:
bltz $3, TAG740
lui $1, 4
mfhi $1
sra $4, $1, 12
TAG740:
mfhi $4
mthi $4
sw $4, 0($4)
slti $3, $4, 7
TAG741:
mthi $3
blez $3, TAG742
sb $3, 0($3)
multu $3, $3
TAG742:
lb $3, 0($3)
mtlo $3
bgtz $3, TAG743
lbu $2, 0($3)
TAG743:
blez $2, TAG744
mfhi $1
lui $1, 15
mflo $1
TAG744:
mthi $1
bltz $1, TAG745
divu $1, $1
lb $1, 0($1)
TAG745:
sb $1, 0($1)
lb $1, 0($1)
div $1, $1
sb $1, 0($1)
TAG746:
multu $1, $1
mthi $1
lui $4, 4
mtlo $1
TAG747:
sll $0, $0, 0
andi $1, $4, 1
lui $1, 10
bne $1, $4, TAG748
TAG748:
mtlo $1
divu $1, $1
lui $4, 14
bgez $1, TAG749
TAG749:
mfhi $1
sw $1, 0($1)
mfhi $1
bne $4, $1, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop