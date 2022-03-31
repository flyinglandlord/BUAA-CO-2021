# 关于CPU输出序列检查题的调试建议

CPU输出序列检查题本身的思路不是很难，实现时却总是会因为一些细节问题导致出现各种问题，笔者昨天晚上在和室友一起调试时对此深有体会，因此在这里总结了几点调试的建议和方法与大家分享，同时也欢迎大家分享自己更好的调试方法

## 对拍程序

> 这一点要求你或者你的朋友需要已经写出一份AC的代码

对拍，顾名思义，就是将两个程序给相同的输入，看看输出是否一样。

既然如此，我们就需要几个步骤来实现它：

1. **生成测试数据；**
2. **两个程序分别跑一遍，生成两个输出；**
3. **比较两个输出。**

下面我来介绍一下以本题为例，如何进行对拍（本文示例的是在Windows环境下的对拍，也欢迎大家分享在Linux和macOS环境下对拍方法）

### 准备阶段

首先，你需要按照岳诗扬同学的帖子[关于如何vscode配置verilog运行环境 - 讨论区 - 系统能力课程实验平台 (buaa.edu.cn)](http://cscore.buaa.edu.cn/#/discussion_area/55/posts)配置好iverilog环境，如何测试这一点？按`Windows + R`呼出“运行”窗口，输入`cmd`按回车打开命令提示符

![image-20210920111937867](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210920111937867.png)

输入`iverilog`和`vvp`，见到以上提示，则表示环境已经配置完毕

### 编写对拍程序

你需要熟悉某一种编程语言，例如`Python`，`C++`，`C`等语言来完成对拍程序，本文以`C++`语言为例说明

在C++中，我们使用下面代码可以生成一个[0, x)范围内的随机数

```c++
srand(time(NULL));
int random_number = rand() % x;
```

使用时需要包含`#include <ctime>`和`#include <cstdlib>`

想要生成一个十六进制数字可以这样做

```c++
const char hexd[] = "0123456789abcdef";
data[tot++] = hexd[rand()%16];
```

有了这些知识，你就应该可以利用循环结构等来实现数据生成器了，这里有一份本题的数据生成器的示例代码[Ubuntu Pastebin](https://paste.ubuntu.com/p/ryFB2mnxwz/)

然后你需要把这些生成数据写入testbench模板中，这时可以利用C++的文件操作进行，这是一份生成testbench的示例代码[Ubuntu Pastebin](https://paste.ubuntu.com/p/kmBGfszx8P/)，注意在示例代码中需要生成两个testbench，分别是`my_checker_std.v`和`my_checker_src.v`，分别实例化`std.v`和`src.v`，其中`std.v`就是标程，就是那一份已经AC的正确代码，`src.v`是需要测试的代码

注意这里的testbench需要有这样一句

```verilog
always @(posedge clk) begin
   if (!reset && !finish) begin
       $display("%d %d", format_type, error_code);
   end
end
```

将两个答案分别输出到控制台

接下来就是将两个程序分别跑一遍，这里需要你具备一些Windows命令提示符的操作基础

```C++
void Running() {
    system("iverilog -o my_checker_std.v.out my_checker_std.v");
    system("vvp my_checker_std.v.out > std.txt");
    system("iverilog -o my_checker_src.v.out my_checker_src.v");
    system("vvp my_checker_src.v.out > src.txt");
}
```

`system()`函数是将其参数在命令提示符中运行

```powershell
iverilog -o my_checker_std.v.out my_checker_std.v
```

作用是将`my_checker_std.v`处理后生成目标文件，~~类似于C++和C语言中的编译过程？~~

```powershell
vvp my_checker_std.v.out > std.txt
```

作用是将目标文件进行仿真运行，并将运行结果重定向输出到`std.txt`文件中

或者你也可以自己尝试在命令提示符下运行上述两条指令，观察一下运行的结果

接下来是比较两个输出，经过上述操作后，两个程序的输出结果分别在`std.txt`和`src.txt`文件中，这时读取文件内容，进行比较，输出结果即可，相信大家很容易编写出相应的程序，或者你可以使用Windows命令提示符中的`fc`命令来实现，具体可以百度搜索

这是完整的对拍器代码[Ubuntu Pastebin](https://paste.ubuntu.com/p/27r2S2xkqf/)

*可以直接使用，使用时新建目录，把上述代码复制到`comp.cpp`文件中，把待对拍的程序命名为`src.v`复制到该目录下，标程命名为`std.v`复制到该目录下，编译运行`comp.cpp`程序即可*

利用这一方法可以快速找到错误数据，从而快速对程序进行调试

## 考虑边界条件数据

题目的要求如下

![image-20210920115118166](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210920115118166.png)

那么，pc的值是否需要特殊验证一下0x0000_3000和0x0000_4fff是否能给出正确结果？同理addr是否也需要验证一下0x0000_0000和0x0000_2fff能不能给出正确的输出？grf输入0和31是结果对不对？

对拍程序可以测试大量的数据，看代码的整体逻辑有没有大的问题，如果你只有某一个测试点（~~比如第三个~~）过不了，就需要考虑一下这些特殊的边界条件数据了

## 最后

**审题！**

**审题！**

**审题！**

**如果边界条件也没有问题，那么可能就是题目条件没有审清楚，比如该题的必须为4的整数倍，那么0也是4的整数倍，有的处理方法可能可以在没考虑该情况时过掉第三个点，但比如使用lowbit就得单独判断为0的情况。**

