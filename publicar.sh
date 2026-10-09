#!/usr/bin/env bash
# Marca una versión nueva (index.html + version.json) para que la app avise a quien la tenga abierta.
set -e
cd "$(dirname "$0")"
V=$(date -u +%Y%m%d%H%M%S)
sed -i -E "s/const APP_VERSION='[^']*'/const APP_VERSION='$V'/" index.html
printf '{"v":"%s"}\n' "$V" > version.json
echo "Versión $V"
