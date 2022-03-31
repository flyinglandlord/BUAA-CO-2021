ori $1, $0, 6
ori $2, $0, 9
ori $3, $0, 1
ori $4, $0, 3
sw $4, 0($0)
sw $4, 4($0)
sw $2, 8($0)
sw $4, 12($0)
sw $2, 16($0)
sw $3, 20($0)
sw $4, 24($0)
sw $3, 28($0)
sw $2, 32($0)
sw $2, 36($0)
sw $3, 40($0)
sw $1, 44($0)
sw $1, 48($0)
sw $4, 52($0)
sw $1, 56($0)
sw $3, 60($0)
sw $2, 64($0)
sw $2, 68($0)
sw $3, 72($0)
sw $3, 76($0)
sw $1, 80($0)
sw $2, 84($0)
sw $4, 88($0)
sw $2, 92($0)
sw $3, 96($0)
sw $2, 100($0)
sw $4, 104($0)
sw $4, 108($0)
sw $3, 112($0)
sw $2, 116($0)
sw $2, 120($0)
sw $2, 124($0)
mflo $4
mult $4, $4
lui $4, 13
sll $0, $0, 0
TAG1:
mflo $1
lh $1, 0($1)
divu $4, $1
bgez $4, TAG2
TAG2:
lui $4, 7
lui $1, 6
bgez $1, TAG3
mflo $1
TAG3:
div $1, $1
sltu $1, $1, $1
mflo $1
bne $1, $1, TAG4
TAG4:
div $1, $1
beq $1, $1, TAG5
sb $1, 0($1)
lui $2, 13
TAG5:
mtlo $2
sb $2, 0($2)
lbu $4, 0($2)
mtlo $4
TAG6:
blez $4, TAG7
lui $3, 0
ori $3, $3, 8
mthi $3
TAG7:
mflo $2
blez $2, TAG8
lb $2, 0($2)
nor $2, $3, $3
TAG8:
mult $2, $2
mflo $2
lbu $1, 0($2)
mflo $4
TAG9:
mflo $3
lbu $2, 0($4)
lui $3, 8
bne $3, $2, TAG10
TAG10:
mthi $3
multu $3, $3
mult $3, $3
sll $0, $0, 0
TAG11:
bne $2, $2, TAG12
nor $1, $2, $2
andi $1, $2, 0
sw $1, 0($1)
TAG12:
sub $4, $1, $1
blez $1, TAG13
sh $4, 0($1)
lbu $1, 0($4)
TAG13:
beq $1, $1, TAG14
lw $3, 0($1)
lhu $4, 0($1)
bltz $3, TAG14
TAG14:
sh $4, 0($4)
srlv $1, $4, $4
bgez $4, TAG15
multu $1, $1
TAG15:
beq $1, $1, TAG16
subu $2, $1, $1
lui $3, 5
div $1, $2
TAG16:
lh $1, 0($3)
mfhi $1
bgtz $1, TAG17
lui $2, 9
TAG17:
sll $0, $0, 0
mthi $2
lui $4, 8
bgtz $2, TAG18
TAG18:
addu $2, $4, $4
andi $3, $4, 13
lui $3, 12
mfhi $4
TAG19:
sll $0, $0, 0
mtlo $3
mflo $3
lui $3, 4
TAG20:
sll $0, $0, 0
mflo $4
divu $4, $4
sll $0, $0, 0
TAG21:
bgez $4, TAG22
subu $1, $4, $4
bltz $1, TAG22
divu $1, $4
TAG22:
mflo $1
addu $3, $1, $1
mfhi $2
lui $2, 7
TAG23:
sll $0, $0, 0
slti $1, $2, 10
sll $0, $0, 0
ori $1, $2, 10
TAG24:
lui $2, 2
mthi $1
bgtz $1, TAG25
sra $2, $1, 15
TAG25:
lui $1, 13
mflo $4
lbu $1, 0($4)
lb $4, 0($1)
TAG26:
sw $4, 0($4)
bgtz $4, TAG27
lb $1, 0($4)
mflo $1
TAG27:
slti $3, $1, 14
bne $3, $3, TAG28
lb $1, 0($3)
mult $3, $1
TAG28:
lbu $1, 0($1)
sw $1, 0($1)
mflo $1
mtlo $1
TAG29:
sra $1, $1, 11
multu $1, $1
beq $1, $1, TAG30
mthi $1
TAG30:
lw $2, 0($1)
sw $1, 0($1)
or $2, $1, $1
mthi $1
TAG31:
beq $2, $2, TAG32
sub $4, $2, $2
mtlo $2
bltz $2, TAG32
TAG32:
lui $2, 1
mfhi $3
ori $3, $3, 11
addiu $3, $3, 14
TAG33:
multu $3, $3
bne $3, $3, TAG34
mthi $3
lb $4, 0($3)
TAG34:
mthi $4
mfhi $2
blez $4, TAG35
mult $4, $2
TAG35:
mtlo $2
addu $2, $2, $2
bne $2, $2, TAG36
ori $4, $2, 1
TAG36:
mult $4, $4
mflo $4
multu $4, $4
and $3, $4, $4
TAG37:
mthi $3
blez $3, TAG38
mfhi $4
blez $3, TAG38
TAG38:
multu $4, $4
mtlo $4
divu $4, $4
lui $3, 9
TAG39:
sll $0, $0, 0
divu $3, $3
mthi $3
addiu $1, $3, 8
TAG40:
beq $1, $1, TAG41
mfhi $3
mfhi $2
mfhi $2
TAG41:
sh $2, 0($2)
lb $4, 0($2)
lb $1, 0($4)
beq $1, $2, TAG42
TAG42:
mthi $1
and $4, $1, $1
mfhi $4
lbu $4, 0($1)
TAG43:
multu $4, $4
lui $1, 8
xor $3, $1, $1
mult $1, $1
TAG44:
addiu $3, $3, 3
div $3, $3
mtlo $3
beq $3, $3, TAG45
TAG45:
mflo $1
mflo $3
lui $2, 0
xor $3, $2, $2
TAG46:
lh $1, 0($3)
or $1, $1, $1
sh $3, 0($3)
multu $1, $1
TAG47:
lhu $4, 0($1)
srav $3, $1, $1
subu $4, $3, $3
lw $3, 0($3)
TAG48:
beq $3, $3, TAG49
mult $3, $3
bgtz $3, TAG49
mthi $3
TAG49:
slti $3, $3, 13
lui $2, 3
mtlo $2
bgtz $3, TAG50
TAG50:
sll $0, $0, 0
lui $3, 5
ori $2, $1, 7
multu $2, $1
TAG51:
bgez $2, TAG52
sllv $1, $2, $2
sw $1, 0($1)
add $1, $2, $1
TAG52:
sw $1, -896($1)
ori $1, $1, 6
xor $1, $1, $1
mtlo $1
TAG53:
mthi $1
bgez $1, TAG54
mflo $4
srav $1, $4, $1
TAG54:
bne $1, $1, TAG55
lb $1, 0($1)
mflo $4
bne $1, $1, TAG55
TAG55:
sh $4, 0($4)
sb $4, 0($4)
bne $4, $4, TAG56
lui $3, 15
TAG56:
lui $4, 5
mflo $4
lhu $3, 0($4)
addiu $2, $3, 14
TAG57:
mthi $2
multu $2, $2
beq $2, $2, TAG58
mflo $3
TAG58:
beq $3, $3, TAG59
mthi $3
mflo $1
lui $3, 11
TAG59:
sll $0, $0, 0
sh $3, -196($3)
beq $2, $2, TAG60
mult $3, $2
TAG60:
mthi $2
lui $2, 15
slt $3, $2, $2
mtlo $3
TAG61:
mthi $3
sh $3, 0($3)
xor $4, $3, $3
mflo $2
TAG62:
sw $2, 0($2)
mfhi $2
multu $2, $2
add $1, $2, $2
TAG63:
bne $1, $1, TAG64
lbu $3, 0($1)
multu $1, $3
sltu $1, $3, $1
TAG64:
lui $4, 15
addu $3, $4, $1
mthi $1
or $1, $4, $3
TAG65:
bne $1, $1, TAG66
mflo $4
bltz $1, TAG66
mthi $1
TAG66:
mfhi $2
mfhi $1
sltu $4, $4, $4
mult $4, $1
TAG67:
lui $1, 3
mfhi $1
lh $4, 0($1)
mthi $4
TAG68:
mflo $4
bgez $4, TAG69
mflo $2
ori $1, $4, 11
TAG69:
bgez $1, TAG70
mult $1, $1
beq $1, $1, TAG70
sb $1, 0($1)
TAG70:
mult $1, $1
sub $4, $1, $1
beq $4, $4, TAG71
lh $1, 0($1)
TAG71:
lui $2, 5
sltu $4, $2, $1
lbu $2, 0($1)
sra $1, $2, 1
TAG72:
srl $2, $1, 11
lui $2, 0
bne $2, $1, TAG73
mult $2, $2
TAG73:
beq $2, $2, TAG74
addi $4, $2, 12
lui $4, 14
srav $4, $4, $4
TAG74:
lui $3, 10
sh $3, 0($4)
sll $0, $0, 0
mult $3, $4
TAG75:
mult $3, $3
lui $3, 11
xor $2, $3, $3
sll $0, $0, 0
TAG76:
bltz $4, TAG77
sltiu $2, $4, 8
bne $2, $2, TAG77
addiu $2, $4, 8
TAG77:
srlv $3, $2, $2
blez $2, TAG78
sh $2, 0($2)
blez $2, TAG78
TAG78:
lui $2, 4
bltz $3, TAG79
sub $1, $2, $3
bgtz $1, TAG79
TAG79:
mflo $4
mflo $2
bgez $2, TAG80
lui $2, 10
TAG80:
lui $2, 15
andi $3, $2, 4
mthi $2
lui $2, 11
TAG81:
sll $3, $2, 0
sltu $3, $3, $3
mthi $2
mflo $4
TAG82:
mult $4, $4
lui $2, 14
lui $3, 5
beq $4, $4, TAG83
TAG83:
lui $3, 11
addiu $4, $3, 14
bgtz $3, TAG84
sll $0, $0, 0
TAG84:
divu $4, $4
mfhi $3
lui $1, 8
sll $0, $0, 0
TAG85:
bltz $2, TAG86
mult $2, $2
andi $3, $2, 8
mult $3, $2
TAG86:
andi $4, $3, 10
sll $1, $4, 5
blez $3, TAG87
sub $2, $1, $3
TAG87:
bne $2, $2, TAG88
sh $2, 0($2)
sw $2, 0($2)
and $1, $2, $2
TAG88:
mthi $1
blez $1, TAG89
mflo $2
sltiu $3, $2, 5
TAG89:
lh $1, 0($3)
bne $3, $1, TAG90
multu $1, $1
lb $3, 0($3)
TAG90:
bne $3, $3, TAG91
lb $3, 0($3)
sh $3, 0($3)
mthi $3
TAG91:
bne $3, $3, TAG92
nor $3, $3, $3
beq $3, $3, TAG92
mflo $3
TAG92:
bne $3, $3, TAG93
or $4, $3, $3
and $3, $3, $3
mflo $4
TAG93:
subu $3, $4, $4
mult $3, $3
lui $2, 8
lui $3, 14
TAG94:
sll $0, $0, 0
sll $0, $0, 0
mthi $3
mult $3, $3
TAG95:
bne $3, $3, TAG96
sll $0, $0, 0
bne $3, $3, TAG96
sltu $4, $3, $3
TAG96:
bne $4, $4, TAG97
sra $4, $4, 4
mflo $1
sw $4, 0($4)
TAG97:
lui $4, 12
sll $0, $0, 0
blez $4, TAG98
srl $1, $1, 9
TAG98:
bltz $1, TAG99
slt $1, $1, $1
mflo $2
mflo $3
TAG99:
mfhi $1
bgez $1, TAG100
mtlo $1
mthi $3
TAG100:
mthi $1
sh $1, -196($1)
addu $3, $1, $1
lh $2, -392($3)
TAG101:
beq $2, $2, TAG102
lui $3, 2
lbu $3, 0($2)
bltz $3, TAG102
TAG102:
mflo $1
and $2, $3, $3
lui $4, 6
beq $3, $4, TAG103
TAG103:
srav $3, $4, $4
mflo $1
srl $1, $3, 12
sll $0, $0, 0
TAG104:
sllv $1, $2, $2
bne $1, $2, TAG105
ori $1, $1, 11
sll $0, $0, 0
TAG105:
mult $1, $1
sltiu $2, $1, 15
mtlo $1
lui $2, 7
TAG106:
mtlo $2
mflo $1
mflo $1
beq $1, $2, TAG107
TAG107:
sll $0, $0, 0
andi $3, $1, 5
bgez $1, TAG108
sra $3, $3, 15
TAG108:
multu $3, $3
lui $4, 6
mtlo $3
sw $3, 0($3)
TAG109:
blez $4, TAG110
lui $3, 5
lui $2, 0
bne $2, $3, TAG110
TAG110:
sw $2, 0($2)
sll $1, $2, 5
beq $2, $2, TAG111
lhu $1, 0($1)
TAG111:
lui $2, 3
beq $1, $1, TAG112
srlv $4, $1, $1
add $4, $1, $2
TAG112:
lbu $1, 0($4)
sw $4, 0($1)
mult $4, $4
addu $1, $1, $4
TAG113:
bltz $1, TAG114
mfhi $3
beq $1, $3, TAG114
sb $3, 0($3)
TAG114:
mflo $2
sw $3, 0($2)
mflo $2
xor $1, $2, $3
TAG115:
bltz $1, TAG116
lw $4, 0($1)
lb $4, 0($1)
mflo $4
TAG116:
sh $4, 0($4)
mflo $4
mtlo $4
beq $4, $4, TAG117
TAG117:
sh $4, 0($4)
sb $4, 0($4)
sltu $4, $4, $4
sw $4, 0($4)
TAG118:
bgtz $4, TAG119
lbu $4, 0($4)
blez $4, TAG119
slt $3, $4, $4
TAG119:
bltz $3, TAG120
lhu $3, 0($3)
lbu $3, 0($3)
ori $2, $3, 11
TAG120:
srav $3, $2, $2
beq $2, $3, TAG121
mthi $2
bltz $3, TAG121
TAG121:
lb $3, 0($3)
lui $1, 11
lui $1, 11
beq $1, $1, TAG122
TAG122:
mthi $1
srl $1, $1, 6
sw $1, -11264($1)
bltz $1, TAG123
TAG123:
sltiu $1, $1, 14
xor $3, $1, $1
multu $1, $1
bne $1, $1, TAG124
TAG124:
srl $4, $3, 7
or $1, $4, $3
mult $1, $3
mtlo $4
TAG125:
mflo $3
addi $4, $3, 0
mthi $1
multu $1, $4
TAG126:
bgtz $4, TAG127
multu $4, $4
sra $3, $4, 15
bgtz $4, TAG127
TAG127:
lb $4, 0($3)
beq $4, $4, TAG128
multu $3, $3
bne $3, $4, TAG128
TAG128:
sllv $2, $4, $4
sh $2, 0($4)
mult $4, $4
sh $2, 0($4)
TAG129:
slti $1, $2, 10
bne $2, $1, TAG130
sll $2, $2, 1
mfhi $2
TAG130:
mult $2, $2
lui $3, 11
blez $2, TAG131
addu $1, $3, $2
TAG131:
mtlo $1
and $2, $1, $1
sll $0, $0, 0
slti $4, $1, 7
TAG132:
mtlo $4
sltiu $1, $4, 10
bne $1, $1, TAG133
addiu $4, $1, 3
TAG133:
bne $4, $4, TAG134
sh $4, 0($4)
lb $2, 0($4)
mflo $4
TAG134:
mtlo $4
multu $4, $4
lbu $3, 0($4)
sltiu $2, $3, 3
TAG135:
sb $2, 0($2)
sb $2, 0($2)
srav $3, $2, $2
multu $2, $2
TAG136:
beq $3, $3, TAG137
lb $2, 0($3)
mfhi $4
lhu $3, 0($2)
TAG137:
mflo $1
sw $3, 0($3)
lui $1, 6
sll $0, $0, 0
TAG138:
sll $0, $0, 0
sh $1, 0($4)
mthi $1
mtlo $1
TAG139:
mfhi $1
bltz $4, TAG140
sll $0, $0, 0
sw $4, 0($4)
TAG140:
bgez $1, TAG141
sll $0, $0, 0
sw $1, 0($1)
mtlo $1
TAG141:
mtlo $1
sltu $2, $1, $1
xor $3, $2, $1
sub $2, $3, $2
TAG142:
addu $4, $2, $2
div $4, $4
mult $4, $4
xor $4, $4, $2
TAG143:
lui $1, 8
sll $0, $0, 0
lui $4, 2
sll $0, $0, 0
TAG144:
beq $4, $4, TAG145
lui $2, 4
lhu $4, 0($4)
sh $4, 0($2)
TAG145:
beq $4, $4, TAG146
multu $4, $4
lui $4, 13
beq $4, $4, TAG146
TAG146:
sll $0, $0, 0
multu $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG147:
slt $2, $1, $1
sll $0, $0, 0
sh $1, 0($2)
addu $4, $1, $2
TAG148:
div $4, $4
mthi $4
mfhi $3
multu $3, $3
TAG149:
bltz $3, TAG150
lui $3, 10
mfhi $3
addu $3, $3, $3
TAG150:
bne $3, $3, TAG151
mflo $1
mfhi $4
bltz $4, TAG151
TAG151:
sh $4, 0($4)
nor $3, $4, $4
bltz $3, TAG152
srl $2, $3, 4
TAG152:
bltz $2, TAG153
sllv $4, $2, $2
subu $4, $4, $2
addu $1, $2, $2
TAG153:
srav $4, $1, $1
sb $1, 0($4)
divu $1, $4
ori $3, $4, 6
TAG154:
lbu $4, 0($3)
sb $4, 0($3)
mfhi $2
mflo $2
TAG155:
bltz $2, TAG156
sra $3, $2, 15
blez $2, TAG156
srlv $3, $3, $2
TAG156:
multu $3, $3
mfhi $4
mfhi $4
slti $3, $3, 3
TAG157:
lbu $1, 0($3)
nor $1, $1, $3
sra $1, $3, 11
bne $1, $1, TAG158
TAG158:
mfhi $1
sub $2, $1, $1
mtlo $1
srav $2, $1, $1
TAG159:
lui $1, 9
sll $0, $0, 0
lui $3, 9
mfhi $3
TAG160:
addiu $4, $3, 13
mthi $4
mfhi $1
mthi $1
TAG161:
slti $4, $1, 4
mfhi $4
beq $1, $4, TAG162
multu $4, $4
TAG162:
mult $4, $4
lbu $1, 0($4)
mflo $2
mfhi $4
TAG163:
lui $2, 14
sll $0, $0, 0
sb $4, 0($4)
blez $2, TAG164
TAG164:
mfhi $3
sll $4, $3, 11
lui $4, 5
sll $0, $0, 0
TAG165:
sll $0, $0, 0
bgez $4, TAG166
mthi $4
blez $4, TAG166
TAG166:
lui $4, 0
addiu $4, $4, 8
multu $4, $4
mthi $4
TAG167:
sw $4, 0($4)
beq $4, $4, TAG168
srl $1, $4, 15
bgez $4, TAG168
TAG168:
lui $2, 3
nor $4, $2, $1
blez $4, TAG169
xori $2, $1, 9
TAG169:
xor $2, $2, $2
or $4, $2, $2
lui $4, 10
addu $2, $4, $2
TAG170:
multu $2, $2
sllv $3, $2, $2
xor $3, $2, $3
mflo $2
TAG171:
lhu $1, 0($2)
sh $1, 0($2)
lui $4, 14
lb $4, 0($2)
TAG172:
nor $4, $4, $4
mtlo $4
mult $4, $4
bne $4, $4, TAG173
TAG173:
or $1, $4, $4
div $1, $4
beq $1, $4, TAG174
div $1, $1
TAG174:
ori $4, $1, 1
sw $1, 1($4)
lui $2, 13
and $2, $4, $2
TAG175:
sll $0, $0, 0
mtlo $2
bgez $2, TAG176
sll $0, $0, 0
TAG176:
multu $4, $4
mult $4, $4
lh $1, 1($4)
multu $4, $4
TAG177:
sb $1, 1($1)
and $2, $1, $1
lui $2, 6
lw $2, 1($1)
TAG178:
sltu $2, $2, $2
mult $2, $2
lui $4, 0
mfhi $1
TAG179:
lui $3, 0
mtlo $1
mult $1, $1
mflo $3
TAG180:
ori $4, $3, 11
mfhi $4
ori $1, $4, 5
mult $4, $4
TAG181:
sb $1, 0($1)
lui $1, 2
beq $1, $1, TAG182
nor $4, $1, $1
TAG182:
blez $4, TAG183
mthi $4
mfhi $4
lb $4, 0($4)
TAG183:
multu $4, $4
sll $0, $0, 0
lui $1, 11
sra $3, $1, 2
TAG184:
lui $2, 5
lui $3, 11
sll $0, $0, 0
sll $0, $0, 0
TAG185:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
sltiu $1, $4, 11
TAG186:
lb $1, 0($1)
sh $1, 1($1)
subu $4, $1, $1
sh $1, 1($1)
TAG187:
sh $4, 0($4)
mfhi $4
bltz $4, TAG188
sltiu $4, $4, 15
TAG188:
sw $4, 0($4)
bltz $4, TAG189
multu $4, $4
lb $2, 0($4)
TAG189:
lui $3, 10
mthi $2
mfhi $3
bgez $3, TAG190
TAG190:
lh $2, 0($3)
multu $3, $3
lb $3, 0($2)
sb $2, 0($3)
TAG191:
lh $3, 0($3)
sll $1, $3, 5
sh $3, 0($3)
lb $4, 0($3)
TAG192:
lb $4, 0($4)
mult $4, $4
mthi $4
multu $4, $4
TAG193:
bgez $4, TAG194
andi $2, $4, 7
bne $2, $2, TAG194
sltiu $4, $4, 0
TAG194:
beq $4, $4, TAG195
lhu $1, 0($4)
lh $2, 0($1)
sh $1, 0($4)
TAG195:
bgez $2, TAG196
sh $2, 0($2)
sb $2, 0($2)
mtlo $2
TAG196:
sw $2, 0($2)
sw $2, 0($2)
lui $4, 3
lw $4, 0($2)
TAG197:
lb $3, 0($4)
lhu $4, 0($3)
mtlo $4
mtlo $4
TAG198:
sw $4, 0($4)
mtlo $4
lh $2, 0($4)
mfhi $1
TAG199:
mflo $4
bne $4, $4, TAG200
slt $1, $4, $4
lw $1, 0($4)
TAG200:
bgtz $1, TAG201
mfhi $3
bne $3, $1, TAG201
mthi $3
TAG201:
andi $4, $3, 2
addi $2, $3, 7
blez $2, TAG202
mfhi $3
TAG202:
bgez $3, TAG203
lui $1, 0
multu $1, $1
blez $3, TAG203
TAG203:
lhu $4, 0($1)
beq $1, $4, TAG204
mfhi $1
bgez $1, TAG204
TAG204:
subu $4, $1, $1
mult $4, $1
lb $3, 0($4)
lb $2, 0($1)
TAG205:
bne $2, $2, TAG206
mflo $1
lui $1, 12
mthi $1
TAG206:
mflo $1
mfhi $3
lui $1, 14
mtlo $1
TAG207:
lui $3, 0
sll $0, $0, 0
sll $0, $0, 0
sll $1, $3, 8
TAG208:
multu $1, $1
multu $1, $1
beq $1, $1, TAG209
mflo $4
TAG209:
mflo $4
addiu $3, $4, 1
nor $2, $4, $4
mfhi $2
TAG210:
mtlo $2
mthi $2
mthi $2
lui $1, 14
TAG211:
mthi $1
bgtz $1, TAG212
divu $1, $1
mthi $1
TAG212:
beq $1, $1, TAG213
lui $2, 8
lui $4, 13
lui $4, 4
TAG213:
mfhi $1
srav $2, $4, $1
add $1, $2, $1
sh $1, 0($2)
TAG214:
lui $4, 3
mfhi $4
sll $4, $4, 1
mult $4, $1
TAG215:
mthi $4
lhu $3, 0($4)
bgtz $3, TAG216
mult $4, $4
TAG216:
bgtz $3, TAG217
multu $3, $3
mflo $4
slt $1, $4, $3
TAG217:
lui $1, 10
lui $2, 6
addiu $4, $1, 2
divu $2, $4
TAG218:
sll $0, $0, 0
sll $3, $4, 6
mult $3, $4
srl $1, $3, 0
TAG219:
sllv $2, $1, $1
divu $1, $2
slti $1, $2, 4
multu $1, $1
TAG220:
lbu $4, 0($1)
sll $1, $4, 3
bgez $1, TAG221
addi $2, $1, 3
TAG221:
beq $2, $2, TAG222
lui $3, 2
beq $2, $3, TAG222
sb $2, 0($3)
TAG222:
div $3, $3
divu $3, $3
addiu $4, $3, 11
mult $3, $3
TAG223:
bne $4, $4, TAG224
mthi $4
srav $2, $4, $4
xori $3, $4, 10
TAG224:
mflo $1
lui $1, 4
or $4, $3, $1
addiu $2, $1, 9
TAG225:
beq $2, $2, TAG226
divu $2, $2
mflo $4
sw $4, 0($4)
TAG226:
mflo $1
beq $4, $1, TAG227
andi $1, $4, 8
sh $4, 0($1)
TAG227:
lb $3, 0($1)
beq $3, $3, TAG228
sltiu $2, $1, 2
or $1, $2, $2
TAG228:
lh $4, 0($1)
bne $4, $1, TAG229
lui $4, 2
sb $4, 0($4)
TAG229:
mthi $4
mflo $3
bgez $4, TAG230
lui $3, 5
TAG230:
sll $0, $0, 0
beq $3, $3, TAG231
addiu $1, $3, 1
sw $1, 0($1)
TAG231:
divu $1, $1
bne $1, $1, TAG232
mtlo $1
mtlo $1
TAG232:
multu $1, $1
srl $4, $1, 6
lw $2, -5120($4)
lui $2, 3
TAG233:
sll $0, $0, 0
sll $0, $0, 0
div $4, $4
lui $4, 13
TAG234:
mthi $4
srl $4, $4, 8
srl $1, $4, 5
slti $2, $1, 3
TAG235:
mflo $1
lui $2, 3
beq $1, $1, TAG236
sll $2, $1, 8
TAG236:
subu $2, $2, $2
addu $3, $2, $2
sh $3, 0($2)
beq $2, $3, TAG237
TAG237:
sra $3, $3, 10
multu $3, $3
mtlo $3
beq $3, $3, TAG238
TAG238:
srav $1, $3, $3
sw $1, 0($1)
beq $3, $1, TAG239
lui $1, 0
TAG239:
mflo $3
bgtz $3, TAG240
srl $2, $1, 6
sw $2, 0($2)
TAG240:
xori $1, $2, 13
mult $2, $1
mult $2, $1
bne $2, $1, TAG241
TAG241:
sb $1, 0($1)
lui $1, 4
divu $1, $1
lui $2, 5
TAG242:
mtlo $2
div $2, $2
mthi $2
beq $2, $2, TAG243
TAG243:
sll $0, $0, 0
lui $4, 13
mfhi $4
bltz $2, TAG244
TAG244:
sll $0, $0, 0
xori $2, $4, 10
sll $0, $0, 0
xori $4, $4, 1
TAG245:
mthi $4
bne $4, $4, TAG246
mflo $3
andi $1, $3, 15
TAG246:
bne $1, $1, TAG247
mfhi $2
lb $4, 0($1)
lhu $4, 0($4)
TAG247:
add $1, $4, $4
bne $1, $1, TAG248
srl $3, $1, 15
mthi $4
TAG248:
beq $3, $3, TAG249
lhu $2, 0($3)
xor $4, $2, $2
lw $3, 0($3)
TAG249:
slti $2, $3, 3
lbu $4, 0($2)
bne $4, $2, TAG250
mfhi $3
TAG250:
sh $3, 0($3)
sll $4, $3, 11
bne $4, $4, TAG251
lui $2, 10
TAG251:
sll $0, $0, 0
mtlo $3
mult $3, $3
mfhi $1
TAG252:
addu $3, $1, $1
xori $2, $3, 2
sw $3, 0($3)
blez $2, TAG253
TAG253:
div $2, $2
xori $3, $2, 10
andi $3, $3, 6
lhu $1, 0($2)
TAG254:
lw $3, 0($1)
blez $3, TAG255
sb $1, 0($1)
bgez $3, TAG255
TAG255:
subu $4, $3, $3
lui $3, 12
mthi $4
multu $4, $4
TAG256:
sll $4, $3, 5
beq $3, $4, TAG257
sll $0, $0, 0
sll $0, $0, 0
TAG257:
mtlo $2
lui $4, 5
divu $2, $4
mthi $4
TAG258:
mthi $4
bgez $4, TAG259
addiu $2, $4, 11
xori $3, $2, 13
TAG259:
bgtz $3, TAG260
ori $4, $3, 14
sb $3, 0($4)
multu $4, $4
TAG260:
bne $4, $4, TAG261
sll $0, $0, 0
bgez $4, TAG261
mtlo $4
TAG261:
blez $4, TAG262
mflo $2
subu $1, $4, $4
or $3, $2, $2
TAG262:
mfhi $4
bgez $4, TAG263
mult $4, $3
beq $3, $4, TAG263
TAG263:
mfhi $1
beq $1, $4, TAG264
mthi $1
srl $2, $4, 13
TAG264:
lbu $2, 0($2)
bgez $2, TAG265
mflo $4
lb $2, 0($4)
TAG265:
lui $1, 12
div $2, $1
lbu $2, 0($2)
lh $1, 0($2)
TAG266:
lhu $1, 0($1)
blez $1, TAG267
sub $2, $1, $1
mflo $4
TAG267:
sll $0, $0, 0
lui $4, 2
lui $4, 2
sll $0, $0, 0
TAG268:
mflo $3
slti $3, $4, 2
lui $3, 8
div $3, $3
TAG269:
sra $1, $3, 11
xor $4, $1, $1
sh $3, 0($4)
or $3, $3, $4
TAG270:
subu $2, $3, $3
beq $3, $3, TAG271
mthi $2
bgtz $2, TAG271
TAG271:
multu $2, $2
mtlo $2
mfhi $1
lh $3, 0($1)
TAG272:
lbu $2, 0($3)
mflo $2
lui $4, 15
multu $2, $3
TAG273:
beq $4, $4, TAG274
mflo $4
lui $3, 9
sb $3, 0($4)
TAG274:
mult $3, $3
sll $3, $3, 11
mtlo $3
mfhi $2
TAG275:
mult $2, $2
sra $1, $2, 12
sub $1, $2, $2
bne $2, $1, TAG276
TAG276:
sltu $3, $1, $1
sb $3, 0($3)
mthi $3
lui $2, 8
TAG277:
bne $2, $2, TAG278
mult $2, $2
mflo $2
sh $2, 0($2)
TAG278:
xori $2, $2, 13
slt $1, $2, $2
nor $1, $2, $1
lui $3, 8
TAG279:
mthi $3
subu $3, $3, $3
beq $3, $3, TAG280
mflo $4
TAG280:
lui $2, 1
lui $2, 14
lui $2, 0
bltz $2, TAG281
TAG281:
lui $4, 5
mflo $2
mtlo $2
sll $0, $0, 0
TAG282:
mflo $3
sh $2, 0($2)
slti $4, $3, 3
mflo $3
TAG283:
mtlo $3
bltz $3, TAG284
lh $2, 0($3)
lui $1, 4
TAG284:
addu $4, $1, $1
sltiu $2, $4, 7
mtlo $1
srl $2, $2, 14
TAG285:
bne $2, $2, TAG286
sh $2, 0($2)
sw $2, 0($2)
lhu $1, 0($2)
TAG286:
mthi $1
mult $1, $1
srlv $3, $1, $1
sw $1, 0($1)
TAG287:
mult $3, $3
mthi $3
and $3, $3, $3
mthi $3
TAG288:
sb $3, 0($3)
mflo $3
mult $3, $3
srlv $3, $3, $3
TAG289:
mult $3, $3
addiu $3, $3, 12
lw $2, 0($3)
nor $2, $3, $2
TAG290:
multu $2, $2
lui $3, 2
divu $3, $3
mflo $2
TAG291:
sb $2, 0($2)
mthi $2
sb $2, 0($2)
lui $1, 2
TAG292:
bne $1, $1, TAG293
multu $1, $1
sll $0, $0, 0
divu $2, $2
TAG293:
srl $4, $2, 5
mtlo $2
mult $4, $2
mult $2, $2
TAG294:
and $2, $4, $4
lui $1, 9
multu $4, $4
mult $4, $4
TAG295:
mthi $1
sll $0, $0, 0
blez $1, TAG296
lui $4, 12
TAG296:
bne $4, $4, TAG297
lui $4, 14
bltz $4, TAG297
slti $4, $4, 13
TAG297:
multu $4, $4
mthi $4
sub $3, $4, $4
mtlo $4
TAG298:
bne $3, $3, TAG299
mflo $4
mtlo $3
lb $2, 0($3)
TAG299:
lhu $4, 0($2)
lui $3, 12
multu $3, $2
sll $0, $0, 0
TAG300:
sll $0, $0, 0
subu $2, $3, $3
mtlo $3
addiu $3, $2, 7
TAG301:
multu $3, $3
sb $3, 0($3)
xor $4, $3, $3
bgez $3, TAG302
TAG302:
lbu $2, 0($4)
multu $4, $4
mult $2, $4
lw $2, 0($4)
TAG303:
sllv $4, $2, $2
andi $4, $2, 4
bne $2, $4, TAG304
mflo $1
TAG304:
bne $1, $1, TAG305
srlv $1, $1, $1
mfhi $2
addiu $2, $1, 5
TAG305:
sb $2, 0($2)
lui $4, 15
mflo $2
lui $2, 15
TAG306:
slt $4, $2, $2
sw $2, 0($4)
sll $0, $0, 0
sw $2, 0($4)
TAG307:
bgtz $4, TAG308
lh $1, 0($4)
slti $4, $4, 15
srlv $1, $4, $4
TAG308:
or $3, $1, $1
addiu $1, $3, 15
lbu $3, 0($1)
bgtz $3, TAG309
TAG309:
srlv $3, $3, $3
bne $3, $3, TAG310
lui $1, 14
subu $1, $3, $3
TAG310:
mflo $2
sw $2, 0($2)
sb $2, 0($1)
mfhi $4
TAG311:
lw $2, 0($4)
beq $4, $4, TAG312
lui $3, 13
sllv $1, $3, $2
TAG312:
bgez $1, TAG313
xori $1, $1, 13
lhu $1, 0($1)
sra $4, $1, 7
TAG313:
lui $3, 9
ori $4, $3, 11
bgtz $3, TAG314
sll $0, $0, 0
TAG314:
bne $3, $3, TAG315
sll $0, $0, 0
beq $1, $3, TAG315
sll $0, $0, 0
TAG315:
mthi $1
lui $2, 9
bne $2, $1, TAG316
mthi $1
TAG316:
blez $2, TAG317
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG317:
sll $0, $0, 0
srl $3, $4, 2
bltz $4, TAG318
andi $3, $3, 13
TAG318:
mthi $3
mtlo $3
lbu $1, 0($3)
mfhi $1
TAG319:
sb $1, 0($1)
bgtz $1, TAG320
sb $1, 0($1)
mtlo $1
TAG320:
beq $1, $1, TAG321
lui $3, 3
lh $3, 0($3)
sb $3, 0($3)
TAG321:
mthi $3
nor $3, $3, $3
lui $1, 10
lui $3, 5
TAG322:
xori $4, $3, 5
lui $4, 10
lui $1, 6
addiu $2, $1, 5
TAG323:
mult $2, $2
mult $2, $2
sll $0, $0, 0
beq $2, $3, TAG324
TAG324:
multu $3, $3
bne $3, $3, TAG325
mtlo $3
lui $4, 14
TAG325:
mult $4, $4
addiu $3, $4, 1
bltz $3, TAG326
mflo $1
TAG326:
beq $1, $1, TAG327
lui $1, 11
sll $2, $1, 2
bgtz $1, TAG327
TAG327:
mult $2, $2
lui $2, 7
bne $2, $2, TAG328
mfhi $2
TAG328:
sltiu $3, $2, 3
subu $2, $2, $2
sll $1, $3, 13
multu $1, $3
TAG329:
lui $3, 0
sltu $2, $1, $3
mfhi $1
srav $3, $1, $1
TAG330:
bne $3, $3, TAG331
slti $1, $3, 7
sltu $1, $3, $3
mthi $1
TAG331:
sw $1, 0($1)
lui $1, 8
sll $0, $0, 0
sll $0, $0, 0
TAG332:
mthi $1
srav $2, $1, $1
sll $0, $0, 0
lui $1, 11
TAG333:
sll $0, $0, 0
mflo $1
mthi $1
sb $4, 0($1)
TAG334:
lui $3, 1
mtlo $3
sltiu $2, $3, 10
lui $4, 10
TAG335:
sll $2, $4, 2
lui $4, 6
beq $4, $4, TAG336
mtlo $4
TAG336:
srl $4, $4, 15
mfhi $3
add $1, $3, $4
multu $1, $4
TAG337:
bgtz $1, TAG338
mfhi $2
mtlo $2
bgez $2, TAG338
TAG338:
mfhi $3
addiu $3, $3, 3
addiu $4, $3, 2
lui $2, 10
TAG339:
mthi $2
beq $2, $2, TAG340
slti $4, $2, 0
lbu $2, 0($4)
TAG340:
sll $0, $0, 0
bne $2, $2, TAG341
sll $0, $0, 0
lui $1, 0
TAG341:
bne $1, $1, TAG342
mfhi $4
slti $1, $1, 3
bne $1, $1, TAG342
TAG342:
mtlo $1
nor $4, $1, $1
bgtz $1, TAG343
mflo $2
TAG343:
beq $2, $2, TAG344
subu $1, $2, $2
blez $2, TAG344
sh $2, 0($1)
TAG344:
bltz $1, TAG345
lui $4, 15
beq $1, $1, TAG345
sltu $4, $4, $1
TAG345:
sll $3, $4, 1
mtlo $3
sh $3, 0($3)
sh $3, 0($4)
TAG346:
mthi $3
mtlo $3
xori $3, $3, 10
sh $3, 0($3)
TAG347:
bne $3, $3, TAG348
lui $1, 2
mflo $1
mult $3, $3
TAG348:
lbu $2, 0($1)
andi $2, $2, 7
sb $1, 0($1)
mthi $1
TAG349:
sw $2, 0($2)
mflo $3
or $4, $3, $2
sh $4, 0($3)
TAG350:
lui $2, 9
slt $3, $2, $2
mfhi $1
addiu $4, $1, 13
TAG351:
sb $4, 0($4)
mthi $4
sb $4, 0($4)
mfhi $1
TAG352:
slti $1, $1, 12
addiu $3, $1, 1
sb $1, 0($1)
lui $4, 8
TAG353:
sll $0, $0, 0
lui $3, 3
mthi $4
sll $0, $0, 0
TAG354:
subu $3, $3, $3
addu $2, $3, $3
mflo $2
mtlo $2
TAG355:
mtlo $2
lui $1, 11
mfhi $4
sltiu $1, $1, 13
TAG356:
xor $2, $1, $1
mult $1, $2
sltiu $3, $2, 7
blez $1, TAG357
TAG357:
sra $2, $3, 13
mthi $3
bgtz $2, TAG358
mtlo $3
TAG358:
multu $2, $2
multu $2, $2
mflo $2
lw $3, 0($2)
TAG359:
sw $3, 0($3)
sw $3, 0($3)
lui $3, 12
mtlo $3
TAG360:
addu $2, $3, $3
mtlo $2
mthi $3
sll $0, $0, 0
TAG361:
mtlo $2
mtlo $2
sltiu $4, $2, 15
mtlo $2
TAG362:
xor $4, $4, $4
mthi $4
lb $2, 0($4)
mflo $1
TAG363:
lui $2, 0
beq $2, $2, TAG364
div $2, $1
andi $4, $2, 9
TAG364:
blez $4, TAG365
add $3, $4, $4
div $3, $4
bgtz $4, TAG365
TAG365:
lui $4, 15
sh $3, 0($3)
mult $4, $3
sll $0, $0, 0
TAG366:
sll $0, $0, 0
and $3, $4, $4
multu $3, $4
multu $4, $4
TAG367:
lui $4, 6
sll $0, $0, 0
multu $4, $1
srlv $4, $4, $1
TAG368:
sll $0, $0, 0
sll $0, $0, 0
lui $4, 4
andi $1, $4, 9
TAG369:
and $2, $1, $1
bne $1, $2, TAG370
mult $2, $1
sltiu $2, $1, 9
TAG370:
lui $2, 15
beq $2, $2, TAG371
lui $4, 11
beq $4, $4, TAG371
TAG371:
multu $4, $4
bne $4, $4, TAG372
multu $4, $4
lui $2, 4
TAG372:
mtlo $2
multu $2, $2
div $2, $2
sll $0, $0, 0
TAG373:
lui $1, 0
blez $3, TAG374
or $3, $1, $1
andi $4, $3, 0
TAG374:
lhu $1, 0($4)
bne $1, $4, TAG375
mthi $4
lhu $3, 0($4)
TAG375:
mult $3, $3
blez $3, TAG376
sh $3, 0($3)
mfhi $3
TAG376:
bne $3, $3, TAG377
slti $2, $3, 1
xori $3, $3, 5
sltiu $3, $2, 6
TAG377:
mtlo $3
mult $3, $3
addiu $4, $3, 14
bgez $4, TAG378
TAG378:
lui $1, 4
addu $3, $1, $1
sb $4, 0($4)
beq $4, $3, TAG379
TAG379:
slt $4, $3, $3
mfhi $3
sltiu $2, $3, 7
lui $1, 6
TAG380:
beq $1, $1, TAG381
mflo $3
lui $3, 4
mtlo $3
TAG381:
bne $3, $3, TAG382
multu $3, $3
sb $3, 0($3)
sb $3, 0($3)
TAG382:
sb $3, 0($3)
bne $3, $3, TAG383
lui $2, 12
bgez $2, TAG383
TAG383:
divu $2, $2
blez $2, TAG384
multu $2, $2
mthi $2
TAG384:
bltz $2, TAG385
addu $4, $2, $2
sll $0, $0, 0
sll $0, $0, 0
TAG385:
lui $1, 1
addiu $3, $1, 6
bne $1, $1, TAG386
mult $1, $3
TAG386:
multu $3, $3
sll $0, $0, 0
lui $1, 4
lui $4, 0
TAG387:
srav $4, $4, $4
lbu $1, 0($4)
bne $4, $4, TAG388
mtlo $1
TAG388:
sllv $2, $1, $1
sb $1, 0($1)
sb $2, 0($2)
sw $1, 0($2)
TAG389:
mthi $2
mthi $2
beq $2, $2, TAG390
sh $2, 0($2)
TAG390:
ori $2, $2, 15
divu $2, $2
sb $2, 0($2)
xor $1, $2, $2
TAG391:
lhu $4, 0($1)
sw $1, 0($1)
sra $3, $1, 15
lui $3, 6
TAG392:
srav $2, $3, $3
bgtz $2, TAG393
subu $4, $3, $2
sb $3, 0($4)
TAG393:
sh $4, 0($4)
beq $4, $4, TAG394
mthi $4
mfhi $1
TAG394:
bltz $1, TAG395
addu $1, $1, $1
lui $2, 4
lui $1, 12
TAG395:
srlv $2, $1, $1
bgtz $2, TAG396
sll $0, $0, 0
mthi $1
TAG396:
slt $3, $2, $2
bgez $3, TAG397
mtlo $3
lui $2, 14
TAG397:
sll $0, $0, 0
lui $2, 10
mult $2, $2
sll $0, $0, 0
TAG398:
lui $2, 3
srav $4, $2, $2
mfhi $2
beq $4, $2, TAG399
TAG399:
mfhi $4
addiu $3, $4, 4
lw $3, 0($4)
bne $3, $4, TAG400
TAG400:
lui $4, 8
sll $0, $0, 0
mtlo $3
bltz $4, TAG401
TAG401:
sll $0, $0, 0
mthi $4
mfhi $2
beq $2, $4, TAG402
TAG402:
mtlo $2
sll $0, $0, 0
bltz $2, TAG403
multu $2, $2
TAG403:
mtlo $2
bne $2, $2, TAG404
div $2, $2
or $3, $2, $2
TAG404:
sll $0, $0, 0
bne $3, $3, TAG405
sll $0, $0, 0
bgtz $3, TAG405
TAG405:
mflo $4
xor $3, $2, $4
mthi $2
blez $3, TAG406
TAG406:
mfhi $4
srl $1, $4, 10
lui $2, 13
bltz $1, TAG407
TAG407:
lui $2, 8
sll $3, $2, 11
bne $2, $2, TAG408
mult $2, $3
TAG408:
bne $3, $3, TAG409
sltiu $1, $3, 12
blez $3, TAG409
mthi $3
TAG409:
lhu $3, 0($1)
multu $3, $3
sh $1, 0($3)
lui $1, 15
TAG410:
bgtz $1, TAG411
divu $1, $1
srl $2, $1, 8
sh $1, 0($1)
TAG411:
addu $1, $2, $2
addu $2, $2, $2
bltz $2, TAG412
divu $2, $2
TAG412:
div $2, $2
beq $2, $2, TAG413
sra $3, $2, 1
multu $3, $3
TAG413:
beq $3, $3, TAG414
sll $0, $0, 0
xori $4, $1, 5
sh $1, 0($1)
TAG414:
mflo $2
mfhi $2
beq $2, $2, TAG415
lui $1, 11
TAG415:
bgez $1, TAG416
srl $1, $1, 15
bne $1, $1, TAG416
mthi $1
TAG416:
lui $3, 14
mthi $1
bne $1, $3, TAG417
sll $0, $0, 0
TAG417:
lui $4, 3
mflo $4
sb $4, 0($4)
multu $4, $2
TAG418:
mthi $4
andi $2, $4, 10
mfhi $3
lbu $2, 0($2)
TAG419:
slti $2, $2, 8
mflo $4
addu $1, $2, $2
bgez $2, TAG420
TAG420:
sh $1, 0($1)
mflo $3
lui $4, 2
lw $4, 0($3)
TAG421:
mult $4, $4
mult $4, $4
bne $4, $4, TAG422
mfhi $2
TAG422:
lui $2, 15
mthi $2
beq $2, $2, TAG423
sll $0, $0, 0
TAG423:
div $2, $2
div $2, $2
lui $1, 0
beq $2, $2, TAG424
TAG424:
addiu $1, $1, 1
blez $1, TAG425
lui $1, 4
addu $4, $1, $1
TAG425:
sltu $1, $4, $4
mfhi $1
mthi $1
mflo $1
TAG426:
sb $1, 0($1)
bgez $1, TAG427
ori $2, $1, 4
mtlo $1
TAG427:
mthi $2
lui $2, 4
beq $2, $2, TAG428
div $2, $2
TAG428:
bne $2, $2, TAG429
mult $2, $2
nor $4, $2, $2
sll $0, $0, 0
TAG429:
sll $0, $0, 0
andi $2, $4, 0
bne $2, $2, TAG430
lui $4, 13
TAG430:
mflo $1
sh $1, 0($1)
sll $0, $0, 0
bne $1, $1, TAG431
TAG431:
multu $1, $1
mtlo $1
mthi $1
sb $1, 0($1)
TAG432:
lui $3, 8
sb $1, 0($1)
lbu $1, 0($1)
and $4, $1, $1
TAG433:
mult $4, $4
sltu $4, $4, $4
mult $4, $4
mult $4, $4
TAG434:
lw $3, 0($4)
mfhi $3
beq $4, $3, TAG435
sh $4, 0($3)
TAG435:
sb $3, 0($3)
lb $1, 0($3)
mtlo $3
mflo $2
TAG436:
mfhi $2
mult $2, $2
lui $3, 9
bgez $2, TAG437
TAG437:
mthi $3
bne $3, $3, TAG438
and $3, $3, $3
xori $1, $3, 10
TAG438:
bne $1, $1, TAG439
mthi $1
nor $4, $1, $1
mfhi $1
TAG439:
bgtz $1, TAG440
mfhi $2
mflo $4
xor $2, $4, $2
TAG440:
sll $0, $0, 0
bltz $2, TAG441
sltiu $3, $2, 5
lhu $4, 0($3)
TAG441:
bne $4, $4, TAG442
mflo $3
sb $3, 0($3)
multu $4, $4
TAG442:
lb $4, 0($3)
multu $4, $4
mfhi $1
addu $3, $3, $3
TAG443:
bltz $3, TAG444
xor $1, $3, $3
andi $2, $1, 9
beq $3, $2, TAG444
TAG444:
addi $1, $2, 14
bne $2, $2, TAG445
add $3, $2, $1
lbu $4, 0($1)
TAG445:
mult $4, $4
bltz $4, TAG446
mtlo $4
sh $4, 0($4)
TAG446:
blez $4, TAG447
lui $4, 13
bgez $4, TAG447
lui $2, 2
TAG447:
mthi $2
bne $2, $2, TAG448
lui $4, 10
mflo $3
TAG448:
srl $4, $3, 9
mflo $3
lui $1, 3
sb $3, 0($3)
TAG449:
div $1, $1
or $1, $1, $1
multu $1, $1
bne $1, $1, TAG450
TAG450:
sll $0, $0, 0
bne $2, $1, TAG451
mult $1, $1
bne $1, $1, TAG451
TAG451:
mfhi $4
mult $4, $2
sb $4, 0($4)
bltz $2, TAG452
TAG452:
lbu $2, 0($4)
mflo $2
bgtz $4, TAG453
mflo $3
TAG453:
bgez $3, TAG454
lui $2, 3
beq $3, $2, TAG454
divu $2, $3
TAG454:
bne $2, $2, TAG455
lui $4, 12
bltz $2, TAG455
mtlo $2
TAG455:
divu $4, $4
lui $1, 13
lui $1, 4
lui $3, 10
TAG456:
bne $3, $3, TAG457
mtlo $3
subu $3, $3, $3
lui $4, 3
TAG457:
lui $1, 11
lui $2, 10
bne $1, $2, TAG458
divu $4, $2
TAG458:
sll $0, $0, 0
mult $2, $2
sll $0, $0, 0
beq $2, $2, TAG459
TAG459:
mfhi $2
blez $3, TAG460
and $3, $2, $3
lw $1, 0($2)
TAG460:
mtlo $1
mfhi $1
mflo $2
sll $0, $0, 0
TAG461:
xori $1, $2, 12
sll $0, $0, 0
xori $2, $1, 3
sll $0, $0, 0
TAG462:
sra $3, $3, 7
bne $3, $3, TAG463
sllv $4, $3, $3
mthi $3
TAG463:
bne $4, $4, TAG464
slti $3, $4, 7
mthi $4
multu $3, $3
TAG464:
lui $1, 3
beq $3, $3, TAG465
lui $2, 14
mflo $1
TAG465:
xori $2, $1, 4
bne $1, $2, TAG466
subu $4, $2, $2
div $1, $1
TAG466:
nor $1, $4, $4
sb $1, 1($1)
multu $4, $1
bne $4, $4, TAG467
TAG467:
multu $1, $1
mfhi $3
sh $1, 2($3)
beq $1, $3, TAG468
TAG468:
sb $3, 2($3)
divu $3, $3
sw $3, 2($3)
sh $3, 2($3)
TAG469:
xori $3, $3, 4
sllv $2, $3, $3
mflo $2
mthi $3
TAG470:
subu $2, $2, $2
mult $2, $2
mthi $2
beq $2, $2, TAG471
TAG471:
ori $1, $2, 3
beq $2, $2, TAG472
nor $3, $1, $1
lui $2, 6
TAG472:
lui $2, 5
addiu $3, $2, 15
bgez $3, TAG473
and $1, $2, $2
TAG473:
sll $0, $0, 0
andi $4, $1, 6
sll $0, $0, 0
multu $4, $1
TAG474:
mult $4, $4
blez $4, TAG475
ori $2, $4, 2
xori $4, $4, 9
TAG475:
slt $2, $4, $4
lui $3, 14
sub $3, $2, $2
sltu $4, $3, $3
TAG476:
lui $3, 1
mtlo $3
lui $1, 13
beq $3, $1, TAG477
TAG477:
mthi $1
bgez $1, TAG478
mult $1, $1
mflo $4
TAG478:
multu $4, $4
slt $4, $4, $4
sb $4, 0($4)
lui $2, 15
TAG479:
multu $2, $2
mflo $1
sh $1, 0($1)
sll $0, $0, 0
TAG480:
mflo $1
blez $1, TAG481
sb $1, 0($1)
mthi $1
TAG481:
sb $1, 0($1)
sb $1, 0($1)
sb $1, 0($1)
lb $4, 0($1)
TAG482:
sub $1, $4, $4
and $4, $4, $1
multu $4, $1
lui $2, 0
TAG483:
sb $2, 0($2)
bne $2, $2, TAG484
lui $4, 7
sb $4, 0($2)
TAG484:
bne $4, $4, TAG485
sll $0, $0, 0
addiu $3, $3, 2
sll $4, $3, 13
TAG485:
mfhi $3
sll $0, $0, 0
sh $4, 0($3)
bne $3, $4, TAG486
TAG486:
lui $1, 13
lui $4, 7
sw $1, 0($3)
bne $4, $4, TAG487
TAG487:
mtlo $4
and $4, $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG488:
beq $4, $4, TAG489
mfhi $2
bgez $2, TAG489
lui $2, 0
TAG489:
lui $1, 5
lui $1, 15
mflo $2
sra $4, $2, 5
TAG490:
or $4, $4, $4
bne $4, $4, TAG491
lui $4, 7
lui $3, 7
TAG491:
srl $2, $3, 12
sltiu $2, $3, 14
mflo $2
ori $2, $2, 3
TAG492:
sll $0, $0, 0
bne $2, $2, TAG493
sll $0, $0, 0
srav $3, $2, $2
TAG493:
mtlo $3
blez $3, TAG494
mthi $3
srlv $2, $3, $3
TAG494:
sll $0, $0, 0
beq $2, $2, TAG495
addu $3, $2, $2
sw $2, 0($3)
TAG495:
subu $1, $3, $3
mthi $1
bltz $3, TAG496
divu $1, $3
TAG496:
sll $3, $1, 11
mult $1, $1
beq $1, $1, TAG497
mfhi $1
TAG497:
bgez $1, TAG498
mfhi $3
sra $4, $3, 12
sw $4, 0($4)
TAG498:
ori $3, $4, 8
sll $0, $0, 0
xor $4, $4, $4
div $4, $3
TAG499:
lbu $3, 0($4)
beq $3, $4, TAG500
lw $1, 0($3)
bgez $4, TAG500
TAG500:
lui $3, 4
or $1, $1, $1
mfhi $4
sll $0, $0, 0
TAG501:
lh $3, 0($4)
mfhi $3
add $3, $4, $3
multu $3, $3
TAG502:
mthi $3
bltz $3, TAG503
sra $3, $3, 1
add $3, $3, $3
TAG503:
lui $1, 3
bne $1, $3, TAG504
xori $4, $1, 9
sltu $2, $3, $4
TAG504:
sll $0, $0, 0
mtlo $2
bne $2, $2, TAG505
mfhi $4
TAG505:
mthi $4
mtlo $4
sh $4, 0($4)
nor $1, $4, $4
TAG506:
mflo $2
mult $1, $2
lb $2, 0($2)
lhu $3, 0($2)
TAG507:
srl $3, $3, 0
mfhi $3
mthi $3
xor $3, $3, $3
TAG508:
multu $3, $3
addi $1, $3, 3
sub $2, $3, $3
sb $2, 0($2)
TAG509:
blez $2, TAG510
lui $4, 12
sw $4, 0($2)
lui $4, 4
TAG510:
mtlo $4
lui $3, 0
lui $2, 5
sll $4, $3, 14
TAG511:
mthi $4
sh $4, 0($4)
sh $4, 0($4)
slti $3, $4, 13
TAG512:
blez $3, TAG513
lui $3, 5
bgez $3, TAG513
addiu $2, $3, 3
TAG513:
bgez $2, TAG514
addiu $4, $2, 1
div $2, $2
xor $1, $4, $4
TAG514:
lb $2, 0($1)
divu $2, $1
beq $2, $2, TAG515
add $3, $2, $2
TAG515:
multu $3, $3
srlv $3, $3, $3
add $1, $3, $3
sw $3, 0($1)
TAG516:
beq $1, $1, TAG517
mthi $1
mtlo $1
lbu $2, 0($1)
TAG517:
mthi $2
mtlo $2
mult $2, $2
mult $2, $2
TAG518:
beq $2, $2, TAG519
lb $3, 0($2)
mflo $2
nor $1, $3, $2
TAG519:
bltz $1, TAG520
mflo $3
srlv $4, $3, $3
bgez $1, TAG520
TAG520:
lbu $3, 0($4)
lhu $2, 0($4)
lb $3, 0($4)
lbu $2, 0($2)
TAG521:
lbu $4, 0($2)
sb $2, 0($2)
lui $1, 12
multu $1, $2
TAG522:
sll $0, $0, 0
sll $0, $0, 0
lui $1, 15
sll $0, $0, 0
TAG523:
mfhi $1
lui $2, 13
mfhi $4
beq $1, $1, TAG524
TAG524:
mtlo $4
addu $4, $4, $4
bne $4, $4, TAG525
mult $4, $4
TAG525:
multu $4, $4
sw $4, 0($4)
lw $2, 0($4)
subu $3, $2, $4
TAG526:
mult $3, $3
sub $2, $3, $3
blez $2, TAG527
or $4, $3, $2
TAG527:
srlv $1, $4, $4
beq $1, $1, TAG528
mfhi $2
blez $1, TAG528
TAG528:
sw $2, 0($2)
lhu $1, 0($2)
bgez $1, TAG529
subu $3, $1, $2
TAG529:
sb $3, 0($3)
multu $3, $3
bgtz $3, TAG530
lui $2, 14
TAG530:
addiu $4, $2, 9
lui $4, 2
sra $2, $4, 12
multu $2, $2
TAG531:
bgtz $2, TAG532
divu $2, $2
mtlo $2
lui $3, 9
TAG532:
lb $1, 0($3)
bne $3, $1, TAG533
mfhi $1
sh $3, 0($1)
TAG533:
lh $4, 0($1)
sw $1, 0($4)
bne $1, $1, TAG534
mult $4, $1
TAG534:
mthi $4
mtlo $4
sw $4, 0($4)
bgez $4, TAG535
TAG535:
sltu $2, $4, $4
sh $4, 0($2)
subu $1, $4, $2
blez $4, TAG536
TAG536:
mflo $3
beq $3, $1, TAG537
multu $3, $1
mflo $2
TAG537:
mult $2, $2
blez $2, TAG538
lui $4, 8
lui $1, 4
TAG538:
mflo $3
srl $3, $1, 11
mflo $4
lbu $2, 0($3)
TAG539:
lw $2, 0($2)
sh $2, 0($2)
xor $2, $2, $2
lui $4, 11
TAG540:
beq $4, $4, TAG541
sll $0, $0, 0
bgtz $4, TAG541
sw $4, 0($4)
TAG541:
div $4, $4
sll $0, $0, 0
sh $4, 0($3)
mult $3, $3
TAG542:
multu $3, $3
mfhi $4
add $4, $4, $3
bne $3, $4, TAG543
TAG543:
multu $4, $4
blez $4, TAG544
lui $1, 10
beq $4, $4, TAG544
TAG544:
mtlo $1
sltiu $3, $1, 8
xori $2, $1, 8
lui $3, 6
TAG545:
mflo $1
multu $1, $3
mflo $3
lbu $1, 0($3)
TAG546:
bltz $1, TAG547
sh $1, 0($1)
xori $2, $1, 4
addiu $3, $2, 12
TAG547:
mthi $3
andi $2, $3, 3
bgez $2, TAG548
mult $3, $2
TAG548:
mthi $2
beq $2, $2, TAG549
mflo $3
lui $3, 15
TAG549:
addiu $2, $3, 0
mthi $3
bne $3, $3, TAG550
mthi $3
TAG550:
lw $2, 0($2)
beq $2, $2, TAG551
multu $2, $2
mtlo $2
TAG551:
sra $4, $2, 3
bgtz $4, TAG552
lui $2, 1
lui $2, 3
TAG552:
xor $2, $2, $2
beq $2, $2, TAG553
slti $3, $2, 1
mthi $3
TAG553:
mfhi $1
addu $2, $3, $1
bne $3, $1, TAG554
nor $4, $1, $3
TAG554:
bltz $4, TAG555
multu $4, $4
bne $4, $4, TAG555
mult $4, $4
TAG555:
mflo $1
beq $1, $4, TAG556
mthi $4
sra $1, $4, 4
TAG556:
lui $1, 9
divu $1, $1
sll $0, $0, 0
lui $4, 6
TAG557:
andi $3, $4, 15
xor $2, $4, $4
mtlo $3
or $3, $4, $3
TAG558:
sll $0, $0, 0
sll $0, $0, 0
beq $3, $2, TAG559
mflo $2
TAG559:
mtlo $2
sra $2, $2, 9
multu $2, $2
lw $2, 0($2)
TAG560:
mfhi $4
sb $2, 0($4)
mtlo $4
lui $4, 9
TAG561:
mtlo $4
multu $4, $4
sll $0, $0, 0
sll $0, $0, 0
TAG562:
sll $0, $0, 0
sltiu $4, $2, 5
sw $3, 0($2)
mult $2, $2
TAG563:
and $1, $4, $4
mfhi $3
mthi $4
addiu $4, $3, 11
TAG564:
srl $3, $4, 6
srav $4, $4, $4
lui $1, 8
lui $2, 4
TAG565:
lui $3, 12
mflo $4
ori $2, $2, 0
mthi $4
TAG566:
mult $2, $2
sll $0, $0, 0
lui $3, 9
mult $3, $3
TAG567:
blez $3, TAG568
lui $1, 12
lui $4, 4
bne $4, $3, TAG568
TAG568:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
multu $4, $2
TAG569:
beq $2, $2, TAG570
slti $4, $2, 9
lb $1, 0($4)
mfhi $2
TAG570:
srl $4, $2, 9
slt $3, $4, $4
mfhi $1
srl $4, $2, 11
TAG571:
bltz $4, TAG572
xori $2, $4, 9
sh $2, 0($4)
bne $2, $2, TAG572
TAG572:
mult $2, $2
sb $2, -137($2)
mtlo $2
mthi $2
TAG573:
ori $4, $2, 5
lui $1, 9
bgez $2, TAG574
sw $2, -141($4)
TAG574:
sll $0, $0, 0
sll $0, $0, 0
addiu $4, $1, 9
srav $3, $4, $4
TAG575:
mflo $2
lui $2, 10
srlv $3, $2, $2
mfhi $2
TAG576:
mtlo $2
sw $2, -137($2)
bne $2, $2, TAG577
mtlo $2
TAG577:
srlv $4, $2, $2
mtlo $2
lh $4, 0($4)
mtlo $2
TAG578:
bne $4, $4, TAG579
mtlo $4
sh $4, -137($4)
mflo $4
TAG579:
mult $4, $4
mflo $2
lui $1, 0
mflo $2
TAG580:
div $2, $2
bne $2, $2, TAG581
mtlo $2
mtlo $2
TAG581:
bne $2, $2, TAG582
mtlo $2
mthi $2
mtlo $2
TAG582:
divu $2, $2
mtlo $2
divu $2, $2
beq $2, $2, TAG583
TAG583:
sll $0, $0, 0
lui $3, 14
beq $2, $1, TAG584
divu $1, $3
TAG584:
ori $2, $3, 14
lui $4, 12
bne $2, $2, TAG585
mflo $2
TAG585:
mtlo $2
sw $2, 0($2)
mult $2, $2
bgez $2, TAG586
TAG586:
sh $2, 0($2)
lbu $1, 0($2)
bne $2, $2, TAG587
lui $4, 15
TAG587:
beq $4, $4, TAG588
sll $0, $0, 0
mflo $1
sltiu $2, $1, 5
TAG588:
bne $2, $2, TAG589
lui $4, 0
mult $2, $2
bltz $4, TAG589
TAG589:
lui $1, 12
mthi $4
mthi $4
blez $1, TAG590
TAG590:
mfhi $3
mfhi $2
xori $2, $3, 3
sltu $3, $2, $2
TAG591:
multu $3, $3
sra $4, $3, 3
multu $4, $3
beq $3, $3, TAG592
TAG592:
lui $4, 2
sll $0, $0, 0
andi $4, $4, 6
mfhi $1
TAG593:
sh $1, 0($1)
bgez $1, TAG594
lb $3, 0($1)
lui $4, 13
TAG594:
mtlo $4
mfhi $2
sb $4, 0($2)
sllv $1, $4, $4
TAG595:
blez $1, TAG596
mtlo $1
multu $1, $1
lb $3, 0($1)
TAG596:
bne $3, $3, TAG597
mfhi $1
sub $2, $1, $1
lhu $2, 0($1)
TAG597:
sw $2, 0($2)
add $2, $2, $2
sltiu $3, $2, 5
lb $4, 0($2)
TAG598:
xori $2, $4, 5
beq $4, $2, TAG599
mthi $4
mfhi $2
TAG599:
sh $2, 0($2)
bltz $2, TAG600
sw $2, 0($2)
beq $2, $2, TAG600
TAG600:
sw $2, 0($2)
lui $2, 9
srav $2, $2, $2
mtlo $2
TAG601:
sll $0, $0, 0
div $2, $2
subu $4, $2, $2
sh $4, 0($4)
TAG602:
bgtz $4, TAG603
multu $4, $4
mflo $2
mtlo $2
TAG603:
lw $3, 0($2)
mflo $1
mthi $2
sra $2, $3, 14
TAG604:
sw $2, 0($2)
mfhi $2
andi $1, $2, 0
mflo $4
TAG605:
ori $3, $4, 5
mthi $3
mult $3, $3
mfhi $4
TAG606:
lui $2, 9
sll $0, $0, 0
lh $2, 0($4)
srav $2, $4, $2
TAG607:
sub $1, $2, $2
slti $1, $2, 3
mthi $2
lb $1, 0($1)
TAG608:
addu $4, $1, $1
lbu $2, 0($4)
mflo $2
mtlo $4
TAG609:
sb $2, 0($2)
divu $2, $2
srav $4, $2, $2
beq $4, $4, TAG610
TAG610:
mtlo $4
nor $2, $4, $4
bne $2, $2, TAG611
mfhi $3
TAG611:
slti $2, $3, 11
bgez $3, TAG612
mthi $3
bgtz $2, TAG612
TAG612:
div $2, $2
sb $2, 0($2)
lbu $1, 0($2)
mflo $1
TAG613:
bne $1, $1, TAG614
nor $4, $1, $1
mflo $1
mfhi $2
TAG614:
add $2, $2, $2
lhu $1, 0($2)
mult $2, $2
mfhi $2
TAG615:
blez $2, TAG616
srav $1, $2, $2
lui $2, 12
mult $2, $2
TAG616:
bltz $2, TAG617
multu $2, $2
lbu $4, 0($2)
srl $2, $2, 9
TAG617:
sb $2, 0($2)
lw $1, 0($2)
lbu $4, -256($1)
divu $4, $1
TAG618:
mtlo $4
beq $4, $4, TAG619
lui $1, 1
addi $4, $4, 9
TAG619:
or $1, $4, $4
lui $1, 5
multu $4, $4
sll $0, $0, 0
TAG620:
beq $1, $1, TAG621
div $1, $1
beq $1, $1, TAG621
lh $1, 0($1)
TAG621:
subu $2, $1, $1
mult $1, $1
beq $1, $1, TAG622
lbu $1, 0($2)
TAG622:
slti $1, $1, 3
sb $1, 0($1)
lb $1, 0($1)
mfhi $4
TAG623:
beq $4, $4, TAG624
mflo $1
bgez $1, TAG624
sb $4, 0($1)
TAG624:
and $4, $1, $1
mflo $2
mflo $2
lui $3, 5
TAG625:
sll $0, $0, 0
sb $4, 0($4)
mfhi $3
sb $3, 0($3)
TAG626:
lbu $4, 0($3)
lb $4, 0($3)
mflo $1
lb $1, 0($3)
TAG627:
mthi $1
mtlo $1
lui $1, 1
mult $1, $1
TAG628:
srlv $1, $1, $1
blez $1, TAG629
sll $0, $0, 0
mflo $1
TAG629:
mthi $1
mtlo $1
mtlo $1
srl $1, $1, 13
TAG630:
mtlo $1
addiu $2, $1, 10
mthi $2
xor $3, $2, $2
TAG631:
addu $1, $3, $3
slt $1, $1, $3
mtlo $1
bltz $1, TAG632
TAG632:
mthi $1
bltz $1, TAG633
mfhi $1
bltz $1, TAG633
TAG633:
mflo $2
mfhi $1
mfhi $1
mfhi $2
TAG634:
multu $2, $2
slt $3, $2, $2
bne $2, $3, TAG635
lb $1, 0($2)
TAG635:
sltu $2, $1, $1
beq $2, $2, TAG636
lui $3, 5
lui $4, 2
TAG636:
mult $4, $4
blez $4, TAG637
mult $4, $4
sb $4, 0($4)
TAG637:
addiu $3, $4, 2
srlv $4, $3, $4
multu $3, $4
mthi $4
TAG638:
mult $4, $4
mtlo $4
bne $4, $4, TAG639
srl $3, $4, 0
TAG639:
mflo $3
bgtz $3, TAG640
lui $4, 0
mult $3, $3
TAG640:
srav $4, $4, $4
sw $4, 0($4)
lhu $2, 0($4)
addi $1, $4, 3
TAG641:
lui $4, 12
lui $1, 11
sll $0, $0, 0
div $4, $1
TAG642:
beq $1, $1, TAG643
lui $1, 3
mfhi $2
multu $1, $1
TAG643:
lui $3, 7
lui $1, 4
sll $0, $0, 0
sll $0, $0, 0
TAG644:
mfhi $2
bne $2, $2, TAG645
lui $3, 1
addiu $2, $2, 3
TAG645:
sll $0, $0, 0
sll $0, $0, 0
mfhi $3
bne $2, $3, TAG646
TAG646:
div $3, $3
mfhi $4
addu $2, $3, $3
mfhi $3
TAG647:
or $1, $3, $3
multu $3, $3
multu $1, $1
sltiu $2, $1, 0
TAG648:
xor $2, $2, $2
sw $2, 0($2)
sltu $2, $2, $2
lb $3, 0($2)
TAG649:
sltu $1, $3, $3
beq $3, $3, TAG650
sllv $4, $1, $3
mflo $1
TAG650:
multu $1, $1
sra $4, $1, 4
lhu $3, 0($4)
lui $2, 11
TAG651:
slt $3, $2, $2
mthi $3
div $2, $2
xor $2, $3, $3
TAG652:
sb $2, 0($2)
srlv $1, $2, $2
bgtz $1, TAG653
sh $2, 0($1)
TAG653:
bltz $1, TAG654
sh $1, 0($1)
lw $1, 0($1)
lui $2, 12
TAG654:
beq $2, $2, TAG655
and $1, $2, $2
sw $1, 0($1)
div $2, $1
TAG655:
sll $0, $0, 0
mtlo $1
sll $0, $0, 0
divu $1, $1
TAG656:
bltz $1, TAG657
addiu $3, $1, 9
lui $4, 14
sll $0, $0, 0
TAG657:
mfhi $1
blez $1, TAG658
mtlo $1
lhu $3, 0($1)
TAG658:
mflo $4
div $4, $3
sll $0, $0, 0
mflo $1
TAG659:
lw $2, 0($1)
sltu $1, $2, $1
ori $2, $1, 6
mult $1, $2
TAG660:
sltu $3, $2, $2
slt $4, $2, $3
xori $1, $2, 0
divu $4, $2
TAG661:
addu $1, $1, $1
sb $1, 0($1)
and $1, $1, $1
lbu $1, 0($1)
TAG662:
divu $1, $1
sh $1, 0($1)
mfhi $4
mfhi $2
TAG663:
bgtz $2, TAG664
multu $2, $2
mflo $1
lh $1, 0($2)
TAG664:
sh $1, 0($1)
sltiu $4, $1, 1
bne $4, $4, TAG665
mthi $4
TAG665:
mflo $1
bgez $1, TAG666
lh $3, 0($1)
lbu $3, 0($4)
TAG666:
mflo $4
lh $3, 0($3)
sb $3, 0($4)
multu $3, $4
TAG667:
srlv $1, $3, $3
lui $1, 14
sllv $1, $1, $1
mflo $3
TAG668:
bne $3, $3, TAG669
mult $3, $3
blez $3, TAG669
mthi $3
TAG669:
addiu $2, $3, 6
lui $4, 15
mult $3, $3
addiu $2, $4, 0
TAG670:
srlv $3, $2, $2
sltiu $2, $2, 1
mthi $2
mthi $3
TAG671:
sll $4, $2, 4
lui $1, 6
beq $1, $2, TAG672
mflo $1
TAG672:
sb $1, 0($1)
bltz $1, TAG673
sllv $1, $1, $1
lhu $4, 0($1)
TAG673:
sllv $2, $4, $4
bne $2, $2, TAG674
mult $4, $2
sw $4, 0($2)
TAG674:
lui $4, 12
lui $2, 8
lui $3, 12
mflo $2
TAG675:
beq $2, $2, TAG676
sub $4, $2, $2
mflo $3
lh $4, 0($4)
TAG676:
lw $2, 0($4)
slt $3, $4, $2
sw $2, 0($4)
blez $2, TAG677
TAG677:
mtlo $3
multu $3, $3
bgez $3, TAG678
mflo $3
TAG678:
bltz $3, TAG679
lui $1, 13
mfhi $3
lui $4, 5
TAG679:
srav $4, $4, $4
multu $4, $4
sll $0, $0, 0
bgez $4, TAG680
TAG680:
divu $4, $4
sll $0, $0, 0
sll $0, $0, 0
lui $3, 9
TAG681:
bne $3, $3, TAG682
sll $0, $0, 0
mthi $4
mflo $3
TAG682:
lbu $3, 0($3)
bne $3, $3, TAG683
sb $3, 0($3)
mflo $3
TAG683:
or $2, $3, $3
subu $2, $3, $3
multu $2, $3
bne $2, $2, TAG684
TAG684:
sw $2, 0($2)
lui $3, 2
mtlo $3
slti $2, $2, 6
TAG685:
beq $2, $2, TAG686
ori $1, $2, 1
nor $2, $1, $2
nor $1, $2, $1
TAG686:
bgtz $1, TAG687
sllv $3, $1, $1
bne $1, $1, TAG687
or $4, $3, $1
TAG687:
mthi $4
mthi $4
sra $1, $4, 3
mtlo $1
TAG688:
mflo $3
sll $0, $0, 0
mfhi $3
mfhi $3
TAG689:
beq $3, $3, TAG690
sltiu $2, $3, 11
sb $3, 0($2)
mtlo $3
TAG690:
mtlo $2
sb $2, 0($2)
lhu $1, 0($2)
ori $2, $2, 12
TAG691:
lbu $2, 0($2)
and $1, $2, $2
mflo $1
sb $1, 0($1)
TAG692:
bne $1, $1, TAG693
multu $1, $1
bgez $1, TAG693
sh $1, 0($1)
TAG693:
mtlo $1
sh $1, 0($1)
sb $1, 0($1)
mthi $1
TAG694:
bgez $1, TAG695
mtlo $1
mflo $4
mflo $1
TAG695:
sw $1, 0($1)
mult $1, $1
lui $3, 14
mtlo $3
TAG696:
mflo $1
div $3, $1
mfhi $1
add $4, $1, $1
TAG697:
lb $2, 0($4)
mtlo $4
sb $4, 0($4)
blez $2, TAG698
TAG698:
multu $2, $2
sb $2, 0($2)
blez $2, TAG699
addiu $4, $2, 13
TAG699:
sra $2, $4, 12
mflo $3
slti $2, $4, 7
mult $2, $3
TAG700:
beq $2, $2, TAG701
addiu $2, $2, 7
addi $4, $2, 12
mtlo $2
TAG701:
mflo $3
beq $4, $4, TAG702
sllv $4, $3, $4
mtlo $4
TAG702:
bgtz $4, TAG703
nor $2, $4, $4
sw $2, 1($2)
lui $1, 13
TAG703:
sll $0, $0, 0
sra $3, $2, 13
sll $0, $0, 0
mthi $1
TAG704:
sb $2, 1($2)
beq $2, $2, TAG705
andi $2, $2, 1
mfhi $1
TAG705:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
srav $2, $1, $1
TAG706:
beq $2, $2, TAG707
sll $0, $0, 0
lui $3, 6
lui $2, 8
TAG707:
mult $2, $2
multu $2, $2
lui $1, 6
ori $2, $2, 13
TAG708:
mthi $2
div $2, $2
nor $1, $2, $2
subu $3, $2, $2
TAG709:
sll $2, $3, 8
mult $3, $2
lui $4, 7
bgtz $4, TAG710
TAG710:
lui $2, 7
bgez $2, TAG711
mflo $3
subu $2, $3, $3
TAG711:
sll $0, $0, 0
mthi $3
sw $2, 0($3)
beq $3, $3, TAG712
TAG712:
lui $2, 5
mult $3, $3
mult $2, $3
lui $3, 0
TAG713:
blez $3, TAG714
mthi $3
add $1, $3, $3
sw $1, 0($1)
TAG714:
mflo $1
addiu $3, $1, 1
sh $3, 0($1)
or $2, $3, $3
TAG715:
mtlo $2
addu $3, $2, $2
mult $2, $2
lui $1, 10
TAG716:
addiu $4, $1, 4
multu $4, $1
multu $1, $4
bltz $1, TAG717
TAG717:
lui $2, 2
bgez $2, TAG718
mult $4, $2
bgtz $4, TAG718
TAG718:
lui $1, 8
multu $2, $1
bgez $2, TAG719
lui $3, 1
TAG719:
sll $0, $0, 0
lui $2, 10
multu $1, $3
sll $0, $0, 0
TAG720:
mtlo $2
beq $2, $2, TAG721
sra $4, $2, 8
bne $2, $2, TAG721
TAG721:
mfhi $4
mfhi $2
mflo $4
sll $4, $4, 8
TAG722:
and $3, $4, $4
mult $4, $3
mthi $4
sll $0, $0, 0
TAG723:
mult $3, $3
sll $0, $0, 0
blez $3, TAG724
sll $0, $0, 0
TAG724:
sll $0, $0, 0
mfhi $2
lui $2, 13
ori $1, $3, 13
TAG725:
sll $0, $0, 0
mflo $3
mfhi $2
mtlo $1
TAG726:
bne $2, $2, TAG727
lui $3, 7
mflo $3
sll $0, $0, 0
TAG727:
mthi $3
mfhi $4
addu $2, $3, $3
sll $0, $0, 0
TAG728:
xor $3, $2, $2
divu $3, $2
lh $1, 0($3)
bltz $1, TAG729
TAG729:
sb $1, 0($1)
lb $3, 0($1)
bne $1, $3, TAG730
lb $3, 0($3)
TAG730:
addiu $3, $3, 3
bne $3, $3, TAG731
lui $2, 5
mfhi $1
TAG731:
bne $1, $1, TAG732
mflo $2
sw $2, 0($1)
sh $2, 0($2)
TAG732:
mthi $2
multu $2, $2
sh $2, 0($2)
subu $3, $2, $2
TAG733:
mfhi $1
mthi $3
mfhi $4
addi $3, $3, 3
TAG734:
nor $2, $3, $3
mthi $3
beq $2, $2, TAG735
mthi $2
TAG735:
addiu $2, $2, 9
srlv $4, $2, $2
div $2, $2
mthi $2
TAG736:
sltu $3, $4, $4
sw $4, 0($4)
lw $2, 0($4)
beq $3, $2, TAG737
TAG737:
addu $2, $2, $2
mult $2, $2
lw $4, 0($2)
sh $2, 0($2)
TAG738:
sw $4, 0($4)
sh $4, 0($4)
lui $3, 4
bgtz $4, TAG739
TAG739:
multu $3, $3
addiu $3, $3, 14
bgez $3, TAG740
mthi $3
TAG740:
mthi $3
mfhi $1
bgez $1, TAG741
multu $3, $1
TAG741:
slti $4, $1, 13
mflo $1
lui $2, 6
lui $1, 2
TAG742:
subu $2, $1, $1
mflo $1
sltu $4, $1, $2
sll $0, $0, 0
TAG743:
bltz $1, TAG744
lui $4, 7
div $4, $4
sll $0, $0, 0
TAG744:
nor $2, $2, $2
andi $3, $2, 7
mfhi $2
bltz $2, TAG745
TAG745:
lui $4, 4
mult $2, $2
lui $2, 14
slti $1, $4, 2
TAG746:
sub $4, $1, $1
addiu $2, $1, 1
beq $4, $1, TAG747
lui $4, 9
TAG747:
beq $4, $4, TAG748
lui $1, 10
slti $3, $1, 9
mflo $1
TAG748:
xori $1, $1, 3
subu $1, $1, $1
lhu $2, 0($1)
beq $1, $1, TAG749
TAG749:
mthi $2
slti $4, $2, 6
ori $3, $2, 11
div $2, $3
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop