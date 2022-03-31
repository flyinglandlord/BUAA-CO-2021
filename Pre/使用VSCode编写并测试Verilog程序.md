# 如何使用`VSCode`编写并测试Verilog程序？

## 第一步：安装VSCode

首先确定你在电脑安装的是`Visual Studio Code`，而不是`Visual Studio 2019/2017/2012`......等软件

如果你没有安装，这里有链接https://bhpan.buaa.edu.cn:443/link/7FEF5347A22666A147EF74BDEB6F47F9，也可以通过官网下载，但是速度非常缓慢

## 第二步：安装iVerilog程序与GTKWave波形查看工具

同样，下载链接也已经放在了云盘上https://bhpan.buaa.edu.cn:443/link/F7904CA675A8362CEE2139EE7425FA49

![image-20210917215529987](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917215529987.png)

第一步肯定要同意

![image-20210917215546600](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917215546600.png)

这里同时勾选安装MinGW依赖和GTKWave波形查看程序

![image-20210917215620175](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917215620175.png)

红色方框记得一定要勾选

![image-20210917215639627](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917215639627.png)

然后开始安装即可

## 第三步：安装VSCode插件

你的VSCode打开以后可能是英文，这时候

![image-20210917215854860](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917215854860.png)

然后重启VSCode就可以看到中文界面了

要想在VSCode中写Verilog代码，安装以下三个插件

![image-20210917220002275](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220002275.png)

就是上面画红色框框的两个

然后重启VSCode，随便打开一个文件夹，新建一个temp.v的文件

![image-20210917220156175](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220156175.png)

然后你会看到这个界面，按下图操作

![image-20210917220316433](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220316433.png)

这时候你输入代码就可以实现代码补全功能了

![image-20210917220353055](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220353055.png)

### 第四步：运行Verilog程序

![image-20210917220518600](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220518600.png)

如果一切顺利，你在下面的输出窗口中将看到

![image-20210917220548717](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220548717.png)

但是你也有可能很不幸的遇到**输出乱码**的情况，这时候你需要打开 Windows设置

![image-20210917220637417](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220637417.png)

选择时间和语言

![image-20210917220706192](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220706192.png)



![image-20210917220725985](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220725985.png)

再点击这个日期、时间和区域格式设置

![image-20210917220733832](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220733832.png)

再点击这个其他设置

![image-20210917220812143](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220812143.png)

再这样操作

![image-20210917220932506](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917220932506.png)

然后重启计算机就可以了

如果编译顺利，你在VSCode左侧的文件管理窗口中将看到生成了一个`*.v.out`文件

![image-20210917221057196](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221057196.png)

## 第四步：查看仿真波形

有两种方法，但是任何一种方法都需要你手动自行编写TestBench测试文件

假定我们已经写好了`my_cpu_checker_tb.v`

![image-20210917221236664](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221236664.png)

首先，文件头部要有控制仿真时间粒度的``timescale`语句，同时要包含你想测试的模块文件，在本例中是`cpu_checker_2.v`

接着要实例化你所写的模块，如下图所示

![image-20210917221337382](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221337382.png)

然后在`initail`语句块中加入下面的语句

![image-20210917221420955](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221420955.png)

其中`$dumpfile`指定波形文件名，`$dumpvars`表示所有定义的`wire`和`reg`都参与仿真

下面的`#2 char = "..."`都是要进行测试的数据，可以自行设计

然后运行`my_cpu_checker_tb.v`程序，还是点击右上角的绿色图标

如果顺利的话，你将在右侧文件管理器中看到

![image-20210917221615195](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221615195.png)

这就是我们需要的波形文件

### 方法一：使用GTKWave

如下图操作

![image-20210917221723186](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221723186.png)

然后可以自行探索此软件的功能，~~反正我也没咋用过~~

![image-20210917221844146](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917221844146.png)

### 方法二：利用VSCode插件

如下图操作

![image-20210917222004651](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917222004651.png)

然后我们可以直接在VSCode中点击左侧文件管理器中的`*.vcd`文件打开，如图所示，点击Add Signals添加想要观察的变量，就可以看到炫酷的波形图像了

![image-20210917222155321](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20210917222155321.png)