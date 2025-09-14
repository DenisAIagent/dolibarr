# MDMC Music Ads - Dolibarr sur Railway
FROM dolibarr/dolibarr:22.0.1-apache

# Métadonnées
LABEL maintainer="MDMC Music Ads <sales@mdmcmusicads.com>"
LABEL description="Dolibarr ERP personnalisé pour l'industrie musicale"

# Variables d'environnement Railway
ENV DOLI_DB_TYPE=mysqli
ENV DOLI_DB_HOST=${MYSQLDATABASE_HOST}
ENV DOLI_DB_PORT=${MYSQLDATABASE_PORT}
ENV DOLI_DB_NAME=${MYSQLDATABASE_DATABASE}
ENV DOLI_DB_USER=${MYSQLDATABASE_USERNAME}
ENV DOLI_DB_PASSWORD=${MYSQLDATABASE_PASSWORD}
ENV DOLI_URL_ROOT=https://${RAILWAY_PUBLIC_DOMAIN}

# Configuration MDMC
ENV DOLI_COMPANY_NAME="MDMC Music Ads"
ENV DOLI_COMPANY_EMAIL="sales@mdmcmusicads.com"

# Port Railway
EXPOSE ${PORT:-80}

# Script de configuration MDMC
COPY configure-mdmc.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/configure-mdmc.sh

# Point d'entrée personnalisé
COPY docker-entrypoint.sh /usr/local/bin/mdmc-entrypoint.sh
RUN chmod +x /usr/local/bin/mdmc-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/mdmc-entrypoint.sh"]