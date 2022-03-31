ori $1, $0, 3
ori $2, $0, 7
ori $3, $0, 8
ori $4, $0, 11
sw $3, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $2, 12($0)
sw $3, 16($0)
sw $3, 20($0)
sw $1, 24($0)
sw $4, 28($0)
sw $1, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $1, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $1, 96($0)
sw $3, 100($0)
sw $4, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $1, 120($0)
sw $4, 124($0)
blez $2, TAG1
div $2, $2
lui $4, 6
mfhi $2
TAG1:
multu $2, $2
sltu $3, $2, $2
lb $4, 0($3)
subu $3, $3, $4
TAG2:
lui $3, 7
sltu $4, $3, $3
addu $4, $3, $3
srlv $1, $3, $3
TAG3:
sll $0, $0, 0
sll $0, $0, 0
mtlo $1
lui $3, 1
TAG4:
mthi $3
mflo $2
bltz $3, TAG5
or $1, $3, $3
TAG5:
lui $2, 12
nor $4, $1, $1
sll $0, $0, 0
addiu $4, $2, 7
TAG6:
slti $4, $4, 15
lbu $4, 0($4)
sh $4, 0($4)
blez $4, TAG7
TAG7:
mthi $4
multu $4, $4
sra $3, $4, 13
bgez $3, TAG8
TAG8:
lui $3, 4
mflo $1
mthi $3
mthi $3
TAG9:
sra $4, $1, 4
beq $1, $4, TAG10
lbu $1, 0($4)
bgtz $1, TAG10
TAG10:
lui $1, 0
lui $3, 12
div $1, $3
beq $1, $1, TAG11
TAG11:
mfhi $2
mult $3, $2
mfhi $4
bne $2, $2, TAG12
TAG12:
mflo $1
bgtz $4, TAG13
sb $4, 0($1)
mflo $4
TAG13:
mtlo $4
mfhi $1
mult $4, $1
addi $4, $4, 13
TAG14:
addu $4, $4, $4
lui $4, 0
ori $4, $4, 6
bne $4, $4, TAG15
TAG15:
addiu $4, $4, 2
lhu $3, 0($4)
div $4, $4
beq $3, $3, TAG16
TAG16:
div $3, $3
div $3, $3
and $2, $3, $3
mtlo $3
TAG17:
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
sltiu $1, $1, 14
TAG18:
mflo $1
mflo $3
mtlo $1
mfhi $1
TAG19:
bgez $1, TAG20
lui $3, 5
or $4, $3, $3
slt $4, $1, $4
TAG20:
divu $4, $4
lui $1, 4
sw $4, 0($4)
bne $1, $1, TAG21
TAG21:
xori $1, $1, 15
mthi $1
mtlo $1
mfhi $3
TAG22:
beq $3, $3, TAG23
sll $0, $0, 0
sra $3, $3, 11
lb $4, 0($3)
TAG23:
mthi $4
bltz $4, TAG24
lh $2, 0($4)
bltz $2, TAG24
TAG24:
lui $1, 11
beq $2, $1, TAG25
xor $1, $2, $2
div $1, $2
TAG25:
bltz $1, TAG26
lui $3, 9
lui $2, 4
andi $4, $3, 10
TAG26:
bne $4, $4, TAG27
lh $3, 0($4)
addiu $2, $3, 11
div $3, $2
TAG27:
mflo $3
blez $2, TAG28
mthi $2
bgtz $2, TAG28
TAG28:
mthi $3
mthi $3
add $2, $3, $3
slti $4, $3, 0
TAG29:
lhu $1, 0($4)
nor $2, $1, $4
lui $1, 2
mult $1, $4
TAG30:
multu $1, $1
divu $1, $1
beq $1, $1, TAG31
lui $3, 12
TAG31:
lui $2, 10
lui $1, 10
mult $2, $2
div $1, $1
TAG32:
beq $1, $1, TAG33
sra $1, $1, 10
mflo $4
mtlo $4
TAG33:
addu $3, $4, $4
lui $2, 0
beq $4, $4, TAG34
lw $4, 0($4)
TAG34:
mfhi $1
mfhi $2
mthi $1
lui $2, 1
TAG35:
mthi $2
addu $2, $2, $2
mflo $3
sll $0, $0, 0
TAG36:
xori $3, $2, 3
sll $0, $0, 0
mflo $2
beq $2, $2, TAG37
TAG37:
addiu $3, $2, 0
mfhi $2
mtlo $2
sll $0, $0, 0
TAG38:
bgez $2, TAG39
sll $0, $0, 0
lhu $1, 0($2)
sb $2, 0($2)
TAG39:
mthi $1
lh $2, 0($1)
mfhi $1
bne $2, $2, TAG40
TAG40:
mfhi $3
bne $1, $3, TAG41
addiu $1, $3, 7
beq $1, $3, TAG41
TAG41:
mtlo $1
sltu $2, $1, $1
lb $2, 0($1)
mult $1, $1
TAG42:
bne $2, $2, TAG43
lbu $2, 0($2)
mfhi $1
bgtz $2, TAG43
TAG43:
mult $1, $1
mtlo $1
lui $4, 15
divu $1, $4
TAG44:
mfhi $3
sltiu $4, $3, 0
lui $4, 9
and $4, $4, $3
TAG45:
bltz $4, TAG46
add $2, $4, $4
sub $4, $2, $2
sllv $2, $4, $4
TAG46:
lh $4, 0($2)
mult $2, $2
bltz $4, TAG47
mtlo $2
TAG47:
mthi $4
bne $4, $4, TAG48
sw $4, 0($4)
lui $1, 6
TAG48:
div $1, $1
mthi $1
addiu $1, $1, 7
bgez $1, TAG49
TAG49:
sll $0, $0, 0
sll $0, $0, 0
nor $4, $1, $1
sll $0, $0, 0
TAG50:
lui $3, 10
sll $0, $0, 0
sll $0, $0, 0
mflo $1
TAG51:
addu $1, $1, $1
lb $4, 0($1)
mflo $2
mfhi $1
TAG52:
sra $4, $1, 6
ori $2, $4, 14
mthi $4
ori $3, $1, 8
TAG53:
mfhi $2
beq $3, $2, TAG54
sll $0, $0, 0
sllv $2, $2, $2
TAG54:
xori $1, $2, 0
bgtz $1, TAG55
lbu $1, -6144($1)
mult $1, $2
TAG55:
sltiu $3, $1, 13
ori $1, $1, 0
bltz $1, TAG56
srlv $3, $1, $1
TAG56:
subu $2, $3, $3
lui $4, 6
mfhi $3
add $1, $2, $3
TAG57:
sw $1, -6144($1)
beq $1, $1, TAG58
sh $1, -6144($1)
div $1, $1
TAG58:
mtlo $1
multu $1, $1
lui $2, 0
subu $3, $2, $1
TAG59:
srlv $1, $3, $3
mflo $3
ori $2, $3, 12
bne $3, $1, TAG60
TAG60:
addiu $3, $2, 12
sra $4, $3, 0
mtlo $2
sll $0, $0, 0
TAG61:
lui $4, 0
lhu $3, 0($4)
sll $0, $0, 0
beq $4, $4, TAG62
TAG62:
mfhi $3
sub $3, $3, $3
multu $3, $3
xor $3, $3, $3
TAG63:
srl $1, $3, 11
beq $1, $3, TAG64
lhu $2, 0($3)
bgtz $3, TAG64
TAG64:
sll $0, $0, 0
divu $2, $2
sllv $4, $2, $2
mflo $4
TAG65:
mfhi $2
srav $3, $4, $4
bltz $4, TAG66
multu $3, $3
TAG66:
slti $2, $3, 12
lb $1, 0($2)
bne $3, $3, TAG67
mtlo $3
TAG67:
bgez $1, TAG68
lhu $4, 0($1)
mthi $1
mtlo $1
TAG68:
sb $4, 0($4)
lui $1, 2
mfhi $1
mtlo $1
TAG69:
subu $1, $1, $1
srav $4, $1, $1
slt $2, $4, $1
sw $4, 0($1)
TAG70:
mflo $1
bgtz $2, TAG71
sh $1, 0($1)
or $3, $1, $1
TAG71:
sh $3, 0($3)
bgez $3, TAG72
andi $2, $3, 6
sltiu $3, $3, 0
TAG72:
lui $4, 8
sh $4, 0($3)
srlv $2, $4, $4
bne $3, $2, TAG73
TAG73:
sll $0, $0, 0
mthi $2
div $2, $2
nor $1, $2, $2
TAG74:
div $1, $1
xor $3, $1, $1
mult $1, $1
bgez $3, TAG75
TAG75:
sw $3, 0($3)
mthi $3
mult $3, $3
mfhi $3
TAG76:
mfhi $1
slt $3, $1, $1
lb $1, 0($3)
xor $4, $1, $1
TAG77:
lui $2, 5
mflo $3
sb $3, 0($4)
andi $2, $2, 0
TAG78:
lhu $4, 0($2)
slti $3, $4, 1
blez $3, TAG79
div $2, $3
TAG79:
lbu $2, 0($3)
bltz $3, TAG80
lb $1, 0($3)
lb $1, 0($3)
TAG80:
mthi $1
beq $1, $1, TAG81
lhu $1, 0($1)
beq $1, $1, TAG81
TAG81:
mult $1, $1
lw $2, 0($1)
sh $1, 0($1)
mthi $2
TAG82:
xori $1, $2, 14
sb $2, 0($1)
beq $1, $1, TAG83
srlv $3, $2, $2
TAG83:
bgtz $3, TAG84
lhu $2, 0($3)
mfhi $3
mfhi $4
TAG84:
lui $4, 14
srl $2, $4, 10
mthi $4
lui $2, 3
TAG85:
addiu $3, $2, 0
subu $1, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG86:
bgez $3, TAG87
lui $4, 9
lui $2, 4
sltu $2, $2, $4
TAG87:
mthi $2
mfhi $2
mfhi $1
sll $0, $0, 0
TAG88:
div $2, $2
subu $2, $2, $2
bltz $2, TAG89
mflo $2
TAG89:
lui $1, 13
addiu $4, $2, 11
lw $2, 0($4)
divu $2, $2
TAG90:
blez $2, TAG91
nor $1, $2, $2
lb $2, 0($2)
lhu $2, 0($2)
TAG91:
lh $4, 0($2)
sw $2, 0($2)
mfhi $4
and $3, $4, $4
TAG92:
or $2, $3, $3
bne $2, $2, TAG93
sh $2, 0($2)
addu $2, $3, $3
TAG93:
bne $2, $2, TAG94
sltu $4, $2, $2
bgtz $2, TAG94
sllv $3, $2, $4
TAG94:
sw $3, 0($3)
beq $3, $3, TAG95
mthi $3
lui $4, 1
TAG95:
lb $2, 0($4)
bne $2, $2, TAG96
sw $2, 0($2)
lui $2, 14
TAG96:
divu $2, $2
mtlo $2
sllv $3, $2, $2
bgtz $3, TAG97
TAG97:
mfhi $4
bgtz $4, TAG98
sll $0, $0, 0
sll $0, $0, 0
TAG98:
blez $4, TAG99
mthi $4
mfhi $3
mult $4, $4
TAG99:
sll $0, $0, 0
lui $1, 7
blez $3, TAG100
mfhi $1
TAG100:
multu $1, $1
slti $1, $1, 6
mthi $1
bgez $1, TAG101
TAG101:
lui $4, 1
mtlo $4
sll $0, $0, 0
sb $1, 0($1)
TAG102:
blez $4, TAG103
xori $1, $4, 15
bgez $1, TAG103
mfhi $3
TAG103:
srlv $2, $3, $3
mfhi $1
sltiu $4, $1, 4
bgez $2, TAG104
TAG104:
lui $4, 5
sll $0, $0, 0
sll $0, $0, 0
mthi $4
TAG105:
mtlo $4
sll $0, $0, 0
mult $4, $4
blez $4, TAG106
TAG106:
addu $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG107
TAG107:
mthi $4
sll $0, $0, 0
addu $4, $4, $2
multu $4, $2
TAG108:
blez $4, TAG109
slti $2, $4, 12
addiu $3, $4, 1
lui $2, 10
TAG109:
sll $0, $0, 0
addu $1, $2, $2
srl $1, $1, 6
mult $2, $1
TAG110:
lui $1, 13
bgtz $1, TAG111
mflo $1
mtlo $1
TAG111:
div $1, $1
sll $0, $0, 0
mflo $4
sll $0, $0, 0
TAG112:
lui $4, 5
subu $3, $4, $4
mflo $1
xori $4, $3, 13
TAG113:
beq $4, $4, TAG114
divu $4, $4
bne $4, $4, TAG114
mfhi $4
TAG114:
slt $1, $4, $4
mthi $1
lui $2, 7
sll $0, $0, 0
TAG115:
addu $4, $2, $2
mult $2, $4
mflo $1
sh $4, 0($1)
TAG116:
lw $2, 0($1)
bltz $2, TAG117
mflo $1
mfhi $4
TAG117:
bltz $4, TAG118
lui $4, 13
mthi $4
mthi $4
TAG118:
mfhi $3
beq $3, $3, TAG119
sll $0, $0, 0
sw $3, 0($3)
TAG119:
bne $3, $3, TAG120
srlv $2, $3, $3
bltz $3, TAG120
sra $2, $2, 2
TAG120:
addiu $4, $2, 8
bgez $2, TAG121
lui $3, 4
mflo $2
TAG121:
beq $2, $2, TAG122
nor $2, $2, $2
lh $3, 0($2)
div $3, $3
TAG122:
andi $2, $3, 9
srlv $2, $3, $2
mfhi $1
beq $1, $2, TAG123
TAG123:
andi $4, $1, 9
mflo $4
bltz $4, TAG124
sll $0, $0, 0
TAG124:
bne $4, $4, TAG125
mthi $4
mult $4, $4
lh $2, 0($4)
TAG125:
addu $3, $2, $2
sltu $2, $3, $2
mfhi $4
lui $1, 12
TAG126:
xori $2, $1, 4
or $1, $1, $2
bne $1, $1, TAG127
mtlo $1
TAG127:
slti $3, $1, 14
sll $0, $0, 0
mthi $1
or $2, $3, $3
TAG128:
bne $2, $2, TAG129
sh $2, 0($2)
bgez $2, TAG129
multu $2, $2
TAG129:
multu $2, $2
sb $2, 0($2)
sw $2, 0($2)
blez $2, TAG130
TAG130:
multu $2, $2
mfhi $2
sb $2, 0($2)
multu $2, $2
TAG131:
mtlo $2
sb $2, 0($2)
lui $1, 6
mfhi $1
TAG132:
addiu $1, $1, 15
beq $1, $1, TAG133
mfhi $2
beq $1, $2, TAG133
TAG133:
xori $3, $2, 10
mfhi $4
beq $4, $4, TAG134
mthi $3
TAG134:
bltz $4, TAG135
sw $4, 0($4)
lui $1, 8
sltu $2, $1, $1
TAG135:
lui $1, 15
sll $0, $0, 0
srl $2, $1, 10
mfhi $2
TAG136:
sh $2, 0($2)
slti $1, $2, 2
sh $2, 0($2)
addu $2, $2, $1
TAG137:
sltu $3, $2, $2
bgtz $3, TAG138
mfhi $3
beq $2, $2, TAG138
TAG138:
mfhi $4
sh $4, 0($3)
mthi $3
bne $3, $4, TAG139
TAG139:
lh $4, 0($4)
mflo $4
mflo $2
srl $2, $4, 15
TAG140:
sw $2, 0($2)
bne $2, $2, TAG141
sltiu $1, $2, 4
addi $3, $2, 4
TAG141:
divu $3, $3
mfhi $2
lui $1, 4
mtlo $1
TAG142:
andi $4, $1, 7
multu $1, $4
sll $0, $0, 0
lh $4, 0($4)
TAG143:
addi $1, $4, 11
mfhi $4
mtlo $1
lui $2, 4
TAG144:
sll $0, $0, 0
mtlo $2
mult $2, $2
lui $4, 0
TAG145:
multu $4, $4
beq $4, $4, TAG146
mult $4, $4
multu $4, $4
TAG146:
lhu $1, 0($4)
addu $4, $1, $4
lui $3, 13
multu $3, $1
TAG147:
blez $3, TAG148
sltiu $1, $3, 2
sub $4, $3, $1
bgtz $4, TAG148
TAG148:
sll $3, $4, 5
mflo $4
andi $1, $4, 14
mtlo $4
TAG149:
mthi $1
multu $1, $1
or $3, $1, $1
bgtz $1, TAG150
TAG150:
andi $2, $3, 6
mtlo $2
subu $2, $2, $3
lui $1, 4
TAG151:
mfhi $1
multu $1, $1
sw $1, 0($1)
slti $4, $1, 10
TAG152:
lui $3, 11
mthi $4
and $3, $3, $4
multu $4, $3
TAG153:
sb $3, 0($3)
lb $1, 0($3)
lui $2, 1
mfhi $1
TAG154:
mtlo $1
mthi $1
sll $1, $1, 8
lui $4, 10
TAG155:
lui $2, 5
bgtz $2, TAG156
sll $0, $0, 0
mult $2, $4
TAG156:
sll $0, $0, 0
mfhi $3
mult $2, $3
addiu $1, $3, 0
TAG157:
mfhi $3
lhu $1, 0($1)
lhu $3, 0($1)
mult $1, $1
TAG158:
lb $3, 0($3)
mfhi $2
bne $3, $2, TAG159
mult $2, $3
TAG159:
lb $2, 0($2)
lh $2, 0($2)
mflo $3
sh $2, 0($3)
TAG160:
mult $3, $3
lh $2, 0($3)
blez $3, TAG161
lui $1, 6
TAG161:
or $4, $1, $1
bne $4, $1, TAG162
mfhi $1
add $4, $1, $1
TAG162:
bgtz $4, TAG163
sw $4, 0($4)
nor $1, $4, $4
sb $4, 0($4)
TAG163:
mfhi $1
beq $1, $1, TAG164
ori $1, $1, 3
addu $1, $1, $1
TAG164:
beq $1, $1, TAG165
lb $1, 0($1)
andi $1, $1, 1
addu $4, $1, $1
TAG165:
sb $4, 0($4)
multu $4, $4
sh $4, 0($4)
multu $4, $4
TAG166:
lb $3, 0($4)
slti $4, $4, 15
mfhi $2
mthi $2
TAG167:
blez $2, TAG168
lw $1, 0($2)
lui $1, 14
sh $1, 0($1)
TAG168:
lui $1, 1
mtlo $1
bgtz $1, TAG169
mtlo $1
TAG169:
addu $4, $1, $1
addiu $1, $1, 15
and $4, $4, $1
mfhi $2
TAG170:
mflo $4
mthi $4
mult $2, $2
bltz $2, TAG171
TAG171:
sll $0, $0, 0
bne $4, $4, TAG172
srlv $3, $4, $4
sll $0, $0, 0
TAG172:
lui $2, 10
bne $3, $3, TAG173
multu $2, $3
lui $1, 13
TAG173:
bgtz $1, TAG174
mtlo $1
mflo $3
sw $1, 0($3)
TAG174:
mflo $1
div $3, $3
addiu $1, $3, 10
slt $3, $3, $1
TAG175:
srlv $2, $3, $3
sltu $4, $2, $3
addu $2, $3, $3
lhu $2, 0($2)
TAG176:
and $4, $2, $2
beq $2, $4, TAG177
mfhi $2
mfhi $1
TAG177:
mtlo $1
sll $0, $0, 0
srav $4, $1, $1
sh $4, 0($4)
TAG178:
mtlo $4
beq $4, $4, TAG179
mtlo $4
bgtz $4, TAG179
TAG179:
sll $1, $4, 13
lui $4, 9
sll $0, $0, 0
mfhi $1
TAG180:
sub $3, $1, $1
lb $4, 0($1)
lui $4, 15
andi $2, $3, 2
TAG181:
sw $2, 0($2)
mult $2, $2
sh $2, 0($2)
bne $2, $2, TAG182
TAG182:
lui $1, 1
slti $4, $1, 6
beq $4, $2, TAG183
mfhi $1
TAG183:
sw $1, 0($1)
sll $1, $1, 5
mthi $1
srl $3, $1, 12
TAG184:
mfhi $4
lhu $2, 0($3)
blez $4, TAG185
mult $2, $3
TAG185:
lui $2, 13
mflo $2
sltiu $3, $2, 2
lbu $1, 0($2)
TAG186:
mflo $4
sltiu $1, $1, 11
beq $4, $1, TAG187
mfhi $4
TAG187:
sh $4, 0($4)
lb $1, 0($4)
sb $1, 0($1)
sh $4, 0($4)
TAG188:
mthi $1
addi $3, $1, 1
lui $2, 5
mult $2, $2
TAG189:
mtlo $2
mtlo $2
bgtz $2, TAG190
mtlo $2
TAG190:
sll $0, $0, 0
mflo $3
mthi $2
mult $2, $2
TAG191:
sll $0, $0, 0
mfhi $4
bgez $4, TAG192
lbu $2, 0($4)
TAG192:
sra $1, $2, 11
mthi $2
multu $1, $1
srlv $2, $2, $1
TAG193:
sltiu $2, $2, 7
lb $3, 0($2)
sltu $3, $3, $2
lbu $3, 0($3)
TAG194:
mfhi $2
srlv $2, $3, $2
nor $1, $3, $2
lhu $4, 0($3)
TAG195:
lbu $3, 0($4)
sra $4, $3, 5
multu $3, $3
mfhi $3
TAG196:
mult $3, $3
lb $2, 0($3)
lh $3, 0($2)
mfhi $2
TAG197:
addu $2, $2, $2
bne $2, $2, TAG198
multu $2, $2
lui $4, 4
TAG198:
mtlo $4
lui $2, 13
lui $1, 9
bgez $2, TAG199
TAG199:
sll $0, $0, 0
addiu $1, $1, 11
mtlo $1
sll $0, $0, 0
TAG200:
bgez $1, TAG201
sll $0, $0, 0
sb $1, 0($1)
divu $1, $1
TAG201:
bltz $1, TAG202
sll $0, $0, 0
multu $3, $3
sll $0, $0, 0
TAG202:
mult $3, $3
multu $3, $3
mfhi $3
blez $3, TAG203
TAG203:
mflo $1
lbu $3, 0($3)
blez $3, TAG204
mflo $1
TAG204:
lui $1, 11
lui $4, 14
sll $0, $0, 0
mthi $4
TAG205:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG206
div $2, $2
TAG206:
xor $1, $2, $2
sb $2, 0($1)
sll $0, $0, 0
sb $2, 0($1)
TAG207:
mult $1, $1
lh $2, 0($1)
lw $4, 0($1)
subu $2, $2, $4
TAG208:
mtlo $2
slt $2, $2, $2
lb $1, 0($2)
lui $4, 10
TAG209:
divu $4, $4
sll $0, $0, 0
addiu $3, $4, 14
div $3, $3
TAG210:
mflo $2
or $2, $3, $3
mfhi $4
addu $4, $3, $3
TAG211:
beq $4, $4, TAG212
or $3, $4, $4
mtlo $4
bne $3, $4, TAG212
TAG212:
srlv $2, $3, $3
sll $3, $3, 0
mtlo $3
sll $0, $0, 0
TAG213:
lb $4, 0($1)
and $2, $1, $1
lh $2, 0($2)
lui $2, 14
TAG214:
mflo $3
divu $2, $3
mthi $2
lui $3, 13
TAG215:
mfhi $1
sll $0, $0, 0
bgez $3, TAG216
multu $1, $3
TAG216:
bne $1, $1, TAG217
divu $1, $1
bgtz $1, TAG217
div $1, $1
TAG217:
addiu $4, $1, 0
sll $0, $0, 0
bne $4, $1, TAG218
mfhi $4
TAG218:
bgtz $4, TAG219
addu $1, $4, $4
mflo $1
mtlo $1
TAG219:
ori $1, $1, 11
beq $1, $1, TAG220
sb $1, 0($1)
beq $1, $1, TAG220
TAG220:
multu $1, $1
subu $1, $1, $1
bgtz $1, TAG221
mult $1, $1
TAG221:
add $2, $1, $1
mtlo $2
or $1, $2, $2
sltiu $1, $1, 10
TAG222:
lui $1, 13
mthi $1
lui $3, 2
sll $0, $0, 0
TAG223:
mtlo $3
sra $3, $3, 5
lhu $3, -4096($3)
lbu $4, 0($3)
TAG224:
lw $3, 0($4)
addi $2, $3, 6
mtlo $2
mtlo $3
TAG225:
blez $2, TAG226
or $3, $2, $2
mfhi $2
mflo $3
TAG226:
addiu $3, $3, 7
mthi $3
lui $4, 12
lb $3, 0($3)
TAG227:
mthi $3
sh $3, 0($3)
addu $2, $3, $3
srl $2, $3, 5
TAG228:
blez $2, TAG229
or $4, $2, $2
sb $2, 0($4)
mfhi $4
TAG229:
mflo $1
bne $1, $1, TAG230
sra $1, $1, 13
bne $4, $1, TAG230
TAG230:
lui $3, 9
sw $1, 0($1)
and $3, $3, $1
lui $3, 14
TAG231:
mtlo $3
sll $0, $0, 0
and $1, $3, $3
nor $3, $3, $3
TAG232:
sll $0, $0, 0
blez $3, TAG233
div $3, $3
div $3, $3
TAG233:
mthi $3
blez $3, TAG234
andi $3, $3, 11
lw $4, 0($3)
TAG234:
lw $2, 0($4)
blez $4, TAG235
mult $2, $4
sb $4, 0($2)
TAG235:
sb $2, 0($2)
mult $2, $2
bne $2, $2, TAG236
sh $2, 0($2)
TAG236:
lw $1, 0($2)
bne $1, $2, TAG237
xori $2, $2, 11
sb $2, 0($2)
TAG237:
divu $2, $2
lbu $4, 0($2)
mtlo $4
sb $2, 0($4)
TAG238:
ori $1, $4, 8
bne $1, $1, TAG239
mtlo $4
bgez $4, TAG239
TAG239:
addiu $1, $1, 8
divu $1, $1
addu $3, $1, $1
lui $3, 6
TAG240:
sll $0, $0, 0
mtlo $3
and $4, $3, $4
mtlo $4
TAG241:
lbu $4, 0($4)
lui $4, 15
mfhi $1
lui $4, 9
TAG242:
mthi $4
mult $4, $4
mthi $4
sll $0, $0, 0
TAG243:
beq $3, $3, TAG244
addiu $4, $3, 7
bne $3, $4, TAG244
divu $3, $4
TAG244:
sll $0, $0, 0
lb $4, 0($2)
mthi $4
multu $2, $4
TAG245:
srav $1, $4, $4
sh $1, 0($1)
bltz $1, TAG246
sra $4, $4, 7
TAG246:
mflo $3
mtlo $4
blez $4, TAG247
mult $4, $3
TAG247:
bne $3, $3, TAG248
div $3, $3
mflo $1
mtlo $1
TAG248:
mflo $3
beq $1, $1, TAG249
mfhi $2
lw $4, 0($1)
TAG249:
mflo $1
bgez $1, TAG250
multu $4, $4
sra $4, $4, 6
TAG250:
bltz $4, TAG251
srlv $1, $4, $4
andi $1, $1, 13
sra $3, $1, 14
TAG251:
lh $4, 0($3)
sb $3, 0($4)
bne $4, $3, TAG252
mthi $4
TAG252:
lb $3, 0($4)
add $1, $4, $3
lui $2, 10
mthi $3
TAG253:
mfhi $1
sll $0, $0, 0
bgez $2, TAG254
multu $2, $1
TAG254:
lui $4, 11
lui $1, 0
lw $4, 0($1)
bgtz $1, TAG255
TAG255:
lui $4, 6
sll $0, $0, 0
lui $2, 8
mtlo $4
TAG256:
lui $3, 13
sll $0, $0, 0
bgez $3, TAG257
sll $0, $0, 0
TAG257:
xori $3, $3, 13
lui $4, 3
bgez $3, TAG258
mthi $3
TAG258:
slt $3, $4, $4
addiu $4, $4, 1
lui $2, 13
bne $4, $4, TAG259
TAG259:
sll $0, $0, 0
mult $1, $1
bne $2, $1, TAG260
sltiu $2, $1, 13
TAG260:
srlv $4, $2, $2
bne $2, $2, TAG261
lw $2, 0($4)
bltz $2, TAG261
TAG261:
sw $2, 0($2)
slti $3, $2, 2
bgez $2, TAG262
mflo $4
TAG262:
sll $2, $4, 0
lui $3, 6
sll $0, $0, 0
mtlo $2
TAG263:
sll $0, $0, 0
mflo $1
sll $0, $0, 0
sll $0, $0, 0
TAG264:
sll $0, $0, 0
lui $2, 10
sll $0, $0, 0
beq $3, $1, TAG265
TAG265:
lui $4, 15
sll $0, $0, 0
mfhi $1
sltiu $3, $4, 5
TAG266:
bne $3, $3, TAG267
subu $1, $3, $3
mfhi $3
mflo $3
TAG267:
lui $3, 6
sll $0, $0, 0
sll $0, $0, 0
bgtz $3, TAG268
TAG268:
sll $0, $0, 0
sllv $2, $4, $4
and $3, $4, $2
div $2, $4
TAG269:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG270:
mflo $4
divu $4, $2
mfhi $3
ori $1, $2, 12
TAG271:
lui $1, 8
bne $1, $1, TAG272
slti $3, $1, 7
mthi $1
TAG272:
lui $3, 7
bne $3, $3, TAG273
sll $0, $0, 0
lui $1, 9
TAG273:
sll $0, $0, 0
lui $3, 11
divu $1, $1
bgtz $3, TAG274
TAG274:
mthi $3
bltz $3, TAG275
mflo $4
bltz $3, TAG275
TAG275:
sb $4, 0($4)
lb $1, 0($4)
mflo $1
mtlo $1
TAG276:
lb $3, 0($1)
bne $3, $1, TAG277
lb $1, 0($1)
lb $3, 0($3)
TAG277:
lui $2, 9
sb $2, 0($3)
mfhi $4
sll $0, $0, 0
TAG278:
mfhi $1
sltu $1, $1, $4
lhu $1, 0($1)
beq $4, $1, TAG279
TAG279:
sltu $2, $1, $1
bltz $1, TAG280
sw $2, 0($1)
multu $2, $1
TAG280:
lui $4, 5
mtlo $2
mtlo $4
lh $1, 0($2)
TAG281:
sw $1, 0($1)
mflo $1
xori $2, $1, 3
div $2, $1
TAG282:
bne $2, $2, TAG283
addiu $1, $2, 6
div $1, $2
multu $2, $2
TAG283:
addiu $1, $1, 12
lui $1, 13
mtlo $1
blez $1, TAG284
TAG284:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG285
TAG285:
lui $3, 2
mthi $3
mflo $1
divu $1, $1
TAG286:
mfhi $2
nor $4, $1, $2
mflo $2
sll $0, $0, 0
TAG287:
sll $0, $0, 0
blez $4, TAG288
mfhi $2
lw $3, 0($4)
TAG288:
bgez $3, TAG289
lui $4, 2
lbu $4, 0($4)
bltz $4, TAG289
TAG289:
addu $3, $4, $4
lui $3, 3
sll $0, $0, 0
lui $2, 10
TAG290:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG291
mfhi $2
TAG291:
and $1, $2, $2
sltiu $3, $1, 5
lw $2, 0($1)
bne $2, $3, TAG292
TAG292:
srl $2, $2, 6
sb $2, 0($2)
mflo $4
lw $3, 0($2)
TAG293:
bne $3, $3, TAG294
lui $2, 3
mflo $3
mtlo $2
TAG294:
addu $3, $3, $3
sltiu $2, $3, 10
mtlo $3
lb $3, 0($3)
TAG295:
blez $3, TAG296
mult $3, $3
bgez $3, TAG296
mflo $2
TAG296:
bne $2, $2, TAG297
sb $2, 0($2)
lb $3, 0($2)
bltz $3, TAG297
TAG297:
mfhi $1
lbu $2, 0($1)
sb $3, 0($2)
bne $1, $3, TAG298
TAG298:
lui $3, 5
sll $0, $0, 0
bne $3, $3, TAG299
sh $3, 0($2)
TAG299:
div $3, $3
sll $0, $0, 0
lui $4, 11
sw $3, 0($2)
TAG300:
mtlo $4
srl $3, $4, 0
sll $2, $4, 5
bgez $3, TAG301
TAG301:
sltiu $4, $2, 14
multu $2, $2
lb $2, 0($4)
blez $2, TAG302
TAG302:
or $1, $2, $2
mult $2, $2
mult $1, $1
mflo $1
TAG303:
bne $1, $1, TAG304
sb $1, 0($1)
mfhi $3
beq $1, $3, TAG304
TAG304:
lb $1, 0($3)
sub $4, $3, $3
mult $3, $3
lb $3, 0($1)
TAG305:
ori $1, $3, 8
lui $4, 0
mflo $4
sh $4, 0($1)
TAG306:
mthi $4
mthi $4
lh $3, 0($4)
sltu $4, $4, $3
TAG307:
mflo $2
mtlo $2
mfhi $4
lui $4, 5
TAG308:
div $4, $4
sll $0, $0, 0
srav $3, $4, $4
sll $0, $0, 0
TAG309:
bne $2, $2, TAG310
addi $4, $2, 3
bgtz $4, TAG310
srl $4, $2, 3
TAG310:
mflo $1
bgtz $4, TAG311
xori $2, $1, 15
xor $4, $4, $4
TAG311:
sh $4, 0($4)
beq $4, $4, TAG312
mthi $4
sll $4, $4, 1
TAG312:
blez $4, TAG313
multu $4, $4
sb $4, 0($4)
mthi $4
TAG313:
lh $2, 0($4)
addi $1, $4, 12
sw $4, 0($1)
mfhi $4
TAG314:
srl $1, $4, 5
bne $4, $4, TAG315
sb $4, 0($1)
lui $2, 4
TAG315:
andi $4, $2, 3
mthi $2
mthi $2
sb $2, 0($4)
TAG316:
andi $1, $4, 10
slt $4, $4, $1
mult $4, $1
sh $1, 0($4)
TAG317:
bne $4, $4, TAG318
and $1, $4, $4
xori $4, $4, 15
subu $1, $4, $4
TAG318:
multu $1, $1
sh $1, 0($1)
xor $4, $1, $1
lw $4, 0($1)
TAG319:
lui $1, 15
nor $4, $1, $4
mfhi $3
lui $3, 0
TAG320:
slti $4, $3, 15
lbu $4, 0($4)
mthi $4
mtlo $3
TAG321:
multu $4, $4
bne $4, $4, TAG322
sllv $3, $4, $4
beq $4, $4, TAG322
TAG322:
sltiu $1, $3, 12
sw $1, 0($3)
sh $1, 0($3)
lb $4, 0($1)
TAG323:
lhu $1, 0($4)
mflo $3
multu $1, $3
sh $3, 0($3)
TAG324:
mflo $2
sw $3, 0($2)
multu $3, $3
mflo $3
TAG325:
blez $3, TAG326
mflo $4
mthi $4
mflo $3
TAG326:
lui $1, 4
multu $3, $3
lh $2, 0($3)
sll $0, $0, 0
TAG327:
ori $3, $3, 13
blez $3, TAG328
sra $1, $3, 12
lui $4, 7
TAG328:
lui $4, 1
bne $4, $4, TAG329
sll $0, $0, 0
bltz $4, TAG329
TAG329:
sll $0, $0, 0
addiu $1, $4, 9
sltiu $3, $4, 0
mflo $1
TAG330:
nor $4, $1, $1
xor $1, $1, $1
mtlo $1
slt $4, $1, $4
TAG331:
bgez $4, TAG332
lb $1, 0($4)
addi $4, $4, 11
beq $4, $4, TAG332
TAG332:
mthi $4
andi $2, $4, 3
lb $4, 0($2)
mult $4, $4
TAG333:
and $4, $4, $4
mult $4, $4
sb $4, 0($4)
mflo $2
TAG334:
lh $1, 0($2)
lui $2, 3
lui $4, 2
bgtz $4, TAG335
TAG335:
or $3, $4, $4
mfhi $1
multu $4, $4
bltz $4, TAG336
TAG336:
andi $3, $1, 13
mult $1, $3
bltz $1, TAG337
lw $3, 0($1)
TAG337:
sltiu $1, $3, 2
lui $3, 4
mthi $1
nor $4, $1, $3
TAG338:
bltz $4, TAG339
slti $1, $4, 5
lui $2, 6
mtlo $2
TAG339:
sltiu $4, $2, 14
sra $1, $2, 14
mflo $4
mult $4, $4
TAG340:
nor $4, $4, $4
mflo $2
mult $4, $4
beq $2, $2, TAG341
TAG341:
srav $4, $2, $2
addi $2, $4, 6
mtlo $2
sb $2, 0($2)
TAG342:
sra $1, $2, 15
lui $1, 8
mtlo $2
mfhi $2
TAG343:
mfhi $3
bltz $2, TAG344
mtlo $3
sra $4, $2, 11
TAG344:
slt $3, $4, $4
mult $3, $4
bne $4, $3, TAG345
lui $4, 8
TAG345:
mflo $4
lhu $2, 0($4)
mtlo $4
lui $1, 14
TAG346:
mtlo $1
sll $0, $0, 0
bgtz $1, TAG347
srav $3, $1, $3
TAG347:
divu $3, $3
sll $0, $0, 0
ori $1, $3, 2
and $4, $1, $3
TAG348:
bgez $4, TAG349
mfhi $3
bgez $4, TAG349
lui $1, 3
TAG349:
bltz $1, TAG350
sra $2, $1, 5
multu $1, $2
divu $2, $2
TAG350:
blez $2, TAG351
sh $2, -28672($2)
bne $2, $2, TAG351
nor $2, $2, $2
TAG351:
mflo $4
bltz $4, TAG352
sb $4, 0($4)
addiu $2, $4, 4
TAG352:
sll $4, $2, 6
lui $2, 7
mtlo $4
mflo $4
TAG353:
div $4, $4
bne $4, $4, TAG354
multu $4, $4
sltiu $3, $4, 8
TAG354:
bgez $3, TAG355
mult $3, $3
srlv $1, $3, $3
sltu $2, $3, $3
TAG355:
sll $0, $0, 0
bne $2, $1, TAG356
sll $4, $2, 10
bgez $4, TAG356
TAG356:
srl $3, $4, 3
mtlo $3
mflo $2
srlv $4, $3, $2
TAG357:
mtlo $4
addu $4, $4, $4
mult $4, $4
sll $0, $0, 0
TAG358:
sll $0, $0, 0
mthi $3
mthi $3
sll $0, $0, 0
TAG359:
lui $1, 13
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
TAG360:
bltz $1, TAG361
sltu $1, $1, $1
sw $1, 0($1)
lui $3, 9
TAG361:
and $3, $3, $3
bgtz $3, TAG362
srlv $4, $3, $3
mthi $3
TAG362:
mtlo $4
mthi $4
div $4, $4
mtlo $4
TAG363:
mult $4, $4
multu $4, $4
sll $0, $0, 0
sllv $1, $4, $4
TAG364:
bltz $1, TAG365
lui $2, 12
divu $1, $1
divu $2, $1
TAG365:
blez $2, TAG366
lui $2, 3
lui $3, 5
bltz $2, TAG366
TAG366:
multu $3, $3
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
TAG367:
sltiu $4, $1, 15
mtlo $4
multu $4, $4
beq $4, $4, TAG368
TAG368:
lb $4, 0($4)
mfhi $3
slt $1, $4, $4
bgez $4, TAG369
TAG369:
mthi $1
multu $1, $1
lh $4, 0($1)
sh $1, 0($4)
TAG370:
andi $4, $4, 13
bne $4, $4, TAG371
multu $4, $4
mtlo $4
TAG371:
bne $4, $4, TAG372
lbu $2, 0($4)
mthi $2
sh $4, 0($2)
TAG372:
sh $2, 0($2)
lh $3, 0($2)
lh $2, 0($3)
bne $3, $2, TAG373
TAG373:
lhu $4, 0($2)
bne $2, $2, TAG374
sb $4, 0($4)
mthi $4
TAG374:
sw $4, 0($4)
sllv $1, $4, $4
nor $1, $1, $4
lui $1, 6
TAG375:
lui $1, 1
lui $4, 4
lui $4, 5
sll $0, $0, 0
TAG376:
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG377
TAG377:
sll $0, $0, 0
sll $0, $0, 0
multu $1, $1
sll $0, $0, 0
TAG378:
mfhi $2
xori $2, $2, 8
sb $2, 0($2)
lui $3, 9
TAG379:
sll $0, $0, 0
sll $0, $0, 0
mflo $4
mult $2, $2
TAG380:
lhu $3, 0($4)
mfhi $4
mthi $3
lui $4, 9
TAG381:
sll $0, $0, 0
bne $4, $4, TAG382
sllv $4, $4, $4
multu $4, $4
TAG382:
lui $2, 11
sll $0, $0, 0
mtlo $4
sllv $2, $2, $4
TAG383:
beq $2, $2, TAG384
mflo $3
mflo $1
sb $1, 0($3)
TAG384:
lui $2, 4
sll $0, $0, 0
bgtz $1, TAG385
andi $4, $2, 5
TAG385:
and $4, $4, $4
lhu $2, 0($4)
subu $3, $2, $2
lui $2, 15
TAG386:
addiu $3, $2, 13
divu $3, $2
mthi $2
lui $2, 5
TAG387:
sltiu $1, $2, 10
mthi $2
lui $4, 8
bgez $2, TAG388
TAG388:
xori $3, $4, 13
addu $2, $3, $4
mult $2, $2
sll $0, $0, 0
TAG389:
divu $2, $2
blez $2, TAG390
sll $0, $0, 0
sll $0, $0, 0
TAG390:
sltu $3, $4, $4
bne $3, $4, TAG391
divu $3, $4
beq $4, $3, TAG391
TAG391:
sb $3, 0($3)
mthi $3
bne $3, $3, TAG392
multu $3, $3
TAG392:
mthi $3
bgtz $3, TAG393
sra $4, $3, 10
ori $3, $3, 3
TAG393:
and $4, $3, $3
mthi $3
mthi $4
multu $4, $4
TAG394:
ori $3, $4, 2
bne $3, $3, TAG395
sb $3, 0($3)
sltiu $3, $3, 14
TAG395:
bgtz $3, TAG396
lui $2, 6
mflo $4
blez $3, TAG396
TAG396:
andi $3, $4, 8
slt $4, $4, $3
srlv $3, $4, $3
bne $3, $3, TAG397
TAG397:
lui $3, 7
mfhi $1
mfhi $1
mthi $1
TAG398:
beq $1, $1, TAG399
lui $3, 1
beq $1, $3, TAG399
mfhi $3
TAG399:
beq $3, $3, TAG400
mfhi $2
mfhi $4
mfhi $1
TAG400:
slt $1, $1, $1
lw $4, 0($1)
mult $4, $1
sb $1, 0($1)
TAG401:
mthi $4
mtlo $4
sll $0, $0, 0
multu $4, $4
TAG402:
mfhi $3
mtlo $4
sll $0, $0, 0
bgez $4, TAG403
TAG403:
ori $3, $4, 13
sll $0, $0, 0
srlv $4, $3, $4
lui $3, 10
TAG404:
blez $3, TAG405
mflo $2
div $2, $2
addiu $1, $2, 10
TAG405:
andi $2, $1, 11
mtlo $1
lb $1, 0($2)
lui $3, 2
TAG406:
mtlo $3
mthi $3
sll $0, $0, 0
sllv $1, $3, $3
TAG407:
sll $0, $0, 0
mflo $2
mult $2, $2
slti $2, $2, 2
TAG408:
lui $3, 11
lui $4, 1
lui $1, 5
mfhi $1
TAG409:
bltz $1, TAG410
lui $2, 15
sll $0, $0, 0
sll $0, $0, 0
TAG410:
sll $0, $0, 0
addu $4, $2, $2
slt $4, $2, $4
bltz $4, TAG411
TAG411:
sb $4, 0($4)
sb $4, 0($4)
bltz $4, TAG412
mflo $2
TAG412:
blez $2, TAG413
lui $4, 1
mfhi $4
slti $3, $4, 0
TAG413:
or $2, $3, $3
addu $3, $3, $2
slti $4, $3, 0
mflo $1
TAG414:
and $3, $1, $1
blez $1, TAG415
subu $4, $3, $1
beq $3, $1, TAG415
TAG415:
mflo $4
sltu $4, $4, $4
bgez $4, TAG416
mtlo $4
TAG416:
multu $4, $4
sub $4, $4, $4
andi $4, $4, 15
mult $4, $4
TAG417:
lui $1, 4
mult $1, $4
mthi $4
sw $1, 0($4)
TAG418:
nor $2, $1, $1
bne $2, $1, TAG419
sll $0, $0, 0
sh $4, 0($2)
TAG419:
sltu $4, $4, $4
lui $4, 0
srl $2, $4, 14
lhu $2, 0($4)
TAG420:
mfhi $4
add $4, $2, $4
mflo $2
mult $4, $4
TAG421:
mfhi $3
mult $2, $3
sub $3, $2, $2
bgtz $2, TAG422
TAG422:
mthi $3
slti $1, $3, 9
lhu $1, 0($3)
mfhi $4
TAG423:
lui $4, 11
sll $0, $0, 0
sll $0, $0, 0
bltz $4, TAG424
TAG424:
multu $4, $4
beq $4, $4, TAG425
mflo $4
srl $2, $4, 8
TAG425:
mflo $4
lui $2, 9
bne $2, $2, TAG426
andi $4, $4, 8
TAG426:
beq $4, $4, TAG427
mthi $4
lui $2, 15
sb $2, 0($4)
TAG427:
divu $2, $2
mult $2, $2
mtlo $2
sll $0, $0, 0
TAG428:
lui $3, 7
xori $4, $3, 4
lui $1, 15
addiu $3, $3, 13
TAG429:
lui $3, 10
srl $2, $3, 5
sll $0, $0, 0
mthi $3
TAG430:
mfhi $4
sll $0, $0, 0
sll $0, $0, 0
bne $4, $4, TAG431
TAG431:
mtlo $4
addiu $3, $4, 7
sll $0, $0, 0
sll $0, $0, 0
TAG432:
srl $3, $3, 13
xori $4, $3, 11
div $3, $3
bgtz $3, TAG433
TAG433:
lb $4, 0($4)
lb $2, 0($4)
bne $4, $4, TAG434
xori $3, $4, 0
TAG434:
sb $3, 0($3)
sh $3, 0($3)
multu $3, $3
slt $1, $3, $3
TAG435:
bgez $1, TAG436
mthi $1
sb $1, 0($1)
bltz $1, TAG436
TAG436:
addiu $3, $1, 15
mfhi $3
mtlo $1
or $1, $1, $3
TAG437:
sw $1, 0($1)
mfhi $4
xor $4, $4, $1
mthi $1
TAG438:
mflo $3
bgtz $4, TAG439
multu $4, $3
mflo $2
TAG439:
beq $2, $2, TAG440
mult $2, $2
subu $2, $2, $2
lhu $2, 0($2)
TAG440:
multu $2, $2
mflo $4
lui $4, 6
sll $0, $0, 0
TAG441:
lui $1, 7
mfhi $2
mfhi $4
beq $2, $4, TAG442
TAG442:
mult $4, $4
mfhi $4
mflo $4
lui $2, 0
TAG443:
bltz $2, TAG444
multu $2, $2
sw $2, 0($2)
lui $3, 7
TAG444:
mflo $3
mult $3, $3
bgtz $3, TAG445
sh $3, 0($3)
TAG445:
ori $4, $3, 6
subu $4, $3, $3
lui $4, 13
beq $4, $4, TAG446
TAG446:
xor $1, $4, $4
mtlo $4
bne $1, $1, TAG447
sltiu $3, $4, 15
TAG447:
beq $3, $3, TAG448
mult $3, $3
mthi $3
bne $3, $3, TAG448
TAG448:
lhu $3, 0($3)
blez $3, TAG449
mflo $2
lui $4, 6
TAG449:
mfhi $1
bltz $4, TAG450
mfhi $3
sw $3, 0($3)
TAG450:
lui $3, 12
lui $1, 13
and $1, $3, $1
div $1, $1
TAG451:
lui $1, 5
bne $1, $1, TAG452
sll $0, $0, 0
subu $1, $1, $1
TAG452:
bgtz $1, TAG453
mtlo $1
lh $3, 0($1)
mtlo $1
TAG453:
mult $3, $3
lui $3, 11
mthi $3
lui $1, 8
TAG454:
blez $1, TAG455
mthi $1
mfhi $3
subu $3, $1, $1
TAG455:
slt $2, $3, $3
addiu $1, $2, 8
sub $4, $2, $3
mflo $2
TAG456:
mult $2, $2
lui $2, 0
slt $2, $2, $2
andi $2, $2, 12
TAG457:
sll $1, $2, 4
blez $1, TAG458
mtlo $2
slti $2, $2, 11
TAG458:
nor $4, $2, $2
mthi $4
lui $4, 6
mult $4, $4
TAG459:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $4, $4
or $4, $2, $3
TAG460:
mtlo $4
sll $0, $0, 0
sllv $4, $4, $4
lui $1, 5
TAG461:
mthi $1
nor $2, $1, $1
addu $3, $1, $1
divu $3, $3
TAG462:
addiu $4, $3, 10
beq $3, $3, TAG463
mthi $3
mfhi $3
TAG463:
mtlo $3
mtlo $3
lui $2, 10
bne $2, $3, TAG464
TAG464:
mflo $1
bne $2, $1, TAG465
sll $0, $0, 0
mthi $2
TAG465:
divu $4, $4
sll $0, $0, 0
blez $4, TAG466
sll $0, $0, 0
TAG466:
sll $0, $0, 0
mflo $3
blez $4, TAG467
mthi $4
TAG467:
sb $3, 0($3)
sb $3, 0($3)
addiu $4, $3, 3
beq $4, $4, TAG468
TAG468:
mfhi $2
sltiu $2, $2, 9
lb $4, 0($4)
lui $4, 7
TAG469:
sra $4, $4, 7
sh $4, -3584($4)
beq $4, $4, TAG470
lhu $3, -3584($4)
TAG470:
sb $3, -3584($3)
lui $3, 0
bne $3, $3, TAG471
mfhi $4
TAG471:
or $2, $4, $4
beq $2, $2, TAG472
sll $0, $0, 0
lui $3, 3
TAG472:
bgtz $3, TAG473
addi $3, $3, 15
mthi $3
mtlo $3
TAG473:
addiu $2, $3, 9
slti $3, $3, 10
multu $3, $3
nor $4, $3, $3
TAG474:
mtlo $4
mthi $4
lui $1, 4
mfhi $3
TAG475:
mtlo $3
lui $2, 2
bne $2, $3, TAG476
mfhi $2
TAG476:
sll $0, $0, 0
subu $2, $2, $2
mflo $1
lbu $1, 0($2)
TAG477:
slti $4, $1, 10
lui $4, 4
xori $1, $4, 0
lui $3, 13
TAG478:
beq $3, $3, TAG479
sll $0, $0, 0
multu $3, $3
lb $3, 0($3)
TAG479:
bgtz $3, TAG480
mfhi $1
lbu $4, 0($1)
sltiu $2, $3, 1
TAG480:
mtlo $2
mtlo $2
lh $1, 0($2)
lui $4, 12
TAG481:
sll $3, $4, 1
sll $0, $0, 0
mfhi $1
lw $2, 1($1)
TAG482:
mflo $1
mflo $3
lui $3, 9
beq $1, $1, TAG483
TAG483:
lui $3, 8
mflo $1
and $1, $3, $1
mfhi $4
TAG484:
beq $4, $4, TAG485
mthi $4
mult $4, $4
sh $4, 0($4)
TAG485:
divu $4, $4
bgez $4, TAG486
mtlo $4
lui $3, 6
TAG486:
bltz $3, TAG487
sll $0, $0, 0
bgtz $1, TAG487
lui $3, 0
TAG487:
lb $1, 0($3)
srl $1, $1, 15
lui $1, 15
sra $2, $1, 6
TAG488:
sll $0, $0, 0
add $4, $3, $3
blez $3, TAG489
and $2, $2, $2
TAG489:
sll $0, $0, 0
lui $2, 6
srlv $4, $2, $3
sll $0, $0, 0
TAG490:
mthi $4
sll $0, $0, 0
multu $1, $4
sll $0, $0, 0
TAG491:
multu $2, $2
bne $2, $2, TAG492
mfhi $3
mflo $1
TAG492:
sh $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG493
mult $1, $1
TAG493:
sw $1, 0($1)
sh $1, 0($1)
slt $2, $1, $1
lhu $1, 0($1)
TAG494:
mfhi $2
lui $2, 6
sll $0, $0, 0
lbu $1, 0($1)
TAG495:
mthi $1
ori $3, $1, 5
or $3, $3, $3
lui $4, 7
TAG496:
lui $2, 4
slti $1, $2, 0
mflo $2
andi $1, $1, 8
TAG497:
lhu $1, 0($1)
mflo $3
lui $2, 9
multu $1, $2
TAG498:
lui $4, 10
bltz $2, TAG499
multu $2, $2
sll $0, $0, 0
TAG499:
mtlo $4
sll $0, $0, 0
bne $4, $4, TAG500
sltu $2, $4, $4
TAG500:
slti $4, $2, 0
sltu $3, $2, $4
lw $1, 0($2)
lbu $2, 0($1)
TAG501:
sh $2, 0($2)
mult $2, $2
srl $3, $2, 12
beq $3, $2, TAG502
TAG502:
mfhi $3
beq $3, $3, TAG503
multu $3, $3
addi $4, $3, 5
TAG503:
lbu $3, 0($4)
bgez $4, TAG504
mflo $3
srlv $4, $3, $4
TAG504:
blez $4, TAG505
multu $4, $4
subu $4, $4, $4
mthi $4
TAG505:
lbu $3, 0($4)
mult $3, $3
mfhi $3
addiu $3, $4, 13
TAG506:
bne $3, $3, TAG507
divu $3, $3
lb $3, 0($3)
sw $3, 0($3)
TAG507:
lui $3, 13
bne $3, $3, TAG508
mult $3, $3
beq $3, $3, TAG508
TAG508:
sll $0, $0, 0
lui $3, 9
srlv $3, $3, $3
and $3, $3, $3
TAG509:
mthi $3
mtlo $3
sll $0, $0, 0
mtlo $3
TAG510:
mtlo $1
mult $1, $1
slt $3, $1, $1
sh $1, 0($3)
TAG511:
slt $1, $3, $3
bne $3, $1, TAG512
lui $4, 14
lui $3, 15
TAG512:
lui $3, 12
mfhi $1
mfhi $4
blez $3, TAG513
TAG513:
and $2, $4, $4
lui $2, 1
mflo $1
srl $1, $1, 11
TAG514:
lh $1, 0($1)
mult $1, $1
mthi $1
sw $1, 0($1)
TAG515:
mult $1, $1
mthi $1
mflo $4
srav $4, $1, $4
TAG516:
blez $4, TAG517
lhu $3, 0($4)
mtlo $4
lui $2, 1
TAG517:
sll $0, $0, 0
lui $3, 2
beq $3, $3, TAG518
sll $0, $0, 0
TAG518:
mthi $3
sll $0, $0, 0
mtlo $3
slt $4, $3, $3
TAG519:
srl $2, $4, 2
slti $3, $2, 7
beq $3, $2, TAG520
sb $4, 0($3)
TAG520:
lui $4, 15
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG521:
lui $4, 15
lui $2, 10
xor $2, $2, $4
srav $2, $2, $2
TAG522:
div $2, $2
nor $1, $2, $2
bne $2, $2, TAG523
sll $0, $0, 0
TAG523:
slt $3, $1, $1
sll $0, $0, 0
sll $0, $0, 0
bne $1, $1, TAG524
TAG524:
addi $3, $3, 2
lui $2, 9
srl $1, $2, 1
mthi $3
TAG525:
beq $1, $1, TAG526
lui $2, 4
sll $4, $1, 3
lui $2, 1
TAG526:
lui $3, 13
xor $1, $2, $2
mfhi $1
sll $0, $0, 0
TAG527:
sll $0, $0, 0
lui $1, 2
addiu $3, $2, 7
sll $0, $0, 0
TAG528:
bgtz $4, TAG529
sll $0, $0, 0
sb $1, 0($1)
divu $4, $1
TAG529:
xori $1, $1, 15
sll $0, $0, 0
ori $2, $2, 1
bne $2, $1, TAG530
TAG530:
mflo $3
sll $0, $0, 0
bltz $2, TAG531
sb $3, 0($3)
TAG531:
sb $3, 0($3)
lbu $4, 0($3)
sb $4, 0($4)
mfhi $4
TAG532:
sltiu $2, $4, 3
bgez $4, TAG533
sb $4, 0($2)
srl $1, $2, 11
TAG533:
multu $1, $1
blez $1, TAG534
srl $1, $1, 13
sb $1, 0($1)
TAG534:
div $1, $1
mthi $1
lui $1, 2
divu $1, $1
TAG535:
mthi $1
xori $3, $1, 4
ori $2, $1, 13
sll $0, $0, 0
TAG536:
mfhi $4
sll $4, $2, 1
bne $4, $4, TAG537
sll $0, $0, 0
TAG537:
sll $0, $0, 0
lui $4, 12
sltiu $2, $4, 8
lui $1, 5
TAG538:
lui $1, 13
lui $1, 1
sltu $4, $1, $1
beq $1, $1, TAG539
TAG539:
slt $4, $4, $4
bne $4, $4, TAG540
mflo $2
lb $3, 0($2)
TAG540:
mflo $1
lb $2, 0($1)
bgtz $3, TAG541
lh $4, 0($2)
TAG541:
addu $3, $4, $4
xori $2, $3, 14
lui $3, 5
bne $2, $2, TAG542
TAG542:
div $3, $3
slt $4, $3, $3
mult $3, $3
mflo $3
TAG543:
mfhi $3
mfhi $4
slt $4, $3, $4
lb $3, 0($3)
TAG544:
mult $3, $3
sw $3, 0($3)
bgtz $3, TAG545
sltu $3, $3, $3
TAG545:
blez $3, TAG546
sw $3, 0($3)
bne $3, $3, TAG546
multu $3, $3
TAG546:
mfhi $3
sub $2, $3, $3
mthi $2
or $2, $3, $3
TAG547:
mtlo $2
lb $2, 0($2)
lbu $2, 0($2)
addi $3, $2, 9
TAG548:
beq $3, $3, TAG549
subu $1, $3, $3
lui $4, 2
slti $2, $1, 12
TAG549:
lb $4, 0($2)
mult $4, $4
sb $4, 0($4)
bgtz $4, TAG550
TAG550:
mthi $4
andi $4, $4, 1
mtlo $4
lui $4, 1
TAG551:
mflo $4
lh $4, 0($4)
lui $4, 6
bgez $4, TAG552
TAG552:
sll $0, $0, 0
bltz $2, TAG553
lui $1, 0
lui $1, 10
TAG553:
lui $1, 1
lui $2, 15
sll $0, $0, 0
sll $0, $0, 0
TAG554:
lui $2, 9
mtlo $2
bne $2, $2, TAG555
srlv $4, $2, $2
TAG555:
sll $0, $0, 0
sll $0, $0, 0
addu $3, $4, $4
mthi $3
TAG556:
mflo $3
sll $0, $0, 0
bne $3, $3, TAG557
divu $3, $3
TAG557:
lui $1, 9
slt $4, $3, $3
lw $2, 0($4)
sh $3, 0($4)
TAG558:
bgez $2, TAG559
lui $4, 13
mfhi $3
mtlo $3
TAG559:
sll $0, $0, 0
lui $1, 6
mfhi $1
blez $3, TAG560
TAG560:
mtlo $1
lui $3, 9
beq $1, $1, TAG561
srlv $1, $3, $3
TAG561:
mfhi $4
mflo $1
lui $3, 4
sw $1, 0($1)
TAG562:
subu $1, $3, $3
xori $2, $1, 6
bne $2, $2, TAG563
andi $2, $2, 8
TAG563:
mtlo $2
mtlo $2
mfhi $4
addiu $1, $4, 15
TAG564:
mthi $1
bgtz $1, TAG565
mfhi $1
mtlo $1
TAG565:
mtlo $1
lbu $2, 0($1)
xori $3, $2, 8
blez $1, TAG566
TAG566:
mthi $3
mflo $4
div $3, $4
multu $3, $4
TAG567:
bltz $4, TAG568
mult $4, $4
lui $2, 7
blez $4, TAG568
TAG568:
sll $0, $0, 0
bne $1, $2, TAG569
sll $0, $0, 0
divu $1, $2
TAG569:
mtlo $1
multu $1, $1
ori $2, $1, 15
beq $2, $2, TAG570
TAG570:
srav $2, $2, $2
ori $4, $2, 3
lui $4, 2
addiu $1, $2, 0
TAG571:
lw $1, 0($1)
blez $1, TAG572
mfhi $4
bne $1, $4, TAG572
TAG572:
sh $4, 0($4)
sw $4, 0($4)
sh $4, 0($4)
bgtz $4, TAG573
TAG573:
ori $2, $4, 9
multu $4, $4
mtlo $4
subu $1, $4, $2
TAG574:
bne $1, $1, TAG575
div $1, $1
blez $1, TAG575
mthi $1
TAG575:
blez $1, TAG576
lui $1, 13
mflo $2
sh $1, 0($1)
TAG576:
sb $2, 0($2)
nor $2, $2, $2
sh $2, 10($2)
mtlo $2
TAG577:
beq $2, $2, TAG578
subu $4, $2, $2
xor $1, $4, $4
mthi $1
TAG578:
srl $2, $1, 0
blez $1, TAG579
sll $0, $0, 0
lui $3, 4
TAG579:
lui $3, 2
div $3, $3
ori $3, $3, 15
divu $3, $3
TAG580:
mfhi $2
lh $3, 0($2)
sh $3, 10($3)
sb $2, 10($3)
TAG581:
divu $3, $3
mtlo $3
div $3, $3
mfhi $4
TAG582:
bne $4, $4, TAG583
slti $2, $4, 9
bne $2, $4, TAG583
mflo $1
TAG583:
sb $1, 0($1)
beq $1, $1, TAG584
lb $4, 0($1)
mtlo $1
TAG584:
mfhi $4
blez $4, TAG585
sb $4, 0($4)
bgtz $4, TAG585
TAG585:
lui $1, 11
mfhi $1
mult $1, $1
multu $4, $4
TAG586:
bgez $1, TAG587
mtlo $1
lhu $2, 0($1)
beq $2, $1, TAG587
TAG587:
mfhi $2
bne $2, $2, TAG588
mult $2, $2
multu $2, $2
TAG588:
lui $3, 10
bne $2, $2, TAG589
sltu $3, $2, $2
mflo $1
TAG589:
bltz $1, TAG590
mfhi $3
mtlo $1
lui $2, 9
TAG590:
mtlo $2
ori $2, $2, 1
multu $2, $2
and $1, $2, $2
TAG591:
multu $1, $1
lui $2, 15
ori $2, $1, 7
mflo $4
TAG592:
bgez $4, TAG593
subu $3, $4, $4
multu $3, $3
mthi $3
TAG593:
lui $1, 4
bltz $3, TAG594
sw $1, 0($3)
lui $3, 10
TAG594:
sll $0, $0, 0
mult $3, $3
mflo $3
bne $3, $3, TAG595
TAG595:
lui $3, 0
lui $1, 14
lui $3, 1
addiu $3, $3, 11
TAG596:
sll $0, $0, 0
beq $3, $3, TAG597
sll $4, $3, 9
sw $4, 0($4)
TAG597:
beq $4, $4, TAG598
sltiu $4, $4, 10
bne $4, $4, TAG598
multu $4, $4
TAG598:
lb $3, 0($4)
mtlo $4
multu $4, $4
blez $3, TAG599
TAG599:
xori $3, $3, 8
mflo $3
multu $3, $3
mult $3, $3
TAG600:
srl $1, $3, 15
lbu $4, 0($1)
lui $3, 2
sll $0, $0, 0
TAG601:
beq $3, $3, TAG602
srav $3, $3, $3
mthi $3
blez $3, TAG602
TAG602:
xor $3, $3, $3
sllv $1, $3, $3
mtlo $3
mtlo $3
TAG603:
multu $1, $1
or $2, $1, $1
bgez $2, TAG604
mfhi $1
TAG604:
mthi $1
bltz $1, TAG605
sra $2, $1, 15
mthi $2
TAG605:
lb $4, 0($2)
mult $4, $2
mflo $2
sub $1, $2, $2
TAG606:
mthi $1
bne $1, $1, TAG607
lui $1, 2
bgtz $1, TAG607
TAG607:
sll $0, $0, 0
beq $1, $1, TAG608
sll $0, $0, 0
divu $1, $3
TAG608:
bne $3, $3, TAG609
sw $3, 0($3)
bgtz $3, TAG609
lb $1, 0($3)
TAG609:
lui $4, 13
mtlo $4
mflo $4
and $1, $1, $1
TAG610:
mflo $4
sll $0, $0, 0
div $4, $4
mthi $1
TAG611:
xor $4, $2, $2
sll $2, $2, 10
multu $2, $4
sw $2, 0($2)
TAG612:
lw $4, 0($2)
sra $4, $4, 2
lbu $1, 0($4)
mult $4, $4
TAG613:
multu $1, $1
mthi $1
bltz $1, TAG614
addu $4, $1, $1
TAG614:
mult $4, $4
sllv $3, $4, $4
mflo $1
lui $1, 4
TAG615:
lui $4, 10
bltz $1, TAG616
nor $2, $4, $4
sll $0, $0, 0
TAG616:
sll $0, $0, 0
sll $0, $0, 0
beq $2, $1, TAG617
multu $2, $1
TAG617:
xor $1, $2, $2
srav $3, $1, $2
bltz $3, TAG618
addu $2, $3, $3
TAG618:
slti $3, $2, 5
lbu $4, 0($3)
bgtz $3, TAG619
sltu $3, $3, $4
TAG619:
blez $3, TAG620
lb $2, 0($3)
bne $2, $3, TAG620
sh $2, 0($2)
TAG620:
mflo $3
bgez $3, TAG621
mfhi $1
mfhi $4
TAG621:
lui $4, 4
mfhi $3
addu $3, $4, $4
mtlo $4
TAG622:
mflo $3
sll $0, $0, 0
srlv $1, $3, $3
mflo $3
TAG623:
srlv $2, $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG624:
sll $0, $0, 0
nor $2, $4, $4
lui $2, 11
nor $3, $4, $2
TAG625:
sll $0, $0, 0
sll $0, $0, 0
sltiu $2, $3, 6
sltiu $3, $2, 5
TAG626:
sb $3, 0($3)
slt $2, $3, $3
slt $1, $2, $2
div $2, $3
TAG627:
bne $1, $1, TAG628
multu $1, $1
lw $1, 0($1)
sra $4, $1, 14
TAG628:
lh $2, 0($4)
xor $1, $4, $2
srl $1, $2, 2
addiu $2, $2, 13
TAG629:
sw $2, -269($2)
lhu $4, -269($2)
bgtz $4, TAG630
sltu $2, $4, $2
TAG630:
mtlo $2
lui $3, 3
mult $3, $3
lui $2, 1
TAG631:
mflo $3
lb $2, 0($3)
mflo $2
beq $2, $3, TAG632
TAG632:
sb $2, 0($2)
lbu $4, 0($2)
mfhi $4
srlv $2, $4, $4
TAG633:
sb $2, 0($2)
mflo $1
multu $1, $1
lhu $3, 0($1)
TAG634:
andi $3, $3, 11
xor $1, $3, $3
lui $1, 3
sub $4, $3, $3
TAG635:
mfhi $1
mflo $4
bne $1, $4, TAG636
lhu $3, 0($1)
TAG636:
sh $3, -256($3)
mtlo $3
lui $4, 13
lui $4, 5
TAG637:
xori $3, $4, 3
lui $1, 9
sll $0, $0, 0
subu $1, $1, $3
TAG638:
sra $2, $1, 2
mtlo $2
xor $1, $1, $2
sll $0, $0, 0
TAG639:
andi $3, $1, 10
lui $3, 5
blez $3, TAG640
xori $2, $1, 3
TAG640:
andi $4, $2, 3
mult $2, $2
mtlo $4
bne $4, $2, TAG641
TAG641:
sb $4, 0($4)
divu $4, $4
lb $3, 0($4)
addiu $4, $3, 3
TAG642:
mtlo $4
bltz $4, TAG643
lui $2, 10
mflo $4
TAG643:
addiu $1, $4, 14
lbu $1, 0($4)
bltz $1, TAG644
lui $3, 14
TAG644:
beq $3, $3, TAG645
mfhi $2
bgtz $2, TAG645
mfhi $4
TAG645:
lui $4, 13
mflo $1
mtlo $1
mthi $4
TAG646:
lui $2, 13
bne $1, $1, TAG647
andi $4, $2, 10
sra $3, $1, 13
TAG647:
xori $2, $3, 3
bgez $2, TAG648
sllv $3, $2, $3
lui $4, 14
TAG648:
sb $4, 0($4)
lui $2, 9
mflo $3
bne $3, $2, TAG649
TAG649:
xori $4, $3, 0
blez $3, TAG650
lui $2, 8
sll $0, $0, 0
TAG650:
bne $2, $2, TAG651
mflo $1
srl $3, $1, 9
mfhi $4
TAG651:
mult $4, $4
addu $3, $4, $4
and $2, $3, $3
lui $4, 11
TAG652:
mtlo $4
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
TAG653:
xori $3, $1, 5
divu $1, $3
blez $1, TAG654
divu $1, $3
TAG654:
mtlo $3
div $3, $3
and $4, $3, $3
mthi $3
TAG655:
mflo $4
mthi $4
bne $4, $4, TAG656
srav $2, $4, $4
TAG656:
lui $2, 5
lui $1, 4
mfhi $4
beq $2, $4, TAG657
TAG657:
divu $4, $4
lui $2, 12
lui $4, 4
and $1, $4, $4
TAG658:
mflo $4
sll $0, $0, 0
bgtz $4, TAG659
lbu $1, 0($4)
TAG659:
mflo $2
lbu $2, 0($1)
lb $1, 0($1)
srav $2, $2, $2
TAG660:
lui $2, 2
sll $0, $0, 0
div $2, $2
bne $2, $2, TAG661
TAG661:
slt $2, $2, $2
lui $1, 4
bne $1, $1, TAG662
mtlo $1
TAG662:
beq $1, $1, TAG663
div $1, $1
lw $1, 0($1)
beq $1, $1, TAG663
TAG663:
sll $0, $0, 0
or $2, $1, $3
srav $3, $1, $3
nor $4, $3, $2
TAG664:
blez $4, TAG665
nor $1, $4, $4
beq $1, $1, TAG665
lw $1, 0($1)
TAG665:
bne $1, $1, TAG666
mfhi $4
xori $3, $4, 5
mthi $4
TAG666:
lui $1, 14
mthi $3
lui $4, 12
mfhi $4
TAG667:
lui $1, 0
bne $1, $4, TAG668
sb $1, 0($4)
mthi $1
TAG668:
lb $3, 0($1)
lb $1, 0($3)
bgtz $3, TAG669
lhu $1, 0($3)
TAG669:
lui $3, 4
bltz $3, TAG670
lui $1, 9
mflo $3
TAG670:
sb $3, 0($3)
nor $3, $3, $3
mult $3, $3
mfhi $3
TAG671:
lui $4, 5
multu $4, $3
beq $3, $4, TAG672
mfhi $2
TAG672:
bgez $2, TAG673
mult $2, $2
beq $2, $2, TAG673
sll $1, $2, 13
TAG673:
sllv $1, $1, $1
sll $0, $0, 0
or $1, $1, $1
addiu $1, $1, 9
TAG674:
or $3, $1, $1
lui $2, 7
lui $3, 2
lui $2, 8
TAG675:
mflo $4
div $4, $2
mthi $2
and $3, $4, $4
TAG676:
srl $4, $3, 9
lui $1, 12
subu $1, $1, $4
lw $4, 0($3)
TAG677:
mtlo $4
mtlo $4
sb $4, -256($4)
subu $3, $4, $4
TAG678:
multu $3, $3
mult $3, $3
lui $2, 5
beq $3, $3, TAG679
TAG679:
lui $2, 5
beq $2, $2, TAG680
mthi $2
lb $1, 0($2)
TAG680:
sll $2, $1, 13
bgez $1, TAG681
mflo $2
lui $2, 9
TAG681:
lui $4, 14
beq $2, $4, TAG682
lui $3, 5
beq $2, $4, TAG682
TAG682:
sll $0, $0, 0
beq $3, $3, TAG683
sll $0, $0, 0
lbu $3, 0($3)
TAG683:
subu $1, $3, $3
slti $1, $3, 10
sll $0, $0, 0
sw $1, 0($1)
TAG684:
blez $1, TAG685
lui $2, 10
bne $1, $2, TAG685
sub $1, $2, $2
TAG685:
mthi $1
lb $1, 0($1)
sw $1, 0($1)
mtlo $1
TAG686:
lhu $4, 0($1)
lui $1, 11
lui $3, 5
bltz $4, TAG687
TAG687:
addu $2, $3, $3
lui $4, 12
mtlo $3
srl $2, $3, 2
TAG688:
bltz $2, TAG689
lui $1, 8
lui $1, 14
addu $1, $1, $1
TAG689:
bgtz $1, TAG690
lui $1, 13
mthi $1
beq $1, $1, TAG690
TAG690:
lui $2, 12
srav $3, $2, $2
mult $1, $1
divu $1, $3
TAG691:
mthi $3
divu $3, $3
sll $0, $0, 0
srav $4, $4, $3
TAG692:
nor $4, $4, $4
mthi $4
lui $4, 4
sll $0, $0, 0
TAG693:
mfhi $2
mthi $2
mflo $2
divu $2, $4
TAG694:
lui $2, 6
mflo $4
subu $3, $2, $2
sll $0, $0, 0
TAG695:
mfhi $2
sw $2, 0($3)
mult $2, $3
lh $4, 0($3)
TAG696:
bne $4, $4, TAG697
mtlo $4
lb $3, 0($4)
bne $3, $3, TAG697
TAG697:
srl $1, $3, 0
slti $3, $3, 11
beq $3, $3, TAG698
mult $3, $1
TAG698:
lui $2, 12
sb $3, 0($3)
mfhi $3
mtlo $3
TAG699:
lb $1, 0($3)
divu $3, $1
blez $3, TAG700
addiu $1, $1, 8
TAG700:
sb $1, 0($1)
lui $2, 15
multu $2, $1
lui $3, 0
TAG701:
beq $3, $3, TAG702
mtlo $3
sh $3, 0($3)
sw $3, 0($3)
TAG702:
bltz $3, TAG703
mfhi $4
sw $3, 0($3)
lui $4, 7
TAG703:
addu $3, $4, $4
slt $1, $4, $3
bne $4, $1, TAG704
multu $4, $1
TAG704:
sltiu $3, $1, 12
mflo $2
sra $4, $1, 1
sb $2, 0($1)
TAG705:
bltz $4, TAG706
lui $3, 2
sh $3, 0($4)
mthi $3
TAG706:
beq $3, $3, TAG707
sll $0, $0, 0
sh $3, 0($3)
sra $2, $3, 9
TAG707:
mflo $4
addu $4, $2, $2
lui $1, 2
sll $0, $0, 0
TAG708:
mfhi $1
addu $3, $1, $1
bgtz $1, TAG709
mflo $4
TAG709:
mfhi $3
xori $4, $4, 0
sll $0, $0, 0
multu $4, $4
TAG710:
sltiu $3, $3, 0
beq $3, $3, TAG711
sra $4, $3, 11
xor $4, $3, $3
TAG711:
mfhi $3
mult $3, $3
sw $3, 0($4)
lb $3, 0($3)
TAG712:
mflo $4
mtlo $4
sh $4, 0($3)
lb $4, 0($3)
TAG713:
and $1, $4, $4
lui $1, 15
mtlo $1
mflo $3
TAG714:
multu $3, $3
mthi $3
lui $4, 11
mflo $2
TAG715:
lw $2, 0($2)
lui $4, 5
sw $2, -2401($2)
div $2, $2
TAG716:
sll $0, $0, 0
subu $4, $4, $4
slti $4, $4, 1
addiu $4, $4, 10
TAG717:
bgtz $4, TAG718
mfhi $4
bgez $4, TAG718
sh $4, 0($4)
TAG718:
addu $4, $4, $4
sll $2, $4, 3
mflo $3
lui $3, 5
TAG719:
mtlo $3
subu $1, $3, $3
multu $1, $1
sll $0, $0, 0
TAG720:
sll $0, $0, 0
sltiu $1, $3, 15
div $1, $3
slti $2, $3, 15
TAG721:
srl $4, $2, 13
bgez $4, TAG722
mfhi $3
sw $2, 0($4)
TAG722:
sll $4, $3, 5
beq $4, $4, TAG723
mthi $4
blez $4, TAG723
TAG723:
sll $4, $4, 12
lw $4, 0($4)
slti $1, $4, 12
lui $4, 0
TAG724:
mthi $4
addi $2, $4, 2
lui $3, 7
beq $3, $4, TAG725
TAG725:
multu $3, $3
beq $3, $3, TAG726
mtlo $3
lbu $3, 0($3)
TAG726:
srl $2, $3, 9
subu $4, $2, $2
mthi $2
sb $3, 0($4)
TAG727:
mflo $3
mtlo $3
sh $3, 0($4)
mflo $2
TAG728:
sll $0, $0, 0
sll $0, $0, 0
bltz $2, TAG729
lw $3, 0($4)
TAG729:
sltiu $2, $3, 5
sb $3, 0($3)
sb $2, 0($2)
lhu $1, 0($3)
TAG730:
beq $1, $1, TAG731
div $1, $1
lhu $1, 0($1)
mfhi $2
TAG731:
sb $2, 0($2)
srlv $3, $2, $2
srl $1, $3, 10
bne $3, $1, TAG732
TAG732:
addi $3, $1, 10
lui $4, 3
bne $4, $4, TAG733
lui $3, 12
TAG733:
mthi $3
lui $3, 0
bgtz $3, TAG734
subu $4, $3, $3
TAG734:
srav $2, $4, $4
sh $4, 0($2)
lb $4, 0($4)
beq $2, $4, TAG735
TAG735:
lui $4, 9
bgez $4, TAG736
mflo $2
sh $4, 0($4)
TAG736:
addiu $2, $2, 8
divu $2, $2
lb $3, 0($2)
subu $4, $3, $2
TAG737:
lui $4, 11
beq $4, $4, TAG738
mflo $2
blez $4, TAG738
TAG738:
mthi $2
bne $2, $2, TAG739
lbu $2, 0($2)
lui $3, 3
TAG739:
lui $2, 14
srl $2, $2, 5
divu $2, $2
mflo $4
TAG740:
bgtz $4, TAG741
mflo $4
mthi $4
slti $2, $4, 4
TAG741:
sll $0, $0, 0
beq $1, $1, TAG742
sltiu $2, $1, 6
sw $2, 0($2)
TAG742:
sb $2, 0($2)
lbu $1, 0($2)
or $4, $1, $1
lb $4, 0($1)
TAG743:
multu $4, $4
lb $2, 0($4)
bne $4, $2, TAG744
srav $4, $4, $2
TAG744:
lb $3, 0($4)
mtlo $4
multu $3, $3
bgtz $4, TAG745
TAG745:
mflo $1
bne $1, $1, TAG746
lh $4, 0($3)
xor $4, $1, $3
TAG746:
bne $4, $4, TAG747
sw $4, 0($4)
mflo $4
bgtz $4, TAG747
TAG747:
mtlo $4
mfhi $3
beq $4, $4, TAG748
mtlo $4
TAG748:
srav $1, $3, $3
beq $1, $3, TAG749
addiu $4, $3, 6
mfhi $1
TAG749:
beq $1, $1, TAG750
sra $4, $1, 0
mflo $2
sltiu $3, $2, 2
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop