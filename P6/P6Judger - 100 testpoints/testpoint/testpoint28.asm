ori $1, $0, 11
ori $2, $0, 7
ori $3, $0, 7
ori $4, $0, 15
sw $4, 0($0)
sw $2, 4($0)
sw $1, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $4, 20($0)
sw $1, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $4, 40($0)
sw $2, 44($0)
sw $2, 48($0)
sw $3, 52($0)
sw $3, 56($0)
sw $2, 60($0)
sw $3, 64($0)
sw $2, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $3, 84($0)
sw $1, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $1, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $2, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $4, 124($0)
lbu $3, 0($2)
mfhi $2
srav $2, $2, $2
lw $1, 0($2)
TAG1:
bne $1, $1, TAG2
multu $1, $1
lbu $4, 0($1)
sb $4, 0($1)
TAG2:
mtlo $4
beq $4, $4, TAG3
mtlo $4
beq $4, $4, TAG3
TAG3:
mtlo $4
lui $3, 9
beq $3, $4, TAG4
slt $1, $4, $4
TAG4:
sh $1, 0($1)
lbu $4, 0($1)
mflo $3
sub $3, $3, $3
TAG5:
sw $3, 0($3)
mflo $2
mthi $3
blez $3, TAG6
TAG6:
sb $2, 0($2)
blez $2, TAG7
sw $2, 0($2)
bgez $2, TAG7
TAG7:
lw $4, 0($2)
sw $4, 0($2)
lui $1, 2
sll $0, $0, 0
TAG8:
sltu $2, $1, $1
multu $1, $1
sll $0, $0, 0
mtlo $2
TAG9:
sllv $2, $4, $4
bgez $2, TAG10
xor $3, $4, $2
sltiu $1, $4, 14
TAG10:
sll $0, $0, 0
mtlo $1
srl $1, $1, 0
lui $2, 9
TAG11:
beq $2, $2, TAG12
lui $2, 13
sw $2, 0($2)
ori $3, $2, 3
TAG12:
lui $1, 3
sw $1, 0($3)
mthi $1
lui $3, 15
TAG13:
sll $0, $0, 0
multu $3, $3
beq $3, $3, TAG14
lui $1, 2
TAG14:
bltz $1, TAG15
addu $1, $1, $1
and $4, $1, $1
mflo $1
TAG15:
lh $2, 0($1)
bne $2, $1, TAG16
multu $1, $2
bne $1, $1, TAG16
TAG16:
lw $1, 0($2)
lui $1, 6
sll $0, $0, 0
lui $4, 10
TAG17:
lui $1, 12
mtlo $4
lui $2, 1
srav $1, $1, $1
TAG18:
sll $0, $0, 0
srl $3, $1, 9
mfhi $3
nor $1, $3, $3
TAG19:
mfhi $1
mult $1, $1
sra $4, $1, 12
sltiu $1, $1, 15
TAG20:
nor $4, $1, $1
bgez $1, TAG21
mflo $2
bgez $1, TAG21
TAG21:
mthi $2
bltz $2, TAG22
lui $2, 8
srl $4, $2, 15
TAG22:
mfhi $4
mult $4, $4
lui $4, 5
sltu $2, $4, $4
TAG23:
lui $4, 14
mfhi $4
lui $3, 1
mtlo $2
TAG24:
sltiu $1, $3, 1
beq $1, $1, TAG25
mflo $4
srlv $2, $3, $4
TAG25:
lui $4, 13
mult $4, $2
addiu $4, $4, 3
div $4, $4
TAG26:
mthi $4
divu $4, $4
mfhi $1
sltiu $2, $1, 12
TAG27:
mfhi $1
beq $1, $2, TAG28
multu $1, $1
mult $1, $2
TAG28:
mflo $3
mtlo $3
mflo $3
multu $3, $3
TAG29:
lh $3, 0($3)
multu $3, $3
bne $3, $3, TAG30
subu $2, $3, $3
TAG30:
beq $2, $2, TAG31
sltu $4, $2, $2
srav $2, $4, $4
mflo $3
TAG31:
bgez $3, TAG32
srav $4, $3, $3
bltz $4, TAG32
lui $3, 2
TAG32:
bgez $3, TAG33
lui $1, 12
sb $3, 0($3)
or $2, $1, $1
TAG33:
sw $2, 0($2)
bgtz $2, TAG34
sb $2, 0($2)
lb $4, 0($2)
TAG34:
mfhi $3
mthi $3
sh $3, 0($4)
mthi $3
TAG35:
mfhi $3
sub $4, $3, $3
mthi $3
mtlo $3
TAG36:
slt $2, $4, $4
mfhi $2
blez $2, TAG37
lui $2, 2
TAG37:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
blez $2, TAG38
TAG38:
mfhi $1
mthi $2
lw $1, 0($1)
sra $3, $2, 4
TAG39:
lui $1, 12
div $1, $1
div $3, $1
bltz $3, TAG40
TAG40:
mfhi $1
sh $1, -8192($1)
bgez $1, TAG41
mflo $1
TAG41:
subu $1, $1, $1
multu $1, $1
mflo $3
mthi $1
TAG42:
multu $3, $3
mthi $3
mflo $2
mflo $1
TAG43:
sw $1, 0($1)
mfhi $4
mfhi $2
sh $1, 0($1)
TAG44:
sw $2, 0($2)
mflo $3
andi $1, $2, 3
lui $1, 3
TAG45:
mflo $3
bgtz $1, TAG46
lh $4, 0($3)
mtlo $3
TAG46:
sb $4, 0($4)
slti $1, $4, 7
lb $4, 0($4)
bgtz $4, TAG47
TAG47:
xor $4, $4, $4
lbu $2, 0($4)
bltz $2, TAG48
mtlo $2
TAG48:
xor $1, $2, $2
mthi $1
lh $1, 0($1)
bgez $2, TAG49
TAG49:
lhu $3, 0($1)
blez $3, TAG50
mflo $3
lbu $1, 0($3)
TAG50:
sb $1, 0($1)
sll $2, $1, 12
mthi $2
multu $1, $1
TAG51:
mflo $1
mthi $2
lui $1, 11
sllv $1, $1, $1
TAG52:
lui $2, 12
sll $0, $0, 0
mflo $4
nor $1, $1, $2
TAG53:
sll $0, $0, 0
lw $4, 0($4)
sll $0, $0, 0
mflo $1
TAG54:
sh $1, 0($1)
mult $1, $1
lw $2, 0($1)
or $4, $2, $2
TAG55:
mthi $4
sb $4, 0($4)
sb $4, 0($4)
sw $4, 0($4)
TAG56:
sw $4, 0($4)
bne $4, $4, TAG57
srl $1, $4, 15
srl $4, $4, 8
TAG57:
bltz $4, TAG58
sw $4, 0($4)
lb $2, 0($4)
mult $2, $2
TAG58:
beq $2, $2, TAG59
sb $2, 0($2)
lbu $2, 0($2)
sb $2, 0($2)
TAG59:
mfhi $3
lh $1, 0($3)
mtlo $2
lhu $3, 0($1)
TAG60:
sw $3, 0($3)
multu $3, $3
mult $3, $3
beq $3, $3, TAG61
TAG61:
mflo $1
lui $3, 0
mflo $2
add $3, $3, $2
TAG62:
bne $3, $3, TAG63
multu $3, $3
mthi $3
blez $3, TAG63
TAG63:
lbu $4, 0($3)
beq $3, $4, TAG64
sh $4, 0($4)
mthi $4
TAG64:
mtlo $4
mflo $1
andi $2, $4, 13
bne $4, $1, TAG65
TAG65:
srav $2, $2, $2
xori $1, $2, 10
lb $1, 0($1)
beq $2, $1, TAG66
TAG66:
mfhi $3
bne $1, $3, TAG67
lhu $4, 0($1)
lh $3, 0($1)
TAG67:
mfhi $1
srav $2, $3, $3
lui $3, 8
addi $3, $2, 8
TAG68:
lh $2, 0($3)
mfhi $3
beq $3, $3, TAG69
lui $1, 8
TAG69:
blez $1, TAG70
multu $1, $1
lui $2, 0
lui $3, 8
TAG70:
multu $3, $3
sll $0, $0, 0
addiu $1, $3, 10
lui $4, 7
TAG71:
beq $4, $4, TAG72
xor $3, $4, $4
lhu $1, 0($3)
xori $4, $1, 14
TAG72:
sll $0, $0, 0
mthi $2
addiu $2, $4, 1
sltu $2, $2, $2
TAG73:
bne $2, $2, TAG74
lui $1, 15
sll $0, $0, 0
mfhi $4
TAG74:
beq $4, $4, TAG75
sltiu $4, $4, 8
blez $4, TAG75
sub $4, $4, $4
TAG75:
lb $2, 0($4)
bne $4, $4, TAG76
lw $3, 0($2)
multu $3, $3
TAG76:
bne $3, $3, TAG77
multu $3, $3
mflo $2
lhu $3, 0($2)
TAG77:
bgez $3, TAG78
mthi $3
lui $2, 1
mult $2, $3
TAG78:
multu $2, $2
slti $4, $2, 14
andi $4, $4, 8
sra $2, $2, 3
TAG79:
mfhi $4
beq $4, $4, TAG80
lw $2, 0($4)
bltz $2, TAG80
TAG80:
sh $2, 0($2)
and $3, $2, $2
bltz $3, TAG81
mthi $3
TAG81:
sb $3, 0($3)
lui $4, 8
sll $0, $0, 0
mfhi $3
TAG82:
bltz $3, TAG83
lbu $2, 0($3)
mtlo $2
mflo $2
TAG83:
mtlo $2
bne $2, $2, TAG84
sw $2, 0($2)
mult $2, $2
TAG84:
sw $2, 0($2)
multu $2, $2
lh $2, 0($2)
mthi $2
TAG85:
addi $4, $2, 13
addu $1, $4, $4
addu $1, $1, $4
lui $3, 2
TAG86:
sll $0, $0, 0
bgez $3, TAG87
sll $0, $0, 0
add $1, $3, $3
TAG87:
mult $1, $1
sra $4, $1, 0
mthi $1
beq $1, $4, TAG88
TAG88:
lui $2, 11
lui $3, 15
addu $1, $3, $4
blez $2, TAG89
TAG89:
mflo $1
subu $4, $1, $1
beq $1, $4, TAG90
srlv $3, $4, $4
TAG90:
mtlo $3
bgez $3, TAG91
sb $3, 0($3)
divu $3, $3
TAG91:
mflo $3
mtlo $3
mflo $2
lhu $2, 0($3)
TAG92:
beq $2, $2, TAG93
mfhi $2
sw $2, 0($2)
sltu $1, $2, $2
TAG93:
subu $4, $1, $1
sb $4, -1521($1)
bgtz $4, TAG94
lui $2, 14
TAG94:
beq $2, $2, TAG95
multu $2, $2
addi $1, $2, 0
lw $3, 0($1)
TAG95:
lb $2, 0($3)
mthi $2
lw $4, 0($2)
or $3, $2, $4
TAG96:
lui $1, 10
lbu $4, 0($3)
mflo $2
multu $1, $3
TAG97:
sllv $4, $2, $2
sh $4, 0($4)
mult $2, $2
beq $4, $2, TAG98
TAG98:
mfhi $3
bgtz $4, TAG99
mfhi $4
bne $4, $4, TAG99
TAG99:
srl $1, $4, 10
lui $1, 2
multu $1, $4
multu $4, $4
TAG100:
bgtz $1, TAG101
lui $2, 6
div $1, $2
lui $4, 8
TAG101:
add $2, $4, $4
nor $4, $2, $4
mtlo $4
lb $2, 0($2)
TAG102:
multu $2, $2
bne $2, $2, TAG103
nor $3, $2, $2
bne $3, $2, TAG103
TAG103:
multu $3, $3
mflo $4
slti $1, $3, 12
bne $3, $1, TAG104
TAG104:
addiu $4, $1, 11
slti $2, $4, 2
bgtz $2, TAG105
srav $3, $2, $1
TAG105:
mult $3, $3
multu $3, $3
mthi $3
lhu $3, 0($3)
TAG106:
sw $3, 0($3)
addiu $3, $3, 2
lh $2, 0($3)
sll $2, $3, 1
TAG107:
lhu $3, 0($2)
mthi $3
sb $3, 0($3)
lb $4, 0($3)
TAG108:
beq $4, $4, TAG109
srl $1, $4, 8
divu $1, $1
sw $4, 0($1)
TAG109:
mfhi $3
beq $1, $1, TAG110
multu $3, $1
sra $1, $1, 5
TAG110:
beq $1, $1, TAG111
mthi $1
sll $2, $1, 6
srlv $1, $1, $2
TAG111:
srlv $2, $1, $1
sw $2, 0($2)
sb $1, 0($2)
lb $4, 0($2)
TAG112:
mult $4, $4
mthi $4
sh $4, 0($4)
blez $4, TAG113
TAG113:
mtlo $4
lbu $1, 0($4)
addu $1, $1, $1
addi $4, $1, 3
TAG114:
bne $4, $4, TAG115
lui $4, 11
ori $3, $4, 15
lui $3, 0
TAG115:
xori $3, $3, 5
sltu $1, $3, $3
lui $2, 11
sll $0, $0, 0
TAG116:
andi $3, $2, 10
xori $3, $2, 5
mthi $3
mult $3, $3
TAG117:
mthi $3
mtlo $3
addu $3, $3, $3
mthi $3
TAG118:
mflo $1
bgez $3, TAG119
sll $0, $0, 0
mthi $3
TAG119:
lui $1, 13
srav $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG120:
bgez $3, TAG121
mflo $2
divu $2, $3
bltz $2, TAG121
TAG121:
xori $2, $2, 7
mthi $2
sll $0, $0, 0
sll $0, $0, 0
TAG122:
lui $3, 11
sra $2, $2, 2
div $3, $3
beq $3, $2, TAG123
TAG123:
mflo $1
lui $1, 14
lui $4, 7
sll $0, $0, 0
TAG124:
divu $3, $3
lui $4, 12
mthi $3
mflo $2
TAG125:
srlv $2, $2, $2
and $3, $2, $2
lui $1, 3
bne $3, $3, TAG126
TAG126:
lui $4, 3
mtlo $4
ori $3, $1, 11
mthi $1
TAG127:
sll $1, $3, 1
sll $0, $0, 0
sll $0, $0, 0
sra $3, $1, 15
TAG128:
srav $4, $3, $3
mult $4, $3
mfhi $1
sll $1, $3, 7
TAG129:
subu $1, $1, $1
sltu $2, $1, $1
lui $4, 4
divu $1, $4
TAG130:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG131:
bgez $4, TAG132
slti $2, $4, 14
mtlo $4
sw $4, 0($4)
TAG132:
lui $2, 9
mfhi $1
multu $1, $1
slti $1, $2, 6
TAG133:
sh $1, 0($1)
mfhi $2
lui $1, 3
addu $2, $1, $1
TAG134:
bne $2, $2, TAG135
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG135
TAG135:
subu $4, $2, $2
bgtz $2, TAG136
xor $2, $4, $4
sltiu $1, $4, 13
TAG136:
sll $0, $0, 0
lui $3, 8
xori $1, $3, 6
mfhi $1
TAG137:
lhu $3, 0($1)
mfhi $3
lui $2, 4
bltz $1, TAG138
TAG138:
andi $1, $2, 1
addi $1, $1, 14
mthi $1
sll $0, $0, 0
TAG139:
mult $2, $2
sll $0, $0, 0
mflo $4
sb $4, 0($4)
TAG140:
slt $4, $4, $4
lui $1, 13
sw $4, 0($4)
lhu $1, 0($4)
TAG141:
lui $2, 11
bltz $1, TAG142
sll $0, $0, 0
nor $2, $1, $3
TAG142:
sw $2, 1($2)
blez $2, TAG143
lui $1, 4
mflo $4
TAG143:
bne $4, $4, TAG144
mfhi $2
srlv $1, $2, $4
sw $2, 0($1)
TAG144:
addiu $2, $1, 5
lhu $1, 0($1)
div $1, $2
lbu $1, 0($2)
TAG145:
mthi $1
sra $1, $1, 10
lui $3, 7
sh $1, 0($1)
TAG146:
sll $0, $0, 0
and $3, $3, $3
bgtz $3, TAG147
multu $3, $3
TAG147:
lui $4, 6
addu $3, $4, $4
sll $0, $0, 0
mfhi $4
TAG148:
lbu $1, 0($4)
blez $4, TAG149
nor $1, $1, $1
sra $2, $1, 10
TAG149:
mflo $3
sh $3, 1($2)
sb $2, 0($3)
beq $2, $3, TAG150
TAG150:
lui $2, 1
ori $1, $3, 13
andi $3, $1, 13
addu $2, $3, $2
TAG151:
mfhi $3
sll $0, $0, 0
bgez $3, TAG152
srlv $1, $2, $3
TAG152:
sb $1, 0($1)
bgez $1, TAG153
sltu $2, $1, $1
lw $1, 0($1)
TAG153:
srl $2, $1, 0
lui $1, 14
beq $1, $2, TAG154
sll $0, $0, 0
TAG154:
mflo $4
lui $3, 12
blez $1, TAG155
sllv $2, $1, $4
TAG155:
beq $2, $2, TAG156
mtlo $2
mfhi $3
mfhi $1
TAG156:
bltz $1, TAG157
mthi $1
sll $0, $0, 0
beq $4, $4, TAG157
TAG157:
srl $2, $4, 12
lhu $1, 0($2)
mthi $4
mtlo $4
TAG158:
lui $3, 11
lui $3, 7
lbu $2, 0($1)
bltz $2, TAG159
TAG159:
mtlo $2
lui $1, 10
addiu $1, $1, 10
bltz $2, TAG160
TAG160:
lui $3, 15
bne $3, $1, TAG161
ori $4, $3, 11
sll $1, $4, 5
TAG161:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
sll $0, $0, 0
TAG162:
multu $3, $3
bltz $3, TAG163
sh $3, 0($3)
lui $2, 8
TAG163:
div $2, $2
lui $4, 4
blez $4, TAG164
slti $3, $4, 1
TAG164:
mthi $3
mflo $4
blez $4, TAG165
lhu $1, 0($3)
TAG165:
mtlo $1
xori $1, $1, 1
mult $1, $1
bne $1, $1, TAG166
TAG166:
mfhi $3
lui $2, 3
mult $3, $3
mult $3, $2
TAG167:
multu $2, $2
lui $2, 2
lui $4, 7
mtlo $2
TAG168:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lui $4, 10
TAG169:
mtlo $4
sll $0, $0, 0
srav $4, $4, $4
sll $0, $0, 0
TAG170:
sltu $2, $4, $4
beq $4, $4, TAG171
lui $2, 6
lui $4, 1
TAG171:
mtlo $4
slti $4, $4, 3
mfhi $2
bltz $4, TAG172
TAG172:
mult $2, $2
sra $4, $2, 9
lbu $3, 0($2)
bgtz $4, TAG173
TAG173:
multu $3, $3
bgtz $3, TAG174
lui $2, 2
divu $3, $2
TAG174:
multu $2, $2
sra $3, $2, 9
ori $3, $2, 13
mfhi $1
TAG175:
beq $1, $1, TAG176
lhu $1, 0($1)
addiu $3, $1, 1
bgtz $3, TAG176
TAG176:
divu $3, $3
bltz $3, TAG177
andi $1, $3, 9
beq $3, $3, TAG177
TAG177:
mult $1, $1
lui $3, 11
bgez $1, TAG178
sll $0, $0, 0
TAG178:
subu $4, $3, $3
ori $2, $3, 1
sll $0, $0, 0
sll $0, $0, 0
TAG179:
bltz $4, TAG180
sb $4, 0($4)
mflo $1
sb $1, 0($4)
TAG180:
ori $2, $1, 1
div $2, $1
ori $4, $1, 4
mthi $4
TAG181:
blez $4, TAG182
div $4, $4
subu $2, $4, $4
andi $1, $4, 5
TAG182:
beq $1, $1, TAG183
mflo $2
mult $2, $2
bgez $1, TAG183
TAG183:
mtlo $2
sltiu $4, $2, 8
sb $2, 0($4)
lui $1, 0
TAG184:
lui $4, 7
lui $2, 14
sll $0, $0, 0
mflo $3
TAG185:
mult $3, $3
beq $3, $3, TAG186
sll $2, $3, 7
sb $2, 0($2)
TAG186:
sh $2, 0($2)
xori $4, $2, 11
bgez $2, TAG187
mthi $4
TAG187:
slt $4, $4, $4
sll $1, $4, 8
mthi $4
lui $1, 3
TAG188:
xor $3, $1, $1
bltz $1, TAG189
lui $3, 3
mult $3, $3
TAG189:
sll $0, $0, 0
beq $3, $2, TAG190
lw $1, 0($2)
mflo $2
TAG190:
lui $4, 11
sll $0, $0, 0
xori $1, $2, 4
sltiu $4, $2, 0
TAG191:
sll $3, $4, 1
lui $1, 7
mflo $3
mult $4, $1
TAG192:
mfhi $4
addu $1, $4, $3
mthi $1
mtlo $4
TAG193:
mflo $1
multu $1, $1
sb $1, 0($1)
bltz $1, TAG194
TAG194:
addi $2, $1, 7
beq $2, $1, TAG195
mult $1, $2
sub $4, $1, $1
TAG195:
mfhi $4
blez $4, TAG196
srav $4, $4, $4
beq $4, $4, TAG196
TAG196:
multu $4, $4
sw $4, 0($4)
blez $4, TAG197
mfhi $2
TAG197:
multu $2, $2
sh $2, 0($2)
beq $2, $2, TAG198
sw $2, 0($2)
TAG198:
sb $2, 0($2)
mtlo $2
beq $2, $2, TAG199
mflo $2
TAG199:
bgez $2, TAG200
sw $2, 0($2)
lh $4, 0($2)
bgtz $2, TAG200
TAG200:
mfhi $1
bgez $1, TAG201
mfhi $3
sltiu $4, $3, 4
TAG201:
sh $4, 0($4)
sw $4, 0($4)
lui $3, 0
addi $4, $3, 7
TAG202:
lui $2, 1
sll $0, $0, 0
beq $4, $4, TAG203
lui $3, 7
TAG203:
slt $2, $3, $3
sra $4, $3, 1
slti $1, $2, 6
sltiu $2, $1, 1
TAG204:
mfhi $1
lui $2, 7
sh $1, 0($1)
beq $2, $2, TAG205
TAG205:
mflo $1
mfhi $2
addi $3, $1, 15
lui $3, 7
TAG206:
sllv $2, $3, $3
sll $0, $0, 0
bne $2, $2, TAG207
mflo $1
TAG207:
mult $1, $1
mult $1, $1
subu $1, $1, $1
bne $1, $1, TAG208
TAG208:
sh $1, 0($1)
nor $4, $1, $1
sh $4, 1($4)
mtlo $4
TAG209:
divu $4, $4
mfhi $1
nor $3, $4, $1
sh $3, 0($1)
TAG210:
mult $3, $3
sllv $4, $3, $3
mfhi $2
lhu $1, 0($3)
TAG211:
sh $1, 0($1)
mtlo $1
mfhi $3
sh $3, 0($3)
TAG212:
sb $3, 0($3)
blez $3, TAG213
lui $2, 8
mthi $3
TAG213:
div $2, $2
mflo $4
beq $2, $2, TAG214
mtlo $2
TAG214:
xori $1, $4, 3
mflo $4
lui $1, 15
andi $1, $1, 11
TAG215:
mflo $4
lui $2, 8
beq $2, $4, TAG216
addiu $1, $4, 12
TAG216:
bgtz $1, TAG217
divu $1, $1
srl $2, $1, 14
sb $1, 0($1)
TAG217:
multu $2, $2
slti $3, $2, 6
mtlo $2
mtlo $2
TAG218:
andi $1, $3, 6
sltiu $2, $1, 7
mflo $4
mthi $3
TAG219:
sll $0, $0, 0
beq $4, $4, TAG220
sll $0, $0, 0
multu $4, $4
TAG220:
xor $1, $4, $4
lui $3, 0
lui $4, 0
nor $1, $4, $4
TAG221:
sh $1, 1($1)
lui $1, 8
beq $1, $1, TAG222
sll $0, $0, 0
TAG222:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
beq $1, $1, TAG223
TAG223:
lui $2, 1
mtlo $1
bne $1, $1, TAG224
lui $1, 4
TAG224:
lui $2, 15
bgtz $2, TAG225
addiu $1, $2, 6
or $3, $1, $1
TAG225:
mthi $3
bltz $3, TAG226
multu $3, $3
addiu $4, $3, 0
TAG226:
lhu $4, 0($4)
mtlo $4
sll $0, $0, 0
div $4, $4
TAG227:
lui $1, 11
sll $0, $0, 0
lui $3, 9
mtlo $3
TAG228:
mtlo $3
slt $1, $3, $3
div $1, $3
multu $1, $1
TAG229:
addi $1, $1, 5
mtlo $1
sb $1, 0($1)
multu $1, $1
TAG230:
mtlo $1
bltz $1, TAG231
lb $3, 0($1)
mthi $3
TAG231:
bgtz $3, TAG232
xori $4, $3, 1
srav $3, $3, $4
addiu $4, $4, 0
TAG232:
sh $4, 0($4)
mthi $4
bgez $4, TAG233
mthi $4
TAG233:
lhu $3, 0($4)
addiu $2, $3, 10
sw $2, 0($3)
sll $1, $4, 10
TAG234:
sll $0, $0, 0
bgtz $1, TAG235
mflo $4
bgtz $1, TAG235
TAG235:
mtlo $4
addiu $3, $4, 1
mtlo $3
blez $4, TAG236
TAG236:
mtlo $3
or $1, $3, $3
slti $3, $1, 9
mtlo $3
TAG237:
mflo $4
bne $3, $4, TAG238
mflo $3
or $1, $3, $4
TAG238:
lui $3, 12
bgez $3, TAG239
srl $2, $3, 12
lhu $3, 0($3)
TAG239:
mthi $3
sll $0, $0, 0
sra $2, $3, 10
sltiu $3, $3, 8
TAG240:
beq $3, $3, TAG241
sw $3, 0($3)
mtlo $3
bltz $3, TAG241
TAG241:
sra $2, $3, 14
beq $3, $3, TAG242
multu $2, $3
sb $2, 0($2)
TAG242:
mult $2, $2
lb $2, 0($2)
mult $2, $2
bgtz $2, TAG243
TAG243:
mtlo $2
mflo $4
mthi $2
bne $2, $2, TAG244
TAG244:
multu $4, $4
sltu $2, $4, $4
lui $3, 12
lbu $2, 0($4)
TAG245:
blez $2, TAG246
lui $3, 10
addi $1, $2, 10
mult $3, $3
TAG246:
mthi $1
subu $1, $1, $1
sh $1, 0($1)
mfhi $1
TAG247:
mtlo $1
mflo $1
mfhi $1
sb $1, 0($1)
TAG248:
sb $1, 0($1)
bne $1, $1, TAG249
sb $1, 0($1)
sb $1, 0($1)
TAG249:
beq $1, $1, TAG250
lb $2, 0($1)
mflo $4
addi $2, $1, 5
TAG250:
sb $2, 0($2)
subu $2, $2, $2
sub $3, $2, $2
sh $2, 0($2)
TAG251:
mult $3, $3
lui $2, 11
sll $0, $0, 0
bne $1, $3, TAG252
TAG252:
lbu $1, 0($1)
lh $2, 0($1)
ori $1, $1, 0
lui $4, 3
TAG253:
divu $4, $4
multu $4, $4
mfhi $4
sb $4, 0($4)
TAG254:
subu $3, $4, $4
bne $4, $4, TAG255
xori $3, $4, 10
bne $3, $4, TAG255
TAG255:
mtlo $3
sb $3, 0($3)
bgtz $3, TAG256
mthi $3
TAG256:
subu $3, $3, $3
sb $3, 0($3)
mfhi $3
divu $3, $3
TAG257:
lui $4, 9
lui $2, 9
mtlo $4
lui $3, 11
TAG258:
mfhi $2
xori $1, $3, 3
lui $4, 0
xor $1, $4, $2
TAG259:
sw $1, 0($1)
blez $1, TAG260
sh $1, 0($1)
lb $1, 0($1)
TAG260:
sw $1, 0($1)
multu $1, $1
srl $2, $1, 6
mthi $1
TAG261:
bltz $2, TAG262
slti $1, $2, 14
lui $4, 7
lb $1, 0($1)
TAG262:
lui $3, 0
bne $3, $3, TAG263
mtlo $3
sllv $3, $1, $3
TAG263:
lui $4, 2
mthi $3
bne $3, $4, TAG264
mfhi $4
TAG264:
lui $2, 0
mthi $4
mult $2, $4
mflo $4
TAG265:
lbu $4, 0($4)
sltiu $3, $4, 14
multu $4, $4
mult $4, $4
TAG266:
sb $3, 0($3)
div $3, $3
mfhi $4
lb $4, 0($3)
TAG267:
blez $4, TAG268
and $3, $4, $4
bgez $3, TAG268
mult $4, $4
TAG268:
sltiu $4, $3, 4
beq $4, $4, TAG269
lui $3, 5
mfhi $3
TAG269:
divu $3, $3
srav $1, $3, $3
sll $0, $0, 0
lui $3, 2
TAG270:
andi $3, $3, 4
lui $2, 9
sltiu $3, $3, 11
lui $1, 15
TAG271:
lui $3, 11
beq $1, $1, TAG272
lui $4, 14
bltz $1, TAG272
TAG272:
addiu $2, $4, 15
mflo $3
lui $2, 1
sll $0, $0, 0
TAG273:
bltz $1, TAG274
addu $4, $1, $1
sltiu $3, $1, 0
sll $0, $0, 0
TAG274:
andi $2, $3, 15
slt $3, $3, $2
mflo $3
bne $3, $3, TAG275
TAG275:
andi $2, $3, 11
lui $4, 4
mfhi $1
sll $0, $0, 0
TAG276:
andi $4, $2, 9
divu $4, $4
sb $4, 0($4)
bne $4, $2, TAG277
TAG277:
ori $3, $4, 6
blez $4, TAG278
and $1, $3, $4
sb $3, 0($4)
TAG278:
mtlo $1
lbu $4, 0($1)
lb $2, 0($4)
mflo $2
TAG279:
lui $4, 9
bne $4, $2, TAG280
lui $1, 4
mfhi $2
TAG280:
lb $2, 0($2)
divu $2, $2
sll $1, $2, 0
lui $1, 8
TAG281:
sll $0, $0, 0
bne $1, $1, TAG282
srl $1, $1, 0
bgtz $1, TAG282
TAG282:
sll $0, $0, 0
slt $4, $1, $3
sra $3, $3, 14
bgtz $4, TAG283
TAG283:
lhu $2, 0($3)
mtlo $3
mult $2, $3
sllv $2, $3, $2
TAG284:
bgez $2, TAG285
mflo $4
lw $4, 0($2)
lh $4, 0($2)
TAG285:
lui $1, 9
srlv $1, $4, $1
andi $1, $1, 3
sub $4, $1, $1
TAG286:
mult $4, $4
xor $3, $4, $4
ori $3, $4, 3
sb $4, 0($3)
TAG287:
div $3, $3
sb $3, 0($3)
div $3, $3
lui $2, 14
TAG288:
mfhi $1
sll $0, $0, 0
mflo $1
lbu $1, 0($1)
TAG289:
mtlo $1
xor $1, $1, $1
mtlo $1
lw $3, 0($1)
TAG290:
mflo $4
multu $3, $3
divu $3, $3
lui $2, 11
TAG291:
sll $0, $0, 0
mflo $2
subu $1, $2, $2
mfhi $3
TAG292:
bne $3, $3, TAG293
mthi $3
srl $3, $3, 2
mult $3, $3
TAG293:
mflo $1
mfhi $1
addi $4, $1, 13
bltz $1, TAG294
TAG294:
sb $4, 0($4)
mthi $4
mtlo $4
sb $4, 0($4)
TAG295:
beq $4, $4, TAG296
lui $4, 1
bltz $4, TAG296
lb $4, 0($4)
TAG296:
multu $4, $4
sll $0, $0, 0
div $4, $4
lui $2, 14
TAG297:
bne $2, $2, TAG298
addiu $3, $2, 6
sll $0, $0, 0
lui $4, 15
TAG298:
mthi $4
bgez $4, TAG299
sll $0, $0, 0
divu $4, $4
TAG299:
slti $3, $4, 11
beq $4, $4, TAG300
or $4, $3, $4
sh $4, 0($4)
TAG300:
andi $3, $4, 0
sh $3, 0($3)
sh $4, 0($3)
sll $0, $0, 0
TAG301:
mtlo $1
blez $1, TAG302
multu $1, $1
mtlo $1
TAG302:
lui $1, 14
bltz $1, TAG303
sll $0, $0, 0
sll $0, $0, 0
TAG303:
sh $3, 0($3)
lhu $1, 0($3)
bltz $1, TAG304
lui $3, 10
TAG304:
sll $0, $0, 0
mfhi $3
sra $4, $3, 10
bne $3, $3, TAG305
TAG305:
addu $3, $4, $4
beq $3, $4, TAG306
mthi $3
sw $4, 0($4)
TAG306:
bltz $3, TAG307
lhu $1, 0($3)
xori $1, $3, 4
bne $1, $3, TAG307
TAG307:
lui $4, 2
xor $3, $1, $1
mthi $3
bltz $3, TAG308
TAG308:
slt $1, $3, $3
mtlo $3
mfhi $3
lui $4, 9
TAG309:
beq $4, $4, TAG310
ori $2, $4, 2
lui $4, 1
bne $4, $4, TAG310
TAG310:
mtlo $4
mthi $4
beq $4, $4, TAG311
sll $0, $0, 0
TAG311:
bne $4, $4, TAG312
mflo $2
xori $3, $4, 11
bgez $3, TAG312
TAG312:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG313
addiu $4, $3, 4
TAG313:
andi $1, $4, 7
xor $2, $4, $4
bgez $2, TAG314
srl $3, $1, 0
TAG314:
lbu $3, 0($3)
lh $2, 0($3)
beq $3, $2, TAG315
lhu $4, 0($3)
TAG315:
lb $3, 0($4)
xori $2, $4, 12
lh $4, 0($4)
mfhi $1
TAG316:
mthi $1
bltz $1, TAG317
lui $1, 12
srl $3, $1, 8
TAG317:
lui $2, 2
sll $0, $0, 0
lui $2, 2
mult $2, $2
TAG318:
bgez $2, TAG319
and $3, $2, $2
add $4, $2, $3
sh $3, 0($3)
TAG319:
beq $4, $4, TAG320
lb $3, 0($4)
beq $4, $4, TAG320
div $4, $4
TAG320:
mthi $3
lh $2, 0($3)
lui $2, 2
lui $3, 15
TAG321:
mult $3, $3
bltz $3, TAG322
lui $1, 6
bne $3, $3, TAG322
TAG322:
mfhi $3
sw $3, -225($3)
bgtz $3, TAG323
div $3, $3
TAG323:
sll $0, $0, 0
srlv $3, $3, $3
mflo $2
multu $3, $3
TAG324:
bne $2, $2, TAG325
sb $2, 0($2)
lui $2, 13
mfhi $2
TAG325:
mtlo $2
mtlo $2
lw $1, 0($2)
sw $1, -481($1)
TAG326:
andi $4, $1, 2
ori $4, $1, 0
bne $4, $4, TAG327
mtlo $1
TAG327:
bne $4, $4, TAG328
lui $3, 12
beq $4, $4, TAG328
mfhi $1
TAG328:
beq $1, $1, TAG329
lui $1, 10
addiu $4, $1, 13
lw $3, 0($4)
TAG329:
mult $3, $3
srl $2, $3, 9
mtlo $2
xori $3, $3, 13
TAG330:
mthi $3
mthi $3
beq $3, $3, TAG331
mflo $3
TAG331:
lui $4, 4
mtlo $3
bgtz $3, TAG332
lui $2, 9
TAG332:
sllv $3, $2, $2
sll $0, $0, 0
mtlo $3
sllv $4, $3, $2
TAG333:
mflo $4
mfhi $3
sll $0, $0, 0
addu $2, $3, $3
TAG334:
mflo $2
sll $0, $0, 0
sll $0, $0, 0
beq $2, $2, TAG335
TAG335:
addiu $3, $2, 4
mtlo $3
sll $0, $0, 0
blez $3, TAG336
TAG336:
lui $1, 13
bgtz $1, TAG337
sll $0, $0, 0
mflo $2
TAG337:
mflo $1
mflo $2
divu $2, $1
sll $0, $0, 0
TAG338:
slt $1, $2, $2
mtlo $2
mthi $2
blez $2, TAG339
TAG339:
lui $2, 12
sll $0, $0, 0
xori $3, $2, 8
lb $1, 0($1)
TAG340:
sll $0, $0, 0
mthi $4
andi $3, $4, 7
mthi $1
TAG341:
lw $4, 0($3)
blez $3, TAG342
lui $1, 14
lw $4, 0($1)
TAG342:
mfhi $1
lui $1, 8
bgez $1, TAG343
slti $4, $1, 10
TAG343:
mfhi $4
bne $4, $4, TAG344
mult $4, $4
lb $4, 31($4)
TAG344:
mult $4, $4
sb $4, 31($4)
divu $4, $4
mthi $4
TAG345:
bne $4, $4, TAG346
mult $4, $4
bltz $4, TAG346
mthi $4
TAG346:
sll $0, $0, 0
mtlo $1
lui $4, 5
mthi $1
TAG347:
bltz $4, TAG348
mtlo $4
andi $2, $4, 3
sll $0, $0, 0
TAG348:
divu $4, $4
slti $4, $4, 4
multu $4, $4
srav $4, $4, $4
TAG349:
lui $1, 13
mult $4, $4
bne $1, $1, TAG350
slti $2, $4, 8
TAG350:
mthi $2
lui $2, 6
bltz $2, TAG351
divu $2, $2
TAG351:
subu $3, $2, $2
lui $4, 8
sltiu $4, $2, 10
mfhi $4
TAG352:
blez $4, TAG353
mfhi $2
sll $2, $4, 3
beq $2, $4, TAG353
TAG353:
lbu $3, 0($2)
mfhi $3
lui $3, 1
sll $0, $0, 0
TAG354:
bne $1, $1, TAG355
srav $4, $1, $1
srl $3, $1, 13
lui $4, 3
TAG355:
srlv $4, $4, $4
bgtz $4, TAG356
sltiu $3, $4, 14
mtlo $3
TAG356:
xori $1, $3, 11
bgez $1, TAG357
mtlo $3
addi $2, $3, 1
TAG357:
srl $1, $2, 13
mult $2, $2
sltiu $3, $2, 4
lui $3, 11
TAG358:
lui $4, 11
xor $2, $3, $3
lui $2, 5
ori $4, $2, 8
TAG359:
mfhi $1
mtlo $4
sh $4, 0($1)
mtlo $1
TAG360:
lui $4, 11
mult $4, $1
mult $4, $1
srav $4, $4, $1
TAG361:
sll $0, $0, 0
mflo $4
lui $2, 11
lui $1, 2
TAG362:
div $1, $1
mthi $1
mfhi $1
bgez $1, TAG363
TAG363:
mflo $3
addiu $3, $1, 11
srlv $2, $1, $1
beq $1, $1, TAG364
TAG364:
divu $2, $2
mflo $1
srlv $4, $2, $2
mtlo $1
TAG365:
mflo $1
bltz $1, TAG366
srl $1, $1, 12
multu $1, $1
TAG366:
bltz $1, TAG367
ori $1, $1, 15
lui $2, 4
sb $1, 0($1)
TAG367:
sll $0, $0, 0
sll $0, $0, 0
div $2, $2
nor $3, $2, $2
TAG368:
mfhi $4
andi $1, $4, 13
slti $1, $3, 0
mtlo $1
TAG369:
sb $1, 0($1)
bgez $1, TAG370
lb $2, 0($1)
blez $2, TAG370
TAG370:
sb $2, 0($2)
mflo $3
beq $3, $2, TAG371
sltu $1, $3, $3
TAG371:
mthi $1
lui $1, 13
blez $1, TAG372
mflo $3
TAG372:
sb $3, 0($3)
mtlo $3
lui $4, 13
beq $4, $4, TAG373
TAG373:
mflo $2
mtlo $2
srl $2, $2, 8
sll $0, $0, 0
TAG374:
mthi $2
bgez $2, TAG375
mthi $2
beq $2, $2, TAG375
TAG375:
sh $2, 0($2)
mflo $3
bne $3, $3, TAG376
lui $2, 14
TAG376:
and $1, $2, $2
slti $2, $2, 2
lui $4, 5
ori $1, $4, 5
TAG377:
mtlo $1
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG378
TAG378:
sll $0, $0, 0
beq $1, $1, TAG379
multu $1, $1
mflo $2
TAG379:
mflo $2
lui $1, 11
beq $2, $1, TAG380
mult $2, $1
TAG380:
mtlo $1
mtlo $1
nor $1, $1, $1
mult $1, $1
TAG381:
sll $0, $0, 0
mult $1, $3
lui $1, 8
sll $0, $0, 0
TAG382:
addiu $1, $4, 6
subu $2, $1, $4
sll $0, $0, 0
lui $4, 0
TAG383:
lh $4, 0($4)
mult $4, $4
mfhi $2
lbu $2, 0($4)
TAG384:
mflo $4
srl $3, $2, 7
mflo $3
blez $3, TAG385
TAG385:
sll $4, $3, 10
sw $4, 0($4)
mflo $4
and $4, $3, $4
TAG386:
sw $4, 0($4)
blez $4, TAG387
subu $1, $4, $4
multu $1, $1
TAG387:
sw $1, 0($1)
addi $1, $1, 2
srlv $2, $1, $1
addu $4, $1, $2
TAG388:
beq $4, $4, TAG389
sh $4, 0($4)
bne $4, $4, TAG389
lb $4, 0($4)
TAG389:
addiu $2, $4, 10
divu $2, $2
lh $1, 0($2)
bne $2, $4, TAG390
TAG390:
sra $3, $1, 2
mult $3, $1
lui $4, 14
sh $4, -833($3)
TAG391:
multu $4, $4
lui $3, 9
bgtz $3, TAG392
addiu $1, $3, 4
TAG392:
multu $1, $1
bne $1, $1, TAG393
xori $1, $1, 11
mfhi $2
TAG393:
addiu $2, $2, 3
blez $2, TAG394
srav $1, $2, $2
subu $2, $1, $2
TAG394:
beq $2, $2, TAG395
lb $2, 84($2)
mflo $2
bgez $2, TAG395
TAG395:
lb $3, 0($2)
srl $2, $2, 8
mult $2, $3
ori $1, $2, 2
TAG396:
sltu $4, $1, $1
subu $1, $4, $1
sll $1, $1, 1
addiu $3, $1, 9
TAG397:
multu $3, $3
andi $2, $3, 9
bne $2, $3, TAG398
xori $4, $3, 13
TAG398:
mflo $2
lb $3, 0($4)
addiu $2, $3, 1
mthi $4
TAG399:
mtlo $2
lb $3, 0($2)
div $2, $3
lbu $2, 0($3)
TAG400:
beq $2, $2, TAG401
lui $3, 15
srlv $3, $2, $3
sw $3, 0($3)
TAG401:
sll $0, $0, 0
div $1, $3
beq $3, $1, TAG402
sw $1, 4($1)
TAG402:
mfhi $1
bgez $1, TAG403
lui $4, 12
lui $1, 5
TAG403:
mtlo $1
blez $1, TAG404
sll $0, $0, 0
sll $0, $0, 0
TAG404:
bgez $1, TAG405
mflo $2
lui $4, 1
multu $2, $4
TAG405:
lui $2, 15
sll $4, $2, 8
sll $0, $0, 0
mtlo $2
TAG406:
bgtz $1, TAG407
sll $0, $0, 0
divu $1, $1
lb $3, 0($1)
TAG407:
sll $0, $0, 0
sll $0, $0, 0
blez $3, TAG408
mtlo $3
TAG408:
slti $2, $2, 7
bne $2, $2, TAG409
xor $1, $2, $2
bltz $2, TAG409
TAG409:
mult $1, $1
bgez $1, TAG410
mthi $1
bltz $1, TAG410
TAG410:
lb $4, 0($1)
beq $1, $1, TAG411
multu $1, $1
mthi $1
TAG411:
subu $2, $4, $4
mtlo $4
srav $2, $2, $2
lw $3, 0($2)
TAG412:
mfhi $1
lui $2, 1
subu $1, $3, $1
lui $2, 12
TAG413:
mthi $2
sll $0, $0, 0
sllv $4, $2, $2
sll $0, $0, 0
TAG414:
divu $4, $4
bgtz $4, TAG415
lui $2, 14
multu $2, $2
TAG415:
sll $0, $0, 0
sll $0, $0, 0
nor $1, $3, $3
mult $2, $1
TAG416:
sb $1, 0($1)
lui $2, 12
bne $2, $1, TAG417
slt $3, $1, $1
TAG417:
mfhi $4
blez $4, TAG418
srl $4, $4, 10
beq $3, $4, TAG418
TAG418:
sllv $4, $4, $4
sb $4, 0($4)
sb $4, 0($4)
add $1, $4, $4
TAG419:
bgtz $1, TAG420
lhu $1, 0($1)
div $1, $1
andi $4, $1, 12
TAG420:
lb $3, 0($4)
bne $4, $4, TAG421
lui $1, 15
mfhi $3
TAG421:
mult $3, $3
mflo $2
mthi $2
lui $4, 11
TAG422:
lui $4, 7
sll $0, $0, 0
srl $3, $4, 13
sll $0, $0, 0
TAG423:
lui $2, 11
mtlo $2
addiu $1, $1, 7
bgtz $1, TAG424
TAG424:
divu $1, $1
sll $0, $0, 0
mtlo $1
bne $1, $1, TAG425
TAG425:
lui $4, 2
div $1, $1
sltiu $3, $1, 8
ori $3, $3, 11
TAG426:
beq $3, $3, TAG427
lui $1, 14
srlv $1, $1, $3
slti $2, $3, 12
TAG427:
sll $0, $0, 0
lui $4, 1
beq $2, $4, TAG428
div $2, $2
TAG428:
divu $4, $4
multu $4, $4
sll $0, $0, 0
sll $1, $4, 10
TAG429:
beq $1, $1, TAG430
mflo $1
mfhi $2
sltu $2, $1, $1
TAG430:
blez $2, TAG431
mult $2, $2
mult $2, $2
bltz $2, TAG431
TAG431:
sll $0, $0, 0
mthi $3
ori $1, $2, 12
sll $0, $0, 0
TAG432:
andi $4, $1, 13
beq $1, $1, TAG433
sll $0, $0, 0
mfhi $1
TAG433:
beq $1, $1, TAG434
multu $1, $1
lui $3, 14
bne $1, $3, TAG434
TAG434:
srlv $2, $3, $3
mthi $2
multu $2, $3
beq $2, $2, TAG435
TAG435:
mfhi $2
sh $2, 0($2)
bltz $2, TAG436
mtlo $2
TAG436:
lui $1, 1
lb $1, 0($2)
mthi $1
srl $2, $1, 3
TAG437:
multu $2, $2
srl $4, $2, 2
mfhi $2
and $4, $2, $4
TAG438:
lui $4, 1
xori $4, $4, 2
mfhi $3
mthi $4
TAG439:
blez $3, TAG440
sltu $1, $3, $3
lhu $3, 0($1)
mthi $3
TAG440:
mflo $2
xori $1, $2, 13
and $4, $2, $2
bne $2, $1, TAG441
TAG441:
srl $1, $4, 1
addu $3, $4, $1
srl $2, $1, 1
bgtz $3, TAG442
TAG442:
lhu $4, 0($2)
sw $2, 0($4)
mtlo $4
lbu $2, 0($2)
TAG443:
bne $2, $2, TAG444
mthi $2
sb $2, 0($2)
sb $2, 0($2)
TAG444:
slt $4, $2, $2
mult $4, $2
mthi $4
lui $2, 6
TAG445:
mthi $2
lui $4, 14
bgez $4, TAG446
srlv $1, $4, $2
TAG446:
beq $1, $1, TAG447
lui $2, 6
lui $1, 5
mtlo $1
TAG447:
and $2, $1, $1
div $2, $1
sll $0, $0, 0
mtlo $1
TAG448:
lui $3, 9
mflo $4
multu $4, $4
bne $3, $3, TAG449
TAG449:
srl $4, $4, 15
beq $4, $4, TAG450
mfhi $1
bltz $4, TAG450
TAG450:
sw $1, -196($1)
bgtz $1, TAG451
lbu $1, -196($1)
ori $2, $1, 0
TAG451:
mult $2, $2
multu $2, $2
sll $0, $0, 0
and $4, $4, $2
TAG452:
mflo $2
or $3, $4, $4
bgtz $3, TAG453
sh $4, 0($4)
TAG453:
lw $4, 0($3)
slti $3, $3, 8
and $4, $3, $4
bgez $3, TAG454
TAG454:
lbu $4, 0($4)
add $2, $4, $4
or $4, $4, $4
sll $4, $4, 14
TAG455:
lui $1, 2
sll $0, $0, 0
srl $1, $1, 10
lui $4, 7
TAG456:
lui $1, 15
sll $0, $0, 0
mflo $3
mthi $4
TAG457:
lbu $4, 0($3)
blez $3, TAG458
lw $2, 0($3)
sh $2, 0($2)
TAG458:
lw $2, 0($2)
mthi $2
lh $3, 0($2)
slt $1, $3, $2
TAG459:
mthi $1
lui $2, 0
bgtz $1, TAG460
mflo $3
TAG460:
lhu $2, 0($3)
sw $3, 0($3)
bltz $3, TAG461
mthi $2
TAG461:
mflo $3
sll $3, $2, 12
or $4, $3, $2
mult $2, $3
TAG462:
mflo $4
mthi $4
lui $2, 13
lui $3, 12
TAG463:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
mtlo $1
TAG464:
mthi $1
mflo $1
mflo $1
mflo $2
TAG465:
sw $2, 0($2)
bne $2, $2, TAG466
lui $3, 15
lui $2, 4
TAG466:
bgtz $2, TAG467
mflo $4
div $2, $4
sb $2, 0($2)
TAG467:
mthi $4
mult $4, $4
lb $3, 0($4)
lui $2, 13
TAG468:
lui $2, 3
and $4, $2, $2
sll $0, $0, 0
bne $2, $4, TAG469
TAG469:
sll $0, $0, 0
blez $2, TAG470
sll $0, $0, 0
mult $1, $2
TAG470:
bgez $1, TAG471
mult $1, $1
mtlo $1
mfhi $2
TAG471:
sll $0, $0, 0
mtlo $4
beq $2, $4, TAG472
sll $0, $0, 0
TAG472:
sll $0, $0, 0
lui $3, 4
lui $3, 10
sll $0, $0, 0
TAG473:
mult $3, $3
lui $4, 8
lui $3, 10
mtlo $3
TAG474:
mult $3, $3
sll $0, $0, 0
bgez $3, TAG475
mtlo $3
TAG475:
sltu $2, $3, $3
sh $2, 0($2)
sll $0, $0, 0
bgez $2, TAG476
TAG476:
add $2, $2, $2
add $3, $2, $2
subu $2, $2, $3
multu $3, $2
TAG477:
mflo $2
bne $2, $2, TAG478
lui $1, 3
beq $2, $2, TAG478
TAG478:
divu $1, $1
sll $0, $0, 0
beq $1, $1, TAG479
sll $0, $0, 0
TAG479:
sh $3, 0($3)
slt $4, $3, $3
mflo $3
sw $3, 0($4)
TAG480:
ori $2, $3, 1
mflo $1
divu $1, $2
multu $1, $1
TAG481:
srlv $1, $1, $1
lw $2, 0($1)
bgez $2, TAG482
multu $2, $2
TAG482:
beq $2, $2, TAG483
lui $1, 3
addi $1, $2, 12
lui $4, 5
TAG483:
bltz $4, TAG484
sb $4, 0($4)
mult $4, $4
blez $4, TAG484
TAG484:
add $3, $4, $4
bgtz $4, TAG485
sra $3, $3, 4
sllv $2, $3, $4
TAG485:
nor $1, $2, $2
div $2, $1
sb $2, 0($2)
mthi $2
TAG486:
lui $2, 0
bne $2, $2, TAG487
ori $4, $2, 7
bne $4, $1, TAG487
TAG487:
mult $4, $4
lb $3, 0($4)
xori $1, $4, 7
xori $4, $1, 1
TAG488:
addiu $1, $4, 15
lui $4, 5
bgez $4, TAG489
srav $2, $1, $1
TAG489:
sra $2, $2, 3
beq $2, $2, TAG490
sb $2, 0($2)
lui $3, 14
TAG490:
mtlo $3
sb $3, 0($3)
sw $3, 0($3)
mult $3, $3
TAG491:
lui $1, 14
bltz $3, TAG492
div $3, $1
sw $3, 0($3)
TAG492:
mfhi $3
sll $0, $0, 0
sw $3, 0($3)
xori $2, $1, 0
TAG493:
lui $3, 4
bne $3, $3, TAG494
or $3, $2, $3
mult $3, $3
TAG494:
lui $2, 11
sll $0, $0, 0
sll $0, $0, 0
bltz $3, TAG495
TAG495:
multu $1, $1
mthi $1
or $3, $1, $1
sll $0, $0, 0
TAG496:
andi $1, $3, 3
lui $4, 12
lui $2, 7
bne $1, $3, TAG497
TAG497:
and $4, $2, $2
mfhi $4
mflo $4
mtlo $4
TAG498:
beq $4, $4, TAG499
sub $3, $4, $4
mflo $1
beq $4, $1, TAG499
TAG499:
sb $1, 0($1)
lui $1, 12
bgez $1, TAG500
ori $4, $1, 11
TAG500:
divu $4, $4
mflo $3
srl $4, $3, 9
bgez $3, TAG501
TAG501:
srl $3, $4, 9
mthi $4
beq $3, $4, TAG502
sw $3, 0($4)
TAG502:
bgtz $3, TAG503
srav $1, $3, $3
beq $3, $1, TAG503
multu $1, $1
TAG503:
blez $1, TAG504
lbu $4, 0($1)
mtlo $1
bne $1, $1, TAG504
TAG504:
lhu $3, 0($4)
multu $3, $4
beq $4, $3, TAG505
mtlo $4
TAG505:
lui $1, 3
lui $1, 12
lhu $1, 0($3)
bgtz $3, TAG506
TAG506:
lui $3, 13
addu $1, $3, $3
divu $1, $1
sll $0, $0, 0
TAG507:
bltz $1, TAG508
sll $0, $0, 0
slt $2, $1, $1
sll $0, $0, 0
TAG508:
blez $2, TAG509
multu $2, $2
bne $2, $2, TAG509
mult $2, $2
TAG509:
lbu $1, 0($2)
bne $2, $2, TAG510
lui $2, 0
xori $2, $1, 12
TAG510:
mflo $2
addi $1, $2, 6
srl $3, $1, 3
mflo $1
TAG511:
sra $4, $1, 7
blez $1, TAG512
sw $4, 0($4)
andi $2, $4, 15
TAG512:
sb $2, 0($2)
sh $2, 0($2)
beq $2, $2, TAG513
slti $1, $2, 9
TAG513:
mult $1, $1
mthi $1
mflo $3
blez $3, TAG514
TAG514:
lbu $3, 0($3)
beq $3, $3, TAG515
andi $1, $3, 10
mult $3, $3
TAG515:
addiu $2, $1, 3
divu $1, $2
mfhi $4
bgez $4, TAG516
TAG516:
lui $3, 14
bne $3, $4, TAG517
and $4, $4, $4
beq $3, $4, TAG517
TAG517:
lbu $1, 0($4)
lb $1, 0($1)
multu $4, $1
multu $1, $1
TAG518:
lh $2, 0($1)
bltz $2, TAG519
lui $4, 2
lui $1, 1
TAG519:
lui $3, 0
mtlo $1
and $4, $3, $3
mfhi $2
TAG520:
multu $2, $2
mult $2, $2
addiu $4, $2, 13
mfhi $1
TAG521:
mtlo $1
sllv $1, $1, $1
mthi $1
bne $1, $1, TAG522
TAG522:
lbu $4, 0($1)
bne $1, $1, TAG523
lhu $4, 0($4)
bgez $4, TAG523
TAG523:
mfhi $3
addiu $3, $4, 13
bne $4, $4, TAG524
mfhi $3
TAG524:
sw $3, 0($3)
sh $3, 0($3)
bgez $3, TAG525
lui $1, 6
TAG525:
bne $1, $1, TAG526
sll $0, $0, 0
blez $1, TAG526
lui $3, 15
TAG526:
lui $2, 3
sll $0, $0, 0
mthi $2
mfhi $4
TAG527:
bgez $4, TAG528
sltiu $1, $4, 13
bgtz $4, TAG528
mflo $2
TAG528:
multu $2, $2
beq $2, $2, TAG529
mflo $1
lui $4, 7
TAG529:
subu $2, $4, $4
sll $4, $4, 8
mfhi $3
blez $3, TAG530
TAG530:
xori $3, $3, 13
mfhi $4
srlv $3, $3, $3
mthi $4
TAG531:
addu $2, $3, $3
bgtz $2, TAG532
sh $3, 0($2)
sub $1, $2, $3
TAG532:
mfhi $2
bgtz $1, TAG533
lb $3, 0($2)
multu $3, $1
TAG533:
div $3, $3
bne $3, $3, TAG534
sra $1, $3, 15
mflo $3
TAG534:
bgtz $3, TAG535
sltiu $1, $3, 5
bltz $1, TAG535
lui $4, 13
TAG535:
mthi $4
blez $4, TAG536
sb $4, 0($4)
lui $2, 9
TAG536:
div $2, $2
addu $4, $2, $2
slti $4, $4, 6
addiu $3, $2, 14
TAG537:
multu $3, $3
slti $4, $3, 8
sltu $1, $4, $3
bgtz $3, TAG538
TAG538:
mfhi $3
sra $3, $1, 13
bne $3, $3, TAG539
mfhi $2
TAG539:
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
lui $4, 9
TAG540:
divu $4, $4
addiu $4, $4, 1
sll $0, $0, 0
mthi $4
TAG541:
sll $3, $4, 7
mflo $2
mult $4, $4
lui $1, 13
TAG542:
sll $0, $0, 0
bne $1, $1, TAG543
lui $1, 5
mthi $1
TAG543:
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
mflo $2
TAG544:
mfhi $4
bltz $2, TAG545
mtlo $2
bgez $4, TAG545
TAG545:
sll $0, $0, 0
beq $4, $4, TAG546
sll $0, $0, 0
mthi $4
TAG546:
bgtz $3, TAG547
multu $3, $3
sb $3, 0($3)
lh $4, 0($3)
TAG547:
sll $0, $0, 0
lui $4, 12
bne $4, $4, TAG548
multu $3, $3
TAG548:
addiu $3, $4, 12
bgez $4, TAG549
sll $0, $0, 0
sltiu $3, $3, 4
TAG549:
sll $0, $0, 0
sll $0, $0, 0
multu $3, $3
multu $3, $3
TAG550:
sll $0, $0, 0
bgtz $3, TAG551
sll $0, $0, 0
bgtz $3, TAG551
TAG551:
mfhi $1
mtlo $1
lbu $1, -144($1)
multu $3, $1
TAG552:
mfhi $1
lui $4, 10
mfhi $1
div $1, $4
TAG553:
multu $1, $1
mthi $1
sw $1, 0($1)
lbu $2, 0($1)
TAG554:
multu $2, $2
lui $4, 4
sw $2, 0($2)
sll $0, $0, 0
TAG555:
lui $3, 6
srlv $2, $3, $3
divu $2, $2
sll $0, $0, 0
TAG556:
mthi $2
sll $0, $0, 0
sll $0, $0, 0
mult $4, $2
TAG557:
lui $1, 10
sll $0, $0, 0
sll $1, $1, 4
sll $0, $0, 0
TAG558:
sll $0, $0, 0
blez $2, TAG559
mult $2, $2
sll $0, $0, 0
TAG559:
subu $3, $2, $2
blez $2, TAG560
srlv $3, $3, $2
lhu $4, 0($3)
TAG560:
lui $2, 10
lui $3, 13
beq $3, $2, TAG561
mfhi $2
TAG561:
bgtz $2, TAG562
srlv $4, $2, $2
beq $2, $2, TAG562
and $3, $4, $2
TAG562:
lui $1, 14
mthi $1
mflo $1
bne $1, $3, TAG563
TAG563:
lui $4, 8
srlv $4, $4, $4
mtlo $4
lbu $3, 0($1)
TAG564:
sw $3, 0($3)
mult $3, $3
mult $3, $3
multu $3, $3
TAG565:
mfhi $4
blez $4, TAG566
sub $4, $4, $4
srav $1, $4, $4
TAG566:
mfhi $1
mfhi $1
add $2, $1, $1
srlv $4, $1, $2
TAG567:
addiu $4, $4, 13
sb $4, 0($4)
andi $1, $4, 5
bne $4, $4, TAG568
TAG568:
mult $1, $1
beq $1, $1, TAG569
lui $2, 8
slt $4, $1, $2
TAG569:
lb $2, 0($4)
mflo $3
multu $3, $2
blez $2, TAG570
TAG570:
mthi $3
bgtz $3, TAG571
lui $1, 10
mfhi $4
TAG571:
lb $3, 0($4)
bne $3, $3, TAG572
mthi $3
bltz $3, TAG572
TAG572:
sb $3, 0($3)
blez $3, TAG573
lb $1, 0($3)
addiu $1, $3, 10
TAG573:
sb $1, 0($1)
addu $2, $1, $1
lui $1, 6
bne $2, $1, TAG574
TAG574:
sll $0, $0, 0
bne $4, $1, TAG575
sll $0, $0, 0
beq $1, $4, TAG575
TAG575:
mtlo $1
sll $0, $0, 0
mtlo $4
mfhi $4
TAG576:
sll $1, $4, 3
mfhi $2
bgez $4, TAG577
lui $1, 6
TAG577:
srl $1, $1, 14
lui $2, 14
subu $1, $1, $1
mfhi $2
TAG578:
srl $4, $2, 15
mflo $1
blez $2, TAG579
mfhi $1
TAG579:
lb $2, 0($1)
beq $1, $2, TAG580
sra $4, $1, 8
lui $2, 9
TAG580:
mult $2, $2
nor $4, $2, $2
mult $2, $4
mflo $2
TAG581:
divu $2, $2
mthi $2
sh $2, 182($2)
bne $2, $2, TAG582
TAG582:
addu $4, $2, $2
mtlo $2
div $2, $2
srl $4, $4, 14
TAG583:
lui $2, 9
sll $0, $0, 0
sll $4, $2, 1
mflo $2
TAG584:
bne $2, $2, TAG585
andi $2, $2, 9
addiu $1, $2, 15
divu $2, $2
TAG585:
bne $1, $1, TAG586
lui $4, 9
srl $3, $1, 4
div $3, $1
TAG586:
sltiu $1, $3, 12
mtlo $3
div $3, $3
bne $3, $1, TAG587
TAG587:
srl $2, $1, 12
srl $4, $2, 2
lui $3, 5
multu $2, $3
TAG588:
sll $0, $0, 0
mtlo $3
mfhi $2
addiu $3, $3, 5
TAG589:
or $2, $3, $3
srl $3, $2, 8
addu $1, $3, $3
addiu $2, $3, 8
TAG590:
slt $1, $2, $2
lbu $1, -1288($2)
lhu $2, 0($1)
mflo $2
TAG591:
multu $2, $2
bne $2, $2, TAG592
xori $2, $2, 0
sll $0, $0, 0
TAG592:
divu $2, $2
subu $2, $2, $2
multu $2, $2
bltz $2, TAG593
TAG593:
sb $2, 0($2)
slti $3, $2, 7
bltz $2, TAG594
mflo $1
TAG594:
bltz $1, TAG595
lui $3, 6
lui $4, 11
multu $4, $1
TAG595:
bne $4, $4, TAG596
divu $4, $4
bltz $4, TAG596
lui $2, 13
TAG596:
sllv $3, $2, $2
lui $3, 7
addu $1, $2, $3
bgez $3, TAG597
TAG597:
sll $0, $0, 0
beq $1, $1, TAG598
slt $3, $1, $1
multu $1, $3
TAG598:
multu $3, $3
addiu $4, $3, 4
mflo $1
sw $1, 0($3)
TAG599:
mflo $3
mtlo $1
lbu $4, 0($1)
lhu $4, 0($4)
TAG600:
mflo $2
beq $4, $4, TAG601
xori $4, $2, 14
add $4, $4, $4
TAG601:
mfhi $2
bgtz $2, TAG602
lb $3, 0($4)
slti $2, $2, 14
TAG602:
sb $2, 0($2)
beq $2, $2, TAG603
div $2, $2
bne $2, $2, TAG603
TAG603:
lui $2, 12
mflo $1
lui $2, 5
lui $2, 6
TAG604:
lui $2, 0
bne $2, $2, TAG605
sw $2, 0($2)
addu $4, $2, $2
TAG605:
mult $4, $4
lui $1, 2
srl $3, $4, 10
lw $1, 0($4)
TAG606:
sltu $3, $1, $1
mflo $2
sb $3, 0($2)
mfhi $4
TAG607:
lui $3, 6
sll $0, $0, 0
bne $3, $3, TAG608
mthi $3
TAG608:
subu $4, $3, $3
divu $4, $3
divu $4, $3
xor $1, $4, $4
TAG609:
srav $1, $1, $1
lw $3, 0($1)
lui $4, 9
lui $3, 15
TAG610:
multu $3, $3
sll $0, $0, 0
ori $2, $3, 6
mtlo $2
TAG611:
lui $1, 7
lui $4, 8
srav $4, $4, $4
addiu $4, $4, 15
TAG612:
mult $4, $4
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG613:
beq $1, $1, TAG614
sll $0, $0, 0
mfhi $4
sh $4, 0($1)
TAG614:
sll $0, $0, 0
blez $4, TAG615
mflo $4
lui $1, 5
TAG615:
ori $1, $1, 4
sll $0, $0, 0
mtlo $1
mflo $4
TAG616:
subu $4, $4, $4
blez $4, TAG617
sh $4, 0($4)
mthi $4
TAG617:
mult $4, $4
mult $4, $4
lui $4, 12
nor $2, $4, $4
TAG618:
bne $2, $2, TAG619
lui $4, 13
lui $2, 13
mult $2, $2
TAG619:
mfhi $4
slt $4, $4, $2
sllv $1, $2, $2
mtlo $4
TAG620:
andi $4, $1, 1
andi $1, $4, 5
addiu $2, $1, 12
sw $1, 0($2)
TAG621:
lui $2, 14
mfhi $3
bgtz $3, TAG622
sll $0, $0, 0
TAG622:
bgtz $3, TAG623
sw $3, -169($3)
lh $2, 0($3)
srav $2, $3, $3
TAG623:
lui $4, 11
sll $0, $0, 0
lui $2, 9
ori $3, $2, 9
TAG624:
sll $0, $0, 0
bltz $3, TAG625
sll $0, $0, 0
bgtz $4, TAG625
TAG625:
sll $0, $0, 0
bgtz $4, TAG626
nor $1, $2, $4
mflo $4
TAG626:
addiu $1, $4, 14
sll $3, $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG627:
bgtz $1, TAG628
lui $4, 3
mtlo $4
lui $3, 15
TAG628:
addiu $1, $3, 6
sltiu $4, $3, 11
div $4, $3
sub $4, $1, $4
TAG629:
mtlo $4
divu $4, $4
lui $1, 9
bltz $1, TAG630
TAG630:
mflo $2
beq $1, $1, TAG631
sra $1, $2, 6
divu $1, $1
TAG631:
slt $4, $1, $1
sh $4, 0($4)
mult $4, $4
lhu $4, 0($1)
TAG632:
mthi $4
mfhi $4
sw $4, 0($4)
bne $4, $4, TAG633
TAG633:
mtlo $4
lb $3, 0($4)
bgtz $4, TAG634
lh $2, 0($3)
TAG634:
multu $2, $2
lui $4, 13
add $1, $2, $4
lui $1, 6
TAG635:
mthi $1
andi $4, $1, 7
lui $1, 7
lui $1, 13
TAG636:
andi $4, $1, 14
sltu $1, $1, $1
multu $1, $4
mflo $2
TAG637:
subu $4, $2, $2
add $4, $4, $2
sh $2, 0($2)
andi $3, $2, 11
TAG638:
bgtz $3, TAG639
mtlo $3
sw $3, 0($3)
lui $4, 2
TAG639:
divu $4, $4
addiu $2, $4, 12
bne $4, $2, TAG640
sll $0, $0, 0
TAG640:
sll $3, $2, 9
bgez $3, TAG641
slti $1, $3, 8
lh $2, 0($1)
TAG641:
ori $3, $2, 8
lui $4, 0
sw $2, 0($4)
divu $4, $3
TAG642:
lbu $3, 0($4)
mflo $1
bne $3, $4, TAG643
mtlo $3
TAG643:
sh $1, 0($1)
bgtz $1, TAG644
srlv $4, $1, $1
mfhi $3
TAG644:
mthi $3
bgez $3, TAG645
lui $2, 10
mtlo $2
TAG645:
lui $1, 3
div $2, $2
divu $2, $2
mult $1, $1
TAG646:
subu $4, $1, $1
bltz $1, TAG647
sll $0, $0, 0
sll $0, $0, 0
TAG647:
srav $2, $4, $4
sll $1, $4, 4
lb $2, 0($2)
bltz $2, TAG648
TAG648:
lw $3, 0($2)
div $2, $3
mtlo $3
sll $0, $0, 0
TAG649:
sll $0, $0, 0
addiu $4, $3, 4
srav $4, $4, $3
sll $0, $0, 0
TAG650:
addi $3, $1, 11
bltz $3, TAG651
lhu $1, 0($1)
lb $2, 0($3)
TAG651:
beq $2, $2, TAG652
sh $2, 0($2)
xor $1, $2, $2
lhu $3, 0($2)
TAG652:
srav $4, $3, $3
bgez $4, TAG653
sll $1, $3, 1
lhu $4, 0($3)
TAG653:
multu $4, $4
bne $4, $4, TAG654
xori $3, $4, 6
sw $3, 0($4)
TAG654:
bgtz $3, TAG655
lui $4, 14
lui $3, 3
slt $2, $3, $3
TAG655:
bltz $2, TAG656
mflo $3
lui $4, 12
lb $3, 0($3)
TAG656:
bne $3, $3, TAG657
nor $3, $3, $3
sltiu $4, $3, 2
lui $2, 1
TAG657:
sll $0, $0, 0
sh $1, 0($1)
lui $3, 11
mthi $3
TAG658:
xor $1, $3, $3
sll $0, $0, 0
or $3, $1, $1
sh $1, 0($3)
TAG659:
mthi $3
sh $3, 0($3)
andi $3, $3, 13
beq $3, $3, TAG660
TAG660:
sb $3, 0($3)
bne $3, $3, TAG661
mflo $2
xori $2, $3, 6
TAG661:
lui $1, 2
mthi $2
lbu $1, 0($2)
sw $1, 0($1)
TAG662:
beq $1, $1, TAG663
mthi $1
addiu $1, $1, 11
lw $2, 0($1)
TAG663:
lui $4, 6
bgtz $2, TAG664
andi $4, $4, 3
div $4, $4
TAG664:
blez $4, TAG665
lui $2, 14
bne $4, $4, TAG665
sb $2, 0($4)
TAG665:
mflo $4
lh $2, 0($4)
mfhi $2
lb $2, 0($2)
TAG666:
lbu $3, 0($2)
lui $1, 13
divu $3, $1
lui $3, 11
TAG667:
lui $1, 11
ori $4, $1, 7
slti $4, $3, 11
sra $1, $4, 3
TAG668:
sh $1, 0($1)
sb $1, 0($1)
mtlo $1
multu $1, $1
TAG669:
mult $1, $1
sh $1, 0($1)
srl $2, $1, 15
lui $2, 7
TAG670:
blez $2, TAG671
andi $2, $2, 14
srav $2, $2, $2
lui $4, 6
TAG671:
sll $0, $0, 0
beq $3, $4, TAG672
sll $0, $0, 0
mult $3, $4
TAG672:
lui $4, 4
mfhi $4
addu $3, $4, $4
mflo $4
TAG673:
slti $3, $4, 8
mfhi $3
blez $4, TAG674
sb $3, 0($4)
TAG674:
addiu $2, $3, 13
bgtz $3, TAG675
subu $1, $2, $2
mtlo $2
TAG675:
mult $1, $1
mult $1, $1
mfhi $3
sb $3, 0($3)
TAG676:
sltiu $1, $3, 2
mflo $3
lw $1, 0($3)
mflo $2
TAG677:
sh $2, 0($2)
lhu $1, 0($2)
lbu $3, 0($1)
lb $1, 0($1)
TAG678:
addiu $4, $1, 12
mtlo $1
xori $2, $1, 4
mflo $1
TAG679:
add $2, $1, $1
bltz $1, TAG680
lui $1, 6
mthi $2
TAG680:
addu $3, $1, $1
or $4, $3, $3
sll $0, $0, 0
andi $2, $3, 14
TAG681:
lui $2, 2
sll $0, $0, 0
beq $2, $2, TAG682
mult $4, $4
TAG682:
mthi $4
sll $0, $0, 0
multu $4, $4
addiu $3, $4, 1
TAG683:
divu $3, $3
sll $0, $0, 0
mtlo $3
mflo $2
TAG684:
and $1, $2, $2
mult $1, $2
mthi $1
sll $0, $0, 0
TAG685:
mult $4, $4
sll $0, $0, 0
mult $4, $1
bltz $4, TAG686
TAG686:
andi $1, $1, 5
beq $1, $1, TAG687
lui $2, 13
lbu $3, 0($1)
TAG687:
divu $3, $3
divu $3, $3
slti $3, $3, 6
sub $2, $3, $3
TAG688:
lui $4, 10
bltz $2, TAG689
mflo $4
div $4, $4
TAG689:
divu $4, $4
lui $4, 2
lui $1, 0
mtlo $4
TAG690:
mthi $1
multu $1, $1
and $2, $1, $1
lh $3, 0($1)
TAG691:
sh $3, 0($3)
mult $3, $3
lbu $3, 0($3)
mtlo $3
TAG692:
bgtz $3, TAG693
mtlo $3
mtlo $3
sw $3, 0($3)
TAG693:
mfhi $2
lhu $3, 0($3)
bne $3, $3, TAG694
sb $2, 0($2)
TAG694:
sh $3, 0($3)
xori $1, $3, 12
sb $1, 0($3)
bgez $1, TAG695
TAG695:
sb $1, 0($1)
beq $1, $1, TAG696
sb $1, 0($1)
mthi $1
TAG696:
mtlo $1
bne $1, $1, TAG697
sb $1, 0($1)
lui $2, 0
TAG697:
lh $3, 0($2)
mthi $3
lui $4, 4
mtlo $4
TAG698:
slti $2, $4, 11
mult $4, $4
xori $1, $2, 0
srav $1, $1, $1
TAG699:
mfhi $2
xori $3, $1, 6
andi $2, $2, 12
slti $3, $1, 3
TAG700:
sb $3, 0($3)
bgez $3, TAG701
sb $3, 0($3)
lb $3, 0($3)
TAG701:
mflo $3
bgtz $3, TAG702
mfhi $3
bltz $3, TAG702
TAG702:
mtlo $3
xori $2, $3, 7
mfhi $1
lui $2, 14
TAG703:
sll $4, $2, 11
mfhi $3
mtlo $2
mfhi $1
TAG704:
beq $1, $1, TAG705
subu $2, $1, $1
lh $3, 0($1)
lhu $3, 0($1)
TAG705:
divu $3, $3
lhu $2, 0($3)
mfhi $1
bltz $2, TAG706
TAG706:
lbu $3, 0($1)
sw $3, 0($1)
ori $1, $3, 14
addiu $3, $1, 2
TAG707:
mflo $2
blez $2, TAG708
mult $2, $3
beq $2, $3, TAG708
TAG708:
lui $3, 5
mtlo $3
blez $2, TAG709
sll $0, $0, 0
TAG709:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
or $4, $3, $4
TAG710:
beq $4, $4, TAG711
and $2, $4, $4
sw $2, 0($4)
lui $4, 1
TAG711:
ori $1, $4, 11
bne $1, $1, TAG712
mflo $1
bgez $1, TAG712
TAG712:
sll $0, $0, 0
sllv $3, $1, $1
div $1, $1
mtlo $1
TAG713:
ori $2, $3, 6
mtlo $2
divu $3, $3
bgtz $3, TAG714
TAG714:
sra $3, $2, 0
srl $2, $3, 11
multu $3, $3
lhu $1, -160($2)
TAG715:
andi $2, $1, 6
lui $3, 15
mthi $3
mfhi $4
TAG716:
mflo $3
sltu $2, $3, $3
sll $0, $0, 0
multu $2, $4
TAG717:
sh $2, 0($2)
lbu $2, 0($2)
lui $3, 8
slt $3, $2, $2
TAG718:
xori $1, $3, 8
mflo $1
sllv $1, $1, $1
mfhi $2
TAG719:
mthi $2
lui $2, 8
or $3, $2, $2
mthi $3
TAG720:
srav $1, $3, $3
srav $4, $3, $3
bgtz $1, TAG721
mflo $3
TAG721:
mtlo $3
lbu $2, 0($3)
sb $2, 0($3)
sra $3, $2, 1
TAG722:
bne $3, $3, TAG723
sra $4, $3, 2
bltz $3, TAG723
srl $1, $3, 4
TAG723:
lw $3, 0($1)
bgez $3, TAG724
mfhi $4
lbu $3, 0($4)
TAG724:
multu $3, $3
lui $2, 9
subu $2, $2, $2
mthi $2
TAG725:
and $4, $2, $2
slt $3, $4, $4
sh $4, 0($4)
mfhi $3
TAG726:
beq $3, $3, TAG727
lui $1, 14
mfhi $3
mtlo $1
TAG727:
lui $2, 4
sll $3, $2, 10
lui $2, 14
mthi $3
TAG728:
sll $0, $0, 0
sll $0, $0, 0
beq $1, $4, TAG729
addiu $3, $2, 2
TAG729:
mflo $2
sh $3, 0($2)
multu $3, $3
addiu $2, $3, 6
TAG730:
beq $2, $2, TAG731
multu $2, $2
xor $4, $2, $2
bne $2, $4, TAG731
TAG731:
srl $3, $4, 6
sb $4, 0($3)
mthi $3
addu $4, $3, $4
TAG732:
multu $4, $4
multu $4, $4
sh $4, 0($4)
sra $3, $4, 4
TAG733:
lui $1, 14
mtlo $3
lui $2, 13
lui $4, 4
TAG734:
mthi $4
bgez $4, TAG735
mfhi $4
bne $4, $4, TAG735
TAG735:
multu $4, $4
ori $1, $4, 7
sll $0, $0, 0
mtlo $1
TAG736:
srl $4, $1, 12
mthi $4
andi $4, $4, 3
lhu $4, 0($4)
TAG737:
xori $4, $4, 4
lhu $2, 0($4)
div $4, $4
sw $4, 0($4)
TAG738:
sh $2, 0($2)
nor $1, $2, $2
sb $1, 0($2)
beq $1, $2, TAG739
TAG739:
mtlo $1
sllv $4, $1, $1
sll $0, $0, 0
blez $1, TAG740
TAG740:
mthi $4
mflo $1
blez $1, TAG741
mtlo $4
TAG741:
bne $1, $1, TAG742
mthi $1
nor $2, $1, $1
lb $3, 15($1)
TAG742:
or $1, $3, $3
bgez $3, TAG743
lui $1, 12
sw $1, 0($1)
TAG743:
mthi $1
beq $1, $1, TAG744
div $1, $1
or $3, $1, $1
TAG744:
bgez $3, TAG745
lbu $4, 0($3)
beq $3, $3, TAG745
sh $3, 0($4)
TAG745:
beq $4, $4, TAG746
mflo $3
mfhi $3
bgez $3, TAG746
TAG746:
mflo $3
subu $4, $3, $3
bgez $3, TAG747
mtlo $3
TAG747:
bltz $4, TAG748
mflo $3
and $1, $4, $4
mtlo $1
TAG748:
sw $1, 0($1)
mflo $1
srlv $3, $1, $1
mthi $3
TAG749:
sh $3, 0($3)
mtlo $3
bgez $3, TAG750
mthi $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop