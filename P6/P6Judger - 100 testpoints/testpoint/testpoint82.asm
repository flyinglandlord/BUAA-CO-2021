ori $1, $0, 13
ori $2, $0, 5
ori $3, $0, 3
ori $4, $0, 3
sw $4, 0($0)
sw $1, 4($0)
sw $2, 8($0)
sw $1, 12($0)
sw $3, 16($0)
sw $4, 20($0)
sw $4, 24($0)
sw $2, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $1, 40($0)
sw $1, 44($0)
sw $4, 48($0)
sw $2, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $1, 64($0)
sw $1, 68($0)
sw $2, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $2, 96($0)
sw $4, 100($0)
sw $1, 104($0)
sw $1, 108($0)
sw $1, 112($0)
sw $4, 116($0)
sw $1, 120($0)
sw $3, 124($0)
bne $2, $2, TAG1
lui $3, 12
xori $4, $3, 0
sll $0, $0, 0
TAG1:
bgez $4, TAG2
sll $0, $0, 0
bne $4, $4, TAG2
xor $2, $4, $4
TAG2:
lui $3, 9
divu $2, $2
srl $4, $2, 7
mthi $4
TAG3:
mfhi $2
srlv $2, $4, $2
mthi $4
lh $2, 0($2)
TAG4:
sb $2, 0($2)
mfhi $3
or $4, $2, $2
sra $1, $4, 11
TAG5:
sh $1, 0($1)
addi $3, $1, 12
sw $1, 0($3)
sb $1, 0($1)
TAG6:
subu $4, $3, $3
sra $3, $4, 8
lb $2, 0($3)
lui $4, 0
TAG7:
blez $4, TAG8
slt $3, $4, $4
blez $3, TAG8
div $4, $4
TAG8:
lui $3, 8
mthi $3
beq $3, $3, TAG9
divu $3, $3
TAG9:
sll $0, $0, 0
sll $3, $1, 7
slt $4, $3, $1
multu $1, $3
TAG10:
add $1, $4, $4
beq $4, $1, TAG11
sb $1, 0($4)
and $4, $1, $1
TAG11:
lw $1, 0($4)
bne $1, $1, TAG12
mtlo $1
lhu $3, 0($4)
TAG12:
sw $3, 0($3)
mtlo $3
lui $3, 5
blez $3, TAG13
TAG13:
lui $4, 6
sll $0, $0, 0
mfhi $3
bne $4, $3, TAG14
TAG14:
mthi $3
mfhi $3
andi $3, $3, 0
lw $3, 0($3)
TAG15:
nor $4, $3, $3
multu $3, $4
beq $4, $4, TAG16
srl $4, $3, 11
TAG16:
mflo $3
add $2, $4, $3
sltiu $3, $4, 12
srl $1, $4, 4
TAG17:
nor $2, $1, $1
blez $1, TAG18
mfhi $1
div $1, $1
TAG18:
mfhi $1
sllv $3, $1, $1
slt $3, $1, $3
lui $3, 7
TAG19:
multu $3, $3
sll $0, $0, 0
bgtz $4, TAG20
andi $2, $4, 7
TAG20:
andi $2, $2, 2
sb $2, 0($2)
lw $1, 0($2)
beq $1, $2, TAG21
TAG21:
mthi $1
mthi $1
mult $1, $1
mult $1, $1
TAG22:
sll $4, $1, 12
bltz $1, TAG23
sltu $2, $4, $4
mflo $3
TAG23:
multu $3, $3
nor $1, $3, $3
sra $2, $1, 12
lw $4, 0($3)
TAG24:
lui $3, 9
mult $4, $4
sll $0, $0, 0
beq $3, $3, TAG25
TAG25:
sll $0, $0, 0
sll $0, $0, 0
slt $1, $4, $4
beq $1, $3, TAG26
TAG26:
lhu $3, 0($1)
mfhi $2
lhu $4, 0($3)
addu $3, $2, $3
TAG27:
mult $3, $3
mult $3, $3
srlv $2, $3, $3
sltiu $3, $3, 11
TAG28:
sb $3, 0($3)
bgez $3, TAG29
lbu $2, 0($3)
lui $2, 4
TAG29:
sb $2, 0($2)
beq $2, $2, TAG30
divu $2, $2
mflo $4
TAG30:
sw $4, 0($4)
bltz $4, TAG31
sb $4, 0($4)
mthi $4
TAG31:
multu $4, $4
beq $4, $4, TAG32
sb $4, 0($4)
mflo $4
TAG32:
lui $3, 14
beq $3, $3, TAG33
lui $2, 6
mtlo $4
TAG33:
sll $0, $0, 0
sb $2, 0($4)
multu $2, $2
sll $0, $0, 0
TAG34:
sb $4, 0($4)
mult $4, $4
lw $3, 0($4)
sb $3, 0($4)
TAG35:
blez $3, TAG36
multu $3, $3
lb $3, 0($3)
bgtz $3, TAG36
TAG36:
multu $3, $3
mult $3, $3
mflo $4
sh $3, 0($3)
TAG37:
multu $4, $4
mflo $2
sh $4, 0($4)
beq $4, $4, TAG38
TAG38:
lui $2, 13
sltu $4, $2, $2
multu $2, $2
addu $4, $2, $4
TAG39:
divu $4, $4
sll $0, $0, 0
addu $1, $4, $4
div $4, $4
TAG40:
lui $1, 3
sll $0, $0, 0
mtlo $1
divu $1, $1
TAG41:
sll $0, $0, 0
sll $0, $0, 0
bgez $4, TAG42
mflo $4
TAG42:
addiu $2, $4, 7
lbu $1, 0($2)
slti $2, $2, 13
lui $4, 13
TAG43:
ori $1, $4, 6
mult $1, $1
sll $0, $0, 0
xori $4, $4, 7
TAG44:
beq $4, $4, TAG45
mthi $4
bne $4, $4, TAG45
sw $4, 0($4)
TAG45:
addiu $4, $4, 5
mfhi $3
sll $0, $0, 0
bltz $4, TAG46
TAG46:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 6
mflo $3
TAG47:
bne $3, $3, TAG48
mfhi $2
sll $0, $0, 0
mthi $2
TAG48:
blez $2, TAG49
lui $2, 9
bltz $2, TAG49
divu $2, $2
TAG49:
blez $2, TAG50
srl $3, $2, 0
multu $3, $2
mfhi $1
TAG50:
bne $1, $1, TAG51
multu $1, $1
addiu $4, $1, 7
xori $4, $1, 7
TAG51:
or $2, $4, $4
sh $2, 0($4)
bne $4, $4, TAG52
mthi $2
TAG52:
bne $2, $2, TAG53
div $2, $2
bne $2, $2, TAG53
lhu $4, 0($2)
TAG53:
sh $4, 0($4)
bne $4, $4, TAG54
divu $4, $4
mflo $4
TAG54:
lb $2, 0($4)
or $2, $4, $2
mtlo $4
sb $4, 0($2)
TAG55:
mfhi $4
lb $2, 0($2)
mult $2, $2
mfhi $1
TAG56:
sh $1, 0($1)
lbu $4, 0($1)
mult $1, $4
and $1, $4, $1
TAG57:
lbu $3, 0($1)
lw $3, 0($1)
addiu $1, $1, 13
mfhi $1
TAG58:
lhu $4, 0($1)
sltiu $4, $1, 2
mult $1, $4
lbu $3, 0($4)
TAG59:
mfhi $4
beq $3, $4, TAG60
sltu $2, $3, $4
bltz $2, TAG60
TAG60:
multu $2, $2
sub $1, $2, $2
sb $1, 0($1)
sub $3, $1, $1
TAG61:
bne $3, $3, TAG62
xor $3, $3, $3
mthi $3
sb $3, 0($3)
TAG62:
beq $3, $3, TAG63
multu $3, $3
sll $4, $3, 3
mfhi $1
TAG63:
lui $3, 10
beq $3, $3, TAG64
slt $3, $1, $3
lhu $2, 0($3)
TAG64:
sllv $3, $2, $2
lh $2, 0($2)
sb $2, 0($2)
bne $2, $2, TAG65
TAG65:
lui $2, 10
mfhi $4
mtlo $2
sll $0, $0, 0
TAG66:
sub $3, $1, $1
sh $1, 0($1)
lui $1, 13
multu $1, $1
TAG67:
lui $3, 5
beq $1, $1, TAG68
sll $0, $0, 0
lui $4, 4
TAG68:
lui $4, 9
bgez $4, TAG69
multu $4, $4
mthi $4
TAG69:
srav $3, $4, $4
srlv $1, $3, $3
srlv $2, $1, $1
mflo $4
TAG70:
lui $3, 5
mthi $3
lui $3, 4
multu $4, $4
TAG71:
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
nor $2, $4, $4
TAG72:
div $2, $2
lhu $2, 1($2)
mflo $1
mult $1, $2
TAG73:
mthi $1
subu $3, $1, $1
or $2, $1, $3
bltz $3, TAG74
TAG74:
lbu $4, 0($2)
bltz $2, TAG75
lui $1, 8
sll $0, $0, 0
TAG75:
lui $2, 15
mtlo $2
mflo $1
sll $0, $0, 0
TAG76:
srav $3, $4, $4
sw $4, 0($3)
mflo $1
multu $3, $3
TAG77:
addu $1, $1, $1
sll $0, $0, 0
bgez $1, TAG78
mthi $1
TAG78:
mult $1, $1
mthi $1
mthi $1
mfhi $1
TAG79:
mfhi $1
multu $1, $1
mflo $1
lui $3, 1
TAG80:
lui $3, 13
beq $3, $3, TAG81
lui $4, 4
sltiu $2, $4, 3
TAG81:
sllv $4, $2, $2
xori $4, $4, 7
sll $2, $4, 0
sltiu $2, $2, 14
TAG82:
lw $3, 0($2)
beq $3, $2, TAG83
sw $2, 0($2)
sltiu $4, $3, 15
TAG83:
lui $4, 1
mtlo $4
mthi $4
addiu $3, $4, 15
TAG84:
sllv $4, $3, $3
mtlo $4
slti $1, $3, 7
ori $1, $4, 3
TAG85:
sll $0, $0, 0
sll $0, $0, 0
divu $4, $4
lui $4, 9
TAG86:
sltiu $4, $4, 3
lw $3, 0($4)
mult $4, $3
andi $2, $3, 6
TAG87:
or $4, $2, $2
bgez $2, TAG88
sh $4, 0($4)
lbu $4, 0($2)
TAG88:
mthi $4
beq $4, $4, TAG89
lhu $4, 0($4)
lb $4, 0($4)
TAG89:
bne $4, $4, TAG90
lb $2, 0($4)
mult $4, $4
sw $4, 0($4)
TAG90:
addu $1, $2, $2
lui $2, 10
srav $1, $1, $2
mthi $1
TAG91:
lui $2, 2
lhu $2, 0($1)
andi $3, $1, 2
bgez $3, TAG92
TAG92:
lhu $3, 0($3)
bltz $3, TAG93
sra $3, $3, 8
sll $1, $3, 11
TAG93:
lw $4, 0($1)
blez $4, TAG94
mult $1, $4
bgez $4, TAG94
TAG94:
mult $4, $4
bne $4, $4, TAG95
and $1, $4, $4
mult $1, $1
TAG95:
slt $1, $1, $1
lbu $4, 0($1)
lhu $2, 0($4)
sll $2, $1, 9
TAG96:
xori $3, $2, 7
multu $3, $2
sllv $4, $2, $3
sra $1, $4, 7
TAG97:
lw $3, 0($1)
mult $1, $1
sw $1, 0($1)
srl $1, $1, 15
TAG98:
sltiu $1, $1, 0
mult $1, $1
lh $4, 0($1)
mthi $4
TAG99:
bgtz $4, TAG100
mthi $4
bne $4, $4, TAG100
addu $1, $4, $4
TAG100:
mult $1, $1
multu $1, $1
lui $4, 5
multu $4, $4
TAG101:
subu $4, $4, $4
blez $4, TAG102
mult $4, $4
multu $4, $4
TAG102:
bgez $4, TAG103
lb $2, 0($4)
mfhi $4
sub $2, $2, $4
TAG103:
mult $2, $2
beq $2, $2, TAG104
lui $3, 10
beq $3, $3, TAG104
TAG104:
lui $4, 14
lui $1, 4
bne $4, $4, TAG105
multu $3, $1
TAG105:
andi $3, $1, 7
bne $3, $3, TAG106
ori $4, $1, 10
mflo $4
TAG106:
bgtz $4, TAG107
lui $2, 4
mfhi $2
mthi $2
TAG107:
blez $2, TAG108
mflo $3
beq $2, $2, TAG108
mflo $4
TAG108:
bltz $4, TAG109
lhu $2, 0($4)
sh $2, 0($2)
mult $4, $2
TAG109:
bltz $2, TAG110
mflo $1
multu $1, $1
mfhi $4
TAG110:
lui $4, 8
lui $4, 7
beq $4, $4, TAG111
lui $1, 9
TAG111:
subu $1, $1, $1
mthi $1
lb $4, 0($1)
mult $4, $1
TAG112:
multu $4, $4
mthi $4
lui $4, 0
mthi $4
TAG113:
mthi $4
or $2, $4, $4
mult $4, $2
lui $2, 3
TAG114:
beq $2, $2, TAG115
sll $0, $0, 0
bne $2, $2, TAG115
mtlo $2
TAG115:
lui $1, 9
mfhi $1
mflo $2
sh $1, 0($1)
TAG116:
bne $2, $2, TAG117
sltiu $2, $2, 4
mfhi $1
multu $2, $1
TAG117:
mthi $1
bne $1, $1, TAG118
sw $1, 0($1)
mflo $4
TAG118:
sub $3, $4, $4
mtlo $4
beq $3, $3, TAG119
sll $4, $4, 5
TAG119:
multu $4, $4
lui $2, 7
mfhi $3
div $4, $2
TAG120:
slt $2, $3, $3
mtlo $2
sb $3, 0($2)
multu $3, $3
TAG121:
multu $2, $2
addu $1, $2, $2
sllv $1, $2, $1
mflo $1
TAG122:
lh $2, 0($1)
beq $2, $1, TAG123
lhu $4, 0($2)
mflo $2
TAG123:
lbu $1, 0($2)
or $3, $1, $2
lw $1, 0($1)
srlv $1, $2, $1
TAG124:
xor $4, $1, $1
mflo $1
mfhi $4
lui $2, 14
TAG125:
sll $0, $0, 0
bltz $2, TAG126
divu $2, $2
sll $0, $0, 0
TAG126:
bgtz $2, TAG127
addiu $4, $2, 8
beq $2, $2, TAG127
mtlo $2
TAG127:
mflo $1
sll $0, $0, 0
blez $4, TAG128
mult $4, $3
TAG128:
lui $1, 11
lui $4, 6
bltz $4, TAG129
ori $1, $3, 6
TAG129:
lui $3, 10
mfhi $1
lui $4, 5
mthi $1
TAG130:
bltz $4, TAG131
divu $4, $4
mthi $4
blez $4, TAG131
TAG131:
ori $1, $4, 5
addiu $3, $1, 12
lui $2, 13
sll $0, $0, 0
TAG132:
lui $1, 7
beq $2, $2, TAG133
sllv $3, $2, $1
lh $2, 0($2)
TAG133:
sll $0, $0, 0
beq $2, $2, TAG134
sll $0, $0, 0
sub $3, $2, $2
TAG134:
sll $0, $0, 0
mthi $2
mtlo $2
sll $0, $0, 0
TAG135:
beq $2, $2, TAG136
subu $4, $2, $2
sra $1, $4, 2
lui $2, 3
TAG136:
mfhi $2
sra $1, $2, 7
addu $1, $2, $1
or $1, $2, $2
TAG137:
mfhi $4
mfhi $1
mfhi $4
mtlo $4
TAG138:
mtlo $4
slti $1, $4, 0
bgez $1, TAG139
lb $1, 0($1)
TAG139:
srav $2, $1, $1
bltz $1, TAG140
srl $1, $1, 10
lui $3, 14
TAG140:
bltz $3, TAG141
mfhi $1
lui $3, 11
sll $0, $0, 0
TAG141:
mult $3, $3
bgtz $3, TAG142
sll $0, $0, 0
div $3, $3
TAG142:
div $3, $3
sll $0, $0, 0
blez $3, TAG143
lui $3, 6
TAG143:
sll $0, $0, 0
srlv $1, $4, $4
sll $0, $0, 0
bgez $4, TAG144
TAG144:
slti $3, $1, 9
subu $4, $3, $1
lbu $2, 0($3)
mflo $2
TAG145:
lbu $2, 0($2)
sh $2, 0($2)
lh $2, 0($2)
lb $4, 0($2)
TAG146:
mthi $4
lhu $1, 0($4)
lui $4, 13
addu $3, $4, $1
TAG147:
lui $1, 8
lui $2, 2
mthi $3
mthi $3
TAG148:
addiu $2, $2, 9
bltz $2, TAG149
mfhi $1
div $1, $2
TAG149:
slt $3, $1, $1
bltz $1, TAG150
mult $3, $1
div $3, $1
TAG150:
srl $2, $3, 6
srlv $4, $3, $3
bne $3, $3, TAG151
sltu $3, $3, $2
TAG151:
sll $3, $3, 8
mult $3, $3
lui $2, 9
sltu $3, $3, $3
TAG152:
srlv $4, $3, $3
lui $3, 9
divu $3, $3
beq $3, $4, TAG153
TAG153:
mflo $1
bne $3, $3, TAG154
mfhi $3
div $3, $1
TAG154:
beq $3, $3, TAG155
sllv $4, $3, $3
xor $3, $3, $4
beq $3, $3, TAG155
TAG155:
sw $3, 0($3)
mfhi $2
lui $3, 14
sub $1, $3, $2
TAG156:
mthi $1
mflo $1
multu $1, $1
lb $4, 0($1)
TAG157:
lui $4, 7
lui $4, 8
mthi $4
bgtz $4, TAG158
TAG158:
srlv $3, $4, $4
addu $4, $3, $4
lui $3, 1
sll $0, $0, 0
TAG159:
mtlo $3
bgtz $3, TAG160
sll $0, $0, 0
mthi $3
TAG160:
beq $3, $3, TAG161
mflo $3
xor $3, $3, $3
sll $2, $3, 1
TAG161:
nor $2, $2, $2
multu $2, $2
subu $3, $2, $2
lui $4, 13
TAG162:
lui $2, 13
mtlo $2
bne $2, $2, TAG163
divu $2, $4
TAG163:
lui $4, 12
bgez $4, TAG164
mflo $2
sra $4, $4, 13
TAG164:
sll $0, $0, 0
divu $4, $2
slti $4, $4, 12
bgtz $4, TAG165
TAG165:
mthi $4
lbu $2, 0($4)
mfhi $3
bne $3, $3, TAG166
TAG166:
mthi $3
bne $3, $3, TAG167
mflo $4
bne $3, $3, TAG167
TAG167:
slti $4, $4, 2
sltiu $3, $4, 5
sb $3, 0($4)
mtlo $4
TAG168:
sb $3, 0($3)
lui $4, 7
blez $3, TAG169
mtlo $4
TAG169:
lui $3, 0
lhu $3, 0($3)
blez $3, TAG170
sll $0, $0, 0
TAG170:
sll $0, $0, 0
bltz $4, TAG171
mtlo $4
sll $0, $0, 0
TAG171:
bne $4, $4, TAG172
addiu $2, $4, 14
bltz $4, TAG172
sll $0, $0, 0
TAG172:
multu $2, $2
beq $2, $2, TAG173
andi $1, $2, 5
bne $2, $2, TAG173
TAG173:
andi $1, $1, 4
nor $3, $1, $1
multu $3, $3
mtlo $1
TAG174:
addu $1, $3, $3
mult $1, $1
nor $3, $1, $3
mflo $1
TAG175:
lui $4, 9
divu $4, $4
sltu $2, $1, $1
sll $0, $0, 0
TAG176:
lui $4, 7
bne $2, $4, TAG177
lui $2, 14
sltiu $4, $4, 3
TAG177:
mult $4, $4
or $3, $4, $4
bltz $4, TAG178
lui $2, 13
TAG178:
or $2, $2, $2
lui $3, 1
bne $3, $3, TAG179
slt $2, $2, $2
TAG179:
slti $4, $2, 15
bne $4, $4, TAG180
lh $2, 0($2)
sb $4, -257($2)
TAG180:
sh $2, -257($2)
multu $2, $2
lui $4, 13
sh $4, -257($2)
TAG181:
slt $2, $4, $4
lb $2, 0($2)
mtlo $4
bltz $2, TAG182
TAG182:
lb $1, 0($2)
mult $1, $1
sw $1, 0($1)
lb $4, 0($1)
TAG183:
xori $3, $4, 11
lb $3, 0($3)
mthi $3
sh $3, 0($3)
TAG184:
beq $3, $3, TAG185
lb $1, 0($3)
lui $1, 8
mthi $3
TAG185:
lui $3, 14
sltiu $3, $1, 10
lui $2, 7
srl $1, $3, 15
TAG186:
lui $3, 1
blez $3, TAG187
mfhi $4
mthi $3
TAG187:
mult $4, $4
sltiu $4, $4, 7
slt $4, $4, $4
lui $3, 4
TAG188:
mult $3, $3
sll $0, $0, 0
div $3, $3
slti $4, $3, 3
TAG189:
mult $4, $4
bltz $4, TAG190
mthi $4
lhu $4, 0($4)
TAG190:
bltz $4, TAG191
sll $3, $4, 0
bne $3, $4, TAG191
or $4, $4, $4
TAG191:
sh $4, 0($4)
lui $1, 2
sll $0, $0, 0
mthi $4
TAG192:
mthi $1
srl $4, $1, 1
bltz $1, TAG193
lui $3, 10
TAG193:
sll $0, $0, 0
lui $3, 15
mfhi $4
bgtz $4, TAG194
TAG194:
divu $4, $4
mtlo $4
lui $2, 9
subu $2, $4, $4
TAG195:
multu $2, $2
multu $2, $2
multu $2, $2
lh $1, 0($2)
TAG196:
bgtz $1, TAG197
mfhi $1
sb $1, 0($1)
lui $4, 2
TAG197:
multu $4, $4
sll $0, $0, 0
sltiu $1, $2, 13
slti $2, $2, 14
TAG198:
mthi $2
mfhi $1
multu $1, $2
blez $1, TAG199
TAG199:
multu $1, $1
lui $2, 9
ori $3, $1, 13
lui $1, 7
TAG200:
lui $4, 3
multu $4, $4
sra $3, $1, 4
or $2, $3, $3
TAG201:
sra $2, $2, 1
mfhi $2
sb $2, 0($2)
beq $2, $2, TAG202
TAG202:
sb $2, 0($2)
mthi $2
multu $2, $2
mfhi $2
TAG203:
sb $2, 0($2)
add $1, $2, $2
multu $1, $1
andi $1, $1, 7
TAG204:
mthi $1
nor $3, $1, $1
lui $2, 12
bne $2, $1, TAG205
TAG205:
srl $3, $2, 9
sw $2, -1536($3)
sll $0, $0, 0
addiu $2, $2, 14
TAG206:
multu $2, $2
mflo $1
bne $2, $2, TAG207
mflo $2
TAG207:
sll $0, $0, 0
sll $0, $0, 0
bgez $2, TAG208
divu $4, $4
TAG208:
bltz $4, TAG209
xor $2, $4, $4
mfhi $3
mthi $2
TAG209:
mfhi $2
mult $3, $2
sll $2, $3, 7
lui $1, 12
TAG210:
bgez $1, TAG211
mthi $1
bne $1, $1, TAG211
mtlo $1
TAG211:
sll $0, $0, 0
mflo $4
xori $3, $2, 10
mthi $4
TAG212:
ori $3, $3, 5
mfhi $1
bgez $3, TAG213
lbu $1, 0($3)
TAG213:
sh $1, 0($1)
mtlo $1
slt $4, $1, $1
lw $3, 0($4)
TAG214:
bne $3, $3, TAG215
sll $0, $0, 0
mtlo $3
mult $4, $3
TAG215:
mult $4, $4
srl $1, $4, 7
beq $1, $1, TAG216
lb $4, 0($1)
TAG216:
mult $4, $4
mtlo $4
lui $4, 12
sll $0, $0, 0
TAG217:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
ori $1, $4, 9
TAG218:
bne $1, $1, TAG219
nor $3, $1, $1
mtlo $3
multu $1, $1
TAG219:
mtlo $3
ori $4, $3, 3
sll $0, $0, 0
xori $1, $4, 10
TAG220:
bne $1, $1, TAG221
sra $2, $1, 4
mtlo $2
lui $1, 6
TAG221:
sll $0, $0, 0
bne $2, $2, TAG222
mflo $3
sll $0, $0, 0
TAG222:
mflo $1
sll $0, $0, 0
beq $1, $1, TAG223
addiu $3, $1, 8
TAG223:
lui $2, 5
mflo $2
andi $1, $2, 3
addiu $3, $2, 9
TAG224:
mfhi $2
sll $3, $2, 7
bne $3, $3, TAG225
lbu $4, -144($2)
TAG225:
beq $4, $4, TAG226
sh $4, 0($4)
addiu $1, $4, 13
multu $1, $1
TAG226:
lb $2, 0($1)
bltz $2, TAG227
mflo $3
sll $0, $0, 0
TAG227:
mtlo $3
subu $3, $3, $3
bgtz $3, TAG228
sll $3, $3, 6
TAG228:
lhu $3, 0($3)
and $3, $3, $3
mflo $4
mthi $3
TAG229:
sll $0, $0, 0
sllv $3, $4, $1
subu $2, $1, $1
mthi $2
TAG230:
mthi $2
srav $3, $2, $2
mult $3, $2
lui $1, 7
TAG231:
bne $1, $1, TAG232
subu $4, $1, $1
mult $4, $4
blez $1, TAG232
TAG232:
sltiu $3, $4, 3
slti $2, $4, 3
subu $4, $2, $2
sub $3, $2, $4
TAG233:
lui $4, 10
sll $0, $0, 0
blez $4, TAG234
mtlo $3
TAG234:
sll $0, $0, 0
srav $1, $4, $4
bgez $1, TAG235
slti $4, $1, 0
TAG235:
sh $4, 0($4)
lui $1, 9
lw $3, 0($4)
mfhi $3
TAG236:
sh $3, 0($3)
multu $3, $3
bltz $3, TAG237
lhu $3, 0($3)
TAG237:
sb $3, 0($3)
lui $4, 9
sltiu $4, $4, 14
bne $4, $4, TAG238
TAG238:
mfhi $4
xori $2, $4, 15
mtlo $2
mflo $1
TAG239:
bltz $1, TAG240
mfhi $2
sw $1, 0($2)
bgtz $2, TAG240
TAG240:
lw $4, 0($2)
lui $3, 14
ori $2, $4, 4
mfhi $4
TAG241:
bne $4, $4, TAG242
lui $3, 8
lw $3, 0($4)
bgtz $4, TAG242
TAG242:
sltiu $2, $3, 6
lui $3, 13
lb $4, 0($2)
sb $3, 0($4)
TAG243:
mflo $1
mtlo $4
ori $3, $4, 8
mult $4, $3
TAG244:
lui $3, 5
bgez $3, TAG245
ori $4, $3, 7
lui $4, 15
TAG245:
mthi $4
mfhi $3
srav $3, $4, $4
lui $1, 6
TAG246:
lui $4, 14
lui $1, 14
mflo $1
srl $1, $1, 5
TAG247:
lbu $1, 0($1)
mthi $1
bne $1, $1, TAG248
mtlo $1
TAG248:
mtlo $1
lui $1, 7
sll $0, $0, 0
beq $1, $1, TAG249
TAG249:
mult $1, $1
divu $1, $1
bltz $1, TAG250
mfhi $1
TAG250:
andi $1, $1, 15
lui $3, 8
beq $1, $1, TAG251
lui $2, 10
TAG251:
lui $1, 1
mtlo $2
div $2, $1
bgtz $1, TAG252
TAG252:
lui $3, 14
sll $0, $0, 0
mult $1, $3
mfhi $1
TAG253:
beq $1, $1, TAG254
mfhi $3
blez $1, TAG254
mtlo $3
TAG254:
bgtz $3, TAG255
mfhi $2
sra $1, $3, 12
bgtz $3, TAG255
TAG255:
lh $1, 0($1)
mflo $2
mfhi $4
sh $1, 0($4)
TAG256:
divu $4, $4
divu $4, $4
lhu $2, 0($4)
beq $2, $2, TAG257
TAG257:
lhu $4, 0($2)
beq $2, $4, TAG258
xori $1, $2, 15
bne $2, $1, TAG258
TAG258:
lui $3, 10
subu $1, $3, $3
multu $3, $3
sll $3, $3, 13
TAG259:
sll $0, $0, 0
sra $2, $1, 9
sll $0, $0, 0
sltiu $3, $3, 4
TAG260:
sb $3, 0($3)
blez $3, TAG261
sw $3, 0($3)
mult $3, $3
TAG261:
sw $3, 0($3)
mult $3, $3
lui $1, 4
sll $0, $0, 0
TAG262:
div $1, $1
mult $1, $1
mfhi $2
lw $3, 0($2)
TAG263:
divu $3, $3
lb $2, 0($3)
mult $3, $3
bne $2, $3, TAG264
TAG264:
sra $3, $2, 5
bltz $3, TAG265
lb $4, 0($3)
sll $2, $3, 13
TAG265:
mflo $1
mfhi $2
lb $4, 0($1)
mthi $2
TAG266:
bgez $4, TAG267
nor $1, $4, $4
sh $4, 0($1)
lui $1, 11
TAG267:
blez $1, TAG268
lhu $4, 10($1)
addi $4, $1, 4
sh $4, 0($4)
TAG268:
sh $4, 0($4)
mtlo $4
lbu $3, 0($4)
addu $4, $4, $4
TAG269:
multu $4, $4
lui $3, 5
lh $3, 0($4)
add $3, $3, $3
TAG270:
mfhi $3
bltz $3, TAG271
mult $3, $3
lui $1, 13
TAG271:
sra $4, $1, 5
bgtz $4, TAG272
addiu $3, $1, 15
mfhi $4
TAG272:
bgez $4, TAG273
sw $4, -26624($4)
bltz $4, TAG273
lbu $3, 0($4)
TAG273:
mthi $3
sll $0, $0, 0
lui $4, 3
mtlo $4
TAG274:
addiu $4, $4, 0
sra $3, $4, 15
multu $3, $4
mfhi $4
TAG275:
lb $1, 0($4)
lui $4, 12
bgtz $4, TAG276
lbu $1, 0($1)
TAG276:
mult $1, $1
lui $3, 10
sw $1, 0($1)
bgez $3, TAG277
TAG277:
mfhi $4
and $1, $3, $4
bne $3, $4, TAG278
sltu $2, $4, $3
TAG278:
sb $2, 0($2)
divu $2, $2
andi $1, $2, 14
slti $1, $2, 14
TAG279:
addiu $4, $1, 14
sllv $1, $4, $4
bne $4, $1, TAG280
mtlo $4
TAG280:
sll $0, $0, 0
bltz $1, TAG281
sll $0, $0, 0
sll $0, $0, 0
TAG281:
lui $2, 1
addu $1, $1, $2
sll $0, $0, 0
mfhi $3
TAG282:
multu $3, $3
mult $3, $3
mult $3, $3
sb $3, 0($3)
TAG283:
lbu $4, 0($3)
multu $3, $3
blez $4, TAG284
lui $1, 1
TAG284:
nor $3, $1, $1
sra $1, $3, 0
or $4, $1, $3
bne $4, $1, TAG285
TAG285:
multu $4, $4
bltz $4, TAG286
sll $0, $0, 0
sub $3, $4, $1
TAG286:
srl $2, $3, 8
bne $2, $3, TAG287
sll $0, $0, 0
lui $4, 0
TAG287:
xor $2, $4, $4
mfhi $2
sll $0, $0, 0
lui $1, 13
TAG288:
mflo $4
sll $0, $0, 0
div $4, $1
mflo $1
TAG289:
srl $3, $1, 6
mtlo $1
mthi $1
bgez $3, TAG290
TAG290:
sw $3, 0($3)
bgez $3, TAG291
lui $4, 8
mthi $3
TAG291:
multu $4, $4
lui $4, 12
div $4, $4
slt $4, $4, $4
TAG292:
bltz $4, TAG293
sh $4, 0($4)
andi $4, $4, 6
bne $4, $4, TAG293
TAG293:
slt $4, $4, $4
beq $4, $4, TAG294
lui $2, 9
lb $1, 0($4)
TAG294:
sb $1, 0($1)
bltz $1, TAG295
mfhi $2
lb $3, 0($2)
TAG295:
sw $3, 0($3)
sb $3, 0($3)
sh $3, 0($3)
mtlo $3
TAG296:
bltz $3, TAG297
lui $4, 13
andi $4, $3, 14
mtlo $4
TAG297:
multu $4, $4
andi $4, $4, 12
mthi $4
xor $2, $4, $4
TAG298:
blez $2, TAG299
mflo $4
sllv $4, $4, $2
sb $2, 0($4)
TAG299:
sb $4, 0($4)
lui $2, 8
sh $4, 0($4)
mtlo $4
TAG300:
mtlo $2
bne $2, $2, TAG301
sll $0, $0, 0
xori $4, $2, 0
TAG301:
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
mfhi $4
TAG302:
lhu $2, 0($4)
lui $1, 9
sll $0, $0, 0
sb $2, 0($4)
TAG303:
srav $4, $4, $4
srav $4, $4, $4
mflo $3
divu $4, $3
TAG304:
mfhi $2
blez $3, TAG305
mtlo $3
mfhi $2
TAG305:
mthi $2
mult $2, $2
mtlo $2
lui $2, 11
TAG306:
beq $2, $2, TAG307
sll $0, $0, 0
sw $2, 0($2)
mthi $2
TAG307:
mflo $2
bne $2, $2, TAG308
sh $2, 0($2)
bgtz $2, TAG308
TAG308:
mfhi $2
lhu $3, 0($2)
bne $2, $3, TAG309
mthi $2
TAG309:
mfhi $1
bgtz $1, TAG310
sra $1, $1, 14
lh $4, 0($1)
TAG310:
lh $2, 0($4)
beq $4, $2, TAG311
add $3, $4, $2
lhu $2, 0($3)
TAG311:
mflo $2
mult $2, $2
multu $2, $2
bgez $2, TAG312
TAG312:
mflo $3
sh $3, 0($2)
slt $2, $3, $2
lui $4, 4
TAG313:
nor $3, $4, $4
lui $2, 9
slt $1, $2, $4
mfhi $4
TAG314:
addu $2, $4, $4
lui $1, 14
mult $4, $2
srlv $3, $1, $2
TAG315:
mthi $3
multu $3, $3
div $3, $3
andi $3, $3, 5
TAG316:
sltiu $3, $3, 2
mthi $3
mthi $3
sra $3, $3, 12
TAG317:
addi $4, $3, 1
mult $3, $4
subu $2, $3, $3
bltz $2, TAG318
TAG318:
mult $2, $2
lw $1, 0($2)
mult $1, $1
multu $2, $2
TAG319:
mflo $3
subu $1, $1, $3
lw $4, 0($3)
addiu $2, $3, 3
TAG320:
addu $2, $2, $2
lbu $2, 0($2)
mflo $3
mtlo $2
TAG321:
addi $3, $3, 8
addiu $4, $3, 14
sll $1, $4, 4
mtlo $3
TAG322:
lui $3, 6
bne $3, $3, TAG323
mthi $3
multu $1, $3
TAG323:
bne $3, $3, TAG324
and $4, $3, $3
sll $0, $0, 0
blez $4, TAG324
TAG324:
lui $1, 14
div $1, $4
mfhi $1
sll $0, $0, 0
TAG325:
bltz $1, TAG326
sll $0, $0, 0
mflo $2
sra $4, $1, 5
TAG326:
mthi $4
bgtz $4, TAG327
mfhi $4
lbu $3, 0($4)
TAG327:
srlv $1, $3, $3
sll $0, $0, 0
lbu $4, 0($2)
mult $2, $4
TAG328:
sub $2, $4, $4
addiu $3, $4, 7
sb $2, 0($3)
beq $3, $3, TAG329
TAG329:
xor $2, $3, $3
sb $3, 0($3)
nor $3, $3, $3
or $4, $3, $2
TAG330:
sll $0, $0, 0
bne $4, $4, TAG331
mtlo $4
sra $1, $4, 7
TAG331:
bltz $1, TAG332
mtlo $1
mfhi $3
lui $3, 4
TAG332:
mtlo $3
lui $4, 2
srlv $3, $3, $4
div $4, $3
TAG333:
mtlo $3
sra $1, $3, 9
bgtz $3, TAG334
lh $1, 8($3)
TAG334:
xor $1, $1, $1
bne $1, $1, TAG335
sll $3, $1, 1
lui $4, 4
TAG335:
beq $4, $4, TAG336
sll $0, $0, 0
srl $3, $2, 12
sw $3, 0($4)
TAG336:
multu $3, $3
srav $2, $3, $3
mfhi $1
sw $3, 0($2)
TAG337:
beq $1, $1, TAG338
and $4, $1, $1
lui $3, 13
sb $4, 0($3)
TAG338:
lw $2, 0($3)
bgtz $3, TAG339
nor $1, $2, $3
mfhi $3
TAG339:
mfhi $3
beq $3, $3, TAG340
nor $3, $3, $3
lb $4, 0($3)
TAG340:
lui $1, 3
multu $1, $4
bne $4, $1, TAG341
mfhi $1
TAG341:
and $2, $1, $1
mtlo $2
sltiu $3, $2, 6
beq $2, $2, TAG342
TAG342:
mult $3, $3
bgez $3, TAG343
lb $1, 0($3)
mtlo $3
TAG343:
lbu $2, 0($1)
lh $2, 0($2)
bne $2, $2, TAG344
mult $2, $2
TAG344:
mflo $1
mult $2, $2
lw $3, 0($2)
ori $4, $2, 7
TAG345:
lui $3, 8
bne $3, $4, TAG346
multu $3, $3
lw $1, 0($4)
TAG346:
addiu $4, $1, 5
bgez $1, TAG347
mtlo $4
mflo $3
TAG347:
sll $0, $0, 0
sllv $3, $2, $2
lui $2, 14
multu $3, $3
TAG348:
sll $0, $0, 0
sll $0, $0, 0
lhu $2, 0($3)
lbu $1, 0($3)
TAG349:
nor $1, $1, $1
mflo $2
srav $4, $2, $1
lb $1, 0($2)
TAG350:
bgez $1, TAG351
addu $3, $1, $1
sw $3, 0($1)
lui $3, 6
TAG351:
mthi $3
bltz $3, TAG352
mtlo $3
mult $3, $3
TAG352:
lh $4, 0($3)
slt $3, $3, $4
mfhi $4
ori $3, $4, 9
TAG353:
sltiu $4, $3, 0
mtlo $3
bgez $3, TAG354
multu $3, $4
TAG354:
blez $4, TAG355
lui $1, 13
divu $1, $1
slti $3, $1, 1
TAG355:
sb $3, 0($3)
mflo $1
lui $4, 7
sb $4, 0($3)
TAG356:
sll $0, $0, 0
mtlo $4
xori $2, $4, 6
sll $0, $0, 0
TAG357:
subu $4, $2, $2
sll $0, $0, 0
bgtz $4, TAG358
mthi $2
TAG358:
multu $4, $4
mfhi $2
bne $2, $2, TAG359
mtlo $2
TAG359:
lhu $1, 0($2)
sh $1, 0($2)
lui $4, 11
bgez $2, TAG360
TAG360:
mthi $4
sll $0, $0, 0
xor $3, $4, $4
sra $3, $4, 15
TAG361:
lbu $2, 0($3)
mult $3, $2
bgtz $3, TAG362
lh $1, 0($2)
TAG362:
beq $1, $1, TAG363
addu $2, $1, $1
sll $3, $1, 12
mtlo $3
TAG363:
lui $1, 15
beq $3, $3, TAG364
mflo $1
lui $3, 11
TAG364:
xori $3, $3, 0
mflo $3
multu $3, $3
mfhi $1
TAG365:
beq $1, $1, TAG366
lui $4, 1
divu $1, $1
sh $1, 0($4)
TAG366:
beq $4, $4, TAG367
sll $0, $0, 0
beq $4, $1, TAG367
lhu $2, 0($1)
TAG367:
beq $2, $2, TAG368
mflo $1
lui $2, 14
bgez $1, TAG368
TAG368:
lhu $3, 0($2)
lui $1, 8
mflo $3
bne $1, $1, TAG369
TAG369:
mult $3, $3
bltz $3, TAG370
mflo $3
beq $3, $3, TAG370
TAG370:
mthi $3
mflo $2
xor $1, $2, $3
slti $2, $1, 12
TAG371:
lui $1, 13
mthi $1
sll $0, $0, 0
lbu $1, 0($2)
TAG372:
mthi $1
sll $2, $1, 5
lbu $4, 0($1)
mtlo $1
TAG373:
multu $4, $4
lw $2, 0($4)
bne $4, $4, TAG374
mtlo $2
TAG374:
andi $3, $2, 2
bltz $3, TAG375
lh $3, 0($3)
mfhi $1
TAG375:
mflo $2
ori $3, $2, 5
lui $2, 12
sll $0, $0, 0
TAG376:
mfhi $3
slti $1, $2, 10
ori $4, $1, 13
bne $4, $4, TAG377
TAG377:
lbu $2, 0($4)
lbu $4, 0($4)
beq $4, $4, TAG378
mflo $1
TAG378:
mtlo $1
andi $2, $1, 5
mthi $2
bgez $2, TAG379
TAG379:
addu $1, $2, $2
blez $1, TAG380
sltiu $2, $1, 14
bltz $1, TAG380
TAG380:
sb $2, 0($2)
blez $2, TAG381
sltu $1, $2, $2
mthi $2
TAG381:
mflo $3
lui $1, 3
div $1, $1
subu $4, $1, $1
TAG382:
lw $2, 0($4)
mfhi $2
lh $1, 0($2)
mtlo $4
TAG383:
sb $1, -256($1)
bltz $1, TAG384
mfhi $1
mtlo $1
TAG384:
lbu $2, 0($1)
sb $2, 0($1)
lui $4, 4
lh $2, 0($1)
TAG385:
sw $2, -256($2)
addiu $4, $2, 13
mthi $4
lui $4, 0
TAG386:
mflo $4
bgtz $4, TAG387
mfhi $1
mthi $4
TAG387:
sllv $3, $1, $1
bne $3, $3, TAG388
mflo $3
andi $2, $3, 1
TAG388:
lui $1, 14
sra $2, $1, 7
bltz $2, TAG389
lw $1, -7168($2)
TAG389:
bne $1, $1, TAG390
subu $4, $1, $1
beq $4, $4, TAG390
div $1, $1
TAG390:
mult $4, $4
sltiu $2, $4, 0
multu $2, $2
mflo $2
TAG391:
lui $2, 2
addiu $3, $2, 7
lui $1, 10
bgtz $2, TAG392
TAG392:
mtlo $1
sll $0, $0, 0
sll $0, $0, 0
mflo $4
TAG393:
multu $4, $4
multu $4, $4
lui $2, 6
blez $4, TAG394
TAG394:
lui $2, 2
subu $2, $2, $2
bgez $2, TAG395
lh $4, 0($2)
TAG395:
bne $4, $4, TAG396
lui $2, 3
nor $1, $2, $4
sll $0, $0, 0
TAG396:
xor $1, $2, $2
mtlo $2
xori $3, $1, 14
lui $3, 7
TAG397:
sll $0, $0, 0
sll $0, $0, 0
lhu $3, 0($1)
lui $4, 0
TAG398:
lw $2, 0($4)
sll $1, $4, 12
sh $1, 0($4)
srav $3, $4, $1
TAG399:
bne $3, $3, TAG400
sh $3, 0($3)
lui $3, 0
mtlo $3
TAG400:
beq $3, $3, TAG401
mflo $4
lui $4, 2
srlv $3, $4, $4
TAG401:
lui $1, 2
bne $3, $3, TAG402
mthi $3
beq $3, $3, TAG402
TAG402:
sll $0, $0, 0
mtlo $1
mflo $1
lui $2, 4
TAG403:
divu $2, $2
sll $0, $0, 0
xori $4, $4, 3
sll $0, $0, 0
TAG404:
lbu $2, 0($4)
lb $2, 0($2)
sllv $3, $2, $2
lw $4, 0($2)
TAG405:
sh $4, 0($4)
sltu $4, $4, $4
multu $4, $4
lb $1, 0($4)
TAG406:
addu $4, $1, $1
sw $1, 0($4)
lbu $1, 0($4)
mult $1, $1
TAG407:
bgez $1, TAG408
addiu $3, $1, 6
lui $4, 2
mfhi $1
TAG408:
mthi $1
sw $1, 0($1)
bltz $1, TAG409
sh $1, 0($1)
TAG409:
multu $1, $1
sw $1, 0($1)
sub $3, $1, $1
bgez $3, TAG410
TAG410:
lhu $1, 0($3)
lui $3, 0
multu $3, $3
bne $3, $3, TAG411
TAG411:
slti $4, $3, 5
mthi $3
mult $3, $3
subu $3, $4, $4
TAG412:
beq $3, $3, TAG413
srav $4, $3, $3
mtlo $3
divu $3, $3
TAG413:
bgez $4, TAG414
mult $4, $4
mflo $3
mflo $2
TAG414:
addu $3, $2, $2
lui $2, 6
lbu $1, 0($3)
sll $0, $0, 0
TAG415:
lui $2, 1
bgtz $1, TAG416
sll $0, $0, 0
multu $1, $1
TAG416:
bltz $2, TAG417
mflo $1
beq $1, $2, TAG417
sll $3, $2, 7
TAG417:
multu $3, $3
addiu $4, $3, 10
sll $0, $0, 0
bgez $4, TAG418
TAG418:
mtlo $4
beq $4, $4, TAG419
mtlo $4
sw $4, 0($4)
TAG419:
sll $0, $0, 0
addiu $3, $4, 5
sll $0, $0, 0
xor $2, $3, $4
TAG420:
div $2, $2
mthi $2
srl $2, $2, 15
sh $2, 0($2)
TAG421:
mult $2, $2
blez $2, TAG422
lui $3, 3
lb $3, 0($3)
TAG422:
sll $0, $0, 0
addu $3, $3, $3
subu $3, $3, $3
lui $3, 5
TAG423:
subu $3, $3, $3
nor $3, $3, $3
bltz $3, TAG424
multu $3, $3
TAG424:
addu $4, $3, $3
mflo $1
beq $3, $3, TAG425
lh $3, 2($4)
TAG425:
mult $3, $3
beq $3, $3, TAG426
sltiu $4, $3, 0
sub $1, $3, $4
TAG426:
lui $2, 12
bltz $1, TAG427
mtlo $1
sll $0, $0, 0
TAG427:
lui $2, 12
srlv $1, $2, $2
srl $4, $2, 14
sll $0, $0, 0
TAG428:
mthi $3
blez $3, TAG429
mflo $1
addu $2, $3, $3
TAG429:
sll $0, $0, 0
mfhi $1
addu $1, $1, $4
lui $4, 6
TAG430:
sll $0, $0, 0
mtlo $4
xori $2, $4, 6
sll $0, $0, 0
TAG431:
bltz $2, TAG432
mthi $2
lui $3, 10
multu $2, $3
TAG432:
mflo $2
sll $0, $0, 0
div $4, $3
addiu $3, $3, 12
TAG433:
beq $3, $3, TAG434
nor $4, $3, $3
lhu $1, 0($4)
mfhi $4
TAG434:
sll $0, $0, 0
mtlo $4
bltz $2, TAG435
multu $4, $2
TAG435:
sll $0, $0, 0
multu $2, $2
bne $2, $2, TAG436
lui $3, 10
TAG436:
bne $3, $3, TAG437
div $3, $3
beq $3, $3, TAG437
div $3, $3
TAG437:
mflo $4
sll $0, $0, 0
sll $1, $4, 4
lbu $3, 0($4)
TAG438:
and $2, $3, $3
bgtz $2, TAG439
sltu $3, $3, $3
srlv $1, $3, $3
TAG439:
sra $1, $1, 4
blez $1, TAG440
lui $2, 13
mfhi $2
TAG440:
srav $4, $2, $2
lui $3, 13
sll $0, $0, 0
bne $2, $4, TAG441
TAG441:
lui $1, 14
mfhi $3
sll $0, $0, 0
sw $1, 0($3)
TAG442:
mult $3, $3
multu $3, $3
blez $3, TAG443
ori $1, $3, 6
TAG443:
addu $2, $1, $1
or $3, $1, $2
ori $3, $2, 0
lbu $4, 0($2)
TAG444:
sltiu $1, $4, 0
mult $1, $4
mthi $1
lui $1, 10
TAG445:
sll $0, $0, 0
lui $3, 4
bne $1, $1, TAG446
mfhi $1
TAG446:
bne $1, $1, TAG447
multu $1, $1
ori $2, $1, 0
sra $4, $2, 2
TAG447:
beq $4, $4, TAG448
ori $3, $4, 2
bltz $3, TAG448
div $4, $4
TAG448:
mult $3, $3
subu $3, $3, $3
beq $3, $3, TAG449
lh $3, 0($3)
TAG449:
sw $3, 0($3)
multu $3, $3
slti $1, $3, 13
lb $3, 0($1)
TAG450:
nor $4, $3, $3
mthi $4
mult $3, $3
srl $3, $3, 15
TAG451:
multu $3, $3
sh $3, 0($3)
multu $3, $3
mfhi $2
TAG452:
xori $3, $2, 3
ori $4, $2, 1
sh $3, 0($2)
lui $4, 10
TAG453:
mflo $2
bgez $4, TAG454
sll $0, $0, 0
mflo $1
TAG454:
mflo $2
sb $2, 0($1)
addu $4, $1, $1
mtlo $1
TAG455:
multu $4, $4
lui $3, 0
addiu $4, $3, 8
andi $1, $4, 9
TAG456:
mthi $1
mfhi $4
mthi $4
blez $4, TAG457
TAG457:
mtlo $4
bgez $4, TAG458
subu $3, $4, $4
andi $4, $4, 12
TAG458:
bgez $4, TAG459
div $4, $4
add $4, $4, $4
mthi $4
TAG459:
lhu $4, 0($4)
beq $4, $4, TAG460
lbu $4, 0($4)
srav $4, $4, $4
TAG460:
addu $4, $4, $4
sh $4, 0($4)
multu $4, $4
slti $4, $4, 9
TAG461:
bne $4, $4, TAG462
divu $4, $4
bltz $4, TAG462
sb $4, 0($4)
TAG462:
mult $4, $4
ori $1, $4, 3
lbu $1, 0($1)
and $1, $1, $1
TAG463:
sub $3, $1, $1
lui $2, 6
subu $3, $2, $3
lui $3, 2
TAG464:
sltu $3, $3, $3
lhu $2, 0($3)
beq $3, $2, TAG465
sllv $1, $2, $2
TAG465:
nor $1, $1, $1
sb $1, 257($1)
sb $1, 257($1)
mflo $2
TAG466:
multu $2, $2
mflo $2
lui $1, 10
bgez $2, TAG467
TAG467:
mtlo $1
sll $0, $0, 0
lb $4, 0($3)
sll $0, $0, 0
TAG468:
lb $4, 0($2)
lui $4, 9
bgez $4, TAG469
subu $1, $4, $2
TAG469:
divu $1, $1
bltz $1, TAG470
mthi $1
mflo $1
TAG470:
bgez $1, TAG471
divu $1, $1
lui $2, 4
beq $2, $1, TAG471
TAG471:
srl $2, $2, 2
lui $1, 15
divu $2, $1
sh $2, 0($2)
TAG472:
addiu $1, $1, 15
sll $0, $0, 0
lui $4, 1
mult $4, $1
TAG473:
mfhi $1
sll $0, $0, 0
bne $2, $1, TAG474
mflo $2
TAG474:
sll $0, $0, 0
bne $2, $2, TAG475
sra $2, $2, 14
blez $2, TAG475
TAG475:
slt $1, $2, $2
lhu $2, 0($2)
mthi $2
blez $1, TAG476
TAG476:
mtlo $2
div $2, $2
mthi $2
mflo $1
TAG477:
beq $1, $1, TAG478
mthi $1
lui $4, 8
bne $1, $4, TAG478
TAG478:
mflo $4
lui $4, 7
lui $2, 12
bltz $4, TAG479
TAG479:
mfhi $4
sb $4, 0($4)
addiu $4, $4, 0
beq $2, $4, TAG480
TAG480:
lui $3, 7
sll $2, $4, 5
lui $4, 10
lh $3, 0($2)
TAG481:
lui $1, 11
sb $1, 0($3)
bne $3, $3, TAG482
sll $0, $0, 0
TAG482:
lui $4, 8
or $1, $4, $4
mtlo $1
or $3, $1, $1
TAG483:
multu $3, $3
sll $0, $0, 0
div $3, $3
sll $0, $0, 0
TAG484:
bltz $3, TAG485
mtlo $3
bne $3, $3, TAG485
mfhi $2
TAG485:
mtlo $2
lui $2, 3
andi $2, $2, 15
mtlo $2
TAG486:
slti $1, $2, 12
beq $2, $2, TAG487
sb $2, 0($1)
sb $1, 0($1)
TAG487:
sb $1, 0($1)
bne $1, $1, TAG488
sb $1, 0($1)
lb $4, 0($1)
TAG488:
bgtz $4, TAG489
lbu $2, 0($4)
lbu $1, 0($2)
bne $4, $1, TAG489
TAG489:
sb $1, 0($1)
mtlo $1
multu $1, $1
andi $1, $1, 10
TAG490:
addi $4, $1, 6
lui $1, 6
beq $1, $1, TAG491
srl $1, $1, 1
TAG491:
mflo $2
lui $3, 8
beq $2, $2, TAG492
sll $0, $0, 0
TAG492:
mult $3, $3
sllv $2, $3, $3
sltiu $1, $2, 7
sltiu $2, $2, 10
TAG493:
mthi $2
slti $4, $2, 10
addi $3, $2, 6
lbu $1, 0($4)
TAG494:
sb $1, 0($1)
mtlo $1
bltz $1, TAG495
and $3, $1, $1
TAG495:
sb $3, 0($3)
lbu $2, 0($3)
mflo $2
andi $2, $2, 14
TAG496:
mtlo $2
mfhi $4
sw $4, 0($4)
sb $2, 0($4)
TAG497:
add $3, $4, $4
add $2, $3, $3
mtlo $2
mult $3, $3
TAG498:
bne $2, $2, TAG499
mthi $2
bgez $2, TAG499
mflo $3
TAG499:
lb $4, 0($3)
lui $1, 4
lbu $2, 0($3)
sw $3, 0($2)
TAG500:
multu $2, $2
lui $1, 8
bgtz $2, TAG501
lbu $3, 0($2)
TAG501:
xor $4, $3, $3
mthi $4
lui $1, 12
bne $4, $3, TAG502
TAG502:
mthi $1
mthi $1
andi $4, $1, 2
beq $4, $1, TAG503
TAG503:
sltu $2, $4, $4
mfhi $1
sb $2, 0($4)
sw $1, 0($2)
TAG504:
xori $2, $1, 5
lui $1, 3
bne $2, $2, TAG505
mtlo $1
TAG505:
mfhi $2
lui $2, 2
mflo $4
bne $1, $1, TAG506
TAG506:
slt $1, $4, $4
sll $0, $0, 0
mtlo $4
sll $0, $0, 0
TAG507:
lhu $1, 0($1)
sllv $4, $1, $1
mult $1, $4
mult $4, $1
TAG508:
beq $4, $4, TAG509
sltu $1, $4, $4
sll $3, $1, 7
bne $3, $4, TAG509
TAG509:
sw $3, 0($3)
mflo $4
lui $1, 2
sw $1, 0($3)
TAG510:
bltz $1, TAG511
mthi $1
srl $2, $1, 8
srl $3, $1, 0
TAG511:
div $3, $3
addu $1, $3, $3
bne $1, $3, TAG512
divu $1, $3
TAG512:
bne $1, $1, TAG513
lui $1, 11
srlv $1, $1, $1
xori $4, $1, 3
TAG513:
lui $4, 5
sll $0, $0, 0
bgtz $4, TAG514
sllv $1, $4, $2
TAG514:
sll $0, $0, 0
sra $3, $1, 7
nor $1, $1, $1
mflo $3
TAG515:
mthi $3
lui $3, 7
lui $2, 15
lui $3, 8
TAG516:
mtlo $3
bne $3, $3, TAG517
sltiu $4, $3, 15
mflo $2
TAG517:
bne $2, $2, TAG518
addiu $1, $2, 12
sll $0, $0, 0
and $1, $2, $2
TAG518:
multu $1, $1
mthi $1
sll $0, $0, 0
sll $0, $0, 0
TAG519:
sra $2, $1, 12
sh $2, 0($2)
srl $3, $1, 0
bgez $1, TAG520
TAG520:
slti $2, $3, 2
mfhi $1
slt $2, $1, $1
sltiu $3, $2, 14
TAG521:
blez $3, TAG522
or $4, $3, $3
div $4, $3
slti $4, $3, 15
TAG522:
lui $2, 3
addiu $4, $4, 10
sra $2, $4, 6
ori $2, $4, 4
TAG523:
mflo $1
bgtz $1, TAG524
mfhi $4
mflo $4
TAG524:
mfhi $2
xori $2, $4, 8
add $2, $4, $2
lui $1, 11
TAG525:
mfhi $2
sll $2, $2, 9
beq $2, $2, TAG526
mtlo $2
TAG526:
sra $2, $2, 7
lbu $1, 0($2)
multu $1, $1
addu $1, $1, $1
TAG527:
sb $1, 0($1)
bltz $1, TAG528
lbu $2, 0($1)
add $4, $1, $1
TAG528:
xori $2, $4, 14
mtlo $2
mflo $3
mtlo $3
TAG529:
divu $3, $3
sh $3, 0($3)
mflo $4
xori $1, $3, 11
TAG530:
subu $4, $1, $1
sh $4, 0($4)
sb $1, 0($1)
blez $4, TAG531
TAG531:
mult $4, $4
lui $4, 7
lui $2, 5
mthi $4
TAG532:
srav $1, $2, $2
bne $2, $1, TAG533
sll $0, $0, 0
sra $4, $1, 9
TAG533:
lui $2, 0
sh $4, 0($2)
sra $4, $2, 7
lui $1, 8
TAG534:
mtlo $1
mfhi $3
mthi $3
multu $1, $1
TAG535:
sll $0, $0, 0
blez $4, TAG536
mfhi $4
divu $4, $3
TAG536:
lhu $1, 0($4)
sb $4, 0($1)
div $4, $1
or $4, $1, $1
TAG537:
blez $4, TAG538
sb $4, 0($4)
lb $3, 0($4)
sb $4, 0($3)
TAG538:
mflo $3
mflo $4
sltiu $1, $3, 4
lui $3, 7
TAG539:
mtlo $3
sll $0, $0, 0
lui $1, 6
bgtz $3, TAG540
TAG540:
mthi $1
sltu $1, $1, $1
bgez $1, TAG541
multu $1, $1
TAG541:
mthi $1
mflo $2
mult $2, $1
lh $1, 0($2)
TAG542:
bgtz $1, TAG543
divu $1, $1
lbu $1, 0($1)
bgtz $1, TAG543
TAG543:
sh $1, -640($1)
sllv $3, $1, $1
lui $1, 6
divu $3, $3
TAG544:
bne $1, $1, TAG545
lui $2, 6
sll $0, $0, 0
mtlo $2
TAG545:
sltiu $3, $2, 9
beq $3, $2, TAG546
lb $4, 0($3)
subu $2, $3, $2
TAG546:
mtlo $2
sra $3, $2, 13
lw $2, 48($3)
slt $2, $2, $3
TAG547:
srlv $1, $2, $2
add $3, $1, $1
bgtz $1, TAG548
lhu $1, 0($1)
TAG548:
sll $0, $0, 0
sub $3, $1, $3
slti $4, $3, 10
addiu $1, $3, 12
TAG549:
or $4, $1, $1
mult $1, $1
or $3, $4, $1
mtlo $1
TAG550:
addiu $4, $3, 7
lh $1, -659($4)
mult $1, $1
beq $3, $1, TAG551
TAG551:
mthi $1
lw $4, -640($1)
bgtz $1, TAG552
mult $1, $4
TAG552:
lui $4, 1
lui $1, 14
xor $3, $4, $4
mult $4, $3
TAG553:
multu $3, $3
lui $2, 8
sll $3, $2, 14
sra $1, $3, 10
TAG554:
multu $1, $1
lui $1, 0
beq $1, $1, TAG555
lh $1, 0($1)
TAG555:
sll $0, $0, 0
lui $3, 6
mtlo $3
addiu $2, $3, 10
TAG556:
lui $2, 8
beq $2, $2, TAG557
mthi $2
sw $2, 0($2)
TAG557:
mfhi $1
mfhi $3
mtlo $2
nor $4, $3, $1
TAG558:
mthi $4
mthi $4
sltu $3, $4, $4
beq $4, $3, TAG559
TAG559:
lh $4, 0($3)
mtlo $4
nor $1, $4, $4
lw $1, -640($4)
TAG560:
bgtz $1, TAG561
mthi $1
mfhi $4
xor $4, $4, $4
TAG561:
slti $1, $4, 2
blez $1, TAG562
lw $2, -640($4)
divu $2, $1
TAG562:
div $2, $2
sll $0, $0, 0
beq $2, $2, TAG563
mtlo $2
TAG563:
mtlo $2
or $2, $2, $2
mflo $3
mfhi $4
TAG564:
sh $4, 0($4)
mult $4, $4
lhu $2, 0($4)
multu $2, $2
TAG565:
bltz $2, TAG566
lui $4, 1
lui $3, 4
bgez $4, TAG566
TAG566:
mfhi $4
lui $3, 4
mtlo $3
slt $2, $3, $3
TAG567:
lbu $1, 0($2)
sb $2, 0($2)
multu $2, $1
sll $2, $1, 10
TAG568:
mult $2, $2
multu $2, $2
mult $2, $2
multu $2, $2
TAG569:
lh $3, 0($2)
bltz $3, TAG570
mflo $1
mflo $3
TAG570:
addu $2, $3, $3
lb $4, 0($3)
lui $1, 9
xor $2, $2, $1
TAG571:
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
andi $1, $1, 10
TAG572:
sw $1, 0($1)
mfhi $2
mtlo $1
bne $1, $1, TAG573
TAG573:
sb $2, 0($2)
mthi $2
bne $2, $2, TAG574
lh $2, 0($2)
TAG574:
lui $4, 10
beq $4, $4, TAG575
mult $4, $2
lw $4, 0($2)
TAG575:
addu $2, $4, $4
sll $0, $0, 0
nor $3, $2, $2
mtlo $3
TAG576:
mult $3, $3
sll $0, $0, 0
beq $3, $4, TAG577
mfhi $1
TAG577:
divu $1, $1
sltiu $4, $1, 11
multu $4, $4
mflo $2
TAG578:
blez $2, TAG579
mthi $2
sh $2, 0($2)
beq $2, $2, TAG579
TAG579:
sw $2, 0($2)
lui $1, 7
mtlo $2
divu $2, $1
TAG580:
xor $4, $1, $1
sll $0, $0, 0
lb $1, 0($4)
nor $2, $1, $1
TAG581:
mfhi $1
sllv $3, $2, $1
lui $1, 8
ori $3, $1, 11
TAG582:
multu $3, $3
srl $2, $3, 3
lui $3, 0
lui $1, 13
TAG583:
lui $3, 11
mthi $3
sll $0, $0, 0
and $3, $1, $2
TAG584:
slti $3, $3, 6
mtlo $3
addiu $3, $3, 4
sw $3, 0($3)
TAG585:
divu $3, $3
bgtz $3, TAG586
mult $3, $3
blez $3, TAG586
TAG586:
sllv $4, $3, $3
mthi $4
sb $3, 0($3)
lui $2, 9
TAG587:
bne $2, $2, TAG588
srl $3, $2, 10
sh $2, -576($3)
srl $4, $2, 10
TAG588:
lui $3, 13
lw $4, -576($4)
mflo $1
lw $4, 0($1)
TAG589:
lui $2, 4
sll $0, $0, 0
beq $3, $3, TAG590
srav $1, $4, $4
TAG590:
multu $1, $1
sra $1, $1, 1
mult $1, $1
bgtz $1, TAG591
TAG591:
multu $1, $1
slti $3, $1, 9
mfhi $3
lb $4, 0($3)
TAG592:
blez $4, TAG593
mthi $4
mthi $4
sllv $4, $4, $4
TAG593:
lui $3, 4
mflo $2
lb $4, 0($2)
bgtz $4, TAG594
TAG594:
nor $4, $4, $4
multu $4, $4
sw $4, 1($4)
bgtz $4, TAG595
TAG595:
sll $0, $0, 0
srl $3, $3, 13
lb $3, 0($3)
addu $4, $4, $3
TAG596:
sh $4, 0($4)
mflo $4
lbu $4, 0($4)
sltiu $3, $4, 6
TAG597:
and $4, $3, $3
sb $3, 0($4)
mtlo $3
multu $4, $4
TAG598:
srlv $3, $4, $4
mult $4, $3
sllv $1, $4, $3
mflo $1
TAG599:
bgez $1, TAG600
multu $1, $1
mtlo $1
lui $1, 1
TAG600:
bgtz $1, TAG601
lhu $3, 0($1)
beq $3, $3, TAG601
sh $3, 0($1)
TAG601:
beq $3, $3, TAG602
mfhi $2
sh $3, 0($3)
mflo $3
TAG602:
sll $3, $3, 1
mflo $4
sll $0, $0, 0
sll $0, $0, 0
TAG603:
subu $2, $4, $4
bgez $2, TAG604
sb $2, 0($2)
sh $2, 0($4)
TAG604:
mult $2, $2
bne $2, $2, TAG605
lui $1, 4
bne $2, $2, TAG605
TAG605:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
srlv $3, $1, $1
TAG606:
mult $3, $3
beq $3, $3, TAG607
srlv $1, $3, $3
lui $2, 15
TAG607:
blez $2, TAG608
nor $4, $2, $2
lh $1, 0($4)
subu $2, $4, $1
TAG608:
srav $2, $2, $2
bne $2, $2, TAG609
lw $3, 0($2)
beq $2, $2, TAG609
TAG609:
sh $3, 256($3)
mflo $1
mtlo $1
lui $2, 2
TAG610:
or $2, $2, $2
and $1, $2, $2
sll $0, $0, 0
lui $3, 5
TAG611:
mflo $1
div $3, $3
mult $1, $3
sll $0, $0, 0
TAG612:
mflo $2
lui $1, 1
nor $1, $2, $1
sll $0, $0, 0
TAG613:
mthi $1
and $1, $1, $1
sll $0, $0, 0
sltiu $3, $1, 7
TAG614:
mthi $3
mult $3, $3
lb $3, 0($3)
sw $3, 0($3)
TAG615:
lui $2, 12
lui $3, 6
mflo $2
mflo $4
TAG616:
multu $4, $4
lui $2, 2
multu $2, $2
or $3, $2, $4
TAG617:
mfhi $4
mfhi $4
mflo $4
mthi $4
TAG618:
multu $4, $4
bne $4, $4, TAG619
xori $3, $4, 7
sb $4, 0($3)
TAG619:
div $3, $3
lbu $4, 0($3)
sltiu $2, $3, 13
addi $4, $4, 1
TAG620:
mthi $4
blez $4, TAG621
sb $4, 0($4)
divu $4, $4
TAG621:
beq $4, $4, TAG622
mfhi $3
divu $3, $3
mfhi $3
TAG622:
mult $3, $3
mthi $3
add $2, $3, $3
lhu $1, 0($3)
TAG623:
or $2, $1, $1
lbu $4, -256($2)
blez $2, TAG624
mflo $4
TAG624:
beq $4, $4, TAG625
add $4, $4, $4
lui $2, 1
divu $4, $4
TAG625:
sb $2, -256($2)
mflo $3
lui $2, 6
beq $2, $2, TAG626
TAG626:
mult $2, $2
sll $0, $0, 0
mfhi $3
addu $3, $2, $3
TAG627:
xori $1, $3, 15
bne $3, $1, TAG628
sll $0, $0, 0
divu $1, $1
TAG628:
sll $2, $1, 12
mult $1, $2
mfhi $2
mult $2, $2
TAG629:
div $2, $2
sll $0, $0, 0
mult $2, $3
bgez $3, TAG630
TAG630:
mflo $1
bgtz $3, TAG631
mflo $4
sb $3, 0($1)
TAG631:
lui $1, 8
srl $1, $4, 13
sltu $2, $1, $1
mtlo $4
TAG632:
mflo $1
mtlo $1
sll $0, $0, 0
bne $1, $2, TAG633
TAG633:
mult $1, $1
div $1, $1
subu $2, $1, $1
andi $2, $2, 3
TAG634:
ori $4, $2, 5
lb $3, 0($4)
bne $3, $2, TAG635
andi $3, $3, 0
TAG635:
lui $3, 2
div $3, $3
slt $1, $3, $3
srl $3, $3, 10
TAG636:
bne $3, $3, TAG637
mflo $1
divu $1, $1
multu $3, $3
TAG637:
sb $1, 0($1)
beq $1, $1, TAG638
lbu $2, 0($1)
ori $1, $2, 9
TAG638:
beq $1, $1, TAG639
mtlo $1
mtlo $1
mfhi $3
TAG639:
mfhi $1
lh $2, 0($3)
sw $2, 0($1)
bgez $3, TAG640
TAG640:
lw $3, 0($2)
mfhi $4
slti $2, $2, 13
lui $4, 11
TAG641:
sll $0, $0, 0
multu $4, $4
mtlo $4
bltz $4, TAG642
TAG642:
lui $1, 13
mfhi $1
beq $1, $1, TAG643
sll $0, $0, 0
TAG643:
beq $2, $2, TAG644
mfhi $1
lb $3, 0($1)
and $1, $3, $3
TAG644:
sra $4, $1, 15
sb $1, 0($1)
lui $4, 12
bgez $4, TAG645
TAG645:
mthi $4
mthi $4
sll $0, $0, 0
mtlo $4
TAG646:
bgez $4, TAG647
mthi $4
lhu $3, 0($4)
sw $4, 0($3)
TAG647:
mfhi $4
sll $0, $0, 0
mflo $1
sw $4, 0($3)
TAG648:
xor $1, $1, $1
sllv $1, $1, $1
bgtz $1, TAG649
sra $3, $1, 4
TAG649:
lw $2, 0($3)
srlv $3, $2, $2
bltz $3, TAG650
nor $1, $3, $3
TAG650:
sb $1, 129($1)
sltiu $4, $1, 11
addu $2, $1, $4
mtlo $2
TAG651:
srav $3, $2, $2
mtlo $2
sra $4, $3, 6
sw $3, 129($2)
TAG652:
sh $4, 1($4)
bne $4, $4, TAG653
mflo $2
sltu $2, $4, $4
TAG653:
beq $2, $2, TAG654
mflo $4
sb $4, 0($4)
lb $1, 0($4)
TAG654:
sb $1, 129($1)
mult $1, $1
lui $2, 7
lui $4, 6
TAG655:
mult $4, $4
bltz $4, TAG656
or $2, $4, $4
mult $2, $2
TAG656:
bne $2, $2, TAG657
mthi $2
mtlo $2
mthi $2
TAG657:
mtlo $2
sll $0, $0, 0
sll $0, $0, 0
mfhi $1
TAG658:
mfhi $3
bltz $1, TAG659
sll $0, $0, 0
bgez $3, TAG659
TAG659:
mfhi $4
andi $3, $3, 15
lb $4, 0($3)
sw $3, 0($3)
TAG660:
lbu $4, 0($4)
sltiu $2, $4, 1
bgtz $4, TAG661
sb $2, 0($2)
TAG661:
lb $1, 0($2)
sltiu $1, $1, 0
addu $3, $1, $1
lui $2, 4
TAG662:
lui $1, 13
sltiu $1, $1, 10
add $2, $1, $1
sub $3, $1, $1
TAG663:
mthi $3
mflo $3
bne $3, $3, TAG664
subu $1, $3, $3
TAG664:
sb $1, 0($1)
lbu $4, 0($1)
sb $4, 0($4)
lw $3, 0($1)
TAG665:
addu $1, $3, $3
div $1, $3
bne $1, $3, TAG666
div $1, $3
TAG666:
sll $0, $0, 0
lhu $1, -512($1)
divu $1, $1
beq $1, $2, TAG667
TAG667:
subu $2, $1, $1
mthi $2
lbu $3, 0($2)
bne $3, $2, TAG668
TAG668:
multu $3, $3
sw $3, 0($3)
slti $2, $3, 9
beq $2, $3, TAG669
TAG669:
sb $2, 0($2)
bltz $2, TAG670
mflo $2
lb $2, 0($2)
TAG670:
mthi $2
mthi $2
srlv $1, $2, $2
srlv $2, $1, $1
TAG671:
beq $2, $2, TAG672
multu $2, $2
sb $2, 0($2)
beq $2, $2, TAG672
TAG672:
sub $1, $2, $2
sb $2, 0($1)
addi $4, $1, 15
bne $1, $4, TAG673
TAG673:
addu $1, $4, $4
beq $1, $4, TAG674
addiu $3, $1, 5
mflo $4
TAG674:
addi $2, $4, 5
blez $2, TAG675
mflo $3
sll $4, $3, 11
TAG675:
sub $2, $4, $4
sh $4, 0($4)
slti $2, $4, 10
addiu $1, $2, 7
TAG676:
bltz $1, TAG677
addu $1, $1, $1
mtlo $1
lui $3, 10
TAG677:
divu $3, $3
sll $0, $0, 0
subu $3, $3, $3
srlv $1, $3, $3
TAG678:
lui $1, 3
subu $1, $1, $1
lui $2, 1
beq $2, $1, TAG679
TAG679:
addu $3, $2, $2
andi $2, $2, 4
beq $2, $2, TAG680
mthi $3
TAG680:
lb $1, 0($2)
mtlo $1
lui $2, 3
lh $2, 0($1)
TAG681:
bgtz $2, TAG682
mflo $2
beq $2, $2, TAG682
lw $1, 0($2)
TAG682:
multu $1, $1
addi $1, $1, 10
mthi $1
mflo $2
TAG683:
mflo $2
bltz $2, TAG684
mthi $2
sll $4, $2, 1
TAG684:
mult $4, $4
mfhi $2
sh $4, 0($4)
lb $2, 0($4)
TAG685:
mthi $2
addiu $3, $2, 13
addiu $4, $3, 1
lui $4, 2
TAG686:
xori $2, $4, 8
mfhi $3
sb $3, 0($3)
mthi $3
TAG687:
or $1, $3, $3
bltz $1, TAG688
add $1, $1, $1
bgez $1, TAG688
TAG688:
multu $1, $1
lui $4, 13
lb $2, 0($1)
mthi $2
TAG689:
mult $2, $2
mthi $2
beq $2, $2, TAG690
lui $2, 5
TAG690:
lui $2, 3
mtlo $2
xori $2, $2, 12
sll $0, $0, 0
TAG691:
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
mtlo $2
TAG692:
sb $2, 0($2)
mthi $2
mult $2, $2
lui $2, 9
TAG693:
mflo $3
bgez $3, TAG694
xor $1, $2, $3
sw $1, 0($1)
TAG694:
mtlo $1
mtlo $1
divu $1, $1
lui $1, 12
TAG695:
sll $2, $1, 13
mfhi $4
lui $3, 8
mflo $2
TAG696:
lbu $2, 0($2)
lh $3, 0($2)
mult $2, $3
sllv $2, $2, $3
TAG697:
bgtz $2, TAG698
add $2, $2, $2
mflo $4
bne $2, $2, TAG698
TAG698:
lh $1, 0($4)
blez $4, TAG699
addiu $4, $1, 2
sltu $3, $4, $1
TAG699:
bne $3, $3, TAG700
lhu $4, 0($3)
mthi $3
mult $4, $3
TAG700:
bne $4, $4, TAG701
mthi $4
srav $2, $4, $4
mthi $4
TAG701:
mthi $2
lbu $3, 0($2)
addu $1, $2, $2
mtlo $2
TAG702:
bgtz $1, TAG703
sb $1, 0($1)
nor $4, $1, $1
lb $3, 1($4)
TAG703:
sw $3, 0($3)
lui $2, 9
sll $0, $0, 0
nor $4, $2, $2
TAG704:
sll $0, $0, 0
or $1, $4, $4
mflo $2
mfhi $2
TAG705:
multu $2, $2
mthi $2
mtlo $2
mtlo $2
TAG706:
sltiu $4, $2, 7
mthi $4
andi $1, $2, 15
lb $3, 0($4)
TAG707:
sw $3, 0($3)
mflo $4
mflo $2
mult $2, $4
TAG708:
slti $4, $2, 4
sb $2, 0($4)
bgtz $4, TAG709
sh $2, 0($2)
TAG709:
bne $4, $4, TAG710
div $4, $4
blez $4, TAG710
divu $4, $4
TAG710:
lui $1, 7
mtlo $1
lui $4, 8
mflo $2
TAG711:
beq $2, $2, TAG712
ori $3, $2, 12
xori $1, $3, 2
multu $2, $2
TAG712:
bne $1, $1, TAG713
lui $2, 4
beq $2, $2, TAG713
srav $4, $1, $2
TAG713:
bne $4, $4, TAG714
sll $0, $0, 0
lui $2, 3
subu $1, $4, $4
TAG714:
mthi $1
lw $4, 0($1)
nor $3, $1, $1
bne $3, $1, TAG715
TAG715:
sll $0, $0, 0
multu $3, $2
mtlo $2
blez $3, TAG716
TAG716:
sll $0, $0, 0
bne $4, $2, TAG717
mult $4, $2
mtlo $2
TAG717:
bne $4, $4, TAG718
sw $4, 0($4)
mult $4, $4
lui $4, 12
TAG718:
divu $4, $4
divu $4, $4
sra $2, $4, 2
addiu $3, $4, 1
TAG719:
bgez $3, TAG720
sll $0, $0, 0
bgez $3, TAG720
nor $2, $3, $3
TAG720:
subu $4, $2, $2
bne $2, $4, TAG721
mflo $4
and $2, $4, $2
TAG721:
beq $2, $2, TAG722
mtlo $2
beq $2, $2, TAG722
mflo $3
TAG722:
multu $3, $3
mtlo $3
addu $3, $3, $3
lui $2, 13
TAG723:
mtlo $2
mflo $2
lui $1, 5
sll $1, $1, 3
TAG724:
addiu $3, $1, 9
sll $2, $1, 10
lui $4, 11
sll $1, $3, 3
TAG725:
bgez $1, TAG726
lui $2, 12
sw $1, 0($1)
bgtz $2, TAG726
TAG726:
mflo $3
addiu $3, $2, 0
sll $0, $0, 0
div $3, $3
TAG727:
bltz $3, TAG728
mflo $4
mtlo $4
beq $3, $3, TAG728
TAG728:
lui $3, 3
multu $4, $3
mtlo $4
sll $0, $0, 0
TAG729:
subu $3, $3, $3
lui $3, 12
bne $3, $3, TAG730
divu $3, $3
TAG730:
sltiu $1, $3, 14
sll $0, $0, 0
xor $1, $1, $1
mtlo $1
TAG731:
mfhi $3
mflo $2
beq $3, $1, TAG732
srl $1, $1, 12
TAG732:
lui $1, 12
slt $1, $1, $1
xori $1, $1, 0
slti $3, $1, 3
TAG733:
bgtz $3, TAG734
mtlo $3
blez $3, TAG734
lui $1, 9
TAG734:
lui $2, 11
sb $2, 0($1)
mthi $1
addu $4, $2, $1
TAG735:
bne $4, $4, TAG736
mfhi $1
sll $0, $0, 0
bgez $4, TAG736
TAG736:
sw $1, 0($1)
multu $1, $1
lui $4, 8
mflo $4
TAG737:
mult $4, $4
lui $1, 1
beq $1, $1, TAG738
mflo $4
TAG738:
bne $4, $4, TAG739
slti $3, $4, 9
mtlo $3
mult $3, $4
TAG739:
lbu $3, 0($3)
sh $3, 0($3)
addiu $1, $3, 2
srav $3, $3, $3
TAG740:
srl $1, $3, 4
sltu $3, $3, $1
bgez $3, TAG741
mthi $3
TAG741:
sh $3, 0($3)
multu $3, $3
sh $3, 0($3)
lhu $3, 0($3)
TAG742:
and $3, $3, $3
mfhi $1
mult $1, $3
sllv $4, $3, $1
TAG743:
lui $4, 1
sll $0, $0, 0
srav $3, $4, $4
sll $0, $0, 0
TAG744:
multu $2, $2
lui $1, 11
sll $0, $0, 0
beq $1, $1, TAG745
TAG745:
addu $2, $1, $1
mtlo $1
sltu $4, $1, $1
mthi $2
TAG746:
sub $4, $4, $4
or $4, $4, $4
lui $4, 5
divu $4, $4
TAG747:
subu $2, $4, $4
mult $4, $4
bne $2, $2, TAG748
slt $4, $4, $2
TAG748:
mthi $4
multu $4, $4
multu $4, $4
beq $4, $4, TAG749
TAG749:
lui $4, 11
mtlo $4
lui $4, 15
sll $0, $0, 0
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop