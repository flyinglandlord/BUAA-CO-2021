ori $1, $0, 14
ori $2, $0, 12
ori $3, $0, 7
ori $4, $0, 6
sw $2, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $4, 32($0)
sw $3, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $4, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $1, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $4, 96($0)
sw $1, 100($0)
sw $3, 104($0)
sw $2, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $4, 124($0)
sh $2, 0($2)
mtlo $2
lui $4, 1
sh $2, 0($2)
TAG1:
sll $0, $0, 0
sb $4, 0($3)
mtlo $3
mult $4, $4
TAG2:
mtlo $3
blez $3, TAG3
lb $2, 0($3)
beq $2, $2, TAG3
TAG3:
mtlo $2
mflo $3
lbu $2, 0($2)
sllv $3, $2, $2
TAG4:
sll $0, $0, 0
mult $3, $3
mfhi $3
mthi $3
TAG5:
bne $3, $3, TAG6
lhu $2, 0($3)
mult $3, $2
sw $2, 0($2)
TAG6:
lbu $3, 0($2)
mfhi $4
lui $3, 1
mflo $1
TAG7:
mult $1, $1
multu $1, $1
lui $4, 3
lui $4, 8
TAG8:
sll $0, $0, 0
mthi $4
srl $1, $3, 11
ori $1, $1, 5
TAG9:
sb $1, 0($1)
lui $4, 8
div $4, $1
subu $4, $1, $4
TAG10:
nor $2, $4, $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG11:
srl $2, $3, 14
mthi $3
andi $2, $3, 12
bne $2, $2, TAG12
TAG12:
sb $2, 0($2)
lb $3, 0($2)
bne $3, $3, TAG13
multu $2, $3
TAG13:
mflo $3
bne $3, $3, TAG14
or $1, $3, $3
addiu $2, $1, 11
TAG14:
sb $2, 0($2)
lui $3, 6
sra $4, $2, 4
divu $4, $2
TAG15:
lui $1, 9
bgtz $1, TAG16
slt $4, $1, $1
divu $1, $4
TAG16:
srav $2, $4, $4
addiu $4, $2, 15
lui $3, 6
mtlo $2
TAG17:
lui $3, 12
mthi $3
bne $3, $3, TAG18
sll $0, $0, 0
TAG18:
sb $4, 0($4)
divu $4, $4
mflo $3
mthi $4
TAG19:
lbu $2, 0($3)
srl $4, $2, 9
sw $2, 0($2)
mult $2, $2
TAG20:
bltz $4, TAG21
lui $3, 14
sll $4, $4, 2
mtlo $4
TAG21:
bgtz $4, TAG22
sh $4, 0($4)
sb $4, 0($4)
multu $4, $4
TAG22:
and $3, $4, $4
mult $3, $3
sub $2, $4, $3
mflo $2
TAG23:
lui $3, 12
mflo $4
mtlo $3
div $2, $3
TAG24:
beq $4, $4, TAG25
subu $2, $4, $4
subu $3, $4, $2
div $3, $2
TAG25:
mflo $4
beq $4, $4, TAG26
srav $2, $4, $3
bne $4, $2, TAG26
TAG26:
lui $2, 15
lui $3, 9
sll $0, $0, 0
div $4, $3
TAG27:
mflo $3
mult $3, $3
bne $3, $4, TAG28
mfhi $2
TAG28:
blez $2, TAG29
mthi $2
bltz $2, TAG29
lui $1, 10
TAG29:
lui $3, 1
mthi $1
mthi $3
beq $1, $1, TAG30
TAG30:
mfhi $3
lui $1, 1
blez $1, TAG31
lui $1, 1
TAG31:
srlv $2, $1, $1
sltu $2, $1, $1
addu $3, $2, $2
mfhi $1
TAG32:
multu $1, $1
sll $0, $0, 0
srav $4, $2, $2
sh $4, 0($4)
TAG33:
bltz $4, TAG34
slti $3, $4, 3
sb $4, 0($3)
add $4, $4, $4
TAG34:
bltz $4, TAG35
sw $4, 0($4)
lui $4, 14
sll $0, $0, 0
TAG35:
srav $4, $4, $4
sll $0, $0, 0
div $4, $4
mflo $4
TAG36:
lb $1, 0($4)
mflo $4
bltz $1, TAG37
xor $1, $4, $4
TAG37:
lh $4, 0($1)
sh $4, 0($4)
subu $2, $4, $4
mthi $1
TAG38:
ori $4, $2, 7
lbu $4, 0($4)
lui $2, 9
addiu $3, $2, 0
TAG39:
mfhi $1
addi $2, $1, 10
mtlo $2
bltz $2, TAG40
TAG40:
lbu $1, 0($2)
lui $4, 1
lui $4, 15
div $4, $2
TAG41:
sllv $1, $4, $4
xori $3, $4, 11
lui $3, 11
subu $1, $4, $3
TAG42:
sra $2, $1, 3
sll $0, $0, 0
mfhi $2
multu $2, $2
TAG43:
lui $4, 12
sll $0, $0, 0
slt $1, $4, $4
sll $0, $0, 0
TAG44:
lui $2, 4
beq $2, $2, TAG45
lh $2, 0($1)
bne $2, $1, TAG45
TAG45:
sb $2, 0($2)
mtlo $2
bgez $2, TAG46
mthi $2
TAG46:
multu $2, $2
mthi $2
mtlo $2
sw $2, 0($2)
TAG47:
multu $2, $2
mtlo $2
lb $4, 0($2)
sw $4, 0($2)
TAG48:
xor $4, $4, $4
lhu $3, 0($4)
bne $3, $4, TAG49
lui $3, 9
TAG49:
divu $3, $3
div $3, $3
bne $3, $3, TAG50
sll $2, $3, 11
TAG50:
lui $2, 3
mfhi $3
bgez $3, TAG51
sll $2, $2, 5
TAG51:
beq $2, $2, TAG52
multu $2, $2
mflo $3
lui $1, 10
TAG52:
slt $1, $1, $1
sub $3, $1, $1
addi $3, $3, 9
lui $4, 8
TAG53:
or $1, $4, $4
bne $1, $1, TAG54
sll $0, $0, 0
div $4, $1
TAG54:
sra $2, $1, 12
sll $0, $0, 0
bne $1, $1, TAG55
mtlo $1
TAG55:
lui $4, 15
ori $3, $2, 3
mthi $3
slti $3, $2, 2
TAG56:
mfhi $1
mfhi $3
beq $1, $3, TAG57
addu $2, $3, $3
TAG57:
sra $3, $2, 8
divu $3, $2
div $2, $3
subu $2, $3, $2
TAG58:
sw $2, 261($2)
blez $2, TAG59
mtlo $2
lui $2, 9
TAG59:
subu $1, $2, $2
subu $1, $2, $2
lw $4, 261($2)
bltz $1, TAG60
TAG60:
sb $4, 261($4)
blez $4, TAG61
mthi $4
mthi $4
TAG61:
sh $4, 261($4)
sll $4, $4, 1
mthi $4
mtlo $4
TAG62:
lui $4, 15
mult $4, $4
andi $2, $4, 14
sll $0, $0, 0
TAG63:
mtlo $3
bgez $3, TAG64
srlv $2, $3, $3
bgez $2, TAG64
TAG64:
andi $3, $2, 10
multu $2, $3
lhu $4, 0($3)
sll $0, $0, 0
TAG65:
bne $4, $4, TAG66
divu $4, $4
mult $4, $4
xor $4, $4, $4
TAG66:
blez $4, TAG67
mult $4, $4
mflo $4
sh $4, 0($4)
TAG67:
mthi $4
beq $4, $4, TAG68
mflo $1
mthi $1
TAG68:
bgez $1, TAG69
mflo $4
mult $1, $1
multu $4, $4
TAG69:
sltiu $4, $4, 12
div $4, $4
nor $2, $4, $4
sb $4, 2($2)
TAG70:
subu $2, $2, $2
lui $4, 3
mtlo $4
mfhi $2
TAG71:
blez $2, TAG72
subu $3, $2, $2
andi $2, $2, 1
add $1, $2, $2
TAG72:
lw $2, 0($1)
mflo $1
beq $1, $1, TAG73
mult $1, $2
TAG73:
lui $3, 15
sltiu $2, $3, 8
mthi $3
lui $3, 7
TAG74:
srl $4, $3, 1
div $3, $4
beq $4, $3, TAG75
mflo $1
TAG75:
mfhi $2
bne $2, $1, TAG76
sltu $1, $1, $2
lb $1, 0($1)
TAG76:
bne $1, $1, TAG77
lhu $1, 0($1)
blez $1, TAG77
mflo $1
TAG77:
bgtz $1, TAG78
div $1, $1
beq $1, $1, TAG78
mfhi $2
TAG78:
addi $2, $2, 15
lui $2, 4
mtlo $2
mfhi $4
TAG79:
beq $4, $4, TAG80
mfhi $1
addi $1, $1, 1
lbu $1, 0($1)
TAG80:
bgez $1, TAG81
mfhi $3
bltz $3, TAG81
mflo $4
TAG81:
sb $4, 0($4)
mthi $4
srlv $1, $4, $4
or $3, $1, $4
TAG82:
blez $3, TAG83
sll $4, $3, 15
lui $1, 6
sw $4, 0($4)
TAG83:
bne $1, $1, TAG84
lui $1, 13
mult $1, $1
sll $0, $0, 0
TAG84:
mult $1, $1
sll $0, $0, 0
bgez $3, TAG85
sll $0, $0, 0
TAG85:
lui $1, 4
sltiu $4, $1, 4
sub $4, $1, $4
lhu $2, 0($3)
TAG86:
bne $2, $2, TAG87
divu $2, $2
bne $2, $2, TAG87
sll $0, $0, 0
TAG87:
mthi $2
lui $3, 15
xor $3, $2, $3
divu $3, $3
TAG88:
addiu $3, $3, 3
mflo $4
addu $3, $3, $4
blez $3, TAG89
TAG89:
div $3, $3
beq $3, $3, TAG90
or $3, $3, $3
mtlo $3
TAG90:
mthi $3
bne $3, $3, TAG91
lui $4, 6
nor $1, $3, $4
TAG91:
sll $0, $0, 0
mult $2, $1
sll $0, $0, 0
srlv $2, $1, $2
TAG92:
subu $1, $2, $2
mfhi $2
lui $1, 11
sll $0, $0, 0
TAG93:
sll $0, $0, 0
bgez $1, TAG94
sll $0, $0, 0
lh $3, 0($1)
TAG94:
mflo $3
slti $2, $3, 5
sllv $1, $2, $3
sllv $1, $2, $2
TAG95:
mfhi $2
lw $1, 0($1)
mfhi $2
bne $1, $2, TAG96
TAG96:
mult $2, $2
multu $2, $2
sltiu $3, $2, 14
bne $3, $2, TAG97
TAG97:
lui $3, 10
lui $3, 12
slti $4, $3, 14
sllv $1, $4, $3
TAG98:
mflo $3
mtlo $3
sw $1, 0($1)
mflo $1
TAG99:
mtlo $1
multu $1, $1
bltz $1, TAG100
mfhi $3
TAG100:
sw $3, 0($3)
sb $3, 0($3)
addiu $2, $3, 10
bltz $2, TAG101
TAG101:
mtlo $2
sllv $4, $2, $2
sh $4, -10240($4)
subu $3, $4, $4
TAG102:
subu $1, $3, $3
mult $1, $1
bgez $1, TAG103
lui $1, 5
TAG103:
mfhi $2
subu $3, $2, $1
mtlo $3
sll $0, $0, 0
TAG104:
bgez $2, TAG105
lui $1, 4
addiu $2, $2, 12
addi $3, $2, 10
TAG105:
sll $0, $0, 0
bgtz $3, TAG106
sll $0, $0, 0
lui $3, 13
TAG106:
lui $4, 7
sra $1, $3, 2
beq $1, $1, TAG107
mthi $1
TAG107:
mfhi $4
ori $3, $4, 6
sll $0, $0, 0
lui $3, 5
TAG108:
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG109
mult $4, $3
TAG109:
bne $4, $4, TAG110
nor $2, $4, $4
mfhi $4
bne $4, $4, TAG110
TAG110:
lui $3, 13
sh $4, 0($4)
slt $3, $4, $4
lhu $3, 0($3)
TAG111:
div $3, $3
blez $3, TAG112
sltu $4, $3, $3
mult $4, $4
TAG112:
lh $1, 0($4)
bgez $4, TAG113
divu $4, $1
sltiu $4, $1, 8
TAG113:
lui $3, 11
bne $4, $3, TAG114
or $3, $3, $3
mthi $3
TAG114:
mfhi $2
mtlo $3
mtlo $2
srl $4, $3, 5
TAG115:
beq $4, $4, TAG116
lui $1, 1
sw $4, 0($4)
bne $1, $4, TAG116
TAG116:
mthi $1
sll $0, $0, 0
bne $1, $1, TAG117
lui $1, 7
TAG117:
srlv $4, $1, $1
sll $0, $0, 0
addu $2, $4, $4
lui $3, 13
TAG118:
srlv $4, $3, $3
blez $3, TAG119
lui $4, 5
sll $0, $0, 0
TAG119:
mthi $4
sra $3, $4, 13
mthi $4
divu $3, $4
TAG120:
lbu $1, 0($3)
srav $4, $1, $3
mtlo $3
lui $3, 5
TAG121:
divu $3, $3
bltz $3, TAG122
ori $1, $3, 1
sll $0, $0, 0
TAG122:
mflo $2
mthi $2
bne $2, $2, TAG123
srav $4, $2, $1
TAG123:
sra $1, $4, 14
mfhi $4
lui $3, 14
lui $2, 12
TAG124:
lui $4, 0
lui $4, 5
bne $4, $4, TAG125
sll $0, $0, 0
TAG125:
addiu $4, $2, 10
mfhi $1
bne $1, $1, TAG126
mflo $1
TAG126:
sb $1, 0($1)
bgtz $1, TAG127
sb $1, 0($1)
mfhi $4
TAG127:
sll $0, $0, 0
bne $3, $4, TAG128
sllv $2, $4, $4
mflo $1
TAG128:
sb $1, 0($1)
sb $1, 0($1)
mflo $4
lb $4, 0($4)
TAG129:
slti $3, $4, 1
bgtz $4, TAG130
srav $1, $4, $3
ori $4, $4, 2
TAG130:
xor $2, $4, $4
bltz $4, TAG131
add $1, $2, $2
sb $2, 0($4)
TAG131:
andi $4, $1, 11
mthi $1
mthi $4
mthi $1
TAG132:
sb $4, 0($4)
sb $4, 0($4)
bne $4, $4, TAG133
lui $2, 11
TAG133:
bgtz $2, TAG134
lui $2, 2
blez $2, TAG134
mthi $2
TAG134:
mflo $3
lbu $1, 0($3)
mfhi $2
sb $1, 0($2)
TAG135:
bgez $2, TAG136
sh $2, 0($2)
div $2, $2
bgtz $2, TAG136
TAG136:
mtlo $2
lui $2, 4
bne $2, $2, TAG137
sll $4, $2, 8
TAG137:
xor $4, $4, $4
mult $4, $4
mfhi $2
sw $2, 0($2)
TAG138:
beq $2, $2, TAG139
sb $2, 0($2)
addiu $2, $2, 7
lh $1, 0($2)
TAG139:
bgtz $1, TAG140
mflo $1
or $2, $1, $1
sb $2, 0($2)
TAG140:
bgtz $2, TAG141
sb $2, 0($2)
sw $2, 0($2)
sltu $4, $2, $2
TAG141:
multu $4, $4
bne $4, $4, TAG142
lui $4, 7
ori $2, $4, 12
TAG142:
mtlo $2
slti $2, $2, 10
lhu $2, 0($2)
mtlo $2
TAG143:
lui $1, 7
lb $1, 0($2)
lui $4, 2
lh $4, 0($2)
TAG144:
lbu $1, 0($4)
mfhi $3
sw $4, 0($3)
bne $3, $1, TAG145
TAG145:
slt $4, $3, $3
bltz $3, TAG146
mthi $4
blez $4, TAG146
TAG146:
multu $4, $4
blez $4, TAG147
and $1, $4, $4
multu $4, $1
TAG147:
lui $4, 4
lui $4, 3
sltu $1, $4, $4
bltz $1, TAG148
TAG148:
lbu $4, 0($1)
bgez $1, TAG149
addi $2, $4, 11
div $1, $2
TAG149:
xori $3, $2, 2
beq $3, $3, TAG150
div $3, $2
mthi $3
TAG150:
xor $2, $3, $3
mtlo $3
mtlo $2
andi $2, $3, 1
TAG151:
bne $2, $2, TAG152
sb $2, 0($2)
mflo $4
mthi $2
TAG152:
mult $4, $4
bgez $4, TAG153
multu $4, $4
div $4, $4
TAG153:
lui $4, 4
lui $2, 2
blez $4, TAG154
sll $0, $0, 0
TAG154:
multu $2, $2
div $2, $2
and $1, $2, $2
lui $4, 11
TAG155:
sll $0, $0, 0
bgez $4, TAG156
mflo $3
blez $4, TAG156
TAG156:
lb $2, 0($3)
srl $4, $3, 5
sb $3, 0($3)
sltu $3, $4, $2
TAG157:
lb $2, 0($3)
mfhi $3
beq $3, $3, TAG158
srl $2, $3, 4
TAG158:
sltu $3, $2, $2
sw $3, 0($3)
bltz $3, TAG159
xor $4, $2, $3
TAG159:
beq $4, $4, TAG160
srl $1, $4, 6
ori $2, $1, 15
sb $1, 0($2)
TAG160:
sb $2, 0($2)
lhu $4, 0($2)
beq $4, $4, TAG161
lui $4, 6
TAG161:
sltiu $4, $4, 7
multu $4, $4
lbu $1, 0($4)
multu $4, $4
TAG162:
slti $2, $1, 8
sh $1, 0($1)
beq $2, $1, TAG163
mthi $2
TAG163:
bne $2, $2, TAG164
srav $4, $2, $2
div $2, $2
srlv $2, $4, $4
TAG164:
sb $2, 0($2)
lhu $4, 0($2)
mtlo $2
sllv $4, $4, $4
TAG165:
multu $4, $4
mthi $4
srl $3, $4, 10
lb $1, 0($4)
TAG166:
srl $1, $1, 4
lh $3, 0($1)
mfhi $1
multu $1, $1
TAG167:
subu $3, $1, $1
lui $3, 15
div $3, $3
sll $0, $0, 0
TAG168:
mthi $3
mflo $3
addu $4, $3, $3
sb $3, 0($3)
TAG169:
addu $2, $4, $4
sh $2, 0($4)
mfhi $3
bltz $2, TAG170
TAG170:
sltiu $3, $3, 6
lui $3, 14
sll $0, $0, 0
srlv $1, $3, $3
TAG171:
blez $1, TAG172
sll $0, $0, 0
lui $2, 0
beq $2, $2, TAG172
TAG172:
sra $4, $2, 3
addiu $4, $4, 5
lb $2, 0($4)
lui $1, 12
TAG173:
bgtz $1, TAG174
mflo $4
div $1, $1
bne $4, $4, TAG174
TAG174:
sll $2, $4, 15
addu $4, $4, $4
sllv $1, $4, $4
bgez $4, TAG175
TAG175:
sw $1, 0($1)
subu $1, $1, $1
lui $3, 11
sub $2, $1, $1
TAG176:
srav $3, $2, $2
subu $2, $3, $3
blez $3, TAG177
lhu $4, 0($2)
TAG177:
beq $4, $4, TAG178
slti $3, $4, 8
lui $2, 0
mflo $3
TAG178:
ori $3, $3, 10
mthi $3
mthi $3
mflo $3
TAG179:
bne $3, $3, TAG180
or $4, $3, $3
sb $4, 0($3)
bne $3, $3, TAG180
TAG180:
subu $3, $4, $4
lh $3, 0($3)
mult $4, $3
and $4, $3, $4
TAG181:
xori $4, $4, 8
blez $4, TAG182
lbu $3, 0($4)
beq $4, $3, TAG182
TAG182:
lhu $1, 0($3)
subu $3, $1, $1
mflo $3
mtlo $3
TAG183:
subu $3, $3, $3
beq $3, $3, TAG184
mthi $3
ori $3, $3, 11
TAG184:
mfhi $2
lh $2, 0($3)
mult $2, $3
mflo $2
TAG185:
srlv $4, $2, $2
mflo $3
bne $4, $3, TAG186
srl $1, $4, 5
TAG186:
lbu $4, 0($1)
mtlo $1
beq $4, $1, TAG187
and $4, $1, $1
TAG187:
blez $4, TAG188
mflo $1
beq $1, $4, TAG188
multu $1, $4
TAG188:
lbu $4, 0($1)
beq $4, $1, TAG189
nor $3, $4, $1
beq $4, $4, TAG189
TAG189:
srl $3, $3, 0
lui $3, 15
bgtz $3, TAG190
mthi $3
TAG190:
bltz $3, TAG191
srav $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG191:
mtlo $2
sll $3, $2, 2
xori $1, $2, 7
srlv $2, $3, $1
TAG192:
addu $4, $2, $2
mtlo $4
lui $2, 14
mtlo $4
TAG193:
lui $3, 3
subu $2, $2, $2
mthi $2
and $3, $3, $2
TAG194:
mflo $4
multu $3, $4
mult $3, $4
multu $3, $4
TAG195:
sll $0, $0, 0
divu $4, $4
lui $3, 2
bltz $3, TAG196
TAG196:
lui $1, 15
bne $3, $3, TAG197
mflo $2
lbu $2, 0($2)
TAG197:
bgtz $2, TAG198
ori $3, $2, 1
bne $2, $3, TAG198
mult $2, $2
TAG198:
sb $3, 0($3)
sll $1, $3, 1
mtlo $3
mthi $1
TAG199:
multu $1, $1
addiu $1, $1, 9
lui $4, 14
blez $4, TAG200
TAG200:
subu $1, $4, $4
sll $0, $0, 0
srlv $2, $4, $1
divu $3, $3
TAG201:
sll $0, $0, 0
beq $2, $2, TAG202
sll $0, $0, 0
lui $1, 9
TAG202:
lh $3, 0($1)
mult $3, $1
mflo $3
blez $3, TAG203
TAG203:
multu $3, $3
mult $3, $3
lui $4, 10
mfhi $2
TAG204:
sub $1, $2, $2
lui $3, 11
lui $2, 9
sll $0, $0, 0
TAG205:
sll $0, $0, 0
addu $2, $2, $2
beq $2, $2, TAG206
sll $0, $0, 0
TAG206:
beq $1, $1, TAG207
ori $2, $1, 13
sw $2, 0($1)
bgez $2, TAG207
TAG207:
mthi $2
div $2, $2
beq $2, $2, TAG208
multu $2, $2
TAG208:
sb $2, 0($2)
lb $3, 0($2)
addu $3, $3, $3
lui $3, 5
TAG209:
bne $3, $3, TAG210
mtlo $3
sll $0, $0, 0
ori $1, $3, 5
TAG210:
sll $0, $0, 0
beq $1, $1, TAG211
sllv $2, $1, $1
lw $3, 0($1)
TAG211:
mfhi $3
mthi $3
mflo $4
beq $3, $3, TAG212
TAG212:
subu $1, $4, $4
beq $4, $1, TAG213
lui $1, 6
andi $4, $1, 6
TAG213:
slt $4, $4, $4
sra $4, $4, 1
slti $3, $4, 12
multu $4, $4
TAG214:
addu $3, $3, $3
div $3, $3
mflo $2
bgtz $2, TAG215
TAG215:
sb $2, 0($2)
slti $3, $2, 11
divu $3, $2
bgtz $2, TAG216
TAG216:
mflo $3
nor $4, $3, $3
mflo $3
multu $3, $3
TAG217:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
TAG218:
sll $0, $0, 0
lui $1, 7
mult $2, $3
divu $1, $3
TAG219:
lui $4, 13
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG220:
lui $1, 4
subu $2, $4, $4
beq $2, $4, TAG221
lui $4, 2
TAG221:
bgtz $4, TAG222
sll $0, $0, 0
beq $4, $4, TAG222
sw $4, 0($4)
TAG222:
slti $1, $4, 15
lw $4, 0($1)
bne $4, $4, TAG223
divu $4, $4
TAG223:
beq $4, $4, TAG224
lui $4, 13
addiu $4, $4, 3
lw $3, 0($4)
TAG224:
bgez $3, TAG225
mfhi $1
lui $1, 4
bgez $3, TAG225
TAG225:
lhu $3, 0($1)
bltz $1, TAG226
sh $1, 0($1)
beq $1, $1, TAG226
TAG226:
lui $4, 15
mthi $3
mthi $3
or $2, $4, $4
TAG227:
multu $2, $2
beq $2, $2, TAG228
sltu $4, $2, $2
bgtz $4, TAG228
TAG228:
mfhi $1
bltz $1, TAG229
ori $2, $4, 3
div $4, $2
TAG229:
lbu $1, 0($2)
bgez $2, TAG230
mfhi $2
mflo $1
TAG230:
bgtz $1, TAG231
addiu $4, $1, 2
sllv $1, $1, $4
mfhi $4
TAG231:
bne $4, $4, TAG232
andi $4, $4, 2
mult $4, $4
xor $4, $4, $4
TAG232:
lui $1, 4
beq $4, $1, TAG233
lui $1, 11
sltu $4, $4, $4
TAG233:
mfhi $3
lui $2, 4
lui $2, 5
sll $0, $0, 0
TAG234:
mflo $3
bgez $2, TAG235
sub $4, $3, $3
blez $3, TAG235
TAG235:
srlv $1, $4, $4
sw $4, 0($1)
lbu $2, 0($1)
mult $2, $4
TAG236:
slti $3, $2, 8
lui $1, 7
lui $4, 11
mthi $2
TAG237:
divu $4, $4
addiu $4, $4, 9
mtlo $4
multu $4, $4
TAG238:
mflo $2
mthi $2
addu $4, $2, $2
mflo $3
TAG239:
lui $3, 11
beq $3, $3, TAG240
mult $3, $3
srav $2, $3, $3
TAG240:
mfhi $3
addiu $4, $3, 12
mfhi $1
or $4, $1, $4
TAG241:
mthi $4
bne $4, $4, TAG242
mthi $4
sw $4, -253($4)
TAG242:
divu $4, $4
mflo $1
sb $1, 0($1)
lb $4, -253($4)
TAG243:
mthi $4
sll $4, $4, 7
multu $4, $4
xori $1, $4, 5
TAG244:
beq $1, $1, TAG245
mult $1, $1
add $1, $1, $1
lui $4, 4
TAG245:
beq $4, $4, TAG246
mthi $4
mflo $2
sh $4, 0($4)
TAG246:
beq $2, $2, TAG247
sll $0, $0, 0
lh $1, 0($2)
lhu $2, 0($2)
TAG247:
divu $2, $2
bgez $2, TAG248
mfhi $3
bne $3, $2, TAG248
TAG248:
mflo $2
blez $2, TAG249
multu $3, $3
lhu $2, 0($3)
TAG249:
srlv $3, $2, $2
sltu $1, $3, $2
sltiu $1, $3, 7
div $1, $2
TAG250:
lui $3, 6
bne $1, $1, TAG251
mflo $1
lui $1, 3
TAG251:
ori $3, $1, 5
sll $0, $0, 0
blez $3, TAG252
sll $0, $0, 0
TAG252:
srl $4, $3, 1
sltu $2, $3, $3
sh $3, 0($2)
sll $0, $0, 0
TAG253:
sub $3, $2, $2
lh $1, 0($3)
mult $2, $2
sltiu $1, $3, 9
TAG254:
mtlo $1
mthi $1
div $1, $1
beq $1, $1, TAG255
TAG255:
divu $1, $1
srl $1, $1, 14
mtlo $1
lui $1, 14
TAG256:
lui $3, 4
lui $3, 6
lui $3, 1
addu $4, $3, $3
TAG257:
sra $4, $4, 12
bgez $4, TAG258
mult $4, $4
mflo $2
TAG258:
srav $4, $2, $2
addi $3, $4, 1
bgtz $4, TAG259
lh $1, 0($2)
TAG259:
lui $2, 10
bltz $2, TAG260
sll $0, $0, 0
mtlo $2
TAG260:
bgtz $2, TAG261
divu $2, $2
mult $2, $2
sw $2, 0($2)
TAG261:
mtlo $2
beq $2, $2, TAG262
sllv $3, $2, $2
sh $3, 0($2)
TAG262:
sll $0, $0, 0
lui $2, 12
beq $3, $3, TAG263
sll $0, $0, 0
TAG263:
slt $3, $2, $2
blez $3, TAG264
sllv $2, $2, $3
sltu $4, $3, $3
TAG264:
mult $4, $4
bgez $4, TAG265
sw $4, 0($4)
divu $4, $4
TAG265:
mult $4, $4
mtlo $4
ori $3, $4, 2
lhu $2, 0($3)
TAG266:
beq $2, $2, TAG267
lui $3, 4
lui $4, 9
lbu $1, 0($4)
TAG267:
addiu $1, $1, 4
lbu $3, 0($1)
srlv $2, $1, $1
bne $2, $1, TAG268
TAG268:
lh $4, 0($2)
lui $4, 11
sll $0, $0, 0
multu $4, $4
TAG269:
bne $4, $4, TAG270
lui $2, 7
mthi $2
mtlo $2
TAG270:
mult $2, $2
sll $0, $0, 0
lui $2, 15
beq $2, $2, TAG271
TAG271:
mthi $2
bne $2, $2, TAG272
sll $0, $0, 0
mflo $4
TAG272:
srlv $2, $4, $4
xor $2, $2, $2
lui $4, 8
sll $0, $0, 0
TAG273:
subu $1, $4, $4
subu $4, $4, $4
blez $4, TAG274
slti $2, $4, 5
TAG274:
and $3, $2, $2
mult $3, $2
bne $3, $3, TAG275
addu $1, $3, $2
TAG275:
mtlo $1
lui $4, 12
xori $1, $1, 3
mfhi $4
TAG276:
lui $2, 8
sltiu $4, $2, 15
lw $2, 0($4)
lh $3, 0($2)
TAG277:
lui $2, 14
mthi $3
mult $3, $2
nor $2, $3, $2
TAG278:
sll $0, $0, 0
sltu $4, $2, $4
srl $2, $4, 5
mtlo $4
TAG279:
srav $4, $2, $2
mult $2, $4
multu $2, $4
sltiu $2, $4, 7
TAG280:
sb $2, 0($2)
sb $2, 0($2)
mtlo $2
lbu $4, 0($2)
TAG281:
mthi $4
srav $3, $4, $4
bgez $3, TAG282
mfhi $1
TAG282:
sltiu $4, $1, 6
sb $1, 0($1)
ori $4, $4, 4
lui $4, 8
TAG283:
div $4, $4
subu $2, $4, $4
bne $2, $4, TAG284
lui $4, 15
TAG284:
bgtz $4, TAG285
sll $0, $0, 0
bgez $4, TAG285
lui $2, 5
TAG285:
sh $2, 0($2)
lui $1, 15
ori $2, $2, 3
mtlo $2
TAG286:
addu $4, $2, $2
lb $4, 0($4)
beq $2, $2, TAG287
mult $2, $2
TAG287:
blez $4, TAG288
srav $3, $4, $4
lhu $3, 0($3)
lh $4, 0($3)
TAG288:
mult $4, $4
bltz $4, TAG289
sltiu $2, $4, 2
addiu $2, $4, 0
TAG289:
sll $1, $2, 14
bgez $2, TAG290
ori $4, $1, 4
lui $4, 8
TAG290:
lh $3, 0($4)
or $4, $4, $3
mflo $4
sltu $4, $4, $4
TAG291:
lui $4, 13
lui $2, 4
mflo $4
mtlo $2
TAG292:
lui $2, 1
lui $3, 3
beq $3, $4, TAG293
slti $1, $3, 7
TAG293:
sh $1, 0($1)
lb $1, 0($1)
lhu $3, 0($1)
beq $3, $1, TAG294
TAG294:
andi $2, $3, 6
beq $3, $3, TAG295
lui $2, 1
mfhi $2
TAG295:
beq $2, $2, TAG296
lui $4, 7
xori $3, $2, 4
bgtz $4, TAG296
TAG296:
sw $3, 0($3)
lh $4, 0($3)
lbu $1, 0($4)
sb $4, 0($3)
TAG297:
mult $1, $1
mflo $1
xori $3, $1, 6
lbu $1, 0($1)
TAG298:
mult $1, $1
blez $1, TAG299
mtlo $1
xori $3, $1, 8
TAG299:
sra $2, $3, 2
ori $1, $3, 9
xori $4, $2, 9
bne $2, $4, TAG300
TAG300:
lhu $2, 0($4)
sra $2, $4, 5
mult $2, $2
bgtz $4, TAG301
TAG301:
lbu $3, 0($2)
lb $4, 0($3)
mfhi $3
multu $3, $4
TAG302:
slti $4, $3, 10
lui $4, 1
sll $4, $3, 13
lui $1, 2
TAG303:
sll $0, $0, 0
mthi $1
bne $1, $1, TAG304
mult $1, $1
TAG304:
sll $0, $0, 0
multu $4, $4
xori $4, $1, 6
beq $4, $4, TAG305
TAG305:
mflo $3
bne $3, $4, TAG306
sltu $3, $4, $4
and $4, $3, $3
TAG306:
sll $3, $4, 14
mtlo $3
bltz $3, TAG307
divu $3, $3
TAG307:
mfhi $4
mflo $4
sll $0, $0, 0
slt $4, $4, $4
TAG308:
mult $4, $4
sltiu $3, $4, 15
or $2, $3, $3
addi $1, $4, 8
TAG309:
xori $1, $1, 1
beq $1, $1, TAG310
and $3, $1, $1
lui $2, 5
TAG310:
blez $2, TAG311
sb $2, 0($2)
mfhi $1
blez $2, TAG311
TAG311:
mthi $1
blez $1, TAG312
mthi $1
beq $1, $1, TAG312
TAG312:
mthi $1
beq $1, $1, TAG313
slt $1, $1, $1
mflo $2
TAG313:
mtlo $2
lb $1, 0($2)
lb $1, 0($2)
divu $1, $1
TAG314:
div $1, $1
mfhi $2
slti $2, $2, 1
sltiu $4, $2, 3
TAG315:
mthi $4
lui $1, 10
bne $1, $1, TAG316
sll $0, $0, 0
TAG316:
lui $2, 1
mtlo $1
mtlo $2
div $2, $1
TAG317:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG318:
mthi $3
mult $3, $3
blez $3, TAG319
mfhi $4
TAG319:
lui $3, 13
lui $3, 14
sll $0, $0, 0
sb $3, 0($4)
TAG320:
sll $0, $0, 0
beq $3, $3, TAG321
addiu $3, $3, 15
mfhi $2
TAG321:
beq $2, $2, TAG322
mult $2, $2
bgez $2, TAG322
addi $1, $2, 13
TAG322:
mthi $1
lui $1, 5
lui $4, 0
sb $1, 0($4)
TAG323:
mthi $4
ori $3, $4, 14
mthi $4
lui $3, 2
TAG324:
divu $3, $3
mflo $3
mfhi $3
bgez $3, TAG325
TAG325:
mthi $3
andi $2, $3, 4
mtlo $3
lbu $4, 0($2)
TAG326:
mflo $3
bgtz $3, TAG327
lui $3, 6
and $2, $3, $4
TAG327:
beq $2, $2, TAG328
sh $2, 0($2)
addi $4, $2, 10
bgtz $2, TAG328
TAG328:
lh $4, 0($4)
sllv $3, $4, $4
mthi $3
sb $4, 0($3)
TAG329:
mflo $3
sh $3, 0($3)
multu $3, $3
blez $3, TAG330
TAG330:
multu $3, $3
bgtz $3, TAG331
sll $2, $3, 3
bltz $2, TAG331
TAG331:
lh $1, 0($2)
bgez $2, TAG332
mtlo $2
mult $2, $1
TAG332:
mfhi $3
mtlo $1
bne $3, $3, TAG333
xori $4, $1, 9
TAG333:
xori $4, $4, 6
lb $1, 0($4)
lui $1, 5
multu $1, $4
TAG334:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
div $1, $1
TAG335:
beq $1, $1, TAG336
sll $0, $0, 0
divu $1, $1
nor $4, $1, $1
TAG336:
multu $4, $4
lui $2, 14
div $2, $2
mthi $4
TAG337:
multu $2, $2
beq $2, $2, TAG338
and $1, $2, $2
lui $2, 5
TAG338:
mfhi $1
mfhi $3
sll $0, $0, 0
beq $3, $1, TAG339
TAG339:
sra $1, $4, 6
lhu $4, 0($1)
mflo $1
mthi $1
TAG340:
mthi $1
srav $2, $1, $1
and $2, $1, $1
sltiu $2, $2, 9
TAG341:
slt $2, $2, $2
sw $2, 0($2)
sw $2, 0($2)
lbu $3, 0($2)
TAG342:
mtlo $3
bltz $3, TAG343
lui $4, 4
addiu $1, $4, 4
TAG343:
lui $3, 9
mtlo $3
divu $1, $1
lui $2, 10
TAG344:
lui $4, 4
beq $4, $2, TAG345
sll $3, $2, 6
bgtz $4, TAG345
TAG345:
xor $3, $3, $3
lui $2, 6
bgez $3, TAG346
addi $3, $3, 11
TAG346:
lui $4, 1
sll $0, $0, 0
divu $4, $4
sll $0, $0, 0
TAG347:
mfhi $4
beq $1, $1, TAG348
mult $4, $4
sw $1, 0($4)
TAG348:
mflo $4
lw $1, 0($4)
lui $2, 10
sb $2, 0($4)
TAG349:
ori $1, $2, 7
or $1, $2, $1
mtlo $2
bgtz $2, TAG350
TAG350:
mthi $1
mthi $1
beq $1, $1, TAG351
mtlo $1
TAG351:
mflo $2
addu $4, $2, $2
mtlo $1
sll $0, $0, 0
TAG352:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG353:
ori $4, $1, 13
sll $0, $0, 0
beq $4, $1, TAG354
lui $4, 3
TAG354:
mthi $4
blez $4, TAG355
sll $0, $0, 0
sll $3, $4, 14
TAG355:
multu $3, $3
addu $1, $3, $3
addiu $4, $3, 13
bne $1, $3, TAG356
TAG356:
ori $1, $4, 9
addiu $3, $4, 11
mthi $1
sll $0, $0, 0
TAG357:
div $4, $4
sll $0, $0, 0
addiu $4, $4, 10
mflo $3
TAG358:
lb $2, 0($3)
mult $3, $2
lui $3, 9
mfhi $4
TAG359:
lui $1, 11
lui $1, 7
mflo $3
mfhi $1
TAG360:
sh $1, 0($1)
nor $3, $1, $1
bltz $1, TAG361
lh $4, 1($3)
TAG361:
mthi $4
lui $4, 8
bne $4, $4, TAG362
subu $1, $4, $4
TAG362:
sw $1, 0($1)
lui $1, 1
srl $1, $1, 1
blez $1, TAG363
TAG363:
ori $2, $1, 4
beq $1, $2, TAG364
sll $0, $0, 0
lbu $2, 1($3)
TAG364:
and $3, $2, $2
lui $3, 0
lui $4, 13
mflo $4
TAG365:
bgtz $4, TAG366
mflo $1
sh $4, 0($4)
multu $1, $4
TAG366:
sra $1, $1, 15
lui $1, 9
sra $1, $1, 4
sltu $3, $1, $1
TAG367:
bne $3, $3, TAG368
lui $1, 3
mflo $1
mtlo $1
TAG368:
bgez $1, TAG369
mtlo $1
mflo $1
addu $2, $1, $1
TAG369:
bgez $2, TAG370
sw $2, 0($2)
beq $2, $2, TAG370
lui $4, 10
TAG370:
slti $4, $4, 3
lui $2, 10
mult $4, $2
mult $2, $4
TAG371:
sll $0, $0, 0
beq $1, $2, TAG372
lui $3, 9
bltz $2, TAG372
TAG372:
mtlo $3
divu $3, $3
blez $3, TAG373
lui $4, 14
TAG373:
div $4, $4
beq $4, $4, TAG374
lui $2, 1
sb $4, 0($4)
TAG374:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
divu $2, $4
TAG375:
sll $0, $0, 0
sb $1, 0($1)
mult $4, $4
lw $4, 0($1)
TAG376:
mult $4, $4
andi $1, $4, 4
lh $2, 0($4)
mflo $1
TAG377:
nor $2, $1, $1
sra $3, $2, 1
beq $3, $2, TAG378
mthi $1
TAG378:
and $1, $3, $3
lbu $2, 1($1)
div $2, $3
bne $3, $2, TAG379
TAG379:
addiu $2, $2, 3
sh $2, 0($2)
multu $2, $2
sh $2, 0($2)
TAG380:
div $2, $2
mflo $2
xor $3, $2, $2
sb $2, 0($2)
TAG381:
multu $3, $3
mtlo $3
lui $4, 11
beq $3, $4, TAG382
TAG382:
lui $1, 9
div $4, $1
div $4, $1
sll $0, $0, 0
TAG383:
sllv $3, $1, $1
beq $1, $1, TAG384
mfhi $3
mflo $2
TAG384:
slt $4, $2, $2
beq $4, $2, TAG385
lui $1, 10
sra $4, $1, 2
TAG385:
addu $3, $4, $4
beq $3, $4, TAG386
mflo $2
bltz $4, TAG386
TAG386:
divu $2, $2
lui $1, 14
mflo $3
divu $2, $1
TAG387:
lb $3, 0($3)
bgez $3, TAG388
lui $4, 4
or $3, $3, $3
TAG388:
blez $3, TAG389
mult $3, $3
blez $3, TAG389
mult $3, $3
TAG389:
blez $3, TAG390
mflo $1
lui $1, 9
mflo $3
TAG390:
sllv $4, $3, $3
lh $3, 0($4)
multu $4, $4
mtlo $3
TAG391:
multu $3, $3
slt $3, $3, $3
slt $4, $3, $3
bgez $4, TAG392
TAG392:
lw $3, 0($4)
sra $1, $4, 3
bgez $3, TAG393
mflo $2
TAG393:
lw $3, 0($2)
sb $3, 0($2)
xor $1, $3, $3
mtlo $1
TAG394:
mtlo $1
sll $2, $1, 0
mfhi $4
lhu $4, 0($1)
TAG395:
bne $4, $4, TAG396
xor $2, $4, $4
multu $2, $4
sub $3, $4, $2
TAG396:
ori $2, $3, 0
multu $2, $2
sb $2, -256($3)
sb $2, -256($2)
TAG397:
beq $2, $2, TAG398
sw $2, -256($2)
andi $1, $2, 5
bgez $1, TAG398
TAG398:
sh $1, 0($1)
mult $1, $1
mthi $1
bne $1, $1, TAG399
TAG399:
sub $3, $1, $1
multu $3, $1
sh $3, 0($3)
mthi $3
TAG400:
bne $3, $3, TAG401
addiu $4, $3, 14
beq $3, $3, TAG401
lui $1, 15
TAG401:
addiu $4, $1, 14
multu $1, $4
lui $1, 12
subu $1, $1, $1
TAG402:
slti $2, $1, 6
mthi $2
mtlo $2
sra $1, $2, 1
TAG403:
sh $1, 0($1)
multu $1, $1
sw $1, 0($1)
sb $1, 0($1)
TAG404:
bltz $1, TAG405
mflo $2
blez $2, TAG405
sb $2, 0($2)
TAG405:
bne $2, $2, TAG406
sw $2, 0($2)
nor $1, $2, $2
lw $1, 1($1)
TAG406:
mfhi $4
lb $2, 0($4)
multu $1, $4
srav $4, $2, $1
TAG407:
bltz $4, TAG408
and $2, $4, $4
mtlo $4
addu $2, $4, $2
TAG408:
mult $2, $2
lui $1, 3
sll $0, $0, 0
sw $3, 0($2)
TAG409:
lui $4, 3
or $2, $4, $4
lui $4, 4
divu $4, $4
TAG410:
sll $0, $0, 0
lui $1, 1
divu $4, $4
lui $2, 3
TAG411:
bgez $2, TAG412
divu $2, $2
div $2, $2
bltz $2, TAG412
TAG412:
sll $0, $0, 0
beq $2, $2, TAG413
lui $4, 2
bne $4, $1, TAG413
TAG413:
sll $0, $0, 0
sll $0, $0, 0
or $3, $4, $3
mthi $4
TAG414:
mtlo $3
mthi $3
mtlo $3
mfhi $1
TAG415:
multu $1, $1
lui $4, 11
srav $4, $1, $1
mthi $4
TAG416:
div $4, $4
mthi $4
bne $4, $4, TAG417
sll $0, $0, 0
TAG417:
nor $1, $4, $4
sra $1, $1, 10
lw $2, 129($1)
mult $1, $2
TAG418:
bltz $2, TAG419
mtlo $2
mflo $2
sra $1, $2, 7
TAG419:
lhu $4, 0($1)
mflo $2
lui $1, 14
bne $4, $1, TAG420
TAG420:
divu $1, $1
bgez $1, TAG421
sll $0, $0, 0
bgez $1, TAG421
TAG421:
mfhi $1
mfhi $1
lb $1, 0($1)
bne $1, $1, TAG422
TAG422:
mflo $4
sb $1, 0($4)
lb $2, 0($4)
sltu $3, $1, $4
TAG423:
mtlo $3
bgez $3, TAG424
mtlo $3
lw $2, 0($3)
TAG424:
lhu $4, 0($2)
bgtz $4, TAG425
mfhi $3
sh $3, 0($4)
TAG425:
mthi $3
nor $4, $3, $3
sll $3, $4, 0
mtlo $3
TAG426:
bltz $3, TAG427
mfhi $1
mfhi $4
lui $1, 9
TAG427:
sh $1, 0($1)
bne $1, $1, TAG428
sw $1, 0($1)
lh $3, 0($1)
TAG428:
lhu $1, 0($3)
sw $3, 0($3)
slti $4, $3, 15
divu $1, $4
TAG429:
lbu $1, 0($4)
lb $4, 0($4)
lb $2, 0($1)
mtlo $4
TAG430:
bne $2, $2, TAG431
mfhi $3
sh $2, 0($3)
sltiu $2, $3, 9
TAG431:
lui $2, 9
sll $3, $2, 13
sll $0, $0, 0
mflo $4
TAG432:
sllv $4, $4, $4
lw $3, 0($4)
mthi $4
srav $3, $3, $4
TAG433:
subu $1, $3, $3
bne $3, $3, TAG434
mtlo $3
bne $3, $1, TAG434
TAG434:
mthi $1
mult $1, $1
addi $3, $1, 8
lb $1, 0($3)
TAG435:
mult $1, $1
andi $1, $1, 7
bne $1, $1, TAG436
sllv $3, $1, $1
TAG436:
mflo $2
lhu $3, 0($2)
xori $2, $3, 10
lh $2, 0($3)
TAG437:
lhu $3, 0($2)
lui $3, 4
bltz $3, TAG438
sll $0, $0, 0
TAG438:
sb $2, 0($2)
lui $1, 12
mtlo $1
sll $0, $0, 0
TAG439:
lbu $1, 0($4)
sw $4, 0($4)
bgez $4, TAG440
mult $4, $4
TAG440:
mthi $1
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG441
TAG441:
srl $3, $1, 15
slti $2, $3, 12
mult $2, $3
beq $3, $3, TAG442
TAG442:
mfhi $3
multu $2, $2
ori $2, $2, 9
div $2, $2
TAG443:
mult $2, $2
beq $2, $2, TAG444
mflo $3
bltz $2, TAG444
TAG444:
addiu $3, $3, 2
srl $3, $3, 10
lb $3, 0($3)
bltz $3, TAG445
TAG445:
xori $2, $3, 6
lhu $2, 0($3)
mult $3, $3
lb $4, 0($2)
TAG446:
mtlo $4
mfhi $4
mtlo $4
lhu $2, 0($4)
TAG447:
sub $2, $2, $2
multu $2, $2
mtlo $2
mfhi $3
TAG448:
blez $3, TAG449
lui $4, 9
sw $4, 0($3)
sw $4, 0($3)
TAG449:
mtlo $4
mtlo $4
sll $2, $4, 15
bne $4, $4, TAG450
TAG450:
mtlo $2
mult $2, $2
or $3, $2, $2
multu $2, $3
TAG451:
bgez $3, TAG452
mtlo $3
mthi $3
bltz $3, TAG452
TAG452:
sll $0, $0, 0
mtlo $1
and $1, $1, $1
lb $4, 0($1)
TAG453:
lui $3, 4
mflo $2
mflo $3
or $1, $4, $4
TAG454:
sb $1, 0($1)
lui $1, 11
sll $0, $0, 0
andi $4, $1, 10
TAG455:
bltz $4, TAG456
slti $3, $4, 10
lbu $2, 0($3)
bne $2, $4, TAG456
TAG456:
sw $2, 0($2)
mult $2, $2
addiu $3, $2, 13
sltu $4, $2, $2
TAG457:
sw $4, 0($4)
add $1, $4, $4
bltz $1, TAG458
sb $1, 0($4)
TAG458:
lb $4, 0($1)
mult $4, $4
sltiu $1, $1, 9
bltz $1, TAG459
TAG459:
mfhi $1
multu $1, $1
lbu $3, 0($1)
mfhi $2
TAG460:
mult $2, $2
nor $3, $2, $2
mtlo $3
mult $3, $3
TAG461:
sll $0, $0, 0
sllv $3, $3, $3
sll $0, $0, 0
mflo $2
TAG462:
bne $2, $2, TAG463
lui $4, 12
mflo $2
mfhi $2
TAG463:
sb $2, 0($2)
bne $2, $2, TAG464
addiu $4, $2, 7
multu $4, $2
TAG464:
sb $4, 0($4)
bne $4, $4, TAG465
mthi $4
lui $4, 12
TAG465:
mthi $4
addu $1, $4, $4
mult $4, $1
sll $0, $0, 0
TAG466:
divu $3, $3
lui $4, 3
bne $3, $4, TAG467
mfhi $4
TAG467:
mflo $1
xori $2, $4, 12
beq $2, $2, TAG468
lui $1, 15
TAG468:
lui $2, 4
mflo $3
mthi $2
lui $4, 13
TAG469:
multu $4, $4
bgez $4, TAG470
mflo $3
sw $4, 0($3)
TAG470:
bne $3, $3, TAG471
lw $2, 0($3)
lui $3, 14
bne $3, $2, TAG471
TAG471:
sll $0, $0, 0
sltiu $1, $3, 1
beq $3, $1, TAG472
xori $3, $3, 13
TAG472:
sll $0, $0, 0
sll $0, $0, 0
subu $4, $3, $3
mult $3, $4
TAG473:
lui $3, 5
subu $1, $4, $4
sb $1, 0($1)
sll $0, $0, 0
TAG474:
bne $3, $3, TAG475
sll $0, $0, 0
beq $2, $3, TAG475
sb $2, 0($2)
TAG475:
mthi $2
sh $2, 0($2)
mult $2, $2
beq $2, $2, TAG476
TAG476:
lui $3, 11
and $3, $2, $3
addi $1, $3, 0
sb $3, 0($2)
TAG477:
blez $1, TAG478
mflo $3
multu $1, $1
lb $4, 0($1)
TAG478:
blez $4, TAG479
sllv $2, $4, $4
lui $2, 12
divu $4, $4
TAG479:
lw $2, 0($2)
mtlo $2
addu $3, $2, $2
lui $4, 14
TAG480:
lui $2, 11
multu $2, $2
beq $2, $2, TAG481
addu $1, $2, $4
TAG481:
mtlo $1
sll $0, $0, 0
bgtz $1, TAG482
sltu $4, $1, $1
TAG482:
mtlo $4
lui $3, 3
bgtz $4, TAG483
sra $4, $4, 4
TAG483:
mtlo $4
xor $2, $4, $4
mult $4, $4
sh $2, 0($4)
TAG484:
mflo $2
lbu $1, 0($2)
lh $4, 0($2)
lhu $3, 0($1)
TAG485:
sw $3, 0($3)
sb $3, 0($3)
sw $3, 0($3)
lb $1, 0($3)
TAG486:
mthi $1
mflo $2
sltu $2, $1, $1
sw $1, 0($2)
TAG487:
mult $2, $2
sh $2, 0($2)
nor $1, $2, $2
sw $1, 0($2)
TAG488:
lui $4, 9
mtlo $1
sll $0, $0, 0
mthi $1
TAG489:
beq $4, $4, TAG490
andi $2, $4, 8
mtlo $2
sb $4, 0($2)
TAG490:
bgtz $2, TAG491
lb $4, 0($2)
lui $4, 9
mfhi $3
TAG491:
mflo $1
mtlo $1
lui $3, 10
addu $2, $3, $3
TAG492:
andi $4, $2, 5
lh $4, 0($4)
mfhi $1
mflo $4
TAG493:
mtlo $4
bne $4, $4, TAG494
mtlo $4
div $4, $4
TAG494:
div $4, $4
lhu $3, 1($4)
bltz $4, TAG495
sh $3, 1($4)
TAG495:
lui $4, 8
mtlo $4
bgez $4, TAG496
lui $3, 4
TAG496:
sll $0, $0, 0
mfhi $2
sltiu $2, $2, 15
divu $3, $3
TAG497:
bne $2, $2, TAG498
mflo $3
mult $3, $2
lui $4, 4
TAG498:
mtlo $4
sll $0, $0, 0
addiu $3, $1, 14
xori $3, $4, 10
TAG499:
sll $0, $0, 0
ori $3, $3, 3
mflo $2
lui $1, 1
TAG500:
andi $4, $1, 5
bne $4, $4, TAG501
mult $1, $1
sra $3, $4, 14
TAG501:
bltz $3, TAG502
lui $4, 0
bgez $4, TAG502
addu $4, $4, $4
TAG502:
and $4, $4, $4
addi $3, $4, 12
lw $4, 0($4)
lbu $4, 1($4)
TAG503:
sh $4, -255($4)
bne $4, $4, TAG504
mtlo $4
blez $4, TAG504
TAG504:
multu $4, $4
lui $2, 0
div $2, $4
sllv $2, $2, $2
TAG505:
lb $4, 0($2)
lui $3, 10
bne $3, $3, TAG506
andi $1, $3, 13
TAG506:
mtlo $1
mthi $1
sb $1, 0($1)
lh $4, 0($1)
TAG507:
mthi $4
mthi $4
sw $4, 0($4)
ori $3, $4, 5
TAG508:
bgtz $3, TAG509
divu $3, $3
sll $2, $3, 4
bne $3, $3, TAG509
TAG509:
mflo $1
multu $2, $2
srlv $2, $1, $2
xori $1, $2, 1
TAG510:
bne $1, $1, TAG511
subu $3, $1, $1
bne $1, $3, TAG511
sltu $2, $3, $3
TAG511:
lui $3, 4
sb $3, 0($2)
div $3, $3
blez $2, TAG512
TAG512:
mflo $3
mtlo $3
beq $3, $3, TAG513
addiu $2, $3, 7
TAG513:
mfhi $3
sw $2, 0($2)
sll $4, $3, 7
mflo $4
TAG514:
xori $3, $4, 10
sb $4, 0($4)
mtlo $4
lui $1, 3
TAG515:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $1
addu $3, $1, $1
TAG516:
sll $0, $0, 0
blez $3, TAG517
sll $0, $0, 0
sll $2, $2, 7
TAG517:
lui $4, 2
ori $2, $2, 11
nor $3, $2, $2
slti $2, $3, 10
TAG518:
sra $1, $2, 15
lui $3, 11
lbu $3, 0($2)
lb $1, 0($3)
TAG519:
bgez $1, TAG520
sllv $3, $1, $1
sw $3, 0($3)
mfhi $4
TAG520:
mfhi $2
lh $1, 0($2)
mflo $3
addu $1, $4, $4
TAG521:
mflo $3
mfhi $2
lui $2, 0
multu $2, $1
TAG522:
addi $4, $2, 5
bgtz $2, TAG523
lui $1, 12
slt $2, $1, $2
TAG523:
mflo $1
sw $1, 0($1)
slt $4, $2, $2
addi $2, $4, 3
TAG524:
multu $2, $2
mthi $2
mtlo $2
lb $4, 0($2)
TAG525:
sh $4, 0($4)
mtlo $4
nor $2, $4, $4
mult $4, $4
TAG526:
div $2, $2
mult $2, $2
slti $1, $2, 7
blez $2, TAG527
TAG527:
mflo $1
mtlo $1
multu $1, $1
lb $4, 0($1)
TAG528:
lui $2, 6
sll $0, $0, 0
bgez $4, TAG529
mult $2, $4
TAG529:
bgez $3, TAG530
mtlo $3
sb $3, 0($3)
slti $3, $3, 2
TAG530:
bne $3, $3, TAG531
and $2, $3, $3
sra $3, $3, 10
lbu $4, -1536($3)
TAG531:
beq $4, $4, TAG532
lui $2, 6
sra $4, $4, 10
bne $4, $4, TAG532
TAG532:
lh $1, 0($4)
srl $4, $4, 5
mult $4, $4
bltz $4, TAG533
TAG533:
mult $4, $4
bne $4, $4, TAG534
sh $4, 0($4)
mtlo $4
TAG534:
xori $2, $4, 11
lui $3, 7
bgez $4, TAG535
subu $4, $3, $3
TAG535:
lh $1, 0($4)
sltu $1, $4, $1
multu $4, $1
mfhi $3
TAG536:
ori $1, $3, 12
mflo $3
bgez $1, TAG537
ori $1, $3, 10
TAG537:
mult $1, $1
blez $1, TAG538
mtlo $1
and $4, $1, $1
TAG538:
lhu $3, 0($4)
sh $3, 0($4)
slt $1, $3, $3
ori $4, $1, 15
TAG539:
sb $4, 0($4)
mfhi $3
and $4, $4, $4
lb $4, 0($4)
TAG540:
divu $4, $4
mflo $1
mflo $1
sb $1, 0($1)
TAG541:
bltz $1, TAG542
lui $2, 10
mflo $2
div $2, $1
TAG542:
div $2, $2
lbu $1, 0($2)
lui $3, 3
mtlo $3
TAG543:
subu $1, $3, $3
mflo $3
sll $1, $3, 7
beq $1, $1, TAG544
TAG544:
mtlo $1
srlv $1, $1, $1
bltz $1, TAG545
ori $1, $1, 11
TAG545:
sll $0, $0, 0
bgez $1, TAG546
mflo $2
mthi $2
TAG546:
sll $0, $0, 0
bne $2, $2, TAG547
lui $2, 4
mfhi $1
TAG547:
multu $1, $1
mthi $1
xori $3, $1, 2
ori $4, $1, 8
TAG548:
sb $4, 0($4)
sll $2, $4, 12
mtlo $2
sltiu $1, $4, 10
TAG549:
mtlo $1
lb $2, 0($1)
sll $2, $1, 8
sb $2, 0($1)
TAG550:
mtlo $2
bgez $2, TAG551
mtlo $2
beq $2, $2, TAG551
TAG551:
srav $1, $2, $2
lui $4, 10
xor $3, $1, $4
nor $2, $3, $3
TAG552:
divu $2, $2
mtlo $2
lui $3, 1
bltz $3, TAG553
TAG553:
srav $1, $3, $3
sll $0, $0, 0
lui $1, 8
slti $4, $1, 6
TAG554:
sllv $1, $4, $4
srav $4, $1, $1
sw $4, 0($4)
lui $4, 7
TAG555:
lui $4, 15
xori $1, $4, 8
sll $0, $0, 0
lui $2, 3
TAG556:
bgez $2, TAG557
sll $0, $0, 0
beq $2, $2, TAG557
sh $2, 0($2)
TAG557:
divu $2, $2
sll $0, $0, 0
lui $1, 1
bne $1, $2, TAG558
TAG558:
andi $1, $1, 11
lw $4, 0($1)
beq $1, $4, TAG559
mult $1, $1
TAG559:
mfhi $3
beq $3, $4, TAG560
sw $4, 0($3)
mtlo $4
TAG560:
lh $1, 0($3)
andi $2, $3, 5
mult $2, $2
subu $2, $2, $3
TAG561:
multu $2, $2
lui $3, 3
lui $4, 5
sra $1, $2, 3
TAG562:
mthi $1
mflo $3
multu $1, $1
lw $1, 0($1)
TAG563:
bne $1, $1, TAG564
slti $2, $1, 6
sra $3, $1, 1
blez $3, TAG564
TAG564:
multu $3, $3
lb $3, 0($3)
lh $3, 0($3)
addi $4, $3, 10
TAG565:
lh $3, 0($4)
sh $4, 0($3)
lui $1, 6
mthi $4
TAG566:
sll $0, $0, 0
srl $4, $1, 10
sb $4, 0($2)
bne $4, $2, TAG567
TAG567:
addu $2, $4, $4
mflo $4
sll $4, $2, 2
lui $4, 4
TAG568:
bne $4, $4, TAG569
addiu $4, $4, 8
sll $2, $4, 3
bltz $4, TAG569
TAG569:
lui $3, 9
beq $3, $2, TAG570
div $3, $3
bne $2, $2, TAG570
TAG570:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $4, $3
addu $1, $3, $3
TAG571:
mfhi $3
mthi $1
blez $1, TAG572
divu $3, $1
TAG572:
sb $3, 0($3)
mult $3, $3
bgez $3, TAG573
lui $4, 11
TAG573:
xor $4, $4, $4
mthi $4
lui $2, 14
sll $1, $4, 6
TAG574:
lbu $4, 0($1)
sb $4, 0($4)
addiu $2, $1, 1
sb $1, 0($2)
TAG575:
or $1, $2, $2
lb $4, 0($1)
blez $1, TAG576
lui $4, 4
TAG576:
sll $0, $0, 0
mult $4, $4
bgez $4, TAG577
mflo $4
TAG577:
sw $4, 0($4)
lui $1, 14
sb $1, 0($4)
mthi $4
TAG578:
lui $2, 8
mflo $3
ori $1, $2, 3
lui $4, 10
TAG579:
beq $4, $4, TAG580
mtlo $4
beq $4, $4, TAG580
sw $4, 0($4)
TAG580:
addiu $3, $4, 6
bltz $3, TAG581
slti $4, $3, 12
beq $3, $4, TAG581
TAG581:
mthi $4
slti $2, $4, 4
srl $3, $4, 9
bne $4, $2, TAG582
TAG582:
lb $3, 0($3)
bgtz $3, TAG583
sw $3, 0($3)
multu $3, $3
TAG583:
sw $3, 0($3)
mfhi $3
bne $3, $3, TAG584
lui $2, 11
TAG584:
sltiu $1, $2, 9
beq $1, $1, TAG585
mthi $1
sub $2, $1, $2
TAG585:
slti $1, $2, 7
mflo $1
sll $0, $0, 0
multu $2, $2
TAG586:
mflo $2
mtlo $2
sw $1, 0($1)
mflo $2
TAG587:
bgtz $2, TAG588
lui $1, 6
mflo $4
mtlo $4
TAG588:
sltiu $1, $4, 4
mfhi $2
mfhi $4
mflo $2
TAG589:
sh $2, 0($2)
lbu $4, 0($2)
mtlo $2
andi $2, $4, 6
TAG590:
mtlo $2
sltu $1, $2, $2
bne $2, $2, TAG591
mfhi $4
TAG591:
bgez $4, TAG592
div $4, $4
lhu $2, 0($4)
srlv $4, $2, $2
TAG592:
lb $2, 0($4)
multu $4, $2
sltiu $4, $2, 4
lb $4, 0($4)
TAG593:
addiu $4, $4, 3
divu $4, $4
lbu $3, 0($4)
mtlo $4
TAG594:
mult $3, $3
mfhi $2
lb $4, 0($3)
bgez $2, TAG595
TAG595:
sb $4, 0($4)
lhu $1, 0($4)
mflo $2
mfhi $1
TAG596:
bne $1, $1, TAG597
sb $1, 0($1)
bne $1, $1, TAG597
multu $1, $1
TAG597:
multu $1, $1
lb $1, 0($1)
ori $1, $1, 9
bne $1, $1, TAG598
TAG598:
sb $1, 0($1)
lui $2, 12
beq $2, $2, TAG599
addu $1, $1, $1
TAG599:
sll $1, $1, 5
mfhi $4
sll $2, $4, 0
lui $4, 15
TAG600:
div $4, $4
subu $4, $4, $4
lui $1, 5
lui $4, 12
TAG601:
bne $4, $4, TAG602
mflo $3
mfhi $1
mfhi $3
TAG602:
lui $3, 8
blez $3, TAG603
mthi $3
mflo $2
TAG603:
bne $2, $2, TAG604
subu $1, $2, $2
lui $4, 6
lui $2, 14
TAG604:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
mtlo $2
TAG605:
sll $0, $0, 0
sra $4, $2, 8
bltz $4, TAG606
mfhi $4
TAG606:
slti $3, $4, 1
sll $0, $0, 0
div $4, $4
lui $2, 3
TAG607:
mtlo $2
sltiu $4, $2, 5
mult $4, $4
lui $2, 1
TAG608:
subu $3, $2, $2
bne $3, $2, TAG609
mtlo $3
beq $2, $3, TAG609
TAG609:
srl $3, $3, 10
multu $3, $3
lui $2, 3
mthi $3
TAG610:
mtlo $2
divu $2, $2
sll $0, $0, 0
mthi $2
TAG611:
sll $0, $0, 0
lui $3, 6
lui $3, 13
beq $3, $3, TAG612
TAG612:
subu $3, $3, $3
mflo $2
mthi $3
sb $3, 0($3)
TAG613:
bne $2, $2, TAG614
multu $2, $2
lb $2, 0($2)
mtlo $2
TAG614:
multu $2, $2
sll $2, $2, 12
lbu $1, 0($2)
mfhi $3
TAG615:
sltiu $1, $3, 14
lui $1, 7
mflo $4
sltu $1, $4, $1
TAG616:
lb $4, 0($1)
sh $1, 0($4)
mthi $1
multu $1, $1
TAG617:
sltu $2, $4, $4
addi $3, $2, 9
srlv $2, $2, $2
mfhi $4
TAG618:
mult $4, $4
mthi $4
lhu $4, 0($4)
bltz $4, TAG619
TAG619:
mflo $2
bne $4, $4, TAG620
subu $1, $2, $2
srav $3, $4, $2
TAG620:
mflo $2
mfhi $1
add $3, $1, $1
lh $1, 0($3)
TAG621:
multu $1, $1
lb $4, 0($1)
mfhi $4
multu $1, $4
TAG622:
subu $2, $4, $4
ori $2, $4, 8
mult $4, $4
lw $1, 0($4)
TAG623:
divu $1, $1
mthi $1
bne $1, $1, TAG624
lui $1, 10
TAG624:
lui $4, 9
mtlo $4
lui $1, 12
beq $1, $4, TAG625
TAG625:
srav $4, $1, $1
lui $4, 6
bne $4, $1, TAG626
xori $2, $4, 13
TAG626:
sll $0, $0, 0
blez $2, TAG627
sltiu $3, $2, 0
mtlo $3
TAG627:
sll $4, $3, 11
xori $3, $4, 8
multu $4, $4
sh $3, 0($3)
TAG628:
mflo $2
sb $3, 0($3)
xori $3, $2, 12
xor $1, $2, $3
TAG629:
lw $3, 0($1)
sll $0, $0, 0
bgez $3, TAG630
or $2, $1, $3
TAG630:
sll $0, $0, 0
slti $4, $2, 6
multu $2, $4
div $4, $2
TAG631:
bne $4, $4, TAG632
multu $4, $4
slt $3, $4, $4
multu $3, $3
TAG632:
beq $3, $3, TAG633
mfhi $4
sh $3, 0($4)
mtlo $4
TAG633:
beq $4, $4, TAG634
lui $2, 13
lhu $3, 0($2)
srav $4, $4, $4
TAG634:
mthi $4
mult $4, $4
lui $1, 12
ori $3, $1, 12
TAG635:
sll $0, $0, 0
beq $3, $3, TAG636
mfhi $4
ori $3, $4, 12
TAG636:
lui $2, 14
div $2, $2
lui $2, 3
sll $0, $0, 0
TAG637:
bltz $4, TAG638
addiu $3, $4, 3
mult $3, $4
lui $3, 5
TAG638:
multu $3, $3
sll $0, $0, 0
lui $3, 12
bgtz $3, TAG639
TAG639:
mflo $2
mfhi $2
sb $2, 0($2)
mfhi $2
TAG640:
mthi $2
beq $2, $2, TAG641
sb $2, 0($2)
xori $1, $2, 2
TAG641:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
lui $3, 14
TAG642:
subu $1, $3, $3
bgtz $1, TAG643
multu $1, $1
sra $2, $1, 2
TAG643:
ori $2, $2, 5
blez $2, TAG644
lui $1, 7
mthi $1
TAG644:
sll $0, $0, 0
sll $0, $0, 0
slt $1, $1, $1
sltu $4, $1, $1
TAG645:
mult $4, $4
bgez $4, TAG646
sb $4, 0($4)
nor $3, $4, $4
TAG646:
mthi $3
slti $4, $3, 0
multu $3, $4
lui $3, 14
TAG647:
divu $3, $3
slti $2, $3, 0
multu $3, $3
addu $3, $3, $3
TAG648:
mtlo $3
mtlo $3
bgtz $3, TAG649
sll $0, $0, 0
TAG649:
bltz $3, TAG650
mthi $3
divu $3, $3
mult $3, $3
TAG650:
mthi $3
lui $2, 3
mthi $2
bgtz $2, TAG651
TAG651:
sll $0, $0, 0
mfhi $2
beq $2, $2, TAG652
mtlo $2
TAG652:
sll $0, $0, 0
srl $1, $2, 14
mtlo $1
bltz $2, TAG653
TAG653:
multu $1, $1
sh $1, 0($1)
mtlo $1
lhu $1, 0($1)
TAG654:
sltiu $2, $1, 0
div $2, $1
sb $1, 0($2)
mfhi $4
TAG655:
sh $4, 0($4)
bltz $4, TAG656
mtlo $4
lui $3, 14
TAG656:
mtlo $3
div $3, $3
sll $0, $0, 0
mthi $3
TAG657:
sll $0, $0, 0
sllv $1, $3, $3
addiu $4, $3, 3
bne $3, $3, TAG658
TAG658:
nor $2, $4, $4
sll $0, $0, 0
andi $4, $2, 2
srl $1, $4, 11
TAG659:
mtlo $1
slti $3, $1, 6
slt $2, $1, $3
bne $1, $2, TAG660
TAG660:
ori $1, $2, 10
lui $3, 3
sll $3, $2, 3
mflo $2
TAG661:
multu $2, $2
lui $3, 7
sw $3, 0($2)
bgez $2, TAG662
TAG662:
mtlo $3
ori $4, $3, 10
lui $2, 3
sll $0, $0, 0
TAG663:
lui $4, 15
bltz $4, TAG664
sll $0, $0, 0
divu $4, $2
TAG664:
sll $0, $0, 0
mult $2, $3
mtlo $3
bgtz $2, TAG665
TAG665:
sll $0, $0, 0
bgez $3, TAG666
lui $2, 0
mthi $3
TAG666:
lw $1, 0($2)
sll $0, $0, 0
divu $3, $3
or $1, $3, $1
TAG667:
sll $0, $0, 0
mthi $1
sltu $3, $1, $1
bltz $1, TAG668
TAG668:
mthi $3
mflo $3
sb $3, 0($3)
mflo $3
TAG669:
mfhi $3
bne $3, $3, TAG670
sb $3, 0($3)
mtlo $3
TAG670:
lui $4, 8
xori $1, $4, 5
lui $1, 3
sll $0, $0, 0
TAG671:
beq $1, $1, TAG672
lui $3, 15
lhu $3, 0($1)
nor $4, $1, $1
TAG672:
divu $4, $4
div $4, $4
blez $4, TAG673
mtlo $4
TAG673:
sll $0, $0, 0
div $4, $4
sltu $2, $4, $4
sll $0, $0, 0
TAG674:
lui $3, 10
lui $3, 1
sltu $4, $2, $3
beq $3, $2, TAG675
TAG675:
sb $4, 0($4)
mthi $4
mfhi $3
mthi $4
TAG676:
srav $4, $3, $3
lui $1, 12
slti $2, $3, 6
div $2, $3
TAG677:
sll $3, $2, 6
divu $3, $2
mfhi $4
bltz $3, TAG678
TAG678:
ori $1, $4, 10
lhu $4, 0($1)
mthi $1
ori $4, $4, 6
TAG679:
lhu $2, 0($4)
mflo $1
addiu $2, $2, 13
nor $2, $2, $4
TAG680:
mult $2, $2
addu $4, $2, $2
beq $2, $2, TAG681
mtlo $2
TAG681:
mfhi $1
andi $3, $1, 12
lw $4, 0($3)
mfhi $4
TAG682:
and $2, $4, $4
andi $3, $4, 7
sw $3, 0($3)
bne $4, $4, TAG683
TAG683:
multu $3, $3
bgez $3, TAG684
sltiu $2, $3, 1
lui $2, 11
TAG684:
sll $1, $2, 6
and $3, $1, $2
sb $2, 0($2)
lbu $2, 0($2)
TAG685:
mfhi $2
ori $4, $2, 7
addu $3, $2, $2
lb $4, 0($2)
TAG686:
multu $4, $4
multu $4, $4
mfhi $1
lui $1, 13
TAG687:
sltu $2, $1, $1
lui $4, 2
mthi $2
sb $2, 0($2)
TAG688:
lui $2, 8
bne $2, $2, TAG689
mult $2, $4
addiu $4, $2, 5
TAG689:
div $4, $4
sll $0, $0, 0
mflo $2
divu $2, $4
TAG690:
lb $3, 0($2)
mult $3, $2
bne $2, $3, TAG691
lui $4, 10
TAG691:
mflo $2
mthi $2
mfhi $3
lui $2, 14
TAG692:
div $2, $2
divu $2, $2
addu $4, $2, $2
mult $4, $2
TAG693:
blez $4, TAG694
mflo $2
lui $3, 10
lui $3, 8
TAG694:
beq $3, $3, TAG695
mult $3, $3
mtlo $3
lui $2, 12
TAG695:
sltu $2, $2, $2
mflo $3
xori $4, $2, 6
blez $2, TAG696
TAG696:
sb $4, 0($4)
ori $4, $4, 0
beq $4, $4, TAG697
sb $4, 0($4)
TAG697:
blez $4, TAG698
lhu $4, 0($4)
beq $4, $4, TAG698
div $4, $4
TAG698:
sw $4, -1798($4)
blez $4, TAG699
div $4, $4
lh $2, -1798($4)
TAG699:
beq $2, $2, TAG700
lui $2, 2
divu $2, $2
lui $4, 1
TAG700:
sw $4, -1798($4)
bltz $4, TAG701
lhu $4, -1798($4)
sra $1, $4, 11
TAG701:
multu $1, $1
multu $1, $1
mult $1, $1
and $4, $1, $1
TAG702:
lb $1, 0($4)
sb $1, 0($1)
add $2, $4, $4
bgez $1, TAG703
TAG703:
sw $2, 0($2)
bne $2, $2, TAG704
sb $2, 0($2)
lh $1, 0($2)
TAG704:
bne $1, $1, TAG705
mult $1, $1
lw $2, 0($1)
bgtz $1, TAG705
TAG705:
lbu $4, 0($2)
beq $4, $4, TAG706
sb $4, 0($4)
bgez $2, TAG706
TAG706:
mtlo $4
blez $4, TAG707
sh $4, 0($4)
multu $4, $4
TAG707:
slti $4, $4, 13
srlv $3, $4, $4
bne $4, $4, TAG708
mult $4, $4
TAG708:
lbu $2, 0($3)
sw $3, 0($3)
sw $2, 0($2)
beq $2, $2, TAG709
TAG709:
sltu $3, $2, $2
srav $2, $3, $3
mtlo $3
mfhi $4
TAG710:
multu $4, $4
beq $4, $4, TAG711
slti $3, $4, 9
lui $1, 14
TAG711:
mfhi $1
sltiu $1, $1, 15
div $1, $1
lui $4, 12
TAG712:
or $4, $4, $4
lui $2, 5
lui $1, 4
beq $2, $4, TAG713
TAG713:
sll $0, $0, 0
lbu $3, 0($3)
addu $1, $3, $3
lui $3, 12
TAG714:
sll $0, $0, 0
mflo $3
mtlo $3
div $3, $3
TAG715:
and $3, $3, $3
lui $2, 15
mthi $2
mflo $1
TAG716:
mtlo $1
lui $3, 6
addu $4, $1, $3
bne $1, $1, TAG717
TAG717:
sll $0, $0, 0
sll $0, $0, 0
sltu $1, $2, $2
bgez $2, TAG718
TAG718:
mthi $1
mthi $1
bne $1, $1, TAG719
multu $1, $1
TAG719:
lui $3, 11
add $2, $1, $3
mtlo $3
bne $1, $3, TAG720
TAG720:
lui $1, 6
addiu $2, $2, 0
mflo $1
addu $1, $1, $1
TAG721:
mtlo $1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG722:
beq $2, $2, TAG723
divu $2, $2
lui $4, 0
multu $4, $4
TAG723:
sll $0, $0, 0
slti $3, $4, 5
sltiu $1, $4, 0
mtlo $3
TAG724:
blez $1, TAG725
sh $1, 0($1)
xori $3, $1, 13
lh $4, 0($3)
TAG725:
mfhi $4
mult $4, $4
xori $2, $4, 9
div $2, $2
TAG726:
mthi $2
addiu $2, $2, 7
mthi $2
mtlo $2
TAG727:
divu $2, $2
mthi $2
sh $2, 0($2)
mfhi $4
TAG728:
mtlo $4
sb $4, 0($4)
multu $4, $4
lb $4, 0($4)
TAG729:
srl $2, $4, 15
bgez $2, TAG730
slti $2, $2, 13
lui $4, 11
TAG730:
multu $4, $4
lb $1, 0($4)
mthi $4
ori $3, $1, 4
TAG731:
sh $3, 0($3)
div $3, $3
lbu $3, 0($3)
lw $4, 0($3)
TAG732:
subu $3, $4, $4
mult $4, $3
lui $1, 3
bne $3, $3, TAG733
TAG733:
mfhi $4
bgez $4, TAG734
lh $3, 0($4)
lui $3, 11
TAG734:
xor $1, $3, $3
lhu $1, 0($3)
lhu $2, 0($3)
bgez $3, TAG735
TAG735:
lh $4, 0($2)
bne $2, $2, TAG736
mthi $4
mtlo $4
TAG736:
sltiu $1, $4, 15
multu $4, $4
mtlo $1
sb $4, 0($1)
TAG737:
beq $1, $1, TAG738
mult $1, $1
lw $4, 0($1)
lui $1, 14
TAG738:
mthi $1
lb $1, 0($1)
slti $3, $1, 15
sra $1, $1, 4
TAG739:
and $3, $1, $1
lbu $4, 0($3)
mtlo $1
bltz $3, TAG740
TAG740:
xor $3, $4, $4
beq $4, $4, TAG741
xori $1, $3, 12
srav $3, $4, $4
TAG741:
bne $3, $3, TAG742
lui $3, 4
mfhi $2
multu $2, $3
TAG742:
mthi $2
lui $2, 15
xor $4, $2, $2
bne $2, $2, TAG743
TAG743:
addiu $3, $4, 10
sh $4, 0($3)
and $4, $3, $4
lbu $4, 0($3)
TAG744:
lui $2, 7
beq $2, $2, TAG745
mthi $4
sb $2, 0($2)
TAG745:
blez $2, TAG746
lui $1, 12
div $1, $1
mtlo $2
TAG746:
mfhi $3
blez $3, TAG747
andi $4, $3, 1
sb $3, 0($3)
TAG747:
mflo $1
sb $4, 0($4)
mult $4, $4
sll $0, $0, 0
TAG748:
sll $0, $0, 0
lhu $1, 0($4)
multu $4, $4
slti $1, $1, 14
TAG749:
lui $3, 8
mfhi $1
lui $1, 10
addiu $2, $3, 4
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop