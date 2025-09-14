#!/bin/bash
# Docker entrypoint pour MDMC Music Ads - Dolibarr

set -e

echo "🎵 MDMC Music Ads - Dolibarr starting..."

# Configuration Railway automatique
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    export DOLI_URL_ROOT="https://$RAILWAY_PUBLIC_DOMAIN"
    echo "🌐 Domain configured: $DOLI_URL_ROOT"
fi

# Attendre que MySQL soit prêt
if [ -n "$MYSQLDATABASE_HOST" ]; then
    echo "⏳ Waiting for MySQL..."
    until mysqladmin ping -h"$MYSQLDATABASE_HOST" -P"${MYSQLDATABASE_PORT:-3306}" -u"$MYSQLDATABASE_USERNAME" -p"$MYSQLDATABASE_PASSWORD" --silent 2>/dev/null; do
        echo "MySQL not ready, waiting..."
        sleep 2
    done
    echo "✅ MySQL ready!"
fi

# Configuration du port Railway
if [ -n "$PORT" ]; then
    echo "🚀 Port Railway: $PORT"
    # Mise à jour configuration Apache
    sed -i "s/Listen 80/Listen $PORT/" /etc/apache2/ports.conf
    sed -i "s/:80/:$PORT/" /etc/apache2/sites-available/000-default.conf
fi

# Lancer la configuration MDMC si première installation
/usr/local/bin/configure-mdmc.sh

echo "🎵 MDMC Music Ads ready!"
echo "📧 Support: sales@mdmcmusicads.com"

# Démarrer Apache
exec apache2-foreground