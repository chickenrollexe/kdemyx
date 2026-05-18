#!/bin/bash

# Rutas exactas proporcionadas
VAULT_ORIGEN="/home/krollx/Documents/Obisidian/Obsidian Vault/krollx vault"
DESTINO_QUARTZ="/home/krollx/kdemyx/content"

echo "🔄 1/3: Sincronizando notas de Obsidian a Quartz..."

# rsync es más eficiente en Linux y manejará los archivos de imagen mucho mejor
rsync -av --delete \
  --exclude='PERSONAL/' \
  --exclude='PLANTILLAS/' \
  --exclude='.obsidian/' \
  --exclude='.git/' \
  --exclude='.trash/' \
  "$VAULT_ORIGEN/" "$DESTINO_QUARTZ/"

echo -e "\n📦 2/3: Preparando cambios para GitHub..."
cd /home/krollx/kdemyx
git add .
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S') (Sync desde CachyOS)"

echo -e "\n🚀 3/3: Subiendo a la nube..."
git push origin main

echo -e "\n✅ Proceso completado."
