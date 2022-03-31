ori $1, $0, 6
ori $2, $0, 9
ori $3, $0, 4
ori $4, $0, 11
sw $3, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $1, 12($0)
sw $2, 16($0)
sw $1, 20($0)
sw $2, 24($0)
sw $3, 28($0)
sw $2, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $1, 52($0)
sw $3, 56($0)
sw $4, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $2, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $4, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $4, 124($0)
sb $2, 0($2)
mflo $3
mthi $3
lb $1, 0($2)
TAG1:
div $1, $1
lbu $1, 0($1)
lui $3, 3
lui $4, 12
TAG2:
beq $4, $4, TAG3
lui $2, 2
lui $3, 8
lh $2, 0($2)
TAG3:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
mfhi $4
TAG4:
sh $4, 0($4)
mthi $4
sllv $3, $4, $4
srl $1, $4, 0
TAG5:
lh $3, 0($1)
mtlo $3
lw $2, 0($1)
mthi $2
TAG6:
mthi $2
lhu $4, 0($2)
mthi $2
nor $4, $4, $2
TAG7:
lui $4, 0
lh $3, 0($4)
srav $1, $4, $4
lui $2, 11
TAG8:
lui $4, 7
or $1, $4, $4
xor $1, $2, $4
beq $1, $4, TAG9
TAG9:
lui $1, 3
addu $4, $1, $1
and $3, $1, $1
slti $2, $4, 9
TAG10:
and $3, $2, $2
sb $3, 0($2)
beq $2, $2, TAG11
lui $4, 7
TAG11:
srlv $2, $4, $4
mtlo $4
slti $1, $2, 14
lui $1, 6
TAG12:
lui $2, 11
mtlo $2
srl $2, $2, 10
mflo $2
TAG13:
mult $2, $2
sll $0, $0, 0
mthi $2
ori $3, $2, 9
TAG14:
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG15
sllv $1, $3, $3
TAG15:
sll $0, $0, 0
mthi $1
lui $3, 3
mtlo $1
TAG16:
lui $2, 8
addu $4, $2, $3
mfhi $1
addu $1, $1, $4
TAG17:
xor $4, $1, $1
lbu $1, 0($4)
beq $4, $1, TAG18
multu $4, $4
TAG18:
mflo $1
sub $4, $1, $1
bne $1, $1, TAG19
mthi $1
TAG19:
sll $2, $4, 4
lui $1, 2
mflo $4
nor $3, $2, $4
TAG20:
mfhi $2
bgtz $2, TAG21
sra $4, $3, 1
sb $4, 1($3)
TAG21:
sh $4, 1($4)
multu $4, $4
addu $1, $4, $4
multu $1, $1
TAG22:
mult $1, $1
mtlo $1
sh $1, 2($1)
sllv $3, $1, $1
TAG23:
mflo $4
andi $4, $4, 4
slti $4, $4, 9
mfhi $2
TAG24:
sw $2, 0($2)
lw $2, 0($2)
sh $2, 0($2)
lui $4, 9
TAG25:
bne $4, $4, TAG26
mflo $1
lbu $4, 2($1)
lbu $1, 0($4)
TAG26:
mfhi $4
mthi $1
multu $4, $1
beq $1, $4, TAG27
TAG27:
mthi $4
blez $4, TAG28
sb $4, 0($4)
mtlo $4
TAG28:
bgtz $4, TAG29
lui $4, 6
addiu $1, $4, 0
subu $1, $1, $4
TAG29:
bgez $1, TAG30
xor $3, $1, $1
mult $3, $1
lui $1, 10
TAG30:
sltiu $2, $1, 11
lui $4, 10
beq $1, $2, TAG31
srl $2, $2, 2
TAG31:
sb $2, 0($2)
lh $2, 0($2)
bne $2, $2, TAG32
sltiu $4, $2, 9
TAG32:
multu $4, $4
lbu $4, 0($4)
bltz $4, TAG33
or $1, $4, $4
TAG33:
lui $3, 12
slti $3, $3, 9
lui $2, 0
addu $3, $3, $1
TAG34:
andi $2, $3, 8
lh $2, 0($3)
sub $3, $3, $3
add $4, $2, $3
TAG35:
add $3, $4, $4
srlv $4, $4, $3
andi $3, $4, 11
mtlo $3
TAG36:
ori $4, $3, 11
multu $3, $4
mfhi $1
sw $3, 0($1)
TAG37:
addu $4, $1, $1
sw $1, 0($4)
lui $2, 15
mfhi $1
TAG38:
mtlo $1
bgez $1, TAG39
sh $1, 0($1)
lui $3, 8
TAG39:
multu $3, $3
multu $3, $3
sra $1, $3, 13
multu $1, $1
TAG40:
xori $1, $1, 15
mult $1, $1
slti $4, $1, 8
mfhi $1
TAG41:
multu $1, $1
lh $3, 0($1)
andi $2, $3, 14
multu $2, $2
TAG42:
multu $2, $2
bne $2, $2, TAG43
mtlo $2
bne $2, $2, TAG43
TAG43:
lbu $4, 0($2)
mthi $2
sh $4, 0($2)
beq $2, $2, TAG44
TAG44:
mtlo $4
mult $4, $4
bgtz $4, TAG45
or $3, $4, $4
TAG45:
mtlo $3
sllv $3, $3, $3
mflo $4
sh $3, 0($4)
TAG46:
bgtz $4, TAG47
sw $4, 0($4)
sb $4, 0($4)
multu $4, $4
TAG47:
lui $3, 5
beq $4, $3, TAG48
lui $4, 9
sltiu $1, $3, 14
TAG48:
multu $1, $1
sltu $4, $1, $1
lui $2, 15
mult $1, $1
TAG49:
bgez $2, TAG50
ori $4, $2, 13
div $4, $4
mfhi $3
TAG50:
sll $0, $0, 0
multu $1, $1
bltz $1, TAG51
addu $1, $1, $3
TAG51:
mflo $2
lui $4, 7
lb $4, 0($2)
lui $4, 4
TAG52:
blez $4, TAG53
lui $1, 11
lui $1, 11
mult $1, $1
TAG53:
srav $2, $1, $1
bgtz $2, TAG54
mthi $1
beq $2, $1, TAG54
TAG54:
mflo $3
lui $1, 15
bne $1, $1, TAG55
mthi $2
TAG55:
subu $1, $1, $1
blez $1, TAG56
sll $2, $1, 14
sub $2, $1, $1
TAG56:
lui $2, 2
mfhi $3
sll $0, $0, 0
addu $1, $2, $3
TAG57:
bne $1, $1, TAG58
sra $4, $1, 5
sllv $1, $1, $1
bltz $1, TAG58
TAG58:
sll $0, $0, 0
lui $2, 14
subu $2, $1, $2
lui $1, 15
TAG59:
sll $0, $0, 0
mfhi $4
bgtz $4, TAG60
lui $1, 0
TAG60:
ori $2, $1, 8
div $1, $2
srlv $1, $2, $1
sw $1, 0($2)
TAG61:
lbu $4, 0($1)
beq $1, $1, TAG62
multu $1, $1
srav $1, $1, $4
TAG62:
bgez $1, TAG63
lhu $2, 0($1)
multu $1, $1
bgez $2, TAG63
TAG63:
xor $2, $2, $2
lb $2, 0($2)
mthi $2
beq $2, $2, TAG64
TAG64:
mfhi $1
srav $2, $2, $1
multu $1, $1
mult $1, $1
TAG65:
mtlo $2
mflo $3
bne $2, $3, TAG66
lui $1, 6
TAG66:
sll $0, $0, 0
addiu $2, $1, 10
srav $4, $1, $1
mfhi $2
TAG67:
lui $2, 7
sll $0, $0, 0
mthi $1
mthi $1
TAG68:
sll $0, $0, 0
mfhi $1
lui $3, 6
lui $4, 14
TAG69:
sltiu $1, $4, 6
srl $2, $4, 9
mult $2, $4
lui $1, 6
TAG70:
lui $4, 1
andi $3, $4, 3
multu $3, $1
mthi $4
TAG71:
bgez $3, TAG72
xori $3, $3, 11
sb $3, 0($3)
sb $3, 0($3)
TAG72:
lbu $1, 0($3)
lui $3, 5
sltiu $2, $1, 8
sh $3, 0($1)
TAG73:
sllv $3, $2, $2
multu $3, $2
lui $1, 15
sll $1, $2, 5
TAG74:
divu $1, $1
lh $4, 0($1)
sb $4, 0($4)
blez $1, TAG75
TAG75:
sb $4, 0($4)
multu $4, $4
slt $3, $4, $4
mult $4, $3
TAG76:
mtlo $3
multu $3, $3
lui $1, 5
mflo $2
TAG77:
sltu $2, $2, $2
mthi $2
sh $2, 0($2)
sltu $3, $2, $2
TAG78:
lhu $3, 0($3)
nor $3, $3, $3
mfhi $4
lui $3, 0
TAG79:
sw $3, 0($3)
mfhi $3
multu $3, $3
beq $3, $3, TAG80
TAG80:
lui $1, 15
beq $3, $3, TAG81
sb $3, 0($3)
lw $1, 0($1)
TAG81:
sll $0, $0, 0
sll $0, $0, 0
multu $4, $1
or $1, $4, $4
TAG82:
lui $1, 12
multu $1, $1
sll $0, $0, 0
mflo $3
TAG83:
beq $3, $3, TAG84
sh $3, 0($3)
bne $3, $3, TAG84
lui $4, 0
TAG84:
sw $4, 0($4)
mfhi $2
mfhi $3
bne $4, $4, TAG85
TAG85:
sb $3, -144($3)
ori $4, $3, 4
subu $3, $3, $3
sw $3, -148($4)
TAG86:
sb $3, 0($3)
sltiu $4, $3, 15
sh $4, 0($3)
bgez $4, TAG87
TAG87:
lui $3, 9
or $4, $3, $3
sll $0, $0, 0
addu $3, $4, $3
TAG88:
bne $3, $3, TAG89
sltu $3, $3, $3
sltu $1, $3, $3
bgtz $3, TAG89
TAG89:
lhu $3, 0($1)
lui $2, 13
lui $3, 0
mtlo $1
TAG90:
bne $3, $3, TAG91
mult $3, $3
beq $3, $3, TAG91
and $3, $3, $3
TAG91:
sra $1, $3, 0
or $1, $1, $1
lui $1, 10
slti $1, $1, 10
TAG92:
lui $3, 11
sh $1, 0($1)
sw $3, 0($1)
sh $1, 0($1)
TAG93:
lui $1, 12
bgez $1, TAG94
divu $3, $3
bne $1, $3, TAG94
TAG94:
divu $1, $1
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
TAG95:
addu $2, $1, $1
sll $0, $0, 0
div $2, $2
mthi $1
TAG96:
addiu $3, $2, 7
mthi $3
beq $3, $2, TAG97
mflo $4
TAG97:
bne $4, $4, TAG98
div $4, $4
sb $4, 0($4)
divu $4, $4
TAG98:
slt $1, $4, $4
lw $1, 0($1)
mflo $2
mflo $2
TAG99:
mflo $4
lui $3, 6
mthi $3
ori $2, $2, 7
TAG100:
mfhi $1
sll $0, $0, 0
mtlo $1
mthi $1
TAG101:
lui $1, 8
mthi $1
andi $3, $1, 13
sll $0, $0, 0
TAG102:
blez $3, TAG103
nor $2, $3, $3
or $2, $3, $2
lhu $2, 0($3)
TAG103:
beq $2, $2, TAG104
srav $2, $2, $2
multu $2, $2
mfhi $4
TAG104:
bgez $4, TAG105
mflo $2
lui $1, 15
div $1, $1
TAG105:
sll $0, $0, 0
xori $1, $1, 7
mtlo $1
multu $1, $1
TAG106:
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
blez $1, TAG107
TAG107:
addiu $2, $1, 2
sll $0, $0, 0
addu $2, $2, $1
sltu $2, $2, $1
TAG108:
sllv $1, $2, $2
sltu $3, $1, $2
sllv $4, $2, $3
sb $1, 0($1)
TAG109:
multu $4, $4
sll $2, $4, 7
lw $3, 0($2)
sll $0, $0, 0
TAG110:
ori $3, $3, 1
sllv $2, $3, $3
sll $0, $0, 0
mfhi $4
TAG111:
lui $2, 15
lui $1, 14
lui $2, 7
bltz $2, TAG112
TAG112:
addu $3, $2, $2
sll $0, $0, 0
bne $2, $2, TAG113
div $2, $2
TAG113:
multu $2, $2
bne $2, $2, TAG114
sll $0, $0, 0
bgtz $2, TAG114
TAG114:
add $2, $4, $4
multu $4, $2
mfhi $3
bgez $4, TAG115
TAG115:
and $3, $3, $3
sh $3, 0($3)
multu $3, $3
srav $1, $3, $3
TAG116:
srav $2, $1, $1
sh $2, 0($2)
mtlo $1
blez $1, TAG117
TAG117:
ori $1, $2, 13
bne $2, $2, TAG118
mflo $3
lui $1, 3
TAG118:
bne $1, $1, TAG119
sll $0, $0, 0
sltiu $2, $1, 13
mtlo $1
TAG119:
addi $4, $2, 9
sb $2, 0($4)
mthi $4
sll $2, $4, 6
TAG120:
bne $2, $2, TAG121
mfhi $1
bltz $2, TAG121
mflo $3
TAG121:
mflo $2
sll $0, $0, 0
multu $2, $2
multu $3, $3
TAG122:
nor $3, $2, $2
ori $3, $3, 4
mflo $1
bltz $1, TAG123
TAG123:
mtlo $1
mult $1, $1
srl $1, $1, 11
lui $2, 8
TAG124:
mfhi $2
sb $2, 0($2)
beq $2, $2, TAG125
sb $2, 0($2)
TAG125:
beq $2, $2, TAG126
lhu $4, 0($2)
lui $3, 4
lui $4, 15
TAG126:
mfhi $3
srav $4, $4, $4
mthi $3
bgez $4, TAG127
TAG127:
sb $4, 0($4)
sh $4, 0($4)
sub $3, $4, $4
sw $3, 0($3)
TAG128:
multu $3, $3
sh $3, 0($3)
sll $2, $3, 9
bgez $2, TAG129
TAG129:
lb $4, 0($2)
lw $1, 0($2)
xor $1, $2, $4
bgez $4, TAG130
TAG130:
lb $3, 0($1)
sllv $2, $1, $3
lw $3, 0($2)
lui $3, 3
TAG131:
mthi $3
div $3, $3
lui $4, 1
mflo $1
TAG132:
mflo $3
lui $1, 14
andi $2, $1, 10
mthi $1
TAG133:
mfhi $2
bne $2, $2, TAG134
mtlo $2
andi $3, $2, 11
TAG134:
lw $1, 0($3)
mthi $1
subu $1, $3, $1
lui $1, 14
TAG135:
mflo $4
srlv $1, $4, $4
sll $0, $0, 0
mflo $3
TAG136:
mult $3, $3
mflo $3
sb $3, 0($3)
mtlo $3
TAG137:
lui $2, 7
addu $3, $2, $3
sll $0, $0, 0
bltz $2, TAG138
TAG138:
mfhi $1
lui $4, 12
sb $1, -196($1)
mthi $1
TAG139:
divu $4, $4
sll $1, $4, 1
blez $4, TAG140
sltiu $3, $1, 2
TAG140:
multu $3, $3
beq $3, $3, TAG141
sltiu $1, $3, 13
lui $2, 6
TAG141:
mult $2, $2
or $4, $2, $2
mfhi $2
div $2, $2
TAG142:
div $2, $2
mtlo $2
sb $2, 0($2)
bne $2, $2, TAG143
TAG143:
sb $2, 0($2)
mtlo $2
and $4, $2, $2
srav $3, $4, $2
TAG144:
multu $3, $3
lui $2, 0
mtlo $2
lui $3, 1
TAG145:
bgtz $3, TAG146
mfhi $4
lui $2, 9
slti $1, $3, 15
TAG146:
mflo $2
bgez $1, TAG147
lui $3, 12
bltz $1, TAG147
TAG147:
mthi $3
mult $3, $3
mthi $3
multu $3, $3
TAG148:
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
beq $3, $3, TAG149
TAG149:
sll $0, $0, 0
srav $2, $3, $3
mflo $4
bne $3, $2, TAG150
TAG150:
mtlo $4
mult $4, $4
bgtz $4, TAG151
subu $3, $4, $4
TAG151:
sub $2, $3, $3
lui $3, 12
mult $3, $2
sltiu $1, $3, 2
TAG152:
srlv $4, $1, $1
lb $3, 0($1)
sltu $2, $4, $3
mflo $3
TAG153:
lhu $2, 0($3)
sh $3, 0($3)
addu $4, $3, $3
slt $3, $4, $4
TAG154:
lui $1, 11
srlv $2, $1, $1
sll $0, $0, 0
blez $1, TAG155
TAG155:
sll $0, $0, 0
mtlo $2
and $2, $2, $2
bne $2, $2, TAG156
TAG156:
divu $2, $2
mtlo $2
sltiu $1, $2, 5
sb $1, 0($1)
TAG157:
multu $1, $1
mflo $4
or $2, $4, $1
xori $4, $4, 6
TAG158:
bne $4, $4, TAG159
div $4, $4
mtlo $4
sllv $4, $4, $4
TAG159:
mtlo $4
mult $4, $4
beq $4, $4, TAG160
sb $4, -384($4)
TAG160:
mtlo $4
addiu $4, $4, 15
subu $3, $4, $4
blez $3, TAG161
TAG161:
lhu $1, 0($3)
sh $3, 0($1)
div $3, $1
beq $3, $3, TAG162
TAG162:
srl $3, $1, 4
or $2, $3, $3
divu $1, $3
lh $4, 0($2)
TAG163:
mthi $4
bne $4, $4, TAG164
multu $4, $4
mfhi $4
TAG164:
bgtz $4, TAG165
sll $2, $4, 0
lui $4, 14
lui $3, 6
TAG165:
mfhi $2
addiu $3, $3, 4
mfhi $3
mflo $1
TAG166:
mfhi $2
slti $4, $2, 15
divu $1, $1
or $4, $1, $4
TAG167:
bgez $4, TAG168
mfhi $1
sw $4, 0($4)
mtlo $1
TAG168:
mthi $1
lb $4, 0($1)
lw $4, 0($1)
mfhi $1
TAG169:
multu $1, $1
multu $1, $1
sw $1, 0($1)
addi $2, $1, 8
TAG170:
mult $2, $2
lui $4, 13
mflo $1
mult $1, $2
TAG171:
lh $3, 0($1)
blez $3, TAG172
addiu $3, $1, 2
ori $4, $1, 12
TAG172:
mflo $3
bgez $3, TAG173
addu $2, $4, $4
lb $4, 0($4)
TAG173:
bgez $4, TAG174
mthi $4
blez $4, TAG174
lui $4, 8
TAG174:
mfhi $2
sltiu $4, $2, 2
sw $2, 0($2)
multu $4, $4
TAG175:
lbu $3, 0($4)
lbu $3, 0($4)
mflo $2
lui $4, 11
TAG176:
lui $4, 6
slt $3, $4, $4
bgez $4, TAG177
divu $4, $4
TAG177:
addi $3, $3, 11
mflo $4
lb $1, 0($3)
ori $4, $4, 0
TAG178:
mflo $3
lui $1, 9
lui $1, 6
mtlo $4
TAG179:
sll $0, $0, 0
sltu $2, $2, $1
mfhi $1
mfhi $2
TAG180:
sh $2, 0($2)
mthi $2
beq $2, $2, TAG181
mflo $2
TAG181:
sb $2, 0($2)
sltu $3, $2, $2
beq $2, $3, TAG182
lui $4, 11
TAG182:
mthi $4
mthi $4
lui $4, 5
blez $4, TAG183
TAG183:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
beq $4, $3, TAG184
TAG184:
sllv $4, $3, $3
sltiu $2, $4, 12
sub $3, $4, $3
lb $4, 0($3)
TAG185:
mthi $4
bne $4, $4, TAG186
lui $1, 9
mfhi $3
TAG186:
bgtz $3, TAG187
mflo $2
multu $3, $2
multu $3, $3
TAG187:
sh $2, 0($2)
mtlo $2
blez $2, TAG188
sh $2, 0($2)
TAG188:
bgez $2, TAG189
mthi $2
andi $4, $2, 0
sh $2, 0($2)
TAG189:
lhu $1, 0($4)
beq $4, $1, TAG190
mthi $1
lh $2, 0($4)
TAG190:
addi $1, $2, 8
andi $4, $2, 12
bgtz $2, TAG191
lbu $1, 0($1)
TAG191:
bne $1, $1, TAG192
lui $1, 0
lh $1, 0($1)
beq $1, $1, TAG192
TAG192:
lbu $4, 0($1)
bne $4, $1, TAG193
multu $1, $4
subu $3, $4, $1
TAG193:
sb $3, 0($3)
lui $4, 5
sll $0, $0, 0
sw $3, 0($3)
TAG194:
multu $4, $4
lui $2, 3
srlv $2, $4, $4
sll $0, $0, 0
TAG195:
mthi $2
mthi $2
mthi $2
lui $4, 9
TAG196:
lui $4, 12
mflo $2
subu $4, $4, $4
lui $2, 0
TAG197:
mult $2, $2
lb $3, 0($2)
mfhi $3
srav $4, $2, $3
TAG198:
beq $4, $4, TAG199
sb $4, 0($4)
mult $4, $4
bltz $4, TAG199
TAG199:
multu $4, $4
sltiu $4, $4, 13
mflo $1
blez $4, TAG200
TAG200:
mflo $3
bltz $1, TAG201
mtlo $1
sb $1, 0($1)
TAG201:
lb $3, 0($3)
bne $3, $3, TAG202
ori $2, $3, 5
multu $3, $3
TAG202:
lb $1, 0($2)
sllv $1, $1, $2
beq $2, $1, TAG203
mtlo $1
TAG203:
sh $1, 0($1)
bgez $1, TAG204
lhu $2, 0($1)
blez $1, TAG204
TAG204:
and $1, $2, $2
mthi $2
lui $1, 4
bgez $1, TAG205
TAG205:
div $1, $1
mflo $2
sll $0, $0, 0
mfhi $4
TAG206:
mult $4, $4
mult $4, $4
lui $4, 2
bgez $4, TAG207
TAG207:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG208:
sb $2, 0($2)
slti $4, $2, 10
sh $4, 0($2)
multu $2, $2
TAG209:
lbu $1, 0($4)
multu $4, $4
div $4, $4
mfhi $4
TAG210:
mflo $4
bne $4, $4, TAG211
lbu $4, 0($4)
lui $1, 10
TAG211:
mflo $2
lui $2, 8
sll $2, $2, 10
srav $1, $2, $1
TAG212:
or $3, $1, $1
addu $2, $3, $3
mfhi $2
beq $2, $2, TAG213
TAG213:
sw $2, 0($2)
subu $2, $2, $2
sb $2, 0($2)
lui $2, 5
TAG214:
bne $2, $2, TAG215
ori $4, $2, 15
mtlo $4
slt $3, $4, $4
TAG215:
sw $3, 0($3)
mtlo $3
beq $3, $3, TAG216
mflo $1
TAG216:
sra $2, $1, 14
slt $2, $1, $1
lw $1, 0($2)
multu $2, $1
TAG217:
mflo $3
mflo $3
lui $4, 0
mthi $3
TAG218:
bne $4, $4, TAG219
sltiu $3, $4, 8
divu $3, $3
beq $3, $4, TAG219
TAG219:
lui $2, 13
divu $3, $2
lui $4, 7
bne $3, $3, TAG220
TAG220:
sll $0, $0, 0
mult $4, $1
bgtz $1, TAG221
mult $1, $1
TAG221:
slti $4, $1, 3
slt $1, $1, $4
mflo $4
mthi $4
TAG222:
sw $4, 0($4)
add $4, $4, $4
lbu $4, 0($4)
bgez $4, TAG223
TAG223:
multu $4, $4
mtlo $4
mult $4, $4
sb $4, 0($4)
TAG224:
sh $4, 0($4)
lh $1, 0($4)
lw $3, 0($4)
sh $3, 0($1)
TAG225:
mtlo $3
bne $3, $3, TAG226
mtlo $3
add $4, $3, $3
TAG226:
mfhi $3
lbu $2, 0($3)
lh $3, 0($3)
mult $3, $3
TAG227:
bltz $3, TAG228
sh $3, 0($3)
lb $3, 0($3)
ori $3, $3, 6
TAG228:
lui $3, 13
div $3, $3
mult $3, $3
sll $0, $0, 0
TAG229:
nor $4, $2, $2
lh $1, 0($2)
bne $1, $2, TAG230
sllv $4, $1, $4
TAG230:
lb $4, 0($4)
multu $4, $4
bgez $4, TAG231
lhu $4, 0($4)
TAG231:
sllv $4, $4, $4
mthi $4
bltz $4, TAG232
lui $4, 3
TAG232:
beq $4, $4, TAG233
sll $0, $0, 0
mfhi $1
multu $4, $1
TAG233:
mthi $1
mult $1, $1
sw $1, 0($1)
mult $1, $1
TAG234:
bne $1, $1, TAG235
sw $1, 0($1)
lui $1, 6
xori $3, $1, 13
TAG235:
mflo $2
lui $1, 4
srav $3, $3, $1
mfhi $4
TAG236:
mthi $4
sh $4, 0($4)
sw $4, 0($4)
sra $1, $4, 10
TAG237:
lui $1, 14
addu $4, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG238:
multu $4, $4
mthi $4
divu $4, $4
mthi $4
TAG239:
mthi $4
bgtz $4, TAG240
div $4, $4
mthi $4
TAG240:
bgez $4, TAG241
mthi $4
blez $4, TAG241
lbu $4, 0($4)
TAG241:
bne $4, $4, TAG242
sll $0, $0, 0
blez $4, TAG242
andi $4, $4, 15
TAG242:
blez $4, TAG243
multu $4, $4
lui $1, 6
sra $1, $1, 10
TAG243:
bltz $1, TAG244
multu $1, $1
and $4, $1, $1
beq $1, $4, TAG244
TAG244:
addiu $3, $4, 0
mflo $2
bne $2, $4, TAG245
lui $2, 12
TAG245:
mflo $3
mult $3, $2
mthi $3
nor $4, $3, $3
TAG246:
bgez $4, TAG247
ori $4, $4, 0
subu $4, $4, $4
lb $1, 0($4)
TAG247:
beq $1, $1, TAG248
sll $2, $1, 9
beq $1, $1, TAG248
sra $4, $1, 7
TAG248:
ori $1, $4, 3
lui $3, 7
lui $3, 11
subu $3, $3, $3
TAG249:
addu $4, $3, $3
sw $3, 0($3)
mthi $4
mult $3, $4
TAG250:
bgtz $4, TAG251
mthi $4
bne $4, $4, TAG251
lui $2, 12
TAG251:
sltiu $2, $2, 10
beq $2, $2, TAG252
mtlo $2
lh $4, 0($2)
TAG252:
subu $2, $4, $4
mthi $4
slt $1, $4, $4
lui $2, 12
TAG253:
lui $4, 8
lui $4, 11
sra $2, $2, 14
mult $2, $2
TAG254:
sb $2, 0($2)
subu $4, $2, $2
beq $4, $4, TAG255
xori $4, $4, 0
TAG255:
mfhi $3
blez $4, TAG256
lw $3, 0($4)
slt $4, $3, $3
TAG256:
bgez $4, TAG257
lui $2, 3
lui $4, 11
multu $2, $4
TAG257:
lbu $1, 0($4)
mult $1, $4
sw $4, 0($1)
bne $4, $1, TAG258
TAG258:
subu $1, $1, $1
lh $1, 0($1)
sh $1, 0($1)
add $3, $1, $1
TAG259:
lui $4, 11
lui $4, 6
bne $4, $4, TAG260
sll $0, $0, 0
TAG260:
multu $4, $4
mthi $4
mthi $4
mult $4, $4
TAG261:
bne $4, $4, TAG262
addiu $3, $4, 11
lui $2, 1
lui $1, 13
TAG262:
lui $1, 0
sw $1, 0($1)
lhu $4, 0($1)
lb $3, 0($4)
TAG263:
or $1, $3, $3
slti $4, $3, 0
mthi $4
bgtz $4, TAG264
TAG264:
mflo $4
sh $4, 0($4)
bne $4, $4, TAG265
mthi $4
TAG265:
lw $4, 0($4)
mtlo $4
sw $4, 0($4)
bne $4, $4, TAG266
TAG266:
lw $1, 0($4)
bne $1, $1, TAG267
sw $4, 0($4)
addi $3, $1, 7
TAG267:
beq $3, $3, TAG268
mtlo $3
lui $2, 15
sll $4, $2, 13
TAG268:
bgtz $4, TAG269
subu $1, $4, $4
beq $4, $1, TAG269
mtlo $4
TAG269:
sw $1, 0($1)
addi $4, $1, 6
mflo $4
bne $4, $1, TAG270
TAG270:
sllv $3, $4, $4
sllv $2, $4, $4
mflo $3
lui $2, 1
TAG271:
blez $2, TAG272
divu $2, $2
lui $1, 6
sll $0, $0, 0
TAG272:
multu $1, $1
blez $1, TAG273
sll $0, $0, 0
or $4, $1, $1
TAG273:
bne $4, $4, TAG274
xori $2, $4, 7
sltiu $1, $2, 0
divu $4, $2
TAG274:
mthi $1
lui $4, 5
bgtz $4, TAG275
srlv $4, $4, $1
TAG275:
sll $0, $0, 0
bgtz $4, TAG276
mfhi $3
divu $4, $4
TAG276:
beq $3, $3, TAG277
mtlo $3
mtlo $3
xor $1, $3, $3
TAG277:
xor $1, $1, $1
mfhi $3
bltz $1, TAG278
mtlo $1
TAG278:
sb $3, 0($3)
sh $3, 0($3)
sw $3, 0($3)
lui $1, 4
TAG279:
sll $0, $0, 0
bne $1, $1, TAG280
sll $0, $0, 0
sll $4, $1, 9
TAG280:
sll $0, $0, 0
xor $4, $3, $3
sltu $4, $3, $4
lb $1, 0($4)
TAG281:
sb $1, 0($1)
sll $2, $1, 12
mult $1, $1
bltz $2, TAG282
TAG282:
slti $4, $2, 10
ori $4, $2, 14
addu $4, $4, $2
bne $4, $2, TAG283
TAG283:
divu $4, $4
bgtz $4, TAG284
sltu $1, $4, $4
beq $4, $1, TAG284
TAG284:
mflo $2
blez $2, TAG285
sb $1, 0($2)
beq $2, $1, TAG285
TAG285:
ori $1, $2, 4
srlv $3, $2, $1
bgez $2, TAG286
lhu $3, 0($3)
TAG286:
mfhi $4
mflo $2
xori $1, $2, 13
lhu $1, 0($1)
TAG287:
beq $1, $1, TAG288
mthi $1
bgtz $1, TAG288
sllv $2, $1, $1
TAG288:
mflo $1
mfhi $4
lb $4, 0($1)
lui $2, 1
TAG289:
sltu $4, $2, $2
andi $4, $2, 2
bgez $4, TAG290
mthi $4
TAG290:
mtlo $4
mtlo $4
xor $3, $4, $4
sw $4, 0($4)
TAG291:
lhu $2, 0($3)
blez $3, TAG292
addi $4, $2, 13
addu $4, $2, $3
TAG292:
bne $4, $4, TAG293
sb $4, 0($4)
sb $4, 0($4)
mult $4, $4
TAG293:
nor $1, $4, $4
beq $1, $1, TAG294
mtlo $4
add $1, $4, $1
TAG294:
multu $1, $1
div $1, $1
srl $2, $1, 13
bne $2, $2, TAG295
TAG295:
lui $2, 1
beq $2, $2, TAG296
subu $2, $2, $2
lbu $3, 0($2)
TAG296:
mfhi $3
mthi $3
lui $2, 7
bne $2, $3, TAG297
TAG297:
sll $0, $0, 0
bltz $1, TAG298
mthi $2
lui $3, 2
TAG298:
mfhi $2
lui $2, 12
mult $2, $2
multu $3, $2
TAG299:
sll $0, $0, 0
bne $2, $2, TAG300
multu $2, $2
andi $2, $1, 7
TAG300:
bltz $2, TAG301
srlv $2, $2, $2
lui $2, 4
lui $3, 14
TAG301:
blez $3, TAG302
sll $0, $0, 0
addiu $2, $3, 0
mult $2, $2
TAG302:
sltiu $3, $2, 5
lui $2, 13
mtlo $2
blez $2, TAG303
TAG303:
mtlo $2
sll $0, $0, 0
sll $2, $4, 8
subu $3, $2, $2
TAG304:
blez $3, TAG305
multu $3, $3
bne $3, $3, TAG305
srl $1, $3, 10
TAG305:
lui $4, 13
slti $1, $4, 2
sra $4, $4, 13
lui $1, 6
TAG306:
mult $1, $1
mthi $1
subu $3, $1, $1
div $1, $1
TAG307:
sh $3, 0($3)
sw $3, 0($3)
multu $3, $3
mthi $3
TAG308:
bne $3, $3, TAG309
sh $3, 0($3)
bltz $3, TAG309
mtlo $3
TAG309:
sw $3, 0($3)
sltiu $3, $3, 2
bltz $3, TAG310
srl $3, $3, 8
TAG310:
bgtz $3, TAG311
ori $1, $3, 8
beq $1, $1, TAG311
mflo $2
TAG311:
lh $4, 0($2)
mtlo $2
bltz $4, TAG312
mtlo $4
TAG312:
slt $3, $4, $4
addiu $2, $3, 12
lbu $2, 0($3)
add $3, $3, $4
TAG313:
subu $1, $3, $3
sb $1, 0($1)
mult $1, $1
lui $3, 3
TAG314:
beq $3, $3, TAG315
mfhi $2
sw $3, 0($2)
bgez $3, TAG315
TAG315:
lbu $2, 0($2)
mult $2, $2
sb $2, 0($2)
bne $2, $2, TAG316
TAG316:
lbu $3, 0($2)
lui $1, 15
div $3, $1
lh $4, 0($3)
TAG317:
sw $4, 0($4)
mtlo $4
mflo $4
xor $4, $4, $4
TAG318:
mtlo $4
mthi $4
mflo $1
andi $3, $4, 11
TAG319:
sltu $1, $3, $3
xori $2, $1, 5
mthi $2
mtlo $3
TAG320:
bne $2, $2, TAG321
lb $4, 0($2)
lui $3, 0
lbu $4, 0($2)
TAG321:
add $1, $4, $4
mfhi $2
lui $4, 6
ori $1, $1, 14
TAG322:
xori $1, $1, 7
divu $1, $1
lui $1, 11
mflo $4
TAG323:
addu $4, $4, $4
divu $4, $4
div $4, $4
mflo $2
TAG324:
bgtz $2, TAG325
div $2, $2
lui $3, 7
mflo $1
TAG325:
mtlo $1
mtlo $1
bne $1, $1, TAG326
lui $2, 5
TAG326:
sll $0, $0, 0
beq $3, $2, TAG327
mtlo $2
sll $0, $0, 0
TAG327:
addi $1, $3, 4
lbu $2, 0($3)
lui $4, 3
sll $0, $0, 0
TAG328:
mfhi $2
mthi $4
lui $3, 15
addu $4, $4, $4
TAG329:
mtlo $4
mthi $4
beq $4, $4, TAG330
srlv $3, $4, $4
TAG330:
sll $0, $0, 0
sll $0, $0, 0
and $3, $3, $3
sll $0, $0, 0
TAG331:
bne $4, $4, TAG332
mflo $4
sll $0, $0, 0
bne $4, $4, TAG332
TAG332:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG333:
sll $0, $0, 0
mfhi $4
multu $4, $4
mtlo $4
TAG334:
bgez $4, TAG335
addiu $2, $4, 15
sb $2, 0($2)
nor $3, $4, $2
TAG335:
sll $0, $0, 0
slti $4, $3, 5
mthi $3
bgtz $4, TAG336
TAG336:
lui $4, 14
bne $4, $4, TAG337
andi $2, $4, 5
subu $4, $4, $4
TAG337:
multu $4, $4
mfhi $1
sra $3, $4, 0
sb $4, 0($4)
TAG338:
lhu $4, 0($3)
lui $4, 0
sb $4, 0($3)
beq $3, $4, TAG339
TAG339:
multu $4, $4
andi $2, $4, 3
lbu $1, 0($2)
mfhi $2
TAG340:
bgez $2, TAG341
mtlo $2
mthi $2
lui $4, 12
TAG341:
multu $4, $4
multu $4, $4
bne $4, $4, TAG342
lbu $1, 0($4)
TAG342:
mthi $1
mflo $3
sll $3, $3, 8
lui $3, 0
TAG343:
bne $3, $3, TAG344
lui $4, 11
mthi $3
beq $4, $3, TAG344
TAG344:
lui $1, 1
sllv $3, $4, $1
bne $4, $4, TAG345
addiu $1, $3, 13
TAG345:
mflo $3
mflo $1
addiu $3, $1, 9
mfhi $1
TAG346:
srl $4, $1, 2
multu $1, $1
sb $1, 0($1)
sh $4, 0($4)
TAG347:
mult $4, $4
mfhi $4
mfhi $2
slti $4, $2, 5
TAG348:
sb $4, 0($4)
mtlo $4
slt $1, $4, $4
sw $1, 0($1)
TAG349:
mthi $1
nor $2, $1, $1
lui $4, 5
mthi $1
TAG350:
slti $4, $4, 2
mtlo $4
mthi $4
bne $4, $4, TAG351
TAG351:
mult $4, $4
mult $4, $4
nor $4, $4, $4
mthi $4
TAG352:
bne $4, $4, TAG353
lui $1, 15
bltz $4, TAG353
mtlo $1
TAG353:
mfhi $1
lui $1, 9
sra $2, $1, 1
sll $0, $0, 0
TAG354:
div $2, $2
bne $2, $2, TAG355
sll $0, $0, 0
blez $2, TAG355
TAG355:
slti $1, $2, 12
bne $1, $1, TAG356
mthi $2
lw $2, 0($1)
TAG356:
mflo $1
lui $2, 3
lb $4, 0($1)
mthi $1
TAG357:
bne $4, $4, TAG358
multu $4, $4
mthi $4
mthi $4
TAG358:
mtlo $4
mthi $4
mthi $4
srl $1, $4, 8
TAG359:
addi $1, $1, 1
mfhi $1
bgez $1, TAG360
lui $3, 13
TAG360:
ori $2, $3, 12
mtlo $2
srlv $4, $3, $3
mtlo $3
TAG361:
bgtz $4, TAG362
sll $0, $0, 0
bgtz $3, TAG362
lui $2, 14
TAG362:
sll $0, $0, 0
divu $2, $2
bne $2, $2, TAG363
lui $4, 11
TAG363:
mthi $4
bltz $4, TAG364
sra $3, $4, 10
addiu $1, $3, 10
TAG364:
mflo $2
lui $3, 4
blez $1, TAG365
sllv $2, $3, $3
TAG365:
blez $2, TAG366
xor $2, $2, $2
lui $2, 10
lui $1, 13
TAG366:
sra $4, $1, 15
sh $1, 0($4)
lui $2, 0
slt $2, $4, $4
TAG367:
mfhi $4
subu $1, $4, $2
lui $1, 0
mult $1, $2
TAG368:
sh $1, 0($1)
nor $3, $1, $1
bne $3, $3, TAG369
mfhi $2
TAG369:
beq $2, $2, TAG370
mtlo $2
lui $3, 3
beq $2, $3, TAG370
TAG370:
slti $1, $3, 9
lh $1, 1($3)
addi $3, $1, 5
mult $1, $3
TAG371:
bgtz $3, TAG372
lui $1, 13
blez $1, TAG372
mthi $3
TAG372:
blez $1, TAG373
subu $4, $1, $1
sll $1, $4, 7
beq $1, $4, TAG373
TAG373:
addiu $4, $1, 13
div $1, $4
mthi $1
mult $4, $1
TAG374:
sb $4, 0($4)
bgtz $4, TAG375
mflo $3
div $4, $3
TAG375:
multu $3, $3
mfhi $1
lh $1, 0($1)
multu $1, $1
TAG376:
and $2, $1, $1
mthi $2
mfhi $3
bne $1, $2, TAG377
TAG377:
mflo $4
andi $1, $3, 2
sll $4, $3, 1
mflo $1
TAG378:
mflo $4
mtlo $4
sh $4, 0($4)
multu $4, $4
TAG379:
mult $4, $4
sw $4, 0($4)
ori $4, $4, 7
mthi $4
TAG380:
lui $1, 3
bne $4, $1, TAG381
mflo $1
sh $1, 0($4)
TAG381:
lb $2, 0($1)
mtlo $2
mfhi $3
mtlo $2
TAG382:
sra $1, $3, 9
bltz $1, TAG383
mthi $1
mtlo $1
TAG383:
beq $1, $1, TAG384
mtlo $1
multu $1, $1
lui $1, 2
TAG384:
addu $4, $1, $1
mthi $4
lui $1, 9
lw $1, 0($4)
TAG385:
bne $1, $1, TAG386
mthi $1
srlv $3, $1, $1
sw $1, 0($3)
TAG386:
beq $3, $3, TAG387
multu $3, $3
divu $3, $3
lb $3, 0($3)
TAG387:
mthi $3
multu $3, $3
mtlo $3
bgtz $3, TAG388
TAG388:
mflo $3
srav $1, $3, $3
lui $4, 6
mult $3, $3
TAG389:
beq $4, $4, TAG390
sll $3, $4, 9
sw $3, 0($3)
mthi $3
TAG390:
srav $1, $3, $3
divu $3, $1
mflo $1
subu $3, $3, $1
TAG391:
sll $0, $0, 0
beq $3, $3, TAG392
slti $1, $3, 8
addiu $3, $3, 5
TAG392:
bltz $3, TAG393
lui $3, 7
bgtz $3, TAG393
lui $1, 12
TAG393:
addiu $4, $1, 14
bne $4, $4, TAG394
mthi $4
subu $4, $1, $4
TAG394:
lui $1, 4
mtlo $4
bltz $4, TAG395
lui $2, 6
TAG395:
mfhi $4
bne $4, $2, TAG396
mfhi $2
sb $2, 0($4)
TAG396:
addiu $2, $2, 6
bltz $2, TAG397
sll $0, $0, 0
sll $0, $0, 0
TAG397:
addiu $1, $4, 5
sll $0, $0, 0
mflo $1
mfhi $2
TAG398:
sll $0, $0, 0
sw $1, 14($1)
mthi $2
bltz $1, TAG399
TAG399:
andi $1, $1, 13
lbu $2, 0($1)
mfhi $4
bne $4, $4, TAG400
TAG400:
mult $4, $4
sll $0, $0, 0
bgez $4, TAG401
mflo $4
TAG401:
sll $0, $0, 0
lui $3, 8
mtlo $2
xor $2, $3, $4
TAG402:
lui $2, 12
sltiu $4, $2, 8
mthi $4
mfhi $1
TAG403:
lui $4, 6
lui $3, 2
mfhi $2
mfhi $3
TAG404:
sb $3, 0($3)
sw $3, 0($3)
mfhi $2
sb $3, 0($2)
TAG405:
bne $2, $2, TAG406
mult $2, $2
mult $2, $2
mult $2, $2
TAG406:
bgez $2, TAG407
lui $4, 12
bgtz $4, TAG407
sb $2, 0($2)
TAG407:
xori $2, $4, 15
div $4, $2
mthi $2
bne $2, $4, TAG408
TAG408:
slti $4, $2, 6
beq $2, $2, TAG409
mtlo $4
mtlo $2
TAG409:
sltiu $3, $4, 14
mfhi $3
mult $3, $3
mult $3, $4
TAG410:
lui $4, 5
mfhi $2
sll $0, $0, 0
beq $4, $3, TAG411
TAG411:
lbu $1, 0($2)
mfhi $2
mthi $2
sw $2, 0($2)
TAG412:
mult $2, $2
andi $1, $2, 6
slti $3, $2, 15
lui $3, 0
TAG413:
mfhi $2
lui $1, 13
bgez $2, TAG414
mult $3, $3
TAG414:
bne $1, $1, TAG415
multu $1, $1
sll $0, $0, 0
mflo $1
TAG415:
mflo $4
sllv $3, $1, $1
mflo $1
multu $4, $1
TAG416:
sb $1, 0($1)
slti $3, $1, 4
beq $1, $3, TAG417
sll $3, $1, 11
TAG417:
beq $3, $3, TAG418
lui $1, 13
mtlo $1
mthi $1
TAG418:
srl $3, $1, 6
beq $1, $1, TAG419
sll $0, $0, 0
addu $1, $2, $1
TAG419:
lui $1, 9
div $1, $1
bne $1, $1, TAG420
sll $0, $0, 0
TAG420:
mult $1, $1
sll $0, $0, 0
sllv $2, $1, $1
mtlo $1
TAG421:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
divu $2, $2
TAG422:
bgez $2, TAG423
sll $0, $0, 0
lw $2, 0($2)
bgtz $3, TAG423
TAG423:
slt $4, $2, $2
sll $0, $0, 0
lui $4, 0
srl $3, $4, 1
TAG424:
sb $3, 0($3)
lhu $2, 0($3)
mfhi $3
multu $3, $2
TAG425:
bgtz $3, TAG426
sh $3, 0($3)
mflo $3
mult $3, $3
TAG426:
multu $3, $3
mult $3, $3
sltu $4, $3, $3
lui $2, 12
TAG427:
mfhi $2
multu $2, $2
bne $2, $2, TAG428
sh $2, 0($2)
TAG428:
multu $2, $2
srav $3, $2, $2
blez $2, TAG429
slti $4, $3, 8
TAG429:
sllv $2, $4, $4
bne $4, $2, TAG430
multu $4, $2
mflo $4
TAG430:
lui $2, 12
sll $0, $0, 0
sb $4, 0($4)
sll $0, $0, 0
TAG431:
multu $4, $4
sb $4, 0($4)
mflo $4
lbu $2, 0($4)
TAG432:
sb $2, 0($2)
sb $2, 0($2)
andi $3, $2, 14
bgez $3, TAG433
TAG433:
lui $2, 5
sra $3, $2, 6
mfhi $2
mult $3, $2
TAG434:
sb $2, 0($2)
addu $4, $2, $2
lhu $2, 0($2)
addu $2, $2, $2
TAG435:
mult $2, $2
mfhi $4
slt $1, $4, $4
mthi $2
TAG436:
sw $1, 0($1)
lui $3, 13
lui $1, 6
divu $3, $1
TAG437:
sll $0, $0, 0
bgez $1, TAG438
nor $2, $1, $1
mflo $3
TAG438:
sra $2, $3, 3
sll $0, $0, 0
beq $4, $3, TAG439
sll $0, $0, 0
TAG439:
blez $4, TAG440
mthi $4
sh $4, 0($4)
sltiu $1, $4, 14
TAG440:
lui $3, 14
bgez $1, TAG441
sll $0, $0, 0
bne $1, $3, TAG441
TAG441:
addiu $2, $3, 13
sll $0, $0, 0
bltz $2, TAG442
mtlo $2
TAG442:
sll $0, $0, 0
slt $3, $1, $1
lw $3, 0($3)
mfhi $4
TAG443:
beq $4, $4, TAG444
mtlo $4
mthi $4
beq $4, $4, TAG444
TAG444:
mtlo $4
sb $4, 0($4)
mflo $3
mfhi $3
TAG445:
srl $2, $3, 8
bgez $3, TAG446
multu $3, $2
mthi $2
TAG446:
lui $2, 9
lui $4, 11
srl $4, $2, 0
sltiu $4, $4, 2
TAG447:
addu $2, $4, $4
blez $2, TAG448
lui $1, 15
mfhi $3
TAG448:
sw $3, 0($3)
multu $3, $3
mult $3, $3
bgtz $3, TAG449
TAG449:
sh $3, 0($3)
lui $1, 11
bgtz $3, TAG450
lui $2, 15
TAG450:
mflo $2
addi $1, $2, 14
ori $1, $1, 6
sh $2, 0($2)
TAG451:
slt $2, $1, $1
mfhi $4
sh $1, 0($4)
slt $3, $1, $2
TAG452:
mtlo $3
bne $3, $3, TAG453
sltiu $1, $3, 3
sb $1, 0($1)
TAG453:
bgtz $1, TAG454
andi $2, $1, 8
mthi $1
xor $2, $1, $2
TAG454:
sw $2, 0($2)
mult $2, $2
lb $4, 0($2)
bne $2, $2, TAG455
TAG455:
mflo $3
mtlo $4
lh $4, 0($4)
mtlo $3
TAG456:
lh $1, 0($4)
mfhi $4
mflo $4
bgtz $4, TAG457
TAG457:
srav $1, $4, $4
mthi $4
addiu $2, $4, 7
mult $4, $4
TAG458:
mflo $1
lui $2, 12
srl $3, $1, 10
lui $4, 4
TAG459:
and $1, $4, $4
srl $2, $1, 2
mtlo $1
div $1, $4
TAG460:
beq $2, $2, TAG461
sll $0, $0, 0
bne $2, $2, TAG461
mflo $3
TAG461:
sh $3, 0($3)
mfhi $2
bne $3, $3, TAG462
multu $3, $2
TAG462:
sh $2, 0($2)
lw $3, 0($2)
mtlo $3
lui $2, 6
TAG463:
divu $2, $2
bne $2, $2, TAG464
lui $4, 10
beq $4, $4, TAG464
TAG464:
div $4, $4
lui $4, 1
bne $4, $4, TAG465
mthi $4
TAG465:
sllv $4, $4, $4
sll $0, $0, 0
mthi $4
mflo $1
TAG466:
lbu $2, 0($1)
nor $2, $2, $1
lb $4, 0($1)
xori $2, $4, 13
TAG467:
bne $2, $2, TAG468
nor $2, $2, $2
sw $2, 14($2)
mult $2, $2
TAG468:
srlv $2, $2, $2
lw $1, -16383($2)
mtlo $1
bne $2, $2, TAG469
TAG469:
mult $1, $1
mfhi $4
sltu $4, $1, $1
lbu $4, 0($4)
TAG470:
mfhi $1
blez $4, TAG471
mthi $4
beq $1, $4, TAG471
TAG471:
mfhi $4
mfhi $4
sw $4, -242($4)
sb $4, -242($4)
TAG472:
lui $4, 5
blez $4, TAG473
mtlo $4
mthi $4
TAG473:
lui $4, 11
bgtz $4, TAG474
xori $3, $4, 3
bne $4, $4, TAG474
TAG474:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 12
xor $4, $3, $1
TAG475:
blez $4, TAG476
and $2, $4, $4
mtlo $4
mflo $3
TAG476:
mthi $3
ori $2, $3, 4
mthi $3
mfhi $3
TAG477:
sltiu $4, $3, 0
sll $0, $0, 0
addu $3, $1, $3
sll $0, $0, 0
TAG478:
sll $0, $0, 0
mtlo $3
andi $3, $3, 14
sh $3, 0($3)
TAG479:
mfhi $1
div $1, $3
beq $3, $1, TAG480
addiu $4, $1, 9
TAG480:
sll $0, $0, 0
sll $0, $0, 0
sh $4, 0($3)
sll $0, $0, 0
TAG481:
lb $3, 0($3)
or $1, $3, $3
mthi $1
sb $1, 0($3)
TAG482:
lb $4, 0($1)
mfhi $3
beq $3, $1, TAG483
mtlo $1
TAG483:
sb $3, 0($3)
mflo $4
mthi $4
sw $3, 0($3)
TAG484:
multu $4, $4
lh $3, 0($4)
mfhi $4
blez $4, TAG485
TAG485:
addiu $4, $4, 5
mthi $4
lhu $4, 0($4)
bltz $4, TAG486
TAG486:
multu $4, $4
mtlo $4
bgtz $4, TAG487
ori $2, $4, 13
TAG487:
mtlo $2
sb $2, 0($2)
mflo $3
bgtz $2, TAG488
TAG488:
sb $3, 0($3)
lb $4, 0($3)
sb $4, 0($4)
sllv $2, $4, $3
TAG489:
blez $2, TAG490
and $1, $2, $2
lui $2, 8
sll $0, $0, 0
TAG490:
addiu $4, $2, 0
addiu $1, $4, 3
addu $3, $4, $2
mthi $3
TAG491:
bgtz $3, TAG492
mfhi $1
add $3, $3, $1
divu $1, $3
TAG492:
beq $3, $3, TAG493
mfhi $4
divu $3, $3
sw $3, 0($3)
TAG493:
multu $4, $4
beq $4, $4, TAG494
mtlo $4
lui $3, 13
TAG494:
multu $3, $3
mult $3, $3
mtlo $3
sll $0, $0, 0
TAG495:
nor $1, $1, $1
beq $1, $1, TAG496
mult $1, $1
sw $1, 0($1)
TAG496:
sll $0, $0, 0
beq $1, $1, TAG497
subu $2, $1, $1
mthi $2
TAG497:
lui $3, 7
beq $3, $3, TAG498
lhu $4, 0($2)
sllv $3, $3, $4
TAG498:
sll $0, $0, 0
mflo $2
bgtz $2, TAG499
andi $4, $2, 7
TAG499:
bgtz $4, TAG500
lbu $1, 0($4)
mfhi $1
sra $3, $1, 0
TAG500:
bne $3, $3, TAG501
divu $3, $3
xori $3, $3, 3
ori $1, $3, 4
TAG501:
andi $4, $1, 5
mfhi $2
sll $0, $0, 0
lui $2, 4
TAG502:
bltz $2, TAG503
lui $1, 13
bgtz $1, TAG503
mthi $2
TAG503:
bltz $1, TAG504
sll $0, $0, 0
mult $1, $4
sll $0, $0, 0
TAG504:
bne $2, $2, TAG505
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
TAG505:
beq $1, $1, TAG506
and $4, $1, $1
lui $1, 13
lb $3, 0($1)
TAG506:
and $2, $3, $3
sltu $4, $2, $2
sll $0, $0, 0
mfhi $3
TAG507:
srl $4, $3, 3
sw $3, 0($4)
mult $4, $4
lui $4, 12
TAG508:
lui $1, 9
lui $2, 15
multu $2, $4
mtlo $2
TAG509:
addiu $4, $2, 13
srl $1, $2, 0
bgez $1, TAG510
addiu $1, $1, 14
TAG510:
mthi $1
divu $1, $1
or $1, $1, $1
or $4, $1, $1
TAG511:
bne $4, $4, TAG512
mthi $4
bgez $4, TAG512
lui $4, 8
TAG512:
sltu $3, $4, $4
mflo $3
bgez $3, TAG513
or $2, $3, $4
TAG513:
bne $2, $2, TAG514
mtlo $2
sll $0, $0, 0
mflo $3
TAG514:
mtlo $3
lui $4, 11
sll $0, $0, 0
lui $4, 9
TAG515:
multu $4, $4
lui $1, 7
bne $4, $4, TAG516
mtlo $4
TAG516:
sll $0, $0, 0
bgez $1, TAG517
andi $2, $1, 7
andi $1, $2, 10
TAG517:
sll $0, $0, 0
bne $1, $1, TAG518
and $3, $1, $1
beq $1, $1, TAG518
TAG518:
sll $0, $0, 0
sra $2, $3, 6
sltu $4, $2, $2
mtlo $4
TAG519:
lb $1, 0($4)
bltz $4, TAG520
mfhi $4
blez $4, TAG520
TAG520:
mfhi $1
multu $4, $4
mfhi $2
mult $2, $4
TAG521:
lui $4, 1
mult $4, $4
sw $4, 0($2)
lui $1, 11
TAG522:
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
multu $1, $1
TAG523:
lui $1, 9
mthi $1
sra $1, $1, 12
lui $1, 13
TAG524:
mthi $1
lui $3, 14
lui $1, 10
lui $1, 15
TAG525:
blez $1, TAG526
mflo $4
mflo $2
mfhi $4
TAG526:
addu $1, $4, $4
mtlo $1
bne $4, $4, TAG527
addiu $2, $4, 3
TAG527:
sll $0, $0, 0
mtlo $2
divu $2, $2
slt $2, $2, $2
TAG528:
multu $2, $2
mult $2, $2
sh $2, 0($2)
lui $1, 3
TAG529:
mtlo $1
sll $0, $0, 0
lui $1, 11
nor $4, $1, $4
TAG530:
lui $1, 9
lui $2, 8
mfhi $3
lui $3, 6
TAG531:
bgez $3, TAG532
lui $4, 14
blez $3, TAG532
lui $2, 9
TAG532:
bne $2, $2, TAG533
ori $3, $2, 15
subu $1, $2, $3
sll $0, $0, 0
TAG533:
lui $2, 4
mflo $3
mfhi $2
sll $0, $0, 0
TAG534:
sll $0, $0, 0
sra $2, $3, 2
sll $0, $0, 0
lui $3, 0
TAG535:
srl $2, $3, 4
lui $2, 3
div $3, $2
bne $2, $2, TAG536
TAG536:
srl $4, $2, 6
sw $4, -3072($4)
mult $2, $4
mflo $1
TAG537:
bne $1, $1, TAG538
mfhi $2
slti $3, $1, 11
lbu $1, 0($3)
TAG538:
sw $1, 0($1)
mtlo $1
bgez $1, TAG539
lb $4, 0($1)
TAG539:
mflo $4
lui $2, 0
multu $2, $4
beq $4, $4, TAG540
TAG540:
sra $2, $2, 1
addiu $1, $2, 11
lb $2, 0($1)
lui $1, 2
TAG541:
mfhi $3
beq $3, $3, TAG542
sh $1, 0($3)
andi $3, $3, 7
TAG542:
sra $4, $3, 13
bltz $3, TAG543
mfhi $1
multu $1, $3
TAG543:
multu $1, $1
nor $3, $1, $1
multu $1, $1
srav $2, $1, $3
TAG544:
add $3, $2, $2
bne $3, $3, TAG545
addi $2, $2, 10
nor $2, $3, $2
TAG545:
beq $2, $2, TAG546
lui $4, 13
beq $4, $2, TAG546
lw $1, 0($2)
TAG546:
mflo $3
lui $4, 11
slti $1, $1, 13
bltz $1, TAG547
TAG547:
addiu $3, $1, 6
bne $1, $1, TAG548
sra $2, $3, 8
lui $4, 12
TAG548:
mthi $4
multu $4, $4
divu $4, $4
mfhi $2
TAG549:
mtlo $2
xori $2, $2, 9
sb $2, 0($2)
sb $2, 0($2)
TAG550:
sltu $1, $2, $2
lui $4, 6
slti $2, $4, 2
lui $1, 1
TAG551:
bne $1, $1, TAG552
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG552:
sll $0, $0, 0
lbu $2, 0($3)
ori $3, $1, 15
mflo $2
TAG553:
addi $1, $2, 1
mfhi $1
mthi $1
srl $4, $1, 13
TAG554:
nor $4, $4, $4
addu $3, $4, $4
bgez $4, TAG555
mfhi $2
TAG555:
lbu $3, 0($2)
sw $3, 0($2)
mfhi $1
sub $2, $1, $1
TAG556:
slt $3, $2, $2
mflo $4
ori $1, $3, 8
beq $2, $3, TAG557
TAG557:
lhu $2, 0($1)
lh $4, 0($1)
blez $4, TAG558
mthi $2
TAG558:
bltz $4, TAG559
addu $3, $4, $4
lb $4, -2312($4)
multu $3, $4
TAG559:
mthi $4
lb $1, 0($4)
multu $1, $1
multu $1, $4
TAG560:
beq $1, $1, TAG561
sb $1, 0($1)
beq $1, $1, TAG561
sb $1, 0($1)
TAG561:
mflo $2
sllv $3, $2, $2
sb $1, 0($3)
bltz $3, TAG562
TAG562:
mfhi $3
mfhi $3
lui $1, 15
mflo $3
TAG563:
sb $3, 0($3)
slt $3, $3, $3
lui $1, 11
blez $3, TAG564
TAG564:
multu $1, $1
bne $1, $1, TAG565
sllv $3, $1, $1
sll $0, $0, 0
TAG565:
sltu $1, $3, $3
lhu $1, 0($1)
lui $2, 15
bltz $1, TAG566
TAG566:
addiu $1, $2, 0
sll $0, $0, 0
slti $3, $2, 0
mfhi $4
TAG567:
lbu $4, 0($4)
mfhi $3
lb $4, 0($3)
mflo $2
TAG568:
multu $2, $2
lui $4, 14
div $2, $4
sll $1, $4, 13
TAG569:
srl $3, $1, 0
ori $4, $1, 9
sll $4, $3, 8
sll $0, $0, 0
TAG570:
multu $4, $4
multu $4, $4
mtlo $4
bgez $4, TAG571
TAG571:
slt $3, $4, $4
bgez $4, TAG572
mthi $4
lui $3, 3
TAG572:
andi $4, $3, 5
mult $4, $3
sltu $1, $4, $3
bne $3, $1, TAG573
TAG573:
sltu $1, $1, $1
sltu $1, $1, $1
sh $1, 0($1)
lui $2, 0
TAG574:
bgez $2, TAG575
mult $2, $2
mflo $2
lb $2, 0($2)
TAG575:
lui $1, 2
sh $1, 0($2)
lui $1, 7
blez $2, TAG576
TAG576:
sll $4, $1, 11
mtlo $1
mult $4, $1
mthi $1
TAG577:
bgtz $4, TAG578
mfhi $2
addi $4, $4, 12
bgtz $4, TAG578
TAG578:
mtlo $4
bne $4, $4, TAG579
mtlo $4
addiu $3, $4, 1
TAG579:
lui $3, 6
addiu $4, $3, 9
mthi $4
lui $1, 8
TAG580:
lui $3, 2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG581:
lui $1, 3
sll $0, $0, 0
xori $4, $1, 4
lui $2, 4
TAG582:
bgez $2, TAG583
mthi $2
beq $2, $2, TAG583
lb $1, 0($2)
TAG583:
bne $1, $1, TAG584
sll $0, $0, 0
lui $2, 14
mult $2, $2
TAG584:
sllv $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
lui $4, 0
TAG585:
mfhi $1
mfhi $3
sw $1, -196($3)
bne $4, $1, TAG586
TAG586:
mthi $3
lui $3, 11
xori $4, $3, 14
sll $0, $0, 0
TAG587:
sll $0, $0, 0
lui $1, 9
bgtz $1, TAG588
mthi $2
TAG588:
bgez $1, TAG589
mthi $1
lui $2, 5
srav $1, $1, $2
TAG589:
multu $1, $1
nor $3, $1, $1
bgez $3, TAG590
sll $0, $0, 0
TAG590:
bltz $3, TAG591
srl $4, $3, 5
sw $4, 0($4)
slt $1, $3, $4
TAG591:
mfhi $2
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
TAG592:
bne $2, $2, TAG593
mfhi $3
div $2, $3
bgez $2, TAG593
TAG593:
mflo $4
beq $4, $4, TAG594
lui $4, 9
blez $4, TAG594
TAG594:
sll $0, $0, 0
mflo $2
lb $3, 0($2)
mtlo $3
TAG595:
mtlo $3
bgez $3, TAG596
addu $2, $3, $3
mtlo $2
TAG596:
mflo $4
lui $4, 3
divu $2, $4
lh $4, 0($2)
TAG597:
mthi $4
mthi $4
lui $3, 5
lui $2, 12
TAG598:
multu $2, $2
lui $4, 0
sll $0, $0, 0
beq $2, $4, TAG599
TAG599:
sw $4, 0($4)
mflo $4
bne $4, $4, TAG600
sh $4, 0($4)
TAG600:
sub $2, $4, $4
sw $2, 0($4)
bgez $2, TAG601
sb $2, 0($4)
TAG601:
slti $1, $2, 10
slti $2, $2, 10
nor $1, $1, $2
beq $2, $1, TAG602
TAG602:
addiu $1, $1, 7
lbu $4, 0($1)
mflo $1
mthi $4
TAG603:
ori $2, $1, 2
mthi $2
nor $2, $2, $2
sw $2, 3($2)
TAG604:
div $2, $2
multu $2, $2
mtlo $2
mthi $2
TAG605:
sh $2, 3($2)
sra $2, $2, 4
lui $4, 1
bltz $2, TAG606
TAG606:
multu $4, $4
multu $4, $4
div $4, $4
lui $3, 10
TAG607:
sll $0, $0, 0
mult $1, $3
mflo $3
bltz $3, TAG608
TAG608:
lui $2, 11
bne $2, $3, TAG609
mult $3, $3
lb $2, 0($2)
TAG609:
sll $1, $2, 3
mthi $2
or $2, $1, $1
lui $4, 15
TAG610:
sra $1, $4, 14
srav $1, $1, $1
lhu $1, 0($1)
lui $4, 12
TAG611:
mult $4, $4
blez $4, TAG612
addu $1, $4, $4
sll $0, $0, 0
TAG612:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
lui $4, 15
TAG613:
nor $2, $4, $4
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG614:
sllv $3, $1, $1
mult $3, $1
mflo $1
sll $0, $0, 0
TAG615:
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $2, 1
sll $4, $2, 0
TAG616:
bltz $4, TAG617
lh $2, 0($4)
multu $2, $4
bgez $4, TAG617
TAG617:
sll $0, $0, 0
lui $3, 13
slti $1, $2, 0
bltz $2, TAG618
TAG618:
mtlo $1
beq $1, $1, TAG619
divu $1, $1
mfhi $1
TAG619:
addiu $3, $1, 4
mthi $3
lui $1, 15
sll $0, $0, 0
TAG620:
srl $4, $1, 2
srl $1, $1, 6
mfhi $2
sb $2, 0($2)
TAG621:
subu $1, $2, $2
mult $1, $1
subu $3, $1, $2
ori $2, $2, 4
TAG622:
sllv $4, $2, $2
bne $2, $4, TAG623
sltu $2, $4, $4
lui $2, 4
TAG623:
srav $2, $2, $2
sllv $3, $2, $2
srlv $2, $2, $2
sh $2, 0($2)
TAG624:
srl $3, $2, 13
mtlo $3
bgtz $3, TAG625
multu $2, $3
TAG625:
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
lui $4, 15
TAG626:
sll $0, $0, 0
lui $4, 11
xori $1, $4, 8
lui $3, 2
TAG627:
bgtz $3, TAG628
sll $0, $0, 0
ori $4, $3, 14
sh $4, 0($3)
TAG628:
bgez $4, TAG629
divu $4, $4
lui $3, 7
sub $3, $3, $4
TAG629:
and $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG630:
addu $1, $2, $2
div $2, $2
mflo $2
blez $2, TAG631
TAG631:
mfhi $4
sh $2, 0($4)
sltiu $4, $2, 8
lb $2, 0($2)
TAG632:
blez $2, TAG633
mflo $4
sb $4, 0($4)
lh $2, 0($4)
TAG633:
slt $3, $2, $2
bgez $3, TAG634
mult $3, $2
beq $2, $3, TAG634
TAG634:
sub $2, $3, $3
mflo $2
bltz $2, TAG635
sh $2, 0($2)
TAG635:
mflo $1
lbu $4, 0($1)
lui $3, 13
multu $3, $2
TAG636:
mfhi $2
mult $3, $3
lui $1, 7
mfhi $1
TAG637:
sb $1, -169($1)
mfhi $3
addu $3, $1, $3
mthi $3
TAG638:
mtlo $3
mflo $2
sh $3, -338($2)
srav $2, $3, $3
TAG639:
lui $1, 0
lui $4, 9
srav $1, $1, $1
beq $2, $1, TAG640
TAG640:
sw $1, 0($1)
sw $1, 0($1)
bne $1, $1, TAG641
sw $1, 0($1)
TAG641:
sb $1, 0($1)
multu $1, $1
sb $1, 0($1)
lbu $1, 0($1)
TAG642:
mflo $1
lui $4, 9
beq $1, $1, TAG643
lui $1, 8
TAG643:
mflo $4
sll $0, $0, 0
sltiu $4, $1, 13
sll $0, $0, 0
TAG644:
mfhi $1
mtlo $4
mthi $4
lb $1, 0($4)
TAG645:
lw $2, 0($1)
slti $1, $1, 9
lb $3, 0($1)
bgez $1, TAG646
TAG646:
lui $3, 8
blez $3, TAG647
sll $0, $0, 0
nor $4, $3, $3
TAG647:
mfhi $4
blez $4, TAG648
mtlo $4
xori $1, $4, 9
TAG648:
lui $3, 4
nor $2, $3, $1
sltiu $3, $1, 9
lbu $4, 0($1)
TAG649:
bgez $4, TAG650
lw $1, 0($4)
bne $1, $1, TAG650
xori $2, $1, 5
TAG650:
bne $2, $2, TAG651
addu $2, $2, $2
div $2, $2
sll $0, $0, 0
TAG651:
mult $4, $4
mtlo $4
bne $4, $4, TAG652
multu $4, $4
TAG652:
mfhi $1
srav $2, $1, $4
blez $4, TAG653
mult $2, $1
TAG653:
sll $2, $2, 15
lw $1, 0($2)
sllv $3, $1, $2
sb $2, 0($2)
TAG654:
multu $3, $3
mthi $3
bgtz $3, TAG655
lui $2, 13
TAG655:
andi $2, $2, 8
sra $1, $2, 8
blez $2, TAG656
multu $2, $2
TAG656:
bne $1, $1, TAG657
mult $1, $1
sb $1, 0($1)
addiu $3, $1, 5
TAG657:
beq $3, $3, TAG658
mult $3, $3
bne $3, $3, TAG658
lui $4, 5
TAG658:
multu $4, $4
andi $1, $4, 15
multu $4, $1
mult $1, $4
TAG659:
add $4, $1, $1
sw $4, 0($4)
lui $3, 0
sb $3, 0($4)
TAG660:
multu $3, $3
sra $1, $3, 8
bgtz $1, TAG661
lb $4, 0($1)
TAG661:
mthi $4
mult $4, $4
lh $1, 0($4)
lh $4, 0($1)
TAG662:
addi $2, $4, 1
mfhi $3
lbu $3, 0($2)
mthi $3
TAG663:
bne $3, $3, TAG664
lb $4, 0($3)
mtlo $3
bgez $3, TAG664
TAG664:
lhu $4, 0($4)
sh $4, 0($4)
lui $3, 2
sll $0, $0, 0
TAG665:
nor $2, $3, $3
slt $3, $2, $3
sll $0, $0, 0
sb $3, 0($3)
TAG666:
sra $2, $3, 12
bne $3, $3, TAG667
mult $2, $3
mfhi $2
TAG667:
mthi $2
subu $3, $2, $2
blez $2, TAG668
sltu $3, $3, $3
TAG668:
mflo $2
mult $2, $3
mfhi $1
addiu $2, $2, 9
TAG669:
addu $2, $2, $2
lh $2, 0($2)
mult $2, $2
sh $2, 0($2)
TAG670:
multu $2, $2
mfhi $2
mflo $1
mflo $4
TAG671:
mtlo $4
mflo $1
sra $2, $4, 11
lhu $4, 0($4)
TAG672:
bgez $4, TAG673
lhu $3, 0($4)
xori $4, $3, 10
multu $3, $3
TAG673:
bgez $4, TAG674
or $3, $4, $4
sub $3, $3, $4
divu $4, $4
TAG674:
sw $3, 0($3)
sh $3, 0($3)
mthi $3
subu $3, $3, $3
TAG675:
beq $3, $3, TAG676
mult $3, $3
mult $3, $3
mult $3, $3
TAG676:
multu $3, $3
bne $3, $3, TAG677
sb $3, 0($3)
sltiu $3, $3, 2
TAG677:
mfhi $4
beq $3, $3, TAG678
lbu $4, 0($3)
bltz $4, TAG678
TAG678:
lh $1, 0($4)
add $3, $4, $1
multu $3, $1
lui $3, 14
TAG679:
subu $1, $3, $3
mthi $1
sll $0, $0, 0
mflo $4
TAG680:
ori $2, $4, 14
sh $4, 0($2)
sh $4, 0($2)
bgez $2, TAG681
TAG681:
sll $2, $2, 15
bltz $2, TAG682
divu $2, $2
mfhi $2
TAG682:
mtlo $2
bne $2, $2, TAG683
sra $4, $2, 12
slti $4, $4, 6
TAG683:
sb $4, 0($4)
mfhi $4
ori $1, $4, 8
mfhi $3
TAG684:
addiu $2, $3, 15
beq $3, $2, TAG685
sb $3, 0($2)
lui $1, 9
TAG685:
sll $0, $0, 0
mult $2, $2
lui $4, 9
lui $4, 6
TAG686:
beq $4, $4, TAG687
multu $4, $4
divu $4, $4
lui $3, 15
TAG687:
lui $3, 12
bltz $3, TAG688
sll $0, $0, 0
lui $4, 3
TAG688:
mult $4, $4
bltz $4, TAG689
mult $4, $4
bltz $4, TAG689
TAG689:
mtlo $4
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG690:
andi $2, $4, 10
lb $3, 0($2)
mtlo $3
mtlo $4
TAG691:
or $4, $3, $3
multu $4, $3
mult $4, $4
sw $4, 0($4)
TAG692:
mult $4, $4
lh $3, 0($4)
mthi $4
ori $1, $4, 6
TAG693:
divu $1, $1
sh $1, 0($1)
mflo $3
sra $4, $1, 3
TAG694:
mult $4, $4
beq $4, $4, TAG695
mflo $1
mthi $1
TAG695:
beq $1, $1, TAG696
lui $2, 10
blez $2, TAG696
andi $1, $1, 4
TAG696:
mult $1, $1
sw $1, 0($1)
srl $1, $1, 2
sw $1, 0($1)
TAG697:
mfhi $2
lui $1, 11
mfhi $3
bne $3, $1, TAG698
TAG698:
sh $3, 0($3)
beq $3, $3, TAG699
andi $1, $3, 8
nor $3, $3, $1
TAG699:
bltz $3, TAG700
mflo $2
lui $4, 3
sh $3, 0($3)
TAG700:
sll $0, $0, 0
bne $4, $4, TAG701
mfhi $4
lhu $3, 0($4)
TAG701:
mult $3, $3
lh $4, 0($3)
multu $4, $4
sb $4, 0($3)
TAG702:
ori $4, $4, 2
beq $4, $4, TAG703
mfhi $2
beq $2, $4, TAG703
TAG703:
xori $2, $2, 2
mtlo $2
sra $3, $2, 13
srl $2, $2, 8
TAG704:
multu $2, $2
beq $2, $2, TAG705
sra $3, $2, 7
bne $3, $3, TAG705
TAG705:
multu $3, $3
mflo $1
lui $3, 7
bgtz $3, TAG706
TAG706:
sll $0, $0, 0
xor $3, $3, $3
mthi $3
addi $2, $3, 6
TAG707:
sb $2, 0($2)
multu $2, $2
srl $4, $2, 5
lui $2, 4
TAG708:
divu $2, $2
multu $2, $2
andi $3, $2, 4
sb $2, 0($3)
TAG709:
multu $3, $3
mtlo $3
sw $3, 0($3)
lb $3, 0($3)
TAG710:
blez $3, TAG711
addi $3, $3, 12
lui $4, 2
lui $2, 7
TAG711:
bne $2, $2, TAG712
andi $2, $2, 1
lw $1, 0($2)
lhu $4, 0($2)
TAG712:
sllv $4, $4, $4
bgtz $4, TAG713
xori $1, $4, 7
mfhi $4
TAG713:
andi $2, $4, 8
lui $3, 2
sll $0, $0, 0
mfhi $1
TAG714:
bgtz $1, TAG715
mult $1, $1
bgez $1, TAG715
multu $1, $1
TAG715:
srlv $3, $1, $1
bgtz $1, TAG716
lhu $4, 0($1)
sub $2, $4, $3
TAG716:
mthi $2
mtlo $2
mtlo $2
mult $2, $2
TAG717:
andi $3, $2, 0
beq $3, $3, TAG718
mflo $1
mult $2, $3
TAG718:
lui $3, 1
addu $2, $3, $3
blez $2, TAG719
sll $0, $0, 0
TAG719:
sll $0, $0, 0
subu $1, $2, $2
bltz $2, TAG720
sll $0, $0, 0
TAG720:
mthi $1
lui $2, 13
lhu $4, 0($1)
sb $2, 0($4)
TAG721:
bltz $4, TAG722
multu $4, $4
and $2, $4, $4
beq $2, $4, TAG722
TAG722:
sll $2, $2, 3
sh $2, 0($2)
mult $2, $2
mthi $2
TAG723:
multu $2, $2
sub $2, $2, $2
mfhi $4
sw $2, 0($2)
TAG724:
nor $4, $4, $4
subu $1, $4, $4
mthi $4
mult $4, $4
TAG725:
sb $1, 0($1)
mthi $1
lui $1, 8
div $1, $1
TAG726:
mthi $1
divu $1, $1
mfhi $1
sub $4, $1, $1
TAG727:
mfhi $2
sb $2, 0($4)
sll $1, $2, 5
mtlo $4
TAG728:
bne $1, $1, TAG729
addu $3, $1, $1
andi $1, $3, 14
bne $1, $3, TAG729
TAG729:
mthi $1
sh $1, 0($1)
xori $3, $1, 14
lb $1, 0($3)
TAG730:
beq $1, $1, TAG731
multu $1, $1
lw $1, 0($1)
mfhi $2
TAG731:
multu $2, $2
mfhi $4
lui $4, 14
sra $1, $4, 2
TAG732:
mflo $1
mult $1, $1
nor $4, $1, $1
bltz $1, TAG733
TAG733:
sw $4, 1($4)
sw $4, 1($4)
srlv $4, $4, $4
mult $4, $4
TAG734:
blez $4, TAG735
mtlo $4
sllv $3, $4, $4
sb $4, 0($4)
TAG735:
multu $3, $3
mthi $3
lui $4, 8
div $3, $3
TAG736:
sll $0, $0, 0
mflo $2
srl $3, $4, 13
lb $4, 0($3)
TAG737:
sb $4, 0($4)
addiu $3, $4, 9
sb $3, 0($4)
addu $1, $4, $3
TAG738:
mtlo $1
bltz $1, TAG739
divu $1, $1
sb $1, 0($1)
TAG739:
lb $3, 0($1)
lui $3, 14
sll $0, $0, 0
multu $1, $3
TAG740:
blez $3, TAG741
nor $2, $3, $3
multu $2, $2
mtlo $2
TAG741:
ori $4, $2, 10
bgez $2, TAG742
mult $4, $2
mtlo $4
TAG742:
divu $4, $4
mfhi $1
sb $1, 0($1)
mthi $4
TAG743:
lb $2, 0($1)
mflo $4
sw $4, 0($2)
bne $4, $4, TAG744
TAG744:
sra $4, $4, 12
mthi $4
bne $4, $4, TAG745
sb $4, 0($4)
TAG745:
lh $3, 0($4)
sra $4, $4, 13
sltu $4, $4, $4
beq $4, $4, TAG746
TAG746:
lui $4, 0
sllv $3, $4, $4
mfhi $2
sw $2, 0($4)
TAG747:
andi $3, $2, 5
mtlo $3
ori $1, $2, 3
nor $3, $1, $1
TAG748:
and $1, $3, $3
xori $4, $3, 13
div $4, $4
sh $3, 4($1)
TAG749:
lui $3, 2
beq $4, $4, TAG750
mthi $4
mtlo $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop