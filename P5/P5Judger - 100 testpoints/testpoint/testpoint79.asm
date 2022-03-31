ori $1, $0, 2
ori $2, $0, 10
ori $3, $0, 2
ori $4, $0, 9
sw $1, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $1, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $3, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $4, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $4, 64($0)
sw $1, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $4, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $4, 108($0)
sw $2, 112($0)
sw $1, 116($0)
sw $4, 120($0)
sw $4, 124($0)
addu $2, $2, $2
bltz $2, TAG1
lhu $4, 0($2)
sw $4, 0($2)
TAG1:
multu $4, $4
lui $3, 4
divu $4, $3
ori $3, $3, 5
TAG2:
mthi $3
xor $3, $3, $3
sb $3, 0($3)
beq $3, $3, TAG3
TAG3:
nor $2, $3, $3
lw $4, 1($2)
multu $2, $3
beq $3, $3, TAG4
TAG4:
mult $4, $4
mult $4, $4
and $1, $4, $4
mfhi $1
TAG5:
or $4, $1, $1
lui $4, 5
bne $1, $1, TAG6
lui $1, 15
TAG6:
bne $1, $1, TAG7
sll $0, $0, 0
beq $1, $1, TAG7
mult $1, $1
TAG7:
mflo $4
mult $1, $1
sra $1, $4, 4
mtlo $4
TAG8:
lw $3, 0($1)
bne $1, $1, TAG9
mthi $3
mtlo $3
TAG9:
sw $3, 0($3)
lui $1, 15
divu $1, $1
and $1, $3, $3
TAG10:
lw $2, 0($1)
mflo $3
mtlo $1
bgtz $2, TAG11
TAG11:
lb $4, 0($3)
blez $4, TAG12
mthi $3
sra $1, $3, 1
TAG12:
bne $1, $1, TAG13
mtlo $1
addiu $1, $1, 7
mthi $1
TAG13:
or $2, $1, $1
multu $1, $2
sb $1, 0($1)
blez $2, TAG14
TAG14:
or $4, $2, $2
mflo $2
mtlo $2
sb $2, 0($4)
TAG15:
mthi $2
blez $2, TAG16
srl $1, $2, 10
bne $1, $2, TAG16
TAG16:
multu $1, $1
bne $1, $1, TAG17
mult $1, $1
bne $1, $1, TAG17
TAG17:
lui $1, 9
sll $1, $1, 5
and $4, $1, $1
divu $4, $1
TAG18:
blez $4, TAG19
lui $2, 3
bne $2, $4, TAG19
sll $0, $0, 0
TAG19:
mthi $1
mtlo $1
blez $1, TAG20
addu $4, $1, $1
TAG20:
bltz $4, TAG21
sll $0, $0, 0
bne $4, $4, TAG21
sll $0, $0, 0
TAG21:
multu $3, $3
lui $3, 12
sll $0, $0, 0
bgez $3, TAG22
TAG22:
or $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
subu $1, $3, $3
TAG23:
mtlo $1
bne $1, $1, TAG24
lh $1, 0($1)
mult $1, $1
TAG24:
sb $1, 0($1)
bgtz $1, TAG25
mult $1, $1
srlv $3, $1, $1
TAG25:
mthi $3
addi $4, $3, 5
mfhi $2
beq $2, $3, TAG26
TAG26:
and $4, $2, $2
sh $2, 0($4)
sb $4, 0($4)
multu $2, $2
TAG27:
multu $4, $4
bne $4, $4, TAG28
mflo $4
bltz $4, TAG28
TAG28:
mflo $3
bgez $4, TAG29
mtlo $4
addiu $1, $3, 9
TAG29:
lui $2, 12
bltz $1, TAG30
sll $0, $0, 0
sw $2, 0($1)
TAG30:
mtlo $2
subu $3, $2, $2
blez $3, TAG31
xori $2, $3, 1
TAG31:
lb $2, 0($2)
mthi $2
lb $1, 0($2)
bne $2, $2, TAG32
TAG32:
lui $2, 6
beq $2, $2, TAG33
srlv $4, $1, $1
add $1, $1, $2
TAG33:
sw $1, 0($1)
andi $1, $1, 4
bne $1, $1, TAG34
multu $1, $1
TAG34:
lui $4, 14
beq $4, $4, TAG35
mfhi $1
mflo $2
TAG35:
mfhi $1
mtlo $2
xori $4, $1, 14
lui $4, 12
TAG36:
sll $0, $0, 0
srlv $4, $4, $4
divu $4, $4
lui $1, 6
TAG37:
beq $1, $1, TAG38
lui $4, 11
mthi $4
srav $4, $1, $1
TAG38:
mflo $3
beq $3, $3, TAG39
divu $3, $3
div $3, $4
TAG39:
div $3, $3
srlv $3, $3, $3
mtlo $3
bgez $3, TAG40
TAG40:
multu $3, $3
and $2, $3, $3
lui $4, 5
lui $1, 11
TAG41:
xor $2, $1, $1
lbu $1, 0($2)
sra $1, $1, 3
lui $4, 5
TAG42:
sllv $1, $4, $4
blez $4, TAG43
addu $1, $4, $4
xor $1, $4, $4
TAG43:
sh $1, 0($1)
beq $1, $1, TAG44
mult $1, $1
mflo $3
TAG44:
mult $3, $3
mthi $3
ori $2, $3, 12
lh $3, 0($3)
TAG45:
lui $2, 6
bne $3, $3, TAG46
addu $2, $2, $2
mflo $4
TAG46:
lw $1, 0($4)
mflo $4
addiu $1, $1, 9
mthi $4
TAG47:
mult $1, $1
srav $2, $1, $1
lui $4, 12
bltz $1, TAG48
TAG48:
sll $0, $0, 0
mfhi $1
lui $1, 12
srl $4, $1, 8
TAG49:
lui $2, 1
lui $3, 7
mthi $4
multu $2, $2
TAG50:
mult $3, $3
sll $0, $0, 0
slti $2, $3, 6
mthi $2
TAG51:
nor $3, $2, $2
mtlo $2
lui $1, 13
blez $2, TAG52
TAG52:
div $1, $1
mfhi $1
sub $4, $1, $1
ori $1, $1, 2
TAG53:
srl $1, $1, 1
mthi $1
bgez $1, TAG54
sb $1, 0($1)
TAG54:
addiu $1, $1, 9
addiu $3, $1, 8
beq $1, $1, TAG55
lbu $3, 0($1)
TAG55:
bgez $3, TAG56
multu $3, $3
xori $1, $3, 7
mflo $3
TAG56:
sltu $1, $3, $3
bne $1, $1, TAG57
mfhi $1
bltz $1, TAG57
TAG57:
mfhi $1
mthi $1
sub $1, $1, $1
srav $4, $1, $1
TAG58:
mflo $3
sb $4, 0($3)
mtlo $3
xor $2, $4, $4
TAG59:
lui $1, 8
addiu $3, $1, 4
sll $0, $0, 0
multu $1, $1
TAG60:
multu $3, $3
xor $4, $3, $3
andi $3, $3, 9
addi $3, $3, 12
TAG61:
bgez $3, TAG62
sb $3, 0($3)
sw $3, 0($3)
lb $4, 0($3)
TAG62:
xori $4, $4, 2
srlv $3, $4, $4
bne $3, $3, TAG63
mthi $4
TAG63:
srlv $1, $3, $3
mtlo $3
ori $4, $3, 12
mtlo $1
TAG64:
bltz $4, TAG65
slti $3, $4, 12
divu $4, $4
sb $4, 0($4)
TAG65:
sb $3, 0($3)
beq $3, $3, TAG66
mthi $3
ori $4, $3, 8
TAG66:
bne $4, $4, TAG67
sw $4, 0($4)
mflo $2
lui $3, 8
TAG67:
mthi $3
mult $3, $3
sll $0, $0, 0
multu $3, $3
TAG68:
lui $4, 12
addiu $4, $4, 14
sll $0, $0, 0
lui $4, 4
TAG69:
mflo $4
andi $1, $4, 12
mfhi $3
bne $4, $1, TAG70
TAG70:
sb $3, 0($3)
mtlo $3
lui $3, 5
divu $3, $3
TAG71:
divu $3, $3
mult $3, $3
sll $0, $0, 0
bltz $3, TAG72
TAG72:
divu $3, $3
div $3, $3
sllv $4, $3, $3
sll $0, $0, 0
TAG73:
mult $2, $2
lui $1, 5
mtlo $2
subu $4, $1, $1
TAG74:
lui $4, 7
sll $0, $0, 0
mfhi $1
lui $2, 5
TAG75:
sll $0, $0, 0
addiu $2, $2, 1
bgez $2, TAG76
sll $0, $0, 0
TAG76:
divu $4, $4
beq $4, $4, TAG77
sltiu $4, $4, 12
beq $4, $4, TAG77
TAG77:
mult $4, $4
mfhi $3
multu $4, $4
bne $4, $4, TAG78
TAG78:
mflo $1
lbu $2, 0($3)
xor $1, $1, $3
addiu $1, $1, 14
TAG79:
mfhi $3
mfhi $4
sh $4, 0($1)
mtlo $4
TAG80:
sw $4, 0($4)
bgtz $4, TAG81
and $2, $4, $4
sb $4, 0($4)
TAG81:
lui $1, 6
sltiu $4, $2, 6
beq $2, $1, TAG82
lb $1, 0($2)
TAG82:
srl $3, $1, 4
mflo $2
andi $4, $3, 4
lbu $1, 0($4)
TAG83:
mult $1, $1
srl $1, $1, 4
sh $1, 0($1)
mflo $4
TAG84:
mtlo $4
mfhi $4
beq $4, $4, TAG85
lb $1, 0($4)
TAG85:
andi $2, $1, 9
multu $1, $2
nor $2, $2, $2
lb $2, 0($1)
TAG86:
lb $2, 0($2)
lb $2, 0($2)
blez $2, TAG87
mfhi $1
TAG87:
lui $1, 14
div $1, $1
lui $4, 11
sll $0, $0, 0
TAG88:
sll $0, $0, 0
bne $1, $1, TAG89
div $1, $1
sll $0, $0, 0
TAG89:
bgtz $4, TAG90
mtlo $4
addu $2, $4, $4
mtlo $4
TAG90:
lui $2, 14
bltz $2, TAG91
sll $0, $0, 0
multu $1, $1
TAG91:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
xori $2, $1, 13
TAG92:
bgez $2, TAG93
mfhi $1
sh $1, 0($2)
and $4, $2, $2
TAG93:
xor $1, $4, $4
sll $3, $1, 14
bgtz $3, TAG94
mflo $1
TAG94:
and $3, $1, $1
sb $3, 0($1)
mthi $1
bgez $3, TAG95
TAG95:
lbu $4, 0($3)
beq $3, $4, TAG96
mfhi $3
sh $4, 0($4)
TAG96:
slt $2, $3, $3
sb $3, 0($3)
lbu $3, 0($2)
mfhi $1
TAG97:
mthi $1
subu $1, $1, $1
mflo $3
beq $3, $1, TAG98
TAG98:
mult $3, $3
lb $3, 0($3)
bne $3, $3, TAG99
lbu $4, 0($3)
TAG99:
sll $2, $4, 0
and $1, $2, $4
mfhi $2
sb $2, 0($1)
TAG100:
mthi $2
mtlo $2
lui $3, 15
lbu $1, 0($2)
TAG101:
mtlo $1
sub $1, $1, $1
beq $1, $1, TAG102
lh $2, 0($1)
TAG102:
mfhi $3
beq $3, $3, TAG103
mult $3, $3
subu $1, $2, $2
TAG103:
lb $1, 0($1)
subu $4, $1, $1
sb $4, 0($4)
multu $1, $4
TAG104:
beq $4, $4, TAG105
addi $4, $4, 6
bltz $4, TAG105
lh $4, 0($4)
TAG105:
mtlo $4
div $4, $4
divu $4, $4
mthi $4
TAG106:
lb $4, 0($4)
sltiu $4, $4, 8
mflo $2
bltz $4, TAG107
TAG107:
sltiu $1, $2, 0
and $3, $2, $2
sb $2, 0($1)
mthi $3
TAG108:
bne $3, $3, TAG109
lui $1, 11
multu $1, $1
mthi $1
TAG109:
mtlo $1
beq $1, $1, TAG110
mtlo $1
lui $4, 1
TAG110:
lui $2, 3
mtlo $2
mthi $2
multu $2, $2
TAG111:
blez $2, TAG112
xor $1, $2, $2
lui $2, 0
lbu $2, 0($1)
TAG112:
lui $3, 11
lui $2, 10
sll $0, $0, 0
xor $4, $3, $3
TAG113:
multu $4, $4
lui $1, 3
lui $4, 10
mthi $4
TAG114:
andi $3, $4, 8
bltz $4, TAG115
sw $3, 0($3)
mfhi $3
TAG115:
div $3, $3
sll $0, $0, 0
blez $3, TAG116
sll $0, $0, 0
TAG116:
mtlo $3
mflo $4
blez $3, TAG117
sll $0, $0, 0
TAG117:
beq $1, $1, TAG118
mflo $1
bgez $1, TAG118
lbu $3, 0($1)
TAG118:
beq $3, $3, TAG119
sll $0, $0, 0
srav $3, $3, $3
multu $3, $3
TAG119:
beq $3, $3, TAG120
subu $1, $3, $3
mult $1, $1
blez $1, TAG120
TAG120:
lui $1, 1
mfhi $2
lui $3, 2
beq $1, $1, TAG121
TAG121:
sll $0, $0, 0
bne $3, $3, TAG122
mfhi $3
mfhi $3
TAG122:
mfhi $3
bltz $3, TAG123
lb $3, 0($3)
andi $3, $3, 8
TAG123:
lui $1, 4
beq $3, $3, TAG124
sll $0, $0, 0
lui $1, 13
TAG124:
sll $0, $0, 0
lui $3, 8
mflo $4
divu $1, $4
TAG125:
lui $2, 0
mflo $4
mult $4, $4
bgtz $4, TAG126
TAG126:
sh $4, 0($4)
lui $4, 0
mtlo $4
nor $4, $4, $4
TAG127:
sll $1, $4, 6
lb $4, 1($4)
sw $4, 64($1)
blez $4, TAG128
TAG128:
sh $4, 0($4)
mthi $4
sh $4, 0($4)
mult $4, $4
TAG129:
multu $4, $4
bgtz $4, TAG130
sub $1, $4, $4
mfhi $3
TAG130:
multu $3, $3
lui $2, 9
srlv $3, $3, $2
mfhi $2
TAG131:
lh $4, 0($2)
mflo $3
srl $3, $3, 7
sh $4, 0($2)
TAG132:
mflo $1
subu $4, $3, $1
blez $1, TAG133
lui $1, 9
TAG133:
bne $1, $1, TAG134
sll $0, $0, 0
sll $2, $1, 3
div $2, $1
TAG134:
bgez $2, TAG135
sll $0, $0, 0
lui $3, 10
bltz $3, TAG135
TAG135:
nor $4, $3, $3
lh $3, 1($4)
lb $3, 0($3)
lb $1, 0($3)
TAG136:
bgez $1, TAG137
lui $3, 2
mfhi $3
bltz $3, TAG137
TAG137:
subu $3, $3, $3
lhu $2, 0($3)
bne $3, $3, TAG138
slti $4, $2, 5
TAG138:
blez $4, TAG139
sltiu $2, $4, 6
bne $4, $2, TAG139
mfhi $1
TAG139:
multu $1, $1
sltiu $4, $1, 8
mfhi $3
bne $4, $3, TAG140
TAG140:
lui $1, 1
bne $3, $1, TAG141
lbu $2, 0($3)
sh $2, 0($3)
TAG141:
multu $2, $2
mfhi $1
bne $1, $2, TAG142
lh $1, 0($2)
TAG142:
add $4, $1, $1
mult $1, $1
slti $2, $1, 0
mthi $1
TAG143:
sh $2, 0($2)
mult $2, $2
beq $2, $2, TAG144
mflo $4
TAG144:
lhu $3, 0($4)
lui $2, 15
addi $4, $4, 4
mthi $4
TAG145:
beq $4, $4, TAG146
mult $4, $4
mtlo $4
xori $1, $4, 1
TAG146:
lbu $2, 0($1)
mflo $1
mtlo $2
bgtz $2, TAG147
TAG147:
multu $1, $1
addiu $4, $1, 8
bne $4, $4, TAG148
mfhi $3
TAG148:
multu $3, $3
mflo $1
lw $4, 0($1)
multu $3, $1
TAG149:
lh $4, 0($4)
beq $4, $4, TAG150
lui $4, 1
beq $4, $4, TAG150
TAG150:
lui $1, 6
bgtz $1, TAG151
lui $3, 3
bne $4, $1, TAG151
TAG151:
lui $1, 5
bgez $1, TAG152
divu $3, $3
bgez $1, TAG152
TAG152:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG153
mfhi $2
TAG153:
div $2, $2
mtlo $2
mthi $2
sll $0, $0, 0
TAG154:
mflo $3
mthi $3
lui $1, 13
sll $0, $0, 0
TAG155:
sll $0, $0, 0
xori $4, $4, 2
div $4, $4
sll $0, $0, 0
TAG156:
nor $2, $3, $3
div $2, $2
mthi $2
sll $0, $0, 0
TAG157:
mtlo $1
multu $1, $1
bgez $1, TAG158
or $2, $1, $1
TAG158:
divu $2, $2
bgtz $2, TAG159
sll $0, $0, 0
lw $2, 0($2)
TAG159:
lui $4, 15
sll $0, $0, 0
mfhi $1
addiu $1, $4, 11
TAG160:
blez $1, TAG161
slti $1, $1, 9
lui $3, 1
mfhi $2
TAG161:
srav $3, $2, $2
bgez $3, TAG162
lw $1, 0($3)
div $3, $2
TAG162:
srl $1, $1, 6
mtlo $1
beq $1, $1, TAG163
lui $4, 14
TAG163:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG164:
bgtz $4, TAG165
mtlo $4
bne $4, $4, TAG165
lw $1, 0($4)
TAG165:
lb $4, 0($1)
mflo $3
multu $4, $4
bgez $1, TAG166
TAG166:
srl $1, $3, 0
sll $0, $0, 0
mtlo $1
mult $1, $1
TAG167:
mtlo $1
slt $3, $1, $1
or $3, $1, $1
bne $3, $3, TAG168
TAG168:
lui $1, 2
lui $1, 8
lui $4, 3
sll $0, $0, 0
TAG169:
sll $0, $0, 0
xori $1, $1, 15
mflo $3
mult $4, $1
TAG170:
mflo $4
sll $0, $0, 0
bne $4, $3, TAG171
subu $2, $3, $3
TAG171:
lui $4, 14
blez $4, TAG172
lui $2, 4
or $2, $2, $4
TAG172:
div $2, $2
mthi $2
mtlo $2
slti $1, $2, 5
TAG173:
lui $4, 4
blez $4, TAG174
divu $4, $4
bgtz $4, TAG174
TAG174:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG175
mfhi $4
TAG175:
lw $4, 0($4)
beq $4, $4, TAG176
mult $4, $4
mult $4, $4
TAG176:
lui $4, 4
mtlo $4
mtlo $4
blez $4, TAG177
TAG177:
sltiu $1, $4, 8
mult $1, $1
mult $1, $1
bne $1, $1, TAG178
TAG178:
add $2, $1, $1
mflo $4
nor $1, $1, $2
addu $1, $1, $4
TAG179:
mtlo $1
or $2, $1, $1
bgtz $1, TAG180
lh $4, 1($2)
TAG180:
slti $3, $4, 8
lui $2, 10
xori $4, $2, 1
bgez $4, TAG181
TAG181:
mflo $4
lui $2, 11
divu $2, $4
sll $0, $0, 0
TAG182:
mthi $4
lh $2, 1($4)
blez $4, TAG183
multu $4, $2
TAG183:
beq $2, $2, TAG184
sb $2, 0($2)
sh $2, 0($2)
mflo $3
TAG184:
sb $3, 0($3)
mthi $3
lbu $2, 0($3)
lui $4, 2
TAG185:
mfhi $3
mult $4, $3
lui $2, 3
sll $0, $0, 0
TAG186:
mflo $2
lui $2, 9
bgtz $2, TAG187
slti $2, $2, 15
TAG187:
lw $1, 0($2)
blez $2, TAG188
addu $1, $1, $2
blez $2, TAG188
TAG188:
sllv $1, $1, $1
mthi $1
ori $2, $1, 0
beq $2, $1, TAG189
TAG189:
divu $2, $2
blez $2, TAG190
mtlo $2
xor $2, $2, $2
TAG190:
slti $3, $2, 2
bgtz $2, TAG191
addiu $3, $3, 14
xori $4, $3, 11
TAG191:
sw $4, 0($4)
slt $4, $4, $4
mtlo $4
beq $4, $4, TAG192
TAG192:
lw $1, 0($4)
multu $1, $4
mfhi $2
addu $3, $4, $4
TAG193:
lui $2, 9
sll $0, $0, 0
multu $3, $3
slt $2, $3, $3
TAG194:
beq $2, $2, TAG195
mtlo $2
bgez $2, TAG195
multu $2, $2
TAG195:
bgtz $2, TAG196
lui $3, 1
mthi $3
divu $2, $3
TAG196:
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
beq $3, $4, TAG197
TAG197:
multu $4, $4
multu $4, $4
addu $2, $4, $4
multu $4, $4
TAG198:
lbu $3, 0($2)
mthi $2
bgtz $2, TAG199
lh $3, 0($2)
TAG199:
sh $3, -256($3)
sh $3, -256($3)
bltz $3, TAG200
mult $3, $3
TAG200:
beq $3, $3, TAG201
sltiu $3, $3, 3
sb $3, 0($3)
multu $3, $3
TAG201:
bltz $3, TAG202
lhu $4, 0($3)
xor $3, $3, $4
bne $3, $4, TAG202
TAG202:
sll $0, $0, 0
multu $3, $3
lui $2, 7
bgtz $2, TAG203
TAG203:
mthi $2
sll $0, $0, 0
lui $1, 1
bne $2, $2, TAG204
TAG204:
sll $0, $0, 0
mthi $1
mthi $1
lui $1, 5
TAG205:
mthi $1
mflo $4
mtlo $1
slti $1, $1, 9
TAG206:
sw $1, 0($1)
bgez $1, TAG207
multu $1, $1
lui $3, 3
TAG207:
divu $3, $3
ori $4, $3, 14
sh $3, -256($3)
bgtz $3, TAG208
TAG208:
sb $4, -270($4)
mthi $4
mult $4, $4
beq $4, $4, TAG209
TAG209:
sll $0, $0, 0
bgez $4, TAG210
mfhi $4
lui $3, 4
TAG210:
mtlo $3
sb $3, -256($3)
mfhi $2
bltz $3, TAG211
TAG211:
lb $4, 0($2)
beq $2, $4, TAG212
mflo $1
mfhi $3
TAG212:
lui $2, 12
xor $4, $3, $2
mtlo $3
mflo $3
TAG213:
mfhi $2
lh $4, 0($2)
sw $3, -256($4)
multu $4, $2
TAG214:
bgez $4, TAG215
srl $1, $4, 9
beq $4, $1, TAG215
mfhi $4
TAG215:
bne $4, $4, TAG216
mfhi $2
sra $2, $4, 11
lbu $2, 0($2)
TAG216:
sllv $4, $2, $2
blez $4, TAG217
mflo $2
slti $4, $2, 13
TAG217:
bltz $4, TAG218
multu $4, $4
bgez $4, TAG218
mflo $1
TAG218:
lw $1, 0($1)
sh $1, -256($1)
mtlo $1
bltz $1, TAG219
TAG219:
mthi $1
sb $1, -256($1)
bgez $1, TAG220
sw $1, -256($1)
TAG220:
mfhi $4
bne $1, $4, TAG221
sw $4, -256($4)
lui $4, 6
TAG221:
sll $0, $0, 0
mfhi $1
mfhi $4
lui $3, 4
TAG222:
mtlo $3
nor $4, $3, $3
beq $3, $4, TAG223
lui $4, 6
TAG223:
sll $0, $0, 0
mflo $3
lui $2, 1
lui $4, 2
TAG224:
mfhi $2
sll $0, $0, 0
xor $4, $2, $4
mtlo $4
TAG225:
addiu $2, $4, 13
bne $2, $2, TAG226
mult $2, $4
sllv $4, $2, $4
TAG226:
bgtz $4, TAG227
slti $4, $4, 10
sb $4, 0($4)
mflo $3
TAG227:
sll $0, $0, 0
addiu $3, $3, 2
addiu $2, $3, 8
sll $0, $0, 0
TAG228:
srlv $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG229:
lui $4, 4
sllv $2, $2, $2
bgez $2, TAG230
and $3, $2, $2
TAG230:
multu $3, $3
slti $2, $3, 10
lw $4, 0($2)
mult $2, $4
TAG231:
lui $2, 7
mfhi $3
mtlo $3
div $4, $2
TAG232:
mflo $1
mfhi $3
beq $1, $1, TAG233
sltu $2, $1, $3
TAG233:
srl $3, $2, 8
bgez $2, TAG234
divu $2, $2
mult $2, $2
TAG234:
mtlo $3
beq $3, $3, TAG235
add $2, $3, $3
div $2, $3
TAG235:
mthi $2
sh $2, 0($2)
bne $2, $2, TAG236
mthi $2
TAG236:
mult $2, $2
mflo $2
bgtz $2, TAG237
mult $2, $2
TAG237:
mflo $4
bne $4, $2, TAG238
sh $4, 0($4)
sb $4, 0($4)
TAG238:
bgez $4, TAG239
lui $3, 2
div $3, $3
blez $3, TAG239
TAG239:
sll $0, $0, 0
bltz $3, TAG240
mtlo $3
mfhi $3
TAG240:
mult $3, $3
bltz $3, TAG241
lui $2, 2
lbu $4, 0($3)
TAG241:
lui $1, 6
lui $3, 4
mtlo $4
sll $0, $0, 0
TAG242:
sll $4, $3, 13
mfhi $2
mfhi $3
sub $1, $3, $3
TAG243:
sltiu $4, $1, 14
mtlo $4
ori $1, $1, 5
sb $1, 0($1)
TAG244:
mult $1, $1
bne $1, $1, TAG245
subu $4, $1, $1
lui $2, 11
TAG245:
addiu $2, $2, 14
mthi $2
srlv $1, $2, $2
mthi $2
TAG246:
divu $1, $1
mthi $1
sw $1, 0($1)
lb $2, 0($1)
TAG247:
srlv $2, $2, $2
bne $2, $2, TAG248
lui $3, 1
sll $0, $0, 0
TAG248:
lui $2, 3
sh $2, 0($4)
lui $4, 7
xori $1, $4, 12
TAG249:
sll $0, $0, 0
bne $1, $1, TAG250
mtlo $1
sll $0, $0, 0
TAG250:
lui $4, 4
sll $0, $0, 0
mfhi $4
bne $4, $4, TAG251
TAG251:
sll $1, $4, 2
xori $4, $4, 12
lui $1, 6
slti $3, $1, 10
TAG252:
lui $3, 6
bgez $3, TAG253
mult $3, $3
mthi $3
TAG253:
div $3, $3
sll $0, $0, 0
ori $3, $3, 7
sll $0, $0, 0
TAG254:
subu $4, $2, $2
bgez $4, TAG255
mult $2, $4
mflo $3
TAG255:
mflo $3
bgtz $3, TAG256
nor $3, $3, $3
divu $3, $3
TAG256:
divu $3, $3
beq $3, $3, TAG257
lhu $1, 1($3)
sllv $2, $3, $1
TAG257:
slt $3, $2, $2
bne $2, $2, TAG258
mfhi $1
bne $1, $3, TAG258
TAG258:
mflo $4
lbu $3, 0($1)
sllv $4, $3, $3
mtlo $4
TAG259:
bltz $4, TAG260
mthi $4
subu $1, $4, $4
lui $1, 10
TAG260:
lui $1, 0
sh $1, 0($1)
mflo $2
ori $4, $1, 10
TAG261:
mtlo $4
mflo $2
lhu $1, 0($4)
mtlo $2
TAG262:
lui $4, 11
mtlo $1
lui $2, 1
mfhi $2
TAG263:
sh $2, 0($2)
sltu $3, $2, $2
sh $2, 0($3)
bltz $2, TAG264
TAG264:
sh $3, 0($3)
blez $3, TAG265
mthi $3
divu $3, $3
TAG265:
bgez $3, TAG266
sltiu $3, $3, 0
mfhi $2
bne $2, $3, TAG266
TAG266:
sll $3, $2, 11
lbu $4, 0($2)
bgez $2, TAG267
sra $4, $2, 4
TAG267:
lw $4, 0($4)
srav $4, $4, $4
multu $4, $4
mflo $4
TAG268:
mfhi $4
lui $2, 0
beq $4, $4, TAG269
mthi $4
TAG269:
add $2, $2, $2
addu $4, $2, $2
sra $4, $2, 0
sw $2, 0($4)
TAG270:
mflo $2
add $4, $4, $2
mflo $4
or $1, $4, $4
TAG271:
mfhi $2
beq $2, $2, TAG272
mult $1, $1
bgez $1, TAG272
TAG272:
mflo $3
lui $1, 10
blez $3, TAG273
sll $0, $0, 0
TAG273:
divu $1, $1
lui $2, 13
mflo $3
lui $1, 4
TAG274:
bltz $1, TAG275
lui $3, 1
mtlo $1
mfhi $1
TAG275:
mfhi $1
lw $1, 0($1)
mfhi $2
sh $1, 0($1)
TAG276:
lui $4, 10
lw $2, 0($2)
mtlo $4
mtlo $2
TAG277:
mtlo $2
bne $2, $2, TAG278
lui $2, 10
multu $2, $2
TAG278:
beq $2, $2, TAG279
srl $3, $2, 8
lui $1, 13
div $1, $1
TAG279:
lui $4, 0
sw $4, 0($4)
addiu $4, $4, 3
sltiu $3, $4, 2
TAG280:
sltiu $3, $3, 6
lui $3, 14
lui $4, 5
bne $4, $4, TAG281
TAG281:
sll $0, $0, 0
beq $2, $4, TAG282
addiu $1, $2, 2
mult $4, $4
TAG282:
ori $1, $1, 4
sll $0, $0, 0
sll $0, $0, 0
lui $3, 15
TAG283:
bgez $3, TAG284
mult $3, $3
sltiu $2, $3, 0
divu $2, $3
TAG284:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $2, TAG285
mtlo $2
TAG285:
mthi $1
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $1, 12
TAG286:
div $4, $4
mflo $4
bne $4, $4, TAG287
lb $3, 0($4)
TAG287:
bltz $3, TAG288
lw $1, 0($3)
lui $1, 7
bgtz $1, TAG288
TAG288:
sll $0, $0, 0
multu $1, $3
mflo $3
blez $3, TAG289
TAG289:
mtlo $3
sra $2, $3, 8
mfhi $2
srl $2, $2, 12
TAG290:
bgez $2, TAG291
addiu $1, $2, 9
bne $2, $1, TAG291
mthi $1
TAG291:
div $1, $1
mthi $1
mthi $1
lbu $4, 0($1)
TAG292:
bne $4, $4, TAG293
lui $1, 9
sra $1, $4, 2
lui $2, 3
TAG293:
sll $0, $0, 0
srl $4, $2, 12
sll $0, $0, 0
sll $0, $0, 0
TAG294:
xori $1, $4, 2
addu $1, $4, $1
mtlo $4
mfhi $2
TAG295:
mflo $1
sltiu $1, $1, 7
sw $1, 0($1)
sw $2, 0($1)
TAG296:
mthi $1
mflo $2
or $2, $2, $1
sh $2, 0($2)
TAG297:
sw $2, 0($2)
sltiu $1, $2, 7
lb $4, 0($1)
srlv $2, $2, $4
TAG298:
lb $3, 0($2)
bgtz $2, TAG299
slti $3, $2, 10
beq $3, $3, TAG299
TAG299:
mfhi $2
lui $1, 8
mfhi $1
blez $1, TAG300
TAG300:
sll $2, $1, 15
lbu $2, 0($1)
slti $1, $2, 1
sw $1, 0($1)
TAG301:
mult $1, $1
sw $1, 0($1)
multu $1, $1
lui $3, 6
TAG302:
mult $3, $3
mtlo $3
nor $1, $3, $3
lui $2, 5
TAG303:
bne $2, $2, TAG304
sll $3, $2, 8
mthi $2
beq $3, $3, TAG304
TAG304:
sll $0, $0, 0
lui $1, 11
sll $0, $0, 0
mflo $1
TAG305:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
lui $1, 7
TAG306:
or $2, $1, $1
mflo $2
mtlo $1
mflo $1
TAG307:
bgez $1, TAG308
sll $0, $0, 0
lb $1, 0($1)
blez $2, TAG308
TAG308:
mthi $1
bltz $1, TAG309
mthi $1
mflo $4
TAG309:
addiu $4, $4, 1
bne $4, $4, TAG310
sll $0, $0, 0
mflo $4
TAG310:
blez $4, TAG311
mflo $3
lui $4, 7
bgtz $3, TAG311
TAG311:
lui $3, 9
sll $0, $0, 0
mfhi $2
addu $2, $2, $2
TAG312:
sll $0, $0, 0
bne $1, $1, TAG313
sll $0, $0, 0
bne $1, $1, TAG313
TAG313:
div $4, $4
mflo $4
lb $1, 0($4)
xor $4, $4, $4
TAG314:
xor $3, $4, $4
mfhi $1
sh $3, 0($1)
lui $2, 5
TAG315:
sll $0, $0, 0
mfhi $1
lh $3, 0($1)
ori $2, $3, 11
TAG316:
sb $2, 0($2)
sb $2, 0($2)
addu $3, $2, $2
lh $3, 0($3)
TAG317:
mtlo $3
sll $2, $3, 5
sll $2, $3, 7
sb $3, 0($2)
TAG318:
mfhi $2
lui $4, 10
lui $4, 3
mthi $2
TAG319:
sll $3, $4, 5
sll $0, $0, 0
mtlo $4
beq $4, $4, TAG320
TAG320:
mult $3, $3
bgtz $3, TAG321
mthi $3
sh $3, 0($3)
TAG321:
srlv $1, $3, $3
bne $1, $1, TAG322
lui $2, 3
bgtz $3, TAG322
TAG322:
multu $2, $2
divu $2, $2
beq $2, $2, TAG323
mult $2, $2
TAG323:
addu $1, $2, $2
mtlo $1
mflo $4
bgtz $4, TAG324
TAG324:
sll $0, $0, 0
blez $4, TAG325
sll $0, $0, 0
sll $0, $0, 0
TAG325:
mfhi $2
beq $3, $3, TAG326
mflo $2
bltz $3, TAG326
TAG326:
sll $0, $0, 0
mflo $1
mflo $1
mflo $1
TAG327:
bne $1, $1, TAG328
mflo $1
srlv $4, $1, $1
sll $0, $0, 0
TAG328:
ori $4, $2, 9
mtlo $4
mtlo $2
divu $2, $2
TAG329:
slti $1, $4, 2
blez $4, TAG330
sll $0, $0, 0
mtlo $4
TAG330:
andi $1, $1, 9
multu $1, $1
sb $1, 0($1)
bltz $1, TAG331
TAG331:
mult $1, $1
srav $2, $1, $1
beq $2, $2, TAG332
mtlo $1
TAG332:
mfhi $2
mflo $4
mthi $4
mult $4, $2
TAG333:
sw $4, 0($4)
mtlo $4
bltz $4, TAG334
mtlo $4
TAG334:
blez $4, TAG335
xori $3, $4, 9
sw $4, 0($3)
ori $1, $3, 9
TAG335:
mfhi $1
ori $1, $1, 5
lbu $3, 0($1)
bne $3, $1, TAG336
TAG336:
divu $3, $3
bne $3, $3, TAG337
subu $4, $3, $3
addu $1, $3, $4
TAG337:
beq $1, $1, TAG338
lbu $4, 0($1)
bltz $4, TAG338
mflo $1
TAG338:
sb $1, 0($1)
beq $1, $1, TAG339
mflo $2
mfhi $3
TAG339:
sb $3, 0($3)
blez $3, TAG340
lbu $1, 0($3)
beq $3, $1, TAG340
TAG340:
xori $3, $1, 12
sll $3, $1, 14
multu $3, $3
andi $4, $1, 7
TAG341:
lbu $2, 0($4)
lui $3, 9
bne $2, $2, TAG342
sll $0, $0, 0
TAG342:
lui $1, 3
sll $0, $0, 0
mtlo $3
mflo $2
TAG343:
sll $0, $0, 0
sll $0, $0, 0
addiu $2, $1, 7
srlv $1, $2, $2
TAG344:
sll $0, $0, 0
mfhi $3
bgez $1, TAG345
ori $2, $1, 9
TAG345:
divu $2, $2
mfhi $2
lui $2, 1
mthi $2
TAG346:
sll $2, $2, 0
or $3, $2, $2
bne $2, $3, TAG347
sll $0, $0, 0
TAG347:
mult $1, $1
divu $1, $1
lw $4, -1536($1)
lui $4, 15
TAG348:
mfhi $3
beq $4, $3, TAG349
multu $4, $4
multu $3, $3
TAG349:
mfhi $4
blez $3, TAG350
ori $1, $4, 0
lw $3, 0($1)
TAG350:
mthi $3
sw $3, 0($3)
mthi $3
mflo $3
TAG351:
slt $4, $3, $3
mflo $3
mflo $4
mthi $4
TAG352:
lbu $1, 0($4)
xori $3, $1, 15
slti $3, $4, 7
bgtz $4, TAG353
TAG353:
sb $3, 0($3)
bne $3, $3, TAG354
multu $3, $3
lui $2, 6
TAG354:
lui $2, 14
mfhi $2
addiu $1, $2, 8
mtlo $2
TAG355:
srl $2, $1, 15
beq $2, $1, TAG356
mthi $2
srlv $2, $2, $2
TAG356:
lb $1, 0($2)
blez $2, TAG357
mfhi $1
lui $1, 15
TAG357:
mthi $1
mflo $3
sra $2, $3, 12
multu $1, $1
TAG358:
bne $2, $2, TAG359
ori $3, $2, 4
bgez $3, TAG359
mtlo $3
TAG359:
sw $3, 0($3)
mfhi $1
mthi $1
mflo $4
TAG360:
mfhi $3
lui $1, 12
lui $2, 6
lui $1, 13
TAG361:
mflo $4
lui $1, 13
lui $2, 5
lui $4, 2
TAG362:
sll $0, $0, 0
mflo $3
slti $4, $3, 14
and $4, $1, $4
TAG363:
slti $4, $4, 0
mtlo $4
add $3, $4, $4
sh $4, 0($3)
TAG364:
bgtz $3, TAG365
mult $3, $3
lb $2, 0($3)
sub $2, $3, $3
TAG365:
sltiu $4, $2, 5
mtlo $4
mthi $4
lui $1, 11
TAG366:
sll $0, $0, 0
mfhi $1
ori $3, $1, 3
mult $1, $3
TAG367:
bne $3, $3, TAG368
addu $1, $3, $3
mtlo $3
sra $3, $3, 15
TAG368:
beq $3, $3, TAG369
multu $3, $3
mult $3, $3
mflo $2
TAG369:
multu $2, $2
lui $2, 4
mfhi $1
sll $0, $0, 0
TAG370:
lbu $2, 0($1)
bgtz $1, TAG371
srl $3, $1, 8
sh $3, 0($3)
TAG371:
mflo $1
slti $2, $1, 0
sh $3, 0($3)
sra $1, $3, 6
TAG372:
sb $1, 0($1)
sltiu $4, $1, 11
and $2, $1, $1
lb $3, 0($4)
TAG373:
sh $3, 0($3)
blez $3, TAG374
mtlo $3
bgtz $3, TAG374
TAG374:
lbu $1, 0($3)
bne $1, $1, TAG375
lb $4, 0($3)
mult $4, $3
TAG375:
mult $4, $4
mtlo $4
lui $3, 10
sw $3, 0($4)
TAG376:
lui $4, 0
mtlo $3
lui $4, 10
mthi $3
TAG377:
bgtz $4, TAG378
sll $0, $0, 0
sb $4, 0($4)
lui $1, 3
TAG378:
andi $3, $1, 11
multu $1, $3
lh $4, 0($3)
slti $3, $4, 12
TAG379:
beq $3, $3, TAG380
sb $3, 0($3)
multu $3, $3
lui $4, 8
TAG380:
bgez $4, TAG381
mthi $4
mfhi $4
xori $1, $4, 0
TAG381:
or $4, $1, $1
lui $3, 2
sw $1, 0($1)
mthi $1
TAG382:
sra $3, $3, 9
lb $2, -256($3)
mult $3, $3
bltz $3, TAG383
TAG383:
mthi $2
beq $2, $2, TAG384
mthi $2
bltz $2, TAG384
TAG384:
mthi $2
multu $2, $2
sh $2, 0($2)
or $4, $2, $2
TAG385:
addu $2, $4, $4
multu $4, $4
sll $2, $2, 11
sw $2, 0($2)
TAG386:
lui $1, 0
mult $1, $2
bne $1, $1, TAG387
addu $4, $1, $1
TAG387:
addu $3, $4, $4
sh $3, 0($4)
lb $4, 0($3)
bgtz $4, TAG388
TAG388:
xori $4, $4, 1
mfhi $3
lb $1, 0($4)
sb $1, 0($4)
TAG389:
sb $1, 0($1)
lw $2, 0($1)
blez $1, TAG390
multu $1, $1
TAG390:
lw $1, 0($2)
nor $4, $2, $1
xor $1, $2, $4
sll $3, $4, 10
TAG391:
beq $3, $3, TAG392
lui $4, 10
mfhi $1
lhu $1, 0($4)
TAG392:
bgez $1, TAG393
lui $4, 9
divu $1, $4
bne $4, $1, TAG393
TAG393:
lui $1, 5
bgtz $1, TAG394
srl $4, $4, 3
bltz $4, TAG394
TAG394:
lui $1, 5
mthi $4
sll $0, $0, 0
bltz $1, TAG395
TAG395:
srav $4, $1, $1
div $1, $4
sll $0, $0, 0
bgez $4, TAG396
TAG396:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG397:
mflo $4
sra $3, $4, 12
bgez $4, TAG398
andi $1, $3, 5
TAG398:
and $3, $1, $1
or $3, $1, $1
lui $4, 7
lui $2, 3
TAG399:
mflo $4
sb $2, 0($4)
mthi $2
lui $1, 14
TAG400:
bne $1, $1, TAG401
div $1, $1
sll $0, $0, 0
bgez $1, TAG401
TAG401:
addu $4, $1, $1
bgtz $1, TAG402
sltu $1, $1, $1
sh $1, 0($4)
TAG402:
lw $1, 0($1)
mfhi $4
bne $4, $1, TAG403
mthi $1
TAG403:
addiu $4, $4, 6
addiu $2, $4, 1
mflo $1
div $4, $1
TAG404:
beq $1, $1, TAG405
sb $1, 0($1)
slt $2, $1, $1
xori $3, $1, 5
TAG405:
lbu $4, 0($3)
bne $4, $3, TAG406
lh $1, 0($3)
lh $3, -256($1)
TAG406:
bltz $3, TAG407
sb $3, -256($3)
mfhi $2
srav $1, $3, $2
TAG407:
bgez $1, TAG408
mtlo $1
lui $1, 6
mflo $4
TAG408:
sw $4, 0($4)
nor $2, $4, $4
mult $2, $2
lw $4, 1($2)
TAG409:
mflo $2
nor $3, $2, $4
bne $4, $4, TAG410
mflo $4
TAG410:
lui $4, 6
mfhi $4
lui $3, 8
sll $0, $0, 0
TAG411:
sll $0, $0, 0
lui $1, 7
sll $0, $0, 0
beq $3, $1, TAG412
TAG412:
addu $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG413:
bne $4, $4, TAG414
sll $0, $0, 0
bltz $3, TAG414
mflo $2
TAG414:
sll $2, $2, 13
bgez $2, TAG415
lui $2, 4
andi $4, $2, 9
TAG415:
ori $1, $4, 12
div $4, $1
andi $4, $1, 9
lui $2, 7
TAG416:
beq $2, $2, TAG417
addu $4, $2, $2
mflo $2
lui $1, 1
TAG417:
beq $1, $1, TAG418
sltiu $2, $1, 11
lui $2, 14
mflo $2
TAG418:
bgez $2, TAG419
sb $2, 0($2)
bgez $2, TAG419
divu $2, $2
TAG419:
lbu $4, 0($2)
multu $4, $4
mtlo $4
mflo $2
TAG420:
mfhi $4
beq $4, $4, TAG421
addu $4, $2, $2
bne $2, $4, TAG421
TAG421:
sw $4, 0($4)
mflo $3
sb $4, 0($4)
multu $4, $4
TAG422:
mflo $2
sb $3, 0($3)
mtlo $3
lui $2, 11
TAG423:
mult $2, $2
mthi $2
beq $2, $2, TAG424
mflo $3
TAG424:
sh $3, 0($3)
lui $4, 15
mtlo $3
addu $2, $4, $3
TAG425:
bltz $2, TAG426
sll $0, $0, 0
bgez $2, TAG426
lui $2, 4
TAG426:
addu $4, $2, $2
mflo $2
lb $4, 0($2)
mthi $4
TAG427:
beq $4, $4, TAG428
multu $4, $4
bgtz $4, TAG428
addiu $2, $4, 13
TAG428:
mthi $2
and $3, $2, $2
lui $1, 9
addu $1, $2, $2
TAG429:
bltz $1, TAG430
lbu $2, 0($1)
lbu $3, 0($1)
bltz $3, TAG430
TAG430:
lbu $4, 0($3)
mult $3, $4
mthi $3
sw $3, 0($3)
TAG431:
mtlo $4
mflo $3
sub $3, $4, $4
slt $2, $3, $3
TAG432:
lw $4, 0($2)
bgtz $2, TAG433
sb $4, 0($2)
slti $2, $4, 8
TAG433:
mthi $2
bgez $2, TAG434
mtlo $2
subu $2, $2, $2
TAG434:
sltiu $2, $2, 5
mthi $2
sb $2, 0($2)
bne $2, $2, TAG435
TAG435:
xor $2, $2, $2
mflo $2
srav $4, $2, $2
mtlo $4
TAG436:
lw $4, 0($4)
lb $3, -256($4)
lbu $2, -256($4)
mfhi $3
TAG437:
bne $3, $3, TAG438
lui $4, 13
bne $4, $3, TAG438
lui $2, 1
TAG438:
xori $2, $2, 13
bne $2, $2, TAG439
slti $4, $2, 14
mtlo $2
TAG439:
lui $4, 10
sll $0, $0, 0
srav $3, $4, $4
ori $4, $4, 10
TAG440:
addu $4, $4, $4
sll $0, $0, 0
div $2, $4
lui $3, 5
TAG441:
lui $3, 4
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG442:
bne $2, $2, TAG443
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG443:
sll $0, $0, 0
addu $2, $3, $1
mult $2, $1
mfhi $2
TAG444:
sll $4, $2, 7
lbu $3, 0($4)
sb $4, 0($4)
mult $2, $4
TAG445:
addi $1, $3, 10
srl $1, $1, 7
addu $3, $1, $1
andi $2, $1, 6
TAG446:
sw $2, 0($2)
sub $4, $2, $2
addi $4, $4, 1
slt $2, $4, $4
TAG447:
mtlo $2
lbu $1, 0($2)
bgtz $2, TAG448
sh $2, 0($1)
TAG448:
blez $1, TAG449
lb $4, 0($1)
sb $1, 0($4)
sw $4, 0($4)
TAG449:
lui $4, 11
blez $4, TAG450
sll $0, $0, 0
bltz $4, TAG450
TAG450:
multu $2, $2
multu $2, $2
mfhi $4
sb $2, 0($2)
TAG451:
lb $3, 0($4)
lui $2, 0
mtlo $4
addi $3, $4, 10
TAG452:
lui $1, 7
lhu $4, 0($3)
sltiu $3, $4, 15
sll $0, $0, 0
TAG453:
bne $3, $3, TAG454
sll $3, $3, 4
bgez $3, TAG454
lh $2, 0($3)
TAG454:
mthi $2
lw $1, 0($2)
bne $2, $2, TAG455
nor $2, $1, $1
TAG455:
mfhi $1
lui $2, 0
mflo $2
bne $1, $2, TAG456
TAG456:
lbu $3, 0($2)
multu $3, $2
bne $2, $2, TAG457
mfhi $2
TAG457:
sb $2, 0($2)
subu $2, $2, $2
sra $4, $2, 11
andi $2, $4, 1
TAG458:
bne $2, $2, TAG459
lw $2, 0($2)
mthi $2
multu $2, $2
TAG459:
blez $2, TAG460
lbu $3, 0($2)
lui $4, 4
lui $3, 3
TAG460:
blez $3, TAG461
sw $3, 0($3)
sb $3, 0($3)
bne $3, $3, TAG461
TAG461:
mflo $1
blez $3, TAG462
sh $3, 0($3)
bltz $1, TAG462
TAG462:
sh $1, 0($1)
mflo $1
or $2, $1, $1
bne $1, $2, TAG463
TAG463:
lh $4, 0($2)
bne $4, $2, TAG464
sb $4, 0($4)
sh $2, 0($2)
TAG464:
beq $4, $4, TAG465
mult $4, $4
sltiu $3, $4, 3
multu $3, $3
TAG465:
mthi $3
sh $3, 0($3)
lui $3, 1
sll $0, $0, 0
TAG466:
lui $4, 0
bne $3, $3, TAG467
mthi $3
andi $3, $4, 2
TAG467:
sw $3, 0($3)
addiu $1, $3, 13
blez $3, TAG468
mfhi $1
TAG468:
mthi $1
sltiu $2, $1, 5
mflo $4
blez $4, TAG469
TAG469:
sb $4, 0($4)
bgtz $4, TAG470
sll $3, $4, 10
slti $4, $3, 12
TAG470:
subu $4, $4, $4
mflo $2
beq $4, $4, TAG471
multu $4, $4
TAG471:
sltiu $4, $2, 13
divu $4, $4
bne $2, $2, TAG472
multu $2, $2
TAG472:
bgez $4, TAG473
slt $4, $4, $4
lbu $2, 0($4)
sb $4, 0($2)
TAG473:
multu $2, $2
lh $4, 0($2)
mult $2, $4
lui $1, 6
TAG474:
lui $3, 8
lui $1, 0
mthi $1
mult $1, $1
TAG475:
ori $4, $1, 12
mflo $4
mfhi $1
sra $3, $1, 3
TAG476:
mflo $1
lhu $4, 0($1)
lh $3, 0($4)
lw $1, 0($3)
TAG477:
lui $3, 10
sll $0, $0, 0
mtlo $2
bltz $3, TAG478
TAG478:
mfhi $2
lb $3, 0($2)
lui $2, 3
subu $4, $2, $2
TAG479:
mtlo $4
sb $4, 0($4)
sll $3, $4, 12
mult $3, $3
TAG480:
mtlo $3
lui $1, 9
mflo $3
addi $3, $3, 6
TAG481:
mtlo $3
andi $2, $3, 12
xori $3, $3, 13
bgez $2, TAG482
TAG482:
sll $2, $3, 6
bltz $2, TAG483
divu $3, $3
lhu $1, -704($2)
TAG483:
lw $2, 0($1)
multu $1, $2
beq $2, $1, TAG484
mthi $1
TAG484:
mfhi $2
mflo $1
sh $2, 0($2)
multu $1, $2
TAG485:
mtlo $1
mtlo $1
lui $2, 2
mtlo $2
TAG486:
srl $4, $2, 0
mfhi $3
lui $4, 13
mtlo $4
TAG487:
beq $4, $4, TAG488
sll $0, $0, 0
addiu $4, $4, 12
addi $3, $4, 8
TAG488:
sh $3, 0($3)
bgez $3, TAG489
srl $3, $3, 9
bgez $3, TAG489
TAG489:
addi $3, $3, 13
divu $3, $3
nor $3, $3, $3
lhu $4, 14($3)
TAG490:
blez $4, TAG491
addiu $1, $4, 11
mfhi $4
lui $2, 1
TAG491:
mtlo $2
lui $2, 5
sll $0, $0, 0
lui $1, 0
TAG492:
mflo $3
lui $4, 13
mtlo $4
sll $4, $4, 10
TAG493:
sll $0, $0, 0
mthi $4
lui $1, 8
sllv $2, $4, $4
TAG494:
lui $2, 9
mthi $2
mtlo $2
mthi $2
TAG495:
sll $0, $0, 0
blez $2, TAG496
and $1, $2, $2
sltiu $3, $2, 10
TAG496:
blez $3, TAG497
sltiu $4, $3, 1
lui $2, 7
sltiu $4, $3, 14
TAG497:
sb $4, 0($4)
bne $4, $4, TAG498
mtlo $4
bgez $4, TAG498
TAG498:
sb $4, 0($4)
mflo $2
mflo $3
bne $3, $2, TAG499
TAG499:
lui $2, 3
sll $0, $0, 0
addiu $4, $3, 13
and $3, $3, $3
TAG500:
multu $3, $3
mult $3, $3
bgez $3, TAG501
divu $3, $3
TAG501:
addu $1, $3, $3
sh $1, 0($1)
mflo $4
beq $3, $3, TAG502
TAG502:
xor $2, $4, $4
sh $4, 0($2)
sh $2, 0($2)
srav $1, $4, $2
TAG503:
lbu $2, 0($1)
beq $2, $1, TAG504
mthi $2
beq $2, $2, TAG504
TAG504:
multu $2, $2
bgez $2, TAG505
mflo $1
slt $1, $2, $1
TAG505:
sb $1, 0($1)
mthi $1
sltiu $3, $1, 7
mult $3, $1
TAG506:
blez $3, TAG507
lbu $1, 0($3)
mtlo $1
sb $1, 0($3)
TAG507:
lui $1, 7
addiu $1, $1, 12
mthi $1
bgez $1, TAG508
TAG508:
sll $0, $0, 0
multu $1, $1
mflo $1
mtlo $1
TAG509:
sll $0, $0, 0
mfhi $1
lui $3, 8
sh $1, 0($2)
TAG510:
sll $0, $0, 0
bltz $3, TAG511
addiu $1, $3, 15
sll $0, $0, 0
TAG511:
multu $3, $3
bgtz $3, TAG512
mfhi $2
blez $2, TAG512
TAG512:
lui $3, 14
mtlo $2
bgez $2, TAG513
srav $4, $2, $2
TAG513:
mflo $2
mthi $4
lui $4, 9
lw $2, 0($2)
TAG514:
beq $2, $2, TAG515
div $2, $2
subu $2, $2, $2
bgtz $2, TAG515
TAG515:
sw $2, 0($2)
beq $2, $2, TAG516
nor $2, $2, $2
bne $2, $2, TAG516
TAG516:
addiu $3, $2, 0
div $3, $3
mflo $1
andi $2, $3, 6
TAG517:
bgtz $2, TAG518
multu $2, $2
multu $2, $2
bne $2, $2, TAG518
TAG518:
andi $3, $2, 5
lui $2, 9
blez $2, TAG519
sw $3, 0($3)
TAG519:
sll $0, $0, 0
mthi $2
srav $3, $2, $2
srlv $4, $3, $2
TAG520:
sltiu $1, $4, 11
andi $2, $1, 2
srav $1, $4, $4
beq $1, $4, TAG521
TAG521:
mfhi $1
lui $4, 2
addu $2, $4, $4
sll $0, $0, 0
TAG522:
bne $2, $2, TAG523
sll $0, $0, 0
mflo $3
sllv $3, $3, $1
TAG523:
ori $3, $3, 1
sb $3, 0($3)
mfhi $1
lb $3, 0($3)
TAG524:
sb $3, 0($3)
bgez $3, TAG525
lb $1, 0($3)
addiu $3, $1, 7
TAG525:
addu $4, $3, $3
sb $4, 0($3)
blez $3, TAG526
mtlo $3
TAG526:
addiu $2, $4, 11
lui $4, 0
lbu $2, 0($4)
lw $4, 0($4)
TAG527:
mfhi $1
srav $3, $1, $1
sll $0, $0, 0
lui $2, 12
TAG528:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
slt $1, $2, $2
TAG529:
mtlo $1
mthi $1
beq $1, $1, TAG530
sw $1, 0($1)
TAG530:
beq $1, $1, TAG531
lw $3, 0($1)
lw $4, 0($3)
lbu $2, 0($4)
TAG531:
slt $1, $2, $2
mfhi $4
beq $2, $4, TAG532
subu $1, $1, $1
TAG532:
sub $2, $1, $1
bne $1, $1, TAG533
mtlo $1
mult $1, $1
TAG533:
mfhi $3
mthi $2
lh $2, 0($2)
sltiu $3, $2, 0
TAG534:
mthi $3
beq $3, $3, TAG535
sh $3, 0($3)
xori $2, $3, 5
TAG535:
mtlo $2
blez $2, TAG536
srav $2, $2, $2
bgtz $2, TAG536
TAG536:
sra $2, $2, 14
mflo $4
bgez $4, TAG537
andi $3, $2, 8
TAG537:
sb $3, 0($3)
lui $1, 0
sw $3, 0($3)
sw $3, 0($1)
TAG538:
mtlo $1
bltz $1, TAG539
sra $4, $1, 7
bne $1, $1, TAG539
TAG539:
lui $1, 1
sll $0, $0, 0
sltu $1, $4, $1
mthi $1
TAG540:
lui $2, 2
mfhi $3
bgtz $2, TAG541
divu $2, $1
TAG541:
lb $2, 0($3)
mtlo $2
sub $1, $2, $2
xori $1, $2, 0
TAG542:
bne $1, $1, TAG543
lw $4, 0($1)
mult $4, $1
multu $4, $1
TAG543:
sh $4, 0($4)
lhu $3, 0($4)
multu $4, $4
bne $4, $3, TAG544
TAG544:
lb $3, 0($3)
mflo $1
mtlo $3
lui $4, 9
TAG545:
beq $4, $4, TAG546
sll $0, $0, 0
div $4, $4
beq $4, $4, TAG546
TAG546:
mthi $4
mult $4, $4
sll $0, $0, 0
srav $3, $4, $4
TAG547:
mtlo $3
mfhi $2
slt $4, $3, $3
sra $4, $2, 7
TAG548:
lui $3, 14
mtlo $4
sll $0, $0, 0
lui $2, 12
TAG549:
ori $1, $2, 1
beq $1, $2, TAG550
divu $2, $1
lui $2, 5
TAG550:
slti $3, $2, 4
bltz $3, TAG551
lui $4, 0
lui $4, 4
TAG551:
bne $4, $4, TAG552
sll $0, $0, 0
slti $3, $4, 1
bne $3, $3, TAG552
TAG552:
lui $2, 15
bne $3, $2, TAG553
mthi $2
lh $1, 0($2)
TAG553:
nor $2, $1, $1
mtlo $2
sll $0, $0, 0
slti $4, $2, 0
TAG554:
bgtz $4, TAG555
lbu $2, 0($4)
lb $3, 0($2)
lhu $2, 0($2)
TAG555:
lb $2, 0($2)
addiu $2, $2, 11
sltiu $2, $2, 7
lui $1, 3
TAG556:
divu $1, $1
lui $3, 14
addu $2, $1, $3
div $2, $1
TAG557:
mfhi $1
sll $0, $0, 0
bltz $1, TAG558
sra $3, $1, 14
TAG558:
sw $3, 0($3)
blez $3, TAG559
sb $3, 0($3)
beq $3, $3, TAG559
TAG559:
div $3, $3
sh $3, 0($3)
lhu $1, 0($3)
sb $1, 0($1)
TAG560:
lui $1, 8
sll $0, $0, 0
bne $1, $1, TAG561
mtlo $1
TAG561:
sll $0, $0, 0
mthi $1
sltiu $1, $1, 8
bne $1, $1, TAG562
TAG562:
or $1, $1, $1
lui $2, 7
and $4, $1, $1
sll $0, $0, 0
TAG563:
andi $2, $1, 0
lui $1, 1
xori $1, $2, 1
bne $1, $1, TAG564
TAG564:
nor $1, $1, $1
mflo $3
lbu $2, 2($1)
lui $1, 6
TAG565:
sltiu $3, $1, 5
mthi $1
beq $3, $1, TAG566
addu $1, $3, $3
TAG566:
lh $3, 0($1)
multu $1, $3
andi $3, $1, 1
subu $3, $3, $3
TAG567:
srav $2, $3, $3
mtlo $3
bne $3, $3, TAG568
mult $2, $2
TAG568:
lw $1, 0($2)
mfhi $2
mfhi $1
sw $2, 0($1)
TAG569:
lui $4, 1
srav $1, $4, $1
subu $3, $4, $4
mthi $1
TAG570:
mflo $1
lbu $2, 0($1)
sb $3, 0($2)
mflo $2
TAG571:
lh $3, 0($2)
bgez $3, TAG572
multu $2, $2
sb $2, 0($3)
TAG572:
blez $3, TAG573
sh $3, 0($3)
sh $3, 0($3)
sh $3, 0($3)
TAG573:
lh $1, 0($3)
mthi $3
bgez $3, TAG574
srl $3, $3, 12
TAG574:
bgtz $3, TAG575
lui $4, 8
mthi $3
multu $4, $3
TAG575:
sll $0, $0, 0
sra $2, $4, 12
andi $2, $2, 2
sll $0, $0, 0
TAG576:
bgez $2, TAG577
sh $2, 0($2)
lbu $2, 0($2)
multu $2, $2
TAG577:
lhu $2, 0($2)
bne $2, $2, TAG578
add $3, $2, $2
mflo $1
TAG578:
or $1, $1, $1
bgtz $1, TAG579
mflo $3
sb $1, 0($1)
TAG579:
lh $2, 0($3)
bne $2, $2, TAG580
andi $3, $3, 3
mflo $2
TAG580:
mthi $2
sh $2, 0($2)
slt $3, $2, $2
bgez $3, TAG581
TAG581:
mult $3, $3
lhu $4, 0($3)
bltz $4, TAG582
sltu $4, $3, $3
TAG582:
lw $4, 0($4)
bgez $4, TAG583
lhu $3, 0($4)
bgtz $3, TAG583
TAG583:
lui $2, 10
sll $0, $0, 0
mtlo $3
mtlo $2
TAG584:
bne $1, $1, TAG585
lui $3, 11
multu $3, $1
mfhi $3
TAG585:
mthi $3
sb $3, 0($3)
mult $3, $3
mflo $1
TAG586:
lw $3, 0($1)
nor $2, $3, $3
sb $1, 0($1)
bgtz $2, TAG587
TAG587:
mfhi $4
div $2, $2
bgtz $2, TAG588
lw $2, 1($2)
TAG588:
beq $2, $2, TAG589
nor $2, $2, $2
mtlo $2
srlv $2, $2, $2
TAG589:
or $1, $2, $2
sb $2, 1($2)
lh $1, 1($1)
lui $4, 15
TAG590:
mtlo $4
sll $0, $0, 0
mthi $4
blez $4, TAG591
TAG591:
lui $1, 10
sltiu $3, $4, 0
sll $0, $0, 0
sllv $3, $4, $3
TAG592:
sll $0, $0, 0
mflo $1
bne $3, $3, TAG593
mfhi $3
TAG593:
xori $3, $3, 10
bgez $3, TAG594
mthi $3
multu $3, $3
TAG594:
sll $0, $0, 0
bne $3, $3, TAG595
sll $0, $0, 0
lui $3, 1
TAG595:
nor $1, $3, $3
bltz $1, TAG596
sll $0, $0, 0
mfhi $4
TAG596:
nor $1, $4, $4
lui $4, 0
andi $3, $4, 15
sltu $4, $3, $4
TAG597:
sb $4, 0($4)
beq $4, $4, TAG598
mult $4, $4
and $2, $4, $4
TAG598:
addu $4, $2, $2
sw $2, 1($2)
mtlo $4
bne $2, $4, TAG599
TAG599:
addiu $4, $4, 15
divu $4, $4
lbu $2, 0($4)
sb $4, 0($4)
TAG600:
sh $2, 0($2)
addiu $1, $2, 3
beq $2, $1, TAG601
mthi $1
TAG601:
slti $4, $1, 11
mthi $1
bgez $4, TAG602
lui $3, 7
TAG602:
div $3, $3
mflo $1
slti $2, $3, 6
lb $4, 0($1)
TAG603:
multu $4, $4
mult $4, $4
bgez $4, TAG604
mflo $3
TAG604:
mfhi $1
sb $1, 0($3)
lbu $4, 0($3)
add $3, $4, $3
TAG605:
mflo $4
bgtz $3, TAG606
sb $3, 0($4)
mfhi $4
TAG606:
slti $3, $4, 7
bne $4, $3, TAG607
lbu $3, 0($4)
blez $3, TAG607
TAG607:
lui $2, 2
lui $2, 1
mult $2, $2
mflo $1
TAG608:
mtlo $1
mult $1, $1
addu $4, $1, $1
bne $1, $1, TAG609
TAG609:
xori $2, $4, 13
lbu $3, 0($2)
mtlo $4
lui $3, 13
TAG610:
sll $0, $0, 0
beq $1, $1, TAG611
sll $0, $0, 0
lhu $1, 0($3)
TAG611:
lui $2, 1
divu $2, $2
lw $4, 0($1)
lbu $2, 0($1)
TAG612:
lui $1, 1
mthi $1
lui $1, 10
lh $4, -255($2)
TAG613:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
blez $4, TAG614
TAG614:
xori $3, $1, 0
bne $3, $3, TAG615
and $1, $3, $1
ori $1, $1, 1
TAG615:
addiu $4, $1, 9
mthi $4
sll $0, $0, 0
sra $2, $4, 4
TAG616:
div $2, $2
sll $0, $0, 0
sllv $1, $2, $2
mthi $1
TAG617:
slt $2, $1, $1
lui $2, 8
mflo $1
or $1, $1, $1
TAG618:
addiu $3, $1, 3
subu $2, $3, $1
sb $3, 0($1)
addiu $1, $3, 9
TAG619:
sll $1, $1, 13
bltz $1, TAG620
sll $0, $0, 0
mfhi $2
TAG620:
sll $1, $2, 14
mthi $1
div $2, $2
srav $2, $1, $1
TAG621:
addiu $4, $2, 13
mthi $4
sll $0, $0, 0
srav $2, $4, $4
TAG622:
mtlo $2
sll $0, $0, 0
sltiu $4, $2, 10
sll $0, $0, 0
TAG623:
sh $3, 0($3)
or $4, $3, $3
mtlo $4
multu $4, $4
TAG624:
addiu $1, $4, 13
mfhi $2
bgtz $4, TAG625
divu $4, $4
TAG625:
mtlo $2
andi $1, $2, 13
subu $1, $2, $2
slt $3, $1, $1
TAG626:
mthi $3
bltz $3, TAG627
sll $3, $3, 15
lb $1, 0($3)
TAG627:
mult $1, $1
subu $3, $1, $1
mtlo $1
beq $1, $1, TAG628
TAG628:
addu $1, $3, $3
xor $2, $1, $3
blez $2, TAG629
lui $2, 1
TAG629:
mthi $2
bne $2, $2, TAG630
sll $0, $0, 0
beq $2, $2, TAG630
TAG630:
sll $0, $0, 0
mfhi $2
sb $3, 0($3)
srav $3, $3, $3
TAG631:
beq $3, $3, TAG632
mthi $3
mthi $3
sb $3, 0($3)
TAG632:
mfhi $1
bne $3, $3, TAG633
lb $1, 0($3)
addu $2, $1, $1
TAG633:
mthi $2
mtlo $2
mfhi $4
mflo $2
TAG634:
mult $2, $2
lhu $2, 0($2)
mfhi $3
mthi $2
TAG635:
addiu $1, $3, 14
lb $4, 0($3)
xori $3, $4, 15
addiu $2, $3, 1
TAG636:
mflo $3
mfhi $4
xori $2, $4, 6
div $3, $4
TAG637:
mthi $2
mtlo $2
sb $2, -1030($2)
lui $4, 7
TAG638:
mthi $4
srav $3, $4, $4
lui $1, 8
sltu $1, $4, $3
TAG639:
srl $4, $1, 7
lui $2, 9
mtlo $4
bltz $1, TAG640
TAG640:
mflo $2
sb $2, 0($2)
bgtz $2, TAG641
sb $2, 0($2)
TAG641:
sb $2, 0($2)
lui $3, 0
bltz $2, TAG642
sw $2, 0($3)
TAG642:
lui $1, 6
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG643:
lui $2, 13
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG644:
bgtz $4, TAG645
sb $4, 0($4)
slti $1, $4, 12
blez $1, TAG645
TAG645:
lui $1, 9
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG646
TAG646:
mthi $2
sll $0, $0, 0
lui $2, 15
mult $2, $2
TAG647:
lui $2, 4
bltz $2, TAG648
div $2, $2
bltz $2, TAG648
TAG648:
mfhi $1
lui $3, 13
sw $1, 0($1)
lui $1, 0
TAG649:
sw $1, 0($1)
bne $1, $1, TAG650
srav $4, $1, $1
mtlo $4
TAG650:
mflo $3
lui $3, 13
bne $3, $4, TAG651
ori $2, $4, 11
TAG651:
bltz $2, TAG652
addiu $2, $2, 10
mfhi $1
mtlo $1
TAG652:
nor $1, $1, $1
mtlo $1
sh $1, 1($1)
and $3, $1, $1
TAG653:
sll $2, $3, 14
beq $2, $2, TAG654
mult $3, $3
or $2, $2, $2
TAG654:
sb $2, 16384($2)
mtlo $2
lhu $1, 16384($2)
mult $2, $2
TAG655:
mthi $1
sltiu $2, $1, 14
sll $0, $0, 0
sb $2, 0($2)
TAG656:
sh $4, 0($4)
bgtz $4, TAG657
srl $3, $4, 15
lh $4, 0($3)
TAG657:
sra $3, $4, 1
bgez $4, TAG658
slti $4, $4, 12
sra $2, $4, 5
TAG658:
mult $2, $2
mtlo $2
mtlo $2
lui $3, 10
TAG659:
sll $0, $0, 0
bgtz $3, TAG660
mflo $4
mflo $2
TAG660:
bltz $2, TAG661
mthi $2
add $4, $2, $2
bltz $2, TAG661
TAG661:
lui $4, 12
srlv $1, $4, $4
bltz $4, TAG662
mtlo $4
TAG662:
mfhi $1
mthi $1
bgtz $1, TAG663
sw $1, 0($1)
TAG663:
mtlo $1
mflo $3
lhu $3, 0($3)
sb $3, 0($3)
TAG664:
nor $3, $3, $3
sb $3, 1($3)
subu $1, $3, $3
mfhi $3
TAG665:
lh $3, 0($3)
bgtz $3, TAG666
multu $3, $3
mthi $3
TAG666:
sra $1, $3, 10
mtlo $3
blez $1, TAG667
sh $3, 0($1)
TAG667:
sh $1, 0($1)
multu $1, $1
lui $4, 8
sll $0, $0, 0
TAG668:
mthi $4
mflo $3
mflo $2
mfhi $4
TAG669:
bgtz $4, TAG670
addu $1, $4, $4
sh $1, 0($4)
mflo $1
TAG670:
mthi $1
beq $1, $1, TAG671
sll $0, $0, 0
div $1, $1
TAG671:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
TAG672:
mflo $2
lui $1, 2
sltiu $4, $2, 7
sb $2, 0($4)
TAG673:
lb $2, 0($4)
mfhi $2
bgez $2, TAG674
sll $1, $2, 6
TAG674:
sltu $4, $1, $1
mult $4, $4
mtlo $1
sll $0, $0, 0
TAG675:
sh $4, 0($4)
ori $2, $4, 13
mtlo $2
bgtz $4, TAG676
TAG676:
xor $3, $2, $2
mult $3, $2
mflo $4
lb $3, 0($3)
TAG677:
lb $3, 0($3)
bne $3, $3, TAG678
andi $1, $3, 6
multu $3, $1
TAG678:
lui $1, 3
mflo $3
lbu $2, 0($3)
lui $2, 3
TAG679:
mthi $2
blez $2, TAG680
sll $0, $0, 0
sll $0, $0, 0
TAG680:
srav $2, $1, $1
bltz $1, TAG681
mflo $4
bne $1, $4, TAG681
TAG681:
lui $4, 5
addiu $2, $4, 13
mthi $4
subu $2, $2, $2
TAG682:
mthi $2
mult $2, $2
lui $2, 7
mthi $2
TAG683:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
bgtz $2, TAG684
TAG684:
mthi $2
srlv $1, $2, $2
sll $0, $0, 0
div $1, $1
TAG685:
bgez $1, TAG686
lui $1, 6
sltu $2, $1, $1
mthi $1
TAG686:
srlv $3, $2, $2
lui $1, 11
lui $3, 15
slti $3, $2, 2
TAG687:
sw $3, 0($3)
lui $3, 12
blez $3, TAG688
sll $0, $0, 0
TAG688:
lui $1, 1
sll $0, $0, 0
lui $2, 13
lui $4, 9
TAG689:
bltz $4, TAG690
sll $0, $0, 0
beq $4, $4, TAG690
addiu $1, $4, 8
TAG690:
sll $0, $0, 0
sll $3, $1, 0
multu $3, $1
bgtz $3, TAG691
TAG691:
mthi $3
and $3, $3, $3
bgtz $3, TAG692
divu $3, $3
TAG692:
lui $4, 10
sltiu $3, $4, 13
mfhi $1
blez $3, TAG693
TAG693:
sltu $4, $1, $1
lui $4, 11
bgtz $4, TAG694
sll $0, $0, 0
TAG694:
divu $2, $2
sll $0, $0, 0
blez $2, TAG695
mflo $2
TAG695:
sb $2, 0($2)
nor $3, $2, $2
blez $3, TAG696
mtlo $3
TAG696:
mflo $4
multu $3, $3
srlv $3, $3, $3
srl $2, $3, 7
TAG697:
lui $3, 6
sll $0, $0, 0
bne $2, $3, TAG698
sll $0, $0, 0
TAG698:
bne $2, $2, TAG699
sw $2, 0($2)
sltiu $1, $2, 15
mthi $1
TAG699:
addiu $2, $1, 13
lh $2, 0($2)
mtlo $2
mtlo $1
TAG700:
lbu $1, 0($2)
mult $1, $1
mult $1, $1
subu $4, $1, $2
TAG701:
beq $4, $4, TAG702
mthi $4
lui $4, 12
sltiu $1, $4, 5
TAG702:
lui $3, 11
sll $0, $0, 0
mfhi $4
srl $4, $4, 9
TAG703:
mfhi $1
or $2, $4, $1
lb $2, 0($2)
lui $2, 0
TAG704:
lb $2, 0($2)
add $3, $2, $2
beq $3, $2, TAG705
multu $3, $2
TAG705:
lui $3, 3
multu $3, $3
bgez $3, TAG706
lui $4, 13
TAG706:
div $4, $4
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
TAG707:
sb $2, 0($2)
sll $3, $2, 6
bne $2, $3, TAG708
mtlo $3
TAG708:
beq $3, $3, TAG709
lhu $4, 0($3)
mfhi $3
and $3, $4, $4
TAG709:
mfhi $1
mflo $4
sw $1, 0($4)
mult $4, $3
TAG710:
or $2, $4, $4
lui $1, 0
bgtz $4, TAG711
mflo $1
TAG711:
lui $3, 8
bne $3, $3, TAG712
addiu $4, $1, 10
lui $3, 8
TAG712:
sll $0, $0, 0
beq $2, $2, TAG713
and $1, $2, $2
lui $4, 10
TAG713:
blez $4, TAG714
mtlo $4
mthi $4
bne $4, $4, TAG714
TAG714:
ori $3, $4, 13
beq $3, $3, TAG715
mtlo $4
beq $4, $4, TAG715
TAG715:
mflo $2
lb $1, 0($3)
lh $3, 0($2)
mtlo $2
TAG716:
addiu $4, $3, 5
mthi $4
mfhi $2
mtlo $4
TAG717:
bltz $2, TAG718
and $4, $2, $2
mult $4, $4
ori $3, $4, 4
TAG718:
lb $2, 0($3)
lui $1, 4
sll $0, $0, 0
bltz $2, TAG719
TAG719:
sw $2, 0($2)
lb $2, 0($2)
bltz $2, TAG720
multu $2, $2
TAG720:
lui $4, 9
multu $2, $2
and $2, $4, $2
sb $2, 0($2)
TAG721:
sw $2, 0($2)
mthi $2
lui $4, 8
mthi $4
TAG722:
slti $4, $4, 4
mfhi $2
ori $3, $4, 2
sh $4, 0($3)
TAG723:
mfhi $1
mtlo $3
mtlo $1
sll $0, $0, 0
TAG724:
blez $2, TAG725
slt $4, $2, $2
sll $0, $0, 0
sra $2, $3, 0
TAG725:
lui $1, 5
sb $1, 0($2)
addiu $2, $2, 14
addiu $4, $1, 9
TAG726:
mult $4, $4
bltz $4, TAG727
addu $2, $4, $4
lui $1, 6
TAG727:
lui $3, 7
beq $1, $3, TAG728
mult $1, $1
mthi $1
TAG728:
multu $3, $3
blez $3, TAG729
mflo $2
lui $1, 14
TAG729:
multu $1, $1
mthi $1
bne $1, $1, TAG730
mtlo $1
TAG730:
sll $0, $0, 0
sltiu $4, $1, 7
multu $1, $2
sw $2, 0($2)
TAG731:
bne $4, $4, TAG732
lbu $4, 0($4)
mfhi $2
mfhi $2
TAG732:
slt $3, $2, $2
mult $3, $3
mflo $2
lui $2, 10
TAG733:
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
mult $2, $1
TAG734:
sll $0, $0, 0
sll $0, $0, 0
xori $2, $1, 6
beq $1, $2, TAG735
TAG735:
sll $0, $0, 0
sltu $4, $4, $2
beq $4, $4, TAG736
mflo $2
TAG736:
multu $2, $2
blez $2, TAG737
lui $1, 8
addu $3, $1, $2
TAG737:
mtlo $3
lui $3, 7
mflo $3
mflo $2
TAG738:
srlv $2, $2, $2
mfhi $3
lb $2, 0($2)
slti $1, $2, 6
TAG739:
mthi $1
srlv $4, $1, $1
bgtz $1, TAG740
lw $3, 0($4)
TAG740:
bltz $3, TAG741
xori $1, $3, 5
slti $2, $1, 4
lui $3, 10
TAG741:
sll $0, $0, 0
bltz $3, TAG742
addiu $3, $3, 8
sll $0, $0, 0
TAG742:
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG743
addi $4, $2, 1
TAG743:
lb $3, 0($4)
beq $3, $4, TAG744
lui $4, 7
multu $3, $3
TAG744:
bltz $4, TAG745
xor $3, $4, $4
beq $4, $3, TAG745
mthi $4
TAG745:
lui $4, 11
bltz $3, TAG746
lui $4, 10
divu $3, $4
TAG746:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 6
TAG747:
lui $3, 9
sll $0, $0, 0
srlv $3, $3, $3
sll $0, $0, 0
TAG748:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
srl $4, $4, 12
TAG749:
lui $2, 1
srlv $3, $2, $2
mflo $1
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop