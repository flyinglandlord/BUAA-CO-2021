ori $1, $0, 0
ori $2, $0, 8
ori $3, $0, 14
ori $4, $0, 7
sw $3, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $1, 12($0)
sw $2, 16($0)
sw $1, 20($0)
sw $3, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $3, 36($0)
sw $3, 40($0)
sw $3, 44($0)
sw $4, 48($0)
sw $3, 52($0)
sw $2, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $1, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $2, 116($0)
sw $3, 120($0)
sw $1, 124($0)
mflo $1
mthi $2
mult $1, $1
slti $3, $2, 10
TAG1:
multu $3, $3
bgez $3, TAG2
mtlo $3
beq $3, $3, TAG2
TAG2:
mtlo $3
lb $3, 0($3)
lui $4, 9
mult $4, $3
TAG3:
bltz $4, TAG4
sll $0, $0, 0
bgez $4, TAG4
sll $0, $0, 0
TAG4:
mthi $4
mfhi $1
beq $1, $4, TAG5
mthi $1
TAG5:
sltiu $3, $1, 11
bltz $1, TAG6
sll $0, $0, 0
sb $3, 0($3)
TAG6:
mtlo $3
bltz $3, TAG7
xori $4, $3, 10
lh $2, 0($3)
TAG7:
multu $2, $2
bgtz $2, TAG8
andi $4, $2, 4
mthi $2
TAG8:
mfhi $4
mfhi $1
lui $3, 5
sll $0, $0, 0
TAG9:
sub $3, $4, $4
multu $4, $3
mfhi $1
bne $4, $3, TAG10
TAG10:
lbu $2, 0($1)
mthi $1
mult $1, $1
subu $3, $1, $2
TAG11:
sh $3, 0($3)
lui $4, 15
sll $0, $0, 0
lui $1, 15
TAG12:
divu $1, $1
sltu $1, $1, $1
blez $1, TAG13
lui $3, 4
TAG13:
bltz $3, TAG14
mfhi $2
mflo $4
multu $3, $2
TAG14:
lui $4, 4
multu $4, $4
sll $0, $0, 0
bne $4, $4, TAG15
TAG15:
sltiu $3, $4, 8
sllv $4, $4, $3
lhu $4, 0($3)
lhu $4, 0($3)
TAG16:
sw $4, 0($4)
sh $4, 0($4)
mflo $4
lh $2, 0($4)
TAG17:
lui $4, 13
lh $2, 0($2)
mflo $4
addiu $4, $4, 1
TAG18:
divu $4, $4
mult $4, $4
sb $4, 0($4)
lb $2, 0($4)
TAG19:
srav $1, $2, $2
mflo $2
beq $2, $2, TAG20
mfhi $3
TAG20:
sub $4, $3, $3
mult $4, $4
mult $3, $4
bgez $4, TAG21
TAG21:
lui $4, 11
lui $4, 15
sll $0, $0, 0
or $2, $4, $4
TAG22:
sll $0, $0, 0
lui $2, 1
sltu $3, $2, $2
multu $2, $3
TAG23:
lui $1, 6
bltz $3, TAG24
ori $4, $3, 2
lui $3, 10
TAG24:
sll $0, $0, 0
mfhi $3
bgez $3, TAG25
sh $3, 0($3)
TAG25:
lw $4, 0($3)
mflo $2
mtlo $4
mult $4, $2
TAG26:
lw $2, 0($2)
beq $2, $2, TAG27
sra $2, $2, 7
mflo $3
TAG27:
multu $3, $3
sb $3, 0($3)
multu $3, $3
beq $3, $3, TAG28
TAG28:
slti $3, $3, 9
lbu $2, 0($3)
div $3, $3
sb $3, 0($3)
TAG29:
mthi $2
beq $2, $2, TAG30
mfhi $3
mthi $3
TAG30:
blez $3, TAG31
mfhi $4
bgtz $4, TAG31
mthi $4
TAG31:
mtlo $4
mtlo $4
blez $4, TAG32
sh $4, 0($4)
TAG32:
multu $4, $4
mtlo $4
sb $4, 0($4)
subu $2, $4, $4
TAG33:
mthi $2
mthi $2
lui $2, 5
mthi $2
TAG34:
multu $2, $2
lui $4, 3
slt $2, $2, $2
mult $4, $2
TAG35:
bgez $2, TAG36
lui $4, 11
lhu $3, 0($2)
bne $4, $2, TAG36
TAG36:
lui $2, 8
sll $0, $0, 0
mthi $3
lui $1, 12
TAG37:
mfhi $1
xor $3, $1, $1
mflo $2
mflo $3
TAG38:
addu $2, $3, $3
srl $2, $2, 15
lh $4, 0($3)
bgez $4, TAG39
TAG39:
lui $3, 12
lui $4, 0
multu $4, $4
lui $1, 5
TAG40:
sltu $3, $1, $1
bltz $1, TAG41
lui $2, 2
sll $0, $0, 0
TAG41:
addu $4, $2, $2
srav $4, $2, $4
sll $0, $0, 0
mtlo $2
TAG42:
sra $4, $1, 13
lui $4, 9
mult $4, $1
mflo $3
TAG43:
bgtz $3, TAG44
lui $3, 9
lui $2, 14
mflo $2
TAG44:
multu $2, $2
slti $3, $2, 0
lui $1, 10
xor $1, $3, $2
TAG45:
mthi $1
mflo $4
mfhi $3
sltiu $4, $1, 9
TAG46:
mfhi $2
div $4, $4
multu $4, $2
mtlo $4
TAG47:
lui $4, 9
divu $2, $4
blez $2, TAG48
sll $0, $0, 0
TAG48:
mflo $4
mthi $2
sb $2, 0($4)
xor $1, $4, $4
TAG49:
bgtz $1, TAG50
lh $3, 0($1)
bne $1, $1, TAG50
and $1, $3, $3
TAG50:
lui $2, 15
mult $2, $2
lh $2, 0($1)
sw $2, 0($1)
TAG51:
mfhi $2
beq $2, $2, TAG52
mflo $1
bltz $2, TAG52
TAG52:
multu $1, $1
sw $1, 0($1)
bgez $1, TAG53
multu $1, $1
TAG53:
mult $1, $1
andi $2, $1, 5
nor $3, $2, $2
beq $2, $3, TAG54
TAG54:
sw $3, 1($3)
slti $4, $3, 11
beq $4, $3, TAG55
mthi $3
TAG55:
andi $4, $4, 10
lh $3, 0($4)
bne $3, $4, TAG56
lbu $3, 1($3)
TAG56:
div $3, $3
mthi $3
sb $3, -255($3)
sh $3, -255($3)
TAG57:
mflo $2
lui $1, 9
mtlo $2
sb $3, 0($2)
TAG58:
srl $2, $1, 11
mflo $3
blez $1, TAG59
sh $3, -288($2)
TAG59:
lui $4, 3
mfhi $3
bne $3, $3, TAG60
sll $0, $0, 0
TAG60:
mult $3, $3
lui $2, 0
multu $2, $3
beq $3, $3, TAG61
TAG61:
mthi $2
mthi $2
addi $3, $2, 7
mfhi $4
TAG62:
mfhi $1
or $3, $1, $4
lbu $2, 0($4)
srl $1, $3, 8
TAG63:
srlv $3, $1, $1
lui $2, 5
bgtz $1, TAG64
lui $2, 3
TAG64:
sll $0, $0, 0
andi $1, $2, 5
subu $2, $2, $1
mflo $4
TAG65:
blez $4, TAG66
srav $4, $4, $4
bne $4, $4, TAG66
mflo $3
TAG66:
bne $3, $3, TAG67
ori $2, $3, 7
beq $2, $3, TAG67
xori $2, $2, 3
TAG67:
bgez $2, TAG68
mthi $2
blez $2, TAG68
sb $2, 0($2)
TAG68:
sra $1, $2, 14
srlv $3, $2, $1
ori $4, $2, 15
mtlo $4
TAG69:
multu $4, $4
sb $4, 0($4)
subu $2, $4, $4
mflo $1
TAG70:
sll $0, $0, 0
blez $1, TAG71
lui $2, 11
subu $1, $4, $2
TAG71:
slti $1, $1, 9
bgez $1, TAG72
div $1, $1
subu $3, $1, $1
TAG72:
lhu $2, 0($3)
addiu $4, $2, 3
lb $1, 0($3)
mthi $3
TAG73:
lb $2, 0($1)
beq $2, $2, TAG74
xor $2, $2, $2
beq $2, $2, TAG74
TAG74:
lui $3, 1
lui $3, 9
mult $3, $2
mult $2, $2
TAG75:
lui $3, 15
sll $0, $0, 0
mflo $4
addiu $3, $3, 6
TAG76:
mfhi $4
lui $1, 13
bltz $4, TAG77
sub $1, $1, $4
TAG77:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG78
sll $0, $0, 0
TAG78:
sb $4, 0($4)
lui $2, 4
bltz $2, TAG79
mthi $2
TAG79:
srav $2, $2, $2
lui $4, 4
sll $3, $2, 2
multu $3, $2
TAG80:
lui $3, 12
xori $3, $3, 0
mflo $2
lui $4, 13
TAG81:
mtlo $4
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG82
TAG82:
sra $2, $4, 8
mfhi $2
divu $4, $4
beq $2, $2, TAG83
TAG83:
sh $2, 0($2)
lui $2, 7
mflo $3
addu $3, $2, $2
TAG84:
bne $3, $3, TAG85
srlv $1, $3, $3
subu $4, $3, $1
subu $3, $4, $1
TAG85:
sll $0, $0, 0
beq $3, $3, TAG86
ori $3, $3, 12
sw $3, 0($3)
TAG86:
mtlo $3
sll $1, $3, 8
sll $0, $0, 0
beq $3, $1, TAG87
TAG87:
mfhi $3
beq $1, $3, TAG88
sll $0, $0, 0
bgez $1, TAG88
TAG88:
lui $1, 10
bne $1, $1, TAG89
mfhi $4
lui $2, 14
TAG89:
addiu $2, $2, 3
andi $1, $2, 8
sltiu $4, $2, 3
sll $0, $0, 0
TAG90:
sw $4, 0($4)
lh $2, 0($4)
slti $1, $4, 15
lhu $4, 0($2)
TAG91:
mult $4, $4
mtlo $4
mthi $4
lui $2, 8
TAG92:
xor $4, $2, $2
mthi $2
xori $1, $2, 13
sll $0, $0, 0
TAG93:
lui $1, 3
beq $1, $1, TAG94
lui $1, 6
lw $2, 0($1)
TAG94:
sll $0, $0, 0
beq $2, $2, TAG95
multu $2, $2
mfhi $2
TAG95:
mtlo $2
lui $1, 3
blez $1, TAG96
sll $0, $0, 0
TAG96:
mflo $2
sb $2, 0($3)
mflo $4
lui $3, 14
TAG97:
mfhi $3
sb $3, 0($3)
mtlo $3
mthi $3
TAG98:
blez $3, TAG99
multu $3, $3
lhu $1, 0($3)
mflo $2
TAG99:
mtlo $2
bne $2, $2, TAG100
mtlo $2
bne $2, $2, TAG100
TAG100:
lui $4, 14
bltz $4, TAG101
mflo $3
bgtz $3, TAG101
TAG101:
addiu $1, $3, 13
div $1, $1
ori $3, $3, 4
beq $3, $3, TAG102
TAG102:
and $2, $3, $3
mtlo $2
bgtz $2, TAG103
mflo $3
TAG103:
srl $2, $3, 5
mflo $1
lbu $4, -4100($1)
bgez $2, TAG104
TAG104:
xori $1, $4, 13
lui $1, 9
ori $2, $1, 10
mflo $4
TAG105:
mthi $4
bgez $4, TAG106
div $4, $4
mthi $4
TAG106:
bne $4, $4, TAG107
ori $2, $4, 14
mult $4, $2
sh $4, -4100($4)
TAG107:
sll $0, $0, 0
lui $2, 0
bne $2, $2, TAG108
mfhi $4
TAG108:
beq $4, $4, TAG109
mflo $1
lb $1, 0($1)
bltz $1, TAG109
TAG109:
mfhi $1
subu $1, $1, $1
mult $1, $1
nor $4, $1, $1
TAG110:
addiu $3, $4, 3
srav $3, $4, $4
lbu $3, 1($3)
sb $3, 0($3)
TAG111:
sw $3, 0($3)
lui $1, 13
lw $2, 0($3)
ori $4, $2, 4
TAG112:
bgtz $4, TAG113
sw $4, 0($4)
sltu $1, $4, $4
andi $2, $1, 1
TAG113:
sltiu $4, $2, 4
lui $3, 1
slti $1, $4, 4
add $1, $4, $2
TAG114:
mthi $1
sllv $2, $1, $1
srl $1, $2, 11
lw $1, 0($2)
TAG115:
div $1, $1
bne $1, $1, TAG116
mthi $1
bgez $1, TAG116
TAG116:
mthi $1
sh $1, 0($1)
and $3, $1, $1
lui $2, 8
TAG117:
mtlo $2
sll $0, $0, 0
mtlo $2
multu $2, $2
TAG118:
sra $3, $2, 7
subu $1, $2, $2
lui $1, 14
sll $0, $0, 0
TAG119:
sll $0, $0, 0
bgez $2, TAG120
mtlo $3
addu $2, $2, $3
TAG120:
mult $2, $2
lui $2, 14
beq $2, $2, TAG121
div $2, $2
TAG121:
mtlo $2
subu $1, $2, $2
mfhi $4
sb $2, 0($1)
TAG122:
lb $4, 0($4)
slt $3, $4, $4
sllv $1, $3, $4
mtlo $4
TAG123:
sh $1, 0($1)
beq $1, $1, TAG124
mflo $3
bltz $1, TAG124
TAG124:
add $4, $3, $3
sw $4, 0($4)
blez $4, TAG125
lui $3, 3
TAG125:
bltz $3, TAG126
mult $3, $3
sll $0, $0, 0
blez $3, TAG126
TAG126:
div $3, $3
multu $3, $3
mfhi $2
mthi $2
TAG127:
sb $2, 0($2)
div $2, $2
lui $3, 3
beq $3, $3, TAG128
TAG128:
divu $3, $3
mthi $3
sll $0, $0, 0
div $3, $3
TAG129:
xor $3, $3, $3
lui $3, 7
bltz $3, TAG130
sll $0, $0, 0
TAG130:
mflo $3
bgtz $3, TAG131
mfhi $1
sw $3, 0($1)
TAG131:
srav $4, $1, $1
lb $1, 0($1)
bgez $1, TAG132
sb $4, 0($1)
TAG132:
mult $1, $1
mflo $1
sw $1, 0($1)
lhu $1, 0($1)
TAG133:
bgez $1, TAG134
lui $4, 2
mfhi $1
add $2, $1, $1
TAG134:
bne $2, $2, TAG135
lui $4, 15
lb $3, 0($2)
mtlo $2
TAG135:
bgez $3, TAG136
mult $3, $3
xori $4, $3, 5
mthi $3
TAG136:
mflo $1
divu $4, $1
mult $1, $1
bne $4, $4, TAG137
TAG137:
mtlo $1
lui $1, 5
sll $0, $0, 0
bne $1, $1, TAG138
TAG138:
lui $4, 12
xor $4, $3, $4
lui $3, 10
bgez $4, TAG139
TAG139:
lui $2, 8
bne $3, $3, TAG140
divu $2, $2
sll $0, $0, 0
TAG140:
sll $0, $0, 0
sra $1, $1, 8
mtlo $1
mtlo $1
TAG141:
sll $0, $0, 0
mthi $1
ori $4, $1, 7
mflo $4
TAG142:
subu $2, $4, $4
lui $3, 6
mflo $2
mult $2, $2
TAG143:
lui $2, 1
mtlo $2
div $2, $2
blez $2, TAG144
TAG144:
sll $4, $2, 10
lui $3, 6
beq $2, $4, TAG145
sltiu $4, $4, 7
TAG145:
mflo $2
xori $3, $4, 10
mflo $2
beq $2, $3, TAG146
TAG146:
sb $2, 0($2)
sb $2, 0($2)
ori $2, $2, 14
lbu $2, 0($2)
TAG147:
ori $4, $2, 10
beq $4, $2, TAG148
divu $4, $4
srl $4, $2, 5
TAG148:
srlv $3, $4, $4
bltz $3, TAG149
mtlo $3
multu $3, $3
TAG149:
bgtz $3, TAG150
mflo $4
sb $4, 0($3)
sh $3, 0($4)
TAG150:
lw $3, 0($4)
bgez $3, TAG151
srlv $1, $4, $3
sb $1, 0($3)
TAG151:
and $1, $1, $1
andi $2, $1, 14
mflo $1
addiu $2, $1, 10
TAG152:
lhu $3, 0($2)
add $1, $3, $3
blez $1, TAG153
lhu $4, 0($3)
TAG153:
lb $4, 0($4)
sllv $4, $4, $4
addu $2, $4, $4
mflo $1
TAG154:
sra $3, $1, 7
lui $4, 13
mfhi $1
mfhi $1
TAG155:
multu $1, $1
lui $4, 3
addi $4, $1, 5
lw $3, 0($1)
TAG156:
mfhi $4
mflo $1
blez $3, TAG157
xori $4, $1, 13
TAG157:
lbu $3, 0($4)
mult $3, $3
lui $2, 6
blez $2, TAG158
TAG158:
lui $3, 2
beq $3, $2, TAG159
div $3, $3
lui $2, 1
TAG159:
sll $0, $0, 0
mfhi $2
beq $2, $2, TAG160
ori $3, $2, 11
TAG160:
addiu $1, $3, 4
lui $4, 3
sll $0, $0, 0
mflo $4
TAG161:
sllv $4, $4, $4
xor $3, $4, $4
sltiu $3, $4, 13
mthi $3
TAG162:
ori $4, $3, 6
mthi $4
or $3, $3, $3
mthi $3
TAG163:
beq $3, $3, TAG164
mtlo $3
andi $3, $3, 6
mfhi $3
TAG164:
beq $3, $3, TAG165
sb $3, 0($3)
bne $3, $3, TAG165
sub $3, $3, $3
TAG165:
mfhi $4
beq $4, $3, TAG166
lbu $2, 0($4)
lbu $3, 0($2)
TAG166:
sb $3, 0($3)
addu $4, $3, $3
blez $3, TAG167
mtlo $4
TAG167:
mtlo $4
addu $3, $4, $4
mthi $4
mtlo $3
TAG168:
beq $3, $3, TAG169
mult $3, $3
divu $3, $3
div $3, $3
TAG169:
sw $3, 0($3)
mthi $3
lh $2, 0($3)
sltiu $1, $2, 10
TAG170:
mfhi $2
mthi $1
sb $1, 0($1)
sb $1, 0($1)
TAG171:
lb $3, 0($2)
sw $3, 0($3)
addu $1, $2, $3
mflo $2
TAG172:
sw $2, 0($2)
beq $2, $2, TAG173
mfhi $2
lhu $2, 0($2)
TAG173:
sllv $1, $2, $2
bltz $2, TAG174
mthi $2
div $1, $2
TAG174:
bgtz $1, TAG175
lh $3, 0($1)
mthi $1
addi $3, $3, 0
TAG175:
lui $4, 1
nor $1, $3, $3
addiu $3, $1, 3
xori $2, $1, 4
TAG176:
bgtz $2, TAG177
div $2, $2
mult $2, $2
lui $1, 13
TAG177:
sll $0, $0, 0
mult $1, $1
div $1, $1
xor $2, $1, $1
TAG178:
lui $3, 9
sll $2, $3, 12
sll $0, $0, 0
lui $3, 11
TAG179:
sll $0, $0, 0
lui $2, 13
lui $2, 10
bne $2, $2, TAG180
TAG180:
div $2, $2
sll $0, $0, 0
mult $2, $2
addiu $3, $3, 1
TAG181:
bne $3, $3, TAG182
sll $0, $0, 0
slt $4, $2, $2
blez $4, TAG182
TAG182:
subu $4, $4, $4
sltiu $3, $4, 3
beq $4, $3, TAG183
addiu $4, $3, 8
TAG183:
sb $4, 0($4)
div $4, $4
divu $4, $4
mult $4, $4
TAG184:
lui $2, 1
addiu $4, $2, 8
sll $0, $0, 0
beq $3, $3, TAG185
TAG185:
mfhi $2
mflo $3
bne $2, $2, TAG186
or $3, $3, $3
TAG186:
mfhi $3
mflo $2
multu $3, $3
nor $3, $3, $3
TAG187:
srl $3, $3, 14
bltz $3, TAG188
div $3, $3
sll $0, $0, 0
TAG188:
sb $2, 0($2)
lui $4, 11
mthi $2
addu $1, $2, $4
TAG189:
lui $4, 14
sll $0, $0, 0
blez $4, TAG190
sll $0, $0, 0
TAG190:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG191:
slt $1, $4, $4
lui $1, 15
mthi $1
mflo $3
TAG192:
sb $3, 0($3)
mthi $3
lui $4, 9
beq $3, $3, TAG193
TAG193:
lui $1, 15
sll $0, $0, 0
lui $1, 7
mthi $1
TAG194:
mthi $1
mthi $1
addu $2, $1, $1
srl $3, $1, 6
TAG195:
mflo $3
bne $3, $3, TAG196
lb $1, 0($3)
xor $4, $3, $3
TAG196:
mthi $4
blez $4, TAG197
mflo $3
bltz $3, TAG197
TAG197:
slti $2, $3, 7
lui $3, 1
bne $3, $3, TAG198
mthi $2
TAG198:
mflo $2
slt $1, $3, $3
bgez $1, TAG199
mfhi $4
TAG199:
bgtz $4, TAG200
multu $4, $4
bne $4, $4, TAG200
lui $4, 14
TAG200:
lui $2, 3
sb $4, 0($4)
multu $4, $2
lui $4, 1
TAG201:
mfhi $1
sll $0, $0, 0
lui $3, 5
bne $1, $3, TAG202
TAG202:
mthi $3
multu $3, $3
bgez $3, TAG203
sll $0, $0, 0
TAG203:
bgez $3, TAG204
lui $1, 5
bltz $3, TAG204
sw $1, 0($3)
TAG204:
bgtz $1, TAG205
addiu $3, $1, 15
addi $4, $1, 1
bne $3, $3, TAG205
TAG205:
sltu $4, $4, $4
mflo $3
bne $4, $4, TAG206
lui $1, 14
TAG206:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $1, TAG207
multu $1, $1
TAG207:
sll $0, $0, 0
ori $2, $4, 2
sw $2, 0($4)
mult $2, $4
TAG208:
lhu $1, 0($2)
mtlo $2
divu $1, $2
bne $1, $1, TAG209
TAG209:
mflo $3
sll $3, $1, 6
mtlo $1
lh $1, 0($3)
TAG210:
srav $4, $1, $1
addiu $3, $1, 3
multu $3, $4
lui $3, 15
TAG211:
sll $0, $0, 0
mflo $2
sw $3, 0($2)
mfhi $3
TAG212:
sw $3, 0($3)
lui $3, 4
lui $3, 0
mflo $2
TAG213:
sub $3, $2, $2
lw $2, 0($3)
mflo $4
bgez $3, TAG214
TAG214:
subu $4, $4, $4
lbu $2, 0($4)
srav $1, $4, $4
beq $1, $1, TAG215
TAG215:
lui $2, 4
bgtz $1, TAG216
sll $0, $0, 0
sra $2, $2, 1
TAG216:
sll $0, $0, 0
mfhi $1
mult $1, $2
mthi $2
TAG217:
add $3, $1, $1
blez $1, TAG218
mult $1, $1
bne $3, $1, TAG218
TAG218:
mthi $3
subu $2, $3, $3
blez $2, TAG219
andi $2, $2, 8
TAG219:
sllv $1, $2, $2
mult $2, $1
lui $4, 10
mfhi $3
TAG220:
sra $3, $3, 13
mfhi $1
sh $3, 0($3)
mfhi $1
TAG221:
multu $1, $1
mtlo $1
mthi $1
sll $3, $1, 1
TAG222:
mthi $3
mult $3, $3
beq $3, $3, TAG223
mfhi $2
TAG223:
mtlo $2
mfhi $1
lui $2, 3
lb $1, 0($1)
TAG224:
slt $3, $1, $1
sra $2, $1, 5
lui $2, 4
mult $3, $2
TAG225:
lui $1, 10
sllv $2, $2, $1
sll $0, $0, 0
subu $3, $1, $2
TAG226:
sll $0, $0, 0
mthi $3
sltiu $1, $3, 12
mthi $1
TAG227:
srav $4, $1, $1
sltu $1, $1, $4
lhu $1, 0($1)
mult $1, $1
TAG228:
lw $1, 0($1)
addi $2, $1, 0
bne $1, $2, TAG229
sw $2, 0($1)
TAG229:
mthi $2
mfhi $4
bne $4, $4, TAG230
sw $4, 0($2)
TAG230:
mtlo $4
sw $4, 0($4)
lbu $4, 0($4)
mflo $4
TAG231:
nor $4, $4, $4
lui $1, 12
lb $4, 1($4)
lui $1, 12
TAG232:
lui $3, 6
divu $3, $1
srlv $1, $3, $1
div $3, $1
TAG233:
addu $3, $1, $1
mthi $3
beq $1, $1, TAG234
srl $4, $1, 8
TAG234:
mfhi $3
lui $3, 6
mflo $2
bne $3, $3, TAG235
TAG235:
lui $3, 6
div $2, $3
sb $2, 0($2)
mfhi $2
TAG236:
lb $2, 0($2)
bne $2, $2, TAG237
sra $1, $2, 5
sb $2, 0($2)
TAG237:
lui $2, 5
mthi $2
mflo $1
bgez $1, TAG238
TAG238:
addi $3, $1, 9
mult $1, $1
lbu $4, 0($3)
mfhi $1
TAG239:
multu $1, $1
sra $1, $1, 5
srlv $4, $1, $1
ori $4, $1, 3
TAG240:
mthi $4
sllv $2, $4, $4
slti $4, $2, 9
lw $4, 0($4)
TAG241:
sra $4, $4, 5
lui $3, 5
lui $1, 2
addiu $3, $4, 2
TAG242:
bltz $3, TAG243
div $3, $3
lui $1, 15
bgtz $3, TAG243
TAG243:
srav $2, $1, $1
srav $2, $1, $2
sll $0, $0, 0
divu $2, $1
TAG244:
blez $1, TAG245
divu $1, $1
sll $0, $0, 0
lui $1, 8
TAG245:
lui $3, 14
addiu $4, $1, 7
lui $4, 7
or $4, $1, $3
TAG246:
beq $4, $4, TAG247
sll $0, $0, 0
mtlo $4
mthi $4
TAG247:
bgtz $4, TAG248
sll $0, $0, 0
div $4, $4
mthi $4
TAG248:
mflo $1
divu $4, $1
sll $0, $0, 0
lbu $3, 0($1)
TAG249:
lb $4, 0($3)
lui $2, 10
bne $2, $4, TAG250
mflo $1
TAG250:
mfhi $3
srl $1, $1, 0
beq $3, $3, TAG251
and $3, $1, $1
TAG251:
slti $2, $3, 12
mthi $2
xor $3, $2, $3
lui $2, 5
TAG252:
div $2, $2
sll $0, $0, 0
xor $3, $2, $2
mflo $1
TAG253:
srl $3, $1, 12
lui $3, 0
lb $4, 0($3)
mult $4, $3
TAG254:
lw $1, 0($4)
lbu $2, 0($4)
sw $4, 0($2)
mthi $1
TAG255:
multu $2, $2
ori $3, $2, 9
divu $3, $3
sw $3, 0($2)
TAG256:
subu $4, $3, $3
bne $4, $4, TAG257
nor $2, $4, $4
bgez $3, TAG257
TAG257:
mthi $2
sh $2, 1($2)
sll $3, $2, 12
mfhi $2
TAG258:
bltz $2, TAG259
mthi $2
sb $2, 0($2)
srl $2, $2, 7
TAG259:
div $2, $2
lui $4, 12
mult $4, $4
mthi $4
TAG260:
mtlo $4
mflo $4
bgtz $4, TAG261
sll $0, $0, 0
TAG261:
multu $1, $1
beq $1, $1, TAG262
multu $1, $1
beq $1, $1, TAG262
TAG262:
multu $1, $1
addu $2, $1, $1
lhu $1, -256($1)
mflo $3
TAG263:
bltz $3, TAG264
mthi $3
multu $3, $3
mtlo $3
TAG264:
mflo $4
lui $1, 2
lui $2, 4
lui $1, 9
TAG265:
subu $3, $1, $1
lui $2, 4
beq $2, $2, TAG266
mult $3, $3
TAG266:
sra $4, $2, 11
sll $0, $0, 0
sll $0, $0, 0
bne $2, $4, TAG267
TAG267:
divu $4, $4
mthi $4
mthi $4
sra $4, $4, 6
TAG268:
divu $4, $4
ori $1, $4, 6
bgtz $1, TAG269
lui $4, 1
TAG269:
mtlo $4
divu $4, $4
srl $3, $4, 7
blez $4, TAG270
TAG270:
mtlo $3
div $3, $3
and $1, $3, $3
multu $1, $3
TAG271:
subu $2, $1, $1
mtlo $2
sw $2, -512($1)
beq $2, $1, TAG272
TAG272:
lui $4, 12
mfhi $1
lhu $2, 0($2)
lbu $3, 0($1)
TAG273:
beq $3, $3, TAG274
mtlo $3
lh $1, 0($3)
multu $1, $3
TAG274:
mult $1, $1
sw $1, 0($1)
mflo $1
bgtz $1, TAG275
TAG275:
mult $1, $1
mthi $1
lb $3, 0($1)
mult $3, $1
TAG276:
mthi $3
bne $3, $3, TAG277
mtlo $3
mfhi $4
TAG277:
mult $4, $4
mult $4, $4
lb $3, 0($4)
lui $2, 15
TAG278:
beq $2, $2, TAG279
mult $2, $2
mthi $2
mflo $3
TAG279:
mult $3, $3
lbu $4, 0($3)
mfhi $3
lui $1, 10
TAG280:
beq $1, $1, TAG281
sll $0, $0, 0
mtlo $1
mthi $1
TAG281:
mult $1, $1
lui $3, 4
bgtz $3, TAG282
sll $0, $0, 0
TAG282:
bgez $1, TAG283
lui $3, 14
blez $1, TAG283
lb $4, 0($1)
TAG283:
mtlo $4
blez $4, TAG284
mfhi $2
sh $4, 0($2)
TAG284:
lui $1, 5
mflo $2
sltiu $2, $2, 10
mfhi $1
TAG285:
mflo $4
lui $4, 3
divu $4, $4
addu $2, $1, $4
TAG286:
multu $2, $2
ori $3, $2, 0
mflo $1
mult $2, $3
TAG287:
mfhi $4
sb $4, 0($4)
subu $4, $1, $1
mfhi $2
TAG288:
bltz $2, TAG289
lui $3, 15
divu $2, $3
lui $3, 5
TAG289:
bne $3, $3, TAG290
srav $1, $3, $3
and $2, $3, $3
mthi $3
TAG290:
sll $0, $0, 0
ori $4, $2, 4
sll $0, $0, 0
mflo $3
TAG291:
mult $3, $3
slti $1, $3, 10
mult $1, $3
addu $3, $3, $1
TAG292:
mfhi $2
beq $3, $2, TAG293
lb $4, 0($3)
lb $3, 0($3)
TAG293:
multu $3, $3
multu $3, $3
bne $3, $3, TAG294
lui $4, 6
TAG294:
divu $4, $4
srl $2, $4, 8
sltiu $3, $2, 9
bgez $4, TAG295
TAG295:
lw $3, 0($3)
bne $3, $3, TAG296
lbu $3, 0($3)
mult $3, $3
TAG296:
bne $3, $3, TAG297
mfhi $4
lw $2, 0($4)
sb $3, 0($3)
TAG297:
mflo $3
lui $3, 6
lui $2, 5
bgez $2, TAG298
TAG298:
xor $4, $2, $2
beq $4, $2, TAG299
mfhi $1
addiu $2, $2, 13
TAG299:
srlv $3, $2, $2
xori $1, $3, 1
subu $3, $1, $2
lui $3, 0
TAG300:
mflo $2
mflo $4
sw $2, 0($4)
bgez $4, TAG301
TAG301:
lb $1, 0($4)
lui $2, 6
blez $1, TAG302
sb $2, 0($4)
TAG302:
mfhi $1
sll $0, $0, 0
mfhi $2
sw $4, 0($2)
TAG303:
mthi $2
subu $4, $2, $2
sw $4, 0($2)
sw $4, 0($2)
TAG304:
mult $4, $4
sllv $1, $4, $4
beq $1, $1, TAG305
sb $1, 0($1)
TAG305:
mflo $3
bltz $3, TAG306
mflo $2
sb $2, 0($2)
TAG306:
andi $1, $2, 11
mflo $4
bltz $2, TAG307
mtlo $2
TAG307:
sh $4, 0($4)
beq $4, $4, TAG308
lbu $4, 0($4)
sll $4, $4, 11
TAG308:
multu $4, $4
slti $3, $4, 12
andi $3, $4, 10
xor $1, $3, $3
TAG309:
lbu $1, 0($1)
lui $2, 10
addi $2, $1, 7
sub $4, $2, $1
TAG310:
lui $1, 5
sll $0, $0, 0
div $1, $4
mtlo $4
TAG311:
div $1, $1
multu $1, $1
bne $1, $1, TAG312
lui $4, 12
TAG312:
subu $4, $4, $4
mult $4, $4
and $3, $4, $4
bltz $4, TAG313
TAG313:
sh $3, 0($3)
mfhi $3
lui $2, 9
multu $2, $3
TAG314:
sll $0, $0, 0
lui $1, 7
mthi $2
beq $1, $1, TAG315
TAG315:
sll $0, $0, 0
bne $1, $1, TAG316
lui $4, 1
srl $3, $4, 5
TAG316:
mfhi $4
divu $4, $4
sb $3, -2048($3)
mtlo $3
TAG317:
sll $0, $0, 0
bgtz $4, TAG318
sll $0, $0, 0
slt $2, $4, $4
TAG318:
mthi $2
bltz $2, TAG319
andi $1, $2, 3
bne $2, $1, TAG319
TAG319:
sw $1, 0($1)
blez $1, TAG320
mfhi $3
bne $3, $1, TAG320
TAG320:
addiu $4, $3, 4
mfhi $2
sltu $4, $4, $2
mflo $3
TAG321:
beq $3, $3, TAG322
addu $3, $3, $3
lui $2, 12
lhu $4, 0($3)
TAG322:
blez $4, TAG323
mthi $4
lui $2, 4
mult $2, $4
TAG323:
bgtz $2, TAG324
or $4, $2, $2
addi $3, $2, 12
divu $4, $3
TAG324:
sra $2, $3, 4
sw $3, -4096($3)
blez $2, TAG325
lui $3, 6
TAG325:
sll $0, $0, 0
bltz $4, TAG326
sll $0, $0, 0
blez $4, TAG326
TAG326:
mthi $4
bgtz $4, TAG327
div $4, $4
bne $4, $4, TAG327
TAG327:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $3
beq $4, $4, TAG328
TAG328:
mtlo $3
mfhi $1
bltz $3, TAG329
sll $0, $0, 0
TAG329:
sra $2, $3, 11
beq $2, $2, TAG330
mflo $4
divu $3, $4
TAG330:
beq $4, $4, TAG331
lui $2, 15
sw $4, 0($2)
lui $1, 5
TAG331:
sll $0, $0, 0
sllv $1, $1, $3
addiu $3, $1, 10
sll $0, $0, 0
TAG332:
sll $0, $0, 0
lui $3, 2
sll $0, $0, 0
sllv $3, $2, $2
TAG333:
sll $0, $0, 0
slti $3, $3, 6
mtlo $3
mfhi $4
TAG334:
bltz $4, TAG335
sra $4, $4, 7
lui $2, 0
blez $4, TAG335
TAG335:
srlv $3, $2, $2
sb $2, 0($2)
bne $2, $3, TAG336
lh $2, 0($3)
TAG336:
addiu $1, $2, 12
mfhi $4
mfhi $1
beq $2, $1, TAG337
TAG337:
mflo $3
sll $0, $0, 0
beq $3, $1, TAG338
xori $1, $1, 5
TAG338:
mult $1, $1
mtlo $1
bne $1, $1, TAG339
sll $0, $0, 0
TAG339:
sll $0, $0, 0
mtlo $4
bne $4, $4, TAG340
mtlo $4
TAG340:
beq $4, $4, TAG341
sll $0, $0, 0
lh $3, 0($4)
slt $3, $3, $4
TAG341:
mflo $2
bne $2, $3, TAG342
sw $2, 0($3)
mfhi $3
TAG342:
lbu $2, 0($3)
sh $2, 0($3)
lhu $2, 0($2)
mfhi $2
TAG343:
div $2, $2
mfhi $4
mfhi $1
mult $1, $1
TAG344:
sw $1, 0($1)
beq $1, $1, TAG345
slti $3, $1, 13
mult $1, $3
TAG345:
sb $3, 0($3)
addu $2, $3, $3
slt $1, $2, $3
multu $1, $1
TAG346:
lhu $2, 0($1)
mult $1, $1
or $4, $2, $2
bgez $1, TAG347
TAG347:
sll $0, $0, 0
mthi $4
sra $1, $4, 14
bne $1, $2, TAG348
TAG348:
lb $3, 0($1)
bgtz $3, TAG349
multu $1, $1
mfhi $2
TAG349:
bgez $2, TAG350
mtlo $2
xori $2, $2, 9
mthi $2
TAG350:
lui $1, 1
multu $1, $1
bltz $2, TAG351
mflo $1
TAG351:
beq $1, $1, TAG352
sb $1, 0($1)
mthi $1
mtlo $1
TAG352:
mfhi $3
bltz $3, TAG353
mthi $1
mfhi $1
TAG353:
bgtz $1, TAG354
lhu $4, 0($1)
bltz $4, TAG354
mult $1, $1
TAG354:
mthi $4
sw $4, -256($4)
multu $4, $4
sb $4, -256($4)
TAG355:
mflo $2
mtlo $2
multu $2, $2
mult $2, $2
TAG356:
lui $2, 13
mthi $2
bne $2, $2, TAG357
sltu $1, $2, $2
TAG357:
mult $1, $1
bne $1, $1, TAG358
lw $4, 0($1)
mult $4, $4
TAG358:
mtlo $4
and $2, $4, $4
lui $4, 1
lhu $2, -256($2)
TAG359:
bgez $2, TAG360
lw $4, -256($2)
sltu $4, $4, $2
addiu $2, $4, 9
TAG360:
div $2, $2
mtlo $2
sh $2, -256($2)
bne $2, $2, TAG361
TAG361:
sll $0, $0, 0
mfhi $4
lui $2, 0
lui $3, 5
TAG362:
sll $0, $0, 0
mfhi $2
bltz $2, TAG363
srlv $1, $3, $2
TAG363:
beq $1, $1, TAG364
sll $0, $0, 0
sw $1, 0($1)
mult $1, $1
TAG364:
nor $4, $1, $1
bgtz $1, TAG365
sll $0, $0, 0
bltz $1, TAG365
TAG365:
slti $1, $4, 1
lb $1, 0($1)
xor $1, $1, $4
addu $2, $1, $4
TAG366:
divu $2, $2
sll $0, $0, 0
sll $0, $0, 0
xori $1, $2, 2
TAG367:
div $1, $1
xori $2, $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG368:
xori $3, $4, 3
blez $3, TAG369
mthi $4
and $2, $4, $4
TAG369:
div $2, $2
lui $3, 2
sll $0, $0, 0
addiu $4, $3, 4
TAG370:
srlv $4, $4, $4
bgez $4, TAG371
multu $4, $4
mtlo $4
TAG371:
beq $4, $4, TAG372
mfhi $3
mflo $1
lb $1, 0($3)
TAG372:
mfhi $3
lui $3, 7
addiu $1, $3, 6
sll $0, $0, 0
TAG373:
mthi $1
lui $2, 12
sll $0, $0, 0
mflo $3
TAG374:
lui $2, 11
sll $0, $0, 0
lui $2, 5
sll $0, $0, 0
TAG375:
lui $1, 3
sll $0, $0, 0
beq $1, $1, TAG376
sll $0, $0, 0
TAG376:
divu $3, $3
addu $3, $3, $3
mfhi $4
lhu $3, 0($4)
TAG377:
subu $3, $3, $3
sb $3, 0($3)
bne $3, $3, TAG378
lui $4, 9
TAG378:
mflo $3
sb $3, 0($3)
bne $4, $3, TAG379
sb $3, 0($3)
TAG379:
lui $2, 4
lui $4, 4
beq $3, $2, TAG380
sllv $4, $2, $2
TAG380:
mflo $4
lb $1, 0($4)
mfhi $1
lui $3, 10
TAG381:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $2, $1
TAG382:
sll $0, $0, 0
blez $2, TAG383
mfhi $2
sra $3, $2, 13
TAG383:
lui $2, 15
lui $1, 1
ori $1, $2, 2
lui $4, 12
TAG384:
mfhi $2
ori $2, $2, 12
sh $2, 0($2)
mult $2, $4
TAG385:
lui $4, 15
lw $1, 0($2)
lui $4, 11
multu $2, $1
TAG386:
sll $0, $0, 0
lui $4, 8
slt $2, $4, $4
bne $2, $4, TAG387
TAG387:
sw $2, 0($2)
mflo $2
bltz $2, TAG388
srl $3, $2, 9
TAG388:
mthi $3
sll $0, $0, 0
bltz $3, TAG389
mult $3, $3
TAG389:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $4, TAG390
subu $1, $3, $4
TAG390:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG391:
subu $4, $2, $2
lui $4, 1
mfhi $2
div $4, $2
TAG392:
bne $2, $2, TAG393
multu $2, $2
mult $2, $2
blez $2, TAG393
TAG393:
xori $2, $2, 10
mflo $1
mtlo $2
divu $1, $2
TAG394:
lui $4, 10
sll $0, $0, 0
srl $2, $3, 11
srl $3, $1, 6
TAG395:
lui $1, 15
sll $0, $0, 0
div $3, $1
sll $0, $0, 0
TAG396:
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG397
sll $1, $1, 3
TAG397:
sll $0, $0, 0
ori $1, $1, 3
mflo $3
mtlo $1
TAG398:
divu $3, $3
bne $3, $3, TAG399
mfhi $2
sra $1, $3, 13
TAG399:
mflo $2
mtlo $2
bgez $2, TAG400
mflo $1
TAG400:
andi $3, $1, 3
sllv $1, $3, $1
sllv $3, $1, $3
sb $1, 0($3)
TAG401:
bgtz $3, TAG402
lbu $1, 0($3)
sllv $4, $3, $3
addiu $3, $1, 10
TAG402:
lw $2, 0($3)
mthi $3
multu $2, $3
lui $4, 1
TAG403:
lui $4, 8
sltiu $2, $4, 5
mthi $4
mthi $4
TAG404:
mfhi $4
bne $4, $2, TAG405
sll $0, $0, 0
mthi $4
TAG405:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
addu $4, $4, $4
TAG406:
slti $3, $4, 14
div $3, $4
slt $4, $3, $4
lbu $2, 0($4)
TAG407:
srav $4, $2, $2
sw $2, 0($2)
bgez $4, TAG408
mflo $3
TAG408:
mfhi $2
sltu $2, $2, $3
blez $2, TAG409
lw $1, 0($2)
TAG409:
add $3, $1, $1
lui $2, 2
xor $2, $3, $2
lui $3, 8
TAG410:
sll $0, $0, 0
mfhi $1
lui $3, 15
mthi $1
TAG411:
sll $0, $0, 0
addiu $4, $3, 15
mfhi $4
sh $4, 0($4)
TAG412:
mult $4, $4
mthi $4
mthi $4
multu $4, $4
TAG413:
blez $4, TAG414
sltu $3, $4, $4
sltu $4, $4, $3
sltiu $3, $4, 7
TAG414:
xori $1, $3, 14
multu $1, $3
xori $3, $1, 12
mtlo $1
TAG415:
sltu $4, $3, $3
mult $4, $3
addiu $4, $3, 15
sllv $1, $4, $3
TAG416:
mtlo $1
bne $1, $1, TAG417
sh $1, 0($1)
xor $3, $1, $1
TAG417:
bgez $3, TAG418
lhu $4, 0($3)
ori $1, $4, 14
lw $2, 0($1)
TAG418:
sll $0, $0, 0
xori $3, $2, 12
srl $2, $3, 10
andi $4, $3, 0
TAG419:
subu $4, $4, $4
mult $4, $4
sh $4, 0($4)
slti $3, $4, 1
TAG420:
beq $3, $3, TAG421
sb $3, 0($3)
addu $3, $3, $3
lui $3, 10
TAG421:
bltz $3, TAG422
mfhi $1
subu $3, $1, $3
bgez $3, TAG422
TAG422:
sb $3, 1($3)
lui $2, 15
mtlo $2
lui $1, 5
TAG423:
xor $1, $1, $1
mthi $1
andi $4, $1, 9
mthi $1
TAG424:
lh $4, 0($4)
mflo $2
beq $4, $4, TAG425
sh $4, -511($4)
TAG425:
lui $1, 5
bne $1, $1, TAG426
multu $2, $2
blez $2, TAG426
TAG426:
xori $3, $1, 14
beq $3, $3, TAG427
addiu $4, $3, 4
lui $3, 12
TAG427:
subu $2, $3, $3
mthi $3
bgtz $2, TAG428
lui $4, 9
TAG428:
mtlo $4
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
TAG429:
bltz $2, TAG430
multu $2, $2
multu $2, $2
mult $2, $2
TAG430:
mfhi $2
srlv $1, $2, $2
mfhi $4
sh $2, 0($2)
TAG431:
sw $4, 0($4)
mthi $4
lui $3, 3
bne $4, $4, TAG432
TAG432:
sll $0, $0, 0
bltz $3, TAG433
addiu $1, $3, 9
mflo $2
TAG433:
lui $1, 15
sltiu $4, $2, 1
mflo $2
mfhi $2
TAG434:
mflo $3
add $4, $3, $2
lui $4, 0
mflo $3
TAG435:
mthi $3
sh $3, 0($3)
bltz $3, TAG436
mult $3, $3
TAG436:
mtlo $3
blez $3, TAG437
mthi $3
bltz $3, TAG437
TAG437:
mtlo $3
multu $3, $3
mflo $3
srl $2, $3, 10
TAG438:
sw $2, 0($2)
lui $4, 1
nor $3, $4, $4
multu $4, $2
TAG439:
subu $2, $3, $3
mthi $3
sra $3, $2, 15
addi $4, $3, 7
TAG440:
lui $2, 14
subu $1, $4, $2
sll $0, $0, 0
blez $4, TAG441
TAG441:
lui $4, 0
bne $4, $4, TAG442
lbu $3, 0($4)
bltz $4, TAG442
TAG442:
lhu $3, 0($3)
and $2, $3, $3
beq $3, $3, TAG443
sb $3, 0($3)
TAG443:
add $1, $2, $2
lbu $2, 0($1)
lbu $3, 0($2)
mult $2, $2
TAG444:
bgez $3, TAG445
mthi $3
beq $3, $3, TAG445
sltu $1, $3, $3
TAG445:
ori $2, $1, 9
lbu $4, 0($1)
slt $3, $2, $2
mult $4, $3
TAG446:
multu $3, $3
mtlo $3
mthi $3
bltz $3, TAG447
TAG447:
mfhi $2
mtlo $2
addiu $1, $3, 2
lui $3, 10
TAG448:
beq $3, $3, TAG449
lui $3, 9
add $2, $3, $3
divu $3, $3
TAG449:
bgez $2, TAG450
lui $2, 1
multu $2, $2
sltiu $4, $2, 5
TAG450:
mult $4, $4
lhu $3, 0($4)
blez $3, TAG451
lw $1, 0($4)
TAG451:
lui $3, 13
bltz $1, TAG452
div $1, $3
lui $4, 8
TAG452:
beq $4, $4, TAG453
sll $0, $0, 0
divu $4, $4
multu $4, $4
TAG453:
sll $0, $0, 0
sltu $3, $4, $4
lhu $1, 0($3)
beq $3, $4, TAG454
TAG454:
mult $1, $1
mthi $1
mfhi $2
multu $2, $2
TAG455:
andi $1, $2, 8
mtlo $2
mfhi $1
lui $1, 5
TAG456:
sll $0, $0, 0
mflo $1
multu $1, $1
bgtz $1, TAG457
TAG457:
mfhi $1
lui $3, 11
mthi $3
sll $0, $0, 0
TAG458:
mfhi $1
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
TAG459:
mtlo $3
lui $2, 1
mthi $2
ori $2, $2, 8
TAG460:
mtlo $2
beq $2, $2, TAG461
ori $1, $2, 5
xori $4, $1, 4
TAG461:
mflo $3
blez $4, TAG462
subu $3, $3, $3
lui $1, 10
TAG462:
bne $1, $1, TAG463
mtlo $1
bne $1, $1, TAG463
sll $0, $0, 0
TAG463:
ori $1, $2, 6
mthi $1
mtlo $1
sltu $2, $1, $2
TAG464:
multu $2, $2
lui $3, 9
mfhi $1
mthi $3
TAG465:
mult $1, $1
bgtz $1, TAG466
slt $4, $1, $1
or $1, $4, $4
TAG466:
beq $1, $1, TAG467
lhu $3, 0($1)
sh $1, 0($1)
lui $2, 0
TAG467:
lb $2, 0($2)
mflo $1
mfhi $1
lbu $4, 0($1)
TAG468:
mtlo $4
bgtz $4, TAG469
sub $1, $4, $4
sb $1, 0($1)
TAG469:
bgez $1, TAG470
sll $2, $1, 8
beq $1, $1, TAG470
mult $1, $1
TAG470:
bltz $2, TAG471
addu $4, $2, $2
multu $4, $4
sw $4, 0($2)
TAG471:
mtlo $4
lui $4, 12
div $4, $4
andi $4, $4, 15
TAG472:
addiu $3, $4, 5
mfhi $4
subu $4, $4, $3
bne $4, $4, TAG473
TAG473:
sll $0, $0, 0
div $4, $3
mtlo $4
mult $4, $4
TAG474:
mtlo $3
nor $3, $3, $3
mthi $3
beq $3, $3, TAG475
TAG475:
ori $4, $3, 12
mthi $4
beq $4, $4, TAG476
lw $3, 2($4)
TAG476:
bltz $3, TAG477
multu $3, $3
addi $4, $3, 15
mtlo $3
TAG477:
lb $4, 0($4)
blez $4, TAG478
mflo $3
lbu $4, 0($4)
TAG478:
lb $1, 0($4)
lbu $3, 0($1)
lbu $4, 0($4)
subu $3, $3, $4
TAG479:
bltz $3, TAG480
and $1, $3, $3
lui $1, 9
beq $1, $3, TAG480
TAG480:
sll $0, $0, 0
bne $1, $1, TAG481
andi $2, $1, 10
mthi $1
TAG481:
mult $2, $2
bgtz $2, TAG482
lw $4, 0($2)
srav $2, $4, $2
TAG482:
mult $2, $2
andi $4, $2, 11
mthi $4
lui $3, 7
TAG483:
sll $0, $0, 0
lui $1, 4
sltiu $1, $3, 2
bgtz $1, TAG484
TAG484:
subu $2, $1, $1
sh $2, 0($2)
bgez $1, TAG485
lui $1, 10
TAG485:
multu $1, $1
bne $1, $1, TAG486
sll $1, $1, 15
bne $1, $1, TAG486
TAG486:
lhu $4, 0($1)
lhu $3, 0($1)
sltiu $1, $4, 11
sb $4, 0($3)
TAG487:
mfhi $1
div $1, $1
beq $1, $1, TAG488
sb $1, 0($1)
TAG488:
mfhi $4
div $4, $1
divu $1, $1
addi $2, $4, 5
TAG489:
mtlo $2
lbu $2, 0($2)
lui $4, 5
beq $4, $2, TAG490
TAG490:
lui $3, 0
mflo $4
xori $1, $3, 9
lui $1, 12
TAG491:
sll $0, $0, 0
mfhi $1
lui $1, 1
bne $1, $1, TAG492
TAG492:
mfhi $3
mflo $2
mult $3, $1
or $2, $2, $2
TAG493:
multu $2, $2
bne $2, $2, TAG494
lui $3, 0
lb $3, 0($2)
TAG494:
blez $3, TAG495
lbu $3, 0($3)
sb $3, 0($3)
lhu $2, 0($3)
TAG495:
lb $2, 0($2)
mflo $3
sb $2, 0($2)
multu $3, $2
TAG496:
bne $3, $3, TAG497
sb $3, 0($3)
mtlo $3
mtlo $3
TAG497:
lbu $4, 0($3)
bne $4, $3, TAG498
lbu $1, 0($4)
lui $1, 2
TAG498:
beq $1, $1, TAG499
sll $0, $0, 0
lui $3, 5
mfhi $3
TAG499:
lui $1, 0
mtlo $1
blez $3, TAG500
mtlo $3
TAG500:
mfhi $4
mflo $3
lbu $4, 0($3)
bltz $1, TAG501
TAG501:
nor $2, $4, $4
bgez $4, TAG502
addiu $1, $4, 2
andi $1, $2, 15
TAG502:
lui $4, 4
mfhi $3
mthi $1
srl $3, $4, 1
TAG503:
mfhi $2
beq $3, $3, TAG504
sll $0, $0, 0
mfhi $2
TAG504:
lui $1, 13
lui $3, 4
lui $2, 4
addiu $3, $3, 8
TAG505:
mthi $3
ori $3, $3, 9
lui $2, 9
addu $4, $2, $2
TAG506:
mtlo $4
lui $2, 1
mfhi $1
sll $0, $0, 0
TAG507:
sra $3, $1, 14
sltu $2, $1, $1
sll $1, $3, 1
mtlo $1
TAG508:
mfhi $1
bne $1, $1, TAG509
sll $0, $0, 0
bgez $1, TAG509
TAG509:
divu $1, $1
mtlo $1
lui $3, 5
multu $1, $3
TAG510:
bgtz $3, TAG511
mthi $3
mfhi $1
bne $3, $3, TAG511
TAG511:
lui $1, 2
divu $1, $1
multu $1, $1
sll $0, $0, 0
TAG512:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
TAG513:
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
mfhi $1
TAG514:
sb $1, 0($1)
sra $1, $1, 12
lui $1, 8
subu $4, $1, $1
TAG515:
lui $1, 9
bne $4, $1, TAG516
sll $0, $0, 0
beq $1, $4, TAG516
TAG516:
div $1, $1
lui $4, 4
slt $2, $4, $4
slt $1, $1, $4
TAG517:
mflo $4
nor $3, $4, $1
bgtz $4, TAG518
sb $4, 2($3)
TAG518:
mfhi $4
multu $4, $4
ori $1, $3, 5
lui $2, 7
TAG519:
sltiu $1, $2, 13
beq $1, $1, TAG520
and $1, $1, $1
lw $1, 0($1)
TAG520:
lui $1, 6
sll $0, $0, 0
sh $1, 2($3)
lui $4, 4
TAG521:
mtlo $4
beq $4, $4, TAG522
mtlo $4
mult $4, $4
TAG522:
bne $4, $4, TAG523
mtlo $4
bgtz $4, TAG523
div $4, $4
TAG523:
mthi $4
sltu $1, $4, $4
sll $0, $0, 0
bne $1, $1, TAG524
TAG524:
lui $4, 13
lhu $4, 0($1)
andi $4, $4, 5
lui $4, 14
TAG525:
bgez $4, TAG526
lui $3, 13
beq $3, $4, TAG526
sltu $4, $3, $4
TAG526:
sll $0, $0, 0
lui $3, 0
bne $3, $3, TAG527
sltu $3, $4, $3
TAG527:
blez $3, TAG528
mthi $3
bltz $3, TAG528
sb $3, 0($3)
TAG528:
beq $3, $3, TAG529
sb $3, 0($3)
beq $3, $3, TAG529
div $3, $3
TAG529:
beq $3, $3, TAG530
lui $3, 12
lbu $4, 0($3)
bgez $4, TAG530
TAG530:
mflo $3
bgtz $4, TAG531
mtlo $4
sw $3, 0($4)
TAG531:
mfhi $2
bne $2, $3, TAG532
sb $3, 0($3)
bltz $3, TAG532
TAG532:
mtlo $2
mult $2, $2
ori $2, $2, 9
lui $1, 11
TAG533:
blez $1, TAG534
ori $3, $1, 3
mflo $3
bne $1, $1, TAG534
TAG534:
sb $3, 0($3)
mflo $4
andi $1, $4, 8
lui $4, 6
TAG535:
mtlo $4
lui $2, 4
blez $4, TAG536
addu $4, $2, $2
TAG536:
ori $3, $4, 2
xori $3, $4, 3
sll $0, $0, 0
sll $0, $0, 0
TAG537:
sll $0, $0, 0
srlv $3, $3, $3
multu $3, $3
addu $2, $3, $3
TAG538:
mflo $2
mtlo $2
bne $2, $2, TAG539
mflo $1
TAG539:
lh $3, 0($1)
lh $3, 0($1)
addu $4, $3, $3
sh $4, -512($4)
TAG540:
mthi $4
sw $4, -512($4)
lb $1, -512($4)
sb $4, 0($1)
TAG541:
lbu $3, 0($1)
mult $1, $1
bne $3, $3, TAG542
subu $1, $1, $3
TAG542:
mtlo $1
srlv $3, $1, $1
mtlo $1
mult $1, $3
TAG543:
lhu $2, 0($3)
bltz $3, TAG544
mflo $3
mfhi $4
TAG544:
sw $4, 0($4)
sw $4, 0($4)
sw $4, 0($4)
add $2, $4, $4
TAG545:
mflo $2
mult $2, $2
mult $2, $2
sw $2, 0($2)
TAG546:
mflo $1
mult $1, $1
srlv $1, $2, $2
mult $1, $2
TAG547:
sh $1, 0($1)
lh $4, 0($1)
mthi $1
sw $4, 0($1)
TAG548:
multu $4, $4
sw $4, 0($4)
mult $4, $4
bne $4, $4, TAG549
TAG549:
mult $4, $4
lui $3, 11
sll $0, $0, 0
mflo $1
TAG550:
blez $1, TAG551
xori $1, $1, 0
sll $4, $1, 3
ori $2, $1, 9
TAG551:
lui $2, 9
bne $2, $2, TAG552
divu $2, $2
addu $4, $2, $2
TAG552:
bne $4, $4, TAG553
mult $4, $4
sll $0, $0, 0
bltz $3, TAG553
TAG553:
ori $4, $3, 8
bltz $3, TAG554
div $3, $4
bgez $4, TAG554
TAG554:
mflo $4
multu $4, $4
lbu $3, 0($4)
blez $3, TAG555
TAG555:
addi $4, $3, 9
lui $2, 13
xori $4, $3, 7
nor $1, $4, $2
TAG556:
mult $1, $1
mtlo $1
div $1, $1
lui $2, 5
TAG557:
mult $2, $2
lui $3, 11
sll $0, $0, 0
blez $3, TAG558
TAG558:
mtlo $3
beq $3, $3, TAG559
ori $1, $3, 13
lui $1, 1
TAG559:
subu $4, $1, $1
addiu $3, $4, 0
lui $1, 6
addiu $2, $1, 15
TAG560:
lui $1, 1
bgez $1, TAG561
multu $2, $1
mtlo $1
TAG561:
divu $1, $1
mfhi $1
bne $1, $1, TAG562
sra $4, $1, 14
TAG562:
sub $2, $4, $4
mthi $4
sub $4, $2, $2
addi $3, $4, 12
TAG563:
bgez $3, TAG564
lui $3, 13
mfhi $1
divu $1, $3
TAG564:
multu $1, $1
mflo $4
sh $1, 0($1)
mflo $4
TAG565:
mflo $4
bgtz $4, TAG566
sra $2, $4, 14
lw $3, 0($4)
TAG566:
bltz $3, TAG567
mtlo $3
subu $4, $3, $3
sh $4, 0($4)
TAG567:
mfhi $3
mthi $3
addi $4, $3, 13
lui $4, 0
TAG568:
mtlo $4
beq $4, $4, TAG569
mtlo $4
mfhi $4
TAG569:
lhu $4, 0($4)
lw $3, 0($4)
mtlo $3
bne $4, $4, TAG570
TAG570:
mtlo $3
lh $1, 0($3)
bgez $1, TAG571
or $1, $1, $1
TAG571:
lui $2, 11
mthi $1
sllv $3, $2, $2
srl $1, $3, 3
TAG572:
mthi $1
bltz $1, TAG573
mtlo $1
bgez $1, TAG573
TAG573:
mthi $1
sll $0, $0, 0
div $1, $1
mflo $4
TAG574:
bgez $4, TAG575
lui $2, 6
multu $2, $2
andi $3, $4, 1
TAG575:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
mthi $2
TAG576:
lui $1, 13
bne $1, $2, TAG577
mflo $1
lb $4, 0($2)
TAG577:
bgtz $4, TAG578
sb $4, 0($4)
sb $4, 0($4)
div $4, $4
TAG578:
lbu $3, 0($4)
sb $3, 0($3)
mflo $4
sb $4, 0($4)
TAG579:
mult $4, $4
addiu $2, $4, 0
slt $2, $4, $2
sh $4, 0($2)
TAG580:
or $4, $2, $2
mthi $2
lui $1, 3
beq $4, $4, TAG581
TAG581:
mflo $3
lui $1, 0
mult $1, $1
lb $4, 0($3)
TAG582:
beq $4, $4, TAG583
slti $4, $4, 13
mtlo $4
divu $4, $4
TAG583:
beq $4, $4, TAG584
mflo $3
sw $3, 0($3)
lhu $4, 0($3)
TAG584:
lui $3, 3
bne $3, $4, TAG585
mfhi $2
bgtz $4, TAG585
TAG585:
sb $2, 0($2)
mflo $3
bgez $3, TAG586
mult $3, $3
TAG586:
lui $2, 9
lui $1, 13
mtlo $2
div $2, $1
TAG587:
divu $1, $1
sll $0, $0, 0
mtlo $1
mthi $1
TAG588:
sll $0, $0, 0
slti $1, $1, 0
nor $4, $1, $1
div $1, $4
TAG589:
bltz $4, TAG590
mult $4, $4
addi $3, $4, 10
sb $3, 0($4)
TAG590:
lui $1, 14
lui $3, 6
bgez $3, TAG591
lui $2, 7
TAG591:
lui $1, 0
bltz $1, TAG592
mflo $3
addu $4, $1, $2
TAG592:
mtlo $4
blez $4, TAG593
mthi $4
mfhi $1
TAG593:
xori $2, $1, 1
blez $2, TAG594
sll $0, $0, 0
mthi $2
TAG594:
bne $2, $2, TAG595
slt $4, $2, $2
srlv $1, $2, $2
sll $0, $0, 0
TAG595:
mult $4, $4
srlv $1, $4, $4
lui $1, 6
sll $0, $0, 0
TAG596:
lhu $3, 0($4)
srlv $3, $4, $3
lui $4, 13
addiu $2, $3, 10
TAG597:
slti $2, $2, 8
mult $2, $2
bltz $2, TAG598
mflo $3
TAG598:
subu $2, $3, $3
bltz $3, TAG599
mfhi $2
mfhi $1
TAG599:
lui $1, 14
divu $1, $1
bgtz $1, TAG600
mfhi $3
TAG600:
lui $2, 10
sll $0, $0, 0
mult $2, $3
bne $3, $2, TAG601
TAG601:
multu $2, $2
sll $0, $0, 0
mflo $1
subu $1, $2, $2
TAG602:
bne $1, $1, TAG603
mtlo $1
sb $1, 0($1)
mult $1, $1
TAG603:
mfhi $4
srav $4, $4, $1
mult $1, $4
lhu $1, 0($4)
TAG604:
bgtz $1, TAG605
srl $4, $1, 6
srlv $3, $4, $1
sb $1, 0($4)
TAG605:
mtlo $3
lui $4, 7
mult $4, $4
sll $0, $0, 0
TAG606:
sll $0, $0, 0
addu $4, $4, $4
bgez $4, TAG607
sll $0, $0, 0
TAG607:
divu $4, $4
sll $0, $0, 0
mtlo $4
lui $4, 2
TAG608:
sll $0, $0, 0
srl $4, $4, 10
mflo $4
mflo $4
TAG609:
mflo $2
sll $0, $0, 0
beq $2, $2, TAG610
mflo $2
TAG610:
bltz $2, TAG611
ori $4, $2, 14
mflo $2
mflo $2
TAG611:
sll $0, $0, 0
lui $3, 4
and $3, $3, $3
lui $3, 11
TAG612:
bgtz $3, TAG613
mtlo $3
bgtz $3, TAG613
or $1, $3, $3
TAG613:
mult $1, $1
nor $1, $1, $1
sh $1, 1($1)
beq $1, $1, TAG614
TAG614:
sll $0, $0, 0
lui $4, 10
sll $0, $0, 0
bne $1, $4, TAG615
TAG615:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
mtlo $4
TAG616:
bgez $4, TAG617
lui $3, 6
mfhi $4
sw $4, 0($4)
TAG617:
bne $4, $4, TAG618
subu $1, $4, $4
mult $4, $1
bgez $1, TAG618
TAG618:
lui $2, 8
lui $3, 4
divu $3, $2
srl $3, $1, 6
TAG619:
subu $2, $3, $3
multu $2, $2
mfhi $3
srav $4, $3, $3
TAG620:
lh $4, 0($4)
addu $4, $4, $4
blez $4, TAG621
mfhi $1
TAG621:
mfhi $3
lui $2, 5
slti $4, $1, 8
bgez $4, TAG622
TAG622:
div $4, $4
sb $4, 0($4)
mult $4, $4
mflo $2
TAG623:
mfhi $2
lui $4, 9
srl $4, $2, 13
mult $4, $2
TAG624:
bne $4, $4, TAG625
multu $4, $4
lhu $1, 0($4)
mfhi $1
TAG625:
xor $3, $1, $1
srl $2, $3, 3
beq $3, $2, TAG626
mflo $4
TAG626:
mult $4, $4
bgtz $4, TAG627
sw $4, 0($4)
sh $4, 0($4)
TAG627:
beq $4, $4, TAG628
sb $4, 0($4)
mult $4, $4
lui $2, 2
TAG628:
lb $1, 0($2)
beq $2, $2, TAG629
xor $3, $1, $1
beq $1, $3, TAG629
TAG629:
mthi $3
mult $3, $3
sra $1, $3, 7
sllv $3, $1, $1
TAG630:
lui $3, 2
mfhi $2
beq $3, $3, TAG631
multu $2, $3
TAG631:
beq $2, $2, TAG632
sw $2, 0($2)
sll $4, $2, 13
sw $4, 0($4)
TAG632:
sub $4, $4, $4
lui $1, 3
bne $1, $4, TAG633
sll $2, $4, 12
TAG633:
sw $2, 0($2)
mult $2, $2
sh $2, 0($2)
mthi $2
TAG634:
mfhi $3
bgtz $3, TAG635
lui $4, 10
sll $0, $0, 0
TAG635:
lui $2, 10
lbu $1, 0($3)
sll $1, $1, 1
bne $1, $1, TAG636
TAG636:
mult $1, $1
srl $1, $1, 4
multu $1, $1
mthi $1
TAG637:
bltz $1, TAG638
mflo $1
srlv $2, $1, $1
lbu $1, 0($1)
TAG638:
beq $1, $1, TAG639
mtlo $1
bgtz $1, TAG639
lui $1, 14
TAG639:
xori $2, $1, 8
lui $3, 5
lh $4, 0($2)
ori $4, $4, 9
TAG640:
sh $4, -2313($4)
lui $4, 2
bgez $4, TAG641
and $4, $4, $4
TAG641:
sll $0, $0, 0
bne $4, $4, TAG642
srav $4, $4, $4
sll $0, $0, 0
TAG642:
sll $0, $0, 0
lui $4, 7
srl $2, $4, 0
beq $1, $4, TAG643
TAG643:
mthi $2
mthi $2
mfhi $4
divu $2, $4
TAG644:
sll $0, $0, 0
bne $1, $4, TAG645
mfhi $1
mult $1, $1
TAG645:
mflo $2
bgez $1, TAG646
subu $3, $2, $2
addi $3, $1, 9
TAG646:
beq $3, $3, TAG647
sb $3, 0($3)
div $3, $3
lbu $4, 0($3)
TAG647:
lui $1, 2
mult $4, $1
mthi $1
addiu $4, $4, 12
TAG648:
blez $4, TAG649
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG649:
sh $2, 0($2)
addu $1, $2, $2
sb $1, 0($1)
srl $4, $1, 10
TAG650:
mfhi $1
lw $4, 0($4)
slt $3, $1, $1
mult $1, $3
TAG651:
addu $3, $3, $3
lhu $3, 0($3)
sw $3, 0($3)
sltiu $1, $3, 3
TAG652:
sltu $2, $1, $1
beq $1, $1, TAG653
mthi $1
blez $2, TAG653
TAG653:
mtlo $2
sw $2, 0($2)
lui $2, 4
bgez $2, TAG654
TAG654:
div $2, $2
sll $0, $0, 0
mtlo $2
lui $3, 13
TAG655:
mflo $3
and $1, $3, $3
mthi $1
sll $0, $0, 0
TAG656:
beq $3, $3, TAG657
sll $0, $0, 0
addu $2, $3, $3
mfhi $2
TAG657:
mthi $2
mfhi $4
sll $0, $0, 0
mthi $2
TAG658:
bltz $1, TAG659
sll $0, $0, 0
sltiu $2, $1, 9
mtlo $1
TAG659:
bne $2, $2, TAG660
sra $1, $2, 14
mtlo $2
lui $3, 7
TAG660:
sllv $3, $3, $3
multu $3, $3
sll $0, $0, 0
bne $3, $3, TAG661
TAG661:
mfhi $3
addu $2, $3, $3
mult $3, $3
xori $4, $3, 4
TAG662:
bltz $4, TAG663
nor $2, $4, $4
mfhi $4
multu $2, $4
TAG663:
sh $4, 0($4)
bltz $4, TAG664
lh $4, 0($4)
bgtz $4, TAG664
TAG664:
lui $2, 3
sltu $4, $2, $2
sll $2, $4, 1
mfhi $2
TAG665:
lui $1, 15
lui $3, 5
blez $3, TAG666
multu $2, $2
TAG666:
sll $0, $0, 0
lui $3, 12
mflo $4
addiu $1, $3, 4
TAG667:
beq $1, $1, TAG668
addiu $4, $1, 15
div $4, $4
lb $1, 0($4)
TAG668:
sll $0, $0, 0
sll $0, $0, 0
addiu $1, $3, 15
blez $3, TAG669
TAG669:
mfhi $1
mfhi $3
srl $1, $3, 12
bne $1, $1, TAG670
TAG670:
subu $1, $1, $1
mflo $1
slt $1, $1, $1
bne $1, $1, TAG671
TAG671:
lbu $1, 0($1)
multu $1, $1
lw $2, 0($1)
mflo $4
TAG672:
mfhi $4
and $1, $4, $4
bgtz $1, TAG673
mthi $4
TAG673:
mfhi $1
lui $2, 2
bltz $1, TAG674
mthi $1
TAG674:
lui $3, 12
xori $1, $2, 13
mthi $3
mflo $4
TAG675:
srav $4, $4, $4
mtlo $4
andi $3, $4, 11
lw $3, 0($3)
TAG676:
sltu $1, $3, $3
mfhi $4
mfhi $4
slt $4, $3, $1
TAG677:
lui $1, 5
lui $4, 8
mthi $4
srav $1, $4, $4
TAG678:
srav $1, $1, $1
or $2, $1, $1
lui $1, 14
sll $0, $0, 0
TAG679:
mfhi $2
or $3, $4, $4
addu $2, $4, $3
sll $0, $0, 0
TAG680:
mflo $3
mfhi $2
lbu $2, 0($3)
mtlo $3
TAG681:
lui $2, 7
mtlo $2
lui $4, 10
sll $0, $0, 0
TAG682:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 6
addiu $4, $4, 14
TAG683:
beq $4, $4, TAG684
slt $2, $4, $4
bgtz $4, TAG684
lui $4, 6
TAG684:
div $4, $4
mfhi $1
lui $1, 3
addiu $1, $1, 5
TAG685:
lui $4, 6
multu $4, $4
lui $4, 7
bltz $4, TAG686
TAG686:
ori $4, $4, 11
mfhi $4
mult $4, $4
sw $4, 0($4)
TAG687:
lhu $2, 0($4)
multu $2, $4
multu $2, $2
subu $2, $2, $2
TAG688:
mthi $2
bgtz $2, TAG689
lui $4, 3
mflo $2
TAG689:
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
mthi $4
TAG690:
sh $2, -1296($2)
mfhi $1
mfhi $4
sllv $2, $2, $4
TAG691:
sll $0, $0, 0
bgez $2, TAG692
mtlo $3
addi $1, $2, 7
TAG692:
mtlo $1
mfhi $4
sll $0, $0, 0
mflo $4
TAG693:
bgtz $4, TAG694
lui $2, 3
lhu $3, 0($4)
lw $3, 0($3)
TAG694:
mfhi $1
sll $0, $0, 0
bgez $1, TAG695
mthi $1
TAG695:
sltiu $4, $1, 14
sb $1, 0($4)
sll $0, $0, 0
mflo $1
TAG696:
multu $1, $1
sll $0, $0, 0
bne $1, $1, TAG697
mthi $1
TAG697:
srlv $2, $1, $1
bgtz $1, TAG698
subu $3, $2, $2
srlv $2, $2, $1
TAG698:
sra $4, $2, 4
sll $3, $2, 6
sll $0, $0, 0
ori $2, $3, 1
TAG699:
sra $3, $2, 0
mthi $2
andi $1, $2, 1
srlv $2, $1, $1
TAG700:
multu $2, $2
lbu $3, 0($2)
mfhi $3
xori $3, $3, 4
TAG701:
sh $3, 0($3)
bne $3, $3, TAG702
lui $1, 2
sh $3, 0($3)
TAG702:
mthi $1
lui $2, 10
sll $0, $0, 0
bne $1, $1, TAG703
TAG703:
addu $2, $1, $1
srl $3, $1, 6
sll $0, $0, 0
bltz $3, TAG704
TAG704:
mult $3, $3
blez $3, TAG705
nor $3, $3, $3
mthi $3
TAG705:
lui $2, 2
multu $2, $3
slt $3, $3, $3
beq $2, $3, TAG706
TAG706:
mflo $1
subu $3, $3, $1
sll $0, $0, 0
bltz $4, TAG707
TAG707:
sb $4, -12288($4)
lw $1, -12288($4)
lb $4, -1280($1)
blez $4, TAG708
TAG708:
xori $2, $4, 7
lb $4, 0($2)
bne $4, $2, TAG709
lui $2, 12
TAG709:
lui $2, 1
xori $2, $2, 11
divu $2, $2
lui $4, 3
TAG710:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
divu $4, $1
TAG711:
lui $2, 4
slt $2, $2, $2
mult $2, $2
srlv $1, $1, $2
TAG712:
bgtz $1, TAG713
mthi $1
sh $1, 0($1)
lhu $2, 0($1)
TAG713:
beq $2, $2, TAG714
slti $2, $2, 0
mfhi $1
mflo $1
TAG714:
bne $1, $1, TAG715
mthi $1
lui $2, 12
bgtz $1, TAG715
TAG715:
mthi $2
div $2, $2
lui $1, 8
sll $0, $0, 0
TAG716:
beq $1, $1, TAG717
addiu $2, $1, 10
lui $1, 0
sb $2, 0($1)
TAG717:
lui $3, 5
divu $1, $1
beq $1, $3, TAG718
mflo $2
TAG718:
xor $2, $2, $2
mthi $2
lui $3, 11
mflo $3
TAG719:
mfhi $1
divu $3, $3
sll $4, $1, 9
lb $1, 0($4)
TAG720:
multu $1, $1
mthi $1
bgez $1, TAG721
lh $4, 0($1)
TAG721:
mflo $3
nor $3, $3, $4
mfhi $1
lui $2, 5
TAG722:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
divu $2, $4
TAG723:
mult $3, $3
srav $1, $3, $3
lui $4, 1
lui $1, 2
TAG724:
addiu $4, $1, 0
sra $1, $1, 2
xori $2, $4, 7
div $1, $1
TAG725:
bne $2, $2, TAG726
lui $1, 10
sll $0, $0, 0
sll $0, $0, 0
TAG726:
sll $0, $0, 0
xori $3, $2, 14
addiu $3, $3, 13
mthi $2
TAG727:
divu $3, $3
mthi $3
bltz $3, TAG728
mtlo $3
TAG728:
divu $3, $3
mthi $3
bne $3, $3, TAG729
addiu $1, $3, 7
TAG729:
bne $1, $1, TAG730
lui $3, 7
slti $1, $3, 13
bgez $1, TAG730
TAG730:
mfhi $3
sll $0, $0, 0
bgtz $3, TAG731
mult $1, $1
TAG731:
sll $0, $0, 0
sll $3, $2, 8
mtlo $2
mfhi $2
TAG732:
lui $1, 1
bgez $1, TAG733
lb $1, 0($2)
mult $2, $1
TAG733:
lb $1, 0($1)
lui $2, 14
bgez $1, TAG734
mthi $2
TAG734:
bne $2, $2, TAG735
nor $4, $2, $2
beq $2, $4, TAG735
lui $1, 4
TAG735:
beq $1, $1, TAG736
lui $4, 13
mfhi $2
lb $1, 0($2)
TAG736:
lui $1, 3
mthi $1
sll $0, $0, 0
bne $1, $3, TAG737
TAG737:
multu $3, $3
mfhi $1
sra $1, $3, 2
andi $1, $3, 1
TAG738:
sub $3, $1, $1
bltz $3, TAG739
mfhi $3
sub $3, $3, $1
TAG739:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG740
TAG740:
andi $4, $3, 6
sll $0, $0, 0
lui $2, 13
bne $1, $2, TAG741
TAG741:
mflo $2
beq $2, $2, TAG742
mthi $2
ori $2, $2, 0
TAG742:
mtlo $2
addu $2, $2, $2
sh $2, 0($2)
blez $2, TAG743
TAG743:
mtlo $2
mflo $4
div $2, $2
lh $1, 0($4)
TAG744:
slti $4, $1, 10
mflo $1
mfhi $2
bgtz $1, TAG745
TAG745:
ori $4, $2, 15
or $4, $2, $2
mtlo $2
mflo $2
TAG746:
xori $3, $2, 12
mult $3, $3
slti $1, $2, 13
lb $2, 0($1)
TAG747:
lbu $4, 0($2)
divu $2, $2
mthi $2
blez $4, TAG748
TAG748:
nor $1, $4, $4
andi $4, $4, 7
lui $2, 10
xor $2, $4, $2
TAG749:
bltz $2, TAG750
mflo $4
bgtz $2, TAG750
xori $1, $4, 3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop