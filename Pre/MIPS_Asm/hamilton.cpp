#include <iostream>
using namespace std;

const int MAXN = 10;

int G[MAXN][MAXN];
bool vis[MAXN];
int n, m;
int ans;

int dfs(int i, int start) {
    bool flag = false;
    vis[i] = true;
    cout << i;
    for(int j = 1; j <= n; j++) if(!vis[j] && G[i][j]) {
        dfs(j, start);
    }
    for(int j = 1; j <= n; j++) if(!vis[j]) {
        flag = true;
        break;
    }
    if(G[i][start] && !flag) ans = 1;
    //cout << '$' << i << ' ' << start << ' ' << G[i][start] << endl;
    vis[i] = false;
    return 0;
}

int main() {
    cin >> n >> m;
    for(int i = 0; i < m; i++) {
        int u, v;
        scanf("%d%d", &u, &v);
        G[u][v] = G[v][u] = 1;
    }

    for(int i = 1; i <= n; i++) {
        dfs(i, i);
        if(ans == 1) {
            cout << 1 << endl;
            return 0;
        }
    }2w
    cout << 0 << endl;
    return 0;
}
