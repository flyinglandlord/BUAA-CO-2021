ori $1, $0, 4
ori $2, $0, 8
ori $3, $0, 9
ori $4, $0, 0
sw $3, 0($0)
sw $4, 4($0)
sw $4, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $3, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $4, 40($0)
sw $2, 44($0)
sw $1, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $4, 68($0)
sw $3, 72($0)
sw $4, 76($0)
sw $4, 80($0)
sw $4, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $4, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $3, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $2, 124($0)
blez $2, TAG1
multu $2, $2
beq $2, $2, TAG1
mtlo $2
TAG1:
div $2, $2
sw $2, 0($2)
lw $3, 0($2)
sh $2, 0($3)
TAG2:
lui $3, 4
bne $3, $3, TAG3
mfhi $3
sw $3, 0($3)
TAG3:
lh $4, 0($3)
lui $4, 0
sll $3, $4, 4
addu $2, $3, $4
TAG4:
slt $3, $2, $2
lui $4, 14
mthi $2
lh $1, 0($3)
TAG5:
mflo $2
sll $4, $1, 13
lhu $4, 0($4)
lw $4, 0($4)
TAG6:
mflo $2
mthi $2
mflo $1
lb $1, 0($1)
TAG7:
bltz $1, TAG8
multu $1, $1
multu $1, $1
beq $1, $1, TAG8
TAG8:
srlv $4, $1, $1
bgtz $1, TAG9
mult $4, $4
sub $2, $4, $1
TAG9:
beq $2, $2, TAG10
mult $2, $2
mthi $2
mthi $2
TAG10:
beq $2, $2, TAG11
sltu $4, $2, $2
xori $4, $4, 14
sh $4, 0($2)
TAG11:
mflo $2
bne $2, $4, TAG12
mfhi $3
lui $2, 14
TAG12:
nor $2, $2, $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG13:
sll $0, $0, 0
sra $3, $2, 15
mfhi $4
multu $3, $4
TAG14:
sh $4, 0($4)
multu $4, $4
mtlo $4
sh $4, 0($4)
TAG15:
srav $2, $4, $4
andi $3, $4, 11
sub $2, $4, $3
beq $2, $2, TAG16
TAG16:
mult $2, $2
multu $2, $2
bltz $2, TAG17
mtlo $2
TAG17:
mthi $2
sh $2, 0($2)
multu $2, $2
sltiu $4, $2, 7
TAG18:
mtlo $4
mtlo $4
mfhi $2
mflo $1
TAG19:
lb $2, 0($1)
mflo $3
mtlo $2
bgtz $2, TAG20
TAG20:
mflo $3
lhu $2, 0($3)
lui $3, 10
sll $0, $0, 0
TAG21:
mfhi $2
srl $1, $3, 11
lw $3, 0($2)
sb $3, 0($2)
TAG22:
mtlo $3
addi $1, $3, 7
mflo $4
lui $2, 6
TAG23:
sll $0, $0, 0
addiu $3, $2, 12
mult $3, $3
beq $2, $3, TAG24
TAG24:
lui $3, 4
sll $0, $0, 0
addiu $4, $3, 5
sll $0, $0, 0
TAG25:
lui $4, 9
div $4, $3
mtlo $3
bgtz $4, TAG26
TAG26:
multu $4, $4
or $4, $4, $4
sll $0, $0, 0
bgtz $4, TAG27
TAG27:
sll $1, $1, 1
sltu $2, $1, $1
mflo $1
sb $1, 0($2)
TAG28:
mfhi $2
multu $2, $2
lui $2, 15
mflo $1
TAG29:
div $1, $1
beq $1, $1, TAG30
addiu $2, $1, 4
slt $1, $2, $2
TAG30:
lui $4, 8
bne $4, $4, TAG31
div $4, $4
lw $3, -6561($1)
TAG31:
lw $2, 0($3)
blez $3, TAG32
sw $3, 0($2)
sb $3, 0($2)
TAG32:
bne $2, $2, TAG33
sw $2, 0($2)
mfhi $1
mflo $4
TAG33:
lui $2, 11
srl $3, $4, 5
mfhi $2
or $3, $3, $4
TAG34:
addiu $4, $3, 7
sh $4, 0($4)
sra $1, $3, 10
beq $1, $4, TAG35
TAG35:
srlv $2, $1, $1
sb $1, 0($1)
or $3, $2, $2
lb $2, 0($1)
TAG36:
lw $2, 0($2)
sra $1, $2, 13
sb $1, 0($2)
sw $1, 0($1)
TAG37:
sltu $4, $1, $1
mult $1, $4
srl $3, $4, 8
sw $1, 0($1)
TAG38:
mfhi $2
sh $2, 0($2)
lhu $1, 0($3)
bltz $1, TAG39
TAG39:
mthi $1
lui $3, 12
beq $3, $3, TAG40
sw $3, 0($1)
TAG40:
mflo $4
lui $3, 4
sllv $1, $3, $3
sll $0, $0, 0
TAG41:
mtlo $1
sll $0, $0, 0
blez $2, TAG42
sll $0, $0, 0
TAG42:
mult $2, $2
sh $2, 0($2)
mult $2, $2
mflo $4
TAG43:
lui $3, 10
beq $3, $4, TAG44
mfhi $2
div $2, $3
TAG44:
multu $2, $2
sh $2, 0($2)
andi $4, $2, 11
andi $3, $2, 6
TAG45:
mtlo $3
lui $1, 7
lw $4, 0($3)
mult $4, $3
TAG46:
div $4, $4
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG47:
bltz $1, TAG48
lui $4, 9
sll $0, $0, 0
sll $0, $0, 0
TAG48:
xori $2, $4, 4
sll $0, $0, 0
addiu $4, $4, 9
sll $0, $0, 0
TAG49:
blez $2, TAG50
mult $2, $2
bgez $2, TAG50
sll $1, $2, 3
TAG50:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
mult $1, $1
TAG51:
mult $4, $4
mflo $1
sll $0, $0, 0
lui $1, 5
TAG52:
beq $1, $1, TAG53
sll $0, $0, 0
divu $1, $1
lbu $1, 0($1)
TAG53:
bne $1, $1, TAG54
lui $1, 3
sll $0, $0, 0
or $4, $1, $1
TAG54:
blez $4, TAG55
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG55
TAG55:
lui $4, 6
sll $0, $0, 0
xori $1, $4, 6
mfhi $1
TAG56:
mtlo $1
bne $1, $1, TAG57
mult $1, $1
lui $3, 15
TAG57:
mult $3, $3
sllv $4, $3, $3
sll $0, $0, 0
multu $4, $2
TAG58:
addiu $1, $2, 6
bltz $2, TAG59
sll $0, $0, 0
beq $2, $1, TAG59
TAG59:
sll $0, $0, 0
lui $1, 10
beq $1, $1, TAG60
sllv $1, $1, $1
TAG60:
addu $4, $1, $1
lui $2, 8
lui $4, 1
sll $0, $0, 0
TAG61:
bltz $4, TAG62
addu $2, $4, $4
divu $2, $4
mthi $4
TAG62:
sll $0, $0, 0
mtlo $2
mult $2, $2
bgez $2, TAG63
TAG63:
lui $2, 14
bne $2, $2, TAG64
lui $2, 10
sll $0, $0, 0
TAG64:
multu $4, $4
addiu $3, $4, 6
divu $3, $4
mtlo $3
TAG65:
xori $2, $3, 2
subu $4, $2, $2
mfhi $4
bgez $4, TAG66
TAG66:
mflo $3
bltz $3, TAG67
sllv $4, $4, $4
blez $3, TAG67
TAG67:
mthi $4
beq $4, $4, TAG68
lb $1, -384($4)
sllv $4, $4, $1
TAG68:
mult $4, $4
beq $4, $4, TAG69
lhu $2, -384($4)
sltiu $2, $4, 9
TAG69:
mflo $3
multu $2, $2
mfhi $1
lui $4, 14
TAG70:
mfhi $1
bltz $4, TAG71
sll $0, $0, 0
sll $0, $0, 0
TAG71:
mthi $1
mtlo $1
nor $3, $1, $1
multu $3, $1
TAG72:
addiu $1, $3, 11
mflo $4
bgtz $1, TAG73
addu $2, $4, $3
TAG73:
sll $0, $0, 0
sb $2, 1($3)
multu $3, $2
lbu $3, 1($3)
TAG74:
sra $1, $3, 0
bne $1, $3, TAG75
lw $1, -255($3)
srav $1, $3, $3
TAG75:
sub $4, $1, $1
bne $4, $1, TAG76
multu $1, $1
mult $1, $4
TAG76:
ori $3, $4, 0
beq $3, $3, TAG77
mfhi $3
bltz $3, TAG77
TAG77:
lh $3, 0($3)
mthi $3
addiu $3, $3, 5
divu $3, $3
TAG78:
sw $3, -260($3)
mtlo $3
lbu $4, -260($3)
lhu $3, -260($3)
TAG79:
div $3, $3
lui $1, 12
lui $4, 0
lui $3, 7
TAG80:
lui $4, 3
div $3, $4
lui $4, 7
blez $4, TAG81
TAG81:
sll $0, $0, 0
bgtz $4, TAG82
slt $2, $4, $4
slt $4, $2, $2
TAG82:
beq $4, $4, TAG83
sll $0, $0, 0
mfhi $3
lui $1, 11
TAG83:
lui $3, 7
lui $2, 9
sll $0, $0, 0
sllv $3, $1, $3
TAG84:
sll $0, $0, 0
or $1, $3, $3
srl $2, $1, 9
multu $2, $2
TAG85:
bgez $2, TAG86
sw $2, -1536($2)
lui $3, 4
divu $2, $3
TAG86:
beq $3, $3, TAG87
sll $0, $0, 0
addiu $3, $3, 8
lui $4, 5
TAG87:
srl $4, $4, 0
bne $4, $4, TAG88
sll $0, $0, 0
sll $0, $0, 0
TAG88:
srav $3, $4, $4
beq $4, $3, TAG89
sltiu $1, $3, 12
divu $1, $1
TAG89:
multu $1, $1
lui $4, 11
sltu $3, $1, $1
blez $1, TAG90
TAG90:
mflo $3
andi $2, $3, 11
mthi $3
ori $1, $2, 11
TAG91:
addiu $3, $1, 11
lui $3, 14
beq $3, $1, TAG92
sra $1, $3, 10
TAG92:
mthi $1
mtlo $1
slti $2, $1, 12
bgez $1, TAG93
TAG93:
lui $2, 14
lui $3, 12
lui $3, 1
bgez $3, TAG94
TAG94:
slti $3, $3, 8
mtlo $3
beq $3, $3, TAG95
mthi $3
TAG95:
lui $4, 3
mfhi $3
andi $2, $3, 2
sb $3, 0($3)
TAG96:
xori $1, $2, 15
ori $3, $2, 15
sb $1, 0($2)
sb $3, 0($1)
TAG97:
lbu $3, 0($3)
srav $3, $3, $3
mflo $1
sw $3, 0($3)
TAG98:
mtlo $1
beq $1, $1, TAG99
lbu $4, 0($1)
sh $4, 0($1)
TAG99:
lui $4, 13
lui $3, 3
mfhi $2
div $4, $4
TAG100:
multu $2, $2
mult $2, $2
ori $2, $2, 0
nor $1, $2, $2
TAG101:
mflo $4
bgtz $1, TAG102
lbu $2, 0($4)
mtlo $2
TAG102:
bgez $2, TAG103
ori $3, $2, 6
sw $3, 0($2)
sw $3, 0($3)
TAG103:
sra $1, $3, 4
div $1, $3
sb $1, 0($1)
mtlo $3
TAG104:
bltz $1, TAG105
lui $1, 13
mthi $1
mflo $3
TAG105:
srlv $3, $3, $3
sltiu $4, $3, 12
lb $2, 0($3)
sw $4, 0($2)
TAG106:
bne $2, $2, TAG107
mfhi $4
sb $4, 0($2)
mfhi $4
TAG107:
mflo $2
mtlo $2
lui $4, 7
lui $4, 8
TAG108:
sll $0, $0, 0
lui $1, 2
lui $4, 14
lui $1, 9
TAG109:
mfhi $4
mult $1, $4
bltz $1, TAG110
mflo $4
TAG110:
and $3, $4, $4
bgez $4, TAG111
mthi $3
add $3, $4, $3
TAG111:
sb $3, 0($3)
nor $1, $3, $3
mflo $3
slti $1, $3, 2
TAG112:
beq $1, $1, TAG113
mfhi $3
mfhi $3
lui $1, 4
TAG113:
sb $1, 0($1)
andi $1, $1, 12
xor $4, $1, $1
multu $1, $1
TAG114:
lui $2, 8
lui $4, 2
srav $1, $4, $2
bgez $1, TAG115
TAG115:
sll $0, $0, 0
bne $1, $1, TAG116
sll $0, $0, 0
bne $1, $1, TAG116
TAG116:
lui $2, 5
beq $2, $2, TAG117
sll $0, $0, 0
mtlo $2
TAG117:
sll $0, $0, 0
sll $0, $0, 0
subu $4, $2, $2
lw $4, 0($4)
TAG118:
mflo $4
lui $3, 7
lui $2, 2
sll $1, $2, 10
TAG119:
sll $0, $0, 0
or $1, $1, $1
bgtz $1, TAG120
lui $1, 3
TAG120:
sll $0, $0, 0
divu $1, $1
divu $1, $1
slti $2, $1, 6
TAG121:
bne $2, $2, TAG122
lui $3, 12
bne $2, $3, TAG122
or $3, $3, $2
TAG122:
lui $3, 0
andi $2, $3, 9
mult $2, $3
mult $3, $3
TAG123:
multu $2, $2
mflo $3
lb $2, 0($3)
sw $2, 0($3)
TAG124:
mthi $2
lui $1, 3
sw $2, 0($2)
sb $1, 0($2)
TAG125:
and $4, $1, $1
slt $2, $4, $4
addu $1, $1, $2
sll $0, $0, 0
TAG126:
beq $4, $4, TAG127
addiu $3, $4, 4
blez $4, TAG127
mult $4, $3
TAG127:
slti $1, $3, 6
beq $3, $1, TAG128
ori $2, $1, 12
lui $2, 5
TAG128:
andi $1, $2, 1
sll $0, $0, 0
sll $0, $0, 0
lb $3, 0($1)
TAG129:
sh $3, 0($3)
sw $3, 0($3)
srl $3, $3, 14
mult $3, $3
TAG130:
bne $3, $3, TAG131
lbu $2, 0($3)
lhu $2, 0($2)
bgez $3, TAG131
TAG131:
multu $2, $2
bgez $2, TAG132
lui $1, 6
lui $3, 9
TAG132:
lw $4, 0($3)
lh $4, 0($3)
mthi $4
mflo $4
TAG133:
mflo $1
ori $4, $4, 14
mthi $4
bne $1, $1, TAG134
TAG134:
lh $2, 0($4)
sb $2, -3840($2)
slti $4, $2, 5
lh $4, 0($4)
TAG135:
lui $4, 15
beq $4, $4, TAG136
mflo $4
sw $4, 0($4)
TAG136:
lui $1, 6
sltu $4, $1, $4
beq $4, $4, TAG137
lui $4, 11
TAG137:
bltz $4, TAG138
sll $0, $0, 0
mtlo $1
bgez $1, TAG138
TAG138:
mflo $2
andi $2, $1, 5
sb $2, 0($2)
lh $1, 0($2)
TAG139:
lui $2, 9
sll $0, $0, 0
lui $1, 8
sll $0, $0, 0
TAG140:
mfhi $3
lui $1, 15
bgtz $1, TAG141
lui $2, 5
TAG141:
mtlo $2
mthi $2
sll $0, $0, 0
blez $2, TAG142
TAG142:
nor $2, $3, $3
beq $2, $2, TAG143
addiu $1, $3, 5
sh $2, 0($1)
TAG143:
blez $1, TAG144
sra $3, $1, 5
lui $2, 15
mflo $3
TAG144:
mfhi $1
mflo $1
addiu $4, $1, 9
sll $0, $0, 0
TAG145:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
sll $4, $2, 1
TAG146:
mflo $4
blez $4, TAG147
multu $4, $4
sll $0, $0, 0
TAG147:
sll $0, $0, 0
bne $1, $1, TAG148
xor $4, $1, $1
bne $4, $4, TAG148
TAG148:
addi $2, $4, 11
sub $2, $4, $4
andi $1, $2, 10
bgtz $4, TAG149
TAG149:
ori $2, $1, 7
sltiu $3, $1, 7
sb $1, 0($2)
lui $1, 12
TAG150:
lui $2, 11
mthi $1
mult $2, $1
sll $0, $0, 0
TAG151:
andi $1, $4, 7
mthi $1
lbu $3, 0($1)
lhu $1, 0($1)
TAG152:
lui $4, 4
lui $3, 0
mflo $1
mthi $1
TAG153:
sra $2, $1, 13
srl $4, $2, 10
sh $4, 0($4)
lui $1, 2
TAG154:
subu $2, $1, $1
bltz $2, TAG155
sll $0, $0, 0
mthi $2
TAG155:
bne $1, $1, TAG156
sltiu $4, $1, 0
srl $2, $4, 1
nor $1, $1, $1
TAG156:
sll $0, $0, 0
mtlo $3
beq $1, $3, TAG157
sb $3, 0($3)
TAG157:
mtlo $3
sltu $1, $3, $3
bgtz $3, TAG158
sb $1, 0($1)
TAG158:
bltz $1, TAG159
xori $1, $1, 3
lb $3, 0($1)
sltu $2, $1, $1
TAG159:
lui $1, 12
mfhi $4
multu $4, $4
divu $1, $1
TAG160:
mtlo $4
mflo $4
mfhi $4
sw $4, 0($4)
TAG161:
nor $1, $4, $4
xor $2, $4, $4
bne $4, $1, TAG162
lui $2, 6
TAG162:
sltu $2, $2, $2
sh $2, 0($2)
srl $3, $2, 6
bgtz $2, TAG163
TAG163:
mtlo $3
sw $3, 0($3)
lh $2, 0($3)
multu $2, $2
TAG164:
lui $4, 0
lb $2, 0($2)
mfhi $3
mthi $2
TAG165:
lw $2, 0($3)
mult $3, $3
mult $3, $2
xor $2, $3, $2
TAG166:
sltiu $3, $2, 5
lh $4, 0($2)
sllv $4, $3, $2
sh $3, 0($2)
TAG167:
bne $4, $4, TAG168
lui $3, 11
lbu $4, 0($4)
sh $4, 0($4)
TAG168:
sw $4, 0($4)
beq $4, $4, TAG169
sh $4, 0($4)
divu $4, $4
TAG169:
addu $4, $4, $4
lh $1, 0($4)
mtlo $4
mthi $4
TAG170:
lh $3, 0($1)
mtlo $1
bgez $3, TAG171
lw $4, 0($1)
TAG171:
mflo $1
xor $1, $4, $4
sw $1, 0($1)
beq $1, $4, TAG172
TAG172:
multu $1, $1
beq $1, $1, TAG173
mflo $4
bgtz $4, TAG173
TAG173:
sra $2, $4, 14
sb $4, 0($4)
sw $2, 0($2)
lh $2, 0($4)
TAG174:
nor $2, $2, $2
sw $2, 1($2)
sltu $1, $2, $2
mtlo $2
TAG175:
beq $1, $1, TAG176
lui $3, 7
bne $1, $3, TAG176
srav $1, $3, $3
TAG176:
lui $4, 6
sb $4, 0($1)
bne $1, $1, TAG177
lw $1, 0($1)
TAG177:
beq $1, $1, TAG178
lui $2, 7
mult $2, $2
lbu $1, 0($1)
TAG178:
lui $4, 1
mthi $1
bltz $1, TAG179
mflo $4
TAG179:
mflo $2
mthi $2
bgtz $2, TAG180
mflo $2
TAG180:
mthi $2
lui $3, 13
sll $0, $0, 0
lui $1, 5
TAG181:
bltz $1, TAG182
div $1, $1
bgtz $1, TAG182
sll $0, $0, 0
TAG182:
mtlo $1
lui $1, 15
sll $0, $0, 0
sll $0, $0, 0
TAG183:
sll $0, $0, 0
beq $2, $1, TAG184
div $2, $2
mflo $2
TAG184:
lb $1, 0($2)
bne $2, $1, TAG185
lui $3, 1
sh $1, 0($1)
TAG185:
lui $2, 15
slt $2, $2, $2
multu $2, $2
mfhi $4
TAG186:
bgez $4, TAG187
sub $1, $4, $4
sll $2, $4, 8
lb $4, 0($2)
TAG187:
bgez $4, TAG188
mult $4, $4
lui $1, 8
lui $2, 4
TAG188:
sh $2, 0($2)
andi $1, $2, 4
mtlo $1
bne $2, $2, TAG189
TAG189:
subu $2, $1, $1
beq $2, $1, TAG190
andi $1, $1, 15
div $2, $1
TAG190:
bne $1, $1, TAG191
sltu $3, $1, $1
lui $1, 11
mflo $1
TAG191:
mflo $4
mtlo $4
bgez $1, TAG192
lui $2, 12
TAG192:
slt $3, $2, $2
sll $4, $2, 2
mult $4, $3
mfhi $2
TAG193:
and $2, $2, $2
mthi $2
sll $2, $2, 4
lui $4, 1
TAG194:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $3, $3
mfhi $2
TAG195:
sb $2, 0($2)
mult $2, $2
bgez $2, TAG196
lw $1, 0($2)
TAG196:
bgez $1, TAG197
mflo $3
multu $1, $3
beq $3, $3, TAG197
TAG197:
and $4, $3, $3
lui $1, 15
mtlo $1
mtlo $4
TAG198:
mfhi $2
lui $3, 2
beq $2, $2, TAG199
sltu $2, $3, $1
TAG199:
beq $2, $2, TAG200
mtlo $2
mthi $2
mflo $4
TAG200:
sb $4, 0($4)
lb $4, 0($4)
mthi $4
mtlo $4
TAG201:
mthi $4
lui $2, 6
addu $4, $4, $4
lui $4, 4
TAG202:
sll $0, $0, 0
bltz $4, TAG203
mthi $4
mtlo $4
TAG203:
bne $4, $4, TAG204
subu $2, $4, $4
mfhi $4
addiu $1, $4, 11
TAG204:
bne $1, $1, TAG205
sll $0, $0, 0
sll $1, $1, 14
sll $0, $0, 0
TAG205:
sll $0, $0, 0
blez $1, TAG206
sll $0, $0, 0
addiu $1, $1, 10
TAG206:
mthi $1
lui $2, 3
beq $2, $1, TAG207
lui $4, 14
TAG207:
sll $0, $0, 0
mfhi $4
mflo $1
mfhi $4
TAG208:
beq $4, $4, TAG209
sll $0, $0, 0
lui $4, 9
mflo $1
TAG209:
multu $1, $1
sll $0, $0, 0
beq $1, $1, TAG210
sll $0, $0, 0
TAG210:
sll $0, $0, 0
divu $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG211:
bgez $3, TAG212
sltiu $4, $3, 10
divu $4, $4
lh $4, 0($3)
TAG212:
bgtz $4, TAG213
sh $4, 0($4)
add $2, $4, $4
xor $4, $2, $2
TAG213:
mthi $4
beq $4, $4, TAG214
mfhi $1
mult $4, $4
TAG214:
beq $1, $1, TAG215
slt $1, $1, $1
div $1, $1
lui $1, 13
TAG215:
xor $4, $1, $1
mthi $4
sll $2, $4, 6
addu $1, $2, $2
TAG216:
multu $1, $1
sltiu $1, $1, 15
lui $3, 0
mthi $1
TAG217:
mthi $3
srav $2, $3, $3
sb $2, 0($2)
mfhi $4
TAG218:
ori $4, $4, 7
bgez $4, TAG219
sb $4, 0($4)
lui $3, 8
TAG219:
lb $4, 0($3)
sub $3, $4, $4
multu $3, $3
mthi $3
TAG220:
bne $3, $3, TAG221
sw $3, 0($3)
lbu $3, 0($3)
xor $3, $3, $3
TAG221:
srlv $2, $3, $3
mtlo $3
lui $3, 13
mult $3, $2
TAG222:
bne $3, $3, TAG223
subu $1, $3, $3
bne $3, $1, TAG223
mthi $3
TAG223:
or $2, $1, $1
lui $1, 6
lui $1, 0
lh $3, 0($2)
TAG224:
addiu $2, $3, 0
bne $2, $3, TAG225
addi $1, $2, 10
bltz $3, TAG225
TAG225:
mult $1, $1
lui $1, 0
bgez $1, TAG226
addi $3, $1, 8
TAG226:
bltz $3, TAG227
subu $1, $3, $3
addu $4, $3, $3
sw $4, 0($1)
TAG227:
beq $4, $4, TAG228
mflo $3
lw $3, 0($3)
bltz $3, TAG228
TAG228:
slti $2, $3, 2
lhu $1, 0($2)
mfhi $1
addu $2, $1, $1
TAG229:
mfhi $2
mult $2, $2
lh $1, 0($2)
sltu $4, $1, $2
TAG230:
mthi $4
beq $4, $4, TAG231
sh $4, 0($4)
beq $4, $4, TAG231
TAG231:
ori $1, $4, 8
lhu $4, 0($1)
sltu $1, $4, $1
blez $4, TAG232
TAG232:
srlv $4, $1, $1
nor $2, $1, $1
bne $4, $2, TAG233
lw $2, 0($4)
TAG233:
mthi $2
mult $2, $2
sll $4, $2, 2
mthi $4
TAG234:
mfhi $4
mult $4, $4
lhu $1, 0($4)
lui $1, 5
TAG235:
lui $2, 12
bgez $2, TAG236
mflo $1
mfhi $3
TAG236:
lui $1, 5
andi $3, $3, 4
multu $3, $3
xori $4, $3, 7
TAG237:
lb $2, 0($4)
mtlo $4
slti $2, $2, 11
lui $2, 14
TAG238:
sll $1, $2, 4
addu $2, $2, $2
sll $0, $0, 0
sra $4, $2, 14
TAG239:
blez $4, TAG240
mflo $2
andi $4, $2, 7
mfhi $2
TAG240:
mfhi $2
mthi $2
mflo $3
bgez $2, TAG241
TAG241:
lui $2, 15
beq $2, $2, TAG242
mfhi $2
mult $2, $2
TAG242:
blez $2, TAG243
multu $2, $2
bne $2, $2, TAG243
mtlo $2
TAG243:
lb $1, 0($2)
mthi $1
mtlo $1
sh $2, 0($1)
TAG244:
sh $1, 0($1)
xori $2, $1, 11
mtlo $2
mtlo $1
TAG245:
addiu $1, $2, 3
mult $2, $1
or $4, $1, $2
sltiu $2, $2, 6
TAG246:
mtlo $2
lui $2, 14
srlv $4, $2, $2
mthi $2
TAG247:
mfhi $4
mtlo $4
bne $4, $4, TAG248
sltiu $4, $4, 1
TAG248:
lw $1, 0($4)
mthi $1
sw $1, 0($4)
beq $4, $1, TAG249
TAG249:
mthi $1
srlv $1, $1, $1
mult $1, $1
srlv $4, $1, $1
TAG250:
lb $3, 0($4)
xori $1, $3, 1
sh $4, 0($3)
bne $3, $4, TAG251
TAG251:
sll $4, $1, 8
lui $4, 1
mthi $4
lui $3, 7
TAG252:
sll $0, $0, 0
mthi $3
divu $3, $3
divu $3, $3
TAG253:
sll $0, $0, 0
beq $3, $3, TAG254
sll $0, $0, 0
or $4, $3, $3
TAG254:
beq $4, $4, TAG255
div $4, $4
bgez $4, TAG255
andi $3, $4, 1
TAG255:
bne $3, $3, TAG256
sll $0, $0, 0
sll $0, $0, 0
sltu $2, $3, $2
TAG256:
srlv $1, $2, $2
bne $2, $2, TAG257
ori $1, $1, 13
bgez $1, TAG257
TAG257:
lui $2, 13
sb $2, 0($1)
mtlo $2
bltz $1, TAG258
TAG258:
mthi $2
sll $0, $0, 0
srav $1, $2, $2
mthi $2
TAG259:
sll $0, $0, 0
lui $3, 2
lui $4, 5
bne $3, $1, TAG260
TAG260:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
slt $1, $4, $4
TAG261:
andi $2, $1, 14
lbu $2, 0($1)
sh $2, 0($1)
blez $1, TAG262
TAG262:
multu $2, $2
lui $2, 14
lui $1, 11
sll $0, $0, 0
TAG263:
sltu $2, $4, $4
lui $1, 12
mthi $2
slti $3, $1, 5
TAG264:
lb $3, 0($3)
mflo $1
subu $3, $3, $3
mflo $2
TAG265:
addiu $4, $2, 2
xori $3, $4, 4
lb $2, 0($3)
bltz $4, TAG266
TAG266:
multu $2, $2
bne $2, $2, TAG267
lb $4, 0($2)
addiu $2, $4, 4
TAG267:
bgtz $2, TAG268
mflo $4
mflo $2
mfhi $2
TAG268:
beq $2, $2, TAG269
ori $2, $2, 9
lbu $2, 0($2)
sb $2, 0($2)
TAG269:
mtlo $2
mfhi $3
bltz $2, TAG270
lui $4, 9
TAG270:
lui $1, 6
addiu $1, $1, 6
bne $4, $1, TAG271
lui $1, 2
TAG271:
bgtz $1, TAG272
addiu $2, $1, 9
mflo $3
lbu $1, 0($2)
TAG272:
sll $0, $0, 0
multu $4, $4
mfhi $1
blez $1, TAG273
TAG273:
and $3, $1, $1
bltz $3, TAG274
lb $3, 0($1)
srlv $1, $1, $1
TAG274:
mult $1, $1
mthi $1
bltz $1, TAG275
sllv $3, $1, $1
TAG275:
mtlo $3
lhu $3, 0($3)
mthi $3
multu $3, $3
TAG276:
mflo $3
lw $2, 0($3)
mthi $3
xor $3, $3, $3
TAG277:
lui $3, 4
mfhi $1
blez $3, TAG278
xor $4, $3, $3
TAG278:
sra $4, $4, 12
bne $4, $4, TAG279
mthi $4
addiu $3, $4, 6
TAG279:
mflo $3
sb $3, 0($3)
mfhi $2
or $4, $2, $3
TAG280:
mflo $3
mflo $1
blez $1, TAG281
mtlo $4
TAG281:
sb $1, 0($1)
mflo $2
bne $1, $2, TAG282
lui $3, 13
TAG282:
lui $3, 4
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $3, 11
TAG283:
sll $0, $0, 0
srl $3, $4, 15
mthi $4
sll $0, $0, 0
TAG284:
mfhi $2
mtlo $1
bltz $2, TAG285
sll $0, $0, 0
TAG285:
sll $0, $0, 0
mfhi $3
mfhi $4
sll $0, $0, 0
TAG286:
beq $3, $3, TAG287
lui $1, 1
sb $1, 0($1)
blez $3, TAG287
TAG287:
lui $1, 9
multu $1, $1
mfhi $1
xori $3, $1, 3
TAG288:
mfhi $3
mthi $3
sb $3, 0($3)
lbu $4, 0($3)
TAG289:
divu $4, $4
mthi $4
lb $4, 0($4)
sb $4, 0($4)
TAG290:
sb $4, 0($4)
blez $4, TAG291
addu $4, $4, $4
addiu $2, $4, 13
TAG291:
sra $3, $2, 1
div $3, $2
lb $4, 0($3)
lb $1, 0($3)
TAG292:
lui $1, 8
mtlo $1
andi $2, $1, 7
multu $1, $2
TAG293:
subu $1, $2, $2
sw $2, 0($1)
multu $1, $1
multu $1, $2
TAG294:
ori $1, $1, 3
addu $4, $1, $1
sh $1, 0($4)
mflo $3
TAG295:
lui $4, 5
sll $0, $0, 0
multu $3, $3
mtlo $4
TAG296:
sll $0, $0, 0
multu $2, $2
blez $2, TAG297
sll $0, $0, 0
TAG297:
bgtz $1, TAG298
sb $1, 0($1)
mflo $4
beq $4, $4, TAG298
TAG298:
mthi $4
mtlo $4
bne $4, $4, TAG299
lui $2, 3
TAG299:
lui $3, 9
bltz $3, TAG300
mfhi $2
bgtz $2, TAG300
TAG300:
sllv $2, $2, $2
addiu $4, $2, 0
sll $0, $0, 0
sll $0, $0, 0
TAG301:
mthi $1
lbu $1, 0($1)
bne $1, $1, TAG302
multu $1, $1
TAG302:
bgtz $1, TAG303
lb $4, 0($1)
mtlo $1
beq $4, $1, TAG303
TAG303:
mflo $2
beq $4, $2, TAG304
lui $3, 13
mtlo $4
TAG304:
bltz $3, TAG305
mflo $2
lbu $4, 0($2)
subu $1, $2, $2
TAG305:
beq $1, $1, TAG306
mthi $1
mult $1, $1
addu $1, $1, $1
TAG306:
bne $1, $1, TAG307
sh $1, 0($1)
lui $1, 6
bgez $1, TAG307
TAG307:
sltiu $1, $1, 2
divu $1, $1
nor $1, $1, $1
mthi $1
TAG308:
mult $1, $1
mult $1, $1
beq $1, $1, TAG309
mthi $1
TAG309:
multu $1, $1
lui $2, 6
addu $4, $1, $2
lui $2, 14
TAG310:
srav $3, $2, $2
mflo $3
bltz $3, TAG311
srl $3, $3, 3
TAG311:
lui $4, 7
multu $3, $4
mult $4, $3
ori $2, $4, 1
TAG312:
bgez $2, TAG313
mflo $2
lhu $4, 0($2)
sll $4, $2, 3
TAG313:
sll $0, $0, 0
multu $4, $4
xori $4, $4, 14
sll $0, $0, 0
TAG314:
sltu $1, $2, $2
mfhi $1
mult $2, $2
sb $1, 0($1)
TAG315:
addiu $2, $1, 2
mfhi $2
lb $4, 0($1)
multu $2, $2
TAG316:
lui $2, 7
lui $2, 9
bltz $4, TAG317
mflo $2
TAG317:
sh $2, 0($2)
mtlo $2
sb $2, 0($2)
lbu $2, 0($2)
TAG318:
sh $2, 0($2)
andi $4, $2, 2
lui $1, 1
lh $2, 0($2)
TAG319:
lui $2, 7
lui $2, 5
sltu $1, $2, $2
addu $2, $1, $1
TAG320:
blez $2, TAG321
mfhi $3
mfhi $2
bgez $2, TAG321
TAG321:
srav $3, $2, $2
blez $2, TAG322
mult $3, $3
mfhi $3
TAG322:
bgtz $3, TAG323
addiu $3, $3, 5
slti $2, $3, 3
divu $3, $3
TAG323:
mfhi $4
nor $1, $4, $4
beq $4, $1, TAG324
mtlo $2
TAG324:
bgtz $1, TAG325
and $2, $1, $1
divu $1, $1
mtlo $2
TAG325:
mthi $2
bgtz $2, TAG326
sh $2, 1($2)
addiu $1, $2, 10
TAG326:
addiu $1, $1, 9
srav $2, $1, $1
lh $4, 0($2)
bne $1, $4, TAG327
TAG327:
srl $4, $4, 6
or $2, $4, $4
mtlo $2
sll $0, $0, 0
TAG328:
sll $0, $0, 0
lui $1, 11
multu $2, $2
bgtz $2, TAG329
TAG329:
sll $0, $0, 0
addiu $1, $1, 5
mtlo $1
sll $0, $0, 0
TAG330:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG331:
mthi $4
ori $2, $4, 8
sll $0, $0, 0
sll $0, $0, 0
TAG332:
slti $4, $2, 11
sra $2, $2, 3
blez $2, TAG333
srav $2, $2, $2
TAG333:
sltiu $4, $2, 7
bne $4, $2, TAG334
lui $3, 2
andi $1, $4, 14
TAG334:
sllv $3, $1, $1
srl $4, $3, 2
div $3, $4
sll $0, $0, 0
TAG335:
sll $0, $0, 0
lui $3, 6
mfhi $1
sll $2, $1, 14
TAG336:
mfhi $4
sub $1, $4, $4
lui $1, 4
div $1, $1
TAG337:
mthi $1
sltu $2, $1, $1
sll $0, $0, 0
bltz $1, TAG338
TAG338:
srav $3, $2, $2
mfhi $3
lui $3, 9
bgtz $3, TAG339
TAG339:
sll $0, $0, 0
mult $3, $3
addiu $1, $3, 6
sll $0, $0, 0
TAG340:
bne $4, $4, TAG341
mult $4, $4
lh $1, 0($4)
sb $4, 1($1)
TAG341:
mfhi $2
beq $2, $1, TAG342
mflo $2
lui $1, 1
TAG342:
sll $0, $0, 0
lui $4, 1
mthi $4
beq $4, $1, TAG343
TAG343:
multu $4, $4
bne $4, $4, TAG344
multu $4, $4
mtlo $4
TAG344:
sll $0, $0, 0
blez $4, TAG345
sll $0, $0, 0
mthi $4
TAG345:
bne $4, $4, TAG346
srav $3, $4, $4
beq $3, $4, TAG346
lui $2, 0
TAG346:
mthi $2
lw $4, 0($2)
mflo $2
bgez $4, TAG347
TAG347:
lui $2, 3
mtlo $2
subu $4, $2, $2
slti $4, $4, 15
TAG348:
beq $4, $4, TAG349
lb $1, 0($4)
lui $2, 13
mult $1, $4
TAG349:
bne $2, $2, TAG350
and $2, $2, $2
mult $2, $2
mtlo $2
TAG350:
lui $4, 11
mfhi $3
bne $4, $3, TAG351
mflo $2
TAG351:
multu $2, $2
subu $1, $2, $2
bltz $2, TAG352
mthi $1
TAG352:
mfhi $3
mfhi $4
lw $2, 0($4)
mfhi $4
TAG353:
sb $4, 0($4)
sb $4, 0($4)
mult $4, $4
sltiu $2, $4, 6
TAG354:
lui $2, 1
lui $1, 9
mthi $2
lui $1, 6
TAG355:
subu $1, $1, $1
mult $1, $1
srav $1, $1, $1
lui $1, 7
TAG356:
bgtz $1, TAG357
slt $3, $1, $1
lbu $4, 0($3)
lui $3, 7
TAG357:
lui $2, 4
sh $3, 0($3)
mult $3, $3
mflo $3
TAG358:
beq $3, $3, TAG359
mthi $3
divu $3, $3
lui $2, 7
TAG359:
sll $0, $0, 0
srlv $3, $2, $2
bgtz $3, TAG360
sll $0, $0, 0
TAG360:
lui $4, 15
bltz $4, TAG361
lui $3, 14
lui $3, 9
TAG361:
bne $3, $3, TAG362
sll $0, $0, 0
mult $3, $3
sltiu $3, $3, 6
TAG362:
bgez $3, TAG363
sltu $3, $3, $3
beq $3, $3, TAG363
divu $3, $3
TAG363:
sltiu $1, $3, 15
lbu $2, 0($3)
multu $3, $2
sh $1, 0($2)
TAG364:
mflo $4
bne $2, $4, TAG365
ori $4, $4, 4
slti $2, $4, 7
TAG365:
mthi $2
beq $2, $2, TAG366
divu $2, $2
mtlo $2
TAG366:
andi $4, $2, 13
bne $4, $4, TAG367
mult $2, $4
lb $4, 0($2)
TAG367:
mtlo $4
sll $2, $4, 9
mult $4, $4
bgtz $4, TAG368
TAG368:
sw $2, 0($2)
multu $2, $2
lbu $4, 0($2)
mult $4, $4
TAG369:
lhu $1, 0($4)
sltu $2, $4, $4
bgez $2, TAG370
lb $3, 0($2)
TAG370:
multu $3, $3
mthi $3
lui $3, 9
mtlo $3
TAG371:
sll $0, $0, 0
mflo $4
beq $3, $3, TAG372
ori $3, $4, 6
TAG372:
multu $3, $3
sltiu $4, $3, 9
lb $3, 0($4)
slt $1, $3, $3
TAG373:
mthi $1
subu $3, $1, $1
mflo $1
mult $1, $1
TAG374:
bne $1, $1, TAG375
mult $1, $1
beq $1, $1, TAG375
lui $3, 11
TAG375:
lui $2, 7
lui $4, 6
subu $3, $3, $2
sll $0, $0, 0
TAG376:
xori $2, $3, 8
srlv $3, $2, $3
sll $0, $0, 0
sll $0, $0, 0
TAG377:
srl $2, $3, 2
sra $4, $3, 10
bgtz $2, TAG378
ori $4, $4, 13
TAG378:
mthi $4
mtlo $4
lui $4, 15
bltz $4, TAG379
TAG379:
div $4, $4
multu $4, $4
sll $0, $0, 0
lui $2, 6
TAG380:
addu $3, $2, $2
beq $2, $3, TAG381
mflo $4
xor $1, $3, $3
TAG381:
mthi $1
sub $2, $1, $1
bne $2, $2, TAG382
sra $3, $1, 5
TAG382:
xori $3, $3, 3
sra $2, $3, 9
lbu $3, 0($3)
sllv $2, $3, $3
TAG383:
lui $1, 8
bne $2, $2, TAG384
multu $2, $2
bne $1, $1, TAG384
TAG384:
sll $4, $1, 4
div $1, $1
lui $3, 2
mfhi $4
TAG385:
multu $4, $4
mthi $4
lui $4, 5
blez $4, TAG386
TAG386:
sll $0, $0, 0
bgtz $4, TAG387
mtlo $4
lui $3, 8
TAG387:
div $3, $3
sll $0, $0, 0
mflo $4
mfhi $3
TAG388:
mtlo $3
lui $4, 5
mtlo $3
mfhi $2
TAG389:
bne $2, $2, TAG390
lui $4, 0
lui $3, 8
sh $3, 0($4)
TAG390:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG391:
bne $2, $2, TAG392
lui $3, 7
bgez $2, TAG392
sll $0, $0, 0
TAG392:
or $2, $3, $3
sll $0, $0, 0
bgtz $1, TAG393
mtlo $2
TAG393:
sll $0, $0, 0
lui $1, 12
mtlo $1
sll $0, $0, 0
TAG394:
sll $0, $0, 0
mfhi $4
sh $1, 0($4)
lui $3, 4
TAG395:
lui $4, 10
beq $4, $4, TAG396
sll $0, $0, 0
div $3, $4
TAG396:
beq $4, $4, TAG397
sll $3, $4, 12
divu $4, $3
mthi $3
TAG397:
mfhi $1
mfhi $2
slti $4, $3, 14
slti $1, $1, 4
TAG398:
sb $1, 0($1)
lb $4, 0($1)
bgez $1, TAG399
lui $1, 3
TAG399:
beq $1, $1, TAG400
lui $2, 1
mtlo $1
div $1, $2
TAG400:
bne $2, $2, TAG401
multu $2, $2
bne $2, $2, TAG401
multu $2, $2
TAG401:
mtlo $2
andi $4, $2, 1
lui $3, 10
mfhi $1
TAG402:
mfhi $2
lui $1, 5
xori $4, $2, 12
lbu $2, 0($4)
TAG403:
bgez $2, TAG404
mfhi $4
lui $1, 3
bne $4, $1, TAG404
TAG404:
mtlo $1
mflo $3
lui $3, 15
blez $1, TAG405
TAG405:
mflo $1
beq $3, $1, TAG406
lui $1, 0
multu $1, $3
TAG406:
mthi $1
bne $1, $1, TAG407
lh $4, 0($1)
lui $2, 15
TAG407:
beq $2, $2, TAG408
sll $2, $2, 9
sw $2, 0($2)
xori $3, $2, 13
TAG408:
mthi $3
sll $0, $0, 0
lui $1, 10
bgez $3, TAG409
TAG409:
mthi $1
bne $1, $1, TAG410
mfhi $2
sll $0, $0, 0
TAG410:
mflo $1
mfhi $4
bgez $4, TAG411
sll $0, $0, 0
TAG411:
and $3, $4, $4
sll $0, $0, 0
bgez $3, TAG412
mfhi $3
TAG412:
mthi $3
mfhi $2
sll $0, $0, 0
lui $4, 0
TAG413:
mflo $1
mtlo $1
multu $1, $4
sb $1, 0($4)
TAG414:
lb $4, 0($1)
xori $4, $4, 15
mflo $4
lb $3, 0($4)
TAG415:
blez $3, TAG416
lui $2, 14
mult $2, $3
lh $4, 0($3)
TAG416:
lb $3, 0($4)
sll $2, $4, 15
bgez $3, TAG417
lui $4, 7
TAG417:
sll $0, $0, 0
bltz $1, TAG418
lui $3, 8
bne $4, $4, TAG418
TAG418:
multu $3, $3
or $1, $3, $3
mfhi $1
multu $1, $3
TAG419:
sh $1, 0($1)
lhu $3, 0($1)
bgtz $1, TAG420
lui $4, 13
TAG420:
subu $4, $4, $4
multu $4, $4
mfhi $1
andi $1, $4, 12
TAG421:
lui $3, 13
beq $3, $3, TAG422
sltu $3, $3, $3
divu $3, $1
TAG422:
addu $4, $3, $3
lui $3, 8
lh $2, 0($4)
bgez $2, TAG423
TAG423:
sb $2, -256($2)
mflo $4
mfhi $4
mfhi $3
TAG424:
lh $4, 0($3)
div $3, $4
beq $3, $4, TAG425
slti $2, $4, 10
TAG425:
beq $2, $2, TAG426
multu $2, $2
mtlo $2
srav $2, $2, $2
TAG426:
sh $2, 0($2)
bgez $2, TAG427
sb $2, 0($2)
ori $4, $2, 0
TAG427:
mthi $4
mult $4, $4
mflo $1
mfhi $1
TAG428:
lw $2, 0($1)
sllv $1, $2, $1
lbu $4, 0($1)
sw $1, 0($1)
TAG429:
multu $4, $4
mthi $4
sra $4, $4, 5
lui $3, 5
TAG430:
sll $0, $0, 0
bne $1, $1, TAG431
srlv $2, $3, $3
lw $4, 0($1)
TAG431:
xori $4, $4, 7
lui $2, 9
lui $2, 7
lui $2, 12
TAG432:
lui $3, 9
beq $3, $2, TAG433
lui $1, 14
bne $1, $1, TAG433
TAG433:
lui $3, 7
mfhi $1
mtlo $1
ori $2, $1, 14
TAG434:
sra $1, $2, 0
mtlo $2
lb $1, 0($1)
slt $3, $1, $1
TAG435:
lbu $3, 0($3)
lui $1, 3
sll $0, $0, 0
lui $1, 15
TAG436:
mthi $1
lui $4, 3
sll $0, $0, 0
mtlo $1
TAG437:
xor $1, $4, $4
subu $3, $1, $4
mult $3, $1
mfhi $1
TAG438:
lb $4, 0($1)
multu $4, $4
mtlo $4
ori $2, $4, 10
TAG439:
mtlo $2
bltz $2, TAG440
mflo $3
sra $4, $2, 15
TAG440:
bgtz $4, TAG441
srlv $1, $4, $4
sh $4, 0($1)
mthi $1
TAG441:
lui $4, 2
multu $4, $1
sb $1, 0($1)
mthi $4
TAG442:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG443:
mthi $4
beq $4, $4, TAG444
mtlo $4
and $2, $4, $4
TAG444:
lhu $2, 0($2)
mfhi $3
blez $2, TAG445
mflo $1
TAG445:
beq $1, $1, TAG446
lui $3, 4
mult $1, $3
bne $3, $3, TAG446
TAG446:
subu $4, $3, $3
sll $0, $0, 0
div $3, $3
mflo $2
TAG447:
bltz $2, TAG448
mflo $3
addiu $2, $2, 0
mtlo $2
TAG448:
mthi $2
sltu $1, $2, $2
beq $2, $1, TAG449
srav $2, $2, $2
TAG449:
ori $2, $2, 3
lbu $3, 0($2)
lbu $1, 0($2)
sb $1, 0($1)
TAG450:
sw $1, 0($1)
multu $1, $1
mtlo $1
lb $1, 0($1)
TAG451:
bne $1, $1, TAG452
lhu $3, 0($1)
bne $1, $3, TAG452
multu $1, $3
TAG452:
mthi $3
bgez $3, TAG453
sw $3, 0($3)
divu $3, $3
TAG453:
sb $3, 0($3)
bgtz $3, TAG454
mult $3, $3
addiu $2, $3, 12
TAG454:
multu $2, $2
sh $2, 0($2)
mtlo $2
beq $2, $2, TAG455
TAG455:
divu $2, $2
mfhi $3
mult $3, $3
mthi $2
TAG456:
sb $3, 0($3)
lui $1, 7
mflo $4
bne $3, $4, TAG457
TAG457:
xori $3, $4, 14
lui $2, 13
mthi $2
lb $1, 0($3)
TAG458:
lbu $2, 0($1)
lbu $3, 0($1)
lui $1, 8
bne $1, $3, TAG459
TAG459:
sltiu $4, $1, 10
mult $4, $1
lui $1, 13
andi $1, $1, 2
TAG460:
sra $3, $1, 1
bgez $3, TAG461
multu $3, $1
sb $3, 0($1)
TAG461:
bgez $3, TAG462
mtlo $3
sw $3, 0($3)
andi $1, $3, 4
TAG462:
beq $1, $1, TAG463
mtlo $1
lbu $4, 0($1)
lui $1, 5
TAG463:
mfhi $1
lui $2, 2
bgtz $1, TAG464
lui $4, 0
TAG464:
multu $4, $4
bne $4, $4, TAG465
mult $4, $4
bgtz $4, TAG465
TAG465:
xori $3, $4, 2
sh $4, 0($3)
sh $3, 0($3)
bgtz $4, TAG466
TAG466:
sh $3, 0($3)
lui $1, 13
sltu $4, $3, $1
sll $0, $0, 0
TAG467:
bne $4, $4, TAG468
or $4, $4, $4
divu $4, $4
lui $4, 14
TAG468:
bgez $4, TAG469
mflo $4
addu $2, $4, $4
bgez $4, TAG469
TAG469:
mthi $2
mfhi $3
sll $0, $0, 0
or $1, $2, $2
TAG470:
bgtz $1, TAG471
sll $0, $0, 0
mtlo $1
or $4, $2, $2
TAG471:
bltz $4, TAG472
mtlo $4
mfhi $3
mthi $3
TAG472:
lui $1, 13
lui $3, 1
srl $3, $1, 7
addu $3, $3, $1
TAG473:
sll $0, $0, 0
bgtz $3, TAG474
sll $0, $0, 0
bgtz $3, TAG474
TAG474:
lui $4, 6
lui $1, 14
lui $4, 3
xori $3, $1, 1
TAG475:
div $3, $3
sll $0, $0, 0
addiu $4, $3, 10
lui $4, 10
TAG476:
multu $4, $4
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
TAG477:
sll $0, $0, 0
andi $2, $4, 0
mflo $3
sra $4, $4, 11
TAG478:
mfhi $4
mflo $1
lui $3, 4
bne $1, $1, TAG479
TAG479:
slti $2, $3, 1
sll $0, $0, 0
sw $2, 0($2)
xori $4, $3, 8
TAG480:
ori $2, $4, 3
bgtz $4, TAG481
sll $0, $0, 0
sw $4, 0($4)
TAG481:
sll $0, $0, 0
lui $3, 11
lui $3, 7
sll $0, $0, 0
TAG482:
sll $0, $0, 0
mthi $2
mtlo $3
mflo $4
TAG483:
and $4, $4, $4
sll $0, $0, 0
multu $4, $4
mflo $1
TAG484:
mtlo $1
lui $1, 7
bne $1, $1, TAG485
mflo $1
TAG485:
lbu $3, 0($1)
mult $1, $3
xor $1, $1, $3
lui $4, 14
TAG486:
srl $3, $4, 11
lui $1, 14
lui $3, 4
sll $0, $0, 0
TAG487:
mfhi $4
mflo $3
sb $3, 0($4)
mtlo $3
TAG488:
blez $3, TAG489
lui $4, 1
addiu $2, $3, 5
beq $3, $4, TAG489
TAG489:
lui $2, 12
beq $2, $2, TAG490
mthi $2
subu $4, $2, $2
TAG490:
sll $0, $0, 0
lui $1, 13
mtlo $1
mtlo $1
TAG491:
bgez $1, TAG492
mfhi $1
beq $1, $1, TAG492
mult $1, $1
TAG492:
bgtz $1, TAG493
sra $2, $1, 2
lhu $3, 0($2)
xor $1, $1, $3
TAG493:
bltz $1, TAG494
mflo $3
slt $4, $3, $1
blez $4, TAG494
TAG494:
mthi $4
mtlo $4
ori $3, $4, 6
srlv $2, $3, $3
TAG495:
mtlo $2
slti $1, $2, 14
blez $2, TAG496
mfhi $1
TAG496:
bltz $1, TAG497
lui $2, 3
xor $1, $1, $2
sll $0, $0, 0
TAG497:
beq $3, $3, TAG498
sh $3, 0($3)
mult $3, $3
lb $1, 0($3)
TAG498:
beq $1, $1, TAG499
sll $0, $0, 0
xor $4, $1, $1
mfhi $3
TAG499:
mthi $3
lui $1, 0
mflo $4
lui $3, 11
TAG500:
xori $1, $3, 2
bne $3, $1, TAG501
mthi $3
mflo $3
TAG501:
srlv $3, $3, $3
mflo $1
mflo $3
addu $2, $3, $3
TAG502:
bgez $2, TAG503
mtlo $2
bne $2, $2, TAG503
addiu $1, $2, 4
TAG503:
sltu $2, $1, $1
mtlo $2
srlv $3, $1, $1
mfhi $3
TAG504:
bne $3, $3, TAG505
addiu $1, $3, 11
mthi $3
sll $0, $0, 0
TAG505:
xori $4, $1, 0
sll $0, $0, 0
sw $1, 0($2)
blez $1, TAG506
TAG506:
mult $2, $2
lui $1, 4
and $4, $1, $1
beq $4, $2, TAG507
TAG507:
subu $3, $4, $4
sltu $4, $4, $3
beq $3, $3, TAG508
sllv $4, $3, $3
TAG508:
srlv $4, $4, $4
lui $2, 14
mult $4, $4
mthi $2
TAG509:
mthi $2
addu $4, $2, $2
mthi $2
mfhi $1
TAG510:
mtlo $1
bne $1, $1, TAG511
sll $4, $1, 11
sll $0, $0, 0
TAG511:
lui $3, 11
sll $0, $0, 0
multu $1, $1
srl $2, $1, 9
TAG512:
sll $0, $0, 0
mfhi $1
sb $2, -1792($2)
mflo $1
TAG513:
mfhi $4
slt $4, $1, $4
sb $4, 0($4)
divu $1, $4
TAG514:
sltiu $3, $4, 6
mflo $4
mflo $3
sltiu $1, $4, 6
TAG515:
mtlo $1
lui $2, 6
mfhi $4
beq $2, $2, TAG516
TAG516:
mfhi $3
srl $1, $3, 8
lui $2, 2
sll $3, $1, 13
TAG517:
mflo $4
addiu $1, $4, 3
bgez $4, TAG518
addu $2, $4, $3
TAG518:
lui $3, 10
sb $2, 0($2)
mthi $2
mfhi $4
TAG519:
addiu $1, $4, 6
bgtz $1, TAG520
mfhi $4
ori $4, $4, 8
TAG520:
mfhi $4
sb $4, 0($4)
beq $4, $4, TAG521
mtlo $4
TAG521:
slti $3, $4, 10
sra $1, $3, 5
mult $1, $1
subu $3, $3, $3
TAG522:
srav $2, $3, $3
sw $3, 0($3)
mfhi $1
lui $4, 13
TAG523:
lui $1, 0
sllv $1, $4, $4
lui $1, 2
bne $4, $1, TAG524
TAG524:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
bne $1, $4, TAG525
TAG525:
lui $3, 15
bne $3, $4, TAG526
mthi $3
sh $4, 0($3)
TAG526:
mfhi $3
sll $0, $0, 0
mfhi $4
multu $3, $2
TAG527:
or $3, $4, $4
sll $0, $0, 0
addiu $3, $3, 8
sll $0, $0, 0
TAG528:
beq $3, $3, TAG529
multu $3, $3
sub $4, $3, $3
divu $4, $4
TAG529:
divu $4, $4
addiu $1, $4, 7
mflo $4
sll $2, $4, 15
TAG530:
sll $0, $0, 0
beq $2, $2, TAG531
mtlo $2
div $2, $2
TAG531:
sll $0, $0, 0
bltz $2, TAG532
mtlo $2
mult $2, $4
TAG532:
sb $4, 0($4)
beq $4, $4, TAG533
addiu $2, $4, 4
srav $2, $4, $4
TAG533:
bgtz $2, TAG534
mthi $2
mflo $3
div $3, $3
TAG534:
mfhi $4
bltz $4, TAG535
mthi $4
sll $0, $0, 0
TAG535:
mthi $3
sltiu $4, $3, 5
bgez $3, TAG536
sll $0, $0, 0
TAG536:
lui $4, 10
divu $4, $4
bltz $4, TAG537
multu $4, $4
TAG537:
sll $0, $0, 0
mfhi $4
nor $3, $4, $4
mthi $4
TAG538:
srav $3, $3, $3
bne $3, $3, TAG539
lbu $3, 1($3)
sw $3, 0($3)
TAG539:
lbu $3, 0($3)
bgtz $3, TAG540
mult $3, $3
bgtz $3, TAG540
TAG540:
lhu $1, 0($3)
srav $1, $3, $1
bne $3, $1, TAG541
lw $4, 0($1)
TAG541:
lb $1, 0($4)
sltu $1, $4, $1
lui $2, 9
ori $2, $2, 1
TAG542:
lui $1, 7
mthi $1
mthi $1
ori $2, $2, 3
TAG543:
mthi $2
mflo $2
sh $2, 0($2)
mflo $1
TAG544:
lw $1, 0($1)
lui $1, 8
mult $1, $1
sll $0, $0, 0
TAG545:
mtlo $1
sll $0, $0, 0
sb $3, 0($3)
mtlo $3
TAG546:
multu $3, $3
mfhi $3
bgtz $3, TAG547
lui $4, 15
TAG547:
sll $0, $0, 0
bltz $4, TAG548
sll $0, $0, 0
mtlo $4
TAG548:
mtlo $4
blez $4, TAG549
sll $0, $0, 0
bltz $4, TAG549
TAG549:
mtlo $4
addu $3, $4, $4
srl $2, $3, 3
srlv $4, $2, $2
TAG550:
lui $2, 0
sw $4, 0($2)
subu $1, $2, $4
sll $0, $0, 0
TAG551:
addu $4, $1, $1
slt $1, $4, $1
bgez $1, TAG552
mtlo $1
TAG552:
mthi $1
lbu $3, 0($1)
multu $1, $1
mtlo $1
TAG553:
sh $3, -192($3)
andi $4, $3, 5
slti $1, $3, 8
bne $1, $4, TAG554
TAG554:
or $1, $1, $1
mtlo $1
srlv $3, $1, $1
mfhi $4
TAG555:
sub $2, $4, $4
blez $2, TAG556
sb $2, 0($4)
bgez $2, TAG556
TAG556:
mtlo $2
mtlo $2
mfhi $4
lhu $3, 0($4)
TAG557:
sb $3, 0($3)
mthi $3
mtlo $3
mfhi $2
TAG558:
bne $2, $2, TAG559
mflo $3
lui $4, 14
slt $4, $2, $3
TAG559:
lui $3, 5
sw $3, 0($4)
mtlo $4
sh $4, 0($4)
TAG560:
mult $3, $3
mflo $4
mflo $4
beq $3, $3, TAG561
TAG561:
mtlo $4
mflo $2
mthi $4
mtlo $2
TAG562:
mtlo $2
lw $3, 0($2)
multu $2, $3
bgtz $2, TAG563
TAG563:
subu $3, $3, $3
sb $3, 0($3)
add $2, $3, $3
mult $2, $3
TAG564:
addu $4, $2, $2
mfhi $2
sb $2, 0($2)
mfhi $4
TAG565:
lui $4, 4
andi $2, $4, 1
addiu $1, $2, 5
lui $3, 14
TAG566:
lui $2, 15
bgez $2, TAG567
sll $0, $0, 0
lw $3, 0($3)
TAG567:
mfhi $4
sltu $2, $3, $4
lw $1, 0($4)
mthi $2
TAG568:
blez $1, TAG569
lui $2, 3
sll $0, $0, 0
srlv $4, $1, $1
TAG569:
mflo $1
lb $4, 0($1)
mult $1, $1
multu $1, $4
TAG570:
multu $4, $4
mult $4, $4
beq $4, $4, TAG571
sb $4, 0($4)
TAG571:
sh $4, 0($4)
bne $4, $4, TAG572
mult $4, $4
mflo $4
TAG572:
mtlo $4
sllv $1, $4, $4
sh $4, 0($4)
bltz $1, TAG573
TAG573:
lb $4, 0($1)
beq $1, $1, TAG574
lbu $2, 0($4)
lbu $3, 0($1)
TAG574:
bltz $3, TAG575
srl $1, $3, 7
bgez $3, TAG575
lui $2, 11
TAG575:
mtlo $2
blez $2, TAG576
div $2, $2
addiu $4, $2, 2
TAG576:
divu $4, $4
lui $3, 9
mult $4, $3
mflo $4
TAG577:
bgtz $4, TAG578
addiu $2, $4, 1
ori $1, $2, 3
mfhi $1
TAG578:
bne $1, $1, TAG579
subu $3, $1, $1
sh $3, 0($3)
bgez $3, TAG579
TAG579:
sllv $4, $3, $3
mult $3, $4
sb $3, 0($3)
bne $3, $4, TAG580
TAG580:
mthi $4
lui $3, 15
sll $0, $0, 0
mthi $3
TAG581:
bgtz $4, TAG582
lui $2, 6
sb $2, 0($4)
mflo $3
TAG582:
mfhi $3
mfhi $1
bgez $1, TAG583
mtlo $3
TAG583:
mtlo $1
xori $2, $1, 11
sll $0, $0, 0
sll $0, $0, 0
TAG584:
sll $0, $0, 0
sltu $3, $1, $1
sh $1, 0($3)
sb $3, 0($3)
TAG585:
lui $3, 9
xori $2, $3, 3
div $3, $2
bgez $2, TAG586
TAG586:
sll $0, $0, 0
addu $3, $2, $2
sll $0, $0, 0
mfhi $3
TAG587:
divu $3, $3
lui $4, 11
sll $0, $0, 0
and $4, $3, $3
TAG588:
beq $4, $4, TAG589
multu $4, $4
mfhi $2
sltu $1, $4, $4
TAG589:
sll $0, $0, 0
bgtz $1, TAG590
mthi $1
addu $2, $1, $1
TAG590:
mfhi $4
lui $1, 0
andi $2, $4, 6
xori $3, $4, 8
TAG591:
addu $4, $3, $3
mfhi $1
lui $3, 1
beq $4, $1, TAG592
TAG592:
sll $0, $0, 0
slti $4, $3, 13
bne $3, $4, TAG593
lhu $2, 0($4)
TAG593:
mfhi $1
bne $2, $2, TAG594
mtlo $1
bne $1, $2, TAG594
TAG594:
mflo $1
srlv $3, $1, $1
mfhi $4
slt $1, $1, $3
TAG595:
lui $3, 1
subu $4, $1, $3
sll $0, $0, 0
mthi $3
TAG596:
blez $4, TAG597
lui $4, 2
xori $1, $4, 4
lh $1, 0($1)
TAG597:
lui $1, 7
mfhi $3
sra $1, $1, 3
bne $3, $3, TAG598
TAG598:
sll $0, $0, 0
bgtz $1, TAG599
slti $4, $1, 5
add $4, $4, $4
TAG599:
lw $2, 0($4)
sh $2, 0($4)
lui $3, 5
lui $2, 0
TAG600:
bgtz $2, TAG601
sw $2, 0($2)
addiu $4, $2, 5
bne $4, $4, TAG601
TAG601:
divu $4, $4
sll $4, $4, 4
mtlo $4
mfhi $2
TAG602:
multu $2, $2
bgtz $2, TAG603
lh $3, 0($2)
lb $2, 0($2)
TAG603:
ori $4, $2, 10
sra $2, $4, 9
sh $2, 0($4)
mtlo $2
TAG604:
lbu $1, 0($2)
sra $3, $1, 10
lui $4, 4
addiu $3, $2, 10
TAG605:
subu $3, $3, $3
srlv $3, $3, $3
xori $1, $3, 15
multu $3, $3
TAG606:
div $1, $1
lui $4, 15
multu $4, $4
bgtz $4, TAG607
TAG607:
lui $4, 4
mflo $1
lui $4, 2
lui $2, 12
TAG608:
sll $0, $0, 0
bltz $2, TAG609
lui $1, 2
div $2, $2
TAG609:
mthi $1
mtlo $1
subu $2, $1, $1
sb $2, 0($2)
TAG610:
lui $3, 10
sw $3, 0($2)
sltiu $4, $3, 8
bgez $2, TAG611
TAG611:
mthi $4
bgtz $4, TAG612
sb $4, 0($4)
sb $4, 0($4)
TAG612:
lui $3, 3
mfhi $2
xor $4, $4, $4
mflo $4
TAG613:
srav $1, $4, $4
sra $1, $1, 7
ori $3, $1, 9
or $2, $4, $1
TAG614:
addiu $3, $2, 7
bne $2, $3, TAG615
or $2, $3, $3
lui $3, 9
TAG615:
beq $3, $3, TAG616
mthi $3
divu $3, $3
div $3, $3
TAG616:
sltu $2, $3, $3
nor $2, $2, $3
bgez $2, TAG617
sll $0, $0, 0
TAG617:
sll $0, $0, 0
bgtz $2, TAG618
sll $0, $0, 0
mthi $2
TAG618:
sll $0, $0, 0
bne $4, $4, TAG619
sltu $4, $4, $4
beq $4, $4, TAG619
TAG619:
multu $4, $4
lui $3, 15
mult $4, $4
mfhi $1
TAG620:
blez $1, TAG621
lui $3, 15
srav $1, $1, $1
mflo $3
TAG621:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
nor $2, $3, $3
TAG622:
divu $2, $2
lui $2, 2
lui $2, 1
divu $2, $2
TAG623:
mtlo $2
multu $2, $2
mtlo $2
mtlo $2
TAG624:
addu $2, $2, $2
mult $2, $2
sll $0, $0, 0
lui $3, 4
TAG625:
sll $0, $0, 0
addiu $2, $1, 8
mthi $1
mfhi $3
TAG626:
bgez $3, TAG627
sub $2, $3, $3
mtlo $2
bgez $3, TAG627
TAG627:
mtlo $2
blez $2, TAG628
mthi $2
addiu $2, $2, 4
TAG628:
sb $2, 0($2)
lui $3, 6
bgtz $2, TAG629
sll $0, $0, 0
TAG629:
sll $0, $0, 0
beq $3, $3, TAG630
mthi $3
slti $2, $3, 6
TAG630:
xori $2, $2, 0
sb $2, 0($2)
bgtz $2, TAG631
multu $2, $2
TAG631:
bgtz $2, TAG632
sb $2, 0($2)
bgtz $2, TAG632
mfhi $3
TAG632:
mult $3, $3
lbu $2, 0($3)
sh $2, 0($2)
multu $2, $3
TAG633:
lh $3, 0($2)
mfhi $1
bgez $2, TAG634
nor $4, $2, $2
TAG634:
sb $4, 1($4)
bne $4, $4, TAG635
mtlo $4
lui $1, 1
TAG635:
lui $3, 3
sll $0, $0, 0
bltz $3, TAG636
mult $1, $3
TAG636:
lui $1, 11
sll $0, $0, 0
bne $3, $4, TAG637
sll $0, $0, 0
TAG637:
sll $2, $4, 8
lw $2, 256($2)
sll $0, $0, 0
divu $2, $2
TAG638:
bne $2, $2, TAG639
sll $0, $0, 0
beq $2, $2, TAG639
sll $0, $0, 0
TAG639:
mthi $1
bltz $1, TAG640
ori $4, $1, 3
bltz $1, TAG640
TAG640:
divu $4, $4
sll $0, $0, 0
addiu $3, $2, 2
lui $2, 12
TAG641:
mtlo $2
mtlo $2
sllv $1, $2, $2
sll $0, $0, 0
TAG642:
mfhi $2
blez $2, TAG643
xor $3, $4, $2
sw $2, 0($2)
TAG643:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
addiu $1, $1, 12
TAG644:
sll $0, $0, 0
bltz $1, TAG645
sll $0, $0, 0
sll $0, $0, 0
TAG645:
beq $4, $4, TAG646
lui $1, 0
mflo $4
sw $1, 0($4)
TAG646:
sllv $1, $4, $4
lh $3, 0($1)
lui $2, 14
lui $4, 6
TAG647:
mthi $4
mthi $4
sll $0, $0, 0
ori $3, $4, 1
TAG648:
divu $3, $3
multu $3, $3
lui $2, 8
sll $0, $0, 0
TAG649:
sll $0, $0, 0
bne $2, $2, TAG650
mfhi $2
subu $4, $2, $2
TAG650:
lui $1, 10
bne $1, $4, TAG651
slti $3, $4, 10
multu $3, $4
TAG651:
multu $3, $3
bgtz $3, TAG652
lbu $3, 0($3)
sh $3, 0($3)
TAG652:
sw $3, 0($3)
bltz $3, TAG653
xori $1, $3, 3
lw $4, 0($3)
TAG653:
addiu $1, $4, 12
srav $4, $1, $1
or $3, $4, $4
subu $2, $1, $1
TAG654:
mthi $2
lui $2, 12
beq $2, $2, TAG655
mthi $2
TAG655:
blez $2, TAG656
sll $0, $0, 0
subu $2, $2, $2
sb $2, 0($2)
TAG656:
mult $2, $2
addi $4, $2, 2
sltiu $1, $2, 8
mtlo $2
TAG657:
mtlo $1
mfhi $3
mflo $4
bne $4, $1, TAG658
TAG658:
addiu $4, $4, 0
mtlo $4
ori $1, $4, 12
lui $2, 6
TAG659:
lui $1, 11
sll $0, $0, 0
addu $4, $2, $1
mthi $1
TAG660:
lui $2, 0
sll $0, $0, 0
lui $3, 14
mult $3, $2
TAG661:
mtlo $3
bgez $3, TAG662
mthi $3
lui $4, 9
TAG662:
lui $1, 1
xor $2, $4, $1
beq $1, $1, TAG663
sll $0, $0, 0
TAG663:
sll $0, $0, 0
sll $0, $0, 0
ori $1, $2, 15
mthi $2
TAG664:
mflo $1
mtlo $1
sltu $2, $1, $1
mtlo $2
TAG665:
sw $2, 0($2)
lbu $4, 0($2)
bltz $4, TAG666
sh $4, 0($2)
TAG666:
bne $4, $4, TAG667
nor $2, $4, $4
sllv $3, $4, $4
div $4, $2
TAG667:
andi $4, $3, 6
mthi $3
lui $3, 12
beq $3, $4, TAG668
TAG668:
addu $1, $3, $3
sll $0, $0, 0
mtlo $1
mflo $1
TAG669:
xori $3, $1, 5
srl $1, $3, 0
multu $1, $1
multu $3, $1
TAG670:
mtlo $1
mthi $1
mthi $1
beq $1, $1, TAG671
TAG671:
sll $0, $0, 0
sltiu $2, $1, 7
mfhi $1
lui $4, 4
TAG672:
sll $0, $0, 0
bne $4, $4, TAG673
mtlo $4
addu $3, $4, $4
TAG673:
bne $3, $3, TAG674
slt $1, $3, $3
sll $0, $0, 0
bne $1, $3, TAG674
TAG674:
xor $4, $1, $1
mthi $1
srl $2, $1, 5
sub $1, $1, $4
TAG675:
multu $1, $1
multu $1, $1
bne $1, $1, TAG676
lhu $3, 0($1)
TAG676:
mthi $3
lui $2, 14
sll $0, $0, 0
lui $2, 8
TAG677:
sll $0, $0, 0
andi $4, $2, 12
sll $0, $0, 0
xori $3, $4, 5
TAG678:
lb $2, 0($3)
divu $3, $3
mult $3, $2
multu $3, $3
TAG679:
lhu $2, 0($2)
lb $1, 0($2)
mflo $4
mult $1, $2
TAG680:
sllv $1, $4, $4
mthi $4
mfhi $2
sra $3, $2, 10
TAG681:
sw $3, 0($3)
lui $4, 2
sh $4, 0($3)
lui $4, 11
TAG682:
mult $4, $4
lui $1, 3
xori $1, $1, 7
bltz $1, TAG683
TAG683:
addiu $1, $1, 6
lui $2, 14
div $1, $1
mfhi $3
TAG684:
lui $1, 4
mthi $1
mfhi $2
and $3, $2, $3
TAG685:
sw $3, 0($3)
lh $3, 0($3)
subu $4, $3, $3
beq $3, $4, TAG686
TAG686:
multu $4, $4
lb $1, 0($4)
lbu $2, 0($4)
multu $2, $4
TAG687:
srav $4, $2, $2
add $3, $2, $2
slt $1, $4, $3
lw $4, 0($4)
TAG688:
lui $4, 2
bne $4, $4, TAG689
multu $4, $4
sll $0, $0, 0
TAG689:
mthi $1
beq $1, $1, TAG690
mtlo $1
sltiu $2, $1, 6
TAG690:
mtlo $2
mfhi $2
sb $2, 0($2)
mthi $2
TAG691:
beq $2, $2, TAG692
lhu $3, 0($2)
srl $4, $3, 2
sh $2, 0($2)
TAG692:
bne $4, $4, TAG693
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG693:
bne $4, $4, TAG694
sra $4, $4, 8
mfhi $3
sh $4, -512($4)
TAG694:
multu $3, $3
lui $2, 11
srav $2, $2, $3
mtlo $3
TAG695:
sltu $2, $2, $2
blez $2, TAG696
mfhi $1
addu $3, $2, $2
TAG696:
mtlo $3
or $3, $3, $3
bltz $3, TAG697
mthi $3
TAG697:
andi $2, $3, 10
sll $0, $0, 0
lui $1, 1
sll $0, $0, 0
TAG698:
beq $3, $3, TAG699
subu $4, $3, $3
bgtz $4, TAG699
multu $3, $3
TAG699:
bgez $4, TAG700
srlv $1, $4, $4
mthi $4
mthi $1
TAG700:
mult $1, $1
lbu $1, 0($1)
sltu $2, $1, $1
xor $3, $2, $1
TAG701:
lb $2, 0($3)
mtlo $2
lb $1, 0($2)
lh $3, 0($3)
TAG702:
mfhi $1
lh $2, -512($3)
bgez $2, TAG703
srl $1, $2, 6
TAG703:
lui $2, 3
mthi $2
lui $3, 8
lui $1, 1
TAG704:
div $1, $1
bne $1, $1, TAG705
mfhi $4
addiu $4, $1, 4
TAG705:
div $4, $4
srlv $2, $4, $4
bgtz $2, TAG706
lui $4, 0
TAG706:
mthi $4
bltz $4, TAG707
lbu $2, 0($4)
lui $4, 2
TAG707:
lui $2, 7
mfhi $3
sw $3, 0($3)
sll $0, $0, 0
TAG708:
mfhi $1
lhu $4, 0($1)
mflo $1
mtlo $4
TAG709:
mflo $4
lui $3, 12
blez $3, TAG710
mfhi $4
TAG710:
mult $4, $4
bne $4, $4, TAG711
lui $2, 13
lui $3, 5
TAG711:
sll $0, $0, 0
mthi $3
lui $3, 11
mfhi $1
TAG712:
mult $1, $1
sll $0, $0, 0
div $1, $1
lui $3, 2
TAG713:
multu $3, $3
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG714:
lui $4, 14
sll $0, $0, 0
beq $4, $4, TAG715
mtlo $4
TAG715:
andi $1, $4, 6
mult $1, $1
lhu $3, 0($1)
sll $0, $0, 0
TAG716:
sub $1, $3, $3
bgez $3, TAG717
mult $3, $1
div $1, $3
TAG717:
sh $1, 0($1)
bgtz $1, TAG718
mult $1, $1
bgez $1, TAG718
TAG718:
sw $1, 0($1)
lh $4, 0($1)
mthi $1
multu $1, $4
TAG719:
mthi $4
lw $1, 0($4)
sll $1, $4, 11
bgez $1, TAG720
TAG720:
mfhi $1
mtlo $1
lui $2, 9
xori $2, $1, 7
TAG721:
bne $2, $2, TAG722
sb $2, 0($2)
mtlo $2
lui $4, 12
TAG722:
sll $0, $0, 0
blez $1, TAG723
lui $3, 2
beq $3, $1, TAG723
TAG723:
mflo $4
sll $0, $0, 0
beq $4, $3, TAG724
sll $0, $0, 0
TAG724:
and $3, $3, $3
sll $0, $0, 0
lui $4, 6
beq $4, $4, TAG725
TAG725:
mthi $4
multu $4, $4
mthi $4
nor $4, $4, $4
TAG726:
slt $1, $4, $4
sll $0, $0, 0
bne $4, $4, TAG727
sb $1, 0($1)
TAG727:
addu $2, $1, $1
lui $4, 8
sh $1, 0($2)
lui $3, 8
TAG728:
sll $3, $3, 0
xori $3, $3, 3
beq $3, $3, TAG729
multu $3, $3
TAG729:
beq $3, $3, TAG730
mflo $1
srlv $3, $1, $3
div $3, $3
TAG730:
mfhi $4
beq $3, $4, TAG731
div $3, $4
addiu $1, $4, 6
TAG731:
subu $2, $1, $1
mtlo $1
lui $4, 14
blez $2, TAG732
TAG732:
mfhi $4
mult $4, $4
beq $4, $4, TAG733
slt $1, $4, $4
TAG733:
lh $3, 0($1)
bltz $1, TAG734
mflo $3
and $1, $3, $3
TAG734:
mtlo $1
mult $1, $1
ori $2, $1, 13
lbu $2, 0($1)
TAG735:
srav $1, $2, $2
bgtz $1, TAG736
mult $2, $1
bne $2, $1, TAG736
TAG736:
sw $1, 0($1)
mflo $1
blez $1, TAG737
sh $1, 0($1)
TAG737:
sltiu $2, $1, 2
bne $2, $1, TAG738
ori $1, $2, 0
bne $1, $1, TAG738
TAG738:
div $1, $1
mfhi $3
addi $4, $3, 4
srl $3, $1, 0
TAG739:
slti $2, $3, 3
mthi $3
lbu $3, 0($3)
bgez $3, TAG740
TAG740:
mtlo $3
mtlo $3
multu $3, $3
sw $3, 0($3)
TAG741:
bne $3, $3, TAG742
mtlo $3
bne $3, $3, TAG742
srav $4, $3, $3
TAG742:
sw $4, 0($4)
bne $4, $4, TAG743
lui $3, 1
lbu $1, 0($4)
TAG743:
lui $4, 10
sll $0, $0, 0
multu $4, $1
sll $0, $0, 0
TAG744:
lb $2, 0($1)
mtlo $1
lhu $1, 0($2)
or $3, $2, $1
TAG745:
mflo $4
srlv $4, $3, $3
mtlo $3
addi $4, $4, 1
TAG746:
lb $2, 0($4)
bltz $4, TAG747
mtlo $4
bgez $4, TAG747
TAG747:
sb $2, 0($2)
lw $1, 0($2)
mult $1, $1
xori $1, $2, 14
TAG748:
mflo $3
addiu $1, $1, 13
bgez $1, TAG749
addiu $2, $1, 12
TAG749:
sra $1, $2, 3
lhu $2, 0($1)
addiu $2, $1, 14
div $1, $2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop