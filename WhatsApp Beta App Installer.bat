@echo off
echo ==============================
echo INSTALANDO WHATSAPP
echo ==============================

echo [1/2] Atualizando winget...
winget source update

echo [2/2] Instalando WhatsApp...

winget install WhatsApp --accept-source-agreements --accept-package-agreements

echo Concluido!
pause

start explorer shell:AppsFolder\WhatsApp.WhatsApp_8wekyb3d8bbwe!App