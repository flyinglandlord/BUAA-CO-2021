# Verilog 学习笔记-练习题总结（Part 1）

## 组合逻辑电路部分

## 时序逻辑电路部分

### 触发器/寄存器

#### Edgedetect
*Detect an edge, 来源：hdlbits, exams/ece241_2013_q7*
For each bit in an 8-bit vector, detect when the input signal changes from 0 in one clock cycle to 1 the next (similar to positive edge detection). The output bit should be set the cycle after a 0 to 1 transition occurs.
```verilog
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] t1, ans;
    
    always @(posedge clk) begin
        t1 <= in;
        ans <= ~t1 & in;
    end
    
    
    assign pedge = ans;

endmodule
```

#### Edgedetect2

*Detect both edges*
For each bit in an 8-bit vector, detect when the input signal changes from one clock cycle to the next (detect any edge). The output bit should be set the cycle after a 0 to 1 transition occurs.

```verilog
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] ans, temp;
    
    always @(posedge clk) begin
        temp <= in;
        ans <= temp ^ in;
    end
    
    assign anyedge = ans;

endmodule
```

#### Dualedge
*可以在时钟上升沿和下降沿触发的寄存器*

You're familiar with flip-flops that are triggered on the positive edge of the clock, or negative edge of the clock. A dual-edge triggered flip-flop is triggered on both edges of the clock. However, FPGAs don't have dual-edge triggered flip-flops, and always @(posedge clk or negedge clk) is not accepted as a legal sensitivity list.
Build a circuit that functionally behaves like a dual-edge triggered flip-flop.

```verilog
module top_module (
    input clk,
    input d,
    output q
);
    reg t1, t2;
    
    always @(posedge clk) begin
        t1 <= d ^ t2;
    end
    
    always @(negedge clk) begin
        t2 <= d ^ t1;
    end
    
    assign q = t1 ^ t2;

endmodule
```

### 计数器

>注意考虑进位问题

#### Countslow
*根据特定信号计数的计数器*
Build a decade counter that counts from 0 through 9, inclusive, with a period of 10. The reset input is synchronous, and should reset the counter to 0. We want to be able to pause the counter rather than always incrementing every clock cycle, **so the slowena input indicates when the counter should increment**.

```verilog
module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    
    reg [3:0] cnt;
    
    initial begin
        cnt = 0;
    end
    
    always @(posedge clk) begin
        if(reset) cnt <= 0;
        else begin
            if(slowena) begin
                cnt <= cnt + 1;
            	if(cnt == 9) cnt <= 0;
            end
        end
    end
    
    assign q = cnt;

endmodule
```

#### Countbcd
*实现四个数字的bcd码计数器，来源: hdlbits, exams/ece241_2014_q7b*
Build a 4-digit BCD (binary-coded decimal) counter. Each decimal digit is encoded using 4 bits: q[3:0] is the ones digit, q[7:4] is the tens digit, etc. For digits [3:1], also output an enable signal indicating when each of the upper three digits should be incremented.
**You may want to instantiate or modify some one-digit decade counters.**
*但是我并没有想到用四个1位bcd计数器完成这个任务的方法*

```verilog
module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    reg [3:0]	ones;
    reg [3:0]	tens;
    reg [3:0]	hundreds;
    reg [3:0]	thousands;
    
    always@(posedge clk)begin
        if(reset)begin
            ones <= 4'd0;
        end
        else if(ones == 4'd9)begin
            ones <= 4'd0;
        end
        else begin
            ones <= ones + 1'b1;
        end
    end
    
    always@(posedge clk)begin
        if(reset)begin
            tens <= 4'd0;
        end
        else if(tens == 4'd9 && ones == 4'd9)begin
            tens <= 4'd0;
        end
        else if(ones == 4'd9) begin
            tens <= tens + 1'b1;
        end
    end
    
    always@(posedge clk)begin
        if(reset)begin
            hundreds <= 4'd0;
        end
        else if(hundreds == 4'd9 && tens == 4'd9 && ones == 4'd9)begin
            hundreds <= 4'd0;
        end
        else if(tens == 4'd9 && ones == 4'd9) begin
            hundreds <= hundreds + 1'b1;
        end
    end
    
    always@(posedge clk)begin
        if(reset)begin
            thousands <= 4'd0;
        end
        else if(thousands == 4'd9 && hundreds == 4'd9 && tens == 4'd9 && ones == 4'd9)begin
            thousands <= 4'd0;
        end
        else if(hundreds == 4'd9 && tens == 4'd9 && ones == 4'd9) begin
            thousands <= thousands + 1'b1;
        end
    end
    
    assign q = {thousands, hundreds, tens, ones};
    assign ena[1] = (ones == 4'd9) ? 1'b1 : 1'b0;
    assign ena[2] = (tens == 4'd9 && ones == 4'd9) ? 1'b1 : 1'b0;
    assign ena[3] = (hundreds == 4'd9 && tens == 4'd9 && ones == 4'd9) ? 1'b1 : 1'b0;
 
endmodule
```

#### Count clock
*究极大模拟题，模拟一个时钟计数器，支持AM和PM标记上下午*
Create a set of counters suitable for use as a 12-hour clock (with am/pm indicator). Your counters are clocked by a fast-running clk, with a pulse on ena whenever your clock should increment (i.e., once per second).
reset resets the clock to 12:00 AM. pm is 0 for AM and 1 for PM. hh, mm, and ss are two BCD (Binary-Coded Decimal) digits each for hours (01-12), minutes (00-59), and seconds (00-59). Reset has higher priority than enable, and can occur even when not enabled.

```verilog
module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
    
    always @(posedge clk) begin
        if(reset || ss[7:4] == 5 && ss[3:0] == 9) begin
            ss <= 0;
        end
        else if(ena) begin
            if(ss[3:0] == 9) begin
                ss[3:0] <= 0;
                ss[7:4] <= ss[7:4] + 1;
            end
            else ss[3:0] <= ss[3:0] + 1;
        end
    end
    
    always @(posedge clk) begin
        if(reset || (ss[7:4] == 5 && ss[3:0] == 9 && mm[7:4] == 5 && mm[3:0] == 9)) begin
            mm <= 0;
        end
        else begin
            if(ss[7:4] == 5 && ss[3:0] == 9) begin
                if(mm[3:0] == 9) begin
                	mm[3:0] <= 0;
                	mm[7:4] <= mm[7:4] + 1;
            	end
                else mm[3:0] <= mm[3:0] + 1;
            end 
        end
    end
    
    always @(posedge clk) begin
        if(reset) begin
            hh[3:0] <= 2;
            hh[7:4] <= 1;
        end
        else if((ss[7:4] == 5 && ss[3:0] == 9 && mm[7:4] == 5 && mm[3:0] == 9) && hh[7:4] == 1 && hh[3:0] == 2) begin
            hh <= 8'b00000001;
        end
        else if(ss[7:4] == 5 && ss[3:0] == 9 && mm[7:4] == 5 && mm[3:0] == 9) begin
            if(hh[3:0] == 9) begin
                hh[3:0] <= 0;
                hh[7:4] <= hh[7:4] + 1;
            end
            else hh[3:0] <= hh[3:0] + 1;
        end
    end
    
    always @(posedge clk) begin
        if(reset) begin
            pm <= 0;
        end
        else if((ss[7:4] == 5 && ss[3:0] == 9 && mm[7:4] == 5 && mm[3:0] == 9) && hh[7:4] == 1 && hh[3:0] == 1) begin
            pm <= ~pm;
        end
    end

endmodule
```

### 移位寄存器(Shift Register)
> 区分不同的移位方法：
> 逻辑左移/逻辑右移：空出来的位用0补，Verilog里面是<<和>>
> 算术右移：空出来的最高位用符号位去补，注意Verilog语言描述`$signed($signed(a) >>> b)`表示a算术右移b位
> 循环左移/循环右移：字面意思，循环移动

#### Shift18
*综合题*
Build a 64-bit arithmetic shift register, with synchronous load. The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
An arithmetic right shift shifts in the sign bit of the number in the shift register (q[63] in this case) instead of zero as done by a logical right shift. Another way of thinking about an arithmetic right shift is that it assumes the number being shifted is signed and preserves the sign, so that arithmetic right shift divides a signed number by a power of two.
*There is no difference between logical and arithmetic left shifts.*
* load: Loads shift register with data[63:0] instead of shifting.
* ena: Chooses whether to shift.
* amount: Chooses which direction and how much to shift.
* 2'b00: shift left by 1 bit.
* 2'b01: shift left by 8 bits.
* 2'b10: shift right by 1 bit.
* 2'b11: shift right by 8 bits.
* q: The contents of the shifter.

```verilog
module top_module(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 
    
    always @(posedge clk) begin
        if(load) q <= data;
        else if(ena) begin
            case(amount)
                2'b01: begin
                    for(integer i = 0; i+8 < 64; i++)
                        q[i + 8] <= q[i];
                    for(integer i = 0; i < 8; i++)
                        q[i] <= 0;
                end
                2'b10: begin
                    for(integer i = 0; i < 63; i++)
                        q[i] <= q[i + 1];
                    q[62] <= q[63];
                end
                2'b11: begin
                    for(integer i = 0; i+8 < 64; i++)
                        q[i] <= q[i+8];
                    for(integer i = 55; i < 63; i++)
                        q[i] <= q[63];
                end
                2'b00: begin
                    for(integer i = 0; i+1 < 64; i++)
                        q[i + 1] <= q[i];
                    q[0] <= 0;
                end
            endcase
        end
    end                          

endmodule
```

