import os
import re

import re
def logProcess(log,dest):
    try:
        logText=log.readlines()
        for line in logText:
            linestr=re.sub(r"\s+","",line)
            dest.write("@"+"{:>08x}".format(int(linestr[0:32],2))+":\t")
            if(linestr[32]=='1'):
                dest.write("$"+"{:2d}".format(int(linestr[33:38],2))+" <= "+"{:>08x}".format(int(linestr[38:70],2))+"\t")
            if(linestr[70]=='1'):
                dest.write("#"+"{:>08x}".format(int(linestr[71:76],2))+" <= "+"{:>08x}".format(int(linestr[76:108],2))+"\t")
            dest.write("\n")
    except ValueError:
        pass

if __name__ == '__main__':   
    # -------------------- Prepare the testbench ---------------------------
    WorkDir = "G:/MyWorkspace/Computer_Organization/P3/Auto_Judge"
    os.chdir(WorkDir)
    os.system(".\\code_generate.exe")
    os.system("java -jar .\\mars.jar mips_code.txt nc mc CompactTextAtZero a dump .text HexText mips_hex_code.txt")
    
    # -------------------- Prepare the circuit ---------------------------
    testbench = open("mips_hex_code.txt", "r").read()
    src = open("src.circ", "r", encoding='gbk').read()
    src_rep = re.sub(r'addr/data: 5 32([\s\S]*)</a>', "addr/data: 5 32\n"+ testbench +"</a>", src)
    open("src.circ", "w").write(src_rep)
    std = open("std.circ", "r", encoding='gbk').read()
    std_rep = re.sub(r'addr/data: 5 32([\s\S]*)</a>', "addr/data: 5 32\n"+ testbench +"</a>", std)
    open("std.circ", "w").write(std_rep)

    # ---------------------- Running ---------------------------
    os.system("java -jar .\\logisim.jar .\\src.circ -tty table speed  > src_running_res.txt")
    os.system("java -jar .\\logisim.jar .\\std.circ -tty table speed  > std_running_res.txt")
    # os.system("fc src_running_res.txt std_running_res.txt")
    login = open('src_running_res.txt', 'r')
    logdest = open('src_info.txt', 'w')
    logProcess(login, logdest)
    login = open('std_running_res.txt', 'r')
    logdest = open('std_info.txt', 'w')
    logProcess(login, logdest)