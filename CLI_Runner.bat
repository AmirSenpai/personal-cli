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

:: Menu
echo What would you like to do today?
echo [1] Open Amir's Portfolio
echo [2] Open VsCode Installer
echo [3] Open ToDo List
echo [4] Tell Time and Date
echo [5] Play a Fun Game
echo [6] Show System Info.
echo [7] Exit
set /p choice=Enter your choice (1/2/3/4/5/6): 

if "%choice%"=="1" (
    start https://github.com/amirsenpai
	goto START
)
if "%choice%"=="2" (
    start vscodeinstall.exe
	goto START
)
if "%choice%"=="3" (
    start https://amirsenpai.github.io/ToDo-list-website-amir/
    goto START
)
if "%choice%"=="4" (
    timeout /t 1 /nobreak >nul
    date /t
    time /t
    pause
)
if "%choice%"=="5" (
    echo Starting a fun game...
    timeout /t 2 /nobreak >nul
    goto game
)
if "%choice%"=="6" (
    systeminfo
    timeout /t 2 /nobreak >nul
    pause
)
if "%choice%"=="7" (
    echo Bye! Have a great day!
    timeout /t 2 /nobreak >nul
    exit
)
echo Invalid choice. Please try again.
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
