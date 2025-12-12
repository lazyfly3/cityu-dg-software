@echo off
chcp 65001 >nul
echo 开始同步到 GitHub...
echo Starting sync to GitHub...
echo.

cd /d "%~dp0"

powershell -ExecutionPolicy Bypass -File "%~dp0sync-to-github.ps1"

pause

