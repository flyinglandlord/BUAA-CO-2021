# P4

P4的ISE_Project目录直接提供了工程文件，利用ISE可直接打开

设计文档可供参考

课上提示是有关添加指令的总结

关于课下课上测试的通关攻略可以去[P4 课下学习 — 单周期 CPU 设计 (2)](https://flyinglandlord.github.io/2021/11/13/BUAA-CO-2021/P4/CPU设计文档/)和[P4 课上测试](https://flyinglandlord.github.io/2021/11/17/BUAA-CO-2021/P4/P4课上测试游记/)

查看最终版本代码可以直接在P4_Source_Code目录下查看

只有一个可用的随机数据测试，如果想要一些强测数据，可以前往/assets目录下有讨论区提供的10组较强的数据，**但是也不全面**

使用方法：将你的代码（**注意是所有*.v文件**）复制到/src目录下，由于是使用`iverilog`进行测试因此需要手动添加`include`语句，把所有文件包含，然后改动`tb.v`或者其它名字的Testbench文件，找到下面内容：

```verilog
initial begin
	clk <= 0;
	reset <= 1;
	interrupt <= 0;
	#20 reset <= 0;
end
```

改成

```verilog
initial begin
	clk <= 0;
	reset <= 1;
	interrupt <= 0;
	#20 reset <= 0;
    #40960; $finish;
end
```

这主要是需要让测试程序结束

然后运行`Running.exe`即可，如果一切正常，输出应当是

```
TestCase1:Accepted!
TestCase2:Accepted!
TestCase3:Accepted!
TestCase4:Accepted!
TestCase5:Accepted!
```

没有其他任何冗余的输出，否则请检测配置是否有误

如果出现`TestCaseX:Wrong Answer!`可以去`log.txt`检查出现问题的位置，然后在`/testpoint`目录下找到对应测试点进行调试