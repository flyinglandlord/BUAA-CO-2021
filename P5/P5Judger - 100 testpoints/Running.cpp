#include <bits/stdc++.h>

using namespace std;

char s[10086];
int cnt = 0;

int main(){
	while(cnt <= 100){
		//system("new_code_generate.exe");
		//system("java -jar Mars_Changed.jar db mc CompactDataAtZero nc mips_code.asm > m.out");
		string str = "java -jar mars.jar mc CompactDataAtZero a dump .text HexText code.txt .\testpoint\testpoints" + to_string(cnt) + ".asm > log.txt";
		system(str.c_str());
		system("iverilog -o .\\src_tb.out -I .\\src .\\src\\mips_tb.v");
		system("iverilog -o .\\std_tb.out -I .\\std .\\std\\mips_tb.v");
		system("vvp src_tb.out > src_v.out");
		system("vvp std_tb.out > std_v.out");
		system("Process.exe");
		system("fc src_v.out std_v.out > log.txt");
		freopen("log.txt", "r", stdin);
		gets(s), gets(s);
		printf("TestCase%d:", ++cnt);
		if(s[0] != 'F'){
			puts("Wrong Answer!");
			break;
		}
		puts("Accepted!");
	}
}
