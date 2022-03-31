ori $1, $0, 12
ori $2, $0, 15
ori $3, $0, 5
ori $4, $0, 12
sw $4, 0($0)
sw $4, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $1, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $1, 72($0)
sw $3, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $4, 124($0)
ori $1, $2, 3
bgez $2, TAG1
lui $3, 8
mult $1, $2
TAG1:
lui $2, 14
sll $0, $0, 0
bgez $2, TAG2
sll $0, $0, 0
TAG2:
sll $0, $0, 0
bne $2, $2, TAG3
sll $0, $0, 0
sll $0, $0, 0
TAG3:
sll $0, $0, 0
mfhi $2
lbu $4, 0($2)
bne $2, $4, TAG4
TAG4:
lbu $2, 0($4)
ori $2, $2, 9
lh $4, 0($4)
sb $2, 0($4)
TAG5:
bne $4, $4, TAG6
sb $4, 0($4)
lb $4, 0($4)
bltz $4, TAG6
TAG6:
multu $4, $4
div $4, $4
mfhi $3
sw $4, 0($3)
TAG7:
mflo $3
mflo $4
bgez $3, TAG8
divu $4, $3
TAG8:
xor $2, $4, $4
lui $3, 1
mfhi $1
lhu $4, 0($2)
TAG9:
lui $2, 9
sllv $2, $4, $4
sra $1, $2, 9
bgez $2, TAG10
TAG10:
sb $1, -960($1)
mthi $1
mtlo $1
mthi $1
TAG11:
mtlo $1
lui $2, 14
beq $1, $2, TAG12
sll $0, $0, 0
TAG12:
ori $1, $2, 3
blez $1, TAG13
lui $4, 1
xor $3, $1, $4
TAG13:
mtlo $3
bltz $3, TAG14
sll $0, $0, 0
sll $0, $0, 0
TAG14:
mflo $4
beq $1, $1, TAG15
mflo $1
sh $4, 0($1)
TAG15:
beq $1, $1, TAG16
mthi $1
lui $3, 9
bne $3, $1, TAG16
TAG16:
lui $4, 15
beq $4, $3, TAG17
divu $3, $3
blez $3, TAG17
TAG17:
lui $4, 14
lui $2, 13
mflo $1
bltz $4, TAG18
TAG18:
lui $4, 14
bne $1, $1, TAG19
sll $0, $0, 0
divu $4, $4
TAG19:
mthi $4
sll $0, $0, 0
sra $2, $4, 12
mflo $1
TAG20:
sb $1, 0($1)
lui $4, 0
bltz $4, TAG21
sw $4, 0($4)
TAG21:
mtlo $4
mult $4, $4
lui $1, 7
beq $1, $4, TAG22
TAG22:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
srl $1, $1, 14
TAG23:
bltz $1, TAG24
lui $2, 4
divu $2, $1
bgez $1, TAG24
TAG24:
sll $0, $0, 0
div $2, $2
mtlo $2
lui $1, 0
TAG25:
bgez $1, TAG26
lb $2, 0($1)
sltu $4, $1, $1
sw $2, 0($1)
TAG26:
mthi $4
bgtz $4, TAG27
sra $3, $4, 10
bne $4, $3, TAG27
TAG27:
lw $3, 0($3)
mfhi $3
mfhi $3
bgez $3, TAG28
TAG28:
mfhi $1
blez $1, TAG29
subu $1, $3, $1
sb $1, 0($1)
TAG29:
lui $3, 12
lui $2, 15
mthi $1
sll $0, $0, 0
TAG30:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mult $2, $2
TAG31:
bgtz $4, TAG32
mtlo $4
lui $4, 4
srlv $1, $4, $4
TAG32:
addi $3, $1, 13
mtlo $3
blez $3, TAG33
lw $1, 0($1)
TAG33:
bne $1, $1, TAG34
lw $4, 0($1)
sltiu $4, $1, 12
mfhi $1
TAG34:
beq $1, $1, TAG35
sll $1, $1, 9
lbu $3, 0($1)
lb $3, 0($3)
TAG35:
div $3, $3
addiu $4, $3, 13
bne $4, $4, TAG36
multu $3, $3
TAG36:
bne $4, $4, TAG37
multu $4, $4
divu $4, $4
mthi $4
TAG37:
lh $2, 0($4)
mthi $2
sh $2, 0($4)
beq $2, $2, TAG38
TAG38:
mthi $2
mflo $1
mflo $3
mflo $3
TAG39:
sb $3, 0($3)
div $3, $3
mfhi $2
srlv $4, $2, $2
TAG40:
lui $4, 5
mfhi $1
lui $2, 15
sll $0, $0, 0
TAG41:
mfhi $4
beq $4, $4, TAG42
mfhi $1
bgez $1, TAG42
TAG42:
lh $1, 0($1)
mfhi $3
bgtz $1, TAG43
sra $3, $1, 5
TAG43:
mthi $3
sb $3, 0($3)
lw $2, 0($3)
srl $2, $2, 15
TAG44:
lbu $3, 0($2)
mtlo $2
mfhi $3
mult $3, $2
TAG45:
sb $3, 0($3)
mfhi $2
div $3, $3
bltz $2, TAG46
TAG46:
mfhi $2
beq $2, $2, TAG47
lw $4, 0($2)
sub $1, $2, $2
TAG47:
sll $0, $0, 0
sb $1, 0($2)
sra $3, $1, 12
lui $4, 11
TAG48:
mtlo $4
bne $4, $4, TAG49
mtlo $4
bltz $4, TAG49
TAG49:
lui $3, 7
xor $3, $4, $3
addiu $3, $3, 5
lui $1, 6
TAG50:
mtlo $1
multu $1, $1
bne $1, $1, TAG51
sll $0, $0, 0
TAG51:
beq $4, $4, TAG52
mthi $4
sw $4, 0($4)
beq $4, $4, TAG52
TAG52:
lui $2, 2
sll $0, $0, 0
mult $1, $4
xori $4, $2, 13
TAG53:
multu $4, $4
sll $0, $0, 0
multu $4, $4
beq $4, $4, TAG54
TAG54:
xori $4, $4, 5
mthi $4
bltz $4, TAG55
mthi $4
TAG55:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG56
sll $0, $0, 0
TAG56:
bltz $3, TAG57
mtlo $3
mfhi $2
sll $0, $0, 0
TAG57:
multu $2, $2
sll $0, $0, 0
beq $2, $2, TAG58
mfhi $3
TAG58:
blez $3, TAG59
mthi $3
mthi $3
lh $1, 0($3)
TAG59:
ori $1, $1, 0
slt $3, $1, $1
div $3, $1
sltu $1, $3, $1
TAG60:
lui $2, 13
sb $1, 0($1)
srav $4, $2, $2
sb $2, 0($1)
TAG61:
sll $0, $0, 0
mult $4, $3
mthi $3
div $3, $4
TAG62:
lbu $3, 0($3)
bne $3, $3, TAG63
mthi $3
or $2, $3, $3
TAG63:
sll $4, $2, 2
lui $2, 14
divu $4, $2
sll $0, $0, 0
TAG64:
xori $4, $1, 8
divu $4, $4
sb $1, 0($4)
mthi $1
TAG65:
bne $4, $4, TAG66
lbu $4, 0($4)
mult $4, $4
mthi $4
TAG66:
sra $4, $4, 4
mflo $2
lui $2, 13
lui $2, 14
TAG67:
lui $1, 4
addiu $4, $1, 15
subu $1, $4, $1
sll $0, $0, 0
TAG68:
subu $3, $4, $4
mtlo $4
nor $1, $4, $4
mult $4, $3
TAG69:
lui $1, 8
sll $0, $0, 0
mult $1, $2
sll $0, $0, 0
TAG70:
lui $2, 4
mthi $2
mthi $2
sll $0, $0, 0
TAG71:
mflo $1
lw $4, 0($1)
mflo $4
lui $2, 8
TAG72:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
sll $1, $2, 15
TAG73:
lui $3, 1
mtlo $3
and $1, $1, $1
bne $1, $3, TAG74
TAG74:
lb $3, 0($1)
bne $3, $1, TAG75
sra $1, $3, 2
bne $3, $3, TAG75
TAG75:
slt $1, $1, $1
multu $1, $1
mult $1, $1
sh $1, 0($1)
TAG76:
bne $1, $1, TAG77
lui $4, 14
mflo $1
sw $1, 0($1)
TAG77:
mflo $3
bne $3, $1, TAG78
mult $3, $1
slti $2, $1, 4
TAG78:
lb $1, 0($2)
sb $2, 0($1)
lh $2, 0($1)
beq $2, $2, TAG79
TAG79:
addiu $1, $2, 10
lbu $4, 0($2)
bltz $4, TAG80
lbu $1, 0($1)
TAG80:
bgtz $1, TAG81
lui $4, 6
lui $3, 7
bne $3, $4, TAG81
TAG81:
lui $1, 2
mflo $4
mthi $4
bne $4, $3, TAG82
TAG82:
addu $4, $4, $4
sb $4, 0($4)
ori $4, $4, 10
lh $2, 0($4)
TAG83:
mthi $2
blez $2, TAG84
multu $2, $2
xori $1, $2, 2
TAG84:
bgez $1, TAG85
multu $1, $1
div $1, $1
mult $1, $1
TAG85:
mfhi $1
sltiu $4, $1, 9
lui $1, 9
sb $1, 0($4)
TAG86:
lui $2, 13
sll $0, $0, 0
subu $1, $2, $1
sltiu $1, $1, 11
TAG87:
mfhi $4
mthi $4
multu $4, $1
bne $4, $1, TAG88
TAG88:
mtlo $4
mthi $4
srav $4, $4, $4
bne $4, $4, TAG89
TAG89:
mtlo $4
srav $1, $4, $4
beq $1, $4, TAG90
multu $4, $1
TAG90:
lui $3, 4
sltiu $4, $1, 0
mflo $2
addu $2, $1, $3
TAG91:
mult $2, $2
bgtz $2, TAG92
srl $2, $2, 6
mthi $2
TAG92:
sll $0, $0, 0
sb $4, 0($4)
beq $4, $2, TAG93
mthi $2
TAG93:
multu $4, $4
nor $1, $4, $4
mult $4, $4
bne $1, $1, TAG94
TAG94:
div $1, $1
bne $1, $1, TAG95
sb $1, 1($1)
mtlo $1
TAG95:
lui $3, 15
mflo $3
lui $2, 3
mult $2, $2
TAG96:
xor $4, $2, $2
sh $4, 0($4)
mthi $2
mflo $3
TAG97:
lbu $1, 0($3)
bne $1, $3, TAG98
addu $4, $1, $1
beq $4, $4, TAG98
TAG98:
mfhi $1
multu $1, $4
addi $2, $4, 8
mflo $4
TAG99:
sb $4, 0($4)
mult $4, $4
mtlo $4
mthi $4
TAG100:
bne $4, $4, TAG101
mfhi $3
multu $3, $3
sb $3, 0($4)
TAG101:
mflo $4
addi $1, $3, 9
mult $3, $3
mfhi $4
TAG102:
lui $3, 0
add $3, $3, $4
lhu $2, 0($4)
bne $3, $2, TAG103
TAG103:
mthi $2
lui $2, 6
slti $3, $2, 3
mflo $4
TAG104:
mtlo $4
multu $4, $4
multu $4, $4
bgtz $4, TAG105
TAG105:
lui $2, 0
lui $1, 15
bgtz $1, TAG106
sltiu $2, $2, 6
TAG106:
bgtz $2, TAG107
sb $2, 0($2)
lhu $2, 0($2)
lui $4, 12
TAG107:
mult $4, $4
beq $4, $4, TAG108
mthi $4
beq $4, $4, TAG108
TAG108:
xori $4, $4, 2
mult $4, $4
sb $4, 0($4)
mult $4, $4
TAG109:
sh $4, 0($4)
sb $4, 0($4)
divu $4, $4
div $4, $4
TAG110:
beq $4, $4, TAG111
lhu $4, 0($4)
sw $4, 0($4)
bgtz $4, TAG111
TAG111:
multu $4, $4
lui $4, 6
mult $4, $4
mfhi $4
TAG112:
lui $3, 3
sltiu $4, $4, 9
sh $3, 0($4)
sltiu $2, $4, 10
TAG113:
mthi $2
lui $4, 2
sll $2, $2, 10
sh $4, -1024($2)
TAG114:
mflo $3
mfhi $1
mflo $3
lui $4, 0
TAG115:
mult $4, $4
bgez $4, TAG116
or $3, $4, $4
sra $2, $3, 15
TAG116:
mfhi $1
ori $4, $1, 12
lui $2, 6
sll $0, $0, 0
TAG117:
mtlo $2
sra $3, $2, 6
srl $1, $3, 9
addiu $2, $3, 8
TAG118:
beq $2, $2, TAG119
slti $1, $2, 3
bgtz $2, TAG119
mthi $1
TAG119:
mfhi $2
beq $2, $2, TAG120
lw $2, 0($1)
bne $2, $2, TAG120
TAG120:
mflo $2
subu $1, $2, $2
sra $3, $2, 9
mflo $2
TAG121:
mthi $2
divu $2, $2
mtlo $2
bne $2, $2, TAG122
TAG122:
sll $0, $0, 0
lui $2, 12
mflo $2
slti $2, $2, 14
TAG123:
lui $4, 8
andi $2, $2, 9
mtlo $4
mflo $1
TAG124:
bne $1, $1, TAG125
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG125:
mtlo $2
sb $2, 0($2)
mfhi $1
mtlo $1
TAG126:
bgtz $1, TAG127
lui $1, 6
srav $2, $1, $1
multu $2, $1
TAG127:
sll $0, $0, 0
mtlo $2
lui $4, 6
mfhi $3
TAG128:
andi $1, $3, 1
multu $3, $1
sb $1, 0($3)
beq $3, $3, TAG129
TAG129:
subu $4, $1, $1
bgtz $4, TAG130
mflo $3
sw $3, 0($4)
TAG130:
lhu $2, 0($3)
sw $3, 0($3)
multu $2, $2
lb $4, 0($2)
TAG131:
lui $4, 2
bltz $4, TAG132
andi $1, $4, 5
slt $1, $1, $4
TAG132:
mult $1, $1
sb $1, 0($1)
bne $1, $1, TAG133
sra $1, $1, 10
TAG133:
lui $3, 1
blez $1, TAG134
sll $0, $0, 0
mthi $3
TAG134:
xori $2, $3, 15
sll $0, $0, 0
bne $2, $2, TAG135
lui $1, 8
TAG135:
mfhi $2
sw $2, 0($2)
beq $1, $2, TAG136
addiu $4, $2, 8
TAG136:
multu $4, $4
srl $2, $4, 13
subu $4, $2, $4
sw $4, 8($4)
TAG137:
subu $3, $4, $4
mthi $3
srl $3, $4, 14
mflo $1
TAG138:
multu $1, $1
bltz $1, TAG139
lh $4, 0($1)
sb $4, 0($4)
TAG139:
divu $4, $4
mfhi $4
sltiu $4, $4, 10
bltz $4, TAG140
TAG140:
sb $4, 0($4)
sb $4, 0($4)
mfhi $2
lbu $3, 0($4)
TAG141:
sltiu $2, $3, 8
nor $3, $2, $2
lb $2, 2($3)
lui $4, 6
TAG142:
xori $1, $4, 0
mtlo $4
mthi $1
multu $1, $4
TAG143:
divu $1, $1
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG144:
bgtz $2, TAG145
sb $2, 8($2)
lui $4, 5
beq $2, $2, TAG145
TAG145:
srlv $3, $4, $4
sll $0, $0, 0
beq $3, $3, TAG146
and $2, $3, $3
TAG146:
sll $0, $0, 0
mflo $4
lb $2, 0($4)
sra $1, $3, 5
TAG147:
sh $1, -10240($1)
xor $1, $1, $1
lui $3, 12
mfhi $3
TAG148:
bgtz $3, TAG149
mfhi $2
bltz $2, TAG149
mthi $3
TAG149:
mfhi $4
mfhi $2
srl $3, $4, 4
sw $2, 0($4)
TAG150:
sh $3, 0($3)
beq $3, $3, TAG151
lui $1, 3
subu $4, $3, $1
TAG151:
beq $4, $4, TAG152
srav $4, $4, $4
bltz $4, TAG152
lui $1, 11
TAG152:
multu $1, $1
addiu $1, $1, 6
bgez $1, TAG153
div $1, $1
TAG153:
bgez $1, TAG154
lui $2, 8
mtlo $2
mthi $1
TAG154:
mflo $3
divu $2, $2
sll $0, $0, 0
div $3, $3
TAG155:
mthi $3
sb $3, 0($3)
srl $3, $3, 5
bgtz $3, TAG156
TAG156:
mult $3, $3
mtlo $3
lw $1, 0($3)
mfhi $1
TAG157:
lbu $2, 0($1)
xori $1, $1, 2
bne $1, $2, TAG158
lhu $3, 0($1)
TAG158:
lw $2, 0($3)
subu $3, $2, $2
mthi $3
sh $3, -256($2)
TAG159:
mthi $3
lbu $2, 0($3)
lb $1, 0($2)
bne $3, $2, TAG160
TAG160:
addi $1, $1, 0
lh $4, 0($1)
mult $4, $1
bgtz $1, TAG161
TAG161:
mthi $4
bne $4, $4, TAG162
lhu $3, 0($4)
mfhi $4
TAG162:
srlv $1, $4, $4
lhu $3, 0($4)
mflo $3
mflo $3
TAG163:
sh $3, 0($3)
bltz $3, TAG164
sw $3, 0($3)
bne $3, $3, TAG164
TAG164:
lui $4, 4
blez $4, TAG165
mflo $3
lb $4, 0($3)
TAG165:
sh $4, 0($4)
lb $4, 0($4)
lui $4, 7
blez $4, TAG166
TAG166:
sll $0, $0, 0
div $4, $4
and $2, $4, $4
slt $3, $2, $2
TAG167:
slti $3, $3, 1
bltz $3, TAG168
mtlo $3
mfhi $2
TAG168:
beq $2, $2, TAG169
lui $1, 14
srav $4, $2, $1
lui $2, 4
TAG169:
lbu $1, 0($2)
add $4, $1, $1
sltu $3, $4, $2
lhu $1, 0($2)
TAG170:
sh $1, 0($1)
and $4, $1, $1
bltz $1, TAG171
sb $1, 0($4)
TAG171:
sb $4, 0($4)
sltu $1, $4, $4
mtlo $1
sw $4, 0($4)
TAG172:
lw $1, 0($1)
lui $1, 8
sll $0, $0, 0
bltz $3, TAG173
TAG173:
mflo $2
lui $4, 14
sh $3, 0($3)
mfhi $4
TAG174:
mflo $3
lui $1, 3
sllv $2, $4, $4
sll $0, $0, 0
TAG175:
lui $3, 3
mfhi $4
sltiu $2, $3, 7
sll $0, $0, 0
TAG176:
bne $2, $2, TAG177
mfhi $2
mtlo $2
bne $2, $2, TAG177
TAG177:
sh $2, 0($2)
mtlo $2
lh $1, 0($2)
mfhi $3
TAG178:
mult $3, $3
sltiu $4, $3, 0
lui $1, 8
mthi $4
TAG179:
mtlo $1
xori $3, $1, 9
mfhi $3
bgtz $1, TAG180
TAG180:
lui $3, 2
mflo $1
bltz $3, TAG181
lui $2, 14
TAG181:
mult $2, $2
mthi $2
sltiu $3, $2, 11
beq $2, $2, TAG182
TAG182:
multu $3, $3
multu $3, $3
or $2, $3, $3
beq $2, $3, TAG183
TAG183:
add $1, $2, $2
andi $1, $1, 14
lui $4, 12
sll $0, $0, 0
TAG184:
bgez $4, TAG185
addu $2, $4, $4
ori $4, $4, 10
sltu $1, $4, $2
TAG185:
sh $1, 0($1)
bgez $1, TAG186
srav $4, $1, $1
mtlo $4
TAG186:
and $1, $4, $4
bgez $4, TAG187
add $3, $4, $4
xor $2, $3, $3
TAG187:
mflo $1
sb $1, 0($1)
lui $3, 13
bltz $3, TAG188
TAG188:
mfhi $3
or $1, $3, $3
beq $3, $1, TAG189
lui $2, 4
TAG189:
mthi $2
sll $0, $0, 0
bltz $2, TAG190
lui $3, 5
TAG190:
sll $0, $0, 0
multu $4, $4
sll $3, $4, 11
blez $3, TAG191
TAG191:
mult $3, $3
bgez $3, TAG192
lui $3, 3
ori $1, $3, 15
TAG192:
multu $1, $1
mfhi $4
mflo $1
lui $1, 14
TAG193:
nor $4, $1, $1
mfhi $4
bne $4, $1, TAG194
sb $1, 0($4)
TAG194:
multu $4, $4
beq $4, $4, TAG195
mfhi $4
divu $4, $4
TAG195:
mflo $3
slt $2, $4, $3
lui $1, 10
lui $1, 14
TAG196:
mflo $4
xor $4, $4, $1
sll $0, $0, 0
sra $4, $1, 8
TAG197:
sb $4, -3584($4)
beq $4, $4, TAG198
mtlo $4
mult $4, $4
TAG198:
sll $0, $0, 0
bgtz $1, TAG199
mthi $4
mult $4, $1
TAG199:
mult $1, $1
sll $0, $0, 0
mthi $1
mtlo $1
TAG200:
mflo $3
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG201:
bgez $1, TAG202
lui $4, 10
blez $1, TAG202
addiu $2, $4, 2
TAG202:
lui $3, 14
sh $2, 0($2)
bltz $2, TAG203
sh $3, 0($2)
TAG203:
mfhi $1
sll $0, $0, 0
bne $1, $4, TAG204
sll $0, $0, 0
TAG204:
bne $4, $4, TAG205
or $3, $4, $4
mfhi $1
srl $1, $4, 6
TAG205:
sltiu $4, $1, 6
sllv $4, $4, $1
addiu $2, $1, 15
sllv $3, $2, $2
TAG206:
sra $2, $3, 2
lui $1, 14
srl $3, $3, 4
bne $1, $2, TAG207
TAG207:
divu $3, $3
bgtz $3, TAG208
sll $0, $0, 0
srl $4, $3, 7
TAG208:
mfhi $1
mult $4, $1
xori $4, $1, 13
div $1, $4
TAG209:
beq $4, $4, TAG210
addiu $2, $4, 9
divu $4, $4
beq $4, $4, TAG210
TAG210:
lui $2, 12
mthi $2
sll $0, $0, 0
div $4, $2
TAG211:
beq $4, $4, TAG212
lb $1, 0($4)
bltz $4, TAG212
multu $4, $1
TAG212:
multu $1, $1
bne $1, $1, TAG213
mflo $4
multu $4, $1
TAG213:
lb $3, 0($4)
sw $4, 0($4)
mult $4, $3
bne $3, $3, TAG214
TAG214:
xori $4, $3, 8
mtlo $3
nor $2, $3, $3
bgez $3, TAG215
TAG215:
slt $2, $2, $2
mfhi $4
beq $4, $2, TAG216
sb $4, 0($2)
TAG216:
mfhi $1
sw $4, 0($1)
mthi $1
sltiu $4, $1, 14
TAG217:
bne $4, $4, TAG218
lui $2, 7
lui $4, 13
divu $4, $4
TAG218:
bgez $4, TAG219
divu $4, $4
xori $1, $4, 15
and $3, $1, $1
TAG219:
slti $3, $3, 2
mfhi $3
mult $3, $3
lui $4, 15
TAG220:
addiu $3, $4, 15
multu $4, $3
sll $0, $0, 0
mult $2, $4
TAG221:
lui $2, 11
sll $0, $0, 0
mthi $2
bne $2, $2, TAG222
TAG222:
mthi $2
srav $2, $2, $2
addiu $2, $2, 4
addiu $4, $2, 15
TAG223:
addu $2, $4, $4
divu $4, $2
sll $0, $0, 0
beq $2, $4, TAG224
TAG224:
lui $3, 5
beq $3, $2, TAG225
sll $0, $0, 0
lui $2, 7
TAG225:
lui $2, 1
sll $0, $0, 0
mthi $4
mflo $3
TAG226:
bgtz $3, TAG227
multu $3, $3
multu $3, $3
lbu $2, 0($3)
TAG227:
lui $4, 12
beq $4, $2, TAG228
or $1, $2, $2
sltu $3, $2, $4
TAG228:
div $3, $3
lb $3, 0($3)
bgtz $3, TAG229
lui $4, 12
TAG229:
divu $4, $4
mflo $4
addu $1, $4, $4
bgtz $1, TAG230
TAG230:
and $1, $1, $1
mtlo $1
lui $1, 12
sllv $3, $1, $1
TAG231:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
bne $3, $2, TAG232
TAG232:
mtlo $2
lb $2, 0($2)
addi $2, $2, 8
lbu $4, 0($2)
TAG233:
sw $4, 0($4)
lui $3, 3
lui $3, 15
xor $2, $4, $3
TAG234:
sra $1, $2, 13
ori $1, $2, 10
sll $0, $0, 0
andi $2, $1, 14
TAG235:
lh $3, 0($2)
bgtz $3, TAG236
mtlo $3
ori $2, $3, 3
TAG236:
bltz $2, TAG237
multu $2, $2
sll $4, $2, 7
mfhi $4
TAG237:
xor $1, $4, $4
lbu $3, 0($4)
lui $3, 9
lui $4, 11
TAG238:
mthi $4
mfhi $2
mthi $4
srav $2, $4, $2
TAG239:
mfhi $4
mfhi $3
lui $4, 15
sll $0, $0, 0
TAG240:
andi $1, $4, 11
bgez $1, TAG241
srlv $1, $4, $4
addi $2, $1, 8
TAG241:
lui $3, 12
sll $0, $0, 0
lui $2, 5
mult $3, $2
TAG242:
mtlo $2
and $2, $2, $2
multu $2, $2
mult $2, $2
TAG243:
lui $1, 6
mflo $4
lbu $2, 0($4)
subu $3, $2, $1
TAG244:
sll $0, $0, 0
sltu $2, $3, $3
multu $4, $2
bne $3, $3, TAG245
TAG245:
lui $1, 10
bltz $2, TAG246
multu $1, $2
mfhi $2
TAG246:
sw $2, 0($2)
mfhi $2
sh $2, 0($2)
lbu $3, 0($2)
TAG247:
bgtz $3, TAG248
sllv $1, $3, $3
blez $1, TAG248
addi $4, $1, 12
TAG248:
sh $4, 0($4)
mthi $4
lui $4, 7
lui $3, 9
TAG249:
sll $1, $3, 1
bne $1, $1, TAG250
sll $0, $0, 0
beq $3, $3, TAG250
TAG250:
lui $2, 8
mthi $2
mtlo $2
sll $0, $0, 0
TAG251:
div $2, $2
mthi $2
sltu $4, $2, $2
mtlo $2
TAG252:
lui $2, 8
lui $1, 1
mflo $4
lui $4, 3
TAG253:
sll $0, $0, 0
blez $1, TAG254
or $3, $1, $1
sll $0, $0, 0
TAG254:
blez $1, TAG255
lui $4, 2
bne $1, $1, TAG255
mthi $1
TAG255:
sll $0, $0, 0
slti $3, $4, 8
sll $0, $0, 0
sb $4, 0($3)
TAG256:
sll $0, $0, 0
mfhi $3
mfhi $2
sll $0, $0, 0
TAG257:
lui $4, 12
sll $0, $0, 0
div $1, $2
sll $2, $1, 4
TAG258:
slti $3, $2, 6
mult $2, $3
sb $3, 0($3)
beq $3, $3, TAG259
TAG259:
lb $2, 0($3)
lui $3, 13
beq $2, $3, TAG260
mtlo $3
TAG260:
mthi $3
div $3, $3
mtlo $3
div $3, $3
TAG261:
bne $3, $3, TAG262
slti $4, $3, 14
divu $3, $3
beq $4, $4, TAG262
TAG262:
mtlo $4
sw $4, 0($4)
beq $4, $4, TAG263
mflo $2
TAG263:
blez $2, TAG264
sub $4, $2, $2
mfhi $1
mthi $4
TAG264:
mfhi $1
bgtz $1, TAG265
slti $2, $1, 0
mflo $1
TAG265:
sw $1, 0($1)
srlv $1, $1, $1
lui $2, 11
multu $2, $1
TAG266:
bltz $2, TAG267
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG267
TAG267:
sll $0, $0, 0
bgtz $2, TAG268
sll $0, $0, 0
div $2, $2
TAG268:
srl $1, $2, 0
sll $0, $0, 0
bltz $1, TAG269
mtlo $1
TAG269:
multu $2, $2
lui $3, 7
and $1, $2, $2
mthi $2
TAG270:
beq $1, $1, TAG271
sll $0, $0, 0
lui $4, 7
subu $4, $4, $4
TAG271:
lui $3, 5
and $4, $3, $4
lui $2, 2
bgez $2, TAG272
TAG272:
addiu $2, $2, 11
mflo $3
sltu $1, $2, $2
sw $2, 0($1)
TAG273:
sra $4, $1, 12
bne $4, $1, TAG274
sh $4, 0($1)
bne $4, $4, TAG274
TAG274:
mult $4, $4
bltz $4, TAG275
or $4, $4, $4
lui $3, 0
TAG275:
sh $3, 0($3)
lbu $3, 0($3)
lb $1, 0($3)
lui $2, 15
TAG276:
lui $4, 9
lui $1, 5
addiu $1, $2, 0
sll $0, $0, 0
TAG277:
addiu $3, $1, 15
mflo $4
sra $3, $4, 8
mtlo $1
TAG278:
sw $3, 0($3)
srl $4, $3, 11
lbu $1, 0($3)
andi $4, $3, 15
TAG279:
multu $4, $4
sh $4, 0($4)
mult $4, $4
mflo $3
TAG280:
mflo $3
lui $1, 1
mfhi $3
lbu $1, 0($3)
TAG281:
sllv $4, $1, $1
blez $4, TAG282
xor $4, $4, $4
divu $4, $4
TAG282:
srav $1, $4, $4
or $1, $1, $1
srav $3, $4, $4
lui $2, 12
TAG283:
mfhi $1
mthi $1
mflo $2
srav $4, $2, $2
TAG284:
mfhi $2
sh $2, 0($4)
sb $4, 0($4)
lui $2, 11
TAG285:
sll $0, $0, 0
sll $0, $0, 0
or $3, $2, $2
sll $0, $0, 0
TAG286:
andi $1, $4, 4
lh $3, 0($4)
nor $3, $3, $3
mthi $1
TAG287:
bne $3, $3, TAG288
mthi $3
or $4, $3, $3
slti $2, $3, 11
TAG288:
lui $2, 0
bne $2, $2, TAG289
mtlo $2
mfhi $4
TAG289:
mult $4, $4
mult $4, $4
sw $4, 1($4)
bltz $4, TAG290
TAG290:
slti $3, $4, 10
bgez $3, TAG291
lb $3, 0($3)
xori $2, $4, 13
TAG291:
multu $2, $2
bgez $2, TAG292
sb $2, 0($2)
andi $2, $2, 13
TAG292:
lhu $2, 0($2)
blez $2, TAG293
mthi $2
sll $0, $0, 0
TAG293:
mflo $3
bltz $2, TAG294
sll $0, $0, 0
bgtz $3, TAG294
TAG294:
mflo $1
mtlo $3
bltz $3, TAG295
lui $2, 11
TAG295:
addiu $1, $2, 4
sll $0, $0, 0
mfhi $1
lui $4, 13
TAG296:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG297:
mflo $4
lhu $2, 0($4)
xori $4, $4, 2
sll $0, $0, 0
TAG298:
blez $3, TAG299
sltu $2, $3, $3
beq $2, $3, TAG299
mfhi $3
TAG299:
lbu $3, 0($3)
lb $3, 0($3)
bltz $3, TAG300
lbu $1, 0($3)
TAG300:
mtlo $1
lui $4, 10
mfhi $4
lw $4, 0($1)
TAG301:
ori $4, $4, 8
bgtz $4, TAG302
multu $4, $4
mthi $4
TAG302:
sb $4, 248($4)
mult $4, $4
lh $4, 248($4)
bne $4, $4, TAG303
TAG303:
sw $4, 248($4)
lb $3, 248($4)
mfhi $4
lui $1, 0
TAG304:
slti $2, $1, 0
bltz $1, TAG305
sllv $3, $2, $1
mult $3, $1
TAG305:
mflo $3
beq $3, $3, TAG306
mfhi $2
lui $1, 11
TAG306:
mthi $1
ori $1, $1, 8
beq $1, $1, TAG307
lui $3, 5
TAG307:
mflo $1
divu $1, $3
sb $3, 0($1)
bgtz $3, TAG308
TAG308:
lui $3, 10
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
TAG309:
beq $3, $3, TAG310
subu $1, $3, $3
mtlo $3
lui $3, 11
TAG310:
mflo $2
divu $2, $3
srav $4, $2, $3
blez $4, TAG311
TAG311:
sll $0, $0, 0
sll $0, $0, 0
sll $2, $4, 11
bgtz $4, TAG312
TAG312:
mult $2, $2
mfhi $2
xor $3, $2, $2
sll $0, $0, 0
TAG313:
lbu $2, 0($3)
sb $2, 0($3)
bne $3, $3, TAG314
mfhi $1
TAG314:
addu $3, $1, $1
bgez $1, TAG315
sll $0, $0, 0
mtlo $1
TAG315:
blez $3, TAG316
mflo $3
sh $3, 0($3)
lbu $3, 0($3)
TAG316:
srav $3, $3, $3
bne $3, $3, TAG317
addi $4, $3, 3
blez $3, TAG317
TAG317:
and $2, $4, $4
mtlo $4
mflo $4
sb $4, 0($4)
TAG318:
sb $4, 0($4)
sb $4, 0($4)
sll $2, $4, 6
lb $2, 0($4)
TAG319:
sb $2, 0($2)
lb $2, 0($2)
bne $2, $2, TAG320
lui $2, 4
TAG320:
div $2, $2
bne $2, $2, TAG321
div $2, $2
divu $2, $2
TAG321:
srl $3, $2, 7
lbu $3, -2048($3)
multu $2, $3
bltz $2, TAG322
TAG322:
or $4, $3, $3
bgez $3, TAG323
xor $3, $3, $3
sb $3, 0($3)
TAG323:
addiu $1, $3, 6
multu $3, $3
lh $1, 0($1)
ori $1, $3, 0
TAG324:
mflo $1
mtlo $1
mtlo $1
srav $4, $1, $1
TAG325:
mfhi $4
xor $4, $4, $4
nor $2, $4, $4
bne $4, $4, TAG326
TAG326:
multu $2, $2
slt $1, $2, $2
bgtz $2, TAG327
mthi $1
TAG327:
sh $1, 0($1)
bgez $1, TAG328
mtlo $1
multu $1, $1
TAG328:
multu $1, $1
bne $1, $1, TAG329
srav $3, $1, $1
bltz $1, TAG329
TAG329:
lbu $1, 0($3)
mflo $3
lw $3, 0($3)
lbu $3, 0($1)
TAG330:
mtlo $3
lw $4, 0($3)
bltz $3, TAG331
lbu $3, 0($3)
TAG331:
slti $4, $3, 3
sh $4, 0($3)
mflo $2
beq $4, $2, TAG332
TAG332:
lui $4, 9
mthi $4
multu $2, $2
multu $2, $2
TAG333:
xor $2, $4, $4
mult $4, $4
multu $4, $4
mflo $4
TAG334:
multu $4, $4
multu $4, $4
sllv $1, $4, $4
ori $2, $1, 4
TAG335:
srav $2, $2, $2
lbu $2, 0($2)
lb $4, 0($2)
lui $3, 14
TAG336:
or $4, $3, $3
sltiu $3, $3, 15
sh $4, 0($3)
beq $3, $3, TAG337
TAG337:
mult $3, $3
lhu $4, 0($3)
multu $3, $4
bgtz $3, TAG338
TAG338:
lui $3, 7
lbu $4, 0($4)
bgez $3, TAG339
mult $4, $3
TAG339:
beq $4, $4, TAG340
or $1, $4, $4
mfhi $3
mfhi $4
TAG340:
multu $4, $4
bne $4, $4, TAG341
srl $1, $4, 15
mflo $4
TAG341:
sltu $2, $4, $4
bltz $4, TAG342
mfhi $3
sh $2, 0($3)
TAG342:
or $3, $3, $3
andi $4, $3, 13
lb $4, 0($4)
slti $3, $4, 9
TAG343:
srlv $4, $3, $3
sll $4, $3, 1
andi $2, $3, 15
bltz $4, TAG344
TAG344:
addiu $3, $2, 6
mthi $3
mthi $3
lui $3, 9
TAG345:
bne $3, $3, TAG346
nor $4, $3, $3
sll $0, $0, 0
lb $4, 0($2)
TAG346:
blez $4, TAG347
lw $1, 0($4)
mthi $4
xor $1, $1, $1
TAG347:
mfhi $3
mfhi $2
mflo $2
multu $2, $2
TAG348:
bgez $2, TAG349
lh $2, 0($2)
mfhi $4
mflo $3
TAG349:
blez $3, TAG350
sb $3, 0($3)
srl $1, $3, 0
mtlo $1
TAG350:
srlv $4, $1, $1
mtlo $1
mult $1, $4
andi $4, $1, 4
TAG351:
mtlo $4
addu $4, $4, $4
div $4, $4
bne $4, $4, TAG352
TAG352:
multu $4, $4
mfhi $2
bltz $2, TAG353
mflo $2
TAG353:
blez $2, TAG354
lui $1, 14
lui $3, 5
sll $0, $0, 0
TAG354:
subu $1, $3, $3
lui $3, 5
div $1, $3
divu $3, $3
TAG355:
sll $0, $0, 0
mtlo $1
div $1, $3
sw $1, 0($1)
TAG356:
mtlo $1
srl $1, $1, 7
mtlo $1
mthi $1
TAG357:
multu $1, $1
beq $1, $1, TAG358
xor $3, $1, $1
mthi $3
TAG358:
multu $3, $3
blez $3, TAG359
mfhi $4
bne $3, $4, TAG359
TAG359:
sh $4, 0($4)
multu $4, $4
mthi $4
andi $1, $4, 7
TAG360:
bgez $1, TAG361
sltiu $2, $1, 4
mflo $3
mthi $2
TAG361:
lh $4, 0($3)
lui $1, 7
blez $3, TAG362
sh $1, 0($4)
TAG362:
mthi $1
mthi $1
mthi $1
sll $0, $0, 0
TAG363:
bgtz $2, TAG364
ori $3, $2, 0
multu $3, $2
slti $4, $3, 4
TAG364:
nor $3, $4, $4
lb $3, 1($3)
bne $4, $3, TAG365
sllv $3, $4, $3
TAG365:
mflo $4
add $3, $3, $3
lhu $4, 0($3)
mthi $4
TAG366:
addi $2, $4, 1
bgtz $2, TAG367
lh $2, 0($4)
lui $3, 7
TAG367:
sltu $1, $3, $3
or $2, $1, $3
mthi $2
sll $1, $1, 11
TAG368:
bgez $1, TAG369
mflo $3
lui $1, 8
mflo $4
TAG369:
bltz $4, TAG370
lhu $3, 0($4)
lw $3, 0($3)
sw $3, 0($3)
TAG370:
bne $3, $3, TAG371
sb $3, 0($3)
lhu $1, 0($3)
lui $2, 1
TAG371:
andi $3, $2, 12
mult $3, $3
beq $3, $3, TAG372
lui $3, 0
TAG372:
mthi $3
bgtz $3, TAG373
srav $4, $3, $3
mthi $3
TAG373:
mtlo $4
blez $4, TAG374
lhu $4, 0($4)
lhu $3, 0($4)
TAG374:
lb $2, 0($3)
multu $3, $3
sw $3, 0($2)
srl $2, $3, 5
TAG375:
lui $1, 6
lui $4, 12
mult $2, $4
blez $2, TAG376
TAG376:
divu $4, $4
mtlo $4
divu $4, $4
sll $0, $0, 0
TAG377:
beq $4, $4, TAG378
addiu $4, $4, 6
addu $1, $4, $4
sb $4, 0($1)
TAG378:
divu $1, $1
mtlo $1
mtlo $1
bgtz $1, TAG379
TAG379:
mflo $2
sll $0, $0, 0
lui $4, 2
xori $3, $2, 10
TAG380:
blez $3, TAG381
mthi $3
bltz $3, TAG381
lui $1, 0
TAG381:
srl $2, $1, 14
bltz $1, TAG382
ori $3, $1, 6
mtlo $2
TAG382:
lui $4, 11
lui $4, 12
sll $0, $0, 0
blez $3, TAG383
TAG383:
lui $3, 2
addiu $2, $3, 1
sll $0, $0, 0
blez $2, TAG384
TAG384:
sll $0, $0, 0
xor $4, $2, $2
blez $2, TAG385
mtlo $2
TAG385:
lui $1, 8
bltz $1, TAG386
mfhi $4
lui $1, 12
TAG386:
sll $0, $0, 0
mtlo $1
sltu $2, $1, $1
sll $3, $2, 8
TAG387:
lh $4, 0($3)
lw $1, 0($3)
multu $1, $3
addiu $3, $3, 12
TAG388:
addiu $4, $3, 1
sra $2, $3, 5
mflo $2
mflo $2
TAG389:
subu $4, $2, $2
sb $4, 0($2)
sb $4, 0($4)
nor $4, $2, $4
TAG390:
and $3, $4, $4
sh $4, 1($3)
nor $2, $3, $3
lbu $3, 1($4)
TAG391:
sltiu $2, $3, 11
xori $2, $2, 14
xori $1, $3, 0
sltiu $4, $2, 15
TAG392:
multu $4, $4
beq $4, $4, TAG393
sb $4, 0($4)
sltu $2, $4, $4
TAG393:
divu $2, $2
sll $2, $2, 15
addu $4, $2, $2
div $2, $2
TAG394:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
lhu $1, -255($1)
TAG395:
sll $0, $0, 0
blez $1, TAG396
lui $3, 15
lw $1, -511($1)
TAG396:
mfhi $4
bne $1, $1, TAG397
sb $4, -511($1)
sltiu $2, $1, 0
TAG397:
mtlo $2
lui $1, 6
blez $2, TAG398
mtlo $2
TAG398:
multu $1, $1
bne $1, $1, TAG399
mflo $4
xori $4, $1, 12
TAG399:
sll $0, $0, 0
mfhi $1
sra $1, $1, 10
srl $2, $4, 9
TAG400:
bne $2, $2, TAG401
sh $2, -768($2)
bgtz $2, TAG401
divu $2, $2
TAG401:
sll $0, $0, 0
mthi $2
srav $4, $4, $2
mult $4, $4
TAG402:
bltz $4, TAG403
sll $0, $0, 0
mthi $4
bltz $3, TAG403
TAG403:
xor $2, $3, $3
sra $1, $3, 8
bltz $3, TAG404
sltu $2, $2, $2
TAG404:
subu $1, $2, $2
lui $4, 9
mflo $1
bne $2, $1, TAG405
TAG405:
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
lui $3, 2
TAG406:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG407:
lui $2, 5
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG408:
mfhi $4
lhu $1, 0($4)
lui $1, 14
bgtz $1, TAG409
TAG409:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
multu $1, $1
TAG410:
bltz $3, TAG411
srlv $4, $3, $3
bltz $4, TAG411
subu $3, $3, $4
TAG411:
mult $3, $3
mtlo $3
blez $3, TAG412
lbu $3, 0($3)
TAG412:
div $3, $3
mflo $1
lui $1, 13
bgez $3, TAG413
TAG413:
lui $4, 9
sll $0, $0, 0
mflo $3
mfhi $2
TAG414:
lui $2, 12
addiu $4, $2, 15
mfhi $1
bne $2, $2, TAG415
TAG415:
mthi $1
mfhi $1
multu $1, $1
sw $1, 0($1)
TAG416:
mtlo $1
mthi $1
mfhi $4
sb $1, 0($1)
TAG417:
lb $1, 0($4)
sh $1, 0($1)
bltz $4, TAG418
srlv $1, $4, $1
TAG418:
mtlo $1
mtlo $1
blez $1, TAG419
addi $1, $1, 10
TAG419:
lhu $3, 0($1)
bne $3, $3, TAG420
and $4, $3, $1
lb $4, 0($3)
TAG420:
lui $1, 11
sll $0, $0, 0
bltz $4, TAG421
lbu $3, 0($4)
TAG421:
lui $3, 13
divu $3, $3
bne $3, $3, TAG422
sll $0, $0, 0
TAG422:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG423:
multu $2, $2
multu $2, $2
mtlo $2
divu $2, $2
TAG424:
bgtz $2, TAG425
sltiu $3, $2, 1
mtlo $2
addiu $1, $2, 8
TAG425:
sll $0, $0, 0
sll $0, $0, 0
mult $1, $1
bgtz $1, TAG426
TAG426:
mfhi $4
sb $1, 0($4)
divu $4, $4
addiu $2, $4, 2
TAG427:
subu $1, $2, $2
sb $2, 0($1)
lb $3, 0($2)
slti $3, $3, 3
TAG428:
lui $4, 10
slti $1, $3, 11
lui $4, 13
mtlo $4
TAG429:
sltu $2, $4, $4
addi $1, $2, 11
sb $4, 0($1)
sll $0, $0, 0
TAG430:
bne $4, $4, TAG431
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG431
TAG431:
and $3, $4, $4
multu $3, $4
sll $0, $0, 0
multu $4, $4
TAG432:
divu $3, $3
sll $0, $0, 0
mult $3, $3
beq $3, $3, TAG433
TAG433:
sllv $3, $3, $3
mfhi $2
mthi $3
bltz $2, TAG434
TAG434:
lui $3, 5
sh $3, -169($2)
sltiu $4, $2, 14
sll $0, $0, 0
TAG435:
mthi $2
mflo $3
mthi $2
andi $3, $3, 7
TAG436:
andi $3, $3, 7
sb $3, 0($3)
sllv $3, $3, $3
mfhi $2
TAG437:
addiu $4, $2, 14
beq $2, $2, TAG438
div $4, $2
bgez $4, TAG438
TAG438:
lui $1, 3
divu $1, $4
bgtz $4, TAG439
sll $0, $0, 0
TAG439:
mtlo $1
srlv $1, $1, $1
sll $0, $0, 0
lui $1, 7
TAG440:
sll $0, $0, 0
addu $1, $1, $1
sll $0, $0, 0
beq $1, $1, TAG441
TAG441:
xori $4, $4, 15
blez $4, TAG442
mtlo $4
blez $4, TAG442
TAG442:
xor $4, $4, $4
multu $4, $4
slt $1, $4, $4
mult $4, $4
TAG443:
lb $1, 0($1)
sb $1, 0($1)
andi $3, $1, 6
andi $1, $1, 1
TAG444:
bne $1, $1, TAG445
lui $2, 14
addiu $2, $2, 14
ori $4, $2, 12
TAG445:
sll $0, $0, 0
mthi $2
addiu $2, $2, 8
bne $2, $2, TAG446
TAG446:
lui $3, 11
blez $2, TAG447
sll $0, $0, 0
mfhi $4
TAG447:
sra $3, $4, 5
lhu $4, -28672($3)
mfhi $2
mthi $4
TAG448:
lui $3, 8
mtlo $2
lui $1, 0
sll $0, $0, 0
TAG449:
divu $2, $2
lui $4, 14
sll $0, $0, 0
mfhi $2
TAG450:
subu $1, $2, $2
sub $4, $2, $1
beq $1, $2, TAG451
lhu $2, 0($4)
TAG451:
lbu $1, 0($2)
lui $4, 7
or $1, $4, $1
bne $2, $2, TAG452
TAG452:
lui $2, 11
sll $0, $0, 0
addiu $2, $2, 1
mfhi $2
TAG453:
sw $2, 0($2)
addiu $2, $2, 7
bltz $2, TAG454
sb $2, 0($2)
TAG454:
div $2, $2
div $2, $2
multu $2, $2
div $2, $2
TAG455:
lbu $1, 0($2)
lbu $4, 0($2)
bgez $1, TAG456
mtlo $2
TAG456:
lbu $4, 0($4)
and $3, $4, $4
lb $2, 0($4)
mfhi $1
TAG457:
bltz $1, TAG458
multu $1, $1
sra $1, $1, 3
xori $1, $1, 5
TAG458:
mtlo $1
div $1, $1
sb $1, 0($1)
beq $1, $1, TAG459
TAG459:
sb $1, 0($1)
sb $1, 0($1)
bltz $1, TAG460
srlv $3, $1, $1
TAG460:
sll $1, $3, 4
mflo $2
lui $1, 4
bne $3, $1, TAG461
TAG461:
mflo $2
ori $3, $2, 4
blez $2, TAG462
addiu $3, $3, 0
TAG462:
sll $3, $3, 4
xor $3, $3, $3
sh $3, 0($3)
bgtz $3, TAG463
TAG463:
multu $3, $3
multu $3, $3
bgez $3, TAG464
lb $2, 0($3)
TAG464:
lui $2, 15
blez $2, TAG465
slti $2, $2, 7
beq $2, $2, TAG465
TAG465:
lw $2, 0($2)
sll $2, $2, 6
lbu $3, 0($2)
bgtz $2, TAG466
TAG466:
multu $3, $3
subu $2, $3, $3
sb $2, 0($2)
beq $2, $2, TAG467
TAG467:
sw $2, 0($2)
bltz $2, TAG468
sra $1, $2, 9
bgez $1, TAG468
TAG468:
lui $2, 7
andi $1, $2, 2
sb $2, 0($1)
lbu $2, 0($1)
TAG469:
sh $2, 0($2)
multu $2, $2
mflo $1
multu $2, $2
TAG470:
mult $1, $1
lui $3, 3
lhu $1, 0($1)
multu $1, $1
TAG471:
mthi $1
lb $2, 0($1)
sw $1, 0($2)
sw $2, 0($1)
TAG472:
sb $2, 0($2)
bltz $2, TAG473
lui $2, 12
addu $2, $2, $2
TAG473:
addiu $3, $2, 10
divu $2, $3
slti $1, $3, 8
xori $1, $2, 1
TAG474:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG475:
bgtz $1, TAG476
addu $1, $1, $1
bgtz $1, TAG476
mthi $1
TAG476:
sll $0, $0, 0
lui $2, 7
lui $3, 7
mult $3, $1
TAG477:
addiu $4, $3, 6
sllv $4, $4, $4
mflo $2
bgez $4, TAG478
TAG478:
addu $2, $2, $2
bne $2, $2, TAG479
multu $2, $2
sll $0, $0, 0
TAG479:
bgtz $2, TAG480
sll $0, $0, 0
bgtz $2, TAG480
mfhi $3
TAG480:
bne $3, $3, TAG481
lui $4, 4
mthi $4
lui $2, 15
TAG481:
bgtz $2, TAG482
divu $2, $2
sh $2, 0($2)
blez $2, TAG482
TAG482:
mtlo $2
lui $4, 1
slt $2, $2, $2
beq $2, $4, TAG483
TAG483:
lb $4, 0($2)
bne $4, $2, TAG484
sb $2, 0($4)
mfhi $2
TAG484:
beq $2, $2, TAG485
sh $2, 0($2)
mthi $2
mthi $2
TAG485:
mthi $2
lui $4, 4
sll $0, $0, 0
subu $4, $2, $4
TAG486:
addiu $2, $4, 2
beq $4, $2, TAG487
mthi $4
and $2, $4, $4
TAG487:
sll $0, $0, 0
bgez $2, TAG488
multu $2, $2
beq $2, $2, TAG488
TAG488:
addu $1, $2, $2
bltz $2, TAG489
addu $3, $1, $1
mfhi $2
TAG489:
divu $2, $2
subu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG490:
mfhi $3
bne $3, $2, TAG491
multu $3, $2
mthi $2
TAG491:
sll $4, $3, 2
beq $3, $4, TAG492
lui $3, 0
lui $4, 0
TAG492:
mthi $4
lui $4, 13
bne $4, $4, TAG493
xor $1, $4, $4
TAG493:
mtlo $1
sra $4, $1, 2
mflo $3
multu $1, $1
TAG494:
mfhi $1
sb $3, 0($1)
slti $2, $1, 13
bgtz $1, TAG495
TAG495:
lb $4, 0($2)
sb $2, 0($2)
sb $4, 0($2)
lbu $3, 0($2)
TAG496:
mflo $2
lui $1, 8
mult $1, $1
mflo $1
TAG497:
mthi $1
bgez $1, TAG498
or $2, $1, $1
lui $2, 1
TAG498:
slt $3, $2, $2
sra $2, $2, 15
mthi $3
bgtz $2, TAG499
TAG499:
sb $2, 0($2)
lhu $4, 0($2)
sw $2, 0($4)
bgez $2, TAG500
TAG500:
mfhi $1
lb $4, 0($1)
bltz $1, TAG501
lh $2, 0($4)
TAG501:
mult $2, $2
beq $2, $2, TAG502
mult $2, $2
blez $2, TAG502
TAG502:
lw $1, 0($2)
lhu $3, 0($2)
sw $3, 0($3)
andi $2, $1, 14
TAG503:
mtlo $2
or $3, $2, $2
bne $2, $3, TAG504
mtlo $3
TAG504:
lw $2, 0($3)
sw $2, 0($3)
xor $1, $3, $3
bgez $3, TAG505
TAG505:
xori $4, $1, 1
beq $1, $1, TAG506
mflo $3
sb $4, 0($4)
TAG506:
sb $3, 0($3)
bgtz $3, TAG507
sll $4, $3, 13
multu $3, $4
TAG507:
bne $4, $4, TAG508
lui $1, 8
bltz $4, TAG508
xori $4, $4, 0
TAG508:
lbu $3, 0($4)
mflo $3
mtlo $3
mflo $1
TAG509:
beq $1, $1, TAG510
lhu $2, 0($1)
mtlo $2
beq $2, $2, TAG510
TAG510:
sb $2, 0($2)
lhu $1, 0($2)
lui $3, 15
srav $4, $2, $1
TAG511:
lh $4, 0($4)
lui $3, 9
bgez $4, TAG512
sltiu $3, $3, 6
TAG512:
srl $4, $3, 8
lui $4, 11
lhu $3, 0($3)
lui $2, 15
TAG513:
srl $2, $2, 12
mfhi $2
mflo $1
and $4, $2, $2
TAG514:
sb $4, 0($4)
sh $4, 0($4)
mflo $3
mflo $4
TAG515:
blez $4, TAG516
mtlo $4
slti $1, $4, 13
lui $2, 2
TAG516:
lui $4, 3
mthi $4
lh $1, 0($2)
mflo $4
TAG517:
mtlo $4
bltz $4, TAG518
mult $4, $4
mfhi $2
TAG518:
lhu $4, 0($2)
lui $4, 5
slt $3, $2, $2
bgez $4, TAG519
TAG519:
xor $1, $3, $3
mflo $3
sh $1, 0($3)
lw $3, 0($1)
TAG520:
lui $2, 4
lbu $1, 0($3)
sll $0, $0, 0
sw $1, 0($3)
TAG521:
sh $3, 0($3)
addi $2, $3, 5
sllv $1, $3, $3
xor $3, $1, $2
TAG522:
andi $4, $3, 2
lb $2, 0($4)
sb $3, 0($3)
mthi $4
TAG523:
beq $2, $2, TAG524
lb $2, 0($2)
bltz $2, TAG524
div $2, $2
TAG524:
mthi $2
sltiu $4, $2, 5
bne $4, $2, TAG525
mult $2, $2
TAG525:
bne $4, $4, TAG526
mtlo $4
divu $4, $4
lbu $2, 0($4)
TAG526:
mfhi $3
mult $2, $2
lui $1, 7
lui $4, 9
TAG527:
ori $3, $4, 5
sll $0, $0, 0
mfhi $2
lui $2, 10
TAG528:
sra $4, $2, 0
mtlo $2
sll $0, $0, 0
srav $4, $4, $4
TAG529:
mthi $4
bgez $4, TAG530
addiu $3, $4, 12
lui $1, 11
TAG530:
mult $1, $1
bne $1, $1, TAG531
sra $2, $1, 10
lw $1, -448($2)
TAG531:
lbu $1, 0($1)
mfhi $1
mthi $1
mtlo $1
TAG532:
mflo $3
blez $1, TAG533
ori $4, $1, 0
sb $3, 0($3)
TAG533:
blez $4, TAG534
addu $2, $4, $4
bne $4, $2, TAG534
lbu $3, 0($2)
TAG534:
sltu $4, $3, $3
lb $1, 0($4)
mfhi $3
bltz $1, TAG535
TAG535:
lb $1, 0($3)
beq $3, $1, TAG536
lb $3, 0($1)
lui $3, 8
TAG536:
lbu $3, 0($3)
sb $3, 0($3)
mflo $2
bgez $3, TAG537
TAG537:
mtlo $2
divu $2, $2
lb $1, 0($2)
lbu $3, 0($2)
TAG538:
srav $4, $3, $3
lui $4, 7
div $4, $4
divu $4, $3
TAG539:
mtlo $4
multu $4, $4
bne $4, $4, TAG540
mthi $4
TAG540:
mult $4, $4
div $4, $4
bltz $4, TAG541
mult $4, $4
TAG541:
sll $0, $0, 0
addiu $1, $4, 15
bgtz $4, TAG542
mfhi $3
TAG542:
mflo $4
mflo $2
mthi $2
lui $3, 0
TAG543:
beq $3, $3, TAG544
mfhi $3
bgez $3, TAG544
lui $3, 14
TAG544:
bgtz $3, TAG545
sb $3, 0($3)
bne $3, $3, TAG545
multu $3, $3
TAG545:
multu $3, $3
sltiu $2, $3, 1
mthi $3
beq $2, $2, TAG546
TAG546:
lb $1, 0($2)
mtlo $1
nor $3, $1, $2
or $2, $1, $3
TAG547:
bne $2, $2, TAG548
sra $4, $2, 0
sh $2, 2($4)
beq $4, $4, TAG548
TAG548:
sll $0, $0, 0
multu $4, $1
add $1, $1, $1
mtlo $1
TAG549:
add $3, $1, $1
mult $1, $3
mfhi $3
mthi $3
TAG550:
lui $3, 7
sllv $1, $3, $3
lui $4, 13
mthi $1
TAG551:
sltiu $3, $4, 11
addiu $2, $3, 5
addiu $3, $3, 8
div $2, $3
TAG552:
lw $1, 0($3)
lbu $3, 0($1)
sh $3, 0($3)
lh $3, 0($1)
TAG553:
mtlo $3
lui $1, 3
sb $1, 0($3)
sll $0, $0, 0
TAG554:
srav $1, $1, $1
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG555
TAG555:
sll $0, $0, 0
bltz $1, TAG556
sll $0, $0, 0
mult $1, $1
TAG556:
lui $3, 10
mfhi $4
sb $4, 0($4)
sll $0, $0, 0
TAG557:
bne $2, $2, TAG558
multu $2, $2
sb $2, 0($2)
bne $2, $2, TAG558
TAG558:
divu $2, $2
lui $3, 13
lui $4, 3
sll $0, $0, 0
TAG559:
lb $4, 0($2)
sb $2, 0($2)
or $4, $4, $2
mthi $4
TAG560:
lui $1, 7
nor $1, $4, $4
lh $2, 6($1)
lui $3, 10
TAG561:
sll $0, $0, 0
bne $3, $3, TAG562
sll $0, $0, 0
sll $0, $0, 0
TAG562:
mthi $3
blez $3, TAG563
mtlo $3
bgtz $3, TAG563
TAG563:
mflo $4
addiu $2, $4, 12
lui $2, 0
lui $3, 2
TAG564:
mtlo $3
srlv $2, $3, $3
sll $0, $0, 0
lui $4, 0
TAG565:
sh $4, 0($4)
sub $4, $4, $4
mtlo $4
bltz $4, TAG566
TAG566:
multu $4, $4
mtlo $4
bne $4, $4, TAG567
lui $2, 11
TAG567:
or $2, $2, $2
bgtz $2, TAG568
mult $2, $2
mtlo $2
TAG568:
slti $2, $2, 11
sw $2, 0($2)
sra $3, $2, 9
mflo $1
TAG569:
mflo $4
multu $1, $4
or $3, $4, $1
beq $1, $4, TAG570
TAG570:
mtlo $3
mflo $4
mfhi $2
lb $2, 0($4)
TAG571:
bltz $2, TAG572
sra $4, $2, 1
mult $4, $4
lw $4, 0($2)
TAG572:
sltiu $2, $4, 3
nor $1, $2, $4
srl $1, $4, 13
lui $1, 10
TAG573:
sll $3, $1, 7
addu $4, $3, $1
lui $2, 3
bne $1, $2, TAG574
TAG574:
lui $3, 1
sll $0, $0, 0
sll $4, $2, 1
sll $0, $0, 0
TAG575:
multu $3, $3
lui $4, 4
mfhi $3
sb $3, 0($3)
TAG576:
div $3, $3
lui $1, 0
mflo $2
sw $3, 0($1)
TAG577:
sb $2, 0($2)
sll $3, $2, 12
lui $4, 2
slt $1, $2, $4
TAG578:
lb $3, 0($1)
xor $4, $3, $1
lb $1, 0($1)
lb $1, 0($1)
TAG579:
beq $1, $1, TAG580
sllv $3, $1, $1
blez $3, TAG580
mfhi $3
TAG580:
sltu $1, $3, $3
lb $1, 0($1)
mult $1, $1
bgez $1, TAG581
TAG581:
mthi $1
div $1, $1
lui $3, 3
sll $0, $0, 0
TAG582:
sll $2, $3, 15
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG583
TAG583:
sllv $4, $3, $3
subu $2, $4, $4
beq $2, $2, TAG584
sll $0, $0, 0
TAG584:
lb $2, 0($2)
divu $2, $2
multu $2, $2
mflo $3
TAG585:
lbu $1, 0($3)
mfhi $3
lui $1, 3
bgtz $3, TAG586
TAG586:
mfhi $4
mult $4, $1
sw $1, 0($4)
sll $0, $0, 0
TAG587:
mthi $4
slt $4, $4, $4
bne $4, $4, TAG588
addu $4, $4, $4
TAG588:
xor $2, $4, $4
mtlo $2
bltz $4, TAG589
multu $4, $2
TAG589:
mtlo $2
mtlo $2
mthi $2
beq $2, $2, TAG590
TAG590:
slti $2, $2, 15
mthi $2
mflo $1
multu $2, $1
TAG591:
lb $2, 0($1)
ori $2, $2, 5
lui $1, 15
andi $4, $2, 5
TAG592:
mtlo $4
sb $4, 0($4)
lb $1, 0($4)
div $4, $1
TAG593:
lui $4, 1
lui $1, 8
ori $4, $4, 3
sltu $3, $1, $1
TAG594:
mfhi $2
lhu $3, 0($3)
mtlo $2
mfhi $1
TAG595:
mfhi $4
beq $1, $1, TAG596
lb $1, 0($4)
xor $4, $1, $1
TAG596:
bgez $4, TAG597
slt $2, $4, $4
beq $4, $4, TAG597
lui $2, 4
TAG597:
mtlo $2
addi $2, $2, 8
lui $1, 0
sw $2, 0($2)
TAG598:
lui $1, 10
sll $0, $0, 0
nor $3, $2, $1
sll $1, $2, 8
TAG599:
mflo $4
addiu $3, $4, 5
multu $3, $4
lui $2, 7
TAG600:
mflo $1
addu $2, $1, $1
mtlo $1
mtlo $1
TAG601:
srlv $2, $2, $2
lhu $3, 0($2)
beq $2, $2, TAG602
lui $2, 1
TAG602:
nor $4, $2, $2
andi $4, $4, 6
sll $0, $0, 0
lh $2, 0($4)
TAG603:
blez $2, TAG604
mflo $3
mult $2, $3
lb $1, -1792($2)
TAG604:
lbu $3, 0($1)
mfhi $1
ori $1, $3, 3
mtlo $1
TAG605:
lbu $2, 0($1)
mtlo $2
sb $1, 0($1)
addu $3, $1, $2
TAG606:
divu $3, $3
sb $3, 0($3)
mfhi $4
divu $3, $3
TAG607:
multu $4, $4
sh $4, 0($4)
sh $4, 0($4)
bltz $4, TAG608
TAG608:
lhu $3, 0($4)
or $1, $3, $4
bgez $1, TAG609
mfhi $3
TAG609:
sh $3, 0($3)
nor $1, $3, $3
lw $2, 1($1)
mult $1, $1
TAG610:
mfhi $1
mthi $2
sll $0, $0, 0
lb $3, 0($1)
TAG611:
lw $2, 0($3)
lui $1, 7
addiu $1, $2, 9
or $4, $2, $1
TAG612:
sll $4, $4, 3
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG613:
mthi $4
lui $2, 14
beq $4, $4, TAG614
lui $4, 0
TAG614:
addiu $4, $4, 12
sb $4, 0($4)
slti $4, $4, 11
sll $3, $4, 6
TAG615:
mflo $1
mthi $3
mtlo $3
lui $2, 9
TAG616:
addiu $2, $2, 12
addu $3, $2, $2
bgtz $2, TAG617
mfhi $2
TAG617:
bgtz $2, TAG618
mflo $3
mfhi $1
bltz $3, TAG618
TAG618:
srl $2, $1, 8
multu $1, $1
srl $3, $1, 7
sra $2, $1, 3
TAG619:
sltu $4, $2, $2
beq $4, $2, TAG620
mtlo $2
blez $4, TAG620
TAG620:
mtlo $4
sh $4, 0($4)
sh $4, 0($4)
lbu $1, 0($4)
TAG621:
sll $2, $1, 4
or $2, $1, $2
bne $2, $2, TAG622
mflo $1
TAG622:
mflo $4
mfhi $4
lh $2, 0($4)
bgtz $4, TAG623
TAG623:
mthi $2
sw $2, 0($2)
mthi $2
or $4, $2, $2
TAG624:
ori $1, $4, 0
beq $1, $4, TAG625
mfhi $3
andi $4, $4, 13
TAG625:
sw $4, 0($4)
bltz $4, TAG626
mthi $4
multu $4, $4
TAG626:
sb $4, 0($4)
mult $4, $4
sra $2, $4, 11
lb $3, 0($4)
TAG627:
bltz $3, TAG628
slti $3, $3, 11
sb $3, 0($3)
bne $3, $3, TAG628
TAG628:
mtlo $3
mfhi $2
mthi $3
and $4, $2, $2
TAG629:
lb $4, 0($4)
mthi $4
lui $4, 15
mtlo $4
TAG630:
multu $4, $4
divu $4, $4
div $4, $4
mtlo $4
TAG631:
lui $1, 8
div $1, $4
sll $0, $0, 0
bne $4, $1, TAG632
TAG632:
slt $3, $3, $3
nor $2, $3, $3
sra $2, $3, 4
lui $3, 9
TAG633:
mflo $3
bltz $3, TAG634
lui $1, 6
add $4, $3, $3
TAG634:
lh $4, 0($4)
lhu $3, -256($4)
mthi $4
bne $4, $4, TAG635
TAG635:
sh $3, -256($3)
mthi $3
beq $3, $3, TAG636
mult $3, $3
TAG636:
sll $0, $0, 0
sh $3, -256($3)
divu $3, $3
lui $3, 1
TAG637:
sll $2, $3, 3
beq $3, $3, TAG638
lui $1, 15
xori $4, $1, 13
TAG638:
bne $4, $4, TAG639
srav $4, $4, $4
mtlo $4
multu $4, $4
TAG639:
sltu $1, $4, $4
mfhi $3
mtlo $1
bne $4, $1, TAG640
TAG640:
mflo $3
lui $4, 7
lui $2, 9
xor $4, $3, $4
TAG641:
bne $4, $4, TAG642
mflo $1
bltz $1, TAG642
mflo $3
TAG642:
xori $3, $3, 9
mthi $3
lbu $2, 0($3)
sh $2, 0($2)
TAG643:
lui $2, 5
beq $2, $2, TAG644
mthi $2
addi $4, $2, 0
TAG644:
lui $4, 15
bne $4, $4, TAG645
mtlo $4
xor $2, $4, $4
TAG645:
mflo $4
bgez $4, TAG646
mthi $2
nor $2, $4, $2
TAG646:
lui $3, 1
lw $1, 0($2)
and $1, $1, $2
mtlo $3
TAG647:
blez $1, TAG648
addu $3, $1, $1
sltiu $4, $3, 9
sh $4, 0($4)
TAG648:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG649
TAG649:
mtlo $1
bne $1, $1, TAG650
lui $1, 8
bgtz $1, TAG650
TAG650:
andi $1, $1, 3
sltiu $1, $1, 3
divu $1, $1
mfhi $1
TAG651:
mfhi $3
multu $1, $3
sll $3, $1, 6
multu $1, $1
TAG652:
mfhi $2
mflo $4
lh $1, 0($2)
multu $4, $1
TAG653:
lui $3, 12
multu $1, $3
sh $3, 0($1)
lbu $3, 0($1)
TAG654:
lui $3, 6
bltz $3, TAG655
lui $2, 6
bgez $2, TAG655
TAG655:
mthi $2
beq $2, $2, TAG656
nor $2, $2, $2
addi $3, $2, 0
TAG656:
lui $3, 12
mfhi $2
mflo $1
ori $2, $2, 13
TAG657:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG658:
lui $3, 4
mflo $4
mflo $4
bgez $3, TAG659
TAG659:
lui $4, 11
lui $3, 1
bne $3, $4, TAG660
lui $2, 0
TAG660:
mthi $2
lui $2, 12
blez $2, TAG661
addu $1, $2, $2
TAG661:
sltiu $4, $1, 5
bgtz $1, TAG662
lui $4, 15
divu $1, $4
TAG662:
lui $2, 1
bne $2, $2, TAG663
or $2, $2, $4
beq $4, $2, TAG663
TAG663:
lui $3, 15
mfhi $3
sll $0, $0, 0
mthi $3
TAG664:
srlv $1, $3, $3
lui $4, 8
lui $4, 12
mthi $4
TAG665:
sll $0, $0, 0
addiu $4, $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG666:
multu $4, $4
bne $4, $4, TAG667
lui $2, 10
mthi $4
TAG667:
bgtz $2, TAG668
sll $4, $2, 5
lh $4, 0($2)
sh $4, 0($4)
TAG668:
xor $1, $4, $4
sw $4, 0($1)
xor $3, $4, $4
bne $4, $4, TAG669
TAG669:
multu $3, $3
bgez $3, TAG670
mflo $1
srlv $2, $1, $3
TAG670:
lui $1, 2
mfhi $4
mfhi $1
mthi $4
TAG671:
mult $1, $1
bne $1, $1, TAG672
lui $1, 15
sll $0, $0, 0
TAG672:
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
subu $2, $3, $1
TAG673:
subu $3, $2, $2
sll $4, $2, 5
andi $1, $2, 6
mtlo $1
TAG674:
mflo $1
blez $1, TAG675
xor $4, $1, $1
or $4, $1, $1
TAG675:
bne $4, $4, TAG676
mtlo $4
lh $3, 0($4)
lw $1, 0($4)
TAG676:
nor $4, $1, $1
srav $1, $1, $1
mthi $1
sll $0, $0, 0
TAG677:
mflo $2
lui $1, 3
xor $3, $2, $2
div $1, $4
TAG678:
add $3, $3, $3
andi $1, $3, 1
mtlo $1
mflo $3
TAG679:
mflo $2
ori $4, $3, 12
mtlo $2
lui $2, 3
TAG680:
addu $2, $2, $2
sll $0, $0, 0
sh $2, 0($3)
mflo $1
TAG681:
bne $1, $1, TAG682
mult $1, $1
mflo $3
bltz $3, TAG682
TAG682:
nor $4, $3, $3
lb $3, 1($4)
mult $3, $3
mthi $3
TAG683:
nor $3, $3, $3
mthi $3
beq $3, $3, TAG684
mtlo $3
TAG684:
bltz $3, TAG685
mfhi $2
lh $4, 0($3)
bgtz $3, TAG685
TAG685:
addu $2, $4, $4
mtlo $2
lhu $1, 1($4)
sb $4, 0($1)
TAG686:
lb $4, 0($1)
lui $1, 0
lh $1, 0($1)
mult $4, $1
TAG687:
sh $1, -255($1)
bne $1, $1, TAG688
lui $1, 0
bne $1, $1, TAG688
TAG688:
multu $1, $1
multu $1, $1
mflo $1
mflo $4
TAG689:
srl $1, $4, 2
bne $4, $4, TAG690
sb $4, 0($1)
blez $4, TAG690
TAG690:
and $1, $1, $1
bgez $1, TAG691
nor $1, $1, $1
sb $1, 0($1)
TAG691:
lui $1, 14
lui $3, 14
mthi $1
mfhi $1
TAG692:
mthi $1
sll $0, $0, 0
mflo $2
mtlo $2
TAG693:
mtlo $2
mult $2, $2
lh $3, 0($2)
blez $3, TAG694
TAG694:
xori $1, $3, 14
beq $1, $1, TAG695
sb $1, 0($3)
sltu $4, $1, $3
TAG695:
beq $4, $4, TAG696
add $1, $4, $4
beq $4, $1, TAG696
mult $1, $4
TAG696:
sb $1, 0($1)
mflo $2
sb $2, 0($1)
sb $2, 0($2)
TAG697:
addu $3, $2, $2
mflo $4
mult $2, $3
bgez $3, TAG698
TAG698:
mult $4, $4
mfhi $1
lui $4, 3
beq $1, $1, TAG699
TAG699:
mfhi $2
mult $4, $2
srl $3, $4, 8
mtlo $2
TAG700:
mtlo $3
mult $3, $3
mtlo $3
beq $3, $3, TAG701
TAG701:
sll $0, $0, 0
slti $4, $4, 4
lui $2, 4
mthi $2
TAG702:
lui $3, 2
lui $1, 5
addu $2, $1, $3
sll $0, $0, 0
TAG703:
sllv $1, $2, $2
mflo $2
sll $0, $0, 0
mfhi $4
TAG704:
ori $2, $4, 11
beq $4, $4, TAG705
sll $0, $0, 0
div $4, $4
TAG705:
multu $2, $2
sll $0, $0, 0
sll $4, $2, 11
sll $0, $0, 0
TAG706:
bne $4, $4, TAG707
addiu $1, $4, 15
lui $1, 9
srlv $3, $4, $1
TAG707:
mtlo $3
bltz $3, TAG708
lui $3, 14
bgez $3, TAG708
TAG708:
mult $3, $3
mflo $2
bne $3, $3, TAG709
multu $2, $3
TAG709:
lui $2, 14
addiu $3, $2, 2
bgez $3, TAG710
mtlo $2
TAG710:
andi $3, $3, 4
lui $2, 0
beq $3, $3, TAG711
lui $1, 1
TAG711:
sll $0, $0, 0
mflo $4
andi $2, $3, 11
lbu $1, 0($3)
TAG712:
lui $1, 6
sll $0, $0, 0
mflo $4
mthi $4
TAG713:
lui $4, 7
mflo $2
mtlo $4
mtlo $2
TAG714:
divu $2, $2
sll $0, $0, 0
lui $1, 15
bne $1, $2, TAG715
TAG715:
sltu $3, $1, $1
multu $1, $3
sll $0, $0, 0
lui $1, 5
TAG716:
blez $1, TAG717
lui $3, 0
mult $1, $1
mtlo $1
TAG717:
beq $3, $3, TAG718
mthi $3
lui $2, 4
bltz $2, TAG718
TAG718:
div $2, $2
bne $2, $2, TAG719
sll $0, $0, 0
mfhi $1
TAG719:
beq $1, $1, TAG720
sb $1, 0($1)
bne $1, $1, TAG720
multu $1, $1
TAG720:
mflo $1
mfhi $2
lw $4, 0($2)
divu $2, $1
TAG721:
xor $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG722
TAG722:
mfhi $1
addu $4, $3, $1
slt $2, $1, $1
mult $3, $2
TAG723:
beq $2, $2, TAG724
multu $2, $2
lbu $2, 0($2)
mflo $3
TAG724:
lui $1, 14
sw $3, 0($3)
lui $4, 1
lui $2, 10
TAG725:
subu $2, $2, $2
mult $2, $2
lui $3, 10
bgez $3, TAG726
TAG726:
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
sll $2, $1, 13
TAG727:
mthi $2
mfhi $3
bne $2, $3, TAG728
and $2, $2, $3
TAG728:
blez $2, TAG729
mtlo $2
beq $2, $2, TAG729
srav $2, $2, $2
TAG729:
mtlo $2
lui $2, 9
bgtz $2, TAG730
lui $1, 12
TAG730:
mflo $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG731:
mfhi $1
mtlo $1
beq $1, $2, TAG732
mflo $1
TAG732:
mfhi $3
xori $2, $3, 13
mtlo $1
bgtz $2, TAG733
TAG733:
mtlo $2
div $2, $2
mthi $2
subu $2, $2, $2
TAG734:
lui $3, 4
bgez $2, TAG735
mthi $3
bne $2, $2, TAG735
TAG735:
mfhi $2
div $2, $3
sll $2, $2, 1
sll $0, $0, 0
TAG736:
beq $2, $2, TAG737
mflo $4
mflo $4
mtlo $2
TAG737:
lui $1, 2
mtlo $1
mthi $4
bltz $4, TAG738
TAG738:
lui $1, 12
beq $1, $1, TAG739
mflo $2
lh $3, 0($2)
TAG739:
sll $0, $0, 0
subu $1, $3, $3
sw $3, 0($1)
srl $4, $1, 11
TAG740:
lui $3, 14
sb $3, 0($4)
bne $3, $4, TAG741
xori $2, $4, 1
TAG741:
sll $4, $2, 5
lui $4, 0
bne $2, $4, TAG742
mflo $3
TAG742:
sll $0, $0, 0
mthi $3
mfhi $4
bltz $4, TAG743
TAG743:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG744
mflo $4
TAG744:
mflo $1
mflo $2
lui $4, 9
srlv $2, $2, $4
TAG745:
bne $2, $2, TAG746
xori $2, $2, 11
or $2, $2, $2
addiu $1, $2, 15
TAG746:
sll $0, $0, 0
mult $1, $1
sll $4, $1, 11
or $3, $1, $4
TAG747:
mtlo $3
mthi $3
bne $3, $3, TAG748
xori $3, $3, 1
TAG748:
sll $0, $0, 0
sra $1, $4, 10
mult $1, $4
bne $1, $3, TAG749
TAG749:
sll $0, $0, 0
blez $3, TAG750
andi $4, $1, 15
bne $3, $3, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop