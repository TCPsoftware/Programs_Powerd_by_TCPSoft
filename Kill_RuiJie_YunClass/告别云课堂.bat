@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: TCPSoft
REM  Productname: TCPSoft
REM  Filedescription: ������ƿ���˵�ټ�~����ָ��ƿ��ã������С��ָ��ƿ���.exe��
REM  Copyrights: TCPSoft
REM  Trademarks: 
REM  Originalname: ����ƿ���.exe
REM  Comments: 
REM  Productversion:  0. 0. 0. 1
REM  Fileversion:  0. 0. 0. 1
REM  Internalname: Stop_YunClass_Alpha
REM  Appicon: unlock.ico
REM  AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ClassManagerApp.exe" /f 0<nul 1>nul 2>nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ClassManagerApp.exe" /v Debugger /t REG_SZ /d "C:\Windows\notepad.exe" /f 0<nul 1>nul 2>nul
taskkill /im ClassManagerApp.exe /t /f 0<nul 1>nul 2>nul
taskkill /im ClassManagerApp.exe /t /f 0<nul 1>nul 2>nul
echo.
echo    1.�벻Ҫ�رս������򿪵ļ��±����ڣ���Ϊ�� . . .
echo.
echo      �ز�����
echo.
echo      �ز�����
echo.
echo      �ز�����
echo.
echo      ��С�����ڼ��ɣ���Ӱ��ʹ�á�
echo.
echo.
echo.
echo    2.���������ʦ��ϴ��
echo.
echo      ֻ�����С��ָ��ƿ���.exe��
echo.
echo      Ȼ��رռ��±����ڼ��ɡ�
echo.
pause

