@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: TCPSoft
REM  Productname: TCPSoft
REM  Filedescription: 与锐捷云课堂说再见~如需恢复云课堂，请运行“恢复云课堂.exe“
REM  Copyrights: TCPSoft
REM  Trademarks: 
REM  Originalname: 告别云课堂.exe
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
echo    1.请不要关闭接下来打开的记事本窗口，因为你 . . .
echo.
echo      关不掉！
echo.
echo      关不掉！
echo.
echo      关不掉！
echo.
echo      最小化窗口即可，不影响使用。
echo.
echo.
echo.
echo    2.如需接受老师的洗礼，
echo.
echo      只需运行“恢复云课堂.exe”
echo.
echo      然后关闭记事本窗口即可。
echo.
pause

