#include<iostream>
#include<fstream>
#include<io.h>
#include<direct.h>
#include<windows.h>
#include<bits/stdc++.h>
using namespace std;
int main(){
	string aa,bb,comm;
	char charr;
	string tmpstr;
	system("whoami /user |find \"S-\" /i >temp_file.txt");
	ifstream fin;
	fin.open("temp_file.txt");
	fin>>aa>>bb;
	tmpstr="reg query HKEY_USERS\\"+bb+"\\Software\\Kingsoft\\Office\\6.0\\Common /v InstallRoot >temp_file.txt";
//	cout<<tmpstr<<endl;
	fin.close();
	system(tmpstr.c_str());
	fin.open("temp_file.txt");
	fin>>aa>>aa>>aa>>charr;
	getline(fin,bb);
	if(charr>='a'&&charr<='z' || charr>='A'&&charr<='Z') bb=charr+bb;
//	cout<<bb<<endl;
	fin.close();
	system("del temp_file.txt /q /f");
	ofstream fout;
	fout.open("tmp_run.bat");
	comm = bb[0];
	fout<<"@echo off"<<endl;
	comm = comm+":";
	fout<<comm<<endl;
	comm = "cd \"" + bb + "\\office6\"";//E:\Èí¼þ\½ðÉ½ WPS\WPS Office\10.1.0.7400
	fout<<comm<<endl;
	fout<<"taskkill /im wpscenter.exe /f"<<endl;
	fout<<"taskkill /im wpscloudlaunch.exe /f"<<endl;
	fout<<"taskkill /im wpscloudsvr.exe /f"<<endl;
	fout<<"taskkill /im wpsrenderer.exe /f"<<endl;
	fout<<"ren wpscenter.exe wpscenter_backup.exe"<<endl;
	fout<<"ren wpscloudlaunch.exe wpscloudlaunch_backup.exe"<<endl;
	fout<<"ren wpscloudsvr.exe wpscloudsvr_backup.exe"<<endl;
	fout<<"ren wpsrenderer.exe wpsrenderer_backup.exe"<<endl;
	fout<<"cd ..\\wtoolex"<<endl;
	fout<<"taskkill /im wpsnotify.exe /f"<<endl;
	fout<<"ren wpsnotify.exe wpsnotify_backup.exe"<<endl;
//	fout<<"echo. >wpsnotify.exe"<<endl;
//	fout<<"attrib wpsnotify.exe +a +r +s"<<endl;
	fout<<"taskkill /im desktoptip.exe /f"<<endl;
	fout<<"ren desktoptip.exe desktoptip_backup.exe"<<endl;
//	fout<<"echo. >desktoptip.exe"<<endl;
//	fout<<"attrib desktoptip.exe +a +r +s"<<endl;
	fout<<"cd ..\\"<<endl;
	fout<<"xcopy wtoolex wtoolex_backup /s /v /h /k /y /i /q"<<endl;
//	fout<<"attrib wtoolex\\desktoptip.exe -s -h -a -r";
//	fout<<"attrib wtoolex\\wpsnotify.exe -s -h -a -r";
	string del_path = bb +"\\wtoolex";
//		rmdir(del_path.c_str());
		comm="rd \""+del_path+"\" /q /s";
		fout<<comm<<endl;
	fout<<"pause"<<endl;
	fout.close();
	system("tmp_run.bat");
	system("del tmp_run.bat /f /q");
	return 0;
}
