#include <cstdio>
#include <algorithm>
#include <queue>
#include <map>
#include <cstring>
#include <cmath>
#include <cstdlib>
#include <set>
#include <unordered_map>
#include <vector>
#include <ctime>
typedef long long ll;
using namespace std;
unsigned int grf[32] = {0};
int reg[] = {0, 1, 2, 3, 31, 1, 2, 3, 31, 1, 2, 3, 31, 1, 2, 3, 1};
int hi, lo;
int dm[3075];
#define R reg[rand() % 16]
#define R_nz reg[rand() % 16+1]
#define I ((rand() + rand()) % 40) * 4
#define B (rand() % 650)
#define TYPE rand()%10 + 1

void Div(int rs, int rt)
{
	printf("div $%d,$%d\n", rs, rt);
}

void divu(int rs, int rt)
{
	printf("divu $%d,$%d\n", rs, rt);
}

void mult(int rs, int rt)
{
	printf("mult $%d,$%d\n", rs, rt);
}

void multu(int rs, int rt)
{
	printf("multu $%d,$%d\n", rs, rt);
}

void mfhi(int rs)
{
	printf("mfhi $%d\n", rs);
}

void mflo(int rs)
{
	printf("mflo $%d\n", rs);
}

void mthi(int rs)
{
	printf("mthi $%d\n", rs);
}

void mtlo(int rs)
{
	printf("mtlo $%d\n", rs);
}

void addu(int rs, int rt, int rd)
{
	printf("addu $%d,$%d,$%d\n", rd, rt, rs);
	if (rd)
		grf[rd] = grf[rs] + grf[rt];
}
void subu(int rs, int rt, int rd)
{
	printf("subu $%d,$%d,$%d\n", rd, rt, rs);
	if (rd)
		grf[rd] = grf[rs] - grf[rt];
}
void ori(int rs, int rt, int imm)
{
	printf("ori $%d,$%d,%d\n", rt, rs, imm);
	if (rt)
		grf[rt] = grf[rs] | imm;
}
void lui(int rs, int rt, int imm)
{
	printf("lui $%d,%d\n", rs, imm);
	if (rs)
		grf[rs] = 1u * imm << 16;
}
void lw(int rs, int rt)
{
	int imm = I;
    subu(rs, rs, rs);
	printf("lw $%d,%d($%d)\n", rt, imm, rs);
	grf[rt] = dm[imm / 4];
}
void sw(int rs, int rt)
{
	int imm = I;
    subu(rs, rs, rs);
	printf("sw $%d,%d($%d)\n", rt, imm, rs);
	dm[imm / 4] = grf[rt];
}
int jump[1010];
void beq(int rs, int rt, int casenum)
{
	int jaddr = B;
	while (jump[jaddr])
		jaddr = B;
	printf("beq $%d,$%d,endsubtest%d\n", rs, rt, casenum);
    printf("nop\n");
}

int main() {
    srand(time(NULL));
    freopen("mips_code.asm", "w", stdout);
    printf("ori $1, $0, %d\n", I);
    //printf("lui $1, %d\n", I);
    printf("ori $2, $0, %d\n", I);
    //printf("lui $2, %d\n", I);
    printf("ori $3, $0, %d\n", I);
    //printf("lui $3, %d\n", I);
    printf("ori $31, $0, %d\n", I);

    int T = 15;
    for(int i = 1; i <= T; i++) {
        addu(4, R, R);
        printf("jal subtest%d\n", i);
        printf("nop\n");
        printf("back%d:\n", i);
    }

    printf("\n");
    printf("endtest:\n");
	printf("beq $0, $0, endtest\nnop\n\n"); 

    for(int i = 1; i <= T; i++) {
        printf("subtest%d:\n", i);
        int last_k;
        for(int j = 1; j <= 15; j++) {
            grf[0] = 0;
            int k = TYPE;
            if(k == 1 || k == 4 || k == 5) {
                int r = rand()%4 + 1;
                if(r == 1) addu(R, R, R);
                else if(r == 2) subu(R, R, R);
                else if(r == 3) ori(R, R, I);
                //else if(r == 4) lui(R, R, I);
            } else if(k == 2 || k == 6) {
                int r = rand()%2 + 1;
                if(r == 1) lw(R%4, R);
                else if(r == 2) sw(R%4, R);
            } else if((k == 3 || k == 7) && (last_k != 3 || last_k != 7)) {
                beq(R, R, i);
            } else if(k == 8 || k == 9 || k == 10) {
            	int r = rand()%5 + 1;
            	if(r == 1) mult(R, R);
                else if(r == 2) multu(R, R);
                else if(r == 3) Div(R_nz, R_nz);
                else if(r == 4) divu(R_nz, R_nz);
                else if(r == 5) mfhi(R_nz);
                else if(r == 6) mflo(R_nz);
                else if(r == 7) mthi(R_nz);
                else if(r == 8) mtlo(R_nz);
			}
            last_k = k;
        }
        printf("endsubtest%d:\n", i);
        printf("la $ra, back%d\n", i);
        printf("jr $ra\n");
        printf("nop\n");
        printf("\n\n");
    }
    

    return 0;
}
