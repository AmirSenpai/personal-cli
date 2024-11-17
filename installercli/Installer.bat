@echo off

color 0A
echo ===========================================================
echo                       Installer CLI                  
echo ===========================================================
echo.
:START
cls
echo What would you like to do?
timeout /t 2 /nobreak >nul
echo [1] Install Node
echo [2] Update npm To latest Version
echo [3] Install git {first install node}
echo [4] Make a HTML/CSS/JS Folder
set /p choice3=Enter Your Choice (1/2/3):

if "%choice3%"=="1" (
   start node.msi
   echo Node installer has been opened.
   pause
   goto START
)

if "%choice3%"=="2" (
   npm install -g npm@latest
   echo npm has been updated to latest version
   goto START
)

if "%choice3%"=="3" (
    npm -g install git
    pause
    goto START
)

if "%choice3%"=="4" (
   cd /d "%USERPROFILE%\Desktop"
   mkdir Html_Css_Js
   cd Html_Css_Js
   type nul > html.html
   type nul > css.css
   type nul > js.js
   echo Folder and files have been created on Desktop.
   timeout /t 1 /nobreak >nul
   pause
)

if not "%choice3%"=="1" if not "%choice3%"=="2" if not "%choice3%"=="3" if not "%choice3%"=="4" (
   echo Invalid choice. Please try again.
   timeout /t 1 /nobreak >nul
   goto START
)
