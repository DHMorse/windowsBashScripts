@echo off
:: Windows version of the rm command
:: Usage: rm <file_or_directory>

if "%~1"=="" (
    echo Usage: rm ^<file_or_directory^>
    exit /b 1
)

if exist "%~1" (
    :: It's a file
    del /q "%~1"
    echo "%~1" has been removed.
) else (
    echo "%~1" does not exist.
    exit /b 1
)z