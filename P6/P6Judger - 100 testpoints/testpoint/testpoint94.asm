ori $1, $0, 8
ori $2, $0, 12
ori $3, $0, 5
ori $4, $0, 0
sw $4, 0($0)
sw $2, 4($0)
sw $3, 8($0)
sw $3, 12($0)
sw $2, 16($0)
sw $2, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $1, 32($0)
sw $1, 36($0)
sw $4, 40($0)
sw $3, 44($0)
sw $3, 48($0)
sw $4, 52($0)
sw $2, 56($0)
sw $4, 60($0)
sw $3, 64($0)
sw $3, 68($0)
sw $2, 72($0)
sw $3, 76($0)
sw $1, 80($0)
sw $1, 84($0)
sw $1, 88($0)
sw $3, 92($0)
sw $2, 96($0)
sw $3, 100($0)
sw $1, 104($0)
sw $2, 108($0)
sw $1, 112($0)
sw $1, 116($0)
sw $3, 120($0)
sw $4, 124($0)
srav $2, $2, $2
sb $2, 0($2)
lw $1, 0($2)
bltz $2, TAG1
TAG1:
mflo $1
sllv $1, $1, $1
mfhi $4
sw $1, 0($4)
TAG2:
lb $3, 0($4)
bne $4, $4, TAG3
sltu $4, $4, $4
lbu $2, 0($4)
TAG3:
lh $4, 0($2)
lh $4, 0($4)
and $1, $4, $2
lui $1, 14
TAG4:
beq $1, $1, TAG5
addiu $1, $1, 4
mthi $1
bne $1, $1, TAG5
TAG5:
mtlo $1
sll $0, $0, 0
beq $1, $1, TAG6
sll $0, $0, 0
TAG6:
blez $1, TAG7
subu $3, $1, $1
sh $1, 0($3)
sll $0, $0, 0
TAG7:
mtlo $1
sltiu $4, $1, 14
sll $0, $0, 0
mthi $1
TAG8:
sw $2, 0($2)
mthi $2
bltz $2, TAG9
lui $2, 7
TAG9:
mflo $1
lui $1, 9
mult $1, $2
divu $2, $1
TAG10:
mflo $3
lhu $1, 0($3)
sub $1, $1, $1
lhu $1, 0($1)
TAG11:
lui $4, 1
lui $4, 1
lui $1, 6
mfhi $1
TAG12:
srlv $2, $1, $1
beq $1, $2, TAG13
sllv $2, $1, $1
srl $3, $2, 1
TAG13:
sw $3, 0($3)
or $3, $3, $3
nor $3, $3, $3
xori $2, $3, 13
TAG14:
xori $3, $2, 2
beq $3, $2, TAG15
lhu $3, 16($3)
sra $4, $2, 4
TAG15:
lui $3, 4
lbu $4, 1($4)
multu $3, $4
mflo $1
TAG16:
lui $1, 0
sb $1, 0($1)
mfhi $1
bltz $1, TAG17
TAG17:
mflo $1
multu $1, $1
nor $1, $1, $1
nor $3, $1, $1
TAG18:
mthi $3
mfhi $2
lui $3, 12
addu $4, $3, $2
TAG19:
lui $2, 12
bne $4, $2, TAG20
divu $2, $4
sltu $4, $2, $4
TAG20:
bne $4, $4, TAG21
and $3, $4, $4
lui $3, 0
xor $2, $3, $3
TAG21:
beq $2, $2, TAG22
mtlo $2
blez $2, TAG22
sltiu $4, $2, 10
TAG22:
mflo $3
lui $1, 10
mfhi $1
beq $1, $1, TAG23
TAG23:
mfhi $1
mtlo $1
srav $1, $1, $1
mflo $1
TAG24:
bgez $1, TAG25
mtlo $1
xori $4, $1, 0
lw $2, 0($1)
TAG25:
mflo $4
multu $2, $2
mthi $2
sll $2, $2, 3
TAG26:
lbu $1, 0($2)
lui $4, 6
blez $2, TAG27
subu $3, $1, $1
TAG27:
ori $4, $3, 13
beq $4, $3, TAG28
lui $2, 1
mthi $2
TAG28:
divu $2, $2
srlv $4, $2, $2
sltu $2, $2, $2
sh $2, 0($2)
TAG29:
mfhi $1
bne $2, $1, TAG30
mflo $1
sb $1, 0($2)
TAG30:
andi $1, $1, 6
srlv $4, $1, $1
sb $4, 0($1)
mfhi $2
TAG31:
multu $2, $2
sw $2, 0($2)
mflo $3
multu $3, $3
TAG32:
ori $2, $3, 2
lui $2, 8
lui $1, 1
bltz $1, TAG33
TAG33:
sll $0, $0, 0
mfhi $1
mtlo $3
lb $2, 0($3)
TAG34:
mult $2, $2
bgez $2, TAG35
addu $4, $2, $2
div $2, $2
TAG35:
lui $1, 0
lui $2, 9
mflo $2
lh $3, 0($2)
TAG36:
bltz $3, TAG37
slti $1, $3, 7
lh $4, 0($3)
mthi $3
TAG37:
beq $4, $4, TAG38
mflo $4
mtlo $4
lui $4, 3
TAG38:
multu $4, $4
mflo $1
mtlo $4
mthi $4
TAG39:
mflo $3
lb $4, 0($3)
bltz $1, TAG40
lh $2, 0($4)
TAG40:
lui $4, 3
sltiu $1, $2, 3
beq $1, $1, TAG41
sltiu $3, $1, 0
TAG41:
bltz $3, TAG42
lui $4, 3
blez $4, TAG42
sll $0, $0, 0
TAG42:
mtlo $4
beq $4, $4, TAG43
addiu $3, $4, 13
mthi $3
TAG43:
srlv $1, $3, $3
lui $3, 4
sll $0, $0, 0
beq $1, $1, TAG44
TAG44:
srav $1, $3, $3
bne $3, $1, TAG45
mthi $3
blez $3, TAG45
TAG45:
divu $1, $1
lui $2, 5
multu $1, $1
multu $2, $1
TAG46:
mflo $4
mthi $4
lui $2, 14
mfhi $1
TAG47:
beq $1, $1, TAG48
addi $1, $1, 14
bgtz $1, TAG48
sb $1, 0($1)
TAG48:
mfhi $2
mflo $2
sb $1, 0($2)
divu $2, $1
TAG49:
beq $2, $2, TAG50
lui $1, 10
mtlo $2
xor $1, $1, $1
TAG50:
sll $0, $0, 0
bgtz $1, TAG51
sll $0, $0, 0
bgez $1, TAG51
TAG51:
multu $3, $3
blez $3, TAG52
sll $2, $3, 10
andi $3, $3, 7
TAG52:
multu $3, $3
sll $2, $3, 13
blez $2, TAG53
lui $1, 5
TAG53:
bgez $1, TAG54
sltiu $1, $1, 5
mult $1, $1
sh $1, 0($1)
TAG54:
beq $1, $1, TAG55
addi $1, $1, 1
sllv $4, $1, $1
lh $4, 0($4)
TAG55:
bgez $4, TAG56
mthi $4
mtlo $4
sb $4, 0($4)
TAG56:
lui $2, 10
sll $0, $0, 0
mflo $2
mthi $2
TAG57:
sb $2, 0($2)
mflo $1
lui $4, 9
blez $2, TAG58
TAG58:
mthi $4
addiu $1, $4, 10
beq $1, $4, TAG59
div $4, $1
TAG59:
bgtz $1, TAG60
mfhi $3
bne $3, $3, TAG60
lui $4, 10
TAG60:
beq $4, $4, TAG61
sll $0, $0, 0
sw $4, 0($3)
sw $4, 0($3)
TAG61:
addiu $4, $3, 7
mtlo $3
lui $2, 3
lui $1, 3
TAG62:
ori $1, $1, 6
lui $2, 12
bgez $1, TAG63
mflo $4
TAG63:
lui $2, 9
bgtz $4, TAG64
lui $4, 5
multu $2, $4
TAG64:
srav $3, $4, $4
and $2, $4, $3
blez $4, TAG65
sll $0, $0, 0
TAG65:
mtlo $2
lui $4, 1
div $4, $4
sll $0, $0, 0
TAG66:
slti $2, $4, 10
multu $2, $2
lh $2, 0($2)
multu $2, $2
TAG67:
mthi $2
mtlo $2
lui $3, 7
sll $0, $0, 0
TAG68:
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG69
lui $1, 4
TAG69:
mthi $1
slt $2, $1, $1
beq $1, $2, TAG70
mthi $2
TAG70:
sra $4, $2, 12
lui $2, 5
subu $2, $2, $2
lui $2, 4
TAG71:
bne $2, $2, TAG72
sll $0, $0, 0
mflo $3
mfhi $3
TAG72:
sb $3, 0($3)
lw $2, 0($3)
mfhi $2
bne $2, $2, TAG73
TAG73:
sh $2, 0($2)
lui $1, 5
slti $4, $1, 6
addi $1, $4, 1
TAG74:
srav $3, $1, $1
bltz $1, TAG75
mtlo $3
sb $1, 0($1)
TAG75:
sb $3, 0($3)
mthi $3
or $3, $3, $3
sra $1, $3, 13
TAG76:
lb $3, 0($1)
sra $3, $1, 1
bne $3, $3, TAG77
multu $1, $1
TAG77:
mtlo $3
mult $3, $3
sh $3, 0($3)
lui $3, 2
TAG78:
bne $3, $3, TAG79
sra $3, $3, 14
mthi $3
mfhi $3
TAG79:
sb $3, 0($3)
slt $2, $3, $3
lui $3, 14
lui $1, 12
TAG80:
srl $3, $1, 15
sh $1, 0($3)
bgez $3, TAG81
mflo $1
TAG81:
bgez $1, TAG82
mfhi $1
mfhi $3
mfhi $4
TAG82:
bltz $4, TAG83
add $3, $4, $4
mult $3, $3
bltz $4, TAG83
TAG83:
sw $3, 0($3)
bltz $3, TAG84
sltu $1, $3, $3
sb $3, 0($1)
TAG84:
mtlo $1
bgtz $1, TAG85
addu $2, $1, $1
mflo $3
TAG85:
addiu $4, $3, 14
sh $3, 0($4)
beq $4, $3, TAG86
and $1, $3, $4
TAG86:
add $2, $1, $1
lui $2, 12
sltu $4, $2, $2
lw $3, 0($4)
TAG87:
lui $1, 11
mtlo $3
lui $3, 3
mtlo $1
TAG88:
lui $3, 5
mult $3, $3
mult $3, $3
sll $0, $0, 0
TAG89:
andi $3, $3, 12
lw $3, 0($3)
mflo $1
mfhi $4
TAG90:
mflo $3
sb $3, 0($4)
srav $3, $3, $3
mfhi $3
TAG91:
lbu $4, 0($3)
beq $3, $4, TAG92
mflo $4
multu $4, $4
TAG92:
mult $4, $4
mflo $3
lhu $1, 0($4)
sw $4, 0($1)
TAG93:
sb $1, 0($1)
multu $1, $1
lui $4, 13
bne $1, $4, TAG94
TAG94:
lui $1, 15
lui $1, 15
mfhi $4
mult $4, $4
TAG95:
sw $4, 0($4)
lui $2, 5
lui $4, 1
addiu $2, $4, 6
TAG96:
mtlo $2
lui $1, 9
subu $3, $1, $2
mthi $1
TAG97:
sll $0, $0, 0
sll $0, $0, 0
bne $3, $3, TAG98
mult $3, $3
TAG98:
and $4, $3, $3
beq $3, $3, TAG99
addu $2, $4, $4
mflo $2
TAG99:
mflo $1
xori $4, $2, 7
beq $4, $1, TAG100
lui $4, 8
TAG100:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG101:
sll $0, $0, 0
mthi $1
sll $0, $0, 0
srav $2, $1, $1
TAG102:
sll $0, $0, 0
mflo $2
slt $2, $1, $2
bgtz $1, TAG103
TAG103:
lh $4, 0($2)
add $3, $2, $2
bltz $3, TAG104
mtlo $4
TAG104:
mult $3, $3
multu $3, $3
sh $3, 0($3)
bgez $3, TAG105
TAG105:
sw $3, 0($3)
addu $3, $3, $3
mtlo $3
bne $3, $3, TAG106
TAG106:
sb $3, 0($3)
lui $3, 3
srav $4, $3, $3
mtlo $3
TAG107:
mfhi $2
mflo $1
xori $4, $4, 7
srav $1, $4, $4
TAG108:
mtlo $1
mtlo $1
mtlo $1
sllv $1, $1, $1
TAG109:
mflo $4
bltz $1, TAG110
sw $1, -1536($4)
sh $1, -1536($4)
TAG110:
bltz $4, TAG111
or $3, $4, $4
mthi $4
mtlo $4
TAG111:
sra $4, $3, 11
divu $4, $3
sh $4, -1536($3)
sh $4, 0($4)
TAG112:
bltz $4, TAG113
mflo $1
lw $1, 0($1)
sll $1, $1, 8
TAG113:
mtlo $1
multu $1, $1
bltz $1, TAG114
lui $1, 8
TAG114:
mult $1, $1
mflo $2
sll $0, $0, 0
bne $1, $1, TAG115
TAG115:
sra $3, $2, 14
add $3, $2, $2
beq $3, $3, TAG116
mtlo $3
TAG116:
bne $3, $3, TAG117
addi $2, $3, 6
blez $3, TAG117
mthi $2
TAG117:
mflo $1
ori $2, $1, 7
mthi $1
srlv $4, $2, $2
TAG118:
mtlo $4
addiu $1, $4, 7
mthi $1
multu $4, $1
TAG119:
bgez $1, TAG120
lui $1, 8
bgez $1, TAG120
srav $4, $1, $1
TAG120:
bgtz $4, TAG121
ori $1, $4, 4
multu $1, $4
mtlo $4
TAG121:
lb $3, 0($1)
div $3, $3
bgtz $3, TAG122
mtlo $1
TAG122:
mult $3, $3
bgtz $3, TAG123
and $1, $3, $3
mflo $4
TAG123:
sb $4, 0($4)
mflo $3
mflo $1
mflo $3
TAG124:
mthi $3
slti $4, $3, 13
subu $3, $4, $3
multu $4, $4
TAG125:
bgez $3, TAG126
sb $3, 144($3)
lhu $2, 144($3)
divu $3, $2
TAG126:
sh $2, 0($2)
lui $4, 9
div $4, $4
lui $2, 2
TAG127:
mfhi $1
lw $2, 0($1)
mult $1, $1
beq $2, $2, TAG128
TAG128:
divu $2, $2
lui $1, 12
mfhi $3
mthi $2
TAG129:
lw $4, 0($3)
sltiu $2, $4, 5
lb $2, 0($3)
beq $2, $2, TAG130
TAG130:
lh $2, 0($2)
lui $2, 13
sll $0, $0, 0
beq $1, $2, TAG131
TAG131:
sll $0, $0, 0
sltiu $4, $1, 1
lui $3, 4
divu $2, $3
TAG132:
lui $3, 9
sll $0, $0, 0
div $4, $3
or $1, $3, $3
TAG133:
xori $2, $1, 3
xori $3, $1, 3
mthi $2
lui $3, 8
TAG134:
srlv $1, $3, $3
bne $1, $1, TAG135
mtlo $3
xor $3, $1, $1
TAG135:
mult $3, $3
lui $2, 7
lui $1, 6
mult $1, $3
TAG136:
beq $1, $1, TAG137
sll $0, $0, 0
slti $3, $1, 9
lui $3, 10
TAG137:
sb $3, 0($3)
mult $3, $3
srlv $3, $3, $3
sra $1, $3, 3
TAG138:
lbu $4, 0($1)
mthi $1
mtlo $4
mflo $3
TAG139:
or $2, $3, $3
lbu $2, 0($2)
blez $3, TAG140
sw $2, 0($2)
TAG140:
beq $2, $2, TAG141
sub $4, $2, $2
lbu $1, 0($4)
lui $2, 0
TAG141:
bgez $2, TAG142
sb $2, 0($2)
lh $3, 0($2)
mult $3, $3
TAG142:
bgtz $3, TAG143
mflo $1
bgez $3, TAG143
srav $1, $1, $1
TAG143:
multu $1, $1
mfhi $4
sra $3, $4, 10
lui $4, 5
TAG144:
subu $1, $4, $4
bgtz $4, TAG145
sll $0, $0, 0
lhu $4, 0($4)
TAG145:
ori $2, $4, 2
bne $2, $4, TAG146
div $4, $2
srav $1, $2, $2
TAG146:
sllv $2, $1, $1
mthi $1
bltz $2, TAG147
sb $1, 0($1)
TAG147:
beq $2, $2, TAG148
mtlo $2
mult $2, $2
beq $2, $2, TAG148
TAG148:
sb $2, 0($2)
sll $2, $2, 3
sh $2, 0($2)
bne $2, $2, TAG149
TAG149:
srav $3, $2, $2
lui $1, 11
beq $2, $2, TAG150
mflo $4
TAG150:
mfhi $1
bgez $4, TAG151
lw $1, 0($1)
mult $1, $1
TAG151:
bne $1, $1, TAG152
mult $1, $1
lh $4, 0($1)
addi $2, $4, 3
TAG152:
xor $1, $2, $2
blez $1, TAG153
mtlo $2
mtlo $2
TAG153:
mfhi $3
slti $1, $3, 12
lui $4, 11
addu $1, $1, $3
TAG154:
sb $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG155
multu $1, $1
TAG155:
addu $1, $1, $1
lbu $1, 0($1)
slt $1, $1, $1
mult $1, $1
TAG156:
mthi $1
mflo $4
lui $1, 10
slt $3, $1, $1
TAG157:
ori $3, $3, 2
sra $2, $3, 0
bltz $2, TAG158
divu $2, $3
TAG158:
nor $4, $2, $2
mthi $2
lui $1, 14
multu $4, $4
TAG159:
lui $3, 6
mult $1, $1
bltz $3, TAG160
and $4, $3, $1
TAG160:
mtlo $4
divu $4, $4
sllv $4, $4, $4
multu $4, $4
TAG161:
sll $0, $0, 0
mthi $2
subu $4, $2, $4
beq $4, $4, TAG162
TAG162:
sll $0, $0, 0
mthi $4
bne $4, $4, TAG163
mult $4, $4
TAG163:
sll $0, $0, 0
bne $4, $4, TAG164
divu $4, $4
bgtz $4, TAG164
TAG164:
mtlo $4
sll $0, $0, 0
mflo $4
lui $1, 0
TAG165:
mult $1, $1
blez $1, TAG166
addi $2, $1, 6
lhu $2, 0($1)
TAG166:
mtlo $2
lui $1, 10
mthi $1
sllv $3, $2, $1
TAG167:
divu $3, $3
bne $3, $3, TAG168
mthi $3
mfhi $3
TAG168:
mtlo $3
bltz $3, TAG169
mflo $3
bne $3, $3, TAG169
TAG169:
lh $2, 0($3)
divu $2, $3
srlv $1, $2, $2
sh $3, 0($2)
TAG170:
sw $1, 0($1)
mult $1, $1
multu $1, $1
slti $4, $1, 2
TAG171:
bne $4, $4, TAG172
sb $4, 0($4)
lb $2, 0($4)
bltz $2, TAG172
TAG172:
srav $1, $2, $2
ori $4, $2, 0
and $4, $4, $2
sb $2, 0($4)
TAG173:
mthi $4
bgez $4, TAG174
lb $1, 0($4)
xori $4, $1, 6
TAG174:
lui $4, 1
bgez $4, TAG175
sll $0, $0, 0
and $3, $4, $4
TAG175:
divu $3, $3
blez $3, TAG176
mflo $1
lui $3, 13
TAG176:
andi $2, $3, 0
mthi $3
sh $2, 0($2)
mthi $3
TAG177:
mtlo $2
slti $1, $2, 5
blez $2, TAG178
and $4, $2, $1
TAG178:
mtlo $4
mfhi $1
mfhi $3
divu $1, $3
TAG179:
sll $0, $0, 0
slti $1, $3, 0
bgez $1, TAG180
mflo $1
TAG180:
sb $1, 0($1)
bgez $1, TAG181
mfhi $2
lh $2, 0($1)
TAG181:
beq $2, $2, TAG182
mthi $2
beq $2, $2, TAG182
xor $1, $2, $2
TAG182:
andi $3, $1, 7
mthi $3
lui $4, 4
sll $0, $0, 0
TAG183:
sll $0, $0, 0
mtlo $4
mflo $2
beq $2, $2, TAG184
TAG184:
mthi $2
lui $1, 4
sll $0, $0, 0
div $2, $1
TAG185:
sll $0, $0, 0
lui $1, 5
lui $4, 1
sll $0, $0, 0
TAG186:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
lbu $1, 0($3)
TAG187:
beq $1, $1, TAG188
lbu $3, 0($1)
xor $1, $1, $3
mfhi $4
TAG188:
mtlo $4
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG189
TAG189:
xori $3, $4, 7
sll $0, $0, 0
blez $1, TAG190
mtlo $4
TAG190:
bltz $1, TAG191
mflo $2
addiu $2, $2, 8
bne $2, $2, TAG191
TAG191:
subu $3, $2, $2
bne $3, $3, TAG192
addiu $2, $2, 11
divu $3, $2
TAG192:
mthi $2
slti $1, $2, 8
xor $2, $1, $2
multu $1, $2
TAG193:
bne $2, $2, TAG194
mflo $1
multu $1, $1
sll $0, $0, 0
TAG194:
sltu $3, $3, $3
sll $3, $3, 13
mfhi $2
bne $3, $3, TAG195
TAG195:
lb $3, 0($2)
beq $3, $2, TAG196
lui $3, 7
sw $3, 0($3)
TAG196:
lui $1, 3
beq $1, $3, TAG197
mflo $3
sll $0, $0, 0
TAG197:
or $2, $4, $4
sll $0, $0, 0
mflo $1
lui $1, 3
TAG198:
ori $3, $1, 3
mthi $3
sll $0, $0, 0
sll $0, $0, 0
TAG199:
beq $3, $3, TAG200
sll $0, $0, 0
mthi $3
sh $3, 0($3)
TAG200:
lui $4, 11
subu $1, $4, $3
sll $0, $0, 0
sll $0, $0, 0
TAG201:
mtlo $2
bgez $2, TAG202
divu $2, $2
bne $2, $2, TAG202
TAG202:
sll $0, $0, 0
srl $4, $2, 5
beq $2, $4, TAG203
divu $4, $4
TAG203:
sll $0, $0, 0
mfhi $4
lui $4, 5
lui $1, 2
TAG204:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG205:
beq $2, $2, TAG206
sll $0, $0, 0
nor $2, $2, $2
beq $2, $2, TAG206
TAG206:
srl $4, $2, 1
lui $2, 6
bgez $2, TAG207
ori $3, $4, 9
TAG207:
bne $3, $3, TAG208
lui $3, 6
xori $4, $3, 14
sll $0, $0, 0
TAG208:
sll $0, $0, 0
sll $0, $0, 0
bgtz $2, TAG209
sll $0, $0, 0
TAG209:
beq $4, $4, TAG210
sll $0, $0, 0
mflo $1
mfhi $1
TAG210:
bne $1, $1, TAG211
mtlo $1
lui $1, 9
sll $0, $0, 0
TAG211:
divu $1, $1
mthi $1
lui $1, 3
sll $0, $0, 0
TAG212:
blez $1, TAG213
mthi $1
bne $1, $1, TAG213
srav $1, $1, $1
TAG213:
bgtz $1, TAG214
sltiu $3, $1, 0
bltz $3, TAG214
sub $1, $1, $3
TAG214:
addu $3, $1, $1
mtlo $1
mult $3, $3
sll $0, $0, 0
TAG215:
beq $3, $3, TAG216
divu $3, $3
bltz $3, TAG216
lui $2, 15
TAG216:
mtlo $2
sll $2, $2, 2
sll $0, $0, 0
div $2, $2
TAG217:
lui $4, 0
beq $4, $2, TAG218
sltiu $1, $2, 6
blez $4, TAG218
TAG218:
nor $3, $1, $1
mtlo $3
mthi $1
srlv $4, $3, $3
TAG219:
mflo $3
lw $3, 1($3)
mfhi $3
lw $2, 0($3)
TAG220:
srav $1, $2, $2
mthi $2
bne $1, $1, TAG221
subu $3, $1, $1
TAG221:
beq $3, $3, TAG222
mflo $1
srlv $4, $1, $1
mtlo $1
TAG222:
mtlo $4
beq $4, $4, TAG223
mthi $4
sra $2, $4, 13
TAG223:
bne $2, $2, TAG224
and $4, $2, $2
mthi $4
bltz $4, TAG224
TAG224:
lui $3, 9
mthi $4
mtlo $4
mthi $3
TAG225:
sll $0, $0, 0
xori $4, $3, 4
and $3, $4, $4
bltz $4, TAG226
TAG226:
mtlo $3
lui $2, 3
sll $0, $0, 0
lui $4, 5
TAG227:
bne $4, $4, TAG228
sll $0, $0, 0
sll $0, $0, 0
bgez $3, TAG228
TAG228:
sll $0, $0, 0
srl $3, $1, 15
sll $0, $0, 0
sll $0, $0, 0
TAG229:
lui $1, 13
mfhi $2
xori $4, $1, 2
sltu $3, $1, $1
TAG230:
lui $4, 5
mfhi $1
lui $2, 8
sll $0, $0, 0
TAG231:
sll $0, $0, 0
lui $2, 11
bltz $2, TAG232
sll $0, $0, 0
TAG232:
lui $4, 1
bne $3, $3, TAG233
mfhi $3
ori $3, $4, 5
TAG233:
mtlo $3
lui $3, 2
sll $0, $0, 0
mfhi $2
TAG234:
bltz $2, TAG235
slti $1, $2, 0
lui $4, 10
srlv $2, $2, $4
TAG235:
sll $0, $0, 0
mfhi $1
blez $1, TAG236
sll $0, $0, 0
TAG236:
divu $1, $1
sll $0, $0, 0
mthi $1
sll $0, $0, 0
TAG237:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
blez $2, TAG238
TAG238:
mfhi $3
bne $4, $4, TAG239
nor $4, $4, $4
lui $2, 10
TAG239:
sll $0, $0, 0
lui $1, 8
bne $3, $1, TAG240
sll $0, $0, 0
TAG240:
beq $1, $1, TAG241
and $1, $1, $1
slt $4, $1, $1
sltiu $3, $1, 14
TAG241:
lui $1, 0
div $3, $3
addu $2, $3, $3
sltiu $1, $1, 12
TAG242:
mfhi $1
mult $1, $1
mult $1, $1
beq $1, $1, TAG243
TAG243:
mtlo $1
multu $1, $1
bne $1, $1, TAG244
srlv $1, $1, $1
TAG244:
sb $1, 0($1)
xor $3, $1, $1
mflo $3
sllv $4, $3, $3
TAG245:
beq $4, $4, TAG246
lui $4, 6
beq $4, $4, TAG246
lhu $4, 0($4)
TAG246:
beq $4, $4, TAG247
mthi $4
beq $4, $4, TAG247
sb $4, 0($4)
TAG247:
multu $4, $4
andi $4, $4, 6
bne $4, $4, TAG248
sb $4, 0($4)
TAG248:
lh $3, 0($4)
lh $3, 0($4)
sub $3, $3, $4
mfhi $1
TAG249:
mfhi $1
bgez $1, TAG250
sw $1, 0($1)
mfhi $1
TAG250:
bne $1, $1, TAG251
slt $4, $1, $1
lui $2, 3
div $4, $2
TAG251:
sll $0, $0, 0
bgtz $2, TAG252
mflo $4
ori $4, $2, 10
TAG252:
sllv $3, $4, $4
bne $3, $4, TAG253
mflo $2
multu $2, $2
TAG253:
mflo $4
sh $4, 0($4)
sb $2, 0($2)
mfhi $3
TAG254:
bne $3, $3, TAG255
sltiu $2, $3, 2
andi $2, $3, 7
bltz $2, TAG255
TAG255:
and $3, $2, $2
xor $2, $3, $3
srl $4, $2, 8
beq $4, $4, TAG256
TAG256:
sll $1, $4, 4
sh $4, 0($4)
subu $4, $4, $1
sra $2, $4, 2
TAG257:
add $1, $2, $2
beq $2, $2, TAG258
lb $2, 0($1)
mfhi $3
TAG258:
lui $2, 11
subu $3, $2, $2
multu $3, $3
bne $2, $3, TAG259
TAG259:
mthi $3
sh $3, 0($3)
mfhi $2
slt $3, $2, $3
TAG260:
sh $3, 0($3)
mflo $3
lui $1, 12
srav $2, $1, $3
TAG261:
beq $2, $2, TAG262
addu $1, $2, $2
mfhi $4
bgtz $1, TAG262
TAG262:
addiu $1, $4, 5
mthi $4
mfhi $4
sltu $3, $4, $4
TAG263:
sw $3, 0($3)
bne $3, $3, TAG264
mflo $1
mfhi $1
TAG264:
mfhi $4
lh $4, 0($1)
multu $4, $4
sw $4, 0($4)
TAG265:
multu $4, $4
sltiu $4, $4, 14
beq $4, $4, TAG266
addiu $3, $4, 4
TAG266:
bne $3, $3, TAG267
lui $2, 7
mflo $3
addi $1, $3, 12
TAG267:
mfhi $2
blez $2, TAG268
andi $2, $2, 3
bgez $2, TAG268
TAG268:
andi $1, $2, 13
lui $2, 11
lui $2, 15
mfhi $4
TAG269:
mtlo $4
mthi $4
lb $1, 0($4)
addu $4, $4, $1
TAG270:
lb $2, 0($4)
multu $4, $2
sw $2, 0($4)
mfhi $3
TAG271:
mtlo $3
multu $3, $3
lw $3, 0($3)
xori $4, $3, 7
TAG272:
addu $4, $4, $4
div $4, $4
lui $1, 1
lui $1, 0
TAG273:
andi $4, $1, 5
blez $4, TAG274
mthi $1
sb $4, 0($4)
TAG274:
lhu $1, 0($4)
addi $1, $1, 14
xori $3, $4, 2
mfhi $2
TAG275:
bgez $2, TAG276
lui $1, 2
slti $2, $1, 12
divu $2, $2
TAG276:
beq $2, $2, TAG277
srlv $2, $2, $2
sltiu $4, $2, 7
mult $2, $4
TAG277:
nor $4, $4, $4
lw $4, 1($4)
beq $4, $4, TAG278
addi $1, $4, 4
TAG278:
lhu $1, 0($1)
beq $1, $1, TAG279
lhu $3, 0($1)
srl $3, $1, 13
TAG279:
div $3, $3
mflo $4
xori $4, $4, 15
sra $2, $4, 10
TAG280:
lui $1, 3
beq $2, $2, TAG281
divu $2, $1
mfhi $3
TAG281:
multu $3, $3
mthi $3
multu $3, $3
mflo $3
TAG282:
div $3, $3
div $3, $3
beq $3, $3, TAG283
sb $3, 0($3)
TAG283:
divu $3, $3
divu $3, $3
lbu $3, 0($3)
sb $3, 0($3)
TAG284:
sltu $1, $3, $3
bgez $1, TAG285
srav $3, $1, $1
multu $1, $1
TAG285:
mthi $3
mflo $2
mult $2, $3
mult $2, $3
TAG286:
mult $2, $2
sb $2, 0($2)
andi $2, $2, 6
beq $2, $2, TAG287
TAG287:
sb $2, 0($2)
sw $2, 0($2)
sw $2, 0($2)
lui $2, 15
TAG288:
lui $2, 3
mult $2, $2
xori $1, $2, 4
sll $0, $0, 0
TAG289:
multu $1, $1
mthi $1
mflo $4
blez $4, TAG290
TAG290:
subu $2, $4, $4
or $4, $2, $4
lw $1, 0($2)
sh $4, 0($2)
TAG291:
mfhi $2
bne $1, $1, TAG292
multu $2, $2
beq $2, $2, TAG292
TAG292:
addiu $4, $2, 0
and $3, $2, $2
mtlo $3
mthi $2
TAG293:
mult $3, $3
sra $1, $3, 12
bgtz $1, TAG294
multu $3, $1
TAG294:
lui $4, 15
lui $3, 13
lui $1, 0
and $1, $4, $1
TAG295:
addi $2, $1, 11
mtlo $1
bgtz $1, TAG296
sb $1, 0($2)
TAG296:
mfhi $3
mfhi $1
sb $3, 0($2)
bgtz $1, TAG297
TAG297:
multu $1, $1
beq $1, $1, TAG298
sh $1, 0($1)
xor $4, $1, $1
TAG298:
lui $2, 10
andi $2, $4, 10
or $2, $2, $2
ori $4, $4, 11
TAG299:
bgtz $4, TAG300
sll $0, $0, 0
lui $1, 9
bltz $4, TAG300
TAG300:
lh $2, 0($1)
mfhi $3
bltz $3, TAG301
mfhi $2
TAG301:
lh $2, 0($2)
bne $2, $2, TAG302
mult $2, $2
bgtz $2, TAG302
TAG302:
mtlo $2
lh $1, 0($2)
srav $4, $2, $1
sub $2, $1, $2
TAG303:
mult $2, $2
or $1, $2, $2
bgtz $1, TAG304
mult $2, $1
TAG304:
mflo $1
and $3, $1, $1
mflo $4
sw $4, 0($3)
TAG305:
bne $4, $4, TAG306
multu $4, $4
bgez $4, TAG306
mflo $2
TAG306:
sllv $3, $2, $2
beq $3, $2, TAG307
slti $3, $3, 9
sh $3, 0($3)
TAG307:
lui $3, 3
addiu $4, $3, 5
addiu $4, $4, 8
addiu $4, $4, 15
TAG308:
srav $3, $4, $4
mtlo $4
mtlo $3
mthi $3
TAG309:
sw $3, 0($3)
mthi $3
mult $3, $3
multu $3, $3
TAG310:
lh $3, 0($3)
addi $1, $3, 2
mflo $4
slti $1, $3, 4
TAG311:
mtlo $1
lbu $3, 0($1)
multu $3, $3
lui $4, 12
TAG312:
mthi $4
bltz $4, TAG313
mult $4, $4
sll $0, $0, 0
TAG313:
sra $3, $4, 2
bgtz $3, TAG314
mfhi $4
mflo $2
TAG314:
beq $2, $2, TAG315
sb $2, 0($2)
xori $2, $2, 5
sw $2, 0($2)
TAG315:
mtlo $2
lui $1, 2
mflo $1
addu $3, $1, $2
TAG316:
sb $3, 0($3)
mthi $3
sw $3, 0($3)
srlv $2, $3, $3
TAG317:
mflo $2
mtlo $2
blez $2, TAG318
mult $2, $2
TAG318:
mtlo $2
srav $2, $2, $2
lb $2, 0($2)
bne $2, $2, TAG319
TAG319:
sb $2, 0($2)
bne $2, $2, TAG320
mflo $1
mthi $1
TAG320:
mfhi $3
lw $4, 0($3)
mtlo $1
multu $1, $3
TAG321:
mthi $4
sb $4, 0($4)
lui $1, 10
sw $1, 0($4)
TAG322:
lui $1, 10
sll $0, $0, 0
addiu $1, $1, 11
blez $1, TAG323
TAG323:
sll $0, $0, 0
lui $4, 2
mtlo $4
mflo $3
TAG324:
addiu $3, $3, 2
mult $3, $3
sll $0, $0, 0
sltiu $1, $3, 7
TAG325:
sh $1, 0($1)
sb $1, 0($1)
beq $1, $1, TAG326
or $4, $1, $1
TAG326:
or $3, $4, $4
sb $3, 0($3)
sh $4, 0($4)
mflo $2
TAG327:
mthi $2
bgez $2, TAG328
lui $4, 3
mfhi $2
TAG328:
sll $0, $0, 0
beq $2, $1, TAG329
mflo $3
lui $4, 10
TAG329:
bne $4, $4, TAG330
lui $2, 11
bgtz $4, TAG330
srl $2, $2, 3
TAG330:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
mult $2, $2
TAG331:
sllv $4, $2, $2
lui $1, 4
lui $2, 5
bne $4, $1, TAG332
TAG332:
sll $0, $0, 0
multu $1, $2
mtlo $2
and $2, $1, $2
TAG333:
mtlo $2
lui $4, 3
bgtz $4, TAG334
mflo $4
TAG334:
lui $4, 4
slti $4, $4, 11
srl $3, $4, 9
bne $3, $3, TAG335
TAG335:
nor $4, $3, $3
lh $2, 1($4)
multu $2, $3
bgez $4, TAG336
TAG336:
lw $1, 0($2)
mthi $2
subu $4, $2, $1
mtlo $1
TAG337:
bgtz $4, TAG338
addu $1, $4, $4
beq $4, $1, TAG338
srl $3, $1, 2
TAG338:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $3, $1, $3
TAG339:
multu $3, $3
mfhi $2
sltiu $1, $2, 1
mfhi $1
TAG340:
bltz $1, TAG341
lui $1, 12
mthi $1
sltu $3, $1, $1
TAG341:
multu $3, $3
lhu $2, 0($3)
mthi $3
lui $3, 8
TAG342:
beq $3, $3, TAG343
slti $4, $3, 15
sb $3, 0($4)
srav $3, $4, $4
TAG343:
bne $3, $3, TAG344
ori $2, $3, 4
multu $2, $3
bne $3, $2, TAG344
TAG344:
sltiu $2, $2, 13
beq $2, $2, TAG345
lui $2, 7
addi $4, $2, 5
TAG345:
nor $3, $4, $4
mtlo $4
slti $4, $3, 13
beq $3, $4, TAG346
TAG346:
mthi $4
bne $4, $4, TAG347
xori $4, $4, 2
mfhi $1
TAG347:
sb $1, 0($1)
lbu $3, 0($1)
sb $3, 0($3)
beq $3, $3, TAG348
TAG348:
sb $3, 0($3)
lb $1, 0($3)
multu $1, $3
lbu $1, 0($3)
TAG349:
lb $4, 0($1)
ori $1, $1, 1
sb $1, 0($1)
sllv $3, $1, $1
TAG350:
srl $1, $3, 15
bgtz $1, TAG351
addiu $3, $3, 9
bltz $3, TAG351
TAG351:
mflo $3
mfhi $3
blez $3, TAG352
sb $3, 0($3)
TAG352:
mfhi $1
bltz $1, TAG353
mthi $3
beq $3, $1, TAG353
TAG353:
add $1, $1, $1
beq $1, $1, TAG354
xori $1, $1, 10
lui $3, 9
TAG354:
xor $1, $3, $3
lh $2, 0($3)
lhu $3, 0($1)
srl $3, $3, 3
TAG355:
sh $3, 0($3)
bgez $3, TAG356
lh $4, 0($3)
sb $3, 0($3)
TAG356:
addiu $4, $4, 10
mflo $1
bgez $1, TAG357
sb $4, 0($4)
TAG357:
andi $1, $1, 9
lbu $1, 0($1)
lb $3, 0($1)
beq $3, $3, TAG358
TAG358:
lb $3, 0($3)
beq $3, $3, TAG359
lbu $3, 0($3)
mthi $3
TAG359:
multu $3, $3
bne $3, $3, TAG360
addiu $4, $3, 3
lb $1, 0($4)
TAG360:
lui $4, 1
mflo $3
sb $3, 0($1)
mtlo $3
TAG361:
bgtz $3, TAG362
lui $4, 12
lui $2, 15
mflo $2
TAG362:
sb $2, -256($2)
multu $2, $2
sh $2, -256($2)
mult $2, $2
TAG363:
sw $2, -256($2)
mfhi $1
multu $1, $2
mfhi $2
TAG364:
mult $2, $2
blez $2, TAG365
sll $3, $2, 3
div $2, $3
TAG365:
lbu $1, 0($3)
sh $1, 0($3)
bltz $3, TAG366
mfhi $4
TAG366:
lw $3, 0($4)
sll $4, $4, 8
beq $4, $4, TAG367
mtlo $4
TAG367:
lui $1, 1
multu $4, $1
div $1, $1
mtlo $4
TAG368:
bne $1, $1, TAG369
sll $0, $0, 0
srav $2, $1, $1
bltz $4, TAG369
TAG369:
mtlo $2
bgez $2, TAG370
sll $0, $0, 0
multu $2, $2
TAG370:
mfhi $2
mtlo $2
lh $3, 0($2)
sb $2, 0($3)
TAG371:
mthi $3
mult $3, $3
or $4, $3, $3
bne $3, $4, TAG372
TAG372:
mfhi $3
beq $4, $4, TAG373
lui $2, 1
mtlo $3
TAG373:
mult $2, $2
sll $0, $0, 0
mflo $4
beq $4, $4, TAG374
TAG374:
mult $4, $4
multu $4, $4
slt $2, $4, $4
sw $2, 0($2)
TAG375:
lh $1, 0($2)
lw $2, 0($1)
sw $1, 0($2)
mult $2, $2
TAG376:
multu $2, $2
mfhi $4
and $3, $4, $2
mfhi $2
TAG377:
lh $4, 0($2)
beq $4, $2, TAG378
lui $2, 5
lbu $3, 0($2)
TAG378:
addi $1, $3, 9
multu $3, $3
beq $1, $1, TAG379
slti $3, $3, 11
TAG379:
lb $2, 0($3)
sb $2, 0($3)
xori $2, $3, 4
mtlo $2
TAG380:
lb $2, 0($2)
mfhi $3
addi $1, $2, 1
bne $1, $1, TAG381
TAG381:
sb $1, 0($1)
sb $1, 0($1)
blez $1, TAG382
lb $3, 0($1)
TAG382:
bne $3, $3, TAG383
mthi $3
lbu $1, 0($3)
beq $1, $1, TAG383
TAG383:
lui $1, 7
mtlo $1
mthi $1
mthi $1
TAG384:
mtlo $1
mult $1, $1
mflo $4
beq $1, $1, TAG385
TAG385:
mthi $4
sh $4, 0($4)
mflo $1
mflo $3
TAG386:
lui $3, 15
bne $3, $3, TAG387
lui $4, 8
blez $3, TAG387
TAG387:
mfhi $2
bne $4, $2, TAG388
slti $4, $2, 8
mthi $4
TAG388:
beq $4, $4, TAG389
sb $4, 0($4)
divu $4, $4
mthi $4
TAG389:
addu $1, $4, $4
nor $3, $1, $4
lui $4, 11
lh $4, 4($3)
TAG390:
sh $4, -256($4)
mfhi $1
mult $1, $1
lw $3, -256($4)
TAG391:
srav $3, $3, $3
mfhi $2
mthi $3
nor $4, $2, $3
TAG392:
multu $4, $4
sh $4, 257($4)
lui $1, 9
sll $0, $0, 0
TAG393:
mtlo $2
xor $4, $2, $2
addi $4, $2, 13
lui $2, 4
TAG394:
andi $3, $2, 4
sh $2, 0($3)
mfhi $2
addu $2, $2, $2
TAG395:
divu $2, $2
bltz $2, TAG396
nor $3, $2, $2
mfhi $1
TAG396:
lui $2, 0
mfhi $4
beq $1, $4, TAG397
mult $2, $4
TAG397:
sra $3, $4, 11
mfhi $2
lui $1, 6
bne $3, $1, TAG398
TAG398:
div $1, $1
mfhi $2
mthi $1
xor $2, $1, $1
TAG399:
bltz $2, TAG400
lui $1, 14
addu $3, $2, $2
subu $2, $2, $2
TAG400:
bltz $2, TAG401
mthi $2
mult $2, $2
mtlo $2
TAG401:
mflo $2
lui $1, 2
blez $2, TAG402
sra $1, $1, 1
TAG402:
sll $0, $0, 0
sllv $2, $1, $1
div $1, $2
multu $1, $1
TAG403:
mtlo $2
mtlo $2
bgez $2, TAG404
lui $1, 2
TAG404:
lui $3, 2
bne $3, $1, TAG405
sll $0, $0, 0
sll $0, $0, 0
TAG405:
sll $0, $0, 0
slt $4, $4, $3
sb $4, 0($4)
sb $4, 0($4)
TAG406:
sb $4, 0($4)
lbu $1, 0($4)
mtlo $4
addiu $3, $4, 8
TAG407:
lb $3, 0($3)
mthi $3
mult $3, $3
multu $3, $3
TAG408:
lui $2, 13
lui $2, 12
blez $2, TAG409
or $1, $2, $2
TAG409:
sll $0, $0, 0
xori $1, $1, 6
addu $1, $1, $1
sll $0, $0, 0
TAG410:
bne $2, $2, TAG411
lui $4, 12
andi $4, $4, 9
sb $2, 0($4)
TAG411:
multu $4, $4
beq $4, $4, TAG412
sh $4, 0($4)
lui $1, 10
TAG412:
andi $2, $1, 7
bgtz $2, TAG413
mflo $3
mult $3, $1
TAG413:
lui $2, 13
nor $2, $3, $2
beq $2, $2, TAG414
sll $0, $0, 0
TAG414:
bgtz $1, TAG415
sll $0, $0, 0
sra $1, $1, 4
bltz $1, TAG415
TAG415:
xori $1, $1, 6
or $3, $1, $1
lui $1, 2
sltu $4, $3, $1
TAG416:
or $1, $4, $4
sb $4, 0($4)
andi $4, $1, 0
blez $4, TAG417
TAG417:
lui $2, 13
sltiu $1, $4, 8
mult $1, $2
mflo $4
TAG418:
bne $4, $4, TAG419
mtlo $4
beq $4, $4, TAG419
lui $1, 1
TAG419:
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
bgtz $4, TAG420
TAG420:
or $1, $4, $4
bgez $4, TAG421
mfhi $3
multu $3, $1
TAG421:
lbu $1, 0($3)
mfhi $3
lui $2, 13
beq $3, $2, TAG422
TAG422:
and $1, $2, $2
div $2, $1
lui $1, 10
mfhi $1
TAG423:
mthi $1
xor $4, $1, $1
mflo $4
mflo $3
TAG424:
lui $1, 4
sll $0, $0, 0
beq $3, $3, TAG425
lui $4, 14
TAG425:
lui $2, 5
beq $2, $2, TAG426
or $1, $2, $4
sw $2, 0($2)
TAG426:
mtlo $1
multu $1, $1
lui $2, 12
mflo $3
TAG427:
sb $3, 0($3)
mfhi $2
mflo $4
multu $2, $4
TAG428:
blez $4, TAG429
xor $4, $4, $4
mult $4, $4
divu $4, $4
TAG429:
mult $4, $4
andi $3, $4, 15
lui $3, 4
or $2, $3, $4
TAG430:
beq $2, $2, TAG431
mflo $3
beq $3, $2, TAG431
lui $3, 8
TAG431:
multu $3, $3
multu $3, $3
slt $1, $3, $3
lw $1, 0($1)
TAG432:
bne $1, $1, TAG433
lb $3, 0($1)
lui $4, 13
multu $1, $1
TAG433:
mfhi $1
sb $4, 0($1)
mtlo $4
divu $1, $4
TAG434:
lui $1, 4
bgez $1, TAG435
multu $1, $1
div $1, $1
TAG435:
lui $1, 13
sll $0, $0, 0
addu $2, $1, $1
mtlo $2
TAG436:
mult $2, $2
sll $1, $2, 13
sll $0, $0, 0
div $2, $1
TAG437:
beq $1, $1, TAG438
mtlo $1
lui $4, 6
lui $1, 15
TAG438:
mthi $1
mtlo $1
mult $1, $1
sll $0, $0, 0
TAG439:
sll $0, $0, 0
srav $3, $2, $2
beq $2, $2, TAG440
sll $0, $0, 0
TAG440:
beq $3, $3, TAG441
sll $0, $0, 0
lh $3, 0($3)
lui $1, 10
TAG441:
sll $0, $0, 0
ori $1, $3, 6
xori $2, $3, 1
lui $2, 7
TAG442:
sll $0, $0, 0
sll $0, $0, 0
mflo $2
sb $2, 0($2)
TAG443:
bgtz $2, TAG444
lh $1, 0($2)
bne $2, $2, TAG444
lbu $3, 0($1)
TAG444:
addu $1, $3, $3
mult $3, $3
lui $2, 5
lb $4, 0($3)
TAG445:
addi $2, $4, 2
andi $1, $4, 5
sw $1, 0($4)
lb $1, 0($4)
TAG446:
lui $1, 15
srav $3, $1, $1
mthi $1
beq $1, $3, TAG447
TAG447:
xori $4, $3, 8
andi $3, $3, 15
sltu $1, $4, $3
subu $3, $4, $4
TAG448:
addiu $4, $3, 9
beq $4, $4, TAG449
mflo $3
mfhi $3
TAG449:
sh $3, 0($3)
mtlo $3
mthi $3
sb $3, 0($3)
TAG450:
slti $1, $3, 4
mthi $3
addiu $1, $1, 9
mtlo $1
TAG451:
mtlo $1
beq $1, $1, TAG452
subu $4, $1, $1
mfhi $4
TAG452:
mtlo $4
srl $2, $4, 2
multu $2, $4
sllv $1, $4, $4
TAG453:
bgtz $1, TAG454
addi $1, $1, 13
beq $1, $1, TAG454
and $4, $1, $1
TAG454:
subu $3, $4, $4
mtlo $4
mfhi $4
mfhi $1
TAG455:
lhu $2, 0($1)
mult $1, $1
mflo $4
srl $2, $4, 6
TAG456:
andi $3, $2, 4
beq $2, $3, TAG457
lui $4, 0
subu $1, $4, $3
TAG457:
beq $1, $1, TAG458
mult $1, $1
sub $4, $1, $1
addiu $2, $1, 4
TAG458:
lb $1, 0($2)
sub $3, $1, $1
sh $2, 0($1)
bne $3, $2, TAG459
TAG459:
multu $3, $3
addu $2, $3, $3
bgez $2, TAG460
sb $2, 0($3)
TAG460:
multu $2, $2
sll $3, $2, 8
multu $3, $2
beq $3, $3, TAG461
TAG461:
mthi $3
multu $3, $3
lui $1, 10
bne $1, $3, TAG462
TAG462:
mult $1, $1
addiu $1, $1, 13
multu $1, $1
blez $1, TAG463
TAG463:
addiu $1, $1, 3
mfhi $1
mtlo $1
subu $4, $1, $1
TAG464:
bltz $4, TAG465
mthi $4
bgez $4, TAG465
mult $4, $4
TAG465:
bgtz $4, TAG466
lh $4, 0($4)
lbu $2, 0($4)
lui $2, 12
TAG466:
sltiu $2, $2, 2
mtlo $2
mflo $1
srl $2, $2, 8
TAG467:
andi $3, $2, 8
nor $3, $2, $3
bne $2, $3, TAG468
mtlo $3
TAG468:
bne $3, $3, TAG469
sw $3, 1($3)
lw $1, 1($3)
subu $4, $3, $1
TAG469:
mtlo $4
srav $4, $4, $4
bltz $4, TAG470
lui $1, 1
TAG470:
div $1, $1
lui $4, 9
divu $4, $4
sll $0, $0, 0
TAG471:
bgez $4, TAG472
addu $4, $4, $4
multu $4, $4
lw $4, 0($4)
TAG472:
bgtz $4, TAG473
divu $4, $4
bne $4, $4, TAG473
mtlo $4
TAG473:
srav $1, $4, $4
sll $0, $0, 0
lui $2, 11
sll $0, $0, 0
TAG474:
lui $1, 13
sll $0, $0, 0
mfhi $3
lui $4, 8
TAG475:
mfhi $4
bne $4, $4, TAG476
lui $2, 3
mult $4, $4
TAG476:
xori $2, $2, 10
mflo $3
lui $1, 6
bgez $2, TAG477
TAG477:
mthi $1
divu $1, $1
addiu $4, $1, 14
beq $1, $1, TAG478
TAG478:
mthi $4
multu $4, $4
blez $4, TAG479
mult $4, $4
TAG479:
addiu $1, $4, 3
sltu $1, $1, $1
multu $4, $1
mthi $1
TAG480:
mthi $1
lui $1, 11
lui $2, 7
sll $0, $0, 0
TAG481:
mtlo $3
addu $1, $3, $3
bne $1, $1, TAG482
mfhi $1
TAG482:
multu $1, $1
slt $1, $1, $1
lui $4, 6
beq $1, $4, TAG483
TAG483:
mfhi $2
sll $3, $4, 10
multu $3, $2
xor $1, $3, $2
TAG484:
mflo $2
multu $1, $2
sll $0, $0, 0
sll $0, $0, 0
TAG485:
mtlo $1
divu $1, $1
lui $2, 11
mfhi $4
TAG486:
sw $4, 0($4)
mflo $3
mfhi $3
beq $3, $3, TAG487
TAG487:
xori $1, $3, 12
lui $3, 2
div $3, $3
lui $4, 3
TAG488:
multu $4, $4
divu $4, $4
srl $4, $4, 1
beq $4, $4, TAG489
TAG489:
addiu $1, $4, 5
divu $4, $1
sll $0, $0, 0
lui $3, 11
TAG490:
sll $0, $0, 0
bltz $3, TAG491
sll $4, $3, 2
mtlo $3
TAG491:
sltu $3, $4, $4
mult $4, $4
mult $4, $3
mflo $1
TAG492:
bgtz $1, TAG493
sb $1, 0($1)
srlv $1, $1, $1
sh $1, 0($1)
TAG493:
lui $4, 1
nor $2, $4, $1
sllv $1, $2, $4
and $3, $4, $4
TAG494:
ori $1, $3, 7
slt $4, $1, $1
lui $2, 6
addu $3, $3, $3
TAG495:
mtlo $3
bltz $3, TAG496
sll $0, $0, 0
mult $3, $3
TAG496:
mtlo $3
mflo $4
lui $4, 12
sll $0, $0, 0
TAG497:
bne $3, $3, TAG498
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG498:
sll $0, $0, 0
lui $2, 4
srav $3, $2, $2
sll $1, $4, 7
TAG499:
sll $0, $0, 0
blez $1, TAG500
mflo $4
sll $0, $0, 0
TAG500:
bne $4, $4, TAG501
or $2, $4, $4
srl $4, $2, 11
sll $0, $0, 0
TAG501:
slti $4, $1, 14
bgez $1, TAG502
mtlo $4
blez $4, TAG502
TAG502:
lh $4, 0($4)
slti $3, $4, 9
sll $2, $4, 1
beq $4, $2, TAG503
TAG503:
multu $2, $2
bltz $2, TAG504
sra $4, $2, 10
mtlo $2
TAG504:
mfhi $1
multu $4, $4
multu $4, $4
multu $1, $4
TAG505:
bltz $1, TAG506
mthi $1
mfhi $4
add $1, $1, $1
TAG506:
mflo $4
sh $4, 0($4)
mtlo $1
mflo $3
TAG507:
lui $4, 7
mflo $3
lh $3, 0($3)
slti $2, $4, 1
TAG508:
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG509
lhu $3, 0($2)
TAG509:
mflo $2
multu $3, $3
srl $2, $3, 3
lhu $2, 0($2)
TAG510:
slt $1, $2, $2
beq $1, $2, TAG511
sw $1, 0($1)
mflo $4
TAG511:
mfhi $3
sll $0, $0, 0
sltiu $2, $2, 9
bltz $2, TAG512
TAG512:
mflo $1
lh $3, 0($1)
lhu $1, 0($3)
mthi $3
TAG513:
sw $1, 0($1)
lw $2, 0($1)
addu $3, $1, $1
mult $2, $1
TAG514:
lui $3, 3
sll $0, $0, 0
add $1, $2, $2
mtlo $3
TAG515:
mflo $4
mtlo $4
multu $4, $1
multu $4, $1
TAG516:
and $3, $4, $4
blez $4, TAG517
sll $0, $0, 0
addu $4, $4, $3
TAG517:
slti $4, $4, 9
bltz $4, TAG518
multu $4, $4
multu $4, $4
TAG518:
lw $2, 0($4)
lw $2, 0($2)
sw $4, 0($4)
bne $2, $2, TAG519
TAG519:
lhu $2, 0($2)
srl $3, $2, 3
mfhi $4
lui $1, 12
TAG520:
mflo $2
mfhi $1
mfhi $4
addi $2, $1, 1
TAG521:
lbu $3, 0($2)
lui $3, 2
mthi $3
sllv $1, $2, $3
TAG522:
lui $4, 7
mflo $1
sll $0, $0, 0
sw $1, 0($1)
TAG523:
beq $1, $1, TAG524
mult $1, $1
bne $1, $1, TAG524
mult $1, $1
TAG524:
subu $2, $1, $1
blez $2, TAG525
mthi $2
mtlo $1
TAG525:
xor $2, $2, $2
mflo $3
bltz $2, TAG526
multu $2, $2
TAG526:
beq $3, $3, TAG527
lui $2, 4
mthi $3
bltz $3, TAG527
TAG527:
lui $1, 14
mfhi $2
mfhi $3
lh $2, 0($2)
TAG528:
mult $2, $2
mfhi $4
mtlo $2
lh $2, 0($2)
TAG529:
beq $2, $2, TAG530
multu $2, $2
or $2, $2, $2
slt $4, $2, $2
TAG530:
mtlo $4
lb $2, 0($4)
srav $4, $2, $2
mflo $1
TAG531:
sltiu $1, $1, 6
sllv $3, $1, $1
srlv $2, $3, $1
or $4, $1, $1
TAG532:
beq $4, $4, TAG533
lui $4, 10
srl $2, $4, 7
multu $4, $4
TAG533:
beq $2, $2, TAG534
sra $1, $2, 6
xori $2, $1, 14
mfhi $3
TAG534:
beq $3, $3, TAG535
lh $3, 0($3)
sra $3, $3, 13
mflo $1
TAG535:
mflo $2
mtlo $2
bgez $1, TAG536
sh $1, 0($1)
TAG536:
lb $1, 0($2)
bgez $2, TAG537
sh $1, 0($1)
lw $4, 0($1)
TAG537:
srlv $2, $4, $4
slt $3, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG538:
sltiu $4, $3, 4
mflo $2
bgtz $2, TAG539
xor $2, $3, $4
TAG539:
divu $2, $2
bne $2, $2, TAG540
lb $2, 0($2)
sll $4, $2, 8
TAG540:
beq $4, $4, TAG541
lui $2, 15
sb $4, 0($2)
subu $1, $2, $4
TAG541:
mflo $1
sb $1, 0($1)
subu $1, $1, $1
lui $3, 2
TAG542:
blez $3, TAG543
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
TAG543:
mfhi $1
blez $1, TAG544
mflo $2
lw $1, 0($1)
TAG544:
multu $1, $1
bltz $1, TAG545
lui $4, 10
bne $4, $1, TAG545
TAG545:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 2
lui $4, 4
TAG546:
nor $4, $4, $4
mult $4, $4
sll $0, $0, 0
lui $2, 11
TAG547:
sltiu $4, $2, 8
addu $1, $2, $4
mthi $2
sll $0, $0, 0
TAG548:
beq $1, $1, TAG549
srlv $1, $1, $1
lhu $1, 0($1)
sltiu $1, $1, 12
TAG549:
bgez $1, TAG550
mfhi $4
lbu $2, 0($1)
sub $3, $4, $2
TAG550:
bne $3, $3, TAG551
xor $3, $3, $3
sh $3, 0($3)
lui $4, 7
TAG551:
blez $4, TAG552
mfhi $1
mfhi $3
sll $0, $0, 0
TAG552:
mthi $4
sll $0, $0, 0
sll $0, $0, 0
addu $4, $4, $4
TAG553:
lui $4, 15
sll $3, $4, 12
mflo $3
mflo $4
TAG554:
subu $3, $4, $4
multu $3, $4
mtlo $3
mflo $2
TAG555:
mthi $2
mfhi $4
lui $1, 15
sw $1, 0($2)
TAG556:
sllv $2, $1, $1
div $1, $2
multu $1, $2
multu $1, $2
TAG557:
mult $2, $2
sll $0, $0, 0
mtlo $2
subu $3, $2, $2
TAG558:
lhu $1, 0($3)
sw $1, 0($3)
blez $1, TAG559
srl $4, $1, 0
TAG559:
sra $4, $4, 14
lui $4, 8
mthi $4
sll $0, $0, 0
TAG560:
multu $4, $4
bne $4, $4, TAG561
mfhi $4
sh $4, 0($4)
TAG561:
mthi $4
addu $1, $4, $4
sw $4, 0($4)
multu $1, $4
TAG562:
lui $4, 8
xor $2, $4, $4
lui $1, 8
bgez $1, TAG563
TAG563:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
bgtz $1, TAG564
TAG564:
sll $0, $0, 0
mthi $1
mflo $2
mfhi $1
TAG565:
lui $3, 3
divu $3, $1
divu $3, $3
bgez $1, TAG566
TAG566:
mflo $1
sra $2, $3, 8
sb $1, 0($1)
bgez $3, TAG567
TAG567:
lui $4, 12
mult $4, $2
divu $4, $2
div $4, $2
TAG568:
lui $4, 2
bgez $4, TAG569
mflo $1
mfhi $4
TAG569:
sll $0, $0, 0
bne $4, $4, TAG570
mult $4, $4
sll $0, $0, 0
TAG570:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $1
bgez $1, TAG571
TAG571:
lui $2, 1
lh $4, -1024($1)
mthi $1
divu $1, $2
TAG572:
mflo $1
lui $2, 12
srlv $4, $1, $4
multu $1, $2
TAG573:
blez $4, TAG574
sb $4, 0($4)
andi $3, $4, 9
slti $3, $3, 6
TAG574:
beq $3, $3, TAG575
or $2, $3, $3
sub $4, $2, $3
lh $3, 0($2)
TAG575:
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
bne $3, $3, TAG576
TAG576:
lui $2, 1
sll $0, $0, 0
srl $3, $2, 4
lw $3, -4096($3)
TAG577:
beq $3, $3, TAG578
slt $2, $3, $3
div $3, $3
blez $3, TAG578
TAG578:
lbu $2, 0($2)
sub $1, $2, $2
blez $2, TAG579
slt $4, $1, $2
TAG579:
slt $3, $4, $4
bne $4, $3, TAG580
multu $3, $4
blez $3, TAG580
TAG580:
mthi $3
lui $4, 6
mtlo $4
sh $3, 0($3)
TAG581:
lui $3, 12
andi $4, $4, 12
sb $4, 0($4)
nor $2, $4, $3
TAG582:
beq $2, $2, TAG583
and $1, $2, $2
lw $4, 0($2)
mfhi $2
TAG583:
bgez $2, TAG584
lui $2, 9
mult $2, $2
slti $2, $2, 11
TAG584:
multu $2, $2
andi $1, $2, 10
bltz $1, TAG585
mfhi $2
TAG585:
multu $2, $2
mflo $2
lb $4, 0($2)
lbu $2, 0($4)
TAG586:
mthi $2
lbu $4, 0($2)
lui $3, 10
andi $1, $2, 13
TAG587:
mtlo $1
bltz $1, TAG588
addi $2, $1, 9
bltz $2, TAG588
TAG588:
addu $2, $2, $2
lui $2, 10
blez $2, TAG589
sll $0, $0, 0
TAG589:
lw $3, 0($1)
sw $3, 0($3)
mflo $3
lui $2, 7
TAG590:
div $2, $2
blez $2, TAG591
lui $3, 11
mthi $2
TAG591:
sll $0, $0, 0
divu $3, $3
mflo $2
srlv $1, $3, $2
TAG592:
sll $0, $0, 0
ori $2, $1, 4
sll $0, $0, 0
mflo $1
TAG593:
divu $1, $1
lui $1, 13
div $1, $1
beq $1, $1, TAG594
TAG594:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG595:
mflo $1
mult $4, $4
and $2, $4, $1
bltz $2, TAG596
TAG596:
mult $2, $2
beq $2, $2, TAG597
mult $2, $2
mflo $3
TAG597:
mtlo $3
lui $4, 5
lui $3, 7
sll $0, $0, 0
TAG598:
sll $0, $0, 0
sh $2, 0($2)
lw $2, 0($2)
bne $3, $2, TAG599
TAG599:
sb $2, 0($2)
lui $2, 5
mfhi $4
slti $3, $2, 13
TAG600:
mult $3, $3
sh $3, 0($3)
lui $2, 3
mfhi $4
TAG601:
mfhi $3
sw $3, 0($4)
subu $2, $3, $4
mfhi $1
TAG602:
mfhi $2
bgez $1, TAG603
mflo $2
sll $3, $2, 8
TAG603:
mfhi $2
sub $4, $3, $2
sra $1, $4, 13
and $4, $2, $2
TAG604:
bltz $4, TAG605
sw $4, 0($4)
bltz $4, TAG605
lh $3, 0($4)
TAG605:
bgez $3, TAG606
mtlo $3
mult $3, $3
lhu $1, 0($3)
TAG606:
sh $1, 0($1)
bltz $1, TAG607
mult $1, $1
lui $1, 15
TAG607:
bgez $1, TAG608
sll $0, $0, 0
lh $1, 0($1)
mthi $1
TAG608:
mthi $1
sll $0, $0, 0
lui $2, 12
sltiu $4, $2, 8
TAG609:
lb $3, 0($4)
sltu $4, $3, $3
mfhi $2
ori $4, $2, 15
TAG610:
mult $4, $4
sltiu $1, $4, 2
mtlo $1
lui $3, 9
TAG611:
lui $2, 5
mfhi $2
bne $2, $2, TAG612
ori $3, $2, 4
TAG612:
multu $3, $3
sb $3, -229($3)
sw $3, -229($3)
sw $3, -229($3)
TAG613:
andi $4, $3, 7
lui $2, 9
lui $1, 1
bgtz $3, TAG614
TAG614:
andi $2, $1, 11
sll $0, $0, 0
beq $2, $1, TAG615
lhu $4, 0($2)
TAG615:
lui $1, 6
mflo $2
mtlo $1
mthi $1
TAG616:
ori $2, $2, 1
sll $0, $0, 0
beq $2, $2, TAG617
sll $0, $0, 0
TAG617:
srav $4, $2, $2
addiu $3, $4, 11
sll $1, $3, 11
lui $1, 14
TAG618:
mult $1, $1
divu $1, $1
sra $3, $1, 11
sll $0, $0, 0
TAG619:
lui $4, 9
mfhi $2
mtlo $2
bgtz $4, TAG620
TAG620:
lh $1, 0($2)
bltz $2, TAG621
multu $1, $2
sh $2, 0($2)
TAG621:
bgtz $1, TAG622
srav $1, $1, $1
mtlo $1
sh $1, 0($1)
TAG622:
beq $1, $1, TAG623
mult $1, $1
mflo $4
sub $3, $1, $4
TAG623:
blez $3, TAG624
div $3, $3
bgez $3, TAG624
lb $1, -448($3)
TAG624:
xori $3, $1, 15
mtlo $1
lui $3, 15
beq $3, $3, TAG625
TAG625:
sll $0, $0, 0
lui $1, 12
sll $0, $0, 0
divu $3, $1
TAG626:
add $4, $2, $2
bltz $2, TAG627
lhu $2, 0($4)
beq $4, $2, TAG627
TAG627:
mthi $2
mflo $4
multu $4, $2
addi $1, $2, 9
TAG628:
sb $1, 0($1)
divu $1, $1
mfhi $3
mthi $3
TAG629:
bgtz $3, TAG630
xori $1, $3, 8
mflo $2
lh $1, 0($3)
TAG630:
mtlo $1
bltz $1, TAG631
mthi $1
sw $1, 0($1)
TAG631:
mult $1, $1
andi $1, $1, 3
sw $1, 0($1)
mthi $1
TAG632:
addi $3, $1, 3
mtlo $3
ori $2, $3, 3
lb $4, 0($2)
TAG633:
beq $4, $4, TAG634
addiu $1, $4, 11
addi $4, $1, 5
beq $4, $1, TAG634
TAG634:
mthi $4
sw $4, 0($4)
bgez $4, TAG635
nor $3, $4, $4
TAG635:
sra $4, $3, 15
bgez $4, TAG636
lui $2, 4
ori $1, $3, 8
TAG636:
beq $1, $1, TAG637
mflo $1
bltz $1, TAG637
divu $1, $1
TAG637:
ori $3, $1, 2
beq $3, $3, TAG638
srlv $1, $3, $3
bltz $3, TAG638
TAG638:
srav $2, $1, $1
lui $4, 9
mfhi $3
srav $3, $4, $2
TAG639:
addu $4, $3, $3
slti $2, $3, 4
sll $0, $0, 0
sll $0, $0, 0
TAG640:
mflo $2
bne $2, $2, TAG641
mflo $4
lb $1, 0($4)
TAG641:
bgez $1, TAG642
multu $1, $1
lui $3, 6
mthi $3
TAG642:
andi $1, $3, 8
bgez $1, TAG643
mult $1, $1
or $2, $1, $3
TAG643:
addiu $4, $2, 10
lui $1, 3
lui $1, 4
sb $1, 0($2)
TAG644:
slti $2, $1, 7
mult $2, $1
bltz $2, TAG645
mtlo $2
TAG645:
blez $2, TAG646
mthi $2
beq $2, $2, TAG646
mtlo $2
TAG646:
lw $1, 0($2)
blez $2, TAG647
lw $2, 0($1)
lw $2, 0($1)
TAG647:
sll $2, $2, 3
bltz $2, TAG648
lui $3, 1
bgez $2, TAG648
TAG648:
mfhi $2
ori $1, $2, 1
sll $0, $0, 0
lui $3, 2
TAG649:
sltiu $4, $3, 2
lui $4, 10
ori $3, $3, 1
mflo $2
TAG650:
beq $2, $2, TAG651
lui $3, 10
mult $3, $2
mtlo $3
TAG651:
sllv $2, $3, $3
bgez $3, TAG652
sll $0, $0, 0
divu $2, $3
TAG652:
lui $3, 5
bne $3, $3, TAG653
mthi $3
bltz $3, TAG653
TAG653:
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG654
sll $0, $0, 0
TAG654:
sll $0, $0, 0
bne $2, $2, TAG655
sll $0, $0, 0
mfhi $3
TAG655:
mthi $3
lui $3, 2
sll $0, $0, 0
lui $1, 14
TAG656:
ori $3, $1, 1
srl $1, $3, 12
sll $0, $0, 0
lui $4, 2
TAG657:
mthi $4
beq $4, $4, TAG658
mflo $2
blez $4, TAG658
TAG658:
srl $1, $2, 6
lbu $4, 0($2)
lh $4, 0($1)
mfhi $4
TAG659:
mtlo $4
ori $2, $4, 11
bne $2, $4, TAG660
mflo $1
TAG660:
divu $1, $1
bgtz $1, TAG661
lui $2, 13
mult $2, $2
TAG661:
sll $0, $0, 0
addu $4, $2, $2
sll $0, $0, 0
bgez $4, TAG662
TAG662:
mfhi $2
lui $1, 14
sll $0, $0, 0
multu $1, $2
TAG663:
srav $3, $2, $2
bgtz $2, TAG664
sw $2, 0($2)
sra $2, $2, 6
TAG664:
bne $2, $2, TAG665
lb $2, 0($2)
bltz $2, TAG665
sw $2, 0($2)
TAG665:
mflo $2
bltz $2, TAG666
sll $2, $2, 2
mfhi $4
TAG666:
mtlo $4
sw $4, 0($4)
lui $3, 1
mflo $1
TAG667:
lw $4, 0($1)
blez $4, TAG668
lui $4, 9
bgtz $1, TAG668
TAG668:
sllv $4, $4, $4
mthi $4
addiu $3, $4, 1
beq $4, $4, TAG669
TAG669:
lui $2, 10
sll $0, $0, 0
ori $4, $3, 11
beq $3, $4, TAG670
TAG670:
mflo $4
mflo $2
mfhi $3
mtlo $2
TAG671:
lui $1, 5
addiu $3, $1, 1
div $1, $1
sll $0, $0, 0
TAG672:
mflo $3
nor $4, $3, $4
nor $1, $4, $4
mflo $3
TAG673:
multu $3, $3
bgtz $3, TAG674
ori $3, $3, 3
lui $2, 3
TAG674:
sltiu $2, $2, 1
bne $2, $2, TAG675
slti $4, $2, 13
sb $2, 0($2)
TAG675:
bne $4, $4, TAG676
lui $3, 7
mult $3, $4
mtlo $4
TAG676:
sll $0, $0, 0
lui $3, 2
bgez $3, TAG677
mflo $4
TAG677:
mfhi $4
mtlo $4
bne $4, $4, TAG678
sw $4, 0($4)
TAG678:
lb $2, 0($4)
lh $4, 0($4)
mflo $3
mflo $2
TAG679:
lb $3, 0($2)
mtlo $3
bgez $3, TAG680
mtlo $2
TAG680:
beq $3, $3, TAG681
sb $3, 0($3)
mfhi $3
multu $3, $3
TAG681:
bltz $3, TAG682
add $4, $3, $3
ori $4, $4, 15
sb $4, 0($4)
TAG682:
multu $4, $4
lb $3, 0($4)
sb $3, 0($4)
and $2, $4, $3
TAG683:
lb $1, 0($2)
mthi $1
mult $1, $1
lbu $1, 0($1)
TAG684:
div $1, $1
sltiu $2, $1, 2
lui $4, 15
xor $3, $1, $4
TAG685:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
TAG686:
xori $4, $3, 1
and $3, $4, $3
lui $1, 14
sw $1, 0($3)
TAG687:
mflo $2
lui $1, 10
lui $1, 7
lui $3, 2
TAG688:
addiu $4, $3, 3
mtlo $4
mtlo $3
srlv $2, $3, $3
TAG689:
andi $2, $2, 9
xori $4, $2, 6
multu $2, $2
sh $2, 0($4)
TAG690:
sh $4, 0($4)
mflo $1
srl $4, $1, 15
sw $4, 0($1)
TAG691:
lui $4, 2
srav $1, $4, $4
beq $1, $1, TAG692
srlv $3, $4, $4
TAG692:
nor $3, $3, $3
bne $3, $3, TAG693
sll $0, $0, 0
lui $2, 0
TAG693:
addiu $2, $2, 1
mfhi $2
multu $2, $2
srl $1, $2, 7
TAG694:
mthi $1
multu $1, $1
slti $2, $1, 14
bgtz $2, TAG695
TAG695:
lb $3, 0($2)
blez $2, TAG696
lui $1, 3
multu $1, $1
TAG696:
mtlo $1
sll $0, $0, 0
bne $1, $1, TAG697
mfhi $1
TAG697:
mthi $1
mthi $1
bltz $1, TAG698
mthi $1
TAG698:
lui $2, 7
mtlo $1
mflo $4
mult $1, $2
TAG699:
multu $4, $4
lbu $2, 0($4)
multu $4, $2
blez $4, TAG700
TAG700:
sltiu $2, $2, 2
lhu $3, 0($2)
sh $3, 0($3)
sub $4, $2, $3
TAG701:
addiu $4, $4, 14
andi $3, $4, 7
lui $3, 13
bne $4, $4, TAG702
TAG702:
andi $1, $3, 12
lui $3, 0
lbu $2, 0($3)
mthi $1
TAG703:
mthi $2
bgtz $2, TAG704
sb $2, 0($2)
lui $3, 12
TAG704:
sll $0, $0, 0
mthi $3
mult $3, $1
lui $4, 7
TAG705:
div $4, $4
lui $3, 14
mfhi $1
lui $3, 12
TAG706:
sllv $3, $3, $3
mthi $3
addu $2, $3, $3
mtlo $3
TAG707:
mfhi $2
beq $2, $2, TAG708
lui $4, 7
blez $2, TAG708
TAG708:
sll $0, $0, 0
lui $1, 5
blez $4, TAG709
sll $0, $0, 0
TAG709:
mtlo $1
sllv $3, $1, $1
or $4, $1, $3
mult $1, $4
TAG710:
lui $4, 4
bne $4, $4, TAG711
mfhi $1
lui $2, 1
TAG711:
mflo $2
add $2, $2, $2
bne $2, $2, TAG712
addiu $4, $2, 15
TAG712:
lui $4, 10
srlv $1, $4, $4
beq $4, $1, TAG713
mthi $4
TAG713:
xor $1, $1, $1
mult $1, $1
multu $1, $1
mult $1, $1
TAG714:
mult $1, $1
multu $1, $1
srl $4, $1, 2
mfhi $1
TAG715:
lb $1, 0($1)
mfhi $4
ori $3, $1, 13
mfhi $4
TAG716:
bne $4, $4, TAG717
mult $4, $4
lh $1, 0($4)
slti $2, $1, 9
TAG717:
lbu $4, 0($2)
srlv $1, $2, $2
mtlo $1
mflo $4
TAG718:
ori $2, $4, 3
lui $2, 1
mtlo $2
lui $1, 13
TAG719:
srl $2, $1, 1
mfhi $3
lui $3, 15
sll $0, $0, 0
TAG720:
beq $3, $3, TAG721
sll $0, $0, 0
sh $3, 0($3)
srlv $3, $3, $3
TAG721:
sll $0, $0, 0
sra $3, $3, 9
and $3, $3, $3
sra $3, $3, 2
TAG722:
sll $1, $3, 10
lui $3, 4
mtlo $3
sltiu $1, $1, 3
TAG723:
add $2, $1, $1
lui $2, 3
bgez $2, TAG724
xori $4, $1, 1
TAG724:
mflo $4
mfhi $3
bgtz $3, TAG725
sllv $4, $3, $4
TAG725:
bne $4, $4, TAG726
mtlo $4
lbu $2, 0($4)
blez $2, TAG726
TAG726:
add $4, $2, $2
lbu $4, 0($2)
bne $2, $4, TAG727
mtlo $4
TAG727:
beq $4, $4, TAG728
mtlo $4
lui $1, 1
blez $1, TAG728
TAG728:
sw $1, 0($1)
mult $1, $1
lhu $1, 0($1)
mflo $1
TAG729:
sltiu $3, $1, 14
and $1, $3, $3
sb $3, 0($3)
slti $3, $1, 11
TAG730:
lui $3, 13
or $2, $3, $3
bltz $3, TAG731
mfhi $1
TAG731:
beq $1, $1, TAG732
srav $2, $1, $1
mtlo $2
mult $1, $2
TAG732:
bgez $2, TAG733
and $4, $2, $2
bgtz $4, TAG733
lui $4, 4
TAG733:
mthi $4
beq $4, $4, TAG734
addi $2, $4, 11
mtlo $4
TAG734:
mthi $2
lui $2, 6
mfhi $4
blez $4, TAG735
TAG735:
mfhi $3
bne $4, $4, TAG736
div $4, $3
bne $3, $4, TAG736
TAG736:
srl $2, $3, 8
lui $2, 10
mflo $2
slt $2, $2, $2
TAG737:
lui $2, 3
mflo $4
mflo $2
addu $2, $2, $4
TAG738:
mfhi $1
divu $2, $2
beq $2, $2, TAG739
mult $2, $1
TAG739:
lui $1, 12
sll $0, $0, 0
bne $1, $1, TAG740
sll $0, $0, 0
TAG740:
mtlo $1
mthi $1
bne $1, $1, TAG741
sll $0, $0, 0
TAG741:
sb $2, 0($2)
div $2, $2
lb $1, 0($2)
beq $2, $1, TAG742
TAG742:
lhu $2, 0($1)
beq $2, $1, TAG743
mfhi $3
lui $3, 6
TAG743:
mthi $3
mfhi $4
lui $1, 7
mult $1, $3
TAG744:
srav $3, $1, $1
mfhi $1
slt $2, $3, $3
lbu $3, 0($1)
TAG745:
lb $2, 0($3)
mtlo $3
bltz $3, TAG746
mtlo $3
TAG746:
blez $2, TAG747
mflo $4
xori $1, $2, 9
bgez $4, TAG747
TAG747:
mtlo $1
sh $1, 0($1)
lb $3, 0($1)
mfhi $4
TAG748:
bltz $4, TAG749
mthi $4
andi $1, $4, 14
mult $4, $1
TAG749:
multu $1, $1
sltiu $3, $1, 12
beq $3, $3, TAG750
sll $3, $1, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop