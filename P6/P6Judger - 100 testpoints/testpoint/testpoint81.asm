ori $1, $0, 0
ori $2, $0, 12
ori $3, $0, 14
ori $4, $0, 3
sw $3, 0($0)
sw $2, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $2, 44($0)
sw $4, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $3, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $4, 76($0)
sw $3, 80($0)
sw $4, 84($0)
sw $4, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $2, 100($0)
sw $3, 104($0)
sw $4, 108($0)
sw $4, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $2, 124($0)
bgez $2, TAG1
sw $2, 0($2)
bgez $2, TAG1
mtlo $2
TAG1:
sh $2, 0($2)
slti $1, $2, 2
sb $2, 0($2)
bgtz $1, TAG2
TAG2:
lui $3, 12
sb $3, 0($1)
sll $0, $0, 0
mfhi $1
TAG3:
lui $4, 5
beq $1, $4, TAG4
mflo $3
sll $0, $0, 0
TAG4:
sw $1, 0($1)
blez $1, TAG5
mthi $1
sltiu $1, $1, 0
TAG5:
mflo $1
mfhi $3
lh $1, 0($1)
beq $3, $1, TAG6
TAG6:
mfhi $3
sh $3, 0($1)
addiu $1, $1, 9
mfhi $2
TAG7:
mtlo $2
lh $4, 0($2)
bgtz $4, TAG8
lw $1, 0($4)
TAG8:
andi $4, $1, 7
mfhi $2
bltz $1, TAG9
lhu $3, 0($2)
TAG9:
lbu $4, 0($3)
and $3, $4, $3
sra $4, $4, 5
lui $4, 11
TAG10:
lui $1, 8
sll $0, $0, 0
blez $2, TAG11
sltiu $3, $2, 6
TAG11:
lb $2, 0($3)
subu $2, $3, $2
sllv $1, $2, $2
sltu $3, $3, $2
TAG12:
mult $3, $3
mtlo $3
mthi $3
sltiu $1, $3, 1
TAG13:
sb $1, 0($1)
andi $1, $1, 8
mfhi $2
bltz $2, TAG14
TAG14:
mfhi $3
lui $2, 2
addu $3, $3, $2
subu $4, $3, $2
TAG15:
sll $2, $4, 14
or $4, $2, $4
sb $4, 0($4)
bgez $4, TAG16
TAG16:
lui $2, 10
sll $1, $2, 3
lui $1, 1
mfhi $1
TAG17:
multu $1, $1
mflo $3
multu $3, $1
lui $4, 11
TAG18:
lui $2, 3
sll $0, $0, 0
beq $2, $2, TAG19
sll $4, $4, 11
TAG19:
bgtz $4, TAG20
mflo $1
mtlo $1
sh $1, 0($4)
TAG20:
addi $2, $1, 6
mthi $2
lhu $1, 0($2)
xor $3, $2, $1
TAG21:
mtlo $3
bgez $3, TAG22
multu $3, $3
bne $3, $3, TAG22
TAG22:
divu $3, $3
ori $3, $3, 12
beq $3, $3, TAG23
sh $3, 0($3)
TAG23:
sllv $4, $3, $3
bgez $4, TAG24
mthi $4
lui $4, 14
TAG24:
lui $2, 3
divu $4, $2
lui $2, 14
beq $2, $2, TAG25
TAG25:
lui $1, 1
sll $0, $0, 0
sll $0, $0, 0
slti $4, $2, 2
TAG26:
slti $3, $4, 1
mult $3, $4
sw $4, 0($4)
mtlo $3
TAG27:
srl $4, $3, 7
mtlo $4
ori $3, $3, 8
slt $3, $3, $3
TAG28:
lh $3, 0($3)
sllv $4, $3, $3
slti $1, $4, 5
sh $3, 0($4)
TAG29:
lb $2, 0($1)
sw $1, 0($2)
mthi $2
slt $4, $2, $1
TAG30:
bne $4, $4, TAG31
ori $1, $4, 10
bne $1, $1, TAG31
mfhi $3
TAG31:
andi $4, $3, 6
xor $1, $3, $4
lbu $3, 0($3)
bne $1, $3, TAG32
TAG32:
xori $2, $3, 10
mfhi $3
lui $2, 0
lh $3, 0($2)
TAG33:
mflo $4
lbu $3, 0($4)
sb $4, 0($3)
mthi $3
TAG34:
mult $3, $3
lui $4, 0
lui $3, 3
beq $3, $4, TAG35
TAG35:
sll $1, $3, 7
or $1, $1, $1
mthi $3
mtlo $3
TAG36:
multu $1, $1
beq $1, $1, TAG37
sll $0, $0, 0
sra $4, $1, 2
TAG37:
slti $3, $4, 10
mthi $4
mthi $4
mflo $1
TAG38:
lui $4, 14
slti $2, $4, 4
lui $3, 15
lui $4, 12
TAG39:
lui $2, 13
sll $0, $0, 0
sll $0, $0, 0
mthi $2
TAG40:
and $2, $2, $2
bne $2, $2, TAG41
mfhi $4
sll $0, $0, 0
TAG41:
blez $4, TAG42
sll $0, $0, 0
mflo $1
bne $1, $4, TAG42
TAG42:
mfhi $1
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG43
TAG43:
mtlo $2
nor $1, $2, $2
and $4, $1, $1
srlv $2, $2, $1
TAG44:
sb $2, 0($2)
lui $3, 5
beq $3, $3, TAG45
sh $2, 0($2)
TAG45:
sllv $1, $3, $3
divu $3, $3
sll $0, $0, 0
lui $1, 13
TAG46:
sll $0, $0, 0
mthi $3
sra $1, $3, 13
blez $1, TAG47
TAG47:
mthi $1
mflo $2
xori $3, $2, 8
multu $2, $3
TAG48:
addiu $4, $3, 13
mult $3, $3
addu $4, $4, $4
bgtz $4, TAG49
TAG49:
mfhi $4
lui $3, 12
mtlo $3
sh $3, 0($4)
TAG50:
sll $0, $0, 0
bgtz $3, TAG51
lb $2, 0($2)
mthi $3
TAG51:
multu $2, $2
bltz $2, TAG52
lui $3, 6
bgtz $2, TAG52
TAG52:
sll $0, $0, 0
or $1, $3, $3
mthi $1
mtlo $3
TAG53:
mtlo $1
mult $1, $1
divu $1, $1
sll $0, $0, 0
TAG54:
sll $2, $2, 8
sw $2, 0($2)
sh $2, 0($2)
mult $2, $2
TAG55:
sb $2, 0($2)
lui $3, 3
sllv $3, $3, $3
mthi $3
TAG56:
mfhi $3
mtlo $3
sll $0, $0, 0
blez $1, TAG57
TAG57:
addu $2, $1, $1
beq $1, $2, TAG58
lui $4, 3
subu $4, $2, $1
TAG58:
mult $4, $4
sll $0, $0, 0
bltz $4, TAG59
sltu $3, $4, $4
TAG59:
sll $3, $3, 1
lb $1, 0($3)
srl $3, $3, 8
mthi $3
TAG60:
lw $2, 0($3)
bne $3, $3, TAG61
lh $3, 0($2)
mfhi $1
TAG61:
lbu $1, 0($1)
sw $1, 0($1)
multu $1, $1
xori $4, $1, 5
TAG62:
lui $3, 4
bne $4, $4, TAG63
addu $3, $4, $3
multu $4, $3
TAG63:
blez $3, TAG64
addu $2, $3, $3
div $3, $3
bgtz $2, TAG64
TAG64:
addu $2, $2, $2
addiu $2, $2, 11
sll $0, $0, 0
mflo $3
TAG65:
addu $3, $3, $3
slti $3, $3, 15
beq $3, $3, TAG66
subu $4, $3, $3
TAG66:
srl $1, $4, 4
mfhi $2
bgtz $2, TAG67
multu $2, $4
TAG67:
mult $2, $2
sub $1, $2, $2
srlv $2, $1, $1
mfhi $3
TAG68:
bne $3, $3, TAG69
lw $2, 0($3)
slt $1, $2, $2
beq $3, $3, TAG69
TAG69:
mfhi $4
mthi $1
andi $1, $4, 15
mult $1, $1
TAG70:
mfhi $1
beq $1, $1, TAG71
lui $3, 11
mflo $4
TAG71:
mult $4, $4
sb $4, 0($4)
sra $4, $4, 10
lh $3, 0($4)
TAG72:
bgtz $3, TAG73
mult $3, $3
sh $3, 0($3)
lui $4, 8
TAG73:
lui $1, 0
sltiu $2, $4, 1
divu $4, $4
sll $0, $0, 0
TAG74:
mtlo $2
sh $2, 0($2)
bgtz $2, TAG75
mtlo $2
TAG75:
lui $3, 13
blez $2, TAG76
xori $3, $3, 11
mfhi $3
TAG76:
lui $3, 9
mult $3, $3
bne $3, $3, TAG77
mtlo $3
TAG77:
xori $2, $3, 9
sll $0, $0, 0
lhu $2, 0($1)
sb $2, 0($2)
TAG78:
mthi $2
lh $3, 0($2)
mtlo $2
blez $2, TAG79
TAG79:
xori $4, $3, 6
lhu $3, 0($4)
xori $4, $4, 5
and $1, $3, $3
TAG80:
mfhi $1
xor $1, $1, $1
lw $4, 0($1)
mtlo $1
TAG81:
blez $4, TAG82
multu $4, $4
lw $4, 0($4)
add $4, $4, $4
TAG82:
mfhi $3
sw $4, 0($3)
beq $4, $4, TAG83
mthi $3
TAG83:
add $1, $3, $3
mtlo $3
mtlo $3
mult $3, $1
TAG84:
mflo $2
mult $2, $1
beq $2, $1, TAG85
srl $2, $2, 8
TAG85:
mtlo $2
beq $2, $2, TAG86
mflo $1
beq $1, $1, TAG86
TAG86:
lh $4, 0($1)
lw $2, 0($1)
mthi $2
ori $2, $2, 15
TAG87:
mfhi $1
mfhi $4
sh $2, 0($1)
bltz $4, TAG88
TAG88:
lui $4, 11
srl $4, $4, 14
mflo $2
srl $1, $2, 2
TAG89:
bltz $1, TAG90
sra $3, $1, 14
srav $2, $1, $3
sb $2, 0($2)
TAG90:
bgtz $2, TAG91
mfhi $4
beq $2, $4, TAG91
mtlo $2
TAG91:
lui $2, 5
multu $4, $2
lh $1, 0($4)
mult $2, $4
TAG92:
xor $2, $1, $1
lb $1, 0($2)
mflo $2
lhu $2, 0($1)
TAG93:
bltz $2, TAG94
addu $3, $2, $2
sh $3, 0($2)
sll $3, $3, 7
TAG94:
beq $3, $3, TAG95
mtlo $3
bne $3, $3, TAG95
subu $1, $3, $3
TAG95:
bne $1, $1, TAG96
lb $3, 0($1)
bgez $1, TAG96
sltu $2, $1, $1
TAG96:
mthi $2
beq $2, $2, TAG97
sra $3, $2, 14
lbu $1, 0($2)
TAG97:
lb $4, 0($1)
mthi $1
sltiu $2, $4, 11
mthi $4
TAG98:
lui $1, 11
beq $1, $1, TAG99
lui $2, 6
sllv $1, $2, $2
TAG99:
lui $1, 2
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG100
TAG100:
lui $2, 6
bgez $4, TAG101
sh $4, 0($4)
slt $3, $2, $4
TAG101:
mult $3, $3
bne $3, $3, TAG102
sh $3, 0($3)
slt $4, $3, $3
TAG102:
lh $3, 0($4)
add $2, $3, $3
sh $4, 0($2)
sb $3, 0($2)
TAG103:
mfhi $3
mfhi $2
mthi $3
sb $3, 0($2)
TAG104:
bltz $2, TAG105
lui $4, 11
subu $2, $2, $2
mult $4, $2
TAG105:
mfhi $2
lui $3, 15
addu $3, $2, $2
sltiu $4, $3, 11
TAG106:
lui $1, 7
or $2, $4, $1
sll $0, $0, 0
slti $4, $1, 2
TAG107:
mflo $1
lui $1, 9
ori $3, $1, 5
sll $0, $0, 0
TAG108:
sll $0, $0, 0
blez $3, TAG109
lui $1, 11
mfhi $4
TAG109:
mthi $4
bltz $4, TAG110
lui $4, 3
sll $0, $0, 0
TAG110:
sll $0, $0, 0
srav $4, $3, $3
div $4, $4
sll $0, $0, 0
TAG111:
mtlo $4
sb $4, -18432($4)
slti $3, $4, 13
lui $3, 10
TAG112:
mflo $1
bne $3, $1, TAG113
addu $4, $1, $1
add $2, $3, $4
TAG113:
mfhi $1
mtlo $2
lbu $2, 0($1)
lui $3, 2
TAG114:
blez $3, TAG115
sll $2, $3, 1
mtlo $3
xor $4, $2, $2
TAG115:
bgez $4, TAG116
srl $2, $4, 0
lhu $2, 0($4)
sh $2, 0($2)
TAG116:
lhu $1, 0($2)
mult $2, $2
mtlo $2
beq $1, $2, TAG117
TAG117:
mthi $1
sh $1, 0($1)
ori $2, $1, 10
mult $2, $1
TAG118:
lb $3, 0($2)
multu $2, $2
mflo $4
mtlo $4
TAG119:
subu $3, $4, $4
beq $3, $4, TAG120
sw $3, 0($3)
mfhi $4
TAG120:
mtlo $4
lh $4, 0($4)
mult $4, $4
sw $4, 0($4)
TAG121:
lui $2, 1
sh $2, 0($4)
blez $4, TAG122
sll $0, $0, 0
TAG122:
srl $1, $2, 8
lui $4, 11
mtlo $2
mthi $1
TAG123:
slt $1, $4, $4
mflo $2
bne $1, $2, TAG124
ori $2, $2, 8
TAG124:
mthi $2
sll $0, $0, 0
bgez $2, TAG125
sll $0, $0, 0
TAG125:
bltz $3, TAG126
sw $3, 0($3)
mfhi $1
div $3, $1
TAG126:
mthi $1
xori $2, $1, 8
mthi $1
lui $3, 4
TAG127:
slti $2, $3, 10
lui $4, 5
srav $2, $4, $3
lui $4, 14
TAG128:
bne $4, $4, TAG129
lui $1, 14
mfhi $1
srlv $3, $1, $4
TAG129:
mthi $3
bltz $3, TAG130
lui $2, 9
nor $2, $2, $2
TAG130:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
lui $4, 14
TAG131:
bne $4, $4, TAG132
mflo $3
lui $2, 4
bgez $3, TAG132
TAG132:
sll $0, $0, 0
bgtz $2, TAG133
xor $1, $2, $2
bltz $2, TAG133
TAG133:
mflo $2
mult $1, $1
bgtz $2, TAG134
mthi $1
TAG134:
bgtz $2, TAG135
sh $2, 0($2)
sb $2, 0($2)
lui $1, 12
TAG135:
div $1, $1
mult $1, $1
or $3, $1, $1
sra $3, $1, 2
TAG136:
sll $0, $0, 0
mult $3, $1
bltz $3, TAG137
sll $3, $3, 12
TAG137:
lui $1, 1
lui $2, 0
mfhi $1
sll $0, $0, 0
TAG138:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
addi $1, $2, 6
TAG139:
mfhi $3
mtlo $1
mthi $3
blez $3, TAG140
TAG140:
sh $3, 0($3)
nor $4, $3, $3
addu $2, $4, $4
divu $2, $2
TAG141:
bltz $2, TAG142
lh $2, 2($2)
lb $1, 0($2)
bltz $2, TAG142
TAG142:
mtlo $1
div $1, $1
lb $4, 0($1)
lui $3, 7
TAG143:
bgtz $3, TAG144
div $3, $3
lw $4, 0($3)
bne $3, $3, TAG144
TAG144:
lui $3, 13
sltiu $1, $4, 7
mfhi $2
lui $3, 1
TAG145:
mflo $1
mfhi $2
lui $4, 10
sll $0, $0, 0
TAG146:
srl $3, $4, 2
mthi $3
mfhi $1
sll $0, $0, 0
TAG147:
sll $0, $0, 0
bne $3, $3, TAG148
sll $0, $0, 0
beq $2, $2, TAG148
TAG148:
mtlo $2
bgez $2, TAG149
lbu $3, 0($2)
bne $2, $3, TAG149
TAG149:
sh $3, 0($3)
lui $1, 1
sltu $4, $1, $3
mult $1, $1
TAG150:
mult $4, $4
mflo $3
beq $3, $3, TAG151
multu $3, $3
TAG151:
mtlo $3
mflo $3
sltu $2, $3, $3
multu $2, $3
TAG152:
mult $2, $2
bgtz $2, TAG153
lh $4, 0($2)
mfhi $3
TAG153:
sltiu $2, $3, 15
xor $3, $2, $2
lui $4, 15
lui $3, 0
TAG154:
bgez $3, TAG155
mthi $3
andi $1, $3, 11
srl $1, $3, 1
TAG155:
sll $0, $0, 0
mtlo $1
mthi $1
sb $2, 0($2)
TAG156:
mult $2, $2
mthi $2
lui $1, 5
beq $1, $2, TAG157
TAG157:
sll $0, $0, 0
bltz $1, TAG158
sll $0, $0, 0
lui $4, 9
TAG158:
srav $4, $4, $4
sll $0, $0, 0
subu $2, $4, $4
mflo $4
TAG159:
lui $1, 2
sb $4, 0($4)
mfhi $1
bgtz $1, TAG160
TAG160:
sra $4, $1, 3
or $2, $4, $4
addi $4, $4, 10
bgtz $4, TAG161
TAG161:
lbu $2, 0($4)
mfhi $1
addiu $2, $1, 3
mult $1, $2
TAG162:
sh $2, 0($2)
addu $2, $2, $2
subu $3, $2, $2
multu $2, $3
TAG163:
multu $3, $3
lui $4, 13
mflo $4
addu $3, $4, $3
TAG164:
multu $3, $3
sb $3, 0($3)
mfhi $3
sb $3, 0($3)
TAG165:
lhu $1, 0($3)
beq $3, $1, TAG166
ori $2, $1, 10
mtlo $3
TAG166:
lui $3, 5
mfhi $1
mthi $1
mtlo $1
TAG167:
nor $3, $1, $1
addiu $4, $3, 3
sb $1, 0($4)
mthi $4
TAG168:
mflo $2
ori $1, $4, 13
lui $1, 12
sll $0, $0, 0
TAG169:
lui $3, 13
bltz $3, TAG170
mflo $4
bgtz $2, TAG170
TAG170:
lb $3, 0($4)
sh $4, 0($3)
mtlo $4
sh $3, 0($3)
TAG171:
lh $2, 0($3)
multu $2, $3
sw $3, 0($3)
mthi $2
TAG172:
sb $2, 0($2)
mthi $2
lui $1, 7
multu $2, $1
TAG173:
blez $1, TAG174
mflo $3
addiu $2, $1, 9
mflo $1
TAG174:
lui $3, 8
mtlo $1
lui $2, 15
sllv $3, $2, $2
TAG175:
lui $1, 13
srl $3, $3, 0
sllv $3, $3, $3
sll $0, $0, 0
TAG176:
mult $2, $2
div $2, $2
sll $0, $0, 0
lui $3, 11
TAG177:
sll $0, $0, 0
lui $3, 2
sll $0, $0, 0
lui $3, 9
TAG178:
sll $0, $0, 0
mthi $3
sllv $2, $3, $3
lui $3, 13
TAG179:
mthi $3
bgez $3, TAG180
lui $1, 1
sb $3, 0($1)
TAG180:
sll $0, $0, 0
srlv $4, $4, $1
lui $3, 11
sll $0, $0, 0
TAG181:
srl $4, $3, 13
beq $3, $3, TAG182
sll $0, $0, 0
bne $3, $4, TAG182
TAG182:
sb $4, 0($4)
ori $3, $4, 13
sra $3, $4, 4
srl $2, $4, 0
TAG183:
lhu $2, 0($2)
slt $4, $2, $2
mtlo $2
srlv $3, $2, $4
TAG184:
mtlo $3
mflo $2
lw $2, 0($2)
mult $2, $3
TAG185:
lbu $1, 0($2)
addiu $1, $2, 6
mult $1, $2
mflo $3
TAG186:
bgtz $3, TAG187
lui $4, 10
sw $4, 0($4)
xor $3, $3, $4
TAG187:
sb $3, -8272($3)
divu $3, $3
mflo $4
lhu $4, -8272($3)
TAG188:
beq $4, $4, TAG189
lui $2, 4
lui $3, 8
lh $2, 0($3)
TAG189:
sll $0, $0, 0
mfhi $4
slt $2, $2, $2
xor $1, $2, $2
TAG190:
mflo $2
mfhi $1
sb $2, 0($1)
sb $1, 0($2)
TAG191:
addiu $1, $1, 6
sltiu $2, $1, 5
bltz $2, TAG192
mflo $1
TAG192:
mthi $1
mthi $1
multu $1, $1
sb $1, 0($1)
TAG193:
mthi $1
lb $4, 0($1)
div $4, $1
beq $1, $4, TAG194
TAG194:
addu $4, $4, $4
div $4, $4
mthi $4
lhu $3, 0($4)
TAG195:
beq $3, $3, TAG196
addu $1, $3, $3
bltz $1, TAG196
add $3, $3, $3
TAG196:
bne $3, $3, TAG197
sltiu $2, $3, 12
beq $2, $3, TAG197
xori $2, $2, 14
TAG197:
xor $2, $2, $2
sh $2, 0($2)
addi $1, $2, 6
sh $2, 0($2)
TAG198:
beq $1, $1, TAG199
multu $1, $1
sw $1, 0($1)
mtlo $1
TAG199:
mflo $4
mthi $1
addiu $3, $1, 5
lui $4, 0
TAG200:
bgez $4, TAG201
srav $4, $4, $4
blez $4, TAG201
lui $3, 12
TAG201:
or $4, $3, $3
lui $4, 14
multu $4, $4
multu $3, $4
TAG202:
sll $0, $0, 0
sltiu $1, $2, 1
bne $2, $2, TAG203
mtlo $1
TAG203:
bgtz $1, TAG204
andi $3, $1, 11
addu $4, $1, $1
mfhi $3
TAG204:
mflo $4
addiu $4, $3, 11
mthi $3
beq $4, $3, TAG205
TAG205:
lui $1, 9
sltiu $1, $1, 11
mult $1, $1
bltz $4, TAG206
TAG206:
sw $1, 0($1)
mflo $3
ori $1, $1, 11
lui $4, 10
TAG207:
mthi $4
bltz $4, TAG208
sll $0, $0, 0
xori $4, $4, 10
TAG208:
xori $2, $4, 11
xori $3, $2, 0
sll $0, $0, 0
bne $3, $3, TAG209
TAG209:
slt $2, $3, $3
sra $2, $2, 6
beq $3, $2, TAG210
mult $3, $2
TAG210:
mfhi $3
blez $2, TAG211
mfhi $2
srlv $2, $2, $3
TAG211:
mtlo $2
sltu $4, $2, $2
bne $2, $4, TAG212
sw $2, 0($2)
TAG212:
mtlo $4
ori $3, $4, 0
or $4, $3, $4
bgtz $4, TAG213
TAG213:
addiu $3, $4, 5
mflo $1
mfhi $1
beq $1, $3, TAG214
TAG214:
multu $1, $1
mflo $3
bgez $1, TAG215
multu $3, $3
TAG215:
lw $2, 0($3)
beq $2, $2, TAG216
lbu $3, 0($2)
add $4, $3, $3
TAG216:
lw $3, 0($4)
sltiu $4, $3, 12
mfhi $2
beq $2, $4, TAG217
TAG217:
lh $1, 0($2)
mtlo $2
andi $3, $2, 14
bgtz $1, TAG218
TAG218:
mult $3, $3
mult $3, $3
mfhi $1
lui $3, 15
TAG219:
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG220:
lui $3, 12
mflo $2
bgez $3, TAG221
mflo $4
TAG221:
srlv $1, $4, $4
sb $4, 0($1)
beq $1, $4, TAG222
mfhi $2
TAG222:
mthi $2
sll $2, $2, 12
sll $0, $0, 0
div $2, $2
TAG223:
lhu $1, 0($1)
mult $1, $1
lw $3, 0($1)
sb $1, 0($3)
TAG224:
mtlo $3
bgez $3, TAG225
sra $4, $3, 6
lh $4, 0($4)
TAG225:
nor $2, $4, $4
lui $3, 5
mflo $3
lui $3, 0
TAG226:
lui $3, 3
mflo $4
mult $4, $3
mtlo $3
TAG227:
sh $4, 0($4)
mfhi $3
subu $1, $3, $4
lw $4, 0($3)
TAG228:
lbu $2, 0($4)
mthi $4
lbu $3, 0($4)
srl $4, $4, 9
TAG229:
sw $4, 0($4)
sw $4, 0($4)
mflo $2
mult $2, $4
TAG230:
lui $3, 6
blez $2, TAG231
lui $4, 1
lui $3, 3
TAG231:
lui $1, 0
sll $0, $0, 0
mult $3, $3
sra $4, $1, 14
TAG232:
srl $1, $4, 1
sb $4, 0($4)
mult $1, $1
lhu $1, 0($4)
TAG233:
multu $1, $1
mtlo $1
lh $2, 0($1)
mfhi $3
TAG234:
or $4, $3, $3
lb $1, 0($3)
mflo $3
mflo $1
TAG235:
bne $1, $1, TAG236
ori $4, $1, 9
mtlo $4
lw $1, 0($1)
TAG236:
sh $1, 0($1)
mult $1, $1
slti $3, $1, 8
bltz $3, TAG237
TAG237:
lb $3, 0($3)
xor $3, $3, $3
mult $3, $3
mult $3, $3
TAG238:
andi $3, $3, 1
mthi $3
lbu $3, 0($3)
lh $2, 0($3)
TAG239:
beq $2, $2, TAG240
mtlo $2
lhu $1, 0($2)
lui $2, 9
TAG240:
lb $3, 0($2)
mthi $2
lb $2, 0($3)
add $1, $2, $3
TAG241:
sub $2, $1, $1
xori $4, $1, 11
blez $4, TAG242
addu $2, $1, $1
TAG242:
mfhi $1
nor $4, $2, $1
mult $1, $1
divu $2, $4
TAG243:
mflo $1
bgtz $4, TAG244
xori $3, $4, 0
srl $3, $1, 11
TAG244:
mult $3, $3
bne $3, $3, TAG245
addu $1, $3, $3
mthi $1
TAG245:
bgtz $1, TAG246
mthi $1
sra $4, $1, 13
lui $3, 13
TAG246:
ori $2, $3, 14
bne $2, $2, TAG247
mthi $2
addiu $2, $3, 5
TAG247:
lui $4, 3
divu $2, $4
bltz $4, TAG248
sll $0, $0, 0
TAG248:
bgtz $4, TAG249
addiu $1, $4, 7
slti $1, $1, 4
lhu $4, 0($4)
TAG249:
beq $4, $4, TAG250
sll $0, $0, 0
bgez $4, TAG250
mfhi $1
TAG250:
bgtz $1, TAG251
multu $1, $1
lb $3, 0($1)
bltz $3, TAG251
TAG251:
ori $2, $3, 6
mfhi $1
bltz $1, TAG252
mtlo $2
TAG252:
sb $1, 0($1)
mthi $1
lui $2, 7
divu $2, $2
TAG253:
lui $4, 11
sll $0, $0, 0
ori $2, $2, 15
sll $0, $0, 0
TAG254:
bltz $2, TAG255
sll $0, $0, 0
ori $4, $2, 6
srl $4, $2, 11
TAG255:
sh $4, -224($4)
mult $4, $4
sw $4, -224($4)
lui $3, 11
TAG256:
addiu $2, $3, 10
sll $0, $0, 0
mfhi $1
divu $2, $2
TAG257:
sb $1, 0($1)
sllv $1, $1, $1
beq $1, $1, TAG258
mfhi $1
TAG258:
subu $2, $1, $1
mthi $2
lui $3, 1
sll $0, $0, 0
TAG259:
sw $2, 0($2)
lui $4, 9
mflo $3
srl $2, $4, 1
TAG260:
bne $2, $2, TAG261
mthi $2
sll $0, $0, 0
multu $2, $2
TAG261:
lw $1, 0($1)
mult $1, $1
mtlo $1
lw $2, 0($1)
TAG262:
mfhi $4
lbu $1, 0($2)
lbu $3, 0($4)
bne $4, $2, TAG263
TAG263:
addi $4, $3, 14
bgez $4, TAG264
sh $4, 0($3)
sh $4, 0($4)
TAG264:
bgez $4, TAG265
lh $1, 0($4)
mflo $3
beq $1, $4, TAG265
TAG265:
lb $3, 0($3)
multu $3, $3
lbu $4, 0($3)
lhu $4, 0($4)
TAG266:
divu $4, $4
lui $1, 5
srav $4, $4, $1
srav $3, $1, $1
TAG267:
lui $1, 15
sll $0, $0, 0
bltz $2, TAG268
sll $0, $0, 0
TAG268:
mtlo $2
lw $2, 0($2)
ori $2, $2, 2
mthi $2
TAG269:
srav $3, $2, $2
mfhi $4
beq $3, $3, TAG270
lh $3, 0($4)
TAG270:
lui $1, 0
mult $1, $1
lbu $2, 0($3)
or $2, $1, $2
TAG271:
bltz $2, TAG272
lui $4, 3
mfhi $2
mtlo $2
TAG272:
multu $2, $2
andi $4, $2, 9
sh $2, 0($4)
xori $3, $2, 2
TAG273:
mflo $4
mtlo $3
andi $2, $3, 12
sw $4, 0($4)
TAG274:
mthi $2
mtlo $2
bne $2, $2, TAG275
mthi $2
TAG275:
slt $4, $2, $2
mthi $2
bgtz $2, TAG276
mthi $2
TAG276:
sra $2, $4, 3
sb $2, 0($2)
sb $4, 0($2)
bgez $2, TAG277
TAG277:
lui $3, 0
mthi $2
lb $1, 0($3)
addiu $4, $3, 7
TAG278:
lui $1, 9
lb $3, 0($4)
lb $3, 0($4)
beq $3, $3, TAG279
TAG279:
addu $1, $3, $3
bgez $1, TAG280
lb $2, 0($1)
beq $1, $2, TAG280
TAG280:
mflo $4
lui $1, 3
bne $4, $2, TAG281
srl $2, $4, 9
TAG281:
bne $2, $2, TAG282
lb $2, 0($2)
mflo $2
ori $3, $2, 15
TAG282:
lui $1, 15
div $3, $1
sb $3, 0($3)
bne $1, $1, TAG283
TAG283:
and $2, $1, $1
bltz $2, TAG284
lui $4, 15
lui $3, 12
TAG284:
sllv $3, $3, $3
blez $3, TAG285
sll $0, $0, 0
bgez $3, TAG285
TAG285:
mtlo $3
sll $0, $0, 0
slt $3, $3, $3
sh $3, 0($3)
TAG286:
slti $4, $3, 9
mflo $4
mthi $4
xori $3, $4, 7
TAG287:
blez $3, TAG288
mthi $3
beq $3, $3, TAG288
sltu $2, $3, $3
TAG288:
sw $2, 0($2)
or $4, $2, $2
mthi $4
mflo $1
TAG289:
mtlo $1
bne $1, $1, TAG290
mult $1, $1
sll $0, $0, 0
TAG290:
beq $2, $2, TAG291
mfhi $1
bltz $1, TAG291
mfhi $3
TAG291:
bne $3, $3, TAG292
sll $0, $0, 0
mthi $3
mthi $3
TAG292:
multu $3, $3
bne $3, $3, TAG293
nor $3, $3, $3
sll $0, $0, 0
TAG293:
bgtz $1, TAG294
sra $1, $1, 9
beq $1, $1, TAG294
slt $1, $1, $1
TAG294:
lui $4, 12
lb $2, 0($1)
lui $2, 15
sll $4, $4, 11
TAG295:
addiu $1, $4, 1
mfhi $1
mflo $2
lb $1, -144($1)
TAG296:
multu $1, $1
andi $1, $1, 3
ori $4, $1, 6
mult $4, $4
TAG297:
divu $4, $4
lh $3, 0($4)
sh $4, 0($4)
bgez $3, TAG298
TAG298:
sllv $3, $3, $3
mthi $3
bgtz $3, TAG299
addi $2, $3, 12
TAG299:
lbu $4, 0($2)
bgez $4, TAG300
mfhi $3
beq $4, $2, TAG300
TAG300:
mthi $3
and $1, $3, $3
mult $3, $1
bne $3, $1, TAG301
TAG301:
sll $1, $1, 0
bltz $1, TAG302
addiu $3, $1, 7
sb $1, 0($3)
TAG302:
and $2, $3, $3
lbu $2, 0($3)
beq $3, $3, TAG303
div $3, $3
TAG303:
sh $2, 0($2)
lui $3, 14
mfhi $3
multu $2, $3
TAG304:
mflo $2
lhu $3, 0($2)
mfhi $2
xori $1, $2, 2
TAG305:
mfhi $1
mfhi $2
bgtz $1, TAG306
andi $3, $2, 3
TAG306:
beq $3, $3, TAG307
lb $2, 0($3)
divu $2, $2
sw $3, 0($2)
TAG307:
beq $2, $2, TAG308
mtlo $2
divu $2, $2
lui $1, 15
TAG308:
ori $3, $1, 2
bltz $3, TAG309
sb $3, 0($3)
lb $2, 0($1)
TAG309:
lw $4, 0($2)
mflo $1
lw $1, 0($2)
sll $0, $0, 0
TAG310:
sll $0, $0, 0
beq $1, $1, TAG311
srav $1, $1, $1
beq $1, $1, TAG311
TAG311:
and $3, $1, $1
mflo $2
bne $2, $3, TAG312
mfhi $2
TAG312:
beq $2, $2, TAG313
lh $2, 0($2)
lui $2, 6
div $2, $2
TAG313:
bltz $2, TAG314
lui $2, 7
lui $2, 14
mthi $2
TAG314:
bgez $2, TAG315
sll $0, $0, 0
bne $2, $2, TAG315
sh $2, 0($2)
TAG315:
sll $1, $3, 7
bne $3, $1, TAG316
mult $1, $3
mflo $2
TAG316:
beq $2, $2, TAG317
lui $1, 4
mthi $2
div $2, $1
TAG317:
mflo $3
multu $1, $3
mfhi $4
bne $4, $4, TAG318
TAG318:
and $3, $4, $4
mfhi $2
mtlo $4
addiu $3, $2, 5
TAG319:
bne $3, $3, TAG320
multu $3, $3
addu $1, $3, $3
andi $1, $3, 13
TAG320:
lui $3, 1
sll $0, $0, 0
bgtz $3, TAG321
lui $2, 10
TAG321:
mflo $1
mthi $2
bne $2, $1, TAG322
lbu $3, 0($1)
TAG322:
mult $3, $3
multu $3, $3
multu $3, $3
multu $3, $3
TAG323:
sh $3, 0($3)
bgez $3, TAG324
lui $4, 10
mflo $2
TAG324:
mtlo $2
mthi $2
bltz $2, TAG325
mthi $2
TAG325:
sll $0, $0, 0
divu $3, $2
bltz $3, TAG326
nor $1, $3, $2
TAG326:
lui $1, 4
multu $1, $1
sll $0, $0, 0
mfhi $2
TAG327:
mult $2, $2
mflo $1
slti $4, $1, 12
mthi $4
TAG328:
mult $4, $4
mflo $2
multu $2, $4
sb $4, 0($4)
TAG329:
mult $2, $2
lhu $3, 0($2)
sw $3, 0($3)
add $3, $2, $3
TAG330:
mtlo $3
sb $3, 0($3)
bne $3, $3, TAG331
multu $3, $3
TAG331:
sh $3, 0($3)
addu $1, $3, $3
bltz $3, TAG332
lh $1, 0($1)
TAG332:
mthi $1
lui $2, 14
lh $1, 0($1)
sll $0, $0, 0
TAG333:
beq $1, $1, TAG334
sw $1, 0($1)
sw $1, 0($1)
mflo $3
TAG334:
multu $3, $3
bne $3, $3, TAG335
sra $1, $3, 8
andi $1, $3, 13
TAG335:
bgez $1, TAG336
lui $1, 8
mfhi $3
mtlo $3
TAG336:
mult $3, $3
addu $4, $3, $3
lh $3, 0($4)
lui $3, 4
TAG337:
bne $3, $3, TAG338
sra $3, $3, 5
mflo $2
bgtz $3, TAG338
TAG338:
mflo $4
xori $3, $4, 9
lh $1, 0($2)
lui $1, 3
TAG339:
lui $2, 4
lui $3, 11
addu $1, $1, $2
sll $0, $0, 0
TAG340:
multu $1, $1
addu $2, $1, $1
mflo $4
mtlo $4
TAG341:
mthi $4
bgez $4, TAG342
sw $4, 0($4)
mthi $4
TAG342:
bgez $4, TAG343
sra $2, $4, 12
sw $2, 0($2)
lui $4, 2
TAG343:
mthi $4
and $4, $4, $4
lui $1, 0
mflo $4
TAG344:
mfhi $4
bltz $4, TAG345
mfhi $3
lui $3, 14
TAG345:
mflo $3
sh $3, 0($3)
sltu $3, $3, $3
and $4, $3, $3
TAG346:
lbu $3, 0($4)
lbu $2, 0($3)
mflo $4
sw $4, 0($3)
TAG347:
mthi $4
lhu $1, 0($4)
lui $4, 3
bgtz $1, TAG348
TAG348:
addu $2, $4, $4
beq $2, $2, TAG349
sll $0, $0, 0
lhu $3, 0($4)
TAG349:
sb $3, 0($3)
blez $3, TAG350
xori $4, $3, 3
lui $2, 14
TAG350:
xor $1, $2, $2
multu $1, $2
addiu $4, $2, 10
mthi $1
TAG351:
xor $4, $4, $4
blez $4, TAG352
sw $4, 0($4)
sra $4, $4, 6
TAG352:
add $2, $4, $4
multu $2, $4
sw $2, 0($4)
mfhi $4
TAG353:
slti $4, $4, 9
sra $3, $4, 2
multu $4, $3
lui $1, 8
TAG354:
addiu $3, $1, 5
multu $1, $1
sll $0, $0, 0
sltu $2, $1, $3
TAG355:
mflo $1
mtlo $2
beq $2, $2, TAG356
mfhi $4
TAG356:
sh $4, 0($4)
bgez $4, TAG357
lui $2, 3
mult $2, $4
TAG357:
mflo $4
mfhi $3
lui $1, 5
sll $0, $0, 0
TAG358:
sll $2, $1, 6
mflo $2
mfhi $3
mflo $2
TAG359:
sb $2, 0($2)
beq $2, $2, TAG360
lui $3, 15
lui $3, 12
TAG360:
lui $3, 9
sll $0, $0, 0
bltz $3, TAG361
sll $0, $0, 0
TAG361:
srl $2, $1, 3
sllv $4, $2, $1
bne $4, $4, TAG362
sll $0, $0, 0
TAG362:
beq $4, $4, TAG363
mfhi $1
bgez $4, TAG363
lw $3, 0($4)
TAG363:
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG364
TAG364:
mflo $4
sltiu $3, $2, 6
sll $0, $0, 0
mfhi $3
TAG365:
sh $3, 0($3)
lui $1, 7
sltiu $4, $1, 11
addi $2, $3, 8
TAG366:
addu $2, $2, $2
lbu $4, 0($2)
lui $4, 2
addu $3, $4, $4
TAG367:
mult $3, $3
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG368:
beq $3, $3, TAG369
divu $3, $3
lb $3, 0($3)
sh $3, 0($3)
TAG369:
bgtz $3, TAG370
sll $0, $0, 0
sb $2, 0($3)
sb $3, 0($3)
TAG370:
sb $2, 0($2)
divu $2, $2
lui $3, 3
srlv $3, $3, $2
TAG371:
sllv $1, $3, $3
sra $2, $3, 15
mfhi $2
sb $2, 0($2)
TAG372:
beq $2, $2, TAG373
lhu $2, 0($2)
andi $1, $2, 8
lui $4, 15
TAG373:
lui $2, 15
sll $0, $0, 0
mtlo $3
lui $2, 4
TAG374:
lui $2, 1
lui $3, 4
mflo $2
sb $3, 0($2)
TAG375:
lui $1, 14
mfhi $2
srlv $2, $2, $1
beq $2, $2, TAG376
TAG376:
srl $2, $2, 5
mthi $2
mflo $4
mtlo $2
TAG377:
lui $1, 0
sltiu $4, $4, 0
mtlo $4
lui $3, 14
TAG378:
sll $0, $0, 0
addiu $2, $3, 14
divu $3, $3
sll $0, $0, 0
TAG379:
bne $1, $1, TAG380
sb $1, 0($1)
lhu $1, 0($1)
lui $2, 5
TAG380:
bne $2, $2, TAG381
subu $2, $2, $2
multu $2, $2
lui $4, 2
TAG381:
sltiu $4, $4, 1
mfhi $4
bgez $4, TAG382
mfhi $2
TAG382:
blez $2, TAG383
lui $1, 6
beq $1, $1, TAG383
lb $4, 0($1)
TAG383:
lui $3, 6
nor $2, $4, $3
bgez $3, TAG384
mthi $2
TAG384:
mfhi $1
mflo $2
sltiu $3, $1, 3
beq $1, $2, TAG385
TAG385:
slti $1, $3, 8
lui $4, 3
slt $2, $4, $3
mthi $1
TAG386:
lui $1, 6
mthi $1
bgtz $1, TAG387
multu $2, $2
TAG387:
sll $0, $0, 0
addiu $3, $1, 11
mthi $1
sll $0, $0, 0
TAG388:
bne $3, $3, TAG389
mflo $1
beq $1, $3, TAG389
subu $2, $3, $1
TAG389:
mfhi $4
beq $4, $4, TAG390
sll $0, $0, 0
sh $4, 0($4)
TAG390:
sltu $1, $4, $4
lui $3, 6
mthi $1
mtlo $1
TAG391:
bne $3, $3, TAG392
mfhi $3
lhu $3, 0($3)
mult $3, $3
TAG392:
sub $2, $3, $3
mtlo $2
mthi $2
mfhi $3
TAG393:
mthi $3
bgtz $3, TAG394
sltu $3, $3, $3
lui $1, 13
TAG394:
mthi $1
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
TAG395:
bne $2, $2, TAG396
lh $3, 0($2)
mult $2, $2
sw $3, 0($3)
TAG396:
andi $2, $3, 1
mtlo $3
lhu $4, 0($2)
mthi $2
TAG397:
mthi $4
bgez $4, TAG398
lui $3, 2
bgtz $4, TAG398
TAG398:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 3
sll $0, $0, 0
TAG399:
sw $4, 0($4)
lhu $3, 0($4)
xori $4, $4, 6
sh $4, 0($4)
TAG400:
sllv $3, $4, $4
srlv $4, $3, $4
lb $1, -384($3)
lhu $2, 0($4)
TAG401:
and $1, $2, $2
srav $2, $1, $1
bne $2, $2, TAG402
mfhi $3
TAG402:
bne $3, $3, TAG403
srl $2, $3, 11
sll $4, $2, 14
bgtz $4, TAG403
TAG403:
multu $4, $4
bne $4, $4, TAG404
ori $2, $4, 7
sh $4, 0($4)
TAG404:
mtlo $2
bne $2, $2, TAG405
subu $1, $2, $2
andi $1, $1, 13
TAG405:
lui $3, 4
bne $1, $1, TAG406
mthi $1
bltz $1, TAG406
TAG406:
addiu $3, $3, 11
mtlo $3
lui $3, 3
mtlo $3
TAG407:
bltz $3, TAG408
sll $0, $0, 0
multu $3, $3
lui $1, 2
TAG408:
mult $1, $1
bltz $1, TAG409
mfhi $3
lui $1, 2
TAG409:
ori $2, $1, 5
beq $2, $1, TAG410
mthi $1
ori $3, $1, 5
TAG410:
bne $3, $3, TAG411
srlv $3, $3, $3
mtlo $3
mflo $4
TAG411:
div $4, $4
bgez $4, TAG412
lbu $3, -4096($4)
mfhi $4
TAG412:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
lui $2, 3
TAG413:
beq $2, $2, TAG414
lui $3, 3
mtlo $3
lb $3, 0($2)
TAG414:
lui $2, 7
div $3, $3
mult $3, $2
slt $2, $3, $2
TAG415:
beq $2, $2, TAG416
lui $4, 0
addi $2, $2, 13
bgtz $4, TAG416
TAG416:
mtlo $2
sb $2, 0($2)
bne $2, $2, TAG417
lui $3, 2
TAG417:
sll $0, $0, 0
xori $1, $3, 7
sll $0, $0, 0
mtlo $1
TAG418:
beq $1, $1, TAG419
sll $0, $0, 0
mult $1, $1
mflo $2
TAG419:
xori $1, $2, 7
bne $1, $2, TAG420
lbu $2, 0($2)
mthi $2
TAG420:
lui $4, 13
divu $4, $2
mflo $3
bgtz $2, TAG421
TAG421:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
bne $3, $2, TAG422
TAG422:
multu $2, $2
srl $3, $2, 13
sb $2, 0($2)
bne $2, $2, TAG423
TAG423:
lbu $2, 0($3)
mult $3, $2
sll $2, $2, 7
mult $3, $3
TAG424:
bgtz $2, TAG425
add $1, $2, $2
multu $1, $2
multu $1, $1
TAG425:
sb $1, 0($1)
bne $1, $1, TAG426
addiu $4, $1, 5
mfhi $1
TAG426:
lui $1, 11
mflo $4
mtlo $4
sltiu $2, $1, 12
TAG427:
mfhi $3
sw $3, 0($3)
beq $2, $3, TAG428
mtlo $2
TAG428:
lb $4, 0($3)
bne $3, $3, TAG429
mult $3, $4
bne $3, $3, TAG429
TAG429:
sw $4, 0($4)
bgtz $4, TAG430
multu $4, $4
sb $4, 0($4)
TAG430:
andi $3, $4, 7
lui $3, 6
divu $3, $3
lui $4, 4
TAG431:
bgtz $4, TAG432
mfhi $2
xori $3, $2, 11
mfhi $2
TAG432:
or $4, $2, $2
lbu $3, 0($4)
and $1, $3, $2
mthi $1
TAG433:
lui $1, 3
bne $1, $1, TAG434
mfhi $1
bne $1, $1, TAG434
TAG434:
sb $1, 0($1)
srav $1, $1, $1
bne $1, $1, TAG435
mthi $1
TAG435:
addiu $2, $1, 3
blez $2, TAG436
lbu $2, 0($1)
lh $4, 0($1)
TAG436:
srav $3, $4, $4
srl $1, $3, 6
sra $1, $4, 4
bgtz $4, TAG437
TAG437:
add $1, $1, $1
sh $1, 0($1)
beq $1, $1, TAG438
and $1, $1, $1
TAG438:
andi $3, $1, 13
lui $4, 4
mfhi $1
sw $1, 0($1)
TAG439:
blez $1, TAG440
lui $2, 12
and $3, $1, $2
mtlo $2
TAG440:
bne $3, $3, TAG441
nor $4, $3, $3
sb $3, 1($4)
sw $4, 0($3)
TAG441:
slt $2, $4, $4
bgtz $2, TAG442
sw $2, 1($4)
bne $4, $4, TAG442
TAG442:
mtlo $2
mtlo $2
srl $2, $2, 9
bne $2, $2, TAG443
TAG443:
ori $4, $2, 7
divu $4, $4
beq $2, $4, TAG444
mfhi $2
TAG444:
lui $1, 15
or $2, $1, $1
lui $1, 13
beq $1, $2, TAG445
TAG445:
lui $1, 6
lui $1, 8
mfhi $1
lh $1, 0($1)
TAG446:
beq $1, $1, TAG447
ori $4, $1, 11
div $1, $4
sh $4, 0($4)
TAG447:
addu $1, $4, $4
mthi $4
mthi $1
slti $1, $1, 10
TAG448:
mtlo $1
sh $1, 0($1)
lui $4, 4
sll $0, $0, 0
TAG449:
bltz $4, TAG450
sll $0, $0, 0
sllv $1, $4, $2
mfhi $4
TAG450:
bgez $4, TAG451
sltiu $4, $4, 10
beq $4, $4, TAG451
lui $4, 0
TAG451:
mtlo $4
lui $1, 0
mflo $4
sub $3, $4, $1
TAG452:
beq $3, $3, TAG453
mthi $3
sub $2, $3, $3
bne $3, $2, TAG453
TAG453:
and $4, $2, $2
div $4, $4
sltiu $3, $4, 4
mflo $3
TAG454:
lbu $4, 0($3)
bne $4, $4, TAG455
sh $4, 0($4)
bne $4, $3, TAG455
TAG455:
addu $2, $4, $4
mult $2, $2
blez $2, TAG456
slt $2, $2, $2
TAG456:
lui $1, 8
mult $2, $1
or $4, $2, $2
sll $0, $0, 0
TAG457:
bltz $2, TAG458
sltu $3, $2, $2
sll $4, $2, 15
sh $4, 0($2)
TAG458:
lui $3, 3
lhu $1, 0($4)
lui $2, 5
mtlo $4
TAG459:
sll $0, $0, 0
bgez $2, TAG460
divu $2, $2
beq $2, $2, TAG460
TAG460:
srl $4, $2, 9
subu $3, $4, $2
subu $2, $2, $4
mthi $3
TAG461:
subu $3, $2, $2
lhu $2, 0($3)
beq $2, $2, TAG462
sltiu $2, $2, 1
TAG462:
slti $2, $2, 6
sltu $1, $2, $2
beq $1, $1, TAG463
sb $1, 0($2)
TAG463:
bne $1, $1, TAG464
sh $1, 0($1)
mfhi $2
multu $2, $1
TAG464:
mtlo $2
mthi $2
ori $4, $2, 15
divu $2, $2
TAG465:
or $4, $4, $4
mfhi $3
beq $3, $3, TAG466
mult $3, $4
TAG466:
multu $3, $3
multu $3, $3
lui $1, 11
mult $1, $1
TAG467:
blez $1, TAG468
mult $1, $1
sll $0, $0, 0
srlv $3, $1, $1
TAG468:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mthi $3
TAG469:
sll $0, $0, 0
bltz $4, TAG470
sltiu $4, $4, 7
mthi $4
TAG470:
mflo $2
ori $3, $2, 2
lw $2, 0($4)
lui $4, 2
TAG471:
bgez $4, TAG472
sll $0, $0, 0
lb $4, 0($4)
blez $4, TAG472
TAG472:
divu $4, $4
bltz $4, TAG473
multu $4, $4
mfhi $4
TAG473:
mthi $4
beq $4, $4, TAG474
sb $4, 0($4)
sra $2, $4, 12
TAG474:
mthi $2
mult $2, $2
bltz $2, TAG475
mthi $2
TAG475:
multu $2, $2
sub $4, $2, $2
xor $3, $2, $2
slti $4, $4, 1
TAG476:
mult $4, $4
srav $3, $4, $4
mfhi $2
subu $1, $2, $3
TAG477:
lui $3, 13
div $1, $3
bgez $3, TAG478
nor $1, $1, $3
TAG478:
lui $3, 2
sll $0, $0, 0
bne $1, $1, TAG479
div $3, $1
TAG479:
addiu $3, $3, 10
sll $0, $0, 0
bltz $4, TAG480
lbu $3, 0($4)
TAG480:
lui $4, 1
bne $4, $3, TAG481
xori $1, $4, 4
and $2, $4, $4
TAG481:
sh $2, 0($2)
or $2, $2, $2
andi $1, $2, 11
mthi $2
TAG482:
mfhi $4
mthi $4
lhu $3, 0($1)
multu $4, $1
TAG483:
blez $3, TAG484
lui $3, 8
sb $3, 0($3)
bgtz $3, TAG484
TAG484:
addu $1, $3, $3
mult $3, $3
sll $0, $0, 0
bgtz $3, TAG485
TAG485:
lui $4, 10
xori $1, $4, 13
lh $4, 0($2)
lh $1, 0($4)
TAG486:
bgtz $1, TAG487
mflo $1
lh $2, 0($1)
sh $1, 0($1)
TAG487:
mfhi $4
ori $2, $4, 13
lb $3, 0($2)
bgtz $4, TAG488
TAG488:
ori $3, $3, 14
or $3, $3, $3
sb $3, 0($3)
andi $1, $3, 10
TAG489:
lh $4, 0($1)
subu $4, $1, $1
addiu $1, $1, 6
sh $1, 0($1)
TAG490:
slt $3, $1, $1
mthi $1
mult $3, $3
beq $3, $1, TAG491
TAG491:
multu $3, $3
bltz $3, TAG492
mthi $3
mthi $3
TAG492:
beq $3, $3, TAG493
mflo $2
sh $2, 0($2)
mthi $3
TAG493:
sh $2, 0($2)
andi $4, $2, 6
mult $4, $4
sltiu $2, $2, 14
TAG494:
sb $2, 0($2)
lb $1, 0($2)
srav $1, $2, $1
sllv $3, $1, $2
TAG495:
bne $3, $3, TAG496
addiu $1, $3, 6
beq $3, $3, TAG496
mflo $4
TAG496:
ori $3, $4, 9
mtlo $3
sw $3, 0($4)
srlv $1, $3, $4
TAG497:
sltu $1, $1, $1
srlv $2, $1, $1
bgez $2, TAG498
mult $1, $2
TAG498:
sb $2, 0($2)
bne $2, $2, TAG499
mflo $3
lui $2, 4
TAG499:
divu $2, $2
bgez $2, TAG500
mtlo $2
sh $2, 0($2)
TAG500:
multu $2, $2
lui $3, 12
lui $3, 7
sll $2, $3, 15
TAG501:
blez $2, TAG502
mthi $2
bgez $2, TAG502
addiu $2, $2, 14
TAG502:
bne $2, $2, TAG503
nor $3, $2, $2
andi $4, $2, 8
divu $2, $2
TAG503:
bne $4, $4, TAG504
addiu $4, $4, 1
multu $4, $4
mtlo $4
TAG504:
bgez $4, TAG505
mult $4, $4
lb $2, 0($4)
lbu $1, 0($2)
TAG505:
mtlo $1
sllv $1, $1, $1
sw $1, 0($1)
xor $2, $1, $1
TAG506:
bne $2, $2, TAG507
mthi $2
bgez $2, TAG507
lui $3, 11
TAG507:
lui $1, 7
mult $3, $1
mtlo $3
addiu $2, $1, 2
TAG508:
sll $0, $0, 0
and $4, $2, $3
mfhi $4
mfhi $2
TAG509:
sb $2, 0($2)
mthi $2
mfhi $2
lui $4, 10
TAG510:
blez $4, TAG511
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $4, 14
TAG511:
bgez $4, TAG512
sll $0, $0, 0
addiu $2, $4, 0
addu $4, $4, $4
TAG512:
bne $4, $4, TAG513
lui $1, 13
blez $1, TAG513
mtlo $1
TAG513:
mtlo $1
div $1, $1
blez $1, TAG514
sll $0, $0, 0
TAG514:
divu $4, $4
multu $4, $4
sll $0, $0, 0
mtlo $3
TAG515:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG516:
subu $1, $1, $1
lui $2, 1
sll $0, $0, 0
bgez $1, TAG517
TAG517:
sub $2, $1, $1
lbu $1, 0($1)
lh $3, 0($2)
multu $3, $3
TAG518:
bne $3, $3, TAG519
slt $1, $3, $3
bne $1, $1, TAG519
mthi $1
TAG519:
lui $4, 7
lui $4, 5
beq $4, $4, TAG520
sltiu $1, $4, 3
TAG520:
blez $1, TAG521
lb $4, 0($1)
sll $1, $4, 12
addi $3, $1, 2
TAG521:
bltz $3, TAG522
mthi $3
sb $3, 0($3)
mult $3, $3
TAG522:
slt $1, $3, $3
bne $3, $1, TAG523
sh $3, 0($1)
slt $4, $1, $1
TAG523:
mult $4, $4
sw $4, 0($4)
lbu $1, 0($4)
multu $1, $1
TAG524:
mthi $1
lw $1, 0($1)
bltz $1, TAG525
sw $1, 0($1)
TAG525:
mflo $2
mfhi $1
mflo $4
beq $1, $4, TAG526
TAG526:
sw $4, 0($4)
bgez $4, TAG527
mthi $4
lui $4, 0
TAG527:
mtlo $4
beq $4, $4, TAG528
sb $4, 0($4)
divu $4, $4
TAG528:
mflo $1
mfhi $2
sh $4, 0($4)
lui $3, 7
TAG529:
addiu $1, $3, 15
srl $2, $3, 0
mflo $3
addi $3, $3, 2
TAG530:
sh $3, 0($3)
lbu $4, 0($3)
sh $4, 0($4)
beq $4, $3, TAG531
TAG531:
sll $2, $4, 13
and $1, $4, $2
beq $4, $2, TAG532
srlv $1, $2, $4
TAG532:
mthi $1
andi $3, $1, 8
multu $1, $3
sh $3, -4096($1)
TAG533:
multu $3, $3
mthi $3
slti $2, $3, 7
sb $2, 0($2)
TAG534:
lui $1, 13
bgez $1, TAG535
sb $2, 0($2)
lh $3, 0($1)
TAG535:
mult $3, $3
lui $3, 10
lui $1, 5
sll $0, $0, 0
TAG536:
addu $4, $4, $4
or $2, $4, $4
mthi $2
addu $2, $4, $4
TAG537:
mthi $2
sllv $3, $2, $2
sltiu $1, $2, 10
lbu $3, 0($1)
TAG538:
multu $3, $3
lui $1, 14
mflo $2
mtlo $3
TAG539:
lui $4, 8
bltz $2, TAG540
subu $2, $2, $2
sll $0, $0, 0
TAG540:
mfhi $3
multu $3, $2
mfhi $4
bgez $2, TAG541
TAG541:
sh $4, 0($4)
lh $2, 0($4)
lui $4, 3
mflo $1
TAG542:
mult $1, $1
bne $1, $1, TAG543
sw $1, 0($1)
beq $1, $1, TAG543
TAG543:
sub $3, $1, $1
srl $2, $3, 10
lhu $4, 0($1)
mthi $2
TAG544:
mult $4, $4
lui $3, 5
bne $4, $3, TAG545
sw $3, 0($4)
TAG545:
sll $0, $0, 0
mult $2, $2
addiu $1, $3, 1
mtlo $1
TAG546:
beq $1, $1, TAG547
mult $1, $1
lui $1, 4
bgez $1, TAG547
TAG547:
sra $4, $1, 11
divu $1, $4
lbu $4, -160($4)
mfhi $2
TAG548:
multu $2, $2
xori $2, $2, 10
sb $2, 0($2)
sb $2, 0($2)
TAG549:
nor $3, $2, $2
mfhi $3
bne $2, $3, TAG550
addiu $1, $3, 5
TAG550:
lb $4, 0($1)
slti $4, $4, 2
mfhi $4
mfhi $2
TAG551:
sll $2, $2, 15
sb $2, 0($2)
mfhi $1
multu $1, $2
TAG552:
sltu $4, $1, $1
lui $4, 3
srl $3, $1, 10
addu $1, $3, $4
TAG553:
sll $0, $0, 0
addu $3, $1, $1
multu $1, $1
addu $3, $1, $1
TAG554:
sll $0, $0, 0
srl $1, $3, 12
mult $1, $3
and $4, $1, $1
TAG555:
mfhi $2
mfhi $1
mflo $4
beq $1, $2, TAG556
TAG556:
sll $0, $0, 0
bne $3, $3, TAG557
srl $2, $4, 6
addiu $4, $2, 14
TAG557:
lui $4, 1
lui $2, 4
divu $2, $2
xor $4, $4, $2
TAG558:
beq $4, $4, TAG559
sll $0, $0, 0
mtlo $4
sb $4, 0($4)
TAG559:
divu $4, $4
sll $0, $0, 0
bltz $4, TAG560
sll $0, $0, 0
TAG560:
xori $4, $4, 10
mthi $4
sll $0, $0, 0
xori $2, $4, 14
TAG561:
lui $2, 6
beq $2, $2, TAG562
slti $3, $2, 15
lui $2, 14
TAG562:
bltz $2, TAG563
sll $0, $0, 0
multu $2, $2
mthi $2
TAG563:
slt $3, $2, $2
lui $4, 4
lw $3, 0($3)
sll $0, $0, 0
TAG564:
bltz $3, TAG565
div $3, $3
subu $4, $3, $3
andi $3, $3, 10
TAG565:
multu $3, $3
slti $3, $3, 12
addiu $3, $3, 5
blez $3, TAG566
TAG566:
lui $1, 14
blez $1, TAG567
sb $1, 0($3)
sltiu $3, $3, 7
TAG567:
lbu $1, 0($3)
multu $3, $3
lui $3, 9
div $3, $3
TAG568:
sll $0, $0, 0
lui $3, 3
lui $2, 15
multu $3, $3
TAG569:
srav $3, $2, $2
mult $3, $3
bgtz $2, TAG570
slti $4, $2, 12
TAG570:
mult $4, $4
and $3, $4, $4
sb $4, 0($3)
sb $4, 0($3)
TAG571:
mthi $3
lh $3, 0($3)
srlv $2, $3, $3
srav $3, $3, $3
TAG572:
bne $3, $3, TAG573
mthi $3
mthi $3
or $4, $3, $3
TAG573:
mtlo $4
lui $2, 13
mflo $4
sub $4, $4, $4
TAG574:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG575
TAG575:
addiu $2, $3, 5
and $2, $3, $2
sll $0, $0, 0
bgez $2, TAG576
TAG576:
mflo $2
addiu $2, $3, 14
sll $0, $0, 0
sltu $3, $2, $2
TAG577:
mult $3, $3
nor $2, $3, $3
lui $3, 15
sll $0, $0, 0
TAG578:
sll $0, $0, 0
mult $3, $3
mtlo $3
nor $3, $3, $3
TAG579:
and $3, $3, $3
sll $0, $0, 0
addiu $2, $3, 3
mfhi $1
TAG580:
sb $1, -225($1)
bne $1, $1, TAG581
lui $3, 4
lhu $3, -225($1)
TAG581:
mthi $3
bltz $3, TAG582
sltiu $4, $3, 3
mtlo $3
TAG582:
sltu $3, $4, $4
mtlo $3
mult $3, $4
sll $3, $3, 4
TAG583:
mtlo $3
beq $3, $3, TAG584
mthi $3
srav $4, $3, $3
TAG584:
or $1, $4, $4
bgez $1, TAG585
ori $4, $1, 11
sw $4, 0($1)
TAG585:
lb $4, 0($4)
lbu $3, 0($4)
lui $3, 14
sb $4, 0($4)
TAG586:
divu $3, $3
sll $0, $0, 0
mflo $3
blez $3, TAG587
TAG587:
sra $3, $3, 11
lh $3, 0($3)
mflo $3
ori $1, $3, 0
TAG588:
bne $1, $1, TAG589
and $3, $1, $1
slti $1, $3, 1
sra $3, $1, 3
TAG589:
subu $3, $3, $3
bne $3, $3, TAG590
mtlo $3
lui $4, 11
TAG590:
multu $4, $4
subu $1, $4, $4
bgez $1, TAG591
sltiu $4, $1, 6
TAG591:
beq $4, $4, TAG592
slti $2, $4, 14
bgez $2, TAG592
addi $1, $2, 4
TAG592:
lbu $4, 0($1)
sub $3, $4, $1
lb $4, 0($1)
lhu $3, 31($4)
TAG593:
mfhi $3
mflo $2
mfhi $1
bne $3, $3, TAG594
TAG594:
mtlo $1
sb $1, 0($1)
mfhi $4
lbu $2, 0($4)
TAG595:
and $4, $2, $2
srl $3, $4, 5
mfhi $2
lui $3, 14
TAG596:
sll $0, $0, 0
bne $3, $3, TAG597
multu $3, $3
ori $1, $3, 8
TAG597:
srl $4, $1, 7
addiu $2, $1, 6
bgez $4, TAG598
mflo $2
TAG598:
bltz $2, TAG599
multu $2, $2
lui $3, 4
blez $3, TAG599
TAG599:
srl $4, $3, 8
sll $0, $0, 0
bne $3, $2, TAG600
sh $4, 0($2)
TAG600:
multu $2, $2
mult $2, $2
mflo $2
lui $4, 7
TAG601:
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG602
sll $0, $0, 0
TAG602:
xor $4, $4, $4
lui $1, 10
beq $4, $1, TAG603
divu $4, $1
TAG603:
mthi $1
ori $2, $1, 8
slti $4, $1, 14
sltu $3, $4, $1
TAG604:
mfhi $3
bne $3, $3, TAG605
mtlo $3
sll $0, $0, 0
TAG605:
div $3, $3
mfhi $4
sh $3, 0($4)
lw $4, 0($4)
TAG606:
lui $4, 2
sll $0, $0, 0
div $1, $1
mfhi $1
TAG607:
mflo $1
blez $1, TAG608
srav $1, $1, $1
xor $3, $1, $1
TAG608:
bltz $3, TAG609
lui $3, 12
lui $4, 14
mthi $3
TAG609:
mtlo $4
sll $0, $0, 0
bgtz $4, TAG610
sll $0, $0, 0
TAG610:
mthi $4
sll $0, $0, 0
mult $3, $3
beq $3, $4, TAG611
TAG611:
mthi $3
bne $3, $3, TAG612
sll $0, $0, 0
div $3, $3
TAG612:
mflo $2
or $3, $2, $2
sll $0, $0, 0
mfhi $4
TAG613:
blez $4, TAG614
sh $4, 0($4)
lw $4, 0($4)
blez $4, TAG614
TAG614:
sh $4, 0($4)
mfhi $1
lbu $1, 0($4)
sh $1, 0($4)
TAG615:
mthi $1
bne $1, $1, TAG616
sw $1, 0($1)
sltiu $4, $1, 14
TAG616:
addiu $3, $4, 3
lui $1, 4
sb $1, 0($4)
beq $1, $3, TAG617
TAG617:
mfhi $4
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG618:
bltz $2, TAG619
lbu $4, 0($2)
beq $2, $2, TAG619
lui $2, 1
TAG619:
lui $4, 15
sll $0, $0, 0
and $4, $3, $2
sltu $2, $4, $2
TAG620:
nor $4, $2, $2
divu $2, $4
addiu $2, $2, 1
div $2, $4
TAG621:
mthi $2
sll $1, $2, 2
bltz $2, TAG622
sh $1, 0($1)
TAG622:
lh $2, 0($1)
sw $1, 0($2)
sb $2, 0($2)
sw $2, 0($2)
TAG623:
sh $2, 0($2)
lui $1, 9
mtlo $1
beq $2, $1, TAG624
TAG624:
srav $3, $1, $1
sll $0, $0, 0
or $2, $3, $3
sra $2, $1, 15
TAG625:
divu $2, $2
lhu $4, 0($2)
nor $4, $4, $4
lh $3, 0($2)
TAG626:
mthi $3
subu $1, $3, $3
beq $3, $3, TAG627
mult $1, $3
TAG627:
sw $1, 0($1)
mthi $1
sb $1, 0($1)
srlv $2, $1, $1
TAG628:
multu $2, $2
xori $2, $2, 0
mtlo $2
mflo $2
TAG629:
beq $2, $2, TAG630
and $3, $2, $2
addi $4, $2, 2
lbu $2, 0($2)
TAG630:
mult $2, $2
mfhi $4
lui $3, 11
srl $2, $3, 13
TAG631:
mtlo $2
lui $3, 3
sll $0, $0, 0
mtlo $2
TAG632:
bgez $3, TAG633
div $3, $3
div $3, $3
or $3, $3, $3
TAG633:
bne $3, $3, TAG634
or $1, $3, $3
bne $3, $3, TAG634
srl $3, $3, 14
TAG634:
subu $4, $3, $3
mflo $3
sra $2, $3, 12
sh $3, 0($2)
TAG635:
slti $1, $2, 1
multu $2, $2
lui $3, 13
slt $2, $1, $2
TAG636:
bgtz $2, TAG637
sltu $4, $2, $2
mfhi $1
bne $4, $4, TAG637
TAG637:
andi $1, $1, 1
sw $1, 0($1)
bgtz $1, TAG638
sllv $3, $1, $1
TAG638:
blez $3, TAG639
lbu $2, 0($3)
bgez $3, TAG639
mult $2, $2
TAG639:
beq $2, $2, TAG640
xor $1, $2, $2
lui $3, 14
sb $1, 0($3)
TAG640:
sh $3, 0($3)
mflo $2
sh $3, 0($3)
bne $2, $2, TAG641
TAG641:
sw $2, 0($2)
blez $2, TAG642
multu $2, $2
mflo $4
TAG642:
beq $4, $4, TAG643
mtlo $4
sw $4, 0($4)
mult $4, $4
TAG643:
sw $4, 0($4)
mtlo $4
lb $3, 0($4)
mfhi $3
TAG644:
lui $3, 7
sll $0, $0, 0
bltz $3, TAG645
xor $4, $3, $3
TAG645:
beq $4, $4, TAG646
lui $2, 11
bgez $2, TAG646
mtlo $2
TAG646:
lui $4, 15
bne $4, $2, TAG647
sll $0, $0, 0
divu $4, $2
TAG647:
beq $4, $4, TAG648
srav $2, $4, $4
div $4, $4
sw $2, 0($2)
TAG648:
blez $2, TAG649
mthi $2
divu $2, $2
bgtz $2, TAG649
TAG649:
srav $2, $2, $2
bgtz $2, TAG650
mult $2, $2
lui $1, 11
TAG650:
bgez $1, TAG651
srl $2, $1, 8
bgtz $1, TAG651
lb $2, 0($1)
TAG651:
mthi $2
bne $2, $2, TAG652
mtlo $2
bltz $2, TAG652
TAG652:
lb $2, 0($2)
sh $2, 0($2)
addiu $4, $2, 1
mtlo $2
TAG653:
ori $1, $4, 9
multu $1, $4
mthi $1
mult $1, $1
TAG654:
lbu $2, 0($1)
mthi $2
beq $1, $1, TAG655
mflo $3
TAG655:
andi $2, $3, 4
mthi $2
ori $3, $3, 3
xor $1, $3, $2
TAG656:
mthi $1
lui $1, 2
bgez $1, TAG657
addiu $3, $1, 14
TAG657:
bne $3, $3, TAG658
mflo $4
beq $4, $4, TAG658
mthi $4
TAG658:
sb $4, 0($4)
sb $4, 0($4)
lbu $3, 0($4)
sb $3, 0($4)
TAG659:
mult $3, $3
lbu $2, 0($3)
mfhi $3
sub $4, $3, $3
TAG660:
lbu $1, 0($4)
beq $1, $4, TAG661
mtlo $1
mthi $1
TAG661:
xori $1, $1, 8
addu $3, $1, $1
lhu $2, 0($3)
lbu $4, 0($3)
TAG662:
xor $4, $4, $4
mult $4, $4
subu $2, $4, $4
sw $4, 0($4)
TAG663:
xori $2, $2, 7
lui $2, 8
mflo $1
sll $0, $0, 0
TAG664:
beq $1, $1, TAG665
mult $1, $1
mtlo $1
mflo $3
TAG665:
lui $2, 10
mult $3, $3
divu $2, $2
lw $2, 0($3)
TAG666:
beq $2, $2, TAG667
mflo $4
srlv $1, $4, $4
srlv $2, $4, $4
TAG667:
xori $3, $2, 3
blez $2, TAG668
sw $3, 0($2)
sb $2, 0($3)
TAG668:
bgez $3, TAG669
mtlo $3
mult $3, $3
mtlo $3
TAG669:
mflo $3
bne $3, $3, TAG670
mtlo $3
nor $4, $3, $3
TAG670:
beq $4, $4, TAG671
mtlo $4
sh $4, 0($4)
mfhi $2
TAG671:
andi $1, $2, 3
sllv $4, $2, $1
sh $4, 0($1)
addi $4, $1, 1
TAG672:
lui $1, 7
sb $1, 0($4)
mthi $4
divu $4, $1
TAG673:
sll $0, $0, 0
mult $1, $1
mtlo $1
sll $0, $0, 0
TAG674:
lb $2, 0($3)
sb $2, 0($2)
sra $1, $2, 5
mflo $4
TAG675:
multu $4, $4
sll $0, $0, 0
bne $4, $4, TAG676
mflo $1
TAG676:
sw $1, 0($1)
bne $1, $1, TAG677
sltiu $1, $1, 14
lui $3, 3
TAG677:
sll $0, $0, 0
div $1, $3
sll $0, $0, 0
sb $3, 0($1)
TAG678:
mtlo $1
and $4, $1, $1
div $1, $4
slt $1, $1, $1
TAG679:
mflo $4
bltz $4, TAG680
sb $4, 0($4)
xor $1, $1, $1
TAG680:
add $3, $1, $1
bgez $1, TAG681
lui $3, 10
mflo $4
TAG681:
mflo $1
lb $2, 0($1)
mtlo $1
sllv $2, $4, $4
TAG682:
div $2, $2
lhu $3, 0($2)
mult $2, $3
bne $2, $3, TAG683
TAG683:
lui $4, 6
sll $0, $0, 0
sll $0, $0, 0
nor $1, $4, $4
TAG684:
mthi $1
multu $1, $1
bgtz $1, TAG685
subu $4, $1, $1
TAG685:
sw $4, 0($4)
sh $4, 0($4)
mult $4, $4
sb $4, 0($4)
TAG686:
sw $4, 0($4)
lui $3, 12
sb $3, 0($4)
mtlo $3
TAG687:
lui $3, 13
sll $0, $0, 0
divu $3, $3
mthi $3
TAG688:
beq $3, $3, TAG689
sll $0, $0, 0
bgez $3, TAG689
sh $3, 0($3)
TAG689:
addu $4, $3, $3
sll $0, $0, 0
nor $1, $3, $3
beq $4, $3, TAG690
TAG690:
mthi $1
div $1, $1
mthi $1
slti $1, $1, 15
TAG691:
lb $3, 0($1)
sll $1, $3, 9
mult $3, $1
bgtz $1, TAG692
TAG692:
slt $4, $1, $1
srav $1, $1, $1
bne $1, $4, TAG693
ori $1, $1, 0
TAG693:
lw $1, 0($1)
lh $1, 0($1)
lui $4, 9
mult $1, $1
TAG694:
mult $4, $4
lui $3, 13
mfhi $1
beq $1, $1, TAG695
TAG695:
sb $1, 0($1)
bne $1, $1, TAG696
andi $2, $1, 14
beq $1, $2, TAG696
TAG696:
mult $2, $2
bne $2, $2, TAG697
mflo $3
lui $4, 12
TAG697:
bne $4, $4, TAG698
multu $4, $4
sll $0, $0, 0
bne $4, $4, TAG698
TAG698:
subu $3, $4, $4
mtlo $4
sra $1, $4, 7
bne $3, $3, TAG699
TAG699:
sh $1, -6144($1)
srl $1, $1, 8
srl $4, $1, 14
mthi $1
TAG700:
or $1, $4, $4
beq $4, $4, TAG701
nor $2, $4, $4
sh $2, 0($4)
TAG701:
sll $3, $2, 13
mtlo $3
beq $2, $3, TAG702
lui $2, 1
TAG702:
sra $2, $2, 3
bgtz $2, TAG703
sb $2, -8192($2)
mtlo $2
TAG703:
addu $1, $2, $2
bltz $1, TAG704
sra $4, $1, 6
bne $1, $4, TAG704
TAG704:
mult $4, $4
sb $4, -256($4)
mthi $4
lbu $2, -256($4)
TAG705:
sw $2, 0($2)
lui $3, 5
srav $4, $2, $3
mult $2, $2
TAG706:
mult $4, $4
mult $4, $4
bgtz $4, TAG707
lh $2, 0($4)
TAG707:
mflo $2
sh $2, 0($2)
srlv $2, $2, $2
mfhi $4
TAG708:
blez $4, TAG709
lw $1, 0($4)
multu $1, $4
sw $1, 0($1)
TAG709:
srlv $4, $1, $1
sw $4, 0($1)
sub $4, $1, $4
sb $4, 0($1)
TAG710:
mflo $2
sb $2, 0($4)
lhu $4, 0($4)
srl $3, $2, 12
TAG711:
bltz $3, TAG712
sra $3, $3, 7
mult $3, $3
bne $3, $3, TAG712
TAG712:
mfhi $2
blez $3, TAG713
srl $1, $3, 6
sw $1, 0($3)
TAG713:
sw $1, 0($1)
lui $3, 9
mflo $1
sll $0, $0, 0
TAG714:
multu $1, $1
sh $1, 0($1)
mtlo $1
sub $3, $1, $1
TAG715:
mtlo $3
lui $1, 13
lhu $3, 0($3)
mthi $1
TAG716:
multu $3, $3
lb $3, 0($3)
sra $2, $3, 8
sllv $2, $3, $3
TAG717:
mfhi $2
mthi $2
beq $2, $2, TAG718
or $3, $2, $2
TAG718:
sltiu $1, $3, 7
multu $3, $3
mtlo $3
bgez $1, TAG719
TAG719:
sltiu $1, $1, 0
sllv $4, $1, $1
bne $1, $4, TAG720
ori $2, $1, 3
TAG720:
blez $2, TAG721
sb $2, 0($2)
mthi $2
bltz $2, TAG721
TAG721:
sb $2, 0($2)
bgtz $2, TAG722
divu $2, $2
lui $4, 1
TAG722:
sw $4, 0($4)
bgtz $4, TAG723
slt $3, $4, $4
mthi $4
TAG723:
mtlo $3
multu $3, $3
slti $3, $3, 3
mthi $3
TAG724:
beq $3, $3, TAG725
mfhi $4
lui $3, 8
andi $3, $4, 2
TAG725:
bne $3, $3, TAG726
mult $3, $3
mflo $1
sb $3, 0($1)
TAG726:
mtlo $1
nor $3, $1, $1
lbu $2, 2($3)
lh $1, 2($3)
TAG727:
bne $1, $1, TAG728
sb $1, -256($1)
sh $1, -256($1)
lb $3, -256($1)
TAG728:
mult $3, $3
mflo $3
lw $1, 0($3)
sw $1, 0($3)
TAG729:
sll $0, $0, 0
mtlo $1
nor $2, $2, $2
mfhi $4
TAG730:
bltz $4, TAG731
or $3, $4, $4
sw $3, 0($4)
mfhi $1
TAG731:
bgez $1, TAG732
lb $4, 0($1)
mtlo $1
blez $1, TAG732
TAG732:
srav $1, $4, $4
srlv $1, $4, $1
lui $3, 2
bltz $3, TAG733
TAG733:
addu $3, $3, $3
sll $0, $0, 0
lui $4, 10
addu $4, $3, $4
TAG734:
bgez $4, TAG735
mtlo $4
mflo $1
mthi $4
TAG735:
mult $1, $1
mtlo $1
and $4, $1, $1
mult $4, $4
TAG736:
mthi $4
multu $4, $4
mfhi $4
lb $1, 0($4)
TAG737:
mult $1, $1
lw $4, 0($1)
andi $1, $4, 3
bgtz $1, TAG738
TAG738:
multu $1, $1
sll $4, $1, 13
blez $4, TAG739
mtlo $1
TAG739:
addu $2, $4, $4
lui $3, 4
lui $4, 7
bltz $3, TAG740
TAG740:
sll $0, $0, 0
mfhi $2
lui $2, 7
beq $2, $2, TAG741
TAG741:
srlv $3, $2, $2
mtlo $2
mthi $3
sll $0, $0, 0
TAG742:
multu $3, $3
bne $3, $3, TAG743
sra $4, $3, 12
lui $3, 10
TAG743:
multu $3, $3
lui $4, 6
bne $4, $4, TAG744
sll $4, $3, 0
TAG744:
mthi $4
srav $2, $4, $4
subu $4, $4, $4
beq $4, $2, TAG745
TAG745:
and $1, $4, $4
sub $3, $1, $1
bne $3, $1, TAG746
lhu $2, 0($1)
TAG746:
nor $1, $2, $2
blez $1, TAG747
subu $1, $1, $2
bgtz $1, TAG747
TAG747:
sll $3, $1, 12
srav $2, $3, $1
divu $3, $3
beq $1, $3, TAG748
TAG748:
mflo $3
bne $2, $2, TAG749
mthi $3
lui $2, 5
TAG749:
sll $0, $0, 0
sll $0, $0, 0
srlv $3, $2, $2
div $3, $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop