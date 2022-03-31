ori $1, $0, 7
ori $2, $0, 2
ori $3, $0, 2
ori $4, $0, 3
sw $4, 0($0)
sw $3, 4($0)
sw $2, 8($0)
sw $1, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $3, 48($0)
sw $4, 52($0)
sw $4, 56($0)
sw $2, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $4, 84($0)
sw $1, 88($0)
sw $4, 92($0)
sw $3, 96($0)
sw $3, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $3, 112($0)
sw $2, 116($0)
sw $3, 120($0)
sw $4, 124($0)
blez $2, TAG1
lh $2, 0($2)
bltz $2, TAG1
multu $2, $2
TAG1:
lhu $1, 0($2)
mtlo $2
mfhi $1
mfhi $4
TAG2:
mflo $3
beq $4, $4, TAG3
sb $4, 0($3)
lh $3, 0($3)
TAG3:
mthi $3
slti $3, $3, 5
mtlo $3
mtlo $3
TAG4:
lb $4, 0($3)
sb $3, 0($3)
mthi $3
mfhi $2
TAG5:
xori $3, $2, 0
blez $2, TAG6
ori $1, $2, 2
bgtz $1, TAG6
TAG6:
sb $1, 0($1)
mtlo $1
lb $3, 0($1)
srlv $1, $3, $1
TAG7:
bne $1, $1, TAG8
sw $1, 0($1)
sw $1, 0($1)
sw $1, 0($1)
TAG8:
mflo $3
srl $3, $3, 14
mthi $3
mflo $1
TAG9:
mtlo $1
mfhi $1
bne $1, $1, TAG10
mult $1, $1
TAG10:
mfhi $1
multu $1, $1
nor $4, $1, $1
mthi $1
TAG11:
divu $4, $4
lw $4, 1($4)
mflo $3
mthi $3
TAG12:
sltu $4, $3, $3
mfhi $1
bgez $3, TAG13
subu $1, $1, $4
TAG13:
mflo $3
beq $3, $3, TAG14
mflo $3
mult $1, $3
TAG14:
lbu $2, 0($3)
sra $4, $2, 7
multu $2, $4
multu $3, $4
TAG15:
lh $2, 0($4)
bltz $2, TAG16
lh $1, 0($4)
multu $2, $2
TAG16:
nor $1, $1, $1
sh $1, 1($1)
lw $2, 1($1)
subu $3, $2, $1
TAG17:
bltz $3, TAG18
multu $3, $3
lui $4, 0
bgez $4, TAG18
TAG18:
sub $1, $4, $4
mthi $1
sh $1, 0($1)
sb $4, 0($4)
TAG19:
mult $1, $1
bne $1, $1, TAG20
mthi $1
bne $1, $1, TAG20
TAG20:
mflo $1
mfhi $2
lw $4, 0($2)
nor $3, $1, $4
TAG21:
bne $3, $3, TAG22
mfhi $3
sw $3, 0($3)
mtlo $3
TAG22:
lui $4, 7
sll $0, $0, 0
bgtz $4, TAG23
mthi $3
TAG23:
mflo $4
mflo $3
bgtz $4, TAG24
sh $3, 0($3)
TAG24:
srl $4, $3, 10
lbu $2, 0($3)
lui $3, 14
bgez $3, TAG25
TAG25:
multu $3, $3
lui $4, 11
blez $3, TAG26
sll $0, $0, 0
TAG26:
bne $4, $4, TAG27
sll $0, $0, 0
blez $2, TAG27
mult $2, $2
TAG27:
mult $2, $2
mtlo $2
lui $4, 3
addu $3, $2, $4
TAG28:
lui $3, 12
mthi $3
divu $3, $3
beq $3, $3, TAG29
TAG29:
subu $1, $3, $3
mtlo $3
mult $1, $1
lui $4, 2
TAG30:
mflo $2
andi $4, $4, 1
sub $2, $4, $4
lui $2, 9
TAG31:
mult $2, $2
mflo $2
bne $2, $2, TAG32
sll $2, $2, 13
TAG32:
srav $4, $2, $2
mflo $3
sh $2, 0($3)
add $4, $3, $4
TAG33:
mthi $4
sh $4, 0($4)
mult $4, $4
bne $4, $4, TAG34
TAG34:
sra $4, $4, 8
slti $3, $4, 5
mthi $3
addiu $4, $4, 8
TAG35:
mthi $4
bne $4, $4, TAG36
xori $4, $4, 8
lh $2, 0($4)
TAG36:
mthi $2
andi $1, $2, 3
sllv $4, $1, $1
bltz $1, TAG37
TAG37:
or $1, $4, $4
multu $4, $4
lbu $2, 0($4)
lw $4, 0($2)
TAG38:
lui $4, 4
beq $4, $4, TAG39
sll $0, $0, 0
mflo $2
TAG39:
andi $3, $2, 10
sllv $4, $2, $3
mthi $2
multu $2, $2
TAG40:
lui $3, 8
bltz $4, TAG41
mtlo $3
sltu $2, $4, $3
TAG41:
beq $2, $2, TAG42
div $2, $2
sltu $4, $2, $2
beq $2, $2, TAG42
TAG42:
lbu $4, 0($4)
lh $3, 0($4)
lui $1, 8
bne $1, $1, TAG43
TAG43:
mfhi $3
lui $1, 14
mflo $2
mfhi $1
TAG44:
mtlo $1
sb $1, 0($1)
lui $4, 9
mthi $1
TAG45:
bgez $4, TAG46
srav $4, $4, $4
mtlo $4
bltz $4, TAG46
TAG46:
lui $1, 14
srlv $4, $1, $4
bltz $4, TAG47
srlv $1, $4, $1
TAG47:
bne $1, $1, TAG48
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG48:
sltiu $4, $3, 1
beq $3, $4, TAG49
slt $4, $3, $3
sllv $2, $4, $4
TAG49:
sb $2, 0($2)
sw $2, 0($2)
mfhi $2
lui $2, 12
TAG50:
xori $1, $2, 11
mflo $4
multu $4, $1
bgez $4, TAG51
TAG51:
lui $2, 13
mflo $4
subu $4, $4, $4
mthi $4
TAG52:
mfhi $3
mflo $3
mthi $3
multu $4, $3
TAG53:
beq $3, $3, TAG54
andi $1, $3, 12
sw $1, 0($3)
bne $1, $3, TAG54
TAG54:
mfhi $2
div $2, $1
sb $2, 0($1)
blez $2, TAG55
TAG55:
addu $3, $2, $2
multu $3, $3
mflo $2
lui $2, 2
TAG56:
lui $2, 0
beq $2, $2, TAG57
slt $4, $2, $2
mfhi $2
TAG57:
sra $1, $2, 9
lui $3, 13
sh $3, 0($1)
lui $1, 5
TAG58:
sll $3, $1, 3
sll $0, $0, 0
sll $4, $3, 9
bne $3, $1, TAG59
TAG59:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG60
TAG60:
lui $3, 15
blez $3, TAG61
ori $1, $2, 15
mthi $3
TAG61:
sb $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG62
lui $4, 5
TAG62:
bgtz $4, TAG63
mult $4, $4
sh $4, 0($4)
divu $4, $4
TAG63:
blez $4, TAG64
sll $0, $0, 0
and $2, $4, $4
sltu $4, $2, $4
TAG64:
mtlo $4
lui $3, 13
divu $3, $3
lui $3, 11
TAG65:
lui $4, 11
or $4, $3, $3
mthi $3
sll $0, $0, 0
TAG66:
bgez $4, TAG67
mflo $2
sb $2, 0($2)
sh $4, 0($2)
TAG67:
subu $3, $2, $2
lui $3, 3
mtlo $3
mflo $3
TAG68:
mflo $3
mtlo $3
andi $1, $3, 14
lh $4, 0($1)
TAG69:
sw $4, 0($4)
beq $4, $4, TAG70
sll $4, $4, 11
lui $2, 7
TAG70:
bltz $2, TAG71
mult $2, $2
mthi $2
beq $2, $2, TAG71
TAG71:
mthi $2
mflo $3
lui $1, 6
multu $3, $1
TAG72:
sll $0, $0, 0
bne $1, $1, TAG73
lui $3, 9
bgez $1, TAG73
TAG73:
srl $1, $3, 10
sh $1, -576($1)
addiu $4, $3, 0
multu $3, $4
TAG74:
mflo $4
bltz $4, TAG75
mfhi $1
sb $1, 0($1)
TAG75:
mfhi $1
bgez $1, TAG76
multu $1, $1
divu $1, $1
TAG76:
mfhi $3
beq $1, $3, TAG77
xor $2, $1, $3
lb $4, 0($1)
TAG77:
mfhi $4
sw $4, 0($4)
bltz $4, TAG78
mtlo $4
TAG78:
lui $3, 13
beq $3, $4, TAG79
sll $0, $0, 0
srav $2, $4, $3
TAG79:
mthi $2
nor $4, $2, $2
mthi $4
mfhi $1
TAG80:
divu $1, $1
beq $1, $1, TAG81
slt $1, $1, $1
mflo $3
TAG81:
divu $3, $3
lui $2, 0
bltz $3, TAG82
subu $4, $2, $3
TAG82:
or $4, $4, $4
mtlo $4
mfhi $4
lb $2, 0($4)
TAG83:
mtlo $2
xori $1, $2, 8
lui $4, 13
mflo $4
TAG84:
multu $4, $4
mult $4, $4
lb $3, 0($4)
mult $3, $4
TAG85:
sh $3, 0($3)
mult $3, $3
bne $3, $3, TAG86
sh $3, 0($3)
TAG86:
mflo $3
or $1, $3, $3
sra $1, $3, 4
mult $1, $1
TAG87:
mthi $1
lw $1, 0($1)
mult $1, $1
sb $1, 0($1)
TAG88:
mthi $1
sh $1, 0($1)
mflo $3
mflo $4
TAG89:
addiu $3, $4, 11
ori $1, $4, 1
sh $4, 0($4)
bgtz $3, TAG90
TAG90:
mfhi $1
mthi $1
sltiu $3, $1, 5
subu $4, $3, $3
TAG91:
multu $4, $4
multu $4, $4
lb $3, 0($4)
lui $1, 6
TAG92:
mthi $1
xori $3, $1, 3
sltu $4, $3, $3
mtlo $1
TAG93:
sb $4, 0($4)
ori $1, $4, 15
mfhi $1
lui $1, 2
TAG94:
beq $1, $1, TAG95
mult $1, $1
srav $1, $1, $1
sra $4, $1, 9
TAG95:
mflo $3
mflo $3
beq $3, $3, TAG96
multu $3, $3
TAG96:
beq $3, $3, TAG97
mfhi $3
sub $2, $3, $3
bne $3, $3, TAG97
TAG97:
lui $2, 8
addiu $1, $2, 9
mtlo $2
mthi $2
TAG98:
sllv $2, $1, $1
multu $2, $1
subu $3, $2, $1
bgez $2, TAG99
TAG99:
mtlo $3
srl $2, $3, 3
bgtz $2, TAG100
sll $0, $0, 0
TAG100:
divu $3, $3
lui $1, 11
and $2, $1, $1
mfhi $1
TAG101:
beq $1, $1, TAG102
lbu $4, 0($1)
mthi $1
mfhi $3
TAG102:
mflo $1
sll $0, $0, 0
lb $1, 0($4)
sh $1, 0($1)
TAG103:
sll $1, $1, 12
mthi $1
sw $1, 0($1)
xori $2, $1, 8
TAG104:
ori $3, $2, 5
sb $3, 0($3)
mtlo $3
lui $3, 13
TAG105:
subu $1, $3, $3
blez $3, TAG106
mthi $3
bgtz $1, TAG106
TAG106:
subu $3, $1, $1
lui $1, 14
lui $3, 11
lui $4, 8
TAG107:
mfhi $2
bne $2, $2, TAG108
slti $3, $4, 6
mthi $2
TAG108:
bne $3, $3, TAG109
addi $2, $3, 2
mthi $3
multu $3, $2
TAG109:
slti $1, $2, 2
bne $2, $1, TAG110
lw $4, 0($1)
xor $3, $4, $1
TAG110:
mthi $3
sb $3, 0($3)
lhu $3, 0($3)
blez $3, TAG111
TAG111:
srlv $3, $3, $3
andi $2, $3, 2
slti $4, $2, 3
sb $4, 0($3)
TAG112:
mtlo $4
srl $3, $4, 3
beq $3, $3, TAG113
mtlo $3
TAG113:
sw $3, 0($3)
lui $4, 13
bltz $3, TAG114
addiu $3, $3, 1
TAG114:
lui $4, 11
sll $0, $0, 0
lui $1, 8
mtlo $3
TAG115:
bltz $1, TAG116
sll $0, $0, 0
nor $4, $1, $1
and $1, $1, $1
TAG116:
mflo $1
sb $1, 0($1)
lb $4, 0($1)
blez $1, TAG117
TAG117:
slti $4, $4, 13
lb $4, 0($4)
ori $4, $4, 6
bltz $4, TAG118
TAG118:
sltiu $2, $4, 9
mflo $2
mflo $1
div $4, $2
TAG119:
beq $1, $1, TAG120
sb $1, 0($1)
sb $1, 0($1)
lhu $3, 0($1)
TAG120:
beq $3, $3, TAG121
mflo $4
multu $3, $3
mtlo $4
TAG121:
bgez $4, TAG122
mtlo $4
srl $2, $4, 5
mflo $4
TAG122:
mtlo $4
mthi $4
sb $4, 0($4)
bgez $4, TAG123
TAG123:
mtlo $4
mtlo $4
lui $4, 11
lui $3, 13
TAG124:
mult $3, $3
lui $3, 13
sll $0, $0, 0
sll $0, $0, 0
TAG125:
bltz $2, TAG126
lbu $1, 0($2)
mthi $2
lbu $2, 0($2)
TAG126:
addu $1, $2, $2
sh $2, 0($1)
srl $3, $1, 0
sh $3, 0($3)
TAG127:
divu $3, $3
mthi $3
srlv $1, $3, $3
addu $2, $3, $1
TAG128:
srlv $3, $2, $2
bgez $3, TAG129
mfhi $3
div $3, $3
TAG129:
mult $3, $3
bgtz $3, TAG130
mflo $2
mtlo $2
TAG130:
mthi $2
or $2, $2, $2
blez $2, TAG131
mfhi $2
TAG131:
blez $2, TAG132
nor $4, $2, $2
lh $3, 5($4)
mflo $1
TAG132:
sw $1, 0($1)
lui $2, 10
mflo $2
sw $2, 0($2)
TAG133:
addu $1, $2, $2
lui $2, 11
divu $2, $1
andi $3, $2, 6
TAG134:
bne $3, $3, TAG135
mtlo $3
lui $4, 11
beq $4, $4, TAG135
TAG135:
lui $1, 0
mtlo $4
sll $0, $0, 0
ori $4, $4, 11
TAG136:
mult $4, $4
mtlo $4
divu $4, $4
lui $4, 2
TAG137:
andi $4, $4, 8
mthi $4
blez $4, TAG138
subu $2, $4, $4
TAG138:
mthi $2
sw $2, 0($2)
lui $2, 12
sll $0, $0, 0
TAG139:
sltiu $1, $2, 12
mflo $4
sll $0, $0, 0
mtlo $2
TAG140:
bltz $2, TAG141
lui $2, 7
addu $1, $2, $2
ori $2, $1, 13
TAG141:
mthi $2
bne $2, $2, TAG142
lui $4, 1
addiu $4, $2, 13
TAG142:
mflo $1
sll $0, $0, 0
lui $4, 11
sra $2, $4, 10
TAG143:
beq $2, $2, TAG144
lui $1, 11
multu $1, $2
lui $2, 15
TAG144:
divu $2, $2
sw $2, -704($2)
lw $2, -704($2)
sltu $2, $2, $2
TAG145:
ori $1, $2, 5
mult $2, $2
lbu $3, 0($1)
beq $2, $1, TAG146
TAG146:
mfhi $4
sub $4, $4, $3
lui $1, 12
lbu $4, 0($3)
TAG147:
blez $4, TAG148
lui $3, 11
mflo $1
lui $2, 2
TAG148:
slt $2, $2, $2
bgez $2, TAG149
sltiu $3, $2, 8
sra $3, $2, 14
TAG149:
addiu $3, $3, 12
lb $3, 0($3)
mtlo $3
addu $2, $3, $3
TAG150:
mfhi $2
blez $2, TAG151
andi $2, $2, 9
lui $2, 7
TAG151:
srl $4, $2, 9
mtlo $4
bne $2, $4, TAG152
mflo $4
TAG152:
lui $1, 13
lh $1, 0($4)
mtlo $1
addu $2, $4, $1
TAG153:
lui $3, 10
multu $2, $2
beq $3, $3, TAG154
sb $3, -704($2)
TAG154:
sll $0, $0, 0
mfhi $2
lb $3, -704($1)
mflo $2
TAG155:
bgez $2, TAG156
mflo $4
mflo $3
mtlo $4
TAG156:
bgez $3, TAG157
multu $3, $3
multu $3, $3
srlv $2, $3, $3
TAG157:
sll $2, $2, 5
nor $4, $2, $2
blez $2, TAG158
sll $0, $0, 0
TAG158:
bne $4, $4, TAG159
lui $3, 4
nor $4, $3, $3
beq $4, $3, TAG159
TAG159:
addiu $2, $4, 1
mthi $2
subu $2, $2, $4
slti $2, $4, 4
TAG160:
lbu $3, 0($2)
sb $3, 0($2)
lbu $4, 0($2)
lui $4, 6
TAG161:
sll $0, $0, 0
sll $0, $0, 0
div $4, $3
lhu $1, -704($1)
TAG162:
sra $3, $1, 10
and $1, $3, $3
lui $1, 11
sra $1, $1, 2
TAG163:
bne $1, $1, TAG164
sll $0, $0, 0
srlv $1, $1, $1
sll $0, $0, 0
TAG164:
srlv $4, $2, $2
srl $3, $4, 7
andi $2, $4, 11
lui $2, 13
TAG165:
bgtz $2, TAG166
mflo $2
sb $2, 0($2)
blez $2, TAG166
TAG166:
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
multu $1, $2
TAG167:
divu $1, $1
bgtz $1, TAG168
mthi $1
beq $1, $1, TAG168
TAG168:
lui $1, 1
bne $1, $1, TAG169
sll $0, $0, 0
beq $1, $1, TAG169
TAG169:
mflo $1
sll $0, $0, 0
div $2, $2
mtlo $2
TAG170:
bne $1, $1, TAG171
lbu $1, 0($1)
lui $1, 13
mthi $1
TAG171:
mthi $1
mflo $3
lui $2, 13
mflo $3
TAG172:
addu $2, $3, $3
sll $0, $0, 0
bltz $2, TAG173
divu $3, $2
TAG173:
sll $0, $0, 0
mult $2, $2
mthi $2
blez $2, TAG174
TAG174:
subu $2, $2, $2
mflo $4
mult $4, $2
sllv $4, $2, $2
TAG175:
sltiu $2, $4, 13
bne $2, $2, TAG176
mflo $3
slti $2, $3, 11
TAG176:
mtlo $2
lui $1, 8
sb $1, 0($2)
mtlo $2
TAG177:
blez $1, TAG178
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG178:
lhu $4, 0($3)
mfhi $1
bgez $3, TAG179
mthi $1
TAG179:
mfhi $4
multu $1, $1
sltiu $3, $4, 15
mfhi $3
TAG180:
lui $3, 2
blez $3, TAG181
addu $1, $3, $3
sll $0, $0, 0
TAG181:
bltz $2, TAG182
mflo $2
sh $2, 0($2)
mflo $4
TAG182:
bne $4, $4, TAG183
lui $4, 11
lui $1, 12
sll $0, $0, 0
TAG183:
sll $0, $0, 0
subu $2, $4, $4
bgtz $4, TAG184
sra $3, $4, 1
TAG184:
addu $3, $3, $3
bgtz $3, TAG185
lui $2, 2
divu $3, $2
TAG185:
beq $2, $2, TAG186
sll $0, $0, 0
mthi $2
bltz $2, TAG186
TAG186:
ori $4, $2, 8
sll $0, $0, 0
bgtz $2, TAG187
srlv $3, $4, $2
TAG187:
sll $0, $0, 0
bne $4, $3, TAG188
mtlo $4
multu $3, $3
TAG188:
lui $3, 14
divu $4, $3
xori $4, $4, 0
sll $0, $0, 0
TAG189:
beq $4, $4, TAG190
mflo $4
subu $4, $4, $4
bgez $4, TAG190
TAG190:
sh $4, 0($4)
addiu $1, $4, 9
lui $3, 0
sh $4, 0($4)
TAG191:
lh $2, 0($3)
lw $2, 0($2)
mult $3, $2
mtlo $3
TAG192:
lui $2, 3
mfhi $3
beq $3, $2, TAG193
mult $3, $2
TAG193:
lui $4, 0
subu $2, $3, $3
sub $3, $2, $4
beq $3, $4, TAG194
TAG194:
mthi $3
mflo $2
sb $3, 0($3)
sltu $4, $3, $2
TAG195:
bltz $4, TAG196
or $2, $4, $4
mtlo $4
lh $3, 0($4)
TAG196:
lui $4, 0
bltz $4, TAG197
mtlo $4
lbu $1, 0($4)
TAG197:
bne $1, $1, TAG198
sh $1, 0($1)
blez $1, TAG198
sb $1, 0($1)
TAG198:
mflo $3
add $4, $3, $1
lw $2, 0($1)
bne $3, $1, TAG199
TAG199:
mflo $1
lhu $1, 0($2)
bne $1, $1, TAG200
mtlo $1
TAG200:
sll $2, $1, 7
mult $2, $1
sub $2, $1, $1
bgtz $2, TAG201
TAG201:
multu $2, $2
lh $2, 0($2)
sb $2, 0($2)
sh $2, 0($2)
TAG202:
sh $2, 0($2)
mthi $2
sb $2, 0($2)
bne $2, $2, TAG203
TAG203:
mfhi $4
sltu $1, $2, $2
multu $4, $1
lui $3, 13
TAG204:
lui $3, 12
mflo $4
sb $3, 0($4)
lui $4, 12
TAG205:
beq $4, $4, TAG206
mflo $4
multu $4, $4
lui $1, 6
TAG206:
multu $1, $1
sltu $4, $1, $1
mtlo $1
lhu $3, 0($4)
TAG207:
lw $1, 0($3)
mfhi $4
mfhi $3
andi $4, $1, 3
TAG208:
mflo $2
sra $4, $4, 13
lui $3, 5
blez $4, TAG209
TAG209:
sll $0, $0, 0
lui $4, 1
lui $4, 2
lui $4, 6
TAG210:
nor $1, $4, $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG211:
mtlo $4
beq $4, $4, TAG212
sra $2, $4, 5
mfhi $4
TAG212:
blez $4, TAG213
sll $0, $0, 0
mtlo $4
slt $3, $4, $4
TAG213:
bgtz $3, TAG214
mfhi $3
sltiu $2, $3, 4
blez $2, TAG214
TAG214:
sra $3, $2, 9
multu $3, $3
lb $4, 0($2)
andi $3, $3, 2
TAG215:
mult $3, $3
bne $3, $3, TAG216
mthi $3
lui $3, 1
TAG216:
lui $2, 8
mtlo $3
addu $4, $3, $3
bgtz $2, TAG217
TAG217:
sllv $4, $4, $4
slt $4, $4, $4
mthi $4
slti $4, $4, 1
TAG218:
addu $1, $4, $4
lbu $3, 0($1)
mult $1, $1
lbu $4, 0($4)
TAG219:
bne $4, $4, TAG220
addi $3, $4, 11
bgtz $4, TAG220
slti $2, $4, 7
TAG220:
lui $1, 12
xori $2, $1, 0
sll $0, $0, 0
blez $2, TAG221
TAG221:
mflo $4
mult $4, $4
multu $4, $4
sll $0, $0, 0
TAG222:
divu $4, $4
divu $4, $4
sb $4, 0($4)
lui $4, 15
TAG223:
sll $0, $0, 0
mtlo $4
mthi $4
sll $0, $0, 0
TAG224:
sll $0, $0, 0
sll $4, $4, 5
beq $4, $4, TAG225
sll $0, $0, 0
TAG225:
divu $4, $4
addiu $4, $4, 5
sll $0, $0, 0
sll $0, $0, 0
TAG226:
xori $3, $3, 8
lb $4, 0($3)
lui $3, 10
lui $2, 0
TAG227:
mthi $2
lui $1, 5
sh $2, 0($2)
mthi $2
TAG228:
srlv $3, $1, $1
bgez $1, TAG229
ori $3, $1, 7
slti $3, $1, 13
TAG229:
lui $4, 10
bltz $3, TAG230
addu $3, $4, $4
srl $1, $4, 5
TAG230:
mtlo $1
lbu $1, -20480($1)
xori $2, $1, 15
srl $3, $2, 11
TAG231:
sw $3, 0($3)
lb $4, 0($3)
or $1, $3, $4
mtlo $3
TAG232:
mflo $4
mfhi $1
bne $1, $1, TAG233
multu $4, $1
TAG233:
lw $2, 0($1)
srl $3, $1, 8
beq $1, $1, TAG234
sltiu $4, $3, 13
TAG234:
mflo $3
sra $4, $4, 9
multu $4, $4
bgez $4, TAG235
TAG235:
sh $4, 0($4)
multu $4, $4
mtlo $4
mfhi $3
TAG236:
beq $3, $3, TAG237
multu $3, $3
addu $4, $3, $3
lui $1, 0
TAG237:
lbu $1, 0($1)
sltiu $4, $1, 6
mflo $2
mult $1, $4
TAG238:
srav $4, $2, $2
beq $4, $4, TAG239
mtlo $4
slt $4, $2, $2
TAG239:
mtlo $4
multu $4, $4
sb $4, 0($4)
blez $4, TAG240
TAG240:
lh $1, 0($4)
bgtz $1, TAG241
sw $4, 0($4)
sra $3, $1, 4
TAG241:
mfhi $1
and $1, $3, $3
addiu $2, $3, 12
bgtz $1, TAG242
TAG242:
lw $4, 0($2)
lw $2, 0($2)
bne $2, $2, TAG243
sll $0, $0, 0
TAG243:
sb $3, 0($3)
mtlo $3
blez $3, TAG244
lb $2, 0($3)
TAG244:
lui $1, 9
xori $3, $2, 10
sh $3, 0($2)
slt $4, $2, $1
TAG245:
addu $4, $4, $4
lh $1, 0($4)
div $1, $4
addiu $3, $4, 10
TAG246:
lhu $1, 0($3)
mthi $3
lh $1, 0($3)
ori $4, $1, 5
TAG247:
slti $3, $4, 12
sh $3, -3335($4)
slt $3, $3, $4
and $4, $3, $3
TAG248:
sllv $1, $4, $4
divu $4, $4
mfhi $3
bgez $1, TAG249
TAG249:
multu $3, $3
lbu $3, 0($3)
sllv $3, $3, $3
add $1, $3, $3
TAG250:
bgtz $1, TAG251
sh $1, 0($1)
bne $1, $1, TAG251
sra $2, $1, 7
TAG251:
sltu $1, $2, $2
lw $3, 0($1)
lw $4, 0($2)
sll $2, $4, 14
TAG252:
beq $2, $2, TAG253
mthi $2
div $2, $2
divu $2, $2
TAG253:
srl $2, $2, 10
multu $2, $2
andi $1, $2, 4
xor $4, $1, $2
TAG254:
mtlo $4
beq $4, $4, TAG255
mflo $2
multu $4, $4
TAG255:
sltiu $1, $2, 12
beq $2, $2, TAG256
srl $4, $2, 14
lhu $4, 0($4)
TAG256:
sub $3, $4, $4
mtlo $4
bltz $4, TAG257
addiu $4, $4, 15
TAG257:
lui $1, 1
lui $3, 3
slt $2, $4, $4
sll $0, $0, 0
TAG258:
mtlo $1
bne $1, $1, TAG259
mult $1, $1
mflo $2
TAG259:
bne $2, $2, TAG260
mtlo $2
lb $2, 0($2)
mtlo $2
TAG260:
mflo $3
bne $3, $2, TAG261
lui $1, 11
lui $3, 5
TAG261:
mfhi $2
lui $3, 13
mtlo $3
bne $2, $2, TAG262
TAG262:
sll $2, $3, 0
srlv $1, $3, $2
lui $3, 8
mthi $3
TAG263:
multu $3, $3
mfhi $1
mfhi $4
mtlo $1
TAG264:
sll $2, $4, 1
bgez $2, TAG265
sb $2, 0($2)
div $2, $4
TAG265:
sh $2, 0($2)
multu $2, $2
mflo $3
beq $2, $3, TAG266
TAG266:
sb $3, -16384($3)
sb $3, -16384($3)
bltz $3, TAG267
multu $3, $3
TAG267:
sll $0, $0, 0
sra $1, $3, 3
mfhi $3
slti $4, $2, 0
TAG268:
lw $3, 0($4)
lb $1, 0($4)
bne $4, $1, TAG269
ori $2, $1, 5
TAG269:
addiu $4, $2, 13
divu $4, $2
multu $2, $2
blez $4, TAG270
TAG270:
sb $4, 0($4)
sb $4, 0($4)
bne $4, $4, TAG271
srav $2, $4, $4
TAG271:
sw $2, 0($2)
lui $1, 4
mflo $2
addu $4, $2, $1
TAG272:
lui $3, 12
sllv $3, $4, $4
or $2, $3, $3
div $4, $2
TAG273:
mfhi $3
beq $2, $3, TAG274
xor $2, $2, $2
sll $0, $0, 0
TAG274:
sb $2, 0($2)
bgtz $2, TAG275
sra $2, $2, 5
slt $2, $2, $2
TAG275:
beq $2, $2, TAG276
sltu $4, $2, $2
srav $2, $2, $2
xor $3, $2, $2
TAG276:
divu $3, $3
sll $0, $0, 0
beq $3, $3, TAG277
mthi $3
TAG277:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
slti $1, $3, 12
TAG278:
lw $1, 0($1)
bne $1, $1, TAG279
mfhi $1
slt $3, $1, $1
TAG279:
blez $3, TAG280
sltiu $3, $3, 9
lui $3, 6
sw $3, 0($3)
TAG280:
multu $3, $3
subu $1, $3, $3
sub $2, $1, $1
div $3, $3
TAG281:
lui $3, 2
lh $4, 0($2)
sra $1, $4, 13
mflo $4
TAG282:
lui $4, 3
bltz $4, TAG283
mthi $4
lui $1, 0
TAG283:
sh $1, 0($1)
lh $4, 0($1)
lui $4, 4
sll $0, $0, 0
TAG284:
mthi $4
mult $4, $4
mthi $4
bgtz $4, TAG285
TAG285:
sll $0, $0, 0
lui $2, 9
srlv $1, $4, $2
sll $0, $0, 0
TAG286:
mtlo $4
bne $4, $4, TAG287
sll $0, $0, 0
sll $0, $0, 0
TAG287:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG288
lui $2, 0
TAG288:
mthi $2
sra $2, $2, 2
slt $2, $2, $2
srlv $2, $2, $2
TAG289:
mthi $2
srl $2, $2, 2
xori $3, $2, 7
mult $3, $2
TAG290:
addiu $3, $3, 15
bltz $3, TAG291
lui $4, 2
sh $4, 0($3)
TAG291:
blez $4, TAG292
mtlo $4
bgtz $4, TAG292
sll $0, $0, 0
TAG292:
sll $0, $0, 0
ori $4, $1, 8
sll $0, $0, 0
sra $1, $1, 0
TAG293:
mfhi $2
sll $0, $0, 0
lui $1, 1
xori $2, $1, 0
TAG294:
div $2, $2
mflo $1
sll $0, $0, 0
addiu $1, $1, 12
TAG295:
bne $1, $1, TAG296
lb $1, 0($1)
lui $2, 2
slti $2, $2, 1
TAG296:
lui $4, 0
lhu $1, 0($2)
sltu $2, $2, $1
bgez $2, TAG297
TAG297:
xori $1, $2, 15
blez $1, TAG298
lui $1, 4
sll $0, $0, 0
TAG298:
multu $1, $1
bgtz $1, TAG299
mtlo $1
bne $1, $1, TAG299
TAG299:
div $1, $1
sll $0, $0, 0
slt $1, $1, $4
addiu $2, $4, 11
TAG300:
sb $2, 0($2)
mult $2, $2
blez $2, TAG301
mthi $2
TAG301:
sra $3, $2, 12
divu $3, $2
lhu $1, 0($3)
subu $4, $2, $2
TAG302:
mtlo $4
sra $3, $4, 8
lui $4, 0
mthi $3
TAG303:
multu $4, $4
multu $4, $4
bgtz $4, TAG304
mthi $4
TAG304:
sh $4, 0($4)
lb $4, 0($4)
xor $2, $4, $4
beq $4, $4, TAG305
TAG305:
lui $2, 10
mflo $3
mflo $2
sub $1, $3, $2
TAG306:
andi $4, $1, 8
mtlo $1
slt $2, $1, $4
addiu $2, $1, 5
TAG307:
mthi $2
andi $3, $2, 14
div $2, $3
beq $2, $3, TAG308
TAG308:
mflo $3
lui $3, 7
bne $3, $3, TAG309
mflo $1
TAG309:
mfhi $3
blez $3, TAG310
lui $4, 11
bgez $4, TAG310
TAG310:
mfhi $3
lb $3, 0($3)
mthi $4
mult $3, $3
TAG311:
bltz $3, TAG312
subu $4, $3, $3
multu $4, $4
lui $1, 11
TAG312:
bltz $1, TAG313
slt $2, $1, $1
mtlo $1
sll $0, $0, 0
TAG313:
bne $2, $2, TAG314
lui $2, 5
bne $2, $2, TAG314
mfhi $3
TAG314:
sh $3, 0($3)
bltz $3, TAG315
srlv $1, $3, $3
addiu $3, $3, 1
TAG315:
lbu $4, 0($3)
sb $3, 0($3)
lbu $3, 0($3)
mult $3, $3
TAG316:
sb $3, 0($3)
mtlo $3
sb $3, 0($3)
mthi $3
TAG317:
bne $3, $3, TAG318
srav $3, $3, $3
srl $3, $3, 11
bgtz $3, TAG318
TAG318:
ori $1, $3, 15
mtlo $1
ori $1, $1, 1
sltiu $1, $1, 2
TAG319:
addu $3, $1, $1
bltz $3, TAG320
mtlo $1
multu $1, $1
TAG320:
mflo $3
sltu $2, $3, $3
mthi $3
mfhi $1
TAG321:
mtlo $1
lui $2, 14
mthi $1
blez $2, TAG322
TAG322:
div $2, $2
sll $0, $0, 0
bne $2, $2, TAG323
xori $4, $2, 13
TAG323:
lui $3, 11
multu $4, $4
or $2, $3, $3
mtlo $2
TAG324:
lui $4, 1
sll $0, $0, 0
bne $4, $4, TAG325
mfhi $3
TAG325:
mfhi $2
srlv $2, $3, $2
bltz $2, TAG326
mflo $4
TAG326:
sll $0, $0, 0
bgtz $3, TAG327
sll $0, $0, 0
mflo $4
TAG327:
sll $0, $0, 0
lbu $2, -196($3)
nor $3, $4, $3
or $2, $4, $3
TAG328:
srav $3, $2, $2
mtlo $2
mfhi $4
sw $4, 197($2)
TAG329:
lui $2, 11
slt $2, $4, $4
lh $3, 0($2)
lui $4, 7
TAG330:
div $4, $4
sll $0, $0, 0
mthi $4
bltz $4, TAG331
TAG331:
sll $0, $0, 0
sll $0, $0, 0
xor $1, $4, $4
lui $1, 12
TAG332:
sll $0, $0, 0
multu $1, $1
xor $3, $1, $1
beq $3, $1, TAG333
TAG333:
sb $3, 0($3)
mthi $3
lbu $3, 0($3)
bne $3, $3, TAG334
TAG334:
mthi $3
addiu $1, $3, 1
mult $1, $3
sb $1, 0($1)
TAG335:
bgez $1, TAG336
lbu $1, 0($1)
mtlo $1
mflo $1
TAG336:
lui $3, 6
mtlo $1
mult $3, $1
lbu $2, 0($1)
TAG337:
bltz $2, TAG338
lui $2, 8
mfhi $4
lhu $2, 0($4)
TAG338:
bne $2, $2, TAG339
addu $1, $2, $2
mflo $1
mult $2, $1
TAG339:
bne $1, $1, TAG340
mflo $4
xori $1, $4, 11
blez $1, TAG340
TAG340:
mflo $3
bgtz $3, TAG341
divu $3, $3
lui $3, 2
TAG341:
subu $3, $3, $3
sh $3, 0($3)
mthi $3
mthi $3
TAG342:
blez $3, TAG343
sltiu $2, $3, 15
srl $2, $2, 15
mflo $4
TAG343:
beq $4, $4, TAG344
lui $4, 8
mthi $4
subu $1, $4, $4
TAG344:
div $1, $1
bgez $1, TAG345
sll $0, $0, 0
sw $1, 0($1)
TAG345:
sll $0, $0, 0
addu $3, $1, $1
sll $0, $0, 0
mtlo $1
TAG346:
blez $4, TAG347
subu $2, $4, $4
multu $4, $2
beq $2, $2, TAG347
TAG347:
sra $4, $2, 10
sw $2, 0($4)
mtlo $2
bne $2, $4, TAG348
TAG348:
mthi $4
bgtz $4, TAG349
sb $4, 0($4)
sllv $4, $4, $4
TAG349:
slti $3, $4, 6
mthi $3
mflo $1
bltz $4, TAG350
TAG350:
mthi $1
bltz $1, TAG351
lw $1, 0($1)
andi $4, $1, 0
TAG351:
mtlo $4
mult $4, $4
blez $4, TAG352
sltiu $2, $4, 0
TAG352:
lui $3, 0
ori $3, $2, 13
bne $3, $2, TAG353
lui $4, 10
TAG353:
multu $4, $4
mflo $1
mthi $1
divu $1, $4
TAG354:
multu $1, $1
srlv $2, $1, $1
addu $1, $1, $2
multu $1, $1
TAG355:
mult $1, $1
lui $3, 11
mult $3, $1
mflo $3
TAG356:
mfhi $1
mflo $4
mtlo $1
and $1, $4, $4
TAG357:
sub $3, $1, $1
bne $1, $3, TAG358
xor $3, $3, $3
bne $3, $3, TAG358
TAG358:
subu $3, $3, $3
srl $1, $3, 11
beq $3, $1, TAG359
lui $2, 8
TAG359:
blez $2, TAG360
lui $4, 0
andi $4, $4, 13
lw $4, 0($4)
TAG360:
mflo $1
sh $1, 0($1)
beq $4, $4, TAG361
mthi $1
TAG361:
sub $1, $1, $1
mtlo $1
bgez $1, TAG362
multu $1, $1
TAG362:
lui $2, 6
lh $1, 0($1)
lb $2, 0($1)
multu $2, $1
TAG363:
lui $3, 6
mtlo $3
bltz $3, TAG364
sltiu $2, $2, 7
TAG364:
addiu $4, $2, 12
lui $3, 14
mtlo $3
mfhi $3
TAG365:
sltu $3, $3, $3
mult $3, $3
bne $3, $3, TAG366
lui $2, 4
TAG366:
mult $2, $2
bne $2, $2, TAG367
lui $2, 0
mult $2, $2
TAG367:
lb $3, 0($2)
lbu $3, 0($3)
andi $4, $2, 4
bne $2, $4, TAG368
TAG368:
sra $2, $4, 4
bne $4, $2, TAG369
lhu $1, 0($2)
beq $1, $2, TAG369
TAG369:
lbu $4, 0($1)
beq $1, $1, TAG370
lui $2, 10
ori $4, $1, 15
TAG370:
mthi $4
addu $1, $4, $4
srl $4, $4, 0
mflo $3
TAG371:
mfhi $3
blez $3, TAG372
mthi $3
mult $3, $3
TAG372:
mfhi $1
beq $1, $1, TAG373
sub $1, $1, $1
nor $3, $3, $3
TAG373:
sb $3, 0($3)
srlv $1, $3, $3
bltz $1, TAG374
xori $4, $1, 6
TAG374:
divu $4, $4
mthi $4
sh $4, 0($4)
bltz $4, TAG375
TAG375:
lhu $2, 0($4)
mthi $4
lui $2, 5
sll $0, $0, 0
TAG376:
mfhi $4
mthi $2
mtlo $2
bgtz $4, TAG377
TAG377:
addu $4, $4, $4
bgez $4, TAG378
addiu $4, $4, 15
sb $4, 0($4)
TAG378:
multu $4, $4
lbu $2, 0($4)
beq $4, $4, TAG379
lui $4, 2
TAG379:
lui $3, 1
sllv $4, $4, $3
divu $4, $3
sll $0, $0, 0
TAG380:
sw $1, 0($1)
multu $1, $1
mtlo $1
bltz $1, TAG381
TAG381:
lw $4, 0($1)
lb $1, 0($4)
mtlo $1
bne $4, $4, TAG382
TAG382:
mtlo $1
lh $2, 0($1)
multu $1, $2
mflo $4
TAG383:
multu $4, $4
bne $4, $4, TAG384
add $3, $4, $4
sh $4, 0($3)
TAG384:
mfhi $2
mflo $4
srlv $1, $3, $4
lui $3, 11
TAG385:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
sll $0, $0, 0
TAG386:
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG387
sll $0, $0, 0
TAG387:
sh $1, 0($1)
bgez $1, TAG388
sb $1, 0($1)
bgtz $1, TAG388
TAG388:
sra $3, $1, 6
mtlo $3
mthi $1
mtlo $3
TAG389:
nor $1, $3, $3
addiu $1, $1, 6
lui $1, 12
lui $4, 15
TAG390:
mfhi $3
mult $4, $3
ori $3, $3, 7
mthi $3
TAG391:
nor $2, $3, $3
beq $2, $2, TAG392
xor $3, $2, $2
sb $3, 0($3)
TAG392:
blez $3, TAG393
ori $1, $3, 0
lbu $3, 0($1)
sb $3, 0($1)
TAG393:
beq $3, $3, TAG394
lb $3, 0($3)
bltz $3, TAG394
div $3, $3
TAG394:
beq $3, $3, TAG395
lui $1, 2
lui $2, 9
mflo $4
TAG395:
lui $3, 1
div $3, $4
or $3, $3, $3
lui $2, 15
TAG396:
bne $2, $2, TAG397
sll $0, $0, 0
lui $1, 8
lui $3, 11
TAG397:
addiu $1, $3, 15
mflo $2
sll $0, $0, 0
lui $1, 1
TAG398:
divu $1, $1
mtlo $1
mfhi $3
addiu $4, $1, 14
TAG399:
mtlo $4
bgtz $4, TAG400
mfhi $4
div $4, $4
TAG400:
slt $3, $4, $4
bne $3, $3, TAG401
mtlo $3
mflo $3
TAG401:
or $1, $3, $3
lui $4, 15
lui $2, 4
blez $3, TAG402
TAG402:
lui $3, 15
lui $1, 5
multu $2, $2
srlv $4, $3, $2
TAG403:
beq $4, $4, TAG404
div $4, $4
bgtz $4, TAG404
divu $4, $4
TAG404:
sll $0, $0, 0
addiu $1, $4, 3
addu $1, $4, $4
slti $3, $1, 11
TAG405:
bltz $3, TAG406
sllv $4, $3, $3
sw $3, 0($4)
lui $2, 0
TAG406:
mult $2, $2
mflo $1
sh $1, 0($2)
sb $2, 0($1)
TAG407:
lui $4, 13
bgtz $4, TAG408
sw $4, 0($1)
sltu $1, $4, $1
TAG408:
xor $1, $1, $1
mult $1, $1
lui $1, 4
bgez $1, TAG409
TAG409:
addiu $2, $1, 5
bltz $2, TAG410
div $2, $1
sll $0, $0, 0
TAG410:
sll $0, $0, 0
mfhi $3
beq $2, $2, TAG411
multu $3, $2
TAG411:
mthi $3
mfhi $3
multu $3, $3
addu $2, $3, $3
TAG412:
blez $2, TAG413
sb $2, 0($2)
andi $4, $2, 3
sh $2, 0($2)
TAG413:
slt $2, $4, $4
lb $3, 0($2)
sra $3, $4, 6
beq $2, $3, TAG414
TAG414:
lhu $3, 0($3)
lb $4, 0($3)
sh $3, 0($4)
lb $1, 0($3)
TAG415:
sh $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
mflo $2
TAG416:
bgez $2, TAG417
mfhi $4
bgez $4, TAG417
mfhi $2
TAG417:
lui $4, 0
mult $4, $4
lbu $3, 0($2)
lui $1, 14
TAG418:
bgtz $1, TAG419
lui $4, 13
xori $4, $4, 14
addu $2, $1, $4
TAG419:
div $2, $2
mflo $1
blez $2, TAG420
mfhi $4
TAG420:
lui $1, 2
lui $1, 13
bltz $4, TAG421
or $2, $1, $1
TAG421:
sltu $2, $2, $2
addiu $2, $2, 13
beq $2, $2, TAG422
lb $1, 0($2)
TAG422:
bne $1, $1, TAG423
sb $1, 0($1)
div $1, $1
blez $1, TAG423
TAG423:
ori $1, $1, 2
lui $1, 5
xori $3, $1, 4
blez $1, TAG424
TAG424:
mtlo $3
mfhi $3
mtlo $3
bgtz $3, TAG425
TAG425:
sub $4, $3, $3
mflo $2
lh $4, 0($3)
lhu $1, 0($2)
TAG426:
addiu $4, $1, 0
mthi $1
subu $2, $1, $4
multu $4, $1
TAG427:
mult $2, $2
mtlo $2
mthi $2
mtlo $2
TAG428:
addiu $3, $2, 1
lb $1, 0($3)
multu $2, $2
mtlo $1
TAG429:
lui $2, 6
addu $4, $2, $2
mult $2, $2
div $1, $4
TAG430:
nor $1, $4, $4
divu $1, $4
sltu $2, $1, $1
mthi $1
TAG431:
slt $4, $2, $2
lui $1, 1
bne $2, $4, TAG432
slt $3, $2, $2
TAG432:
mflo $2
srl $1, $2, 10
srlv $1, $1, $3
sb $1, 0($1)
TAG433:
lui $2, 2
sra $4, $1, 0
lui $3, 15
mtlo $1
TAG434:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
blez $3, TAG435
TAG435:
mthi $2
mfhi $4
mfhi $3
sll $0, $0, 0
TAG436:
nor $3, $3, $3
mtlo $3
lui $1, 3
sllv $3, $3, $3
TAG437:
sll $0, $0, 0
mfhi $3
bne $3, $3, TAG438
sra $1, $3, 1
TAG438:
sll $0, $0, 0
xori $4, $1, 11
beq $1, $4, TAG439
srlv $3, $4, $1
TAG439:
sll $0, $0, 0
ori $2, $3, 3
mthi $3
beq $3, $3, TAG440
TAG440:
lui $3, 2
sll $0, $0, 0
mthi $2
blez $2, TAG441
TAG441:
xor $2, $2, $2
sh $2, 0($2)
lbu $4, 0($2)
slt $1, $4, $2
TAG442:
bgez $1, TAG443
mfhi $2
bgez $1, TAG443
lhu $4, 0($1)
TAG443:
andi $3, $4, 8
mfhi $3
lui $1, 15
divu $3, $1
TAG444:
addiu $4, $1, 2
sll $4, $1, 3
andi $2, $4, 10
bltz $1, TAG445
TAG445:
addu $4, $2, $2
mtlo $4
lb $2, 0($2)
mfhi $2
TAG446:
srl $1, $2, 9
lui $3, 7
sltu $4, $1, $2
lbu $3, 0($4)
TAG447:
beq $3, $3, TAG448
lw $4, 0($3)
mult $3, $3
lui $3, 10
TAG448:
mflo $4
bne $4, $3, TAG449
mflo $3
mflo $1
TAG449:
sltiu $2, $1, 6
mflo $4
slti $2, $2, 11
sh $2, 0($1)
TAG450:
sra $4, $2, 9
sb $4, 0($2)
sh $4, 0($4)
lui $2, 5
TAG451:
beq $2, $2, TAG452
mtlo $2
srl $4, $2, 2
divu $4, $2
TAG452:
sra $3, $4, 7
lbu $4, 0($4)
mtlo $3
mfhi $4
TAG453:
bgtz $4, TAG454
sll $0, $0, 0
divu $4, $4
lui $4, 8
TAG454:
bne $4, $4, TAG455
mflo $1
mthi $1
beq $1, $1, TAG455
TAG455:
sw $1, 0($1)
sh $1, 0($1)
lbu $1, 0($1)
multu $1, $1
TAG456:
mtlo $1
mfhi $1
slti $1, $1, 10
multu $1, $1
TAG457:
divu $1, $1
lui $4, 5
sb $1, 0($1)
lui $4, 11
TAG458:
lui $1, 8
mthi $4
slt $1, $1, $1
bgtz $1, TAG459
TAG459:
mthi $1
mthi $1
lh $3, 0($1)
lui $4, 15
TAG460:
sll $0, $0, 0
lui $1, 14
bne $1, $4, TAG461
mfhi $2
TAG461:
sh $2, 0($2)
lhu $2, 0($2)
sltiu $3, $2, 8
slt $1, $2, $3
TAG462:
mtlo $1
lui $1, 6
lui $1, 13
mthi $1
TAG463:
mfhi $1
mflo $1
lbu $2, 0($1)
mfhi $4
TAG464:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG465:
lb $4, 0($1)
sh $1, 0($4)
lbu $4, 0($1)
lb $4, 0($1)
TAG466:
sll $3, $4, 14
mthi $4
bne $3, $4, TAG467
mult $3, $3
TAG467:
mflo $3
sllv $1, $3, $3
mtlo $1
mtlo $3
TAG468:
bgtz $1, TAG469
multu $1, $1
sw $1, 0($1)
addi $3, $1, 5
TAG469:
lb $3, 0($3)
subu $2, $3, $3
mult $3, $3
mtlo $3
TAG470:
sb $2, 0($2)
beq $2, $2, TAG471
sub $1, $2, $2
mfhi $1
TAG471:
beq $1, $1, TAG472
sb $1, 0($1)
sw $1, 0($1)
mfhi $3
TAG472:
beq $3, $3, TAG473
lui $2, 12
bne $3, $3, TAG473
mult $3, $2
TAG473:
sll $0, $0, 0
sltiu $1, $2, 12
andi $1, $1, 8
multu $1, $1
TAG474:
slt $2, $1, $1
lhu $4, 0($1)
mtlo $2
lbu $3, 0($4)
TAG475:
xori $3, $3, 3
mthi $3
multu $3, $3
lui $2, 12
TAG476:
and $2, $2, $2
bgtz $2, TAG477
mult $2, $2
lui $1, 3
TAG477:
sb $1, 0($1)
bltz $1, TAG478
sll $1, $1, 9
srlv $3, $1, $1
TAG478:
lb $3, 0($3)
subu $4, $3, $3
bne $4, $3, TAG479
mult $4, $4
TAG479:
lui $2, 9
andi $1, $2, 10
sw $4, 0($1)
bgtz $4, TAG480
TAG480:
addiu $1, $1, 13
mthi $1
addu $2, $1, $1
lui $3, 9
TAG481:
andi $2, $3, 10
mfhi $4
div $2, $3
srav $1, $4, $2
TAG482:
bgez $1, TAG483
div $1, $1
sb $1, 0($1)
beq $1, $1, TAG483
TAG483:
sb $1, 0($1)
beq $1, $1, TAG484
sb $1, 0($1)
addi $1, $1, 1
TAG484:
lbu $1, 0($1)
bne $1, $1, TAG485
subu $1, $1, $1
beq $1, $1, TAG485
TAG485:
sh $1, 0($1)
lui $3, 7
lui $1, 11
sll $0, $0, 0
TAG486:
bne $4, $4, TAG487
mfhi $3
bltz $3, TAG487
lb $1, 0($4)
TAG487:
lbu $1, 0($1)
mthi $1
mfhi $4
mflo $2
TAG488:
lb $2, 0($2)
sll $2, $2, 15
bgez $2, TAG489
multu $2, $2
TAG489:
srl $1, $2, 0
srlv $2, $1, $1
lb $3, 0($2)
multu $2, $2
TAG490:
mflo $1
bltz $3, TAG491
mflo $3
bgez $1, TAG491
TAG491:
mthi $3
sh $3, 0($3)
mult $3, $3
sh $3, 0($3)
TAG492:
mult $3, $3
sltu $3, $3, $3
bgtz $3, TAG493
nor $2, $3, $3
TAG493:
div $2, $2
lhu $4, 1($2)
lui $1, 3
bltz $2, TAG494
TAG494:
sll $0, $0, 0
divu $1, $1
divu $1, $1
bgtz $1, TAG495
TAG495:
srl $4, $1, 6
srlv $2, $4, $1
divu $2, $4
mtlo $4
TAG496:
lui $1, 0
sb $2, -3072($2)
mflo $4
lbu $1, -3072($4)
TAG497:
ori $1, $1, 13
xor $2, $1, $1
blez $1, TAG498
lb $3, 0($1)
TAG498:
lbu $4, 0($3)
beq $3, $4, TAG499
ori $2, $3, 10
sb $3, 0($4)
TAG499:
and $4, $2, $2
bltz $4, TAG500
andi $2, $2, 2
or $2, $2, $4
TAG500:
srl $1, $2, 0
slt $4, $1, $1
xori $3, $1, 15
mfhi $4
TAG501:
mtlo $4
lw $2, 0($4)
blez $4, TAG502
lb $3, 0($2)
TAG502:
mflo $2
lui $1, 3
mtlo $1
sw $2, 0($3)
TAG503:
bne $1, $1, TAG504
sll $0, $0, 0
bne $3, $3, TAG504
mfhi $4
TAG504:
sltiu $1, $4, 1
mtlo $4
beq $4, $4, TAG505
sh $4, 0($4)
TAG505:
mthi $1
lui $2, 4
lui $2, 0
slti $4, $1, 4
TAG506:
blez $4, TAG507
mfhi $3
sb $3, 0($4)
lb $2, 0($4)
TAG507:
mtlo $2
mflo $2
sb $2, 0($2)
or $3, $2, $2
TAG508:
lui $3, 2
sra $3, $3, 6
blez $3, TAG509
sw $3, -2048($3)
TAG509:
mthi $3
beq $3, $3, TAG510
lh $3, -2048($3)
mflo $2
TAG510:
addu $4, $2, $2
beq $4, $4, TAG511
divu $2, $4
mthi $4
TAG511:
sh $4, 0($4)
mthi $4
lhu $3, 0($4)
divu $3, $4
TAG512:
lui $3, 10
multu $3, $3
mflo $3
lui $3, 5
TAG513:
mtlo $3
addiu $4, $3, 7
lui $2, 12
sll $0, $0, 0
TAG514:
sll $0, $0, 0
lui $2, 3
mult $2, $2
mthi $2
TAG515:
mthi $2
lui $4, 11
nor $3, $2, $2
mthi $2
TAG516:
addiu $3, $3, 8
divu $3, $3
bgtz $3, TAG517
sll $0, $0, 0
TAG517:
divu $3, $3
bne $3, $3, TAG518
subu $3, $3, $3
mtlo $3
TAG518:
mtlo $3
lb $2, 0($3)
slt $3, $2, $3
multu $3, $3
TAG519:
bltz $3, TAG520
lui $4, 14
mflo $2
lw $2, 0($3)
TAG520:
mflo $1
addiu $4, $1, 13
divu $1, $4
sll $0, $0, 0
TAG521:
mfhi $1
blez $1, TAG522
mtlo $1
bne $1, $1, TAG522
TAG522:
mfhi $3
beq $1, $1, TAG523
sllv $3, $3, $3
sb $1, 0($1)
TAG523:
mflo $3
addiu $4, $3, 6
sb $3, 0($4)
sb $3, 0($4)
TAG524:
bltz $4, TAG525
mthi $4
sb $4, 0($4)
mthi $4
TAG525:
sb $4, 0($4)
divu $4, $4
lui $2, 11
lui $1, 7
TAG526:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
mflo $4
TAG527:
sb $4, 0($4)
sb $4, 0($4)
mthi $4
div $4, $4
TAG528:
mtlo $4
bgtz $4, TAG529
mflo $3
bltz $4, TAG529
TAG529:
sb $3, 0($3)
lui $1, 13
sll $0, $0, 0
lui $4, 1
TAG530:
sll $0, $0, 0
lui $3, 8
sll $3, $4, 8
beq $3, $3, TAG531
TAG531:
slt $4, $3, $3
lw $2, 0($4)
bne $4, $3, TAG532
multu $2, $4
TAG532:
lui $3, 12
mflo $2
nor $4, $3, $3
mthi $2
TAG533:
sll $0, $0, 0
bgtz $4, TAG534
sll $0, $0, 0
xori $4, $4, 11
TAG534:
mflo $1
lui $1, 3
bne $4, $1, TAG535
sll $0, $0, 0
TAG535:
beq $4, $4, TAG536
sll $0, $0, 0
slti $2, $4, 11
lh $3, 0($2)
TAG536:
lui $3, 5
mfhi $4
addu $1, $3, $4
lui $4, 4
TAG537:
sll $0, $0, 0
multu $4, $4
mflo $1
sll $0, $0, 0
TAG538:
lui $2, 5
bne $1, $2, TAG539
sh $2, 0($1)
slti $1, $2, 8
TAG539:
blez $1, TAG540
multu $1, $1
lhu $3, 0($1)
sltu $1, $1, $3
TAG540:
bgtz $1, TAG541
ori $3, $1, 10
mfhi $2
divu $1, $3
TAG541:
sh $2, 0($2)
lui $3, 14
divu $3, $3
divu $3, $3
TAG542:
lui $4, 5
lui $1, 5
beq $1, $4, TAG543
sll $4, $4, 12
TAG543:
nor $2, $4, $4
xor $1, $2, $2
lui $2, 3
div $2, $2
TAG544:
sll $0, $0, 0
bne $2, $3, TAG545
mflo $2
mtlo $2
TAG545:
mtlo $2
mult $2, $2
lui $2, 11
sll $0, $0, 0
TAG546:
sra $1, $1, 3
multu $1, $1
lh $4, 0($1)
beq $4, $1, TAG547
TAG547:
lbu $4, 0($4)
bne $4, $4, TAG548
sll $2, $4, 12
mfhi $2
TAG548:
lui $1, 8
divu $1, $1
sll $0, $0, 0
nor $3, $1, $2
TAG549:
sllv $4, $3, $3
bne $3, $3, TAG550
addiu $4, $4, 2
mfhi $3
TAG550:
mflo $1
bgtz $3, TAG551
ori $3, $3, 0
lui $2, 5
TAG551:
sll $0, $0, 0
bgez $4, TAG552
mthi $4
div $4, $2
TAG552:
and $4, $4, $4
lui $2, 1
or $2, $2, $4
addiu $2, $2, 14
TAG553:
xori $4, $2, 9
beq $4, $4, TAG554
lui $3, 8
lui $3, 13
TAG554:
beq $3, $3, TAG555
sll $0, $0, 0
bgtz $3, TAG555
sw $3, 0($3)
TAG555:
sll $0, $0, 0
mtlo $3
addu $3, $3, $3
mult $3, $3
TAG556:
mflo $1
lui $1, 5
sll $0, $0, 0
sll $0, $0, 0
TAG557:
bgtz $2, TAG558
xor $1, $2, $2
mult $2, $1
blez $2, TAG558
TAG558:
mult $1, $1
lui $3, 11
lh $4, 0($1)
sll $0, $0, 0
TAG559:
ori $3, $4, 6
bgtz $4, TAG560
mthi $4
mult $4, $4
TAG560:
slti $3, $3, 13
lui $4, 14
slti $1, $3, 6
divu $4, $3
TAG561:
slti $3, $1, 11
lui $1, 6
sllv $3, $3, $1
sll $0, $0, 0
TAG562:
div $1, $1
lui $4, 14
nor $4, $1, $4
divu $4, $4
TAG563:
mthi $4
sll $0, $0, 0
mflo $3
mfhi $3
TAG564:
bne $3, $3, TAG565
mfhi $4
srav $3, $3, $4
bltz $3, TAG565
TAG565:
mfhi $1
bgez $3, TAG566
mfhi $4
lui $3, 14
TAG566:
sll $0, $0, 0
mtlo $3
bne $3, $3, TAG567
sll $0, $0, 0
TAG567:
and $4, $1, $1
mflo $2
addu $4, $4, $4
lui $4, 15
TAG568:
blez $4, TAG569
lui $3, 5
mfhi $1
bgtz $1, TAG569
TAG569:
lui $3, 4
lui $1, 15
mthi $3
blez $1, TAG570
TAG570:
lui $2, 8
srav $2, $2, $1
mtlo $2
subu $4, $2, $2
TAG571:
or $3, $4, $4
lui $4, 3
sll $0, $0, 0
bgez $4, TAG572
TAG572:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
lui $3, 0
TAG573:
mtlo $3
addu $1, $3, $3
multu $1, $3
sb $1, 0($3)
TAG574:
slt $4, $1, $1
mflo $2
lh $1, 0($2)
bltz $2, TAG575
TAG575:
sb $1, 0($1)
mult $1, $1
or $2, $1, $1
beq $2, $2, TAG576
TAG576:
lhu $2, 0($2)
srl $1, $2, 14
bne $2, $2, TAG577
sra $4, $1, 15
TAG577:
sltu $3, $4, $4
mfhi $3
lbu $4, 0($3)
mult $4, $3
TAG578:
mtlo $4
sb $4, 0($4)
mtlo $4
lui $4, 0
TAG579:
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
mult $4, $2
TAG580:
nor $1, $2, $2
mflo $1
sb $1, 0($1)
mtlo $1
TAG581:
mtlo $1
sw $1, 0($1)
and $3, $1, $1
sra $3, $1, 5
TAG582:
mult $3, $3
slti $3, $3, 3
sb $3, 0($3)
divu $3, $3
TAG583:
lui $1, 2
mthi $3
mtlo $3
lb $3, 0($3)
TAG584:
sra $4, $3, 1
mult $4, $3
div $3, $3
beq $4, $3, TAG585
TAG585:
lui $2, 1
sra $3, $4, 10
sh $4, 0($4)
bltz $3, TAG586
TAG586:
mthi $3
slti $3, $3, 11
sb $3, 0($3)
mflo $3
TAG587:
mthi $3
sb $3, 0($3)
divu $3, $3
lbu $1, 0($3)
TAG588:
srlv $3, $1, $1
beq $1, $1, TAG589
mthi $1
bgez $1, TAG589
TAG589:
sh $3, 0($3)
lui $1, 8
blez $1, TAG590
addiu $3, $1, 13
TAG590:
div $3, $3
bne $3, $3, TAG591
mfhi $2
blez $3, TAG591
TAG591:
mtlo $2
lb $3, 0($2)
sltiu $1, $3, 1
beq $2, $2, TAG592
TAG592:
lbu $3, 0($1)
lh $4, 0($3)
sh $1, 0($4)
lui $3, 6
TAG593:
bgez $3, TAG594
xor $3, $3, $3
lui $1, 8
mthi $1
TAG594:
lb $2, 0($1)
mflo $1
beq $1, $2, TAG595
sltu $4, $1, $1
TAG595:
addu $4, $4, $4
bgez $4, TAG596
multu $4, $4
mfhi $2
TAG596:
lbu $1, 0($2)
xori $1, $2, 5
beq $2, $2, TAG597
sb $1, 0($1)
TAG597:
bne $1, $1, TAG598
lui $2, 7
beq $1, $2, TAG598
mflo $3
TAG598:
mtlo $3
andi $4, $3, 5
lbu $4, 0($4)
mflo $4
TAG599:
lbu $3, 0($4)
bgez $3, TAG600
sb $3, 0($3)
divu $3, $3
TAG600:
divu $3, $3
addiu $3, $3, 7
beq $3, $3, TAG601
andi $3, $3, 9
TAG601:
beq $3, $3, TAG602
srl $1, $3, 4
srav $4, $3, $3
bne $3, $4, TAG602
TAG602:
sb $4, 0($4)
sw $4, 0($4)
sltu $2, $4, $4
andi $4, $2, 10
TAG603:
addiu $4, $4, 6
addu $1, $4, $4
bltz $4, TAG604
lui $1, 13
TAG604:
mtlo $1
sltu $1, $1, $1
mflo $2
mfhi $3
TAG605:
sw $3, 0($3)
lh $3, 0($3)
sh $3, 0($3)
mult $3, $3
TAG606:
beq $3, $3, TAG607
mtlo $3
ori $1, $3, 12
beq $1, $1, TAG607
TAG607:
mthi $1
lui $4, 7
sll $0, $0, 0
lui $2, 8
TAG608:
mflo $2
sh $2, 0($2)
mult $2, $2
add $3, $2, $2
TAG609:
mult $3, $3
bgez $3, TAG610
lb $3, 0($3)
div $3, $3
TAG610:
mtlo $3
bne $3, $3, TAG611
mtlo $3
mfhi $2
TAG611:
andi $2, $2, 11
lui $3, 5
bne $2, $3, TAG612
mthi $3
TAG612:
mthi $3
addiu $3, $3, 13
mflo $3
blez $3, TAG613
TAG613:
lw $4, 0($3)
sltiu $4, $3, 3
bgez $4, TAG614
sb $4, 0($4)
TAG614:
mtlo $4
sllv $3, $4, $4
lui $4, 3
bne $4, $4, TAG615
TAG615:
addiu $1, $4, 9
sll $0, $0, 0
mtlo $4
sltiu $1, $1, 0
TAG616:
subu $2, $1, $1
sltiu $3, $1, 7
sb $2, 0($3)
blez $2, TAG617
TAG617:
mflo $1
mflo $4
bgtz $3, TAG618
xori $3, $1, 14
TAG618:
blez $3, TAG619
mtlo $3
mult $3, $3
sll $0, $0, 0
TAG619:
mfhi $4
sll $0, $0, 0
mflo $4
bne $4, $4, TAG620
TAG620:
lui $1, 7
beq $1, $4, TAG621
multu $1, $1
and $2, $4, $4
TAG621:
mthi $2
sll $0, $0, 0
mthi $2
beq $2, $2, TAG622
TAG622:
mult $2, $2
addiu $1, $2, 1
sll $0, $0, 0
sll $0, $0, 0
TAG623:
divu $1, $1
bgez $1, TAG624
div $1, $1
mthi $1
TAG624:
sll $0, $0, 0
bne $1, $1, TAG625
mult $1, $1
sll $0, $0, 0
TAG625:
sll $0, $0, 0
addu $4, $4, $4
mthi $2
mflo $2
TAG626:
srlv $1, $2, $2
lui $4, 13
divu $1, $1
mflo $4
TAG627:
bgtz $4, TAG628
sb $4, 0($4)
bgtz $4, TAG628
mthi $4
TAG628:
mtlo $4
mflo $4
sb $4, 0($4)
lui $4, 5
TAG629:
sll $0, $0, 0
beq $4, $4, TAG630
mthi $4
sb $4, 0($4)
TAG630:
mtlo $4
sll $0, $0, 0
mthi $4
sll $0, $0, 0
TAG631:
div $3, $3
bne $3, $3, TAG632
multu $3, $3
beq $3, $3, TAG632
TAG632:
divu $3, $3
beq $3, $3, TAG633
lui $1, 8
lui $1, 11
TAG633:
sll $0, $0, 0
mfhi $2
mult $2, $2
mfhi $4
TAG634:
sb $4, 0($4)
subu $2, $4, $4
sw $4, 0($4)
lui $1, 2
TAG635:
multu $1, $1
and $4, $1, $1
lui $4, 9
mthi $1
TAG636:
mthi $4
beq $4, $4, TAG637
lui $4, 1
lui $3, 10
TAG637:
mthi $3
lui $1, 4
mflo $1
bne $3, $1, TAG638
TAG638:
mult $1, $1
blez $1, TAG639
multu $1, $1
lui $2, 4
TAG639:
mult $2, $2
sb $2, 0($2)
sub $3, $2, $2
mtlo $3
TAG640:
srl $1, $3, 2
lui $3, 5
sw $3, 0($1)
nor $4, $3, $1
TAG641:
mfhi $2
mflo $3
bgez $4, TAG642
lbu $3, 0($2)
TAG642:
lb $2, 0($3)
mult $2, $3
multu $3, $2
bne $2, $3, TAG643
TAG643:
sh $2, 0($2)
lhu $4, 0($2)
mflo $2
bne $2, $4, TAG644
TAG644:
slti $1, $2, 10
lui $1, 5
mthi $2
addu $4, $2, $2
TAG645:
lui $2, 2
addu $4, $2, $4
beq $4, $4, TAG646
mflo $2
TAG646:
or $3, $2, $2
mult $2, $3
sh $3, 0($2)
sh $3, 0($3)
TAG647:
bgez $3, TAG648
multu $3, $3
mflo $4
lui $2, 9
TAG648:
lb $2, 0($2)
mult $2, $2
lui $2, 6
mflo $1
TAG649:
sh $1, 0($1)
multu $1, $1
mtlo $1
sw $1, 0($1)
TAG650:
srav $3, $1, $1
sh $1, 0($3)
bne $3, $3, TAG651
mult $3, $1
TAG651:
lh $3, 0($3)
multu $3, $3
bgtz $3, TAG652
lbu $2, 0($3)
TAG652:
lui $1, 5
blez $2, TAG653
multu $2, $2
ori $4, $2, 3
TAG653:
blez $4, TAG654
mult $4, $4
mult $4, $4
nor $3, $4, $4
TAG654:
mthi $3
sll $0, $0, 0
mult $3, $2
lui $3, 11
TAG655:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG656:
bne $4, $4, TAG657
sll $0, $0, 0
bne $2, $2, TAG657
multu $4, $2
TAG657:
slti $4, $2, 14
lb $3, 0($4)
mfhi $2
lui $2, 6
TAG658:
beq $2, $2, TAG659
sll $0, $0, 0
mfhi $1
sb $1, 0($1)
TAG659:
mflo $1
slti $2, $1, 10
sb $1, 0($2)
sll $1, $1, 15
TAG660:
lui $1, 6
slti $3, $1, 13
sb $1, 0($3)
sb $3, 0($3)
TAG661:
sra $2, $3, 3
addiu $2, $3, 11
blez $2, TAG662
slt $4, $3, $2
TAG662:
lbu $4, 0($4)
blez $4, TAG663
or $2, $4, $4
beq $4, $4, TAG663
TAG663:
xori $1, $2, 8
srav $4, $1, $1
or $2, $1, $4
xori $3, $4, 11
TAG664:
mtlo $3
addu $1, $3, $3
mflo $1
sltu $3, $1, $3
TAG665:
mflo $1
mtlo $3
lb $4, 0($3)
beq $4, $1, TAG666
TAG666:
mfhi $4
multu $4, $4
lw $3, 0($4)
bgez $3, TAG667
TAG667:
sh $3, 0($3)
mflo $2
sb $3, 0($2)
mult $3, $2
TAG668:
subu $3, $2, $2
multu $2, $3
sra $2, $3, 14
mfhi $1
TAG669:
mult $1, $1
lui $3, 8
lui $3, 6
bne $3, $3, TAG670
TAG670:
mtlo $3
beq $3, $3, TAG671
addiu $3, $3, 4
mfhi $2
TAG671:
mtlo $2
blez $2, TAG672
lui $3, 4
mult $2, $3
TAG672:
addu $4, $3, $3
mflo $4
addiu $3, $4, 4
beq $4, $3, TAG673
TAG673:
lw $2, 0($3)
sll $0, $0, 0
mult $4, $2
and $4, $4, $2
TAG674:
mfhi $4
mfhi $1
mthi $4
sb $4, 0($4)
TAG675:
addu $1, $1, $1
andi $4, $1, 15
lui $4, 9
sll $0, $0, 0
TAG676:
lbu $1, 0($3)
divu $3, $3
bltz $3, TAG677
lbu $4, 0($3)
TAG677:
bgez $4, TAG678
lui $3, 15
xor $3, $4, $4
beq $3, $3, TAG678
TAG678:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG679
TAG679:
addu $1, $1, $1
bne $1, $1, TAG680
mtlo $1
lui $4, 9
TAG680:
srl $2, $4, 4
and $3, $4, $2
mfhi $1
mult $2, $2
TAG681:
lhu $2, 0($1)
blez $1, TAG682
lui $2, 0
xor $2, $1, $2
TAG682:
sw $2, 0($2)
lui $2, 10
slti $2, $2, 2
sw $2, 0($2)
TAG683:
lui $2, 2
lui $2, 5
mfhi $4
sll $0, $0, 0
TAG684:
mtlo $4
mflo $4
lhu $3, 0($4)
add $3, $3, $4
TAG685:
mtlo $3
or $2, $3, $3
mfhi $2
mthi $2
TAG686:
beq $2, $2, TAG687
mtlo $2
mfhi $3
lb $4, 0($3)
TAG687:
slti $2, $4, 8
beq $2, $2, TAG688
sb $2, 0($2)
lui $4, 4
TAG688:
mult $4, $4
sll $4, $4, 13
lui $2, 13
sltiu $3, $4, 10
TAG689:
bne $3, $3, TAG690
lui $2, 11
slt $2, $2, $2
multu $3, $2
TAG690:
mtlo $2
sltiu $1, $2, 2
lui $2, 4
bne $1, $2, TAG691
TAG691:
mfhi $3
bgez $3, TAG692
subu $4, $3, $2
blez $4, TAG692
TAG692:
mfhi $4
sb $4, 0($4)
mult $4, $4
blez $4, TAG693
TAG693:
lbu $4, 0($4)
addu $4, $4, $4
mult $4, $4
lui $3, 5
TAG694:
addu $4, $3, $3
mflo $4
lhu $4, 0($4)
mfhi $2
TAG695:
mfhi $4
slti $1, $2, 12
lb $2, 0($1)
bltz $1, TAG696
TAG696:
div $2, $2
lui $3, 12
bltz $3, TAG697
sll $0, $0, 0
TAG697:
or $3, $3, $3
sll $0, $0, 0
sllv $1, $4, $4
sb $1, 0($4)
TAG698:
beq $1, $1, TAG699
lui $2, 8
blez $2, TAG699
addiu $2, $2, 4
TAG699:
sll $0, $0, 0
bltz $2, TAG700
lui $3, 11
mtlo $3
TAG700:
mthi $3
srav $3, $3, $3
lui $3, 3
mflo $2
TAG701:
bgtz $2, TAG702
mfhi $1
mfhi $4
bne $1, $4, TAG702
TAG702:
addu $4, $4, $4
sltiu $4, $4, 5
mthi $4
divu $4, $4
TAG703:
addiu $4, $4, 12
addu $4, $4, $4
lhu $1, 0($4)
lbu $3, 0($4)
TAG704:
lui $4, 15
addiu $1, $4, 7
lui $4, 6
bgez $1, TAG705
TAG705:
srlv $1, $4, $4
bltz $4, TAG706
sll $0, $0, 0
sltu $4, $4, $1
TAG706:
mflo $2
sltu $1, $2, $2
nor $2, $1, $1
and $3, $2, $2
TAG707:
sh $3, 1($3)
lw $4, 1($3)
lui $4, 1
mflo $4
TAG708:
mfhi $3
srl $1, $3, 10
lbu $4, 0($1)
lh $1, -255($4)
TAG709:
lui $2, 1
multu $1, $2
bltz $1, TAG710
mtlo $2
TAG710:
sra $1, $2, 4
or $3, $1, $2
bltz $1, TAG711
sll $0, $0, 0
TAG711:
beq $3, $3, TAG712
lui $1, 1
sb $3, 0($1)
and $2, $3, $3
TAG712:
blez $2, TAG713
mthi $2
mflo $4
sll $0, $0, 0
TAG713:
mthi $4
bne $4, $4, TAG714
mtlo $4
mflo $4
TAG714:
mult $4, $4
mult $4, $4
lui $3, 7
lui $3, 5
TAG715:
or $2, $3, $3
sll $0, $0, 0
mflo $1
lb $2, 0($1)
TAG716:
sll $0, $0, 0
mtlo $1
sra $1, $2, 2
lui $3, 8
TAG717:
bltz $3, TAG718
srav $1, $3, $3
mflo $4
sll $0, $0, 0
TAG718:
srl $1, $4, 13
addu $1, $1, $4
lui $2, 7
mfhi $2
TAG719:
srl $2, $2, 11
lui $4, 15
addu $2, $2, $2
bne $2, $2, TAG720
TAG720:
xor $4, $2, $2
bne $2, $2, TAG721
mflo $1
lw $2, 0($2)
TAG721:
bltz $2, TAG722
multu $2, $2
mthi $2
andi $4, $2, 4
TAG722:
lui $3, 8
lui $1, 1
lui $3, 11
slti $4, $3, 1
TAG723:
sw $4, 0($4)
sw $4, 0($4)
mthi $4
mthi $4
TAG724:
sh $4, 0($4)
srl $2, $4, 15
beq $4, $4, TAG725
multu $2, $4
TAG725:
sll $2, $2, 10
lui $2, 10
ori $2, $2, 11
sltu $3, $2, $2
TAG726:
mtlo $3
addi $4, $3, 13
beq $4, $4, TAG727
mfhi $4
TAG727:
lui $4, 6
mfhi $2
multu $2, $2
mflo $2
TAG728:
lui $4, 6
multu $2, $2
mfhi $3
lui $3, 10
TAG729:
srav $1, $3, $3
addu $4, $3, $3
sll $0, $0, 0
mflo $2
TAG730:
sub $3, $2, $2
sltiu $3, $2, 11
lhu $2, 0($2)
beq $2, $2, TAG731
TAG731:
mtlo $2
mult $2, $2
sb $2, 0($2)
sh $2, 0($2)
TAG732:
mfhi $3
mtlo $3
mult $2, $2
mtlo $2
TAG733:
mflo $4
mfhi $2
beq $4, $3, TAG734
multu $3, $4
TAG734:
subu $2, $2, $2
multu $2, $2
lui $3, 7
mflo $4
TAG735:
mflo $3
lui $2, 15
slt $3, $4, $3
mult $3, $4
TAG736:
mflo $1
mtlo $3
mtlo $1
lh $3, 0($3)
TAG737:
sh $3, 0($3)
mthi $3
lui $1, 7
subu $4, $3, $1
TAG738:
xor $4, $4, $4
sh $4, 0($4)
beq $4, $4, TAG739
mthi $4
TAG739:
lui $1, 13
sllv $4, $1, $4
lui $1, 12
mfhi $3
TAG740:
nor $1, $3, $3
sw $1, 1($1)
slti $1, $1, 9
mflo $4
TAG741:
and $4, $4, $4
beq $4, $4, TAG742
lui $2, 0
lb $1, 0($2)
TAG742:
div $1, $1
beq $1, $1, TAG743
div $1, $1
mtlo $1
TAG743:
mfhi $4
mfhi $1
sh $1, 0($1)
xori $1, $1, 15
TAG744:
mthi $1
sb $1, 0($1)
blez $1, TAG745
mflo $3
TAG745:
sb $3, 0($3)
bne $3, $3, TAG746
sllv $4, $3, $3
mfhi $2
TAG746:
srlv $3, $2, $2
multu $2, $3
addi $2, $3, 3
andi $4, $3, 2
TAG747:
sb $4, 0($4)
mtlo $4
sh $4, 0($4)
slt $3, $4, $4
TAG748:
mult $3, $3
mtlo $3
mult $3, $3
xor $3, $3, $3
TAG749:
sb $3, 0($3)
bltz $3, TAG750
sb $3, 0($3)
mtlo $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop