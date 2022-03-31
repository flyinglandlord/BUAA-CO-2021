## 添加指令的注意事项

### b类型指令

添加`CMPOp`，`EXT`为`EXT_sign`，修改`NPCOp`，在`NPC_b`中添加新指令

如果有`and link`要求则修改`GRFWrEn`为`(指令 & jump)`或者加上`!(指令 & !jump)`，`GRFA3Sel`为`A3Sel_ra`（待写入寄存器为`$ra`），`GRFWDSel`为`WDSel_pc4`

不需要改动`ALUOp`，`DMOp`，`DMWrEn`，`ALUBSel`

需要在`CMP`里面添加跳转条件验证，`NPC`里面不需要改动

### j类型指令

无条件跳转，不需要验证跳转条件，即不经过`CMP`

课下基本已经加完了

剩一个`jalr`，注意跳转的地址来自`$rs`，写入的地址不是`$ra`了，`GRFA3Sel`应该是`A3Sel_rd`

### 计算型指令

`calc_r`不涉及立即数，`ALUBSel`是`BSel_rt`，`ALU`添加对应逻辑即可

`calc_imm`涉及立即数，添加`EXTOp`对应信号，`ALUBSel`选`BSel_imm`，`ALU`添加对应逻辑即可

`GRFWDSel`选`WDSel_aluans`，`GRFA3Sel`选`A3Sel_rd`，`GRFWrEn`置为1

### 访存型指令

`EXT`为`EXT_sign`，`ALU`为`ALU_add`，`ALUBSel`为`BSel_imm`，`DMWrEn`和`GRFWrEn`根据需要判断

添加`DMOp`，在`DM`模块中根据要求添加对应逻辑，`ALU`添加对应逻辑即可

如果是写寄存器，`GRFWDSel`选`WDSel_dmrd`，`GRFA3Sel`选`A3Sel_rt`，`GRFWrEn`置为1，在DM最后的`assign`赋值中添加逻辑

如果是写内存，`GRFWrEn`置为0，`DMWrEn`置为1，在`DM`的`case`语句中添加逻辑