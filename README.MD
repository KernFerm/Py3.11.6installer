# Python 3.11.6 Installation Script

This script automates the installation process of Python 3.11.6 on your system.

## Prerequisites

- Windows operating system
- Internet connection

## Usage

1. Download the script (`install_python_3.11.6.bat`) to your desired location.
2. Double-click on the script to run it.

## Instructions

- Upon running the script, it will prompt you whether to continue with the installation or not.
- If you choose to continue (`Y`), it will download Python 3.11.6 installer from the official Python website and install it silently.
- If you choose not to continue (`N`), the installation will be cancelled.
- After installation, Python 3.11.6 will be available on your system.


```bash```

     - REMEMBER TO  "ADD PYTHON.EXE TO PATH"

-----

## Usage Example

```bash
@echo off

echo This script will install Python 3.11.6 on your system.
echo Do you want to continue with the installation? (Y/N)

set /p choice=
if /i "%choice%"=="Y" (
    echo Downloading Python 3.11.6...
    bitsadmin /transfer myDownloadJob /download /priority normal https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe %cd%\python-3.11.6.exe
    echo Installing Python 3.11.6...
    python-3.11.6.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
    echo Python 3.11.6 has been installed.
) else (
    echo Installation cancelled.
)

pause
