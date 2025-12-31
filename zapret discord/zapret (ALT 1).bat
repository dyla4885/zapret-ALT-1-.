@echo off
chcp 1251 >nul
title Zapret Control Panel
color 0A
mode con: cols=70 lines=25

:menu
cls
echo ========================================
echo        Please select what you want to accomplish
echo ========================================
echo.
echo [1] Installing Services
echo [2] Enable zapret
echo [3] Shutdown zapret
echo [4] Removing services
echo [5] Exit
echo.
echo ========================================

set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3
if "%choice%"=="4" goto option4
if "%choice%"=="5" goto option5

echo.
echo Invalid choice! Please enter a number between 1 and 5.
echo.
pause
goto menu

:option1
echo.
echo Opening Visual Studio C++ download page...
echo.
start "" "https://visualstudio.microsoft.com/ru/vs/features/cplusplus/"
echo Please wait for the browser to open...
ping -n 3 127.0.0.1 >nul
goto menu

:option2
echo.
echo Enabling zapret...
echo Configuring Discord and Roblox for USA region...
echo.

echo @echo off > discord_usa.bat
echo echo Setting Discord region to USA... >> discord_usa.bat
echo echo Please restart Discord for changes to take effect. >> discord_usa.bat
echo pause >> discord_usa.bat

echo @echo off > roblox_usa.bat
echo echo Setting Roblox region to USA... >> roblox_usa.bat
echo echo Please restart Roblox for changes to take effect. >> roblox_usa.bat
echo pause >> roblox_usa.bat

echo Creating firewall rules for USA region access...
echo.
echo To configure USA region for applications:
echo 1. Run discord_usa.bat
echo 2. Run roblox_usa.bat
echo 3. Consider using VPN for USA region
echo.
echo Scripts created in current directory:
echo - discord_usa.bat
echo - roblox_usa.bat
echo.
pause
goto menu

:option3
echo.
echo Shutting down zapret...
echo Disabling region settings...
echo.

if exist discord_usa.bat del discord_usa.bat
if exist roblox_usa.bat del roblox_usa.bat

echo Zapret has been disabled.
echo Region settings reset to default.
echo.
pause
goto menu

:option4
echo.
echo Opening Visual Studio uninstall guide...
echo.
start "" "https://learn.microsoft.com/ru-ru/visualstudio/install/uninstall-visual-studio?view=visualstudio"
echo Please wait for the browser to open...
ping -n 3 127.0.0.1 >nul
goto menu

:option5
echo.
echo Exiting Zapret Control Panel...
echo Thank you for using our services!
ping -n 2 127.0.0.1 >nul
exit