@echo off
REM Windows Installation Script for Express TypeScript Boilerplate

set BOILERPLATE_DIR=%USERPROFILE%\.express-ts-boilerplate
set SCRIPT_NAME=create-express-ts.bat

echo 🚀 Installing Express TypeScript Boilerplate globally...

REM Create global directory
if not exist "%BOILERPLATE_DIR%" mkdir "%BOILERPLATE_DIR%"

REM Copy all boilerplate files
echo 📦 Copying boilerplate files...
xcopy "%~dp0*" "%BOILERPLATE_DIR%\" /E /Y /Q

REM Create global batch file
echo @echo off > "%USERPROFILE%\bin\%SCRIPT_NAME%"
echo bash "%BOILERPLATE_DIR%\setup-new-project.sh" %%* >> "%USERPROFILE%\bin\%SCRIPT_NAME%"

REM Create bin directory if it doesn't exist
if not exist "%USERPROFILE%\bin" mkdir "%USERPROFILE%\bin"

echo ✅ Express TypeScript Boilerplate installed globally!
echo.
echo 🎯 Usage:
echo    %SCRIPT_NAME% my-new-project
echo.
echo 📍 Boilerplate installed at: %BOILERPLATE_DIR%
echo 🔧 Global command: %SCRIPT_NAME%
echo.
echo ⚠️  Note: Make sure %USERPROFILE%\bin is in your PATH
echo    Add %USERPROFILE%\bin to your system PATH variable
echo.
pause
