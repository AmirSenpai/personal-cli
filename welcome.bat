@echo off
:: Set the title and color
:START
cls
:: Set the title and color
title Welcome to Amir's USB Drive!
color 0A

:: ASCII welcome message
echo ===========================================================
echo                   WELCOME TO AMIR'S CLI                  
echo ===========================================================
echo.

:: Pause for effect
ping localhost -n 3 >nul

:: Menu
echo What would you like to do today?
echo [1] Open Amir's Portfolio
echo [2] Open VsCode Installer
echo [3] Open ToDo List
echo [4] Play a Fun Game
echo [5] Exit
set /p choice=Enter your choice (1/2/3/4/5): 

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
    echo Starting a fun game...
    ping localhost -n 2 >nul
    goto game
)
if "%choice%"=="5" (
    echo Bye! Have a great day!
    ping localhost -n 2 >nul
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
