# 关于P5的一些提示

### Mars的行为

**Mars只是一个模拟器！**

**Mars只是一个模拟器！**

**Mars只是一个模拟器！**

Mars不是编译器，它不会自动改变你的汇编代码，给它加上延迟槽！！！

如果你想要处理延迟槽，请自行加入无关指令或者`nop`

同理，自己搭建的CPU会保持与Mars一样的行为，即执行b/j类指令的后面一条指令，这才是与Mars做对拍的原理

然而我直到现在才意识到这一点

### 为CPU添加计算指令

以addi指令为例，只需要改control的控制信号即可，这个没啥难度

如果要求更复杂的指令，可以写一个函数

### 为CPU添加bltzal指令

bltzal指令是Mars支持的唯一一个branch and link型指令，其添加步骤为

- 首先在def.v中增加bltzal的定义，在control中新添`wire bltzal`，并且添加指令类型`branch_link`，其中包含bltzal，同时要把bltzal同时添加进branch类型中q
- 修改CMP，使其支持小于0的判断，这里注意符号运算`$signed(rt) < 0`
- 修改control，解码得到bltzal时NPCOp返回`NPC_b`，CMPOp返回`CMP_bltzal`
- 修改DE, EM, MW流水线寄存器，使其新增b_jump参与流水
- 修改control，增加新的输入b_jump，根据是否跳转以及指令是否属于branch_link类判断`GRFA3`时`$ra`还是`5'b0`，同时对于j_link和b_link指令，我们都有`GRFWDSel`为`WDSel_pc8`
- 在每一级的control中添加b_jump输入，然后别的转发就会自动支持
- 不需要考虑新的阻塞，因为bltzal属于b类指令，需要Tuse_rs为0，因此原本的branch类的阻塞条件仍然适用；如果超时，或许可以考虑Tuse_rt为3，这时可以不阻塞

### 为CPU添加bltzall指令

多了一个l是likely的意思，反正就是指如果不跳转，清空延迟槽

这个时候在上面指令的基础上，在CMP里面加上一个新的输出flush，如果不跳就flushFD级流水线寄存器就行了

其他的都跟上面的link是一样的，而且如果不跳，也就不用考虑link了，而且也不用特别考虑阻塞，因为不跳`GRFA3`默认设成0，就没有阻塞问题，已经被排除了

注意跳的时候的判断条件包括bltzall不能在被阻塞，否则没法拿到正确的值

> #### 如果只有likely呢？
>
> 可以直接新建一个类型就是branch_likely类，然后bltzall既是branch类，也是branch_link类，也是branch_likely类
>
> 对于只有likely的既是branch类，也是branch_likely类
>
> 但是这样CMP不好搞，对于只加一条指令，可以只加上对指令的判断，即`assign flush = (CMPOp == CMP_bltzall && !jump) `就可以了