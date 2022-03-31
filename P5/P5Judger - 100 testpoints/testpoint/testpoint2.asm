ori $1, $0, 7
ori $2, $0, 11
ori $3, $0, 3
ori $4, $0, 3
sw $4, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $3, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $1, 48($0)
sw $2, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $4, 116($0)
sw $3, 120($0)
sw $1, 124($0)
mflo $1
bgez $2, TAG1
multu $2, $2
lw $4, 0($2)
TAG1:
beq $4, $4, TAG2
sb $4, 0($4)
bgez $4, TAG2
srl $1, $4, 9
TAG2:
lui $2, 12
ori $4, $1, 5
sb $4, 0($4)
mtlo $2
TAG3:
lb $1, 0($4)
mtlo $1
lb $4, 0($1)
bltz $4, TAG4
TAG4:
mflo $2
mult $4, $4
bgez $2, TAG5
srl $1, $4, 11
TAG5:
beq $1, $1, TAG6
lh $1, 0($1)
add $4, $1, $1
mtlo $1
TAG6:
mthi $4
bne $4, $4, TAG7
mtlo $4
andi $2, $4, 15
TAG7:
beq $2, $2, TAG8
mtlo $2
mthi $2
srlv $3, $2, $2
TAG8:
sllv $4, $3, $3
mflo $1
multu $3, $3
mtlo $4
TAG9:
divu $1, $1
mtlo $1
blez $1, TAG10
mfhi $4
TAG10:
addiu $2, $4, 5
lbu $3, 0($2)
lui $4, 1
addu $2, $4, $4
TAG11:
bgtz $2, TAG12
sltu $3, $2, $2
div $3, $2
sll $2, $3, 10
TAG12:
mflo $2
addiu $1, $2, 0
or $3, $2, $2
bgez $3, TAG13
TAG13:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG14:
subu $1, $3, $3
bgez $1, TAG15
sll $0, $0, 0
lui $4, 6
TAG15:
mflo $1
subu $1, $4, $1
lui $1, 3
mflo $1
TAG16:
lui $4, 10
divu $4, $1
multu $1, $4
mflo $1
TAG17:
sh $1, 0($1)
bne $1, $1, TAG18
mtlo $1
mtlo $1
TAG18:
multu $1, $1
andi $4, $1, 7
mflo $4
mthi $4
TAG19:
addi $1, $4, 4
bne $4, $4, TAG20
sltiu $4, $4, 11
lbu $4, 0($1)
TAG20:
divu $4, $4
div $4, $4
lbu $4, 0($4)
lui $3, 5
TAG21:
mfhi $2
sll $0, $0, 0
slt $4, $2, $3
sll $0, $0, 0
TAG22:
mtlo $4
mthi $4
bltz $4, TAG23
sb $4, 0($4)
TAG23:
ori $3, $4, 12
blez $4, TAG24
lbu $3, 0($3)
lui $2, 12
TAG24:
sll $0, $0, 0
sb $2, 0($3)
bltz $2, TAG25
sll $0, $0, 0
TAG25:
lui $1, 6
blez $4, TAG26
srlv $1, $1, $4
multu $1, $1
TAG26:
addu $1, $1, $1
multu $1, $1
addiu $2, $1, 3
bltz $1, TAG27
TAG27:
mfhi $4
sll $0, $0, 0
subu $2, $2, $2
sw $2, 0($2)
TAG28:
lui $2, 12
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG29
TAG29:
addiu $2, $2, 6
slti $2, $2, 3
lhu $3, 0($2)
bgez $2, TAG30
TAG30:
addu $1, $3, $3
beq $1, $3, TAG31
sb $3, 0($3)
sh $3, 0($1)
TAG31:
lui $2, 9
lw $4, 0($1)
sw $2, 0($4)
srlv $1, $2, $1
TAG32:
mthi $1
bne $1, $1, TAG33
lui $2, 2
sra $3, $1, 8
TAG33:
mthi $3
beq $3, $3, TAG34
lui $1, 5
mfhi $3
TAG34:
mthi $3
mthi $3
addiu $1, $3, 10
mtlo $3
TAG35:
mtlo $1
or $1, $1, $1
div $1, $1
lui $3, 8
TAG36:
lui $1, 1
sltiu $4, $3, 2
mtlo $4
div $1, $1
TAG37:
lhu $2, 0($4)
lb $2, 0($4)
bne $2, $2, TAG38
lui $3, 3
TAG38:
sltu $3, $3, $3
multu $3, $3
lui $1, 1
lb $4, 0($3)
TAG39:
bne $4, $4, TAG40
lui $4, 4
sll $0, $0, 0
sll $0, $0, 0
TAG40:
lui $4, 4
mtlo $4
mult $4, $4
bltz $4, TAG41
TAG41:
sll $0, $0, 0
mflo $1
srl $4, $1, 3
blez $4, TAG42
TAG42:
sh $4, 0($4)
slti $1, $4, 9
mtlo $1
lb $2, 0($4)
TAG43:
mtlo $2
lbu $1, 0($2)
lui $3, 15
bltz $3, TAG44
TAG44:
mfhi $4
sb $4, 0($4)
lui $1, 12
mfhi $1
TAG45:
mfhi $4
mfhi $1
beq $1, $1, TAG46
mthi $1
TAG46:
mtlo $1
addu $3, $1, $1
mtlo $3
sb $1, 0($3)
TAG47:
mtlo $3
mfhi $3
mflo $3
slt $3, $3, $3
TAG48:
sh $3, 0($3)
blez $3, TAG49
sh $3, 0($3)
mtlo $3
TAG49:
mtlo $3
mthi $3
sltiu $1, $3, 6
blez $1, TAG50
TAG50:
lbu $3, 0($1)
multu $1, $3
beq $3, $3, TAG51
mfhi $2
TAG51:
ori $2, $2, 4
bgtz $2, TAG52
lui $2, 14
and $1, $2, $2
TAG52:
mtlo $1
bne $1, $1, TAG53
divu $1, $1
beq $1, $1, TAG53
TAG53:
lb $2, 0($1)
sra $4, $2, 8
beq $1, $2, TAG54
div $1, $1
TAG54:
addiu $4, $4, 13
bltz $4, TAG55
mtlo $4
mflo $4
TAG55:
bgez $4, TAG56
mthi $4
mthi $4
sw $4, 0($4)
TAG56:
mflo $3
sb $4, 0($4)
slti $3, $4, 9
addu $2, $3, $4
TAG57:
bgtz $2, TAG58
mtlo $2
div $2, $2
lui $3, 8
TAG58:
mtlo $3
and $2, $3, $3
lui $1, 5
lui $4, 4
TAG59:
mfhi $4
subu $3, $4, $4
multu $4, $4
bgez $3, TAG60
TAG60:
mfhi $1
mfhi $1
lui $1, 9
mtlo $1
TAG61:
subu $4, $1, $1
lb $2, 0($4)
sll $0, $0, 0
bne $2, $2, TAG62
TAG62:
mult $2, $2
mflo $2
subu $1, $2, $2
lbu $4, 0($2)
TAG63:
lw $3, 0($4)
sll $0, $0, 0
ori $1, $3, 11
div $4, $1
TAG64:
mflo $4
beq $1, $1, TAG65
mflo $1
srlv $2, $1, $1
TAG65:
mthi $2
addiu $3, $2, 6
bne $3, $2, TAG66
mthi $2
TAG66:
mfhi $4
srl $4, $3, 12
xor $1, $4, $4
lui $4, 15
TAG67:
xori $2, $4, 12
lui $3, 7
mtlo $2
sll $0, $0, 0
TAG68:
sll $0, $0, 0
xor $1, $3, $3
mthi $3
div $3, $3
TAG69:
srlv $3, $1, $1
sw $3, 0($1)
srl $1, $3, 10
lui $2, 10
TAG70:
mflo $2
divu $2, $2
mthi $2
bne $2, $2, TAG71
TAG71:
srlv $2, $2, $2
beq $2, $2, TAG72
mflo $4
divu $2, $4
TAG72:
and $4, $4, $4
lui $4, 0
addu $4, $4, $4
mflo $1
TAG73:
sb $1, 0($1)
ori $3, $1, 6
bltz $3, TAG74
lui $1, 8
TAG74:
div $1, $1
mfhi $3
bne $1, $1, TAG75
sll $0, $0, 0
TAG75:
lui $4, 5
lui $1, 0
lui $1, 13
lui $3, 9
TAG76:
lui $3, 11
mult $3, $3
mflo $3
lui $3, 4
TAG77:
beq $3, $3, TAG78
sll $0, $0, 0
ori $4, $3, 12
lui $1, 7
TAG78:
sll $0, $0, 0
ori $4, $1, 3
mult $4, $1
addiu $4, $4, 6
TAG79:
bgez $4, TAG80
sll $0, $0, 0
sb $4, 0($1)
bgtz $1, TAG80
TAG80:
sll $0, $0, 0
mthi $1
lui $4, 0
mtlo $4
TAG81:
mult $4, $4
mult $4, $4
lhu $3, 0($4)
slti $1, $3, 6
TAG82:
lui $3, 1
sh $1, 0($1)
mflo $1
sll $4, $1, 13
TAG83:
lui $3, 5
mtlo $4
sb $4, 0($4)
addiu $2, $4, 2
TAG84:
mthi $2
andi $2, $2, 5
lb $1, 0($2)
slti $2, $2, 10
TAG85:
sb $2, 0($2)
mflo $3
blez $3, TAG86
mult $2, $3
TAG86:
beq $3, $3, TAG87
lbu $3, 0($3)
lbu $2, 0($3)
blez $2, TAG87
TAG87:
lui $4, 6
sll $0, $0, 0
bgtz $4, TAG88
sra $1, $3, 10
TAG88:
or $1, $1, $1
or $4, $1, $1
ori $2, $1, 0
mfhi $1
TAG89:
multu $1, $1
mflo $1
mfhi $4
addu $2, $1, $1
TAG90:
slti $4, $2, 8
sb $4, 0($4)
andi $4, $4, 6
lui $2, 10
TAG91:
mthi $2
bne $2, $2, TAG92
sll $0, $0, 0
beq $2, $2, TAG92
TAG92:
multu $2, $2
addiu $2, $2, 3
lui $1, 5
bgtz $2, TAG93
TAG93:
mthi $1
lui $3, 1
beq $1, $3, TAG94
multu $1, $3
TAG94:
sll $0, $0, 0
bgez $3, TAG95
lh $3, 0($4)
mtlo $3
TAG95:
bne $3, $3, TAG96
mthi $3
mfhi $2
mfhi $1
TAG96:
xori $1, $1, 8
addiu $1, $1, 0
mflo $1
mtlo $1
TAG97:
bgez $1, TAG98
mthi $1
sb $1, 0($1)
bgez $1, TAG98
TAG98:
multu $1, $1
lui $1, 8
mult $1, $1
mult $1, $1
TAG99:
slt $3, $1, $1
mfhi $2
srl $4, $3, 10
srl $1, $1, 2
TAG100:
sll $0, $0, 0
lui $2, 14
multu $1, $1
sll $0, $0, 0
TAG101:
mtlo $1
srlv $4, $1, $1
beq $4, $4, TAG102
multu $4, $1
TAG102:
lui $2, 5
sll $0, $0, 0
addu $4, $2, $2
beq $2, $4, TAG103
TAG103:
sltiu $3, $4, 13
mthi $4
lui $4, 4
blez $4, TAG104
TAG104:
divu $4, $4
mflo $2
sb $2, 0($2)
lui $2, 14
TAG105:
lui $1, 3
lui $3, 9
mfhi $4
mthi $3
TAG106:
and $4, $4, $4
lh $3, 0($4)
or $3, $4, $4
lui $3, 9
TAG107:
sll $0, $0, 0
beq $3, $3, TAG108
sll $3, $3, 13
addiu $3, $3, 6
TAG108:
div $3, $3
mtlo $3
bne $3, $3, TAG109
lui $4, 13
TAG109:
sltiu $1, $4, 12
bltz $1, TAG110
sh $1, 0($1)
lh $3, 0($1)
TAG110:
sh $3, 0($3)
bltz $3, TAG111
mfhi $4
bgez $3, TAG111
TAG111:
mthi $4
mult $4, $4
bgtz $4, TAG112
sb $4, 0($4)
TAG112:
bltz $4, TAG113
srl $4, $4, 15
lhu $2, 0($4)
addu $3, $4, $4
TAG113:
mfhi $2
lui $3, 0
mfhi $1
mthi $1
TAG114:
mthi $1
lui $1, 2
sll $0, $0, 0
mflo $2
TAG115:
bltz $2, TAG116
mflo $4
mthi $2
mfhi $1
TAG116:
mtlo $1
sllv $1, $1, $1
mfhi $2
mtlo $2
TAG117:
mthi $2
sub $2, $2, $2
sw $2, 0($2)
lui $3, 11
TAG118:
mult $3, $3
multu $3, $3
multu $3, $3
subu $4, $3, $3
TAG119:
bltz $4, TAG120
mthi $4
lui $3, 6
mthi $3
TAG120:
lui $2, 9
mfhi $2
mflo $2
sltiu $1, $2, 15
TAG121:
sra $2, $1, 11
sh $2, 0($2)
xori $2, $2, 12
sb $1, 0($1)
TAG122:
divu $2, $2
mthi $2
mthi $2
mtlo $2
TAG123:
sh $2, 0($2)
sltiu $1, $2, 3
lb $1, 0($2)
subu $3, $2, $2
TAG124:
multu $3, $3
mthi $3
mflo $4
lbu $3, 0($3)
TAG125:
sh $3, 0($3)
bgez $3, TAG126
mflo $1
mflo $2
TAG126:
bne $2, $2, TAG127
andi $1, $2, 2
beq $1, $2, TAG127
mflo $3
TAG127:
multu $3, $3
lui $2, 11
srav $3, $3, $2
bltz $3, TAG128
TAG128:
lb $1, 0($3)
bne $3, $1, TAG129
sll $4, $3, 9
lui $1, 5
TAG129:
mult $1, $1
mflo $1
lh $1, 0($1)
bltz $1, TAG130
TAG130:
lui $1, 3
bltz $1, TAG131
mult $1, $1
sll $0, $0, 0
TAG131:
lhu $2, 0($3)
sra $3, $2, 12
sb $3, 0($3)
mfhi $2
TAG132:
mflo $1
bgez $1, TAG133
sb $1, 0($2)
sll $3, $2, 5
TAG133:
addi $3, $3, 11
sb $3, 0($3)
divu $3, $3
srav $2, $3, $3
TAG134:
blez $2, TAG135
lhu $3, 0($2)
bgez $2, TAG135
lui $4, 15
TAG135:
bltz $4, TAG136
multu $4, $4
bgtz $4, TAG136
mult $4, $4
TAG136:
lw $2, 0($4)
addiu $3, $4, 3
lb $2, 0($2)
sub $2, $4, $4
TAG137:
lhu $3, 0($2)
mult $3, $3
mult $2, $3
bgtz $2, TAG138
TAG138:
lw $3, 0($3)
andi $2, $3, 10
mtlo $3
lb $1, 0($2)
TAG139:
lui $4, 8
mflo $4
lbu $4, 0($1)
lui $3, 4
TAG140:
bne $3, $3, TAG141
mtlo $3
slt $2, $3, $3
blez $2, TAG141
TAG141:
mtlo $2
beq $2, $2, TAG142
mtlo $2
lh $2, 0($2)
TAG142:
mfhi $2
beq $2, $2, TAG143
sh $2, 0($2)
addiu $1, $2, 12
TAG143:
bgez $1, TAG144
mfhi $2
mtlo $2
bgtz $1, TAG144
TAG144:
sb $2, 0($2)
bne $2, $2, TAG145
multu $2, $2
subu $3, $2, $2
TAG145:
sh $3, 0($3)
mtlo $3
or $1, $3, $3
mthi $3
TAG146:
multu $1, $1
bgez $1, TAG147
sb $1, 0($1)
mult $1, $1
TAG147:
lh $1, 0($1)
beq $1, $1, TAG148
lui $3, 9
lw $4, 0($1)
TAG148:
add $1, $4, $4
bltz $4, TAG149
ori $2, $1, 14
subu $3, $2, $1
TAG149:
sltiu $1, $3, 2
bne $3, $1, TAG150
sll $1, $1, 10
bgtz $1, TAG150
TAG150:
sub $2, $1, $1
lui $1, 7
sltiu $3, $1, 14
mflo $4
TAG151:
mult $4, $4
mult $4, $4
lui $4, 5
sll $0, $0, 0
TAG152:
beq $4, $4, TAG153
div $4, $4
slt $2, $4, $4
bltz $2, TAG153
TAG153:
xor $3, $2, $2
mtlo $2
lh $4, 0($2)
slt $3, $2, $2
TAG154:
addi $3, $3, 13
mflo $1
mtlo $1
lui $2, 12
TAG155:
sll $0, $0, 0
addiu $3, $3, 7
sb $3, 0($3)
mflo $1
TAG156:
bne $1, $1, TAG157
lui $4, 15
lui $3, 13
divu $1, $3
TAG157:
addiu $3, $3, 9
mult $3, $3
sll $0, $0, 0
srlv $2, $3, $3
TAG158:
addiu $2, $2, 14
mtlo $2
lw $4, -1678($2)
mthi $2
TAG159:
lui $4, 10
sra $4, $4, 7
srl $2, $4, 3
xori $2, $2, 6
TAG160:
or $4, $2, $2
multu $2, $4
mtlo $2
mfhi $2
TAG161:
sb $2, 0($2)
blez $2, TAG162
mtlo $2
mflo $1
TAG162:
lb $2, 0($1)
beq $1, $1, TAG163
lui $3, 5
xor $2, $2, $3
TAG163:
multu $2, $2
or $2, $2, $2
bne $2, $2, TAG164
sh $2, 0($2)
TAG164:
mfhi $2
srlv $3, $2, $2
subu $3, $2, $2
sw $2, 0($2)
TAG165:
bltz $3, TAG166
mtlo $3
xor $2, $3, $3
bltz $2, TAG166
TAG166:
and $2, $2, $2
sb $2, 0($2)
lui $4, 1
mfhi $3
TAG167:
xori $1, $3, 15
mtlo $3
mtlo $1
div $1, $1
TAG168:
beq $1, $1, TAG169
lb $4, 0($1)
beq $4, $4, TAG169
addu $2, $4, $1
TAG169:
mflo $4
mtlo $4
sb $2, 0($4)
beq $4, $2, TAG170
TAG170:
lbu $3, 0($4)
sb $4, 0($4)
lui $1, 11
mfhi $2
TAG171:
mthi $2
lhu $1, 0($2)
lui $4, 9
mult $1, $2
TAG172:
blez $4, TAG173
lui $1, 12
mult $4, $4
mtlo $1
TAG173:
or $3, $1, $1
sll $0, $0, 0
andi $4, $1, 7
divu $3, $3
TAG174:
sb $4, 0($4)
blez $4, TAG175
slt $2, $4, $4
sb $2, 0($2)
TAG175:
mult $2, $2
mfhi $4
bne $4, $4, TAG176
lbu $1, 0($2)
TAG176:
mthi $1
lb $3, 0($1)
sra $3, $3, 4
lui $1, 13
TAG177:
mtlo $1
sll $0, $0, 0
addiu $4, $1, 7
blez $3, TAG178
TAG178:
mthi $4
subu $1, $4, $4
lhu $2, 0($1)
lbu $2, -256($2)
TAG179:
mthi $2
sw $2, 0($2)
multu $2, $2
lbu $4, 0($2)
TAG180:
xor $1, $4, $4
lui $4, 4
blez $1, TAG181
srav $2, $1, $4
TAG181:
mtlo $2
bgtz $2, TAG182
lbu $2, 0($2)
mthi $2
TAG182:
lb $1, 0($2)
mfhi $2
lui $3, 0
bgtz $3, TAG183
TAG183:
lhu $1, 0($3)
bltz $1, TAG184
mflo $1
add $1, $1, $3
TAG184:
blez $1, TAG185
mult $1, $1
or $4, $1, $1
mthi $1
TAG185:
bgtz $4, TAG186
divu $4, $4
sb $4, 0($4)
lbu $3, 0($4)
TAG186:
sw $3, 0($3)
lui $2, 10
sll $0, $0, 0
bltz $3, TAG187
TAG187:
mult $2, $2
mflo $1
sltu $4, $1, $2
lb $1, 0($4)
TAG188:
mfhi $1
lbu $1, 0($1)
sb $1, 0($1)
bltz $1, TAG189
TAG189:
sra $2, $1, 11
nor $4, $1, $1
bgez $2, TAG190
addiu $1, $1, 3
TAG190:
mflo $3
lh $1, 0($1)
beq $1, $1, TAG191
lbu $4, 0($1)
TAG191:
mult $4, $4
lb $3, 0($4)
bne $4, $4, TAG192
srl $4, $3, 7
TAG192:
lh $4, 0($4)
sll $3, $4, 4
lw $3, 0($4)
beq $3, $3, TAG193
TAG193:
mtlo $3
bgez $3, TAG194
sb $3, 0($3)
sw $3, 0($3)
TAG194:
lhu $3, 0($3)
mult $3, $3
lui $4, 13
multu $3, $3
TAG195:
mthi $4
sltu $4, $4, $4
ori $1, $4, 11
lui $1, 13
TAG196:
beq $1, $1, TAG197
slti $3, $1, 5
mfhi $1
bgtz $3, TAG197
TAG197:
mult $1, $1
divu $1, $1
bne $1, $1, TAG198
sll $0, $0, 0
TAG198:
mthi $4
mflo $4
addiu $4, $4, 14
bgtz $4, TAG199
TAG199:
lui $4, 11
beq $4, $4, TAG200
mtlo $4
mflo $3
TAG200:
mflo $2
mult $3, $3
mfhi $1
beq $2, $1, TAG201
TAG201:
sw $1, 0($1)
mtlo $1
beq $1, $1, TAG202
mthi $1
TAG202:
sltiu $4, $1, 14
slti $2, $1, 2
sb $4, 0($4)
mtlo $4
TAG203:
beq $2, $2, TAG204
div $2, $2
bgez $2, TAG204
mflo $3
TAG204:
lb $1, 0($3)
mult $1, $1
bne $1, $1, TAG205
addu $1, $1, $1
TAG205:
sltiu $2, $1, 14
slti $1, $1, 13
lb $1, 0($2)
divu $1, $2
TAG206:
subu $4, $1, $1
mfhi $2
beq $1, $1, TAG207
lui $3, 14
TAG207:
mfhi $3
or $3, $3, $3
sb $3, 0($3)
sw $3, 0($3)
TAG208:
lw $3, 0($3)
sh $3, 0($3)
slti $3, $3, 13
lui $4, 3
TAG209:
ori $2, $4, 8
mflo $3
sll $0, $0, 0
div $2, $2
TAG210:
beq $1, $1, TAG211
lb $2, 0($1)
lw $4, 0($1)
mthi $4
TAG211:
mflo $3
mfhi $1
sra $2, $3, 12
xori $3, $4, 13
TAG212:
bne $3, $3, TAG213
sll $0, $0, 0
divu $3, $3
lui $4, 12
TAG213:
srl $3, $4, 10
mtlo $4
mflo $1
bne $4, $4, TAG214
TAG214:
mthi $1
mthi $1
mthi $1
sltu $4, $1, $1
TAG215:
slti $3, $4, 7
mflo $1
sll $0, $0, 0
bne $1, $2, TAG216
TAG216:
sllv $2, $2, $2
bne $2, $2, TAG217
sll $4, $2, 4
lw $2, 0($4)
TAG217:
srlv $3, $2, $2
lw $4, 0($2)
beq $2, $3, TAG218
lui $4, 13
TAG218:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG219:
sll $0, $0, 0
mflo $3
bltz $3, TAG220
slti $3, $3, 1
TAG220:
ori $3, $3, 13
bgtz $3, TAG221
sb $3, 0($3)
bgtz $3, TAG221
TAG221:
lui $1, 9
sll $0, $0, 0
lb $4, 0($3)
bne $3, $4, TAG222
TAG222:
mtlo $4
lui $1, 7
lui $1, 11
mthi $1
TAG223:
mtlo $1
beq $1, $1, TAG224
nor $2, $1, $1
lb $2, 0($1)
TAG224:
mtlo $2
addu $1, $2, $2
sll $0, $0, 0
bgez $2, TAG225
TAG225:
mult $1, $1
mflo $2
divu $1, $1
mult $2, $1
TAG226:
subu $3, $2, $2
mflo $3
mthi $3
bltz $2, TAG227
TAG227:
mtlo $3
sll $0, $0, 0
lui $3, 5
multu $3, $3
TAG228:
bgtz $3, TAG229
sll $0, $0, 0
mult $4, $4
lb $3, 0($4)
TAG229:
bgtz $3, TAG230
mthi $3
lui $2, 5
multu $3, $2
TAG230:
lui $2, 3
blez $2, TAG231
mflo $1
mflo $1
TAG231:
xori $3, $1, 10
lui $4, 8
div $3, $4
ori $1, $1, 2
TAG232:
beq $1, $1, TAG233
lh $1, 0($1)
bgtz $1, TAG233
lbu $2, 0($1)
TAG233:
addiu $2, $2, 13
beq $2, $2, TAG234
sllv $4, $2, $2
srl $2, $4, 7
TAG234:
mflo $3
lui $1, 12
sll $0, $0, 0
sllv $4, $2, $3
TAG235:
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
mthi $4
TAG236:
sll $0, $0, 0
lui $2, 7
sll $0, $0, 0
blez $2, TAG237
TAG237:
mthi $2
mfhi $1
srlv $4, $2, $2
or $2, $4, $4
TAG238:
sll $3, $2, 13
mflo $1
sltiu $3, $1, 1
mfhi $4
TAG239:
andi $3, $4, 8
multu $4, $4
sll $0, $0, 0
sllv $1, $3, $1
TAG240:
lb $3, 0($1)
lui $3, 9
mfhi $2
bltz $1, TAG241
TAG241:
lbu $4, 0($2)
bgtz $4, TAG242
mthi $4
xori $4, $2, 7
TAG242:
sh $4, 0($4)
xor $4, $4, $4
mtlo $4
lh $4, 0($4)
TAG243:
sll $3, $4, 12
blez $3, TAG244
mthi $3
sb $4, 0($3)
TAG244:
lbu $1, 0($3)
srav $1, $3, $3
bgtz $1, TAG245
lui $3, 5
TAG245:
mult $3, $3
ori $2, $3, 14
sll $0, $0, 0
beq $2, $2, TAG246
TAG246:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG247:
sll $0, $0, 0
lui $3, 0
lui $2, 0
lw $4, 0($1)
TAG248:
andi $3, $4, 12
add $4, $3, $4
mthi $3
bne $4, $3, TAG249
TAG249:
multu $4, $4
lui $2, 5
lui $1, 6
multu $1, $1
TAG250:
lui $1, 2
lui $3, 14
sll $0, $0, 0
sltiu $1, $1, 4
TAG251:
sb $1, 0($1)
lh $1, 0($1)
lui $1, 7
sll $0, $0, 0
TAG252:
sll $4, $2, 12
bgtz $2, TAG253
mtlo $4
lui $1, 15
TAG253:
bne $1, $1, TAG254
subu $3, $1, $1
sw $1, 0($3)
bne $1, $3, TAG254
TAG254:
slt $2, $3, $3
lw $1, 0($2)
xor $3, $3, $2
bltz $3, TAG255
TAG255:
addu $2, $3, $3
sra $3, $2, 1
lui $3, 3
mthi $3
TAG256:
beq $3, $3, TAG257
divu $3, $3
mthi $3
sb $3, 0($3)
TAG257:
sll $0, $0, 0
bgtz $3, TAG258
mtlo $3
multu $3, $3
TAG258:
andi $1, $3, 5
mtlo $1
lui $2, 1
mtlo $2
TAG259:
beq $2, $2, TAG260
sll $0, $0, 0
lui $1, 9
bne $4, $4, TAG260
TAG260:
lbu $1, 0($1)
mfhi $1
mfhi $1
mthi $1
TAG261:
addu $1, $1, $1
mflo $2
and $3, $1, $1
beq $3, $1, TAG262
TAG262:
mtlo $3
slt $2, $3, $3
and $1, $3, $3
lui $3, 6
TAG263:
sra $2, $3, 0
multu $3, $2
sll $0, $0, 0
beq $2, $2, TAG264
TAG264:
lui $3, 6
bltz $2, TAG265
sll $0, $0, 0
bgez $3, TAG265
TAG265:
lui $2, 2
lui $1, 12
beq $3, $2, TAG266
lui $3, 10
TAG266:
slti $2, $3, 1
sll $0, $0, 0
srlv $4, $2, $3
sub $3, $4, $2
TAG267:
xor $2, $3, $3
addi $3, $2, 5
lui $4, 11
bne $3, $3, TAG268
TAG268:
mult $4, $4
sll $0, $0, 0
beq $4, $4, TAG269
lui $3, 3
TAG269:
xori $3, $3, 10
sltiu $2, $3, 11
lui $2, 9
srl $3, $2, 6
TAG270:
andi $2, $3, 9
slti $3, $3, 13
sll $1, $3, 1
bne $3, $1, TAG271
TAG271:
mtlo $1
mthi $1
mflo $4
lhu $2, 0($1)
TAG272:
sltiu $4, $2, 15
mthi $4
lui $4, 5
mtlo $4
TAG273:
sll $0, $0, 0
mthi $4
andi $3, $4, 15
slt $3, $3, $3
TAG274:
slti $3, $3, 7
mult $3, $3
bgez $3, TAG275
mthi $3
TAG275:
mtlo $3
sb $3, 0($3)
sb $3, 0($3)
lui $1, 13
TAG276:
bgtz $1, TAG277
mult $1, $1
slt $4, $1, $1
srlv $2, $4, $4
TAG277:
beq $2, $2, TAG278
subu $3, $2, $2
blez $3, TAG278
mflo $4
TAG278:
mfhi $3
mflo $1
mult $1, $1
mthi $1
TAG279:
lhu $3, 0($1)
subu $1, $3, $3
sllv $4, $1, $3
bne $4, $1, TAG280
TAG280:
mthi $4
ori $3, $4, 6
subu $3, $4, $4
mtlo $3
TAG281:
beq $3, $3, TAG282
mthi $3
sh $3, 0($3)
andi $1, $3, 14
TAG282:
lhu $1, 0($1)
sltiu $4, $1, 15
addiu $4, $1, 3
srl $4, $1, 3
TAG283:
bgtz $4, TAG284
addiu $2, $4, 7
mfhi $1
lui $3, 11
TAG284:
sw $3, 0($3)
srlv $4, $3, $3
beq $4, $3, TAG285
subu $1, $3, $3
TAG285:
sub $2, $1, $1
multu $2, $2
andi $4, $2, 15
lh $3, 0($2)
TAG286:
lb $2, 0($3)
lui $1, 5
bne $3, $3, TAG287
multu $2, $1
TAG287:
divu $1, $1
sll $0, $0, 0
mtlo $1
div $1, $1
TAG288:
sltu $1, $1, $1
bne $1, $1, TAG289
mflo $2
beq $1, $1, TAG289
TAG289:
sllv $2, $2, $2
multu $2, $2
multu $2, $2
beq $2, $2, TAG290
TAG290:
or $4, $2, $2
lui $1, 8
sll $0, $0, 0
bltz $1, TAG291
TAG291:
sltu $3, $4, $4
lui $3, 6
sb $3, 0($4)
bne $3, $3, TAG292
TAG292:
sll $0, $0, 0
sltu $1, $3, $3
sll $0, $0, 0
lui $3, 1
TAG293:
sll $0, $0, 0
lui $2, 12
bne $3, $2, TAG294
ori $1, $2, 8
TAG294:
addu $1, $1, $1
beq $1, $1, TAG295
srl $2, $1, 6
divu $2, $1
TAG295:
mfhi $3
mult $2, $3
mtlo $3
mtlo $3
TAG296:
andi $1, $3, 5
lbu $1, 0($3)
blez $1, TAG297
ori $2, $3, 0
TAG297:
lui $4, 12
lui $1, 14
sll $0, $0, 0
sb $2, 0($2)
TAG298:
mult $1, $1
bgtz $1, TAG299
mthi $1
beq $1, $1, TAG299
TAG299:
mthi $1
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
TAG300:
lui $3, 5
addiu $4, $3, 0
sll $0, $0, 0
mult $4, $3
TAG301:
lui $2, 12
or $3, $4, $4
mult $3, $4
nor $3, $4, $3
TAG302:
divu $3, $3
lui $3, 1
multu $3, $3
lui $4, 5
TAG303:
sll $0, $0, 0
mthi $4
div $4, $4
div $4, $4
TAG304:
lui $4, 8
sll $0, $0, 0
srl $1, $1, 13
mfhi $1
TAG305:
subu $4, $1, $1
sll $1, $4, 9
lui $2, 14
lw $3, 0($1)
TAG306:
bgtz $3, TAG307
lui $3, 1
bltz $3, TAG307
mtlo $3
TAG307:
slti $4, $3, 4
blez $3, TAG308
mtlo $3
sub $2, $3, $4
TAG308:
lui $3, 15
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG309:
multu $1, $1
bgez $1, TAG310
lui $3, 13
beq $3, $3, TAG310
TAG310:
srl $4, $3, 6
bgtz $3, TAG311
mthi $3
subu $1, $3, $4
TAG311:
sh $1, 0($1)
mult $1, $1
beq $1, $1, TAG312
addi $3, $1, 15
TAG312:
bltz $3, TAG313
mfhi $1
addiu $2, $3, 13
mtlo $1
TAG313:
mthi $2
sb $2, 0($2)
mthi $2
sb $2, 0($2)
TAG314:
bltz $2, TAG315
mtlo $2
sw $2, 0($2)
beq $2, $2, TAG315
TAG315:
lui $3, 8
blez $2, TAG316
mflo $4
lh $1, 0($2)
TAG316:
multu $1, $1
div $1, $1
blez $1, TAG317
mfhi $3
TAG317:
lui $4, 10
lui $4, 11
lui $4, 12
mfhi $1
TAG318:
mthi $1
sh $1, 0($1)
sltu $3, $1, $1
add $4, $3, $1
TAG319:
sb $4, 0($4)
lui $4, 6
mfhi $4
mult $4, $4
TAG320:
sh $4, 0($4)
bne $4, $4, TAG321
lh $4, 0($4)
ori $1, $4, 11
TAG321:
bne $1, $1, TAG322
mthi $1
multu $1, $1
lbu $4, 0($1)
TAG322:
lui $3, 5
addiu $4, $3, 0
sll $0, $0, 0
bne $4, $4, TAG323
TAG323:
ori $1, $4, 14
subu $4, $4, $1
lui $3, 6
mflo $3
TAG324:
mthi $3
mtlo $3
sb $3, 0($3)
lui $3, 9
TAG325:
sll $0, $0, 0
mflo $2
blez $3, TAG326
lui $3, 3
TAG326:
mtlo $3
multu $3, $3
addiu $3, $3, 9
bltz $3, TAG327
TAG327:
sll $0, $0, 0
bne $3, $3, TAG328
sll $0, $0, 0
sll $0, $0, 0
TAG328:
addiu $3, $3, 11
lui $4, 6
bne $3, $4, TAG329
sll $0, $0, 0
TAG329:
multu $2, $2
mthi $2
and $2, $2, $2
bgez $2, TAG330
TAG330:
mthi $2
lui $2, 12
sll $0, $0, 0
addu $2, $2, $2
TAG331:
bgtz $2, TAG332
mfhi $3
sw $2, 0($3)
mthi $3
TAG332:
mult $3, $3
slti $4, $3, 6
bltz $4, TAG333
lbu $4, 0($3)
TAG333:
mflo $2
addiu $4, $2, 12
lui $4, 0
lui $1, 2
TAG334:
sll $0, $0, 0
lbu $1, 0($4)
mtlo $1
bgtz $1, TAG335
TAG335:
lh $3, 0($1)
mult $1, $1
sb $3, 0($3)
srav $3, $3, $3
TAG336:
bltz $3, TAG337
nor $4, $3, $3
mflo $1
nor $2, $1, $4
TAG337:
xor $4, $2, $2
addu $2, $2, $4
lbu $3, 0($4)
sb $3, 0($4)
TAG338:
lbu $1, 0($3)
sh $1, 0($3)
bltz $3, TAG339
mthi $3
TAG339:
nor $4, $1, $1
beq $4, $1, TAG340
mthi $1
addu $1, $4, $1
TAG340:
mtlo $1
bne $1, $1, TAG341
mflo $3
mtlo $1
TAG341:
sra $2, $3, 15
bne $2, $3, TAG342
mflo $2
mtlo $3
TAG342:
mfhi $2
sw $2, 0($2)
lui $2, 6
mult $2, $2
TAG343:
bgtz $2, TAG344
multu $2, $2
andi $2, $2, 11
blez $2, TAG344
TAG344:
or $2, $2, $2
mthi $2
subu $4, $2, $2
lui $2, 5
TAG345:
sll $0, $0, 0
sll $0, $0, 0
nor $2, $2, $2
sll $0, $0, 0
TAG346:
multu $2, $2
mflo $2
mfhi $1
mult $2, $1
TAG347:
sll $0, $0, 0
bgtz $4, TAG348
lui $2, 4
beq $2, $2, TAG348
TAG348:
lui $2, 5
sll $0, $0, 0
mfhi $1
sb $1, 100($1)
TAG349:
div $1, $1
lbu $2, 100($1)
bgez $1, TAG350
sb $2, 100($1)
TAG350:
sh $2, -156($2)
div $2, $2
bne $2, $2, TAG351
mfhi $2
TAG351:
sb $2, 0($2)
mtlo $2
mflo $3
sll $4, $2, 8
TAG352:
lbu $1, 0($4)
lbu $2, 0($4)
nor $4, $1, $4
multu $1, $2
TAG353:
sra $2, $4, 8
sw $4, 1($2)
lh $2, 1($4)
divu $2, $2
TAG354:
slt $3, $2, $2
lbu $1, 1($2)
sh $3, 1($2)
bltz $1, TAG355
TAG355:
nor $4, $1, $1
and $2, $4, $1
bne $4, $4, TAG356
mtlo $2
TAG356:
sub $2, $2, $2
bgtz $2, TAG357
lui $3, 4
multu $3, $2
TAG357:
sll $0, $0, 0
blez $3, TAG358
nor $4, $3, $3
mflo $3
TAG358:
beq $3, $3, TAG359
ori $4, $3, 3
lui $1, 4
lh $3, 0($3)
TAG359:
bne $3, $3, TAG360
sb $3, 0($3)
sw $3, 0($3)
mflo $1
TAG360:
bgez $1, TAG361
lhu $2, 0($1)
mflo $1
lui $1, 15
TAG361:
slti $4, $1, 13
bgtz $4, TAG362
mult $1, $1
sltu $3, $1, $4
TAG362:
lw $4, 0($3)
bgtz $4, TAG363
sub $2, $3, $3
lbu $2, 0($2)
TAG363:
lui $3, 14
sltiu $1, $3, 11
bltz $1, TAG364
mflo $1
TAG364:
lui $2, 14
sw $1, 0($1)
lh $3, 0($1)
sh $2, 0($3)
TAG365:
mtlo $3
addi $3, $3, 9
lui $1, 7
mthi $3
TAG366:
lui $2, 0
bne $2, $2, TAG367
mfhi $4
addu $1, $1, $1
TAG367:
beq $1, $1, TAG368
mult $1, $1
srl $2, $1, 9
sb $2, 0($1)
TAG368:
lui $1, 1
mtlo $2
bne $2, $2, TAG369
mtlo $1
TAG369:
srl $4, $1, 8
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG370
TAG370:
mflo $2
mfhi $4
bne $4, $1, TAG371
slt $1, $1, $4
TAG371:
mfhi $1
mflo $3
mflo $4
sll $0, $0, 0
TAG372:
mtlo $4
addu $4, $4, $4
lui $2, 13
lui $2, 14
TAG373:
mthi $2
sll $0, $0, 0
bgtz $2, TAG374
lui $1, 13
TAG374:
lui $1, 2
sll $0, $0, 0
addiu $3, $4, 14
mfhi $2
TAG375:
sll $0, $0, 0
xor $4, $2, $2
mtlo $4
mtlo $3
TAG376:
bne $4, $4, TAG377
mfhi $3
sltiu $2, $3, 6
div $4, $3
TAG377:
bne $2, $2, TAG378
andi $3, $2, 13
sh $2, 0($3)
lbu $1, 0($2)
TAG378:
sh $1, 0($1)
sw $1, 0($1)
lbu $4, 0($1)
sw $4, 0($1)
TAG379:
mflo $3
lui $3, 8
mtlo $4
beq $3, $3, TAG380
TAG380:
lui $2, 11
blez $2, TAG381
mflo $3
mthi $2
TAG381:
beq $3, $3, TAG382
lui $3, 13
mthi $3
mflo $1
TAG382:
beq $1, $1, TAG383
multu $1, $1
sw $1, 0($1)
sw $1, 0($1)
TAG383:
bltz $1, TAG384
sll $3, $1, 8
nor $4, $1, $1
lui $2, 13
TAG384:
bgez $2, TAG385
mfhi $4
lui $1, 15
beq $2, $1, TAG385
TAG385:
add $4, $1, $1
lui $4, 8
addi $1, $1, 12
sll $0, $0, 0
TAG386:
lui $1, 8
mflo $1
slti $2, $1, 11
sb $1, 0($1)
TAG387:
sb $2, 0($2)
sb $2, 0($2)
mthi $2
lui $1, 5
TAG388:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG389
mflo $2
TAG389:
bne $2, $2, TAG390
sltu $1, $2, $2
bltz $1, TAG390
mthi $2
TAG390:
andi $2, $1, 9
add $4, $1, $1
sh $1, 0($4)
mfhi $1
TAG391:
mfhi $3
bne $3, $3, TAG392
lui $4, 3
mthi $3
TAG392:
xor $1, $4, $4
sra $2, $4, 7
mthi $4
add $1, $1, $2
TAG393:
multu $1, $1
andi $4, $1, 2
bne $4, $4, TAG394
mthi $4
TAG394:
bgez $4, TAG395
subu $3, $4, $4
mult $3, $3
bne $4, $3, TAG395
TAG395:
lbu $4, 0($3)
subu $2, $4, $3
mtlo $3
mtlo $2
TAG396:
sb $2, 0($2)
beq $2, $2, TAG397
sh $2, 0($2)
andi $1, $2, 5
TAG397:
sll $0, $0, 0
sltiu $1, $3, 14
blez $3, TAG398
ori $3, $3, 9
TAG398:
bgez $3, TAG399
lbu $3, 0($3)
sub $1, $3, $3
lui $1, 2
TAG399:
lui $4, 4
bne $4, $1, TAG400
lbu $4, 0($1)
mflo $4
TAG400:
beq $4, $4, TAG401
lbu $2, 0($4)
bne $2, $2, TAG401
lui $4, 7
TAG401:
lhu $2, 0($4)
mflo $3
lui $2, 8
mtlo $2
TAG402:
sll $0, $0, 0
xor $3, $2, $2
srl $4, $2, 2
subu $4, $4, $4
TAG403:
andi $3, $4, 10
sltu $3, $4, $4
srav $3, $4, $4
andi $4, $3, 10
TAG404:
lui $3, 8
lui $1, 7
lui $2, 9
add $1, $4, $3
TAG405:
lui $4, 1
beq $1, $1, TAG406
mthi $1
ori $2, $4, 0
TAG406:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
beq $2, $3, TAG407
TAG407:
lui $3, 3
mfhi $1
bne $1, $3, TAG408
lui $4, 9
TAG408:
mfhi $4
mthi $4
sra $3, $4, 12
lh $3, 0($3)
TAG409:
mtlo $3
bgtz $3, TAG410
lui $1, 7
ori $3, $3, 10
TAG410:
mtlo $3
mtlo $3
mtlo $3
multu $3, $3
TAG411:
lui $1, 9
bgez $3, TAG412
mthi $1
and $1, $1, $3
TAG412:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 11
sll $0, $0, 0
TAG413:
bltz $3, TAG414
subu $2, $3, $3
beq $3, $3, TAG414
mfhi $1
TAG414:
bne $1, $1, TAG415
mfhi $3
bne $3, $3, TAG415
sll $0, $0, 0
TAG415:
lui $2, 6
addu $4, $2, $2
mflo $2
lbu $2, 0($2)
TAG416:
beq $2, $2, TAG417
subu $1, $2, $2
srl $3, $2, 12
sh $2, 0($2)
TAG417:
lui $2, 13
mtlo $3
sll $0, $0, 0
lui $2, 2
TAG418:
bltz $2, TAG419
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG419:
bne $3, $3, TAG420
sll $0, $0, 0
mthi $3
lui $3, 8
TAG420:
lui $2, 1
div $2, $2
mflo $3
sll $0, $0, 0
TAG421:
mtlo $3
mtlo $3
slti $3, $3, 2
blez $3, TAG422
TAG422:
srl $4, $3, 9
slt $1, $3, $4
bne $1, $1, TAG423
div $1, $3
TAG423:
bgez $1, TAG424
mult $1, $1
lui $3, 10
multu $1, $3
TAG424:
mfhi $3
blez $3, TAG425
sb $3, 0($3)
sb $3, 0($3)
TAG425:
beq $3, $3, TAG426
and $1, $3, $3
divu $3, $3
lui $2, 7
TAG426:
sll $0, $0, 0
beq $2, $2, TAG427
lui $3, 6
lb $4, 0($4)
TAG427:
slti $1, $4, 9
bgez $1, TAG428
lbu $3, 0($1)
sh $4, 0($3)
TAG428:
mult $3, $3
sb $3, 0($3)
mfhi $2
lui $1, 8
TAG429:
bgtz $1, TAG430
nor $4, $1, $1
bltz $4, TAG430
lui $3, 12
TAG430:
beq $3, $3, TAG431
srav $4, $3, $3
mthi $4
mult $3, $3
TAG431:
multu $4, $4
mtlo $4
mflo $2
beq $2, $4, TAG432
TAG432:
sltiu $4, $2, 5
lh $4, 0($2)
lhu $4, 0($4)
bgez $2, TAG433
TAG433:
mtlo $4
sw $4, 0($4)
bgez $4, TAG434
multu $4, $4
TAG434:
sw $4, 0($4)
bgez $4, TAG435
lui $4, 6
beq $4, $4, TAG435
TAG435:
subu $4, $4, $4
lui $1, 0
mtlo $4
bne $4, $4, TAG436
TAG436:
multu $1, $1
bne $1, $1, TAG437
addiu $4, $1, 12
bgez $4, TAG437
TAG437:
mflo $3
sllv $2, $3, $4
mult $2, $3
lui $1, 13
TAG438:
beq $1, $1, TAG439
mthi $1
mtlo $1
lh $4, 0($1)
TAG439:
lbu $2, 0($4)
divu $2, $4
sw $2, 0($2)
mfhi $1
TAG440:
bgez $1, TAG441
mthi $1
andi $3, $1, 13
lbu $3, 0($1)
TAG441:
mtlo $3
mfhi $1
sw $3, 0($3)
mflo $2
TAG442:
lui $3, 5
lui $4, 12
srl $2, $3, 4
bne $4, $2, TAG443
TAG443:
andi $2, $2, 13
lh $2, 0($2)
lui $4, 10
mthi $2
TAG444:
mtlo $4
bne $4, $4, TAG445
div $4, $4
addu $4, $4, $4
TAG445:
lui $1, 11
bne $4, $1, TAG446
divu $4, $4
mfhi $3
TAG446:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
mfhi $2
TAG447:
ori $4, $2, 12
bne $4, $4, TAG448
mtlo $2
mthi $2
TAG448:
lhu $3, 0($4)
mflo $4
mthi $4
blez $4, TAG449
TAG449:
mflo $3
sw $4, 0($3)
mfhi $2
bltz $2, TAG450
TAG450:
mult $2, $2
bltz $2, TAG451
mthi $2
or $1, $2, $2
TAG451:
lbu $1, 0($1)
mult $1, $1
addiu $3, $1, 15
addiu $1, $3, 11
TAG452:
srl $2, $1, 6
mtlo $2
mfhi $1
bgtz $1, TAG453
TAG453:
multu $1, $1
lhu $1, 0($1)
mfhi $1
mfhi $4
TAG454:
mfhi $4
multu $4, $4
mtlo $4
mthi $4
TAG455:
mtlo $4
mtlo $4
sltiu $3, $4, 0
blez $4, TAG456
TAG456:
subu $1, $3, $3
lui $3, 1
lh $2, 0($1)
beq $3, $2, TAG457
TAG457:
lui $2, 13
bne $2, $2, TAG458
mtlo $2
sll $0, $0, 0
TAG458:
sll $0, $0, 0
blez $3, TAG459
and $3, $3, $3
sll $0, $0, 0
TAG459:
mfhi $3
beq $3, $3, TAG460
multu $3, $3
mflo $1
TAG460:
mtlo $1
multu $1, $1
mult $1, $1
add $4, $1, $1
TAG461:
mflo $1
lui $2, 9
lhu $1, 0($1)
mflo $3
TAG462:
sh $3, 0($3)
blez $3, TAG463
mult $3, $3
bgez $3, TAG463
TAG463:
lui $3, 10
addiu $3, $3, 4
lui $4, 1
bgtz $3, TAG464
TAG464:
mfhi $4
mtlo $4
sll $1, $4, 2
xori $1, $1, 7
TAG465:
mtlo $1
mthi $1
beq $1, $1, TAG466
mfhi $1
TAG466:
nor $4, $1, $1
sb $4, 8($4)
lui $1, 6
mtlo $1
TAG467:
bgtz $1, TAG468
mthi $1
addiu $3, $1, 6
mult $3, $1
TAG468:
bne $3, $3, TAG469
sltu $3, $3, $3
mflo $2
beq $3, $2, TAG469
TAG469:
mtlo $2
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG470
TAG470:
andi $1, $2, 1
sll $0, $0, 0
mflo $4
andi $4, $4, 4
TAG471:
sb $4, 0($4)
mfhi $1
nor $1, $4, $1
blez $1, TAG472
TAG472:
mthi $1
bne $1, $1, TAG473
div $1, $1
mtlo $1
TAG473:
sll $0, $0, 0
multu $1, $1
divu $1, $1
lui $4, 4
TAG474:
sll $0, $0, 0
bgez $4, TAG475
sll $0, $0, 0
lw $3, 0($4)
TAG475:
sb $3, 0($3)
mthi $3
lb $3, 0($3)
or $2, $3, $3
TAG476:
sh $2, 0($2)
lhu $1, 0($2)
andi $3, $1, 14
mthi $2
TAG477:
lb $1, 0($3)
xori $1, $3, 0
bne $1, $1, TAG478
multu $3, $1
TAG478:
multu $1, $1
lui $1, 9
mthi $1
bgtz $1, TAG479
TAG479:
nor $4, $1, $1
sll $0, $0, 0
bltz $4, TAG480
srlv $4, $4, $1
TAG480:
addiu $2, $4, 14
addiu $4, $2, 5
sll $0, $0, 0
blez $3, TAG481
TAG481:
lui $4, 3
sll $0, $0, 0
bltz $4, TAG482
lui $1, 6
TAG482:
divu $1, $1
sll $0, $0, 0
lui $3, 9
mfhi $2
TAG483:
multu $2, $2
mult $2, $2
mflo $2
lui $3, 1
TAG484:
mthi $3
sll $0, $0, 0
beq $2, $2, TAG485
subu $3, $2, $2
TAG485:
lui $3, 8
mflo $4
multu $3, $3
mult $3, $4
TAG486:
blez $4, TAG487
lui $2, 7
sltiu $4, $2, 7
sll $2, $4, 13
TAG487:
mthi $2
bgtz $2, TAG488
lui $4, 6
sh $2, 0($4)
TAG488:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG489
sra $4, $4, 8
TAG489:
sb $4, -1536($4)
mfhi $3
divu $3, $4
xori $2, $4, 11
TAG490:
mtlo $2
mflo $1
multu $1, $1
div $2, $2
TAG491:
bgez $1, TAG492
sh $1, -1547($1)
lui $1, 1
sll $1, $1, 11
TAG492:
sll $1, $1, 2
mfhi $4
mthi $4
mfhi $2
TAG493:
multu $2, $2
mtlo $2
mfhi $4
sh $2, 0($2)
TAG494:
bne $4, $4, TAG495
mfhi $3
lui $2, 13
lb $1, 0($4)
TAG495:
sb $1, 0($1)
lhu $1, 0($1)
beq $1, $1, TAG496
sra $1, $1, 3
TAG496:
lui $3, 2
slt $1, $1, $1
nor $2, $3, $1
srlv $4, $1, $2
TAG497:
mflo $2
sh $4, 0($2)
lui $1, 13
multu $4, $4
TAG498:
sll $0, $0, 0
xori $2, $1, 10
nor $2, $1, $2
blez $2, TAG499
TAG499:
lui $2, 1
divu $2, $2
sll $0, $0, 0
xori $4, $2, 3
TAG500:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG501
divu $4, $4
TAG501:
sll $0, $0, 0
ori $2, $4, 12
bne $4, $2, TAG502
addiu $4, $4, 0
TAG502:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG503
TAG503:
srl $3, $4, 15
sll $4, $3, 15
bgtz $4, TAG504
mfhi $3
TAG504:
bltz $3, TAG505
multu $3, $3
andi $2, $3, 2
mflo $3
TAG505:
addiu $3, $3, 8
mflo $3
multu $3, $3
lui $4, 1
TAG506:
divu $4, $4
sll $0, $0, 0
divu $4, $4
srav $4, $4, $4
TAG507:
sll $0, $0, 0
beq $3, $4, TAG508
mtlo $3
mthi $4
TAG508:
addu $3, $3, $3
sw $3, 0($3)
sh $3, 0($3)
mtlo $3
TAG509:
lb $2, 0($3)
mfhi $2
sll $0, $0, 0
blez $3, TAG510
TAG510:
mflo $3
mflo $1
sltiu $1, $1, 9
lui $4, 6
TAG511:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG512
mthi $4
TAG512:
mthi $4
divu $4, $4
lui $2, 0
sh $2, 0($2)
TAG513:
sub $2, $2, $2
bltz $2, TAG514
sll $3, $2, 14
sll $1, $2, 15
TAG514:
bgez $1, TAG515
lui $2, 7
lb $4, 0($2)
mult $2, $2
TAG515:
slt $1, $4, $4
blez $1, TAG516
mult $4, $1
lhu $2, 0($4)
TAG516:
bltz $2, TAG517
mtlo $2
addu $4, $2, $2
bgtz $4, TAG517
TAG517:
lui $2, 9
mfhi $4
xor $3, $4, $4
bgtz $2, TAG518
TAG518:
lui $3, 15
ori $1, $3, 0
bltz $1, TAG519
sll $0, $0, 0
TAG519:
divu $2, $2
lui $3, 1
lui $4, 12
lui $1, 2
TAG520:
lui $2, 10
bgtz $2, TAG521
sll $0, $0, 0
divu $1, $1
TAG521:
bne $1, $1, TAG522
mflo $3
div $1, $3
lbu $3, 0($3)
TAG522:
mthi $3
beq $3, $3, TAG523
sw $3, 0($3)
add $3, $3, $3
TAG523:
lbu $4, 0($3)
lui $4, 6
slti $2, $4, 5
divu $4, $4
TAG524:
mtlo $2
bgez $2, TAG525
srav $3, $2, $2
bne $2, $3, TAG525
TAG525:
mult $3, $3
beq $3, $3, TAG526
multu $3, $3
bne $3, $3, TAG526
TAG526:
lui $3, 5
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG527
TAG527:
mthi $3
sll $0, $0, 0
and $3, $3, $3
bgez $3, TAG528
TAG528:
sll $0, $0, 0
lui $1, 4
sll $0, $0, 0
mult $3, $1
TAG529:
blez $1, TAG530
sll $0, $0, 0
lui $1, 13
mult $1, $1
TAG530:
sll $3, $1, 5
bgtz $1, TAG531
sll $0, $0, 0
mtlo $3
TAG531:
beq $3, $3, TAG532
lui $1, 14
bgez $1, TAG532
andi $4, $3, 0
TAG532:
mtlo $4
bne $4, $4, TAG533
xor $3, $4, $4
sll $0, $0, 0
TAG533:
mthi $2
sw $2, 0($2)
mult $2, $2
blez $2, TAG534
TAG534:
slt $1, $2, $2
lw $2, 0($2)
lhu $1, 0($2)
bgtz $2, TAG535
TAG535:
add $3, $1, $1
sb $1, 0($1)
mult $3, $3
sw $1, 0($1)
TAG536:
mtlo $3
sltiu $4, $3, 0
mtlo $3
sltiu $2, $4, 4
TAG537:
slt $1, $2, $2
mult $2, $1
mult $2, $2
mult $1, $1
TAG538:
mtlo $1
mfhi $2
subu $3, $2, $2
mfhi $3
TAG539:
sb $3, 0($3)
slti $4, $3, 5
mult $4, $4
mtlo $3
TAG540:
bne $4, $4, TAG541
subu $1, $4, $4
bltz $1, TAG541
sb $4, 0($1)
TAG541:
bgez $1, TAG542
ori $4, $1, 7
bne $1, $4, TAG542
divu $1, $1
TAG542:
mthi $4
lui $3, 3
lb $3, 0($4)
bne $4, $3, TAG543
TAG543:
srl $2, $3, 1
mflo $2
mflo $1
lbu $3, 0($3)
TAG544:
lbu $3, 0($3)
sltu $1, $3, $3
bltz $3, TAG545
multu $3, $3
TAG545:
andi $3, $1, 13
mtlo $3
mflo $2
mtlo $2
TAG546:
mtlo $2
lw $1, 0($2)
beq $1, $2, TAG547
srlv $1, $2, $2
TAG547:
bne $1, $1, TAG548
multu $1, $1
addiu $1, $1, 7
sra $1, $1, 4
TAG548:
lb $1, 0($1)
lbu $2, 0($1)
sw $2, 0($2)
slti $4, $1, 1
TAG549:
sra $3, $4, 4
slt $4, $4, $3
bltz $4, TAG550
addi $3, $3, 14
TAG550:
lui $2, 5
bne $3, $3, TAG551
lui $4, 0
slti $1, $4, 13
TAG551:
lui $3, 1
beq $1, $3, TAG552
mtlo $3
lui $2, 10
TAG552:
sll $0, $0, 0
addiu $3, $2, 12
subu $1, $2, $2
bne $1, $1, TAG553
TAG553:
addiu $1, $1, 8
bltz $1, TAG554
sb $1, 0($1)
lui $2, 9
TAG554:
mtlo $2
mflo $1
mflo $4
sltiu $3, $1, 0
TAG555:
mtlo $3
lui $2, 2
mtlo $3
sb $2, 0($3)
TAG556:
mfhi $2
lui $1, 8
and $1, $2, $2
bne $2, $2, TAG557
TAG557:
multu $1, $1
lw $3, 0($1)
mthi $3
sh $3, 0($1)
TAG558:
bne $3, $3, TAG559
lui $1, 8
beq $1, $1, TAG559
andi $4, $3, 15
TAG559:
beq $4, $4, TAG560
lui $3, 9
bne $4, $3, TAG560
xor $3, $4, $3
TAG560:
addiu $3, $3, 14
sll $0, $0, 0
lui $3, 11
lui $2, 8
TAG561:
sll $0, $0, 0
sll $0, $0, 0
divu $2, $1
mult $1, $1
TAG562:
multu $1, $1
sll $0, $0, 0
xor $4, $1, $1
andi $2, $4, 0
TAG563:
addi $4, $2, 6
mflo $2
mfhi $3
lui $3, 1
TAG564:
bgez $3, TAG565
mult $3, $3
mtlo $3
lui $4, 14
TAG565:
sllv $2, $4, $4
mflo $3
mfhi $2
sb $3, 0($3)
TAG566:
blez $2, TAG567
srav $4, $2, $2
bne $4, $2, TAG567
div $4, $2
TAG567:
blez $4, TAG568
nor $1, $4, $4
bgtz $4, TAG568
lui $3, 13
TAG568:
mult $3, $3
bne $3, $3, TAG569
and $1, $3, $3
slt $1, $3, $1
TAG569:
addiu $3, $1, 13
mflo $4
sh $3, 0($4)
lui $4, 2
TAG570:
sll $0, $0, 0
sll $0, $0, 0
sub $3, $3, $1
bltz $4, TAG571
TAG571:
lb $3, 0($3)
bne $3, $3, TAG572
addiu $4, $3, 10
bne $3, $4, TAG572
TAG572:
addiu $4, $4, 0
sh $4, 0($4)
mfhi $4
mtlo $4
TAG573:
sb $4, 0($4)
sh $4, 0($4)
lui $3, 9
sltu $4, $3, $4
TAG574:
bne $4, $4, TAG575
lb $1, 0($4)
mfhi $4
mtlo $1
TAG575:
lui $4, 1
bgez $4, TAG576
lui $1, 10
div $4, $4
TAG576:
bgtz $1, TAG577
xor $2, $1, $1
sw $2, 0($2)
bgez $2, TAG577
TAG577:
multu $2, $2
lui $3, 12
sll $0, $0, 0
srl $3, $3, 15
TAG578:
bgtz $3, TAG579
multu $3, $3
div $3, $3
lui $1, 9
TAG579:
bne $1, $1, TAG580
sll $0, $0, 0
lui $4, 8
subu $1, $4, $1
TAG580:
mtlo $1
mtlo $1
sll $0, $0, 0
addu $1, $1, $1
TAG581:
xori $3, $1, 5
mthi $1
blez $3, TAG582
sll $0, $0, 0
TAG582:
mflo $1
divu $1, $3
lui $1, 8
mfhi $3
TAG583:
mflo $3
blez $3, TAG584
mflo $3
beq $3, $3, TAG584
TAG584:
sltiu $1, $3, 10
sllv $3, $3, $3
beq $1, $1, TAG585
mult $3, $3
TAG585:
bgez $3, TAG586
lhu $2, 0($3)
addi $2, $2, 4
lw $1, 0($3)
TAG586:
mflo $4
mfhi $3
lb $4, 0($4)
beq $1, $3, TAG587
TAG587:
lui $1, 6
sb $1, 0($4)
srl $3, $1, 1
sll $0, $0, 0
TAG588:
sll $0, $0, 0
bltz $3, TAG589
lui $2, 6
mflo $2
TAG589:
bne $2, $2, TAG590
sb $2, 0($2)
sw $2, 0($2)
mfhi $3
TAG590:
mult $3, $3
lui $2, 7
bne $2, $3, TAG591
multu $2, $2
TAG591:
sll $0, $0, 0
beq $2, $2, TAG592
mfhi $1
lui $3, 8
TAG592:
blez $3, TAG593
mult $3, $3
mtlo $3
addiu $1, $3, 13
TAG593:
beq $1, $1, TAG594
lb $3, 0($1)
mult $3, $1
addi $3, $1, 4
TAG594:
lw $4, 0($3)
lui $4, 14
sll $0, $0, 0
mthi $3
TAG595:
lw $1, 0($3)
bgtz $1, TAG596
lb $2, 0($1)
lbu $2, 0($1)
TAG596:
bgez $2, TAG597
multu $2, $2
beq $2, $2, TAG597
andi $4, $2, 4
TAG597:
bne $4, $4, TAG598
srl $2, $4, 5
mtlo $2
lui $2, 3
TAG598:
bgez $2, TAG599
sll $0, $0, 0
mflo $3
sb $3, 0($3)
TAG599:
ori $1, $3, 13
subu $1, $3, $3
nor $2, $1, $1
bgez $1, TAG600
TAG600:
mfhi $1
lw $2, 0($1)
sw $2, 0($2)
lb $1, 0($1)
TAG601:
mthi $1
mflo $1
sb $1, -28672($1)
multu $1, $1
TAG602:
beq $1, $1, TAG603
mthi $1
divu $1, $1
mflo $2
TAG603:
srlv $4, $2, $2
lui $4, 12
sll $0, $0, 0
mtlo $4
TAG604:
beq $4, $4, TAG605
mflo $3
lui $1, 6
beq $3, $3, TAG605
TAG605:
srl $1, $1, 1
lb $1, -14336($1)
mtlo $1
addi $1, $1, 12
TAG606:
mfhi $4
mthi $1
lui $2, 11
bne $2, $4, TAG607
TAG607:
or $2, $2, $2
mult $2, $2
srl $1, $2, 8
div $1, $1
TAG608:
blez $1, TAG609
addiu $2, $1, 0
mflo $2
sltu $2, $2, $2
TAG609:
mult $2, $2
multu $2, $2
mult $2, $2
lb $3, 0($2)
TAG610:
lb $2, 0($3)
sw $2, 0($3)
lh $3, 0($2)
sb $2, 0($3)
TAG611:
lui $2, 12
mthi $2
lui $4, 2
sw $3, 0($3)
TAG612:
lui $3, 9
lui $4, 6
lui $1, 3
beq $4, $3, TAG613
TAG613:
lui $4, 14
multu $1, $4
mthi $4
sllv $3, $4, $4
TAG614:
beq $3, $3, TAG615
lui $3, 6
mthi $3
mthi $3
TAG615:
srlv $3, $3, $3
mfhi $1
beq $3, $1, TAG616
mthi $3
TAG616:
bne $1, $1, TAG617
mfhi $3
mtlo $3
multu $1, $1
TAG617:
lui $2, 2
xor $3, $2, $3
xor $2, $2, $3
bgez $3, TAG618
TAG618:
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG619
sll $0, $0, 0
TAG619:
mtlo $3
subu $2, $3, $3
sll $0, $0, 0
multu $3, $2
TAG620:
bgtz $2, TAG621
add $3, $2, $2
mflo $2
addu $4, $3, $2
TAG621:
and $3, $4, $4
sb $4, 0($3)
blez $4, TAG622
sll $4, $4, 7
TAG622:
mfhi $4
mflo $3
mfhi $2
sh $4, 0($3)
TAG623:
mfhi $1
or $2, $1, $2
bltz $2, TAG624
slt $2, $2, $2
TAG624:
mflo $3
bne $3, $3, TAG625
lb $3, 0($2)
multu $3, $3
TAG625:
lbu $2, 0($3)
lbu $1, 0($2)
beq $3, $2, TAG626
slti $4, $3, 9
TAG626:
lbu $4, 0($4)
srl $3, $4, 3
mthi $4
lui $1, 3
TAG627:
srav $4, $1, $1
mtlo $1
divu $1, $1
sltu $3, $4, $4
TAG628:
srl $2, $3, 11
sh $2, 0($2)
mthi $2
mthi $3
TAG629:
mtlo $2
sh $2, 0($2)
lui $1, 9
bltz $1, TAG630
TAG630:
mfhi $4
sll $3, $4, 3
lui $2, 15
mtlo $1
TAG631:
mtlo $2
or $3, $2, $2
lui $1, 5
bgtz $2, TAG632
TAG632:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
mfhi $2
TAG633:
bne $2, $2, TAG634
sub $1, $2, $2
lh $4, 0($1)
lh $2, 0($2)
TAG634:
addi $4, $2, 5
divu $4, $4
mult $4, $4
lui $1, 6
TAG635:
sll $0, $0, 0
or $1, $1, $1
addiu $1, $1, 13
lui $3, 4
TAG636:
divu $3, $3
lui $3, 8
mfhi $3
lui $2, 13
TAG637:
mfhi $3
mfhi $2
subu $2, $2, $2
mtlo $2
TAG638:
xori $1, $2, 11
mthi $1
mfhi $4
div $2, $4
TAG639:
bne $4, $4, TAG640
xori $2, $4, 1
beq $2, $2, TAG640
and $3, $2, $4
TAG640:
bgez $3, TAG641
mthi $3
xori $1, $3, 1
bne $3, $1, TAG641
TAG641:
slt $4, $1, $1
mult $1, $4
mtlo $1
lb $1, 0($1)
TAG642:
sub $4, $1, $1
mthi $1
mthi $1
bltz $4, TAG643
TAG643:
sw $4, 0($4)
srlv $3, $4, $4
blez $4, TAG644
multu $3, $4
TAG644:
bgtz $3, TAG645
sb $3, 0($3)
bne $3, $3, TAG645
mfhi $4
TAG645:
sb $4, 0($4)
subu $4, $4, $4
mfhi $4
multu $4, $4
TAG646:
lui $2, 0
xori $2, $2, 10
mult $2, $2
nor $1, $4, $2
TAG647:
div $1, $1
mthi $1
bgtz $1, TAG648
lui $2, 14
TAG648:
bgtz $2, TAG649
mflo $3
bgtz $3, TAG649
divu $2, $2
TAG649:
addu $1, $3, $3
mfhi $1
bne $1, $1, TAG650
lw $4, 11($1)
TAG650:
mfhi $3
xor $4, $4, $4
blez $4, TAG651
mult $3, $3
TAG651:
mfhi $1
sh $1, 0($4)
mfhi $1
lui $2, 11
TAG652:
divu $2, $2
divu $2, $2
sll $0, $0, 0
lb $1, 0($4)
TAG653:
multu $1, $1
multu $1, $1
sub $3, $1, $1
lui $2, 4
TAG654:
mflo $1
bgez $1, TAG655
mfhi $3
sh $1, 0($2)
TAG655:
lbu $1, 0($3)
multu $3, $3
sb $3, 0($3)
blez $1, TAG656
TAG656:
multu $1, $1
beq $1, $1, TAG657
lw $4, 0($1)
divu $4, $4
TAG657:
mfhi $3
bne $3, $3, TAG658
lui $1, 11
sh $4, 0($3)
TAG658:
sll $0, $0, 0
beq $3, $1, TAG659
sll $0, $0, 0
lb $2, 0($3)
TAG659:
multu $2, $2
mult $2, $2
mult $2, $2
sra $2, $2, 14
TAG660:
bne $2, $2, TAG661
sltiu $2, $2, 0
bltz $2, TAG661
mfhi $3
TAG661:
lui $4, 11
sra $3, $3, 2
lui $3, 4
bgtz $3, TAG662
TAG662:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG663:
or $4, $2, $2
sllv $2, $4, $2
sll $0, $0, 0
mtlo $4
TAG664:
beq $2, $2, TAG665
sll $0, $0, 0
beq $2, $2, TAG665
sb $2, 0($2)
TAG665:
multu $2, $2
sll $0, $0, 0
lb $4, 0($4)
sw $2, 0($4)
TAG666:
bgez $4, TAG667
subu $4, $4, $4
mtlo $4
mthi $4
TAG667:
sb $4, 0($4)
mthi $4
beq $4, $4, TAG668
lw $3, 0($4)
TAG668:
mthi $3
lw $2, 0($3)
andi $3, $2, 4
mtlo $3
TAG669:
sb $3, 0($3)
lui $2, 15
multu $2, $3
beq $2, $2, TAG670
TAG670:
sltiu $4, $2, 9
bne $2, $2, TAG671
lui $1, 8
srav $1, $2, $4
TAG671:
sll $0, $0, 0
mthi $1
mfhi $3
div $1, $3
TAG672:
mtlo $3
mtlo $3
mtlo $3
mthi $3
TAG673:
sll $0, $0, 0
sllv $1, $3, $3
lui $2, 14
multu $3, $2
TAG674:
mflo $4
lui $3, 10
bgez $4, TAG675
sll $0, $0, 0
TAG675:
sll $0, $0, 0
slt $2, $3, $3
mtlo $2
divu $2, $3
TAG676:
sll $3, $2, 11
mult $2, $3
xori $4, $2, 11
sb $2, 0($4)
TAG677:
mtlo $4
lui $4, 14
mfhi $2
mult $2, $2
TAG678:
lui $4, 15
ori $2, $4, 11
lui $2, 5
sll $0, $0, 0
TAG679:
and $1, $4, $4
multu $1, $4
beq $4, $4, TAG680
mflo $3
TAG680:
mult $3, $3
mthi $3
lbu $4, 0($3)
mthi $4
TAG681:
lbu $3, 0($4)
lui $3, 12
bgez $3, TAG682
sll $0, $0, 0
TAG682:
blez $3, TAG683
divu $3, $3
multu $3, $3
blez $3, TAG683
TAG683:
mfhi $4
bltz $4, TAG684
andi $2, $3, 15
mtlo $2
TAG684:
subu $2, $2, $2
mthi $2
mthi $2
lui $1, 11
TAG685:
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $1, 8
sltiu $2, $1, 8
TAG686:
mfhi $3
addiu $4, $3, 6
mfhi $2
lui $3, 13
TAG687:
bne $3, $3, TAG688
lui $3, 0
bgtz $3, TAG688
multu $3, $3
TAG688:
blez $3, TAG689
mflo $3
mtlo $3
mfhi $2
TAG689:
mtlo $2
lui $2, 12
blez $2, TAG690
sll $0, $0, 0
TAG690:
lui $4, 9
multu $4, $4
sll $0, $0, 0
blez $2, TAG691
TAG691:
sll $0, $0, 0
mtlo $1
bgez $1, TAG692
multu $1, $1
TAG692:
bgez $1, TAG693
xori $4, $1, 15
bgez $1, TAG693
mtlo $4
TAG693:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $2, TAG694
sll $0, $0, 0
TAG694:
subu $4, $2, $2
mult $4, $4
multu $2, $4
mflo $2
TAG695:
sw $2, 0($2)
lui $1, 14
bne $1, $2, TAG696
divu $2, $1
TAG696:
lui $4, 9
blez $4, TAG697
sll $3, $4, 2
divu $4, $1
TAG697:
lui $3, 9
srlv $3, $3, $3
addiu $4, $3, 8
sll $0, $0, 0
TAG698:
or $2, $4, $4
sll $0, $0, 0
addiu $1, $3, 13
mtlo $1
TAG699:
sll $0, $0, 0
lui $2, 14
bgez $1, TAG700
sll $0, $0, 0
TAG700:
sllv $1, $4, $4
div $1, $4
beq $4, $4, TAG701
sll $4, $4, 9
TAG701:
mthi $4
mthi $4
sll $0, $0, 0
mtlo $4
TAG702:
lui $1, 3
lui $2, 7
sll $0, $0, 0
bne $1, $1, TAG703
TAG703:
sll $0, $0, 0
lui $4, 6
bne $4, $4, TAG704
mtlo $4
TAG704:
sll $4, $4, 1
mthi $4
sll $2, $4, 11
bgez $4, TAG705
TAG705:
lui $2, 5
sll $0, $0, 0
bgtz $2, TAG706
addu $1, $2, $2
TAG706:
addiu $4, $1, 14
lui $1, 6
div $1, $1
div $4, $4
TAG707:
xori $2, $1, 6
addiu $1, $1, 3
bgez $2, TAG708
sll $3, $2, 5
TAG708:
beq $3, $3, TAG709
sll $0, $0, 0
mflo $1
div $3, $3
TAG709:
lui $1, 6
div $1, $1
lui $2, 15
sll $0, $0, 0
TAG710:
bne $2, $2, TAG711
mtlo $2
xor $4, $2, $2
sll $0, $0, 0
TAG711:
mult $4, $4
mthi $4
sb $4, 0($4)
lui $1, 4
TAG712:
or $3, $1, $1
sltiu $3, $3, 15
sll $0, $0, 0
srav $3, $3, $3
TAG713:
andi $1, $3, 12
sh $1, 0($3)
ori $3, $3, 5
sb $3, 0($3)
TAG714:
lui $2, 8
sb $2, 0($3)
bltz $2, TAG715
sll $3, $3, 11
TAG715:
subu $3, $3, $3
lui $4, 14
bltz $3, TAG716
sh $3, 0($3)
TAG716:
mflo $4
and $2, $4, $4
mult $4, $2
mfhi $4
TAG717:
mflo $3
nor $2, $4, $4
mthi $2
mtlo $3
TAG718:
sll $0, $0, 0
mflo $2
mtlo $3
mtlo $2
TAG719:
lb $4, 0($2)
sh $4, 0($4)
lui $4, 11
sh $4, 0($2)
TAG720:
srl $4, $4, 13
bgez $4, TAG721
lh $3, 0($4)
lui $2, 8
TAG721:
bgtz $2, TAG722
mflo $3
sll $4, $2, 0
beq $2, $2, TAG722
TAG722:
sw $4, 0($4)
lw $3, 0($4)
addiu $3, $4, 1
divu $4, $3
TAG723:
sltiu $1, $3, 0
bgez $3, TAG724
multu $1, $3
bne $3, $3, TAG724
TAG724:
lui $2, 5
mthi $1
mfhi $4
mthi $4
TAG725:
mthi $4
bltz $4, TAG726
mult $4, $4
sltu $3, $4, $4
TAG726:
slt $1, $3, $3
sw $3, 0($1)
mthi $1
mthi $1
TAG727:
lui $4, 4
lui $1, 8
lui $4, 13
sllv $1, $4, $1
TAG728:
sll $0, $0, 0
lui $3, 1
mthi $1
xori $4, $1, 7
TAG729:
lui $3, 6
sll $0, $0, 0
sll $4, $4, 15
mfhi $3
TAG730:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
bne $3, $3, TAG731
TAG731:
sltu $3, $3, $3
beq $3, $3, TAG732
lh $1, 0($3)
bltz $3, TAG732
TAG732:
sh $1, 0($1)
mflo $1
lui $3, 14
bne $3, $1, TAG733
TAG733:
div $3, $3
addu $4, $3, $3
divu $4, $4
nor $3, $4, $3
TAG734:
mtlo $3
lui $1, 7
bgtz $1, TAG735
mthi $3
TAG735:
sll $0, $0, 0
div $1, $1
mult $2, $1
bltz $1, TAG736
TAG736:
addiu $1, $2, 11
sllv $4, $1, $1
beq $4, $1, TAG737
srlv $2, $2, $2
TAG737:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
sltiu $2, $2, 7
TAG738:
and $4, $2, $2
mfhi $3
lhu $2, 0($2)
lh $4, 0($2)
TAG739:
bltz $4, TAG740
sub $3, $4, $4
mtlo $4
mflo $2
TAG740:
bne $2, $2, TAG741
mfhi $3
bne $3, $3, TAG741
mfhi $3
TAG741:
lbu $4, 0($3)
andi $2, $4, 2
lui $3, 10
lui $3, 2
TAG742:
bltz $3, TAG743
subu $1, $3, $3
lui $1, 5
addiu $3, $1, 4
TAG743:
mthi $3
divu $3, $3
mflo $2
nor $2, $3, $3
TAG744:
mfhi $4
mthi $4
or $1, $2, $2
mfhi $2
TAG745:
lhu $1, 0($2)
multu $2, $1
mthi $2
multu $1, $2
TAG746:
lbu $3, 0($1)
mtlo $3
sllv $2, $1, $1
bne $1, $1, TAG747
TAG747:
addiu $3, $2, 4
multu $2, $2
bgez $2, TAG748
multu $3, $3
TAG748:
lbu $3, 0($3)
sb $3, 0($3)
div $3, $3
lui $3, 9
TAG749:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
slt $1, $3, $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop