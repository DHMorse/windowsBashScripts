@echo off
:: Check if the directory is provided
if "%~1"=="" (
    echo Usage: rm -r.bat [directory]
    exit /b 1
)

:: Check if the directory exists
if not exist "%~1" (
    echo The directory "%~1" does not exist.
    exit /b 1
)

:: Delete the directory and its contents
rmdir /s /q "%~1"

:: Confirm deletion
if exist "%~1" (
    echo Failed to delete the directory "%~1".
)