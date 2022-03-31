# Verilog复习



## 基础语法部分

### 关于`begin`和`end`

不要`C/Python`写多了，就忘了`Verilog`是用`begin`和`end`标记语句块

还有`case`语句没有`begin`，只有`endcase`；`module`定义没有`begin`，只有`endmodule`

### 关于`assign`和`always @(*)`

没啥区别

### 关于赋值

如果是如下定义的寄存器型变量

```verilog
reg [6:4] a;
reg [0:2] b;
```

那么这样的赋值是合法的

```verilog
assign a[6:4] = b[0:2];
```

但是这样赋值就会错

```verilog
assign a[6:4] = b[2:0];
```

总之就是赋值只能按照定义时的大小端去用

### 关于数字

下面的数字常量是合法的

```verilog
'b1000, 8'o100, 8'b_0100_1000, -3'd10
```

下面的是不合法的

```verilog
3'101, 32'd-100, 2b10
```

变量如果不加以特殊说明，默认按照无符号数处理，有符号与无符号相遇，默认将有符号转为无符号，因此

```verilog
reg[31:0] a, b;
initial a = 1;
initial b = -1;
a < b			//True，这里的-1被理解成了15
a < $signed(b)	//True，b为signed，a为unsigned，则b转换成unsigned
$signed(a) < $signed(b)		//False，这才对
```

### 关于一些有用的调试和系统指令

```verilog
$display("%d %d ...", wire1, reg2, ...);		//可以打印wire或者reg的值到控制台
#15;											//延时15ns
always #1 clk = ~clk;							//每1ns改变一次时钟信号，这个语句优先级高于其他的，因此你在第一秒后$display(clk)就已经不是原来的值了
```



## 具体题目类型

### 关于Moore型状态机

基本框架如下：

```verilog
module moore_fsm(
	input x,
    input clk,
    input reset,
    output x
	)
    
    parameter START = 0, ...		//在这里定义每一个状态对应的标签
    reg[7:0] state, next_state;		//这里是当前状态和下一个状态，记得大小要开足够
    
    always @(*) begin				//组合逻辑，根据当前状态state计算next_state
        case(state)
            START: begin
                ...
            end
            ...
            default: 				//建议写上default
                ...
        endcase
    end
    
    always @(posedge clk) begin		//赋值下一个状态
        if(reset) state <= START;
        else state <= next_state;
    end
    
    assign x = ...					//输出逻辑
        
endmodule
```

此外还有别的变种，例如使用`One-Hot`编码状态，这样的状态转移会好写一点（详见`Hdlbit`上的题目）

还有一种类型就是字符串识别，遇到重复的字符串需要考虑设置计数器统计出现的次数