#### Shift Register
*主要是通过这一题学习如何把不同的module连在一起，来源：hdlbits, exams/m2014_q4k*
Consider the n-bit shift register circuit shown below:
![](media/16317909268306/16317926979957.png)
Write a top-level Verilog module (named top_module) for the shift register, assuming that n = 4. Instantiate four copies of your MUXDFF subcircuit in your top-level module. Assume that you are going to implement the circuit on the DE2 board.
Connect the R inputs to the SW switches,
clk to KEY[0],
E to KEY[1],
L to KEY[2], and
w to KEY[3].
Connect the outputs to the red lights LEDR[3:0].

```verilog
module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); 
    
    reg [3:0] W;
        
    genvar i;
    generate
        for(i = 0; i < 4; i++) begin:muxdff
            MUXDFF con(.clk(KEY[0]), .E(KEY[1]), .L(KEY[2]), .w((i == 0) ? KEY[3] : LEDR[4-i]), .R(SW[3-i]), .Q(LEDR[3-i]));
        end
    endgenerate

endmodule

module MUXDFF (
    input clk,
    input E,
    input R,
    input w,
    input L,
    output Q
);
    wire t1, t2, t3;
    reg t;
    assign t1 = (E == 0) ? t3 : w;
    assign t2 = (L == 0) ? t1 : R;
    assign t3 = t;
    
    always @(posedge clk) begin
        t <= t2;
    end
    
    assign Q = t;

endmodule
```

#### 3-input LUT
*用简单的方式实现RAM的一部分，来源:hdlbits, Exams/ece241 2013 q12*
In this question, you will design a circuit for an 8x1 memory, where writing to the memory is accomplished by shifting-in bits, and reading is "random access", as in a typical RAM. You will then use the circuit to realize a 3-input logic function.
First, create an 8-bit shift register with 8 D-type flip-flops. Label the flip-flop outputs from Q[0]...Q[7]. The shift register input should be called S, which feeds the input of Q[0] (MSB is shifted in first). The enable input controls whether to shift. Then, extend the circuit to have 3 additional inputs A,B,C and an output Z. The circuit's behaviour should be as follows: when ABC is 000, Z=Q[0], when ABC is 001, Z=Q[1], and so on. Your circuit should contain ONLY the 8-bit shift register, and multiplexers. (Aside: this circuit is called a 3-input look-up-table (LUT)).

```verilog
module top_module (
	input clk,
	input enable,
	input S,
	
	input A, B, C,
	output reg Z
);

	reg [7:0] q;
	
	assign Z = q[ {A, B, C} ];

	always @(posedge clk) begin
		if (enable)
			q <= {q[6:0], S};	
	end

endmodule
```

#### Conwaylife
*趣味综合题，康威生命游戏*

Conway's Game of Life is a two-dimensional cellular automaton.
The "game" is played on a two-dimensional grid of cells, where each cell is either 1 (alive) or 0 (dead). At each time step, each cell changes state depending on how many neighbours it has:
* 0-1 neighbour: Cell becomes 0.
* 2 neighbours: Cell state does not change.
* 3 neighbours: Cell becomes 1.
* 4+ neighbours: Cell becomes 0.

The game is formulated for an infinite grid. In this circuit, we will use a 16x16 grid. To make things more interesting, we will use a 16x16 toroid, where the sides wrap around to the other side of the grid. For example, the corner cell (0,0) has 8 neighbours: (15,1), (15,0), (15,15), (0,1), (0,15), (1,1), (1,0), and (1,15). The 16x16 grid is represented by a length 256 vector, where each row of 16 cells is represented by a sub-vector: q[15:0] is row 0, q[31:16] is row 1, etc. (This tool accepts SystemVerilog, so you may use 2D vectors if you wish.)
* load: Loads data into q at the next clock edge, for loading initial state.
* q: The 16x16 current state of the game, updated every clock cycle.
The game state should advance by one timestep every clock cycle.

*John Conway, mathematician and creator of the Game of Life cellular automaton, passed away from COVID-19 on April 11, 2020.*

### 关于`wire`和`reg`的使用
1. `wire`只可以用于搭建组合逻辑电路
2. `wire`是唯一合法的用于`assign`左侧的类型
3. `wire`不能储存数据，未被驱动的情况下位高阻态
4. `wire`可以用于连接`module`的`input`和`output`端口，`reg`仅能用于连接`module`的`input`端口
5. `wire`还可以用于`module`内部`input`和`output`端口的定义，`reg`仅能用于`module`内部`output`端口的定义
6. `reg`是唯一合法的用于`initial`块中的赋值类型
7. `reg`是唯一合法的用在`always@`语句块中<=和<左端的类型
8. 同字面意思，`reg`可以用作寄存器储存数据

