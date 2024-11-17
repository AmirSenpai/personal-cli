@echo off

:START
cls
:: Set the title and color
title Welcome to Amir's Personal CLI
color 0A

:: ASCII welcome message
echo ===========================================================
echo                   WELCOME TO AMIR'S CLI                  
echo ===========================================================
echo.

:: Pause for effect
echo Welcome!
timeout /t 2 /nobreak >nul
echo.

:: Menu
echo What would you like to do today?
echo [1] Open Amir's Portfolio
echo [2] Open ToDo List Website
echo [3] Tell Time and Date
echo [4] Play a Fun Game
echo [5] Open Advanced Menu [requires running the cli on Administrator]
echo [6] Exit
set /p choice=Enter your choice (1/2/3/4/5/6): 

if "%choice%"=="1" (
    start https://github.com/amirsenpai
	goto START
)
if "%choice%"=="2" (
    start https://amirsenpai.github.io/ToDo-list-website-amir/
    goto START
)
if "%choice%"=="3" (
    timeout /t 1 /nobreak >nul
    date /t
    time /t
    pause
)
if "%choice%"=="4" (
    echo Starting a fun game...
    timeout /t 2 /nobreak >nul
    goto game
)
if "%choice%"=="5" (
	goto SECONDMENU
)
if "%choice%"=="6" (
    echo Bye! Have a great day!
    timeout /t 2 /nobreak >nul
    exit
)
echo Invalid choice. Please try again.
timeout /t 1 /nobreak >nul
goto START

:game
cls
set /a number=%random% %% 10 + 1
set /p guess=Guess a number between 1 and 10: 

if "%guess%"=="%number%" (
    echo You guessed it! You win!
) else (
    echo Sorry, the correct number was %number%. Better luck next time!
	goto game
)
Pause
exit

:SECONDMENU
cls
:: ASCII welcome message
echo ===========================================================
echo                   WELCOME TO AMIR'S CLI                  
echo ===========================================================
echo.


::Welcome Message
echo welcome to Adv. Menu
timeout /t 1 /nobreak >nul
echo.


:: second menu choices
echo What would you like to do today?
echo [1] Open System Info
echo [2] Open vscdoe webp
echo [3] Show IP Add.
echo [4] Open Installer CLI
echo [5] Back to previous menu
set /p choice2=Enter your choice (1/2/3/4): 

if "%choice2%"=="1" (
    systeminfo
    timeout /t 2 /nobreak >nul
    pause
)
if "%choice2%"=="2" (
    start https://vscode.dev
    goto SECONDMENU
)
if "%choice2%"=="3" (
    ipconfig
    pause
    goto SECONDMENU
)
if "%choice2%"=="4" (
    cd installercli
    start installer.bat
    goto SECONDMENU
)
if "%choice2%"=="5" (
    cls
    goto START
)
echo Invalid choice. Please try again.
goto SECONDMENU