@echo off
echo This script will install Python 3.11.6 on your system.
echo Do you want to continue with the installation? (Y/N)

set /p choice="Enter your choice (Y/N): "
if /i "%choice%" neq "Y" (
    echo Installation cancelled by the user.
    pause
    exit
)

echo Downloading Python 3.11.6...
bitsadmin /transfer "PythonDownloadJob" /download /priority normal https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe "%cd%\python-3.11.6.exe"

:: Check if the download was successful
if not exist "%cd%\python-3.11.6.exe" (
    echo Download failed. Please check your internet connection or URL and try again.
    pause
    exit
)

echo Installing Python 3.11.6...
"%cd%\python-3.11.6.exe" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

:: Check the result of the installation
if %ERRORLEVEL% equ 0 (
    echo Python 3.11.6 has been installed successfully.
    echo Adding Python Scripts directory to system PATH...
    setx PATH "%PATH%;C:\Programs\Python\Python311\Scripts"
    setx PATH "%PATH%;C:\Programs\Python\Python311"
    echo Python Scripts directory has been added to the system PATH.
) else (
    echo Installation failed. Error code: %ERRORLEVEL%
)

pause
