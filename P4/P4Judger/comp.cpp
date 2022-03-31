#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <cstring>
using namespace std;

const int MAXN = 10005;

char std_ans[MAXN][40];
char src_ans[MAXN][40];
int std_ans_len = 0, src_ans_len = 0;

void comp() {
    if(std_ans_len != src_ans_len) {
        cout << "Failed at answer length!" << "\n";
        system("pause");
        return;
    }
    bool t = false;
    for(int i = 3; i < std_ans_len; i++) {
        if(strcmp(std_ans[i], src_ans[i]) != 0) {
        	t = true;
        	cout << "Failed at line " << i << endl;
			printf("Your output is ");fputs(src_ans[i], stdout);
			printf("The standard output is ");fputs(std_ans[i], stdout);
			system("pause");
		}
    }
    if(!t) cout << "Passed!" << "\n";
    //system("pause");
}

int main() {
    int s = 0;
    FILE *std, *src;
    std = fopen("std_out.txt", "r");
    src = fopen("src_out.txt", "r");
    char *temp;
    while(fgets(std_ans[std_ans_len++], 39, std));
    while(fgets(src_ans[src_ans_len++], 39, src));
    comp();
    return 0;
}
