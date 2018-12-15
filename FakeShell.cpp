#include<cstdio> 
#include<cstdlib> 
#include<cstring>
#include<iostream>
using namespace std;
//写到一半发现很多功能只有cmd才能做到，弃坑ing 
int main(int argc,const char* argv[]){
	char ss[1000];
	cout<<
" _____ ____ ____  ____         __ _        ____ __  __ ____   \n"<<
"|_   _/ ___|  _ \\/ ___|  ___  / _| |_     / ___|  \\/  |  _ \\ \n"<<
"  | || |   | |_) \\___ \\ / _ \\| |_| __|   | |   | |\\/| | | | |\n"<<
"  | || |___|  __/ ___) | (_) |  _| |_    | |___| |  | | |_| |\n"<<
"  |_| \\____|_|   |____/ \\___/|_|  \\__|    \\____|_|  |_|____/ \n"<<endl;
	for(;;){
//		system("echo %cd%");
		cout<<"$";
		cin>>ss;
		system(ss);
		cout<<endl;
	}
	system("pause");
	return 0;
}
