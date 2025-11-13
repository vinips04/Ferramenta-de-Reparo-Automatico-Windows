@echo off
title Reparo Automatico do Sistema Windows
color 0A
set log=%~dp0logs\reparo_log_%date:~-4,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%h%time:~3,2%m.txt

:: Cria pasta de logs se nao existir
if not exist "%~dp0logs" mkdir "%~dp0logs"

:: Verifica privilegios administrativos
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo =====================================================
    echo  Este script precisa ser executado como ADMINISTRADOR!
    echo =====================================================
    pause
    exit /b
)

cls
echo ================================================
echo     REPARO AUTOMATICO DO SISTEMA WINDOWS
echo ================================================
echo Log: %log%
echo.

echo [1/3] Executando DISM /RestoreHealth ...
echo [DISM - %date% %time%] >> "%log%"
DISM /Online /Cleanup-Image /RestoreHealth >> "%log%" 2>&1
echo.

echo [2/3] Executando SFC /scannow ...
echo [SFC - %date% %time%] >> "%log%"
sfc /scannow >> "%log%" 2>&1
echo.

echo [3/3] Executando CHKDSK (verificacao agendada) ...
echo [CHKDSK - %date% %time%] >> "%log%"
chkdsk C: /f /r >> "%log%" 2>&1
echo.

echo ================================================
echo  ✅ Reparo concluido com sucesso!
echo  🔹 Log salvo em: %log%
echo  🔹 Se solicitado, reinicie o computador.
echo ================================================
pause
exit
