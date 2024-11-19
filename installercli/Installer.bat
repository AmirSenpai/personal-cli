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
echo [5] Install Python
set /p choice3=Enter Your Choice (1/2/3/4/5):

if "%choice3%"=="1" (
   start node.msi
   echo Node installer has been opened.
   pause
   goto START
)

if "%choice3%"=="2" (
   npm install -g npm@latest
   echo npm has been updated to the latest version
   pause
   goto START
)

if "%choice3%"=="3" (
    npm install -g git
    echo Git has been installed.
    pause
    goto START
)

if "%choice3%"=="4" (
    set "desktopPath=%USERPROFILE%\Desktop"
    if exist "%desktopPath%" (
        cd /d "%desktopPath%"
        mkdir Html_Css_Js
        cd Html_Css_Js
        type nul > html.html
        type nul > css.css
        type nul > js.js
        echo Folder and files have been created on Desktop.
        timeout /t 1 /nobreak >nul
    ) else (
        echo Could not locate Desktop. Creating folder in the current directory.
        mkdir Html_Css_Js
        cd Html_Css_Js
        type nul > html.html
        type nul > css.css
        type nul > js.js
    )
    pause
    goto START
)

if "%choice3%"=="5" (
    echo Downloading Python installer...
    timeout /t 1 /nobreak >nul
    curl -O https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
    echo Running Python installer...
    start python-3.11.5-amd64.exe
    echo Python installer has been started. Follow the installation process.
    pause
    goto START
)

echo Invalid choice. Please try again.
timeout /t 1 /nobreak >nul
goto START