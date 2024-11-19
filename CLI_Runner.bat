@echo off

:START
cls
:: Set the title and color
title Welcome to Amir's Personal CLI
color 0A

call :ascii_art
echo Welcome to Amir's CLI!
timeout /t 2 /nobreak >nul

:: Main Menu
:MAINMENU
cls
call :ascii_art
echo What would you like to do today?
echo [1] Open Amir's Portfolio
echo [2] Amir's Socials
echo [3] Tell Time and Date
echo [4] Play a Fun Game
echo [5] Open Advanced Menu [requires Administrator]
echo [6] Exit
set /p choice=Enter your choice (1/2/3/4/5/6): 

if "%choice%"=="1" (
    start https://github.com/amirsenpai
    goto MAINMENU
)
if "%choice%"=="2" (
    cls
    echo Telegram: https://t.me/itsdekusenpai
    echo BlueSky: amirdeku.bsky.social
    echo Gmail: itsdekusenpai@gmail.com
    pause
    goto MAINMENU
)
if "%choice%"=="3" (
    cls
    echo Current Date and Time:
    date /t
    time /t
    pause
    goto MAINMENU
)
if "%choice%"=="4" (
    goto GAME
)
if "%choice%"=="5" (
    goto ADVANCEDMENU
)
if "%choice%"=="6" (
    echo Bye! Have a great day!
    timeout /t 2 /nobreak >nul
    exit
)
echo Invalid choice. Please try again.
timeout /t 2 /nobreak >nul
goto MAINMENU

:GAME
cls
echo Welcome to the Number Guessing Game!
set /a score=0
:GUESSLOOP
set /a number=%random% %% 10 + 1
set /p guess=Guess a number between 1 and 10: 

if "%guess%"=="%number%" (
    echo Congratulations! You guessed it.
    set /a score+=1
) else (
    echo Sorry, the correct number was %number%.
)
echo Your score: %score%
echo.
set /p playagain=Play again? (y/n): 
if /i "%playagain%"=="y" goto GUESSLOOP
if /i "%playagain%"=="n" goto MAINMENU
echo Invalid choice. Returning to main menu.
timeout /t 2 /nobreak >nul
goto MAINMENU

:ADVANCEDMENU
cls
call :ascii_art
echo Welcome to the Advanced Menu!
timeout /t 1 /nobreak >nul
echo.
echo [1] Open System Info
echo [2] Open VSCode Web
echo [3] Show IP Address
echo [4] Open Installer CLI
echo [5] Back to Previous Menu
set /p choice2=Enter your choice (1/2/3/4/5): 

if "%choice2%"=="1" (
    cls
    echo Gathering system information...
    timeout /t 1 /nobreak >nul
    systeminfo | more
    pause
    goto ADVANCEDMENU
)
if "%choice2%"=="2" (
    start https://vscode.dev
    goto ADVANCEDMENU
)
if "%choice2%"=="3" (
    cls
    echo IP Configuration:
    ipconfig | findstr "IPv4"
    pause
    goto ADVANCEDMENU
)
if "%choice2%"=="4" (
    if exist installercli\installer.bat (
        cd installercli
        start installer.bat
    ) else (
        echo Installer CLI not found!
        pause
    )
    goto ADVANCEDMENU
)
if "%choice2%"=="5" (
    goto MAINMENU
)
echo Invalid choice. Please try again.
timeout /t 2 /nobreak >nul
goto ADVANCEDMENU

:: ASCII Art Subroutine
:ascii_art
echo ===========================================================
echo                   WELCOME TO AMIR'S CLI                  
echo ===========================================================
exit /b
