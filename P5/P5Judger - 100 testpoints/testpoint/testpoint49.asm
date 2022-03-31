ori $1, $0, 8
ori $2, $0, 4
ori $3, $0, 2
ori $4, $0, 1
sw $1, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $1, 32($0)
sw $2, 36($0)
sw $2, 40($0)
sw $4, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $2, 76($0)
sw $3, 80($0)
sw $2, 84($0)
sw $1, 88($0)
sw $1, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $1, 124($0)
bltz $2, TAG1
subu $1, $2, $2
mfhi $4
beq $2, $4, TAG1
TAG1:
mult $4, $4
mfhi $3
mtlo $4
lw $3, 0($3)
TAG2:
nor $2, $3, $3
sltu $2, $2, $2
nor $2, $2, $2
lui $3, 3
TAG3:
slti $3, $3, 6
multu $3, $3
sh $3, 0($3)
multu $3, $3
TAG4:
mult $3, $3
mtlo $3
mflo $2
bne $2, $2, TAG5
TAG5:
addi $4, $2, 5
sb $2, 0($4)
sltu $4, $4, $4
andi $3, $4, 2
TAG6:
lui $1, 3
nor $3, $3, $3
lhu $4, 1($3)
bltz $1, TAG7
TAG7:
mthi $4
lb $4, 0($4)
mthi $4
bgez $4, TAG8
TAG8:
sll $4, $4, 13
lui $4, 6
sll $0, $0, 0
sra $3, $4, 10
TAG9:
or $1, $3, $3
lui $2, 9
lui $2, 10
sll $0, $0, 0
TAG10:
mtlo $3
lb $3, -384($3)
blez $3, TAG11
xor $1, $3, $3
TAG11:
blez $1, TAG12
sllv $2, $1, $1
divu $1, $2
mflo $4
TAG12:
sll $0, $0, 0
beq $4, $2, TAG13
mtlo $4
xori $2, $4, 13
TAG13:
mfhi $4
mfhi $4
beq $2, $2, TAG14
slti $3, $4, 12
TAG14:
lui $2, 7
sb $3, 0($3)
addiu $1, $3, 7
sltu $2, $3, $1
TAG15:
mfhi $2
lui $2, 8
sll $0, $0, 0
mthi $2
TAG16:
sll $0, $0, 0
mtlo $2
mfhi $2
lui $1, 9
TAG17:
beq $1, $1, TAG18
sltiu $1, $1, 14
lui $3, 3
mtlo $3
TAG18:
divu $3, $3
slt $1, $3, $3
blez $3, TAG19
sb $1, 0($3)
TAG19:
mthi $1
mfhi $3
mfhi $4
lbu $3, 0($4)
TAG20:
sw $3, 0($3)
multu $3, $3
mult $3, $3
sw $3, 0($3)
TAG21:
lhu $3, 0($3)
sra $1, $3, 6
sw $1, 0($1)
sb $1, 0($3)
TAG22:
mthi $1
lui $4, 15
lui $1, 15
sll $0, $0, 0
TAG23:
sllv $2, $4, $4
lui $3, 6
xor $4, $2, $2
addiu $2, $3, 2
TAG24:
or $2, $2, $2
mtlo $2
subu $3, $2, $2
bne $3, $2, TAG25
TAG25:
xor $1, $3, $3
bne $1, $3, TAG26
sh $3, 0($1)
multu $1, $1
TAG26:
and $4, $1, $1
sb $1, 0($1)
lw $3, 0($1)
bne $4, $4, TAG27
TAG27:
multu $3, $3
mflo $3
lui $3, 5
sll $0, $0, 0
TAG28:
mthi $3
sll $0, $0, 0
mflo $3
bne $3, $3, TAG29
TAG29:
lui $3, 4
multu $3, $3
slt $2, $3, $3
sll $0, $0, 0
TAG30:
bgez $1, TAG31
mtlo $1
sh $1, 0($1)
bne $1, $1, TAG31
TAG31:
slt $2, $1, $1
srlv $1, $1, $2
mult $2, $1
sh $1, 0($2)
TAG32:
beq $1, $1, TAG33
multu $1, $1
mthi $1
sltiu $4, $1, 13
TAG33:
lb $1, 0($4)
lbu $1, 0($4)
mthi $1
mflo $2
TAG34:
srl $4, $2, 7
sb $4, 0($2)
bgez $2, TAG35
multu $4, $4
TAG35:
add $1, $4, $4
bgez $4, TAG36
mthi $1
bne $1, $4, TAG36
TAG36:
ori $4, $1, 1
mthi $4
lhu $2, 0($1)
srl $1, $4, 10
TAG37:
mult $1, $1
bgez $1, TAG38
multu $1, $1
sb $1, 0($1)
TAG38:
sra $2, $1, 1
lui $1, 11
mtlo $1
addiu $3, $1, 4
TAG39:
sltiu $1, $3, 4
srl $3, $3, 5
lui $1, 8
sltu $4, $1, $1
TAG40:
bgtz $4, TAG41
sra $1, $4, 9
mtlo $1
multu $4, $4
TAG41:
sb $1, 0($1)
slti $1, $1, 1
mtlo $1
lbu $3, 0($1)
TAG42:
beq $3, $3, TAG43
or $4, $3, $3
beq $3, $4, TAG43
mult $3, $3
TAG43:
bne $4, $4, TAG44
mflo $1
sltu $1, $4, $1
xori $2, $1, 5
TAG44:
lb $3, 0($2)
lui $1, 0
div $1, $3
mflo $4
TAG45:
lui $3, 10
mflo $3
mult $3, $3
mflo $2
TAG46:
multu $2, $2
mthi $2
mflo $3
mfhi $1
TAG47:
and $3, $1, $1
ori $3, $1, 9
and $1, $3, $3
multu $3, $3
TAG48:
mtlo $1
srav $1, $1, $1
lw $1, 0($1)
lw $1, 0($1)
TAG49:
bltz $1, TAG50
sh $1, 0($1)
bne $1, $1, TAG50
ori $2, $1, 7
TAG50:
lui $1, 5
addiu $1, $1, 13
sltu $2, $1, $2
multu $1, $1
TAG51:
sll $3, $2, 15
multu $3, $2
mtlo $3
multu $2, $3
TAG52:
bne $3, $3, TAG53
addi $2, $3, 4
mfhi $4
lui $3, 9
TAG53:
bne $3, $3, TAG54
mflo $1
mflo $3
sra $2, $1, 7
TAG54:
mflo $3
mtlo $2
or $3, $3, $2
multu $2, $3
TAG55:
srl $3, $3, 6
beq $3, $3, TAG56
and $4, $3, $3
lw $1, 0($3)
TAG56:
sw $1, 0($1)
bgez $1, TAG57
sb $1, 0($1)
bgtz $1, TAG57
TAG57:
mflo $2
multu $1, $2
multu $1, $2
beq $2, $2, TAG58
TAG58:
sll $2, $2, 5
lui $3, 4
bltz $2, TAG59
mtlo $3
TAG59:
multu $3, $3
beq $3, $3, TAG60
sll $0, $0, 0
lui $3, 13
TAG60:
divu $3, $3
sll $0, $0, 0
divu $3, $3
mfhi $3
TAG61:
bne $3, $3, TAG62
mult $3, $3
lh $4, 0($3)
multu $4, $3
TAG62:
sw $4, 0($4)
beq $4, $4, TAG63
mtlo $4
lui $4, 9
TAG63:
lui $3, 5
sll $0, $0, 0
sb $4, 0($4)
sltu $2, $4, $4
TAG64:
beq $2, $2, TAG65
mflo $1
div $1, $1
lui $3, 5
TAG65:
sll $4, $3, 7
sll $0, $0, 0
bne $3, $4, TAG66
div $4, $3
TAG66:
mthi $4
div $4, $4
addu $1, $4, $4
multu $4, $1
TAG67:
mtlo $1
bgtz $1, TAG68
divu $1, $1
sh $1, 0($1)
TAG68:
mflo $3
sll $0, $0, 0
mtlo $3
mthi $1
TAG69:
sb $3, 0($3)
bgtz $3, TAG70
sra $3, $3, 10
mfhi $4
TAG70:
sll $0, $0, 0
bne $4, $4, TAG71
multu $4, $4
mthi $4
TAG71:
bgtz $4, TAG72
div $4, $4
srav $1, $4, $4
blez $4, TAG72
TAG72:
sll $0, $0, 0
mthi $4
sllv $1, $4, $4
sll $0, $0, 0
TAG73:
bgez $1, TAG74
mult $1, $1
addu $3, $1, $1
addi $3, $3, 5
TAG74:
sub $2, $3, $3
bltz $3, TAG75
mthi $2
mflo $3
TAG75:
mthi $3
sh $3, 0($3)
beq $3, $3, TAG76
mthi $3
TAG76:
mult $3, $3
xor $3, $3, $3
mthi $3
mfhi $3
TAG77:
mult $3, $3
beq $3, $3, TAG78
lw $4, 0($3)
mult $4, $3
TAG78:
bne $4, $4, TAG79
mult $4, $4
bltz $4, TAG79
srav $3, $4, $4
TAG79:
mthi $3
beq $3, $3, TAG80
sb $3, 0($3)
multu $3, $3
TAG80:
mult $3, $3
mfhi $1
xor $1, $1, $1
sra $4, $1, 9
TAG81:
sb $4, 0($4)
sw $4, 0($4)
beq $4, $4, TAG82
sb $4, 0($4)
TAG82:
lui $2, 13
mthi $4
sll $3, $4, 11
mflo $3
TAG83:
multu $3, $3
sb $3, 0($3)
mfhi $4
slti $3, $4, 9
TAG84:
lbu $4, 0($3)
sw $4, 0($4)
mflo $2
bgtz $3, TAG85
TAG85:
sb $2, 0($2)
beq $2, $2, TAG86
sllv $3, $2, $2
div $2, $3
TAG86:
sh $3, 0($3)
lh $3, 0($3)
mthi $3
bgez $3, TAG87
TAG87:
addiu $3, $3, 3
and $3, $3, $3
blez $3, TAG88
sltu $2, $3, $3
TAG88:
lb $3, 0($2)
lui $3, 10
mflo $2
sra $1, $3, 14
TAG89:
blez $1, TAG90
xori $4, $1, 3
sb $1, 0($4)
div $4, $4
TAG90:
bltz $4, TAG91
sll $4, $4, 4
blez $4, TAG91
mthi $4
TAG91:
sb $4, -688($4)
sw $4, -688($4)
xori $2, $4, 14
slti $4, $4, 3
TAG92:
lw $2, 0($4)
lui $1, 0
multu $4, $1
beq $2, $4, TAG93
TAG93:
multu $1, $1
bltz $1, TAG94
lui $1, 15
addiu $2, $1, 12
TAG94:
mult $2, $2
div $2, $2
mfhi $4
lui $3, 12
TAG95:
beq $3, $3, TAG96
lui $3, 9
lui $1, 2
blez $1, TAG96
TAG96:
mthi $1
ori $4, $1, 14
bgtz $1, TAG97
mflo $1
TAG97:
sb $1, 0($1)
addiu $2, $1, 8
mfhi $3
addu $1, $1, $1
TAG98:
mflo $3
lui $4, 6
bne $4, $1, TAG99
subu $4, $4, $4
TAG99:
beq $4, $4, TAG100
mfhi $2
multu $2, $4
sb $2, 0($4)
TAG100:
beq $2, $2, TAG101
mfhi $2
addu $3, $2, $2
mthi $2
TAG101:
slti $1, $3, 3
lui $4, 4
mflo $1
xor $4, $3, $1
TAG102:
blez $4, TAG103
lui $4, 9
sltiu $2, $4, 12
mthi $4
TAG103:
multu $2, $2
sll $0, $0, 0
bne $4, $4, TAG104
sll $0, $0, 0
TAG104:
lui $1, 11
div $4, $1
div $4, $4
mflo $1
TAG105:
or $2, $1, $1
lui $3, 10
slti $3, $1, 8
multu $1, $2
TAG106:
lb $4, 0($3)
mtlo $3
lbu $4, 0($3)
slti $4, $4, 0
TAG107:
mthi $4
lui $2, 6
sw $2, 0($4)
bgtz $2, TAG108
TAG108:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $3, TAG109
sll $0, $0, 0
TAG109:
lui $2, 15
sll $0, $0, 0
sb $2, 0($3)
mfhi $4
TAG110:
lui $3, 4
bltz $4, TAG111
mult $3, $3
mthi $3
TAG111:
sllv $4, $3, $3
bne $3, $4, TAG112
mfhi $3
div $3, $3
TAG112:
lui $2, 13
srl $1, $3, 3
lui $2, 13
sltiu $4, $1, 4
TAG113:
lhu $1, 0($4)
beq $4, $4, TAG114
mthi $1
bgtz $1, TAG114
TAG114:
lw $2, 0($1)
mthi $1
bgez $2, TAG115
mfhi $2
TAG115:
mtlo $2
beq $2, $2, TAG116
mfhi $1
addu $4, $1, $2
TAG116:
lh $1, 0($4)
mflo $2
lui $1, 4
beq $2, $4, TAG117
TAG117:
divu $1, $1
slt $2, $1, $1
bgez $2, TAG118
lui $2, 0
TAG118:
lui $2, 8
bgez $2, TAG119
mult $2, $2
lbu $4, 0($2)
TAG119:
beq $4, $4, TAG120
addi $2, $4, 0
lw $1, 0($2)
sb $4, 0($1)
TAG120:
bne $1, $1, TAG121
sltiu $3, $1, 4
multu $1, $3
lui $3, 12
TAG121:
blez $3, TAG122
sltiu $2, $3, 7
sll $0, $0, 0
lui $2, 8
TAG122:
sll $0, $0, 0
bltz $2, TAG123
subu $4, $2, $2
andi $2, $2, 8
TAG123:
mthi $2
xori $4, $2, 1
addu $4, $4, $2
mflo $2
TAG124:
mtlo $2
or $4, $2, $2
sw $4, 0($2)
blez $2, TAG125
TAG125:
mtlo $4
lui $4, 8
sll $0, $0, 0
bltz $4, TAG126
TAG126:
mflo $3
mtlo $1
addu $3, $3, $1
xori $2, $3, 13
TAG127:
bltz $2, TAG128
addiu $2, $2, 5
srlv $4, $2, $2
multu $2, $2
TAG128:
slti $3, $4, 4
srl $1, $4, 15
sllv $1, $3, $1
div $3, $3
TAG129:
mflo $1
lb $1, 0($1)
multu $1, $1
blez $1, TAG130
TAG130:
sub $1, $1, $1
mthi $1
srl $2, $1, 9
mtlo $1
TAG131:
lui $1, 12
sll $0, $0, 0
bne $2, $1, TAG132
or $3, $2, $1
TAG132:
lui $3, 3
mfhi $4
srl $3, $3, 15
bne $4, $3, TAG133
TAG133:
mthi $3
lui $3, 8
or $3, $3, $3
sll $0, $0, 0
TAG134:
bne $3, $3, TAG135
lui $2, 2
sll $0, $0, 0
bltz $2, TAG135
TAG135:
lui $3, 10
mflo $2
xori $2, $2, 8
sh $2, 0($2)
TAG136:
slt $4, $2, $2
lui $3, 4
mtlo $4
bgtz $3, TAG137
TAG137:
subu $3, $3, $3
mflo $2
multu $3, $2
beq $3, $3, TAG138
TAG138:
sllv $4, $2, $2
lui $3, 10
sll $0, $0, 0
sw $4, 0($4)
TAG139:
sll $0, $0, 0
blez $3, TAG140
lui $3, 14
bgtz $3, TAG140
TAG140:
mfhi $1
multu $1, $1
mult $3, $3
addu $2, $3, $3
TAG141:
bne $2, $2, TAG142
mfhi $2
beq $2, $2, TAG142
mflo $2
TAG142:
andi $1, $2, 4
bne $1, $1, TAG143
sw $2, 0($2)
nor $4, $1, $1
TAG143:
sll $0, $0, 0
divu $4, $4
slt $1, $4, $4
addi $3, $1, 8
TAG144:
beq $3, $3, TAG145
sb $3, 0($3)
sb $3, 0($3)
sb $3, 0($3)
TAG145:
bne $3, $3, TAG146
mult $3, $3
mtlo $3
div $3, $3
TAG146:
mflo $1
bne $3, $3, TAG147
mflo $2
andi $1, $3, 13
TAG147:
multu $1, $1
blez $1, TAG148
div $1, $1
bne $1, $1, TAG148
TAG148:
or $3, $1, $1
or $2, $3, $3
sh $1, 0($2)
divu $3, $3
TAG149:
bgtz $2, TAG150
multu $2, $2
lbu $3, 0($2)
ori $3, $3, 2
TAG150:
mfhi $1
mtlo $3
mult $1, $1
lh $2, 0($3)
TAG151:
blez $2, TAG152
lui $3, 10
mflo $2
beq $2, $3, TAG152
TAG152:
lui $1, 3
mflo $3
bltz $3, TAG153
sll $0, $0, 0
TAG153:
blez $2, TAG154
lb $3, 0($2)
srav $1, $2, $3
mtlo $3
TAG154:
multu $1, $1
sll $0, $0, 0
mthi $1
blez $4, TAG155
TAG155:
mfhi $1
sll $0, $0, 0
addu $4, $1, $1
lui $2, 14
TAG156:
mtlo $2
sll $0, $0, 0
sllv $1, $2, $2
divu $1, $1
TAG157:
lui $3, 1
divu $3, $1
beq $1, $1, TAG158
multu $3, $3
TAG158:
beq $3, $3, TAG159
mult $3, $3
divu $3, $3
lh $3, 0($3)
TAG159:
sll $0, $0, 0
bltz $3, TAG160
sll $0, $0, 0
srav $2, $4, $4
TAG160:
subu $2, $2, $2
bgtz $2, TAG161
lbu $2, 0($2)
lui $3, 2
TAG161:
andi $2, $3, 10
sll $3, $2, 8
lui $3, 7
divu $3, $3
TAG162:
mult $3, $3
sll $0, $0, 0
mflo $4
sb $4, 0($2)
TAG163:
addiu $4, $4, 15
multu $4, $4
mthi $4
blez $4, TAG164
TAG164:
lbu $1, 0($4)
lui $2, 6
lui $4, 13
sll $0, $0, 0
TAG165:
sll $0, $0, 0
or $3, $3, $3
sltiu $1, $3, 7
mult $3, $1
TAG166:
sub $1, $1, $1
slti $4, $1, 10
sw $4, 0($1)
mthi $1
TAG167:
multu $4, $4
lb $3, 0($4)
ori $1, $3, 3
andi $2, $4, 0
TAG168:
sltiu $1, $2, 11
mult $1, $2
srl $3, $2, 4
multu $3, $3
TAG169:
mfhi $4
lui $2, 4
bgez $3, TAG170
sll $0, $0, 0
TAG170:
lw $4, 0($3)
lbu $4, 0($4)
bne $4, $4, TAG171
lh $1, 0($4)
TAG171:
bgtz $1, TAG172
lui $3, 3
lui $3, 6
bgez $3, TAG172
TAG172:
mthi $3
sra $1, $3, 8
sll $0, $0, 0
sll $0, $0, 0
TAG173:
sll $0, $0, 0
lui $1, 10
sll $0, $0, 0
addu $3, $1, $2
TAG174:
mtlo $3
mfhi $3
lui $2, 13
addu $2, $3, $3
TAG175:
mtlo $2
bgtz $2, TAG176
addiu $3, $2, 10
mfhi $1
TAG176:
div $1, $1
sll $0, $0, 0
div $1, $1
sll $0, $0, 0
TAG177:
mfhi $1
sltiu $3, $1, 2
mthi $1
multu $1, $1
TAG178:
lb $2, 0($3)
lb $2, 0($3)
sll $3, $2, 2
slti $4, $3, 2
TAG179:
nor $2, $4, $4
divu $4, $2
lui $4, 2
lh $3, 2($2)
TAG180:
sltiu $2, $3, 6
mthi $3
bgez $2, TAG181
lb $2, 0($3)
TAG181:
multu $2, $2
srl $1, $2, 5
sll $4, $1, 5
mfhi $1
TAG182:
mult $1, $1
sh $1, 0($1)
mfhi $1
mflo $2
TAG183:
bltz $2, TAG184
mflo $1
slti $4, $1, 6
sllv $2, $4, $2
TAG184:
mtlo $2
lui $2, 13
sll $0, $0, 0
sltiu $4, $2, 6
TAG185:
mtlo $4
srl $3, $4, 5
bgez $4, TAG186
srlv $4, $4, $3
TAG186:
lui $2, 6
addiu $4, $2, 14
sltu $2, $2, $4
xor $4, $4, $4
TAG187:
beq $4, $4, TAG188
xor $3, $4, $4
multu $4, $4
lbu $1, 0($3)
TAG188:
sh $1, 0($1)
lui $2, 11
mult $1, $2
or $2, $2, $1
TAG189:
divu $2, $2
addiu $3, $2, 9
bltz $3, TAG190
sll $0, $0, 0
TAG190:
sll $0, $0, 0
mflo $3
lbu $2, 0($3)
bne $3, $3, TAG191
TAG191:
lh $2, 0($2)
ori $4, $2, 0
mthi $2
sh $2, 0($4)
TAG192:
lh $2, 0($4)
mult $4, $2
mult $2, $2
lhu $1, 0($2)
TAG193:
bgez $1, TAG194
lui $3, 15
multu $1, $3
mthi $1
TAG194:
sll $0, $0, 0
mfhi $1
sltu $1, $3, $1
lui $2, 13
TAG195:
mfhi $2
bgtz $2, TAG196
andi $1, $2, 7
mtlo $1
TAG196:
bne $1, $1, TAG197
lh $1, 0($1)
nor $1, $1, $1
mthi $1
TAG197:
mfhi $1
subu $2, $1, $1
mflo $3
mtlo $1
TAG198:
mflo $4
sw $3, 0($3)
sh $3, 0($3)
mfhi $4
TAG199:
mthi $4
slti $3, $4, 4
lb $2, 0($3)
sllv $4, $4, $2
TAG200:
andi $1, $4, 3
lbu $2, 0($1)
beq $1, $4, TAG201
or $3, $1, $4
TAG201:
sll $0, $0, 0
andi $2, $2, 10
lui $1, 8
lui $1, 3
TAG202:
sltiu $3, $1, 0
beq $1, $3, TAG203
addiu $3, $1, 13
sll $0, $0, 0
TAG203:
mflo $4
mtlo $3
lui $2, 11
beq $2, $2, TAG204
TAG204:
sll $0, $0, 0
beq $2, $2, TAG205
sll $0, $0, 0
sh $2, 0($2)
TAG205:
multu $2, $2
mfhi $2
sb $2, 0($2)
sb $2, 0($2)
TAG206:
beq $2, $2, TAG207
srlv $4, $2, $2
lui $4, 15
mflo $3
TAG207:
div $3, $3
mtlo $3
sll $0, $0, 0
mult $3, $3
TAG208:
bne $1, $1, TAG209
addiu $4, $1, 6
mfhi $2
and $3, $4, $4
TAG209:
sra $3, $3, 4
sb $3, -12288($3)
bne $3, $3, TAG210
divu $3, $3
TAG210:
bgez $3, TAG211
div $3, $3
mflo $2
blez $2, TAG211
TAG211:
mfhi $2
lui $1, 1
sw $2, 0($2)
lui $1, 0
TAG212:
andi $4, $1, 0
lh $4, 0($4)
sw $4, 0($4)
bne $4, $4, TAG213
TAG213:
mtlo $4
bltz $4, TAG214
mult $4, $4
mflo $2
TAG214:
slti $3, $2, 1
lb $4, 0($3)
addiu $2, $3, 9
mthi $3
TAG215:
addiu $3, $2, 8
sltu $3, $2, $3
mtlo $2
beq $3, $2, TAG216
TAG216:
sb $3, 0($3)
lui $4, 8
mult $3, $4
mfhi $4
TAG217:
sb $4, 0($4)
bgtz $4, TAG218
sb $4, 0($4)
bltz $4, TAG218
TAG218:
multu $4, $4
lhu $3, 0($4)
mult $3, $4
divu $4, $3
TAG219:
sll $0, $0, 0
sw $4, 0($4)
bne $4, $4, TAG220
lui $2, 9
TAG220:
bltz $2, TAG221
lui $4, 8
sll $0, $0, 0
sll $0, $0, 0
TAG221:
sll $0, $0, 0
mflo $2
addiu $3, $3, 6
div $3, $3
TAG222:
mtlo $3
mthi $3
mult $3, $3
sh $3, -262($3)
TAG223:
mult $3, $3
subu $3, $3, $3
srav $4, $3, $3
mult $3, $3
TAG224:
or $4, $4, $4
slti $3, $4, 13
addu $3, $3, $4
mtlo $4
TAG225:
subu $4, $3, $3
bltz $4, TAG226
and $1, $3, $3
lui $4, 13
TAG226:
sll $0, $0, 0
subu $2, $4, $4
sb $2, 0($2)
bgez $4, TAG227
TAG227:
lui $4, 11
xori $2, $4, 14
sll $0, $0, 0
mtlo $2
TAG228:
sll $0, $0, 0
mflo $2
sra $4, $2, 12
bne $2, $4, TAG229
TAG229:
mthi $4
blez $4, TAG230
lbu $2, -176($4)
sh $4, 0($2)
TAG230:
mfhi $2
mult $2, $2
sltu $4, $2, $2
sh $4, 0($4)
TAG231:
mtlo $4
ori $4, $4, 5
sra $4, $4, 5
addu $2, $4, $4
TAG232:
mflo $3
lui $2, 9
lui $2, 3
xori $2, $2, 1
TAG233:
mflo $4
xor $3, $4, $2
bne $4, $3, TAG234
mthi $4
TAG234:
multu $3, $3
bgtz $3, TAG235
divu $3, $3
addiu $2, $3, 9
TAG235:
beq $2, $2, TAG236
div $2, $2
mthi $2
sb $2, 0($2)
TAG236:
div $2, $2
slt $3, $2, $2
slt $3, $2, $2
blez $3, TAG237
TAG237:
sb $3, 0($3)
ori $3, $3, 3
mflo $1
mthi $1
TAG238:
blez $1, TAG239
divu $1, $1
addu $2, $1, $1
div $2, $2
TAG239:
lui $2, 11
subu $1, $2, $2
mfhi $3
mult $3, $3
TAG240:
mtlo $3
beq $3, $3, TAG241
mfhi $2
mfhi $1
TAG241:
lui $2, 15
sll $0, $0, 0
xor $4, $1, $1
sra $2, $1, 4
TAG242:
lbu $2, 0($2)
multu $2, $2
mtlo $2
mtlo $2
TAG243:
bne $2, $2, TAG244
mult $2, $2
lui $2, 7
mthi $2
TAG244:
sllv $2, $2, $2
mfhi $1
slti $2, $2, 5
multu $1, $1
TAG245:
mflo $1
sw $2, 0($1)
bgtz $1, TAG246
lui $4, 12
TAG246:
mult $4, $4
srlv $4, $4, $4
mtlo $4
beq $4, $4, TAG247
TAG247:
divu $4, $4
bne $4, $4, TAG248
sll $0, $0, 0
sll $0, $0, 0
TAG248:
bgez $1, TAG249
mult $1, $1
or $2, $1, $1
sw $1, 0($1)
TAG249:
lui $3, 13
sllv $3, $3, $2
bne $2, $3, TAG250
mflo $4
TAG250:
bne $4, $4, TAG251
sll $1, $4, 15
bgtz $4, TAG251
mfhi $4
TAG251:
mfhi $3
lui $2, 0
lui $1, 9
bltz $1, TAG252
TAG252:
mtlo $1
mthi $1
lui $3, 12
mfhi $4
TAG253:
lui $2, 3
srlv $3, $4, $4
sllv $3, $2, $4
sll $0, $0, 0
TAG254:
sll $0, $0, 0
mthi $3
multu $3, $3
mflo $1
TAG255:
lw $3, 0($1)
beq $3, $1, TAG256
multu $3, $1
addi $2, $1, 12
TAG256:
bne $2, $2, TAG257
slti $3, $2, 2
mflo $3
bne $3, $3, TAG257
TAG257:
mult $3, $3
bne $3, $3, TAG258
mthi $3
lui $3, 5
TAG258:
lui $4, 4
beq $4, $4, TAG259
slt $3, $4, $3
mfhi $2
TAG259:
slt $3, $2, $2
bltz $3, TAG260
lui $4, 5
bltz $2, TAG260
TAG260:
mflo $1
srav $3, $1, $4
sb $1, 0($3)
sll $0, $0, 0
TAG261:
sw $3, 0($3)
mflo $3
bne $3, $3, TAG262
xori $4, $3, 12
TAG262:
subu $2, $4, $4
mthi $4
beq $4, $4, TAG263
and $3, $4, $2
TAG263:
beq $3, $3, TAG264
or $4, $3, $3
bltz $3, TAG264
div $4, $4
TAG264:
mfhi $1
div $4, $1
sw $1, 0($4)
sb $1, 0($4)
TAG265:
lh $1, 0($1)
multu $1, $1
addiu $3, $1, 4
slt $4, $1, $1
TAG266:
srl $3, $4, 6
or $1, $3, $3
multu $3, $1
mthi $3
TAG267:
sh $1, 0($1)
mthi $1
and $3, $1, $1
blez $1, TAG268
TAG268:
lhu $1, 0($3)
add $3, $1, $3
sh $3, 0($1)
multu $3, $3
TAG269:
beq $3, $3, TAG270
sb $3, 0($3)
sw $3, 0($3)
lui $4, 12
TAG270:
multu $4, $4
lhu $1, 0($4)
add $2, $4, $4
sw $2, 0($2)
TAG271:
bltz $2, TAG272
multu $2, $2
or $3, $2, $2
xori $4, $2, 11
TAG272:
multu $4, $4
beq $4, $4, TAG273
ori $3, $4, 14
sw $4, 0($3)
TAG273:
slti $3, $3, 14
srlv $4, $3, $3
mfhi $2
lui $4, 1
TAG274:
divu $4, $4
beq $4, $4, TAG275
and $3, $4, $4
bgtz $3, TAG275
TAG275:
mfhi $3
bgtz $3, TAG276
lui $3, 15
lui $3, 14
TAG276:
lui $4, 11
srlv $3, $4, $4
multu $4, $4
lui $1, 7
TAG277:
slt $2, $1, $1
mult $1, $1
lbu $4, 0($2)
mfhi $4
TAG278:
blez $4, TAG279
subu $3, $4, $4
mult $4, $3
sll $1, $3, 9
TAG279:
add $3, $1, $1
sra $4, $3, 4
srav $4, $1, $4
mthi $1
TAG280:
xor $2, $4, $4
sh $2, 0($2)
sll $1, $4, 8
bne $1, $4, TAG281
TAG281:
sh $1, 0($1)
mfhi $2
sw $2, 0($1)
mthi $1
TAG282:
blez $2, TAG283
addi $1, $2, 11
lui $3, 6
mflo $4
TAG283:
mfhi $1
bgez $1, TAG284
mflo $4
bltz $1, TAG284
TAG284:
mthi $4
mthi $4
lw $1, 0($4)
mflo $2
TAG285:
lui $2, 7
slt $4, $2, $2
mthi $4
sll $0, $0, 0
TAG286:
addu $2, $4, $4
mthi $2
sw $2, 0($4)
bgez $4, TAG287
TAG287:
sh $2, 0($2)
sll $2, $2, 1
mult $2, $2
nor $4, $2, $2
TAG288:
sll $2, $4, 8
mult $2, $4
sllv $4, $2, $4
sh $4, 0($4)
TAG289:
mflo $2
beq $4, $2, TAG290
lb $2, 0($4)
beq $2, $2, TAG290
TAG290:
mfhi $1
bne $1, $2, TAG291
ori $3, $1, 3
mflo $2
TAG291:
mflo $4
lbu $2, -256($4)
mult $2, $2
bgtz $2, TAG292
TAG292:
sb $2, 0($2)
mfhi $2
bltz $2, TAG293
andi $3, $2, 8
TAG293:
bgtz $3, TAG294
mtlo $3
beq $3, $3, TAG294
lb $3, 0($3)
TAG294:
sltu $4, $3, $3
sll $2, $4, 6
sra $3, $3, 6
lw $2, 0($4)
TAG295:
sub $2, $2, $2
sh $2, 0($2)
mflo $2
beq $2, $2, TAG296
TAG296:
sb $2, 0($2)
lh $1, 0($2)
lui $2, 15
subu $3, $2, $2
TAG297:
mthi $3
ori $1, $3, 11
slt $2, $3, $1
subu $1, $3, $2
TAG298:
mtlo $1
mflo $1
lbu $3, 1($1)
sll $3, $1, 4
TAG299:
sb $3, 16($3)
beq $3, $3, TAG300
lui $3, 0
subu $1, $3, $3
TAG300:
andi $2, $1, 7
lui $4, 9
mtlo $2
beq $1, $1, TAG301
TAG301:
mtlo $4
beq $4, $4, TAG302
div $4, $4
lbu $3, 0($4)
TAG302:
addu $1, $3, $3
bne $3, $1, TAG303
lui $2, 3
beq $2, $3, TAG303
TAG303:
mtlo $2
divu $2, $2
bltz $2, TAG304
xori $1, $2, 10
TAG304:
mfhi $2
mtlo $2
bne $2, $2, TAG305
multu $1, $2
TAG305:
bne $2, $2, TAG306
mflo $4
sh $2, 0($4)
subu $3, $4, $4
TAG306:
lui $3, 14
mfhi $3
mfhi $2
xori $3, $2, 10
TAG307:
mtlo $3
lb $3, 0($3)
multu $3, $3
srl $4, $3, 14
TAG308:
or $4, $4, $4
lw $4, 0($4)
lui $3, 8
mult $4, $3
TAG309:
sll $0, $0, 0
mflo $4
mthi $3
sra $2, $3, 0
TAG310:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
beq $2, $2, TAG311
TAG311:
sll $0, $0, 0
ori $1, $3, 0
bne $1, $3, TAG312
sll $0, $0, 0
TAG312:
mthi $2
bgtz $2, TAG313
sll $0, $0, 0
lui $1, 14
TAG313:
bltz $1, TAG314
mfhi $4
divu $1, $1
blez $4, TAG314
TAG314:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG315
mthi $4
TAG315:
sll $0, $0, 0
slt $4, $2, $2
sll $0, $0, 0
div $2, $1
TAG316:
bgez $1, TAG317
sll $0, $0, 0
sb $3, 0($3)
sw $1, 0($1)
TAG317:
mthi $3
lui $4, 1
lui $1, 7
addu $2, $4, $3
TAG318:
sltu $2, $2, $2
mult $2, $2
sb $2, 0($2)
lw $3, 0($2)
TAG319:
bne $3, $3, TAG320
sra $2, $3, 2
lui $3, 4
or $2, $2, $3
TAG320:
sltiu $4, $2, 3
lui $2, 1
bne $2, $2, TAG321
sll $0, $0, 0
TAG321:
bgez $1, TAG322
sll $0, $0, 0
bgez $3, TAG322
sh $1, 0($1)
TAG322:
mthi $3
addiu $3, $3, 2
mfhi $4
bne $3, $4, TAG323
TAG323:
lui $2, 13
bgtz $2, TAG324
lui $3, 1
sh $3, 0($3)
TAG324:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG325:
mthi $3
lui $1, 2
beq $1, $1, TAG326
mflo $4
TAG326:
bgtz $4, TAG327
nor $4, $4, $4
lw $2, 1($4)
lui $1, 1
TAG327:
mthi $1
bltz $1, TAG328
lui $1, 4
mflo $1
TAG328:
mult $1, $1
mfhi $3
mfhi $3
bltz $3, TAG329
TAG329:
lh $2, 0($3)
mult $2, $2
nor $3, $3, $2
sh $3, 1($3)
TAG330:
divu $3, $3
mtlo $3
mthi $3
slt $2, $3, $3
TAG331:
andi $3, $2, 8
blez $3, TAG332
sb $3, 0($3)
bgez $3, TAG332
TAG332:
slt $3, $3, $3
sh $3, 0($3)
add $2, $3, $3
lb $1, 0($3)
TAG333:
bgtz $1, TAG334
mflo $1
lui $3, 0
mflo $2
TAG334:
beq $2, $2, TAG335
div $2, $2
mtlo $2
mthi $2
TAG335:
srlv $2, $2, $2
mtlo $2
mult $2, $2
srav $2, $2, $2
TAG336:
lhu $3, 0($2)
sb $3, 0($2)
mtlo $3
mflo $1
TAG337:
sh $1, 0($1)
mthi $1
mtlo $1
bgez $1, TAG338
TAG338:
sltu $1, $1, $1
mflo $2
multu $1, $1
mflo $1
TAG339:
lui $4, 1
lui $1, 9
mfhi $4
xori $2, $4, 1
TAG340:
sb $2, 0($2)
ori $3, $2, 4
slti $1, $2, 6
bne $3, $2, TAG341
TAG341:
lui $3, 13
mfhi $3
blez $3, TAG342
lw $1, 0($3)
TAG342:
mflo $2
sh $2, -256($1)
divu $1, $1
lui $3, 0
TAG343:
blez $3, TAG344
sll $2, $3, 7
lui $1, 15
sw $1, 0($3)
TAG344:
slti $1, $1, 2
multu $1, $1
sb $1, 0($1)
beq $1, $1, TAG345
TAG345:
mult $1, $1
andi $1, $1, 7
lhu $2, 0($1)
sh $1, 0($2)
TAG346:
mult $2, $2
blez $2, TAG347
mfhi $2
sb $2, 0($2)
TAG347:
multu $2, $2
beq $2, $2, TAG348
lb $3, 0($2)
sh $2, 0($3)
TAG348:
sw $3, 0($3)
mfhi $3
mfhi $4
bltz $3, TAG349
TAG349:
xori $1, $4, 11
sb $1, 0($1)
mflo $4
mthi $1
TAG350:
multu $4, $4
bgez $4, TAG351
mthi $4
mthi $4
TAG351:
bgez $4, TAG352
lui $3, 3
mtlo $3
lb $4, 0($4)
TAG352:
lui $4, 13
mfhi $2
lbu $3, 0($2)
slt $1, $4, $4
TAG353:
xori $2, $1, 10
bne $2, $2, TAG354
lw $2, 0($1)
lui $3, 7
TAG354:
divu $3, $3
mthi $3
bgez $3, TAG355
divu $3, $3
TAG355:
lui $2, 2
lui $3, 6
beq $3, $3, TAG356
ori $4, $2, 11
TAG356:
mtlo $4
mflo $1
slti $2, $1, 10
sll $0, $0, 0
TAG357:
mthi $3
mflo $1
lui $2, 14
bgtz $1, TAG358
TAG358:
sllv $4, $2, $2
lui $4, 14
sll $0, $0, 0
sll $1, $2, 1
TAG359:
sll $0, $0, 0
lui $4, 10
lui $1, 7
lui $3, 8
TAG360:
sllv $3, $3, $3
addiu $4, $3, 6
bgez $3, TAG361
sll $0, $0, 0
TAG361:
sll $0, $0, 0
mtlo $2
mfhi $4
andi $3, $4, 6
TAG362:
lui $4, 13
beq $3, $3, TAG363
multu $3, $3
lui $4, 9
TAG363:
andi $3, $4, 15
mtlo $4
addiu $4, $4, 10
sll $0, $0, 0
TAG364:
bltz $4, TAG365
sll $0, $0, 0
div $4, $4
sll $0, $0, 0
TAG365:
sltiu $3, $4, 7
beq $4, $3, TAG366
mtlo $4
mflo $3
TAG366:
lui $1, 13
xori $3, $3, 10
lui $4, 3
bgez $3, TAG367
TAG367:
lui $2, 9
sll $0, $0, 0
ori $1, $4, 3
mthi $2
TAG368:
bgtz $1, TAG369
subu $3, $1, $1
lui $3, 5
divu $3, $1
TAG369:
andi $4, $3, 15
mflo $2
lui $2, 11
mtlo $2
TAG370:
divu $2, $2
srav $3, $2, $2
mult $2, $2
sll $0, $0, 0
TAG371:
bgez $2, TAG372
xor $3, $2, $2
mflo $1
sw $1, 0($1)
TAG372:
blez $1, TAG373
mult $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG373:
mflo $3
lui $2, 15
beq $3, $3, TAG374
div $3, $3
TAG374:
mthi $2
blez $2, TAG375
div $2, $2
ori $2, $2, 3
TAG375:
andi $2, $2, 9
bgtz $2, TAG376
div $2, $2
sh $2, 0($2)
TAG376:
mthi $2
subu $2, $2, $2
mthi $2
sh $2, 0($2)
TAG377:
sub $1, $2, $2
mflo $3
sb $2, 0($1)
sltu $3, $3, $1
TAG378:
bgtz $3, TAG379
nor $1, $3, $3
nor $3, $3, $3
mthi $3
TAG379:
addu $1, $3, $3
sw $1, 1($3)
multu $1, $3
bne $3, $3, TAG380
TAG380:
mflo $2
mthi $1
ori $1, $2, 3
bgtz $2, TAG381
TAG381:
mtlo $1
mtlo $1
lbu $2, 0($1)
div $2, $1
TAG382:
bgez $2, TAG383
slti $2, $2, 13
lhu $4, 0($2)
slt $1, $2, $2
TAG383:
blez $1, TAG384
lui $4, 12
div $1, $4
subu $1, $1, $1
TAG384:
mflo $3
bne $1, $3, TAG385
mult $1, $1
sw $1, 0($3)
TAG385:
add $2, $3, $3
multu $3, $2
mult $2, $3
lbu $2, 0($2)
TAG386:
addiu $4, $2, 9
mult $4, $4
mflo $1
sll $4, $1, 15
TAG387:
addiu $2, $4, 5
beq $4, $2, TAG388
mflo $4
div $4, $4
TAG388:
lui $1, 11
bne $1, $1, TAG389
sll $0, $0, 0
sllv $3, $4, $1
TAG389:
divu $3, $3
lui $4, 5
lui $1, 7
mfhi $3
TAG390:
blez $3, TAG391
lui $1, 5
lui $2, 7
mtlo $3
TAG391:
blez $2, TAG392
mult $2, $2
bne $2, $2, TAG392
lui $1, 13
TAG392:
divu $1, $1
nor $1, $1, $1
addu $4, $1, $1
lui $1, 0
TAG393:
sltu $4, $1, $1
sb $4, 0($1)
sb $4, 0($4)
multu $4, $1
TAG394:
or $1, $4, $4
blez $4, TAG395
nor $3, $1, $1
mult $4, $1
TAG395:
sh $3, 1($3)
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
TAG396:
blez $4, TAG397
mult $4, $4
mfhi $4
mthi $4
TAG397:
lui $1, 13
lui $4, 7
slti $4, $1, 14
lw $3, 0($4)
TAG398:
or $4, $3, $3
multu $3, $4
bltz $3, TAG399
div $4, $3
TAG399:
bgtz $4, TAG400
mfhi $4
lw $2, 0($4)
divu $4, $4
TAG400:
sll $0, $0, 0
lui $2, 7
mflo $1
sb $2, 0($1)
TAG401:
bne $1, $1, TAG402
div $1, $1
mtlo $1
mfhi $1
TAG402:
mthi $1
bltz $1, TAG403
mthi $1
sw $1, 0($1)
TAG403:
beq $1, $1, TAG404
lui $2, 15
bgtz $2, TAG404
mflo $1
TAG404:
nor $3, $1, $1
mfhi $2
xori $2, $1, 12
subu $1, $2, $3
TAG405:
bne $1, $1, TAG406
mfhi $1
sw $1, 0($1)
lb $1, 0($1)
TAG406:
sw $1, 0($1)
mfhi $4
mult $1, $1
lui $3, 2
TAG407:
mthi $3
lui $4, 9
multu $4, $4
sll $0, $0, 0
TAG408:
mthi $4
beq $4, $4, TAG409
sll $0, $0, 0
sll $4, $4, 6
TAG409:
addiu $2, $4, 6
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG410:
div $4, $4
lui $2, 9
sll $0, $0, 0
divu $4, $2
TAG411:
beq $4, $4, TAG412
mfhi $1
lui $1, 15
sb $1, 0($4)
TAG412:
mfhi $4
mthi $1
multu $1, $1
addu $4, $4, $1
TAG413:
xori $2, $4, 2
mult $2, $4
sltiu $4, $4, 9
div $2, $4
TAG414:
sb $4, 0($4)
lui $1, 10
addu $1, $1, $4
bgez $4, TAG415
TAG415:
sll $0, $0, 0
lui $1, 3
bgtz $1, TAG416
mtlo $1
TAG416:
mtlo $1
mult $1, $1
blez $1, TAG417
ori $3, $1, 2
TAG417:
bgtz $3, TAG418
sll $0, $0, 0
mtlo $3
blez $3, TAG418
TAG418:
divu $3, $3
mtlo $3
bgtz $3, TAG419
mflo $1
TAG419:
bltz $1, TAG420
multu $1, $1
lui $2, 6
lui $4, 5
TAG420:
lui $2, 0
sll $0, $0, 0
bgez $2, TAG421
sll $0, $0, 0
TAG421:
bgtz $3, TAG422
or $2, $3, $3
sh $2, 0($3)
addi $2, $2, 6
TAG422:
sll $0, $0, 0
bgez $2, TAG423
sll $0, $0, 0
or $4, $1, $1
TAG423:
mult $4, $4
bgez $4, TAG424
sll $0, $0, 0
multu $4, $4
TAG424:
addiu $3, $4, 5
sll $1, $4, 12
mflo $2
mfhi $2
TAG425:
sll $1, $2, 14
bltz $2, TAG426
sll $0, $0, 0
multu $1, $1
TAG426:
sll $0, $0, 0
sll $0, $0, 0
sra $2, $1, 4
mthi $1
TAG427:
xori $2, $2, 3
beq $2, $2, TAG428
xori $2, $2, 0
mthi $2
TAG428:
mthi $2
mfhi $4
mfhi $4
srl $1, $4, 10
TAG429:
lbu $1, 0($1)
slt $4, $1, $1
bne $1, $4, TAG430
sw $1, 0($4)
TAG430:
bgez $4, TAG431
lw $4, 0($4)
bgtz $4, TAG431
andi $1, $4, 8
TAG431:
mfhi $1
beq $1, $1, TAG432
subu $4, $1, $1
add $3, $1, $4
TAG432:
sll $0, $0, 0
addu $2, $3, $3
sll $0, $0, 0
divu $2, $3
TAG433:
multu $4, $4
bgez $4, TAG434
xor $1, $4, $4
mflo $2
TAG434:
lui $2, 3
mtlo $2
beq $2, $2, TAG435
andi $1, $2, 5
TAG435:
or $2, $1, $1
andi $2, $2, 5
bltz $2, TAG436
mflo $4
TAG436:
subu $1, $4, $4
mfhi $3
bgtz $1, TAG437
slti $2, $1, 7
TAG437:
slt $2, $2, $2
lui $2, 4
mflo $2
srl $3, $2, 9
TAG438:
subu $3, $3, $3
lui $2, 14
mthi $3
bltz $2, TAG439
TAG439:
addu $3, $2, $2
ori $4, $3, 8
multu $4, $4
sll $0, $0, 0
TAG440:
multu $1, $1
lh $1, 0($1)
multu $1, $1
lui $1, 0
TAG441:
mthi $1
mthi $1
lhu $1, 0($1)
srl $1, $1, 8
TAG442:
multu $1, $1
sh $1, 0($1)
bgtz $1, TAG443
addi $4, $1, 0
TAG443:
mflo $1
lui $3, 1
sll $0, $0, 0
lui $2, 1
TAG444:
bne $2, $2, TAG445
mfhi $2
xor $3, $2, $2
mflo $3
TAG445:
slt $3, $3, $3
lui $3, 14
sll $0, $0, 0
addu $4, $3, $3
TAG446:
sll $0, $0, 0
sll $0, $0, 0
mthi $4
addi $4, $1, 5
TAG447:
blez $4, TAG448
mult $4, $4
ori $1, $4, 0
subu $2, $4, $1
TAG448:
sll $1, $2, 11
lui $1, 4
mtlo $1
bgtz $2, TAG449
TAG449:
nor $1, $1, $1
nor $4, $1, $1
mflo $1
mthi $4
TAG450:
mthi $1
mtlo $1
mfhi $1
sll $0, $0, 0
TAG451:
lui $3, 0
bgez $2, TAG452
mflo $2
sh $2, 0($2)
TAG452:
mflo $2
multu $2, $2
mthi $2
bgez $2, TAG453
TAG453:
mflo $1
sh $2, 0($1)
sltu $2, $2, $1
sltiu $3, $2, 1
TAG454:
mfhi $3
lui $2, 7
multu $2, $3
sll $0, $0, 0
TAG455:
mtlo $2
mfhi $2
slt $2, $2, $2
bgtz $2, TAG456
TAG456:
mthi $2
lui $1, 8
sw $2, 0($2)
mtlo $1
TAG457:
sll $0, $0, 0
lui $3, 11
subu $3, $3, $1
mfhi $4
TAG458:
lui $1, 9
slt $3, $4, $1
mfhi $2
lui $3, 10
TAG459:
mtlo $3
lui $4, 12
bgtz $3, TAG460
slt $1, $4, $4
TAG460:
lui $4, 10
addu $3, $4, $4
lh $1, 0($1)
srav $3, $1, $4
TAG461:
mtlo $3
mfhi $2
bne $2, $3, TAG462
mfhi $2
TAG462:
xori $4, $2, 15
addu $3, $2, $4
ori $4, $4, 12
mflo $2
TAG463:
lw $2, 0($2)
addiu $2, $2, 6
lbu $3, 0($2)
subu $3, $2, $3
TAG464:
lui $2, 15
sh $3, 0($3)
lui $4, 6
sra $4, $3, 1
TAG465:
lui $1, 10
lb $3, 0($4)
mfhi $2
lui $2, 3
TAG466:
xori $1, $2, 4
mtlo $2
mthi $2
sll $0, $0, 0
TAG467:
sll $0, $0, 0
mthi $1
multu $1, $1
mthi $1
TAG468:
bltz $1, TAG469
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
TAG469:
bne $1, $1, TAG470
addiu $4, $1, 7
divu $1, $1
lui $2, 14
TAG470:
sltu $1, $2, $2
mthi $2
sb $2, 0($1)
lui $3, 15
TAG471:
beq $3, $3, TAG472
sll $0, $0, 0
div $3, $3
addi $1, $3, 5
TAG472:
add $2, $1, $1
bltz $2, TAG473
srav $4, $2, $2
mflo $4
TAG473:
bgez $4, TAG474
mflo $1
mfhi $2
sh $2, 0($1)
TAG474:
bgez $2, TAG475
subu $3, $2, $2
multu $2, $3
and $2, $2, $3
TAG475:
lbu $2, 0($2)
bltz $2, TAG476
sb $2, 0($2)
lui $2, 13
TAG476:
multu $2, $2
addiu $2, $2, 8
mflo $3
lui $4, 5
TAG477:
bne $4, $4, TAG478
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG478:
sra $1, $1, 11
lb $2, 0($1)
bgez $1, TAG479
mult $2, $2
TAG479:
sw $2, 0($2)
mflo $4
mflo $1
lui $4, 9
TAG480:
lui $4, 14
lui $2, 14
lui $2, 5
beq $2, $4, TAG481
TAG481:
slti $2, $2, 8
addiu $1, $2, 2
nor $3, $1, $2
lbu $1, 0($2)
TAG482:
lui $1, 6
sll $0, $0, 0
srlv $1, $3, $1
lui $1, 9
TAG483:
mtlo $1
sll $0, $0, 0
blez $1, TAG484
lui $1, 3
TAG484:
bne $1, $1, TAG485
sll $0, $0, 0
div $2, $1
sll $0, $0, 0
TAG485:
bgtz $2, TAG486
mtlo $2
multu $2, $2
bltz $2, TAG486
TAG486:
mult $2, $2
lui $3, 6
bltz $2, TAG487
lhu $2, 0($2)
TAG487:
sh $2, 0($2)
multu $2, $2
xor $3, $2, $2
lui $3, 9
TAG488:
sll $0, $0, 0
mult $3, $3
sltu $4, $3, $3
ori $2, $4, 9
TAG489:
sltiu $3, $2, 2
mtlo $2
slt $2, $2, $2
mflo $3
TAG490:
lbu $3, 0($3)
lh $2, 0($3)
lh $2, 0($3)
srl $2, $3, 12
TAG491:
bgtz $2, TAG492
mflo $4
lbu $2, 0($4)
slti $2, $2, 12
TAG492:
sb $2, 0($2)
mflo $3
beq $3, $2, TAG493
nor $2, $3, $3
TAG493:
mflo $2
lui $4, 13
multu $2, $4
div $4, $2
TAG494:
beq $4, $4, TAG495
sll $0, $0, 0
lw $3, 0($4)
srav $3, $3, $3
TAG495:
bgez $3, TAG496
lui $1, 11
mflo $4
beq $4, $1, TAG496
TAG496:
addiu $3, $4, 6
mthi $3
divu $4, $4
mthi $3
TAG497:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
lui $2, 12
TAG498:
sll $0, $0, 0
mtlo $2
div $2, $2
sll $0, $0, 0
TAG499:
sltu $3, $2, $2
addu $1, $3, $3
bne $2, $3, TAG500
mthi $1
TAG500:
mflo $1
beq $1, $1, TAG501
mtlo $1
mtlo $1
TAG501:
bne $1, $1, TAG502
mfhi $1
lui $4, 14
mfhi $4
TAG502:
mthi $4
or $1, $4, $4
bne $1, $4, TAG503
sh $4, 0($1)
TAG503:
bne $1, $1, TAG504
sh $1, 0($1)
addi $4, $1, 2
mfhi $2
TAG504:
mult $2, $2
bgtz $2, TAG505
slti $1, $2, 4
sh $1, 0($2)
TAG505:
sb $1, 0($1)
mthi $1
mthi $1
mtlo $1
TAG506:
bne $1, $1, TAG507
lb $3, 0($1)
lb $3, 0($1)
beq $3, $1, TAG507
TAG507:
div $3, $3
divu $3, $3
lui $3, 14
bgtz $3, TAG508
TAG508:
sll $0, $0, 0
mthi $3
bne $3, $3, TAG509
lui $4, 14
TAG509:
mflo $4
slt $3, $4, $4
sb $4, 0($4)
lb $3, 0($4)
TAG510:
lui $3, 13
sll $0, $0, 0
mflo $4
addiu $3, $4, 14
TAG511:
mtlo $3
sb $3, 0($3)
lui $1, 15
sll $0, $0, 0
TAG512:
bne $1, $1, TAG513
sra $2, $1, 5
sltiu $1, $2, 9
nor $4, $1, $1
TAG513:
bgez $4, TAG514
mtlo $4
xor $3, $4, $4
lui $4, 6
TAG514:
lui $1, 14
sltiu $4, $1, 9
lui $4, 7
div $1, $4
TAG515:
beq $4, $4, TAG516
addu $1, $4, $4
or $1, $1, $1
mthi $1
TAG516:
divu $1, $1
sll $0, $0, 0
mflo $4
mult $4, $4
TAG517:
mfhi $4
mfhi $4
bgez $4, TAG518
sw $4, 0($4)
TAG518:
mflo $2
lbu $2, 0($2)
lh $4, 0($4)
bgtz $2, TAG519
TAG519:
mfhi $4
xori $2, $4, 3
addu $2, $2, $4
mflo $2
TAG520:
bgez $2, TAG521
and $1, $2, $2
bgez $1, TAG521
lui $2, 8
TAG521:
blez $2, TAG522
mflo $3
mflo $1
bltz $2, TAG522
TAG522:
lbu $3, 0($1)
bltz $3, TAG523
mflo $4
bltz $1, TAG523
TAG523:
ori $3, $4, 4
sb $4, 0($4)
xori $3, $3, 6
lbu $1, 0($4)
TAG524:
lui $3, 0
mfhi $1
sw $3, 0($1)
mtlo $1
TAG525:
lh $2, 0($1)
sh $2, 0($2)
beq $2, $2, TAG526
multu $2, $2
TAG526:
addiu $4, $2, 7
bne $2, $2, TAG527
mult $2, $4
bne $4, $4, TAG527
TAG527:
mfhi $3
addu $3, $4, $3
lui $3, 11
lbu $2, 0($4)
TAG528:
bgez $2, TAG529
sb $2, 0($2)
add $1, $2, $2
bltz $2, TAG529
TAG529:
addiu $2, $1, 9
blez $1, TAG530
mfhi $2
mthi $2
TAG530:
sw $2, 0($2)
mthi $2
bne $2, $2, TAG531
lui $2, 11
TAG531:
xor $1, $2, $2
sll $0, $0, 0
mult $2, $2
beq $2, $2, TAG532
TAG532:
multu $1, $1
mult $1, $1
mfhi $2
lui $4, 4
TAG533:
sll $0, $0, 0
sw $2, 0($2)
mthi $2
sll $0, $0, 0
TAG534:
lui $4, 3
mfhi $3
lui $2, 1
bgtz $4, TAG535
TAG535:
sll $0, $0, 0
mfhi $3
lui $4, 5
sb $2, 0($3)
TAG536:
srl $4, $4, 15
blez $4, TAG537
mtlo $4
lbu $2, 0($4)
TAG537:
sltiu $3, $2, 8
mtlo $3
lh $2, 0($2)
mfhi $1
TAG538:
sh $1, 0($1)
lh $2, 0($1)
mfhi $2
sub $3, $2, $2
TAG539:
sh $3, 0($3)
sh $3, 0($3)
blez $3, TAG540
lw $3, 0($3)
TAG540:
multu $3, $3
mthi $3
sw $3, 0($3)
multu $3, $3
TAG541:
mfhi $4
lui $1, 8
bne $3, $4, TAG542
mflo $2
TAG542:
srl $2, $2, 9
mfhi $2
mtlo $2
mult $2, $2
TAG543:
sllv $3, $2, $2
mfhi $1
multu $1, $3
lh $1, 0($1)
TAG544:
beq $1, $1, TAG545
mtlo $1
mthi $1
lui $4, 5
TAG545:
mfhi $4
lbu $3, 0($4)
lui $2, 15
xor $4, $4, $4
TAG546:
multu $4, $4
lui $1, 5
bgez $1, TAG547
mfhi $2
TAG547:
and $4, $2, $2
lb $2, 0($2)
mfhi $3
lui $2, 9
TAG548:
mtlo $2
lui $1, 1
lui $1, 5
mflo $1
TAG549:
xor $2, $1, $1
andi $3, $2, 13
or $3, $2, $2
sll $0, $0, 0
TAG550:
srlv $1, $3, $3
addiu $3, $3, 12
lui $2, 3
divu $3, $2
TAG551:
lui $3, 11
lui $3, 2
div $2, $3
addiu $4, $3, 12
TAG552:
div $4, $4
lui $3, 8
mthi $4
blez $3, TAG553
TAG553:
sll $0, $0, 0
bgez $3, TAG554
mfhi $2
blez $4, TAG554
TAG554:
mult $2, $2
sll $0, $0, 0
mtlo $2
mfhi $4
TAG555:
lbu $1, 0($4)
mtlo $1
div $4, $1
mfhi $1
TAG556:
sb $1, 0($1)
mflo $4
multu $4, $1
mflo $4
TAG557:
multu $4, $4
lhu $3, 0($4)
lhu $3, 0($4)
lui $3, 9
TAG558:
sll $0, $0, 0
div $4, $3
addiu $2, $3, 2
sll $0, $0, 0
TAG559:
multu $1, $1
lhu $1, 0($1)
mfhi $3
lbu $1, 0($3)
TAG560:
srl $3, $1, 4
xor $4, $1, $3
mtlo $3
multu $4, $1
TAG561:
sb $4, 0($4)
mflo $4
lui $3, 3
addiu $1, $3, 2
TAG562:
mult $1, $1
andi $2, $1, 12
bltz $1, TAG563
mthi $2
TAG563:
mult $2, $2
lui $3, 15
beq $3, $3, TAG564
mult $3, $2
TAG564:
sltiu $3, $3, 12
mult $3, $3
mflo $4
bltz $3, TAG565
TAG565:
mtlo $4
bne $4, $4, TAG566
lui $3, 15
bltz $4, TAG566
TAG566:
sll $0, $0, 0
bne $3, $3, TAG567
and $2, $3, $3
beq $3, $3, TAG567
TAG567:
xori $3, $2, 15
mflo $1
mult $1, $1
sub $1, $2, $1
TAG568:
sll $0, $0, 0
mflo $4
subu $3, $4, $1
lui $4, 12
TAG569:
sll $0, $0, 0
mthi $4
sll $0, $0, 0
lui $2, 15
TAG570:
sll $0, $0, 0
srl $3, $2, 15
sh $2, 0($3)
sh $3, 0($3)
TAG571:
mflo $1
bgez $3, TAG572
mtlo $3
sltu $1, $3, $3
TAG572:
lui $1, 6
beq $1, $1, TAG573
sll $0, $0, 0
srl $4, $1, 6
TAG573:
addu $2, $4, $4
sll $0, $0, 0
mfhi $1
addiu $4, $1, 11
TAG574:
mfhi $3
mtlo $3
mtlo $3
blez $4, TAG575
TAG575:
lui $4, 8
sll $0, $0, 0
lui $2, 4
mflo $3
TAG576:
div $3, $3
mfhi $2
xori $3, $2, 8
bgez $2, TAG577
TAG577:
subu $2, $3, $3
sltu $2, $2, $2
addi $4, $2, 3
lui $1, 13
TAG578:
bgtz $1, TAG579
sll $0, $0, 0
lui $1, 15
sll $3, $2, 9
TAG579:
bne $3, $3, TAG580
addiu $2, $3, 4
lbu $4, 0($3)
sh $3, 0($4)
TAG580:
lw $3, 0($4)
subu $4, $4, $4
addi $4, $4, 13
sra $3, $4, 15
TAG581:
mthi $3
mthi $3
sw $3, 0($3)
sb $3, 0($3)
TAG582:
mthi $3
sb $3, 0($3)
lw $2, 0($3)
sb $3, 0($2)
TAG583:
beq $2, $2, TAG584
mtlo $2
sw $2, 0($2)
sltiu $3, $2, 3
TAG584:
beq $3, $3, TAG585
or $2, $3, $3
lui $2, 8
xor $3, $2, $3
TAG585:
lbu $2, 0($3)
srlv $4, $3, $2
beq $4, $4, TAG586
mult $2, $2
TAG586:
bgez $4, TAG587
lui $1, 15
lui $3, 7
srl $1, $3, 9
TAG587:
divu $1, $1
lui $3, 6
lui $4, 1
slti $2, $1, 11
TAG588:
blez $2, TAG589
mthi $2
beq $2, $2, TAG589
addiu $3, $2, 9
TAG589:
xori $1, $3, 6
sll $0, $0, 0
mflo $2
xor $4, $1, $3
TAG590:
srl $2, $4, 5
mfhi $1
lui $3, 12
addu $3, $4, $2
TAG591:
ori $2, $3, 11
lb $2, 0($2)
mflo $2
mtlo $2
TAG592:
mthi $2
lbu $1, 0($2)
lui $1, 7
srl $2, $2, 8
TAG593:
srlv $3, $2, $2
blez $2, TAG594
sb $2, 0($2)
mthi $2
TAG594:
lui $2, 4
addu $3, $2, $2
bne $2, $3, TAG595
lui $3, 11
TAG595:
lui $4, 7
sll $0, $0, 0
mtlo $4
sllv $4, $4, $3
TAG596:
mfhi $4
addiu $2, $4, 11
lui $2, 6
sll $0, $0, 0
TAG597:
sll $0, $0, 0
bgtz $3, TAG598
mtlo $3
addi $3, $3, 2
TAG598:
bgez $3, TAG599
nor $4, $3, $3
mfhi $2
sb $2, 0($2)
TAG599:
mfhi $3
addiu $1, $2, 11
mfhi $4
beq $4, $3, TAG600
TAG600:
lbu $4, 0($4)
mflo $2
bne $4, $4, TAG601
lh $1, 0($4)
TAG601:
sw $1, 0($1)
addi $2, $1, 7
multu $2, $1
sb $2, 0($1)
TAG602:
sb $2, 0($2)
sb $2, 0($2)
mult $2, $2
mfhi $3
TAG603:
mthi $3
mthi $3
xori $2, $3, 2
srlv $3, $3, $2
TAG604:
bltz $3, TAG605
addu $1, $3, $3
lh $2, 0($3)
lui $1, 1
TAG605:
beq $1, $1, TAG606
mthi $1
blez $1, TAG606
mflo $2
TAG606:
mflo $3
mtlo $2
mthi $3
slt $1, $2, $2
TAG607:
blez $1, TAG608
mflo $4
mtlo $1
mult $1, $4
TAG608:
lui $4, 0
beq $4, $4, TAG609
lh $1, 0($4)
mthi $4
TAG609:
mthi $1
mthi $1
lb $1, 0($1)
andi $4, $1, 14
TAG610:
mfhi $1
addiu $4, $1, 2
sb $1, 0($4)
and $4, $4, $4
TAG611:
xori $2, $4, 7
sh $2, 0($2)
beq $4, $2, TAG612
lbu $2, 0($4)
TAG612:
beq $2, $2, TAG613
srav $4, $2, $2
addiu $1, $4, 5
bgtz $4, TAG613
TAG613:
mult $1, $1
mfhi $3
blez $1, TAG614
divu $1, $1
TAG614:
sltu $1, $3, $3
bgtz $1, TAG615
sub $3, $3, $1
mflo $4
TAG615:
bne $4, $4, TAG616
sb $4, 0($4)
bltz $4, TAG616
lbu $2, 0($4)
TAG616:
slti $1, $2, 4
mfhi $2
mflo $4
bgtz $1, TAG617
TAG617:
xori $2, $4, 1
mthi $4
slti $4, $4, 8
bgtz $4, TAG618
TAG618:
sb $4, 0($4)
lui $2, 3
mfhi $4
sll $1, $4, 7
TAG619:
sb $1, 0($1)
sh $1, 0($1)
lw $3, 0($1)
lh $1, 0($3)
TAG620:
beq $1, $1, TAG621
ori $4, $1, 10
lh $1, 0($4)
mthi $1
TAG621:
mthi $1
lb $2, 0($1)
bgez $2, TAG622
lw $1, 128($2)
TAG622:
bgez $1, TAG623
xor $1, $1, $1
divu $1, $1
lbu $2, 0($1)
TAG623:
divu $2, $2
lb $2, 128($2)
lbu $2, 0($2)
multu $2, $2
TAG624:
bgez $2, TAG625
mult $2, $2
blez $2, TAG625
mfhi $3
TAG625:
sw $3, 0($3)
mflo $2
mult $3, $2
bne $2, $2, TAG626
TAG626:
mtlo $2
bne $2, $2, TAG627
mtlo $2
mfhi $2
TAG627:
srav $2, $2, $2
sltiu $1, $2, 3
srl $3, $2, 13
lui $3, 3
TAG628:
sll $0, $0, 0
multu $3, $3
xori $2, $3, 4
beq $2, $3, TAG629
TAG629:
lui $1, 1
or $1, $2, $2
mtlo $2
mfhi $4
TAG630:
sb $4, 0($4)
lb $1, 0($4)
andi $3, $1, 1
mthi $1
TAG631:
bne $3, $3, TAG632
mfhi $3
mfhi $1
lb $4, 0($1)
TAG632:
lb $4, 0($4)
sb $4, 0($4)
sra $2, $4, 3
bltz $4, TAG633
TAG633:
mtlo $2
mtlo $2
sb $2, 0($2)
mfhi $2
TAG634:
lb $2, 0($2)
bltz $2, TAG635
mfhi $1
mthi $2
TAG635:
mflo $1
bgtz $1, TAG636
mthi $1
mthi $1
TAG636:
mtlo $1
mtlo $1
lui $4, 11
bltz $1, TAG637
TAG637:
mflo $2
mtlo $2
andi $3, $2, 1
or $3, $3, $2
TAG638:
lui $2, 4
mult $2, $2
sll $0, $0, 0
mtlo $2
TAG639:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG640
addu $4, $2, $2
TAG640:
lui $3, 10
slti $1, $4, 3
beq $1, $3, TAG641
sra $4, $1, 9
TAG641:
lui $2, 13
lui $4, 11
blez $4, TAG642
sll $0, $0, 0
TAG642:
addu $4, $4, $4
mult $4, $4
sll $0, $0, 0
divu $4, $4
TAG643:
mflo $4
blez $4, TAG644
mfhi $4
sw $4, 0($4)
TAG644:
mfhi $2
mtlo $2
sll $1, $4, 9
bgtz $2, TAG645
TAG645:
add $2, $1, $1
sw $1, 0($1)
mflo $2
mflo $1
TAG646:
slti $4, $1, 14
xori $3, $4, 0
beq $3, $4, TAG647
div $3, $3
TAG647:
sra $3, $3, 5
bne $3, $3, TAG648
mult $3, $3
mfhi $2
TAG648:
slti $1, $2, 1
divu $1, $1
sb $2, 0($1)
bne $1, $2, TAG649
TAG649:
lui $2, 15
mfhi $2
addiu $3, $2, 10
mtlo $3
TAG650:
bgtz $3, TAG651
lui $3, 10
bne $3, $3, TAG651
and $2, $3, $3
TAG651:
sllv $1, $2, $2
bne $1, $2, TAG652
sb $1, 0($2)
blez $2, TAG652
TAG652:
mtlo $1
lh $3, 0($1)
sw $3, 0($3)
mult $1, $3
TAG653:
lh $3, 0($3)
mflo $4
mult $3, $3
beq $4, $4, TAG654
TAG654:
lh $3, 0($4)
beq $3, $4, TAG655
xori $1, $3, 6
or $3, $1, $4
TAG655:
lw $3, 0($3)
sltiu $1, $3, 3
mflo $3
lw $3, 0($3)
TAG656:
lui $2, 12
sll $0, $0, 0
andi $4, $4, 1
sllv $4, $3, $3
TAG657:
bgez $4, TAG658
mfhi $2
mfhi $1
sh $1, 0($2)
TAG658:
sra $4, $1, 7
lui $2, 14
slt $4, $2, $2
mthi $4
TAG659:
mtlo $4
mthi $4
lui $1, 15
lui $3, 3
TAG660:
beq $3, $3, TAG661
sll $0, $0, 0
lui $1, 4
bltz $3, TAG661
TAG661:
div $1, $1
blez $1, TAG662
srl $4, $1, 10
mfhi $3
TAG662:
mult $3, $3
lui $2, 7
bgtz $2, TAG663
addiu $1, $3, 14
TAG663:
slti $2, $1, 4
sltiu $2, $2, 5
addiu $3, $2, 11
lw $3, 0($3)
TAG664:
div $3, $3
bgez $3, TAG665
mfhi $3
bne $3, $3, TAG665
TAG665:
subu $3, $3, $3
beq $3, $3, TAG666
lbu $1, 0($3)
sltiu $4, $3, 3
TAG666:
mfhi $2
beq $4, $2, TAG667
subu $2, $4, $4
sw $4, 0($2)
TAG667:
sh $2, 0($2)
sub $3, $2, $2
bgtz $2, TAG668
lui $1, 5
TAG668:
bgez $1, TAG669
subu $2, $1, $1
mfhi $4
sllv $4, $1, $2
TAG669:
bgez $4, TAG670
mflo $1
blez $1, TAG670
mflo $2
TAG670:
sll $4, $2, 4
sra $3, $2, 11
lhu $1, 0($3)
lbu $3, 0($1)
TAG671:
lb $2, 0($3)
mthi $3
sh $2, 0($2)
mflo $1
TAG672:
multu $1, $1
sb $1, 0($1)
sll $1, $1, 0
lb $4, 0($1)
TAG673:
xori $4, $4, 9
sra $2, $4, 13
slt $3, $2, $2
divu $3, $4
TAG674:
lui $2, 15
mflo $4
beq $2, $4, TAG675
mfhi $2
TAG675:
sltiu $4, $2, 3
mfhi $2
mult $4, $2
lui $3, 13
TAG676:
lui $4, 2
lui $1, 13
srl $1, $4, 2
multu $1, $1
TAG677:
mfhi $3
sll $0, $0, 0
lui $4, 3
sra $1, $4, 8
TAG678:
sll $0, $0, 0
andi $2, $1, 0
bltz $1, TAG679
lui $3, 13
TAG679:
sll $0, $0, 0
subu $2, $3, $3
mflo $4
sll $0, $0, 0
TAG680:
srlv $4, $1, $1
bgez $4, TAG681
sh $1, -768($1)
xori $1, $1, 9
TAG681:
mfhi $1
bne $1, $1, TAG682
mfhi $3
sh $1, 0($1)
TAG682:
multu $3, $3
mfhi $2
sh $2, 0($2)
addu $1, $3, $2
TAG683:
mtlo $1
mult $1, $1
lhu $4, 0($1)
bne $1, $4, TAG684
TAG684:
mult $4, $4
bne $4, $4, TAG685
lw $4, 0($4)
mult $4, $4
TAG685:
sllv $3, $4, $4
sltu $4, $4, $3
multu $4, $4
mtlo $4
TAG686:
lh $3, 0($4)
sb $3, 0($4)
lh $3, 0($4)
bgez $3, TAG687
TAG687:
xor $3, $3, $3
multu $3, $3
sllv $4, $3, $3
nor $1, $3, $3
TAG688:
mtlo $1
mtlo $1
bne $1, $1, TAG689
sh $1, 1($1)
TAG689:
nor $1, $1, $1
lbu $1, 0($1)
bgez $1, TAG690
lui $3, 8
TAG690:
sll $0, $0, 0
bltz $1, TAG691
div $3, $1
divu $3, $1
TAG691:
or $2, $1, $1
blez $2, TAG692
lbu $2, -255($1)
lui $4, 6
TAG692:
subu $1, $4, $4
mtlo $4
sll $0, $0, 0
mfhi $4
TAG693:
lhu $1, 0($4)
bne $4, $4, TAG694
mflo $3
bne $4, $4, TAG694
TAG694:
mflo $2
bne $2, $3, TAG695
slt $2, $3, $2
lui $1, 4
TAG695:
srav $2, $1, $1
andi $1, $1, 1
mfhi $3
slti $1, $1, 8
TAG696:
sb $1, 0($1)
sb $1, 0($1)
andi $2, $1, 9
bne $1, $2, TAG697
TAG697:
lb $2, 0($2)
lui $1, 8
sb $2, 0($2)
beq $2, $2, TAG698
TAG698:
mfhi $1
addiu $4, $1, 2
mflo $1
sll $0, $0, 0
TAG699:
lui $4, 7
lui $1, 12
bgez $4, TAG700
sll $0, $0, 0
TAG700:
lui $3, 11
bgez $2, TAG701
lui $2, 9
sb $2, 0($2)
TAG701:
mflo $3
addu $4, $2, $2
sll $0, $0, 0
bltz $4, TAG702
TAG702:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
srav $2, $4, $4
TAG703:
srl $4, $2, 5
addiu $1, $4, 4
divu $4, $1
mfhi $2
TAG704:
bgtz $2, TAG705
mtlo $2
sh $2, 0($2)
bltz $2, TAG705
TAG705:
srav $2, $2, $2
lui $4, 6
lui $4, 0
mthi $4
TAG706:
mthi $4
sh $4, 0($4)
multu $4, $4
blez $4, TAG707
TAG707:
mtlo $4
sb $4, 0($4)
lhu $2, 0($4)
sb $4, 0($2)
TAG708:
sh $2, 0($2)
lui $4, 15
slti $1, $2, 5
mthi $1
TAG709:
mfhi $4
beq $4, $4, TAG710
multu $4, $4
sb $4, 0($4)
TAG710:
bne $4, $4, TAG711
mfhi $3
andi $1, $4, 9
bltz $1, TAG711
TAG711:
sltu $2, $1, $1
bgez $1, TAG712
multu $1, $1
lbu $1, 0($1)
TAG712:
srlv $4, $1, $1
sra $3, $4, 13
bne $1, $4, TAG713
sra $4, $4, 11
TAG713:
sh $4, 0($4)
bltz $4, TAG714
srav $4, $4, $4
mfhi $1
TAG714:
bne $1, $1, TAG715
lui $2, 0
mtlo $1
lh $2, 0($2)
TAG715:
mfhi $2
lui $3, 7
mult $3, $3
lw $3, 0($2)
TAG716:
sw $3, 0($3)
addu $2, $3, $3
blez $3, TAG717
and $4, $3, $2
TAG717:
lb $4, 0($4)
mfhi $3
divu $4, $3
lui $1, 0
TAG718:
mflo $4
lbu $3, 0($1)
lh $4, 0($1)
beq $1, $4, TAG719
TAG719:
mfhi $1
and $3, $1, $4
bltz $4, TAG720
andi $2, $4, 3
TAG720:
multu $2, $2
mthi $2
multu $2, $2
bgez $2, TAG721
TAG721:
lui $3, 8
lui $3, 4
mtlo $3
bgez $3, TAG722
TAG722:
lui $2, 0
slti $3, $2, 2
mfhi $2
sll $2, $2, 1
TAG723:
beq $2, $2, TAG724
sh $2, 0($2)
div $2, $2
lui $1, 10
TAG724:
slti $3, $1, 13
mflo $1
bne $1, $3, TAG725
lui $3, 11
TAG725:
mult $3, $3
sll $0, $0, 0
mult $1, $1
bgez $1, TAG726
TAG726:
mtlo $1
addiu $3, $1, 5
lui $3, 5
bne $3, $1, TAG727
TAG727:
sll $0, $0, 0
srlv $4, $3, $3
xori $1, $4, 11
beq $1, $1, TAG728
TAG728:
sll $0, $0, 0
subu $4, $1, $1
ori $2, $1, 11
mfhi $1
TAG729:
slti $2, $1, 2
mflo $3
divu $1, $3
mtlo $3
TAG730:
mfhi $3
or $2, $3, $3
mult $3, $3
addu $4, $2, $2
TAG731:
divu $4, $4
divu $4, $4
mflo $3
mthi $4
TAG732:
bltz $3, TAG733
lui $1, 2
mflo $3
sllv $3, $1, $3
TAG733:
sll $0, $0, 0
mult $3, $3
mfhi $1
lui $3, 0
TAG734:
mfhi $1
lw $2, 0($3)
mult $2, $3
addu $1, $3, $1
TAG735:
mult $1, $1
div $1, $1
sh $1, 0($1)
subu $4, $1, $1
TAG736:
lb $3, 0($4)
sllv $1, $3, $4
mflo $3
lui $1, 9
TAG737:
mflo $3
addiu $1, $1, 0
bgez $1, TAG738
sll $0, $0, 0
TAG738:
mthi $3
mtlo $3
sb $3, 0($3)
blez $3, TAG739
TAG739:
mult $3, $3
sb $3, 0($3)
mtlo $3
sb $3, 0($3)
TAG740:
lui $1, 1
sb $3, 0($3)
sll $0, $0, 0
multu $3, $2
TAG741:
xori $4, $2, 9
lb $2, 0($4)
mfhi $4
mfhi $1
TAG742:
addi $4, $1, 6
lb $4, 0($1)
lui $1, 4
beq $4, $4, TAG743
TAG743:
mult $1, $1
srlv $1, $1, $1
beq $1, $1, TAG744
mtlo $1
TAG744:
lui $1, 2
bltz $1, TAG745
multu $1, $1
lui $1, 10
TAG745:
sll $0, $0, 0
subu $3, $1, $1
multu $1, $3
ori $3, $3, 4
TAG746:
xor $2, $3, $3
mult $2, $3
mfhi $4
mult $2, $4
TAG747:
bltz $4, TAG748
sh $4, 0($4)
nor $3, $4, $4
mthi $3
TAG748:
mflo $2
mthi $2
lb $1, 0($2)
beq $3, $3, TAG749
TAG749:
mtlo $1
bltz $1, TAG750
nor $2, $1, $1
lhu $4, 0($1)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop