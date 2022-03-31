ori $1, $0, 11
ori $2, $0, 14
ori $3, $0, 10
ori $4, $0, 9
sw $1, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $2, 12($0)
sw $4, 16($0)
sw $2, 20($0)
sw $2, 24($0)
sw $2, 28($0)
sw $3, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $4, 44($0)
sw $1, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $4, 64($0)
sw $3, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $2, 80($0)
sw $4, 84($0)
sw $2, 88($0)
sw $1, 92($0)
sw $3, 96($0)
sw $1, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $4, 112($0)
sw $3, 116($0)
sw $2, 120($0)
sw $3, 124($0)
sltu $2, $2, $2
mult $2, $2
mtlo $2
multu $2, $2
TAG1:
lh $2, 0($2)
lui $3, 0
sb $2, 0($2)
blez $2, TAG2
TAG2:
lbu $2, 0($3)
sb $3, 0($3)
beq $3, $2, TAG3
sltu $1, $3, $2
TAG3:
mflo $3
bgez $3, TAG4
mfhi $2
srav $1, $3, $2
TAG4:
mthi $1
sb $1, 0($1)
mfhi $3
bne $1, $1, TAG5
TAG5:
multu $3, $3
blez $3, TAG6
multu $3, $3
bne $3, $3, TAG6
TAG6:
divu $3, $3
divu $3, $3
mflo $3
lb $3, 0($3)
TAG7:
sllv $3, $3, $3
lh $3, 0($3)
beq $3, $3, TAG8
lh $3, 0($3)
TAG8:
mult $3, $3
bltz $3, TAG9
mfhi $3
add $1, $3, $3
TAG9:
lbu $4, 0($1)
add $4, $4, $4
lb $4, 0($1)
bltz $1, TAG10
TAG10:
sra $2, $4, 10
lui $1, 15
mult $4, $4
xori $1, $1, 12
TAG11:
mtlo $1
bne $1, $1, TAG12
sll $1, $1, 0
sll $0, $0, 0
TAG12:
mthi $1
addu $2, $1, $1
sll $0, $0, 0
sll $3, $1, 4
TAG13:
sll $0, $0, 0
bne $3, $3, TAG14
multu $3, $3
beq $3, $3, TAG14
TAG14:
mtlo $3
addu $4, $3, $3
xor $4, $4, $4
andi $4, $4, 13
TAG15:
lh $4, 0($4)
sb $4, -256($4)
sllv $1, $4, $4
sw $1, -256($4)
TAG16:
addu $3, $1, $1
lui $1, 15
mthi $1
lui $2, 5
TAG17:
sll $0, $0, 0
bgtz $3, TAG18
lui $1, 5
multu $2, $1
TAG18:
mfhi $2
xori $2, $1, 0
lui $2, 0
mtlo $2
TAG19:
mflo $2
mfhi $3
multu $2, $3
lhu $1, 0($2)
TAG20:
sll $0, $0, 0
xori $1, $1, 12
mtlo $1
mfhi $3
TAG21:
beq $3, $3, TAG22
mfhi $3
lui $3, 10
mflo $3
TAG22:
multu $3, $3
srl $3, $3, 7
sb $3, 0($3)
mflo $2
TAG23:
lb $3, 0($2)
bgez $3, TAG24
mfhi $4
srav $2, $4, $2
TAG24:
mfhi $3
mult $2, $3
lhu $1, 0($3)
mflo $1
TAG25:
lhu $4, 0($1)
lui $1, 2
bne $4, $4, TAG26
mfhi $3
TAG26:
bgtz $3, TAG27
or $4, $3, $3
sub $2, $3, $4
blez $2, TAG27
TAG27:
mtlo $2
multu $2, $2
sra $3, $2, 15
nor $4, $3, $2
TAG28:
bgtz $4, TAG29
lui $2, 1
sltiu $1, $2, 1
bgtz $1, TAG29
TAG29:
lh $3, 0($1)
lui $2, 13
addiu $2, $3, 14
mthi $2
TAG30:
beq $2, $2, TAG31
lui $4, 6
sw $2, 0($2)
multu $2, $4
TAG31:
xori $3, $4, 13
ori $1, $3, 8
ori $1, $4, 10
bgez $4, TAG32
TAG32:
xori $2, $1, 1
sll $0, $0, 0
mtlo $1
andi $4, $2, 14
TAG33:
bltz $4, TAG34
divu $4, $4
divu $4, $4
mult $4, $4
TAG34:
multu $4, $4
mflo $4
mflo $2
andi $1, $4, 2
TAG35:
sltiu $3, $1, 12
lui $4, 9
sb $4, 0($1)
mfhi $3
TAG36:
mtlo $3
mfhi $4
nor $2, $4, $4
multu $4, $4
TAG37:
sb $2, 1($2)
lw $1, 1($2)
bgtz $1, TAG38
lui $3, 13
TAG38:
subu $4, $3, $3
mtlo $3
beq $3, $3, TAG39
mflo $1
TAG39:
bltz $1, TAG40
xori $1, $1, 13
lui $3, 4
sltiu $2, $3, 6
TAG40:
lui $3, 6
mflo $3
mthi $2
bltz $2, TAG41
TAG41:
mthi $3
sll $0, $0, 0
or $3, $3, $3
bgtz $3, TAG42
TAG42:
slti $4, $3, 15
mthi $3
mtlo $4
mthi $4
TAG43:
beq $4, $4, TAG44
mtlo $4
sw $4, 0($4)
srav $1, $4, $4
TAG44:
sll $0, $0, 0
mult $1, $1
beq $1, $1, TAG45
mthi $1
TAG45:
sll $0, $0, 0
bne $4, $4, TAG46
addiu $2, $4, 5
addu $4, $1, $4
TAG46:
lui $2, 12
mfhi $3
blez $2, TAG47
mflo $4
TAG47:
sll $0, $0, 0
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
TAG48:
bne $1, $1, TAG49
nor $1, $1, $1
bgez $1, TAG49
mflo $4
TAG49:
bgtz $4, TAG50
addu $2, $4, $4
lui $2, 7
mflo $3
TAG50:
div $3, $3
mult $3, $3
lui $1, 1
mflo $2
TAG51:
blez $2, TAG52
mflo $1
and $2, $1, $1
mflo $3
TAG52:
blez $3, TAG53
mfhi $1
lhu $3, -169($1)
mthi $3
TAG53:
addu $2, $3, $3
lui $4, 3
div $2, $4
lui $4, 13
TAG54:
mfhi $1
lui $1, 12
lui $3, 11
xor $3, $1, $1
TAG55:
blez $3, TAG56
mtlo $3
mflo $4
lb $2, 0($4)
TAG56:
mfhi $4
sh $2, -1022($4)
bgtz $2, TAG57
mfhi $4
TAG57:
lui $3, 3
beq $4, $4, TAG58
divu $4, $3
mfhi $4
TAG58:
sw $4, -1022($4)
mtlo $4
beq $4, $4, TAG59
lui $2, 12
TAG59:
addiu $3, $2, 9
andi $2, $2, 6
lui $3, 6
lui $2, 15
TAG60:
mtlo $2
mflo $2
mfhi $1
lui $1, 0
TAG61:
lui $3, 4
sll $0, $0, 0
bgez $1, TAG62
mfhi $4
TAG62:
slti $2, $4, 13
sw $4, 0($2)
bne $2, $4, TAG63
sb $4, 0($2)
TAG63:
mthi $2
beq $2, $2, TAG64
multu $2, $2
mtlo $2
TAG64:
multu $2, $2
lhu $3, 0($2)
mflo $3
sh $3, 0($3)
TAG65:
beq $3, $3, TAG66
multu $3, $3
slt $3, $3, $3
beq $3, $3, TAG66
TAG66:
lui $1, 1
bne $3, $1, TAG67
divu $1, $1
bltz $1, TAG67
TAG67:
multu $1, $1
srav $1, $1, $1
mult $1, $1
div $1, $1
TAG68:
lui $2, 8
divu $1, $2
mfhi $2
mthi $2
TAG69:
sllv $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
lui $2, 1
TAG70:
srl $1, $2, 12
sw $1, 0($1)
mtlo $1
mtlo $1
TAG71:
ori $4, $1, 11
lui $2, 14
lw $1, 0($1)
lui $4, 4
TAG72:
sll $0, $0, 0
lui $1, 6
lui $2, 13
mtlo $4
TAG73:
mthi $2
lui $4, 9
ori $4, $4, 10
sll $0, $0, 0
TAG74:
mthi $2
ori $4, $2, 13
slti $4, $2, 4
multu $4, $4
TAG75:
sb $4, 0($4)
lh $3, 0($4)
sltu $2, $4, $4
xor $1, $4, $2
TAG76:
bne $1, $1, TAG77
sb $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
TAG77:
mult $1, $1
mtlo $1
bne $1, $1, TAG78
mfhi $4
TAG78:
addiu $2, $4, 5
multu $2, $4
andi $2, $2, 2
blez $2, TAG79
TAG79:
lui $4, 2
andi $3, $4, 7
beq $3, $2, TAG80
xor $1, $4, $3
TAG80:
sll $0, $0, 0
blez $1, TAG81
mult $1, $1
addu $4, $1, $1
TAG81:
div $4, $4
blez $4, TAG82
mfhi $2
subu $4, $2, $2
TAG82:
andi $1, $4, 4
lbu $1, 0($1)
xor $3, $1, $4
or $3, $4, $4
TAG83:
mflo $3
beq $3, $3, TAG84
sb $3, 0($3)
andi $4, $3, 6
TAG84:
lui $4, 15
lui $3, 12
andi $3, $4, 5
addu $4, $3, $4
TAG85:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 2
mflo $4
TAG86:
mthi $4
lui $4, 5
mflo $4
bgez $4, TAG87
TAG87:
xor $3, $4, $4
bgtz $4, TAG88
lui $1, 4
div $1, $1
TAG88:
sll $0, $0, 0
sll $0, $0, 0
sb $2, 0($4)
divu $4, $1
TAG89:
bgtz $4, TAG90
lui $1, 0
or $1, $4, $1
mfhi $4
TAG90:
sb $4, 0($4)
mflo $3
mfhi $2
lbu $1, 0($2)
TAG91:
lui $1, 5
bne $1, $1, TAG92
srl $3, $1, 8
addu $1, $3, $1
TAG92:
bne $1, $1, TAG93
ori $1, $1, 14
lui $2, 9
mthi $1
TAG93:
sll $0, $0, 0
mfhi $4
multu $4, $2
lui $1, 11
TAG94:
sll $0, $0, 0
sll $0, $0, 0
addiu $1, $1, 8
lui $4, 5
TAG95:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
sb $3, 0($3)
TAG96:
mflo $1
sb $1, 0($3)
beq $3, $1, TAG97
mthi $1
TAG97:
blez $1, TAG98
sra $4, $1, 10
sll $0, $0, 0
bne $1, $1, TAG98
TAG98:
mflo $3
sll $0, $0, 0
mfhi $2
bne $2, $3, TAG99
TAG99:
lui $4, 5
mflo $1
mfhi $1
slti $4, $4, 14
TAG100:
mthi $4
sh $4, 0($4)
bltz $4, TAG101
mtlo $4
TAG101:
andi $3, $4, 9
lui $4, 6
xori $2, $4, 6
mfhi $1
TAG102:
lh $1, 0($1)
bne $1, $1, TAG103
lui $4, 0
lui $4, 6
TAG103:
mult $4, $4
lui $1, 0
and $3, $4, $1
bgtz $1, TAG104
TAG104:
ori $1, $3, 11
addiu $2, $1, 6
addu $4, $3, $3
bne $1, $1, TAG105
TAG105:
mthi $4
bgtz $4, TAG106
sh $4, 0($4)
slti $4, $4, 10
TAG106:
mflo $2
sltiu $1, $2, 15
beq $2, $2, TAG107
divu $1, $4
TAG107:
sb $1, 0($1)
divu $1, $1
mflo $2
beq $1, $1, TAG108
TAG108:
sb $2, 0($2)
xor $1, $2, $2
mtlo $1
mthi $1
TAG109:
nor $2, $1, $1
bgtz $2, TAG110
lw $4, 0($1)
slti $1, $2, 10
TAG110:
mtlo $1
blez $1, TAG111
mfhi $2
div $1, $1
TAG111:
bne $2, $2, TAG112
lui $1, 11
mfhi $4
mult $4, $4
TAG112:
sw $4, 0($4)
lui $2, 11
mthi $2
beq $2, $2, TAG113
TAG113:
slti $3, $2, 2
sll $0, $0, 0
mult $2, $3
nor $1, $3, $3
TAG114:
addiu $2, $1, 2
bltz $1, TAG115
lui $1, 14
sh $1, 0($2)
TAG115:
srav $2, $1, $1
mtlo $2
mthi $2
mfhi $1
TAG116:
beq $1, $1, TAG117
mfhi $1
mult $1, $1
lh $4, 0($1)
TAG117:
lui $1, 1
mfhi $1
bgez $4, TAG118
mfhi $3
TAG118:
mflo $4
sll $0, $0, 0
sll $0, $0, 0
mtlo $3
TAG119:
sltu $2, $1, $1
sll $0, $0, 0
lui $3, 8
lui $3, 3
TAG120:
mfhi $2
sll $0, $0, 0
srl $4, $2, 12
beq $4, $2, TAG121
TAG121:
div $4, $4
lui $1, 6
div $1, $1
mtlo $4
TAG122:
mflo $4
sb $4, -224($4)
sll $0, $0, 0
mfhi $4
TAG123:
mfhi $1
mult $1, $4
sh $1, 0($1)
multu $1, $4
TAG124:
beq $1, $1, TAG125
lbu $3, 0($1)
srl $4, $3, 4
sh $4, 0($1)
TAG125:
sw $4, 0($4)
lui $4, 4
sllv $2, $4, $4
slti $3, $4, 6
TAG126:
mfhi $4
sh $4, 0($3)
mtlo $4
multu $4, $4
TAG127:
lui $3, 3
lb $2, 0($4)
mult $3, $2
bltz $3, TAG128
TAG128:
mflo $1
srlv $3, $2, $2
mfhi $1
addi $3, $2, 2
TAG129:
bgez $3, TAG130
srlv $3, $3, $3
sb $3, 0($3)
lh $1, 0($3)
TAG130:
mtlo $1
lui $2, 10
or $4, $2, $2
srlv $2, $2, $1
TAG131:
sll $0, $0, 0
bne $2, $2, TAG132
mthi $2
lui $2, 7
TAG132:
srav $4, $2, $2
bgez $2, TAG133
divu $2, $4
lhu $4, 0($2)
TAG133:
xori $4, $4, 11
sll $0, $0, 0
beq $2, $4, TAG134
lui $3, 4
TAG134:
lui $4, 2
mflo $3
sb $3, 0($3)
mthi $3
TAG135:
mult $3, $3
or $4, $3, $3
andi $1, $3, 9
sb $3, 0($3)
TAG136:
divu $1, $1
mthi $1
subu $1, $1, $1
lui $3, 6
TAG137:
subu $4, $3, $3
bgtz $4, TAG138
multu $4, $3
sub $3, $4, $4
TAG138:
and $4, $3, $3
blez $4, TAG139
lhu $1, 0($4)
lui $3, 11
TAG139:
sw $3, 0($3)
mtlo $3
bgtz $3, TAG140
mtlo $3
TAG140:
mflo $3
mthi $3
blez $3, TAG141
mflo $4
TAG141:
mfhi $3
mthi $3
mthi $3
blez $4, TAG142
TAG142:
mfhi $3
sb $3, 0($3)
andi $4, $3, 2
bgtz $3, TAG143
TAG143:
sltu $2, $4, $4
mflo $1
sb $4, 0($4)
mfhi $1
TAG144:
bne $1, $1, TAG145
sll $3, $1, 0
sw $3, 0($1)
lui $3, 11
TAG145:
bne $3, $3, TAG146
lui $3, 1
bgez $3, TAG146
mfhi $2
TAG146:
bne $2, $2, TAG147
lbu $2, 0($2)
multu $2, $2
mfhi $3
TAG147:
addu $3, $3, $3
mflo $1
lui $2, 7
mfhi $3
TAG148:
mthi $3
lb $1, 0($3)
sb $1, 0($1)
mtlo $3
TAG149:
lui $2, 3
mthi $1
bgez $1, TAG150
lui $2, 1
TAG150:
bgtz $2, TAG151
lui $3, 5
bgez $2, TAG151
mflo $2
TAG151:
srlv $1, $2, $2
sll $0, $0, 0
mfhi $3
mfhi $2
TAG152:
mult $2, $2
mtlo $2
and $4, $2, $2
sh $4, 0($2)
TAG153:
srlv $3, $4, $4
mult $4, $3
sh $3, 0($4)
srav $4, $3, $4
TAG154:
sh $4, 0($4)
sb $4, 0($4)
lb $4, 0($4)
sltiu $2, $4, 13
TAG155:
sb $2, 0($2)
mtlo $2
bgtz $2, TAG156
lui $4, 2
TAG156:
addu $4, $4, $4
xori $3, $4, 8
or $4, $3, $4
sltu $1, $4, $3
TAG157:
addi $1, $1, 15
srlv $2, $1, $1
and $4, $2, $1
bgtz $4, TAG158
TAG158:
mult $4, $4
mfhi $2
lh $3, 0($4)
lbu $1, -256($3)
TAG159:
sll $1, $1, 2
slt $4, $1, $1
mfhi $4
mult $4, $1
TAG160:
mflo $4
bltz $4, TAG161
mfhi $2
ori $2, $2, 0
TAG161:
bgtz $2, TAG162
lui $4, 13
mult $4, $2
mtlo $4
TAG162:
lui $1, 10
mfhi $4
lh $3, 0($4)
ori $2, $4, 12
TAG163:
multu $2, $2
lw $4, 0($2)
mfhi $3
beq $4, $2, TAG164
TAG164:
andi $4, $3, 12
addu $2, $4, $3
sltiu $2, $3, 12
bne $3, $2, TAG165
TAG165:
slti $3, $2, 12
sra $1, $3, 14
mult $2, $1
mtlo $3
TAG166:
lw $2, 0($1)
mflo $4
mflo $1
lhu $3, -256($2)
TAG167:
mtlo $3
beq $3, $3, TAG168
mtlo $3
lbu $2, 0($3)
TAG168:
sra $2, $2, 3
mtlo $2
bltz $2, TAG169
sra $4, $2, 1
TAG169:
sra $3, $4, 15
sh $3, 0($3)
lh $4, 0($3)
ori $3, $4, 15
TAG170:
bne $3, $3, TAG171
sb $3, 0($3)
bne $3, $3, TAG171
subu $2, $3, $3
TAG171:
mthi $2
lhu $4, 0($2)
lh $2, 0($2)
bgtz $2, TAG172
TAG172:
addi $1, $2, 1
bgez $1, TAG173
sw $1, 0($2)
mtlo $1
TAG173:
addiu $1, $1, 13
mtlo $1
sh $1, 0($1)
sb $1, 0($1)
TAG174:
addu $2, $1, $1
lui $1, 7
mtlo $1
subu $4, $2, $1
TAG175:
sll $0, $0, 0
mflo $3
mfhi $1
mtlo $4
TAG176:
mflo $4
xori $3, $1, 1
mtlo $3
mfhi $3
TAG177:
mthi $3
mflo $3
xor $1, $3, $3
srl $3, $1, 10
TAG178:
blez $3, TAG179
lui $4, 13
subu $3, $3, $4
sw $3, 0($4)
TAG179:
mult $3, $3
sh $3, 0($3)
lw $4, 0($3)
bgez $4, TAG180
TAG180:
mtlo $4
mfhi $4
multu $4, $4
mflo $2
TAG181:
sltu $2, $2, $2
srav $2, $2, $2
addiu $2, $2, 4
mfhi $4
TAG182:
mult $4, $4
lh $4, 0($4)
sb $4, 0($4)
mfhi $1
TAG183:
sw $1, 0($1)
sb $1, 0($1)
bne $1, $1, TAG184
mthi $1
TAG184:
lb $1, 0($1)
lui $3, 2
multu $3, $1
xori $2, $3, 12
TAG185:
mtlo $2
sll $0, $0, 0
mfhi $2
lhu $4, 0($2)
TAG186:
srl $2, $4, 5
sw $2, 0($4)
addi $1, $4, 12
mtlo $2
TAG187:
sllv $3, $1, $1
lh $2, 0($1)
mthi $2
addiu $2, $1, 3
TAG188:
slti $2, $2, 3
bgez $2, TAG189
mult $2, $2
lbu $2, 0($2)
TAG189:
bne $2, $2, TAG190
mult $2, $2
sw $2, 0($2)
lh $3, 0($2)
TAG190:
mthi $3
lui $4, 0
lui $1, 14
mflo $3
TAG191:
mflo $1
mfhi $2
beq $2, $2, TAG192
mfhi $3
TAG192:
mult $3, $3
sltu $2, $3, $3
mflo $4
xori $4, $2, 1
TAG193:
slt $3, $4, $4
lh $1, 0($3)
bne $3, $4, TAG194
or $4, $4, $3
TAG194:
bne $4, $4, TAG195
mtlo $4
bne $4, $4, TAG195
mthi $4
TAG195:
lui $3, 7
mfhi $4
bltz $3, TAG196
multu $4, $4
TAG196:
beq $4, $4, TAG197
subu $1, $4, $4
sh $1, 0($1)
lh $3, 0($4)
TAG197:
mflo $2
blez $3, TAG198
lui $3, 14
beq $2, $3, TAG198
TAG198:
lui $1, 4
sll $0, $0, 0
bltz $1, TAG199
mflo $2
TAG199:
lui $2, 6
mfhi $3
mflo $4
blez $2, TAG200
TAG200:
nor $2, $4, $4
lh $2, 2($2)
lui $4, 10
sh $4, 0($2)
TAG201:
bgez $4, TAG202
sll $0, $0, 0
sh $4, 0($4)
slti $4, $4, 11
TAG202:
bgez $4, TAG203
mflo $3
divu $3, $4
mflo $1
TAG203:
sll $0, $0, 0
divu $1, $1
lui $3, 2
lui $3, 4
TAG204:
subu $4, $3, $3
sll $0, $0, 0
beq $3, $3, TAG205
lui $2, 10
TAG205:
multu $2, $2
sll $0, $0, 0
sll $0, $0, 0
addu $1, $2, $2
TAG206:
div $1, $1
lui $2, 12
blez $1, TAG207
multu $1, $1
TAG207:
sll $0, $0, 0
addu $3, $2, $2
sll $0, $0, 0
divu $3, $2
TAG208:
div $2, $2
ori $4, $2, 8
div $4, $2
mfhi $2
TAG209:
slti $3, $2, 3
multu $2, $3
bgtz $3, TAG210
slt $2, $2, $2
TAG210:
lbu $2, 0($2)
sh $2, 0($2)
sltu $1, $2, $2
mflo $1
TAG211:
sb $1, 0($1)
xor $4, $1, $1
lui $1, 6
beq $4, $4, TAG212
TAG212:
mfhi $2
mthi $1
lui $1, 4
blez $2, TAG213
TAG213:
sll $0, $0, 0
lui $1, 9
bne $1, $1, TAG214
mfhi $4
TAG214:
mthi $4
subu $1, $4, $4
beq $4, $4, TAG215
and $1, $4, $1
TAG215:
mfhi $2
bltz $2, TAG216
slti $4, $2, 9
mult $2, $1
TAG216:
subu $2, $4, $4
mult $2, $4
lui $1, 14
multu $2, $4
TAG217:
or $3, $1, $1
sll $0, $0, 0
bgtz $1, TAG218
srlv $1, $1, $3
TAG218:
mfhi $1
beq $1, $1, TAG219
multu $1, $1
mult $1, $1
TAG219:
bne $1, $1, TAG220
lui $1, 14
sll $0, $0, 0
blez $1, TAG220
TAG220:
sll $0, $0, 0
srav $2, $1, $1
mthi $1
bgtz $1, TAG221
TAG221:
sll $0, $0, 0
sll $0, $0, 0
multu $2, $2
andi $1, $2, 13
TAG222:
lui $3, 13
bne $1, $1, TAG223
sh $1, 0($1)
mflo $3
TAG223:
mfhi $3
slt $2, $3, $3
nor $2, $3, $3
lui $3, 5
TAG224:
sll $0, $0, 0
mult $3, $3
mthi $3
mfhi $4
TAG225:
nor $1, $4, $4
divu $4, $4
sll $0, $0, 0
mthi $1
TAG226:
lui $2, 5
bne $3, $2, TAG227
lui $4, 12
addu $2, $2, $2
TAG227:
bgez $2, TAG228
mflo $3
sb $3, 0($3)
sb $3, 0($2)
TAG228:
beq $3, $3, TAG229
mthi $3
lui $3, 7
sll $4, $3, 10
TAG229:
sll $3, $4, 14
sll $0, $0, 0
beq $3, $3, TAG230
addiu $2, $3, 1
TAG230:
div $2, $2
lbu $3, 0($2)
blez $2, TAG231
lw $4, 0($3)
TAG231:
sw $4, 0($4)
mtlo $4
multu $4, $4
mtlo $4
TAG232:
sub $3, $4, $4
andi $1, $3, 7
sh $4, 0($3)
slt $1, $1, $3
TAG233:
bltz $1, TAG234
multu $1, $1
mult $1, $1
lh $4, 0($1)
TAG234:
lb $3, 0($4)
mfhi $3
sub $3, $3, $4
addiu $2, $4, 7
TAG235:
lb $2, 0($2)
mtlo $2
lui $1, 3
mfhi $3
TAG236:
bgez $3, TAG237
mthi $3
bne $3, $3, TAG237
slt $4, $3, $3
TAG237:
blez $4, TAG238
mthi $4
ori $4, $4, 6
mtlo $4
TAG238:
xori $3, $4, 1
mfhi $3
lui $3, 6
mflo $3
TAG239:
blez $3, TAG240
mfhi $3
lui $3, 10
mflo $4
TAG240:
slti $1, $4, 2
blez $1, TAG241
sh $4, 0($4)
slti $4, $4, 5
TAG241:
divu $4, $4
lui $1, 0
mthi $4
sb $1, 0($4)
TAG242:
bne $1, $1, TAG243
slti $3, $1, 2
mflo $4
sb $3, 0($4)
TAG243:
bgez $4, TAG244
sra $3, $4, 0
addu $1, $4, $4
lb $1, 0($1)
TAG244:
add $1, $1, $1
bne $1, $1, TAG245
addi $4, $1, 7
mfhi $2
TAG245:
lb $4, 0($2)
and $3, $4, $4
mfhi $4
blez $4, TAG246
TAG246:
mthi $4
sltu $4, $4, $4
bltz $4, TAG247
sb $4, 0($4)
TAG247:
slti $2, $4, 3
blez $2, TAG248
sb $2, 0($2)
lb $3, 0($4)
TAG248:
mthi $3
multu $3, $3
sra $1, $3, 8
mthi $3
TAG249:
mult $1, $1
bltz $1, TAG250
sll $1, $1, 13
slti $4, $1, 8
TAG250:
sb $4, 0($4)
mfhi $1
blez $1, TAG251
sll $1, $1, 11
TAG251:
mtlo $1
sb $1, 0($1)
sltiu $3, $1, 1
mtlo $3
TAG252:
mtlo $3
mtlo $3
lui $1, 5
mfhi $4
TAG253:
mfhi $1
or $1, $4, $1
sh $1, 0($4)
srl $1, $1, 1
TAG254:
addiu $2, $1, 10
xori $2, $2, 7
mfhi $1
slt $3, $1, $1
TAG255:
mult $3, $3
lh $4, 0($3)
sw $4, 0($3)
sh $3, 0($4)
TAG256:
lui $1, 10
mfhi $4
bne $4, $1, TAG257
srav $2, $4, $4
TAG257:
ori $1, $2, 9
lui $3, 0
bgez $3, TAG258
mfhi $1
TAG258:
bltz $1, TAG259
sltiu $2, $1, 15
srlv $4, $2, $2
sw $1, 0($1)
TAG259:
lui $2, 9
mfhi $4
multu $4, $4
mult $4, $4
TAG260:
sw $4, 0($4)
mthi $4
sra $2, $4, 7
mult $2, $2
TAG261:
blez $2, TAG262
multu $2, $2
or $1, $2, $2
lui $3, 14
TAG262:
subu $4, $3, $3
lui $2, 15
mfhi $3
mult $3, $3
TAG263:
bne $3, $3, TAG264
slti $3, $3, 13
sb $3, 0($3)
nor $3, $3, $3
TAG264:
mfhi $1
subu $2, $1, $1
bgtz $3, TAG265
sw $3, 0($2)
TAG265:
mfhi $3
lui $4, 3
blez $2, TAG266
multu $4, $2
TAG266:
sll $0, $0, 0
blez $4, TAG267
mthi $4
addu $2, $4, $4
TAG267:
mthi $2
bgtz $2, TAG268
sll $0, $0, 0
addi $2, $2, 8
TAG268:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
lbu $1, 0($1)
TAG269:
mfhi $4
sltu $1, $1, $4
mtlo $4
lb $4, 0($1)
TAG270:
beq $4, $4, TAG271
mtlo $4
lb $2, 0($4)
lui $1, 10
TAG271:
beq $1, $1, TAG272
nor $4, $1, $1
or $1, $4, $4
srl $2, $1, 0
TAG272:
bne $2, $2, TAG273
ori $1, $2, 3
lui $2, 5
nor $1, $2, $2
TAG273:
mtlo $1
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG274:
mult $3, $3
sh $3, 0($3)
mult $3, $3
sb $3, 0($3)
TAG275:
mflo $1
bgez $3, TAG276
multu $3, $1
lhu $1, 0($1)
TAG276:
mfhi $4
beq $4, $4, TAG277
lw $4, 0($4)
sra $3, $4, 2
TAG277:
and $3, $3, $3
lui $3, 7
mfhi $4
multu $3, $3
TAG278:
multu $4, $4
blez $4, TAG279
mult $4, $4
and $1, $4, $4
TAG279:
mtlo $1
addu $3, $1, $1
sb $3, 0($3)
lui $2, 3
TAG280:
sra $2, $2, 13
div $2, $2
srl $4, $2, 9
srav $4, $2, $2
TAG281:
addi $3, $4, 7
srl $2, $3, 1
and $1, $2, $3
bgtz $3, TAG282
TAG282:
slti $4, $1, 9
sllv $3, $4, $1
ori $3, $4, 3
mthi $4
TAG283:
lbu $3, 0($3)
blez $3, TAG284
xori $2, $3, 6
sb $3, -255($3)
TAG284:
blez $2, TAG285
mult $2, $2
srav $4, $2, $2
mflo $2
TAG285:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG286
lui $1, 10
TAG286:
lui $1, 5
mtlo $1
bgez $1, TAG287
mfhi $3
TAG287:
addiu $2, $3, 2
bltz $3, TAG288
mtlo $3
bltz $2, TAG288
TAG288:
lui $2, 12
lui $1, 10
bgtz $2, TAG289
mult $2, $1
TAG289:
bgez $1, TAG290
mfhi $2
blez $1, TAG290
lw $3, 0($2)
TAG290:
lhu $2, 0($3)
mfhi $1
bgtz $3, TAG291
sll $2, $1, 2
TAG291:
mfhi $4
div $4, $2
sra $4, $2, 0
blez $4, TAG292
TAG292:
sll $0, $0, 0
lhu $3, -480($4)
mult $3, $4
addu $1, $2, $2
TAG293:
sltu $3, $1, $1
mfhi $2
multu $2, $2
multu $3, $2
TAG294:
bgez $2, TAG295
sw $2, 0($2)
lui $3, 4
mult $2, $3
TAG295:
mult $3, $3
lbu $3, 0($3)
sra $1, $3, 4
sltiu $3, $3, 5
TAG296:
divu $3, $3
lb $3, 0($3)
mfhi $2
bgtz $2, TAG297
TAG297:
and $1, $2, $2
multu $2, $1
mthi $2
lui $1, 12
TAG298:
sll $0, $0, 0
mflo $4
mthi $1
divu $1, $1
TAG299:
bgtz $4, TAG300
sll $2, $4, 10
mflo $3
multu $2, $2
TAG300:
srav $2, $3, $3
multu $3, $2
sh $2, 0($2)
mthi $3
TAG301:
mfhi $1
mfhi $2
nor $2, $2, $2
sh $2, 2($2)
TAG302:
lui $4, 0
beq $4, $2, TAG303
addu $2, $2, $4
bgtz $4, TAG303
TAG303:
mtlo $2
bne $2, $2, TAG304
mflo $3
lw $4, 2($2)
TAG304:
sll $0, $0, 0
mfhi $2
sll $0, $0, 0
multu $3, $4
TAG305:
addu $4, $2, $2
sh $4, 0($4)
lui $3, 0
mfhi $1
TAG306:
slti $1, $1, 0
lhu $2, 0($1)
lui $2, 5
mflo $3
TAG307:
mflo $2
lui $2, 5
lui $3, 6
multu $2, $3
TAG308:
addu $2, $3, $3
mult $3, $2
sll $0, $0, 0
sll $0, $0, 0
TAG309:
mfhi $1
bgtz $2, TAG310
mthi $1
beq $2, $1, TAG310
TAG310:
mfhi $4
mflo $1
and $3, $1, $1
bgez $3, TAG311
TAG311:
mtlo $3
multu $3, $3
mult $3, $3
lui $4, 11
TAG312:
sll $0, $0, 0
divu $4, $4
div $4, $4
mflo $3
TAG313:
bgez $3, TAG314
mtlo $3
andi $2, $3, 1
andi $3, $2, 13
TAG314:
lbu $4, 0($3)
sb $4, 0($3)
mflo $2
mult $3, $4
TAG315:
sb $2, 0($2)
lui $3, 14
sll $0, $0, 0
sra $3, $3, 2
TAG316:
sll $0, $0, 0
sll $0, $0, 0
xor $4, $3, $3
lui $1, 4
TAG317:
bne $1, $1, TAG318
mtlo $1
mtlo $1
lui $2, 3
TAG318:
divu $2, $2
xori $4, $2, 12
ori $1, $2, 10
lui $1, 13
TAG319:
divu $1, $1
mflo $2
beq $1, $2, TAG320
lui $4, 10
TAG320:
sll $0, $0, 0
subu $1, $4, $4
srl $4, $4, 0
addu $3, $4, $1
TAG321:
mult $3, $3
bltz $3, TAG322
div $3, $3
ori $1, $3, 13
TAG322:
mthi $1
sra $2, $1, 13
sll $0, $0, 0
sll $0, $0, 0
TAG323:
subu $3, $1, $1
mflo $3
bgez $3, TAG324
lb $1, 0($3)
TAG324:
lb $1, 0($1)
srav $1, $1, $1
srl $4, $1, 0
srl $3, $1, 13
TAG325:
lui $4, 4
mfhi $1
mflo $1
addiu $3, $4, 15
TAG326:
subu $1, $3, $3
andi $2, $1, 3
mflo $1
bgez $1, TAG327
TAG327:
mfhi $3
mthi $3
bgez $3, TAG328
lui $4, 13
TAG328:
sll $0, $0, 0
beq $3, $3, TAG329
sll $0, $0, 0
sh $3, 0($4)
TAG329:
subu $1, $3, $3
sll $0, $0, 0
mtlo $3
blez $1, TAG330
TAG330:
mtlo $3
bgtz $3, TAG331
addiu $2, $3, 14
or $4, $2, $2
TAG331:
blez $4, TAG332
subu $4, $4, $4
mtlo $4
multu $4, $4
TAG332:
mthi $4
sub $4, $4, $4
lb $2, 0($4)
sw $4, 0($4)
TAG333:
mfhi $1
mfhi $4
mfhi $3
beq $1, $4, TAG334
TAG334:
sll $4, $3, 11
beq $3, $4, TAG335
sltiu $4, $4, 5
sh $4, 0($4)
TAG335:
xor $1, $4, $4
lui $1, 6
mfhi $3
lbu $4, 0($3)
TAG336:
mfhi $2
addi $2, $2, 14
bltz $2, TAG337
ori $4, $2, 9
TAG337:
bgez $4, TAG338
lui $3, 10
mult $4, $3
mtlo $3
TAG338:
lui $3, 6
mtlo $3
slti $1, $3, 7
mult $3, $1
TAG339:
srl $1, $1, 3
bgez $1, TAG340
multu $1, $1
lhu $3, 0($1)
TAG340:
mfhi $3
sltiu $2, $3, 6
blez $2, TAG341
ori $3, $3, 9
TAG341:
mtlo $3
lui $2, 12
lb $2, 0($3)
srl $3, $3, 10
TAG342:
ori $1, $3, 14
or $3, $3, $3
beq $3, $1, TAG343
sltu $4, $1, $1
TAG343:
lw $2, 0($4)
bltz $4, TAG344
lh $3, 0($4)
beq $3, $4, TAG344
TAG344:
sra $4, $3, 9
sub $4, $3, $4
beq $3, $4, TAG345
mthi $3
TAG345:
sra $4, $4, 5
lhu $1, 0($4)
add $3, $4, $1
bgez $3, TAG346
TAG346:
subu $3, $3, $3
lui $1, 14
mflo $2
slti $4, $3, 15
TAG347:
lui $3, 10
sll $0, $0, 0
beq $2, $2, TAG348
lui $1, 1
TAG348:
beq $1, $1, TAG349
srl $4, $1, 12
mthi $1
sb $1, 0($1)
TAG349:
multu $4, $4
andi $2, $4, 0
mthi $2
mthi $2
TAG350:
mtlo $2
mult $2, $2
lui $2, 14
sll $0, $0, 0
TAG351:
bltz $1, TAG352
lui $1, 1
xori $1, $1, 6
bne $1, $1, TAG352
TAG352:
lui $1, 11
beq $1, $1, TAG353
sll $0, $0, 0
lbu $3, 0($1)
TAG353:
subu $2, $3, $3
bne $2, $2, TAG354
mflo $1
lh $4, 0($2)
TAG354:
multu $4, $4
ori $2, $4, 6
bne $4, $2, TAG355
slt $3, $4, $2
TAG355:
bgtz $3, TAG356
div $3, $3
multu $3, $3
mthi $3
TAG356:
bgez $3, TAG357
lbu $1, 0($3)
mtlo $1
sw $1, 0($3)
TAG357:
mthi $1
ori $4, $1, 13
mult $1, $4
andi $2, $4, 4
TAG358:
beq $2, $2, TAG359
srl $3, $2, 2
mfhi $2
lb $3, 0($2)
TAG359:
lb $1, 0($3)
addiu $3, $3, 14
blez $1, TAG360
sra $1, $1, 4
TAG360:
mtlo $1
sh $1, 0($1)
bgez $1, TAG361
mfhi $3
TAG361:
lui $1, 6
sb $3, 0($3)
lui $2, 15
mult $2, $2
TAG362:
addiu $1, $2, 13
mtlo $1
beq $1, $1, TAG363
sll $0, $0, 0
TAG363:
sll $0, $0, 0
divu $1, $1
xor $1, $1, $1
mthi $1
TAG364:
sltu $3, $1, $1
mflo $3
slt $4, $3, $1
bgtz $3, TAG365
TAG365:
mult $4, $4
mflo $2
mfhi $1
and $4, $1, $2
TAG366:
srl $1, $4, 4
lhu $2, 0($4)
lhu $1, 0($2)
srlv $3, $1, $1
TAG367:
sllv $1, $3, $3
multu $3, $1
lui $1, 3
multu $1, $3
TAG368:
sll $0, $0, 0
xor $4, $1, $1
slt $3, $4, $4
beq $1, $3, TAG369
TAG369:
mflo $4
addu $2, $4, $3
mult $2, $3
mfhi $4
TAG370:
sll $3, $4, 9
addiu $2, $3, 8
multu $4, $2
mthi $2
TAG371:
subu $4, $2, $2
lhu $4, 0($4)
bltz $4, TAG372
mthi $4
TAG372:
addiu $4, $4, 4
nor $2, $4, $4
addiu $4, $4, 12
srlv $2, $4, $4
TAG373:
mfhi $1
mtlo $1
sra $3, $2, 10
andi $1, $3, 13
TAG374:
bne $1, $1, TAG375
mflo $1
lbu $1, 0($1)
andi $1, $1, 12
TAG375:
bgez $1, TAG376
lbu $3, 0($1)
sll $1, $1, 6
sll $1, $3, 11
TAG376:
bne $1, $1, TAG377
mthi $1
sb $1, 0($1)
sh $1, 0($1)
TAG377:
bne $1, $1, TAG378
srl $1, $1, 9
bgez $1, TAG378
slt $3, $1, $1
TAG378:
bgtz $3, TAG379
lui $1, 14
mflo $3
mflo $1
TAG379:
multu $1, $1
srl $2, $1, 6
lui $1, 10
multu $1, $1
TAG380:
xori $1, $1, 13
beq $1, $1, TAG381
xori $2, $1, 9
bne $1, $2, TAG381
TAG381:
divu $2, $2
lui $4, 15
beq $2, $2, TAG382
sll $0, $0, 0
TAG382:
sw $3, 0($3)
sb $3, 0($3)
mflo $3
bgez $3, TAG383
TAG383:
addu $3, $3, $3
sb $3, 0($3)
divu $3, $3
beq $3, $3, TAG384
TAG384:
lui $3, 14
mflo $1
mfhi $3
bgtz $3, TAG385
TAG385:
sltiu $2, $3, 15
xor $2, $3, $2
blez $2, TAG386
addu $2, $2, $2
TAG386:
mtlo $2
mtlo $2
sh $2, 0($2)
subu $3, $2, $2
TAG387:
sh $3, 0($3)
ori $4, $3, 3
lb $2, 0($4)
mthi $4
TAG388:
lui $1, 2
blez $1, TAG389
lui $4, 4
mfhi $2
TAG389:
bne $2, $2, TAG390
divu $2, $2
mtlo $2
sb $2, 0($2)
TAG390:
mflo $1
bgtz $1, TAG391
sll $1, $1, 12
lui $4, 3
TAG391:
divu $4, $4
mfhi $3
mflo $4
lui $1, 14
TAG392:
mfhi $2
mthi $1
sh $1, 0($2)
sltu $3, $2, $1
TAG393:
lbu $2, 0($3)
bne $3, $3, TAG394
and $4, $2, $2
blez $3, TAG394
TAG394:
xori $2, $4, 10
blez $2, TAG395
lui $1, 2
blez $4, TAG395
TAG395:
lui $3, 13
beq $1, $1, TAG396
sll $0, $0, 0
blez $3, TAG396
TAG396:
mfhi $1
mflo $2
mthi $2
multu $3, $2
TAG397:
lui $1, 13
mthi $1
bgtz $1, TAG398
lui $2, 3
TAG398:
blez $2, TAG399
mthi $2
bgez $2, TAG399
sll $0, $0, 0
TAG399:
ori $1, $2, 15
slti $1, $2, 0
andi $2, $2, 12
bltz $2, TAG400
TAG400:
subu $3, $2, $2
lui $3, 13
lb $2, 0($2)
multu $3, $2
TAG401:
sh $2, 0($2)
or $4, $2, $2
ori $1, $4, 1
sra $4, $1, 6
TAG402:
lui $1, 15
srav $1, $1, $4
sll $0, $0, 0
blez $1, TAG403
TAG403:
subu $4, $1, $1
multu $4, $4
beq $4, $4, TAG404
lui $1, 7
TAG404:
mthi $1
beq $1, $1, TAG405
mult $1, $1
multu $1, $1
TAG405:
lui $2, 14
mfhi $3
bgtz $3, TAG406
addu $1, $3, $3
TAG406:
blez $1, TAG407
mflo $2
mtlo $2
lhu $3, 0($2)
TAG407:
lui $4, 12
beq $4, $4, TAG408
sll $0, $0, 0
bgez $4, TAG408
TAG408:
mtlo $2
sra $3, $2, 3
mfhi $1
sb $3, 0($1)
TAG409:
mfhi $4
mfhi $2
mflo $1
bltz $1, TAG410
TAG410:
multu $1, $1
add $1, $1, $1
lui $3, 2
mthi $3
TAG411:
sll $3, $3, 8
lui $4, 6
mthi $3
addu $3, $3, $4
TAG412:
sll $0, $0, 0
lui $3, 8
div $3, $3
and $3, $3, $3
TAG413:
mfhi $3
mflo $3
mfhi $2
lb $1, 0($2)
TAG414:
sh $1, 0($1)
mthi $1
mthi $1
mtlo $1
TAG415:
bgtz $1, TAG416
multu $1, $1
beq $1, $1, TAG416
mult $1, $1
TAG416:
lh $4, 0($1)
lui $3, 0
lui $1, 5
sh $1, 0($3)
TAG417:
divu $1, $1
sll $0, $0, 0
ori $1, $1, 14
multu $1, $1
TAG418:
bgez $1, TAG419
sll $0, $0, 0
mthi $1
ori $3, $1, 2
TAG419:
ori $1, $3, 2
blez $1, TAG420
lbu $2, 0($3)
lui $2, 15
TAG420:
sll $0, $0, 0
lb $2, 0($1)
sltu $1, $2, $1
lw $4, 0($1)
TAG421:
sll $0, $0, 0
sb $2, 0($2)
sll $0, $0, 0
lh $3, 0($2)
TAG422:
divu $3, $3
lb $2, -770($3)
lui $2, 15
sll $0, $0, 0
TAG423:
mtlo $2
bltz $2, TAG424
mtlo $2
sll $0, $0, 0
TAG424:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
sll $0, $0, 0
TAG425:
sh $1, 0($1)
blez $1, TAG426
mthi $1
lhu $2, 0($1)
TAG426:
srav $4, $2, $2
srl $1, $4, 4
addiu $2, $4, 1
multu $2, $2
TAG427:
sll $0, $0, 0
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG428:
lui $4, 8
mflo $4
mtlo $4
mfhi $4
TAG429:
mflo $3
mthi $3
bne $3, $4, TAG430
mtlo $3
TAG430:
div $3, $3
lb $3, 0($3)
sw $3, 0($3)
mflo $4
TAG431:
srlv $3, $4, $4
bgez $4, TAG432
mfhi $4
mult $4, $4
TAG432:
sltu $3, $4, $4
blez $3, TAG433
lui $4, 6
lw $2, 0($4)
TAG433:
bne $2, $2, TAG434
lui $2, 1
lui $4, 9
ori $3, $2, 12
TAG434:
sll $1, $3, 7
and $2, $3, $1
addiu $4, $1, 11
beq $4, $4, TAG435
TAG435:
sll $0, $0, 0
mfhi $3
mthi $4
sllv $4, $3, $3
TAG436:
lbu $4, 0($4)
slt $2, $4, $4
sh $4, 0($2)
bgez $4, TAG437
TAG437:
lui $4, 5
lui $1, 8
sra $4, $2, 4
lui $2, 6
TAG438:
mfhi $2
sll $0, $0, 0
sll $0, $0, 0
sw $2, 0($3)
TAG439:
mfhi $1
addiu $2, $1, 0
lbu $2, 0($3)
bltz $2, TAG440
TAG440:
srl $2, $2, 3
addiu $3, $2, 8
bltz $3, TAG441
lui $3, 5
TAG441:
sll $0, $0, 0
lui $3, 13
sra $1, $3, 7
lui $3, 1
TAG442:
bltz $3, TAG443
mtlo $3
sll $0, $0, 0
mthi $3
TAG443:
mfhi $2
lui $3, 13
mthi $2
mfhi $2
TAG444:
sll $0, $0, 0
sra $2, $2, 11
sra $3, $1, 9
sb $2, -6656($1)
TAG445:
mthi $3
bgtz $3, TAG446
lui $2, 12
sw $2, 0($3)
TAG446:
div $2, $2
subu $2, $2, $2
or $1, $2, $2
lb $4, 0($1)
TAG447:
subu $4, $4, $4
multu $4, $4
mthi $4
addu $3, $4, $4
TAG448:
lui $4, 4
and $3, $4, $3
mtlo $4
mtlo $3
TAG449:
mfhi $4
mflo $1
mtlo $4
beq $1, $1, TAG450
TAG450:
mtlo $1
lui $1, 8
sll $3, $1, 1
beq $3, $3, TAG451
TAG451:
sll $2, $3, 4
mflo $4
mthi $3
sw $4, 0($4)
TAG452:
bgez $4, TAG453
lb $3, 0($4)
sltiu $4, $3, 8
lui $3, 9
TAG453:
sb $3, 0($3)
mfhi $2
mtlo $3
sra $2, $3, 3
TAG454:
lb $2, 0($2)
bltz $2, TAG455
sh $2, 0($2)
mtlo $2
TAG455:
mfhi $1
mflo $2
xor $3, $1, $2
mthi $3
TAG456:
sll $0, $0, 0
sll $0, $0, 0
lui $3, 10
sll $0, $0, 0
TAG457:
sltu $1, $2, $2
mthi $2
lbu $2, 0($1)
sh $2, 0($2)
TAG458:
mthi $2
xor $1, $2, $2
bgez $1, TAG459
lhu $1, 0($1)
TAG459:
lui $3, 15
mtlo $3
lui $3, 7
divu $3, $3
TAG460:
bltz $3, TAG461
sll $0, $0, 0
mtlo $3
sra $1, $3, 5
TAG461:
srl $2, $1, 2
bltz $1, TAG462
lbu $4, -3584($2)
sh $4, -3584($2)
TAG462:
multu $4, $4
blez $4, TAG463
lui $2, 13
bne $4, $2, TAG463
TAG463:
sll $0, $0, 0
beq $2, $2, TAG464
sll $0, $0, 0
mthi $2
TAG464:
srlv $4, $2, $2
sra $3, $2, 12
beq $2, $4, TAG465
subu $4, $3, $4
TAG465:
subu $2, $4, $4
nor $1, $2, $4
lui $2, 4
lui $3, 1
TAG466:
sll $0, $0, 0
lui $4, 2
sll $0, $0, 0
bne $4, $3, TAG467
TAG467:
lui $2, 15
mult $2, $2
sll $0, $0, 0
mthi $2
TAG468:
srlv $2, $3, $3
mflo $3
divu $3, $2
xor $2, $3, $3
TAG469:
bgtz $2, TAG470
sh $2, 0($2)
mthi $2
lbu $4, 0($2)
TAG470:
lui $4, 14
bgez $4, TAG471
sltu $3, $4, $4
bgtz $4, TAG471
TAG471:
lb $1, 0($3)
multu $3, $1
mthi $1
and $3, $1, $1
TAG472:
sltu $1, $3, $3
mtlo $3
lhu $1, 0($3)
lui $1, 10
TAG473:
beq $1, $1, TAG474
lui $1, 14
mult $1, $1
divu $1, $1
TAG474:
beq $1, $1, TAG475
sll $0, $0, 0
beq $1, $1, TAG475
mflo $1
TAG475:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 4
bgtz $2, TAG476
TAG476:
addiu $1, $2, 15
bgtz $2, TAG477
sll $0, $0, 0
bgtz $2, TAG477
TAG477:
mthi $4
mthi $4
blez $4, TAG478
mflo $1
TAG478:
mtlo $1
sb $1, 0($1)
mult $1, $1
srlv $1, $1, $1
TAG479:
mflo $2
lui $4, 8
bltz $4, TAG480
add $1, $2, $4
TAG480:
lui $2, 5
bne $1, $2, TAG481
lui $4, 1
sllv $3, $2, $4
TAG481:
mtlo $3
lbu $3, 0($3)
lh $4, 0($3)
bne $4, $3, TAG482
TAG482:
mtlo $4
sub $1, $4, $4
beq $1, $1, TAG483
lhu $2, 0($4)
TAG483:
multu $2, $2
mult $2, $2
mthi $2
mfhi $2
TAG484:
multu $2, $2
bne $2, $2, TAG485
add $4, $2, $2
beq $2, $4, TAG485
TAG485:
sra $4, $4, 5
sh $4, 0($4)
bgez $4, TAG486
multu $4, $4
TAG486:
srav $3, $4, $4
lui $3, 2
sw $4, 0($4)
mfhi $4
TAG487:
multu $4, $4
xori $4, $4, 3
beq $4, $4, TAG488
lb $2, 0($4)
TAG488:
beq $2, $2, TAG489
lb $2, 0($2)
bltz $2, TAG489
slti $4, $2, 1
TAG489:
sb $4, 0($4)
blez $4, TAG490
sb $4, 0($4)
lb $4, 0($4)
TAG490:
lb $2, 0($4)
divu $4, $2
beq $4, $4, TAG491
divu $2, $4
TAG491:
lui $3, 14
lui $1, 2
bltz $1, TAG492
srlv $2, $1, $3
TAG492:
mfhi $3
mult $2, $3
lb $4, 0($3)
mult $2, $4
TAG493:
lhu $3, 0($4)
blez $4, TAG494
multu $4, $3
bgtz $3, TAG494
TAG494:
lbu $1, 0($3)
mult $3, $1
bne $3, $3, TAG495
slt $3, $3, $3
TAG495:
beq $3, $3, TAG496
mthi $3
bne $3, $3, TAG496
sw $3, 0($3)
TAG496:
beq $3, $3, TAG497
multu $3, $3
ori $4, $3, 14
lui $2, 11
TAG497:
mtlo $2
divu $2, $2
subu $1, $2, $2
lui $4, 2
TAG498:
bne $4, $4, TAG499
lui $3, 9
bne $4, $3, TAG499
lui $4, 8
TAG499:
sll $0, $0, 0
sll $0, $0, 0
slt $1, $3, $4
lui $3, 8
TAG500:
bltz $3, TAG501
mthi $3
lui $3, 4
srl $1, $3, 1
TAG501:
bne $1, $1, TAG502
mthi $1
sra $1, $1, 3
sw $1, -16384($1)
TAG502:
bgez $1, TAG503
lbu $3, -16384($1)
div $3, $3
lh $1, 0($1)
TAG503:
bne $1, $1, TAG504
sltiu $4, $1, 0
sra $2, $4, 4
bne $4, $4, TAG504
TAG504:
mtlo $2
mtlo $2
xor $3, $2, $2
sh $3, 0($3)
TAG505:
mthi $3
addiu $4, $3, 7
lhu $2, 0($3)
bne $2, $3, TAG506
TAG506:
lui $4, 13
lui $2, 5
mflo $2
bne $2, $2, TAG507
TAG507:
mflo $3
beq $2, $3, TAG508
multu $2, $3
beq $2, $2, TAG508
TAG508:
multu $3, $3
mthi $3
mflo $2
mtlo $2
TAG509:
mfhi $4
multu $2, $2
lui $3, 13
andi $2, $2, 12
TAG510:
bgtz $2, TAG511
lui $3, 14
and $2, $2, $2
mtlo $2
TAG511:
bltz $2, TAG512
multu $2, $2
slt $2, $2, $2
multu $2, $2
TAG512:
lui $4, 11
mtlo $4
sb $4, 0($2)
nor $4, $2, $4
TAG513:
sll $0, $0, 0
xori $1, $4, 5
sll $0, $0, 0
sll $0, $0, 0
TAG514:
addu $2, $3, $3
mthi $3
sll $0, $0, 0
mfhi $3
TAG515:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG516:
srl $3, $3, 1
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG517:
lui $3, 11
div $3, $3
divu $3, $3
mtlo $3
TAG518:
mflo $3
beq $3, $3, TAG519
or $1, $3, $3
lw $2, 0($3)
TAG519:
sll $0, $0, 0
mflo $4
sll $0, $0, 0
lui $3, 3
TAG520:
mtlo $3
mfhi $3
bne $3, $3, TAG521
mfhi $3
TAG521:
sw $3, 0($3)
mthi $3
lbu $4, 0($3)
mflo $3
TAG522:
sll $0, $0, 0
mflo $2
mfhi $3
xori $4, $2, 6
TAG523:
sll $0, $0, 0
bgez $4, TAG524
mthi $4
lh $4, 0($4)
TAG524:
bltz $4, TAG525
sll $0, $0, 0
lui $4, 8
xori $1, $4, 8
TAG525:
mflo $1
div $1, $1
sll $0, $0, 0
bltz $1, TAG526
TAG526:
mfhi $3
mthi $3
bgez $3, TAG527
sll $0, $0, 0
TAG527:
beq $3, $3, TAG528
mfhi $2
blez $2, TAG528
mflo $4
TAG528:
sltu $3, $4, $4
bgtz $4, TAG529
multu $4, $3
addi $2, $4, 12
TAG529:
mfhi $1
lb $2, 0($1)
multu $2, $2
subu $4, $1, $2
TAG530:
addi $3, $4, 0
mflo $2
srav $4, $3, $2
sb $3, 0($4)
TAG531:
mfhi $4
bgtz $4, TAG532
xori $1, $4, 2
sub $2, $4, $4
TAG532:
sb $2, 0($2)
add $4, $2, $2
lui $3, 9
and $2, $4, $3
TAG533:
bne $2, $2, TAG534
mflo $3
lhu $2, 0($3)
lbu $4, 0($2)
TAG534:
lui $2, 6
bltz $2, TAG535
slti $4, $2, 0
sll $0, $0, 0
TAG535:
lui $3, 3
srav $3, $3, $3
mfhi $1
lui $1, 10
TAG536:
and $4, $1, $1
mthi $1
mtlo $4
bgez $4, TAG537
TAG537:
divu $4, $4
mfhi $1
mflo $1
sll $0, $0, 0
TAG538:
bne $3, $3, TAG539
and $2, $3, $3
mfhi $3
lb $4, 0($3)
TAG539:
lui $4, 10
sltu $3, $4, $4
mthi $4
bgez $3, TAG540
TAG540:
sw $3, 0($3)
bgtz $3, TAG541
sw $3, 0($3)
lui $1, 11
TAG541:
sll $0, $0, 0
andi $4, $1, 5
mflo $3
slti $3, $3, 1
TAG542:
or $1, $3, $3
bne $3, $1, TAG543
multu $3, $3
lw $1, 0($1)
TAG543:
lui $2, 6
addiu $4, $1, 2
sll $0, $0, 0
beq $4, $4, TAG544
TAG544:
sllv $2, $4, $4
lui $4, 12
lui $4, 8
sll $0, $0, 0
TAG545:
mflo $2
addiu $1, $2, 1
ori $3, $4, 1
bne $2, $4, TAG546
TAG546:
sll $0, $0, 0
mult $1, $3
bltz $1, TAG547
srlv $2, $3, $3
TAG547:
mflo $1
sll $0, $0, 0
subu $3, $1, $2
lui $2, 10
TAG548:
lui $4, 0
addu $4, $4, $4
mthi $2
mfhi $1
TAG549:
bne $1, $1, TAG550
ori $2, $1, 5
sll $0, $0, 0
bgez $1, TAG550
TAG550:
xori $1, $2, 0
mthi $1
mtlo $2
mthi $1
TAG551:
sll $0, $0, 0
bne $1, $1, TAG552
mfhi $3
bne $3, $3, TAG552
TAG552:
sll $0, $0, 0
beq $3, $3, TAG553
mflo $4
subu $1, $2, $2
TAG553:
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG554
mflo $2
TAG554:
mthi $2
sll $0, $0, 0
div $2, $2
subu $1, $2, $2
TAG555:
blez $1, TAG556
sll $3, $1, 10
ori $4, $1, 13
lh $3, 0($4)
TAG556:
andi $2, $3, 12
bgtz $3, TAG557
addiu $3, $3, 8
sltu $2, $3, $2
TAG557:
bne $2, $2, TAG558
mult $2, $2
multu $2, $2
mflo $2
TAG558:
xori $3, $2, 13
srav $4, $2, $2
bne $3, $3, TAG559
sb $2, 0($3)
TAG559:
sh $4, 0($4)
lbu $3, 0($4)
lui $4, 6
mtlo $4
TAG560:
bne $4, $4, TAG561
srav $4, $4, $4
mflo $4
sra $1, $4, 6
TAG561:
mthi $1
mflo $1
mfhi $1
mthi $1
TAG562:
multu $1, $1
bne $1, $1, TAG563
addu $3, $1, $1
sll $3, $1, 14
TAG563:
bgez $3, TAG564
mthi $3
lhu $1, 0($3)
div $1, $1
TAG564:
lui $2, 10
sll $0, $0, 0
slti $1, $1, 15
mthi $1
TAG565:
add $4, $1, $1
xori $4, $4, 10
multu $4, $1
sb $4, 0($4)
TAG566:
sb $4, 0($4)
mflo $1
bgez $1, TAG567
lbu $4, 0($4)
TAG567:
mthi $4
and $1, $4, $4
mflo $1
mult $1, $1
TAG568:
multu $1, $1
bne $1, $1, TAG569
mthi $1
lh $1, 0($1)
TAG569:
mfhi $2
multu $1, $2
bgez $1, TAG570
mtlo $2
TAG570:
mult $2, $2
bne $2, $2, TAG571
multu $2, $2
lui $3, 9
TAG571:
multu $3, $3
mult $3, $3
addu $3, $3, $3
mflo $1
TAG572:
mflo $2
sub $1, $1, $1
slt $4, $2, $1
bgez $1, TAG573
TAG573:
sllv $1, $4, $4
multu $4, $4
bltz $1, TAG574
mthi $1
TAG574:
xori $2, $1, 9
multu $2, $1
sb $2, 0($1)
multu $2, $2
TAG575:
bne $2, $2, TAG576
lbu $2, 0($2)
mfhi $1
beq $1, $1, TAG576
TAG576:
mthi $1
mult $1, $1
bgez $1, TAG577
mfhi $1
TAG577:
slti $2, $1, 14
bgez $2, TAG578
sb $2, 0($2)
andi $2, $1, 11
TAG578:
sltiu $2, $2, 12
beq $2, $2, TAG579
lui $1, 4
beq $2, $1, TAG579
TAG579:
addu $2, $1, $1
beq $2, $2, TAG580
mtlo $2
andi $4, $1, 0
TAG580:
srav $4, $4, $4
mflo $2
sll $1, $2, 3
multu $4, $4
TAG581:
ori $4, $1, 6
lui $2, 1
xori $1, $4, 10
mthi $1
TAG582:
divu $1, $1
xor $1, $1, $1
bgtz $1, TAG583
sltu $3, $1, $1
TAG583:
mthi $3
bgtz $3, TAG584
sw $3, 0($3)
lh $3, 0($3)
TAG584:
lhu $1, 0($3)
sh $1, 0($1)
sh $1, 0($1)
sh $3, 0($3)
TAG585:
beq $1, $1, TAG586
xor $3, $1, $1
divu $1, $3
mtlo $3
TAG586:
bne $3, $3, TAG587
mtlo $3
bne $3, $3, TAG587
andi $2, $3, 8
TAG587:
mfhi $4
sw $2, 0($4)
multu $4, $2
bgtz $4, TAG588
TAG588:
sh $4, 0($4)
sllv $2, $4, $4
beq $2, $4, TAG589
mtlo $2
TAG589:
beq $2, $2, TAG590
lb $3, 0($2)
srav $2, $3, $3
mtlo $2
TAG590:
sltiu $4, $2, 7
lb $4, 0($4)
mfhi $4
mflo $3
TAG591:
xori $4, $3, 2
bne $3, $4, TAG592
sb $4, 0($4)
blez $3, TAG592
TAG592:
lui $2, 15
sll $3, $4, 8
addiu $1, $2, 15
multu $3, $4
TAG593:
sll $0, $0, 0
mflo $4
bgtz $4, TAG594
srl $3, $4, 3
TAG594:
sh $3, 0($3)
mthi $3
mtlo $3
subu $4, $3, $3
TAG595:
sra $2, $4, 5
beq $4, $2, TAG596
mtlo $4
mtlo $4
TAG596:
lui $4, 0
lhu $4, 0($2)
sh $4, 0($2)
addi $4, $2, 11
TAG597:
lbu $1, 0($4)
lb $2, 0($4)
sb $4, 0($4)
lui $3, 0
TAG598:
multu $3, $3
beq $3, $3, TAG599
mflo $2
lb $3, 0($3)
TAG599:
sll $3, $3, 4
sw $3, 0($3)
lbu $4, 0($3)
mtlo $3
TAG600:
bltz $4, TAG601
lhu $3, 0($4)
bgtz $3, TAG601
multu $3, $4
TAG601:
bltz $3, TAG602
sh $3, 0($3)
mfhi $4
mult $3, $4
TAG602:
lui $2, 5
mthi $2
lui $3, 15
blez $2, TAG603
TAG603:
mtlo $3
lui $3, 6
sll $0, $0, 0
sll $0, $0, 0
TAG604:
mtlo $3
sll $0, $0, 0
lui $3, 5
xori $4, $3, 3
TAG605:
mtlo $4
divu $4, $4
sltiu $2, $4, 3
blez $4, TAG606
TAG606:
addi $3, $2, 3
mfhi $3
sw $3, 0($3)
sb $2, 0($3)
TAG607:
bne $3, $3, TAG608
srl $1, $3, 13
add $4, $3, $3
lh $4, 0($4)
TAG608:
multu $4, $4
bne $4, $4, TAG609
slti $3, $4, 3
mthi $3
TAG609:
mfhi $3
beq $3, $3, TAG610
lui $3, 8
sb $3, 0($3)
TAG610:
beq $3, $3, TAG611
mult $3, $3
div $3, $3
blez $3, TAG611
TAG611:
sll $0, $0, 0
bgtz $3, TAG612
mtlo $3
beq $3, $3, TAG612
TAG612:
sra $4, $3, 5
lw $1, -16384($4)
mfhi $3
srav $4, $3, $4
TAG613:
sll $1, $4, 10
lui $1, 5
mtlo $1
mflo $4
TAG614:
sra $3, $4, 9
lui $4, 3
bne $4, $3, TAG615
sll $0, $0, 0
TAG615:
div $4, $4
sll $0, $0, 0
sltiu $3, $4, 2
srav $1, $3, $4
TAG616:
mtlo $1
sw $1, 0($1)
sltiu $4, $1, 10
lui $1, 11
TAG617:
mthi $1
bne $1, $1, TAG618
addiu $4, $1, 9
lui $1, 4
TAG618:
andi $2, $1, 10
lui $4, 7
sll $0, $0, 0
lui $1, 12
TAG619:
blez $1, TAG620
mflo $2
mflo $4
mfhi $1
TAG620:
sll $0, $0, 0
lui $4, 2
beq $1, $4, TAG621
and $4, $4, $1
TAG621:
mtlo $4
slt $1, $4, $4
lui $2, 15
div $4, $4
TAG622:
subu $3, $2, $2
lw $3, 0($3)
nor $2, $3, $3
mthi $3
TAG623:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG624
mflo $2
TAG624:
subu $1, $2, $2
addu $3, $1, $1
lbu $1, 0($2)
mflo $1
TAG625:
lui $2, 12
blez $1, TAG626
sltiu $4, $2, 12
bgez $4, TAG626
TAG626:
ori $1, $4, 7
mthi $1
lui $2, 3
lui $2, 0
TAG627:
beq $2, $2, TAG628
slt $2, $2, $2
addiu $3, $2, 0
subu $2, $2, $2
TAG628:
nor $2, $2, $2
lh $2, 1($2)
sllv $1, $2, $2
lw $1, 0($2)
TAG629:
lui $3, 13
sra $2, $1, 8
lui $1, 11
sll $0, $0, 0
TAG630:
beq $1, $1, TAG631
sltu $4, $1, $1
lhu $3, 0($4)
sll $2, $4, 2
TAG631:
lw $3, 0($2)
mfhi $2
srl $2, $2, 12
mtlo $2
TAG632:
bltz $2, TAG633
lw $2, 0($2)
lh $2, 0($2)
mtlo $2
TAG633:
bne $2, $2, TAG634
mtlo $2
sltiu $1, $2, 13
bne $1, $2, TAG634
TAG634:
lui $2, 1
mtlo $2
mthi $1
bne $2, $1, TAG635
TAG635:
lui $2, 5
beq $2, $2, TAG636
xori $3, $2, 15
div $3, $3
TAG636:
srlv $1, $3, $3
srlv $4, $1, $1
mtlo $3
bltz $1, TAG637
TAG637:
srlv $1, $4, $4
sw $4, 0($4)
mthi $4
sb $4, 0($4)
TAG638:
bgez $1, TAG639
lb $4, 0($1)
blez $1, TAG639
lui $4, 6
TAG639:
mfhi $3
srl $1, $3, 9
bne $1, $1, TAG640
sb $3, 0($3)
TAG640:
blez $1, TAG641
mflo $4
bgez $4, TAG641
lui $2, 8
TAG641:
bgtz $2, TAG642
sll $0, $0, 0
mtlo $2
beq $2, $2, TAG642
TAG642:
mtlo $2
lui $3, 8
subu $3, $3, $2
mtlo $2
TAG643:
mult $3, $3
addiu $1, $3, 9
lui $1, 0
mfhi $1
TAG644:
lui $1, 11
blez $1, TAG645
sll $0, $0, 0
bgtz $4, TAG645
TAG645:
mthi $4
lui $2, 14
beq $2, $4, TAG646
sll $0, $0, 0
TAG646:
sll $0, $0, 0
mflo $4
bne $4, $4, TAG647
multu $4, $2
TAG647:
lui $1, 14
bgez $4, TAG648
lw $4, 0($4)
bltz $4, TAG648
TAG648:
mfhi $3
multu $4, $4
mult $4, $4
sb $3, 0($3)
TAG649:
addu $1, $3, $3
beq $3, $3, TAG650
lw $3, 0($3)
mthi $3
TAG650:
lhu $1, 0($3)
sw $3, 0($3)
blez $3, TAG651
sltiu $2, $1, 7
TAG651:
bne $2, $2, TAG652
lb $3, 0($2)
andi $4, $2, 3
div $3, $4
TAG652:
lui $3, 13
ori $4, $4, 13
mflo $3
blez $3, TAG653
TAG653:
srl $3, $3, 1
mflo $1
lb $4, 0($3)
bltz $3, TAG654
TAG654:
lbu $3, 0($4)
slt $3, $3, $4
sra $2, $4, 13
mtlo $3
TAG655:
subu $1, $2, $2
bgtz $2, TAG656
lui $2, 7
sll $0, $0, 0
TAG656:
blez $1, TAG657
sw $1, 0($1)
mfhi $3
beq $1, $1, TAG657
TAG657:
lhu $3, 0($3)
addiu $4, $3, 3
sllv $2, $3, $3
beq $2, $2, TAG658
TAG658:
add $1, $2, $2
sllv $3, $2, $1
sb $3, 0($3)
lh $1, 0($3)
TAG659:
lh $4, 0($1)
mflo $2
sw $4, 0($4)
ori $1, $1, 15
TAG660:
sb $1, 0($1)
mtlo $1
div $1, $1
sllv $2, $1, $1
TAG661:
mflo $3
bne $3, $2, TAG662
lb $2, 0($3)
bne $2, $2, TAG662
TAG662:
sb $2, 0($2)
multu $2, $2
bltz $2, TAG663
andi $3, $2, 11
TAG663:
ori $2, $3, 12
sw $3, 0($2)
lui $1, 0
sh $2, 0($1)
TAG664:
andi $2, $1, 4
mthi $1
lui $3, 11
bgtz $1, TAG665
TAG665:
xor $3, $3, $3
lbu $2, 0($3)
bne $3, $3, TAG666
sub $1, $3, $3
TAG666:
ori $4, $1, 0
mtlo $1
bne $4, $4, TAG667
sw $1, 0($4)
TAG667:
multu $4, $4
mult $4, $4
sra $3, $4, 7
bgtz $3, TAG668
TAG668:
lbu $4, 0($3)
lui $2, 0
mfhi $3
beq $2, $3, TAG669
TAG669:
sltiu $2, $3, 10
lui $4, 15
mflo $4
mflo $4
TAG670:
lw $4, 0($4)
bgtz $4, TAG671
mtlo $4
bne $4, $4, TAG671
TAG671:
xori $2, $4, 15
sw $2, 0($4)
blez $4, TAG672
lbu $2, 0($2)
TAG672:
or $4, $2, $2
mflo $4
lui $4, 10
xor $2, $4, $4
TAG673:
mflo $3
lui $2, 2
mthi $2
xori $1, $2, 15
TAG674:
bne $1, $1, TAG675
mflo $2
mflo $3
subu $4, $1, $3
TAG675:
sll $0, $0, 0
sltiu $2, $4, 11
sll $0, $0, 0
bne $4, $4, TAG676
TAG676:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
TAG677:
div $1, $1
slt $4, $1, $1
mflo $3
addiu $2, $1, 7
TAG678:
bgez $2, TAG679
sll $0, $0, 0
lui $4, 12
slt $3, $4, $2
TAG679:
lui $2, 12
bne $2, $2, TAG680
addu $2, $2, $2
beq $2, $3, TAG680
TAG680:
divu $2, $2
nor $2, $2, $2
lui $2, 10
sll $0, $0, 0
TAG681:
sll $2, $1, 13
sltu $3, $1, $1
nor $1, $2, $2
addiu $4, $1, 10
TAG682:
mtlo $4
ori $2, $4, 14
sll $0, $0, 0
bltz $4, TAG683
TAG683:
lui $1, 0
bgtz $1, TAG684
sltu $3, $2, $2
bltz $3, TAG684
TAG684:
lui $3, 10
sll $0, $0, 0
beq $3, $3, TAG685
multu $3, $3
TAG685:
or $4, $1, $1
lui $3, 1
bne $1, $1, TAG686
mfhi $4
TAG686:
bne $4, $4, TAG687
sltiu $2, $4, 7
mfhi $2
sw $2, 0($4)
TAG687:
sllv $3, $2, $2
bgtz $3, TAG688
srl $3, $2, 11
beq $3, $3, TAG688
TAG688:
mtlo $3
beq $3, $3, TAG689
sw $3, 0($3)
addu $2, $3, $3
TAG689:
blez $2, TAG690
srlv $4, $2, $2
sra $3, $2, 13
mflo $4
TAG690:
blez $4, TAG691
sw $4, 0($4)
sh $4, 0($4)
sh $4, 0($4)
TAG691:
mthi $4
sh $4, 0($4)
mult $4, $4
blez $4, TAG692
TAG692:
lui $2, 7
mfhi $4
bne $4, $4, TAG693
lw $2, 0($4)
TAG693:
mflo $1
lui $3, 15
lb $2, 0($2)
mflo $4
TAG694:
mflo $4
sw $4, 0($4)
sh $4, 0($4)
mult $4, $4
TAG695:
beq $4, $4, TAG696
mtlo $4
lui $3, 15
multu $3, $4
TAG696:
mtlo $3
sll $0, $0, 0
blez $3, TAG697
mflo $4
TAG697:
sll $0, $0, 0
sll $0, $0, 0
sra $3, $4, 3
mfhi $2
TAG698:
lui $3, 3
addiu $4, $2, 8
sll $0, $0, 0
multu $4, $4
TAG699:
subu $3, $4, $4
mfhi $4
lbu $1, 0($4)
beq $4, $1, TAG700
TAG700:
sub $3, $1, $1
bne $3, $1, TAG701
mflo $3
mtlo $3
TAG701:
mtlo $3
blez $3, TAG702
lui $1, 12
mflo $4
TAG702:
mthi $4
sll $4, $4, 8
mfhi $3
sh $3, -16384($4)
TAG703:
addu $4, $3, $3
sw $3, 0($3)
addiu $3, $4, 14
lui $2, 15
TAG704:
div $2, $2
mflo $2
multu $2, $2
bgtz $2, TAG705
TAG705:
mult $2, $2
bltz $2, TAG706
mflo $3
sltu $4, $3, $3
TAG706:
mult $4, $4
lw $1, 0($4)
subu $4, $1, $4
lb $2, 0($4)
TAG707:
beq $2, $2, TAG708
mthi $2
mflo $1
lh $1, 0($2)
TAG708:
mflo $3
lh $1, 0($1)
divu $1, $1
srlv $2, $1, $3
TAG709:
bltz $2, TAG710
sltu $4, $2, $2
mult $2, $4
lui $1, 1
TAG710:
bgtz $1, TAG711
mfhi $2
lui $4, 0
slti $4, $2, 14
TAG711:
nor $2, $4, $4
lh $1, 1($2)
srl $4, $4, 7
addi $2, $4, 6
TAG712:
bne $2, $2, TAG713
mthi $2
lh $1, 0($2)
addiu $2, $1, 13
TAG713:
lbu $1, 0($2)
multu $2, $1
mflo $4
lui $1, 10
TAG714:
mtlo $1
bgtz $1, TAG715
sltiu $2, $1, 7
srl $3, $2, 4
TAG715:
bne $3, $3, TAG716
lui $2, 15
bltz $3, TAG716
srlv $2, $2, $3
TAG716:
sra $2, $2, 2
mfhi $3
sra $4, $2, 10
bltz $3, TAG717
TAG717:
addu $2, $4, $4
srl $1, $4, 3
sh $1, 0($1)
lhu $1, 0($1)
TAG718:
mflo $4
beq $1, $4, TAG719
sll $0, $0, 0
lui $1, 15
TAG719:
addiu $2, $1, 2
sll $0, $0, 0
mtlo $3
mthi $1
TAG720:
bgtz $3, TAG721
mult $3, $3
lui $3, 0
mthi $3
TAG721:
lb $3, 0($3)
blez $3, TAG722
div $3, $3
divu $3, $3
TAG722:
mfhi $3
beq $3, $3, TAG723
mult $3, $3
bne $3, $3, TAG723
TAG723:
mflo $2
sltiu $3, $2, 10
multu $2, $2
mthi $3
TAG724:
beq $3, $3, TAG725
lb $1, 0($3)
lui $2, 1
sh $3, 0($2)
TAG725:
bne $2, $2, TAG726
mult $2, $2
sh $2, 0($2)
mthi $2
TAG726:
mtlo $2
mthi $2
lui $4, 6
beq $4, $2, TAG727
TAG727:
div $4, $4
sll $0, $0, 0
lui $3, 10
lui $1, 4
TAG728:
sll $0, $0, 0
mthi $2
bne $1, $1, TAG729
mfhi $3
TAG729:
sltiu $3, $3, 9
mthi $3
mfhi $3
lui $4, 9
TAG730:
mthi $4
sll $0, $0, 0
mfhi $1
mthi $1
TAG731:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
beq $1, $1, TAG732
TAG732:
srlv $4, $1, $1
bgez $1, TAG733
div $1, $4
mfhi $3
TAG733:
mthi $3
sb $3, 0($3)
lb $3, 0($3)
sb $3, 0($3)
TAG734:
div $3, $3
lui $3, 7
mflo $1
bgtz $1, TAG735
TAG735:
addiu $3, $1, 2
sb $3, 0($3)
bgez $1, TAG736
mtlo $3
TAG736:
bne $3, $3, TAG737
mflo $4
sb $3, 0($3)
mthi $3
TAG737:
lui $3, 5
div $4, $4
multu $3, $4
bne $4, $4, TAG738
TAG738:
mflo $2
sll $0, $0, 0
multu $3, $2
mult $3, $2
TAG739:
lui $3, 3
sll $0, $0, 0
sll $0, $0, 0
lui $3, 9
TAG740:
sltiu $2, $3, 12
lbu $2, 0($2)
lui $4, 2
mfhi $1
TAG741:
mfhi $2
srl $4, $2, 3
bltz $2, TAG742
lui $1, 7
TAG742:
bne $1, $1, TAG743
div $1, $1
beq $1, $1, TAG743
sll $0, $0, 0
TAG743:
divu $1, $1
bgtz $1, TAG744
sll $0, $0, 0
nor $3, $3, $3
TAG744:
lui $2, 15
lui $4, 15
div $2, $2
beq $3, $3, TAG745
TAG745:
slt $4, $4, $4
bne $4, $4, TAG746
multu $4, $4
mtlo $4
TAG746:
beq $4, $4, TAG747
or $2, $4, $4
sb $2, 0($4)
lb $1, 0($2)
TAG747:
xor $2, $1, $1
sra $4, $1, 10
bgtz $4, TAG748
lui $2, 4
TAG748:
slti $4, $2, 14
lui $3, 8
sll $0, $0, 0
bne $3, $4, TAG749
TAG749:
subu $1, $3, $3
mthi $3
multu $3, $3
multu $1, $1
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop