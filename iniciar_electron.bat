@echo off
title Warana AI (Edicao Electron) - CETAM
echo ========================================================
echo        Iniciando Warana AI - Edicao Electron
echo               Tema Oficial CETAM 2026
echo ========================================================
echo.
cd /d "%~dp0"

if not exist "node_modules\electron" (
    echo [AVISO] Instalando dependencias do Electron...
    call npm install
)

echo Abrindo o aplicativo Electron...
call npx electron .
