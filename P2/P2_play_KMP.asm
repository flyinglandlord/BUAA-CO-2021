.data
	pattern: .space 400
	str: .space 400
	next: .space 1600

.macro input_char(%tar)
	li $v0, 12
	syscall
	move %tar, $v0
.end_macro

.macro input(%tar)
	li $v0, 5
	syscall
	move %tar, $v0
.end_macro

.macro print_char(%tar)
	li $v0, 12
	move $a0, %tar
	syscall
.end_macro

.macro print(%tar)
	li $v0, 1
	move $a0, %tar
	syscall
.end_macro

.text
main:
	li $v0, 8
	la $a0, string
	li $a1, 399
	syscall
	li $v0, 8
	la $a0, pattern
	li $a1, 399
	syscall
	
	# translate to Assemble
	# -- get_next --
	# i = 1, j = 0;
	# next[0] = 0;
	# len = len(pattern);
	# while(i < len) {
	#	j = next[i-1]
	# 	while(pattern[j] != pattern[i] && j != 0) j = next[j];
	#	if(pattern[j] == pattern[i]) next[i] = j+1;
	#	else next[i] = 0;
	#	i++;
	# }
	
	
	# translate to Assemble
	# -- KMP --
	# i = 0, j = 0;
	# while(i < len) {
	# 	 if(str[i] == pat[j]) i++, j++;
	#	 else if(j != 0) j = next[j-1];
	#	 else i++;
	#	 if(j == len(pat)) found, j = next[j-1];
	# }
	
	
	# FUCK! I do not want to do this...
	
	
	