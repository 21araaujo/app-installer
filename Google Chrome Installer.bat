@echo off
echo ==============================
echo INSTALANDO GOOGLE CHROME
echo ==============================

echo [1/2] Atualizando winget...
winget source update

echo [2/2] Instalando Chrome...

winget install --id Google.Chrome -e --accept-source-agreements --accept-package-agreements

if %errorlevel% neq 0 (
    echo Falhou no winget. Baixando instalador oficial...

    curl -L -o ChromeSetup.exe https://dl.google.com/chrome/install/latest/chrome_installer.exe
    start /wait ChromeSetup.exe
)

echo.
echo Finalizado!
echo Abrindo Chrome...

start chrome

pause