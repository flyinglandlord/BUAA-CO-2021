echo off
:loop
python auto_judger.py
fc src_info.txt std_info.txt
goto loop