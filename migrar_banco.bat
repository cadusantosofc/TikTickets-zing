@echo off
TITLE TikTickets - Migrar Banco de Dados
SET ROOT_PATH=%~dp0
SET BACKEND_PATH=%ROOT_PATH%backend

echo ==========================================
echo    MIGRANDO BANCO DE DADOS (TIKTICKETS)
echo ==========================================

cd /d %BACKEND_PATH%

echo [+] Compilando TypeScript (Build)...
call npm run build

echo.
echo [+] Executando Migrations...
call npm run db:migrate

echo.
echo [+] Executando Seeds (Opcional)...
call npm run db:seed

echo.
echo ==========================================
echo    MIGRACAO CONCLUIDA!
echo ==========================================
pause
