@echo off
:: Rutas configuradas para Chickenroll81
set VAULT_ORIGEN="C:\Users\Chickenroll81\Documents\Obsidian Vault\krollx vault"
set DESTINO_QUARTZ="C:\Users\Chickenroll81\quartz\content"

echo 🔄 Sincronizando notas de "krollx vault" a Quartz...
echo 🛡️ Excluyendo: Carpeta PERSONAL y archivos internos de Obsidian.

:: El comando Robocopy es el mas rapido para sistemas con 4GB de RAM
robocopy %VAULT_ORIGEN% %DESTINO_QUARTZ% /MIR /XD "PERSONAL" ".obsidian" ".git" "trash"

echo.
echo ✅ Sincronización terminada. Ya puedes hacer el push a GitHub.
pause