@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: TCPSoft
REM  Productname: TCPSoft
REM  Filedescription: 云课堂,回来!    如需禁止云课堂，请运行“告别云课堂.exe“
REM  Copyrights: TCPSoft
REM  Trademarks: 
REM  Originalname: 恢复云课堂.exe
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
echo 恢复成功！请关闭记事本，接受老师的洗礼吧。
echo.
pause
