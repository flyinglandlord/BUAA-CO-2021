import os

os.system(".\\code_generate.exe")
os.system("java -jar .\\mars.jar mips_code.txt db nc mc CompactTextAtZero a dump .text HexText mips_hex_code.txt")
testbench = open("mips_hex_code.txt", "r")
logisim_format = open("logisim_hex_code.txt", "w")
logisim_format.write("v2.0 raw\n")
try:
    lines = testbench.readlines()
    for i in lines:
        logisim_format.write(i)
except ValueError:
    pass
