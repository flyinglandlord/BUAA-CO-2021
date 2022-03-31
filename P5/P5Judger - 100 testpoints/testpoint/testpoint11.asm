ori $1, $0, 4
ori $2, $0, 5
ori $3, $0, 6
ori $4, $0, 12
sw $3, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $1, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $4, 28($0)
sw $3, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $3, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $4, 124($0)
lbu $1, 0($2)
beq $1, $2, TAG1
lbu $4, 0($1)
lw $3, 0($1)
TAG1:
lui $2, 13
sb $3, 0($3)
lui $2, 7
and $3, $2, $3
TAG2:
mtlo $3
addi $2, $3, 11
mult $2, $2
lui $3, 6
TAG3:
mtlo $3
lui $1, 14
sll $0, $0, 0
slti $4, $1, 15
TAG4:
mtlo $4
lbu $1, 0($4)
sltiu $4, $4, 7
addiu $4, $4, 12
TAG5:
subu $2, $4, $4
lui $2, 3
sll $0, $0, 0
div $2, $2
TAG6:
mflo $1
bgtz $4, TAG7
sb $4, 0($4)
beq $1, $1, TAG7
TAG7:
lb $1, 0($1)
bne $1, $1, TAG8
sh $1, 0($1)
bgtz $1, TAG8
TAG8:
mthi $1
mflo $4
lbu $4, 0($4)
mtlo $4
TAG9:
beq $4, $4, TAG10
mthi $4
mthi $4
lw $3, 0($4)
TAG10:
xor $4, $3, $3
bne $4, $3, TAG11
mtlo $4
mfhi $4
TAG11:
sltu $2, $4, $4
mflo $1
sb $4, 0($2)
mflo $2
TAG12:
bgtz $2, TAG13
ori $2, $2, 13
slti $2, $2, 10
bgez $2, TAG13
TAG13:
sh $2, 0($2)
mthi $2
bltz $2, TAG14
mtlo $2
TAG14:
lw $4, 0($2)
bltz $4, TAG15
mfhi $2
sltiu $4, $4, 10
TAG15:
mflo $2
sb $2, 0($2)
srl $4, $2, 0
mtlo $2
TAG16:
lui $4, 7
ori $2, $4, 15
bgez $4, TAG17
mthi $2
TAG17:
ori $4, $2, 6
sllv $4, $4, $2
bne $4, $2, TAG18
lui $1, 2
TAG18:
sll $0, $0, 0
mflo $3
lui $1, 12
mthi $1
TAG19:
mfhi $2
mfhi $1
multu $1, $1
mfhi $1
TAG20:
sw $1, -144($1)
lui $4, 8
sll $0, $0, 0
lhu $1, -144($1)
TAG21:
slt $2, $1, $1
mult $2, $2
lui $4, 3
bgez $2, TAG22
TAG22:
mfhi $2
xori $4, $2, 5
beq $4, $2, TAG23
mult $4, $4
TAG23:
lui $2, 6
div $2, $4
mfhi $2
subu $3, $2, $2
TAG24:
beq $3, $3, TAG25
slti $4, $3, 13
mthi $4
bne $3, $3, TAG25
TAG25:
sll $1, $4, 1
mfhi $4
mfhi $1
blez $1, TAG26
TAG26:
sb $1, 0($1)
bne $1, $1, TAG27
lb $4, 0($1)
lb $3, 0($4)
TAG27:
lui $3, 15
mfhi $2
mthi $3
beq $3, $3, TAG28
TAG28:
mtlo $2
lbu $4, 0($2)
ori $2, $2, 15
blez $4, TAG29
TAG29:
sltu $2, $2, $2
lw $2, 0($2)
mthi $2
lb $2, -400($2)
TAG30:
lui $4, 9
lw $2, 112($2)
xor $3, $2, $2
mflo $4
TAG31:
mtlo $4
bgez $4, TAG32
lui $2, 2
multu $4, $4
TAG32:
mfhi $4
sw $4, -400($4)
mtlo $4
slti $2, $2, 3
TAG33:
mfhi $4
lui $3, 14
and $1, $3, $2
lhu $4, 0($1)
TAG34:
sll $0, $0, 0
lh $3, -400($4)
lw $1, -400($4)
sra $1, $1, 2
TAG35:
lh $1, 0($1)
lbu $2, 0($1)
bltz $2, TAG36
mtlo $1
TAG36:
lui $1, 0
sb $1, 0($2)
lui $1, 3
mtlo $1
TAG37:
blez $1, TAG38
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG38:
beq $4, $4, TAG39
lh $4, -400($4)
mfhi $1
divu $1, $4
TAG39:
bne $1, $1, TAG40
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG40:
xori $1, $1, 8
bne $1, $1, TAG41
mtlo $1
blez $1, TAG41
TAG41:
lui $4, 8
blez $1, TAG42
mfhi $3
blez $1, TAG42
TAG42:
sh $3, -400($3)
sw $3, -400($3)
srl $3, $3, 9
beq $3, $3, TAG43
TAG43:
lui $3, 15
mthi $3
sll $0, $0, 0
mtlo $3
TAG44:
sll $0, $0, 0
mflo $1
multu $3, $1
mtlo $1
TAG45:
mfhi $2
sb $1, -225($2)
lui $4, 6
lui $1, 2
TAG46:
multu $1, $1
bne $1, $1, TAG47
lui $1, 9
mflo $2
TAG47:
bne $2, $2, TAG48
sh $2, 0($2)
lui $3, 7
mthi $2
TAG48:
addu $3, $3, $3
sra $1, $3, 6
bgtz $3, TAG49
sltiu $4, $3, 13
TAG49:
mflo $4
bgez $4, TAG50
lui $2, 6
bgez $4, TAG50
TAG50:
mflo $3
lui $1, 2
lui $4, 6
mtlo $4
TAG51:
bne $4, $4, TAG52
mflo $1
mfhi $2
sra $4, $2, 0
TAG52:
sb $4, 0($4)
sh $4, 0($4)
srav $2, $4, $4
nor $2, $4, $4
TAG53:
divu $2, $2
mtlo $2
andi $4, $2, 1
lui $1, 13
TAG54:
sll $0, $0, 0
multu $1, $1
divu $1, $1
lui $1, 8
TAG55:
blez $1, TAG56
slti $4, $1, 5
sh $4, 0($4)
bgtz $4, TAG56
TAG56:
lui $3, 4
mult $3, $3
sll $0, $0, 0
mflo $4
TAG57:
lb $3, 0($4)
slti $2, $3, 11
bltz $2, TAG58
srl $4, $3, 13
TAG58:
sh $4, 0($4)
mflo $4
mfhi $1
mtlo $4
TAG59:
mthi $1
mthi $1
andi $4, $1, 7
lui $4, 1
TAG60:
sll $0, $0, 0
sll $0, $0, 0
sh $1, 0($1)
sll $0, $0, 0
TAG61:
xori $2, $1, 0
srlv $2, $1, $2
mtlo $1
slti $3, $2, 14
TAG62:
blez $3, TAG63
mflo $4
mfhi $2
div $2, $3
TAG63:
bne $2, $2, TAG64
subu $3, $2, $2
mult $2, $3
divu $2, $2
TAG64:
sh $3, 0($3)
lbu $2, 0($3)
sw $3, 0($3)
bgez $2, TAG65
TAG65:
ori $3, $2, 14
sb $3, 0($3)
xor $1, $3, $3
lui $1, 15
TAG66:
lui $3, 0
bgez $1, TAG67
sll $0, $0, 0
sltu $3, $3, $1
TAG67:
lui $2, 5
mtlo $3
lw $2, 0($3)
mthi $2
TAG68:
lui $1, 10
bne $1, $2, TAG69
sltiu $3, $1, 3
mtlo $2
TAG69:
beq $3, $3, TAG70
multu $3, $3
mfhi $4
sb $3, 0($4)
TAG70:
sw $4, 0($4)
mflo $4
beq $4, $4, TAG71
xor $4, $4, $4
TAG71:
nor $3, $4, $4
subu $1, $3, $4
mfhi $4
addu $4, $3, $4
TAG72:
addu $4, $4, $4
beq $4, $4, TAG73
divu $4, $4
or $1, $4, $4
TAG73:
blez $1, TAG74
sw $1, 1($1)
mtlo $1
srav $4, $1, $1
TAG74:
sh $4, 2($4)
mfhi $1
sltu $2, $4, $4
lh $4, 0($2)
TAG75:
andi $2, $4, 9
andi $4, $4, 7
lb $4, 0($2)
sb $2, 0($4)
TAG76:
lbu $3, 0($4)
lui $3, 5
mtlo $4
subu $1, $3, $3
TAG77:
mthi $1
subu $3, $1, $1
and $3, $1, $3
mult $1, $3
TAG78:
mtlo $3
bgez $3, TAG79
sw $3, 0($3)
beq $3, $3, TAG79
TAG79:
mthi $3
bne $3, $3, TAG80
lui $1, 0
xori $2, $3, 15
TAG80:
sb $2, 0($2)
sb $2, 0($2)
bgtz $2, TAG81
ori $4, $2, 12
TAG81:
bgez $4, TAG82
lb $4, 0($4)
lhu $4, 0($4)
lui $1, 9
TAG82:
mthi $1
mfhi $1
lui $1, 1
blez $1, TAG83
TAG83:
sltiu $3, $1, 9
bgez $1, TAG84
mtlo $3
slti $4, $3, 11
TAG84:
div $4, $4
sb $4, 0($4)
bne $4, $4, TAG85
xori $3, $4, 2
TAG85:
mflo $3
sb $3, 0($3)
beq $3, $3, TAG86
mflo $3
TAG86:
addiu $4, $3, 11
lui $1, 9
or $1, $1, $1
mtlo $3
TAG87:
lui $4, 11
lui $4, 7
xori $1, $4, 3
bne $4, $1, TAG88
TAG88:
sllv $2, $1, $1
bgtz $1, TAG89
mflo $4
ori $2, $4, 14
TAG89:
div $2, $2
subu $2, $2, $2
bne $2, $2, TAG90
mult $2, $2
TAG90:
sb $2, 0($2)
beq $2, $2, TAG91
lb $2, 0($2)
lh $3, 0($2)
TAG91:
srav $2, $3, $3
mult $3, $2
lui $2, 14
mthi $3
TAG92:
mtlo $2
multu $2, $2
bgez $2, TAG93
addu $2, $2, $2
TAG93:
mthi $2
sltu $1, $2, $2
sll $0, $0, 0
mult $3, $3
TAG94:
beq $3, $3, TAG95
sb $3, 0($3)
sra $4, $3, 14
mflo $2
TAG95:
and $4, $2, $2
divu $4, $4
mthi $4
sll $0, $0, 0
TAG96:
mflo $3
lb $3, 0($3)
srl $1, $3, 5
mtlo $3
TAG97:
mflo $2
sll $4, $2, 0
mtlo $2
lbu $1, 0($2)
TAG98:
mthi $1
bne $1, $1, TAG99
xor $2, $1, $1
mthi $2
TAG99:
lhu $4, 0($2)
mult $2, $4
xor $2, $2, $4
srlv $3, $2, $4
TAG100:
bltz $3, TAG101
sw $3, -256($3)
mult $3, $3
subu $2, $3, $3
TAG101:
multu $2, $2
sw $2, 0($2)
bltz $2, TAG102
mfhi $2
TAG102:
mflo $1
nor $3, $1, $2
sra $4, $1, 14
and $4, $4, $4
TAG103:
mflo $4
mtlo $4
multu $4, $4
bgtz $4, TAG104
TAG104:
multu $4, $4
bgez $4, TAG105
xori $2, $4, 4
mthi $2
TAG105:
subu $3, $2, $2
mthi $3
sll $4, $2, 13
sltiu $4, $2, 8
TAG106:
lui $3, 4
multu $3, $4
sb $3, 0($4)
sll $0, $0, 0
TAG107:
mthi $3
sll $0, $0, 0
bne $3, $3, TAG108
lui $2, 9
TAG108:
divu $2, $2
sll $0, $0, 0
mfhi $3
lh $1, 0($3)
TAG109:
bgtz $1, TAG110
lhu $3, 0($1)
multu $1, $1
sb $1, 0($3)
TAG110:
lui $3, 6
div $3, $3
bltz $3, TAG111
mflo $4
TAG111:
srl $3, $4, 2
sb $3, 0($4)
bltz $3, TAG112
lui $2, 4
TAG112:
blez $2, TAG113
srav $2, $2, $2
mfhi $1
sll $0, $0, 0
TAG113:
lui $3, 0
beq $1, $3, TAG114
mthi $3
mfhi $3
TAG114:
nor $1, $3, $3
beq $3, $3, TAG115
lui $3, 3
sltiu $2, $3, 11
TAG115:
bne $2, $2, TAG116
sll $0, $0, 0
mtlo $2
mflo $2
TAG116:
beq $2, $2, TAG117
lui $3, 5
lhu $2, 0($2)
sh $3, 0($2)
TAG117:
bgez $2, TAG118
lui $1, 6
lui $3, 3
lw $3, 0($2)
TAG118:
sll $0, $0, 0
sra $2, $3, 7
lui $2, 0
sw $2, 0($2)
TAG119:
lui $2, 9
lui $4, 2
mthi $2
sll $0, $0, 0
TAG120:
mult $4, $4
sll $0, $0, 0
bne $4, $4, TAG121
mthi $4
TAG121:
mthi $4
beq $4, $4, TAG122
lui $3, 12
bne $3, $3, TAG122
TAG122:
mflo $2
mflo $1
mfhi $1
bltz $3, TAG123
TAG123:
sltu $3, $1, $1
divu $1, $1
beq $1, $1, TAG124
subu $4, $1, $3
TAG124:
multu $4, $4
sll $0, $0, 0
div $4, $4
mflo $4
TAG125:
subu $2, $4, $4
srav $2, $4, $4
andi $1, $2, 6
mflo $3
TAG126:
sra $3, $3, 13
bgez $3, TAG127
sltu $4, $3, $3
sw $3, 0($3)
TAG127:
bne $4, $4, TAG128
andi $3, $4, 4
multu $3, $3
mfhi $2
TAG128:
bgtz $2, TAG129
srl $2, $2, 0
multu $2, $2
sw $2, 0($2)
TAG129:
and $2, $2, $2
or $3, $2, $2
beq $2, $3, TAG130
lui $2, 11
TAG130:
mthi $2
addu $2, $2, $2
divu $2, $2
multu $2, $2
TAG131:
subu $1, $2, $2
mult $1, $2
bltz $2, TAG132
lui $3, 14
TAG132:
mthi $3
slt $4, $3, $3
beq $4, $3, TAG133
slti $2, $3, 12
TAG133:
multu $2, $2
sh $2, 0($2)
mthi $2
lb $3, 0($2)
TAG134:
sub $4, $3, $3
addu $3, $4, $3
sll $4, $3, 4
mthi $3
TAG135:
mfhi $3
beq $3, $3, TAG136
mfhi $3
lh $2, 0($3)
TAG136:
srav $3, $2, $2
mfhi $4
mtlo $4
add $1, $2, $2
TAG137:
sb $1, 0($1)
lui $3, 12
blez $3, TAG138
sll $0, $0, 0
TAG138:
bgtz $3, TAG139
sll $0, $0, 0
lui $4, 2
or $4, $1, $3
TAG139:
mtlo $4
mflo $2
multu $4, $4
lui $3, 0
TAG140:
sh $3, 0($3)
mfhi $4
sh $3, 0($3)
bgez $4, TAG141
TAG141:
lui $1, 8
mtlo $1
blez $1, TAG142
sll $0, $0, 0
TAG142:
lui $3, 12
bltz $3, TAG143
sll $0, $0, 0
mthi $2
TAG143:
lui $3, 10
lui $1, 7
mtlo $3
beq $2, $1, TAG144
TAG144:
srlv $3, $1, $1
div $1, $1
xor $3, $3, $3
lhu $1, 0($3)
TAG145:
sll $1, $1, 2
beq $1, $1, TAG146
or $4, $1, $1
bgez $1, TAG146
TAG146:
sw $4, 0($4)
mflo $4
mflo $3
sb $3, 0($4)
TAG147:
lui $3, 13
nor $3, $3, $3
lui $3, 15
bne $3, $3, TAG148
TAG148:
mult $3, $3
sll $0, $0, 0
bltz $3, TAG149
mthi $1
TAG149:
and $2, $1, $1
sb $1, 0($2)
mtlo $1
bltz $1, TAG150
TAG150:
sb $2, 0($2)
xori $3, $2, 10
addu $3, $2, $3
lui $3, 0
TAG151:
addu $3, $3, $3
slti $4, $3, 6
sw $3, 0($3)
sll $2, $3, 11
TAG152:
mtlo $2
mfhi $2
mthi $2
lbu $2, 0($2)
TAG153:
mflo $1
blez $2, TAG154
mtlo $2
sb $2, 0($1)
TAG154:
lw $2, 0($1)
mthi $2
blez $2, TAG155
mult $2, $1
TAG155:
mtlo $2
sll $1, $2, 11
xori $4, $2, 12
beq $2, $4, TAG156
TAG156:
divu $4, $4
nor $1, $4, $4
bgez $1, TAG157
lw $2, 0($4)
TAG157:
bgtz $2, TAG158
sll $0, $0, 0
lui $2, 11
bgtz $2, TAG158
TAG158:
multu $2, $2
lui $4, 3
subu $4, $4, $4
andi $1, $4, 9
TAG159:
lui $1, 7
mthi $1
sra $3, $1, 8
blez $3, TAG160
TAG160:
addu $3, $3, $3
addu $1, $3, $3
sh $3, -3584($3)
divu $1, $3
TAG161:
slti $2, $1, 13
bne $2, $1, TAG162
lui $4, 13
beq $1, $1, TAG162
TAG162:
sll $0, $0, 0
ori $3, $4, 1
mflo $1
slti $1, $2, 10
TAG163:
ori $2, $1, 1
sb $1, 0($1)
lb $2, 0($2)
bne $2, $2, TAG164
TAG164:
addu $3, $2, $2
lbu $3, 0($2)
div $3, $2
divu $3, $3
TAG165:
mflo $3
sb $3, 0($3)
srlv $4, $3, $3
xor $2, $4, $3
TAG166:
bne $2, $2, TAG167
mult $2, $2
mthi $2
lb $1, 0($2)
TAG167:
mtlo $1
xor $4, $1, $1
mthi $1
bltz $4, TAG168
TAG168:
and $2, $4, $4
bne $4, $2, TAG169
multu $4, $2
lui $1, 1
TAG169:
mthi $1
and $4, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG170:
bgtz $1, TAG171
addiu $4, $1, 7
slti $2, $1, 5
sb $2, 0($1)
TAG171:
lhu $3, 0($2)
mfhi $1
mthi $2
sll $0, $0, 0
TAG172:
sll $0, $0, 0
beq $1, $2, TAG173
mult $2, $2
lui $4, 5
TAG173:
sll $0, $0, 0
slt $4, $4, $2
ori $4, $2, 15
mflo $4
TAG174:
blez $4, TAG175
mthi $4
mtlo $4
slti $2, $4, 10
TAG175:
slt $4, $2, $2
mthi $2
bne $2, $4, TAG176
sb $4, 0($2)
TAG176:
bltz $4, TAG177
addiu $4, $4, 1
bne $4, $4, TAG177
lui $2, 2
TAG177:
blez $2, TAG178
sll $0, $0, 0
sll $0, $0, 0
multu $2, $4
TAG178:
lbu $1, 0($4)
lui $4, 3
bgez $4, TAG179
sll $0, $0, 0
TAG179:
bltz $4, TAG180
srlv $3, $4, $4
lui $4, 8
bltz $3, TAG180
TAG180:
sltiu $2, $4, 7
lui $4, 7
mfhi $1
beq $1, $2, TAG181
TAG181:
sllv $1, $1, $1
mthi $1
mtlo $1
mthi $1
TAG182:
lui $2, 14
lui $3, 3
mfhi $2
beq $2, $3, TAG183
TAG183:
mflo $4
mult $2, $4
addi $1, $2, 9
multu $2, $1
TAG184:
bltz $1, TAG185
div $1, $1
sll $3, $1, 4
bgtz $3, TAG185
TAG185:
lui $3, 0
addi $2, $3, 4
mflo $3
lui $2, 2
TAG186:
bltz $2, TAG187
sltiu $2, $2, 14
mtlo $2
mflo $1
TAG187:
mult $1, $1
lui $3, 12
mthi $3
blez $1, TAG188
TAG188:
ori $1, $3, 8
blez $1, TAG189
subu $4, $3, $1
mflo $4
TAG189:
and $2, $4, $4
mtlo $4
addiu $1, $2, 12
mflo $1
TAG190:
lui $3, 2
sll $0, $0, 0
ori $1, $1, 8
lui $4, 13
TAG191:
lui $3, 8
lui $3, 14
lui $3, 15
bgez $3, TAG192
TAG192:
mfhi $3
addu $4, $3, $3
sll $0, $0, 0
mflo $3
TAG193:
beq $3, $3, TAG194
xori $3, $3, 14
bne $3, $3, TAG194
addiu $3, $3, 8
TAG194:
beq $3, $3, TAG195
lb $1, 0($3)
lhu $3, 0($1)
xor $4, $3, $1
TAG195:
mtlo $4
lui $3, 11
sll $0, $0, 0
srlv $2, $4, $3
TAG196:
subu $3, $2, $2
mult $3, $3
lbu $3, 0($3)
lui $4, 10
TAG197:
xor $2, $4, $4
lui $3, 7
or $3, $2, $3
bgtz $3, TAG198
TAG198:
sll $0, $0, 0
mthi $3
mflo $4
sll $0, $0, 0
TAG199:
mfhi $1
mflo $1
lb $1, 0($1)
sra $1, $1, 10
TAG200:
mtlo $1
nor $3, $1, $1
mtlo $1
sb $1, 0($1)
TAG201:
lui $1, 6
addu $1, $1, $3
divu $1, $1
div $1, $1
TAG202:
lui $2, 15
lui $1, 12
beq $2, $1, TAG203
subu $4, $1, $1
TAG203:
mult $4, $4
mfhi $4
andi $3, $4, 3
sb $3, 0($4)
TAG204:
lui $2, 15
lui $1, 12
blez $3, TAG205
mfhi $4
TAG205:
bne $4, $4, TAG206
multu $4, $4
sh $4, 0($4)
mult $4, $4
TAG206:
beq $4, $4, TAG207
lui $1, 4
beq $1, $1, TAG207
sub $2, $1, $4
TAG207:
blez $2, TAG208
or $1, $2, $2
divu $2, $2
bne $1, $2, TAG208
TAG208:
sra $3, $1, 5
slti $3, $1, 5
multu $1, $3
lui $4, 5
TAG209:
bne $4, $4, TAG210
sllv $4, $4, $4
mflo $1
mfhi $4
TAG210:
multu $4, $4
srl $4, $4, 6
lb $1, 0($4)
andi $1, $4, 2
TAG211:
beq $1, $1, TAG212
sb $1, 0($1)
bne $1, $1, TAG212
mtlo $1
TAG212:
mtlo $1
lui $1, 0
addi $3, $1, 6
bne $1, $1, TAG213
TAG213:
xor $4, $3, $3
sltiu $4, $3, 1
ori $1, $3, 15
mtlo $4
TAG214:
lui $3, 15
bne $3, $3, TAG215
ori $1, $3, 10
lui $4, 6
TAG215:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG216:
mthi $1
mtlo $1
multu $1, $1
mfhi $3
TAG217:
sh $3, 0($3)
bgtz $3, TAG218
mult $3, $3
lw $2, 0($3)
TAG218:
lw $2, 0($2)
mtlo $2
ori $1, $2, 0
mflo $3
TAG219:
lh $4, 0($3)
lw $3, 0($3)
srl $3, $3, 4
mtlo $3
TAG220:
xori $3, $3, 11
sb $3, 0($3)
mthi $3
addu $2, $3, $3
TAG221:
xori $3, $2, 9
mfhi $1
mthi $3
lh $4, 0($2)
TAG222:
sb $4, 0($4)
lh $4, 0($4)
mult $4, $4
mult $4, $4
TAG223:
mtlo $4
mflo $1
lui $1, 11
multu $1, $4
TAG224:
mthi $1
mthi $1
lui $3, 4
sll $0, $0, 0
TAG225:
mthi $3
beq $3, $3, TAG226
sll $0, $0, 0
blez $3, TAG226
TAG226:
sllv $2, $3, $3
bgtz $3, TAG227
mtlo $2
slti $4, $3, 14
TAG227:
lb $3, 0($4)
mtlo $4
multu $3, $4
ori $2, $4, 1
TAG228:
lui $2, 12
bgtz $2, TAG229
mtlo $2
beq $2, $2, TAG229
TAG229:
multu $2, $2
srl $1, $2, 4
srav $4, $2, $2
addiu $3, $1, 10
TAG230:
divu $3, $3
multu $3, $3
sll $0, $0, 0
andi $2, $3, 1
TAG231:
sltu $1, $2, $2
lw $3, 0($2)
multu $1, $2
mfhi $3
TAG232:
mult $3, $3
xori $4, $3, 5
ori $1, $4, 1
sb $1, 0($4)
TAG233:
ori $2, $1, 11
mfhi $4
mult $1, $1
sra $3, $4, 4
TAG234:
bne $3, $3, TAG235
mthi $3
srlv $2, $3, $3
andi $2, $3, 9
TAG235:
addi $2, $2, 9
bgez $2, TAG236
mthi $2
sb $2, 0($2)
TAG236:
lb $1, 0($2)
mult $2, $2
lui $1, 4
sll $0, $0, 0
TAG237:
mthi $1
bltz $1, TAG238
div $1, $1
slti $4, $1, 7
TAG238:
multu $4, $4
lb $1, 0($4)
mfhi $2
lb $2, 0($1)
TAG239:
add $3, $2, $2
lhu $1, 0($2)
bne $3, $2, TAG240
addu $1, $2, $1
TAG240:
bgez $1, TAG241
slti $1, $1, 6
addu $2, $1, $1
multu $1, $2
TAG241:
andi $2, $2, 2
beq $2, $2, TAG242
mult $2, $2
lh $1, 0($2)
TAG242:
lbu $4, 0($1)
lbu $3, 0($4)
bne $1, $1, TAG243
sltu $4, $1, $4
TAG243:
beq $4, $4, TAG244
multu $4, $4
lw $2, 0($4)
mthi $2
TAG244:
beq $2, $2, TAG245
slti $1, $2, 3
lhu $3, 0($1)
mtlo $2
TAG245:
multu $3, $3
mtlo $3
addu $4, $3, $3
mtlo $3
TAG246:
bgtz $4, TAG247
lui $1, 3
bgez $1, TAG247
mfhi $4
TAG247:
mult $4, $4
mfhi $4
mflo $2
mflo $3
TAG248:
sltu $3, $3, $3
bne $3, $3, TAG249
mflo $2
bgez $2, TAG249
TAG249:
mtlo $2
mult $2, $2
sb $2, 0($2)
bgtz $2, TAG250
TAG250:
sub $3, $2, $2
bltz $3, TAG251
addiu $3, $2, 14
srlv $4, $3, $3
TAG251:
sb $4, 0($4)
mult $4, $4
blez $4, TAG252
ori $1, $4, 2
TAG252:
mthi $1
beq $1, $1, TAG253
sb $1, 0($1)
mthi $1
TAG253:
bne $1, $1, TAG254
addu $1, $1, $1
mtlo $1
mult $1, $1
TAG254:
multu $1, $1
lui $3, 2
mfhi $1
lui $1, 10
TAG255:
lui $2, 4
beq $1, $1, TAG256
sll $0, $0, 0
sltiu $4, $1, 9
TAG256:
mthi $4
mult $4, $4
sw $4, 0($4)
sub $3, $4, $4
TAG257:
sh $3, 0($3)
blez $3, TAG258
add $2, $3, $3
mfhi $1
TAG258:
mtlo $1
mflo $1
addu $1, $1, $1
sll $2, $1, 14
TAG259:
addiu $3, $2, 5
addiu $3, $3, 9
mflo $1
addiu $1, $3, 3
TAG260:
addu $4, $1, $1
lui $3, 5
lui $1, 4
xori $4, $3, 4
TAG261:
sll $0, $0, 0
mfhi $2
mthi $2
addu $3, $4, $2
TAG262:
mflo $3
mthi $3
mflo $1
sllv $4, $3, $3
TAG263:
multu $4, $4
bne $4, $4, TAG264
slt $2, $4, $4
bne $4, $4, TAG264
TAG264:
mflo $4
lw $2, 0($4)
lh $1, 0($2)
mfhi $1
TAG265:
lbu $2, 0($1)
srav $3, $1, $2
lb $2, 0($2)
sb $1, 0($3)
TAG266:
mflo $2
lh $3, 0($2)
bne $2, $3, TAG267
mult $2, $2
TAG267:
addi $2, $3, 14
beq $2, $2, TAG268
and $1, $3, $2
srl $1, $1, 12
TAG268:
multu $1, $1
lhu $1, 0($1)
blez $1, TAG269
lui $3, 15
TAG269:
beq $3, $3, TAG270
mult $3, $3
bne $3, $3, TAG270
lb $2, 0($3)
TAG270:
mflo $4
beq $4, $2, TAG271
sh $2, 0($2)
mflo $1
TAG271:
multu $1, $1
lhu $1, 0($1)
lh $2, 0($1)
sb $1, 0($1)
TAG272:
mult $2, $2
multu $2, $2
bgtz $2, TAG273
nor $4, $2, $2
TAG273:
bne $4, $4, TAG274
sh $4, 1($4)
sh $4, 1($4)
bltz $4, TAG274
TAG274:
mtlo $4
bgez $4, TAG275
addu $3, $4, $4
beq $3, $3, TAG275
TAG275:
mthi $3
divu $3, $3
bgtz $3, TAG276
div $3, $3
TAG276:
blez $3, TAG277
mfhi $1
bgez $1, TAG277
xor $3, $1, $1
TAG277:
addu $1, $3, $3
mfhi $3
beq $3, $3, TAG278
lbu $2, 4($1)
TAG278:
addu $4, $2, $2
lui $4, 10
xor $1, $2, $2
mthi $4
TAG279:
lw $2, 0($1)
sll $0, $0, 0
mflo $3
addiu $4, $2, 2
TAG280:
sll $0, $0, 0
mthi $4
lui $2, 4
bltz $2, TAG281
TAG281:
sll $0, $0, 0
sll $0, $0, 0
andi $1, $2, 7
lui $2, 2
TAG282:
bne $2, $2, TAG283
lui $1, 4
subu $1, $1, $1
lui $2, 12
TAG283:
sll $0, $0, 0
sltiu $4, $2, 3
mult $4, $4
lui $3, 8
TAG284:
sll $0, $0, 0
sltiu $4, $3, 13
beq $4, $3, TAG285
mthi $3
TAG285:
and $3, $4, $4
slt $3, $4, $4
multu $3, $3
sb $3, 0($3)
TAG286:
xori $3, $3, 6
bltz $3, TAG287
sb $3, 0($3)
sb $3, 0($3)
TAG287:
lbu $3, 0($3)
lui $4, 11
blez $4, TAG288
mflo $3
TAG288:
bgtz $3, TAG289
lui $3, 12
blez $3, TAG289
sll $0, $0, 0
TAG289:
mflo $1
or $3, $1, $1
lui $4, 2
bne $3, $3, TAG290
TAG290:
sll $0, $0, 0
bne $2, $4, TAG291
sltiu $1, $4, 5
srl $1, $2, 1
TAG291:
lui $4, 10
lhu $4, 0($1)
sll $0, $0, 0
addi $4, $1, 4
TAG292:
mtlo $4
lw $4, 0($4)
mult $4, $4
lui $2, 7
TAG293:
divu $2, $2
beq $2, $2, TAG294
mflo $4
beq $2, $4, TAG294
TAG294:
sb $4, 0($4)
bne $4, $4, TAG295
sltiu $3, $4, 7
lbu $4, 0($4)
TAG295:
srl $1, $4, 14
lbu $4, 0($4)
mthi $4
blez $4, TAG296
TAG296:
nor $1, $4, $4
bne $4, $1, TAG297
mfhi $3
lui $2, 10
TAG297:
mthi $2
sltu $1, $2, $2
lb $3, 0($1)
addi $1, $1, 13
TAG298:
multu $1, $1
sb $1, 0($1)
sra $2, $1, 15
mthi $1
TAG299:
mthi $2
andi $1, $2, 5
lui $3, 1
sllv $3, $3, $1
TAG300:
sll $0, $0, 0
addu $4, $3, $3
sll $0, $0, 0
sll $3, $4, 6
TAG301:
multu $3, $3
multu $3, $3
mfhi $2
bltz $3, TAG302
TAG302:
mtlo $2
beq $2, $2, TAG303
divu $2, $2
lb $3, 0($2)
TAG303:
multu $3, $3
mfhi $2
multu $3, $3
mult $2, $2
TAG304:
div $2, $2
mult $2, $2
mthi $2
beq $2, $2, TAG305
TAG305:
mflo $2
multu $2, $2
sll $0, $0, 0
lui $4, 4
TAG306:
divu $4, $4
div $4, $4
lui $3, 15
sll $0, $0, 0
TAG307:
bltz $3, TAG308
lui $1, 1
mtlo $3
bgez $3, TAG308
TAG308:
mthi $1
multu $1, $1
mult $1, $1
bgez $1, TAG309
TAG309:
mult $1, $1
beq $1, $1, TAG310
sltiu $1, $1, 1
slt $2, $1, $1
TAG310:
sllv $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG311
TAG311:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG312:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 5
TAG313:
lui $3, 13
sll $0, $0, 0
mtlo $2
mfhi $4
TAG314:
div $4, $4
bltz $4, TAG315
slt $3, $4, $4
mtlo $3
TAG315:
bne $3, $3, TAG316
multu $3, $3
sw $3, 0($3)
lhu $4, 0($3)
TAG316:
srlv $3, $4, $4
mthi $4
lui $3, 11
mthi $3
TAG317:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
divu $3, $3
TAG318:
or $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG319:
beq $1, $1, TAG320
nor $2, $1, $1
lui $4, 12
sb $1, 0($1)
TAG320:
blez $4, TAG321
sll $0, $0, 0
multu $4, $4
mfhi $2
TAG321:
bltz $2, TAG322
div $2, $2
mult $2, $2
mthi $2
TAG322:
bne $2, $2, TAG323
lui $2, 5
mfhi $4
mtlo $2
TAG323:
lui $3, 13
bne $4, $4, TAG324
mthi $3
beq $3, $4, TAG324
TAG324:
mflo $2
mtlo $3
div $2, $2
mtlo $3
TAG325:
sll $0, $0, 0
mtlo $4
sra $2, $2, 5
lb $1, -10240($2)
TAG326:
mfhi $4
bne $4, $1, TAG327
lw $4, 0($1)
bltz $1, TAG327
TAG327:
lui $3, 13
sll $0, $0, 0
multu $2, $4
mthi $4
TAG328:
mthi $2
sll $3, $2, 12
sll $0, $0, 0
lui $4, 5
TAG329:
mtlo $4
bgtz $4, TAG330
mfhi $1
mult $4, $1
TAG330:
bltz $1, TAG331
lbu $4, -10240($1)
nor $3, $4, $1
slt $3, $3, $4
TAG331:
lb $4, 0($3)
bltz $4, TAG332
sb $3, 0($3)
bne $3, $3, TAG332
TAG332:
and $2, $4, $4
sw $4, 0($2)
lui $4, 11
mult $4, $4
TAG333:
sll $0, $0, 0
bne $4, $4, TAG334
sll $0, $0, 0
mthi $4
TAG334:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG335
lui $1, 12
TAG335:
lui $2, 7
divu $1, $1
mfhi $1
bltz $2, TAG336
TAG336:
lui $2, 7
mflo $1
addu $1, $1, $1
lui $4, 14
TAG337:
nor $2, $4, $4
div $4, $2
bne $4, $2, TAG338
mflo $4
TAG338:
lui $1, 13
mthi $4
mflo $3
and $1, $4, $4
TAG339:
lui $4, 4
mthi $4
mflo $3
mfhi $3
TAG340:
subu $1, $3, $3
bltz $3, TAG341
div $3, $3
ori $2, $1, 4
TAG341:
xor $2, $2, $2
sb $2, 0($2)
sw $2, 0($2)
bltz $2, TAG342
TAG342:
mthi $2
bgez $2, TAG343
sub $4, $2, $2
subu $4, $2, $4
TAG343:
beq $4, $4, TAG344
sh $4, 0($4)
bltz $4, TAG344
multu $4, $4
TAG344:
mult $4, $4
mtlo $4
bltz $4, TAG345
sub $2, $4, $4
TAG345:
bgez $2, TAG346
srlv $2, $2, $2
srav $2, $2, $2
lui $2, 0
TAG346:
mult $2, $2
lb $1, 0($2)
beq $1, $1, TAG347
mfhi $2
TAG347:
bgez $2, TAG348
lui $1, 6
mthi $1
bgtz $2, TAG348
TAG348:
div $1, $1
sltiu $4, $1, 0
multu $1, $4
mtlo $4
TAG349:
lui $4, 3
bgtz $4, TAG350
lui $1, 7
mult $1, $1
TAG350:
lui $1, 13
bne $1, $1, TAG351
mflo $1
mtlo $1
TAG351:
sllv $2, $1, $1
lhu $3, 0($2)
beq $2, $2, TAG352
mult $3, $3
TAG352:
bltz $3, TAG353
or $4, $3, $3
beq $4, $4, TAG353
mfhi $2
TAG353:
beq $2, $2, TAG354
mfhi $4
mthi $2
divu $4, $2
TAG354:
or $4, $4, $4
bne $4, $4, TAG355
sll $4, $4, 1
bgtz $4, TAG355
TAG355:
srlv $1, $4, $4
lbu $3, 0($4)
addi $4, $4, 8
mthi $3
TAG356:
mthi $4
divu $4, $4
sllv $1, $4, $4
slt $1, $4, $4
TAG357:
sw $1, 0($1)
mflo $4
bgez $1, TAG358
lbu $4, 0($1)
TAG358:
lui $2, 4
bne $4, $4, TAG359
mtlo $4
or $3, $4, $4
TAG359:
lhu $1, 0($3)
lw $4, 0($1)
multu $4, $4
blez $3, TAG360
TAG360:
multu $4, $4
sltu $3, $4, $4
ori $3, $4, 6
beq $3, $3, TAG361
TAG361:
mflo $3
multu $3, $3
multu $3, $3
lh $3, 0($3)
TAG362:
mfhi $4
sltiu $4, $4, 6
and $3, $4, $4
blez $3, TAG363
TAG363:
sb $3, 0($3)
lb $2, 0($3)
sltu $1, $3, $2
mflo $4
TAG364:
slti $1, $4, 8
bltz $4, TAG365
sllv $4, $4, $1
bne $4, $4, TAG365
TAG365:
sb $4, 0($4)
addu $3, $4, $4
bne $3, $4, TAG366
mfhi $3
TAG366:
mflo $1
mfhi $3
mflo $1
sw $1, 0($1)
TAG367:
mfhi $3
or $2, $3, $3
beq $2, $1, TAG368
lui $3, 5
TAG368:
sllv $3, $3, $3
sll $0, $0, 0
addiu $2, $3, 8
mthi $2
TAG369:
mtlo $2
sltu $4, $2, $2
lbu $3, 0($4)
sllv $2, $2, $2
TAG370:
mflo $4
lui $3, 6
sltiu $3, $3, 10
bne $4, $2, TAG371
TAG371:
addiu $3, $3, 14
bltz $3, TAG372
andi $3, $3, 8
sb $3, 0($3)
TAG372:
beq $3, $3, TAG373
lb $1, 0($3)
srlv $2, $3, $3
lhu $3, 0($2)
TAG373:
sh $3, 0($3)
and $1, $3, $3
mtlo $1
beq $3, $1, TAG374
TAG374:
div $1, $1
bne $1, $1, TAG375
mflo $3
slt $1, $1, $3
TAG375:
lb $3, 0($1)
andi $3, $3, 4
lui $2, 6
sw $3, 0($3)
TAG376:
div $2, $2
div $2, $2
div $2, $2
mfhi $4
TAG377:
and $1, $4, $4
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
TAG378:
lbu $3, 0($1)
sb $3, 0($3)
mthi $1
ori $4, $1, 0
TAG379:
mtlo $4
sb $4, 0($4)
beq $4, $4, TAG380
lh $2, 0($4)
TAG380:
lui $3, 8
bne $2, $3, TAG381
sb $2, 0($2)
slti $2, $2, 3
TAG381:
lhu $1, 0($2)
bgez $1, TAG382
mthi $2
divu $1, $1
TAG382:
addi $1, $1, 0
sh $1, 0($1)
xori $2, $1, 0
bltz $2, TAG383
TAG383:
lui $1, 1
sb $1, 0($2)
mthi $2
sltu $3, $2, $1
TAG384:
subu $4, $3, $3
and $4, $4, $3
sw $3, 0($4)
bne $3, $3, TAG385
TAG385:
sltu $3, $4, $4
sw $3, 0($4)
sb $4, 0($4)
sltiu $1, $3, 14
TAG386:
lui $1, 2
bne $1, $1, TAG387
sll $0, $0, 0
bgez $1, TAG387
TAG387:
sb $4, 0($4)
lui $4, 1
addiu $3, $4, 6
bgez $4, TAG388
TAG388:
sll $0, $0, 0
mtlo $4
mthi $3
blez $4, TAG389
TAG389:
srav $2, $4, $4
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG390:
addu $1, $3, $3
blez $1, TAG391
lui $2, 9
sll $1, $3, 6
TAG391:
mthi $1
divu $1, $1
mtlo $1
bgez $1, TAG392
TAG392:
sll $0, $0, 0
sll $0, $0, 0
bltz $1, TAG393
divu $2, $2
TAG393:
sll $0, $0, 0
divu $4, $2
sll $0, $0, 0
div $2, $4
TAG394:
sll $0, $0, 0
sll $0, $0, 0
or $2, $4, $4
mthi $2
TAG395:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
blez $1, TAG396
TAG396:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
divu $1, $1
TAG397:
sll $0, $0, 0
sll $0, $0, 0
andi $4, $1, 0
beq $4, $1, TAG398
TAG398:
mtlo $4
sltiu $3, $4, 7
lui $3, 2
mtlo $3
TAG399:
lui $1, 7
mult $3, $1
divu $3, $3
blez $1, TAG400
TAG400:
div $1, $1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG401:
srl $1, $1, 8
sll $3, $1, 5
mthi $1
bne $3, $1, TAG402
TAG402:
lui $4, 12
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG403:
lui $1, 3
bltz $1, TAG404
addiu $4, $3, 1
sllv $1, $1, $1
TAG404:
lui $4, 6
bltz $1, TAG405
mthi $1
bne $1, $4, TAG405
TAG405:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
lui $4, 4
TAG406:
blez $4, TAG407
mflo $3
lui $4, 9
beq $4, $3, TAG407
TAG407:
lui $3, 2
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG408:
lui $4, 6
sll $0, $0, 0
mult $3, $4
blez $3, TAG409
TAG409:
mtlo $4
mtlo $4
sll $0, $0, 0
beq $4, $4, TAG410
TAG410:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
mult $2, $4
TAG411:
mfhi $2
mthi $2
sh $2, 0($2)
add $4, $2, $2
TAG412:
lui $4, 10
bne $4, $4, TAG413
sll $0, $0, 0
div $4, $4
TAG413:
and $1, $4, $4
mtlo $1
sll $0, $0, 0
subu $2, $1, $4
TAG414:
lui $3, 15
mflo $4
nor $2, $4, $4
lui $1, 13
TAG415:
lui $4, 11
mthi $1
subu $3, $4, $4
sh $1, 0($3)
TAG416:
bne $3, $3, TAG417
addi $1, $3, 5
beq $3, $1, TAG417
lui $1, 8
TAG417:
blez $1, TAG418
multu $1, $1
addiu $4, $1, 4
mtlo $1
TAG418:
sll $0, $0, 0
addu $3, $4, $4
mflo $1
blez $4, TAG419
TAG419:
sra $3, $1, 9
bne $1, $1, TAG420
sw $1, -1024($3)
bltz $1, TAG420
TAG420:
sll $0, $0, 0
mult $3, $2
beq $2, $3, TAG421
sltiu $2, $2, 10
TAG421:
sh $2, 0($2)
sllv $2, $2, $2
bne $2, $2, TAG422
mult $2, $2
TAG422:
sb $2, 0($2)
mtlo $2
sltiu $2, $2, 14
lb $2, 0($2)
TAG423:
srlv $2, $2, $2
mult $2, $2
bltz $2, TAG424
sb $2, 0($2)
TAG424:
blez $2, TAG425
sb $2, 0($2)
mfhi $4
ori $1, $4, 1
TAG425:
blez $1, TAG426
lui $3, 9
sll $0, $0, 0
srl $1, $1, 1
TAG426:
lui $3, 12
div $3, $3
addiu $1, $3, 0
lui $4, 13
TAG427:
bgtz $4, TAG428
mtlo $4
xori $1, $4, 7
divu $1, $4
TAG428:
mthi $1
xor $4, $1, $1
lbu $1, 0($4)
mfhi $3
TAG429:
sll $0, $0, 0
nor $3, $3, $3
lui $4, 1
mfhi $2
TAG430:
divu $2, $2
mfhi $4
mult $4, $2
sll $0, $0, 0
TAG431:
lui $3, 8
multu $3, $4
sll $0, $0, 0
mflo $3
TAG432:
bgtz $3, TAG433
add $2, $3, $3
lh $1, 0($3)
lh $3, 0($3)
TAG433:
beq $3, $3, TAG434
lb $4, 0($3)
add $2, $3, $4
andi $3, $3, 1
TAG434:
lui $2, 13
sw $3, 0($3)
lbu $3, 0($3)
divu $3, $2
TAG435:
mfhi $3
lhu $2, 0($3)
bne $3, $3, TAG436
mflo $4
TAG436:
mtlo $4
sltu $3, $4, $4
lui $1, 11
mtlo $1
TAG437:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mult $4, $1
TAG438:
mthi $4
mfhi $2
ori $4, $4, 4
addiu $1, $2, 12
TAG439:
lb $3, 0($1)
lb $3, 0($1)
divu $1, $3
blez $3, TAG440
TAG440:
mfhi $1
beq $1, $1, TAG441
sb $3, 0($3)
lb $4, 0($3)
TAG441:
sb $4, 0($4)
lui $2, 5
mult $4, $4
lh $1, 0($4)
TAG442:
sw $1, -1284($1)
lui $3, 7
mthi $1
mthi $1
TAG443:
lui $3, 14
beq $3, $3, TAG444
divu $3, $3
blez $3, TAG444
TAG444:
lui $1, 2
xor $2, $3, $3
mthi $1
sh $2, 0($2)
TAG445:
lui $4, 10
add $4, $2, $4
mthi $4
ori $2, $4, 2
TAG446:
bne $2, $2, TAG447
addiu $3, $2, 8
sll $0, $0, 0
sll $0, $0, 0
TAG447:
mult $2, $2
sll $0, $0, 0
lui $4, 12
bgez $4, TAG448
TAG448:
subu $2, $4, $4
lui $1, 8
mflo $3
mthi $4
TAG449:
mflo $1
multu $3, $3
bltz $1, TAG450
lui $3, 15
TAG450:
beq $3, $3, TAG451
sll $0, $0, 0
sll $1, $3, 1
sb $1, 0($1)
TAG451:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
xori $3, $1, 12
TAG452:
beq $3, $3, TAG453
mthi $3
mflo $3
bltz $3, TAG453
TAG453:
sll $0, $0, 0
lui $2, 10
multu $2, $3
mthi $2
TAG454:
sll $0, $0, 0
and $4, $2, $2
blez $2, TAG455
sll $0, $0, 0
TAG455:
bgez $4, TAG456
lui $1, 8
sllv $3, $1, $4
multu $1, $3
TAG456:
slti $1, $3, 12
divu $1, $3
mtlo $3
bltz $1, TAG457
TAG457:
lbu $2, 0($1)
mfhi $2
mthi $1
mfhi $1
TAG458:
mfhi $3
lhu $2, 0($3)
beq $2, $1, TAG459
ori $2, $1, 13
TAG459:
lui $2, 2
lui $4, 0
sra $2, $4, 4
mflo $2
TAG460:
sll $0, $0, 0
beq $2, $2, TAG461
srl $4, $2, 11
sh $2, 0($4)
TAG461:
subu $1, $4, $4
lbu $3, -1280($4)
sb $3, -1280($4)
bgez $1, TAG462
TAG462:
mfhi $3
lui $1, 15
multu $3, $3
mfhi $3
TAG463:
sb $3, 0($3)
multu $3, $3
sb $3, 0($3)
multu $3, $3
TAG464:
sh $3, 0($3)
bgez $3, TAG465
mtlo $3
lw $4, 0($3)
TAG465:
mflo $3
lui $4, 6
multu $4, $3
mflo $3
TAG466:
multu $3, $3
multu $3, $3
lui $2, 13
mflo $1
TAG467:
sh $1, 0($1)
sltiu $4, $1, 10
addiu $3, $1, 3
mfhi $4
TAG468:
lui $1, 7
sb $4, 0($4)
sb $4, 0($4)
lhu $3, 0($4)
TAG469:
sub $4, $3, $3
mult $4, $4
lh $2, 0($3)
lui $2, 5
TAG470:
sll $0, $0, 0
sll $0, $0, 0
and $1, $1, $2
bgez $1, TAG471
TAG471:
andi $4, $1, 10
mflo $4
bltz $4, TAG472
mthi $4
TAG472:
lui $4, 12
bgtz $4, TAG473
mflo $4
lui $3, 10
TAG473:
mult $3, $3
lui $4, 4
sw $3, 0($3)
bgez $4, TAG474
TAG474:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
mflo $2
TAG475:
multu $2, $2
mfhi $1
sh $1, 0($1)
lui $3, 0
TAG476:
lb $2, 0($3)
mfhi $4
mfhi $4
mfhi $4
TAG477:
sw $4, 0($4)
sh $4, 0($4)
mult $4, $4
mthi $4
TAG478:
lw $4, 0($4)
ori $2, $4, 0
lui $4, 15
sll $0, $0, 0
TAG479:
mtlo $4
sra $1, $4, 1
mflo $1
xor $3, $1, $1
TAG480:
mthi $3
lui $4, 5
sll $0, $0, 0
mflo $3
TAG481:
lui $1, 7
lui $2, 11
sll $0, $0, 0
sll $0, $0, 0
TAG482:
subu $2, $4, $4
sll $4, $2, 3
lhu $3, 0($4)
subu $1, $2, $3
TAG483:
bne $1, $1, TAG484
sh $1, 0($1)
blez $1, TAG484
mfhi $3
TAG484:
xori $3, $3, 1
mfhi $1
lui $3, 6
xor $4, $3, $3
TAG485:
multu $4, $4
bltz $4, TAG486
mthi $4
blez $4, TAG486
TAG486:
lhu $2, 0($4)
bne $2, $2, TAG487
lhu $3, 0($4)
beq $4, $3, TAG487
TAG487:
slt $1, $3, $3
addiu $3, $3, 11
slti $1, $3, 15
slti $3, $3, 6
TAG488:
mult $3, $3
sh $3, 0($3)
lw $1, 0($3)
mtlo $1
TAG489:
mfhi $4
mflo $4
addi $2, $1, 0
mult $1, $4
TAG490:
slti $4, $2, 11
mtlo $4
mult $4, $2
bgez $4, TAG491
TAG491:
subu $4, $4, $4
sb $4, 0($4)
srl $1, $4, 5
bgtz $4, TAG492
TAG492:
lui $3, 14
sllv $1, $3, $1
bgez $1, TAG493
subu $1, $3, $1
TAG493:
bgtz $1, TAG494
mflo $2
mtlo $2
multu $2, $2
TAG494:
andi $4, $2, 9
lui $2, 5
beq $2, $4, TAG495
addiu $2, $2, 12
TAG495:
slti $4, $2, 3
mthi $2
bne $2, $2, TAG496
div $4, $2
TAG496:
slti $3, $4, 7
sltiu $3, $3, 13
sltu $4, $3, $4
mthi $3
TAG497:
slti $4, $4, 10
addu $4, $4, $4
lui $2, 0
mthi $4
TAG498:
bgtz $2, TAG499
mthi $2
xori $4, $2, 13
lh $3, 0($2)
TAG499:
lui $2, 15
blez $2, TAG500
sh $3, 0($3)
mthi $3
TAG500:
beq $2, $2, TAG501
mthi $2
div $2, $2
bne $2, $2, TAG501
TAG501:
sll $0, $0, 0
beq $2, $2, TAG502
sll $0, $0, 0
bgtz $2, TAG502
TAG502:
mflo $2
lbu $4, 0($4)
slti $1, $2, 3
beq $4, $4, TAG503
TAG503:
mthi $1
sra $4, $1, 9
mult $4, $1
mult $1, $4
TAG504:
mfhi $1
mult $1, $4
lui $3, 9
beq $3, $3, TAG505
TAG505:
xori $2, $3, 5
subu $1, $2, $2
sll $0, $0, 0
div $3, $3
TAG506:
mthi $3
sll $0, $0, 0
sll $0, $0, 0
srav $3, $3, $3
TAG507:
mthi $3
lui $2, 14
mtlo $2
bne $3, $2, TAG508
TAG508:
lui $4, 1
sll $0, $0, 0
bgtz $4, TAG509
mfhi $4
TAG509:
bne $4, $4, TAG510
mflo $2
divu $2, $4
bltz $2, TAG510
TAG510:
mflo $4
lui $2, 13
beq $2, $2, TAG511
sb $2, 0($4)
TAG511:
mflo $2
sb $2, 0($2)
bgez $2, TAG512
slt $4, $2, $2
TAG512:
or $3, $4, $4
mtlo $3
mthi $4
lui $4, 11
TAG513:
lui $2, 13
multu $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG514:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG515
sll $0, $0, 0
TAG515:
mthi $4
andi $2, $4, 10
sll $0, $0, 0
sb $2, 0($3)
TAG516:
mthi $3
bne $3, $3, TAG517
mthi $3
lui $3, 4
TAG517:
beq $3, $3, TAG518
sll $0, $0, 0
lui $2, 12
sh $2, 0($2)
TAG518:
mtlo $2
mtlo $2
slt $4, $2, $2
add $2, $4, $4
TAG519:
lui $3, 10
bne $3, $2, TAG520
ori $4, $3, 8
divu $3, $4
TAG520:
bgtz $4, TAG521
mfhi $4
xori $2, $4, 11
xor $2, $2, $4
TAG521:
srlv $2, $2, $2
lui $2, 5
addiu $1, $2, 6
srlv $2, $1, $1
TAG522:
lui $1, 12
mthi $1
sll $0, $0, 0
lui $1, 12
TAG523:
and $4, $1, $1
sllv $3, $4, $4
beq $1, $1, TAG524
sll $0, $0, 0
TAG524:
addu $2, $3, $3
sltu $1, $2, $3
bltz $1, TAG525
mult $1, $1
TAG525:
mult $1, $1
mult $1, $1
lbu $4, 0($1)
multu $1, $1
TAG526:
sh $4, 0($4)
nor $2, $4, $4
mthi $2
beq $4, $2, TAG527
TAG527:
addiu $2, $2, 0
bne $2, $2, TAG528
mtlo $2
mtlo $2
TAG528:
mthi $2
mthi $2
bne $2, $2, TAG529
mfhi $4
TAG529:
addiu $4, $4, 5
lw $4, 0($4)
bgez $4, TAG530
mfhi $1
TAG530:
divu $1, $1
lw $4, 1($1)
lui $2, 3
sll $0, $0, 0
TAG531:
mflo $3
mfhi $4
mflo $3
multu $4, $3
TAG532:
mflo $3
sh $3, 0($3)
mult $3, $3
lbu $1, 0($3)
TAG533:
mfhi $2
mfhi $2
bltz $2, TAG534
multu $2, $1
TAG534:
slti $3, $2, 10
mthi $3
bgez $2, TAG535
mult $2, $2
TAG535:
lui $4, 1
bgez $4, TAG536
mtlo $4
sw $4, 0($3)
TAG536:
mfhi $4
bgtz $4, TAG537
mthi $4
beq $4, $4, TAG537
TAG537:
srl $1, $4, 4
bltz $4, TAG538
lui $4, 4
slti $3, $1, 0
TAG538:
blez $3, TAG539
xori $1, $3, 4
lw $2, 0($3)
xor $2, $1, $1
TAG539:
or $3, $2, $2
mtlo $3
sllv $1, $2, $3
bgez $2, TAG540
TAG540:
slt $2, $1, $1
sb $2, 0($1)
bgtz $2, TAG541
lh $4, 0($2)
TAG541:
mtlo $4
lui $4, 11
bne $4, $4, TAG542
xori $2, $4, 2
TAG542:
mtlo $2
beq $2, $2, TAG543
lui $1, 12
lui $2, 0
TAG543:
multu $2, $2
sll $0, $0, 0
addu $1, $2, $1
andi $4, $2, 15
TAG544:
srl $1, $4, 2
sh $1, 0($1)
blez $1, TAG545
lui $2, 12
TAG545:
beq $2, $2, TAG546
andi $1, $2, 15
div $2, $1
sb $2, 0($1)
TAG546:
srav $1, $1, $1
andi $1, $1, 2
mult $1, $1
mtlo $1
TAG547:
lui $3, 10
subu $2, $1, $1
subu $4, $2, $3
sub $4, $4, $1
TAG548:
mfhi $3
lui $1, 13
sw $3, 0($3)
bgtz $4, TAG549
TAG549:
mfhi $4
bltz $4, TAG550
addiu $4, $4, 10
mflo $1
TAG550:
mfhi $1
lb $2, 0($1)
lui $1, 5
sll $0, $0, 0
TAG551:
sll $0, $0, 0
lui $3, 11
sll $4, $3, 3
srlv $2, $3, $4
TAG552:
sll $0, $0, 0
blez $2, TAG553
sll $0, $0, 0
mthi $2
TAG553:
beq $3, $3, TAG554
srav $4, $3, $3
or $4, $4, $4
bne $4, $4, TAG554
TAG554:
sll $0, $0, 0
mthi $4
lui $1, 4
slt $4, $4, $4
TAG555:
sw $4, 0($4)
addu $1, $4, $4
bgtz $4, TAG556
lb $3, 0($4)
TAG556:
lbu $1, 0($3)
xor $1, $3, $1
multu $1, $3
xori $2, $1, 15
TAG557:
subu $1, $2, $2
sltiu $3, $1, 8
sb $2, 0($1)
sb $2, 0($3)
TAG558:
div $3, $3
bgez $3, TAG559
sb $3, 0($3)
lhu $4, 0($3)
TAG559:
sb $4, 0($4)
mflo $1
bne $4, $1, TAG560
mflo $1
TAG560:
srlv $2, $1, $1
lui $3, 2
bltz $3, TAG561
sll $0, $0, 0
TAG561:
sll $0, $0, 0
sll $0, $0, 0
slti $2, $2, 11
lui $4, 4
TAG562:
andi $3, $4, 2
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
TAG563:
mflo $1
sb $1, 0($1)
addu $4, $1, $1
srl $1, $4, 2
TAG564:
lh $4, 0($1)
mtlo $1
blez $4, TAG565
subu $2, $4, $1
TAG565:
sll $0, $0, 0
bgez $2, TAG566
mfhi $3
sw $2, 0($1)
TAG566:
lui $2, 8
lui $1, 7
srl $2, $3, 0
bne $3, $2, TAG567
TAG567:
or $2, $2, $2
lui $3, 5
sw $2, 0($2)
blez $2, TAG568
TAG568:
xori $2, $3, 4
sllv $3, $2, $3
addu $1, $3, $3
div $3, $3
TAG569:
andi $4, $1, 14
bne $1, $1, TAG570
sll $0, $0, 0
mtlo $4
TAG570:
slt $2, $2, $2
srl $4, $2, 2
beq $2, $4, TAG571
lb $1, 0($4)
TAG571:
bne $1, $1, TAG572
xor $3, $1, $1
bgez $1, TAG572
sltu $1, $1, $3
TAG572:
nor $1, $1, $1
sh $1, 1($1)
bne $1, $1, TAG573
slti $4, $1, 6
TAG573:
sb $4, 0($4)
and $4, $4, $4
mfhi $1
mtlo $4
TAG574:
mtlo $1
sh $1, 0($1)
slt $3, $1, $1
bgtz $3, TAG575
TAG575:
lh $4, 0($3)
bne $3, $3, TAG576
mult $4, $3
lbu $2, 0($3)
TAG576:
beq $2, $2, TAG577
mtlo $2
divu $2, $2
div $2, $2
TAG577:
lhu $3, 0($2)
bgez $2, TAG578
mthi $2
and $3, $3, $3
TAG578:
sb $3, 0($3)
lui $3, 3
sltiu $1, $3, 5
sll $0, $0, 0
TAG579:
lh $2, 0($1)
bltz $1, TAG580
lui $1, 4
lui $3, 6
TAG580:
blez $3, TAG581
lui $2, 4
and $4, $3, $2
mflo $1
TAG581:
sub $3, $1, $1
addiu $1, $1, 15
lui $3, 2
mfhi $1
TAG582:
lw $2, 0($1)
sllv $4, $2, $2
mflo $4
sh $2, 0($4)
TAG583:
sb $4, 0($4)
blez $4, TAG584
multu $4, $4
mflo $2
TAG584:
sltu $2, $2, $2
sw $2, 0($2)
mfhi $1
mtlo $2
TAG585:
mtlo $1
mthi $1
mtlo $1
lui $2, 4
TAG586:
lui $1, 12
div $2, $2
mult $1, $1
mfhi $3
TAG587:
mfhi $1
ori $1, $3, 14
andi $2, $1, 13
addu $4, $2, $1
TAG588:
sll $0, $0, 0
beq $2, $2, TAG589
mthi $4
and $3, $2, $4
TAG589:
mflo $4
and $1, $4, $4
mult $3, $4
sb $3, 0($1)
TAG590:
sw $1, 0($1)
bgez $1, TAG591
mtlo $1
mthi $1
TAG591:
blez $1, TAG592
mthi $1
lw $3, 0($1)
mflo $2
TAG592:
mtlo $2
mult $2, $2
addiu $3, $2, 9
mthi $2
TAG593:
lui $4, 7
xor $3, $4, $3
bne $3, $4, TAG594
sll $0, $0, 0
TAG594:
xori $3, $3, 8
srl $3, $3, 12
bne $3, $3, TAG595
mfhi $1
TAG595:
mtlo $1
lui $2, 9
bne $2, $2, TAG596
multu $2, $1
TAG596:
subu $4, $2, $2
multu $4, $4
mfhi $4
sll $0, $0, 0
TAG597:
mult $4, $4
sub $4, $4, $4
lui $1, 10
lui $2, 6
TAG598:
bgez $2, TAG599
sll $0, $0, 0
xori $4, $2, 11
bgtz $2, TAG599
TAG599:
sb $4, 0($4)
xor $4, $4, $4
srlv $3, $4, $4
mflo $4
TAG600:
mtlo $4
mult $4, $4
mfhi $1
lui $2, 7
TAG601:
or $2, $2, $2
multu $2, $2
mthi $2
slt $1, $2, $2
TAG602:
bgtz $1, TAG603
mthi $1
mflo $3
sll $4, $1, 4
TAG603:
sra $2, $4, 14
lui $3, 15
lui $3, 2
sll $0, $0, 0
TAG604:
bgez $3, TAG605
sll $0, $0, 0
srlv $2, $3, $3
mfhi $3
TAG605:
lui $2, 5
sll $0, $0, 0
blez $3, TAG606
mult $2, $3
TAG606:
ori $3, $2, 10
sll $0, $0, 0
mthi $1
addu $4, $2, $1
TAG607:
sll $0, $0, 0
beq $4, $3, TAG608
xori $4, $4, 1
mfhi $1
TAG608:
sub $1, $1, $1
beq $1, $1, TAG609
sb $1, 0($1)
srl $4, $1, 6
TAG609:
sll $0, $0, 0
multu $4, $4
mtlo $4
mthi $4
TAG610:
blez $4, TAG611
lui $4, 13
lui $1, 7
lui $4, 3
TAG611:
mfhi $1
blez $1, TAG612
lui $2, 11
lui $4, 9
TAG612:
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
TAG613:
mtlo $3
mtlo $3
sll $0, $0, 0
mthi $3
TAG614:
bgez $3, TAG615
mtlo $3
sh $3, 0($3)
mtlo $3
TAG615:
mflo $2
mflo $2
multu $2, $2
bgtz $2, TAG616
TAG616:
subu $2, $2, $2
lh $2, 0($2)
mflo $2
mtlo $2
TAG617:
lui $2, 12
div $2, $2
div $2, $2
or $4, $2, $2
TAG618:
mtlo $4
divu $4, $4
mfhi $3
bgtz $4, TAG619
TAG619:
mfhi $2
mult $2, $2
beq $2, $3, TAG620
mthi $2
TAG620:
lw $2, 0($2)
sra $1, $2, 11
mult $2, $2
lui $4, 14
TAG621:
lui $3, 12
slt $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG622:
mtlo $1
bltz $1, TAG623
sb $1, 0($1)
addi $4, $1, 2
TAG623:
bltz $4, TAG624
mtlo $4
addu $1, $4, $4
multu $4, $4
TAG624:
srlv $4, $1, $1
beq $4, $1, TAG625
lhu $2, 0($1)
lui $3, 14
TAG625:
mfhi $2
sll $0, $0, 0
sll $3, $3, 4
beq $2, $3, TAG626
TAG626:
addiu $4, $3, 8
beq $3, $4, TAG627
subu $2, $3, $4
mfhi $4
TAG627:
andi $3, $4, 4
mthi $3
bgez $3, TAG628
sh $3, 0($4)
TAG628:
lui $3, 12
mfhi $2
mthi $3
mfhi $4
TAG629:
bltz $4, TAG630
sll $0, $0, 0
bgez $4, TAG630
mult $4, $4
TAG630:
sll $0, $0, 0
mtlo $4
slt $3, $4, $4
lui $2, 4
TAG631:
mthi $2
multu $2, $2
or $1, $2, $2
mflo $3
TAG632:
mflo $1
mflo $1
mfhi $3
mtlo $3
TAG633:
addiu $1, $3, 15
mthi $1
mthi $3
mthi $3
TAG634:
lui $3, 13
slti $1, $1, 7
sll $0, $0, 0
lui $2, 4
TAG635:
sll $0, $0, 0
mflo $1
mfhi $2
sltu $3, $2, $1
TAG636:
mthi $3
mtlo $3
andi $2, $3, 5
lbu $2, 0($2)
TAG637:
andi $2, $2, 11
bgtz $2, TAG638
mult $2, $2
mult $2, $2
TAG638:
mthi $2
mtlo $2
sb $2, 0($2)
multu $2, $2
TAG639:
bgez $2, TAG640
add $4, $2, $2
bgez $2, TAG640
sb $4, 0($2)
TAG640:
lb $2, 0($4)
and $1, $2, $4
sltiu $3, $2, 10
beq $1, $2, TAG641
TAG641:
andi $3, $3, 2
srlv $3, $3, $3
bltz $3, TAG642
multu $3, $3
TAG642:
lw $1, 0($3)
multu $3, $1
beq $3, $3, TAG643
lb $1, 0($1)
TAG643:
mflo $4
addi $4, $4, 13
bne $4, $4, TAG644
srl $4, $1, 9
TAG644:
beq $4, $4, TAG645
lh $1, 0($4)
mfhi $3
mtlo $1
TAG645:
xor $4, $3, $3
lui $3, 8
beq $3, $3, TAG646
ori $1, $3, 1
TAG646:
beq $1, $1, TAG647
sll $0, $0, 0
mult $1, $1
bgtz $1, TAG647
TAG647:
mthi $1
bltz $1, TAG648
sll $0, $0, 0
sll $4, $1, 10
TAG648:
xori $1, $4, 7
sll $0, $0, 0
sll $0, $0, 0
sh $1, 0($2)
TAG649:
mflo $1
addiu $2, $1, 13
srav $1, $2, $2
mtlo $2
TAG650:
sltu $2, $1, $1
sb $1, 0($1)
sb $2, 0($1)
sh $2, 0($2)
TAG651:
lui $2, 0
add $4, $2, $2
mthi $2
lui $4, 3
TAG652:
mtlo $4
bne $4, $4, TAG653
div $4, $4
mfhi $1
TAG653:
sllv $3, $1, $1
sllv $1, $3, $1
mtlo $1
sllv $2, $1, $1
TAG654:
srl $4, $2, 6
mtlo $4
lbu $3, 0($4)
mthi $3
TAG655:
mult $3, $3
mtlo $3
bgez $3, TAG656
lui $4, 15
TAG656:
mtlo $4
sll $0, $0, 0
multu $4, $1
sll $0, $0, 0
TAG657:
blez $2, TAG658
mflo $2
bne $2, $2, TAG658
xor $3, $2, $2
TAG658:
multu $3, $3
bgez $3, TAG659
or $2, $3, $3
sh $2, 0($3)
TAG659:
multu $2, $2
sub $2, $2, $2
lw $1, 0($2)
mtlo $2
TAG660:
mult $1, $1
mthi $1
andi $2, $1, 1
sb $1, 0($2)
TAG661:
bne $2, $2, TAG662
or $4, $2, $2
sw $2, 0($4)
mflo $4
TAG662:
lh $3, 0($4)
sltiu $2, $4, 3
lbu $4, 0($4)
mthi $2
TAG663:
mfhi $2
lui $2, 0
lui $1, 5
xori $2, $4, 8
TAG664:
div $2, $2
ori $1, $2, 12
lhu $4, 0($2)
mtlo $1
TAG665:
mtlo $4
beq $4, $4, TAG666
lui $1, 6
srl $4, $4, 5
TAG666:
addiu $3, $4, 3
srl $4, $4, 5
lui $4, 13
mfhi $2
TAG667:
lui $3, 15
multu $3, $2
mthi $3
multu $3, $3
TAG668:
divu $3, $3
sll $0, $0, 0
sltu $4, $2, $2
lw $4, 0($4)
TAG669:
srav $1, $4, $4
bne $1, $4, TAG670
mfhi $2
lui $1, 8
TAG670:
sll $0, $0, 0
divu $1, $1
mult $1, $1
srl $4, $1, 1
TAG671:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
divu $4, $4
TAG672:
lw $2, 0($2)
blez $2, TAG673
mult $2, $2
sw $2, 0($2)
TAG673:
multu $2, $2
bgtz $2, TAG674
xori $1, $2, 8
sw $1, 0($2)
TAG674:
lui $3, 2
mthi $1
addiu $4, $3, 15
bne $4, $4, TAG675
TAG675:
mthi $4
blez $4, TAG676
mfhi $3
sltiu $2, $4, 6
TAG676:
bltz $2, TAG677
lui $4, 8
sw $4, 0($2)
sra $3, $2, 12
TAG677:
bne $3, $3, TAG678
lbu $2, 0($3)
lw $2, 0($2)
ori $1, $3, 11
TAG678:
addiu $2, $1, 14
bne $1, $1, TAG679
sb $1, 0($1)
ori $3, $2, 14
TAG679:
lui $3, 7
sra $2, $3, 7
bgtz $3, TAG680
slti $1, $2, 1
TAG680:
sw $1, 0($1)
lw $3, 0($1)
sw $3, 0($1)
xor $1, $3, $3
TAG681:
nor $2, $1, $1
multu $1, $1
lhu $4, 0($1)
bne $1, $2, TAG682
TAG682:
lh $2, 0($4)
slt $3, $2, $4
multu $3, $2
mtlo $2
TAG683:
beq $3, $3, TAG684
sh $3, 0($3)
andi $2, $3, 15
div $3, $2
TAG684:
or $2, $2, $2
lui $3, 6
and $4, $2, $2
sra $4, $3, 8
TAG685:
slti $2, $4, 2
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
TAG686:
mthi $4
bgtz $4, TAG687
srl $2, $4, 14
add $2, $4, $4
TAG687:
mfhi $2
sll $0, $0, 0
beq $2, $2, TAG688
lui $1, 9
TAG688:
bltz $1, TAG689
div $1, $1
sltiu $4, $1, 4
sllv $3, $1, $4
TAG689:
mfhi $3
sh $3, 0($3)
mtlo $3
mflo $2
TAG690:
lui $4, 12
bne $2, $4, TAG691
mfhi $1
sb $4, 0($1)
TAG691:
sh $1, 0($1)
bne $1, $1, TAG692
subu $1, $1, $1
addiu $4, $1, 3
TAG692:
ori $1, $4, 2
mflo $2
bne $4, $1, TAG693
lui $1, 6
TAG693:
bne $1, $1, TAG694
addiu $4, $1, 10
mflo $1
sb $1, 0($1)
TAG694:
sll $1, $1, 10
sh $1, 0($1)
mult $1, $1
mult $1, $1
TAG695:
lui $4, 12
sll $4, $1, 6
bgtz $1, TAG696
sltiu $2, $1, 14
TAG696:
mfhi $3
mfhi $2
mfhi $4
mtlo $2
TAG697:
beq $4, $4, TAG698
lb $4, 0($4)
beq $4, $4, TAG698
mfhi $1
TAG698:
lbu $4, 0($1)
mult $1, $4
multu $1, $4
sb $4, 0($1)
TAG699:
sltiu $2, $4, 14
mult $2, $2
blez $2, TAG700
subu $3, $2, $2
TAG700:
xor $2, $3, $3
bltz $3, TAG701
lh $4, 0($2)
sh $2, 0($2)
TAG701:
sw $4, 0($4)
add $1, $4, $4
bgez $1, TAG702
lui $3, 1
TAG702:
mfhi $1
addu $3, $3, $1
lui $1, 9
sll $0, $0, 0
TAG703:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
subu $4, $1, $1
TAG704:
addi $1, $4, 9
mfhi $1
multu $4, $4
slti $2, $1, 15
TAG705:
sw $2, 0($2)
mthi $2
bgtz $2, TAG706
or $2, $2, $2
TAG706:
mtlo $2
slti $2, $2, 14
multu $2, $2
srav $1, $2, $2
TAG707:
mfhi $4
mflo $2
bltz $2, TAG708
subu $2, $4, $4
TAG708:
mtlo $2
lw $3, 0($2)
sub $4, $3, $3
addi $1, $3, 13
TAG709:
beq $1, $1, TAG710
slt $1, $1, $1
lui $3, 5
beq $1, $3, TAG710
TAG710:
mflo $3
slt $4, $3, $3
sllv $4, $3, $4
lui $2, 5
TAG711:
andi $1, $2, 9
lui $3, 13
bgtz $3, TAG712
lui $4, 9
TAG712:
lui $1, 5
mthi $4
srl $3, $1, 7
slti $1, $4, 11
TAG713:
lui $2, 14
multu $1, $1
bgtz $2, TAG714
srlv $4, $1, $1
TAG714:
mult $4, $4
lui $2, 15
blez $4, TAG715
mfhi $3
TAG715:
lui $4, 9
mtlo $4
mthi $3
sll $0, $0, 0
TAG716:
mthi $4
beq $4, $4, TAG717
div $4, $4
lbu $1, 0($4)
TAG717:
ori $2, $1, 15
mtlo $1
beq $2, $2, TAG718
lui $4, 0
TAG718:
mult $4, $4
bne $4, $4, TAG719
mthi $4
sll $4, $4, 3
TAG719:
bgtz $4, TAG720
addiu $2, $4, 1
mflo $4
addu $2, $4, $4
TAG720:
slti $2, $2, 2
beq $2, $2, TAG721
lb $3, 0($2)
sub $4, $2, $2
TAG721:
sw $4, 0($4)
multu $4, $4
nor $4, $4, $4
sh $4, 1($4)
TAG722:
bgez $4, TAG723
subu $1, $4, $4
mflo $3
mthi $1
TAG723:
lw $3, 0($3)
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG724:
and $3, $4, $4
divu $4, $4
lui $2, 11
sh $4, 1($4)
TAG725:
nor $3, $2, $2
mtlo $3
lui $2, 15
xori $2, $2, 7
TAG726:
multu $2, $2
lui $4, 15
sll $0, $0, 0
mthi $3
TAG727:
sll $0, $0, 0
div $3, $3
lui $4, 3
bne $3, $4, TAG728
TAG728:
addu $4, $4, $4
sll $0, $0, 0
slti $2, $4, 4
mthi $4
TAG729:
multu $2, $2
xori $1, $2, 6
lb $1, 0($2)
mthi $1
TAG730:
lui $2, 2
divu $1, $1
divu $1, $1
xori $3, $2, 5
TAG731:
sll $0, $0, 0
lui $4, 12
slti $1, $3, 10
addu $2, $1, $4
TAG732:
sll $0, $0, 0
bne $2, $2, TAG733
mult $2, $2
sll $0, $0, 0
TAG733:
bgtz $1, TAG734
lb $3, 0($1)
divu $3, $3
sb $1, 1($3)
TAG734:
sll $0, $0, 0
sltu $2, $3, $3
sltu $2, $3, $3
sw $2, 1($3)
TAG735:
mfhi $4
mtlo $4
beq $2, $2, TAG736
ori $4, $2, 10
TAG736:
blez $4, TAG737
mfhi $1
sh $1, 0($4)
srlv $2, $4, $4
TAG737:
blez $2, TAG738
sw $2, 0($2)
sh $2, 0($2)
ori $1, $2, 7
TAG738:
bgtz $1, TAG739
lui $3, 2
sub $4, $3, $1
beq $4, $4, TAG739
TAG739:
mflo $1
mthi $4
lui $3, 12
mflo $2
TAG740:
lui $1, 3
mflo $3
bltz $3, TAG741
lh $1, 0($3)
TAG741:
sw $1, 0($1)
mult $1, $1
bne $1, $1, TAG742
lh $2, 0($1)
TAG742:
slti $4, $2, 13
lbu $4, 0($4)
addi $3, $4, 15
lui $3, 6
TAG743:
beq $3, $3, TAG744
mfhi $2
mflo $2
beq $3, $2, TAG744
TAG744:
srl $1, $2, 6
srl $1, $2, 7
sw $2, 0($1)
multu $2, $1
TAG745:
mult $1, $1
blez $1, TAG746
mflo $1
lui $4, 1
TAG746:
bgtz $4, TAG747
lw $4, 0($4)
multu $4, $4
lui $4, 6
TAG747:
lui $3, 15
blez $4, TAG748
divu $4, $3
blez $3, TAG748
TAG748:
sll $0, $0, 0
mtlo $3
lui $4, 9
blez $3, TAG749
TAG749:
lui $1, 3
div $1, $1
mflo $2
bne $4, $2, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop