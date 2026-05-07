@echo off
setlocal enabledelayedexpansion

:: 1. CONFIGURACIÓN DE RUTAS
set VAULT_ORIGEN="C:\Users\Chickenroll81\Documents\Obsidian Vault\krollx vault"
set DESTINO_QUARTZ="C:\Users\Chickenroll81\quartz\content"

echo 🔄 1/3: Sincronizando notas (Excluyendo PERSONAL)...

robocopy %VAULT_ORIGEN% %DESTINO_QUARTZ% /MIR /XD "PERSONAL" ".obsidian" ".git" "trash" /NFL /NDL /NJH /NJS

echo.
echo 📦 2/3: Preparando paquete para GitHub...
cd /d "C:\Users\Chickenroll81\quartz"

:: Generar un mensaje de commit con la fecha y hora actual
set timestamp=%DATE% %TIME%
git add .
git commit -m "Update: %timestamp%"

echo.
echo 🚀 3/3: Subiendo a la nube...
git push origin main

echo.
echo ✅ ¡Todo listo! Tu web se esta actualizando.
pause