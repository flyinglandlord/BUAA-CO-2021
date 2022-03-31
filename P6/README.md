# P6

P6的ISE_Project目录下有两个工程文件，一个是初始也是最终提交的版本，另一个是练习添加访存和跳转类指令的版本

设计文档可供参考

关于课上测试的通关攻略可以去[P6 课下 & 课上总结 - 北航计算机组成原理](https://flyinglandlord.github.io/2021/12/08/BUAA-CO-2021/P6/P6课上&课下/)

另外提供了P6课上第一次（我没考）的题目供参考

查看代码可以直接在P6_Source_Code目录下查看

有两种不同版本的Judger，如同字面意思，一个是随机数据测试，测试较弱，另一个是2021年讨论区提供的100组转发阻塞P5覆盖性测试，可以检查添加完乘除槽做完DM改造后的原有转发阻塞逻辑是否正确

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