ori $1, $0, 6
ori $2, $0, 7
ori $3, $0, 5
ori $4, $0, 9
sw $2, 0($0)
sw $1, 4($0)
sw $4, 8($0)
sw $3, 12($0)
sw $4, 16($0)
sw $3, 20($0)
sw $3, 24($0)
sw $1, 28($0)
sw $2, 32($0)
sw $1, 36($0)
sw $1, 40($0)
sw $2, 44($0)
sw $1, 48($0)
sw $1, 52($0)
sw $1, 56($0)
sw $1, 60($0)
sw $2, 64($0)
sw $4, 68($0)
sw $4, 72($0)
sw $3, 76($0)
sw $4, 80($0)
sw $3, 84($0)
sw $2, 88($0)
sw $3, 92($0)
sw $4, 96($0)
sw $2, 100($0)
sw $2, 104($0)
sw $2, 108($0)
sw $4, 112($0)
sw $3, 116($0)
sw $4, 120($0)
sw $1, 124($0)
beq $2, $2, TAG1
sb $2, 0($2)
lui $3, 7
mfhi $1
TAG1:
mult $1, $1
bgez $1, TAG2
slti $3, $1, 10
sh $1, 0($3)
TAG2:
mthi $3
multu $3, $3
sra $1, $3, 11
lbu $1, 0($3)
TAG3:
multu $1, $1
srav $2, $1, $1
mthi $1
mult $1, $2
TAG4:
lui $3, 13
bne $2, $2, TAG5
div $3, $3
bne $2, $3, TAG5
TAG5:
mult $3, $3
mthi $3
blez $3, TAG6
sll $0, $0, 0
TAG6:
multu $4, $4
bgez $4, TAG7
lb $2, 0($4)
bgtz $4, TAG7
TAG7:
sb $2, 0($2)
sh $2, 0($2)
blez $2, TAG8
lhu $1, 0($2)
TAG8:
lui $3, 3
or $1, $1, $1
bne $3, $1, TAG9
sll $0, $0, 0
TAG9:
lui $2, 3
multu $2, $1
mfhi $3
lbu $2, 0($3)
TAG10:
sh $2, 0($2)
mflo $1
sh $2, 0($2)
multu $1, $2
TAG11:
lw $2, 0($1)
lw $1, 0($2)
sltu $1, $1, $2
mult $2, $1
TAG12:
mtlo $1
srl $2, $1, 0
mtlo $1
bgtz $2, TAG13
TAG13:
lh $3, 0($2)
mthi $2
mflo $1
bgtz $2, TAG14
TAG14:
mfhi $4
mult $1, $4
blez $1, TAG15
xori $4, $4, 4
TAG15:
lh $1, 0($4)
mthi $1
div $1, $4
mthi $1
TAG16:
bltz $1, TAG17
lh $1, 0($1)
bltz $1, TAG17
ori $3, $1, 0
TAG17:
addiu $4, $3, 3
bne $3, $3, TAG18
mtlo $4
nor $2, $4, $3
TAG18:
sll $0, $0, 0
mthi $2
beq $2, $2, TAG19
divu $2, $2
TAG19:
multu $2, $2
lui $1, 10
sra $2, $2, 0
beq $2, $2, TAG20
TAG20:
sh $2, 1796($2)
mthi $2
sh $2, 1796($2)
sllv $2, $2, $2
TAG21:
bltz $2, TAG22
divu $2, $2
srav $2, $2, $2
mtlo $2
TAG22:
srl $2, $2, 1
divu $2, $2
mthi $2
lui $1, 13
TAG23:
mthi $1
div $1, $1
multu $1, $1
bgtz $1, TAG24
TAG24:
lui $3, 15
bne $1, $3, TAG25
lui $3, 14
addi $1, $3, 1
TAG25:
bgtz $1, TAG26
mfhi $2
sb $2, 0($2)
lh $2, 0($1)
TAG26:
subu $1, $2, $2
lhu $1, 0($1)
sltu $2, $2, $1
sll $0, $0, 0
TAG27:
sra $1, $1, 0
mthi $1
bgez $1, TAG28
mflo $1
TAG28:
slti $1, $1, 5
mflo $2
mfhi $2
addu $4, $1, $2
TAG29:
lui $3, 8
blez $4, TAG30
sltiu $2, $4, 1
multu $3, $4
TAG30:
mtlo $2
bltz $2, TAG31
addi $1, $2, 15
mult $1, $2
TAG31:
slti $4, $1, 11
beq $4, $1, TAG32
lui $2, 0
sb $1, 0($1)
TAG32:
bgez $2, TAG33
mult $2, $2
bltz $2, TAG33
addiu $3, $2, 2
TAG33:
sll $0, $0, 0
div $1, $1
sb $1, 0($1)
sra $4, $3, 6
TAG34:
blez $4, TAG35
div $4, $4
mult $4, $4
sllv $2, $4, $4
TAG35:
addu $1, $2, $2
lui $4, 9
mfhi $1
lui $3, 13
TAG36:
sll $0, $0, 0
mfhi $4
beq $3, $3, TAG37
sll $0, $0, 0
TAG37:
blez $2, TAG38
mfhi $4
bltz $2, TAG38
mfhi $3
TAG38:
bne $3, $3, TAG39
sub $3, $3, $3
mflo $1
lui $3, 9
TAG39:
lui $4, 0
beq $3, $4, TAG40
nor $1, $4, $3
beq $1, $4, TAG40
TAG40:
div $1, $1
sll $0, $0, 0
ori $3, $1, 11
mflo $2
TAG41:
lui $4, 4
lb $1, 0($2)
mthi $4
lb $3, 0($2)
TAG42:
srav $3, $3, $3
bne $3, $3, TAG43
lh $4, 1($3)
beq $3, $3, TAG43
TAG43:
sll $0, $0, 0
beq $3, $3, TAG44
multu $4, $3
srl $2, $4, 13
TAG44:
mult $2, $2
sb $2, 0($2)
lui $1, 2
blez $2, TAG45
TAG45:
multu $1, $1
srlv $2, $1, $1
bne $1, $1, TAG46
mtlo $1
TAG46:
and $2, $2, $2
sll $4, $2, 7
mult $2, $2
addu $4, $4, $4
TAG47:
mflo $3
mflo $4
sltiu $1, $4, 14
beq $4, $3, TAG48
TAG48:
lui $1, 13
beq $1, $1, TAG49
sll $0, $0, 0
lhu $4, 0($1)
TAG49:
lh $1, 0($4)
sh $4, 0($4)
xor $1, $1, $1
multu $1, $4
TAG50:
bne $1, $1, TAG51
multu $1, $1
blez $1, TAG51
mult $1, $1
TAG51:
sw $1, 0($1)
xor $4, $1, $1
lui $4, 14
mtlo $1
TAG52:
bne $4, $4, TAG53
and $3, $4, $4
beq $3, $4, TAG53
mflo $1
TAG53:
lw $2, 0($1)
mflo $1
beq $1, $1, TAG54
mult $1, $1
TAG54:
ori $2, $1, 10
sh $1, 0($2)
slti $1, $2, 1
sh $1, 0($1)
TAG55:
lbu $2, 0($1)
blez $2, TAG56
slti $1, $2, 2
lw $2, 0($1)
TAG56:
lhu $1, 0($2)
mflo $4
bgtz $4, TAG57
xori $3, $1, 4
TAG57:
beq $3, $3, TAG58
lbu $1, 0($3)
sllv $3, $1, $1
sw $3, 0($3)
TAG58:
sb $3, 0($3)
mflo $4
mult $4, $4
lui $2, 12
TAG59:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
multu $1, $2
TAG60:
beq $1, $1, TAG61
multu $1, $1
sltiu $3, $1, 15
sw $1, 0($1)
TAG61:
mult $3, $3
srlv $1, $3, $3
subu $2, $1, $3
lui $4, 13
TAG62:
mthi $4
lui $4, 4
sll $0, $0, 0
bgtz $4, TAG63
TAG63:
mfhi $1
sll $0, $0, 0
bne $1, $1, TAG64
xor $4, $1, $1
TAG64:
bne $4, $4, TAG65
mthi $4
sh $4, 0($4)
lui $4, 11
TAG65:
mult $4, $4
srl $2, $4, 11
sll $0, $0, 0
mfhi $4
TAG66:
lui $4, 14
beq $4, $4, TAG67
multu $4, $4
lw $4, 0($4)
TAG67:
bne $4, $4, TAG68
slti $1, $4, 1
add $2, $1, $1
bgtz $4, TAG68
TAG68:
lh $3, 0($2)
lui $3, 14
sll $0, $0, 0
div $3, $4
TAG69:
sll $0, $0, 0
sll $0, $0, 0
addu $4, $4, $4
beq $4, $4, TAG70
TAG70:
lui $1, 0
sll $0, $0, 0
and $4, $1, $4
multu $4, $4
TAG71:
ori $4, $4, 1
bne $4, $4, TAG72
lui $3, 13
div $4, $4
TAG72:
sll $0, $0, 0
div $3, $3
lui $4, 12
mfhi $1
TAG73:
sllv $1, $1, $1
xori $2, $1, 6
lui $3, 6
beq $1, $3, TAG74
TAG74:
sll $0, $0, 0
sll $0, $0, 0
addu $4, $3, $3
sll $0, $0, 0
TAG75:
beq $4, $4, TAG76
andi $4, $4, 0
or $2, $4, $4
mfhi $3
TAG76:
sll $0, $0, 0
sh $2, 0($2)
sh $2, 0($2)
bne $3, $2, TAG77
TAG77:
sb $2, 0($2)
mfhi $2
lui $2, 8
mfhi $2
TAG78:
mflo $2
multu $2, $2
srl $2, $2, 13
sllv $4, $2, $2
TAG79:
mult $4, $4
mult $4, $4
lui $1, 9
mflo $4
TAG80:
lui $3, 12
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
TAG81:
bne $4, $4, TAG82
lw $2, 0($4)
mtlo $2
mfhi $4
TAG82:
lhu $4, 0($4)
lb $1, 0($4)
lb $1, 0($4)
lh $2, 0($1)
TAG83:
lbu $2, 0($2)
sra $3, $2, 5
beq $3, $2, TAG84
lb $2, 0($3)
TAG84:
bne $2, $2, TAG85
sllv $1, $2, $2
bltz $2, TAG85
mult $2, $1
TAG85:
bgtz $1, TAG86
lui $1, 9
sll $0, $0, 0
multu $1, $1
TAG86:
mflo $3
lui $3, 2
mult $3, $3
mfhi $3
TAG87:
mthi $3
lb $2, 0($3)
andi $3, $3, 12
sllv $3, $3, $3
TAG88:
sll $1, $3, 14
slt $3, $1, $1
addiu $2, $3, 12
lbu $4, 0($2)
TAG89:
lui $1, 3
bne $4, $4, TAG90
addu $1, $4, $1
lbu $4, 0($4)
TAG90:
sb $4, 0($4)
mult $4, $4
lw $3, 0($4)
add $2, $4, $3
TAG91:
andi $2, $2, 4
sh $2, 0($2)
lui $2, 5
mfhi $4
TAG92:
or $3, $4, $4
sh $3, 0($4)
xor $2, $3, $3
mthi $4
TAG93:
sh $2, 0($2)
beq $2, $2, TAG94
lui $2, 8
mflo $4
TAG94:
lw $1, 0($4)
mfhi $1
mfhi $3
beq $1, $4, TAG95
TAG95:
sw $3, 0($3)
srl $3, $3, 9
mthi $3
mthi $3
TAG96:
lui $3, 11
mtlo $3
multu $3, $3
bltz $3, TAG97
TAG97:
multu $3, $3
sltiu $4, $3, 7
bgtz $4, TAG98
lbu $2, 0($4)
TAG98:
mflo $1
sb $1, 0($2)
mflo $1
bgtz $1, TAG99
TAG99:
lbu $4, 0($1)
mult $1, $1
sb $1, 0($4)
bne $4, $4, TAG100
TAG100:
sb $4, 0($4)
lui $4, 11
lui $4, 6
addiu $2, $4, 6
TAG101:
addiu $2, $2, 15
bgez $2, TAG102
mthi $2
sub $3, $2, $2
TAG102:
sll $0, $0, 0
beq $3, $3, TAG103
sllv $4, $3, $3
mflo $1
TAG103:
mthi $1
and $4, $1, $1
multu $1, $4
slti $1, $4, 11
TAG104:
sb $1, 0($1)
bgtz $1, TAG105
mfhi $3
mfhi $3
TAG105:
mfhi $4
beq $3, $3, TAG106
mtlo $3
beq $4, $3, TAG106
TAG106:
mult $4, $4
lw $1, 0($4)
mflo $1
subu $2, $1, $4
TAG107:
mflo $1
lui $1, 4
lui $3, 9
sltu $4, $3, $3
TAG108:
lui $1, 12
srav $1, $1, $4
lui $3, 12
sll $0, $0, 0
TAG109:
bltz $1, TAG110
mfhi $4
sb $1, 0($4)
mflo $4
TAG110:
mthi $4
mthi $4
lb $3, 0($4)
beq $3, $4, TAG111
TAG111:
mtlo $3
mult $3, $3
bgez $3, TAG112
lw $3, 0($3)
TAG112:
blez $3, TAG113
sll $3, $3, 10
divu $3, $3
mflo $4
TAG113:
lui $3, 8
or $4, $3, $4
mflo $3
lb $2, 0($3)
TAG114:
mfhi $4
lui $2, 7
mthi $4
divu $4, $2
TAG115:
xor $1, $2, $2
mflo $4
bgtz $4, TAG116
addiu $2, $4, 11
TAG116:
addiu $2, $2, 2
multu $2, $2
beq $2, $2, TAG117
lbu $4, 0($2)
TAG117:
bgtz $4, TAG118
mtlo $4
bltz $4, TAG118
multu $4, $4
TAG118:
lbu $2, 0($4)
sb $4, 0($2)
sra $4, $4, 14
sllv $1, $2, $4
TAG119:
bgtz $1, TAG120
sb $1, 0($1)
mthi $1
lui $4, 14
TAG120:
mtlo $4
mtlo $4
multu $4, $4
bgtz $4, TAG121
TAG121:
mfhi $1
mflo $3
sltu $2, $1, $1
nor $4, $1, $1
TAG122:
lui $3, 8
mtlo $4
sll $0, $0, 0
multu $4, $3
TAG123:
addiu $4, $3, 5
sll $0, $0, 0
blez $3, TAG124
sll $0, $0, 0
TAG124:
slti $1, $3, 3
mtlo $1
mtlo $3
bgez $3, TAG125
TAG125:
srav $4, $1, $1
addi $2, $1, 4
bgtz $2, TAG126
mthi $1
TAG126:
lw $2, 0($2)
bne $2, $2, TAG127
sllv $2, $2, $2
xor $2, $2, $2
TAG127:
bgtz $2, TAG128
andi $3, $2, 11
addiu $1, $3, 3
blez $1, TAG128
TAG128:
sll $2, $1, 1
lh $3, 0($2)
sb $3, 0($3)
lh $4, 0($3)
TAG129:
sltiu $2, $4, 1
or $3, $4, $4
sh $3, 0($3)
lbu $2, 0($2)
TAG130:
slti $3, $2, 2
mult $3, $2
multu $2, $3
lb $4, 0($3)
TAG131:
addiu $1, $4, 12
lb $2, 0($4)
nor $3, $2, $4
sw $4, 2($3)
TAG132:
ori $4, $3, 11
addu $1, $4, $3
lbu $4, 3($1)
bne $4, $4, TAG133
TAG133:
subu $4, $4, $4
xori $4, $4, 7
divu $4, $4
addu $2, $4, $4
TAG134:
bgtz $2, TAG135
mtlo $2
multu $2, $2
beq $2, $2, TAG135
TAG135:
sb $2, 0($2)
lui $4, 0
lb $2, 0($2)
multu $4, $4
TAG136:
lbu $3, 0($2)
div $3, $2
sll $1, $3, 9
mfhi $1
TAG137:
lw $2, 0($1)
mult $2, $1
mfhi $3
beq $1, $1, TAG138
TAG138:
lhu $4, 0($3)
lb $4, 0($4)
mthi $3
mult $4, $4
TAG139:
blez $4, TAG140
sw $4, 0($4)
bgtz $4, TAG140
sb $4, 0($4)
TAG140:
mthi $4
lui $1, 1
bne $1, $1, TAG141
sll $0, $0, 0
TAG141:
blez $4, TAG142
slti $2, $4, 7
beq $2, $4, TAG142
multu $2, $4
TAG142:
lbu $3, 0($2)
ori $4, $3, 8
sh $4, 0($4)
multu $4, $3
TAG143:
mflo $3
lh $2, 0($4)
multu $3, $4
lw $4, 0($2)
TAG144:
sh $4, 0($4)
mfhi $4
addiu $1, $4, 14
mfhi $3
TAG145:
mfhi $1
mtlo $3
mfhi $2
addiu $1, $1, 1
TAG146:
xor $4, $1, $1
subu $4, $1, $1
lw $3, 0($4)
sh $3, 0($3)
TAG147:
sh $3, 0($3)
mtlo $3
mflo $4
mtlo $4
TAG148:
sltiu $2, $4, 3
multu $4, $2
beq $2, $2, TAG149
mflo $2
TAG149:
lui $1, 0
nor $4, $2, $1
mflo $4
mthi $4
TAG150:
subu $3, $4, $4
addu $3, $3, $4
sb $3, 0($3)
lui $2, 13
TAG151:
sll $4, $2, 8
lui $1, 8
sllv $1, $2, $1
sltiu $4, $4, 10
TAG152:
lui $1, 7
ori $1, $1, 4
blez $1, TAG153
lui $1, 2
TAG153:
bne $1, $1, TAG154
mtlo $1
bgez $1, TAG154
srav $2, $1, $1
TAG154:
beq $2, $2, TAG155
sll $0, $0, 0
lui $2, 4
ori $1, $2, 8
TAG155:
lui $3, 2
div $3, $3
or $2, $1, $1
subu $2, $3, $2
TAG156:
lb $2, 0($2)
lui $2, 6
sll $2, $2, 15
sh $2, 0($2)
TAG157:
mthi $2
beq $2, $2, TAG158
or $2, $2, $2
addi $2, $2, 3
TAG158:
bgez $2, TAG159
mthi $2
sh $2, 0($2)
mthi $2
TAG159:
multu $2, $2
addiu $4, $2, 10
srlv $2, $2, $2
multu $2, $2
TAG160:
sll $3, $2, 11
mtlo $2
mflo $3
lui $2, 15
TAG161:
lui $3, 7
nor $3, $2, $3
beq $3, $2, TAG162
sll $0, $0, 0
TAG162:
lui $1, 6
mtlo $1
multu $1, $1
sll $0, $0, 0
TAG163:
addu $4, $1, $1
mfhi $3
lui $4, 14
sll $0, $0, 0
TAG164:
lui $4, 5
lui $2, 4
divu $4, $2
sll $0, $0, 0
TAG165:
bne $3, $3, TAG166
mflo $1
div $1, $1
beq $3, $1, TAG166
TAG166:
mult $1, $1
bgez $1, TAG167
multu $1, $1
lbu $4, 0($1)
TAG167:
sll $0, $0, 0
sll $0, $0, 0
lui $2, 0
mult $2, $2
TAG168:
sra $2, $2, 12
sll $3, $2, 11
sh $2, 0($3)
bgez $2, TAG169
TAG169:
addi $1, $3, 6
lui $3, 9
bne $3, $3, TAG170
sll $0, $0, 0
TAG170:
sll $0, $0, 0
mtlo $3
mfhi $2
bltz $3, TAG171
TAG171:
mflo $4
sll $0, $0, 0
mthi $2
andi $3, $2, 15
TAG172:
mult $3, $3
bgez $3, TAG173
mfhi $1
multu $1, $3
TAG173:
lh $3, 0($1)
multu $1, $1
lh $2, 0($3)
mflo $1
TAG174:
bltz $1, TAG175
lw $4, 0($1)
srav $4, $4, $1
mflo $3
TAG175:
lh $2, 0($3)
srlv $4, $3, $3
lui $3, 10
sh $4, 0($2)
TAG176:
sll $0, $0, 0
bne $1, $1, TAG177
mflo $3
bgtz $1, TAG177
TAG177:
srl $2, $3, 15
mfhi $2
lui $3, 7
mfhi $4
TAG178:
sw $4, 0($4)
lhu $2, 0($4)
sw $2, 0($4)
and $1, $2, $2
TAG179:
bgtz $1, TAG180
sb $1, 0($1)
mfhi $2
sb $1, 0($2)
TAG180:
lbu $1, 0($2)
xor $4, $1, $1
multu $1, $2
bne $2, $2, TAG181
TAG181:
mfhi $2
bltz $4, TAG182
lw $1, 0($4)
mult $4, $2
TAG182:
multu $1, $1
bgtz $1, TAG183
sw $1, 0($1)
blez $1, TAG183
TAG183:
mfhi $3
lb $2, 0($3)
lb $2, 0($2)
addiu $1, $1, 6
TAG184:
bgtz $1, TAG185
sh $1, 0($1)
bne $1, $1, TAG185
div $1, $1
TAG185:
lh $2, 0($1)
blez $1, TAG186
sh $2, 0($2)
lhu $3, 0($2)
TAG186:
ori $3, $3, 11
bgtz $3, TAG187
mtlo $3
sw $3, 0($3)
TAG187:
sb $3, 0($3)
lui $4, 1
addu $1, $4, $3
xori $3, $1, 2
TAG188:
lui $1, 9
mfhi $2
mult $2, $2
mflo $2
TAG189:
mult $2, $2
sb $2, 0($2)
sllv $4, $2, $2
lb $4, 0($2)
TAG190:
mtlo $4
addi $4, $4, 2
lhu $3, 0($4)
blez $3, TAG191
TAG191:
mthi $3
ori $3, $3, 9
mfhi $1
sh $3, 0($1)
TAG192:
lui $2, 0
mult $1, $2
lw $3, 0($2)
multu $2, $2
TAG193:
divu $3, $3
lb $1, 0($3)
xor $2, $1, $3
blez $2, TAG194
TAG194:
mtlo $2
mtlo $2
mthi $2
lbu $3, 0($2)
TAG195:
sltiu $2, $3, 9
andi $4, $2, 5
lui $4, 12
sllv $4, $3, $4
TAG196:
xor $2, $4, $4
lui $4, 14
sll $0, $0, 0
sll $0, $0, 0
TAG197:
addiu $1, $4, 2
mthi $1
beq $1, $1, TAG198
sll $0, $0, 0
TAG198:
mfhi $1
lh $3, 0($3)
mfhi $4
or $2, $4, $3
TAG199:
bne $2, $2, TAG200
xori $4, $2, 10
bne $2, $4, TAG200
lui $4, 9
TAG200:
addiu $3, $4, 2
slt $4, $4, $3
mthi $3
lui $1, 6
TAG201:
sll $0, $0, 0
sll $0, $0, 0
sra $2, $3, 1
mult $1, $1
TAG202:
bgtz $2, TAG203
divu $2, $2
bne $2, $2, TAG203
lw $4, 0($2)
TAG203:
sltu $4, $4, $4
beq $4, $4, TAG204
lb $3, 0($4)
mfhi $1
TAG204:
bne $1, $1, TAG205
multu $1, $1
andi $4, $1, 12
sll $0, $0, 0
TAG205:
lbu $1, 0($3)
mfhi $2
mflo $3
beq $1, $3, TAG206
TAG206:
sll $1, $3, 2
mtlo $3
mult $3, $3
mult $3, $3
TAG207:
mtlo $1
mfhi $1
mult $1, $1
and $4, $1, $1
TAG208:
bltz $4, TAG209
mtlo $4
multu $4, $4
lhu $2, 0($4)
TAG209:
srlv $2, $2, $2
sb $2, 0($2)
mflo $4
sltu $4, $2, $2
TAG210:
sh $4, 0($4)
lui $1, 10
sll $0, $0, 0
mthi $1
TAG211:
divu $1, $1
xori $4, $1, 0
xor $3, $1, $1
bgez $3, TAG212
TAG212:
lui $1, 6
bne $3, $3, TAG213
sll $0, $0, 0
add $4, $3, $1
TAG213:
sll $0, $0, 0
mult $4, $4
mtlo $4
multu $4, $4
TAG214:
multu $4, $4
mult $4, $4
lui $3, 3
sll $0, $0, 0
TAG215:
nor $1, $3, $3
mult $1, $1
divu $3, $1
bne $1, $3, TAG216
TAG216:
sll $0, $0, 0
beq $4, $4, TAG217
sll $0, $0, 0
slt $3, $3, $3
TAG217:
mfhi $3
ori $2, $3, 15
bne $3, $2, TAG218
sll $0, $0, 0
TAG218:
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
addu $1, $2, $2
TAG219:
mtlo $1
addu $1, $1, $1
bgez $1, TAG220
sll $0, $0, 0
TAG220:
mthi $2
sll $0, $0, 0
mthi $2
sll $0, $0, 0
TAG221:
bgez $2, TAG222
mfhi $4
slti $3, $2, 10
sll $3, $4, 10
TAG222:
mflo $3
sll $0, $0, 0
multu $3, $3
mult $3, $3
TAG223:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
mfhi $4
TAG224:
beq $4, $4, TAG225
ori $3, $4, 5
bgtz $4, TAG225
multu $4, $4
TAG225:
addu $4, $3, $3
lui $1, 0
multu $4, $1
andi $3, $3, 11
TAG226:
mult $3, $3
bne $3, $3, TAG227
sltu $2, $3, $3
lb $1, 0($2)
TAG227:
mflo $3
lui $3, 9
mfhi $2
lui $2, 4
TAG228:
sll $0, $0, 0
lui $1, 2
slt $4, $1, $2
div $2, $1
TAG229:
beq $4, $4, TAG230
divu $4, $4
mult $4, $4
lui $4, 15
TAG230:
div $4, $4
bltz $4, TAG231
srav $2, $4, $4
blez $2, TAG231
TAG231:
sllv $2, $2, $2
beq $2, $2, TAG232
lhu $4, 0($2)
bne $2, $2, TAG232
TAG232:
lb $1, 0($4)
sw $4, 0($1)
mult $1, $4
bne $1, $4, TAG233
TAG233:
mthi $1
mfhi $3
bgez $1, TAG234
xori $4, $1, 7
TAG234:
lbu $2, 0($4)
bgez $4, TAG235
mthi $4
mtlo $2
TAG235:
lui $3, 15
mflo $2
sll $0, $0, 0
sh $3, 0($2)
TAG236:
bne $1, $1, TAG237
mflo $3
bgtz $3, TAG237
sh $1, 0($3)
TAG237:
mtlo $3
lui $1, 14
sll $0, $0, 0
bgez $1, TAG238
TAG238:
sll $0, $0, 0
mthi $1
mthi $1
sll $0, $0, 0
TAG239:
mtlo $4
bltz $4, TAG240
xori $1, $4, 6
sb $1, 0($1)
TAG240:
slti $4, $1, 8
beq $4, $1, TAG241
lui $1, 15
lui $1, 8
TAG241:
mflo $4
bltz $4, TAG242
sll $4, $1, 6
bgez $4, TAG242
TAG242:
lui $1, 15
sll $0, $0, 0
multu $4, $1
sll $0, $0, 0
TAG243:
beq $1, $1, TAG244
div $1, $1
sub $1, $1, $1
sra $3, $1, 4
TAG244:
sh $3, 0($3)
srav $2, $3, $3
lhu $1, 0($2)
andi $4, $3, 11
TAG245:
mfhi $1
andi $2, $1, 11
and $4, $1, $1
bne $2, $4, TAG246
TAG246:
lh $1, 0($4)
multu $1, $4
mthi $1
nor $1, $4, $1
TAG247:
slti $4, $1, 6
blez $4, TAG248
mthi $4
bne $1, $4, TAG248
TAG248:
mflo $4
mflo $3
xori $4, $4, 2
sb $4, 0($4)
TAG249:
lui $3, 3
and $3, $3, $3
div $3, $3
lui $1, 12
TAG250:
mfhi $1
lui $1, 8
bgez $1, TAG251
slt $4, $1, $1
TAG251:
beq $4, $4, TAG252
lhu $1, 0($4)
lui $4, 6
or $3, $4, $4
TAG252:
divu $3, $3
divu $3, $3
bne $3, $3, TAG253
mult $3, $3
TAG253:
bltz $3, TAG254
divu $3, $3
sll $0, $0, 0
lhu $4, 0($1)
TAG254:
lui $3, 13
mtlo $4
sll $0, $0, 0
mtlo $4
TAG255:
sll $0, $0, 0
lui $2, 4
mtlo $2
beq $3, $2, TAG256
TAG256:
mfhi $3
divu $3, $2
bne $2, $2, TAG257
sll $0, $0, 0
TAG257:
bltz $3, TAG258
lw $4, 0($3)
lui $3, 8
srl $2, $3, 3
TAG258:
multu $2, $2
multu $2, $2
divu $2, $2
bne $2, $2, TAG259
TAG259:
slt $2, $2, $2
lui $1, 9
divu $1, $1
mtlo $2
TAG260:
bgez $1, TAG261
sll $0, $0, 0
mthi $1
lhu $4, 0($1)
TAG261:
ori $3, $4, 7
srav $3, $3, $3
beq $3, $4, TAG262
srlv $2, $4, $3
TAG262:
addiu $1, $2, 5
mflo $4
mflo $4
xori $4, $1, 3
TAG263:
sll $0, $0, 0
sll $0, $0, 0
beq $4, $4, TAG264
mtlo $4
TAG264:
sll $0, $0, 0
sllv $3, $4, $4
mfhi $2
beq $2, $3, TAG265
TAG265:
xori $4, $2, 4
mfhi $2
multu $2, $2
mthi $2
TAG266:
lui $4, 10
sll $0, $0, 0
sll $0, $0, 0
addu $4, $4, $2
TAG267:
mthi $4
sll $0, $0, 0
sltiu $3, $2, 0
sltiu $4, $2, 4
TAG268:
sb $4, 0($4)
mtlo $4
lui $2, 3
mtlo $4
TAG269:
sll $0, $0, 0
mflo $1
andi $4, $2, 3
sll $0, $0, 0
TAG270:
mthi $4
mult $4, $4
lhu $4, 0($4)
lw $2, -256($4)
TAG271:
addiu $1, $2, 14
ori $1, $2, 11
mfhi $1
beq $2, $1, TAG272
TAG272:
mthi $1
mthi $1
lui $3, 15
lui $3, 13
TAG273:
addiu $3, $3, 7
mthi $3
subu $4, $3, $3
sll $0, $0, 0
TAG274:
mfhi $4
beq $4, $4, TAG275
divu $4, $4
lui $3, 7
TAG275:
sll $0, $0, 0
bltz $3, TAG276
subu $3, $3, $3
mult $3, $3
TAG276:
sb $3, 0($3)
lui $3, 4
srav $1, $3, $3
lui $4, 5
TAG277:
divu $4, $4
sll $2, $4, 4
blez $2, TAG278
sll $0, $0, 0
TAG278:
bltz $2, TAG279
sra $3, $2, 7
mtlo $3
sll $0, $0, 0
TAG279:
sll $0, $0, 0
mtlo $3
sll $0, $0, 0
lui $2, 4
TAG280:
bgtz $2, TAG281
div $2, $2
mult $2, $2
mtlo $2
TAG281:
lui $4, 4
mtlo $4
addu $4, $2, $4
sll $0, $0, 0
TAG282:
bltz $4, TAG283
sllv $1, $4, $4
sll $0, $0, 0
lui $1, 11
TAG283:
slt $1, $1, $1
mflo $2
beq $2, $1, TAG284
sll $0, $0, 0
TAG284:
xor $2, $2, $2
mult $2, $2
lui $1, 6
sll $0, $0, 0
TAG285:
sll $0, $0, 0
bne $4, $4, TAG286
sll $0, $0, 0
lui $3, 6
TAG286:
mtlo $3
or $4, $3, $3
addu $2, $4, $4
sll $0, $0, 0
TAG287:
mfhi $3
multu $1, $3
divu $1, $1
mthi $1
TAG288:
bltz $3, TAG289
mflo $4
mthi $3
lb $2, 0($4)
TAG289:
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
blez $2, TAG290
TAG290:
multu $2, $2
bne $2, $2, TAG291
mflo $2
beq $2, $2, TAG291
TAG291:
mtlo $2
sll $3, $2, 7
lui $2, 4
addiu $3, $2, 6
TAG292:
sll $0, $0, 0
sra $2, $3, 8
blez $2, TAG293
mtlo $2
TAG293:
mfhi $3
mfhi $2
mfhi $4
beq $2, $3, TAG294
TAG294:
mthi $4
lui $2, 4
bgez $2, TAG295
sll $0, $0, 0
TAG295:
sll $0, $0, 0
mtlo $2
sw $2, 0($3)
bgez $2, TAG296
TAG296:
ori $3, $3, 11
mfhi $1
div $3, $3
beq $1, $3, TAG297
TAG297:
sh $1, 0($1)
mflo $1
sb $1, 0($1)
lb $4, 0($1)
TAG298:
mfhi $1
bgtz $1, TAG299
lb $4, 0($4)
bgtz $1, TAG299
TAG299:
mfhi $1
lui $4, 3
sub $3, $4, $1
mthi $1
TAG300:
lui $2, 8
slti $4, $3, 11
divu $3, $2
bgtz $4, TAG301
TAG301:
lb $1, 0($4)
sb $4, 0($4)
lui $3, 5
mthi $1
TAG302:
lui $1, 14
mfhi $2
lui $2, 12
mflo $3
TAG303:
mult $3, $3
sh $3, 0($3)
bne $3, $3, TAG304
lbu $3, 0($3)
TAG304:
beq $3, $3, TAG305
sltiu $4, $3, 8
blez $4, TAG305
lb $4, 0($3)
TAG305:
bne $4, $4, TAG306
ori $3, $4, 11
slt $4, $4, $4
addi $4, $4, 12
TAG306:
beq $4, $4, TAG307
lui $1, 15
mflo $1
mult $1, $1
TAG307:
sltiu $1, $1, 7
bgez $1, TAG308
lw $3, 0($1)
divu $1, $1
TAG308:
sll $0, $0, 0
and $3, $3, $3
mfhi $1
mtlo $3
TAG309:
mfhi $4
bne $4, $1, TAG310
lui $4, 11
nor $2, $1, $4
TAG310:
lui $4, 3
or $1, $4, $4
sll $0, $0, 0
srl $1, $4, 7
TAG311:
multu $1, $1
xori $1, $1, 0
sh $1, -1536($1)
sw $1, -1536($1)
TAG312:
nor $1, $1, $1
mtlo $1
beq $1, $1, TAG313
sltu $1, $1, $1
TAG313:
multu $1, $1
nor $2, $1, $1
andi $2, $1, 9
lw $4, 0($2)
TAG314:
bne $4, $4, TAG315
sw $4, -1536($4)
bgez $4, TAG315
sb $4, -1536($4)
TAG315:
sh $4, -1536($4)
srav $3, $4, $4
lbu $2, -1536($3)
mflo $2
TAG316:
lbu $3, 0($2)
sh $2, 0($3)
bgez $2, TAG317
mflo $3
TAG317:
sw $3, 0($3)
srav $3, $3, $3
srl $4, $3, 2
multu $3, $4
TAG318:
sw $4, 0($4)
mfhi $1
beq $4, $4, TAG319
or $3, $4, $1
TAG319:
sllv $4, $3, $3
srlv $4, $3, $4
mthi $4
multu $4, $4
TAG320:
srav $4, $4, $4
lui $4, 6
mthi $4
nor $2, $4, $4
TAG321:
mflo $2
lui $1, 6
blez $1, TAG322
mthi $2
TAG322:
mflo $2
sb $2, 0($2)
divu $1, $1
sw $2, 0($2)
TAG323:
srl $2, $2, 0
mult $2, $2
sll $2, $2, 10
sh $2, 0($2)
TAG324:
mult $2, $2
multu $2, $2
lb $1, 0($2)
mflo $3
TAG325:
beq $3, $3, TAG326
mthi $3
sll $2, $3, 11
divu $3, $3
TAG326:
mult $2, $2
sb $2, 0($2)
srlv $1, $2, $2
blez $2, TAG327
TAG327:
mthi $1
multu $1, $1
bne $1, $1, TAG328
lb $3, 0($1)
TAG328:
lui $4, 0
beq $3, $3, TAG329
mthi $4
lw $3, 0($3)
TAG329:
bgtz $3, TAG330
sh $3, 0($3)
lui $2, 9
multu $2, $2
TAG330:
lui $4, 4
mtlo $2
mtlo $4
beq $2, $2, TAG331
TAG331:
xori $4, $4, 11
sll $0, $0, 0
lui $1, 6
addu $3, $1, $1
TAG332:
bltz $3, TAG333
mtlo $3
mthi $3
bne $3, $3, TAG333
TAG333:
sll $0, $0, 0
lui $3, 3
mtlo $3
blez $4, TAG334
TAG334:
sll $0, $0, 0
bgez $3, TAG335
divu $3, $3
xori $3, $3, 13
TAG335:
bne $3, $3, TAG336
mflo $3
lbu $2, 0($3)
lui $3, 6
TAG336:
sll $0, $0, 0
mthi $1
subu $4, $1, $3
bltz $3, TAG337
TAG337:
multu $4, $4
xori $4, $4, 11
and $4, $4, $4
bne $4, $4, TAG338
TAG338:
mflo $3
sw $3, 0($3)
bne $3, $3, TAG339
lb $4, 0($4)
TAG339:
lb $3, 0($4)
lui $2, 2
multu $3, $3
andi $1, $2, 4
TAG340:
lui $2, 2
bgez $1, TAG341
sll $0, $0, 0
mflo $4
TAG341:
xori $3, $4, 5
sb $4, 0($3)
ori $2, $3, 12
lw $4, 0($4)
TAG342:
mflo $4
addu $4, $4, $4
mthi $4
sw $4, 0($4)
TAG343:
lbu $1, 0($4)
sll $2, $4, 8
addiu $3, $1, 15
lbu $2, 0($3)
TAG344:
bgez $2, TAG345
mflo $4
mthi $4
mtlo $2
TAG345:
mflo $4
lhu $4, 0($4)
lui $3, 15
bgez $4, TAG346
TAG346:
multu $3, $3
bgez $3, TAG347
sll $0, $0, 0
lh $4, 0($3)
TAG347:
lui $2, 14
mthi $2
beq $4, $2, TAG348
multu $2, $4
TAG348:
sll $0, $0, 0
bgtz $2, TAG349
sll $0, $0, 0
lb $1, 0($2)
TAG349:
sll $2, $1, 3
lbu $4, 0($1)
blez $4, TAG350
sltiu $1, $4, 13
TAG350:
divu $1, $1
bltz $1, TAG351
lb $4, 0($1)
mfhi $1
TAG351:
mflo $2
sra $2, $2, 12
lhu $4, 0($2)
lui $3, 12
TAG352:
mflo $4
lui $1, 10
sll $0, $0, 0
sb $4, 0($4)
TAG353:
beq $1, $1, TAG354
mult $1, $1
lui $3, 12
blez $1, TAG354
TAG354:
lui $3, 5
mtlo $3
lui $3, 9
multu $3, $3
TAG355:
div $3, $3
beq $3, $3, TAG356
sll $0, $0, 0
bltz $3, TAG356
TAG356:
lui $3, 7
mflo $2
lui $2, 8
mfhi $2
TAG357:
mult $2, $2
beq $2, $2, TAG358
sb $2, 0($2)
sh $2, 0($2)
TAG358:
bltz $2, TAG359
mthi $2
srav $4, $2, $2
bgez $4, TAG359
TAG359:
mtlo $4
and $1, $4, $4
mthi $1
mfhi $4
TAG360:
ori $2, $4, 6
multu $2, $2
lb $3, 0($2)
sh $3, 0($2)
TAG361:
mthi $3
sh $3, 0($3)
beq $3, $3, TAG362
sllv $3, $3, $3
TAG362:
bne $3, $3, TAG363
lh $3, -384($3)
bne $3, $3, TAG363
sra $2, $3, 5
TAG363:
lui $3, 10
lw $3, 0($2)
sh $2, 0($2)
mthi $3
TAG364:
mtlo $3
bne $3, $3, TAG365
mtlo $3
addu $3, $3, $3
TAG365:
sltiu $1, $3, 5
mfhi $4
lui $2, 2
bne $3, $1, TAG366
TAG366:
sll $0, $0, 0
lui $4, 15
div $2, $2
lui $1, 12
TAG367:
mflo $1
mtlo $1
sb $1, 0($1)
beq $1, $1, TAG368
TAG368:
lui $1, 15
mflo $2
divu $2, $1
bne $1, $1, TAG369
TAG369:
sb $2, 0($2)
lbu $3, 0($2)
slt $2, $3, $3
mtlo $2
TAG370:
sw $2, 0($2)
bgtz $2, TAG371
sb $2, 0($2)
bgez $2, TAG371
TAG371:
lui $2, 2
sll $0, $0, 0
mult $2, $2
xori $2, $2, 4
TAG372:
mflo $1
blez $2, TAG373
mflo $4
beq $1, $2, TAG373
TAG373:
multu $4, $4
mflo $3
multu $4, $3
addi $3, $4, 10
TAG374:
bltz $3, TAG375
nor $4, $3, $3
sra $2, $3, 3
bne $2, $2, TAG375
TAG375:
sb $2, 0($2)
div $2, $2
mflo $1
lb $3, 0($2)
TAG376:
sb $3, 0($3)
lui $4, 7
sll $0, $0, 0
mtlo $2
TAG377:
bne $2, $2, TAG378
lbu $1, 0($2)
sb $1, 0($1)
bgtz $2, TAG378
TAG378:
sb $1, 0($1)
mtlo $1
beq $1, $1, TAG379
mflo $4
TAG379:
lbu $1, 0($4)
and $1, $1, $1
subu $1, $1, $1
sw $4, 0($1)
TAG380:
mtlo $1
lui $2, 9
beq $2, $2, TAG381
lui $3, 14
TAG381:
mult $3, $3
divu $3, $3
bne $3, $3, TAG382
sra $4, $3, 0
TAG382:
and $3, $4, $4
bgtz $4, TAG383
multu $3, $3
lhu $2, 0($3)
TAG383:
sll $0, $0, 0
sll $0, $0, 0
mtlo $2
sll $0, $0, 0
TAG384:
mtlo $3
srl $1, $3, 7
mtlo $3
ori $2, $3, 0
TAG385:
sra $1, $2, 2
lui $4, 14
sll $0, $0, 0
bgtz $1, TAG386
TAG386:
sll $0, $0, 0
lui $1, 5
sll $0, $0, 0
sll $4, $1, 6
TAG387:
nor $2, $4, $4
lui $4, 10
mthi $4
mthi $4
TAG388:
lui $2, 12
subu $2, $4, $2
sll $0, $0, 0
sll $0, $0, 0
TAG389:
lui $1, 4
lui $3, 13
or $1, $1, $2
beq $3, $1, TAG390
TAG390:
mthi $1
bgtz $1, TAG391
sll $0, $0, 0
divu $4, $4
TAG391:
lui $4, 15
sll $0, $0, 0
beq $4, $1, TAG392
sll $0, $0, 0
TAG392:
mfhi $2
lbu $1, 0($2)
nor $2, $1, $2
bltz $2, TAG393
TAG393:
mthi $2
mtlo $2
multu $2, $2
mflo $1
TAG394:
lui $4, 2
slti $1, $1, 0
subu $1, $1, $4
xor $4, $1, $1
TAG395:
bgez $4, TAG396
mflo $4
subu $1, $4, $4
lui $1, 8
TAG396:
lui $2, 7
lui $3, 5
slt $2, $1, $2
mthi $3
TAG397:
mult $2, $2
beq $2, $2, TAG398
lui $1, 4
mfhi $3
TAG398:
mflo $1
beq $1, $3, TAG399
sb $1, 0($1)
lb $2, 0($1)
TAG399:
bne $2, $2, TAG400
lui $4, 13
mult $2, $2
blez $2, TAG400
TAG400:
mtlo $4
lui $2, 15
sll $0, $0, 0
xori $1, $2, 11
TAG401:
mthi $1
and $1, $1, $1
bne $1, $1, TAG402
mult $1, $1
TAG402:
mthi $1
sll $0, $0, 0
srav $4, $1, $1
slti $1, $1, 9
TAG403:
lbu $4, 0($1)
div $1, $4
mfhi $2
beq $2, $1, TAG404
TAG404:
mflo $4
sw $2, 0($4)
sw $2, 0($4)
lui $2, 7
TAG405:
sll $0, $0, 0
lh $1, 0($1)
sll $0, $0, 0
addu $4, $2, $1
TAG406:
sll $0, $0, 0
bne $4, $4, TAG407
div $4, $4
mult $4, $4
TAG407:
bne $4, $4, TAG408
sll $0, $0, 0
srav $3, $4, $4
mtlo $3
TAG408:
bne $3, $3, TAG409
divu $3, $3
bne $3, $3, TAG409
addiu $2, $3, 5
TAG409:
bgez $2, TAG410
mthi $2
sh $2, 0($2)
multu $2, $2
TAG410:
mtlo $2
lui $2, 13
div $2, $2
mflo $3
TAG411:
lui $1, 9
bgtz $3, TAG412
mtlo $3
mtlo $3
TAG412:
subu $2, $1, $1
sll $0, $0, 0
sll $0, $0, 0
mflo $3
TAG413:
sb $3, 0($3)
mfhi $3
multu $3, $3
bne $3, $3, TAG414
TAG414:
lhu $4, 0($3)
lbu $2, 0($3)
beq $3, $4, TAG415
sltiu $4, $3, 14
TAG415:
mtlo $4
bne $4, $4, TAG416
div $4, $4
mtlo $4
TAG416:
mflo $3
sll $1, $3, 1
mult $3, $3
nor $3, $3, $4
TAG417:
beq $3, $3, TAG418
multu $3, $3
mflo $2
ori $3, $2, 10
TAG418:
mfhi $4
blez $4, TAG419
mult $4, $4
beq $4, $3, TAG419
TAG419:
div $4, $4
addiu $2, $4, 10
mthi $4
beq $4, $4, TAG420
TAG420:
lh $4, 0($2)
bne $4, $2, TAG421
srav $3, $4, $2
xor $3, $4, $4
TAG421:
sltiu $4, $3, 0
mfhi $3
bgez $4, TAG422
mult $4, $4
TAG422:
bltz $3, TAG423
lui $3, 0
mult $3, $3
beq $3, $3, TAG423
TAG423:
mthi $3
bgtz $3, TAG424
sll $2, $3, 13
multu $3, $2
TAG424:
lui $1, 0
addu $1, $2, $2
sb $1, 0($1)
sll $1, $1, 9
TAG425:
mflo $4
lui $4, 6
mthi $1
srl $4, $1, 5
TAG426:
sh $4, 0($4)
mflo $3
sb $3, 0($3)
sb $4, 0($3)
TAG427:
lui $3, 1
mflo $2
sll $0, $0, 0
lh $1, 0($2)
TAG428:
lui $4, 9
sllv $4, $1, $4
mthi $1
sw $4, 0($1)
TAG429:
mtlo $4
mtlo $4
lhu $1, 0($4)
mult $4, $4
TAG430:
addiu $2, $1, 8
slt $4, $2, $2
mult $2, $2
mult $4, $4
TAG431:
sb $4, 0($4)
sllv $3, $4, $4
bgez $4, TAG432
mtlo $4
TAG432:
sub $4, $3, $3
sltiu $1, $4, 2
mtlo $4
lui $3, 1
TAG433:
slti $3, $3, 12
or $4, $3, $3
lui $2, 15
add $1, $3, $2
TAG434:
sra $1, $1, 8
mtlo $1
divu $1, $1
subu $4, $1, $1
TAG435:
lhu $2, 0($4)
mflo $3
mflo $2
srlv $1, $2, $4
TAG436:
sb $1, 0($1)
mult $1, $1
mfhi $3
sh $1, 0($3)
TAG437:
bgez $3, TAG438
mult $3, $3
lui $3, 1
sw $3, 0($3)
TAG438:
mthi $3
mthi $3
mfhi $2
lui $3, 6
TAG439:
bgez $3, TAG440
mflo $3
beq $3, $3, TAG440
sw $3, 0($3)
TAG440:
bgez $3, TAG441
mult $3, $3
xori $4, $3, 13
bne $3, $3, TAG441
TAG441:
xori $3, $4, 5
lui $2, 13
srlv $3, $3, $2
addu $4, $2, $2
TAG442:
bgtz $4, TAG443
ori $3, $4, 1
lbu $4, 0($3)
multu $4, $4
TAG443:
mthi $4
bne $4, $4, TAG444
sll $0, $0, 0
bltz $4, TAG444
TAG444:
sll $0, $0, 0
divu $4, $4
sra $4, $4, 9
mtlo $4
TAG445:
bne $4, $4, TAG446
lui $2, 3
bne $2, $2, TAG446
and $4, $2, $2
TAG446:
mthi $4
blez $4, TAG447
srl $4, $4, 3
mfhi $4
TAG447:
div $4, $4
mult $4, $4
sll $0, $0, 0
bgez $4, TAG448
TAG448:
mtlo $4
blez $4, TAG449
andi $1, $4, 5
bltz $4, TAG449
TAG449:
ori $1, $1, 13
divu $1, $1
sb $1, 0($1)
mfhi $1
TAG450:
bne $1, $1, TAG451
mfhi $2
mult $2, $1
lui $4, 5
TAG451:
divu $4, $4
mthi $4
mtlo $4
sll $4, $4, 10
TAG452:
srl $2, $4, 9
and $3, $2, $4
mfhi $1
bltz $1, TAG453
TAG453:
sll $0, $0, 0
sh $3, 0($3)
multu $1, $1
srav $4, $3, $3
TAG454:
subu $4, $4, $4
mflo $1
sw $4, 0($4)
mflo $4
TAG455:
mthi $4
sb $4, 0($4)
beq $4, $4, TAG456
sltiu $2, $4, 12
TAG456:
srl $2, $2, 14
mtlo $2
lui $3, 12
mult $2, $2
TAG457:
bgtz $3, TAG458
sll $0, $0, 0
sb $3, 0($3)
lui $2, 15
TAG458:
mthi $2
sll $3, $2, 6
bgtz $2, TAG459
sh $3, 0($2)
TAG459:
srlv $3, $3, $3
andi $2, $3, 15
lhu $3, 0($3)
lw $1, 0($3)
TAG460:
sw $1, 0($1)
lb $4, 0($1)
multu $4, $4
mult $4, $1
TAG461:
mflo $1
lhu $1, 0($1)
bne $1, $1, TAG462
mtlo $1
TAG462:
bne $1, $1, TAG463
mthi $1
mthi $1
lbu $1, 0($1)
TAG463:
mtlo $1
lui $3, 1
multu $3, $1
blez $1, TAG464
TAG464:
lui $1, 12
bne $3, $1, TAG465
sll $0, $0, 0
sw $1, 0($1)
TAG465:
sll $0, $0, 0
or $1, $1, $1
sll $0, $0, 0
sll $0, $0, 0
TAG466:
addu $1, $4, $4
mflo $3
sh $4, 0($1)
sw $3, 0($3)
TAG467:
mtlo $3
bgez $3, TAG468
mfhi $3
divu $3, $3
TAG468:
lui $3, 10
sll $0, $0, 0
lui $4, 14
sltu $4, $4, $3
TAG469:
addiu $4, $4, 13
multu $4, $4
mflo $2
bne $2, $4, TAG470
TAG470:
ori $2, $2, 2
lw $3, -171($2)
sh $2, -171($2)
lui $3, 15
TAG471:
srl $4, $3, 15
blez $3, TAG472
mfhi $4
mult $4, $4
TAG472:
mtlo $4
bne $4, $4, TAG473
mflo $2
sb $4, 0($4)
TAG473:
srlv $1, $2, $2
sb $2, 0($1)
bne $2, $1, TAG474
lui $3, 2
TAG474:
blez $3, TAG475
mult $3, $3
mflo $3
subu $1, $3, $3
TAG475:
beq $1, $1, TAG476
sh $1, 0($1)
lbu $2, 0($1)
sltu $3, $1, $1
TAG476:
srav $1, $3, $3
sw $3, 0($1)
mtlo $1
bgtz $1, TAG477
TAG477:
mflo $1
slt $4, $1, $1
xori $3, $1, 9
beq $3, $1, TAG478
TAG478:
mflo $4
and $4, $4, $4
ori $3, $4, 0
mflo $4
TAG479:
mfhi $3
mtlo $3
bne $4, $4, TAG480
mthi $4
TAG480:
bgtz $3, TAG481
subu $2, $3, $3
lui $4, 6
add $4, $2, $4
TAG481:
mfhi $4
lbu $3, 0($4)
multu $4, $4
blez $3, TAG482
TAG482:
sh $3, 0($3)
add $2, $3, $3
mthi $2
sub $2, $3, $2
TAG483:
mtlo $2
sw $2, 0($2)
lb $2, 0($2)
sh $2, 0($2)
TAG484:
ori $1, $2, 11
mthi $1
multu $2, $1
lbu $1, 0($1)
TAG485:
mult $1, $1
lui $2, 12
lbu $4, 0($1)
sll $0, $0, 0
TAG486:
blez $3, TAG487
lui $1, 11
sltiu $2, $1, 0
lb $3, 0($2)
TAG487:
bltz $3, TAG488
subu $1, $3, $3
lh $1, 0($3)
mtlo $1
TAG488:
mult $1, $1
sw $1, 0($1)
sh $1, 0($1)
sw $1, 0($1)
TAG489:
lui $1, 3
lui $3, 15
sll $0, $0, 0
slt $1, $1, $3
TAG490:
multu $1, $1
mult $1, $1
div $1, $1
lbu $4, 0($1)
TAG491:
bltz $4, TAG492
sb $4, 0($4)
bgez $4, TAG492
lb $4, 0($4)
TAG492:
sh $4, 0($4)
mtlo $4
addiu $1, $4, 14
bne $1, $4, TAG493
TAG493:
mflo $3
mult $1, $3
lw $2, 0($3)
mflo $3
TAG494:
lh $3, 0($3)
sh $3, 0($3)
mflo $3
srl $4, $3, 13
TAG495:
lw $4, 0($4)
lui $1, 14
lui $2, 12
bgez $4, TAG496
TAG496:
andi $2, $2, 10
bltz $2, TAG497
mtlo $2
sra $2, $2, 8
TAG497:
sb $2, 0($2)
xori $4, $2, 6
sh $2, 0($2)
mthi $4
TAG498:
mthi $4
bltz $4, TAG499
or $2, $4, $4
lb $1, 0($2)
TAG499:
sb $1, 0($1)
sh $1, 0($1)
lbu $3, 0($1)
lbu $3, 0($1)
TAG500:
div $3, $3
divu $3, $3
sb $3, 0($3)
lhu $4, 0($3)
TAG501:
mtlo $4
bgtz $4, TAG502
subu $2, $4, $4
bne $2, $4, TAG502
TAG502:
lbu $2, 0($2)
lui $1, 8
bltz $1, TAG503
mult $1, $2
TAG503:
mult $1, $1
or $3, $1, $1
beq $3, $3, TAG504
mflo $1
TAG504:
lui $3, 11
lui $3, 11
subu $1, $1, $3
subu $3, $3, $1
TAG505:
mflo $3
lh $1, 0($3)
mult $3, $1
beq $3, $3, TAG506
TAG506:
sw $1, 0($1)
blez $1, TAG507
sll $3, $1, 7
sh $3, 0($3)
TAG507:
mult $3, $3
mult $3, $3
mthi $3
mflo $4
TAG508:
xori $3, $4, 11
bne $3, $3, TAG509
addu $3, $3, $4
sub $2, $3, $4
TAG509:
mflo $4
sh $4, 0($4)
multu $4, $4
beq $2, $2, TAG510
TAG510:
sh $4, 0($4)
andi $4, $4, 15
lw $2, 0($4)
lb $1, 0($4)
TAG511:
srlv $3, $1, $1
bgtz $3, TAG512
mthi $1
lui $4, 12
TAG512:
mtlo $4
sllv $1, $4, $4
subu $3, $1, $4
or $1, $4, $4
TAG513:
beq $1, $1, TAG514
srl $2, $1, 12
bgtz $1, TAG514
lui $3, 15
TAG514:
lhu $1, 0($3)
mfhi $4
multu $4, $3
sra $2, $3, 12
TAG515:
sh $2, 0($2)
nor $4, $2, $2
mflo $3
lhu $3, 0($2)
TAG516:
sb $3, 0($3)
mfhi $2
mtlo $3
bltz $2, TAG517
TAG517:
mfhi $4
lh $3, 0($4)
mflo $4
bgez $2, TAG518
TAG518:
lui $1, 0
addu $2, $1, $1
bne $1, $1, TAG519
addiu $1, $4, 2
TAG519:
mthi $1
sllv $2, $1, $1
bgtz $1, TAG520
lbu $1, 0($2)
TAG520:
slt $3, $1, $1
multu $1, $3
lh $3, 0($1)
mtlo $3
TAG521:
bgez $3, TAG522
lhu $1, 0($3)
mfhi $2
lui $3, 15
TAG522:
sb $3, 0($3)
sw $3, 0($3)
ori $4, $3, 7
xor $1, $3, $4
TAG523:
mtlo $1
multu $1, $1
lb $2, 0($1)
sltiu $1, $2, 14
TAG524:
and $2, $1, $1
mthi $2
mfhi $4
xori $2, $2, 14
TAG525:
lui $3, 7
bgtz $2, TAG526
sll $0, $0, 0
addiu $3, $2, 1
TAG526:
sll $0, $0, 0
mult $3, $3
sll $0, $0, 0
sll $0, $0, 0
TAG527:
lui $2, 6
mflo $1
mtlo $1
srl $1, $1, 5
TAG528:
bltz $1, TAG529
nor $4, $1, $1
lui $2, 1
beq $1, $2, TAG529
TAG529:
sll $0, $0, 0
mflo $2
sw $2, 0($2)
sh $2, 0($2)
TAG530:
slt $2, $2, $2
bgtz $2, TAG531
lui $1, 11
mtlo $2
TAG531:
sll $0, $0, 0
sll $0, $0, 0
mthi $1
multu $1, $1
TAG532:
subu $4, $1, $1
slti $1, $4, 7
lbu $1, 0($1)
bne $1, $1, TAG533
TAG533:
addiu $1, $1, 7
bne $1, $1, TAG534
lui $2, 9
sll $1, $1, 2
TAG534:
sb $1, 0($1)
lbu $4, 0($1)
mult $4, $4
lui $2, 12
TAG535:
andi $1, $2, 10
lui $3, 7
mthi $3
lui $2, 10
TAG536:
bne $2, $2, TAG537
sll $0, $0, 0
addiu $2, $4, 8
mthi $2
TAG537:
bne $2, $2, TAG538
lb $4, 0($2)
mfhi $2
sllv $1, $4, $2
TAG538:
mfhi $2
mflo $3
blez $3, TAG539
mtlo $1
TAG539:
mflo $3
mult $3, $3
div $3, $3
bne $3, $3, TAG540
TAG540:
mflo $4
sb $4, 0($4)
sb $3, 0($4)
lb $1, 0($3)
TAG541:
lui $2, 4
addu $3, $1, $1
beq $1, $1, TAG542
xori $2, $2, 5
TAG542:
sll $0, $0, 0
bgez $1, TAG543
mthi $1
mtlo $2
TAG543:
lbu $4, 0($1)
div $4, $1
mthi $1
addu $1, $4, $1
TAG544:
bltz $1, TAG545
srl $3, $1, 8
mtlo $3
sb $1, 0($3)
TAG545:
sh $3, 0($3)
mfhi $3
mtlo $3
mtlo $3
TAG546:
srlv $3, $3, $3
sh $3, 0($3)
bgtz $3, TAG547
mfhi $1
TAG547:
sb $1, 0($1)
bgez $1, TAG548
slt $3, $1, $1
lui $4, 5
TAG548:
addi $4, $4, 14
sh $4, 0($4)
lui $1, 6
mult $4, $4
TAG549:
sll $0, $0, 0
bne $1, $1, TAG550
mflo $3
mult $1, $1
TAG550:
mflo $4
blez $4, TAG551
multu $4, $3
sb $4, 0($3)
TAG551:
mtlo $4
mtlo $4
xori $3, $4, 9
beq $3, $3, TAG552
TAG552:
div $3, $3
lbu $4, 0($3)
bltz $4, TAG553
addiu $3, $4, 8
TAG553:
beq $3, $3, TAG554
mflo $4
or $1, $3, $3
beq $1, $4, TAG554
TAG554:
addu $4, $1, $1
bgez $1, TAG555
sll $0, $0, 0
mthi $4
TAG555:
bgtz $3, TAG556
mtlo $3
mfhi $1
mfhi $1
TAG556:
mflo $1
bgez $1, TAG557
sb $1, 0($1)
ori $2, $1, 11
TAG557:
srl $2, $2, 15
mult $2, $2
slti $3, $2, 10
mtlo $2
TAG558:
sb $3, 0($3)
mtlo $3
lui $4, 8
lbu $1, 0($3)
TAG559:
sltiu $3, $1, 15
mult $1, $3
mtlo $3
andi $3, $3, 10
TAG560:
lui $3, 9
mfhi $4
lw $3, 0($4)
blez $3, TAG561
TAG561:
mtlo $3
sw $3, -256($3)
ori $2, $3, 0
mult $3, $2
TAG562:
sra $1, $2, 13
bltz $2, TAG563
mult $1, $1
subu $4, $1, $2
TAG563:
multu $4, $4
mflo $2
mult $2, $2
lui $2, 11
TAG564:
bgtz $2, TAG565
mfhi $1
bne $1, $1, TAG565
lbu $3, 0($1)
TAG565:
blez $3, TAG566
mtlo $3
bne $3, $3, TAG566
sb $3, -256($3)
TAG566:
lui $4, 5
mflo $4
divu $4, $4
sw $3, -256($4)
TAG567:
bne $4, $4, TAG568
sb $4, -256($4)
mflo $4
divu $4, $4
TAG568:
lbu $3, 0($4)
ori $3, $3, 6
bgez $4, TAG569
sb $3, 0($3)
TAG569:
sll $4, $3, 3
bgez $3, TAG570
sllv $4, $3, $4
mfhi $4
TAG570:
subu $1, $4, $4
mtlo $4
sb $1, 0($1)
bgez $1, TAG571
TAG571:
lh $2, 0($1)
slti $2, $1, 2
blez $2, TAG572
lui $3, 9
TAG572:
lui $1, 2
multu $3, $3
srl $3, $1, 5
nor $4, $1, $3
TAG573:
slti $1, $4, 2
beq $4, $4, TAG574
lui $3, 7
mfhi $2
TAG574:
lbu $4, 0($2)
lui $3, 11
lbu $2, 0($2)
sltiu $4, $2, 12
TAG575:
sb $4, 0($4)
multu $4, $4
sll $1, $4, 3
div $4, $1
TAG576:
sb $1, 0($1)
bltz $1, TAG577
sh $1, 0($1)
sw $1, 0($1)
TAG577:
srl $3, $1, 0
sb $3, 0($3)
lw $1, 0($3)
lui $3, 2
TAG578:
mtlo $3
blez $3, TAG579
mflo $2
nor $1, $2, $3
TAG579:
mthi $1
sll $0, $0, 0
mflo $2
sll $0, $0, 0
TAG580:
sll $0, $0, 0
sll $0, $0, 0
bne $2, $2, TAG581
mthi $2
TAG581:
mfhi $1
sll $0, $0, 0
bne $3, $2, TAG582
lui $3, 8
TAG582:
bne $3, $3, TAG583
mflo $3
srl $4, $3, 9
mtlo $3
TAG583:
lui $2, 15
lui $2, 4
addiu $2, $4, 7
ori $4, $4, 10
TAG584:
mtlo $4
lb $3, -266($4)
srav $3, $4, $3
bne $3, $4, TAG585
TAG585:
multu $3, $3
bltz $3, TAG586
sll $2, $3, 7
mtlo $3
TAG586:
lui $2, 9
mthi $2
mtlo $2
sll $0, $0, 0
TAG587:
xor $4, $4, $4
sw $4, 0($4)
bne $4, $4, TAG588
mthi $4
TAG588:
lui $2, 2
multu $4, $4
sh $4, 0($4)
blez $4, TAG589
TAG589:
sll $0, $0, 0
addiu $3, $2, 15
div $2, $3
mtlo $3
TAG590:
mfhi $4
multu $4, $3
mthi $4
sll $0, $0, 0
TAG591:
mflo $4
srav $4, $4, $4
mflo $3
lui $3, 11
TAG592:
sll $0, $0, 0
lui $2, 9
mflo $1
mfhi $4
TAG593:
lui $1, 0
mthi $4
div $1, $4
mfhi $4
TAG594:
srl $2, $4, 14
mthi $2
mtlo $2
lui $1, 15
TAG595:
slt $3, $1, $1
lui $4, 14
mtlo $4
sll $0, $0, 0
TAG596:
multu $3, $3
beq $3, $3, TAG597
mult $3, $3
lhu $4, 0($3)
TAG597:
divu $4, $4
lui $3, 13
mtlo $3
bne $4, $3, TAG598
TAG598:
sll $0, $0, 0
addiu $3, $3, 7
divu $3, $3
lui $4, 1
TAG599:
div $4, $4
mtlo $4
srav $3, $4, $4
or $1, $3, $3
TAG600:
sll $0, $0, 0
lb $3, 0($2)
mflo $1
mult $1, $2
TAG601:
multu $1, $1
srlv $4, $1, $1
or $3, $1, $1
subu $2, $4, $1
TAG602:
beq $2, $2, TAG603
lw $4, 0($2)
divu $4, $2
mflo $1
TAG603:
blez $1, TAG604
mthi $1
mfhi $3
slti $1, $1, 2
TAG604:
sltiu $3, $1, 12
subu $3, $1, $3
lui $4, 10
bne $3, $3, TAG605
TAG605:
mult $4, $4
beq $4, $4, TAG606
lui $1, 12
mult $4, $4
TAG606:
lui $2, 8
multu $2, $2
bgez $1, TAG607
mflo $4
TAG607:
ori $2, $4, 9
mflo $2
mflo $3
mfhi $2
TAG608:
bne $2, $2, TAG609
lbu $2, 0($2)
mfhi $3
bne $3, $3, TAG609
TAG609:
multu $3, $3
mthi $3
sh $3, 0($3)
mfhi $3
TAG610:
lui $3, 7
sllv $4, $3, $3
addiu $2, $3, 8
sll $0, $0, 0
TAG611:
mthi $2
mtlo $2
sll $0, $0, 0
xor $2, $2, $2
TAG612:
mfhi $2
bltz $2, TAG613
sll $0, $0, 0
beq $1, $2, TAG613
TAG613:
mflo $3
mflo $4
sll $0, $0, 0
ori $3, $4, 7
TAG614:
subu $3, $3, $3
mthi $3
bltz $3, TAG615
ori $3, $3, 5
TAG615:
lb $1, 0($3)
lhu $2, 0($1)
beq $2, $3, TAG616
xori $1, $3, 10
TAG616:
mthi $1
lui $3, 10
addu $2, $3, $3
mult $2, $3
TAG617:
sll $0, $0, 0
div $3, $3
mult $3, $3
sll $0, $0, 0
TAG618:
srav $2, $4, $4
bne $4, $2, TAG619
mtlo $2
bne $4, $2, TAG619
TAG619:
mthi $2
sw $2, -1792($2)
bne $2, $2, TAG620
mtlo $2
TAG620:
sw $2, -1792($2)
mfhi $2
beq $2, $2, TAG621
addu $3, $2, $2
TAG621:
lui $1, 3
div $3, $3
srlv $4, $3, $3
mthi $4
TAG622:
lui $2, 15
mthi $4
lui $4, 15
sllv $2, $4, $2
TAG623:
addiu $3, $2, 1
mflo $3
divu $3, $3
beq $2, $2, TAG624
TAG624:
andi $1, $3, 3
sb $1, 0($3)
bne $1, $1, TAG625
mtlo $3
TAG625:
sll $2, $1, 5
ori $4, $1, 11
beq $2, $2, TAG626
lui $3, 10
TAG626:
mult $3, $3
beq $3, $3, TAG627
mthi $3
sllv $3, $3, $3
TAG627:
div $3, $3
bgtz $3, TAG628
sll $0, $0, 0
sh $4, 0($4)
TAG628:
andi $3, $4, 3
lb $1, 0($3)
mtlo $1
lbu $4, 0($3)
TAG629:
bne $4, $4, TAG630
srav $1, $4, $4
lui $1, 11
sll $0, $0, 0
TAG630:
sll $0, $0, 0
mfhi $1
lui $4, 1
bne $2, $2, TAG631
TAG631:
mflo $2
blez $4, TAG632
lw $3, 0($2)
lh $4, -256($3)
TAG632:
addu $1, $4, $4
lw $4, -256($4)
mfhi $3
nor $2, $4, $3
TAG633:
bne $2, $2, TAG634
addiu $1, $2, 14
lw $3, 243($1)
lbu $3, 257($2)
TAG634:
sub $2, $3, $3
mult $3, $2
add $2, $2, $3
lui $1, 11
TAG635:
lui $1, 14
sll $0, $0, 0
sw $2, 0($2)
subu $2, $1, $2
TAG636:
sll $0, $0, 0
beq $2, $2, TAG637
sll $0, $0, 0
bgez $4, TAG637
TAG637:
slt $2, $4, $4
bgez $4, TAG638
mflo $4
sw $4, 0($4)
TAG638:
mult $4, $4
xor $3, $4, $4
sll $4, $4, 10
mflo $1
TAG639:
multu $1, $1
bne $1, $1, TAG640
lb $4, 0($1)
srlv $3, $1, $1
TAG640:
lui $2, 11
lui $1, 8
mthi $1
or $2, $1, $1
TAG641:
mthi $2
mflo $4
sw $4, 0($4)
subu $3, $2, $2
TAG642:
beq $3, $3, TAG643
lui $2, 8
mtlo $3
bgez $2, TAG643
TAG643:
mfhi $4
ori $1, $4, 0
mfhi $4
bgtz $4, TAG644
TAG644:
lui $3, 9
bgtz $3, TAG645
andi $3, $4, 2
slti $1, $3, 13
TAG645:
sll $1, $1, 4
div $1, $1
slt $4, $1, $1
mfhi $2
TAG646:
srlv $2, $2, $2
mflo $3
bne $3, $2, TAG647
andi $3, $3, 12
TAG647:
slti $3, $3, 15
srl $2, $3, 0
lui $2, 6
lui $1, 8
TAG648:
andi $4, $1, 6
bgtz $1, TAG649
mthi $4
mult $4, $4
TAG649:
mthi $4
andi $1, $4, 7
mflo $3
lui $1, 13
TAG650:
mfhi $3
mult $3, $3
bne $1, $1, TAG651
sltu $2, $3, $1
TAG651:
bne $2, $2, TAG652
mtlo $2
sb $2, 0($2)
lb $2, 0($2)
TAG652:
lui $4, 3
bne $4, $2, TAG653
div $2, $2
lb $2, 0($2)
TAG653:
srav $1, $2, $2
slt $1, $2, $1
mfhi $2
addi $2, $2, 14
TAG654:
lbu $4, 0($2)
mflo $2
addu $3, $2, $4
bgtz $2, TAG655
TAG655:
sb $3, 0($3)
and $4, $3, $3
blez $4, TAG656
lbu $1, 0($3)
TAG656:
lui $1, 3
mult $1, $1
sll $0, $0, 0
bne $1, $1, TAG657
TAG657:
xor $1, $2, $2
mfhi $2
sra $4, $2, 0
mflo $1
TAG658:
mult $1, $1
multu $1, $1
lbu $2, 0($1)
mult $1, $1
TAG659:
lbu $3, 0($2)
lui $3, 13
addi $1, $2, 4
mfhi $4
TAG660:
sll $2, $4, 7
sra $2, $4, 2
lbu $1, 0($2)
lui $1, 8
TAG661:
lui $2, 1
xor $1, $1, $1
lh $1, 0($1)
mult $1, $1
TAG662:
subu $2, $1, $1
mthi $2
ori $1, $2, 14
slt $2, $2, $1
TAG663:
mfhi $3
addiu $1, $3, 7
or $2, $2, $3
multu $3, $1
TAG664:
sb $2, 0($2)
mtlo $2
sb $2, 0($2)
sb $2, 0($2)
TAG665:
beq $2, $2, TAG666
sltiu $2, $2, 11
lh $2, 0($2)
lui $4, 11
TAG666:
multu $4, $4
sw $4, 0($4)
beq $4, $4, TAG667
lui $3, 12
TAG667:
blez $3, TAG668
addiu $3, $3, 8
mfhi $3
lui $4, 14
TAG668:
sll $0, $0, 0
sll $0, $0, 0
mtlo $4
divu $4, $4
TAG669:
beq $4, $4, TAG670
lui $1, 4
bltz $1, TAG670
mfhi $2
TAG670:
lbu $2, 0($2)
mflo $3
bne $3, $2, TAG671
xori $1, $2, 11
TAG671:
addiu $2, $1, 15
mult $2, $1
blez $1, TAG672
mflo $3
TAG672:
lui $3, 14
lui $3, 14
sll $0, $0, 0
mtlo $1
TAG673:
bne $1, $1, TAG674
mthi $1
lb $3, 0($1)
or $4, $3, $1
TAG674:
multu $4, $4
lbu $4, 0($4)
addiu $2, $4, 3
subu $3, $4, $4
TAG675:
addiu $1, $3, 7
mthi $3
sh $1, 0($3)
lw $4, 0($3)
TAG676:
bne $4, $4, TAG677
mthi $4
addiu $1, $4, 10
mult $1, $4
TAG677:
multu $1, $1
sb $1, 0($1)
subu $2, $1, $1
blez $1, TAG678
TAG678:
mtlo $2
lbu $2, 0($2)
bltz $2, TAG679
mflo $2
TAG679:
bgez $2, TAG680
addi $1, $2, 0
lbu $4, 0($1)
lui $4, 7
TAG680:
bne $4, $4, TAG681
mtlo $4
div $4, $4
beq $4, $4, TAG681
TAG681:
lbu $1, 0($4)
mtlo $1
bltz $1, TAG682
sb $1, 0($4)
TAG682:
bgtz $1, TAG683
lui $4, 13
sll $4, $4, 13
bgez $4, TAG683
TAG683:
addiu $3, $4, 9
mult $3, $4
sll $0, $0, 0
sll $0, $0, 0
TAG684:
mflo $1
bgez $1, TAG685
mthi $1
sh $1, 0($1)
TAG685:
bne $1, $1, TAG686
sll $0, $0, 0
mfhi $1
bgez $1, TAG686
TAG686:
sll $0, $0, 0
addu $3, $1, $1
bgtz $3, TAG687
nor $3, $3, $3
TAG687:
lui $1, 4
mtlo $1
bne $3, $3, TAG688
srlv $3, $3, $3
TAG688:
sll $2, $3, 4
sb $2, 0($3)
srav $3, $2, $2
lb $2, 0($3)
TAG689:
mflo $3
divu $2, $2
blez $3, TAG690
sll $0, $0, 0
TAG690:
lui $4, 8
lui $1, 7
andi $3, $4, 10
bgez $3, TAG691
TAG691:
lui $1, 3
mthi $1
bne $1, $1, TAG692
mflo $1
TAG692:
ori $3, $1, 1
addu $1, $1, $3
sh $3, 0($1)
beq $1, $1, TAG693
TAG693:
mult $1, $1
mfhi $1
lh $2, 0($1)
lui $2, 3
TAG694:
srl $2, $2, 1
bne $2, $2, TAG695
srl $4, $2, 7
addu $2, $2, $2
TAG695:
sll $0, $0, 0
lui $1, 12
sll $0, $0, 0
lui $2, 3
TAG696:
mfhi $2
lui $1, 0
mthi $1
mthi $2
TAG697:
srl $2, $1, 8
addiu $4, $1, 5
sllv $3, $4, $4
nor $3, $2, $4
TAG698:
mtlo $3
mflo $4
bne $4, $3, TAG699
and $4, $4, $3
TAG699:
lui $2, 8
blez $4, TAG700
sll $4, $2, 3
sb $2, 0($2)
TAG700:
lui $2, 8
mult $4, $2
xor $4, $4, $4
lw $4, 0($4)
TAG701:
sll $0, $0, 0
sll $0, $0, 0
slti $3, $4, 1
andi $4, $4, 5
TAG702:
sb $4, 0($4)
lui $1, 6
lui $2, 9
bne $4, $4, TAG703
TAG703:
mflo $2
sltu $1, $2, $2
bne $2, $2, TAG704
addiu $2, $2, 15
TAG704:
divu $2, $2
mfhi $4
and $4, $4, $4
srl $4, $4, 2
TAG705:
bltz $4, TAG706
lui $4, 9
bne $4, $4, TAG706
lui $4, 4
TAG706:
addu $1, $4, $4
beq $1, $1, TAG707
sll $0, $0, 0
multu $4, $1
TAG707:
mflo $4
mfhi $1
mflo $4
or $3, $1, $4
TAG708:
lui $1, 0
bgtz $1, TAG709
mfhi $2
bltz $2, TAG709
TAG709:
xori $3, $2, 1
mult $3, $3
multu $2, $2
bgez $2, TAG710
TAG710:
lb $2, 0($3)
mfhi $1
sh $1, 0($2)
lui $3, 3
TAG711:
addu $1, $3, $3
bne $3, $3, TAG712
subu $4, $3, $3
div $4, $1
TAG712:
sb $4, 0($4)
mfhi $2
sb $4, 0($2)
lw $3, 0($2)
TAG713:
div $3, $3
sll $0, $0, 0
sll $0, $0, 0
sll $0, $0, 0
TAG714:
sll $3, $3, 5
bne $3, $3, TAG715
srlv $4, $3, $3
lui $1, 7
TAG715:
sllv $2, $1, $1
mtlo $1
mtlo $2
ori $2, $2, 1
TAG716:
bne $2, $2, TAG717
mthi $2
sll $2, $2, 8
sll $0, $0, 0
TAG717:
mtlo $4
sll $0, $0, 0
addu $2, $1, $1
multu $2, $1
TAG718:
sll $0, $0, 0
bltz $2, TAG719
sll $0, $0, 0
addiu $1, $2, 5
TAG719:
beq $1, $1, TAG720
mtlo $1
bne $1, $1, TAG720
divu $1, $1
TAG720:
addiu $3, $1, 1
mflo $1
blez $3, TAG721
sltiu $3, $1, 4
TAG721:
bne $3, $3, TAG722
multu $3, $3
mfhi $3
lh $4, 0($3)
TAG722:
sltu $3, $4, $4
lui $2, 10
xori $3, $2, 4
sltiu $2, $4, 8
TAG723:
lbu $1, 0($2)
lb $3, 0($1)
slti $3, $2, 3
mtlo $1
TAG724:
beq $3, $3, TAG725
mtlo $3
beq $3, $3, TAG725
mtlo $3
TAG725:
bne $3, $3, TAG726
subu $1, $3, $3
sb $3, 0($3)
bltz $3, TAG726
TAG726:
mflo $2
or $2, $1, $1
lui $2, 15
sll $0, $0, 0
TAG727:
beq $4, $4, TAG728
div $4, $4
sllv $1, $4, $4
srl $4, $1, 6
TAG728:
mfhi $3
lui $1, 13
bne $4, $3, TAG729
lh $1, 0($3)
TAG729:
mflo $4
div $4, $1
mthi $1
bgtz $1, TAG730
TAG730:
mthi $4
mflo $1
sb $4, 0($4)
lui $4, 9
TAG731:
blez $4, TAG732
mtlo $4
div $4, $4
lui $3, 0
TAG732:
subu $4, $3, $3
bne $4, $4, TAG733
srlv $1, $3, $3
lui $1, 0
TAG733:
sw $1, 0($1)
bne $1, $1, TAG734
sltu $1, $1, $1
mthi $1
TAG734:
bltz $1, TAG735
sb $1, 0($1)
lbu $2, 0($1)
lui $2, 6
TAG735:
beq $2, $2, TAG736
mthi $2
div $2, $2
mfhi $1
TAG736:
blez $1, TAG737
lbu $2, 0($1)
blez $2, TAG737
mfhi $2
TAG737:
mfhi $2
sll $0, $0, 0
lui $2, 15
sll $0, $0, 0
TAG738:
bltz $2, TAG739
ori $4, $2, 13
sll $0, $0, 0
mfhi $3
TAG739:
sll $0, $0, 0
sll $0, $0, 0
mflo $1
lui $4, 10
TAG740:
lui $4, 10
srav $4, $4, $4
divu $4, $4
sll $0, $0, 0
TAG741:
subu $4, $3, $3
mtlo $4
sw $3, 0($4)
mthi $3
TAG742:
beq $4, $4, TAG743
srav $2, $4, $4
blez $4, TAG743
sw $2, 0($4)
TAG743:
addu $2, $2, $2
lui $1, 11
mtlo $2
lui $4, 15
TAG744:
sltiu $2, $4, 12
mthi $2
sra $2, $2, 3
mthi $2
TAG745:
mfhi $4
lbu $3, 0($2)
beq $4, $3, TAG746
lui $3, 5
TAG746:
sltu $3, $3, $3
lbu $2, 0($3)
lbu $4, 0($3)
mfhi $3
TAG747:
xor $1, $3, $3
mult $1, $3
sltiu $1, $1, 13
lbu $3, 0($1)
TAG748:
lui $3, 7
bgtz $3, TAG749
sll $0, $0, 0
bltz $1, TAG749
TAG749:
divu $1, $1
subu $3, $1, $1
subu $1, $1, $1
lb $1, 0($3)
TAG750:
nop
nop
test_end:
beq  $0, $0, test_end
nop