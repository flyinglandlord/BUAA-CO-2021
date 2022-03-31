echo off
:loop
.\code_generate.exe
java -jar .\mars.jar mips_code.txt nc mc CompactDataAtZero a dump .text HexText .\src\code.txt
java -jar .\mars.jar mips_code.txt nc mc CompactDataAtZero a dump .text HexText .\std\code.txt
cd .\src
iverilog -o mips_tb.v.out mips_tb.v
vvp mips_tb.v.out > ..\src_out.txt
cd ..\std
iverilog -o mips_tb.v.out mips_tb.v
vvp mips_tb.v.out > ..\std_out.txt
cd ..
comp.exe
goto loop