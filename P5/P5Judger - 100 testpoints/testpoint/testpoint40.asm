ori $1, $0, 7
ori $2, $0, 10
ori $3, $0, 12
ori $4, $0, 14
sw $1, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $2, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $1, 76($0)
sw $4, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $2, 124($0)
sll $1, $2, 13
mthi $1
bltz $2, TAG1
lhu $4, 0($2)
TAG1:
bgtz $4, TAG2
mult $4, $4
sh $4, 0($4)
beq $4, $4, TAG2
TAG2:
mthi $4
mflo $3
bne $4, $3, TAG3
sw $4, 0($3)
TAG3:
mult $3, $3
multu $3, $3
sw $3, 0($3)
mthi $3
TAG4:
mflo $4
sh $4, 0($3)
mthi $3
lui $3, 3
TAG5:
sll $2, $3, 1
bgtz $2, TAG6
addiu $2, $3, 1
mflo $3
TAG6:
mthi $3
or $4, $3, $3
bne $4, $3, TAG7
divu $3, $4
TAG7:
mflo $1
sltiu $4, $4, 10
srlv $2, $4, $1
mflo $3
TAG8:
lbu $1, 0($3)
srav $4, $1, $3
multu $3, $4
mult $4, $1
TAG9:
addu $3, $4, $4
srav $4, $3, $3
sll $3, $3, 0
mult $3, $4
TAG10:
or $1, $3, $3
lh $2, 0($1)
beq $3, $1, TAG11
lw $2, 0($1)
TAG11:
multu $2, $2
addi $2, $2, 5
blez $2, TAG12
mtlo $2
TAG12:
srl $2, $2, 1
bne $2, $2, TAG13
mtlo $2
sh $2, 0($2)
TAG13:
addiu $3, $2, 6
mflo $3
mfhi $2
mtlo $2
TAG14:
sh $2, 0($2)
sltiu $1, $2, 5
lui $3, 1
sra $1, $1, 4
TAG15:
xori $2, $1, 0
mflo $1
lh $2, 0($2)
lui $3, 8
TAG16:
sll $0, $0, 0
mthi $3
mtlo $3
lh $2, 0($4)
TAG17:
sh $2, 0($2)
sh $2, 0($2)
addi $1, $2, 14
lbu $1, 0($2)
TAG18:
lui $1, 2
sll $0, $0, 0
bgtz $1, TAG19
divu $1, $1
TAG19:
mfhi $3
addiu $2, $3, 3
beq $3, $1, TAG20
slt $2, $1, $1
TAG20:
lhu $4, 0($2)
mfhi $4
lbu $3, 0($4)
sb $4, 0($4)
TAG21:
lui $3, 6
div $3, $3
sll $0, $0, 0
mflo $3
TAG22:
lbu $3, 0($3)
mtlo $3
mthi $3
lh $4, 0($3)
TAG23:
slt $4, $4, $4
sll $3, $4, 5
multu $3, $4
lui $4, 1
TAG24:
sll $0, $0, 0
addiu $1, $4, 3
mflo $4
lbu $1, 0($4)
TAG25:
xor $1, $1, $1
blez $1, TAG26
or $4, $1, $1
srlv $1, $1, $1
TAG26:
mthi $1
mfhi $1
lhu $1, 0($1)
beq $1, $1, TAG27
TAG27:
sb $1, 0($1)
beq $1, $1, TAG28
multu $1, $1
lui $2, 9
TAG28:
sb $2, 0($2)
sw $2, 0($2)
addi $2, $2, 13
subu $4, $2, $2
TAG29:
sra $4, $4, 4
srlv $3, $4, $4
sh $4, 0($3)
mthi $3
TAG30:
beq $3, $3, TAG31
andi $2, $3, 5
sb $2, 0($2)
sra $1, $3, 13
TAG31:
srav $4, $1, $1
lbu $1, 0($1)
mflo $2
lui $1, 0
TAG32:
mthi $1
sb $1, 0($1)
xori $2, $1, 8
lui $4, 3
TAG33:
mthi $4
bne $4, $4, TAG34
and $4, $4, $4
and $1, $4, $4
TAG34:
bgez $1, TAG35
mthi $1
div $1, $1
divu $1, $1
TAG35:
addiu $4, $1, 8
bne $4, $4, TAG36
andi $4, $4, 10
bne $4, $4, TAG36
TAG36:
slt $3, $4, $4
bltz $4, TAG37
multu $4, $3
multu $4, $3
TAG37:
mult $3, $3
mult $3, $3
mfhi $4
blez $4, TAG38
TAG38:
lui $1, 5
mfhi $2
sub $2, $1, $2
bgez $2, TAG39
TAG39:
mthi $2
sll $0, $0, 0
mflo $3
mfhi $3
TAG40:
multu $3, $3
srlv $3, $3, $3
beq $3, $3, TAG41
xor $2, $3, $3
TAG41:
bgtz $2, TAG42
subu $1, $2, $2
mult $2, $2
multu $2, $2
TAG42:
multu $1, $1
ori $4, $1, 0
subu $1, $1, $1
lui $3, 8
TAG43:
beq $3, $3, TAG44
sll $0, $0, 0
multu $3, $4
bgez $4, TAG44
TAG44:
slt $3, $4, $4
beq $3, $4, TAG45
multu $3, $4
bne $3, $4, TAG45
TAG45:
multu $3, $3
beq $3, $3, TAG46
sltu $3, $3, $3
mflo $1
TAG46:
nor $2, $1, $1
slt $1, $1, $2
lh $4, 1($2)
lw $1, 0($1)
TAG47:
sll $2, $1, 2
bgtz $1, TAG48
ori $2, $1, 4
bne $2, $2, TAG48
TAG48:
mfhi $2
bgez $2, TAG49
mult $2, $2
mthi $2
TAG49:
bltz $2, TAG50
mtlo $2
bne $2, $2, TAG50
sh $2, 0($2)
TAG50:
lui $3, 11
bne $2, $3, TAG51
srl $2, $2, 9
lh $3, 0($3)
TAG51:
addiu $1, $3, 13
mfhi $2
subu $1, $1, $2
bne $3, $2, TAG52
TAG52:
lui $1, 8
mthi $1
beq $1, $1, TAG53
sll $0, $0, 0
TAG53:
sra $4, $1, 5
sll $0, $0, 0
mtlo $4
beq $1, $1, TAG54
TAG54:
sll $0, $0, 0
bne $1, $4, TAG55
lui $2, 2
sb $2, 0($1)
TAG55:
sra $3, $2, 6
sll $0, $0, 0
bne $3, $3, TAG56
sll $0, $0, 0
TAG56:
mfhi $3
sll $1, $2, 5
div $1, $3
lui $2, 15
TAG57:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
div $2, $1
TAG58:
andi $2, $1, 8
lui $2, 13
beq $1, $2, TAG59
divu $2, $2
TAG59:
beq $2, $2, TAG60
sll $0, $0, 0
sra $2, $2, 0
sub $3, $2, $2
TAG60:
subu $4, $3, $3
xor $2, $3, $4
bgez $2, TAG61
sll $0, $0, 0
TAG61:
blez $2, TAG62
addu $3, $2, $2
mflo $2
bne $2, $2, TAG62
TAG62:
lb $3, 0($2)
mtlo $2
multu $2, $3
sw $3, 0($3)
TAG63:
lui $1, 8
sll $0, $0, 0
lui $2, 5
bgtz $1, TAG64
TAG64:
sll $0, $0, 0
addiu $1, $2, 2
lui $1, 6
mtlo $2
TAG65:
subu $3, $1, $1
addiu $1, $3, 8
lhu $3, 0($1)
sra $2, $3, 12
TAG66:
lhu $4, 0($2)
mflo $1
bgez $2, TAG67
sb $2, 0($2)
TAG67:
lui $1, 11
div $1, $1
mfhi $1
lbu $3, 0($1)
TAG68:
addu $2, $3, $3
multu $2, $2
mult $2, $3
bgez $2, TAG69
TAG69:
addu $3, $2, $2
lui $2, 10
sll $0, $0, 0
mfhi $3
TAG70:
mthi $3
lw $3, 0($3)
sllv $3, $3, $3
srl $3, $3, 4
TAG71:
sra $3, $3, 7
beq $3, $3, TAG72
xor $2, $3, $3
bne $3, $3, TAG72
TAG72:
and $4, $2, $2
lhu $1, 0($4)
blez $1, TAG73
sh $2, 0($4)
TAG73:
mflo $1
blez $1, TAG74
sb $1, 0($1)
div $1, $1
TAG74:
lbu $1, 0($1)
sh $1, 0($1)
mtlo $1
bgez $1, TAG75
TAG75:
slt $4, $1, $1
sw $4, 0($4)
beq $1, $4, TAG76
mflo $3
TAG76:
mthi $3
lh $2, 0($3)
sh $2, 0($3)
mult $3, $3
TAG77:
mthi $2
lui $1, 0
mtlo $1
bgtz $2, TAG78
TAG78:
mfhi $2
beq $2, $2, TAG79
multu $1, $2
beq $2, $1, TAG79
TAG79:
and $2, $2, $2
addu $3, $2, $2
lb $3, 0($2)
andi $4, $2, 9
TAG80:
lw $4, 0($4)
mthi $4
lh $1, 0($4)
lui $3, 7
TAG81:
srlv $2, $3, $3
ori $3, $3, 3
mfhi $2
mfhi $1
TAG82:
mult $1, $1
sub $3, $1, $1
bltz $1, TAG83
lui $1, 12
TAG83:
bne $1, $1, TAG84
sll $1, $1, 11
bltz $1, TAG84
mult $1, $1
TAG84:
div $1, $1
bgtz $1, TAG85
lui $1, 10
multu $1, $1
TAG85:
sltiu $4, $1, 0
mult $1, $4
mtlo $4
subu $4, $1, $4
TAG86:
sll $3, $4, 11
srl $2, $4, 9
sllv $2, $4, $4
sll $0, $0, 0
TAG87:
bltz $2, TAG88
sllv $4, $2, $2
addiu $1, $4, 3
multu $2, $1
TAG88:
mthi $1
bne $1, $1, TAG89
srlv $1, $1, $1
sll $0, $0, 0
TAG89:
bgez $1, TAG90
slti $1, $1, 8
divu $1, $1
sb $1, 0($1)
TAG90:
bne $1, $1, TAG91
lui $3, 11
sll $0, $0, 0
lh $4, 0($1)
TAG91:
beq $4, $4, TAG92
and $3, $4, $4
divu $3, $3
mtlo $3
TAG92:
bgtz $3, TAG93
mflo $3
bgtz $3, TAG93
mflo $3
TAG93:
mfhi $2
sll $0, $0, 0
mult $2, $3
mtlo $3
TAG94:
mflo $4
div $4, $4
beq $3, $3, TAG95
divu $3, $4
TAG95:
sll $0, $0, 0
sltiu $4, $4, 0
sb $4, 0($4)
srlv $1, $4, $4
TAG96:
sllv $3, $1, $1
xor $4, $1, $3
bne $1, $3, TAG97
mthi $3
TAG97:
andi $2, $4, 12
lb $1, 0($4)
lui $3, 12
addu $1, $2, $1
TAG98:
bltz $1, TAG99
lhu $4, 0($1)
lui $1, 10
mthi $1
TAG99:
bne $1, $1, TAG100
div $1, $1
div $1, $1
mtlo $1
TAG100:
mthi $1
sra $2, $1, 5
mult $2, $2
srl $1, $1, 0
TAG101:
mflo $2
bne $1, $2, TAG102
sll $0, $0, 0
bgez $1, TAG102
TAG102:
mult $4, $4
addiu $2, $4, 7
lui $4, 7
bltz $4, TAG103
TAG103:
sll $0, $0, 0
slti $1, $4, 15
lh $4, 0($1)
lb $2, 0($4)
TAG104:
srav $2, $2, $2
mthi $2
sra $2, $2, 2
mtlo $2
TAG105:
sw $2, 0($2)
sh $2, 0($2)
lui $1, 1
mtlo $2
TAG106:
div $1, $1
andi $4, $1, 3
mult $4, $4
mthi $4
TAG107:
add $4, $4, $4
mflo $4
lb $2, 0($4)
lui $4, 13
TAG108:
lui $2, 0
sll $0, $0, 0
ori $2, $2, 4
srav $4, $2, $2
TAG109:
beq $4, $4, TAG110
lh $2, 0($4)
lui $4, 10
sb $2, 0($4)
TAG110:
sh $4, 0($4)
bgtz $4, TAG111
sllv $3, $4, $4
sb $3, 0($3)
TAG111:
bgtz $3, TAG112
lh $2, 0($3)
multu $2, $3
add $2, $3, $2
TAG112:
lbu $4, 0($2)
sw $4, 0($2)
add $2, $2, $4
lbu $2, 0($2)
TAG113:
sb $2, 0($2)
bne $2, $2, TAG114
andi $1, $2, 6
bltz $1, TAG114
TAG114:
sw $1, 0($1)
srlv $3, $1, $1
addi $2, $1, 10
sb $2, 0($1)
TAG115:
bgez $2, TAG116
lui $1, 2
blez $1, TAG116
mult $2, $1
TAG116:
mthi $1
lui $4, 0
mthi $4
mflo $3
TAG117:
lui $3, 8
mfhi $3
sltiu $1, $3, 14
bne $1, $3, TAG118
TAG118:
lui $3, 2
bltz $3, TAG119
or $1, $3, $3
mthi $3
TAG119:
blez $1, TAG120
srav $4, $1, $1
sra $4, $4, 8
mflo $4
TAG120:
lb $1, 0($4)
bne $1, $4, TAG121
mflo $1
mthi $4
TAG121:
slti $2, $1, 0
beq $2, $1, TAG122
sh $2, 0($2)
mflo $3
TAG122:
addiu $2, $3, 1
mflo $2
sra $3, $2, 8
srlv $4, $2, $3
TAG123:
bgez $4, TAG124
sltu $4, $4, $4
mtlo $4
xor $3, $4, $4
TAG124:
beq $3, $3, TAG125
addu $3, $3, $3
xori $2, $3, 0
sw $2, 0($2)
TAG125:
bne $2, $2, TAG126
mult $2, $2
beq $2, $2, TAG126
sll $3, $2, 3
TAG126:
multu $3, $3
mflo $1
lw $3, 0($1)
sll $1, $1, 8
TAG127:
mthi $1
mult $1, $1
and $4, $1, $1
sra $1, $4, 12
TAG128:
sltiu $1, $1, 1
mtlo $1
divu $1, $1
lui $3, 6
TAG129:
mthi $3
srlv $1, $3, $3
beq $3, $3, TAG130
sll $0, $0, 0
TAG130:
add $4, $2, $2
lui $4, 0
slti $1, $4, 8
mflo $4
TAG131:
bgtz $4, TAG132
ori $3, $4, 12
mtlo $4
sub $4, $3, $4
TAG132:
mtlo $4
bltz $4, TAG133
mtlo $4
mflo $2
TAG133:
sll $4, $2, 8
lui $3, 12
mfhi $1
sb $2, -256($4)
TAG134:
mthi $1
lui $2, 15
xori $2, $2, 3
mtlo $1
TAG135:
bgez $2, TAG136
divu $2, $2
lb $2, 0($2)
beq $2, $2, TAG136
TAG136:
addu $3, $2, $2
beq $3, $2, TAG137
sll $0, $0, 0
slt $3, $3, $2
TAG137:
lb $4, 0($3)
mthi $4
blez $3, TAG138
sltiu $4, $4, 9
TAG138:
sltu $3, $4, $4
mtlo $3
sh $3, 0($3)
lbu $3, 0($3)
TAG139:
mtlo $3
beq $3, $3, TAG140
lui $4, 13
div $4, $4
TAG140:
bgtz $4, TAG141
sll $0, $0, 0
xori $3, $4, 4
srlv $4, $4, $1
TAG141:
mthi $4
sll $0, $0, 0
srlv $2, $4, $4
lui $3, 9
TAG142:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
srl $2, $2, 6
TAG143:
mtlo $2
mthi $2
sw $2, -13312($2)
addu $3, $2, $2
TAG144:
mtlo $3
mtlo $3
lhu $1, -26624($3)
lui $2, 13
TAG145:
sll $0, $0, 0
bne $2, $2, TAG146
addiu $3, $3, 8
lbu $2, -26632($3)
TAG146:
mult $2, $2
mult $2, $2
bne $2, $2, TAG147
sw $2, 0($2)
TAG147:
bne $2, $2, TAG148
sb $2, 0($2)
lui $3, 15
mflo $1
TAG148:
slti $1, $1, 9
addu $3, $1, $1
beq $3, $1, TAG149
lui $1, 13
TAG149:
mthi $1
sllv $4, $1, $1
sll $0, $0, 0
multu $4, $4
TAG150:
sh $2, 0($2)
beq $2, $2, TAG151
lui $1, 4
mult $2, $2
TAG151:
addiu $4, $1, 9
sll $0, $0, 0
sltiu $4, $1, 15
sw $4, 0($4)
TAG152:
mtlo $4
lui $3, 13
blez $4, TAG153
multu $4, $4
TAG153:
subu $1, $3, $3
bne $3, $1, TAG154
sllv $1, $1, $3
bne $1, $1, TAG154
TAG154:
lui $4, 7
bne $1, $4, TAG155
sll $0, $0, 0
mtlo $1
TAG155:
bne $1, $1, TAG156
mflo $1
addu $4, $1, $1
mult $4, $4
TAG156:
beq $4, $4, TAG157
mthi $4
bgtz $4, TAG157
mult $4, $4
TAG157:
mfhi $3
bgtz $4, TAG158
mult $4, $3
sh $3, 0($4)
TAG158:
mthi $3
sll $4, $3, 12
lui $1, 4
sub $1, $3, $4
TAG159:
srlv $4, $1, $1
bltz $4, TAG160
multu $1, $1
bne $1, $1, TAG160
TAG160:
sra $4, $4, 8
andi $1, $4, 0
sw $4, 0($1)
mthi $4
TAG161:
sra $1, $1, 14
lb $2, 0($1)
beq $1, $1, TAG162
lui $1, 6
TAG162:
div $1, $1
sll $0, $0, 0
sll $3, $1, 3
mflo $1
TAG163:
sb $1, 0($1)
bgez $1, TAG164
multu $1, $1
sltiu $4, $1, 0
TAG164:
slti $4, $4, 7
beq $4, $4, TAG165
div $4, $4
bgez $4, TAG165
TAG165:
mtlo $4
addiu $2, $4, 14
blez $2, TAG166
mtlo $4
TAG166:
bgez $2, TAG167
slt $3, $2, $2
mtlo $2
lh $3, 0($3)
TAG167:
bltz $3, TAG168
mtlo $3
lb $4, 0($3)
mthi $3
TAG168:
mtlo $4
bne $4, $4, TAG169
mflo $3
mult $3, $3
TAG169:
lb $2, 0($3)
mthi $2
lw $3, 0($3)
lui $1, 4
TAG170:
or $3, $1, $1
lui $2, 12
sll $0, $0, 0
addiu $4, $2, 5
TAG171:
mfhi $2
addu $1, $2, $4
subu $1, $1, $1
lh $2, 0($2)
TAG172:
andi $3, $2, 6
mtlo $2
andi $1, $3, 15
bgez $3, TAG173
TAG173:
sll $0, $0, 0
mfhi $2
sll $1, $2, 5
lh $4, 0($1)
TAG174:
sll $0, $0, 0
mtlo $3
xor $3, $3, $4
bgez $4, TAG175
TAG175:
sw $3, -256($3)
mflo $4
sllv $2, $4, $3
sltiu $4, $4, 8
TAG176:
mult $4, $4
lui $2, 15
mfhi $3
sll $0, $0, 0
TAG177:
xor $3, $1, $1
multu $3, $3
lbu $1, 0($3)
mflo $3
TAG178:
mflo $3
sw $3, 0($3)
sb $3, 0($3)
sw $3, 0($3)
TAG179:
addu $2, $3, $3
lui $3, 10
mtlo $3
andi $4, $3, 15
TAG180:
mfhi $4
mflo $2
blez $4, TAG181
mfhi $2
TAG181:
lb $4, 0($2)
mfhi $2
lui $3, 0
bne $2, $4, TAG182
TAG182:
lbu $3, 0($3)
lb $3, 0($3)
addu $2, $3, $3
beq $2, $3, TAG183
TAG183:
multu $2, $2
sw $2, 0($2)
sra $4, $2, 9
sb $2, 0($4)
TAG184:
sh $4, 0($4)
mthi $4
srl $4, $4, 3
sw $4, 0($4)
TAG185:
srlv $1, $4, $4
lui $1, 12
lb $2, 0($4)
sll $0, $0, 0
TAG186:
multu $2, $2
mult $2, $2
mflo $1
lui $3, 13
TAG187:
mfhi $2
bgtz $2, TAG188
mtlo $2
bne $2, $2, TAG188
TAG188:
or $2, $2, $2
mfhi $1
sra $2, $2, 9
sh $1, 0($2)
TAG189:
beq $2, $2, TAG190
sb $2, 0($2)
lui $4, 15
sb $2, 0($2)
TAG190:
bne $4, $4, TAG191
mfhi $4
slti $2, $4, 10
sltiu $2, $4, 13
TAG191:
mtlo $2
beq $2, $2, TAG192
mtlo $2
divu $2, $2
TAG192:
srav $1, $2, $2
lui $2, 0
blez $2, TAG193
and $2, $1, $1
TAG193:
beq $2, $2, TAG194
xori $3, $2, 15
mflo $3
slt $1, $3, $3
TAG194:
mflo $3
lui $2, 6
xori $3, $1, 12
sll $0, $0, 0
TAG195:
bltz $4, TAG196
sltiu $3, $4, 10
sh $4, 0($4)
lui $4, 10
TAG196:
divu $4, $4
slt $2, $4, $4
mtlo $4
blez $4, TAG197
TAG197:
lw $3, 0($2)
mtlo $2
mthi $3
addiu $3, $2, 15
TAG198:
bltz $3, TAG199
mult $3, $3
sb $3, 0($3)
subu $1, $3, $3
TAG199:
bne $1, $1, TAG200
sh $1, 0($1)
bgtz $1, TAG200
lui $1, 10
TAG200:
sll $0, $0, 0
multu $1, $1
beq $1, $1, TAG201
mflo $4
TAG201:
mfhi $4
lb $2, 0($4)
mult $4, $4
multu $4, $4
TAG202:
lh $3, 0($2)
mult $3, $3
divu $2, $3
or $1, $3, $2
TAG203:
mtlo $1
andi $1, $1, 6
mfhi $4
multu $1, $1
TAG204:
mult $4, $4
sh $4, 0($4)
mflo $1
mult $1, $4
TAG205:
sh $1, -196($1)
lh $3, -196($1)
beq $1, $1, TAG206
multu $1, $1
TAG206:
subu $2, $3, $3
mfhi $1
bgez $3, TAG207
lui $2, 4
TAG207:
beq $2, $2, TAG208
srlv $2, $2, $2
sb $2, 0($2)
mflo $1
TAG208:
lb $2, 0($1)
bgtz $1, TAG209
sra $1, $2, 11
mflo $3
TAG209:
bgez $3, TAG210
sll $0, $0, 0
mfhi $3
mtlo $3
TAG210:
sra $1, $3, 9
mthi $3
bne $1, $1, TAG211
mtlo $3
TAG211:
divu $1, $1
subu $4, $1, $1
div $1, $1
lui $1, 8
TAG212:
beq $1, $1, TAG213
addu $2, $1, $1
bgez $1, TAG213
sb $2, 0($1)
TAG213:
beq $2, $2, TAG214
sra $1, $2, 3
sltiu $1, $2, 5
mult $1, $2
TAG214:
mult $1, $1
multu $1, $1
sll $0, $0, 0
multu $3, $1
TAG215:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
TAG216:
mthi $2
mthi $2
mthi $2
addiu $2, $2, 14
TAG217:
mthi $2
xor $3, $2, $2
sltu $3, $2, $2
blez $3, TAG218
TAG218:
mtlo $3
beq $3, $3, TAG219
lbu $2, 0($3)
mfhi $3
TAG219:
lh $4, 0($3)
beq $4, $4, TAG220
mtlo $3
beq $4, $4, TAG220
TAG220:
multu $4, $4
sltu $4, $4, $4
blez $4, TAG221
sra $3, $4, 6
TAG221:
lbu $1, 0($3)
andi $1, $3, 2
lhu $4, 0($1)
lui $3, 4
TAG222:
mflo $2
mtlo $2
bne $3, $2, TAG223
sll $0, $0, 0
TAG223:
subu $4, $2, $2
beq $2, $4, TAG224
lui $1, 5
mthi $2
TAG224:
lui $4, 8
sll $0, $0, 0
mult $4, $1
sltu $2, $1, $3
TAG225:
srl $2, $2, 5
bne $2, $2, TAG226
lw $1, 0($2)
lh $3, -196($1)
TAG226:
addiu $2, $3, 11
bltz $3, TAG227
lui $4, 1
sra $2, $2, 13
TAG227:
lw $3, 0($2)
bltz $2, TAG228
mult $3, $2
addu $2, $3, $3
TAG228:
mfhi $2
lw $1, 0($2)
sltu $4, $2, $2
blez $2, TAG229
TAG229:
mfhi $2
bne $2, $4, TAG230
lh $3, 0($2)
lbu $2, 0($4)
TAG230:
divu $2, $2
bne $2, $2, TAG231
sb $2, -196($2)
sb $2, -196($2)
TAG231:
mthi $2
bltz $2, TAG232
sh $2, -196($2)
lui $4, 4
TAG232:
mfhi $3
mtlo $3
sb $3, -196($3)
mult $4, $4
TAG233:
lui $1, 12
addiu $3, $1, 15
sll $0, $0, 0
srlv $2, $1, $3
TAG234:
mfhi $3
mtlo $3
sw $3, 0($2)
lw $2, 0($3)
TAG235:
multu $2, $2
subu $2, $2, $2
bgez $2, TAG236
sh $2, 0($2)
TAG236:
lbu $2, 0($2)
bne $2, $2, TAG237
slti $4, $2, 1
blez $2, TAG237
TAG237:
mfhi $4
sb $4, 0($4)
bgtz $4, TAG238
mthi $4
TAG238:
lui $3, 8
mult $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG239:
mfhi $2
lw $3, 0($2)
mtlo $3
lbu $1, 0($2)
TAG240:
blez $1, TAG241
lb $4, 0($1)
lbu $2, 0($1)
beq $1, $2, TAG241
TAG241:
ori $4, $2, 15
lui $1, 7
blez $4, TAG242
addu $1, $1, $1
TAG242:
lui $4, 1
bgez $1, TAG243
mtlo $4
bgtz $1, TAG243
TAG243:
divu $4, $4
mult $4, $4
sll $0, $0, 0
bltz $4, TAG244
TAG244:
mthi $4
lui $1, 6
mtlo $4
mthi $1
TAG245:
mtlo $1
bgtz $1, TAG246
mfhi $4
mthi $4
TAG246:
mthi $4
mflo $2
sll $0, $0, 0
bltz $2, TAG247
TAG247:
multu $2, $2
mtlo $2
mtlo $2
bgez $2, TAG248
TAG248:
srav $3, $2, $2
blez $2, TAG249
sll $0, $0, 0
sll $0, $0, 0
TAG249:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG250
divu $4, $4
TAG250:
lui $4, 9
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG251:
div $2, $2
mult $2, $2
bne $2, $2, TAG252
divu $2, $2
TAG252:
sll $0, $0, 0
sllv $2, $2, $2
beq $2, $2, TAG253
mthi $2
TAG253:
xori $1, $2, 8
mthi $2
mthi $1
mthi $2
TAG254:
xor $3, $1, $1
ori $3, $3, 12
sw $1, 0($3)
addiu $2, $1, 13
TAG255:
bne $2, $2, TAG256
sll $0, $0, 0
lui $2, 8
sltu $4, $2, $2
TAG256:
bltz $4, TAG257
mflo $1
nor $4, $1, $1
mflo $2
TAG257:
sll $1, $2, 11
blez $2, TAG258
multu $1, $1
srl $1, $2, 4
TAG258:
multu $1, $1
mflo $3
bgtz $3, TAG259
lui $1, 7
TAG259:
div $1, $1
bne $1, $1, TAG260
divu $1, $1
mflo $4
TAG260:
mflo $2
bgez $4, TAG261
lb $1, 0($4)
beq $4, $4, TAG261
TAG261:
sw $1, 0($1)
sltiu $2, $1, 3
beq $1, $1, TAG262
mfhi $2
TAG262:
mult $2, $2
xor $3, $2, $2
lui $3, 3
beq $3, $3, TAG263
TAG263:
mfhi $3
beq $3, $3, TAG264
mflo $4
mtlo $4
TAG264:
mthi $4
andi $2, $4, 12
bne $4, $4, TAG265
lui $4, 14
TAG265:
bne $4, $4, TAG266
div $4, $4
bgtz $4, TAG266
mthi $4
TAG266:
bltz $4, TAG267
lui $2, 2
addu $2, $4, $2
lui $4, 0
TAG267:
multu $4, $4
sh $4, 0($4)
srl $1, $4, 0
lui $4, 12
TAG268:
mfhi $4
addu $3, $4, $4
lw $4, 0($3)
multu $4, $4
TAG269:
lui $4, 8
bgez $4, TAG270
sll $0, $0, 0
mfhi $1
TAG270:
srav $1, $1, $1
lui $2, 5
sw $1, 0($1)
lui $1, 15
TAG271:
bne $1, $1, TAG272
mthi $1
lui $2, 12
sra $1, $2, 6
TAG272:
sll $0, $0, 0
lui $1, 10
addiu $1, $1, 8
multu $1, $1
TAG273:
bgez $1, TAG274
lui $2, 15
mtlo $2
addiu $4, $2, 13
TAG274:
slti $1, $4, 10
sll $0, $0, 0
lui $2, 11
slt $4, $4, $2
TAG275:
divu $4, $4
addu $3, $4, $4
sh $3, 0($3)
blez $4, TAG276
TAG276:
lh $2, 0($3)
sh $3, 0($2)
beq $2, $3, TAG277
srlv $4, $3, $3
TAG277:
lui $3, 12
bgtz $4, TAG278
lui $3, 4
ori $3, $3, 4
TAG278:
mult $3, $3
bgtz $3, TAG279
sll $0, $0, 0
beq $4, $4, TAG279
TAG279:
xori $3, $4, 12
lh $2, 0($3)
lhu $2, 0($4)
bltz $2, TAG280
TAG280:
ori $3, $2, 14
sh $3, 0($2)
bgez $2, TAG281
lh $4, 0($2)
TAG281:
bgtz $4, TAG282
srav $3, $4, $4
sh $4, 0($3)
mult $3, $4
TAG282:
multu $3, $3
mult $3, $3
lui $1, 0
mflo $4
TAG283:
beq $4, $4, TAG284
lbu $1, 0($4)
bne $1, $1, TAG284
srlv $2, $1, $1
TAG284:
blez $2, TAG285
lui $1, 3
subu $3, $1, $1
mult $2, $1
TAG285:
bne $3, $3, TAG286
srav $1, $3, $3
mflo $2
srav $1, $2, $3
TAG286:
mtlo $1
mflo $2
addi $3, $1, 13
srav $1, $3, $1
TAG287:
lui $2, 1
mthi $1
mtlo $1
sb $1, 0($1)
TAG288:
blez $2, TAG289
srav $4, $2, $2
mflo $3
and $4, $3, $2
TAG289:
bne $4, $4, TAG290
subu $3, $4, $4
mult $3, $4
mtlo $4
TAG290:
bne $3, $3, TAG291
mtlo $3
mflo $2
bne $3, $3, TAG291
TAG291:
multu $2, $2
mtlo $2
multu $2, $2
lui $1, 2
TAG292:
divu $1, $1
sll $0, $0, 0
sra $1, $3, 15
mflo $2
TAG293:
mtlo $2
xori $2, $2, 8
beq $2, $2, TAG294
divu $2, $2
TAG294:
subu $3, $2, $2
sb $2, 0($2)
sllv $1, $2, $3
mult $1, $2
TAG295:
mult $1, $1
blez $1, TAG296
xor $2, $1, $1
sw $2, 0($2)
TAG296:
lbu $1, 0($2)
bne $2, $2, TAG297
addiu $3, $2, 11
sb $1, 0($3)
TAG297:
multu $3, $3
sllv $3, $3, $3
divu $3, $3
div $3, $3
TAG298:
sh $3, -22528($3)
andi $3, $3, 5
lbu $4, 0($3)
srav $4, $4, $3
TAG299:
beq $4, $4, TAG300
sub $2, $4, $4
mthi $4
mthi $2
TAG300:
lh $4, 0($2)
andi $2, $2, 15
bgtz $2, TAG301
mthi $2
TAG301:
sh $2, 0($2)
lw $2, 0($2)
bne $2, $2, TAG302
multu $2, $2
TAG302:
bne $2, $2, TAG303
sltu $1, $2, $2
bgez $2, TAG303
mtlo $1
TAG303:
mfhi $2
mtlo $1
lbu $2, 0($2)
sll $3, $1, 11
TAG304:
addu $3, $3, $3
andi $3, $3, 5
slt $3, $3, $3
lui $1, 6
TAG305:
addiu $3, $1, 15
lui $2, 12
sll $0, $0, 0
or $4, $3, $2
TAG306:
sll $0, $0, 0
slti $4, $4, 5
mflo $2
bltz $2, TAG307
TAG307:
nor $4, $2, $2
xor $1, $4, $4
blez $2, TAG308
sub $3, $4, $2
TAG308:
mfhi $3
mthi $3
mult $3, $3
lb $3, 0($3)
TAG309:
lhu $4, 0($3)
lui $3, 4
lw $2, 0($4)
srav $4, $3, $2
TAG310:
nor $1, $4, $4
addiu $2, $1, 12
mflo $4
bne $2, $4, TAG311
TAG311:
lw $4, 0($4)
srav $3, $4, $4
lhu $1, 0($3)
bgez $3, TAG312
TAG312:
mult $1, $1
lbu $3, 0($1)
addiu $2, $3, 4
mult $1, $3
TAG313:
mult $2, $2
bgtz $2, TAG314
mult $2, $2
mfhi $1
TAG314:
multu $1, $1
mtlo $1
beq $1, $1, TAG315
mflo $2
TAG315:
multu $2, $2
sll $3, $2, 8
slt $1, $3, $3
sra $1, $3, 10
TAG316:
sra $2, $1, 3
lw $1, 0($2)
bne $1, $1, TAG317
lh $2, 0($2)
TAG317:
lh $3, 0($2)
beq $3, $2, TAG318
sh $2, 0($3)
addu $3, $3, $3
TAG318:
mthi $3
lui $4, 9
multu $4, $4
multu $3, $3
TAG319:
lui $3, 12
subu $4, $3, $3
bne $3, $4, TAG320
mfhi $3
TAG320:
srlv $4, $3, $3
sb $3, 0($3)
sllv $3, $4, $4
lw $1, 0($3)
TAG321:
bgtz $1, TAG322
lbu $2, 0($1)
mtlo $2
lhu $1, 0($2)
TAG322:
mfhi $2
sw $2, 0($1)
srl $1, $1, 5
sb $2, 0($2)
TAG323:
sw $1, 0($1)
lui $1, 14
blez $1, TAG324
sll $0, $0, 0
TAG324:
mthi $1
and $2, $1, $1
divu $2, $2
bgtz $2, TAG325
TAG325:
mult $2, $2
mult $2, $2
mthi $2
xor $4, $2, $2
TAG326:
mult $4, $4
mtlo $4
mfhi $1
lh $3, 0($4)
TAG327:
blez $3, TAG328
addu $3, $3, $3
sllv $3, $3, $3
mfhi $2
TAG328:
lui $4, 13
sltiu $4, $2, 7
lui $3, 2
sltiu $4, $3, 3
TAG329:
lui $2, 11
mthi $4
sh $2, 0($4)
lui $3, 9
TAG330:
lui $1, 9
mfhi $3
sll $0, $0, 0
mult $4, $3
TAG331:
add $3, $4, $4
bgtz $3, TAG332
lw $4, 0($4)
srav $3, $3, $3
TAG332:
or $1, $3, $3
sb $3, 0($3)
andi $3, $3, 11
bne $3, $3, TAG333
TAG333:
mthi $3
and $2, $3, $3
mult $2, $2
bltz $2, TAG334
TAG334:
subu $3, $2, $2
sltiu $2, $3, 1
div $2, $2
lui $1, 0
TAG335:
mflo $2
lb $1, 0($2)
bne $1, $1, TAG336
sw $2, 0($1)
TAG336:
mtlo $1
mflo $2
bltz $2, TAG337
mflo $3
TAG337:
sw $3, 0($3)
lb $1, 0($3)
lw $2, 0($1)
xor $2, $2, $2
TAG338:
lbu $4, 0($2)
mthi $4
sh $2, 0($4)
multu $4, $2
TAG339:
sw $4, 0($4)
xor $2, $4, $4
lh $3, 0($2)
srav $2, $3, $4
TAG340:
multu $2, $2
mflo $2
sb $2, 0($2)
lbu $2, 0($2)
TAG341:
addiu $3, $2, 0
slt $4, $2, $2
multu $2, $4
blez $3, TAG342
TAG342:
sb $4, 0($4)
add $4, $4, $4
sll $4, $4, 14
mfhi $3
TAG343:
mfhi $1
lb $4, 0($1)
lhu $4, 0($4)
lui $4, 15
TAG344:
andi $1, $4, 12
lui $3, 0
lui $2, 11
sw $2, 0($1)
TAG345:
xor $2, $2, $2
lhu $3, 0($2)
srav $1, $2, $2
beq $1, $1, TAG346
TAG346:
xori $1, $1, 15
mfhi $4
bgtz $4, TAG347
sb $4, 0($1)
TAG347:
blez $4, TAG348
lbu $2, 0($4)
sb $4, 0($2)
mthi $4
TAG348:
lbu $3, 0($2)
bgtz $2, TAG349
mtlo $3
sltiu $4, $3, 11
TAG349:
bgez $4, TAG350
addu $1, $4, $4
mthi $1
beq $1, $1, TAG350
TAG350:
addu $3, $1, $1
nor $4, $3, $3
andi $1, $3, 12
mflo $4
TAG351:
sll $2, $4, 1
lbu $4, 0($4)
mthi $2
lui $4, 9
TAG352:
sll $0, $0, 0
slti $3, $4, 15
mult $4, $3
addiu $2, $3, 8
TAG353:
xor $4, $2, $2
bltz $4, TAG354
mtlo $4
mtlo $4
TAG354:
or $3, $4, $4
lui $1, 9
srl $4, $1, 12
lb $3, -144($4)
TAG355:
lui $2, 8
div $3, $2
beq $2, $2, TAG356
mfhi $3
TAG356:
blez $3, TAG357
addi $2, $3, 3
mfhi $3
divu $3, $3
TAG357:
slti $4, $3, 4
sllv $4, $4, $4
beq $4, $4, TAG358
mfhi $1
TAG358:
sw $1, 0($1)
or $1, $1, $1
bne $1, $1, TAG359
mthi $1
TAG359:
multu $1, $1
bne $1, $1, TAG360
lh $1, 0($1)
mfhi $4
TAG360:
lui $4, 8
sll $0, $0, 0
sll $0, $0, 0
lui $1, 3
TAG361:
andi $3, $1, 1
mthi $1
subu $2, $3, $1
addiu $1, $2, 12
TAG362:
sra $1, $1, 6
sw $1, 3072($1)
mult $1, $1
mfhi $1
TAG363:
lui $1, 9
sll $0, $0, 0
beq $1, $1, TAG364
lui $1, 3
TAG364:
bne $1, $1, TAG365
sll $0, $0, 0
lui $3, 13
div $3, $1
TAG365:
multu $3, $3
bgtz $3, TAG366
lui $2, 9
bltz $3, TAG366
TAG366:
sltu $1, $2, $2
mult $2, $2
lw $4, 0($1)
xori $3, $2, 13
TAG367:
bne $3, $3, TAG368
mthi $3
bltz $3, TAG368
sll $0, $0, 0
TAG368:
sll $0, $0, 0
sll $1, $3, 4
bgtz $3, TAG369
mtlo $1
TAG369:
beq $1, $1, TAG370
lui $1, 0
mult $1, $1
sw $1, 0($1)
TAG370:
lui $1, 15
bne $1, $1, TAG371
mfhi $2
beq $1, $1, TAG371
TAG371:
sltu $1, $2, $2
mflo $4
bne $4, $2, TAG372
sll $0, $0, 0
TAG372:
bne $4, $4, TAG373
sll $0, $0, 0
sll $0, $0, 0
lui $3, 3
TAG373:
mthi $3
sll $0, $0, 0
blez $3, TAG374
sltiu $3, $3, 12
TAG374:
sh $3, 0($3)
sb $3, 0($3)
bne $3, $3, TAG375
mtlo $3
TAG375:
bgtz $3, TAG376
lui $1, 4
multu $3, $3
blez $3, TAG376
TAG376:
mflo $4
addu $3, $4, $1
ori $3, $1, 6
beq $3, $3, TAG377
TAG377:
mfhi $3
slti $1, $3, 0
sb $1, 0($1)
lui $1, 4
TAG378:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $1, $4
TAG379:
lw $2, 0($4)
lui $2, 3
bne $2, $4, TAG380
mtlo $2
TAG380:
mtlo $2
mult $2, $2
sll $0, $0, 0
div $2, $2
TAG381:
div $2, $2
mflo $4
lui $3, 8
lui $1, 14
TAG382:
bgtz $1, TAG383
lui $1, 5
lui $4, 13
blez $1, TAG383
TAG383:
mflo $4
lb $4, 0($4)
sh $4, 0($4)
srlv $4, $4, $4
TAG384:
bgez $4, TAG385
xori $2, $4, 11
bne $4, $4, TAG385
div $2, $2
TAG385:
mult $2, $2
lb $2, 0($2)
bne $2, $2, TAG386
mthi $2
TAG386:
lb $3, 0($2)
srav $2, $2, $2
lbu $3, 0($2)
lw $2, 0($3)
TAG387:
mtlo $2
srav $1, $2, $2
sltiu $3, $2, 12
sll $0, $0, 0
TAG388:
beq $3, $3, TAG389
sb $3, 0($3)
mthi $3
sub $2, $3, $3
TAG389:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
mult $1, $1
TAG390:
bgtz $1, TAG391
addi $1, $1, 12
subu $4, $1, $1
mthi $1
TAG391:
mult $4, $4
multu $4, $4
mfhi $1
sh $1, 0($4)
TAG392:
multu $1, $1
mthi $1
sw $1, 0($1)
sb $1, 0($1)
TAG393:
sb $1, 0($1)
mtlo $1
lui $2, 8
multu $1, $1
TAG394:
srl $3, $2, 10
xori $1, $2, 8
srav $1, $2, $1
sw $1, -512($3)
TAG395:
bne $1, $1, TAG396
divu $1, $1
beq $1, $1, TAG396
lhu $4, -2048($1)
TAG396:
sll $2, $4, 3
mthi $4
mthi $2
addu $2, $4, $4
TAG397:
sb $2, -4096($2)
mtlo $2
sb $2, -4096($2)
sb $2, -4096($2)
TAG398:
mult $2, $2
bltz $2, TAG399
lui $3, 2
lui $1, 2
TAG399:
blez $1, TAG400
divu $1, $1
sll $0, $0, 0
mtlo $1
TAG400:
beq $1, $1, TAG401
mflo $2
bgtz $2, TAG401
lh $4, 0($1)
TAG401:
sb $4, -2048($4)
mtlo $4
lui $2, 9
sll $0, $0, 0
TAG402:
and $3, $2, $2
divu $2, $3
mult $3, $2
mult $2, $3
TAG403:
div $3, $3
mthi $3
multu $3, $3
sllv $4, $3, $3
TAG404:
lui $1, 5
sll $0, $0, 0
mtlo $4
slt $2, $4, $1
TAG405:
mfhi $1
beq $2, $1, TAG406
div $2, $1
sw $2, 0($2)
TAG406:
srlv $4, $1, $1
mtlo $4
mflo $2
lui $1, 7
TAG407:
blez $1, TAG408
sll $0, $0, 0
bltz $4, TAG408
slti $2, $1, 2
TAG408:
multu $2, $2
mult $2, $2
bltz $2, TAG409
lui $3, 14
TAG409:
lui $3, 12
lui $1, 14
divu $3, $1
bgtz $3, TAG410
TAG410:
mfhi $4
mflo $3
bgtz $1, TAG411
slt $2, $4, $4
TAG411:
lh $1, 0($2)
srlv $3, $1, $2
bne $3, $3, TAG412
mflo $1
TAG412:
sub $4, $1, $1
mthi $4
lbu $2, 0($1)
multu $1, $4
TAG413:
lbu $2, 0($2)
beq $2, $2, TAG414
sllv $1, $2, $2
lh $1, 0($2)
TAG414:
mflo $4
lui $2, 9
bne $1, $2, TAG415
mflo $2
TAG415:
beq $2, $2, TAG416
mtlo $2
blez $2, TAG416
or $3, $2, $2
TAG416:
nor $1, $3, $3
bne $1, $1, TAG417
divu $1, $1
addiu $4, $1, 12
TAG417:
mfhi $2
lui $1, 12
mtlo $4
lb $1, 0($4)
TAG418:
lh $3, 0($1)
sb $1, 0($3)
multu $3, $1
mult $1, $3
TAG419:
or $4, $3, $3
mflo $4
mult $4, $3
lbu $2, 0($4)
TAG420:
bne $2, $2, TAG421
lbu $3, 0($2)
bltz $2, TAG421
addi $2, $2, 5
TAG421:
mthi $2
div $2, $2
mtlo $2
mfhi $1
TAG422:
lui $2, 1
mthi $1
bgtz $1, TAG423
mfhi $2
TAG423:
lh $3, 0($2)
beq $3, $2, TAG424
mthi $3
and $1, $3, $3
TAG424:
sw $1, 0($1)
srl $3, $1, 12
mtlo $3
lh $3, 0($1)
TAG425:
multu $3, $3
mult $3, $3
sw $3, 0($3)
beq $3, $3, TAG426
TAG426:
multu $3, $3
lui $4, 7
blez $4, TAG427
sll $0, $0, 0
TAG427:
bltz $1, TAG428
mtlo $1
lh $1, 0($1)
lb $4, 0($1)
TAG428:
lb $3, 0($4)
mthi $4
lui $1, 6
mthi $1
TAG429:
sll $0, $0, 0
lui $2, 11
sltiu $1, $4, 5
sw $2, 0($4)
TAG430:
bgtz $1, TAG431
div $1, $1
lw $2, 0($1)
slt $1, $2, $1
TAG431:
lb $4, 0($1)
bgez $1, TAG432
sw $4, 0($4)
and $4, $4, $4
TAG432:
lh $3, 0($4)
mthi $4
lui $3, 13
bltz $3, TAG433
TAG433:
sll $0, $0, 0
lui $3, 11
divu $3, $3
mtlo $3
TAG434:
bgez $3, TAG435
lui $3, 15
divu $3, $3
divu $3, $3
TAG435:
divu $3, $3
beq $3, $3, TAG436
mult $3, $3
bne $3, $3, TAG436
TAG436:
lui $1, 5
and $3, $1, $3
sll $0, $0, 0
lui $2, 4
TAG437:
beq $2, $2, TAG438
sll $0, $0, 0
bltz $2, TAG438
lb $4, 0($2)
TAG438:
multu $4, $4
multu $4, $4
bne $4, $4, TAG439
lw $1, 0($4)
TAG439:
lui $3, 9
lbu $2, 0($1)
lui $3, 9
mfhi $4
TAG440:
sllv $2, $4, $4
bltz $4, TAG441
addiu $2, $4, 8
bne $2, $4, TAG441
TAG441:
div $2, $2
subu $2, $2, $2
lui $4, 7
multu $4, $2
TAG442:
lui $1, 6
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG443:
andi $4, $3, 13
lhu $4, 0($4)
beq $3, $4, TAG444
multu $4, $3
TAG444:
multu $4, $4
lui $4, 8
mthi $4
sll $0, $0, 0
TAG445:
xor $2, $1, $1
srlv $1, $1, $2
sll $0, $0, 0
beq $1, $1, TAG446
TAG446:
xor $2, $1, $1
lui $2, 7
mtlo $2
sll $0, $0, 0
TAG447:
addiu $2, $2, 5
sra $4, $2, 14
addu $2, $2, $2
mthi $2
TAG448:
beq $2, $2, TAG449
sra $1, $2, 13
sw $1, 0($2)
bne $1, $2, TAG449
TAG449:
sw $1, 0($1)
lui $3, 5
xor $4, $3, $1
multu $1, $3
TAG450:
bgez $4, TAG451
mult $4, $4
sh $4, 0($4)
multu $4, $4
TAG451:
mthi $4
sll $0, $0, 0
addiu $1, $4, 6
mthi $1
TAG452:
sll $0, $0, 0
mtlo $1
bgtz $1, TAG453
srl $4, $1, 15
TAG453:
div $4, $4
beq $4, $4, TAG454
sh $4, 0($4)
mthi $4
TAG454:
bne $4, $4, TAG455
divu $4, $4
bgtz $4, TAG455
lui $3, 8
TAG455:
mflo $2
addu $4, $2, $2
sh $3, 0($4)
lui $2, 0
TAG456:
mflo $2
mfhi $1
beq $1, $2, TAG457
lw $3, 0($1)
TAG457:
sw $3, 0($3)
mfhi $2
bltz $3, TAG458
sll $3, $3, 9
TAG458:
sll $4, $3, 0
sltiu $1, $3, 12
sh $3, 0($3)
sh $1, 0($3)
TAG459:
lui $2, 7
lui $1, 12
sll $0, $0, 0
mfhi $3
TAG460:
bgez $3, TAG461
sltu $2, $3, $3
bne $2, $2, TAG461
sw $2, 0($3)
TAG461:
addu $4, $2, $2
subu $3, $2, $4
sb $3, 0($2)
bgez $3, TAG462
TAG462:
lui $3, 12
xor $3, $3, $3
subu $3, $3, $3
lui $1, 13
TAG463:
mthi $1
div $1, $1
mflo $1
srav $2, $1, $1
TAG464:
addiu $2, $2, 11
slti $2, $2, 15
bne $2, $2, TAG465
multu $2, $2
TAG465:
blez $2, TAG466
sb $2, 0($2)
bne $2, $2, TAG466
slti $2, $2, 15
TAG466:
sb $2, 0($2)
slt $4, $2, $2
mfhi $4
lui $1, 13
TAG467:
sll $0, $0, 0
lui $3, 14
xor $1, $3, $1
mtlo $1
TAG468:
sll $0, $0, 0
mfhi $4
lhu $1, 0($4)
bgtz $1, TAG469
TAG469:
slti $4, $1, 7
mult $1, $4
bgez $1, TAG470
mfhi $1
TAG470:
sb $1, 0($1)
ori $4, $1, 9
mthi $1
sb $4, 0($1)
TAG471:
divu $4, $4
lb $2, 0($4)
bne $4, $2, TAG472
addu $3, $4, $2
TAG472:
sh $3, 0($3)
beq $3, $3, TAG473
sra $2, $3, 14
lbu $1, 0($3)
TAG473:
bltz $1, TAG474
multu $1, $1
mthi $1
xori $1, $1, 10
TAG474:
bne $1, $1, TAG475
lui $4, 7
slt $4, $4, $4
lui $3, 6
TAG475:
slt $3, $3, $3
beq $3, $3, TAG476
sb $3, 0($3)
lui $1, 3
TAG476:
mthi $1
mfhi $3
sh $1, 0($1)
div $1, $3
TAG477:
lui $1, 6
mtlo $1
div $1, $1
sll $0, $0, 0
TAG478:
sll $0, $0, 0
bgez $1, TAG479
mtlo $1
subu $1, $1, $1
TAG479:
sll $0, $0, 0
lui $1, 4
sra $4, $1, 13
lui $1, 4
TAG480:
mthi $1
lui $2, 1
mthi $2
divu $2, $2
TAG481:
multu $2, $2
mtlo $2
mult $2, $2
bgez $2, TAG482
TAG482:
sll $0, $0, 0
sltu $1, $2, $2
sb $1, 0($1)
blez $1, TAG483
TAG483:
sltiu $2, $1, 2
beq $1, $1, TAG484
sb $1, 0($1)
mfhi $3
TAG484:
mtlo $3
mfhi $2
addiu $1, $2, 6
lhu $1, 0($3)
TAG485:
xor $3, $1, $1
lhu $2, 0($1)
mtlo $1
sh $1, 0($3)
TAG486:
mthi $2
sh $2, 0($2)
beq $2, $2, TAG487
lui $3, 7
TAG487:
slt $3, $3, $3
addi $1, $3, 9
bne $3, $1, TAG488
xori $3, $3, 15
TAG488:
lbu $1, 0($3)
bltz $1, TAG489
mtlo $1
mfhi $2
TAG489:
multu $2, $2
mult $2, $2
lh $2, 0($2)
mthi $2
TAG490:
div $2, $2
mflo $2
divu $2, $2
bne $2, $2, TAG491
TAG491:
div $2, $2
mtlo $2
sb $2, 0($2)
mthi $2
TAG492:
bne $2, $2, TAG493
lui $2, 4
mfhi $2
blez $2, TAG493
TAG493:
slti $1, $2, 13
sltu $3, $2, $2
mtlo $2
bne $1, $1, TAG494
TAG494:
sb $3, 0($3)
lui $1, 3
lui $3, 14
mfhi $3
TAG495:
beq $3, $3, TAG496
lb $1, 0($3)
div $1, $3
mfhi $2
TAG496:
beq $2, $2, TAG497
sb $2, 0($2)
sltu $2, $2, $2
lui $2, 6
TAG497:
sb $2, 0($2)
mtlo $2
lui $4, 7
bne $2, $4, TAG498
TAG498:
lui $3, 5
lui $4, 6
sll $0, $0, 0
sra $3, $4, 5
TAG499:
bgtz $3, TAG500
addiu $2, $3, 13
div $3, $2
lui $3, 5
TAG500:
mflo $3
bltz $3, TAG501
ori $3, $3, 11
multu $3, $3
TAG501:
mult $3, $3
addiu $3, $3, 6
lui $1, 12
sll $0, $0, 0
TAG502:
sll $0, $0, 0
multu $4, $4
slt $1, $4, $4
sltiu $2, $1, 0
TAG503:
srav $3, $2, $2
lhu $4, 0($3)
lui $2, 0
bne $3, $3, TAG504
TAG504:
mfhi $4
mult $2, $4
mfhi $4
sb $4, 0($4)
TAG505:
bltz $4, TAG506
mfhi $1
bne $1, $4, TAG506
sh $4, 0($4)
TAG506:
lw $2, 0($1)
lui $4, 3
mult $4, $1
lui $3, 4
TAG507:
sll $0, $0, 0
nor $4, $3, $3
mtlo $3
sll $0, $0, 0
TAG508:
lui $1, 3
mfhi $1
slt $1, $4, $1
srl $2, $1, 8
TAG509:
mthi $2
mtlo $2
beq $2, $2, TAG510
sh $2, 0($2)
TAG510:
lui $2, 6
sll $0, $0, 0
mthi $2
mfhi $3
TAG511:
mflo $1
mflo $1
bne $3, $1, TAG512
lui $4, 4
TAG512:
mflo $1
lb $4, 0($1)
lb $1, 0($1)
mfhi $2
TAG513:
sllv $2, $2, $2
slt $1, $2, $2
slti $4, $2, 4
slt $3, $1, $4
TAG514:
mthi $3
sw $3, 0($3)
bne $3, $3, TAG515
sb $3, 0($3)
TAG515:
bltz $3, TAG516
multu $3, $3
mflo $3
bne $3, $3, TAG516
TAG516:
mtlo $3
mult $3, $3
sllv $1, $3, $3
lhu $3, 0($1)
TAG517:
sub $3, $3, $3
ori $2, $3, 15
bgtz $3, TAG518
sllv $1, $2, $2
TAG518:
or $2, $1, $1
lui $1, 2
beq $1, $1, TAG519
sllv $2, $2, $1
TAG519:
mthi $2
sll $0, $0, 0
and $4, $2, $2
sll $0, $0, 0
TAG520:
subu $2, $1, $1
subu $2, $2, $2
sh $1, 0($2)
addi $3, $2, 11
TAG521:
sltiu $3, $3, 11
bgtz $3, TAG522
lui $4, 0
lui $2, 1
TAG522:
mfhi $4
bgez $4, TAG523
divu $2, $2
mtlo $2
TAG523:
sll $0, $0, 0
multu $3, $4
bgez $3, TAG524
lui $3, 14
TAG524:
multu $3, $3
bgtz $3, TAG525
sll $0, $0, 0
mthi $3
TAG525:
mthi $3
sll $0, $0, 0
div $3, $3
sllv $3, $3, $3
TAG526:
bltz $3, TAG527
mfhi $4
sllv $2, $4, $4
addu $1, $3, $2
TAG527:
mthi $1
mtlo $1
mult $1, $1
bgtz $1, TAG528
TAG528:
sll $0, $0, 0
mult $1, $1
div $1, $1
mfhi $1
TAG529:
lbu $1, 0($1)
blez $1, TAG530
mult $1, $1
lw $1, 0($1)
TAG530:
srav $2, $1, $1
bltz $1, TAG531
mflo $1
beq $1, $1, TAG531
TAG531:
mthi $1
multu $1, $1
mtlo $1
bltz $1, TAG532
TAG532:
mtlo $1
lui $1, 14
lui $1, 9
bne $1, $1, TAG533
TAG533:
mult $1, $1
mult $1, $1
lui $1, 10
mflo $2
TAG534:
multu $2, $2
mfhi $2
mflo $4
lh $4, 0($2)
TAG535:
lui $2, 15
blez $4, TAG536
lhu $4, 0($4)
lbu $2, 0($2)
TAG536:
mtlo $2
bgez $2, TAG537
multu $2, $2
bgez $2, TAG537
TAG537:
mfhi $3
mthi $2
sb $3, -225($3)
blez $2, TAG538
TAG538:
div $3, $3
beq $3, $3, TAG539
sb $3, -225($3)
mfhi $2
TAG539:
bgtz $2, TAG540
sll $0, $0, 0
and $2, $2, $2
bne $2, $2, TAG540
TAG540:
mthi $2
bltz $2, TAG541
sll $0, $0, 0
mflo $3
TAG541:
div $3, $3
mthi $3
bgtz $3, TAG542
srav $4, $3, $3
TAG542:
xor $3, $4, $4
bgtz $4, TAG543
slti $2, $4, 2
lbu $4, 0($3)
TAG543:
bgez $4, TAG544
divu $4, $4
lui $2, 1
mfhi $4
TAG544:
and $2, $4, $4
lhu $1, -225($2)
sltu $1, $2, $4
mflo $1
TAG545:
and $1, $1, $1
beq $1, $1, TAG546
multu $1, $1
sllv $3, $1, $1
TAG546:
mtlo $3
srlv $2, $3, $3
mflo $3
sra $4, $3, 10
TAG547:
mult $4, $4
multu $4, $4
beq $4, $4, TAG548
mult $4, $4
TAG548:
lbu $1, 0($4)
xor $4, $1, $1
bltz $4, TAG549
lui $2, 12
TAG549:
mtlo $2
lui $1, 3
lui $1, 6
srl $2, $2, 10
TAG550:
sb $2, -768($2)
mflo $1
sltiu $2, $1, 4
bgtz $2, TAG551
TAG551:
lui $3, 6
sra $2, $2, 13
blez $2, TAG552
sll $0, $0, 0
TAG552:
bne $3, $3, TAG553
srlv $4, $3, $3
sll $0, $0, 0
mult $4, $3
TAG553:
addiu $1, $4, 15
mflo $4
bne $4, $4, TAG554
mfhi $1
TAG554:
mflo $4
sh $4, 0($4)
mult $1, $4
bgez $1, TAG555
TAG555:
mthi $4
sb $4, 0($4)
lui $3, 2
and $2, $4, $4
TAG556:
mult $2, $2
mflo $2
sb $2, 0($2)
bne $2, $2, TAG557
TAG557:
mtlo $2
sw $2, 0($2)
nor $3, $2, $2
sw $3, 0($2)
TAG558:
div $3, $3
div $3, $3
beq $3, $3, TAG559
sll $2, $3, 4
TAG559:
sw $2, 16($2)
lui $1, 2
slti $2, $2, 10
sll $3, $2, 5
TAG560:
mthi $3
lh $2, 0($3)
lbu $3, 0($2)
mtlo $2
TAG561:
mthi $3
blez $3, TAG562
div $3, $3
addiu $2, $3, 6
TAG562:
mfhi $2
lh $4, 0($2)
lbu $1, 0($2)
sb $1, -240($1)
TAG563:
mfhi $1
lui $4, 7
lbu $1, 0($1)
sll $2, $1, 8
TAG564:
xori $3, $2, 2
mflo $4
multu $3, $3
divu $4, $3
TAG565:
lui $3, 2
bltz $3, TAG566
lb $1, 0($4)
andi $4, $3, 9
TAG566:
sh $4, 0($4)
bltz $4, TAG567
mthi $4
multu $4, $4
TAG567:
bne $4, $4, TAG568
mult $4, $4
mfhi $1
bgez $1, TAG568
TAG568:
mflo $3
mult $3, $1
addu $2, $3, $1
sltiu $3, $3, 5
TAG569:
bltz $3, TAG570
lb $1, 0($3)
bgtz $3, TAG570
sll $1, $3, 9
TAG570:
lui $2, 15
mult $1, $2
sra $2, $1, 0
bne $2, $1, TAG571
TAG571:
sll $0, $0, 0
lw $3, -512($2)
mfhi $4
lui $4, 1
TAG572:
sll $0, $0, 0
or $3, $4, $4
mfhi $1
andi $4, $4, 1
TAG573:
sw $4, 0($4)
beq $4, $4, TAG574
lbu $3, 0($4)
sw $4, 0($3)
TAG574:
addi $3, $3, 2
lui $4, 7
sb $3, 0($3)
mult $4, $3
TAG575:
sll $0, $0, 0
lbu $3, 0($1)
xori $1, $3, 6
sra $1, $1, 9
TAG576:
lui $2, 2
and $2, $1, $2
sltu $3, $1, $1
beq $3, $1, TAG577
TAG577:
sb $3, 0($3)
lh $2, 0($3)
lw $2, 0($3)
bgez $2, TAG578
TAG578:
lui $4, 15
divu $2, $2
lui $3, 7
xori $3, $3, 1
TAG579:
divu $3, $3
beq $3, $3, TAG580
sll $0, $0, 0
mtlo $3
TAG580:
mtlo $2
mtlo $2
beq $2, $2, TAG581
sra $4, $2, 9
TAG581:
mfhi $4
lb $3, 0($4)
lhu $4, 0($3)
sw $4, 0($4)
TAG582:
mfhi $1
sb $1, 0($4)
mult $1, $4
lui $2, 5
TAG583:
mflo $3
slti $3, $3, 6
lui $3, 12
mult $3, $3
TAG584:
sllv $1, $3, $3
blez $3, TAG585
sll $0, $0, 0
beq $3, $3, TAG585
TAG585:
sll $0, $0, 0
mtlo $3
srav $4, $3, $3
sll $0, $0, 0
TAG586:
addiu $4, $4, 13
subu $3, $4, $4
sll $4, $4, 3
mtlo $4
TAG587:
bgtz $4, TAG588
mtlo $4
sw $4, 0($4)
andi $4, $4, 15
TAG588:
lui $1, 10
nor $4, $1, $4
addu $2, $4, $4
mflo $2
TAG589:
lui $4, 15
sll $0, $0, 0
sll $0, $0, 0
nor $2, $1, $1
TAG590:
mfhi $1
sll $0, $0, 0
mflo $4
mfhi $4
TAG591:
divu $4, $4
beq $4, $4, TAG592
sb $4, -144($4)
bgez $4, TAG592
TAG592:
sll $0, $0, 0
bgez $2, TAG593
srav $3, $4, $2
mflo $4
TAG593:
bgtz $4, TAG594
mthi $4
lui $1, 4
sh $4, 0($4)
TAG594:
beq $1, $1, TAG595
multu $1, $1
lui $4, 9
lui $4, 13
TAG595:
mthi $4
multu $4, $4
lb $1, 0($4)
lb $3, 0($4)
TAG596:
lui $4, 10
beq $4, $3, TAG597
mtlo $3
bne $3, $3, TAG597
TAG597:
sll $0, $0, 0
beq $4, $2, TAG598
mfhi $1
lui $3, 14
TAG598:
lui $3, 9
sll $0, $0, 0
srav $3, $2, $3
sll $0, $0, 0
TAG599:
mtlo $1
blez $1, TAG600
sh $1, 0($1)
lh $4, 0($1)
TAG600:
sll $0, $0, 0
beq $4, $4, TAG601
sll $0, $0, 0
div $4, $4
TAG601:
blez $4, TAG602
mflo $1
mflo $3
mthi $1
TAG602:
and $2, $3, $3
bne $3, $3, TAG603
mthi $3
sh $2, 0($3)
TAG603:
mfhi $4
sh $4, 0($4)
sb $2, 0($4)
mflo $2
TAG604:
beq $2, $2, TAG605
lh $4, 0($2)
or $1, $2, $4
sll $1, $2, 10
TAG605:
bltz $1, TAG606
sllv $4, $1, $1
sw $4, 0($4)
sb $1, 0($1)
TAG606:
mtlo $4
lh $4, 0($4)
mtlo $4
bne $4, $4, TAG607
TAG607:
lui $1, 9
mflo $1
sltiu $2, $1, 2
bne $1, $4, TAG608
TAG608:
sb $2, 0($2)
lbu $1, 0($2)
srlv $3, $2, $1
lb $3, 0($1)
TAG609:
lb $1, 0($3)
mthi $3
lui $1, 6
lui $3, 9
TAG610:
mtlo $3
beq $3, $3, TAG611
ori $3, $3, 10
bgtz $3, TAG611
TAG611:
mflo $2
srlv $4, $2, $3
mflo $1
mtlo $4
TAG612:
multu $1, $1
srl $3, $1, 4
subu $4, $1, $1
blez $4, TAG613
TAG613:
mult $4, $4
sh $4, 0($4)
bgtz $4, TAG614
mtlo $4
TAG614:
mtlo $4
mflo $4
lb $2, 0($4)
sub $4, $4, $4
TAG615:
mtlo $4
sh $4, 0($4)
mtlo $4
mflo $4
TAG616:
lbu $2, 0($4)
mflo $1
sh $2, 0($4)
sh $1, 0($1)
TAG617:
sw $1, 0($1)
blez $1, TAG618
sra $3, $1, 8
mult $3, $1
TAG618:
lui $1, 2
lbu $1, 0($3)
beq $1, $1, TAG619
lui $1, 3
TAG619:
subu $4, $1, $1
mthi $1
lh $4, 0($4)
sb $4, 0($4)
TAG620:
sb $4, 0($4)
mfhi $3
sll $0, $0, 0
sll $0, $0, 0
TAG621:
mult $2, $2
addiu $3, $2, 13
slti $1, $2, 0
mfhi $4
TAG622:
mtlo $4
mthi $4
andi $1, $4, 8
multu $1, $4
TAG623:
lui $3, 9
sll $0, $0, 0
mtlo $3
mfhi $1
TAG624:
mtlo $1
sb $1, 0($1)
lui $1, 14
mthi $1
TAG625:
bgtz $1, TAG626
multu $1, $1
lb $2, 0($1)
mflo $3
TAG626:
mult $3, $3
sll $0, $0, 0
sltiu $3, $2, 10
mthi $3
TAG627:
lui $4, 5
div $3, $4
sll $0, $0, 0
divu $4, $4
TAG628:
lui $3, 3
mtlo $3
lui $1, 14
addu $1, $4, $4
TAG629:
addu $1, $1, $1
bne $1, $1, TAG630
mult $1, $1
divu $1, $1
TAG630:
sll $0, $0, 0
lui $2, 5
bltz $1, TAG631
mtlo $1
TAG631:
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG632
divu $4, $4
TAG632:
sll $0, $0, 0
lui $1, 12
addu $4, $4, $4
mthi $4
TAG633:
srav $3, $4, $4
andi $1, $4, 9
bgez $4, TAG634
lui $2, 2
TAG634:
bgez $2, TAG635
sltu $4, $2, $2
mfhi $3
bne $2, $3, TAG635
TAG635:
sll $0, $0, 0
mult $3, $3
mflo $4
mflo $1
TAG636:
nor $1, $1, $1
lui $4, 14
slti $2, $1, 1
sw $4, 1($1)
TAG637:
slti $2, $2, 13
subu $3, $2, $2
sw $2, 0($3)
mflo $1
TAG638:
sw $1, 0($1)
sub $3, $1, $1
sra $4, $1, 5
sh $4, 0($4)
TAG639:
mult $4, $4
mult $4, $4
beq $4, $4, TAG640
mtlo $4
TAG640:
mult $4, $4
bgez $4, TAG641
mflo $1
sh $4, 0($1)
TAG641:
mflo $2
bltz $2, TAG642
mfhi $4
lh $4, 0($4)
TAG642:
multu $4, $4
bne $4, $4, TAG643
lui $4, 6
blez $4, TAG643
TAG643:
mtlo $4
mthi $4
mtlo $4
mthi $4
TAG644:
bne $4, $4, TAG645
multu $4, $4
mflo $2
bgez $2, TAG645
TAG645:
mfhi $2
beq $2, $2, TAG646
mfhi $1
lui $4, 8
TAG646:
addiu $4, $4, 15
sll $0, $0, 0
mtlo $4
lui $2, 7
TAG647:
div $2, $2
mflo $2
slti $1, $2, 6
mflo $1
TAG648:
mfhi $4
slti $1, $4, 7
mthi $1
sb $4, 0($4)
TAG649:
sb $1, 0($1)
lb $4, 0($1)
addiu $4, $4, 5
div $1, $4
TAG650:
ori $3, $4, 14
and $2, $4, $4
mflo $4
slti $1, $4, 1
TAG651:
mult $1, $1
mthi $1
sltu $4, $1, $1
nor $3, $4, $1
TAG652:
lui $2, 10
bne $3, $2, TAG653
mflo $1
sw $3, 0($3)
TAG653:
slti $3, $1, 0
beq $3, $3, TAG654
andi $1, $1, 4
bgtz $1, TAG654
TAG654:
sw $1, 0($1)
mthi $1
lui $4, 13
sh $1, 0($1)
TAG655:
bne $4, $4, TAG656
lui $3, 2
beq $4, $4, TAG656
sll $0, $0, 0
TAG656:
mflo $1
mflo $3
mfhi $1
and $4, $1, $2
TAG657:
sh $4, 0($4)
lui $3, 12
addu $2, $3, $4
sll $0, $0, 0
TAG658:
addi $2, $4, 12
srlv $4, $2, $2
mult $4, $2
bgtz $2, TAG659
TAG659:
mthi $4
lhu $1, 0($4)
or $2, $1, $1
slt $3, $1, $1
TAG660:
bgez $3, TAG661
srl $3, $3, 15
andi $1, $3, 13
multu $3, $1
TAG661:
multu $1, $1
sltu $3, $1, $1
lbu $3, 0($1)
lui $4, 15
TAG662:
div $4, $4
mtlo $4
divu $4, $4
blez $4, TAG663
TAG663:
lui $2, 13
mflo $1
beq $4, $2, TAG664
lui $1, 4
TAG664:
lui $1, 10
bgtz $1, TAG665
sll $0, $0, 0
mflo $3
TAG665:
lw $1, 0($3)
bne $3, $1, TAG666
mfhi $4
mtlo $1
TAG666:
mtlo $4
lbu $3, 0($4)
multu $4, $3
ori $4, $4, 2
TAG667:
bne $4, $4, TAG668
mtlo $4
lb $2, 0($4)
bgtz $4, TAG668
TAG668:
xor $1, $2, $2
mfhi $1
sw $1, 0($2)
lui $2, 11
TAG669:
mflo $3
mflo $1
mthi $3
bltz $2, TAG670
TAG670:
mflo $2
lui $3, 10
lui $3, 6
bne $2, $3, TAG671
TAG671:
sra $1, $3, 6
lb $4, -6144($1)
mtlo $4
mthi $3
TAG672:
beq $4, $4, TAG673
lbu $1, 0($4)
srl $3, $4, 13
bltz $4, TAG673
TAG673:
andi $4, $3, 1
bgtz $3, TAG674
andi $3, $4, 5
beq $3, $4, TAG674
TAG674:
lbu $3, 0($3)
mult $3, $3
multu $3, $3
lui $2, 0
TAG675:
mthi $2
lui $3, 0
bne $3, $3, TAG676
mthi $2
TAG676:
blez $3, TAG677
sub $1, $3, $3
mfhi $3
nor $1, $1, $1
TAG677:
mtlo $1
xori $4, $1, 3
sltiu $3, $1, 5
bne $4, $3, TAG678
TAG678:
mtlo $3
mfhi $4
mult $3, $4
beq $3, $3, TAG679
TAG679:
lui $3, 14
slt $2, $3, $4
mult $3, $4
mfhi $1
TAG680:
nor $3, $1, $1
slti $1, $3, 14
sb $3, 1($3)
mfhi $3
TAG681:
lb $2, 0($3)
div $3, $2
mflo $2
multu $2, $3
TAG682:
lui $3, 1
xor $4, $2, $3
xori $4, $3, 12
bgez $3, TAG683
TAG683:
mthi $4
bltz $4, TAG684
lui $2, 7
bne $2, $2, TAG684
TAG684:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG685:
sll $0, $0, 0
sll $0, $0, 0
bgtz $4, TAG686
mtlo $4
TAG686:
bgez $4, TAG687
divu $4, $4
mflo $2
mfhi $2
TAG687:
subu $4, $2, $2
lui $2, 3
sh $4, 0($4)
addu $1, $4, $2
TAG688:
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG689:
and $4, $4, $4
mult $4, $4
blez $4, TAG690
mult $4, $4
TAG690:
xor $2, $4, $4
mflo $2
mfhi $2
addiu $3, $2, 9
TAG691:
mthi $3
mtlo $3
lui $1, 2
bltz $3, TAG692
TAG692:
subu $1, $1, $1
lh $3, 0($1)
lhu $1, 0($1)
lh $1, 0($3)
TAG693:
sh $1, 0($1)
mfhi $3
mthi $3
beq $1, $3, TAG694
TAG694:
mthi $3
sltiu $3, $3, 1
lui $4, 13
multu $3, $3
TAG695:
multu $4, $4
bne $4, $4, TAG696
sll $0, $0, 0
mflo $2
TAG696:
sw $2, 0($2)
srav $1, $2, $2
sltiu $1, $2, 5
multu $1, $1
TAG697:
lui $1, 12
lui $4, 6
beq $4, $4, TAG698
lui $2, 9
TAG698:
mtlo $2
and $3, $2, $2
mflo $3
bgez $2, TAG699
TAG699:
addu $4, $3, $3
mthi $4
sll $0, $0, 0
bgtz $3, TAG700
TAG700:
sll $4, $4, 9
mfhi $3
mfhi $2
xor $1, $2, $4
TAG701:
bne $1, $1, TAG702
sll $0, $0, 0
mfhi $2
beq $1, $1, TAG702
TAG702:
mtlo $2
slti $3, $2, 4
slti $3, $3, 6
lbu $3, 0($3)
TAG703:
bne $3, $3, TAG704
mflo $2
bgtz $2, TAG704
sllv $3, $2, $3
TAG704:
bgez $3, TAG705
sltiu $1, $3, 10
beq $1, $3, TAG705
mthi $3
TAG705:
mthi $1
blez $1, TAG706
ori $1, $1, 1
beq $1, $1, TAG706
TAG706:
lui $3, 4
bgtz $1, TAG707
srav $2, $1, $3
sb $3, 0($1)
TAG707:
sltiu $2, $2, 8
multu $2, $2
mflo $2
bne $2, $2, TAG708
TAG708:
lui $4, 9
blez $2, TAG709
sll $0, $0, 0
xor $1, $4, $2
TAG709:
bltz $1, TAG710
sll $0, $0, 0
divu $2, $1
mfhi $3
TAG710:
addu $4, $3, $3
mult $3, $3
mfhi $4
mflo $3
TAG711:
lui $1, 4
lui $1, 5
sll $0, $0, 0
lbu $3, 0($3)
TAG712:
lui $4, 13
mthi $3
mflo $3
mthi $4
TAG713:
lui $1, 11
div $3, $1
srl $2, $3, 5
sll $0, $0, 0
TAG714:
sltu $2, $2, $2
mflo $2
lh $3, 0($2)
sw $2, 0($2)
TAG715:
mthi $3
multu $3, $3
addiu $1, $3, 2
bltz $1, TAG716
TAG716:
lhu $2, 0($1)
lbu $1, 0($1)
lui $4, 3
lbu $1, 0($2)
TAG717:
beq $1, $1, TAG718
mflo $3
mthi $3
mflo $4
TAG718:
lui $4, 2
andi $2, $4, 10
bne $2, $4, TAG719
mtlo $4
TAG719:
mult $2, $2
and $3, $2, $2
lui $2, 6
addu $2, $2, $2
TAG720:
lui $1, 12
sra $4, $2, 13
addiu $1, $2, 12
mthi $2
TAG721:
div $1, $1
lui $3, 14
sll $0, $0, 0
sll $0, $0, 0
TAG722:
mtlo $1
divu $1, $1
mfhi $1
lbu $3, 0($1)
TAG723:
bne $3, $3, TAG724
mtlo $3
mult $3, $3
mtlo $3
TAG724:
mfhi $1
bgez $1, TAG725
srav $2, $1, $3
mthi $1
TAG725:
mfhi $2
sll $2, $2, 15
mult $2, $2
sltiu $2, $2, 7
TAG726:
mflo $2
sw $2, 0($2)
andi $1, $2, 5
mtlo $1
TAG727:
add $2, $1, $1
bgtz $2, TAG728
lhu $4, 0($2)
or $4, $2, $2
TAG728:
xori $4, $4, 9
mthi $4
mflo $3
addiu $4, $4, 12
TAG729:
sb $4, 0($4)
ori $1, $4, 1
mthi $4
mfhi $4
TAG730:
lui $4, 1
mthi $4
and $2, $4, $4
sra $2, $2, 10
TAG731:
lui $1, 5
mtlo $1
mtlo $2
beq $1, $1, TAG732
TAG732:
srl $4, $1, 6
sra $2, $4, 5
slti $3, $4, 11
bgtz $3, TAG733
TAG733:
mflo $4
bltz $3, TAG734
mult $4, $3
srlv $2, $3, $4
TAG734:
lh $4, 0($2)
mult $4, $2
beq $2, $4, TAG735
sltiu $2, $2, 8
TAG735:
lbu $4, 0($2)
multu $4, $4
beq $4, $4, TAG736
mtlo $4
TAG736:
lbu $1, 0($4)
multu $4, $1
lbu $3, 0($1)
mthi $3
TAG737:
beq $3, $3, TAG738
mflo $2
mtlo $2
mult $3, $3
TAG738:
bltz $2, TAG739
sh $2, 0($2)
blez $2, TAG739
mult $2, $2
TAG739:
mtlo $2
lbu $3, 0($2)
mfhi $1
mflo $3
TAG740:
mfhi $1
sb $3, 0($1)
multu $3, $3
lbu $4, 0($1)
TAG741:
bgez $4, TAG742
srav $4, $4, $4
bne $4, $4, TAG742
lui $2, 4
TAG742:
srav $2, $2, $2
sh $2, 0($2)
srlv $4, $2, $2
blez $2, TAG743
TAG743:
srav $1, $4, $4
lui $1, 9
blez $4, TAG744
mult $4, $4
TAG744:
xor $3, $1, $1
multu $1, $3
lui $3, 3
srl $4, $1, 1
TAG745:
mult $4, $4
blez $4, TAG746
sll $0, $0, 0
sll $0, $0, 0
TAG746:
divu $3, $3
mflo $1
bgtz $1, TAG747
lui $2, 6
TAG747:
bgez $2, TAG748
slt $2, $2, $2
blez $2, TAG748
mfhi $3
TAG748:
subu $4, $3, $3
lui $4, 15
mfhi $3
bgez $3, TAG749
TAG749:
lh $4, 0($3)
multu $4, $4
lui $3, 14
bgez $3, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop