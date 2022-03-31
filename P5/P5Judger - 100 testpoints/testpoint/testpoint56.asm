ori $1, $0, 1
ori $2, $0, 2
ori $3, $0, 14
ori $4, $0, 5
sw $2, 0($0)
sw $2, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $1, 16($0)
sw $2, 20($0)
sw $1, 24($0)
sw $3, 28($0)
sw $3, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $2, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $2, 88($0)
sw $2, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $2, 124($0)
bne $2, $2, TAG1
mtlo $2
bltz $2, TAG1
addu $1, $2, $2
TAG1:
sh $1, 0($1)
addiu $4, $1, 15
mtlo $1
mtlo $1
TAG2:
sb $4, 0($4)
mfhi $1
multu $1, $1
bltz $4, TAG3
TAG3:
lui $2, 2
nor $3, $2, $2
bltz $3, TAG4
mtlo $3
TAG4:
bgez $3, TAG5
sll $0, $0, 0
mflo $2
bgtz $3, TAG5
TAG5:
nor $3, $2, $2
beq $3, $3, TAG6
lui $2, 13
lui $3, 14
TAG6:
lui $3, 0
lui $4, 13
multu $4, $3
mfhi $4
TAG7:
lb $2, 0($4)
beq $4, $4, TAG8
sll $4, $4, 12
sw $2, 0($4)
TAG8:
xori $2, $4, 1
lui $2, 11
beq $2, $4, TAG9
lui $4, 5
TAG9:
sll $0, $0, 0
bne $4, $4, TAG10
lui $4, 0
bne $4, $4, TAG10
TAG10:
addu $2, $4, $4
sub $1, $4, $4
lui $2, 4
mthi $4
TAG11:
sll $0, $0, 0
mthi $2
sll $1, $2, 13
mfhi $2
TAG12:
mthi $2
sra $1, $2, 12
sll $0, $0, 0
lw $1, 0($1)
TAG13:
multu $1, $1
bgez $1, TAG14
mthi $1
sb $1, 0($1)
TAG14:
addu $1, $1, $1
divu $1, $1
lbu $2, 0($1)
slti $4, $1, 3
TAG15:
mthi $4
mfhi $4
mtlo $4
mtlo $4
TAG16:
lui $3, 6
sll $0, $0, 0
lbu $4, 0($1)
srav $3, $3, $3
TAG17:
lui $1, 3
lui $3, 4
addiu $4, $1, 1
subu $4, $1, $4
TAG18:
addu $3, $4, $4
mflo $2
sw $2, 2($3)
mfhi $2
TAG19:
beq $2, $2, TAG20
lbu $1, 0($2)
sb $2, 0($2)
sra $3, $1, 10
TAG20:
sb $3, 2($3)
bne $3, $3, TAG21
sh $3, 2($3)
sw $3, 2($3)
TAG21:
bne $3, $3, TAG22
lui $1, 3
mtlo $3
and $2, $3, $1
TAG22:
mflo $2
beq $2, $2, TAG23
lw $4, 2($2)
bne $4, $4, TAG23
TAG23:
and $1, $4, $4
lhu $2, 2($1)
bltz $1, TAG24
srlv $4, $4, $4
TAG24:
sb $4, 0($4)
subu $2, $4, $4
blez $2, TAG25
lui $4, 13
TAG25:
slti $4, $4, 7
lui $3, 8
lui $1, 5
mult $3, $4
TAG26:
div $1, $1
sll $0, $0, 0
mthi $4
srav $1, $4, $4
TAG27:
beq $1, $1, TAG28
multu $1, $1
lw $4, 0($1)
lh $3, 0($1)
TAG28:
mflo $4
div $3, $3
bgez $4, TAG29
mflo $1
TAG29:
divu $1, $1
sll $2, $1, 7
lui $3, 12
mflo $3
TAG30:
mtlo $3
sb $3, 0($3)
and $2, $3, $3
sb $2, 0($2)
TAG31:
lui $2, 11
lui $2, 15
subu $4, $2, $2
sll $0, $0, 0
TAG32:
sw $4, 0($4)
mult $4, $4
bltz $4, TAG33
sh $4, 0($4)
TAG33:
bgtz $4, TAG34
or $2, $4, $4
beq $4, $4, TAG34
mtlo $2
TAG34:
lh $3, 0($2)
mfhi $1
mtlo $2
lui $4, 7
TAG35:
sll $0, $0, 0
bne $4, $4, TAG36
mult $1, $1
xori $2, $4, 8
TAG36:
sra $1, $2, 15
mflo $4
sltiu $2, $2, 9
mtlo $2
TAG37:
sw $2, 0($2)
sw $2, 0($2)
ori $3, $2, 6
bne $2, $2, TAG38
TAG38:
mtlo $3
sltu $1, $3, $3
lhu $1, 0($1)
mtlo $1
TAG39:
nor $2, $1, $1
xori $2, $1, 5
sb $1, 0($1)
mtlo $2
TAG40:
beq $2, $2, TAG41
mflo $2
lb $1, 0($2)
lui $4, 15
TAG41:
mflo $2
blez $4, TAG42
lh $1, 0($4)
lui $4, 4
TAG42:
beq $4, $4, TAG43
mflo $2
lbu $4, 0($4)
beq $4, $4, TAG43
TAG43:
lui $3, 13
mfhi $2
beq $4, $2, TAG44
lhu $4, 0($2)
TAG44:
mfhi $1
ori $2, $1, 15
addu $4, $2, $1
lb $1, 0($2)
TAG45:
sh $1, 0($1)
xori $1, $1, 7
lui $4, 0
sll $2, $4, 2
TAG46:
bne $2, $2, TAG47
multu $2, $2
bne $2, $2, TAG47
slti $2, $2, 7
TAG47:
sb $2, 0($2)
subu $1, $2, $2
blez $1, TAG48
mfhi $3
TAG48:
lh $4, 0($3)
div $4, $4
lui $1, 7
beq $1, $4, TAG49
TAG49:
sll $0, $0, 0
mult $1, $1
sll $0, $0, 0
mthi $1
TAG50:
mtlo $1
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG51:
mfhi $1
sll $0, $0, 0
nor $2, $1, $4
sll $0, $0, 0
TAG52:
multu $2, $2
ori $1, $2, 10
and $4, $1, $2
xori $3, $1, 8
TAG53:
mfhi $2
srl $3, $3, 15
sll $0, $0, 0
bne $3, $2, TAG54
TAG54:
mult $3, $3
sll $0, $0, 0
xori $2, $3, 10
divu $3, $3
TAG55:
subu $2, $2, $2
beq $2, $2, TAG56
addi $4, $2, 8
mtlo $4
TAG56:
lui $1, 8
sll $0, $0, 0
ori $4, $1, 0
sll $0, $0, 0
TAG57:
blez $4, TAG58
mtlo $4
srlv $2, $4, $4
mthi $2
TAG58:
sll $0, $0, 0
xor $2, $2, $2
slt $3, $2, $2
lhu $1, 0($2)
TAG59:
lui $2, 5
sb $1, -256($1)
sltu $3, $1, $2
lhu $2, -256($1)
TAG60:
ori $1, $2, 10
xori $2, $2, 12
mtlo $2
srlv $4, $1, $2
TAG61:
lui $2, 11
andi $3, $4, 15
sll $4, $4, 5
sll $2, $4, 3
TAG62:
beq $2, $2, TAG63
sb $2, 0($2)
lhu $3, 0($2)
srlv $4, $2, $2
TAG63:
bgez $4, TAG64
mthi $4
xori $2, $4, 4
mtlo $2
TAG64:
lui $1, 7
bne $1, $2, TAG65
multu $1, $2
mflo $1
TAG65:
divu $1, $1
bltz $1, TAG66
lui $1, 8
beq $1, $1, TAG66
TAG66:
sll $0, $0, 0
beq $1, $1, TAG67
andi $2, $1, 12
srlv $3, $1, $2
TAG67:
mult $3, $3
lui $4, 0
lui $2, 6
sll $0, $0, 0
TAG68:
mthi $2
srlv $1, $2, $2
lui $4, 10
lui $2, 15
TAG69:
sll $0, $0, 0
lb $4, 0($3)
mult $4, $2
bltz $4, TAG70
TAG70:
lw $1, 0($4)
bne $4, $4, TAG71
lw $4, 0($4)
lbu $2, -256($4)
TAG71:
mflo $1
beq $1, $1, TAG72
mfhi $4
lui $2, 9
TAG72:
lb $4, 0($2)
bgtz $2, TAG73
sw $2, 0($2)
sh $4, 0($2)
TAG73:
mthi $4
lui $4, 2
mtlo $4
div $4, $4
TAG74:
multu $4, $4
lui $2, 7
xori $2, $2, 11
mflo $3
TAG75:
mtlo $3
multu $3, $3
lw $1, 0($3)
lui $3, 9
TAG76:
multu $3, $3
mtlo $3
lui $2, 5
sll $0, $0, 0
TAG77:
sll $0, $0, 0
multu $4, $4
bgez $2, TAG78
xori $4, $4, 14
TAG78:
lui $4, 7
xor $2, $4, $4
add $1, $2, $2
mflo $3
TAG79:
sltu $2, $3, $3
beq $3, $3, TAG80
mflo $1
lb $1, 0($1)
TAG80:
mult $1, $1
lb $4, 0($1)
sh $1, 0($4)
lui $1, 2
TAG81:
beq $1, $1, TAG82
multu $1, $1
ori $3, $1, 13
lhu $3, 0($3)
TAG82:
mtlo $3
xor $4, $3, $3
sll $4, $4, 1
mult $4, $3
TAG83:
mult $4, $4
mult $4, $4
sw $4, 0($4)
srav $3, $4, $4
TAG84:
bne $3, $3, TAG85
mthi $3
mflo $4
mfhi $2
TAG85:
sltiu $2, $2, 13
mthi $2
mthi $2
sltu $1, $2, $2
TAG86:
srl $2, $1, 2
beq $2, $1, TAG87
mflo $3
blez $1, TAG87
TAG87:
sb $3, 0($3)
multu $3, $3
blez $3, TAG88
multu $3, $3
TAG88:
mfhi $4
bgez $4, TAG89
mtlo $3
blez $3, TAG89
TAG89:
lui $2, 10
lh $3, 0($4)
add $2, $3, $2
blez $4, TAG90
TAG90:
srav $1, $2, $2
sra $3, $1, 0
mthi $1
bne $3, $1, TAG91
TAG91:
sll $0, $0, 0
lui $2, 5
bltz $2, TAG92
mfhi $2
TAG92:
nor $3, $2, $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG93:
div $2, $2
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG94:
mult $2, $2
lui $4, 9
mflo $1
lui $4, 6
TAG95:
sll $0, $0, 0
srav $3, $4, $4
mthi $4
mfhi $1
TAG96:
sltiu $2, $1, 12
lh $2, 0($2)
sll $0, $0, 0
lui $1, 12
TAG97:
mult $1, $1
mfhi $4
sra $1, $1, 11
sb $1, -384($1)
TAG98:
mfhi $2
lh $4, -384($1)
div $4, $4
lui $2, 15
TAG99:
beq $2, $2, TAG100
mult $2, $2
srlv $4, $2, $2
mflo $4
TAG100:
bgtz $4, TAG101
multu $4, $4
lui $1, 8
mflo $2
TAG101:
beq $2, $2, TAG102
lui $1, 0
srlv $3, $2, $2
bltz $3, TAG102
TAG102:
sllv $1, $3, $3
sll $0, $0, 0
subu $1, $1, $2
sll $0, $0, 0
TAG103:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
mthi $1
TAG104:
sll $0, $0, 0
lb $1, 0($4)
mfhi $1
addiu $4, $4, 5
TAG105:
sll $0, $0, 0
multu $4, $4
bgtz $4, TAG106
slti $4, $2, 11
TAG106:
sw $4, 0($4)
beq $4, $4, TAG107
mthi $4
div $4, $4
TAG107:
sw $4, 0($4)
sh $4, 0($4)
mult $4, $4
and $3, $4, $4
TAG108:
lui $2, 8
beq $3, $2, TAG109
mult $2, $2
srl $2, $2, 2
TAG109:
lui $3, 8
sllv $2, $3, $3
mfhi $1
bgtz $2, TAG110
TAG110:
mtlo $1
sb $1, 0($1)
beq $1, $1, TAG111
mthi $1
TAG111:
multu $1, $1
mflo $2
bgez $1, TAG112
subu $2, $1, $2
TAG112:
addiu $4, $2, 6
mfhi $3
mfhi $1
div $1, $4
TAG113:
mthi $1
blez $1, TAG114
lui $1, 6
srlv $4, $1, $1
TAG114:
div $4, $4
lh $4, 4026($4)
beq $4, $4, TAG115
mult $4, $4
TAG115:
mthi $4
lbu $1, 0($4)
mfhi $1
mfhi $3
TAG116:
nor $1, $3, $3
mthi $1
mult $1, $3
mult $1, $3
TAG117:
mtlo $1
mult $1, $1
addu $4, $1, $1
andi $1, $1, 11
TAG118:
sb $1, 0($1)
or $2, $1, $1
bgtz $2, TAG119
sb $1, 0($2)
TAG119:
lb $4, 0($2)
sb $2, 0($4)
sra $1, $4, 1
addiu $3, $4, 11
TAG120:
sb $3, 0($3)
bne $3, $3, TAG121
mfhi $3
sb $3, 0($3)
TAG121:
lbu $3, 0($3)
mfhi $3
sh $3, 0($3)
bne $3, $3, TAG122
TAG122:
mthi $3
lb $2, 0($3)
srav $2, $3, $3
xor $1, $2, $3
TAG123:
beq $1, $1, TAG124
andi $1, $1, 14
bgtz $1, TAG124
sub $4, $1, $1
TAG124:
sb $4, 0($4)
nor $3, $4, $4
bgez $3, TAG125
sh $3, 12($3)
TAG125:
mtlo $3
beq $3, $3, TAG126
mflo $1
mtlo $1
TAG126:
sll $0, $0, 0
lw $1, 12($1)
addiu $3, $1, 13
lui $1, 12
TAG127:
sra $1, $1, 0
lui $2, 1
divu $1, $1
mthi $1
TAG128:
bne $2, $2, TAG129
mflo $2
or $2, $2, $2
sb $2, 0($2)
TAG129:
beq $2, $2, TAG130
xor $3, $2, $2
lui $2, 6
multu $2, $2
TAG130:
sra $4, $2, 6
mtlo $2
sltiu $1, $4, 1
sb $2, 0($2)
TAG131:
sb $1, 0($1)
sb $1, 0($1)
divu $1, $1
mfhi $3
TAG132:
sb $3, 0($3)
sh $3, 0($3)
beq $3, $3, TAG133
lui $3, 12
TAG133:
sll $0, $0, 0
mthi $3
mtlo $3
mflo $4
TAG134:
addiu $2, $4, 2
sllv $4, $2, $2
bne $2, $4, TAG135
sll $0, $0, 0
TAG135:
beq $3, $3, TAG136
mfhi $4
div $3, $4
lui $3, 3
TAG136:
lui $4, 2
beq $4, $3, TAG137
sll $0, $0, 0
bgez $4, TAG137
TAG137:
divu $4, $4
lui $1, 2
bne $1, $1, TAG138
lui $3, 8
TAG138:
sll $4, $3, 9
sll $0, $0, 0
lui $4, 1
mult $3, $4
TAG139:
mthi $4
mflo $2
mflo $4
bgtz $4, TAG140
TAG140:
lui $1, 10
mfhi $3
srl $4, $4, 5
lui $4, 6
TAG141:
bne $4, $4, TAG142
sll $2, $4, 10
sll $0, $0, 0
bne $2, $1, TAG142
TAG142:
sll $0, $0, 0
bltz $3, TAG143
multu $3, $1
bgez $3, TAG143
TAG143:
mtlo $3
sll $0, $0, 0
blez $3, TAG144
sll $0, $0, 0
TAG144:
blez $3, TAG145
mfhi $2
sra $3, $3, 10
lui $4, 7
TAG145:
sll $0, $0, 0
xor $2, $4, $4
bltz $2, TAG146
mtlo $4
TAG146:
bne $2, $2, TAG147
sw $2, 0($2)
addi $3, $2, 15
mult $3, $2
TAG147:
nor $4, $3, $3
xor $4, $4, $3
bne $3, $3, TAG148
divu $4, $4
TAG148:
bne $4, $4, TAG149
mthi $4
mthi $4
blez $4, TAG149
TAG149:
sltiu $3, $4, 7
mflo $3
xor $4, $3, $4
bne $3, $3, TAG150
TAG150:
divu $4, $4
sw $4, 2($4)
bgez $4, TAG151
lh $1, 2($4)
TAG151:
multu $1, $1
lui $4, 1
div $1, $1
lui $1, 9
TAG152:
lui $1, 7
srl $1, $1, 8
lhu $1, -1792($1)
mflo $2
TAG153:
sb $2, 0($2)
srlv $1, $2, $2
mult $1, $2
bgez $2, TAG154
TAG154:
sh $1, 0($1)
mfhi $1
mthi $1
bne $1, $1, TAG155
TAG155:
multu $1, $1
lh $3, 0($1)
bltz $3, TAG156
slti $4, $1, 8
TAG156:
lbu $1, 0($4)
lui $2, 10
addiu $3, $4, 11
lui $2, 11
TAG157:
sll $0, $0, 0
xori $2, $2, 4
lui $4, 1
sll $0, $0, 0
TAG158:
multu $4, $4
mfhi $1
mthi $4
sb $1, 0($1)
TAG159:
mflo $1
lui $1, 13
sll $4, $1, 5
bne $1, $1, TAG160
TAG160:
srlv $2, $4, $4
sltiu $2, $4, 11
bgez $2, TAG161
mfhi $1
TAG161:
mtlo $1
lui $1, 5
blez $1, TAG162
sllv $3, $1, $1
TAG162:
lui $1, 14
divu $3, $3
mfhi $4
bne $4, $4, TAG163
TAG163:
lui $4, 13
multu $4, $4
subu $3, $4, $4
addiu $4, $4, 1
TAG164:
sll $0, $0, 0
div $4, $1
mfhi $1
sll $0, $0, 0
TAG165:
sllv $4, $1, $1
subu $2, $1, $4
divu $2, $2
bne $1, $2, TAG166
TAG166:
mthi $2
beq $2, $2, TAG167
sll $0, $0, 0
mflo $1
TAG167:
sll $0, $0, 0
addiu $1, $1, 0
mfhi $1
div $1, $1
TAG168:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG169:
mfhi $3
mtlo $3
lbu $1, 0($3)
sb $3, 0($1)
TAG170:
beq $1, $1, TAG171
sllv $3, $1, $1
nor $2, $1, $1
sb $3, 0($2)
TAG171:
lbu $1, 0($2)
mflo $3
bltz $2, TAG172
mthi $3
TAG172:
lw $3, 0($3)
mfhi $3
mflo $2
mtlo $3
TAG173:
nor $1, $2, $2
multu $1, $2
mthi $2
mflo $1
TAG174:
mflo $4
sub $2, $4, $1
sb $1, 0($2)
lh $4, 0($1)
TAG175:
sll $0, $0, 0
beq $4, $4, TAG176
lhu $2, -256($4)
bgtz $4, TAG176
TAG176:
lui $4, 8
bgtz $4, TAG177
addiu $1, $4, 14
beq $2, $2, TAG177
TAG177:
multu $1, $1
lui $1, 12
sll $0, $0, 0
mfhi $4
TAG178:
bne $4, $4, TAG179
sra $2, $4, 7
beq $4, $2, TAG179
multu $2, $4
TAG179:
blez $2, TAG180
srlv $2, $2, $2
xori $4, $2, 5
mfhi $2
TAG180:
lb $2, 0($2)
add $3, $2, $2
sb $2, 0($2)
mult $3, $2
TAG181:
mflo $2
bne $3, $2, TAG182
multu $3, $3
bne $2, $2, TAG182
TAG182:
mtlo $2
mflo $1
lui $3, 1
lbu $4, 0($2)
TAG183:
lui $1, 12
sll $0, $0, 0
lui $3, 12
div $4, $1
TAG184:
divu $3, $3
blez $3, TAG185
lui $3, 5
lui $3, 10
TAG185:
sll $0, $0, 0
srlv $1, $3, $3
mfhi $2
mult $3, $3
TAG186:
lh $4, 0($2)
lui $2, 5
sra $2, $4, 4
xori $1, $4, 13
TAG187:
bne $1, $1, TAG188
slti $3, $1, 6
mfhi $2
xor $2, $3, $3
TAG188:
sllv $3, $2, $2
ori $3, $3, 8
lbu $3, 0($3)
srlv $2, $3, $2
TAG189:
beq $2, $2, TAG190
divu $2, $2
sh $2, 0($2)
lui $2, 7
TAG190:
xori $2, $2, 0
sb $2, 0($2)
bgtz $2, TAG191
multu $2, $2
TAG191:
sb $2, 0($2)
lb $4, 0($2)
srlv $2, $4, $2
lui $1, 5
TAG192:
sll $0, $0, 0
mtlo $1
bltz $1, TAG193
slt $3, $1, $1
TAG193:
mfhi $4
slt $4, $3, $4
lhu $4, 0($4)
addu $2, $4, $4
TAG194:
nor $4, $2, $2
mthi $2
mtlo $4
mflo $3
TAG195:
beq $3, $3, TAG196
div $3, $3
srav $4, $3, $3
sw $4, 0($4)
TAG196:
mtlo $4
mfhi $1
blez $4, TAG197
addu $4, $1, $1
TAG197:
beq $4, $4, TAG198
mtlo $4
lw $3, 0($4)
lui $1, 6
TAG198:
sltiu $1, $1, 2
sb $1, 0($1)
mthi $1
div $1, $1
TAG199:
mthi $1
mfhi $1
mthi $1
lui $2, 9
TAG200:
addiu $3, $2, 3
mtlo $2
mfhi $3
andi $3, $2, 1
TAG201:
mult $3, $3
multu $3, $3
mfhi $1
lhu $1, 0($1)
TAG202:
mflo $3
mthi $3
srlv $3, $3, $1
multu $3, $3
TAG203:
bne $3, $3, TAG204
multu $3, $3
blez $3, TAG204
lhu $1, 0($3)
TAG204:
sll $2, $1, 0
lbu $4, -256($2)
mfhi $1
mtlo $1
TAG205:
mult $1, $1
sltiu $1, $1, 6
bne $1, $1, TAG206
sb $1, 0($1)
TAG206:
sb $1, 0($1)
mflo $1
beq $1, $1, TAG207
lhu $2, 0($1)
TAG207:
xor $2, $2, $2
mthi $2
srl $1, $2, 6
lbu $3, 0($2)
TAG208:
sra $4, $3, 15
lui $2, 7
beq $2, $3, TAG209
mfhi $3
TAG209:
mult $3, $3
bne $3, $3, TAG210
andi $2, $3, 5
lui $4, 0
TAG210:
lui $1, 0
ori $1, $1, 6
mfhi $1
bgez $4, TAG211
TAG211:
sllv $2, $1, $1
sll $1, $2, 2
sw $1, 0($1)
blez $1, TAG212
TAG212:
sw $1, 0($1)
mtlo $1
lui $3, 2
sll $0, $0, 0
TAG213:
sw $2, 0($2)
lh $3, 0($2)
sh $2, 0($3)
sh $2, 0($3)
TAG214:
multu $3, $3
lbu $2, 0($3)
lui $1, 15
bne $1, $2, TAG215
TAG215:
mthi $1
subu $4, $1, $1
bgez $1, TAG216
mult $4, $4
TAG216:
lhu $3, 0($4)
lui $1, 4
lui $3, 11
lh $1, 0($4)
TAG217:
mthi $1
lhu $2, 0($1)
mult $2, $2
sw $2, 0($1)
TAG218:
mfhi $1
or $4, $2, $2
sub $2, $4, $1
lb $1, 0($1)
TAG219:
bne $1, $1, TAG220
xori $3, $1, 12
lui $3, 12
lbu $2, 0($1)
TAG220:
srlv $4, $2, $2
sh $4, 0($4)
slti $4, $4, 10
lbu $2, 0($4)
TAG221:
beq $2, $2, TAG222
subu $2, $2, $2
sw $2, 0($2)
mtlo $2
TAG222:
lui $1, 14
addiu $1, $1, 7
slt $4, $1, $1
mfhi $2
TAG223:
srav $4, $2, $2
bne $4, $4, TAG224
mthi $4
lui $2, 12
TAG224:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG225
TAG225:
mfhi $2
mult $2, $2
lbu $4, -144($2)
sh $2, -144($2)
TAG226:
mflo $1
addi $3, $4, 7
srlv $3, $4, $1
addu $2, $1, $3
TAG227:
addiu $1, $2, 1
bne $1, $1, TAG228
div $2, $1
mthi $2
TAG228:
mthi $1
beq $1, $1, TAG229
mtlo $1
lui $2, 12
TAG229:
mtlo $2
bgtz $2, TAG230
lui $3, 13
mtlo $2
TAG230:
xori $1, $3, 4
bltz $1, TAG231
mflo $2
mtlo $1
TAG231:
bne $2, $2, TAG232
multu $2, $2
lui $2, 14
blez $2, TAG232
TAG232:
lui $4, 5
lui $2, 13
subu $4, $2, $2
mflo $4
TAG233:
sll $0, $0, 0
beq $4, $4, TAG234
div $4, $4
mfhi $1
TAG234:
lui $2, 1
sll $0, $0, 0
mfhi $3
mfhi $1
TAG235:
andi $3, $1, 5
multu $3, $1
sh $1, 0($3)
bne $3, $3, TAG236
TAG236:
sw $3, 0($3)
mflo $3
sllv $3, $3, $3
sll $1, $3, 11
TAG237:
srl $3, $1, 8
sh $3, 0($1)
srl $1, $1, 4
mflo $4
TAG238:
sllv $4, $4, $4
bne $4, $4, TAG239
mult $4, $4
sw $4, 0($4)
TAG239:
and $4, $4, $4
andi $3, $4, 10
lui $3, 6
sh $3, 0($4)
TAG240:
lui $3, 0
sllv $4, $3, $3
mflo $4
srlv $4, $4, $4
TAG241:
subu $2, $4, $4
ori $3, $2, 6
sh $3, 0($3)
and $4, $4, $2
TAG242:
blez $4, TAG243
andi $3, $4, 12
lhu $3, 0($4)
srl $2, $4, 3
TAG243:
lw $1, 0($2)
slti $2, $2, 2
div $1, $2
beq $1, $1, TAG244
TAG244:
sb $2, 0($2)
blez $2, TAG245
lbu $2, 0($2)
bne $2, $2, TAG245
TAG245:
addu $3, $2, $2
bne $2, $3, TAG246
lb $1, 0($2)
mflo $3
TAG246:
mflo $1
mflo $2
mflo $1
lb $2, 0($1)
TAG247:
bne $2, $2, TAG248
lh $2, 0($2)
mthi $2
mfhi $2
TAG248:
sll $0, $0, 0
addiu $4, $2, 15
beq $1, $2, TAG249
sb $2, -271($4)
TAG249:
multu $4, $4
mtlo $4
sh $4, -271($4)
bgez $4, TAG250
TAG250:
sll $0, $0, 0
bltz $1, TAG251
xor $4, $4, $1
mthi $4
TAG251:
bne $4, $4, TAG252
mthi $4
mfhi $1
slti $3, $1, 5
TAG252:
mfhi $2
mflo $4
lui $3, 2
sll $0, $0, 0
TAG253:
mthi $3
sll $0, $0, 0
addiu $3, $3, 4
nor $2, $3, $3
TAG254:
sll $0, $0, 0
mfhi $1
lui $2, 1
mtlo $1
TAG255:
sll $2, $2, 9
lui $4, 2
mthi $2
mfhi $1
TAG256:
multu $1, $1
andi $3, $1, 2
addu $1, $3, $3
bgtz $1, TAG257
TAG257:
sll $3, $1, 14
mult $3, $3
lui $1, 6
lhu $2, 0($3)
TAG258:
sllv $2, $2, $2
xor $2, $2, $2
blez $2, TAG259
mflo $3
TAG259:
mthi $3
beq $3, $3, TAG260
mflo $2
lui $3, 9
TAG260:
bgez $3, TAG261
mfhi $4
bgez $4, TAG261
sb $4, 0($3)
TAG261:
sll $4, $4, 1
lui $3, 4
bltz $4, TAG262
sb $4, 0($4)
TAG262:
mfhi $2
bgez $2, TAG263
sll $0, $0, 0
add $1, $3, $3
TAG263:
lui $4, 1
lui $3, 0
sllv $1, $4, $3
addiu $1, $1, 10
TAG264:
sll $0, $0, 0
bgtz $1, TAG265
div $1, $1
sltu $2, $1, $1
TAG265:
bltz $2, TAG266
and $4, $2, $2
mtlo $4
lui $2, 14
TAG266:
addiu $4, $2, 0
div $2, $2
lui $2, 7
bgez $2, TAG267
TAG267:
lui $4, 7
mfhi $4
mult $4, $4
sb $2, 0($4)
TAG268:
sb $4, 0($4)
mtlo $4
mult $4, $4
sb $4, 0($4)
TAG269:
mfhi $1
bne $1, $1, TAG270
mfhi $2
or $4, $4, $4
TAG270:
sb $4, 0($4)
sh $4, 0($4)
ori $1, $4, 7
sltiu $2, $1, 4
TAG271:
addiu $2, $2, 15
xori $2, $2, 2
mtlo $2
bne $2, $2, TAG272
TAG272:
mfhi $3
bgez $2, TAG273
multu $2, $3
xori $4, $3, 4
TAG273:
multu $4, $4
addi $4, $4, 11
bltz $4, TAG274
div $4, $4
TAG274:
multu $4, $4
mthi $4
mflo $2
mfhi $2
TAG275:
mtlo $2
mtlo $2
xor $3, $2, $2
bne $3, $2, TAG276
TAG276:
lbu $4, 0($3)
lui $2, 5
lui $3, 5
sll $0, $0, 0
TAG277:
beq $3, $3, TAG278
mflo $2
sb $3, 0($3)
lui $1, 11
TAG278:
beq $1, $1, TAG279
mthi $1
beq $1, $1, TAG279
lui $3, 7
TAG279:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
bne $3, $3, TAG280
TAG280:
sll $0, $0, 0
blez $3, TAG281
sll $0, $0, 0
slt $1, $3, $3
TAG281:
or $4, $1, $1
lui $1, 15
sll $0, $0, 0
mtlo $1
TAG282:
mfhi $1
mflo $4
blez $4, TAG283
mtlo $4
TAG283:
beq $4, $4, TAG284
sll $0, $0, 0
mtlo $4
bgez $4, TAG284
TAG284:
lui $4, 13
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
TAG285:
divu $1, $1
div $1, $1
mflo $1
mtlo $1
TAG286:
addiu $4, $1, 1
blez $4, TAG287
mthi $4
lui $2, 13
TAG287:
lui $4, 6
mtlo $4
bgtz $4, TAG288
mtlo $4
TAG288:
mfhi $3
lui $3, 7
divu $4, $3
lui $2, 7
TAG289:
mflo $4
mflo $1
slti $2, $2, 6
mult $2, $2
TAG290:
srlv $2, $2, $2
sh $2, 0($2)
beq $2, $2, TAG291
mthi $2
TAG291:
lhu $2, 0($2)
lbu $1, 0($2)
lui $2, 13
ori $2, $2, 15
TAG292:
sll $0, $0, 0
sra $1, $2, 3
sltiu $4, $1, 5
lui $4, 9
TAG293:
sllv $4, $4, $4
addiu $3, $4, 1
mtlo $4
nor $2, $4, $4
TAG294:
nor $2, $2, $2
sll $0, $0, 0
divu $2, $2
sll $0, $0, 0
TAG295:
sra $4, $2, 7
sh $2, -4608($4)
blez $4, TAG296
sw $4, -4608($4)
TAG296:
mtlo $4
bne $4, $4, TAG297
mflo $4
addiu $1, $4, 9
TAG297:
blez $1, TAG298
mthi $1
mfhi $3
slt $2, $3, $1
TAG298:
bgez $2, TAG299
lui $2, 14
lui $2, 11
sb $2, 0($2)
TAG299:
bgtz $2, TAG300
sra $4, $2, 14
sll $2, $4, 12
beq $2, $4, TAG300
TAG300:
multu $2, $2
sll $0, $0, 0
lui $2, 9
sll $0, $0, 0
TAG301:
subu $3, $2, $2
lui $4, 0
mfhi $2
sb $2, 0($3)
TAG302:
beq $2, $2, TAG303
mthi $2
sllv $3, $2, $2
bltz $2, TAG303
TAG303:
mfhi $1
bltz $1, TAG304
mtlo $1
sb $1, -196($1)
TAG304:
blez $1, TAG305
srl $4, $1, 14
lui $2, 6
mfhi $2
TAG305:
lui $4, 6
addiu $4, $2, 6
mult $4, $4
sh $4, -202($4)
TAG306:
sw $4, -202($4)
lui $3, 10
blez $4, TAG307
subu $4, $4, $4
TAG307:
mult $4, $4
sltiu $1, $4, 10
mtlo $1
multu $4, $1
TAG308:
nor $2, $1, $1
beq $2, $2, TAG309
addu $2, $2, $2
mtlo $2
TAG309:
sh $2, 4($2)
sw $2, 4($2)
sll $2, $2, 14
mflo $4
TAG310:
mult $4, $4
lw $4, 0($4)
bltz $4, TAG311
mtlo $4
TAG311:
addu $3, $4, $4
and $2, $3, $4
lh $4, 8($2)
mthi $3
TAG312:
beq $4, $4, TAG313
sra $1, $4, 0
lbu $2, 0($1)
mtlo $1
TAG313:
sll $0, $0, 0
beq $2, $1, TAG314
div $1, $2
mfhi $1
TAG314:
lui $3, 15
xori $4, $1, 3
addiu $2, $3, 3
or $4, $4, $4
TAG315:
lui $4, 15
multu $4, $4
sll $0, $0, 0
multu $4, $4
TAG316:
bne $4, $4, TAG317
sra $3, $4, 3
or $2, $3, $4
lui $4, 10
TAG317:
andi $1, $4, 11
mflo $1
mflo $2
bgtz $4, TAG318
TAG318:
lui $3, 10
srlv $3, $2, $2
mfhi $1
xori $4, $2, 0
TAG319:
multu $4, $4
multu $4, $4
mflo $4
lui $3, 14
TAG320:
mfhi $3
mult $3, $3
beq $3, $3, TAG321
mtlo $3
TAG321:
srav $4, $3, $3
slt $2, $4, $3
lhu $1, 0($4)
bgez $3, TAG322
TAG322:
srl $1, $1, 8
mult $1, $1
subu $1, $1, $1
multu $1, $1
TAG323:
and $3, $1, $1
xor $1, $3, $3
mtlo $1
blez $1, TAG324
TAG324:
addi $2, $1, 13
mthi $1
or $1, $2, $1
bgtz $1, TAG325
TAG325:
lbu $3, 0($1)
mflo $3
mtlo $3
lui $1, 10
TAG326:
beq $1, $1, TAG327
sllv $1, $1, $1
lw $4, 0($1)
mthi $4
TAG327:
lh $4, 0($4)
beq $4, $4, TAG328
lui $4, 0
lui $4, 11
TAG328:
lui $1, 8
sw $1, 0($4)
lui $1, 11
bgez $4, TAG329
TAG329:
mthi $1
bgtz $1, TAG330
multu $1, $1
addi $4, $1, 3
TAG330:
multu $4, $4
multu $4, $4
beq $4, $4, TAG331
multu $4, $4
TAG331:
mtlo $4
mflo $4
mflo $2
mthi $2
TAG332:
slti $2, $2, 1
mflo $2
mfhi $1
sb $2, 0($2)
TAG333:
bgtz $1, TAG334
xori $3, $1, 15
mthi $3
sb $1, 0($3)
TAG334:
bltz $3, TAG335
mtlo $3
sb $3, 0($3)
div $3, $3
TAG335:
bgtz $3, TAG336
lbu $3, 0($3)
mflo $4
lui $4, 11
TAG336:
and $1, $4, $4
lui $1, 9
div $1, $1
srl $4, $1, 3
TAG337:
mtlo $4
lui $1, 4
beq $1, $1, TAG338
mfhi $1
TAG338:
blez $1, TAG339
mtlo $1
mult $1, $1
or $4, $1, $1
TAG339:
nor $2, $4, $4
multu $2, $2
sll $0, $0, 0
mflo $1
TAG340:
bgez $1, TAG341
lui $3, 13
mult $3, $1
div $1, $3
TAG341:
mult $3, $3
mtlo $3
bgtz $3, TAG342
mult $3, $3
TAG342:
mflo $2
lui $3, 1
xor $3, $3, $3
mult $3, $3
TAG343:
bgez $3, TAG344
multu $3, $3
mflo $4
mtlo $3
TAG344:
addiu $2, $4, 13
beq $4, $2, TAG345
sllv $1, $2, $4
addiu $1, $2, 5
TAG345:
lui $2, 1
sra $1, $1, 7
lb $3, -576($1)
mult $1, $3
TAG346:
mflo $1
sltu $4, $1, $1
lh $1, 0($4)
bne $1, $1, TAG347
TAG347:
mtlo $1
srl $3, $1, 15
sll $1, $1, 4
bgtz $1, TAG348
TAG348:
mfhi $2
lbu $3, 0($1)
add $4, $2, $3
lui $4, 10
TAG349:
or $4, $4, $4
addu $3, $4, $4
bne $4, $4, TAG350
lui $3, 11
TAG350:
div $3, $3
addu $3, $3, $3
addu $1, $3, $3
mthi $3
TAG351:
addiu $1, $1, 11
sll $0, $0, 0
beq $1, $1, TAG352
mtlo $1
TAG352:
bne $4, $4, TAG353
sltiu $4, $4, 4
sltiu $4, $4, 15
mthi $4
TAG353:
div $4, $4
multu $4, $4
bltz $4, TAG354
subu $4, $4, $4
TAG354:
mthi $4
multu $4, $4
lbu $4, 0($4)
andi $1, $4, 8
TAG355:
lh $4, 0($1)
mflo $1
mtlo $1
mflo $2
TAG356:
sub $3, $2, $2
sb $3, 0($2)
srl $2, $3, 14
bne $3, $2, TAG357
TAG357:
sltu $1, $2, $2
sb $2, 0($2)
lui $2, 14
sltiu $3, $2, 6
TAG358:
lw $4, 0($3)
beq $4, $3, TAG359
add $4, $3, $4
sll $0, $0, 0
TAG359:
slt $3, $4, $4
mtlo $4
sw $3, 0($3)
lui $4, 0
TAG360:
mult $4, $4
sb $4, 0($4)
slt $3, $4, $4
beq $4, $3, TAG361
TAG361:
addiu $4, $3, 14
bltz $3, TAG362
sh $3, 0($4)
lui $2, 15
TAG362:
sll $0, $0, 0
lui $1, 10
div $2, $1
bne $1, $2, TAG363
TAG363:
mtlo $1
sll $0, $0, 0
xori $2, $3, 6
mflo $4
TAG364:
subu $1, $4, $4
srlv $2, $4, $1
slt $1, $1, $2
sll $0, $0, 0
TAG365:
sb $1, 0($1)
div $1, $1
mfhi $3
mthi $1
TAG366:
sltu $1, $3, $3
srlv $1, $1, $1
ori $1, $1, 15
mflo $4
TAG367:
mtlo $4
addiu $3, $4, 8
sb $3, 0($4)
mthi $3
TAG368:
bltz $3, TAG369
lui $2, 9
lui $3, 2
sll $0, $0, 0
TAG369:
sll $0, $0, 0
addu $3, $3, $2
or $3, $3, $3
divu $3, $3
TAG370:
nor $2, $3, $3
mfhi $1
sll $2, $2, 10
sll $0, $0, 0
TAG371:
sll $0, $0, 0
addu $1, $4, $3
mtlo $4
lui $4, 5
TAG372:
lui $1, 7
lui $2, 10
lui $2, 7
or $4, $2, $1
TAG373:
lui $2, 2
div $2, $2
andi $1, $4, 0
and $3, $4, $1
TAG374:
lui $4, 7
blez $3, TAG375
sll $0, $0, 0
addu $3, $4, $3
TAG375:
bltz $3, TAG376
mflo $4
or $3, $3, $4
mflo $4
TAG376:
sb $4, 0($4)
div $4, $4
lb $4, 0($4)
srlv $3, $4, $4
TAG377:
sll $2, $3, 0
bgtz $2, TAG378
slt $3, $2, $2
sll $3, $3, 5
TAG378:
xor $4, $3, $3
mtlo $4
beq $3, $3, TAG379
lui $4, 6
TAG379:
beq $4, $4, TAG380
mthi $4
lui $1, 7
slt $1, $4, $1
TAG380:
sh $1, 0($1)
mflo $2
blez $2, TAG381
sw $2, 0($1)
TAG381:
lui $2, 4
bgtz $2, TAG382
sltiu $2, $2, 15
bgez $2, TAG382
TAG382:
srav $1, $2, $2
sw $1, 0($1)
mfhi $2
blez $1, TAG383
TAG383:
divu $2, $2
sltiu $2, $2, 9
bne $2, $2, TAG384
sw $2, 0($2)
TAG384:
slt $2, $2, $2
bgtz $2, TAG385
sh $2, 0($2)
mtlo $2
TAG385:
add $3, $2, $2
mthi $2
sh $2, 0($2)
bne $3, $2, TAG386
TAG386:
addi $4, $3, 3
ori $1, $3, 11
mfhi $2
sb $1, 0($4)
TAG387:
xori $2, $2, 1
xori $3, $2, 9
mtlo $2
lb $1, 0($2)
TAG388:
mflo $1
andi $2, $1, 12
bne $1, $1, TAG389
addiu $2, $1, 13
TAG389:
lh $1, 0($2)
mtlo $2
sh $2, 0($2)
lui $3, 15
TAG390:
mtlo $3
multu $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG391:
sh $1, 0($1)
mult $1, $1
mult $1, $1
mfhi $3
TAG392:
sh $3, 0($3)
lw $2, 0($3)
beq $2, $3, TAG393
mtlo $3
TAG393:
sll $0, $0, 0
mthi $2
beq $2, $2, TAG394
sltiu $4, $2, 11
TAG394:
mflo $4
lhu $4, 0($4)
mtlo $4
beq $4, $4, TAG395
TAG395:
mflo $2
bgez $4, TAG396
mfhi $4
sb $2, 0($4)
TAG396:
blez $4, TAG397
sll $0, $0, 0
mflo $1
sw $4, 0($1)
TAG397:
mthi $1
mult $1, $1
mflo $4
lui $1, 6
TAG398:
sltiu $4, $1, 7
bgtz $4, TAG399
sll $0, $0, 0
mfhi $2
TAG399:
multu $2, $2
bgez $2, TAG400
mult $2, $2
lui $4, 5
TAG400:
multu $4, $4
lui $3, 2
sll $0, $0, 0
addiu $2, $3, 10
TAG401:
beq $2, $2, TAG402
slti $3, $2, 1
bltz $2, TAG402
lb $3, 0($3)
TAG402:
sb $3, 0($3)
mtlo $3
bltz $3, TAG403
lui $3, 0
TAG403:
sw $3, 0($3)
lhu $4, 0($3)
lbu $1, 0($4)
sh $4, 0($3)
TAG404:
sh $1, 0($1)
lui $4, 13
mtlo $1
mult $1, $1
TAG405:
sll $0, $0, 0
blez $4, TAG406
mthi $4
or $2, $4, $4
TAG406:
sll $0, $0, 0
mfhi $2
addu $2, $2, $2
multu $4, $2
TAG407:
divu $2, $2
div $2, $2
subu $2, $2, $2
ori $4, $2, 7
TAG408:
lbu $1, 0($4)
mult $4, $4
mfhi $1
lbu $4, 0($4)
TAG409:
sltiu $4, $4, 11
lb $4, 0($4)
beq $4, $4, TAG410
sub $4, $4, $4
TAG410:
multu $4, $4
mfhi $4
slt $1, $4, $4
bgez $1, TAG411
TAG411:
addiu $1, $1, 2
beq $1, $1, TAG412
lbu $3, 0($1)
srl $3, $3, 10
TAG412:
lui $2, 8
lui $1, 11
lui $3, 8
sll $0, $0, 0
TAG413:
mfhi $2
bgez $2, TAG414
mtlo $2
mtlo $2
TAG414:
mult $2, $2
sw $2, 0($2)
mult $2, $2
bne $2, $2, TAG415
TAG415:
mult $2, $2
mflo $4
sw $2, 0($4)
sub $1, $4, $4
TAG416:
mult $1, $1
sw $1, 0($1)
multu $1, $1
sw $1, 0($1)
TAG417:
multu $1, $1
beq $1, $1, TAG418
sw $1, 0($1)
blez $1, TAG418
TAG418:
mfhi $4
lui $4, 15
sb $4, 0($1)
mtlo $1
TAG419:
addiu $3, $4, 15
lui $3, 10
ori $4, $3, 0
sll $0, $0, 0
TAG420:
xori $2, $4, 2
bgtz $4, TAG421
mfhi $2
mfhi $3
TAG421:
bltz $3, TAG422
sll $0, $0, 0
multu $2, $2
beq $2, $2, TAG422
TAG422:
xor $3, $2, $2
lb $3, 0($3)
sltiu $1, $3, 3
bne $3, $1, TAG423
TAG423:
mfhi $1
bgtz $1, TAG424
mthi $1
multu $1, $1
TAG424:
lui $1, 0
bne $1, $1, TAG425
lbu $2, 0($1)
bne $2, $1, TAG425
TAG425:
sw $2, 0($2)
sb $2, 0($2)
sra $4, $2, 15
multu $2, $4
TAG426:
sll $1, $4, 4
lhu $1, 0($1)
lbu $1, 0($4)
bgez $1, TAG427
TAG427:
subu $1, $1, $1
mthi $1
lhu $2, 0($1)
lw $2, 0($1)
TAG428:
beq $2, $2, TAG429
multu $2, $2
divu $2, $2
lui $3, 15
TAG429:
mult $3, $3
mtlo $3
bne $3, $3, TAG430
slti $3, $3, 3
TAG430:
mthi $3
mflo $2
andi $2, $2, 0
srl $2, $3, 0
TAG431:
srav $2, $2, $2
lui $1, 5
lui $3, 7
lui $1, 13
TAG432:
sll $0, $0, 0
multu $1, $4
sw $4, 0($4)
bgez $1, TAG433
TAG433:
sltiu $2, $4, 13
bgez $2, TAG434
sra $3, $2, 10
beq $3, $3, TAG434
TAG434:
slt $1, $3, $3
beq $1, $1, TAG435
mfhi $1
mult $1, $1
TAG435:
lw $2, 0($1)
mfhi $2
nor $2, $2, $2
nor $2, $2, $2
TAG436:
lui $2, 11
and $4, $2, $2
sll $0, $0, 0
lui $2, 12
TAG437:
mtlo $2
sll $0, $0, 0
div $2, $2
bne $2, $2, TAG438
TAG438:
sll $0, $0, 0
sll $0, $0, 0
and $3, $2, $2
mthi $4
TAG439:
sll $0, $0, 0
divu $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG440:
sll $0, $0, 0
sllv $2, $4, $4
div $4, $4
srlv $2, $2, $2
TAG441:
bne $2, $2, TAG442
sltu $4, $2, $2
sll $0, $0, 0
mthi $2
TAG442:
lui $2, 9
mfhi $4
beq $2, $4, TAG443
divu $2, $4
TAG443:
mfhi $4
sll $0, $0, 0
mfhi $4
slt $4, $4, $4
TAG444:
addiu $3, $4, 5
lw $4, 0($4)
mthi $4
beq $4, $4, TAG445
TAG445:
lui $1, 2
multu $4, $1
sw $4, 0($4)
bgez $1, TAG446
TAG446:
sll $0, $0, 0
bltz $1, TAG447
sll $0, $0, 0
xori $4, $1, 2
TAG447:
sll $1, $4, 13
bgtz $1, TAG448
lui $3, 14
lbu $1, 0($1)
TAG448:
mthi $1
sll $0, $0, 0
addu $3, $1, $1
slti $2, $3, 5
TAG449:
mthi $2
ori $3, $2, 7
beq $2, $2, TAG450
slt $2, $2, $3
TAG450:
sllv $1, $2, $2
bne $2, $1, TAG451
sltiu $3, $2, 14
sh $3, 0($2)
TAG451:
lui $2, 3
sb $3, 0($3)
mfhi $4
sb $3, 0($4)
TAG452:
blez $4, TAG453
lb $4, 0($4)
mtlo $4
lui $4, 10
TAG453:
bgtz $4, TAG454
mtlo $4
mtlo $4
lbu $4, 0($4)
TAG454:
bltz $4, TAG455
sll $0, $0, 0
lui $4, 5
sll $0, $0, 0
TAG455:
bgez $4, TAG456
sll $0, $0, 0
mflo $4
mflo $2
TAG456:
sll $0, $0, 0
and $4, $2, $2
bne $2, $4, TAG457
lui $4, 12
TAG457:
srav $4, $4, $4
bne $4, $4, TAG458
mtlo $4
blez $4, TAG458
TAG458:
sltiu $2, $4, 7
mfhi $3
mtlo $2
sll $3, $3, 15
TAG459:
lui $1, 7
subu $1, $3, $3
mtlo $1
ori $4, $1, 7
TAG460:
lui $2, 7
mult $4, $4
multu $2, $2
mthi $2
TAG461:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
bne $2, $2, TAG462
TAG462:
mtlo $2
mthi $2
sw $2, 0($2)
lui $3, 2
TAG463:
sra $2, $3, 4
mult $2, $2
sll $0, $0, 0
lhu $3, -8192($2)
TAG464:
mtlo $3
mult $3, $3
sltiu $1, $3, 4
lui $4, 12
TAG465:
sll $0, $0, 0
mfhi $4
lui $3, 1
multu $4, $4
TAG466:
addu $1, $3, $3
sll $0, $0, 0
bne $1, $2, TAG467
sll $0, $0, 0
TAG467:
sub $3, $4, $4
sw $4, 0($3)
mflo $2
mflo $2
TAG468:
subu $3, $2, $2
bgtz $2, TAG469
mult $3, $2
sb $3, 0($2)
TAG469:
slti $4, $3, 10
lui $2, 15
sltiu $2, $4, 10
bltz $2, TAG470
TAG470:
mflo $3
lui $1, 2
beq $2, $3, TAG471
mflo $3
TAG471:
mult $3, $3
xori $2, $3, 6
bgtz $2, TAG472
mflo $3
TAG472:
beq $3, $3, TAG473
addi $4, $3, 4
mflo $2
lui $4, 4
TAG473:
mflo $1
bgtz $1, TAG474
sll $1, $4, 1
blez $4, TAG474
TAG474:
sw $1, 0($1)
lhu $1, 0($1)
lhu $2, 0($1)
lui $4, 8
TAG475:
sll $0, $0, 0
slt $3, $4, $4
add $4, $3, $3
mthi $3
TAG476:
lui $3, 1
sh $3, 0($4)
sllv $1, $3, $3
lui $4, 3
TAG477:
beq $4, $4, TAG478
mthi $4
bgtz $4, TAG478
sb $4, 0($4)
TAG478:
sll $0, $0, 0
xor $1, $4, $4
lui $4, 1
addu $2, $4, $4
TAG479:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG480:
mflo $3
subu $3, $3, $2
lui $2, 10
lui $3, 2
TAG481:
addu $3, $3, $3
sll $0, $0, 0
bne $3, $3, TAG482
lui $4, 4
TAG482:
lui $4, 3
sll $0, $0, 0
bgtz $1, TAG483
sub $3, $1, $1
TAG483:
lbu $3, 0($3)
sw $3, 0($3)
lui $2, 0
xori $3, $3, 2
TAG484:
mult $3, $3
srl $4, $3, 7
lui $2, 11
sll $0, $0, 0
TAG485:
mfhi $1
mfhi $2
mflo $1
sb $1, 0($2)
TAG486:
div $1, $1
lw $3, 0($1)
mfhi $3
lui $4, 1
TAG487:
beq $4, $4, TAG488
mtlo $4
bne $4, $4, TAG488
mthi $4
TAG488:
mthi $4
lui $3, 4
bne $3, $4, TAG489
sll $1, $4, 4
TAG489:
div $1, $1
sll $0, $0, 0
lui $2, 14
sll $0, $0, 0
TAG490:
mthi $4
sllv $2, $4, $4
bne $4, $4, TAG491
mflo $3
TAG491:
lbu $4, 0($3)
multu $3, $3
mflo $4
multu $4, $3
TAG492:
andi $3, $4, 1
sb $4, 0($3)
sb $3, 0($3)
beq $3, $4, TAG493
TAG493:
multu $3, $3
mtlo $3
slt $3, $3, $3
mfhi $1
TAG494:
mult $1, $1
beq $1, $1, TAG495
mult $1, $1
lui $4, 13
TAG495:
blez $4, TAG496
sb $4, 0($4)
bne $4, $4, TAG496
sb $4, 0($4)
TAG496:
srlv $2, $4, $4
lui $3, 14
sll $0, $0, 0
lbu $2, 0($2)
TAG497:
bgez $2, TAG498
sra $3, $2, 6
blez $2, TAG498
andi $1, $2, 2
TAG498:
blez $1, TAG499
sltiu $4, $1, 6
sb $1, 0($1)
lui $2, 8
TAG499:
lb $2, 0($2)
mtlo $2
sltiu $4, $2, 10
lui $3, 1
TAG500:
mflo $1
sll $0, $0, 0
beq $4, $3, TAG501
sb $4, 0($4)
TAG501:
multu $4, $4
mfhi $1
mult $1, $4
bgtz $4, TAG502
TAG502:
mfhi $4
blez $1, TAG503
sltu $4, $4, $4
sb $4, 0($1)
TAG503:
mtlo $4
multu $4, $4
ori $3, $4, 12
sh $3, 0($3)
TAG504:
subu $2, $3, $3
sh $3, 0($3)
mult $2, $2
mfhi $2
TAG505:
multu $2, $2
bltz $2, TAG506
mtlo $2
srlv $4, $2, $2
TAG506:
mflo $3
bne $4, $4, TAG507
mfhi $2
mfhi $3
TAG507:
mtlo $3
lbu $2, 0($3)
mult $3, $3
div $2, $2
TAG508:
mflo $4
mflo $1
bne $1, $1, TAG509
mtlo $1
TAG509:
mult $1, $1
bgtz $1, TAG510
lb $4, 0($1)
sra $4, $4, 6
TAG510:
bne $4, $4, TAG511
mult $4, $4
bgtz $4, TAG511
srav $4, $4, $4
TAG511:
mflo $4
bltz $4, TAG512
lui $3, 9
bltz $4, TAG512
TAG512:
slti $2, $3, 9
sll $0, $0, 0
sh $3, 0($2)
bgtz $3, TAG513
TAG513:
lui $3, 9
sll $0, $0, 0
lui $3, 10
mult $3, $3
TAG514:
div $3, $3
lui $1, 5
xori $1, $3, 4
mthi $3
TAG515:
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG516:
slt $4, $1, $1
lui $1, 9
beq $4, $1, TAG517
lui $4, 4
TAG517:
addiu $4, $4, 4
mthi $4
blez $4, TAG518
ori $3, $4, 2
TAG518:
mflo $1
lui $1, 13
blez $1, TAG519
sll $0, $0, 0
TAG519:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 4
sll $0, $0, 0
TAG520:
mthi $3
mtlo $3
lui $1, 1
sll $0, $0, 0
TAG521:
lui $3, 3
sll $0, $0, 0
or $1, $3, $3
mtlo $3
TAG522:
sll $0, $0, 0
mfhi $1
srlv $2, $1, $1
srl $4, $1, 4
TAG523:
sll $1, $4, 10
mtlo $4
bne $4, $1, TAG524
lui $3, 4
TAG524:
mflo $1
xori $3, $3, 1
bgtz $3, TAG525
sll $0, $0, 0
TAG525:
sh $1, -16384($1)
subu $2, $1, $1
xori $3, $2, 7
lui $4, 10
TAG526:
mfhi $4
mfhi $3
slti $1, $4, 14
mtlo $4
TAG527:
mthi $1
add $4, $1, $1
xor $2, $1, $4
lui $3, 11
TAG528:
divu $3, $3
sll $0, $0, 0
lh $1, 0($4)
sh $3, -16384($1)
TAG529:
div $1, $1
lui $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG530:
lui $3, 14
mfhi $1
divu $3, $3
subu $3, $3, $1
TAG531:
mfhi $2
lui $4, 8
lui $2, 15
mfhi $4
TAG532:
sll $1, $4, 5
sw $4, 0($4)
mfhi $1
nor $4, $1, $1
TAG533:
mfhi $3
mfhi $1
and $2, $1, $3
sw $1, 0($3)
TAG534:
lui $3, 7
beq $3, $3, TAG535
mflo $4
mtlo $3
TAG535:
multu $4, $4
mthi $4
srl $4, $4, 5
bne $4, $4, TAG536
TAG536:
sb $4, 0($4)
beq $4, $4, TAG537
addi $2, $4, 6
sra $1, $4, 8
TAG537:
xori $2, $1, 10
mult $2, $1
blez $1, TAG538
lui $4, 14
TAG538:
sll $0, $0, 0
mtlo $4
sra $3, $3, 2
bltz $4, TAG539
TAG539:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $2, TAG540
sb $3, 0($2)
TAG540:
mflo $2
and $1, $2, $2
lui $1, 2
bne $2, $2, TAG541
TAG541:
slt $2, $1, $1
sll $0, $0, 0
lhu $4, 0($2)
xori $3, $2, 0
TAG542:
lw $2, 0($3)
bgez $3, TAG543
lui $4, 3
sw $4, 0($4)
TAG543:
sll $0, $0, 0
bgez $4, TAG544
mflo $3
and $4, $3, $3
TAG544:
addiu $1, $4, 10
sra $3, $1, 10
mult $4, $4
sll $0, $0, 0
TAG545:
subu $3, $4, $4
mfhi $4
ori $1, $3, 3
lb $1, 0($4)
TAG546:
addi $1, $1, 12
beq $1, $1, TAG547
subu $3, $1, $1
slt $2, $1, $1
TAG547:
beq $2, $2, TAG548
mtlo $2
mfhi $2
mfhi $3
TAG548:
multu $3, $3
srl $1, $3, 6
bltz $3, TAG549
multu $1, $3
TAG549:
mtlo $1
add $1, $1, $1
sb $1, 0($1)
sllv $4, $1, $1
TAG550:
lui $4, 6
mflo $3
or $4, $4, $3
bne $3, $3, TAG551
TAG551:
sll $0, $0, 0
mult $4, $1
mflo $2
beq $1, $4, TAG552
TAG552:
mult $2, $2
mflo $2
bgtz $2, TAG553
lui $4, 5
TAG553:
lui $1, 9
lui $4, 11
mflo $3
bne $1, $1, TAG554
TAG554:
srl $2, $3, 5
mult $2, $2
bgez $3, TAG555
andi $4, $2, 4
TAG555:
mflo $3
bgtz $3, TAG556
mflo $2
lw $3, 0($2)
TAG556:
sb $3, 0($3)
mfhi $1
multu $3, $1
lhu $2, 0($1)
TAG557:
multu $2, $2
blez $2, TAG558
lw $4, 0($2)
mult $4, $4
TAG558:
mflo $2
nor $1, $2, $4
lhu $1, 0($2)
mult $2, $2
TAG559:
lui $3, 10
mfhi $2
mfhi $2
multu $2, $2
TAG560:
lui $3, 11
lui $1, 0
beq $3, $1, TAG561
lw $2, 0($2)
TAG561:
mtlo $2
sw $2, 0($2)
multu $2, $2
lui $3, 4
TAG562:
lui $3, 13
srlv $2, $3, $3
bne $2, $3, TAG563
multu $3, $2
TAG563:
slti $1, $2, 3
lui $1, 8
bne $1, $1, TAG564
sra $2, $2, 13
TAG564:
srl $4, $2, 9
mfhi $4
divu $2, $4
beq $4, $2, TAG565
TAG565:
sw $4, -169($4)
bgez $4, TAG566
sw $4, -169($4)
lui $3, 10
TAG566:
mthi $3
andi $1, $3, 9
ori $2, $1, 14
mfhi $2
TAG567:
multu $2, $2
subu $1, $2, $2
lbu $1, 0($1)
mflo $2
TAG568:
nor $3, $2, $2
bne $2, $2, TAG569
addu $4, $3, $3
lhu $1, 2($4)
TAG569:
mult $1, $1
bne $1, $1, TAG570
mtlo $1
sltiu $3, $1, 5
TAG570:
slti $3, $3, 1
lui $2, 10
mtlo $2
beq $3, $2, TAG571
TAG571:
sll $0, $0, 0
mthi $2
mfhi $4
lui $2, 12
TAG572:
mtlo $2
sll $0, $0, 0
addu $2, $2, $2
bne $2, $2, TAG573
TAG573:
xor $1, $2, $2
sb $2, 0($1)
beq $2, $1, TAG574
lui $2, 8
TAG574:
sll $0, $0, 0
lui $2, 0
mtlo $2
blez $2, TAG575
TAG575:
mflo $1
mthi $1
bgez $2, TAG576
addiu $2, $2, 10
TAG576:
bgez $2, TAG577
multu $2, $2
divu $2, $2
divu $2, $2
TAG577:
bgtz $2, TAG578
sb $2, 0($2)
mflo $1
div $2, $2
TAG578:
srlv $1, $1, $1
lbu $1, 0($1)
beq $1, $1, TAG579
lh $3, 0($1)
TAG579:
lb $2, 0($3)
mthi $3
lui $3, 1
bne $3, $2, TAG580
TAG580:
lui $1, 1
bgtz $3, TAG581
lui $3, 5
lb $4, 0($3)
TAG581:
sll $0, $0, 0
mult $4, $4
sltu $3, $4, $1
bltz $3, TAG582
TAG582:
or $4, $3, $3
lh $2, 0($3)
lhu $3, 0($2)
sw $3, 0($3)
TAG583:
or $1, $3, $3
bne $3, $1, TAG584
lw $3, 0($3)
mthi $3
TAG584:
mult $3, $3
bltz $3, TAG585
mflo $1
mfhi $1
TAG585:
bne $1, $1, TAG586
sb $1, 0($1)
bne $1, $1, TAG586
lh $2, 0($1)
TAG586:
multu $2, $2
srlv $3, $2, $2
sh $2, 0($3)
mflo $3
TAG587:
sh $3, 0($3)
mfhi $3
addu $4, $3, $3
mfhi $3
TAG588:
srlv $3, $3, $3
sh $3, 0($3)
mflo $2
sltu $2, $2, $3
TAG589:
bne $2, $2, TAG590
lh $2, 0($2)
bne $2, $2, TAG590
multu $2, $2
TAG590:
sh $2, 0($2)
xori $1, $2, 4
mult $2, $2
mtlo $1
TAG591:
bgez $1, TAG592
lui $2, 3
lb $4, 0($1)
addiu $1, $1, 6
TAG592:
sb $1, 0($1)
multu $1, $1
xori $1, $1, 11
slti $2, $1, 14
TAG593:
multu $2, $2
lui $1, 13
lui $4, 12
sll $0, $0, 0
TAG594:
beq $4, $4, TAG595
mtlo $4
mfhi $4
lhu $2, 0($4)
TAG595:
lui $2, 14
sll $0, $0, 0
lui $2, 2
blez $2, TAG596
TAG596:
sll $0, $0, 0
multu $2, $2
mfhi $1
blez $1, TAG597
TAG597:
xori $1, $1, 2
lui $1, 6
mfhi $3
beq $1, $1, TAG598
TAG598:
lh $4, 0($3)
sh $3, 0($4)
mflo $4
lbu $1, 0($4)
TAG599:
lbu $4, 0($1)
sh $1, 0($1)
lui $1, 6
bne $1, $4, TAG600
TAG600:
div $1, $1
bltz $1, TAG601
multu $1, $1
mfhi $3
TAG601:
sllv $4, $3, $3
lw $1, -576($4)
lui $1, 10
sra $4, $1, 9
TAG602:
lui $1, 4
subu $4, $4, $4
subu $3, $4, $1
bgtz $4, TAG603
TAG603:
xori $4, $3, 11
lui $4, 11
sra $3, $4, 14
lui $3, 6
TAG604:
addu $4, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG605:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG606:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG607:
sra $1, $2, 15
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG608:
divu $3, $3
sll $0, $0, 0
mthi $3
beq $3, $3, TAG609
TAG609:
mthi $3
sra $2, $3, 0
sll $0, $0, 0
sll $0, $0, 0
TAG610:
sll $1, $4, 15
sra $2, $4, 0
xori $1, $4, 3
sll $1, $1, 1
TAG611:
mtlo $1
mtlo $1
lui $3, 12
mtlo $3
TAG612:
subu $4, $3, $3
bne $3, $3, TAG613
mfhi $3
lui $3, 6
TAG613:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $4, $2, TAG614
TAG614:
mtlo $4
blez $4, TAG615
mtlo $4
xori $2, $4, 5
TAG615:
lui $4, 14
mtlo $2
andi $2, $2, 10
blez $2, TAG616
TAG616:
sb $2, 0($2)
ori $1, $2, 8
addiu $4, $2, 6
sw $2, 0($1)
TAG617:
bne $4, $4, TAG618
addu $2, $4, $4
mtlo $2
bne $4, $4, TAG618
TAG618:
sw $2, 0($2)
mflo $2
lui $2, 13
bne $2, $2, TAG619
TAG619:
nor $4, $2, $2
bne $2, $2, TAG620
sll $0, $0, 0
subu $2, $4, $2
TAG620:
divu $2, $2
div $2, $2
lui $1, 15
bne $1, $2, TAG621
TAG621:
lui $1, 14
lui $4, 5
bgez $4, TAG622
xori $1, $4, 12
TAG622:
sll $0, $0, 0
sllv $1, $1, $3
sll $0, $0, 0
mfhi $1
TAG623:
sra $4, $1, 7
mult $1, $4
mult $4, $4
ori $3, $1, 2
TAG624:
bltz $3, TAG625
lui $3, 1
sll $0, $0, 0
bgez $3, TAG625
TAG625:
mflo $2
srlv $3, $4, $2
slt $3, $4, $2
and $2, $4, $2
TAG626:
bltz $2, TAG627
sllv $4, $2, $2
lhu $4, 0($4)
sra $2, $2, 2
TAG627:
sb $2, 0($2)
and $3, $2, $2
mthi $2
mfhi $2
TAG628:
srlv $3, $2, $2
mflo $4
srl $2, $4, 3
bne $2, $3, TAG629
TAG629:
mfhi $1
mtlo $2
sb $1, 0($2)
xori $1, $2, 12
TAG630:
lui $3, 12
srl $1, $3, 12
multu $3, $1
lui $1, 13
TAG631:
srlv $2, $1, $1
srl $3, $1, 4
sll $0, $0, 0
multu $2, $2
TAG632:
sra $2, $4, 4
bne $4, $4, TAG633
mtlo $4
bgez $4, TAG633
TAG633:
mult $2, $2
ori $2, $2, 10
sb $2, 0($2)
divu $2, $2
TAG634:
slt $1, $2, $2
mflo $1
sb $2, 0($1)
mthi $1
TAG635:
mfhi $2
sb $2, 0($1)
mflo $4
sb $1, 0($4)
TAG636:
divu $4, $4
srav $3, $4, $4
bgtz $3, TAG637
lui $2, 6
TAG637:
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG638:
subu $1, $2, $2
sltu $3, $2, $2
lhu $3, 0($1)
ori $3, $3, 8
TAG639:
sra $1, $3, 11
mflo $4
addi $3, $1, 8
beq $1, $4, TAG640
TAG640:
xori $4, $3, 2
mtlo $4
slti $4, $4, 2
lui $4, 0
TAG641:
beq $4, $4, TAG642
lb $3, 0($4)
sltu $1, $4, $3
ori $2, $1, 10
TAG642:
lui $4, 15
sll $0, $0, 0
bgtz $2, TAG643
divu $1, $4
TAG643:
addu $3, $1, $1
mthi $3
ori $1, $1, 10
lui $2, 14
TAG644:
xor $2, $2, $2
beq $2, $2, TAG645
mult $2, $2
sb $2, 0($2)
TAG645:
mfhi $3
mthi $2
bgtz $3, TAG646
lui $1, 10
TAG646:
mflo $3
bltz $1, TAG647
lui $2, 8
mthi $1
TAG647:
sll $0, $0, 0
sltu $3, $2, $2
mthi $2
addiu $2, $2, 0
TAG648:
or $1, $2, $2
addiu $2, $1, 6
mflo $4
beq $2, $4, TAG649
TAG649:
mult $4, $4
sh $4, 0($4)
sub $1, $4, $4
mult $4, $4
TAG650:
lbu $2, 0($1)
lb $3, 0($1)
lh $2, 0($3)
mtlo $3
TAG651:
mflo $4
mflo $1
sb $1, 0($4)
mult $4, $2
TAG652:
srav $2, $1, $1
mult $2, $2
mthi $2
lui $1, 11
TAG653:
addu $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG654:
andi $3, $4, 9
mtlo $4
sb $3, 0($4)
mtlo $4
TAG655:
andi $2, $3, 1
mfhi $1
mfhi $3
bne $1, $1, TAG656
TAG656:
ori $2, $3, 1
lbu $4, 0($3)
mflo $3
xori $2, $4, 10
TAG657:
sh $2, 0($2)
sh $2, 0($2)
lh $2, 0($2)
multu $2, $2
TAG658:
ori $3, $2, 15
andi $3, $2, 4
lw $3, 0($3)
lui $4, 14
TAG659:
lui $3, 2
divu $4, $4
mthi $3
sll $0, $0, 0
TAG660:
beq $3, $3, TAG661
lui $2, 1
sra $1, $2, 6
lui $4, 5
TAG661:
lui $2, 5
sll $0, $0, 0
addu $1, $4, $4
mflo $1
TAG662:
mtlo $1
sb $1, 0($1)
multu $1, $1
sb $1, 0($1)
TAG663:
mtlo $1
multu $1, $1
xor $2, $1, $1
beq $2, $2, TAG664
TAG664:
sra $3, $2, 13
bgtz $3, TAG665
multu $2, $3
bne $3, $3, TAG665
TAG665:
mthi $3
lui $3, 7
xor $2, $3, $3
mtlo $3
TAG666:
ori $2, $2, 2
div $2, $2
sb $2, 0($2)
or $3, $2, $2
TAG667:
sb $3, 0($3)
divu $3, $3
lui $1, 13
sll $0, $0, 0
TAG668:
sll $0, $0, 0
lui $4, 8
multu $1, $1
sll $0, $0, 0
TAG669:
mflo $2
mfhi $1
sll $0, $0, 0
blez $4, TAG670
TAG670:
srlv $1, $1, $1
lb $3, 0($1)
mtlo $3
beq $3, $1, TAG671
TAG671:
mflo $1
mtlo $1
slt $3, $3, $3
sltu $2, $3, $3
TAG672:
multu $2, $2
addi $4, $2, 0
subu $2, $4, $2
bgez $2, TAG673
TAG673:
mfhi $1
beq $2, $1, TAG674
sb $2, 0($2)
slti $2, $2, 2
TAG674:
lb $1, 0($2)
sw $1, 0($2)
bgez $1, TAG675
multu $1, $2
TAG675:
mflo $3
mthi $3
mthi $3
beq $1, $3, TAG676
TAG676:
lui $2, 7
sltu $3, $3, $2
beq $2, $2, TAG677
lui $2, 6
TAG677:
sll $0, $0, 0
srlv $4, $1, $2
lui $1, 10
addiu $3, $2, 3
TAG678:
mult $3, $3
mtlo $3
mthi $3
and $2, $3, $3
TAG679:
bne $2, $2, TAG680
divu $2, $2
mthi $2
div $2, $2
TAG680:
addiu $3, $2, 6
or $1, $3, $3
mfhi $1
mthi $3
TAG681:
lhu $4, 0($1)
bne $1, $4, TAG682
mfhi $3
bgez $4, TAG682
TAG682:
mflo $2
mthi $2
sll $0, $0, 0
mtlo $3
TAG683:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG684
lui $1, 4
TAG684:
bltz $1, TAG685
addiu $4, $1, 14
multu $4, $4
sll $0, $0, 0
TAG685:
mult $4, $4
srl $4, $4, 3
bgtz $4, TAG686
multu $4, $4
TAG686:
sll $0, $0, 0
bgez $2, TAG687
lui $4, 7
lui $3, 13
TAG687:
bltz $3, TAG688
nor $3, $3, $3
ori $4, $3, 13
nor $1, $3, $3
TAG688:
sll $0, $0, 0
sra $2, $1, 10
mfhi $3
blez $2, TAG689
TAG689:
lui $3, 14
mflo $3
beq $3, $3, TAG690
mthi $3
TAG690:
bne $3, $3, TAG691
lui $3, 9
bgez $3, TAG691
sll $0, $0, 0
TAG691:
srl $4, $3, 10
sll $0, $0, 0
sra $4, $2, 10
beq $4, $2, TAG692
TAG692:
add $2, $4, $4
blez $2, TAG693
mult $4, $4
lui $1, 3
TAG693:
lui $2, 9
mflo $2
lbu $1, 0($2)
ori $2, $2, 4
TAG694:
lb $3, 0($2)
lhu $1, 0($3)
lui $4, 13
sll $0, $0, 0
TAG695:
sra $3, $4, 1
bltz $4, TAG696
mflo $2
srav $1, $3, $2
TAG696:
mtlo $1
mfhi $2
sb $1, 0($2)
beq $1, $1, TAG697
TAG697:
subu $3, $2, $2
mult $3, $2
sb $2, 0($3)
beq $2, $2, TAG698
TAG698:
mult $3, $3
mult $3, $3
beq $3, $3, TAG699
mthi $3
TAG699:
beq $3, $3, TAG700
andi $3, $3, 0
lb $2, 0($3)
bgtz $3, TAG700
TAG700:
mtlo $2
mult $2, $2
lhu $3, 0($2)
sw $2, 0($2)
TAG701:
lui $4, 13
mflo $4
mtlo $4
multu $4, $4
TAG702:
blez $4, TAG703
multu $4, $4
bne $4, $4, TAG703
lui $2, 12
TAG703:
multu $2, $2
lui $2, 1
sll $0, $0, 0
sll $0, $0, 0
TAG704:
mtlo $2
mtlo $2
mfhi $1
lb $1, 0($1)
TAG705:
multu $1, $1
bgez $1, TAG706
mtlo $1
bne $1, $1, TAG706
TAG706:
mtlo $1
multu $1, $1
mult $1, $1
sh $1, 0($1)
TAG707:
bgez $1, TAG708
sub $3, $1, $1
sw $3, 0($3)
mult $1, $3
TAG708:
mtlo $3
mtlo $3
ori $3, $3, 4
mfhi $2
TAG709:
lb $1, 0($2)
multu $2, $1
sb $1, 0($1)
addi $4, $1, 14
TAG710:
addiu $4, $4, 2
lui $2, 8
lbu $3, 0($4)
bgtz $4, TAG711
TAG711:
sltu $1, $3, $3
ori $3, $1, 5
xor $3, $3, $1
beq $3, $1, TAG712
TAG712:
mthi $3
mthi $3
subu $1, $3, $3
beq $3, $3, TAG713
TAG713:
lui $4, 0
mult $4, $4
ori $1, $1, 12
bgez $1, TAG714
TAG714:
mtlo $1
mthi $1
divu $1, $1
div $1, $1
TAG715:
mfhi $3
subu $3, $3, $3
multu $3, $3
sltu $2, $3, $3
TAG716:
lw $3, 0($2)
lui $3, 12
sll $0, $0, 0
lui $2, 12
TAG717:
mtlo $2
beq $2, $2, TAG718
sll $0, $0, 0
sb $2, 0($2)
TAG718:
sll $0, $0, 0
sll $0, $0, 0
srav $3, $2, $2
sll $0, $0, 0
TAG719:
sll $0, $0, 0
sw $1, 0($1)
lui $1, 2
sll $0, $0, 0
TAG720:
div $1, $1
mfhi $2
sll $0, $0, 0
mthi $1
TAG721:
div $3, $3
div $3, $3
sll $0, $0, 0
mtlo $3
TAG722:
sw $2, 0($2)
lh $4, 0($2)
bne $2, $2, TAG723
sb $2, 0($2)
TAG723:
srav $2, $4, $4
sll $3, $4, 3
lw $4, 0($2)
lh $4, 0($4)
TAG724:
mthi $4
lhu $4, 0($4)
sltiu $3, $4, 2
beq $3, $3, TAG725
TAG725:
sll $4, $3, 4
sltu $3, $4, $3
lui $1, 7
mult $3, $3
TAG726:
bgtz $1, TAG727
sll $0, $0, 0
sw $1, 0($1)
mflo $1
TAG727:
sll $0, $0, 0
bne $1, $1, TAG728
div $1, $1
divu $1, $1
TAG728:
addiu $2, $1, 6
mthi $1
bne $2, $1, TAG729
xor $2, $2, $1
TAG729:
addiu $4, $2, 4
bgez $2, TAG730
lbu $1, 0($2)
multu $2, $2
TAG730:
nor $3, $1, $1
mthi $3
srlv $4, $3, $3
bgez $3, TAG731
TAG731:
mthi $4
lb $1, 0($4)
xori $3, $4, 7
mthi $3
TAG732:
mtlo $3
srlv $2, $3, $3
bgez $2, TAG733
lhu $4, 0($3)
TAG733:
mfhi $4
mflo $2
lhu $1, 0($2)
mult $2, $4
TAG734:
bgtz $1, TAG735
sltiu $1, $1, 12
mthi $1
mflo $4
TAG735:
xori $1, $4, 5
bgez $1, TAG736
divu $1, $1
mfhi $3
TAG736:
bltz $3, TAG737
sh $3, 0($3)
subu $3, $3, $3
addi $4, $3, 7
TAG737:
lui $4, 8
sll $4, $4, 14
mult $4, $4
bgtz $4, TAG738
TAG738:
multu $4, $4
sub $1, $4, $4
lw $4, 0($1)
mult $4, $4
TAG739:
sltu $2, $4, $4
lb $1, 0($4)
mthi $4
multu $2, $4
TAG740:
srlv $1, $1, $1
lui $4, 15
sltiu $1, $4, 1
sra $2, $1, 10
TAG741:
multu $2, $2
bgez $2, TAG742
lbu $1, 0($2)
lh $2, 0($2)
TAG742:
lui $2, 10
mfhi $4
beq $4, $4, TAG743
mfhi $2
TAG743:
add $1, $2, $2
bne $1, $1, TAG744
lui $3, 14
mthi $3
TAG744:
lui $3, 5
mtlo $3
mthi $3
sll $0, $0, 0
TAG745:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG746:
lui $2, 6
mflo $4
lui $2, 13
lui $4, 3
TAG747:
mthi $4
div $4, $4
mfhi $1
xori $2, $4, 2
TAG748:
lui $1, 14
lui $1, 0
beq $2, $1, TAG749
lui $3, 0
TAG749:
mflo $2
srav $3, $3, $2
srl $2, $2, 10
bgez $3, TAG750
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop