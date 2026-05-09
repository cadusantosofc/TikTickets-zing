@echo off
TITLE TikTickets - Iniciar Projeto
SET ROOT_PATH=%~dp0
SET BACKEND_PATH=%ROOT_PATH%backend
SET FRONTEND_PATH=%ROOT_PATH%frontend-vue-3

echo ==========================================
echo    INICIANDO TIKTICKETS (BACKEND + FRONT)
echo ==========================================

:: Inicia o Backend em uma nova janela
echo [+] Iniciando Backend...
start "TikTickets - Backend" cmd /k "cd /d %BACKEND_PATH% && npm run dev"

:: Inicia o Frontend em uma nova janela
echo [+] Iniciando Frontend (Vue 3)...
start "TikTickets - Frontend" cmd /k "cd /d %FRONTEND_PATH% && npm run dev"

echo.
echo ==========================================
echo    SISTEMA EM EXECUÇÃO!
echo    Nao feche as janelas que abriram.
echo ==========================================
pause
