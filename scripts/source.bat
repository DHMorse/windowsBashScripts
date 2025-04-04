@echo off
REM Check if the user provided a path as an argument
if "%~1"=="" (
    echo Usage: activate_venv.bat path\to\venv
    exit /b
)

REM Activate the virtual environment
if exist Scripts\activate (
    call Scripts\activate
    cmd /k
) else (
    echo Could not find 'Scripts\activate' in the specified path.
)
