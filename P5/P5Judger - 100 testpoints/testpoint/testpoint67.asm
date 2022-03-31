ori $1, $0, 13
ori $2, $0, 9
ori $3, $0, 5
ori $4, $0, 6
sw $4, 0($0)
sw $1, 4($0)
sw $3, 8($0)
sw $1, 12($0)
sw $1, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $2, 48($0)
sw $2, 52($0)
sw $4, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $1, 84($0)
sw $2, 88($0)
sw $1, 92($0)
sw $4, 96($0)
sw $1, 100($0)
sw $4, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $4, 124($0)
srav $1, $2, $2
lui $2, 5
bne $2, $1, TAG1
addu $3, $2, $2
TAG1:
lui $4, 0
bne $3, $4, TAG2
mfhi $3
multu $4, $3
TAG2:
sh $3, 0($3)
lui $3, 3
div $3, $3
sll $0, $0, 0
TAG3:
bne $3, $3, TAG4
sll $0, $0, 0
bgez $3, TAG4
div $3, $3
TAG4:
sll $0, $0, 0
mult $3, $3
divu $3, $3
bgez $3, TAG5
TAG5:
addu $2, $3, $3
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG6:
bgtz $2, TAG7
lui $3, 7
bne $3, $3, TAG7
div $3, $2
TAG7:
sll $0, $0, 0
subu $4, $1, $1
or $4, $4, $4
lui $1, 13
TAG8:
sll $0, $0, 0
xor $1, $1, $1
mthi $1
bne $1, $1, TAG9
TAG9:
mult $1, $1
bne $1, $1, TAG10
mthi $1
beq $1, $1, TAG10
TAG10:
sub $2, $1, $1
lui $4, 0
multu $1, $1
or $4, $4, $1
TAG11:
sh $4, 0($4)
blez $4, TAG12
srl $4, $4, 3
blez $4, TAG12
TAG12:
sh $4, 0($4)
sb $4, 0($4)
mfhi $2
lui $3, 6
TAG13:
nor $3, $3, $3
multu $3, $3
multu $3, $3
mflo $1
TAG14:
addiu $3, $1, 14
srl $2, $3, 2
sll $0, $0, 0
sll $0, $0, 0
TAG15:
sll $0, $0, 0
or $2, $2, $2
mtlo $2
mtlo $2
TAG16:
and $3, $2, $2
mtlo $2
div $3, $2
mult $2, $2
TAG17:
mtlo $3
sll $0, $0, 0
blez $1, TAG18
lui $1, 4
TAG18:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
mfhi $4
TAG19:
bgez $4, TAG20
sll $0, $0, 0
blez $4, TAG20
addiu $1, $4, 14
TAG20:
andi $2, $1, 4
mthi $1
beq $2, $2, TAG21
mtlo $1
TAG21:
multu $2, $2
addiu $4, $2, 1
mthi $4
blez $2, TAG22
TAG22:
multu $4, $4
lb $1, 0($4)
lui $2, 15
bgtz $1, TAG23
TAG23:
slt $3, $2, $2
beq $2, $2, TAG24
add $1, $3, $2
blez $2, TAG24
TAG24:
or $2, $1, $1
mthi $1
mfhi $1
sltiu $3, $1, 2
TAG25:
mtlo $3
bgez $3, TAG26
lui $1, 15
beq $1, $3, TAG26
TAG26:
srlv $4, $1, $1
mflo $3
mflo $1
mult $4, $3
TAG27:
bltz $1, TAG28
mfhi $4
lhu $1, 0($1)
lui $4, 13
TAG28:
srlv $1, $4, $4
bne $4, $1, TAG29
lui $4, 6
div $1, $4
TAG29:
sll $0, $0, 0
mtlo $4
mtlo $4
sra $1, $4, 6
TAG30:
sllv $3, $1, $1
lui $2, 6
lw $1, -6144($1)
mtlo $2
TAG31:
sb $1, 0($1)
lui $4, 14
sll $4, $1, 9
addi $2, $4, 15
TAG32:
sllv $1, $2, $2
sll $0, $0, 0
sb $2, 0($2)
bgtz $1, TAG33
TAG33:
sll $0, $0, 0
sltiu $4, $1, 0
lh $2, 0($4)
sra $2, $2, 8
TAG34:
mtlo $2
bgtz $2, TAG35
multu $2, $2
sb $2, 0($2)
TAG35:
mult $2, $2
mthi $2
andi $4, $2, 8
multu $2, $4
TAG36:
sb $4, 0($4)
blez $4, TAG37
sb $4, 0($4)
xor $3, $4, $4
TAG37:
mtlo $3
lui $3, 1
mfhi $2
lui $3, 13
TAG38:
sll $0, $0, 0
mthi $3
multu $3, $2
mfhi $1
TAG39:
multu $1, $1
xori $1, $1, 5
addiu $2, $1, 13
beq $2, $1, TAG40
TAG40:
sh $2, 0($2)
bltz $2, TAG41
mult $2, $2
lbu $1, 0($2)
TAG41:
bne $1, $1, TAG42
mult $1, $1
lui $1, 5
sll $0, $0, 0
TAG42:
bgez $1, TAG43
mfhi $1
mflo $1
sub $2, $1, $1
TAG43:
sb $2, 0($2)
mflo $4
sh $2, -324($4)
lui $2, 11
TAG44:
bne $2, $2, TAG45
addu $3, $2, $2
mtlo $2
sll $0, $0, 0
TAG45:
mfhi $4
sub $3, $3, $4
divu $4, $3
mflo $3
TAG46:
lbu $1, 0($3)
lhu $3, 0($1)
bgez $3, TAG47
div $3, $3
TAG47:
mfhi $1
mflo $1
sb $3, 0($1)
lhu $2, 0($3)
TAG48:
bltz $2, TAG49
mult $2, $2
mflo $2
mtlo $2
TAG49:
lui $3, 0
mfhi $3
sll $4, $3, 2
sh $3, 0($4)
TAG50:
andi $3, $4, 3
mult $4, $4
srl $4, $4, 6
mflo $1
TAG51:
lui $2, 12
beq $1, $1, TAG52
lw $2, 0($1)
mfhi $2
TAG52:
sw $2, 0($2)
lui $1, 3
lui $2, 6
mfhi $1
TAG53:
lui $4, 0
sltu $3, $1, $1
andi $4, $1, 13
lhu $3, 0($3)
TAG54:
mthi $3
mflo $2
srl $2, $3, 3
lui $1, 8
TAG55:
slt $1, $1, $1
mfhi $3
beq $3, $3, TAG56
mfhi $4
TAG56:
lhu $3, 0($4)
mult $3, $3
sw $4, 0($3)
sw $3, 0($4)
TAG57:
bgez $3, TAG58
sllv $3, $3, $3
lb $2, 0($3)
mtlo $3
TAG58:
sh $2, 0($2)
multu $2, $2
multu $2, $2
sh $2, 0($2)
TAG59:
addiu $1, $2, 3
sltiu $1, $1, 13
mtlo $1
lui $3, 1
TAG60:
sll $0, $0, 0
lui $1, 4
mflo $1
slti $4, $1, 13
TAG61:
lui $2, 11
lui $1, 10
mfhi $3
bne $2, $4, TAG62
TAG62:
lbu $4, 0($3)
mflo $3
beq $4, $3, TAG63
divu $4, $3
TAG63:
sb $3, 0($3)
blez $3, TAG64
mult $3, $3
bgez $3, TAG64
TAG64:
lb $1, 0($3)
div $3, $1
sb $1, 0($3)
mfhi $2
TAG65:
bne $2, $2, TAG66
add $1, $2, $2
bne $1, $2, TAG66
sb $2, 0($2)
TAG66:
blez $1, TAG67
mult $1, $1
mfhi $4
bgtz $1, TAG67
TAG67:
mthi $4
bne $4, $4, TAG68
mflo $1
sw $1, 0($1)
TAG68:
mult $1, $1
add $3, $1, $1
subu $2, $3, $1
xori $1, $1, 14
TAG69:
lbu $4, 0($1)
multu $1, $4
blez $1, TAG70
addi $2, $4, 6
TAG70:
lh $4, 0($2)
lui $2, 4
mfhi $3
mflo $2
TAG71:
lh $3, 0($2)
bgez $2, TAG72
sh $3, 0($3)
sll $3, $2, 12
TAG72:
mtlo $3
andi $1, $3, 0
lh $1, 0($1)
mult $1, $3
TAG73:
bne $1, $1, TAG74
multu $1, $1
mtlo $1
mflo $1
TAG74:
mult $1, $1
mflo $4
mfhi $1
multu $1, $4
TAG75:
lui $1, 8
mtlo $1
sll $0, $0, 0
slti $4, $1, 6
TAG76:
lui $4, 14
mthi $4
nor $2, $4, $4
srlv $2, $4, $4
TAG77:
mflo $2
subu $2, $2, $2
sllv $4, $2, $2
bgtz $2, TAG78
TAG78:
mthi $4
andi $2, $4, 3
mult $2, $2
sub $3, $4, $2
TAG79:
xori $2, $3, 7
mtlo $2
sh $3, 0($3)
bltz $2, TAG80
TAG80:
xor $2, $2, $2
multu $2, $2
srl $1, $2, 1
lb $1, 0($2)
TAG81:
mflo $4
multu $4, $1
xori $1, $4, 12
slti $3, $4, 14
TAG82:
mfhi $1
lb $3, 0($3)
lui $3, 13
addu $4, $3, $3
TAG83:
beq $4, $4, TAG84
addiu $1, $4, 6
sw $1, 0($1)
beq $4, $4, TAG84
TAG84:
mtlo $1
bgez $1, TAG85
or $4, $1, $1
srlv $4, $1, $1
TAG85:
sll $0, $0, 0
lui $3, 14
divu $3, $4
beq $4, $4, TAG86
TAG86:
sll $0, $0, 0
divu $3, $3
bgez $3, TAG87
lui $1, 1
TAG87:
lui $2, 8
beq $2, $2, TAG88
addiu $2, $2, 15
bne $2, $1, TAG88
TAG88:
sll $0, $0, 0
mflo $3
beq $3, $2, TAG89
sll $0, $0, 0
TAG89:
mult $1, $1
sll $3, $1, 7
lui $4, 12
mthi $1
TAG90:
mfhi $4
mfhi $2
beq $4, $2, TAG91
mfhi $3
TAG91:
beq $3, $3, TAG92
mflo $1
mthi $3
blez $3, TAG92
TAG92:
lui $4, 6
bgez $4, TAG93
sh $4, 0($1)
multu $4, $1
TAG93:
mthi $4
mthi $4
mflo $4
mfhi $2
TAG94:
beq $2, $2, TAG95
srl $3, $2, 7
mfhi $4
lui $1, 8
TAG95:
lbu $3, 0($1)
beq $1, $1, TAG96
lui $1, 3
mtlo $3
TAG96:
mtlo $1
sll $0, $0, 0
slt $1, $3, $3
xori $2, $1, 0
TAG97:
sh $2, 0($2)
sb $2, 0($2)
multu $2, $2
bgez $2, TAG98
TAG98:
sw $2, 0($2)
mflo $4
mtlo $4
mtlo $4
TAG99:
bltz $4, TAG100
lw $1, 0($4)
srl $4, $4, 10
xori $4, $1, 3
TAG100:
mult $4, $4
blez $4, TAG101
div $4, $4
mfhi $1
TAG101:
and $2, $1, $1
lui $3, 2
lhu $2, 0($2)
mfhi $4
TAG102:
bltz $4, TAG103
mthi $4
lui $2, 15
lui $1, 13
TAG103:
lui $3, 0
lw $3, 0($3)
srl $3, $3, 5
mtlo $3
TAG104:
mflo $4
mult $3, $3
lbu $1, 0($3)
mult $3, $4
TAG105:
bne $1, $1, TAG106
mtlo $1
subu $2, $1, $1
sh $1, 0($1)
TAG106:
bltz $2, TAG107
addiu $1, $2, 15
multu $2, $2
sw $2, 0($2)
TAG107:
blez $1, TAG108
sll $4, $1, 3
addiu $2, $1, 14
bgtz $4, TAG108
TAG108:
lbu $3, 0($2)
lui $1, 14
sltu $4, $2, $2
mult $3, $3
TAG109:
sh $4, 0($4)
mflo $2
mflo $4
bne $2, $4, TAG110
TAG110:
sb $4, 0($4)
mtlo $4
sb $4, 0($4)
mflo $4
TAG111:
blez $4, TAG112
mtlo $4
lh $1, 0($4)
sb $1, 0($4)
TAG112:
bne $1, $1, TAG113
srav $1, $1, $1
sra $3, $1, 2
sll $0, $0, 0
TAG113:
addu $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $4, $1, 2
TAG114:
multu $4, $4
mfhi $4
bne $4, $4, TAG115
lhu $4, -12544($4)
TAG115:
sltu $4, $4, $4
beq $4, $4, TAG116
slt $3, $4, $4
or $4, $4, $3
TAG116:
and $3, $4, $4
beq $4, $4, TAG117
mflo $2
bltz $3, TAG117
TAG117:
srav $2, $2, $2
slt $2, $2, $2
addu $2, $2, $2
mult $2, $2
TAG118:
blez $2, TAG119
lhu $4, 0($2)
and $3, $2, $4
mfhi $3
TAG119:
lui $3, 9
mthi $3
sll $0, $0, 0
bgez $3, TAG120
TAG120:
addu $1, $3, $3
divu $3, $1
bltz $1, TAG121
mflo $4
TAG121:
lh $1, 0($4)
and $1, $1, $1
mult $1, $1
mult $4, $1
TAG122:
xori $2, $1, 1
sra $4, $2, 5
lui $3, 11
lui $1, 9
TAG123:
ori $1, $1, 15
sll $0, $0, 0
beq $1, $1, TAG124
sll $0, $0, 0
TAG124:
mthi $3
beq $3, $3, TAG125
mtlo $3
addi $4, $3, 15
TAG125:
sub $4, $4, $4
lui $2, 4
mthi $4
lui $4, 11
TAG126:
mtlo $4
ori $2, $4, 12
lui $1, 10
bgez $4, TAG127
TAG127:
sll $0, $0, 0
bgtz $1, TAG128
divu $2, $2
lui $4, 11
TAG128:
mfhi $2
lui $2, 2
bgtz $2, TAG129
mflo $1
TAG129:
blez $1, TAG130
mthi $1
sb $1, 0($1)
sb $1, 0($1)
TAG130:
bltz $1, TAG131
sllv $1, $1, $1
bltz $1, TAG131
sh $1, 0($1)
TAG131:
lui $2, 9
mfhi $4
mult $1, $2
mfhi $3
TAG132:
blez $3, TAG133
and $3, $3, $3
lui $1, 12
srl $3, $1, 1
TAG133:
nor $4, $3, $3
mtlo $3
sltiu $2, $3, 12
beq $4, $3, TAG134
TAG134:
slt $2, $2, $2
slt $4, $2, $2
sh $4, 0($2)
sb $4, 0($2)
TAG135:
sw $4, 0($4)
addi $2, $4, 5
lb $1, 0($2)
srl $2, $4, 15
TAG136:
add $4, $2, $2
lui $1, 12
sb $2, 0($2)
lui $2, 0
TAG137:
mtlo $2
bne $2, $2, TAG138
lb $3, 0($2)
mtlo $2
TAG138:
beq $3, $3, TAG139
multu $3, $3
sw $3, 0($3)
lhu $2, 0($3)
TAG139:
multu $2, $2
mult $2, $2
ori $4, $2, 6
mtlo $4
TAG140:
bgtz $4, TAG141
lh $1, 0($4)
mtlo $1
sllv $3, $1, $1
TAG141:
lbu $2, 0($3)
multu $3, $3
sh $2, 0($2)
sb $3, 0($2)
TAG142:
bgez $2, TAG143
multu $2, $2
addi $2, $2, 13
lui $4, 11
TAG143:
sh $4, 0($4)
lb $1, 0($4)
blez $1, TAG144
mthi $4
TAG144:
mthi $1
sll $2, $1, 15
bne $1, $1, TAG145
div $1, $1
TAG145:
blez $2, TAG146
multu $2, $2
mflo $3
bgtz $2, TAG146
TAG146:
multu $3, $3
addiu $4, $3, 2
addiu $1, $4, 5
sb $4, 0($1)
TAG147:
sb $1, 0($1)
div $1, $1
sb $1, 0($1)
sb $1, 0($1)
TAG148:
div $1, $1
addiu $2, $1, 2
nor $1, $2, $1
lui $3, 9
TAG149:
mfhi $3
mfhi $3
mult $3, $3
and $3, $3, $3
TAG150:
bgtz $3, TAG151
andi $4, $3, 6
addu $1, $3, $4
blez $1, TAG151
TAG151:
mflo $3
srl $4, $3, 5
sll $4, $4, 13
mfhi $3
TAG152:
mtlo $3
lbu $1, 0($3)
nor $1, $3, $1
mflo $3
TAG153:
lb $2, 0($3)
mult $2, $2
lui $3, 6
bltz $3, TAG154
TAG154:
srl $3, $3, 5
div $3, $3
bltz $3, TAG155
mfhi $4
TAG155:
sh $4, 0($4)
sw $4, 0($4)
lui $1, 3
srl $2, $1, 15
TAG156:
sh $2, 0($2)
lui $1, 1
sra $2, $2, 0
div $2, $2
TAG157:
lh $4, 0($2)
lbu $4, 0($4)
sh $2, 0($2)
lb $4, 0($4)
TAG158:
bgtz $4, TAG159
mthi $4
sh $4, 0($4)
andi $2, $4, 10
TAG159:
andi $1, $2, 0
lui $1, 15
mthi $2
beq $1, $1, TAG160
TAG160:
sll $0, $0, 0
mfhi $3
mult $2, $2
mult $2, $3
TAG161:
mtlo $3
multu $3, $3
lhu $1, 0($3)
beq $1, $1, TAG162
TAG162:
andi $4, $1, 13
mthi $1
beq $1, $1, TAG163
mult $1, $4
TAG163:
or $2, $4, $4
srlv $1, $2, $4
mthi $4
srav $1, $1, $4
TAG164:
bgez $1, TAG165
or $4, $1, $1
lui $2, 8
sw $1, 0($2)
TAG165:
bne $2, $2, TAG166
sw $2, 0($2)
mfhi $4
lw $1, 0($4)
TAG166:
beq $1, $1, TAG167
mtlo $1
bne $1, $1, TAG167
sllv $2, $1, $1
TAG167:
bltz $2, TAG168
addiu $4, $2, 10
bgtz $4, TAG168
srl $4, $4, 3
TAG168:
srav $1, $4, $4
sb $4, 0($1)
mfhi $1
mtlo $1
TAG169:
mthi $1
sltu $2, $1, $1
mflo $2
div $2, $2
TAG170:
srav $4, $2, $2
addu $4, $4, $2
lui $2, 10
mtlo $2
TAG171:
div $2, $2
mult $2, $2
srl $3, $2, 8
mthi $2
TAG172:
sll $0, $0, 0
blez $2, TAG173
sh $3, -2560($3)
subu $3, $3, $3
TAG173:
lui $2, 11
sb $2, 0($3)
lui $1, 8
bne $3, $2, TAG174
TAG174:
lui $3, 1
bltz $3, TAG175
sll $0, $0, 0
slti $1, $3, 10
TAG175:
ori $4, $1, 3
divu $1, $4
multu $1, $4
beq $4, $4, TAG176
TAG176:
sb $4, 0($4)
lui $2, 14
bgez $2, TAG177
srl $4, $2, 12
TAG177:
subu $3, $4, $4
lui $4, 7
bne $3, $4, TAG178
mflo $1
TAG178:
sllv $1, $1, $1
mult $1, $1
sll $3, $1, 7
or $3, $1, $3
TAG179:
lh $4, 0($3)
bne $4, $3, TAG180
addi $4, $3, 5
bgez $4, TAG180
TAG180:
lbu $1, 0($4)
bltz $1, TAG181
div $1, $4
lhu $3, 0($1)
TAG181:
blez $3, TAG182
sltiu $1, $3, 1
mthi $3
mthi $3
TAG182:
multu $1, $1
lui $1, 10
sltu $1, $1, $1
addu $2, $1, $1
TAG183:
srl $3, $2, 9
multu $2, $2
mfhi $4
mtlo $3
TAG184:
mult $4, $4
mthi $4
lui $3, 9
beq $4, $3, TAG185
TAG185:
multu $3, $3
beq $3, $3, TAG186
sra $4, $3, 0
div $4, $4
TAG186:
xori $3, $4, 14
blez $4, TAG187
mflo $3
bne $3, $4, TAG187
TAG187:
add $1, $3, $3
addu $4, $1, $3
lhu $2, 0($1)
mult $4, $1
TAG188:
mtlo $2
div $2, $2
sw $2, -2560($2)
mtlo $2
TAG189:
bgtz $2, TAG190
sltiu $4, $2, 12
beq $4, $2, TAG190
lbu $3, 0($2)
TAG190:
mult $3, $3
sh $3, 0($3)
sh $3, 0($3)
xori $4, $3, 11
TAG191:
mtlo $4
multu $4, $4
blez $4, TAG192
xori $3, $4, 9
TAG192:
sh $3, 0($3)
sb $3, 0($3)
mtlo $3
xori $2, $3, 0
TAG193:
bne $2, $2, TAG194
nor $3, $2, $2
lui $3, 9
bne $2, $3, TAG194
TAG194:
mthi $3
lui $2, 7
mflo $1
sh $3, 0($1)
TAG195:
mfhi $3
andi $2, $3, 1
xori $1, $1, 6
sll $0, $0, 0
TAG196:
lbu $1, 0($4)
sb $4, 0($1)
beq $1, $4, TAG197
mfhi $4
TAG197:
mult $4, $4
divu $4, $4
bgtz $4, TAG198
lui $3, 4
TAG198:
mtlo $3
sltu $1, $3, $3
bne $3, $3, TAG199
mfhi $1
TAG199:
mult $1, $1
beq $1, $1, TAG200
multu $1, $1
lb $3, 0($1)
TAG200:
beq $3, $3, TAG201
lui $2, 14
lhu $3, 0($3)
mflo $4
TAG201:
mtlo $4
srl $1, $4, 8
sll $0, $0, 0
ori $1, $4, 1
TAG202:
mflo $4
mult $4, $4
sll $0, $0, 0
mtlo $1
TAG203:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
xor $3, $4, $3
TAG204:
lui $1, 10
mult $1, $1
blez $1, TAG205
sll $0, $0, 0
TAG205:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG206
divu $4, $4
TAG206:
blez $4, TAG207
and $2, $4, $4
bgez $4, TAG207
or $2, $4, $2
TAG207:
sll $0, $0, 0
blez $2, TAG208
sll $0, $0, 0
sll $0, $0, 0
TAG208:
sll $0, $0, 0
divu $1, $3
div $3, $3
lui $2, 9
TAG209:
beq $2, $2, TAG210
sra $3, $2, 0
subu $3, $3, $3
addi $4, $3, 7
TAG210:
sllv $2, $4, $4
sll $0, $0, 0
mult $2, $2
srl $3, $2, 3
TAG211:
addiu $2, $3, 0
mflo $4
mfhi $3
blez $3, TAG212
TAG212:
sll $0, $0, 0
srl $4, $3, 6
lh $4, -324($3)
addiu $2, $4, 6
TAG213:
bne $2, $2, TAG214
addu $3, $2, $2
lui $3, 0
mult $2, $3
TAG214:
addiu $4, $3, 7
mfhi $2
blez $2, TAG215
mtlo $3
TAG215:
sltu $1, $2, $2
multu $1, $2
and $3, $1, $2
bltz $3, TAG216
TAG216:
sb $3, 0($3)
beq $3, $3, TAG217
addi $2, $3, 3
sw $3, 0($3)
TAG217:
ori $4, $2, 15
lbu $1, 0($4)
mfhi $3
bgez $4, TAG218
TAG218:
multu $3, $3
lui $3, 4
bgez $3, TAG219
sll $0, $0, 0
TAG219:
sll $0, $0, 0
slti $2, $3, 10
mflo $2
mthi $2
TAG220:
mfhi $4
slti $2, $4, 12
mflo $3
andi $1, $2, 7
TAG221:
sb $1, 0($1)
sb $1, 0($1)
xor $3, $1, $1
mtlo $3
TAG222:
mfhi $1
bne $3, $1, TAG223
mflo $1
lh $3, 0($1)
TAG223:
sw $3, -256($3)
sw $3, -256($3)
srl $3, $3, 6
lb $1, 0($3)
TAG224:
lui $3, 11
lui $3, 1
sb $1, 0($1)
bgez $1, TAG225
TAG225:
mfhi $2
lh $3, 0($2)
lbu $2, 0($2)
subu $2, $3, $3
TAG226:
sh $2, 0($2)
lw $1, 0($2)
slti $4, $2, 13
sb $2, 0($2)
TAG227:
addu $3, $4, $4
sltiu $3, $4, 10
mfhi $1
sb $3, 0($3)
TAG228:
mtlo $1
mtlo $1
sllv $1, $1, $1
lui $1, 15
TAG229:
divu $1, $1
mthi $1
addu $1, $1, $1
mfhi $4
TAG230:
mfhi $4
mfhi $3
beq $4, $3, TAG231
sll $0, $0, 0
TAG231:
lui $1, 12
sllv $4, $3, $3
mtlo $3
lui $3, 0
TAG232:
lb $4, 0($3)
mflo $4
multu $3, $4
xor $4, $4, $4
TAG233:
multu $4, $4
sw $4, 0($4)
sh $4, 0($4)
mthi $4
TAG234:
bne $4, $4, TAG235
lh $3, 0($4)
bgez $4, TAG235
sb $3, 0($4)
TAG235:
mtlo $3
sw $3, 0($3)
beq $3, $3, TAG236
mtlo $3
TAG236:
lui $1, 4
lui $4, 1
sw $4, 0($3)
beq $1, $4, TAG237
TAG237:
xor $1, $4, $4
div $4, $4
sll $0, $0, 0
lb $4, 0($1)
TAG238:
add $2, $4, $4
mult $2, $4
blez $2, TAG239
lui $1, 15
TAG239:
bgtz $1, TAG240
lui $2, 8
sh $1, 0($2)
or $1, $1, $2
TAG240:
bgez $1, TAG241
lui $3, 9
beq $1, $3, TAG241
sh $1, 0($1)
TAG241:
lui $4, 3
mflo $2
sll $0, $0, 0
bltz $2, TAG242
TAG242:
lui $4, 3
multu $2, $2
bltz $4, TAG243
sll $3, $4, 8
TAG243:
sll $0, $0, 0
sll $0, $0, 0
blez $2, TAG244
mthi $2
TAG244:
sltu $2, $2, $2
addiu $2, $2, 11
lbu $1, 0($2)
lbu $4, 0($2)
TAG245:
slt $2, $4, $4
lb $1, 0($4)
mthi $4
sh $2, 0($4)
TAG246:
mult $1, $1
srl $3, $1, 7
mtlo $1
beq $3, $1, TAG247
TAG247:
sltiu $2, $3, 4
mthi $2
mflo $4
addiu $4, $4, 6
TAG248:
addiu $1, $4, 12
lb $4, 0($1)
mtlo $1
lh $4, 0($1)
TAG249:
divu $4, $4
or $2, $4, $4
lui $4, 2
sra $1, $4, 9
TAG250:
div $1, $1
mflo $2
srav $1, $2, $1
lui $3, 9
TAG251:
addu $3, $3, $3
beq $3, $3, TAG252
sltu $2, $3, $3
bne $2, $2, TAG252
TAG252:
srav $3, $2, $2
mfhi $4
bgtz $2, TAG253
mtlo $4
TAG253:
sh $4, 0($4)
lui $3, 9
lbu $2, 0($4)
mfhi $1
TAG254:
mfhi $3
mtlo $3
bltz $3, TAG255
sltu $4, $1, $1
TAG255:
lbu $3, 0($4)
lui $1, 2
mflo $2
sb $4, 0($4)
TAG256:
mfhi $1
srav $2, $1, $1
mtlo $2
beq $1, $2, TAG257
TAG257:
lhu $3, 0($2)
add $1, $3, $2
bne $3, $3, TAG258
mthi $3
TAG258:
bgtz $1, TAG259
multu $1, $1
bne $1, $1, TAG259
mult $1, $1
TAG259:
lui $2, 1
lhu $3, 0($1)
sltiu $1, $2, 4
bgtz $1, TAG260
TAG260:
mtlo $1
sb $1, 0($1)
bne $1, $1, TAG261
sltiu $2, $1, 4
TAG261:
mtlo $2
mtlo $2
srlv $2, $2, $2
bne $2, $2, TAG262
TAG262:
slti $2, $2, 7
addiu $3, $2, 6
bne $2, $3, TAG263
sb $2, 0($2)
TAG263:
addiu $1, $3, 4
xori $3, $1, 12
div $1, $3
beq $1, $3, TAG264
TAG264:
multu $3, $3
sb $3, 0($3)
bgtz $3, TAG265
mthi $3
TAG265:
lb $4, 0($3)
subu $3, $4, $3
mflo $4
sb $4, 0($4)
TAG266:
beq $4, $4, TAG267
multu $4, $4
mfhi $4
div $4, $4
TAG267:
bgtz $4, TAG268
multu $4, $4
blez $4, TAG268
mthi $4
TAG268:
sb $4, 0($4)
bne $4, $4, TAG269
sra $4, $4, 7
mflo $3
TAG269:
blez $3, TAG270
mthi $3
divu $3, $3
sw $3, -2401($3)
TAG270:
mult $3, $3
lbu $1, -2401($3)
beq $1, $1, TAG271
addiu $4, $3, 5
TAG271:
div $4, $4
mflo $4
mult $4, $4
lui $4, 13
TAG272:
lui $4, 2
nor $3, $4, $4
mflo $4
bltz $4, TAG273
TAG273:
addu $2, $4, $4
sltu $2, $2, $4
lb $2, 0($4)
beq $4, $2, TAG274
TAG274:
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
bne $3, $2, TAG275
TAG275:
div $3, $3
srav $4, $3, $3
sll $0, $0, 0
mflo $3
TAG276:
bgez $3, TAG277
lb $1, 0($3)
or $1, $1, $1
multu $1, $3
TAG277:
multu $1, $1
divu $1, $1
sltu $4, $1, $1
bne $4, $4, TAG278
TAG278:
mtlo $4
mult $4, $4
mthi $4
sb $4, 0($4)
TAG279:
blez $4, TAG280
multu $4, $4
xor $3, $4, $4
add $3, $3, $4
TAG280:
lbu $2, 0($3)
mthi $2
mfhi $2
bne $3, $2, TAG281
TAG281:
subu $4, $2, $2
lui $4, 13
subu $4, $4, $2
mtlo $4
TAG282:
sll $0, $0, 0
bne $4, $4, TAG283
sll $0, $0, 0
mult $4, $4
TAG283:
sll $0, $0, 0
bne $4, $4, TAG284
subu $3, $4, $4
multu $4, $3
TAG284:
mfhi $3
sw $3, 0($3)
lui $1, 12
sltiu $4, $3, 4
TAG285:
lbu $1, 0($4)
mflo $1
sb $1, 0($1)
sllv $1, $1, $1
TAG286:
xor $4, $1, $1
lui $2, 8
xor $1, $2, $2
sll $0, $0, 0
TAG287:
beq $3, $3, TAG288
mflo $1
mthi $1
bgez $3, TAG288
TAG288:
srav $3, $1, $1
sb $1, 0($3)
andi $3, $3, 9
lui $2, 4
TAG289:
lui $2, 11
bne $2, $2, TAG290
mflo $4
multu $4, $2
TAG290:
lbu $1, 0($4)
lui $2, 8
sll $0, $0, 0
beq $4, $4, TAG291
TAG291:
sll $0, $0, 0
bne $2, $2, TAG292
sll $0, $0, 0
sll $0, $0, 0
TAG292:
mfhi $3
mult $3, $3
lhu $3, 0($3)
lw $4, 0($3)
TAG293:
sra $4, $4, 1
mflo $4
sh $4, 0($4)
lhu $3, 0($4)
TAG294:
sw $3, 0($3)
bgtz $3, TAG295
addiu $4, $3, 7
sh $4, 0($3)
TAG295:
bne $4, $4, TAG296
mflo $1
bgez $4, TAG296
slti $3, $4, 8
TAG296:
sb $3, 0($3)
lui $3, 0
sw $3, 0($3)
mult $3, $3
TAG297:
sb $3, 0($3)
bne $3, $3, TAG298
lui $2, 10
multu $3, $2
TAG298:
sll $0, $0, 0
addiu $3, $2, 1
sll $0, $0, 0
bne $2, $3, TAG299
TAG299:
multu $3, $3
sll $0, $0, 0
lh $4, 0($1)
xori $3, $1, 13
TAG300:
xor $2, $3, $3
mthi $2
sltu $2, $3, $3
sltu $3, $3, $2
TAG301:
mult $3, $3
blez $3, TAG302
sb $3, 0($3)
beq $3, $3, TAG302
TAG302:
srlv $3, $3, $3
sb $3, 0($3)
mtlo $3
beq $3, $3, TAG303
TAG303:
lui $2, 10
beq $2, $2, TAG304
sll $0, $0, 0
divu $3, $2
TAG304:
or $2, $2, $2
bgtz $2, TAG305
lui $2, 13
mthi $2
TAG305:
xor $3, $2, $2
sub $4, $3, $3
sll $0, $0, 0
mfhi $2
TAG306:
mflo $4
beq $4, $4, TAG307
sw $4, 0($4)
subu $1, $4, $4
TAG307:
sh $1, 0($1)
bgtz $1, TAG308
lh $3, 0($1)
multu $1, $3
TAG308:
lb $4, 0($3)
sw $3, 0($4)
lh $1, 0($3)
lui $1, 3
TAG309:
mflo $3
bne $1, $3, TAG310
lui $1, 6
mult $1, $3
TAG310:
sll $0, $0, 0
sra $4, $1, 11
mthi $2
lui $4, 7
TAG311:
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG312
sll $0, $0, 0
TAG312:
sll $0, $0, 0
bne $2, $1, TAG313
lui $1, 5
mfhi $2
TAG313:
bne $2, $2, TAG314
mthi $2
sb $2, 0($2)
lbu $4, 0($2)
TAG314:
multu $4, $4
bgtz $4, TAG315
lw $4, 0($4)
mflo $3
TAG315:
srav $1, $3, $3
beq $1, $3, TAG316
srl $4, $3, 6
lui $4, 4
TAG316:
subu $2, $4, $4
mfhi $4
lui $4, 14
mflo $1
TAG317:
mthi $1
bgez $1, TAG318
add $2, $1, $1
mult $1, $1
TAG318:
mflo $4
mthi $2
multu $2, $4
lui $1, 8
TAG319:
div $1, $1
mfhi $1
lui $3, 0
mthi $1
TAG320:
beq $3, $3, TAG321
lui $4, 8
slti $1, $4, 7
multu $4, $1
TAG321:
mfhi $4
mtlo $1
sra $4, $1, 9
lui $2, 11
TAG322:
mflo $2
mfhi $1
lbu $1, 0($2)
addi $2, $2, 10
TAG323:
mfhi $3
mfhi $1
sb $1, 0($3)
mthi $1
TAG324:
xor $4, $1, $1
bne $4, $1, TAG325
addiu $4, $4, 7
bltz $4, TAG325
TAG325:
lb $1, 0($4)
bgtz $4, TAG326
mtlo $4
sh $1, 0($4)
TAG326:
divu $1, $1
sltiu $3, $1, 10
bne $1, $1, TAG327
lui $1, 12
TAG327:
sll $0, $0, 0
srav $4, $4, $4
sll $0, $0, 0
nor $1, $4, $4
TAG328:
mfhi $2
bne $2, $2, TAG329
lui $1, 0
mflo $4
TAG329:
mfhi $2
bgtz $4, TAG330
divu $2, $4
sh $2, 0($2)
TAG330:
mfhi $3
andi $2, $2, 10
beq $3, $2, TAG331
lh $4, 0($2)
TAG331:
mult $4, $4
mflo $1
mthi $4
sub $3, $1, $1
TAG332:
lui $2, 7
multu $3, $3
multu $3, $3
mflo $2
TAG333:
sb $2, 0($2)
srl $3, $2, 12
mfhi $3
lui $4, 5
TAG334:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
TAG335:
lui $3, 12
sra $2, $3, 9
beq $2, $1, TAG336
mflo $2
TAG336:
bne $2, $2, TAG337
multu $2, $2
mult $2, $2
beq $2, $2, TAG337
TAG337:
sub $3, $2, $2
mfhi $1
sw $2, 0($2)
sltiu $2, $2, 0
TAG338:
sb $2, 0($2)
lui $4, 7
sll $0, $0, 0
multu $4, $4
TAG339:
bne $4, $4, TAG340
lui $3, 2
divu $4, $3
lui $4, 7
TAG340:
mflo $2
subu $3, $2, $4
and $1, $3, $2
bgez $2, TAG341
TAG341:
mflo $1
mult $1, $1
mthi $1
lb $1, 0($1)
TAG342:
blez $1, TAG343
mflo $2
sb $1, 0($2)
div $2, $2
TAG343:
beq $2, $2, TAG344
subu $4, $2, $2
beq $2, $2, TAG344
mfhi $1
TAG344:
lui $2, 5
div $2, $2
mthi $2
multu $1, $1
TAG345:
lui $2, 12
addiu $1, $2, 11
sll $0, $0, 0
addu $2, $2, $1
TAG346:
mtlo $2
lui $2, 0
blez $2, TAG347
xor $1, $2, $2
TAG347:
mtlo $1
mthi $1
sh $1, 0($1)
addu $4, $1, $1
TAG348:
lw $4, 0($4)
lh $2, 0($4)
andi $2, $4, 14
sh $4, 0($4)
TAG349:
bgtz $2, TAG350
mult $2, $2
sw $2, 0($2)
lbu $4, 0($2)
TAG350:
bgtz $4, TAG351
mult $4, $4
mfhi $4
beq $4, $4, TAG351
TAG351:
mflo $4
lui $4, 10
sll $0, $0, 0
sll $0, $0, 0
TAG352:
mtlo $4
sll $0, $0, 0
lui $4, 12
sll $0, $0, 0
TAG353:
sll $0, $0, 0
andi $2, $4, 15
srl $2, $4, 13
xori $4, $4, 8
TAG354:
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
sra $3, $2, 15
TAG355:
mult $3, $3
slti $4, $3, 7
sltiu $2, $3, 9
addi $3, $3, 3
TAG356:
xori $1, $3, 8
bgtz $3, TAG357
mfhi $1
blez $1, TAG357
TAG357:
xori $2, $1, 6
mflo $3
lui $1, 13
sra $1, $1, 2
TAG358:
lui $1, 13
sll $0, $0, 0
lui $2, 11
xor $1, $2, $2
TAG359:
mfhi $3
sw $3, 0($3)
mtlo $3
mfhi $2
TAG360:
beq $2, $2, TAG361
mult $2, $2
bne $2, $2, TAG361
lui $2, 15
TAG361:
bne $2, $2, TAG362
sll $2, $2, 4
lui $2, 4
mtlo $2
TAG362:
mtlo $2
divu $2, $2
sll $0, $0, 0
mtlo $2
TAG363:
xori $2, $2, 9
sra $4, $2, 0
bgez $2, TAG364
sll $0, $0, 0
TAG364:
bne $4, $4, TAG365
mflo $1
xori $1, $1, 14
sll $0, $0, 0
TAG365:
addiu $3, $4, 5
beq $3, $3, TAG366
div $4, $4
mult $3, $3
TAG366:
sll $0, $0, 0
bgez $3, TAG367
slt $2, $3, $3
ori $1, $2, 0
TAG367:
mthi $1
bne $1, $1, TAG368
multu $1, $1
sll $0, $0, 0
TAG368:
sll $0, $0, 0
subu $1, $2, $4
srl $4, $1, 10
mthi $4
TAG369:
sll $0, $0, 0
lui $2, 2
div $2, $4
sll $0, $0, 0
TAG370:
sll $0, $0, 0
addiu $2, $3, 15
div $2, $2
mflo $3
TAG371:
lbu $3, 0($3)
mflo $2
sb $2, 0($2)
bltz $2, TAG372
TAG372:
mtlo $2
sb $2, 0($2)
srlv $3, $2, $2
mult $3, $3
TAG373:
sb $3, 0($3)
addi $3, $3, 5
mtlo $3
bgez $3, TAG374
TAG374:
mthi $3
mfhi $4
mfhi $2
lui $1, 11
TAG375:
sll $0, $0, 0
and $4, $1, $1
mflo $3
beq $3, $1, TAG376
TAG376:
multu $3, $3
xor $1, $3, $3
mfhi $3
bne $3, $3, TAG377
TAG377:
mthi $3
add $3, $3, $3
lbu $2, 0($3)
bne $3, $2, TAG378
TAG378:
mfhi $3
multu $3, $3
lui $4, 3
div $4, $4
TAG379:
mtlo $4
bltz $4, TAG380
slti $4, $4, 13
lh $4, 0($4)
TAG380:
sll $0, $0, 0
beq $4, $4, TAG381
sb $3, 0($3)
mfhi $2
TAG381:
xori $1, $2, 6
sb $1, 0($1)
add $4, $2, $2
bltz $2, TAG382
TAG382:
lbu $2, 0($4)
srl $1, $4, 8
mthi $2
mfhi $3
TAG383:
lui $2, 15
mult $3, $2
sllv $1, $3, $3
sw $2, 0($3)
TAG384:
mflo $1
sll $2, $1, 0
blez $2, TAG385
mfhi $3
TAG385:
addi $3, $3, 7
lb $1, 0($3)
mflo $2
sll $4, $3, 3
TAG386:
mflo $4
sb $4, 0($4)
sw $4, 0($4)
lui $4, 2
TAG387:
sll $0, $0, 0
mthi $1
lbu $3, 0($1)
addiu $4, $3, 6
TAG388:
mfhi $1
bgez $4, TAG389
addu $1, $4, $4
sw $4, 0($4)
TAG389:
mflo $4
addi $1, $4, 12
lhu $2, 0($1)
mult $1, $2
TAG390:
blez $2, TAG391
lui $4, 9
sll $0, $0, 0
mfhi $4
TAG391:
ori $4, $4, 10
beq $4, $4, TAG392
sh $4, 0($4)
sh $4, 0($4)
TAG392:
mult $4, $4
xor $1, $4, $4
lh $2, 0($1)
mflo $3
TAG393:
lui $4, 7
srav $1, $3, $3
slt $4, $1, $4
sb $4, 0($1)
TAG394:
sltu $3, $4, $4
mtlo $3
lui $1, 13
mfhi $4
TAG395:
lui $2, 12
nor $4, $4, $2
sll $0, $0, 0
sll $2, $4, 6
TAG396:
lui $2, 10
mtlo $2
lui $2, 8
bne $2, $2, TAG397
TAG397:
sll $0, $0, 0
sllv $4, $1, $1
mfhi $2
bgez $2, TAG398
TAG398:
multu $2, $2
mflo $4
xor $3, $4, $4
beq $2, $3, TAG399
TAG399:
xor $2, $3, $3
lhu $3, 0($2)
multu $2, $3
blez $2, TAG400
TAG400:
mtlo $3
nor $3, $3, $3
addu $4, $3, $3
multu $3, $4
TAG401:
div $4, $4
blez $4, TAG402
lb $1, 2($4)
lui $3, 4
TAG402:
mthi $3
mult $3, $3
subu $3, $3, $3
mthi $3
TAG403:
beq $3, $3, TAG404
mfhi $4
mthi $3
sll $1, $4, 15
TAG404:
srav $3, $1, $1
multu $3, $1
sh $1, 0($3)
bltz $1, TAG405
TAG405:
multu $3, $3
lui $4, 13
srlv $4, $3, $4
sw $4, 0($3)
TAG406:
sltu $4, $4, $4
mthi $4
beq $4, $4, TAG407
mfhi $3
TAG407:
multu $3, $3
lbu $1, 0($3)
mthi $3
andi $4, $1, 9
TAG408:
mthi $4
lui $1, 2
blez $1, TAG409
mthi $4
TAG409:
div $1, $1
subu $3, $1, $1
subu $3, $3, $1
mfhi $4
TAG410:
mult $4, $4
mflo $2
sltiu $1, $2, 8
mtlo $4
TAG411:
srlv $3, $1, $1
lbu $2, 0($3)
xori $3, $2, 14
mflo $4
TAG412:
beq $4, $4, TAG413
lbu $3, 0($4)
beq $3, $3, TAG413
sh $4, 0($3)
TAG413:
bgtz $3, TAG414
mtlo $3
mfhi $2
lui $3, 15
TAG414:
sll $0, $0, 0
mtlo $3
mtlo $3
mflo $3
TAG415:
lui $1, 10
mtlo $1
mtlo $1
div $3, $1
TAG416:
lui $4, 1
xor $1, $4, $1
xor $2, $4, $4
lui $2, 15
TAG417:
bgtz $2, TAG418
lui $1, 4
multu $2, $1
lui $2, 6
TAG418:
bne $2, $2, TAG419
mthi $2
lui $2, 5
mflo $3
TAG419:
sltiu $1, $3, 4
divu $3, $1
mfhi $1
beq $1, $3, TAG420
TAG420:
add $1, $1, $1
mfhi $2
addi $3, $2, 13
ori $1, $1, 12
TAG421:
srl $3, $1, 8
srlv $3, $3, $1
mtlo $1
bne $3, $3, TAG422
TAG422:
sra $1, $3, 15
mult $3, $1
blez $3, TAG423
lui $4, 13
TAG423:
mflo $4
lui $3, 5
sll $0, $0, 0
multu $4, $4
TAG424:
bgez $3, TAG425
sll $0, $0, 0
mflo $1
nor $2, $3, $1
TAG425:
lw $4, 0($2)
bltz $4, TAG426
addiu $4, $4, 3
lui $1, 1
TAG426:
mult $1, $1
addiu $1, $1, 15
div $1, $1
subu $2, $1, $1
TAG427:
lhu $3, 0($2)
add $1, $3, $3
sub $2, $1, $1
lui $2, 6
TAG428:
beq $2, $2, TAG429
sll $0, $0, 0
beq $4, $4, TAG429
srl $1, $4, 0
TAG429:
mult $1, $1
bne $1, $1, TAG430
lui $3, 8
mult $3, $3
TAG430:
div $3, $3
mfhi $1
andi $1, $3, 15
lui $3, 3
TAG431:
addu $2, $3, $3
multu $3, $3
mtlo $2
lui $2, 9
TAG432:
sltiu $1, $2, 7
lb $3, 0($1)
mthi $2
bne $3, $1, TAG433
TAG433:
multu $3, $3
multu $3, $3
lui $2, 0
sltiu $2, $3, 8
TAG434:
mfhi $2
mthi $2
sw $2, 0($2)
bgtz $2, TAG435
TAG435:
mthi $2
sh $2, 0($2)
mfhi $3
mflo $4
TAG436:
lw $3, 0($4)
srav $2, $3, $3
lui $1, 4
mfhi $4
TAG437:
blez $4, TAG438
multu $4, $4
sltiu $2, $4, 2
blez $4, TAG438
TAG438:
sw $2, 0($2)
bltz $2, TAG439
mtlo $2
bgez $2, TAG439
TAG439:
add $3, $2, $2
beq $2, $3, TAG440
sra $3, $2, 11
beq $3, $3, TAG440
TAG440:
mult $3, $3
lhu $1, 0($3)
mflo $1
blez $1, TAG441
TAG441:
mfhi $4
mfhi $2
mult $1, $1
mflo $2
TAG442:
or $4, $2, $2
lb $3, 0($4)
sub $2, $2, $3
bne $3, $3, TAG443
TAG443:
lui $4, 8
mfhi $4
sh $4, 0($2)
bne $2, $2, TAG444
TAG444:
mflo $4
mfhi $2
mfhi $4
sh $4, 0($2)
TAG445:
mult $4, $4
sltu $3, $4, $4
bgtz $4, TAG446
lb $4, 0($4)
TAG446:
sb $4, 0($4)
sllv $3, $4, $4
mfhi $1
lui $1, 13
TAG447:
srl $3, $1, 1
xori $1, $1, 0
beq $1, $1, TAG448
mflo $1
TAG448:
lhu $1, 0($1)
bgtz $1, TAG449
srl $1, $1, 12
nor $4, $1, $1
TAG449:
mflo $1
slt $1, $1, $4
lhu $1, 1($4)
bltz $1, TAG450
TAG450:
sb $1, 0($1)
ori $3, $1, 13
lb $3, 0($3)
lui $4, 5
TAG451:
beq $4, $4, TAG452
slt $2, $4, $4
sllv $2, $4, $4
mfhi $1
TAG452:
mfhi $3
lui $3, 14
mflo $1
lhu $4, 0($1)
TAG453:
bne $4, $4, TAG454
multu $4, $4
sh $4, 0($4)
lw $2, 0($4)
TAG454:
sh $2, 0($2)
mflo $1
bne $2, $1, TAG455
xor $4, $2, $2
TAG455:
bltz $4, TAG456
lb $1, 0($4)
add $2, $4, $1
mthi $2
TAG456:
beq $2, $2, TAG457
sltu $2, $2, $2
mflo $1
xor $4, $2, $2
TAG457:
beq $4, $4, TAG458
lui $1, 9
mfhi $2
mtlo $4
TAG458:
addi $2, $2, 13
mflo $3
bne $3, $2, TAG459
sb $3, 0($2)
TAG459:
blez $3, TAG460
lui $3, 3
mult $3, $3
mflo $3
TAG460:
mfhi $2
multu $2, $2
sll $0, $0, 0
bgtz $2, TAG461
TAG461:
sw $4, 0($4)
lb $3, 0($4)
or $4, $4, $4
mfhi $2
TAG462:
multu $2, $2
bgtz $2, TAG463
multu $2, $2
lui $1, 15
TAG463:
div $1, $1
mfhi $1
addiu $3, $1, 2
beq $1, $1, TAG464
TAG464:
xor $3, $3, $3
sh $3, 0($3)
mfhi $1
mflo $1
TAG465:
lbu $2, 0($1)
lui $3, 14
multu $3, $2
mfhi $1
TAG466:
mflo $1
sw $1, 0($1)
bltz $1, TAG467
slti $4, $1, 8
TAG467:
lui $2, 8
mfhi $4
srav $1, $4, $2
mfhi $3
TAG468:
bgez $3, TAG469
mthi $3
lbu $3, 0($3)
lui $1, 7
TAG469:
lb $2, 0($1)
beq $2, $1, TAG470
mtlo $1
srlv $3, $1, $2
TAG470:
beq $3, $3, TAG471
lbu $4, 0($3)
lbu $2, 0($3)
bgez $3, TAG471
TAG471:
lui $4, 6
divu $4, $4
sh $2, 0($2)
sh $4, 0($2)
TAG472:
mthi $4
beq $4, $4, TAG473
mthi $4
lui $2, 11
TAG473:
sb $2, 0($2)
bltz $2, TAG474
lw $2, 0($2)
beq $2, $2, TAG474
TAG474:
mfhi $4
mthi $4
multu $4, $2
bne $2, $4, TAG475
TAG475:
sll $0, $0, 0
lui $3, 0
mtlo $4
mtlo $4
TAG476:
bltz $3, TAG477
srlv $3, $3, $3
sw $3, 0($3)
lhu $1, 0($3)
TAG477:
multu $1, $1
sra $1, $1, 10
lhu $2, 0($1)
lui $4, 15
TAG478:
mfhi $2
mtlo $4
lui $2, 4
divu $2, $2
TAG479:
mfhi $3
divu $2, $2
multu $3, $3
sub $2, $2, $3
TAG480:
ori $1, $2, 7
lui $3, 8
mthi $2
bgtz $3, TAG481
TAG481:
slt $1, $3, $3
and $1, $1, $3
bne $1, $1, TAG482
andi $2, $1, 2
TAG482:
beq $2, $2, TAG483
sltiu $2, $2, 7
lbu $2, 0($2)
div $2, $2
TAG483:
lui $3, 15
sb $3, 0($2)
div $2, $2
mtlo $3
TAG484:
lui $2, 6
bltz $3, TAG485
sll $0, $0, 0
lui $4, 8
TAG485:
bgez $4, TAG486
sll $0, $0, 0
mthi $2
bne $4, $4, TAG486
TAG486:
sll $0, $0, 0
beq $4, $4, TAG487
lui $3, 6
lhu $4, 0($2)
TAG487:
mthi $4
beq $4, $4, TAG488
multu $4, $4
mflo $2
TAG488:
beq $2, $2, TAG489
addu $3, $2, $2
lhu $2, 0($2)
mflo $3
TAG489:
sll $0, $0, 0
bgez $3, TAG490
lui $1, 12
lbu $2, 0($3)
TAG490:
mthi $2
bltz $2, TAG491
mult $2, $2
multu $2, $2
TAG491:
andi $1, $2, 3
lb $3, 0($1)
or $3, $2, $3
lb $4, 0($1)
TAG492:
mtlo $4
bne $4, $4, TAG493
srav $3, $4, $4
addi $3, $4, 5
TAG493:
sltiu $2, $3, 13
div $2, $2
lb $3, 0($2)
mult $2, $2
TAG494:
bne $3, $3, TAG495
mthi $3
mthi $3
mflo $1
TAG495:
lbu $4, 0($1)
bltz $1, TAG496
multu $1, $4
sb $4, 0($1)
TAG496:
mthi $4
sh $4, 0($4)
lui $4, 3
mult $4, $4
TAG497:
srav $3, $4, $4
bgtz $4, TAG498
sll $0, $0, 0
addiu $4, $3, 6
TAG498:
lui $4, 1
lui $4, 0
nor $3, $4, $4
mtlo $4
TAG499:
mflo $2
lui $4, 11
lui $3, 5
bgez $3, TAG500
TAG500:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
xori $2, $1, 1
TAG501:
mflo $3
beq $3, $3, TAG502
lui $2, 11
mflo $1
TAG502:
lh $3, 0($1)
mthi $3
slti $3, $1, 6
lb $1, 0($3)
TAG503:
bgtz $1, TAG504
lbu $1, 0($1)
bgtz $1, TAG504
sll $4, $1, 12
TAG504:
mfhi $3
bltz $3, TAG505
sw $4, 0($4)
or $1, $3, $4
TAG505:
lbu $3, 0($1)
mult $1, $1
bne $3, $3, TAG506
lui $4, 10
TAG506:
bne $4, $4, TAG507
mtlo $4
sll $0, $0, 0
lui $1, 9
TAG507:
addu $2, $1, $1
bltz $1, TAG508
lui $2, 9
ori $3, $2, 8
TAG508:
lui $4, 3
mtlo $3
bltz $3, TAG509
sll $0, $0, 0
TAG509:
mtlo $1
lui $1, 9
sll $0, $0, 0
sll $0, $0, 0
TAG510:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG511
sll $0, $0, 0
TAG511:
bne $1, $1, TAG512
mfhi $3
lbu $2, 0($3)
lbu $4, 0($3)
TAG512:
bgtz $4, TAG513
mtlo $4
blez $4, TAG513
slti $1, $4, 15
TAG513:
lui $2, 10
mtlo $2
blez $1, TAG514
sll $0, $0, 0
TAG514:
mthi $2
lui $1, 0
mtlo $1
bne $2, $1, TAG515
TAG515:
lhu $1, 0($1)
lw $1, 0($1)
mthi $1
lh $1, 0($1)
TAG516:
srlv $1, $1, $1
ori $2, $1, 1
lbu $2, 0($1)
multu $2, $2
TAG517:
sw $2, 0($2)
lw $1, 0($2)
and $4, $2, $2
mult $2, $4
TAG518:
mfhi $4
lui $1, 11
bgez $4, TAG519
lui $4, 7
TAG519:
andi $4, $4, 14
blez $4, TAG520
lui $4, 1
multu $4, $4
TAG520:
beq $4, $4, TAG521
mflo $2
div $4, $2
mthi $2
TAG521:
bgez $2, TAG522
mult $2, $2
bgtz $2, TAG522
sub $3, $2, $2
TAG522:
lh $2, 0($3)
sra $1, $3, 8
addi $4, $1, 8
lui $4, 10
TAG523:
beq $4, $4, TAG524
sll $0, $0, 0
lhu $2, 0($4)
lb $4, 0($2)
TAG524:
bgtz $4, TAG525
sll $0, $0, 0
mfhi $4
lbu $3, 0($4)
TAG525:
beq $3, $3, TAG526
multu $3, $3
sltiu $3, $3, 10
add $1, $3, $3
TAG526:
mfhi $4
addi $4, $4, 2
lui $3, 0
slt $3, $1, $1
TAG527:
addiu $1, $3, 7
mflo $1
multu $1, $1
bltz $1, TAG528
TAG528:
sh $1, 0($1)
sw $1, 0($1)
sw $1, 0($1)
mthi $1
TAG529:
mtlo $1
lb $4, 0($1)
sb $1, 0($4)
mtlo $1
TAG530:
bgtz $4, TAG531
addu $3, $4, $4
bne $3, $3, TAG531
mtlo $3
TAG531:
beq $3, $3, TAG532
sllv $2, $3, $3
andi $4, $2, 9
xor $1, $3, $2
TAG532:
addu $3, $1, $1
mthi $1
lbu $4, 0($3)
beq $3, $3, TAG533
TAG533:
mfhi $4
mthi $4
sb $4, 0($4)
blez $4, TAG534
TAG534:
srav $3, $4, $4
sb $4, 0($4)
lw $3, 0($4)
mthi $3
TAG535:
bltz $3, TAG536
sh $3, 0($3)
lbu $3, 0($3)
sb $3, 0($3)
TAG536:
mflo $3
multu $3, $3
bgez $3, TAG537
sw $3, 0($3)
TAG537:
bgez $3, TAG538
lw $4, 0($3)
blez $3, TAG538
mthi $3
TAG538:
slt $4, $4, $4
bgtz $4, TAG539
lui $4, 7
divu $4, $4
TAG539:
lui $3, 2
bgtz $4, TAG540
xori $2, $3, 10
lbu $4, 0($3)
TAG540:
bne $4, $4, TAG541
mtlo $4
divu $4, $4
mtlo $4
TAG541:
lui $1, 4
mtlo $4
and $4, $4, $4
xor $4, $4, $4
TAG542:
bgez $4, TAG543
addi $1, $4, 10
lui $4, 7
lbu $2, 0($4)
TAG543:
lui $3, 1
bltz $2, TAG544
sll $0, $0, 0
mthi $3
TAG544:
bgez $3, TAG545
sll $0, $0, 0
mthi $3
lb $1, 0($3)
TAG545:
multu $1, $1
lui $1, 3
lui $1, 1
bne $1, $1, TAG546
TAG546:
mflo $2
mthi $1
mflo $2
mfhi $2
TAG547:
sll $0, $0, 0
subu $2, $2, $2
bltz $2, TAG548
lui $3, 4
TAG548:
sltiu $1, $3, 2
mtlo $1
bgez $1, TAG549
sll $0, $0, 0
TAG549:
mthi $1
lhu $1, 0($1)
sh $1, 0($1)
mfhi $3
TAG550:
mult $3, $3
beq $3, $3, TAG551
addiu $1, $3, 0
lh $3, 0($1)
TAG551:
sw $3, 0($3)
addu $1, $3, $3
srav $1, $1, $1
lw $4, 0($3)
TAG552:
ori $2, $4, 3
sh $2, 0($4)
lbu $4, 0($2)
lui $1, 1
TAG553:
mfhi $3
addiu $1, $1, 1
mtlo $1
addiu $4, $3, 6
TAG554:
ori $2, $4, 13
subu $4, $4, $2
bne $4, $4, TAG555
lb $4, 0($2)
TAG555:
mflo $2
slti $1, $4, 13
sb $4, 0($4)
mtlo $4
TAG556:
lb $3, 0($1)
srl $1, $1, 2
bgtz $1, TAG557
and $3, $1, $3
TAG557:
or $1, $3, $3
ori $4, $1, 7
subu $3, $3, $4
sb $1, 0($1)
TAG558:
lui $1, 1
lui $4, 11
bne $4, $3, TAG559
mthi $4
TAG559:
bne $4, $4, TAG560
mfhi $2
mthi $4
mtlo $4
TAG560:
addiu $4, $2, 15
slt $4, $2, $2
slt $2, $4, $2
sw $4, 0($4)
TAG561:
sra $4, $2, 8
mflo $3
nor $1, $4, $2
multu $3, $1
TAG562:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
beq $2, $1, TAG563
TAG563:
div $2, $2
bgtz $2, TAG564
slti $3, $2, 6
slti $1, $3, 10
TAG564:
lui $2, 1
sb $1, 0($1)
mfhi $1
bgez $1, TAG565
TAG565:
sw $1, 0($1)
mult $1, $1
mfhi $2
lui $2, 1
TAG566:
addiu $3, $2, 6
beq $2, $2, TAG567
sll $0, $0, 0
divu $3, $2
TAG567:
mthi $2
lui $4, 5
bgez $4, TAG568
slti $4, $2, 12
TAG568:
lb $3, 0($4)
addiu $2, $4, 11
bne $4, $2, TAG569
addi $1, $4, 8
TAG569:
xori $2, $1, 5
sb $1, 0($2)
bne $2, $2, TAG570
lw $3, 0($1)
TAG570:
sll $0, $0, 0
bltz $1, TAG571
lui $2, 3
lh $3, 0($1)
TAG571:
sb $3, 0($3)
mfhi $2
mfhi $2
mtlo $2
TAG572:
andi $2, $2, 4
mthi $2
mfhi $2
beq $2, $2, TAG573
TAG573:
sw $2, 0($2)
bne $2, $2, TAG574
mtlo $2
bgez $2, TAG574
TAG574:
lh $4, 0($2)
slt $1, $2, $2
lhu $1, 0($4)
sh $2, 0($1)
TAG575:
slti $3, $1, 4
sltiu $1, $3, 7
bne $1, $1, TAG576
mthi $1
TAG576:
lb $2, 0($1)
sh $2, 0($2)
slt $1, $2, $2
nor $2, $1, $1
TAG577:
bgtz $2, TAG578
sb $2, 1($2)
beq $2, $2, TAG578
srav $2, $2, $2
TAG578:
nor $4, $2, $2
lui $1, 14
sll $0, $0, 0
lui $1, 12
TAG579:
sll $0, $0, 0
sra $1, $1, 8
blez $4, TAG580
lbu $1, -3072($1)
TAG580:
lui $2, 9
sll $0, $0, 0
mult $1, $1
mthi $1
TAG581:
bne $1, $1, TAG582
lhu $3, -255($1)
addu $4, $1, $1
bgtz $4, TAG582
TAG582:
mtlo $4
mthi $4
sw $4, -510($4)
lb $3, -510($4)
TAG583:
sll $0, $0, 0
ori $2, $3, 14
multu $2, $2
lui $1, 8
TAG584:
bgtz $1, TAG585
mfhi $2
lui $3, 13
blez $3, TAG585
TAG585:
nor $3, $3, $3
mthi $3
lui $2, 8
mflo $4
TAG586:
lui $1, 9
bltz $1, TAG587
div $1, $1
sll $0, $0, 0
TAG587:
sltiu $1, $1, 0
mtlo $1
lh $3, 0($1)
bgtz $1, TAG588
TAG588:
mult $3, $3
bne $3, $3, TAG589
lui $3, 1
lui $3, 10
TAG589:
bgez $3, TAG590
sll $0, $0, 0
sw $2, 0($2)
lui $1, 7
TAG590:
slt $3, $1, $1
mthi $1
mtlo $1
mult $3, $3
TAG591:
bgez $3, TAG592
subu $2, $3, $3
lb $3, 0($2)
mthi $3
TAG592:
bne $3, $3, TAG593
sh $3, 0($3)
mthi $3
slt $4, $3, $3
TAG593:
mfhi $1
lhu $3, 0($4)
sb $1, 0($1)
sh $4, 0($4)
TAG594:
sw $3, 0($3)
mthi $3
lw $2, 0($3)
bne $2, $2, TAG595
TAG595:
lui $4, 11
or $2, $4, $2
lui $3, 10
nor $1, $3, $3
TAG596:
div $1, $1
sll $3, $1, 5
sll $0, $0, 0
addu $4, $3, $3
TAG597:
mflo $4
multu $4, $4
lui $2, 8
lbu $4, 0($4)
TAG598:
addu $1, $4, $4
lbu $4, 0($4)
lbu $3, 0($4)
mflo $3
TAG599:
addu $2, $3, $3
beq $2, $2, TAG600
lui $2, 12
bne $2, $2, TAG600
TAG600:
sltu $1, $2, $2
lui $2, 8
div $2, $2
beq $2, $2, TAG601
TAG601:
lui $1, 7
mflo $3
bne $3, $3, TAG602
sll $0, $0, 0
TAG602:
subu $2, $2, $2
sw $2, 0($2)
mflo $2
lbu $1, 0($2)
TAG603:
bne $1, $1, TAG604
andi $3, $1, 6
mfhi $3
mthi $3
TAG604:
subu $1, $3, $3
bgtz $3, TAG605
mtlo $1
mthi $3
TAG605:
mthi $1
mult $1, $1
sw $1, 0($1)
srlv $2, $1, $1
TAG606:
lui $3, 12
bgtz $3, TAG607
srlv $1, $3, $3
multu $1, $3
TAG607:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
mthi $1
TAG608:
mthi $1
mthi $1
sll $0, $0, 0
sllv $4, $1, $1
TAG609:
bne $4, $4, TAG610
xor $3, $4, $4
bne $3, $4, TAG610
slti $3, $3, 6
TAG610:
srlv $2, $3, $3
bltz $2, TAG611
multu $3, $2
bgez $3, TAG611
TAG611:
slti $4, $2, 12
lb $3, 0($4)
mult $4, $4
mflo $3
TAG612:
lui $4, 15
mthi $3
mthi $4
divu $4, $3
TAG613:
sra $3, $4, 7
div $4, $3
sll $0, $0, 0
bne $3, $3, TAG614
TAG614:
sll $0, $0, 0
mfhi $3
lui $1, 9
mtlo $3
TAG615:
sll $0, $0, 0
lui $3, 15
xor $3, $4, $3
mfhi $1
TAG616:
nor $3, $1, $1
ori $3, $3, 11
blez $3, TAG617
lhu $4, 1($3)
TAG617:
lui $2, 0
lb $1, 0($2)
mtlo $4
lui $4, 3
TAG618:
beq $4, $4, TAG619
multu $4, $4
srl $2, $4, 11
mfhi $4
TAG619:
beq $4, $4, TAG620
mfhi $3
addu $3, $3, $4
mthi $3
TAG620:
sb $3, 0($3)
mthi $3
lbu $1, 0($3)
slti $1, $3, 10
TAG621:
sllv $1, $1, $1
bltz $1, TAG622
mtlo $1
addiu $1, $1, 7
TAG622:
blez $1, TAG623
mflo $1
bne $1, $1, TAG623
sllv $2, $1, $1
TAG623:
mthi $2
addiu $3, $2, 15
lui $1, 8
ori $4, $1, 14
TAG624:
sll $0, $0, 0
mflo $2
xori $3, $4, 12
mfhi $3
TAG625:
bgez $3, TAG626
lw $1, 0($3)
sb $1, 0($3)
divu $1, $1
TAG626:
beq $1, $1, TAG627
mfhi $2
sh $2, 0($1)
mtlo $2
TAG627:
mult $2, $2
sh $2, 0($2)
beq $2, $2, TAG628
div $2, $2
TAG628:
bne $2, $2, TAG629
and $4, $2, $2
beq $4, $4, TAG629
xor $1, $2, $4
TAG629:
lhu $3, 0($1)
mfhi $3
beq $3, $3, TAG630
or $4, $1, $3
TAG630:
bgtz $4, TAG631
sh $4, 0($4)
multu $4, $4
lui $2, 12
TAG631:
bne $2, $2, TAG632
srlv $4, $2, $2
bgtz $2, TAG632
sltiu $4, $4, 4
TAG632:
multu $4, $4
mult $4, $4
mthi $4
xor $1, $4, $4
TAG633:
sw $1, 0($1)
srav $3, $1, $1
sllv $4, $3, $3
sh $1, 0($4)
TAG634:
sltiu $1, $4, 3
bltz $1, TAG635
ori $1, $1, 11
mtlo $1
TAG635:
bgez $1, TAG636
lbu $2, 0($1)
lb $1, 0($2)
bgtz $1, TAG636
TAG636:
mtlo $1
bne $1, $1, TAG637
mthi $1
and $1, $1, $1
TAG637:
lb $3, 0($1)
lui $3, 9
lb $1, 0($1)
or $4, $3, $1
TAG638:
slti $4, $4, 9
lw $1, 0($4)
mtlo $1
sw $4, 0($4)
TAG639:
lh $3, 0($1)
bgtz $1, TAG640
lbu $3, 0($1)
mflo $4
TAG640:
mult $4, $4
beq $4, $4, TAG641
mult $4, $4
sh $4, 0($4)
TAG641:
sltiu $2, $4, 6
sll $2, $2, 14
lbu $2, -16384($2)
mfhi $1
TAG642:
bgez $1, TAG643
lui $3, 7
sb $3, 0($3)
bne $3, $3, TAG643
TAG643:
sll $0, $0, 0
divu $3, $3
mflo $2
lui $1, 1
TAG644:
sltiu $1, $1, 5
nor $2, $1, $1
sllv $4, $2, $1
mtlo $4
TAG645:
lui $1, 6
lui $1, 8
beq $1, $1, TAG646
divu $4, $1
TAG646:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $3, TAG647
mfhi $1
TAG647:
mult $1, $1
sll $0, $0, 0
ori $4, $1, 12
bltz $1, TAG648
TAG648:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
blez $4, TAG649
TAG649:
sll $0, $0, 0
sll $0, $0, 0
and $3, $4, $4
bgez $4, TAG650
TAG650:
sll $2, $3, 13
lb $3, -8192($2)
bne $2, $3, TAG651
mthi $3
TAG651:
subu $4, $3, $3
sb $4, 0($4)
mflo $3
lui $2, 9
TAG652:
sll $0, $0, 0
mflo $4
sltiu $1, $1, 12
sw $4, 0($1)
TAG653:
bgtz $1, TAG654
multu $1, $1
and $1, $1, $1
lui $3, 0
TAG654:
mult $3, $3
sw $3, 0($3)
lui $1, 1
sll $0, $0, 0
TAG655:
mflo $3
multu $3, $3
mfhi $2
mtlo $3
TAG656:
multu $2, $2
mult $2, $2
lh $1, 0($2)
srlv $1, $2, $2
TAG657:
mtlo $1
sw $1, 0($1)
or $2, $1, $1
sh $2, 0($1)
TAG658:
mult $2, $2
mthi $2
mthi $2
xori $3, $2, 7
TAG659:
mtlo $3
lbu $3, 0($3)
bgtz $3, TAG660
lb $2, 0($3)
TAG660:
sb $2, 0($2)
lui $1, 7
bltz $1, TAG661
div $2, $2
TAG661:
sll $0, $0, 0
bgez $1, TAG662
mthi $1
srav $4, $1, $1
TAG662:
sll $0, $0, 0
addiu $3, $4, 10
mtlo $4
mthi $3
TAG663:
addiu $2, $3, 3
divu $3, $3
addiu $4, $2, 6
srl $3, $2, 11
TAG664:
srl $2, $3, 9
beq $2, $2, TAG665
lw $1, -4095($2)
lh $3, 0($1)
TAG665:
slti $1, $3, 6
mthi $3
mthi $3
bne $3, $3, TAG666
TAG666:
lui $2, 15
slti $2, $1, 3
slti $4, $2, 15
mtlo $4
TAG667:
divu $4, $4
sb $4, 0($4)
slt $1, $4, $4
lui $4, 4
TAG668:
or $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG669:
sllv $3, $2, $2
lui $4, 4
mflo $4
mult $4, $2
TAG670:
or $2, $4, $4
bne $2, $2, TAG671
slt $1, $4, $2
mflo $4
TAG671:
bne $4, $4, TAG672
mfhi $4
sw $4, 0($4)
lui $1, 10
TAG672:
sll $0, $0, 0
mult $1, $1
lui $1, 13
divu $1, $1
TAG673:
addiu $4, $1, 14
addiu $3, $4, 1
mflo $4
bgez $4, TAG674
TAG674:
addiu $3, $4, 14
sb $4, 0($4)
sb $4, 0($4)
lb $4, 0($3)
TAG675:
mflo $2
lb $3, 0($4)
bne $4, $4, TAG676
mult $4, $3
TAG676:
lbu $4, 0($3)
mtlo $3
mfhi $4
sltu $1, $3, $4
TAG677:
lui $1, 4
srl $3, $1, 6
mtlo $1
sll $0, $0, 0
TAG678:
bltz $3, TAG679
lb $3, -4096($3)
lbu $3, 0($3)
lb $3, 0($3)
TAG679:
lbu $1, 0($3)
mtlo $1
srl $3, $1, 6
sb $3, 0($1)
TAG680:
bne $3, $3, TAG681
multu $3, $3
sub $1, $3, $3
beq $1, $3, TAG681
TAG681:
mfhi $1
mflo $3
sll $3, $3, 5
bgtz $3, TAG682
TAG682:
multu $3, $3
bne $3, $3, TAG683
lui $4, 0
lhu $3, 0($4)
TAG683:
sh $3, -256($3)
multu $3, $3
bne $3, $3, TAG684
lw $3, -256($3)
TAG684:
or $1, $3, $3
mflo $3
lui $3, 12
sll $0, $0, 0
TAG685:
lui $3, 9
div $3, $3
bltz $3, TAG686
sll $0, $0, 0
TAG686:
beq $3, $3, TAG687
lui $1, 13
and $2, $1, $3
ori $4, $3, 13
TAG687:
mult $4, $4
lw $4, 0($4)
mtlo $4
mfhi $1
TAG688:
sll $3, $1, 15
bgtz $1, TAG689
mthi $1
multu $1, $3
TAG689:
lui $2, 14
mflo $4
lui $3, 15
ori $2, $3, 2
TAG690:
lui $2, 5
mtlo $2
mtlo $2
mthi $2
TAG691:
sll $1, $2, 3
mtlo $2
beq $1, $2, TAG692
lui $3, 4
TAG692:
mtlo $3
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG693:
sll $0, $0, 0
bltz $1, TAG694
mult $1, $3
sll $0, $0, 0
TAG694:
bne $1, $1, TAG695
mthi $1
mthi $1
sll $0, $0, 0
TAG695:
mult $1, $1
subu $1, $1, $1
lbu $1, 0($1)
bne $1, $1, TAG696
TAG696:
lui $2, 2
srav $4, $2, $2
mfhi $3
bne $2, $3, TAG697
TAG697:
srlv $2, $3, $3
addu $3, $3, $2
srl $3, $2, 2
xori $4, $3, 1
TAG698:
multu $4, $4
lhu $3, -401($4)
bgtz $3, TAG699
lui $3, 0
TAG699:
lui $4, 3
bne $4, $4, TAG700
sll $0, $0, 0
mtlo $3
TAG700:
mflo $2
lui $3, 1
sll $0, $0, 0
nor $2, $2, $2
TAG701:
sll $0, $0, 0
lui $3, 4
and $1, $2, $2
ori $4, $3, 0
TAG702:
mthi $4
bgtz $4, TAG703
sll $0, $0, 0
lui $2, 12
TAG703:
blez $2, TAG704
multu $2, $2
bne $2, $2, TAG704
sw $2, 0($2)
TAG704:
mthi $2
div $2, $2
subu $3, $2, $2
mtlo $3
TAG705:
slti $1, $3, 9
srl $4, $1, 3
bgtz $4, TAG706
mflo $1
TAG706:
lui $4, 3
ori $1, $4, 11
mthi $1
mfhi $2
TAG707:
sll $0, $0, 0
sll $0, $0, 0
xor $1, $2, $1
bgtz $2, TAG708
TAG708:
lui $3, 7
sll $0, $0, 0
mflo $1
mflo $1
TAG709:
lhu $2, 0($1)
subu $4, $1, $2
mthi $1
sltiu $2, $4, 4
TAG710:
mtlo $2
lh $4, 0($2)
lhu $2, -256($4)
xori $1, $2, 10
TAG711:
ori $4, $1, 8
or $1, $4, $4
andi $4, $1, 7
mflo $1
TAG712:
lbu $3, 0($1)
lb $1, 0($3)
multu $3, $1
sh $3, 0($3)
TAG713:
bgtz $1, TAG714
mfhi $2
sh $1, 0($2)
multu $2, $1
TAG714:
multu $2, $2
bgtz $2, TAG715
lb $1, 0($2)
lui $2, 9
TAG715:
sll $0, $0, 0
srl $3, $2, 12
blez $2, TAG716
xor $3, $3, $2
TAG716:
mfhi $2
multu $3, $3
mult $3, $3
srav $3, $2, $2
TAG717:
bgez $3, TAG718
mfhi $2
srav $2, $2, $3
nor $2, $3, $2
TAG718:
ori $4, $2, 13
lui $2, 10
bgtz $2, TAG719
mtlo $4
TAG719:
mult $2, $2
sll $0, $0, 0
sll $3, $2, 15
mflo $2
TAG720:
addiu $3, $2, 0
bgtz $2, TAG721
mtlo $3
sb $2, 0($3)
TAG721:
lui $3, 5
sra $4, $3, 9
divu $3, $4
div $4, $3
TAG722:
lui $3, 11
beq $3, $4, TAG723
mflo $2
mthi $4
TAG723:
add $2, $2, $2
lui $1, 8
sltiu $1, $2, 8
lb $2, 0($1)
TAG724:
lui $3, 4
srl $1, $2, 0
sra $1, $1, 11
addiu $3, $1, 4
TAG725:
mthi $3
subu $1, $3, $3
lh $4, 0($1)
sw $1, 0($4)
TAG726:
bgtz $4, TAG727
mtlo $4
mfhi $1
mflo $1
TAG727:
sh $1, 0($1)
sltiu $4, $1, 6
mthi $4
blez $4, TAG728
TAG728:
divu $4, $4
andi $3, $4, 9
lui $4, 1
mthi $4
TAG729:
sll $0, $0, 0
sw $4, 0($1)
mfhi $3
lhu $1, 0($1)
TAG730:
nor $4, $1, $1
multu $1, $1
blez $1, TAG731
lui $3, 7
TAG731:
mthi $3
mfhi $1
bltz $1, TAG732
and $3, $1, $3
TAG732:
bne $3, $3, TAG733
addu $4, $3, $3
sll $0, $0, 0
mult $4, $4
TAG733:
sll $0, $0, 0
addu $3, $4, $1
bne $4, $1, TAG734
mult $3, $4
TAG734:
addiu $2, $3, 2
bgez $3, TAG735
sll $0, $0, 0
lui $4, 3
TAG735:
slti $3, $4, 2
mflo $2
bne $2, $2, TAG736
mtlo $4
TAG736:
mult $2, $2
multu $2, $2
lbu $3, 0($2)
mfhi $2
TAG737:
sw $2, 0($2)
mtlo $2
bgez $2, TAG738
addi $2, $2, 8
TAG738:
mflo $1
subu $4, $1, $1
xori $2, $2, 1
lui $3, 5
TAG739:
slt $1, $3, $3
lui $3, 2
mthi $3
sw $3, 0($1)
TAG740:
sll $0, $0, 0
bne $3, $3, TAG741
and $4, $3, $3
and $1, $3, $3
TAG741:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 1
sllv $1, $1, $1
TAG742:
lui $4, 6
nor $1, $1, $4
sll $0, $0, 0
sll $0, $0, 0
TAG743:
addiu $4, $1, 9
mthi $4
lui $2, 13
sll $0, $0, 0
TAG744:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
mfhi $3
TAG745:
sll $0, $0, 0
andi $1, $3, 1
sll $0, $0, 0
sll $0, $0, 0
TAG746:
bgtz $1, TAG747
mtlo $1
mflo $2
sub $2, $2, $1
TAG747:
sb $2, 0($2)
bgtz $2, TAG748
sb $2, 0($2)
multu $2, $2
TAG748:
sh $2, 0($2)
lw $3, 0($2)
mthi $2
mfhi $3
TAG749:
sub $1, $3, $3
bgez $1, TAG750
sb $3, 0($3)
lui $4, 8
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop