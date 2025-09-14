#!/bin/bash
# Configuration automatique MDMC Music Ads

echo "🎵 Configuration MDMC Music Ads..."

# Créer la configuration conf.php si n'existe pas
if [ ! -f /var/www/html/htdocs/conf/conf.php ]; then
    cat > /var/www/html/htdocs/conf/conf.php << 'EOF'
<?php
// Configuration automatique MDMC Music Ads
$dolibarr_main_url_root='https://'.$_SERVER['HTTP_HOST'];
$dolibarr_main_document_root='/var/www/html/htdocs';
$dolibarr_main_data_root='/var/www/documents';

// Base de données Railway
$dolibarr_main_db_host=getenv('MYSQLDATABASE_HOST');
$dolibarr_main_db_port=getenv('MYSQLDATABASE_PORT') ?: '3306';
$dolibarr_main_db_name=getenv('MYSQLDATABASE_DATABASE');
$dolibarr_main_db_user=getenv('MYSQLDATABASE_USERNAME');
$dolibarr_main_db_pass=getenv('MYSQLDATABASE_PASSWORD');
$dolibarr_main_db_type='mysqli';
$dolibarr_main_db_prefix='llx_';
$dolibarr_main_db_character_set='utf8';
$dolibarr_main_db_collation='utf8_unicode_ci';

// Configuration MDMC
$dolibarr_main_instance_unique_id='mdmc-'.md5(__FILE__.time());
$dolibarr_main_authentication='dolibarr';
$dolibarr_main_cookie_cryptkey=md5('mdmc-cookie-'.time());
$dolibarr_main_prod=1;
$dolibarr_main_force_https=1;
?>
EOF

    chown www-data:www-data /var/www/html/htdocs/conf/conf.php
    chmod 644 /var/www/html/htdocs/conf/conf.php
    echo "✅ Configuration conf.php créée"
fi

# Créer le CSS personnalisé MDMC
mkdir -p /var/www/html/htdocs/custom
cat > /var/www/html/htdocs/custom/mdmc_theme.css << 'EOF'
/* MDMC Music Ads Theme */
:root {
    --mdmc-primary: #FF6B35;
    --mdmc-secondary: #2C3E50;
    --mdmc-accent: #F39C12;
}

.login_block, .topmenu, .tmenu {
    background: linear-gradient(135deg, #FF6B35 0%, #F39C12 100%) !important;
}

.button, .butAction {
    background: var(--mdmc-primary) !important;
    border: 1px solid var(--mdmc-primary) !important;
}

.vmenu a:hover {
    background: var(--mdmc-primary) !important;
}
EOF

echo "✅ Thème MDMC configuré"

# Créer les répertoires nécessaires
mkdir -p /var/www/documents
chown -R www-data:www-data /var/www/documents
chmod -R 755 /var/www/documents

echo "✅ Configuration MDMC terminée"