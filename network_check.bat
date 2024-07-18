@echo off
setlocal

:check_network
ping -n 1 google.com >nul 2>&1
if %errorlevel% neq 0 (
    echo Não há conexão com a Internet. O login será encerrado.
    shutdown /l /f
)