ori $1, $0, 14
ori $2, $0, 14
ori $3, $0, 14
ori $4, $0, 10
sw $2, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $2, 20($0)
sw $1, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $2, 80($0)
sw $2, 84($0)
sw $3, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $3, 120($0)
sw $4, 124($0)
div $2, $2
bne $2, $2, TAG1
mtlo $2
lui $4, 7
TAG1:
bne $4, $4, TAG2
sll $0, $0, 0
lui $2, 0
beq $2, $2, TAG2
TAG2:
mfhi $4
bne $2, $4, TAG3
lh $1, 0($2)
sh $1, 0($1)
TAG3:
sh $1, 0($1)
divu $1, $1
lh $2, 0($1)
sh $2, 0($1)
TAG4:
beq $2, $2, TAG5
mtlo $2
lw $3, 0($2)
srl $2, $3, 9
TAG5:
lui $1, 4
srlv $4, $2, $1
divu $4, $2
mthi $1
TAG6:
bne $4, $4, TAG7
mfhi $4
srl $2, $4, 0
mfhi $1
TAG7:
sll $0, $0, 0
lui $1, 3
bne $1, $1, TAG8
sll $0, $0, 0
TAG8:
andi $3, $2, 7
bgtz $2, TAG9
srlv $3, $2, $3
divu $2, $2
TAG9:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
multu $4, $4
TAG10:
mthi $4
mtlo $4
beq $4, $4, TAG11
sll $0, $0, 0
TAG11:
lui $3, 14
subu $2, $3, $3
sll $1, $2, 10
mtlo $1
TAG12:
sll $3, $1, 4
lui $2, 3
add $2, $1, $1
lw $2, 0($3)
TAG13:
lhu $1, 0($2)
subu $4, $1, $1
mtlo $2
lui $1, 2
TAG14:
addu $1, $1, $1
bne $1, $1, TAG15
srav $2, $1, $1
mfhi $1
TAG15:
bgtz $1, TAG16
multu $1, $1
bgez $1, TAG16
mfhi $3
TAG16:
mflo $1
multu $3, $3
mflo $3
sb $1, 0($3)
TAG17:
xori $2, $3, 3
subu $3, $2, $3
bne $2, $3, TAG18
sb $2, 0($2)
TAG18:
addu $3, $3, $3
divu $3, $3
slti $2, $3, 9
sb $2, 0($2)
TAG19:
beq $2, $2, TAG20
multu $2, $2
mflo $4
mthi $4
TAG20:
multu $4, $4
lw $4, 0($4)
blez $4, TAG21
mfhi $2
TAG21:
multu $2, $2
mfhi $1
addiu $2, $1, 2
andi $1, $2, 8
TAG22:
andi $3, $1, 13
lui $2, 3
lhu $4, 0($1)
beq $1, $1, TAG23
TAG23:
mult $4, $4
bgtz $4, TAG24
ori $2, $4, 11
sw $2, 0($4)
TAG24:
bgez $2, TAG25
multu $2, $2
addi $3, $2, 6
mtlo $2
TAG25:
lhu $4, 0($3)
bne $4, $4, TAG26
sb $3, -256($4)
beq $4, $4, TAG26
TAG26:
mult $4, $4
sw $4, -256($4)
mthi $4
beq $4, $4, TAG27
TAG27:
sw $4, -256($4)
bltz $4, TAG28
div $4, $4
divu $4, $4
TAG28:
mtlo $4
bgtz $4, TAG29
mflo $4
bgez $4, TAG29
TAG29:
mtlo $4
mtlo $4
blez $4, TAG30
lhu $2, -256($4)
TAG30:
mtlo $2
beq $2, $2, TAG31
or $2, $2, $2
or $3, $2, $2
TAG31:
bne $3, $3, TAG32
lhu $4, 0($3)
multu $4, $4
bne $3, $3, TAG32
TAG32:
srl $4, $4, 6
srav $2, $4, $4
andi $3, $2, 9
lbu $2, 0($2)
TAG33:
mthi $2
lui $2, 5
sll $0, $0, 0
or $2, $2, $2
TAG34:
bltz $2, TAG35
subu $4, $2, $2
sll $0, $0, 0
lhu $3, 0($4)
TAG35:
bgtz $3, TAG36
slt $1, $3, $3
mfhi $4
add $2, $1, $3
TAG36:
mthi $2
srlv $4, $2, $2
slti $2, $4, 15
mflo $2
TAG37:
sll $0, $0, 0
lui $4, 10
sll $0, $0, 0
lui $4, 7
TAG38:
sll $2, $4, 1
sll $0, $0, 0
bgtz $4, TAG39
mflo $1
TAG39:
lui $3, 12
divu $3, $3
mult $1, $3
nor $4, $1, $1
TAG40:
lui $2, 0
andi $2, $4, 5
bne $2, $2, TAG41
lui $4, 8
TAG41:
div $4, $4
srl $4, $4, 12
beq $4, $4, TAG42
mthi $4
TAG42:
bgez $4, TAG43
multu $4, $4
addi $2, $4, 13
mfhi $1
TAG43:
mflo $3
andi $3, $1, 6
sltiu $1, $3, 6
mtlo $1
TAG44:
mult $1, $1
beq $1, $1, TAG45
andi $2, $1, 13
divu $2, $2
TAG45:
mthi $2
lui $2, 7
slt $1, $2, $2
mult $1, $1
TAG46:
bgez $1, TAG47
lw $2, 0($1)
bgtz $1, TAG47
sb $1, 0($2)
TAG47:
sllv $3, $2, $2
sw $3, -256($2)
div $2, $2
sb $2, -256($2)
TAG48:
multu $3, $3
xori $4, $3, 8
bne $3, $4, TAG49
xori $3, $3, 1
TAG49:
bgtz $3, TAG50
mfhi $4
lw $3, 0($3)
beq $3, $3, TAG50
TAG50:
mthi $3
bne $3, $3, TAG51
mfhi $3
lui $2, 11
TAG51:
mtlo $2
bne $2, $2, TAG52
sltiu $1, $2, 0
mflo $3
TAG52:
sllv $1, $3, $3
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG53
TAG53:
mfhi $1
mtlo $1
bltz $1, TAG54
nor $1, $1, $1
TAG54:
mflo $3
nor $2, $1, $1
lh $1, -257($3)
lui $2, 8
TAG55:
mflo $2
lui $3, 15
mult $2, $2
blez $2, TAG56
TAG56:
addiu $1, $3, 0
beq $3, $1, TAG57
mfhi $1
lui $2, 10
TAG57:
andi $4, $2, 2
mtlo $4
mthi $2
mthi $4
TAG58:
bgtz $4, TAG59
sw $4, 0($4)
bltz $4, TAG59
lhu $3, 0($4)
TAG59:
bgez $3, TAG60
slti $3, $3, 9
blez $3, TAG60
ori $3, $3, 14
TAG60:
mfhi $2
mtlo $3
bne $3, $3, TAG61
ori $3, $3, 0
TAG61:
subu $2, $3, $3
lui $2, 15
bgtz $3, TAG62
lui $3, 8
TAG62:
bne $3, $3, TAG63
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG63:
mthi $3
sll $0, $0, 0
mthi $2
lui $3, 2
TAG64:
mthi $3
sra $4, $3, 15
subu $1, $4, $4
bltz $1, TAG65
TAG65:
sw $1, 0($1)
sw $1, 0($1)
sltu $4, $1, $1
sllv $4, $1, $4
TAG66:
sw $4, 0($4)
mtlo $4
lh $3, 0($4)
bne $4, $3, TAG67
TAG67:
mthi $3
mfhi $4
beq $4, $3, TAG68
sw $4, 0($4)
TAG68:
srav $1, $4, $4
mult $1, $1
lb $2, 0($4)
bne $2, $1, TAG69
TAG69:
mfhi $4
srl $1, $2, 6
mult $2, $1
sh $1, 0($4)
TAG70:
sh $1, 0($1)
bgez $1, TAG71
lw $3, 0($1)
lhu $1, 0($1)
TAG71:
lui $2, 9
lb $1, 0($1)
bne $2, $1, TAG72
ori $3, $1, 6
TAG72:
beq $3, $3, TAG73
multu $3, $3
lh $3, 0($3)
addi $4, $3, 5
TAG73:
lb $2, 0($4)
mfhi $4
lbu $4, 0($4)
sra $1, $4, 14
TAG74:
bgez $1, TAG75
mtlo $1
multu $1, $1
lhu $1, 0($1)
TAG75:
mflo $2
bne $1, $2, TAG76
mthi $1
mflo $1
TAG76:
multu $1, $1
sw $1, 0($1)
lui $2, 11
bgtz $1, TAG77
TAG77:
mult $2, $2
sll $0, $0, 0
addu $4, $2, $2
mthi $2
TAG78:
mtlo $4
lui $2, 5
addu $1, $4, $2
bgtz $4, TAG79
TAG79:
div $1, $1
srl $4, $1, 12
addiu $3, $1, 1
divu $3, $3
TAG80:
beq $3, $3, TAG81
mtlo $3
sb $3, 0($3)
sltu $1, $3, $3
TAG81:
beq $1, $1, TAG82
mult $1, $1
multu $1, $1
bne $1, $1, TAG82
TAG82:
lui $4, 2
or $3, $4, $1
mthi $1
slti $4, $4, 0
TAG83:
beq $4, $4, TAG84
lui $2, 15
sub $4, $2, $4
sltu $3, $4, $2
TAG84:
lui $1, 5
sll $0, $0, 0
bgez $1, TAG85
sll $0, $0, 0
TAG85:
sll $0, $0, 0
lui $4, 13
div $4, $4
sll $0, $0, 0
TAG86:
bne $1, $1, TAG87
sltiu $3, $1, 9
multu $1, $3
addiu $2, $1, 13
TAG87:
mthi $2
subu $1, $2, $2
mult $1, $2
beq $2, $1, TAG88
TAG88:
lui $4, 1
mthi $4
beq $4, $1, TAG89
sll $1, $1, 14
TAG89:
sb $1, 0($1)
mfhi $1
bgez $1, TAG90
andi $4, $1, 13
TAG90:
lbu $1, 0($4)
beq $1, $4, TAG91
multu $1, $1
bgez $1, TAG91
TAG91:
mtlo $1
bne $1, $1, TAG92
mflo $3
mthi $3
TAG92:
mtlo $3
mfhi $4
beq $3, $3, TAG93
lui $3, 2
TAG93:
bgez $3, TAG94
sll $0, $0, 0
div $3, $1
lw $4, 0($1)
TAG94:
lh $3, 0($4)
mfhi $4
lui $3, 5
blez $3, TAG95
TAG95:
sll $0, $0, 0
sll $4, $3, 7
beq $3, $1, TAG96
mflo $1
TAG96:
lui $1, 8
sll $0, $0, 0
lui $2, 13
mthi $1
TAG97:
lui $2, 10
andi $3, $2, 5
bgtz $2, TAG98
multu $2, $3
TAG98:
mtlo $3
lb $3, 0($3)
beq $3, $3, TAG99
multu $3, $3
TAG99:
sh $3, 0($3)
addu $4, $3, $3
mthi $4
mtlo $3
TAG100:
lui $4, 2
bne $4, $4, TAG101
mthi $4
beq $4, $4, TAG101
TAG101:
sll $0, $0, 0
addu $1, $4, $3
div $4, $4
divu $1, $1
TAG102:
xori $3, $1, 11
sll $0, $0, 0
divu $3, $1
beq $1, $1, TAG103
TAG103:
divu $3, $3
sll $0, $0, 0
div $2, $2
bne $2, $3, TAG104
TAG104:
addiu $4, $2, 7
multu $2, $4
lui $3, 12
sll $0, $0, 0
TAG105:
div $3, $3
blez $3, TAG106
divu $3, $3
bltz $3, TAG106
TAG106:
sll $0, $0, 0
lui $4, 12
and $4, $4, $4
mthi $4
TAG107:
mthi $4
sll $0, $0, 0
beq $4, $4, TAG108
sll $0, $0, 0
TAG108:
sll $0, $0, 0
multu $4, $4
sra $4, $4, 11
bgtz $4, TAG109
TAG109:
sll $0, $0, 0
xori $3, $3, 12
addiu $4, $3, 10
bltz $3, TAG110
TAG110:
divu $4, $4
div $4, $4
xor $1, $4, $4
subu $1, $1, $4
TAG111:
mthi $1
slti $3, $1, 1
divu $1, $1
mfhi $2
TAG112:
beq $2, $2, TAG113
slti $3, $2, 10
mflo $4
divu $3, $4
TAG113:
lui $4, 9
mflo $1
mtlo $4
multu $4, $1
TAG114:
bltz $1, TAG115
divu $1, $1
sltiu $2, $1, 9
lbu $2, 0($2)
TAG115:
addiu $1, $2, 10
blez $1, TAG116
lui $2, 9
lui $3, 6
TAG116:
sll $0, $0, 0
srlv $3, $3, $3
sll $0, $0, 0
mthi $3
TAG117:
lui $4, 4
lui $2, 1
divu $2, $3
mult $3, $4
TAG118:
sll $0, $0, 0
xori $2, $2, 9
mult $2, $2
mtlo $2
TAG119:
addu $2, $2, $2
srav $2, $2, $2
mtlo $2
mult $2, $2
TAG120:
addu $3, $2, $2
mthi $3
sll $2, $3, 5
lui $2, 2
TAG121:
sll $0, $0, 0
mflo $2
bgtz $2, TAG122
mflo $3
TAG122:
or $3, $3, $3
lb $4, 0($3)
lui $1, 10
addi $1, $4, 14
TAG123:
sh $1, 0($1)
bltz $1, TAG124
addiu $1, $1, 7
lbu $4, 0($1)
TAG124:
mtlo $4
mfhi $1
mflo $3
mfhi $2
TAG125:
mthi $2
lw $4, 0($2)
beq $4, $4, TAG126
sw $2, 0($2)
TAG126:
mtlo $4
lbu $2, 0($4)
sh $4, 0($4)
lui $3, 2
TAG127:
bltz $3, TAG128
xori $2, $3, 12
lui $1, 9
lui $1, 2
TAG128:
addiu $1, $1, 13
slti $3, $1, 4
mfhi $3
mthi $3
TAG129:
mthi $3
sltu $4, $3, $3
lb $1, 0($3)
lhu $4, 0($4)
TAG130:
multu $4, $4
blez $4, TAG131
mfhi $2
beq $2, $2, TAG131
TAG131:
addi $3, $2, 9
multu $2, $3
mthi $3
sll $3, $3, 11
TAG132:
sh $3, -18432($3)
bne $3, $3, TAG133
mfhi $4
beq $4, $4, TAG133
TAG133:
mthi $4
addu $2, $4, $4
bne $2, $2, TAG134
lui $4, 5
TAG134:
or $4, $4, $4
mthi $4
mtlo $4
divu $4, $4
TAG135:
sll $0, $0, 0
sltiu $3, $4, 11
sh $4, 0($3)
sll $0, $0, 0
TAG136:
mtlo $3
bne $3, $3, TAG137
multu $3, $3
mtlo $3
TAG137:
mthi $3
slt $1, $3, $3
lbu $2, 0($3)
bne $1, $3, TAG138
TAG138:
lhu $2, 0($2)
sb $2, 0($2)
and $4, $2, $2
bltz $4, TAG139
TAG139:
mthi $4
beq $4, $4, TAG140
mult $4, $4
mtlo $4
TAG140:
mfhi $4
beq $4, $4, TAG141
multu $4, $4
mflo $1
TAG141:
blez $1, TAG142
mult $1, $1
bltz $1, TAG142
sb $1, 0($1)
TAG142:
slt $3, $1, $1
mflo $3
beq $3, $3, TAG143
lh $3, 0($3)
TAG143:
beq $3, $3, TAG144
mflo $3
lui $1, 12
mult $3, $1
TAG144:
sb $1, 0($1)
blez $1, TAG145
lbu $3, 0($1)
xori $4, $3, 9
TAG145:
sw $4, 0($4)
mflo $2
srl $2, $2, 1
beq $2, $4, TAG146
TAG146:
multu $2, $2
blez $2, TAG147
mtlo $2
sllv $1, $2, $2
TAG147:
mthi $1
bltz $1, TAG148
lui $2, 13
bne $2, $1, TAG148
TAG148:
sll $0, $0, 0
sll $0, $0, 0
sw $4, 0($4)
blez $4, TAG149
TAG149:
lbu $4, 0($4)
lui $3, 2
slti $1, $3, 15
andi $2, $4, 15
TAG150:
mtlo $2
mult $2, $2
mult $2, $2
slti $2, $2, 8
TAG151:
sb $2, 0($2)
bne $2, $2, TAG152
xor $4, $2, $2
sb $2, 0($4)
TAG152:
mult $4, $4
lb $1, 0($4)
mthi $4
mflo $3
TAG153:
lui $4, 12
lui $2, 11
bne $4, $2, TAG154
sll $0, $0, 0
TAG154:
multu $2, $2
mthi $2
xor $2, $2, $2
mfhi $2
TAG155:
sll $4, $2, 13
bne $2, $4, TAG156
sll $0, $0, 0
mfhi $4
TAG156:
sll $0, $0, 0
bgtz $4, TAG157
ori $4, $4, 9
xor $4, $3, $4
TAG157:
mult $4, $4
mflo $2
bltz $4, TAG158
sll $0, $0, 0
TAG158:
sll $0, $0, 0
blez $2, TAG159
mult $2, $2
sb $2, 0($2)
TAG159:
lui $4, 13
or $4, $4, $2
mult $4, $4
mfhi $1
TAG160:
mtlo $1
bne $1, $1, TAG161
ori $2, $1, 2
mfhi $2
TAG161:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG162:
lui $2, 13
mtlo $2
mthi $2
sll $0, $0, 0
TAG163:
mfhi $1
sll $0, $0, 0
lui $2, 6
mthi $1
TAG164:
addiu $2, $2, 4
lui $4, 0
xori $4, $4, 2
bgtz $2, TAG165
TAG165:
lhu $2, 0($4)
sltu $2, $4, $4
lui $2, 14
mthi $2
TAG166:
bltz $2, TAG167
div $2, $2
mflo $1
andi $4, $2, 15
TAG167:
bgtz $4, TAG168
sltiu $2, $4, 6
sll $2, $4, 11
blez $2, TAG168
TAG168:
sh $2, 0($2)
blez $2, TAG169
srav $1, $2, $2
blez $1, TAG169
TAG169:
nor $2, $1, $1
mthi $2
lw $4, 0($1)
sh $1, 0($1)
TAG170:
sw $4, 0($4)
lui $2, 8
lui $2, 4
mtlo $2
TAG171:
slt $2, $2, $2
mfhi $2
srav $4, $2, $2
subu $3, $2, $2
TAG172:
sllv $4, $3, $3
lbu $2, 0($3)
sub $1, $2, $2
blez $4, TAG173
TAG173:
mult $1, $1
sw $1, 0($1)
lui $2, 11
lui $1, 2
TAG174:
lui $2, 14
bgtz $1, TAG175
nor $1, $2, $2
lui $2, 1
TAG175:
sll $0, $0, 0
mthi $2
lui $4, 8
sllv $4, $4, $2
TAG176:
lui $1, 0
beq $4, $1, TAG177
lui $1, 7
divu $1, $4
TAG177:
mult $1, $1
sra $4, $1, 3
sltu $2, $4, $4
beq $4, $2, TAG178
TAG178:
lbu $1, 0($2)
sltu $3, $1, $1
lui $3, 11
nor $4, $3, $3
TAG179:
addu $1, $4, $4
mult $1, $1
multu $4, $4
mfhi $3
TAG180:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
mflo $4
TAG181:
bgez $4, TAG182
sll $0, $0, 0
srl $2, $2, 9
bgtz $4, TAG182
TAG182:
mult $2, $2
lui $2, 0
lui $3, 14
lui $2, 11
TAG183:
lui $3, 5
sll $0, $0, 0
div $3, $3
lui $4, 1
TAG184:
bltz $4, TAG185
sll $0, $0, 0
or $1, $4, $4
addiu $2, $4, 7
TAG185:
sll $2, $2, 10
mflo $4
addu $1, $2, $2
subu $2, $2, $2
TAG186:
nor $1, $2, $2
sh $2, 1($1)
mtlo $2
andi $1, $1, 8
TAG187:
bgez $1, TAG188
lb $1, 0($1)
lbu $4, 0($1)
lhu $2, 0($4)
TAG188:
bgtz $2, TAG189
mthi $2
sb $2, 0($2)
mtlo $2
TAG189:
addi $2, $2, 6
mtlo $2
addiu $4, $2, 14
mult $4, $2
TAG190:
mthi $4
lui $3, 2
mflo $4
nor $1, $4, $4
TAG191:
sb $1, 121($1)
xori $1, $1, 1
beq $1, $1, TAG192
lb $3, 122($1)
TAG192:
lui $4, 7
lui $3, 11
divu $4, $3
sll $0, $0, 0
TAG193:
lui $3, 7
lui $1, 9
slti $3, $1, 9
mtlo $3
TAG194:
bltz $3, TAG195
lbu $1, 0($3)
mflo $2
sll $3, $3, 3
TAG195:
mthi $3
sb $3, 0($3)
mtlo $3
xori $3, $3, 6
TAG196:
bne $3, $3, TAG197
sra $4, $3, 0
sh $3, 0($3)
sll $3, $4, 4
TAG197:
blez $3, TAG198
mthi $3
lbu $1, 0($3)
lui $3, 4
TAG198:
div $3, $3
mtlo $3
sll $0, $0, 0
divu $3, $3
TAG199:
addiu $4, $3, 1
sll $0, $0, 0
beq $2, $4, TAG200
sll $0, $0, 0
TAG200:
lui $2, 0
srl $4, $2, 13
lui $4, 1
xor $3, $4, $4
TAG201:
multu $3, $3
beq $3, $3, TAG202
sub $4, $3, $3
mfhi $1
TAG202:
mthi $1
mfhi $3
xor $1, $3, $1
mfhi $3
TAG203:
lbu $1, 0($3)
sllv $4, $1, $3
mfhi $4
blez $4, TAG204
TAG204:
sh $4, 0($4)
mtlo $4
bltz $4, TAG205
sh $4, 0($4)
TAG205:
beq $4, $4, TAG206
sltiu $1, $4, 11
div $4, $4
bgez $1, TAG206
TAG206:
lui $3, 10
srl $2, $1, 1
beq $3, $1, TAG207
mult $2, $1
TAG207:
beq $2, $2, TAG208
mthi $2
div $2, $2
bgez $2, TAG208
TAG208:
slti $4, $2, 0
sb $2, 0($2)
lhu $4, 0($2)
bgez $4, TAG209
TAG209:
lhu $3, 0($4)
sb $4, 0($4)
srav $2, $4, $3
ori $3, $4, 13
TAG210:
blez $3, TAG211
mflo $2
multu $3, $3
bgtz $3, TAG211
TAG211:
mflo $3
ori $4, $2, 13
mfhi $2
multu $2, $2
TAG212:
multu $2, $2
lui $2, 5
ori $4, $2, 11
blez $2, TAG213
TAG213:
sll $0, $0, 0
xori $4, $4, 8
bne $4, $4, TAG214
sll $0, $0, 0
TAG214:
lui $4, 6
bgez $4, TAG215
divu $4, $4
bgtz $1, TAG215
TAG215:
sll $1, $4, 8
lui $2, 14
divu $1, $1
divu $1, $4
TAG216:
srlv $2, $2, $2
bltz $2, TAG217
lui $3, 9
lui $1, 7
TAG217:
mtlo $1
addiu $3, $1, 14
lui $3, 11
mtlo $1
TAG218:
lui $2, 2
bltz $2, TAG219
mtlo $3
sll $4, $3, 4
TAG219:
mflo $4
divu $4, $4
slt $4, $4, $4
bgez $4, TAG220
TAG220:
sb $4, 0($4)
mflo $4
srl $2, $4, 11
addiu $1, $2, 8
TAG221:
mtlo $1
sllv $4, $1, $1
bgtz $1, TAG222
sh $1, -2048($4)
TAG222:
bne $4, $4, TAG223
multu $4, $4
lui $2, 2
bne $4, $4, TAG223
TAG223:
lui $2, 7
sll $0, $0, 0
mflo $4
div $4, $2
TAG224:
mthi $4
bne $4, $4, TAG225
mthi $4
sll $0, $0, 0
TAG225:
mtlo $4
or $3, $4, $4
mtlo $3
lui $3, 6
TAG226:
sll $0, $0, 0
mflo $4
mfhi $3
beq $3, $3, TAG227
TAG227:
div $3, $3
lui $2, 3
mtlo $3
mult $3, $2
TAG228:
andi $3, $2, 0
mult $3, $3
div $2, $2
bne $3, $3, TAG229
TAG229:
sw $3, 0($3)
lw $3, 0($3)
sltu $2, $3, $3
slt $3, $3, $2
TAG230:
andi $4, $3, 11
sw $4, 0($4)
lb $1, 0($4)
bgtz $3, TAG231
TAG231:
mtlo $1
mult $1, $1
lui $4, 10
mtlo $1
TAG232:
lui $2, 5
bgez $4, TAG233
mtlo $2
mflo $3
TAG233:
beq $3, $3, TAG234
sw $3, 0($3)
beq $3, $3, TAG234
mtlo $3
TAG234:
bltz $3, TAG235
lw $4, 0($3)
bgez $3, TAG235
mult $3, $3
TAG235:
lui $3, 1
lw $4, 0($4)
lui $4, 11
div $4, $4
TAG236:
sll $0, $0, 0
blez $2, TAG237
lui $2, 12
div $2, $4
TAG237:
mthi $2
sll $1, $2, 12
sll $2, $2, 9
lui $3, 12
TAG238:
beq $3, $3, TAG239
nor $1, $3, $3
addiu $3, $1, 15
bgez $1, TAG239
TAG239:
srav $4, $3, $3
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG240:
mtlo $4
lui $3, 6
sll $0, $0, 0
lui $2, 14
TAG241:
bltz $2, TAG242
and $4, $2, $2
bltz $2, TAG242
mthi $4
TAG242:
sll $4, $4, 7
sll $3, $4, 6
beq $4, $4, TAG243
lui $3, 3
TAG243:
bgtz $3, TAG244
sll $0, $0, 0
mfhi $4
beq $1, $1, TAG244
TAG244:
sll $0, $0, 0
beq $4, $4, TAG245
sllv $4, $4, $4
andi $4, $2, 1
TAG245:
beq $4, $4, TAG246
mflo $1
srl $2, $4, 11
or $4, $4, $4
TAG246:
divu $4, $4
and $1, $4, $4
xori $1, $1, 5
lui $4, 12
TAG247:
mfhi $2
mfhi $1
mfhi $4
mthi $4
TAG248:
bltz $4, TAG249
mthi $4
sb $4, 0($4)
mflo $1
TAG249:
divu $1, $1
bgez $1, TAG250
lui $1, 9
mthi $1
TAG250:
sra $4, $1, 11
mflo $2
sll $0, $0, 0
mfhi $1
TAG251:
bne $1, $1, TAG252
mult $1, $1
mult $1, $1
beq $1, $1, TAG252
TAG252:
slt $4, $1, $1
lui $3, 7
lhu $4, 0($4)
lui $3, 3
TAG253:
sll $0, $0, 0
bne $3, $3, TAG254
sll $0, $0, 0
multu $3, $3
TAG254:
lbu $2, 0($2)
mtlo $2
lui $4, 14
lbu $2, 0($2)
TAG255:
lw $3, 0($2)
sltiu $4, $3, 2
lh $4, 0($3)
lui $3, 9
TAG256:
mthi $3
div $3, $3
and $4, $3, $3
sltiu $3, $4, 4
TAG257:
lh $1, 0($3)
lui $4, 10
mtlo $1
bne $1, $4, TAG258
TAG258:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 0
mult $2, $4
TAG259:
mfhi $1
sw $1, 0($1)
lh $4, 0($1)
lui $2, 4
TAG260:
divu $2, $2
lui $3, 14
blez $3, TAG261
divu $2, $2
TAG261:
sra $2, $3, 7
sll $0, $0, 0
bgtz $2, TAG262
slti $3, $2, 12
TAG262:
beq $3, $3, TAG263
sh $3, 0($3)
sltu $2, $3, $3
sh $2, 0($3)
TAG263:
lui $1, 8
mthi $2
bgez $2, TAG264
divu $1, $2
TAG264:
srav $2, $1, $1
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG265:
sllv $4, $4, $4
nor $1, $4, $4
sw $4, 0($4)
xor $4, $4, $4
TAG266:
beq $4, $4, TAG267
mfhi $1
addiu $3, $4, 6
srl $2, $3, 7
TAG267:
sltu $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
lui $2, 6
TAG268:
mthi $2
mtlo $2
mthi $2
mflo $1
TAG269:
mult $1, $1
mfhi $4
addu $4, $1, $4
sll $0, $0, 0
TAG270:
mthi $3
addi $2, $3, 0
bne $2, $3, TAG271
sh $3, 0($3)
TAG271:
mtlo $2
lh $2, 0($2)
lui $2, 9
bltz $2, TAG272
TAG272:
sllv $1, $2, $2
lui $3, 15
bltz $3, TAG273
sltu $4, $2, $2
TAG273:
mflo $2
blez $4, TAG274
lbu $4, 0($4)
bne $2, $4, TAG274
TAG274:
sltiu $1, $4, 2
bne $4, $4, TAG275
mfhi $2
beq $4, $2, TAG275
TAG275:
lh $2, 0($2)
sw $2, 0($2)
multu $2, $2
lbu $3, 0($2)
TAG276:
mfhi $3
mthi $3
lui $2, 7
lui $4, 0
TAG277:
blez $4, TAG278
srlv $3, $4, $4
bne $3, $3, TAG278
lui $1, 5
TAG278:
sb $1, 0($1)
sltiu $3, $1, 7
bgez $3, TAG279
sb $3, 0($3)
TAG279:
sb $3, 0($3)
beq $3, $3, TAG280
addu $2, $3, $3
sllv $4, $3, $2
TAG280:
sw $4, 0($4)
sb $4, 0($4)
nor $3, $4, $4
bltz $4, TAG281
TAG281:
sb $3, 1($3)
and $3, $3, $3
lb $2, 1($3)
mfhi $3
TAG282:
bltz $3, TAG283
lui $4, 7
sll $3, $4, 1
mflo $4
TAG283:
mtlo $4
mtlo $4
sb $4, 0($4)
beq $4, $4, TAG284
TAG284:
mfhi $4
mtlo $4
sb $4, 0($4)
addi $2, $4, 8
TAG285:
lui $2, 10
lui $1, 13
bltz $2, TAG286
mtlo $2
TAG286:
mthi $1
andi $3, $1, 11
lb $4, 0($3)
lui $2, 9
TAG287:
mthi $2
addiu $2, $2, 10
blez $2, TAG288
lui $4, 6
TAG288:
divu $4, $4
mfhi $1
subu $2, $4, $1
andi $1, $1, 6
TAG289:
mflo $4
lb $4, 0($4)
mfhi $4
lui $1, 3
TAG290:
sll $0, $0, 0
mult $1, $1
multu $1, $1
sll $0, $0, 0
TAG291:
mtlo $1
sll $0, $0, 0
divu $2, $1
sll $0, $0, 0
TAG292:
sll $0, $0, 0
sll $0, $0, 0
mult $2, $4
multu $4, $4
TAG293:
bltz $4, TAG294
srav $4, $4, $4
addi $1, $4, 5
mtlo $1
TAG294:
bgez $1, TAG295
sb $1, 0($1)
bgtz $1, TAG295
lh $1, 0($1)
TAG295:
mfhi $2
bltz $1, TAG296
sb $2, 0($1)
bltz $2, TAG296
TAG296:
lbu $4, 0($2)
lui $3, 3
sll $0, $0, 0
mfhi $1
TAG297:
sh $1, 0($1)
lw $3, 0($1)
bne $3, $3, TAG298
mtlo $1
TAG298:
sllv $3, $3, $3
add $4, $3, $3
lbu $2, 0($3)
mult $3, $3
TAG299:
mfhi $3
sb $3, 0($2)
bltz $2, TAG300
mflo $4
TAG300:
bne $4, $4, TAG301
mthi $4
lui $1, 15
bltz $4, TAG301
TAG301:
subu $3, $1, $1
slti $1, $1, 8
mtlo $3
lui $4, 15
TAG302:
sra $3, $4, 2
sll $0, $0, 0
multu $4, $3
lui $3, 15
TAG303:
bne $3, $3, TAG304
mflo $1
sll $0, $0, 0
beq $3, $1, TAG304
TAG304:
addu $4, $1, $1
multu $1, $1
mtlo $1
sll $0, $0, 0
TAG305:
bne $2, $2, TAG306
sh $2, 0($2)
sh $2, 0($2)
lui $1, 9
TAG306:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG307
subu $3, $1, $1
TAG307:
mfhi $1
mfhi $1
mflo $2
mult $1, $1
TAG308:
sltu $4, $2, $2
sh $2, 0($4)
subu $1, $2, $2
div $2, $2
TAG309:
mflo $2
lb $3, 0($1)
lh $4, 0($3)
multu $1, $4
TAG310:
lui $1, 6
addiu $1, $4, 8
lb $1, 0($1)
beq $1, $1, TAG311
TAG311:
mthi $1
sh $1, 0($1)
bltz $1, TAG312
ori $1, $1, 11
TAG312:
sb $1, 0($1)
beq $1, $1, TAG313
divu $1, $1
bltz $1, TAG313
TAG313:
mfhi $4
srl $4, $4, 1
lui $2, 7
sw $4, 0($4)
TAG314:
andi $1, $2, 11
mthi $1
sll $0, $0, 0
sll $2, $1, 5
TAG315:
srav $1, $2, $2
sb $2, 0($1)
addiu $1, $2, 12
lb $1, 0($1)
TAG316:
srlv $1, $1, $1
lui $1, 10
lui $2, 9
bgtz $1, TAG317
TAG317:
andi $3, $2, 15
sllv $1, $3, $3
mflo $2
divu $1, $2
TAG318:
sb $2, 0($2)
lui $4, 1
slti $3, $4, 0
slti $1, $2, 9
TAG319:
lui $1, 3
nor $3, $1, $1
sll $0, $0, 0
mult $1, $1
TAG320:
bne $1, $1, TAG321
srlv $3, $1, $1
multu $3, $3
sll $0, $0, 0
TAG321:
mfhi $3
beq $3, $3, TAG322
xori $3, $3, 15
slt $1, $3, $3
TAG322:
lui $2, 7
sll $0, $0, 0
sll $0, $0, 0
beq $2, $1, TAG323
TAG323:
divu $2, $2
sllv $3, $2, $2
addiu $1, $2, 3
lui $3, 13
TAG324:
bne $3, $3, TAG325
sll $0, $0, 0
bgtz $3, TAG325
lui $3, 14
TAG325:
bne $3, $3, TAG326
mthi $3
subu $2, $3, $3
beq $2, $3, TAG326
TAG326:
lui $2, 3
or $4, $2, $2
bgez $2, TAG327
divu $2, $4
TAG327:
mthi $4
sll $0, $0, 0
mult $4, $4
addu $1, $4, $4
TAG328:
xori $4, $1, 5
srl $3, $1, 8
bltz $3, TAG329
div $1, $4
TAG329:
sh $3, -1536($3)
beq $3, $3, TAG330
mthi $3
mflo $2
TAG330:
mthi $2
lui $4, 2
sll $0, $0, 0
blez $4, TAG331
TAG331:
mflo $1
sll $0, $0, 0
sll $0, $0, 0
sh $4, 0($1)
TAG332:
sh $1, 0($1)
mfhi $3
srav $2, $3, $1
mfhi $4
TAG333:
mthi $4
divu $4, $4
lui $1, 15
sll $0, $0, 0
TAG334:
lui $4, 0
addu $3, $1, $4
andi $4, $4, 14
bgez $3, TAG335
TAG335:
mfhi $2
beq $4, $4, TAG336
lui $1, 8
mthi $2
TAG336:
mfhi $2
lui $4, 14
lui $2, 14
lui $3, 6
TAG337:
mtlo $3
divu $3, $3
sll $0, $0, 0
multu $3, $3
TAG338:
bgtz $3, TAG339
mfhi $2
mthi $2
srl $1, $2, 1
TAG339:
bne $1, $1, TAG340
or $2, $1, $1
sll $0, $0, 0
bgez $2, TAG340
TAG340:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
beq $2, $1, TAG341
TAG341:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
mfhi $4
TAG342:
bltz $4, TAG343
mtlo $4
beq $4, $4, TAG343
lb $4, 0($4)
TAG343:
multu $4, $4
bne $4, $4, TAG344
lb $4, 0($4)
mtlo $4
TAG344:
lui $4, 3
mflo $3
bne $4, $4, TAG345
mfhi $1
TAG345:
bne $1, $1, TAG346
multu $1, $1
sra $4, $1, 9
mult $1, $4
TAG346:
and $2, $4, $4
srl $2, $4, 14
lw $4, 0($2)
mfhi $1
TAG347:
blez $1, TAG348
mfhi $1
bne $1, $1, TAG348
lui $1, 8
TAG348:
srl $4, $1, 5
lui $4, 5
mult $1, $4
sll $0, $0, 0
TAG349:
subu $1, $4, $4
mfhi $2
lui $4, 0
sh $2, 0($4)
TAG350:
beq $4, $4, TAG351
sw $4, 0($4)
bltz $4, TAG351
sw $4, 0($4)
TAG351:
lui $2, 3
divu $4, $2
multu $4, $2
bgez $2, TAG352
TAG352:
mult $2, $2
beq $2, $2, TAG353
sll $0, $0, 0
lui $3, 3
TAG353:
mtlo $3
lui $4, 9
mfhi $1
mflo $3
TAG354:
sh $3, 0($3)
lui $3, 12
mfhi $2
mult $3, $3
TAG355:
lb $2, 0($2)
lbu $1, 0($2)
sh $1, 0($1)
bgtz $2, TAG356
TAG356:
mfhi $1
blez $1, TAG357
xor $2, $1, $1
mflo $4
TAG357:
mtlo $4
sw $4, 0($4)
lh $3, 0($4)
ori $1, $4, 10
TAG358:
multu $1, $1
mthi $1
beq $1, $1, TAG359
div $1, $1
TAG359:
addiu $1, $1, 9
mtlo $1
lbu $1, 0($1)
mflo $3
TAG360:
sllv $4, $3, $3
sb $3, 0($3)
sll $1, $4, 1
andi $3, $4, 7
TAG361:
mult $3, $3
mthi $3
lhu $4, 0($3)
mult $3, $4
TAG362:
mtlo $4
or $2, $4, $4
or $1, $2, $4
sb $2, 0($4)
TAG363:
mult $1, $1
lh $2, 0($1)
lbu $2, 0($2)
multu $1, $2
TAG364:
andi $1, $2, 1
subu $2, $1, $2
lui $2, 0
lh $1, 0($2)
TAG365:
srl $4, $1, 11
lui $2, 10
beq $2, $4, TAG366
mult $4, $1
TAG366:
slt $4, $2, $2
sltiu $1, $4, 11
sb $1, 0($1)
bne $1, $4, TAG367
TAG367:
sb $1, 0($1)
lui $2, 6
divu $2, $2
sll $0, $0, 0
TAG368:
addiu $3, $3, 10
ori $4, $3, 1
beq $3, $4, TAG369
sltiu $1, $3, 7
TAG369:
bgez $1, TAG370
multu $1, $1
lui $3, 12
addiu $3, $3, 4
TAG370:
or $2, $3, $3
lh $2, 0($3)
mthi $3
bltz $2, TAG371
TAG371:
lui $4, 2
bltz $2, TAG372
and $3, $4, $4
sll $0, $0, 0
TAG372:
sltu $1, $2, $2
lh $4, 0($2)
sh $1, 0($2)
multu $4, $2
TAG373:
bltz $4, TAG374
sb $4, -256($4)
bne $4, $4, TAG374
sb $4, -256($4)
TAG374:
mfhi $1
mflo $4
mtlo $4
mfhi $2
TAG375:
or $3, $2, $2
mthi $2
blez $3, TAG376
lh $2, 0($3)
TAG376:
lui $3, 3
beq $2, $2, TAG377
mfhi $3
mfhi $1
TAG377:
lui $2, 13
beq $2, $1, TAG378
sltiu $2, $2, 4
bne $2, $2, TAG378
TAG378:
and $3, $2, $2
sh $2, 0($3)
mthi $3
lb $2, 0($2)
TAG379:
slt $3, $2, $2
mflo $3
lui $2, 3
blez $3, TAG380
TAG380:
lui $4, 0
bne $4, $4, TAG381
sltiu $3, $2, 5
mfhi $1
TAG381:
sh $1, 0($1)
sw $1, 0($1)
xor $1, $1, $1
blez $1, TAG382
TAG382:
andi $3, $1, 15
xori $4, $1, 14
bne $1, $1, TAG383
sh $4, 0($4)
TAG383:
lui $3, 12
mtlo $4
beq $3, $4, TAG384
lbu $3, 0($4)
TAG384:
lui $1, 3
bgez $3, TAG385
lui $2, 0
xori $1, $1, 14
TAG385:
lui $1, 8
xori $3, $1, 0
slti $4, $1, 14
beq $1, $4, TAG386
TAG386:
srlv $1, $4, $4
lh $4, 0($4)
mult $1, $1
multu $1, $4
TAG387:
subu $1, $4, $4
bgez $1, TAG388
sb $1, 0($1)
bne $1, $1, TAG388
TAG388:
mfhi $1
beq $1, $1, TAG389
lh $1, 0($1)
mfhi $4
TAG389:
lbu $1, 0($4)
blez $1, TAG390
sb $4, 0($1)
addi $1, $1, 6
TAG390:
mflo $3
lw $3, 0($3)
sll $3, $1, 12
blez $3, TAG391
TAG391:
lui $2, 5
xor $1, $3, $3
sllv $4, $1, $1
sll $0, $0, 0
TAG392:
mflo $1
lw $1, 0($4)
sltu $2, $1, $1
lhu $4, 0($1)
TAG393:
srl $2, $4, 15
bgtz $2, TAG394
sh $2, 0($4)
multu $2, $4
TAG394:
mtlo $2
blez $2, TAG395
mult $2, $2
mfhi $3
TAG395:
mfhi $4
mtlo $4
mthi $3
srav $3, $3, $4
TAG396:
sw $3, 0($3)
lhu $4, 0($3)
mult $4, $3
sh $3, 0($3)
TAG397:
mflo $4
lh $2, 0($4)
bgez $2, TAG398
mfhi $2
TAG398:
mfhi $2
sltu $1, $2, $2
mthi $2
srl $3, $2, 15
TAG399:
multu $3, $3
mult $3, $3
lui $2, 8
beq $3, $2, TAG400
TAG400:
addiu $3, $2, 3
mflo $4
mtlo $4
blez $2, TAG401
TAG401:
mtlo $4
lui $2, 5
multu $4, $4
sll $0, $0, 0
TAG402:
blez $2, TAG403
srlv $3, $2, $2
slt $4, $3, $2
mtlo $2
TAG403:
mfhi $1
beq $1, $1, TAG404
srav $1, $4, $4
lui $1, 13
TAG404:
mtlo $1
bltz $1, TAG405
mtlo $1
sw $1, 0($1)
TAG405:
mflo $3
xori $3, $3, 14
mthi $1
bgtz $1, TAG406
TAG406:
mflo $3
sub $4, $3, $3
mfhi $1
beq $1, $1, TAG407
TAG407:
lb $1, 0($1)
srlv $1, $1, $1
beq $1, $1, TAG408
lw $3, 0($1)
TAG408:
sb $3, 0($3)
mthi $3
mflo $2
bgtz $3, TAG409
TAG409:
lui $4, 0
blez $4, TAG410
lb $2, 0($2)
sb $2, 0($4)
TAG410:
nor $2, $2, $2
andi $2, $2, 11
beq $2, $2, TAG411
mtlo $2
TAG411:
subu $3, $2, $2
mflo $3
lb $2, 0($3)
bne $3, $2, TAG412
TAG412:
sh $2, 0($2)
mthi $2
sb $2, 0($2)
mult $2, $2
TAG413:
lui $3, 12
multu $3, $2
mtlo $3
mthi $2
TAG414:
bne $3, $3, TAG415
mflo $3
mult $3, $3
beq $3, $3, TAG415
TAG415:
sll $0, $0, 0
mfhi $1
divu $1, $3
beq $3, $1, TAG416
TAG416:
mthi $1
srav $1, $1, $1
blez $1, TAG417
lw $4, 0($1)
TAG417:
or $1, $4, $4
mfhi $2
div $2, $2
mthi $1
TAG418:
srlv $2, $2, $2
lui $2, 1
mfhi $4
mflo $4
TAG419:
sllv $3, $4, $4
mtlo $3
bltz $3, TAG420
srl $2, $3, 6
TAG420:
lw $4, 0($2)
and $3, $2, $4
beq $2, $4, TAG421
and $2, $3, $3
TAG421:
sh $2, 0($2)
sw $2, 0($2)
lui $1, 12
mflo $4
TAG422:
sllv $3, $4, $4
mtlo $3
mthi $3
bne $4, $4, TAG423
TAG423:
lbu $1, 0($3)
xori $4, $3, 2
xor $1, $4, $4
sra $3, $3, 11
TAG424:
sub $3, $3, $3
mflo $2
sh $2, 0($2)
sh $3, 0($2)
TAG425:
divu $2, $2
srl $3, $2, 15
mflo $4
divu $2, $4
TAG426:
sll $3, $4, 11
multu $4, $4
xor $4, $3, $3
bne $4, $4, TAG427
TAG427:
srav $2, $4, $4
mult $4, $4
multu $2, $4
sltu $2, $2, $4
TAG428:
multu $2, $2
bltz $2, TAG429
sb $2, 0($2)
bne $2, $2, TAG429
TAG429:
multu $2, $2
bgtz $2, TAG430
srav $1, $2, $2
multu $2, $2
TAG430:
lw $1, 0($1)
or $1, $1, $1
beq $1, $1, TAG431
lbu $2, 0($1)
TAG431:
mult $2, $2
lbu $3, 0($2)
sltiu $4, $3, 9
lh $1, 0($3)
TAG432:
sw $1, 0($1)
slt $2, $1, $1
multu $1, $1
sb $1, 0($2)
TAG433:
sh $2, 0($2)
mthi $2
mult $2, $2
sh $2, 0($2)
TAG434:
mult $2, $2
lh $1, 0($2)
multu $1, $2
mtlo $1
TAG435:
mult $1, $1
mflo $3
mthi $1
lui $1, 3
TAG436:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
ori $1, $1, 5
TAG437:
blez $1, TAG438
mtlo $1
sll $0, $0, 0
mflo $1
TAG438:
lui $1, 13
lui $4, 9
bne $4, $1, TAG439
mtlo $4
TAG439:
bne $4, $4, TAG440
lui $3, 7
mthi $4
sll $0, $0, 0
TAG440:
sll $0, $0, 0
bne $4, $4, TAG441
divu $4, $4
addu $4, $4, $4
TAG441:
mtlo $4
lui $1, 8
andi $1, $4, 3
mult $4, $1
TAG442:
sub $1, $1, $1
bltz $1, TAG443
sltiu $3, $1, 1
addu $1, $3, $1
TAG443:
bne $1, $1, TAG444
sb $1, 0($1)
mtlo $1
mthi $1
TAG444:
sb $1, 0($1)
beq $1, $1, TAG445
mfhi $2
lui $4, 1
TAG445:
beq $4, $4, TAG446
mthi $4
divu $4, $4
lui $2, 0
TAG446:
mthi $2
sb $2, 0($2)
bne $2, $2, TAG447
mfhi $4
TAG447:
lui $3, 4
lui $4, 4
mthi $4
bne $4, $4, TAG448
TAG448:
addu $3, $4, $4
multu $3, $4
mthi $3
sll $0, $0, 0
TAG449:
sll $0, $0, 0
lui $3, 2
beq $3, $3, TAG450
sll $0, $0, 0
TAG450:
sb $2, 0($2)
beq $2, $2, TAG451
lui $2, 13
lui $3, 6
TAG451:
multu $3, $3
ori $1, $3, 11
mthi $3
bgez $3, TAG452
TAG452:
mflo $3
mflo $4
mtlo $3
beq $4, $4, TAG453
TAG453:
multu $4, $4
multu $4, $4
multu $4, $4
beq $4, $4, TAG454
TAG454:
sw $4, 0($4)
mthi $4
mfhi $4
bne $4, $4, TAG455
TAG455:
lui $1, 0
nor $4, $1, $1
sh $1, 1($4)
lui $1, 15
TAG456:
mfhi $2
lui $4, 5
lui $1, 9
mfhi $4
TAG457:
lhu $4, 0($4)
lui $3, 6
bltz $4, TAG458
sw $3, 0($4)
TAG458:
mfhi $2
mtlo $2
mflo $3
subu $1, $3, $3
TAG459:
lui $3, 6
lui $4, 2
mthi $1
sb $1, 0($1)
TAG460:
beq $4, $4, TAG461
mflo $2
mfhi $4
bgtz $2, TAG461
TAG461:
mthi $4
mtlo $4
mfhi $2
or $4, $4, $4
TAG462:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG463:
multu $1, $1
mfhi $2
addu $4, $1, $2
blez $1, TAG464
TAG464:
mthi $4
addi $4, $4, 15
srlv $1, $4, $4
mtlo $4
TAG465:
mtlo $1
slti $1, $1, 14
mfhi $2
mfhi $1
TAG466:
mflo $1
srl $2, $1, 6
sw $1, 0($1)
addiu $4, $2, 4
TAG467:
bne $4, $4, TAG468
mfhi $2
lhu $3, 0($2)
mtlo $2
TAG468:
lbu $3, 0($3)
beq $3, $3, TAG469
lhu $4, 0($3)
bne $3, $4, TAG469
TAG469:
mfhi $4
lui $1, 7
sll $0, $0, 0
slti $4, $1, 11
TAG470:
srl $3, $4, 1
mult $4, $3
addiu $2, $3, 1
bgtz $4, TAG471
TAG471:
sb $2, 0($2)
mflo $4
lh $1, 0($4)
mtlo $1
TAG472:
bgtz $1, TAG473
lui $4, 13
lbu $2, 0($1)
bgtz $1, TAG473
TAG473:
lb $3, 0($2)
sb $2, 0($3)
mtlo $2
mfhi $3
TAG474:
mflo $2
addiu $2, $3, 5
multu $2, $2
div $2, $2
TAG475:
lbu $2, 0($2)
beq $2, $2, TAG476
sh $2, 0($2)
bgez $2, TAG476
TAG476:
addiu $3, $2, 9
addu $4, $3, $3
mthi $2
div $3, $4
TAG477:
sh $4, 0($4)
addiu $3, $4, 1
beq $3, $4, TAG478
mthi $4
TAG478:
mflo $2
sra $1, $3, 3
mtlo $3
addiu $1, $2, 7
TAG479:
mtlo $1
lb $4, 0($1)
sb $1, 0($1)
mflo $4
TAG480:
addiu $4, $4, 2
bgez $4, TAG481
lbu $4, 0($4)
and $4, $4, $4
TAG481:
slti $4, $4, 9
lbu $2, 0($4)
beq $4, $4, TAG482
mthi $2
TAG482:
bgtz $2, TAG483
lui $2, 2
sra $1, $2, 3
sll $0, $0, 0
TAG483:
mfhi $1
mtlo $4
lui $4, 6
mtlo $1
TAG484:
slt $1, $4, $4
mflo $2
lui $3, 5
bgtz $3, TAG485
TAG485:
sll $0, $0, 0
bne $3, $3, TAG486
slt $3, $3, $3
sb $3, 0($3)
TAG486:
slti $4, $3, 4
ori $3, $3, 3
mthi $3
slti $3, $3, 10
TAG487:
addu $2, $3, $3
ori $4, $3, 6
slt $2, $4, $3
lhu $2, 0($2)
TAG488:
or $3, $2, $2
multu $2, $3
lh $2, 0($2)
sll $2, $2, 12
TAG489:
sub $3, $2, $2
lbu $3, 0($3)
srav $2, $3, $3
srl $2, $2, 9
TAG490:
sub $3, $2, $2
bltz $2, TAG491
lb $2, 0($2)
beq $3, $2, TAG491
TAG491:
subu $1, $2, $2
bltz $2, TAG492
mfhi $3
mfhi $4
TAG492:
xor $4, $4, $4
sltu $4, $4, $4
beq $4, $4, TAG493
lui $1, 13
TAG493:
bgez $1, TAG494
sltiu $4, $1, 10
mflo $4
bne $1, $4, TAG494
TAG494:
lui $2, 10
addu $2, $2, $2
lui $3, 6
mflo $1
TAG495:
lbu $2, 0($1)
sh $2, 0($1)
sb $2, 0($1)
sw $1, 0($2)
TAG496:
subu $3, $2, $2
lui $2, 13
mult $3, $3
mult $2, $2
TAG497:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
mthi $2
TAG498:
slti $3, $2, 13
divu $3, $2
lui $4, 7
sll $0, $0, 0
TAG499:
div $4, $4
sll $0, $0, 0
sllv $3, $3, $4
blez $3, TAG500
TAG500:
slt $4, $3, $3
sw $3, 0($3)
multu $3, $4
mtlo $3
TAG501:
ori $1, $4, 5
multu $4, $4
bgez $1, TAG502
mfhi $2
TAG502:
sra $4, $2, 1
sra $2, $4, 7
addi $4, $4, 3
bltz $4, TAG503
TAG503:
mfhi $4
xor $4, $4, $4
lw $3, 0($4)
mthi $4
TAG504:
slti $2, $3, 10
lui $3, 8
mtlo $3
beq $3, $3, TAG505
TAG505:
mult $3, $3
lui $3, 12
sll $0, $0, 0
mthi $3
TAG506:
blez $3, TAG507
mflo $1
beq $3, $1, TAG507
mflo $2
TAG507:
beq $2, $2, TAG508
mfhi $4
lui $4, 4
sll $4, $4, 0
TAG508:
srl $4, $4, 13
lw $2, 0($4)
lbu $4, 0($2)
lh $2, 0($4)
TAG509:
sh $2, 0($2)
srav $2, $2, $2
sh $2, 0($2)
beq $2, $2, TAG510
TAG510:
srl $3, $2, 1
slt $1, $2, $3
lui $4, 8
mthi $4
TAG511:
lui $4, 3
sll $0, $0, 0
sll $0, $0, 0
lui $4, 1
TAG512:
divu $4, $4
sltu $1, $4, $4
bgtz $4, TAG513
lui $3, 0
TAG513:
sw $3, 0($3)
mult $3, $3
sw $3, 0($3)
mflo $2
TAG514:
mult $2, $2
multu $2, $2
add $4, $2, $2
mfhi $3
TAG515:
sll $2, $3, 4
lhu $3, 0($2)
mult $3, $2
sll $2, $3, 14
TAG516:
xori $3, $2, 11
sw $2, 0($2)
divu $3, $3
mthi $3
TAG517:
lui $3, 10
sltu $2, $3, $3
lb $2, 0($2)
beq $2, $2, TAG518
TAG518:
addiu $3, $2, 5
bgez $3, TAG519
mfhi $3
mthi $3
TAG519:
mult $3, $3
lb $4, 0($3)
bne $3, $4, TAG520
mtlo $3
TAG520:
mthi $4
mthi $4
sb $4, 0($4)
bgtz $4, TAG521
TAG521:
mult $4, $4
bgez $4, TAG522
mflo $2
lui $2, 13
TAG522:
bgtz $2, TAG523
multu $2, $2
lbu $2, 0($2)
lb $1, 0($2)
TAG523:
mtlo $1
sh $1, 0($1)
mflo $2
sb $1, 0($2)
TAG524:
mult $2, $2
lhu $3, 0($2)
mtlo $3
lh $2, 0($2)
TAG525:
bltz $2, TAG526
sltiu $3, $2, 12
srlv $2, $2, $2
sh $3, 0($2)
TAG526:
multu $2, $2
srl $1, $2, 7
beq $1, $1, TAG527
lhu $4, 0($1)
TAG527:
bgtz $4, TAG528
lui $1, 13
bgtz $1, TAG528
lui $3, 5
TAG528:
lui $4, 12
lui $1, 10
lui $2, 13
beq $1, $4, TAG529
TAG529:
div $2, $2
mflo $2
mtlo $2
mfhi $1
TAG530:
mflo $3
lw $2, 0($1)
srlv $2, $3, $3
sb $2, 0($2)
TAG531:
bne $2, $2, TAG532
mtlo $2
lui $2, 9
multu $2, $2
TAG532:
blez $2, TAG533
sll $1, $2, 6
sll $0, $0, 0
sll $0, $0, 0
TAG533:
sll $0, $0, 0
mtlo $1
mfhi $4
bne $1, $1, TAG534
TAG534:
lui $1, 1
sll $1, $1, 0
mflo $4
addu $4, $4, $1
TAG535:
blez $4, TAG536
mult $4, $4
xor $2, $4, $4
lb $2, 0($2)
TAG536:
addi $2, $2, 10
sltu $4, $2, $2
addiu $3, $4, 7
mthi $3
TAG537:
lui $1, 4
mfhi $1
slti $3, $1, 5
lui $1, 11
TAG538:
div $1, $1
sll $0, $0, 0
mthi $1
mult $1, $1
TAG539:
sll $0, $0, 0
addiu $1, $4, 14
mult $4, $1
mthi $1
TAG540:
multu $1, $1
beq $1, $1, TAG541
sh $1, 0($1)
bltz $1, TAG541
TAG541:
or $3, $1, $1
srl $3, $3, 14
mflo $2
beq $3, $3, TAG542
TAG542:
nor $1, $2, $2
lui $1, 8
mfhi $3
sh $1, -196($2)
TAG543:
ori $2, $3, 12
slti $3, $3, 5
mult $2, $2
div $2, $3
TAG544:
subu $2, $3, $3
mtlo $3
multu $3, $2
multu $3, $2
TAG545:
bne $2, $2, TAG546
lui $2, 12
sll $0, $0, 0
multu $2, $2
TAG546:
mfhi $1
xor $1, $2, $2
lui $1, 10
sltiu $1, $1, 0
TAG547:
mflo $2
mfhi $4
mflo $2
srav $3, $4, $2
TAG548:
mflo $1
beq $3, $1, TAG549
mult $1, $1
bne $1, $3, TAG549
TAG549:
lui $1, 11
mtlo $1
bne $1, $1, TAG550
lui $2, 0
TAG550:
blez $2, TAG551
mthi $2
addi $2, $2, 8
andi $4, $2, 11
TAG551:
lui $4, 0
mfhi $1
sb $4, 0($4)
bgtz $4, TAG552
TAG552:
mthi $1
lui $4, 3
div $4, $4
sll $2, $1, 3
TAG553:
sllv $1, $2, $2
mult $1, $2
mult $1, $2
beq $1, $2, TAG554
TAG554:
mtlo $1
bgtz $1, TAG555
mtlo $1
bne $1, $1, TAG555
TAG555:
srl $4, $1, 5
srav $3, $1, $1
mtlo $3
lb $2, 0($4)
TAG556:
sll $2, $2, 12
beq $2, $2, TAG557
lui $4, 1
sw $4, 0($2)
TAG557:
lui $3, 2
slti $3, $3, 11
mthi $3
multu $3, $3
TAG558:
beq $3, $3, TAG559
sw $3, 0($3)
subu $4, $3, $3
ori $1, $3, 8
TAG559:
bgez $1, TAG560
mthi $1
bne $1, $1, TAG560
div $1, $1
TAG560:
bltz $1, TAG561
nor $3, $1, $1
sltu $2, $3, $1
xori $1, $3, 7
TAG561:
slti $1, $1, 4
bltz $1, TAG562
srl $4, $1, 6
add $4, $4, $4
TAG562:
blez $4, TAG563
lui $4, 13
sltu $3, $4, $4
lui $3, 15
TAG563:
lui $4, 12
div $3, $4
sllv $4, $3, $3
addiu $4, $3, 3
TAG564:
bgez $4, TAG565
mflo $3
mult $4, $3
mflo $1
TAG565:
mflo $2
slt $2, $2, $2
mult $2, $2
lb $1, 0($2)
TAG566:
mfhi $3
bltz $3, TAG567
multu $1, $3
mtlo $1
TAG567:
lui $4, 9
beq $4, $4, TAG568
subu $3, $4, $3
mthi $4
TAG568:
sll $0, $0, 0
beq $3, $3, TAG569
sll $0, $0, 0
bne $3, $3, TAG569
TAG569:
lui $2, 11
bgtz $2, TAG570
multu $2, $2
multu $3, $3
TAG570:
mfhi $4
bgtz $2, TAG571
sll $0, $0, 0
lw $4, 0($2)
TAG571:
lui $2, 10
mult $4, $4
sll $0, $0, 0
beq $2, $2, TAG572
TAG572:
addu $4, $3, $3
multu $3, $3
mult $3, $4
mfhi $4
TAG573:
addiu $4, $4, 10
srlv $3, $4, $4
mult $4, $4
beq $3, $4, TAG574
TAG574:
sltiu $4, $3, 7
mthi $3
div $3, $4
bne $3, $4, TAG575
TAG575:
srav $3, $4, $4
lui $3, 2
mflo $3
lbu $2, 0($3)
TAG576:
mfhi $2
mult $2, $2
bgez $2, TAG577
lhu $2, 0($2)
TAG577:
mult $2, $2
multu $2, $2
blez $2, TAG578
multu $2, $2
TAG578:
mult $2, $2
bne $2, $2, TAG579
lui $2, 0
multu $2, $2
TAG579:
bne $2, $2, TAG580
lui $3, 3
mtlo $3
mult $3, $2
TAG580:
srl $4, $3, 3
lbu $4, -24576($4)
lb $4, 0($4)
beq $3, $3, TAG581
TAG581:
sub $3, $4, $4
subu $2, $4, $3
multu $4, $3
srlv $3, $3, $4
TAG582:
lw $1, 0($3)
addu $1, $3, $3
lui $2, 11
bgez $2, TAG583
TAG583:
srl $1, $2, 14
srl $3, $1, 13
lui $4, 10
mthi $4
TAG584:
subu $3, $4, $4
sll $0, $0, 0
sra $1, $3, 12
mflo $4
TAG585:
lb $1, 0($4)
srl $4, $4, 4
srlv $1, $1, $1
bltz $1, TAG586
TAG586:
mult $1, $1
andi $2, $1, 8
lui $2, 7
mult $2, $2
TAG587:
sll $2, $2, 4
beq $2, $2, TAG588
sll $0, $0, 0
or $1, $2, $2
TAG588:
sh $1, 0($1)
sh $1, 0($1)
beq $1, $1, TAG589
lhu $4, 0($1)
TAG589:
mult $4, $4
multu $4, $4
sltu $3, $4, $4
mtlo $3
TAG590:
lbu $1, 0($3)
beq $3, $3, TAG591
mtlo $1
mflo $3
TAG591:
mflo $4
sw $4, 0($4)
sltiu $2, $4, 6
lb $4, 0($4)
TAG592:
bgez $4, TAG593
mfhi $3
bgez $3, TAG593
lui $4, 8
TAG593:
mflo $4
mthi $4
multu $4, $4
sb $4, 0($4)
TAG594:
bltz $4, TAG595
mtlo $4
mfhi $1
mthi $4
TAG595:
sll $1, $1, 7
bgez $1, TAG596
mult $1, $1
lui $1, 12
TAG596:
xori $1, $1, 6
blez $1, TAG597
mtlo $1
mthi $1
TAG597:
addiu $1, $1, 9
mfhi $1
sh $1, 0($1)
lh $2, 0($1)
TAG598:
lui $1, 2
ori $2, $1, 7
mflo $1
bltz $1, TAG599
TAG599:
divu $1, $1
xori $4, $1, 4
mflo $1
sb $1, 0($1)
TAG600:
sra $1, $1, 4
bne $1, $1, TAG601
srav $3, $1, $1
lui $1, 3
TAG601:
bne $1, $1, TAG602
mfhi $4
mfhi $3
bltz $1, TAG602
TAG602:
mfhi $3
multu $3, $3
multu $3, $3
bne $3, $3, TAG603
TAG603:
lw $3, 0($3)
addiu $1, $3, 12
divu $3, $1
bne $3, $1, TAG604
TAG604:
xori $1, $1, 0
mfhi $4
divu $1, $4
lhu $3, -268($1)
TAG605:
sll $0, $0, 0
mult $3, $3
mtlo $3
mthi $3
TAG606:
sll $0, $0, 0
addiu $2, $2, 8
xori $3, $2, 14
xori $3, $2, 4
TAG607:
sll $0, $0, 0
mtlo $3
lui $1, 12
bltz $3, TAG608
TAG608:
sllv $1, $1, $1
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG609
TAG609:
div $1, $1
multu $1, $1
bgtz $1, TAG610
mult $1, $1
TAG610:
beq $1, $1, TAG611
mtlo $1
sllv $2, $1, $1
lui $3, 11
TAG611:
beq $3, $3, TAG612
srav $1, $3, $3
blez $3, TAG612
mfhi $1
TAG612:
lui $4, 13
mflo $1
sllv $2, $4, $4
mfhi $3
TAG613:
sh $3, -144($3)
andi $2, $3, 2
sh $3, -144($3)
mult $3, $3
TAG614:
lhu $1, 0($2)
lui $1, 13
mfhi $2
bne $1, $1, TAG615
TAG615:
lui $2, 8
beq $2, $2, TAG616
sll $0, $0, 0
beq $2, $2, TAG616
TAG616:
mfhi $2
mflo $4
sb $1, -20736($4)
div $1, $4
TAG617:
sh $4, -20736($4)
blez $4, TAG618
ori $1, $4, 2
sb $4, -20736($4)
TAG618:
addu $2, $1, $1
nor $4, $2, $2
mflo $1
mfhi $3
TAG619:
mfhi $3
lbu $4, -1792($3)
bgez $3, TAG620
addiu $4, $3, 13
TAG620:
lui $1, 4
lui $2, 10
mfhi $4
sll $0, $0, 0
TAG621:
sh $4, -1792($4)
multu $4, $4
bgtz $4, TAG622
mfhi $2
TAG622:
lui $1, 2
mthi $2
divu $1, $1
mflo $1
TAG623:
subu $4, $1, $1
lui $2, 11
mult $2, $4
lui $2, 2
TAG624:
mfhi $4
bltz $2, TAG625
div $4, $2
lbu $4, 0($4)
TAG625:
lui $4, 9
lui $4, 10
mthi $4
sll $0, $0, 0
TAG626:
srav $4, $4, $4
xor $2, $4, $4
mflo $4
mtlo $4
TAG627:
mult $4, $4
lui $3, 10
sll $0, $0, 0
mthi $4
TAG628:
mfhi $2
bgez $2, TAG629
mthi $2
bne $2, $4, TAG629
TAG629:
mfhi $1
beq $2, $2, TAG630
sllv $2, $1, $1
lh $1, 0($1)
TAG630:
bne $1, $1, TAG631
mult $1, $1
mflo $3
multu $3, $3
TAG631:
mflo $2
bne $3, $3, TAG632
mflo $2
add $4, $3, $3
TAG632:
mthi $4
mult $4, $4
mfhi $1
mtlo $4
TAG633:
blez $1, TAG634
lb $3, 0($1)
lui $4, 2
mfhi $2
TAG634:
lb $1, 0($2)
multu $1, $2
blez $1, TAG635
sw $1, 0($2)
TAG635:
mtlo $1
sh $1, 0($1)
sll $3, $1, 10
lbu $4, 0($1)
TAG636:
addu $3, $4, $4
mthi $4
subu $3, $4, $4
lui $3, 2
TAG637:
sll $0, $0, 0
bgez $3, TAG638
div $3, $3
mfhi $1
TAG638:
mtlo $1
and $2, $1, $1
mult $2, $2
sw $2, 0($2)
TAG639:
lb $4, 0($2)
mflo $4
beq $2, $2, TAG640
sw $4, 0($4)
TAG640:
bgez $4, TAG641
lb $2, 0($4)
and $1, $4, $2
and $2, $2, $1
TAG641:
mult $2, $2
blez $2, TAG642
sw $2, 0($2)
beq $2, $2, TAG642
TAG642:
mflo $1
bne $1, $2, TAG643
xor $3, $1, $1
beq $3, $1, TAG643
TAG643:
lw $3, 0($3)
mtlo $3
xor $1, $3, $3
mthi $1
TAG644:
blez $1, TAG645
mtlo $1
mult $1, $1
sh $1, 0($1)
TAG645:
bne $1, $1, TAG646
mtlo $1
mfhi $2
multu $2, $2
TAG646:
mtlo $2
mthi $2
lui $3, 15
mflo $4
TAG647:
mflo $4
mflo $1
lui $2, 10
mult $4, $1
TAG648:
mfhi $3
bne $3, $2, TAG649
sll $0, $0, 0
mtlo $3
TAG649:
sw $3, 0($3)
blez $3, TAG650
lw $2, 0($3)
divu $2, $3
TAG650:
mthi $2
mfhi $1
lui $3, 12
lui $3, 0
TAG651:
mtlo $3
slti $3, $3, 6
and $2, $3, $3
mthi $3
TAG652:
beq $2, $2, TAG653
sll $2, $2, 1
mthi $2
mthi $2
TAG653:
srlv $1, $2, $2
blez $2, TAG654
multu $1, $2
sh $2, 0($1)
TAG654:
mfhi $2
multu $1, $1
addu $3, $1, $2
multu $3, $1
TAG655:
beq $3, $3, TAG656
sw $3, 0($3)
lhu $4, 0($3)
mfhi $4
TAG656:
sb $4, 0($4)
lb $4, 0($4)
mfhi $1
mult $1, $1
TAG657:
sll $1, $1, 7
lb $1, 0($1)
mult $1, $1
bne $1, $1, TAG658
TAG658:
mult $1, $1
bgez $1, TAG659
lui $4, 14
blez $4, TAG659
TAG659:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 7
lui $1, 13
TAG660:
sll $0, $0, 0
mtlo $1
mflo $4
mtlo $4
TAG661:
bgez $4, TAG662
sll $1, $4, 9
beq $4, $1, TAG662
sw $1, 0($4)
TAG662:
mfhi $1
lw $1, 0($1)
srl $2, $1, 7
lbu $2, 0($1)
TAG663:
mtlo $2
mult $2, $2
lb $3, 0($2)
lhu $2, 0($3)
TAG664:
sltiu $1, $2, 4
bgtz $2, TAG665
mult $1, $2
mult $1, $2
TAG665:
sb $1, 0($1)
and $1, $1, $1
div $1, $1
sb $1, 0($1)
TAG666:
sllv $2, $1, $1
bne $2, $2, TAG667
mflo $3
blez $2, TAG667
TAG667:
sb $3, 0($3)
beq $3, $3, TAG668
lui $3, 4
bltz $3, TAG668
TAG668:
sll $0, $0, 0
xori $3, $3, 14
multu $3, $3
sll $0, $0, 0
TAG669:
sra $2, $3, 10
mflo $4
mult $3, $4
sll $0, $0, 0
TAG670:
multu $4, $4
mtlo $4
sll $0, $0, 0
mthi $2
TAG671:
bltz $2, TAG672
lhu $1, -256($2)
sw $2, -256($2)
beq $1, $1, TAG672
TAG672:
div $1, $1
blez $1, TAG673
lui $4, 1
bgtz $4, TAG673
TAG673:
mfhi $1
lhu $2, 0($1)
bgez $2, TAG674
sra $4, $4, 2
TAG674:
lui $4, 5
sll $0, $0, 0
mthi $4
lui $3, 3
TAG675:
sll $0, $0, 0
sltu $2, $3, $3
mult $2, $3
xori $2, $2, 8
TAG676:
slt $4, $2, $2
mtlo $2
sh $4, 0($4)
slt $1, $4, $4
TAG677:
mflo $1
bgtz $1, TAG678
sw $1, 0($1)
bltz $1, TAG678
TAG678:
mtlo $1
beq $1, $1, TAG679
addu $2, $1, $1
mfhi $1
TAG679:
beq $1, $1, TAG680
divu $1, $1
slt $4, $1, $1
sll $3, $1, 8
TAG680:
beq $3, $3, TAG681
multu $3, $3
lbu $3, 0($3)
sub $4, $3, $3
TAG681:
lui $4, 3
addu $2, $4, $4
mflo $2
lbu $3, 0($2)
TAG682:
mult $3, $3
lb $3, 0($3)
bne $3, $3, TAG683
mtlo $3
TAG683:
lh $3, 0($3)
lhu $4, 0($3)
mflo $1
addi $3, $1, 13
TAG684:
sb $3, 0($3)
lb $2, 0($3)
subu $2, $3, $3
bltz $2, TAG685
TAG685:
lb $3, 0($2)
mflo $2
addiu $2, $3, 14
mult $2, $2
TAG686:
beq $2, $2, TAG687
mtlo $2
lhu $3, 0($2)
bgtz $3, TAG687
TAG687:
xori $2, $3, 13
lui $2, 9
bgtz $2, TAG688
lui $3, 15
TAG688:
lui $3, 9
sll $0, $0, 0
sltu $3, $3, $3
sltiu $3, $3, 13
TAG689:
mfhi $3
add $4, $3, $3
lui $1, 13
lui $1, 7
TAG690:
mfhi $3
mthi $1
sltiu $2, $1, 5
beq $3, $3, TAG691
TAG691:
lui $3, 15
lui $4, 1
sll $0, $0, 0
lui $2, 12
TAG692:
sll $0, $0, 0
multu $3, $3
beq $2, $2, TAG693
mflo $2
TAG693:
lui $3, 10
or $3, $2, $3
mtlo $3
mtlo $3
TAG694:
sll $0, $0, 0
addi $1, $2, 13
mtlo $3
nor $1, $3, $3
TAG695:
sll $0, $0, 0
addiu $3, $1, 15
bne $3, $1, TAG696
lui $4, 1
TAG696:
mult $4, $4
srlv $2, $4, $4
mflo $3
bltz $2, TAG697
TAG697:
lui $2, 11
xor $3, $2, $3
sll $0, $0, 0
mthi $3
TAG698:
lui $3, 10
bltz $3, TAG699
sll $0, $0, 0
lui $3, 14
TAG699:
addiu $4, $3, 2
bne $3, $3, TAG700
sll $0, $0, 0
blez $3, TAG700
TAG700:
mtlo $4
mtlo $4
bltz $4, TAG701
subu $4, $4, $4
TAG701:
sb $4, 0($4)
bne $4, $4, TAG702
sh $4, 0($4)
lui $4, 6
TAG702:
sll $0, $0, 0
sll $0, $0, 0
srl $1, $1, 13
bne $4, $1, TAG703
TAG703:
mfhi $3
lui $3, 10
subu $3, $3, $3
sll $0, $0, 0
TAG704:
bltz $1, TAG705
multu $1, $1
bne $1, $1, TAG705
mtlo $1
TAG705:
mthi $1
divu $1, $1
bgez $1, TAG706
multu $1, $1
TAG706:
bgtz $1, TAG707
andi $2, $1, 0
lui $2, 7
sll $3, $2, 8
TAG707:
mfhi $2
mthi $3
mtlo $3
lh $4, 0($3)
TAG708:
sw $4, 0($4)
beq $4, $4, TAG709
sw $4, 0($4)
bgez $4, TAG709
TAG709:
sltu $2, $4, $4
mflo $1
lhu $1, 0($2)
mtlo $2
TAG710:
multu $1, $1
bltz $1, TAG711
mtlo $1
nor $2, $1, $1
TAG711:
lui $2, 11
slti $3, $2, 10
sra $3, $2, 12
blez $2, TAG712
TAG712:
addiu $2, $3, 10
sb $2, -176($3)
bne $3, $2, TAG713
xor $4, $2, $2
TAG713:
lui $3, 12
bne $3, $3, TAG714
lh $1, 0($4)
sh $4, -186($1)
TAG714:
bgez $1, TAG715
lui $1, 1
divu $1, $1
sll $1, $1, 11
TAG715:
sll $0, $0, 0
div $1, $1
sllv $3, $1, $1
sll $0, $0, 0
TAG716:
mtlo $1
bgtz $1, TAG717
divu $1, $1
addiu $3, $1, 13
TAG717:
mtlo $3
divu $3, $3
mfhi $2
div $3, $3
TAG718:
mult $2, $2
nor $2, $2, $2
lhu $2, 1($2)
lui $3, 10
TAG719:
sll $0, $0, 0
lui $1, 11
lui $1, 10
srlv $4, $1, $1
TAG720:
blez $4, TAG721
divu $4, $4
sll $0, $0, 0
beq $4, $4, TAG721
TAG721:
mthi $4
div $4, $4
sll $0, $0, 0
bgez $4, TAG722
TAG722:
lui $2, 5
lui $4, 14
subu $4, $2, $2
multu $4, $4
TAG723:
sw $4, 0($4)
subu $1, $4, $4
bltz $4, TAG724
srl $1, $4, 10
TAG724:
bltz $1, TAG725
sw $1, 0($1)
srl $1, $1, 6
sub $4, $1, $1
TAG725:
lui $4, 6
bgtz $4, TAG726
sll $0, $0, 0
mfhi $1
TAG726:
sh $1, 0($1)
bgez $1, TAG727
sllv $2, $1, $1
mfhi $2
TAG727:
addi $1, $2, 8
multu $1, $2
sltu $4, $2, $1
mflo $1
TAG728:
mfhi $3
lbu $3, 0($1)
lui $4, 0
sh $4, 0($4)
TAG729:
bgez $4, TAG730
lhu $2, 0($4)
lui $1, 12
mtlo $2
TAG730:
mthi $1
sb $1, 0($1)
blez $1, TAG731
lb $4, 0($1)
TAG731:
mflo $4
lhu $1, 0($4)
mfhi $3
multu $3, $3
TAG732:
mtlo $3
bne $3, $3, TAG733
sll $2, $3, 14
or $2, $3, $2
TAG733:
mflo $1
mfhi $1
lhu $1, 0($1)
beq $2, $1, TAG734
TAG734:
lui $4, 7
mfhi $4
lui $3, 10
bltz $4, TAG735
TAG735:
addiu $3, $3, 0
div $3, $3
bne $3, $3, TAG736
sltu $1, $3, $3
TAG736:
add $2, $1, $1
lui $1, 13
bne $1, $1, TAG737
sll $0, $0, 0
TAG737:
lui $1, 12
sra $3, $1, 4
multu $3, $1
beq $3, $1, TAG738
TAG738:
mflo $3
lh $4, 0($3)
multu $4, $3
srav $3, $4, $4
TAG739:
sw $3, 0($3)
andi $4, $3, 12
sw $3, 0($4)
mtlo $3
TAG740:
lw $3, 0($4)
mfhi $4
bgez $4, TAG741
mult $3, $4
TAG741:
mult $4, $4
lui $2, 13
mult $2, $4
mult $2, $4
TAG742:
divu $2, $2
mfhi $2
mult $2, $2
mtlo $2
TAG743:
multu $2, $2
and $3, $2, $2
subu $2, $3, $3
bne $3, $2, TAG744
TAG744:
lhu $1, 0($2)
multu $1, $2
mfhi $2
sll $3, $1, 10
TAG745:
mthi $3
lbu $4, 0($3)
mult $3, $4
bltz $3, TAG746
TAG746:
mtlo $4
sb $4, 0($4)
lui $1, 15
sll $0, $0, 0
TAG747:
addiu $3, $4, 1
lui $1, 2
bgtz $1, TAG748
div $4, $3
TAG748:
mtlo $1
sll $0, $0, 0
lui $4, 3
lbu $2, 0($2)
TAG749:
sub $2, $2, $2
slt $4, $2, $2
bgez $2, TAG750
lh $2, 0($4)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop