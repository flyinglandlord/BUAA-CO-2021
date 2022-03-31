ori $1, $0, 6
ori $2, $0, 2
ori $3, $0, 11
ori $4, $0, 3
sw $2, 0($0)
sw $3, 4($0)
sw $1, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $4, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $3, 32($0)
sw $4, 36($0)
sw $3, 40($0)
sw $3, 44($0)
sw $2, 48($0)
sw $1, 52($0)
sw $2, 56($0)
sw $2, 60($0)
sw $4, 64($0)
sw $2, 68($0)
sw $1, 72($0)
sw $1, 76($0)
sw $2, 80($0)
sw $1, 84($0)
sw $3, 88($0)
sw $4, 92($0)
sw $1, 96($0)
sw $4, 100($0)
sw $2, 104($0)
sw $1, 108($0)
sw $2, 112($0)
sw $2, 116($0)
sw $4, 120($0)
sw $2, 124($0)
lui $1, 5
sh $1, 0($2)
and $3, $1, $1
lui $4, 2
TAG1:
mflo $1
sb $1, 0($1)
subu $2, $1, $4
addu $3, $1, $1
TAG2:
sll $2, $3, 0
mthi $3
lh $1, 0($3)
addi $1, $3, 3
TAG3:
multu $1, $1
sllv $4, $1, $1
mflo $2
lui $3, 12
TAG4:
beq $3, $3, TAG5
sra $4, $3, 14
lb $2, 0($4)
sw $2, 0($3)
TAG5:
sb $2, 0($2)
bne $2, $2, TAG6
lb $3, 0($2)
slti $3, $3, 8
TAG6:
srav $3, $3, $3
slt $2, $3, $3
sltu $3, $3, $3
sw $3, 0($3)
TAG7:
mtlo $3
sw $3, 0($3)
nor $4, $3, $3
sh $3, 1($4)
TAG8:
sh $4, 1($4)
andi $3, $4, 11
lb $4, 1($4)
beq $4, $3, TAG9
TAG9:
sll $2, $4, 13
sltu $3, $2, $4
mfhi $1
andi $1, $1, 6
TAG10:
sw $1, 0($1)
bne $1, $1, TAG11
lui $2, 14
sll $0, $0, 0
TAG11:
div $2, $2
div $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG12:
mflo $4
multu $2, $4
div $2, $4
blez $2, TAG13
TAG13:
lbu $1, 0($4)
sra $4, $1, 0
mfhi $3
mfhi $2
TAG14:
lui $4, 6
lw $4, 0($2)
mult $4, $2
lui $1, 11
TAG15:
xori $4, $1, 15
div $1, $4
sll $0, $0, 0
mtlo $1
TAG16:
xor $1, $4, $4
mthi $1
lui $3, 2
mtlo $1
TAG17:
andi $4, $3, 3
mfhi $3
bne $3, $3, TAG18
mflo $3
TAG18:
multu $3, $3
sw $3, 0($3)
mfhi $2
sub $1, $3, $3
TAG19:
mult $1, $1
and $2, $1, $1
bne $1, $2, TAG20
mtlo $2
TAG20:
mthi $2
mthi $2
mflo $2
sll $1, $2, 14
TAG21:
lb $2, 0($1)
srl $2, $1, 2
lui $2, 9
divu $2, $2
TAG22:
mflo $3
addiu $4, $2, 9
bgez $4, TAG23
sltiu $4, $3, 1
TAG23:
sb $4, 0($4)
add $2, $4, $4
mtlo $4
mflo $1
TAG24:
multu $1, $1
andi $3, $1, 4
multu $1, $1
subu $4, $3, $1
TAG25:
lbu $4, 0($4)
sw $4, 0($4)
lui $1, 8
lui $2, 12
TAG26:
lui $2, 10
and $1, $2, $2
mtlo $1
mthi $1
TAG27:
mflo $1
bgez $1, TAG28
mfhi $1
mtlo $1
TAG28:
sll $0, $0, 0
addu $3, $1, $1
mthi $3
mthi $1
TAG29:
divu $3, $3
subu $1, $3, $3
beq $1, $3, TAG30
mtlo $3
TAG30:
blez $1, TAG31
sll $3, $1, 10
bne $3, $1, TAG31
mtlo $1
TAG31:
bne $3, $3, TAG32
mtlo $3
bgez $3, TAG32
mthi $3
TAG32:
lw $1, 0($3)
lb $1, 0($1)
mflo $1
mult $3, $1
TAG33:
sh $1, 0($1)
beq $1, $1, TAG34
mfhi $3
mtlo $1
TAG34:
addi $1, $3, 6
xori $4, $3, 7
divu $4, $4
lui $1, 10
TAG35:
beq $1, $1, TAG36
sltiu $2, $1, 14
lui $2, 4
bne $1, $1, TAG36
TAG36:
lui $3, 5
bltz $3, TAG37
mfhi $1
beq $3, $3, TAG37
TAG37:
lbu $1, 0($1)
beq $1, $1, TAG38
mult $1, $1
mtlo $1
TAG38:
sh $1, 0($1)
lh $3, 0($1)
mthi $3
bgtz $1, TAG39
TAG39:
lh $2, 0($3)
mtlo $3
or $2, $3, $2
lui $3, 7
TAG40:
multu $3, $3
sll $0, $0, 0
sra $3, $4, 11
andi $1, $3, 14
TAG41:
bgtz $1, TAG42
lw $2, 0($1)
lui $3, 2
lw $1, 0($1)
TAG42:
mflo $1
bgez $1, TAG43
lui $4, 13
bgez $1, TAG43
TAG43:
lui $3, 8
xori $1, $3, 0
mthi $3
bgtz $4, TAG44
TAG44:
lui $2, 8
addu $2, $2, $2
beq $2, $2, TAG45
divu $1, $2
TAG45:
lui $4, 11
mult $2, $4
nor $2, $2, $2
sll $3, $4, 13
TAG46:
divu $3, $3
bne $3, $3, TAG47
sll $0, $0, 0
sll $0, $0, 0
TAG47:
sra $1, $2, 9
ori $2, $1, 6
sw $1, 2049($1)
sh $2, 2049($2)
TAG48:
sb $2, 2049($2)
mfhi $2
sb $2, 0($2)
mult $2, $2
TAG49:
sb $2, 0($2)
lh $1, 0($2)
lbu $3, 2304($1)
mfhi $3
TAG50:
sra $4, $3, 2
mthi $4
slti $1, $3, 13
mflo $3
TAG51:
mflo $3
addiu $2, $3, 5
srav $1, $3, $3
sll $3, $3, 6
TAG52:
srlv $4, $3, $3
mflo $2
mfhi $1
bne $2, $1, TAG53
TAG53:
mult $1, $1
lh $1, 0($1)
slt $2, $1, $1
sll $1, $1, 0
TAG54:
beq $1, $1, TAG55
divu $1, $1
beq $1, $1, TAG55
lw $3, 0($1)
TAG55:
multu $3, $3
sb $3, 0($3)
sb $3, 0($3)
sll $2, $3, 7
TAG56:
add $1, $2, $2
bne $2, $1, TAG57
srl $3, $1, 9
sw $1, 0($3)
TAG57:
multu $3, $3
bgtz $3, TAG58
lui $1, 11
ori $4, $3, 14
TAG58:
bgtz $4, TAG59
mthi $4
lui $1, 2
mfhi $2
TAG59:
bltz $2, TAG60
and $3, $2, $2
bgtz $2, TAG60
mtlo $2
TAG60:
mfhi $1
mfhi $4
bgtz $1, TAG61
sllv $4, $4, $4
TAG61:
mfhi $2
bne $2, $2, TAG62
divu $4, $4
div $2, $2
TAG62:
multu $2, $2
beq $2, $2, TAG63
sb $2, 0($2)
sb $2, 0($2)
TAG63:
sra $2, $2, 13
mfhi $4
mult $2, $4
lui $2, 7
TAG64:
bne $2, $2, TAG65
sll $0, $0, 0
sltiu $3, $2, 5
beq $2, $2, TAG65
TAG65:
mfhi $2
beq $2, $2, TAG66
multu $3, $2
andi $2, $2, 5
TAG66:
lbu $4, 0($2)
bne $4, $4, TAG67
sb $2, 0($4)
mtlo $2
TAG67:
and $2, $4, $4
multu $4, $4
lb $1, 0($4)
mtlo $4
TAG68:
mtlo $1
bne $1, $1, TAG69
slti $3, $1, 14
sw $1, 0($1)
TAG69:
or $3, $3, $3
mthi $3
mfhi $3
lbu $1, 0($3)
TAG70:
bgez $1, TAG71
lw $1, 0($1)
bltz $1, TAG71
mfhi $3
TAG71:
beq $3, $3, TAG72
sb $3, 0($3)
mthi $3
sb $3, 0($3)
TAG72:
bgtz $3, TAG73
mfhi $2
bgtz $3, TAG73
sb $3, 0($3)
TAG73:
srl $4, $2, 5
mtlo $2
lw $3, 0($4)
sb $2, 0($2)
TAG74:
beq $3, $3, TAG75
sh $3, -256($3)
bne $3, $3, TAG75
andi $4, $3, 1
TAG75:
ori $1, $4, 9
ori $4, $4, 0
lb $2, 0($4)
mult $4, $2
TAG76:
mthi $2
mflo $3
lh $1, 0($3)
bne $2, $1, TAG77
TAG77:
lui $4, 11
sll $0, $0, 0
andi $3, $4, 9
mflo $4
TAG78:
multu $4, $4
lw $1, 0($4)
mthi $4
mthi $1
TAG79:
mfhi $4
bne $4, $1, TAG80
lui $4, 14
sw $1, -256($1)
TAG80:
beq $4, $4, TAG81
sra $3, $4, 15
mfhi $4
ori $1, $4, 15
TAG81:
mtlo $1
or $4, $1, $1
lw $1, -256($1)
lui $3, 4
TAG82:
sll $0, $0, 0
div $3, $3
beq $3, $3, TAG83
sltiu $2, $3, 10
TAG83:
mtlo $2
sh $2, 0($2)
slti $3, $2, 15
sltiu $3, $3, 13
TAG84:
mtlo $3
sb $3, 0($3)
beq $3, $3, TAG85
lui $3, 3
TAG85:
bne $3, $3, TAG86
mtlo $3
sll $0, $0, 0
subu $4, $3, $3
TAG86:
sub $2, $4, $4
blez $2, TAG87
sra $1, $2, 0
sw $4, 0($2)
TAG87:
lui $2, 9
sll $0, $0, 0
bne $2, $2, TAG88
multu $1, $2
TAG88:
mflo $4
mflo $2
nor $3, $2, $2
addiu $4, $4, 15
TAG89:
subu $4, $4, $4
multu $4, $4
sh $4, 0($4)
lui $1, 0
TAG90:
beq $1, $1, TAG91
mtlo $1
bltz $1, TAG91
add $2, $1, $1
TAG91:
sh $2, 0($2)
andi $3, $2, 2
bne $3, $3, TAG92
xor $3, $3, $2
TAG92:
lb $4, 0($3)
sb $3, 0($3)
bne $3, $3, TAG93
lbu $1, 0($3)
TAG93:
mfhi $2
sb $1, 0($2)
multu $1, $1
ori $3, $2, 11
TAG94:
sb $3, 0($3)
mtlo $3
mtlo $3
lui $2, 10
TAG95:
sll $0, $0, 0
sll $3, $2, 15
mfhi $1
srl $4, $3, 0
TAG96:
beq $4, $4, TAG97
slti $3, $4, 10
sw $3, 0($3)
lbu $1, 0($3)
TAG97:
bne $1, $1, TAG98
sltiu $4, $1, 15
mthi $4
srlv $1, $4, $4
TAG98:
lui $4, 4
lui $2, 6
mfhi $1
bne $4, $1, TAG99
TAG99:
mult $1, $1
addu $4, $1, $1
bne $1, $1, TAG100
slti $4, $4, 8
TAG100:
sb $4, 0($4)
and $4, $4, $4
srlv $3, $4, $4
sb $4, 0($4)
TAG101:
mthi $3
nor $3, $3, $3
addiu $3, $3, 6
lbu $2, 0($3)
TAG102:
sll $4, $2, 5
sb $4, 0($4)
lui $4, 2
sw $4, 0($2)
TAG103:
sll $0, $0, 0
xori $3, $3, 4
beq $3, $4, TAG104
mflo $1
TAG104:
srl $2, $1, 6
sltiu $2, $2, 8
sb $1, 0($2)
lui $1, 0
TAG105:
mflo $2
mflo $4
beq $2, $1, TAG106
mthi $1
TAG106:
mthi $4
lb $4, 0($4)
lbu $4, 0($4)
lui $1, 11
TAG107:
mfhi $2
mthi $1
beq $1, $1, TAG108
mtlo $1
TAG108:
lb $2, 0($2)
lbu $1, 0($2)
bgtz $1, TAG109
sb $1, 0($1)
TAG109:
sltiu $1, $1, 15
sll $2, $1, 5
bne $1, $1, TAG110
addiu $4, $2, 6
TAG110:
bne $4, $4, TAG111
mfhi $1
blez $4, TAG111
nor $1, $1, $1
TAG111:
beq $1, $1, TAG112
lui $1, 7
beq $1, $1, TAG112
lui $2, 4
TAG112:
lui $4, 13
slt $2, $4, $2
sll $0, $0, 0
sll $0, $0, 0
TAG113:
beq $3, $3, TAG114
mfhi $4
sw $4, 0($3)
lui $4, 3
TAG114:
nor $2, $4, $4
sra $3, $4, 8
divu $2, $3
bgtz $4, TAG115
TAG115:
mfhi $3
lui $3, 11
beq $3, $3, TAG116
sll $0, $0, 0
TAG116:
mthi $3
sll $0, $0, 0
subu $1, $3, $3
blez $1, TAG117
TAG117:
sh $1, 0($1)
sllv $2, $1, $1
mflo $4
srlv $4, $1, $4
TAG118:
sltiu $1, $4, 6
mthi $1
addu $4, $1, $1
blez $4, TAG119
TAG119:
lhu $1, 0($4)
bltz $1, TAG120
srav $2, $1, $1
sb $2, 0($2)
TAG120:
xori $4, $2, 0
beq $2, $2, TAG121
mflo $4
div $4, $4
TAG121:
srl $2, $4, 7
bne $2, $2, TAG122
lhu $4, -11913($2)
mult $4, $4
TAG122:
lh $3, 0($4)
bne $4, $4, TAG123
mult $4, $4
xori $1, $3, 2
TAG123:
sb $1, 0($1)
blez $1, TAG124
lhu $3, 0($1)
sltu $4, $3, $1
TAG124:
mtlo $4
mtlo $4
bne $4, $4, TAG125
mthi $4
TAG125:
sw $4, 0($4)
sh $4, 0($4)
bne $4, $4, TAG126
srav $1, $4, $4
TAG126:
lw $4, 0($1)
mthi $4
beq $1, $4, TAG127
multu $4, $4
TAG127:
beq $4, $4, TAG128
sb $4, 0($4)
beq $4, $4, TAG128
mfhi $1
TAG128:
sb $1, 0($1)
lui $4, 13
sll $0, $0, 0
sll $0, $0, 0
TAG129:
sra $3, $4, 15
bltz $4, TAG130
mflo $1
blez $3, TAG130
TAG130:
mult $1, $1
bne $1, $1, TAG131
mflo $2
srl $2, $1, 1
TAG131:
sw $2, 0($2)
lbu $4, 0($2)
sra $2, $4, 10
blez $2, TAG132
TAG132:
lui $2, 15
sll $0, $0, 0
lui $1, 11
xori $4, $2, 13
TAG133:
slt $2, $4, $4
mtlo $4
blez $2, TAG134
lui $4, 0
TAG134:
nor $2, $4, $4
div $2, $2
sb $4, 1($2)
bltz $4, TAG135
TAG135:
srlv $3, $2, $2
andi $1, $3, 6
slt $4, $2, $1
bne $2, $2, TAG136
TAG136:
lui $1, 6
bltz $4, TAG137
lb $1, 0($4)
div $1, $4
TAG137:
lbu $2, 0($1)
sw $1, 0($2)
mult $2, $2
slt $3, $2, $2
TAG138:
bgtz $3, TAG139
mthi $3
sll $4, $3, 7
beq $4, $3, TAG139
TAG139:
lhu $4, 0($4)
sltiu $3, $4, 10
mult $4, $4
lb $4, 0($3)
TAG140:
mthi $4
lb $2, 0($4)
lhu $4, 0($4)
add $4, $4, $2
TAG141:
mfhi $3
beq $3, $3, TAG142
mtlo $3
lui $4, 9
TAG142:
sub $3, $4, $4
mtlo $3
lh $4, 0($4)
andi $4, $4, 9
TAG143:
bgtz $4, TAG144
mult $4, $4
mfhi $4
mtlo $4
TAG144:
sh $4, 0($4)
lbu $1, 0($4)
lui $4, 3
mthi $1
TAG145:
srav $1, $4, $4
bne $1, $4, TAG146
divu $4, $4
beq $4, $1, TAG146
TAG146:
lui $2, 13
mflo $3
divu $1, $1
mthi $2
TAG147:
srav $1, $3, $3
mthi $1
lhu $1, 0($1)
lbu $4, 0($1)
TAG148:
sh $4, 0($4)
sw $4, 0($4)
mtlo $4
lui $4, 4
TAG149:
mfhi $3
andi $3, $4, 4
divu $3, $4
lui $3, 0
TAG150:
lui $3, 6
mfhi $4
sll $0, $0, 0
mfhi $1
TAG151:
lui $4, 12
mflo $4
mtlo $1
mfhi $4
TAG152:
multu $4, $4
mflo $3
sb $3, 0($4)
beq $3, $3, TAG153
TAG153:
lw $4, 0($3)
addu $4, $4, $4
bne $3, $3, TAG154
mult $4, $4
TAG154:
slti $2, $4, 5
sb $2, 0($2)
sh $2, 0($4)
mfhi $3
TAG155:
lw $2, 0($3)
sra $1, $2, 0
lbu $3, 0($1)
sw $2, 0($3)
TAG156:
multu $3, $3
mthi $3
lhu $4, 0($3)
sh $4, 0($3)
TAG157:
sb $4, 0($4)
sb $4, 0($4)
lui $2, 8
mfhi $3
TAG158:
sll $4, $3, 8
xori $2, $3, 6
ori $1, $2, 8
mflo $4
TAG159:
bgez $4, TAG160
mflo $1
bne $1, $1, TAG160
lui $3, 8
TAG160:
lbu $4, 0($3)
sllv $2, $4, $3
bgez $2, TAG161
mflo $4
TAG161:
mult $4, $4
mtlo $4
blez $4, TAG162
or $1, $4, $4
TAG162:
bne $1, $1, TAG163
lui $2, 7
mthi $2
nor $4, $1, $1
TAG163:
addu $1, $4, $4
mflo $3
lui $2, 14
slti $4, $2, 8
TAG164:
add $3, $4, $4
lw $1, 0($3)
mfhi $2
sb $2, -257($1)
TAG165:
mfhi $4
sll $0, $0, 0
beq $4, $2, TAG166
lui $2, 12
TAG166:
xori $1, $2, 11
divu $1, $2
sll $0, $0, 0
srl $4, $2, 15
TAG167:
sll $3, $4, 11
mtlo $4
mult $4, $4
sra $3, $3, 3
TAG168:
blez $3, TAG169
xor $1, $3, $3
lui $2, 0
lui $1, 8
TAG169:
blez $1, TAG170
lui $1, 10
srav $1, $1, $1
sll $0, $0, 0
TAG170:
lui $4, 10
beq $4, $1, TAG171
sll $0, $0, 0
mfhi $1
TAG171:
beq $1, $1, TAG172
sll $0, $0, 0
mult $1, $1
blez $2, TAG172
TAG172:
sll $3, $2, 7
mfhi $2
mthi $2
multu $3, $2
TAG173:
lui $1, 5
mflo $3
srlv $3, $2, $2
subu $3, $2, $3
TAG174:
bne $3, $3, TAG175
lui $3, 10
lui $2, 14
bne $2, $2, TAG175
TAG175:
sll $0, $0, 0
bltz $2, TAG176
mtlo $2
lui $2, 10
TAG176:
bne $2, $2, TAG177
srlv $4, $2, $2
sra $2, $2, 14
mthi $2
TAG177:
mthi $2
sh $2, 0($2)
lbu $2, 0($2)
andi $2, $2, 2
TAG178:
nor $4, $2, $2
beq $4, $2, TAG179
sll $4, $4, 5
mthi $2
TAG179:
sll $0, $0, 0
slti $2, $2, 11
mtlo $2
sll $4, $2, 15
TAG180:
divu $4, $4
sll $0, $0, 0
mfhi $4
multu $4, $4
TAG181:
lui $2, 3
sll $0, $0, 0
sll $0, $0, 0
blez $4, TAG182
TAG182:
multu $2, $2
sll $0, $0, 0
mtlo $2
bgez $2, TAG183
TAG183:
sll $0, $0, 0
mflo $2
sll $0, $0, 0
sltu $2, $1, $1
TAG184:
mflo $3
blez $2, TAG185
sltiu $2, $2, 5
and $2, $2, $2
TAG185:
mtlo $2
sra $2, $2, 15
lb $1, 0($2)
bne $1, $2, TAG186
TAG186:
slti $4, $1, 2
bgtz $1, TAG187
lui $4, 3
lui $3, 3
TAG187:
bltz $3, TAG188
div $3, $3
multu $3, $3
mfhi $3
TAG188:
mult $3, $3
sra $1, $3, 12
sllv $1, $3, $3
beq $3, $1, TAG189
TAG189:
sltu $1, $1, $1
bltz $1, TAG190
mfhi $1
sltiu $4, $1, 2
TAG190:
bgez $4, TAG191
mfhi $3
mtlo $3
div $4, $4
TAG191:
beq $3, $3, TAG192
lui $2, 6
sll $1, $3, 14
blez $1, TAG192
TAG192:
lui $4, 6
lui $1, 4
mtlo $1
sll $0, $0, 0
TAG193:
sll $0, $0, 0
sll $0, $0, 0
mflo $3
sll $0, $0, 0
TAG194:
mfhi $1
mflo $2
mtlo $3
sll $0, $0, 0
TAG195:
subu $3, $2, $2
bne $2, $3, TAG196
xor $3, $2, $2
lhu $1, 0($2)
TAG196:
lh $4, 0($1)
sra $3, $4, 6
div $3, $3
sw $3, 0($1)
TAG197:
or $3, $3, $3
multu $3, $3
mfhi $4
sltiu $3, $4, 5
TAG198:
lb $2, 0($3)
beq $3, $3, TAG199
or $4, $3, $3
beq $3, $2, TAG199
TAG199:
sb $4, 0($4)
beq $4, $4, TAG200
nor $2, $4, $4
mult $4, $2
TAG200:
sw $2, 2($2)
bgez $2, TAG201
lui $1, 4
beq $1, $1, TAG201
TAG201:
sltu $1, $1, $1
andi $3, $1, 0
mtlo $1
lui $4, 10
TAG202:
sll $0, $0, 0
xor $3, $4, $4
mflo $2
mflo $1
TAG203:
sh $1, 0($1)
multu $1, $1
bgtz $1, TAG204
lw $3, 0($1)
TAG204:
divu $3, $3
sll $0, $0, 0
lui $2, 13
mflo $1
TAG205:
lbu $1, 0($1)
lbu $2, 0($1)
blez $1, TAG206
add $1, $1, $2
TAG206:
mtlo $1
blez $1, TAG207
sb $1, 0($1)
lui $1, 15
TAG207:
bltz $1, TAG208
lui $1, 9
mflo $3
sll $0, $0, 0
TAG208:
xori $1, $4, 0
bgez $4, TAG209
multu $1, $4
slti $1, $1, 2
TAG209:
nor $4, $1, $1
mult $4, $1
srav $3, $4, $1
mfhi $2
TAG210:
sra $3, $2, 1
mflo $1
sll $0, $0, 0
blez $2, TAG211
TAG211:
sll $4, $1, 10
lui $1, 4
bne $4, $1, TAG212
sll $0, $0, 0
TAG212:
mthi $2
lui $2, 11
sll $2, $2, 5
addu $4, $2, $2
TAG213:
sll $0, $0, 0
mflo $4
sll $0, $0, 0
div $4, $4
TAG214:
mthi $4
bgez $4, TAG215
lui $2, 15
lui $1, 2
TAG215:
sll $0, $0, 0
bne $1, $1, TAG216
mfhi $3
mflo $1
TAG216:
bgtz $1, TAG217
divu $1, $1
srl $1, $1, 5
slt $2, $1, $1
TAG217:
subu $1, $2, $2
sltiu $3, $2, 6
mult $2, $1
srl $3, $1, 4
TAG218:
bgtz $3, TAG219
lh $4, 0($3)
mfhi $2
lui $4, 1
TAG219:
blez $4, TAG220
addu $3, $4, $4
sll $0, $0, 0
blez $4, TAG220
TAG220:
sb $1, 0($1)
sub $3, $1, $1
beq $3, $1, TAG221
lh $4, 0($3)
TAG221:
mthi $4
srl $1, $4, 11
lw $3, 0($4)
multu $4, $4
TAG222:
bgez $3, TAG223
sll $0, $0, 0
lui $3, 12
sra $1, $3, 2
TAG223:
lui $3, 4
lui $1, 6
lui $2, 1
sll $0, $0, 0
TAG224:
mtlo $2
beq $2, $2, TAG225
mflo $4
srl $2, $4, 7
TAG225:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG226:
mtlo $1
or $3, $1, $1
nor $1, $3, $3
mfhi $4
TAG227:
bltz $4, TAG228
mthi $4
beq $4, $4, TAG228
sltu $2, $4, $4
TAG228:
lui $4, 4
lui $1, 15
mtlo $4
mtlo $1
TAG229:
xori $2, $1, 2
beq $2, $2, TAG230
mflo $4
mthi $2
TAG230:
sllv $3, $4, $4
mtlo $3
slt $1, $3, $4
mflo $1
TAG231:
sll $0, $0, 0
blez $1, TAG232
multu $1, $1
mfhi $4
TAG232:
lui $2, 7
subu $1, $2, $2
xor $1, $1, $1
mflo $4
TAG233:
beq $4, $4, TAG234
multu $4, $4
bne $4, $4, TAG234
sra $1, $4, 4
TAG234:
lui $1, 5
mflo $2
beq $1, $1, TAG235
sll $0, $0, 0
TAG235:
lh $1, 0($2)
beq $1, $1, TAG236
mtlo $2
multu $1, $1
TAG236:
beq $1, $1, TAG237
mthi $1
addiu $3, $1, 13
div $1, $3
TAG237:
beq $3, $3, TAG238
sra $4, $3, 11
lui $4, 14
mflo $4
TAG238:
lui $4, 3
sll $0, $0, 0
blez $4, TAG239
sll $0, $0, 0
TAG239:
bltz $4, TAG240
lui $4, 12
mthi $4
mtlo $4
TAG240:
sll $0, $0, 0
mflo $3
mthi $3
beq $4, $3, TAG241
TAG241:
sll $0, $0, 0
slti $4, $3, 6
and $3, $4, $4
sw $4, 0($3)
TAG242:
bne $3, $3, TAG243
mthi $3
mthi $3
bne $3, $3, TAG243
TAG243:
srl $3, $3, 3
lh $2, 0($3)
lbu $4, 0($3)
lui $3, 14
TAG244:
bgtz $3, TAG245
sll $0, $0, 0
lui $3, 6
lh $3, 0($3)
TAG245:
addiu $1, $3, 14
mtlo $1
sll $1, $3, 10
bgtz $1, TAG246
TAG246:
mult $1, $1
lui $2, 6
bltz $1, TAG247
sll $0, $0, 0
TAG247:
beq $2, $2, TAG248
slti $4, $2, 7
lui $4, 11
beq $4, $4, TAG248
TAG248:
mtlo $4
lh $3, 0($4)
multu $3, $4
srl $2, $4, 12
TAG249:
bgez $2, TAG250
srl $1, $2, 9
mflo $2
bltz $2, TAG250
TAG250:
sb $2, 0($2)
mfhi $4
sllv $4, $2, $2
sw $4, 0($4)
TAG251:
mthi $4
mtlo $4
lbu $4, 0($4)
lbu $2, 0($4)
TAG252:
lb $3, 0($2)
mflo $4
mult $4, $3
lui $1, 3
TAG253:
sll $0, $0, 0
bltz $1, TAG254
multu $1, $1
mtlo $1
TAG254:
mthi $1
lui $3, 15
mthi $1
beq $3, $3, TAG255
TAG255:
ori $2, $3, 13
sll $2, $3, 12
beq $3, $2, TAG256
mflo $1
TAG256:
divu $1, $1
sll $0, $0, 0
mfhi $3
bltz $3, TAG257
TAG257:
mtlo $3
lb $1, 0($3)
lui $1, 4
ori $3, $3, 6
TAG258:
lhu $3, 0($3)
subu $2, $3, $3
multu $3, $3
mthi $2
TAG259:
addi $1, $2, 13
divu $2, $1
bgez $2, TAG260
sra $3, $2, 4
TAG260:
sh $3, 0($3)
mflo $1
multu $3, $3
multu $1, $1
TAG261:
nor $3, $1, $1
divu $3, $3
xori $2, $1, 4
lui $3, 11
TAG262:
sll $0, $0, 0
lui $4, 5
mtlo $3
mflo $1
TAG263:
srl $3, $1, 10
beq $1, $3, TAG264
mult $3, $3
sll $0, $0, 0
TAG264:
xori $1, $1, 9
mthi $1
sll $0, $0, 0
multu $1, $4
TAG265:
mfhi $2
sll $0, $0, 0
sb $2, 0($2)
lui $1, 11
TAG266:
bne $1, $1, TAG267
sll $0, $0, 0
lui $1, 14
blez $1, TAG267
TAG267:
multu $1, $1
mthi $1
mtlo $1
mtlo $1
TAG268:
mfhi $4
bltz $4, TAG269
mthi $4
beq $1, $4, TAG269
TAG269:
divu $4, $4
bgez $4, TAG270
sll $0, $0, 0
bne $4, $4, TAG270
TAG270:
mthi $4
sll $0, $0, 0
lui $3, 7
ori $1, $3, 5
TAG271:
mtlo $1
bne $1, $1, TAG272
and $4, $1, $1
or $2, $4, $4
TAG272:
sll $0, $0, 0
sll $0, $0, 0
mthi $2
slt $4, $2, $2
TAG273:
and $2, $4, $4
blez $2, TAG274
ori $1, $4, 10
bgez $4, TAG274
TAG274:
lh $4, 0($1)
nor $1, $1, $4
bne $1, $1, TAG275
srl $3, $4, 7
TAG275:
mtlo $3
slti $2, $3, 4
blez $3, TAG276
andi $4, $3, 13
TAG276:
mflo $2
multu $2, $4
lui $3, 12
addiu $2, $2, 10
TAG277:
slt $4, $2, $2
bne $2, $4, TAG278
lhu $2, 0($4)
mtlo $4
TAG278:
lw $1, 0($2)
slt $2, $2, $2
lui $1, 3
sltu $4, $2, $2
TAG279:
blez $4, TAG280
sllv $4, $4, $4
sub $3, $4, $4
mthi $3
TAG280:
addiu $3, $3, 12
subu $1, $3, $3
lui $4, 11
sll $0, $0, 0
TAG281:
blez $4, TAG282
lui $3, 13
div $4, $4
bltz $4, TAG282
TAG282:
andi $4, $3, 6
divu $4, $3
subu $2, $4, $3
mult $2, $3
TAG283:
mtlo $2
beq $2, $2, TAG284
ori $3, $2, 5
blez $2, TAG284
TAG284:
xori $3, $3, 2
sll $0, $0, 0
lui $1, 9
beq $3, $3, TAG285
TAG285:
mflo $4
mflo $4
mfhi $4
mult $4, $4
TAG286:
sll $1, $4, 13
divu $4, $1
lh $1, 169($4)
mflo $2
TAG287:
sra $4, $2, 10
mthi $4
sw $2, 0($4)
mthi $4
TAG288:
blez $4, TAG289
mtlo $4
mtlo $4
mtlo $4
TAG289:
addiu $3, $4, 10
lhu $1, 0($4)
mtlo $1
mthi $3
TAG290:
lui $1, 1
mult $1, $1
sll $0, $0, 0
mflo $4
TAG291:
multu $4, $4
beq $4, $4, TAG292
lui $2, 4
slti $4, $2, 1
TAG292:
lui $2, 6
beq $2, $4, TAG293
sb $4, 0($4)
mfhi $4
TAG293:
sw $4, 0($4)
bne $4, $4, TAG294
xor $4, $4, $4
multu $4, $4
TAG294:
addi $3, $4, 8
bltz $4, TAG295
lh $2, 0($4)
addu $2, $3, $3
TAG295:
addiu $2, $2, 13
subu $2, $2, $2
bltz $2, TAG296
lui $3, 12
TAG296:
bltz $3, TAG297
mfhi $2
mtlo $2
xori $2, $2, 7
TAG297:
mtlo $2
sb $2, 0($2)
mflo $1
div $1, $1
TAG298:
div $1, $1
bgtz $1, TAG299
lbu $3, 0($1)
sh $1, 0($1)
TAG299:
bgez $3, TAG300
sb $3, 0($3)
sltiu $1, $3, 7
beq $1, $1, TAG300
TAG300:
sra $4, $1, 0
lui $2, 13
sll $0, $0, 0
bgez $2, TAG301
TAG301:
mthi $2
sllv $1, $2, $2
bne $2, $2, TAG302
sll $0, $0, 0
TAG302:
xori $4, $2, 2
lui $3, 5
sll $0, $0, 0
sll $0, $0, 0
TAG303:
bltz $4, TAG304
multu $4, $4
sll $0, $0, 0
srl $2, $4, 12
TAG304:
sll $0, $0, 0
sb $2, -208($2)
mfhi $2
sll $0, $0, 0
TAG305:
bgez $2, TAG306
lh $2, -169($2)
sh $2, 0($2)
lb $2, 0($2)
TAG306:
sll $0, $0, 0
lui $3, 0
lui $3, 3
mflo $3
TAG307:
mult $3, $3
subu $2, $3, $3
lui $3, 1
mtlo $2
TAG308:
sll $0, $0, 0
mthi $3
mfhi $4
lui $1, 13
TAG309:
mflo $3
bne $3, $1, TAG310
sub $3, $1, $3
lui $4, 1
TAG310:
sll $0, $0, 0
mtlo $4
divu $4, $4
sllv $3, $4, $4
TAG311:
sll $0, $0, 0
addiu $3, $3, 5
bltz $3, TAG312
sll $0, $0, 0
TAG312:
bgez $3, TAG313
mthi $3
or $4, $3, $3
beq $4, $4, TAG313
TAG313:
and $3, $4, $4
or $1, $4, $3
lui $1, 10
lui $3, 9
TAG314:
lui $2, 8
addu $1, $2, $2
blez $1, TAG315
lui $2, 2
TAG315:
mthi $2
sll $1, $2, 12
beq $1, $1, TAG316
mflo $4
TAG316:
sb $4, 0($4)
ori $2, $4, 14
beq $2, $2, TAG317
divu $2, $2
TAG317:
mtlo $2
srlv $4, $2, $2
andi $3, $2, 13
sb $2, 0($3)
TAG318:
sb $3, 0($3)
srlv $3, $3, $3
lui $1, 7
multu $1, $3
TAG319:
lui $3, 1
sll $0, $0, 0
sll $0, $0, 0
mfhi $2
TAG320:
slt $2, $2, $2
lui $1, 13
bgez $1, TAG321
mflo $3
TAG321:
mtlo $3
bne $3, $3, TAG322
mflo $4
lh $1, 0($3)
TAG322:
sh $1, -464($1)
subu $1, $1, $1
sra $1, $1, 6
mtlo $1
TAG323:
blez $1, TAG324
multu $1, $1
srav $1, $1, $1
bgez $1, TAG324
TAG324:
sub $1, $1, $1
mfhi $4
bne $1, $4, TAG325
mult $4, $4
TAG325:
lh $1, 0($4)
lw $3, -464($1)
lui $1, 11
sll $0, $0, 0
TAG326:
lui $1, 3
mthi $1
subu $3, $1, $1
div $1, $1
TAG327:
mult $3, $3
beq $3, $3, TAG328
mtlo $3
mtlo $3
TAG328:
mult $3, $3
lui $1, 8
mfhi $3
bgez $3, TAG329
TAG329:
sw $3, 0($3)
sw $3, 0($3)
bne $3, $3, TAG330
lw $2, 0($3)
TAG330:
addi $4, $2, 14
ori $2, $2, 12
lb $4, 0($4)
lb $1, 0($4)
TAG331:
mfhi $4
sb $1, 0($1)
bne $4, $4, TAG332
multu $4, $4
TAG332:
mflo $3
sh $3, 0($3)
lw $3, 0($4)
bltz $3, TAG333
TAG333:
mflo $3
lh $2, 0($3)
add $3, $3, $3
mthi $3
TAG334:
sltiu $2, $3, 9
lui $1, 6
beq $1, $3, TAG335
sll $0, $0, 0
TAG335:
mthi $1
bne $1, $1, TAG336
sll $0, $0, 0
sllv $4, $1, $1
TAG336:
mthi $4
sll $0, $0, 0
lui $2, 1
divu $2, $4
TAG337:
bltz $2, TAG338
sll $0, $0, 0
sll $0, $0, 0
multu $1, $2
TAG338:
srlv $1, $1, $1
mfhi $4
xor $1, $1, $1
multu $1, $4
TAG339:
sll $3, $1, 11
mfhi $4
bgez $1, TAG340
sltiu $3, $1, 0
TAG340:
mflo $3
mult $3, $3
bne $3, $3, TAG341
multu $3, $3
TAG341:
bne $3, $3, TAG342
sw $3, 0($3)
mflo $1
lh $1, 0($3)
TAG342:
mfhi $4
multu $4, $1
addi $1, $4, 8
bne $4, $1, TAG343
TAG343:
mtlo $1
sb $1, 0($1)
mfhi $3
lb $3, 0($3)
TAG344:
mflo $2
sllv $1, $3, $2
sb $3, 0($2)
mtlo $3
TAG345:
sltu $2, $1, $1
sltiu $4, $1, 3
beq $2, $2, TAG346
sb $1, 0($4)
TAG346:
slt $2, $4, $4
beq $4, $4, TAG347
srlv $2, $2, $2
mthi $2
TAG347:
andi $2, $2, 13
lui $4, 11
addi $2, $2, 3
xori $1, $4, 0
TAG348:
subu $4, $1, $1
mthi $1
slti $3, $1, 0
sltiu $4, $3, 15
TAG349:
lui $4, 9
sll $0, $0, 0
andi $4, $4, 10
mthi $4
TAG350:
bne $4, $4, TAG351
sb $4, 0($4)
lbu $3, 0($4)
sh $4, 0($4)
TAG351:
multu $3, $3
mthi $3
beq $3, $3, TAG352
andi $1, $3, 4
TAG352:
sw $1, 0($1)
sw $1, 0($1)
lui $1, 9
sltiu $2, $1, 9
TAG353:
bgtz $2, TAG354
or $2, $2, $2
multu $2, $2
sw $2, 0($2)
TAG354:
andi $4, $2, 2
mfhi $2
nor $1, $2, $4
addi $4, $2, 2
TAG355:
mfhi $3
addiu $3, $4, 3
mtlo $3
lb $3, 0($3)
TAG356:
subu $4, $3, $3
lbu $3, 0($4)
slti $2, $3, 8
mfhi $2
TAG357:
lw $4, 0($2)
lui $3, 13
lbu $4, 0($2)
addi $2, $2, 3
TAG358:
addiu $3, $2, 11
lh $4, 0($3)
bltz $3, TAG359
sb $2, 0($2)
TAG359:
sb $4, 0($4)
xori $1, $4, 13
bne $4, $4, TAG360
sh $4, 0($4)
TAG360:
lui $1, 7
addu $4, $1, $1
mfhi $3
nor $2, $3, $1
TAG361:
mfhi $1
blez $1, TAG362
lui $2, 9
mult $2, $2
TAG362:
divu $2, $2
mult $2, $2
sll $0, $0, 0
slt $2, $2, $2
TAG363:
lui $1, 3
sll $1, $1, 1
mthi $2
andi $1, $1, 13
TAG364:
bltz $1, TAG365
mult $1, $1
lh $4, 0($1)
multu $4, $1
TAG365:
lbu $4, 0($4)
mtlo $4
sw $4, 0($4)
mflo $3
TAG366:
sw $3, 0($3)
mult $3, $3
beq $3, $3, TAG367
sllv $1, $3, $3
TAG367:
bne $1, $1, TAG368
mfhi $1
blez $1, TAG368
lbu $1, 0($1)
TAG368:
lw $2, 0($1)
mtlo $1
andi $3, $2, 13
beq $3, $2, TAG369
TAG369:
mult $3, $3
srav $3, $3, $3
mfhi $3
addi $4, $3, 14
TAG370:
lui $4, 13
sll $0, $0, 0
bltz $4, TAG371
mtlo $4
TAG371:
mtlo $4
sll $0, $0, 0
mult $4, $4
sll $0, $0, 0
TAG372:
mfhi $1
sb $1, -169($1)
bgtz $1, TAG373
lui $1, 15
TAG373:
mflo $2
lui $1, 11
multu $2, $2
mtlo $1
TAG374:
lui $2, 14
sll $0, $0, 0
lui $2, 6
lui $4, 5
TAG375:
mflo $1
ori $2, $4, 6
subu $2, $2, $2
srav $2, $4, $1
TAG376:
bgtz $2, TAG377
xori $3, $2, 1
lui $3, 8
mthi $2
TAG377:
bne $3, $3, TAG378
addiu $1, $3, 15
sll $0, $0, 0
div $3, $3
TAG378:
lui $1, 3
slti $2, $1, 8
sll $0, $0, 0
or $3, $1, $1
TAG379:
blez $3, TAG380
sll $0, $0, 0
bltz $3, TAG380
sll $0, $0, 0
TAG380:
or $1, $3, $3
mflo $1
mfhi $3
mflo $2
TAG381:
beq $2, $2, TAG382
ori $2, $2, 1
mfhi $3
lw $1, 0($2)
TAG382:
sb $1, 0($1)
addiu $2, $1, 5
sb $2, 0($2)
lui $4, 11
TAG383:
sll $0, $0, 0
mflo $3
lui $4, 0
blez $4, TAG384
TAG384:
andi $4, $4, 8
mthi $4
beq $4, $4, TAG385
lw $3, 0($4)
TAG385:
mtlo $3
sw $3, -425($3)
lui $3, 12
blez $3, TAG386
TAG386:
div $3, $3
sll $0, $0, 0
beq $3, $3, TAG387
sll $0, $0, 0
TAG387:
multu $3, $3
lui $1, 6
sll $0, $0, 0
sltu $3, $1, $1
TAG388:
mult $3, $3
bne $3, $3, TAG389
add $2, $3, $3
sw $2, 0($2)
TAG389:
lui $4, 4
lui $3, 3
mult $3, $2
mthi $4
TAG390:
ori $4, $3, 7
sll $0, $0, 0
sll $0, $0, 0
mult $3, $3
TAG391:
lui $4, 6
mthi $4
sll $0, $0, 0
bne $4, $4, TAG392
TAG392:
mflo $2
sb $1, 0($2)
andi $4, $2, 6
sh $1, 0($4)
TAG393:
lui $1, 9
mthi $1
mfhi $3
lhu $1, 0($4)
TAG394:
mtlo $1
sltiu $2, $1, 4
lui $4, 9
sll $0, $0, 0
TAG395:
blez $4, TAG396
sll $0, $0, 0
mflo $1
addi $2, $1, 14
TAG396:
lb $2, 0($2)
sh $2, 0($2)
sh $2, 0($2)
sh $2, 0($2)
TAG397:
mflo $1
lb $1, 0($1)
mfhi $1
bne $1, $1, TAG398
TAG398:
sll $0, $0, 0
mthi $1
sll $2, $1, 4
sll $0, $0, 0
TAG399:
lui $1, 8
srlv $3, $1, $2
lui $4, 11
mflo $2
TAG400:
nor $4, $2, $2
sltiu $2, $4, 1
mflo $2
sh $4, 0($2)
TAG401:
mult $2, $2
xori $1, $2, 8
srlv $2, $2, $1
mfhi $2
TAG402:
mtlo $2
slt $1, $2, $2
sw $1, 0($1)
sb $1, 0($2)
TAG403:
sh $1, 0($1)
blez $1, TAG404
sllv $1, $1, $1
lh $4, 0($1)
TAG404:
mtlo $4
mtlo $4
slt $4, $4, $4
mtlo $4
TAG405:
sltiu $3, $4, 6
lui $4, 15
bgtz $4, TAG406
sll $0, $0, 0
TAG406:
blez $2, TAG407
lui $2, 1
bne $2, $2, TAG407
lbu $3, 0($2)
TAG407:
sb $3, 0($3)
sb $3, 0($3)
or $1, $3, $3
mult $3, $3
TAG408:
sll $3, $1, 0
mult $1, $1
bne $1, $3, TAG409
sb $1, 0($3)
TAG409:
sb $3, 0($3)
sb $3, 0($3)
mfhi $1
mtlo $3
TAG410:
sub $1, $1, $1
lbu $2, 0($1)
mflo $1
beq $1, $1, TAG411
TAG411:
andi $3, $1, 15
mfhi $3
sra $2, $3, 14
lui $1, 0
TAG412:
multu $1, $1
add $4, $1, $1
bgtz $1, TAG413
mult $1, $4
TAG413:
mfhi $1
beq $4, $4, TAG414
lui $4, 15
mthi $1
TAG414:
mult $4, $4
sll $0, $0, 0
mthi $2
mult $4, $2
TAG415:
sw $2, 0($2)
mtlo $2
lui $3, 12
slti $4, $2, 13
TAG416:
sll $3, $4, 12
bne $3, $4, TAG417
mult $3, $3
bltz $4, TAG417
TAG417:
lui $4, 5
mtlo $3
beq $4, $4, TAG418
sw $3, -4096($3)
TAG418:
srlv $1, $4, $4
mflo $3
sllv $1, $4, $1
bgtz $3, TAG419
TAG419:
sll $0, $0, 0
mflo $2
blez $1, TAG420
ori $1, $1, 3
TAG420:
mflo $4
mthi $4
beq $4, $1, TAG421
lui $4, 0
TAG421:
multu $4, $4
mthi $4
sll $2, $4, 13
bne $2, $4, TAG422
TAG422:
sh $2, 0($2)
mtlo $2
lw $3, 0($2)
bgez $3, TAG423
TAG423:
lw $3, 0($3)
mult $3, $3
beq $3, $3, TAG424
sltiu $2, $3, 7
TAG424:
multu $2, $2
sb $2, 0($2)
mfhi $4
bne $4, $4, TAG425
TAG425:
mflo $2
bgez $2, TAG426
lbu $1, 0($2)
mult $4, $1
TAG426:
mthi $1
subu $3, $1, $1
multu $3, $3
mtlo $1
TAG427:
lb $3, 0($3)
sllv $4, $3, $3
mult $3, $3
mtlo $3
TAG428:
lui $2, 15
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
TAG429:
blez $2, TAG430
lui $4, 10
lui $3, 7
lui $1, 0
TAG430:
multu $1, $1
mult $1, $1
nor $4, $1, $1
bne $1, $1, TAG431
TAG431:
mthi $4
addiu $1, $4, 7
lui $3, 13
mfhi $3
TAG432:
addu $4, $3, $3
slti $2, $3, 1
sra $4, $2, 2
lhu $4, 0($4)
TAG433:
sll $0, $0, 0
lh $4, -256($4)
bgez $4, TAG434
div $4, $4
TAG434:
lui $3, 2
bgtz $4, TAG435
multu $3, $3
srlv $2, $4, $4
TAG435:
bgez $2, TAG436
sra $3, $2, 9
sw $2, 0($2)
multu $3, $2
TAG436:
bgtz $3, TAG437
mtlo $3
addu $2, $3, $3
sllv $4, $3, $3
TAG437:
mflo $2
blez $2, TAG438
mflo $3
addi $1, $3, 14
TAG438:
lhu $2, 0($1)
lh $1, -1798($2)
mthi $1
div $1, $1
TAG439:
addu $4, $1, $1
bgtz $1, TAG440
lui $3, 6
lui $1, 4
TAG440:
addiu $3, $1, 14
bgtz $3, TAG441
lui $4, 8
lw $2, 0($4)
TAG441:
sltiu $3, $2, 12
mtlo $2
lui $4, 3
mtlo $2
TAG442:
addu $4, $4, $4
mflo $4
div $4, $4
sb $4, -1798($4)
TAG443:
mthi $4
divu $4, $4
mtlo $4
bgez $4, TAG444
TAG444:
lui $3, 14
divu $3, $3
div $4, $4
mflo $1
TAG445:
sra $3, $1, 13
mult $1, $3
mtlo $3
mfhi $1
TAG446:
lui $1, 6
xori $1, $1, 6
sllv $3, $1, $1
andi $4, $1, 3
TAG447:
sh $4, 0($4)
bne $4, $4, TAG448
multu $4, $4
bgez $4, TAG448
TAG448:
mfhi $3
beq $4, $3, TAG449
andi $4, $4, 7
multu $4, $3
TAG449:
sh $4, 0($4)
addiu $2, $4, 8
lui $3, 8
lui $4, 11
TAG450:
sltu $2, $4, $4
bgtz $4, TAG451
mult $4, $4
bltz $2, TAG451
TAG451:
lw $1, 0($2)
bgtz $1, TAG452
mult $1, $2
bgez $2, TAG452
TAG452:
sll $0, $0, 0
mthi $1
mflo $4
sb $1, 0($4)
TAG453:
bne $4, $4, TAG454
mtlo $4
beq $4, $4, TAG454
xor $2, $4, $4
TAG454:
mtlo $2
mthi $2
lhu $1, 0($2)
bne $1, $2, TAG455
TAG455:
lui $3, 13
addu $1, $3, $1
mult $1, $1
sll $0, $0, 0
TAG456:
lhu $3, 0($4)
bltz $3, TAG457
sllv $2, $3, $4
lhu $1, -262($3)
TAG457:
beq $1, $1, TAG458
lbu $4, -262($1)
mfhi $2
addi $4, $2, 0
TAG458:
mflo $2
sb $2, 0($4)
mtlo $4
divu $4, $2
TAG459:
lui $1, 12
lui $3, 15
sll $0, $0, 0
multu $1, $2
TAG460:
mflo $3
mthi $2
subu $3, $3, $3
sll $0, $0, 0
TAG461:
mthi $3
mfhi $4
lbu $3, 0($3)
bgez $3, TAG462
TAG462:
lui $3, 9
sll $0, $0, 0
bgtz $3, TAG463
mult $3, $4
TAG463:
lui $2, 5
addiu $1, $2, 12
bltz $4, TAG464
lui $4, 9
TAG464:
lui $1, 3
lui $3, 4
bne $1, $3, TAG465
lui $3, 4
TAG465:
blez $3, TAG466
mult $3, $3
mult $3, $3
lui $4, 11
TAG466:
sll $0, $0, 0
bne $4, $4, TAG467
mtlo $3
sll $0, $0, 0
TAG467:
bne $3, $3, TAG468
div $3, $3
nor $4, $3, $3
sll $4, $3, 10
TAG468:
beq $4, $4, TAG469
mtlo $4
beq $4, $4, TAG469
srav $3, $4, $4
TAG469:
beq $3, $3, TAG470
mfhi $1
mflo $4
sllv $4, $1, $3
TAG470:
mfhi $3
mtlo $4
addi $1, $3, 14
bltz $1, TAG471
TAG471:
lb $1, 0($1)
srlv $3, $1, $1
mult $1, $1
lh $4, 0($1)
TAG472:
addiu $2, $4, 7
andi $3, $2, 2
lb $3, 0($2)
mfhi $3
TAG473:
bne $3, $3, TAG474
sltu $3, $3, $3
multu $3, $3
mthi $3
TAG474:
sh $3, 0($3)
addi $3, $3, 14
mfhi $2
lb $4, 0($2)
TAG475:
mthi $4
slti $4, $4, 11
divu $4, $4
addiu $1, $4, 6
TAG476:
lui $3, 6
bltz $3, TAG477
addu $2, $1, $3
mthi $2
TAG477:
bne $2, $2, TAG478
multu $2, $2
sltiu $2, $2, 13
or $2, $2, $2
TAG478:
bgtz $2, TAG479
mflo $3
bne $3, $2, TAG479
sh $3, 0($2)
TAG479:
sllv $3, $3, $3
multu $3, $3
lui $3, 4
lui $3, 14
TAG480:
beq $3, $3, TAG481
srl $4, $3, 7
ori $1, $3, 1
mfhi $3
TAG481:
addu $4, $3, $3
mthi $4
sll $0, $0, 0
sll $0, $0, 0
TAG482:
bgez $4, TAG483
lui $3, 7
div $4, $4
mflo $4
TAG483:
or $4, $4, $4
mfhi $2
mthi $2
mtlo $4
TAG484:
sll $0, $0, 0
lui $1, 9
ori $1, $2, 2
addiu $3, $3, 4
TAG485:
mult $3, $3
div $3, $3
mflo $4
addu $2, $3, $4
TAG486:
mtlo $2
bne $2, $2, TAG487
sll $0, $0, 0
lui $3, 14
TAG487:
bne $3, $3, TAG488
ori $4, $3, 13
bne $3, $3, TAG488
mthi $4
TAG488:
sll $0, $0, 0
mthi $2
beq $2, $2, TAG489
slt $3, $2, $4
TAG489:
lb $3, 0($3)
and $3, $3, $3
sb $3, 0($3)
sh $3, 0($3)
TAG490:
nor $4, $3, $3
bgez $4, TAG491
addiu $3, $4, 7
mthi $3
TAG491:
mtlo $3
xor $4, $3, $3
lui $1, 2
mtlo $1
TAG492:
bne $1, $1, TAG493
div $1, $1
sll $4, $1, 5
bne $4, $4, TAG493
TAG493:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 7
sll $0, $0, 0
TAG494:
lui $1, 12
mtlo $4
bltz $1, TAG495
sll $0, $0, 0
TAG495:
bne $2, $2, TAG496
sra $4, $2, 13
lui $2, 4
lui $4, 5
TAG496:
bltz $4, TAG497
mflo $4
mtlo $4
sll $0, $0, 0
TAG497:
mthi $4
div $4, $4
bne $4, $4, TAG498
mthi $4
TAG498:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
xor $4, $4, $4
TAG499:
sllv $3, $4, $4
mtlo $4
xor $4, $4, $4
bgez $3, TAG500
TAG500:
mthi $4
bne $4, $4, TAG501
xor $3, $4, $4
srav $1, $4, $3
TAG501:
lbu $2, 0($1)
mult $1, $1
mfhi $2
sw $2, 0($2)
TAG502:
bne $2, $2, TAG503
sub $2, $2, $2
bgez $2, TAG503
lui $2, 8
TAG503:
srl $3, $2, 11
divu $3, $3
lui $4, 7
mfhi $4
TAG504:
lui $3, 12
sh $3, 0($4)
blez $3, TAG505
lh $3, 0($4)
TAG505:
beq $3, $3, TAG506
mflo $1
mflo $1
div $1, $3
TAG506:
bgtz $1, TAG507
mtlo $1
subu $3, $1, $1
div $3, $3
TAG507:
lui $1, 2
lui $2, 9
bne $2, $2, TAG508
lui $4, 2
TAG508:
multu $4, $4
lui $4, 10
mtlo $4
lui $4, 9
TAG509:
mthi $4
andi $4, $4, 3
mfhi $2
sll $2, $4, 5
TAG510:
bgtz $2, TAG511
lui $4, 6
beq $2, $2, TAG511
lui $4, 15
TAG511:
beq $4, $4, TAG512
sll $0, $0, 0
mtlo $3
sb $3, 0($3)
TAG512:
mtlo $3
sw $3, 0($3)
mult $3, $3
sw $3, 0($3)
TAG513:
mflo $2
lh $2, 0($2)
multu $3, $2
slt $4, $3, $2
TAG514:
addiu $2, $4, 14
lui $3, 2
bne $4, $2, TAG515
or $4, $2, $3
TAG515:
bgez $4, TAG516
multu $4, $4
mflo $4
mtlo $4
TAG516:
mtlo $4
mult $4, $4
mthi $4
blez $4, TAG517
TAG517:
mthi $4
lui $3, 8
sll $0, $0, 0
beq $3, $3, TAG518
TAG518:
lui $1, 8
sll $0, $0, 0
mtlo $4
addu $4, $3, $1
TAG519:
sll $0, $0, 0
mflo $2
mtlo $2
beq $4, $4, TAG520
TAG520:
mfhi $2
lui $2, 6
mfhi $1
lui $1, 14
TAG521:
mtlo $1
srlv $2, $1, $1
mthi $1
blez $2, TAG522
TAG522:
sll $0, $0, 0
mfhi $1
lui $4, 2
sltiu $1, $1, 6
TAG523:
multu $1, $1
sltu $2, $1, $1
lb $2, 0($2)
lh $3, 0($1)
TAG524:
multu $3, $3
mfhi $1
beq $3, $1, TAG525
mthi $1
TAG525:
bne $1, $1, TAG526
mult $1, $1
bgtz $1, TAG526
lui $3, 0
TAG526:
slt $3, $3, $3
sll $1, $3, 8
mflo $4
mthi $3
TAG527:
lui $3, 5
sll $0, $0, 0
beq $4, $3, TAG528
mtlo $3
TAG528:
andi $2, $3, 11
bltz $2, TAG529
sw $3, 0($2)
sll $0, $0, 0
TAG529:
xor $1, $2, $2
sh $1, 0($1)
lbu $4, 0($2)
mult $4, $4
TAG530:
multu $4, $4
mtlo $4
add $1, $4, $4
mult $4, $1
TAG531:
mtlo $1
mult $1, $1
bne $1, $1, TAG532
nor $4, $1, $1
TAG532:
sll $0, $0, 0
lui $3, 3
lh $4, 1($4)
mflo $3
TAG533:
bgez $3, TAG534
sh $3, 0($3)
bne $3, $3, TAG534
addi $4, $3, 14
TAG534:
blez $4, TAG535
lb $2, 0($4)
bne $2, $2, TAG535
divu $2, $2
TAG535:
mflo $3
srav $4, $3, $3
bgtz $3, TAG536
multu $2, $3
TAG536:
bltz $4, TAG537
sw $4, 0($4)
or $4, $4, $4
lhu $4, 0($4)
TAG537:
mult $4, $4
mfhi $3
mult $3, $4
mflo $3
TAG538:
subu $2, $3, $3
sh $3, 0($2)
sw $2, 0($3)
sllv $4, $3, $3
TAG539:
sb $4, 0($4)
lhu $1, 0($4)
mult $1, $4
sltiu $4, $1, 3
TAG540:
sltiu $2, $4, 7
sb $2, 0($2)
lui $2, 8
mtlo $2
TAG541:
beq $2, $2, TAG542
sll $0, $0, 0
lhu $2, 0($2)
mthi $2
TAG542:
xor $3, $2, $2
bne $3, $3, TAG543
mthi $2
bgtz $3, TAG543
TAG543:
sb $3, 0($3)
mthi $3
multu $3, $3
sb $3, 0($3)
TAG544:
add $4, $3, $3
bgez $4, TAG545
lb $1, 0($4)
divu $4, $4
TAG545:
andi $1, $1, 1
beq $1, $1, TAG546
lh $1, 0($1)
mflo $4
TAG546:
lui $3, 14
addiu $3, $4, 1
addiu $4, $3, 11
addiu $2, $4, 7
TAG547:
mflo $3
bgez $2, TAG548
sw $2, 0($3)
div $3, $2
TAG548:
sltu $3, $3, $3
sb $3, 0($3)
beq $3, $3, TAG549
mfhi $4
TAG549:
blez $4, TAG550
sllv $4, $4, $4
lh $4, 0($4)
mthi $4
TAG550:
bne $4, $4, TAG551
lui $2, 2
beq $4, $2, TAG551
mfhi $3
TAG551:
multu $3, $3
mult $3, $3
lbu $2, 0($3)
sb $3, 0($3)
TAG552:
mtlo $2
blez $2, TAG553
ori $2, $2, 0
or $3, $2, $2
TAG553:
addiu $1, $3, 1
div $3, $1
beq $1, $3, TAG554
mtlo $3
TAG554:
mtlo $1
sb $1, 0($1)
lui $4, 7
sb $4, 0($1)
TAG555:
mfhi $1
bltz $1, TAG556
slti $1, $4, 3
ori $1, $1, 5
TAG556:
lui $3, 9
bgtz $3, TAG557
mthi $1
ori $4, $1, 4
TAG557:
bltz $4, TAG558
multu $4, $4
xor $1, $4, $4
divu $4, $4
TAG558:
sb $1, 0($1)
lui $1, 1
mfhi $3
sll $0, $0, 0
TAG559:
sll $0, $0, 0
addiu $4, $4, 2
sll $0, $0, 0
sll $0, $0, 0
TAG560:
sll $0, $0, 0
slti $4, $4, 6
lui $4, 15
lui $2, 2
TAG561:
sll $0, $0, 0
or $1, $2, $2
lui $2, 15
bne $2, $1, TAG562
TAG562:
lui $4, 5
mtlo $4
mthi $2
mfhi $4
TAG563:
mthi $4
bgez $4, TAG564
sll $0, $0, 0
sll $4, $4, 9
TAG564:
mult $4, $4
addu $1, $4, $4
beq $1, $1, TAG565
sll $0, $0, 0
TAG565:
sll $0, $0, 0
mthi $1
lui $1, 11
sll $0, $0, 0
TAG566:
sll $0, $0, 0
bne $3, $3, TAG567
multu $3, $1
srlv $2, $1, $1
TAG567:
beq $2, $2, TAG568
mthi $2
mthi $2
srl $4, $2, 12
TAG568:
mthi $4
div $4, $4
mtlo $4
subu $4, $4, $4
TAG569:
slti $4, $4, 5
sb $4, 0($4)
bltz $4, TAG570
lui $2, 1
TAG570:
sll $0, $0, 0
multu $2, $3
mfhi $2
mthi $3
TAG571:
xori $1, $2, 14
beq $1, $2, TAG572
sw $1, 0($2)
mult $2, $2
TAG572:
beq $1, $1, TAG573
sb $1, 0($1)
bgtz $1, TAG573
mflo $2
TAG573:
multu $2, $2
blez $2, TAG574
addiu $1, $2, 5
mtlo $2
TAG574:
srav $2, $1, $1
bltz $1, TAG575
sb $2, 0($1)
sb $2, 0($1)
TAG575:
bgtz $2, TAG576
lui $2, 5
or $3, $2, $2
sra $1, $2, 15
TAG576:
mthi $1
lui $4, 12
lui $4, 4
addiu $2, $1, 10
TAG577:
mfhi $4
mfhi $3
lbu $1, 0($3)
and $2, $3, $1
TAG578:
bgez $2, TAG579
lui $3, 3
bgez $3, TAG579
and $2, $2, $2
TAG579:
sb $2, 0($2)
blez $2, TAG580
mthi $2
lhu $3, 0($2)
TAG580:
sll $0, $0, 0
mfhi $4
lui $2, 2
lui $3, 7
TAG581:
sll $0, $0, 0
lui $3, 7
mtlo $4
sll $0, $0, 0
TAG582:
lui $1, 6
mthi $1
lui $4, 15
subu $2, $4, $3
TAG583:
bne $2, $2, TAG584
andi $4, $2, 0
multu $2, $4
sll $0, $0, 0
TAG584:
bgez $3, TAG585
mflo $3
divu $3, $3
mtlo $3
TAG585:
addu $3, $3, $3
mtlo $3
beq $3, $3, TAG586
sb $3, 0($3)
TAG586:
mfhi $3
xori $2, $3, 12
mfhi $3
mult $3, $3
TAG587:
bgtz $3, TAG588
add $1, $3, $3
mthi $3
mult $3, $1
TAG588:
mtlo $1
mthi $1
sltiu $1, $1, 0
multu $1, $1
TAG589:
mfhi $1
bne $1, $1, TAG590
lui $2, 15
sll $0, $0, 0
TAG590:
mthi $2
sll $0, $0, 0
div $2, $2
mtlo $3
TAG591:
mult $3, $3
beq $3, $3, TAG592
lui $4, 2
lui $1, 12
TAG592:
lui $2, 0
mtlo $1
multu $1, $2
mtlo $1
TAG593:
mthi $2
bne $2, $2, TAG594
mtlo $2
xori $3, $2, 7
TAG594:
srav $3, $3, $3
beq $3, $3, TAG595
lui $4, 10
sb $3, 0($3)
TAG595:
sll $1, $4, 9
lui $4, 2
sllv $4, $4, $4
sll $0, $0, 0
TAG596:
lui $2, 14
sw $3, 0($3)
lui $3, 6
mthi $3
TAG597:
sll $0, $0, 0
mthi $3
sll $0, $0, 0
mthi $3
TAG598:
xori $1, $1, 8
mflo $4
mult $4, $1
addi $1, $4, 8
TAG599:
slti $3, $1, 3
mult $3, $1
lbu $2, 0($3)
lhu $3, 0($3)
TAG600:
mult $3, $3
mtlo $3
bne $3, $3, TAG601
mult $3, $3
TAG601:
lw $2, 0($3)
mthi $2
mthi $2
lui $1, 10
TAG602:
sll $0, $0, 0
bltz $1, TAG603
mtlo $1
sll $0, $0, 0
TAG603:
sll $0, $0, 0
blez $1, TAG604
sll $0, $0, 0
lh $2, 0($4)
TAG604:
sw $2, 0($2)
mflo $4
bgtz $4, TAG605
xori $2, $2, 4
TAG605:
slti $3, $2, 3
lhu $2, 0($3)
sh $2, 0($2)
bgez $3, TAG606
TAG606:
sh $2, 0($2)
lb $1, 0($2)
multu $2, $1
lhu $1, 0($2)
TAG607:
sub $1, $1, $1
sw $1, 0($1)
bltz $1, TAG608
sw $1, 0($1)
TAG608:
lhu $3, 0($1)
lui $1, 6
div $1, $1
mtlo $3
TAG609:
lui $2, 1
subu $4, $2, $1
sll $0, $0, 0
slt $4, $4, $4
TAG610:
mtlo $4
bgtz $4, TAG611
mthi $4
sb $4, 0($4)
TAG611:
lbu $2, 0($4)
sw $2, 0($2)
lhu $2, 0($4)
lw $1, 0($2)
TAG612:
mfhi $1
andi $4, $1, 7
add $4, $4, $1
beq $1, $1, TAG613
TAG613:
lh $4, 0($4)
mflo $1
lhu $3, 0($4)
mtlo $1
TAG614:
mflo $4
blez $3, TAG615
mult $4, $3
lb $1, 0($3)
TAG615:
srlv $4, $1, $1
mult $1, $4
multu $1, $1
mtlo $4
TAG616:
sw $4, 0($4)
bgez $4, TAG617
ori $2, $4, 0
blez $4, TAG617
TAG617:
srl $3, $2, 14
beq $2, $2, TAG618
xor $2, $2, $2
lui $2, 14
TAG618:
lw $3, 0($2)
lui $4, 14
sb $2, 0($2)
sll $0, $0, 0
TAG619:
mthi $4
beq $4, $4, TAG620
lui $4, 1
lhu $3, 0($4)
TAG620:
addu $4, $3, $3
beq $3, $3, TAG621
lui $4, 0
bne $4, $4, TAG621
TAG621:
srlv $4, $4, $4
srav $1, $4, $4
sltiu $1, $4, 0
srl $4, $4, 4
TAG622:
blez $4, TAG623
mult $4, $4
mflo $1
bgez $1, TAG623
TAG623:
mflo $2
beq $2, $2, TAG624
lui $4, 9
xor $3, $2, $1
TAG624:
mflo $1
multu $3, $3
mult $1, $1
mflo $3
TAG625:
lh $4, 0($3)
sll $3, $3, 3
lui $3, 7
bne $3, $4, TAG626
TAG626:
addu $1, $3, $3
nor $1, $1, $3
mfhi $1
lbu $1, 0($1)
TAG627:
sw $1, 0($1)
lui $3, 11
mflo $3
bne $3, $3, TAG628
TAG628:
ori $3, $3, 1
sra $2, $3, 2
beq $2, $3, TAG629
mtlo $3
TAG629:
blez $2, TAG630
xori $3, $2, 13
sra $2, $3, 3
andi $2, $2, 6
TAG630:
mflo $4
lui $2, 14
sll $0, $0, 0
sra $1, $4, 6
TAG631:
mult $1, $1
blez $1, TAG632
slt $3, $1, $1
bgez $1, TAG632
TAG632:
lui $2, 11
sll $0, $0, 0
add $2, $3, $3
lbu $4, 0($3)
TAG633:
lui $4, 4
mthi $4
bltz $4, TAG634
multu $4, $4
TAG634:
bne $4, $4, TAG635
div $4, $4
mtlo $4
sll $0, $0, 0
TAG635:
mflo $4
mtlo $4
mthi $4
divu $4, $4
TAG636:
bne $4, $4, TAG637
addiu $1, $4, 15
divu $1, $1
mfhi $3
TAG637:
beq $3, $3, TAG638
lui $4, 2
bne $3, $3, TAG638
lhu $3, 0($3)
TAG638:
mflo $4
mult $3, $3
slti $4, $3, 15
beq $3, $3, TAG639
TAG639:
ori $2, $4, 6
bne $4, $4, TAG640
mtlo $2
subu $1, $2, $2
TAG640:
mtlo $1
mthi $1
sub $2, $1, $1
mflo $1
TAG641:
sll $3, $1, 6
mflo $2
beq $1, $3, TAG642
mthi $1
TAG642:
beq $2, $2, TAG643
lhu $3, 0($2)
mtlo $2
mthi $3
TAG643:
lui $1, 2
mfhi $2
srav $4, $1, $3
ori $4, $3, 0
TAG644:
subu $2, $4, $4
blez $4, TAG645
lui $1, 2
sb $1, 0($2)
TAG645:
mfhi $1
bne $1, $1, TAG646
add $2, $1, $1
mtlo $1
TAG646:
bltz $2, TAG647
mflo $3
bgtz $2, TAG647
andi $4, $3, 3
TAG647:
bltz $4, TAG648
sh $4, 0($4)
mult $4, $4
bgtz $4, TAG648
TAG648:
mthi $4
sw $4, 0($4)
mtlo $4
mthi $4
TAG649:
mthi $4
multu $4, $4
mthi $4
mtlo $4
TAG650:
lui $4, 14
mflo $2
mfhi $4
mthi $2
TAG651:
bltz $4, TAG652
lhu $2, 0($4)
blez $4, TAG652
sllv $2, $4, $4
TAG652:
bne $2, $2, TAG653
slti $4, $2, 1
slt $1, $2, $4
div $2, $1
TAG653:
sb $1, 0($1)
multu $1, $1
sb $1, 0($1)
mflo $1
TAG654:
mthi $1
mthi $1
sb $1, 0($1)
mflo $2
TAG655:
mfhi $1
bne $2, $1, TAG656
mfhi $4
xori $3, $2, 4
TAG656:
lbu $2, 0($3)
ori $4, $2, 4
addu $1, $2, $2
mult $2, $3
TAG657:
mthi $1
mflo $4
bne $1, $1, TAG658
lui $4, 3
TAG658:
bgez $4, TAG659
mtlo $4
lw $4, 0($4)
mthi $4
TAG659:
sll $0, $0, 0
addiu $3, $1, 0
mtlo $3
bltz $3, TAG660
TAG660:
sh $3, 0($3)
bgez $3, TAG661
sllv $1, $3, $3
lbu $2, 0($3)
TAG661:
sh $2, 0($2)
mfhi $4
lui $2, 10
lui $4, 15
TAG662:
mthi $4
beq $4, $4, TAG663
multu $4, $4
divu $4, $4
TAG663:
lui $3, 8
andi $2, $3, 13
bltz $4, TAG664
andi $3, $4, 6
TAG664:
or $4, $3, $3
bgez $3, TAG665
lui $3, 3
beq $3, $3, TAG665
TAG665:
addiu $1, $3, 15
bne $1, $3, TAG666
mult $1, $1
ori $2, $1, 8
TAG666:
sltiu $4, $2, 4
srl $3, $4, 12
lui $1, 0
mthi $4
TAG667:
mfhi $2
sll $4, $1, 13
nor $3, $1, $2
ori $1, $3, 15
TAG668:
bgtz $1, TAG669
sh $1, 1($1)
lui $2, 9
mthi $2
TAG669:
or $1, $2, $2
sll $0, $0, 0
addi $2, $4, 15
mult $2, $4
TAG670:
sb $2, 0($2)
sll $2, $2, 8
lui $3, 3
sltiu $1, $2, 12
TAG671:
sll $4, $1, 10
sw $1, 0($4)
sll $1, $4, 1
sh $1, 0($1)
TAG672:
sh $1, 0($1)
lb $2, 0($1)
bne $2, $2, TAG673
mfhi $3
TAG673:
andi $3, $3, 8
multu $3, $3
beq $3, $3, TAG674
sw $3, 0($3)
TAG674:
multu $3, $3
beq $3, $3, TAG675
mthi $3
lhu $4, 0($3)
TAG675:
mflo $2
sh $4, 0($4)
mfhi $3
mult $3, $3
TAG676:
lbu $4, 0($3)
bne $4, $4, TAG677
lw $4, 0($4)
srav $1, $4, $3
TAG677:
lui $1, 9
mflo $1
srl $2, $1, 7
lw $2, 0($1)
TAG678:
or $3, $2, $2
srl $1, $3, 0
mthi $3
add $3, $2, $3
TAG679:
lui $2, 10
lui $3, 0
bne $3, $3, TAG680
sb $3, 0($3)
TAG680:
mtlo $3
mfhi $4
slt $3, $3, $4
mtlo $3
TAG681:
srl $1, $3, 1
mthi $3
bltz $1, TAG682
lh $3, 0($3)
TAG682:
sb $3, 0($3)
sub $2, $3, $3
mthi $3
mtlo $2
TAG683:
mthi $2
multu $2, $2
multu $2, $2
sub $4, $2, $2
TAG684:
and $2, $4, $4
mflo $3
sw $3, 0($4)
sra $3, $4, 15
TAG685:
blez $3, TAG686
ori $3, $3, 11
lui $2, 6
bne $3, $2, TAG686
TAG686:
mtlo $2
beq $2, $2, TAG687
sltu $4, $2, $2
lui $4, 4
TAG687:
lui $4, 8
subu $2, $4, $4
multu $2, $4
sw $2, 0($2)
TAG688:
blez $2, TAG689
lui $2, 5
blez $2, TAG689
div $2, $2
TAG689:
srlv $3, $2, $2
mult $3, $2
bgtz $2, TAG690
sll $0, $0, 0
TAG690:
mtlo $3
divu $3, $3
mtlo $3
xori $2, $3, 2
TAG691:
sll $0, $0, 0
sll $0, $0, 0
sllv $3, $2, $2
lui $2, 1
TAG692:
bltz $2, TAG693
lui $3, 5
mthi $3
sll $0, $0, 0
TAG693:
mtlo $4
div $4, $4
sll $0, $0, 0
mthi $4
TAG694:
multu $4, $4
div $4, $4
mtlo $4
mtlo $4
TAG695:
mthi $4
sll $0, $0, 0
bne $4, $4, TAG696
lui $3, 12
TAG696:
lui $3, 7
mfhi $1
addiu $4, $1, 15
bgtz $3, TAG697
TAG697:
lui $1, 7
sll $0, $0, 0
mthi $4
mfhi $2
TAG698:
sll $3, $2, 8
subu $1, $2, $3
mthi $1
mfhi $3
TAG699:
bltz $3, TAG700
and $1, $3, $3
sll $3, $1, 6
bltz $3, TAG700
TAG700:
mult $3, $3
beq $3, $3, TAG701
multu $3, $3
bgez $3, TAG701
TAG701:
sll $0, $0, 0
mflo $3
sll $0, $0, 0
bgez $3, TAG702
TAG702:
sll $0, $0, 0
andi $1, $3, 8
mtlo $1
blez $1, TAG703
TAG703:
mult $1, $1
mfhi $4
lui $4, 1
addiu $3, $1, 11
TAG704:
bgez $3, TAG705
sb $3, 0($3)
div $3, $3
mfhi $4
TAG705:
slti $3, $4, 2
srl $3, $3, 12
lb $3, 0($3)
mthi $3
TAG706:
beq $3, $3, TAG707
mtlo $3
sh $3, 0($3)
divu $3, $3
TAG707:
mtlo $3
multu $3, $3
sll $4, $3, 10
srav $2, $4, $3
TAG708:
sh $2, 0($2)
slti $4, $2, 2
bgtz $2, TAG709
multu $4, $2
TAG709:
mflo $3
xor $1, $3, $4
bne $1, $3, TAG710
addu $4, $1, $4
TAG710:
sh $4, 0($4)
sh $4, 0($4)
sltu $2, $4, $4
slt $1, $4, $4
TAG711:
lhu $1, 0($1)
bne $1, $1, TAG712
lui $4, 5
sll $0, $0, 0
TAG712:
bltz $3, TAG713
addi $1, $3, 1
sb $3, 0($3)
bgtz $3, TAG713
TAG713:
lb $4, 0($1)
mthi $4
sllv $4, $4, $4
sb $4, 0($1)
TAG714:
sw $4, 0($4)
lhu $2, 0($4)
sltu $2, $4, $4
blez $4, TAG715
TAG715:
slt $2, $2, $2
mtlo $2
lb $4, 0($2)
addi $2, $2, 7
TAG716:
bne $2, $2, TAG717
sb $2, 0($2)
mult $2, $2
mthi $2
TAG717:
lui $3, 12
mflo $1
srav $3, $3, $1
divu $3, $1
TAG718:
mfhi $3
mthi $3
sb $3, 0($3)
bgez $3, TAG719
TAG719:
addiu $2, $3, 14
srl $3, $2, 12
sra $2, $3, 4
slt $3, $2, $3
TAG720:
lui $3, 3
addu $1, $3, $3
sll $0, $0, 0
ori $2, $3, 13
TAG721:
blez $2, TAG722
mult $2, $2
mflo $2
lui $3, 1
TAG722:
sll $0, $0, 0
slti $3, $3, 13
sh $3, 0($3)
add $1, $3, $3
TAG723:
lui $4, 7
mfhi $4
mtlo $1
bne $1, $4, TAG724
TAG724:
mtlo $4
lui $3, 6
lbu $2, 0($4)
mfhi $1
TAG725:
mtlo $1
sb $1, 0($1)
beq $1, $1, TAG726
lui $4, 0
TAG726:
mflo $2
sllv $2, $2, $2
lb $2, -4608($2)
sll $1, $2, 6
TAG727:
lui $4, 1
ori $3, $4, 14
sltu $3, $4, $3
addi $1, $1, 10
TAG728:
subu $4, $1, $1
mtlo $4
mthi $4
lui $4, 7
TAG729:
mfhi $3
slt $4, $3, $3
sra $2, $4, 7
srav $3, $3, $2
TAG730:
mflo $4
mthi $3
bne $4, $4, TAG731
sw $4, 0($3)
TAG731:
lhu $4, 0($4)
mthi $4
mthi $4
lui $1, 7
TAG732:
addu $3, $1, $1
sll $1, $3, 9
lui $3, 4
bltz $3, TAG733
TAG733:
sll $0, $0, 0
slti $2, $1, 10
sb $2, 0($2)
addi $3, $2, 4
TAG734:
mflo $3
lbu $3, 0($3)
mtlo $3
bgtz $3, TAG735
TAG735:
lh $1, 0($3)
addiu $4, $1, 4
mtlo $4
lui $2, 5
TAG736:
beq $2, $2, TAG737
mthi $2
mult $2, $2
mfhi $2
TAG737:
div $2, $2
mult $2, $2
sll $0, $0, 0
multu $2, $2
TAG738:
sll $0, $0, 0
mflo $2
mflo $3
mfhi $2
TAG739:
lui $4, 8
lbu $2, 0($2)
mflo $2
mthi $4
TAG740:
lui $3, 7
bgtz $3, TAG741
mult $2, $3
sllv $1, $2, $3
TAG741:
multu $1, $1
lui $4, 11
mfhi $4
lbu $2, 0($4)
TAG742:
mfhi $1
bne $1, $2, TAG743
multu $2, $2
mtlo $1
TAG743:
sltiu $4, $1, 2
lui $3, 4
mflo $1
div $3, $4
TAG744:
bne $1, $1, TAG745
multu $1, $1
mthi $1
mflo $2
TAG745:
sh $2, 0($2)
mflo $1
bne $1, $2, TAG746
sra $2, $2, 4
TAG746:
mthi $2
andi $1, $2, 11
sw $2, 0($1)
bgez $2, TAG747
TAG747:
lui $4, 0
andi $2, $1, 12
blez $1, TAG748
lb $4, 0($2)
TAG748:
mtlo $4
mflo $1
bne $4, $4, TAG749
addi $1, $1, 4
TAG749:
bltz $1, TAG750
sh $1, 0($1)
xor $4, $1, $1
lhu $1, 0($4)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop