ori $1, $0, 5
ori $2, $0, 12
ori $3, $0, 9
ori $4, $0, 9
sw $4, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $4, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $3, 44($0)
sw $1, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $2, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $2, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $4, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $1, 120($0)
sw $1, 124($0)
lw $1, 0($2)
lh $3, 0($1)
mflo $3
bltz $2, TAG1
TAG1:
lui $1, 5
mtlo $1
mfhi $4
bgez $4, TAG2
TAG2:
sll $3, $4, 8
mult $3, $3
lhu $4, 0($4)
bgtz $3, TAG3
TAG3:
lb $3, 0($4)
mtlo $4
lh $4, 0($3)
sw $4, 0($3)
TAG4:
blez $4, TAG5
sb $4, 0($4)
bltz $4, TAG5
mtlo $4
TAG5:
mfhi $1
sra $2, $1, 1
sh $2, 0($2)
addiu $3, $2, 5
TAG6:
srav $2, $3, $3
lui $1, 7
sll $0, $0, 0
addu $1, $1, $1
TAG7:
mthi $1
bltz $1, TAG8
lui $2, 9
xor $3, $1, $1
TAG8:
subu $2, $3, $3
sllv $2, $3, $3
addiu $2, $2, 4
mfhi $3
TAG9:
beq $3, $3, TAG10
mthi $3
sw $3, 0($3)
sh $3, 0($3)
TAG10:
beq $3, $3, TAG11
mthi $3
sh $3, 0($3)
bgez $3, TAG11
TAG11:
mult $3, $3
sll $0, $0, 0
slt $3, $3, $3
mthi $3
TAG12:
sw $3, 0($3)
bgez $3, TAG13
add $2, $3, $3
blez $3, TAG13
TAG13:
lui $1, 1
sll $3, $2, 13
andi $2, $3, 9
lui $1, 15
TAG14:
lui $1, 6
beq $1, $1, TAG15
lui $1, 3
mtlo $1
TAG15:
sllv $1, $1, $1
bgez $1, TAG16
sll $0, $0, 0
srlv $2, $1, $1
TAG16:
multu $2, $2
sll $2, $2, 5
mflo $1
mtlo $1
TAG17:
mtlo $1
blez $1, TAG18
sb $1, 0($1)
multu $1, $1
TAG18:
sb $1, 0($1)
srav $3, $1, $1
mfhi $3
addi $2, $1, 13
TAG19:
lb $1, 0($2)
xori $4, $1, 13
sra $3, $2, 3
mfhi $1
TAG20:
sw $1, 0($1)
mflo $2
mult $1, $1
bgtz $2, TAG21
TAG21:
lui $1, 8
sllv $3, $1, $1
sll $0, $0, 0
mfhi $3
TAG22:
lhu $4, 0($3)
bne $3, $3, TAG23
mfhi $3
slt $4, $3, $3
TAG23:
multu $4, $4
and $1, $4, $4
lh $2, 0($4)
sll $1, $4, 7
TAG24:
addiu $4, $1, 9
sll $4, $4, 15
or $3, $1, $4
lui $2, 9
TAG25:
blez $2, TAG26
mult $2, $2
divu $2, $2
multu $2, $2
TAG26:
bgtz $2, TAG27
lui $1, 1
sb $1, 0($1)
blez $1, TAG27
TAG27:
sll $0, $0, 0
lui $4, 6
bgez $4, TAG28
addiu $4, $1, 6
TAG28:
mtlo $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG29:
div $4, $4
bne $4, $4, TAG30
xori $4, $4, 6
bltz $4, TAG30
TAG30:
mult $4, $4
div $4, $4
mthi $4
mfhi $4
TAG31:
bne $4, $4, TAG32
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG32:
sll $0, $0, 0
mthi $3
mthi $3
beq $4, $4, TAG33
TAG33:
sll $0, $0, 0
bne $3, $3, TAG34
mthi $3
sll $0, $0, 0
TAG34:
lui $4, 1
bgez $4, TAG35
sll $0, $0, 0
bne $3, $4, TAG35
TAG35:
lui $4, 15
sll $0, $0, 0
blez $4, TAG36
sll $0, $0, 0
TAG36:
mthi $3
mult $3, $3
divu $3, $3
divu $3, $3
TAG37:
sltiu $1, $3, 11
sll $0, $0, 0
sw $3, 0($1)
mflo $3
TAG38:
beq $3, $3, TAG39
lb $1, 0($3)
ori $2, $3, 7
lui $1, 8
TAG39:
bne $1, $1, TAG40
mflo $4
lui $1, 3
lui $3, 6
TAG40:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 13
lui $4, 15
TAG41:
mfhi $4
beq $4, $4, TAG42
srav $2, $4, $4
mflo $2
TAG42:
xor $4, $2, $2
mflo $3
multu $3, $4
srlv $4, $2, $4
TAG43:
lui $4, 2
mtlo $4
beq $4, $4, TAG44
multu $4, $4
TAG44:
lui $1, 6
addu $3, $1, $1
lui $4, 3
mtlo $1
TAG45:
sll $0, $0, 0
divu $4, $4
addu $4, $4, $4
bgtz $4, TAG46
TAG46:
sll $3, $4, 4
mfhi $2
mthi $2
mult $2, $4
TAG47:
mflo $2
mfhi $2
lui $4, 10
lui $2, 3
TAG48:
addiu $1, $2, 2
lui $2, 9
lui $3, 0
sll $0, $0, 0
TAG49:
lui $3, 5
lui $2, 15
sll $0, $0, 0
mult $2, $1
TAG50:
bltz $1, TAG51
div $1, $1
sll $0, $0, 0
srav $4, $3, $3
TAG51:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG52:
sll $0, $0, 0
beq $2, $2, TAG53
mfhi $1
mtlo $1
TAG53:
mfhi $1
beq $1, $1, TAG54
ori $2, $1, 15
lui $3, 14
TAG54:
bltz $3, TAG55
sll $0, $0, 0
multu $3, $1
mfhi $1
TAG55:
bgez $1, TAG56
sll $4, $1, 13
beq $1, $4, TAG56
mtlo $4
TAG56:
addi $3, $4, 10
sw $3, 0($4)
bltz $4, TAG57
sb $3, 0($4)
TAG57:
beq $3, $3, TAG58
xori $2, $3, 0
multu $3, $3
lui $2, 1
TAG58:
multu $2, $2
sh $2, 0($2)
mfhi $1
bgtz $1, TAG59
TAG59:
addiu $1, $1, 1
lui $4, 1
sll $0, $0, 0
addiu $1, $1, 10
TAG60:
lb $1, 0($1)
sra $3, $1, 8
addiu $1, $1, 0
lui $2, 2
TAG61:
sll $0, $0, 0
mthi $2
sll $0, $0, 0
srav $2, $2, $2
TAG62:
mflo $1
lui $4, 6
sb $1, 0($1)
bltz $4, TAG63
TAG63:
mthi $4
sll $0, $0, 0
mfhi $4
beq $4, $4, TAG64
TAG64:
lui $3, 11
bne $4, $3, TAG65
sll $0, $0, 0
lui $1, 2
TAG65:
mflo $4
mthi $1
sra $3, $1, 11
lui $3, 8
TAG66:
mflo $4
addiu $1, $4, 5
sll $0, $0, 0
mtlo $3
TAG67:
srl $2, $4, 0
sh $4, 0($4)
mthi $2
div $2, $2
TAG68:
sw $2, 0($2)
sll $1, $2, 15
sll $4, $1, 3
mflo $3
TAG69:
bgtz $3, TAG70
sb $3, 0($3)
sw $3, 0($3)
lui $3, 11
TAG70:
blez $3, TAG71
sltiu $1, $3, 14
lbu $2, 0($3)
bgtz $3, TAG71
TAG71:
mfhi $3
bne $2, $3, TAG72
srav $3, $2, $3
lui $3, 10
TAG72:
mflo $1
sb $1, 0($3)
beq $3, $1, TAG73
lui $3, 4
TAG73:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG74:
sb $2, 0($2)
lui $2, 9
blez $2, TAG75
slt $3, $2, $2
TAG75:
addiu $2, $3, 6
bne $2, $3, TAG76
sltu $4, $3, $2
bgez $4, TAG76
TAG76:
xor $2, $4, $4
div $4, $4
mtlo $2
blez $2, TAG77
TAG77:
mfhi $3
mthi $2
blez $2, TAG78
mult $2, $3
TAG78:
lbu $1, 0($3)
mult $3, $1
sub $1, $3, $3
lh $4, 0($1)
TAG79:
mflo $2
lw $1, 0($2)
mtlo $4
sw $4, -266($1)
TAG80:
bgtz $1, TAG81
lb $3, -266($1)
multu $3, $1
sltu $2, $1, $1
TAG81:
mfhi $4
lui $1, 0
lb $2, 0($2)
srlv $1, $2, $1
TAG82:
mult $1, $1
subu $2, $1, $1
addu $2, $1, $1
bgez $2, TAG83
TAG83:
mthi $2
lui $2, 12
sll $0, $0, 0
multu $2, $2
TAG84:
srlv $3, $2, $2
ori $1, $2, 3
mflo $1
mthi $1
TAG85:
mfhi $2
sltu $4, $1, $2
lui $4, 7
mult $4, $2
TAG86:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG87:
bne $4, $4, TAG88
sltu $4, $4, $4
sb $4, 0($4)
beq $4, $4, TAG88
TAG88:
lui $2, 2
mtlo $4
mfhi $1
lbu $2, 0($1)
TAG89:
blez $2, TAG90
mfhi $2
sb $2, 0($2)
beq $2, $2, TAG90
TAG90:
slti $3, $2, 7
lui $1, 3
sll $0, $0, 0
sb $3, 0($3)
TAG91:
mthi $3
mfhi $3
sb $3, 0($3)
bne $3, $3, TAG92
TAG92:
sb $3, 0($3)
lb $4, 0($3)
sb $3, 0($3)
mfhi $4
TAG93:
lbu $3, 0($4)
slt $1, $3, $3
lui $2, 2
blez $4, TAG94
TAG94:
slt $4, $2, $2
beq $2, $4, TAG95
sll $0, $0, 0
mthi $2
TAG95:
sb $4, 0($4)
sub $1, $4, $4
add $1, $1, $4
mthi $1
TAG96:
mthi $1
mfhi $3
lui $1, 4
sll $0, $0, 0
TAG97:
sll $0, $0, 0
mthi $1
bgtz $1, TAG98
mthi $1
TAG98:
bltz $1, TAG99
sltu $1, $1, $1
lw $1, 0($1)
mthi $1
TAG99:
lui $2, 10
bgtz $1, TAG100
mflo $4
lb $2, 0($2)
TAG100:
mfhi $3
bgtz $2, TAG101
srlv $1, $3, $3
lbu $4, 0($3)
TAG101:
mflo $1
bne $4, $1, TAG102
mflo $1
lbu $1, 0($4)
TAG102:
mthi $1
mult $1, $1
blez $1, TAG103
ori $4, $1, 1
TAG103:
blez $4, TAG104
lb $3, 0($4)
sb $3, 0($3)
mflo $1
TAG104:
lhu $2, 0($1)
sb $1, -256($2)
slti $4, $1, 1
lhu $1, 0($1)
TAG105:
lui $3, 12
addu $4, $3, $1
slti $3, $1, 9
lbu $1, 0($3)
TAG106:
multu $1, $1
mthi $1
lhu $1, 0($1)
mult $1, $1
TAG107:
beq $1, $1, TAG108
mthi $1
mthi $1
lb $4, 0($1)
TAG108:
multu $4, $4
sra $1, $4, 11
beq $4, $4, TAG109
lui $4, 12
TAG109:
bne $4, $4, TAG110
sll $0, $0, 0
lui $4, 6
srav $4, $4, $4
TAG110:
sltiu $1, $4, 0
sll $0, $0, 0
mthi $1
bne $4, $4, TAG111
TAG111:
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
mult $1, $1
TAG112:
blez $1, TAG113
sw $1, 0($1)
bgez $1, TAG113
andi $3, $1, 5
TAG113:
mfhi $2
multu $2, $3
beq $2, $3, TAG114
mflo $1
TAG114:
mflo $4
mflo $2
mtlo $2
mult $2, $1
TAG115:
multu $2, $2
multu $2, $2
sh $2, 0($2)
mtlo $2
TAG116:
mfhi $4
xor $2, $2, $4
mult $2, $2
lhu $1, 0($2)
TAG117:
sll $3, $1, 5
mthi $1
lui $4, 7
lbu $1, 0($3)
TAG118:
multu $1, $1
mthi $1
sh $1, 0($1)
bne $1, $1, TAG119
TAG119:
xor $1, $1, $1
addi $4, $1, 9
bltz $4, TAG120
mfhi $1
TAG120:
mflo $3
slti $4, $3, 15
sh $1, 0($1)
addiu $4, $1, 3
TAG121:
mtlo $4
and $3, $4, $4
mfhi $1
mfhi $1
TAG122:
xor $1, $1, $1
lh $2, 0($1)
sb $1, 0($1)
ori $1, $2, 11
TAG123:
lbu $1, 0($1)
bne $1, $1, TAG124
mfhi $2
add $2, $1, $1
TAG124:
bgtz $2, TAG125
sh $2, 0($2)
mult $2, $2
bgtz $2, TAG125
TAG125:
mult $2, $2
beq $2, $2, TAG126
mult $2, $2
lw $3, 0($2)
TAG126:
sb $3, 0($3)
mfhi $2
multu $3, $3
or $4, $3, $2
TAG127:
or $2, $4, $4
srl $4, $2, 2
lb $1, 0($4)
mult $4, $1
TAG128:
bltz $1, TAG129
mfhi $2
xor $4, $1, $1
lui $2, 14
TAG129:
addu $2, $2, $2
mflo $3
ori $1, $2, 13
sll $0, $0, 0
TAG130:
sll $2, $1, 3
mult $1, $1
srl $1, $1, 0
bne $2, $1, TAG131
TAG131:
srav $3, $1, $1
sll $0, $0, 0
bgez $1, TAG132
mult $3, $1
TAG132:
mtlo $3
lh $2, -224($3)
lh $3, -224($3)
lbu $3, 0($3)
TAG133:
mult $3, $3
mtlo $3
lui $3, 3
subu $4, $3, $3
TAG134:
mthi $4
lw $3, 0($4)
mthi $3
bgez $3, TAG135
TAG135:
mtlo $3
bgtz $3, TAG136
or $3, $3, $3
bgtz $3, TAG136
TAG136:
mflo $4
mtlo $3
srl $1, $3, 1
srlv $3, $3, $4
TAG137:
addu $4, $3, $3
lui $2, 8
mflo $2
mflo $4
TAG138:
mtlo $4
sll $0, $0, 0
lui $4, 12
andi $4, $1, 10
TAG139:
lw $1, 0($4)
sw $4, 0($4)
blez $1, TAG140
multu $1, $4
TAG140:
sll $4, $1, 6
divu $4, $1
mfhi $2
mult $1, $1
TAG141:
lh $3, 0($2)
sb $3, 0($2)
addu $4, $3, $3
bne $3, $3, TAG142
TAG142:
andi $3, $4, 7
lui $3, 1
andi $4, $4, 9
divu $3, $3
TAG143:
addi $1, $4, 5
mthi $1
beq $4, $4, TAG144
lui $4, 11
TAG144:
mfhi $4
sb $4, 0($4)
mult $4, $4
lb $4, 0($4)
TAG145:
lbu $4, 0($4)
bne $4, $4, TAG146
lb $2, 0($4)
mfhi $3
TAG146:
mfhi $1
mflo $2
lui $2, 12
beq $1, $3, TAG147
TAG147:
lui $3, 8
subu $3, $2, $3
mthi $3
bgez $2, TAG148
TAG148:
slti $1, $3, 7
sllv $4, $1, $3
xor $3, $4, $1
blez $4, TAG149
TAG149:
xori $3, $3, 3
mflo $2
divu $3, $2
sb $2, 0($2)
TAG150:
mult $2, $2
lbu $4, 0($2)
slti $1, $2, 7
mflo $3
TAG151:
div $3, $3
srl $1, $3, 6
blez $3, TAG152
lui $3, 11
TAG152:
bltz $3, TAG153
sll $0, $0, 0
sll $1, $3, 9
mthi $3
TAG153:
lui $3, 3
nor $2, $3, $3
slti $2, $2, 8
divu $3, $3
TAG154:
multu $2, $2
addiu $2, $2, 13
beq $2, $2, TAG155
mflo $1
TAG155:
multu $1, $1
lbu $1, 0($1)
sb $1, 0($1)
addiu $3, $1, 13
TAG156:
mflo $1
bne $1, $3, TAG157
lbu $2, 0($1)
mfhi $2
TAG157:
mtlo $2
mflo $2
mthi $2
sra $4, $2, 5
TAG158:
sb $4, 0($4)
multu $4, $4
lui $2, 0
bgez $2, TAG159
TAG159:
lui $1, 10
mult $2, $2
bgtz $2, TAG160
lui $4, 6
TAG160:
mthi $4
sll $0, $0, 0
divu $4, $4
bgtz $4, TAG161
TAG161:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG162
mtlo $4
TAG162:
or $1, $4, $4
sll $0, $0, 0
lh $1, 0($2)
lui $1, 13
TAG163:
addiu $2, $1, 4
mthi $1
mthi $2
lui $4, 8
TAG164:
mthi $4
div $4, $4
divu $4, $4
bgtz $4, TAG165
TAG165:
sllv $1, $4, $4
lui $1, 8
multu $4, $1
mthi $1
TAG166:
bgtz $1, TAG167
mthi $1
sw $1, 0($1)
lhu $3, 0($1)
TAG167:
mflo $3
slt $2, $3, $3
xori $2, $3, 12
mflo $1
TAG168:
multu $1, $1
mult $1, $1
blez $1, TAG169
sub $4, $1, $1
TAG169:
srl $1, $4, 9
mthi $4
bltz $1, TAG170
sra $1, $1, 3
TAG170:
mtlo $1
sh $1, 0($1)
mthi $1
or $3, $1, $1
TAG171:
bgez $3, TAG172
mflo $1
blez $3, TAG172
multu $3, $1
TAG172:
sw $1, 0($1)
lui $4, 1
mflo $4
sra $2, $1, 13
TAG173:
bltz $2, TAG174
nor $1, $2, $2
andi $2, $1, 2
sll $2, $1, 14
TAG174:
mult $2, $2
divu $2, $2
beq $2, $2, TAG175
and $4, $2, $2
TAG175:
mthi $4
sh $4, 16384($4)
or $2, $4, $4
sll $3, $2, 3
TAG176:
beq $3, $3, TAG177
lui $1, 9
beq $3, $1, TAG177
nor $4, $1, $1
TAG177:
mtlo $4
mfhi $4
div $4, $4
lui $2, 11
TAG178:
sll $0, $0, 0
addiu $3, $2, 6
mtlo $3
xor $2, $3, $3
TAG179:
lw $4, 0($2)
or $1, $4, $4
sll $0, $0, 0
addu $1, $1, $4
TAG180:
lui $3, 7
subu $2, $3, $3
mult $3, $2
addiu $4, $2, 0
TAG181:
sub $2, $4, $4
mflo $2
mthi $2
mult $2, $2
TAG182:
mtlo $2
mfhi $1
lh $2, 0($2)
lhu $4, 0($1)
TAG183:
subu $4, $4, $4
mfhi $2
sra $1, $4, 2
mtlo $1
TAG184:
multu $1, $1
beq $1, $1, TAG185
lh $1, 0($1)
mfhi $3
TAG185:
sltu $1, $3, $3
blez $1, TAG186
sw $3, 0($1)
lhu $3, 0($3)
TAG186:
bltz $3, TAG187
slti $2, $3, 2
lui $2, 6
addiu $1, $2, 10
TAG187:
mfhi $3
bltz $3, TAG188
sllv $3, $1, $3
sll $0, $0, 0
TAG188:
sll $0, $0, 0
lui $4, 10
sll $0, $0, 0
bne $4, $2, TAG189
TAG189:
slt $2, $2, $2
mfhi $1
lhu $2, 0($2)
sll $2, $1, 6
TAG190:
lw $1, 0($2)
lui $4, 0
xori $1, $1, 13
sll $0, $0, 0
TAG191:
bne $1, $1, TAG192
mthi $1
mtlo $1
mflo $3
TAG192:
multu $3, $3
sll $0, $0, 0
mthi $4
sllv $2, $4, $4
TAG193:
mtlo $2
blez $2, TAG194
mtlo $2
lh $4, 0($2)
TAG194:
beq $4, $4, TAG195
mfhi $2
multu $2, $2
and $4, $4, $2
TAG195:
mflo $3
mflo $3
blez $3, TAG196
lui $2, 9
TAG196:
andi $2, $2, 3
addiu $1, $2, 14
mtlo $2
lui $3, 14
TAG197:
mfhi $2
beq $3, $2, TAG198
mflo $2
sll $1, $2, 0
TAG198:
lh $1, 0($1)
bgez $1, TAG199
lui $2, 0
srlv $1, $1, $2
TAG199:
lw $3, 0($1)
bne $1, $3, TAG200
mflo $2
lw $4, 0($1)
TAG200:
addiu $2, $4, 11
mthi $4
srav $4, $2, $2
xori $4, $2, 13
TAG201:
andi $2, $4, 6
lh $3, 0($2)
mthi $3
ori $1, $3, 3
TAG202:
blez $1, TAG203
slti $2, $1, 4
beq $1, $2, TAG203
or $2, $2, $1
TAG203:
lbu $2, 0($2)
bne $2, $2, TAG204
lui $1, 10
mtlo $2
TAG204:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
lw $2, 0($3)
TAG205:
lui $1, 7
mthi $2
beq $2, $2, TAG206
mfhi $1
TAG206:
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG207:
sb $2, 0($2)
mfhi $2
sw $2, 0($2)
mflo $2
TAG208:
sb $2, 0($2)
lb $1, 0($2)
beq $1, $1, TAG209
slti $1, $1, 11
TAG209:
sll $3, $1, 15
mtlo $3
subu $4, $1, $1
mflo $1
TAG210:
mflo $1
lui $1, 14
mfhi $3
sll $0, $0, 0
TAG211:
sra $4, $3, 3
lhu $1, 0($4)
sh $1, 0($3)
mtlo $4
TAG212:
mflo $2
mfhi $3
mtlo $1
multu $3, $2
TAG213:
mfhi $2
xor $2, $2, $2
srav $1, $3, $2
ori $4, $2, 0
TAG214:
mtlo $4
multu $4, $4
mtlo $4
mult $4, $4
TAG215:
blez $4, TAG216
lui $4, 10
mthi $4
multu $4, $4
TAG216:
mflo $4
andi $3, $4, 8
sh $3, 0($4)
sh $4, 0($3)
TAG217:
mult $3, $3
bgez $3, TAG218
lui $3, 7
mfhi $1
TAG218:
bgez $1, TAG219
lw $4, 0($1)
bne $1, $4, TAG219
mflo $3
TAG219:
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG220:
bne $4, $4, TAG221
sra $1, $4, 4
bltz $1, TAG221
sh $1, 0($1)
TAG221:
sh $1, 0($1)
sw $1, 0($1)
sw $1, 0($1)
multu $1, $1
TAG222:
mfhi $2
mflo $2
mult $2, $2
multu $1, $2
TAG223:
lui $3, 10
multu $2, $2
mtlo $2
lw $3, 0($2)
TAG224:
lhu $4, 0($3)
bgez $4, TAG225
srl $4, $3, 7
sb $4, 0($3)
TAG225:
mult $4, $4
lui $2, 5
add $4, $4, $4
sll $0, $0, 0
TAG226:
mfhi $2
lb $4, 0($3)
lui $4, 14
addiu $1, $4, 15
TAG227:
mflo $2
addu $2, $1, $2
mthi $2
lui $2, 4
TAG228:
bgtz $2, TAG229
sll $0, $0, 0
divu $2, $2
bgtz $2, TAG229
TAG229:
mthi $2
mtlo $2
sll $0, $0, 0
multu $2, $2
TAG230:
sll $0, $0, 0
srlv $1, $2, $2
bgtz $1, TAG231
slt $1, $2, $2
TAG231:
srlv $1, $1, $1
lui $4, 5
lui $2, 7
mtlo $4
TAG232:
ori $4, $2, 8
beq $4, $2, TAG233
mthi $4
bgtz $4, TAG233
TAG233:
mtlo $4
sll $0, $0, 0
srav $3, $4, $3
blez $3, TAG234
TAG234:
mult $3, $3
subu $4, $3, $3
bltz $4, TAG235
mflo $1
TAG235:
mthi $1
mthi $1
mult $1, $1
beq $1, $1, TAG236
TAG236:
sll $0, $0, 0
bltz $1, TAG237
mtlo $1
sll $0, $0, 0
TAG237:
bltz $1, TAG238
sll $0, $0, 0
multu $1, $1
mfhi $2
TAG238:
lui $2, 13
mult $2, $2
bne $2, $2, TAG239
lui $2, 15
TAG239:
sll $0, $0, 0
bltz $2, TAG240
sll $1, $2, 3
sll $0, $0, 0
TAG240:
sll $0, $0, 0
mfhi $1
lui $3, 11
sll $0, $0, 0
TAG241:
slti $2, $3, 8
lui $1, 1
mult $3, $3
mthi $3
TAG242:
srl $2, $1, 4
bne $1, $1, TAG243
mthi $2
lw $4, -4096($2)
TAG243:
mflo $1
bltz $1, TAG244
mthi $4
lui $2, 9
TAG244:
slti $4, $2, 7
multu $2, $4
sll $0, $0, 0
bgez $2, TAG245
TAG245:
lui $1, 15
mtlo $1
mfhi $4
beq $1, $2, TAG246
TAG246:
mtlo $4
addu $2, $4, $4
blez $4, TAG247
lhu $3, 0($2)
TAG247:
lui $1, 8
srlv $1, $1, $1
lui $3, 0
bne $3, $1, TAG248
TAG248:
mult $3, $3
mtlo $3
mult $3, $3
lb $1, 0($3)
TAG249:
mflo $4
lui $1, 1
lui $2, 4
sll $0, $0, 0
TAG250:
lui $4, 7
bltz $4, TAG251
sll $0, $0, 0
mult $2, $2
TAG251:
bne $2, $2, TAG252
sll $0, $0, 0
mfhi $2
and $4, $2, $2
TAG252:
lui $1, 1
mflo $4
sll $0, $0, 0
mtlo $4
TAG253:
sh $2, 0($2)
addiu $3, $2, 9
mfhi $2
lui $4, 5
TAG254:
lui $3, 0
slti $4, $4, 1
sh $4, 0($4)
srl $2, $4, 11
TAG255:
mfhi $2
subu $3, $2, $2
lui $2, 14
addi $3, $3, 6
TAG256:
div $3, $3
lui $3, 1
blez $3, TAG257
sll $0, $0, 0
TAG257:
blez $2, TAG258
mthi $2
sll $0, $0, 0
srlv $3, $2, $1
TAG258:
nor $2, $3, $3
sllv $2, $2, $3
sll $0, $0, 0
sh $4, 0($4)
TAG259:
sw $4, 0($4)
mult $4, $4
sh $4, 0($4)
mfhi $3
TAG260:
beq $3, $3, TAG261
mthi $3
addiu $1, $3, 9
lui $3, 9
TAG261:
mfhi $3
beq $3, $3, TAG262
subu $4, $3, $3
blez $3, TAG262
TAG262:
lbu $1, 0($4)
mult $4, $1
mult $4, $1
mfhi $3
TAG263:
srav $1, $3, $3
sh $1, 0($1)
bgtz $3, TAG264
subu $2, $1, $3
TAG264:
beq $2, $2, TAG265
lui $4, 9
mfhi $4
xori $2, $4, 1
TAG265:
sw $2, 0($2)
sll $2, $2, 6
lhu $4, 0($2)
mult $4, $2
TAG266:
mthi $4
lui $2, 4
mflo $1
mflo $2
TAG267:
slti $1, $2, 4
lh $1, 0($2)
nor $2, $1, $2
sw $2, 1($2)
TAG268:
lui $4, 5
sw $4, 1($2)
lui $1, 15
lb $4, 1($2)
TAG269:
beq $4, $4, TAG270
slt $3, $4, $4
mult $4, $3
mflo $3
TAG270:
mthi $3
lw $3, 0($3)
mflo $4
sll $0, $0, 0
TAG271:
mult $3, $3
sll $0, $0, 0
blez $3, TAG272
mult $3, $3
TAG272:
srav $2, $3, $3
lui $4, 8
bgtz $2, TAG273
divu $3, $4
TAG273:
multu $4, $4
lui $3, 7
sll $0, $0, 0
mtlo $4
TAG274:
srl $1, $3, 12
divu $3, $3
mfhi $2
bne $2, $1, TAG275
TAG275:
mtlo $2
mthi $2
mthi $2
mtlo $2
TAG276:
bltz $2, TAG277
sh $2, 0($2)
mthi $2
beq $2, $2, TAG277
TAG277:
lui $4, 14
sll $0, $0, 0
nor $4, $2, $2
mthi $2
TAG278:
lui $2, 4
divu $4, $4
bltz $4, TAG279
lui $2, 2
TAG279:
div $2, $2
mfhi $1
blez $2, TAG280
addiu $4, $2, 5
TAG280:
xor $4, $4, $4
srl $4, $4, 3
mthi $4
xori $1, $4, 9
TAG281:
mtlo $1
lui $1, 5
mtlo $1
sll $0, $0, 0
TAG282:
multu $3, $3
addiu $1, $3, 5
mthi $1
blez $3, TAG283
TAG283:
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
TAG284:
mtlo $1
beq $1, $1, TAG285
sll $0, $0, 0
sltu $2, $1, $3
TAG285:
srlv $2, $2, $2
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG286
TAG286:
slti $3, $2, 6
lhu $3, 0($3)
multu $2, $3
mthi $3
TAG287:
mthi $3
bne $3, $3, TAG288
mtlo $3
lh $4, 0($3)
TAG288:
beq $4, $4, TAG289
mtlo $4
bgtz $4, TAG289
divu $4, $4
TAG289:
bltz $4, TAG290
mthi $4
lb $2, 0($4)
mfhi $1
TAG290:
mflo $2
or $4, $1, $2
blez $2, TAG291
mflo $1
TAG291:
bne $1, $1, TAG292
lbu $1, 0($1)
lui $3, 7
sll $0, $0, 0
TAG292:
mult $3, $3
sll $0, $0, 0
lui $1, 11
lui $4, 12
TAG293:
mflo $1
mult $1, $1
bgez $1, TAG294
lui $4, 10
TAG294:
or $4, $4, $4
sll $0, $0, 0
lui $3, 8
beq $3, $4, TAG295
TAG295:
sll $0, $0, 0
srlv $1, $3, $1
bne $1, $3, TAG296
div $3, $3
TAG296:
or $2, $1, $1
blez $2, TAG297
andi $4, $1, 11
bgez $4, TAG297
TAG297:
mflo $4
lui $3, 15
bne $4, $4, TAG298
andi $2, $3, 2
TAG298:
blez $2, TAG299
multu $2, $2
mtlo $2
mtlo $2
TAG299:
or $3, $2, $2
mflo $2
lhu $4, 0($3)
mult $2, $2
TAG300:
lbu $3, 0($4)
bgez $4, TAG301
slti $4, $3, 5
beq $4, $4, TAG301
TAG301:
mult $4, $4
sb $4, 0($4)
mflo $3
bgtz $4, TAG302
TAG302:
mfhi $2
mult $3, $2
lui $4, 13
ori $4, $4, 4
TAG303:
mfhi $2
sll $0, $0, 0
sltu $3, $4, $4
mthi $3
TAG304:
sltiu $3, $3, 9
sb $3, 0($3)
lui $4, 6
mfhi $1
TAG305:
mult $1, $1
lhu $3, 0($1)
sltiu $4, $3, 15
lb $4, -256($3)
TAG306:
mtlo $4
sll $3, $4, 11
sw $4, 0($3)
nor $3, $3, $4
TAG307:
bgtz $3, TAG308
lb $3, 1($3)
beq $3, $3, TAG308
slt $2, $3, $3
TAG308:
lhu $4, 0($2)
bltz $2, TAG309
lb $4, 0($2)
srav $2, $2, $4
TAG309:
sll $3, $2, 14
bne $2, $3, TAG310
sltiu $1, $3, 0
sb $3, 0($2)
TAG310:
bgez $1, TAG311
sw $1, 0($1)
or $3, $1, $1
sw $3, 0($3)
TAG311:
srl $1, $3, 11
beq $1, $1, TAG312
mfhi $4
mfhi $4
TAG312:
bne $4, $4, TAG313
lb $2, 0($4)
bltz $4, TAG313
lui $1, 4
TAG313:
srlv $3, $1, $1
mtlo $3
sll $0, $0, 0
mflo $2
TAG314:
multu $2, $2
blez $2, TAG315
mtlo $2
bgtz $2, TAG315
TAG315:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $2, $2, $3
TAG316:
sll $0, $0, 0
sltiu $3, $2, 7
sra $3, $3, 3
beq $3, $2, TAG317
TAG317:
mult $3, $3
mtlo $3
and $2, $3, $3
bltz $2, TAG318
TAG318:
add $3, $2, $2
mthi $2
bltz $2, TAG319
lh $3, 0($3)
TAG319:
mflo $3
beq $3, $3, TAG320
ori $1, $3, 2
bgtz $3, TAG320
TAG320:
mfhi $3
srl $3, $1, 14
sb $3, 0($1)
addu $2, $3, $1
TAG321:
lbu $4, 0($2)
lb $4, 0($2)
bne $4, $2, TAG322
mthi $4
TAG322:
sltiu $2, $4, 3
mult $2, $2
lui $4, 3
lui $1, 5
TAG323:
mult $1, $1
bgtz $1, TAG324
lui $4, 9
mthi $1
TAG324:
sll $0, $0, 0
mthi $4
multu $4, $4
sll $0, $0, 0
TAG325:
sll $0, $0, 0
mflo $1
mfhi $3
lbu $2, 0($3)
TAG326:
lui $2, 8
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG327:
lh $1, 0($1)
mfhi $3
srav $3, $3, $1
sb $3, 0($3)
TAG328:
divu $3, $3
sb $3, 0($3)
mfhi $2
mthi $2
TAG329:
sra $3, $2, 5
blez $2, TAG330
lbu $2, 0($2)
ori $4, $3, 0
TAG330:
srl $4, $4, 15
lb $4, 0($4)
beq $4, $4, TAG331
and $2, $4, $4
TAG331:
lh $1, 0($2)
bgez $2, TAG332
sw $1, 0($2)
multu $1, $1
TAG332:
lh $4, 0($1)
mult $4, $4
mult $1, $4
mthi $4
TAG333:
mtlo $4
sw $4, 0($4)
bgtz $4, TAG334
lui $4, 12
TAG334:
mfhi $4
mfhi $3
sltiu $4, $4, 2
mult $4, $4
TAG335:
lui $3, 0
bgez $3, TAG336
divu $4, $4
lui $1, 9
TAG336:
add $1, $1, $1
slti $3, $1, 2
lbu $4, 0($3)
sll $3, $1, 9
TAG337:
beq $3, $3, TAG338
lui $3, 8
slti $1, $3, 12
beq $3, $1, TAG338
TAG338:
sh $1, 0($1)
mflo $3
sb $1, 0($1)
mtlo $1
TAG339:
mtlo $3
bltz $3, TAG340
slt $2, $3, $3
blez $2, TAG340
TAG340:
mthi $2
lbu $1, 0($2)
lhu $2, 0($1)
addiu $3, $2, 13
TAG341:
srl $3, $3, 10
lh $1, 0($3)
xori $3, $3, 13
lui $3, 3
TAG342:
nor $4, $3, $3
lui $3, 7
sll $0, $0, 0
mflo $3
TAG343:
lui $3, 8
bltz $3, TAG344
addu $4, $3, $3
sll $0, $0, 0
TAG344:
sb $2, 0($2)
mthi $2
addi $2, $2, 13
div $2, $2
TAG345:
bne $2, $2, TAG346
mult $2, $2
addiu $4, $2, 10
mthi $2
TAG346:
lb $3, 0($4)
subu $4, $3, $4
bne $4, $4, TAG347
nor $4, $4, $4
TAG347:
mfhi $3
mult $3, $4
bne $3, $4, TAG348
mflo $3
TAG348:
lui $2, 11
slt $4, $2, $3
mtlo $2
nor $1, $2, $4
TAG349:
bgtz $1, TAG350
mthi $1
sltiu $2, $1, 9
mtlo $1
TAG350:
bltz $2, TAG351
srav $3, $2, $2
srl $2, $2, 9
sllv $3, $2, $2
TAG351:
beq $3, $3, TAG352
xori $1, $3, 9
mtlo $1
bgtz $1, TAG352
TAG352:
sb $1, 0($1)
div $1, $1
lui $4, 6
srl $2, $4, 11
TAG353:
nor $2, $2, $2
bgtz $2, TAG354
sh $2, 193($2)
sltu $4, $2, $2
TAG354:
lw $3, 0($4)
mult $4, $4
ori $2, $4, 5
multu $2, $4
TAG355:
mthi $2
sb $2, 0($2)
bltz $2, TAG356
lbu $1, 0($2)
TAG356:
sb $1, 0($1)
lb $3, 0($1)
blez $1, TAG357
sb $1, 0($3)
TAG357:
lbu $2, 0($3)
mtlo $2
lui $3, 5
mthi $3
TAG358:
addiu $4, $3, 11
bgez $3, TAG359
sll $0, $0, 0
sb $4, 0($4)
TAG359:
sll $3, $4, 10
sll $0, $0, 0
lui $3, 1
or $3, $4, $3
TAG360:
div $3, $3
sltiu $3, $3, 3
lhu $3, 0($3)
lui $3, 14
TAG361:
multu $3, $3
mfhi $1
sll $0, $0, 0
lui $1, 5
TAG362:
nor $2, $1, $1
andi $1, $2, 9
lbu $4, 0($1)
sb $2, 0($1)
TAG363:
subu $3, $4, $4
sltiu $4, $4, 14
mthi $4
mult $4, $4
TAG364:
mtlo $4
bne $4, $4, TAG365
lui $1, 15
blez $4, TAG365
TAG365:
slt $4, $1, $1
lui $1, 11
addu $4, $1, $1
ori $4, $4, 4
TAG366:
lui $1, 6
srl $1, $1, 2
addiu $4, $1, 15
sll $0, $0, 0
TAG367:
lui $3, 8
sll $0, $0, 0
mfhi $1
lui $1, 5
TAG368:
sll $0, $0, 0
sltu $1, $3, $1
lui $1, 10
mflo $2
TAG369:
sb $2, 0($2)
nor $2, $2, $2
mflo $1
subu $3, $2, $2
TAG370:
srlv $3, $3, $3
lhu $1, 0($3)
sb $3, 0($3)
lh $4, 0($3)
TAG371:
sll $0, $0, 0
mult $4, $2
lbu $2, 2($2)
sh $2, 0($2)
TAG372:
sllv $3, $2, $2
lb $4, 0($3)
multu $2, $4
multu $4, $3
TAG373:
sb $4, 0($4)
mfhi $1
beq $1, $1, TAG374
mthi $4
TAG374:
mtlo $1
bltz $1, TAG375
mfhi $1
lb $3, 0($1)
TAG375:
mult $3, $3
mult $3, $3
mfhi $4
sb $3, 0($4)
TAG376:
beq $4, $4, TAG377
lw $4, 0($4)
bne $4, $4, TAG377
add $4, $4, $4
TAG377:
mfhi $3
subu $4, $4, $3
mtlo $4
add $2, $3, $4
TAG378:
multu $2, $2
lw $2, 0($2)
lui $1, 1
srav $4, $2, $2
TAG379:
mfhi $1
lui $1, 15
bgez $1, TAG380
mtlo $1
TAG380:
sll $0, $0, 0
lui $1, 1
mfhi $3
bne $3, $3, TAG381
TAG381:
mthi $3
multu $3, $3
multu $3, $3
lbu $2, 0($3)
TAG382:
blez $2, TAG383
sw $2, 0($2)
lb $2, 0($2)
sw $2, 0($2)
TAG383:
bne $2, $2, TAG384
sh $2, 0($2)
mult $2, $2
beq $2, $2, TAG384
TAG384:
mflo $3
bne $3, $3, TAG385
lui $4, 7
mflo $3
TAG385:
blez $3, TAG386
lui $2, 13
lui $4, 10
sw $4, 0($4)
TAG386:
div $4, $4
sra $2, $4, 2
sltu $4, $2, $4
andi $4, $4, 12
TAG387:
lhu $3, 0($4)
slt $1, $3, $4
sltu $3, $1, $4
xor $3, $3, $1
TAG388:
mult $3, $3
mtlo $3
sltiu $1, $3, 8
bgtz $1, TAG389
TAG389:
lui $4, 5
sltiu $3, $4, 9
mflo $4
mflo $2
TAG390:
srav $4, $2, $2
xor $2, $4, $2
beq $2, $4, TAG391
mfhi $3
TAG391:
slt $4, $3, $3
bgez $4, TAG392
mfhi $2
blez $4, TAG392
TAG392:
sw $2, 0($2)
beq $2, $2, TAG393
mtlo $2
lw $1, 0($2)
TAG393:
addiu $2, $1, 14
lb $4, 0($2)
sb $1, 0($2)
bne $2, $1, TAG394
TAG394:
mthi $4
blez $4, TAG395
lh $1, 0($4)
mthi $1
TAG395:
bgtz $1, TAG396
andi $4, $1, 8
multu $1, $4
bltz $4, TAG396
TAG396:
mtlo $4
mult $4, $4
nor $1, $4, $4
lb $1, 1($1)
TAG397:
lui $4, 4
slt $1, $4, $4
beq $1, $4, TAG398
mult $1, $1
TAG398:
blez $1, TAG399
lhu $4, 0($1)
lui $2, 15
lbu $1, 0($1)
TAG399:
mfhi $3
bne $1, $3, TAG400
mflo $3
mflo $3
TAG400:
multu $3, $3
sb $3, 0($3)
mfhi $2
addiu $2, $3, 3
TAG401:
sb $2, 0($2)
addu $3, $2, $2
bgtz $3, TAG402
sll $4, $3, 12
TAG402:
mflo $2
bltz $4, TAG403
lw $1, -24576($4)
bne $1, $4, TAG403
TAG403:
mtlo $1
sll $0, $0, 0
mfhi $3
divu $4, $4
TAG404:
mtlo $3
mult $3, $3
mflo $2
sh $2, 0($3)
TAG405:
sb $2, 0($2)
xor $4, $2, $2
mfhi $1
sra $1, $2, 1
TAG406:
mthi $1
blez $1, TAG407
andi $2, $1, 11
bgtz $2, TAG407
TAG407:
slt $3, $2, $2
lw $3, 0($2)
ori $4, $2, 5
multu $2, $4
TAG408:
mthi $4
sb $4, 0($4)
lui $3, 2
blez $3, TAG409
TAG409:
mfhi $2
mflo $4
sll $0, $0, 0
sb $3, 0($2)
TAG410:
mtlo $4
mflo $1
lui $4, 1
lui $2, 7
TAG411:
blez $2, TAG412
lui $1, 10
addu $1, $2, $2
addiu $3, $1, 6
TAG412:
mthi $3
lui $2, 2
addu $1, $2, $2
beq $1, $1, TAG413
TAG413:
mtlo $1
divu $1, $1
sra $4, $1, 3
bne $4, $4, TAG414
TAG414:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG415
lui $1, 2
TAG415:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG416
lui $3, 5
TAG416:
blez $3, TAG417
mult $3, $3
mthi $3
sltiu $3, $3, 14
TAG417:
mthi $3
beq $3, $3, TAG418
mtlo $3
div $3, $3
TAG418:
lw $3, 0($3)
mfhi $4
mtlo $3
mthi $3
TAG419:
mult $4, $4
lbu $4, 0($4)
lui $1, 14
lui $4, 1
TAG420:
bne $4, $4, TAG421
sll $4, $4, 12
bne $4, $4, TAG421
div $4, $4
TAG421:
or $3, $4, $4
sll $0, $0, 0
multu $3, $3
addiu $4, $4, 4
TAG422:
multu $4, $4
sll $0, $0, 0
subu $4, $4, $4
beq $4, $4, TAG423
TAG423:
subu $4, $4, $4
mult $4, $4
mfhi $1
mult $1, $4
TAG424:
multu $1, $1
mult $1, $1
mtlo $1
lui $2, 8
TAG425:
beq $2, $2, TAG426
divu $2, $2
mtlo $2
lb $2, 0($2)
TAG426:
blez $2, TAG427
sllv $4, $2, $2
mflo $2
mtlo $2
TAG427:
bne $2, $2, TAG428
srl $2, $2, 5
sb $2, 0($2)
sltiu $2, $2, 2
TAG428:
bltz $2, TAG429
or $3, $2, $2
sb $3, 0($3)
srl $1, $3, 1
TAG429:
mtlo $1
mflo $3
multu $3, $3
mult $3, $1
TAG430:
sh $3, 0($3)
srl $1, $3, 0
beq $1, $1, TAG431
xori $2, $1, 11
TAG431:
bne $2, $2, TAG432
mthi $2
mflo $3
mflo $4
TAG432:
mtlo $4
lui $4, 6
sll $0, $0, 0
bne $4, $4, TAG433
TAG433:
mtlo $3
sw $3, 0($3)
mthi $3
mult $3, $3
TAG434:
multu $3, $3
lui $2, 10
xori $1, $2, 3
mthi $2
TAG435:
mfhi $1
sra $3, $1, 11
bne $1, $1, TAG436
mult $1, $1
TAG436:
divu $3, $3
srlv $4, $3, $3
bne $3, $4, TAG437
mfhi $1
TAG437:
beq $1, $1, TAG438
lhu $2, 0($1)
mult $2, $1
and $1, $2, $1
TAG438:
mfhi $3
lui $3, 3
beq $3, $1, TAG439
sll $0, $0, 0
TAG439:
lui $4, 3
mfhi $4
sltu $4, $3, $3
or $3, $3, $4
TAG440:
sll $0, $0, 0
div $3, $3
lui $2, 7
blez $3, TAG441
TAG441:
sll $4, $2, 4
lui $2, 13
sll $0, $0, 0
sra $4, $4, 12
TAG442:
mfhi $3
divu $3, $4
lhu $2, 0($3)
addu $4, $2, $4
TAG443:
mfhi $4
mflo $2
mflo $2
sll $4, $4, 5
TAG444:
mthi $4
sra $3, $4, 5
bltz $4, TAG445
slti $3, $3, 15
TAG445:
sb $3, 0($3)
srl $4, $3, 4
sb $3, 0($3)
mtlo $4
TAG446:
sll $3, $4, 13
mflo $2
mtlo $4
addu $2, $3, $2
TAG447:
mthi $2
mfhi $1
lui $2, 14
bltz $1, TAG448
TAG448:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG449
lui $2, 8
TAG449:
blez $2, TAG450
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG450:
xor $1, $4, $4
sh $1, 0($4)
mthi $4
sw $4, 0($4)
TAG451:
mthi $1
mult $1, $1
mthi $1
mult $1, $1
TAG452:
lui $1, 10
sltiu $2, $1, 6
addiu $4, $1, 10
lui $4, 14
TAG453:
lui $3, 15
mflo $4
sll $0, $0, 0
bltz $4, TAG454
TAG454:
mult $4, $4
mflo $1
mult $4, $1
blez $1, TAG455
TAG455:
lhu $3, 0($1)
mflo $3
sh $1, 0($3)
sub $4, $3, $3
TAG456:
lw $1, 0($4)
sw $1, 0($1)
bne $1, $1, TAG457
multu $1, $1
TAG457:
lui $2, 3
sll $0, $0, 0
bne $1, $1, TAG458
div $2, $2
TAG458:
multu $2, $2
sll $0, $0, 0
lui $4, 13
ori $2, $4, 10
TAG459:
sll $0, $0, 0
lui $3, 5
sll $0, $0, 0
lui $2, 1
TAG460:
mtlo $2
div $2, $2
sll $0, $0, 0
lui $1, 9
TAG461:
mtlo $1
xor $4, $1, $1
lui $3, 6
sll $0, $0, 0
TAG462:
mthi $3
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG463:
mtlo $4
bgtz $4, TAG464
mult $4, $4
lb $4, 0($4)
TAG464:
bne $4, $4, TAG465
multu $4, $4
mthi $4
bgtz $4, TAG465
TAG465:
sllv $3, $4, $4
addiu $3, $4, 12
mthi $3
lui $3, 5
TAG466:
mtlo $3
blez $3, TAG467
sll $0, $0, 0
bne $3, $1, TAG467
TAG467:
sra $3, $1, 11
lhu $2, -288($3)
mfhi $2
blez $1, TAG468
TAG468:
multu $2, $2
mflo $2
bgez $2, TAG469
addiu $3, $2, 9
TAG469:
beq $3, $3, TAG470
sw $3, -153($3)
srl $4, $3, 15
mfhi $2
TAG470:
addiu $1, $2, 7
mtlo $1
beq $2, $1, TAG471
sll $1, $2, 6
TAG471:
or $2, $1, $1
addiu $4, $2, 10
mflo $2
lui $4, 10
TAG472:
mfhi $2
addu $3, $2, $4
bne $2, $2, TAG473
lui $3, 6
TAG473:
sltiu $2, $3, 5
sll $0, $0, 0
mthi $3
ori $4, $3, 6
TAG474:
addu $1, $4, $4
sll $0, $0, 0
mflo $4
bgtz $4, TAG475
TAG475:
sb $4, -151($4)
mthi $4
andi $4, $4, 3
mtlo $4
TAG476:
mult $4, $4
bne $4, $4, TAG477
divu $4, $4
mult $4, $4
TAG477:
lbu $4, 0($4)
lui $3, 3
bne $4, $4, TAG478
mfhi $4
TAG478:
mflo $4
lui $3, 8
lb $2, 0($4)
ori $4, $2, 6
TAG479:
lui $2, 8
lui $1, 1
multu $1, $4
or $2, $2, $4
TAG480:
srlv $2, $2, $2
multu $2, $2
mthi $2
lui $2, 2
TAG481:
lui $4, 1
sll $0, $0, 0
beq $4, $2, TAG482
addiu $4, $2, 0
TAG482:
sll $0, $0, 0
multu $4, $3
mfhi $1
lui $3, 4
TAG483:
mfhi $3
bgez $3, TAG484
sll $4, $3, 14
bne $3, $4, TAG484
TAG484:
sll $0, $0, 0
slt $4, $4, $4
mult $4, $4
sh $4, 0($4)
TAG485:
multu $4, $4
mthi $4
slti $4, $4, 12
mtlo $4
TAG486:
bltz $4, TAG487
lui $4, 6
mthi $4
lui $1, 14
TAG487:
slti $3, $1, 14
mult $1, $1
lui $2, 3
sll $0, $0, 0
TAG488:
srl $4, $2, 3
sll $0, $0, 0
bgtz $4, TAG489
mult $2, $2
TAG489:
divu $2, $2
beq $2, $2, TAG490
mthi $2
mult $2, $2
TAG490:
blez $2, TAG491
multu $2, $2
beq $2, $2, TAG491
sll $0, $0, 0
TAG491:
xori $4, $3, 3
srl $2, $4, 15
bne $2, $4, TAG492
sltu $3, $3, $2
TAG492:
sub $1, $3, $3
lw $4, 0($1)
mfhi $1
mflo $3
TAG493:
bgtz $3, TAG494
mtlo $3
sra $2, $3, 0
sb $3, 0($3)
TAG494:
mfhi $3
addu $2, $2, $3
lui $2, 3
sll $0, $0, 0
TAG495:
subu $4, $2, $2
mthi $2
mfhi $4
sll $0, $0, 0
TAG496:
mtlo $4
mtlo $4
or $4, $4, $4
bgtz $4, TAG497
TAG497:
lui $4, 14
lui $2, 13
lui $2, 12
blez $4, TAG498
TAG498:
sll $3, $2, 9
multu $3, $2
sllv $4, $2, $2
sll $0, $0, 0
TAG499:
bltz $3, TAG500
sll $0, $0, 0
bltz $3, TAG500
andi $4, $4, 6
TAG500:
bne $4, $4, TAG501
mult $4, $4
bltz $4, TAG501
mthi $4
TAG501:
lui $4, 0
mult $4, $4
mfhi $4
mult $4, $4
TAG502:
xori $4, $4, 15
lui $2, 14
ori $2, $2, 10
addu $3, $4, $4
TAG503:
sh $3, 0($3)
mfhi $3
mult $3, $3
mult $3, $3
TAG504:
mtlo $3
bne $3, $3, TAG505
mthi $3
bgtz $3, TAG505
TAG505:
sb $3, 0($3)
multu $3, $3
mult $3, $3
mtlo $3
TAG506:
bgtz $3, TAG507
mthi $3
mfhi $4
mflo $4
TAG507:
mtlo $4
addiu $1, $4, 6
mfhi $2
multu $1, $2
TAG508:
mthi $2
mult $2, $2
xori $2, $2, 4
mtlo $2
TAG509:
bgtz $2, TAG510
lw $4, 0($2)
sw $4, 0($4)
sltiu $2, $2, 0
TAG510:
blez $2, TAG511
lui $4, 7
lui $4, 8
sh $4, 0($2)
TAG511:
nor $4, $4, $4
sll $0, $0, 0
mult $4, $4
lui $1, 1
TAG512:
bne $1, $1, TAG513
lui $1, 4
xori $4, $1, 6
blez $1, TAG513
TAG513:
sll $3, $4, 3
sll $0, $0, 0
mfhi $3
lui $2, 15
TAG514:
div $2, $2
mtlo $2
div $2, $2
sll $0, $0, 0
TAG515:
lui $4, 8
div $4, $2
mtlo $4
beq $2, $4, TAG516
TAG516:
mult $4, $4
sll $0, $0, 0
bne $4, $4, TAG517
lui $3, 3
TAG517:
addu $4, $3, $3
bne $4, $4, TAG518
divu $3, $3
subu $3, $4, $4
TAG518:
bne $3, $3, TAG519
multu $3, $3
lb $4, 0($3)
mfhi $3
TAG519:
bltz $3, TAG520
sltu $3, $3, $3
lui $1, 6
mthi $3
TAG520:
mult $1, $1
mflo $4
mfhi $4
mfhi $4
TAG521:
sltu $1, $4, $4
mtlo $4
bltz $4, TAG522
lw $2, 0($1)
TAG522:
blez $2, TAG523
slt $3, $2, $2
div $3, $2
mfhi $3
TAG523:
lui $3, 5
mflo $2
bne $3, $2, TAG524
lui $3, 0
TAG524:
lbu $3, 0($3)
mtlo $3
lui $4, 12
bgtz $4, TAG525
TAG525:
div $4, $4
lui $3, 9
sll $0, $0, 0
mult $3, $4
TAG526:
andi $3, $3, 6
multu $3, $3
mflo $4
mult $3, $3
TAG527:
mflo $3
sllv $4, $4, $3
mfhi $1
mtlo $4
TAG528:
mthi $1
nor $3, $1, $1
mfhi $3
lbu $1, 0($1)
TAG529:
bgtz $1, TAG530
sllv $2, $1, $1
sh $1, 0($1)
sb $2, 0($2)
TAG530:
bgtz $2, TAG531
mtlo $2
lui $3, 6
beq $2, $3, TAG531
TAG531:
lui $3, 0
sltiu $1, $3, 1
lui $2, 4
mfhi $3
TAG532:
multu $3, $3
mfhi $3
blez $3, TAG533
lui $1, 11
TAG533:
lui $4, 11
bgez $1, TAG534
div $1, $1
lui $1, 2
TAG534:
sll $0, $0, 0
sll $4, $1, 11
mthi $4
div $4, $4
TAG535:
bne $4, $4, TAG536
slti $4, $4, 5
sll $1, $4, 9
mtlo $1
TAG536:
srl $4, $1, 4
mflo $3
add $1, $1, $4
sb $4, 0($1)
TAG537:
lb $4, 0($1)
sh $1, 0($1)
lui $1, 6
sll $0, $0, 0
TAG538:
mtlo $1
bne $1, $1, TAG539
addu $1, $1, $1
mfhi $3
TAG539:
sra $2, $3, 8
slt $4, $2, $2
mfhi $3
nor $3, $3, $4
TAG540:
xori $3, $3, 9
and $3, $3, $3
sltiu $4, $3, 10
sllv $1, $3, $3
TAG541:
divu $1, $1
sll $0, $0, 0
sb $1, 10($3)
mfhi $3
TAG542:
mflo $2
mthi $3
mtlo $2
sh $2, 0($3)
TAG543:
blez $2, TAG544
subu $2, $2, $2
mflo $4
mflo $1
TAG544:
div $1, $1
mfhi $4
lui $3, 10
mtlo $4
TAG545:
bgez $3, TAG546
xori $2, $3, 14
sra $1, $3, 4
mthi $2
TAG546:
andi $3, $1, 12
sb $1, 0($1)
bgez $1, TAG547
sb $1, 0($1)
TAG547:
blez $3, TAG548
lb $2, 0($3)
bne $3, $2, TAG548
mfhi $2
TAG548:
lui $3, 6
lb $3, 0($2)
lbu $3, 0($3)
div $3, $3
TAG549:
beq $3, $3, TAG550
or $1, $3, $3
mult $1, $3
sw $1, 0($3)
TAG550:
mthi $1
sb $1, 0($1)
beq $1, $1, TAG551
addiu $4, $1, 14
TAG551:
lbu $2, 0($4)
sll $2, $4, 3
slt $2, $2, $4
mfhi $1
TAG552:
sb $1, 0($1)
addu $1, $1, $1
bgtz $1, TAG553
lh $4, 0($1)
TAG553:
ori $2, $4, 14
multu $4, $4
multu $4, $4
mflo $4
TAG554:
sltiu $4, $4, 15
multu $4, $4
bgez $4, TAG555
addiu $4, $4, 13
TAG555:
subu $2, $4, $4
mtlo $2
lw $4, 0($2)
mfhi $3
TAG556:
sb $3, 0($3)
beq $3, $3, TAG557
mult $3, $3
mflo $2
TAG557:
sb $2, 0($2)
or $4, $2, $2
mfhi $2
lui $2, 8
TAG558:
srav $3, $2, $2
addu $4, $2, $2
beq $4, $3, TAG559
sll $0, $0, 0
TAG559:
mthi $4
addiu $1, $4, 6
srl $1, $1, 9
xori $4, $1, 14
TAG560:
mthi $4
sll $4, $4, 3
bgez $4, TAG561
lui $4, 4
TAG561:
sll $0, $0, 0
xor $3, $4, $4
div $3, $4
sw $4, 0($3)
TAG562:
sllv $4, $3, $3
blez $4, TAG563
mthi $4
mfhi $2
TAG563:
mflo $4
lhu $4, 0($4)
bne $2, $4, TAG564
sw $4, 0($4)
TAG564:
sb $4, 0($4)
lb $1, 0($4)
mfhi $3
beq $1, $1, TAG565
TAG565:
sltiu $2, $3, 12
sw $2, 0($3)
lui $4, 7
or $3, $3, $4
TAG566:
sll $0, $0, 0
slti $2, $3, 12
mult $2, $2
xor $4, $3, $2
TAG567:
bgtz $4, TAG568
addu $3, $4, $4
lui $2, 6
lbu $3, 0($3)
TAG568:
bltz $3, TAG569
nor $3, $3, $3
slti $2, $3, 15
mtlo $3
TAG569:
mflo $3
beq $2, $3, TAG570
addu $2, $2, $3
lui $4, 9
TAG570:
mfhi $4
sra $4, $4, 5
srav $2, $4, $4
mtlo $4
TAG571:
srav $4, $2, $2
bne $4, $2, TAG572
sw $4, 0($2)
mtlo $2
TAG572:
sb $4, 0($4)
blez $4, TAG573
lui $4, 4
bgtz $4, TAG573
TAG573:
sll $0, $0, 0
sll $0, $0, 0
xori $1, $4, 8
bltz $4, TAG574
TAG574:
srl $3, $1, 13
multu $3, $3
addiu $3, $1, 2
sll $0, $0, 0
TAG575:
divu $3, $3
sll $0, $0, 0
mfhi $3
mthi $3
TAG576:
lui $3, 10
mthi $3
srav $4, $3, $3
bgtz $3, TAG577
TAG577:
mflo $4
or $1, $4, $4
lui $1, 10
blez $1, TAG578
TAG578:
sll $2, $1, 9
lui $3, 5
sll $0, $0, 0
sra $3, $3, 3
TAG579:
lui $1, 9
mtlo $1
blez $3, TAG580
sll $0, $0, 0
TAG580:
mflo $2
bltz $2, TAG581
sll $0, $0, 0
sll $0, $0, 0
TAG581:
div $2, $2
sll $0, $0, 0
sll $3, $3, 11
beq $2, $2, TAG582
TAG582:
ori $1, $3, 8
sll $0, $0, 0
lui $1, 1
lui $2, 13
TAG583:
addiu $2, $2, 4
bne $2, $2, TAG584
mflo $2
bltz $2, TAG584
TAG584:
mtlo $2
lbu $4, 0($2)
bltz $2, TAG585
sw $2, 0($4)
TAG585:
bltz $4, TAG586
sra $1, $4, 3
lbu $4, 0($1)
blez $1, TAG586
TAG586:
sb $4, 0($4)
xori $1, $4, 8
lb $4, 0($4)
sltu $1, $4, $1
TAG587:
bne $1, $1, TAG588
mthi $1
sltiu $2, $1, 3
sb $2, 0($2)
TAG588:
sb $2, 0($2)
lbu $4, 0($2)
sllv $4, $2, $2
lbu $4, 0($2)
TAG589:
mfhi $2
and $2, $2, $4
slt $4, $2, $2
mthi $2
TAG590:
mtlo $4
beq $4, $4, TAG591
lui $2, 4
ori $1, $4, 11
TAG591:
lui $2, 11
sb $2, 0($1)
xori $1, $2, 15
addiu $2, $1, 4
TAG592:
sra $3, $2, 11
sll $0, $0, 0
slt $4, $3, $2
sll $0, $0, 0
TAG593:
mfhi $3
mtlo $3
lb $1, 0($4)
multu $3, $1
TAG594:
sra $2, $1, 0
mult $2, $1
sh $2, 0($1)
sll $2, $2, 4
TAG595:
mtlo $2
lbu $1, 0($2)
mtlo $1
lui $4, 13
TAG596:
mult $4, $4
mult $4, $4
lui $3, 5
bne $3, $3, TAG597
TAG597:
mflo $1
lui $1, 5
lui $3, 7
bne $3, $3, TAG598
TAG598:
sll $0, $0, 0
xori $4, $2, 4
srl $4, $2, 13
sh $2, 0($4)
TAG599:
mthi $4
mult $4, $4
mfhi $1
sllv $2, $1, $1
TAG600:
sw $2, 0($2)
mtlo $2
sh $2, 0($2)
bltz $2, TAG601
TAG601:
lbu $1, 0($2)
lui $1, 0
mflo $2
sw $2, 0($2)
TAG602:
multu $2, $2
mtlo $2
mflo $2
mfhi $4
TAG603:
andi $3, $4, 4
lui $2, 12
srav $1, $4, $2
xor $1, $3, $1
TAG604:
nor $2, $1, $1
lui $4, 10
bgtz $4, TAG605
lui $4, 9
TAG605:
sll $0, $0, 0
sll $0, $0, 0
nor $4, $4, $4
mult $4, $4
TAG606:
sllv $4, $4, $4
bgtz $4, TAG607
multu $4, $4
sra $4, $4, 13
TAG607:
beq $4, $4, TAG608
div $4, $4
lw $3, 0($4)
lbu $1, 0($4)
TAG608:
bne $1, $1, TAG609
addiu $2, $1, 13
bne $2, $1, TAG609
sb $1, 0($2)
TAG609:
bgtz $2, TAG610
mfhi $4
divu $4, $4
srlv $3, $2, $4
TAG610:
lb $3, 0($3)
mflo $3
lui $1, 3
mult $3, $3
TAG611:
bgez $1, TAG612
mthi $1
sll $1, $1, 13
srlv $3, $1, $1
TAG612:
lbu $1, 0($3)
beq $3, $1, TAG613
mtlo $3
and $2, $1, $3
TAG613:
sb $2, 0($2)
lui $4, 7
mtlo $2
lui $2, 14
TAG614:
sll $0, $0, 0
mtlo $2
bgtz $1, TAG615
srl $3, $2, 0
TAG615:
mfhi $4
lui $2, 14
mtlo $3
sll $0, $0, 0
TAG616:
addiu $3, $2, 14
sll $0, $0, 0
bne $3, $2, TAG617
divu $3, $3
TAG617:
mtlo $3
blez $3, TAG618
div $3, $3
mthi $3
TAG618:
lui $3, 4
addu $1, $3, $3
sll $0, $0, 0
beq $1, $3, TAG619
TAG619:
sltiu $4, $1, 12
mthi $1
mthi $4
mfhi $1
TAG620:
lw $3, 0($1)
lui $1, 0
lh $4, 0($1)
mult $4, $1
TAG621:
mtlo $4
mthi $4
bltz $4, TAG622
sll $2, $4, 14
TAG622:
andi $4, $2, 5
or $1, $2, $4
bgez $4, TAG623
mult $1, $1
TAG623:
xor $2, $1, $1
sltiu $3, $1, 9
mfhi $4
mflo $1
TAG624:
lh $1, 0($1)
sb $1, 0($1)
xori $4, $1, 14
mthi $1
TAG625:
lh $4, 0($4)
div $4, $4
addu $4, $4, $4
sllv $1, $4, $4
TAG626:
mflo $4
blez $4, TAG627
lui $2, 4
multu $1, $4
TAG627:
bne $2, $2, TAG628
lui $2, 12
ori $4, $2, 4
bgez $2, TAG628
TAG628:
sll $0, $0, 0
mthi $4
mtlo $4
bltz $4, TAG629
TAG629:
srav $4, $4, $4
mfhi $4
mfhi $2
beq $2, $2, TAG630
TAG630:
mthi $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG631:
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG632
xori $1, $4, 1
TAG632:
addu $1, $1, $1
mfhi $2
sll $0, $0, 0
mtlo $1
TAG633:
multu $2, $2
lui $1, 4
sltu $4, $1, $1
mflo $3
TAG634:
lui $4, 14
mult $4, $3
sll $3, $4, 13
subu $3, $4, $4
TAG635:
addiu $1, $3, 4
mtlo $1
bne $1, $3, TAG636
mtlo $3
TAG636:
mtlo $1
lui $1, 8
beq $1, $1, TAG637
mult $1, $1
TAG637:
sll $0, $0, 0
sll $0, $0, 0
sra $4, $1, 14
mfhi $1
TAG638:
bgez $1, TAG639
mthi $1
sw $1, 0($1)
bltz $1, TAG639
TAG639:
sra $2, $1, 14
mthi $1
nor $2, $1, $1
lbu $1, 0($1)
TAG640:
div $1, $1
mtlo $1
lui $1, 14
mtlo $1
TAG641:
mthi $1
beq $1, $1, TAG642
mtlo $1
mthi $1
TAG642:
sll $0, $0, 0
bltz $4, TAG643
or $4, $4, $1
nor $4, $1, $1
TAG643:
srl $2, $4, 15
sra $2, $2, 8
sll $0, $0, 0
mtlo $2
TAG644:
and $4, $3, $3
mflo $4
beq $4, $4, TAG645
mfhi $2
TAG645:
mflo $3
lui $4, 13
div $4, $4
sll $0, $0, 0
TAG646:
sh $3, -511($3)
blez $3, TAG647
mthi $3
mtlo $3
TAG647:
lui $4, 1
lb $3, -511($3)
subu $3, $4, $3
beq $3, $3, TAG648
TAG648:
andi $1, $3, 9
sll $2, $3, 5
bne $3, $3, TAG649
lui $1, 12
TAG649:
mflo $1
blez $1, TAG650
mfhi $4
sll $4, $4, 0
TAG650:
sll $0, $0, 0
lw $4, -511($4)
bgez $4, TAG651
divu $4, $4
TAG651:
beq $4, $4, TAG652
lw $4, -511($4)
lh $4, 0($4)
and $3, $4, $4
TAG652:
srav $2, $3, $3
beq $3, $3, TAG653
sll $0, $0, 0
divu $2, $3
TAG653:
mflo $3
blez $3, TAG654
lui $4, 4
mtlo $4
TAG654:
mult $4, $4
nor $3, $4, $4
bne $3, $4, TAG655
sll $0, $0, 0
TAG655:
bne $3, $3, TAG656
divu $3, $3
addiu $1, $3, 0
divu $1, $1
TAG656:
bne $1, $1, TAG657
sll $0, $0, 0
addu $1, $3, $3
bltz $1, TAG657
TAG657:
sll $0, $0, 0
mflo $3
mflo $3
sll $0, $0, 0
TAG658:
sll $4, $3, 15
lb $4, 0($3)
and $4, $4, $4
div $4, $4
TAG659:
nor $2, $4, $4
beq $4, $4, TAG660
mfhi $2
lbu $1, 0($4)
TAG660:
sra $4, $1, 12
blez $4, TAG661
mtlo $4
sub $4, $1, $1
TAG661:
mfhi $1
mfhi $4
mflo $1
or $1, $4, $1
TAG662:
mfhi $2
sltu $4, $2, $1
xor $3, $4, $4
bne $2, $2, TAG663
TAG663:
sltu $3, $3, $3
sb $3, 0($3)
lbu $4, 0($3)
blez $3, TAG664
TAG664:
lui $1, 11
mflo $4
lui $4, 3
sll $0, $0, 0
TAG665:
slti $4, $4, 12
bne $4, $4, TAG666
lw $3, 0($4)
mtlo $3
TAG666:
sh $3, -256($3)
mthi $3
srav $3, $3, $3
bne $3, $3, TAG667
TAG667:
slti $4, $3, 12
addiu $2, $3, 8
xori $1, $4, 5
sh $4, 0($4)
TAG668:
addu $2, $1, $1
sh $1, 0($2)
bltz $2, TAG669
mtlo $1
TAG669:
multu $2, $2
bne $2, $2, TAG670
sb $2, 0($2)
lbu $3, 0($2)
TAG670:
sb $3, 0($3)
lui $3, 3
mtlo $3
multu $3, $3
TAG671:
bltz $3, TAG672
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG672:
lh $1, 0($1)
multu $1, $1
add $4, $1, $1
sh $1, 0($1)
TAG673:
sltiu $4, $4, 8
mtlo $4
subu $1, $4, $4
sb $4, 0($4)
TAG674:
bne $1, $1, TAG675
lui $4, 11
lui $2, 12
lui $2, 2
TAG675:
bgez $2, TAG676
mult $2, $2
bgez $2, TAG676
multu $2, $2
TAG676:
mflo $2
lw $1, 0($2)
bltz $2, TAG677
mfhi $2
TAG677:
bne $2, $2, TAG678
mthi $2
divu $2, $2
lui $4, 3
TAG678:
bgez $4, TAG679
lui $1, 0
bne $1, $4, TAG679
mthi $1
TAG679:
lw $4, 0($1)
sw $1, 0($1)
beq $1, $1, TAG680
mthi $1
TAG680:
beq $4, $4, TAG681
slti $3, $4, 12
mtlo $3
bgez $3, TAG681
TAG681:
mfhi $2
mthi $2
lui $1, 3
mtlo $2
TAG682:
blez $1, TAG683
mflo $4
lui $2, 10
mtlo $1
TAG683:
sll $0, $0, 0
slti $2, $2, 11
blez $2, TAG684
sw $2, 0($2)
TAG684:
mfhi $3
sh $2, 0($3)
mult $2, $2
sw $3, 0($3)
TAG685:
lui $1, 12
xori $4, $3, 10
mfhi $4
srlv $3, $3, $4
TAG686:
mflo $1
mult $1, $3
lh $2, 0($1)
multu $3, $3
TAG687:
beq $2, $2, TAG688
ori $3, $2, 9
mult $2, $2
mflo $3
TAG688:
sb $3, 0($3)
xori $4, $3, 4
addiu $2, $4, 4
divu $2, $2
TAG689:
mthi $2
bltz $2, TAG690
lui $2, 15
mthi $2
TAG690:
mfhi $2
mfhi $1
mtlo $2
mult $2, $2
TAG691:
subu $2, $1, $1
mtlo $1
lh $2, 0($2)
mflo $1
TAG692:
divu $1, $1
div $1, $1
sll $0, $0, 0
bne $1, $3, TAG693
TAG693:
lb $3, 0($3)
bgtz $3, TAG694
divu $3, $3
bgtz $3, TAG694
TAG694:
xor $2, $3, $3
beq $2, $2, TAG695
sll $4, $2, 14
mtlo $3
TAG695:
mult $4, $4
addu $3, $4, $4
multu $4, $3
or $2, $4, $4
TAG696:
sw $2, 0($2)
bgez $2, TAG697
srlv $1, $2, $2
sh $2, 0($1)
TAG697:
lbu $3, 0($1)
beq $1, $3, TAG698
lhu $4, 0($1)
beq $4, $3, TAG698
TAG698:
lui $3, 11
sra $1, $3, 12
lui $4, 14
blez $3, TAG699
TAG699:
mthi $4
mthi $4
sll $0, $0, 0
bne $1, $1, TAG700
TAG700:
mflo $1
bne $1, $1, TAG701
mult $1, $1
bltz $1, TAG701
TAG701:
mfhi $1
mult $1, $1
slti $3, $1, 2
bne $1, $1, TAG702
TAG702:
lui $2, 11
lui $4, 3
lui $2, 3
divu $2, $2
TAG703:
mtlo $2
and $2, $2, $2
sll $3, $2, 9
xori $3, $2, 11
TAG704:
divu $3, $3
lui $3, 13
bltz $3, TAG705
divu $3, $3
TAG705:
ori $3, $3, 8
bne $3, $3, TAG706
lui $1, 12
beq $3, $3, TAG706
TAG706:
multu $1, $1
mthi $1
div $1, $1
sll $0, $0, 0
TAG707:
bltz $1, TAG708
sltu $4, $1, $1
lui $4, 3
multu $1, $4
TAG708:
bgtz $4, TAG709
xor $4, $4, $4
sw $4, 0($4)
and $3, $4, $4
TAG709:
beq $3, $3, TAG710
sll $0, $0, 0
sw $4, 0($3)
sra $1, $4, 4
TAG710:
sll $0, $0, 0
mfhi $3
bgez $1, TAG711
lui $3, 3
TAG711:
sll $0, $0, 0
slti $1, $1, 15
mflo $1
sw $1, 0($1)
TAG712:
beq $1, $1, TAG713
ori $2, $1, 14
beq $1, $1, TAG713
divu $1, $2
TAG713:
mflo $1
beq $2, $1, TAG714
mtlo $1
beq $2, $1, TAG714
TAG714:
mthi $1
mthi $1
lhu $1, 0($1)
sh $1, 0($1)
TAG715:
lh $3, 0($1)
lui $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG716:
mflo $2
mflo $1
mult $1, $1
addiu $1, $4, 0
TAG717:
addu $2, $1, $1
sltu $1, $1, $1
blez $2, TAG718
lui $3, 4
TAG718:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $1
mthi $3
TAG719:
beq $1, $1, TAG720
addiu $4, $1, 2
mflo $3
bne $4, $3, TAG720
TAG720:
sll $0, $0, 0
blez $3, TAG721
mult $3, $3
bltz $3, TAG721
TAG721:
multu $3, $3
divu $3, $3
sll $0, $0, 0
beq $3, $3, TAG722
TAG722:
ori $4, $3, 7
srav $3, $4, $3
addiu $1, $3, 10
mthi $3
TAG723:
mthi $1
sltiu $3, $1, 15
sll $0, $0, 0
sll $0, $0, 0
TAG724:
sll $0, $0, 0
slt $1, $3, $3
bgtz $3, TAG725
sra $2, $2, 2
TAG725:
lui $4, 5
addu $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG726:
srlv $2, $4, $4
xori $2, $4, 14
mult $4, $2
sll $0, $0, 0
TAG727:
sll $0, $0, 0
div $2, $2
mflo $1
mflo $1
TAG728:
mflo $4
lb $4, 0($4)
lui $4, 5
sll $0, $0, 0
TAG729:
sll $0, $0, 0
mthi $4
mthi $4
mthi $4
TAG730:
mflo $1
lui $3, 8
bne $4, $4, TAG731
sll $0, $0, 0
TAG731:
div $3, $3
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG732:
sll $2, $3, 5
divu $2, $3
mtlo $3
sll $0, $0, 0
TAG733:
divu $1, $1
mult $1, $1
bgez $1, TAG734
mfhi $4
TAG734:
andi $1, $4, 7
multu $4, $4
beq $1, $1, TAG735
mtlo $1
TAG735:
lhu $1, 0($1)
bltz $1, TAG736
mult $1, $1
sh $1, 0($1)
TAG736:
lui $1, 15
ori $4, $1, 7
div $1, $4
beq $1, $1, TAG737
TAG737:
multu $4, $4
srlv $2, $4, $4
addu $3, $4, $4
mthi $4
TAG738:
sll $0, $0, 0
mthi $3
bgtz $3, TAG739
mtlo $3
TAG739:
div $3, $3
multu $3, $3
srav $4, $3, $3
bltz $4, TAG740
TAG740:
mtlo $4
sb $4, 0($4)
bne $4, $4, TAG741
mflo $1
TAG741:
beq $1, $1, TAG742
xori $2, $1, 4
lui $4, 7
div $1, $2
TAG742:
sh $4, 0($4)
lui $3, 9
sll $0, $0, 0
mfhi $1
TAG743:
mtlo $1
addiu $4, $1, 3
lhu $2, -903($4)
lw $3, -900($1)
TAG744:
lh $3, 0($3)
lui $2, 13
bgez $2, TAG745
mflo $4
TAG745:
beq $4, $4, TAG746
or $3, $4, $4
beq $3, $4, TAG746
sw $4, 0($3)
TAG746:
sll $4, $3, 10
sltiu $1, $3, 1
beq $3, $1, TAG747
mthi $1
TAG747:
sb $1, 0($1)
sh $1, 0($1)
slt $2, $1, $1
lhu $1, 0($1)
TAG748:
bne $1, $1, TAG749
lbu $1, 0($1)
mtlo $1
sra $3, $1, 12
TAG749:
lui $4, 0
multu $4, $4
bgtz $4, TAG750
lui $3, 13
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop