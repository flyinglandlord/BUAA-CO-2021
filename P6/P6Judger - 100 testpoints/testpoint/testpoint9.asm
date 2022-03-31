ori $1, $0, 6
ori $2, $0, 11
ori $3, $0, 3
ori $4, $0, 8
sw $2, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $2, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $4, 124($0)
lui $4, 2
bne $4, $4, TAG1
sb $2, 0($2)
beq $4, $4, TAG1
TAG1:
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
bgez $4, TAG2
TAG2:
sll $0, $0, 0
nor $3, $4, $4
mflo $2
bgez $1, TAG3
TAG3:
sll $3, $2, 5
beq $3, $3, TAG4
sb $2, 0($2)
mflo $1
TAG4:
div $1, $1
lui $1, 6
div $1, $1
lui $2, 15
TAG5:
sll $0, $0, 0
bne $2, $2, TAG6
mtlo $2
xor $4, $2, $2
TAG6:
sh $4, 0($4)
mult $4, $4
mthi $4
sb $4, 0($4)
TAG7:
lui $1, 4
or $3, $1, $1
sltiu $3, $4, 15
lb $3, 0($3)
TAG8:
srav $3, $3, $3
andi $1, $3, 12
sh $1, 0($3)
ori $3, $3, 5
TAG9:
sb $3, 0($3)
lui $2, 8
sb $2, 0($3)
bltz $2, TAG10
TAG10:
sll $3, $2, 11
subu $3, $2, $3
lui $4, 14
bltz $2, TAG11
TAG11:
sll $0, $0, 0
mflo $4
and $2, $4, $4
mult $4, $2
TAG12:
mfhi $4
mflo $3
nor $2, $3, $3
mthi $2
TAG13:
mtlo $2
lb $3, 1($2)
mflo $2
mtlo $3
TAG14:
mtlo $2
lb $4, 1($2)
sh $4, 0($4)
lui $4, 11
TAG15:
sll $0, $0, 0
srl $4, $4, 13
bgez $4, TAG16
lh $3, 0($4)
TAG16:
lui $2, 8
bgtz $2, TAG17
mflo $3
sll $4, $3, 0
TAG17:
beq $4, $4, TAG18
sw $4, 0($4)
lw $3, 0($4)
addiu $3, $4, 1
TAG18:
divu $3, $3
sltiu $1, $3, 0
bgez $3, TAG19
multu $1, $3
TAG19:
bne $1, $1, TAG20
lui $2, 5
mthi $1
mfhi $4
TAG20:
mthi $4
mthi $4
bltz $4, TAG21
mult $4, $4
TAG21:
sltu $3, $4, $4
slt $1, $3, $3
sw $3, 0($3)
mthi $1
TAG22:
mthi $1
lui $4, 4
lui $1, 8
lui $4, 13
TAG23:
sllv $1, $4, $4
sll $0, $0, 0
lui $3, 1
mthi $1
TAG24:
xori $4, $3, 7
lui $3, 6
sll $0, $0, 0
sll $4, $4, 15
TAG25:
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG26:
bne $3, $3, TAG27
sltu $3, $3, $3
beq $3, $3, TAG27
lh $1, 0($3)
TAG27:
bltz $1, TAG28
sh $1, 0($1)
mflo $1
lui $3, 14
TAG28:
bne $3, $3, TAG29
div $3, $3
addu $4, $3, $3
divu $4, $4
TAG29:
nor $3, $4, $4
mtlo $4
lui $1, 7
bgtz $4, TAG30
TAG30:
mthi $1
sll $0, $0, 0
div $1, $1
mult $2, $1
TAG31:
bltz $2, TAG32
addiu $1, $2, 11
sllv $4, $1, $1
beq $4, $1, TAG32
TAG32:
srlv $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG33:
sltiu $2, $2, 7
and $4, $2, $2
mfhi $3
lhu $2, 0($2)
TAG34:
lh $4, 0($2)
bltz $4, TAG35
sub $3, $4, $2
mtlo $3
TAG35:
mflo $2
bne $2, $2, TAG36
mfhi $3
bne $3, $3, TAG36
TAG36:
mfhi $3
lbu $4, 0($3)
andi $2, $4, 2
lui $3, 10
TAG37:
lui $3, 2
bltz $3, TAG38
subu $1, $3, $3
lui $1, 5
TAG38:
addiu $3, $1, 4
mthi $3
divu $3, $3
mflo $2
TAG39:
nor $2, $2, $2
mfhi $4
mthi $4
or $1, $4, $2
TAG40:
mfhi $2
lhu $1, 2($1)
multu $1, $1
mthi $1
TAG41:
multu $1, $1
lbu $3, 0($1)
mtlo $3
sllv $2, $1, $1
TAG42:
bne $2, $2, TAG43
addiu $3, $2, 4
multu $2, $2
bgez $2, TAG43
TAG43:
multu $3, $3
lbu $3, 0($3)
sb $3, 0($3)
div $3, $3
TAG44:
lui $3, 9
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG45:
slt $1, $3, $3
lui $3, 12
lui $3, 7
multu $3, $1
TAG46:
sll $0, $0, 0
xor $2, $1, $1
mthi $1
sll $0, $0, 0
TAG47:
bne $4, $4, TAG48
lhu $1, 0($4)
mflo $3
bne $4, $1, TAG48
TAG48:
mflo $1
mthi $3
sw $1, 0($1)
mult $1, $1
TAG49:
lui $1, 7
mthi $1
mfhi $3
mthi $3
TAG50:
divu $3, $3
subu $4, $3, $3
mflo $2
lui $3, 6
TAG51:
sll $0, $0, 0
divu $3, $1
bne $1, $1, TAG52
xor $4, $3, $3
TAG52:
bltz $4, TAG53
lbu $4, 0($4)
mult $4, $4
slt $2, $4, $4
TAG53:
lui $4, 15
sw $2, 0($2)
sll $0, $0, 0
mthi $2
TAG54:
sll $0, $0, 0
mfhi $1
mthi $4
mthi $1
TAG55:
mflo $4
beq $4, $1, TAG56
lui $1, 3
beq $1, $1, TAG56
TAG56:
and $2, $1, $1
bne $1, $2, TAG57
sll $0, $0, 0
bne $1, $2, TAG57
TAG57:
mthi $2
blez $2, TAG58
mflo $2
mthi $2
TAG58:
beq $2, $2, TAG59
subu $3, $2, $2
mfhi $3
div $3, $3
TAG59:
lui $3, 0
multu $3, $3
sb $3, 0($3)
mflo $1
TAG60:
mflo $4
mthi $1
blez $1, TAG61
lw $1, 0($4)
TAG61:
mtlo $1
subu $2, $1, $1
lui $3, 7
mflo $3
TAG62:
sltu $3, $3, $3
sh $3, 0($3)
sb $3, 0($3)
mthi $3
TAG63:
bne $3, $3, TAG64
multu $3, $3
mthi $3
mult $3, $3
TAG64:
beq $3, $3, TAG65
mfhi $2
bgtz $2, TAG65
sll $2, $2, 13
TAG65:
sw $2, 0($2)
bgez $2, TAG66
lui $3, 4
sll $1, $3, 13
TAG66:
sll $3, $1, 15
lui $1, 15
sll $0, $0, 0
srav $2, $1, $3
TAG67:
mthi $2
slt $3, $2, $2
mflo $1
addiu $4, $3, 4
TAG68:
lui $2, 14
lui $4, 3
mtlo $2
sll $0, $0, 0
TAG69:
sll $0, $0, 0
and $3, $1, $1
sll $0, $0, 0
and $1, $3, $4
TAG70:
srav $1, $1, $1
addiu $4, $1, 6
srav $1, $4, $1
srlv $2, $1, $1
TAG71:
sw $2, 0($2)
mflo $2
mflo $1
div $1, $2
TAG72:
multu $1, $1
sll $0, $0, 0
beq $1, $1, TAG73
sll $0, $0, 0
TAG73:
bgez $1, TAG74
addiu $1, $1, 10
sb $1, 0($1)
lh $2, 0($1)
TAG74:
mult $2, $2
lui $4, 11
bne $4, $4, TAG75
div $4, $4
TAG75:
beq $4, $4, TAG76
sll $0, $0, 0
sh $4, 0($2)
mfhi $1
TAG76:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG77
mflo $4
TAG77:
mtlo $4
divu $4, $4
lui $2, 6
bne $4, $2, TAG78
TAG78:
sll $0, $0, 0
srlv $4, $2, $2
srlv $1, $4, $2
mthi $1
TAG79:
bne $1, $1, TAG80
addiu $4, $1, 3
lui $1, 4
sll $0, $0, 0
TAG80:
mflo $2
mult $2, $2
mfhi $3
mthi $3
TAG81:
mflo $3
bne $3, $3, TAG82
xor $4, $3, $3
sltu $3, $3, $3
TAG82:
sw $3, 0($3)
multu $3, $3
bgez $3, TAG83
lui $2, 12
TAG83:
lui $1, 3
sltiu $1, $1, 5
mult $2, $2
sw $1, 0($1)
TAG84:
multu $1, $1
lui $3, 0
mult $1, $1
lbu $4, 0($3)
TAG85:
srl $1, $4, 7
mtlo $4
sra $3, $4, 6
mfhi $2
TAG86:
bltz $2, TAG87
mfhi $2
bgtz $2, TAG87
sb $2, 0($2)
TAG87:
lui $2, 1
lui $2, 10
sll $0, $0, 0
multu $2, $3
TAG88:
lb $3, 0($3)
mult $3, $3
mtlo $3
mtlo $3
TAG89:
mult $3, $3
lh $3, 0($3)
sh $3, 0($3)
lui $4, 11
TAG90:
multu $4, $4
subu $4, $4, $4
sll $2, $4, 11
mflo $3
TAG91:
lui $4, 4
ori $4, $3, 13
lui $2, 12
sb $2, 0($3)
TAG92:
beq $2, $2, TAG93
mtlo $2
mtlo $2
mflo $4
TAG93:
lb $4, 0($4)
lhu $4, 0($4)
mfhi $2
lui $4, 14
TAG94:
lui $2, 13
mfhi $4
slti $2, $2, 15
mthi $4
TAG95:
bgez $2, TAG96
sltiu $2, $2, 1
mthi $2
sh $2, 0($2)
TAG96:
beq $2, $2, TAG97
lui $4, 1
beq $2, $2, TAG97
mthi $4
TAG97:
lui $4, 8
mtlo $4
sll $0, $0, 0
div $4, $4
TAG98:
ori $3, $4, 7
bltz $4, TAG99
sltiu $1, $4, 9
sll $0, $0, 0
TAG99:
addi $2, $1, 3
multu $1, $1
lb $4, 0($2)
bgez $4, TAG100
TAG100:
lui $4, 13
nor $1, $4, $4
divu $1, $4
blez $4, TAG101
TAG101:
sll $0, $0, 0
lui $3, 2
blez $1, TAG102
lui $3, 5
TAG102:
sll $0, $0, 0
bne $3, $3, TAG103
divu $3, $3
lui $4, 4
TAG103:
lui $1, 5
subu $1, $1, $1
sll $0, $0, 0
bltz $1, TAG104
TAG104:
sll $0, $0, 0
mthi $4
bgtz $4, TAG105
mtlo $4
TAG105:
mflo $4
sltiu $2, $4, 5
xori $4, $4, 3
mult $4, $4
TAG106:
sltiu $4, $4, 6
sw $4, 0($4)
nor $2, $4, $4
mtlo $2
TAG107:
sll $0, $0, 0
mflo $1
lb $4, 1($2)
sh $2, 1($1)
TAG108:
beq $4, $4, TAG109
mflo $1
mflo $3
sw $3, 0($4)
TAG109:
lui $3, 1
bgez $3, TAG110
sll $0, $0, 0
slt $4, $3, $3
TAG110:
blez $4, TAG111
sltu $4, $4, $4
lui $2, 13
beq $4, $4, TAG111
TAG111:
mult $2, $2
bne $2, $2, TAG112
lb $4, 1($2)
subu $3, $2, $4
TAG112:
sh $3, 0($3)
mfhi $4
mflo $4
lb $3, 0($4)
TAG113:
bltz $3, TAG114
andi $4, $3, 11
bne $4, $4, TAG114
lh $3, 0($3)
TAG114:
mthi $3
sub $2, $3, $3
lh $3, 0($2)
bgez $2, TAG115
TAG115:
sh $3, 0($3)
sb $3, 0($3)
mthi $3
mtlo $3
TAG116:
bgtz $3, TAG117
addiu $1, $3, 10
lui $1, 10
lui $2, 7
TAG117:
addiu $4, $2, 3
lui $4, 2
srl $2, $4, 1
beq $2, $2, TAG118
TAG118:
sll $0, $0, 0
lui $1, 9
srl $1, $2, 1
blez $2, TAG119
TAG119:
lui $3, 0
srlv $1, $1, $1
lui $2, 4
mtlo $2
TAG120:
mthi $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG121:
sll $0, $0, 0
bne $4, $2, TAG122
lui $1, 5
multu $2, $2
TAG122:
srl $4, $1, 1
mfhi $2
slti $2, $2, 5
mfhi $1
TAG123:
sub $1, $1, $1
bne $1, $1, TAG124
sw $1, 0($1)
addu $4, $1, $1
TAG124:
sll $2, $4, 0
bgtz $4, TAG125
addi $3, $2, 14
bne $3, $3, TAG125
TAG125:
mult $3, $3
sh $3, 0($3)
lhu $1, 0($3)
sh $3, 0($1)
TAG126:
lhu $4, 0($1)
lhu $3, 0($4)
mthi $4
mflo $4
TAG127:
addu $3, $4, $4
blez $3, TAG128
lui $3, 13
sra $3, $3, 0
TAG128:
mtlo $3
bne $3, $3, TAG129
mult $3, $3
or $4, $3, $3
TAG129:
lui $1, 15
beq $1, $1, TAG130
lui $3, 4
blez $3, TAG130
TAG130:
sll $0, $0, 0
lui $3, 7
mult $3, $3
div $3, $3
TAG131:
sll $0, $0, 0
mult $3, $2
blez $2, TAG132
lw $4, 0($2)
TAG132:
mult $4, $4
srav $1, $4, $4
mflo $2
subu $3, $4, $4
TAG133:
sb $3, 0($3)
sh $3, 0($3)
add $1, $3, $3
mflo $3
TAG134:
beq $3, $3, TAG135
sltiu $4, $3, 1
sub $3, $4, $3
div $3, $3
TAG135:
sltu $2, $3, $3
lbu $2, 0($3)
sb $2, 0($3)
slti $1, $2, 14
TAG136:
multu $1, $1
beq $1, $1, TAG137
mfhi $4
multu $1, $4
TAG137:
lui $4, 10
mfhi $4
sll $3, $4, 0
mfhi $1
TAG138:
addiu $1, $1, 12
beq $1, $1, TAG139
div $1, $1
mthi $1
TAG139:
mthi $1
bltz $1, TAG140
sb $1, 0($1)
bne $1, $1, TAG140
TAG140:
addiu $1, $1, 12
lbu $2, 0($1)
mult $1, $1
lhu $4, 0($1)
TAG141:
sb $4, 0($4)
mflo $3
sb $3, 0($4)
mflo $1
TAG142:
sh $1, -576($1)
sb $1, -576($1)
lh $4, -576($1)
mfhi $3
TAG143:
sh $3, 0($3)
blez $3, TAG144
lhu $1, 0($3)
divu $3, $3
TAG144:
lh $3, 0($1)
sltiu $4, $1, 7
multu $4, $3
beq $3, $1, TAG145
TAG145:
sb $4, 0($4)
mfhi $4
sb $4, 0($4)
bgez $4, TAG146
TAG146:
sra $1, $4, 3
bne $1, $1, TAG147
mthi $4
mthi $4
TAG147:
lw $3, 0($1)
bgtz $1, TAG148
slti $1, $3, 3
andi $3, $3, 3
TAG148:
lbu $1, 0($3)
addi $1, $1, 7
lui $3, 0
mflo $2
TAG149:
add $3, $2, $2
sllv $2, $3, $2
lui $2, 12
mthi $2
TAG150:
bgez $2, TAG151
slt $4, $2, $2
lbu $2, 0($4)
mflo $3
TAG151:
lui $2, 4
bne $3, $3, TAG152
mfhi $4
addiu $1, $4, 0
TAG152:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 2
lui $3, 9
TAG153:
sll $0, $0, 0
mflo $1
sll $2, $1, 15
sb $1, 0($2)
TAG154:
lbu $3, 0($2)
sltiu $3, $2, 11
beq $2, $3, TAG155
mflo $2
TAG155:
mtlo $2
mflo $2
bne $2, $2, TAG156
lb $3, 0($2)
TAG156:
srlv $2, $3, $3
sh $3, 0($2)
lw $1, 0($2)
mfhi $1
TAG157:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $1
xori $3, $1, 15
TAG158:
srlv $2, $3, $3
mfhi $2
beq $3, $2, TAG159
addiu $4, $3, 12
TAG159:
xori $4, $4, 0
mthi $4
srl $2, $4, 14
sll $3, $4, 14
TAG160:
mtlo $3
sll $0, $0, 0
mtlo $3
bgtz $3, TAG161
TAG161:
sll $0, $0, 0
mfhi $1
mflo $4
multu $2, $2
TAG162:
mtlo $4
bgez $4, TAG163
mfhi $2
mthi $4
TAG163:
bltz $2, TAG164
lbu $1, 0($2)
sh $1, 0($1)
lw $1, 0($2)
TAG164:
beq $1, $1, TAG165
sh $1, 0($1)
mflo $2
sub $3, $2, $2
TAG165:
bltz $3, TAG166
mflo $3
mflo $2
mfhi $2
TAG166:
lui $3, 2
mfhi $4
mthi $2
bne $4, $2, TAG167
TAG167:
srlv $3, $4, $4
xor $4, $3, $4
mtlo $3
mtlo $4
TAG168:
blez $4, TAG169
slti $1, $4, 7
andi $1, $4, 1
sh $1, 0($1)
TAG169:
subu $4, $1, $1
mult $1, $4
sb $4, 0($1)
mthi $4
TAG170:
sb $4, 0($4)
bgtz $4, TAG171
multu $4, $4
lui $1, 14
TAG171:
sltiu $2, $1, 5
beq $2, $1, TAG172
mflo $2
xori $1, $1, 15
TAG172:
divu $1, $1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG173:
srl $3, $4, 13
lui $1, 12
lw $2, 0($3)
sll $0, $0, 0
TAG174:
mult $2, $2
lh $3, 0($2)
bne $3, $3, TAG175
lui $1, 15
TAG175:
lui $4, 1
sll $0, $0, 0
sll $0, $0, 0
mflo $2
TAG176:
bgez $2, TAG177
mflo $2
srlv $4, $2, $2
mtlo $2
TAG177:
bgtz $4, TAG178
sll $0, $0, 0
mtlo $4
divu $1, $4
TAG178:
addiu $1, $1, 5
div $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG179:
sll $0, $0, 0
addiu $2, $4, 11
lui $2, 3
addu $1, $4, $4
TAG180:
sra $2, $1, 1
divu $2, $1
sll $0, $0, 0
addiu $2, $2, 8
TAG181:
slt $4, $2, $2
mtlo $4
mthi $4
bne $4, $2, TAG182
TAG182:
lui $4, 13
xori $3, $4, 13
beq $4, $4, TAG183
lui $2, 5
TAG183:
beq $2, $2, TAG184
sll $0, $0, 0
lui $4, 0
lui $3, 12
TAG184:
nor $3, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sllv $2, $3, $3
TAG185:
multu $2, $2
divu $2, $2
mult $2, $2
sll $0, $0, 0
TAG186:
slti $3, $2, 14
sra $4, $3, 12
lui $4, 8
xori $1, $2, 13
TAG187:
sll $0, $0, 0
addiu $2, $1, 6
mfhi $2
bne $1, $2, TAG188
TAG188:
sll $0, $0, 0
beq $1, $2, TAG189
subu $4, $1, $2
mthi $1
TAG189:
bne $4, $4, TAG190
div $4, $4
mflo $2
sltu $2, $2, $2
TAG190:
multu $2, $2
bne $2, $2, TAG191
sh $2, 0($2)
mtlo $2
TAG191:
lbu $1, 0($2)
sh $2, 0($2)
mthi $1
multu $1, $1
TAG192:
sltu $2, $1, $1
beq $1, $1, TAG193
lui $1, 0
sh $1, 0($1)
TAG193:
sllv $2, $1, $1
mflo $3
blez $2, TAG194
and $3, $1, $2
TAG194:
mfhi $3
mfhi $4
bgtz $3, TAG195
sll $1, $3, 1
TAG195:
srlv $2, $1, $1
sllv $4, $2, $1
lw $1, 0($2)
srl $1, $1, 12
TAG196:
sb $1, 0($1)
srl $2, $1, 9
srav $3, $1, $2
sb $3, 0($1)
TAG197:
multu $3, $3
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG198:
sltu $2, $3, $3
sll $0, $0, 0
lui $3, 8
sll $0, $0, 0
TAG199:
mthi $2
mfhi $2
sw $2, 0($2)
bne $2, $2, TAG200
TAG200:
multu $2, $2
mult $2, $2
bgtz $2, TAG201
srav $3, $2, $2
TAG201:
sb $3, 0($3)
mthi $3
mfhi $3
beq $3, $3, TAG202
TAG202:
lui $2, 6
and $3, $2, $2
lui $4, 13
sll $0, $0, 0
TAG203:
sltu $2, $4, $4
lh $4, 0($2)
sb $4, 0($2)
sh $4, 0($4)
TAG204:
sh $4, 0($4)
lui $2, 11
lh $4, 0($4)
sll $0, $0, 0
TAG205:
slti $2, $3, 10
bne $3, $3, TAG206
sll $0, $0, 0
beq $1, $2, TAG206
TAG206:
mtlo $1
srlv $1, $1, $1
mfhi $2
lui $1, 3
TAG207:
lui $2, 15
sll $0, $0, 0
lui $3, 4
bgtz $1, TAG208
TAG208:
sltiu $1, $3, 6
lui $4, 15
sll $0, $0, 0
sllv $1, $3, $3
TAG209:
sll $1, $1, 1
divu $1, $1
sll $0, $0, 0
mflo $2
TAG210:
beq $2, $2, TAG211
lb $4, 0($2)
lb $1, 0($2)
mtlo $4
TAG211:
beq $1, $1, TAG212
multu $1, $1
divu $1, $1
lui $3, 9
TAG212:
bne $3, $3, TAG213
mult $3, $3
bltz $3, TAG213
srlv $2, $3, $3
TAG213:
mtlo $2
mult $2, $2
lui $4, 12
ori $2, $2, 2
TAG214:
bne $2, $2, TAG215
mthi $2
beq $2, $2, TAG215
lui $3, 11
TAG215:
beq $3, $3, TAG216
slti $2, $3, 5
addu $2, $2, $3
mult $3, $2
TAG216:
lh $4, 0($2)
mthi $2
beq $4, $2, TAG217
mthi $2
TAG217:
mfhi $1
bltz $1, TAG218
mtlo $1
multu $4, $1
TAG218:
sra $2, $1, 4
mthi $2
mthi $2
bltz $1, TAG219
TAG219:
nor $3, $2, $2
mfhi $4
bgtz $4, TAG220
lh $4, 0($4)
TAG220:
mfhi $1
multu $1, $4
bgtz $1, TAG221
sw $1, 0($1)
TAG221:
and $2, $1, $1
lb $3, 0($1)
mfhi $1
bltz $1, TAG222
TAG222:
andi $3, $1, 4
sb $1, 0($3)
slt $4, $1, $3
multu $1, $1
TAG223:
sb $4, 0($4)
bne $4, $4, TAG224
mfhi $1
sh $4, 0($4)
TAG224:
multu $1, $1
sw $1, 0($1)
addiu $3, $1, 12
sw $3, 0($3)
TAG225:
multu $3, $3
sll $4, $3, 15
andi $3, $3, 9
beq $4, $3, TAG226
TAG226:
mtlo $3
bne $3, $3, TAG227
sll $1, $3, 1
bgez $3, TAG227
TAG227:
sb $1, 0($1)
bne $1, $1, TAG228
addu $2, $1, $1
lui $1, 8
TAG228:
multu $1, $1
blez $1, TAG229
sll $0, $0, 0
multu $1, $1
TAG229:
mflo $4
bne $4, $4, TAG230
lui $1, 15
sh $4, 0($4)
TAG230:
blez $1, TAG231
lui $1, 7
lui $3, 11
addu $2, $1, $3
TAG231:
lui $4, 7
mthi $4
lui $1, 4
mflo $3
TAG232:
beq $3, $3, TAG233
mfhi $2
multu $3, $3
and $2, $2, $3
TAG233:
divu $2, $2
mflo $4
lbu $1, 0($4)
sll $0, $0, 0
TAG234:
mfhi $3
mult $1, $1
mflo $2
bgtz $1, TAG235
TAG235:
lui $1, 10
sll $0, $0, 0
slti $3, $1, 9
mthi $3
TAG236:
bne $3, $3, TAG237
mtlo $3
lui $4, 11
mflo $1
TAG237:
lui $2, 2
sll $0, $0, 0
sll $0, $0, 0
lui $1, 3
TAG238:
addu $1, $1, $1
andi $1, $1, 13
lhu $3, 0($1)
mtlo $1
TAG239:
lh $1, 0($3)
sw $1, 0($3)
mfhi $3
mult $3, $3
TAG240:
mtlo $3
mfhi $2
sb $2, 0($2)
bltz $3, TAG241
TAG241:
addi $4, $2, 10
beq $2, $4, TAG242
sb $4, 0($4)
addiu $2, $4, 15
TAG242:
beq $2, $2, TAG243
lui $2, 7
bne $2, $2, TAG243
sb $2, 0($2)
TAG243:
mfhi $4
nor $2, $2, $2
lui $4, 6
mult $4, $4
TAG244:
lui $4, 6
mthi $4
mfhi $2
lui $1, 4
TAG245:
mthi $1
srlv $3, $1, $1
mflo $4
multu $1, $4
TAG246:
addiu $1, $4, 0
lui $4, 10
bgez $4, TAG247
lui $1, 7
TAG247:
mult $1, $1
mfhi $4
sb $4, 0($4)
slti $3, $1, 12
TAG248:
bltz $3, TAG249
lui $4, 1
sra $4, $3, 10
sw $4, 0($4)
TAG249:
slti $4, $4, 5
div $4, $4
slti $1, $4, 10
sb $4, 0($4)
TAG250:
sb $1, 0($1)
multu $1, $1
mfhi $3
mfhi $2
TAG251:
sw $2, 0($2)
mfhi $2
srav $3, $2, $2
lb $4, 0($2)
TAG252:
addi $1, $4, 15
sb $1, 0($1)
multu $1, $1
mult $1, $4
TAG253:
bltz $1, TAG254
sb $1, 0($1)
bne $1, $1, TAG254
sllv $3, $1, $1
TAG254:
ori $2, $3, 4
beq $2, $3, TAG255
sll $0, $0, 0
ori $3, $2, 9
TAG255:
subu $4, $3, $3
sra $4, $3, 8
sll $0, $0, 0
blez $4, TAG256
TAG256:
sll $0, $0, 0
blez $4, TAG257
lui $1, 4
bne $4, $4, TAG257
TAG257:
div $1, $1
multu $1, $1
bltz $1, TAG258
sll $0, $0, 0
TAG258:
bne $1, $1, TAG259
addu $3, $1, $1
lui $4, 12
mthi $4
TAG259:
bgtz $4, TAG260
sll $0, $0, 0
div $4, $4
or $4, $4, $4
TAG260:
sll $0, $0, 0
mthi $4
nor $2, $4, $4
mflo $2
TAG261:
lb $1, 0($2)
lui $1, 1
mthi $1
sll $0, $0, 0
TAG262:
slt $1, $3, $3
mtlo $1
div $1, $3
mult $1, $1
TAG263:
slt $4, $1, $1
mtlo $1
or $1, $1, $4
blez $1, TAG264
TAG264:
sw $1, 0($1)
lui $3, 4
mthi $3
blez $3, TAG265
TAG265:
mtlo $3
sll $0, $0, 0
bgtz $3, TAG266
and $1, $3, $2
TAG266:
bgtz $1, TAG267
sw $1, 0($1)
bgez $1, TAG267
lhu $2, 0($1)
TAG267:
bne $2, $2, TAG268
sllv $4, $2, $2
sltiu $3, $4, 12
lh $3, 0($4)
TAG268:
lb $2, 0($3)
lh $3, 0($3)
sltu $3, $3, $3
bne $3, $3, TAG269
TAG269:
mtlo $3
lui $4, 6
mflo $4
lw $2, 0($4)
TAG270:
sb $2, 0($2)
sb $2, 0($2)
lhu $2, 0($2)
beq $2, $2, TAG271
TAG271:
lui $3, 3
bgez $2, TAG272
lbu $2, 0($2)
mtlo $3
TAG272:
lb $4, 0($2)
mflo $3
or $1, $2, $3
blez $1, TAG273
TAG273:
lui $1, 6
sll $3, $1, 12
sll $0, $0, 0
beq $2, $1, TAG274
TAG274:
andi $1, $2, 4
mthi $2
mthi $1
lb $2, 0($2)
TAG275:
addiu $3, $2, 0
mthi $2
lui $3, 9
lhu $4, 0($2)
TAG276:
sb $4, 0($4)
multu $4, $4
sltu $2, $4, $4
lui $1, 6
TAG277:
multu $1, $1
mtlo $1
multu $1, $1
blez $1, TAG278
TAG278:
mflo $4
mult $1, $4
mtlo $4
blez $1, TAG279
TAG279:
mflo $4
sll $4, $4, 5
sb $4, 0($4)
beq $4, $4, TAG280
TAG280:
lh $2, 0($4)
lhu $3, 0($4)
lb $2, 0($4)
multu $2, $4
TAG281:
lui $2, 15
slt $2, $2, $2
xori $3, $2, 4
multu $2, $2
TAG282:
mthi $3
addu $4, $3, $3
mfhi $2
lui $4, 6
TAG283:
div $4, $4
xori $2, $4, 2
lui $4, 0
blez $4, TAG284
TAG284:
sll $4, $4, 13
bltz $4, TAG285
sb $4, 0($4)
and $4, $4, $4
TAG285:
lui $2, 1
sw $2, 0($4)
mtlo $4
bne $4, $4, TAG286
TAG286:
sll $0, $0, 0
lui $2, 0
mthi $2
beq $2, $2, TAG287
TAG287:
sb $2, 0($2)
sb $2, 0($2)
mult $2, $2
multu $2, $2
TAG288:
ori $1, $2, 10
mthi $1
bne $1, $1, TAG289
addu $1, $2, $1
TAG289:
bne $1, $1, TAG290
and $1, $1, $1
lbu $3, 0($1)
lbu $1, 0($1)
TAG290:
lhu $3, 0($1)
mthi $3
subu $3, $3, $3
sltiu $4, $1, 14
TAG291:
lbu $3, 0($4)
bne $4, $3, TAG292
lh $2, 0($3)
sb $4, 0($4)
TAG292:
lbu $3, 0($2)
sh $2, 0($2)
sw $3, 0($3)
srlv $2, $3, $2
TAG293:
andi $1, $2, 2
bne $1, $2, TAG294
lui $3, 4
sll $0, $0, 0
TAG294:
bgez $3, TAG295
subu $1, $3, $3
lui $4, 9
sra $3, $4, 8
TAG295:
bne $3, $3, TAG296
sll $0, $0, 0
sll $0, $0, 0
ori $4, $4, 10
TAG296:
blez $4, TAG297
mfhi $3
mflo $1
xori $2, $1, 5
TAG297:
bgtz $2, TAG298
multu $2, $2
sb $2, 0($2)
bgez $2, TAG298
TAG298:
lui $2, 11
nor $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG299:
addu $1, $4, $4
subu $3, $4, $4
srlv $2, $3, $3
mflo $3
TAG300:
mfhi $1
beq $3, $1, TAG301
lb $4, 0($3)
lui $1, 3
TAG301:
slt $2, $1, $1
slti $4, $2, 1
bgez $1, TAG302
mflo $3
TAG302:
beq $3, $3, TAG303
lui $4, 14
bgtz $3, TAG303
lhu $4, 0($3)
TAG303:
bgez $4, TAG304
sll $0, $0, 0
lui $3, 14
div $3, $4
TAG304:
blez $3, TAG305
lb $3, 0($3)
mfhi $4
mthi $3
TAG305:
lw $4, 0($4)
lb $2, 0($4)
bgez $4, TAG306
ori $1, $4, 8
TAG306:
slti $1, $1, 13
bgez $1, TAG307
mtlo $1
beq $1, $1, TAG307
TAG307:
lb $4, 0($1)
srav $1, $1, $1
sw $1, 0($1)
sb $1, 0($4)
TAG308:
beq $1, $1, TAG309
sll $1, $1, 11
mflo $2
bgtz $2, TAG309
TAG309:
sb $2, 0($2)
lui $2, 11
sll $0, $0, 0
mflo $4
TAG310:
mtlo $4
mult $4, $4
srlv $1, $4, $4
addu $2, $4, $1
TAG311:
mflo $1
srlv $1, $1, $1
divu $2, $2
xori $2, $2, 15
TAG312:
bltz $2, TAG313
sllv $1, $2, $2
mfhi $3
sh $2, 0($2)
TAG313:
lui $4, 14
blez $4, TAG314
sll $0, $0, 0
bgtz $3, TAG314
TAG314:
mtlo $3
bltz $3, TAG315
srlv $4, $3, $3
and $4, $3, $3
TAG315:
mtlo $4
sb $4, 0($4)
addiu $4, $4, 6
lb $3, 0($4)
TAG316:
multu $3, $3
sh $3, 0($3)
bne $3, $3, TAG317
addiu $2, $3, 10
TAG317:
lui $3, 10
mtlo $2
sltiu $1, $3, 0
lui $2, 13
TAG318:
bgtz $2, TAG319
mtlo $2
mthi $2
lbu $1, 0($2)
TAG319:
sltiu $3, $1, 14
slt $2, $3, $3
lui $1, 15
and $1, $1, $2
TAG320:
sb $1, 0($1)
addiu $1, $1, 12
beq $1, $1, TAG321
lbu $1, 0($1)
TAG321:
sltiu $3, $1, 2
addu $2, $3, $3
lb $2, 0($1)
mfhi $2
TAG322:
lh $4, 0($2)
lw $1, 0($2)
bgtz $4, TAG323
lh $2, 0($1)
TAG323:
xor $4, $2, $2
addi $4, $4, 15
sltu $3, $4, $4
lb $4, 0($4)
TAG324:
addu $2, $4, $4
bltz $2, TAG325
lh $2, 0($4)
and $2, $2, $2
TAG325:
sh $2, 0($2)
sw $2, 0($2)
mflo $2
lui $1, 9
TAG326:
sll $0, $0, 0
sltu $4, $1, $3
bne $3, $3, TAG327
multu $1, $4
TAG327:
bgtz $4, TAG328
xori $3, $4, 13
bgez $3, TAG328
xori $2, $3, 12
TAG328:
sra $4, $2, 1
multu $2, $4
bgez $4, TAG329
mult $2, $4
TAG329:
mflo $2
mflo $1
bgez $1, TAG330
add $3, $4, $2
TAG330:
sh $3, 0($3)
lui $3, 5
srlv $1, $3, $3
mthi $1
TAG331:
sll $0, $0, 0
mfhi $2
bne $1, $1, TAG332
mthi $1
TAG332:
mthi $2
mtlo $2
sll $0, $0, 0
subu $2, $2, $2
TAG333:
mflo $2
sll $0, $0, 0
mfhi $4
lui $2, 7
TAG334:
mfhi $4
addiu $4, $4, 9
sll $0, $0, 0
lui $4, 14
TAG335:
sll $0, $0, 0
mflo $3
divu $4, $4
beq $3, $3, TAG336
TAG336:
mthi $3
bne $3, $3, TAG337
sll $0, $0, 0
mthi $3
TAG337:
mflo $1
srav $3, $1, $1
xor $3, $1, $1
sllv $3, $3, $3
TAG338:
mthi $3
lb $4, 0($3)
sw $4, 0($4)
bgtz $4, TAG339
TAG339:
mtlo $4
ori $4, $4, 8
sltu $1, $4, $4
beq $4, $1, TAG340
TAG340:
sb $1, 0($1)
lb $2, 0($1)
lui $4, 14
lbu $1, 0($2)
TAG341:
lhu $1, 0($1)
mfhi $4
mult $1, $1
blez $1, TAG342
TAG342:
andi $3, $4, 10
sb $4, 0($4)
bgtz $4, TAG343
lb $2, 0($4)
TAG343:
mthi $2
sltu $1, $2, $2
addi $2, $2, 3
xori $2, $2, 13
TAG344:
blez $2, TAG345
mthi $2
lh $1, 0($2)
subu $4, $2, $1
TAG345:
mthi $4
lh $1, 0($4)
mflo $2
multu $1, $4
TAG346:
mthi $2
lb $1, 0($2)
mtlo $2
beq $1, $1, TAG347
TAG347:
lw $1, 0($1)
bltz $1, TAG348
mflo $3
sh $1, 0($1)
TAG348:
mfhi $2
mflo $4
sra $2, $4, 0
mthi $2
TAG349:
bltz $2, TAG350
sh $2, 0($2)
bltz $2, TAG350
lui $1, 13
TAG350:
mthi $1
multu $1, $1
beq $1, $1, TAG351
subu $4, $1, $1
TAG351:
xor $2, $4, $4
srlv $3, $4, $4
ori $4, $2, 15
addiu $1, $2, 1
TAG352:
lbu $4, 0($1)
mthi $4
lui $1, 11
mfhi $3
TAG353:
xor $3, $3, $3
lui $3, 15
mtlo $3
div $3, $3
TAG354:
lui $4, 0
lui $2, 3
lb $3, 0($4)
beq $3, $2, TAG355
TAG355:
mtlo $3
lhu $2, 0($3)
lui $2, 14
lh $1, 0($3)
TAG356:
mfhi $3
bgtz $3, TAG357
mfhi $2
srlv $1, $2, $3
TAG357:
mult $1, $1
lw $2, 0($1)
mtlo $2
mult $1, $2
TAG358:
mtlo $2
bgtz $2, TAG359
mtlo $2
sh $2, 0($2)
TAG359:
ori $3, $2, 13
lhu $2, 0($2)
mtlo $3
bgtz $2, TAG360
TAG360:
mtlo $2
mthi $2
bgtz $2, TAG361
mfhi $4
TAG361:
mthi $4
addi $3, $4, 5
bne $3, $3, TAG362
xor $4, $4, $3
TAG362:
lui $2, 3
bgtz $4, TAG363
mflo $1
sh $2, 0($2)
TAG363:
lui $3, 10
lui $3, 5
beq $3, $3, TAG364
slti $3, $1, 3
TAG364:
lui $1, 6
mfhi $2
beq $1, $2, TAG365
mtlo $1
TAG365:
mult $2, $2
lui $3, 10
ori $3, $3, 7
bne $2, $3, TAG366
TAG366:
lui $1, 6
multu $3, $3
beq $1, $3, TAG367
slti $3, $1, 0
TAG367:
blez $3, TAG368
mtlo $3
addi $3, $3, 8
blez $3, TAG368
TAG368:
lw $2, 0($3)
mtlo $3
lui $4, 10
sb $3, 0($3)
TAG369:
sll $0, $0, 0
mfhi $2
lui $1, 10
beq $4, $4, TAG370
TAG370:
andi $3, $1, 14
sll $0, $0, 0
lw $1, 0($3)
multu $3, $3
TAG371:
lhu $3, 0($1)
blez $3, TAG372
mult $3, $3
beq $1, $3, TAG372
TAG372:
mfhi $3
sw $3, 0($3)
bne $3, $3, TAG373
mult $3, $3
TAG373:
lui $2, 1
slti $4, $2, 13
mflo $1
mfhi $3
TAG374:
beq $3, $3, TAG375
slti $2, $3, 13
sb $3, 0($2)
lui $3, 3
TAG375:
multu $3, $3
sh $3, 0($3)
sb $3, 0($3)
bgtz $3, TAG376
TAG376:
sh $3, 0($3)
bne $3, $3, TAG377
srl $2, $3, 12
lb $1, 0($3)
TAG377:
mfhi $4
sh $1, 0($4)
beq $1, $4, TAG378
mfhi $4
TAG378:
sh $4, 0($4)
sh $4, 0($4)
mult $4, $4
lui $1, 14
TAG379:
mthi $1
mthi $1
mthi $1
srav $3, $1, $1
TAG380:
bne $3, $3, TAG381
mthi $3
sll $0, $0, 0
lui $1, 12
TAG381:
sll $0, $0, 0
addiu $1, $1, 5
div $1, $1
mflo $2
TAG382:
sb $2, 0($2)
div $2, $2
beq $2, $2, TAG383
sb $2, 0($2)
TAG383:
mfhi $1
bltz $2, TAG384
sltiu $1, $2, 12
srav $1, $2, $2
TAG384:
lui $3, 9
bne $3, $1, TAG385
mflo $4
mfhi $4
TAG385:
bne $4, $4, TAG386
mtlo $4
beq $4, $4, TAG386
mult $4, $4
TAG386:
sra $3, $4, 8
mtlo $3
mthi $3
bltz $4, TAG387
TAG387:
sra $2, $3, 10
mfhi $4
sb $2, 0($4)
srl $3, $4, 9
TAG388:
sllv $2, $3, $3
sw $3, 0($3)
sub $2, $2, $2
mtlo $3
TAG389:
bltz $2, TAG390
lui $2, 12
sll $0, $0, 0
lui $4, 14
TAG390:
blez $4, TAG391
multu $4, $4
bgtz $4, TAG391
sll $0, $0, 0
TAG391:
mtlo $4
sll $0, $0, 0
srlv $1, $1, $1
multu $1, $1
TAG392:
bltz $1, TAG393
mflo $4
addi $2, $1, 6
mtlo $2
TAG393:
srlv $2, $2, $2
addi $1, $2, 11
lbu $4, 0($2)
xori $2, $1, 2
TAG394:
mfhi $4
lb $2, 0($4)
multu $4, $4
mfhi $1
TAG395:
lui $3, 15
bgez $1, TAG396
sll $0, $0, 0
sltu $3, $1, $1
TAG396:
mflo $2
sll $0, $0, 0
lui $2, 12
sll $0, $0, 0
TAG397:
sll $2, $2, 12
bne $2, $2, TAG398
mfhi $4
mtlo $2
TAG398:
mthi $4
mtlo $4
beq $4, $4, TAG399
mflo $2
TAG399:
mtlo $2
mtlo $2
subu $2, $2, $2
bgtz $2, TAG400
TAG400:
srl $1, $2, 12
multu $1, $1
mflo $4
lui $1, 11
TAG401:
mthi $1
mfhi $2
mthi $1
bne $1, $1, TAG402
TAG402:
lui $2, 5
andi $2, $2, 8
sw $2, 0($2)
srlv $2, $2, $2
TAG403:
mfhi $2
lui $4, 8
mfhi $3
bne $2, $2, TAG404
TAG404:
mflo $1
mtlo $1
mtlo $3
mtlo $1
TAG405:
lhu $1, 0($1)
mthi $1
mthi $1
multu $1, $1
TAG406:
multu $1, $1
add $4, $1, $1
sltu $2, $4, $1
mfhi $4
TAG407:
lb $2, 0($4)
sb $2, 0($2)
bgez $2, TAG408
lbu $2, 0($4)
TAG408:
mflo $1
xori $1, $2, 9
lbu $1, 0($1)
mfhi $2
TAG409:
mfhi $4
sh $2, 0($2)
multu $2, $4
ori $4, $4, 13
TAG410:
lbu $2, 0($4)
sb $4, 0($4)
mflo $3
lb $4, 0($2)
TAG411:
mthi $4
bne $4, $4, TAG412
sw $4, 0($4)
beq $4, $4, TAG412
TAG412:
mult $4, $4
mthi $4
srl $3, $4, 12
sw $4, 0($3)
TAG413:
bne $3, $3, TAG414
mult $3, $3
mult $3, $3
mflo $1
TAG414:
lui $2, 10
lui $2, 15
mthi $2
lui $1, 14
TAG415:
sll $0, $0, 0
subu $1, $1, $1
mult $2, $1
addu $3, $2, $2
TAG416:
lui $1, 14
mult $1, $3
sll $0, $0, 0
mthi $1
TAG417:
bgez $1, TAG418
div $1, $1
mfhi $1
divu $1, $1
TAG418:
bne $1, $1, TAG419
sll $0, $0, 0
multu $1, $1
bgez $1, TAG419
TAG419:
mfhi $1
bne $1, $1, TAG420
lui $4, 1
bne $4, $4, TAG420
TAG420:
sll $0, $0, 0
bltz $4, TAG421
mtlo $4
andi $2, $4, 5
TAG421:
multu $2, $2
mflo $1
sw $2, 0($2)
lui $1, 12
TAG422:
mthi $1
slti $1, $1, 2
beq $1, $1, TAG423
addi $4, $1, 12
TAG423:
beq $4, $4, TAG424
lhu $2, 0($4)
mult $2, $4
beq $2, $2, TAG424
TAG424:
addu $4, $2, $2
div $4, $2
mflo $3
bne $4, $2, TAG425
TAG425:
lui $3, 8
xor $4, $3, $3
mflo $2
subu $2, $3, $3
TAG426:
beq $2, $2, TAG427
lui $2, 11
bgtz $2, TAG427
mthi $2
TAG427:
sll $0, $0, 0
bgez $1, TAG428
lui $4, 1
mflo $2
TAG428:
blez $2, TAG429
mtlo $2
sll $0, $0, 0
addu $2, $2, $2
TAG429:
sll $0, $0, 0
mfhi $4
mthi $2
bgtz $4, TAG430
TAG430:
sb $4, 0($4)
mfhi $3
bgez $3, TAG431
lui $1, 14
TAG431:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
mthi $1
TAG432:
sltu $3, $3, $3
multu $3, $3
multu $3, $3
sltiu $1, $3, 0
TAG433:
multu $1, $1
mfhi $4
mtlo $4
bgtz $4, TAG434
TAG434:
addu $1, $4, $4
lhu $4, 0($4)
lui $1, 3
blez $1, TAG435
TAG435:
mtlo $1
sll $0, $0, 0
bgtz $1, TAG436
mfhi $2
TAG436:
mult $2, $2
mult $2, $2
mthi $2
lhu $2, 0($2)
TAG437:
sh $2, 0($2)
multu $2, $2
bltz $2, TAG438
lb $3, 0($2)
TAG438:
and $2, $3, $3
multu $2, $2
mtlo $3
mtlo $3
TAG439:
lw $4, 0($2)
mflo $4
lh $1, 0($2)
mthi $1
TAG440:
mthi $1
mtlo $1
blez $1, TAG441
lb $3, 0($1)
TAG441:
lh $1, 0($3)
bgtz $3, TAG442
multu $1, $3
mtlo $1
TAG442:
lh $1, 0($1)
mfhi $2
blez $1, TAG443
mflo $2
TAG443:
sb $2, 0($2)
blez $2, TAG444
mthi $2
lui $2, 5
TAG444:
lw $3, 0($2)
multu $2, $3
or $3, $2, $2
multu $2, $2
TAG445:
mfhi $4
mtlo $4
sh $4, 0($4)
mflo $2
TAG446:
sll $4, $2, 7
sb $4, 0($2)
lui $3, 4
sltu $2, $4, $4
TAG447:
sb $2, 0($2)
sb $2, 0($2)
bltz $2, TAG448
lbu $3, 0($2)
TAG448:
beq $3, $3, TAG449
mult $3, $3
sb $3, 0($3)
lb $4, 0($3)
TAG449:
lh $1, 0($4)
lh $2, 0($4)
sw $2, 0($4)
lb $1, 0($4)
TAG450:
sltiu $1, $1, 10
addu $2, $1, $1
beq $1, $1, TAG451
and $2, $2, $2
TAG451:
xor $4, $2, $2
lui $4, 10
sltiu $2, $4, 15
ori $2, $4, 13
TAG452:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
srl $2, $2, 15
TAG453:
mthi $2
addiu $3, $2, 6
mfhi $3
sllv $4, $3, $3
TAG454:
lui $2, 11
bltz $4, TAG455
mthi $4
andi $3, $2, 0
TAG455:
subu $1, $3, $3
beq $3, $3, TAG456
srl $4, $1, 10
sw $4, 0($1)
TAG456:
xori $2, $4, 8
sb $4, 0($4)
bltz $2, TAG457
mfhi $1
TAG457:
mflo $3
multu $1, $1
lui $3, 13
sll $0, $0, 0
TAG458:
srav $4, $3, $3
sll $0, $0, 0
mtlo $4
addu $4, $3, $4
TAG459:
andi $4, $4, 9
mtlo $4
mtlo $4
sltiu $3, $4, 13
TAG460:
subu $3, $3, $3
mthi $3
sb $3, 0($3)
lui $1, 12
TAG461:
bltz $1, TAG462
sll $0, $0, 0
beq $1, $1, TAG462
slt $2, $1, $1
TAG462:
mtlo $2
sw $2, 0($2)
and $1, $2, $2
mult $1, $1
TAG463:
multu $1, $1
mult $1, $1
multu $1, $1
mult $1, $1
TAG464:
mflo $3
mtlo $1
addu $2, $1, $1
sltu $1, $2, $2
TAG465:
bne $1, $1, TAG466
lui $2, 10
lbu $2, 0($1)
xor $3, $1, $2
TAG466:
multu $3, $3
sh $3, 0($3)
lui $1, 11
sh $1, 0($3)
TAG467:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
sllv $3, $1, $1
TAG468:
beq $3, $3, TAG469
lui $1, 11
multu $1, $3
lui $1, 7
TAG469:
mtlo $1
beq $1, $1, TAG470
sll $0, $0, 0
sw $1, 0($1)
TAG470:
lui $4, 7
divu $4, $1
mflo $4
lui $3, 6
TAG471:
beq $3, $3, TAG472
sll $0, $0, 0
lb $2, 0($3)
srl $3, $3, 4
TAG472:
sltiu $1, $3, 10
multu $3, $3
mtlo $3
slti $3, $1, 2
TAG473:
bltz $3, TAG474
slti $3, $3, 4
mthi $3
mfhi $3
TAG474:
div $3, $3
mtlo $3
slti $2, $3, 12
lui $2, 8
TAG475:
divu $2, $2
bltz $2, TAG476
slt $1, $2, $2
mflo $4
TAG476:
mult $4, $4
srl $3, $4, 10
sb $3, 0($4)
srav $3, $4, $3
TAG477:
slt $2, $3, $3
srl $4, $3, 7
mult $4, $2
mult $4, $3
TAG478:
beq $4, $4, TAG479
lui $4, 12
sra $1, $4, 0
mthi $1
TAG479:
mflo $3
sb $3, 0($3)
beq $3, $3, TAG480
xori $3, $1, 12
TAG480:
bgtz $3, TAG481
sh $3, 0($3)
lh $3, 0($3)
mflo $4
TAG481:
bgtz $4, TAG482
sll $0, $0, 0
lhu $3, 0($4)
bne $4, $4, TAG482
TAG482:
sh $3, 0($3)
sh $3, 0($3)
lhu $1, 0($3)
mtlo $3
TAG483:
lui $2, 0
lui $4, 15
bltz $1, TAG484
sb $4, 0($2)
TAG484:
mtlo $4
beq $4, $4, TAG485
sll $0, $0, 0
srlv $3, $4, $4
TAG485:
mtlo $3
lhu $1, 0($3)
srav $1, $1, $1
lui $1, 4
TAG486:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
lui $2, 8
TAG487:
bltz $2, TAG488
mflo $1
bne $2, $1, TAG488
mthi $1
TAG488:
bgtz $1, TAG489
xor $4, $1, $1
lbu $3, 0($1)
blez $3, TAG489
TAG489:
srav $3, $3, $3
lui $1, 1
bltz $1, TAG490
sll $0, $0, 0
TAG490:
addiu $4, $1, 12
bltz $1, TAG491
mthi $1
bgez $4, TAG491
TAG491:
mult $4, $4
mtlo $4
bgez $4, TAG492
mfhi $4
TAG492:
bne $4, $4, TAG493
xori $1, $4, 11
multu $4, $1
sb $1, 0($4)
TAG493:
bne $1, $1, TAG494
mfhi $4
sll $1, $4, 9
lui $4, 8
TAG494:
div $4, $4
blez $4, TAG495
mtlo $4
sll $0, $0, 0
TAG495:
srl $2, $4, 6
srl $1, $4, 1
sll $0, $0, 0
lw $1, -8192($2)
TAG496:
mfhi $1
bltz $1, TAG497
mult $1, $1
lui $2, 6
TAG497:
sll $0, $0, 0
mfhi $2
mtlo $2
lui $2, 8
TAG498:
sll $0, $0, 0
subu $1, $2, $1
mtlo $1
sll $0, $0, 0
TAG499:
bne $4, $4, TAG500
lui $3, 11
mtlo $4
mthi $4
TAG500:
slt $2, $3, $3
sll $0, $0, 0
mult $3, $2
sll $0, $0, 0
TAG501:
mult $2, $2
multu $2, $2
mfhi $1
and $1, $1, $1
TAG502:
multu $1, $1
lh $3, 0($1)
lw $1, 0($1)
lui $3, 12
TAG503:
beq $3, $3, TAG504
sll $0, $0, 0
mult $3, $3
mflo $1
TAG504:
multu $1, $1
mflo $1
andi $3, $1, 8
mult $3, $1
TAG505:
mflo $1
blez $3, TAG506
multu $1, $1
lw $1, 0($3)
TAG506:
blez $1, TAG507
mult $1, $1
mthi $1
blez $1, TAG507
TAG507:
multu $1, $1
mtlo $1
sw $1, 0($1)
multu $1, $1
TAG508:
multu $1, $1
lui $1, 2
sll $0, $0, 0
bgez $1, TAG509
TAG509:
mult $4, $4
addiu $4, $4, 13
sll $0, $0, 0
mult $4, $4
TAG510:
mthi $1
xori $3, $1, 15
beq $1, $1, TAG511
mtlo $1
TAG511:
bltz $3, TAG512
mthi $3
sll $0, $0, 0
div $1, $1
TAG512:
mflo $3
mfhi $3
bne $3, $3, TAG513
mthi $3
TAG513:
lb $3, 0($3)
sw $3, 0($3)
blez $3, TAG514
ori $4, $3, 13
TAG514:
mthi $4
mfhi $4
lui $1, 8
addu $2, $4, $1
TAG515:
nor $4, $2, $2
mtlo $4
mthi $4
mtlo $4
TAG516:
bgtz $4, TAG517
sll $0, $0, 0
sltu $4, $3, $3
sra $1, $4, 15
TAG517:
mtlo $1
mthi $1
blez $1, TAG518
lb $2, 0($1)
TAG518:
lui $1, 9
mflo $4
sra $2, $2, 11
multu $4, $2
TAG519:
mflo $3
lui $1, 5
mfhi $4
mfhi $1
TAG520:
lui $4, 4
srav $3, $4, $4
mfhi $4
mtlo $4
TAG521:
sh $4, 0($4)
mult $4, $4
mthi $4
lw $4, 0($4)
TAG522:
bne $4, $4, TAG523
mtlo $4
sh $4, 0($4)
bltz $4, TAG523
TAG523:
and $1, $4, $4
sll $1, $4, 9
beq $1, $1, TAG524
sb $1, 0($1)
TAG524:
mthi $1
bgez $1, TAG525
lhu $1, 0($1)
bltz $1, TAG525
TAG525:
mfhi $3
lw $1, 0($1)
multu $3, $1
lui $1, 5
TAG526:
beq $1, $1, TAG527
slti $3, $1, 13
blez $3, TAG527
mult $3, $1
TAG527:
bne $3, $3, TAG528
sb $3, 0($3)
lui $4, 7
sll $0, $0, 0
TAG528:
bgtz $4, TAG529
sltu $1, $4, $4
ori $3, $1, 6
blez $4, TAG529
TAG529:
addiu $4, $3, 3
mthi $3
mult $4, $4
lui $4, 5
TAG530:
sll $0, $0, 0
bltz $4, TAG531
mthi $3
nor $4, $3, $3
TAG531:
sll $0, $0, 0
lui $2, 6
or $2, $3, $3
nor $1, $2, $2
TAG532:
bne $1, $1, TAG533
lui $3, 6
lui $4, 15
bgtz $1, TAG533
TAG533:
sll $0, $0, 0
lui $1, 5
bltz $4, TAG534
mtlo $1
TAG534:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG535:
mtlo $1
bltz $1, TAG536
div $1, $1
div $1, $1
TAG536:
mfhi $4
mfhi $2
beq $4, $2, TAG537
nor $2, $2, $2
TAG537:
mflo $4
lui $1, 11
slti $2, $4, 9
mflo $2
TAG538:
mflo $3
mfhi $1
bne $2, $2, TAG539
sh $3, 0($1)
TAG539:
bgtz $1, TAG540
mthi $1
sll $4, $1, 0
lui $1, 13
TAG540:
mthi $1
mflo $2
beq $1, $2, TAG541
slt $2, $1, $2
TAG541:
bne $2, $2, TAG542
lhu $1, 0($2)
mtlo $1
lui $4, 2
TAG542:
sll $0, $0, 0
lh $2, 0($2)
sltiu $4, $2, 12
bne $4, $4, TAG543
TAG543:
sb $4, 0($4)
bgtz $4, TAG544
mthi $4
mflo $4
TAG544:
bne $4, $4, TAG545
slti $3, $4, 12
lbu $3, 0($3)
mtlo $3
TAG545:
div $3, $3
lui $1, 8
sll $0, $0, 0
lb $1, 0($3)
TAG546:
sltu $4, $1, $1
srl $1, $1, 8
mflo $4
lui $2, 15
TAG547:
sltiu $1, $2, 8
sll $0, $0, 0
mthi $2
mflo $2
TAG548:
lbu $3, 0($2)
sll $1, $2, 7
bne $3, $1, TAG549
sb $1, 0($3)
TAG549:
lui $2, 3
divu $1, $1
ori $2, $2, 3
addiu $2, $1, 14
TAG550:
sh $2, -142($2)
multu $2, $2
or $1, $2, $2
lui $1, 4
TAG551:
sll $0, $0, 0
bgez $1, TAG552
lui $3, 8
addi $2, $3, 3
TAG552:
sb $2, -142($2)
bltz $2, TAG553
mthi $2
addiu $1, $2, 6
TAG553:
mfhi $2
mthi $1
subu $4, $2, $1
sh $2, -142($2)
TAG554:
sw $4, 6($4)
lh $2, 6($4)
mthi $4
mtlo $2
TAG555:
bgtz $2, TAG556
lui $1, 11
bgtz $2, TAG556
lui $4, 2
TAG556:
lui $1, 14
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG557
TAG557:
lui $2, 11
sll $0, $0, 0
sllv $3, $3, $3
mflo $2
TAG558:
blez $2, TAG559
mfhi $1
mflo $1
lh $4, 0($2)
TAG559:
sll $0, $0, 0
subu $3, $4, $3
bne $3, $3, TAG560
multu $4, $4
TAG560:
bgtz $3, TAG561
mult $3, $3
sltiu $4, $3, 6
mult $4, $3
TAG561:
sra $4, $4, 6
lw $1, 0($4)
lui $2, 13
lbu $3, 0($4)
TAG562:
bne $3, $3, TAG563
ori $3, $3, 0
divu $3, $3
sh $3, -250($3)
TAG563:
bne $3, $3, TAG564
lb $3, -250($3)
lh $4, 6($3)
sb $3, 6($3)
TAG564:
lui $2, 4
blez $2, TAG565
divu $2, $4
mtlo $4
TAG565:
lui $3, 3
addu $2, $3, $2
srlv $4, $3, $2
beq $3, $2, TAG566
TAG566:
addiu $4, $4, 5
sll $0, $0, 0
sll $1, $4, 7
mthi $4
TAG567:
nor $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
div $1, $3
TAG568:
sll $0, $0, 0
bltz $1, TAG569
divu $1, $1
mult $1, $1
TAG569:
mflo $3
or $1, $3, $3
multu $3, $1
beq $1, $1, TAG570
TAG570:
ori $3, $1, 11
sll $0, $0, 0
beq $3, $1, TAG571
sll $0, $0, 0
TAG571:
divu $4, $4
mthi $4
beq $4, $4, TAG572
mflo $4
TAG572:
addiu $2, $4, 13
multu $2, $4
srav $3, $4, $4
bgtz $2, TAG573
TAG573:
mflo $4
lb $4, 0($4)
multu $4, $3
slt $3, $3, $3
TAG574:
mfhi $4
bltz $4, TAG575
andi $4, $4, 6
mthi $4
TAG575:
beq $4, $4, TAG576
mult $4, $4
lh $2, 0($4)
mflo $1
TAG576:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG577
mfhi $1
TAG577:
beq $1, $1, TAG578
lui $2, 10
sh $2, 0($1)
mthi $1
TAG578:
bgtz $2, TAG579
sltu $3, $2, $2
mfhi $4
nor $2, $4, $4
TAG579:
sll $0, $0, 0
bltz $2, TAG580
lui $4, 15
mfhi $2
TAG580:
andi $2, $2, 12
mult $2, $2
bgez $2, TAG581
mthi $2
TAG581:
lui $3, 2
bltz $2, TAG582
mthi $3
mflo $4
TAG582:
sh $4, 0($4)
mult $4, $4
lh $2, 0($4)
mflo $4
TAG583:
lw $2, 0($4)
lui $2, 2
beq $2, $4, TAG584
xor $1, $2, $2
TAG584:
lh $1, 0($1)
lhu $1, 0($1)
mtlo $1
mult $1, $1
TAG585:
bne $1, $1, TAG586
or $3, $1, $1
xor $3, $1, $1
mflo $4
TAG586:
mtlo $4
bne $4, $4, TAG587
multu $4, $4
sub $2, $4, $4
TAG587:
lw $4, 0($2)
sltu $4, $2, $4
beq $4, $4, TAG588
lui $4, 12
TAG588:
mthi $4
sll $0, $0, 0
sltiu $1, $4, 7
sw $4, 0($1)
TAG589:
multu $1, $1
mtlo $1
mult $1, $1
sh $1, 0($1)
TAG590:
addu $2, $1, $1
srav $4, $1, $2
bne $2, $2, TAG591
sllv $1, $4, $2
TAG591:
mtlo $1
mtlo $1
and $4, $1, $1
sra $1, $1, 5
TAG592:
mthi $1
lui $1, 10
sra $3, $1, 14
bltz $1, TAG593
TAG593:
sh $3, 0($3)
beq $3, $3, TAG594
mthi $3
lhu $3, 0($3)
TAG594:
blez $3, TAG595
lb $2, 0($3)
sb $2, 0($2)
sw $3, 0($3)
TAG595:
mflo $2
beq $2, $2, TAG596
multu $2, $2
subu $3, $2, $2
TAG596:
bne $3, $3, TAG597
addu $1, $3, $3
mthi $1
srlv $4, $3, $3
TAG597:
beq $4, $4, TAG598
mflo $3
mfhi $1
sh $3, 0($1)
TAG598:
srl $1, $1, 0
xori $2, $1, 5
lui $1, 8
mtlo $1
TAG599:
sll $0, $0, 0
xori $2, $1, 11
lui $2, 3
lui $1, 1
TAG600:
ori $2, $1, 2
lui $1, 15
sll $0, $0, 0
divu $1, $1
TAG601:
addiu $1, $2, 6
mflo $4
beq $2, $2, TAG602
ori $3, $4, 9
TAG602:
lui $3, 15
addu $1, $3, $3
divu $1, $3
sll $0, $0, 0
TAG603:
mult $4, $4
mthi $4
sb $4, 0($4)
mthi $4
TAG604:
xori $2, $4, 2
bgez $2, TAG605
srl $1, $2, 2
bne $2, $4, TAG605
TAG605:
lui $4, 1
beq $4, $1, TAG606
mthi $4
sll $0, $0, 0
TAG606:
bgez $4, TAG607
slti $2, $4, 14
blez $4, TAG607
lb $2, 0($2)
TAG607:
lui $2, 2
mtlo $2
mthi $2
nor $2, $2, $2
TAG608:
mtlo $2
mult $2, $2
lui $3, 6
divu $3, $3
TAG609:
mthi $3
mthi $3
mthi $3
bltz $3, TAG610
TAG610:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG611
xori $3, $2, 1
TAG611:
srav $4, $3, $3
sra $4, $4, 2
lui $1, 15
ori $1, $4, 11
TAG612:
bgtz $1, TAG613
lui $3, 12
sll $0, $0, 0
bne $3, $1, TAG613
TAG613:
mfhi $2
xor $1, $3, $3
sll $0, $0, 0
and $3, $1, $1
TAG614:
lbu $2, 0($3)
bltz $3, TAG615
lui $4, 6
bgez $2, TAG615
TAG615:
lui $3, 11
blez $3, TAG616
addu $4, $3, $3
beq $4, $3, TAG616
TAG616:
slt $2, $4, $4
bltz $2, TAG617
srl $4, $2, 13
lui $3, 11
TAG617:
mult $3, $3
bgez $3, TAG618
multu $3, $3
mtlo $3
TAG618:
divu $3, $3
bltz $3, TAG619
sll $0, $0, 0
lui $3, 12
TAG619:
sll $0, $0, 0
mflo $3
xori $2, $3, 12
mflo $2
TAG620:
mtlo $2
andi $1, $2, 15
sll $2, $2, 9
sltiu $4, $2, 2
TAG621:
multu $4, $4
lbu $2, 0($4)
mthi $4
bne $4, $2, TAG622
TAG622:
sh $2, 0($2)
lui $1, 9
addiu $1, $2, 5
mtlo $1
TAG623:
multu $1, $1
lui $1, 11
sll $0, $0, 0
sll $0, $0, 0
TAG624:
bne $4, $4, TAG625
and $3, $4, $4
mfhi $4
mtlo $3
TAG625:
mtlo $4
blez $4, TAG626
srav $4, $4, $4
lh $3, 0($4)
TAG626:
or $4, $3, $3
xor $2, $4, $3
sw $2, 0($2)
bltz $4, TAG627
TAG627:
mult $2, $2
or $1, $2, $2
lui $2, 9
mfhi $3
TAG628:
lui $4, 14
lui $2, 10
beq $2, $4, TAG629
sll $0, $0, 0
TAG629:
sltiu $3, $4, 11
multu $4, $3
mtlo $4
multu $3, $3
TAG630:
mthi $3
lui $1, 8
nor $2, $1, $3
srl $3, $1, 13
TAG631:
mult $3, $3
lw $4, 0($3)
lui $4, 11
divu $3, $4
TAG632:
sll $0, $0, 0
mflo $3
xori $2, $3, 4
mthi $4
TAG633:
mthi $2
sh $2, 0($2)
addu $3, $2, $2
lw $2, 0($2)
TAG634:
beq $2, $2, TAG635
sb $2, 0($2)
bne $2, $2, TAG635
lbu $3, 0($2)
TAG635:
nor $3, $3, $3
andi $1, $3, 1
subu $3, $1, $1
mfhi $3
TAG636:
lui $1, 0
beq $1, $1, TAG637
slt $2, $1, $1
lh $3, 0($3)
TAG637:
addu $1, $3, $3
bgtz $1, TAG638
lui $4, 4
bne $4, $1, TAG638
TAG638:
slti $2, $4, 13
lui $3, 0
bne $4, $4, TAG639
sll $0, $0, 0
TAG639:
sll $0, $0, 0
sltiu $3, $4, 13
addiu $2, $4, 7
sll $0, $0, 0
TAG640:
subu $1, $4, $4
sll $0, $0, 0
mult $3, $4
bgtz $1, TAG641
TAG641:
multu $3, $3
slt $3, $3, $3
mult $3, $3
sh $3, 0($3)
TAG642:
mflo $3
multu $3, $3
lw $2, 0($3)
add $1, $2, $3
TAG643:
sh $1, 0($1)
beq $1, $1, TAG644
subu $3, $1, $1
srav $4, $1, $3
TAG644:
beq $4, $4, TAG645
mult $4, $4
lhu $2, 0($4)
beq $4, $4, TAG645
TAG645:
sb $2, 0($2)
sh $2, 0($2)
bgez $2, TAG646
lh $1, 0($2)
TAG646:
sb $1, 0($1)
sh $1, 0($1)
lui $1, 0
lh $3, 0($1)
TAG647:
mthi $3
lhu $2, 0($3)
sw $3, 0($3)
sltiu $2, $2, 15
TAG648:
lui $3, 4
mtlo $3
lui $2, 12
addu $1, $2, $2
TAG649:
xor $3, $1, $1
mflo $4
mthi $4
sll $0, $0, 0
TAG650:
and $2, $4, $4
beq $2, $4, TAG651
sll $0, $0, 0
sll $2, $3, 12
TAG651:
bne $2, $2, TAG652
sll $0, $0, 0
blez $2, TAG652
mfhi $3
TAG652:
addu $4, $3, $3
or $1, $4, $4
sll $0, $0, 0
subu $3, $1, $4
TAG653:
lui $3, 14
mflo $1
beq $3, $1, TAG654
mflo $2
TAG654:
lui $4, 8
beq $4, $2, TAG655
sltiu $2, $2, 4
beq $2, $4, TAG655
TAG655:
sra $3, $2, 12
beq $3, $3, TAG656
andi $3, $3, 8
slti $1, $3, 8
TAG656:
sllv $2, $1, $1
mflo $3
addu $4, $3, $3
mflo $1
TAG657:
addiu $2, $1, 10
bgtz $1, TAG658
mthi $1
lui $3, 4
TAG658:
mthi $3
mfhi $3
divu $3, $3
blez $3, TAG659
TAG659:
mfhi $4
beq $4, $4, TAG660
lw $1, 0($4)
bgez $3, TAG660
TAG660:
mflo $2
bne $1, $2, TAG661
lbu $4, 0($2)
srl $3, $2, 1
TAG661:
bne $3, $3, TAG662
sll $0, $0, 0
lui $1, 13
bltz $1, TAG662
TAG662:
addu $1, $1, $1
sll $0, $0, 0
mflo $2
ori $2, $3, 13
TAG663:
sll $0, $0, 0
lui $4, 11
mflo $3
sltiu $4, $2, 13
TAG664:
lui $3, 5
srl $3, $3, 9
sb $4, -640($3)
mflo $4
TAG665:
bltz $4, TAG666
divu $4, $4
lb $2, 0($4)
beq $2, $2, TAG666
TAG666:
mtlo $2
mthi $2
multu $2, $2
lui $2, 9
TAG667:
beq $2, $2, TAG668
ori $4, $2, 5
mtlo $4
lh $4, 0($4)
TAG668:
lui $3, 4
divu $4, $3
sll $0, $0, 0
mflo $1
TAG669:
mthi $1
bgtz $1, TAG670
sh $1, 0($1)
addu $2, $1, $1
TAG670:
divu $2, $2
mthi $2
bne $2, $2, TAG671
sll $0, $0, 0
TAG671:
mthi $2
subu $1, $2, $2
beq $1, $1, TAG672
multu $2, $1
TAG672:
lhu $2, 0($1)
sw $1, 0($1)
srl $3, $2, 7
bne $3, $3, TAG673
TAG673:
slti $3, $3, 6
sb $3, 0($3)
slti $1, $3, 10
ori $1, $3, 3
TAG674:
lb $3, 0($1)
mthi $3
mfhi $3
bgez $3, TAG675
TAG675:
mthi $3
mthi $3
mthi $3
lb $3, 0($3)
TAG676:
mthi $3
srav $4, $3, $3
lbu $1, 0($3)
slt $3, $3, $1
TAG677:
sll $4, $3, 11
mult $4, $3
mthi $4
mfhi $1
TAG678:
sh $1, 0($1)
bgez $1, TAG679
mfhi $1
mflo $4
TAG679:
mult $4, $4
lb $4, 0($4)
bne $4, $4, TAG680
mfhi $2
TAG680:
xori $1, $2, 9
xori $2, $1, 0
addiu $4, $2, 2
bgtz $2, TAG681
TAG681:
sb $4, 0($4)
srl $4, $4, 12
multu $4, $4
mflo $3
TAG682:
bgtz $3, TAG683
and $3, $3, $3
multu $3, $3
mflo $1
TAG683:
beq $1, $1, TAG684
mtlo $1
addi $1, $1, 5
mflo $1
TAG684:
sltu $4, $1, $1
or $4, $1, $1
multu $1, $4
mfhi $1
TAG685:
ori $4, $1, 3
mtlo $4
mthi $4
mflo $3
TAG686:
lui $2, 12
beq $3, $2, TAG687
sll $0, $0, 0
mthi $3
TAG687:
blez $2, TAG688
lui $1, 14
sll $0, $0, 0
bne $1, $2, TAG688
TAG688:
sllv $3, $2, $2
bgez $3, TAG689
xori $1, $3, 15
multu $3, $3
TAG689:
lui $3, 3
sll $0, $0, 0
lui $1, 1
and $3, $3, $1
TAG690:
mtlo $3
sll $0, $0, 0
sllv $1, $1, $3
blez $3, TAG691
TAG691:
sll $0, $0, 0
addiu $1, $1, 0
addu $4, $1, $1
lui $3, 13
TAG692:
mfhi $3
divu $3, $3
lui $3, 9
beq $3, $3, TAG693
TAG693:
mtlo $3
addu $4, $3, $3
addiu $4, $4, 0
nor $2, $4, $4
TAG694:
sll $0, $0, 0
bgtz $4, TAG695
mtlo $4
beq $2, $2, TAG695
TAG695:
mflo $2
mfhi $3
or $2, $3, $2
lui $2, 11
TAG696:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 6
mflo $2
TAG697:
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
mult $3, $3
TAG698:
mtlo $3
mflo $4
mult $4, $4
bgez $3, TAG699
TAG699:
mtlo $4
beq $4, $4, TAG700
sh $4, 0($4)
lhu $3, 0($4)
TAG700:
sw $3, 0($3)
sra $2, $3, 8
sh $3, 0($2)
or $2, $3, $3
TAG701:
mfhi $2
mfhi $1
mult $2, $2
bgtz $1, TAG702
TAG702:
ori $2, $1, 7
lui $2, 7
multu $2, $1
multu $2, $2
TAG703:
bgtz $2, TAG704
sll $0, $0, 0
bne $2, $2, TAG704
sb $2, 0($2)
TAG704:
divu $2, $2
bne $2, $2, TAG705
mflo $1
div $1, $2
TAG705:
mtlo $1
sb $1, 0($1)
lui $3, 6
mflo $1
TAG706:
mthi $1
sllv $1, $1, $1
slt $4, $1, $1
multu $4, $1
TAG707:
bgtz $4, TAG708
sltiu $2, $4, 14
xori $3, $2, 10
andi $3, $3, 1
TAG708:
blez $3, TAG709
mtlo $3
divu $3, $3
mtlo $3
TAG709:
lbu $1, 0($3)
sltu $4, $3, $3
lui $3, 5
sb $3, 0($1)
TAG710:
mflo $2
mflo $1
lui $2, 6
sb $3, 0($1)
TAG711:
mflo $3
srl $3, $3, 1
multu $2, $2
mfhi $1
TAG712:
sb $1, 0($1)
srlv $2, $1, $1
blez $1, TAG713
lb $1, 0($2)
TAG713:
bne $1, $1, TAG714
mult $1, $1
mtlo $1
lhu $3, 0($1)
TAG714:
lh $3, 0($3)
multu $3, $3
lhu $2, 0($3)
slti $2, $2, 11
TAG715:
lui $3, 14
blez $2, TAG716
subu $3, $3, $3
bne $2, $3, TAG716
TAG716:
mfhi $3
sw $3, 0($3)
bne $3, $3, TAG717
nor $1, $3, $3
TAG717:
sw $1, 1($1)
beq $1, $1, TAG718
lui $3, 14
lhu $4, 0($3)
TAG718:
sw $4, 0($4)
blez $4, TAG719
lui $4, 6
mtlo $4
TAG719:
mfhi $4
bne $4, $4, TAG720
lui $1, 8
mult $4, $1
TAG720:
addu $1, $1, $1
bne $1, $1, TAG721
lui $3, 13
xori $3, $1, 9
TAG721:
bne $3, $3, TAG722
sll $0, $0, 0
sll $0, $0, 0
lui $3, 1
TAG722:
addiu $3, $3, 7
mflo $3
lbu $1, 0($3)
mfhi $1
TAG723:
sb $1, 0($1)
slti $2, $1, 2
lw $1, 0($1)
bgtz $2, TAG724
TAG724:
addiu $2, $1, 6
mtlo $1
bne $2, $2, TAG725
and $4, $1, $2
TAG725:
bgtz $4, TAG726
srlv $2, $4, $4
lui $1, 6
lb $1, 0($4)
TAG726:
subu $3, $1, $1
mtlo $3
or $2, $3, $1
sb $2, 0($3)
TAG727:
mflo $1
mult $2, $1
lui $2, 5
multu $1, $2
TAG728:
or $2, $2, $2
lui $4, 14
mfhi $1
beq $4, $4, TAG729
TAG729:
srl $3, $1, 6
slti $3, $3, 10
lui $1, 4
sll $0, $0, 0
TAG730:
mflo $1
sh $1, 0($1)
xori $4, $1, 8
divu $4, $4
TAG731:
sra $2, $4, 12
lbu $3, 0($2)
sh $3, 0($3)
sw $4, 0($4)
TAG732:
beq $3, $3, TAG733
addu $1, $3, $3
lbu $2, 0($1)
bne $1, $3, TAG733
TAG733:
mthi $2
beq $2, $2, TAG734
lui $1, 11
sw $1, 0($2)
TAG734:
sllv $4, $1, $1
multu $4, $1
addiu $4, $4, 5
blez $4, TAG735
TAG735:
mfhi $3
sll $0, $0, 0
and $4, $4, $4
or $1, $3, $4
TAG736:
addiu $3, $1, 12
mflo $1
bgez $3, TAG737
slti $2, $1, 7
TAG737:
slt $4, $2, $2
bgtz $2, TAG738
addu $4, $2, $2
lhu $4, 0($4)
TAG738:
mtlo $4
mflo $3
beq $3, $3, TAG739
lb $2, 0($4)
TAG739:
sh $2, 0($2)
mthi $2
sw $2, 0($2)
sb $2, 0($2)
TAG740:
lui $3, 12
multu $3, $3
sllv $1, $3, $2
bne $2, $1, TAG741
TAG741:
addu $2, $1, $1
bne $1, $1, TAG742
slti $3, $2, 6
lbu $4, 0($3)
TAG742:
nor $4, $4, $4
subu $2, $4, $4
add $3, $2, $4
lui $3, 2
TAG743:
lui $3, 15
addiu $3, $3, 9
sll $0, $0, 0
bgez $3, TAG744
TAG744:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG745:
bne $2, $2, TAG746
andi $1, $2, 11
lhu $4, 0($1)
mult $1, $4
TAG746:
mflo $4
srav $4, $4, $4
add $3, $4, $4
xor $2, $4, $4
TAG747:
mflo $2
sltiu $4, $2, 8
multu $2, $2
sb $4, 0($2)
TAG748:
mtlo $4
nor $3, $4, $4
mthi $4
sh $4, 2($3)
TAG749:
beq $3, $3, TAG750
sw $3, 2($3)
lw $1, 0($3)
sltu $2, $3, $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop