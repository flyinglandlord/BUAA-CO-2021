#include <iostream>
#include <cstdio>
using namespace std;

int num[1024], tmp[1024];

int main() {
    int n;
    cin >> n;

    num[0] = 1;
    int len = 1;
    for(int i = 1; i <= n; i++) {
        int mult = i;
        for(int j = 0; j < len; j++) {
            tmp[j] += num[j] * mult;
            tmp[j + 1] += tmp[j] / 10000;
            tmp[j] %= 10000;
        }
        len += i;
        while(tmp[len] == 0) len--;
        len++; 
        if(len > 1000) len = 1000;
        for(int j = 0; j < len; j++) {
            num[j] = tmp[j];  tmp[j] = 0;
        }
    }
    len = 250;
    while(num[len] == 0) len--;
    for(int i = len-1; i >= 0; i--) if(num[i]) printf("%d", num[i]); else printf("0000");
    cout << endl;
    return 0;
}