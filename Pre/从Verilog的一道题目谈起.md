---
title: Pre课下：Verilog的奇怪问题
---

# 从Verilog的一道题目谈起

## 题目描述

*来源：Bcdadd100(https://hdlbits.01xz.net/wiki/exams/m2014_q4h)*

You are provided with a BCD one-digit adder named `bcd_fadd` that adds two BCD digits and carry-in, and produces a sum and carry-out.

```verilog
module bcd_fadd {
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
```

Instantiate 100 copies of `bcd_fadd` to create a 100-digit BCD ripple-carry adder. Your adder should add two 100-digit BCD numbers (packed into 400-bit vectors) and a carry-in to produce a 100-digit sum and carry out.

**Module Declaration**

```verilog
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
```

大意：实现一个400位BCD加法器，所谓BCD编码就是用四位二进制数字表示一位十进制数，其中需要并联100个4位BCD加法器

正确答案应该是这样：

```verilog
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [399:0] temp_cout;
    
    initial begin
        temp_cout[0] = 0;
    end

    genvar i;
    generate
        for(i = 0; i < 400; i += 4)
            begin:fadd
                bcd_fadd fadd(a[i+3:i], b[i+3:i], (i == 0) ? cin : temp_cout[i-4], temp_cout[i], sum[i+3:i]);
            end
    endgenerate

    assign cout = temp_cout[396];

endmodule
```

但是刚开始，我按照C语言的思路，写出了这样的代码：

```verilog
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire last_cout, new_cout;
    assign last_cout = new_cout;
    
    initial begin
        last_cout = 0;
    end

    genvar i;
    generate
        for(i = 0; i < 400; i += 4)
            begin:fadd
                bcd_fadd fadd(a[i+3:i], b[i+3:i], (i == 0) ? cin : last_cout, new_cout, sum[i+3:i]);
            end
    endgenerate

    assign cout = new_cout;

endmodule
```

我直接把`wire`理解成了变量，然后企图令每一次进位为`last_cout`和`new_cout`，每次循环结束后令`last_cout = new_cout`，但是这样做是不行的，根本无法通过编译，`assign`是连续赋值，为硬连线，这样构造出的组合逻辑电路可能会导致短路，从而不能正常工作

后来我又尝试利用`deassign`每次解除硬连线，但是还是无法通过编译...

下次还是记得用数组吧，不要把`wire`互相连来连去的了，那样容易出问题