@echo off
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
    echo Python was not found on this computer.
    echo Please install Python from: https://www.python.org/downloads/
    echo Then run this file again.
    pause
    exit /b 1
)

start "Castle Battle Planner" http://localhost:8000/index.html
python -m http.server 8000
