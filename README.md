# MDMC Music Ads - Dolibarr Configuration

🎵 **Solution ERP complète pour l'industrie musicale**

## 🚀 Déploiement Railway en 1 clic

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/your-template-id)

## 📋 Description

Configuration Dolibarr personnalisée pour MDMC Music Ads avec :
- **26 modules** spécialisés industrie musicale
- **Thème personnalisé** orange/bleu MDMC
- **Catégories prédéfinies** : Artistes, Labels, Genres musicaux
- **Scripts d'activation** automatique
- **Support Railway** avec base MySQL
- **Email configuré** : sales@mdmcmusicads.com

## 🎯 Services MDMC pris en charge

- 🎵 Promotion Spotify & Apple Music
- 📱 Publicités réseaux sociaux
- 📋 Playlist Pitching
- 📰 Relations Presse
- 🌟 Marketing d'Influence
- 📻 Promotion Radio

## 🛠️ Installation

### Option 1: Railway (Recommandé)
1. Cliquez sur "Deploy to Railway"
2. Connectez votre compte GitHub
3. Ajoutez une base MySQL
4. Déployez automatiquement

### Option 2: Installation manuelle
```bash
git clone https://github.com/DenisAIagent/dolibarr.git
cd dolibarr
docker-compose up -d
```

## 🔧 Configuration Railway

### Variables d'environnement requises :
```
MYSQLDATABASE_URL=mysql://user:pass@host:port/db
ADMIN_PASSWORD=votre_mot_de_passe_securise
```

### Base de données :
- **Type** : MySQL 8.0
- **Nom** : mdmc_dolibarr
- **Charset** : utf8_unicode_ci

## 🎨 Personnalisations MDMC

### Modules activés automatiquement :
- ✅ Gestion clients (artistes, labels)
- ✅ Devis/propositions commerciales
- ✅ Factures et paiements
- ✅ Projets/campagnes publicitaires
- ✅ Planning et agenda
- ✅ Contrats artistes
- ✅ Comptabilité

### Catégories créées :
- 🎤 **Clients** : Artiste Indépendant, Label, Manager, Producteur
- 🎯 **Services** : Promotion Streaming, Pub Digitale, Relations Presse
- 🎵 **Genres** : Pop, Rock, Hip-Hop, Electronic, Jazz, etc.

## 📊 Fonctionnalités industrie musicale

### Gestion des campagnes
- Création de projets par campagne
- Suivi des KPIs (streams, engagement)
- Planning des sorties
- Gestion budgets promotion

### Facturation spécialisée
- Templates adaptés aux services musicaux
- Multi-devises (EUR, USD)
- Facturation récurrente campagnes
- Suivi des marges par service

### CRM musical
- Base clients artistes/labels
- Historique des campagnes
- Pipeline des prospects
- Contrats types

## 🔐 Sécurité

- Authentification renforcée
- Protection CSRF
- Chiffrement des données sensibles
- Backups automatiques
- SSL/TLS obligatoire

## 📱 Interface

- **Thème MDMC** : Couleurs orange/bleu
- **Responsive** : Mobile, tablet, desktop
- **Dashboard** personnalisé industrie musicale
- **Menus** optimisés flux de travail

## 🆘 Support

- **Email** : sales@mdmcmusicads.com
- **Documentation** : `/INSTALLATION_MDMC.md`
- **Scripts d'activation** : `/custom/mdmc_*.php`
- **Configuration** : Adaptée Railway

## 🏗️ Architecture technique

```
┌─── Dolibarr 22.0.1 (Base ERP)
├─── Configuration MDMC
│    ├── Thème personnalisé
│    ├── Modules industrie musicale
│    ├── Catégories spécialisées
│    └── Scripts d'activation
├─── Docker Railway
│    ├── PHP 8.1 + Apache
│    ├── Extensions requises
│    └── Configuration automatique
└─── Base MySQL
     ├── Données MDMC
     ├── Catégories
     └── Configuration système
```

## 📈 Métriques supportées

- Nombre de streams générés
- Taux d'engagement campagnes
- ROI par service
- Conversion prospects → clients
- Suivi budgets vs résultats

## 🎵 Spécialisations MDMC

### Types de contrats :
- Promotion basique/premium
- Playlist pitching
- Relations presse
- Gestion réseaux sociaux
- Campagnes influenceurs

### Intégrations possibles :
- Spotify for Artists API
- Apple Music for Artists
- YouTube Analytics
- Social Media APIs
- Outils de streaming analytics

---

**🎵 MDMC Music Ads** - Votre partenaire pour la promotion musicale
*Propulsé par Dolibarr ERP + Configuration spécialisée*