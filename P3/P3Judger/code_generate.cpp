// Update on 2021 Nov. 8
// Fix some bugs and change the code for the test in Computer Organization course in Fall, 2021
#include<fstream>
#include<vector>
#include<algorithm>
#include<cstdlib>
#include<ctime>
using namespace std;
ofstream cout("mips_code.txt");
struct op{      // type=0:nop, type=1:addu, type=2:subu, type=3:lui, type=4:ori, type=5:lw, type=6:sw, type=7:beq
	int type,r1,r2,r3;
	op(){}
	op(int a1,int a2,int a3,int a4){
		type=a1,r1=a2,r2=a3,r3=a4;
	}
};
int size_im,size_dm,size_op,small_reg;
op a[10010];
vector<int> branch[10010];
int is_small[40],small[40],val[40],cnt;
int r(int a,int b,int except1){  // Randomly generate a register except the $1($at), because $1 may cause some unexpected errors
                                 // Function: Generate a random number in range (a, b), except number 1 when except1=1
	int t0=rand()*2+rand()%2;
	int res=t0%(b-a+1)+a;
	return ((res==1)&&except1==1)?0:res;
}
int t[10010];
void get_small(){               // Randomly select some registers for process 'lw' and 'sw' in the test
	int i;
	for(i=1;i<=26;i++) t[i]=i;
	for(i=1;i<=26;i++) swap(t[i],t[rand()%30+1]);
	for(i=1;i<=small_reg;i++) small[i]=t[i]+1,is_small[t[i]+1]=1;
}
int nosmall(){                  // Randomly generate a register which is not in the array small[]
	int u=r(0,27,1);
	while(is_small[u]==1){u=r(0,27,1);}
	return u;
}
void print(int x){
	if(a[x].type==0) cout<<"nop"<<endl;
	if(a[x].type==1) cout<<"addu $"<<a[x].r1<<",$"<<a[x].r2<<",$"<<a[x].r3<<endl;
	if(a[x].type==2) cout<<"subu $"<<a[x].r1<<",$"<<a[x].r2<<",$"<<a[x].r3<<endl;
	if(a[x].type==3) cout<<"lui $"<<a[x].r1<<","<<a[x].r3<<endl;
	if(a[x].type==4) cout<<"ori $"<<a[x].r1<<",$"<<a[x].r2<<","<<a[x].r3<<endl;
	if(a[x].type==5) cout<<"lw $"<<a[x].r1<<","<<a[x].r3<<"($"<<a[x].r2<<")"<<endl;
	if(a[x].type==6) cout<<"sw $"<<a[x].r1<<","<<a[x].r3<<"($"<<a[x].r2<<")"<<endl;
	if(a[x].type==7) cout<<"beq $"<<a[x].r1<<",$"<<a[x].r2<<",branch"<<a[x].r3<<endl;
}
int main(){
	int i,j;
	srand(time(NULL));
	size_im=32,size_dm=32,size_op=8,small_reg=8;	    // The size of IM and DM is 32 in the test

	get_small();
	for(i=1;i<=small_reg;i++)                           // Firstly, use 'ori' to assign primary data for the registers
		a[i]=(op(4,small[i],0,val[small[i]]=r(0,size_dm-1,0)));
	for(i=small_reg+1;i<=size_im;i++){
		int op0=r(0,size_op-1,0),r1,r2,r3;
		if(op0==0) a[i]=(op(0,0,0,0));
		if(op0==1||op0==2){                             // 'addu' and 'subu'
			a[i]=op(op0,nosmall(),r(0,27,1),r(0,27,1));
		}
		if(op0==3||op0==4){                             // 'lui' and 'ori'
			a[i]=(op(op0,nosmall(),r(0,27,1),r(0,65535,0)));
		}
		if(op0==5){                                     // 'lw'
			r1=r(0,size_dm-1,0);
			r2=r(1,small_reg,0);
			a[i]=(op(op0,nosmall(),small[r2],(r1-val[small[r2]])*4));
		}
		if(op0==6){                                     // 'sw'
			r1=r(0,size_dm-1,0);
			r2=r(1,small_reg,0);
			a[i]=(op(op0,r(0,27,1),small[r2],(r1-val[small[r2]])*4));
		}
		if(op0==7){                                     // 'beq' branch to the code before may cause bugs, just generate branch above
			r3=r(i,size_im,0);
			a[i]=(op(op0,r(0,27,1),r(0,27,1),++cnt));
			branch[r3].push_back(cnt);                  // Randomly put the branch tags
		}
	}
	for(i=1;i<=size_im;i++) {
		print(i);
		for(j=0;j<branch[i].size();j++)
			cout << "branch" << branch[i][j] << ":" << endl;
	}
	return 0;
}
