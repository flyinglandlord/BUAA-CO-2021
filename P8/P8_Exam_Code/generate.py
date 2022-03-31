code = open("timer_main.txt", "r")
code_main = code.readlines()
handler = open("timer_handler.txt", "r")
code_handler = handler.readlines()
text_start = 12288
text_len = len(code_main) * 4
ktext_start = 16768

out = open("code.coe", "w")
out.write("memory_initialization_radix=16;\nmemory_initialization_vector=\n")

for i in code_main:
    out.write(i.strip() + ',' + '\n')
#print(text_len)

i = text_start + text_len
while i < ktext_start:
    out.write("00000000,\n")
    i = i + 4

i = 0
while i < len(code_handler)-1:
    out.write(code_handler[i].strip() + ',' + '\n')
    i = i + 1

out.write(code_handler[len(code_handler)-1].strip() + ';' + '\n')