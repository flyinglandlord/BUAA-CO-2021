## 计时器状态转移图

### 模式 0

![BUAA_CO_P7_Counter_MODE0](C:\Users\Lenovo\Desktop\BUAA_CO_P7_Counter_MODE0.svg)

### 模式 1

![BUAA_CO_P7_Counter_MODE1](F:\MyWorkspace\Computer_Organization\P7\BUAA_CO_P7_Counter_MODE1.svg)

## 计时器使用说明

对于模式0和模式1两种模式而言，可以进行的操作和不能进行的操作是相同的，只是不同模式的功能不同

- 当计数器倒计数为 0 后，计数器停止计数，此时控制寄存器中的使能 Enable 自动变为 0。当使能 Enable 被设置为 1 后，初值寄存器值再次被加载至计数器， 计数器重新启动倒计数。 模式 0 通常用于产生定时中断
- 当计数器倒计数为 0 后，初值寄存器值被自动加载至计数器，计数器继续倒计数。 模式 1 通常用于产生周期性脉冲

### 可以进行的操作

| 操作                                   | 计时器模式和状态 | 对应功能                                                     |
| -------------------------------------- | ---------------- | ------------------------------------------------------------ |
| 写入 `CTRL[3]`                         | 任意模式和状态   | 修改计时器的中断屏蔽 <br/>`1'b1`表示允许中断 <br />`1'b0`表示禁止中断 |
| 写入 `CTRL[2:1]` 为 `2'b00` 或 `2'b01` | 任意模式和状态   | 修改计时器的模式，对应相同的模式编号                         |
| 写入`CTRL[0]`                          | 任意模式和状态   | 修改计时器使能端<br/>`1'b1`表示允许计数 <br />`1'b0`表示停止计数 |
| 写入 `PRESET`                          | 任意模式和状态   | 修改计时器的计数初值                                         |

### 不可以进行的操作

| 操作                                   | 计时器模式和状态 | 误操作后果                                             |
| -------------------------------------- | ---------------- | ------------------------------------------------------ |
| 写入 `CTRL[31:4]`                      | 任意模式和状态   | 写入无效，会被自动屏蔽，没有任何效果                   |
| 写入 `CTRL[2:1]` 为 `2'b10` 或 `2'b11` | 任意模式和状态   | 计时器的模式未定义，预期效果未知，**不可进行此操作**   |
| 写入 `COUNT`                           | 任意模式和状态   | 计时器的计数值被更改，预期效果未知，**不可进行此操作** |