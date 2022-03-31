#include <bits/stdc++.h>
#define maxn 100086

using namespace std;

vector<string> v, w;
char s[maxn];

int main(){
	freopen("src_v.out", "r", stdin);
	while(gets(s) != NULL){
		string S = s;
		v.push_back(s);
	}
	freopen("src_v.out", "w", stdout);
	
	for(int i = 0;i < v.size();i++){
		if(v[i].length() <= 20 || v[i][20] != '@') continue;
		v[i] = v[i].substr(20);
		if(v[i][11] == '$' && v[i][12] == ' ' && v[i][13] == '0') continue;
		w.push_back(v[i]);
	}
	sort(w.begin(), w.end());
	for(int i = 0;i < w.size();i++) printf("%s\n", w[i].c_str());
	
	v.clear();
	w.clear();
	freopen("std_v.out", "r", stdin);
	while(gets(s) != NULL){
		string S = s;
		v.push_back(s);
	}
	freopen("std_v.out", "w", stdout);
	
	for(int i = 0;i < v.size();i++){
		if(v[i].length() <= 20 || v[i][20] != '@') continue;
		v[i] = v[i].substr(20);
		if(v[i][11] == '$' && v[i][12] == ' ' && v[i][13] == '0') continue;
		w.push_back(v[i]);
	}
	sort(w.begin(), w.end());
	for(int i = 0;i < w.size();i++) printf("%s\n", w[i].c_str());
}
