@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: TCPSoft
REM  Productname: TCPSoft
REM  Filedescription: �ƿ���,����!    �����ֹ�ƿ��ã������С�����ƿ���.exe��
REM  Copyrights: TCPSoft
REM  Trademarks: 
REM  Originalname: �ָ��ƿ���.exe
REM  Comments: 
REM  Productversion:  0. 0. 0. 1
REM  Fileversion:  0. 0. 0. 1
REM  Internalname: Restart_YunClass_Alpha
REM  Appicon: unlock.ico
REM  AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ClassManagerApp.exe" /f 0<nul 1>nul 2>nul
echo.
echo �ָ��ɹ�����رռ��±���������ʦ��ϴ��ɡ�
echo.
pause
