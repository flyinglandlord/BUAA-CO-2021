# 在Windows 11下使用ISE和ISim编写调试Verilog代码

笔者在完成了P8的课下任务之后，为了尝鲜把电脑系统升级到了Windows 11，但是在Windows 11下想要调试代码时，由于缺少某些必要的运行库，ISE无法正常打开，会出现如下图所示的错误

![image-20211223145750869](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20211223145750869.png)

但是由于一个学期已经熟悉了ISE的使用，并不想切换到虚拟机上的VSC平台，经过尝试，我成功的在Windows 11系统运行了ISE和ISim（但是事实上是在Linux环境下），原理是利用了微软今年发布的WSLg，在Windows系统下运行Linux的GUI应用

下面介绍一下操作步骤：

### Step 1：开启WSL功能

**为了使用WSLg，请确保运行的是Windows 11系统**

微软官方文档：[安装 WSL | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows/wsl/install)

在**管理员** PowerShell 或 Windows 命令提示符中输入此命令，然后重启计算机来安装运行适用于 Linux 的 Windows 子系统 (WSL) 所需的全部内容，只需要输入以下命令

```powershell
wsl --install
```

默认安装的Linux发行版是Ubuntu 20.04-LTS，经验证可以运行ISE Linux版

重启之后输入

```powershell
wsl --update
```

启用WSLg功能，然后在开始菜单中可以看到

![image-20211223150408488](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20211223150408488.png)

点击就可以打开Ubuntu的bash

### Step 2：安装ISE 14.7 For Linux

首先从Xilinx官网下载ISE 14.7 Linux版

以下载到G:盘根目录为例，逐次运行以下命令

```bash
cd /mnt/g
sudo tar -xvf Xilinx_ISE_DS_14.7_1015_1.tar
cd ./Xilinx_ISE_DS_14.7_1015_1
sudo ./xsetup
```

然后就会弹出跟Windows下相似的图形安装界面，一直点击下一步即可顺利安装，**请不要修改默认的安装路径，否则下面的路径也要跟着一起修改**

如果前面几步中出现报错`error while loading shared libraries: libncurses.so.5: cannot open shared ob`，那么执行`sudo apt-get install libncurses*`即可解决

### Step 3：如何运行ISE

安装完之后，我们仍然在bash环境下，如何运行ISE呢？

只需要执行`/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/ise`，就可以打开ISE了，界面和Windows下基本一致

![image-20211223152442793](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20211223152442793.png)

![image-20211223154327301](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20211223154327301.png)

运行后和Windows版本相同需要通过Manage Licenses把许可证加入，这里的Licenses可以跟Windows下的用一样的

但是每次启动都需要运行一串命令太麻烦了，怎么办呢？

逐一运行下列命令以创建快捷方式

```bash
cd /opt/Xilinx/14.7/ISE_DS
sudo vim ise.sh
```

把下面的代码复制进去，然后输入`:wq`保存

```bash
#!/bin/bash
export LD_PRELOAD=/opt/Xilinx/usb-driver/libusb-driver.so
ISE_DS_DIR=/opt/Xilinx/14.7/ISE_DS
unset LD_PRELOAD
export gmake=/usr/bin/make

cd "$ISE_DS_DIR"
source "$ISE_DS_DIR"/settings64.sh

export LANG=''  # reset locale to English to fix decimal/comma seperation

"$ISE_DS_DIR"/ISE/bin/lin64/ise
```

然后输入

```bash
sudo chmod 777 ise.sh
cd /usr/share/applications
vim ISE.desktop
```

再把下面的代码复制进去，然后输入`:wq`保存

```bash
[Desktop Entry]
Version=1.0
Name=ISE
Exec=/opt/Xilinx/14.7/ISE_DS/ise.sh
Terminal=false
Icon=/opt/Xilinx/14.7/ISE_DS/ISE/data/images/pn-ise.png
Type=Application
Categories=Development
```

然后再输入

```bash
sudo chmod 777 ISE.desktop
```

这时打开开始菜单可以看到出现下列图标

![image-20211223152928870](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20211223152928870.png)

然后点击就可以运行了